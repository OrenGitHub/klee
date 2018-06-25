/*************************/
/* INCLUDE FILES :: LLVM */
/*************************/
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"

/************************/
/* INCLUDE FILES :: STL */
/************************/
#include <set>
#include <string>

/***********************/
/* INCLUDE FILES :: IO */
/***********************/
#include <iostream>
#include <fstream>

/**********************/
/* USING NAMESPACE(S) */
/**********************/
using namespace llvm;

/**********************/
/* NAMESPACE :: Begin */
/**********************/
namespace {

/******************/
/* StaticAnalyzer */
/******************/
struct StaticAnalyzer : public LoopPass
{
	static char ID;
	StaticAnalyzer():LoopPass(ID){}

	void PrintLoopLocation(Loop *loop)
	{
		errs() << ">> Processing loop in file: ";
		errs() << cast<DIScope>(loop->getStartLoc().getScope())->getFilename();
		errs() << ":";
		errs() << loop->getStartLoc().getLine();
		errs() << "\n";
	}

	bool LoopContainsSubLoops(Loop *loop)
	{
		if (loop->getSubLoops().size() != 0)
		{
			errs() << "*******************************************\n";
			errs() << "* Loops with nested sub-loops inside them *\n";
			errs() << "* are currently not supported for C to Z3 *\n";
			errs() << "* transformations. Sorry.                 *\n";
			errs() << "*******************************************\n";
			return true;
		}
		else
		{
			return false;
		}
	}

	bool LoopFlowCanBreak(Loop *loop)
	{
		int numExits=0;
		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			if (loop->isLoopExiting(*it))
			{
				numExits++;
			}
		}
		if (numExits > 1)
		{
			errs() << "*******************************************\n";
			errs() << "* Loops with outgoing edges               *\n";
			errs() << "* are currently not supported for C to Z3 *\n";
			errs() << "* transformations. Sorry.                 *\n";
			errs() << "*******************************************\n";
			return true;
		}
		else
		{
			return false;
		}
	}
	
	bool Is_Used_Outside_This_loop(Loop *loop, Value *v)
	{
		int n=0;
		int numUses = v->getNumUses();
		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			if (v->isUsedInBasicBlock(*it))
			{
				n++;
			}
		}
		if (n == numUses) return false;
		else              return true;
	}

	bool MoreThanOneStringVar(Loop *loop)
	{
		static int serial=0;
		std::string operand;
		int numNonEscapingVars=0;
		std::set<std::string> temps;
		std::set<std::string> hooznikim;
		std::ofstream myfile;
		std::string filename = std::string("./LOOPS_SUMMARIES/LOOP_OUTPUT_")+std::to_string(serial++)+std::string(".txt");
		myfile.open(filename);

		myfile << ">> Summary loop for: ";
		//myfile << (cast<DIScope>(loop->getStartLoc().getScope())->getFilename()).str();
		myfile << ":";
		//myfile << loop->getStartLoc().getLine();
		myfile << "\n==========================================\n";

		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			myfile << "\nBasic Block ( ";
			myfile << (*it)->getName().str();
			myfile << " )\n\n";
			for (auto inst = (*it)->begin(); inst != (*it)->end(); inst++)
			{
				/*************************************/
				/* [1] Insert temporary to temps set */
				/*************************************/
				std::string dst = inst->getName().str();
				temps.insert(dst);
				
				/****************************************************/
				/* [2] Inspect if any of the LLVM IR temporaries is */
				/*     used oudside the loop.                       */
				/****************************************************/
				Is_Used_Outside_This_loop(loop,(Instruction *) inst);
				
				/*************************************/
				/* [3] Inspect arguments of commands */
				/*************************************/
				Instruction *i = (Instruction *) inst;
				const char *opcode = i->getOpcodeName();
				if (strncmp(opcode,"load",4) == 0)
				{
					operand = ((LoadInst *) i)->getPointerOperand()->getName().str();
					if (temps.find(operand) == temps.end())
					{
						hooznikim.insert(operand);
						myfile << "    " << dst << " = ";
						myfile << operand;
						myfile << "\n";
					}
					else
					{
						myfile << "    " << dst << " = ";
						myfile << "[ ";
						myfile << operand;
						myfile << " ]";
						myfile << "\n";
					}
				}
				else if (strncmp(opcode,"store",4) == 0)
				{
					if (ConstantInt* CI = dyn_cast<ConstantInt>(((StoreInst *) i)->getValueOperand()))
					{
						myfile << "    " << "[ ";
						myfile << ((StoreInst *) i)->getPointerOperand()->getName().str();
						myfile << " ]";
						myfile << " = ";
						myfile << CI->getSExtValue();
						myfile << "\n";
					}
					else
					{
						myfile << "    " << ((StoreInst *) i)->getPointerOperand()->getName().str();
						myfile << " = ";
						myfile << ((StoreInst *) i)->getValueOperand()->getName().str();
						myfile << "\n";
					}
				}
				else if (strncmp(opcode,"getelementptr",13) == 0)
				{
					myfile << "    " << dst << " = ";
					myfile << ((GetElementPtrInst *) i)->getPointerOperand()->getName().str();
					myfile << " + ";
					if (ConstantInt* CI = dyn_cast<ConstantInt>(((GetElementPtrInst *) i)->getOperand(1)))
					{
						myfile << CI->getSExtValue();
						myfile << "\n";
					}
					else
					{
						//myfile.close();
						//return true;
					}
				}
				else if (strncmp(opcode,"sext",4) == 0)
				{
					myfile << "    " << dst << " = ";
					myfile << ((SExtInst *) i)->getOperand(0)->getName().str();
					myfile << "\n";
				}
				else if (strncmp(opcode,"icmp",4) == 0)
				{
					myfile << "    " << dst << " = ";
					myfile << "( ";
					myfile << ((CmpInst *) i)->getOperand(0)->getName().str();
					switch (((CmpInst *) i)->getPredicate()) {
					case (32): myfile << " == "; break;
					case (33): myfile << " != "; break;
					case (34): myfile << " >  "; break;
					case (35): myfile << " >= "; break;
					case (36): myfile << " <  "; break;
					case (37): myfile << " <= "; break;
					case (38): myfile << " >  "; break;
					case (39): myfile << " >= "; break;
					case (40): myfile << " <  "; break;
					case (41): myfile << " <= "; break;
					}
					if (ConstantInt* CI = dyn_cast<ConstantInt>(((CmpInst *) i)->getOperand(1)))
					{
						myfile << CI->getSExtValue();
					}
					else
					{
						//myfile.close();
						//return true;
					}
					myfile << " )";
					myfile << "\n";
				}
				else if (strncmp(opcode,"br",2) == 0)
				{
					if (((BranchInst *) i)->isConditional())
					{
						myfile << "    " << "if ( ";
						myfile << ((BranchInst *) i)->getOperand(0)->getName().str();
						myfile << " != 0) { goto ";
						myfile << ((BranchInst *) i)->getSuccessor(0)->getName().str();
						myfile << " }\n";
						myfile << "    " << "if ( ";
						myfile << ((BranchInst *) i)->getOperand(0)->getName().str();
						myfile << " == 0) { goto ";
						myfile << ((BranchInst *) i)->getSuccessor(1)->getName().str();
						myfile << " }\n";
					}
					else
					{
						myfile << "    " << "goto ";
						myfile << ((BranchInst *) i)->getSuccessor(0)->getName().str();						
						myfile << "\n";
					}
				}
			}
		}
		myfile.close();
		return false;
	}

	virtual bool runOnLoop(Loop *loop, LPPassManager &LPM)
	{
		/***************************************************/
		/* [0] Print the function name containing the loop */
		/***************************************************/
		// PrintLoopLocation(loop);

		/**************************************************************/
		/* [1] Handle only loops WITHOUT nested sub-loops inside them */
		/**************************************************************/
		if (LoopContainsSubLoops(loop)) { errs() << "HAS SUB-LOOPS !!!\n"; return false; }

		/************************************************/
		/* [2] Handle only loops WITHOUT outgoing edges */
		/************************************************/
		if (LoopFlowCanBreak(loop)) { errs() << "HAS OUT EDGES !!!\n"; return false; }

		/******************************************/
		/* [3] Single string variable inside loop */
		/******************************************/
		if (MoreThanOneStringVar(loop)) return false;

		return false;
	}
};

/********************/
/* NAMESPACE :: End */
/********************/
}

/************************/
/* StaticAnalyzer :: ID */
/************************/
char StaticAnalyzer::ID = 0;

/*************************/
/* REGISTER THE PASS ... */
/*************************/
static RegisterPass<StaticAnalyzer> X(
"StaticAnalyzer", "Checks Qualification for C to Z3 translations",
false /* Only looks at CFG */,
false /* Analysis Pass */
);

/*************************/
/* INCLUDE FILES :: LLVM */
/*************************/
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/AliasAnalysis.h"
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

    void getAnalysisUsage(AnalysisUsage &AU) const override
    {
		//AU.setPreservesCFG();
		//AU.addRequired<DominatorTreeWrapperPass>();
		AU.addRequired<AAResultsWrapperPass>();
		//AU.addRequired<MemoryDependenceAnalysis>();
		//AU.addRequired<TargetLibraryInfoWrapperPass>();
		//AU.addPreserved<DominatorTreeWrapperPass>();
		//AU.addPreserved<GlobalsAAWrapperPass>();
		//AU.addPreserved<MemoryDependenceAnalysis>();
	}

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
	bool BasicBlockBelongsToLoop(BasicBlock *BB, Loop *loop)
	{
		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			if (BB == (*it))
			{
				return true;
			}
		}
		return false;
	}
	
	bool Is_Used_Outside_This_loop(Loop *loop, Value *v)
	{
		int n=0;
		for (auto use = v->use_begin(); use != v->use_end(); use++)
		{
			Instruction *i = (Instruction *) use->getUser();
			if (BasicBlockBelongsToLoop(i->getParent(),loop))
			{
				n++;
			}
		}
		assert(n <= v->getNumUses());
		if (n < v->getNumUses())
		{
			errs() << v->getName().str();
			errs() << " is used outside the loop\n";
			return true;
		}
		return false;
	}

	void PrintLoopHeader(Loop *loop,std::ofstream &myfile)
	{
		/*************************************/
		/* [1] Print parent function of loop */
		/*************************************/
		myfile << ">> Summary of loop inside function: ";
		myfile << ((*(loop->block_begin()))->getParent())->getName().str();
		myfile << ":";
		myfile << "\n===================================\n";

		/***************************************/
		/* [2] Print a synthesized loop header */
		/***************************************/
		BasicBlock *init = nullptr;
		for (auto	BB  = (*(loop->block_begin()))->getParent()->begin();
					BB != (*(loop->block_begin()))->getParent()->end();
					BB++)
		{
			if ((BB->getSingleSuccessor() == (*(loop->block_begin()))) &&
				(BasicBlockBelongsToLoop(&(*BB),loop) == false))
			{
				init = &(*BB);
			}
		}
		myfile << "\nBasic Block ( ";
		myfile << init->getName().str();
		myfile << " )\n\n";
		std::map<std::string,std::string> cache;
		for (auto inst = init->begin(); inst != init->end(); inst++)
		{				
			PrintInstruction((Instruction *) inst,myfile,cache);
		}		
	}

	void PrintLoopFooter(Loop *loop,std::ofstream &myfile)
	{
		myfile << "\nBasic Block ( footer )\n\n";
		myfile << "    s_final = s.addr\n";
		myfile << "    i_final = i\n";
	}

	void PrintBasicBlockHeader(const std::string &name,std::ofstream &myfile)
	{
		myfile << "\nBasic Block ( ";
		myfile << name;
		myfile << " )\n\n";
	}

	void PrintLoopInductionVariableProgress(Loop *loop,std::ofstream &myfile)
	{
		//if (((*it)->getName().str()) == std::string("do.body"))
		//{
		//	myfile << "    i(int) = i(int) + 1(int)\n";
		//}
	}

	void ScanVars(Value *v)
	{
		errs() << "scanning: " << v->getName().str() << "\n";
		if (temps.find(v->getName().str()) == temps.end())
		{
			if (v->getType()->isIntegerTy(8))
			{
				external_cvars.insert(v->getName().str());
			}
			else if (v->getType()->isIntegerTy(32))
			{
				external_ivars.insert(v->getName().str());
			}
			else if (v->getType()->isIntegerTy(64))
			{
				external_ivars.insert(v->getName().str());
			}
			else if (v->getType()->isPointerTy())
			{
				PointerType *p1 = (PointerType *) v->getType();
				if (p1->getElementType()->isPointerTy())
				{
					PointerType *p2 = (PointerType *) p1->getElementType();
					if (p2->getElementType()->isIntegerTy(8))
					{
						external_svars.insert(v);
						// external_svars.insert(v->getName().str());
					}
				}
				else if (p1->getElementType()->isIntegerTy(8))
				{
					external_cvars.insert(v->getName().str());
				}
				else if (p1->getElementType()->isIntegerTy(32))
				{
					external_ivars.insert(v->getName().str());
				}
				else
				{
					assert(0 && "ptr to something weird");
				}
			}
			else
			{
				assert(0 && "unsupported external var");			
			}
		}
	}

	void Print_Load(LoadInst *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		std::string dst = i->getName().str();

		/********************************/
		/* [2] Extract the operand name */
		/********************************/
		std::string operand = i->getPointerOperand()->getName().str();
		ScanVars(i->getPointerOperand());

		/****************************************/
		/* [3] Print formatted load instruction */
		/****************************************/
		if (i->getType()->isIntegerTy(8))
		{
			myfile << "    " ;
			myfile <<   dst  ;
			myfile <<  " = " ;
			myfile <<  "[ "  ;
			myfile << operand;
			myfile <<  " ]"  ;
			myfile <<  "\n"  ;
			cache[dst] = std::string("[ ") + operand + std::string(" ]");
		}
		else
		{
			myfile << "    " ;
			myfile <<  dst   ;
			myfile << " = "  ;
			myfile << operand;
			myfile <<  "\n"  ;
		}
	}

	std::string CacheName(std::string &name,std::map<std::string,std::string> &cache)
	{
		std::string tmp = name;
		while (cache[tmp] != "")
		{
			tmp = cache[tmp];
		}
		return tmp;
	}

	bool reg2mem(std::string &s)
	{
		return (s.find("reg2mem") != std::string::npos);
	}

	void Print_Store(StoreInst *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		auto ptrOperand = i->getPointerOperand();
		std::string dst = ptrOperand->getName().str();

		/********************************/
		/* [2] Extract the operand name */
		/********************************/
		std::string operand = Value2String(i->getValueOperand());
		ScanVars(i->getPointerOperand());
		// ScanVars(i->getValueOperand());
		
		/******************************/
		/* [3] Handle storing options */
		/******************************/
		if (temps.find(dst) == temps.end())
		{
			myfile << "    ";
			myfile << dst;
			myfile << " = ";
			myfile << operand;
			myfile << "\n";
			cache[dst] = operand;
		}
		else
		{
			myfile << "    ";
			myfile << "[ ";
			myfile << dst;
			myfile << " ]";
			myfile << " = ";
			myfile << operand;
			myfile << "\n";				
		}
	}

	void Print_Gep(GetElementPtrInst *i, std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		std::string dst = i->getName().str();

		/****************************/
		/* [2] Extract the ptr name */
		/****************************/
		std::string ptr = i->getPointerOperand()->getName().str();

		/**************************/
		/* [3] Extract the offset */
		/**************************/
		std::string offsetStr = Value2String(i->getOperand(1));
	
		/***************************************/
		/* [4] Print formatted Gep instruction */
		/***************************************/
		myfile <<  "    "   ;
		myfile <<    dst    ;
		myfile <<   " = "   ;
		myfile <<    ptr    ;
		myfile <<   " + "   ;
		myfile << offsetStr ;
		myfile <<   "\n"    ;
		
		cache[dst] = CacheName(ptr,cache) + std::string(" + ") + CacheName(offsetStr,cache);
	}

	void Print_Icmp(CmpInst *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		std::string dst = i->getName().str();

		/*********************************/
		/* [2] Extract the first operand */
		/*********************************/
		auto operand0 = i->getOperand(0);
		std::string operand0Str = operand0->getName().str();

		/**********************************/
		/* [3] Extract the second operand */
		/**********************************/
		auto operand1 = i->getOperand(1);
		std::string operand1Str = operand1->getName().str();

		if (AA->isNoAlias(operand0,operand1))
		{
			errs() << "\n\n\n";
			errs() << operand0->getName() << " and " << operand1Str << " are NOT aliased\n";
			errs() << "\n\n\n";
		}
		else
		{
			errs() << "\n\n\n";
			errs() << operand0->getName() << " and " << operand1Str << " are aliased\n";
			errs() << "\n\n\n";
		}

		/****************************/
		/* [4] Extract the operator */
		/****************************/
		std::string op;
		switch (i->getPredicate()) {
		case (32): op = " == "; break;
		case (33): op = " != "; break;
		case (34): op = " > " ; break;
		case (35): op = " >= "; break;
		case (36): op = " < " ; break;
		case (37): op = " <= "; break;
		case (38): op = " > " ; break;
		case (39): op = " >= "; break;
		case (40): op = " < " ; break;
		case (41): op = " <= "; break;
		}
		
		/**********************************/
		/* [5] Extract the second operand */
		/**********************************/
		operand1Str = Value2String(operand1);

		/****************************************/
		/* [6] Print formatted Icmp instruction */
		/****************************************/
		//myfile <<   "    "    ;
		//myfile <<    dst      ;
		//myfile <<   " = "     ;
		//myfile <<    "( "     ;
		//myfile << operand0Str ;
		//myfile <<     op      ;
		//myfile << operand1Str ;
		//myfile <<   " )\n"    ;

		/******************************/
		/* [7] Cache Icmp instruction */
		/******************************/
		cache[dst] = CacheName(operand0Str,cache) + op + CacheName(operand1Str,cache);
	}

	void Print_Br(BranchInst *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		std::string bool_value = i->getOperand(0)->getName().str();
		std::string first_label  = i->getSuccessor(0)->getName().str();
		
		if (i->isConditional())
		{
			std::string second_label = i->getSuccessor(1)->getName().str();
			myfile << "    " << "if ( " << CacheName(bool_value,cache)	 << " )\n";
			myfile << "    {\n";
			myfile << "        goto " << first_label << "\n";
			myfile << "    }\n";
			myfile << "    " << "else\n";
			myfile << "    {\n";
			myfile << "        goto " << second_label << "\n";
			myfile << "    }\n";
		}
		else
		{
			myfile << "    " << "goto " << first_label << "\n";
		}
	}

	void Print_Sext(SExtInst *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		std::string dst = i->getName().str();

		/********************************/
		/* [2] Extract the operand name */
		/********************************/
		std::string operand = i->getOperand(0)->getName().str();

		/****************************************/
		/* [3] Print formatted Sext instruction */
		/****************************************/
		myfile << "    " ;
		myfile <<   dst  ;
		myfile <<  " = " ;
		myfile << operand;
		myfile <<   "\n" ;

		/******************************/
		/* [4] Cache Sect instruction */
		/******************************/
		cache[dst] = CacheName(operand,cache);
	}

	std::string Value2String(Value *v)
	{
		if (ConstantInt* CI = dyn_cast<ConstantInt>(v))
		{
			return std::to_string(CI->getSExtValue());
		}
		else
		{
			return v->getName().str();
		}
	}

	void Print_Add(BinaryOperator *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		std::string dst = i->getName().str();

		/*********************************/
		/* [2] Extract the operand names */
		/*********************************/
		std::string operand1 = Value2String(i->getOperand(0));
		std::string operand2 = Value2String(i->getOperand(1));

		/****************************************/
		/* [3] Print formatted Sext instruction */
		/****************************************/
		myfile << "    "   ;
		myfile << dst      ;
		myfile << " = "    ;
		myfile << operand1 ;
		myfile << " + "    ;
		myfile << operand2 ;
		myfile << "\n"     ;
	}

	void Print_Trunc(TruncInst *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		std::string dst = i->getName().str();

		/********************************/
		/* [2] Extract the operand name */
		/********************************/
		std::string operand = Value2String(i->getOperand(0));

		/*****************************************/
		/* [3] Print formatted Trunc instruction */
		/*****************************************/
		myfile << "    "  ;
		myfile << dst     ;
		myfile << " = "   ;
		myfile << operand ;
		myfile << "\n"    ;
	}

	void Print_Call(CallInst *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/****************************/
		/* [1] Extract the dst name */
		/****************************/
		std::string dst = i->getName().str();

		/********************************/
		/* [2] Extract the operand name */
		/********************************/
		std::string operand = Value2String(i->getOperand(0));
		std::string calledFunctionName = i->getCalledFunction()->getName().str();

		/*****************************************/
		/* [3] Print formatted Trunc instruction */
		/*****************************************/
		myfile << "    "            ;
		myfile << dst               ;
		myfile << " = "             ;
		myfile << calledFunctionName;
		myfile << "( "              ;
		myfile << operand           ;
		myfile << " )"              ;
		myfile << "\n"              ;
	}
	
	void PrintInstruction(Instruction *i,std::ofstream &myfile,std::map<std::string,std::string> &cache)
	{
		/***************************/
		/* [1] extract opcode name */
		/***************************/
		const char *opcode = i->getOpcodeName();
		
		/****************************************/
		/* [2] switch-case on supported opcodes */
		/****************************************/
		if ( strncmp( opcode,"load",          4) == 0) Print_Load(  (LoadInst          *) i,myfile,cache );	
		if ( strncmp( opcode,"store",         5) == 0) Print_Store( (StoreInst         *) i,myfile,cache );
		if ( strncmp( opcode,"getelementptr",13) == 0) Print_Gep(   (GetElementPtrInst *) i,myfile,cache );	
		if ( strncmp( opcode,"sext",          4) == 0) Print_Sext(  (SExtInst          *) i,myfile,cache );	
		if ( strncmp( opcode,"icmp",          4) == 0) Print_Icmp(  (CmpInst           *) i,myfile,cache );	
		if ( strncmp( opcode,"br",            2) == 0) Print_Br(    (BranchInst        *) i,myfile,cache );	
		if ( strncmp( opcode,"add",           3) == 0) Print_Add(   (BinaryOperator    *) i,myfile,cache );	
		if ( strncmp( opcode,"trunc",         5) == 0) Print_Trunc( (TruncInst         *) i,myfile,cache );	
		if ( strncmp( opcode,"call",          4) == 0) Print_Call(  (CallInst          *) i,myfile,cache );	
	}

#if 0
				/*************************************/
				/* [3] Inspect arguments of commands */
				/*************************************/
				Instruction *i = (Instruction *) inst;
				std::string dst_type;
				if (inst->getType()->isIntegerTy( 8))      { dst_type = "char"; }
				else if (inst->getType()->isIntegerTy(32)) { dst_type = "int";  }
				else if (inst->getType()->isIntegerTy( 1)) { dst_type = "bool"; }
				else if (inst->getType()->isPointerTy())
				{
					if (((PointerType *) (inst->getType()))->getElementType()->isIntegerTy(8))
					{
						dst_type = "char *";
					}
					if (((PointerType *) (inst->getType()))->getElementType()->isIntegerTy(32))
					{
						dst_type = "int *";
					}
				}
				else                                       { dst_type = "other";}
#endif

	bool Init(Loop *loop)
	{
		static int intSerial=0;
		std::string operand;
		int numNonEscapingVars=0;

		/**********************************/
		/* [0] Open file for loop summary */
		/**********************************/
		std::ofstream myfile;
		std::string dir = "./LOOPS_SUMMARIES/LOOP_OUTPUT_";
		std::string strSerial = std::to_string(intSerial++);
		std::string filename = dir+strSerial+std::string(".txt");
		myfile.open(filename);

		/*************************/
		/* [1] Print loop header */
		/*************************/
		PrintLoopHeader(loop,myfile);

		/********************************************/
		/* [2] Iterate over the loop's basic blocks */
		/********************************************/
		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			/*****************************************/
			/* [3] Use a cache for every basic block */
			/*****************************************/
			std::map<std::string,std::string> cache;

			/******************************/
			/* [4] Print Basic Block name */
			/******************************/
			PrintBasicBlockHeader((*it)->getName().str(),myfile);
						
			/****************************************************/
			/* [5] Print synthesize loop induction variable i++ */
			/****************************************************/
			PrintLoopInductionVariableProgress(loop,myfile);
			
			/********************************************************/
			/* [6] Iterate over the instructions of the basic block */
			/********************************************************/
			for (auto inst = (*it)->begin(); inst != (*it)->end(); inst++)
			{				
				/******************************************/
				/* [7] Extract dst temporary to temps set */
				/******************************************/
				PrintInstruction((Instruction *) inst,myfile,cache);
			}
		}

		/*************************/
		/* [8] Print loop footer */
		/*************************/
		PrintLoopFooter(loop,myfile);

		/*****************/
		/* 9] Close file */
		/*****************/
		myfile.close();

		/*******************/
		/* [10] return ... */
		/*******************/
		return false;
	}

	AliasAnalysis *AA;

	std::set<std::string> temps;

	std::set<std::string> internal_svars;
	std::set<std::string> internal_ivars;
	std::set<std::string> internal_cvars;

	std::set<Value *> external_svars;
	std::set<std::string> external_ivars;
	std::set<std::string> external_cvars;

	void Identify_Loop_Temporaries(Loop *loop)
	{
		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			for (auto inst = (*it)->begin(); inst != (*it)->end(); inst++)
			{
				temps.insert(inst->getName().str());
			}
		}

		for (auto temp : temps)
		{
			errs() << temp << "\n";
		}

	}

	virtual bool runOnLoop(Loop *loop, LPPassManager &LPM)
	{		
		AA = &getAnalysis<AAResultsWrapperPass>().getAAResults();
	
#if 0		
		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			for (auto inst = (*it)->begin(); inst != (*it)->end(); inst++)
			{
				Instruction *i = (Instruction *) inst;
				if (strncmp(i->getOpcodeName(),"icmp",4) == 0)
				{
					CmpInst *ci = (CmpInst *) i;
					if (AA->isNoAlias(
						ci->getOperand(0),
						ci->getOperand(1)))
					{
						errs() << ci->getOperand(0)->getName().str();
						errs() << " and ";
						errs() << ci->getOperand(1)->getName().str();
						errs() << " are NOT aliases\n";
					}
					else
					{
						errs() << ci->getOperand(0)->getName().str();
						errs() << " and ";
						errs() << ci->getOperand(1)->getName().str();
						errs() << " are aliases of one another\n";
					}
				}
			}
		}
#endif		
		temps.clear();
		
		/*********************************************/
		/* [0] Identify string vars and integer vars */
		/*********************************************/
		Identify_Loop_Temporaries(loop);

		/**************************************************************/
		/* [1] Handle only loops WITHOUT nested sub-loops inside them */
		/**************************************************************/
		if (LoopContainsSubLoops(loop)) { errs() << "HAS SUB-LOOPS !!!\n"; return false; }

		/************************************************/
		/* [2] Handle only loops WITHOUT outgoing edges */
		/************************************************/
		// if (LoopFlowCanBreak(loop)) { errs() << "HAS OUT EDGES !!!\n"; return false; }

		/******************************************/
		/* [3] Single string variable inside loop */
		/******************************************/
		Init(loop);

		/*************************************/
		/* [5] Print participating variables */
		/*************************************/
		errs() << "external svars:\n"; for (auto external_svar : external_svars) { errs() << external_svar->getName().str() << "\n"; }
		errs() << "external ivars:\n"; for (auto external_ivar : external_ivars) { errs() << external_ivar << "\n"; }
		errs() << "external cvars:\n"; for (auto external_cvar : external_cvars) { errs() << external_cvar << "\n"; }

		for (auto v1 : external_svars)
		{
			for (auto v2 : external_svars)
			{
				if (v1 != v2)
				{
					if (AA->isNoAlias(v1,v2))
					{
						errs() << v1->getName().str() << " and " << v2->getName().str();
						errs() << " are *NOT* aliases of one another\n";
					}
				}	
			}
		}

		/****************************/
		/* [4] Did the loop change? */
		/****************************/
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

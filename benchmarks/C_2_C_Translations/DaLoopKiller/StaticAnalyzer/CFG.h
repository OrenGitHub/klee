#ifndef __CFG_H__
#define __CFG_H__

/***********************/
/* INCLUDE FILES :: IO */
/***********************/
#include <iomanip>

/************************/
/* INCLUDE FILES :: STL */
/************************/
#include <set>

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG_Node.h"

/********************/
/* NAMESPACE :: std */
/********************/
using namespace std;

/*********************/
/* NAMESPACE :: llvm */
/*********************/
using namespace llvm;

/*************************************/
/* CLASS :: CFG (Control Flow Graph) */
/*************************************/
class CFG {
public:

	void addNode(CFG_Node *u){ nodes.insert(u); }
	void addEdges(Loop *loop)
	{
		for (auto u:nodes)
		{
			for (auto v:nodes)
			{
				//if ((u->serial == 6) && (v->serial == 7))
				{
					llvm::errs() << "u name: " << u->i->getName().str();
					llvm::errs() << "v name: " << v->i->getName().str();
					llvm::errs() << "u kind: " << u->getKind();
					llvm::errs() << "v kind: " << v->getKind();
					if (Successors(loop,u,v))
					{
						u->succs.insert(v);
					}
				}
			}
		}
	}

public:

	void analyze()
	{
		//do
		//{

			Log();
			Transform();
			Update();

			Log();
			//Transform();
			//Update();

			//Log();
			//Transform();
			//Update();

		//}
		//while (Changed());
	}

private:

	/*******************************************************************/
	/*                                                                 */
	/*                     instruction                                 */
	/* Each node (sigma -----------------> sigma')                     */
	/*                                                                 */
	/* makes a transformation according to the instruction it contains */
	/* The transformation uses the "before" state sigma, and returns   */
	/* "after" state sigma'.                                           */
	/*                                                                 */
	/*******************************************************************/
	void Transform() { for (auto node:nodes) { node->Transform(); } }
	
	/*******************************************************************/
	/*                                                                 */
	/* Each node updates neighbour nodes (either successors,           */
	/* or predecessors depending on the relevant analysis)             */
	/*                                                                 */
	/*******************************************************************/
	void Update() { for (auto node:nodes) { node->Update(); } }

	/*********************************************************************/
	/*                                                                   */
	/* Check if some node contains a change between its sigma and sigma' */
	/* If so, keep iterating until a fix point is reached and no change  */
	/* is observed in *ALL* nodes.                                       */
	/*                                                                   */
	/*********************************************************************/
	bool Changed(){ return false; }

	/*********************************************************************/
	/*                                                                   */
	/* Log the entire CFG with its abstract states sigma and sigma'      */
	/*                                                                   */
	/*********************************************************************/
	void Log()
	{
		/********************************************************/
		/* [1] Each Analysis step is printed to a separate file */
		/********************************************************/
		std::string strSerial = std::to_string(intSerial++);

		/******************************************/
		/* [2] Create a new serial-based filename */
		/******************************************/
		std::string filename = dir+strSerial+std::string(".txt");

		/*****************************/
		/* [3] Open file for writing */
		/*****************************/
		myfile.open(filename);

		/*****************************************************/
		/* [4] Print graphviz dot header for directed graphs */
		/*****************************************************/
		myfile << "/***********/\n";
		myfile << "/* DIGRAPH */\n";
		myfile << "/***********/\n";
		myfile << "digraph\n{\n";
		myfile << "    /***********/\n";
		myfile << "    /* RANKDIR */\n";
		myfile << "    /***********/\n";
		myfile << "    rankdir = UD\n\n";

		/*****************/
		/* [5] Log nodes */
		/*****************/
		myfile << "    /*********/\n";
		myfile << "    /* NODES */\n";
		myfile << "    /*********/\n";
		LogNodes();
	
		/*****************/
		/* [6] Log edges */
		/*****************/
		myfile << "\n";
		myfile << "    /*********/\n";
		myfile << "    /* EDGES */\n";
		myfile << "    /*********/\n";
		LogEdges();

		/*********************************/
		/* [7] Print graphviz dot footer */
		/*********************************/
		myfile << "}\n";

		/******************/
		/* [8] Close file */
		/******************/
		myfile.close();
	}

private:

	void LogNodes()
	{
		for (auto node:nodes)
		{
			/***********************/
			/* [1] CFG node serial */
			/***********************/
			myfile << "    " << "v" << setw(2) << setfill('0') << node->serial << " ";
						
			/******************************/
			/* [2] print node description */
			/******************************/
			std::string node_description = node->toString();
			myfile   << node_description;
		}
	}

	void LogEdges()
	{
		for (auto u:nodes)
		{
			for (auto v:u->succs)
			{
				myfile << "    ";
				myfile << "v" << setw(2) << setfill('0') << u->serial << " -> ";
				myfile << "v" << setw(2) << setfill('0') << v->serial << "\n";					
			}					
		}
	}


private:

	/***********************/
	/* Successors function */
	/***********************/
	bool Successors(Loop *loop, CFG_Node *u, CFG_Node *v)
	{
		auto end   = loop->block_end();
		auto begin = loop->block_begin();

		/******************************************************/
		/* first add an edge between consecutive instructions */
		/* of the same basic block                            */
		/******************************************************/
		for (auto it = begin; it != end; it++)
		{
			for (auto inst = (*it)->begin(); inst != (*it)->end();)
			{
				Instruction *i    = (Instruction *) inst++;
				Instruction *next = (Instruction *) inst;
				llvm::errs() << "         " << i   ->getName().str();
				llvm::errs() << " ------> " << next->getName().str();
				llvm::errs() << " ??? ";	
				if ((u->i == i) && (v->i == next))
				{
					llvm::errs() << "Yes\n";
					return true;
				}
				else
				{
					llvm::errs() << "No:\n";
					
				}
			}
		}
		
		/*******************************************************/
		/* then add an edge between the terminator instruction */
		/* of every basic block to the first instruction of    */
		/* its successor(s) basic block(s)                     */
		/*******************************************************/
		for (auto it = loop->block_begin(); it != loop->block_end(); it++)
		{
			for (auto inst = (*it)->begin(); inst != (*it)->end(); inst++)
			{
				Instruction *i = (Instruction *) inst;
				if (i == (*it)->getTerminator())
				{
					if (u->i == i)
					{
						int n=(*it)->getTerminator()->getNumSuccessors();
						for (int i=0;i<n;i++)
						{
							Instruction *next=(Instruction *) (*it)->getTerminator()->getSuccessor(i)->begin();
							errs() << "first instruction of successor block: " << next->getName() << "\n";
							if (v->i == next)
							{
								return true;
							}
						}
					}
				}
			}
		}
		return false;
	}

private:

	/***************************************************************/
	/* serial is for creating a graphviz log of each analysis step */
	/***************************************************************/
	int intSerial=0;

	/***************************************************************/
	/* serial is for creating a graphviz log of each analysis step */
	/***************************************************************/
	ofstream myfile;

	/****************************************************************/
	/* Put all analysis steps in a dedicated directory of their own */
	/****************************************************************/
	const string dir = "/home/oren/GIT/klee/str.klee/klee/benchmarks/C_2_C_Translations/DaLoopKiller/ANALYSIS_STEPS/CFG_STEP_";

private:

	/*************/
	/* CFG nodes */
	/*************/
	set<CFG_Node *> nodes;

public:

	/*******************/
	/* CFG entry point */
	/*******************/
	BasicBlock *entry_point = nullptr;
};

#endif

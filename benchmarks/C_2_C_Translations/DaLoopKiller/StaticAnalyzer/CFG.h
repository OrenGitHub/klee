#ifndef __CFG_H__
#define __CFG_H__

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

/***********************/
/* Successors function */
/***********************/
bool Successors(Loop *loop, CFG_Node *u, CFG_Node *v)
{
	for (auto it = loop->block_begin(); it != loop->block_end(); it++)
	{
		for (auto inst = (*it)->begin(); inst != (*it)->end();)
		{
			Instruction *i    = (Instruction *) inst++;
			Instruction *next = (Instruction *) inst;
			if ((u->i == i) && (v->i == next))
			{
				return true;
			}
		}
	}
	return false;
}

/*************************************/
/* CLASS :: CFG (Control Flow Graph) */
/*************************************/
class CFG {
public:

	void addNode(CFG_Node *u){ nodes.insert(u); }
	void addEdges(Loop *loop)
	{
		for (CFG_Node *u:nodes)
		{
			for (CFG_Node *v:nodes)
			{
				if (u->serial != v->serial)
				{
					errs() << "now checking for edge exitance between: ";
					errs() << "Node " << u->serial;
					errs() << " and ";
					errs() << "Node " << v->serial;
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
		Log();
		do
		{
			Transform();
			Update();
		}
		while (Changed());
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

		/*****************/
		/* [4] Log nodes */
		/*****************/
		LogNodes();
	
		/*****************/
		/* [5] Log nodes */
		/*****************/
		// LogEdges();

		/******************/
		/* [6] Close file */
		/******************/
		myfile.close();
	}

private:

	void LogNodes()
	{
		int i=0;
		int size = nodes.size();
		errs() << "number of nodes is: " << nodes.size() << "\n";
		for (auto it:nodes)
		{
			errs() << "iteration " << i++	 << "\n";
			CFG_Node *node = it;
			errs() << "node serial is: " << node->serial << "\n";
			
			/***********************/
			/* [1] name every node */
			/***********************/
			myfile << "v" << node->serial;

			errs() << node->getKind() << "\n\n";
			errs() << node->toString() << "\n\n";
			errs() << "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n\n";
						
			/************************/
			/* [2] print node label */
			/************************/
			myfile << " [ " << node->toString() << " ]\n";
		}
	}

	void LogEdges()
	{
		for (auto u:nodes)
		{
			for (auto v:nodes)
			{
				if (u->serial != v->serial)
				{
					if (u->succs.find(v) != u->succs.end())
					{
						myfile << "v" << u->serial << " -> ";
						myfile << "v" << v->serial << "\n";					
					}					
				}
			}
		}
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

	set<CFG_Node *> nodes;
};

#endif

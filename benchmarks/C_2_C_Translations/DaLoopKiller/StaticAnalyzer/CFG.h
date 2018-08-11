#ifndef __CFG_H__
#define __CFG_H__

/***********************/
/* INCLUDE FILES :: IO */
/***********************/
#include <iomanip>
#include <fstream>

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

extern std::set<Value *> external_vars;

/*************************************/
/* CLASS :: CFG (Control Flow Graph) */
/*************************************/
class CFG {
public:

	void analyze()
	{
		int num_iterations=0;
		const int MAX_NUM_ITERATIONS=30;
		while ((num_iterations++) < MAX_NUM_ITERATIONS)
		{
			Transform(); Log();
			Update();    Log();
			Copy();      Log();
		}
	}

private:

	/*******************************************************************/
	/*                                                                 */
	/*                        instruction                              */
	/* Each node (sigma_in -----------------> sigma_out')              */
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
	bool Changed()
	{
		for (auto node:nodes)
		{
			if (node->Changed()) { return true; }
		}
		return false;
	}

	/**************************************/
	/* Copy: sigma_in  <--- sigma_in_tag  */
	/* Copy: sigma_out <--- sigma_out_tag */
	/**************************************/
	void Copy()
	{
		for (auto n:nodes)
		{
			n->sigma_in  = n->sigma_in_tag;
			n->sigma_out = n->sigma_out_tag;
		}
	}

	/****************************************************************/
	/*                                                              */
	/* Log the entire CFG with its abstract states sigma and sigma' */
	/*                                                              */
	/****************************************************************/
	void Log();

private:

	void LogNodes();
	void LogEdges();

	/***********************/
	/* Successors function */
	/***********************/
	bool Successors(Loop *loop, CFG_Node *u, CFG_Node *v);

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

	/***************************/
	/* CFG entry + exit points */
	/***************************/
	BasicBlock *entry_point = nullptr;
	BasicBlock *exit_point = nullptr;
	
public:

	void addExternalVars(std::set<Value *> vars)
	{
		for (auto var:vars)
		{
			external_vars.insert(var);
		}
	}
	void addNode(CFG_Node *u);
	void addEdges(Loop *loop);
};

#endif

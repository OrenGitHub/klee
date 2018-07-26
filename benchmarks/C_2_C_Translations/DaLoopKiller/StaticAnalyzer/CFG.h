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

/*************************************/
/* CLASS :: CFG (Control Flow Graph) */
/*************************************/
class CFG {
public:

	void addNode(CFG_Node *u            ){ nodes.insert(u);              }
	void addEdge(CFG_Node *u,CFG_Node *v){ edges.insert(make_pair(u,v)); }

public:

	void analyze()
	{
		while (Changed())
		{
			Log();
			Transform();
			Update();
		}
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
	bool Changed(){ return true; }

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
		LogEdges();

		/******************/
		/* [6] Close file */
		/******************/
		myfile.close();
	}

private:

	void LogNodes()
	{
		for (auto node:nodes)
		{
			/***********************/
			/* [1] name every node */
			/***********************/
			myfile << "v" << node->serial;

			/************************/
			/* [2] print node label */
			/************************/
			myfile << " [ " << node->toString() << " ]\n";
		}
	}

	void LogEdges()
	{
		for (auto edge:edges)
		{
			/***********************/
			/* [1] name every edge */
			/***********************/
			myfile << "v" << edge.first ->serial << " -> ";
			myfile << "v" << edge.second->serial << "\n";
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
	const string dir = "./ANALYSIS_STEPS/CFG_STEP_";

private:

	set<CFG_Node *> nodes;
	set<pair<CFG_Node *,CFG_Node *> > edges;
};

#endif

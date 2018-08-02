#ifndef __CFG_NODE_H__
#define __CFG_NODE_H__

/************************/
/* FILENAME: CFG_Node.h */
/************************/
/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractState.h"

/***************/
/* DEFINITIONS */
/***************/
#define MAX_DESCRIPTION_LENGTH 1024

class CFG_Node {
public:

	virtual const char *getKind(){ return "INVALID NODE"; }

	/******************************/
	/* Convert CFG node to string */
	/******************************/
	virtual const std::string toString() = 0;

	/********************************************************************/
	/*                                                                  */
	/*                            Every node                            */
	/*                                                                  */
	/*              +-------+                    +--------+             */
	/*              |       |    instruction     |        |             */
	/*              | sigma | -----------------> | sigma' |             */
	/*              |       |                    |        |             */
	/*              +-------+                    +--------+             */
	/*                                                                  */
	/* makes a transformation according to the instruction it contains. */
	/* The transformation uses the "before" state: sigma,               */
	/* to modify the "after" state: sigma'.                             */
	/*                                                                  */
	/********************************************************************/
	virtual void Transform() = 0;
	
	/*******************************************************************/
	/*                                                                 */
	/* Each node updates neighbour nodes (either successors,           */
	/* or predecessors depending on the relevant analysis)             */
	/*                                                                 */
	/*******************************************************************/
	virtual void Update()
	{
		for (auto succ:succs)
		{
			succ->sigma.join(sigma_tag);
		}
	}

	/*********************************************************************/
	/*                                                                   */
	/* Check if some node contains a change between its sigma and sigma' */
	/* If so, keep iterating until a fix point is reached and no change  */
	/* is observed in *ALL* nodes.                                       */
	/*                                                                   */
	/*********************************************************************/
	bool Changed(){ return (sigma != sigma_tag); }

public:

	int serial;
	llvm::Instruction *i;
	CFG_Node(){}
	CFG_Node(llvm::Instruction *in_i,int in_serial)
	{
		i = in_i;
		serial = in_serial;
	}

	/****************/
	/* predecessors */
	/****************/
	std::set<CFG_Node *> preds;

	/**************/
	/* successors */
	/**************/
	std::set<CFG_Node *> succs;

protected:

	/***********************************/
	/* Abstract state "before" = sigma */
	/***********************************/
	AbstractState sigma;

	/***********************************/
	/* Abstract state "after" = sigma' */
	/***********************************/
	AbstractState sigma_tag;
};

#endif

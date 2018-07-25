#ifndef __CFG_NODE_H__
#define __CFG_NODE_H__

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractState.h"

/*******************/
/* NAMESPACE ::std */
/*******************/
using namespace std;

class CFG_Node {
public:

	/*******************************************************************/
	/*                                                                 */
	/*                     instruction                                 */
	/* Each node (sigma -----------------> sigma')                     */
	/*                                                                 */
	/* makes a transformation according to the instruction it contains */
	/* The transformation uses the "before" state sigma, and returns   */
	/* "after" state sigma'.                                           */
	/*******************************************************************/
	virtual void Transform() = 0;
	
	/*******************************************************************/
	/*                                                                 */
	/* Each node updates neighbour nodes (either successors,           */
	/* or predecessors depending on the relevant analysis)             */
	/*                                                                 */
	/*******************************************************************/
	void Update()
	{
		//for (CFG_Node *succ:succs)
		//{
		//	succ->join(sigma_tag);
		//}
	}

	/*********************************************************************/
	/*                                                                   */
	/* Check if some node contains a change between its sigma and sigma' */
	/* If so, keep iterating until a fix point is reached and no change  */
	/* is observed in *ALL* nodes.                                       */
	/*                                                                   */
	/*********************************************************************/
	bool Changed(){ return (sigma == sigma_tag); }

	/*****************/
	/*               */
	/* Join operator */
	/*               */
	/*****************/
	void join(const AbstractState *sigma)
	{
		
	}

public:

	/***********************************/
	/* Abstract state "before" = sigma */
	/***********************************/
	AbstractState sigma;

	/***********************************/
	/* Abstract state "after" = sigma' */
	/***********************************/
	AbstractState sigma_tag;

	/****************************/
	/* successor outgoing edges */
	/****************************/
	std::set<CFG_Node *> succs;

	/*****************************/
	/* predecessor ingoing edges */
	/*****************************/
	std::set<CFG_Node *> preds;
};

class CFG_Node_Read : public CFG_Node {
public:
	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
};

#endif

#ifndef __CFG_NODE_ASSIGN_STR_H__
#define __CFG_NODE_ASSIGN_STR_H__

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG_Node.h"

/*******************/
/* NAMESPACE ::std */
/*******************/
using namespace std;

/*******************/
/* NAMESPACE ::std */
/*******************/
using namespace llvm;

class CFG_Node_Assign_Str : public CFG_Node {
public:
	/****************************/
	/* Print in graphviz format */
	/****************************/
	virtual const string &toString(){ return "DDD"; }

	CFG_Node_Assign_Str(Instruction *in_i) { i = in_i; }

	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
};

#endif

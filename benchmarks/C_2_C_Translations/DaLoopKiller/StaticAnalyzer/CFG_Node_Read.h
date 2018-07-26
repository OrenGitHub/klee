#ifndef __CFG_NODE_READ_H__
#define __CFG_NODE_READ_H__

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

class CFG_Node_Read : public CFG_Node {
public:

	/****************************/
	/* Print in graphviz format */
	/****************************/
	virtual const string &toString(){ return "GGG"; }

	CFG_Node_Read(Instruction *in_i){ i = in_i; }
	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
};

#endif

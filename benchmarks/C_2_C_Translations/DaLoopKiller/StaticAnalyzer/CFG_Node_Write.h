#ifndef __CFG_NODE_WRITE_H__
#define __CFG_NODE_WRITE_H__

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG_Node.h"

/*******************/
/* NAMESPACE ::std */
/*******************/
using namespace std;

class CFG_Node_Write : public CFG_Node {
public:
	/****************************/
	/* Print in graphviz format */
	/****************************/
	virtual const std::string toString(){ return "DDD"; }
	virtual const char *getKind(){ return "CFG_Node_Write"; }

	CFG_Node_Write(Instruction *in_i) { i = in_i; }

	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
};

#endif

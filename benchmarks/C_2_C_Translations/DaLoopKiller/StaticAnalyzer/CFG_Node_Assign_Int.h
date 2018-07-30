#ifndef __CFG_NODE_ASSIGN_INT_H__
#define __CFG_NODE_ASSIGN_INT_H__

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG_Node.h"

/*******************/
/* NAMESPACE ::std */
/*******************/
using namespace std;

/*********************/
/* NAMESPACE :: llvm */
/*********************/
using namespace llvm;

class CFG_Node_Assign_Int : public CFG_Node {
public:
	CFG_Node_Assign_Int(Instruction *in_i){ i = in_i; }

	/****************************/
	/* Print in graphviz format */
	/****************************/
	virtual const std::string toString(){ return "DDD"; }

	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
private:
	string dst;
	string src;
};

#endif

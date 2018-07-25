#ifndef __CFG_NODE_ASSIGN_INT_H__
#define __CFG_NODE_ASSIGN_INT_H__

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractState.h"

/*******************/
/* NAMESPACE ::std */
/*******************/
using namespace std;

class CFG_Node_Assign_Int : public CFG_Node {
public:
	virtual void Transform()
	{
		readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
};

#endif

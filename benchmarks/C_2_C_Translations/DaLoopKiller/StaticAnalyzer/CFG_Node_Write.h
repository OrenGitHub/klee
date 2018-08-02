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
	/*********************************/
	/* Import base class constructor */
	/*********************************/
	using CFG_Node::CFG_Node;

	/****************************/
	/* Print in graphviz format */
	/****************************/
	virtual const std::string toString()
	{
		return
			std::string("["              )+
			std::string("shape = Mrecord")+
			std::string(","              )+
			std::string(" label = "      )+
			std::string("\""             )+
			sigma.    toString(          )+
			sigma_tag.toString(          )+
			std::string("\""             )+
			std::string("]\n"            );		
	}
	virtual const char *getKind(){ return "CFG_Node_Write"; }

	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
};

#endif

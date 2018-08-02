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
			std::string("|"              )+
			std::string("read"           )+
			std::string("|"              )+
			sigma_tag.toString(          )+
			std::string("\""             )+
			std::string("]\n"            );
	}
	
	virtual const char *getKind(){ return "CFG_Node_Read"; }

	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}
};

#endif

#ifndef __CFG_NODE_ASSIGN_STR_H__
#define __CFG_NODE_ASSIGN_STR_H__

/*************************************/
/* INCLUDE FILES :: standard library */
/*************************************/
#include <stdlib.h>
#include <memory.h>

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG_Node.h"
#include "AbstractStateElement_LinearConstraints.h"

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
	/*********************************/
	/* Import base class constructor */
	/*********************************/
	using CFG_Node::CFG_Node;

	CFG_Node_Assign_Str(
		int in_serial,
		const std::string &in_dst,
		const std::string &in_src,
		const std::string &in_offset="")
	{
		serial = in_serial;
		dst    = in_dst;
		src    = in_src;
		offset = in_offset;
	}

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
			std::string("str assign"     )+
			std::string("|"              )+
			sigma_tag.toString(          )+
			std::string("\""             )+
			std::string("]\n"            );
	}
	virtual const char *getKind(){ return "CFG_Node_Assign_Str"; }

	virtual void Transform()
	{
		sigma_tag.str_constraints.eqs.insert(
			new LinearConstraintEq(dst,src,offset));
	}

private:

	std::string dst;
	std::string src;
	std::string offset;
};

#endif

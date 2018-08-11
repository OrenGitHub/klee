#ifndef __CFG_NODE_NOP_H__
#define __CFG_NODE_NOP_H__

/*************************************/
/* INCLUDE FILES :: standard library */
/*************************************/
#include <stdlib.h>
#include <memory.h>

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

/****************************/
/* CLASS :: CFG_Node_Assign */
/****************************/
class CFG_Node_Nop : public CFG_Node {
public:
	/*********************************/
	/* Import base class constructor */
	/*********************************/
	using CFG_Node::CFG_Node;

	/***************/
	/* Constructor */
	/***************/
	CFG_Node_Nop(int in_serial,Instruction *in_i)
	{
		i      = in_i;
		serial = in_serial;
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
			std::string("\"{"            )+
			sigma_in. toString(          )+
			std::string("|\\n\\n|"       )+
			sigma_out.toString(          )+
			std::string("}|"             )+
			std::string("nop"            )+
			std::string("|{"             )+
			sigma_in_tag. toString(      )+
			std::string("|\\n\\\n|"      )+
			sigma_out_tag.toString(      )+
			std::string("}\""            )+
			std::string("]\n"            );
	}
	virtual const char *getKind(){ return "CFG_Node_Nop"; }

	virtual void Transform()
	{
		/*****************************************/
		/* copy the entire state sigma to sigma' */
		/*****************************************/
		sigma_out_tag = sigma_in;
	}
};

#endif

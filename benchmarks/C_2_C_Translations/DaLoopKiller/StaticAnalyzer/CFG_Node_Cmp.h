#ifndef __CFG_NODE_CMP_H__
#define __CFG_NODE_CMP_H__

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

class CFG_Node_Cmp : public CFG_Node {
public:

	CFG_Node_Cmp(
		int in_serial,
		Instruction *in_i,
		const std::string &in_dst,
		const std::string &in_operand0,
		const std::string &in_op,
		const std::string &in_operand1)
	{
		i        = in_i;
		serial   = in_serial;
		dst      = in_dst;
		operand0 = in_operand0;
		op       = in_op;
		operand1 = in_operand1;
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
			std::string("|\\n\\\n|"      )+
			sigma_out.toString(          )+
			std::string("}|"             )+
			std::string("nop"            )+
			std::string("|{"             )+
			sigma_in_tag.toString(       )+
			std::string("|\\n\\\n|"      )+
			sigma_out_tag.toString(      )+
			std::string("}\""            )+
			std::string("]\n"            );
	}
	virtual const char *getKind(){ return "CFG_Node_Branch"; }

	virtual void Transform()
	{
		/*****************************************/
		/* copy the entire state sigma to sigma' */
		/*****************************************/
		sigma_out_tag = sigma_in;
	}

private:

	std::string dst;
	std::string operand0;
	std::string op;
	std::string operand1;
};

#endif

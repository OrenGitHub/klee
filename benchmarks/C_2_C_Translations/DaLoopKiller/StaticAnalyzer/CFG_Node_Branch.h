#ifndef __CFG_NODE_BRANCH_H__
#define __CFG_NODE_BRANCH_H__

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

class CFG_Node_Branch : public CFG_Node {
public:

	CFG_Node_Branch(
		int in_serial,
		Instruction *in_i,
		const std::string &in_first_label,
		const std::string &in_condition="",
		const std::string &in_second_label="")
	{
		i            = in_i;
		serial       = in_serial;
		first_label  = in_first_label;
		condition    = in_condition;
		second_label = in_second_label;
	}

	/****************************/
	/* Print in graphviz format */
	/****************************/
	virtual const std::string toString()
	{
		std::string msg;
		if (condition == "")
		{
			msg = std::string("goto ")+first_label;
		}
		else
		{
			msg =
			std::string("if ( "        )+
			condition                   +
			std::string(" ) \\{ goto " )+
			first_label                 +
			std::string(" \\}\\n"      )+
			std::string("else \\{ goto")+
			second_label                +
			std::string(" \\}"         );
		}
		return
			std::string("["              )+
			std::string("shape = Mrecord")+
			std::string(","              )+
			std::string(" label = "      )+
			std::string("\""             )+
			sigma.    toString(          )+
			std::string("|"              )+
			msg                           +
			std::string("|"              )+
			sigma_tag.toString(          )+
			std::string("\""             )+
			std::string("]\n"            );
	}
	virtual const char *getKind(){ return "CFG_Node_Branch"; }

	virtual void Transform()
	{
		//sigma_tag.str_constraints.eqs.insert(
		//	new LinearConstraintEq(dst,src,offset));
	}

private:

	std::string first_label;
	std::string condition;
	std::string second_label;
};

#endif

#ifndef __CFG_NODE_ASSIGN_H__
#define __CFG_NODE_ASSIGN_H__

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

/****************************/
/* CLASS :: CFG_Node_Assign */
/****************************/
class CFG_Node_Assign : public CFG_Node {
public:
	/*********************************/
	/* Import base class constructor */
	/*********************************/
	using CFG_Node::CFG_Node;

	/***************/
	/* Constructor */
	/***************/
	CFG_Node_Assign(
		int in_serial,
		Instruction *in_i,
		const std::string &in_dst,
		const std::string &in_src,
		const std::string &in_offset="")
	{
		i      = in_i;
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
		std::string tmp_offset;
		if (offset == "")
		{
			tmp_offset = offset;
		}
		else
		{
			tmp_offset = std::string(" + ") + offset;
		}
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
			dst                           +
			std::string(" = "            )+
			src                           +
			tmp_offset                    + 
			std::string("|{"             )+
			sigma_in_tag. toString(      )+
			std::string("|\\n\\\n|"      )+
			sigma_out_tag.toString(      )+
			std::string("}\""            )+
			std::string("]\n"            );
	}
	virtual const char *getKind(){ return "CFG_Node_Assign"; }

	virtual void Transform()
	{
		/*****************************************/
		/* copy the entire state sigma to sigma' */
		/*****************************************/
		sigma_out_tag = sigma_in;

		/************************************************/
		/* add the reslting equality from the assgnment */
		/************************************************/
		auto end   = sigma_out_tag.constraints.eqs.end();
		auto begin = sigma_out_tag.constraints.eqs.begin(); 
		for (auto it=begin;it!=end;)
		{
			if ((*it)->LHS == dst) { it=sigma_out_tag.constraints.eqs.erase(it); continue; }
			if ((*it)->RHS == dst) { it=sigma_out_tag.constraints.eqs.erase(it); continue; }
			
			it++;
		}

		insert(sigma_out_tag.constraints.eqs,
			new LinearConstraintEq(dst,src,offset));
	}

private:

	std::string dst;
	std::string src;
	std::string offset;
};

#endif

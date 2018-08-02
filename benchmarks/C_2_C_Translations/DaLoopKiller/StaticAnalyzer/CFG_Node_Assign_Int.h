#ifndef __CFG_NODE_ASSIGN_INT_H__
#define __CFG_NODE_ASSIGN_INT_H__

/*************************/
/* INCLUDE FILES :: LLVM */
/*************************/
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG_Node.h"
#include "AbstractStateElement_LinearConstraints.h"

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
	/*********************************/
	/* Import base class constructor */
	/*********************************/
	using CFG_Node::CFG_Node;

	CFG_Node_Assign_Int(
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

	virtual const char *getKind(){ return "CFG_Node_Assin_Int"; }

	virtual void Transform()
	{
		sigma_tag.int_constraints.eqs.insert(
			new LinearConstraintEq(dst,src,offset));		
	}
private:
	string dst;
	string src;
	string offset;
};

#endif

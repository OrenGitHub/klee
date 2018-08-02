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

	CFG_Node_Read(
		int in_serial,
		Instruction *in_i,
		const std::string &in_dst,
		const std::string &in_src)
	{
		i      = in_i;
		serial = in_serial;
		dst    = in_dst;
		src    = in_src;
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
	
private:
	
	std::string dst;
	std::string src;
};

#endif

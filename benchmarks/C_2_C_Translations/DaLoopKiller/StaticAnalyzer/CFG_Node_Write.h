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

	CFG_Node_Write(
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
			sigma_in. toString(          )+
			std::string("\\n\\\n"        )+
			sigma_out.toString(          )+
			std::string("|"              )+
			std::string("write"          )+
			std::string("|"              )+
			sigma_in_tag. toString(      )+
			std::string("\\n\\\n"        )+
			sigma_out_tag.toString(      )+
			std::string("\""             )+
			std::string("]\n"            );		
	}
	virtual const char *getKind(){ return "CFG_Node_Write"; }

	virtual void Transform()
	{
		//readinfo[dst] = make_tuple(src,sigma.contains[src,
	}

private:

	std::string dst;
	std::string src;
};

#endif

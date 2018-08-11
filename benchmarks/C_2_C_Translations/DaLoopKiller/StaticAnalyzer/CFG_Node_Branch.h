#ifndef __CFG_NODE_BRANCH_H__
#define __CFG_NODE_BRANCH_H__

/*************************************/
/* INCLUDE FILES :: standard library */
/*************************************/
#include <stdlib.h>
#include <memory.h>
#include <string.h>

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

std::string Extract_LHS(const std::string &s)
{
	char p[128]={0};
	strcpy(p,s.c_str());
	char *tmp = strchr(p,' ');
	if (tmp) {*tmp=0;}
	return std::string(p);
}

std::string Extract_RHS(const std::string &s)
{
	char p[128]={0};
	char q[128]={0};
	strcpy(p,s.c_str());
	char *tmp = strrchr(p,' ');
	if (tmp) { strcpy(q,tmp+1); }
	return std::string(q);
}

std::string Extract_Op(const std::string &s)
{
	char p[128]={0};
	strcpy(p,s.c_str());
	
	if (strstr(p,"!=")) return "!=";
	if (strstr(p,"==")) return "==";
	if (strstr(p,"<=")) return "<=";
	if (strstr(p,"<" )) return "<" ;
	if (strstr(p,">=")) return ">=";
	if (strstr(p,">" )) return ">" ;
}

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
			std::string("if ( "         )+
			condition                    +
			std::string(" ) \\{ goto "  )+
			first_label                  +
			std::string(" \\}\\n"       )+
			std::string("else \\{ goto ")+
			second_label                 +
			std::string(" \\}"          );
		}
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
			msg                           +
			std::string("|{"             )+
			sigma_in_tag. toString(      )+
			std::string("|\\n\\\n|"      )+
			sigma_out_tag.toString(      )+
			std::string("}\""            )+
			std::string("]\n"            );
	}
	virtual const char *getKind(){ return "CFG_Node_Branch"; }

	virtual void Transform(){ sigma_out_tag = sigma_in; }
	
	virtual void Update()
	{
		/****************************************************************/
		/* if this is not a conditional branch then eveything is simple */
		/****************************************************************/
		if (condition == "")
		{
			for (auto succ:succs)
			{
				succ->sigma_in_tag.join(sigma_out_tag);
				return;
			}
		}

		/******************************************/
		/* Update successrs according to conditon */
		/******************************************/
		for (auto succ:succs)
		{
			bool condition_holds;
			auto sigma_tag_temp = sigma_out_tag;

			if (succ->i->getParent()->getName().str() == first_label)
			{
				condition_holds = true;
			}
			if (succ->i->getParent()->getName().str() == second_label)
			{
				condition_holds = false;
			}

			std::string op  = Extract_Op( condition);
			std::string LHS = Extract_LHS(condition);
			std::string RHS = Extract_RHS(condition);

			if (condition_holds)
			{
				if (op == "==") { insert(sigma_tag_temp.constraints.eqs, new LinearConstraintEq( LHS,RHS)); }
				if (op == "!=")
				{
					insert(sigma_tag_temp.constraints.neqs,new LinearConstraintNeq(LHS,RHS));
					sigma_tag_temp.constraints.closure();
				}
				//if (op == "<=") { insert(sigma_tag_temp.constraints.leqs,new LinearConstraintLeq(LHS,RHS)); }
				//if (op == "<" ) { insert(sigma_tag_temp.constraints.lts, new LinearConstraintLt( LHS,RHS)); }
				//if (op == ">=") { insert(sigma_tag_temp.constraints.leqs,new LinearConstraintLeq(RHS,LHS)); }
				//if (op == ">" ) { insert(sigma_tag_temp.constraints.lts, new LinearConstraintLt( RHS,LHS)); }
			}
			else
			{
				if (op == "==") { insert(sigma_tag_temp.constraints.neqs,new LinearConstraintNeq(LHS,RHS)); }
				if (op == "!=")
				{					
					// insert(sigma_tag_temp.constraints.eqs, new LinearConstraintEq( LHS,RHS));
					assume(&(sigma_tag_temp.constraints),new LinearConstraintEq(LHS,RHS));
					sigma_tag_temp.constraints.closure();
				}
				//if (op == "<=") { insert(sigma_tag_temp.constraints.lts, new LinearConstraintLt( RHS,LHS)); }
				//if (op == "<" ) { insert(sigma_tag_temp.constraints.leqs,new LinearConstraintLeq(RHS,LHS)); }
				//if (op == ">=") { insert(sigma_tag_temp.constraints.lts, new LinearConstraintLt( LHS,RHS)); }
				//if (op == ">" ) { insert(sigma_tag_temp.constraints.leqs,new LinearConstraintLeq(LHS,RHS)); }
			}

			/********************************************************/
			/* the abstrac state sigma_tag_temp is now updated with */
			/* either the condition or ~condition according to succ */			
			/********************************************************/

			//errs() << "modifying succ = " << succ->i->getParent()->getName().str() << "\n";

			//errs() << "LHS = " << LHS <<         "\n";
			//errs() << "OP( "   << op  << " )" << "\n";
			//errs() << "RHS = " << RHS <<         "\n";

			succ->sigma_in_tag.join(sigma_tag_temp);
		}
	}
	

private:

	std::string first_label;
	std::string condition;
	std::string second_label;
};

#endif

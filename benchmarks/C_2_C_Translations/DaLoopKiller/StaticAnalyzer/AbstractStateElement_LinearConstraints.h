#ifndef __ABSTRACT_STATE_ELEMENT_LINEAR_CONSTRAINTS_H__
#define __ABSTRACT_STATE_ELEMENT_LINEAR_CONSTRAINTS_H__

/************************/
/* INCLUDE FILES :: STL */
/************************/
#include <set>
#include <string>

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractStateElement.h"

/*********/
/* TYPES */
/*********/
typedef std::string svar;

class LinearConstraint {
public:

	LinearConstraint(
		std::string in_LHS,
		std::string in_RHS,
		std::string in_offset)
		:
		offset(in_offset),
		LHS(in_LHS),
		RHS(in_RHS)
		{
		}
	
public:
	std::string LHS;
	std::string RHS;
	std::string offset;
};

class LinearConstraintEq : public LinearConstraint {
public:
	using LinearConstraint::LinearConstraint;
	const std::string toString()
	{
		if (offset == "")
		{
			return LHS+std::string(" = ")+RHS+offset;
		}
		else
		{
			return LHS+std::string(" = ")+RHS+std::string(" + ")+offset;
		}
	}
};

class LinearConstraintLt : public LinearConstraint {
public:
	using LinearConstraint::LinearConstraint;
	const std::string toString()
	{
		return LHS+std::string(" < ")+RHS+offset;
	}
};

class LinearConstraintLeq : public LinearConstraint {
public:
	using LinearConstraint::LinearConstraint;
	const std::string toString()
	{
		return LHS+std::string(" <= ")+RHS+offset;
	}
};

/***************************************************/
/* CLASS :: AbstractStateElement_LinearConstraints */
/***************************************************/
class AbstractStateElement_LinearConstraints : public AbstractStateElement {
public:
	virtual const std::string toString();
	void join(const AbstractStateElement_LinearConstraints &that){}
	bool operator==(const AbstractStateElement_LinearConstraints &that);

public:
	std::set<LinearConstraintEq  * > eqs;
	std::set<LinearConstraintLt  * > lts;
	std::set<LinearConstraintLeq * > leqs;
};

#endif

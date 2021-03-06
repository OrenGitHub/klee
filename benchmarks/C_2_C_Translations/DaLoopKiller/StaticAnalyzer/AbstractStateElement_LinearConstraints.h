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
		std::string in_offset="")
		:
		LHS(in_LHS),
		RHS(in_RHS),
		offset(in_offset)
		{
		}

public:

	bool operator==(const LinearConstraint &that)
	{
		return
			(LHS    == that.LHS) &&
			(RHS    == that.RHS) &&
			(offset == that.offset);			
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
			return LHS+std::string(" = ")+RHS+std::string("\\n");
		}
		else
		{
			return LHS+std::string(" = ")+RHS+std::string(" + ")+offset+std::string("\\n");
		}
	}
};

class LinearConstraintNeq : public LinearConstraint {
public:
	using LinearConstraint::LinearConstraint;
	const std::string toString()
	{
		if (offset == "")
		{
			return LHS+std::string(" != ")+RHS+std::string("\\n");
		}
		else
		{
			return LHS+std::string(" != ")+RHS+std::string(" + ")+offset+std::string("\\n");
		}
	}
};

class LinearConstraintLt : public LinearConstraint {
public:
	using LinearConstraint::LinearConstraint;
	const std::string toString()
	{
		return LHS+std::string(" < ")+RHS+offset+std::string("\\n");
	}
};

class LinearConstraintLeq : public LinearConstraint {
public:
	using LinearConstraint::LinearConstraint;
	const std::string toString()
	{
		return LHS+std::string(" <= ")+RHS+offset+std::string("\\n");
	}
};

/***************************************************/
/* CLASS :: AbstractStateElement_LinearConstraints */
/***************************************************/
class AbstractStateElement_LinearConstraints : public AbstractStateElement {
public:
	virtual const std::string toString();
	void join(const AbstractStateElement_LinearConstraints &that);
	bool operator==(const AbstractStateElement_LinearConstraints &that);
	void closure();
	std::string lookup(std::string var);
	virtual void clear()
	{
		eqs. clear();
		lts. clear();
		leqs.clear();
		neqs.clear();
	}

public:
	std::set<LinearConstraintEq  * > eqs;
	std::set<LinearConstraintLt  * > lts;
	std::set<LinearConstraintLeq * > leqs;
	std::set<LinearConstraintNeq * > neqs;
};

void insert(std::set<LinearConstraintEq  *> &constraints,LinearConstraintEq  *constraint);
void insert(std::set<LinearConstraintNeq *> &constraints,LinearConstraintNeq *constraint);

void assume(AbstractStateElement_LinearConstraints *constraints,LinearConstraintEq *constraint);

#endif

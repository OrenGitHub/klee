/********************************************************/
/* FILENAME: AbstractStateElement_LinearConstraints.cpp */
/********************************************************/
/*************************/
/* INCLUDE FILES :: LLVM */
/*************************/
#include "llvm/Support/raw_ostream.h"

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG.h"
#include "AbstractStateElement_LinearConstraints.h"

/******************************************************/
/* AbstractStateElement_LinearConstraints :: toString */
/* -------------------------------------------------- */
/*                                                    */
/* DESCRIPTION: print the abstract state element in   */
/*              Graphviz dot format.                  */
/*                                                    */
/******************************************************/
const std::string AbstractStateElement_LinearConstraints::toString()
{
	std::string result;

	for (auto eq :eqs ) { result += eq ->toString(); }
	for (auto lt :lts ) { result += lt ->toString(); }
	for (auto leq:leqs) { result += leq->toString(); }
	for (auto neq:neqs) { result += neq->toString(); }
	
	return result;
}

/********************************************************/
/* AbstractStateElement_LinearConstraints :: operator== */
/* ---------------------------------------------------- */
/*                                                      */
/* DESCRIPTION: Compare between two sets of linear      */
/*              constraints                             */
/*                                                      */
/********************************************************/
bool AbstractStateElement_LinearConstraints::operator==
(
	const AbstractStateElement_LinearConstraints &that
)
{
	return
		(eqs  == that.eqs ) &&
		(lts  == that.lts ) &&
		(neqs == that.neqs) &&
		(leqs == that.leqs);
}

void AbstractStateElement_LinearConstraints::join
(
	const AbstractStateElement_LinearConstraints &that
)
{
	for (auto constraint:that.eqs ) { insert(eqs, constraint); }
	//for (auto constraint:that.lts ) { insert(lts, constraint); }
	//for (auto constraint:that.leqs) { insert(leqs,constraint); }
	for (auto constraint:that.neqs) { insert(neqs,constraint); }
}

void assume(AbstractStateElement_LinearConstraints *constraints,LinearConstraintEq *constraint)
{
	auto end   = constraints->neqs.end();
	auto begin = constraints->neqs.begin();
	for (auto c=begin;c!=end;)
	{
		if ((*c)->LHS == constraint->LHS)
		{
			c=constraints->neqs.erase(c);
		}
		else
		{
			c++;
		}
	}
}

void insert(std::set<LinearConstraintEq *> &constraints,LinearConstraintEq *constraint)
{
	auto end   = constraints.end();
	auto begin = constraints.begin();
	
	/*************************************************/
	/* Check if new constraint already exists in eqs */
	/*************************************************/
	for (auto c=begin;c!=end;)
	{
		if ((*c)->LHS == constraint->LHS)
		{
			c=constraints.erase(c);
		}
		else
		{
			c++;
		}
	}

	/*************************/
	/* Insert new constraint */
	/*************************/
	constraints.insert(constraint);
}

void insert(std::set<LinearConstraintNeq *> &constraints,LinearConstraintNeq *constraint)
{
	for (auto c:constraints)
	{
		if ((*c) == (*constraint))
		{
			return;
		}
	}
	
	/*************************/
	/* Insert new constraint */
	/*************************/
	constraints.insert(constraint);
}

void AbstractStateElement_LinearConstraints::closure()
{
	for (auto eq:eqs)
	{
		for (auto neq:neqs)
		{
			if (eq->LHS == neq->LHS) { neqs.insert( new LinearConstraintNeq(eq->RHS,neq->RHS)); }
		}
	}
}

std::string AbstractStateElement_LinearConstraints::lookup(std::string var)
{
	for (auto eq:eqs)
	{
		if (var == eq->LHS)
		{
			for (auto it:external_vars)
			{
				if (it->getName().str() == eq->RHS)
				{
					return eq->RHS;
				}
			}
		}
	}
	return var;
}



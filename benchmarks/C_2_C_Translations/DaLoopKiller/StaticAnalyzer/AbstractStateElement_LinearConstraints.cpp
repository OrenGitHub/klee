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
	for (auto neq:leqs) { result += neq->toString(); }
	
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
	for (auto constraint:that.lts ) { insert(lts, constraint); }
	for (auto constraint:that.leqs) { insert(leqs,constraint); }
	for (auto constraint:that.neqs) { insert(neqs,constraint); }
}



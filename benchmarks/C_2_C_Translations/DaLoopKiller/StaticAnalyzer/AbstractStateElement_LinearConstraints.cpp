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
		(leqs == that.leqs);
}


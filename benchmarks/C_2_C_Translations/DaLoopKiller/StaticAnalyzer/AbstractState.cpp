/*******************************/
/* FILENAME: AbstractState.cpp */
/*******************************/
/****************************/
/* INCLUDE FILES :: GENERAL */
/****************************/
#include <assert.h>

/*************************/
/* INCLUDE FILES :: LLVM */
/*************************/
#include "llvm/Support/raw_ostream.h"

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractState.h"
#include "AbstractStateElement_Readinfo.h"
#include "AbstractStateElement_LinearConstraints.h"

/*****************************/
/* AbstractState :: toString */
/*****************************/
const std::string AbstractState::toString()
{
	return
		str_constraints.toString()+
		int_constraints.toString()+
		readinfo.toString();
}

/********************************/
/* AbstractState :: operator == */
/********************************/
bool AbstractState::operator==(const AbstractState &that)
{
	return
		(str_constraints == that.str_constraints) &&
		(int_constraints == that.int_constraints) &&
		(readinfo        == that.readinfo);
}

/*************************/
/* AbstractState :: join */
/*************************/
void AbstractState::join(const AbstractState &that)
{
	str_constraints.join(that.str_constraints);
	int_constraints.join(that.int_constraints);
	readinfo       .join(that.readinfo);
}


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

/**************************/
/* AbstractState :: clear */
/**************************/
void AbstractState::clear()
{
	constraints.clear();
	readinfo   .clear();
}

/*****************************/
/* AbstractState :: toString */
/*****************************/
const std::string AbstractState::toString()
{
	return
		constraints.toString()+
		readinfo.toString()+
		contains.toString();
}

/********************************/
/* AbstractState :: operator == */
/********************************/
bool AbstractState::operator==(const AbstractState &that)
{
	return
		(constraints == that.constraints) &&
		(readinfo    == that.readinfo);
		(contains    == that.contains);
}

bool AbstractState::operator!=(const AbstractState &that)
{
	return !((*this) == that);
}

/*************************/
/* AbstractState :: join */
/*************************/
void AbstractState::join(const AbstractState &that)
{
	constraints.join(that.constraints);
	readinfo   .join(that.readinfo);
	contains   .join(that.contains);
}


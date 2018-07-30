/*******************************/
/* FILENAME: AbstractState.cpp */
/*******************************/
/****************************/
/* INCLUDE FILES :: GENERAL */
/****************************/
#include <assert.h>

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractState.h"
#include "AbstractStateElement_Readinfo.h"
#include "AbstractStateElement_LinearConstraints.h"

/**********************************/
/* AbstractState :: AbstractState */
/**********************************/
AbstractState::AbstractState()
{
	elements.push_back( new AbstractStateElement_LinearConstraints);
	elements.push_back( new AbstractStateElement_LinearConstraints);
	elements.push_back( new AbstractStateElement_Readinfo         );
}

/*****************************/
/* AbstractState :: toString */
/*****************************/
const std::string AbstractState::toString()
{
	std::string result;
	for (auto element:elements) { result += element->toString(); }
	return result;
}

/*****************************/
/* AbstractState :: toString */
/*****************************/
bool AbstractState::operator==(const AbstractState &that)
{
	bool result = true;
	int size = elements.size();
	assert( size == that.elements.size() );
	for (int i=0;i<size;i++) { result = result && (elements[i] == that.elements[i]); }
	return result;
}


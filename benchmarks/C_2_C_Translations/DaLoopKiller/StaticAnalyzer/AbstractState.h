#ifndef __ABSTRACT_STATE_H__
#define __ABSTRACT_STATE_H__

/*****************************/
/* FILENAME: AbstractState.h */
/*****************************/
/************************/
/* INCLUDE FILES :: STL */
/************************/
#include <string>
#include <vector>

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractStateElement.h"
#include "AbstractStateElement_Readinfo.h"
#include "AbstractStateElement_LinearConstraints.h"

/***********************************************/
/*                                             */
/* CLASS: AbstractState                        */
/* --------------------                        */
/*                                             */
/* DESCRIPTION: An abstract state is simply    */
/*              the collection of its elements */
/*                                             */
/***********************************************/
class AbstractState {
public:
	/*********************/
	/* convert to string */
	/*********************/
	const std::string toString();

	/***********************************************************/
	/* compare states to check whether fixed point was reached */
	/***********************************************************/
	bool operator==(const AbstractState &that);
	bool operator!=(const AbstractState &that);

	/*********************/
	/* The join operator */
	/*********************/
	void join(const AbstractState &that);

	/****************************************/
	/* The elements make the abstract state */
	/****************************************/
	AbstractStateElement_LinearConstraints constraints;
	AbstractStateElement_Readinfo          readinfo;
};

#endif

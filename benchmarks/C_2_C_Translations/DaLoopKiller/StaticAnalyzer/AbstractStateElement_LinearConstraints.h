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

/***************************************************/
/* CLASS :: AbstractStateElement_LinearConstraints */
/***************************************************/
class AbstractStateElement_LinearConstraints : public AbstractStateElement {
public:
	virtual const std::string toString();
	bool operator==(const AbstractStateElement_LinearConstraints &that);

public:
	std::set<std::pair<svar,svar> > eqs;
	std::set<std::pair<svar,svar> > lts;
	std::set<std::pair<svar,svar> > leqs;
};

#endif

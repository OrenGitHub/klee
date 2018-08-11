#ifndef __ABSTRACT_STATE_ELEMENT_CONTAINS_H__
#define __ABSTRACT_STATE_ELEMENT_CONTAINS_H__

/************************/
/* INCLUDE FILES :: STL */
/************************/
#include <map>
#include <set>
#include <string>

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractStateElement.h"
#include "AbstractStateElement_Readinfo.h"

/******************************************/
/* CLASS :: AbstractStateElement_Readinfo */
/******************************************/
class AbstractStateElement_Contains : public AbstractStateElement {
public:
	bool operator==(const AbstractStateElement_Contains &that);
	void join(const AbstractStateElement_Contains &that);
	virtual const std::string toString();

public:
	std::map<std::pair<svar,svar>, CharSet *> contains;
};

#endif

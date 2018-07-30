#ifndef __ABSTRACT_STATE_ELEMENT_READINFO_H__
#define __ABSTRACT_STATE_ELEMENT_READINFO_H__

/*********************************************/
/* FILENAME: AbstractStateElement_Readinfo.h */
/*********************************************/
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

/*********/
/* TYPES */
/*********/
typedef std::string cvar;
typedef std::string svar;

/******************************************/
/* CLASS :: AbstractStateElement_Readinfo */
/******************************************/
class AbstractStateElement_Readinfo : public AbstractStateElement {
public:
	bool operator==(const AbstractStateElement_Readinfo &that);
	virtual const std::string toString();

public:
	std::map<cvar,std::pair<svar,std::set<char> > > readinfo;
};

#endif

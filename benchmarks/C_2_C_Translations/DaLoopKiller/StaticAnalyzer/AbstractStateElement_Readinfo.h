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

class CharSetElement {
public:
	virtual const std::string toString() = 0;
	virtual const std::set<char> toSetOfChars() = 0;
};

class CharSetElementEq : public CharSetElement {
public:
	char eq=0;
	virtual const std::string toString()
	{
		return "{ " + std::string(1,eq) + " }";
	}
	virtual const std::set<char> toSetOfChars()
	{
		std::set<char> result;
		result.insert(eq);
		return result;
	}
};

class CharSetElementRange : public CharSetElement {
public:
	char min=0;
	char max=0;
	virtual const std::string toString()
	{
		return
			std::string("{ c | ")   +
			std::string(1,min)      +
			std::string("<= c <= ") +
			std::string(1,max)      +
			std::string(" }");
	}
	virtual const std::set<char> toSetOfChars()
	{
		std::set<char> result;
		for (char c=min;c<=max;c++)
		{
			result.insert(c);
		}
		return result;
	}
};

class CharSet {
public:
	std::set<CharSetElement *> charSetElements;
	std::set<char> toSetOfChars()
	{
		std::set<char> result;
		for (auto charSetElement:charSetElements)
		{
			result.insert(
				charSetElement->toSetOfChars().begin(),
				charSetElement->toSetOfChars().end());
		}
		return result;
	}
	bool operator==(CharSet *that)
	{
		return toSetOfChars() == that->toSetOfChars();
	}
	const std::string toString()
	{
		std::string result("");
		for (auto charSetElement:charSetElements)
		{
			result += charSetElement->toString();
			result += " U ";
		}
		return result;		
	}
};

/******************************************/
/* CLASS :: AbstractStateElement_Readinfo */
/******************************************/
class AbstractStateElement_Readinfo : public AbstractStateElement {
public:
	bool operator==(const AbstractStateElement_Readinfo &that);
	void join(const AbstractStateElement_Readinfo &that);
	virtual const std::string toString();

public:
	std::map<cvar,std::pair<svar,CharSet *> > readinfo;
};

#endif

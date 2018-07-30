#ifndef __ABSTRACT_STATE_ELEMENT_H__
#define __ABSTRACT_STATE_ELEMENT_H__

/************************/
/* INCLUDE FILES :: STL */
/************************/
#include <string>

/*********************************/
/* CLASS :: AbstractStateElement */
/*********************************/
class AbstractStateElement {
public:
	virtual const std::string toString() = 0;
};

#endif

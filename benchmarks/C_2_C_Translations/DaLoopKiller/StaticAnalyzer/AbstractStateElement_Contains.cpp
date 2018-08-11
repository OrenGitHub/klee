/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractStateElement_Contains.h"

/***********************************************/
/* AbstractStateElement_Readinfo :: operator== */
/***********************************************/
const std::string AbstractStateElement_Contains::toString()
{
	std::string result("");
	
	//for (auto it:readinfo)
	//{
	//	result += it.first;
	//	result += std::string(" = [ ");
	//	result += it.second.first;
	//	result += std::string(" ] with content: ");
		//result += it.second.second->toString();
	//}
	return result;
}

/***********************************************/
/* AbstractStateElement_Readinfo :: operator== */
/***********************************************/
bool AbstractStateElement_Contains::operator==(const AbstractStateElement_Contains &that)
{
	return true;
}

/*****************************************/
/* AbstractStateElement_Readinfo :: join */
/*****************************************/
void AbstractStateElement_Contains::join(const AbstractStateElement_Contains &that)
{
}


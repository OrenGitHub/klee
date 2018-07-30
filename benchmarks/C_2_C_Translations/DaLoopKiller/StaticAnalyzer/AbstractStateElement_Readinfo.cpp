/***********************************************/
/* FILENAME: AbstractStateElement_Readinfo.cpp */
/***********************************************/
/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractStateElement_Readinfo.h"

const std::string AbstractStateElement_Readinfo::toString()
{
	return "PPP";	
}
/***********************************************/
/* AbstractStateElement_Readinfo :: operator== */
/***********************************************/
bool AbstractStateElement_Readinfo::operator==(const AbstractStateElement_Readinfo &that)
{
	for (const auto it:readinfo)
	{
		if (readinfo.find(it.first) != that.readinfo.find(it.first))
		{
			return false;
		}
	}
	return true;
}

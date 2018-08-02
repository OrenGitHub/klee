/***********************************************/
/* FILENAME: AbstractStateElement_Readinfo.cpp */
/***********************************************/
/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractStateElement_Readinfo.h"

/***********************************************/
/* AbstractStateElement_Readinfo :: operator== */
/***********************************************/
const std::string AbstractStateElement_Readinfo::toString()
{
	std::string result("");
	
	for (auto it:readinfo)
	{
		result += it.first;
		result += std::string(" = [ ");
		result += it.second.first;
		result += std::string(" ] with content: ");
		//result += it.second.second->toString();
	}
	return result;
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

/*****************************************/
/* AbstractStateElement_Readinfo :: join */
/*****************************************/
void AbstractStateElement_Readinfo::join(const AbstractStateElement_Readinfo &that)
{
	for (const auto it:readinfo)
	{
		auto c = it.first;
		auto      readinfo_c =      readinfo.find(c);
		auto that_readinfo_c = that.readinfo.find(c);
		
		if (readinfo_c != that_readinfo_c)
		{
			if (that_readinfo_c != that.readinfo.end())
			{
				auto s = it.second.first;
				//auto that_s = that_readinfo_c.first;
				//if (s != that_s)
				{
					
				}

				auto char_set = it.second.second;
			}
		}
	}
}


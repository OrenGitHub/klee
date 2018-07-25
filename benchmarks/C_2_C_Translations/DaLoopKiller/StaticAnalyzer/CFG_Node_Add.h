#ifndef __ABSTRACT_STATE_H__
#define __ABSTRACT_STATE_H__

/*******************/
/* NAMESPACE ::std */
/*******************/
using namespace std;

/*********/
/* TYPES */
/*********/
typedef string svar;
typedef string ivar;
typedef string cvar;

/****************/
/* readinfoType */
/****************/
class readinfoType {
using type = map<cvar,tuple<svar,set<char> > >;
public:
	/***************/
	/* operator == */
	/***************/
	bool operator==(readinfoType &that)
	{
		for (auto it:readinfo)
		{
			if (     readinfo[it.first] !=
				that.readinfo[it.first])
			{
				return false;
			}
		}
		return true;
	}

/********/
/* Date */
/********/
public:
	type readinfo;
};

class str_constraints {
public:
	bool operator==(str_constraints &that)
	{
		return	(eq  == that.eq) &&
				(lt  == that.lt) &&
				(leq == that.leq)
	}
public:
	set<pair<svar,svar> > eq;
	set<pair<svar,svar> > lt;
	set<pair<svar,svar> > leq;
};

class int_constraints {
public:
	bool operator==(str_constraints &that)
	{
		return	(eq  == that.eq) &&
				(lt  == that.lt) &&
				(leq == that.leq)
	}
public:
	set<pair<ivar,ivar> > eq;
	set<pair<ivar,ivar> > lt;
	set<pair<ivar,ivar> > leq;
};

class AbstractState {
public:

	bool operator==(AbstractState &that)
	{
		return
			(str_constraints) == (that.str_constraints) &&
			(int_constraints) == (that.int_constraints) &&
			(readinfo)        == (that.readingo)        
	}

public:

	/****************************************************************/
	/* readinfo: cvars ---> svars X ivars X P({'a','b', ... , '~'}) */
	/****************************************************************/
	readinfoType readinfo;

	/*******************************************************************************/
	/* string constraints are simply a partial function diff: svars X svars ---> N */
	/*******************************************************************************/
	str_constraintsType str_constraints;

	/********************************************************************************/
	/* integer constraints are simply a partial function diff: svars X svars ---> N */
	/********************************************************************************/
	int_constraintsType str_constraints;

	/***************************************************/
	/* contains: svars X N ---> P({'a', 'b', ... '~'}) */
	/***************************************************/
	containsType contains;
};

#endif

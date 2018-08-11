#ifndef __CFG_NODE_H__
#define __CFG_NODE_H__

/*************************/
/* INCLUDE FILES :: LLVM */
/*************************/
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfoMetadata.h"

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "AbstractState.h"

/***************/
/* DEFINITIONS */
/***************/
#define MAX_DESCRIPTION_LENGTH 1024

/*********************/
/* NAMESPACE :: llvm */
/*********************/
using namespace llvm;

class CFG_Node {
public:

	virtual const char *getKind(){ return "INVALID NODE"; }

	/******************************/
	/* Convert CFG node to string */
	/******************************/
	virtual const std::string toString() = 0;

	/*********************************************************************/
	/*                                                                   */
	/*                                                                   */
	/*      +---------------+-------------------+-----------------+      */
	/*      |   sigma_in ---|---------+         |     sigma_in'   |      */
	/*      |---------------|         | I       |-----------------|      */
	/*      |               |         | n       |                 |      */
	/*      |               |         | s       |                 |      */
	/*      |               |         | t       |                 |      */
	/*      |               |         | r       |                 |      */
	/*      |               |         | u       |                 |      */
	/*      |               |         | c       |                 |      */
	/*      |               |         | t       |                 |      */
	/*      |               |         | i       |                 |      */
	/*      |               |         | o       |                 |      */
	/*      |               |         | n       |                 |      */
	/*      |---------------|         |         |-----------------|      */
	/*      |   sigma_out   |         +---------|---> sigm_out'   |      */
	/*      +---------------+-------------------+-----------------+      */
	/*                                                                   */
	/* makes a transformation according to the instruction it contains.  */
	/* The transformation uses the "before" state: sigma_in,             */
	/* to modify the "after" state: sigma_out'.                          */
	/*                                                                   */
	/*********************************************************************/
	virtual void Transform() = 0;
	
	/***************************************************************/
	/*                                                             */
	/*      +----------------+------------+-----------------+      */
	/*      |    sigma_in    |            |    sigma_in'    |      */
	/*      |----------------|            |-----------------|      */
	/*      |                |            |                 |      */
	/*      |                |            |                 |      */
	/*      |                |            |                 |      */
	/*      |----------------|            |-----------------|      */
	/*      |    sigma_out   |            |    sigm_out' ---|---+  */
	/*      +----------------+------------+-----------------+   |  */
	/*                                                          |  */
	/*                                                          |  */
	/*                                                          |  */
	/*                                                          |  */
	/*                                                          |  */
	/*      +----------------+------------+-----------------+   |  */
	/*      |    sigma_in    |            |    sigma_in' <--|---+  */
	/*      |----------------|            |-----------------|      */
	/*      |                |            |                 |      */
	/*      |                |            |                 |      */
	/*      |                |            |                 |      */
	/*      |----------------|            |-----------------|      */
	/*      |    sigma_out   |            |     sigm_out'   |      */
	/*      +----------------+------------+-----------------+      */
	/*                                                             */
	/***************************************************************/
	virtual void Update()
	{
		for (auto succ:succs)
		{
			succ->sigma_in_tag.join(sigma_out_tag);
		}
	}

	/**********************************************************************/
	/*                                                                    */
	/* Check if node contains a change between its sigma_in and sigma_in' */
	/* or between its sigma_out and sigma_out'                            */
	/*                                                                    */
	/*                                                                    */
	/*        +---------------+       ??       +-----------------+        */
	/*        |   sigma_in    |       ==       |     sigma_in'   |        */
	/*        |---------------|                |-----------------|        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |               |                |                 |        */
	/*        |---------------|       ??       |-----------------|        */
	/*        |   sigma_out   |       ==       |     sigm_out'   |        */
	/*        +---------------+                +-----------------+        */
	/*                                                                    */
	/**********************************************************************/
	bool Changed()
	{
		return (
			(sigma_in  != sigma_in_tag) ||
			(sigma_out != sigma_out_tag));
	}

public:

	/**************************/
	/* for Graphviz rendering */
	/**************************/
	int serial;

	/*****************************/
	/* Original llvm instruction */
	/*****************************/
	llvm::Instruction *i = nullptr;

	/**************/
	/* successors */
	/**************/
	std::set<CFG_Node *> succs;

public:

	/********************************************/
	/* Abstract state "before" = sigma {in,out} */
	/********************************************/
	AbstractState sigma_in;
	AbstractState sigma_out;

	/********************************************/
	/* Abstract state "after" = sigma' {in,out} */
	/********************************************/
	AbstractState sigma_in_tag;
	AbstractState sigma_out_tag;
};

#endif

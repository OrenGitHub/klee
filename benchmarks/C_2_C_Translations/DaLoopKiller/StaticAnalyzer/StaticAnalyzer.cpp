/*****************/
/* INCLUDE FILES */
/*****************/
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

/**********************/
/* USING NAMESPACE(S) */
/**********************/
using namespace llvm;

/**********************/
/* NAMESPACE :: Begin */
/**********************/
namespace {

/******************/
/* StaticAnalyzer */
/******************/
struct StaticAnalyzer : public FunctionPass
{
	static char ID;

	/***********/
	/* CTOR(S) */
	/***********/
	StaticAnalyzer():FunctionPass(ID){}

	bool runOnFunction(Function &F) override
	{
		errs() << "Hello: ";
		errs().write_escaped(F.getName()) << '\n';
		return false;
	}
};

/**********************/
/* NAMESPACE :: Begin */
/**********************/
}

/************************/
/* StaticAnalyzer :: ID */
/************************/
char StaticAnalyzer::ID = 0;

/*************************/
/* REGISTER THE PASS ... */
/*************************/
static RegisterPass<StaticAnalyzer> X(
"daLoopKiller", "Checks Qualification for C to Z3 translations",
false /* Only looks at CFG */,
false /* Analysis Pass */
);

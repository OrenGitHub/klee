/***********************/
/* INCLUDE FILES :: IO */
/***********************/
#include <iomanip>

/************************/
/* INCLUDE FILES :: STL */
/************************/
#include <set>

/****************************/
/* INCLUDE FILES :: PROJECT */
/****************************/
#include "CFG.h"
#include "CFG_Node.h"

/********************/
/* NAMESPACE :: std */
/********************/
using namespace std;

/*********************/
/* NAMESPACE :: llvm */
/*********************/
using namespace llvm;

std::set<Value *> external_vars;

/**********************/
/* CFG :: addNode ... */
/**********************/
void CFG::addNode(CFG_Node *u) { nodes.insert(u); }

/***********************/
/* CFG :: addEdges ... */
/***********************/
void CFG::addEdges(Loop *loop)
{
	for (auto u:nodes)
	{
		for (auto v:nodes)
		{
			if (Successors(loop,u,v))
			{
				u->succs.insert(v);
			}
		}
	}
}

/*********************************************************************/
/*                                                                   */
/* Log the entire CFG with its abstract states sigma and sigma'      */
/*                                                                   */
/*********************************************************************/
void CFG::Log()
{
	/********************************************************/
	/* [1] Each Analysis step is printed to a separate file */
	/********************************************************/
	std::string strSerial = std::to_string(intSerial++);

	/******************************************/
	/* [2] Create a new serial-based filename */
	/******************************************/
	std::string filename = dir+strSerial+std::string(".txt");

	/*****************************/
	/* [3] Open file for writing */
	/*****************************/
	myfile.open(filename);

	/*****************************************************/
	/* [4] Print graphviz dot header for directed graphs */
	/*****************************************************/
	myfile << "/***********/\n";
	myfile << "/* DIGRAPH */\n";
	myfile << "/***********/\n";
	myfile << "digraph\n{\n";
	myfile << "    /***********/\n";
	myfile << "    /* RANKDIR */\n";
	myfile << "    /***********/\n";
	myfile << "    rankdir = UD\n\n";

	/*****************/
	/* [5] Log nodes */
	/*****************/
	myfile << "    /*********/\n";
	myfile << "    /* NODES */\n";
	myfile << "    /*********/\n";
	LogNodes();
	
	/*****************/
	/* [6] Log edges */
	/*****************/
	myfile << "\n";
	myfile << "    /*********/\n";
	myfile << "    /* EDGES */\n";
	myfile << "    /*********/\n";
	LogEdges();

	/*********************************/
	/* [7] Print graphviz dot footer */
	/*********************************/
	myfile << "}\n";

	/******************/
	/* [8] Close file */
	/******************/
	myfile.close();
}

void CFG::LogNodes()
{
	for (auto node:nodes)
	{
		/***********************/
		/* [1] CFG node serial */
		/***********************/
		myfile << "    " << "v" << setw(2) << setfill('0') << node->serial << " ";
					
		/******************************/
		/* [2] print node description */
		/******************************/
		std::string node_description = node->toString();
		myfile   << node_description;
	}
}

void CFG::LogEdges()
{
	for (auto u:nodes)
	{
		for (auto v:u->succs)
		{
			myfile << "    ";
			myfile << "v" << setw(2) << setfill('0') << u->serial << " -> ";
			myfile << "v" << setw(2) << setfill('0') << v->serial << "\n";					
		}					
	}
}

/***********************/
/* Successors function */
/***********************/
bool CFG::Successors(Loop *loop, CFG_Node *u, CFG_Node *v)
{
	auto block_end   = loop->block_end();
	auto block_begin = loop->block_begin();

	/******************************************************/
	/* first add an edge between consecutive instructions */
	/* of the same basic block                            */
	/******************************************************/
	for (auto it = block_begin; it != block_end; it++)
	{
		auto inst_end   = (*it)->end();
		auto inst_begin = (*it)->begin();
		
		for (auto inst = inst_begin; inst != inst_end;)
		{
			Instruction *i    = (Instruction *) inst++;
			Instruction *next = (Instruction *) inst;
			if ((u->i == i) && (v->i == next))
			{
				return true;
			}
		}
	}
		
	/*******************************************************/
	/* then add an edge between the terminator instruction */
	/* of every basic block to the first instruction of    */
	/* its successor(s) basic block(s)                     */
	/*******************************************************/
	for (auto it = loop->block_begin(); it != loop->block_end(); it++)
	{
		for (auto inst = (*it)->begin(); inst != (*it)->end(); inst++)
		{
			Instruction *i = (Instruction *) inst;
			if (i == (*it)->getTerminator())
			{
				if (u->i == i)
				{
					for (unsigned int n=0;n<(*it)->getTerminator()->getNumSuccessors();n++)
					{
						Instruction *next=(Instruction *) (*it)->getTerminator()->getSuccessor(n)->begin();
						if (v->i == next)
						{
							return true;
						}
					}
				}
			}
		}
	}
		
	auto inst_end   = entry_point->end();
	auto inst_begin = entry_point->begin();
	for (auto inst = inst_begin; inst != inst_end;)
	{
		Instruction *i    = (Instruction *) inst++;
		Instruction *next = (Instruction *) inst;
		if ((u->i == i) && (v->i == next))
		{
			return true;
		}
	}

	for (auto inst = inst_begin; inst != inst_end; inst++)
	{
		Instruction *i = (Instruction *) inst;
		if (i == entry_point->getTerminator())
		{
			if (u->i == i)
			{
				for (unsigned int n=0;n<entry_point->getTerminator()->getNumSuccessors();n++)
				{
					Instruction *next=(Instruction *) entry_point->getTerminator()->getSuccessor(n)->begin();
					if (v->i == next)
					{
						return true;
					}
				}
			}
		}
	}

	{
		auto inst_end   = exit_point->end();
		auto inst_begin = exit_point->begin();
		for (auto inst = inst_begin; inst != inst_end;)
		{
			Instruction *i    = (Instruction *) inst++;
			Instruction *next = (Instruction *) inst;
			if ((u->i == i) && (v->i == next))
			{
				return true;
			}
		}

		for (auto inst = inst_begin; inst != inst_end; inst++)
		{
			Instruction *i = (Instruction *) inst;
			if (i == exit_point->getTerminator())
			{
				if (u->i == i)
				{
					for (unsigned int n=0;n<exit_point->getTerminator()->getNumSuccessors();n++)
					{
						Instruction *next=(Instruction *) exit_point->getTerminator()->getSuccessor(n)->begin();
						if (v->i == next)
						{
							return true;
						}
					}
				}
			}
		}
	}

	return false;
}


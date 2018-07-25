#ifndef __CFG_H__
#define __CFG_H__

template<class CFG_NodeType>
class CFG {

public:

	/*******************************************************************/
	/*                                                                 */
	/*                     instruction                                 */
	/* Each node (sigma -----------------> sigma')                     */
	/*                                                                 */
	/* makes a transformation according to the instruction it contains */
	/* The transformation uses the "before" state sigma, and returns   */
	/* "after" state sigma'.                                           */
	/*******************************************************************/
	void Transform(){}
	
	/*******************************************************************/
	/*                                                                 */
	/* Each node updates neighbour nodes (either successors,           */
	/* or predecessors depending on the relevant analysis)             */
	/*                                                                 */
	/*******************************************************************/
	void Update(){}

	/*********************************************************************/
	/*                                                                   */
	/* Check if some node contains a change between its sigma and sigma' */
	/* If so, keep iterating until a fix point is reached and no change  */
	/* is observed in *ALL* nodes.                                       */
	/*                                                                   */
	/*********************************************************************/
	bool Changed(){ return true;}

private:

	std::set<CFG_NodeType *> nodes;
};

#endif

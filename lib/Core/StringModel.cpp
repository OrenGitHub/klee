//===-- StringModel.cpp ----------------------------------------===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "StringModel.h"

namespace klee {

StringModel::StringModel() {
	/*********************************************/
	/* [6] zero, one and minusOne as ref<Expr>'s */
	/*********************************************/
	one      = BvToIntExpr::create(ConstantExpr::create(1,Expr::Int64));
	zero     = BvToIntExpr::create(ConstantExpr::create(0,Expr::Int64));
	minusOne = SubExpr::create(zero,one);
	//x00      = StrConstExpr::create("\\x00");
	//x00      = StrConstExpr::create("");
  x00 = StrFromBitVector8Expr::create(ConstantExpr::create(0, Expr::Int8));
}

StrModel StringModel::modelStrncasecmp(
  const ObjectState* osP, ref<Expr> s1,
  const ObjectState* osQ, ref<Expr> s2,
	ref<Expr> n)
{
  const MemoryObject* moP = osP->getObject();
  const MemoryObject* moQ = osQ->getObject();
	ref<Expr> n_int = BvToIntExpr::create(n);

	 /*********************************/
	/* [7] AB, svar, offset and size */
	/*********************************/
	ref<Expr> ABp_size = moP->getIntSizeExpr();
	ref<Expr> ABq_size = moQ->getIntSizeExpr();
	ref<Expr> offset_p = BvToIntExpr::create(moP->getOffsetExpr(s1));
	ref<Expr> offset_q = BvToIntExpr::create(moQ->getOffsetExpr(s2));
 	ref<Expr> ABp      = StrVarExpr::create(osP->getABSerial());
	ref<Expr> ABq      = StrVarExpr::create(osQ->getABSerial());
	ref<Expr> p_size   = SubExpr::create(ABp_size,offset_p);
	ref<Expr> q_size   = SubExpr::create(ABq_size,offset_q);
	ref<Expr> p_var    = StrSubstrExpr::create(ABp,offset_p, p_size);
	ref<Expr> q_var    = StrSubstrExpr::create(ABq,offset_q, q_size);

	/*****************************/
	/* [8] NULL temination stuff */
	/*****************************/
	ref<Expr> firstIdxOf_x00_in_p = StrFirstIdxOfExpr::create(p_var,x00);
	ref<Expr> firstIdxOf_x00_in_q = StrFirstIdxOfExpr::create(q_var,x00);

	ref<Expr> p_is_not_NULL_terminated = EqExpr::create(firstIdxOf_x00_in_p,minusOne);
	ref<Expr> q_is_not_NULL_terminated = EqExpr::create(firstIdxOf_x00_in_q,minusOne);

	ref<Expr> p_is_NULL_terminated = NotExpr::create(p_is_not_NULL_terminated);
	ref<Expr> q_is_NULL_terminated = NotExpr::create(q_is_not_NULL_terminated);
	
	ref<Expr> p_and_q_are_both_NULL_terminated = AndExpr::create(
		p_is_NULL_terminated,
		q_is_NULL_terminated);

	/************************************************************/
	/* [10] Finally ... check whether p and q are identical ... */
	/************************************************************/
	ref<Expr> final_exp = StrEqExpr::create(
			StrSubstrExpr::create(
				p_var,
				zero,
				SelectExpr::create(
					SleExpr::create(firstIdxOf_x00_in_p,n_int),
					firstIdxOf_x00_in_p,
					n_int)),
			StrSubstrExpr::create(
				q_var,
				zero,
				SelectExpr::create(
					SleExpr::create(firstIdxOf_x00_in_q,n_int),
					firstIdxOf_x00_in_q,
					n_int)));

   return std::make_pair(
 	  	SelectExpr::create(
	  		final_exp,
	  		ConstantExpr::create(0,Expr::Int32),
	  		ConstantExpr::create(1,Expr::Int32)),
      AndExpr::create(
		SleExpr::create(n_int,p_size),
		SleExpr::create(n_int,q_size))
   );
}


StrModel StringModel::modelStrncmp(
  const ObjectState* osP, ref<Expr> s1,
  const ObjectState* osQ, ref<Expr> s2,
	ref<Expr> n)
{
  const MemoryObject* moP = osP->getObject();
  const MemoryObject* moQ = osQ->getObject();
	ref<Expr> n_int = BvToIntExpr::create(n);

	 /*********************************/
	/* [7] AB, svar, offset and size */
	/*********************************/
	ref<Expr> ABp_size = moP->getIntSizeExpr();
	ref<Expr> ABq_size = moQ->getIntSizeExpr();
	ref<Expr> offset_p = BvToIntExpr::create(moP->getOffsetExpr(s1));
	ref<Expr> offset_q = BvToIntExpr::create(moQ->getOffsetExpr(s2));
 	ref<Expr> ABp      = StrVarExpr::create(osP->getABSerial());
	ref<Expr> ABq      = StrVarExpr::create(osQ->getABSerial());
	ref<Expr> p_size   = SubExpr::create(ABp_size,offset_p);
	ref<Expr> q_size   = SubExpr::create(ABq_size,offset_q);
	ref<Expr> p_var    = StrSubstrExpr::create(ABp,offset_p, p_size);
	ref<Expr> q_var    = StrSubstrExpr::create(ABq,offset_q, q_size);

	/*****************************/
	/* [8] NULL temination stuff */
	/*****************************/
	ref<Expr> firstIdxOf_x00_in_p = StrFirstIdxOfExpr::create(p_var,x00);
	ref<Expr> firstIdxOf_x00_in_q = StrFirstIdxOfExpr::create(q_var,x00);

	ref<Expr> p_is_not_NULL_terminated = EqExpr::create(firstIdxOf_x00_in_p,minusOne);
	ref<Expr> q_is_not_NULL_terminated = EqExpr::create(firstIdxOf_x00_in_q,minusOne);

	ref<Expr> p_is_NULL_terminated = NotExpr::create(p_is_not_NULL_terminated);
	ref<Expr> q_is_NULL_terminated = NotExpr::create(q_is_not_NULL_terminated);
	
	ref<Expr> p_and_q_are_both_NULL_terminated = AndExpr::create(
		p_is_NULL_terminated,
		q_is_NULL_terminated);

	/************************************************************/
	/* [10] Finally ... check whether p and q are identical ... */
	/************************************************************/
	ref<Expr> final_exp = StrEqExpr::create(
			StrSubstrExpr::create(
				p_var,
				zero,
				SelectExpr::create(
					SleExpr::create(firstIdxOf_x00_in_p,n_int),
					firstIdxOf_x00_in_p,
					n_int)),
			StrSubstrExpr::create(
				q_var,
				zero,
				SelectExpr::create(
					SleExpr::create(firstIdxOf_x00_in_q,n_int),
					firstIdxOf_x00_in_q,
					n_int)));

   return std::make_pair(
 	  	SelectExpr::create(
	  		final_exp,
	  		ConstantExpr::create(0,Expr::Int32),
	  		ConstantExpr::create(1,Expr::Int32)),
      AndExpr::create(
		SleExpr::create(n_int,p_size),
		SleExpr::create(n_int,q_size))
   );
}

StrModel StringModel::modelStrcmp(
  const ObjectState* osP, ref<Expr> s1,
  const ObjectState* osQ, ref<Expr> s2) {
  const MemoryObject* moP = osP->getObject();
  const MemoryObject* moQ = osQ->getObject();
 /*********************************/
	/* [7] AB, svar, offset and size */
	/*********************************/
	ref<Expr> ABp_size = moP->getIntSizeExpr();
	ref<Expr> ABq_size = moQ->getIntSizeExpr();
	ref<Expr> offset_p = BvToIntExpr::create(moP->getOffsetExpr(s1));
	ref<Expr> offset_q = BvToIntExpr::create(moQ->getOffsetExpr(s2));
 	ref<Expr> ABp      = StrVarExpr::create(osP->getABSerial());
	ref<Expr> ABq      = StrVarExpr::create(osQ->getABSerial());
	ref<Expr> p_size   = SubExpr::create(ABp_size,offset_p);
	ref<Expr> q_size   = SubExpr::create(ABq_size,offset_q);
	ref<Expr> p_var    = StrSubstrExpr::create(ABp,offset_p, p_size);
	ref<Expr> q_var    = StrSubstrExpr::create(ABq,offset_q, q_size);

	/*****************************/
	/* [8] NULL temination stuff */
	/*****************************/
	ref<Expr> firstIdxOf_x00_in_p = StrFirstIdxOfExpr::create(p_var,x00);
	ref<Expr> firstIdxOf_x00_in_q = StrFirstIdxOfExpr::create(q_var,x00);

	ref<Expr> p_is_not_NULL_terminated = EqExpr::create(firstIdxOf_x00_in_p,minusOne);
	ref<Expr> q_is_not_NULL_terminated = EqExpr::create(firstIdxOf_x00_in_q,minusOne);

	ref<Expr> p_is_NULL_terminated = NotExpr::create(p_is_not_NULL_terminated);
	ref<Expr> q_is_NULL_terminated = NotExpr::create(q_is_not_NULL_terminated);
	
	ref<Expr> p_and_q_are_both_NULL_terminated = AndExpr::create(
		p_is_NULL_terminated,
		q_is_NULL_terminated);

	ref<Expr> p_or_q_are_both_NULL_terminated = OrExpr::create(
		p_is_NULL_terminated,
		q_is_NULL_terminated);

	/************************************************************/
	/* [10] Finally ... check whether p and q are identical ... */
	/************************************************************/
	ref<Expr> final_exp = StrEqExpr::create(
			StrSubstrExpr::create(p_var,zero,firstIdxOf_x00_in_p),
			StrSubstrExpr::create(q_var,zero,firstIdxOf_x00_in_q));

   return std::make_pair(
 	  	SelectExpr::create(
	  		final_exp,
	  		ConstantExpr::create(0,Expr::Int32),
	  		ConstantExpr::create(1,Expr::Int32)),
      p_or_q_are_both_NULL_terminated  
   );
}

StrModel StringModel::modelStrcspn(
	const ObjectState* osHaystack,
	ref<Expr> haystack,
	const ObjectState* osNeedle,
	ref<Expr> needle)
{
	const MemoryObject* moHaystack = osHaystack->getObject();
	const MemoryObject* moNeedle   = osNeedle->getObject();

	/********************/
	/* [5] haystack_var */
	/********************/
	ref<Expr> haystack_size   = moHaystack->getIntSizeExpr();
	ref<Expr> haystack_offset = moHaystack->getOffsetExpr(haystack);	
	ref<Expr> haystack_var    = StrSubstrExpr::create(
		StrVarExpr::create(osHaystack->getABSerial()),
		BvToIntExpr::create(haystack_offset),
		SubExpr::create(haystack_size,haystack_offset));

	/******************/
	/* [6] needle_var */
	/******************/
	ref<Expr> needle_size   = moNeedle->getIntSizeExpr();
	ref<Expr> needle_offset = moNeedle->getOffsetExpr(needle);	
	ref<Expr> needle_helper_var = StrSubstrExpr::create(
		StrVarExpr::create(osNeedle->getABSerial()),
		BvToIntExpr::create(needle_offset),
		SubExpr::create(needle_size,needle_offset));
	ref<Expr> needle_var = StrSubstrExpr::create(
		needle_helper_var,
		zero,
		StrFirstIdxOfExpr::create(
			needle_helper_var,
			x00));

	/*******************************/
	/* [7] Check if c appears in p */
	/*******************************/
	static int tmpStrVarSerialIdx=0;
	ref<Expr> c = StrVarExpr::create(std::string("c")+std::to_string(tmpStrVarSerialIdx++));
	ref<Expr> needleAppears = EqExpr::create(
		StrFirstIdxOfExpr::create(haystack_var,c),
		minusOne);
	// AndExpr::create(
		//StrContainsExpr::create(haystack_var,c);//,
		//StrContainsExpr::create(needle_var  ,c));
		
	ref<Expr> firstIndexOfx00 = StrFirstIdxOfExpr::create(haystack_var,x00);
	
	/*****************************************************************************/
	/* [9] Issue an error when invoking strcspn on a non NULL terminated string, */
	/*     and all the needle chars can be missing ...                           */
	/*****************************************************************************/
	ref<Expr> validAccess = //OrExpr::create(
			needleAppears;//,
//			StrContainsExpr::create(haystack_var,x00));

	ref<Expr> strcspnReturnValue = 
		SelectExpr::create(
			EqExpr::create(
				StrLengthExpr::create(needle_var),
				one),
			StrFirstIdxOfExpr::create(haystack_var,needle_var),
			one);

	return std::make_pair(strcspnReturnValue,validAccess);
}

StrModel StringModel::modelStrstr(
	const ObjectState* osHaystack,
	ref<Expr> haystack,
	const ObjectState* osNeedle,
	ref<Expr> needle)
{
	const MemoryObject* moHaystack = osHaystack->getObject();
	const MemoryObject* moNeedle   = osNeedle->getObject();

	/********************/
	/* [5] haystack_var */
	/********************/
	ref<Expr> haystack_size   = moHaystack->getIntSizeExpr();
	ref<Expr> haystack_offset = moHaystack->getOffsetExpr(haystack);	
	ref<Expr> haystack_var    = StrSubstrExpr::create(
		StrVarExpr::create(osHaystack->getABSerial()),
		BvToIntExpr::create(haystack_offset),
		SubExpr::create(haystack_size,haystack_offset));

	/******************/
	/* [6] needle_var */
	/******************/
	ref<Expr> needle_size   = moNeedle->getIntSizeExpr();
	ref<Expr> needle_offset = moNeedle->getOffsetExpr(needle);	
	ref<Expr> needle_helper_var = StrSubstrExpr::create(
		StrVarExpr::create(osNeedle->getABSerial()),
		BvToIntExpr::create(needle_offset),
		SubExpr::create(needle_size,needle_offset));
	ref<Expr> needle_var = StrSubstrExpr::create(
		needle_helper_var,
		zero,
		StrFirstIdxOfExpr::create(
			needle_helper_var,
			x00));

	/*******************************/
	/* [7] Check if c appears in p */
	/*******************************/
	ref<Expr> firstIndexOfneedle = StrFirstIdxOfExpr::create(haystack_var,needle_var);
	ref<Expr> firstIndexOfx00    = StrFirstIdxOfExpr::create(haystack_var,x00);

	/*******************************/
	/* [8] Check if c appears in p */
	/*******************************/
	ref<Expr> needle_appears_in_p = NotExpr::create(EqExpr::create(firstIndexOfneedle,minusOne));	
	ref<Expr> needle_appears_in_p_before_x00 = SltExpr::create(firstIndexOfneedle,firstIndexOfx00);

	/****************************************************************************/
	/* [9] Issue an error when invoking strstr on a non NULL terminated string, */
	/*     and the specific char can be missing ...                             */
	/****************************************************************************/
	ref<Expr> validAcess = AndExpr::create(
    	OrExpr::create(
			NotExpr::create(EqExpr::create(firstIndexOfneedle,minusOne)),
			NotExpr::create(EqExpr::create(firstIndexOfx00,   minusOne))),
		moHaystack->getBoundsCheckPointer(haystack));

	ref<Expr> strstrReturnValue = 
		SelectExpr::create(
			AndExpr::create(
				needle_appears_in_p,
				needle_appears_in_p_before_x00),
			AddExpr::create(
				firstIndexOfneedle,
				haystack),
			zero);

	return std::make_pair(strstrReturnValue,validAcess);
}

StrModel StringModel::modelStrpbrk(const ObjectState* os, ref<Expr> s, 
                                   const ObjectState* accept_os, ref<Expr> accept,
                                   ExecutionState& state) {
  const MemoryObject* mos = os->getObject();
  const MemoryObject* mo_accept = accept_os->getObject();

  static int strpbrk_tmp = 0;
	/*******************************/
	/* [5] Check if c appears in p */
	/*******************************/
	ref<Expr> size   = mos->getIntSizeExpr();
	ref<Expr> offset = mos->getOffsetExpr(s);	
	ref<Expr> p_var  = StrSubstrExpr::create(
		StrVarExpr::create(os->getABSerial()),
		BvToIntExpr::create(offset),
		SubExpr::create(size,offset));


  ref<Expr> accept_offset = mo_accept->getOffsetExpr(accept);
  ref<Expr> accept_var = StrSubstrExpr::create(
    StrVarExpr::create(accept_os->getABSerial()),
    BvToIntExpr::create(accept_offset),
    SubExpr::create(mo_accept->getIntSizeExpr(), accept_offset));


  char buf[30];
  snprintf(buf, sizeof(buf), "AB_strpbrk_tmp_%d", strpbrk_tmp++);
  ref<Expr> freshStrVar = StrVarExpr::create(buf);

	state.addConstraint(EqExpr::create(
        StrLengthExpr::create(freshStrVar),
        BvToIntExpr::create(ConstantExpr::create(1, Expr::Int64))));

  state.addConstraint(StrContainsExpr::create(accept_var, freshStrVar));

	/*******************************/
	/* [7] Check if c appears in p */
	/*******************************/
	ref<Expr> firstIndexOfc   = StrFirstIdxOfExpr::create(p_var,freshStrVar);
	ref<Expr> firstIndexOfx00 = StrFirstIdxOfExpr::create(p_var,x00);

	/*******************************/
	/* [8] Check if c appears in p */
	/*******************************/
	ref<Expr> c_appears_in_p = NotExpr::create(EqExpr::create(firstIndexOfc,minusOne));	
	ref<Expr> c_appears_in_p_before_x00 = SltExpr::create(firstIndexOfc,firstIndexOfx00);

	/****************************************************************************/
	/* [9] Issue an error when invoking strchr on a non NULL terminated string, */
	/*     and the specific char can be missing ...                             */
	/****************************************************************************/
  ref<Expr> validAcess = AndExpr::create(
    OrExpr::create(
       NotExpr::create(EqExpr::create(firstIndexOfc,  minusOne)),
       NotExpr::create(EqExpr::create(firstIndexOfx00,  minusOne))
    ),
    mos->getBoundsCheckPointer(s)
  );

 ref<Expr> strchrReturnValue = 
    SelectExpr::create(
          AndExpr::create(
            c_appears_in_p,
            c_appears_in_p_before_x00),
          AddExpr::create(
            firstIndexOfc,
            s),
          zero);

 return std::make_pair(strchrReturnValue, validAcess);
}
StrModel StringModel::modelStrchr(const ObjectState* os, ref<Expr> s, ref<Expr> c) {
  const MemoryObject* mos = os->getObject();
	/*******************************/
	/* [5] Check if c appears in p */
	/*******************************/
	ref<Expr> size   = mos->getIntSizeExpr();
	ref<Expr> offset = mos->getOffsetExpr(s);	
	ref<Expr> p_var  = StrSubstrExpr::create(
		StrVarExpr::create(os->getABSerial()),
		BvToIntExpr::create(offset),
		SubExpr::create(size,offset));

	/*******************************/
	/* [6] Check if c appears in p */
	/*******************************/
	ref<Expr> c_as_length_1_string = StrFromBitVector8Expr::create(ExtractExpr::create(c,0,8));

	/*******************************/
	/* [7] Check if c appears in p */
	/*******************************/
	ref<Expr> firstIndexOfc   = StrFirstIdxOfExpr::create(p_var,c_as_length_1_string);
	ref<Expr> firstIndexOfx00 = StrFirstIdxOfExpr::create(p_var,x00);

	/*******************************/
	/* [8] Check if c appears in p */
	/*******************************/
	ref<Expr> c_appears_in_p = NotExpr::create(EqExpr::create(firstIndexOfc,minusOne));	
	ref<Expr> c_appears_in_p_before_x00 = SltExpr::create(firstIndexOfc,firstIndexOfx00);

	/****************************************************************************/
	/* [9] Issue an error when invoking strchr on a non NULL terminated string, */
	/*     and the specific char can be missing ...                             */
	/****************************************************************************/
  ref<Expr> validAcess = AndExpr::create(
    OrExpr::create(
       NotExpr::create(EqExpr::create(firstIndexOfc,  minusOne)),
       NotExpr::create(EqExpr::create(firstIndexOfx00,  minusOne))
    ),
    mos->getBoundsCheckPointer(s)
  );

 ref<Expr> strchrReturnValue = 
    SelectExpr::create(
          AndExpr::create(
            c_appears_in_p,
            c_appears_in_p_before_x00),
          AddExpr::create(
            firstIndexOfc,
            s),
          zero);

 return std::make_pair(strchrReturnValue, validAcess);
}

StrModel StringModel::modelStrnlen
(
	const ObjectState* os,
	ref<Expr> s,
	ref<Expr> n)
{
	const MemoryObject* mos = os->getObject();
	ref<Expr> AB = StrVarExpr::create(os->getABSerial());
	ref<Expr> offset = BvToIntExpr::create(mos->getOffsetExpr(s));
	ref<Expr> size = SubExpr::create(mos->getIntSizeExpr(),offset);

	/*****************************/
	/* [6] Is s NULL terminated? */
	/*****************************/
	ref<Expr> svar = StrSubstrExpr::create(AB,offset,size);
	ref<Expr> firstIdxOf_x00_in_s = StrFirstIdxOfExpr::create(svar,x00);
	ref<Expr> illegal_access = AndExpr::create(
		EqExpr::create(firstIdxOf_x00_in_s,minusOne),
		SgtExpr::create(n,size));
	ref<Expr> legal_access = NotExpr::create(illegal_access);

	/*************************************/
	/* [9] bind the result of strlen ... */
	/*************************************/
	return std::make_pair(
		SelectExpr::create(
			SleExpr::create(
				firstIdxOf_x00_in_s,
				n),
			firstIdxOf_x00_in_s,
			n),
		legal_access);
}

StrModel StringModel::modelStrlen(const ObjectState* os, ref<Expr>	s) {
  const MemoryObject* mos = os->getObject();
	ref<Expr> AB = StrVarExpr::create(os->getABSerial());
	ref<Expr> offset = BvToIntExpr::create(mos->getOffsetExpr(s));
	ref<Expr> size = SubExpr::create(mos->getIntSizeExpr(),offset);

	/*****************************/
	/* [6] Is s NULL terminated? */
	/*****************************/
	ref<Expr> svar = StrSubstrExpr::create(AB,offset,size);
	ref<Expr> firstIdxOf_x00_in_s = StrFirstIdxOfExpr::create(svar,x00);
	ref<Expr> p_is_not_NULL_terminated = EqExpr::create(firstIdxOf_x00_in_s,minusOne);
	ref<Expr> p_is_NULL_terminated = NotExpr::create(p_is_not_NULL_terminated);

	/*************************************/
	/* [9] bind the result of strlen ... */
	/*************************************/
  return std::make_pair(firstIdxOf_x00_in_s, p_is_NULL_terminated);
}
StrModel StringModel::modelStrncpy(ObjectState* osDst, ref<Expr> dst,
                                   const ObjectState* osSrc, ref<Expr> src, ref<Expr> n) {

  const MemoryObject* moDst = osDst->getObject();
  const MemoryObject* moSrc = osSrc->getObject();
  ref<Expr> AB_dst_var = StrVarExpr::create(osDst->getABSerial());
	ref<Expr> AB_src_var = StrVarExpr::create(osSrc->getABSerial());
	ref<Expr> dst_offset = BvToIntExpr::create(moDst->getOffsetExpr(dst));
	ref<Expr> src_offset = BvToIntExpr::create(moSrc->getOffsetExpr(src));

	ref<Expr> dst_size = SubExpr::create(moDst->getIntSizeExpr(),
                                       moDst->getOffsetExpr(dst));
	ref<Expr> src_size = SubExpr::create(moSrc->getIntSizeExpr(),
                                       moSrc->getOffsetExpr(src));

	ref<Expr> n_int = BvToIntExpr::create(n);

	/******************************/
	/* [8] Prefix, Middle, Suffix */
	/******************************/
	ref<Expr> prefixStart  = zero;
	ref<Expr> prefixLength = dst_offset;

	ref<Expr> firstIdxOf_x00_in_src = StrFirstIdxOfExpr::create(
		StrSubstrExpr::create(AB_src_var,src_offset,src_size),
		x00);

	ref<Expr> middleLength = SelectExpr::create(
		SgtExpr::create(AddExpr::create(firstIdxOf_x00_in_src,one),n_int),
		n_int,
		AddExpr::create(firstIdxOf_x00_in_src,one));
	ref<Expr> suffixStart  = AddExpr::create(prefixLength,middleLength);
	ref<Expr> suffixLength = SubExpr::create(moDst->getSizeExpr(),suffixStart);

	/***************************/
	/* [9] New Dst Version ... */
	/***************************/
	osDst->version++;
	ref<Expr> AB_dst_new_var = StrVarExpr::create(osDst->getABSerial());

	/************************/
	/* [10] prefix equation */
	/************************/
	ref<Expr> prefixEq = StrEqExpr::create(
		StrSubstrExpr::create(AB_dst_var,    prefixStart,prefixLength),
		StrSubstrExpr::create(AB_dst_new_var,prefixStart,prefixLength));
			
	/************************/
	/* [11] suffix equation */
	/************************/
	ref<Expr> suffixEq = StrEqExpr::create(
		StrSubstrExpr::create(AB_dst_var,    suffixStart,suffixLength),	
		StrSubstrExpr::create(AB_dst_new_var,suffixStart,suffixLength));
			
	/************************/
	/* [12] middle equation */
	/************************/
	ref<Expr> middleEq = StrEqExpr::create(
		StrSubstrExpr::create(AB_src_var,    src_offset,middleLength),	
		StrSubstrExpr::create(AB_dst_new_var,dst_offset,middleLength));

	/*********************************************************************/
	/* [13] Check with the solver whether src can be NOT NULL terminated */
	/*********************************************************************/
	ref<Expr> Is_src_not_NULL_terminated = EqExpr::create(
		firstIdxOf_x00_in_src,
		minusOne);
  ref<Expr> Is_src_NULL_terminated = NotExpr::create(Is_src_not_NULL_terminated);

  ref<Expr> same_len = 
  	        EqExpr::create(
		          StrLengthExpr::create(AB_dst_var),
		          StrLengthExpr::create(AB_dst_new_var));

  ref<Expr> finalExpr = 
      AndExpr::create(suffixEq,
        AndExpr::create(middleEq,
          AndExpr::create(prefixEq,same_len)));

  return std::make_pair(
	finalExpr,
	AndExpr::create(
		SleExpr::create(n,dst_size),
		SleExpr::create(n,src_size)));
}

StrModel StringModel::modelStrcpy(ObjectState* osDst, ref<Expr> dst,
                     const ObjectState* osSrc, ref<Expr> src) {
  
  const MemoryObject* moDst = osDst->getObject();
  const MemoryObject* moSrc = osSrc->getObject();
	ref<Expr> AB_dst_var = StrVarExpr::create(osDst->getABSerial());
	ref<Expr> AB_src_var = StrVarExpr::create(osSrc->getABSerial());
	ref<Expr> dst_offset = BvToIntExpr::create(moDst->getOffsetExpr(dst));
	ref<Expr> src_offset = BvToIntExpr::create(moSrc->getOffsetExpr(src));

	ref<Expr> dst_size = SubExpr::create(moDst->getIntSizeExpr(),
                                       moDst->getOffsetExpr(dst));
	ref<Expr> src_size = SubExpr::create(moSrc->getIntSizeExpr(),
                                       moSrc->getOffsetExpr(src));

	/******************************/
	/* [8] Prefix, Middle, Suffix */
	/******************************/
	ref<Expr> prefixStart  = zero;
	ref<Expr> prefixLength = dst_offset;

	ref<Expr> firstIdxOf_x00_in_src = StrFirstIdxOfExpr::create(AB_src_var,x00);
	//	StrSubstrExpr::create(AB_src_var,src_offset,src_size),
	//	x00);

	ref<Expr> middleLength = AddExpr::create(firstIdxOf_x00_in_src,one);
	ref<Expr> suffixStart  = AddExpr::create(prefixLength,middleLength);
	ref<Expr> suffixLength = SubExpr::create(moDst->getSizeExpr(),suffixStart);

	/***************************/
	/* [9] New Dst Version ... */
	/***************************/
	osDst->version++;
	ref<Expr> AB_dst_new_var = StrVarExpr::create(osDst->getABSerial());

	/************************/
	/* [10] prefix equation */
	/************************/
	ref<Expr> prefixEq = StrEqExpr::create(
		StrSubstrExpr::create(AB_dst_var,    prefixStart,prefixLength),
		StrSubstrExpr::create(AB_dst_new_var,prefixStart,prefixLength));
			
	/************************/
	/* [11] suffix equation */
	/************************/
	ref<Expr> suffixEq = StrEqExpr::create(
		StrSubstrExpr::create(AB_dst_var,    suffixStart,suffixLength),	
		StrSubstrExpr::create(AB_dst_new_var,suffixStart,suffixLength));
			
	/************************/
	/* [12] middle equation */
	/************************/
	ref<Expr> middleEq = StrEqExpr::create(
		StrSubstrExpr::create(AB_src_var,    src_offset,middleLength),	
		StrSubstrExpr::create(AB_dst_new_var,dst_offset,middleLength));

	/*********************************************************************/
	/* [13] Check with the solver whether src can be NOT NULL terminated */
	/*********************************************************************/
	ref<Expr> src_is_not_NULL_terminated = EqExpr::create(
		firstIdxOf_x00_in_src,
		minusOne);
	ref<Expr> src_is_NULL_terminated = NotExpr::create(src_is_not_NULL_terminated);

	ref<Expr> same_len = EqExpr::create(
		StrLengthExpr::create(AB_dst_var),
		StrLengthExpr::create(AB_dst_new_var));

	ref<Expr> finalExpr = 
		AndExpr::create(suffixEq,
			AndExpr::create(middleEq,
			AndExpr::create(prefixEq,same_len)));

	return std::make_pair(
		finalExpr,
		AndExpr::create(
			src_is_NULL_terminated,
			SltExpr::create(
				firstIdxOf_x00_in_src,
				dst_size)));

	//return std::make_pair(
	//	finalExpr,
	//	OrExpr::create(
	//		src_is_not_NULL_terminated,
	//		SltExpr::create(
	//			dst_size,
	//			AddExpr::create(firstIdxOf_x00_in_src,one))));
}

} //end klee namespace

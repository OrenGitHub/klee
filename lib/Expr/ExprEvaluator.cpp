//===-- ExprEvaluator.cpp -------------------------------------------------===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "klee/util/ExprEvaluator.h"

using namespace klee;

ExprVisitor::Action ExprEvaluator::evalRead(const UpdateList &ul,
                                            unsigned index) {
  for (const UpdateNode *un=ul.head; un; un=un->next) {
    ref<Expr> ui = visit(un->index);
    
    if (ConstantExpr *CE = dyn_cast<ConstantExpr>(ui)) {
      if (CE->getZExtValue() == index)
        return Action::changeTo(visit(un->value));
    } else {
      // update index is unknown, so may or may not be index, we
      // cannot guarantee value. we can rewrite to read at this
      // version though (mostly for debugging).
      
      return Action::changeTo(ReadExpr::create(UpdateList(ul.root, un), 
                                               ConstantExpr::alloc(index, 
                                                                   ul.root->getDomain())));
    }
  }
  
  if (ul.root->isConstantArray() && index < ul.root->size)
    return Action::changeTo(ul.root->constantValues[index]);

 // llvm::errs() << "Reading " << ul.root->name << "\n";
 // getInitialValue(*ul.root, index)->dump();

  return Action::changeTo(getInitialValue(*ul.root, index));
}

ExprVisitor::Action ExprEvaluator::visitExpr(const Expr &e) {
  // Evaluate all constant expressions here, in case they weren't folded in
  // construction. Don't do this for reads though, because we want them to go to
  // the normal rewrite path.
  unsigned N = e.getNumKids();
  if (!N || isa<ReadExpr>(e) || isa<BvToIntExpr>(e) || isa<StrFromBitVector8Expr>(e))
    return Action::doChildren();

  for (unsigned i = 0; i != N; ++i)
    if (!isa<ConstantExpr>(e.getKid(i)))
      return Action::doChildren();

  ref<Expr> Kids[3];
  for (unsigned i = 0; i != N; ++i) {
    assert(i < 3);
    Kids[i] = e.getKid(i);
  }

  return Action::changeTo(e.rebuild(Kids));
}
ExprVisitor::Action ExprEvaluator::visitBvToInt(const BvToIntExpr& e) {
  ref<Expr> _c = visit(e.bvExpr);
  ConstantExpr *c = dyn_cast<ConstantExpr>(_c);
  assert(c && "non constant bv in bvToint");
  //llvm::errs() << "bit width : " << dyn_cast<ConstantExpr>(e.bvExpr)->getWidth() << "\n";

  return Action::changeTo(ConstantExpr::create(c->getZExtValue(), Expr::Int64));
}

ExprVisitor::Action ExprEvaluator::visitStrFromBv8(const StrFromBitVector8Expr& e) {
  ref<Expr> _c = visit(e.someBitVec8);
  ConstantExpr *c = dyn_cast<ConstantExpr>(_c);
  assert(c && "non constant bv in strfrobv8");
  std::vector<unsigned char> arr{ (unsigned char)c->getZExtValue(8) };
  return Action::changeTo(StrConstExpr::alloc(arr));
}


static void printVectorString(std::vector<unsigned char> &ret) {
   for(auto &h : ret) llvm::errs() << (int)h << "-";
   //for(auto &h : ret) llvm::errs() << h << "-";
   llvm::errs() << "\n";
}
ExprVisitor::Action ExprEvaluator::visitStrVar(const StrVarExpr& se) {
   //llvm::errs() << "looking at array name " << se.name << "\n";
   const Array *a = getStringArray(se.name);
   if(a == nullptr) {
//       llvm::errs() << "array: " << se.name << " not found!\n";
       return Action::skipChildren();
   }
//   llvm:: errs() << "array name " << a->name << "\n";
   assert(a && "nullptr array from ab name");
   std::vector<unsigned char> c;
   int getChrIdx = 0;
   while(1) {
        ref<Expr> ch = getInitialValue(*a, getChrIdx);
        if(isa<NotOptimizedExpr>(ch)) break;
        c.push_back((unsigned char)dyn_cast<ConstantExpr>(ch)->getZExtValue(8));
        getChrIdx++;
   }
   std::vector<unsigned char> ret;
   char numBuf[3] = {0,0,0};

   for(int i = 0; i < c.size(); i++) {
       if(c[i] == '\\') {
           i++;
            switch(c[i]) {
              case 'a':  ret.push_back('\a'); break;
              case 'b':  ret.push_back('\b'); break;
              case 'f':  ret.push_back('\f'); break;
              case 'n':  ret.push_back('\n'); break;
              case 'r':  ret.push_back('\r'); break;
              case 't':  ret.push_back('\t'); break;
              case 'v':  ret.push_back('\v'); break;
              case '\\': ret.push_back('\\'); break;
              case '\'': ret.push_back('\''); break;
              case '\"': ret.push_back('\"'); break;
              case '\?': ret.push_back('\?'); break;
              case 'x': 
                  numBuf[0] = c[i+1];
                  numBuf[1] = c[i+2]; 
                  ret.push_back((unsigned char)strtol(numBuf,NULL, 16)); 
                  i = i + 2;
                  break;
              default: assert(0 && "Unhandled escape");
            }
       } else 
        ret.push_back(c[i]);
   }
//   llvm::errs() << "Evaluated str var " << se.name << " to " ;//<< std::string(c.begin(), c.end()) << "\n";
//   printVectorString(ret);
   return Action::changeTo(StrConstExpr::alloc(ret));
}


ExprVisitor::Action ExprEvaluator::visitStrLen(const StrLengthExpr& sle) {
 //   sle.dump();
    ref<Expr> _s = visit(sle.s);
 //   _s->dump();
    StrConstExpr* s = dyn_cast<StrConstExpr>(_s);
   if(s == nullptr) return Action::skipChildren();
    assert(s && "_s must be a constant string");
//    std::string normalizedS = NormalizeZ3String(s->value);
    size_t len = s->data.size();
  //  llvm::errs() << "Strlen returning " <<  len << "\n";
    return Action::changeTo(ConstantExpr::create(len, Expr::Int64));
}

bool ends_with(
	std::vector<unsigned char> const &value,
	std::vector<unsigned char> const &ending)
{
	if (ending.size() > value.size()) return false;
	return std::equal(ending.rbegin(), ending.rend(), value.rbegin());
}

bool starts_with(
	std::vector<unsigned char> const &value,
	std::vector<unsigned char> const &ending)
{
	if (ending.size() > value.size()) return false;
	return std::equal(ending.rbegin(), ending.rend(), value.rbegin());
}

//bool ends_with(std::string const & value, std::string const & ending)
//{
//    if (ending.size() > value.size()) return false;
//    return std::equal(ending.rbegin(), ending.rend(), value.rbegin());
//}

ExprVisitor::Action ExprEvaluator::visitContainsStringsExpr(const StrContainsExpr& sc)
{
    ref<Expr> _haystack = visit(sc.haystack);
    ref<Expr> _needle = visit(sc.needle);

    StrConstExpr* haystack = dyn_cast<StrConstExpr>(_haystack);
    if(haystack == nullptr) return Action::skipChildren();
    assert(haystack && "haystack must be a constant string");

    StrConstExpr* needle = dyn_cast<StrConstExpr>(_needle);
    if(needle == nullptr) return Action::skipChildren();
    assert(needle && "needle must be a constant string");

	// std::string oren_haystack(haystack->data.begin(),haystack->data.end());
	// std::string oren_needle(needle->data.begin(),needle->data.end());
	
    int i=0;
    
    //for (i=0;i < haystack->data.size(); i++) { oren_haystack[i]=haystack->data[i]; }
    //for (i=0;i < needle->data.size();   i++) { oren_needle[i]=needle->data[i]; }
    
    //for (i=0;i < oren_haystack.size(); i++) { llvm::errs() << oren_haystack[i]; }
    //llvm::errs() << " contains ";
    //for (i=0;i < oren_needle.size(); i++) { llvm::errs() << oren_needle[i]; }
    //llvm::errs() << " == ";

	auto firstIndex = std::search(
		haystack->data.begin(),
		haystack->data.end(),
		needle->data.begin(),
		needle->data.end());

    size_t fstIdx = std::distance(haystack->data.begin(),firstIndex);
    
    if(firstIndex == haystack->data.end())
    {
		return Action::changeTo(ConstantExpr::create(0,Expr::Bool));
    }
    else
    {
    	return Action::changeTo(ConstantExpr::create(1,Expr::Bool));
    }
}

ExprVisitor::Action ExprEvaluator::visitPrefixStringsExpr(const StrPrefixExpr& se)
{
    ref<Expr> _s      = visit(se.s);
    ref<Expr> _prefix = visit(se.prefix);

    StrConstExpr* s = dyn_cast<StrConstExpr>(_s);
    if(s == nullptr) return Action::skipChildren();
    assert(s && "s must be a constant string");

    StrConstExpr* prefix = dyn_cast<StrConstExpr>(_prefix);
    if(prefix == nullptr) return Action::skipChildren();
    assert(prefix && "prefix must be a constant string");

    //std::string oren_s(s->data.begin(),s->data.end());
    //std::string oren_suffix(suffix->data.begin(),suffix->data.end());
 
    int i=0;
    
    //for (i=0;i < s->data.size();      i++) { oren_s[i]=s->data[i]; }
    //for (i=0;i < suffix->data.size(); i++) { oren_suffix[i]=suffix->data[i]; }
    
    //for (i=0;i < s->data.size(); i++) { llvm::errs() << s[i]; }
    //llvm::errs() << " contains ";
    //for (i=0;i < suffix->data.size(); i++) { llvm::errs() << suffix[i]; }
    //llvm::errs() << " == ";

	bool res = starts_with(s->data,prefix->data);

    if (res) { llvm::errs() << "True \n"; }
    else     { llvm::errs() << "False\n"; }
    
    return Action::changeTo(ConstantExpr::create(res,Expr::Bool));
}

ExprVisitor::Action ExprEvaluator::visitSuffixStringsExpr(const StrSuffixExpr& se)
{
    ref<Expr> _s      = visit(se.s);
    ref<Expr> _suffix = visit(se.suffix);

    StrConstExpr* s = dyn_cast<StrConstExpr>(_s);
    if(s == nullptr) return Action::skipChildren();
    assert(s && "s must be a constant string");

    StrConstExpr* suffix = dyn_cast<StrConstExpr>(_suffix);
    if(suffix == nullptr) return Action::skipChildren();
    assert(suffix && "suffix must be a constant string");

    //std::string oren_s(s->data.begin(),s->data.end());
    //std::string oren_suffix(suffix->data.begin(),suffix->data.end());
 
    int i=0;
    
    //for (i=0;i < s->data.size();      i++) { oren_s[i]=s->data[i]; }
    //for (i=0;i < suffix->data.size(); i++) { oren_suffix[i]=suffix->data[i]; }
    
    //for (i=0;i < s->data.size(); i++) { llvm::errs() << s[i]; }
    //llvm::errs() << " contains ";
    //for (i=0;i < suffix->data.size(); i++) { llvm::errs() << suffix[i]; }
    //llvm::errs() << " == ";

	bool res = ends_with(s->data,suffix->data);

    if (res) { llvm::errs() << "True \n"; }
    else     { llvm::errs() << "False\n"; }
    
    return Action::changeTo(ConstantExpr::create(res,Expr::Bool));
}

ExprVisitor::Action ExprEvaluator::visitConcatStringsExpr(const StrConcatExpr& sc) {
//    sfi.dump();
    ref<Expr> _s1 = visit(sc.s1);
    ref<Expr> _s2 = visit(sc.s2);

    StrConstExpr* s1 = dyn_cast<StrConstExpr>(_s1);
    if(s1 == nullptr) return Action::skipChildren();
    assert(s1 && "s1 must be a constant string");

    StrConstExpr* s2 = dyn_cast<StrConstExpr>(_s2);
    if(s2 == nullptr) return Action::skipChildren();
    assert(s2 && "s2 must be a constant string");

    //auto firstIndex = std::search(haystack->data.begin(), haystack->data.end(),
    //            needle.begin(), needle.end());
    //    llvm::errs() << "Haystack: ";
    //    printVectorString(haystack->data);
    //    llvm::errs() << "Needle: ";
    //    printVectorString(needle);
    // size_t fstIdx = std::distance(haystack->data.begin(), firstIndex);
    // if(firstIndex == haystack->data.end()) {
    //        llvm::errs() << "Character not found\n";
    //    return Action::changeTo(ConstantExpr::create(-1, Expr::Int64));
    // }
    //assert(firstIndex != haystack->data.end()  && "Character must be present");
    // llvm::errs() << "Needle found at offset = " << fstIdx << "\n";
    std::string oren_s1;
    std::string oren_s2;
 
    int i=0;
    
    for (i=0;i < s1->data.size(); i++) { oren_s1[i]=s1->data[i]; }
    for (i=0;i < s2->data.size(); i++) { oren_s2[i]=s2->data[i]; }
    
    for (i=0;i < s1->data.size(); i++) { llvm::errs() << s1[i]; }
    llvm::errs() << " ++ ";
    for (i=0;i < s2->data.size(); i++) { llvm::errs() << s2[i]; }
    llvm::errs() << " == ";
    llvm::errs() << oren_s1+oren_s2 << "\n";
    
    return Action::changeTo(StrConstExpr::create(oren_s1+oren_s2));
}

ExprVisitor::Action ExprEvaluator::visitFirstIndexOf(const StrFirstIdxOfExpr& sfi) {
//    sfi.dump();
    ref<Expr> _haystack = visit(sfi.haystack);
    ref<Expr> _needle = visit(sfi.needle);

    StrConstExpr* haystack = dyn_cast<StrConstExpr>(_haystack);
    if(haystack == nullptr) {
      llvm::errs() << "haystack not constant!\n";
      _haystack->dump();
        return Action::skipChildren();
    }
    assert(haystack && "Haystack must be a constant string");
    std::vector<unsigned char> needle;
    if(ConstantExpr* n = dyn_cast<ConstantExpr>(_needle)) {
        std::vector<unsigned char> tm(1);
        tm[0] = n->getZExtValue(8);
        needle = tm; //std::string(1,(char)n->getZExtValue(8));
    } else if(StrConstExpr* n = dyn_cast<StrConstExpr>(_needle)) {
        needle = n->data;
    } else {
      llvm::errs() << "Needle not constant!\n";
      _needle->dump();
      return Action::skipChildren();
      assert(false && "Needle must be constant bitvec");
    }

    auto firstIndex = std::search(haystack->data.begin(), haystack->data.end(),
                needle.begin(), needle.end());
 //   llvm::errs() << "Haystack: ";
 //   printVectorString(haystack->data);
 //   llvm::errs() << "Needle: ";
 //   printVectorString(needle);
    size_t fstIdx = std::distance(haystack->data.begin(), firstIndex);
    if(firstIndex == haystack->data.end()) {
        llvm::errs() << "Character not found\n";
        return Action::changeTo(ConstantExpr::create(-1, Expr::Int64));
    }
    assert(firstIndex != haystack->data.end()  && "Character must be present");
 //  llvm::errs() << "Needle found at offset = " << fstIdx << "\n";
    return Action::changeTo(ConstantExpr::create(fstIdx, Expr::Int64));
}

ExprVisitor::Action ExprEvaluator::visitStrEq(const StrEqExpr &eqE) {
    ref<Expr> _left = visit(eqE.s1);
    ref<Expr> _right = visit(eqE.s2);
//    _left->dump();
//    _right->dump();
    StrConstExpr* left = dyn_cast<StrConstExpr>(_left);
    StrConstExpr* right = dyn_cast<StrConstExpr>(_right);
    if(left == nullptr) return Action::skipChildren();
    if(right == nullptr) return Action::skipChildren();
    assert(left != nullptr && "Non constant strign expr in eq expr");
    assert(right != nullptr && "Non constant strign expr in eq expr");
    return Action::changeTo(ConstantExpr::create(left->data == right->data, Expr::Bool));
}
ExprVisitor::Action ExprEvaluator::visitStrSubstr(const StrSubstrExpr &subStrE) {
//    subStrE.dump();
    ref<Expr> _offset = visit(subStrE.offset);
    ref<Expr> _length = visit(subStrE.length);
    ConstantExpr* offset = dyn_cast<ConstantExpr>(_offset);
    ConstantExpr* length = dyn_cast<ConstantExpr>(_length);
//    llvm::errs() << "In: ";
    if(offset != nullptr && length != nullptr) {
//    llvm::errs() << "substr starting from: " << offset->getZExtValue() << " of len " << length->getZExtValue() << "\n";
      ref<Expr> _theString = visit(subStrE.s);
//      _theString->dump();
      StrConstExpr* theString = dyn_cast<StrConstExpr>(_theString);
      if(theString == nullptr) {
          llvm::errs() << "skiping substring\n";
         subStrE.dump();
          return Action::skipChildren();
      }
      assert(theString != nullptr && "Non constant strign expr in SubString expr");
      if(offset->Add(length)->getZExtValue() > theString->data.size())  {
          llvm::errs() << "Due to length " << theString->data.size()  << " smaller than " << offset->Add(length)->getZExtValue() << "\n";
          subStrE.dump();
          printVectorString(theString->data);
          llvm::errs() << "Length:   ";
          subStrE.length->dump();
          llvm::errs() << "Offset:   ";
          subStrE.offset->dump();
          return Action::skipChildren();
      }
//      llvm::errs() << "string size: " << theString->data.size() << "\n";
      std::vector<unsigned char> subStr(theString->data.begin() + offset->getZExtValue(),
                                        theString->data.begin() + offset->getZExtValue() + length->getZExtValue());
      return Action::changeTo(StrConstExpr::alloc(subStr));
    } else {
      llvm::errs() << "Length or offset not constant:\n";
      _length->dump();
      _offset->dump();
      return Action::skipChildren();
      assert(false && "Non constant offsets for substr");
    }

}

ExprVisitor::Action ExprEvaluator::visitCharAt(const StrCharAtExpr &charAtE) {
    ref<Expr> _index = visit(charAtE.i);
    ConstantExpr* index = dyn_cast<ConstantExpr>(_index);
    if(index != nullptr) {
//      llvm::errs() << "charat " << index->getZExtValue() << "\n";
      int idx = index->getZExtValue();
      std::vector<unsigned char> c(1);
      ref<Expr> _string = visit(charAtE.s);
      StrConstExpr* str = dyn_cast<StrConstExpr>(_string);
      if(str == nullptr) return Action::skipChildren();
      assert(str != nullptr && "Failed to make the string constant");
      if(idx >= str->data.size()) return Action::skipChildren();
      c[0] = str->data[idx]; 
//    fprintf(stderr,"c is '%s'\n", c);
      ref<Expr> ret = StrConstExpr::alloc(c);
      return Action::changeTo(ret);
    } else {
      return Action::skipChildren();
      assert(false && "Non constant offsets for substr");
    }

}

ExprVisitor::Action ExprEvaluator::visitRead(const ReadExpr &re) {
  ref<Expr> v = visit(re.index);
  
  if (ConstantExpr *CE = dyn_cast<ConstantExpr>(v)) {
    return evalRead(re.updates, CE->getZExtValue());
  } else {
      return Action::doChildren();
  }
}

// we need to check for div by zero during partial evaluation,
// if this occurs then simply ignore the 0 divisor and use the
// original expression.
ExprVisitor::Action ExprEvaluator::protectedDivOperation(const BinaryExpr &e) {
  ref<Expr> kids[2] = { visit(e.left),
                        visit(e.right) };

  if (ConstantExpr *CE = dyn_cast<ConstantExpr>(kids[1]))
    if (CE->isZero())
      kids[1] = e.right;

  if (kids[0]!=e.left || kids[1]!=e.right) {
    return Action::changeTo(e.rebuild(kids));
  } else {
    return Action::skipChildren();
  }
}

ExprVisitor::Action ExprEvaluator::visitUDiv(const UDivExpr &e) { 
  return protectedDivOperation(e); 
}
ExprVisitor::Action ExprEvaluator::visitSDiv(const SDivExpr &e) { 
  return protectedDivOperation(e); 
}
ExprVisitor::Action ExprEvaluator::visitURem(const URemExpr &e) { 
  return protectedDivOperation(e); 
}
ExprVisitor::Action ExprEvaluator::visitSRem(const SRemExpr &e) { 
  return protectedDivOperation(e); 
}

ExprVisitor::Action ExprEvaluator::visitExprPost(const Expr& e) {
  // When evaluating an assignment we should fold NotOptimizedExpr
  // nodes so we can fully evaluate.
  if (e.getKind() == Expr::NotOptimized) {
    return Action::changeTo(static_cast<const NotOptimizedExpr&>(e).src);
  }
  return Action::skipChildren();
}

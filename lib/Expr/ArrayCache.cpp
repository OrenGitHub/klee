#include "klee/util/ArrayCache.h"
#include <regex>

namespace klee {

ArrayCache::~ArrayCache() {
  // Free Allocated Array objects
  for (ArrayHashMap::iterator ai = cachedSymbolicArrays.begin(),
                              e = cachedSymbolicArrays.end();
       ai != e; ++ai) {
    delete *ai;
  }
  for (ArrayPtrVec::iterator ai = concreteArrays.begin(),
                             e = concreteArrays.end();
       ai != e; ++ai) {
    delete *ai;
  }
  for (ArrayHashMap::iterator ai = cachedStringArrays.begin(),
                              e = cachedStringArrays.end();
       ai != e; ++ai) {
    delete *ai;
  }
}

const Array *
ArrayCache::CreateArray(const std::string &_name, uint64_t _size,
                        const ref<ConstantExpr> *constantValuesBegin,
                        const ref<ConstantExpr> *constantValuesEnd,
                        Expr::Width _domain, Expr::Width _range) {

  const Array *array = new Array(_name, _size, constantValuesBegin,
                                 constantValuesEnd, _domain, _range);
  if (array->isSymbolicArray()) {
    std::pair<ArrayHashMap::const_iterator, bool> success =
        cachedSymbolicArrays.insert(array);
    if (success.second) {
      // Cache miss
      return array;
    }
    // Cache hit
    delete array;
    array = *(success.first);
    assert(array->isSymbolicArray() &&
           "Cached symbolic array is no longer symbolic");
    return array;
  } else {
    // Treat every constant array as distinct so we never cache them
    assert(array->isConstantArray());
    concreteArrays.push_back(array); // For deletion later
    return array;
  }
}
const Array * ArrayCache::StringArray(const std::string &name) {
    const Array * array =  new Array(name, 0);
    std::pair<ArrayHashMap::const_iterator, bool> success =
        cachedStringArrays.insert(array);
    if (success.second) {
      // Cache miss
      return array;
    }
    // Cache hit
    delete array;
    array = *(success.first);
    return array;
}

const Array * ArrayCache::getMostRecentStringArray(const Array * arr) {
    std::regex re("AB_serial_(\\d+)_version_(\\d+)");

    std::smatch match;
    int serial, version;
    if (std::regex_search(arr->name, match, re) && match.size() > 1) {
       serial = std::stoi(match.str(1));
       version = std::stoi(match.str(2));
    } else {
       assert(0 && "Failed to match regex");
       return arr;
    } 
    const Array* retArr = arr;

    do {
    version++;


    std::stringstream ss;
    ss << "AB_serial_" << serial << "_version_" << version;
    const Array * array =  new Array(ss.str(), 0);
    if (cachedStringArrays.count(array) == 0) {
      // Cache miss
      delete array;
      return retArr;
    } else {
      retArr = *cachedStringArrays.find(array);
      delete array;
    }
    } while(true);
}
}

SET(CMAKE_CXX_FLAGS "-Wall -Wno-unused-variable -Wno-reorder -Wno-sign-compare -fno-rtti")
add_library(StaticAnalyzer MODULE
StaticAnalyzer.cpp
AbstractState.cpp
CFG.cpp
AbstractStateElement_Readinfo.cpp
AbstractStateElement_Contains.cpp
AbstractStateElement_LinearConstraints.cpp
)

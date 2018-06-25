############################
# REQUIRED MINIMAL VERSION #
############################
cmake_minimum_required(VERSION 3.9)

###################################################
# THIS FILE IS INSIDE THE BUILD DIRECTORY OF LLVM #
###################################################
find_package(LLVM REQUIRED CONFIG)

##########################
# WHAT DOES THIS DO? :]] #
##########################
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

##########################
# WHAT DOES THIS DO? :]] #
##########################
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

##################################
# FOLDER WHERE PASS CODE RESIDES #
##################################
add_subdirectory(StaticAnalyzer)


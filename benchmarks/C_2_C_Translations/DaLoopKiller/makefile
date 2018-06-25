###############
# DIRECTORIES #
###############
LLVM_DIR       = /home/oren/GIT/llvm-3.8.0
LLVM_SRC_DIR   = ${LLVM_DIR}/llvm
LLVM_BUILD_DIR = ${LLVM_DIR}/build
LLVM_BIN_DIR   = ${LLVM_BUILD_DIR}/bin

#########
# TOOLS #
#########
OPT      = ${LLVM_BIN_DIR}/opt
CLANG    = ${LLVM_BIN_DIR}/clang
LLVM_DIS = ${LLVM_BIN_DIR}/llvm-dis

###########
# MY_PASS #
###########
PASS_NAME    = StaticAnalyzer
PASS_DIR     = ${PASS_NAME}
PASS_SO_FILE = ./build/${PASS_DIR}/lib${PASS_NAME}.so  

###################
# BUILT-IN PASSES #
###################
PASSES = -loop-simplify -instnamer -indvars

#########
# INPUT #
#########
INPUT = ./examples/input

###########
# TARGETS #
###########
.PHONY all:
all:
	cd build && make
	rm -rf ./examples/*.bc
	$(CLANG) -g -c -emit-llvm -o ${INPUT}.bc ${INPUT}.c
	$(OPT) ${PASSES} -o ${INPUT}.ready.bc ${INPUT}.bc
	$(LLVM_DIS) -o ${INPUT}.ll ${INPUT}.ready.bc
	$(OPT) -load ${PASS_SO_FILE} -${PASS_NAME} < ${INPUT}.ready.bc > /dev/null

.PHONY configure:
configure:
	cd build && cmake -DCMAKE_PREFIX_PATH=/home/oren/GIT/llvm-3.8.0/build ..

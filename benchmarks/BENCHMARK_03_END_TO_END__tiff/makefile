###############
# DIRECTORIES #
###############
KLEE_ROOT_DIR  = /home/oren/GIT/klee/str.klee
KLEE_SRC_DIR   = ${KLEE_ROOT_DIR}/klee
KLEE_BUILD_DIR = ${KLEE_ROOT_DIR}/build

################
# PROGRAM NAME #
################
PROGRAM_PATH=build/tools
PROGRAM_NAME=tiffsplit

#########
# FILES #
#########
KLEE = ${KLEE_BUILD_DIR}/bin/klee
OPT := opt

##################
# DEFAULT TARGET #
##################
.PHONY: compile_and_run
compile_and_run:
	@clear
	@setterm -term linux -fore blue
	@echo "********************************************"
	@echo "*                                          *"
	@echo "* [0] Copy from my source files to package *"
	@echo "*                                          *"
	@echo "********************************************"
	@setterm -term linux -fore white
	cp mySourceFiles/tiffsplit.c tiff-3.8.2/tools
	@setterm -term linux -fore blue
	@echo "*********************"
	@echo "*                   *"
	@echo "* [1] Bulid package *"
	@echo "*                   *"
	@echo "*********************"
	@setterm -term linux -fore white
	cd build && (LLVM_COMPILER=clang make)	
	@setterm -term linux -fore blue
	@echo "**********************************"
	@echo "*                                *"
	@echo "* [2] extract ${PROGRAM_NAME}.bc *"
	@echo "*                                *"
	@echo "**********************************"
	@setterm -term linux -fore white
	extract-bc ${PROGRAM_PATH}/${PROGRAM_NAME}
	@setterm -term linux -fore blue
	@echo "*******************************************"
	@echo "*                                         *"
	@echo "* [3] Remove debug info from bitcode file *"
	@echo "*                                         *"
	@echo "*******************************************"
	@setterm -term linux -fore white
	opt -strip-debug -o       \
	${PROGRAM_PATH}/${PROGRAM_NAME}_no_dbg.bc \
	${PROGRAM_PATH}/${PROGRAM_NAME}.bc
	@setterm -term linux -fore blue
	@echo "************************************************"
	@echo "*                                              *"
	@echo "* [4] Add names to insructions in bitcode file *"
	@echo "*                                              *"
	@echo "************************************************"
	@setterm -term linux -fore white
	opt -instnamer -o                                    \
	${PROGRAM_PATH}/${PROGRAM_NAME}_with_names.bc \
	${PROGRAM_PATH}/${PROGRAM_NAME}.bc
	#${PROGRAM_PATH}/${PROGRAM_NAME}_no_dbg.bc
	@setterm -term linux -fore blue
	@echo "*********************************************"
	@echo "*                                           *"
	@echo "* [5] Run KLEE with its BAZILLION flags ... *"
	@echo "*                                           *"
	@echo "*********************************************"
	@setterm -term linux -fore white
	#--posix-runtime                                \
	#-constants-as-ABs                              \
	#-use-query-log=all:kquery                      \
	#-use-query-log=solver:smt2                     \
	# gdb -x ./myGdbScripts/gdbCommands.txt --args  \
	${KLEE}                                         \
	--posix-runtime                                 \
	-solver-backend=z3                              \
	-use-independent-solver=0                       \
	-use-cex-cache=0                                \
	-use-query-log=solver:kquery                    \
	-debug-z3-dump-queries=Z3queries.txt            \
	${PROGRAM_PATH}/${PROGRAM_NAME}_with_names.bc   \
	-sym-args 4 4 1050
	@setterm -term linux -fore blue
	@echo "******************************************"
	@echo "*                                        *"
	@echo "* [6] Make a human readable bitcode file *"
	@echo "*                                        *"
	@echo "******************************************"
	@setterm -term linux -fore white
	llvm-dis klee-last/final.bc
.PHONY: build_everything_from_scratch
build_everything_from_scratch:
	@clear
	@setterm -term linux -fore blue
	@echo "*************************************"
	@echo "*                                   *"
	@echo "* Build everything from scratch ... *"
	@echo "*                                   *"
	@echo "*************************************"
	@setterm -term linux -fore white
	./myBuildingScripts/build-step0-libtiff

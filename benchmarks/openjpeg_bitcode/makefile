########
# KLEE #
########
KLEE=/home/oren/GIT/klee/vanilla.klee/build/bin/klee

################
# PROGRAM NAME #
################
PROGRAM_PATH=build/bin
PROGRAM_NAME=opj_mj2_extract

##################
# DEFAULT TARGET #
##################
.PHONY: compile_and_run
compile_and_run:
	@clear
	@setterm -term linux -fore blue
	@echo "*********************************************"
	@echo "*                                           *"
	@echo "* [0] Copy from my source files to openjpeg *"
	@echo "*                                           *"
	@echo "*********************************************"
	@setterm -term linux -fore white
	#cp mySourceFiles/dnstracer.c dnstracer-1.6
	@setterm -term linux -fore blue
	@echo "****************************"
	@echo "*                          *"
	@echo "* [1] Bulid openjpeg-2.3.0 *"
	@echo "*                          *"
	@echo "****************************"
	@setterm -term linux -fore white
	#cd build && (LLVM_COMPILER=clang make)	
	@setterm -term linux -fore blue
	@echo "**********************************"
	@echo "*                                *"
	@echo "* [2] extract ${PROGRAM_NAME}.bc *"
	@echo "*                                *"
	@echo "**********************************"
	@setterm -term linux -fore white
	#extract-bc ${PROGRAM_PATH}/${PROGRAM_NAME}
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
	${PROGRAM_PATH}/${PROGRAM_NAME}_no_dbg_with_names.bc \
	${PROGRAM_PATH}/${PROGRAM_NAME}_no_dbg.bc
	@setterm -term linux -fore blue
	@echo "*********************************************"
	@echo "*                                           *"
	@echo "* [5] Run KLEE with its BAZILLION flags ... *"
	@echo "*                                           *"
	@echo "*********************************************"
	@setterm -term linux -fore white
	#gdb -x ./myGdbScripts/gdbCommands.txt --args         \
	${KLEE}                                              \
	--libc=uclibc                                        \
	--posix-runtime                                      \
	-solver-backend=z3                                   \
	-output-module                                       \
	-output-source                                       \
	-use-cex-cache=0                                     \
	-use-independent-solver=0                            \
	-use-query-log=solver:smt2                           \
	-debug-z3-dump-queries=Z3queries.txt                 \
	-debug-z3-log-api-interaction=Z3LogAPI.txt           \
	${PROGRAM_PATH}/${PROGRAM_NAME}_no_dbg_with_names.bc \
	-help                                                \
	-sym-file 1 1000 A                                   \
	--sym-arg 100                                        
	@setterm -term linux -fore blue
	@echo "******************************************"
	@echo "*                                        *"
	@echo "* [6] Make a human readable bitcode file *"
	@echo "*                                        *"
	@echo "******************************************"
	@setterm -term linux -fore white
	llvm-dis klee-last/final.bc
.PHONY: print_all_c_stmts
print_all_c_stmts:
	@clear
	@setterm -term linux -fore blue
	@echo "**********************************************************"
	@echo "*                                                        *"
	@echo "* Print all c statements until critical point is reached *"
	@echo "*                                                        *"
	@echo "**********************************************************"
	@setterm -term linux -fore white
	gdb -x ./myGdbScripts/gdbCommandsSingleStep.txt --args \
	./build/cli/.libs/wavpack -y ./myInput/Input.wav
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
	./myBuildingScripts/build-step0-openjpeg

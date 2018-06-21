.PHONY all:
all:
	cd build && make
	~/GIT/llvm-3.8.0/build/bin/opt -load ./build/StaticAnalyzer/libStaticAnalyzer.so -daLoopKiller < ../Example_15_From_graphviz.bc > /dev/null

.PHONY configure:
configure:
	cd build && cmake -DCMAKE_PREFIX_PATH=/home/oren/GIT/llvm-3.8.0/build ..

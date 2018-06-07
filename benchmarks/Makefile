OPT:=opt
CLANG:=clang
#SED_SCRIPT:=../scripts/sedScript
SED_SCRIPT:=cp

BENCHMARKS:=$(wildcard *.c)

KLEE_INCLUDES:=$(shell realpath ../include)

.PHONY: all
all: $(BENCHMARKS:.c=.bc)

%.preproc.c: %.c
	$(SED_SCRIPT) $< $@
	

%.unopt.bc: %.preproc.c
	$(CLANG) -g -c -emit-llvm -I$(KLEE_INCLUDES) -o $@ $<

%.bc: %.unopt.bc
	$(OPT) -instnamer -o $@ $<


PATH:=$(shell realpath ../../build-klee/bin):$(PATH)
export PATH

ARGS:=

.PHONY: phony_explicit
phony_explicit:

#run target, for example to run strcmp_example.bc use: make strcmp_example.run
%.run: %.bc phony_explicit
	klee -exit-on-error-type=Assert -posix-runtime -solver-backend=z3 -libc=uclibc -no-output \
	-use-cex-cache=0 -use-independent-solver=1 -use-query-log=solver:smt2 \
	-debug-z3-dump-queries=/tmp/Z3queries.txt  -debug-z3-log-api-interaction=/tmp/Z3queries.log $< $(ARGS)

.PHONY: clean
clean: 
	rm -fr klee-* $(BENCHMARKS:.c=.bc)

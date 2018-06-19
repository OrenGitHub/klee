%.bc: %.c
	clang-3.4 -c -g -emit-llvm -I/data/klee/include -o $@ $<

%.run: %.bc
	klee -search=dfs -optimize -use-merge -exit-on-error-type=Assert -libc=uclibc -only-output-states-covering-new  $<

#	klee -search=dfs -allow-external-sym-calls -optimize -use-merge -exit-on-error-type=Assert -libc=uclibc -only-output-states-covering-new  $<
go: synth.run
ver: verify.run

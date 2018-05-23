
%: %.tar.gz
	tar -xf $<

%: %.tar.xz
	tar -xf $<


WGET_MODIFIED := $(wildcard wget_src/*)
wget-1.19/src/%: wget_src/%
	cp $< $@

wget-1.19/README: wget-1.19
	true

wget-1.19/Makefile: wget-1.19/README
	cd $(dir $<) ; CC=wllvm CFLAGS=-g ./configure --disable-opie --disable-digest --disable-ntlm --disable-debug --disable-largefile --disable-threads --disable-nls --disable-rpath --disable-ipv6 --disable-iri --disable-pcre --disable-xattr --without-libpsl --without-zlib --with-ssl=openssl

.PHONY: run-wget
wget-1.19/src/wget.bc: wget-1.19 wget-1.19/Makefile $(addprefix wget-1.19/src/, $(notdir $(WGET_MODIFIED)))
	make -C $< -j4
	extract-bc $</src/wget

KLEE := /data/str.klee/build-klee/bin/klee

run-wget: wget-1.19/src/wget.bc
	$(KLEE)  \
	-libc=uclibc \
	-posix-runtime \
	-use-cex-cache=0 \
	-solver-backend=z3 \
	$< http://fsdfs.com

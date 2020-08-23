BINDIR?=${DESTDIR}/usr/bin
LIBDIR?=${DESTDIR}/usr/lib

CFLAGS?=-Os -march=native -mtune=generic

all: kpow kall

kpow: src/kpow.c
	$(CC) $(CFLAGS) $< -o bin/kpow

kall: src/kall.c
	$(CC) $(CFLAGS) $< -o bin/kall

install: all
	cp -r bin/*    ${BINDIR}
	cp -r lib/ushi ${LIBDIR}

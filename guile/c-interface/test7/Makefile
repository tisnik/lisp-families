CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test7

all:	${EXENAME}

clean:
	rm -f test7.o
	rm -f ${EXENAME}

${EXENAME}:	test7.o
	${CC} $< ${LIBS} -o $@

test7.o:	test7.c
	${CC} -c $< ${CFLAGS}

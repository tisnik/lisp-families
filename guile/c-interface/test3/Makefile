CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test3

all:	${EXENAME}

clean:
	rm -f test3.o
	rm -f ${EXENAME}

${EXENAME}:	test3.o
	${CC} $< ${LIBS} -o $@

test3.o:	test3.c
	${CC} -c $< ${CFLAGS}

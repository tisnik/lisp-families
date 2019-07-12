CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test2

all:	${EXENAME}

clean:
	rm -f test2.o
	rm -f ${EXENAME}

${EXENAME}:	test2.o
	${CC} $< ${LIBS} -o $@

test2.o:	test2.c
	${CC} -c $< ${CFLAGS}

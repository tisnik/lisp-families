CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test8

all:	${EXENAME}

clean:
	rm -f test8.o
	rm -f ${EXENAME}

${EXENAME}:	test8.o
	${CC} $< ${LIBS} -o $@

test8.o:	test8.c
	${CC} -c $< ${CFLAGS}

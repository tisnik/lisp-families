CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test4

all:	${EXENAME}

clean:
	rm -f test4.o
	rm -f ${EXENAME}

${EXENAME}:	test4.o
	${CC} $< ${LIBS} -o $@

test4.o:	test4.c
	${CC} -c $< ${CFLAGS}

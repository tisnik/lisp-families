CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test5

all:	${EXENAME}

clean:
	rm -f test5.o
	rm -f ${EXENAME}

${EXENAME}:	test5.o
	${CC} $< ${LIBS} -o $@

test5.o:	test5.c
	${CC} -c $< ${CFLAGS}

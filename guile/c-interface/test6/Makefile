CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test6

all:	${EXENAME}

clean:
	rm -f test6.o
	rm -f ${EXENAME}

${EXENAME}:	test6.o
	${CC} $< ${LIBS} -o $@

test6.o:	test6.c
	${CC} -c $< ${CFLAGS}

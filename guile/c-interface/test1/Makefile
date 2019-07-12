CC=gcc

CFLAGS=-Wall -std=c99 -pedantic `pkg-config --cflags-only-I guile-2.0`

LIBS=`pkg-config --libs guile-2.0`

EXENAME=test1

all:	${EXENAME}

clean:
	rm -f test1.o
	rm -f ${EXENAME}

${EXENAME}:	test1.o
	${CC} $< ${LIBS} -o $@

test1.o:	test1.c
	${CC} -c $< ${CFLAGS}

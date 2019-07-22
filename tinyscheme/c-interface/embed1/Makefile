CC=gcc

CFLAGS=-Wall -std=c99 -pedantic -I.

LIBS=-L . -l tinyscheme

EXENAME=embed1

all:	${EXENAME}

run:
	LD_LIBRARY_PATH=. ./${EXENAME}

clean:
	rm -f embed1.o
	rm -f ${EXENAME}

${EXENAME}:	embed1.o
	${CC} $< ${LIBS} -o $@

embed1.o:	embed1.c
	${CC} -c $< ${CFLAGS}

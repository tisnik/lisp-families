CC=gcc

CFLAGS=-Wall -std=c99 -pedantic -I.

LIBS=-L . -l tinyscheme

EXENAME=embed2

all:	${EXENAME}

run:
	LD_LIBRARY_PATH=. ./${EXENAME}

clean:
	rm -f embed2.o
	rm -f ${EXENAME}

${EXENAME}:	embed2.o
	${CC} $< ${LIBS} -o $@

embed1.o:	embed2.c
	${CC} -c $< ${CFLAGS}

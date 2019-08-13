CC=gcc

CFLAGS=-Wall -std=c99 -pedantic -I.

LIBS=-L . -l tinyscheme

EXENAME=embed4

all:	${EXENAME}

run:
	LD_LIBRARY_PATH=. ./${EXENAME}

clean:
	rm -f embed4.o
	rm -f ${EXENAME}

${EXENAME}:	embed4.o
	${CC} $< ${LIBS} -o $@

embed1.o:	embed4.c
	${CC} -c $< ${CFLAGS}

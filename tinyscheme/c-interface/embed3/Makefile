CC=gcc

CFLAGS=-Wall -std=c99 -pedantic -I.

LIBS=-L . -l tinyscheme

EXENAME=embed3

all:	${EXENAME}

run:
	LD_LIBRARY_PATH=. ./${EXENAME}

clean:
	rm -f embed3.o
	rm -f ${EXENAME}

${EXENAME}:	embed3.o
	${CC} $< ${LIBS} -o $@

embed1.o:	embed3.c
	${CC} -c $< ${CFLAGS}

KAWA=./kawa
JAVA_DISASSEMBLER=javap

.PRECIOUS: %.class

all:	Add1.asm Add2.asm Add3.asm Add4.asm HelloWorld.asm HelloWorld2.scm \
	Factorial1.asm Factorial2.asm Factorial3.asm \
	Factorial4.asm Factorial5.asm Factorial6.asm

clean:
	rm -f *.class
	rm -f *.asm

%.asm:	%.class
	$(JAVA_DISASSEMBLER) -c $< > $@

%.class:	%.scm
	$(KAWA) -C $<

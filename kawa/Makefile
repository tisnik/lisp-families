KAWA=./kawa
JAVA_DISASSEMBLER=javap

.PRECIOUS: %.class

all:	Add1.asm Add2.asm Add3.asm Add4.asm HelloWorld.asm HelloWorld2.scm \
	Factorial1.asm Factorial2.asm Factorial3.asm \
	Factorial4.asm Factorial5.asm Factorial6.asm \
	Array1.asm Array2.asm Array3.asm Array4.asm \
	CreateArray1.asm CreateArray2.asm CreateArray3.asm

clean:
	rm -f *.class
	rm -f *.asm

%.asm:	%.class
	$(JAVA_DISASSEMBLER) -c $< > $@

%.class:	%.scm
	$(KAWA) -C $<

all: bin doc
bin: main.o
	gcc main.o -o is_armstrong_number -lm
main.o : main.c
	gcc -c main.c -o main.o
clean: clean-doc clean-obj clean-bin
	rm -f is_armstrong_number
clean-obj:
	rm -f *.o
clean-doc:
	rm -rf html latex
clean-bin:
	rm -f is_armstrong_number
doc: clean-doc
	doxygen
cppcheck:
	cppcheck --enable=all --inconclusive --xml --xml-version=2 *.c 2> cppcheck.xml

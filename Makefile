all: bin doc
bin: objects
	gcc main.o stack.o armstrong.o -Wall -o is_armstrong_number -lm
main.o : main.c
	gcc -c main.c -pedantic -Wall -o main.o
stack.o : stack.c
	gcc -c stack.c -pedantic -Wall -o stack.o
armstrong.o:
	gcc -c armstrong.c -pedantic -Wall -o armstrong.o
objects: main.o stack.o armstrong.o
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
	cppcheck --enable=all --inconclusive *.c
cppcheck-xml:
	cppcheck --enable=all --inconclusive --xml --xml-version=2 *.c 2> cppcheck.xml
test: armstrong.o stack.o
	gcc test/is_armstrong_number.c armstrong.o stack.o -lm -lcmocka -o test/is_armstrong_number
test-xml: armstrong.o stack.o
	gcc test/is_armstrong_number.c armstrong.o stack.o -lm -lcmocka -o test/is_armstrong_number 
	CMOCKA_XML_FILE=test/%g.xml CMOCKA_MESSAGE_OUTPUT=xml ./test/is_armstrong_number || true


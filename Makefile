all: bin doc
bin: main.o
	gcc obj/main.o -o bin/is_armstrong_number -lm
main.o : main.c
	gcc -c main.c -o obj/main.o
clean: clean-doc clean-obj clean-bin
	rm -f bin/is_armstrong_number
clean-obj:
	rm -f obj/*
clean-doc:
	rm -rf html latex
clean-bin:
	rm -rf html latex
doc: clean-doc
	doxygen

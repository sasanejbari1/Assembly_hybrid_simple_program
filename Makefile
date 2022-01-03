run:	build
	@echo "Running program!"
	./my-program


#
build:
	yasm -f elf64 -gdwarf2 my-assembly-main.asm -o my-assembly-main.o
	gcc -Wall -m64 -gdwarf-2 -c my-c-stuff.c -o my-c-stuff.o
	gcc -Wall -m64 -gdwarf-2 -no-pie *.o -o my-program
	@echo "Done"


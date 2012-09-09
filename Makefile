CC=gcc
CFLAGS= -Wall -g -I.
DEPS = elf-parser.h
OBJ = disasm.o elf-parser.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

elfparser: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

clean:
	rm -rf *.o elfparser


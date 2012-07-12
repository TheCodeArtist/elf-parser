CC=gcc
CFLAGS=-c -Wall

all: elf-parser

elf-parser: elf-parser.o
	$(CC) elf-parser.o -o elf-parser

clean:
	rm -rf *.o elf-parser


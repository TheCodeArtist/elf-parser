#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <stdbool.h>

#include <elf.h>

#define DEBUG 1

#define debug(...) \
            do { if (DEBUG) printf("<debug>:"__VA_ARGS__); } while (0)

void disassemble(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr* sh_tbl);
void disassemble64(int32_t fd, Elf64_Ehdr eh, Elf64_Shdr* sh_tbl);
void read_elf_header64(int32_t fd, Elf64_Ehdr *elf_header);
bool is_ELF64(Elf64_Ehdr eh);
void print_elf_header64(Elf64_Ehdr elf_header);
void read_section_header_table64(int32_t fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
char * read_section64(int32_t fd, Elf64_Shdr sh);
void print_section_headers64(int32_t fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
void print_symbol_table64(int32_t fd,Elf64_Ehdr eh,Elf64_Shdr sh_table[],uint32_t symbol_table);
void print_symbols64(int32_t fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
void save_text_section64(int32_t fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
void read_elf_header(int32_t fd, Elf32_Ehdr *elf_header);
bool is_ELF(Elf32_Ehdr eh);
void print_elf_header(Elf32_Ehdr elf_header);
void read_section_header_table(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
char * read_section(int32_t fd, Elf32_Shdr sh);
void print_section_headers(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
void print_symbol_table(int32_t fd,Elf32_Ehdr eh,Elf32_Shdr sh_table[],uint32_t symbol_table);
void print_symbols(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
void save_text_section(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
bool is64Bit(Elf32_Ehdr eh);


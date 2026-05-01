#ifndef ELF_PARSER_H
#define ELF_PARSER_H

#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <stdbool.h>
#include <stdint.h>
#include <inttypes.h> /* for PRIx64 and PRIu64 */

#include <elf.h>

#define DEBUG 1

#define debug(...) \
            do { if (DEBUG) printf("<debug>:"__VA_ARGS__); } while (0)

#ifdef __cplusplus
extern "C" {
#endif

void disassemble(int fd, Elf32_Ehdr eh, Elf32_Shdr* sh_tbl);
void disassemble64(int fd, Elf64_Ehdr eh, Elf64_Shdr* sh_tbl);
void read_elf_header64(int fd, Elf64_Ehdr *elf_header);
bool is_ELF64(Elf64_Ehdr eh);
void print_elf_header64(Elf64_Ehdr elf_header);
void read_section_header_table64(int fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
char * read_section64(int fd, Elf64_Shdr sh);
void print_section_headers64(int fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
void print_symbol_table64(int fd,Elf64_Ehdr eh,Elf64_Shdr sh_table[],uint32_t symbol_table);
void print_symbols64(int fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
void save_text_section64(int fd, Elf64_Ehdr eh, Elf64_Shdr sh_table[]);
void read_elf_header(int fd, Elf32_Ehdr *elf_header);
bool is_ELF(Elf32_Ehdr eh);
void print_elf_header(Elf32_Ehdr elf_header);
void read_section_header_table(int fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
char * read_section(int fd, Elf32_Shdr sh);
void print_section_headers(int fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
void print_symbol_table(int fd,Elf32_Ehdr eh,Elf32_Shdr sh_table[],uint32_t symbol_table);
void print_symbols(int fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
void save_text_section(int fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[]);
bool is64Bit(Elf32_Ehdr eh);

#ifdef __cplusplus
}
#endif

#endif /* ELF_PARSER_H */

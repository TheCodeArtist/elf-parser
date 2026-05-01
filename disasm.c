#include <elf-parser.h>

/* DEFINE_DISASSEMBLE(BITS, SUFFIX) emits from a single template,
 * both disassemble (32-bit) and disassemble64 (64-bit).
 *
 * See elf-parser.c for the same pattern applied to the rest of the parser.
 */

#define DEFINE_DISASSEMBLE(BITS, SUFFIX)                                       \
                                                                               \
void disassemble##SUFFIX(int fd, Elf##BITS##_Ehdr eh,                          \
		Elf##BITS##_Shdr *sh_table)                                            \
{                                                                              \
	int32_t i;                                                                 \
	char *sh_str;	/* section-header string-table is also a section. */       \
	char *buf;	/* buffer to hold contents of the .text section */             \
                                                                               \
	debug("eh.e_shstrndx = 0x%x\n", eh.e_shstrndx);                            \
	sh_str = read_section##SUFFIX(fd, sh_table[eh.e_shstrndx]);                \
                                                                               \
	for (i = 0; i < eh.e_shnum; i++) {                                         \
		if (!strcmp(".text", (sh_str + sh_table[i].sh_name))) {                \
			printf("Found section\t\".text\"\n");                              \
			printf("at offset\t0x%08" PRIx64 "\n",                             \
					(uint64_t)sh_table[i].sh_offset);                          \
			printf("of size\t\t0x%08" PRIx64 "\n",                             \
					(uint64_t)sh_table[i].sh_size);                            \
			break;                                                             \
		}                                                                      \
	}                                                                          \
                                                                               \
	assert(lseek(fd, sh_table[i].sh_offset, SEEK_SET)                          \
			== sh_table[i].sh_offset);                                         \
	buf = malloc(sh_table[i].sh_size);                                         \
	if (!buf) {                                                                \
		printf("Failed to allocate %" PRIu64 "bytes!!\n",                      \
				(uint64_t)sh_table[i].sh_size);                                \
		printf("Failed to disassemble!!\n");                                   \
		return;                                                                \
	}                                                                          \
	assert(read(fd, buf, sh_table[i].sh_size) == sh_table[i].sh_size);         \
                                                                               \
	/* buf now contains the instructions (4 bytes each on ARM/AArch64). */     \
}

DEFINE_DISASSEMBLE(32, )   /* Actually define the 32-bit disassemble function */
DEFINE_DISASSEMBLE(64, 64) /* Actually define the 64-bit disassemble function */

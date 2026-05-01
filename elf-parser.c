#include <elf-parser.h>

/* ----------------------------------------------------------------------
 * Bit-width-independent helpers
 *
 * Operate on values whose representation is identical in 32-bit and
 * 64-bit ELF files (e_ident bytes, e_type, e_machine, e_flags)
 * so they can be shared by both parser variants.
 * ---------------------------------------------------------------------- */

static bool elf_check_magic(const unsigned char *e_ident)
{
	/* ELF magic bytes are 0x7f,'E','L','F' (octal escape for 0x7f) */
	if (!strncmp((const char *)e_ident, "\177ELF", 4)) {
		printf("ELFMAGIC \t= ELF\n");
		return 1;
	}
	printf("ELFMAGIC mismatch!\n");
	return 0;
}

static void print_storage_class(unsigned char ei_class)
{
	printf("Storage class\t= ");
	switch (ei_class) {
	case ELFCLASS32: printf("32-bit objects\n"); break;
	case ELFCLASS64: printf("64-bit objects\n"); break;
	default:         printf("INVALID CLASS\n");  break;
	}
}

static void print_data_format(unsigned char ei_data)
{
	printf("Data format\t= ");
	switch (ei_data) {
	case ELFDATA2LSB: printf("2's complement, little endian\n"); break;
	case ELFDATA2MSB: printf("2's complement, big endian\n");    break;
	default:          printf("INVALID Format\n");                break;
	}
}

static void print_os_abi(unsigned char ei_osabi)
{
	printf("OS ABI\t\t= ");
	switch (ei_osabi) {
	case ELFOSABI_SYSV:       printf("UNIX System V ABI\n");         break;
	case ELFOSABI_HPUX:       printf("HP-UX\n");                     break;
	case ELFOSABI_NETBSD:     printf("NetBSD\n");                    break;
	case ELFOSABI_LINUX:      printf("Linux\n");                     break;
	case ELFOSABI_SOLARIS:    printf("Sun Solaris\n");               break;
	case ELFOSABI_AIX:        printf("IBM AIX\n");                   break;
	case ELFOSABI_IRIX:       printf("SGI Irix\n");                  break;
	case ELFOSABI_FREEBSD:    printf("FreeBSD\n");                   break;
	case ELFOSABI_TRU64:      printf("Compaq TRU64 UNIX\n");         break;
	case ELFOSABI_MODESTO:    printf("Novell Modesto\n");            break;
	case ELFOSABI_OPENBSD:    printf("OpenBSD\n");                   break;
	case ELFOSABI_ARM_AEABI:  printf("ARM EABI\n");                  break;
	case ELFOSABI_ARM:        printf("ARM\n");                       break;
	case ELFOSABI_STANDALONE: printf("Standalone (embedded) app\n"); break;
	default:                  printf("Unknown (0x%x)\n", ei_osabi);  break;
	}
}

static void print_file_type(uint16_t e_type)
{
	printf("Filetype \t= ");
	switch (e_type) {
	case ET_NONE: printf("N/A (0x0)\n");              break;
	case ET_REL:  printf("Relocatable\n");            break;
	case ET_EXEC: printf("Executable\n");             break;
	case ET_DYN:  printf("Shared Object\n");          break;
	default:      printf("Unknown (0x%x)\n", e_type); break;
	}
}

static void print_machine(uint16_t e_machine)
{
	printf("Machine\t\t= ");
	switch (e_machine) {
	case EM_NONE:    printf("None (0x0)\n");                   break;
	case EM_386:     printf("INTEL x86 (0x%x)\n", EM_386);     break;
	case EM_X86_64:  printf("AMD x86_64 (0x%x)\n", EM_X86_64); break;
	case EM_ARM:     printf("ARM (0x%x)\n", EM_ARM);           break;
	case EM_AARCH64: printf("AARCH64 (0x%x)\n", EM_AARCH64);   break;
	default:         printf(" 0x%x\n", e_machine);             break;
	}
}

static void print_arm_flags(uint32_t ef)
{
	/* ELF file flags are machine-specific. INTEL implements none;
	 * ARM implements the bits handled below.
	 */
	printf("\t\t  ");
	if (ef & EF_ARM_RELEXEC)        printf(",RELEXEC ");
	if (ef & EF_ARM_HASENTRY)       printf(",HASENTRY ");
	if (ef & EF_ARM_INTERWORK)      printf(",INTERWORK ");
	if (ef & EF_ARM_APCS_26)        printf(",APCS_26 ");
	if (ef & EF_ARM_APCS_FLOAT)     printf(",APCS_FLOAT ");
	if (ef & EF_ARM_PIC)            printf(",PIC ");
	if (ef & EF_ARM_ALIGN8)         printf(",ALIGN8 ");
	if (ef & EF_ARM_NEW_ABI)        printf(",NEW_ABI ");
	if (ef & EF_ARM_OLD_ABI)        printf(",OLD_ABI ");
	if (ef & EF_ARM_SOFT_FLOAT)     printf(",SOFT_FLOAT ");
	if (ef & EF_ARM_VFP_FLOAT)      printf(",VFP_FLOAT ");
	if (ef & EF_ARM_MAVERICK_FLOAT) printf(",MAVERICK_FLOAT ");
	printf("\n");

	/* MSB of flags contains ARM EABI version */
	printf("ARM EABI\t= Version %d\n", (ef & EF_ARM_EABIMASK) >> 24);
}

/* Print the parts of an ELF header that don't depend on bit-width.
 * Address-typed fields (entry, phoff, shoff) are widened to uint64_t so
 * the 32-bit and 64-bit callers can share this code.
 */
static void print_elf_header_common(const unsigned char *e_ident,
		uint16_t e_type, uint16_t e_machine,
		uint64_t e_entry, uint16_t e_ehsize,
		uint64_t e_phoff, uint16_t e_phnum, uint16_t e_phentsize,
		uint64_t e_shoff, uint16_t e_shnum, uint16_t e_shentsize,
		uint16_t e_shstrndx, uint32_t e_flags)
{
	print_storage_class(e_ident[EI_CLASS]);
	print_data_format(e_ident[EI_DATA]);
	print_os_abi(e_ident[EI_OSABI]);
	print_file_type(e_type);
	print_machine(e_machine);

	printf("Entry point\t= 0x%08" PRIx64 "\n", e_entry);
	printf("ELF header size\t= 0x%08x\n", e_ehsize);

	printf("\nProgram Header\t= ");
	printf("0x%08" PRIx64 "\n", e_phoff);
	printf("\t\t  %d entries\n", e_phnum);
	printf("\t\t  %d bytes\n", e_phentsize);

	printf("\nSection Header\t= ");
	printf("0x%08" PRIx64 "\n", e_shoff);
	printf("\t\t  %d entries\n", e_shnum);
	printf("\t\t  %d bytes\n", e_shentsize);
	printf("\t\t  0x%08x (string table offset)\n", e_shstrndx);

	printf("\nFile flags \t= 0x%08x\n", e_flags);
	print_arm_flags(e_flags);
	printf("\n");	/* End of ELF header */
}

/* ----------------------------------------------------------------------
 * Generated 32-bit and 64-bit variants
 *
 * Both variants share the same body; DEFINE_ELF_PARSER is expanded once
 * per bit-width to emit both function families.
 *
 *   DEFINE_ELF_PARSER(BITS, SUFFIX)
 *     BITS:   32 / 64       picks Elf32_*  or Elf64_*  types
 *     SUFFIX: <empty> / 64  appended to function names so the public
 *                            API stays the same: read_elf_header /
 *                            read_elf_header64, etc.
 * ---------------------------------------------------------------------- */

#define DEFINE_ELF_PARSER(BITS, SUFFIX)                                        \
                                                                               \
void read_elf_header##SUFFIX(int fd, Elf##BITS##_Ehdr *elf_header)             \
{                                                                              \
	assert(elf_header != NULL);                                                \
	assert(lseek(fd, (off_t)0, SEEK_SET) == (off_t)0);                         \
	assert(read(fd, (void *)elf_header, sizeof(Elf##BITS##_Ehdr))              \
			== sizeof(Elf##BITS##_Ehdr));                                      \
}                                                                              \
                                                                               \
bool is_ELF##SUFFIX(Elf##BITS##_Ehdr eh)                                       \
{                                                                              \
	return elf_check_magic(eh.e_ident);                                        \
}                                                                              \
                                                                               \
void print_elf_header##SUFFIX(Elf##BITS##_Ehdr eh)                             \
{                                                                              \
	print_elf_header_common(eh.e_ident, eh.e_type, eh.e_machine,               \
			(uint64_t)eh.e_entry, eh.e_ehsize,                                 \
			(uint64_t)eh.e_phoff, eh.e_phnum, eh.e_phentsize,                  \
			(uint64_t)eh.e_shoff, eh.e_shnum, eh.e_shentsize,                  \
			eh.e_shstrndx, eh.e_flags);                                        \
}                                                                              \
                                                                               \
void read_section_header_table##SUFFIX(int fd, Elf##BITS##_Ehdr eh,            \
		Elf##BITS##_Shdr sh_table[])                                           \
{                                                                              \
	uint32_t i;                                                                \
                                                                               \
	assert(lseek(fd, (off_t)eh.e_shoff, SEEK_SET) == (off_t)eh.e_shoff);       \
                                                                               \
	for (i = 0; i < eh.e_shnum; i++) {                                         \
		assert(read(fd, (void *)&sh_table[i], eh.e_shentsize)                  \
				== eh.e_shentsize);                                            \
	}                                                                          \
}                                                                              \
                                                                               \
char *read_section##SUFFIX(int fd, Elf##BITS##_Shdr sh)                        \
{                                                                              \
	char *buff = malloc(sh.sh_size);                                           \
	if (!buff) {                                                               \
		printf("%s:Failed to allocate %" PRIu64 "bytes\n",                     \
				__func__, (uint64_t)sh.sh_size);                               \
	}                                                                          \
                                                                               \
	assert(buff != NULL);                                                      \
	assert(lseek(fd, (off_t)sh.sh_offset, SEEK_SET) == (off_t)sh.sh_offset);   \
	assert(read(fd, (void *)buff, sh.sh_size) == sh.sh_size);                  \
                                                                               \
	return buff;                                                               \
}                                                                              \
                                                                               \
void print_section_headers##SUFFIX(int fd, Elf##BITS##_Ehdr eh,                \
		Elf##BITS##_Shdr sh_table[])                                           \
{                                                                              \
	uint32_t i;                                                                \
	char *sh_str;	/* section-header string-table is also a section. */       \
                                                                               \
	debug("eh.e_shstrndx = 0x%x\n", eh.e_shstrndx);                            \
	sh_str = read_section##SUFFIX(fd, sh_table[eh.e_shstrndx]);                \
                                                                               \
	printf("========================================");                        \
	printf("========================================\n");                      \
	printf(" idx offset     load-addr  size       algn"                        \
			" flags      type       section\n");                               \
	printf("========================================");                        \
	printf("========================================\n");                      \
                                                                               \
	for (i = 0; i < eh.e_shnum; i++) {                                         \
		printf(" %03d ", i);                                                   \
		printf("0x%08" PRIx64 " ", (uint64_t)sh_table[i].sh_offset);           \
		printf("0x%08" PRIx64 " ", (uint64_t)sh_table[i].sh_addr);             \
		printf("0x%08" PRIx64 " ", (uint64_t)sh_table[i].sh_size);             \
		printf("%4" PRIu64 " ", (uint64_t)sh_table[i].sh_addralign);           \
		printf("0x%08" PRIx64 " ", (uint64_t)sh_table[i].sh_flags);            \
		printf("0x%08x ", sh_table[i].sh_type);                                \
		printf("%s\t", (sh_str + sh_table[i].sh_name));                        \
		printf("\n");                                                          \
	}                                                                          \
	printf("========================================");                        \
	printf("========================================\n");                      \
	printf("\n");                                                              \
}                                                                              \
                                                                               \
void print_symbol_table##SUFFIX(int fd, Elf##BITS##_Ehdr eh,                   \
		Elf##BITS##_Shdr sh_table[], uint32_t symbol_table)                    \
{                                                                              \
	char *str_tbl;                                                             \
	Elf##BITS##_Sym *sym_tbl;                                                  \
	uint32_t i, symbol_count;                                                  \
	uint32_t str_tbl_ndx;                                                      \
                                                                               \
	(void)eh;                                                                  \
                                                                               \
	sym_tbl = (Elf##BITS##_Sym *)read_section##SUFFIX(fd,                      \
			sh_table[symbol_table]);                                           \
                                                                               \
	/* Linked string-table: section holding the names of symbols in this       \
	 * section.                                                                \
	 */                                                                        \
	str_tbl_ndx = sh_table[symbol_table].sh_link;                              \
	debug("str_table_ndx = 0x%x\n", str_tbl_ndx);                              \
	str_tbl = read_section##SUFFIX(fd, sh_table[str_tbl_ndx]);                 \
                                                                               \
	symbol_count = (sh_table[symbol_table].sh_size /                           \
			sizeof(Elf##BITS##_Sym));                                          \
	printf("%d symbols\n", symbol_count);                                      \
                                                                               \
	for (i = 0; i < symbol_count; i++) {                                       \
		printf("0x%08" PRIx64 " ", (uint64_t)sym_tbl[i].st_value);             \
		printf("0x%02x ", ELF32_ST_BIND(sym_tbl[i].st_info));                  \
		printf("0x%02x ", ELF32_ST_TYPE(sym_tbl[i].st_info));                  \
		printf("%s\n", (str_tbl + sym_tbl[i].st_name));                        \
	}                                                                          \
}                                                                              \
                                                                               \
void print_symbols##SUFFIX(int fd, Elf##BITS##_Ehdr eh,                        \
		Elf##BITS##_Shdr sh_table[])                                           \
{                                                                              \
	uint32_t i;                                                                \
                                                                               \
	for (i = 0; i < eh.e_shnum; i++) {                                         \
		if ((sh_table[i].sh_type == SHT_SYMTAB)                                \
				|| (sh_table[i].sh_type == SHT_DYNSYM)) {                      \
			printf("\n[Section %03d]", i);                                     \
			print_symbol_table##SUFFIX(fd, eh, sh_table, i);                   \
		}                                                                      \
	}                                                                          \
}                                                                              \
                                                                               \
void save_text_section##SUFFIX(int fd, Elf##BITS##_Ehdr eh,                    \
		Elf##BITS##_Shdr sh_table[])                                           \
{                                                                              \
	uint32_t i;                                                                \
	int fd2;	/* to write text.S in current directory */                     \
	char *sh_str;	/* section-header string-table is also a section. */       \
	char *buf;	/* buffer to hold contents of the .text section */             \
	char *pwd;                                                                 \
                                                                               \
	pwd = getcwd(NULL, (size_t)NULL);                                          \
	printf("%s\n", pwd);                                                       \
	pwd = realloc(pwd, strlen(pwd) + 8);                                       \
	strcat(pwd, "/text.S");                                                    \
	printf("%s\n", pwd);                                                       \
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
		goto EXIT;                                                             \
	}                                                                          \
	assert(read(fd, buf, sh_table[i].sh_size) == sh_table[i].sh_size);         \
	fd2 = open(pwd, O_RDWR | O_SYNC | O_CREAT, 0644);                          \
	write(fd2, buf, sh_table[i].sh_size);                                      \
	fsync(fd2);                                                                \
                                                                               \
EXIT:                                                                          \
	close(fd2);                                                                \
	free(pwd);                                                                 \
}

DEFINE_ELF_PARSER(32, )
DEFINE_ELF_PARSER(64, 64)

bool is64Bit(Elf32_Ehdr eh)
{
	return eh.e_ident[EI_CLASS] == ELFCLASS64;
}

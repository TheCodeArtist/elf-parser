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
            do { if (DEBUG) printf(__VA_ARGS__); } while (0)

void read_elf_header(int32_t fd, Elf32_Ehdr *elf_header)
{
	assert(elf_header != NULL);
	assert(lseek(fd, (off_t)0, SEEK_SET) == (off_t)0);
	assert(read(fd, (void *)elf_header, sizeof(Elf32_Ehdr)) == sizeof(Elf32_Ehdr));
}

int32_t is_ELF(Elf32_Ehdr elf_header, bool verbose)
{

	/* ELF magic bytes are 0x7f,'E','L','F'
	 * Using  octal escape sequence to represent 0x7f
	 */
	if(!strncmp((char*)elf_header.e_ident, "\177ELF", 4)) {
		printf("ELFMAGIC \t= ELF\n");
	} else {
		printf("ELFMAGIC mismatch!\n");
		/* Not ELF file */
		return(0);
	}

	/* At this point we have established that the file IS indeed in ELF.
	 * The rest of the fn simply logs info obtained from the ELF header.
	 */
	if(!verbose)
		return(1);


	/* Storage capacity class */
	printf("Storage class\t= ");
	switch(elf_header.e_ident[EI_CLASS])
	{
		case ELFCLASS32:
			printf("32-bit objects\n");
			break;

		case ELFCLASS64:
			printf("64-bit objects\n");
			break;

		default:
			printf("INVALID CLASS\n");
			break;
	}

	/* Data Format */
	printf("Data format\t= ");
	switch(elf_header.e_ident[EI_DATA])
	{
		case ELFDATA2LSB:
			printf("2's complement, little endian\n");
			break;

		case ELFDATA2MSB:
			printf("2's complement, big endian\n");
			break;

		default:
			printf("INVALID Format\n");
			break;
	}

	/* OS ABI */
	printf("OS ABI\t\t= ");
	switch(elf_header.e_ident[EI_OSABI])
	{
		case ELFOSABI_SYSV:
			printf("UNIX System V ABI\n");
			break;

		case ELFOSABI_HPUX:
			printf("HP-UX\n");
			break;

		case ELFOSABI_NETBSD:
			printf("NetBSD\n");
			break;

		case ELFOSABI_LINUX:
			printf("Linux\n");
			break;

		case ELFOSABI_SOLARIS:
			printf("Sun Solaris\n");
			break;

		case ELFOSABI_AIX:
			printf("IBM AIX\n");
			break;

		case ELFOSABI_IRIX:
			printf("SGI Irix\n");
			break;

		case ELFOSABI_FREEBSD:
			printf("FreeBSD\n");
			break;

		case ELFOSABI_TRU64:
			printf("Compaq TRU64 UNIX\n");
			break;

		case ELFOSABI_MODESTO:
			printf("Novell Modesto\n");
			break;

		case ELFOSABI_OPENBSD:
			printf("OpenBSD\n");
			break;

		case ELFOSABI_ARM_AEABI:
			printf("ARM EABI\n");
			break;

		case ELFOSABI_ARM:
			printf("ARM\n");
			break;

		case ELFOSABI_STANDALONE:
			printf("Standalone (embedded) app\n");
			break;

		default:
			printf("Unknown (0x%x)\n", elf_header.e_ident[EI_OSABI]);
			break;
	}

	/* ELF filetype */
	printf("Filetype \t= ");
	switch(elf_header.e_type)
	{
		case ET_NONE:
			printf("N/A (0x0)\n");
			break;

		case ET_REL:
			printf("Relocatable\n");
			break;

		case ET_EXEC:
			printf("Executable\n");
			break;

		case ET_DYN:
			printf("Shared Object\n");
			break;
		default:
			printf("Unknown (0x%x)\n", elf_header.e_type);
			break;
	}

	/* ELF Machine-id */
	printf("Machine\t\t= ");
	switch(elf_header.e_machine)
	{
		case EM_NONE:
			printf("None (0x0)\n");
			break;

		case EM_386:
			printf("INTEL x86 (0x%x)\n", EM_386);
			break;

		case EM_ARM:
			printf("ARM (0x%x)\n", EM_ARM);
			break;
		default:
			printf("Machine\t= 0x%x\n", elf_header.e_machine);
			break;
	}

	/* Entry point */
	printf("Entry point\t= 0x%08x\n", elf_header.e_entry);

	/* ELF header size in bytes */
	printf("ELF header size\t= 0x%08x\n", elf_header.e_ehsize);

	/* Program Header */
	printf("\nProgram Header\t= ");
	printf("0x%08x\n", elf_header.e_phoff);		/* start */
	printf("\t\t  %d entries\n", elf_header.e_phnum);	/* num entry */
	printf("\t\t  %d bytes\n", elf_header.e_phentsize);	/* size/entry */

	/* Section header starts at */
	printf("\nSection Header\t= ");
	printf("0x%08x\n", elf_header.e_shoff);		/* start */
	printf("\t\t  %d entries\n", elf_header.e_shnum);	/* num entry */
	printf("\t\t  %d bytes\n", elf_header.e_shentsize);	/* size/entry */
	printf("\t\t  0x%08x (string table offset)\n", elf_header.e_shstrndx);

	/* File flags (Machine specific)*/
	printf("\nFile flags \t= 0x%08x\n", elf_header.e_flags);

	/* ELF file flags are machine specific.
	 * INTEL implements NO flags.
	 * ARM implements a few.
	 * Add support below to parse ELF file flags on ARM
	 */
	int32_t ef = elf_header.e_flags;
	printf("\t\t  ");

	if(ef & EF_ARM_RELEXEC)
		printf(",RELEXEC ");

	if(ef & EF_ARM_HASENTRY)
		printf(",HASENTRY ");

	if(ef & EF_ARM_INTERWORK)
		printf(",INTERWORK ");

	if(ef & EF_ARM_APCS_26)
		printf(",APCS_26 ");

	if(ef & EF_ARM_APCS_FLOAT)
		printf(",APCS_FLOAT ");

	if(ef & EF_ARM_PIC)
		printf(",PIC ");

	if(ef & EF_ARM_ALIGN8)
		printf(",ALIGN8 ");

	if(ef & EF_ARM_NEW_ABI)
		printf(",NEW_ABI ");

	if(ef & EF_ARM_OLD_ABI)
		printf(",OLD_ABI ");

	if(ef & EF_ARM_SOFT_FLOAT)
		printf(",SOFT_FLOAT ");

	if(ef & EF_ARM_VFP_FLOAT)
		printf(",VFP_FLOAT ");

	if(ef & EF_ARM_MAVERICK_FLOAT)
		printf(",MAVERICK_FLOAT ");

	printf("\n");

	/* MSB of flags conatins ARM EABI version */
	printf("ARM EABI\t= Version %d\n", (ef & EF_ARM_EABIMASK)>>24);

	/* File header contains proper ELF info */
	return(1);
}

void read_section_header(int fd, unsigned int sh_offset, Elf32_Shdr *sh)
{
        assert(sh != NULL);
        assert(lseek(fd, (off_t)sh_offset, SEEK_SET) == (off_t)sh_offset);
        assert(read(fd, (void *)sh, sizeof(Elf32_Shdr)) == sizeof(Elf32_Shdr));
}

/* Main entry point of elf-parser */
int32_t main(int32_t argc, char *argv[])
{

	int32_t fd;
	Elf32_Ehdr eh;
	Elf32_Shdr sh;

	if(argc!=2) {
		printf("Usage: elf-parser <ELF-file>\n");
		return(0);
	}

	fd = open(argv[1], O_RDONLY);
	if(fd<0) {
		printf("Error %d Unable to open %s\n", fd, argv[1]);
		return(0);
	}

	/* ELF header at start of file */
	read_elf_header(fd, &eh);
	is_ELF(eh, true);

	/* section header offset obtained from ELF header */
	read_section_header(fd, eh.e_shoff, &sh);

	return(0);
}


#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>

#include <elf.h>

#define DEBUG 1

#define debug(...) \
            do { if (DEBUG) printf(__VA_ARGS__); } while (0)

void read_elf_header(int fd, Elf32_Ehdr *elf_header)
{
        assert(elf_header != NULL);
        assert(lseek(fd, (off_t)0, SEEK_SET) == (off_t)0);
        assert(read(fd, (void *)elf_header, sizeof(Elf32_Ehdr)) == sizeof(Elf32_Ehdr));
}

int is_ELF(Elf32_Ehdr elf_header)
{

	/* ELF magic bytes are 0x7f,'E','L','F'
	 * Using  octal escape sequence to represent 0x7f
	 */
	if(!strncmp((char*)elf_header.e_ident, "\177ELF", 4)) {
		debug("ELFMAGIC \t= ELF\n");
	} else {
		debug("ELFMAGIC mismatch!\n");
		/* Not ELF file */
		return(0);
	}

	/* Storage capacity class */
	debug("Storage class\t= ");
	switch(elf_header.e_ident[EI_CLASS])
	{
		case ELFCLASS32:
			debug("32-bit objects\n");
			break;

		case ELFCLASS64:
			debug("64-bit objects\n");
			break;

		default:
			debug("INVALID CLASS\n");
			break;
	}

	/* Data Format */
	debug("Data format\t= ");
	switch(elf_header.e_ident[EI_DATA])
	{
		case ELFDATA2LSB:
			debug("2's complement, little endian\n");
			break;

		case ELFDATA2MSB:
			debug("2's complement, big endian\n");
			break;

		default:
			debug("INVALID Format\n");
			break;
	}

	/* OS ABI */
	debug("OS ABI\t\t= ");
	switch(elf_header.e_ident[EI_OSABI])
	{
		case ELFOSABI_SYSV:
			debug("UNIX System V ABI\n");
			break;

		case ELFOSABI_HPUX:
			debug("HP-UX\n");
			break;

		case ELFOSABI_NETBSD:
			debug("NetBSD\n");
			break;

		case ELFOSABI_LINUX:
			debug("Linux\n");
			break;

		case ELFOSABI_SOLARIS:
			debug("Sun Solaris\n");
			break;

		case ELFOSABI_AIX:
			debug("IBM AIX\n");
			break;

		case ELFOSABI_IRIX:
			debug("SGI Irix\n");
			break;

		case ELFOSABI_FREEBSD:
			debug("FreeBSD\n");
			break;

		case ELFOSABI_TRU64:
			debug("Compaq TRU64 UNIX\n");
			break;

		case ELFOSABI_MODESTO:
			debug("Novell Modesto\n");
			break;

		case ELFOSABI_OPENBSD:
			debug("OpenBSD\n");
			break;

		case ELFOSABI_ARM_AEABI:
			debug("ARM EABI\n");
			break;

		case ELFOSABI_ARM:
			debug("ARM\n");
			break;

		case ELFOSABI_STANDALONE:
			debug("Standalone (embedded) app\n");
			break;

		default:
			debug("Unknown (0x%x)\n", elf_header.e_ident[EI_OSABI]);
			break;
	}

	/* ELF filetype */
	debug("Filetype \t= ");
	switch(elf_header.e_type)
	{
		case ET_NONE:
			debug("N/A (0x0)\n");
			break;

		case ET_REL:
			debug("Relocatable\n");
			break;

		case ET_EXEC:
			debug("Executable\n");
			break;

		case ET_DYN:
			debug("Shared Object\n");
			break;
		default:
			debug("Unknown (0x%x)\n", elf_header.e_type);
			break;
	}

	/* ELF Machine-id */
	debug("Machine\t\t= ");
	switch(elf_header.e_machine)
	{
		case EM_NONE:
			debug("None (0x0)\n");
			break;

		case EM_386:
			debug("INTEL x86 (0x%x)\n", EM_386);
			break;

		case EM_ARM:
			debug("ARM (0x%x)\n", EM_ARM);
			break;
		default:
			debug("Machine\t= 0x%x\n", elf_header.e_machine);
			break;
	}

	/* Entry point */
	debug("Entry point\t= 0x%x\n", elf_header.e_entry);

	debug("e_ehsize=0x%x\n", elf_header.e_ehsize);

	debug("e_phoff=0x%x\n", elf_header.e_phoff);

	debug("e_shoff=0x%x\n", elf_header.e_shoff);

	/* File header contains proper ELF info */
	return(1);
}


int main(int argc, char *argv[])
{

	int fd;
	Elf32_Ehdr file_header;

	if(argc!=2) {
		printf("Usage: elf-parser <ELF-file>\n");
		return(0);
	}

	fd = open(argv[1], O_RDONLY);
	if(fd<0) {
		printf("Error %d Unable to open %s\n", fd, argv[1]);
		return(0);
	}

	read_elf_header(fd, &file_header);
	is_ELF(file_header);

	return(0);
}


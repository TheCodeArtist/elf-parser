#include <elf-parser.h>


void disassemble(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr* sh_table)
{
	int32_t i;
	char* sh_str;   /* section-header string-table is also a section. */
	char* buf;      /* buffer to hold contents of the .text section */

	/* Read section-header string-table */
	debug("eh.e_shstrndx = 0x%x\n", eh.e_shstrndx);
	sh_str = read_section(fd, sh_table[eh.e_shstrndx]);

	for(i=0; i<eh.e_shnum; i++) {
		if(!strcmp(".text", (sh_str + sh_table[i].sh_name))) {
			printf("Found section\t\".text\"\n");
			printf("at offset\t0x%08x\n", sh_table[i].sh_offset);
			printf("of size\t\t0x%08x\n", sh_table[i].sh_size);
			break;
		}
	}

	assert(lseek(fd, sh_table[i].sh_offset, SEEK_SET)==sh_table[i].sh_offset);
	buf = malloc(sh_table[i].sh_size);
	if(!buf) {
        	printf("Failed to allocate %dbytes!!\n", sh_table[i].sh_size);
        	printf("Failed to disassemble!!\n");
	        return;
	}
	assert(read(fd, buf, sh_table[i].sh_size)==sh_table[i].sh_size);


	/* Now buf contains the instructions (4bytes each) */

}                                                                                                  


void disassemble64(int32_t fd, Elf64_Ehdr eh, Elf64_Shdr* sh_table)
{
	int32_t i;
	char* sh_str;   /* section-header string-table is also a section. */
	char* buf;      /* buffer to hold contents of the .text section */

	/* Read section-header string-table */
	debug("eh.e_shstrndx = 0x%x\n", eh.e_shstrndx);
	sh_str = read_section64(fd, sh_table[eh.e_shstrndx]);

	for(i=0; i<eh.e_shnum; i++) {
		if(!strcmp(".text", (sh_str + sh_table[i].sh_name))) {
			printf("Found section\t\".text\"\n");
			printf("at offset\t0x%08lx\n", sh_table[i].sh_offset);
			printf("of size\t\t0x%08lx\n", sh_table[i].sh_size);
			break;
		}
	}

	assert(lseek(fd, sh_table[i].sh_offset, SEEK_SET)==sh_table[i].sh_offset);
	buf = malloc(sh_table[i].sh_size);
	if(!buf) {
        	printf("Failed to allocate %ldbytes!!\n", sh_table[i].sh_size);
        	printf("Failed to disaassemble!!\n");
	        return;
	}
	assert(read(fd, buf, sh_table[i].sh_size)==sh_table[i].sh_size);


	/* Now buf contains the instructions (4bytes each) */

}                                                                                                  
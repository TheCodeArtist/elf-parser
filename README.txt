elf-parser
==========

Identifying/Extracting various sections of an ELF file

=============
  1. NOTES
=============
This section contains random thoughts during development.

1. Theoretical "hole" exists between elf-header and program-header.
    elf-header ends at 		elf_header.e_ehsize
    program-header starts at 	elf_header.e_phoff

2. Dynamic-linked libraries (*.so) == ELF
   Static-linked libraries  (*.a)  == archive (no ELF!)

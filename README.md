# elf-parser

Identify and extract sections of an ELF file. For learning how Linux binaries are laid out.

## What is an ELF file?

ELF (Executable and Linkable Format) is the format used by Linux executables, shared libraries, and object files.
Examples: `/bin/ls`, `libc.so.6`, `a.out`.

Layout:

```
+------------------------+
|      ELF header        |   identifies the file
+------------------------+
|    Program headers     |   how the kernel loads it
+------------------------+
|  Sections (.text, ...) |   code, data, symbols, strings
+------------------------+
|    Section headers     |   describes each section
+------------------------+
```

## Quickstart

Requires: `gcc`, `make`, Linux.

```bash
make
./elfparser /bin/ls
```

Prints ELF header, section headers, and symbols.
Writes `.text` to `text.S`.

## Try it on

- `/bin/ls` — executable
- `/usr/lib/x86_64-linux-gnu/libc.so.6` — shared library
- `gcc hello.c -o hello && ./elfparser hello`
- `*.a` — refused (it's an `ar` archive, not ELF)

## Files

- `elf-parser-main.c` — entry point (<100 lines)
- `elf-parser.h` — declarations
- `elf-parser.c` — parsing logic
- `disasm.c` — disassembler stub

## Notes

0. Use `readelf` or `objdump` for real work.

1. Gap between ELF header and program header:
   - header ends at `e_ehsize`
   - program header starts at `e_phoff`

2. `*.so` is ELF. `*.a` is an `ar` archive, not ELF.

3. Disassembler is a stub. Reads `.text` into memory but does not decode.

## License

Creative Commons. See [LICENSE.md](LICENSE.md).

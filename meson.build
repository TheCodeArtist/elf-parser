project('elf-parser', 'c',
  version : '1.0.0')

libelfparser = library('elf-parser',
  'elf-parser.c',
  include_directories : include_directories('.'),
  install : true)

install_headers('elf-parser.h')

pkgconfig = import('pkgconfig')
pkgconfig.generate(
  libraries : libelfparser,
  version : '1.0',
  name : 'libelfparser',
  description : 'A library for parsing elf files')

libelfparser_dep = declare_dependency(
  include_directories : include_directories('.'),
  link_with : libelfparser,
)

executable('elf-parser',
  'elf-parser-main.c',
  'disasm.c',
  dependencies : [libelfparser_dep],
)

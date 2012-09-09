
elf-parser:     file format elf32-i386


Disassembly of section .init:

080484a4 <_init>:
 80484a4:	53                   	push   %ebx
 80484a5:	83 ec 08             	sub    $0x8,%esp
 80484a8:	e8 00 00 00 00       	call   80484ad <_init+0x9>
 80484ad:	5b                   	pop    %ebx
 80484ae:	81 c3 47 3b 00 00    	add    $0x3b47,%ebx
 80484b4:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80484ba:	85 c0                	test   %eax,%eax
 80484bc:	74 05                	je     80484c3 <_init+0x1f>
 80484be:	e8 ad 00 00 00       	call   8048570 <__gmon_start__@plt>
 80484c3:	e8 c8 01 00 00       	call   8048690 <frame_dummy>
 80484c8:	e8 e3 16 00 00       	call   8049bb0 <__do_global_ctors_aux>
 80484cd:	83 c4 08             	add    $0x8,%esp
 80484d0:	5b                   	pop    %ebx
 80484d1:	c3                   	ret    

Disassembly of section .plt:

080484e0 <read@plt-0x10>:
 80484e0:	ff 35 f8 bf 04 08    	pushl  0x804bff8
 80484e6:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 80484ec:	00 00                	add    %al,(%eax)
	...

080484f0 <read@plt>:
 80484f0:	ff 25 00 c0 04 08    	jmp    *0x804c000
 80484f6:	68 00 00 00 00       	push   $0x0
 80484fb:	e9 e0 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048500 <printf@plt>:
 8048500:	ff 25 04 c0 04 08    	jmp    *0x804c004
 8048506:	68 08 00 00 00       	push   $0x8
 804850b:	e9 d0 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048510 <free@plt>:
 8048510:	ff 25 08 c0 04 08    	jmp    *0x804c008
 8048516:	68 10 00 00 00       	push   $0x10
 804851b:	e9 c0 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048520 <lseek@plt>:
 8048520:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8048526:	68 18 00 00 00       	push   $0x18
 804852b:	e9 b0 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048530 <__stack_chk_fail@plt>:
 8048530:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048536:	68 20 00 00 00       	push   $0x20
 804853b:	e9 a0 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048540 <realloc@plt>:
 8048540:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048546:	68 28 00 00 00       	push   $0x28
 804854b:	e9 90 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048550 <malloc@plt>:
 8048550:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048556:	68 30 00 00 00       	push   $0x30
 804855b:	e9 80 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048560 <puts@plt>:
 8048560:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048566:	68 38 00 00 00       	push   $0x38
 804856b:	e9 70 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048570 <__gmon_start__@plt>:
 8048570:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048576:	68 40 00 00 00       	push   $0x40
 804857b:	e9 60 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048580 <open@plt>:
 8048580:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048586:	68 48 00 00 00       	push   $0x48
 804858b:	e9 50 ff ff ff       	jmp    80484e0 <_init+0x3c>

08048590 <getcwd@plt>:
 8048590:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048596:	68 50 00 00 00       	push   $0x50
 804859b:	e9 40 ff ff ff       	jmp    80484e0 <_init+0x3c>

080485a0 <fsync@plt>:
 80485a0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80485a6:	68 58 00 00 00       	push   $0x58
 80485ab:	e9 30 ff ff ff       	jmp    80484e0 <_init+0x3c>

080485b0 <__libc_start_main@plt>:
 80485b0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80485b6:	68 60 00 00 00       	push   $0x60
 80485bb:	e9 20 ff ff ff       	jmp    80484e0 <_init+0x3c>

080485c0 <write@plt>:
 80485c0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80485c6:	68 68 00 00 00       	push   $0x68
 80485cb:	e9 10 ff ff ff       	jmp    80484e0 <_init+0x3c>

080485d0 <putchar@plt>:
 80485d0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80485d6:	68 70 00 00 00       	push   $0x70
 80485db:	e9 00 ff ff ff       	jmp    80484e0 <_init+0x3c>

080485e0 <close@plt>:
 80485e0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80485e6:	68 78 00 00 00       	push   $0x78
 80485eb:	e9 f0 fe ff ff       	jmp    80484e0 <_init+0x3c>

080485f0 <__assert_fail@plt>:
 80485f0:	ff 25 40 c0 04 08    	jmp    *0x804c040
 80485f6:	68 80 00 00 00       	push   $0x80
 80485fb:	e9 e0 fe ff ff       	jmp    80484e0 <_init+0x3c>

Disassembly of section .text:

08048600 <_start>:
 8048600:	31 ed                	xor    %ebp,%ebp
 8048602:	5e                   	pop    %esi
 8048603:	89 e1                	mov    %esp,%ecx
 8048605:	83 e4 f0             	and    $0xfffffff0,%esp
 8048608:	50                   	push   %eax
 8048609:	54                   	push   %esp
 804860a:	52                   	push   %edx
 804860b:	68 a0 9b 04 08       	push   $0x8049ba0
 8048610:	68 30 9b 04 08       	push   $0x8049b30
 8048615:	51                   	push   %ecx
 8048616:	56                   	push   %esi
 8048617:	68 08 97 04 08       	push   $0x8049708
 804861c:	e8 8f ff ff ff       	call   80485b0 <__libc_start_main@plt>
 8048621:	f4                   	hlt    
 8048622:	90                   	nop
 8048623:	90                   	nop
 8048624:	90                   	nop
 8048625:	90                   	nop
 8048626:	90                   	nop
 8048627:	90                   	nop
 8048628:	90                   	nop
 8048629:	90                   	nop
 804862a:	90                   	nop
 804862b:	90                   	nop
 804862c:	90                   	nop
 804862d:	90                   	nop
 804862e:	90                   	nop
 804862f:	90                   	nop

08048630 <__do_global_dtors_aux>:
 8048630:	55                   	push   %ebp
 8048631:	89 e5                	mov    %esp,%ebp
 8048633:	53                   	push   %ebx
 8048634:	83 ec 04             	sub    $0x4,%esp
 8048637:	80 3d 4c c0 04 08 00 	cmpb   $0x0,0x804c04c
 804863e:	75 3f                	jne    804867f <__do_global_dtors_aux+0x4f>
 8048640:	a1 50 c0 04 08       	mov    0x804c050,%eax
 8048645:	bb 20 bf 04 08       	mov    $0x804bf20,%ebx
 804864a:	81 eb 1c bf 04 08    	sub    $0x804bf1c,%ebx
 8048650:	c1 fb 02             	sar    $0x2,%ebx
 8048653:	83 eb 01             	sub    $0x1,%ebx
 8048656:	39 d8                	cmp    %ebx,%eax
 8048658:	73 1e                	jae    8048678 <__do_global_dtors_aux+0x48>
 804865a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048660:	83 c0 01             	add    $0x1,%eax
 8048663:	a3 50 c0 04 08       	mov    %eax,0x804c050
 8048668:	ff 14 85 1c bf 04 08 	call   *0x804bf1c(,%eax,4)
 804866f:	a1 50 c0 04 08       	mov    0x804c050,%eax
 8048674:	39 d8                	cmp    %ebx,%eax
 8048676:	72 e8                	jb     8048660 <__do_global_dtors_aux+0x30>
 8048678:	c6 05 4c c0 04 08 01 	movb   $0x1,0x804c04c
 804867f:	83 c4 04             	add    $0x4,%esp
 8048682:	5b                   	pop    %ebx
 8048683:	5d                   	pop    %ebp
 8048684:	c3                   	ret    
 8048685:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048690 <frame_dummy>:
 8048690:	55                   	push   %ebp
 8048691:	89 e5                	mov    %esp,%ebp
 8048693:	83 ec 18             	sub    $0x18,%esp
 8048696:	a1 24 bf 04 08       	mov    0x804bf24,%eax
 804869b:	85 c0                	test   %eax,%eax
 804869d:	74 12                	je     80486b1 <frame_dummy+0x21>
 804869f:	b8 00 00 00 00       	mov    $0x0,%eax
 80486a4:	85 c0                	test   %eax,%eax
 80486a6:	74 09                	je     80486b1 <frame_dummy+0x21>
 80486a8:	c7 04 24 24 bf 04 08 	movl   $0x804bf24,(%esp)
 80486af:	ff d0                	call   *%eax
 80486b1:	c9                   	leave  
 80486b2:	c3                   	ret    
 80486b3:	90                   	nop

080486b4 <read_elf_header>:

#define debug(...) \
            do { if (DEBUG) printf("<debug>:"__VA_ARGS__); } while (0)

void read_elf_header(int32_t fd, Elf32_Ehdr *elf_header)
{
 80486b4:	55                   	push   %ebp
 80486b5:	89 e5                	mov    %esp,%ebp
 80486b7:	83 ec 18             	sub    $0x18,%esp
	assert(elf_header != NULL);
 80486ba:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80486be:	75 24                	jne    80486e4 <read_elf_header+0x30>
 80486c0:	c7 44 24 0c 64 a3 04 	movl   $0x804a364,0xc(%esp)
 80486c7:	08 
 80486c8:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
 80486cf:	00 
 80486d0:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 80486d7:	08 
 80486d8:	c7 04 24 0d 9c 04 08 	movl   $0x8049c0d,(%esp)
 80486df:	e8 0c ff ff ff       	call   80485f0 <__assert_fail@plt>
	assert(lseek(fd, (off_t)0, SEEK_SET) == (off_t)0);
 80486e4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80486eb:	00 
 80486ec:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80486f3:	00 
 80486f4:	8b 45 08             	mov    0x8(%ebp),%eax
 80486f7:	89 04 24             	mov    %eax,(%esp)
 80486fa:	e8 21 fe ff ff       	call   8048520 <lseek@plt>
 80486ff:	85 c0                	test   %eax,%eax
 8048701:	74 24                	je     8048727 <read_elf_header+0x73>
 8048703:	c7 44 24 0c 64 a3 04 	movl   $0x804a364,0xc(%esp)
 804870a:	08 
 804870b:	c7 44 24 08 14 00 00 	movl   $0x14,0x8(%esp)
 8048712:	00 
 8048713:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 804871a:	08 
 804871b:	c7 04 24 28 9c 04 08 	movl   $0x8049c28,(%esp)
 8048722:	e8 c9 fe ff ff       	call   80485f0 <__assert_fail@plt>
	assert(read(fd, (void *)elf_header, sizeof(Elf32_Ehdr)) == sizeof(Elf32_Ehdr));
 8048727:	c7 44 24 08 34 00 00 	movl   $0x34,0x8(%esp)
 804872e:	00 
 804872f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048732:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048736:	8b 45 08             	mov    0x8(%ebp),%eax
 8048739:	89 04 24             	mov    %eax,(%esp)
 804873c:	e8 af fd ff ff       	call   80484f0 <read@plt>
 8048741:	83 f8 34             	cmp    $0x34,%eax
 8048744:	74 24                	je     804876a <read_elf_header+0xb6>
 8048746:	c7 44 24 0c 64 a3 04 	movl   $0x804a364,0xc(%esp)
 804874d:	08 
 804874e:	c7 44 24 08 15 00 00 	movl   $0x15,0x8(%esp)
 8048755:	00 
 8048756:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 804875d:	08 
 804875e:	c7 04 24 4c 9c 04 08 	movl   $0x8049c4c,(%esp)
 8048765:	e8 86 fe ff ff       	call   80485f0 <__assert_fail@plt>
}
 804876a:	c9                   	leave  
 804876b:	c3                   	ret    

0804876c <is_ELF>:


bool is_ELF(Elf32_Ehdr eh)
{
 804876c:	55                   	push   %ebp
 804876d:	89 e5                	mov    %esp,%ebp
 804876f:	57                   	push   %edi
 8048770:	56                   	push   %esi
 8048771:	83 ec 10             	sub    $0x10,%esp
	/* ELF magic bytes are 0x7f,'E','L','F'
	 * Using  octal escape sequence to represent 0x7f
	 */
	if(!strncmp((char*)eh.e_ident, "\177ELF", 4)) {
 8048774:	8d 55 08             	lea    0x8(%ebp),%edx
 8048777:	b8 93 9c 04 08       	mov    $0x8049c93,%eax
 804877c:	b9 04 00 00 00       	mov    $0x4,%ecx
 8048781:	89 d6                	mov    %edx,%esi
 8048783:	89 c7                	mov    %eax,%edi
 8048785:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 8048787:	0f 97 c2             	seta   %dl
 804878a:	0f 92 c0             	setb   %al
 804878d:	89 d1                	mov    %edx,%ecx
 804878f:	28 c1                	sub    %al,%cl
 8048791:	89 c8                	mov    %ecx,%eax
 8048793:	0f be c0             	movsbl %al,%eax
 8048796:	85 c0                	test   %eax,%eax
 8048798:	75 13                	jne    80487ad <is_ELF+0x41>
		printf("ELFMAGIC \t= ELF\n");
 804879a:	c7 04 24 98 9c 04 08 	movl   $0x8049c98,(%esp)
 80487a1:	e8 ba fd ff ff       	call   8048560 <puts@plt>
		/* IS a ELF file */
		return 1;
 80487a6:	b8 01 00 00 00       	mov    $0x1,%eax
 80487ab:	eb 11                	jmp    80487be <is_ELF+0x52>
	} else {
		printf("ELFMAGIC mismatch!\n");
 80487ad:	c7 04 24 a8 9c 04 08 	movl   $0x8049ca8,(%esp)
 80487b4:	e8 a7 fd ff ff       	call   8048560 <puts@plt>
		/* Not ELF file */
		return 0;
 80487b9:	b8 00 00 00 00       	mov    $0x0,%eax
	}
}
 80487be:	83 c4 10             	add    $0x10,%esp
 80487c1:	5e                   	pop    %esi
 80487c2:	5f                   	pop    %edi
 80487c3:	5d                   	pop    %ebp
 80487c4:	c3                   	ret    

080487c5 <print_elf_header>:



void print_elf_header(Elf32_Ehdr elf_header)
{
 80487c5:	55                   	push   %ebp
 80487c6:	89 e5                	mov    %esp,%ebp
 80487c8:	83 ec 28             	sub    $0x28,%esp

	/* Storage capacity class */
	printf("Storage class\t= ");
 80487cb:	b8 bb 9c 04 08       	mov    $0x8049cbb,%eax
 80487d0:	89 04 24             	mov    %eax,(%esp)
 80487d3:	e8 28 fd ff ff       	call   8048500 <printf@plt>
	switch(elf_header.e_ident[EI_CLASS])
 80487d8:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 80487dc:	0f b6 c0             	movzbl %al,%eax
 80487df:	83 f8 01             	cmp    $0x1,%eax
 80487e2:	74 07                	je     80487eb <print_elf_header+0x26>
 80487e4:	83 f8 02             	cmp    $0x2,%eax
 80487e7:	74 10                	je     80487f9 <print_elf_header+0x34>
 80487e9:	eb 1c                	jmp    8048807 <print_elf_header+0x42>
	{
		case ELFCLASS32:
			printf("32-bit objects\n");
 80487eb:	c7 04 24 cc 9c 04 08 	movl   $0x8049ccc,(%esp)
 80487f2:	e8 69 fd ff ff       	call   8048560 <puts@plt>
			break;
 80487f7:	eb 1b                	jmp    8048814 <print_elf_header+0x4f>

		case ELFCLASS64:
			printf("64-bit objects\n");
 80487f9:	c7 04 24 db 9c 04 08 	movl   $0x8049cdb,(%esp)
 8048800:	e8 5b fd ff ff       	call   8048560 <puts@plt>
			break;
 8048805:	eb 0d                	jmp    8048814 <print_elf_header+0x4f>

		default:
			printf("INVALID CLASS\n");
 8048807:	c7 04 24 ea 9c 04 08 	movl   $0x8049cea,(%esp)
 804880e:	e8 4d fd ff ff       	call   8048560 <puts@plt>
			break;
 8048813:	90                   	nop
	}

	/* Data Format */
	printf("Data format\t= ");
 8048814:	b8 f8 9c 04 08       	mov    $0x8049cf8,%eax
 8048819:	89 04 24             	mov    %eax,(%esp)
 804881c:	e8 df fc ff ff       	call   8048500 <printf@plt>
	switch(elf_header.e_ident[EI_DATA])
 8048821:	0f b6 45 0d          	movzbl 0xd(%ebp),%eax
 8048825:	0f b6 c0             	movzbl %al,%eax
 8048828:	83 f8 01             	cmp    $0x1,%eax
 804882b:	74 07                	je     8048834 <print_elf_header+0x6f>
 804882d:	83 f8 02             	cmp    $0x2,%eax
 8048830:	74 10                	je     8048842 <print_elf_header+0x7d>
 8048832:	eb 1c                	jmp    8048850 <print_elf_header+0x8b>
	{
		case ELFDATA2LSB:
			printf("2's complement, little endian\n");
 8048834:	c7 04 24 07 9d 04 08 	movl   $0x8049d07,(%esp)
 804883b:	e8 20 fd ff ff       	call   8048560 <puts@plt>
			break;
 8048840:	eb 1b                	jmp    804885d <print_elf_header+0x98>

		case ELFDATA2MSB:
			printf("2's complement, big endian\n");
 8048842:	c7 04 24 25 9d 04 08 	movl   $0x8049d25,(%esp)
 8048849:	e8 12 fd ff ff       	call   8048560 <puts@plt>
			break;
 804884e:	eb 0d                	jmp    804885d <print_elf_header+0x98>

		default:
			printf("INVALID Format\n");
 8048850:	c7 04 24 40 9d 04 08 	movl   $0x8049d40,(%esp)
 8048857:	e8 04 fd ff ff       	call   8048560 <puts@plt>
			break;
 804885c:	90                   	nop
	}

	/* OS ABI */
	printf("OS ABI\t\t= ");
 804885d:	b8 4f 9d 04 08       	mov    $0x8049d4f,%eax
 8048862:	89 04 24             	mov    %eax,(%esp)
 8048865:	e8 96 fc ff ff       	call   8048500 <printf@plt>
	switch(elf_header.e_ident[EI_OSABI])
 804886a:	0f b6 45 0f          	movzbl 0xf(%ebp),%eax
 804886e:	0f b6 c0             	movzbl %al,%eax
 8048871:	83 f8 08             	cmp    $0x8,%eax
 8048874:	0f 84 ea 00 00 00    	je     8048964 <print_elf_header+0x19f>
 804887a:	83 f8 08             	cmp    $0x8,%eax
 804887d:	7f 38                	jg     80488b7 <print_elf_header+0xf2>
 804887f:	83 f8 02             	cmp    $0x2,%eax
 8048882:	0f 84 98 00 00 00    	je     8048920 <print_elf_header+0x15b>
 8048888:	83 f8 02             	cmp    $0x2,%eax
 804888b:	7f 0e                	jg     804889b <print_elf_header+0xd6>
 804888d:	85 c0                	test   %eax,%eax
 804888f:	74 6d                	je     80488fe <print_elf_header+0x139>
 8048891:	83 f8 01             	cmp    $0x1,%eax
 8048894:	74 79                	je     804890f <print_elf_header+0x14a>
 8048896:	e9 39 01 00 00       	jmp    80489d4 <print_elf_header+0x20f>
 804889b:	83 f8 06             	cmp    $0x6,%eax
 804889e:	0f 84 9e 00 00 00    	je     8048942 <print_elf_header+0x17d>
 80488a4:	83 f8 06             	cmp    $0x6,%eax
 80488a7:	0f 8f a6 00 00 00    	jg     8048953 <print_elf_header+0x18e>
 80488ad:	83 f8 03             	cmp    $0x3,%eax
 80488b0:	74 7f                	je     8048931 <print_elf_header+0x16c>
 80488b2:	e9 1d 01 00 00       	jmp    80489d4 <print_elf_header+0x20f>
 80488b7:	83 f8 0c             	cmp    $0xc,%eax
 80488ba:	0f 84 dc 00 00 00    	je     804899c <print_elf_header+0x1d7>
 80488c0:	83 f8 0c             	cmp    $0xc,%eax
 80488c3:	7f 17                	jg     80488dc <print_elf_header+0x117>
 80488c5:	83 f8 0a             	cmp    $0xa,%eax
 80488c8:	0f 84 b2 00 00 00    	je     8048980 <print_elf_header+0x1bb>
 80488ce:	83 f8 0a             	cmp    $0xa,%eax
 80488d1:	0f 8f b7 00 00 00    	jg     804898e <print_elf_header+0x1c9>
 80488d7:	e9 96 00 00 00       	jmp    8048972 <print_elf_header+0x1ad>
 80488dc:	83 f8 61             	cmp    $0x61,%eax
 80488df:	0f 84 d3 00 00 00    	je     80489b8 <print_elf_header+0x1f3>
 80488e5:	3d ff 00 00 00       	cmp    $0xff,%eax
 80488ea:	0f 84 d6 00 00 00    	je     80489c6 <print_elf_header+0x201>
 80488f0:	83 f8 40             	cmp    $0x40,%eax
 80488f3:	0f 84 b1 00 00 00    	je     80489aa <print_elf_header+0x1e5>
 80488f9:	e9 d6 00 00 00       	jmp    80489d4 <print_elf_header+0x20f>
	{
		case ELFOSABI_SYSV:
			printf("UNIX System V ABI\n");
 80488fe:	c7 04 24 5a 9d 04 08 	movl   $0x8049d5a,(%esp)
 8048905:	e8 56 fc ff ff       	call   8048560 <puts@plt>
			break;
 804890a:	e9 de 00 00 00       	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_HPUX:
			printf("HP-UX\n");
 804890f:	c7 04 24 6c 9d 04 08 	movl   $0x8049d6c,(%esp)
 8048916:	e8 45 fc ff ff       	call   8048560 <puts@plt>
			break;
 804891b:	e9 cd 00 00 00       	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_NETBSD:
			printf("NetBSD\n");
 8048920:	c7 04 24 72 9d 04 08 	movl   $0x8049d72,(%esp)
 8048927:	e8 34 fc ff ff       	call   8048560 <puts@plt>
			break;
 804892c:	e9 bc 00 00 00       	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_LINUX:
			printf("Linux\n");
 8048931:	c7 04 24 79 9d 04 08 	movl   $0x8049d79,(%esp)
 8048938:	e8 23 fc ff ff       	call   8048560 <puts@plt>
			break;
 804893d:	e9 ab 00 00 00       	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_SOLARIS:
			printf("Sun Solaris\n");
 8048942:	c7 04 24 7f 9d 04 08 	movl   $0x8049d7f,(%esp)
 8048949:	e8 12 fc ff ff       	call   8048560 <puts@plt>
			break;
 804894e:	e9 9a 00 00 00       	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_AIX:
			printf("IBM AIX\n");
 8048953:	c7 04 24 8b 9d 04 08 	movl   $0x8049d8b,(%esp)
 804895a:	e8 01 fc ff ff       	call   8048560 <puts@plt>
			break;
 804895f:	e9 89 00 00 00       	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_IRIX:
			printf("SGI Irix\n");
 8048964:	c7 04 24 93 9d 04 08 	movl   $0x8049d93,(%esp)
 804896b:	e8 f0 fb ff ff       	call   8048560 <puts@plt>
			break;
 8048970:	eb 7b                	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_FREEBSD:
			printf("FreeBSD\n");
 8048972:	c7 04 24 9c 9d 04 08 	movl   $0x8049d9c,(%esp)
 8048979:	e8 e2 fb ff ff       	call   8048560 <puts@plt>
			break;
 804897e:	eb 6d                	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_TRU64:
			printf("Compaq TRU64 UNIX\n");
 8048980:	c7 04 24 a4 9d 04 08 	movl   $0x8049da4,(%esp)
 8048987:	e8 d4 fb ff ff       	call   8048560 <puts@plt>
			break;
 804898c:	eb 5f                	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_MODESTO:
			printf("Novell Modesto\n");
 804898e:	c7 04 24 b6 9d 04 08 	movl   $0x8049db6,(%esp)
 8048995:	e8 c6 fb ff ff       	call   8048560 <puts@plt>
			break;
 804899a:	eb 51                	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_OPENBSD:
			printf("OpenBSD\n");
 804899c:	c7 04 24 c5 9d 04 08 	movl   $0x8049dc5,(%esp)
 80489a3:	e8 b8 fb ff ff       	call   8048560 <puts@plt>
			break;
 80489a8:	eb 43                	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_ARM_AEABI:
			printf("ARM EABI\n");
 80489aa:	c7 04 24 cd 9d 04 08 	movl   $0x8049dcd,(%esp)
 80489b1:	e8 aa fb ff ff       	call   8048560 <puts@plt>
			break;
 80489b6:	eb 35                	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_ARM:
			printf("ARM\n");
 80489b8:	c7 04 24 d6 9d 04 08 	movl   $0x8049dd6,(%esp)
 80489bf:	e8 9c fb ff ff       	call   8048560 <puts@plt>
			break;
 80489c4:	eb 27                	jmp    80489ed <print_elf_header+0x228>

		case ELFOSABI_STANDALONE:
			printf("Standalone (embedded) app\n");
 80489c6:	c7 04 24 da 9d 04 08 	movl   $0x8049dda,(%esp)
 80489cd:	e8 8e fb ff ff       	call   8048560 <puts@plt>
			break;
 80489d2:	eb 19                	jmp    80489ed <print_elf_header+0x228>

		default:
			printf("Unknown (0x%x)\n", elf_header.e_ident[EI_OSABI]);
 80489d4:	0f b6 45 0f          	movzbl 0xf(%ebp),%eax
 80489d8:	0f b6 d0             	movzbl %al,%edx
 80489db:	b8 f4 9d 04 08       	mov    $0x8049df4,%eax
 80489e0:	89 54 24 04          	mov    %edx,0x4(%esp)
 80489e4:	89 04 24             	mov    %eax,(%esp)
 80489e7:	e8 14 fb ff ff       	call   8048500 <printf@plt>
			break;
 80489ec:	90                   	nop
	}

	/* ELF filetype */
	printf("Filetype \t= ");
 80489ed:	b8 04 9e 04 08       	mov    $0x8049e04,%eax
 80489f2:	89 04 24             	mov    %eax,(%esp)
 80489f5:	e8 06 fb ff ff       	call   8048500 <printf@plt>
	switch(elf_header.e_type)
 80489fa:	0f b7 45 18          	movzwl 0x18(%ebp),%eax
 80489fe:	0f b7 c0             	movzwl %ax,%eax
 8048a01:	83 f8 01             	cmp    $0x1,%eax
 8048a04:	74 25                	je     8048a2b <print_elf_header+0x266>
 8048a06:	83 f8 01             	cmp    $0x1,%eax
 8048a09:	7f 06                	jg     8048a11 <print_elf_header+0x24c>
 8048a0b:	85 c0                	test   %eax,%eax
 8048a0d:	74 0e                	je     8048a1d <print_elf_header+0x258>
 8048a0f:	eb 44                	jmp    8048a55 <print_elf_header+0x290>
 8048a11:	83 f8 02             	cmp    $0x2,%eax
 8048a14:	74 23                	je     8048a39 <print_elf_header+0x274>
 8048a16:	83 f8 03             	cmp    $0x3,%eax
 8048a19:	74 2c                	je     8048a47 <print_elf_header+0x282>
 8048a1b:	eb 38                	jmp    8048a55 <print_elf_header+0x290>
	{
		case ET_NONE:
			printf("N/A (0x0)\n");
 8048a1d:	c7 04 24 11 9e 04 08 	movl   $0x8049e11,(%esp)
 8048a24:	e8 37 fb ff ff       	call   8048560 <puts@plt>
			break;
 8048a29:	eb 43                	jmp    8048a6e <print_elf_header+0x2a9>

		case ET_REL:
			printf("Relocatable\n");
 8048a2b:	c7 04 24 1b 9e 04 08 	movl   $0x8049e1b,(%esp)
 8048a32:	e8 29 fb ff ff       	call   8048560 <puts@plt>
			break;
 8048a37:	eb 35                	jmp    8048a6e <print_elf_header+0x2a9>

		case ET_EXEC:
			printf("Executable\n");
 8048a39:	c7 04 24 27 9e 04 08 	movl   $0x8049e27,(%esp)
 8048a40:	e8 1b fb ff ff       	call   8048560 <puts@plt>
			break;
 8048a45:	eb 27                	jmp    8048a6e <print_elf_header+0x2a9>

		case ET_DYN:
			printf("Shared Object\n");
 8048a47:	c7 04 24 32 9e 04 08 	movl   $0x8049e32,(%esp)
 8048a4e:	e8 0d fb ff ff       	call   8048560 <puts@plt>
			break;
 8048a53:	eb 19                	jmp    8048a6e <print_elf_header+0x2a9>
		default:
			printf("Unknown (0x%x)\n", elf_header.e_type);
 8048a55:	0f b7 45 18          	movzwl 0x18(%ebp),%eax
 8048a59:	0f b7 d0             	movzwl %ax,%edx
 8048a5c:	b8 f4 9d 04 08       	mov    $0x8049df4,%eax
 8048a61:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048a65:	89 04 24             	mov    %eax,(%esp)
 8048a68:	e8 93 fa ff ff       	call   8048500 <printf@plt>
			break;
 8048a6d:	90                   	nop
	}

	/* ELF Machine-id */
	printf("Machine\t\t= ");
 8048a6e:	b8 40 9e 04 08       	mov    $0x8049e40,%eax
 8048a73:	89 04 24             	mov    %eax,(%esp)
 8048a76:	e8 85 fa ff ff       	call   8048500 <printf@plt>
	switch(elf_header.e_machine)
 8048a7b:	0f b7 45 1a          	movzwl 0x1a(%ebp),%eax
 8048a7f:	0f b7 c0             	movzwl %ax,%eax
 8048a82:	83 f8 03             	cmp    $0x3,%eax
 8048a85:	74 17                	je     8048a9e <print_elf_header+0x2d9>
 8048a87:	83 f8 28             	cmp    $0x28,%eax
 8048a8a:	74 29                	je     8048ab5 <print_elf_header+0x2f0>
 8048a8c:	85 c0                	test   %eax,%eax
 8048a8e:	75 3c                	jne    8048acc <print_elf_header+0x307>
	{
		case EM_NONE:
			printf("None (0x0)\n");
 8048a90:	c7 04 24 4c 9e 04 08 	movl   $0x8049e4c,(%esp)
 8048a97:	e8 c4 fa ff ff       	call   8048560 <puts@plt>
			break;
 8048a9c:	eb 47                	jmp    8048ae5 <print_elf_header+0x320>

		case EM_386:
			printf("INTEL x86 (0x%x)\n", EM_386);
 8048a9e:	b8 57 9e 04 08       	mov    $0x8049e57,%eax
 8048aa3:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
 8048aaa:	00 
 8048aab:	89 04 24             	mov    %eax,(%esp)
 8048aae:	e8 4d fa ff ff       	call   8048500 <printf@plt>
			break;
 8048ab3:	eb 30                	jmp    8048ae5 <print_elf_header+0x320>

		case EM_ARM:
			printf("ARM (0x%x)\n", EM_ARM);
 8048ab5:	b8 69 9e 04 08       	mov    $0x8049e69,%eax
 8048aba:	c7 44 24 04 28 00 00 	movl   $0x28,0x4(%esp)
 8048ac1:	00 
 8048ac2:	89 04 24             	mov    %eax,(%esp)
 8048ac5:	e8 36 fa ff ff       	call   8048500 <printf@plt>
			break;
 8048aca:	eb 19                	jmp    8048ae5 <print_elf_header+0x320>
		default:
			printf("Machine\t= 0x%x\n", elf_header.e_machine);
 8048acc:	0f b7 45 1a          	movzwl 0x1a(%ebp),%eax
 8048ad0:	0f b7 d0             	movzwl %ax,%edx
 8048ad3:	b8 75 9e 04 08       	mov    $0x8049e75,%eax
 8048ad8:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048adc:	89 04 24             	mov    %eax,(%esp)
 8048adf:	e8 1c fa ff ff       	call   8048500 <printf@plt>
			break;
 8048ae4:	90                   	nop
	}

	/* Entry point */
	printf("Entry point\t= 0x%08x\n", elf_header.e_entry);
 8048ae5:	8b 55 20             	mov    0x20(%ebp),%edx
 8048ae8:	b8 85 9e 04 08       	mov    $0x8049e85,%eax
 8048aed:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048af1:	89 04 24             	mov    %eax,(%esp)
 8048af4:	e8 07 fa ff ff       	call   8048500 <printf@plt>

	/* ELF header size in bytes */
	printf("ELF header size\t= 0x%08x\n", elf_header.e_ehsize);
 8048af9:	0f b7 45 30          	movzwl 0x30(%ebp),%eax
 8048afd:	0f b7 d0             	movzwl %ax,%edx
 8048b00:	b8 9b 9e 04 08       	mov    $0x8049e9b,%eax
 8048b05:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b09:	89 04 24             	mov    %eax,(%esp)
 8048b0c:	e8 ef f9 ff ff       	call   8048500 <printf@plt>

	/* Program Header */
	printf("\nProgram Header\t= ");
 8048b11:	b8 b5 9e 04 08       	mov    $0x8049eb5,%eax
 8048b16:	89 04 24             	mov    %eax,(%esp)
 8048b19:	e8 e2 f9 ff ff       	call   8048500 <printf@plt>
	printf("0x%08x\n", elf_header.e_phoff);		/* start */
 8048b1e:	8b 55 24             	mov    0x24(%ebp),%edx
 8048b21:	b8 c8 9e 04 08       	mov    $0x8049ec8,%eax
 8048b26:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b2a:	89 04 24             	mov    %eax,(%esp)
 8048b2d:	e8 ce f9 ff ff       	call   8048500 <printf@plt>
	printf("\t\t  %d entries\n", elf_header.e_phnum);	/* num entry */
 8048b32:	0f b7 45 34          	movzwl 0x34(%ebp),%eax
 8048b36:	0f b7 d0             	movzwl %ax,%edx
 8048b39:	b8 d0 9e 04 08       	mov    $0x8049ed0,%eax
 8048b3e:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b42:	89 04 24             	mov    %eax,(%esp)
 8048b45:	e8 b6 f9 ff ff       	call   8048500 <printf@plt>
	printf("\t\t  %d bytes\n", elf_header.e_phentsize);	/* size/entry */
 8048b4a:	0f b7 45 32          	movzwl 0x32(%ebp),%eax
 8048b4e:	0f b7 d0             	movzwl %ax,%edx
 8048b51:	b8 e0 9e 04 08       	mov    $0x8049ee0,%eax
 8048b56:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b5a:	89 04 24             	mov    %eax,(%esp)
 8048b5d:	e8 9e f9 ff ff       	call   8048500 <printf@plt>

	/* Section header starts at */
	printf("\nSection Header\t= ");
 8048b62:	b8 ee 9e 04 08       	mov    $0x8049eee,%eax
 8048b67:	89 04 24             	mov    %eax,(%esp)
 8048b6a:	e8 91 f9 ff ff       	call   8048500 <printf@plt>
	printf("0x%08x\n", elf_header.e_shoff);		/* start */
 8048b6f:	8b 55 28             	mov    0x28(%ebp),%edx
 8048b72:	b8 c8 9e 04 08       	mov    $0x8049ec8,%eax
 8048b77:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b7b:	89 04 24             	mov    %eax,(%esp)
 8048b7e:	e8 7d f9 ff ff       	call   8048500 <printf@plt>
	printf("\t\t  %d entries\n", elf_header.e_shnum);	/* num entry */
 8048b83:	0f b7 45 38          	movzwl 0x38(%ebp),%eax
 8048b87:	0f b7 d0             	movzwl %ax,%edx
 8048b8a:	b8 d0 9e 04 08       	mov    $0x8049ed0,%eax
 8048b8f:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048b93:	89 04 24             	mov    %eax,(%esp)
 8048b96:	e8 65 f9 ff ff       	call   8048500 <printf@plt>
	printf("\t\t  %d bytes\n", elf_header.e_shentsize);	/* size/entry */
 8048b9b:	0f b7 45 36          	movzwl 0x36(%ebp),%eax
 8048b9f:	0f b7 d0             	movzwl %ax,%edx
 8048ba2:	b8 e0 9e 04 08       	mov    $0x8049ee0,%eax
 8048ba7:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048bab:	89 04 24             	mov    %eax,(%esp)
 8048bae:	e8 4d f9 ff ff       	call   8048500 <printf@plt>
	printf("\t\t  0x%08x (string table offset)\n", elf_header.e_shstrndx);
 8048bb3:	0f b7 45 3a          	movzwl 0x3a(%ebp),%eax
 8048bb7:	0f b7 d0             	movzwl %ax,%edx
 8048bba:	b8 04 9f 04 08       	mov    $0x8049f04,%eax
 8048bbf:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048bc3:	89 04 24             	mov    %eax,(%esp)
 8048bc6:	e8 35 f9 ff ff       	call   8048500 <printf@plt>

	/* File flags (Machine specific)*/
	printf("\nFile flags \t= 0x%08x\n", elf_header.e_flags);
 8048bcb:	8b 55 2c             	mov    0x2c(%ebp),%edx
 8048bce:	b8 26 9f 04 08       	mov    $0x8049f26,%eax
 8048bd3:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048bd7:	89 04 24             	mov    %eax,(%esp)
 8048bda:	e8 21 f9 ff ff       	call   8048500 <printf@plt>
	/* ELF file flags are machine specific.
	 * INTEL implements NO flags.
	 * ARM implements a few.
	 * Add support below to parse ELF file flags on ARM
	 */
	int32_t ef = elf_header.e_flags;
 8048bdf:	8b 45 2c             	mov    0x2c(%ebp),%eax
 8048be2:	89 45 f4             	mov    %eax,-0xc(%ebp)
	printf("\t\t  ");
 8048be5:	b8 3d 9f 04 08       	mov    $0x8049f3d,%eax
 8048bea:	89 04 24             	mov    %eax,(%esp)
 8048bed:	e8 0e f9 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_RELEXEC)
 8048bf2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048bf5:	83 e0 01             	and    $0x1,%eax
 8048bf8:	84 c0                	test   %al,%al
 8048bfa:	74 0d                	je     8048c09 <print_elf_header+0x444>
		printf(",RELEXEC ");
 8048bfc:	b8 42 9f 04 08       	mov    $0x8049f42,%eax
 8048c01:	89 04 24             	mov    %eax,(%esp)
 8048c04:	e8 f7 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_HASENTRY)
 8048c09:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c0c:	83 e0 02             	and    $0x2,%eax
 8048c0f:	85 c0                	test   %eax,%eax
 8048c11:	74 0d                	je     8048c20 <print_elf_header+0x45b>
		printf(",HASENTRY ");
 8048c13:	b8 4c 9f 04 08       	mov    $0x8049f4c,%eax
 8048c18:	89 04 24             	mov    %eax,(%esp)
 8048c1b:	e8 e0 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_INTERWORK)
 8048c20:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c23:	83 e0 04             	and    $0x4,%eax
 8048c26:	85 c0                	test   %eax,%eax
 8048c28:	74 0d                	je     8048c37 <print_elf_header+0x472>
		printf(",INTERWORK ");
 8048c2a:	b8 57 9f 04 08       	mov    $0x8049f57,%eax
 8048c2f:	89 04 24             	mov    %eax,(%esp)
 8048c32:	e8 c9 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_APCS_26)
 8048c37:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c3a:	83 e0 08             	and    $0x8,%eax
 8048c3d:	85 c0                	test   %eax,%eax
 8048c3f:	74 0d                	je     8048c4e <print_elf_header+0x489>
		printf(",APCS_26 ");
 8048c41:	b8 63 9f 04 08       	mov    $0x8049f63,%eax
 8048c46:	89 04 24             	mov    %eax,(%esp)
 8048c49:	e8 b2 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_APCS_FLOAT)
 8048c4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c51:	83 e0 10             	and    $0x10,%eax
 8048c54:	85 c0                	test   %eax,%eax
 8048c56:	74 0d                	je     8048c65 <print_elf_header+0x4a0>
		printf(",APCS_FLOAT ");
 8048c58:	b8 6d 9f 04 08       	mov    $0x8049f6d,%eax
 8048c5d:	89 04 24             	mov    %eax,(%esp)
 8048c60:	e8 9b f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_PIC)
 8048c65:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c68:	83 e0 20             	and    $0x20,%eax
 8048c6b:	85 c0                	test   %eax,%eax
 8048c6d:	74 0d                	je     8048c7c <print_elf_header+0x4b7>
		printf(",PIC ");
 8048c6f:	b8 7a 9f 04 08       	mov    $0x8049f7a,%eax
 8048c74:	89 04 24             	mov    %eax,(%esp)
 8048c77:	e8 84 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_ALIGN8)
 8048c7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c7f:	83 e0 40             	and    $0x40,%eax
 8048c82:	85 c0                	test   %eax,%eax
 8048c84:	74 0d                	je     8048c93 <print_elf_header+0x4ce>
		printf(",ALIGN8 ");
 8048c86:	b8 80 9f 04 08       	mov    $0x8049f80,%eax
 8048c8b:	89 04 24             	mov    %eax,(%esp)
 8048c8e:	e8 6d f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_NEW_ABI)
 8048c93:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c96:	25 80 00 00 00       	and    $0x80,%eax
 8048c9b:	85 c0                	test   %eax,%eax
 8048c9d:	74 0d                	je     8048cac <print_elf_header+0x4e7>
		printf(",NEW_ABI ");
 8048c9f:	b8 89 9f 04 08       	mov    $0x8049f89,%eax
 8048ca4:	89 04 24             	mov    %eax,(%esp)
 8048ca7:	e8 54 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_OLD_ABI)
 8048cac:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048caf:	25 00 01 00 00       	and    $0x100,%eax
 8048cb4:	85 c0                	test   %eax,%eax
 8048cb6:	74 0d                	je     8048cc5 <print_elf_header+0x500>
		printf(",OLD_ABI ");
 8048cb8:	b8 93 9f 04 08       	mov    $0x8049f93,%eax
 8048cbd:	89 04 24             	mov    %eax,(%esp)
 8048cc0:	e8 3b f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_SOFT_FLOAT)
 8048cc5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048cc8:	25 00 02 00 00       	and    $0x200,%eax
 8048ccd:	85 c0                	test   %eax,%eax
 8048ccf:	74 0d                	je     8048cde <print_elf_header+0x519>
		printf(",SOFT_FLOAT ");
 8048cd1:	b8 9d 9f 04 08       	mov    $0x8049f9d,%eax
 8048cd6:	89 04 24             	mov    %eax,(%esp)
 8048cd9:	e8 22 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_VFP_FLOAT)
 8048cde:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ce1:	25 00 04 00 00       	and    $0x400,%eax
 8048ce6:	85 c0                	test   %eax,%eax
 8048ce8:	74 0d                	je     8048cf7 <print_elf_header+0x532>
		printf(",VFP_FLOAT ");
 8048cea:	b8 aa 9f 04 08       	mov    $0x8049faa,%eax
 8048cef:	89 04 24             	mov    %eax,(%esp)
 8048cf2:	e8 09 f8 ff ff       	call   8048500 <printf@plt>

	if(ef & EF_ARM_MAVERICK_FLOAT)
 8048cf7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048cfa:	25 00 08 00 00       	and    $0x800,%eax
 8048cff:	85 c0                	test   %eax,%eax
 8048d01:	74 0d                	je     8048d10 <print_elf_header+0x54b>
		printf(",MAVERICK_FLOAT ");
 8048d03:	b8 b6 9f 04 08       	mov    $0x8049fb6,%eax
 8048d08:	89 04 24             	mov    %eax,(%esp)
 8048d0b:	e8 f0 f7 ff ff       	call   8048500 <printf@plt>

	printf("\n");
 8048d10:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8048d17:	e8 b4 f8 ff ff       	call   80485d0 <putchar@plt>

	/* MSB of flags conatins ARM EABI version */
	printf("ARM EABI\t= Version %d\n", (ef & EF_ARM_EABIMASK)>>24);
 8048d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d1f:	89 c2                	mov    %eax,%edx
 8048d21:	c1 ea 18             	shr    $0x18,%edx
 8048d24:	b8 c7 9f 04 08       	mov    $0x8049fc7,%eax
 8048d29:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048d2d:	89 04 24             	mov    %eax,(%esp)
 8048d30:	e8 cb f7 ff ff       	call   8048500 <printf@plt>

	printf("\n");	/* End of ELF header */
 8048d35:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8048d3c:	e8 8f f8 ff ff       	call   80485d0 <putchar@plt>

}
 8048d41:	c9                   	leave  
 8048d42:	c3                   	ret    

08048d43 <read_section_header_table>:

void read_section_header_table(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[])
{
 8048d43:	55                   	push   %ebp
 8048d44:	89 e5                	mov    %esp,%ebp
 8048d46:	83 ec 28             	sub    $0x28,%esp
	uint32_t i;

	assert(lseek(fd, (off_t)eh.e_shoff, SEEK_SET) == (off_t)eh.e_shoff);
 8048d49:	8b 45 2c             	mov    0x2c(%ebp),%eax
 8048d4c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048d53:	00 
 8048d54:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d58:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d5b:	89 04 24             	mov    %eax,(%esp)
 8048d5e:	e8 bd f7 ff ff       	call   8048520 <lseek@plt>
 8048d63:	8b 55 2c             	mov    0x2c(%ebp),%edx
 8048d66:	39 d0                	cmp    %edx,%eax
 8048d68:	74 24                	je     8048d8e <read_section_header_table+0x4b>
 8048d6a:	c7 44 24 0c 4a a3 04 	movl   $0x804a34a,0xc(%esp)
 8048d71:	08 
 8048d72:	c7 44 24 08 0c 01 00 	movl   $0x10c,0x8(%esp)
 8048d79:	00 
 8048d7a:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 8048d81:	08 
 8048d82:	c7 04 24 e0 9f 04 08 	movl   $0x8049fe0,(%esp)
 8048d89:	e8 62 f8 ff ff       	call   80485f0 <__assert_fail@plt>

	for(i=0; i<eh.e_shnum; i++) {
 8048d8e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048d95:	eb 5d                	jmp    8048df4 <read_section_header_table+0xb1>
		assert(read(fd, (void *)&sh_table[i], eh.e_shentsize)
 8048d97:	0f b7 45 3a          	movzwl 0x3a(%ebp),%eax
 8048d9b:	0f b7 c8             	movzwl %ax,%ecx
 8048d9e:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048da1:	89 d0                	mov    %edx,%eax
 8048da3:	c1 e0 02             	shl    $0x2,%eax
 8048da6:	01 d0                	add    %edx,%eax
 8048da8:	c1 e0 03             	shl    $0x3,%eax
 8048dab:	03 45 40             	add    0x40(%ebp),%eax
 8048dae:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8048db2:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048db6:	8b 45 08             	mov    0x8(%ebp),%eax
 8048db9:	89 04 24             	mov    %eax,(%esp)
 8048dbc:	e8 2f f7 ff ff       	call   80484f0 <read@plt>
 8048dc1:	0f b7 55 3a          	movzwl 0x3a(%ebp),%edx
 8048dc5:	0f b7 d2             	movzwl %dx,%edx
 8048dc8:	39 d0                	cmp    %edx,%eax
 8048dca:	74 24                	je     8048df0 <read_section_header_table+0xad>
 8048dcc:	c7 44 24 0c 4a a3 04 	movl   $0x804a34a,0xc(%esp)
 8048dd3:	08 
 8048dd4:	c7 44 24 08 10 01 00 	movl   $0x110,0x8(%esp)
 8048ddb:	00 
 8048ddc:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 8048de3:	08 
 8048de4:	c7 04 24 18 a0 04 08 	movl   $0x804a018,(%esp)
 8048deb:	e8 00 f8 ff ff       	call   80485f0 <__assert_fail@plt>
{
	uint32_t i;

	assert(lseek(fd, (off_t)eh.e_shoff, SEEK_SET) == (off_t)eh.e_shoff);

	for(i=0; i<eh.e_shnum; i++) {
 8048df0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8048df4:	0f b7 45 3c          	movzwl 0x3c(%ebp),%eax
 8048df8:	0f b7 c0             	movzwl %ax,%eax
 8048dfb:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048dfe:	77 97                	ja     8048d97 <read_section_header_table+0x54>
		assert(read(fd, (void *)&sh_table[i], eh.e_shentsize)
			 == eh.e_shentsize);
	}

}
 8048e00:	c9                   	leave  
 8048e01:	c3                   	ret    

08048e02 <read_section>:

char * read_section(int32_t fd, Elf32_Shdr sh)
{
 8048e02:	55                   	push   %ebp
 8048e03:	89 e5                	mov    %esp,%ebp
 8048e05:	83 ec 28             	sub    $0x28,%esp
	char* buff = malloc(sh.sh_size);
 8048e08:	8b 45 20             	mov    0x20(%ebp),%eax
 8048e0b:	89 04 24             	mov    %eax,(%esp)
 8048e0e:	e8 3d f7 ff ff       	call   8048550 <malloc@plt>
 8048e13:	89 45 f4             	mov    %eax,-0xc(%ebp)
	if(!buff) {
 8048e16:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048e1a:	75 1c                	jne    8048e38 <read_section+0x36>
		printf("%s:Failed to allocate %dbytes\n",
 8048e1c:	8b 55 20             	mov    0x20(%ebp),%edx
 8048e1f:	b8 5c a0 04 08       	mov    $0x804a05c,%eax
 8048e24:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048e28:	c7 44 24 04 30 a3 04 	movl   $0x804a330,0x4(%esp)
 8048e2f:	08 
 8048e30:	89 04 24             	mov    %eax,(%esp)
 8048e33:	e8 c8 f6 ff ff       	call   8048500 <printf@plt>
			__func__, sh.sh_size);
	}

	assert(buff != NULL);
 8048e38:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048e3c:	75 24                	jne    8048e62 <read_section+0x60>
 8048e3e:	c7 44 24 0c 3d a3 04 	movl   $0x804a33d,0xc(%esp)
 8048e45:	08 
 8048e46:	c7 44 24 08 1d 01 00 	movl   $0x11d,0x8(%esp)
 8048e4d:	00 
 8048e4e:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 8048e55:	08 
 8048e56:	c7 04 24 7b a0 04 08 	movl   $0x804a07b,(%esp)
 8048e5d:	e8 8e f7 ff ff       	call   80485f0 <__assert_fail@plt>
	assert(lseek(fd, (off_t)sh.sh_offset, SEEK_SET) == (off_t)sh.sh_offset);
 8048e62:	8b 45 1c             	mov    0x1c(%ebp),%eax
 8048e65:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048e6c:	00 
 8048e6d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048e71:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e74:	89 04 24             	mov    %eax,(%esp)
 8048e77:	e8 a4 f6 ff ff       	call   8048520 <lseek@plt>
 8048e7c:	8b 55 1c             	mov    0x1c(%ebp),%edx
 8048e7f:	39 d0                	cmp    %edx,%eax
 8048e81:	74 24                	je     8048ea7 <read_section+0xa5>
 8048e83:	c7 44 24 0c 3d a3 04 	movl   $0x804a33d,0xc(%esp)
 8048e8a:	08 
 8048e8b:	c7 44 24 08 1e 01 00 	movl   $0x11e,0x8(%esp)
 8048e92:	00 
 8048e93:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 8048e9a:	08 
 8048e9b:	c7 04 24 90 a0 04 08 	movl   $0x804a090,(%esp)
 8048ea2:	e8 49 f7 ff ff       	call   80485f0 <__assert_fail@plt>
	assert(read(fd, (void *)buff, sh.sh_size) == sh.sh_size);
 8048ea7:	8b 45 20             	mov    0x20(%ebp),%eax
 8048eaa:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048eae:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048eb1:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048eb5:	8b 45 08             	mov    0x8(%ebp),%eax
 8048eb8:	89 04 24             	mov    %eax,(%esp)
 8048ebb:	e8 30 f6 ff ff       	call   80484f0 <read@plt>
 8048ec0:	89 c2                	mov    %eax,%edx
 8048ec2:	8b 45 20             	mov    0x20(%ebp),%eax
 8048ec5:	39 c2                	cmp    %eax,%edx
 8048ec7:	74 24                	je     8048eed <read_section+0xeb>
 8048ec9:	c7 44 24 0c 3d a3 04 	movl   $0x804a33d,0xc(%esp)
 8048ed0:	08 
 8048ed1:	c7 44 24 08 1f 01 00 	movl   $0x11f,0x8(%esp)
 8048ed8:	00 
 8048ed9:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 8048ee0:	08 
 8048ee1:	c7 04 24 cc a0 04 08 	movl   $0x804a0cc,(%esp)
 8048ee8:	e8 03 f7 ff ff       	call   80485f0 <__assert_fail@plt>

	return buff;
 8048eed:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
 8048ef0:	c9                   	leave  
 8048ef1:	c3                   	ret    

08048ef2 <print_section_headers>:

void print_section_headers(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[])
{
 8048ef2:	55                   	push   %ebp
 8048ef3:	89 e5                	mov    %esp,%ebp
 8048ef5:	83 ec 48             	sub    $0x48,%esp
	uint32_t i;
	char* sh_str;	/* section-header string-table is also a section. */

	/* Read section-header string-table */
	debug("eh.e_shstrndx = 0x%x\n", eh.e_shstrndx);
 8048ef8:	0f b7 45 3e          	movzwl 0x3e(%ebp),%eax
 8048efc:	0f b7 d0             	movzwl %ax,%edx
 8048eff:	b8 fd a0 04 08       	mov    $0x804a0fd,%eax
 8048f04:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048f08:	89 04 24             	mov    %eax,(%esp)
 8048f0b:	e8 f0 f5 ff ff       	call   8048500 <printf@plt>
	sh_str = read_section(fd, sh_table[eh.e_shstrndx]);
 8048f10:	0f b7 45 3e          	movzwl 0x3e(%ebp),%eax
 8048f14:	0f b7 d0             	movzwl %ax,%edx
 8048f17:	89 d0                	mov    %edx,%eax
 8048f19:	c1 e0 02             	shl    $0x2,%eax
 8048f1c:	01 d0                	add    %edx,%eax
 8048f1e:	c1 e0 03             	shl    $0x3,%eax
 8048f21:	03 45 40             	add    0x40(%ebp),%eax
 8048f24:	8b 10                	mov    (%eax),%edx
 8048f26:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048f2a:	8b 50 04             	mov    0x4(%eax),%edx
 8048f2d:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048f31:	8b 50 08             	mov    0x8(%eax),%edx
 8048f34:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048f38:	8b 50 0c             	mov    0xc(%eax),%edx
 8048f3b:	89 54 24 10          	mov    %edx,0x10(%esp)
 8048f3f:	8b 50 10             	mov    0x10(%eax),%edx
 8048f42:	89 54 24 14          	mov    %edx,0x14(%esp)
 8048f46:	8b 50 14             	mov    0x14(%eax),%edx
 8048f49:	89 54 24 18          	mov    %edx,0x18(%esp)
 8048f4d:	8b 50 18             	mov    0x18(%eax),%edx
 8048f50:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048f54:	8b 50 1c             	mov    0x1c(%eax),%edx
 8048f57:	89 54 24 20          	mov    %edx,0x20(%esp)
 8048f5b:	8b 50 20             	mov    0x20(%eax),%edx
 8048f5e:	89 54 24 24          	mov    %edx,0x24(%esp)
 8048f62:	8b 40 24             	mov    0x24(%eax),%eax
 8048f65:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048f69:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f6c:	89 04 24             	mov    %eax,(%esp)
 8048f6f:	e8 8e fe ff ff       	call   8048e02 <read_section>
 8048f74:	89 45 f4             	mov    %eax,-0xc(%ebp)

	printf("========================================");
 8048f77:	b8 1c a1 04 08       	mov    $0x804a11c,%eax
 8048f7c:	89 04 24             	mov    %eax,(%esp)
 8048f7f:	e8 7c f5 ff ff       	call   8048500 <printf@plt>
	printf("========================================\n");
 8048f84:	c7 04 24 1c a1 04 08 	movl   $0x804a11c,(%esp)
 8048f8b:	e8 d0 f5 ff ff       	call   8048560 <puts@plt>
	printf(" idx offset     load-addr  size       algn"
 8048f90:	c7 04 24 48 a1 04 08 	movl   $0x804a148,(%esp)
 8048f97:	e8 c4 f5 ff ff       	call   8048560 <puts@plt>
		 " flags      type       section\n");
	printf("========================================");
 8048f9c:	b8 1c a1 04 08       	mov    $0x804a11c,%eax
 8048fa1:	89 04 24             	mov    %eax,(%esp)
 8048fa4:	e8 57 f5 ff ff       	call   8048500 <printf@plt>
	printf("========================================\n");
 8048fa9:	c7 04 24 1c a1 04 08 	movl   $0x804a11c,(%esp)
 8048fb0:	e8 ab f5 ff ff       	call   8048560 <puts@plt>

	for(i=0; i<eh.e_shnum; i++) {
 8048fb5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048fbc:	e9 24 01 00 00       	jmp    80490e5 <print_section_headers+0x1f3>
		printf(" %03d ", i);
 8048fc1:	b8 91 a1 04 08       	mov    $0x804a191,%eax
 8048fc6:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048fc9:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048fcd:	89 04 24             	mov    %eax,(%esp)
 8048fd0:	e8 2b f5 ff ff       	call   8048500 <printf@plt>
		printf("0x%08x ", sh_table[i].sh_offset);
 8048fd5:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048fd8:	89 d0                	mov    %edx,%eax
 8048fda:	c1 e0 02             	shl    $0x2,%eax
 8048fdd:	01 d0                	add    %edx,%eax
 8048fdf:	c1 e0 03             	shl    $0x3,%eax
 8048fe2:	03 45 40             	add    0x40(%ebp),%eax
 8048fe5:	8b 50 10             	mov    0x10(%eax),%edx
 8048fe8:	b8 98 a1 04 08       	mov    $0x804a198,%eax
 8048fed:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048ff1:	89 04 24             	mov    %eax,(%esp)
 8048ff4:	e8 07 f5 ff ff       	call   8048500 <printf@plt>
		printf("0x%08x ", sh_table[i].sh_addr);
 8048ff9:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8048ffc:	89 d0                	mov    %edx,%eax
 8048ffe:	c1 e0 02             	shl    $0x2,%eax
 8049001:	01 d0                	add    %edx,%eax
 8049003:	c1 e0 03             	shl    $0x3,%eax
 8049006:	03 45 40             	add    0x40(%ebp),%eax
 8049009:	8b 50 0c             	mov    0xc(%eax),%edx
 804900c:	b8 98 a1 04 08       	mov    $0x804a198,%eax
 8049011:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049015:	89 04 24             	mov    %eax,(%esp)
 8049018:	e8 e3 f4 ff ff       	call   8048500 <printf@plt>
		printf("0x%08x ", sh_table[i].sh_size);
 804901d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049020:	89 d0                	mov    %edx,%eax
 8049022:	c1 e0 02             	shl    $0x2,%eax
 8049025:	01 d0                	add    %edx,%eax
 8049027:	c1 e0 03             	shl    $0x3,%eax
 804902a:	03 45 40             	add    0x40(%ebp),%eax
 804902d:	8b 50 14             	mov    0x14(%eax),%edx
 8049030:	b8 98 a1 04 08       	mov    $0x804a198,%eax
 8049035:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049039:	89 04 24             	mov    %eax,(%esp)
 804903c:	e8 bf f4 ff ff       	call   8048500 <printf@plt>
		printf("%4d ", sh_table[i].sh_addralign);
 8049041:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049044:	89 d0                	mov    %edx,%eax
 8049046:	c1 e0 02             	shl    $0x2,%eax
 8049049:	01 d0                	add    %edx,%eax
 804904b:	c1 e0 03             	shl    $0x3,%eax
 804904e:	03 45 40             	add    0x40(%ebp),%eax
 8049051:	8b 50 20             	mov    0x20(%eax),%edx
 8049054:	b8 a0 a1 04 08       	mov    $0x804a1a0,%eax
 8049059:	89 54 24 04          	mov    %edx,0x4(%esp)
 804905d:	89 04 24             	mov    %eax,(%esp)
 8049060:	e8 9b f4 ff ff       	call   8048500 <printf@plt>
		printf("0x%08x ", sh_table[i].sh_flags);
 8049065:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049068:	89 d0                	mov    %edx,%eax
 804906a:	c1 e0 02             	shl    $0x2,%eax
 804906d:	01 d0                	add    %edx,%eax
 804906f:	c1 e0 03             	shl    $0x3,%eax
 8049072:	03 45 40             	add    0x40(%ebp),%eax
 8049075:	8b 50 08             	mov    0x8(%eax),%edx
 8049078:	b8 98 a1 04 08       	mov    $0x804a198,%eax
 804907d:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049081:	89 04 24             	mov    %eax,(%esp)
 8049084:	e8 77 f4 ff ff       	call   8048500 <printf@plt>
		printf("0x%08x ", sh_table[i].sh_type);
 8049089:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804908c:	89 d0                	mov    %edx,%eax
 804908e:	c1 e0 02             	shl    $0x2,%eax
 8049091:	01 d0                	add    %edx,%eax
 8049093:	c1 e0 03             	shl    $0x3,%eax
 8049096:	03 45 40             	add    0x40(%ebp),%eax
 8049099:	8b 50 04             	mov    0x4(%eax),%edx
 804909c:	b8 98 a1 04 08       	mov    $0x804a198,%eax
 80490a1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80490a5:	89 04 24             	mov    %eax,(%esp)
 80490a8:	e8 53 f4 ff ff       	call   8048500 <printf@plt>
		printf("%s\t", (sh_str + sh_table[i].sh_name));
 80490ad:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80490b0:	89 d0                	mov    %edx,%eax
 80490b2:	c1 e0 02             	shl    $0x2,%eax
 80490b5:	01 d0                	add    %edx,%eax
 80490b7:	c1 e0 03             	shl    $0x3,%eax
 80490ba:	03 45 40             	add    0x40(%ebp),%eax
 80490bd:	8b 00                	mov    (%eax),%eax
 80490bf:	89 c2                	mov    %eax,%edx
 80490c1:	03 55 f4             	add    -0xc(%ebp),%edx
 80490c4:	b8 a5 a1 04 08       	mov    $0x804a1a5,%eax
 80490c9:	89 54 24 04          	mov    %edx,0x4(%esp)
 80490cd:	89 04 24             	mov    %eax,(%esp)
 80490d0:	e8 2b f4 ff ff       	call   8048500 <printf@plt>
		printf("\n");
 80490d5:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80490dc:	e8 ef f4 ff ff       	call   80485d0 <putchar@plt>
	printf(" idx offset     load-addr  size       algn"
		 " flags      type       section\n");
	printf("========================================");
	printf("========================================\n");

	for(i=0; i<eh.e_shnum; i++) {
 80490e1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80490e5:	0f b7 45 3c          	movzwl 0x3c(%ebp),%eax
 80490e9:	0f b7 c0             	movzwl %ax,%eax
 80490ec:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 80490ef:	0f 87 cc fe ff ff    	ja     8048fc1 <print_section_headers+0xcf>
		printf("0x%08x ", sh_table[i].sh_flags);
		printf("0x%08x ", sh_table[i].sh_type);
		printf("%s\t", (sh_str + sh_table[i].sh_name));
		printf("\n");
	}
	printf("========================================");
 80490f5:	b8 1c a1 04 08       	mov    $0x804a11c,%eax
 80490fa:	89 04 24             	mov    %eax,(%esp)
 80490fd:	e8 fe f3 ff ff       	call   8048500 <printf@plt>
	printf("========================================\n");
 8049102:	c7 04 24 1c a1 04 08 	movl   $0x804a11c,(%esp)
 8049109:	e8 52 f4 ff ff       	call   8048560 <puts@plt>
	printf("\n");	/* end of section header table */
 804910e:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8049115:	e8 b6 f4 ff ff       	call   80485d0 <putchar@plt>
}
 804911a:	c9                   	leave  
 804911b:	c3                   	ret    

0804911c <print_symbol_table>:

void print_symbol_table(int32_t fd,
			Elf32_Ehdr eh,
			Elf32_Shdr sh_table[],
			uint32_t symbol_table)
{
 804911c:	55                   	push   %ebp
 804911d:	89 e5                	mov    %esp,%ebp
 804911f:	83 ec 58             	sub    $0x58,%esp

	char *str_tbl;
	Elf32_Sym* sym_tbl;
	uint32_t i, symbol_count;

	sym_tbl = (Elf32_Sym*)read_section(fd, sh_table[symbol_table]);
 8049122:	8b 55 44             	mov    0x44(%ebp),%edx
 8049125:	89 d0                	mov    %edx,%eax
 8049127:	c1 e0 02             	shl    $0x2,%eax
 804912a:	01 d0                	add    %edx,%eax
 804912c:	c1 e0 03             	shl    $0x3,%eax
 804912f:	03 45 40             	add    0x40(%ebp),%eax
 8049132:	8b 10                	mov    (%eax),%edx
 8049134:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049138:	8b 50 04             	mov    0x4(%eax),%edx
 804913b:	89 54 24 08          	mov    %edx,0x8(%esp)
 804913f:	8b 50 08             	mov    0x8(%eax),%edx
 8049142:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049146:	8b 50 0c             	mov    0xc(%eax),%edx
 8049149:	89 54 24 10          	mov    %edx,0x10(%esp)
 804914d:	8b 50 10             	mov    0x10(%eax),%edx
 8049150:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049154:	8b 50 14             	mov    0x14(%eax),%edx
 8049157:	89 54 24 18          	mov    %edx,0x18(%esp)
 804915b:	8b 50 18             	mov    0x18(%eax),%edx
 804915e:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8049162:	8b 50 1c             	mov    0x1c(%eax),%edx
 8049165:	89 54 24 20          	mov    %edx,0x20(%esp)
 8049169:	8b 50 20             	mov    0x20(%eax),%edx
 804916c:	89 54 24 24          	mov    %edx,0x24(%esp)
 8049170:	8b 40 24             	mov    0x24(%eax),%eax
 8049173:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049177:	8b 45 08             	mov    0x8(%ebp),%eax
 804917a:	89 04 24             	mov    %eax,(%esp)
 804917d:	e8 80 fc ff ff       	call   8048e02 <read_section>
 8049182:	89 45 e8             	mov    %eax,-0x18(%ebp)

	/* Read linked string-table
	 * Section containing the string table having names of
	 * symbols of this section
	 */
	uint32_t str_tbl_ndx = sh_table[symbol_table].sh_link;
 8049185:	8b 55 44             	mov    0x44(%ebp),%edx
 8049188:	89 d0                	mov    %edx,%eax
 804918a:	c1 e0 02             	shl    $0x2,%eax
 804918d:	01 d0                	add    %edx,%eax
 804918f:	c1 e0 03             	shl    $0x3,%eax
 8049192:	03 45 40             	add    0x40(%ebp),%eax
 8049195:	8b 40 18             	mov    0x18(%eax),%eax
 8049198:	89 45 ec             	mov    %eax,-0x14(%ebp)
	debug("str_table_ndx = 0x%x\n", str_tbl_ndx);
 804919b:	b8 a9 a1 04 08       	mov    $0x804a1a9,%eax
 80491a0:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80491a3:	89 54 24 04          	mov    %edx,0x4(%esp)
 80491a7:	89 04 24             	mov    %eax,(%esp)
 80491aa:	e8 51 f3 ff ff       	call   8048500 <printf@plt>
	str_tbl = read_section(fd, sh_table[str_tbl_ndx]);
 80491af:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80491b2:	89 d0                	mov    %edx,%eax
 80491b4:	c1 e0 02             	shl    $0x2,%eax
 80491b7:	01 d0                	add    %edx,%eax
 80491b9:	c1 e0 03             	shl    $0x3,%eax
 80491bc:	03 45 40             	add    0x40(%ebp),%eax
 80491bf:	8b 10                	mov    (%eax),%edx
 80491c1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80491c5:	8b 50 04             	mov    0x4(%eax),%edx
 80491c8:	89 54 24 08          	mov    %edx,0x8(%esp)
 80491cc:	8b 50 08             	mov    0x8(%eax),%edx
 80491cf:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80491d3:	8b 50 0c             	mov    0xc(%eax),%edx
 80491d6:	89 54 24 10          	mov    %edx,0x10(%esp)
 80491da:	8b 50 10             	mov    0x10(%eax),%edx
 80491dd:	89 54 24 14          	mov    %edx,0x14(%esp)
 80491e1:	8b 50 14             	mov    0x14(%eax),%edx
 80491e4:	89 54 24 18          	mov    %edx,0x18(%esp)
 80491e8:	8b 50 18             	mov    0x18(%eax),%edx
 80491eb:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 80491ef:	8b 50 1c             	mov    0x1c(%eax),%edx
 80491f2:	89 54 24 20          	mov    %edx,0x20(%esp)
 80491f6:	8b 50 20             	mov    0x20(%eax),%edx
 80491f9:	89 54 24 24          	mov    %edx,0x24(%esp)
 80491fd:	8b 40 24             	mov    0x24(%eax),%eax
 8049200:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049204:	8b 45 08             	mov    0x8(%ebp),%eax
 8049207:	89 04 24             	mov    %eax,(%esp)
 804920a:	e8 f3 fb ff ff       	call   8048e02 <read_section>
 804920f:	89 45 f0             	mov    %eax,-0x10(%ebp)

	symbol_count = (sh_table[symbol_table].sh_size/sizeof(Elf32_Sym));
 8049212:	8b 55 44             	mov    0x44(%ebp),%edx
 8049215:	89 d0                	mov    %edx,%eax
 8049217:	c1 e0 02             	shl    $0x2,%eax
 804921a:	01 d0                	add    %edx,%eax
 804921c:	c1 e0 03             	shl    $0x3,%eax
 804921f:	03 45 40             	add    0x40(%ebp),%eax
 8049222:	8b 40 14             	mov    0x14(%eax),%eax
 8049225:	c1 e8 04             	shr    $0x4,%eax
 8049228:	89 45 f4             	mov    %eax,-0xc(%ebp)
	printf("%d symbols\n", symbol_count);
 804922b:	b8 c7 a1 04 08       	mov    $0x804a1c7,%eax
 8049230:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049233:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049237:	89 04 24             	mov    %eax,(%esp)
 804923a:	e8 c1 f2 ff ff       	call   8048500 <printf@plt>

	for(i=0; i< symbol_count; i++) {
 804923f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 8049246:	e9 81 00 00 00       	jmp    80492cc <print_symbol_table+0x1b0>
		printf("0x%08x ", sym_tbl[i].st_value);
 804924b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804924e:	c1 e0 04             	shl    $0x4,%eax
 8049251:	03 45 e8             	add    -0x18(%ebp),%eax
 8049254:	8b 50 04             	mov    0x4(%eax),%edx
 8049257:	b8 98 a1 04 08       	mov    $0x804a198,%eax
 804925c:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049260:	89 04 24             	mov    %eax,(%esp)
 8049263:	e8 98 f2 ff ff       	call   8048500 <printf@plt>
		printf("0x%02x ", ELF32_ST_BIND(sym_tbl[i].st_info));
 8049268:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804926b:	c1 e0 04             	shl    $0x4,%eax
 804926e:	03 45 e8             	add    -0x18(%ebp),%eax
 8049271:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
 8049275:	c0 e8 04             	shr    $0x4,%al
 8049278:	0f b6 d0             	movzbl %al,%edx
 804927b:	b8 d3 a1 04 08       	mov    $0x804a1d3,%eax
 8049280:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049284:	89 04 24             	mov    %eax,(%esp)
 8049287:	e8 74 f2 ff ff       	call   8048500 <printf@plt>
		printf("0x%02x ", ELF32_ST_TYPE(sym_tbl[i].st_info));
 804928c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804928f:	c1 e0 04             	shl    $0x4,%eax
 8049292:	03 45 e8             	add    -0x18(%ebp),%eax
 8049295:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
 8049299:	0f b6 c0             	movzbl %al,%eax
 804929c:	89 c2                	mov    %eax,%edx
 804929e:	83 e2 0f             	and    $0xf,%edx
 80492a1:	b8 d3 a1 04 08       	mov    $0x804a1d3,%eax
 80492a6:	89 54 24 04          	mov    %edx,0x4(%esp)
 80492aa:	89 04 24             	mov    %eax,(%esp)
 80492ad:	e8 4e f2 ff ff       	call   8048500 <printf@plt>
		printf("%s\n", (str_tbl + sym_tbl[i].st_name));
 80492b2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80492b5:	c1 e0 04             	shl    $0x4,%eax
 80492b8:	03 45 e8             	add    -0x18(%ebp),%eax
 80492bb:	8b 00                	mov    (%eax),%eax
 80492bd:	03 45 f0             	add    -0x10(%ebp),%eax
 80492c0:	89 04 24             	mov    %eax,(%esp)
 80492c3:	e8 98 f2 ff ff       	call   8048560 <puts@plt>
	str_tbl = read_section(fd, sh_table[str_tbl_ndx]);

	symbol_count = (sh_table[symbol_table].sh_size/sizeof(Elf32_Sym));
	printf("%d symbols\n", symbol_count);

	for(i=0; i< symbol_count; i++) {
 80492c8:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 80492cc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80492cf:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 80492d2:	0f 82 73 ff ff ff    	jb     804924b <print_symbol_table+0x12f>
		printf("0x%08x ", sym_tbl[i].st_value);
		printf("0x%02x ", ELF32_ST_BIND(sym_tbl[i].st_info));
		printf("0x%02x ", ELF32_ST_TYPE(sym_tbl[i].st_info));
		printf("%s\n", (str_tbl + sym_tbl[i].st_name));
	}
}
 80492d8:	c9                   	leave  
 80492d9:	c3                   	ret    

080492da <print_symbols>:

void print_symbols(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[])
{
 80492da:	55                   	push   %ebp
 80492db:	89 e5                	mov    %esp,%ebp
 80492dd:	83 ec 58             	sub    $0x58,%esp
	uint32_t i;

	for(i=0; i<eh.e_shnum; i++) {
 80492e0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80492e7:	e9 c0 00 00 00       	jmp    80493ac <print_symbols+0xd2>
		if ((sh_table[i].sh_type==SHT_SYMTAB)
 80492ec:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80492ef:	89 d0                	mov    %edx,%eax
 80492f1:	c1 e0 02             	shl    $0x2,%eax
 80492f4:	01 d0                	add    %edx,%eax
 80492f6:	c1 e0 03             	shl    $0x3,%eax
 80492f9:	03 45 40             	add    0x40(%ebp),%eax
 80492fc:	8b 40 04             	mov    0x4(%eax),%eax
 80492ff:	83 f8 02             	cmp    $0x2,%eax
 8049302:	74 1c                	je     8049320 <print_symbols+0x46>
		 || (sh_table[i].sh_type==SHT_DYNSYM)) {
 8049304:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049307:	89 d0                	mov    %edx,%eax
 8049309:	c1 e0 02             	shl    $0x2,%eax
 804930c:	01 d0                	add    %edx,%eax
 804930e:	c1 e0 03             	shl    $0x3,%eax
 8049311:	03 45 40             	add    0x40(%ebp),%eax
 8049314:	8b 40 04             	mov    0x4(%eax),%eax
 8049317:	83 f8 0b             	cmp    $0xb,%eax
 804931a:	0f 85 88 00 00 00    	jne    80493a8 <print_symbols+0xce>
			printf("\n[Section %03d]", i);
 8049320:	b8 db a1 04 08       	mov    $0x804a1db,%eax
 8049325:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049328:	89 54 24 04          	mov    %edx,0x4(%esp)
 804932c:	89 04 24             	mov    %eax,(%esp)
 804932f:	e8 cc f1 ff ff       	call   8048500 <printf@plt>
			print_symbol_table(fd, eh, sh_table, i);
 8049334:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049337:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 804933b:	8b 45 40             	mov    0x40(%ebp),%eax
 804933e:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049342:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049345:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049349:	8b 45 10             	mov    0x10(%ebp),%eax
 804934c:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049350:	8b 45 14             	mov    0x14(%ebp),%eax
 8049353:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049357:	8b 45 18             	mov    0x18(%ebp),%eax
 804935a:	89 44 24 10          	mov    %eax,0x10(%esp)
 804935e:	8b 45 1c             	mov    0x1c(%ebp),%eax
 8049361:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049365:	8b 45 20             	mov    0x20(%ebp),%eax
 8049368:	89 44 24 18          	mov    %eax,0x18(%esp)
 804936c:	8b 45 24             	mov    0x24(%ebp),%eax
 804936f:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049373:	8b 45 28             	mov    0x28(%ebp),%eax
 8049376:	89 44 24 20          	mov    %eax,0x20(%esp)
 804937a:	8b 45 2c             	mov    0x2c(%ebp),%eax
 804937d:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049381:	8b 45 30             	mov    0x30(%ebp),%eax
 8049384:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049388:	8b 45 34             	mov    0x34(%ebp),%eax
 804938b:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804938f:	8b 45 38             	mov    0x38(%ebp),%eax
 8049392:	89 44 24 30          	mov    %eax,0x30(%esp)
 8049396:	8b 45 3c             	mov    0x3c(%ebp),%eax
 8049399:	89 44 24 34          	mov    %eax,0x34(%esp)
 804939d:	8b 45 08             	mov    0x8(%ebp),%eax
 80493a0:	89 04 24             	mov    %eax,(%esp)
 80493a3:	e8 74 fd ff ff       	call   804911c <print_symbol_table>

void print_symbols(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[])
{
	uint32_t i;

	for(i=0; i<eh.e_shnum; i++) {
 80493a8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 80493ac:	0f b7 45 3c          	movzwl 0x3c(%ebp),%eax
 80493b0:	0f b7 c0             	movzwl %ax,%eax
 80493b3:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 80493b6:	0f 87 30 ff ff ff    	ja     80492ec <print_symbols+0x12>
		 || (sh_table[i].sh_type==SHT_DYNSYM)) {
			printf("\n[Section %03d]", i);
			print_symbol_table(fd, eh, sh_table, i);
		}
	}
}
 80493bc:	c9                   	leave  
 80493bd:	c3                   	ret    

080493be <save_text_section>:

void save_text_section(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[])
{
 80493be:	55                   	push   %ebp
 80493bf:	89 e5                	mov    %esp,%ebp
 80493c1:	57                   	push   %edi
 80493c2:	56                   	push   %esi
 80493c3:	53                   	push   %ebx
 80493c4:	83 ec 6c             	sub    $0x6c,%esp
	int32_t fd2;	/* to write text.S in current directory */
	char* sh_str;	/* section-header string-table is also a section. */
	char* buf;	/* buffer to hold contents of the .text section */

	/*   */
	char *pwd = getcwd(NULL, (size_t)NULL); 
 80493c7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80493ce:	00 
 80493cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80493d6:	e8 b5 f1 ff ff       	call   8048590 <getcwd@plt>
 80493db:	89 45 dc             	mov    %eax,-0x24(%ebp)
	printf("%s\n", pwd);
 80493de:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80493e1:	89 04 24             	mov    %eax,(%esp)
 80493e4:	e8 77 f1 ff ff       	call   8048560 <puts@plt>
	pwd = realloc(pwd, strlen(pwd)+8);
 80493e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80493ec:	c7 45 c4 ff ff ff ff 	movl   $0xffffffff,-0x3c(%ebp)
 80493f3:	89 c2                	mov    %eax,%edx
 80493f5:	b8 00 00 00 00       	mov    $0x0,%eax
 80493fa:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
 80493fd:	89 d7                	mov    %edx,%edi
 80493ff:	f2 ae                	repnz scas %es:(%edi),%al
 8049401:	89 c8                	mov    %ecx,%eax
 8049403:	f7 d0                	not    %eax
 8049405:	83 e8 01             	sub    $0x1,%eax
 8049408:	83 c0 08             	add    $0x8,%eax
 804940b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804940f:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049412:	89 04 24             	mov    %eax,(%esp)
 8049415:	e8 26 f1 ff ff       	call   8048540 <realloc@plt>
 804941a:	89 45 dc             	mov    %eax,-0x24(%ebp)
	strcat(pwd,"/text.S");
 804941d:	ba eb a1 04 08       	mov    $0x804a1eb,%edx
 8049422:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049425:	c7 45 c4 ff ff ff ff 	movl   $0xffffffff,-0x3c(%ebp)
 804942c:	89 c3                	mov    %eax,%ebx
 804942e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049433:	8b 4d c4             	mov    -0x3c(%ebp),%ecx
 8049436:	89 df                	mov    %ebx,%edi
 8049438:	f2 ae                	repnz scas %es:(%edi),%al
 804943a:	89 c8                	mov    %ecx,%eax
 804943c:	f7 d0                	not    %eax
 804943e:	83 e8 01             	sub    $0x1,%eax
 8049441:	03 45 dc             	add    -0x24(%ebp),%eax
 8049444:	8b 0a                	mov    (%edx),%ecx
 8049446:	89 08                	mov    %ecx,(%eax)
 8049448:	8b 52 04             	mov    0x4(%edx),%edx
 804944b:	89 50 04             	mov    %edx,0x4(%eax)
	printf("%s\n", pwd);
 804944e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8049451:	89 04 24             	mov    %eax,(%esp)
 8049454:	e8 07 f1 ff ff       	call   8048560 <puts@plt>

	/* Read section-header string-table */
	debug("eh.e_shstrndx = 0x%x\n", eh.e_shstrndx);
 8049459:	0f b7 45 3e          	movzwl 0x3e(%ebp),%eax
 804945d:	0f b7 d0             	movzwl %ax,%edx
 8049460:	b8 fd a0 04 08       	mov    $0x804a0fd,%eax
 8049465:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049469:	89 04 24             	mov    %eax,(%esp)
 804946c:	e8 8f f0 ff ff       	call   8048500 <printf@plt>
	sh_str = read_section(fd, sh_table[eh.e_shstrndx]);
 8049471:	0f b7 45 3e          	movzwl 0x3e(%ebp),%eax
 8049475:	0f b7 d0             	movzwl %ax,%edx
 8049478:	89 d0                	mov    %edx,%eax
 804947a:	c1 e0 02             	shl    $0x2,%eax
 804947d:	01 d0                	add    %edx,%eax
 804947f:	c1 e0 03             	shl    $0x3,%eax
 8049482:	03 45 40             	add    0x40(%ebp),%eax
 8049485:	8b 10                	mov    (%eax),%edx
 8049487:	89 54 24 04          	mov    %edx,0x4(%esp)
 804948b:	8b 50 04             	mov    0x4(%eax),%edx
 804948e:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049492:	8b 50 08             	mov    0x8(%eax),%edx
 8049495:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049499:	8b 50 0c             	mov    0xc(%eax),%edx
 804949c:	89 54 24 10          	mov    %edx,0x10(%esp)
 80494a0:	8b 50 10             	mov    0x10(%eax),%edx
 80494a3:	89 54 24 14          	mov    %edx,0x14(%esp)
 80494a7:	8b 50 14             	mov    0x14(%eax),%edx
 80494aa:	89 54 24 18          	mov    %edx,0x18(%esp)
 80494ae:	8b 50 18             	mov    0x18(%eax),%edx
 80494b1:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 80494b5:	8b 50 1c             	mov    0x1c(%eax),%edx
 80494b8:	89 54 24 20          	mov    %edx,0x20(%esp)
 80494bc:	8b 50 20             	mov    0x20(%eax),%edx
 80494bf:	89 54 24 24          	mov    %edx,0x24(%esp)
 80494c3:	8b 40 24             	mov    0x24(%eax),%eax
 80494c6:	89 44 24 28          	mov    %eax,0x28(%esp)
 80494ca:	8b 45 08             	mov    0x8(%ebp),%eax
 80494cd:	89 04 24             	mov    %eax,(%esp)
 80494d0:	e8 2d f9 ff ff       	call   8048e02 <read_section>
 80494d5:	89 45 e0             	mov    %eax,-0x20(%ebp)

	for(i=0; i<eh.e_shnum; i++) {
 80494d8:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 80494df:	e9 92 00 00 00       	jmp    8049576 <save_text_section+0x1b8>
		if(!strcmp(".text", (sh_str + sh_table[i].sh_name))) {
 80494e4:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80494e7:	89 d0                	mov    %edx,%eax
 80494e9:	c1 e0 02             	shl    $0x2,%eax
 80494ec:	01 d0                	add    %edx,%eax
 80494ee:	c1 e0 03             	shl    $0x3,%eax
 80494f1:	03 45 40             	add    0x40(%ebp),%eax
 80494f4:	8b 00                	mov    (%eax),%eax
 80494f6:	03 45 e0             	add    -0x20(%ebp),%eax
 80494f9:	ba f3 a1 04 08       	mov    $0x804a1f3,%edx
 80494fe:	b9 06 00 00 00       	mov    $0x6,%ecx
 8049503:	89 d6                	mov    %edx,%esi
 8049505:	89 c7                	mov    %eax,%edi
 8049507:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
 8049509:	0f 97 c2             	seta   %dl
 804950c:	0f 92 c0             	setb   %al
 804950f:	89 d1                	mov    %edx,%ecx
 8049511:	28 c1                	sub    %al,%cl
 8049513:	89 c8                	mov    %ecx,%eax
 8049515:	0f be c0             	movsbl %al,%eax
 8049518:	85 c0                	test   %eax,%eax
 804951a:	75 56                	jne    8049572 <save_text_section+0x1b4>
			printf("Found section\t\".text\"\n");
 804951c:	c7 04 24 f9 a1 04 08 	movl   $0x804a1f9,(%esp)
 8049523:	e8 38 f0 ff ff       	call   8048560 <puts@plt>
			printf("at offset\t0x%08x\n", sh_table[i].sh_offset);
 8049528:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804952b:	89 d0                	mov    %edx,%eax
 804952d:	c1 e0 02             	shl    $0x2,%eax
 8049530:	01 d0                	add    %edx,%eax
 8049532:	c1 e0 03             	shl    $0x3,%eax
 8049535:	03 45 40             	add    0x40(%ebp),%eax
 8049538:	8b 50 10             	mov    0x10(%eax),%edx
 804953b:	b8 0f a2 04 08       	mov    $0x804a20f,%eax
 8049540:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049544:	89 04 24             	mov    %eax,(%esp)
 8049547:	e8 b4 ef ff ff       	call   8048500 <printf@plt>
			printf("of size\t\t0x%08x\n", sh_table[i].sh_size);
 804954c:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804954f:	89 d0                	mov    %edx,%eax
 8049551:	c1 e0 02             	shl    $0x2,%eax
 8049554:	01 d0                	add    %edx,%eax
 8049556:	c1 e0 03             	shl    $0x3,%eax
 8049559:	03 45 40             	add    0x40(%ebp),%eax
 804955c:	8b 50 14             	mov    0x14(%eax),%edx
 804955f:	b8 21 a2 04 08       	mov    $0x804a221,%eax
 8049564:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049568:	89 04 24             	mov    %eax,(%esp)
 804956b:	e8 90 ef ff ff       	call   8048500 <printf@plt>

			break;
 8049570:	eb 14                	jmp    8049586 <save_text_section+0x1c8>

	/* Read section-header string-table */
	debug("eh.e_shstrndx = 0x%x\n", eh.e_shstrndx);
	sh_str = read_section(fd, sh_table[eh.e_shstrndx]);

	for(i=0; i<eh.e_shnum; i++) {
 8049572:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 8049576:	0f b7 45 3c          	movzwl 0x3c(%ebp),%eax
 804957a:	0f b7 c0             	movzwl %ax,%eax
 804957d:	3b 45 d4             	cmp    -0x2c(%ebp),%eax
 8049580:	0f 87 5e ff ff ff    	ja     80494e4 <save_text_section+0x126>

			break;
		}
	}

	assert(lseek(fd, sh_table[i].sh_offset, SEEK_SET)==sh_table[i].sh_offset);
 8049586:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8049589:	89 d0                	mov    %edx,%eax
 804958b:	c1 e0 02             	shl    $0x2,%eax
 804958e:	01 d0                	add    %edx,%eax
 8049590:	c1 e0 03             	shl    $0x3,%eax
 8049593:	03 45 40             	add    0x40(%ebp),%eax
 8049596:	8b 40 10             	mov    0x10(%eax),%eax
 8049599:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80495a0:	00 
 80495a1:	89 44 24 04          	mov    %eax,0x4(%esp)
 80495a5:	8b 45 08             	mov    0x8(%ebp),%eax
 80495a8:	89 04 24             	mov    %eax,(%esp)
 80495ab:	e8 70 ef ff ff       	call   8048520 <lseek@plt>
 80495b0:	89 c1                	mov    %eax,%ecx
 80495b2:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80495b5:	89 d0                	mov    %edx,%eax
 80495b7:	c1 e0 02             	shl    $0x2,%eax
 80495ba:	01 d0                	add    %edx,%eax
 80495bc:	c1 e0 03             	shl    $0x3,%eax
 80495bf:	03 45 40             	add    0x40(%ebp),%eax
 80495c2:	8b 40 10             	mov    0x10(%eax),%eax
 80495c5:	39 c1                	cmp    %eax,%ecx
 80495c7:	74 24                	je     80495ed <save_text_section+0x22f>
 80495c9:	c7 44 24 0c 1e a3 04 	movl   $0x804a31e,0xc(%esp)
 80495d0:	08 
 80495d1:	c7 44 24 08 8c 01 00 	movl   $0x18c,0x8(%esp)
 80495d8:	00 
 80495d9:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 80495e0:	08 
 80495e1:	c7 04 24 34 a2 04 08 	movl   $0x804a234,(%esp)
 80495e8:	e8 03 f0 ff ff       	call   80485f0 <__assert_fail@plt>
	buf = malloc(sh_table[i].sh_size);
 80495ed:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80495f0:	89 d0                	mov    %edx,%eax
 80495f2:	c1 e0 02             	shl    $0x2,%eax
 80495f5:	01 d0                	add    %edx,%eax
 80495f7:	c1 e0 03             	shl    $0x3,%eax
 80495fa:	03 45 40             	add    0x40(%ebp),%eax
 80495fd:	8b 40 14             	mov    0x14(%eax),%eax
 8049600:	89 04 24             	mov    %eax,(%esp)
 8049603:	e8 48 ef ff ff       	call   8048550 <malloc@plt>
 8049608:	89 45 e4             	mov    %eax,-0x1c(%ebp)
	if(!buf) {
 804960b:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804960f:	75 29                	jne    804963a <save_text_section+0x27c>
		printf("Failed to allocate %dbytes!!\n", sh_table[i].sh_size);
 8049611:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8049614:	89 d0                	mov    %edx,%eax
 8049616:	c1 e0 02             	shl    $0x2,%eax
 8049619:	01 d0                	add    %edx,%eax
 804961b:	c1 e0 03             	shl    $0x3,%eax
 804961e:	03 45 40             	add    0x40(%ebp),%eax
 8049621:	8b 50 14             	mov    0x14(%eax),%edx
 8049624:	b8 6f a2 04 08       	mov    $0x804a26f,%eax
 8049629:	89 54 24 04          	mov    %edx,0x4(%esp)
 804962d:	89 04 24             	mov    %eax,(%esp)
 8049630:	e8 cb ee ff ff       	call   8048500 <printf@plt>
		goto EXIT;
 8049635:	e9 b0 00 00 00       	jmp    80496ea <save_text_section+0x32c>
	}
	assert(read(fd, buf, sh_table[i].sh_size)==sh_table[i].sh_size);
 804963a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804963d:	89 d0                	mov    %edx,%eax
 804963f:	c1 e0 02             	shl    $0x2,%eax
 8049642:	01 d0                	add    %edx,%eax
 8049644:	c1 e0 03             	shl    $0x3,%eax
 8049647:	03 45 40             	add    0x40(%ebp),%eax
 804964a:	8b 40 14             	mov    0x14(%eax),%eax
 804964d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049651:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049654:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049658:	8b 45 08             	mov    0x8(%ebp),%eax
 804965b:	89 04 24             	mov    %eax,(%esp)
 804965e:	e8 8d ee ff ff       	call   80484f0 <read@plt>
 8049663:	89 c1                	mov    %eax,%ecx
 8049665:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8049668:	89 d0                	mov    %edx,%eax
 804966a:	c1 e0 02             	shl    $0x2,%eax
 804966d:	01 d0                	add    %edx,%eax
 804966f:	c1 e0 03             	shl    $0x3,%eax
 8049672:	03 45 40             	add    0x40(%ebp),%eax
 8049675:	8b 40 14             	mov    0x14(%eax),%eax
 8049678:	39 c1                	cmp    %eax,%ecx
 804967a:	74 24                	je     80496a0 <save_text_section+0x2e2>
 804967c:	c7 44 24 0c 1e a3 04 	movl   $0x804a31e,0xc(%esp)
 8049683:	08 
 8049684:	c7 44 24 08 92 01 00 	movl   $0x192,0x8(%esp)
 804968b:	00 
 804968c:	c7 44 24 04 00 9c 04 	movl   $0x8049c00,0x4(%esp)
 8049693:	08 
 8049694:	c7 04 24 90 a2 04 08 	movl   $0x804a290,(%esp)
 804969b:	e8 50 ef ff ff       	call   80485f0 <__assert_fail@plt>
	fd2 = open(pwd, O_RDWR|O_SYNC|O_CREAT);
 80496a0:	c7 44 24 04 42 10 10 	movl   $0x101042,0x4(%esp)
 80496a7:	00 
 80496a8:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80496ab:	89 04 24             	mov    %eax,(%esp)
 80496ae:	e8 cd ee ff ff       	call   8048580 <open@plt>
 80496b3:	89 45 d8             	mov    %eax,-0x28(%ebp)
	write(fd2, buf, sh_table[i].sh_size);
 80496b6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 80496b9:	89 d0                	mov    %edx,%eax
 80496bb:	c1 e0 02             	shl    $0x2,%eax
 80496be:	01 d0                	add    %edx,%eax
 80496c0:	c1 e0 03             	shl    $0x3,%eax
 80496c3:	03 45 40             	add    0x40(%ebp),%eax
 80496c6:	8b 40 14             	mov    0x14(%eax),%eax
 80496c9:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496cd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80496d0:	89 44 24 04          	mov    %eax,0x4(%esp)
 80496d4:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80496d7:	89 04 24             	mov    %eax,(%esp)
 80496da:	e8 e1 ee ff ff       	call   80485c0 <write@plt>
	fsync(fd2);
 80496df:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80496e2:	89 04 24             	mov    %eax,(%esp)
 80496e5:	e8 b6 ee ff ff       	call   80485a0 <fsync@plt>

EXIT:
	close(fd2);
 80496ea:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80496ed:	89 04 24             	mov    %eax,(%esp)
 80496f0:	e8 eb ee ff ff       	call   80485e0 <close@plt>
	free(pwd);
 80496f5:	8b 45 dc             	mov    -0x24(%ebp),%eax
 80496f8:	89 04 24             	mov    %eax,(%esp)
 80496fb:	e8 10 ee ff ff       	call   8048510 <free@plt>

}
 8049700:	83 c4 6c             	add    $0x6c,%esp
 8049703:	5b                   	pop    %ebx
 8049704:	5e                   	pop    %esi
 8049705:	5f                   	pop    %edi
 8049706:	5d                   	pop    %ebp
 8049707:	c3                   	ret    

08049708 <main>:

/* Main entry point of elf-parser */
int32_t main(int32_t argc, char *argv[])
{
 8049708:	55                   	push   %ebp
 8049709:	89 e5                	mov    %esp,%ebp
 804970b:	83 e4 f0             	and    $0xfffffff0,%esp
 804970e:	81 ec 90 00 00 00    	sub    $0x90,%esp
 8049714:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049717:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804971b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049721:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%esp)
 8049728:	31 c0                	xor    %eax,%eax

	int32_t fd;
	Elf32_Ehdr eh;		/* elf-header is fixed size */
	Elf32_Shdr* sh_tbl;	/* section-header table is variable size */

	if(argc!=2) {
 804972a:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 804972e:	74 16                	je     8049746 <main+0x3e>
		printf("Usage: elf-parser <ELF-file>\n");
 8049730:	c7 04 24 c8 a2 04 08 	movl   $0x804a2c8,(%esp)
 8049737:	e8 24 ee ff ff       	call   8048560 <puts@plt>
		return 0;
 804973c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049741:	e9 ce 03 00 00       	jmp    8049b14 <main+0x40c>
	}

	fd = open(argv[1], O_RDONLY|O_SYNC);
 8049746:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804974a:	83 c0 04             	add    $0x4,%eax
 804974d:	8b 00                	mov    (%eax),%eax
 804974f:	c7 44 24 04 00 10 10 	movl   $0x101000,0x4(%esp)
 8049756:	00 
 8049757:	89 04 24             	mov    %eax,(%esp)
 804975a:	e8 21 ee ff ff       	call   8048580 <open@plt>
 804975f:	89 44 24 50          	mov    %eax,0x50(%esp)
	if(fd<0) {
 8049763:	83 7c 24 50 00       	cmpl   $0x0,0x50(%esp)
 8049768:	79 2c                	jns    8049796 <main+0x8e>
		printf("Error %d Unable to open %s\n", fd, argv[1]);
 804976a:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804976e:	83 c0 04             	add    $0x4,%eax
 8049771:	8b 10                	mov    (%eax),%edx
 8049773:	b8 e5 a2 04 08       	mov    $0x804a2e5,%eax
 8049778:	89 54 24 08          	mov    %edx,0x8(%esp)
 804977c:	8b 54 24 50          	mov    0x50(%esp),%edx
 8049780:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049784:	89 04 24             	mov    %eax,(%esp)
 8049787:	e8 74 ed ff ff       	call   8048500 <printf@plt>
		return 0;
 804978c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049791:	e9 7e 03 00 00       	jmp    8049b14 <main+0x40c>
	}

	/* ELF header : at start of file */
	read_elf_header(fd, &eh);
 8049796:	8d 44 24 58          	lea    0x58(%esp),%eax
 804979a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804979e:	8b 44 24 50          	mov    0x50(%esp),%eax
 80497a2:	89 04 24             	mov    %eax,(%esp)
 80497a5:	e8 0a ef ff ff       	call   80486b4 <read_elf_header>
	if(!is_ELF(eh)) {
 80497aa:	8b 44 24 58          	mov    0x58(%esp),%eax
 80497ae:	89 04 24             	mov    %eax,(%esp)
 80497b1:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 80497b5:	89 44 24 04          	mov    %eax,0x4(%esp)
 80497b9:	8b 44 24 60          	mov    0x60(%esp),%eax
 80497bd:	89 44 24 08          	mov    %eax,0x8(%esp)
 80497c1:	8b 44 24 64          	mov    0x64(%esp),%eax
 80497c5:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80497c9:	8b 44 24 68          	mov    0x68(%esp),%eax
 80497cd:	89 44 24 10          	mov    %eax,0x10(%esp)
 80497d1:	8b 44 24 6c          	mov    0x6c(%esp),%eax
 80497d5:	89 44 24 14          	mov    %eax,0x14(%esp)
 80497d9:	8b 44 24 70          	mov    0x70(%esp),%eax
 80497dd:	89 44 24 18          	mov    %eax,0x18(%esp)
 80497e1:	8b 44 24 74          	mov    0x74(%esp),%eax
 80497e5:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80497e9:	8b 44 24 78          	mov    0x78(%esp),%eax
 80497ed:	89 44 24 20          	mov    %eax,0x20(%esp)
 80497f1:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 80497f5:	89 44 24 24          	mov    %eax,0x24(%esp)
 80497f9:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
 8049800:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049804:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 804980b:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804980f:	8b 84 24 88 00 00 00 	mov    0x88(%esp),%eax
 8049816:	89 44 24 30          	mov    %eax,0x30(%esp)
 804981a:	e8 4d ef ff ff       	call   804876c <is_ELF>
 804981f:	83 f0 01             	xor    $0x1,%eax
 8049822:	84 c0                	test   %al,%al
 8049824:	74 0a                	je     8049830 <main+0x128>
		return 0;
 8049826:	b8 00 00 00 00       	mov    $0x0,%eax
 804982b:	e9 e4 02 00 00       	jmp    8049b14 <main+0x40c>
	}
	print_elf_header(eh);
 8049830:	8b 44 24 58          	mov    0x58(%esp),%eax
 8049834:	89 04 24             	mov    %eax,(%esp)
 8049837:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 804983b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804983f:	8b 44 24 60          	mov    0x60(%esp),%eax
 8049843:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049847:	8b 44 24 64          	mov    0x64(%esp),%eax
 804984b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804984f:	8b 44 24 68          	mov    0x68(%esp),%eax
 8049853:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049857:	8b 44 24 6c          	mov    0x6c(%esp),%eax
 804985b:	89 44 24 14          	mov    %eax,0x14(%esp)
 804985f:	8b 44 24 70          	mov    0x70(%esp),%eax
 8049863:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049867:	8b 44 24 74          	mov    0x74(%esp),%eax
 804986b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804986f:	8b 44 24 78          	mov    0x78(%esp),%eax
 8049873:	89 44 24 20          	mov    %eax,0x20(%esp)
 8049877:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804987b:	89 44 24 24          	mov    %eax,0x24(%esp)
 804987f:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
 8049886:	89 44 24 28          	mov    %eax,0x28(%esp)
 804988a:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 8049891:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8049895:	8b 84 24 88 00 00 00 	mov    0x88(%esp),%eax
 804989c:	89 44 24 30          	mov    %eax,0x30(%esp)
 80498a0:	e8 20 ef ff ff       	call   80487c5 <print_elf_header>

	/* Section header table :  */
	sh_tbl = malloc(eh.e_shentsize * eh.e_shnum);
 80498a5:	0f b7 84 24 86 00 00 	movzwl 0x86(%esp),%eax
 80498ac:	00 
 80498ad:	0f b7 d0             	movzwl %ax,%edx
 80498b0:	0f b7 84 24 88 00 00 	movzwl 0x88(%esp),%eax
 80498b7:	00 
 80498b8:	0f b7 c0             	movzwl %ax,%eax
 80498bb:	0f af c2             	imul   %edx,%eax
 80498be:	89 04 24             	mov    %eax,(%esp)
 80498c1:	e8 8a ec ff ff       	call   8048550 <malloc@plt>
 80498c6:	89 44 24 54          	mov    %eax,0x54(%esp)
	if(!sh_tbl) {
 80498ca:	83 7c 24 54 00       	cmpl   $0x0,0x54(%esp)
 80498cf:	75 2a                	jne    80498fb <main+0x1f3>
		printf("Failed to allocate %d bytes\n",
			(eh.e_shentsize * eh.e_shnum));
 80498d1:	0f b7 84 24 86 00 00 	movzwl 0x86(%esp),%eax
 80498d8:	00 
	print_elf_header(eh);

	/* Section header table :  */
	sh_tbl = malloc(eh.e_shentsize * eh.e_shnum);
	if(!sh_tbl) {
		printf("Failed to allocate %d bytes\n",
 80498d9:	0f b7 d0             	movzwl %ax,%edx
			(eh.e_shentsize * eh.e_shnum));
 80498dc:	0f b7 84 24 88 00 00 	movzwl 0x88(%esp),%eax
 80498e3:	00 
	print_elf_header(eh);

	/* Section header table :  */
	sh_tbl = malloc(eh.e_shentsize * eh.e_shnum);
	if(!sh_tbl) {
		printf("Failed to allocate %d bytes\n",
 80498e4:	0f b7 c0             	movzwl %ax,%eax
 80498e7:	0f af d0             	imul   %eax,%edx
 80498ea:	b8 01 a3 04 08       	mov    $0x804a301,%eax
 80498ef:	89 54 24 04          	mov    %edx,0x4(%esp)
 80498f3:	89 04 24             	mov    %eax,(%esp)
 80498f6:	e8 05 ec ff ff       	call   8048500 <printf@plt>
			(eh.e_shentsize * eh.e_shnum));
	}
	read_section_header_table(fd, eh, sh_tbl);
 80498fb:	8b 44 24 54          	mov    0x54(%esp),%eax
 80498ff:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049903:	8b 44 24 58          	mov    0x58(%esp),%eax
 8049907:	89 44 24 04          	mov    %eax,0x4(%esp)
 804990b:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 804990f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049913:	8b 44 24 60          	mov    0x60(%esp),%eax
 8049917:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804991b:	8b 44 24 64          	mov    0x64(%esp),%eax
 804991f:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049923:	8b 44 24 68          	mov    0x68(%esp),%eax
 8049927:	89 44 24 14          	mov    %eax,0x14(%esp)
 804992b:	8b 44 24 6c          	mov    0x6c(%esp),%eax
 804992f:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049933:	8b 44 24 70          	mov    0x70(%esp),%eax
 8049937:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804993b:	8b 44 24 74          	mov    0x74(%esp),%eax
 804993f:	89 44 24 20          	mov    %eax,0x20(%esp)
 8049943:	8b 44 24 78          	mov    0x78(%esp),%eax
 8049947:	89 44 24 24          	mov    %eax,0x24(%esp)
 804994b:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804994f:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049953:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
 804995a:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804995e:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 8049965:	89 44 24 30          	mov    %eax,0x30(%esp)
 8049969:	8b 84 24 88 00 00 00 	mov    0x88(%esp),%eax
 8049970:	89 44 24 34          	mov    %eax,0x34(%esp)
 8049974:	8b 44 24 50          	mov    0x50(%esp),%eax
 8049978:	89 04 24             	mov    %eax,(%esp)
 804997b:	e8 c3 f3 ff ff       	call   8048d43 <read_section_header_table>
	print_section_headers(fd, eh, sh_tbl);
 8049980:	8b 44 24 54          	mov    0x54(%esp),%eax
 8049984:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049988:	8b 44 24 58          	mov    0x58(%esp),%eax
 804998c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049990:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 8049994:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049998:	8b 44 24 60          	mov    0x60(%esp),%eax
 804999c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80499a0:	8b 44 24 64          	mov    0x64(%esp),%eax
 80499a4:	89 44 24 10          	mov    %eax,0x10(%esp)
 80499a8:	8b 44 24 68          	mov    0x68(%esp),%eax
 80499ac:	89 44 24 14          	mov    %eax,0x14(%esp)
 80499b0:	8b 44 24 6c          	mov    0x6c(%esp),%eax
 80499b4:	89 44 24 18          	mov    %eax,0x18(%esp)
 80499b8:	8b 44 24 70          	mov    0x70(%esp),%eax
 80499bc:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80499c0:	8b 44 24 74          	mov    0x74(%esp),%eax
 80499c4:	89 44 24 20          	mov    %eax,0x20(%esp)
 80499c8:	8b 44 24 78          	mov    0x78(%esp),%eax
 80499cc:	89 44 24 24          	mov    %eax,0x24(%esp)
 80499d0:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 80499d4:	89 44 24 28          	mov    %eax,0x28(%esp)
 80499d8:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
 80499df:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 80499e3:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 80499ea:	89 44 24 30          	mov    %eax,0x30(%esp)
 80499ee:	8b 84 24 88 00 00 00 	mov    0x88(%esp),%eax
 80499f5:	89 44 24 34          	mov    %eax,0x34(%esp)
 80499f9:	8b 44 24 50          	mov    0x50(%esp),%eax
 80499fd:	89 04 24             	mov    %eax,(%esp)
 8049a00:	e8 ed f4 ff ff       	call   8048ef2 <print_section_headers>
	/* Symbol tables :
	 * sh_tbl[i].sh_type
	 * |`- SHT_SYMTAB
	 *  `- SHT_DYNSYM
	 */
	print_symbols(fd, eh, sh_tbl);
 8049a05:	8b 44 24 54          	mov    0x54(%esp),%eax
 8049a09:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049a0d:	8b 44 24 58          	mov    0x58(%esp),%eax
 8049a11:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049a15:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 8049a19:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049a1d:	8b 44 24 60          	mov    0x60(%esp),%eax
 8049a21:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049a25:	8b 44 24 64          	mov    0x64(%esp),%eax
 8049a29:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049a2d:	8b 44 24 68          	mov    0x68(%esp),%eax
 8049a31:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049a35:	8b 44 24 6c          	mov    0x6c(%esp),%eax
 8049a39:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049a3d:	8b 44 24 70          	mov    0x70(%esp),%eax
 8049a41:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049a45:	8b 44 24 74          	mov    0x74(%esp),%eax
 8049a49:	89 44 24 20          	mov    %eax,0x20(%esp)
 8049a4d:	8b 44 24 78          	mov    0x78(%esp),%eax
 8049a51:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049a55:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8049a59:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049a5d:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
 8049a64:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8049a68:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 8049a6f:	89 44 24 30          	mov    %eax,0x30(%esp)
 8049a73:	8b 84 24 88 00 00 00 	mov    0x88(%esp),%eax
 8049a7a:	89 44 24 34          	mov    %eax,0x34(%esp)
 8049a7e:	8b 44 24 50          	mov    0x50(%esp),%eax
 8049a82:	89 04 24             	mov    %eax,(%esp)
 8049a85:	e8 50 f8 ff ff       	call   80492da <print_symbols>

	save_text_section(fd, eh, sh_tbl);
 8049a8a:	8b 44 24 54          	mov    0x54(%esp),%eax
 8049a8e:	89 44 24 38          	mov    %eax,0x38(%esp)
 8049a92:	8b 44 24 58          	mov    0x58(%esp),%eax
 8049a96:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049a9a:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 8049a9e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049aa2:	8b 44 24 60          	mov    0x60(%esp),%eax
 8049aa6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049aaa:	8b 44 24 64          	mov    0x64(%esp),%eax
 8049aae:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049ab2:	8b 44 24 68          	mov    0x68(%esp),%eax
 8049ab6:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049aba:	8b 44 24 6c          	mov    0x6c(%esp),%eax
 8049abe:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049ac2:	8b 44 24 70          	mov    0x70(%esp),%eax
 8049ac6:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049aca:	8b 44 24 74          	mov    0x74(%esp),%eax
 8049ace:	89 44 24 20          	mov    %eax,0x20(%esp)
 8049ad2:	8b 44 24 78          	mov    0x78(%esp),%eax
 8049ad6:	89 44 24 24          	mov    %eax,0x24(%esp)
 8049ada:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8049ade:	89 44 24 28          	mov    %eax,0x28(%esp)
 8049ae2:	8b 84 24 80 00 00 00 	mov    0x80(%esp),%eax
 8049ae9:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8049aed:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 8049af4:	89 44 24 30          	mov    %eax,0x30(%esp)
 8049af8:	8b 84 24 88 00 00 00 	mov    0x88(%esp),%eax
 8049aff:	89 44 24 34          	mov    %eax,0x34(%esp)
 8049b03:	8b 44 24 50          	mov    0x50(%esp),%eax
 8049b07:	89 04 24             	mov    %eax,(%esp)
 8049b0a:	e8 af f8 ff ff       	call   80493be <save_text_section>

	return 0;
 8049b0f:	b8 00 00 00 00       	mov    $0x0,%eax
}
 8049b14:	8b 94 24 8c 00 00 00 	mov    0x8c(%esp),%edx
 8049b1b:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049b22:	74 05                	je     8049b29 <main+0x421>
 8049b24:	e8 07 ea ff ff       	call   8048530 <__stack_chk_fail@plt>
 8049b29:	c9                   	leave  
 8049b2a:	c3                   	ret    
 8049b2b:	90                   	nop
 8049b2c:	90                   	nop
 8049b2d:	90                   	nop
 8049b2e:	90                   	nop
 8049b2f:	90                   	nop

08049b30 <__libc_csu_init>:
 8049b30:	55                   	push   %ebp
 8049b31:	57                   	push   %edi
 8049b32:	56                   	push   %esi
 8049b33:	53                   	push   %ebx
 8049b34:	e8 69 00 00 00       	call   8049ba2 <__i686.get_pc_thunk.bx>
 8049b39:	81 c3 bb 24 00 00    	add    $0x24bb,%ebx
 8049b3f:	83 ec 1c             	sub    $0x1c,%esp
 8049b42:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8049b46:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 8049b4c:	e8 53 e9 ff ff       	call   80484a4 <_init>
 8049b51:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8049b57:	29 c7                	sub    %eax,%edi
 8049b59:	c1 ff 02             	sar    $0x2,%edi
 8049b5c:	85 ff                	test   %edi,%edi
 8049b5e:	74 29                	je     8049b89 <__libc_csu_init+0x59>
 8049b60:	31 f6                	xor    %esi,%esi
 8049b62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049b68:	8b 44 24 38          	mov    0x38(%esp),%eax
 8049b6c:	89 2c 24             	mov    %ebp,(%esp)
 8049b6f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049b73:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049b77:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049b7b:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 8049b82:	83 c6 01             	add    $0x1,%esi
 8049b85:	39 fe                	cmp    %edi,%esi
 8049b87:	75 df                	jne    8049b68 <__libc_csu_init+0x38>
 8049b89:	83 c4 1c             	add    $0x1c,%esp
 8049b8c:	5b                   	pop    %ebx
 8049b8d:	5e                   	pop    %esi
 8049b8e:	5f                   	pop    %edi
 8049b8f:	5d                   	pop    %ebp
 8049b90:	c3                   	ret    
 8049b91:	eb 0d                	jmp    8049ba0 <__libc_csu_fini>
 8049b93:	90                   	nop
 8049b94:	90                   	nop
 8049b95:	90                   	nop
 8049b96:	90                   	nop
 8049b97:	90                   	nop
 8049b98:	90                   	nop
 8049b99:	90                   	nop
 8049b9a:	90                   	nop
 8049b9b:	90                   	nop
 8049b9c:	90                   	nop
 8049b9d:	90                   	nop
 8049b9e:	90                   	nop
 8049b9f:	90                   	nop

08049ba0 <__libc_csu_fini>:
 8049ba0:	f3 c3                	repz ret 

08049ba2 <__i686.get_pc_thunk.bx>:
 8049ba2:	8b 1c 24             	mov    (%esp),%ebx
 8049ba5:	c3                   	ret    
 8049ba6:	90                   	nop
 8049ba7:	90                   	nop
 8049ba8:	90                   	nop
 8049ba9:	90                   	nop
 8049baa:	90                   	nop
 8049bab:	90                   	nop
 8049bac:	90                   	nop
 8049bad:	90                   	nop
 8049bae:	90                   	nop
 8049baf:	90                   	nop

08049bb0 <__do_global_ctors_aux>:
 8049bb0:	55                   	push   %ebp
 8049bb1:	89 e5                	mov    %esp,%ebp
 8049bb3:	53                   	push   %ebx
 8049bb4:	83 ec 04             	sub    $0x4,%esp
 8049bb7:	a1 14 bf 04 08       	mov    0x804bf14,%eax
 8049bbc:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049bbf:	74 13                	je     8049bd4 <__do_global_ctors_aux+0x24>
 8049bc1:	bb 14 bf 04 08       	mov    $0x804bf14,%ebx
 8049bc6:	66 90                	xchg   %ax,%ax
 8049bc8:	83 eb 04             	sub    $0x4,%ebx
 8049bcb:	ff d0                	call   *%eax
 8049bcd:	8b 03                	mov    (%ebx),%eax
 8049bcf:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049bd2:	75 f4                	jne    8049bc8 <__do_global_ctors_aux+0x18>
 8049bd4:	83 c4 04             	add    $0x4,%esp
 8049bd7:	5b                   	pop    %ebx
 8049bd8:	5d                   	pop    %ebp
 8049bd9:	c3                   	ret    
 8049bda:	90                   	nop
 8049bdb:	90                   	nop

Disassembly of section .fini:

08049bdc <_fini>:
 8049bdc:	53                   	push   %ebx
 8049bdd:	83 ec 08             	sub    $0x8,%esp
 8049be0:	e8 00 00 00 00       	call   8049be5 <_fini+0x9>
 8049be5:	5b                   	pop    %ebx
 8049be6:	81 c3 0f 24 00 00    	add    $0x240f,%ebx
 8049bec:	e8 3f ea ff ff       	call   8048630 <__do_global_dtors_aux>
 8049bf1:	83 c4 08             	add    $0x8,%esp
 8049bf4:	5b                   	pop    %ebx
 8049bf5:	c3                   	ret    


hola:     file format elf32-littlearm


Disassembly of section .init:

00008330 <_init>:
    8330:	e92d4010 	push	{r4, lr}
    8334:	eb00001f 	bl	83b8 <call_gmon_start>
    8338:	e8bd8010 	pop	{r4, pc}

Disassembly of section .plt:

0000833c <.plt>:
    833c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    8340:	e59fe004 	ldr	lr, [pc, #4]	; 834c <_init+0x1c>
    8344:	e08fe00e 	add	lr, pc, lr
    8348:	e5bef008 	ldr	pc, [lr, #8]!
    834c:	000082e8 	.word	0x000082e8
    8350:	e28fc600 	add	ip, pc, #0	; 0x0
    8354:	e28cca08 	add	ip, ip, #32768	; 0x8000
    8358:	e5bcf2e8 	ldr	pc, [ip, #744]!
    835c:	e28fc600 	add	ip, pc, #0	; 0x0
    8360:	e28cca08 	add	ip, ip, #32768	; 0x8000
    8364:	e5bcf2e0 	ldr	pc, [ip, #736]!
    8368:	e28fc600 	add	ip, pc, #0	; 0x0
    836c:	e28cca08 	add	ip, ip, #32768	; 0x8000
    8370:	e5bcf2d8 	ldr	pc, [ip, #728]!
    8374:	e28fc600 	add	ip, pc, #0	; 0x0
    8378:	e28cca08 	add	ip, ip, #32768	; 0x8000
    837c:	e5bcf2d0 	ldr	pc, [ip, #720]!

Disassembly of section .text:

00008380 <_start>:
    8380:	e59fc024 	ldr	ip, [pc, #36]	; 83ac <_start+0x2c>
    8384:	e3a0b000 	mov	fp, #0	; 0x0
    8388:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
    838c:	e1a0200d 	mov	r2, sp
    8390:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
    8394:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
    8398:	e59f0010 	ldr	r0, [pc, #16]	; 83b0 <_start+0x30>
    839c:	e59f3010 	ldr	r3, [pc, #16]	; 83b4 <_start+0x34>
    83a0:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
    83a4:	ebffffec 	bl	835c <_init+0x2c>
    83a8:	ebffffe8 	bl	8350 <_init+0x20>
    83ac:	00008450 	.word	0x00008450
    83b0:	00008428 	.word	0x00008428
    83b4:	00008454 	.word	0x00008454

000083b8 <call_gmon_start>:
    83b8:	e59f3014 	ldr	r3, [pc, #20]	; 83d4 <call_gmon_start+0x1c>
    83bc:	e59f2014 	ldr	r2, [pc, #20]	; 83d8 <call_gmon_start+0x20>
    83c0:	e08f3003 	add	r3, pc, r3
    83c4:	e7931002 	ldr	r1, [r3, r2]
    83c8:	e3510000 	cmp	r1, #0	; 0x0
    83cc:	012fff1e 	bxeq	lr
    83d0:	eaffffe4 	b	8368 <_init+0x38>
    83d4:	0000826c 	.word	0x0000826c
    83d8:	0000001c 	.word	0x0000001c

000083dc <__do_global_dtors_aux>:
    83dc:	e59f2010 	ldr	r2, [pc, #16]	; 83f4 <__do_global_dtors_aux+0x18>
    83e0:	e5d23000 	ldrb	r3, [r2]
    83e4:	e3530000 	cmp	r3, #0	; 0x0
    83e8:	03a03001 	moveq	r3, #1	; 0x1
    83ec:	05c23000 	strbeq	r3, [r2]
    83f0:	e12fff1e 	bx	lr
    83f4:	0001065c 	.word	0x0001065c

000083f8 <frame_dummy>:
    83f8:	e59f0020 	ldr	r0, [pc, #32]	; 8420 <frame_dummy+0x28>
    83fc:	e92d4010 	push	{r4, lr}
    8400:	e5903000 	ldr	r3, [r0]
    8404:	e3530000 	cmp	r3, #0	; 0x0
    8408:	08bd8010 	popeq	{r4, pc}
    840c:	e59f3010 	ldr	r3, [pc, #16]	; 8424 <frame_dummy+0x2c>
    8410:	e3530000 	cmp	r3, #0	; 0x0
    8414:	08bd8010 	popeq	{r4, pc}
    8418:	e12fff33 	blx	r3
    841c:	e8bd8010 	pop	{r4, pc}
    8420:	00010540 	.word	0x00010540
    8424:	00000000 	.word	0x00000000

00008428 <main>:
    8428:	e92d4800 	push	{fp, lr}
    842c:	e28db004 	add	fp, sp, #4	; 0x4
    8430:	e24ddb01 	sub	sp, sp, #1024	; 0x400
    8434:	e59f0010 	ldr	r0, [pc, #16]	; 844c <main+0x24>
    8438:	ebffffcd 	bl	8374 <_init+0x44>
    843c:	e3a03000 	mov	r3, #0	; 0x0
    8440:	e1a00003 	mov	r0, r3
    8444:	e24bd004 	sub	sp, fp, #4	; 0x4
    8448:	e8bd8800 	pop	{fp, pc}
    844c:	000084cc 	.word	0x000084cc

00008450 <__libc_csu_fini>:
    8450:	e12fff1e 	bx	lr

00008454 <__libc_csu_init>:
    8454:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8458:	e1a08001 	mov	r8, r1
    845c:	e1a07002 	mov	r7, r2
    8460:	e1a0a000 	mov	sl, r0
    8464:	ebffffb1 	bl	8330 <_init>
    8468:	e59f1044 	ldr	r1, [pc, #68]	; 84b4 <__libc_csu_init+0x60>
    846c:	e59f3044 	ldr	r3, [pc, #68]	; 84b8 <__libc_csu_init+0x64>
    8470:	e59f2044 	ldr	r2, [pc, #68]	; 84bc <__libc_csu_init+0x68>
    8474:	e0613003 	rsb	r3, r1, r3
    8478:	e08f2002 	add	r2, pc, r2
    847c:	e1b05143 	asrs	r5, r3, #2
    8480:	e0822001 	add	r2, r2, r1
    8484:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
    8488:	e1a06002 	mov	r6, r2
    848c:	e3a04000 	mov	r4, #0	; 0x0
    8490:	e1a0000a 	mov	r0, sl
    8494:	e1a01008 	mov	r1, r8
    8498:	e1a02007 	mov	r2, r7
    849c:	e1a0e00f 	mov	lr, pc
    84a0:	e796f104 	ldr	pc, [r6, r4, lsl #2]
    84a4:	e2844001 	add	r4, r4, #1	; 0x1
    84a8:	e1540005 	cmp	r4, r5
    84ac:	3afffff7 	bcc	8490 <__libc_csu_init+0x3c>
    84b0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    84b4:	ffffff04 	.word	0xffffff04
    84b8:	ffffff08 	.word	0xffffff08
    84bc:	000081b4 	.word	0x000081b4

Disassembly of section .fini:

000084c0 <_fini>:
    84c0:	e92d4010 	push	{r4, lr}
    84c4:	e8bd8010 	pop	{r4, pc}

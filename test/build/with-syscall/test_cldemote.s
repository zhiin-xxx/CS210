
test/build/with-syscall/test_cldemote.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	044010ef          	jal	11178 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	488020ef          	jal	125d0 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	49850513          	addi	a0,a0,1176 # 12498 <__libc_fini_array>
   1015c:	1540106f          	j	112b0 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00003197          	auipc	gp,0x3
   10168:	6b418193          	addi	gp,gp,1716 # 13818 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	84c50513          	addi	a0,a0,-1972 # 139b8 <__stdio_exit_handler>
   10174:	00004617          	auipc	a2,0x4
   10178:	e0460613          	addi	a2,a2,-508 # 13f78 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	719000ef          	jal	1109c <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	12850513          	addi	a0,a0,296 # 112b0 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	30450513          	addi	a0,a0,772 # 12498 <__libc_fini_array>
   1019c:	114010ef          	jal	112b0 <atexit>
   101a0:	669000ef          	jal	11008 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	06c000ef          	jal	1021c <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1d81c783          	lbu	a5,472(gp) # 139f0 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00013537          	lui	a0,0x13
   101d8:	97850513          	addi	a0,a0,-1672 # 12978 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x10120>
   101e4:	00100793          	li	a5,1
   101e8:	1cf18c23          	sb	a5,472(gp) # 139f0 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00013537          	lui	a0,0x13
   10208:	1e018593          	addi	a1,gp,480 # 139f8 <object.0>
   1020c:	97850513          	addi	a0,a0,-1672 # 12978 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	db010113          	addi	sp,sp,-592
   10220:	24113423          	sd	ra,584(sp)
   10224:	24813023          	sd	s0,576(sp)
   10228:	25010413          	addi	s0,sp,592
   1022c:	000127b7          	lui	a5,0x12
   10230:	74078513          	addi	a0,a5,1856 # 12740 <__errno+0x8>
   10234:	490000ef          	jal	106c4 <print_s>
   10238:	000127b7          	lui	a5,0x12
   1023c:	76078513          	addi	a0,a5,1888 # 12760 <__errno+0x28>
   10240:	484000ef          	jal	106c4 <print_s>
   10244:	fe042623          	sw	zero,-20(s0)
   10248:	0300006f          	j	10278 <main+0x5c>
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	0017979b          	slliw	a5,a5,0x1
   10254:	0007871b          	sext.w	a4,a5
   10258:	fec42683          	lw	a3,-20(s0)
   1025c:	db840793          	addi	a5,s0,-584
   10260:	00269693          	slli	a3,a3,0x2
   10264:	00f687b3          	add	a5,a3,a5
   10268:	00e7a023          	sw	a4,0(a5)
   1026c:	fec42783          	lw	a5,-20(s0)
   10270:	0017879b          	addiw	a5,a5,1
   10274:	fef42623          	sw	a5,-20(s0)
   10278:	fec42783          	lw	a5,-20(s0)
   1027c:	0007871b          	sext.w	a4,a5
   10280:	07f00793          	li	a5,127
   10284:	fce7d4e3          	bge	a5,a4,1024c <main+0x30>
   10288:	000127b7          	lui	a5,0x12
   1028c:	77878513          	addi	a0,a5,1912 # 12778 <__errno+0x40>
   10290:	434000ef          	jal	106c4 <print_s>
   10294:	fe042423          	sw	zero,-24(s0)
   10298:	fe042223          	sw	zero,-28(s0)
   1029c:	0300006f          	j	102cc <main+0xb0>
   102a0:	fe442703          	lw	a4,-28(s0)
   102a4:	db840793          	addi	a5,s0,-584
   102a8:	00271713          	slli	a4,a4,0x2
   102ac:	00f707b3          	add	a5,a4,a5
   102b0:	0007a783          	lw	a5,0(a5)
   102b4:	fe842703          	lw	a4,-24(s0)
   102b8:	00f707bb          	addw	a5,a4,a5
   102bc:	fef42423          	sw	a5,-24(s0)
   102c0:	fe442783          	lw	a5,-28(s0)
   102c4:	0017879b          	addiw	a5,a5,1
   102c8:	fef42223          	sw	a5,-28(s0)
   102cc:	fe442783          	lw	a5,-28(s0)
   102d0:	0007871b          	sext.w	a4,a5
   102d4:	01f00793          	li	a5,31
   102d8:	fce7d4e3          	bge	a5,a4,102a0 <main+0x84>
   102dc:	000127b7          	lui	a5,0x12
   102e0:	79078513          	addi	a0,a5,1936 # 12790 <__errno+0x58>
   102e4:	3e0000ef          	jal	106c4 <print_s>
   102e8:	fe842783          	lw	a5,-24(s0)
   102ec:	00078513          	mv	a0,a5
   102f0:	368000ef          	jal	10658 <print_d>
   102f4:	000127b7          	lui	a5,0x12
   102f8:	7b078513          	addi	a0,a5,1968 # 127b0 <__errno+0x78>
   102fc:	3c8000ef          	jal	106c4 <print_s>
   10300:	000127b7          	lui	a5,0x12
   10304:	7b878513          	addi	a0,a5,1976 # 127b8 <__errno+0x80>
   10308:	3bc000ef          	jal	106c4 <print_s>
   1030c:	fe042023          	sw	zero,-32(s0)
   10310:	0280006f          	j	10338 <main+0x11c>
   10314:	db840713          	addi	a4,s0,-584
   10318:	fe042783          	lw	a5,-32(s0)
   1031c:	00279793          	slli	a5,a5,0x2
   10320:	00f707b3          	add	a5,a4,a5
   10324:	00078513          	mv	a0,a5
   10328:	49c000ef          	jal	107c4 <cldemote>
   1032c:	fe042783          	lw	a5,-32(s0)
   10330:	0107879b          	addiw	a5,a5,16
   10334:	fef42023          	sw	a5,-32(s0)
   10338:	fe042783          	lw	a5,-32(s0)
   1033c:	0007871b          	sext.w	a4,a5
   10340:	01f00793          	li	a5,31
   10344:	fce7d8e3          	bge	a5,a4,10314 <main+0xf8>
   10348:	000127b7          	lui	a5,0x12
   1034c:	7d878513          	addi	a0,a5,2008 # 127d8 <__errno+0xa0>
   10350:	374000ef          	jal	106c4 <print_s>
   10354:	000127b7          	lui	a5,0x12
   10358:	7f078513          	addi	a0,a5,2032 # 127f0 <__errno+0xb8>
   1035c:	368000ef          	jal	106c4 <print_s>
   10360:	fc042e23          	sw	zero,-36(s0)
   10364:	fc042c23          	sw	zero,-40(s0)
   10368:	0300006f          	j	10398 <main+0x17c>
   1036c:	fd842703          	lw	a4,-40(s0)
   10370:	db840793          	addi	a5,s0,-584
   10374:	00271713          	slli	a4,a4,0x2
   10378:	00f707b3          	add	a5,a4,a5
   1037c:	0007a783          	lw	a5,0(a5)
   10380:	fdc42703          	lw	a4,-36(s0)
   10384:	00f707bb          	addw	a5,a4,a5
   10388:	fcf42e23          	sw	a5,-36(s0)
   1038c:	fd842783          	lw	a5,-40(s0)
   10390:	0017879b          	addiw	a5,a5,1
   10394:	fcf42c23          	sw	a5,-40(s0)
   10398:	fd842783          	lw	a5,-40(s0)
   1039c:	0007871b          	sext.w	a4,a5
   103a0:	01f00793          	li	a5,31
   103a4:	fce7d4e3          	bge	a5,a4,1036c <main+0x150>
   103a8:	000137b7          	lui	a5,0x13
   103ac:	81878513          	addi	a0,a5,-2024 # 12818 <__errno+0xe0>
   103b0:	314000ef          	jal	106c4 <print_s>
   103b4:	fdc42783          	lw	a5,-36(s0)
   103b8:	00078513          	mv	a0,a5
   103bc:	29c000ef          	jal	10658 <print_d>
   103c0:	000127b7          	lui	a5,0x12
   103c4:	7b078513          	addi	a0,a5,1968 # 127b0 <__errno+0x78>
   103c8:	2fc000ef          	jal	106c4 <print_s>
   103cc:	fe842783          	lw	a5,-24(s0)
   103d0:	00078713          	mv	a4,a5
   103d4:	fdc42783          	lw	a5,-36(s0)
   103d8:	0007071b          	sext.w	a4,a4
   103dc:	0007879b          	sext.w	a5,a5
   103e0:	0af71663          	bne	a4,a5,1048c <main+0x270>
   103e4:	000137b7          	lui	a5,0x13
   103e8:	84878513          	addi	a0,a5,-1976 # 12848 <__errno+0x110>
   103ec:	2d8000ef          	jal	106c4 <print_s>
   103f0:	fc042a23          	sw	zero,-44(s0)
   103f4:	fc042823          	sw	zero,-48(s0)
   103f8:	0400006f          	j	10438 <main+0x21c>
   103fc:	fd042703          	lw	a4,-48(s0)
   10400:	db840793          	addi	a5,s0,-584
   10404:	00271713          	slli	a4,a4,0x2
   10408:	00f707b3          	add	a5,a4,a5
   1040c:	0007a703          	lw	a4,0(a5)
   10410:	fd042783          	lw	a5,-48(s0)
   10414:	0017979b          	slliw	a5,a5,0x1
   10418:	0007879b          	sext.w	a5,a5
   1041c:	00f70863          	beq	a4,a5,1042c <main+0x210>
   10420:	fd442783          	lw	a5,-44(s0)
   10424:	0017879b          	addiw	a5,a5,1
   10428:	fcf42a23          	sw	a5,-44(s0)
   1042c:	fd042783          	lw	a5,-48(s0)
   10430:	0017879b          	addiw	a5,a5,1
   10434:	fcf42823          	sw	a5,-48(s0)
   10438:	fd042783          	lw	a5,-48(s0)
   1043c:	0007871b          	sext.w	a4,a5
   10440:	07f00793          	li	a5,127
   10444:	fae7dce3          	bge	a5,a4,103fc <main+0x1e0>
   10448:	fd442783          	lw	a5,-44(s0)
   1044c:	0007879b          	sext.w	a5,a5
   10450:	00079a63          	bnez	a5,10464 <main+0x248>
   10454:	000137b7          	lui	a5,0x13
   10458:	88078513          	addi	a0,a5,-1920 # 12880 <__errno+0x148>
   1045c:	268000ef          	jal	106c4 <print_s>
   10460:	0680006f          	j	104c8 <main+0x2ac>
   10464:	000137b7          	lui	a5,0x13
   10468:	8a878513          	addi	a0,a5,-1880 # 128a8 <__errno+0x170>
   1046c:	258000ef          	jal	106c4 <print_s>
   10470:	fd442783          	lw	a5,-44(s0)
   10474:	00078513          	mv	a0,a5
   10478:	1e0000ef          	jal	10658 <print_d>
   1047c:	000137b7          	lui	a5,0x13
   10480:	8b878513          	addi	a0,a5,-1864 # 128b8 <__errno+0x180>
   10484:	240000ef          	jal	106c4 <print_s>
   10488:	0400006f          	j	104c8 <main+0x2ac>
   1048c:	000137b7          	lui	a5,0x13
   10490:	8d078513          	addi	a0,a5,-1840 # 128d0 <__errno+0x198>
   10494:	230000ef          	jal	106c4 <print_s>
   10498:	fe842783          	lw	a5,-24(s0)
   1049c:	00078513          	mv	a0,a5
   104a0:	1b8000ef          	jal	10658 <print_d>
   104a4:	000137b7          	lui	a5,0x13
   104a8:	8f878513          	addi	a0,a5,-1800 # 128f8 <__errno+0x1c0>
   104ac:	218000ef          	jal	106c4 <print_s>
   104b0:	fdc42783          	lw	a5,-36(s0)
   104b4:	00078513          	mv	a0,a5
   104b8:	1a0000ef          	jal	10658 <print_d>
   104bc:	000127b7          	lui	a5,0x12
   104c0:	7b078513          	addi	a0,a5,1968 # 127b0 <__errno+0x78>
   104c4:	200000ef          	jal	106c4 <print_s>
   104c8:	000137b7          	lui	a5,0x13
   104cc:	90878513          	addi	a0,a5,-1784 # 12908 <__errno+0x1d0>
   104d0:	1f4000ef          	jal	106c4 <print_s>
   104d4:	04000793          	li	a5,64
   104d8:	fcf42623          	sw	a5,-52(s0)
   104dc:	03c0006f          	j	10518 <main+0x2fc>
   104e0:	fcc42783          	lw	a5,-52(s0)
   104e4:	00078713          	mv	a4,a5
   104e8:	00070793          	mv	a5,a4
   104ec:	0017979b          	slliw	a5,a5,0x1
   104f0:	00e787bb          	addw	a5,a5,a4
   104f4:	0007871b          	sext.w	a4,a5
   104f8:	fcc42683          	lw	a3,-52(s0)
   104fc:	db840793          	addi	a5,s0,-584
   10500:	00269693          	slli	a3,a3,0x2
   10504:	00f687b3          	add	a5,a3,a5
   10508:	00e7a023          	sw	a4,0(a5)
   1050c:	fcc42783          	lw	a5,-52(s0)
   10510:	0017879b          	addiw	a5,a5,1
   10514:	fcf42623          	sw	a5,-52(s0)
   10518:	fcc42783          	lw	a5,-52(s0)
   1051c:	0007871b          	sext.w	a4,a5
   10520:	05f00793          	li	a5,95
   10524:	fae7dee3          	bge	a5,a4,104e0 <main+0x2c4>
   10528:	04000793          	li	a5,64
   1052c:	fcf42423          	sw	a5,-56(s0)
   10530:	0280006f          	j	10558 <main+0x33c>
   10534:	db840713          	addi	a4,s0,-584
   10538:	fc842783          	lw	a5,-56(s0)
   1053c:	00279793          	slli	a5,a5,0x2
   10540:	00f707b3          	add	a5,a4,a5
   10544:	00078513          	mv	a0,a5
   10548:	27c000ef          	jal	107c4 <cldemote>
   1054c:	fc842783          	lw	a5,-56(s0)
   10550:	0107879b          	addiw	a5,a5,16
   10554:	fcf42423          	sw	a5,-56(s0)
   10558:	fc842783          	lw	a5,-56(s0)
   1055c:	0007871b          	sext.w	a4,a5
   10560:	05f00793          	li	a5,95
   10564:	fce7d8e3          	bge	a5,a4,10534 <main+0x318>
   10568:	fc042223          	sw	zero,-60(s0)
   1056c:	fc0401a3          	sb	zero,-61(s0)
   10570:	04000793          	li	a5,64
   10574:	faf42e23          	sw	a5,-68(s0)
   10578:	08c0006f          	j	10604 <main+0x3e8>
   1057c:	fbc42703          	lw	a4,-68(s0)
   10580:	db840793          	addi	a5,s0,-584
   10584:	00271713          	slli	a4,a4,0x2
   10588:	00f707b3          	add	a5,a4,a5
   1058c:	0007a783          	lw	a5,0(a5)
   10590:	fc442703          	lw	a4,-60(s0)
   10594:	00f707bb          	addw	a5,a4,a5
   10598:	fcf42223          	sw	a5,-60(s0)
   1059c:	fbc42703          	lw	a4,-68(s0)
   105a0:	db840793          	addi	a5,s0,-584
   105a4:	00271713          	slli	a4,a4,0x2
   105a8:	00f707b3          	add	a5,a4,a5
   105ac:	0007a703          	lw	a4,0(a5)
   105b0:	fbc42783          	lw	a5,-68(s0)
   105b4:	00078693          	mv	a3,a5
   105b8:	00068793          	mv	a5,a3
   105bc:	0017979b          	slliw	a5,a5,0x1
   105c0:	00d787bb          	addw	a5,a5,a3
   105c4:	0007879b          	sext.w	a5,a5
   105c8:	02f70863          	beq	a4,a5,105f8 <main+0x3dc>
   105cc:	00100793          	li	a5,1
   105d0:	fcf401a3          	sb	a5,-61(s0)
   105d4:	000137b7          	lui	a5,0x13
   105d8:	93078513          	addi	a0,a5,-1744 # 12930 <__errno+0x1f8>
   105dc:	0e8000ef          	jal	106c4 <print_s>
   105e0:	fbc42783          	lw	a5,-68(s0)
   105e4:	00078513          	mv	a0,a5
   105e8:	070000ef          	jal	10658 <print_d>
   105ec:	000127b7          	lui	a5,0x12
   105f0:	7b078513          	addi	a0,a5,1968 # 127b0 <__errno+0x78>
   105f4:	0d0000ef          	jal	106c4 <print_s>
   105f8:	fbc42783          	lw	a5,-68(s0)
   105fc:	0017879b          	addiw	a5,a5,1
   10600:	faf42e23          	sw	a5,-68(s0)
   10604:	fbc42783          	lw	a5,-68(s0)
   10608:	0007871b          	sext.w	a4,a5
   1060c:	05f00793          	li	a5,95
   10610:	f6e7d6e3          	bge	a5,a4,1057c <main+0x360>
   10614:	fc344783          	lbu	a5,-61(s0)
   10618:	0017c793          	xori	a5,a5,1
   1061c:	0ff7f793          	zext.b	a5,a5
   10620:	00078863          	beqz	a5,10630 <main+0x414>
   10624:	000137b7          	lui	a5,0x13
   10628:	88078513          	addi	a0,a5,-1920 # 12880 <__errno+0x148>
   1062c:	098000ef          	jal	106c4 <print_s>
   10630:	000137b7          	lui	a5,0x13
   10634:	95878513          	addi	a0,a5,-1704 # 12958 <__errno+0x220>
   10638:	08c000ef          	jal	106c4 <print_s>
   1063c:	0ec000ef          	jal	10728 <exit_proc>
   10640:	00000793          	li	a5,0
   10644:	00078513          	mv	a0,a5
   10648:	24813083          	ld	ra,584(sp)
   1064c:	24013403          	ld	s0,576(sp)
   10650:	25010113          	addi	sp,sp,592
   10654:	00008067          	ret

0000000000010658 <print_d>:
   10658:	fe010113          	addi	sp,sp,-32
   1065c:	00113c23          	sd	ra,24(sp)
   10660:	00813823          	sd	s0,16(sp)
   10664:	02010413          	addi	s0,sp,32
   10668:	00050793          	mv	a5,a0
   1066c:	fef42623          	sw	a5,-20(s0)
   10670:	00200893          	li	a7,2
   10674:	00000073          	ecall
   10678:	00000013          	nop
   1067c:	01813083          	ld	ra,24(sp)
   10680:	01013403          	ld	s0,16(sp)
   10684:	02010113          	addi	sp,sp,32
   10688:	00008067          	ret

000000000001068c <print_ll>:
   1068c:	fe010113          	addi	sp,sp,-32
   10690:	00113c23          	sd	ra,24(sp)
   10694:	00813823          	sd	s0,16(sp)
   10698:	02010413          	addi	s0,sp,32
   1069c:	fea43423          	sd	a0,-24(s0)
   106a0:	fe843783          	ld	a5,-24(s0)
   106a4:	00078513          	mv	a0,a5
   106a8:	00600893          	li	a7,6
   106ac:	00000073          	ecall
   106b0:	00000013          	nop
   106b4:	01813083          	ld	ra,24(sp)
   106b8:	01013403          	ld	s0,16(sp)
   106bc:	02010113          	addi	sp,sp,32
   106c0:	00008067          	ret

00000000000106c4 <print_s>:
   106c4:	fe010113          	addi	sp,sp,-32
   106c8:	00113c23          	sd	ra,24(sp)
   106cc:	00813823          	sd	s0,16(sp)
   106d0:	02010413          	addi	s0,sp,32
   106d4:	fea43423          	sd	a0,-24(s0)
   106d8:	00000893          	li	a7,0
   106dc:	00000073          	ecall
   106e0:	00000013          	nop
   106e4:	01813083          	ld	ra,24(sp)
   106e8:	01013403          	ld	s0,16(sp)
   106ec:	02010113          	addi	sp,sp,32
   106f0:	00008067          	ret

00000000000106f4 <print_c>:
   106f4:	fe010113          	addi	sp,sp,-32
   106f8:	00113c23          	sd	ra,24(sp)
   106fc:	00813823          	sd	s0,16(sp)
   10700:	02010413          	addi	s0,sp,32
   10704:	00050793          	mv	a5,a0
   10708:	fef407a3          	sb	a5,-17(s0)
   1070c:	00100893          	li	a7,1
   10710:	00000073          	ecall
   10714:	00000013          	nop
   10718:	01813083          	ld	ra,24(sp)
   1071c:	01013403          	ld	s0,16(sp)
   10720:	02010113          	addi	sp,sp,32
   10724:	00008067          	ret

0000000000010728 <exit_proc>:
   10728:	ff010113          	addi	sp,sp,-16
   1072c:	00113423          	sd	ra,8(sp)
   10730:	00813023          	sd	s0,0(sp)
   10734:	01010413          	addi	s0,sp,16
   10738:	00300893          	li	a7,3
   1073c:	00000073          	ecall
   10740:	00000013          	nop
   10744:	00813083          	ld	ra,8(sp)
   10748:	00013403          	ld	s0,0(sp)
   1074c:	01010113          	addi	sp,sp,16
   10750:	00008067          	ret

0000000000010754 <read_char>:
   10754:	fe010113          	addi	sp,sp,-32
   10758:	00113c23          	sd	ra,24(sp)
   1075c:	00813823          	sd	s0,16(sp)
   10760:	02010413          	addi	s0,sp,32
   10764:	00400893          	li	a7,4
   10768:	00000073          	ecall
   1076c:	00050793          	mv	a5,a0
   10770:	fef407a3          	sb	a5,-17(s0)
   10774:	fef44783          	lbu	a5,-17(s0)
   10778:	00078513          	mv	a0,a5
   1077c:	01813083          	ld	ra,24(sp)
   10780:	01013403          	ld	s0,16(sp)
   10784:	02010113          	addi	sp,sp,32
   10788:	00008067          	ret

000000000001078c <read_num>:
   1078c:	fe010113          	addi	sp,sp,-32
   10790:	00113c23          	sd	ra,24(sp)
   10794:	00813823          	sd	s0,16(sp)
   10798:	02010413          	addi	s0,sp,32
   1079c:	00500893          	li	a7,5
   107a0:	00000073          	ecall
   107a4:	00050793          	mv	a5,a0
   107a8:	fef43423          	sd	a5,-24(s0)
   107ac:	fe843783          	ld	a5,-24(s0)
   107b0:	00078513          	mv	a0,a5
   107b4:	01813083          	ld	ra,24(sp)
   107b8:	01013403          	ld	s0,16(sp)
   107bc:	02010113          	addi	sp,sp,32
   107c0:	00008067          	ret

00000000000107c4 <cldemote>:
   107c4:	fe010113          	addi	sp,sp,-32
   107c8:	00113c23          	sd	ra,24(sp)
   107cc:	00813823          	sd	s0,16(sp)
   107d0:	02010413          	addi	s0,sp,32
   107d4:	fea43423          	sd	a0,-24(s0)
   107d8:	fe843783          	ld	a5,-24(s0)
   107dc:	00078513          	mv	a0,a5
   107e0:	00700893          	li	a7,7
   107e4:	00000073          	ecall
   107e8:	00000013          	nop
   107ec:	01813083          	ld	ra,24(sp)
   107f0:	01013403          	ld	s0,16(sp)
   107f4:	02010113          	addi	sp,sp,32
   107f8:	00008067          	ret

00000000000107fc <__fp_lock>:
   107fc:	00000513          	li	a0,0
   10800:	00008067          	ret

0000000000010804 <stdio_exit_handler>:
   10804:	00013637          	lui	a2,0x13
   10808:	000125b7          	lui	a1,0x12
   1080c:	00013537          	lui	a0,0x13
   10810:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10814:	fd858593          	addi	a1,a1,-40 # 11fd8 <_fclose_r>
   10818:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   1081c:	34c0006f          	j	10b68 <_fwalk_sglue>

0000000000010820 <cleanup_stdio>:
   10820:	00853583          	ld	a1,8(a0)
   10824:	ff010113          	addi	sp,sp,-16
   10828:	00813023          	sd	s0,0(sp)
   1082c:	00113423          	sd	ra,8(sp)
   10830:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10834:	00050413          	mv	s0,a0
   10838:	00f58463          	beq	a1,a5,10840 <cleanup_stdio+0x20>
   1083c:	79c010ef          	jal	11fd8 <_fclose_r>
   10840:	01043583          	ld	a1,16(s0)
   10844:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10848:	00f58663          	beq	a1,a5,10854 <cleanup_stdio+0x34>
   1084c:	00040513          	mv	a0,s0
   10850:	788010ef          	jal	11fd8 <_fclose_r>
   10854:	01843583          	ld	a1,24(s0)
   10858:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1085c:	00f58c63          	beq	a1,a5,10874 <cleanup_stdio+0x54>
   10860:	00040513          	mv	a0,s0
   10864:	00013403          	ld	s0,0(sp)
   10868:	00813083          	ld	ra,8(sp)
   1086c:	01010113          	addi	sp,sp,16
   10870:	7680106f          	j	11fd8 <_fclose_r>
   10874:	00813083          	ld	ra,8(sp)
   10878:	00013403          	ld	s0,0(sp)
   1087c:	01010113          	addi	sp,sp,16
   10880:	00008067          	ret

0000000000010884 <__fp_unlock>:
   10884:	00000513          	li	a0,0
   10888:	00008067          	ret

000000000001088c <global_stdio_init.part.0>:
   1088c:	fd010113          	addi	sp,sp,-48
   10890:	000117b7          	lui	a5,0x11
   10894:	02813023          	sd	s0,32(sp)
   10898:	80478793          	addi	a5,a5,-2044 # 10804 <stdio_exit_handler>
   1089c:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   108a0:	02113423          	sd	ra,40(sp)
   108a4:	00913c23          	sd	s1,24(sp)
   108a8:	01213823          	sd	s2,16(sp)
   108ac:	01313423          	sd	s3,8(sp)
   108b0:	01413023          	sd	s4,0(sp)
   108b4:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   108b8:	00800613          	li	a2,8
   108bc:	00400793          	li	a5,4
   108c0:	00000593          	li	a1,0
   108c4:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   108c8:	00f42823          	sw	a5,16(s0)
   108cc:	00043023          	sd	zero,0(s0)
   108d0:	00043423          	sd	zero,8(s0)
   108d4:	0a042623          	sw	zero,172(s0)
   108d8:	00043c23          	sd	zero,24(s0)
   108dc:	02042023          	sw	zero,32(s0)
   108e0:	02042423          	sw	zero,40(s0)
   108e4:	7b8000ef          	jal	1109c <memset>
   108e8:	00011a37          	lui	s4,0x11
   108ec:	000119b7          	lui	s3,0x11
   108f0:	00011937          	lui	s2,0x11
   108f4:	000114b7          	lui	s1,0x11
   108f8:	000107b7          	lui	a5,0x10
   108fc:	c38a0a13          	addi	s4,s4,-968 # 10c38 <__sread>
   10900:	c9c98993          	addi	s3,s3,-868 # 10c9c <__swrite>
   10904:	d2490913          	addi	s2,s2,-732 # 10d24 <__sseek>
   10908:	d8848493          	addi	s1,s1,-632 # 10d88 <__sclose>
   1090c:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10910:	00800613          	li	a2,8
   10914:	00000593          	li	a1,0
   10918:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   1091c:	0cf42023          	sw	a5,192(s0)
   10920:	03443c23          	sd	s4,56(s0)
   10924:	05343023          	sd	s3,64(s0)
   10928:	05243423          	sd	s2,72(s0)
   1092c:	04943823          	sd	s1,80(s0)
   10930:	02843823          	sd	s0,48(s0)
   10934:	0a043823          	sd	zero,176(s0)
   10938:	0a043c23          	sd	zero,184(s0)
   1093c:	14042e23          	sw	zero,348(s0)
   10940:	0c043423          	sd	zero,200(s0)
   10944:	0c042823          	sw	zero,208(s0)
   10948:	0c042c23          	sw	zero,216(s0)
   1094c:	750000ef          	jal	1109c <memset>
   10950:	000207b7          	lui	a5,0x20
   10954:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10958:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   1095c:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   10960:	00800613          	li	a2,8
   10964:	00000593          	li	a1,0
   10968:	0f443423          	sd	s4,232(s0)
   1096c:	0f343823          	sd	s3,240(s0)
   10970:	0f243c23          	sd	s2,248(s0)
   10974:	10943023          	sd	s1,256(s0)
   10978:	16f42823          	sw	a5,368(s0)
   1097c:	16043023          	sd	zero,352(s0)
   10980:	16043423          	sd	zero,360(s0)
   10984:	20042623          	sw	zero,524(s0)
   10988:	16043c23          	sd	zero,376(s0)
   1098c:	18042023          	sw	zero,384(s0)
   10990:	18042423          	sw	zero,392(s0)
   10994:	0ee43023          	sd	a4,224(s0)
   10998:	704000ef          	jal	1109c <memset>
   1099c:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   109a0:	19443c23          	sd	s4,408(s0)
   109a4:	1b343023          	sd	s3,416(s0)
   109a8:	1b243423          	sd	s2,424(s0)
   109ac:	1a943823          	sd	s1,432(s0)
   109b0:	02813083          	ld	ra,40(sp)
   109b4:	18f43823          	sd	a5,400(s0)
   109b8:	02013403          	ld	s0,32(sp)
   109bc:	01813483          	ld	s1,24(sp)
   109c0:	01013903          	ld	s2,16(sp)
   109c4:	00813983          	ld	s3,8(sp)
   109c8:	00013a03          	ld	s4,0(sp)
   109cc:	03010113          	addi	sp,sp,48
   109d0:	00008067          	ret

00000000000109d4 <__sfp>:
   109d4:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   109d8:	fd010113          	addi	sp,sp,-48
   109dc:	00913c23          	sd	s1,24(sp)
   109e0:	02113423          	sd	ra,40(sp)
   109e4:	02813023          	sd	s0,32(sp)
   109e8:	00050493          	mv	s1,a0
   109ec:	10078463          	beqz	a5,10af4 <__sfp+0x120>
   109f0:	000136b7          	lui	a3,0x13
   109f4:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   109f8:	0086a703          	lw	a4,8(a3)
   109fc:	08e05c63          	blez	a4,10a94 <__sfp+0xc0>
   10a00:	02071713          	slli	a4,a4,0x20
   10a04:	02075713          	srli	a4,a4,0x20
   10a08:	00171793          	slli	a5,a4,0x1
   10a0c:	00e787b3          	add	a5,a5,a4
   10a10:	0106b403          	ld	s0,16(a3)
   10a14:	00279793          	slli	a5,a5,0x2
   10a18:	40e787b3          	sub	a5,a5,a4
   10a1c:	00479793          	slli	a5,a5,0x4
   10a20:	00f407b3          	add	a5,s0,a5
   10a24:	00c0006f          	j	10a30 <__sfp+0x5c>
   10a28:	0b040413          	addi	s0,s0,176
   10a2c:	06f40463          	beq	s0,a5,10a94 <__sfp+0xc0>
   10a30:	01041703          	lh	a4,16(s0)
   10a34:	fe071ae3          	bnez	a4,10a28 <__sfp+0x54>
   10a38:	ffff07b7          	lui	a5,0xffff0
   10a3c:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10a40:	00f42823          	sw	a5,16(s0)
   10a44:	0a042623          	sw	zero,172(s0)
   10a48:	00043023          	sd	zero,0(s0)
   10a4c:	00043423          	sd	zero,8(s0)
   10a50:	00043c23          	sd	zero,24(s0)
   10a54:	02042023          	sw	zero,32(s0)
   10a58:	02042423          	sw	zero,40(s0)
   10a5c:	00800613          	li	a2,8
   10a60:	00000593          	li	a1,0
   10a64:	0a440513          	addi	a0,s0,164
   10a68:	634000ef          	jal	1109c <memset>
   10a6c:	04043c23          	sd	zero,88(s0)
   10a70:	06042023          	sw	zero,96(s0)
   10a74:	06043c23          	sd	zero,120(s0)
   10a78:	08042023          	sw	zero,128(s0)
   10a7c:	02813083          	ld	ra,40(sp)
   10a80:	00040513          	mv	a0,s0
   10a84:	02013403          	ld	s0,32(sp)
   10a88:	01813483          	ld	s1,24(sp)
   10a8c:	03010113          	addi	sp,sp,48
   10a90:	00008067          	ret
   10a94:	0006b403          	ld	s0,0(a3)
   10a98:	00040663          	beqz	s0,10aa4 <__sfp+0xd0>
   10a9c:	00040693          	mv	a3,s0
   10aa0:	f59ff06f          	j	109f8 <__sfp+0x24>
   10aa4:	2d800593          	li	a1,728
   10aa8:	00048513          	mv	a0,s1
   10aac:	00d13423          	sd	a3,8(sp)
   10ab0:	43d000ef          	jal	116ec <_malloc_r>
   10ab4:	00813683          	ld	a3,8(sp)
   10ab8:	00050413          	mv	s0,a0
   10abc:	04050063          	beqz	a0,10afc <__sfp+0x128>
   10ac0:	00400793          	li	a5,4
   10ac4:	00f52423          	sw	a5,8(a0)
   10ac8:	01850513          	addi	a0,a0,24
   10acc:	00043023          	sd	zero,0(s0)
   10ad0:	00a43823          	sd	a0,16(s0)
   10ad4:	2c000613          	li	a2,704
   10ad8:	00000593          	li	a1,0
   10adc:	00d13423          	sd	a3,8(sp)
   10ae0:	5bc000ef          	jal	1109c <memset>
   10ae4:	00813683          	ld	a3,8(sp)
   10ae8:	0086b023          	sd	s0,0(a3)
   10aec:	00040693          	mv	a3,s0
   10af0:	f09ff06f          	j	109f8 <__sfp+0x24>
   10af4:	d99ff0ef          	jal	1088c <global_stdio_init.part.0>
   10af8:	ef9ff06f          	j	109f0 <__sfp+0x1c>
   10afc:	0006b023          	sd	zero,0(a3)
   10b00:	00c00793          	li	a5,12
   10b04:	00f4a023          	sw	a5,0(s1)
   10b08:	f75ff06f          	j	10a7c <__sfp+0xa8>

0000000000010b0c <__sinit>:
   10b0c:	04853783          	ld	a5,72(a0)
   10b10:	00078463          	beqz	a5,10b18 <__sinit+0xc>
   10b14:	00008067          	ret
   10b18:	000117b7          	lui	a5,0x11
   10b1c:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10b20:	82078793          	addi	a5,a5,-2016 # 10820 <cleanup_stdio>
   10b24:	04f53423          	sd	a5,72(a0)
   10b28:	fe0716e3          	bnez	a4,10b14 <__sinit+0x8>
   10b2c:	d61ff06f          	j	1088c <global_stdio_init.part.0>

0000000000010b30 <__sfp_lock_acquire>:
   10b30:	00008067          	ret

0000000000010b34 <__sfp_lock_release>:
   10b34:	00008067          	ret

0000000000010b38 <__fp_lock_all>:
   10b38:	00013637          	lui	a2,0x13
   10b3c:	000105b7          	lui	a1,0x10
   10b40:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10b44:	7fc58593          	addi	a1,a1,2044 # 107fc <__fp_lock>
   10b48:	00000513          	li	a0,0
   10b4c:	01c0006f          	j	10b68 <_fwalk_sglue>

0000000000010b50 <__fp_unlock_all>:
   10b50:	00013637          	lui	a2,0x13
   10b54:	000115b7          	lui	a1,0x11
   10b58:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10b5c:	88458593          	addi	a1,a1,-1916 # 10884 <__fp_unlock>
   10b60:	00000513          	li	a0,0
   10b64:	0040006f          	j	10b68 <_fwalk_sglue>

0000000000010b68 <_fwalk_sglue>:
   10b68:	fb010113          	addi	sp,sp,-80
   10b6c:	03213823          	sd	s2,48(sp)
   10b70:	03313423          	sd	s3,40(sp)
   10b74:	03413023          	sd	s4,32(sp)
   10b78:	01513c23          	sd	s5,24(sp)
   10b7c:	01613823          	sd	s6,16(sp)
   10b80:	01713423          	sd	s7,8(sp)
   10b84:	04113423          	sd	ra,72(sp)
   10b88:	04813023          	sd	s0,64(sp)
   10b8c:	02913c23          	sd	s1,56(sp)
   10b90:	00060913          	mv	s2,a2
   10b94:	00050a13          	mv	s4,a0
   10b98:	00058a93          	mv	s5,a1
   10b9c:	00000b13          	li	s6,0
   10ba0:	00100b93          	li	s7,1
   10ba4:	fff00993          	li	s3,-1
   10ba8:	00892783          	lw	a5,8(s2)
   10bac:	04f05a63          	blez	a5,10c00 <_fwalk_sglue+0x98>
   10bb0:	02079793          	slli	a5,a5,0x20
   10bb4:	0207d793          	srli	a5,a5,0x20
   10bb8:	00179493          	slli	s1,a5,0x1
   10bbc:	00f484b3          	add	s1,s1,a5
   10bc0:	01093403          	ld	s0,16(s2)
   10bc4:	00249493          	slli	s1,s1,0x2
   10bc8:	40f484b3          	sub	s1,s1,a5
   10bcc:	00449493          	slli	s1,s1,0x4
   10bd0:	009404b3          	add	s1,s0,s1
   10bd4:	01045783          	lhu	a5,16(s0)
   10bd8:	02fbf063          	bgeu	s7,a5,10bf8 <_fwalk_sglue+0x90>
   10bdc:	01241783          	lh	a5,18(s0)
   10be0:	00040593          	mv	a1,s0
   10be4:	000a0513          	mv	a0,s4
   10be8:	01378863          	beq	a5,s3,10bf8 <_fwalk_sglue+0x90>
   10bec:	000a80e7          	jalr	s5
   10bf0:	01656b33          	or	s6,a0,s6
   10bf4:	000b0b1b          	sext.w	s6,s6
   10bf8:	0b040413          	addi	s0,s0,176
   10bfc:	fc941ce3          	bne	s0,s1,10bd4 <_fwalk_sglue+0x6c>
   10c00:	00093903          	ld	s2,0(s2)
   10c04:	fa0912e3          	bnez	s2,10ba8 <_fwalk_sglue+0x40>
   10c08:	04813083          	ld	ra,72(sp)
   10c0c:	04013403          	ld	s0,64(sp)
   10c10:	03813483          	ld	s1,56(sp)
   10c14:	03013903          	ld	s2,48(sp)
   10c18:	02813983          	ld	s3,40(sp)
   10c1c:	02013a03          	ld	s4,32(sp)
   10c20:	01813a83          	ld	s5,24(sp)
   10c24:	00813b83          	ld	s7,8(sp)
   10c28:	000b0513          	mv	a0,s6
   10c2c:	01013b03          	ld	s6,16(sp)
   10c30:	05010113          	addi	sp,sp,80
   10c34:	00008067          	ret

0000000000010c38 <__sread>:
   10c38:	ff010113          	addi	sp,sp,-16
   10c3c:	00813023          	sd	s0,0(sp)
   10c40:	00058413          	mv	s0,a1
   10c44:	01259583          	lh	a1,18(a1)
   10c48:	00113423          	sd	ra,8(sp)
   10c4c:	2ec000ef          	jal	10f38 <_read_r>
   10c50:	02054063          	bltz	a0,10c70 <__sread+0x38>
   10c54:	09043783          	ld	a5,144(s0)
   10c58:	00813083          	ld	ra,8(sp)
   10c5c:	00a787b3          	add	a5,a5,a0
   10c60:	08f43823          	sd	a5,144(s0)
   10c64:	00013403          	ld	s0,0(sp)
   10c68:	01010113          	addi	sp,sp,16
   10c6c:	00008067          	ret
   10c70:	01045783          	lhu	a5,16(s0)
   10c74:	fffff737          	lui	a4,0xfffff
   10c78:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10c7c:	00e7f7b3          	and	a5,a5,a4
   10c80:	00813083          	ld	ra,8(sp)
   10c84:	00f41823          	sh	a5,16(s0)
   10c88:	00013403          	ld	s0,0(sp)
   10c8c:	01010113          	addi	sp,sp,16
   10c90:	00008067          	ret

0000000000010c94 <__seofread>:
   10c94:	00000513          	li	a0,0
   10c98:	00008067          	ret

0000000000010c9c <__swrite>:
   10c9c:	01059783          	lh	a5,16(a1)
   10ca0:	fd010113          	addi	sp,sp,-48
   10ca4:	00068313          	mv	t1,a3
   10ca8:	02113423          	sd	ra,40(sp)
   10cac:	1007f693          	andi	a3,a5,256
   10cb0:	00058713          	mv	a4,a1
   10cb4:	00060893          	mv	a7,a2
   10cb8:	00050813          	mv	a6,a0
   10cbc:	02069863          	bnez	a3,10cec <__swrite+0x50>
   10cc0:	fffff6b7          	lui	a3,0xfffff
   10cc4:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10cc8:	02813083          	ld	ra,40(sp)
   10ccc:	00d7f7b3          	and	a5,a5,a3
   10cd0:	01271583          	lh	a1,18(a4)
   10cd4:	00f71823          	sh	a5,16(a4)
   10cd8:	00030693          	mv	a3,t1
   10cdc:	00088613          	mv	a2,a7
   10ce0:	00080513          	mv	a0,a6
   10ce4:	03010113          	addi	sp,sp,48
   10ce8:	2b80006f          	j	10fa0 <_write_r>
   10cec:	01259583          	lh	a1,18(a1)
   10cf0:	00c13823          	sd	a2,16(sp)
   10cf4:	00200693          	li	a3,2
   10cf8:	00000613          	li	a2,0
   10cfc:	00613c23          	sd	t1,24(sp)
   10d00:	00e13023          	sd	a4,0(sp)
   10d04:	00a13423          	sd	a0,8(sp)
   10d08:	1c8000ef          	jal	10ed0 <_lseek_r>
   10d0c:	00013703          	ld	a4,0(sp)
   10d10:	01813303          	ld	t1,24(sp)
   10d14:	01013883          	ld	a7,16(sp)
   10d18:	01071783          	lh	a5,16(a4)
   10d1c:	00813803          	ld	a6,8(sp)
   10d20:	fa1ff06f          	j	10cc0 <__swrite+0x24>

0000000000010d24 <__sseek>:
   10d24:	ff010113          	addi	sp,sp,-16
   10d28:	00813023          	sd	s0,0(sp)
   10d2c:	00058413          	mv	s0,a1
   10d30:	01259583          	lh	a1,18(a1)
   10d34:	00113423          	sd	ra,8(sp)
   10d38:	198000ef          	jal	10ed0 <_lseek_r>
   10d3c:	fff00713          	li	a4,-1
   10d40:	01041783          	lh	a5,16(s0)
   10d44:	02e50263          	beq	a0,a4,10d68 <__sseek+0x44>
   10d48:	00001737          	lui	a4,0x1
   10d4c:	00e7e7b3          	or	a5,a5,a4
   10d50:	00813083          	ld	ra,8(sp)
   10d54:	08a43823          	sd	a0,144(s0)
   10d58:	00f41823          	sh	a5,16(s0)
   10d5c:	00013403          	ld	s0,0(sp)
   10d60:	01010113          	addi	sp,sp,16
   10d64:	00008067          	ret
   10d68:	80050713          	addi	a4,a0,-2048
   10d6c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10d70:	00e7f7b3          	and	a5,a5,a4
   10d74:	00813083          	ld	ra,8(sp)
   10d78:	00f41823          	sh	a5,16(s0)
   10d7c:	00013403          	ld	s0,0(sp)
   10d80:	01010113          	addi	sp,sp,16
   10d84:	00008067          	ret

0000000000010d88 <__sclose>:
   10d88:	01259583          	lh	a1,18(a1)
   10d8c:	0040006f          	j	10d90 <_close_r>

0000000000010d90 <_close_r>:
   10d90:	fe010113          	addi	sp,sp,-32
   10d94:	00813823          	sd	s0,16(sp)
   10d98:	00913423          	sd	s1,8(sp)
   10d9c:	00050493          	mv	s1,a0
   10da0:	00058513          	mv	a0,a1
   10da4:	00113c23          	sd	ra,24(sp)
   10da8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10dac:	7e4010ef          	jal	12590 <_close>
   10db0:	fff00793          	li	a5,-1
   10db4:	00f50c63          	beq	a0,a5,10dcc <_close_r+0x3c>
   10db8:	01813083          	ld	ra,24(sp)
   10dbc:	01013403          	ld	s0,16(sp)
   10dc0:	00813483          	ld	s1,8(sp)
   10dc4:	02010113          	addi	sp,sp,32
   10dc8:	00008067          	ret
   10dcc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10dd0:	fe0784e3          	beqz	a5,10db8 <_close_r+0x28>
   10dd4:	01813083          	ld	ra,24(sp)
   10dd8:	01013403          	ld	s0,16(sp)
   10ddc:	00f4a023          	sw	a5,0(s1)
   10de0:	00813483          	ld	s1,8(sp)
   10de4:	02010113          	addi	sp,sp,32
   10de8:	00008067          	ret

0000000000010dec <_reclaim_reent>:
   10dec:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10df0:	0ca78e63          	beq	a5,a0,10ecc <_reclaim_reent+0xe0>
   10df4:	06853583          	ld	a1,104(a0)
   10df8:	fd010113          	addi	sp,sp,-48
   10dfc:	00913c23          	sd	s1,24(sp)
   10e00:	02113423          	sd	ra,40(sp)
   10e04:	02813023          	sd	s0,32(sp)
   10e08:	00050493          	mv	s1,a0
   10e0c:	04058863          	beqz	a1,10e5c <_reclaim_reent+0x70>
   10e10:	01213823          	sd	s2,16(sp)
   10e14:	01313423          	sd	s3,8(sp)
   10e18:	00000913          	li	s2,0
   10e1c:	20000993          	li	s3,512
   10e20:	012587b3          	add	a5,a1,s2
   10e24:	0007b403          	ld	s0,0(a5)
   10e28:	00040e63          	beqz	s0,10e44 <_reclaim_reent+0x58>
   10e2c:	00040593          	mv	a1,s0
   10e30:	00043403          	ld	s0,0(s0)
   10e34:	00048513          	mv	a0,s1
   10e38:	5b0000ef          	jal	113e8 <_free_r>
   10e3c:	fe0418e3          	bnez	s0,10e2c <_reclaim_reent+0x40>
   10e40:	0684b583          	ld	a1,104(s1)
   10e44:	00890913          	addi	s2,s2,8
   10e48:	fd391ce3          	bne	s2,s3,10e20 <_reclaim_reent+0x34>
   10e4c:	00048513          	mv	a0,s1
   10e50:	598000ef          	jal	113e8 <_free_r>
   10e54:	01013903          	ld	s2,16(sp)
   10e58:	00813983          	ld	s3,8(sp)
   10e5c:	0504b583          	ld	a1,80(s1)
   10e60:	00058663          	beqz	a1,10e6c <_reclaim_reent+0x80>
   10e64:	00048513          	mv	a0,s1
   10e68:	580000ef          	jal	113e8 <_free_r>
   10e6c:	0604b403          	ld	s0,96(s1)
   10e70:	00040c63          	beqz	s0,10e88 <_reclaim_reent+0x9c>
   10e74:	00040593          	mv	a1,s0
   10e78:	00043403          	ld	s0,0(s0)
   10e7c:	00048513          	mv	a0,s1
   10e80:	568000ef          	jal	113e8 <_free_r>
   10e84:	fe0418e3          	bnez	s0,10e74 <_reclaim_reent+0x88>
   10e88:	0784b583          	ld	a1,120(s1)
   10e8c:	00058663          	beqz	a1,10e98 <_reclaim_reent+0xac>
   10e90:	00048513          	mv	a0,s1
   10e94:	554000ef          	jal	113e8 <_free_r>
   10e98:	0484b783          	ld	a5,72(s1)
   10e9c:	00078e63          	beqz	a5,10eb8 <_reclaim_reent+0xcc>
   10ea0:	02013403          	ld	s0,32(sp)
   10ea4:	02813083          	ld	ra,40(sp)
   10ea8:	00048513          	mv	a0,s1
   10eac:	01813483          	ld	s1,24(sp)
   10eb0:	03010113          	addi	sp,sp,48
   10eb4:	00078067          	jr	a5
   10eb8:	02813083          	ld	ra,40(sp)
   10ebc:	02013403          	ld	s0,32(sp)
   10ec0:	01813483          	ld	s1,24(sp)
   10ec4:	03010113          	addi	sp,sp,48
   10ec8:	00008067          	ret
   10ecc:	00008067          	ret

0000000000010ed0 <_lseek_r>:
   10ed0:	fe010113          	addi	sp,sp,-32
   10ed4:	00058793          	mv	a5,a1
   10ed8:	00813823          	sd	s0,16(sp)
   10edc:	00913423          	sd	s1,8(sp)
   10ee0:	00060593          	mv	a1,a2
   10ee4:	00050493          	mv	s1,a0
   10ee8:	00068613          	mv	a2,a3
   10eec:	00078513          	mv	a0,a5
   10ef0:	00113c23          	sd	ra,24(sp)
   10ef4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10ef8:	708010ef          	jal	12600 <_lseek>
   10efc:	fff00793          	li	a5,-1
   10f00:	00f50c63          	beq	a0,a5,10f18 <_lseek_r+0x48>
   10f04:	01813083          	ld	ra,24(sp)
   10f08:	01013403          	ld	s0,16(sp)
   10f0c:	00813483          	ld	s1,8(sp)
   10f10:	02010113          	addi	sp,sp,32
   10f14:	00008067          	ret
   10f18:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10f1c:	fe0784e3          	beqz	a5,10f04 <_lseek_r+0x34>
   10f20:	01813083          	ld	ra,24(sp)
   10f24:	01013403          	ld	s0,16(sp)
   10f28:	00f4a023          	sw	a5,0(s1)
   10f2c:	00813483          	ld	s1,8(sp)
   10f30:	02010113          	addi	sp,sp,32
   10f34:	00008067          	ret

0000000000010f38 <_read_r>:
   10f38:	fe010113          	addi	sp,sp,-32
   10f3c:	00058793          	mv	a5,a1
   10f40:	00813823          	sd	s0,16(sp)
   10f44:	00913423          	sd	s1,8(sp)
   10f48:	00060593          	mv	a1,a2
   10f4c:	00050493          	mv	s1,a0
   10f50:	00068613          	mv	a2,a3
   10f54:	00078513          	mv	a0,a5
   10f58:	00113c23          	sd	ra,24(sp)
   10f5c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10f60:	6e0010ef          	jal	12640 <_read>
   10f64:	fff00793          	li	a5,-1
   10f68:	00f50c63          	beq	a0,a5,10f80 <_read_r+0x48>
   10f6c:	01813083          	ld	ra,24(sp)
   10f70:	01013403          	ld	s0,16(sp)
   10f74:	00813483          	ld	s1,8(sp)
   10f78:	02010113          	addi	sp,sp,32
   10f7c:	00008067          	ret
   10f80:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10f84:	fe0784e3          	beqz	a5,10f6c <_read_r+0x34>
   10f88:	01813083          	ld	ra,24(sp)
   10f8c:	01013403          	ld	s0,16(sp)
   10f90:	00f4a023          	sw	a5,0(s1)
   10f94:	00813483          	ld	s1,8(sp)
   10f98:	02010113          	addi	sp,sp,32
   10f9c:	00008067          	ret

0000000000010fa0 <_write_r>:
   10fa0:	fe010113          	addi	sp,sp,-32
   10fa4:	00058793          	mv	a5,a1
   10fa8:	00813823          	sd	s0,16(sp)
   10fac:	00913423          	sd	s1,8(sp)
   10fb0:	00060593          	mv	a1,a2
   10fb4:	00050493          	mv	s1,a0
   10fb8:	00068613          	mv	a2,a3
   10fbc:	00078513          	mv	a0,a5
   10fc0:	00113c23          	sd	ra,24(sp)
   10fc4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10fc8:	730010ef          	jal	126f8 <_write>
   10fcc:	fff00793          	li	a5,-1
   10fd0:	00f50c63          	beq	a0,a5,10fe8 <_write_r+0x48>
   10fd4:	01813083          	ld	ra,24(sp)
   10fd8:	01013403          	ld	s0,16(sp)
   10fdc:	00813483          	ld	s1,8(sp)
   10fe0:	02010113          	addi	sp,sp,32
   10fe4:	00008067          	ret
   10fe8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10fec:	fe0784e3          	beqz	a5,10fd4 <_write_r+0x34>
   10ff0:	01813083          	ld	ra,24(sp)
   10ff4:	01013403          	ld	s0,16(sp)
   10ff8:	00f4a023          	sw	a5,0(s1)
   10ffc:	00813483          	ld	s1,8(sp)
   11000:	02010113          	addi	sp,sp,32
   11004:	00008067          	ret

0000000000011008 <__libc_init_array>:
   11008:	fe010113          	addi	sp,sp,-32
   1100c:	00813823          	sd	s0,16(sp)
   11010:	01213023          	sd	s2,0(sp)
   11014:	00013437          	lui	s0,0x13
   11018:	00013937          	lui	s2,0x13
   1101c:	00113c23          	sd	ra,24(sp)
   11020:	00913423          	sd	s1,8(sp)
   11024:	00090913          	mv	s2,s2
   11028:	00040413          	mv	s0,s0
   1102c:	02890263          	beq	s2,s0,11050 <__libc_init_array+0x48>
   11030:	40890933          	sub	s2,s2,s0
   11034:	40395913          	srai	s2,s2,0x3
   11038:	00000493          	li	s1,0
   1103c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   11040:	00148493          	addi	s1,s1,1
   11044:	00840413          	addi	s0,s0,8
   11048:	000780e7          	jalr	a5
   1104c:	ff24e8e3          	bltu	s1,s2,1103c <__libc_init_array+0x34>
   11050:	00013937          	lui	s2,0x13
   11054:	00013437          	lui	s0,0x13
   11058:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1105c:	00040413          	mv	s0,s0
   11060:	02890263          	beq	s2,s0,11084 <__libc_init_array+0x7c>
   11064:	40890933          	sub	s2,s2,s0
   11068:	40395913          	srai	s2,s2,0x3
   1106c:	00000493          	li	s1,0
   11070:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   11074:	00148493          	addi	s1,s1,1
   11078:	00840413          	addi	s0,s0,8
   1107c:	000780e7          	jalr	a5
   11080:	ff24e8e3          	bltu	s1,s2,11070 <__libc_init_array+0x68>
   11084:	01813083          	ld	ra,24(sp)
   11088:	01013403          	ld	s0,16(sp)
   1108c:	00813483          	ld	s1,8(sp)
   11090:	00013903          	ld	s2,0(sp)
   11094:	02010113          	addi	sp,sp,32
   11098:	00008067          	ret

000000000001109c <memset>:
   1109c:	00f00313          	li	t1,15
   110a0:	00050713          	mv	a4,a0
   110a4:	02c37a63          	bgeu	t1,a2,110d8 <memset+0x3c>
   110a8:	00f77793          	andi	a5,a4,15
   110ac:	0a079063          	bnez	a5,1114c <memset+0xb0>
   110b0:	06059e63          	bnez	a1,1112c <memset+0x90>
   110b4:	ff067693          	andi	a3,a2,-16
   110b8:	00f67613          	andi	a2,a2,15
   110bc:	00e686b3          	add	a3,a3,a4
   110c0:	00b73023          	sd	a1,0(a4)
   110c4:	00b73423          	sd	a1,8(a4)
   110c8:	01070713          	addi	a4,a4,16
   110cc:	fed76ae3          	bltu	a4,a3,110c0 <memset+0x24>
   110d0:	00061463          	bnez	a2,110d8 <memset+0x3c>
   110d4:	00008067          	ret
   110d8:	40c306b3          	sub	a3,t1,a2
   110dc:	00269693          	slli	a3,a3,0x2
   110e0:	00000297          	auipc	t0,0x0
   110e4:	005686b3          	add	a3,a3,t0
   110e8:	00c68067          	jr	12(a3)
   110ec:	00b70723          	sb	a1,14(a4)
   110f0:	00b706a3          	sb	a1,13(a4)
   110f4:	00b70623          	sb	a1,12(a4)
   110f8:	00b705a3          	sb	a1,11(a4)
   110fc:	00b70523          	sb	a1,10(a4)
   11100:	00b704a3          	sb	a1,9(a4)
   11104:	00b70423          	sb	a1,8(a4)
   11108:	00b703a3          	sb	a1,7(a4)
   1110c:	00b70323          	sb	a1,6(a4)
   11110:	00b702a3          	sb	a1,5(a4)
   11114:	00b70223          	sb	a1,4(a4)
   11118:	00b701a3          	sb	a1,3(a4)
   1111c:	00b70123          	sb	a1,2(a4)
   11120:	00b700a3          	sb	a1,1(a4)
   11124:	00b70023          	sb	a1,0(a4)
   11128:	00008067          	ret
   1112c:	0ff5f593          	zext.b	a1,a1
   11130:	00859693          	slli	a3,a1,0x8
   11134:	00d5e5b3          	or	a1,a1,a3
   11138:	01059693          	slli	a3,a1,0x10
   1113c:	00d5e5b3          	or	a1,a1,a3
   11140:	02059693          	slli	a3,a1,0x20
   11144:	00d5e5b3          	or	a1,a1,a3
   11148:	f6dff06f          	j	110b4 <memset+0x18>
   1114c:	00279693          	slli	a3,a5,0x2
   11150:	00000297          	auipc	t0,0x0
   11154:	005686b3          	add	a3,a3,t0
   11158:	00008293          	mv	t0,ra
   1115c:	f98680e7          	jalr	-104(a3)
   11160:	00028093          	mv	ra,t0
   11164:	ff078793          	addi	a5,a5,-16
   11168:	40f70733          	sub	a4,a4,a5
   1116c:	00f60633          	add	a2,a2,a5
   11170:	f6c374e3          	bgeu	t1,a2,110d8 <memset+0x3c>
   11174:	f3dff06f          	j	110b0 <memset+0x14>

0000000000011178 <__call_exitprocs>:
   11178:	fb010113          	addi	sp,sp,-80
   1117c:	03413023          	sd	s4,32(sp)
   11180:	03213823          	sd	s2,48(sp)
   11184:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   11188:	04113423          	sd	ra,72(sp)
   1118c:	06090e63          	beqz	s2,11208 <__call_exitprocs+0x90>
   11190:	03313423          	sd	s3,40(sp)
   11194:	01513c23          	sd	s5,24(sp)
   11198:	01613823          	sd	s6,16(sp)
   1119c:	01713423          	sd	s7,8(sp)
   111a0:	04813023          	sd	s0,64(sp)
   111a4:	02913c23          	sd	s1,56(sp)
   111a8:	01813023          	sd	s8,0(sp)
   111ac:	00050b13          	mv	s6,a0
   111b0:	00058b93          	mv	s7,a1
   111b4:	fff00993          	li	s3,-1
   111b8:	00100a93          	li	s5,1
   111bc:	00892403          	lw	s0,8(s2)
   111c0:	fff4041b          	addiw	s0,s0,-1
   111c4:	02044463          	bltz	s0,111ec <__call_exitprocs+0x74>
   111c8:	01090493          	addi	s1,s2,16
   111cc:	00341793          	slli	a5,s0,0x3
   111d0:	00f484b3          	add	s1,s1,a5
   111d4:	040b8463          	beqz	s7,1121c <__call_exitprocs+0xa4>
   111d8:	2004b783          	ld	a5,512(s1)
   111dc:	05778063          	beq	a5,s7,1121c <__call_exitprocs+0xa4>
   111e0:	fff4041b          	addiw	s0,s0,-1
   111e4:	ff848493          	addi	s1,s1,-8
   111e8:	ff3418e3          	bne	s0,s3,111d8 <__call_exitprocs+0x60>
   111ec:	04013403          	ld	s0,64(sp)
   111f0:	03813483          	ld	s1,56(sp)
   111f4:	02813983          	ld	s3,40(sp)
   111f8:	01813a83          	ld	s5,24(sp)
   111fc:	01013b03          	ld	s6,16(sp)
   11200:	00813b83          	ld	s7,8(sp)
   11204:	00013c03          	ld	s8,0(sp)
   11208:	04813083          	ld	ra,72(sp)
   1120c:	03013903          	ld	s2,48(sp)
   11210:	02013a03          	ld	s4,32(sp)
   11214:	05010113          	addi	sp,sp,80
   11218:	00008067          	ret
   1121c:	00892783          	lw	a5,8(s2)
   11220:	0004b683          	ld	a3,0(s1)
   11224:	fff7879b          	addiw	a5,a5,-1
   11228:	06878a63          	beq	a5,s0,1129c <__call_exitprocs+0x124>
   1122c:	0004b023          	sd	zero,0(s1)
   11230:	02068663          	beqz	a3,1125c <__call_exitprocs+0xe4>
   11234:	31092783          	lw	a5,784(s2)
   11238:	008a973b          	sllw	a4,s5,s0
   1123c:	00892c03          	lw	s8,8(s2)
   11240:	00e7f7b3          	and	a5,a5,a4
   11244:	02079463          	bnez	a5,1126c <__call_exitprocs+0xf4>
   11248:	000680e7          	jalr	a3
   1124c:	00892703          	lw	a4,8(s2)
   11250:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11254:	03871e63          	bne	a4,s8,11290 <__call_exitprocs+0x118>
   11258:	03279c63          	bne	a5,s2,11290 <__call_exitprocs+0x118>
   1125c:	fff4041b          	addiw	s0,s0,-1
   11260:	ff848493          	addi	s1,s1,-8
   11264:	f73418e3          	bne	s0,s3,111d4 <__call_exitprocs+0x5c>
   11268:	f85ff06f          	j	111ec <__call_exitprocs+0x74>
   1126c:	31492783          	lw	a5,788(s2)
   11270:	1004b583          	ld	a1,256(s1)
   11274:	00f77733          	and	a4,a4,a5
   11278:	02071663          	bnez	a4,112a4 <__call_exitprocs+0x12c>
   1127c:	000b0513          	mv	a0,s6
   11280:	000680e7          	jalr	a3
   11284:	00892703          	lw	a4,8(s2)
   11288:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   1128c:	fd8706e3          	beq	a4,s8,11258 <__call_exitprocs+0xe0>
   11290:	f4078ee3          	beqz	a5,111ec <__call_exitprocs+0x74>
   11294:	00078913          	mv	s2,a5
   11298:	f25ff06f          	j	111bc <__call_exitprocs+0x44>
   1129c:	00892423          	sw	s0,8(s2)
   112a0:	f91ff06f          	j	11230 <__call_exitprocs+0xb8>
   112a4:	00058513          	mv	a0,a1
   112a8:	000680e7          	jalr	a3
   112ac:	fa1ff06f          	j	1124c <__call_exitprocs+0xd4>

00000000000112b0 <atexit>:
   112b0:	00050593          	mv	a1,a0
   112b4:	00000693          	li	a3,0
   112b8:	00000613          	li	a2,0
   112bc:	00000513          	li	a0,0
   112c0:	2340106f          	j	124f4 <__register_exitproc>

00000000000112c4 <_malloc_trim_r>:
   112c4:	fd010113          	addi	sp,sp,-48
   112c8:	01213823          	sd	s2,16(sp)
   112cc:	00013937          	lui	s2,0x13
   112d0:	02813023          	sd	s0,32(sp)
   112d4:	00913c23          	sd	s1,24(sp)
   112d8:	01313423          	sd	s3,8(sp)
   112dc:	00058413          	mv	s0,a1
   112e0:	02113423          	sd	ra,40(sp)
   112e4:	00050993          	mv	s3,a0
   112e8:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   112ec:	4e5000ef          	jal	11fd0 <__malloc_lock>
   112f0:	01093783          	ld	a5,16(s2)
   112f4:	00001737          	lui	a4,0x1
   112f8:	0087b483          	ld	s1,8(a5)
   112fc:	ffc4f493          	andi	s1,s1,-4
   11300:	7ff48793          	addi	a5,s1,2047
   11304:	7e078793          	addi	a5,a5,2016
   11308:	40878433          	sub	s0,a5,s0
   1130c:	00c45413          	srli	s0,s0,0xc
   11310:	fff40413          	addi	s0,s0,-1
   11314:	00c41413          	slli	s0,s0,0xc
   11318:	00e44e63          	blt	s0,a4,11334 <_malloc_trim_r+0x70>
   1131c:	00000593          	li	a1,0
   11320:	00098513          	mv	a0,s3
   11324:	118010ef          	jal	1243c <_sbrk_r>
   11328:	01093783          	ld	a5,16(s2)
   1132c:	009787b3          	add	a5,a5,s1
   11330:	02f50663          	beq	a0,a5,1135c <_malloc_trim_r+0x98>
   11334:	00098513          	mv	a0,s3
   11338:	49d000ef          	jal	11fd4 <__malloc_unlock>
   1133c:	02813083          	ld	ra,40(sp)
   11340:	02013403          	ld	s0,32(sp)
   11344:	01813483          	ld	s1,24(sp)
   11348:	01013903          	ld	s2,16(sp)
   1134c:	00813983          	ld	s3,8(sp)
   11350:	00000513          	li	a0,0
   11354:	03010113          	addi	sp,sp,48
   11358:	00008067          	ret
   1135c:	408005b3          	neg	a1,s0
   11360:	00098513          	mv	a0,s3
   11364:	0d8010ef          	jal	1243c <_sbrk_r>
   11368:	fff00793          	li	a5,-1
   1136c:	04f50463          	beq	a0,a5,113b4 <_malloc_trim_r+0xf0>
   11370:	01093683          	ld	a3,16(s2)
   11374:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11378:	408484b3          	sub	s1,s1,s0
   1137c:	0014e493          	ori	s1,s1,1
   11380:	00098513          	mv	a0,s3
   11384:	408787bb          	subw	a5,a5,s0
   11388:	0096b423          	sd	s1,8(a3)
   1138c:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11390:	445000ef          	jal	11fd4 <__malloc_unlock>
   11394:	02813083          	ld	ra,40(sp)
   11398:	02013403          	ld	s0,32(sp)
   1139c:	01813483          	ld	s1,24(sp)
   113a0:	01013903          	ld	s2,16(sp)
   113a4:	00813983          	ld	s3,8(sp)
   113a8:	00100513          	li	a0,1
   113ac:	03010113          	addi	sp,sp,48
   113b0:	00008067          	ret
   113b4:	00000593          	li	a1,0
   113b8:	00098513          	mv	a0,s3
   113bc:	080010ef          	jal	1243c <_sbrk_r>
   113c0:	01093703          	ld	a4,16(s2)
   113c4:	01f00693          	li	a3,31
   113c8:	40e507b3          	sub	a5,a0,a4
   113cc:	f6f6d4e3          	bge	a3,a5,11334 <_malloc_trim_r+0x70>
   113d0:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   113d4:	0017e793          	ori	a5,a5,1
   113d8:	40c50533          	sub	a0,a0,a2
   113dc:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   113e0:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   113e4:	f51ff06f          	j	11334 <_malloc_trim_r+0x70>

00000000000113e8 <_free_r>:
   113e8:	12058863          	beqz	a1,11518 <_free_r+0x130>
   113ec:	fe010113          	addi	sp,sp,-32
   113f0:	00813823          	sd	s0,16(sp)
   113f4:	00b13423          	sd	a1,8(sp)
   113f8:	00050413          	mv	s0,a0
   113fc:	00113c23          	sd	ra,24(sp)
   11400:	3d1000ef          	jal	11fd0 <__malloc_lock>
   11404:	00813583          	ld	a1,8(sp)
   11408:	00013837          	lui	a6,0x13
   1140c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11410:	ff85b503          	ld	a0,-8(a1)
   11414:	ff058713          	addi	a4,a1,-16
   11418:	01083883          	ld	a7,16(a6)
   1141c:	ffe57793          	andi	a5,a0,-2
   11420:	00f70633          	add	a2,a4,a5
   11424:	00863683          	ld	a3,8(a2)
   11428:	00157313          	andi	t1,a0,1
   1142c:	ffc6f693          	andi	a3,a3,-4
   11430:	18c88e63          	beq	a7,a2,115cc <_free_r+0x1e4>
   11434:	00d63423          	sd	a3,8(a2)
   11438:	00d608b3          	add	a7,a2,a3
   1143c:	0088b883          	ld	a7,8(a7)
   11440:	0018f893          	andi	a7,a7,1
   11444:	08031e63          	bnez	t1,114e0 <_free_r+0xf8>
   11448:	ff05b303          	ld	t1,-16(a1)
   1144c:	000135b7          	lui	a1,0x13
   11450:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11454:	40670733          	sub	a4,a4,t1
   11458:	01073503          	ld	a0,16(a4)
   1145c:	006787b3          	add	a5,a5,t1
   11460:	14b50063          	beq	a0,a1,115a0 <_free_r+0x1b8>
   11464:	01873303          	ld	t1,24(a4)
   11468:	00653c23          	sd	t1,24(a0)
   1146c:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11470:	1a088263          	beqz	a7,11614 <_free_r+0x22c>
   11474:	0017e693          	ori	a3,a5,1
   11478:	00d73423          	sd	a3,8(a4)
   1147c:	00f63023          	sd	a5,0(a2)
   11480:	1ff00693          	li	a3,511
   11484:	0af6e663          	bltu	a3,a5,11530 <_free_r+0x148>
   11488:	0037d793          	srli	a5,a5,0x3
   1148c:	00179693          	slli	a3,a5,0x1
   11490:	0026869b          	addiw	a3,a3,2
   11494:	00369693          	slli	a3,a3,0x3
   11498:	00883503          	ld	a0,8(a6)
   1149c:	00d806b3          	add	a3,a6,a3
   114a0:	0006b583          	ld	a1,0(a3)
   114a4:	4027d61b          	sraiw	a2,a5,0x2
   114a8:	00100793          	li	a5,1
   114ac:	00c797b3          	sll	a5,a5,a2
   114b0:	00a7e7b3          	or	a5,a5,a0
   114b4:	ff068613          	addi	a2,a3,-16
   114b8:	00b73823          	sd	a1,16(a4)
   114bc:	00c73c23          	sd	a2,24(a4)
   114c0:	00f83423          	sd	a5,8(a6)
   114c4:	00e6b023          	sd	a4,0(a3)
   114c8:	00e5bc23          	sd	a4,24(a1)
   114cc:	00040513          	mv	a0,s0
   114d0:	01013403          	ld	s0,16(sp)
   114d4:	01813083          	ld	ra,24(sp)
   114d8:	02010113          	addi	sp,sp,32
   114dc:	2f90006f          	j	11fd4 <__malloc_unlock>
   114e0:	02089e63          	bnez	a7,1151c <_free_r+0x134>
   114e4:	000135b7          	lui	a1,0x13
   114e8:	00d787b3          	add	a5,a5,a3
   114ec:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   114f0:	01063683          	ld	a3,16(a2)
   114f4:	0017e893          	ori	a7,a5,1
   114f8:	00f70533          	add	a0,a4,a5
   114fc:	16b68663          	beq	a3,a1,11668 <_free_r+0x280>
   11500:	01863603          	ld	a2,24(a2)
   11504:	00c6bc23          	sd	a2,24(a3)
   11508:	00d63823          	sd	a3,16(a2)
   1150c:	01173423          	sd	a7,8(a4)
   11510:	00f53023          	sd	a5,0(a0)
   11514:	f6dff06f          	j	11480 <_free_r+0x98>
   11518:	00008067          	ret
   1151c:	00156513          	ori	a0,a0,1
   11520:	fea5bc23          	sd	a0,-8(a1)
   11524:	00f63023          	sd	a5,0(a2)
   11528:	1ff00693          	li	a3,511
   1152c:	f4f6fee3          	bgeu	a3,a5,11488 <_free_r+0xa0>
   11530:	0097d693          	srli	a3,a5,0x9
   11534:	00400613          	li	a2,4
   11538:	0ed66263          	bltu	a2,a3,1161c <_free_r+0x234>
   1153c:	0067d693          	srli	a3,a5,0x6
   11540:	00169593          	slli	a1,a3,0x1
   11544:	0725859b          	addiw	a1,a1,114
   11548:	00359593          	slli	a1,a1,0x3
   1154c:	0386861b          	addiw	a2,a3,56
   11550:	00b805b3          	add	a1,a6,a1
   11554:	0005b683          	ld	a3,0(a1)
   11558:	ff058593          	addi	a1,a1,-16
   1155c:	00d59863          	bne	a1,a3,1156c <_free_r+0x184>
   11560:	1240006f          	j	11684 <_free_r+0x29c>
   11564:	0106b683          	ld	a3,16(a3)
   11568:	00d58863          	beq	a1,a3,11578 <_free_r+0x190>
   1156c:	0086b603          	ld	a2,8(a3)
   11570:	ffc67613          	andi	a2,a2,-4
   11574:	fec7e8e3          	bltu	a5,a2,11564 <_free_r+0x17c>
   11578:	0186b583          	ld	a1,24(a3)
   1157c:	00b73c23          	sd	a1,24(a4)
   11580:	00d73823          	sd	a3,16(a4)
   11584:	00040513          	mv	a0,s0
   11588:	01013403          	ld	s0,16(sp)
   1158c:	01813083          	ld	ra,24(sp)
   11590:	00e5b823          	sd	a4,16(a1)
   11594:	00e6bc23          	sd	a4,24(a3)
   11598:	02010113          	addi	sp,sp,32
   1159c:	2390006f          	j	11fd4 <__malloc_unlock>
   115a0:	0a089263          	bnez	a7,11644 <_free_r+0x25c>
   115a4:	01863583          	ld	a1,24(a2)
   115a8:	01063603          	ld	a2,16(a2)
   115ac:	00f686b3          	add	a3,a3,a5
   115b0:	0016e793          	ori	a5,a3,1
   115b4:	00b63c23          	sd	a1,24(a2)
   115b8:	00c5b823          	sd	a2,16(a1)
   115bc:	00f73423          	sd	a5,8(a4)
   115c0:	00d70733          	add	a4,a4,a3
   115c4:	00d73023          	sd	a3,0(a4)
   115c8:	f05ff06f          	j	114cc <_free_r+0xe4>
   115cc:	00d786b3          	add	a3,a5,a3
   115d0:	02031063          	bnez	t1,115f0 <_free_r+0x208>
   115d4:	ff05b783          	ld	a5,-16(a1)
   115d8:	40f70733          	sub	a4,a4,a5
   115dc:	01073603          	ld	a2,16(a4)
   115e0:	00f686b3          	add	a3,a3,a5
   115e4:	01873783          	ld	a5,24(a4)
   115e8:	00f63c23          	sd	a5,24(a2)
   115ec:	00c7b823          	sd	a2,16(a5)
   115f0:	0016e613          	ori	a2,a3,1
   115f4:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   115f8:	00c73423          	sd	a2,8(a4)
   115fc:	00e83823          	sd	a4,16(a6)
   11600:	ecf6e6e3          	bltu	a3,a5,114cc <_free_r+0xe4>
   11604:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11608:	00040513          	mv	a0,s0
   1160c:	cb9ff0ef          	jal	112c4 <_malloc_trim_r>
   11610:	ebdff06f          	j	114cc <_free_r+0xe4>
   11614:	00d787b3          	add	a5,a5,a3
   11618:	ed9ff06f          	j	114f0 <_free_r+0x108>
   1161c:	01400613          	li	a2,20
   11620:	02d67a63          	bgeu	a2,a3,11654 <_free_r+0x26c>
   11624:	05400613          	li	a2,84
   11628:	06d66c63          	bltu	a2,a3,116a0 <_free_r+0x2b8>
   1162c:	00c7d693          	srli	a3,a5,0xc
   11630:	00169593          	slli	a1,a3,0x1
   11634:	0de5859b          	addiw	a1,a1,222
   11638:	00359593          	slli	a1,a1,0x3
   1163c:	06e6861b          	addiw	a2,a3,110
   11640:	f11ff06f          	j	11550 <_free_r+0x168>
   11644:	0017e693          	ori	a3,a5,1
   11648:	00d73423          	sd	a3,8(a4)
   1164c:	00f63023          	sd	a5,0(a2)
   11650:	e7dff06f          	j	114cc <_free_r+0xe4>
   11654:	00169593          	slli	a1,a3,0x1
   11658:	0b85859b          	addiw	a1,a1,184
   1165c:	00359593          	slli	a1,a1,0x3
   11660:	05b6861b          	addiw	a2,a3,91
   11664:	eedff06f          	j	11550 <_free_r+0x168>
   11668:	02e83423          	sd	a4,40(a6)
   1166c:	02e83023          	sd	a4,32(a6)
   11670:	00b73c23          	sd	a1,24(a4)
   11674:	00b73823          	sd	a1,16(a4)
   11678:	01173423          	sd	a7,8(a4)
   1167c:	00f53023          	sd	a5,0(a0)
   11680:	e4dff06f          	j	114cc <_free_r+0xe4>
   11684:	00883503          	ld	a0,8(a6)
   11688:	4026561b          	sraiw	a2,a2,0x2
   1168c:	00100793          	li	a5,1
   11690:	00c797b3          	sll	a5,a5,a2
   11694:	00a7e7b3          	or	a5,a5,a0
   11698:	00f83423          	sd	a5,8(a6)
   1169c:	ee1ff06f          	j	1157c <_free_r+0x194>
   116a0:	15400613          	li	a2,340
   116a4:	00d66e63          	bltu	a2,a3,116c0 <_free_r+0x2d8>
   116a8:	00f7d693          	srli	a3,a5,0xf
   116ac:	00169593          	slli	a1,a3,0x1
   116b0:	0f05859b          	addiw	a1,a1,240
   116b4:	00359593          	slli	a1,a1,0x3
   116b8:	0776861b          	addiw	a2,a3,119
   116bc:	e95ff06f          	j	11550 <_free_r+0x168>
   116c0:	55400613          	li	a2,1364
   116c4:	00d66e63          	bltu	a2,a3,116e0 <_free_r+0x2f8>
   116c8:	0127d693          	srli	a3,a5,0x12
   116cc:	00169593          	slli	a1,a3,0x1
   116d0:	0fa5859b          	addiw	a1,a1,250
   116d4:	00359593          	slli	a1,a1,0x3
   116d8:	07c6861b          	addiw	a2,a3,124
   116dc:	e75ff06f          	j	11550 <_free_r+0x168>
   116e0:	7f000593          	li	a1,2032
   116e4:	07e00613          	li	a2,126
   116e8:	e69ff06f          	j	11550 <_free_r+0x168>

00000000000116ec <_malloc_r>:
   116ec:	fa010113          	addi	sp,sp,-96
   116f0:	04813823          	sd	s0,80(sp)
   116f4:	04113c23          	sd	ra,88(sp)
   116f8:	01758713          	addi	a4,a1,23
   116fc:	02e00793          	li	a5,46
   11700:	00050413          	mv	s0,a0
   11704:	08e7ee63          	bltu	a5,a4,117a0 <_malloc_r+0xb4>
   11708:	02000713          	li	a4,32
   1170c:	06b76c63          	bltu	a4,a1,11784 <_malloc_r+0x98>
   11710:	0c1000ef          	jal	11fd0 <__malloc_lock>
   11714:	02000713          	li	a4,32
   11718:	05000693          	li	a3,80
   1171c:	00400893          	li	a7,4
   11720:	00013837          	lui	a6,0x13
   11724:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11728:	00d806b3          	add	a3,a6,a3
   1172c:	0086b783          	ld	a5,8(a3)
   11730:	ff068613          	addi	a2,a3,-16
   11734:	48c78063          	beq	a5,a2,11bb4 <_malloc_r+0x4c8>
   11738:	0087b703          	ld	a4,8(a5)
   1173c:	0187b603          	ld	a2,24(a5)
   11740:	0107b583          	ld	a1,16(a5)
   11744:	ffc77713          	andi	a4,a4,-4
   11748:	00e78733          	add	a4,a5,a4
   1174c:	00873683          	ld	a3,8(a4)
   11750:	00c5bc23          	sd	a2,24(a1)
   11754:	00b63823          	sd	a1,16(a2)
   11758:	0016e693          	ori	a3,a3,1
   1175c:	00040513          	mv	a0,s0
   11760:	00d73423          	sd	a3,8(a4)
   11764:	00f13423          	sd	a5,8(sp)
   11768:	06d000ef          	jal	11fd4 <__malloc_unlock>
   1176c:	00813783          	ld	a5,8(sp)
   11770:	05813083          	ld	ra,88(sp)
   11774:	05013403          	ld	s0,80(sp)
   11778:	01078513          	addi	a0,a5,16
   1177c:	06010113          	addi	sp,sp,96
   11780:	00008067          	ret
   11784:	00c00793          	li	a5,12
   11788:	00f42023          	sw	a5,0(s0)
   1178c:	00000513          	li	a0,0
   11790:	05813083          	ld	ra,88(sp)
   11794:	05013403          	ld	s0,80(sp)
   11798:	06010113          	addi	sp,sp,96
   1179c:	00008067          	ret
   117a0:	00100793          	li	a5,1
   117a4:	ff077713          	andi	a4,a4,-16
   117a8:	01f79793          	slli	a5,a5,0x1f
   117ac:	fcf77ce3          	bgeu	a4,a5,11784 <_malloc_r+0x98>
   117b0:	fcb76ae3          	bltu	a4,a1,11784 <_malloc_r+0x98>
   117b4:	00e13423          	sd	a4,8(sp)
   117b8:	019000ef          	jal	11fd0 <__malloc_lock>
   117bc:	00813703          	ld	a4,8(sp)
   117c0:	1f700793          	li	a5,503
   117c4:	4ee7fa63          	bgeu	a5,a4,11cb8 <_malloc_r+0x5cc>
   117c8:	00975793          	srli	a5,a4,0x9
   117cc:	18078a63          	beqz	a5,11960 <_malloc_r+0x274>
   117d0:	00400693          	li	a3,4
   117d4:	44f6ea63          	bltu	a3,a5,11c28 <_malloc_r+0x53c>
   117d8:	00675793          	srli	a5,a4,0x6
   117dc:	0397889b          	addiw	a7,a5,57
   117e0:	0018951b          	slliw	a0,a7,0x1
   117e4:	03878e1b          	addiw	t3,a5,56
   117e8:	00351513          	slli	a0,a0,0x3
   117ec:	00013837          	lui	a6,0x13
   117f0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   117f4:	00a80533          	add	a0,a6,a0
   117f8:	00853783          	ld	a5,8(a0)
   117fc:	ff050513          	addi	a0,a0,-16
   11800:	02f50863          	beq	a0,a5,11830 <_malloc_r+0x144>
   11804:	01f00313          	li	t1,31
   11808:	0140006f          	j	1181c <_malloc_r+0x130>
   1180c:	0187b583          	ld	a1,24(a5)
   11810:	36065263          	bgez	a2,11b74 <_malloc_r+0x488>
   11814:	00b50e63          	beq	a0,a1,11830 <_malloc_r+0x144>
   11818:	00058793          	mv	a5,a1
   1181c:	0087b683          	ld	a3,8(a5)
   11820:	ffc6f693          	andi	a3,a3,-4
   11824:	40e68633          	sub	a2,a3,a4
   11828:	fec352e3          	bge	t1,a2,1180c <_malloc_r+0x120>
   1182c:	000e0893          	mv	a7,t3
   11830:	02083783          	ld	a5,32(a6)
   11834:	00013e37          	lui	t3,0x13
   11838:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   1183c:	2fc78a63          	beq	a5,t3,11b30 <_malloc_r+0x444>
   11840:	0087b303          	ld	t1,8(a5)
   11844:	01f00613          	li	a2,31
   11848:	ffc37313          	andi	t1,t1,-4
   1184c:	40e306b3          	sub	a3,t1,a4
   11850:	4ad64463          	blt	a2,a3,11cf8 <_malloc_r+0x60c>
   11854:	03c83423          	sd	t3,40(a6)
   11858:	03c83023          	sd	t3,32(a6)
   1185c:	4606da63          	bgez	a3,11cd0 <_malloc_r+0x5e4>
   11860:	1ff00693          	li	a3,511
   11864:	00883583          	ld	a1,8(a6)
   11868:	3466ee63          	bltu	a3,t1,11bc4 <_malloc_r+0x4d8>
   1186c:	00335313          	srli	t1,t1,0x3
   11870:	00131693          	slli	a3,t1,0x1
   11874:	0026869b          	addiw	a3,a3,2
   11878:	00369693          	slli	a3,a3,0x3
   1187c:	00d806b3          	add	a3,a6,a3
   11880:	0006b503          	ld	a0,0(a3)
   11884:	4023531b          	sraiw	t1,t1,0x2
   11888:	00100613          	li	a2,1
   1188c:	00661633          	sll	a2,a2,t1
   11890:	00c5e5b3          	or	a1,a1,a2
   11894:	ff068613          	addi	a2,a3,-16
   11898:	00a7b823          	sd	a0,16(a5)
   1189c:	00c7bc23          	sd	a2,24(a5)
   118a0:	00b83423          	sd	a1,8(a6)
   118a4:	00f6b023          	sd	a5,0(a3)
   118a8:	00f53c23          	sd	a5,24(a0)
   118ac:	4028d79b          	sraiw	a5,a7,0x2
   118b0:	00100513          	li	a0,1
   118b4:	00f51533          	sll	a0,a0,a5
   118b8:	0aa5ec63          	bltu	a1,a0,11970 <_malloc_r+0x284>
   118bc:	00b577b3          	and	a5,a0,a1
   118c0:	02079463          	bnez	a5,118e8 <_malloc_r+0x1fc>
   118c4:	00151513          	slli	a0,a0,0x1
   118c8:	ffc8f893          	andi	a7,a7,-4
   118cc:	00b577b3          	and	a5,a0,a1
   118d0:	0048889b          	addiw	a7,a7,4
   118d4:	00079a63          	bnez	a5,118e8 <_malloc_r+0x1fc>
   118d8:	00151513          	slli	a0,a0,0x1
   118dc:	00b577b3          	and	a5,a0,a1
   118e0:	0048889b          	addiw	a7,a7,4
   118e4:	fe078ae3          	beqz	a5,118d8 <_malloc_r+0x1ec>
   118e8:	01f00e93          	li	t4,31
   118ec:	00189f13          	slli	t5,a7,0x1
   118f0:	002f0f1b          	addiw	t5,t5,2
   118f4:	003f1f13          	slli	t5,t5,0x3
   118f8:	ff0f0f13          	addi	t5,t5,-16
   118fc:	01e80f33          	add	t5,a6,t5
   11900:	000f0313          	mv	t1,t5
   11904:	01833683          	ld	a3,24(t1)
   11908:	00088f93          	mv	t6,a7
   1190c:	34d30263          	beq	t1,a3,11c50 <_malloc_r+0x564>
   11910:	0086b603          	ld	a2,8(a3)
   11914:	00068793          	mv	a5,a3
   11918:	0186b683          	ld	a3,24(a3)
   1191c:	ffc67613          	andi	a2,a2,-4
   11920:	40e605b3          	sub	a1,a2,a4
   11924:	34bec263          	blt	t4,a1,11c68 <_malloc_r+0x57c>
   11928:	fe05c2e3          	bltz	a1,1190c <_malloc_r+0x220>
   1192c:	00c78633          	add	a2,a5,a2
   11930:	00863703          	ld	a4,8(a2)
   11934:	0107b583          	ld	a1,16(a5)
   11938:	00040513          	mv	a0,s0
   1193c:	00176713          	ori	a4,a4,1
   11940:	00e63423          	sd	a4,8(a2)
   11944:	00d5bc23          	sd	a3,24(a1)
   11948:	00b6b823          	sd	a1,16(a3)
   1194c:	00f13423          	sd	a5,8(sp)
   11950:	684000ef          	jal	11fd4 <__malloc_unlock>
   11954:	00813783          	ld	a5,8(sp)
   11958:	01078513          	addi	a0,a5,16
   1195c:	e35ff06f          	j	11790 <_malloc_r+0xa4>
   11960:	40000513          	li	a0,1024
   11964:	04000893          	li	a7,64
   11968:	03f00e13          	li	t3,63
   1196c:	e81ff06f          	j	117ec <_malloc_r+0x100>
   11970:	01083783          	ld	a5,16(a6)
   11974:	0087b683          	ld	a3,8(a5)
   11978:	ffc6f893          	andi	a7,a3,-4
   1197c:	40e88633          	sub	a2,a7,a4
   11980:	00e8e663          	bltu	a7,a4,1198c <_malloc_r+0x2a0>
   11984:	02062693          	slti	a3,a2,32
   11988:	1a068863          	beqz	a3,11b38 <_malloc_r+0x44c>
   1198c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11990:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11994:	fff00693          	li	a3,-1
   11998:	00b705b3          	add	a1,a4,a1
   1199c:	44d60663          	beq	a2,a3,11de8 <_malloc_r+0x6fc>
   119a0:	000016b7          	lui	a3,0x1
   119a4:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   119a8:	00d585b3          	add	a1,a1,a3
   119ac:	fffff6b7          	lui	a3,0xfffff
   119b0:	00d5f5b3          	and	a1,a1,a3
   119b4:	00040513          	mv	a0,s0
   119b8:	03013423          	sd	a6,40(sp)
   119bc:	02f13023          	sd	a5,32(sp)
   119c0:	00e13c23          	sd	a4,24(sp)
   119c4:	01113823          	sd	a7,16(sp)
   119c8:	00b13423          	sd	a1,8(sp)
   119cc:	271000ef          	jal	1243c <_sbrk_r>
   119d0:	fff00693          	li	a3,-1
   119d4:	00813583          	ld	a1,8(sp)
   119d8:	01013883          	ld	a7,16(sp)
   119dc:	01813703          	ld	a4,24(sp)
   119e0:	02013783          	ld	a5,32(sp)
   119e4:	02813803          	ld	a6,40(sp)
   119e8:	00050313          	mv	t1,a0
   119ec:	36d50663          	beq	a0,a3,11d58 <_malloc_r+0x66c>
   119f0:	011786b3          	add	a3,a5,a7
   119f4:	36d56063          	bltu	a0,a3,11d54 <_malloc_r+0x668>
   119f8:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   119fc:	000e2603          	lw	a2,0(t3)
   11a00:	00b6063b          	addw	a2,a2,a1
   11a04:	00ce2023          	sw	a2,0(t3)
   11a08:	00060513          	mv	a0,a2
   11a0c:	4a668c63          	beq	a3,t1,11ec4 <_malloc_r+0x7d8>
   11a10:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11a14:	fff00613          	li	a2,-1
   11a18:	4ccf0463          	beq	t5,a2,11ee0 <_malloc_r+0x7f4>
   11a1c:	40d306b3          	sub	a3,t1,a3
   11a20:	00a686bb          	addw	a3,a3,a0
   11a24:	00de2023          	sw	a3,0(t3)
   11a28:	00f37e93          	andi	t4,t1,15
   11a2c:	3c0e8e63          	beqz	t4,11e08 <_malloc_r+0x71c>
   11a30:	ff037313          	andi	t1,t1,-16
   11a34:	000016b7          	lui	a3,0x1
   11a38:	01030313          	addi	t1,t1,16
   11a3c:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11a40:	00b30633          	add	a2,t1,a1
   11a44:	41d685b3          	sub	a1,a3,t4
   11a48:	40c585b3          	sub	a1,a1,a2
   11a4c:	03459593          	slli	a1,a1,0x34
   11a50:	0345d593          	srli	a1,a1,0x34
   11a54:	00040513          	mv	a0,s0
   11a58:	05c13023          	sd	t3,64(sp)
   11a5c:	03013c23          	sd	a6,56(sp)
   11a60:	02f13823          	sd	a5,48(sp)
   11a64:	02e13423          	sd	a4,40(sp)
   11a68:	03113023          	sd	a7,32(sp)
   11a6c:	00613c23          	sd	t1,24(sp)
   11a70:	01d13823          	sd	t4,16(sp)
   11a74:	00c13423          	sd	a2,8(sp)
   11a78:	04b13423          	sd	a1,72(sp)
   11a7c:	1c1000ef          	jal	1243c <_sbrk_r>
   11a80:	00050693          	mv	a3,a0
   11a84:	fff00513          	li	a0,-1
   11a88:	00813603          	ld	a2,8(sp)
   11a8c:	01013e83          	ld	t4,16(sp)
   11a90:	01813303          	ld	t1,24(sp)
   11a94:	02013883          	ld	a7,32(sp)
   11a98:	02813703          	ld	a4,40(sp)
   11a9c:	03013783          	ld	a5,48(sp)
   11aa0:	03813803          	ld	a6,56(sp)
   11aa4:	04013e03          	ld	t3,64(sp)
   11aa8:	48a68663          	beq	a3,a0,11f34 <_malloc_r+0x848>
   11aac:	04813583          	ld	a1,72(sp)
   11ab0:	0005851b          	sext.w	a0,a1
   11ab4:	000e2603          	lw	a2,0(t3)
   11ab8:	406686b3          	sub	a3,a3,t1
   11abc:	00b686b3          	add	a3,a3,a1
   11ac0:	0016e693          	ori	a3,a3,1
   11ac4:	00683823          	sd	t1,16(a6)
   11ac8:	00a6063b          	addw	a2,a2,a0
   11acc:	00d33423          	sd	a3,8(t1)
   11ad0:	00ce2023          	sw	a2,0(t3)
   11ad4:	03078e63          	beq	a5,a6,11b10 <_malloc_r+0x424>
   11ad8:	01f00513          	li	a0,31
   11adc:	41157663          	bgeu	a0,a7,11ee8 <_malloc_r+0x7fc>
   11ae0:	0087b583          	ld	a1,8(a5)
   11ae4:	fe888693          	addi	a3,a7,-24
   11ae8:	ff06f693          	andi	a3,a3,-16
   11aec:	0015f593          	andi	a1,a1,1
   11af0:	00d5e5b3          	or	a1,a1,a3
   11af4:	00b7b423          	sd	a1,8(a5)
   11af8:	00900893          	li	a7,9
   11afc:	00d785b3          	add	a1,a5,a3
   11b00:	0115b423          	sd	a7,8(a1)
   11b04:	0115b823          	sd	a7,16(a1)
   11b08:	44d56863          	bltu	a0,a3,11f58 <_malloc_r+0x86c>
   11b0c:	00833683          	ld	a3,8(t1)
   11b10:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11b14:	00c5f463          	bgeu	a1,a2,11b1c <_malloc_r+0x430>
   11b18:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11b1c:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11b20:	00c5f463          	bgeu	a1,a2,11b28 <_malloc_r+0x43c>
   11b24:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11b28:	00030793          	mv	a5,t1
   11b2c:	2340006f          	j	11d60 <_malloc_r+0x674>
   11b30:	00883583          	ld	a1,8(a6)
   11b34:	d79ff06f          	j	118ac <_malloc_r+0x1c0>
   11b38:	00176693          	ori	a3,a4,1
   11b3c:	00d7b423          	sd	a3,8(a5)
   11b40:	00e78733          	add	a4,a5,a4
   11b44:	00166613          	ori	a2,a2,1
   11b48:	00e83823          	sd	a4,16(a6)
   11b4c:	00040513          	mv	a0,s0
   11b50:	00c73423          	sd	a2,8(a4)
   11b54:	00f13423          	sd	a5,8(sp)
   11b58:	47c000ef          	jal	11fd4 <__malloc_unlock>
   11b5c:	00813783          	ld	a5,8(sp)
   11b60:	05813083          	ld	ra,88(sp)
   11b64:	05013403          	ld	s0,80(sp)
   11b68:	01078513          	addi	a0,a5,16
   11b6c:	06010113          	addi	sp,sp,96
   11b70:	00008067          	ret
   11b74:	0107b603          	ld	a2,16(a5)
   11b78:	00d786b3          	add	a3,a5,a3
   11b7c:	0086b703          	ld	a4,8(a3)
   11b80:	00b63c23          	sd	a1,24(a2)
   11b84:	00c5b823          	sd	a2,16(a1)
   11b88:	00176713          	ori	a4,a4,1
   11b8c:	00040513          	mv	a0,s0
   11b90:	00e6b423          	sd	a4,8(a3)
   11b94:	00f13423          	sd	a5,8(sp)
   11b98:	43c000ef          	jal	11fd4 <__malloc_unlock>
   11b9c:	00813783          	ld	a5,8(sp)
   11ba0:	05813083          	ld	ra,88(sp)
   11ba4:	05013403          	ld	s0,80(sp)
   11ba8:	01078513          	addi	a0,a5,16
   11bac:	06010113          	addi	sp,sp,96
   11bb0:	00008067          	ret
   11bb4:	0186b783          	ld	a5,24(a3)
   11bb8:	0028889b          	addiw	a7,a7,2
   11bbc:	c6f68ae3          	beq	a3,a5,11830 <_malloc_r+0x144>
   11bc0:	b79ff06f          	j	11738 <_malloc_r+0x4c>
   11bc4:	00935693          	srli	a3,t1,0x9
   11bc8:	00400613          	li	a2,4
   11bcc:	16d67863          	bgeu	a2,a3,11d3c <_malloc_r+0x650>
   11bd0:	01400613          	li	a2,20
   11bd4:	28d66e63          	bltu	a2,a3,11e70 <_malloc_r+0x784>
   11bd8:	00169513          	slli	a0,a3,0x1
   11bdc:	0b85051b          	addiw	a0,a0,184
   11be0:	00351513          	slli	a0,a0,0x3
   11be4:	05b6861b          	addiw	a2,a3,91
   11be8:	00a80533          	add	a0,a6,a0
   11bec:	00053683          	ld	a3,0(a0)
   11bf0:	ff050513          	addi	a0,a0,-16
   11bf4:	00d51863          	bne	a0,a3,11c04 <_malloc_r+0x518>
   11bf8:	1f80006f          	j	11df0 <_malloc_r+0x704>
   11bfc:	0106b683          	ld	a3,16(a3)
   11c00:	00d50863          	beq	a0,a3,11c10 <_malloc_r+0x524>
   11c04:	0086b603          	ld	a2,8(a3)
   11c08:	ffc67613          	andi	a2,a2,-4
   11c0c:	fec368e3          	bltu	t1,a2,11bfc <_malloc_r+0x510>
   11c10:	0186b503          	ld	a0,24(a3)
   11c14:	00a7bc23          	sd	a0,24(a5)
   11c18:	00d7b823          	sd	a3,16(a5)
   11c1c:	00f53823          	sd	a5,16(a0)
   11c20:	00f6bc23          	sd	a5,24(a3)
   11c24:	c89ff06f          	j	118ac <_malloc_r+0x1c0>
   11c28:	01400693          	li	a3,20
   11c2c:	14f6fa63          	bgeu	a3,a5,11d80 <_malloc_r+0x694>
   11c30:	05400693          	li	a3,84
   11c34:	24f6ee63          	bltu	a3,a5,11e90 <_malloc_r+0x7a4>
   11c38:	00c75793          	srli	a5,a4,0xc
   11c3c:	06f7889b          	addiw	a7,a5,111
   11c40:	0018951b          	slliw	a0,a7,0x1
   11c44:	06e78e1b          	addiw	t3,a5,110
   11c48:	00351513          	slli	a0,a0,0x3
   11c4c:	ba1ff06f          	j	117ec <_malloc_r+0x100>
   11c50:	001f8f9b          	addiw	t6,t6,1
   11c54:	003ff793          	andi	a5,t6,3
   11c58:	01030313          	addi	t1,t1,16
   11c5c:	14078263          	beqz	a5,11da0 <_malloc_r+0x6b4>
   11c60:	01833683          	ld	a3,24(t1)
   11c64:	ca9ff06f          	j	1190c <_malloc_r+0x220>
   11c68:	0107b503          	ld	a0,16(a5)
   11c6c:	00176893          	ori	a7,a4,1
   11c70:	0117b423          	sd	a7,8(a5)
   11c74:	00d53c23          	sd	a3,24(a0)
   11c78:	00a6b823          	sd	a0,16(a3)
   11c7c:	00e78733          	add	a4,a5,a4
   11c80:	02e83423          	sd	a4,40(a6)
   11c84:	02e83023          	sd	a4,32(a6)
   11c88:	0015e693          	ori	a3,a1,1
   11c8c:	00c78633          	add	a2,a5,a2
   11c90:	01c73c23          	sd	t3,24(a4)
   11c94:	01c73823          	sd	t3,16(a4)
   11c98:	00d73423          	sd	a3,8(a4)
   11c9c:	00040513          	mv	a0,s0
   11ca0:	00b63023          	sd	a1,0(a2)
   11ca4:	00f13423          	sd	a5,8(sp)
   11ca8:	32c000ef          	jal	11fd4 <__malloc_unlock>
   11cac:	00813783          	ld	a5,8(sp)
   11cb0:	01078513          	addi	a0,a5,16
   11cb4:	addff06f          	j	11790 <_malloc_r+0xa4>
   11cb8:	00375893          	srli	a7,a4,0x3
   11cbc:	00189693          	slli	a3,a7,0x1
   11cc0:	0026869b          	addiw	a3,a3,2
   11cc4:	00369693          	slli	a3,a3,0x3
   11cc8:	0008889b          	sext.w	a7,a7
   11ccc:	a55ff06f          	j	11720 <_malloc_r+0x34>
   11cd0:	00678333          	add	t1,a5,t1
   11cd4:	00833703          	ld	a4,8(t1)
   11cd8:	00040513          	mv	a0,s0
   11cdc:	00f13423          	sd	a5,8(sp)
   11ce0:	00176713          	ori	a4,a4,1
   11ce4:	00e33423          	sd	a4,8(t1)
   11ce8:	2ec000ef          	jal	11fd4 <__malloc_unlock>
   11cec:	00813783          	ld	a5,8(sp)
   11cf0:	01078513          	addi	a0,a5,16
   11cf4:	a9dff06f          	j	11790 <_malloc_r+0xa4>
   11cf8:	00176613          	ori	a2,a4,1
   11cfc:	00c7b423          	sd	a2,8(a5)
   11d00:	00e78733          	add	a4,a5,a4
   11d04:	02e83423          	sd	a4,40(a6)
   11d08:	02e83023          	sd	a4,32(a6)
   11d0c:	0016e613          	ori	a2,a3,1
   11d10:	00678333          	add	t1,a5,t1
   11d14:	01c73c23          	sd	t3,24(a4)
   11d18:	01c73823          	sd	t3,16(a4)
   11d1c:	00c73423          	sd	a2,8(a4)
   11d20:	00040513          	mv	a0,s0
   11d24:	00d33023          	sd	a3,0(t1)
   11d28:	00f13423          	sd	a5,8(sp)
   11d2c:	2a8000ef          	jal	11fd4 <__malloc_unlock>
   11d30:	00813783          	ld	a5,8(sp)
   11d34:	01078513          	addi	a0,a5,16
   11d38:	a59ff06f          	j	11790 <_malloc_r+0xa4>
   11d3c:	00635693          	srli	a3,t1,0x6
   11d40:	00169513          	slli	a0,a3,0x1
   11d44:	0725051b          	addiw	a0,a0,114
   11d48:	00351513          	slli	a0,a0,0x3
   11d4c:	0386861b          	addiw	a2,a3,56
   11d50:	e99ff06f          	j	11be8 <_malloc_r+0x4fc>
   11d54:	15078e63          	beq	a5,a6,11eb0 <_malloc_r+0x7c4>
   11d58:	01083783          	ld	a5,16(a6)
   11d5c:	0087b683          	ld	a3,8(a5)
   11d60:	ffc6f693          	andi	a3,a3,-4
   11d64:	40e68633          	sub	a2,a3,a4
   11d68:	00e6e663          	bltu	a3,a4,11d74 <_malloc_r+0x688>
   11d6c:	02062693          	slti	a3,a2,32
   11d70:	dc0684e3          	beqz	a3,11b38 <_malloc_r+0x44c>
   11d74:	00040513          	mv	a0,s0
   11d78:	25c000ef          	jal	11fd4 <__malloc_unlock>
   11d7c:	a11ff06f          	j	1178c <_malloc_r+0xa0>
   11d80:	05c7889b          	addiw	a7,a5,92
   11d84:	0018951b          	slliw	a0,a7,0x1
   11d88:	05b78e1b          	addiw	t3,a5,91
   11d8c:	00351513          	slli	a0,a0,0x3
   11d90:	a5dff06f          	j	117ec <_malloc_r+0x100>
   11d94:	010f3783          	ld	a5,16(t5)
   11d98:	fff8889b          	addiw	a7,a7,-1
   11d9c:	23e79663          	bne	a5,t5,11fc8 <_malloc_r+0x8dc>
   11da0:	0038f793          	andi	a5,a7,3
   11da4:	ff0f0f13          	addi	t5,t5,-16
   11da8:	fe0796e3          	bnez	a5,11d94 <_malloc_r+0x6a8>
   11dac:	00883683          	ld	a3,8(a6)
   11db0:	fff54793          	not	a5,a0
   11db4:	00d7f7b3          	and	a5,a5,a3
   11db8:	00f83423          	sd	a5,8(a6)
   11dbc:	00151513          	slli	a0,a0,0x1
   11dc0:	fff50693          	addi	a3,a0,-1
   11dc4:	baf6f6e3          	bgeu	a3,a5,11970 <_malloc_r+0x284>
   11dc8:	00f576b3          	and	a3,a0,a5
   11dcc:	00069a63          	bnez	a3,11de0 <_malloc_r+0x6f4>
   11dd0:	00151513          	slli	a0,a0,0x1
   11dd4:	00f576b3          	and	a3,a0,a5
   11dd8:	004f8f9b          	addiw	t6,t6,4
   11ddc:	fe068ae3          	beqz	a3,11dd0 <_malloc_r+0x6e4>
   11de0:	000f8893          	mv	a7,t6
   11de4:	b09ff06f          	j	118ec <_malloc_r+0x200>
   11de8:	02058593          	addi	a1,a1,32
   11dec:	bc9ff06f          	j	119b4 <_malloc_r+0x2c8>
   11df0:	4026561b          	sraiw	a2,a2,0x2
   11df4:	00100313          	li	t1,1
   11df8:	00c31633          	sll	a2,t1,a2
   11dfc:	00c5e5b3          	or	a1,a1,a2
   11e00:	00b83423          	sd	a1,8(a6)
   11e04:	e11ff06f          	j	11c14 <_malloc_r+0x528>
   11e08:	00b30633          	add	a2,t1,a1
   11e0c:	40c005b3          	neg	a1,a2
   11e10:	03459593          	slli	a1,a1,0x34
   11e14:	0345d593          	srli	a1,a1,0x34
   11e18:	00040513          	mv	a0,s0
   11e1c:	03c13c23          	sd	t3,56(sp)
   11e20:	03013823          	sd	a6,48(sp)
   11e24:	02f13423          	sd	a5,40(sp)
   11e28:	02e13023          	sd	a4,32(sp)
   11e2c:	01113c23          	sd	a7,24(sp)
   11e30:	00613823          	sd	t1,16(sp)
   11e34:	00c13423          	sd	a2,8(sp)
   11e38:	04b13023          	sd	a1,64(sp)
   11e3c:	600000ef          	jal	1243c <_sbrk_r>
   11e40:	00050693          	mv	a3,a0
   11e44:	fff00513          	li	a0,-1
   11e48:	01013303          	ld	t1,16(sp)
   11e4c:	01813883          	ld	a7,24(sp)
   11e50:	02013703          	ld	a4,32(sp)
   11e54:	02813783          	ld	a5,40(sp)
   11e58:	03013803          	ld	a6,48(sp)
   11e5c:	03813e03          	ld	t3,56(sp)
   11e60:	0ea68463          	beq	a3,a0,11f48 <_malloc_r+0x85c>
   11e64:	04013583          	ld	a1,64(sp)
   11e68:	0005851b          	sext.w	a0,a1
   11e6c:	c49ff06f          	j	11ab4 <_malloc_r+0x3c8>
   11e70:	05400613          	li	a2,84
   11e74:	08d66063          	bltu	a2,a3,11ef4 <_malloc_r+0x808>
   11e78:	00c35693          	srli	a3,t1,0xc
   11e7c:	00169513          	slli	a0,a3,0x1
   11e80:	0de5051b          	addiw	a0,a0,222
   11e84:	00351513          	slli	a0,a0,0x3
   11e88:	06e6861b          	addiw	a2,a3,110
   11e8c:	d5dff06f          	j	11be8 <_malloc_r+0x4fc>
   11e90:	15400693          	li	a3,340
   11e94:	08f6e063          	bltu	a3,a5,11f14 <_malloc_r+0x828>
   11e98:	00f75793          	srli	a5,a4,0xf
   11e9c:	0787889b          	addiw	a7,a5,120
   11ea0:	0018951b          	slliw	a0,a7,0x1
   11ea4:	07778e1b          	addiw	t3,a5,119
   11ea8:	00351513          	slli	a0,a0,0x3
   11eac:	941ff06f          	j	117ec <_malloc_r+0x100>
   11eb0:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11eb4:	000e2503          	lw	a0,0(t3)
   11eb8:	00b5053b          	addw	a0,a0,a1
   11ebc:	00ae2023          	sw	a0,0(t3)
   11ec0:	b51ff06f          	j	11a10 <_malloc_r+0x324>
   11ec4:	03431f13          	slli	t5,t1,0x34
   11ec8:	b40f14e3          	bnez	t5,11a10 <_malloc_r+0x324>
   11ecc:	01083303          	ld	t1,16(a6)
   11ed0:	00b885b3          	add	a1,a7,a1
   11ed4:	0015e693          	ori	a3,a1,1
   11ed8:	00d33423          	sd	a3,8(t1)
   11edc:	c35ff06f          	j	11b10 <_malloc_r+0x424>
   11ee0:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11ee4:	b45ff06f          	j	11a28 <_malloc_r+0x33c>
   11ee8:	00100793          	li	a5,1
   11eec:	00f33423          	sd	a5,8(t1)
   11ef0:	e85ff06f          	j	11d74 <_malloc_r+0x688>
   11ef4:	15400613          	li	a2,340
   11ef8:	08d66a63          	bltu	a2,a3,11f8c <_malloc_r+0x8a0>
   11efc:	00f35693          	srli	a3,t1,0xf
   11f00:	00169513          	slli	a0,a3,0x1
   11f04:	0f05051b          	addiw	a0,a0,240
   11f08:	00351513          	slli	a0,a0,0x3
   11f0c:	0776861b          	addiw	a2,a3,119
   11f10:	cd9ff06f          	j	11be8 <_malloc_r+0x4fc>
   11f14:	55400693          	li	a3,1364
   11f18:	08f6ea63          	bltu	a3,a5,11fac <_malloc_r+0x8c0>
   11f1c:	01275793          	srli	a5,a4,0x12
   11f20:	07d7889b          	addiw	a7,a5,125
   11f24:	0018951b          	slliw	a0,a7,0x1
   11f28:	07c78e1b          	addiw	t3,a5,124
   11f2c:	00351513          	slli	a0,a0,0x3
   11f30:	8bdff06f          	j	117ec <_malloc_r+0x100>
   11f34:	ff0e8e93          	addi	t4,t4,-16
   11f38:	01d606b3          	add	a3,a2,t4
   11f3c:	00000513          	li	a0,0
   11f40:	00000593          	li	a1,0
   11f44:	b71ff06f          	j	11ab4 <_malloc_r+0x3c8>
   11f48:	00813683          	ld	a3,8(sp)
   11f4c:	00000593          	li	a1,0
   11f50:	00000513          	li	a0,0
   11f54:	b61ff06f          	j	11ab4 <_malloc_r+0x3c8>
   11f58:	01078593          	addi	a1,a5,16
   11f5c:	00040513          	mv	a0,s0
   11f60:	01c13c23          	sd	t3,24(sp)
   11f64:	01013823          	sd	a6,16(sp)
   11f68:	00e13423          	sd	a4,8(sp)
   11f6c:	c7cff0ef          	jal	113e8 <_free_r>
   11f70:	01013803          	ld	a6,16(sp)
   11f74:	01813e03          	ld	t3,24(sp)
   11f78:	00813703          	ld	a4,8(sp)
   11f7c:	01083303          	ld	t1,16(a6)
   11f80:	000e2603          	lw	a2,0(t3)
   11f84:	00833683          	ld	a3,8(t1)
   11f88:	b89ff06f          	j	11b10 <_malloc_r+0x424>
   11f8c:	55400613          	li	a2,1364
   11f90:	02d66663          	bltu	a2,a3,11fbc <_malloc_r+0x8d0>
   11f94:	01235693          	srli	a3,t1,0x12
   11f98:	00169513          	slli	a0,a3,0x1
   11f9c:	0fa5051b          	addiw	a0,a0,250
   11fa0:	00351513          	slli	a0,a0,0x3
   11fa4:	07c6861b          	addiw	a2,a3,124
   11fa8:	c41ff06f          	j	11be8 <_malloc_r+0x4fc>
   11fac:	7f000513          	li	a0,2032
   11fb0:	07f00893          	li	a7,127
   11fb4:	07e00e13          	li	t3,126
   11fb8:	835ff06f          	j	117ec <_malloc_r+0x100>
   11fbc:	7f000513          	li	a0,2032
   11fc0:	07e00613          	li	a2,126
   11fc4:	c25ff06f          	j	11be8 <_malloc_r+0x4fc>
   11fc8:	00883783          	ld	a5,8(a6)
   11fcc:	df1ff06f          	j	11dbc <_malloc_r+0x6d0>

0000000000011fd0 <__malloc_lock>:
   11fd0:	00008067          	ret

0000000000011fd4 <__malloc_unlock>:
   11fd4:	00008067          	ret

0000000000011fd8 <_fclose_r>:
   11fd8:	fe010113          	addi	sp,sp,-32
   11fdc:	00113c23          	sd	ra,24(sp)
   11fe0:	01213023          	sd	s2,0(sp)
   11fe4:	02058863          	beqz	a1,12014 <_fclose_r+0x3c>
   11fe8:	00813823          	sd	s0,16(sp)
   11fec:	00913423          	sd	s1,8(sp)
   11ff0:	00058413          	mv	s0,a1
   11ff4:	00050493          	mv	s1,a0
   11ff8:	00050663          	beqz	a0,12004 <_fclose_r+0x2c>
   11ffc:	04853783          	ld	a5,72(a0)
   12000:	0c078c63          	beqz	a5,120d8 <_fclose_r+0x100>
   12004:	01041783          	lh	a5,16(s0)
   12008:	02079263          	bnez	a5,1202c <_fclose_r+0x54>
   1200c:	01013403          	ld	s0,16(sp)
   12010:	00813483          	ld	s1,8(sp)
   12014:	01813083          	ld	ra,24(sp)
   12018:	00000913          	li	s2,0
   1201c:	00090513          	mv	a0,s2
   12020:	00013903          	ld	s2,0(sp)
   12024:	02010113          	addi	sp,sp,32
   12028:	00008067          	ret
   1202c:	00040593          	mv	a1,s0
   12030:	00048513          	mv	a0,s1
   12034:	0b8000ef          	jal	120ec <__sflush_r>
   12038:	05043783          	ld	a5,80(s0)
   1203c:	00050913          	mv	s2,a0
   12040:	00078a63          	beqz	a5,12054 <_fclose_r+0x7c>
   12044:	03043583          	ld	a1,48(s0)
   12048:	00048513          	mv	a0,s1
   1204c:	000780e7          	jalr	a5
   12050:	06054463          	bltz	a0,120b8 <_fclose_r+0xe0>
   12054:	01045783          	lhu	a5,16(s0)
   12058:	0807f793          	andi	a5,a5,128
   1205c:	06079663          	bnez	a5,120c8 <_fclose_r+0xf0>
   12060:	05843583          	ld	a1,88(s0)
   12064:	00058c63          	beqz	a1,1207c <_fclose_r+0xa4>
   12068:	07440793          	addi	a5,s0,116
   1206c:	00f58663          	beq	a1,a5,12078 <_fclose_r+0xa0>
   12070:	00048513          	mv	a0,s1
   12074:	b74ff0ef          	jal	113e8 <_free_r>
   12078:	04043c23          	sd	zero,88(s0)
   1207c:	07843583          	ld	a1,120(s0)
   12080:	00058863          	beqz	a1,12090 <_fclose_r+0xb8>
   12084:	00048513          	mv	a0,s1
   12088:	b60ff0ef          	jal	113e8 <_free_r>
   1208c:	06043c23          	sd	zero,120(s0)
   12090:	aa1fe0ef          	jal	10b30 <__sfp_lock_acquire>
   12094:	00041823          	sh	zero,16(s0)
   12098:	a9dfe0ef          	jal	10b34 <__sfp_lock_release>
   1209c:	01813083          	ld	ra,24(sp)
   120a0:	01013403          	ld	s0,16(sp)
   120a4:	00813483          	ld	s1,8(sp)
   120a8:	00090513          	mv	a0,s2
   120ac:	00013903          	ld	s2,0(sp)
   120b0:	02010113          	addi	sp,sp,32
   120b4:	00008067          	ret
   120b8:	01045783          	lhu	a5,16(s0)
   120bc:	fff00913          	li	s2,-1
   120c0:	0807f793          	andi	a5,a5,128
   120c4:	f8078ee3          	beqz	a5,12060 <_fclose_r+0x88>
   120c8:	01843583          	ld	a1,24(s0)
   120cc:	00048513          	mv	a0,s1
   120d0:	b18ff0ef          	jal	113e8 <_free_r>
   120d4:	f8dff06f          	j	12060 <_fclose_r+0x88>
   120d8:	a35fe0ef          	jal	10b0c <__sinit>
   120dc:	f29ff06f          	j	12004 <_fclose_r+0x2c>

00000000000120e0 <fclose>:
   120e0:	00050593          	mv	a1,a0
   120e4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   120e8:	ef1ff06f          	j	11fd8 <_fclose_r>

00000000000120ec <__sflush_r>:
   120ec:	01059703          	lh	a4,16(a1)
   120f0:	fd010113          	addi	sp,sp,-48
   120f4:	02813023          	sd	s0,32(sp)
   120f8:	01313423          	sd	s3,8(sp)
   120fc:	02113423          	sd	ra,40(sp)
   12100:	00877793          	andi	a5,a4,8
   12104:	00058413          	mv	s0,a1
   12108:	00050993          	mv	s3,a0
   1210c:	12079263          	bnez	a5,12230 <__sflush_r+0x144>
   12110:	000017b7          	lui	a5,0x1
   12114:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   12118:	0085a683          	lw	a3,8(a1)
   1211c:	00f767b3          	or	a5,a4,a5
   12120:	00f59823          	sh	a5,16(a1)
   12124:	18d05c63          	blez	a3,122bc <__sflush_r+0x1d0>
   12128:	04843803          	ld	a6,72(s0)
   1212c:	0e080663          	beqz	a6,12218 <__sflush_r+0x12c>
   12130:	00913c23          	sd	s1,24(sp)
   12134:	03371693          	slli	a3,a4,0x33
   12138:	0009a483          	lw	s1,0(s3)
   1213c:	0009a023          	sw	zero,0(s3)
   12140:	1806ca63          	bltz	a3,122d4 <__sflush_r+0x1e8>
   12144:	03043583          	ld	a1,48(s0)
   12148:	00000613          	li	a2,0
   1214c:	00100693          	li	a3,1
   12150:	00098513          	mv	a0,s3
   12154:	000800e7          	jalr	a6
   12158:	fff00793          	li	a5,-1
   1215c:	00050613          	mv	a2,a0
   12160:	1af50c63          	beq	a0,a5,12318 <__sflush_r+0x22c>
   12164:	01041783          	lh	a5,16(s0)
   12168:	04843803          	ld	a6,72(s0)
   1216c:	0047f793          	andi	a5,a5,4
   12170:	00078e63          	beqz	a5,1218c <__sflush_r+0xa0>
   12174:	00842703          	lw	a4,8(s0)
   12178:	05843783          	ld	a5,88(s0)
   1217c:	40e60633          	sub	a2,a2,a4
   12180:	00078663          	beqz	a5,1218c <__sflush_r+0xa0>
   12184:	07042783          	lw	a5,112(s0)
   12188:	40f60633          	sub	a2,a2,a5
   1218c:	03043583          	ld	a1,48(s0)
   12190:	00000693          	li	a3,0
   12194:	00098513          	mv	a0,s3
   12198:	000800e7          	jalr	a6
   1219c:	fff00713          	li	a4,-1
   121a0:	01041783          	lh	a5,16(s0)
   121a4:	12e51c63          	bne	a0,a4,122dc <__sflush_r+0x1f0>
   121a8:	0009a683          	lw	a3,0(s3)
   121ac:	01d00713          	li	a4,29
   121b0:	18d76263          	bltu	a4,a3,12334 <__sflush_r+0x248>
   121b4:	20400737          	lui	a4,0x20400
   121b8:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   121bc:	00d75733          	srl	a4,a4,a3
   121c0:	00177713          	andi	a4,a4,1
   121c4:	16070863          	beqz	a4,12334 <__sflush_r+0x248>
   121c8:	01843683          	ld	a3,24(s0)
   121cc:	fffff737          	lui	a4,0xfffff
   121d0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   121d4:	00e7f733          	and	a4,a5,a4
   121d8:	00e41823          	sh	a4,16(s0)
   121dc:	00042423          	sw	zero,8(s0)
   121e0:	00d43023          	sd	a3,0(s0)
   121e4:	03379713          	slli	a4,a5,0x33
   121e8:	00075663          	bgez	a4,121f4 <__sflush_r+0x108>
   121ec:	0009a783          	lw	a5,0(s3)
   121f0:	10078863          	beqz	a5,12300 <__sflush_r+0x214>
   121f4:	05843583          	ld	a1,88(s0)
   121f8:	0099a023          	sw	s1,0(s3)
   121fc:	10058a63          	beqz	a1,12310 <__sflush_r+0x224>
   12200:	07440793          	addi	a5,s0,116
   12204:	00f58663          	beq	a1,a5,12210 <__sflush_r+0x124>
   12208:	00098513          	mv	a0,s3
   1220c:	9dcff0ef          	jal	113e8 <_free_r>
   12210:	01813483          	ld	s1,24(sp)
   12214:	04043c23          	sd	zero,88(s0)
   12218:	02813083          	ld	ra,40(sp)
   1221c:	02013403          	ld	s0,32(sp)
   12220:	00813983          	ld	s3,8(sp)
   12224:	00000513          	li	a0,0
   12228:	03010113          	addi	sp,sp,48
   1222c:	00008067          	ret
   12230:	01213823          	sd	s2,16(sp)
   12234:	0185b903          	ld	s2,24(a1)
   12238:	08090a63          	beqz	s2,122cc <__sflush_r+0x1e0>
   1223c:	00913c23          	sd	s1,24(sp)
   12240:	0005b483          	ld	s1,0(a1)
   12244:	00377713          	andi	a4,a4,3
   12248:	0125b023          	sd	s2,0(a1)
   1224c:	412484bb          	subw	s1,s1,s2
   12250:	00000793          	li	a5,0
   12254:	00071463          	bnez	a4,1225c <__sflush_r+0x170>
   12258:	0205a783          	lw	a5,32(a1)
   1225c:	00f42623          	sw	a5,12(s0)
   12260:	00904863          	bgtz	s1,12270 <__sflush_r+0x184>
   12264:	0640006f          	j	122c8 <__sflush_r+0x1dc>
   12268:	00a90933          	add	s2,s2,a0
   1226c:	04905e63          	blez	s1,122c8 <__sflush_r+0x1dc>
   12270:	04043783          	ld	a5,64(s0)
   12274:	03043583          	ld	a1,48(s0)
   12278:	00048693          	mv	a3,s1
   1227c:	00090613          	mv	a2,s2
   12280:	00098513          	mv	a0,s3
   12284:	000780e7          	jalr	a5
   12288:	40a484bb          	subw	s1,s1,a0
   1228c:	fca04ee3          	bgtz	a0,12268 <__sflush_r+0x17c>
   12290:	01045783          	lhu	a5,16(s0)
   12294:	01013903          	ld	s2,16(sp)
   12298:	0407e793          	ori	a5,a5,64
   1229c:	02813083          	ld	ra,40(sp)
   122a0:	00f41823          	sh	a5,16(s0)
   122a4:	02013403          	ld	s0,32(sp)
   122a8:	01813483          	ld	s1,24(sp)
   122ac:	00813983          	ld	s3,8(sp)
   122b0:	fff00513          	li	a0,-1
   122b4:	03010113          	addi	sp,sp,48
   122b8:	00008067          	ret
   122bc:	0705a683          	lw	a3,112(a1)
   122c0:	e6d044e3          	bgtz	a3,12128 <__sflush_r+0x3c>
   122c4:	f55ff06f          	j	12218 <__sflush_r+0x12c>
   122c8:	01813483          	ld	s1,24(sp)
   122cc:	01013903          	ld	s2,16(sp)
   122d0:	f49ff06f          	j	12218 <__sflush_r+0x12c>
   122d4:	09043603          	ld	a2,144(s0)
   122d8:	e95ff06f          	j	1216c <__sflush_r+0x80>
   122dc:	01843683          	ld	a3,24(s0)
   122e0:	fffff737          	lui	a4,0xfffff
   122e4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   122e8:	00e7f733          	and	a4,a5,a4
   122ec:	00e41823          	sh	a4,16(s0)
   122f0:	00042423          	sw	zero,8(s0)
   122f4:	00d43023          	sd	a3,0(s0)
   122f8:	03379713          	slli	a4,a5,0x33
   122fc:	ee075ce3          	bgez	a4,121f4 <__sflush_r+0x108>
   12300:	05843583          	ld	a1,88(s0)
   12304:	08a43823          	sd	a0,144(s0)
   12308:	0099a023          	sw	s1,0(s3)
   1230c:	ee059ae3          	bnez	a1,12200 <__sflush_r+0x114>
   12310:	01813483          	ld	s1,24(sp)
   12314:	f05ff06f          	j	12218 <__sflush_r+0x12c>
   12318:	0009a783          	lw	a5,0(s3)
   1231c:	e40784e3          	beqz	a5,12164 <__sflush_r+0x78>
   12320:	fe378713          	addi	a4,a5,-29
   12324:	00070c63          	beqz	a4,1233c <__sflush_r+0x250>
   12328:	fea78793          	addi	a5,a5,-22
   1232c:	00078863          	beqz	a5,1233c <__sflush_r+0x250>
   12330:	01045783          	lhu	a5,16(s0)
   12334:	0407e793          	ori	a5,a5,64
   12338:	f65ff06f          	j	1229c <__sflush_r+0x1b0>
   1233c:	0099a023          	sw	s1,0(s3)
   12340:	01813483          	ld	s1,24(sp)
   12344:	ed5ff06f          	j	12218 <__sflush_r+0x12c>

0000000000012348 <_fflush_r>:
   12348:	00050793          	mv	a5,a0
   1234c:	00050663          	beqz	a0,12358 <_fflush_r+0x10>
   12350:	04853703          	ld	a4,72(a0)
   12354:	00070e63          	beqz	a4,12370 <_fflush_r+0x28>
   12358:	01059703          	lh	a4,16(a1)
   1235c:	00071663          	bnez	a4,12368 <_fflush_r+0x20>
   12360:	00000513          	li	a0,0
   12364:	00008067          	ret
   12368:	00078513          	mv	a0,a5
   1236c:	d81ff06f          	j	120ec <__sflush_r>
   12370:	fe010113          	addi	sp,sp,-32
   12374:	00b13423          	sd	a1,8(sp)
   12378:	00113c23          	sd	ra,24(sp)
   1237c:	00a13023          	sd	a0,0(sp)
   12380:	f8cfe0ef          	jal	10b0c <__sinit>
   12384:	00813583          	ld	a1,8(sp)
   12388:	00013783          	ld	a5,0(sp)
   1238c:	01059703          	lh	a4,16(a1)
   12390:	00070a63          	beqz	a4,123a4 <_fflush_r+0x5c>
   12394:	01813083          	ld	ra,24(sp)
   12398:	00078513          	mv	a0,a5
   1239c:	02010113          	addi	sp,sp,32
   123a0:	d4dff06f          	j	120ec <__sflush_r>
   123a4:	01813083          	ld	ra,24(sp)
   123a8:	00000513          	li	a0,0
   123ac:	02010113          	addi	sp,sp,32
   123b0:	00008067          	ret

00000000000123b4 <fflush>:
   123b4:	06050063          	beqz	a0,12414 <fflush+0x60>
   123b8:	00050593          	mv	a1,a0
   123bc:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   123c0:	00050663          	beqz	a0,123cc <fflush+0x18>
   123c4:	04853783          	ld	a5,72(a0)
   123c8:	00078c63          	beqz	a5,123e0 <fflush+0x2c>
   123cc:	01059783          	lh	a5,16(a1)
   123d0:	00079663          	bnez	a5,123dc <fflush+0x28>
   123d4:	00000513          	li	a0,0
   123d8:	00008067          	ret
   123dc:	d11ff06f          	j	120ec <__sflush_r>
   123e0:	fe010113          	addi	sp,sp,-32
   123e4:	00b13423          	sd	a1,8(sp)
   123e8:	00a13023          	sd	a0,0(sp)
   123ec:	00113c23          	sd	ra,24(sp)
   123f0:	f1cfe0ef          	jal	10b0c <__sinit>
   123f4:	00813583          	ld	a1,8(sp)
   123f8:	00013503          	ld	a0,0(sp)
   123fc:	01059783          	lh	a5,16(a1)
   12400:	02079863          	bnez	a5,12430 <fflush+0x7c>
   12404:	01813083          	ld	ra,24(sp)
   12408:	00000513          	li	a0,0
   1240c:	02010113          	addi	sp,sp,32
   12410:	00008067          	ret
   12414:	00013637          	lui	a2,0x13
   12418:	000125b7          	lui	a1,0x12
   1241c:	00013537          	lui	a0,0x13
   12420:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12424:	34858593          	addi	a1,a1,840 # 12348 <_fflush_r>
   12428:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   1242c:	f3cfe06f          	j	10b68 <_fwalk_sglue>
   12430:	01813083          	ld	ra,24(sp)
   12434:	02010113          	addi	sp,sp,32
   12438:	cb5ff06f          	j	120ec <__sflush_r>

000000000001243c <_sbrk_r>:
   1243c:	fe010113          	addi	sp,sp,-32
   12440:	00813823          	sd	s0,16(sp)
   12444:	00913423          	sd	s1,8(sp)
   12448:	00050493          	mv	s1,a0
   1244c:	00058513          	mv	a0,a1
   12450:	00113c23          	sd	ra,24(sp)
   12454:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12458:	228000ef          	jal	12680 <_sbrk>
   1245c:	fff00793          	li	a5,-1
   12460:	00f50c63          	beq	a0,a5,12478 <_sbrk_r+0x3c>
   12464:	01813083          	ld	ra,24(sp)
   12468:	01013403          	ld	s0,16(sp)
   1246c:	00813483          	ld	s1,8(sp)
   12470:	02010113          	addi	sp,sp,32
   12474:	00008067          	ret
   12478:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   1247c:	fe0784e3          	beqz	a5,12464 <_sbrk_r+0x28>
   12480:	01813083          	ld	ra,24(sp)
   12484:	01013403          	ld	s0,16(sp)
   12488:	00f4a023          	sw	a5,0(s1)
   1248c:	00813483          	ld	s1,8(sp)
   12490:	02010113          	addi	sp,sp,32
   12494:	00008067          	ret

0000000000012498 <__libc_fini_array>:
   12498:	fe010113          	addi	sp,sp,-32
   1249c:	00813823          	sd	s0,16(sp)
   124a0:	000137b7          	lui	a5,0x13
   124a4:	00013437          	lui	s0,0x13
   124a8:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   124ac:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   124b0:	408787b3          	sub	a5,a5,s0
   124b4:	00913423          	sd	s1,8(sp)
   124b8:	00113c23          	sd	ra,24(sp)
   124bc:	4037d493          	srai	s1,a5,0x3
   124c0:	02048063          	beqz	s1,124e0 <__libc_fini_array+0x48>
   124c4:	ff840413          	addi	s0,s0,-8
   124c8:	00f40433          	add	s0,s0,a5
   124cc:	00043783          	ld	a5,0(s0)
   124d0:	fff48493          	addi	s1,s1,-1
   124d4:	ff840413          	addi	s0,s0,-8
   124d8:	000780e7          	jalr	a5
   124dc:	fe0498e3          	bnez	s1,124cc <__libc_fini_array+0x34>
   124e0:	01813083          	ld	ra,24(sp)
   124e4:	01013403          	ld	s0,16(sp)
   124e8:	00813483          	ld	s1,8(sp)
   124ec:	02010113          	addi	sp,sp,32
   124f0:	00008067          	ret

00000000000124f4 <__register_exitproc>:
   124f4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   124f8:	04078e63          	beqz	a5,12554 <__register_exitproc+0x60>
   124fc:	0087a703          	lw	a4,8(a5)
   12500:	01f00813          	li	a6,31
   12504:	08e84263          	blt	a6,a4,12588 <__register_exitproc+0x94>
   12508:	02050863          	beqz	a0,12538 <__register_exitproc+0x44>
   1250c:	00371813          	slli	a6,a4,0x3
   12510:	01078833          	add	a6,a5,a6
   12514:	10c83823          	sd	a2,272(a6)
   12518:	3107a883          	lw	a7,784(a5)
   1251c:	00100613          	li	a2,1
   12520:	00e6163b          	sllw	a2,a2,a4
   12524:	00c8e8b3          	or	a7,a7,a2
   12528:	3117a823          	sw	a7,784(a5)
   1252c:	20d83823          	sd	a3,528(a6)
   12530:	00200693          	li	a3,2
   12534:	02d50663          	beq	a0,a3,12560 <__register_exitproc+0x6c>
   12538:	0017069b          	addiw	a3,a4,1
   1253c:	00371713          	slli	a4,a4,0x3
   12540:	00d7a423          	sw	a3,8(a5)
   12544:	00e787b3          	add	a5,a5,a4
   12548:	00b7b823          	sd	a1,16(a5)
   1254c:	00000513          	li	a0,0
   12550:	00008067          	ret
   12554:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12558:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   1255c:	fa1ff06f          	j	124fc <__register_exitproc+0x8>
   12560:	3147a683          	lw	a3,788(a5)
   12564:	00000513          	li	a0,0
   12568:	00d66633          	or	a2,a2,a3
   1256c:	0017069b          	addiw	a3,a4,1
   12570:	00371713          	slli	a4,a4,0x3
   12574:	30c7aa23          	sw	a2,788(a5)
   12578:	00d7a423          	sw	a3,8(a5)
   1257c:	00e787b3          	add	a5,a5,a4
   12580:	00b7b823          	sd	a1,16(a5)
   12584:	00008067          	ret
   12588:	fff00513          	li	a0,-1
   1258c:	00008067          	ret

0000000000012590 <_close>:
   12590:	03900893          	li	a7,57
   12594:	00000073          	ecall
   12598:	00054663          	bltz	a0,125a4 <_close+0x14>
   1259c:	0005051b          	sext.w	a0,a0
   125a0:	00008067          	ret
   125a4:	fe010113          	addi	sp,sp,-32
   125a8:	00113c23          	sd	ra,24(sp)
   125ac:	00a13423          	sd	a0,8(sp)
   125b0:	188000ef          	jal	12738 <__errno>
   125b4:	00813783          	ld	a5,8(sp)
   125b8:	01813083          	ld	ra,24(sp)
   125bc:	40f007bb          	negw	a5,a5
   125c0:	00f52023          	sw	a5,0(a0)
   125c4:	fff00513          	li	a0,-1
   125c8:	02010113          	addi	sp,sp,32
   125cc:	00008067          	ret

00000000000125d0 <_exit>:
   125d0:	05d00893          	li	a7,93
   125d4:	00000073          	ecall
   125d8:	00054463          	bltz	a0,125e0 <_exit+0x10>
   125dc:	0000006f          	j	125dc <_exit+0xc>
   125e0:	fe010113          	addi	sp,sp,-32
   125e4:	00113c23          	sd	ra,24(sp)
   125e8:	00a13423          	sd	a0,8(sp)
   125ec:	14c000ef          	jal	12738 <__errno>
   125f0:	00813783          	ld	a5,8(sp)
   125f4:	40f007bb          	negw	a5,a5
   125f8:	00f52023          	sw	a5,0(a0)
   125fc:	0000006f          	j	125fc <_exit+0x2c>

0000000000012600 <_lseek>:
   12600:	03e00893          	li	a7,62
   12604:	00000073          	ecall
   12608:	00054463          	bltz	a0,12610 <_lseek+0x10>
   1260c:	00008067          	ret
   12610:	fe010113          	addi	sp,sp,-32
   12614:	00113c23          	sd	ra,24(sp)
   12618:	00a13423          	sd	a0,8(sp)
   1261c:	11c000ef          	jal	12738 <__errno>
   12620:	00813783          	ld	a5,8(sp)
   12624:	01813083          	ld	ra,24(sp)
   12628:	40f007bb          	negw	a5,a5
   1262c:	00f52023          	sw	a5,0(a0)
   12630:	fff00793          	li	a5,-1
   12634:	00078513          	mv	a0,a5
   12638:	02010113          	addi	sp,sp,32
   1263c:	00008067          	ret

0000000000012640 <_read>:
   12640:	03f00893          	li	a7,63
   12644:	00000073          	ecall
   12648:	00054463          	bltz	a0,12650 <_read+0x10>
   1264c:	00008067          	ret
   12650:	fe010113          	addi	sp,sp,-32
   12654:	00113c23          	sd	ra,24(sp)
   12658:	00a13423          	sd	a0,8(sp)
   1265c:	0dc000ef          	jal	12738 <__errno>
   12660:	00813783          	ld	a5,8(sp)
   12664:	01813083          	ld	ra,24(sp)
   12668:	40f007bb          	negw	a5,a5
   1266c:	00f52023          	sw	a5,0(a0)
   12670:	fff00793          	li	a5,-1
   12674:	00078513          	mv	a0,a5
   12678:	02010113          	addi	sp,sp,32
   1267c:	00008067          	ret

0000000000012680 <_sbrk>:
   12680:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12684:	ff010113          	addi	sp,sp,-16
   12688:	00113423          	sd	ra,8(sp)
   1268c:	00050713          	mv	a4,a0
   12690:	02079063          	bnez	a5,126b0 <_sbrk+0x30>
   12694:	0d600893          	li	a7,214
   12698:	00000513          	li	a0,0
   1269c:	00000073          	ecall
   126a0:	fff00793          	li	a5,-1
   126a4:	02f50c63          	beq	a0,a5,126dc <_sbrk+0x5c>
   126a8:	00050793          	mv	a5,a0
   126ac:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   126b0:	00f70533          	add	a0,a4,a5
   126b4:	0d600893          	li	a7,214
   126b8:	00000073          	ecall
   126bc:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   126c0:	00f70733          	add	a4,a4,a5
   126c4:	00e51c63          	bne	a0,a4,126dc <_sbrk+0x5c>
   126c8:	00813083          	ld	ra,8(sp)
   126cc:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   126d0:	00078513          	mv	a0,a5
   126d4:	01010113          	addi	sp,sp,16
   126d8:	00008067          	ret
   126dc:	05c000ef          	jal	12738 <__errno>
   126e0:	00813083          	ld	ra,8(sp)
   126e4:	00c00793          	li	a5,12
   126e8:	00f52023          	sw	a5,0(a0)
   126ec:	fff00513          	li	a0,-1
   126f0:	01010113          	addi	sp,sp,16
   126f4:	00008067          	ret

00000000000126f8 <_write>:
   126f8:	04000893          	li	a7,64
   126fc:	00000073          	ecall
   12700:	00054463          	bltz	a0,12708 <_write+0x10>
   12704:	00008067          	ret
   12708:	fe010113          	addi	sp,sp,-32
   1270c:	00113c23          	sd	ra,24(sp)
   12710:	00a13423          	sd	a0,8(sp)
   12714:	024000ef          	jal	12738 <__errno>
   12718:	00813783          	ld	a5,8(sp)
   1271c:	01813083          	ld	ra,24(sp)
   12720:	40f007bb          	negw	a5,a5
   12724:	00f52023          	sw	a5,0(a0)
   12728:	fff00793          	li	a5,-1
   1272c:	00078513          	mv	a0,a5
   12730:	02010113          	addi	sp,sp,32
   12734:	00008067          	ret

0000000000012738 <__errno>:
   12738:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1273c:	00008067          	ret

Disassembly of section .rodata:

0000000000012740 <.rodata>:
   12740:	45444c43          	.insn	4, 0x45444c43
   12744:	4f4d                	.insn	2, 0x4f4d
   12746:	4554                	.insn	2, 0x4554
   12748:	5420                	.insn	2, 0x5420
   1274a:	7365                	.insn	2, 0x7365
   1274c:	2074                	.insn	2, 0x2074
   1274e:	72617453          	.insn	4, 0x72617453
   12752:	6574                	.insn	2, 0x6574
   12754:	3a64                	.insn	2, 0x3a64
   12756:	0a20                	.insn	2, 0x0a20
	...
   12760:	490a                	.insn	2, 0x490a
   12762:	696e                	.insn	2, 0x696e
   12764:	6974                	.insn	2, 0x6974
   12766:	6c61                	.insn	2, 0x6c61
   12768:	7a69                	.insn	2, 0x7a69
   1276a:	6e69                	.insn	2, 0x6e69
   1276c:	72612067          	.insn	4, 0x72612067
   12770:	6172                	.insn	2, 0x6172
   12772:	2e79                	.insn	2, 0x2e79
   12774:	2e2e                	.insn	2, 0x2e2e
   12776:	000a                	.insn	2, 0x000a
   12778:	6552                	.insn	2, 0x6552
   1277a:	6461                	.insn	2, 0x6461
   1277c:	6e69                	.insn	2, 0x6e69
   1277e:	61762067          	.insn	4, 0x61762067
   12782:	756c                	.insn	2, 0x756c
   12784:	7365                	.insn	2, 0x7365
   12786:	2e2e                	.insn	2, 0x2e2e
   12788:	0a2e                	.insn	2, 0x0a2e
   1278a:	0000                	.insn	2, 0x0000
   1278c:	0000                	.insn	2, 0x0000
   1278e:	0000                	.insn	2, 0x0000
   12790:	206d7553          	.insn	4, 0x206d7553
   12794:	6620666f          	jal	a2,18df6 <__BSS_END__+0x4e7e>
   12798:	7269                	.insn	2, 0x7269
   1279a:	33207473          	.insn	4, 0x33207473
   1279e:	2032                	.insn	2, 0x2032
   127a0:	6c65                	.insn	2, 0x6c65
   127a2:	6d65                	.insn	2, 0x6d65
   127a4:	6e65                	.insn	2, 0x6e65
   127a6:	7374                	.insn	2, 0x7374
   127a8:	203a                	.insn	2, 0x203a
   127aa:	0000                	.insn	2, 0x0000
   127ac:	0000                	.insn	2, 0x0000
   127ae:	0000                	.insn	2, 0x0000
   127b0:	000a                	.insn	2, 0x000a
   127b2:	0000                	.insn	2, 0x0000
   127b4:	0000                	.insn	2, 0x0000
   127b6:	0000                	.insn	2, 0x0000
   127b8:	6544                	.insn	2, 0x6544
   127ba:	6f6d                	.insn	2, 0x6f6d
   127bc:	6974                	.insn	2, 0x6974
   127be:	676e                	.insn	2, 0x676e
   127c0:	6320                	.insn	2, 0x6320
   127c2:	6361                	.insn	2, 0x6361
   127c4:	6568                	.insn	2, 0x6568
   127c6:	6c20                	.insn	2, 0x6c20
   127c8:	6e69                	.insn	2, 0x6e69
   127ca:	7365                	.insn	2, 0x7365
   127cc:	2e2e                	.insn	2, 0x2e2e
   127ce:	0a2e                	.insn	2, 0x0a2e
	...
   127d8:	68636143          	.insn	4, 0x68636143
   127dc:	2065                	.insn	2, 0x2065
   127de:	696c                	.insn	2, 0x696c
   127e0:	656e                	.insn	2, 0x656e
   127e2:	65642073          	.insn	4, 0x65642073
   127e6:	6f6d                	.insn	2, 0x6f6d
   127e8:	6574                	.insn	2, 0x6574
   127ea:	0a64                	.insn	2, 0x0a64
   127ec:	0000                	.insn	2, 0x0000
   127ee:	0000                	.insn	2, 0x0000
   127f0:	6552                	.insn	2, 0x6552
   127f2:	6461                	.insn	2, 0x6461
   127f4:	6e69                	.insn	2, 0x6e69
   127f6:	61762067          	.insn	4, 0x61762067
   127fa:	756c                	.insn	2, 0x756c
   127fc:	7365                	.insn	2, 0x7365
   127fe:	6120                	.insn	2, 0x6120
   12800:	7466                	.insn	2, 0x7466
   12802:	7265                	.insn	2, 0x7265
   12804:	6420                	.insn	2, 0x6420
   12806:	6d65                	.insn	2, 0x6d65
   12808:	6f69746f          	jal	s0,a9efe <__BSS_END__+0x95f86>
   1280c:	2e6e                	.insn	2, 0x2e6e
   1280e:	2e2e                	.insn	2, 0x2e2e
   12810:	000a                	.insn	2, 0x000a
   12812:	0000                	.insn	2, 0x0000
   12814:	0000                	.insn	2, 0x0000
   12816:	0000                	.insn	2, 0x0000
   12818:	206d7553          	.insn	4, 0x206d7553
   1281c:	6620666f          	jal	a2,18e7e <__BSS_END__+0x4f06>
   12820:	7269                	.insn	2, 0x7269
   12822:	33207473          	.insn	4, 0x33207473
   12826:	2032                	.insn	2, 0x2032
   12828:	6c65                	.insn	2, 0x6c65
   1282a:	6d65                	.insn	2, 0x6d65
   1282c:	6e65                	.insn	2, 0x6e65
   1282e:	7374                	.insn	2, 0x7374
   12830:	2820                	.insn	2, 0x2820
   12832:	6661                	.insn	2, 0x6661
   12834:	6574                	.insn	2, 0x6574
   12836:	2072                	.insn	2, 0x2072
   12838:	6564                	.insn	2, 0x6564
   1283a:	6f6d                	.insn	2, 0x6f6d
   1283c:	6574                	.insn	2, 0x6574
   1283e:	3a29                	.insn	2, 0x3a29
   12840:	0020                	.insn	2, 0x0020
   12842:	0000                	.insn	2, 0x0000
   12844:	0000                	.insn	2, 0x0000
   12846:	0000                	.insn	2, 0x0000
   12848:	5341505b          	.insn	4, 0x5341505b
   1284c:	20205d53          	.insn	4, 0x20205d53
   12850:	6144                	.insn	2, 0x6144
   12852:	6174                	.insn	2, 0x6174
   12854:	6920                	.insn	2, 0x6920
   12856:	746e                	.insn	2, 0x746e
   12858:	6765                	.insn	2, 0x6765
   1285a:	6972                	.insn	2, 0x6972
   1285c:	7974                	.insn	2, 0x7974
   1285e:	6d20                	.insn	2, 0x6d20
   12860:	6961                	.insn	2, 0x6961
   12862:	746e                	.insn	2, 0x746e
   12864:	6961                	.insn	2, 0x6961
   12866:	656e                	.insn	2, 0x656e
   12868:	2064                	.insn	2, 0x2064
   1286a:	6661                	.insn	2, 0x6661
   1286c:	6574                	.insn	2, 0x6574
   1286e:	2072                	.insn	2, 0x2072
   12870:	45444c43          	.insn	4, 0x45444c43
   12874:	4f4d                	.insn	2, 0x4f4d
   12876:	4554                	.insn	2, 0x4554
   12878:	000a                	.insn	2, 0x000a
   1287a:	0000                	.insn	2, 0x0000
   1287c:	0000                	.insn	2, 0x0000
   1287e:	0000                	.insn	2, 0x0000
   12880:	5341505b          	.insn	4, 0x5341505b
   12884:	20205d53          	.insn	4, 0x20205d53
   12888:	6c41                	.insn	2, 0x6c41
   1288a:	206c                	.insn	2, 0x206c
   1288c:	6176                	.insn	2, 0x6176
   1288e:	756c                	.insn	2, 0x756c
   12890:	7365                	.insn	2, 0x7365
   12892:	7620                	.insn	2, 0x7620
   12894:	7265                	.insn	2, 0x7265
   12896:	6669                	.insn	2, 0x6669
   12898:	6569                	.insn	2, 0x6569
   1289a:	2064                	.insn	2, 0x2064
   1289c:	72726f63          	bltu	tp,t2,12fda <__EH_FRAME_BEGIN__+0x662>
   128a0:	6365                	.insn	2, 0x6365
   128a2:	0a74                	.insn	2, 0x0a74
   128a4:	0000                	.insn	2, 0x0000
   128a6:	0000                	.insn	2, 0x0000
   128a8:	5252455b          	.insn	4, 0x5252455b
   128ac:	205d524f          	.insn	4, 0x205d524f
   128b0:	6f46                	.insn	2, 0x6f46
   128b2:	6e75                	.insn	2, 0x6e75
   128b4:	2064                	.insn	2, 0x2064
   128b6:	0000                	.insn	2, 0x0000
   128b8:	6920                	.insn	2, 0x6920
   128ba:	636e                	.insn	2, 0x636e
   128bc:	6572726f          	jal	tp,3a712 <__BSS_END__+0x2679a>
   128c0:	76207463          	bgeu	zero,sp,13028 <__sglue+0x10>
   128c4:	6c61                	.insn	2, 0x6c61
   128c6:	6575                	.insn	2, 0x6575
   128c8:	00000a73          	.insn	4, 0x0a73
   128cc:	0000                	.insn	2, 0x0000
   128ce:	0000                	.insn	2, 0x0000
   128d0:	5252455b          	.insn	4, 0x5252455b
   128d4:	205d524f          	.insn	4, 0x205d524f
   128d8:	736d7553          	.insn	4, 0x736d7553
   128dc:	6420                	.insn	2, 0x6420
   128de:	74276e6f          	jal	t3,89020 <__BSS_END__+0x750a8>
   128e2:	6d20                	.insn	2, 0x6d20
   128e4:	7461                	.insn	2, 0x7461
   128e6:	20216863          	bltu	sp,sp,12af6 <__EH_FRAME_BEGIN__+0x17e>
   128ea:	7845                	.insn	2, 0x7845
   128ec:	6570                	.insn	2, 0x6570
   128ee:	64657463          	bgeu	a0,t1,12f36 <__EH_FRAME_BEGIN__+0x5be>
   128f2:	203a                	.insn	2, 0x203a
   128f4:	0000                	.insn	2, 0x0000
   128f6:	0000                	.insn	2, 0x0000
   128f8:	202c                	.insn	2, 0x202c
   128fa:	6361                	.insn	2, 0x6361
   128fc:	7574                	.insn	2, 0x7574
   128fe:	6c61                	.insn	2, 0x6c61
   12900:	203a                	.insn	2, 0x203a
   12902:	0000                	.insn	2, 0x0000
   12904:	0000                	.insn	2, 0x0000
   12906:	0000                	.insn	2, 0x0000
   12908:	540a                	.insn	2, 0x540a
   1290a:	7365                	.insn	2, 0x7365
   1290c:	6974                	.insn	2, 0x6974
   1290e:	676e                	.insn	2, 0x676e
   12910:	7720                	.insn	2, 0x7720
   12912:	7469                	.insn	2, 0x7469
   12914:	2068                	.insn	2, 0x2068
   12916:	74697277          	.insn	4, 0x74697277
   1291a:	7365                	.insn	2, 0x7365
   1291c:	6120                	.insn	2, 0x6120
   1291e:	646e                	.insn	2, 0x646e
   12920:	6420                	.insn	2, 0x6420
   12922:	6d65                	.insn	2, 0x6d65
   12924:	2e65746f          	jal	s0,69c0a <__BSS_END__+0x55c92>
   12928:	2e2e                	.insn	2, 0x2e2e
   1292a:	000a                	.insn	2, 0x000a
   1292c:	0000                	.insn	2, 0x0000
   1292e:	0000                	.insn	2, 0x0000
   12930:	5252455b          	.insn	4, 0x5252455b
   12934:	205d524f          	.insn	4, 0x205d524f
   12938:	6144                	.insn	2, 0x6144
   1293a:	6174                	.insn	2, 0x6174
   1293c:	6320                	.insn	2, 0x6320
   1293e:	7572726f          	jal	tp,3a894 <__BSS_END__+0x2691c>
   12942:	7470                	.insn	2, 0x7470
   12944:	6f69                	.insn	2, 0x6f69
   12946:	206e                	.insn	2, 0x206e
   12948:	7461                	.insn	2, 0x7461
   1294a:	6920                	.insn	2, 0x6920
   1294c:	646e                	.insn	2, 0x646e
   1294e:	7865                	.insn	2, 0x7865
   12950:	0020                	.insn	2, 0x0020
   12952:	0000                	.insn	2, 0x0000
   12954:	0000                	.insn	2, 0x0000
   12956:	0000                	.insn	2, 0x0000
   12958:	430a                	.insn	2, 0x430a
   1295a:	444c                	.insn	2, 0x444c
   1295c:	4d45                	.insn	2, 0x4d45
   1295e:	2045544f          	.insn	4, 0x2045544f
   12962:	6554                	.insn	2, 0x6554
   12964:	43207473          	.insn	4, 0x43207473
   12968:	6c706d6f          	jal	s10,1982e <__BSS_END__+0x58b6>
   1296c:	7465                	.insn	2, 0x7465
   1296e:	6465                	.insn	2, 0x6465
   12970:	0a21                	.insn	2, 0x0a21
	...

Disassembly of section .eh_frame:

0000000000012978 <__EH_FRAME_BEGIN__>:
   12978:	0000                	.insn	2, 0x0000
	...

Disassembly of section .init_array:

0000000000013000 <__init_array_start>:
   13000:	014c                	.insn	2, 0x014c
   13002:	0001                	.insn	2, 0x0001
   13004:	0000                	.insn	2, 0x0000
	...

0000000000013008 <__frame_dummy_init_array_entry>:
   13008:	01fc                	.insn	2, 0x01fc
   1300a:	0001                	.insn	2, 0x0001
   1300c:	0000                	.insn	2, 0x0000
	...

Disassembly of section .fini_array:

0000000000013010 <__do_global_dtors_aux_fini_array_entry>:
   13010:	01b8                	.insn	2, 0x01b8
   13012:	0001                	.insn	2, 0x0001
   13014:	0000                	.insn	2, 0x0000
	...

Disassembly of section .data:

0000000000013018 <__sglue>:
	...
   13020:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   13024:	0000                	.insn	2, 0x0000
   13026:	0000                	.insn	2, 0x0000
   13028:	3a28                	.insn	2, 0x3a28
   1302a:	0001                	.insn	2, 0x0001
   1302c:	0000                	.insn	2, 0x0000
	...

0000000000013030 <_impure_data>:
	...
   13038:	3a28                	.insn	2, 0x3a28
   1303a:	0001                	.insn	2, 0x0001
   1303c:	0000                	.insn	2, 0x0000
   1303e:	0000                	.insn	2, 0x0000
   13040:	3ad8                	.insn	2, 0x3ad8
   13042:	0001                	.insn	2, 0x0001
   13044:	0000                	.insn	2, 0x0000
   13046:	0000                	.insn	2, 0x0000
   13048:	3b88                	.insn	2, 0x3b88
   1304a:	0001                	.insn	2, 0x0001
	...
   13100:	0001                	.insn	2, 0x0001
   13102:	0000                	.insn	2, 0x0000
   13104:	0000                	.insn	2, 0x0000
   13106:	0000                	.insn	2, 0x0000
   13108:	330e                	.insn	2, 0x330e
   1310a:	abcd                	.insn	2, 0xabcd
   1310c:	1234                	.insn	2, 0x1234
   1310e:	e66d                	.insn	2, 0xe66d
   13110:	deec                	.insn	2, 0xdeec
   13112:	0005                	.insn	2, 0x0005
   13114:	0000000b          	.insn	4, 0x000b
	...

0000000000013188 <__malloc_av_>:
	...
   13198:	3188                	.insn	2, 0x3188
   1319a:	0001                	.insn	2, 0x0001
   1319c:	0000                	.insn	2, 0x0000
   1319e:	0000                	.insn	2, 0x0000
   131a0:	3188                	.insn	2, 0x3188
   131a2:	0001                	.insn	2, 0x0001
   131a4:	0000                	.insn	2, 0x0000
   131a6:	0000                	.insn	2, 0x0000
   131a8:	3198                	.insn	2, 0x3198
   131aa:	0001                	.insn	2, 0x0001
   131ac:	0000                	.insn	2, 0x0000
   131ae:	0000                	.insn	2, 0x0000
   131b0:	3198                	.insn	2, 0x3198
   131b2:	0001                	.insn	2, 0x0001
   131b4:	0000                	.insn	2, 0x0000
   131b6:	0000                	.insn	2, 0x0000
   131b8:	31a8                	.insn	2, 0x31a8
   131ba:	0001                	.insn	2, 0x0001
   131bc:	0000                	.insn	2, 0x0000
   131be:	0000                	.insn	2, 0x0000
   131c0:	31a8                	.insn	2, 0x31a8
   131c2:	0001                	.insn	2, 0x0001
   131c4:	0000                	.insn	2, 0x0000
   131c6:	0000                	.insn	2, 0x0000
   131c8:	31b8                	.insn	2, 0x31b8
   131ca:	0001                	.insn	2, 0x0001
   131cc:	0000                	.insn	2, 0x0000
   131ce:	0000                	.insn	2, 0x0000
   131d0:	31b8                	.insn	2, 0x31b8
   131d2:	0001                	.insn	2, 0x0001
   131d4:	0000                	.insn	2, 0x0000
   131d6:	0000                	.insn	2, 0x0000
   131d8:	31c8                	.insn	2, 0x31c8
   131da:	0001                	.insn	2, 0x0001
   131dc:	0000                	.insn	2, 0x0000
   131de:	0000                	.insn	2, 0x0000
   131e0:	31c8                	.insn	2, 0x31c8
   131e2:	0001                	.insn	2, 0x0001
   131e4:	0000                	.insn	2, 0x0000
   131e6:	0000                	.insn	2, 0x0000
   131e8:	31d8                	.insn	2, 0x31d8
   131ea:	0001                	.insn	2, 0x0001
   131ec:	0000                	.insn	2, 0x0000
   131ee:	0000                	.insn	2, 0x0000
   131f0:	31d8                	.insn	2, 0x31d8
   131f2:	0001                	.insn	2, 0x0001
   131f4:	0000                	.insn	2, 0x0000
   131f6:	0000                	.insn	2, 0x0000
   131f8:	31e8                	.insn	2, 0x31e8
   131fa:	0001                	.insn	2, 0x0001
   131fc:	0000                	.insn	2, 0x0000
   131fe:	0000                	.insn	2, 0x0000
   13200:	31e8                	.insn	2, 0x31e8
   13202:	0001                	.insn	2, 0x0001
   13204:	0000                	.insn	2, 0x0000
   13206:	0000                	.insn	2, 0x0000
   13208:	31f8                	.insn	2, 0x31f8
   1320a:	0001                	.insn	2, 0x0001
   1320c:	0000                	.insn	2, 0x0000
   1320e:	0000                	.insn	2, 0x0000
   13210:	31f8                	.insn	2, 0x31f8
   13212:	0001                	.insn	2, 0x0001
   13214:	0000                	.insn	2, 0x0000
   13216:	0000                	.insn	2, 0x0000
   13218:	3208                	.insn	2, 0x3208
   1321a:	0001                	.insn	2, 0x0001
   1321c:	0000                	.insn	2, 0x0000
   1321e:	0000                	.insn	2, 0x0000
   13220:	3208                	.insn	2, 0x3208
   13222:	0001                	.insn	2, 0x0001
   13224:	0000                	.insn	2, 0x0000
   13226:	0000                	.insn	2, 0x0000
   13228:	3218                	.insn	2, 0x3218
   1322a:	0001                	.insn	2, 0x0001
   1322c:	0000                	.insn	2, 0x0000
   1322e:	0000                	.insn	2, 0x0000
   13230:	3218                	.insn	2, 0x3218
   13232:	0001                	.insn	2, 0x0001
   13234:	0000                	.insn	2, 0x0000
   13236:	0000                	.insn	2, 0x0000
   13238:	3228                	.insn	2, 0x3228
   1323a:	0001                	.insn	2, 0x0001
   1323c:	0000                	.insn	2, 0x0000
   1323e:	0000                	.insn	2, 0x0000
   13240:	3228                	.insn	2, 0x3228
   13242:	0001                	.insn	2, 0x0001
   13244:	0000                	.insn	2, 0x0000
   13246:	0000                	.insn	2, 0x0000
   13248:	3238                	.insn	2, 0x3238
   1324a:	0001                	.insn	2, 0x0001
   1324c:	0000                	.insn	2, 0x0000
   1324e:	0000                	.insn	2, 0x0000
   13250:	3238                	.insn	2, 0x3238
   13252:	0001                	.insn	2, 0x0001
   13254:	0000                	.insn	2, 0x0000
   13256:	0000                	.insn	2, 0x0000
   13258:	3248                	.insn	2, 0x3248
   1325a:	0001                	.insn	2, 0x0001
   1325c:	0000                	.insn	2, 0x0000
   1325e:	0000                	.insn	2, 0x0000
   13260:	3248                	.insn	2, 0x3248
   13262:	0001                	.insn	2, 0x0001
   13264:	0000                	.insn	2, 0x0000
   13266:	0000                	.insn	2, 0x0000
   13268:	3258                	.insn	2, 0x3258
   1326a:	0001                	.insn	2, 0x0001
   1326c:	0000                	.insn	2, 0x0000
   1326e:	0000                	.insn	2, 0x0000
   13270:	3258                	.insn	2, 0x3258
   13272:	0001                	.insn	2, 0x0001
   13274:	0000                	.insn	2, 0x0000
   13276:	0000                	.insn	2, 0x0000
   13278:	3268                	.insn	2, 0x3268
   1327a:	0001                	.insn	2, 0x0001
   1327c:	0000                	.insn	2, 0x0000
   1327e:	0000                	.insn	2, 0x0000
   13280:	3268                	.insn	2, 0x3268
   13282:	0001                	.insn	2, 0x0001
   13284:	0000                	.insn	2, 0x0000
   13286:	0000                	.insn	2, 0x0000
   13288:	3278                	.insn	2, 0x3278
   1328a:	0001                	.insn	2, 0x0001
   1328c:	0000                	.insn	2, 0x0000
   1328e:	0000                	.insn	2, 0x0000
   13290:	3278                	.insn	2, 0x3278
   13292:	0001                	.insn	2, 0x0001
   13294:	0000                	.insn	2, 0x0000
   13296:	0000                	.insn	2, 0x0000
   13298:	3288                	.insn	2, 0x3288
   1329a:	0001                	.insn	2, 0x0001
   1329c:	0000                	.insn	2, 0x0000
   1329e:	0000                	.insn	2, 0x0000
   132a0:	3288                	.insn	2, 0x3288
   132a2:	0001                	.insn	2, 0x0001
   132a4:	0000                	.insn	2, 0x0000
   132a6:	0000                	.insn	2, 0x0000
   132a8:	3298                	.insn	2, 0x3298
   132aa:	0001                	.insn	2, 0x0001
   132ac:	0000                	.insn	2, 0x0000
   132ae:	0000                	.insn	2, 0x0000
   132b0:	3298                	.insn	2, 0x3298
   132b2:	0001                	.insn	2, 0x0001
   132b4:	0000                	.insn	2, 0x0000
   132b6:	0000                	.insn	2, 0x0000
   132b8:	32a8                	.insn	2, 0x32a8
   132ba:	0001                	.insn	2, 0x0001
   132bc:	0000                	.insn	2, 0x0000
   132be:	0000                	.insn	2, 0x0000
   132c0:	32a8                	.insn	2, 0x32a8
   132c2:	0001                	.insn	2, 0x0001
   132c4:	0000                	.insn	2, 0x0000
   132c6:	0000                	.insn	2, 0x0000
   132c8:	32b8                	.insn	2, 0x32b8
   132ca:	0001                	.insn	2, 0x0001
   132cc:	0000                	.insn	2, 0x0000
   132ce:	0000                	.insn	2, 0x0000
   132d0:	32b8                	.insn	2, 0x32b8
   132d2:	0001                	.insn	2, 0x0001
   132d4:	0000                	.insn	2, 0x0000
   132d6:	0000                	.insn	2, 0x0000
   132d8:	32c8                	.insn	2, 0x32c8
   132da:	0001                	.insn	2, 0x0001
   132dc:	0000                	.insn	2, 0x0000
   132de:	0000                	.insn	2, 0x0000
   132e0:	32c8                	.insn	2, 0x32c8
   132e2:	0001                	.insn	2, 0x0001
   132e4:	0000                	.insn	2, 0x0000
   132e6:	0000                	.insn	2, 0x0000
   132e8:	32d8                	.insn	2, 0x32d8
   132ea:	0001                	.insn	2, 0x0001
   132ec:	0000                	.insn	2, 0x0000
   132ee:	0000                	.insn	2, 0x0000
   132f0:	32d8                	.insn	2, 0x32d8
   132f2:	0001                	.insn	2, 0x0001
   132f4:	0000                	.insn	2, 0x0000
   132f6:	0000                	.insn	2, 0x0000
   132f8:	32e8                	.insn	2, 0x32e8
   132fa:	0001                	.insn	2, 0x0001
   132fc:	0000                	.insn	2, 0x0000
   132fe:	0000                	.insn	2, 0x0000
   13300:	32e8                	.insn	2, 0x32e8
   13302:	0001                	.insn	2, 0x0001
   13304:	0000                	.insn	2, 0x0000
   13306:	0000                	.insn	2, 0x0000
   13308:	32f8                	.insn	2, 0x32f8
   1330a:	0001                	.insn	2, 0x0001
   1330c:	0000                	.insn	2, 0x0000
   1330e:	0000                	.insn	2, 0x0000
   13310:	32f8                	.insn	2, 0x32f8
   13312:	0001                	.insn	2, 0x0001
   13314:	0000                	.insn	2, 0x0000
   13316:	0000                	.insn	2, 0x0000
   13318:	3308                	.insn	2, 0x3308
   1331a:	0001                	.insn	2, 0x0001
   1331c:	0000                	.insn	2, 0x0000
   1331e:	0000                	.insn	2, 0x0000
   13320:	3308                	.insn	2, 0x3308
   13322:	0001                	.insn	2, 0x0001
   13324:	0000                	.insn	2, 0x0000
   13326:	0000                	.insn	2, 0x0000
   13328:	3318                	.insn	2, 0x3318
   1332a:	0001                	.insn	2, 0x0001
   1332c:	0000                	.insn	2, 0x0000
   1332e:	0000                	.insn	2, 0x0000
   13330:	3318                	.insn	2, 0x3318
   13332:	0001                	.insn	2, 0x0001
   13334:	0000                	.insn	2, 0x0000
   13336:	0000                	.insn	2, 0x0000
   13338:	3328                	.insn	2, 0x3328
   1333a:	0001                	.insn	2, 0x0001
   1333c:	0000                	.insn	2, 0x0000
   1333e:	0000                	.insn	2, 0x0000
   13340:	3328                	.insn	2, 0x3328
   13342:	0001                	.insn	2, 0x0001
   13344:	0000                	.insn	2, 0x0000
   13346:	0000                	.insn	2, 0x0000
   13348:	3338                	.insn	2, 0x3338
   1334a:	0001                	.insn	2, 0x0001
   1334c:	0000                	.insn	2, 0x0000
   1334e:	0000                	.insn	2, 0x0000
   13350:	3338                	.insn	2, 0x3338
   13352:	0001                	.insn	2, 0x0001
   13354:	0000                	.insn	2, 0x0000
   13356:	0000                	.insn	2, 0x0000
   13358:	3348                	.insn	2, 0x3348
   1335a:	0001                	.insn	2, 0x0001
   1335c:	0000                	.insn	2, 0x0000
   1335e:	0000                	.insn	2, 0x0000
   13360:	3348                	.insn	2, 0x3348
   13362:	0001                	.insn	2, 0x0001
   13364:	0000                	.insn	2, 0x0000
   13366:	0000                	.insn	2, 0x0000
   13368:	3358                	.insn	2, 0x3358
   1336a:	0001                	.insn	2, 0x0001
   1336c:	0000                	.insn	2, 0x0000
   1336e:	0000                	.insn	2, 0x0000
   13370:	3358                	.insn	2, 0x3358
   13372:	0001                	.insn	2, 0x0001
   13374:	0000                	.insn	2, 0x0000
   13376:	0000                	.insn	2, 0x0000
   13378:	3368                	.insn	2, 0x3368
   1337a:	0001                	.insn	2, 0x0001
   1337c:	0000                	.insn	2, 0x0000
   1337e:	0000                	.insn	2, 0x0000
   13380:	3368                	.insn	2, 0x3368
   13382:	0001                	.insn	2, 0x0001
   13384:	0000                	.insn	2, 0x0000
   13386:	0000                	.insn	2, 0x0000
   13388:	3378                	.insn	2, 0x3378
   1338a:	0001                	.insn	2, 0x0001
   1338c:	0000                	.insn	2, 0x0000
   1338e:	0000                	.insn	2, 0x0000
   13390:	3378                	.insn	2, 0x3378
   13392:	0001                	.insn	2, 0x0001
   13394:	0000                	.insn	2, 0x0000
   13396:	0000                	.insn	2, 0x0000
   13398:	3388                	.insn	2, 0x3388
   1339a:	0001                	.insn	2, 0x0001
   1339c:	0000                	.insn	2, 0x0000
   1339e:	0000                	.insn	2, 0x0000
   133a0:	3388                	.insn	2, 0x3388
   133a2:	0001                	.insn	2, 0x0001
   133a4:	0000                	.insn	2, 0x0000
   133a6:	0000                	.insn	2, 0x0000
   133a8:	3398                	.insn	2, 0x3398
   133aa:	0001                	.insn	2, 0x0001
   133ac:	0000                	.insn	2, 0x0000
   133ae:	0000                	.insn	2, 0x0000
   133b0:	3398                	.insn	2, 0x3398
   133b2:	0001                	.insn	2, 0x0001
   133b4:	0000                	.insn	2, 0x0000
   133b6:	0000                	.insn	2, 0x0000
   133b8:	33a8                	.insn	2, 0x33a8
   133ba:	0001                	.insn	2, 0x0001
   133bc:	0000                	.insn	2, 0x0000
   133be:	0000                	.insn	2, 0x0000
   133c0:	33a8                	.insn	2, 0x33a8
   133c2:	0001                	.insn	2, 0x0001
   133c4:	0000                	.insn	2, 0x0000
   133c6:	0000                	.insn	2, 0x0000
   133c8:	33b8                	.insn	2, 0x33b8
   133ca:	0001                	.insn	2, 0x0001
   133cc:	0000                	.insn	2, 0x0000
   133ce:	0000                	.insn	2, 0x0000
   133d0:	33b8                	.insn	2, 0x33b8
   133d2:	0001                	.insn	2, 0x0001
   133d4:	0000                	.insn	2, 0x0000
   133d6:	0000                	.insn	2, 0x0000
   133d8:	33c8                	.insn	2, 0x33c8
   133da:	0001                	.insn	2, 0x0001
   133dc:	0000                	.insn	2, 0x0000
   133de:	0000                	.insn	2, 0x0000
   133e0:	33c8                	.insn	2, 0x33c8
   133e2:	0001                	.insn	2, 0x0001
   133e4:	0000                	.insn	2, 0x0000
   133e6:	0000                	.insn	2, 0x0000
   133e8:	33d8                	.insn	2, 0x33d8
   133ea:	0001                	.insn	2, 0x0001
   133ec:	0000                	.insn	2, 0x0000
   133ee:	0000                	.insn	2, 0x0000
   133f0:	33d8                	.insn	2, 0x33d8
   133f2:	0001                	.insn	2, 0x0001
   133f4:	0000                	.insn	2, 0x0000
   133f6:	0000                	.insn	2, 0x0000
   133f8:	33e8                	.insn	2, 0x33e8
   133fa:	0001                	.insn	2, 0x0001
   133fc:	0000                	.insn	2, 0x0000
   133fe:	0000                	.insn	2, 0x0000
   13400:	33e8                	.insn	2, 0x33e8
   13402:	0001                	.insn	2, 0x0001
   13404:	0000                	.insn	2, 0x0000
   13406:	0000                	.insn	2, 0x0000
   13408:	33f8                	.insn	2, 0x33f8
   1340a:	0001                	.insn	2, 0x0001
   1340c:	0000                	.insn	2, 0x0000
   1340e:	0000                	.insn	2, 0x0000
   13410:	33f8                	.insn	2, 0x33f8
   13412:	0001                	.insn	2, 0x0001
   13414:	0000                	.insn	2, 0x0000
   13416:	0000                	.insn	2, 0x0000
   13418:	3408                	.insn	2, 0x3408
   1341a:	0001                	.insn	2, 0x0001
   1341c:	0000                	.insn	2, 0x0000
   1341e:	0000                	.insn	2, 0x0000
   13420:	3408                	.insn	2, 0x3408
   13422:	0001                	.insn	2, 0x0001
   13424:	0000                	.insn	2, 0x0000
   13426:	0000                	.insn	2, 0x0000
   13428:	3418                	.insn	2, 0x3418
   1342a:	0001                	.insn	2, 0x0001
   1342c:	0000                	.insn	2, 0x0000
   1342e:	0000                	.insn	2, 0x0000
   13430:	3418                	.insn	2, 0x3418
   13432:	0001                	.insn	2, 0x0001
   13434:	0000                	.insn	2, 0x0000
   13436:	0000                	.insn	2, 0x0000
   13438:	3428                	.insn	2, 0x3428
   1343a:	0001                	.insn	2, 0x0001
   1343c:	0000                	.insn	2, 0x0000
   1343e:	0000                	.insn	2, 0x0000
   13440:	3428                	.insn	2, 0x3428
   13442:	0001                	.insn	2, 0x0001
   13444:	0000                	.insn	2, 0x0000
   13446:	0000                	.insn	2, 0x0000
   13448:	3438                	.insn	2, 0x3438
   1344a:	0001                	.insn	2, 0x0001
   1344c:	0000                	.insn	2, 0x0000
   1344e:	0000                	.insn	2, 0x0000
   13450:	3438                	.insn	2, 0x3438
   13452:	0001                	.insn	2, 0x0001
   13454:	0000                	.insn	2, 0x0000
   13456:	0000                	.insn	2, 0x0000
   13458:	3448                	.insn	2, 0x3448
   1345a:	0001                	.insn	2, 0x0001
   1345c:	0000                	.insn	2, 0x0000
   1345e:	0000                	.insn	2, 0x0000
   13460:	3448                	.insn	2, 0x3448
   13462:	0001                	.insn	2, 0x0001
   13464:	0000                	.insn	2, 0x0000
   13466:	0000                	.insn	2, 0x0000
   13468:	3458                	.insn	2, 0x3458
   1346a:	0001                	.insn	2, 0x0001
   1346c:	0000                	.insn	2, 0x0000
   1346e:	0000                	.insn	2, 0x0000
   13470:	3458                	.insn	2, 0x3458
   13472:	0001                	.insn	2, 0x0001
   13474:	0000                	.insn	2, 0x0000
   13476:	0000                	.insn	2, 0x0000
   13478:	3468                	.insn	2, 0x3468
   1347a:	0001                	.insn	2, 0x0001
   1347c:	0000                	.insn	2, 0x0000
   1347e:	0000                	.insn	2, 0x0000
   13480:	3468                	.insn	2, 0x3468
   13482:	0001                	.insn	2, 0x0001
   13484:	0000                	.insn	2, 0x0000
   13486:	0000                	.insn	2, 0x0000
   13488:	3478                	.insn	2, 0x3478
   1348a:	0001                	.insn	2, 0x0001
   1348c:	0000                	.insn	2, 0x0000
   1348e:	0000                	.insn	2, 0x0000
   13490:	3478                	.insn	2, 0x3478
   13492:	0001                	.insn	2, 0x0001
   13494:	0000                	.insn	2, 0x0000
   13496:	0000                	.insn	2, 0x0000
   13498:	3488                	.insn	2, 0x3488
   1349a:	0001                	.insn	2, 0x0001
   1349c:	0000                	.insn	2, 0x0000
   1349e:	0000                	.insn	2, 0x0000
   134a0:	3488                	.insn	2, 0x3488
   134a2:	0001                	.insn	2, 0x0001
   134a4:	0000                	.insn	2, 0x0000
   134a6:	0000                	.insn	2, 0x0000
   134a8:	3498                	.insn	2, 0x3498
   134aa:	0001                	.insn	2, 0x0001
   134ac:	0000                	.insn	2, 0x0000
   134ae:	0000                	.insn	2, 0x0000
   134b0:	3498                	.insn	2, 0x3498
   134b2:	0001                	.insn	2, 0x0001
   134b4:	0000                	.insn	2, 0x0000
   134b6:	0000                	.insn	2, 0x0000
   134b8:	34a8                	.insn	2, 0x34a8
   134ba:	0001                	.insn	2, 0x0001
   134bc:	0000                	.insn	2, 0x0000
   134be:	0000                	.insn	2, 0x0000
   134c0:	34a8                	.insn	2, 0x34a8
   134c2:	0001                	.insn	2, 0x0001
   134c4:	0000                	.insn	2, 0x0000
   134c6:	0000                	.insn	2, 0x0000
   134c8:	34b8                	.insn	2, 0x34b8
   134ca:	0001                	.insn	2, 0x0001
   134cc:	0000                	.insn	2, 0x0000
   134ce:	0000                	.insn	2, 0x0000
   134d0:	34b8                	.insn	2, 0x34b8
   134d2:	0001                	.insn	2, 0x0001
   134d4:	0000                	.insn	2, 0x0000
   134d6:	0000                	.insn	2, 0x0000
   134d8:	34c8                	.insn	2, 0x34c8
   134da:	0001                	.insn	2, 0x0001
   134dc:	0000                	.insn	2, 0x0000
   134de:	0000                	.insn	2, 0x0000
   134e0:	34c8                	.insn	2, 0x34c8
   134e2:	0001                	.insn	2, 0x0001
   134e4:	0000                	.insn	2, 0x0000
   134e6:	0000                	.insn	2, 0x0000
   134e8:	34d8                	.insn	2, 0x34d8
   134ea:	0001                	.insn	2, 0x0001
   134ec:	0000                	.insn	2, 0x0000
   134ee:	0000                	.insn	2, 0x0000
   134f0:	34d8                	.insn	2, 0x34d8
   134f2:	0001                	.insn	2, 0x0001
   134f4:	0000                	.insn	2, 0x0000
   134f6:	0000                	.insn	2, 0x0000
   134f8:	34e8                	.insn	2, 0x34e8
   134fa:	0001                	.insn	2, 0x0001
   134fc:	0000                	.insn	2, 0x0000
   134fe:	0000                	.insn	2, 0x0000
   13500:	34e8                	.insn	2, 0x34e8
   13502:	0001                	.insn	2, 0x0001
   13504:	0000                	.insn	2, 0x0000
   13506:	0000                	.insn	2, 0x0000
   13508:	34f8                	.insn	2, 0x34f8
   1350a:	0001                	.insn	2, 0x0001
   1350c:	0000                	.insn	2, 0x0000
   1350e:	0000                	.insn	2, 0x0000
   13510:	34f8                	.insn	2, 0x34f8
   13512:	0001                	.insn	2, 0x0001
   13514:	0000                	.insn	2, 0x0000
   13516:	0000                	.insn	2, 0x0000
   13518:	3508                	.insn	2, 0x3508
   1351a:	0001                	.insn	2, 0x0001
   1351c:	0000                	.insn	2, 0x0000
   1351e:	0000                	.insn	2, 0x0000
   13520:	3508                	.insn	2, 0x3508
   13522:	0001                	.insn	2, 0x0001
   13524:	0000                	.insn	2, 0x0000
   13526:	0000                	.insn	2, 0x0000
   13528:	3518                	.insn	2, 0x3518
   1352a:	0001                	.insn	2, 0x0001
   1352c:	0000                	.insn	2, 0x0000
   1352e:	0000                	.insn	2, 0x0000
   13530:	3518                	.insn	2, 0x3518
   13532:	0001                	.insn	2, 0x0001
   13534:	0000                	.insn	2, 0x0000
   13536:	0000                	.insn	2, 0x0000
   13538:	3528                	.insn	2, 0x3528
   1353a:	0001                	.insn	2, 0x0001
   1353c:	0000                	.insn	2, 0x0000
   1353e:	0000                	.insn	2, 0x0000
   13540:	3528                	.insn	2, 0x3528
   13542:	0001                	.insn	2, 0x0001
   13544:	0000                	.insn	2, 0x0000
   13546:	0000                	.insn	2, 0x0000
   13548:	3538                	.insn	2, 0x3538
   1354a:	0001                	.insn	2, 0x0001
   1354c:	0000                	.insn	2, 0x0000
   1354e:	0000                	.insn	2, 0x0000
   13550:	3538                	.insn	2, 0x3538
   13552:	0001                	.insn	2, 0x0001
   13554:	0000                	.insn	2, 0x0000
   13556:	0000                	.insn	2, 0x0000
   13558:	3548                	.insn	2, 0x3548
   1355a:	0001                	.insn	2, 0x0001
   1355c:	0000                	.insn	2, 0x0000
   1355e:	0000                	.insn	2, 0x0000
   13560:	3548                	.insn	2, 0x3548
   13562:	0001                	.insn	2, 0x0001
   13564:	0000                	.insn	2, 0x0000
   13566:	0000                	.insn	2, 0x0000
   13568:	3558                	.insn	2, 0x3558
   1356a:	0001                	.insn	2, 0x0001
   1356c:	0000                	.insn	2, 0x0000
   1356e:	0000                	.insn	2, 0x0000
   13570:	3558                	.insn	2, 0x3558
   13572:	0001                	.insn	2, 0x0001
   13574:	0000                	.insn	2, 0x0000
   13576:	0000                	.insn	2, 0x0000
   13578:	3568                	.insn	2, 0x3568
   1357a:	0001                	.insn	2, 0x0001
   1357c:	0000                	.insn	2, 0x0000
   1357e:	0000                	.insn	2, 0x0000
   13580:	3568                	.insn	2, 0x3568
   13582:	0001                	.insn	2, 0x0001
   13584:	0000                	.insn	2, 0x0000
   13586:	0000                	.insn	2, 0x0000
   13588:	3578                	.insn	2, 0x3578
   1358a:	0001                	.insn	2, 0x0001
   1358c:	0000                	.insn	2, 0x0000
   1358e:	0000                	.insn	2, 0x0000
   13590:	3578                	.insn	2, 0x3578
   13592:	0001                	.insn	2, 0x0001
   13594:	0000                	.insn	2, 0x0000
   13596:	0000                	.insn	2, 0x0000
   13598:	3588                	.insn	2, 0x3588
   1359a:	0001                	.insn	2, 0x0001
   1359c:	0000                	.insn	2, 0x0000
   1359e:	0000                	.insn	2, 0x0000
   135a0:	3588                	.insn	2, 0x3588
   135a2:	0001                	.insn	2, 0x0001
   135a4:	0000                	.insn	2, 0x0000
   135a6:	0000                	.insn	2, 0x0000
   135a8:	3598                	.insn	2, 0x3598
   135aa:	0001                	.insn	2, 0x0001
   135ac:	0000                	.insn	2, 0x0000
   135ae:	0000                	.insn	2, 0x0000
   135b0:	3598                	.insn	2, 0x3598
   135b2:	0001                	.insn	2, 0x0001
   135b4:	0000                	.insn	2, 0x0000
   135b6:	0000                	.insn	2, 0x0000
   135b8:	35a8                	.insn	2, 0x35a8
   135ba:	0001                	.insn	2, 0x0001
   135bc:	0000                	.insn	2, 0x0000
   135be:	0000                	.insn	2, 0x0000
   135c0:	35a8                	.insn	2, 0x35a8
   135c2:	0001                	.insn	2, 0x0001
   135c4:	0000                	.insn	2, 0x0000
   135c6:	0000                	.insn	2, 0x0000
   135c8:	35b8                	.insn	2, 0x35b8
   135ca:	0001                	.insn	2, 0x0001
   135cc:	0000                	.insn	2, 0x0000
   135ce:	0000                	.insn	2, 0x0000
   135d0:	35b8                	.insn	2, 0x35b8
   135d2:	0001                	.insn	2, 0x0001
   135d4:	0000                	.insn	2, 0x0000
   135d6:	0000                	.insn	2, 0x0000
   135d8:	35c8                	.insn	2, 0x35c8
   135da:	0001                	.insn	2, 0x0001
   135dc:	0000                	.insn	2, 0x0000
   135de:	0000                	.insn	2, 0x0000
   135e0:	35c8                	.insn	2, 0x35c8
   135e2:	0001                	.insn	2, 0x0001
   135e4:	0000                	.insn	2, 0x0000
   135e6:	0000                	.insn	2, 0x0000
   135e8:	35d8                	.insn	2, 0x35d8
   135ea:	0001                	.insn	2, 0x0001
   135ec:	0000                	.insn	2, 0x0000
   135ee:	0000                	.insn	2, 0x0000
   135f0:	35d8                	.insn	2, 0x35d8
   135f2:	0001                	.insn	2, 0x0001
   135f4:	0000                	.insn	2, 0x0000
   135f6:	0000                	.insn	2, 0x0000
   135f8:	35e8                	.insn	2, 0x35e8
   135fa:	0001                	.insn	2, 0x0001
   135fc:	0000                	.insn	2, 0x0000
   135fe:	0000                	.insn	2, 0x0000
   13600:	35e8                	.insn	2, 0x35e8
   13602:	0001                	.insn	2, 0x0001
   13604:	0000                	.insn	2, 0x0000
   13606:	0000                	.insn	2, 0x0000
   13608:	35f8                	.insn	2, 0x35f8
   1360a:	0001                	.insn	2, 0x0001
   1360c:	0000                	.insn	2, 0x0000
   1360e:	0000                	.insn	2, 0x0000
   13610:	35f8                	.insn	2, 0x35f8
   13612:	0001                	.insn	2, 0x0001
   13614:	0000                	.insn	2, 0x0000
   13616:	0000                	.insn	2, 0x0000
   13618:	3608                	.insn	2, 0x3608
   1361a:	0001                	.insn	2, 0x0001
   1361c:	0000                	.insn	2, 0x0000
   1361e:	0000                	.insn	2, 0x0000
   13620:	3608                	.insn	2, 0x3608
   13622:	0001                	.insn	2, 0x0001
   13624:	0000                	.insn	2, 0x0000
   13626:	0000                	.insn	2, 0x0000
   13628:	3618                	.insn	2, 0x3618
   1362a:	0001                	.insn	2, 0x0001
   1362c:	0000                	.insn	2, 0x0000
   1362e:	0000                	.insn	2, 0x0000
   13630:	3618                	.insn	2, 0x3618
   13632:	0001                	.insn	2, 0x0001
   13634:	0000                	.insn	2, 0x0000
   13636:	0000                	.insn	2, 0x0000
   13638:	3628                	.insn	2, 0x3628
   1363a:	0001                	.insn	2, 0x0001
   1363c:	0000                	.insn	2, 0x0000
   1363e:	0000                	.insn	2, 0x0000
   13640:	3628                	.insn	2, 0x3628
   13642:	0001                	.insn	2, 0x0001
   13644:	0000                	.insn	2, 0x0000
   13646:	0000                	.insn	2, 0x0000
   13648:	3638                	.insn	2, 0x3638
   1364a:	0001                	.insn	2, 0x0001
   1364c:	0000                	.insn	2, 0x0000
   1364e:	0000                	.insn	2, 0x0000
   13650:	3638                	.insn	2, 0x3638
   13652:	0001                	.insn	2, 0x0001
   13654:	0000                	.insn	2, 0x0000
   13656:	0000                	.insn	2, 0x0000
   13658:	3648                	.insn	2, 0x3648
   1365a:	0001                	.insn	2, 0x0001
   1365c:	0000                	.insn	2, 0x0000
   1365e:	0000                	.insn	2, 0x0000
   13660:	3648                	.insn	2, 0x3648
   13662:	0001                	.insn	2, 0x0001
   13664:	0000                	.insn	2, 0x0000
   13666:	0000                	.insn	2, 0x0000
   13668:	3658                	.insn	2, 0x3658
   1366a:	0001                	.insn	2, 0x0001
   1366c:	0000                	.insn	2, 0x0000
   1366e:	0000                	.insn	2, 0x0000
   13670:	3658                	.insn	2, 0x3658
   13672:	0001                	.insn	2, 0x0001
   13674:	0000                	.insn	2, 0x0000
   13676:	0000                	.insn	2, 0x0000
   13678:	3668                	.insn	2, 0x3668
   1367a:	0001                	.insn	2, 0x0001
   1367c:	0000                	.insn	2, 0x0000
   1367e:	0000                	.insn	2, 0x0000
   13680:	3668                	.insn	2, 0x3668
   13682:	0001                	.insn	2, 0x0001
   13684:	0000                	.insn	2, 0x0000
   13686:	0000                	.insn	2, 0x0000
   13688:	3678                	.insn	2, 0x3678
   1368a:	0001                	.insn	2, 0x0001
   1368c:	0000                	.insn	2, 0x0000
   1368e:	0000                	.insn	2, 0x0000
   13690:	3678                	.insn	2, 0x3678
   13692:	0001                	.insn	2, 0x0001
   13694:	0000                	.insn	2, 0x0000
   13696:	0000                	.insn	2, 0x0000
   13698:	3688                	.insn	2, 0x3688
   1369a:	0001                	.insn	2, 0x0001
   1369c:	0000                	.insn	2, 0x0000
   1369e:	0000                	.insn	2, 0x0000
   136a0:	3688                	.insn	2, 0x3688
   136a2:	0001                	.insn	2, 0x0001
   136a4:	0000                	.insn	2, 0x0000
   136a6:	0000                	.insn	2, 0x0000
   136a8:	3698                	.insn	2, 0x3698
   136aa:	0001                	.insn	2, 0x0001
   136ac:	0000                	.insn	2, 0x0000
   136ae:	0000                	.insn	2, 0x0000
   136b0:	3698                	.insn	2, 0x3698
   136b2:	0001                	.insn	2, 0x0001
   136b4:	0000                	.insn	2, 0x0000
   136b6:	0000                	.insn	2, 0x0000
   136b8:	36a8                	.insn	2, 0x36a8
   136ba:	0001                	.insn	2, 0x0001
   136bc:	0000                	.insn	2, 0x0000
   136be:	0000                	.insn	2, 0x0000
   136c0:	36a8                	.insn	2, 0x36a8
   136c2:	0001                	.insn	2, 0x0001
   136c4:	0000                	.insn	2, 0x0000
   136c6:	0000                	.insn	2, 0x0000
   136c8:	36b8                	.insn	2, 0x36b8
   136ca:	0001                	.insn	2, 0x0001
   136cc:	0000                	.insn	2, 0x0000
   136ce:	0000                	.insn	2, 0x0000
   136d0:	36b8                	.insn	2, 0x36b8
   136d2:	0001                	.insn	2, 0x0001
   136d4:	0000                	.insn	2, 0x0000
   136d6:	0000                	.insn	2, 0x0000
   136d8:	36c8                	.insn	2, 0x36c8
   136da:	0001                	.insn	2, 0x0001
   136dc:	0000                	.insn	2, 0x0000
   136de:	0000                	.insn	2, 0x0000
   136e0:	36c8                	.insn	2, 0x36c8
   136e2:	0001                	.insn	2, 0x0001
   136e4:	0000                	.insn	2, 0x0000
   136e6:	0000                	.insn	2, 0x0000
   136e8:	36d8                	.insn	2, 0x36d8
   136ea:	0001                	.insn	2, 0x0001
   136ec:	0000                	.insn	2, 0x0000
   136ee:	0000                	.insn	2, 0x0000
   136f0:	36d8                	.insn	2, 0x36d8
   136f2:	0001                	.insn	2, 0x0001
   136f4:	0000                	.insn	2, 0x0000
   136f6:	0000                	.insn	2, 0x0000
   136f8:	36e8                	.insn	2, 0x36e8
   136fa:	0001                	.insn	2, 0x0001
   136fc:	0000                	.insn	2, 0x0000
   136fe:	0000                	.insn	2, 0x0000
   13700:	36e8                	.insn	2, 0x36e8
   13702:	0001                	.insn	2, 0x0001
   13704:	0000                	.insn	2, 0x0000
   13706:	0000                	.insn	2, 0x0000
   13708:	36f8                	.insn	2, 0x36f8
   1370a:	0001                	.insn	2, 0x0001
   1370c:	0000                	.insn	2, 0x0000
   1370e:	0000                	.insn	2, 0x0000
   13710:	36f8                	.insn	2, 0x36f8
   13712:	0001                	.insn	2, 0x0001
   13714:	0000                	.insn	2, 0x0000
   13716:	0000                	.insn	2, 0x0000
   13718:	3708                	.insn	2, 0x3708
   1371a:	0001                	.insn	2, 0x0001
   1371c:	0000                	.insn	2, 0x0000
   1371e:	0000                	.insn	2, 0x0000
   13720:	3708                	.insn	2, 0x3708
   13722:	0001                	.insn	2, 0x0001
   13724:	0000                	.insn	2, 0x0000
   13726:	0000                	.insn	2, 0x0000
   13728:	3718                	.insn	2, 0x3718
   1372a:	0001                	.insn	2, 0x0001
   1372c:	0000                	.insn	2, 0x0000
   1372e:	0000                	.insn	2, 0x0000
   13730:	3718                	.insn	2, 0x3718
   13732:	0001                	.insn	2, 0x0001
   13734:	0000                	.insn	2, 0x0000
   13736:	0000                	.insn	2, 0x0000
   13738:	3728                	.insn	2, 0x3728
   1373a:	0001                	.insn	2, 0x0001
   1373c:	0000                	.insn	2, 0x0000
   1373e:	0000                	.insn	2, 0x0000
   13740:	3728                	.insn	2, 0x3728
   13742:	0001                	.insn	2, 0x0001
   13744:	0000                	.insn	2, 0x0000
   13746:	0000                	.insn	2, 0x0000
   13748:	3738                	.insn	2, 0x3738
   1374a:	0001                	.insn	2, 0x0001
   1374c:	0000                	.insn	2, 0x0000
   1374e:	0000                	.insn	2, 0x0000
   13750:	3738                	.insn	2, 0x3738
   13752:	0001                	.insn	2, 0x0001
   13754:	0000                	.insn	2, 0x0000
   13756:	0000                	.insn	2, 0x0000
   13758:	3748                	.insn	2, 0x3748
   1375a:	0001                	.insn	2, 0x0001
   1375c:	0000                	.insn	2, 0x0000
   1375e:	0000                	.insn	2, 0x0000
   13760:	3748                	.insn	2, 0x3748
   13762:	0001                	.insn	2, 0x0001
   13764:	0000                	.insn	2, 0x0000
   13766:	0000                	.insn	2, 0x0000
   13768:	3758                	.insn	2, 0x3758
   1376a:	0001                	.insn	2, 0x0001
   1376c:	0000                	.insn	2, 0x0000
   1376e:	0000                	.insn	2, 0x0000
   13770:	3758                	.insn	2, 0x3758
   13772:	0001                	.insn	2, 0x0001
   13774:	0000                	.insn	2, 0x0000
   13776:	0000                	.insn	2, 0x0000
   13778:	3768                	.insn	2, 0x3768
   1377a:	0001                	.insn	2, 0x0001
   1377c:	0000                	.insn	2, 0x0000
   1377e:	0000                	.insn	2, 0x0000
   13780:	3768                	.insn	2, 0x3768
   13782:	0001                	.insn	2, 0x0001
   13784:	0000                	.insn	2, 0x0000
   13786:	0000                	.insn	2, 0x0000
   13788:	3778                	.insn	2, 0x3778
   1378a:	0001                	.insn	2, 0x0001
   1378c:	0000                	.insn	2, 0x0000
   1378e:	0000                	.insn	2, 0x0000
   13790:	3778                	.insn	2, 0x3778
   13792:	0001                	.insn	2, 0x0001
   13794:	0000                	.insn	2, 0x0000
   13796:	0000                	.insn	2, 0x0000
   13798:	3788                	.insn	2, 0x3788
   1379a:	0001                	.insn	2, 0x0001
   1379c:	0000                	.insn	2, 0x0000
   1379e:	0000                	.insn	2, 0x0000
   137a0:	3788                	.insn	2, 0x3788
   137a2:	0001                	.insn	2, 0x0001
   137a4:	0000                	.insn	2, 0x0000
   137a6:	0000                	.insn	2, 0x0000
   137a8:	3798                	.insn	2, 0x3798
   137aa:	0001                	.insn	2, 0x0001
   137ac:	0000                	.insn	2, 0x0000
   137ae:	0000                	.insn	2, 0x0000
   137b0:	3798                	.insn	2, 0x3798
   137b2:	0001                	.insn	2, 0x0001
   137b4:	0000                	.insn	2, 0x0000
   137b6:	0000                	.insn	2, 0x0000
   137b8:	37a8                	.insn	2, 0x37a8
   137ba:	0001                	.insn	2, 0x0001
   137bc:	0000                	.insn	2, 0x0000
   137be:	0000                	.insn	2, 0x0000
   137c0:	37a8                	.insn	2, 0x37a8
   137c2:	0001                	.insn	2, 0x0001
   137c4:	0000                	.insn	2, 0x0000
   137c6:	0000                	.insn	2, 0x0000
   137c8:	37b8                	.insn	2, 0x37b8
   137ca:	0001                	.insn	2, 0x0001
   137cc:	0000                	.insn	2, 0x0000
   137ce:	0000                	.insn	2, 0x0000
   137d0:	37b8                	.insn	2, 0x37b8
   137d2:	0001                	.insn	2, 0x0001
   137d4:	0000                	.insn	2, 0x0000
   137d6:	0000                	.insn	2, 0x0000
   137d8:	37c8                	.insn	2, 0x37c8
   137da:	0001                	.insn	2, 0x0001
   137dc:	0000                	.insn	2, 0x0000
   137de:	0000                	.insn	2, 0x0000
   137e0:	37c8                	.insn	2, 0x37c8
   137e2:	0001                	.insn	2, 0x0001
   137e4:	0000                	.insn	2, 0x0000
   137e6:	0000                	.insn	2, 0x0000
   137e8:	37d8                	.insn	2, 0x37d8
   137ea:	0001                	.insn	2, 0x0001
   137ec:	0000                	.insn	2, 0x0000
   137ee:	0000                	.insn	2, 0x0000
   137f0:	37d8                	.insn	2, 0x37d8
   137f2:	0001                	.insn	2, 0x0001
   137f4:	0000                	.insn	2, 0x0000
   137f6:	0000                	.insn	2, 0x0000
   137f8:	37e8                	.insn	2, 0x37e8
   137fa:	0001                	.insn	2, 0x0001
   137fc:	0000                	.insn	2, 0x0000
   137fe:	0000                	.insn	2, 0x0000
   13800:	37e8                	.insn	2, 0x37e8
   13802:	0001                	.insn	2, 0x0001
   13804:	0000                	.insn	2, 0x0000
   13806:	0000                	.insn	2, 0x0000
   13808:	37f8                	.insn	2, 0x37f8
   1380a:	0001                	.insn	2, 0x0001
   1380c:	0000                	.insn	2, 0x0000
   1380e:	0000                	.insn	2, 0x0000
   13810:	37f8                	.insn	2, 0x37f8
   13812:	0001                	.insn	2, 0x0001
   13814:	0000                	.insn	2, 0x0000
   13816:	0000                	.insn	2, 0x0000
   13818:	3808                	.insn	2, 0x3808
   1381a:	0001                	.insn	2, 0x0001
   1381c:	0000                	.insn	2, 0x0000
   1381e:	0000                	.insn	2, 0x0000
   13820:	3808                	.insn	2, 0x3808
   13822:	0001                	.insn	2, 0x0001
   13824:	0000                	.insn	2, 0x0000
   13826:	0000                	.insn	2, 0x0000
   13828:	3818                	.insn	2, 0x3818
   1382a:	0001                	.insn	2, 0x0001
   1382c:	0000                	.insn	2, 0x0000
   1382e:	0000                	.insn	2, 0x0000
   13830:	3818                	.insn	2, 0x3818
   13832:	0001                	.insn	2, 0x0001
   13834:	0000                	.insn	2, 0x0000
   13836:	0000                	.insn	2, 0x0000
   13838:	3828                	.insn	2, 0x3828
   1383a:	0001                	.insn	2, 0x0001
   1383c:	0000                	.insn	2, 0x0000
   1383e:	0000                	.insn	2, 0x0000
   13840:	3828                	.insn	2, 0x3828
   13842:	0001                	.insn	2, 0x0001
   13844:	0000                	.insn	2, 0x0000
   13846:	0000                	.insn	2, 0x0000
   13848:	3838                	.insn	2, 0x3838
   1384a:	0001                	.insn	2, 0x0001
   1384c:	0000                	.insn	2, 0x0000
   1384e:	0000                	.insn	2, 0x0000
   13850:	3838                	.insn	2, 0x3838
   13852:	0001                	.insn	2, 0x0001
   13854:	0000                	.insn	2, 0x0000
   13856:	0000                	.insn	2, 0x0000
   13858:	3848                	.insn	2, 0x3848
   1385a:	0001                	.insn	2, 0x0001
   1385c:	0000                	.insn	2, 0x0000
   1385e:	0000                	.insn	2, 0x0000
   13860:	3848                	.insn	2, 0x3848
   13862:	0001                	.insn	2, 0x0001
   13864:	0000                	.insn	2, 0x0000
   13866:	0000                	.insn	2, 0x0000
   13868:	3858                	.insn	2, 0x3858
   1386a:	0001                	.insn	2, 0x0001
   1386c:	0000                	.insn	2, 0x0000
   1386e:	0000                	.insn	2, 0x0000
   13870:	3858                	.insn	2, 0x3858
   13872:	0001                	.insn	2, 0x0001
   13874:	0000                	.insn	2, 0x0000
   13876:	0000                	.insn	2, 0x0000
   13878:	3868                	.insn	2, 0x3868
   1387a:	0001                	.insn	2, 0x0001
   1387c:	0000                	.insn	2, 0x0000
   1387e:	0000                	.insn	2, 0x0000
   13880:	3868                	.insn	2, 0x3868
   13882:	0001                	.insn	2, 0x0001
   13884:	0000                	.insn	2, 0x0000
   13886:	0000                	.insn	2, 0x0000
   13888:	3878                	.insn	2, 0x3878
   1388a:	0001                	.insn	2, 0x0001
   1388c:	0000                	.insn	2, 0x0000
   1388e:	0000                	.insn	2, 0x0000
   13890:	3878                	.insn	2, 0x3878
   13892:	0001                	.insn	2, 0x0001
   13894:	0000                	.insn	2, 0x0000
   13896:	0000                	.insn	2, 0x0000
   13898:	3888                	.insn	2, 0x3888
   1389a:	0001                	.insn	2, 0x0001
   1389c:	0000                	.insn	2, 0x0000
   1389e:	0000                	.insn	2, 0x0000
   138a0:	3888                	.insn	2, 0x3888
   138a2:	0001                	.insn	2, 0x0001
   138a4:	0000                	.insn	2, 0x0000
   138a6:	0000                	.insn	2, 0x0000
   138a8:	3898                	.insn	2, 0x3898
   138aa:	0001                	.insn	2, 0x0001
   138ac:	0000                	.insn	2, 0x0000
   138ae:	0000                	.insn	2, 0x0000
   138b0:	3898                	.insn	2, 0x3898
   138b2:	0001                	.insn	2, 0x0001
   138b4:	0000                	.insn	2, 0x0000
   138b6:	0000                	.insn	2, 0x0000
   138b8:	38a8                	.insn	2, 0x38a8
   138ba:	0001                	.insn	2, 0x0001
   138bc:	0000                	.insn	2, 0x0000
   138be:	0000                	.insn	2, 0x0000
   138c0:	38a8                	.insn	2, 0x38a8
   138c2:	0001                	.insn	2, 0x0001
   138c4:	0000                	.insn	2, 0x0000
   138c6:	0000                	.insn	2, 0x0000
   138c8:	38b8                	.insn	2, 0x38b8
   138ca:	0001                	.insn	2, 0x0001
   138cc:	0000                	.insn	2, 0x0000
   138ce:	0000                	.insn	2, 0x0000
   138d0:	38b8                	.insn	2, 0x38b8
   138d2:	0001                	.insn	2, 0x0001
   138d4:	0000                	.insn	2, 0x0000
   138d6:	0000                	.insn	2, 0x0000
   138d8:	38c8                	.insn	2, 0x38c8
   138da:	0001                	.insn	2, 0x0001
   138dc:	0000                	.insn	2, 0x0000
   138de:	0000                	.insn	2, 0x0000
   138e0:	38c8                	.insn	2, 0x38c8
   138e2:	0001                	.insn	2, 0x0001
   138e4:	0000                	.insn	2, 0x0000
   138e6:	0000                	.insn	2, 0x0000
   138e8:	38d8                	.insn	2, 0x38d8
   138ea:	0001                	.insn	2, 0x0001
   138ec:	0000                	.insn	2, 0x0000
   138ee:	0000                	.insn	2, 0x0000
   138f0:	38d8                	.insn	2, 0x38d8
   138f2:	0001                	.insn	2, 0x0001
   138f4:	0000                	.insn	2, 0x0000
   138f6:	0000                	.insn	2, 0x0000
   138f8:	38e8                	.insn	2, 0x38e8
   138fa:	0001                	.insn	2, 0x0001
   138fc:	0000                	.insn	2, 0x0000
   138fe:	0000                	.insn	2, 0x0000
   13900:	38e8                	.insn	2, 0x38e8
   13902:	0001                	.insn	2, 0x0001
   13904:	0000                	.insn	2, 0x0000
   13906:	0000                	.insn	2, 0x0000
   13908:	38f8                	.insn	2, 0x38f8
   1390a:	0001                	.insn	2, 0x0001
   1390c:	0000                	.insn	2, 0x0000
   1390e:	0000                	.insn	2, 0x0000
   13910:	38f8                	.insn	2, 0x38f8
   13912:	0001                	.insn	2, 0x0001
   13914:	0000                	.insn	2, 0x0000
   13916:	0000                	.insn	2, 0x0000
   13918:	3908                	.insn	2, 0x3908
   1391a:	0001                	.insn	2, 0x0001
   1391c:	0000                	.insn	2, 0x0000
   1391e:	0000                	.insn	2, 0x0000
   13920:	3908                	.insn	2, 0x3908
   13922:	0001                	.insn	2, 0x0001
   13924:	0000                	.insn	2, 0x0000
   13926:	0000                	.insn	2, 0x0000
   13928:	3918                	.insn	2, 0x3918
   1392a:	0001                	.insn	2, 0x0001
   1392c:	0000                	.insn	2, 0x0000
   1392e:	0000                	.insn	2, 0x0000
   13930:	3918                	.insn	2, 0x3918
   13932:	0001                	.insn	2, 0x0001
   13934:	0000                	.insn	2, 0x0000
   13936:	0000                	.insn	2, 0x0000
   13938:	3928                	.insn	2, 0x3928
   1393a:	0001                	.insn	2, 0x0001
   1393c:	0000                	.insn	2, 0x0000
   1393e:	0000                	.insn	2, 0x0000
   13940:	3928                	.insn	2, 0x3928
   13942:	0001                	.insn	2, 0x0001
   13944:	0000                	.insn	2, 0x0000
   13946:	0000                	.insn	2, 0x0000
   13948:	3938                	.insn	2, 0x3938
   1394a:	0001                	.insn	2, 0x0001
   1394c:	0000                	.insn	2, 0x0000
   1394e:	0000                	.insn	2, 0x0000
   13950:	3938                	.insn	2, 0x3938
   13952:	0001                	.insn	2, 0x0001
   13954:	0000                	.insn	2, 0x0000
   13956:	0000                	.insn	2, 0x0000
   13958:	3948                	.insn	2, 0x3948
   1395a:	0001                	.insn	2, 0x0001
   1395c:	0000                	.insn	2, 0x0000
   1395e:	0000                	.insn	2, 0x0000
   13960:	3948                	.insn	2, 0x3948
   13962:	0001                	.insn	2, 0x0001
   13964:	0000                	.insn	2, 0x0000
   13966:	0000                	.insn	2, 0x0000
   13968:	3958                	.insn	2, 0x3958
   1396a:	0001                	.insn	2, 0x0001
   1396c:	0000                	.insn	2, 0x0000
   1396e:	0000                	.insn	2, 0x0000
   13970:	3958                	.insn	2, 0x3958
   13972:	0001                	.insn	2, 0x0001
   13974:	0000                	.insn	2, 0x0000
   13976:	0000                	.insn	2, 0x0000
   13978:	3968                	.insn	2, 0x3968
   1397a:	0001                	.insn	2, 0x0001
   1397c:	0000                	.insn	2, 0x0000
   1397e:	0000                	.insn	2, 0x0000
   13980:	3968                	.insn	2, 0x3968
   13982:	0001                	.insn	2, 0x0001
   13984:	0000                	.insn	2, 0x0000
   13986:	0000                	.insn	2, 0x0000
   13988:	3978                	.insn	2, 0x3978
   1398a:	0001                	.insn	2, 0x0001
   1398c:	0000                	.insn	2, 0x0000
   1398e:	0000                	.insn	2, 0x0000
   13990:	3978                	.insn	2, 0x3978
   13992:	0001                	.insn	2, 0x0001
   13994:	0000                	.insn	2, 0x0000
	...

Disassembly of section .sdata:

0000000000013998 <__dso_handle>:
	...

00000000000139a0 <_impure_ptr>:
   139a0:	3030                	.insn	2, 0x3030
   139a2:	0001                	.insn	2, 0x0001
   139a4:	0000                	.insn	2, 0x0000
	...

00000000000139a8 <__malloc_sbrk_base>:
   139a8:	ffff                	.insn	2, 0xffff
   139aa:	ffff                	.insn	2, 0xffff
   139ac:	ffff                	.insn	2, 0xffff
   139ae:	ffff                	.insn	2, 0xffff

00000000000139b0 <__malloc_trim_threshold>:
   139b0:	0000                	.insn	2, 0x0000
   139b2:	0002                	.insn	2, 0x0002
   139b4:	0000                	.insn	2, 0x0000
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	.insn	4, 0x3a434347
   4:	2820                	.insn	2, 0x2820
   6:	33623167          	.insn	4, 0x33623167
   a:	3630                	.insn	2, 0x3630
   c:	3330                	.insn	2, 0x3330
   e:	6139                	.insn	2, 0x6139
  10:	2029                	.insn	2, 0x2029
  12:	3531                	.insn	2, 0x3531
  14:	312e                	.insn	2, 0x312e
  16:	302e                	.insn	2, 0x302e
  18:	4700                	.insn	2, 0x4700
  1a:	203a4343          	.insn	4, 0x203a4343
  1e:	4728                	.insn	2, 0x4728
  20:	554e                	.insn	2, 0x554e
  22:	2029                	.insn	2, 0x2029
  24:	3531                	.insn	2, 0x3531
  26:	312e                	.insn	2, 0x312e
  28:	302e                	.insn	2, 0x302e
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1b41                	.insn	2, 0x1b41
   2:	0000                	.insn	2, 0x0000
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <exit-0x1010c>
   c:	0011                	.insn	2, 0x0011
   e:	0000                	.insn	2, 0x0000
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3676                	.insn	2, 0x3676
  16:	6934                	.insn	2, 0x6934
  18:	7032                	.insn	2, 0x7032
  1a:	0031                	.insn	2, 0x0031


test/build/with-syscall/quicksort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	080010ef          	jal	111b4 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	4c4020ef          	jal	1260c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	4d450513          	addi	a0,a0,1236 # 124d4 <__libc_fini_array>
   1015c:	1900106f          	j	112ec <atexit>
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
   10184:	755000ef          	jal	110d8 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	16450513          	addi	a0,a0,356 # 112ec <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	34050513          	addi	a0,a0,832 # 124d4 <__libc_fini_array>
   1019c:	150010ef          	jal	112ec <atexit>
   101a0:	6a5000ef          	jal	11044 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	284000ef          	jal	10434 <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1d81c783          	lbu	a5,472(gp) # 139f0 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00012537          	lui	a0,0x12
   101d8:	7f850513          	addi	a0,a0,2040 # 127f8 <__EH_FRAME_BEGIN__>
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
   10204:	00012537          	lui	a0,0x12
   10208:	1e018593          	addi	a1,gp,480 # 139f8 <object.0>
   1020c:	7f850513          	addi	a0,a0,2040 # 127f8 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <quicksort>:
   1021c:	fd010113          	addi	sp,sp,-48
   10220:	02113423          	sd	ra,40(sp)
   10224:	02813023          	sd	s0,32(sp)
   10228:	03010413          	addi	s0,sp,48
   1022c:	fca43c23          	sd	a0,-40(s0)
   10230:	00058793          	mv	a5,a1
   10234:	00060713          	mv	a4,a2
   10238:	fcf42a23          	sw	a5,-44(s0)
   1023c:	00070793          	mv	a5,a4
   10240:	fcf42823          	sw	a5,-48(s0)
   10244:	fd442783          	lw	a5,-44(s0)
   10248:	00078713          	mv	a4,a5
   1024c:	fd042783          	lw	a5,-48(s0)
   10250:	0007071b          	sext.w	a4,a4
   10254:	0007879b          	sext.w	a5,a5
   10258:	1ce7c463          	blt	a5,a4,10420 <quicksort+0x204>
   1025c:	fd442783          	lw	a5,-44(s0)
   10260:	00279793          	slli	a5,a5,0x2
   10264:	fd843703          	ld	a4,-40(s0)
   10268:	00f707b3          	add	a5,a4,a5
   1026c:	0007a783          	lw	a5,0(a5)
   10270:	fef42223          	sw	a5,-28(s0)
   10274:	fd442783          	lw	a5,-44(s0)
   10278:	fef42623          	sw	a5,-20(s0)
   1027c:	fd042783          	lw	a5,-48(s0)
   10280:	fef42423          	sw	a5,-24(s0)
   10284:	1000006f          	j	10384 <quicksort+0x168>
   10288:	fe842783          	lw	a5,-24(s0)
   1028c:	fff7879b          	addiw	a5,a5,-1
   10290:	fef42423          	sw	a5,-24(s0)
   10294:	fe842783          	lw	a5,-24(s0)
   10298:	00279793          	slli	a5,a5,0x2
   1029c:	fd843703          	ld	a4,-40(s0)
   102a0:	00f707b3          	add	a5,a4,a5
   102a4:	0007a783          	lw	a5,0(a5)
   102a8:	fe442703          	lw	a4,-28(s0)
   102ac:	0007071b          	sext.w	a4,a4
   102b0:	02e7c663          	blt	a5,a4,102dc <quicksort+0xc0>
   102b4:	fec42783          	lw	a5,-20(s0)
   102b8:	00078713          	mv	a4,a5
   102bc:	fe842783          	lw	a5,-24(s0)
   102c0:	0007071b          	sext.w	a4,a4
   102c4:	0007879b          	sext.w	a5,a5
   102c8:	fcf740e3          	blt	a4,a5,10288 <quicksort+0x6c>
   102cc:	0100006f          	j	102dc <quicksort+0xc0>
   102d0:	fec42783          	lw	a5,-20(s0)
   102d4:	0017879b          	addiw	a5,a5,1
   102d8:	fef42623          	sw	a5,-20(s0)
   102dc:	fec42783          	lw	a5,-20(s0)
   102e0:	00279793          	slli	a5,a5,0x2
   102e4:	fd843703          	ld	a4,-40(s0)
   102e8:	00f707b3          	add	a5,a4,a5
   102ec:	0007a783          	lw	a5,0(a5)
   102f0:	fe442703          	lw	a4,-28(s0)
   102f4:	0007071b          	sext.w	a4,a4
   102f8:	00f74e63          	blt	a4,a5,10314 <quicksort+0xf8>
   102fc:	fec42783          	lw	a5,-20(s0)
   10300:	00078713          	mv	a4,a5
   10304:	fe842783          	lw	a5,-24(s0)
   10308:	0007071b          	sext.w	a4,a4
   1030c:	0007879b          	sext.w	a5,a5
   10310:	fcf740e3          	blt	a4,a5,102d0 <quicksort+0xb4>
   10314:	fec42783          	lw	a5,-20(s0)
   10318:	00078713          	mv	a4,a5
   1031c:	fe842783          	lw	a5,-24(s0)
   10320:	0007071b          	sext.w	a4,a4
   10324:	0007879b          	sext.w	a5,a5
   10328:	04f75e63          	bge	a4,a5,10384 <quicksort+0x168>
   1032c:	fec42783          	lw	a5,-20(s0)
   10330:	00279793          	slli	a5,a5,0x2
   10334:	fd843703          	ld	a4,-40(s0)
   10338:	00f707b3          	add	a5,a4,a5
   1033c:	0007a783          	lw	a5,0(a5)
   10340:	fef42023          	sw	a5,-32(s0)
   10344:	fe842783          	lw	a5,-24(s0)
   10348:	00279793          	slli	a5,a5,0x2
   1034c:	fd843703          	ld	a4,-40(s0)
   10350:	00f70733          	add	a4,a4,a5
   10354:	fec42783          	lw	a5,-20(s0)
   10358:	00279793          	slli	a5,a5,0x2
   1035c:	fd843683          	ld	a3,-40(s0)
   10360:	00f687b3          	add	a5,a3,a5
   10364:	00072703          	lw	a4,0(a4)
   10368:	00e7a023          	sw	a4,0(a5)
   1036c:	fe842783          	lw	a5,-24(s0)
   10370:	00279793          	slli	a5,a5,0x2
   10374:	fd843703          	ld	a4,-40(s0)
   10378:	00f707b3          	add	a5,a4,a5
   1037c:	fe042703          	lw	a4,-32(s0)
   10380:	00e7a023          	sw	a4,0(a5)
   10384:	fec42783          	lw	a5,-20(s0)
   10388:	00078713          	mv	a4,a5
   1038c:	fe842783          	lw	a5,-24(s0)
   10390:	0007071b          	sext.w	a4,a4
   10394:	0007879b          	sext.w	a5,a5
   10398:	eef71ee3          	bne	a4,a5,10294 <quicksort+0x78>
   1039c:	fec42783          	lw	a5,-20(s0)
   103a0:	00279793          	slli	a5,a5,0x2
   103a4:	fd843703          	ld	a4,-40(s0)
   103a8:	00f70733          	add	a4,a4,a5
   103ac:	fd442783          	lw	a5,-44(s0)
   103b0:	00279793          	slli	a5,a5,0x2
   103b4:	fd843683          	ld	a3,-40(s0)
   103b8:	00f687b3          	add	a5,a3,a5
   103bc:	00072703          	lw	a4,0(a4)
   103c0:	00e7a023          	sw	a4,0(a5)
   103c4:	fec42783          	lw	a5,-20(s0)
   103c8:	00279793          	slli	a5,a5,0x2
   103cc:	fd843703          	ld	a4,-40(s0)
   103d0:	00f707b3          	add	a5,a4,a5
   103d4:	fe442703          	lw	a4,-28(s0)
   103d8:	00e7a023          	sw	a4,0(a5)
   103dc:	fec42783          	lw	a5,-20(s0)
   103e0:	fff7879b          	addiw	a5,a5,-1
   103e4:	0007871b          	sext.w	a4,a5
   103e8:	fd442783          	lw	a5,-44(s0)
   103ec:	00070613          	mv	a2,a4
   103f0:	00078593          	mv	a1,a5
   103f4:	fd843503          	ld	a0,-40(s0)
   103f8:	e25ff0ef          	jal	1021c <quicksort>
   103fc:	fec42783          	lw	a5,-20(s0)
   10400:	0017879b          	addiw	a5,a5,1
   10404:	0007879b          	sext.w	a5,a5
   10408:	fd042703          	lw	a4,-48(s0)
   1040c:	00070613          	mv	a2,a4
   10410:	00078593          	mv	a1,a5
   10414:	fd843503          	ld	a0,-40(s0)
   10418:	e05ff0ef          	jal	1021c <quicksort>
   1041c:	0080006f          	j	10424 <quicksort+0x208>
   10420:	00000013          	nop
   10424:	02813083          	ld	ra,40(sp)
   10428:	02013403          	ld	s0,32(sp)
   1042c:	03010113          	addi	sp,sp,48
   10430:	00008067          	ret

0000000000010434 <main>:
   10434:	e1010113          	addi	sp,sp,-496
   10438:	1e113423          	sd	ra,488(sp)
   1043c:	1e813023          	sd	s0,480(sp)
   10440:	1f010413          	addi	s0,sp,496
   10444:	00a00793          	li	a5,10
   10448:	fcf42c23          	sw	a5,-40(s0)
   1044c:	000127b7          	lui	a5,0x12
   10450:	7d078793          	addi	a5,a5,2000 # 127d0 <__errno+0x5c>
   10454:	0007b583          	ld	a1,0(a5)
   10458:	0087b603          	ld	a2,8(a5)
   1045c:	0107b683          	ld	a3,16(a5)
   10460:	0187b703          	ld	a4,24(a5)
   10464:	fab43423          	sd	a1,-88(s0)
   10468:	fac43823          	sd	a2,-80(s0)
   1046c:	fad43c23          	sd	a3,-72(s0)
   10470:	fce43023          	sd	a4,-64(s0)
   10474:	0207b783          	ld	a5,32(a5)
   10478:	fcf43423          	sd	a5,-56(s0)
   1047c:	000127b7          	lui	a5,0x12
   10480:	78078513          	addi	a0,a5,1920 # 12780 <__errno+0xc>
   10484:	2c0000ef          	jal	10744 <print_s>
   10488:	fe042623          	sw	zero,-20(s0)
   1048c:	0380006f          	j	104c4 <main+0x90>
   10490:	fec42703          	lw	a4,-20(s0)
   10494:	fa840793          	addi	a5,s0,-88
   10498:	00271713          	slli	a4,a4,0x2
   1049c:	00f707b3          	add	a5,a4,a5
   104a0:	0007a783          	lw	a5,0(a5)
   104a4:	00078513          	mv	a0,a5
   104a8:	230000ef          	jal	106d8 <print_d>
   104ac:	000127b7          	lui	a5,0x12
   104b0:	79078513          	addi	a0,a5,1936 # 12790 <__errno+0x1c>
   104b4:	290000ef          	jal	10744 <print_s>
   104b8:	fec42783          	lw	a5,-20(s0)
   104bc:	0017879b          	addiw	a5,a5,1
   104c0:	fef42623          	sw	a5,-20(s0)
   104c4:	fec42783          	lw	a5,-20(s0)
   104c8:	00078713          	mv	a4,a5
   104cc:	fd842783          	lw	a5,-40(s0)
   104d0:	0007071b          	sext.w	a4,a4
   104d4:	0007879b          	sext.w	a5,a5
   104d8:	faf74ce3          	blt	a4,a5,10490 <main+0x5c>
   104dc:	000127b7          	lui	a5,0x12
   104e0:	79878513          	addi	a0,a5,1944 # 12798 <__errno+0x24>
   104e4:	260000ef          	jal	10744 <print_s>
   104e8:	000127b7          	lui	a5,0x12
   104ec:	7a078513          	addi	a0,a5,1952 # 127a0 <__errno+0x2c>
   104f0:	254000ef          	jal	10744 <print_s>
   104f4:	fd842783          	lw	a5,-40(s0)
   104f8:	fff7879b          	addiw	a5,a5,-1
   104fc:	0007871b          	sext.w	a4,a5
   10500:	fa840793          	addi	a5,s0,-88
   10504:	00070613          	mv	a2,a4
   10508:	00000593          	li	a1,0
   1050c:	00078513          	mv	a0,a5
   10510:	d0dff0ef          	jal	1021c <quicksort>
   10514:	fe042423          	sw	zero,-24(s0)
   10518:	0380006f          	j	10550 <main+0x11c>
   1051c:	fe842703          	lw	a4,-24(s0)
   10520:	fa840793          	addi	a5,s0,-88
   10524:	00271713          	slli	a4,a4,0x2
   10528:	00f707b3          	add	a5,a4,a5
   1052c:	0007a783          	lw	a5,0(a5)
   10530:	00078513          	mv	a0,a5
   10534:	1a4000ef          	jal	106d8 <print_d>
   10538:	000127b7          	lui	a5,0x12
   1053c:	79078513          	addi	a0,a5,1936 # 12790 <__errno+0x1c>
   10540:	204000ef          	jal	10744 <print_s>
   10544:	fe842783          	lw	a5,-24(s0)
   10548:	0017879b          	addiw	a5,a5,1
   1054c:	fef42423          	sw	a5,-24(s0)
   10550:	fe842783          	lw	a5,-24(s0)
   10554:	00078713          	mv	a4,a5
   10558:	fd842783          	lw	a5,-40(s0)
   1055c:	0007071b          	sext.w	a4,a4
   10560:	0007879b          	sext.w	a5,a5
   10564:	faf74ce3          	blt	a4,a5,1051c <main+0xe8>
   10568:	000127b7          	lui	a5,0x12
   1056c:	79878513          	addi	a0,a5,1944 # 12798 <__errno+0x24>
   10570:	1d4000ef          	jal	10744 <print_s>
   10574:	06400793          	li	a5,100
   10578:	fcf42a23          	sw	a5,-44(s0)
   1057c:	fe042223          	sw	zero,-28(s0)
   10580:	0340006f          	j	105b4 <main+0x180>
   10584:	06400793          	li	a5,100
   10588:	fe442703          	lw	a4,-28(s0)
   1058c:	40e787bb          	subw	a5,a5,a4
   10590:	0007871b          	sext.w	a4,a5
   10594:	fe442683          	lw	a3,-28(s0)
   10598:	e1840793          	addi	a5,s0,-488
   1059c:	00269693          	slli	a3,a3,0x2
   105a0:	00f687b3          	add	a5,a3,a5
   105a4:	00e7a023          	sw	a4,0(a5)
   105a8:	fe442783          	lw	a5,-28(s0)
   105ac:	0017879b          	addiw	a5,a5,1
   105b0:	fef42223          	sw	a5,-28(s0)
   105b4:	fe442783          	lw	a5,-28(s0)
   105b8:	0007871b          	sext.w	a4,a5
   105bc:	06300793          	li	a5,99
   105c0:	fce7d2e3          	bge	a5,a4,10584 <main+0x150>
   105c4:	000127b7          	lui	a5,0x12
   105c8:	7b078513          	addi	a0,a5,1968 # 127b0 <__errno+0x3c>
   105cc:	178000ef          	jal	10744 <print_s>
   105d0:	fe042023          	sw	zero,-32(s0)
   105d4:	0380006f          	j	1060c <main+0x1d8>
   105d8:	fe042703          	lw	a4,-32(s0)
   105dc:	e1840793          	addi	a5,s0,-488
   105e0:	00271713          	slli	a4,a4,0x2
   105e4:	00f707b3          	add	a5,a4,a5
   105e8:	0007a783          	lw	a5,0(a5)
   105ec:	00078513          	mv	a0,a5
   105f0:	0e8000ef          	jal	106d8 <print_d>
   105f4:	000127b7          	lui	a5,0x12
   105f8:	79078513          	addi	a0,a5,1936 # 12790 <__errno+0x1c>
   105fc:	148000ef          	jal	10744 <print_s>
   10600:	fe042783          	lw	a5,-32(s0)
   10604:	0017879b          	addiw	a5,a5,1
   10608:	fef42023          	sw	a5,-32(s0)
   1060c:	fe042783          	lw	a5,-32(s0)
   10610:	00078713          	mv	a4,a5
   10614:	fd442783          	lw	a5,-44(s0)
   10618:	0007071b          	sext.w	a4,a4
   1061c:	0007879b          	sext.w	a5,a5
   10620:	faf74ce3          	blt	a4,a5,105d8 <main+0x1a4>
   10624:	000127b7          	lui	a5,0x12
   10628:	79878513          	addi	a0,a5,1944 # 12798 <__errno+0x24>
   1062c:	118000ef          	jal	10744 <print_s>
   10630:	000127b7          	lui	a5,0x12
   10634:	7c078513          	addi	a0,a5,1984 # 127c0 <__errno+0x4c>
   10638:	10c000ef          	jal	10744 <print_s>
   1063c:	fd442783          	lw	a5,-44(s0)
   10640:	fff7879b          	addiw	a5,a5,-1
   10644:	0007871b          	sext.w	a4,a5
   10648:	e1840793          	addi	a5,s0,-488
   1064c:	00070613          	mv	a2,a4
   10650:	00000593          	li	a1,0
   10654:	00078513          	mv	a0,a5
   10658:	bc5ff0ef          	jal	1021c <quicksort>
   1065c:	fc042e23          	sw	zero,-36(s0)
   10660:	0380006f          	j	10698 <main+0x264>
   10664:	fdc42703          	lw	a4,-36(s0)
   10668:	e1840793          	addi	a5,s0,-488
   1066c:	00271713          	slli	a4,a4,0x2
   10670:	00f707b3          	add	a5,a4,a5
   10674:	0007a783          	lw	a5,0(a5)
   10678:	00078513          	mv	a0,a5
   1067c:	05c000ef          	jal	106d8 <print_d>
   10680:	000127b7          	lui	a5,0x12
   10684:	79078513          	addi	a0,a5,1936 # 12790 <__errno+0x1c>
   10688:	0bc000ef          	jal	10744 <print_s>
   1068c:	fdc42783          	lw	a5,-36(s0)
   10690:	0017879b          	addiw	a5,a5,1
   10694:	fcf42e23          	sw	a5,-36(s0)
   10698:	fdc42783          	lw	a5,-36(s0)
   1069c:	00078713          	mv	a4,a5
   106a0:	fd442783          	lw	a5,-44(s0)
   106a4:	0007071b          	sext.w	a4,a4
   106a8:	0007879b          	sext.w	a5,a5
   106ac:	faf74ce3          	blt	a4,a5,10664 <main+0x230>
   106b0:	000127b7          	lui	a5,0x12
   106b4:	79878513          	addi	a0,a5,1944 # 12798 <__errno+0x24>
   106b8:	08c000ef          	jal	10744 <print_s>
   106bc:	0ec000ef          	jal	107a8 <exit_proc>
   106c0:	00000793          	li	a5,0
   106c4:	00078513          	mv	a0,a5
   106c8:	1e813083          	ld	ra,488(sp)
   106cc:	1e013403          	ld	s0,480(sp)
   106d0:	1f010113          	addi	sp,sp,496
   106d4:	00008067          	ret

00000000000106d8 <print_d>:
   106d8:	fe010113          	addi	sp,sp,-32
   106dc:	00113c23          	sd	ra,24(sp)
   106e0:	00813823          	sd	s0,16(sp)
   106e4:	02010413          	addi	s0,sp,32
   106e8:	00050793          	mv	a5,a0
   106ec:	fef42623          	sw	a5,-20(s0)
   106f0:	00200893          	li	a7,2
   106f4:	00000073          	ecall
   106f8:	00000013          	nop
   106fc:	01813083          	ld	ra,24(sp)
   10700:	01013403          	ld	s0,16(sp)
   10704:	02010113          	addi	sp,sp,32
   10708:	00008067          	ret

000000000001070c <print_ll>:
   1070c:	fe010113          	addi	sp,sp,-32
   10710:	00113c23          	sd	ra,24(sp)
   10714:	00813823          	sd	s0,16(sp)
   10718:	02010413          	addi	s0,sp,32
   1071c:	fea43423          	sd	a0,-24(s0)
   10720:	fe843783          	ld	a5,-24(s0)
   10724:	00078513          	mv	a0,a5
   10728:	00600893          	li	a7,6
   1072c:	00000073          	ecall
   10730:	00000013          	nop
   10734:	01813083          	ld	ra,24(sp)
   10738:	01013403          	ld	s0,16(sp)
   1073c:	02010113          	addi	sp,sp,32
   10740:	00008067          	ret

0000000000010744 <print_s>:
   10744:	fe010113          	addi	sp,sp,-32
   10748:	00113c23          	sd	ra,24(sp)
   1074c:	00813823          	sd	s0,16(sp)
   10750:	02010413          	addi	s0,sp,32
   10754:	fea43423          	sd	a0,-24(s0)
   10758:	00000893          	li	a7,0
   1075c:	00000073          	ecall
   10760:	00000013          	nop
   10764:	01813083          	ld	ra,24(sp)
   10768:	01013403          	ld	s0,16(sp)
   1076c:	02010113          	addi	sp,sp,32
   10770:	00008067          	ret

0000000000010774 <print_c>:
   10774:	fe010113          	addi	sp,sp,-32
   10778:	00113c23          	sd	ra,24(sp)
   1077c:	00813823          	sd	s0,16(sp)
   10780:	02010413          	addi	s0,sp,32
   10784:	00050793          	mv	a5,a0
   10788:	fef407a3          	sb	a5,-17(s0)
   1078c:	00100893          	li	a7,1
   10790:	00000073          	ecall
   10794:	00000013          	nop
   10798:	01813083          	ld	ra,24(sp)
   1079c:	01013403          	ld	s0,16(sp)
   107a0:	02010113          	addi	sp,sp,32
   107a4:	00008067          	ret

00000000000107a8 <exit_proc>:
   107a8:	ff010113          	addi	sp,sp,-16
   107ac:	00113423          	sd	ra,8(sp)
   107b0:	00813023          	sd	s0,0(sp)
   107b4:	01010413          	addi	s0,sp,16
   107b8:	00300893          	li	a7,3
   107bc:	00000073          	ecall
   107c0:	00000013          	nop
   107c4:	00813083          	ld	ra,8(sp)
   107c8:	00013403          	ld	s0,0(sp)
   107cc:	01010113          	addi	sp,sp,16
   107d0:	00008067          	ret

00000000000107d4 <read_char>:
   107d4:	fe010113          	addi	sp,sp,-32
   107d8:	00113c23          	sd	ra,24(sp)
   107dc:	00813823          	sd	s0,16(sp)
   107e0:	02010413          	addi	s0,sp,32
   107e4:	00400893          	li	a7,4
   107e8:	00000073          	ecall
   107ec:	00050793          	mv	a5,a0
   107f0:	fef407a3          	sb	a5,-17(s0)
   107f4:	fef44783          	lbu	a5,-17(s0)
   107f8:	00078513          	mv	a0,a5
   107fc:	01813083          	ld	ra,24(sp)
   10800:	01013403          	ld	s0,16(sp)
   10804:	02010113          	addi	sp,sp,32
   10808:	00008067          	ret

000000000001080c <read_num>:
   1080c:	fe010113          	addi	sp,sp,-32
   10810:	00113c23          	sd	ra,24(sp)
   10814:	00813823          	sd	s0,16(sp)
   10818:	02010413          	addi	s0,sp,32
   1081c:	00500893          	li	a7,5
   10820:	00000073          	ecall
   10824:	00050793          	mv	a5,a0
   10828:	fef43423          	sd	a5,-24(s0)
   1082c:	fe843783          	ld	a5,-24(s0)
   10830:	00078513          	mv	a0,a5
   10834:	01813083          	ld	ra,24(sp)
   10838:	01013403          	ld	s0,16(sp)
   1083c:	02010113          	addi	sp,sp,32
   10840:	00008067          	ret

0000000000010844 <__fp_lock>:
   10844:	00000513          	li	a0,0
   10848:	00008067          	ret

000000000001084c <stdio_exit_handler>:
   1084c:	00013637          	lui	a2,0x13
   10850:	000125b7          	lui	a1,0x12
   10854:	00013537          	lui	a0,0x13
   10858:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1085c:	01458593          	addi	a1,a1,20 # 12014 <_fclose_r>
   10860:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10864:	3440006f          	j	10ba8 <_fwalk_sglue>

0000000000010868 <cleanup_stdio>:
   10868:	00853583          	ld	a1,8(a0)
   1086c:	ff010113          	addi	sp,sp,-16
   10870:	00813023          	sd	s0,0(sp)
   10874:	00113423          	sd	ra,8(sp)
   10878:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   1087c:	00050413          	mv	s0,a0
   10880:	00f58463          	beq	a1,a5,10888 <cleanup_stdio+0x20>
   10884:	790010ef          	jal	12014 <_fclose_r>
   10888:	01043583          	ld	a1,16(s0)
   1088c:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10890:	00f58663          	beq	a1,a5,1089c <cleanup_stdio+0x34>
   10894:	00040513          	mv	a0,s0
   10898:	77c010ef          	jal	12014 <_fclose_r>
   1089c:	01843583          	ld	a1,24(s0)
   108a0:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   108a4:	00f58c63          	beq	a1,a5,108bc <cleanup_stdio+0x54>
   108a8:	00040513          	mv	a0,s0
   108ac:	00013403          	ld	s0,0(sp)
   108b0:	00813083          	ld	ra,8(sp)
   108b4:	01010113          	addi	sp,sp,16
   108b8:	75c0106f          	j	12014 <_fclose_r>
   108bc:	00813083          	ld	ra,8(sp)
   108c0:	00013403          	ld	s0,0(sp)
   108c4:	01010113          	addi	sp,sp,16
   108c8:	00008067          	ret

00000000000108cc <__fp_unlock>:
   108cc:	00000513          	li	a0,0
   108d0:	00008067          	ret

00000000000108d4 <global_stdio_init.part.0>:
   108d4:	fd010113          	addi	sp,sp,-48
   108d8:	000117b7          	lui	a5,0x11
   108dc:	02813023          	sd	s0,32(sp)
   108e0:	84c78793          	addi	a5,a5,-1972 # 1084c <stdio_exit_handler>
   108e4:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   108e8:	02113423          	sd	ra,40(sp)
   108ec:	00913c23          	sd	s1,24(sp)
   108f0:	01213823          	sd	s2,16(sp)
   108f4:	01313423          	sd	s3,8(sp)
   108f8:	01413023          	sd	s4,0(sp)
   108fc:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10900:	00800613          	li	a2,8
   10904:	00400793          	li	a5,4
   10908:	00000593          	li	a1,0
   1090c:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10910:	00f42823          	sw	a5,16(s0)
   10914:	00043023          	sd	zero,0(s0)
   10918:	00043423          	sd	zero,8(s0)
   1091c:	0a042623          	sw	zero,172(s0)
   10920:	00043c23          	sd	zero,24(s0)
   10924:	02042023          	sw	zero,32(s0)
   10928:	02042423          	sw	zero,40(s0)
   1092c:	7ac000ef          	jal	110d8 <memset>
   10930:	00011a37          	lui	s4,0x11
   10934:	000119b7          	lui	s3,0x11
   10938:	00011937          	lui	s2,0x11
   1093c:	000114b7          	lui	s1,0x11
   10940:	000107b7          	lui	a5,0x10
   10944:	c74a0a13          	addi	s4,s4,-908 # 10c74 <__sread>
   10948:	cd898993          	addi	s3,s3,-808 # 10cd8 <__swrite>
   1094c:	d6090913          	addi	s2,s2,-672 # 10d60 <__sseek>
   10950:	dc448493          	addi	s1,s1,-572 # 10dc4 <__sclose>
   10954:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10958:	00800613          	li	a2,8
   1095c:	00000593          	li	a1,0
   10960:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10964:	0cf42023          	sw	a5,192(s0)
   10968:	03443c23          	sd	s4,56(s0)
   1096c:	05343023          	sd	s3,64(s0)
   10970:	05243423          	sd	s2,72(s0)
   10974:	04943823          	sd	s1,80(s0)
   10978:	02843823          	sd	s0,48(s0)
   1097c:	0a043823          	sd	zero,176(s0)
   10980:	0a043c23          	sd	zero,184(s0)
   10984:	14042e23          	sw	zero,348(s0)
   10988:	0c043423          	sd	zero,200(s0)
   1098c:	0c042823          	sw	zero,208(s0)
   10990:	0c042c23          	sw	zero,216(s0)
   10994:	744000ef          	jal	110d8 <memset>
   10998:	000207b7          	lui	a5,0x20
   1099c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   109a0:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   109a4:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   109a8:	00800613          	li	a2,8
   109ac:	00000593          	li	a1,0
   109b0:	0f443423          	sd	s4,232(s0)
   109b4:	0f343823          	sd	s3,240(s0)
   109b8:	0f243c23          	sd	s2,248(s0)
   109bc:	10943023          	sd	s1,256(s0)
   109c0:	16f42823          	sw	a5,368(s0)
   109c4:	16043023          	sd	zero,352(s0)
   109c8:	16043423          	sd	zero,360(s0)
   109cc:	20042623          	sw	zero,524(s0)
   109d0:	16043c23          	sd	zero,376(s0)
   109d4:	18042023          	sw	zero,384(s0)
   109d8:	18042423          	sw	zero,392(s0)
   109dc:	0ee43023          	sd	a4,224(s0)
   109e0:	6f8000ef          	jal	110d8 <memset>
   109e4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   109e8:	19443c23          	sd	s4,408(s0)
   109ec:	1b343023          	sd	s3,416(s0)
   109f0:	1b243423          	sd	s2,424(s0)
   109f4:	1a943823          	sd	s1,432(s0)
   109f8:	02813083          	ld	ra,40(sp)
   109fc:	18f43823          	sd	a5,400(s0)
   10a00:	02013403          	ld	s0,32(sp)
   10a04:	01813483          	ld	s1,24(sp)
   10a08:	01013903          	ld	s2,16(sp)
   10a0c:	00813983          	ld	s3,8(sp)
   10a10:	00013a03          	ld	s4,0(sp)
   10a14:	03010113          	addi	sp,sp,48
   10a18:	00008067          	ret

0000000000010a1c <__sfp>:
   10a1c:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10a20:	fd010113          	addi	sp,sp,-48
   10a24:	00913c23          	sd	s1,24(sp)
   10a28:	02113423          	sd	ra,40(sp)
   10a2c:	02813023          	sd	s0,32(sp)
   10a30:	00050493          	mv	s1,a0
   10a34:	10078063          	beqz	a5,10b34 <__sfp+0x118>
   10a38:	000136b7          	lui	a3,0x13
   10a3c:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10a40:	0b000813          	li	a6,176
   10a44:	0086a703          	lw	a4,8(a3)
   10a48:	08e05463          	blez	a4,10ad0 <__sfp+0xb4>
   10a4c:	02071713          	slli	a4,a4,0x20
   10a50:	02075713          	srli	a4,a4,0x20
   10a54:	03070733          	mul	a4,a4,a6
   10a58:	0106b403          	ld	s0,16(a3)
   10a5c:	00e40733          	add	a4,s0,a4
   10a60:	00c0006f          	j	10a6c <__sfp+0x50>
   10a64:	0b040413          	addi	s0,s0,176
   10a68:	06e40463          	beq	s0,a4,10ad0 <__sfp+0xb4>
   10a6c:	01041783          	lh	a5,16(s0)
   10a70:	fe079ae3          	bnez	a5,10a64 <__sfp+0x48>
   10a74:	ffff07b7          	lui	a5,0xffff0
   10a78:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10a7c:	00f42823          	sw	a5,16(s0)
   10a80:	0a042623          	sw	zero,172(s0)
   10a84:	00043023          	sd	zero,0(s0)
   10a88:	00043423          	sd	zero,8(s0)
   10a8c:	00043c23          	sd	zero,24(s0)
   10a90:	02042023          	sw	zero,32(s0)
   10a94:	02042423          	sw	zero,40(s0)
   10a98:	00800613          	li	a2,8
   10a9c:	00000593          	li	a1,0
   10aa0:	0a440513          	addi	a0,s0,164
   10aa4:	634000ef          	jal	110d8 <memset>
   10aa8:	04043c23          	sd	zero,88(s0)
   10aac:	06042023          	sw	zero,96(s0)
   10ab0:	06043c23          	sd	zero,120(s0)
   10ab4:	08042023          	sw	zero,128(s0)
   10ab8:	02813083          	ld	ra,40(sp)
   10abc:	00040513          	mv	a0,s0
   10ac0:	02013403          	ld	s0,32(sp)
   10ac4:	01813483          	ld	s1,24(sp)
   10ac8:	03010113          	addi	sp,sp,48
   10acc:	00008067          	ret
   10ad0:	0006b403          	ld	s0,0(a3)
   10ad4:	00040663          	beqz	s0,10ae0 <__sfp+0xc4>
   10ad8:	00040693          	mv	a3,s0
   10adc:	f69ff06f          	j	10a44 <__sfp+0x28>
   10ae0:	2d800593          	li	a1,728
   10ae4:	00048513          	mv	a0,s1
   10ae8:	00d13423          	sd	a3,8(sp)
   10aec:	43d000ef          	jal	11728 <_malloc_r>
   10af0:	00813683          	ld	a3,8(sp)
   10af4:	00050413          	mv	s0,a0
   10af8:	04050263          	beqz	a0,10b3c <__sfp+0x120>
   10afc:	00400793          	li	a5,4
   10b00:	00f52423          	sw	a5,8(a0)
   10b04:	01850513          	addi	a0,a0,24
   10b08:	00043023          	sd	zero,0(s0)
   10b0c:	00a43823          	sd	a0,16(s0)
   10b10:	2c000613          	li	a2,704
   10b14:	00000593          	li	a1,0
   10b18:	00d13423          	sd	a3,8(sp)
   10b1c:	5bc000ef          	jal	110d8 <memset>
   10b20:	00813683          	ld	a3,8(sp)
   10b24:	0b000813          	li	a6,176
   10b28:	0086b023          	sd	s0,0(a3)
   10b2c:	00040693          	mv	a3,s0
   10b30:	f15ff06f          	j	10a44 <__sfp+0x28>
   10b34:	da1ff0ef          	jal	108d4 <global_stdio_init.part.0>
   10b38:	f01ff06f          	j	10a38 <__sfp+0x1c>
   10b3c:	0006b023          	sd	zero,0(a3)
   10b40:	00c00793          	li	a5,12
   10b44:	00f4a023          	sw	a5,0(s1)
   10b48:	f71ff06f          	j	10ab8 <__sfp+0x9c>

0000000000010b4c <__sinit>:
   10b4c:	04853783          	ld	a5,72(a0)
   10b50:	00078463          	beqz	a5,10b58 <__sinit+0xc>
   10b54:	00008067          	ret
   10b58:	000117b7          	lui	a5,0x11
   10b5c:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10b60:	86878793          	addi	a5,a5,-1944 # 10868 <cleanup_stdio>
   10b64:	04f53423          	sd	a5,72(a0)
   10b68:	fe0716e3          	bnez	a4,10b54 <__sinit+0x8>
   10b6c:	d69ff06f          	j	108d4 <global_stdio_init.part.0>

0000000000010b70 <__sfp_lock_acquire>:
   10b70:	00008067          	ret

0000000000010b74 <__sfp_lock_release>:
   10b74:	00008067          	ret

0000000000010b78 <__fp_lock_all>:
   10b78:	00013637          	lui	a2,0x13
   10b7c:	000115b7          	lui	a1,0x11
   10b80:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10b84:	84458593          	addi	a1,a1,-1980 # 10844 <__fp_lock>
   10b88:	00000513          	li	a0,0
   10b8c:	01c0006f          	j	10ba8 <_fwalk_sglue>

0000000000010b90 <__fp_unlock_all>:
   10b90:	00013637          	lui	a2,0x13
   10b94:	000115b7          	lui	a1,0x11
   10b98:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10b9c:	8cc58593          	addi	a1,a1,-1844 # 108cc <__fp_unlock>
   10ba0:	00000513          	li	a0,0
   10ba4:	0040006f          	j	10ba8 <_fwalk_sglue>

0000000000010ba8 <_fwalk_sglue>:
   10ba8:	fb010113          	addi	sp,sp,-80
   10bac:	03213823          	sd	s2,48(sp)
   10bb0:	03313423          	sd	s3,40(sp)
   10bb4:	03413023          	sd	s4,32(sp)
   10bb8:	01513c23          	sd	s5,24(sp)
   10bbc:	01613823          	sd	s6,16(sp)
   10bc0:	01713423          	sd	s7,8(sp)
   10bc4:	01813023          	sd	s8,0(sp)
   10bc8:	04113423          	sd	ra,72(sp)
   10bcc:	04813023          	sd	s0,64(sp)
   10bd0:	02913c23          	sd	s1,56(sp)
   10bd4:	00060993          	mv	s3,a2
   10bd8:	00050a93          	mv	s5,a0
   10bdc:	00058b13          	mv	s6,a1
   10be0:	00000913          	li	s2,0
   10be4:	0b000b93          	li	s7,176
   10be8:	00100c13          	li	s8,1
   10bec:	fff00a13          	li	s4,-1
   10bf0:	0089a483          	lw	s1,8(s3)
   10bf4:	04905263          	blez	s1,10c38 <_fwalk_sglue+0x90>
   10bf8:	02049493          	slli	s1,s1,0x20
   10bfc:	0204d493          	srli	s1,s1,0x20
   10c00:	037484b3          	mul	s1,s1,s7
   10c04:	0109b403          	ld	s0,16(s3)
   10c08:	009404b3          	add	s1,s0,s1
   10c0c:	01045783          	lhu	a5,16(s0)
   10c10:	02fc7063          	bgeu	s8,a5,10c30 <_fwalk_sglue+0x88>
   10c14:	01241783          	lh	a5,18(s0)
   10c18:	00040593          	mv	a1,s0
   10c1c:	000a8513          	mv	a0,s5
   10c20:	01478863          	beq	a5,s4,10c30 <_fwalk_sglue+0x88>
   10c24:	000b00e7          	jalr	s6
   10c28:	01256933          	or	s2,a0,s2
   10c2c:	0009091b          	sext.w	s2,s2
   10c30:	0b040413          	addi	s0,s0,176
   10c34:	fc941ce3          	bne	s0,s1,10c0c <_fwalk_sglue+0x64>
   10c38:	0009b983          	ld	s3,0(s3)
   10c3c:	fa099ae3          	bnez	s3,10bf0 <_fwalk_sglue+0x48>
   10c40:	04813083          	ld	ra,72(sp)
   10c44:	04013403          	ld	s0,64(sp)
   10c48:	03813483          	ld	s1,56(sp)
   10c4c:	02813983          	ld	s3,40(sp)
   10c50:	02013a03          	ld	s4,32(sp)
   10c54:	01813a83          	ld	s5,24(sp)
   10c58:	01013b03          	ld	s6,16(sp)
   10c5c:	00813b83          	ld	s7,8(sp)
   10c60:	00013c03          	ld	s8,0(sp)
   10c64:	00090513          	mv	a0,s2
   10c68:	03013903          	ld	s2,48(sp)
   10c6c:	05010113          	addi	sp,sp,80
   10c70:	00008067          	ret

0000000000010c74 <__sread>:
   10c74:	ff010113          	addi	sp,sp,-16
   10c78:	00813023          	sd	s0,0(sp)
   10c7c:	00058413          	mv	s0,a1
   10c80:	01259583          	lh	a1,18(a1)
   10c84:	00113423          	sd	ra,8(sp)
   10c88:	2ec000ef          	jal	10f74 <_read_r>
   10c8c:	02054063          	bltz	a0,10cac <__sread+0x38>
   10c90:	09043783          	ld	a5,144(s0)
   10c94:	00813083          	ld	ra,8(sp)
   10c98:	00a787b3          	add	a5,a5,a0
   10c9c:	08f43823          	sd	a5,144(s0)
   10ca0:	00013403          	ld	s0,0(sp)
   10ca4:	01010113          	addi	sp,sp,16
   10ca8:	00008067          	ret
   10cac:	01045783          	lhu	a5,16(s0)
   10cb0:	fffff737          	lui	a4,0xfffff
   10cb4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10cb8:	00e7f7b3          	and	a5,a5,a4
   10cbc:	00813083          	ld	ra,8(sp)
   10cc0:	00f41823          	sh	a5,16(s0)
   10cc4:	00013403          	ld	s0,0(sp)
   10cc8:	01010113          	addi	sp,sp,16
   10ccc:	00008067          	ret

0000000000010cd0 <__seofread>:
   10cd0:	00000513          	li	a0,0
   10cd4:	00008067          	ret

0000000000010cd8 <__swrite>:
   10cd8:	01059783          	lh	a5,16(a1)
   10cdc:	fd010113          	addi	sp,sp,-48
   10ce0:	00068313          	mv	t1,a3
   10ce4:	02113423          	sd	ra,40(sp)
   10ce8:	1007f693          	andi	a3,a5,256
   10cec:	00058713          	mv	a4,a1
   10cf0:	00060893          	mv	a7,a2
   10cf4:	00050813          	mv	a6,a0
   10cf8:	02069863          	bnez	a3,10d28 <__swrite+0x50>
   10cfc:	fffff6b7          	lui	a3,0xfffff
   10d00:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10d04:	02813083          	ld	ra,40(sp)
   10d08:	00d7f7b3          	and	a5,a5,a3
   10d0c:	01271583          	lh	a1,18(a4)
   10d10:	00f71823          	sh	a5,16(a4)
   10d14:	00030693          	mv	a3,t1
   10d18:	00088613          	mv	a2,a7
   10d1c:	00080513          	mv	a0,a6
   10d20:	03010113          	addi	sp,sp,48
   10d24:	2b80006f          	j	10fdc <_write_r>
   10d28:	01259583          	lh	a1,18(a1)
   10d2c:	00c13823          	sd	a2,16(sp)
   10d30:	00200693          	li	a3,2
   10d34:	00000613          	li	a2,0
   10d38:	00613c23          	sd	t1,24(sp)
   10d3c:	00e13023          	sd	a4,0(sp)
   10d40:	00a13423          	sd	a0,8(sp)
   10d44:	1c8000ef          	jal	10f0c <_lseek_r>
   10d48:	00013703          	ld	a4,0(sp)
   10d4c:	01813303          	ld	t1,24(sp)
   10d50:	01013883          	ld	a7,16(sp)
   10d54:	01071783          	lh	a5,16(a4)
   10d58:	00813803          	ld	a6,8(sp)
   10d5c:	fa1ff06f          	j	10cfc <__swrite+0x24>

0000000000010d60 <__sseek>:
   10d60:	ff010113          	addi	sp,sp,-16
   10d64:	00813023          	sd	s0,0(sp)
   10d68:	00058413          	mv	s0,a1
   10d6c:	01259583          	lh	a1,18(a1)
   10d70:	00113423          	sd	ra,8(sp)
   10d74:	198000ef          	jal	10f0c <_lseek_r>
   10d78:	fff00713          	li	a4,-1
   10d7c:	01041783          	lh	a5,16(s0)
   10d80:	02e50263          	beq	a0,a4,10da4 <__sseek+0x44>
   10d84:	00001737          	lui	a4,0x1
   10d88:	00e7e7b3          	or	a5,a5,a4
   10d8c:	00813083          	ld	ra,8(sp)
   10d90:	08a43823          	sd	a0,144(s0)
   10d94:	00f41823          	sh	a5,16(s0)
   10d98:	00013403          	ld	s0,0(sp)
   10d9c:	01010113          	addi	sp,sp,16
   10da0:	00008067          	ret
   10da4:	80050713          	addi	a4,a0,-2048
   10da8:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10dac:	00e7f7b3          	and	a5,a5,a4
   10db0:	00813083          	ld	ra,8(sp)
   10db4:	00f41823          	sh	a5,16(s0)
   10db8:	00013403          	ld	s0,0(sp)
   10dbc:	01010113          	addi	sp,sp,16
   10dc0:	00008067          	ret

0000000000010dc4 <__sclose>:
   10dc4:	01259583          	lh	a1,18(a1)
   10dc8:	0040006f          	j	10dcc <_close_r>

0000000000010dcc <_close_r>:
   10dcc:	fe010113          	addi	sp,sp,-32
   10dd0:	00813823          	sd	s0,16(sp)
   10dd4:	00913423          	sd	s1,8(sp)
   10dd8:	00050493          	mv	s1,a0
   10ddc:	00058513          	mv	a0,a1
   10de0:	00113c23          	sd	ra,24(sp)
   10de4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10de8:	7e4010ef          	jal	125cc <_close>
   10dec:	fff00793          	li	a5,-1
   10df0:	00f50c63          	beq	a0,a5,10e08 <_close_r+0x3c>
   10df4:	01813083          	ld	ra,24(sp)
   10df8:	01013403          	ld	s0,16(sp)
   10dfc:	00813483          	ld	s1,8(sp)
   10e00:	02010113          	addi	sp,sp,32
   10e04:	00008067          	ret
   10e08:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10e0c:	fe0784e3          	beqz	a5,10df4 <_close_r+0x28>
   10e10:	01813083          	ld	ra,24(sp)
   10e14:	01013403          	ld	s0,16(sp)
   10e18:	00f4a023          	sw	a5,0(s1)
   10e1c:	00813483          	ld	s1,8(sp)
   10e20:	02010113          	addi	sp,sp,32
   10e24:	00008067          	ret

0000000000010e28 <_reclaim_reent>:
   10e28:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10e2c:	0ca78e63          	beq	a5,a0,10f08 <_reclaim_reent+0xe0>
   10e30:	06853583          	ld	a1,104(a0)
   10e34:	fd010113          	addi	sp,sp,-48
   10e38:	00913c23          	sd	s1,24(sp)
   10e3c:	02113423          	sd	ra,40(sp)
   10e40:	02813023          	sd	s0,32(sp)
   10e44:	00050493          	mv	s1,a0
   10e48:	04058863          	beqz	a1,10e98 <_reclaim_reent+0x70>
   10e4c:	01213823          	sd	s2,16(sp)
   10e50:	01313423          	sd	s3,8(sp)
   10e54:	00000913          	li	s2,0
   10e58:	20000993          	li	s3,512
   10e5c:	012587b3          	add	a5,a1,s2
   10e60:	0007b403          	ld	s0,0(a5)
   10e64:	00040e63          	beqz	s0,10e80 <_reclaim_reent+0x58>
   10e68:	00040593          	mv	a1,s0
   10e6c:	00043403          	ld	s0,0(s0)
   10e70:	00048513          	mv	a0,s1
   10e74:	5b0000ef          	jal	11424 <_free_r>
   10e78:	fe0418e3          	bnez	s0,10e68 <_reclaim_reent+0x40>
   10e7c:	0684b583          	ld	a1,104(s1)
   10e80:	00890913          	addi	s2,s2,8
   10e84:	fd391ce3          	bne	s2,s3,10e5c <_reclaim_reent+0x34>
   10e88:	00048513          	mv	a0,s1
   10e8c:	598000ef          	jal	11424 <_free_r>
   10e90:	01013903          	ld	s2,16(sp)
   10e94:	00813983          	ld	s3,8(sp)
   10e98:	0504b583          	ld	a1,80(s1)
   10e9c:	00058663          	beqz	a1,10ea8 <_reclaim_reent+0x80>
   10ea0:	00048513          	mv	a0,s1
   10ea4:	580000ef          	jal	11424 <_free_r>
   10ea8:	0604b403          	ld	s0,96(s1)
   10eac:	00040c63          	beqz	s0,10ec4 <_reclaim_reent+0x9c>
   10eb0:	00040593          	mv	a1,s0
   10eb4:	00043403          	ld	s0,0(s0)
   10eb8:	00048513          	mv	a0,s1
   10ebc:	568000ef          	jal	11424 <_free_r>
   10ec0:	fe0418e3          	bnez	s0,10eb0 <_reclaim_reent+0x88>
   10ec4:	0784b583          	ld	a1,120(s1)
   10ec8:	00058663          	beqz	a1,10ed4 <_reclaim_reent+0xac>
   10ecc:	00048513          	mv	a0,s1
   10ed0:	554000ef          	jal	11424 <_free_r>
   10ed4:	0484b783          	ld	a5,72(s1)
   10ed8:	00078e63          	beqz	a5,10ef4 <_reclaim_reent+0xcc>
   10edc:	02013403          	ld	s0,32(sp)
   10ee0:	02813083          	ld	ra,40(sp)
   10ee4:	00048513          	mv	a0,s1
   10ee8:	01813483          	ld	s1,24(sp)
   10eec:	03010113          	addi	sp,sp,48
   10ef0:	00078067          	jr	a5
   10ef4:	02813083          	ld	ra,40(sp)
   10ef8:	02013403          	ld	s0,32(sp)
   10efc:	01813483          	ld	s1,24(sp)
   10f00:	03010113          	addi	sp,sp,48
   10f04:	00008067          	ret
   10f08:	00008067          	ret

0000000000010f0c <_lseek_r>:
   10f0c:	fe010113          	addi	sp,sp,-32
   10f10:	00058793          	mv	a5,a1
   10f14:	00813823          	sd	s0,16(sp)
   10f18:	00913423          	sd	s1,8(sp)
   10f1c:	00060593          	mv	a1,a2
   10f20:	00050493          	mv	s1,a0
   10f24:	00068613          	mv	a2,a3
   10f28:	00078513          	mv	a0,a5
   10f2c:	00113c23          	sd	ra,24(sp)
   10f30:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10f34:	708010ef          	jal	1263c <_lseek>
   10f38:	fff00793          	li	a5,-1
   10f3c:	00f50c63          	beq	a0,a5,10f54 <_lseek_r+0x48>
   10f40:	01813083          	ld	ra,24(sp)
   10f44:	01013403          	ld	s0,16(sp)
   10f48:	00813483          	ld	s1,8(sp)
   10f4c:	02010113          	addi	sp,sp,32
   10f50:	00008067          	ret
   10f54:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10f58:	fe0784e3          	beqz	a5,10f40 <_lseek_r+0x34>
   10f5c:	01813083          	ld	ra,24(sp)
   10f60:	01013403          	ld	s0,16(sp)
   10f64:	00f4a023          	sw	a5,0(s1)
   10f68:	00813483          	ld	s1,8(sp)
   10f6c:	02010113          	addi	sp,sp,32
   10f70:	00008067          	ret

0000000000010f74 <_read_r>:
   10f74:	fe010113          	addi	sp,sp,-32
   10f78:	00058793          	mv	a5,a1
   10f7c:	00813823          	sd	s0,16(sp)
   10f80:	00913423          	sd	s1,8(sp)
   10f84:	00060593          	mv	a1,a2
   10f88:	00050493          	mv	s1,a0
   10f8c:	00068613          	mv	a2,a3
   10f90:	00078513          	mv	a0,a5
   10f94:	00113c23          	sd	ra,24(sp)
   10f98:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10f9c:	6e0010ef          	jal	1267c <_read>
   10fa0:	fff00793          	li	a5,-1
   10fa4:	00f50c63          	beq	a0,a5,10fbc <_read_r+0x48>
   10fa8:	01813083          	ld	ra,24(sp)
   10fac:	01013403          	ld	s0,16(sp)
   10fb0:	00813483          	ld	s1,8(sp)
   10fb4:	02010113          	addi	sp,sp,32
   10fb8:	00008067          	ret
   10fbc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10fc0:	fe0784e3          	beqz	a5,10fa8 <_read_r+0x34>
   10fc4:	01813083          	ld	ra,24(sp)
   10fc8:	01013403          	ld	s0,16(sp)
   10fcc:	00f4a023          	sw	a5,0(s1)
   10fd0:	00813483          	ld	s1,8(sp)
   10fd4:	02010113          	addi	sp,sp,32
   10fd8:	00008067          	ret

0000000000010fdc <_write_r>:
   10fdc:	fe010113          	addi	sp,sp,-32
   10fe0:	00058793          	mv	a5,a1
   10fe4:	00813823          	sd	s0,16(sp)
   10fe8:	00913423          	sd	s1,8(sp)
   10fec:	00060593          	mv	a1,a2
   10ff0:	00050493          	mv	s1,a0
   10ff4:	00068613          	mv	a2,a3
   10ff8:	00078513          	mv	a0,a5
   10ffc:	00113c23          	sd	ra,24(sp)
   11000:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   11004:	730010ef          	jal	12734 <_write>
   11008:	fff00793          	li	a5,-1
   1100c:	00f50c63          	beq	a0,a5,11024 <_write_r+0x48>
   11010:	01813083          	ld	ra,24(sp)
   11014:	01013403          	ld	s0,16(sp)
   11018:	00813483          	ld	s1,8(sp)
   1101c:	02010113          	addi	sp,sp,32
   11020:	00008067          	ret
   11024:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11028:	fe0784e3          	beqz	a5,11010 <_write_r+0x34>
   1102c:	01813083          	ld	ra,24(sp)
   11030:	01013403          	ld	s0,16(sp)
   11034:	00f4a023          	sw	a5,0(s1)
   11038:	00813483          	ld	s1,8(sp)
   1103c:	02010113          	addi	sp,sp,32
   11040:	00008067          	ret

0000000000011044 <__libc_init_array>:
   11044:	fe010113          	addi	sp,sp,-32
   11048:	00813823          	sd	s0,16(sp)
   1104c:	01213023          	sd	s2,0(sp)
   11050:	00013437          	lui	s0,0x13
   11054:	00013937          	lui	s2,0x13
   11058:	00113c23          	sd	ra,24(sp)
   1105c:	00913423          	sd	s1,8(sp)
   11060:	00090913          	mv	s2,s2
   11064:	00040413          	mv	s0,s0
   11068:	02890263          	beq	s2,s0,1108c <__libc_init_array+0x48>
   1106c:	40890933          	sub	s2,s2,s0
   11070:	40395913          	srai	s2,s2,0x3
   11074:	00000493          	li	s1,0
   11078:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   1107c:	00148493          	addi	s1,s1,1
   11080:	00840413          	addi	s0,s0,8
   11084:	000780e7          	jalr	a5
   11088:	ff24e8e3          	bltu	s1,s2,11078 <__libc_init_array+0x34>
   1108c:	00013937          	lui	s2,0x13
   11090:	00013437          	lui	s0,0x13
   11094:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11098:	00040413          	mv	s0,s0
   1109c:	02890263          	beq	s2,s0,110c0 <__libc_init_array+0x7c>
   110a0:	40890933          	sub	s2,s2,s0
   110a4:	40395913          	srai	s2,s2,0x3
   110a8:	00000493          	li	s1,0
   110ac:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   110b0:	00148493          	addi	s1,s1,1
   110b4:	00840413          	addi	s0,s0,8
   110b8:	000780e7          	jalr	a5
   110bc:	ff24e8e3          	bltu	s1,s2,110ac <__libc_init_array+0x68>
   110c0:	01813083          	ld	ra,24(sp)
   110c4:	01013403          	ld	s0,16(sp)
   110c8:	00813483          	ld	s1,8(sp)
   110cc:	00013903          	ld	s2,0(sp)
   110d0:	02010113          	addi	sp,sp,32
   110d4:	00008067          	ret

00000000000110d8 <memset>:
   110d8:	00f00313          	li	t1,15
   110dc:	00050713          	mv	a4,a0
   110e0:	02c37a63          	bgeu	t1,a2,11114 <memset+0x3c>
   110e4:	00f77793          	andi	a5,a4,15
   110e8:	0a079063          	bnez	a5,11188 <memset+0xb0>
   110ec:	06059e63          	bnez	a1,11168 <memset+0x90>
   110f0:	ff067693          	andi	a3,a2,-16
   110f4:	00f67613          	andi	a2,a2,15
   110f8:	00e686b3          	add	a3,a3,a4
   110fc:	00b73023          	sd	a1,0(a4)
   11100:	00b73423          	sd	a1,8(a4)
   11104:	01070713          	addi	a4,a4,16
   11108:	fed76ae3          	bltu	a4,a3,110fc <memset+0x24>
   1110c:	00061463          	bnez	a2,11114 <memset+0x3c>
   11110:	00008067          	ret
   11114:	40c306b3          	sub	a3,t1,a2
   11118:	00269693          	slli	a3,a3,0x2
   1111c:	00000297          	auipc	t0,0x0
   11120:	005686b3          	add	a3,a3,t0
   11124:	00c68067          	jr	12(a3)
   11128:	00b70723          	sb	a1,14(a4)
   1112c:	00b706a3          	sb	a1,13(a4)
   11130:	00b70623          	sb	a1,12(a4)
   11134:	00b705a3          	sb	a1,11(a4)
   11138:	00b70523          	sb	a1,10(a4)
   1113c:	00b704a3          	sb	a1,9(a4)
   11140:	00b70423          	sb	a1,8(a4)
   11144:	00b703a3          	sb	a1,7(a4)
   11148:	00b70323          	sb	a1,6(a4)
   1114c:	00b702a3          	sb	a1,5(a4)
   11150:	00b70223          	sb	a1,4(a4)
   11154:	00b701a3          	sb	a1,3(a4)
   11158:	00b70123          	sb	a1,2(a4)
   1115c:	00b700a3          	sb	a1,1(a4)
   11160:	00b70023          	sb	a1,0(a4)
   11164:	00008067          	ret
   11168:	0ff5f593          	zext.b	a1,a1
   1116c:	00859693          	slli	a3,a1,0x8
   11170:	00d5e5b3          	or	a1,a1,a3
   11174:	01059693          	slli	a3,a1,0x10
   11178:	00d5e5b3          	or	a1,a1,a3
   1117c:	02059693          	slli	a3,a1,0x20
   11180:	00d5e5b3          	or	a1,a1,a3
   11184:	f6dff06f          	j	110f0 <memset+0x18>
   11188:	00279693          	slli	a3,a5,0x2
   1118c:	00000297          	auipc	t0,0x0
   11190:	005686b3          	add	a3,a3,t0
   11194:	00008293          	mv	t0,ra
   11198:	f98680e7          	jalr	-104(a3)
   1119c:	00028093          	mv	ra,t0
   111a0:	ff078793          	addi	a5,a5,-16
   111a4:	40f70733          	sub	a4,a4,a5
   111a8:	00f60633          	add	a2,a2,a5
   111ac:	f6c374e3          	bgeu	t1,a2,11114 <memset+0x3c>
   111b0:	f3dff06f          	j	110ec <memset+0x14>

00000000000111b4 <__call_exitprocs>:
   111b4:	fb010113          	addi	sp,sp,-80
   111b8:	03413023          	sd	s4,32(sp)
   111bc:	03213823          	sd	s2,48(sp)
   111c0:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   111c4:	04113423          	sd	ra,72(sp)
   111c8:	06090e63          	beqz	s2,11244 <__call_exitprocs+0x90>
   111cc:	03313423          	sd	s3,40(sp)
   111d0:	01513c23          	sd	s5,24(sp)
   111d4:	01613823          	sd	s6,16(sp)
   111d8:	01713423          	sd	s7,8(sp)
   111dc:	04813023          	sd	s0,64(sp)
   111e0:	02913c23          	sd	s1,56(sp)
   111e4:	01813023          	sd	s8,0(sp)
   111e8:	00050b13          	mv	s6,a0
   111ec:	00058b93          	mv	s7,a1
   111f0:	fff00993          	li	s3,-1
   111f4:	00100a93          	li	s5,1
   111f8:	00892403          	lw	s0,8(s2)
   111fc:	fff4041b          	addiw	s0,s0,-1
   11200:	02044463          	bltz	s0,11228 <__call_exitprocs+0x74>
   11204:	01090493          	addi	s1,s2,16
   11208:	00341793          	slli	a5,s0,0x3
   1120c:	00f484b3          	add	s1,s1,a5
   11210:	040b8463          	beqz	s7,11258 <__call_exitprocs+0xa4>
   11214:	2004b783          	ld	a5,512(s1)
   11218:	05778063          	beq	a5,s7,11258 <__call_exitprocs+0xa4>
   1121c:	fff4041b          	addiw	s0,s0,-1
   11220:	ff848493          	addi	s1,s1,-8
   11224:	ff3418e3          	bne	s0,s3,11214 <__call_exitprocs+0x60>
   11228:	04013403          	ld	s0,64(sp)
   1122c:	03813483          	ld	s1,56(sp)
   11230:	02813983          	ld	s3,40(sp)
   11234:	01813a83          	ld	s5,24(sp)
   11238:	01013b03          	ld	s6,16(sp)
   1123c:	00813b83          	ld	s7,8(sp)
   11240:	00013c03          	ld	s8,0(sp)
   11244:	04813083          	ld	ra,72(sp)
   11248:	03013903          	ld	s2,48(sp)
   1124c:	02013a03          	ld	s4,32(sp)
   11250:	05010113          	addi	sp,sp,80
   11254:	00008067          	ret
   11258:	00892783          	lw	a5,8(s2)
   1125c:	0004b683          	ld	a3,0(s1)
   11260:	fff7879b          	addiw	a5,a5,-1
   11264:	06878a63          	beq	a5,s0,112d8 <__call_exitprocs+0x124>
   11268:	0004b023          	sd	zero,0(s1)
   1126c:	02068663          	beqz	a3,11298 <__call_exitprocs+0xe4>
   11270:	31092783          	lw	a5,784(s2)
   11274:	008a973b          	sllw	a4,s5,s0
   11278:	00892c03          	lw	s8,8(s2)
   1127c:	00e7f7b3          	and	a5,a5,a4
   11280:	02079463          	bnez	a5,112a8 <__call_exitprocs+0xf4>
   11284:	000680e7          	jalr	a3
   11288:	00892703          	lw	a4,8(s2)
   1128c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11290:	03871e63          	bne	a4,s8,112cc <__call_exitprocs+0x118>
   11294:	03279c63          	bne	a5,s2,112cc <__call_exitprocs+0x118>
   11298:	fff4041b          	addiw	s0,s0,-1
   1129c:	ff848493          	addi	s1,s1,-8
   112a0:	f73418e3          	bne	s0,s3,11210 <__call_exitprocs+0x5c>
   112a4:	f85ff06f          	j	11228 <__call_exitprocs+0x74>
   112a8:	31492783          	lw	a5,788(s2)
   112ac:	1004b583          	ld	a1,256(s1)
   112b0:	00f77733          	and	a4,a4,a5
   112b4:	02071663          	bnez	a4,112e0 <__call_exitprocs+0x12c>
   112b8:	000b0513          	mv	a0,s6
   112bc:	000680e7          	jalr	a3
   112c0:	00892703          	lw	a4,8(s2)
   112c4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   112c8:	fd8706e3          	beq	a4,s8,11294 <__call_exitprocs+0xe0>
   112cc:	f4078ee3          	beqz	a5,11228 <__call_exitprocs+0x74>
   112d0:	00078913          	mv	s2,a5
   112d4:	f25ff06f          	j	111f8 <__call_exitprocs+0x44>
   112d8:	00892423          	sw	s0,8(s2)
   112dc:	f91ff06f          	j	1126c <__call_exitprocs+0xb8>
   112e0:	00058513          	mv	a0,a1
   112e4:	000680e7          	jalr	a3
   112e8:	fa1ff06f          	j	11288 <__call_exitprocs+0xd4>

00000000000112ec <atexit>:
   112ec:	00050593          	mv	a1,a0
   112f0:	00000693          	li	a3,0
   112f4:	00000613          	li	a2,0
   112f8:	00000513          	li	a0,0
   112fc:	2340106f          	j	12530 <__register_exitproc>

0000000000011300 <_malloc_trim_r>:
   11300:	fd010113          	addi	sp,sp,-48
   11304:	01213823          	sd	s2,16(sp)
   11308:	00013937          	lui	s2,0x13
   1130c:	02813023          	sd	s0,32(sp)
   11310:	00913c23          	sd	s1,24(sp)
   11314:	01313423          	sd	s3,8(sp)
   11318:	00058413          	mv	s0,a1
   1131c:	02113423          	sd	ra,40(sp)
   11320:	00050993          	mv	s3,a0
   11324:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11328:	4e5000ef          	jal	1200c <__malloc_lock>
   1132c:	01093783          	ld	a5,16(s2)
   11330:	00001737          	lui	a4,0x1
   11334:	0087b483          	ld	s1,8(a5)
   11338:	ffc4f493          	andi	s1,s1,-4
   1133c:	7ff48793          	addi	a5,s1,2047
   11340:	7e078793          	addi	a5,a5,2016
   11344:	40878433          	sub	s0,a5,s0
   11348:	00c45413          	srli	s0,s0,0xc
   1134c:	fff40413          	addi	s0,s0,-1
   11350:	00c41413          	slli	s0,s0,0xc
   11354:	00e44e63          	blt	s0,a4,11370 <_malloc_trim_r+0x70>
   11358:	00000593          	li	a1,0
   1135c:	00098513          	mv	a0,s3
   11360:	118010ef          	jal	12478 <_sbrk_r>
   11364:	01093783          	ld	a5,16(s2)
   11368:	009787b3          	add	a5,a5,s1
   1136c:	02f50663          	beq	a0,a5,11398 <_malloc_trim_r+0x98>
   11370:	00098513          	mv	a0,s3
   11374:	49d000ef          	jal	12010 <__malloc_unlock>
   11378:	02813083          	ld	ra,40(sp)
   1137c:	02013403          	ld	s0,32(sp)
   11380:	01813483          	ld	s1,24(sp)
   11384:	01013903          	ld	s2,16(sp)
   11388:	00813983          	ld	s3,8(sp)
   1138c:	00000513          	li	a0,0
   11390:	03010113          	addi	sp,sp,48
   11394:	00008067          	ret
   11398:	408005b3          	neg	a1,s0
   1139c:	00098513          	mv	a0,s3
   113a0:	0d8010ef          	jal	12478 <_sbrk_r>
   113a4:	fff00793          	li	a5,-1
   113a8:	04f50463          	beq	a0,a5,113f0 <_malloc_trim_r+0xf0>
   113ac:	01093683          	ld	a3,16(s2)
   113b0:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   113b4:	408484b3          	sub	s1,s1,s0
   113b8:	0014e493          	ori	s1,s1,1
   113bc:	00098513          	mv	a0,s3
   113c0:	408787bb          	subw	a5,a5,s0
   113c4:	0096b423          	sd	s1,8(a3)
   113c8:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   113cc:	445000ef          	jal	12010 <__malloc_unlock>
   113d0:	02813083          	ld	ra,40(sp)
   113d4:	02013403          	ld	s0,32(sp)
   113d8:	01813483          	ld	s1,24(sp)
   113dc:	01013903          	ld	s2,16(sp)
   113e0:	00813983          	ld	s3,8(sp)
   113e4:	00100513          	li	a0,1
   113e8:	03010113          	addi	sp,sp,48
   113ec:	00008067          	ret
   113f0:	00000593          	li	a1,0
   113f4:	00098513          	mv	a0,s3
   113f8:	080010ef          	jal	12478 <_sbrk_r>
   113fc:	01093703          	ld	a4,16(s2)
   11400:	01f00693          	li	a3,31
   11404:	40e507b3          	sub	a5,a0,a4
   11408:	f6f6d4e3          	bge	a3,a5,11370 <_malloc_trim_r+0x70>
   1140c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11410:	0017e793          	ori	a5,a5,1
   11414:	40c50533          	sub	a0,a0,a2
   11418:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   1141c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11420:	f51ff06f          	j	11370 <_malloc_trim_r+0x70>

0000000000011424 <_free_r>:
   11424:	12058863          	beqz	a1,11554 <_free_r+0x130>
   11428:	fe010113          	addi	sp,sp,-32
   1142c:	00813823          	sd	s0,16(sp)
   11430:	00b13423          	sd	a1,8(sp)
   11434:	00050413          	mv	s0,a0
   11438:	00113c23          	sd	ra,24(sp)
   1143c:	3d1000ef          	jal	1200c <__malloc_lock>
   11440:	00813583          	ld	a1,8(sp)
   11444:	00013837          	lui	a6,0x13
   11448:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1144c:	ff85b503          	ld	a0,-8(a1)
   11450:	ff058713          	addi	a4,a1,-16
   11454:	01083883          	ld	a7,16(a6)
   11458:	ffe57793          	andi	a5,a0,-2
   1145c:	00f70633          	add	a2,a4,a5
   11460:	00863683          	ld	a3,8(a2)
   11464:	00157313          	andi	t1,a0,1
   11468:	ffc6f693          	andi	a3,a3,-4
   1146c:	18c88e63          	beq	a7,a2,11608 <_free_r+0x1e4>
   11470:	00d63423          	sd	a3,8(a2)
   11474:	00d608b3          	add	a7,a2,a3
   11478:	0088b883          	ld	a7,8(a7)
   1147c:	0018f893          	andi	a7,a7,1
   11480:	08031e63          	bnez	t1,1151c <_free_r+0xf8>
   11484:	ff05b303          	ld	t1,-16(a1)
   11488:	000135b7          	lui	a1,0x13
   1148c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11490:	40670733          	sub	a4,a4,t1
   11494:	01073503          	ld	a0,16(a4)
   11498:	006787b3          	add	a5,a5,t1
   1149c:	14b50063          	beq	a0,a1,115dc <_free_r+0x1b8>
   114a0:	01873303          	ld	t1,24(a4)
   114a4:	00653c23          	sd	t1,24(a0)
   114a8:	00a33823          	sd	a0,16(t1) # 10220 <quicksort+0x4>
   114ac:	1a088263          	beqz	a7,11650 <_free_r+0x22c>
   114b0:	0017e693          	ori	a3,a5,1
   114b4:	00d73423          	sd	a3,8(a4)
   114b8:	00f63023          	sd	a5,0(a2)
   114bc:	1ff00693          	li	a3,511
   114c0:	0af6e663          	bltu	a3,a5,1156c <_free_r+0x148>
   114c4:	0037d793          	srli	a5,a5,0x3
   114c8:	00179693          	slli	a3,a5,0x1
   114cc:	0026869b          	addiw	a3,a3,2
   114d0:	00369693          	slli	a3,a3,0x3
   114d4:	00883503          	ld	a0,8(a6)
   114d8:	00d806b3          	add	a3,a6,a3
   114dc:	0006b583          	ld	a1,0(a3)
   114e0:	4027d61b          	sraiw	a2,a5,0x2
   114e4:	00100793          	li	a5,1
   114e8:	00c797b3          	sll	a5,a5,a2
   114ec:	00a7e7b3          	or	a5,a5,a0
   114f0:	ff068613          	addi	a2,a3,-16
   114f4:	00b73823          	sd	a1,16(a4)
   114f8:	00c73c23          	sd	a2,24(a4)
   114fc:	00f83423          	sd	a5,8(a6)
   11500:	00e6b023          	sd	a4,0(a3)
   11504:	00e5bc23          	sd	a4,24(a1)
   11508:	00040513          	mv	a0,s0
   1150c:	01013403          	ld	s0,16(sp)
   11510:	01813083          	ld	ra,24(sp)
   11514:	02010113          	addi	sp,sp,32
   11518:	2f90006f          	j	12010 <__malloc_unlock>
   1151c:	02089e63          	bnez	a7,11558 <_free_r+0x134>
   11520:	000135b7          	lui	a1,0x13
   11524:	00d787b3          	add	a5,a5,a3
   11528:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1152c:	01063683          	ld	a3,16(a2)
   11530:	0017e893          	ori	a7,a5,1
   11534:	00f70533          	add	a0,a4,a5
   11538:	16b68663          	beq	a3,a1,116a4 <_free_r+0x280>
   1153c:	01863603          	ld	a2,24(a2)
   11540:	00c6bc23          	sd	a2,24(a3)
   11544:	00d63823          	sd	a3,16(a2)
   11548:	01173423          	sd	a7,8(a4)
   1154c:	00f53023          	sd	a5,0(a0)
   11550:	f6dff06f          	j	114bc <_free_r+0x98>
   11554:	00008067          	ret
   11558:	00156513          	ori	a0,a0,1
   1155c:	fea5bc23          	sd	a0,-8(a1)
   11560:	00f63023          	sd	a5,0(a2)
   11564:	1ff00693          	li	a3,511
   11568:	f4f6fee3          	bgeu	a3,a5,114c4 <_free_r+0xa0>
   1156c:	0097d693          	srli	a3,a5,0x9
   11570:	00400613          	li	a2,4
   11574:	0ed66263          	bltu	a2,a3,11658 <_free_r+0x234>
   11578:	0067d693          	srli	a3,a5,0x6
   1157c:	00169593          	slli	a1,a3,0x1
   11580:	0725859b          	addiw	a1,a1,114
   11584:	00359593          	slli	a1,a1,0x3
   11588:	0386861b          	addiw	a2,a3,56
   1158c:	00b805b3          	add	a1,a6,a1
   11590:	0005b683          	ld	a3,0(a1)
   11594:	ff058593          	addi	a1,a1,-16
   11598:	00d59863          	bne	a1,a3,115a8 <_free_r+0x184>
   1159c:	1240006f          	j	116c0 <_free_r+0x29c>
   115a0:	0106b683          	ld	a3,16(a3)
   115a4:	00d58863          	beq	a1,a3,115b4 <_free_r+0x190>
   115a8:	0086b603          	ld	a2,8(a3)
   115ac:	ffc67613          	andi	a2,a2,-4
   115b0:	fec7e8e3          	bltu	a5,a2,115a0 <_free_r+0x17c>
   115b4:	0186b583          	ld	a1,24(a3)
   115b8:	00b73c23          	sd	a1,24(a4)
   115bc:	00d73823          	sd	a3,16(a4)
   115c0:	00040513          	mv	a0,s0
   115c4:	01013403          	ld	s0,16(sp)
   115c8:	01813083          	ld	ra,24(sp)
   115cc:	00e5b823          	sd	a4,16(a1)
   115d0:	00e6bc23          	sd	a4,24(a3)
   115d4:	02010113          	addi	sp,sp,32
   115d8:	2390006f          	j	12010 <__malloc_unlock>
   115dc:	0a089263          	bnez	a7,11680 <_free_r+0x25c>
   115e0:	01863583          	ld	a1,24(a2)
   115e4:	01063603          	ld	a2,16(a2)
   115e8:	00f686b3          	add	a3,a3,a5
   115ec:	0016e793          	ori	a5,a3,1
   115f0:	00b63c23          	sd	a1,24(a2)
   115f4:	00c5b823          	sd	a2,16(a1)
   115f8:	00f73423          	sd	a5,8(a4)
   115fc:	00d70733          	add	a4,a4,a3
   11600:	00d73023          	sd	a3,0(a4)
   11604:	f05ff06f          	j	11508 <_free_r+0xe4>
   11608:	00d786b3          	add	a3,a5,a3
   1160c:	02031063          	bnez	t1,1162c <_free_r+0x208>
   11610:	ff05b783          	ld	a5,-16(a1)
   11614:	40f70733          	sub	a4,a4,a5
   11618:	01073603          	ld	a2,16(a4)
   1161c:	00f686b3          	add	a3,a3,a5
   11620:	01873783          	ld	a5,24(a4)
   11624:	00f63c23          	sd	a5,24(a2)
   11628:	00c7b823          	sd	a2,16(a5)
   1162c:	0016e613          	ori	a2,a3,1
   11630:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11634:	00c73423          	sd	a2,8(a4)
   11638:	00e83823          	sd	a4,16(a6)
   1163c:	ecf6e6e3          	bltu	a3,a5,11508 <_free_r+0xe4>
   11640:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11644:	00040513          	mv	a0,s0
   11648:	cb9ff0ef          	jal	11300 <_malloc_trim_r>
   1164c:	ebdff06f          	j	11508 <_free_r+0xe4>
   11650:	00d787b3          	add	a5,a5,a3
   11654:	ed9ff06f          	j	1152c <_free_r+0x108>
   11658:	01400613          	li	a2,20
   1165c:	02d67a63          	bgeu	a2,a3,11690 <_free_r+0x26c>
   11660:	05400613          	li	a2,84
   11664:	06d66c63          	bltu	a2,a3,116dc <_free_r+0x2b8>
   11668:	00c7d693          	srli	a3,a5,0xc
   1166c:	00169593          	slli	a1,a3,0x1
   11670:	0de5859b          	addiw	a1,a1,222
   11674:	00359593          	slli	a1,a1,0x3
   11678:	06e6861b          	addiw	a2,a3,110
   1167c:	f11ff06f          	j	1158c <_free_r+0x168>
   11680:	0017e693          	ori	a3,a5,1
   11684:	00d73423          	sd	a3,8(a4)
   11688:	00f63023          	sd	a5,0(a2)
   1168c:	e7dff06f          	j	11508 <_free_r+0xe4>
   11690:	00169593          	slli	a1,a3,0x1
   11694:	0b85859b          	addiw	a1,a1,184
   11698:	00359593          	slli	a1,a1,0x3
   1169c:	05b6861b          	addiw	a2,a3,91
   116a0:	eedff06f          	j	1158c <_free_r+0x168>
   116a4:	02e83423          	sd	a4,40(a6)
   116a8:	02e83023          	sd	a4,32(a6)
   116ac:	00b73c23          	sd	a1,24(a4)
   116b0:	00b73823          	sd	a1,16(a4)
   116b4:	01173423          	sd	a7,8(a4)
   116b8:	00f53023          	sd	a5,0(a0)
   116bc:	e4dff06f          	j	11508 <_free_r+0xe4>
   116c0:	00883503          	ld	a0,8(a6)
   116c4:	4026561b          	sraiw	a2,a2,0x2
   116c8:	00100793          	li	a5,1
   116cc:	00c797b3          	sll	a5,a5,a2
   116d0:	00a7e7b3          	or	a5,a5,a0
   116d4:	00f83423          	sd	a5,8(a6)
   116d8:	ee1ff06f          	j	115b8 <_free_r+0x194>
   116dc:	15400613          	li	a2,340
   116e0:	00d66e63          	bltu	a2,a3,116fc <_free_r+0x2d8>
   116e4:	00f7d693          	srli	a3,a5,0xf
   116e8:	00169593          	slli	a1,a3,0x1
   116ec:	0f05859b          	addiw	a1,a1,240
   116f0:	00359593          	slli	a1,a1,0x3
   116f4:	0776861b          	addiw	a2,a3,119
   116f8:	e95ff06f          	j	1158c <_free_r+0x168>
   116fc:	55400613          	li	a2,1364
   11700:	00d66e63          	bltu	a2,a3,1171c <_free_r+0x2f8>
   11704:	0127d693          	srli	a3,a5,0x12
   11708:	00169593          	slli	a1,a3,0x1
   1170c:	0fa5859b          	addiw	a1,a1,250
   11710:	00359593          	slli	a1,a1,0x3
   11714:	07c6861b          	addiw	a2,a3,124
   11718:	e75ff06f          	j	1158c <_free_r+0x168>
   1171c:	7f000593          	li	a1,2032
   11720:	07e00613          	li	a2,126
   11724:	e69ff06f          	j	1158c <_free_r+0x168>

0000000000011728 <_malloc_r>:
   11728:	fa010113          	addi	sp,sp,-96
   1172c:	04813823          	sd	s0,80(sp)
   11730:	04113c23          	sd	ra,88(sp)
   11734:	01758713          	addi	a4,a1,23
   11738:	02e00793          	li	a5,46
   1173c:	00050413          	mv	s0,a0
   11740:	08e7ee63          	bltu	a5,a4,117dc <_malloc_r+0xb4>
   11744:	02000713          	li	a4,32
   11748:	06b76c63          	bltu	a4,a1,117c0 <_malloc_r+0x98>
   1174c:	0c1000ef          	jal	1200c <__malloc_lock>
   11750:	02000713          	li	a4,32
   11754:	05000693          	li	a3,80
   11758:	00400893          	li	a7,4
   1175c:	00013837          	lui	a6,0x13
   11760:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11764:	00d806b3          	add	a3,a6,a3
   11768:	0086b783          	ld	a5,8(a3)
   1176c:	ff068613          	addi	a2,a3,-16
   11770:	48c78063          	beq	a5,a2,11bf0 <_malloc_r+0x4c8>
   11774:	0087b703          	ld	a4,8(a5)
   11778:	0187b603          	ld	a2,24(a5)
   1177c:	0107b583          	ld	a1,16(a5)
   11780:	ffc77713          	andi	a4,a4,-4
   11784:	00e78733          	add	a4,a5,a4
   11788:	00873683          	ld	a3,8(a4)
   1178c:	00c5bc23          	sd	a2,24(a1)
   11790:	00b63823          	sd	a1,16(a2)
   11794:	0016e693          	ori	a3,a3,1
   11798:	00040513          	mv	a0,s0
   1179c:	00d73423          	sd	a3,8(a4)
   117a0:	00f13423          	sd	a5,8(sp)
   117a4:	06d000ef          	jal	12010 <__malloc_unlock>
   117a8:	00813783          	ld	a5,8(sp)
   117ac:	05813083          	ld	ra,88(sp)
   117b0:	05013403          	ld	s0,80(sp)
   117b4:	01078513          	addi	a0,a5,16
   117b8:	06010113          	addi	sp,sp,96
   117bc:	00008067          	ret
   117c0:	00c00793          	li	a5,12
   117c4:	00f42023          	sw	a5,0(s0)
   117c8:	00000513          	li	a0,0
   117cc:	05813083          	ld	ra,88(sp)
   117d0:	05013403          	ld	s0,80(sp)
   117d4:	06010113          	addi	sp,sp,96
   117d8:	00008067          	ret
   117dc:	00100793          	li	a5,1
   117e0:	ff077713          	andi	a4,a4,-16
   117e4:	01f79793          	slli	a5,a5,0x1f
   117e8:	fcf77ce3          	bgeu	a4,a5,117c0 <_malloc_r+0x98>
   117ec:	fcb76ae3          	bltu	a4,a1,117c0 <_malloc_r+0x98>
   117f0:	00e13423          	sd	a4,8(sp)
   117f4:	019000ef          	jal	1200c <__malloc_lock>
   117f8:	00813703          	ld	a4,8(sp)
   117fc:	1f700793          	li	a5,503
   11800:	4ee7fa63          	bgeu	a5,a4,11cf4 <_malloc_r+0x5cc>
   11804:	00975793          	srli	a5,a4,0x9
   11808:	18078a63          	beqz	a5,1199c <_malloc_r+0x274>
   1180c:	00400693          	li	a3,4
   11810:	44f6ea63          	bltu	a3,a5,11c64 <_malloc_r+0x53c>
   11814:	00675793          	srli	a5,a4,0x6
   11818:	0397889b          	addiw	a7,a5,57
   1181c:	0018951b          	slliw	a0,a7,0x1
   11820:	03878e1b          	addiw	t3,a5,56
   11824:	00351513          	slli	a0,a0,0x3
   11828:	00013837          	lui	a6,0x13
   1182c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11830:	00a80533          	add	a0,a6,a0
   11834:	00853783          	ld	a5,8(a0)
   11838:	ff050513          	addi	a0,a0,-16
   1183c:	02f50863          	beq	a0,a5,1186c <_malloc_r+0x144>
   11840:	01f00313          	li	t1,31
   11844:	0140006f          	j	11858 <_malloc_r+0x130>
   11848:	0187b583          	ld	a1,24(a5)
   1184c:	36065263          	bgez	a2,11bb0 <_malloc_r+0x488>
   11850:	00b50e63          	beq	a0,a1,1186c <_malloc_r+0x144>
   11854:	00058793          	mv	a5,a1
   11858:	0087b683          	ld	a3,8(a5)
   1185c:	ffc6f693          	andi	a3,a3,-4
   11860:	40e68633          	sub	a2,a3,a4
   11864:	fec352e3          	bge	t1,a2,11848 <_malloc_r+0x120>
   11868:	000e0893          	mv	a7,t3
   1186c:	02083783          	ld	a5,32(a6)
   11870:	00013e37          	lui	t3,0x13
   11874:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11878:	2fc78a63          	beq	a5,t3,11b6c <_malloc_r+0x444>
   1187c:	0087b303          	ld	t1,8(a5)
   11880:	01f00613          	li	a2,31
   11884:	ffc37313          	andi	t1,t1,-4
   11888:	40e306b3          	sub	a3,t1,a4
   1188c:	4ad64463          	blt	a2,a3,11d34 <_malloc_r+0x60c>
   11890:	03c83423          	sd	t3,40(a6)
   11894:	03c83023          	sd	t3,32(a6)
   11898:	4606da63          	bgez	a3,11d0c <_malloc_r+0x5e4>
   1189c:	1ff00693          	li	a3,511
   118a0:	00883583          	ld	a1,8(a6)
   118a4:	3466ee63          	bltu	a3,t1,11c00 <_malloc_r+0x4d8>
   118a8:	00335313          	srli	t1,t1,0x3
   118ac:	00131693          	slli	a3,t1,0x1
   118b0:	0026869b          	addiw	a3,a3,2
   118b4:	00369693          	slli	a3,a3,0x3
   118b8:	00d806b3          	add	a3,a6,a3
   118bc:	0006b503          	ld	a0,0(a3)
   118c0:	4023531b          	sraiw	t1,t1,0x2
   118c4:	00100613          	li	a2,1
   118c8:	00661633          	sll	a2,a2,t1
   118cc:	00c5e5b3          	or	a1,a1,a2
   118d0:	ff068613          	addi	a2,a3,-16
   118d4:	00a7b823          	sd	a0,16(a5)
   118d8:	00c7bc23          	sd	a2,24(a5)
   118dc:	00b83423          	sd	a1,8(a6)
   118e0:	00f6b023          	sd	a5,0(a3)
   118e4:	00f53c23          	sd	a5,24(a0)
   118e8:	4028d79b          	sraiw	a5,a7,0x2
   118ec:	00100513          	li	a0,1
   118f0:	00f51533          	sll	a0,a0,a5
   118f4:	0aa5ec63          	bltu	a1,a0,119ac <_malloc_r+0x284>
   118f8:	00b577b3          	and	a5,a0,a1
   118fc:	02079463          	bnez	a5,11924 <_malloc_r+0x1fc>
   11900:	00151513          	slli	a0,a0,0x1
   11904:	ffc8f893          	andi	a7,a7,-4
   11908:	00b577b3          	and	a5,a0,a1
   1190c:	0048889b          	addiw	a7,a7,4
   11910:	00079a63          	bnez	a5,11924 <_malloc_r+0x1fc>
   11914:	00151513          	slli	a0,a0,0x1
   11918:	00b577b3          	and	a5,a0,a1
   1191c:	0048889b          	addiw	a7,a7,4
   11920:	fe078ae3          	beqz	a5,11914 <_malloc_r+0x1ec>
   11924:	01f00e93          	li	t4,31
   11928:	00189f13          	slli	t5,a7,0x1
   1192c:	002f0f1b          	addiw	t5,t5,2
   11930:	003f1f13          	slli	t5,t5,0x3
   11934:	ff0f0f13          	addi	t5,t5,-16
   11938:	01e80f33          	add	t5,a6,t5
   1193c:	000f0313          	mv	t1,t5
   11940:	01833683          	ld	a3,24(t1)
   11944:	00088f93          	mv	t6,a7
   11948:	34d30263          	beq	t1,a3,11c8c <_malloc_r+0x564>
   1194c:	0086b603          	ld	a2,8(a3)
   11950:	00068793          	mv	a5,a3
   11954:	0186b683          	ld	a3,24(a3)
   11958:	ffc67613          	andi	a2,a2,-4
   1195c:	40e605b3          	sub	a1,a2,a4
   11960:	34bec263          	blt	t4,a1,11ca4 <_malloc_r+0x57c>
   11964:	fe05c2e3          	bltz	a1,11948 <_malloc_r+0x220>
   11968:	00c78633          	add	a2,a5,a2
   1196c:	00863703          	ld	a4,8(a2)
   11970:	0107b583          	ld	a1,16(a5)
   11974:	00040513          	mv	a0,s0
   11978:	00176713          	ori	a4,a4,1
   1197c:	00e63423          	sd	a4,8(a2)
   11980:	00d5bc23          	sd	a3,24(a1)
   11984:	00b6b823          	sd	a1,16(a3)
   11988:	00f13423          	sd	a5,8(sp)
   1198c:	684000ef          	jal	12010 <__malloc_unlock>
   11990:	00813783          	ld	a5,8(sp)
   11994:	01078513          	addi	a0,a5,16
   11998:	e35ff06f          	j	117cc <_malloc_r+0xa4>
   1199c:	40000513          	li	a0,1024
   119a0:	04000893          	li	a7,64
   119a4:	03f00e13          	li	t3,63
   119a8:	e81ff06f          	j	11828 <_malloc_r+0x100>
   119ac:	01083783          	ld	a5,16(a6)
   119b0:	0087b683          	ld	a3,8(a5)
   119b4:	ffc6f893          	andi	a7,a3,-4
   119b8:	40e88633          	sub	a2,a7,a4
   119bc:	00e8e663          	bltu	a7,a4,119c8 <_malloc_r+0x2a0>
   119c0:	02062693          	slti	a3,a2,32
   119c4:	1a068863          	beqz	a3,11b74 <_malloc_r+0x44c>
   119c8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   119cc:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   119d0:	fff00693          	li	a3,-1
   119d4:	00b705b3          	add	a1,a4,a1
   119d8:	44d60663          	beq	a2,a3,11e24 <_malloc_r+0x6fc>
   119dc:	000016b7          	lui	a3,0x1
   119e0:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   119e4:	00d585b3          	add	a1,a1,a3
   119e8:	fffff6b7          	lui	a3,0xfffff
   119ec:	00d5f5b3          	and	a1,a1,a3
   119f0:	00040513          	mv	a0,s0
   119f4:	03013423          	sd	a6,40(sp)
   119f8:	02f13023          	sd	a5,32(sp)
   119fc:	00e13c23          	sd	a4,24(sp)
   11a00:	01113823          	sd	a7,16(sp)
   11a04:	00b13423          	sd	a1,8(sp)
   11a08:	271000ef          	jal	12478 <_sbrk_r>
   11a0c:	fff00693          	li	a3,-1
   11a10:	00813583          	ld	a1,8(sp)
   11a14:	01013883          	ld	a7,16(sp)
   11a18:	01813703          	ld	a4,24(sp)
   11a1c:	02013783          	ld	a5,32(sp)
   11a20:	02813803          	ld	a6,40(sp)
   11a24:	00050313          	mv	t1,a0
   11a28:	36d50663          	beq	a0,a3,11d94 <_malloc_r+0x66c>
   11a2c:	011786b3          	add	a3,a5,a7
   11a30:	36d56063          	bltu	a0,a3,11d90 <_malloc_r+0x668>
   11a34:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a38:	000e2603          	lw	a2,0(t3)
   11a3c:	00b6063b          	addw	a2,a2,a1
   11a40:	00ce2023          	sw	a2,0(t3)
   11a44:	00060513          	mv	a0,a2
   11a48:	4a668c63          	beq	a3,t1,11f00 <_malloc_r+0x7d8>
   11a4c:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11a50:	fff00613          	li	a2,-1
   11a54:	4ccf0463          	beq	t5,a2,11f1c <_malloc_r+0x7f4>
   11a58:	40d306b3          	sub	a3,t1,a3
   11a5c:	00a686bb          	addw	a3,a3,a0
   11a60:	00de2023          	sw	a3,0(t3)
   11a64:	00f37e93          	andi	t4,t1,15
   11a68:	3c0e8e63          	beqz	t4,11e44 <_malloc_r+0x71c>
   11a6c:	ff037313          	andi	t1,t1,-16
   11a70:	000016b7          	lui	a3,0x1
   11a74:	01030313          	addi	t1,t1,16
   11a78:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11a7c:	00b30633          	add	a2,t1,a1
   11a80:	41d685b3          	sub	a1,a3,t4
   11a84:	40c585b3          	sub	a1,a1,a2
   11a88:	03459593          	slli	a1,a1,0x34
   11a8c:	0345d593          	srli	a1,a1,0x34
   11a90:	00040513          	mv	a0,s0
   11a94:	05c13023          	sd	t3,64(sp)
   11a98:	03013c23          	sd	a6,56(sp)
   11a9c:	02f13823          	sd	a5,48(sp)
   11aa0:	02e13423          	sd	a4,40(sp)
   11aa4:	03113023          	sd	a7,32(sp)
   11aa8:	00613c23          	sd	t1,24(sp)
   11aac:	01d13823          	sd	t4,16(sp)
   11ab0:	00c13423          	sd	a2,8(sp)
   11ab4:	04b13423          	sd	a1,72(sp)
   11ab8:	1c1000ef          	jal	12478 <_sbrk_r>
   11abc:	00050693          	mv	a3,a0
   11ac0:	fff00513          	li	a0,-1
   11ac4:	00813603          	ld	a2,8(sp)
   11ac8:	01013e83          	ld	t4,16(sp)
   11acc:	01813303          	ld	t1,24(sp)
   11ad0:	02013883          	ld	a7,32(sp)
   11ad4:	02813703          	ld	a4,40(sp)
   11ad8:	03013783          	ld	a5,48(sp)
   11adc:	03813803          	ld	a6,56(sp)
   11ae0:	04013e03          	ld	t3,64(sp)
   11ae4:	48a68663          	beq	a3,a0,11f70 <_malloc_r+0x848>
   11ae8:	04813583          	ld	a1,72(sp)
   11aec:	0005851b          	sext.w	a0,a1
   11af0:	000e2603          	lw	a2,0(t3)
   11af4:	406686b3          	sub	a3,a3,t1
   11af8:	00b686b3          	add	a3,a3,a1
   11afc:	0016e693          	ori	a3,a3,1
   11b00:	00683823          	sd	t1,16(a6)
   11b04:	00a6063b          	addw	a2,a2,a0
   11b08:	00d33423          	sd	a3,8(t1)
   11b0c:	00ce2023          	sw	a2,0(t3)
   11b10:	03078e63          	beq	a5,a6,11b4c <_malloc_r+0x424>
   11b14:	01f00513          	li	a0,31
   11b18:	41157663          	bgeu	a0,a7,11f24 <_malloc_r+0x7fc>
   11b1c:	0087b583          	ld	a1,8(a5)
   11b20:	fe888693          	addi	a3,a7,-24
   11b24:	ff06f693          	andi	a3,a3,-16
   11b28:	0015f593          	andi	a1,a1,1
   11b2c:	00d5e5b3          	or	a1,a1,a3
   11b30:	00b7b423          	sd	a1,8(a5)
   11b34:	00900893          	li	a7,9
   11b38:	00d785b3          	add	a1,a5,a3
   11b3c:	0115b423          	sd	a7,8(a1)
   11b40:	0115b823          	sd	a7,16(a1)
   11b44:	44d56863          	bltu	a0,a3,11f94 <_malloc_r+0x86c>
   11b48:	00833683          	ld	a3,8(t1)
   11b4c:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11b50:	00c5f463          	bgeu	a1,a2,11b58 <_malloc_r+0x430>
   11b54:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11b58:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11b5c:	00c5f463          	bgeu	a1,a2,11b64 <_malloc_r+0x43c>
   11b60:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11b64:	00030793          	mv	a5,t1
   11b68:	2340006f          	j	11d9c <_malloc_r+0x674>
   11b6c:	00883583          	ld	a1,8(a6)
   11b70:	d79ff06f          	j	118e8 <_malloc_r+0x1c0>
   11b74:	00176693          	ori	a3,a4,1
   11b78:	00d7b423          	sd	a3,8(a5)
   11b7c:	00e78733          	add	a4,a5,a4
   11b80:	00166613          	ori	a2,a2,1
   11b84:	00e83823          	sd	a4,16(a6)
   11b88:	00040513          	mv	a0,s0
   11b8c:	00c73423          	sd	a2,8(a4)
   11b90:	00f13423          	sd	a5,8(sp)
   11b94:	47c000ef          	jal	12010 <__malloc_unlock>
   11b98:	00813783          	ld	a5,8(sp)
   11b9c:	05813083          	ld	ra,88(sp)
   11ba0:	05013403          	ld	s0,80(sp)
   11ba4:	01078513          	addi	a0,a5,16
   11ba8:	06010113          	addi	sp,sp,96
   11bac:	00008067          	ret
   11bb0:	0107b603          	ld	a2,16(a5)
   11bb4:	00d786b3          	add	a3,a5,a3
   11bb8:	0086b703          	ld	a4,8(a3)
   11bbc:	00b63c23          	sd	a1,24(a2)
   11bc0:	00c5b823          	sd	a2,16(a1)
   11bc4:	00176713          	ori	a4,a4,1
   11bc8:	00040513          	mv	a0,s0
   11bcc:	00e6b423          	sd	a4,8(a3)
   11bd0:	00f13423          	sd	a5,8(sp)
   11bd4:	43c000ef          	jal	12010 <__malloc_unlock>
   11bd8:	00813783          	ld	a5,8(sp)
   11bdc:	05813083          	ld	ra,88(sp)
   11be0:	05013403          	ld	s0,80(sp)
   11be4:	01078513          	addi	a0,a5,16
   11be8:	06010113          	addi	sp,sp,96
   11bec:	00008067          	ret
   11bf0:	0186b783          	ld	a5,24(a3)
   11bf4:	0028889b          	addiw	a7,a7,2
   11bf8:	c6f68ae3          	beq	a3,a5,1186c <_malloc_r+0x144>
   11bfc:	b79ff06f          	j	11774 <_malloc_r+0x4c>
   11c00:	00935693          	srli	a3,t1,0x9
   11c04:	00400613          	li	a2,4
   11c08:	16d67863          	bgeu	a2,a3,11d78 <_malloc_r+0x650>
   11c0c:	01400613          	li	a2,20
   11c10:	28d66e63          	bltu	a2,a3,11eac <_malloc_r+0x784>
   11c14:	00169513          	slli	a0,a3,0x1
   11c18:	0b85051b          	addiw	a0,a0,184
   11c1c:	00351513          	slli	a0,a0,0x3
   11c20:	05b6861b          	addiw	a2,a3,91
   11c24:	00a80533          	add	a0,a6,a0
   11c28:	00053683          	ld	a3,0(a0)
   11c2c:	ff050513          	addi	a0,a0,-16
   11c30:	00d51863          	bne	a0,a3,11c40 <_malloc_r+0x518>
   11c34:	1f80006f          	j	11e2c <_malloc_r+0x704>
   11c38:	0106b683          	ld	a3,16(a3)
   11c3c:	00d50863          	beq	a0,a3,11c4c <_malloc_r+0x524>
   11c40:	0086b603          	ld	a2,8(a3)
   11c44:	ffc67613          	andi	a2,a2,-4
   11c48:	fec368e3          	bltu	t1,a2,11c38 <_malloc_r+0x510>
   11c4c:	0186b503          	ld	a0,24(a3)
   11c50:	00a7bc23          	sd	a0,24(a5)
   11c54:	00d7b823          	sd	a3,16(a5)
   11c58:	00f53823          	sd	a5,16(a0)
   11c5c:	00f6bc23          	sd	a5,24(a3)
   11c60:	c89ff06f          	j	118e8 <_malloc_r+0x1c0>
   11c64:	01400693          	li	a3,20
   11c68:	14f6fa63          	bgeu	a3,a5,11dbc <_malloc_r+0x694>
   11c6c:	05400693          	li	a3,84
   11c70:	24f6ee63          	bltu	a3,a5,11ecc <_malloc_r+0x7a4>
   11c74:	00c75793          	srli	a5,a4,0xc
   11c78:	06f7889b          	addiw	a7,a5,111
   11c7c:	0018951b          	slliw	a0,a7,0x1
   11c80:	06e78e1b          	addiw	t3,a5,110
   11c84:	00351513          	slli	a0,a0,0x3
   11c88:	ba1ff06f          	j	11828 <_malloc_r+0x100>
   11c8c:	001f8f9b          	addiw	t6,t6,1
   11c90:	003ff793          	andi	a5,t6,3
   11c94:	01030313          	addi	t1,t1,16
   11c98:	14078263          	beqz	a5,11ddc <_malloc_r+0x6b4>
   11c9c:	01833683          	ld	a3,24(t1)
   11ca0:	ca9ff06f          	j	11948 <_malloc_r+0x220>
   11ca4:	0107b503          	ld	a0,16(a5)
   11ca8:	00176893          	ori	a7,a4,1
   11cac:	0117b423          	sd	a7,8(a5)
   11cb0:	00d53c23          	sd	a3,24(a0)
   11cb4:	00a6b823          	sd	a0,16(a3)
   11cb8:	00e78733          	add	a4,a5,a4
   11cbc:	02e83423          	sd	a4,40(a6)
   11cc0:	02e83023          	sd	a4,32(a6)
   11cc4:	0015e693          	ori	a3,a1,1
   11cc8:	00c78633          	add	a2,a5,a2
   11ccc:	01c73c23          	sd	t3,24(a4)
   11cd0:	01c73823          	sd	t3,16(a4)
   11cd4:	00d73423          	sd	a3,8(a4)
   11cd8:	00040513          	mv	a0,s0
   11cdc:	00b63023          	sd	a1,0(a2)
   11ce0:	00f13423          	sd	a5,8(sp)
   11ce4:	32c000ef          	jal	12010 <__malloc_unlock>
   11ce8:	00813783          	ld	a5,8(sp)
   11cec:	01078513          	addi	a0,a5,16
   11cf0:	addff06f          	j	117cc <_malloc_r+0xa4>
   11cf4:	00375893          	srli	a7,a4,0x3
   11cf8:	00189693          	slli	a3,a7,0x1
   11cfc:	0026869b          	addiw	a3,a3,2
   11d00:	00369693          	slli	a3,a3,0x3
   11d04:	0008889b          	sext.w	a7,a7
   11d08:	a55ff06f          	j	1175c <_malloc_r+0x34>
   11d0c:	00678333          	add	t1,a5,t1
   11d10:	00833703          	ld	a4,8(t1)
   11d14:	00040513          	mv	a0,s0
   11d18:	00f13423          	sd	a5,8(sp)
   11d1c:	00176713          	ori	a4,a4,1
   11d20:	00e33423          	sd	a4,8(t1)
   11d24:	2ec000ef          	jal	12010 <__malloc_unlock>
   11d28:	00813783          	ld	a5,8(sp)
   11d2c:	01078513          	addi	a0,a5,16
   11d30:	a9dff06f          	j	117cc <_malloc_r+0xa4>
   11d34:	00176613          	ori	a2,a4,1
   11d38:	00c7b423          	sd	a2,8(a5)
   11d3c:	00e78733          	add	a4,a5,a4
   11d40:	02e83423          	sd	a4,40(a6)
   11d44:	02e83023          	sd	a4,32(a6)
   11d48:	0016e613          	ori	a2,a3,1
   11d4c:	00678333          	add	t1,a5,t1
   11d50:	01c73c23          	sd	t3,24(a4)
   11d54:	01c73823          	sd	t3,16(a4)
   11d58:	00c73423          	sd	a2,8(a4)
   11d5c:	00040513          	mv	a0,s0
   11d60:	00d33023          	sd	a3,0(t1)
   11d64:	00f13423          	sd	a5,8(sp)
   11d68:	2a8000ef          	jal	12010 <__malloc_unlock>
   11d6c:	00813783          	ld	a5,8(sp)
   11d70:	01078513          	addi	a0,a5,16
   11d74:	a59ff06f          	j	117cc <_malloc_r+0xa4>
   11d78:	00635693          	srli	a3,t1,0x6
   11d7c:	00169513          	slli	a0,a3,0x1
   11d80:	0725051b          	addiw	a0,a0,114
   11d84:	00351513          	slli	a0,a0,0x3
   11d88:	0386861b          	addiw	a2,a3,56
   11d8c:	e99ff06f          	j	11c24 <_malloc_r+0x4fc>
   11d90:	15078e63          	beq	a5,a6,11eec <_malloc_r+0x7c4>
   11d94:	01083783          	ld	a5,16(a6)
   11d98:	0087b683          	ld	a3,8(a5)
   11d9c:	ffc6f693          	andi	a3,a3,-4
   11da0:	40e68633          	sub	a2,a3,a4
   11da4:	00e6e663          	bltu	a3,a4,11db0 <_malloc_r+0x688>
   11da8:	02062693          	slti	a3,a2,32
   11dac:	dc0684e3          	beqz	a3,11b74 <_malloc_r+0x44c>
   11db0:	00040513          	mv	a0,s0
   11db4:	25c000ef          	jal	12010 <__malloc_unlock>
   11db8:	a11ff06f          	j	117c8 <_malloc_r+0xa0>
   11dbc:	05c7889b          	addiw	a7,a5,92
   11dc0:	0018951b          	slliw	a0,a7,0x1
   11dc4:	05b78e1b          	addiw	t3,a5,91
   11dc8:	00351513          	slli	a0,a0,0x3
   11dcc:	a5dff06f          	j	11828 <_malloc_r+0x100>
   11dd0:	010f3783          	ld	a5,16(t5)
   11dd4:	fff8889b          	addiw	a7,a7,-1
   11dd8:	23e79663          	bne	a5,t5,12004 <_malloc_r+0x8dc>
   11ddc:	0038f793          	andi	a5,a7,3
   11de0:	ff0f0f13          	addi	t5,t5,-16
   11de4:	fe0796e3          	bnez	a5,11dd0 <_malloc_r+0x6a8>
   11de8:	00883683          	ld	a3,8(a6)
   11dec:	fff54793          	not	a5,a0
   11df0:	00d7f7b3          	and	a5,a5,a3
   11df4:	00f83423          	sd	a5,8(a6)
   11df8:	00151513          	slli	a0,a0,0x1
   11dfc:	fff50693          	addi	a3,a0,-1
   11e00:	baf6f6e3          	bgeu	a3,a5,119ac <_malloc_r+0x284>
   11e04:	00f576b3          	and	a3,a0,a5
   11e08:	00069a63          	bnez	a3,11e1c <_malloc_r+0x6f4>
   11e0c:	00151513          	slli	a0,a0,0x1
   11e10:	00f576b3          	and	a3,a0,a5
   11e14:	004f8f9b          	addiw	t6,t6,4
   11e18:	fe068ae3          	beqz	a3,11e0c <_malloc_r+0x6e4>
   11e1c:	000f8893          	mv	a7,t6
   11e20:	b09ff06f          	j	11928 <_malloc_r+0x200>
   11e24:	02058593          	addi	a1,a1,32
   11e28:	bc9ff06f          	j	119f0 <_malloc_r+0x2c8>
   11e2c:	4026561b          	sraiw	a2,a2,0x2
   11e30:	00100313          	li	t1,1
   11e34:	00c31633          	sll	a2,t1,a2
   11e38:	00c5e5b3          	or	a1,a1,a2
   11e3c:	00b83423          	sd	a1,8(a6)
   11e40:	e11ff06f          	j	11c50 <_malloc_r+0x528>
   11e44:	00b30633          	add	a2,t1,a1
   11e48:	40c005b3          	neg	a1,a2
   11e4c:	03459593          	slli	a1,a1,0x34
   11e50:	0345d593          	srli	a1,a1,0x34
   11e54:	00040513          	mv	a0,s0
   11e58:	03c13c23          	sd	t3,56(sp)
   11e5c:	03013823          	sd	a6,48(sp)
   11e60:	02f13423          	sd	a5,40(sp)
   11e64:	02e13023          	sd	a4,32(sp)
   11e68:	01113c23          	sd	a7,24(sp)
   11e6c:	00613823          	sd	t1,16(sp)
   11e70:	00c13423          	sd	a2,8(sp)
   11e74:	04b13023          	sd	a1,64(sp)
   11e78:	600000ef          	jal	12478 <_sbrk_r>
   11e7c:	00050693          	mv	a3,a0
   11e80:	fff00513          	li	a0,-1
   11e84:	01013303          	ld	t1,16(sp)
   11e88:	01813883          	ld	a7,24(sp)
   11e8c:	02013703          	ld	a4,32(sp)
   11e90:	02813783          	ld	a5,40(sp)
   11e94:	03013803          	ld	a6,48(sp)
   11e98:	03813e03          	ld	t3,56(sp)
   11e9c:	0ea68463          	beq	a3,a0,11f84 <_malloc_r+0x85c>
   11ea0:	04013583          	ld	a1,64(sp)
   11ea4:	0005851b          	sext.w	a0,a1
   11ea8:	c49ff06f          	j	11af0 <_malloc_r+0x3c8>
   11eac:	05400613          	li	a2,84
   11eb0:	08d66063          	bltu	a2,a3,11f30 <_malloc_r+0x808>
   11eb4:	00c35693          	srli	a3,t1,0xc
   11eb8:	00169513          	slli	a0,a3,0x1
   11ebc:	0de5051b          	addiw	a0,a0,222
   11ec0:	00351513          	slli	a0,a0,0x3
   11ec4:	06e6861b          	addiw	a2,a3,110
   11ec8:	d5dff06f          	j	11c24 <_malloc_r+0x4fc>
   11ecc:	15400693          	li	a3,340
   11ed0:	08f6e063          	bltu	a3,a5,11f50 <_malloc_r+0x828>
   11ed4:	00f75793          	srli	a5,a4,0xf
   11ed8:	0787889b          	addiw	a7,a5,120
   11edc:	0018951b          	slliw	a0,a7,0x1
   11ee0:	07778e1b          	addiw	t3,a5,119
   11ee4:	00351513          	slli	a0,a0,0x3
   11ee8:	941ff06f          	j	11828 <_malloc_r+0x100>
   11eec:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11ef0:	000e2503          	lw	a0,0(t3)
   11ef4:	00b5053b          	addw	a0,a0,a1
   11ef8:	00ae2023          	sw	a0,0(t3)
   11efc:	b51ff06f          	j	11a4c <_malloc_r+0x324>
   11f00:	03431f13          	slli	t5,t1,0x34
   11f04:	b40f14e3          	bnez	t5,11a4c <_malloc_r+0x324>
   11f08:	01083303          	ld	t1,16(a6)
   11f0c:	00b885b3          	add	a1,a7,a1
   11f10:	0015e693          	ori	a3,a1,1
   11f14:	00d33423          	sd	a3,8(t1)
   11f18:	c35ff06f          	j	11b4c <_malloc_r+0x424>
   11f1c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11f20:	b45ff06f          	j	11a64 <_malloc_r+0x33c>
   11f24:	00100793          	li	a5,1
   11f28:	00f33423          	sd	a5,8(t1)
   11f2c:	e85ff06f          	j	11db0 <_malloc_r+0x688>
   11f30:	15400613          	li	a2,340
   11f34:	08d66a63          	bltu	a2,a3,11fc8 <_malloc_r+0x8a0>
   11f38:	00f35693          	srli	a3,t1,0xf
   11f3c:	00169513          	slli	a0,a3,0x1
   11f40:	0f05051b          	addiw	a0,a0,240
   11f44:	00351513          	slli	a0,a0,0x3
   11f48:	0776861b          	addiw	a2,a3,119
   11f4c:	cd9ff06f          	j	11c24 <_malloc_r+0x4fc>
   11f50:	55400693          	li	a3,1364
   11f54:	08f6ea63          	bltu	a3,a5,11fe8 <_malloc_r+0x8c0>
   11f58:	01275793          	srli	a5,a4,0x12
   11f5c:	07d7889b          	addiw	a7,a5,125
   11f60:	0018951b          	slliw	a0,a7,0x1
   11f64:	07c78e1b          	addiw	t3,a5,124
   11f68:	00351513          	slli	a0,a0,0x3
   11f6c:	8bdff06f          	j	11828 <_malloc_r+0x100>
   11f70:	ff0e8e93          	addi	t4,t4,-16
   11f74:	01d606b3          	add	a3,a2,t4
   11f78:	00000513          	li	a0,0
   11f7c:	00000593          	li	a1,0
   11f80:	b71ff06f          	j	11af0 <_malloc_r+0x3c8>
   11f84:	00813683          	ld	a3,8(sp)
   11f88:	00000593          	li	a1,0
   11f8c:	00000513          	li	a0,0
   11f90:	b61ff06f          	j	11af0 <_malloc_r+0x3c8>
   11f94:	01078593          	addi	a1,a5,16
   11f98:	00040513          	mv	a0,s0
   11f9c:	01c13c23          	sd	t3,24(sp)
   11fa0:	01013823          	sd	a6,16(sp)
   11fa4:	00e13423          	sd	a4,8(sp)
   11fa8:	c7cff0ef          	jal	11424 <_free_r>
   11fac:	01013803          	ld	a6,16(sp)
   11fb0:	01813e03          	ld	t3,24(sp)
   11fb4:	00813703          	ld	a4,8(sp)
   11fb8:	01083303          	ld	t1,16(a6)
   11fbc:	000e2603          	lw	a2,0(t3)
   11fc0:	00833683          	ld	a3,8(t1)
   11fc4:	b89ff06f          	j	11b4c <_malloc_r+0x424>
   11fc8:	55400613          	li	a2,1364
   11fcc:	02d66663          	bltu	a2,a3,11ff8 <_malloc_r+0x8d0>
   11fd0:	01235693          	srli	a3,t1,0x12
   11fd4:	00169513          	slli	a0,a3,0x1
   11fd8:	0fa5051b          	addiw	a0,a0,250
   11fdc:	00351513          	slli	a0,a0,0x3
   11fe0:	07c6861b          	addiw	a2,a3,124
   11fe4:	c41ff06f          	j	11c24 <_malloc_r+0x4fc>
   11fe8:	7f000513          	li	a0,2032
   11fec:	07f00893          	li	a7,127
   11ff0:	07e00e13          	li	t3,126
   11ff4:	835ff06f          	j	11828 <_malloc_r+0x100>
   11ff8:	7f000513          	li	a0,2032
   11ffc:	07e00613          	li	a2,126
   12000:	c25ff06f          	j	11c24 <_malloc_r+0x4fc>
   12004:	00883783          	ld	a5,8(a6)
   12008:	df1ff06f          	j	11df8 <_malloc_r+0x6d0>

000000000001200c <__malloc_lock>:
   1200c:	00008067          	ret

0000000000012010 <__malloc_unlock>:
   12010:	00008067          	ret

0000000000012014 <_fclose_r>:
   12014:	fe010113          	addi	sp,sp,-32
   12018:	00113c23          	sd	ra,24(sp)
   1201c:	01213023          	sd	s2,0(sp)
   12020:	02058863          	beqz	a1,12050 <_fclose_r+0x3c>
   12024:	00813823          	sd	s0,16(sp)
   12028:	00913423          	sd	s1,8(sp)
   1202c:	00058413          	mv	s0,a1
   12030:	00050493          	mv	s1,a0
   12034:	00050663          	beqz	a0,12040 <_fclose_r+0x2c>
   12038:	04853783          	ld	a5,72(a0)
   1203c:	0c078c63          	beqz	a5,12114 <_fclose_r+0x100>
   12040:	01041783          	lh	a5,16(s0)
   12044:	02079263          	bnez	a5,12068 <_fclose_r+0x54>
   12048:	01013403          	ld	s0,16(sp)
   1204c:	00813483          	ld	s1,8(sp)
   12050:	01813083          	ld	ra,24(sp)
   12054:	00000913          	li	s2,0
   12058:	00090513          	mv	a0,s2
   1205c:	00013903          	ld	s2,0(sp)
   12060:	02010113          	addi	sp,sp,32
   12064:	00008067          	ret
   12068:	00040593          	mv	a1,s0
   1206c:	00048513          	mv	a0,s1
   12070:	0b8000ef          	jal	12128 <__sflush_r>
   12074:	05043783          	ld	a5,80(s0)
   12078:	00050913          	mv	s2,a0
   1207c:	00078a63          	beqz	a5,12090 <_fclose_r+0x7c>
   12080:	03043583          	ld	a1,48(s0)
   12084:	00048513          	mv	a0,s1
   12088:	000780e7          	jalr	a5
   1208c:	06054463          	bltz	a0,120f4 <_fclose_r+0xe0>
   12090:	01045783          	lhu	a5,16(s0)
   12094:	0807f793          	andi	a5,a5,128
   12098:	06079663          	bnez	a5,12104 <_fclose_r+0xf0>
   1209c:	05843583          	ld	a1,88(s0)
   120a0:	00058c63          	beqz	a1,120b8 <_fclose_r+0xa4>
   120a4:	07440793          	addi	a5,s0,116
   120a8:	00f58663          	beq	a1,a5,120b4 <_fclose_r+0xa0>
   120ac:	00048513          	mv	a0,s1
   120b0:	b74ff0ef          	jal	11424 <_free_r>
   120b4:	04043c23          	sd	zero,88(s0)
   120b8:	07843583          	ld	a1,120(s0)
   120bc:	00058863          	beqz	a1,120cc <_fclose_r+0xb8>
   120c0:	00048513          	mv	a0,s1
   120c4:	b60ff0ef          	jal	11424 <_free_r>
   120c8:	06043c23          	sd	zero,120(s0)
   120cc:	aa5fe0ef          	jal	10b70 <__sfp_lock_acquire>
   120d0:	00041823          	sh	zero,16(s0)
   120d4:	aa1fe0ef          	jal	10b74 <__sfp_lock_release>
   120d8:	01813083          	ld	ra,24(sp)
   120dc:	01013403          	ld	s0,16(sp)
   120e0:	00813483          	ld	s1,8(sp)
   120e4:	00090513          	mv	a0,s2
   120e8:	00013903          	ld	s2,0(sp)
   120ec:	02010113          	addi	sp,sp,32
   120f0:	00008067          	ret
   120f4:	01045783          	lhu	a5,16(s0)
   120f8:	fff00913          	li	s2,-1
   120fc:	0807f793          	andi	a5,a5,128
   12100:	f8078ee3          	beqz	a5,1209c <_fclose_r+0x88>
   12104:	01843583          	ld	a1,24(s0)
   12108:	00048513          	mv	a0,s1
   1210c:	b18ff0ef          	jal	11424 <_free_r>
   12110:	f8dff06f          	j	1209c <_fclose_r+0x88>
   12114:	a39fe0ef          	jal	10b4c <__sinit>
   12118:	f29ff06f          	j	12040 <_fclose_r+0x2c>

000000000001211c <fclose>:
   1211c:	00050593          	mv	a1,a0
   12120:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12124:	ef1ff06f          	j	12014 <_fclose_r>

0000000000012128 <__sflush_r>:
   12128:	01059703          	lh	a4,16(a1)
   1212c:	fd010113          	addi	sp,sp,-48
   12130:	02813023          	sd	s0,32(sp)
   12134:	01313423          	sd	s3,8(sp)
   12138:	02113423          	sd	ra,40(sp)
   1213c:	00877793          	andi	a5,a4,8
   12140:	00058413          	mv	s0,a1
   12144:	00050993          	mv	s3,a0
   12148:	12079263          	bnez	a5,1226c <__sflush_r+0x144>
   1214c:	000017b7          	lui	a5,0x1
   12150:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   12154:	0085a683          	lw	a3,8(a1)
   12158:	00f767b3          	or	a5,a4,a5
   1215c:	00f59823          	sh	a5,16(a1)
   12160:	18d05c63          	blez	a3,122f8 <__sflush_r+0x1d0>
   12164:	04843803          	ld	a6,72(s0)
   12168:	0e080663          	beqz	a6,12254 <__sflush_r+0x12c>
   1216c:	00913c23          	sd	s1,24(sp)
   12170:	03371693          	slli	a3,a4,0x33
   12174:	0009a483          	lw	s1,0(s3)
   12178:	0009a023          	sw	zero,0(s3)
   1217c:	1806ca63          	bltz	a3,12310 <__sflush_r+0x1e8>
   12180:	03043583          	ld	a1,48(s0)
   12184:	00000613          	li	a2,0
   12188:	00100693          	li	a3,1
   1218c:	00098513          	mv	a0,s3
   12190:	000800e7          	jalr	a6
   12194:	fff00793          	li	a5,-1
   12198:	00050613          	mv	a2,a0
   1219c:	1af50c63          	beq	a0,a5,12354 <__sflush_r+0x22c>
   121a0:	01041783          	lh	a5,16(s0)
   121a4:	04843803          	ld	a6,72(s0)
   121a8:	0047f793          	andi	a5,a5,4
   121ac:	00078e63          	beqz	a5,121c8 <__sflush_r+0xa0>
   121b0:	00842703          	lw	a4,8(s0)
   121b4:	05843783          	ld	a5,88(s0)
   121b8:	40e60633          	sub	a2,a2,a4
   121bc:	00078663          	beqz	a5,121c8 <__sflush_r+0xa0>
   121c0:	07042783          	lw	a5,112(s0)
   121c4:	40f60633          	sub	a2,a2,a5
   121c8:	03043583          	ld	a1,48(s0)
   121cc:	00000693          	li	a3,0
   121d0:	00098513          	mv	a0,s3
   121d4:	000800e7          	jalr	a6
   121d8:	fff00713          	li	a4,-1
   121dc:	01041783          	lh	a5,16(s0)
   121e0:	12e51c63          	bne	a0,a4,12318 <__sflush_r+0x1f0>
   121e4:	0009a683          	lw	a3,0(s3)
   121e8:	01d00713          	li	a4,29
   121ec:	18d76263          	bltu	a4,a3,12370 <__sflush_r+0x248>
   121f0:	20400737          	lui	a4,0x20400
   121f4:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   121f8:	00d75733          	srl	a4,a4,a3
   121fc:	00177713          	andi	a4,a4,1
   12200:	16070863          	beqz	a4,12370 <__sflush_r+0x248>
   12204:	01843683          	ld	a3,24(s0)
   12208:	fffff737          	lui	a4,0xfffff
   1220c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12210:	00e7f733          	and	a4,a5,a4
   12214:	00e41823          	sh	a4,16(s0)
   12218:	00042423          	sw	zero,8(s0)
   1221c:	00d43023          	sd	a3,0(s0)
   12220:	03379713          	slli	a4,a5,0x33
   12224:	00075663          	bgez	a4,12230 <__sflush_r+0x108>
   12228:	0009a783          	lw	a5,0(s3)
   1222c:	10078863          	beqz	a5,1233c <__sflush_r+0x214>
   12230:	05843583          	ld	a1,88(s0)
   12234:	0099a023          	sw	s1,0(s3)
   12238:	10058a63          	beqz	a1,1234c <__sflush_r+0x224>
   1223c:	07440793          	addi	a5,s0,116
   12240:	00f58663          	beq	a1,a5,1224c <__sflush_r+0x124>
   12244:	00098513          	mv	a0,s3
   12248:	9dcff0ef          	jal	11424 <_free_r>
   1224c:	01813483          	ld	s1,24(sp)
   12250:	04043c23          	sd	zero,88(s0)
   12254:	02813083          	ld	ra,40(sp)
   12258:	02013403          	ld	s0,32(sp)
   1225c:	00813983          	ld	s3,8(sp)
   12260:	00000513          	li	a0,0
   12264:	03010113          	addi	sp,sp,48
   12268:	00008067          	ret
   1226c:	01213823          	sd	s2,16(sp)
   12270:	0185b903          	ld	s2,24(a1)
   12274:	08090a63          	beqz	s2,12308 <__sflush_r+0x1e0>
   12278:	00913c23          	sd	s1,24(sp)
   1227c:	0005b483          	ld	s1,0(a1)
   12280:	00377713          	andi	a4,a4,3
   12284:	0125b023          	sd	s2,0(a1)
   12288:	412484bb          	subw	s1,s1,s2
   1228c:	00000793          	li	a5,0
   12290:	00071463          	bnez	a4,12298 <__sflush_r+0x170>
   12294:	0205a783          	lw	a5,32(a1)
   12298:	00f42623          	sw	a5,12(s0)
   1229c:	00904863          	bgtz	s1,122ac <__sflush_r+0x184>
   122a0:	0640006f          	j	12304 <__sflush_r+0x1dc>
   122a4:	00a90933          	add	s2,s2,a0
   122a8:	04905e63          	blez	s1,12304 <__sflush_r+0x1dc>
   122ac:	04043783          	ld	a5,64(s0)
   122b0:	03043583          	ld	a1,48(s0)
   122b4:	00048693          	mv	a3,s1
   122b8:	00090613          	mv	a2,s2
   122bc:	00098513          	mv	a0,s3
   122c0:	000780e7          	jalr	a5
   122c4:	40a484bb          	subw	s1,s1,a0
   122c8:	fca04ee3          	bgtz	a0,122a4 <__sflush_r+0x17c>
   122cc:	01045783          	lhu	a5,16(s0)
   122d0:	01013903          	ld	s2,16(sp)
   122d4:	0407e793          	ori	a5,a5,64
   122d8:	02813083          	ld	ra,40(sp)
   122dc:	00f41823          	sh	a5,16(s0)
   122e0:	02013403          	ld	s0,32(sp)
   122e4:	01813483          	ld	s1,24(sp)
   122e8:	00813983          	ld	s3,8(sp)
   122ec:	fff00513          	li	a0,-1
   122f0:	03010113          	addi	sp,sp,48
   122f4:	00008067          	ret
   122f8:	0705a683          	lw	a3,112(a1)
   122fc:	e6d044e3          	bgtz	a3,12164 <__sflush_r+0x3c>
   12300:	f55ff06f          	j	12254 <__sflush_r+0x12c>
   12304:	01813483          	ld	s1,24(sp)
   12308:	01013903          	ld	s2,16(sp)
   1230c:	f49ff06f          	j	12254 <__sflush_r+0x12c>
   12310:	09043603          	ld	a2,144(s0)
   12314:	e95ff06f          	j	121a8 <__sflush_r+0x80>
   12318:	01843683          	ld	a3,24(s0)
   1231c:	fffff737          	lui	a4,0xfffff
   12320:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12324:	00e7f733          	and	a4,a5,a4
   12328:	00e41823          	sh	a4,16(s0)
   1232c:	00042423          	sw	zero,8(s0)
   12330:	00d43023          	sd	a3,0(s0)
   12334:	03379713          	slli	a4,a5,0x33
   12338:	ee075ce3          	bgez	a4,12230 <__sflush_r+0x108>
   1233c:	05843583          	ld	a1,88(s0)
   12340:	08a43823          	sd	a0,144(s0)
   12344:	0099a023          	sw	s1,0(s3)
   12348:	ee059ae3          	bnez	a1,1223c <__sflush_r+0x114>
   1234c:	01813483          	ld	s1,24(sp)
   12350:	f05ff06f          	j	12254 <__sflush_r+0x12c>
   12354:	0009a783          	lw	a5,0(s3)
   12358:	e40784e3          	beqz	a5,121a0 <__sflush_r+0x78>
   1235c:	fe378713          	addi	a4,a5,-29
   12360:	00070c63          	beqz	a4,12378 <__sflush_r+0x250>
   12364:	fea78793          	addi	a5,a5,-22
   12368:	00078863          	beqz	a5,12378 <__sflush_r+0x250>
   1236c:	01045783          	lhu	a5,16(s0)
   12370:	0407e793          	ori	a5,a5,64
   12374:	f65ff06f          	j	122d8 <__sflush_r+0x1b0>
   12378:	0099a023          	sw	s1,0(s3)
   1237c:	01813483          	ld	s1,24(sp)
   12380:	ed5ff06f          	j	12254 <__sflush_r+0x12c>

0000000000012384 <_fflush_r>:
   12384:	00050793          	mv	a5,a0
   12388:	00050663          	beqz	a0,12394 <_fflush_r+0x10>
   1238c:	04853703          	ld	a4,72(a0)
   12390:	00070e63          	beqz	a4,123ac <_fflush_r+0x28>
   12394:	01059703          	lh	a4,16(a1)
   12398:	00071663          	bnez	a4,123a4 <_fflush_r+0x20>
   1239c:	00000513          	li	a0,0
   123a0:	00008067          	ret
   123a4:	00078513          	mv	a0,a5
   123a8:	d81ff06f          	j	12128 <__sflush_r>
   123ac:	fe010113          	addi	sp,sp,-32
   123b0:	00b13423          	sd	a1,8(sp)
   123b4:	00113c23          	sd	ra,24(sp)
   123b8:	00a13023          	sd	a0,0(sp)
   123bc:	f90fe0ef          	jal	10b4c <__sinit>
   123c0:	00813583          	ld	a1,8(sp)
   123c4:	00013783          	ld	a5,0(sp)
   123c8:	01059703          	lh	a4,16(a1)
   123cc:	00070a63          	beqz	a4,123e0 <_fflush_r+0x5c>
   123d0:	01813083          	ld	ra,24(sp)
   123d4:	00078513          	mv	a0,a5
   123d8:	02010113          	addi	sp,sp,32
   123dc:	d4dff06f          	j	12128 <__sflush_r>
   123e0:	01813083          	ld	ra,24(sp)
   123e4:	00000513          	li	a0,0
   123e8:	02010113          	addi	sp,sp,32
   123ec:	00008067          	ret

00000000000123f0 <fflush>:
   123f0:	06050063          	beqz	a0,12450 <fflush+0x60>
   123f4:	00050593          	mv	a1,a0
   123f8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   123fc:	00050663          	beqz	a0,12408 <fflush+0x18>
   12400:	04853783          	ld	a5,72(a0)
   12404:	00078c63          	beqz	a5,1241c <fflush+0x2c>
   12408:	01059783          	lh	a5,16(a1)
   1240c:	00079663          	bnez	a5,12418 <fflush+0x28>
   12410:	00000513          	li	a0,0
   12414:	00008067          	ret
   12418:	d11ff06f          	j	12128 <__sflush_r>
   1241c:	fe010113          	addi	sp,sp,-32
   12420:	00b13423          	sd	a1,8(sp)
   12424:	00a13023          	sd	a0,0(sp)
   12428:	00113c23          	sd	ra,24(sp)
   1242c:	f20fe0ef          	jal	10b4c <__sinit>
   12430:	00813583          	ld	a1,8(sp)
   12434:	00013503          	ld	a0,0(sp)
   12438:	01059783          	lh	a5,16(a1)
   1243c:	02079863          	bnez	a5,1246c <fflush+0x7c>
   12440:	01813083          	ld	ra,24(sp)
   12444:	00000513          	li	a0,0
   12448:	02010113          	addi	sp,sp,32
   1244c:	00008067          	ret
   12450:	00013637          	lui	a2,0x13
   12454:	000125b7          	lui	a1,0x12
   12458:	00013537          	lui	a0,0x13
   1245c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12460:	38458593          	addi	a1,a1,900 # 12384 <_fflush_r>
   12464:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12468:	f40fe06f          	j	10ba8 <_fwalk_sglue>
   1246c:	01813083          	ld	ra,24(sp)
   12470:	02010113          	addi	sp,sp,32
   12474:	cb5ff06f          	j	12128 <__sflush_r>

0000000000012478 <_sbrk_r>:
   12478:	fe010113          	addi	sp,sp,-32
   1247c:	00813823          	sd	s0,16(sp)
   12480:	00913423          	sd	s1,8(sp)
   12484:	00050493          	mv	s1,a0
   12488:	00058513          	mv	a0,a1
   1248c:	00113c23          	sd	ra,24(sp)
   12490:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12494:	228000ef          	jal	126bc <_sbrk>
   12498:	fff00793          	li	a5,-1
   1249c:	00f50c63          	beq	a0,a5,124b4 <_sbrk_r+0x3c>
   124a0:	01813083          	ld	ra,24(sp)
   124a4:	01013403          	ld	s0,16(sp)
   124a8:	00813483          	ld	s1,8(sp)
   124ac:	02010113          	addi	sp,sp,32
   124b0:	00008067          	ret
   124b4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   124b8:	fe0784e3          	beqz	a5,124a0 <_sbrk_r+0x28>
   124bc:	01813083          	ld	ra,24(sp)
   124c0:	01013403          	ld	s0,16(sp)
   124c4:	00f4a023          	sw	a5,0(s1)
   124c8:	00813483          	ld	s1,8(sp)
   124cc:	02010113          	addi	sp,sp,32
   124d0:	00008067          	ret

00000000000124d4 <__libc_fini_array>:
   124d4:	fe010113          	addi	sp,sp,-32
   124d8:	00813823          	sd	s0,16(sp)
   124dc:	000137b7          	lui	a5,0x13
   124e0:	00013437          	lui	s0,0x13
   124e4:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   124e8:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   124ec:	408787b3          	sub	a5,a5,s0
   124f0:	00913423          	sd	s1,8(sp)
   124f4:	00113c23          	sd	ra,24(sp)
   124f8:	4037d493          	srai	s1,a5,0x3
   124fc:	02048063          	beqz	s1,1251c <__libc_fini_array+0x48>
   12500:	ff840413          	addi	s0,s0,-8
   12504:	00f40433          	add	s0,s0,a5
   12508:	00043783          	ld	a5,0(s0)
   1250c:	fff48493          	addi	s1,s1,-1
   12510:	ff840413          	addi	s0,s0,-8
   12514:	000780e7          	jalr	a5
   12518:	fe0498e3          	bnez	s1,12508 <__libc_fini_array+0x34>
   1251c:	01813083          	ld	ra,24(sp)
   12520:	01013403          	ld	s0,16(sp)
   12524:	00813483          	ld	s1,8(sp)
   12528:	02010113          	addi	sp,sp,32
   1252c:	00008067          	ret

0000000000012530 <__register_exitproc>:
   12530:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12534:	04078e63          	beqz	a5,12590 <__register_exitproc+0x60>
   12538:	0087a703          	lw	a4,8(a5)
   1253c:	01f00813          	li	a6,31
   12540:	08e84263          	blt	a6,a4,125c4 <__register_exitproc+0x94>
   12544:	02050863          	beqz	a0,12574 <__register_exitproc+0x44>
   12548:	00371813          	slli	a6,a4,0x3
   1254c:	01078833          	add	a6,a5,a6
   12550:	10c83823          	sd	a2,272(a6)
   12554:	3107a883          	lw	a7,784(a5)
   12558:	00100613          	li	a2,1
   1255c:	00e6163b          	sllw	a2,a2,a4
   12560:	00c8e8b3          	or	a7,a7,a2
   12564:	3117a823          	sw	a7,784(a5)
   12568:	20d83823          	sd	a3,528(a6)
   1256c:	00200693          	li	a3,2
   12570:	02d50663          	beq	a0,a3,1259c <__register_exitproc+0x6c>
   12574:	0017069b          	addiw	a3,a4,1
   12578:	00371713          	slli	a4,a4,0x3
   1257c:	00d7a423          	sw	a3,8(a5)
   12580:	00e787b3          	add	a5,a5,a4
   12584:	00b7b823          	sd	a1,16(a5)
   12588:	00000513          	li	a0,0
   1258c:	00008067          	ret
   12590:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12594:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12598:	fa1ff06f          	j	12538 <__register_exitproc+0x8>
   1259c:	3147a683          	lw	a3,788(a5)
   125a0:	00000513          	li	a0,0
   125a4:	00d66633          	or	a2,a2,a3
   125a8:	0017069b          	addiw	a3,a4,1
   125ac:	00371713          	slli	a4,a4,0x3
   125b0:	30c7aa23          	sw	a2,788(a5)
   125b4:	00d7a423          	sw	a3,8(a5)
   125b8:	00e787b3          	add	a5,a5,a4
   125bc:	00b7b823          	sd	a1,16(a5)
   125c0:	00008067          	ret
   125c4:	fff00513          	li	a0,-1
   125c8:	00008067          	ret

00000000000125cc <_close>:
   125cc:	03900893          	li	a7,57
   125d0:	00000073          	ecall
   125d4:	00054663          	bltz	a0,125e0 <_close+0x14>
   125d8:	0005051b          	sext.w	a0,a0
   125dc:	00008067          	ret
   125e0:	fe010113          	addi	sp,sp,-32
   125e4:	00113c23          	sd	ra,24(sp)
   125e8:	00a13423          	sd	a0,8(sp)
   125ec:	188000ef          	jal	12774 <__errno>
   125f0:	00813783          	ld	a5,8(sp)
   125f4:	01813083          	ld	ra,24(sp)
   125f8:	40f007bb          	negw	a5,a5
   125fc:	00f52023          	sw	a5,0(a0)
   12600:	fff00513          	li	a0,-1
   12604:	02010113          	addi	sp,sp,32
   12608:	00008067          	ret

000000000001260c <_exit>:
   1260c:	05d00893          	li	a7,93
   12610:	00000073          	ecall
   12614:	00054463          	bltz	a0,1261c <_exit+0x10>
   12618:	0000006f          	j	12618 <_exit+0xc>
   1261c:	fe010113          	addi	sp,sp,-32
   12620:	00113c23          	sd	ra,24(sp)
   12624:	00a13423          	sd	a0,8(sp)
   12628:	14c000ef          	jal	12774 <__errno>
   1262c:	00813783          	ld	a5,8(sp)
   12630:	40f007bb          	negw	a5,a5
   12634:	00f52023          	sw	a5,0(a0)
   12638:	0000006f          	j	12638 <_exit+0x2c>

000000000001263c <_lseek>:
   1263c:	03e00893          	li	a7,62
   12640:	00000073          	ecall
   12644:	00054463          	bltz	a0,1264c <_lseek+0x10>
   12648:	00008067          	ret
   1264c:	fe010113          	addi	sp,sp,-32
   12650:	00113c23          	sd	ra,24(sp)
   12654:	00a13423          	sd	a0,8(sp)
   12658:	11c000ef          	jal	12774 <__errno>
   1265c:	00813783          	ld	a5,8(sp)
   12660:	01813083          	ld	ra,24(sp)
   12664:	40f007bb          	negw	a5,a5
   12668:	00f52023          	sw	a5,0(a0)
   1266c:	fff00793          	li	a5,-1
   12670:	00078513          	mv	a0,a5
   12674:	02010113          	addi	sp,sp,32
   12678:	00008067          	ret

000000000001267c <_read>:
   1267c:	03f00893          	li	a7,63
   12680:	00000073          	ecall
   12684:	00054463          	bltz	a0,1268c <_read+0x10>
   12688:	00008067          	ret
   1268c:	fe010113          	addi	sp,sp,-32
   12690:	00113c23          	sd	ra,24(sp)
   12694:	00a13423          	sd	a0,8(sp)
   12698:	0dc000ef          	jal	12774 <__errno>
   1269c:	00813783          	ld	a5,8(sp)
   126a0:	01813083          	ld	ra,24(sp)
   126a4:	40f007bb          	negw	a5,a5
   126a8:	00f52023          	sw	a5,0(a0)
   126ac:	fff00793          	li	a5,-1
   126b0:	00078513          	mv	a0,a5
   126b4:	02010113          	addi	sp,sp,32
   126b8:	00008067          	ret

00000000000126bc <_sbrk>:
   126bc:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   126c0:	ff010113          	addi	sp,sp,-16
   126c4:	00113423          	sd	ra,8(sp)
   126c8:	00050713          	mv	a4,a0
   126cc:	02079063          	bnez	a5,126ec <_sbrk+0x30>
   126d0:	0d600893          	li	a7,214
   126d4:	00000513          	li	a0,0
   126d8:	00000073          	ecall
   126dc:	fff00793          	li	a5,-1
   126e0:	02f50c63          	beq	a0,a5,12718 <_sbrk+0x5c>
   126e4:	00050793          	mv	a5,a0
   126e8:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   126ec:	00f70533          	add	a0,a4,a5
   126f0:	0d600893          	li	a7,214
   126f4:	00000073          	ecall
   126f8:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   126fc:	00f70733          	add	a4,a4,a5
   12700:	00e51c63          	bne	a0,a4,12718 <_sbrk+0x5c>
   12704:	00813083          	ld	ra,8(sp)
   12708:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1270c:	00078513          	mv	a0,a5
   12710:	01010113          	addi	sp,sp,16
   12714:	00008067          	ret
   12718:	05c000ef          	jal	12774 <__errno>
   1271c:	00813083          	ld	ra,8(sp)
   12720:	00c00793          	li	a5,12
   12724:	00f52023          	sw	a5,0(a0)
   12728:	fff00513          	li	a0,-1
   1272c:	01010113          	addi	sp,sp,16
   12730:	00008067          	ret

0000000000012734 <_write>:
   12734:	04000893          	li	a7,64
   12738:	00000073          	ecall
   1273c:	00054463          	bltz	a0,12744 <_write+0x10>
   12740:	00008067          	ret
   12744:	fe010113          	addi	sp,sp,-32
   12748:	00113c23          	sd	ra,24(sp)
   1274c:	00a13423          	sd	a0,8(sp)
   12750:	024000ef          	jal	12774 <__errno>
   12754:	00813783          	ld	a5,8(sp)
   12758:	01813083          	ld	ra,24(sp)
   1275c:	40f007bb          	negw	a5,a5
   12760:	00f52023          	sw	a5,0(a0)
   12764:	fff00793          	li	a5,-1
   12768:	00078513          	mv	a0,a5
   1276c:	02010113          	addi	sp,sp,32
   12770:	00008067          	ret

0000000000012774 <__errno>:
   12774:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12778:	00008067          	ret

Disassembly of section .rodata:

0000000000012780 <.rodata>:
   12780:	7250                	.insn	2, 0x7250
   12782:	7665                	.insn	2, 0x7665
   12784:	4120                	.insn	2, 0x4120
   12786:	203a                	.insn	2, 0x203a
	...
   12790:	0020                	.insn	2, 0x0020
   12792:	0000                	.insn	2, 0x0000
   12794:	0000                	.insn	2, 0x0000
   12796:	0000                	.insn	2, 0x0000
   12798:	000a                	.insn	2, 0x000a
   1279a:	0000                	.insn	2, 0x0000
   1279c:	0000                	.insn	2, 0x0000
   1279e:	0000                	.insn	2, 0x0000
   127a0:	74726f53          	.insn	4, 0x74726f53
   127a4:	6465                	.insn	2, 0x6465
   127a6:	4120                	.insn	2, 0x4120
   127a8:	203a                	.insn	2, 0x203a
   127aa:	0000                	.insn	2, 0x0000
   127ac:	0000                	.insn	2, 0x0000
   127ae:	0000                	.insn	2, 0x0000
   127b0:	7250                	.insn	2, 0x7250
   127b2:	7665                	.insn	2, 0x7665
   127b4:	4220                	.insn	2, 0x4220
   127b6:	203a                	.insn	2, 0x203a
	...
   127c0:	74726f53          	.insn	4, 0x74726f53
   127c4:	6465                	.insn	2, 0x6465
   127c6:	4220                	.insn	2, 0x4220
   127c8:	203a                	.insn	2, 0x203a
   127ca:	0000                	.insn	2, 0x0000
   127cc:	0000                	.insn	2, 0x0000
   127ce:	0000                	.insn	2, 0x0000
   127d0:	0005                	.insn	2, 0x0005
   127d2:	0000                	.insn	2, 0x0000
   127d4:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   127d8:	0005                	.insn	2, 0x0005
   127da:	0000                	.insn	2, 0x0000
   127dc:	0006                	.insn	2, 0x0006
   127de:	0000                	.insn	2, 0x0000
   127e0:	00000007          	.insn	4, 0x0007
   127e4:	0001                	.insn	2, 0x0001
   127e6:	0000                	.insn	2, 0x0000
   127e8:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   127ec:	0005                	.insn	2, 0x0005
   127ee:	0000                	.insn	2, 0x0000
   127f0:	0006                	.insn	2, 0x0006
   127f2:	0000                	.insn	2, 0x0000
   127f4:	0001                	.insn	2, 0x0001
	...

Disassembly of section .eh_frame:

00000000000127f8 <__EH_FRAME_BEGIN__>:
   127f8:	0000                	.insn	2, 0x0000
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
   0:	2941                	.insn	2, 0x2941
   2:	0000                	.insn	2, 0x0000
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <exit-0x1010c>
   c:	001f 0000 1004      	.insn	6, 0x10040000001f
  12:	7205                	.insn	2, 0x7205
  14:	3676                	.insn	2, 0x3676
  16:	6934                	.insn	2, 0x6934
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	.insn	2, 0x5f31
  1c:	326d                	.insn	2, 0x326d
  1e:	3070                	.insn	2, 0x3070
  20:	7a5f 6d6d 6c75      	.insn	6, 0x6c756d6d7a5f
  26:	7031                	.insn	2, 0x7031
  28:	0030                	.insn	2, 0x0030

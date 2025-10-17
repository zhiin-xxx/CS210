
test/build/with-syscall/quicksort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	0d0010ef          	jal	11204 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	514020ef          	jal	1265c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	52450513          	addi	a0,a0,1316 # 12524 <__libc_fini_array>
   1015c:	1e00106f          	j	1133c <atexit>
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
   10184:	7a5000ef          	jal	11128 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	1b450513          	addi	a0,a0,436 # 1133c <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	39050513          	addi	a0,a0,912 # 12524 <__libc_fini_array>
   1019c:	1a0010ef          	jal	1133c <atexit>
   101a0:	6f5000ef          	jal	11094 <__libc_init_array>
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
   101d4:	00013537          	lui	a0,0x13
   101d8:	84850513          	addi	a0,a0,-1976 # 12848 <__EH_FRAME_BEGIN__>
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
   1020c:	84850513          	addi	a0,a0,-1976 # 12848 <__EH_FRAME_BEGIN__>
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
   1044c:	000137b7          	lui	a5,0x13
   10450:	82078793          	addi	a5,a5,-2016 # 12820 <__errno+0x5c>
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
   10480:	7d078513          	addi	a0,a5,2000 # 127d0 <__errno+0xc>
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
   104b0:	7e078513          	addi	a0,a5,2016 # 127e0 <__errno+0x1c>
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
   104e0:	7e878513          	addi	a0,a5,2024 # 127e8 <__errno+0x24>
   104e4:	260000ef          	jal	10744 <print_s>
   104e8:	000127b7          	lui	a5,0x12
   104ec:	7f078513          	addi	a0,a5,2032 # 127f0 <__errno+0x2c>
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
   1053c:	7e078513          	addi	a0,a5,2016 # 127e0 <__errno+0x1c>
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
   1056c:	7e878513          	addi	a0,a5,2024 # 127e8 <__errno+0x24>
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
   105c4:	000137b7          	lui	a5,0x13
   105c8:	80078513          	addi	a0,a5,-2048 # 12800 <__errno+0x3c>
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
   105f8:	7e078513          	addi	a0,a5,2016 # 127e0 <__errno+0x1c>
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
   10628:	7e878513          	addi	a0,a5,2024 # 127e8 <__errno+0x24>
   1062c:	118000ef          	jal	10744 <print_s>
   10630:	000137b7          	lui	a5,0x13
   10634:	81078513          	addi	a0,a5,-2032 # 12810 <__errno+0x4c>
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
   10684:	7e078513          	addi	a0,a5,2016 # 127e0 <__errno+0x1c>
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
   106b4:	7e878513          	addi	a0,a5,2024 # 127e8 <__errno+0x24>
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

0000000000010844 <find_min>:
   10844:	fd010113          	addi	sp,sp,-48
   10848:	02113423          	sd	ra,40(sp)
   1084c:	02813023          	sd	s0,32(sp)
   10850:	03010413          	addi	s0,sp,48
   10854:	fca43c23          	sd	a0,-40(s0)
   10858:	00058793          	mv	a5,a1
   1085c:	fcf42a23          	sw	a5,-44(s0)
   10860:	00700893          	li	a7,7
   10864:	00000073          	ecall
   10868:	00050793          	mv	a5,a0
   1086c:	fef42623          	sw	a5,-20(s0)
   10870:	fec42783          	lw	a5,-20(s0)
   10874:	00078513          	mv	a0,a5
   10878:	02813083          	ld	ra,40(sp)
   1087c:	02013403          	ld	s0,32(sp)
   10880:	03010113          	addi	sp,sp,48
   10884:	00008067          	ret

0000000000010888 <__fp_lock>:
   10888:	00000513          	li	a0,0
   1088c:	00008067          	ret

0000000000010890 <stdio_exit_handler>:
   10890:	00013637          	lui	a2,0x13
   10894:	000125b7          	lui	a1,0x12
   10898:	00013537          	lui	a0,0x13
   1089c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   108a0:	06458593          	addi	a1,a1,100 # 12064 <_fclose_r>
   108a4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   108a8:	34c0006f          	j	10bf4 <_fwalk_sglue>

00000000000108ac <cleanup_stdio>:
   108ac:	00853583          	ld	a1,8(a0)
   108b0:	ff010113          	addi	sp,sp,-16
   108b4:	00813023          	sd	s0,0(sp)
   108b8:	00113423          	sd	ra,8(sp)
   108bc:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   108c0:	00050413          	mv	s0,a0
   108c4:	00f58463          	beq	a1,a5,108cc <cleanup_stdio+0x20>
   108c8:	79c010ef          	jal	12064 <_fclose_r>
   108cc:	01043583          	ld	a1,16(s0)
   108d0:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   108d4:	00f58663          	beq	a1,a5,108e0 <cleanup_stdio+0x34>
   108d8:	00040513          	mv	a0,s0
   108dc:	788010ef          	jal	12064 <_fclose_r>
   108e0:	01843583          	ld	a1,24(s0)
   108e4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   108e8:	00f58c63          	beq	a1,a5,10900 <cleanup_stdio+0x54>
   108ec:	00040513          	mv	a0,s0
   108f0:	00013403          	ld	s0,0(sp)
   108f4:	00813083          	ld	ra,8(sp)
   108f8:	01010113          	addi	sp,sp,16
   108fc:	7680106f          	j	12064 <_fclose_r>
   10900:	00813083          	ld	ra,8(sp)
   10904:	00013403          	ld	s0,0(sp)
   10908:	01010113          	addi	sp,sp,16
   1090c:	00008067          	ret

0000000000010910 <__fp_unlock>:
   10910:	00000513          	li	a0,0
   10914:	00008067          	ret

0000000000010918 <global_stdio_init.part.0>:
   10918:	fd010113          	addi	sp,sp,-48
   1091c:	000117b7          	lui	a5,0x11
   10920:	02813023          	sd	s0,32(sp)
   10924:	89078793          	addi	a5,a5,-1904 # 10890 <stdio_exit_handler>
   10928:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   1092c:	02113423          	sd	ra,40(sp)
   10930:	00913c23          	sd	s1,24(sp)
   10934:	01213823          	sd	s2,16(sp)
   10938:	01313423          	sd	s3,8(sp)
   1093c:	01413023          	sd	s4,0(sp)
   10940:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10944:	00800613          	li	a2,8
   10948:	00400793          	li	a5,4
   1094c:	00000593          	li	a1,0
   10950:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10954:	00f42823          	sw	a5,16(s0)
   10958:	00043023          	sd	zero,0(s0)
   1095c:	00043423          	sd	zero,8(s0)
   10960:	0a042623          	sw	zero,172(s0)
   10964:	00043c23          	sd	zero,24(s0)
   10968:	02042023          	sw	zero,32(s0)
   1096c:	02042423          	sw	zero,40(s0)
   10970:	7b8000ef          	jal	11128 <memset>
   10974:	00011a37          	lui	s4,0x11
   10978:	000119b7          	lui	s3,0x11
   1097c:	00011937          	lui	s2,0x11
   10980:	000114b7          	lui	s1,0x11
   10984:	000107b7          	lui	a5,0x10
   10988:	cc4a0a13          	addi	s4,s4,-828 # 10cc4 <__sread>
   1098c:	d2898993          	addi	s3,s3,-728 # 10d28 <__swrite>
   10990:	db090913          	addi	s2,s2,-592 # 10db0 <__sseek>
   10994:	e1448493          	addi	s1,s1,-492 # 10e14 <__sclose>
   10998:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1099c:	00800613          	li	a2,8
   109a0:	00000593          	li	a1,0
   109a4:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   109a8:	0cf42023          	sw	a5,192(s0)
   109ac:	03443c23          	sd	s4,56(s0)
   109b0:	05343023          	sd	s3,64(s0)
   109b4:	05243423          	sd	s2,72(s0)
   109b8:	04943823          	sd	s1,80(s0)
   109bc:	02843823          	sd	s0,48(s0)
   109c0:	0a043823          	sd	zero,176(s0)
   109c4:	0a043c23          	sd	zero,184(s0)
   109c8:	14042e23          	sw	zero,348(s0)
   109cc:	0c043423          	sd	zero,200(s0)
   109d0:	0c042823          	sw	zero,208(s0)
   109d4:	0c042c23          	sw	zero,216(s0)
   109d8:	750000ef          	jal	11128 <memset>
   109dc:	000207b7          	lui	a5,0x20
   109e0:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   109e4:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   109e8:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   109ec:	00800613          	li	a2,8
   109f0:	00000593          	li	a1,0
   109f4:	0f443423          	sd	s4,232(s0)
   109f8:	0f343823          	sd	s3,240(s0)
   109fc:	0f243c23          	sd	s2,248(s0)
   10a00:	10943023          	sd	s1,256(s0)
   10a04:	16f42823          	sw	a5,368(s0)
   10a08:	16043023          	sd	zero,352(s0)
   10a0c:	16043423          	sd	zero,360(s0)
   10a10:	20042623          	sw	zero,524(s0)
   10a14:	16043c23          	sd	zero,376(s0)
   10a18:	18042023          	sw	zero,384(s0)
   10a1c:	18042423          	sw	zero,392(s0)
   10a20:	0ee43023          	sd	a4,224(s0)
   10a24:	704000ef          	jal	11128 <memset>
   10a28:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10a2c:	19443c23          	sd	s4,408(s0)
   10a30:	1b343023          	sd	s3,416(s0)
   10a34:	1b243423          	sd	s2,424(s0)
   10a38:	1a943823          	sd	s1,432(s0)
   10a3c:	02813083          	ld	ra,40(sp)
   10a40:	18f43823          	sd	a5,400(s0)
   10a44:	02013403          	ld	s0,32(sp)
   10a48:	01813483          	ld	s1,24(sp)
   10a4c:	01013903          	ld	s2,16(sp)
   10a50:	00813983          	ld	s3,8(sp)
   10a54:	00013a03          	ld	s4,0(sp)
   10a58:	03010113          	addi	sp,sp,48
   10a5c:	00008067          	ret

0000000000010a60 <__sfp>:
   10a60:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10a64:	fd010113          	addi	sp,sp,-48
   10a68:	00913c23          	sd	s1,24(sp)
   10a6c:	02113423          	sd	ra,40(sp)
   10a70:	02813023          	sd	s0,32(sp)
   10a74:	00050493          	mv	s1,a0
   10a78:	10078463          	beqz	a5,10b80 <__sfp+0x120>
   10a7c:	000136b7          	lui	a3,0x13
   10a80:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10a84:	0086a703          	lw	a4,8(a3)
   10a88:	08e05c63          	blez	a4,10b20 <__sfp+0xc0>
   10a8c:	02071713          	slli	a4,a4,0x20
   10a90:	02075713          	srli	a4,a4,0x20
   10a94:	00171793          	slli	a5,a4,0x1
   10a98:	00e787b3          	add	a5,a5,a4
   10a9c:	0106b403          	ld	s0,16(a3)
   10aa0:	00279793          	slli	a5,a5,0x2
   10aa4:	40e787b3          	sub	a5,a5,a4
   10aa8:	00479793          	slli	a5,a5,0x4
   10aac:	00f407b3          	add	a5,s0,a5
   10ab0:	00c0006f          	j	10abc <__sfp+0x5c>
   10ab4:	0b040413          	addi	s0,s0,176
   10ab8:	06f40463          	beq	s0,a5,10b20 <__sfp+0xc0>
   10abc:	01041703          	lh	a4,16(s0)
   10ac0:	fe071ae3          	bnez	a4,10ab4 <__sfp+0x54>
   10ac4:	ffff07b7          	lui	a5,0xffff0
   10ac8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10acc:	00f42823          	sw	a5,16(s0)
   10ad0:	0a042623          	sw	zero,172(s0)
   10ad4:	00043023          	sd	zero,0(s0)
   10ad8:	00043423          	sd	zero,8(s0)
   10adc:	00043c23          	sd	zero,24(s0)
   10ae0:	02042023          	sw	zero,32(s0)
   10ae4:	02042423          	sw	zero,40(s0)
   10ae8:	00800613          	li	a2,8
   10aec:	00000593          	li	a1,0
   10af0:	0a440513          	addi	a0,s0,164
   10af4:	634000ef          	jal	11128 <memset>
   10af8:	04043c23          	sd	zero,88(s0)
   10afc:	06042023          	sw	zero,96(s0)
   10b00:	06043c23          	sd	zero,120(s0)
   10b04:	08042023          	sw	zero,128(s0)
   10b08:	02813083          	ld	ra,40(sp)
   10b0c:	00040513          	mv	a0,s0
   10b10:	02013403          	ld	s0,32(sp)
   10b14:	01813483          	ld	s1,24(sp)
   10b18:	03010113          	addi	sp,sp,48
   10b1c:	00008067          	ret
   10b20:	0006b403          	ld	s0,0(a3)
   10b24:	00040663          	beqz	s0,10b30 <__sfp+0xd0>
   10b28:	00040693          	mv	a3,s0
   10b2c:	f59ff06f          	j	10a84 <__sfp+0x24>
   10b30:	2d800593          	li	a1,728
   10b34:	00048513          	mv	a0,s1
   10b38:	00d13423          	sd	a3,8(sp)
   10b3c:	43d000ef          	jal	11778 <_malloc_r>
   10b40:	00813683          	ld	a3,8(sp)
   10b44:	00050413          	mv	s0,a0
   10b48:	04050063          	beqz	a0,10b88 <__sfp+0x128>
   10b4c:	00400793          	li	a5,4
   10b50:	00f52423          	sw	a5,8(a0)
   10b54:	01850513          	addi	a0,a0,24
   10b58:	00043023          	sd	zero,0(s0)
   10b5c:	00a43823          	sd	a0,16(s0)
   10b60:	2c000613          	li	a2,704
   10b64:	00000593          	li	a1,0
   10b68:	00d13423          	sd	a3,8(sp)
   10b6c:	5bc000ef          	jal	11128 <memset>
   10b70:	00813683          	ld	a3,8(sp)
   10b74:	0086b023          	sd	s0,0(a3)
   10b78:	00040693          	mv	a3,s0
   10b7c:	f09ff06f          	j	10a84 <__sfp+0x24>
   10b80:	d99ff0ef          	jal	10918 <global_stdio_init.part.0>
   10b84:	ef9ff06f          	j	10a7c <__sfp+0x1c>
   10b88:	0006b023          	sd	zero,0(a3)
   10b8c:	00c00793          	li	a5,12
   10b90:	00f4a023          	sw	a5,0(s1)
   10b94:	f75ff06f          	j	10b08 <__sfp+0xa8>

0000000000010b98 <__sinit>:
   10b98:	04853783          	ld	a5,72(a0)
   10b9c:	00078463          	beqz	a5,10ba4 <__sinit+0xc>
   10ba0:	00008067          	ret
   10ba4:	000117b7          	lui	a5,0x11
   10ba8:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10bac:	8ac78793          	addi	a5,a5,-1876 # 108ac <cleanup_stdio>
   10bb0:	04f53423          	sd	a5,72(a0)
   10bb4:	fe0716e3          	bnez	a4,10ba0 <__sinit+0x8>
   10bb8:	d61ff06f          	j	10918 <global_stdio_init.part.0>

0000000000010bbc <__sfp_lock_acquire>:
   10bbc:	00008067          	ret

0000000000010bc0 <__sfp_lock_release>:
   10bc0:	00008067          	ret

0000000000010bc4 <__fp_lock_all>:
   10bc4:	00013637          	lui	a2,0x13
   10bc8:	000115b7          	lui	a1,0x11
   10bcc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10bd0:	88858593          	addi	a1,a1,-1912 # 10888 <__fp_lock>
   10bd4:	00000513          	li	a0,0
   10bd8:	01c0006f          	j	10bf4 <_fwalk_sglue>

0000000000010bdc <__fp_unlock_all>:
   10bdc:	00013637          	lui	a2,0x13
   10be0:	000115b7          	lui	a1,0x11
   10be4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10be8:	91058593          	addi	a1,a1,-1776 # 10910 <__fp_unlock>
   10bec:	00000513          	li	a0,0
   10bf0:	0040006f          	j	10bf4 <_fwalk_sglue>

0000000000010bf4 <_fwalk_sglue>:
   10bf4:	fb010113          	addi	sp,sp,-80
   10bf8:	03213823          	sd	s2,48(sp)
   10bfc:	03313423          	sd	s3,40(sp)
   10c00:	03413023          	sd	s4,32(sp)
   10c04:	01513c23          	sd	s5,24(sp)
   10c08:	01613823          	sd	s6,16(sp)
   10c0c:	01713423          	sd	s7,8(sp)
   10c10:	04113423          	sd	ra,72(sp)
   10c14:	04813023          	sd	s0,64(sp)
   10c18:	02913c23          	sd	s1,56(sp)
   10c1c:	00060913          	mv	s2,a2
   10c20:	00050a13          	mv	s4,a0
   10c24:	00058a93          	mv	s5,a1
   10c28:	00000b13          	li	s6,0
   10c2c:	00100b93          	li	s7,1
   10c30:	fff00993          	li	s3,-1
   10c34:	00892783          	lw	a5,8(s2)
   10c38:	04f05a63          	blez	a5,10c8c <_fwalk_sglue+0x98>
   10c3c:	02079793          	slli	a5,a5,0x20
   10c40:	0207d793          	srli	a5,a5,0x20
   10c44:	00179493          	slli	s1,a5,0x1
   10c48:	00f484b3          	add	s1,s1,a5
   10c4c:	01093403          	ld	s0,16(s2)
   10c50:	00249493          	slli	s1,s1,0x2
   10c54:	40f484b3          	sub	s1,s1,a5
   10c58:	00449493          	slli	s1,s1,0x4
   10c5c:	009404b3          	add	s1,s0,s1
   10c60:	01045783          	lhu	a5,16(s0)
   10c64:	02fbf063          	bgeu	s7,a5,10c84 <_fwalk_sglue+0x90>
   10c68:	01241783          	lh	a5,18(s0)
   10c6c:	00040593          	mv	a1,s0
   10c70:	000a0513          	mv	a0,s4
   10c74:	01378863          	beq	a5,s3,10c84 <_fwalk_sglue+0x90>
   10c78:	000a80e7          	jalr	s5
   10c7c:	01656b33          	or	s6,a0,s6
   10c80:	000b0b1b          	sext.w	s6,s6
   10c84:	0b040413          	addi	s0,s0,176
   10c88:	fc941ce3          	bne	s0,s1,10c60 <_fwalk_sglue+0x6c>
   10c8c:	00093903          	ld	s2,0(s2)
   10c90:	fa0912e3          	bnez	s2,10c34 <_fwalk_sglue+0x40>
   10c94:	04813083          	ld	ra,72(sp)
   10c98:	04013403          	ld	s0,64(sp)
   10c9c:	03813483          	ld	s1,56(sp)
   10ca0:	03013903          	ld	s2,48(sp)
   10ca4:	02813983          	ld	s3,40(sp)
   10ca8:	02013a03          	ld	s4,32(sp)
   10cac:	01813a83          	ld	s5,24(sp)
   10cb0:	00813b83          	ld	s7,8(sp)
   10cb4:	000b0513          	mv	a0,s6
   10cb8:	01013b03          	ld	s6,16(sp)
   10cbc:	05010113          	addi	sp,sp,80
   10cc0:	00008067          	ret

0000000000010cc4 <__sread>:
   10cc4:	ff010113          	addi	sp,sp,-16
   10cc8:	00813023          	sd	s0,0(sp)
   10ccc:	00058413          	mv	s0,a1
   10cd0:	01259583          	lh	a1,18(a1)
   10cd4:	00113423          	sd	ra,8(sp)
   10cd8:	2ec000ef          	jal	10fc4 <_read_r>
   10cdc:	02054063          	bltz	a0,10cfc <__sread+0x38>
   10ce0:	09043783          	ld	a5,144(s0)
   10ce4:	00813083          	ld	ra,8(sp)
   10ce8:	00a787b3          	add	a5,a5,a0
   10cec:	08f43823          	sd	a5,144(s0)
   10cf0:	00013403          	ld	s0,0(sp)
   10cf4:	01010113          	addi	sp,sp,16
   10cf8:	00008067          	ret
   10cfc:	01045783          	lhu	a5,16(s0)
   10d00:	fffff737          	lui	a4,0xfffff
   10d04:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10d08:	00e7f7b3          	and	a5,a5,a4
   10d0c:	00813083          	ld	ra,8(sp)
   10d10:	00f41823          	sh	a5,16(s0)
   10d14:	00013403          	ld	s0,0(sp)
   10d18:	01010113          	addi	sp,sp,16
   10d1c:	00008067          	ret

0000000000010d20 <__seofread>:
   10d20:	00000513          	li	a0,0
   10d24:	00008067          	ret

0000000000010d28 <__swrite>:
   10d28:	01059783          	lh	a5,16(a1)
   10d2c:	fd010113          	addi	sp,sp,-48
   10d30:	00068313          	mv	t1,a3
   10d34:	02113423          	sd	ra,40(sp)
   10d38:	1007f693          	andi	a3,a5,256
   10d3c:	00058713          	mv	a4,a1
   10d40:	00060893          	mv	a7,a2
   10d44:	00050813          	mv	a6,a0
   10d48:	02069863          	bnez	a3,10d78 <__swrite+0x50>
   10d4c:	fffff6b7          	lui	a3,0xfffff
   10d50:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10d54:	02813083          	ld	ra,40(sp)
   10d58:	00d7f7b3          	and	a5,a5,a3
   10d5c:	01271583          	lh	a1,18(a4)
   10d60:	00f71823          	sh	a5,16(a4)
   10d64:	00030693          	mv	a3,t1
   10d68:	00088613          	mv	a2,a7
   10d6c:	00080513          	mv	a0,a6
   10d70:	03010113          	addi	sp,sp,48
   10d74:	2b80006f          	j	1102c <_write_r>
   10d78:	01259583          	lh	a1,18(a1)
   10d7c:	00c13823          	sd	a2,16(sp)
   10d80:	00200693          	li	a3,2
   10d84:	00000613          	li	a2,0
   10d88:	00613c23          	sd	t1,24(sp)
   10d8c:	00e13023          	sd	a4,0(sp)
   10d90:	00a13423          	sd	a0,8(sp)
   10d94:	1c8000ef          	jal	10f5c <_lseek_r>
   10d98:	00013703          	ld	a4,0(sp)
   10d9c:	01813303          	ld	t1,24(sp)
   10da0:	01013883          	ld	a7,16(sp)
   10da4:	01071783          	lh	a5,16(a4)
   10da8:	00813803          	ld	a6,8(sp)
   10dac:	fa1ff06f          	j	10d4c <__swrite+0x24>

0000000000010db0 <__sseek>:
   10db0:	ff010113          	addi	sp,sp,-16
   10db4:	00813023          	sd	s0,0(sp)
   10db8:	00058413          	mv	s0,a1
   10dbc:	01259583          	lh	a1,18(a1)
   10dc0:	00113423          	sd	ra,8(sp)
   10dc4:	198000ef          	jal	10f5c <_lseek_r>
   10dc8:	fff00713          	li	a4,-1
   10dcc:	01041783          	lh	a5,16(s0)
   10dd0:	02e50263          	beq	a0,a4,10df4 <__sseek+0x44>
   10dd4:	00001737          	lui	a4,0x1
   10dd8:	00e7e7b3          	or	a5,a5,a4
   10ddc:	00813083          	ld	ra,8(sp)
   10de0:	08a43823          	sd	a0,144(s0)
   10de4:	00f41823          	sh	a5,16(s0)
   10de8:	00013403          	ld	s0,0(sp)
   10dec:	01010113          	addi	sp,sp,16
   10df0:	00008067          	ret
   10df4:	80050713          	addi	a4,a0,-2048
   10df8:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10dfc:	00e7f7b3          	and	a5,a5,a4
   10e00:	00813083          	ld	ra,8(sp)
   10e04:	00f41823          	sh	a5,16(s0)
   10e08:	00013403          	ld	s0,0(sp)
   10e0c:	01010113          	addi	sp,sp,16
   10e10:	00008067          	ret

0000000000010e14 <__sclose>:
   10e14:	01259583          	lh	a1,18(a1)
   10e18:	0040006f          	j	10e1c <_close_r>

0000000000010e1c <_close_r>:
   10e1c:	fe010113          	addi	sp,sp,-32
   10e20:	00813823          	sd	s0,16(sp)
   10e24:	00913423          	sd	s1,8(sp)
   10e28:	00050493          	mv	s1,a0
   10e2c:	00058513          	mv	a0,a1
   10e30:	00113c23          	sd	ra,24(sp)
   10e34:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10e38:	7e4010ef          	jal	1261c <_close>
   10e3c:	fff00793          	li	a5,-1
   10e40:	00f50c63          	beq	a0,a5,10e58 <_close_r+0x3c>
   10e44:	01813083          	ld	ra,24(sp)
   10e48:	01013403          	ld	s0,16(sp)
   10e4c:	00813483          	ld	s1,8(sp)
   10e50:	02010113          	addi	sp,sp,32
   10e54:	00008067          	ret
   10e58:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10e5c:	fe0784e3          	beqz	a5,10e44 <_close_r+0x28>
   10e60:	01813083          	ld	ra,24(sp)
   10e64:	01013403          	ld	s0,16(sp)
   10e68:	00f4a023          	sw	a5,0(s1)
   10e6c:	00813483          	ld	s1,8(sp)
   10e70:	02010113          	addi	sp,sp,32
   10e74:	00008067          	ret

0000000000010e78 <_reclaim_reent>:
   10e78:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10e7c:	0ca78e63          	beq	a5,a0,10f58 <_reclaim_reent+0xe0>
   10e80:	06853583          	ld	a1,104(a0)
   10e84:	fd010113          	addi	sp,sp,-48
   10e88:	00913c23          	sd	s1,24(sp)
   10e8c:	02113423          	sd	ra,40(sp)
   10e90:	02813023          	sd	s0,32(sp)
   10e94:	00050493          	mv	s1,a0
   10e98:	04058863          	beqz	a1,10ee8 <_reclaim_reent+0x70>
   10e9c:	01213823          	sd	s2,16(sp)
   10ea0:	01313423          	sd	s3,8(sp)
   10ea4:	00000913          	li	s2,0
   10ea8:	20000993          	li	s3,512
   10eac:	012587b3          	add	a5,a1,s2
   10eb0:	0007b403          	ld	s0,0(a5)
   10eb4:	00040e63          	beqz	s0,10ed0 <_reclaim_reent+0x58>
   10eb8:	00040593          	mv	a1,s0
   10ebc:	00043403          	ld	s0,0(s0)
   10ec0:	00048513          	mv	a0,s1
   10ec4:	5b0000ef          	jal	11474 <_free_r>
   10ec8:	fe0418e3          	bnez	s0,10eb8 <_reclaim_reent+0x40>
   10ecc:	0684b583          	ld	a1,104(s1)
   10ed0:	00890913          	addi	s2,s2,8
   10ed4:	fd391ce3          	bne	s2,s3,10eac <_reclaim_reent+0x34>
   10ed8:	00048513          	mv	a0,s1
   10edc:	598000ef          	jal	11474 <_free_r>
   10ee0:	01013903          	ld	s2,16(sp)
   10ee4:	00813983          	ld	s3,8(sp)
   10ee8:	0504b583          	ld	a1,80(s1)
   10eec:	00058663          	beqz	a1,10ef8 <_reclaim_reent+0x80>
   10ef0:	00048513          	mv	a0,s1
   10ef4:	580000ef          	jal	11474 <_free_r>
   10ef8:	0604b403          	ld	s0,96(s1)
   10efc:	00040c63          	beqz	s0,10f14 <_reclaim_reent+0x9c>
   10f00:	00040593          	mv	a1,s0
   10f04:	00043403          	ld	s0,0(s0)
   10f08:	00048513          	mv	a0,s1
   10f0c:	568000ef          	jal	11474 <_free_r>
   10f10:	fe0418e3          	bnez	s0,10f00 <_reclaim_reent+0x88>
   10f14:	0784b583          	ld	a1,120(s1)
   10f18:	00058663          	beqz	a1,10f24 <_reclaim_reent+0xac>
   10f1c:	00048513          	mv	a0,s1
   10f20:	554000ef          	jal	11474 <_free_r>
   10f24:	0484b783          	ld	a5,72(s1)
   10f28:	00078e63          	beqz	a5,10f44 <_reclaim_reent+0xcc>
   10f2c:	02013403          	ld	s0,32(sp)
   10f30:	02813083          	ld	ra,40(sp)
   10f34:	00048513          	mv	a0,s1
   10f38:	01813483          	ld	s1,24(sp)
   10f3c:	03010113          	addi	sp,sp,48
   10f40:	00078067          	jr	a5
   10f44:	02813083          	ld	ra,40(sp)
   10f48:	02013403          	ld	s0,32(sp)
   10f4c:	01813483          	ld	s1,24(sp)
   10f50:	03010113          	addi	sp,sp,48
   10f54:	00008067          	ret
   10f58:	00008067          	ret

0000000000010f5c <_lseek_r>:
   10f5c:	fe010113          	addi	sp,sp,-32
   10f60:	00058793          	mv	a5,a1
   10f64:	00813823          	sd	s0,16(sp)
   10f68:	00913423          	sd	s1,8(sp)
   10f6c:	00060593          	mv	a1,a2
   10f70:	00050493          	mv	s1,a0
   10f74:	00068613          	mv	a2,a3
   10f78:	00078513          	mv	a0,a5
   10f7c:	00113c23          	sd	ra,24(sp)
   10f80:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10f84:	708010ef          	jal	1268c <_lseek>
   10f88:	fff00793          	li	a5,-1
   10f8c:	00f50c63          	beq	a0,a5,10fa4 <_lseek_r+0x48>
   10f90:	01813083          	ld	ra,24(sp)
   10f94:	01013403          	ld	s0,16(sp)
   10f98:	00813483          	ld	s1,8(sp)
   10f9c:	02010113          	addi	sp,sp,32
   10fa0:	00008067          	ret
   10fa4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10fa8:	fe0784e3          	beqz	a5,10f90 <_lseek_r+0x34>
   10fac:	01813083          	ld	ra,24(sp)
   10fb0:	01013403          	ld	s0,16(sp)
   10fb4:	00f4a023          	sw	a5,0(s1)
   10fb8:	00813483          	ld	s1,8(sp)
   10fbc:	02010113          	addi	sp,sp,32
   10fc0:	00008067          	ret

0000000000010fc4 <_read_r>:
   10fc4:	fe010113          	addi	sp,sp,-32
   10fc8:	00058793          	mv	a5,a1
   10fcc:	00813823          	sd	s0,16(sp)
   10fd0:	00913423          	sd	s1,8(sp)
   10fd4:	00060593          	mv	a1,a2
   10fd8:	00050493          	mv	s1,a0
   10fdc:	00068613          	mv	a2,a3
   10fe0:	00078513          	mv	a0,a5
   10fe4:	00113c23          	sd	ra,24(sp)
   10fe8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10fec:	6e0010ef          	jal	126cc <_read>
   10ff0:	fff00793          	li	a5,-1
   10ff4:	00f50c63          	beq	a0,a5,1100c <_read_r+0x48>
   10ff8:	01813083          	ld	ra,24(sp)
   10ffc:	01013403          	ld	s0,16(sp)
   11000:	00813483          	ld	s1,8(sp)
   11004:	02010113          	addi	sp,sp,32
   11008:	00008067          	ret
   1100c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11010:	fe0784e3          	beqz	a5,10ff8 <_read_r+0x34>
   11014:	01813083          	ld	ra,24(sp)
   11018:	01013403          	ld	s0,16(sp)
   1101c:	00f4a023          	sw	a5,0(s1)
   11020:	00813483          	ld	s1,8(sp)
   11024:	02010113          	addi	sp,sp,32
   11028:	00008067          	ret

000000000001102c <_write_r>:
   1102c:	fe010113          	addi	sp,sp,-32
   11030:	00058793          	mv	a5,a1
   11034:	00813823          	sd	s0,16(sp)
   11038:	00913423          	sd	s1,8(sp)
   1103c:	00060593          	mv	a1,a2
   11040:	00050493          	mv	s1,a0
   11044:	00068613          	mv	a2,a3
   11048:	00078513          	mv	a0,a5
   1104c:	00113c23          	sd	ra,24(sp)
   11050:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   11054:	730010ef          	jal	12784 <_write>
   11058:	fff00793          	li	a5,-1
   1105c:	00f50c63          	beq	a0,a5,11074 <_write_r+0x48>
   11060:	01813083          	ld	ra,24(sp)
   11064:	01013403          	ld	s0,16(sp)
   11068:	00813483          	ld	s1,8(sp)
   1106c:	02010113          	addi	sp,sp,32
   11070:	00008067          	ret
   11074:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11078:	fe0784e3          	beqz	a5,11060 <_write_r+0x34>
   1107c:	01813083          	ld	ra,24(sp)
   11080:	01013403          	ld	s0,16(sp)
   11084:	00f4a023          	sw	a5,0(s1)
   11088:	00813483          	ld	s1,8(sp)
   1108c:	02010113          	addi	sp,sp,32
   11090:	00008067          	ret

0000000000011094 <__libc_init_array>:
   11094:	fe010113          	addi	sp,sp,-32
   11098:	00813823          	sd	s0,16(sp)
   1109c:	01213023          	sd	s2,0(sp)
   110a0:	00013437          	lui	s0,0x13
   110a4:	00013937          	lui	s2,0x13
   110a8:	00113c23          	sd	ra,24(sp)
   110ac:	00913423          	sd	s1,8(sp)
   110b0:	00090913          	mv	s2,s2
   110b4:	00040413          	mv	s0,s0
   110b8:	02890263          	beq	s2,s0,110dc <__libc_init_array+0x48>
   110bc:	40890933          	sub	s2,s2,s0
   110c0:	40395913          	srai	s2,s2,0x3
   110c4:	00000493          	li	s1,0
   110c8:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   110cc:	00148493          	addi	s1,s1,1
   110d0:	00840413          	addi	s0,s0,8
   110d4:	000780e7          	jalr	a5
   110d8:	ff24e8e3          	bltu	s1,s2,110c8 <__libc_init_array+0x34>
   110dc:	00013937          	lui	s2,0x13
   110e0:	00013437          	lui	s0,0x13
   110e4:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   110e8:	00040413          	mv	s0,s0
   110ec:	02890263          	beq	s2,s0,11110 <__libc_init_array+0x7c>
   110f0:	40890933          	sub	s2,s2,s0
   110f4:	40395913          	srai	s2,s2,0x3
   110f8:	00000493          	li	s1,0
   110fc:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   11100:	00148493          	addi	s1,s1,1
   11104:	00840413          	addi	s0,s0,8
   11108:	000780e7          	jalr	a5
   1110c:	ff24e8e3          	bltu	s1,s2,110fc <__libc_init_array+0x68>
   11110:	01813083          	ld	ra,24(sp)
   11114:	01013403          	ld	s0,16(sp)
   11118:	00813483          	ld	s1,8(sp)
   1111c:	00013903          	ld	s2,0(sp)
   11120:	02010113          	addi	sp,sp,32
   11124:	00008067          	ret

0000000000011128 <memset>:
   11128:	00f00313          	li	t1,15
   1112c:	00050713          	mv	a4,a0
   11130:	02c37a63          	bgeu	t1,a2,11164 <memset+0x3c>
   11134:	00f77793          	andi	a5,a4,15
   11138:	0a079063          	bnez	a5,111d8 <memset+0xb0>
   1113c:	06059e63          	bnez	a1,111b8 <memset+0x90>
   11140:	ff067693          	andi	a3,a2,-16
   11144:	00f67613          	andi	a2,a2,15
   11148:	00e686b3          	add	a3,a3,a4
   1114c:	00b73023          	sd	a1,0(a4)
   11150:	00b73423          	sd	a1,8(a4)
   11154:	01070713          	addi	a4,a4,16
   11158:	fed76ae3          	bltu	a4,a3,1114c <memset+0x24>
   1115c:	00061463          	bnez	a2,11164 <memset+0x3c>
   11160:	00008067          	ret
   11164:	40c306b3          	sub	a3,t1,a2
   11168:	00269693          	slli	a3,a3,0x2
   1116c:	00000297          	auipc	t0,0x0
   11170:	005686b3          	add	a3,a3,t0
   11174:	00c68067          	jr	12(a3)
   11178:	00b70723          	sb	a1,14(a4)
   1117c:	00b706a3          	sb	a1,13(a4)
   11180:	00b70623          	sb	a1,12(a4)
   11184:	00b705a3          	sb	a1,11(a4)
   11188:	00b70523          	sb	a1,10(a4)
   1118c:	00b704a3          	sb	a1,9(a4)
   11190:	00b70423          	sb	a1,8(a4)
   11194:	00b703a3          	sb	a1,7(a4)
   11198:	00b70323          	sb	a1,6(a4)
   1119c:	00b702a3          	sb	a1,5(a4)
   111a0:	00b70223          	sb	a1,4(a4)
   111a4:	00b701a3          	sb	a1,3(a4)
   111a8:	00b70123          	sb	a1,2(a4)
   111ac:	00b700a3          	sb	a1,1(a4)
   111b0:	00b70023          	sb	a1,0(a4)
   111b4:	00008067          	ret
   111b8:	0ff5f593          	zext.b	a1,a1
   111bc:	00859693          	slli	a3,a1,0x8
   111c0:	00d5e5b3          	or	a1,a1,a3
   111c4:	01059693          	slli	a3,a1,0x10
   111c8:	00d5e5b3          	or	a1,a1,a3
   111cc:	02059693          	slli	a3,a1,0x20
   111d0:	00d5e5b3          	or	a1,a1,a3
   111d4:	f6dff06f          	j	11140 <memset+0x18>
   111d8:	00279693          	slli	a3,a5,0x2
   111dc:	00000297          	auipc	t0,0x0
   111e0:	005686b3          	add	a3,a3,t0
   111e4:	00008293          	mv	t0,ra
   111e8:	f98680e7          	jalr	-104(a3)
   111ec:	00028093          	mv	ra,t0
   111f0:	ff078793          	addi	a5,a5,-16
   111f4:	40f70733          	sub	a4,a4,a5
   111f8:	00f60633          	add	a2,a2,a5
   111fc:	f6c374e3          	bgeu	t1,a2,11164 <memset+0x3c>
   11200:	f3dff06f          	j	1113c <memset+0x14>

0000000000011204 <__call_exitprocs>:
   11204:	fb010113          	addi	sp,sp,-80
   11208:	03413023          	sd	s4,32(sp)
   1120c:	03213823          	sd	s2,48(sp)
   11210:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   11214:	04113423          	sd	ra,72(sp)
   11218:	06090e63          	beqz	s2,11294 <__call_exitprocs+0x90>
   1121c:	03313423          	sd	s3,40(sp)
   11220:	01513c23          	sd	s5,24(sp)
   11224:	01613823          	sd	s6,16(sp)
   11228:	01713423          	sd	s7,8(sp)
   1122c:	04813023          	sd	s0,64(sp)
   11230:	02913c23          	sd	s1,56(sp)
   11234:	01813023          	sd	s8,0(sp)
   11238:	00050b13          	mv	s6,a0
   1123c:	00058b93          	mv	s7,a1
   11240:	fff00993          	li	s3,-1
   11244:	00100a93          	li	s5,1
   11248:	00892403          	lw	s0,8(s2)
   1124c:	fff4041b          	addiw	s0,s0,-1
   11250:	02044463          	bltz	s0,11278 <__call_exitprocs+0x74>
   11254:	01090493          	addi	s1,s2,16
   11258:	00341793          	slli	a5,s0,0x3
   1125c:	00f484b3          	add	s1,s1,a5
   11260:	040b8463          	beqz	s7,112a8 <__call_exitprocs+0xa4>
   11264:	2004b783          	ld	a5,512(s1)
   11268:	05778063          	beq	a5,s7,112a8 <__call_exitprocs+0xa4>
   1126c:	fff4041b          	addiw	s0,s0,-1
   11270:	ff848493          	addi	s1,s1,-8
   11274:	ff3418e3          	bne	s0,s3,11264 <__call_exitprocs+0x60>
   11278:	04013403          	ld	s0,64(sp)
   1127c:	03813483          	ld	s1,56(sp)
   11280:	02813983          	ld	s3,40(sp)
   11284:	01813a83          	ld	s5,24(sp)
   11288:	01013b03          	ld	s6,16(sp)
   1128c:	00813b83          	ld	s7,8(sp)
   11290:	00013c03          	ld	s8,0(sp)
   11294:	04813083          	ld	ra,72(sp)
   11298:	03013903          	ld	s2,48(sp)
   1129c:	02013a03          	ld	s4,32(sp)
   112a0:	05010113          	addi	sp,sp,80
   112a4:	00008067          	ret
   112a8:	00892783          	lw	a5,8(s2)
   112ac:	0004b683          	ld	a3,0(s1)
   112b0:	fff7879b          	addiw	a5,a5,-1
   112b4:	06878a63          	beq	a5,s0,11328 <__call_exitprocs+0x124>
   112b8:	0004b023          	sd	zero,0(s1)
   112bc:	02068663          	beqz	a3,112e8 <__call_exitprocs+0xe4>
   112c0:	31092783          	lw	a5,784(s2)
   112c4:	008a973b          	sllw	a4,s5,s0
   112c8:	00892c03          	lw	s8,8(s2)
   112cc:	00e7f7b3          	and	a5,a5,a4
   112d0:	02079463          	bnez	a5,112f8 <__call_exitprocs+0xf4>
   112d4:	000680e7          	jalr	a3
   112d8:	00892703          	lw	a4,8(s2)
   112dc:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   112e0:	03871e63          	bne	a4,s8,1131c <__call_exitprocs+0x118>
   112e4:	03279c63          	bne	a5,s2,1131c <__call_exitprocs+0x118>
   112e8:	fff4041b          	addiw	s0,s0,-1
   112ec:	ff848493          	addi	s1,s1,-8
   112f0:	f73418e3          	bne	s0,s3,11260 <__call_exitprocs+0x5c>
   112f4:	f85ff06f          	j	11278 <__call_exitprocs+0x74>
   112f8:	31492783          	lw	a5,788(s2)
   112fc:	1004b583          	ld	a1,256(s1)
   11300:	00f77733          	and	a4,a4,a5
   11304:	02071663          	bnez	a4,11330 <__call_exitprocs+0x12c>
   11308:	000b0513          	mv	a0,s6
   1130c:	000680e7          	jalr	a3
   11310:	00892703          	lw	a4,8(s2)
   11314:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11318:	fd8706e3          	beq	a4,s8,112e4 <__call_exitprocs+0xe0>
   1131c:	f4078ee3          	beqz	a5,11278 <__call_exitprocs+0x74>
   11320:	00078913          	mv	s2,a5
   11324:	f25ff06f          	j	11248 <__call_exitprocs+0x44>
   11328:	00892423          	sw	s0,8(s2)
   1132c:	f91ff06f          	j	112bc <__call_exitprocs+0xb8>
   11330:	00058513          	mv	a0,a1
   11334:	000680e7          	jalr	a3
   11338:	fa1ff06f          	j	112d8 <__call_exitprocs+0xd4>

000000000001133c <atexit>:
   1133c:	00050593          	mv	a1,a0
   11340:	00000693          	li	a3,0
   11344:	00000613          	li	a2,0
   11348:	00000513          	li	a0,0
   1134c:	2340106f          	j	12580 <__register_exitproc>

0000000000011350 <_malloc_trim_r>:
   11350:	fd010113          	addi	sp,sp,-48
   11354:	01213823          	sd	s2,16(sp)
   11358:	00013937          	lui	s2,0x13
   1135c:	02813023          	sd	s0,32(sp)
   11360:	00913c23          	sd	s1,24(sp)
   11364:	01313423          	sd	s3,8(sp)
   11368:	00058413          	mv	s0,a1
   1136c:	02113423          	sd	ra,40(sp)
   11370:	00050993          	mv	s3,a0
   11374:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11378:	4e5000ef          	jal	1205c <__malloc_lock>
   1137c:	01093783          	ld	a5,16(s2)
   11380:	00001737          	lui	a4,0x1
   11384:	0087b483          	ld	s1,8(a5)
   11388:	ffc4f493          	andi	s1,s1,-4
   1138c:	7ff48793          	addi	a5,s1,2047
   11390:	7e078793          	addi	a5,a5,2016
   11394:	40878433          	sub	s0,a5,s0
   11398:	00c45413          	srli	s0,s0,0xc
   1139c:	fff40413          	addi	s0,s0,-1
   113a0:	00c41413          	slli	s0,s0,0xc
   113a4:	00e44e63          	blt	s0,a4,113c0 <_malloc_trim_r+0x70>
   113a8:	00000593          	li	a1,0
   113ac:	00098513          	mv	a0,s3
   113b0:	118010ef          	jal	124c8 <_sbrk_r>
   113b4:	01093783          	ld	a5,16(s2)
   113b8:	009787b3          	add	a5,a5,s1
   113bc:	02f50663          	beq	a0,a5,113e8 <_malloc_trim_r+0x98>
   113c0:	00098513          	mv	a0,s3
   113c4:	49d000ef          	jal	12060 <__malloc_unlock>
   113c8:	02813083          	ld	ra,40(sp)
   113cc:	02013403          	ld	s0,32(sp)
   113d0:	01813483          	ld	s1,24(sp)
   113d4:	01013903          	ld	s2,16(sp)
   113d8:	00813983          	ld	s3,8(sp)
   113dc:	00000513          	li	a0,0
   113e0:	03010113          	addi	sp,sp,48
   113e4:	00008067          	ret
   113e8:	408005b3          	neg	a1,s0
   113ec:	00098513          	mv	a0,s3
   113f0:	0d8010ef          	jal	124c8 <_sbrk_r>
   113f4:	fff00793          	li	a5,-1
   113f8:	04f50463          	beq	a0,a5,11440 <_malloc_trim_r+0xf0>
   113fc:	01093683          	ld	a3,16(s2)
   11400:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11404:	408484b3          	sub	s1,s1,s0
   11408:	0014e493          	ori	s1,s1,1
   1140c:	00098513          	mv	a0,s3
   11410:	408787bb          	subw	a5,a5,s0
   11414:	0096b423          	sd	s1,8(a3)
   11418:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1141c:	445000ef          	jal	12060 <__malloc_unlock>
   11420:	02813083          	ld	ra,40(sp)
   11424:	02013403          	ld	s0,32(sp)
   11428:	01813483          	ld	s1,24(sp)
   1142c:	01013903          	ld	s2,16(sp)
   11430:	00813983          	ld	s3,8(sp)
   11434:	00100513          	li	a0,1
   11438:	03010113          	addi	sp,sp,48
   1143c:	00008067          	ret
   11440:	00000593          	li	a1,0
   11444:	00098513          	mv	a0,s3
   11448:	080010ef          	jal	124c8 <_sbrk_r>
   1144c:	01093703          	ld	a4,16(s2)
   11450:	01f00693          	li	a3,31
   11454:	40e507b3          	sub	a5,a0,a4
   11458:	f6f6d4e3          	bge	a3,a5,113c0 <_malloc_trim_r+0x70>
   1145c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11460:	0017e793          	ori	a5,a5,1
   11464:	40c50533          	sub	a0,a0,a2
   11468:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   1146c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11470:	f51ff06f          	j	113c0 <_malloc_trim_r+0x70>

0000000000011474 <_free_r>:
   11474:	12058863          	beqz	a1,115a4 <_free_r+0x130>
   11478:	fe010113          	addi	sp,sp,-32
   1147c:	00813823          	sd	s0,16(sp)
   11480:	00b13423          	sd	a1,8(sp)
   11484:	00050413          	mv	s0,a0
   11488:	00113c23          	sd	ra,24(sp)
   1148c:	3d1000ef          	jal	1205c <__malloc_lock>
   11490:	00813583          	ld	a1,8(sp)
   11494:	00013837          	lui	a6,0x13
   11498:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1149c:	ff85b503          	ld	a0,-8(a1)
   114a0:	ff058713          	addi	a4,a1,-16
   114a4:	01083883          	ld	a7,16(a6)
   114a8:	ffe57793          	andi	a5,a0,-2
   114ac:	00f70633          	add	a2,a4,a5
   114b0:	00863683          	ld	a3,8(a2)
   114b4:	00157313          	andi	t1,a0,1
   114b8:	ffc6f693          	andi	a3,a3,-4
   114bc:	18c88e63          	beq	a7,a2,11658 <_free_r+0x1e4>
   114c0:	00d63423          	sd	a3,8(a2)
   114c4:	00d608b3          	add	a7,a2,a3
   114c8:	0088b883          	ld	a7,8(a7)
   114cc:	0018f893          	andi	a7,a7,1
   114d0:	08031e63          	bnez	t1,1156c <_free_r+0xf8>
   114d4:	ff05b303          	ld	t1,-16(a1)
   114d8:	000135b7          	lui	a1,0x13
   114dc:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   114e0:	40670733          	sub	a4,a4,t1
   114e4:	01073503          	ld	a0,16(a4)
   114e8:	006787b3          	add	a5,a5,t1
   114ec:	14b50063          	beq	a0,a1,1162c <_free_r+0x1b8>
   114f0:	01873303          	ld	t1,24(a4)
   114f4:	00653c23          	sd	t1,24(a0)
   114f8:	00a33823          	sd	a0,16(t1) # 10220 <quicksort+0x4>
   114fc:	1a088263          	beqz	a7,116a0 <_free_r+0x22c>
   11500:	0017e693          	ori	a3,a5,1
   11504:	00d73423          	sd	a3,8(a4)
   11508:	00f63023          	sd	a5,0(a2)
   1150c:	1ff00693          	li	a3,511
   11510:	0af6e663          	bltu	a3,a5,115bc <_free_r+0x148>
   11514:	0037d793          	srli	a5,a5,0x3
   11518:	00179693          	slli	a3,a5,0x1
   1151c:	0026869b          	addiw	a3,a3,2
   11520:	00369693          	slli	a3,a3,0x3
   11524:	00883503          	ld	a0,8(a6)
   11528:	00d806b3          	add	a3,a6,a3
   1152c:	0006b583          	ld	a1,0(a3)
   11530:	4027d61b          	sraiw	a2,a5,0x2
   11534:	00100793          	li	a5,1
   11538:	00c797b3          	sll	a5,a5,a2
   1153c:	00a7e7b3          	or	a5,a5,a0
   11540:	ff068613          	addi	a2,a3,-16
   11544:	00b73823          	sd	a1,16(a4)
   11548:	00c73c23          	sd	a2,24(a4)
   1154c:	00f83423          	sd	a5,8(a6)
   11550:	00e6b023          	sd	a4,0(a3)
   11554:	00e5bc23          	sd	a4,24(a1)
   11558:	00040513          	mv	a0,s0
   1155c:	01013403          	ld	s0,16(sp)
   11560:	01813083          	ld	ra,24(sp)
   11564:	02010113          	addi	sp,sp,32
   11568:	2f90006f          	j	12060 <__malloc_unlock>
   1156c:	02089e63          	bnez	a7,115a8 <_free_r+0x134>
   11570:	000135b7          	lui	a1,0x13
   11574:	00d787b3          	add	a5,a5,a3
   11578:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1157c:	01063683          	ld	a3,16(a2)
   11580:	0017e893          	ori	a7,a5,1
   11584:	00f70533          	add	a0,a4,a5
   11588:	16b68663          	beq	a3,a1,116f4 <_free_r+0x280>
   1158c:	01863603          	ld	a2,24(a2)
   11590:	00c6bc23          	sd	a2,24(a3)
   11594:	00d63823          	sd	a3,16(a2)
   11598:	01173423          	sd	a7,8(a4)
   1159c:	00f53023          	sd	a5,0(a0)
   115a0:	f6dff06f          	j	1150c <_free_r+0x98>
   115a4:	00008067          	ret
   115a8:	00156513          	ori	a0,a0,1
   115ac:	fea5bc23          	sd	a0,-8(a1)
   115b0:	00f63023          	sd	a5,0(a2)
   115b4:	1ff00693          	li	a3,511
   115b8:	f4f6fee3          	bgeu	a3,a5,11514 <_free_r+0xa0>
   115bc:	0097d693          	srli	a3,a5,0x9
   115c0:	00400613          	li	a2,4
   115c4:	0ed66263          	bltu	a2,a3,116a8 <_free_r+0x234>
   115c8:	0067d693          	srli	a3,a5,0x6
   115cc:	00169593          	slli	a1,a3,0x1
   115d0:	0725859b          	addiw	a1,a1,114
   115d4:	00359593          	slli	a1,a1,0x3
   115d8:	0386861b          	addiw	a2,a3,56
   115dc:	00b805b3          	add	a1,a6,a1
   115e0:	0005b683          	ld	a3,0(a1)
   115e4:	ff058593          	addi	a1,a1,-16
   115e8:	00d59863          	bne	a1,a3,115f8 <_free_r+0x184>
   115ec:	1240006f          	j	11710 <_free_r+0x29c>
   115f0:	0106b683          	ld	a3,16(a3)
   115f4:	00d58863          	beq	a1,a3,11604 <_free_r+0x190>
   115f8:	0086b603          	ld	a2,8(a3)
   115fc:	ffc67613          	andi	a2,a2,-4
   11600:	fec7e8e3          	bltu	a5,a2,115f0 <_free_r+0x17c>
   11604:	0186b583          	ld	a1,24(a3)
   11608:	00b73c23          	sd	a1,24(a4)
   1160c:	00d73823          	sd	a3,16(a4)
   11610:	00040513          	mv	a0,s0
   11614:	01013403          	ld	s0,16(sp)
   11618:	01813083          	ld	ra,24(sp)
   1161c:	00e5b823          	sd	a4,16(a1)
   11620:	00e6bc23          	sd	a4,24(a3)
   11624:	02010113          	addi	sp,sp,32
   11628:	2390006f          	j	12060 <__malloc_unlock>
   1162c:	0a089263          	bnez	a7,116d0 <_free_r+0x25c>
   11630:	01863583          	ld	a1,24(a2)
   11634:	01063603          	ld	a2,16(a2)
   11638:	00f686b3          	add	a3,a3,a5
   1163c:	0016e793          	ori	a5,a3,1
   11640:	00b63c23          	sd	a1,24(a2)
   11644:	00c5b823          	sd	a2,16(a1)
   11648:	00f73423          	sd	a5,8(a4)
   1164c:	00d70733          	add	a4,a4,a3
   11650:	00d73023          	sd	a3,0(a4)
   11654:	f05ff06f          	j	11558 <_free_r+0xe4>
   11658:	00d786b3          	add	a3,a5,a3
   1165c:	02031063          	bnez	t1,1167c <_free_r+0x208>
   11660:	ff05b783          	ld	a5,-16(a1)
   11664:	40f70733          	sub	a4,a4,a5
   11668:	01073603          	ld	a2,16(a4)
   1166c:	00f686b3          	add	a3,a3,a5
   11670:	01873783          	ld	a5,24(a4)
   11674:	00f63c23          	sd	a5,24(a2)
   11678:	00c7b823          	sd	a2,16(a5)
   1167c:	0016e613          	ori	a2,a3,1
   11680:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11684:	00c73423          	sd	a2,8(a4)
   11688:	00e83823          	sd	a4,16(a6)
   1168c:	ecf6e6e3          	bltu	a3,a5,11558 <_free_r+0xe4>
   11690:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11694:	00040513          	mv	a0,s0
   11698:	cb9ff0ef          	jal	11350 <_malloc_trim_r>
   1169c:	ebdff06f          	j	11558 <_free_r+0xe4>
   116a0:	00d787b3          	add	a5,a5,a3
   116a4:	ed9ff06f          	j	1157c <_free_r+0x108>
   116a8:	01400613          	li	a2,20
   116ac:	02d67a63          	bgeu	a2,a3,116e0 <_free_r+0x26c>
   116b0:	05400613          	li	a2,84
   116b4:	06d66c63          	bltu	a2,a3,1172c <_free_r+0x2b8>
   116b8:	00c7d693          	srli	a3,a5,0xc
   116bc:	00169593          	slli	a1,a3,0x1
   116c0:	0de5859b          	addiw	a1,a1,222
   116c4:	00359593          	slli	a1,a1,0x3
   116c8:	06e6861b          	addiw	a2,a3,110
   116cc:	f11ff06f          	j	115dc <_free_r+0x168>
   116d0:	0017e693          	ori	a3,a5,1
   116d4:	00d73423          	sd	a3,8(a4)
   116d8:	00f63023          	sd	a5,0(a2)
   116dc:	e7dff06f          	j	11558 <_free_r+0xe4>
   116e0:	00169593          	slli	a1,a3,0x1
   116e4:	0b85859b          	addiw	a1,a1,184
   116e8:	00359593          	slli	a1,a1,0x3
   116ec:	05b6861b          	addiw	a2,a3,91
   116f0:	eedff06f          	j	115dc <_free_r+0x168>
   116f4:	02e83423          	sd	a4,40(a6)
   116f8:	02e83023          	sd	a4,32(a6)
   116fc:	00b73c23          	sd	a1,24(a4)
   11700:	00b73823          	sd	a1,16(a4)
   11704:	01173423          	sd	a7,8(a4)
   11708:	00f53023          	sd	a5,0(a0)
   1170c:	e4dff06f          	j	11558 <_free_r+0xe4>
   11710:	00883503          	ld	a0,8(a6)
   11714:	4026561b          	sraiw	a2,a2,0x2
   11718:	00100793          	li	a5,1
   1171c:	00c797b3          	sll	a5,a5,a2
   11720:	00a7e7b3          	or	a5,a5,a0
   11724:	00f83423          	sd	a5,8(a6)
   11728:	ee1ff06f          	j	11608 <_free_r+0x194>
   1172c:	15400613          	li	a2,340
   11730:	00d66e63          	bltu	a2,a3,1174c <_free_r+0x2d8>
   11734:	00f7d693          	srli	a3,a5,0xf
   11738:	00169593          	slli	a1,a3,0x1
   1173c:	0f05859b          	addiw	a1,a1,240
   11740:	00359593          	slli	a1,a1,0x3
   11744:	0776861b          	addiw	a2,a3,119
   11748:	e95ff06f          	j	115dc <_free_r+0x168>
   1174c:	55400613          	li	a2,1364
   11750:	00d66e63          	bltu	a2,a3,1176c <_free_r+0x2f8>
   11754:	0127d693          	srli	a3,a5,0x12
   11758:	00169593          	slli	a1,a3,0x1
   1175c:	0fa5859b          	addiw	a1,a1,250
   11760:	00359593          	slli	a1,a1,0x3
   11764:	07c6861b          	addiw	a2,a3,124
   11768:	e75ff06f          	j	115dc <_free_r+0x168>
   1176c:	7f000593          	li	a1,2032
   11770:	07e00613          	li	a2,126
   11774:	e69ff06f          	j	115dc <_free_r+0x168>

0000000000011778 <_malloc_r>:
   11778:	fa010113          	addi	sp,sp,-96
   1177c:	04813823          	sd	s0,80(sp)
   11780:	04113c23          	sd	ra,88(sp)
   11784:	01758713          	addi	a4,a1,23
   11788:	02e00793          	li	a5,46
   1178c:	00050413          	mv	s0,a0
   11790:	08e7ee63          	bltu	a5,a4,1182c <_malloc_r+0xb4>
   11794:	02000713          	li	a4,32
   11798:	06b76c63          	bltu	a4,a1,11810 <_malloc_r+0x98>
   1179c:	0c1000ef          	jal	1205c <__malloc_lock>
   117a0:	02000713          	li	a4,32
   117a4:	05000693          	li	a3,80
   117a8:	00400893          	li	a7,4
   117ac:	00013837          	lui	a6,0x13
   117b0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   117b4:	00d806b3          	add	a3,a6,a3
   117b8:	0086b783          	ld	a5,8(a3)
   117bc:	ff068613          	addi	a2,a3,-16
   117c0:	48c78063          	beq	a5,a2,11c40 <_malloc_r+0x4c8>
   117c4:	0087b703          	ld	a4,8(a5)
   117c8:	0187b603          	ld	a2,24(a5)
   117cc:	0107b583          	ld	a1,16(a5)
   117d0:	ffc77713          	andi	a4,a4,-4
   117d4:	00e78733          	add	a4,a5,a4
   117d8:	00873683          	ld	a3,8(a4)
   117dc:	00c5bc23          	sd	a2,24(a1)
   117e0:	00b63823          	sd	a1,16(a2)
   117e4:	0016e693          	ori	a3,a3,1
   117e8:	00040513          	mv	a0,s0
   117ec:	00d73423          	sd	a3,8(a4)
   117f0:	00f13423          	sd	a5,8(sp)
   117f4:	06d000ef          	jal	12060 <__malloc_unlock>
   117f8:	00813783          	ld	a5,8(sp)
   117fc:	05813083          	ld	ra,88(sp)
   11800:	05013403          	ld	s0,80(sp)
   11804:	01078513          	addi	a0,a5,16
   11808:	06010113          	addi	sp,sp,96
   1180c:	00008067          	ret
   11810:	00c00793          	li	a5,12
   11814:	00f42023          	sw	a5,0(s0)
   11818:	00000513          	li	a0,0
   1181c:	05813083          	ld	ra,88(sp)
   11820:	05013403          	ld	s0,80(sp)
   11824:	06010113          	addi	sp,sp,96
   11828:	00008067          	ret
   1182c:	00100793          	li	a5,1
   11830:	ff077713          	andi	a4,a4,-16
   11834:	01f79793          	slli	a5,a5,0x1f
   11838:	fcf77ce3          	bgeu	a4,a5,11810 <_malloc_r+0x98>
   1183c:	fcb76ae3          	bltu	a4,a1,11810 <_malloc_r+0x98>
   11840:	00e13423          	sd	a4,8(sp)
   11844:	019000ef          	jal	1205c <__malloc_lock>
   11848:	00813703          	ld	a4,8(sp)
   1184c:	1f700793          	li	a5,503
   11850:	4ee7fa63          	bgeu	a5,a4,11d44 <_malloc_r+0x5cc>
   11854:	00975793          	srli	a5,a4,0x9
   11858:	18078a63          	beqz	a5,119ec <_malloc_r+0x274>
   1185c:	00400693          	li	a3,4
   11860:	44f6ea63          	bltu	a3,a5,11cb4 <_malloc_r+0x53c>
   11864:	00675793          	srli	a5,a4,0x6
   11868:	0397889b          	addiw	a7,a5,57
   1186c:	0018951b          	slliw	a0,a7,0x1
   11870:	03878e1b          	addiw	t3,a5,56
   11874:	00351513          	slli	a0,a0,0x3
   11878:	00013837          	lui	a6,0x13
   1187c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11880:	00a80533          	add	a0,a6,a0
   11884:	00853783          	ld	a5,8(a0)
   11888:	ff050513          	addi	a0,a0,-16
   1188c:	02f50863          	beq	a0,a5,118bc <_malloc_r+0x144>
   11890:	01f00313          	li	t1,31
   11894:	0140006f          	j	118a8 <_malloc_r+0x130>
   11898:	0187b583          	ld	a1,24(a5)
   1189c:	36065263          	bgez	a2,11c00 <_malloc_r+0x488>
   118a0:	00b50e63          	beq	a0,a1,118bc <_malloc_r+0x144>
   118a4:	00058793          	mv	a5,a1
   118a8:	0087b683          	ld	a3,8(a5)
   118ac:	ffc6f693          	andi	a3,a3,-4
   118b0:	40e68633          	sub	a2,a3,a4
   118b4:	fec352e3          	bge	t1,a2,11898 <_malloc_r+0x120>
   118b8:	000e0893          	mv	a7,t3
   118bc:	02083783          	ld	a5,32(a6)
   118c0:	00013e37          	lui	t3,0x13
   118c4:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   118c8:	2fc78a63          	beq	a5,t3,11bbc <_malloc_r+0x444>
   118cc:	0087b303          	ld	t1,8(a5)
   118d0:	01f00613          	li	a2,31
   118d4:	ffc37313          	andi	t1,t1,-4
   118d8:	40e306b3          	sub	a3,t1,a4
   118dc:	4ad64463          	blt	a2,a3,11d84 <_malloc_r+0x60c>
   118e0:	03c83423          	sd	t3,40(a6)
   118e4:	03c83023          	sd	t3,32(a6)
   118e8:	4606da63          	bgez	a3,11d5c <_malloc_r+0x5e4>
   118ec:	1ff00693          	li	a3,511
   118f0:	00883583          	ld	a1,8(a6)
   118f4:	3466ee63          	bltu	a3,t1,11c50 <_malloc_r+0x4d8>
   118f8:	00335313          	srli	t1,t1,0x3
   118fc:	00131693          	slli	a3,t1,0x1
   11900:	0026869b          	addiw	a3,a3,2
   11904:	00369693          	slli	a3,a3,0x3
   11908:	00d806b3          	add	a3,a6,a3
   1190c:	0006b503          	ld	a0,0(a3)
   11910:	4023531b          	sraiw	t1,t1,0x2
   11914:	00100613          	li	a2,1
   11918:	00661633          	sll	a2,a2,t1
   1191c:	00c5e5b3          	or	a1,a1,a2
   11920:	ff068613          	addi	a2,a3,-16
   11924:	00a7b823          	sd	a0,16(a5)
   11928:	00c7bc23          	sd	a2,24(a5)
   1192c:	00b83423          	sd	a1,8(a6)
   11930:	00f6b023          	sd	a5,0(a3)
   11934:	00f53c23          	sd	a5,24(a0)
   11938:	4028d79b          	sraiw	a5,a7,0x2
   1193c:	00100513          	li	a0,1
   11940:	00f51533          	sll	a0,a0,a5
   11944:	0aa5ec63          	bltu	a1,a0,119fc <_malloc_r+0x284>
   11948:	00b577b3          	and	a5,a0,a1
   1194c:	02079463          	bnez	a5,11974 <_malloc_r+0x1fc>
   11950:	00151513          	slli	a0,a0,0x1
   11954:	ffc8f893          	andi	a7,a7,-4
   11958:	00b577b3          	and	a5,a0,a1
   1195c:	0048889b          	addiw	a7,a7,4
   11960:	00079a63          	bnez	a5,11974 <_malloc_r+0x1fc>
   11964:	00151513          	slli	a0,a0,0x1
   11968:	00b577b3          	and	a5,a0,a1
   1196c:	0048889b          	addiw	a7,a7,4
   11970:	fe078ae3          	beqz	a5,11964 <_malloc_r+0x1ec>
   11974:	01f00e93          	li	t4,31
   11978:	00189f13          	slli	t5,a7,0x1
   1197c:	002f0f1b          	addiw	t5,t5,2
   11980:	003f1f13          	slli	t5,t5,0x3
   11984:	ff0f0f13          	addi	t5,t5,-16
   11988:	01e80f33          	add	t5,a6,t5
   1198c:	000f0313          	mv	t1,t5
   11990:	01833683          	ld	a3,24(t1)
   11994:	00088f93          	mv	t6,a7
   11998:	34d30263          	beq	t1,a3,11cdc <_malloc_r+0x564>
   1199c:	0086b603          	ld	a2,8(a3)
   119a0:	00068793          	mv	a5,a3
   119a4:	0186b683          	ld	a3,24(a3)
   119a8:	ffc67613          	andi	a2,a2,-4
   119ac:	40e605b3          	sub	a1,a2,a4
   119b0:	34bec263          	blt	t4,a1,11cf4 <_malloc_r+0x57c>
   119b4:	fe05c2e3          	bltz	a1,11998 <_malloc_r+0x220>
   119b8:	00c78633          	add	a2,a5,a2
   119bc:	00863703          	ld	a4,8(a2)
   119c0:	0107b583          	ld	a1,16(a5)
   119c4:	00040513          	mv	a0,s0
   119c8:	00176713          	ori	a4,a4,1
   119cc:	00e63423          	sd	a4,8(a2)
   119d0:	00d5bc23          	sd	a3,24(a1)
   119d4:	00b6b823          	sd	a1,16(a3)
   119d8:	00f13423          	sd	a5,8(sp)
   119dc:	684000ef          	jal	12060 <__malloc_unlock>
   119e0:	00813783          	ld	a5,8(sp)
   119e4:	01078513          	addi	a0,a5,16
   119e8:	e35ff06f          	j	1181c <_malloc_r+0xa4>
   119ec:	40000513          	li	a0,1024
   119f0:	04000893          	li	a7,64
   119f4:	03f00e13          	li	t3,63
   119f8:	e81ff06f          	j	11878 <_malloc_r+0x100>
   119fc:	01083783          	ld	a5,16(a6)
   11a00:	0087b683          	ld	a3,8(a5)
   11a04:	ffc6f893          	andi	a7,a3,-4
   11a08:	40e88633          	sub	a2,a7,a4
   11a0c:	00e8e663          	bltu	a7,a4,11a18 <_malloc_r+0x2a0>
   11a10:	02062693          	slti	a3,a2,32
   11a14:	1a068863          	beqz	a3,11bc4 <_malloc_r+0x44c>
   11a18:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11a1c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11a20:	fff00693          	li	a3,-1
   11a24:	00b705b3          	add	a1,a4,a1
   11a28:	44d60663          	beq	a2,a3,11e74 <_malloc_r+0x6fc>
   11a2c:	000016b7          	lui	a3,0x1
   11a30:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11a34:	00d585b3          	add	a1,a1,a3
   11a38:	fffff6b7          	lui	a3,0xfffff
   11a3c:	00d5f5b3          	and	a1,a1,a3
   11a40:	00040513          	mv	a0,s0
   11a44:	03013423          	sd	a6,40(sp)
   11a48:	02f13023          	sd	a5,32(sp)
   11a4c:	00e13c23          	sd	a4,24(sp)
   11a50:	01113823          	sd	a7,16(sp)
   11a54:	00b13423          	sd	a1,8(sp)
   11a58:	271000ef          	jal	124c8 <_sbrk_r>
   11a5c:	fff00693          	li	a3,-1
   11a60:	00813583          	ld	a1,8(sp)
   11a64:	01013883          	ld	a7,16(sp)
   11a68:	01813703          	ld	a4,24(sp)
   11a6c:	02013783          	ld	a5,32(sp)
   11a70:	02813803          	ld	a6,40(sp)
   11a74:	00050313          	mv	t1,a0
   11a78:	36d50663          	beq	a0,a3,11de4 <_malloc_r+0x66c>
   11a7c:	011786b3          	add	a3,a5,a7
   11a80:	36d56063          	bltu	a0,a3,11de0 <_malloc_r+0x668>
   11a84:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a88:	000e2603          	lw	a2,0(t3)
   11a8c:	00b6063b          	addw	a2,a2,a1
   11a90:	00ce2023          	sw	a2,0(t3)
   11a94:	00060513          	mv	a0,a2
   11a98:	4a668c63          	beq	a3,t1,11f50 <_malloc_r+0x7d8>
   11a9c:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11aa0:	fff00613          	li	a2,-1
   11aa4:	4ccf0463          	beq	t5,a2,11f6c <_malloc_r+0x7f4>
   11aa8:	40d306b3          	sub	a3,t1,a3
   11aac:	00a686bb          	addw	a3,a3,a0
   11ab0:	00de2023          	sw	a3,0(t3)
   11ab4:	00f37e93          	andi	t4,t1,15
   11ab8:	3c0e8e63          	beqz	t4,11e94 <_malloc_r+0x71c>
   11abc:	ff037313          	andi	t1,t1,-16
   11ac0:	000016b7          	lui	a3,0x1
   11ac4:	01030313          	addi	t1,t1,16
   11ac8:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11acc:	00b30633          	add	a2,t1,a1
   11ad0:	41d685b3          	sub	a1,a3,t4
   11ad4:	40c585b3          	sub	a1,a1,a2
   11ad8:	03459593          	slli	a1,a1,0x34
   11adc:	0345d593          	srli	a1,a1,0x34
   11ae0:	00040513          	mv	a0,s0
   11ae4:	05c13023          	sd	t3,64(sp)
   11ae8:	03013c23          	sd	a6,56(sp)
   11aec:	02f13823          	sd	a5,48(sp)
   11af0:	02e13423          	sd	a4,40(sp)
   11af4:	03113023          	sd	a7,32(sp)
   11af8:	00613c23          	sd	t1,24(sp)
   11afc:	01d13823          	sd	t4,16(sp)
   11b00:	00c13423          	sd	a2,8(sp)
   11b04:	04b13423          	sd	a1,72(sp)
   11b08:	1c1000ef          	jal	124c8 <_sbrk_r>
   11b0c:	00050693          	mv	a3,a0
   11b10:	fff00513          	li	a0,-1
   11b14:	00813603          	ld	a2,8(sp)
   11b18:	01013e83          	ld	t4,16(sp)
   11b1c:	01813303          	ld	t1,24(sp)
   11b20:	02013883          	ld	a7,32(sp)
   11b24:	02813703          	ld	a4,40(sp)
   11b28:	03013783          	ld	a5,48(sp)
   11b2c:	03813803          	ld	a6,56(sp)
   11b30:	04013e03          	ld	t3,64(sp)
   11b34:	48a68663          	beq	a3,a0,11fc0 <_malloc_r+0x848>
   11b38:	04813583          	ld	a1,72(sp)
   11b3c:	0005851b          	sext.w	a0,a1
   11b40:	000e2603          	lw	a2,0(t3)
   11b44:	406686b3          	sub	a3,a3,t1
   11b48:	00b686b3          	add	a3,a3,a1
   11b4c:	0016e693          	ori	a3,a3,1
   11b50:	00683823          	sd	t1,16(a6)
   11b54:	00a6063b          	addw	a2,a2,a0
   11b58:	00d33423          	sd	a3,8(t1)
   11b5c:	00ce2023          	sw	a2,0(t3)
   11b60:	03078e63          	beq	a5,a6,11b9c <_malloc_r+0x424>
   11b64:	01f00513          	li	a0,31
   11b68:	41157663          	bgeu	a0,a7,11f74 <_malloc_r+0x7fc>
   11b6c:	0087b583          	ld	a1,8(a5)
   11b70:	fe888693          	addi	a3,a7,-24
   11b74:	ff06f693          	andi	a3,a3,-16
   11b78:	0015f593          	andi	a1,a1,1
   11b7c:	00d5e5b3          	or	a1,a1,a3
   11b80:	00b7b423          	sd	a1,8(a5)
   11b84:	00900893          	li	a7,9
   11b88:	00d785b3          	add	a1,a5,a3
   11b8c:	0115b423          	sd	a7,8(a1)
   11b90:	0115b823          	sd	a7,16(a1)
   11b94:	44d56863          	bltu	a0,a3,11fe4 <_malloc_r+0x86c>
   11b98:	00833683          	ld	a3,8(t1)
   11b9c:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11ba0:	00c5f463          	bgeu	a1,a2,11ba8 <_malloc_r+0x430>
   11ba4:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11ba8:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11bac:	00c5f463          	bgeu	a1,a2,11bb4 <_malloc_r+0x43c>
   11bb0:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11bb4:	00030793          	mv	a5,t1
   11bb8:	2340006f          	j	11dec <_malloc_r+0x674>
   11bbc:	00883583          	ld	a1,8(a6)
   11bc0:	d79ff06f          	j	11938 <_malloc_r+0x1c0>
   11bc4:	00176693          	ori	a3,a4,1
   11bc8:	00d7b423          	sd	a3,8(a5)
   11bcc:	00e78733          	add	a4,a5,a4
   11bd0:	00166613          	ori	a2,a2,1
   11bd4:	00e83823          	sd	a4,16(a6)
   11bd8:	00040513          	mv	a0,s0
   11bdc:	00c73423          	sd	a2,8(a4)
   11be0:	00f13423          	sd	a5,8(sp)
   11be4:	47c000ef          	jal	12060 <__malloc_unlock>
   11be8:	00813783          	ld	a5,8(sp)
   11bec:	05813083          	ld	ra,88(sp)
   11bf0:	05013403          	ld	s0,80(sp)
   11bf4:	01078513          	addi	a0,a5,16
   11bf8:	06010113          	addi	sp,sp,96
   11bfc:	00008067          	ret
   11c00:	0107b603          	ld	a2,16(a5)
   11c04:	00d786b3          	add	a3,a5,a3
   11c08:	0086b703          	ld	a4,8(a3)
   11c0c:	00b63c23          	sd	a1,24(a2)
   11c10:	00c5b823          	sd	a2,16(a1)
   11c14:	00176713          	ori	a4,a4,1
   11c18:	00040513          	mv	a0,s0
   11c1c:	00e6b423          	sd	a4,8(a3)
   11c20:	00f13423          	sd	a5,8(sp)
   11c24:	43c000ef          	jal	12060 <__malloc_unlock>
   11c28:	00813783          	ld	a5,8(sp)
   11c2c:	05813083          	ld	ra,88(sp)
   11c30:	05013403          	ld	s0,80(sp)
   11c34:	01078513          	addi	a0,a5,16
   11c38:	06010113          	addi	sp,sp,96
   11c3c:	00008067          	ret
   11c40:	0186b783          	ld	a5,24(a3)
   11c44:	0028889b          	addiw	a7,a7,2
   11c48:	c6f68ae3          	beq	a3,a5,118bc <_malloc_r+0x144>
   11c4c:	b79ff06f          	j	117c4 <_malloc_r+0x4c>
   11c50:	00935693          	srli	a3,t1,0x9
   11c54:	00400613          	li	a2,4
   11c58:	16d67863          	bgeu	a2,a3,11dc8 <_malloc_r+0x650>
   11c5c:	01400613          	li	a2,20
   11c60:	28d66e63          	bltu	a2,a3,11efc <_malloc_r+0x784>
   11c64:	00169513          	slli	a0,a3,0x1
   11c68:	0b85051b          	addiw	a0,a0,184
   11c6c:	00351513          	slli	a0,a0,0x3
   11c70:	05b6861b          	addiw	a2,a3,91
   11c74:	00a80533          	add	a0,a6,a0
   11c78:	00053683          	ld	a3,0(a0)
   11c7c:	ff050513          	addi	a0,a0,-16
   11c80:	00d51863          	bne	a0,a3,11c90 <_malloc_r+0x518>
   11c84:	1f80006f          	j	11e7c <_malloc_r+0x704>
   11c88:	0106b683          	ld	a3,16(a3)
   11c8c:	00d50863          	beq	a0,a3,11c9c <_malloc_r+0x524>
   11c90:	0086b603          	ld	a2,8(a3)
   11c94:	ffc67613          	andi	a2,a2,-4
   11c98:	fec368e3          	bltu	t1,a2,11c88 <_malloc_r+0x510>
   11c9c:	0186b503          	ld	a0,24(a3)
   11ca0:	00a7bc23          	sd	a0,24(a5)
   11ca4:	00d7b823          	sd	a3,16(a5)
   11ca8:	00f53823          	sd	a5,16(a0)
   11cac:	00f6bc23          	sd	a5,24(a3)
   11cb0:	c89ff06f          	j	11938 <_malloc_r+0x1c0>
   11cb4:	01400693          	li	a3,20
   11cb8:	14f6fa63          	bgeu	a3,a5,11e0c <_malloc_r+0x694>
   11cbc:	05400693          	li	a3,84
   11cc0:	24f6ee63          	bltu	a3,a5,11f1c <_malloc_r+0x7a4>
   11cc4:	00c75793          	srli	a5,a4,0xc
   11cc8:	06f7889b          	addiw	a7,a5,111
   11ccc:	0018951b          	slliw	a0,a7,0x1
   11cd0:	06e78e1b          	addiw	t3,a5,110
   11cd4:	00351513          	slli	a0,a0,0x3
   11cd8:	ba1ff06f          	j	11878 <_malloc_r+0x100>
   11cdc:	001f8f9b          	addiw	t6,t6,1
   11ce0:	003ff793          	andi	a5,t6,3
   11ce4:	01030313          	addi	t1,t1,16
   11ce8:	14078263          	beqz	a5,11e2c <_malloc_r+0x6b4>
   11cec:	01833683          	ld	a3,24(t1)
   11cf0:	ca9ff06f          	j	11998 <_malloc_r+0x220>
   11cf4:	0107b503          	ld	a0,16(a5)
   11cf8:	00176893          	ori	a7,a4,1
   11cfc:	0117b423          	sd	a7,8(a5)
   11d00:	00d53c23          	sd	a3,24(a0)
   11d04:	00a6b823          	sd	a0,16(a3)
   11d08:	00e78733          	add	a4,a5,a4
   11d0c:	02e83423          	sd	a4,40(a6)
   11d10:	02e83023          	sd	a4,32(a6)
   11d14:	0015e693          	ori	a3,a1,1
   11d18:	00c78633          	add	a2,a5,a2
   11d1c:	01c73c23          	sd	t3,24(a4)
   11d20:	01c73823          	sd	t3,16(a4)
   11d24:	00d73423          	sd	a3,8(a4)
   11d28:	00040513          	mv	a0,s0
   11d2c:	00b63023          	sd	a1,0(a2)
   11d30:	00f13423          	sd	a5,8(sp)
   11d34:	32c000ef          	jal	12060 <__malloc_unlock>
   11d38:	00813783          	ld	a5,8(sp)
   11d3c:	01078513          	addi	a0,a5,16
   11d40:	addff06f          	j	1181c <_malloc_r+0xa4>
   11d44:	00375893          	srli	a7,a4,0x3
   11d48:	00189693          	slli	a3,a7,0x1
   11d4c:	0026869b          	addiw	a3,a3,2
   11d50:	00369693          	slli	a3,a3,0x3
   11d54:	0008889b          	sext.w	a7,a7
   11d58:	a55ff06f          	j	117ac <_malloc_r+0x34>
   11d5c:	00678333          	add	t1,a5,t1
   11d60:	00833703          	ld	a4,8(t1)
   11d64:	00040513          	mv	a0,s0
   11d68:	00f13423          	sd	a5,8(sp)
   11d6c:	00176713          	ori	a4,a4,1
   11d70:	00e33423          	sd	a4,8(t1)
   11d74:	2ec000ef          	jal	12060 <__malloc_unlock>
   11d78:	00813783          	ld	a5,8(sp)
   11d7c:	01078513          	addi	a0,a5,16
   11d80:	a9dff06f          	j	1181c <_malloc_r+0xa4>
   11d84:	00176613          	ori	a2,a4,1
   11d88:	00c7b423          	sd	a2,8(a5)
   11d8c:	00e78733          	add	a4,a5,a4
   11d90:	02e83423          	sd	a4,40(a6)
   11d94:	02e83023          	sd	a4,32(a6)
   11d98:	0016e613          	ori	a2,a3,1
   11d9c:	00678333          	add	t1,a5,t1
   11da0:	01c73c23          	sd	t3,24(a4)
   11da4:	01c73823          	sd	t3,16(a4)
   11da8:	00c73423          	sd	a2,8(a4)
   11dac:	00040513          	mv	a0,s0
   11db0:	00d33023          	sd	a3,0(t1)
   11db4:	00f13423          	sd	a5,8(sp)
   11db8:	2a8000ef          	jal	12060 <__malloc_unlock>
   11dbc:	00813783          	ld	a5,8(sp)
   11dc0:	01078513          	addi	a0,a5,16
   11dc4:	a59ff06f          	j	1181c <_malloc_r+0xa4>
   11dc8:	00635693          	srli	a3,t1,0x6
   11dcc:	00169513          	slli	a0,a3,0x1
   11dd0:	0725051b          	addiw	a0,a0,114
   11dd4:	00351513          	slli	a0,a0,0x3
   11dd8:	0386861b          	addiw	a2,a3,56
   11ddc:	e99ff06f          	j	11c74 <_malloc_r+0x4fc>
   11de0:	15078e63          	beq	a5,a6,11f3c <_malloc_r+0x7c4>
   11de4:	01083783          	ld	a5,16(a6)
   11de8:	0087b683          	ld	a3,8(a5)
   11dec:	ffc6f693          	andi	a3,a3,-4
   11df0:	40e68633          	sub	a2,a3,a4
   11df4:	00e6e663          	bltu	a3,a4,11e00 <_malloc_r+0x688>
   11df8:	02062693          	slti	a3,a2,32
   11dfc:	dc0684e3          	beqz	a3,11bc4 <_malloc_r+0x44c>
   11e00:	00040513          	mv	a0,s0
   11e04:	25c000ef          	jal	12060 <__malloc_unlock>
   11e08:	a11ff06f          	j	11818 <_malloc_r+0xa0>
   11e0c:	05c7889b          	addiw	a7,a5,92
   11e10:	0018951b          	slliw	a0,a7,0x1
   11e14:	05b78e1b          	addiw	t3,a5,91
   11e18:	00351513          	slli	a0,a0,0x3
   11e1c:	a5dff06f          	j	11878 <_malloc_r+0x100>
   11e20:	010f3783          	ld	a5,16(t5)
   11e24:	fff8889b          	addiw	a7,a7,-1
   11e28:	23e79663          	bne	a5,t5,12054 <_malloc_r+0x8dc>
   11e2c:	0038f793          	andi	a5,a7,3
   11e30:	ff0f0f13          	addi	t5,t5,-16
   11e34:	fe0796e3          	bnez	a5,11e20 <_malloc_r+0x6a8>
   11e38:	00883683          	ld	a3,8(a6)
   11e3c:	fff54793          	not	a5,a0
   11e40:	00d7f7b3          	and	a5,a5,a3
   11e44:	00f83423          	sd	a5,8(a6)
   11e48:	00151513          	slli	a0,a0,0x1
   11e4c:	fff50693          	addi	a3,a0,-1
   11e50:	baf6f6e3          	bgeu	a3,a5,119fc <_malloc_r+0x284>
   11e54:	00f576b3          	and	a3,a0,a5
   11e58:	00069a63          	bnez	a3,11e6c <_malloc_r+0x6f4>
   11e5c:	00151513          	slli	a0,a0,0x1
   11e60:	00f576b3          	and	a3,a0,a5
   11e64:	004f8f9b          	addiw	t6,t6,4
   11e68:	fe068ae3          	beqz	a3,11e5c <_malloc_r+0x6e4>
   11e6c:	000f8893          	mv	a7,t6
   11e70:	b09ff06f          	j	11978 <_malloc_r+0x200>
   11e74:	02058593          	addi	a1,a1,32
   11e78:	bc9ff06f          	j	11a40 <_malloc_r+0x2c8>
   11e7c:	4026561b          	sraiw	a2,a2,0x2
   11e80:	00100313          	li	t1,1
   11e84:	00c31633          	sll	a2,t1,a2
   11e88:	00c5e5b3          	or	a1,a1,a2
   11e8c:	00b83423          	sd	a1,8(a6)
   11e90:	e11ff06f          	j	11ca0 <_malloc_r+0x528>
   11e94:	00b30633          	add	a2,t1,a1
   11e98:	40c005b3          	neg	a1,a2
   11e9c:	03459593          	slli	a1,a1,0x34
   11ea0:	0345d593          	srli	a1,a1,0x34
   11ea4:	00040513          	mv	a0,s0
   11ea8:	03c13c23          	sd	t3,56(sp)
   11eac:	03013823          	sd	a6,48(sp)
   11eb0:	02f13423          	sd	a5,40(sp)
   11eb4:	02e13023          	sd	a4,32(sp)
   11eb8:	01113c23          	sd	a7,24(sp)
   11ebc:	00613823          	sd	t1,16(sp)
   11ec0:	00c13423          	sd	a2,8(sp)
   11ec4:	04b13023          	sd	a1,64(sp)
   11ec8:	600000ef          	jal	124c8 <_sbrk_r>
   11ecc:	00050693          	mv	a3,a0
   11ed0:	fff00513          	li	a0,-1
   11ed4:	01013303          	ld	t1,16(sp)
   11ed8:	01813883          	ld	a7,24(sp)
   11edc:	02013703          	ld	a4,32(sp)
   11ee0:	02813783          	ld	a5,40(sp)
   11ee4:	03013803          	ld	a6,48(sp)
   11ee8:	03813e03          	ld	t3,56(sp)
   11eec:	0ea68463          	beq	a3,a0,11fd4 <_malloc_r+0x85c>
   11ef0:	04013583          	ld	a1,64(sp)
   11ef4:	0005851b          	sext.w	a0,a1
   11ef8:	c49ff06f          	j	11b40 <_malloc_r+0x3c8>
   11efc:	05400613          	li	a2,84
   11f00:	08d66063          	bltu	a2,a3,11f80 <_malloc_r+0x808>
   11f04:	00c35693          	srli	a3,t1,0xc
   11f08:	00169513          	slli	a0,a3,0x1
   11f0c:	0de5051b          	addiw	a0,a0,222
   11f10:	00351513          	slli	a0,a0,0x3
   11f14:	06e6861b          	addiw	a2,a3,110
   11f18:	d5dff06f          	j	11c74 <_malloc_r+0x4fc>
   11f1c:	15400693          	li	a3,340
   11f20:	08f6e063          	bltu	a3,a5,11fa0 <_malloc_r+0x828>
   11f24:	00f75793          	srli	a5,a4,0xf
   11f28:	0787889b          	addiw	a7,a5,120
   11f2c:	0018951b          	slliw	a0,a7,0x1
   11f30:	07778e1b          	addiw	t3,a5,119
   11f34:	00351513          	slli	a0,a0,0x3
   11f38:	941ff06f          	j	11878 <_malloc_r+0x100>
   11f3c:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11f40:	000e2503          	lw	a0,0(t3)
   11f44:	00b5053b          	addw	a0,a0,a1
   11f48:	00ae2023          	sw	a0,0(t3)
   11f4c:	b51ff06f          	j	11a9c <_malloc_r+0x324>
   11f50:	03431f13          	slli	t5,t1,0x34
   11f54:	b40f14e3          	bnez	t5,11a9c <_malloc_r+0x324>
   11f58:	01083303          	ld	t1,16(a6)
   11f5c:	00b885b3          	add	a1,a7,a1
   11f60:	0015e693          	ori	a3,a1,1
   11f64:	00d33423          	sd	a3,8(t1)
   11f68:	c35ff06f          	j	11b9c <_malloc_r+0x424>
   11f6c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11f70:	b45ff06f          	j	11ab4 <_malloc_r+0x33c>
   11f74:	00100793          	li	a5,1
   11f78:	00f33423          	sd	a5,8(t1)
   11f7c:	e85ff06f          	j	11e00 <_malloc_r+0x688>
   11f80:	15400613          	li	a2,340
   11f84:	08d66a63          	bltu	a2,a3,12018 <_malloc_r+0x8a0>
   11f88:	00f35693          	srli	a3,t1,0xf
   11f8c:	00169513          	slli	a0,a3,0x1
   11f90:	0f05051b          	addiw	a0,a0,240
   11f94:	00351513          	slli	a0,a0,0x3
   11f98:	0776861b          	addiw	a2,a3,119
   11f9c:	cd9ff06f          	j	11c74 <_malloc_r+0x4fc>
   11fa0:	55400693          	li	a3,1364
   11fa4:	08f6ea63          	bltu	a3,a5,12038 <_malloc_r+0x8c0>
   11fa8:	01275793          	srli	a5,a4,0x12
   11fac:	07d7889b          	addiw	a7,a5,125
   11fb0:	0018951b          	slliw	a0,a7,0x1
   11fb4:	07c78e1b          	addiw	t3,a5,124
   11fb8:	00351513          	slli	a0,a0,0x3
   11fbc:	8bdff06f          	j	11878 <_malloc_r+0x100>
   11fc0:	ff0e8e93          	addi	t4,t4,-16
   11fc4:	01d606b3          	add	a3,a2,t4
   11fc8:	00000513          	li	a0,0
   11fcc:	00000593          	li	a1,0
   11fd0:	b71ff06f          	j	11b40 <_malloc_r+0x3c8>
   11fd4:	00813683          	ld	a3,8(sp)
   11fd8:	00000593          	li	a1,0
   11fdc:	00000513          	li	a0,0
   11fe0:	b61ff06f          	j	11b40 <_malloc_r+0x3c8>
   11fe4:	01078593          	addi	a1,a5,16
   11fe8:	00040513          	mv	a0,s0
   11fec:	01c13c23          	sd	t3,24(sp)
   11ff0:	01013823          	sd	a6,16(sp)
   11ff4:	00e13423          	sd	a4,8(sp)
   11ff8:	c7cff0ef          	jal	11474 <_free_r>
   11ffc:	01013803          	ld	a6,16(sp)
   12000:	01813e03          	ld	t3,24(sp)
   12004:	00813703          	ld	a4,8(sp)
   12008:	01083303          	ld	t1,16(a6)
   1200c:	000e2603          	lw	a2,0(t3)
   12010:	00833683          	ld	a3,8(t1)
   12014:	b89ff06f          	j	11b9c <_malloc_r+0x424>
   12018:	55400613          	li	a2,1364
   1201c:	02d66663          	bltu	a2,a3,12048 <_malloc_r+0x8d0>
   12020:	01235693          	srli	a3,t1,0x12
   12024:	00169513          	slli	a0,a3,0x1
   12028:	0fa5051b          	addiw	a0,a0,250
   1202c:	00351513          	slli	a0,a0,0x3
   12030:	07c6861b          	addiw	a2,a3,124
   12034:	c41ff06f          	j	11c74 <_malloc_r+0x4fc>
   12038:	7f000513          	li	a0,2032
   1203c:	07f00893          	li	a7,127
   12040:	07e00e13          	li	t3,126
   12044:	835ff06f          	j	11878 <_malloc_r+0x100>
   12048:	7f000513          	li	a0,2032
   1204c:	07e00613          	li	a2,126
   12050:	c25ff06f          	j	11c74 <_malloc_r+0x4fc>
   12054:	00883783          	ld	a5,8(a6)
   12058:	df1ff06f          	j	11e48 <_malloc_r+0x6d0>

000000000001205c <__malloc_lock>:
   1205c:	00008067          	ret

0000000000012060 <__malloc_unlock>:
   12060:	00008067          	ret

0000000000012064 <_fclose_r>:
   12064:	fe010113          	addi	sp,sp,-32
   12068:	00113c23          	sd	ra,24(sp)
   1206c:	01213023          	sd	s2,0(sp)
   12070:	02058863          	beqz	a1,120a0 <_fclose_r+0x3c>
   12074:	00813823          	sd	s0,16(sp)
   12078:	00913423          	sd	s1,8(sp)
   1207c:	00058413          	mv	s0,a1
   12080:	00050493          	mv	s1,a0
   12084:	00050663          	beqz	a0,12090 <_fclose_r+0x2c>
   12088:	04853783          	ld	a5,72(a0)
   1208c:	0c078c63          	beqz	a5,12164 <_fclose_r+0x100>
   12090:	01041783          	lh	a5,16(s0)
   12094:	02079263          	bnez	a5,120b8 <_fclose_r+0x54>
   12098:	01013403          	ld	s0,16(sp)
   1209c:	00813483          	ld	s1,8(sp)
   120a0:	01813083          	ld	ra,24(sp)
   120a4:	00000913          	li	s2,0
   120a8:	00090513          	mv	a0,s2
   120ac:	00013903          	ld	s2,0(sp)
   120b0:	02010113          	addi	sp,sp,32
   120b4:	00008067          	ret
   120b8:	00040593          	mv	a1,s0
   120bc:	00048513          	mv	a0,s1
   120c0:	0b8000ef          	jal	12178 <__sflush_r>
   120c4:	05043783          	ld	a5,80(s0)
   120c8:	00050913          	mv	s2,a0
   120cc:	00078a63          	beqz	a5,120e0 <_fclose_r+0x7c>
   120d0:	03043583          	ld	a1,48(s0)
   120d4:	00048513          	mv	a0,s1
   120d8:	000780e7          	jalr	a5
   120dc:	06054463          	bltz	a0,12144 <_fclose_r+0xe0>
   120e0:	01045783          	lhu	a5,16(s0)
   120e4:	0807f793          	andi	a5,a5,128
   120e8:	06079663          	bnez	a5,12154 <_fclose_r+0xf0>
   120ec:	05843583          	ld	a1,88(s0)
   120f0:	00058c63          	beqz	a1,12108 <_fclose_r+0xa4>
   120f4:	07440793          	addi	a5,s0,116
   120f8:	00f58663          	beq	a1,a5,12104 <_fclose_r+0xa0>
   120fc:	00048513          	mv	a0,s1
   12100:	b74ff0ef          	jal	11474 <_free_r>
   12104:	04043c23          	sd	zero,88(s0)
   12108:	07843583          	ld	a1,120(s0)
   1210c:	00058863          	beqz	a1,1211c <_fclose_r+0xb8>
   12110:	00048513          	mv	a0,s1
   12114:	b60ff0ef          	jal	11474 <_free_r>
   12118:	06043c23          	sd	zero,120(s0)
   1211c:	aa1fe0ef          	jal	10bbc <__sfp_lock_acquire>
   12120:	00041823          	sh	zero,16(s0)
   12124:	a9dfe0ef          	jal	10bc0 <__sfp_lock_release>
   12128:	01813083          	ld	ra,24(sp)
   1212c:	01013403          	ld	s0,16(sp)
   12130:	00813483          	ld	s1,8(sp)
   12134:	00090513          	mv	a0,s2
   12138:	00013903          	ld	s2,0(sp)
   1213c:	02010113          	addi	sp,sp,32
   12140:	00008067          	ret
   12144:	01045783          	lhu	a5,16(s0)
   12148:	fff00913          	li	s2,-1
   1214c:	0807f793          	andi	a5,a5,128
   12150:	f8078ee3          	beqz	a5,120ec <_fclose_r+0x88>
   12154:	01843583          	ld	a1,24(s0)
   12158:	00048513          	mv	a0,s1
   1215c:	b18ff0ef          	jal	11474 <_free_r>
   12160:	f8dff06f          	j	120ec <_fclose_r+0x88>
   12164:	a35fe0ef          	jal	10b98 <__sinit>
   12168:	f29ff06f          	j	12090 <_fclose_r+0x2c>

000000000001216c <fclose>:
   1216c:	00050593          	mv	a1,a0
   12170:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12174:	ef1ff06f          	j	12064 <_fclose_r>

0000000000012178 <__sflush_r>:
   12178:	01059703          	lh	a4,16(a1)
   1217c:	fd010113          	addi	sp,sp,-48
   12180:	02813023          	sd	s0,32(sp)
   12184:	01313423          	sd	s3,8(sp)
   12188:	02113423          	sd	ra,40(sp)
   1218c:	00877793          	andi	a5,a4,8
   12190:	00058413          	mv	s0,a1
   12194:	00050993          	mv	s3,a0
   12198:	12079263          	bnez	a5,122bc <__sflush_r+0x144>
   1219c:	000017b7          	lui	a5,0x1
   121a0:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   121a4:	0085a683          	lw	a3,8(a1)
   121a8:	00f767b3          	or	a5,a4,a5
   121ac:	00f59823          	sh	a5,16(a1)
   121b0:	18d05c63          	blez	a3,12348 <__sflush_r+0x1d0>
   121b4:	04843803          	ld	a6,72(s0)
   121b8:	0e080663          	beqz	a6,122a4 <__sflush_r+0x12c>
   121bc:	00913c23          	sd	s1,24(sp)
   121c0:	03371693          	slli	a3,a4,0x33
   121c4:	0009a483          	lw	s1,0(s3)
   121c8:	0009a023          	sw	zero,0(s3)
   121cc:	1806ca63          	bltz	a3,12360 <__sflush_r+0x1e8>
   121d0:	03043583          	ld	a1,48(s0)
   121d4:	00000613          	li	a2,0
   121d8:	00100693          	li	a3,1
   121dc:	00098513          	mv	a0,s3
   121e0:	000800e7          	jalr	a6
   121e4:	fff00793          	li	a5,-1
   121e8:	00050613          	mv	a2,a0
   121ec:	1af50c63          	beq	a0,a5,123a4 <__sflush_r+0x22c>
   121f0:	01041783          	lh	a5,16(s0)
   121f4:	04843803          	ld	a6,72(s0)
   121f8:	0047f793          	andi	a5,a5,4
   121fc:	00078e63          	beqz	a5,12218 <__sflush_r+0xa0>
   12200:	00842703          	lw	a4,8(s0)
   12204:	05843783          	ld	a5,88(s0)
   12208:	40e60633          	sub	a2,a2,a4
   1220c:	00078663          	beqz	a5,12218 <__sflush_r+0xa0>
   12210:	07042783          	lw	a5,112(s0)
   12214:	40f60633          	sub	a2,a2,a5
   12218:	03043583          	ld	a1,48(s0)
   1221c:	00000693          	li	a3,0
   12220:	00098513          	mv	a0,s3
   12224:	000800e7          	jalr	a6
   12228:	fff00713          	li	a4,-1
   1222c:	01041783          	lh	a5,16(s0)
   12230:	12e51c63          	bne	a0,a4,12368 <__sflush_r+0x1f0>
   12234:	0009a683          	lw	a3,0(s3)
   12238:	01d00713          	li	a4,29
   1223c:	18d76263          	bltu	a4,a3,123c0 <__sflush_r+0x248>
   12240:	20400737          	lui	a4,0x20400
   12244:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   12248:	00d75733          	srl	a4,a4,a3
   1224c:	00177713          	andi	a4,a4,1
   12250:	16070863          	beqz	a4,123c0 <__sflush_r+0x248>
   12254:	01843683          	ld	a3,24(s0)
   12258:	fffff737          	lui	a4,0xfffff
   1225c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12260:	00e7f733          	and	a4,a5,a4
   12264:	00e41823          	sh	a4,16(s0)
   12268:	00042423          	sw	zero,8(s0)
   1226c:	00d43023          	sd	a3,0(s0)
   12270:	03379713          	slli	a4,a5,0x33
   12274:	00075663          	bgez	a4,12280 <__sflush_r+0x108>
   12278:	0009a783          	lw	a5,0(s3)
   1227c:	10078863          	beqz	a5,1238c <__sflush_r+0x214>
   12280:	05843583          	ld	a1,88(s0)
   12284:	0099a023          	sw	s1,0(s3)
   12288:	10058a63          	beqz	a1,1239c <__sflush_r+0x224>
   1228c:	07440793          	addi	a5,s0,116
   12290:	00f58663          	beq	a1,a5,1229c <__sflush_r+0x124>
   12294:	00098513          	mv	a0,s3
   12298:	9dcff0ef          	jal	11474 <_free_r>
   1229c:	01813483          	ld	s1,24(sp)
   122a0:	04043c23          	sd	zero,88(s0)
   122a4:	02813083          	ld	ra,40(sp)
   122a8:	02013403          	ld	s0,32(sp)
   122ac:	00813983          	ld	s3,8(sp)
   122b0:	00000513          	li	a0,0
   122b4:	03010113          	addi	sp,sp,48
   122b8:	00008067          	ret
   122bc:	01213823          	sd	s2,16(sp)
   122c0:	0185b903          	ld	s2,24(a1)
   122c4:	08090a63          	beqz	s2,12358 <__sflush_r+0x1e0>
   122c8:	00913c23          	sd	s1,24(sp)
   122cc:	0005b483          	ld	s1,0(a1)
   122d0:	00377713          	andi	a4,a4,3
   122d4:	0125b023          	sd	s2,0(a1)
   122d8:	412484bb          	subw	s1,s1,s2
   122dc:	00000793          	li	a5,0
   122e0:	00071463          	bnez	a4,122e8 <__sflush_r+0x170>
   122e4:	0205a783          	lw	a5,32(a1)
   122e8:	00f42623          	sw	a5,12(s0)
   122ec:	00904863          	bgtz	s1,122fc <__sflush_r+0x184>
   122f0:	0640006f          	j	12354 <__sflush_r+0x1dc>
   122f4:	00a90933          	add	s2,s2,a0
   122f8:	04905e63          	blez	s1,12354 <__sflush_r+0x1dc>
   122fc:	04043783          	ld	a5,64(s0)
   12300:	03043583          	ld	a1,48(s0)
   12304:	00048693          	mv	a3,s1
   12308:	00090613          	mv	a2,s2
   1230c:	00098513          	mv	a0,s3
   12310:	000780e7          	jalr	a5
   12314:	40a484bb          	subw	s1,s1,a0
   12318:	fca04ee3          	bgtz	a0,122f4 <__sflush_r+0x17c>
   1231c:	01045783          	lhu	a5,16(s0)
   12320:	01013903          	ld	s2,16(sp)
   12324:	0407e793          	ori	a5,a5,64
   12328:	02813083          	ld	ra,40(sp)
   1232c:	00f41823          	sh	a5,16(s0)
   12330:	02013403          	ld	s0,32(sp)
   12334:	01813483          	ld	s1,24(sp)
   12338:	00813983          	ld	s3,8(sp)
   1233c:	fff00513          	li	a0,-1
   12340:	03010113          	addi	sp,sp,48
   12344:	00008067          	ret
   12348:	0705a683          	lw	a3,112(a1)
   1234c:	e6d044e3          	bgtz	a3,121b4 <__sflush_r+0x3c>
   12350:	f55ff06f          	j	122a4 <__sflush_r+0x12c>
   12354:	01813483          	ld	s1,24(sp)
   12358:	01013903          	ld	s2,16(sp)
   1235c:	f49ff06f          	j	122a4 <__sflush_r+0x12c>
   12360:	09043603          	ld	a2,144(s0)
   12364:	e95ff06f          	j	121f8 <__sflush_r+0x80>
   12368:	01843683          	ld	a3,24(s0)
   1236c:	fffff737          	lui	a4,0xfffff
   12370:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12374:	00e7f733          	and	a4,a5,a4
   12378:	00e41823          	sh	a4,16(s0)
   1237c:	00042423          	sw	zero,8(s0)
   12380:	00d43023          	sd	a3,0(s0)
   12384:	03379713          	slli	a4,a5,0x33
   12388:	ee075ce3          	bgez	a4,12280 <__sflush_r+0x108>
   1238c:	05843583          	ld	a1,88(s0)
   12390:	08a43823          	sd	a0,144(s0)
   12394:	0099a023          	sw	s1,0(s3)
   12398:	ee059ae3          	bnez	a1,1228c <__sflush_r+0x114>
   1239c:	01813483          	ld	s1,24(sp)
   123a0:	f05ff06f          	j	122a4 <__sflush_r+0x12c>
   123a4:	0009a783          	lw	a5,0(s3)
   123a8:	e40784e3          	beqz	a5,121f0 <__sflush_r+0x78>
   123ac:	fe378713          	addi	a4,a5,-29
   123b0:	00070c63          	beqz	a4,123c8 <__sflush_r+0x250>
   123b4:	fea78793          	addi	a5,a5,-22
   123b8:	00078863          	beqz	a5,123c8 <__sflush_r+0x250>
   123bc:	01045783          	lhu	a5,16(s0)
   123c0:	0407e793          	ori	a5,a5,64
   123c4:	f65ff06f          	j	12328 <__sflush_r+0x1b0>
   123c8:	0099a023          	sw	s1,0(s3)
   123cc:	01813483          	ld	s1,24(sp)
   123d0:	ed5ff06f          	j	122a4 <__sflush_r+0x12c>

00000000000123d4 <_fflush_r>:
   123d4:	00050793          	mv	a5,a0
   123d8:	00050663          	beqz	a0,123e4 <_fflush_r+0x10>
   123dc:	04853703          	ld	a4,72(a0)
   123e0:	00070e63          	beqz	a4,123fc <_fflush_r+0x28>
   123e4:	01059703          	lh	a4,16(a1)
   123e8:	00071663          	bnez	a4,123f4 <_fflush_r+0x20>
   123ec:	00000513          	li	a0,0
   123f0:	00008067          	ret
   123f4:	00078513          	mv	a0,a5
   123f8:	d81ff06f          	j	12178 <__sflush_r>
   123fc:	fe010113          	addi	sp,sp,-32
   12400:	00b13423          	sd	a1,8(sp)
   12404:	00113c23          	sd	ra,24(sp)
   12408:	00a13023          	sd	a0,0(sp)
   1240c:	f8cfe0ef          	jal	10b98 <__sinit>
   12410:	00813583          	ld	a1,8(sp)
   12414:	00013783          	ld	a5,0(sp)
   12418:	01059703          	lh	a4,16(a1)
   1241c:	00070a63          	beqz	a4,12430 <_fflush_r+0x5c>
   12420:	01813083          	ld	ra,24(sp)
   12424:	00078513          	mv	a0,a5
   12428:	02010113          	addi	sp,sp,32
   1242c:	d4dff06f          	j	12178 <__sflush_r>
   12430:	01813083          	ld	ra,24(sp)
   12434:	00000513          	li	a0,0
   12438:	02010113          	addi	sp,sp,32
   1243c:	00008067          	ret

0000000000012440 <fflush>:
   12440:	06050063          	beqz	a0,124a0 <fflush+0x60>
   12444:	00050593          	mv	a1,a0
   12448:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1244c:	00050663          	beqz	a0,12458 <fflush+0x18>
   12450:	04853783          	ld	a5,72(a0)
   12454:	00078c63          	beqz	a5,1246c <fflush+0x2c>
   12458:	01059783          	lh	a5,16(a1)
   1245c:	00079663          	bnez	a5,12468 <fflush+0x28>
   12460:	00000513          	li	a0,0
   12464:	00008067          	ret
   12468:	d11ff06f          	j	12178 <__sflush_r>
   1246c:	fe010113          	addi	sp,sp,-32
   12470:	00b13423          	sd	a1,8(sp)
   12474:	00a13023          	sd	a0,0(sp)
   12478:	00113c23          	sd	ra,24(sp)
   1247c:	f1cfe0ef          	jal	10b98 <__sinit>
   12480:	00813583          	ld	a1,8(sp)
   12484:	00013503          	ld	a0,0(sp)
   12488:	01059783          	lh	a5,16(a1)
   1248c:	02079863          	bnez	a5,124bc <fflush+0x7c>
   12490:	01813083          	ld	ra,24(sp)
   12494:	00000513          	li	a0,0
   12498:	02010113          	addi	sp,sp,32
   1249c:	00008067          	ret
   124a0:	00013637          	lui	a2,0x13
   124a4:	000125b7          	lui	a1,0x12
   124a8:	00013537          	lui	a0,0x13
   124ac:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   124b0:	3d458593          	addi	a1,a1,980 # 123d4 <_fflush_r>
   124b4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   124b8:	f3cfe06f          	j	10bf4 <_fwalk_sglue>
   124bc:	01813083          	ld	ra,24(sp)
   124c0:	02010113          	addi	sp,sp,32
   124c4:	cb5ff06f          	j	12178 <__sflush_r>

00000000000124c8 <_sbrk_r>:
   124c8:	fe010113          	addi	sp,sp,-32
   124cc:	00813823          	sd	s0,16(sp)
   124d0:	00913423          	sd	s1,8(sp)
   124d4:	00050493          	mv	s1,a0
   124d8:	00058513          	mv	a0,a1
   124dc:	00113c23          	sd	ra,24(sp)
   124e0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   124e4:	228000ef          	jal	1270c <_sbrk>
   124e8:	fff00793          	li	a5,-1
   124ec:	00f50c63          	beq	a0,a5,12504 <_sbrk_r+0x3c>
   124f0:	01813083          	ld	ra,24(sp)
   124f4:	01013403          	ld	s0,16(sp)
   124f8:	00813483          	ld	s1,8(sp)
   124fc:	02010113          	addi	sp,sp,32
   12500:	00008067          	ret
   12504:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12508:	fe0784e3          	beqz	a5,124f0 <_sbrk_r+0x28>
   1250c:	01813083          	ld	ra,24(sp)
   12510:	01013403          	ld	s0,16(sp)
   12514:	00f4a023          	sw	a5,0(s1)
   12518:	00813483          	ld	s1,8(sp)
   1251c:	02010113          	addi	sp,sp,32
   12520:	00008067          	ret

0000000000012524 <__libc_fini_array>:
   12524:	fe010113          	addi	sp,sp,-32
   12528:	00813823          	sd	s0,16(sp)
   1252c:	000137b7          	lui	a5,0x13
   12530:	00013437          	lui	s0,0x13
   12534:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12538:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1253c:	408787b3          	sub	a5,a5,s0
   12540:	00913423          	sd	s1,8(sp)
   12544:	00113c23          	sd	ra,24(sp)
   12548:	4037d493          	srai	s1,a5,0x3
   1254c:	02048063          	beqz	s1,1256c <__libc_fini_array+0x48>
   12550:	ff840413          	addi	s0,s0,-8
   12554:	00f40433          	add	s0,s0,a5
   12558:	00043783          	ld	a5,0(s0)
   1255c:	fff48493          	addi	s1,s1,-1
   12560:	ff840413          	addi	s0,s0,-8
   12564:	000780e7          	jalr	a5
   12568:	fe0498e3          	bnez	s1,12558 <__libc_fini_array+0x34>
   1256c:	01813083          	ld	ra,24(sp)
   12570:	01013403          	ld	s0,16(sp)
   12574:	00813483          	ld	s1,8(sp)
   12578:	02010113          	addi	sp,sp,32
   1257c:	00008067          	ret

0000000000012580 <__register_exitproc>:
   12580:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12584:	04078e63          	beqz	a5,125e0 <__register_exitproc+0x60>
   12588:	0087a703          	lw	a4,8(a5)
   1258c:	01f00813          	li	a6,31
   12590:	08e84263          	blt	a6,a4,12614 <__register_exitproc+0x94>
   12594:	02050863          	beqz	a0,125c4 <__register_exitproc+0x44>
   12598:	00371813          	slli	a6,a4,0x3
   1259c:	01078833          	add	a6,a5,a6
   125a0:	10c83823          	sd	a2,272(a6)
   125a4:	3107a883          	lw	a7,784(a5)
   125a8:	00100613          	li	a2,1
   125ac:	00e6163b          	sllw	a2,a2,a4
   125b0:	00c8e8b3          	or	a7,a7,a2
   125b4:	3117a823          	sw	a7,784(a5)
   125b8:	20d83823          	sd	a3,528(a6)
   125bc:	00200693          	li	a3,2
   125c0:	02d50663          	beq	a0,a3,125ec <__register_exitproc+0x6c>
   125c4:	0017069b          	addiw	a3,a4,1
   125c8:	00371713          	slli	a4,a4,0x3
   125cc:	00d7a423          	sw	a3,8(a5)
   125d0:	00e787b3          	add	a5,a5,a4
   125d4:	00b7b823          	sd	a1,16(a5)
   125d8:	00000513          	li	a0,0
   125dc:	00008067          	ret
   125e0:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   125e4:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   125e8:	fa1ff06f          	j	12588 <__register_exitproc+0x8>
   125ec:	3147a683          	lw	a3,788(a5)
   125f0:	00000513          	li	a0,0
   125f4:	00d66633          	or	a2,a2,a3
   125f8:	0017069b          	addiw	a3,a4,1
   125fc:	00371713          	slli	a4,a4,0x3
   12600:	30c7aa23          	sw	a2,788(a5)
   12604:	00d7a423          	sw	a3,8(a5)
   12608:	00e787b3          	add	a5,a5,a4
   1260c:	00b7b823          	sd	a1,16(a5)
   12610:	00008067          	ret
   12614:	fff00513          	li	a0,-1
   12618:	00008067          	ret

000000000001261c <_close>:
   1261c:	03900893          	li	a7,57
   12620:	00000073          	ecall
   12624:	00054663          	bltz	a0,12630 <_close+0x14>
   12628:	0005051b          	sext.w	a0,a0
   1262c:	00008067          	ret
   12630:	fe010113          	addi	sp,sp,-32
   12634:	00113c23          	sd	ra,24(sp)
   12638:	00a13423          	sd	a0,8(sp)
   1263c:	188000ef          	jal	127c4 <__errno>
   12640:	00813783          	ld	a5,8(sp)
   12644:	01813083          	ld	ra,24(sp)
   12648:	40f007bb          	negw	a5,a5
   1264c:	00f52023          	sw	a5,0(a0)
   12650:	fff00513          	li	a0,-1
   12654:	02010113          	addi	sp,sp,32
   12658:	00008067          	ret

000000000001265c <_exit>:
   1265c:	05d00893          	li	a7,93
   12660:	00000073          	ecall
   12664:	00054463          	bltz	a0,1266c <_exit+0x10>
   12668:	0000006f          	j	12668 <_exit+0xc>
   1266c:	fe010113          	addi	sp,sp,-32
   12670:	00113c23          	sd	ra,24(sp)
   12674:	00a13423          	sd	a0,8(sp)
   12678:	14c000ef          	jal	127c4 <__errno>
   1267c:	00813783          	ld	a5,8(sp)
   12680:	40f007bb          	negw	a5,a5
   12684:	00f52023          	sw	a5,0(a0)
   12688:	0000006f          	j	12688 <_exit+0x2c>

000000000001268c <_lseek>:
   1268c:	03e00893          	li	a7,62
   12690:	00000073          	ecall
   12694:	00054463          	bltz	a0,1269c <_lseek+0x10>
   12698:	00008067          	ret
   1269c:	fe010113          	addi	sp,sp,-32
   126a0:	00113c23          	sd	ra,24(sp)
   126a4:	00a13423          	sd	a0,8(sp)
   126a8:	11c000ef          	jal	127c4 <__errno>
   126ac:	00813783          	ld	a5,8(sp)
   126b0:	01813083          	ld	ra,24(sp)
   126b4:	40f007bb          	negw	a5,a5
   126b8:	00f52023          	sw	a5,0(a0)
   126bc:	fff00793          	li	a5,-1
   126c0:	00078513          	mv	a0,a5
   126c4:	02010113          	addi	sp,sp,32
   126c8:	00008067          	ret

00000000000126cc <_read>:
   126cc:	03f00893          	li	a7,63
   126d0:	00000073          	ecall
   126d4:	00054463          	bltz	a0,126dc <_read+0x10>
   126d8:	00008067          	ret
   126dc:	fe010113          	addi	sp,sp,-32
   126e0:	00113c23          	sd	ra,24(sp)
   126e4:	00a13423          	sd	a0,8(sp)
   126e8:	0dc000ef          	jal	127c4 <__errno>
   126ec:	00813783          	ld	a5,8(sp)
   126f0:	01813083          	ld	ra,24(sp)
   126f4:	40f007bb          	negw	a5,a5
   126f8:	00f52023          	sw	a5,0(a0)
   126fc:	fff00793          	li	a5,-1
   12700:	00078513          	mv	a0,a5
   12704:	02010113          	addi	sp,sp,32
   12708:	00008067          	ret

000000000001270c <_sbrk>:
   1270c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12710:	ff010113          	addi	sp,sp,-16
   12714:	00113423          	sd	ra,8(sp)
   12718:	00050713          	mv	a4,a0
   1271c:	02079063          	bnez	a5,1273c <_sbrk+0x30>
   12720:	0d600893          	li	a7,214
   12724:	00000513          	li	a0,0
   12728:	00000073          	ecall
   1272c:	fff00793          	li	a5,-1
   12730:	02f50c63          	beq	a0,a5,12768 <_sbrk+0x5c>
   12734:	00050793          	mv	a5,a0
   12738:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1273c:	00f70533          	add	a0,a4,a5
   12740:	0d600893          	li	a7,214
   12744:	00000073          	ecall
   12748:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1274c:	00f70733          	add	a4,a4,a5
   12750:	00e51c63          	bne	a0,a4,12768 <_sbrk+0x5c>
   12754:	00813083          	ld	ra,8(sp)
   12758:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1275c:	00078513          	mv	a0,a5
   12760:	01010113          	addi	sp,sp,16
   12764:	00008067          	ret
   12768:	05c000ef          	jal	127c4 <__errno>
   1276c:	00813083          	ld	ra,8(sp)
   12770:	00c00793          	li	a5,12
   12774:	00f52023          	sw	a5,0(a0)
   12778:	fff00513          	li	a0,-1
   1277c:	01010113          	addi	sp,sp,16
   12780:	00008067          	ret

0000000000012784 <_write>:
   12784:	04000893          	li	a7,64
   12788:	00000073          	ecall
   1278c:	00054463          	bltz	a0,12794 <_write+0x10>
   12790:	00008067          	ret
   12794:	fe010113          	addi	sp,sp,-32
   12798:	00113c23          	sd	ra,24(sp)
   1279c:	00a13423          	sd	a0,8(sp)
   127a0:	024000ef          	jal	127c4 <__errno>
   127a4:	00813783          	ld	a5,8(sp)
   127a8:	01813083          	ld	ra,24(sp)
   127ac:	40f007bb          	negw	a5,a5
   127b0:	00f52023          	sw	a5,0(a0)
   127b4:	fff00793          	li	a5,-1
   127b8:	00078513          	mv	a0,a5
   127bc:	02010113          	addi	sp,sp,32
   127c0:	00008067          	ret

00000000000127c4 <__errno>:
   127c4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   127c8:	00008067          	ret

Disassembly of section .rodata:

00000000000127d0 <.rodata>:
   127d0:	7250                	.insn	2, 0x7250
   127d2:	7665                	.insn	2, 0x7665
   127d4:	4120                	.insn	2, 0x4120
   127d6:	203a                	.insn	2, 0x203a
	...
   127e0:	0020                	.insn	2, 0x0020
   127e2:	0000                	.insn	2, 0x0000
   127e4:	0000                	.insn	2, 0x0000
   127e6:	0000                	.insn	2, 0x0000
   127e8:	000a                	.insn	2, 0x000a
   127ea:	0000                	.insn	2, 0x0000
   127ec:	0000                	.insn	2, 0x0000
   127ee:	0000                	.insn	2, 0x0000
   127f0:	74726f53          	.insn	4, 0x74726f53
   127f4:	6465                	.insn	2, 0x6465
   127f6:	4120                	.insn	2, 0x4120
   127f8:	203a                	.insn	2, 0x203a
   127fa:	0000                	.insn	2, 0x0000
   127fc:	0000                	.insn	2, 0x0000
   127fe:	0000                	.insn	2, 0x0000
   12800:	7250                	.insn	2, 0x7250
   12802:	7665                	.insn	2, 0x7665
   12804:	4220                	.insn	2, 0x4220
   12806:	203a                	.insn	2, 0x203a
	...
   12810:	74726f53          	.insn	4, 0x74726f53
   12814:	6465                	.insn	2, 0x6465
   12816:	4220                	.insn	2, 0x4220
   12818:	203a                	.insn	2, 0x203a
   1281a:	0000                	.insn	2, 0x0000
   1281c:	0000                	.insn	2, 0x0000
   1281e:	0000                	.insn	2, 0x0000
   12820:	0005                	.insn	2, 0x0005
   12822:	0000                	.insn	2, 0x0000
   12824:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   12828:	0005                	.insn	2, 0x0005
   1282a:	0000                	.insn	2, 0x0000
   1282c:	0006                	.insn	2, 0x0006
   1282e:	0000                	.insn	2, 0x0000
   12830:	00000007          	.insn	4, 0x0007
   12834:	0001                	.insn	2, 0x0001
   12836:	0000                	.insn	2, 0x0000
   12838:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   1283c:	0005                	.insn	2, 0x0005
   1283e:	0000                	.insn	2, 0x0000
   12840:	0006                	.insn	2, 0x0006
   12842:	0000                	.insn	2, 0x0000
   12844:	0001                	.insn	2, 0x0001
	...

Disassembly of section .eh_frame:

0000000000012848 <__EH_FRAME_BEGIN__>:
   12848:	0000                	.insn	2, 0x0000
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
  10:	20293463          	.insn	4, 0x20293463
  14:	3531                	.insn	2, 0x3531
  16:	312e                	.insn	2, 0x312e
  18:	302e                	.insn	2, 0x302e
  1a:	4700                	.insn	2, 0x4700
  1c:	203a4343          	.insn	4, 0x203a4343
  20:	4728                	.insn	2, 0x4728
  22:	554e                	.insn	2, 0x554e
  24:	2029                	.insn	2, 0x2029
  26:	3531                	.insn	2, 0x3531
  28:	312e                	.insn	2, 0x312e
  2a:	302e                	.insn	2, 0x302e
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

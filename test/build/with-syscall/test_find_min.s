
test/build/with-syscall/test_find_min.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	711000ef          	jal	11044 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	354020ef          	jal	1249c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	36450513          	addi	a0,a0,868 # 12364 <__libc_fini_array>
   1015c:	0200106f          	j	1117c <atexit>
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
   10184:	5e5000ef          	jal	10f68 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	ff450513          	addi	a0,a0,-12 # 1117c <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	1d050513          	addi	a0,a0,464 # 12364 <__libc_fini_array>
   1019c:	7e1000ef          	jal	1117c <atexit>
   101a0:	535000ef          	jal	10ed4 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	19c000ef          	jal	1034c <main>
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
   101d8:	74850513          	addi	a0,a0,1864 # 12748 <__EH_FRAME_BEGIN__>
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
   1020c:	74850513          	addi	a0,a0,1864 # 12748 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <test_find_min>:
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
   10244:	000127b7          	lui	a5,0x12
   10248:	61078513          	addi	a0,a5,1552 # 12610 <__errno+0xc>
   1024c:	338000ef          	jal	10584 <print_s>
   10250:	fe042623          	sw	zero,-20(s0)
   10254:	0500006f          	j	102a4 <test_find_min+0x88>
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	00279793          	slli	a5,a5,0x2
   10260:	fd843703          	ld	a4,-40(s0)
   10264:	00f707b3          	add	a5,a4,a5
   10268:	0007a783          	lw	a5,0(a5)
   1026c:	00078513          	mv	a0,a5
   10270:	2a8000ef          	jal	10518 <print_d>
   10274:	fd442783          	lw	a5,-44(s0)
   10278:	fff7879b          	addiw	a5,a5,-1
   1027c:	0007879b          	sext.w	a5,a5
   10280:	fec42703          	lw	a4,-20(s0)
   10284:	0007071b          	sext.w	a4,a4
   10288:	00f75863          	bge	a4,a5,10298 <test_find_min+0x7c>
   1028c:	000127b7          	lui	a5,0x12
   10290:	62078513          	addi	a0,a5,1568 # 12620 <__errno+0x1c>
   10294:	2f0000ef          	jal	10584 <print_s>
   10298:	fec42783          	lw	a5,-20(s0)
   1029c:	0017879b          	addiw	a5,a5,1
   102a0:	fef42623          	sw	a5,-20(s0)
   102a4:	fec42783          	lw	a5,-20(s0)
   102a8:	00078713          	mv	a4,a5
   102ac:	fd442783          	lw	a5,-44(s0)
   102b0:	0007071b          	sext.w	a4,a4
   102b4:	0007879b          	sext.w	a5,a5
   102b8:	faf740e3          	blt	a4,a5,10258 <test_find_min+0x3c>
   102bc:	000127b7          	lui	a5,0x12
   102c0:	62878513          	addi	a0,a5,1576 # 12628 <__errno+0x24>
   102c4:	2c0000ef          	jal	10584 <print_s>
   102c8:	fd442783          	lw	a5,-44(s0)
   102cc:	00078593          	mv	a1,a5
   102d0:	fd843503          	ld	a0,-40(s0)
   102d4:	3b0000ef          	jal	10684 <find_min>
   102d8:	00050793          	mv	a5,a0
   102dc:	fef42423          	sw	a5,-24(s0)
   102e0:	fe842783          	lw	a5,-24(s0)
   102e4:	00078513          	mv	a0,a5
   102e8:	230000ef          	jal	10518 <print_d>
   102ec:	fe842783          	lw	a5,-24(s0)
   102f0:	00078713          	mv	a4,a5
   102f4:	fd042783          	lw	a5,-48(s0)
   102f8:	0007071b          	sext.w	a4,a4
   102fc:	0007879b          	sext.w	a5,a5
   10300:	00f71a63          	bne	a4,a5,10314 <test_find_min+0xf8>
   10304:	000127b7          	lui	a5,0x12
   10308:	63878513          	addi	a0,a5,1592 # 12638 <__errno+0x34>
   1030c:	278000ef          	jal	10584 <print_s>
   10310:	0280006f          	j	10338 <test_find_min+0x11c>
   10314:	000127b7          	lui	a5,0x12
   10318:	64878513          	addi	a0,a5,1608 # 12648 <__errno+0x44>
   1031c:	268000ef          	jal	10584 <print_s>
   10320:	fd042783          	lw	a5,-48(s0)
   10324:	00078513          	mv	a0,a5
   10328:	1f0000ef          	jal	10518 <print_d>
   1032c:	000127b7          	lui	a5,0x12
   10330:	66078513          	addi	a0,a5,1632 # 12660 <__errno+0x5c>
   10334:	250000ef          	jal	10584 <print_s>
   10338:	00000013          	nop
   1033c:	02813083          	ld	ra,40(sp)
   10340:	02013403          	ld	s0,32(sp)
   10344:	03010113          	addi	sp,sp,48
   10348:	00008067          	ret

000000000001034c <main>:
   1034c:	f4010113          	addi	sp,sp,-192
   10350:	0a113c23          	sd	ra,184(sp)
   10354:	0a813823          	sd	s0,176(sp)
   10358:	0c010413          	addi	s0,sp,192
   1035c:	000127b7          	lui	a5,0x12
   10360:	66878513          	addi	a0,a5,1640 # 12668 <__errno+0x64>
   10364:	220000ef          	jal	10584 <print_s>
   10368:	000127b7          	lui	a5,0x12
   1036c:	6a078793          	addi	a5,a5,1696 # 126a0 <__errno+0x9c>
   10370:	0007b703          	ld	a4,0(a5)
   10374:	fce43c23          	sd	a4,-40(s0)
   10378:	0087b703          	ld	a4,8(a5)
   1037c:	fee43023          	sd	a4,-32(s0)
   10380:	0107b783          	ld	a5,16(a5)
   10384:	fef43423          	sd	a5,-24(s0)
   10388:	fd840793          	addi	a5,s0,-40
   1038c:	00100613          	li	a2,1
   10390:	00600593          	li	a1,6
   10394:	00078513          	mv	a0,a5
   10398:	e85ff0ef          	jal	1021c <test_find_min>
   1039c:	000127b7          	lui	a5,0x12
   103a0:	6b878793          	addi	a5,a5,1720 # 126b8 <__errno+0xb4>
   103a4:	0007b703          	ld	a4,0(a5)
   103a8:	fce43023          	sd	a4,-64(s0)
   103ac:	0087b703          	ld	a4,8(a5)
   103b0:	fce43423          	sd	a4,-56(s0)
   103b4:	0107a783          	lw	a5,16(a5)
   103b8:	fcf42823          	sw	a5,-48(s0)
   103bc:	fc040793          	addi	a5,s0,-64
   103c0:	ff700613          	li	a2,-9
   103c4:	00500593          	li	a1,5
   103c8:	00078513          	mv	a0,a5
   103cc:	e51ff0ef          	jal	1021c <test_find_min>
   103d0:	000127b7          	lui	a5,0x12
   103d4:	6d078793          	addi	a5,a5,1744 # 126d0 <__errno+0xcc>
   103d8:	0007b603          	ld	a2,0(a5)
   103dc:	0087b683          	ld	a3,8(a5)
   103e0:	0107b703          	ld	a4,16(a5)
   103e4:	fac43023          	sd	a2,-96(s0)
   103e8:	fad43423          	sd	a3,-88(s0)
   103ec:	fae43823          	sd	a4,-80(s0)
   103f0:	0187b783          	ld	a5,24(a5)
   103f4:	faf43c23          	sd	a5,-72(s0)
   103f8:	fa040793          	addi	a5,s0,-96
   103fc:	ff800613          	li	a2,-8
   10400:	00800593          	li	a1,8
   10404:	00078513          	mv	a0,a5
   10408:	e15ff0ef          	jal	1021c <test_find_min>
   1040c:	02a00793          	li	a5,42
   10410:	f8f42c23          	sw	a5,-104(s0)
   10414:	f9840793          	addi	a5,s0,-104
   10418:	02a00613          	li	a2,42
   1041c:	00100593          	li	a1,1
   10420:	00078513          	mv	a0,a5
   10424:	df9ff0ef          	jal	1021c <test_find_min>
   10428:	000127b7          	lui	a5,0x12
   1042c:	6f078793          	addi	a5,a5,1776 # 126f0 <__errno+0xec>
   10430:	0007b703          	ld	a4,0(a5)
   10434:	f8e43423          	sd	a4,-120(s0)
   10438:	0087b783          	ld	a5,8(a5)
   1043c:	f8f43823          	sd	a5,-112(s0)
   10440:	f8840793          	addi	a5,s0,-120
   10444:	00700613          	li	a2,7
   10448:	00400593          	li	a1,4
   1044c:	00078513          	mv	a0,a5
   10450:	dcdff0ef          	jal	1021c <test_find_min>
   10454:	000127b7          	lui	a5,0x12
   10458:	70078793          	addi	a5,a5,1792 # 12700 <__errno+0xfc>
   1045c:	0007b703          	ld	a4,0(a5)
   10460:	f6e43c23          	sd	a4,-136(s0)
   10464:	0087b783          	ld	a5,8(a5)
   10468:	f8f43023          	sd	a5,-128(s0)
   1046c:	f7840793          	addi	a5,s0,-136
   10470:	f9c00613          	li	a2,-100
   10474:	00400593          	li	a1,4
   10478:	00078513          	mv	a0,a5
   1047c:	da1ff0ef          	jal	1021c <test_find_min>
   10480:	000127b7          	lui	a5,0x12
   10484:	71078793          	addi	a5,a5,1808 # 12710 <__errno+0x10c>
   10488:	0007b703          	ld	a4,0(a5)
   1048c:	f6e43423          	sd	a4,-152(s0)
   10490:	0087b783          	ld	a5,8(a5)
   10494:	f6f43823          	sd	a5,-144(s0)
   10498:	f6840793          	addi	a5,s0,-152
   1049c:	f9c00613          	li	a2,-100
   104a0:	00400593          	li	a1,4
   104a4:	00078513          	mv	a0,a5
   104a8:	d75ff0ef          	jal	1021c <test_find_min>
   104ac:	000127b7          	lui	a5,0x12
   104b0:	72078793          	addi	a5,a5,1824 # 12720 <__errno+0x11c>
   104b4:	0007b583          	ld	a1,0(a5)
   104b8:	0087b603          	ld	a2,8(a5)
   104bc:	0107b683          	ld	a3,16(a5)
   104c0:	0187b703          	ld	a4,24(a5)
   104c4:	f4b43023          	sd	a1,-192(s0)
   104c8:	f4c43423          	sd	a2,-184(s0)
   104cc:	f4d43823          	sd	a3,-176(s0)
   104d0:	f4e43c23          	sd	a4,-168(s0)
   104d4:	0207b783          	ld	a5,32(a5)
   104d8:	f6f43023          	sd	a5,-160(s0)
   104dc:	f4040793          	addi	a5,s0,-192
   104e0:	00100613          	li	a2,1
   104e4:	00a00593          	li	a1,10
   104e8:	00078513          	mv	a0,a5
   104ec:	d31ff0ef          	jal	1021c <test_find_min>
   104f0:	000127b7          	lui	a5,0x12
   104f4:	68078513          	addi	a0,a5,1664 # 12680 <__errno+0x7c>
   104f8:	08c000ef          	jal	10584 <print_s>
   104fc:	0ec000ef          	jal	105e8 <exit_proc>
   10500:	00000793          	li	a5,0
   10504:	00078513          	mv	a0,a5
   10508:	0b813083          	ld	ra,184(sp)
   1050c:	0b013403          	ld	s0,176(sp)
   10510:	0c010113          	addi	sp,sp,192
   10514:	00008067          	ret

0000000000010518 <print_d>:
   10518:	fe010113          	addi	sp,sp,-32
   1051c:	00113c23          	sd	ra,24(sp)
   10520:	00813823          	sd	s0,16(sp)
   10524:	02010413          	addi	s0,sp,32
   10528:	00050793          	mv	a5,a0
   1052c:	fef42623          	sw	a5,-20(s0)
   10530:	00200893          	li	a7,2
   10534:	00000073          	ecall
   10538:	00000013          	nop
   1053c:	01813083          	ld	ra,24(sp)
   10540:	01013403          	ld	s0,16(sp)
   10544:	02010113          	addi	sp,sp,32
   10548:	00008067          	ret

000000000001054c <print_ll>:
   1054c:	fe010113          	addi	sp,sp,-32
   10550:	00113c23          	sd	ra,24(sp)
   10554:	00813823          	sd	s0,16(sp)
   10558:	02010413          	addi	s0,sp,32
   1055c:	fea43423          	sd	a0,-24(s0)
   10560:	fe843783          	ld	a5,-24(s0)
   10564:	00078513          	mv	a0,a5
   10568:	00600893          	li	a7,6
   1056c:	00000073          	ecall
   10570:	00000013          	nop
   10574:	01813083          	ld	ra,24(sp)
   10578:	01013403          	ld	s0,16(sp)
   1057c:	02010113          	addi	sp,sp,32
   10580:	00008067          	ret

0000000000010584 <print_s>:
   10584:	fe010113          	addi	sp,sp,-32
   10588:	00113c23          	sd	ra,24(sp)
   1058c:	00813823          	sd	s0,16(sp)
   10590:	02010413          	addi	s0,sp,32
   10594:	fea43423          	sd	a0,-24(s0)
   10598:	00000893          	li	a7,0
   1059c:	00000073          	ecall
   105a0:	00000013          	nop
   105a4:	01813083          	ld	ra,24(sp)
   105a8:	01013403          	ld	s0,16(sp)
   105ac:	02010113          	addi	sp,sp,32
   105b0:	00008067          	ret

00000000000105b4 <print_c>:
   105b4:	fe010113          	addi	sp,sp,-32
   105b8:	00113c23          	sd	ra,24(sp)
   105bc:	00813823          	sd	s0,16(sp)
   105c0:	02010413          	addi	s0,sp,32
   105c4:	00050793          	mv	a5,a0
   105c8:	fef407a3          	sb	a5,-17(s0)
   105cc:	00100893          	li	a7,1
   105d0:	00000073          	ecall
   105d4:	00000013          	nop
   105d8:	01813083          	ld	ra,24(sp)
   105dc:	01013403          	ld	s0,16(sp)
   105e0:	02010113          	addi	sp,sp,32
   105e4:	00008067          	ret

00000000000105e8 <exit_proc>:
   105e8:	ff010113          	addi	sp,sp,-16
   105ec:	00113423          	sd	ra,8(sp)
   105f0:	00813023          	sd	s0,0(sp)
   105f4:	01010413          	addi	s0,sp,16
   105f8:	00300893          	li	a7,3
   105fc:	00000073          	ecall
   10600:	00000013          	nop
   10604:	00813083          	ld	ra,8(sp)
   10608:	00013403          	ld	s0,0(sp)
   1060c:	01010113          	addi	sp,sp,16
   10610:	00008067          	ret

0000000000010614 <read_char>:
   10614:	fe010113          	addi	sp,sp,-32
   10618:	00113c23          	sd	ra,24(sp)
   1061c:	00813823          	sd	s0,16(sp)
   10620:	02010413          	addi	s0,sp,32
   10624:	00400893          	li	a7,4
   10628:	00000073          	ecall
   1062c:	00050793          	mv	a5,a0
   10630:	fef407a3          	sb	a5,-17(s0)
   10634:	fef44783          	lbu	a5,-17(s0)
   10638:	00078513          	mv	a0,a5
   1063c:	01813083          	ld	ra,24(sp)
   10640:	01013403          	ld	s0,16(sp)
   10644:	02010113          	addi	sp,sp,32
   10648:	00008067          	ret

000000000001064c <read_num>:
   1064c:	fe010113          	addi	sp,sp,-32
   10650:	00113c23          	sd	ra,24(sp)
   10654:	00813823          	sd	s0,16(sp)
   10658:	02010413          	addi	s0,sp,32
   1065c:	00500893          	li	a7,5
   10660:	00000073          	ecall
   10664:	00050793          	mv	a5,a0
   10668:	fef43423          	sd	a5,-24(s0)
   1066c:	fe843783          	ld	a5,-24(s0)
   10670:	00078513          	mv	a0,a5
   10674:	01813083          	ld	ra,24(sp)
   10678:	01013403          	ld	s0,16(sp)
   1067c:	02010113          	addi	sp,sp,32
   10680:	00008067          	ret

0000000000010684 <find_min>:
   10684:	fd010113          	addi	sp,sp,-48
   10688:	02113423          	sd	ra,40(sp)
   1068c:	02813023          	sd	s0,32(sp)
   10690:	03010413          	addi	s0,sp,48
   10694:	fca43c23          	sd	a0,-40(s0)
   10698:	00058793          	mv	a5,a1
   1069c:	fcf42a23          	sw	a5,-44(s0)
   106a0:	00700893          	li	a7,7
   106a4:	00000073          	ecall
   106a8:	00050793          	mv	a5,a0
   106ac:	fef42623          	sw	a5,-20(s0)
   106b0:	fec42783          	lw	a5,-20(s0)
   106b4:	00078513          	mv	a0,a5
   106b8:	02813083          	ld	ra,40(sp)
   106bc:	02013403          	ld	s0,32(sp)
   106c0:	03010113          	addi	sp,sp,48
   106c4:	00008067          	ret

00000000000106c8 <__fp_lock>:
   106c8:	00000513          	li	a0,0
   106cc:	00008067          	ret

00000000000106d0 <stdio_exit_handler>:
   106d0:	00013637          	lui	a2,0x13
   106d4:	000125b7          	lui	a1,0x12
   106d8:	00013537          	lui	a0,0x13
   106dc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   106e0:	ea458593          	addi	a1,a1,-348 # 11ea4 <_fclose_r>
   106e4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   106e8:	34c0006f          	j	10a34 <_fwalk_sglue>

00000000000106ec <cleanup_stdio>:
   106ec:	00853583          	ld	a1,8(a0)
   106f0:	ff010113          	addi	sp,sp,-16
   106f4:	00813023          	sd	s0,0(sp)
   106f8:	00113423          	sd	ra,8(sp)
   106fc:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10700:	00050413          	mv	s0,a0
   10704:	00f58463          	beq	a1,a5,1070c <cleanup_stdio+0x20>
   10708:	79c010ef          	jal	11ea4 <_fclose_r>
   1070c:	01043583          	ld	a1,16(s0)
   10710:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10714:	00f58663          	beq	a1,a5,10720 <cleanup_stdio+0x34>
   10718:	00040513          	mv	a0,s0
   1071c:	788010ef          	jal	11ea4 <_fclose_r>
   10720:	01843583          	ld	a1,24(s0)
   10724:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10728:	00f58c63          	beq	a1,a5,10740 <cleanup_stdio+0x54>
   1072c:	00040513          	mv	a0,s0
   10730:	00013403          	ld	s0,0(sp)
   10734:	00813083          	ld	ra,8(sp)
   10738:	01010113          	addi	sp,sp,16
   1073c:	7680106f          	j	11ea4 <_fclose_r>
   10740:	00813083          	ld	ra,8(sp)
   10744:	00013403          	ld	s0,0(sp)
   10748:	01010113          	addi	sp,sp,16
   1074c:	00008067          	ret

0000000000010750 <__fp_unlock>:
   10750:	00000513          	li	a0,0
   10754:	00008067          	ret

0000000000010758 <global_stdio_init.part.0>:
   10758:	fd010113          	addi	sp,sp,-48
   1075c:	000107b7          	lui	a5,0x10
   10760:	02813023          	sd	s0,32(sp)
   10764:	6d078793          	addi	a5,a5,1744 # 106d0 <stdio_exit_handler>
   10768:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   1076c:	02113423          	sd	ra,40(sp)
   10770:	00913c23          	sd	s1,24(sp)
   10774:	01213823          	sd	s2,16(sp)
   10778:	01313423          	sd	s3,8(sp)
   1077c:	01413023          	sd	s4,0(sp)
   10780:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10784:	00800613          	li	a2,8
   10788:	00400793          	li	a5,4
   1078c:	00000593          	li	a1,0
   10790:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10794:	00f42823          	sw	a5,16(s0)
   10798:	00043023          	sd	zero,0(s0)
   1079c:	00043423          	sd	zero,8(s0)
   107a0:	0a042623          	sw	zero,172(s0)
   107a4:	00043c23          	sd	zero,24(s0)
   107a8:	02042023          	sw	zero,32(s0)
   107ac:	02042423          	sw	zero,40(s0)
   107b0:	7b8000ef          	jal	10f68 <memset>
   107b4:	00011a37          	lui	s4,0x11
   107b8:	000119b7          	lui	s3,0x11
   107bc:	00011937          	lui	s2,0x11
   107c0:	000114b7          	lui	s1,0x11
   107c4:	000107b7          	lui	a5,0x10
   107c8:	b04a0a13          	addi	s4,s4,-1276 # 10b04 <__sread>
   107cc:	b6898993          	addi	s3,s3,-1176 # 10b68 <__swrite>
   107d0:	bf090913          	addi	s2,s2,-1040 # 10bf0 <__sseek>
   107d4:	c5448493          	addi	s1,s1,-940 # 10c54 <__sclose>
   107d8:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   107dc:	00800613          	li	a2,8
   107e0:	00000593          	li	a1,0
   107e4:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   107e8:	0cf42023          	sw	a5,192(s0)
   107ec:	03443c23          	sd	s4,56(s0)
   107f0:	05343023          	sd	s3,64(s0)
   107f4:	05243423          	sd	s2,72(s0)
   107f8:	04943823          	sd	s1,80(s0)
   107fc:	02843823          	sd	s0,48(s0)
   10800:	0a043823          	sd	zero,176(s0)
   10804:	0a043c23          	sd	zero,184(s0)
   10808:	14042e23          	sw	zero,348(s0)
   1080c:	0c043423          	sd	zero,200(s0)
   10810:	0c042823          	sw	zero,208(s0)
   10814:	0c042c23          	sw	zero,216(s0)
   10818:	750000ef          	jal	10f68 <memset>
   1081c:	000207b7          	lui	a5,0x20
   10820:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10824:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10828:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   1082c:	00800613          	li	a2,8
   10830:	00000593          	li	a1,0
   10834:	0f443423          	sd	s4,232(s0)
   10838:	0f343823          	sd	s3,240(s0)
   1083c:	0f243c23          	sd	s2,248(s0)
   10840:	10943023          	sd	s1,256(s0)
   10844:	16f42823          	sw	a5,368(s0)
   10848:	16043023          	sd	zero,352(s0)
   1084c:	16043423          	sd	zero,360(s0)
   10850:	20042623          	sw	zero,524(s0)
   10854:	16043c23          	sd	zero,376(s0)
   10858:	18042023          	sw	zero,384(s0)
   1085c:	18042423          	sw	zero,392(s0)
   10860:	0ee43023          	sd	a4,224(s0)
   10864:	704000ef          	jal	10f68 <memset>
   10868:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1086c:	19443c23          	sd	s4,408(s0)
   10870:	1b343023          	sd	s3,416(s0)
   10874:	1b243423          	sd	s2,424(s0)
   10878:	1a943823          	sd	s1,432(s0)
   1087c:	02813083          	ld	ra,40(sp)
   10880:	18f43823          	sd	a5,400(s0)
   10884:	02013403          	ld	s0,32(sp)
   10888:	01813483          	ld	s1,24(sp)
   1088c:	01013903          	ld	s2,16(sp)
   10890:	00813983          	ld	s3,8(sp)
   10894:	00013a03          	ld	s4,0(sp)
   10898:	03010113          	addi	sp,sp,48
   1089c:	00008067          	ret

00000000000108a0 <__sfp>:
   108a0:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   108a4:	fd010113          	addi	sp,sp,-48
   108a8:	00913c23          	sd	s1,24(sp)
   108ac:	02113423          	sd	ra,40(sp)
   108b0:	02813023          	sd	s0,32(sp)
   108b4:	00050493          	mv	s1,a0
   108b8:	10078463          	beqz	a5,109c0 <__sfp+0x120>
   108bc:	000136b7          	lui	a3,0x13
   108c0:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   108c4:	0086a703          	lw	a4,8(a3)
   108c8:	08e05c63          	blez	a4,10960 <__sfp+0xc0>
   108cc:	02071713          	slli	a4,a4,0x20
   108d0:	02075713          	srli	a4,a4,0x20
   108d4:	00171793          	slli	a5,a4,0x1
   108d8:	00e787b3          	add	a5,a5,a4
   108dc:	0106b403          	ld	s0,16(a3)
   108e0:	00279793          	slli	a5,a5,0x2
   108e4:	40e787b3          	sub	a5,a5,a4
   108e8:	00479793          	slli	a5,a5,0x4
   108ec:	00f407b3          	add	a5,s0,a5
   108f0:	00c0006f          	j	108fc <__sfp+0x5c>
   108f4:	0b040413          	addi	s0,s0,176
   108f8:	06f40463          	beq	s0,a5,10960 <__sfp+0xc0>
   108fc:	01041703          	lh	a4,16(s0)
   10900:	fe071ae3          	bnez	a4,108f4 <__sfp+0x54>
   10904:	ffff07b7          	lui	a5,0xffff0
   10908:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   1090c:	00f42823          	sw	a5,16(s0)
   10910:	0a042623          	sw	zero,172(s0)
   10914:	00043023          	sd	zero,0(s0)
   10918:	00043423          	sd	zero,8(s0)
   1091c:	00043c23          	sd	zero,24(s0)
   10920:	02042023          	sw	zero,32(s0)
   10924:	02042423          	sw	zero,40(s0)
   10928:	00800613          	li	a2,8
   1092c:	00000593          	li	a1,0
   10930:	0a440513          	addi	a0,s0,164
   10934:	634000ef          	jal	10f68 <memset>
   10938:	04043c23          	sd	zero,88(s0)
   1093c:	06042023          	sw	zero,96(s0)
   10940:	06043c23          	sd	zero,120(s0)
   10944:	08042023          	sw	zero,128(s0)
   10948:	02813083          	ld	ra,40(sp)
   1094c:	00040513          	mv	a0,s0
   10950:	02013403          	ld	s0,32(sp)
   10954:	01813483          	ld	s1,24(sp)
   10958:	03010113          	addi	sp,sp,48
   1095c:	00008067          	ret
   10960:	0006b403          	ld	s0,0(a3)
   10964:	00040663          	beqz	s0,10970 <__sfp+0xd0>
   10968:	00040693          	mv	a3,s0
   1096c:	f59ff06f          	j	108c4 <__sfp+0x24>
   10970:	2d800593          	li	a1,728
   10974:	00048513          	mv	a0,s1
   10978:	00d13423          	sd	a3,8(sp)
   1097c:	43d000ef          	jal	115b8 <_malloc_r>
   10980:	00813683          	ld	a3,8(sp)
   10984:	00050413          	mv	s0,a0
   10988:	04050063          	beqz	a0,109c8 <__sfp+0x128>
   1098c:	00400793          	li	a5,4
   10990:	00f52423          	sw	a5,8(a0)
   10994:	01850513          	addi	a0,a0,24
   10998:	00043023          	sd	zero,0(s0)
   1099c:	00a43823          	sd	a0,16(s0)
   109a0:	2c000613          	li	a2,704
   109a4:	00000593          	li	a1,0
   109a8:	00d13423          	sd	a3,8(sp)
   109ac:	5bc000ef          	jal	10f68 <memset>
   109b0:	00813683          	ld	a3,8(sp)
   109b4:	0086b023          	sd	s0,0(a3)
   109b8:	00040693          	mv	a3,s0
   109bc:	f09ff06f          	j	108c4 <__sfp+0x24>
   109c0:	d99ff0ef          	jal	10758 <global_stdio_init.part.0>
   109c4:	ef9ff06f          	j	108bc <__sfp+0x1c>
   109c8:	0006b023          	sd	zero,0(a3)
   109cc:	00c00793          	li	a5,12
   109d0:	00f4a023          	sw	a5,0(s1)
   109d4:	f75ff06f          	j	10948 <__sfp+0xa8>

00000000000109d8 <__sinit>:
   109d8:	04853783          	ld	a5,72(a0)
   109dc:	00078463          	beqz	a5,109e4 <__sinit+0xc>
   109e0:	00008067          	ret
   109e4:	000107b7          	lui	a5,0x10
   109e8:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   109ec:	6ec78793          	addi	a5,a5,1772 # 106ec <cleanup_stdio>
   109f0:	04f53423          	sd	a5,72(a0)
   109f4:	fe0716e3          	bnez	a4,109e0 <__sinit+0x8>
   109f8:	d61ff06f          	j	10758 <global_stdio_init.part.0>

00000000000109fc <__sfp_lock_acquire>:
   109fc:	00008067          	ret

0000000000010a00 <__sfp_lock_release>:
   10a00:	00008067          	ret

0000000000010a04 <__fp_lock_all>:
   10a04:	00013637          	lui	a2,0x13
   10a08:	000105b7          	lui	a1,0x10
   10a0c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10a10:	6c858593          	addi	a1,a1,1736 # 106c8 <__fp_lock>
   10a14:	00000513          	li	a0,0
   10a18:	01c0006f          	j	10a34 <_fwalk_sglue>

0000000000010a1c <__fp_unlock_all>:
   10a1c:	00013637          	lui	a2,0x13
   10a20:	000105b7          	lui	a1,0x10
   10a24:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10a28:	75058593          	addi	a1,a1,1872 # 10750 <__fp_unlock>
   10a2c:	00000513          	li	a0,0
   10a30:	0040006f          	j	10a34 <_fwalk_sglue>

0000000000010a34 <_fwalk_sglue>:
   10a34:	fb010113          	addi	sp,sp,-80
   10a38:	03213823          	sd	s2,48(sp)
   10a3c:	03313423          	sd	s3,40(sp)
   10a40:	03413023          	sd	s4,32(sp)
   10a44:	01513c23          	sd	s5,24(sp)
   10a48:	01613823          	sd	s6,16(sp)
   10a4c:	01713423          	sd	s7,8(sp)
   10a50:	04113423          	sd	ra,72(sp)
   10a54:	04813023          	sd	s0,64(sp)
   10a58:	02913c23          	sd	s1,56(sp)
   10a5c:	00060913          	mv	s2,a2
   10a60:	00050a13          	mv	s4,a0
   10a64:	00058a93          	mv	s5,a1
   10a68:	00000b13          	li	s6,0
   10a6c:	00100b93          	li	s7,1
   10a70:	fff00993          	li	s3,-1
   10a74:	00892783          	lw	a5,8(s2)
   10a78:	04f05a63          	blez	a5,10acc <_fwalk_sglue+0x98>
   10a7c:	02079793          	slli	a5,a5,0x20
   10a80:	0207d793          	srli	a5,a5,0x20
   10a84:	00179493          	slli	s1,a5,0x1
   10a88:	00f484b3          	add	s1,s1,a5
   10a8c:	01093403          	ld	s0,16(s2)
   10a90:	00249493          	slli	s1,s1,0x2
   10a94:	40f484b3          	sub	s1,s1,a5
   10a98:	00449493          	slli	s1,s1,0x4
   10a9c:	009404b3          	add	s1,s0,s1
   10aa0:	01045783          	lhu	a5,16(s0)
   10aa4:	02fbf063          	bgeu	s7,a5,10ac4 <_fwalk_sglue+0x90>
   10aa8:	01241783          	lh	a5,18(s0)
   10aac:	00040593          	mv	a1,s0
   10ab0:	000a0513          	mv	a0,s4
   10ab4:	01378863          	beq	a5,s3,10ac4 <_fwalk_sglue+0x90>
   10ab8:	000a80e7          	jalr	s5
   10abc:	01656b33          	or	s6,a0,s6
   10ac0:	000b0b1b          	sext.w	s6,s6
   10ac4:	0b040413          	addi	s0,s0,176
   10ac8:	fc941ce3          	bne	s0,s1,10aa0 <_fwalk_sglue+0x6c>
   10acc:	00093903          	ld	s2,0(s2)
   10ad0:	fa0912e3          	bnez	s2,10a74 <_fwalk_sglue+0x40>
   10ad4:	04813083          	ld	ra,72(sp)
   10ad8:	04013403          	ld	s0,64(sp)
   10adc:	03813483          	ld	s1,56(sp)
   10ae0:	03013903          	ld	s2,48(sp)
   10ae4:	02813983          	ld	s3,40(sp)
   10ae8:	02013a03          	ld	s4,32(sp)
   10aec:	01813a83          	ld	s5,24(sp)
   10af0:	00813b83          	ld	s7,8(sp)
   10af4:	000b0513          	mv	a0,s6
   10af8:	01013b03          	ld	s6,16(sp)
   10afc:	05010113          	addi	sp,sp,80
   10b00:	00008067          	ret

0000000000010b04 <__sread>:
   10b04:	ff010113          	addi	sp,sp,-16
   10b08:	00813023          	sd	s0,0(sp)
   10b0c:	00058413          	mv	s0,a1
   10b10:	01259583          	lh	a1,18(a1)
   10b14:	00113423          	sd	ra,8(sp)
   10b18:	2ec000ef          	jal	10e04 <_read_r>
   10b1c:	02054063          	bltz	a0,10b3c <__sread+0x38>
   10b20:	09043783          	ld	a5,144(s0)
   10b24:	00813083          	ld	ra,8(sp)
   10b28:	00a787b3          	add	a5,a5,a0
   10b2c:	08f43823          	sd	a5,144(s0)
   10b30:	00013403          	ld	s0,0(sp)
   10b34:	01010113          	addi	sp,sp,16
   10b38:	00008067          	ret
   10b3c:	01045783          	lhu	a5,16(s0)
   10b40:	fffff737          	lui	a4,0xfffff
   10b44:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10b48:	00e7f7b3          	and	a5,a5,a4
   10b4c:	00813083          	ld	ra,8(sp)
   10b50:	00f41823          	sh	a5,16(s0)
   10b54:	00013403          	ld	s0,0(sp)
   10b58:	01010113          	addi	sp,sp,16
   10b5c:	00008067          	ret

0000000000010b60 <__seofread>:
   10b60:	00000513          	li	a0,0
   10b64:	00008067          	ret

0000000000010b68 <__swrite>:
   10b68:	01059783          	lh	a5,16(a1)
   10b6c:	fd010113          	addi	sp,sp,-48
   10b70:	00068313          	mv	t1,a3
   10b74:	02113423          	sd	ra,40(sp)
   10b78:	1007f693          	andi	a3,a5,256
   10b7c:	00058713          	mv	a4,a1
   10b80:	00060893          	mv	a7,a2
   10b84:	00050813          	mv	a6,a0
   10b88:	02069863          	bnez	a3,10bb8 <__swrite+0x50>
   10b8c:	fffff6b7          	lui	a3,0xfffff
   10b90:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10b94:	02813083          	ld	ra,40(sp)
   10b98:	00d7f7b3          	and	a5,a5,a3
   10b9c:	01271583          	lh	a1,18(a4)
   10ba0:	00f71823          	sh	a5,16(a4)
   10ba4:	00030693          	mv	a3,t1
   10ba8:	00088613          	mv	a2,a7
   10bac:	00080513          	mv	a0,a6
   10bb0:	03010113          	addi	sp,sp,48
   10bb4:	2b80006f          	j	10e6c <_write_r>
   10bb8:	01259583          	lh	a1,18(a1)
   10bbc:	00c13823          	sd	a2,16(sp)
   10bc0:	00200693          	li	a3,2
   10bc4:	00000613          	li	a2,0
   10bc8:	00613c23          	sd	t1,24(sp)
   10bcc:	00e13023          	sd	a4,0(sp)
   10bd0:	00a13423          	sd	a0,8(sp)
   10bd4:	1c8000ef          	jal	10d9c <_lseek_r>
   10bd8:	00013703          	ld	a4,0(sp)
   10bdc:	01813303          	ld	t1,24(sp)
   10be0:	01013883          	ld	a7,16(sp)
   10be4:	01071783          	lh	a5,16(a4)
   10be8:	00813803          	ld	a6,8(sp)
   10bec:	fa1ff06f          	j	10b8c <__swrite+0x24>

0000000000010bf0 <__sseek>:
   10bf0:	ff010113          	addi	sp,sp,-16
   10bf4:	00813023          	sd	s0,0(sp)
   10bf8:	00058413          	mv	s0,a1
   10bfc:	01259583          	lh	a1,18(a1)
   10c00:	00113423          	sd	ra,8(sp)
   10c04:	198000ef          	jal	10d9c <_lseek_r>
   10c08:	fff00713          	li	a4,-1
   10c0c:	01041783          	lh	a5,16(s0)
   10c10:	02e50263          	beq	a0,a4,10c34 <__sseek+0x44>
   10c14:	00001737          	lui	a4,0x1
   10c18:	00e7e7b3          	or	a5,a5,a4
   10c1c:	00813083          	ld	ra,8(sp)
   10c20:	08a43823          	sd	a0,144(s0)
   10c24:	00f41823          	sh	a5,16(s0)
   10c28:	00013403          	ld	s0,0(sp)
   10c2c:	01010113          	addi	sp,sp,16
   10c30:	00008067          	ret
   10c34:	80050713          	addi	a4,a0,-2048
   10c38:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10c3c:	00e7f7b3          	and	a5,a5,a4
   10c40:	00813083          	ld	ra,8(sp)
   10c44:	00f41823          	sh	a5,16(s0)
   10c48:	00013403          	ld	s0,0(sp)
   10c4c:	01010113          	addi	sp,sp,16
   10c50:	00008067          	ret

0000000000010c54 <__sclose>:
   10c54:	01259583          	lh	a1,18(a1)
   10c58:	0040006f          	j	10c5c <_close_r>

0000000000010c5c <_close_r>:
   10c5c:	fe010113          	addi	sp,sp,-32
   10c60:	00813823          	sd	s0,16(sp)
   10c64:	00913423          	sd	s1,8(sp)
   10c68:	00050493          	mv	s1,a0
   10c6c:	00058513          	mv	a0,a1
   10c70:	00113c23          	sd	ra,24(sp)
   10c74:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c78:	7e4010ef          	jal	1245c <_close>
   10c7c:	fff00793          	li	a5,-1
   10c80:	00f50c63          	beq	a0,a5,10c98 <_close_r+0x3c>
   10c84:	01813083          	ld	ra,24(sp)
   10c88:	01013403          	ld	s0,16(sp)
   10c8c:	00813483          	ld	s1,8(sp)
   10c90:	02010113          	addi	sp,sp,32
   10c94:	00008067          	ret
   10c98:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c9c:	fe0784e3          	beqz	a5,10c84 <_close_r+0x28>
   10ca0:	01813083          	ld	ra,24(sp)
   10ca4:	01013403          	ld	s0,16(sp)
   10ca8:	00f4a023          	sw	a5,0(s1)
   10cac:	00813483          	ld	s1,8(sp)
   10cb0:	02010113          	addi	sp,sp,32
   10cb4:	00008067          	ret

0000000000010cb8 <_reclaim_reent>:
   10cb8:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10cbc:	0ca78e63          	beq	a5,a0,10d98 <_reclaim_reent+0xe0>
   10cc0:	06853583          	ld	a1,104(a0)
   10cc4:	fd010113          	addi	sp,sp,-48
   10cc8:	00913c23          	sd	s1,24(sp)
   10ccc:	02113423          	sd	ra,40(sp)
   10cd0:	02813023          	sd	s0,32(sp)
   10cd4:	00050493          	mv	s1,a0
   10cd8:	04058863          	beqz	a1,10d28 <_reclaim_reent+0x70>
   10cdc:	01213823          	sd	s2,16(sp)
   10ce0:	01313423          	sd	s3,8(sp)
   10ce4:	00000913          	li	s2,0
   10ce8:	20000993          	li	s3,512
   10cec:	012587b3          	add	a5,a1,s2
   10cf0:	0007b403          	ld	s0,0(a5)
   10cf4:	00040e63          	beqz	s0,10d10 <_reclaim_reent+0x58>
   10cf8:	00040593          	mv	a1,s0
   10cfc:	00043403          	ld	s0,0(s0)
   10d00:	00048513          	mv	a0,s1
   10d04:	5b0000ef          	jal	112b4 <_free_r>
   10d08:	fe0418e3          	bnez	s0,10cf8 <_reclaim_reent+0x40>
   10d0c:	0684b583          	ld	a1,104(s1)
   10d10:	00890913          	addi	s2,s2,8
   10d14:	fd391ce3          	bne	s2,s3,10cec <_reclaim_reent+0x34>
   10d18:	00048513          	mv	a0,s1
   10d1c:	598000ef          	jal	112b4 <_free_r>
   10d20:	01013903          	ld	s2,16(sp)
   10d24:	00813983          	ld	s3,8(sp)
   10d28:	0504b583          	ld	a1,80(s1)
   10d2c:	00058663          	beqz	a1,10d38 <_reclaim_reent+0x80>
   10d30:	00048513          	mv	a0,s1
   10d34:	580000ef          	jal	112b4 <_free_r>
   10d38:	0604b403          	ld	s0,96(s1)
   10d3c:	00040c63          	beqz	s0,10d54 <_reclaim_reent+0x9c>
   10d40:	00040593          	mv	a1,s0
   10d44:	00043403          	ld	s0,0(s0)
   10d48:	00048513          	mv	a0,s1
   10d4c:	568000ef          	jal	112b4 <_free_r>
   10d50:	fe0418e3          	bnez	s0,10d40 <_reclaim_reent+0x88>
   10d54:	0784b583          	ld	a1,120(s1)
   10d58:	00058663          	beqz	a1,10d64 <_reclaim_reent+0xac>
   10d5c:	00048513          	mv	a0,s1
   10d60:	554000ef          	jal	112b4 <_free_r>
   10d64:	0484b783          	ld	a5,72(s1)
   10d68:	00078e63          	beqz	a5,10d84 <_reclaim_reent+0xcc>
   10d6c:	02013403          	ld	s0,32(sp)
   10d70:	02813083          	ld	ra,40(sp)
   10d74:	00048513          	mv	a0,s1
   10d78:	01813483          	ld	s1,24(sp)
   10d7c:	03010113          	addi	sp,sp,48
   10d80:	00078067          	jr	a5
   10d84:	02813083          	ld	ra,40(sp)
   10d88:	02013403          	ld	s0,32(sp)
   10d8c:	01813483          	ld	s1,24(sp)
   10d90:	03010113          	addi	sp,sp,48
   10d94:	00008067          	ret
   10d98:	00008067          	ret

0000000000010d9c <_lseek_r>:
   10d9c:	fe010113          	addi	sp,sp,-32
   10da0:	00058793          	mv	a5,a1
   10da4:	00813823          	sd	s0,16(sp)
   10da8:	00913423          	sd	s1,8(sp)
   10dac:	00060593          	mv	a1,a2
   10db0:	00050493          	mv	s1,a0
   10db4:	00068613          	mv	a2,a3
   10db8:	00078513          	mv	a0,a5
   10dbc:	00113c23          	sd	ra,24(sp)
   10dc0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10dc4:	708010ef          	jal	124cc <_lseek>
   10dc8:	fff00793          	li	a5,-1
   10dcc:	00f50c63          	beq	a0,a5,10de4 <_lseek_r+0x48>
   10dd0:	01813083          	ld	ra,24(sp)
   10dd4:	01013403          	ld	s0,16(sp)
   10dd8:	00813483          	ld	s1,8(sp)
   10ddc:	02010113          	addi	sp,sp,32
   10de0:	00008067          	ret
   10de4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10de8:	fe0784e3          	beqz	a5,10dd0 <_lseek_r+0x34>
   10dec:	01813083          	ld	ra,24(sp)
   10df0:	01013403          	ld	s0,16(sp)
   10df4:	00f4a023          	sw	a5,0(s1)
   10df8:	00813483          	ld	s1,8(sp)
   10dfc:	02010113          	addi	sp,sp,32
   10e00:	00008067          	ret

0000000000010e04 <_read_r>:
   10e04:	fe010113          	addi	sp,sp,-32
   10e08:	00058793          	mv	a5,a1
   10e0c:	00813823          	sd	s0,16(sp)
   10e10:	00913423          	sd	s1,8(sp)
   10e14:	00060593          	mv	a1,a2
   10e18:	00050493          	mv	s1,a0
   10e1c:	00068613          	mv	a2,a3
   10e20:	00078513          	mv	a0,a5
   10e24:	00113c23          	sd	ra,24(sp)
   10e28:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10e2c:	6e0010ef          	jal	1250c <_read>
   10e30:	fff00793          	li	a5,-1
   10e34:	00f50c63          	beq	a0,a5,10e4c <_read_r+0x48>
   10e38:	01813083          	ld	ra,24(sp)
   10e3c:	01013403          	ld	s0,16(sp)
   10e40:	00813483          	ld	s1,8(sp)
   10e44:	02010113          	addi	sp,sp,32
   10e48:	00008067          	ret
   10e4c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10e50:	fe0784e3          	beqz	a5,10e38 <_read_r+0x34>
   10e54:	01813083          	ld	ra,24(sp)
   10e58:	01013403          	ld	s0,16(sp)
   10e5c:	00f4a023          	sw	a5,0(s1)
   10e60:	00813483          	ld	s1,8(sp)
   10e64:	02010113          	addi	sp,sp,32
   10e68:	00008067          	ret

0000000000010e6c <_write_r>:
   10e6c:	fe010113          	addi	sp,sp,-32
   10e70:	00058793          	mv	a5,a1
   10e74:	00813823          	sd	s0,16(sp)
   10e78:	00913423          	sd	s1,8(sp)
   10e7c:	00060593          	mv	a1,a2
   10e80:	00050493          	mv	s1,a0
   10e84:	00068613          	mv	a2,a3
   10e88:	00078513          	mv	a0,a5
   10e8c:	00113c23          	sd	ra,24(sp)
   10e90:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10e94:	730010ef          	jal	125c4 <_write>
   10e98:	fff00793          	li	a5,-1
   10e9c:	00f50c63          	beq	a0,a5,10eb4 <_write_r+0x48>
   10ea0:	01813083          	ld	ra,24(sp)
   10ea4:	01013403          	ld	s0,16(sp)
   10ea8:	00813483          	ld	s1,8(sp)
   10eac:	02010113          	addi	sp,sp,32
   10eb0:	00008067          	ret
   10eb4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10eb8:	fe0784e3          	beqz	a5,10ea0 <_write_r+0x34>
   10ebc:	01813083          	ld	ra,24(sp)
   10ec0:	01013403          	ld	s0,16(sp)
   10ec4:	00f4a023          	sw	a5,0(s1)
   10ec8:	00813483          	ld	s1,8(sp)
   10ecc:	02010113          	addi	sp,sp,32
   10ed0:	00008067          	ret

0000000000010ed4 <__libc_init_array>:
   10ed4:	fe010113          	addi	sp,sp,-32
   10ed8:	00813823          	sd	s0,16(sp)
   10edc:	01213023          	sd	s2,0(sp)
   10ee0:	00013437          	lui	s0,0x13
   10ee4:	00013937          	lui	s2,0x13
   10ee8:	00113c23          	sd	ra,24(sp)
   10eec:	00913423          	sd	s1,8(sp)
   10ef0:	00090913          	mv	s2,s2
   10ef4:	00040413          	mv	s0,s0
   10ef8:	02890263          	beq	s2,s0,10f1c <__libc_init_array+0x48>
   10efc:	40890933          	sub	s2,s2,s0
   10f00:	40395913          	srai	s2,s2,0x3
   10f04:	00000493          	li	s1,0
   10f08:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10f0c:	00148493          	addi	s1,s1,1
   10f10:	00840413          	addi	s0,s0,8
   10f14:	000780e7          	jalr	a5
   10f18:	ff24e8e3          	bltu	s1,s2,10f08 <__libc_init_array+0x34>
   10f1c:	00013937          	lui	s2,0x13
   10f20:	00013437          	lui	s0,0x13
   10f24:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10f28:	00040413          	mv	s0,s0
   10f2c:	02890263          	beq	s2,s0,10f50 <__libc_init_array+0x7c>
   10f30:	40890933          	sub	s2,s2,s0
   10f34:	40395913          	srai	s2,s2,0x3
   10f38:	00000493          	li	s1,0
   10f3c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10f40:	00148493          	addi	s1,s1,1
   10f44:	00840413          	addi	s0,s0,8
   10f48:	000780e7          	jalr	a5
   10f4c:	ff24e8e3          	bltu	s1,s2,10f3c <__libc_init_array+0x68>
   10f50:	01813083          	ld	ra,24(sp)
   10f54:	01013403          	ld	s0,16(sp)
   10f58:	00813483          	ld	s1,8(sp)
   10f5c:	00013903          	ld	s2,0(sp)
   10f60:	02010113          	addi	sp,sp,32
   10f64:	00008067          	ret

0000000000010f68 <memset>:
   10f68:	00f00313          	li	t1,15
   10f6c:	00050713          	mv	a4,a0
   10f70:	02c37a63          	bgeu	t1,a2,10fa4 <memset+0x3c>
   10f74:	00f77793          	andi	a5,a4,15
   10f78:	0a079063          	bnez	a5,11018 <memset+0xb0>
   10f7c:	06059e63          	bnez	a1,10ff8 <memset+0x90>
   10f80:	ff067693          	andi	a3,a2,-16
   10f84:	00f67613          	andi	a2,a2,15
   10f88:	00e686b3          	add	a3,a3,a4
   10f8c:	00b73023          	sd	a1,0(a4)
   10f90:	00b73423          	sd	a1,8(a4)
   10f94:	01070713          	addi	a4,a4,16
   10f98:	fed76ae3          	bltu	a4,a3,10f8c <memset+0x24>
   10f9c:	00061463          	bnez	a2,10fa4 <memset+0x3c>
   10fa0:	00008067          	ret
   10fa4:	40c306b3          	sub	a3,t1,a2
   10fa8:	00269693          	slli	a3,a3,0x2
   10fac:	00000297          	auipc	t0,0x0
   10fb0:	005686b3          	add	a3,a3,t0
   10fb4:	00c68067          	jr	12(a3)
   10fb8:	00b70723          	sb	a1,14(a4)
   10fbc:	00b706a3          	sb	a1,13(a4)
   10fc0:	00b70623          	sb	a1,12(a4)
   10fc4:	00b705a3          	sb	a1,11(a4)
   10fc8:	00b70523          	sb	a1,10(a4)
   10fcc:	00b704a3          	sb	a1,9(a4)
   10fd0:	00b70423          	sb	a1,8(a4)
   10fd4:	00b703a3          	sb	a1,7(a4)
   10fd8:	00b70323          	sb	a1,6(a4)
   10fdc:	00b702a3          	sb	a1,5(a4)
   10fe0:	00b70223          	sb	a1,4(a4)
   10fe4:	00b701a3          	sb	a1,3(a4)
   10fe8:	00b70123          	sb	a1,2(a4)
   10fec:	00b700a3          	sb	a1,1(a4)
   10ff0:	00b70023          	sb	a1,0(a4)
   10ff4:	00008067          	ret
   10ff8:	0ff5f593          	zext.b	a1,a1
   10ffc:	00859693          	slli	a3,a1,0x8
   11000:	00d5e5b3          	or	a1,a1,a3
   11004:	01059693          	slli	a3,a1,0x10
   11008:	00d5e5b3          	or	a1,a1,a3
   1100c:	02059693          	slli	a3,a1,0x20
   11010:	00d5e5b3          	or	a1,a1,a3
   11014:	f6dff06f          	j	10f80 <memset+0x18>
   11018:	00279693          	slli	a3,a5,0x2
   1101c:	00000297          	auipc	t0,0x0
   11020:	005686b3          	add	a3,a3,t0
   11024:	00008293          	mv	t0,ra
   11028:	f98680e7          	jalr	-104(a3)
   1102c:	00028093          	mv	ra,t0
   11030:	ff078793          	addi	a5,a5,-16
   11034:	40f70733          	sub	a4,a4,a5
   11038:	00f60633          	add	a2,a2,a5
   1103c:	f6c374e3          	bgeu	t1,a2,10fa4 <memset+0x3c>
   11040:	f3dff06f          	j	10f7c <memset+0x14>

0000000000011044 <__call_exitprocs>:
   11044:	fb010113          	addi	sp,sp,-80
   11048:	03413023          	sd	s4,32(sp)
   1104c:	03213823          	sd	s2,48(sp)
   11050:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   11054:	04113423          	sd	ra,72(sp)
   11058:	06090e63          	beqz	s2,110d4 <__call_exitprocs+0x90>
   1105c:	03313423          	sd	s3,40(sp)
   11060:	01513c23          	sd	s5,24(sp)
   11064:	01613823          	sd	s6,16(sp)
   11068:	01713423          	sd	s7,8(sp)
   1106c:	04813023          	sd	s0,64(sp)
   11070:	02913c23          	sd	s1,56(sp)
   11074:	01813023          	sd	s8,0(sp)
   11078:	00050b13          	mv	s6,a0
   1107c:	00058b93          	mv	s7,a1
   11080:	fff00993          	li	s3,-1
   11084:	00100a93          	li	s5,1
   11088:	00892403          	lw	s0,8(s2)
   1108c:	fff4041b          	addiw	s0,s0,-1
   11090:	02044463          	bltz	s0,110b8 <__call_exitprocs+0x74>
   11094:	01090493          	addi	s1,s2,16
   11098:	00341793          	slli	a5,s0,0x3
   1109c:	00f484b3          	add	s1,s1,a5
   110a0:	040b8463          	beqz	s7,110e8 <__call_exitprocs+0xa4>
   110a4:	2004b783          	ld	a5,512(s1)
   110a8:	05778063          	beq	a5,s7,110e8 <__call_exitprocs+0xa4>
   110ac:	fff4041b          	addiw	s0,s0,-1
   110b0:	ff848493          	addi	s1,s1,-8
   110b4:	ff3418e3          	bne	s0,s3,110a4 <__call_exitprocs+0x60>
   110b8:	04013403          	ld	s0,64(sp)
   110bc:	03813483          	ld	s1,56(sp)
   110c0:	02813983          	ld	s3,40(sp)
   110c4:	01813a83          	ld	s5,24(sp)
   110c8:	01013b03          	ld	s6,16(sp)
   110cc:	00813b83          	ld	s7,8(sp)
   110d0:	00013c03          	ld	s8,0(sp)
   110d4:	04813083          	ld	ra,72(sp)
   110d8:	03013903          	ld	s2,48(sp)
   110dc:	02013a03          	ld	s4,32(sp)
   110e0:	05010113          	addi	sp,sp,80
   110e4:	00008067          	ret
   110e8:	00892783          	lw	a5,8(s2)
   110ec:	0004b683          	ld	a3,0(s1)
   110f0:	fff7879b          	addiw	a5,a5,-1
   110f4:	06878a63          	beq	a5,s0,11168 <__call_exitprocs+0x124>
   110f8:	0004b023          	sd	zero,0(s1)
   110fc:	02068663          	beqz	a3,11128 <__call_exitprocs+0xe4>
   11100:	31092783          	lw	a5,784(s2)
   11104:	008a973b          	sllw	a4,s5,s0
   11108:	00892c03          	lw	s8,8(s2)
   1110c:	00e7f7b3          	and	a5,a5,a4
   11110:	02079463          	bnez	a5,11138 <__call_exitprocs+0xf4>
   11114:	000680e7          	jalr	a3
   11118:	00892703          	lw	a4,8(s2)
   1111c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11120:	03871e63          	bne	a4,s8,1115c <__call_exitprocs+0x118>
   11124:	03279c63          	bne	a5,s2,1115c <__call_exitprocs+0x118>
   11128:	fff4041b          	addiw	s0,s0,-1
   1112c:	ff848493          	addi	s1,s1,-8
   11130:	f73418e3          	bne	s0,s3,110a0 <__call_exitprocs+0x5c>
   11134:	f85ff06f          	j	110b8 <__call_exitprocs+0x74>
   11138:	31492783          	lw	a5,788(s2)
   1113c:	1004b583          	ld	a1,256(s1)
   11140:	00f77733          	and	a4,a4,a5
   11144:	02071663          	bnez	a4,11170 <__call_exitprocs+0x12c>
   11148:	000b0513          	mv	a0,s6
   1114c:	000680e7          	jalr	a3
   11150:	00892703          	lw	a4,8(s2)
   11154:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11158:	fd8706e3          	beq	a4,s8,11124 <__call_exitprocs+0xe0>
   1115c:	f4078ee3          	beqz	a5,110b8 <__call_exitprocs+0x74>
   11160:	00078913          	mv	s2,a5
   11164:	f25ff06f          	j	11088 <__call_exitprocs+0x44>
   11168:	00892423          	sw	s0,8(s2)
   1116c:	f91ff06f          	j	110fc <__call_exitprocs+0xb8>
   11170:	00058513          	mv	a0,a1
   11174:	000680e7          	jalr	a3
   11178:	fa1ff06f          	j	11118 <__call_exitprocs+0xd4>

000000000001117c <atexit>:
   1117c:	00050593          	mv	a1,a0
   11180:	00000693          	li	a3,0
   11184:	00000613          	li	a2,0
   11188:	00000513          	li	a0,0
   1118c:	2340106f          	j	123c0 <__register_exitproc>

0000000000011190 <_malloc_trim_r>:
   11190:	fd010113          	addi	sp,sp,-48
   11194:	01213823          	sd	s2,16(sp)
   11198:	00013937          	lui	s2,0x13
   1119c:	02813023          	sd	s0,32(sp)
   111a0:	00913c23          	sd	s1,24(sp)
   111a4:	01313423          	sd	s3,8(sp)
   111a8:	00058413          	mv	s0,a1
   111ac:	02113423          	sd	ra,40(sp)
   111b0:	00050993          	mv	s3,a0
   111b4:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   111b8:	4e5000ef          	jal	11e9c <__malloc_lock>
   111bc:	01093783          	ld	a5,16(s2)
   111c0:	00001737          	lui	a4,0x1
   111c4:	0087b483          	ld	s1,8(a5)
   111c8:	ffc4f493          	andi	s1,s1,-4
   111cc:	7ff48793          	addi	a5,s1,2047
   111d0:	7e078793          	addi	a5,a5,2016
   111d4:	40878433          	sub	s0,a5,s0
   111d8:	00c45413          	srli	s0,s0,0xc
   111dc:	fff40413          	addi	s0,s0,-1
   111e0:	00c41413          	slli	s0,s0,0xc
   111e4:	00e44e63          	blt	s0,a4,11200 <_malloc_trim_r+0x70>
   111e8:	00000593          	li	a1,0
   111ec:	00098513          	mv	a0,s3
   111f0:	118010ef          	jal	12308 <_sbrk_r>
   111f4:	01093783          	ld	a5,16(s2)
   111f8:	009787b3          	add	a5,a5,s1
   111fc:	02f50663          	beq	a0,a5,11228 <_malloc_trim_r+0x98>
   11200:	00098513          	mv	a0,s3
   11204:	49d000ef          	jal	11ea0 <__malloc_unlock>
   11208:	02813083          	ld	ra,40(sp)
   1120c:	02013403          	ld	s0,32(sp)
   11210:	01813483          	ld	s1,24(sp)
   11214:	01013903          	ld	s2,16(sp)
   11218:	00813983          	ld	s3,8(sp)
   1121c:	00000513          	li	a0,0
   11220:	03010113          	addi	sp,sp,48
   11224:	00008067          	ret
   11228:	408005b3          	neg	a1,s0
   1122c:	00098513          	mv	a0,s3
   11230:	0d8010ef          	jal	12308 <_sbrk_r>
   11234:	fff00793          	li	a5,-1
   11238:	04f50463          	beq	a0,a5,11280 <_malloc_trim_r+0xf0>
   1123c:	01093683          	ld	a3,16(s2)
   11240:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11244:	408484b3          	sub	s1,s1,s0
   11248:	0014e493          	ori	s1,s1,1
   1124c:	00098513          	mv	a0,s3
   11250:	408787bb          	subw	a5,a5,s0
   11254:	0096b423          	sd	s1,8(a3)
   11258:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1125c:	445000ef          	jal	11ea0 <__malloc_unlock>
   11260:	02813083          	ld	ra,40(sp)
   11264:	02013403          	ld	s0,32(sp)
   11268:	01813483          	ld	s1,24(sp)
   1126c:	01013903          	ld	s2,16(sp)
   11270:	00813983          	ld	s3,8(sp)
   11274:	00100513          	li	a0,1
   11278:	03010113          	addi	sp,sp,48
   1127c:	00008067          	ret
   11280:	00000593          	li	a1,0
   11284:	00098513          	mv	a0,s3
   11288:	080010ef          	jal	12308 <_sbrk_r>
   1128c:	01093703          	ld	a4,16(s2)
   11290:	01f00693          	li	a3,31
   11294:	40e507b3          	sub	a5,a0,a4
   11298:	f6f6d4e3          	bge	a3,a5,11200 <_malloc_trim_r+0x70>
   1129c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   112a0:	0017e793          	ori	a5,a5,1
   112a4:	40c50533          	sub	a0,a0,a2
   112a8:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   112ac:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   112b0:	f51ff06f          	j	11200 <_malloc_trim_r+0x70>

00000000000112b4 <_free_r>:
   112b4:	12058863          	beqz	a1,113e4 <_free_r+0x130>
   112b8:	fe010113          	addi	sp,sp,-32
   112bc:	00813823          	sd	s0,16(sp)
   112c0:	00b13423          	sd	a1,8(sp)
   112c4:	00050413          	mv	s0,a0
   112c8:	00113c23          	sd	ra,24(sp)
   112cc:	3d1000ef          	jal	11e9c <__malloc_lock>
   112d0:	00813583          	ld	a1,8(sp)
   112d4:	00013837          	lui	a6,0x13
   112d8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112dc:	ff85b503          	ld	a0,-8(a1)
   112e0:	ff058713          	addi	a4,a1,-16
   112e4:	01083883          	ld	a7,16(a6)
   112e8:	ffe57793          	andi	a5,a0,-2
   112ec:	00f70633          	add	a2,a4,a5
   112f0:	00863683          	ld	a3,8(a2)
   112f4:	00157313          	andi	t1,a0,1
   112f8:	ffc6f693          	andi	a3,a3,-4
   112fc:	18c88e63          	beq	a7,a2,11498 <_free_r+0x1e4>
   11300:	00d63423          	sd	a3,8(a2)
   11304:	00d608b3          	add	a7,a2,a3
   11308:	0088b883          	ld	a7,8(a7)
   1130c:	0018f893          	andi	a7,a7,1
   11310:	08031e63          	bnez	t1,113ac <_free_r+0xf8>
   11314:	ff05b303          	ld	t1,-16(a1)
   11318:	000135b7          	lui	a1,0x13
   1131c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11320:	40670733          	sub	a4,a4,t1
   11324:	01073503          	ld	a0,16(a4)
   11328:	006787b3          	add	a5,a5,t1
   1132c:	14b50063          	beq	a0,a1,1146c <_free_r+0x1b8>
   11330:	01873303          	ld	t1,24(a4)
   11334:	00653c23          	sd	t1,24(a0)
   11338:	00a33823          	sd	a0,16(t1) # 10220 <test_find_min+0x4>
   1133c:	1a088263          	beqz	a7,114e0 <_free_r+0x22c>
   11340:	0017e693          	ori	a3,a5,1
   11344:	00d73423          	sd	a3,8(a4)
   11348:	00f63023          	sd	a5,0(a2)
   1134c:	1ff00693          	li	a3,511
   11350:	0af6e663          	bltu	a3,a5,113fc <_free_r+0x148>
   11354:	0037d793          	srli	a5,a5,0x3
   11358:	00179693          	slli	a3,a5,0x1
   1135c:	0026869b          	addiw	a3,a3,2
   11360:	00369693          	slli	a3,a3,0x3
   11364:	00883503          	ld	a0,8(a6)
   11368:	00d806b3          	add	a3,a6,a3
   1136c:	0006b583          	ld	a1,0(a3)
   11370:	4027d61b          	sraiw	a2,a5,0x2
   11374:	00100793          	li	a5,1
   11378:	00c797b3          	sll	a5,a5,a2
   1137c:	00a7e7b3          	or	a5,a5,a0
   11380:	ff068613          	addi	a2,a3,-16
   11384:	00b73823          	sd	a1,16(a4)
   11388:	00c73c23          	sd	a2,24(a4)
   1138c:	00f83423          	sd	a5,8(a6)
   11390:	00e6b023          	sd	a4,0(a3)
   11394:	00e5bc23          	sd	a4,24(a1)
   11398:	00040513          	mv	a0,s0
   1139c:	01013403          	ld	s0,16(sp)
   113a0:	01813083          	ld	ra,24(sp)
   113a4:	02010113          	addi	sp,sp,32
   113a8:	2f90006f          	j	11ea0 <__malloc_unlock>
   113ac:	02089e63          	bnez	a7,113e8 <_free_r+0x134>
   113b0:	000135b7          	lui	a1,0x13
   113b4:	00d787b3          	add	a5,a5,a3
   113b8:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   113bc:	01063683          	ld	a3,16(a2)
   113c0:	0017e893          	ori	a7,a5,1
   113c4:	00f70533          	add	a0,a4,a5
   113c8:	16b68663          	beq	a3,a1,11534 <_free_r+0x280>
   113cc:	01863603          	ld	a2,24(a2)
   113d0:	00c6bc23          	sd	a2,24(a3)
   113d4:	00d63823          	sd	a3,16(a2)
   113d8:	01173423          	sd	a7,8(a4)
   113dc:	00f53023          	sd	a5,0(a0)
   113e0:	f6dff06f          	j	1134c <_free_r+0x98>
   113e4:	00008067          	ret
   113e8:	00156513          	ori	a0,a0,1
   113ec:	fea5bc23          	sd	a0,-8(a1)
   113f0:	00f63023          	sd	a5,0(a2)
   113f4:	1ff00693          	li	a3,511
   113f8:	f4f6fee3          	bgeu	a3,a5,11354 <_free_r+0xa0>
   113fc:	0097d693          	srli	a3,a5,0x9
   11400:	00400613          	li	a2,4
   11404:	0ed66263          	bltu	a2,a3,114e8 <_free_r+0x234>
   11408:	0067d693          	srli	a3,a5,0x6
   1140c:	00169593          	slli	a1,a3,0x1
   11410:	0725859b          	addiw	a1,a1,114
   11414:	00359593          	slli	a1,a1,0x3
   11418:	0386861b          	addiw	a2,a3,56
   1141c:	00b805b3          	add	a1,a6,a1
   11420:	0005b683          	ld	a3,0(a1)
   11424:	ff058593          	addi	a1,a1,-16
   11428:	00d59863          	bne	a1,a3,11438 <_free_r+0x184>
   1142c:	1240006f          	j	11550 <_free_r+0x29c>
   11430:	0106b683          	ld	a3,16(a3)
   11434:	00d58863          	beq	a1,a3,11444 <_free_r+0x190>
   11438:	0086b603          	ld	a2,8(a3)
   1143c:	ffc67613          	andi	a2,a2,-4
   11440:	fec7e8e3          	bltu	a5,a2,11430 <_free_r+0x17c>
   11444:	0186b583          	ld	a1,24(a3)
   11448:	00b73c23          	sd	a1,24(a4)
   1144c:	00d73823          	sd	a3,16(a4)
   11450:	00040513          	mv	a0,s0
   11454:	01013403          	ld	s0,16(sp)
   11458:	01813083          	ld	ra,24(sp)
   1145c:	00e5b823          	sd	a4,16(a1)
   11460:	00e6bc23          	sd	a4,24(a3)
   11464:	02010113          	addi	sp,sp,32
   11468:	2390006f          	j	11ea0 <__malloc_unlock>
   1146c:	0a089263          	bnez	a7,11510 <_free_r+0x25c>
   11470:	01863583          	ld	a1,24(a2)
   11474:	01063603          	ld	a2,16(a2)
   11478:	00f686b3          	add	a3,a3,a5
   1147c:	0016e793          	ori	a5,a3,1
   11480:	00b63c23          	sd	a1,24(a2)
   11484:	00c5b823          	sd	a2,16(a1)
   11488:	00f73423          	sd	a5,8(a4)
   1148c:	00d70733          	add	a4,a4,a3
   11490:	00d73023          	sd	a3,0(a4)
   11494:	f05ff06f          	j	11398 <_free_r+0xe4>
   11498:	00d786b3          	add	a3,a5,a3
   1149c:	02031063          	bnez	t1,114bc <_free_r+0x208>
   114a0:	ff05b783          	ld	a5,-16(a1)
   114a4:	40f70733          	sub	a4,a4,a5
   114a8:	01073603          	ld	a2,16(a4)
   114ac:	00f686b3          	add	a3,a3,a5
   114b0:	01873783          	ld	a5,24(a4)
   114b4:	00f63c23          	sd	a5,24(a2)
   114b8:	00c7b823          	sd	a2,16(a5)
   114bc:	0016e613          	ori	a2,a3,1
   114c0:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   114c4:	00c73423          	sd	a2,8(a4)
   114c8:	00e83823          	sd	a4,16(a6)
   114cc:	ecf6e6e3          	bltu	a3,a5,11398 <_free_r+0xe4>
   114d0:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   114d4:	00040513          	mv	a0,s0
   114d8:	cb9ff0ef          	jal	11190 <_malloc_trim_r>
   114dc:	ebdff06f          	j	11398 <_free_r+0xe4>
   114e0:	00d787b3          	add	a5,a5,a3
   114e4:	ed9ff06f          	j	113bc <_free_r+0x108>
   114e8:	01400613          	li	a2,20
   114ec:	02d67a63          	bgeu	a2,a3,11520 <_free_r+0x26c>
   114f0:	05400613          	li	a2,84
   114f4:	06d66c63          	bltu	a2,a3,1156c <_free_r+0x2b8>
   114f8:	00c7d693          	srli	a3,a5,0xc
   114fc:	00169593          	slli	a1,a3,0x1
   11500:	0de5859b          	addiw	a1,a1,222
   11504:	00359593          	slli	a1,a1,0x3
   11508:	06e6861b          	addiw	a2,a3,110
   1150c:	f11ff06f          	j	1141c <_free_r+0x168>
   11510:	0017e693          	ori	a3,a5,1
   11514:	00d73423          	sd	a3,8(a4)
   11518:	00f63023          	sd	a5,0(a2)
   1151c:	e7dff06f          	j	11398 <_free_r+0xe4>
   11520:	00169593          	slli	a1,a3,0x1
   11524:	0b85859b          	addiw	a1,a1,184
   11528:	00359593          	slli	a1,a1,0x3
   1152c:	05b6861b          	addiw	a2,a3,91
   11530:	eedff06f          	j	1141c <_free_r+0x168>
   11534:	02e83423          	sd	a4,40(a6)
   11538:	02e83023          	sd	a4,32(a6)
   1153c:	00b73c23          	sd	a1,24(a4)
   11540:	00b73823          	sd	a1,16(a4)
   11544:	01173423          	sd	a7,8(a4)
   11548:	00f53023          	sd	a5,0(a0)
   1154c:	e4dff06f          	j	11398 <_free_r+0xe4>
   11550:	00883503          	ld	a0,8(a6)
   11554:	4026561b          	sraiw	a2,a2,0x2
   11558:	00100793          	li	a5,1
   1155c:	00c797b3          	sll	a5,a5,a2
   11560:	00a7e7b3          	or	a5,a5,a0
   11564:	00f83423          	sd	a5,8(a6)
   11568:	ee1ff06f          	j	11448 <_free_r+0x194>
   1156c:	15400613          	li	a2,340
   11570:	00d66e63          	bltu	a2,a3,1158c <_free_r+0x2d8>
   11574:	00f7d693          	srli	a3,a5,0xf
   11578:	00169593          	slli	a1,a3,0x1
   1157c:	0f05859b          	addiw	a1,a1,240
   11580:	00359593          	slli	a1,a1,0x3
   11584:	0776861b          	addiw	a2,a3,119
   11588:	e95ff06f          	j	1141c <_free_r+0x168>
   1158c:	55400613          	li	a2,1364
   11590:	00d66e63          	bltu	a2,a3,115ac <_free_r+0x2f8>
   11594:	0127d693          	srli	a3,a5,0x12
   11598:	00169593          	slli	a1,a3,0x1
   1159c:	0fa5859b          	addiw	a1,a1,250
   115a0:	00359593          	slli	a1,a1,0x3
   115a4:	07c6861b          	addiw	a2,a3,124
   115a8:	e75ff06f          	j	1141c <_free_r+0x168>
   115ac:	7f000593          	li	a1,2032
   115b0:	07e00613          	li	a2,126
   115b4:	e69ff06f          	j	1141c <_free_r+0x168>

00000000000115b8 <_malloc_r>:
   115b8:	fa010113          	addi	sp,sp,-96
   115bc:	04813823          	sd	s0,80(sp)
   115c0:	04113c23          	sd	ra,88(sp)
   115c4:	01758713          	addi	a4,a1,23
   115c8:	02e00793          	li	a5,46
   115cc:	00050413          	mv	s0,a0
   115d0:	08e7ee63          	bltu	a5,a4,1166c <_malloc_r+0xb4>
   115d4:	02000713          	li	a4,32
   115d8:	06b76c63          	bltu	a4,a1,11650 <_malloc_r+0x98>
   115dc:	0c1000ef          	jal	11e9c <__malloc_lock>
   115e0:	02000713          	li	a4,32
   115e4:	05000693          	li	a3,80
   115e8:	00400893          	li	a7,4
   115ec:	00013837          	lui	a6,0x13
   115f0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   115f4:	00d806b3          	add	a3,a6,a3
   115f8:	0086b783          	ld	a5,8(a3)
   115fc:	ff068613          	addi	a2,a3,-16
   11600:	48c78063          	beq	a5,a2,11a80 <_malloc_r+0x4c8>
   11604:	0087b703          	ld	a4,8(a5)
   11608:	0187b603          	ld	a2,24(a5)
   1160c:	0107b583          	ld	a1,16(a5)
   11610:	ffc77713          	andi	a4,a4,-4
   11614:	00e78733          	add	a4,a5,a4
   11618:	00873683          	ld	a3,8(a4)
   1161c:	00c5bc23          	sd	a2,24(a1)
   11620:	00b63823          	sd	a1,16(a2)
   11624:	0016e693          	ori	a3,a3,1
   11628:	00040513          	mv	a0,s0
   1162c:	00d73423          	sd	a3,8(a4)
   11630:	00f13423          	sd	a5,8(sp)
   11634:	06d000ef          	jal	11ea0 <__malloc_unlock>
   11638:	00813783          	ld	a5,8(sp)
   1163c:	05813083          	ld	ra,88(sp)
   11640:	05013403          	ld	s0,80(sp)
   11644:	01078513          	addi	a0,a5,16
   11648:	06010113          	addi	sp,sp,96
   1164c:	00008067          	ret
   11650:	00c00793          	li	a5,12
   11654:	00f42023          	sw	a5,0(s0)
   11658:	00000513          	li	a0,0
   1165c:	05813083          	ld	ra,88(sp)
   11660:	05013403          	ld	s0,80(sp)
   11664:	06010113          	addi	sp,sp,96
   11668:	00008067          	ret
   1166c:	00100793          	li	a5,1
   11670:	ff077713          	andi	a4,a4,-16
   11674:	01f79793          	slli	a5,a5,0x1f
   11678:	fcf77ce3          	bgeu	a4,a5,11650 <_malloc_r+0x98>
   1167c:	fcb76ae3          	bltu	a4,a1,11650 <_malloc_r+0x98>
   11680:	00e13423          	sd	a4,8(sp)
   11684:	019000ef          	jal	11e9c <__malloc_lock>
   11688:	00813703          	ld	a4,8(sp)
   1168c:	1f700793          	li	a5,503
   11690:	4ee7fa63          	bgeu	a5,a4,11b84 <_malloc_r+0x5cc>
   11694:	00975793          	srli	a5,a4,0x9
   11698:	18078a63          	beqz	a5,1182c <_malloc_r+0x274>
   1169c:	00400693          	li	a3,4
   116a0:	44f6ea63          	bltu	a3,a5,11af4 <_malloc_r+0x53c>
   116a4:	00675793          	srli	a5,a4,0x6
   116a8:	0397889b          	addiw	a7,a5,57
   116ac:	0018951b          	slliw	a0,a7,0x1
   116b0:	03878e1b          	addiw	t3,a5,56
   116b4:	00351513          	slli	a0,a0,0x3
   116b8:	00013837          	lui	a6,0x13
   116bc:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   116c0:	00a80533          	add	a0,a6,a0
   116c4:	00853783          	ld	a5,8(a0)
   116c8:	ff050513          	addi	a0,a0,-16
   116cc:	02f50863          	beq	a0,a5,116fc <_malloc_r+0x144>
   116d0:	01f00313          	li	t1,31
   116d4:	0140006f          	j	116e8 <_malloc_r+0x130>
   116d8:	0187b583          	ld	a1,24(a5)
   116dc:	36065263          	bgez	a2,11a40 <_malloc_r+0x488>
   116e0:	00b50e63          	beq	a0,a1,116fc <_malloc_r+0x144>
   116e4:	00058793          	mv	a5,a1
   116e8:	0087b683          	ld	a3,8(a5)
   116ec:	ffc6f693          	andi	a3,a3,-4
   116f0:	40e68633          	sub	a2,a3,a4
   116f4:	fec352e3          	bge	t1,a2,116d8 <_malloc_r+0x120>
   116f8:	000e0893          	mv	a7,t3
   116fc:	02083783          	ld	a5,32(a6)
   11700:	00013e37          	lui	t3,0x13
   11704:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11708:	2fc78a63          	beq	a5,t3,119fc <_malloc_r+0x444>
   1170c:	0087b303          	ld	t1,8(a5)
   11710:	01f00613          	li	a2,31
   11714:	ffc37313          	andi	t1,t1,-4
   11718:	40e306b3          	sub	a3,t1,a4
   1171c:	4ad64463          	blt	a2,a3,11bc4 <_malloc_r+0x60c>
   11720:	03c83423          	sd	t3,40(a6)
   11724:	03c83023          	sd	t3,32(a6)
   11728:	4606da63          	bgez	a3,11b9c <_malloc_r+0x5e4>
   1172c:	1ff00693          	li	a3,511
   11730:	00883583          	ld	a1,8(a6)
   11734:	3466ee63          	bltu	a3,t1,11a90 <_malloc_r+0x4d8>
   11738:	00335313          	srli	t1,t1,0x3
   1173c:	00131693          	slli	a3,t1,0x1
   11740:	0026869b          	addiw	a3,a3,2
   11744:	00369693          	slli	a3,a3,0x3
   11748:	00d806b3          	add	a3,a6,a3
   1174c:	0006b503          	ld	a0,0(a3)
   11750:	4023531b          	sraiw	t1,t1,0x2
   11754:	00100613          	li	a2,1
   11758:	00661633          	sll	a2,a2,t1
   1175c:	00c5e5b3          	or	a1,a1,a2
   11760:	ff068613          	addi	a2,a3,-16
   11764:	00a7b823          	sd	a0,16(a5)
   11768:	00c7bc23          	sd	a2,24(a5)
   1176c:	00b83423          	sd	a1,8(a6)
   11770:	00f6b023          	sd	a5,0(a3)
   11774:	00f53c23          	sd	a5,24(a0)
   11778:	4028d79b          	sraiw	a5,a7,0x2
   1177c:	00100513          	li	a0,1
   11780:	00f51533          	sll	a0,a0,a5
   11784:	0aa5ec63          	bltu	a1,a0,1183c <_malloc_r+0x284>
   11788:	00b577b3          	and	a5,a0,a1
   1178c:	02079463          	bnez	a5,117b4 <_malloc_r+0x1fc>
   11790:	00151513          	slli	a0,a0,0x1
   11794:	ffc8f893          	andi	a7,a7,-4
   11798:	00b577b3          	and	a5,a0,a1
   1179c:	0048889b          	addiw	a7,a7,4
   117a0:	00079a63          	bnez	a5,117b4 <_malloc_r+0x1fc>
   117a4:	00151513          	slli	a0,a0,0x1
   117a8:	00b577b3          	and	a5,a0,a1
   117ac:	0048889b          	addiw	a7,a7,4
   117b0:	fe078ae3          	beqz	a5,117a4 <_malloc_r+0x1ec>
   117b4:	01f00e93          	li	t4,31
   117b8:	00189f13          	slli	t5,a7,0x1
   117bc:	002f0f1b          	addiw	t5,t5,2
   117c0:	003f1f13          	slli	t5,t5,0x3
   117c4:	ff0f0f13          	addi	t5,t5,-16
   117c8:	01e80f33          	add	t5,a6,t5
   117cc:	000f0313          	mv	t1,t5
   117d0:	01833683          	ld	a3,24(t1)
   117d4:	00088f93          	mv	t6,a7
   117d8:	34d30263          	beq	t1,a3,11b1c <_malloc_r+0x564>
   117dc:	0086b603          	ld	a2,8(a3)
   117e0:	00068793          	mv	a5,a3
   117e4:	0186b683          	ld	a3,24(a3)
   117e8:	ffc67613          	andi	a2,a2,-4
   117ec:	40e605b3          	sub	a1,a2,a4
   117f0:	34bec263          	blt	t4,a1,11b34 <_malloc_r+0x57c>
   117f4:	fe05c2e3          	bltz	a1,117d8 <_malloc_r+0x220>
   117f8:	00c78633          	add	a2,a5,a2
   117fc:	00863703          	ld	a4,8(a2)
   11800:	0107b583          	ld	a1,16(a5)
   11804:	00040513          	mv	a0,s0
   11808:	00176713          	ori	a4,a4,1
   1180c:	00e63423          	sd	a4,8(a2)
   11810:	00d5bc23          	sd	a3,24(a1)
   11814:	00b6b823          	sd	a1,16(a3)
   11818:	00f13423          	sd	a5,8(sp)
   1181c:	684000ef          	jal	11ea0 <__malloc_unlock>
   11820:	00813783          	ld	a5,8(sp)
   11824:	01078513          	addi	a0,a5,16
   11828:	e35ff06f          	j	1165c <_malloc_r+0xa4>
   1182c:	40000513          	li	a0,1024
   11830:	04000893          	li	a7,64
   11834:	03f00e13          	li	t3,63
   11838:	e81ff06f          	j	116b8 <_malloc_r+0x100>
   1183c:	01083783          	ld	a5,16(a6)
   11840:	0087b683          	ld	a3,8(a5)
   11844:	ffc6f893          	andi	a7,a3,-4
   11848:	40e88633          	sub	a2,a7,a4
   1184c:	00e8e663          	bltu	a7,a4,11858 <_malloc_r+0x2a0>
   11850:	02062693          	slti	a3,a2,32
   11854:	1a068863          	beqz	a3,11a04 <_malloc_r+0x44c>
   11858:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   1185c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11860:	fff00693          	li	a3,-1
   11864:	00b705b3          	add	a1,a4,a1
   11868:	44d60663          	beq	a2,a3,11cb4 <_malloc_r+0x6fc>
   1186c:	000016b7          	lui	a3,0x1
   11870:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11874:	00d585b3          	add	a1,a1,a3
   11878:	fffff6b7          	lui	a3,0xfffff
   1187c:	00d5f5b3          	and	a1,a1,a3
   11880:	00040513          	mv	a0,s0
   11884:	03013423          	sd	a6,40(sp)
   11888:	02f13023          	sd	a5,32(sp)
   1188c:	00e13c23          	sd	a4,24(sp)
   11890:	01113823          	sd	a7,16(sp)
   11894:	00b13423          	sd	a1,8(sp)
   11898:	271000ef          	jal	12308 <_sbrk_r>
   1189c:	fff00693          	li	a3,-1
   118a0:	00813583          	ld	a1,8(sp)
   118a4:	01013883          	ld	a7,16(sp)
   118a8:	01813703          	ld	a4,24(sp)
   118ac:	02013783          	ld	a5,32(sp)
   118b0:	02813803          	ld	a6,40(sp)
   118b4:	00050313          	mv	t1,a0
   118b8:	36d50663          	beq	a0,a3,11c24 <_malloc_r+0x66c>
   118bc:	011786b3          	add	a3,a5,a7
   118c0:	36d56063          	bltu	a0,a3,11c20 <_malloc_r+0x668>
   118c4:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   118c8:	000e2603          	lw	a2,0(t3)
   118cc:	00b6063b          	addw	a2,a2,a1
   118d0:	00ce2023          	sw	a2,0(t3)
   118d4:	00060513          	mv	a0,a2
   118d8:	4a668c63          	beq	a3,t1,11d90 <_malloc_r+0x7d8>
   118dc:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   118e0:	fff00613          	li	a2,-1
   118e4:	4ccf0463          	beq	t5,a2,11dac <_malloc_r+0x7f4>
   118e8:	40d306b3          	sub	a3,t1,a3
   118ec:	00a686bb          	addw	a3,a3,a0
   118f0:	00de2023          	sw	a3,0(t3)
   118f4:	00f37e93          	andi	t4,t1,15
   118f8:	3c0e8e63          	beqz	t4,11cd4 <_malloc_r+0x71c>
   118fc:	ff037313          	andi	t1,t1,-16
   11900:	000016b7          	lui	a3,0x1
   11904:	01030313          	addi	t1,t1,16
   11908:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   1190c:	00b30633          	add	a2,t1,a1
   11910:	41d685b3          	sub	a1,a3,t4
   11914:	40c585b3          	sub	a1,a1,a2
   11918:	03459593          	slli	a1,a1,0x34
   1191c:	0345d593          	srli	a1,a1,0x34
   11920:	00040513          	mv	a0,s0
   11924:	05c13023          	sd	t3,64(sp)
   11928:	03013c23          	sd	a6,56(sp)
   1192c:	02f13823          	sd	a5,48(sp)
   11930:	02e13423          	sd	a4,40(sp)
   11934:	03113023          	sd	a7,32(sp)
   11938:	00613c23          	sd	t1,24(sp)
   1193c:	01d13823          	sd	t4,16(sp)
   11940:	00c13423          	sd	a2,8(sp)
   11944:	04b13423          	sd	a1,72(sp)
   11948:	1c1000ef          	jal	12308 <_sbrk_r>
   1194c:	00050693          	mv	a3,a0
   11950:	fff00513          	li	a0,-1
   11954:	00813603          	ld	a2,8(sp)
   11958:	01013e83          	ld	t4,16(sp)
   1195c:	01813303          	ld	t1,24(sp)
   11960:	02013883          	ld	a7,32(sp)
   11964:	02813703          	ld	a4,40(sp)
   11968:	03013783          	ld	a5,48(sp)
   1196c:	03813803          	ld	a6,56(sp)
   11970:	04013e03          	ld	t3,64(sp)
   11974:	48a68663          	beq	a3,a0,11e00 <_malloc_r+0x848>
   11978:	04813583          	ld	a1,72(sp)
   1197c:	0005851b          	sext.w	a0,a1
   11980:	000e2603          	lw	a2,0(t3)
   11984:	406686b3          	sub	a3,a3,t1
   11988:	00b686b3          	add	a3,a3,a1
   1198c:	0016e693          	ori	a3,a3,1
   11990:	00683823          	sd	t1,16(a6)
   11994:	00a6063b          	addw	a2,a2,a0
   11998:	00d33423          	sd	a3,8(t1)
   1199c:	00ce2023          	sw	a2,0(t3)
   119a0:	03078e63          	beq	a5,a6,119dc <_malloc_r+0x424>
   119a4:	01f00513          	li	a0,31
   119a8:	41157663          	bgeu	a0,a7,11db4 <_malloc_r+0x7fc>
   119ac:	0087b583          	ld	a1,8(a5)
   119b0:	fe888693          	addi	a3,a7,-24
   119b4:	ff06f693          	andi	a3,a3,-16
   119b8:	0015f593          	andi	a1,a1,1
   119bc:	00d5e5b3          	or	a1,a1,a3
   119c0:	00b7b423          	sd	a1,8(a5)
   119c4:	00900893          	li	a7,9
   119c8:	00d785b3          	add	a1,a5,a3
   119cc:	0115b423          	sd	a7,8(a1)
   119d0:	0115b823          	sd	a7,16(a1)
   119d4:	44d56863          	bltu	a0,a3,11e24 <_malloc_r+0x86c>
   119d8:	00833683          	ld	a3,8(t1)
   119dc:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   119e0:	00c5f463          	bgeu	a1,a2,119e8 <_malloc_r+0x430>
   119e4:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   119e8:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   119ec:	00c5f463          	bgeu	a1,a2,119f4 <_malloc_r+0x43c>
   119f0:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   119f4:	00030793          	mv	a5,t1
   119f8:	2340006f          	j	11c2c <_malloc_r+0x674>
   119fc:	00883583          	ld	a1,8(a6)
   11a00:	d79ff06f          	j	11778 <_malloc_r+0x1c0>
   11a04:	00176693          	ori	a3,a4,1
   11a08:	00d7b423          	sd	a3,8(a5)
   11a0c:	00e78733          	add	a4,a5,a4
   11a10:	00166613          	ori	a2,a2,1
   11a14:	00e83823          	sd	a4,16(a6)
   11a18:	00040513          	mv	a0,s0
   11a1c:	00c73423          	sd	a2,8(a4)
   11a20:	00f13423          	sd	a5,8(sp)
   11a24:	47c000ef          	jal	11ea0 <__malloc_unlock>
   11a28:	00813783          	ld	a5,8(sp)
   11a2c:	05813083          	ld	ra,88(sp)
   11a30:	05013403          	ld	s0,80(sp)
   11a34:	01078513          	addi	a0,a5,16
   11a38:	06010113          	addi	sp,sp,96
   11a3c:	00008067          	ret
   11a40:	0107b603          	ld	a2,16(a5)
   11a44:	00d786b3          	add	a3,a5,a3
   11a48:	0086b703          	ld	a4,8(a3)
   11a4c:	00b63c23          	sd	a1,24(a2)
   11a50:	00c5b823          	sd	a2,16(a1)
   11a54:	00176713          	ori	a4,a4,1
   11a58:	00040513          	mv	a0,s0
   11a5c:	00e6b423          	sd	a4,8(a3)
   11a60:	00f13423          	sd	a5,8(sp)
   11a64:	43c000ef          	jal	11ea0 <__malloc_unlock>
   11a68:	00813783          	ld	a5,8(sp)
   11a6c:	05813083          	ld	ra,88(sp)
   11a70:	05013403          	ld	s0,80(sp)
   11a74:	01078513          	addi	a0,a5,16
   11a78:	06010113          	addi	sp,sp,96
   11a7c:	00008067          	ret
   11a80:	0186b783          	ld	a5,24(a3)
   11a84:	0028889b          	addiw	a7,a7,2
   11a88:	c6f68ae3          	beq	a3,a5,116fc <_malloc_r+0x144>
   11a8c:	b79ff06f          	j	11604 <_malloc_r+0x4c>
   11a90:	00935693          	srli	a3,t1,0x9
   11a94:	00400613          	li	a2,4
   11a98:	16d67863          	bgeu	a2,a3,11c08 <_malloc_r+0x650>
   11a9c:	01400613          	li	a2,20
   11aa0:	28d66e63          	bltu	a2,a3,11d3c <_malloc_r+0x784>
   11aa4:	00169513          	slli	a0,a3,0x1
   11aa8:	0b85051b          	addiw	a0,a0,184
   11aac:	00351513          	slli	a0,a0,0x3
   11ab0:	05b6861b          	addiw	a2,a3,91
   11ab4:	00a80533          	add	a0,a6,a0
   11ab8:	00053683          	ld	a3,0(a0)
   11abc:	ff050513          	addi	a0,a0,-16
   11ac0:	00d51863          	bne	a0,a3,11ad0 <_malloc_r+0x518>
   11ac4:	1f80006f          	j	11cbc <_malloc_r+0x704>
   11ac8:	0106b683          	ld	a3,16(a3)
   11acc:	00d50863          	beq	a0,a3,11adc <_malloc_r+0x524>
   11ad0:	0086b603          	ld	a2,8(a3)
   11ad4:	ffc67613          	andi	a2,a2,-4
   11ad8:	fec368e3          	bltu	t1,a2,11ac8 <_malloc_r+0x510>
   11adc:	0186b503          	ld	a0,24(a3)
   11ae0:	00a7bc23          	sd	a0,24(a5)
   11ae4:	00d7b823          	sd	a3,16(a5)
   11ae8:	00f53823          	sd	a5,16(a0)
   11aec:	00f6bc23          	sd	a5,24(a3)
   11af0:	c89ff06f          	j	11778 <_malloc_r+0x1c0>
   11af4:	01400693          	li	a3,20
   11af8:	14f6fa63          	bgeu	a3,a5,11c4c <_malloc_r+0x694>
   11afc:	05400693          	li	a3,84
   11b00:	24f6ee63          	bltu	a3,a5,11d5c <_malloc_r+0x7a4>
   11b04:	00c75793          	srli	a5,a4,0xc
   11b08:	06f7889b          	addiw	a7,a5,111
   11b0c:	0018951b          	slliw	a0,a7,0x1
   11b10:	06e78e1b          	addiw	t3,a5,110
   11b14:	00351513          	slli	a0,a0,0x3
   11b18:	ba1ff06f          	j	116b8 <_malloc_r+0x100>
   11b1c:	001f8f9b          	addiw	t6,t6,1
   11b20:	003ff793          	andi	a5,t6,3
   11b24:	01030313          	addi	t1,t1,16
   11b28:	14078263          	beqz	a5,11c6c <_malloc_r+0x6b4>
   11b2c:	01833683          	ld	a3,24(t1)
   11b30:	ca9ff06f          	j	117d8 <_malloc_r+0x220>
   11b34:	0107b503          	ld	a0,16(a5)
   11b38:	00176893          	ori	a7,a4,1
   11b3c:	0117b423          	sd	a7,8(a5)
   11b40:	00d53c23          	sd	a3,24(a0)
   11b44:	00a6b823          	sd	a0,16(a3)
   11b48:	00e78733          	add	a4,a5,a4
   11b4c:	02e83423          	sd	a4,40(a6)
   11b50:	02e83023          	sd	a4,32(a6)
   11b54:	0015e693          	ori	a3,a1,1
   11b58:	00c78633          	add	a2,a5,a2
   11b5c:	01c73c23          	sd	t3,24(a4)
   11b60:	01c73823          	sd	t3,16(a4)
   11b64:	00d73423          	sd	a3,8(a4)
   11b68:	00040513          	mv	a0,s0
   11b6c:	00b63023          	sd	a1,0(a2)
   11b70:	00f13423          	sd	a5,8(sp)
   11b74:	32c000ef          	jal	11ea0 <__malloc_unlock>
   11b78:	00813783          	ld	a5,8(sp)
   11b7c:	01078513          	addi	a0,a5,16
   11b80:	addff06f          	j	1165c <_malloc_r+0xa4>
   11b84:	00375893          	srli	a7,a4,0x3
   11b88:	00189693          	slli	a3,a7,0x1
   11b8c:	0026869b          	addiw	a3,a3,2
   11b90:	00369693          	slli	a3,a3,0x3
   11b94:	0008889b          	sext.w	a7,a7
   11b98:	a55ff06f          	j	115ec <_malloc_r+0x34>
   11b9c:	00678333          	add	t1,a5,t1
   11ba0:	00833703          	ld	a4,8(t1)
   11ba4:	00040513          	mv	a0,s0
   11ba8:	00f13423          	sd	a5,8(sp)
   11bac:	00176713          	ori	a4,a4,1
   11bb0:	00e33423          	sd	a4,8(t1)
   11bb4:	2ec000ef          	jal	11ea0 <__malloc_unlock>
   11bb8:	00813783          	ld	a5,8(sp)
   11bbc:	01078513          	addi	a0,a5,16
   11bc0:	a9dff06f          	j	1165c <_malloc_r+0xa4>
   11bc4:	00176613          	ori	a2,a4,1
   11bc8:	00c7b423          	sd	a2,8(a5)
   11bcc:	00e78733          	add	a4,a5,a4
   11bd0:	02e83423          	sd	a4,40(a6)
   11bd4:	02e83023          	sd	a4,32(a6)
   11bd8:	0016e613          	ori	a2,a3,1
   11bdc:	00678333          	add	t1,a5,t1
   11be0:	01c73c23          	sd	t3,24(a4)
   11be4:	01c73823          	sd	t3,16(a4)
   11be8:	00c73423          	sd	a2,8(a4)
   11bec:	00040513          	mv	a0,s0
   11bf0:	00d33023          	sd	a3,0(t1)
   11bf4:	00f13423          	sd	a5,8(sp)
   11bf8:	2a8000ef          	jal	11ea0 <__malloc_unlock>
   11bfc:	00813783          	ld	a5,8(sp)
   11c00:	01078513          	addi	a0,a5,16
   11c04:	a59ff06f          	j	1165c <_malloc_r+0xa4>
   11c08:	00635693          	srli	a3,t1,0x6
   11c0c:	00169513          	slli	a0,a3,0x1
   11c10:	0725051b          	addiw	a0,a0,114
   11c14:	00351513          	slli	a0,a0,0x3
   11c18:	0386861b          	addiw	a2,a3,56
   11c1c:	e99ff06f          	j	11ab4 <_malloc_r+0x4fc>
   11c20:	15078e63          	beq	a5,a6,11d7c <_malloc_r+0x7c4>
   11c24:	01083783          	ld	a5,16(a6)
   11c28:	0087b683          	ld	a3,8(a5)
   11c2c:	ffc6f693          	andi	a3,a3,-4
   11c30:	40e68633          	sub	a2,a3,a4
   11c34:	00e6e663          	bltu	a3,a4,11c40 <_malloc_r+0x688>
   11c38:	02062693          	slti	a3,a2,32
   11c3c:	dc0684e3          	beqz	a3,11a04 <_malloc_r+0x44c>
   11c40:	00040513          	mv	a0,s0
   11c44:	25c000ef          	jal	11ea0 <__malloc_unlock>
   11c48:	a11ff06f          	j	11658 <_malloc_r+0xa0>
   11c4c:	05c7889b          	addiw	a7,a5,92
   11c50:	0018951b          	slliw	a0,a7,0x1
   11c54:	05b78e1b          	addiw	t3,a5,91
   11c58:	00351513          	slli	a0,a0,0x3
   11c5c:	a5dff06f          	j	116b8 <_malloc_r+0x100>
   11c60:	010f3783          	ld	a5,16(t5)
   11c64:	fff8889b          	addiw	a7,a7,-1
   11c68:	23e79663          	bne	a5,t5,11e94 <_malloc_r+0x8dc>
   11c6c:	0038f793          	andi	a5,a7,3
   11c70:	ff0f0f13          	addi	t5,t5,-16
   11c74:	fe0796e3          	bnez	a5,11c60 <_malloc_r+0x6a8>
   11c78:	00883683          	ld	a3,8(a6)
   11c7c:	fff54793          	not	a5,a0
   11c80:	00d7f7b3          	and	a5,a5,a3
   11c84:	00f83423          	sd	a5,8(a6)
   11c88:	00151513          	slli	a0,a0,0x1
   11c8c:	fff50693          	addi	a3,a0,-1
   11c90:	baf6f6e3          	bgeu	a3,a5,1183c <_malloc_r+0x284>
   11c94:	00f576b3          	and	a3,a0,a5
   11c98:	00069a63          	bnez	a3,11cac <_malloc_r+0x6f4>
   11c9c:	00151513          	slli	a0,a0,0x1
   11ca0:	00f576b3          	and	a3,a0,a5
   11ca4:	004f8f9b          	addiw	t6,t6,4
   11ca8:	fe068ae3          	beqz	a3,11c9c <_malloc_r+0x6e4>
   11cac:	000f8893          	mv	a7,t6
   11cb0:	b09ff06f          	j	117b8 <_malloc_r+0x200>
   11cb4:	02058593          	addi	a1,a1,32
   11cb8:	bc9ff06f          	j	11880 <_malloc_r+0x2c8>
   11cbc:	4026561b          	sraiw	a2,a2,0x2
   11cc0:	00100313          	li	t1,1
   11cc4:	00c31633          	sll	a2,t1,a2
   11cc8:	00c5e5b3          	or	a1,a1,a2
   11ccc:	00b83423          	sd	a1,8(a6)
   11cd0:	e11ff06f          	j	11ae0 <_malloc_r+0x528>
   11cd4:	00b30633          	add	a2,t1,a1
   11cd8:	40c005b3          	neg	a1,a2
   11cdc:	03459593          	slli	a1,a1,0x34
   11ce0:	0345d593          	srli	a1,a1,0x34
   11ce4:	00040513          	mv	a0,s0
   11ce8:	03c13c23          	sd	t3,56(sp)
   11cec:	03013823          	sd	a6,48(sp)
   11cf0:	02f13423          	sd	a5,40(sp)
   11cf4:	02e13023          	sd	a4,32(sp)
   11cf8:	01113c23          	sd	a7,24(sp)
   11cfc:	00613823          	sd	t1,16(sp)
   11d00:	00c13423          	sd	a2,8(sp)
   11d04:	04b13023          	sd	a1,64(sp)
   11d08:	600000ef          	jal	12308 <_sbrk_r>
   11d0c:	00050693          	mv	a3,a0
   11d10:	fff00513          	li	a0,-1
   11d14:	01013303          	ld	t1,16(sp)
   11d18:	01813883          	ld	a7,24(sp)
   11d1c:	02013703          	ld	a4,32(sp)
   11d20:	02813783          	ld	a5,40(sp)
   11d24:	03013803          	ld	a6,48(sp)
   11d28:	03813e03          	ld	t3,56(sp)
   11d2c:	0ea68463          	beq	a3,a0,11e14 <_malloc_r+0x85c>
   11d30:	04013583          	ld	a1,64(sp)
   11d34:	0005851b          	sext.w	a0,a1
   11d38:	c49ff06f          	j	11980 <_malloc_r+0x3c8>
   11d3c:	05400613          	li	a2,84
   11d40:	08d66063          	bltu	a2,a3,11dc0 <_malloc_r+0x808>
   11d44:	00c35693          	srli	a3,t1,0xc
   11d48:	00169513          	slli	a0,a3,0x1
   11d4c:	0de5051b          	addiw	a0,a0,222
   11d50:	00351513          	slli	a0,a0,0x3
   11d54:	06e6861b          	addiw	a2,a3,110
   11d58:	d5dff06f          	j	11ab4 <_malloc_r+0x4fc>
   11d5c:	15400693          	li	a3,340
   11d60:	08f6e063          	bltu	a3,a5,11de0 <_malloc_r+0x828>
   11d64:	00f75793          	srli	a5,a4,0xf
   11d68:	0787889b          	addiw	a7,a5,120
   11d6c:	0018951b          	slliw	a0,a7,0x1
   11d70:	07778e1b          	addiw	t3,a5,119
   11d74:	00351513          	slli	a0,a0,0x3
   11d78:	941ff06f          	j	116b8 <_malloc_r+0x100>
   11d7c:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11d80:	000e2503          	lw	a0,0(t3)
   11d84:	00b5053b          	addw	a0,a0,a1
   11d88:	00ae2023          	sw	a0,0(t3)
   11d8c:	b51ff06f          	j	118dc <_malloc_r+0x324>
   11d90:	03431f13          	slli	t5,t1,0x34
   11d94:	b40f14e3          	bnez	t5,118dc <_malloc_r+0x324>
   11d98:	01083303          	ld	t1,16(a6)
   11d9c:	00b885b3          	add	a1,a7,a1
   11da0:	0015e693          	ori	a3,a1,1
   11da4:	00d33423          	sd	a3,8(t1)
   11da8:	c35ff06f          	j	119dc <_malloc_r+0x424>
   11dac:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11db0:	b45ff06f          	j	118f4 <_malloc_r+0x33c>
   11db4:	00100793          	li	a5,1
   11db8:	00f33423          	sd	a5,8(t1)
   11dbc:	e85ff06f          	j	11c40 <_malloc_r+0x688>
   11dc0:	15400613          	li	a2,340
   11dc4:	08d66a63          	bltu	a2,a3,11e58 <_malloc_r+0x8a0>
   11dc8:	00f35693          	srli	a3,t1,0xf
   11dcc:	00169513          	slli	a0,a3,0x1
   11dd0:	0f05051b          	addiw	a0,a0,240
   11dd4:	00351513          	slli	a0,a0,0x3
   11dd8:	0776861b          	addiw	a2,a3,119
   11ddc:	cd9ff06f          	j	11ab4 <_malloc_r+0x4fc>
   11de0:	55400693          	li	a3,1364
   11de4:	08f6ea63          	bltu	a3,a5,11e78 <_malloc_r+0x8c0>
   11de8:	01275793          	srli	a5,a4,0x12
   11dec:	07d7889b          	addiw	a7,a5,125
   11df0:	0018951b          	slliw	a0,a7,0x1
   11df4:	07c78e1b          	addiw	t3,a5,124
   11df8:	00351513          	slli	a0,a0,0x3
   11dfc:	8bdff06f          	j	116b8 <_malloc_r+0x100>
   11e00:	ff0e8e93          	addi	t4,t4,-16
   11e04:	01d606b3          	add	a3,a2,t4
   11e08:	00000513          	li	a0,0
   11e0c:	00000593          	li	a1,0
   11e10:	b71ff06f          	j	11980 <_malloc_r+0x3c8>
   11e14:	00813683          	ld	a3,8(sp)
   11e18:	00000593          	li	a1,0
   11e1c:	00000513          	li	a0,0
   11e20:	b61ff06f          	j	11980 <_malloc_r+0x3c8>
   11e24:	01078593          	addi	a1,a5,16
   11e28:	00040513          	mv	a0,s0
   11e2c:	01c13c23          	sd	t3,24(sp)
   11e30:	01013823          	sd	a6,16(sp)
   11e34:	00e13423          	sd	a4,8(sp)
   11e38:	c7cff0ef          	jal	112b4 <_free_r>
   11e3c:	01013803          	ld	a6,16(sp)
   11e40:	01813e03          	ld	t3,24(sp)
   11e44:	00813703          	ld	a4,8(sp)
   11e48:	01083303          	ld	t1,16(a6)
   11e4c:	000e2603          	lw	a2,0(t3)
   11e50:	00833683          	ld	a3,8(t1)
   11e54:	b89ff06f          	j	119dc <_malloc_r+0x424>
   11e58:	55400613          	li	a2,1364
   11e5c:	02d66663          	bltu	a2,a3,11e88 <_malloc_r+0x8d0>
   11e60:	01235693          	srli	a3,t1,0x12
   11e64:	00169513          	slli	a0,a3,0x1
   11e68:	0fa5051b          	addiw	a0,a0,250
   11e6c:	00351513          	slli	a0,a0,0x3
   11e70:	07c6861b          	addiw	a2,a3,124
   11e74:	c41ff06f          	j	11ab4 <_malloc_r+0x4fc>
   11e78:	7f000513          	li	a0,2032
   11e7c:	07f00893          	li	a7,127
   11e80:	07e00e13          	li	t3,126
   11e84:	835ff06f          	j	116b8 <_malloc_r+0x100>
   11e88:	7f000513          	li	a0,2032
   11e8c:	07e00613          	li	a2,126
   11e90:	c25ff06f          	j	11ab4 <_malloc_r+0x4fc>
   11e94:	00883783          	ld	a5,8(a6)
   11e98:	df1ff06f          	j	11c88 <_malloc_r+0x6d0>

0000000000011e9c <__malloc_lock>:
   11e9c:	00008067          	ret

0000000000011ea0 <__malloc_unlock>:
   11ea0:	00008067          	ret

0000000000011ea4 <_fclose_r>:
   11ea4:	fe010113          	addi	sp,sp,-32
   11ea8:	00113c23          	sd	ra,24(sp)
   11eac:	01213023          	sd	s2,0(sp)
   11eb0:	02058863          	beqz	a1,11ee0 <_fclose_r+0x3c>
   11eb4:	00813823          	sd	s0,16(sp)
   11eb8:	00913423          	sd	s1,8(sp)
   11ebc:	00058413          	mv	s0,a1
   11ec0:	00050493          	mv	s1,a0
   11ec4:	00050663          	beqz	a0,11ed0 <_fclose_r+0x2c>
   11ec8:	04853783          	ld	a5,72(a0)
   11ecc:	0c078c63          	beqz	a5,11fa4 <_fclose_r+0x100>
   11ed0:	01041783          	lh	a5,16(s0)
   11ed4:	02079263          	bnez	a5,11ef8 <_fclose_r+0x54>
   11ed8:	01013403          	ld	s0,16(sp)
   11edc:	00813483          	ld	s1,8(sp)
   11ee0:	01813083          	ld	ra,24(sp)
   11ee4:	00000913          	li	s2,0
   11ee8:	00090513          	mv	a0,s2
   11eec:	00013903          	ld	s2,0(sp)
   11ef0:	02010113          	addi	sp,sp,32
   11ef4:	00008067          	ret
   11ef8:	00040593          	mv	a1,s0
   11efc:	00048513          	mv	a0,s1
   11f00:	0b8000ef          	jal	11fb8 <__sflush_r>
   11f04:	05043783          	ld	a5,80(s0)
   11f08:	00050913          	mv	s2,a0
   11f0c:	00078a63          	beqz	a5,11f20 <_fclose_r+0x7c>
   11f10:	03043583          	ld	a1,48(s0)
   11f14:	00048513          	mv	a0,s1
   11f18:	000780e7          	jalr	a5
   11f1c:	06054463          	bltz	a0,11f84 <_fclose_r+0xe0>
   11f20:	01045783          	lhu	a5,16(s0)
   11f24:	0807f793          	andi	a5,a5,128
   11f28:	06079663          	bnez	a5,11f94 <_fclose_r+0xf0>
   11f2c:	05843583          	ld	a1,88(s0)
   11f30:	00058c63          	beqz	a1,11f48 <_fclose_r+0xa4>
   11f34:	07440793          	addi	a5,s0,116
   11f38:	00f58663          	beq	a1,a5,11f44 <_fclose_r+0xa0>
   11f3c:	00048513          	mv	a0,s1
   11f40:	b74ff0ef          	jal	112b4 <_free_r>
   11f44:	04043c23          	sd	zero,88(s0)
   11f48:	07843583          	ld	a1,120(s0)
   11f4c:	00058863          	beqz	a1,11f5c <_fclose_r+0xb8>
   11f50:	00048513          	mv	a0,s1
   11f54:	b60ff0ef          	jal	112b4 <_free_r>
   11f58:	06043c23          	sd	zero,120(s0)
   11f5c:	aa1fe0ef          	jal	109fc <__sfp_lock_acquire>
   11f60:	00041823          	sh	zero,16(s0)
   11f64:	a9dfe0ef          	jal	10a00 <__sfp_lock_release>
   11f68:	01813083          	ld	ra,24(sp)
   11f6c:	01013403          	ld	s0,16(sp)
   11f70:	00813483          	ld	s1,8(sp)
   11f74:	00090513          	mv	a0,s2
   11f78:	00013903          	ld	s2,0(sp)
   11f7c:	02010113          	addi	sp,sp,32
   11f80:	00008067          	ret
   11f84:	01045783          	lhu	a5,16(s0)
   11f88:	fff00913          	li	s2,-1
   11f8c:	0807f793          	andi	a5,a5,128
   11f90:	f8078ee3          	beqz	a5,11f2c <_fclose_r+0x88>
   11f94:	01843583          	ld	a1,24(s0)
   11f98:	00048513          	mv	a0,s1
   11f9c:	b18ff0ef          	jal	112b4 <_free_r>
   11fa0:	f8dff06f          	j	11f2c <_fclose_r+0x88>
   11fa4:	a35fe0ef          	jal	109d8 <__sinit>
   11fa8:	f29ff06f          	j	11ed0 <_fclose_r+0x2c>

0000000000011fac <fclose>:
   11fac:	00050593          	mv	a1,a0
   11fb0:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11fb4:	ef1ff06f          	j	11ea4 <_fclose_r>

0000000000011fb8 <__sflush_r>:
   11fb8:	01059703          	lh	a4,16(a1)
   11fbc:	fd010113          	addi	sp,sp,-48
   11fc0:	02813023          	sd	s0,32(sp)
   11fc4:	01313423          	sd	s3,8(sp)
   11fc8:	02113423          	sd	ra,40(sp)
   11fcc:	00877793          	andi	a5,a4,8
   11fd0:	00058413          	mv	s0,a1
   11fd4:	00050993          	mv	s3,a0
   11fd8:	12079263          	bnez	a5,120fc <__sflush_r+0x144>
   11fdc:	000017b7          	lui	a5,0x1
   11fe0:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11fe4:	0085a683          	lw	a3,8(a1)
   11fe8:	00f767b3          	or	a5,a4,a5
   11fec:	00f59823          	sh	a5,16(a1)
   11ff0:	18d05c63          	blez	a3,12188 <__sflush_r+0x1d0>
   11ff4:	04843803          	ld	a6,72(s0)
   11ff8:	0e080663          	beqz	a6,120e4 <__sflush_r+0x12c>
   11ffc:	00913c23          	sd	s1,24(sp)
   12000:	03371693          	slli	a3,a4,0x33
   12004:	0009a483          	lw	s1,0(s3)
   12008:	0009a023          	sw	zero,0(s3)
   1200c:	1806ca63          	bltz	a3,121a0 <__sflush_r+0x1e8>
   12010:	03043583          	ld	a1,48(s0)
   12014:	00000613          	li	a2,0
   12018:	00100693          	li	a3,1
   1201c:	00098513          	mv	a0,s3
   12020:	000800e7          	jalr	a6
   12024:	fff00793          	li	a5,-1
   12028:	00050613          	mv	a2,a0
   1202c:	1af50c63          	beq	a0,a5,121e4 <__sflush_r+0x22c>
   12030:	01041783          	lh	a5,16(s0)
   12034:	04843803          	ld	a6,72(s0)
   12038:	0047f793          	andi	a5,a5,4
   1203c:	00078e63          	beqz	a5,12058 <__sflush_r+0xa0>
   12040:	00842703          	lw	a4,8(s0)
   12044:	05843783          	ld	a5,88(s0)
   12048:	40e60633          	sub	a2,a2,a4
   1204c:	00078663          	beqz	a5,12058 <__sflush_r+0xa0>
   12050:	07042783          	lw	a5,112(s0)
   12054:	40f60633          	sub	a2,a2,a5
   12058:	03043583          	ld	a1,48(s0)
   1205c:	00000693          	li	a3,0
   12060:	00098513          	mv	a0,s3
   12064:	000800e7          	jalr	a6
   12068:	fff00713          	li	a4,-1
   1206c:	01041783          	lh	a5,16(s0)
   12070:	12e51c63          	bne	a0,a4,121a8 <__sflush_r+0x1f0>
   12074:	0009a683          	lw	a3,0(s3)
   12078:	01d00713          	li	a4,29
   1207c:	18d76263          	bltu	a4,a3,12200 <__sflush_r+0x248>
   12080:	20400737          	lui	a4,0x20400
   12084:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   12088:	00d75733          	srl	a4,a4,a3
   1208c:	00177713          	andi	a4,a4,1
   12090:	16070863          	beqz	a4,12200 <__sflush_r+0x248>
   12094:	01843683          	ld	a3,24(s0)
   12098:	fffff737          	lui	a4,0xfffff
   1209c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   120a0:	00e7f733          	and	a4,a5,a4
   120a4:	00e41823          	sh	a4,16(s0)
   120a8:	00042423          	sw	zero,8(s0)
   120ac:	00d43023          	sd	a3,0(s0)
   120b0:	03379713          	slli	a4,a5,0x33
   120b4:	00075663          	bgez	a4,120c0 <__sflush_r+0x108>
   120b8:	0009a783          	lw	a5,0(s3)
   120bc:	10078863          	beqz	a5,121cc <__sflush_r+0x214>
   120c0:	05843583          	ld	a1,88(s0)
   120c4:	0099a023          	sw	s1,0(s3)
   120c8:	10058a63          	beqz	a1,121dc <__sflush_r+0x224>
   120cc:	07440793          	addi	a5,s0,116
   120d0:	00f58663          	beq	a1,a5,120dc <__sflush_r+0x124>
   120d4:	00098513          	mv	a0,s3
   120d8:	9dcff0ef          	jal	112b4 <_free_r>
   120dc:	01813483          	ld	s1,24(sp)
   120e0:	04043c23          	sd	zero,88(s0)
   120e4:	02813083          	ld	ra,40(sp)
   120e8:	02013403          	ld	s0,32(sp)
   120ec:	00813983          	ld	s3,8(sp)
   120f0:	00000513          	li	a0,0
   120f4:	03010113          	addi	sp,sp,48
   120f8:	00008067          	ret
   120fc:	01213823          	sd	s2,16(sp)
   12100:	0185b903          	ld	s2,24(a1)
   12104:	08090a63          	beqz	s2,12198 <__sflush_r+0x1e0>
   12108:	00913c23          	sd	s1,24(sp)
   1210c:	0005b483          	ld	s1,0(a1)
   12110:	00377713          	andi	a4,a4,3
   12114:	0125b023          	sd	s2,0(a1)
   12118:	412484bb          	subw	s1,s1,s2
   1211c:	00000793          	li	a5,0
   12120:	00071463          	bnez	a4,12128 <__sflush_r+0x170>
   12124:	0205a783          	lw	a5,32(a1)
   12128:	00f42623          	sw	a5,12(s0)
   1212c:	00904863          	bgtz	s1,1213c <__sflush_r+0x184>
   12130:	0640006f          	j	12194 <__sflush_r+0x1dc>
   12134:	00a90933          	add	s2,s2,a0
   12138:	04905e63          	blez	s1,12194 <__sflush_r+0x1dc>
   1213c:	04043783          	ld	a5,64(s0)
   12140:	03043583          	ld	a1,48(s0)
   12144:	00048693          	mv	a3,s1
   12148:	00090613          	mv	a2,s2
   1214c:	00098513          	mv	a0,s3
   12150:	000780e7          	jalr	a5
   12154:	40a484bb          	subw	s1,s1,a0
   12158:	fca04ee3          	bgtz	a0,12134 <__sflush_r+0x17c>
   1215c:	01045783          	lhu	a5,16(s0)
   12160:	01013903          	ld	s2,16(sp)
   12164:	0407e793          	ori	a5,a5,64
   12168:	02813083          	ld	ra,40(sp)
   1216c:	00f41823          	sh	a5,16(s0)
   12170:	02013403          	ld	s0,32(sp)
   12174:	01813483          	ld	s1,24(sp)
   12178:	00813983          	ld	s3,8(sp)
   1217c:	fff00513          	li	a0,-1
   12180:	03010113          	addi	sp,sp,48
   12184:	00008067          	ret
   12188:	0705a683          	lw	a3,112(a1)
   1218c:	e6d044e3          	bgtz	a3,11ff4 <__sflush_r+0x3c>
   12190:	f55ff06f          	j	120e4 <__sflush_r+0x12c>
   12194:	01813483          	ld	s1,24(sp)
   12198:	01013903          	ld	s2,16(sp)
   1219c:	f49ff06f          	j	120e4 <__sflush_r+0x12c>
   121a0:	09043603          	ld	a2,144(s0)
   121a4:	e95ff06f          	j	12038 <__sflush_r+0x80>
   121a8:	01843683          	ld	a3,24(s0)
   121ac:	fffff737          	lui	a4,0xfffff
   121b0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   121b4:	00e7f733          	and	a4,a5,a4
   121b8:	00e41823          	sh	a4,16(s0)
   121bc:	00042423          	sw	zero,8(s0)
   121c0:	00d43023          	sd	a3,0(s0)
   121c4:	03379713          	slli	a4,a5,0x33
   121c8:	ee075ce3          	bgez	a4,120c0 <__sflush_r+0x108>
   121cc:	05843583          	ld	a1,88(s0)
   121d0:	08a43823          	sd	a0,144(s0)
   121d4:	0099a023          	sw	s1,0(s3)
   121d8:	ee059ae3          	bnez	a1,120cc <__sflush_r+0x114>
   121dc:	01813483          	ld	s1,24(sp)
   121e0:	f05ff06f          	j	120e4 <__sflush_r+0x12c>
   121e4:	0009a783          	lw	a5,0(s3)
   121e8:	e40784e3          	beqz	a5,12030 <__sflush_r+0x78>
   121ec:	fe378713          	addi	a4,a5,-29
   121f0:	00070c63          	beqz	a4,12208 <__sflush_r+0x250>
   121f4:	fea78793          	addi	a5,a5,-22
   121f8:	00078863          	beqz	a5,12208 <__sflush_r+0x250>
   121fc:	01045783          	lhu	a5,16(s0)
   12200:	0407e793          	ori	a5,a5,64
   12204:	f65ff06f          	j	12168 <__sflush_r+0x1b0>
   12208:	0099a023          	sw	s1,0(s3)
   1220c:	01813483          	ld	s1,24(sp)
   12210:	ed5ff06f          	j	120e4 <__sflush_r+0x12c>

0000000000012214 <_fflush_r>:
   12214:	00050793          	mv	a5,a0
   12218:	00050663          	beqz	a0,12224 <_fflush_r+0x10>
   1221c:	04853703          	ld	a4,72(a0)
   12220:	00070e63          	beqz	a4,1223c <_fflush_r+0x28>
   12224:	01059703          	lh	a4,16(a1)
   12228:	00071663          	bnez	a4,12234 <_fflush_r+0x20>
   1222c:	00000513          	li	a0,0
   12230:	00008067          	ret
   12234:	00078513          	mv	a0,a5
   12238:	d81ff06f          	j	11fb8 <__sflush_r>
   1223c:	fe010113          	addi	sp,sp,-32
   12240:	00b13423          	sd	a1,8(sp)
   12244:	00113c23          	sd	ra,24(sp)
   12248:	00a13023          	sd	a0,0(sp)
   1224c:	f8cfe0ef          	jal	109d8 <__sinit>
   12250:	00813583          	ld	a1,8(sp)
   12254:	00013783          	ld	a5,0(sp)
   12258:	01059703          	lh	a4,16(a1)
   1225c:	00070a63          	beqz	a4,12270 <_fflush_r+0x5c>
   12260:	01813083          	ld	ra,24(sp)
   12264:	00078513          	mv	a0,a5
   12268:	02010113          	addi	sp,sp,32
   1226c:	d4dff06f          	j	11fb8 <__sflush_r>
   12270:	01813083          	ld	ra,24(sp)
   12274:	00000513          	li	a0,0
   12278:	02010113          	addi	sp,sp,32
   1227c:	00008067          	ret

0000000000012280 <fflush>:
   12280:	06050063          	beqz	a0,122e0 <fflush+0x60>
   12284:	00050593          	mv	a1,a0
   12288:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1228c:	00050663          	beqz	a0,12298 <fflush+0x18>
   12290:	04853783          	ld	a5,72(a0)
   12294:	00078c63          	beqz	a5,122ac <fflush+0x2c>
   12298:	01059783          	lh	a5,16(a1)
   1229c:	00079663          	bnez	a5,122a8 <fflush+0x28>
   122a0:	00000513          	li	a0,0
   122a4:	00008067          	ret
   122a8:	d11ff06f          	j	11fb8 <__sflush_r>
   122ac:	fe010113          	addi	sp,sp,-32
   122b0:	00b13423          	sd	a1,8(sp)
   122b4:	00a13023          	sd	a0,0(sp)
   122b8:	00113c23          	sd	ra,24(sp)
   122bc:	f1cfe0ef          	jal	109d8 <__sinit>
   122c0:	00813583          	ld	a1,8(sp)
   122c4:	00013503          	ld	a0,0(sp)
   122c8:	01059783          	lh	a5,16(a1)
   122cc:	02079863          	bnez	a5,122fc <fflush+0x7c>
   122d0:	01813083          	ld	ra,24(sp)
   122d4:	00000513          	li	a0,0
   122d8:	02010113          	addi	sp,sp,32
   122dc:	00008067          	ret
   122e0:	00013637          	lui	a2,0x13
   122e4:	000125b7          	lui	a1,0x12
   122e8:	00013537          	lui	a0,0x13
   122ec:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   122f0:	21458593          	addi	a1,a1,532 # 12214 <_fflush_r>
   122f4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   122f8:	f3cfe06f          	j	10a34 <_fwalk_sglue>
   122fc:	01813083          	ld	ra,24(sp)
   12300:	02010113          	addi	sp,sp,32
   12304:	cb5ff06f          	j	11fb8 <__sflush_r>

0000000000012308 <_sbrk_r>:
   12308:	fe010113          	addi	sp,sp,-32
   1230c:	00813823          	sd	s0,16(sp)
   12310:	00913423          	sd	s1,8(sp)
   12314:	00050493          	mv	s1,a0
   12318:	00058513          	mv	a0,a1
   1231c:	00113c23          	sd	ra,24(sp)
   12320:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12324:	228000ef          	jal	1254c <_sbrk>
   12328:	fff00793          	li	a5,-1
   1232c:	00f50c63          	beq	a0,a5,12344 <_sbrk_r+0x3c>
   12330:	01813083          	ld	ra,24(sp)
   12334:	01013403          	ld	s0,16(sp)
   12338:	00813483          	ld	s1,8(sp)
   1233c:	02010113          	addi	sp,sp,32
   12340:	00008067          	ret
   12344:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12348:	fe0784e3          	beqz	a5,12330 <_sbrk_r+0x28>
   1234c:	01813083          	ld	ra,24(sp)
   12350:	01013403          	ld	s0,16(sp)
   12354:	00f4a023          	sw	a5,0(s1)
   12358:	00813483          	ld	s1,8(sp)
   1235c:	02010113          	addi	sp,sp,32
   12360:	00008067          	ret

0000000000012364 <__libc_fini_array>:
   12364:	fe010113          	addi	sp,sp,-32
   12368:	00813823          	sd	s0,16(sp)
   1236c:	000137b7          	lui	a5,0x13
   12370:	00013437          	lui	s0,0x13
   12374:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12378:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1237c:	408787b3          	sub	a5,a5,s0
   12380:	00913423          	sd	s1,8(sp)
   12384:	00113c23          	sd	ra,24(sp)
   12388:	4037d493          	srai	s1,a5,0x3
   1238c:	02048063          	beqz	s1,123ac <__libc_fini_array+0x48>
   12390:	ff840413          	addi	s0,s0,-8
   12394:	00f40433          	add	s0,s0,a5
   12398:	00043783          	ld	a5,0(s0)
   1239c:	fff48493          	addi	s1,s1,-1
   123a0:	ff840413          	addi	s0,s0,-8
   123a4:	000780e7          	jalr	a5
   123a8:	fe0498e3          	bnez	s1,12398 <__libc_fini_array+0x34>
   123ac:	01813083          	ld	ra,24(sp)
   123b0:	01013403          	ld	s0,16(sp)
   123b4:	00813483          	ld	s1,8(sp)
   123b8:	02010113          	addi	sp,sp,32
   123bc:	00008067          	ret

00000000000123c0 <__register_exitproc>:
   123c0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   123c4:	04078e63          	beqz	a5,12420 <__register_exitproc+0x60>
   123c8:	0087a703          	lw	a4,8(a5)
   123cc:	01f00813          	li	a6,31
   123d0:	08e84263          	blt	a6,a4,12454 <__register_exitproc+0x94>
   123d4:	02050863          	beqz	a0,12404 <__register_exitproc+0x44>
   123d8:	00371813          	slli	a6,a4,0x3
   123dc:	01078833          	add	a6,a5,a6
   123e0:	10c83823          	sd	a2,272(a6)
   123e4:	3107a883          	lw	a7,784(a5)
   123e8:	00100613          	li	a2,1
   123ec:	00e6163b          	sllw	a2,a2,a4
   123f0:	00c8e8b3          	or	a7,a7,a2
   123f4:	3117a823          	sw	a7,784(a5)
   123f8:	20d83823          	sd	a3,528(a6)
   123fc:	00200693          	li	a3,2
   12400:	02d50663          	beq	a0,a3,1242c <__register_exitproc+0x6c>
   12404:	0017069b          	addiw	a3,a4,1
   12408:	00371713          	slli	a4,a4,0x3
   1240c:	00d7a423          	sw	a3,8(a5)
   12410:	00e787b3          	add	a5,a5,a4
   12414:	00b7b823          	sd	a1,16(a5)
   12418:	00000513          	li	a0,0
   1241c:	00008067          	ret
   12420:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12424:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12428:	fa1ff06f          	j	123c8 <__register_exitproc+0x8>
   1242c:	3147a683          	lw	a3,788(a5)
   12430:	00000513          	li	a0,0
   12434:	00d66633          	or	a2,a2,a3
   12438:	0017069b          	addiw	a3,a4,1
   1243c:	00371713          	slli	a4,a4,0x3
   12440:	30c7aa23          	sw	a2,788(a5)
   12444:	00d7a423          	sw	a3,8(a5)
   12448:	00e787b3          	add	a5,a5,a4
   1244c:	00b7b823          	sd	a1,16(a5)
   12450:	00008067          	ret
   12454:	fff00513          	li	a0,-1
   12458:	00008067          	ret

000000000001245c <_close>:
   1245c:	03900893          	li	a7,57
   12460:	00000073          	ecall
   12464:	00054663          	bltz	a0,12470 <_close+0x14>
   12468:	0005051b          	sext.w	a0,a0
   1246c:	00008067          	ret
   12470:	fe010113          	addi	sp,sp,-32
   12474:	00113c23          	sd	ra,24(sp)
   12478:	00a13423          	sd	a0,8(sp)
   1247c:	188000ef          	jal	12604 <__errno>
   12480:	00813783          	ld	a5,8(sp)
   12484:	01813083          	ld	ra,24(sp)
   12488:	40f007bb          	negw	a5,a5
   1248c:	00f52023          	sw	a5,0(a0)
   12490:	fff00513          	li	a0,-1
   12494:	02010113          	addi	sp,sp,32
   12498:	00008067          	ret

000000000001249c <_exit>:
   1249c:	05d00893          	li	a7,93
   124a0:	00000073          	ecall
   124a4:	00054463          	bltz	a0,124ac <_exit+0x10>
   124a8:	0000006f          	j	124a8 <_exit+0xc>
   124ac:	fe010113          	addi	sp,sp,-32
   124b0:	00113c23          	sd	ra,24(sp)
   124b4:	00a13423          	sd	a0,8(sp)
   124b8:	14c000ef          	jal	12604 <__errno>
   124bc:	00813783          	ld	a5,8(sp)
   124c0:	40f007bb          	negw	a5,a5
   124c4:	00f52023          	sw	a5,0(a0)
   124c8:	0000006f          	j	124c8 <_exit+0x2c>

00000000000124cc <_lseek>:
   124cc:	03e00893          	li	a7,62
   124d0:	00000073          	ecall
   124d4:	00054463          	bltz	a0,124dc <_lseek+0x10>
   124d8:	00008067          	ret
   124dc:	fe010113          	addi	sp,sp,-32
   124e0:	00113c23          	sd	ra,24(sp)
   124e4:	00a13423          	sd	a0,8(sp)
   124e8:	11c000ef          	jal	12604 <__errno>
   124ec:	00813783          	ld	a5,8(sp)
   124f0:	01813083          	ld	ra,24(sp)
   124f4:	40f007bb          	negw	a5,a5
   124f8:	00f52023          	sw	a5,0(a0)
   124fc:	fff00793          	li	a5,-1
   12500:	00078513          	mv	a0,a5
   12504:	02010113          	addi	sp,sp,32
   12508:	00008067          	ret

000000000001250c <_read>:
   1250c:	03f00893          	li	a7,63
   12510:	00000073          	ecall
   12514:	00054463          	bltz	a0,1251c <_read+0x10>
   12518:	00008067          	ret
   1251c:	fe010113          	addi	sp,sp,-32
   12520:	00113c23          	sd	ra,24(sp)
   12524:	00a13423          	sd	a0,8(sp)
   12528:	0dc000ef          	jal	12604 <__errno>
   1252c:	00813783          	ld	a5,8(sp)
   12530:	01813083          	ld	ra,24(sp)
   12534:	40f007bb          	negw	a5,a5
   12538:	00f52023          	sw	a5,0(a0)
   1253c:	fff00793          	li	a5,-1
   12540:	00078513          	mv	a0,a5
   12544:	02010113          	addi	sp,sp,32
   12548:	00008067          	ret

000000000001254c <_sbrk>:
   1254c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12550:	ff010113          	addi	sp,sp,-16
   12554:	00113423          	sd	ra,8(sp)
   12558:	00050713          	mv	a4,a0
   1255c:	02079063          	bnez	a5,1257c <_sbrk+0x30>
   12560:	0d600893          	li	a7,214
   12564:	00000513          	li	a0,0
   12568:	00000073          	ecall
   1256c:	fff00793          	li	a5,-1
   12570:	02f50c63          	beq	a0,a5,125a8 <_sbrk+0x5c>
   12574:	00050793          	mv	a5,a0
   12578:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1257c:	00f70533          	add	a0,a4,a5
   12580:	0d600893          	li	a7,214
   12584:	00000073          	ecall
   12588:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1258c:	00f70733          	add	a4,a4,a5
   12590:	00e51c63          	bne	a0,a4,125a8 <_sbrk+0x5c>
   12594:	00813083          	ld	ra,8(sp)
   12598:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1259c:	00078513          	mv	a0,a5
   125a0:	01010113          	addi	sp,sp,16
   125a4:	00008067          	ret
   125a8:	05c000ef          	jal	12604 <__errno>
   125ac:	00813083          	ld	ra,8(sp)
   125b0:	00c00793          	li	a5,12
   125b4:	00f52023          	sw	a5,0(a0)
   125b8:	fff00513          	li	a0,-1
   125bc:	01010113          	addi	sp,sp,16
   125c0:	00008067          	ret

00000000000125c4 <_write>:
   125c4:	04000893          	li	a7,64
   125c8:	00000073          	ecall
   125cc:	00054463          	bltz	a0,125d4 <_write+0x10>
   125d0:	00008067          	ret
   125d4:	fe010113          	addi	sp,sp,-32
   125d8:	00113c23          	sd	ra,24(sp)
   125dc:	00a13423          	sd	a0,8(sp)
   125e0:	024000ef          	jal	12604 <__errno>
   125e4:	00813783          	ld	a5,8(sp)
   125e8:	01813083          	ld	ra,24(sp)
   125ec:	40f007bb          	negw	a5,a5
   125f0:	00f52023          	sw	a5,0(a0)
   125f4:	fff00793          	li	a5,-1
   125f8:	00078513          	mv	a0,a5
   125fc:	02010113          	addi	sp,sp,32
   12600:	00008067          	ret

0000000000012604 <__errno>:
   12604:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12608:	00008067          	ret

Disassembly of section .rodata:

0000000000012610 <.rodata>:
   12610:	7241                	.insn	2, 0x7241
   12612:	6172                	.insn	2, 0x6172
   12614:	3a79                	.insn	2, 0x3a79
   12616:	5b20                	.insn	2, 0x5b20
	...
   12620:	202c                	.insn	2, 0x202c
   12622:	0000                	.insn	2, 0x0000
   12624:	0000                	.insn	2, 0x0000
   12626:	0000                	.insn	2, 0x0000
   12628:	205d                	.insn	2, 0x205d
   1262a:	3e3d                	.insn	2, 0x3e3d
   1262c:	4d20                	.insn	2, 0x4d20
   1262e:	6e69                	.insn	2, 0x6e69
   12630:	203a                	.insn	2, 0x203a
   12632:	0000                	.insn	2, 0x0000
   12634:	0000                	.insn	2, 0x0000
   12636:	0000                	.insn	2, 0x0000
   12638:	5b20                	.insn	2, 0x5b20
   1263a:	4150                	.insn	2, 0x4150
   1263c:	0a5d5353          	.insn	4, 0x0a5d5353
	...
   12648:	5b20                	.insn	2, 0x5b20
   1264a:	4146                	.insn	2, 0x4146
   1264c:	4c49                	.insn	2, 0x4c49
   1264e:	205d                	.insn	2, 0x205d
   12650:	7865                	.insn	2, 0x7865
   12652:	6570                	.insn	2, 0x6570
   12654:	64657463          	bgeu	a0,t1,12c9c <__EH_FRAME_BEGIN__+0x554>
   12658:	203a                	.insn	2, 0x203a
   1265a:	0000                	.insn	2, 0x0000
   1265c:	0000                	.insn	2, 0x0000
   1265e:	0000                	.insn	2, 0x0000
   12660:	000a                	.insn	2, 0x000a
   12662:	0000                	.insn	2, 0x0000
   12664:	0000                	.insn	2, 0x0000
   12666:	0000                	.insn	2, 0x0000
   12668:	3d3d                	.insn	2, 0x3d3d
   1266a:	203d                	.insn	2, 0x203d
   1266c:	6946                	.insn	2, 0x6946
   1266e:	646e                	.insn	2, 0x646e
   12670:	4d20                	.insn	2, 0x4d20
   12672:	6e69                	.insn	2, 0x6e69
   12674:	5420                	.insn	2, 0x5420
   12676:	7365                	.insn	2, 0x7365
   12678:	7374                	.insn	2, 0x7374
   1267a:	3d20                	.insn	2, 0x3d20
   1267c:	3d3d                	.insn	2, 0x3d3d
   1267e:	000a                	.insn	2, 0x000a
   12680:	3d3d                	.insn	2, 0x3d3d
   12682:	203d                	.insn	2, 0x203d
   12684:	6c41                	.insn	2, 0x6c41
   12686:	206c                	.insn	2, 0x206c
   12688:	6554                	.insn	2, 0x6554
   1268a:	20737473          	.insn	4, 0x20737473
   1268e:	706d6f43          	.insn	4, 0x706d6f43
   12692:	656c                	.insn	2, 0x656c
   12694:	6574                	.insn	2, 0x6574
   12696:	3d20                	.insn	2, 0x3d20
   12698:	3d3d                	.insn	2, 0x3d3d
   1269a:	000a                	.insn	2, 0x000a
   1269c:	0000                	.insn	2, 0x0000
   1269e:	0000                	.insn	2, 0x0000
   126a0:	0005                	.insn	2, 0x0005
   126a2:	0000                	.insn	2, 0x0000
   126a4:	0002                	.insn	2, 0x0002
   126a6:	0000                	.insn	2, 0x0000
   126a8:	0008                	.insn	2, 0x0008
   126aa:	0000                	.insn	2, 0x0000
   126ac:	0001                	.insn	2, 0x0001
   126ae:	0000                	.insn	2, 0x0000
   126b0:	0009                	.insn	2, 0x0009
   126b2:	0000                	.insn	2, 0x0000
   126b4:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   126b8:	fffffffb          	.insn	4, 0xfffffffb
   126bc:	fffe                	.insn	2, 0xfffe
   126be:	ffff                	.insn	2, 0xffff
   126c0:	fffffff7          	.insn	4, 0xfffffff7
   126c4:	fff8                	.insn	2, 0xfff8
   126c6:	ffff                	.insn	2, 0xffff
   126c8:	ffff                	.insn	2, 0xffff
   126ca:	ffff                	.insn	2, 0xffff
   126cc:	0000                	.insn	2, 0x0000
   126ce:	0000                	.insn	2, 0x0000
   126d0:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   126d4:	fff9                	.insn	2, 0xfff9
   126d6:	ffff                	.insn	2, 0xffff
   126d8:	0001                	.insn	2, 0x0001
   126da:	0000                	.insn	2, 0x0000
   126dc:	0009                	.insn	2, 0x0009
   126de:	0000                	.insn	2, 0x0000
   126e0:	fffc                	.insn	2, 0xfffc
   126e2:	ffff                	.insn	2, 0xffff
   126e4:	000c                	.insn	2, 0x000c
   126e6:	0000                	.insn	2, 0x0000
   126e8:	0006                	.insn	2, 0x0006
   126ea:	0000                	.insn	2, 0x0000
   126ec:	fff8                	.insn	2, 0xfff8
   126ee:	ffff                	.insn	2, 0xffff
   126f0:	00000007          	.insn	4, 0x0007
   126f4:	00000007          	.insn	4, 0x0007
   126f8:	00000007          	.insn	4, 0x0007
   126fc:	00000007          	.insn	4, 0x0007
   12700:	ff9c                	.insn	2, 0xff9c
   12702:	ffff                	.insn	2, 0xffff
   12704:	0032                	.insn	2, 0x0032
   12706:	0000                	.insn	2, 0x0000
   12708:	001e                	.insn	2, 0x001e
   1270a:	0000                	.insn	2, 0x0000
   1270c:	0014                	.insn	2, 0x0014
   1270e:	0000                	.insn	2, 0x0000
   12710:	0032                	.insn	2, 0x0032
   12712:	0000                	.insn	2, 0x0000
   12714:	001e                	.insn	2, 0x001e
   12716:	0000                	.insn	2, 0x0000
   12718:	ff9c                	.insn	2, 0xff9c
   1271a:	ffff                	.insn	2, 0xffff
   1271c:	0014                	.insn	2, 0x0014
   1271e:	0000                	.insn	2, 0x0000
   12720:	00000017          	auipc	zero,0x0
   12724:	002d                	.insn	2, 0x002d
   12726:	0000                	.insn	2, 0x0000
   12728:	000c                	.insn	2, 0x000c
   1272a:	0000                	.insn	2, 0x0000
   1272c:	00000043          	.insn	4, 0x0043
   12730:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   12734:	0059                	.insn	2, 0x0059
   12736:	0000                	.insn	2, 0x0000
   12738:	0022                	.insn	2, 0x0022
   1273a:	0000                	.insn	2, 0x0000
   1273c:	0038                	.insn	2, 0x0038
   1273e:	0000                	.insn	2, 0x0000
   12740:	0001                	.insn	2, 0x0001
   12742:	0000                	.insn	2, 0x0000
   12744:	004e                	.insn	2, 0x004e
	...

Disassembly of section .eh_frame:

0000000000012748 <__EH_FRAME_BEGIN__>:
   12748:	0000                	.insn	2, 0x0000
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

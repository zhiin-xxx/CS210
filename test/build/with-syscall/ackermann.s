
test/build/with-syscall/ackermann.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	575000ef          	jal	10ea8 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	1b8020ef          	jal	12300 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	1c850513          	addi	a0,a0,456 # 121c8 <__libc_fini_array>
   1015c:	6850006f          	j	10fe0 <atexit>
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
   10184:	449000ef          	jal	10dcc <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	e5850513          	addi	a0,a0,-424 # 10fe0 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	03450513          	addi	a0,a0,52 # 121c8 <__libc_fini_array>
   1019c:	645000ef          	jal	10fe0 <atexit>
   101a0:	399000ef          	jal	10d38 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	13c000ef          	jal	102ec <main>
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
   101d8:	49050513          	addi	a0,a0,1168 # 12490 <__EH_FRAME_BEGIN__>
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
   1020c:	49050513          	addi	a0,a0,1168 # 12490 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <ackermann>:
   1021c:	fd010113          	addi	sp,sp,-48
   10220:	02113423          	sd	ra,40(sp)
   10224:	02813023          	sd	s0,32(sp)
   10228:	00913c23          	sd	s1,24(sp)
   1022c:	03010413          	addi	s0,sp,48
   10230:	00050793          	mv	a5,a0
   10234:	00058713          	mv	a4,a1
   10238:	fcf42e23          	sw	a5,-36(s0)
   1023c:	00070793          	mv	a5,a4
   10240:	fcf42c23          	sw	a5,-40(s0)
   10244:	fdc42783          	lw	a5,-36(s0)
   10248:	0007879b          	sext.w	a5,a5
   1024c:	00079a63          	bnez	a5,10260 <ackermann+0x44>
   10250:	fd842783          	lw	a5,-40(s0)
   10254:	0017879b          	addiw	a5,a5,1
   10258:	0007879b          	sext.w	a5,a5
   1025c:	0780006f          	j	102d4 <ackermann+0xb8>
   10260:	fdc42783          	lw	a5,-36(s0)
   10264:	0007879b          	sext.w	a5,a5
   10268:	02f05863          	blez	a5,10298 <ackermann+0x7c>
   1026c:	fd842783          	lw	a5,-40(s0)
   10270:	0007879b          	sext.w	a5,a5
   10274:	02079263          	bnez	a5,10298 <ackermann+0x7c>
   10278:	fdc42783          	lw	a5,-36(s0)
   1027c:	fff7879b          	addiw	a5,a5,-1
   10280:	0007879b          	sext.w	a5,a5
   10284:	00100593          	li	a1,1
   10288:	00078513          	mv	a0,a5
   1028c:	f91ff0ef          	jal	1021c <ackermann>
   10290:	00050793          	mv	a5,a0
   10294:	0400006f          	j	102d4 <ackermann+0xb8>
   10298:	fdc42783          	lw	a5,-36(s0)
   1029c:	fff7879b          	addiw	a5,a5,-1
   102a0:	0007849b          	sext.w	s1,a5
   102a4:	fd842783          	lw	a5,-40(s0)
   102a8:	fff7879b          	addiw	a5,a5,-1
   102ac:	0007871b          	sext.w	a4,a5
   102b0:	fdc42783          	lw	a5,-36(s0)
   102b4:	00070593          	mv	a1,a4
   102b8:	00078513          	mv	a0,a5
   102bc:	f61ff0ef          	jal	1021c <ackermann>
   102c0:	00050793          	mv	a5,a0
   102c4:	00078593          	mv	a1,a5
   102c8:	00048513          	mv	a0,s1
   102cc:	f51ff0ef          	jal	1021c <ackermann>
   102d0:	00050793          	mv	a5,a0
   102d4:	00078513          	mv	a0,a5
   102d8:	02813083          	ld	ra,40(sp)
   102dc:	02013403          	ld	s0,32(sp)
   102e0:	01813483          	ld	s1,24(sp)
   102e4:	03010113          	addi	sp,sp,48
   102e8:	00008067          	ret

00000000000102ec <main>:
   102ec:	fe010113          	addi	sp,sp,-32
   102f0:	00113c23          	sd	ra,24(sp)
   102f4:	00813823          	sd	s0,16(sp)
   102f8:	02010413          	addi	s0,sp,32
   102fc:	fe042623          	sw	zero,-20(s0)
   10300:	0a00006f          	j	103a0 <main+0xb4>
   10304:	fe042423          	sw	zero,-24(s0)
   10308:	07c0006f          	j	10384 <main+0x98>
   1030c:	fe842703          	lw	a4,-24(s0)
   10310:	fec42783          	lw	a5,-20(s0)
   10314:	00070593          	mv	a1,a4
   10318:	00078513          	mv	a0,a5
   1031c:	f01ff0ef          	jal	1021c <ackermann>
   10320:	00050793          	mv	a5,a0
   10324:	fef42223          	sw	a5,-28(s0)
   10328:	000127b7          	lui	a5,0x12
   1032c:	47078513          	addi	a0,a5,1136 # 12470 <__errno+0x8>
   10330:	108000ef          	jal	10438 <print_s>
   10334:	fec42783          	lw	a5,-20(s0)
   10338:	00078513          	mv	a0,a5
   1033c:	090000ef          	jal	103cc <print_d>
   10340:	000127b7          	lui	a5,0x12
   10344:	48078513          	addi	a0,a5,1152 # 12480 <__errno+0x18>
   10348:	0f0000ef          	jal	10438 <print_s>
   1034c:	fe842783          	lw	a5,-24(s0)
   10350:	00078513          	mv	a0,a5
   10354:	078000ef          	jal	103cc <print_d>
   10358:	000127b7          	lui	a5,0x12
   1035c:	48878513          	addi	a0,a5,1160 # 12488 <__errno+0x20>
   10360:	0d8000ef          	jal	10438 <print_s>
   10364:	fe442783          	lw	a5,-28(s0)
   10368:	00078513          	mv	a0,a5
   1036c:	060000ef          	jal	103cc <print_d>
   10370:	00a00513          	li	a0,10
   10374:	0f4000ef          	jal	10468 <print_c>
   10378:	fe842783          	lw	a5,-24(s0)
   1037c:	0017879b          	addiw	a5,a5,1
   10380:	fef42423          	sw	a5,-24(s0)
   10384:	fe842783          	lw	a5,-24(s0)
   10388:	0007871b          	sext.w	a4,a5
   1038c:	00400793          	li	a5,4
   10390:	f6e7dee3          	bge	a5,a4,1030c <main+0x20>
   10394:	fec42783          	lw	a5,-20(s0)
   10398:	0017879b          	addiw	a5,a5,1
   1039c:	fef42623          	sw	a5,-20(s0)
   103a0:	fec42783          	lw	a5,-20(s0)
   103a4:	0007871b          	sext.w	a4,a5
   103a8:	00300793          	li	a5,3
   103ac:	f4e7dce3          	bge	a5,a4,10304 <main+0x18>
   103b0:	0ec000ef          	jal	1049c <exit_proc>
   103b4:	00000793          	li	a5,0
   103b8:	00078513          	mv	a0,a5
   103bc:	01813083          	ld	ra,24(sp)
   103c0:	01013403          	ld	s0,16(sp)
   103c4:	02010113          	addi	sp,sp,32
   103c8:	00008067          	ret

00000000000103cc <print_d>:
   103cc:	fe010113          	addi	sp,sp,-32
   103d0:	00113c23          	sd	ra,24(sp)
   103d4:	00813823          	sd	s0,16(sp)
   103d8:	02010413          	addi	s0,sp,32
   103dc:	00050793          	mv	a5,a0
   103e0:	fef42623          	sw	a5,-20(s0)
   103e4:	00200893          	li	a7,2
   103e8:	00000073          	ecall
   103ec:	00000013          	nop
   103f0:	01813083          	ld	ra,24(sp)
   103f4:	01013403          	ld	s0,16(sp)
   103f8:	02010113          	addi	sp,sp,32
   103fc:	00008067          	ret

0000000000010400 <print_ll>:
   10400:	fe010113          	addi	sp,sp,-32
   10404:	00113c23          	sd	ra,24(sp)
   10408:	00813823          	sd	s0,16(sp)
   1040c:	02010413          	addi	s0,sp,32
   10410:	fea43423          	sd	a0,-24(s0)
   10414:	fe843783          	ld	a5,-24(s0)
   10418:	00078513          	mv	a0,a5
   1041c:	00600893          	li	a7,6
   10420:	00000073          	ecall
   10424:	00000013          	nop
   10428:	01813083          	ld	ra,24(sp)
   1042c:	01013403          	ld	s0,16(sp)
   10430:	02010113          	addi	sp,sp,32
   10434:	00008067          	ret

0000000000010438 <print_s>:
   10438:	fe010113          	addi	sp,sp,-32
   1043c:	00113c23          	sd	ra,24(sp)
   10440:	00813823          	sd	s0,16(sp)
   10444:	02010413          	addi	s0,sp,32
   10448:	fea43423          	sd	a0,-24(s0)
   1044c:	00000893          	li	a7,0
   10450:	00000073          	ecall
   10454:	00000013          	nop
   10458:	01813083          	ld	ra,24(sp)
   1045c:	01013403          	ld	s0,16(sp)
   10460:	02010113          	addi	sp,sp,32
   10464:	00008067          	ret

0000000000010468 <print_c>:
   10468:	fe010113          	addi	sp,sp,-32
   1046c:	00113c23          	sd	ra,24(sp)
   10470:	00813823          	sd	s0,16(sp)
   10474:	02010413          	addi	s0,sp,32
   10478:	00050793          	mv	a5,a0
   1047c:	fef407a3          	sb	a5,-17(s0)
   10480:	00100893          	li	a7,1
   10484:	00000073          	ecall
   10488:	00000013          	nop
   1048c:	01813083          	ld	ra,24(sp)
   10490:	01013403          	ld	s0,16(sp)
   10494:	02010113          	addi	sp,sp,32
   10498:	00008067          	ret

000000000001049c <exit_proc>:
   1049c:	ff010113          	addi	sp,sp,-16
   104a0:	00113423          	sd	ra,8(sp)
   104a4:	00813023          	sd	s0,0(sp)
   104a8:	01010413          	addi	s0,sp,16
   104ac:	00300893          	li	a7,3
   104b0:	00000073          	ecall
   104b4:	00000013          	nop
   104b8:	00813083          	ld	ra,8(sp)
   104bc:	00013403          	ld	s0,0(sp)
   104c0:	01010113          	addi	sp,sp,16
   104c4:	00008067          	ret

00000000000104c8 <read_char>:
   104c8:	fe010113          	addi	sp,sp,-32
   104cc:	00113c23          	sd	ra,24(sp)
   104d0:	00813823          	sd	s0,16(sp)
   104d4:	02010413          	addi	s0,sp,32
   104d8:	00400893          	li	a7,4
   104dc:	00000073          	ecall
   104e0:	00050793          	mv	a5,a0
   104e4:	fef407a3          	sb	a5,-17(s0)
   104e8:	fef44783          	lbu	a5,-17(s0)
   104ec:	00078513          	mv	a0,a5
   104f0:	01813083          	ld	ra,24(sp)
   104f4:	01013403          	ld	s0,16(sp)
   104f8:	02010113          	addi	sp,sp,32
   104fc:	00008067          	ret

0000000000010500 <read_num>:
   10500:	fe010113          	addi	sp,sp,-32
   10504:	00113c23          	sd	ra,24(sp)
   10508:	00813823          	sd	s0,16(sp)
   1050c:	02010413          	addi	s0,sp,32
   10510:	00500893          	li	a7,5
   10514:	00000073          	ecall
   10518:	00050793          	mv	a5,a0
   1051c:	fef43423          	sd	a5,-24(s0)
   10520:	fe843783          	ld	a5,-24(s0)
   10524:	00078513          	mv	a0,a5
   10528:	01813083          	ld	ra,24(sp)
   1052c:	01013403          	ld	s0,16(sp)
   10530:	02010113          	addi	sp,sp,32
   10534:	00008067          	ret

0000000000010538 <__fp_lock>:
   10538:	00000513          	li	a0,0
   1053c:	00008067          	ret

0000000000010540 <stdio_exit_handler>:
   10540:	00013637          	lui	a2,0x13
   10544:	000125b7          	lui	a1,0x12
   10548:	00013537          	lui	a0,0x13
   1054c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10550:	d0858593          	addi	a1,a1,-760 # 11d08 <_fclose_r>
   10554:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10558:	3440006f          	j	1089c <_fwalk_sglue>

000000000001055c <cleanup_stdio>:
   1055c:	00853583          	ld	a1,8(a0)
   10560:	ff010113          	addi	sp,sp,-16
   10564:	00813023          	sd	s0,0(sp)
   10568:	00113423          	sd	ra,8(sp)
   1056c:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10570:	00050413          	mv	s0,a0
   10574:	00f58463          	beq	a1,a5,1057c <cleanup_stdio+0x20>
   10578:	790010ef          	jal	11d08 <_fclose_r>
   1057c:	01043583          	ld	a1,16(s0)
   10580:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10584:	00f58663          	beq	a1,a5,10590 <cleanup_stdio+0x34>
   10588:	00040513          	mv	a0,s0
   1058c:	77c010ef          	jal	11d08 <_fclose_r>
   10590:	01843583          	ld	a1,24(s0)
   10594:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10598:	00f58c63          	beq	a1,a5,105b0 <cleanup_stdio+0x54>
   1059c:	00040513          	mv	a0,s0
   105a0:	00013403          	ld	s0,0(sp)
   105a4:	00813083          	ld	ra,8(sp)
   105a8:	01010113          	addi	sp,sp,16
   105ac:	75c0106f          	j	11d08 <_fclose_r>
   105b0:	00813083          	ld	ra,8(sp)
   105b4:	00013403          	ld	s0,0(sp)
   105b8:	01010113          	addi	sp,sp,16
   105bc:	00008067          	ret

00000000000105c0 <__fp_unlock>:
   105c0:	00000513          	li	a0,0
   105c4:	00008067          	ret

00000000000105c8 <global_stdio_init.part.0>:
   105c8:	fd010113          	addi	sp,sp,-48
   105cc:	000107b7          	lui	a5,0x10
   105d0:	02813023          	sd	s0,32(sp)
   105d4:	54078793          	addi	a5,a5,1344 # 10540 <stdio_exit_handler>
   105d8:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   105dc:	02113423          	sd	ra,40(sp)
   105e0:	00913c23          	sd	s1,24(sp)
   105e4:	01213823          	sd	s2,16(sp)
   105e8:	01313423          	sd	s3,8(sp)
   105ec:	01413023          	sd	s4,0(sp)
   105f0:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   105f4:	00800613          	li	a2,8
   105f8:	00400793          	li	a5,4
   105fc:	00000593          	li	a1,0
   10600:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10604:	00f42823          	sw	a5,16(s0)
   10608:	00043023          	sd	zero,0(s0)
   1060c:	00043423          	sd	zero,8(s0)
   10610:	0a042623          	sw	zero,172(s0)
   10614:	00043c23          	sd	zero,24(s0)
   10618:	02042023          	sw	zero,32(s0)
   1061c:	02042423          	sw	zero,40(s0)
   10620:	7ac000ef          	jal	10dcc <memset>
   10624:	00011a37          	lui	s4,0x11
   10628:	000119b7          	lui	s3,0x11
   1062c:	00011937          	lui	s2,0x11
   10630:	000114b7          	lui	s1,0x11
   10634:	000107b7          	lui	a5,0x10
   10638:	968a0a13          	addi	s4,s4,-1688 # 10968 <__sread>
   1063c:	9cc98993          	addi	s3,s3,-1588 # 109cc <__swrite>
   10640:	a5490913          	addi	s2,s2,-1452 # 10a54 <__sseek>
   10644:	ab848493          	addi	s1,s1,-1352 # 10ab8 <__sclose>
   10648:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1064c:	00800613          	li	a2,8
   10650:	00000593          	li	a1,0
   10654:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10658:	0cf42023          	sw	a5,192(s0)
   1065c:	03443c23          	sd	s4,56(s0)
   10660:	05343023          	sd	s3,64(s0)
   10664:	05243423          	sd	s2,72(s0)
   10668:	04943823          	sd	s1,80(s0)
   1066c:	02843823          	sd	s0,48(s0)
   10670:	0a043823          	sd	zero,176(s0)
   10674:	0a043c23          	sd	zero,184(s0)
   10678:	14042e23          	sw	zero,348(s0)
   1067c:	0c043423          	sd	zero,200(s0)
   10680:	0c042823          	sw	zero,208(s0)
   10684:	0c042c23          	sw	zero,216(s0)
   10688:	744000ef          	jal	10dcc <memset>
   1068c:	000207b7          	lui	a5,0x20
   10690:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10694:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10698:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   1069c:	00800613          	li	a2,8
   106a0:	00000593          	li	a1,0
   106a4:	0f443423          	sd	s4,232(s0)
   106a8:	0f343823          	sd	s3,240(s0)
   106ac:	0f243c23          	sd	s2,248(s0)
   106b0:	10943023          	sd	s1,256(s0)
   106b4:	16f42823          	sw	a5,368(s0)
   106b8:	16043023          	sd	zero,352(s0)
   106bc:	16043423          	sd	zero,360(s0)
   106c0:	20042623          	sw	zero,524(s0)
   106c4:	16043c23          	sd	zero,376(s0)
   106c8:	18042023          	sw	zero,384(s0)
   106cc:	18042423          	sw	zero,392(s0)
   106d0:	0ee43023          	sd	a4,224(s0)
   106d4:	6f8000ef          	jal	10dcc <memset>
   106d8:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   106dc:	19443c23          	sd	s4,408(s0)
   106e0:	1b343023          	sd	s3,416(s0)
   106e4:	1b243423          	sd	s2,424(s0)
   106e8:	1a943823          	sd	s1,432(s0)
   106ec:	02813083          	ld	ra,40(sp)
   106f0:	18f43823          	sd	a5,400(s0)
   106f4:	02013403          	ld	s0,32(sp)
   106f8:	01813483          	ld	s1,24(sp)
   106fc:	01013903          	ld	s2,16(sp)
   10700:	00813983          	ld	s3,8(sp)
   10704:	00013a03          	ld	s4,0(sp)
   10708:	03010113          	addi	sp,sp,48
   1070c:	00008067          	ret

0000000000010710 <__sfp>:
   10710:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10714:	fd010113          	addi	sp,sp,-48
   10718:	00913c23          	sd	s1,24(sp)
   1071c:	02113423          	sd	ra,40(sp)
   10720:	02813023          	sd	s0,32(sp)
   10724:	00050493          	mv	s1,a0
   10728:	10078063          	beqz	a5,10828 <__sfp+0x118>
   1072c:	000136b7          	lui	a3,0x13
   10730:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10734:	0b000813          	li	a6,176
   10738:	0086a703          	lw	a4,8(a3)
   1073c:	08e05463          	blez	a4,107c4 <__sfp+0xb4>
   10740:	02071713          	slli	a4,a4,0x20
   10744:	02075713          	srli	a4,a4,0x20
   10748:	03070733          	mul	a4,a4,a6
   1074c:	0106b403          	ld	s0,16(a3)
   10750:	00e40733          	add	a4,s0,a4
   10754:	00c0006f          	j	10760 <__sfp+0x50>
   10758:	0b040413          	addi	s0,s0,176
   1075c:	06e40463          	beq	s0,a4,107c4 <__sfp+0xb4>
   10760:	01041783          	lh	a5,16(s0)
   10764:	fe079ae3          	bnez	a5,10758 <__sfp+0x48>
   10768:	ffff07b7          	lui	a5,0xffff0
   1076c:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10770:	00f42823          	sw	a5,16(s0)
   10774:	0a042623          	sw	zero,172(s0)
   10778:	00043023          	sd	zero,0(s0)
   1077c:	00043423          	sd	zero,8(s0)
   10780:	00043c23          	sd	zero,24(s0)
   10784:	02042023          	sw	zero,32(s0)
   10788:	02042423          	sw	zero,40(s0)
   1078c:	00800613          	li	a2,8
   10790:	00000593          	li	a1,0
   10794:	0a440513          	addi	a0,s0,164
   10798:	634000ef          	jal	10dcc <memset>
   1079c:	04043c23          	sd	zero,88(s0)
   107a0:	06042023          	sw	zero,96(s0)
   107a4:	06043c23          	sd	zero,120(s0)
   107a8:	08042023          	sw	zero,128(s0)
   107ac:	02813083          	ld	ra,40(sp)
   107b0:	00040513          	mv	a0,s0
   107b4:	02013403          	ld	s0,32(sp)
   107b8:	01813483          	ld	s1,24(sp)
   107bc:	03010113          	addi	sp,sp,48
   107c0:	00008067          	ret
   107c4:	0006b403          	ld	s0,0(a3)
   107c8:	00040663          	beqz	s0,107d4 <__sfp+0xc4>
   107cc:	00040693          	mv	a3,s0
   107d0:	f69ff06f          	j	10738 <__sfp+0x28>
   107d4:	2d800593          	li	a1,728
   107d8:	00048513          	mv	a0,s1
   107dc:	00d13423          	sd	a3,8(sp)
   107e0:	43d000ef          	jal	1141c <_malloc_r>
   107e4:	00813683          	ld	a3,8(sp)
   107e8:	00050413          	mv	s0,a0
   107ec:	04050263          	beqz	a0,10830 <__sfp+0x120>
   107f0:	00400793          	li	a5,4
   107f4:	00f52423          	sw	a5,8(a0)
   107f8:	01850513          	addi	a0,a0,24
   107fc:	00043023          	sd	zero,0(s0)
   10800:	00a43823          	sd	a0,16(s0)
   10804:	2c000613          	li	a2,704
   10808:	00000593          	li	a1,0
   1080c:	00d13423          	sd	a3,8(sp)
   10810:	5bc000ef          	jal	10dcc <memset>
   10814:	00813683          	ld	a3,8(sp)
   10818:	0b000813          	li	a6,176
   1081c:	0086b023          	sd	s0,0(a3)
   10820:	00040693          	mv	a3,s0
   10824:	f15ff06f          	j	10738 <__sfp+0x28>
   10828:	da1ff0ef          	jal	105c8 <global_stdio_init.part.0>
   1082c:	f01ff06f          	j	1072c <__sfp+0x1c>
   10830:	0006b023          	sd	zero,0(a3)
   10834:	00c00793          	li	a5,12
   10838:	00f4a023          	sw	a5,0(s1)
   1083c:	f71ff06f          	j	107ac <__sfp+0x9c>

0000000000010840 <__sinit>:
   10840:	04853783          	ld	a5,72(a0)
   10844:	00078463          	beqz	a5,1084c <__sinit+0xc>
   10848:	00008067          	ret
   1084c:	000107b7          	lui	a5,0x10
   10850:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10854:	55c78793          	addi	a5,a5,1372 # 1055c <cleanup_stdio>
   10858:	04f53423          	sd	a5,72(a0)
   1085c:	fe0716e3          	bnez	a4,10848 <__sinit+0x8>
   10860:	d69ff06f          	j	105c8 <global_stdio_init.part.0>

0000000000010864 <__sfp_lock_acquire>:
   10864:	00008067          	ret

0000000000010868 <__sfp_lock_release>:
   10868:	00008067          	ret

000000000001086c <__fp_lock_all>:
   1086c:	00013637          	lui	a2,0x13
   10870:	000105b7          	lui	a1,0x10
   10874:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10878:	53858593          	addi	a1,a1,1336 # 10538 <__fp_lock>
   1087c:	00000513          	li	a0,0
   10880:	01c0006f          	j	1089c <_fwalk_sglue>

0000000000010884 <__fp_unlock_all>:
   10884:	00013637          	lui	a2,0x13
   10888:	000105b7          	lui	a1,0x10
   1088c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10890:	5c058593          	addi	a1,a1,1472 # 105c0 <__fp_unlock>
   10894:	00000513          	li	a0,0
   10898:	0040006f          	j	1089c <_fwalk_sglue>

000000000001089c <_fwalk_sglue>:
   1089c:	fb010113          	addi	sp,sp,-80
   108a0:	03213823          	sd	s2,48(sp)
   108a4:	03313423          	sd	s3,40(sp)
   108a8:	03413023          	sd	s4,32(sp)
   108ac:	01513c23          	sd	s5,24(sp)
   108b0:	01613823          	sd	s6,16(sp)
   108b4:	01713423          	sd	s7,8(sp)
   108b8:	01813023          	sd	s8,0(sp)
   108bc:	04113423          	sd	ra,72(sp)
   108c0:	04813023          	sd	s0,64(sp)
   108c4:	02913c23          	sd	s1,56(sp)
   108c8:	00060993          	mv	s3,a2
   108cc:	00050a93          	mv	s5,a0
   108d0:	00058b13          	mv	s6,a1
   108d4:	00000913          	li	s2,0
   108d8:	0b000b93          	li	s7,176
   108dc:	00100c13          	li	s8,1
   108e0:	fff00a13          	li	s4,-1
   108e4:	0089a483          	lw	s1,8(s3)
   108e8:	04905263          	blez	s1,1092c <_fwalk_sglue+0x90>
   108ec:	02049493          	slli	s1,s1,0x20
   108f0:	0204d493          	srli	s1,s1,0x20
   108f4:	037484b3          	mul	s1,s1,s7
   108f8:	0109b403          	ld	s0,16(s3)
   108fc:	009404b3          	add	s1,s0,s1
   10900:	01045783          	lhu	a5,16(s0)
   10904:	02fc7063          	bgeu	s8,a5,10924 <_fwalk_sglue+0x88>
   10908:	01241783          	lh	a5,18(s0)
   1090c:	00040593          	mv	a1,s0
   10910:	000a8513          	mv	a0,s5
   10914:	01478863          	beq	a5,s4,10924 <_fwalk_sglue+0x88>
   10918:	000b00e7          	jalr	s6
   1091c:	01256933          	or	s2,a0,s2
   10920:	0009091b          	sext.w	s2,s2
   10924:	0b040413          	addi	s0,s0,176
   10928:	fc941ce3          	bne	s0,s1,10900 <_fwalk_sglue+0x64>
   1092c:	0009b983          	ld	s3,0(s3)
   10930:	fa099ae3          	bnez	s3,108e4 <_fwalk_sglue+0x48>
   10934:	04813083          	ld	ra,72(sp)
   10938:	04013403          	ld	s0,64(sp)
   1093c:	03813483          	ld	s1,56(sp)
   10940:	02813983          	ld	s3,40(sp)
   10944:	02013a03          	ld	s4,32(sp)
   10948:	01813a83          	ld	s5,24(sp)
   1094c:	01013b03          	ld	s6,16(sp)
   10950:	00813b83          	ld	s7,8(sp)
   10954:	00013c03          	ld	s8,0(sp)
   10958:	00090513          	mv	a0,s2
   1095c:	03013903          	ld	s2,48(sp)
   10960:	05010113          	addi	sp,sp,80
   10964:	00008067          	ret

0000000000010968 <__sread>:
   10968:	ff010113          	addi	sp,sp,-16
   1096c:	00813023          	sd	s0,0(sp)
   10970:	00058413          	mv	s0,a1
   10974:	01259583          	lh	a1,18(a1)
   10978:	00113423          	sd	ra,8(sp)
   1097c:	2ec000ef          	jal	10c68 <_read_r>
   10980:	02054063          	bltz	a0,109a0 <__sread+0x38>
   10984:	09043783          	ld	a5,144(s0)
   10988:	00813083          	ld	ra,8(sp)
   1098c:	00a787b3          	add	a5,a5,a0
   10990:	08f43823          	sd	a5,144(s0)
   10994:	00013403          	ld	s0,0(sp)
   10998:	01010113          	addi	sp,sp,16
   1099c:	00008067          	ret
   109a0:	01045783          	lhu	a5,16(s0)
   109a4:	fffff737          	lui	a4,0xfffff
   109a8:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   109ac:	00e7f7b3          	and	a5,a5,a4
   109b0:	00813083          	ld	ra,8(sp)
   109b4:	00f41823          	sh	a5,16(s0)
   109b8:	00013403          	ld	s0,0(sp)
   109bc:	01010113          	addi	sp,sp,16
   109c0:	00008067          	ret

00000000000109c4 <__seofread>:
   109c4:	00000513          	li	a0,0
   109c8:	00008067          	ret

00000000000109cc <__swrite>:
   109cc:	01059783          	lh	a5,16(a1)
   109d0:	fd010113          	addi	sp,sp,-48
   109d4:	00068313          	mv	t1,a3
   109d8:	02113423          	sd	ra,40(sp)
   109dc:	1007f693          	andi	a3,a5,256
   109e0:	00058713          	mv	a4,a1
   109e4:	00060893          	mv	a7,a2
   109e8:	00050813          	mv	a6,a0
   109ec:	02069863          	bnez	a3,10a1c <__swrite+0x50>
   109f0:	fffff6b7          	lui	a3,0xfffff
   109f4:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   109f8:	02813083          	ld	ra,40(sp)
   109fc:	00d7f7b3          	and	a5,a5,a3
   10a00:	01271583          	lh	a1,18(a4)
   10a04:	00f71823          	sh	a5,16(a4)
   10a08:	00030693          	mv	a3,t1
   10a0c:	00088613          	mv	a2,a7
   10a10:	00080513          	mv	a0,a6
   10a14:	03010113          	addi	sp,sp,48
   10a18:	2b80006f          	j	10cd0 <_write_r>
   10a1c:	01259583          	lh	a1,18(a1)
   10a20:	00c13823          	sd	a2,16(sp)
   10a24:	00200693          	li	a3,2
   10a28:	00000613          	li	a2,0
   10a2c:	00613c23          	sd	t1,24(sp)
   10a30:	00e13023          	sd	a4,0(sp)
   10a34:	00a13423          	sd	a0,8(sp)
   10a38:	1c8000ef          	jal	10c00 <_lseek_r>
   10a3c:	00013703          	ld	a4,0(sp)
   10a40:	01813303          	ld	t1,24(sp)
   10a44:	01013883          	ld	a7,16(sp)
   10a48:	01071783          	lh	a5,16(a4)
   10a4c:	00813803          	ld	a6,8(sp)
   10a50:	fa1ff06f          	j	109f0 <__swrite+0x24>

0000000000010a54 <__sseek>:
   10a54:	ff010113          	addi	sp,sp,-16
   10a58:	00813023          	sd	s0,0(sp)
   10a5c:	00058413          	mv	s0,a1
   10a60:	01259583          	lh	a1,18(a1)
   10a64:	00113423          	sd	ra,8(sp)
   10a68:	198000ef          	jal	10c00 <_lseek_r>
   10a6c:	fff00713          	li	a4,-1
   10a70:	01041783          	lh	a5,16(s0)
   10a74:	02e50263          	beq	a0,a4,10a98 <__sseek+0x44>
   10a78:	00001737          	lui	a4,0x1
   10a7c:	00e7e7b3          	or	a5,a5,a4
   10a80:	00813083          	ld	ra,8(sp)
   10a84:	08a43823          	sd	a0,144(s0)
   10a88:	00f41823          	sh	a5,16(s0)
   10a8c:	00013403          	ld	s0,0(sp)
   10a90:	01010113          	addi	sp,sp,16
   10a94:	00008067          	ret
   10a98:	80050713          	addi	a4,a0,-2048
   10a9c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10aa0:	00e7f7b3          	and	a5,a5,a4
   10aa4:	00813083          	ld	ra,8(sp)
   10aa8:	00f41823          	sh	a5,16(s0)
   10aac:	00013403          	ld	s0,0(sp)
   10ab0:	01010113          	addi	sp,sp,16
   10ab4:	00008067          	ret

0000000000010ab8 <__sclose>:
   10ab8:	01259583          	lh	a1,18(a1)
   10abc:	0040006f          	j	10ac0 <_close_r>

0000000000010ac0 <_close_r>:
   10ac0:	fe010113          	addi	sp,sp,-32
   10ac4:	00813823          	sd	s0,16(sp)
   10ac8:	00913423          	sd	s1,8(sp)
   10acc:	00050493          	mv	s1,a0
   10ad0:	00058513          	mv	a0,a1
   10ad4:	00113c23          	sd	ra,24(sp)
   10ad8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10adc:	7e4010ef          	jal	122c0 <_close>
   10ae0:	fff00793          	li	a5,-1
   10ae4:	00f50c63          	beq	a0,a5,10afc <_close_r+0x3c>
   10ae8:	01813083          	ld	ra,24(sp)
   10aec:	01013403          	ld	s0,16(sp)
   10af0:	00813483          	ld	s1,8(sp)
   10af4:	02010113          	addi	sp,sp,32
   10af8:	00008067          	ret
   10afc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b00:	fe0784e3          	beqz	a5,10ae8 <_close_r+0x28>
   10b04:	01813083          	ld	ra,24(sp)
   10b08:	01013403          	ld	s0,16(sp)
   10b0c:	00f4a023          	sw	a5,0(s1)
   10b10:	00813483          	ld	s1,8(sp)
   10b14:	02010113          	addi	sp,sp,32
   10b18:	00008067          	ret

0000000000010b1c <_reclaim_reent>:
   10b1c:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10b20:	0ca78e63          	beq	a5,a0,10bfc <_reclaim_reent+0xe0>
   10b24:	06853583          	ld	a1,104(a0)
   10b28:	fd010113          	addi	sp,sp,-48
   10b2c:	00913c23          	sd	s1,24(sp)
   10b30:	02113423          	sd	ra,40(sp)
   10b34:	02813023          	sd	s0,32(sp)
   10b38:	00050493          	mv	s1,a0
   10b3c:	04058863          	beqz	a1,10b8c <_reclaim_reent+0x70>
   10b40:	01213823          	sd	s2,16(sp)
   10b44:	01313423          	sd	s3,8(sp)
   10b48:	00000913          	li	s2,0
   10b4c:	20000993          	li	s3,512
   10b50:	012587b3          	add	a5,a1,s2
   10b54:	0007b403          	ld	s0,0(a5)
   10b58:	00040e63          	beqz	s0,10b74 <_reclaim_reent+0x58>
   10b5c:	00040593          	mv	a1,s0
   10b60:	00043403          	ld	s0,0(s0)
   10b64:	00048513          	mv	a0,s1
   10b68:	5b0000ef          	jal	11118 <_free_r>
   10b6c:	fe0418e3          	bnez	s0,10b5c <_reclaim_reent+0x40>
   10b70:	0684b583          	ld	a1,104(s1)
   10b74:	00890913          	addi	s2,s2,8
   10b78:	fd391ce3          	bne	s2,s3,10b50 <_reclaim_reent+0x34>
   10b7c:	00048513          	mv	a0,s1
   10b80:	598000ef          	jal	11118 <_free_r>
   10b84:	01013903          	ld	s2,16(sp)
   10b88:	00813983          	ld	s3,8(sp)
   10b8c:	0504b583          	ld	a1,80(s1)
   10b90:	00058663          	beqz	a1,10b9c <_reclaim_reent+0x80>
   10b94:	00048513          	mv	a0,s1
   10b98:	580000ef          	jal	11118 <_free_r>
   10b9c:	0604b403          	ld	s0,96(s1)
   10ba0:	00040c63          	beqz	s0,10bb8 <_reclaim_reent+0x9c>
   10ba4:	00040593          	mv	a1,s0
   10ba8:	00043403          	ld	s0,0(s0)
   10bac:	00048513          	mv	a0,s1
   10bb0:	568000ef          	jal	11118 <_free_r>
   10bb4:	fe0418e3          	bnez	s0,10ba4 <_reclaim_reent+0x88>
   10bb8:	0784b583          	ld	a1,120(s1)
   10bbc:	00058663          	beqz	a1,10bc8 <_reclaim_reent+0xac>
   10bc0:	00048513          	mv	a0,s1
   10bc4:	554000ef          	jal	11118 <_free_r>
   10bc8:	0484b783          	ld	a5,72(s1)
   10bcc:	00078e63          	beqz	a5,10be8 <_reclaim_reent+0xcc>
   10bd0:	02013403          	ld	s0,32(sp)
   10bd4:	02813083          	ld	ra,40(sp)
   10bd8:	00048513          	mv	a0,s1
   10bdc:	01813483          	ld	s1,24(sp)
   10be0:	03010113          	addi	sp,sp,48
   10be4:	00078067          	jr	a5
   10be8:	02813083          	ld	ra,40(sp)
   10bec:	02013403          	ld	s0,32(sp)
   10bf0:	01813483          	ld	s1,24(sp)
   10bf4:	03010113          	addi	sp,sp,48
   10bf8:	00008067          	ret
   10bfc:	00008067          	ret

0000000000010c00 <_lseek_r>:
   10c00:	fe010113          	addi	sp,sp,-32
   10c04:	00058793          	mv	a5,a1
   10c08:	00813823          	sd	s0,16(sp)
   10c0c:	00913423          	sd	s1,8(sp)
   10c10:	00060593          	mv	a1,a2
   10c14:	00050493          	mv	s1,a0
   10c18:	00068613          	mv	a2,a3
   10c1c:	00078513          	mv	a0,a5
   10c20:	00113c23          	sd	ra,24(sp)
   10c24:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c28:	708010ef          	jal	12330 <_lseek>
   10c2c:	fff00793          	li	a5,-1
   10c30:	00f50c63          	beq	a0,a5,10c48 <_lseek_r+0x48>
   10c34:	01813083          	ld	ra,24(sp)
   10c38:	01013403          	ld	s0,16(sp)
   10c3c:	00813483          	ld	s1,8(sp)
   10c40:	02010113          	addi	sp,sp,32
   10c44:	00008067          	ret
   10c48:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c4c:	fe0784e3          	beqz	a5,10c34 <_lseek_r+0x34>
   10c50:	01813083          	ld	ra,24(sp)
   10c54:	01013403          	ld	s0,16(sp)
   10c58:	00f4a023          	sw	a5,0(s1)
   10c5c:	00813483          	ld	s1,8(sp)
   10c60:	02010113          	addi	sp,sp,32
   10c64:	00008067          	ret

0000000000010c68 <_read_r>:
   10c68:	fe010113          	addi	sp,sp,-32
   10c6c:	00058793          	mv	a5,a1
   10c70:	00813823          	sd	s0,16(sp)
   10c74:	00913423          	sd	s1,8(sp)
   10c78:	00060593          	mv	a1,a2
   10c7c:	00050493          	mv	s1,a0
   10c80:	00068613          	mv	a2,a3
   10c84:	00078513          	mv	a0,a5
   10c88:	00113c23          	sd	ra,24(sp)
   10c8c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c90:	6e0010ef          	jal	12370 <_read>
   10c94:	fff00793          	li	a5,-1
   10c98:	00f50c63          	beq	a0,a5,10cb0 <_read_r+0x48>
   10c9c:	01813083          	ld	ra,24(sp)
   10ca0:	01013403          	ld	s0,16(sp)
   10ca4:	00813483          	ld	s1,8(sp)
   10ca8:	02010113          	addi	sp,sp,32
   10cac:	00008067          	ret
   10cb0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10cb4:	fe0784e3          	beqz	a5,10c9c <_read_r+0x34>
   10cb8:	01813083          	ld	ra,24(sp)
   10cbc:	01013403          	ld	s0,16(sp)
   10cc0:	00f4a023          	sw	a5,0(s1)
   10cc4:	00813483          	ld	s1,8(sp)
   10cc8:	02010113          	addi	sp,sp,32
   10ccc:	00008067          	ret

0000000000010cd0 <_write_r>:
   10cd0:	fe010113          	addi	sp,sp,-32
   10cd4:	00058793          	mv	a5,a1
   10cd8:	00813823          	sd	s0,16(sp)
   10cdc:	00913423          	sd	s1,8(sp)
   10ce0:	00060593          	mv	a1,a2
   10ce4:	00050493          	mv	s1,a0
   10ce8:	00068613          	mv	a2,a3
   10cec:	00078513          	mv	a0,a5
   10cf0:	00113c23          	sd	ra,24(sp)
   10cf4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10cf8:	730010ef          	jal	12428 <_write>
   10cfc:	fff00793          	li	a5,-1
   10d00:	00f50c63          	beq	a0,a5,10d18 <_write_r+0x48>
   10d04:	01813083          	ld	ra,24(sp)
   10d08:	01013403          	ld	s0,16(sp)
   10d0c:	00813483          	ld	s1,8(sp)
   10d10:	02010113          	addi	sp,sp,32
   10d14:	00008067          	ret
   10d18:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d1c:	fe0784e3          	beqz	a5,10d04 <_write_r+0x34>
   10d20:	01813083          	ld	ra,24(sp)
   10d24:	01013403          	ld	s0,16(sp)
   10d28:	00f4a023          	sw	a5,0(s1)
   10d2c:	00813483          	ld	s1,8(sp)
   10d30:	02010113          	addi	sp,sp,32
   10d34:	00008067          	ret

0000000000010d38 <__libc_init_array>:
   10d38:	fe010113          	addi	sp,sp,-32
   10d3c:	00813823          	sd	s0,16(sp)
   10d40:	01213023          	sd	s2,0(sp)
   10d44:	00013437          	lui	s0,0x13
   10d48:	00013937          	lui	s2,0x13
   10d4c:	00113c23          	sd	ra,24(sp)
   10d50:	00913423          	sd	s1,8(sp)
   10d54:	00090913          	mv	s2,s2
   10d58:	00040413          	mv	s0,s0
   10d5c:	02890263          	beq	s2,s0,10d80 <__libc_init_array+0x48>
   10d60:	40890933          	sub	s2,s2,s0
   10d64:	40395913          	srai	s2,s2,0x3
   10d68:	00000493          	li	s1,0
   10d6c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10d70:	00148493          	addi	s1,s1,1
   10d74:	00840413          	addi	s0,s0,8
   10d78:	000780e7          	jalr	a5
   10d7c:	ff24e8e3          	bltu	s1,s2,10d6c <__libc_init_array+0x34>
   10d80:	00013937          	lui	s2,0x13
   10d84:	00013437          	lui	s0,0x13
   10d88:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10d8c:	00040413          	mv	s0,s0
   10d90:	02890263          	beq	s2,s0,10db4 <__libc_init_array+0x7c>
   10d94:	40890933          	sub	s2,s2,s0
   10d98:	40395913          	srai	s2,s2,0x3
   10d9c:	00000493          	li	s1,0
   10da0:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10da4:	00148493          	addi	s1,s1,1
   10da8:	00840413          	addi	s0,s0,8
   10dac:	000780e7          	jalr	a5
   10db0:	ff24e8e3          	bltu	s1,s2,10da0 <__libc_init_array+0x68>
   10db4:	01813083          	ld	ra,24(sp)
   10db8:	01013403          	ld	s0,16(sp)
   10dbc:	00813483          	ld	s1,8(sp)
   10dc0:	00013903          	ld	s2,0(sp)
   10dc4:	02010113          	addi	sp,sp,32
   10dc8:	00008067          	ret

0000000000010dcc <memset>:
   10dcc:	00f00313          	li	t1,15
   10dd0:	00050713          	mv	a4,a0
   10dd4:	02c37a63          	bgeu	t1,a2,10e08 <memset+0x3c>
   10dd8:	00f77793          	andi	a5,a4,15
   10ddc:	0a079063          	bnez	a5,10e7c <memset+0xb0>
   10de0:	06059e63          	bnez	a1,10e5c <memset+0x90>
   10de4:	ff067693          	andi	a3,a2,-16
   10de8:	00f67613          	andi	a2,a2,15
   10dec:	00e686b3          	add	a3,a3,a4
   10df0:	00b73023          	sd	a1,0(a4)
   10df4:	00b73423          	sd	a1,8(a4)
   10df8:	01070713          	addi	a4,a4,16
   10dfc:	fed76ae3          	bltu	a4,a3,10df0 <memset+0x24>
   10e00:	00061463          	bnez	a2,10e08 <memset+0x3c>
   10e04:	00008067          	ret
   10e08:	40c306b3          	sub	a3,t1,a2
   10e0c:	00269693          	slli	a3,a3,0x2
   10e10:	00000297          	auipc	t0,0x0
   10e14:	005686b3          	add	a3,a3,t0
   10e18:	00c68067          	jr	12(a3)
   10e1c:	00b70723          	sb	a1,14(a4)
   10e20:	00b706a3          	sb	a1,13(a4)
   10e24:	00b70623          	sb	a1,12(a4)
   10e28:	00b705a3          	sb	a1,11(a4)
   10e2c:	00b70523          	sb	a1,10(a4)
   10e30:	00b704a3          	sb	a1,9(a4)
   10e34:	00b70423          	sb	a1,8(a4)
   10e38:	00b703a3          	sb	a1,7(a4)
   10e3c:	00b70323          	sb	a1,6(a4)
   10e40:	00b702a3          	sb	a1,5(a4)
   10e44:	00b70223          	sb	a1,4(a4)
   10e48:	00b701a3          	sb	a1,3(a4)
   10e4c:	00b70123          	sb	a1,2(a4)
   10e50:	00b700a3          	sb	a1,1(a4)
   10e54:	00b70023          	sb	a1,0(a4)
   10e58:	00008067          	ret
   10e5c:	0ff5f593          	zext.b	a1,a1
   10e60:	00859693          	slli	a3,a1,0x8
   10e64:	00d5e5b3          	or	a1,a1,a3
   10e68:	01059693          	slli	a3,a1,0x10
   10e6c:	00d5e5b3          	or	a1,a1,a3
   10e70:	02059693          	slli	a3,a1,0x20
   10e74:	00d5e5b3          	or	a1,a1,a3
   10e78:	f6dff06f          	j	10de4 <memset+0x18>
   10e7c:	00279693          	slli	a3,a5,0x2
   10e80:	00000297          	auipc	t0,0x0
   10e84:	005686b3          	add	a3,a3,t0
   10e88:	00008293          	mv	t0,ra
   10e8c:	f98680e7          	jalr	-104(a3)
   10e90:	00028093          	mv	ra,t0
   10e94:	ff078793          	addi	a5,a5,-16
   10e98:	40f70733          	sub	a4,a4,a5
   10e9c:	00f60633          	add	a2,a2,a5
   10ea0:	f6c374e3          	bgeu	t1,a2,10e08 <memset+0x3c>
   10ea4:	f3dff06f          	j	10de0 <memset+0x14>

0000000000010ea8 <__call_exitprocs>:
   10ea8:	fb010113          	addi	sp,sp,-80
   10eac:	03413023          	sd	s4,32(sp)
   10eb0:	03213823          	sd	s2,48(sp)
   10eb4:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10eb8:	04113423          	sd	ra,72(sp)
   10ebc:	06090e63          	beqz	s2,10f38 <__call_exitprocs+0x90>
   10ec0:	03313423          	sd	s3,40(sp)
   10ec4:	01513c23          	sd	s5,24(sp)
   10ec8:	01613823          	sd	s6,16(sp)
   10ecc:	01713423          	sd	s7,8(sp)
   10ed0:	04813023          	sd	s0,64(sp)
   10ed4:	02913c23          	sd	s1,56(sp)
   10ed8:	01813023          	sd	s8,0(sp)
   10edc:	00050b13          	mv	s6,a0
   10ee0:	00058b93          	mv	s7,a1
   10ee4:	fff00993          	li	s3,-1
   10ee8:	00100a93          	li	s5,1
   10eec:	00892403          	lw	s0,8(s2)
   10ef0:	fff4041b          	addiw	s0,s0,-1
   10ef4:	02044463          	bltz	s0,10f1c <__call_exitprocs+0x74>
   10ef8:	01090493          	addi	s1,s2,16
   10efc:	00341793          	slli	a5,s0,0x3
   10f00:	00f484b3          	add	s1,s1,a5
   10f04:	040b8463          	beqz	s7,10f4c <__call_exitprocs+0xa4>
   10f08:	2004b783          	ld	a5,512(s1)
   10f0c:	05778063          	beq	a5,s7,10f4c <__call_exitprocs+0xa4>
   10f10:	fff4041b          	addiw	s0,s0,-1
   10f14:	ff848493          	addi	s1,s1,-8
   10f18:	ff3418e3          	bne	s0,s3,10f08 <__call_exitprocs+0x60>
   10f1c:	04013403          	ld	s0,64(sp)
   10f20:	03813483          	ld	s1,56(sp)
   10f24:	02813983          	ld	s3,40(sp)
   10f28:	01813a83          	ld	s5,24(sp)
   10f2c:	01013b03          	ld	s6,16(sp)
   10f30:	00813b83          	ld	s7,8(sp)
   10f34:	00013c03          	ld	s8,0(sp)
   10f38:	04813083          	ld	ra,72(sp)
   10f3c:	03013903          	ld	s2,48(sp)
   10f40:	02013a03          	ld	s4,32(sp)
   10f44:	05010113          	addi	sp,sp,80
   10f48:	00008067          	ret
   10f4c:	00892783          	lw	a5,8(s2)
   10f50:	0004b683          	ld	a3,0(s1)
   10f54:	fff7879b          	addiw	a5,a5,-1
   10f58:	06878a63          	beq	a5,s0,10fcc <__call_exitprocs+0x124>
   10f5c:	0004b023          	sd	zero,0(s1)
   10f60:	02068663          	beqz	a3,10f8c <__call_exitprocs+0xe4>
   10f64:	31092783          	lw	a5,784(s2)
   10f68:	008a973b          	sllw	a4,s5,s0
   10f6c:	00892c03          	lw	s8,8(s2)
   10f70:	00e7f7b3          	and	a5,a5,a4
   10f74:	02079463          	bnez	a5,10f9c <__call_exitprocs+0xf4>
   10f78:	000680e7          	jalr	a3
   10f7c:	00892703          	lw	a4,8(s2)
   10f80:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10f84:	03871e63          	bne	a4,s8,10fc0 <__call_exitprocs+0x118>
   10f88:	03279c63          	bne	a5,s2,10fc0 <__call_exitprocs+0x118>
   10f8c:	fff4041b          	addiw	s0,s0,-1
   10f90:	ff848493          	addi	s1,s1,-8
   10f94:	f73418e3          	bne	s0,s3,10f04 <__call_exitprocs+0x5c>
   10f98:	f85ff06f          	j	10f1c <__call_exitprocs+0x74>
   10f9c:	31492783          	lw	a5,788(s2)
   10fa0:	1004b583          	ld	a1,256(s1)
   10fa4:	00f77733          	and	a4,a4,a5
   10fa8:	02071663          	bnez	a4,10fd4 <__call_exitprocs+0x12c>
   10fac:	000b0513          	mv	a0,s6
   10fb0:	000680e7          	jalr	a3
   10fb4:	00892703          	lw	a4,8(s2)
   10fb8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10fbc:	fd8706e3          	beq	a4,s8,10f88 <__call_exitprocs+0xe0>
   10fc0:	f4078ee3          	beqz	a5,10f1c <__call_exitprocs+0x74>
   10fc4:	00078913          	mv	s2,a5
   10fc8:	f25ff06f          	j	10eec <__call_exitprocs+0x44>
   10fcc:	00892423          	sw	s0,8(s2)
   10fd0:	f91ff06f          	j	10f60 <__call_exitprocs+0xb8>
   10fd4:	00058513          	mv	a0,a1
   10fd8:	000680e7          	jalr	a3
   10fdc:	fa1ff06f          	j	10f7c <__call_exitprocs+0xd4>

0000000000010fe0 <atexit>:
   10fe0:	00050593          	mv	a1,a0
   10fe4:	00000693          	li	a3,0
   10fe8:	00000613          	li	a2,0
   10fec:	00000513          	li	a0,0
   10ff0:	2340106f          	j	12224 <__register_exitproc>

0000000000010ff4 <_malloc_trim_r>:
   10ff4:	fd010113          	addi	sp,sp,-48
   10ff8:	01213823          	sd	s2,16(sp)
   10ffc:	00013937          	lui	s2,0x13
   11000:	02813023          	sd	s0,32(sp)
   11004:	00913c23          	sd	s1,24(sp)
   11008:	01313423          	sd	s3,8(sp)
   1100c:	00058413          	mv	s0,a1
   11010:	02113423          	sd	ra,40(sp)
   11014:	00050993          	mv	s3,a0
   11018:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   1101c:	4e5000ef          	jal	11d00 <__malloc_lock>
   11020:	01093783          	ld	a5,16(s2)
   11024:	00001737          	lui	a4,0x1
   11028:	0087b483          	ld	s1,8(a5)
   1102c:	ffc4f493          	andi	s1,s1,-4
   11030:	7ff48793          	addi	a5,s1,2047
   11034:	7e078793          	addi	a5,a5,2016
   11038:	40878433          	sub	s0,a5,s0
   1103c:	00c45413          	srli	s0,s0,0xc
   11040:	fff40413          	addi	s0,s0,-1
   11044:	00c41413          	slli	s0,s0,0xc
   11048:	00e44e63          	blt	s0,a4,11064 <_malloc_trim_r+0x70>
   1104c:	00000593          	li	a1,0
   11050:	00098513          	mv	a0,s3
   11054:	118010ef          	jal	1216c <_sbrk_r>
   11058:	01093783          	ld	a5,16(s2)
   1105c:	009787b3          	add	a5,a5,s1
   11060:	02f50663          	beq	a0,a5,1108c <_malloc_trim_r+0x98>
   11064:	00098513          	mv	a0,s3
   11068:	49d000ef          	jal	11d04 <__malloc_unlock>
   1106c:	02813083          	ld	ra,40(sp)
   11070:	02013403          	ld	s0,32(sp)
   11074:	01813483          	ld	s1,24(sp)
   11078:	01013903          	ld	s2,16(sp)
   1107c:	00813983          	ld	s3,8(sp)
   11080:	00000513          	li	a0,0
   11084:	03010113          	addi	sp,sp,48
   11088:	00008067          	ret
   1108c:	408005b3          	neg	a1,s0
   11090:	00098513          	mv	a0,s3
   11094:	0d8010ef          	jal	1216c <_sbrk_r>
   11098:	fff00793          	li	a5,-1
   1109c:	04f50463          	beq	a0,a5,110e4 <_malloc_trim_r+0xf0>
   110a0:	01093683          	ld	a3,16(s2)
   110a4:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   110a8:	408484b3          	sub	s1,s1,s0
   110ac:	0014e493          	ori	s1,s1,1
   110b0:	00098513          	mv	a0,s3
   110b4:	408787bb          	subw	a5,a5,s0
   110b8:	0096b423          	sd	s1,8(a3)
   110bc:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   110c0:	445000ef          	jal	11d04 <__malloc_unlock>
   110c4:	02813083          	ld	ra,40(sp)
   110c8:	02013403          	ld	s0,32(sp)
   110cc:	01813483          	ld	s1,24(sp)
   110d0:	01013903          	ld	s2,16(sp)
   110d4:	00813983          	ld	s3,8(sp)
   110d8:	00100513          	li	a0,1
   110dc:	03010113          	addi	sp,sp,48
   110e0:	00008067          	ret
   110e4:	00000593          	li	a1,0
   110e8:	00098513          	mv	a0,s3
   110ec:	080010ef          	jal	1216c <_sbrk_r>
   110f0:	01093703          	ld	a4,16(s2)
   110f4:	01f00693          	li	a3,31
   110f8:	40e507b3          	sub	a5,a0,a4
   110fc:	f6f6d4e3          	bge	a3,a5,11064 <_malloc_trim_r+0x70>
   11100:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11104:	0017e793          	ori	a5,a5,1
   11108:	40c50533          	sub	a0,a0,a2
   1110c:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11110:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11114:	f51ff06f          	j	11064 <_malloc_trim_r+0x70>

0000000000011118 <_free_r>:
   11118:	12058863          	beqz	a1,11248 <_free_r+0x130>
   1111c:	fe010113          	addi	sp,sp,-32
   11120:	00813823          	sd	s0,16(sp)
   11124:	00b13423          	sd	a1,8(sp)
   11128:	00050413          	mv	s0,a0
   1112c:	00113c23          	sd	ra,24(sp)
   11130:	3d1000ef          	jal	11d00 <__malloc_lock>
   11134:	00813583          	ld	a1,8(sp)
   11138:	00013837          	lui	a6,0x13
   1113c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11140:	ff85b503          	ld	a0,-8(a1)
   11144:	ff058713          	addi	a4,a1,-16
   11148:	01083883          	ld	a7,16(a6)
   1114c:	ffe57793          	andi	a5,a0,-2
   11150:	00f70633          	add	a2,a4,a5
   11154:	00863683          	ld	a3,8(a2)
   11158:	00157313          	andi	t1,a0,1
   1115c:	ffc6f693          	andi	a3,a3,-4
   11160:	18c88e63          	beq	a7,a2,112fc <_free_r+0x1e4>
   11164:	00d63423          	sd	a3,8(a2)
   11168:	00d608b3          	add	a7,a2,a3
   1116c:	0088b883          	ld	a7,8(a7)
   11170:	0018f893          	andi	a7,a7,1
   11174:	08031e63          	bnez	t1,11210 <_free_r+0xf8>
   11178:	ff05b303          	ld	t1,-16(a1)
   1117c:	000135b7          	lui	a1,0x13
   11180:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11184:	40670733          	sub	a4,a4,t1
   11188:	01073503          	ld	a0,16(a4)
   1118c:	006787b3          	add	a5,a5,t1
   11190:	14b50063          	beq	a0,a1,112d0 <_free_r+0x1b8>
   11194:	01873303          	ld	t1,24(a4)
   11198:	00653c23          	sd	t1,24(a0)
   1119c:	00a33823          	sd	a0,16(t1) # 10220 <ackermann+0x4>
   111a0:	1a088263          	beqz	a7,11344 <_free_r+0x22c>
   111a4:	0017e693          	ori	a3,a5,1
   111a8:	00d73423          	sd	a3,8(a4)
   111ac:	00f63023          	sd	a5,0(a2)
   111b0:	1ff00693          	li	a3,511
   111b4:	0af6e663          	bltu	a3,a5,11260 <_free_r+0x148>
   111b8:	0037d793          	srli	a5,a5,0x3
   111bc:	00179693          	slli	a3,a5,0x1
   111c0:	0026869b          	addiw	a3,a3,2
   111c4:	00369693          	slli	a3,a3,0x3
   111c8:	00883503          	ld	a0,8(a6)
   111cc:	00d806b3          	add	a3,a6,a3
   111d0:	0006b583          	ld	a1,0(a3)
   111d4:	4027d61b          	sraiw	a2,a5,0x2
   111d8:	00100793          	li	a5,1
   111dc:	00c797b3          	sll	a5,a5,a2
   111e0:	00a7e7b3          	or	a5,a5,a0
   111e4:	ff068613          	addi	a2,a3,-16
   111e8:	00b73823          	sd	a1,16(a4)
   111ec:	00c73c23          	sd	a2,24(a4)
   111f0:	00f83423          	sd	a5,8(a6)
   111f4:	00e6b023          	sd	a4,0(a3)
   111f8:	00e5bc23          	sd	a4,24(a1)
   111fc:	00040513          	mv	a0,s0
   11200:	01013403          	ld	s0,16(sp)
   11204:	01813083          	ld	ra,24(sp)
   11208:	02010113          	addi	sp,sp,32
   1120c:	2f90006f          	j	11d04 <__malloc_unlock>
   11210:	02089e63          	bnez	a7,1124c <_free_r+0x134>
   11214:	000135b7          	lui	a1,0x13
   11218:	00d787b3          	add	a5,a5,a3
   1121c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11220:	01063683          	ld	a3,16(a2)
   11224:	0017e893          	ori	a7,a5,1
   11228:	00f70533          	add	a0,a4,a5
   1122c:	16b68663          	beq	a3,a1,11398 <_free_r+0x280>
   11230:	01863603          	ld	a2,24(a2)
   11234:	00c6bc23          	sd	a2,24(a3)
   11238:	00d63823          	sd	a3,16(a2)
   1123c:	01173423          	sd	a7,8(a4)
   11240:	00f53023          	sd	a5,0(a0)
   11244:	f6dff06f          	j	111b0 <_free_r+0x98>
   11248:	00008067          	ret
   1124c:	00156513          	ori	a0,a0,1
   11250:	fea5bc23          	sd	a0,-8(a1)
   11254:	00f63023          	sd	a5,0(a2)
   11258:	1ff00693          	li	a3,511
   1125c:	f4f6fee3          	bgeu	a3,a5,111b8 <_free_r+0xa0>
   11260:	0097d693          	srli	a3,a5,0x9
   11264:	00400613          	li	a2,4
   11268:	0ed66263          	bltu	a2,a3,1134c <_free_r+0x234>
   1126c:	0067d693          	srli	a3,a5,0x6
   11270:	00169593          	slli	a1,a3,0x1
   11274:	0725859b          	addiw	a1,a1,114
   11278:	00359593          	slli	a1,a1,0x3
   1127c:	0386861b          	addiw	a2,a3,56
   11280:	00b805b3          	add	a1,a6,a1
   11284:	0005b683          	ld	a3,0(a1)
   11288:	ff058593          	addi	a1,a1,-16
   1128c:	00d59863          	bne	a1,a3,1129c <_free_r+0x184>
   11290:	1240006f          	j	113b4 <_free_r+0x29c>
   11294:	0106b683          	ld	a3,16(a3)
   11298:	00d58863          	beq	a1,a3,112a8 <_free_r+0x190>
   1129c:	0086b603          	ld	a2,8(a3)
   112a0:	ffc67613          	andi	a2,a2,-4
   112a4:	fec7e8e3          	bltu	a5,a2,11294 <_free_r+0x17c>
   112a8:	0186b583          	ld	a1,24(a3)
   112ac:	00b73c23          	sd	a1,24(a4)
   112b0:	00d73823          	sd	a3,16(a4)
   112b4:	00040513          	mv	a0,s0
   112b8:	01013403          	ld	s0,16(sp)
   112bc:	01813083          	ld	ra,24(sp)
   112c0:	00e5b823          	sd	a4,16(a1)
   112c4:	00e6bc23          	sd	a4,24(a3)
   112c8:	02010113          	addi	sp,sp,32
   112cc:	2390006f          	j	11d04 <__malloc_unlock>
   112d0:	0a089263          	bnez	a7,11374 <_free_r+0x25c>
   112d4:	01863583          	ld	a1,24(a2)
   112d8:	01063603          	ld	a2,16(a2)
   112dc:	00f686b3          	add	a3,a3,a5
   112e0:	0016e793          	ori	a5,a3,1
   112e4:	00b63c23          	sd	a1,24(a2)
   112e8:	00c5b823          	sd	a2,16(a1)
   112ec:	00f73423          	sd	a5,8(a4)
   112f0:	00d70733          	add	a4,a4,a3
   112f4:	00d73023          	sd	a3,0(a4)
   112f8:	f05ff06f          	j	111fc <_free_r+0xe4>
   112fc:	00d786b3          	add	a3,a5,a3
   11300:	02031063          	bnez	t1,11320 <_free_r+0x208>
   11304:	ff05b783          	ld	a5,-16(a1)
   11308:	40f70733          	sub	a4,a4,a5
   1130c:	01073603          	ld	a2,16(a4)
   11310:	00f686b3          	add	a3,a3,a5
   11314:	01873783          	ld	a5,24(a4)
   11318:	00f63c23          	sd	a5,24(a2)
   1131c:	00c7b823          	sd	a2,16(a5)
   11320:	0016e613          	ori	a2,a3,1
   11324:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11328:	00c73423          	sd	a2,8(a4)
   1132c:	00e83823          	sd	a4,16(a6)
   11330:	ecf6e6e3          	bltu	a3,a5,111fc <_free_r+0xe4>
   11334:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11338:	00040513          	mv	a0,s0
   1133c:	cb9ff0ef          	jal	10ff4 <_malloc_trim_r>
   11340:	ebdff06f          	j	111fc <_free_r+0xe4>
   11344:	00d787b3          	add	a5,a5,a3
   11348:	ed9ff06f          	j	11220 <_free_r+0x108>
   1134c:	01400613          	li	a2,20
   11350:	02d67a63          	bgeu	a2,a3,11384 <_free_r+0x26c>
   11354:	05400613          	li	a2,84
   11358:	06d66c63          	bltu	a2,a3,113d0 <_free_r+0x2b8>
   1135c:	00c7d693          	srli	a3,a5,0xc
   11360:	00169593          	slli	a1,a3,0x1
   11364:	0de5859b          	addiw	a1,a1,222
   11368:	00359593          	slli	a1,a1,0x3
   1136c:	06e6861b          	addiw	a2,a3,110
   11370:	f11ff06f          	j	11280 <_free_r+0x168>
   11374:	0017e693          	ori	a3,a5,1
   11378:	00d73423          	sd	a3,8(a4)
   1137c:	00f63023          	sd	a5,0(a2)
   11380:	e7dff06f          	j	111fc <_free_r+0xe4>
   11384:	00169593          	slli	a1,a3,0x1
   11388:	0b85859b          	addiw	a1,a1,184
   1138c:	00359593          	slli	a1,a1,0x3
   11390:	05b6861b          	addiw	a2,a3,91
   11394:	eedff06f          	j	11280 <_free_r+0x168>
   11398:	02e83423          	sd	a4,40(a6)
   1139c:	02e83023          	sd	a4,32(a6)
   113a0:	00b73c23          	sd	a1,24(a4)
   113a4:	00b73823          	sd	a1,16(a4)
   113a8:	01173423          	sd	a7,8(a4)
   113ac:	00f53023          	sd	a5,0(a0)
   113b0:	e4dff06f          	j	111fc <_free_r+0xe4>
   113b4:	00883503          	ld	a0,8(a6)
   113b8:	4026561b          	sraiw	a2,a2,0x2
   113bc:	00100793          	li	a5,1
   113c0:	00c797b3          	sll	a5,a5,a2
   113c4:	00a7e7b3          	or	a5,a5,a0
   113c8:	00f83423          	sd	a5,8(a6)
   113cc:	ee1ff06f          	j	112ac <_free_r+0x194>
   113d0:	15400613          	li	a2,340
   113d4:	00d66e63          	bltu	a2,a3,113f0 <_free_r+0x2d8>
   113d8:	00f7d693          	srli	a3,a5,0xf
   113dc:	00169593          	slli	a1,a3,0x1
   113e0:	0f05859b          	addiw	a1,a1,240
   113e4:	00359593          	slli	a1,a1,0x3
   113e8:	0776861b          	addiw	a2,a3,119
   113ec:	e95ff06f          	j	11280 <_free_r+0x168>
   113f0:	55400613          	li	a2,1364
   113f4:	00d66e63          	bltu	a2,a3,11410 <_free_r+0x2f8>
   113f8:	0127d693          	srli	a3,a5,0x12
   113fc:	00169593          	slli	a1,a3,0x1
   11400:	0fa5859b          	addiw	a1,a1,250
   11404:	00359593          	slli	a1,a1,0x3
   11408:	07c6861b          	addiw	a2,a3,124
   1140c:	e75ff06f          	j	11280 <_free_r+0x168>
   11410:	7f000593          	li	a1,2032
   11414:	07e00613          	li	a2,126
   11418:	e69ff06f          	j	11280 <_free_r+0x168>

000000000001141c <_malloc_r>:
   1141c:	fa010113          	addi	sp,sp,-96
   11420:	04813823          	sd	s0,80(sp)
   11424:	04113c23          	sd	ra,88(sp)
   11428:	01758713          	addi	a4,a1,23
   1142c:	02e00793          	li	a5,46
   11430:	00050413          	mv	s0,a0
   11434:	08e7ee63          	bltu	a5,a4,114d0 <_malloc_r+0xb4>
   11438:	02000713          	li	a4,32
   1143c:	06b76c63          	bltu	a4,a1,114b4 <_malloc_r+0x98>
   11440:	0c1000ef          	jal	11d00 <__malloc_lock>
   11444:	02000713          	li	a4,32
   11448:	05000693          	li	a3,80
   1144c:	00400893          	li	a7,4
   11450:	00013837          	lui	a6,0x13
   11454:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11458:	00d806b3          	add	a3,a6,a3
   1145c:	0086b783          	ld	a5,8(a3)
   11460:	ff068613          	addi	a2,a3,-16
   11464:	48c78063          	beq	a5,a2,118e4 <_malloc_r+0x4c8>
   11468:	0087b703          	ld	a4,8(a5)
   1146c:	0187b603          	ld	a2,24(a5)
   11470:	0107b583          	ld	a1,16(a5)
   11474:	ffc77713          	andi	a4,a4,-4
   11478:	00e78733          	add	a4,a5,a4
   1147c:	00873683          	ld	a3,8(a4)
   11480:	00c5bc23          	sd	a2,24(a1)
   11484:	00b63823          	sd	a1,16(a2)
   11488:	0016e693          	ori	a3,a3,1
   1148c:	00040513          	mv	a0,s0
   11490:	00d73423          	sd	a3,8(a4)
   11494:	00f13423          	sd	a5,8(sp)
   11498:	06d000ef          	jal	11d04 <__malloc_unlock>
   1149c:	00813783          	ld	a5,8(sp)
   114a0:	05813083          	ld	ra,88(sp)
   114a4:	05013403          	ld	s0,80(sp)
   114a8:	01078513          	addi	a0,a5,16
   114ac:	06010113          	addi	sp,sp,96
   114b0:	00008067          	ret
   114b4:	00c00793          	li	a5,12
   114b8:	00f42023          	sw	a5,0(s0)
   114bc:	00000513          	li	a0,0
   114c0:	05813083          	ld	ra,88(sp)
   114c4:	05013403          	ld	s0,80(sp)
   114c8:	06010113          	addi	sp,sp,96
   114cc:	00008067          	ret
   114d0:	00100793          	li	a5,1
   114d4:	ff077713          	andi	a4,a4,-16
   114d8:	01f79793          	slli	a5,a5,0x1f
   114dc:	fcf77ce3          	bgeu	a4,a5,114b4 <_malloc_r+0x98>
   114e0:	fcb76ae3          	bltu	a4,a1,114b4 <_malloc_r+0x98>
   114e4:	00e13423          	sd	a4,8(sp)
   114e8:	019000ef          	jal	11d00 <__malloc_lock>
   114ec:	00813703          	ld	a4,8(sp)
   114f0:	1f700793          	li	a5,503
   114f4:	4ee7fa63          	bgeu	a5,a4,119e8 <_malloc_r+0x5cc>
   114f8:	00975793          	srli	a5,a4,0x9
   114fc:	18078a63          	beqz	a5,11690 <_malloc_r+0x274>
   11500:	00400693          	li	a3,4
   11504:	44f6ea63          	bltu	a3,a5,11958 <_malloc_r+0x53c>
   11508:	00675793          	srli	a5,a4,0x6
   1150c:	0397889b          	addiw	a7,a5,57
   11510:	0018951b          	slliw	a0,a7,0x1
   11514:	03878e1b          	addiw	t3,a5,56
   11518:	00351513          	slli	a0,a0,0x3
   1151c:	00013837          	lui	a6,0x13
   11520:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11524:	00a80533          	add	a0,a6,a0
   11528:	00853783          	ld	a5,8(a0)
   1152c:	ff050513          	addi	a0,a0,-16
   11530:	02f50863          	beq	a0,a5,11560 <_malloc_r+0x144>
   11534:	01f00313          	li	t1,31
   11538:	0140006f          	j	1154c <_malloc_r+0x130>
   1153c:	0187b583          	ld	a1,24(a5)
   11540:	36065263          	bgez	a2,118a4 <_malloc_r+0x488>
   11544:	00b50e63          	beq	a0,a1,11560 <_malloc_r+0x144>
   11548:	00058793          	mv	a5,a1
   1154c:	0087b683          	ld	a3,8(a5)
   11550:	ffc6f693          	andi	a3,a3,-4
   11554:	40e68633          	sub	a2,a3,a4
   11558:	fec352e3          	bge	t1,a2,1153c <_malloc_r+0x120>
   1155c:	000e0893          	mv	a7,t3
   11560:	02083783          	ld	a5,32(a6)
   11564:	00013e37          	lui	t3,0x13
   11568:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   1156c:	2fc78a63          	beq	a5,t3,11860 <_malloc_r+0x444>
   11570:	0087b303          	ld	t1,8(a5)
   11574:	01f00613          	li	a2,31
   11578:	ffc37313          	andi	t1,t1,-4
   1157c:	40e306b3          	sub	a3,t1,a4
   11580:	4ad64463          	blt	a2,a3,11a28 <_malloc_r+0x60c>
   11584:	03c83423          	sd	t3,40(a6)
   11588:	03c83023          	sd	t3,32(a6)
   1158c:	4606da63          	bgez	a3,11a00 <_malloc_r+0x5e4>
   11590:	1ff00693          	li	a3,511
   11594:	00883583          	ld	a1,8(a6)
   11598:	3466ee63          	bltu	a3,t1,118f4 <_malloc_r+0x4d8>
   1159c:	00335313          	srli	t1,t1,0x3
   115a0:	00131693          	slli	a3,t1,0x1
   115a4:	0026869b          	addiw	a3,a3,2
   115a8:	00369693          	slli	a3,a3,0x3
   115ac:	00d806b3          	add	a3,a6,a3
   115b0:	0006b503          	ld	a0,0(a3)
   115b4:	4023531b          	sraiw	t1,t1,0x2
   115b8:	00100613          	li	a2,1
   115bc:	00661633          	sll	a2,a2,t1
   115c0:	00c5e5b3          	or	a1,a1,a2
   115c4:	ff068613          	addi	a2,a3,-16
   115c8:	00a7b823          	sd	a0,16(a5)
   115cc:	00c7bc23          	sd	a2,24(a5)
   115d0:	00b83423          	sd	a1,8(a6)
   115d4:	00f6b023          	sd	a5,0(a3)
   115d8:	00f53c23          	sd	a5,24(a0)
   115dc:	4028d79b          	sraiw	a5,a7,0x2
   115e0:	00100513          	li	a0,1
   115e4:	00f51533          	sll	a0,a0,a5
   115e8:	0aa5ec63          	bltu	a1,a0,116a0 <_malloc_r+0x284>
   115ec:	00b577b3          	and	a5,a0,a1
   115f0:	02079463          	bnez	a5,11618 <_malloc_r+0x1fc>
   115f4:	00151513          	slli	a0,a0,0x1
   115f8:	ffc8f893          	andi	a7,a7,-4
   115fc:	00b577b3          	and	a5,a0,a1
   11600:	0048889b          	addiw	a7,a7,4
   11604:	00079a63          	bnez	a5,11618 <_malloc_r+0x1fc>
   11608:	00151513          	slli	a0,a0,0x1
   1160c:	00b577b3          	and	a5,a0,a1
   11610:	0048889b          	addiw	a7,a7,4
   11614:	fe078ae3          	beqz	a5,11608 <_malloc_r+0x1ec>
   11618:	01f00e93          	li	t4,31
   1161c:	00189f13          	slli	t5,a7,0x1
   11620:	002f0f1b          	addiw	t5,t5,2
   11624:	003f1f13          	slli	t5,t5,0x3
   11628:	ff0f0f13          	addi	t5,t5,-16
   1162c:	01e80f33          	add	t5,a6,t5
   11630:	000f0313          	mv	t1,t5
   11634:	01833683          	ld	a3,24(t1)
   11638:	00088f93          	mv	t6,a7
   1163c:	34d30263          	beq	t1,a3,11980 <_malloc_r+0x564>
   11640:	0086b603          	ld	a2,8(a3)
   11644:	00068793          	mv	a5,a3
   11648:	0186b683          	ld	a3,24(a3)
   1164c:	ffc67613          	andi	a2,a2,-4
   11650:	40e605b3          	sub	a1,a2,a4
   11654:	34bec263          	blt	t4,a1,11998 <_malloc_r+0x57c>
   11658:	fe05c2e3          	bltz	a1,1163c <_malloc_r+0x220>
   1165c:	00c78633          	add	a2,a5,a2
   11660:	00863703          	ld	a4,8(a2)
   11664:	0107b583          	ld	a1,16(a5)
   11668:	00040513          	mv	a0,s0
   1166c:	00176713          	ori	a4,a4,1
   11670:	00e63423          	sd	a4,8(a2)
   11674:	00d5bc23          	sd	a3,24(a1)
   11678:	00b6b823          	sd	a1,16(a3)
   1167c:	00f13423          	sd	a5,8(sp)
   11680:	684000ef          	jal	11d04 <__malloc_unlock>
   11684:	00813783          	ld	a5,8(sp)
   11688:	01078513          	addi	a0,a5,16
   1168c:	e35ff06f          	j	114c0 <_malloc_r+0xa4>
   11690:	40000513          	li	a0,1024
   11694:	04000893          	li	a7,64
   11698:	03f00e13          	li	t3,63
   1169c:	e81ff06f          	j	1151c <_malloc_r+0x100>
   116a0:	01083783          	ld	a5,16(a6)
   116a4:	0087b683          	ld	a3,8(a5)
   116a8:	ffc6f893          	andi	a7,a3,-4
   116ac:	40e88633          	sub	a2,a7,a4
   116b0:	00e8e663          	bltu	a7,a4,116bc <_malloc_r+0x2a0>
   116b4:	02062693          	slti	a3,a2,32
   116b8:	1a068863          	beqz	a3,11868 <_malloc_r+0x44c>
   116bc:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   116c0:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   116c4:	fff00693          	li	a3,-1
   116c8:	00b705b3          	add	a1,a4,a1
   116cc:	44d60663          	beq	a2,a3,11b18 <_malloc_r+0x6fc>
   116d0:	000016b7          	lui	a3,0x1
   116d4:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   116d8:	00d585b3          	add	a1,a1,a3
   116dc:	fffff6b7          	lui	a3,0xfffff
   116e0:	00d5f5b3          	and	a1,a1,a3
   116e4:	00040513          	mv	a0,s0
   116e8:	03013423          	sd	a6,40(sp)
   116ec:	02f13023          	sd	a5,32(sp)
   116f0:	00e13c23          	sd	a4,24(sp)
   116f4:	01113823          	sd	a7,16(sp)
   116f8:	00b13423          	sd	a1,8(sp)
   116fc:	271000ef          	jal	1216c <_sbrk_r>
   11700:	fff00693          	li	a3,-1
   11704:	00813583          	ld	a1,8(sp)
   11708:	01013883          	ld	a7,16(sp)
   1170c:	01813703          	ld	a4,24(sp)
   11710:	02013783          	ld	a5,32(sp)
   11714:	02813803          	ld	a6,40(sp)
   11718:	00050313          	mv	t1,a0
   1171c:	36d50663          	beq	a0,a3,11a88 <_malloc_r+0x66c>
   11720:	011786b3          	add	a3,a5,a7
   11724:	36d56063          	bltu	a0,a3,11a84 <_malloc_r+0x668>
   11728:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   1172c:	000e2603          	lw	a2,0(t3)
   11730:	00b6063b          	addw	a2,a2,a1
   11734:	00ce2023          	sw	a2,0(t3)
   11738:	00060513          	mv	a0,a2
   1173c:	4a668c63          	beq	a3,t1,11bf4 <_malloc_r+0x7d8>
   11740:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11744:	fff00613          	li	a2,-1
   11748:	4ccf0463          	beq	t5,a2,11c10 <_malloc_r+0x7f4>
   1174c:	40d306b3          	sub	a3,t1,a3
   11750:	00a686bb          	addw	a3,a3,a0
   11754:	00de2023          	sw	a3,0(t3)
   11758:	00f37e93          	andi	t4,t1,15
   1175c:	3c0e8e63          	beqz	t4,11b38 <_malloc_r+0x71c>
   11760:	ff037313          	andi	t1,t1,-16
   11764:	000016b7          	lui	a3,0x1
   11768:	01030313          	addi	t1,t1,16
   1176c:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11770:	00b30633          	add	a2,t1,a1
   11774:	41d685b3          	sub	a1,a3,t4
   11778:	40c585b3          	sub	a1,a1,a2
   1177c:	03459593          	slli	a1,a1,0x34
   11780:	0345d593          	srli	a1,a1,0x34
   11784:	00040513          	mv	a0,s0
   11788:	05c13023          	sd	t3,64(sp)
   1178c:	03013c23          	sd	a6,56(sp)
   11790:	02f13823          	sd	a5,48(sp)
   11794:	02e13423          	sd	a4,40(sp)
   11798:	03113023          	sd	a7,32(sp)
   1179c:	00613c23          	sd	t1,24(sp)
   117a0:	01d13823          	sd	t4,16(sp)
   117a4:	00c13423          	sd	a2,8(sp)
   117a8:	04b13423          	sd	a1,72(sp)
   117ac:	1c1000ef          	jal	1216c <_sbrk_r>
   117b0:	00050693          	mv	a3,a0
   117b4:	fff00513          	li	a0,-1
   117b8:	00813603          	ld	a2,8(sp)
   117bc:	01013e83          	ld	t4,16(sp)
   117c0:	01813303          	ld	t1,24(sp)
   117c4:	02013883          	ld	a7,32(sp)
   117c8:	02813703          	ld	a4,40(sp)
   117cc:	03013783          	ld	a5,48(sp)
   117d0:	03813803          	ld	a6,56(sp)
   117d4:	04013e03          	ld	t3,64(sp)
   117d8:	48a68663          	beq	a3,a0,11c64 <_malloc_r+0x848>
   117dc:	04813583          	ld	a1,72(sp)
   117e0:	0005851b          	sext.w	a0,a1
   117e4:	000e2603          	lw	a2,0(t3)
   117e8:	406686b3          	sub	a3,a3,t1
   117ec:	00b686b3          	add	a3,a3,a1
   117f0:	0016e693          	ori	a3,a3,1
   117f4:	00683823          	sd	t1,16(a6)
   117f8:	00a6063b          	addw	a2,a2,a0
   117fc:	00d33423          	sd	a3,8(t1)
   11800:	00ce2023          	sw	a2,0(t3)
   11804:	03078e63          	beq	a5,a6,11840 <_malloc_r+0x424>
   11808:	01f00513          	li	a0,31
   1180c:	41157663          	bgeu	a0,a7,11c18 <_malloc_r+0x7fc>
   11810:	0087b583          	ld	a1,8(a5)
   11814:	fe888693          	addi	a3,a7,-24
   11818:	ff06f693          	andi	a3,a3,-16
   1181c:	0015f593          	andi	a1,a1,1
   11820:	00d5e5b3          	or	a1,a1,a3
   11824:	00b7b423          	sd	a1,8(a5)
   11828:	00900893          	li	a7,9
   1182c:	00d785b3          	add	a1,a5,a3
   11830:	0115b423          	sd	a7,8(a1)
   11834:	0115b823          	sd	a7,16(a1)
   11838:	44d56863          	bltu	a0,a3,11c88 <_malloc_r+0x86c>
   1183c:	00833683          	ld	a3,8(t1)
   11840:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11844:	00c5f463          	bgeu	a1,a2,1184c <_malloc_r+0x430>
   11848:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1184c:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11850:	00c5f463          	bgeu	a1,a2,11858 <_malloc_r+0x43c>
   11854:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11858:	00030793          	mv	a5,t1
   1185c:	2340006f          	j	11a90 <_malloc_r+0x674>
   11860:	00883583          	ld	a1,8(a6)
   11864:	d79ff06f          	j	115dc <_malloc_r+0x1c0>
   11868:	00176693          	ori	a3,a4,1
   1186c:	00d7b423          	sd	a3,8(a5)
   11870:	00e78733          	add	a4,a5,a4
   11874:	00166613          	ori	a2,a2,1
   11878:	00e83823          	sd	a4,16(a6)
   1187c:	00040513          	mv	a0,s0
   11880:	00c73423          	sd	a2,8(a4)
   11884:	00f13423          	sd	a5,8(sp)
   11888:	47c000ef          	jal	11d04 <__malloc_unlock>
   1188c:	00813783          	ld	a5,8(sp)
   11890:	05813083          	ld	ra,88(sp)
   11894:	05013403          	ld	s0,80(sp)
   11898:	01078513          	addi	a0,a5,16
   1189c:	06010113          	addi	sp,sp,96
   118a0:	00008067          	ret
   118a4:	0107b603          	ld	a2,16(a5)
   118a8:	00d786b3          	add	a3,a5,a3
   118ac:	0086b703          	ld	a4,8(a3)
   118b0:	00b63c23          	sd	a1,24(a2)
   118b4:	00c5b823          	sd	a2,16(a1)
   118b8:	00176713          	ori	a4,a4,1
   118bc:	00040513          	mv	a0,s0
   118c0:	00e6b423          	sd	a4,8(a3)
   118c4:	00f13423          	sd	a5,8(sp)
   118c8:	43c000ef          	jal	11d04 <__malloc_unlock>
   118cc:	00813783          	ld	a5,8(sp)
   118d0:	05813083          	ld	ra,88(sp)
   118d4:	05013403          	ld	s0,80(sp)
   118d8:	01078513          	addi	a0,a5,16
   118dc:	06010113          	addi	sp,sp,96
   118e0:	00008067          	ret
   118e4:	0186b783          	ld	a5,24(a3)
   118e8:	0028889b          	addiw	a7,a7,2
   118ec:	c6f68ae3          	beq	a3,a5,11560 <_malloc_r+0x144>
   118f0:	b79ff06f          	j	11468 <_malloc_r+0x4c>
   118f4:	00935693          	srli	a3,t1,0x9
   118f8:	00400613          	li	a2,4
   118fc:	16d67863          	bgeu	a2,a3,11a6c <_malloc_r+0x650>
   11900:	01400613          	li	a2,20
   11904:	28d66e63          	bltu	a2,a3,11ba0 <_malloc_r+0x784>
   11908:	00169513          	slli	a0,a3,0x1
   1190c:	0b85051b          	addiw	a0,a0,184
   11910:	00351513          	slli	a0,a0,0x3
   11914:	05b6861b          	addiw	a2,a3,91
   11918:	00a80533          	add	a0,a6,a0
   1191c:	00053683          	ld	a3,0(a0)
   11920:	ff050513          	addi	a0,a0,-16
   11924:	00d51863          	bne	a0,a3,11934 <_malloc_r+0x518>
   11928:	1f80006f          	j	11b20 <_malloc_r+0x704>
   1192c:	0106b683          	ld	a3,16(a3)
   11930:	00d50863          	beq	a0,a3,11940 <_malloc_r+0x524>
   11934:	0086b603          	ld	a2,8(a3)
   11938:	ffc67613          	andi	a2,a2,-4
   1193c:	fec368e3          	bltu	t1,a2,1192c <_malloc_r+0x510>
   11940:	0186b503          	ld	a0,24(a3)
   11944:	00a7bc23          	sd	a0,24(a5)
   11948:	00d7b823          	sd	a3,16(a5)
   1194c:	00f53823          	sd	a5,16(a0)
   11950:	00f6bc23          	sd	a5,24(a3)
   11954:	c89ff06f          	j	115dc <_malloc_r+0x1c0>
   11958:	01400693          	li	a3,20
   1195c:	14f6fa63          	bgeu	a3,a5,11ab0 <_malloc_r+0x694>
   11960:	05400693          	li	a3,84
   11964:	24f6ee63          	bltu	a3,a5,11bc0 <_malloc_r+0x7a4>
   11968:	00c75793          	srli	a5,a4,0xc
   1196c:	06f7889b          	addiw	a7,a5,111
   11970:	0018951b          	slliw	a0,a7,0x1
   11974:	06e78e1b          	addiw	t3,a5,110
   11978:	00351513          	slli	a0,a0,0x3
   1197c:	ba1ff06f          	j	1151c <_malloc_r+0x100>
   11980:	001f8f9b          	addiw	t6,t6,1
   11984:	003ff793          	andi	a5,t6,3
   11988:	01030313          	addi	t1,t1,16
   1198c:	14078263          	beqz	a5,11ad0 <_malloc_r+0x6b4>
   11990:	01833683          	ld	a3,24(t1)
   11994:	ca9ff06f          	j	1163c <_malloc_r+0x220>
   11998:	0107b503          	ld	a0,16(a5)
   1199c:	00176893          	ori	a7,a4,1
   119a0:	0117b423          	sd	a7,8(a5)
   119a4:	00d53c23          	sd	a3,24(a0)
   119a8:	00a6b823          	sd	a0,16(a3)
   119ac:	00e78733          	add	a4,a5,a4
   119b0:	02e83423          	sd	a4,40(a6)
   119b4:	02e83023          	sd	a4,32(a6)
   119b8:	0015e693          	ori	a3,a1,1
   119bc:	00c78633          	add	a2,a5,a2
   119c0:	01c73c23          	sd	t3,24(a4)
   119c4:	01c73823          	sd	t3,16(a4)
   119c8:	00d73423          	sd	a3,8(a4)
   119cc:	00040513          	mv	a0,s0
   119d0:	00b63023          	sd	a1,0(a2)
   119d4:	00f13423          	sd	a5,8(sp)
   119d8:	32c000ef          	jal	11d04 <__malloc_unlock>
   119dc:	00813783          	ld	a5,8(sp)
   119e0:	01078513          	addi	a0,a5,16
   119e4:	addff06f          	j	114c0 <_malloc_r+0xa4>
   119e8:	00375893          	srli	a7,a4,0x3
   119ec:	00189693          	slli	a3,a7,0x1
   119f0:	0026869b          	addiw	a3,a3,2
   119f4:	00369693          	slli	a3,a3,0x3
   119f8:	0008889b          	sext.w	a7,a7
   119fc:	a55ff06f          	j	11450 <_malloc_r+0x34>
   11a00:	00678333          	add	t1,a5,t1
   11a04:	00833703          	ld	a4,8(t1)
   11a08:	00040513          	mv	a0,s0
   11a0c:	00f13423          	sd	a5,8(sp)
   11a10:	00176713          	ori	a4,a4,1
   11a14:	00e33423          	sd	a4,8(t1)
   11a18:	2ec000ef          	jal	11d04 <__malloc_unlock>
   11a1c:	00813783          	ld	a5,8(sp)
   11a20:	01078513          	addi	a0,a5,16
   11a24:	a9dff06f          	j	114c0 <_malloc_r+0xa4>
   11a28:	00176613          	ori	a2,a4,1
   11a2c:	00c7b423          	sd	a2,8(a5)
   11a30:	00e78733          	add	a4,a5,a4
   11a34:	02e83423          	sd	a4,40(a6)
   11a38:	02e83023          	sd	a4,32(a6)
   11a3c:	0016e613          	ori	a2,a3,1
   11a40:	00678333          	add	t1,a5,t1
   11a44:	01c73c23          	sd	t3,24(a4)
   11a48:	01c73823          	sd	t3,16(a4)
   11a4c:	00c73423          	sd	a2,8(a4)
   11a50:	00040513          	mv	a0,s0
   11a54:	00d33023          	sd	a3,0(t1)
   11a58:	00f13423          	sd	a5,8(sp)
   11a5c:	2a8000ef          	jal	11d04 <__malloc_unlock>
   11a60:	00813783          	ld	a5,8(sp)
   11a64:	01078513          	addi	a0,a5,16
   11a68:	a59ff06f          	j	114c0 <_malloc_r+0xa4>
   11a6c:	00635693          	srli	a3,t1,0x6
   11a70:	00169513          	slli	a0,a3,0x1
   11a74:	0725051b          	addiw	a0,a0,114
   11a78:	00351513          	slli	a0,a0,0x3
   11a7c:	0386861b          	addiw	a2,a3,56
   11a80:	e99ff06f          	j	11918 <_malloc_r+0x4fc>
   11a84:	15078e63          	beq	a5,a6,11be0 <_malloc_r+0x7c4>
   11a88:	01083783          	ld	a5,16(a6)
   11a8c:	0087b683          	ld	a3,8(a5)
   11a90:	ffc6f693          	andi	a3,a3,-4
   11a94:	40e68633          	sub	a2,a3,a4
   11a98:	00e6e663          	bltu	a3,a4,11aa4 <_malloc_r+0x688>
   11a9c:	02062693          	slti	a3,a2,32
   11aa0:	dc0684e3          	beqz	a3,11868 <_malloc_r+0x44c>
   11aa4:	00040513          	mv	a0,s0
   11aa8:	25c000ef          	jal	11d04 <__malloc_unlock>
   11aac:	a11ff06f          	j	114bc <_malloc_r+0xa0>
   11ab0:	05c7889b          	addiw	a7,a5,92
   11ab4:	0018951b          	slliw	a0,a7,0x1
   11ab8:	05b78e1b          	addiw	t3,a5,91
   11abc:	00351513          	slli	a0,a0,0x3
   11ac0:	a5dff06f          	j	1151c <_malloc_r+0x100>
   11ac4:	010f3783          	ld	a5,16(t5)
   11ac8:	fff8889b          	addiw	a7,a7,-1
   11acc:	23e79663          	bne	a5,t5,11cf8 <_malloc_r+0x8dc>
   11ad0:	0038f793          	andi	a5,a7,3
   11ad4:	ff0f0f13          	addi	t5,t5,-16
   11ad8:	fe0796e3          	bnez	a5,11ac4 <_malloc_r+0x6a8>
   11adc:	00883683          	ld	a3,8(a6)
   11ae0:	fff54793          	not	a5,a0
   11ae4:	00d7f7b3          	and	a5,a5,a3
   11ae8:	00f83423          	sd	a5,8(a6)
   11aec:	00151513          	slli	a0,a0,0x1
   11af0:	fff50693          	addi	a3,a0,-1
   11af4:	baf6f6e3          	bgeu	a3,a5,116a0 <_malloc_r+0x284>
   11af8:	00f576b3          	and	a3,a0,a5
   11afc:	00069a63          	bnez	a3,11b10 <_malloc_r+0x6f4>
   11b00:	00151513          	slli	a0,a0,0x1
   11b04:	00f576b3          	and	a3,a0,a5
   11b08:	004f8f9b          	addiw	t6,t6,4
   11b0c:	fe068ae3          	beqz	a3,11b00 <_malloc_r+0x6e4>
   11b10:	000f8893          	mv	a7,t6
   11b14:	b09ff06f          	j	1161c <_malloc_r+0x200>
   11b18:	02058593          	addi	a1,a1,32
   11b1c:	bc9ff06f          	j	116e4 <_malloc_r+0x2c8>
   11b20:	4026561b          	sraiw	a2,a2,0x2
   11b24:	00100313          	li	t1,1
   11b28:	00c31633          	sll	a2,t1,a2
   11b2c:	00c5e5b3          	or	a1,a1,a2
   11b30:	00b83423          	sd	a1,8(a6)
   11b34:	e11ff06f          	j	11944 <_malloc_r+0x528>
   11b38:	00b30633          	add	a2,t1,a1
   11b3c:	40c005b3          	neg	a1,a2
   11b40:	03459593          	slli	a1,a1,0x34
   11b44:	0345d593          	srli	a1,a1,0x34
   11b48:	00040513          	mv	a0,s0
   11b4c:	03c13c23          	sd	t3,56(sp)
   11b50:	03013823          	sd	a6,48(sp)
   11b54:	02f13423          	sd	a5,40(sp)
   11b58:	02e13023          	sd	a4,32(sp)
   11b5c:	01113c23          	sd	a7,24(sp)
   11b60:	00613823          	sd	t1,16(sp)
   11b64:	00c13423          	sd	a2,8(sp)
   11b68:	04b13023          	sd	a1,64(sp)
   11b6c:	600000ef          	jal	1216c <_sbrk_r>
   11b70:	00050693          	mv	a3,a0
   11b74:	fff00513          	li	a0,-1
   11b78:	01013303          	ld	t1,16(sp)
   11b7c:	01813883          	ld	a7,24(sp)
   11b80:	02013703          	ld	a4,32(sp)
   11b84:	02813783          	ld	a5,40(sp)
   11b88:	03013803          	ld	a6,48(sp)
   11b8c:	03813e03          	ld	t3,56(sp)
   11b90:	0ea68463          	beq	a3,a0,11c78 <_malloc_r+0x85c>
   11b94:	04013583          	ld	a1,64(sp)
   11b98:	0005851b          	sext.w	a0,a1
   11b9c:	c49ff06f          	j	117e4 <_malloc_r+0x3c8>
   11ba0:	05400613          	li	a2,84
   11ba4:	08d66063          	bltu	a2,a3,11c24 <_malloc_r+0x808>
   11ba8:	00c35693          	srli	a3,t1,0xc
   11bac:	00169513          	slli	a0,a3,0x1
   11bb0:	0de5051b          	addiw	a0,a0,222
   11bb4:	00351513          	slli	a0,a0,0x3
   11bb8:	06e6861b          	addiw	a2,a3,110
   11bbc:	d5dff06f          	j	11918 <_malloc_r+0x4fc>
   11bc0:	15400693          	li	a3,340
   11bc4:	08f6e063          	bltu	a3,a5,11c44 <_malloc_r+0x828>
   11bc8:	00f75793          	srli	a5,a4,0xf
   11bcc:	0787889b          	addiw	a7,a5,120
   11bd0:	0018951b          	slliw	a0,a7,0x1
   11bd4:	07778e1b          	addiw	t3,a5,119
   11bd8:	00351513          	slli	a0,a0,0x3
   11bdc:	941ff06f          	j	1151c <_malloc_r+0x100>
   11be0:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11be4:	000e2503          	lw	a0,0(t3)
   11be8:	00b5053b          	addw	a0,a0,a1
   11bec:	00ae2023          	sw	a0,0(t3)
   11bf0:	b51ff06f          	j	11740 <_malloc_r+0x324>
   11bf4:	03431f13          	slli	t5,t1,0x34
   11bf8:	b40f14e3          	bnez	t5,11740 <_malloc_r+0x324>
   11bfc:	01083303          	ld	t1,16(a6)
   11c00:	00b885b3          	add	a1,a7,a1
   11c04:	0015e693          	ori	a3,a1,1
   11c08:	00d33423          	sd	a3,8(t1)
   11c0c:	c35ff06f          	j	11840 <_malloc_r+0x424>
   11c10:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11c14:	b45ff06f          	j	11758 <_malloc_r+0x33c>
   11c18:	00100793          	li	a5,1
   11c1c:	00f33423          	sd	a5,8(t1)
   11c20:	e85ff06f          	j	11aa4 <_malloc_r+0x688>
   11c24:	15400613          	li	a2,340
   11c28:	08d66a63          	bltu	a2,a3,11cbc <_malloc_r+0x8a0>
   11c2c:	00f35693          	srli	a3,t1,0xf
   11c30:	00169513          	slli	a0,a3,0x1
   11c34:	0f05051b          	addiw	a0,a0,240
   11c38:	00351513          	slli	a0,a0,0x3
   11c3c:	0776861b          	addiw	a2,a3,119
   11c40:	cd9ff06f          	j	11918 <_malloc_r+0x4fc>
   11c44:	55400693          	li	a3,1364
   11c48:	08f6ea63          	bltu	a3,a5,11cdc <_malloc_r+0x8c0>
   11c4c:	01275793          	srli	a5,a4,0x12
   11c50:	07d7889b          	addiw	a7,a5,125
   11c54:	0018951b          	slliw	a0,a7,0x1
   11c58:	07c78e1b          	addiw	t3,a5,124
   11c5c:	00351513          	slli	a0,a0,0x3
   11c60:	8bdff06f          	j	1151c <_malloc_r+0x100>
   11c64:	ff0e8e93          	addi	t4,t4,-16
   11c68:	01d606b3          	add	a3,a2,t4
   11c6c:	00000513          	li	a0,0
   11c70:	00000593          	li	a1,0
   11c74:	b71ff06f          	j	117e4 <_malloc_r+0x3c8>
   11c78:	00813683          	ld	a3,8(sp)
   11c7c:	00000593          	li	a1,0
   11c80:	00000513          	li	a0,0
   11c84:	b61ff06f          	j	117e4 <_malloc_r+0x3c8>
   11c88:	01078593          	addi	a1,a5,16
   11c8c:	00040513          	mv	a0,s0
   11c90:	01c13c23          	sd	t3,24(sp)
   11c94:	01013823          	sd	a6,16(sp)
   11c98:	00e13423          	sd	a4,8(sp)
   11c9c:	c7cff0ef          	jal	11118 <_free_r>
   11ca0:	01013803          	ld	a6,16(sp)
   11ca4:	01813e03          	ld	t3,24(sp)
   11ca8:	00813703          	ld	a4,8(sp)
   11cac:	01083303          	ld	t1,16(a6)
   11cb0:	000e2603          	lw	a2,0(t3)
   11cb4:	00833683          	ld	a3,8(t1)
   11cb8:	b89ff06f          	j	11840 <_malloc_r+0x424>
   11cbc:	55400613          	li	a2,1364
   11cc0:	02d66663          	bltu	a2,a3,11cec <_malloc_r+0x8d0>
   11cc4:	01235693          	srli	a3,t1,0x12
   11cc8:	00169513          	slli	a0,a3,0x1
   11ccc:	0fa5051b          	addiw	a0,a0,250
   11cd0:	00351513          	slli	a0,a0,0x3
   11cd4:	07c6861b          	addiw	a2,a3,124
   11cd8:	c41ff06f          	j	11918 <_malloc_r+0x4fc>
   11cdc:	7f000513          	li	a0,2032
   11ce0:	07f00893          	li	a7,127
   11ce4:	07e00e13          	li	t3,126
   11ce8:	835ff06f          	j	1151c <_malloc_r+0x100>
   11cec:	7f000513          	li	a0,2032
   11cf0:	07e00613          	li	a2,126
   11cf4:	c25ff06f          	j	11918 <_malloc_r+0x4fc>
   11cf8:	00883783          	ld	a5,8(a6)
   11cfc:	df1ff06f          	j	11aec <_malloc_r+0x6d0>

0000000000011d00 <__malloc_lock>:
   11d00:	00008067          	ret

0000000000011d04 <__malloc_unlock>:
   11d04:	00008067          	ret

0000000000011d08 <_fclose_r>:
   11d08:	fe010113          	addi	sp,sp,-32
   11d0c:	00113c23          	sd	ra,24(sp)
   11d10:	01213023          	sd	s2,0(sp)
   11d14:	02058863          	beqz	a1,11d44 <_fclose_r+0x3c>
   11d18:	00813823          	sd	s0,16(sp)
   11d1c:	00913423          	sd	s1,8(sp)
   11d20:	00058413          	mv	s0,a1
   11d24:	00050493          	mv	s1,a0
   11d28:	00050663          	beqz	a0,11d34 <_fclose_r+0x2c>
   11d2c:	04853783          	ld	a5,72(a0)
   11d30:	0c078c63          	beqz	a5,11e08 <_fclose_r+0x100>
   11d34:	01041783          	lh	a5,16(s0)
   11d38:	02079263          	bnez	a5,11d5c <_fclose_r+0x54>
   11d3c:	01013403          	ld	s0,16(sp)
   11d40:	00813483          	ld	s1,8(sp)
   11d44:	01813083          	ld	ra,24(sp)
   11d48:	00000913          	li	s2,0
   11d4c:	00090513          	mv	a0,s2
   11d50:	00013903          	ld	s2,0(sp)
   11d54:	02010113          	addi	sp,sp,32
   11d58:	00008067          	ret
   11d5c:	00040593          	mv	a1,s0
   11d60:	00048513          	mv	a0,s1
   11d64:	0b8000ef          	jal	11e1c <__sflush_r>
   11d68:	05043783          	ld	a5,80(s0)
   11d6c:	00050913          	mv	s2,a0
   11d70:	00078a63          	beqz	a5,11d84 <_fclose_r+0x7c>
   11d74:	03043583          	ld	a1,48(s0)
   11d78:	00048513          	mv	a0,s1
   11d7c:	000780e7          	jalr	a5
   11d80:	06054463          	bltz	a0,11de8 <_fclose_r+0xe0>
   11d84:	01045783          	lhu	a5,16(s0)
   11d88:	0807f793          	andi	a5,a5,128
   11d8c:	06079663          	bnez	a5,11df8 <_fclose_r+0xf0>
   11d90:	05843583          	ld	a1,88(s0)
   11d94:	00058c63          	beqz	a1,11dac <_fclose_r+0xa4>
   11d98:	07440793          	addi	a5,s0,116
   11d9c:	00f58663          	beq	a1,a5,11da8 <_fclose_r+0xa0>
   11da0:	00048513          	mv	a0,s1
   11da4:	b74ff0ef          	jal	11118 <_free_r>
   11da8:	04043c23          	sd	zero,88(s0)
   11dac:	07843583          	ld	a1,120(s0)
   11db0:	00058863          	beqz	a1,11dc0 <_fclose_r+0xb8>
   11db4:	00048513          	mv	a0,s1
   11db8:	b60ff0ef          	jal	11118 <_free_r>
   11dbc:	06043c23          	sd	zero,120(s0)
   11dc0:	aa5fe0ef          	jal	10864 <__sfp_lock_acquire>
   11dc4:	00041823          	sh	zero,16(s0)
   11dc8:	aa1fe0ef          	jal	10868 <__sfp_lock_release>
   11dcc:	01813083          	ld	ra,24(sp)
   11dd0:	01013403          	ld	s0,16(sp)
   11dd4:	00813483          	ld	s1,8(sp)
   11dd8:	00090513          	mv	a0,s2
   11ddc:	00013903          	ld	s2,0(sp)
   11de0:	02010113          	addi	sp,sp,32
   11de4:	00008067          	ret
   11de8:	01045783          	lhu	a5,16(s0)
   11dec:	fff00913          	li	s2,-1
   11df0:	0807f793          	andi	a5,a5,128
   11df4:	f8078ee3          	beqz	a5,11d90 <_fclose_r+0x88>
   11df8:	01843583          	ld	a1,24(s0)
   11dfc:	00048513          	mv	a0,s1
   11e00:	b18ff0ef          	jal	11118 <_free_r>
   11e04:	f8dff06f          	j	11d90 <_fclose_r+0x88>
   11e08:	a39fe0ef          	jal	10840 <__sinit>
   11e0c:	f29ff06f          	j	11d34 <_fclose_r+0x2c>

0000000000011e10 <fclose>:
   11e10:	00050593          	mv	a1,a0
   11e14:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e18:	ef1ff06f          	j	11d08 <_fclose_r>

0000000000011e1c <__sflush_r>:
   11e1c:	01059703          	lh	a4,16(a1)
   11e20:	fd010113          	addi	sp,sp,-48
   11e24:	02813023          	sd	s0,32(sp)
   11e28:	01313423          	sd	s3,8(sp)
   11e2c:	02113423          	sd	ra,40(sp)
   11e30:	00877793          	andi	a5,a4,8
   11e34:	00058413          	mv	s0,a1
   11e38:	00050993          	mv	s3,a0
   11e3c:	12079263          	bnez	a5,11f60 <__sflush_r+0x144>
   11e40:	000017b7          	lui	a5,0x1
   11e44:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11e48:	0085a683          	lw	a3,8(a1)
   11e4c:	00f767b3          	or	a5,a4,a5
   11e50:	00f59823          	sh	a5,16(a1)
   11e54:	18d05c63          	blez	a3,11fec <__sflush_r+0x1d0>
   11e58:	04843803          	ld	a6,72(s0)
   11e5c:	0e080663          	beqz	a6,11f48 <__sflush_r+0x12c>
   11e60:	00913c23          	sd	s1,24(sp)
   11e64:	03371693          	slli	a3,a4,0x33
   11e68:	0009a483          	lw	s1,0(s3)
   11e6c:	0009a023          	sw	zero,0(s3)
   11e70:	1806ca63          	bltz	a3,12004 <__sflush_r+0x1e8>
   11e74:	03043583          	ld	a1,48(s0)
   11e78:	00000613          	li	a2,0
   11e7c:	00100693          	li	a3,1
   11e80:	00098513          	mv	a0,s3
   11e84:	000800e7          	jalr	a6
   11e88:	fff00793          	li	a5,-1
   11e8c:	00050613          	mv	a2,a0
   11e90:	1af50c63          	beq	a0,a5,12048 <__sflush_r+0x22c>
   11e94:	01041783          	lh	a5,16(s0)
   11e98:	04843803          	ld	a6,72(s0)
   11e9c:	0047f793          	andi	a5,a5,4
   11ea0:	00078e63          	beqz	a5,11ebc <__sflush_r+0xa0>
   11ea4:	00842703          	lw	a4,8(s0)
   11ea8:	05843783          	ld	a5,88(s0)
   11eac:	40e60633          	sub	a2,a2,a4
   11eb0:	00078663          	beqz	a5,11ebc <__sflush_r+0xa0>
   11eb4:	07042783          	lw	a5,112(s0)
   11eb8:	40f60633          	sub	a2,a2,a5
   11ebc:	03043583          	ld	a1,48(s0)
   11ec0:	00000693          	li	a3,0
   11ec4:	00098513          	mv	a0,s3
   11ec8:	000800e7          	jalr	a6
   11ecc:	fff00713          	li	a4,-1
   11ed0:	01041783          	lh	a5,16(s0)
   11ed4:	12e51c63          	bne	a0,a4,1200c <__sflush_r+0x1f0>
   11ed8:	0009a683          	lw	a3,0(s3)
   11edc:	01d00713          	li	a4,29
   11ee0:	18d76263          	bltu	a4,a3,12064 <__sflush_r+0x248>
   11ee4:	20400737          	lui	a4,0x20400
   11ee8:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11eec:	00d75733          	srl	a4,a4,a3
   11ef0:	00177713          	andi	a4,a4,1
   11ef4:	16070863          	beqz	a4,12064 <__sflush_r+0x248>
   11ef8:	01843683          	ld	a3,24(s0)
   11efc:	fffff737          	lui	a4,0xfffff
   11f00:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f04:	00e7f733          	and	a4,a5,a4
   11f08:	00e41823          	sh	a4,16(s0)
   11f0c:	00042423          	sw	zero,8(s0)
   11f10:	00d43023          	sd	a3,0(s0)
   11f14:	03379713          	slli	a4,a5,0x33
   11f18:	00075663          	bgez	a4,11f24 <__sflush_r+0x108>
   11f1c:	0009a783          	lw	a5,0(s3)
   11f20:	10078863          	beqz	a5,12030 <__sflush_r+0x214>
   11f24:	05843583          	ld	a1,88(s0)
   11f28:	0099a023          	sw	s1,0(s3)
   11f2c:	10058a63          	beqz	a1,12040 <__sflush_r+0x224>
   11f30:	07440793          	addi	a5,s0,116
   11f34:	00f58663          	beq	a1,a5,11f40 <__sflush_r+0x124>
   11f38:	00098513          	mv	a0,s3
   11f3c:	9dcff0ef          	jal	11118 <_free_r>
   11f40:	01813483          	ld	s1,24(sp)
   11f44:	04043c23          	sd	zero,88(s0)
   11f48:	02813083          	ld	ra,40(sp)
   11f4c:	02013403          	ld	s0,32(sp)
   11f50:	00813983          	ld	s3,8(sp)
   11f54:	00000513          	li	a0,0
   11f58:	03010113          	addi	sp,sp,48
   11f5c:	00008067          	ret
   11f60:	01213823          	sd	s2,16(sp)
   11f64:	0185b903          	ld	s2,24(a1)
   11f68:	08090a63          	beqz	s2,11ffc <__sflush_r+0x1e0>
   11f6c:	00913c23          	sd	s1,24(sp)
   11f70:	0005b483          	ld	s1,0(a1)
   11f74:	00377713          	andi	a4,a4,3
   11f78:	0125b023          	sd	s2,0(a1)
   11f7c:	412484bb          	subw	s1,s1,s2
   11f80:	00000793          	li	a5,0
   11f84:	00071463          	bnez	a4,11f8c <__sflush_r+0x170>
   11f88:	0205a783          	lw	a5,32(a1)
   11f8c:	00f42623          	sw	a5,12(s0)
   11f90:	00904863          	bgtz	s1,11fa0 <__sflush_r+0x184>
   11f94:	0640006f          	j	11ff8 <__sflush_r+0x1dc>
   11f98:	00a90933          	add	s2,s2,a0
   11f9c:	04905e63          	blez	s1,11ff8 <__sflush_r+0x1dc>
   11fa0:	04043783          	ld	a5,64(s0)
   11fa4:	03043583          	ld	a1,48(s0)
   11fa8:	00048693          	mv	a3,s1
   11fac:	00090613          	mv	a2,s2
   11fb0:	00098513          	mv	a0,s3
   11fb4:	000780e7          	jalr	a5
   11fb8:	40a484bb          	subw	s1,s1,a0
   11fbc:	fca04ee3          	bgtz	a0,11f98 <__sflush_r+0x17c>
   11fc0:	01045783          	lhu	a5,16(s0)
   11fc4:	01013903          	ld	s2,16(sp)
   11fc8:	0407e793          	ori	a5,a5,64
   11fcc:	02813083          	ld	ra,40(sp)
   11fd0:	00f41823          	sh	a5,16(s0)
   11fd4:	02013403          	ld	s0,32(sp)
   11fd8:	01813483          	ld	s1,24(sp)
   11fdc:	00813983          	ld	s3,8(sp)
   11fe0:	fff00513          	li	a0,-1
   11fe4:	03010113          	addi	sp,sp,48
   11fe8:	00008067          	ret
   11fec:	0705a683          	lw	a3,112(a1)
   11ff0:	e6d044e3          	bgtz	a3,11e58 <__sflush_r+0x3c>
   11ff4:	f55ff06f          	j	11f48 <__sflush_r+0x12c>
   11ff8:	01813483          	ld	s1,24(sp)
   11ffc:	01013903          	ld	s2,16(sp)
   12000:	f49ff06f          	j	11f48 <__sflush_r+0x12c>
   12004:	09043603          	ld	a2,144(s0)
   12008:	e95ff06f          	j	11e9c <__sflush_r+0x80>
   1200c:	01843683          	ld	a3,24(s0)
   12010:	fffff737          	lui	a4,0xfffff
   12014:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12018:	00e7f733          	and	a4,a5,a4
   1201c:	00e41823          	sh	a4,16(s0)
   12020:	00042423          	sw	zero,8(s0)
   12024:	00d43023          	sd	a3,0(s0)
   12028:	03379713          	slli	a4,a5,0x33
   1202c:	ee075ce3          	bgez	a4,11f24 <__sflush_r+0x108>
   12030:	05843583          	ld	a1,88(s0)
   12034:	08a43823          	sd	a0,144(s0)
   12038:	0099a023          	sw	s1,0(s3)
   1203c:	ee059ae3          	bnez	a1,11f30 <__sflush_r+0x114>
   12040:	01813483          	ld	s1,24(sp)
   12044:	f05ff06f          	j	11f48 <__sflush_r+0x12c>
   12048:	0009a783          	lw	a5,0(s3)
   1204c:	e40784e3          	beqz	a5,11e94 <__sflush_r+0x78>
   12050:	fe378713          	addi	a4,a5,-29
   12054:	00070c63          	beqz	a4,1206c <__sflush_r+0x250>
   12058:	fea78793          	addi	a5,a5,-22
   1205c:	00078863          	beqz	a5,1206c <__sflush_r+0x250>
   12060:	01045783          	lhu	a5,16(s0)
   12064:	0407e793          	ori	a5,a5,64
   12068:	f65ff06f          	j	11fcc <__sflush_r+0x1b0>
   1206c:	0099a023          	sw	s1,0(s3)
   12070:	01813483          	ld	s1,24(sp)
   12074:	ed5ff06f          	j	11f48 <__sflush_r+0x12c>

0000000000012078 <_fflush_r>:
   12078:	00050793          	mv	a5,a0
   1207c:	00050663          	beqz	a0,12088 <_fflush_r+0x10>
   12080:	04853703          	ld	a4,72(a0)
   12084:	00070e63          	beqz	a4,120a0 <_fflush_r+0x28>
   12088:	01059703          	lh	a4,16(a1)
   1208c:	00071663          	bnez	a4,12098 <_fflush_r+0x20>
   12090:	00000513          	li	a0,0
   12094:	00008067          	ret
   12098:	00078513          	mv	a0,a5
   1209c:	d81ff06f          	j	11e1c <__sflush_r>
   120a0:	fe010113          	addi	sp,sp,-32
   120a4:	00b13423          	sd	a1,8(sp)
   120a8:	00113c23          	sd	ra,24(sp)
   120ac:	00a13023          	sd	a0,0(sp)
   120b0:	f90fe0ef          	jal	10840 <__sinit>
   120b4:	00813583          	ld	a1,8(sp)
   120b8:	00013783          	ld	a5,0(sp)
   120bc:	01059703          	lh	a4,16(a1)
   120c0:	00070a63          	beqz	a4,120d4 <_fflush_r+0x5c>
   120c4:	01813083          	ld	ra,24(sp)
   120c8:	00078513          	mv	a0,a5
   120cc:	02010113          	addi	sp,sp,32
   120d0:	d4dff06f          	j	11e1c <__sflush_r>
   120d4:	01813083          	ld	ra,24(sp)
   120d8:	00000513          	li	a0,0
   120dc:	02010113          	addi	sp,sp,32
   120e0:	00008067          	ret

00000000000120e4 <fflush>:
   120e4:	06050063          	beqz	a0,12144 <fflush+0x60>
   120e8:	00050593          	mv	a1,a0
   120ec:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   120f0:	00050663          	beqz	a0,120fc <fflush+0x18>
   120f4:	04853783          	ld	a5,72(a0)
   120f8:	00078c63          	beqz	a5,12110 <fflush+0x2c>
   120fc:	01059783          	lh	a5,16(a1)
   12100:	00079663          	bnez	a5,1210c <fflush+0x28>
   12104:	00000513          	li	a0,0
   12108:	00008067          	ret
   1210c:	d11ff06f          	j	11e1c <__sflush_r>
   12110:	fe010113          	addi	sp,sp,-32
   12114:	00b13423          	sd	a1,8(sp)
   12118:	00a13023          	sd	a0,0(sp)
   1211c:	00113c23          	sd	ra,24(sp)
   12120:	f20fe0ef          	jal	10840 <__sinit>
   12124:	00813583          	ld	a1,8(sp)
   12128:	00013503          	ld	a0,0(sp)
   1212c:	01059783          	lh	a5,16(a1)
   12130:	02079863          	bnez	a5,12160 <fflush+0x7c>
   12134:	01813083          	ld	ra,24(sp)
   12138:	00000513          	li	a0,0
   1213c:	02010113          	addi	sp,sp,32
   12140:	00008067          	ret
   12144:	00013637          	lui	a2,0x13
   12148:	000125b7          	lui	a1,0x12
   1214c:	00013537          	lui	a0,0x13
   12150:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12154:	07858593          	addi	a1,a1,120 # 12078 <_fflush_r>
   12158:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   1215c:	f40fe06f          	j	1089c <_fwalk_sglue>
   12160:	01813083          	ld	ra,24(sp)
   12164:	02010113          	addi	sp,sp,32
   12168:	cb5ff06f          	j	11e1c <__sflush_r>

000000000001216c <_sbrk_r>:
   1216c:	fe010113          	addi	sp,sp,-32
   12170:	00813823          	sd	s0,16(sp)
   12174:	00913423          	sd	s1,8(sp)
   12178:	00050493          	mv	s1,a0
   1217c:	00058513          	mv	a0,a1
   12180:	00113c23          	sd	ra,24(sp)
   12184:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12188:	228000ef          	jal	123b0 <_sbrk>
   1218c:	fff00793          	li	a5,-1
   12190:	00f50c63          	beq	a0,a5,121a8 <_sbrk_r+0x3c>
   12194:	01813083          	ld	ra,24(sp)
   12198:	01013403          	ld	s0,16(sp)
   1219c:	00813483          	ld	s1,8(sp)
   121a0:	02010113          	addi	sp,sp,32
   121a4:	00008067          	ret
   121a8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   121ac:	fe0784e3          	beqz	a5,12194 <_sbrk_r+0x28>
   121b0:	01813083          	ld	ra,24(sp)
   121b4:	01013403          	ld	s0,16(sp)
   121b8:	00f4a023          	sw	a5,0(s1)
   121bc:	00813483          	ld	s1,8(sp)
   121c0:	02010113          	addi	sp,sp,32
   121c4:	00008067          	ret

00000000000121c8 <__libc_fini_array>:
   121c8:	fe010113          	addi	sp,sp,-32
   121cc:	00813823          	sd	s0,16(sp)
   121d0:	000137b7          	lui	a5,0x13
   121d4:	00013437          	lui	s0,0x13
   121d8:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   121dc:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   121e0:	408787b3          	sub	a5,a5,s0
   121e4:	00913423          	sd	s1,8(sp)
   121e8:	00113c23          	sd	ra,24(sp)
   121ec:	4037d493          	srai	s1,a5,0x3
   121f0:	02048063          	beqz	s1,12210 <__libc_fini_array+0x48>
   121f4:	ff840413          	addi	s0,s0,-8
   121f8:	00f40433          	add	s0,s0,a5
   121fc:	00043783          	ld	a5,0(s0)
   12200:	fff48493          	addi	s1,s1,-1
   12204:	ff840413          	addi	s0,s0,-8
   12208:	000780e7          	jalr	a5
   1220c:	fe0498e3          	bnez	s1,121fc <__libc_fini_array+0x34>
   12210:	01813083          	ld	ra,24(sp)
   12214:	01013403          	ld	s0,16(sp)
   12218:	00813483          	ld	s1,8(sp)
   1221c:	02010113          	addi	sp,sp,32
   12220:	00008067          	ret

0000000000012224 <__register_exitproc>:
   12224:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12228:	04078e63          	beqz	a5,12284 <__register_exitproc+0x60>
   1222c:	0087a703          	lw	a4,8(a5)
   12230:	01f00813          	li	a6,31
   12234:	08e84263          	blt	a6,a4,122b8 <__register_exitproc+0x94>
   12238:	02050863          	beqz	a0,12268 <__register_exitproc+0x44>
   1223c:	00371813          	slli	a6,a4,0x3
   12240:	01078833          	add	a6,a5,a6
   12244:	10c83823          	sd	a2,272(a6)
   12248:	3107a883          	lw	a7,784(a5)
   1224c:	00100613          	li	a2,1
   12250:	00e6163b          	sllw	a2,a2,a4
   12254:	00c8e8b3          	or	a7,a7,a2
   12258:	3117a823          	sw	a7,784(a5)
   1225c:	20d83823          	sd	a3,528(a6)
   12260:	00200693          	li	a3,2
   12264:	02d50663          	beq	a0,a3,12290 <__register_exitproc+0x6c>
   12268:	0017069b          	addiw	a3,a4,1
   1226c:	00371713          	slli	a4,a4,0x3
   12270:	00d7a423          	sw	a3,8(a5)
   12274:	00e787b3          	add	a5,a5,a4
   12278:	00b7b823          	sd	a1,16(a5)
   1227c:	00000513          	li	a0,0
   12280:	00008067          	ret
   12284:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12288:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   1228c:	fa1ff06f          	j	1222c <__register_exitproc+0x8>
   12290:	3147a683          	lw	a3,788(a5)
   12294:	00000513          	li	a0,0
   12298:	00d66633          	or	a2,a2,a3
   1229c:	0017069b          	addiw	a3,a4,1
   122a0:	00371713          	slli	a4,a4,0x3
   122a4:	30c7aa23          	sw	a2,788(a5)
   122a8:	00d7a423          	sw	a3,8(a5)
   122ac:	00e787b3          	add	a5,a5,a4
   122b0:	00b7b823          	sd	a1,16(a5)
   122b4:	00008067          	ret
   122b8:	fff00513          	li	a0,-1
   122bc:	00008067          	ret

00000000000122c0 <_close>:
   122c0:	03900893          	li	a7,57
   122c4:	00000073          	ecall
   122c8:	00054663          	bltz	a0,122d4 <_close+0x14>
   122cc:	0005051b          	sext.w	a0,a0
   122d0:	00008067          	ret
   122d4:	fe010113          	addi	sp,sp,-32
   122d8:	00113c23          	sd	ra,24(sp)
   122dc:	00a13423          	sd	a0,8(sp)
   122e0:	188000ef          	jal	12468 <__errno>
   122e4:	00813783          	ld	a5,8(sp)
   122e8:	01813083          	ld	ra,24(sp)
   122ec:	40f007bb          	negw	a5,a5
   122f0:	00f52023          	sw	a5,0(a0)
   122f4:	fff00513          	li	a0,-1
   122f8:	02010113          	addi	sp,sp,32
   122fc:	00008067          	ret

0000000000012300 <_exit>:
   12300:	05d00893          	li	a7,93
   12304:	00000073          	ecall
   12308:	00054463          	bltz	a0,12310 <_exit+0x10>
   1230c:	0000006f          	j	1230c <_exit+0xc>
   12310:	fe010113          	addi	sp,sp,-32
   12314:	00113c23          	sd	ra,24(sp)
   12318:	00a13423          	sd	a0,8(sp)
   1231c:	14c000ef          	jal	12468 <__errno>
   12320:	00813783          	ld	a5,8(sp)
   12324:	40f007bb          	negw	a5,a5
   12328:	00f52023          	sw	a5,0(a0)
   1232c:	0000006f          	j	1232c <_exit+0x2c>

0000000000012330 <_lseek>:
   12330:	03e00893          	li	a7,62
   12334:	00000073          	ecall
   12338:	00054463          	bltz	a0,12340 <_lseek+0x10>
   1233c:	00008067          	ret
   12340:	fe010113          	addi	sp,sp,-32
   12344:	00113c23          	sd	ra,24(sp)
   12348:	00a13423          	sd	a0,8(sp)
   1234c:	11c000ef          	jal	12468 <__errno>
   12350:	00813783          	ld	a5,8(sp)
   12354:	01813083          	ld	ra,24(sp)
   12358:	40f007bb          	negw	a5,a5
   1235c:	00f52023          	sw	a5,0(a0)
   12360:	fff00793          	li	a5,-1
   12364:	00078513          	mv	a0,a5
   12368:	02010113          	addi	sp,sp,32
   1236c:	00008067          	ret

0000000000012370 <_read>:
   12370:	03f00893          	li	a7,63
   12374:	00000073          	ecall
   12378:	00054463          	bltz	a0,12380 <_read+0x10>
   1237c:	00008067          	ret
   12380:	fe010113          	addi	sp,sp,-32
   12384:	00113c23          	sd	ra,24(sp)
   12388:	00a13423          	sd	a0,8(sp)
   1238c:	0dc000ef          	jal	12468 <__errno>
   12390:	00813783          	ld	a5,8(sp)
   12394:	01813083          	ld	ra,24(sp)
   12398:	40f007bb          	negw	a5,a5
   1239c:	00f52023          	sw	a5,0(a0)
   123a0:	fff00793          	li	a5,-1
   123a4:	00078513          	mv	a0,a5
   123a8:	02010113          	addi	sp,sp,32
   123ac:	00008067          	ret

00000000000123b0 <_sbrk>:
   123b0:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   123b4:	ff010113          	addi	sp,sp,-16
   123b8:	00113423          	sd	ra,8(sp)
   123bc:	00050713          	mv	a4,a0
   123c0:	02079063          	bnez	a5,123e0 <_sbrk+0x30>
   123c4:	0d600893          	li	a7,214
   123c8:	00000513          	li	a0,0
   123cc:	00000073          	ecall
   123d0:	fff00793          	li	a5,-1
   123d4:	02f50c63          	beq	a0,a5,1240c <_sbrk+0x5c>
   123d8:	00050793          	mv	a5,a0
   123dc:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   123e0:	00f70533          	add	a0,a4,a5
   123e4:	0d600893          	li	a7,214
   123e8:	00000073          	ecall
   123ec:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   123f0:	00f70733          	add	a4,a4,a5
   123f4:	00e51c63          	bne	a0,a4,1240c <_sbrk+0x5c>
   123f8:	00813083          	ld	ra,8(sp)
   123fc:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12400:	00078513          	mv	a0,a5
   12404:	01010113          	addi	sp,sp,16
   12408:	00008067          	ret
   1240c:	05c000ef          	jal	12468 <__errno>
   12410:	00813083          	ld	ra,8(sp)
   12414:	00c00793          	li	a5,12
   12418:	00f52023          	sw	a5,0(a0)
   1241c:	fff00513          	li	a0,-1
   12420:	01010113          	addi	sp,sp,16
   12424:	00008067          	ret

0000000000012428 <_write>:
   12428:	04000893          	li	a7,64
   1242c:	00000073          	ecall
   12430:	00054463          	bltz	a0,12438 <_write+0x10>
   12434:	00008067          	ret
   12438:	fe010113          	addi	sp,sp,-32
   1243c:	00113c23          	sd	ra,24(sp)
   12440:	00a13423          	sd	a0,8(sp)
   12444:	024000ef          	jal	12468 <__errno>
   12448:	00813783          	ld	a5,8(sp)
   1244c:	01813083          	ld	ra,24(sp)
   12450:	40f007bb          	negw	a5,a5
   12454:	00f52023          	sw	a5,0(a0)
   12458:	fff00793          	li	a5,-1
   1245c:	00078513          	mv	a0,a5
   12460:	02010113          	addi	sp,sp,32
   12464:	00008067          	ret

0000000000012468 <__errno>:
   12468:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1246c:	00008067          	ret

Disassembly of section .rodata:

0000000000012470 <.rodata>:
   12470:	6341                	.insn	2, 0x6341
   12472:	6d72656b          	.insn	4, 0x6d72656b
   12476:	6e61                	.insn	2, 0x6e61
   12478:	286e                	.insn	2, 0x286e
   1247a:	0000                	.insn	2, 0x0000
   1247c:	0000                	.insn	2, 0x0000
   1247e:	0000                	.insn	2, 0x0000
   12480:	002c                	.insn	2, 0x002c
   12482:	0000                	.insn	2, 0x0000
   12484:	0000                	.insn	2, 0x0000
   12486:	0000                	.insn	2, 0x0000
   12488:	2029                	.insn	2, 0x2029
   1248a:	203d                	.insn	2, 0x203d
	...

Disassembly of section .eh_frame:

0000000000012490 <__EH_FRAME_BEGIN__>:
   12490:	0000                	.insn	2, 0x0000
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

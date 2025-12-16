
test/build/with-syscall/test_arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	509000ef          	jal	10e3c <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	14c020ef          	jal	12294 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	15c50513          	addi	a0,a0,348 # 1215c <__libc_fini_array>
   1015c:	6190006f          	j	10f74 <atexit>
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
   10184:	3dd000ef          	jal	10d60 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	dec50513          	addi	a0,a0,-532 # 10f74 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	fc850513          	addi	a0,a0,-56 # 1215c <__libc_fini_array>
   1019c:	5d9000ef          	jal	10f74 <atexit>
   101a0:	32d000ef          	jal	10ccc <__libc_init_array>
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
   101d4:	00012537          	lui	a0,0x12
   101d8:	40850513          	addi	a0,a0,1032 # 12408 <__EH_FRAME_BEGIN__>
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
   1020c:	40850513          	addi	a0,a0,1032 # 12408 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	fc010113          	addi	sp,sp,-64
   10220:	02113c23          	sd	ra,56(sp)
   10224:	02813823          	sd	s0,48(sp)
   10228:	04010413          	addi	s0,sp,64
   1022c:	00a00793          	li	a5,10
   10230:	fef42623          	sw	a5,-20(s0)
   10234:	01400793          	li	a5,20
   10238:	fef42423          	sw	a5,-24(s0)
   1023c:	01e00793          	li	a5,30
   10240:	fef42223          	sw	a5,-28(s0)
   10244:	000037b7          	lui	a5,0x3
   10248:	03978793          	addi	a5,a5,57 # 3039 <exit-0xd0e7>
   1024c:	fef42023          	sw	a5,-32(s0)
   10250:	00100793          	li	a5,1
   10254:	fcf42e23          	sw	a5,-36(s0)
   10258:	00200793          	li	a5,2
   1025c:	fcf42c23          	sw	a5,-40(s0)
   10260:	fec42783          	lw	a5,-20(s0)
   10264:	00078713          	mv	a4,a5
   10268:	fe842783          	lw	a5,-24(s0)
   1026c:	00f707bb          	addw	a5,a4,a5
   10270:	fcf42a23          	sw	a5,-44(s0)
   10274:	fd442783          	lw	a5,-44(s0)
   10278:	00078513          	mv	a0,a5
   1027c:	0e4000ef          	jal	10360 <print_d>
   10280:	00a00513          	li	a0,10
   10284:	178000ef          	jal	103fc <print_c>
   10288:	fec42783          	lw	a5,-20(s0)
   1028c:	00078713          	mv	a4,a5
   10290:	fe842783          	lw	a5,-24(s0)
   10294:	40f707bb          	subw	a5,a4,a5
   10298:	fcf42823          	sw	a5,-48(s0)
   1029c:	fd042783          	lw	a5,-48(s0)
   102a0:	00078513          	mv	a0,a5
   102a4:	0bc000ef          	jal	10360 <print_d>
   102a8:	00a00513          	li	a0,10
   102ac:	150000ef          	jal	103fc <print_c>
   102b0:	fe442783          	lw	a5,-28(s0)
   102b4:	00078713          	mv	a4,a5
   102b8:	fe042783          	lw	a5,-32(s0)
   102bc:	02f707bb          	mulw	a5,a4,a5
   102c0:	fcf42623          	sw	a5,-52(s0)
   102c4:	fcc42783          	lw	a5,-52(s0)
   102c8:	00078513          	mv	a0,a5
   102cc:	094000ef          	jal	10360 <print_d>
   102d0:	00a00513          	li	a0,10
   102d4:	128000ef          	jal	103fc <print_c>
   102d8:	fe042783          	lw	a5,-32(s0)
   102dc:	00078713          	mv	a4,a5
   102e0:	fe442783          	lw	a5,-28(s0)
   102e4:	02f747bb          	divw	a5,a4,a5
   102e8:	fcf42a23          	sw	a5,-44(s0)
   102ec:	fd442783          	lw	a5,-44(s0)
   102f0:	00078513          	mv	a0,a5
   102f4:	06c000ef          	jal	10360 <print_d>
   102f8:	00a00513          	li	a0,10
   102fc:	100000ef          	jal	103fc <print_c>
   10300:	fd842783          	lw	a5,-40(s0)
   10304:	fe042703          	lw	a4,-32(s0)
   10308:	00f717bb          	sllw	a5,a4,a5
   1030c:	fcf42823          	sw	a5,-48(s0)
   10310:	fd042783          	lw	a5,-48(s0)
   10314:	00078513          	mv	a0,a5
   10318:	048000ef          	jal	10360 <print_d>
   1031c:	00a00513          	li	a0,10
   10320:	0dc000ef          	jal	103fc <print_c>
   10324:	fe042783          	lw	a5,-32(s0)
   10328:	4047d79b          	sraiw	a5,a5,0x4
   1032c:	fcf42623          	sw	a5,-52(s0)
   10330:	fcc42783          	lw	a5,-52(s0)
   10334:	00078513          	mv	a0,a5
   10338:	028000ef          	jal	10360 <print_d>
   1033c:	00a00513          	li	a0,10
   10340:	0bc000ef          	jal	103fc <print_c>
   10344:	0ec000ef          	jal	10430 <exit_proc>
   10348:	00000793          	li	a5,0
   1034c:	00078513          	mv	a0,a5
   10350:	03813083          	ld	ra,56(sp)
   10354:	03013403          	ld	s0,48(sp)
   10358:	04010113          	addi	sp,sp,64
   1035c:	00008067          	ret

0000000000010360 <print_d>:
   10360:	fe010113          	addi	sp,sp,-32
   10364:	00113c23          	sd	ra,24(sp)
   10368:	00813823          	sd	s0,16(sp)
   1036c:	02010413          	addi	s0,sp,32
   10370:	00050793          	mv	a5,a0
   10374:	fef42623          	sw	a5,-20(s0)
   10378:	00200893          	li	a7,2
   1037c:	00000073          	ecall
   10380:	00000013          	nop
   10384:	01813083          	ld	ra,24(sp)
   10388:	01013403          	ld	s0,16(sp)
   1038c:	02010113          	addi	sp,sp,32
   10390:	00008067          	ret

0000000000010394 <print_ll>:
   10394:	fe010113          	addi	sp,sp,-32
   10398:	00113c23          	sd	ra,24(sp)
   1039c:	00813823          	sd	s0,16(sp)
   103a0:	02010413          	addi	s0,sp,32
   103a4:	fea43423          	sd	a0,-24(s0)
   103a8:	fe843783          	ld	a5,-24(s0)
   103ac:	00078513          	mv	a0,a5
   103b0:	00600893          	li	a7,6
   103b4:	00000073          	ecall
   103b8:	00000013          	nop
   103bc:	01813083          	ld	ra,24(sp)
   103c0:	01013403          	ld	s0,16(sp)
   103c4:	02010113          	addi	sp,sp,32
   103c8:	00008067          	ret

00000000000103cc <print_s>:
   103cc:	fe010113          	addi	sp,sp,-32
   103d0:	00113c23          	sd	ra,24(sp)
   103d4:	00813823          	sd	s0,16(sp)
   103d8:	02010413          	addi	s0,sp,32
   103dc:	fea43423          	sd	a0,-24(s0)
   103e0:	00000893          	li	a7,0
   103e4:	00000073          	ecall
   103e8:	00000013          	nop
   103ec:	01813083          	ld	ra,24(sp)
   103f0:	01013403          	ld	s0,16(sp)
   103f4:	02010113          	addi	sp,sp,32
   103f8:	00008067          	ret

00000000000103fc <print_c>:
   103fc:	fe010113          	addi	sp,sp,-32
   10400:	00113c23          	sd	ra,24(sp)
   10404:	00813823          	sd	s0,16(sp)
   10408:	02010413          	addi	s0,sp,32
   1040c:	00050793          	mv	a5,a0
   10410:	fef407a3          	sb	a5,-17(s0)
   10414:	00100893          	li	a7,1
   10418:	00000073          	ecall
   1041c:	00000013          	nop
   10420:	01813083          	ld	ra,24(sp)
   10424:	01013403          	ld	s0,16(sp)
   10428:	02010113          	addi	sp,sp,32
   1042c:	00008067          	ret

0000000000010430 <exit_proc>:
   10430:	ff010113          	addi	sp,sp,-16
   10434:	00113423          	sd	ra,8(sp)
   10438:	00813023          	sd	s0,0(sp)
   1043c:	01010413          	addi	s0,sp,16
   10440:	00300893          	li	a7,3
   10444:	00000073          	ecall
   10448:	00000013          	nop
   1044c:	00813083          	ld	ra,8(sp)
   10450:	00013403          	ld	s0,0(sp)
   10454:	01010113          	addi	sp,sp,16
   10458:	00008067          	ret

000000000001045c <read_char>:
   1045c:	fe010113          	addi	sp,sp,-32
   10460:	00113c23          	sd	ra,24(sp)
   10464:	00813823          	sd	s0,16(sp)
   10468:	02010413          	addi	s0,sp,32
   1046c:	00400893          	li	a7,4
   10470:	00000073          	ecall
   10474:	00050793          	mv	a5,a0
   10478:	fef407a3          	sb	a5,-17(s0)
   1047c:	fef44783          	lbu	a5,-17(s0)
   10480:	00078513          	mv	a0,a5
   10484:	01813083          	ld	ra,24(sp)
   10488:	01013403          	ld	s0,16(sp)
   1048c:	02010113          	addi	sp,sp,32
   10490:	00008067          	ret

0000000000010494 <read_num>:
   10494:	fe010113          	addi	sp,sp,-32
   10498:	00113c23          	sd	ra,24(sp)
   1049c:	00813823          	sd	s0,16(sp)
   104a0:	02010413          	addi	s0,sp,32
   104a4:	00500893          	li	a7,5
   104a8:	00000073          	ecall
   104ac:	00050793          	mv	a5,a0
   104b0:	fef43423          	sd	a5,-24(s0)
   104b4:	fe843783          	ld	a5,-24(s0)
   104b8:	00078513          	mv	a0,a5
   104bc:	01813083          	ld	ra,24(sp)
   104c0:	01013403          	ld	s0,16(sp)
   104c4:	02010113          	addi	sp,sp,32
   104c8:	00008067          	ret

00000000000104cc <__fp_lock>:
   104cc:	00000513          	li	a0,0
   104d0:	00008067          	ret

00000000000104d4 <stdio_exit_handler>:
   104d4:	00013637          	lui	a2,0x13
   104d8:	000125b7          	lui	a1,0x12
   104dc:	00013537          	lui	a0,0x13
   104e0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   104e4:	c9c58593          	addi	a1,a1,-868 # 11c9c <_fclose_r>
   104e8:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   104ec:	3440006f          	j	10830 <_fwalk_sglue>

00000000000104f0 <cleanup_stdio>:
   104f0:	00853583          	ld	a1,8(a0)
   104f4:	ff010113          	addi	sp,sp,-16
   104f8:	00813023          	sd	s0,0(sp)
   104fc:	00113423          	sd	ra,8(sp)
   10500:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10504:	00050413          	mv	s0,a0
   10508:	00f58463          	beq	a1,a5,10510 <cleanup_stdio+0x20>
   1050c:	790010ef          	jal	11c9c <_fclose_r>
   10510:	01043583          	ld	a1,16(s0)
   10514:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10518:	00f58663          	beq	a1,a5,10524 <cleanup_stdio+0x34>
   1051c:	00040513          	mv	a0,s0
   10520:	77c010ef          	jal	11c9c <_fclose_r>
   10524:	01843583          	ld	a1,24(s0)
   10528:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1052c:	00f58c63          	beq	a1,a5,10544 <cleanup_stdio+0x54>
   10530:	00040513          	mv	a0,s0
   10534:	00013403          	ld	s0,0(sp)
   10538:	00813083          	ld	ra,8(sp)
   1053c:	01010113          	addi	sp,sp,16
   10540:	75c0106f          	j	11c9c <_fclose_r>
   10544:	00813083          	ld	ra,8(sp)
   10548:	00013403          	ld	s0,0(sp)
   1054c:	01010113          	addi	sp,sp,16
   10550:	00008067          	ret

0000000000010554 <__fp_unlock>:
   10554:	00000513          	li	a0,0
   10558:	00008067          	ret

000000000001055c <global_stdio_init.part.0>:
   1055c:	fd010113          	addi	sp,sp,-48
   10560:	000107b7          	lui	a5,0x10
   10564:	02813023          	sd	s0,32(sp)
   10568:	4d478793          	addi	a5,a5,1236 # 104d4 <stdio_exit_handler>
   1056c:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10570:	02113423          	sd	ra,40(sp)
   10574:	00913c23          	sd	s1,24(sp)
   10578:	01213823          	sd	s2,16(sp)
   1057c:	01313423          	sd	s3,8(sp)
   10580:	01413023          	sd	s4,0(sp)
   10584:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10588:	00800613          	li	a2,8
   1058c:	00400793          	li	a5,4
   10590:	00000593          	li	a1,0
   10594:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10598:	00f42823          	sw	a5,16(s0)
   1059c:	00043023          	sd	zero,0(s0)
   105a0:	00043423          	sd	zero,8(s0)
   105a4:	0a042623          	sw	zero,172(s0)
   105a8:	00043c23          	sd	zero,24(s0)
   105ac:	02042023          	sw	zero,32(s0)
   105b0:	02042423          	sw	zero,40(s0)
   105b4:	7ac000ef          	jal	10d60 <memset>
   105b8:	00011a37          	lui	s4,0x11
   105bc:	000119b7          	lui	s3,0x11
   105c0:	00011937          	lui	s2,0x11
   105c4:	000114b7          	lui	s1,0x11
   105c8:	000107b7          	lui	a5,0x10
   105cc:	8fca0a13          	addi	s4,s4,-1796 # 108fc <__sread>
   105d0:	96098993          	addi	s3,s3,-1696 # 10960 <__swrite>
   105d4:	9e890913          	addi	s2,s2,-1560 # 109e8 <__sseek>
   105d8:	a4c48493          	addi	s1,s1,-1460 # 10a4c <__sclose>
   105dc:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   105e0:	00800613          	li	a2,8
   105e4:	00000593          	li	a1,0
   105e8:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   105ec:	0cf42023          	sw	a5,192(s0)
   105f0:	03443c23          	sd	s4,56(s0)
   105f4:	05343023          	sd	s3,64(s0)
   105f8:	05243423          	sd	s2,72(s0)
   105fc:	04943823          	sd	s1,80(s0)
   10600:	02843823          	sd	s0,48(s0)
   10604:	0a043823          	sd	zero,176(s0)
   10608:	0a043c23          	sd	zero,184(s0)
   1060c:	14042e23          	sw	zero,348(s0)
   10610:	0c043423          	sd	zero,200(s0)
   10614:	0c042823          	sw	zero,208(s0)
   10618:	0c042c23          	sw	zero,216(s0)
   1061c:	744000ef          	jal	10d60 <memset>
   10620:	000207b7          	lui	a5,0x20
   10624:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10628:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   1062c:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   10630:	00800613          	li	a2,8
   10634:	00000593          	li	a1,0
   10638:	0f443423          	sd	s4,232(s0)
   1063c:	0f343823          	sd	s3,240(s0)
   10640:	0f243c23          	sd	s2,248(s0)
   10644:	10943023          	sd	s1,256(s0)
   10648:	16f42823          	sw	a5,368(s0)
   1064c:	16043023          	sd	zero,352(s0)
   10650:	16043423          	sd	zero,360(s0)
   10654:	20042623          	sw	zero,524(s0)
   10658:	16043c23          	sd	zero,376(s0)
   1065c:	18042023          	sw	zero,384(s0)
   10660:	18042423          	sw	zero,392(s0)
   10664:	0ee43023          	sd	a4,224(s0)
   10668:	6f8000ef          	jal	10d60 <memset>
   1066c:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10670:	19443c23          	sd	s4,408(s0)
   10674:	1b343023          	sd	s3,416(s0)
   10678:	1b243423          	sd	s2,424(s0)
   1067c:	1a943823          	sd	s1,432(s0)
   10680:	02813083          	ld	ra,40(sp)
   10684:	18f43823          	sd	a5,400(s0)
   10688:	02013403          	ld	s0,32(sp)
   1068c:	01813483          	ld	s1,24(sp)
   10690:	01013903          	ld	s2,16(sp)
   10694:	00813983          	ld	s3,8(sp)
   10698:	00013a03          	ld	s4,0(sp)
   1069c:	03010113          	addi	sp,sp,48
   106a0:	00008067          	ret

00000000000106a4 <__sfp>:
   106a4:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   106a8:	fd010113          	addi	sp,sp,-48
   106ac:	00913c23          	sd	s1,24(sp)
   106b0:	02113423          	sd	ra,40(sp)
   106b4:	02813023          	sd	s0,32(sp)
   106b8:	00050493          	mv	s1,a0
   106bc:	10078063          	beqz	a5,107bc <__sfp+0x118>
   106c0:	000136b7          	lui	a3,0x13
   106c4:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   106c8:	0b000813          	li	a6,176
   106cc:	0086a703          	lw	a4,8(a3)
   106d0:	08e05463          	blez	a4,10758 <__sfp+0xb4>
   106d4:	02071713          	slli	a4,a4,0x20
   106d8:	02075713          	srli	a4,a4,0x20
   106dc:	03070733          	mul	a4,a4,a6
   106e0:	0106b403          	ld	s0,16(a3)
   106e4:	00e40733          	add	a4,s0,a4
   106e8:	00c0006f          	j	106f4 <__sfp+0x50>
   106ec:	0b040413          	addi	s0,s0,176
   106f0:	06e40463          	beq	s0,a4,10758 <__sfp+0xb4>
   106f4:	01041783          	lh	a5,16(s0)
   106f8:	fe079ae3          	bnez	a5,106ec <__sfp+0x48>
   106fc:	ffff07b7          	lui	a5,0xffff0
   10700:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10704:	00f42823          	sw	a5,16(s0)
   10708:	0a042623          	sw	zero,172(s0)
   1070c:	00043023          	sd	zero,0(s0)
   10710:	00043423          	sd	zero,8(s0)
   10714:	00043c23          	sd	zero,24(s0)
   10718:	02042023          	sw	zero,32(s0)
   1071c:	02042423          	sw	zero,40(s0)
   10720:	00800613          	li	a2,8
   10724:	00000593          	li	a1,0
   10728:	0a440513          	addi	a0,s0,164
   1072c:	634000ef          	jal	10d60 <memset>
   10730:	04043c23          	sd	zero,88(s0)
   10734:	06042023          	sw	zero,96(s0)
   10738:	06043c23          	sd	zero,120(s0)
   1073c:	08042023          	sw	zero,128(s0)
   10740:	02813083          	ld	ra,40(sp)
   10744:	00040513          	mv	a0,s0
   10748:	02013403          	ld	s0,32(sp)
   1074c:	01813483          	ld	s1,24(sp)
   10750:	03010113          	addi	sp,sp,48
   10754:	00008067          	ret
   10758:	0006b403          	ld	s0,0(a3)
   1075c:	00040663          	beqz	s0,10768 <__sfp+0xc4>
   10760:	00040693          	mv	a3,s0
   10764:	f69ff06f          	j	106cc <__sfp+0x28>
   10768:	2d800593          	li	a1,728
   1076c:	00048513          	mv	a0,s1
   10770:	00d13423          	sd	a3,8(sp)
   10774:	43d000ef          	jal	113b0 <_malloc_r>
   10778:	00813683          	ld	a3,8(sp)
   1077c:	00050413          	mv	s0,a0
   10780:	04050263          	beqz	a0,107c4 <__sfp+0x120>
   10784:	00400793          	li	a5,4
   10788:	00f52423          	sw	a5,8(a0)
   1078c:	01850513          	addi	a0,a0,24
   10790:	00043023          	sd	zero,0(s0)
   10794:	00a43823          	sd	a0,16(s0)
   10798:	2c000613          	li	a2,704
   1079c:	00000593          	li	a1,0
   107a0:	00d13423          	sd	a3,8(sp)
   107a4:	5bc000ef          	jal	10d60 <memset>
   107a8:	00813683          	ld	a3,8(sp)
   107ac:	0b000813          	li	a6,176
   107b0:	0086b023          	sd	s0,0(a3)
   107b4:	00040693          	mv	a3,s0
   107b8:	f15ff06f          	j	106cc <__sfp+0x28>
   107bc:	da1ff0ef          	jal	1055c <global_stdio_init.part.0>
   107c0:	f01ff06f          	j	106c0 <__sfp+0x1c>
   107c4:	0006b023          	sd	zero,0(a3)
   107c8:	00c00793          	li	a5,12
   107cc:	00f4a023          	sw	a5,0(s1)
   107d0:	f71ff06f          	j	10740 <__sfp+0x9c>

00000000000107d4 <__sinit>:
   107d4:	04853783          	ld	a5,72(a0)
   107d8:	00078463          	beqz	a5,107e0 <__sinit+0xc>
   107dc:	00008067          	ret
   107e0:	000107b7          	lui	a5,0x10
   107e4:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   107e8:	4f078793          	addi	a5,a5,1264 # 104f0 <cleanup_stdio>
   107ec:	04f53423          	sd	a5,72(a0)
   107f0:	fe0716e3          	bnez	a4,107dc <__sinit+0x8>
   107f4:	d69ff06f          	j	1055c <global_stdio_init.part.0>

00000000000107f8 <__sfp_lock_acquire>:
   107f8:	00008067          	ret

00000000000107fc <__sfp_lock_release>:
   107fc:	00008067          	ret

0000000000010800 <__fp_lock_all>:
   10800:	00013637          	lui	a2,0x13
   10804:	000105b7          	lui	a1,0x10
   10808:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1080c:	4cc58593          	addi	a1,a1,1228 # 104cc <__fp_lock>
   10810:	00000513          	li	a0,0
   10814:	01c0006f          	j	10830 <_fwalk_sglue>

0000000000010818 <__fp_unlock_all>:
   10818:	00013637          	lui	a2,0x13
   1081c:	000105b7          	lui	a1,0x10
   10820:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10824:	55458593          	addi	a1,a1,1364 # 10554 <__fp_unlock>
   10828:	00000513          	li	a0,0
   1082c:	0040006f          	j	10830 <_fwalk_sglue>

0000000000010830 <_fwalk_sglue>:
   10830:	fb010113          	addi	sp,sp,-80
   10834:	03213823          	sd	s2,48(sp)
   10838:	03313423          	sd	s3,40(sp)
   1083c:	03413023          	sd	s4,32(sp)
   10840:	01513c23          	sd	s5,24(sp)
   10844:	01613823          	sd	s6,16(sp)
   10848:	01713423          	sd	s7,8(sp)
   1084c:	01813023          	sd	s8,0(sp)
   10850:	04113423          	sd	ra,72(sp)
   10854:	04813023          	sd	s0,64(sp)
   10858:	02913c23          	sd	s1,56(sp)
   1085c:	00060993          	mv	s3,a2
   10860:	00050a93          	mv	s5,a0
   10864:	00058b13          	mv	s6,a1
   10868:	00000913          	li	s2,0
   1086c:	0b000b93          	li	s7,176
   10870:	00100c13          	li	s8,1
   10874:	fff00a13          	li	s4,-1
   10878:	0089a483          	lw	s1,8(s3)
   1087c:	04905263          	blez	s1,108c0 <_fwalk_sglue+0x90>
   10880:	02049493          	slli	s1,s1,0x20
   10884:	0204d493          	srli	s1,s1,0x20
   10888:	037484b3          	mul	s1,s1,s7
   1088c:	0109b403          	ld	s0,16(s3)
   10890:	009404b3          	add	s1,s0,s1
   10894:	01045783          	lhu	a5,16(s0)
   10898:	02fc7063          	bgeu	s8,a5,108b8 <_fwalk_sglue+0x88>
   1089c:	01241783          	lh	a5,18(s0)
   108a0:	00040593          	mv	a1,s0
   108a4:	000a8513          	mv	a0,s5
   108a8:	01478863          	beq	a5,s4,108b8 <_fwalk_sglue+0x88>
   108ac:	000b00e7          	jalr	s6
   108b0:	01256933          	or	s2,a0,s2
   108b4:	0009091b          	sext.w	s2,s2
   108b8:	0b040413          	addi	s0,s0,176
   108bc:	fc941ce3          	bne	s0,s1,10894 <_fwalk_sglue+0x64>
   108c0:	0009b983          	ld	s3,0(s3)
   108c4:	fa099ae3          	bnez	s3,10878 <_fwalk_sglue+0x48>
   108c8:	04813083          	ld	ra,72(sp)
   108cc:	04013403          	ld	s0,64(sp)
   108d0:	03813483          	ld	s1,56(sp)
   108d4:	02813983          	ld	s3,40(sp)
   108d8:	02013a03          	ld	s4,32(sp)
   108dc:	01813a83          	ld	s5,24(sp)
   108e0:	01013b03          	ld	s6,16(sp)
   108e4:	00813b83          	ld	s7,8(sp)
   108e8:	00013c03          	ld	s8,0(sp)
   108ec:	00090513          	mv	a0,s2
   108f0:	03013903          	ld	s2,48(sp)
   108f4:	05010113          	addi	sp,sp,80
   108f8:	00008067          	ret

00000000000108fc <__sread>:
   108fc:	ff010113          	addi	sp,sp,-16
   10900:	00813023          	sd	s0,0(sp)
   10904:	00058413          	mv	s0,a1
   10908:	01259583          	lh	a1,18(a1)
   1090c:	00113423          	sd	ra,8(sp)
   10910:	2ec000ef          	jal	10bfc <_read_r>
   10914:	02054063          	bltz	a0,10934 <__sread+0x38>
   10918:	09043783          	ld	a5,144(s0)
   1091c:	00813083          	ld	ra,8(sp)
   10920:	00a787b3          	add	a5,a5,a0
   10924:	08f43823          	sd	a5,144(s0)
   10928:	00013403          	ld	s0,0(sp)
   1092c:	01010113          	addi	sp,sp,16
   10930:	00008067          	ret
   10934:	01045783          	lhu	a5,16(s0)
   10938:	fffff737          	lui	a4,0xfffff
   1093c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10940:	00e7f7b3          	and	a5,a5,a4
   10944:	00813083          	ld	ra,8(sp)
   10948:	00f41823          	sh	a5,16(s0)
   1094c:	00013403          	ld	s0,0(sp)
   10950:	01010113          	addi	sp,sp,16
   10954:	00008067          	ret

0000000000010958 <__seofread>:
   10958:	00000513          	li	a0,0
   1095c:	00008067          	ret

0000000000010960 <__swrite>:
   10960:	01059783          	lh	a5,16(a1)
   10964:	fd010113          	addi	sp,sp,-48
   10968:	00068313          	mv	t1,a3
   1096c:	02113423          	sd	ra,40(sp)
   10970:	1007f693          	andi	a3,a5,256
   10974:	00058713          	mv	a4,a1
   10978:	00060893          	mv	a7,a2
   1097c:	00050813          	mv	a6,a0
   10980:	02069863          	bnez	a3,109b0 <__swrite+0x50>
   10984:	fffff6b7          	lui	a3,0xfffff
   10988:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   1098c:	02813083          	ld	ra,40(sp)
   10990:	00d7f7b3          	and	a5,a5,a3
   10994:	01271583          	lh	a1,18(a4)
   10998:	00f71823          	sh	a5,16(a4)
   1099c:	00030693          	mv	a3,t1
   109a0:	00088613          	mv	a2,a7
   109a4:	00080513          	mv	a0,a6
   109a8:	03010113          	addi	sp,sp,48
   109ac:	2b80006f          	j	10c64 <_write_r>
   109b0:	01259583          	lh	a1,18(a1)
   109b4:	00c13823          	sd	a2,16(sp)
   109b8:	00200693          	li	a3,2
   109bc:	00000613          	li	a2,0
   109c0:	00613c23          	sd	t1,24(sp)
   109c4:	00e13023          	sd	a4,0(sp)
   109c8:	00a13423          	sd	a0,8(sp)
   109cc:	1c8000ef          	jal	10b94 <_lseek_r>
   109d0:	00013703          	ld	a4,0(sp)
   109d4:	01813303          	ld	t1,24(sp)
   109d8:	01013883          	ld	a7,16(sp)
   109dc:	01071783          	lh	a5,16(a4)
   109e0:	00813803          	ld	a6,8(sp)
   109e4:	fa1ff06f          	j	10984 <__swrite+0x24>

00000000000109e8 <__sseek>:
   109e8:	ff010113          	addi	sp,sp,-16
   109ec:	00813023          	sd	s0,0(sp)
   109f0:	00058413          	mv	s0,a1
   109f4:	01259583          	lh	a1,18(a1)
   109f8:	00113423          	sd	ra,8(sp)
   109fc:	198000ef          	jal	10b94 <_lseek_r>
   10a00:	fff00713          	li	a4,-1
   10a04:	01041783          	lh	a5,16(s0)
   10a08:	02e50263          	beq	a0,a4,10a2c <__sseek+0x44>
   10a0c:	00001737          	lui	a4,0x1
   10a10:	00e7e7b3          	or	a5,a5,a4
   10a14:	00813083          	ld	ra,8(sp)
   10a18:	08a43823          	sd	a0,144(s0)
   10a1c:	00f41823          	sh	a5,16(s0)
   10a20:	00013403          	ld	s0,0(sp)
   10a24:	01010113          	addi	sp,sp,16
   10a28:	00008067          	ret
   10a2c:	80050713          	addi	a4,a0,-2048
   10a30:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10a34:	00e7f7b3          	and	a5,a5,a4
   10a38:	00813083          	ld	ra,8(sp)
   10a3c:	00f41823          	sh	a5,16(s0)
   10a40:	00013403          	ld	s0,0(sp)
   10a44:	01010113          	addi	sp,sp,16
   10a48:	00008067          	ret

0000000000010a4c <__sclose>:
   10a4c:	01259583          	lh	a1,18(a1)
   10a50:	0040006f          	j	10a54 <_close_r>

0000000000010a54 <_close_r>:
   10a54:	fe010113          	addi	sp,sp,-32
   10a58:	00813823          	sd	s0,16(sp)
   10a5c:	00913423          	sd	s1,8(sp)
   10a60:	00050493          	mv	s1,a0
   10a64:	00058513          	mv	a0,a1
   10a68:	00113c23          	sd	ra,24(sp)
   10a6c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a70:	7e4010ef          	jal	12254 <_close>
   10a74:	fff00793          	li	a5,-1
   10a78:	00f50c63          	beq	a0,a5,10a90 <_close_r+0x3c>
   10a7c:	01813083          	ld	ra,24(sp)
   10a80:	01013403          	ld	s0,16(sp)
   10a84:	00813483          	ld	s1,8(sp)
   10a88:	02010113          	addi	sp,sp,32
   10a8c:	00008067          	ret
   10a90:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a94:	fe0784e3          	beqz	a5,10a7c <_close_r+0x28>
   10a98:	01813083          	ld	ra,24(sp)
   10a9c:	01013403          	ld	s0,16(sp)
   10aa0:	00f4a023          	sw	a5,0(s1)
   10aa4:	00813483          	ld	s1,8(sp)
   10aa8:	02010113          	addi	sp,sp,32
   10aac:	00008067          	ret

0000000000010ab0 <_reclaim_reent>:
   10ab0:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10ab4:	0ca78e63          	beq	a5,a0,10b90 <_reclaim_reent+0xe0>
   10ab8:	06853583          	ld	a1,104(a0)
   10abc:	fd010113          	addi	sp,sp,-48
   10ac0:	00913c23          	sd	s1,24(sp)
   10ac4:	02113423          	sd	ra,40(sp)
   10ac8:	02813023          	sd	s0,32(sp)
   10acc:	00050493          	mv	s1,a0
   10ad0:	04058863          	beqz	a1,10b20 <_reclaim_reent+0x70>
   10ad4:	01213823          	sd	s2,16(sp)
   10ad8:	01313423          	sd	s3,8(sp)
   10adc:	00000913          	li	s2,0
   10ae0:	20000993          	li	s3,512
   10ae4:	012587b3          	add	a5,a1,s2
   10ae8:	0007b403          	ld	s0,0(a5)
   10aec:	00040e63          	beqz	s0,10b08 <_reclaim_reent+0x58>
   10af0:	00040593          	mv	a1,s0
   10af4:	00043403          	ld	s0,0(s0)
   10af8:	00048513          	mv	a0,s1
   10afc:	5b0000ef          	jal	110ac <_free_r>
   10b00:	fe0418e3          	bnez	s0,10af0 <_reclaim_reent+0x40>
   10b04:	0684b583          	ld	a1,104(s1)
   10b08:	00890913          	addi	s2,s2,8
   10b0c:	fd391ce3          	bne	s2,s3,10ae4 <_reclaim_reent+0x34>
   10b10:	00048513          	mv	a0,s1
   10b14:	598000ef          	jal	110ac <_free_r>
   10b18:	01013903          	ld	s2,16(sp)
   10b1c:	00813983          	ld	s3,8(sp)
   10b20:	0504b583          	ld	a1,80(s1)
   10b24:	00058663          	beqz	a1,10b30 <_reclaim_reent+0x80>
   10b28:	00048513          	mv	a0,s1
   10b2c:	580000ef          	jal	110ac <_free_r>
   10b30:	0604b403          	ld	s0,96(s1)
   10b34:	00040c63          	beqz	s0,10b4c <_reclaim_reent+0x9c>
   10b38:	00040593          	mv	a1,s0
   10b3c:	00043403          	ld	s0,0(s0)
   10b40:	00048513          	mv	a0,s1
   10b44:	568000ef          	jal	110ac <_free_r>
   10b48:	fe0418e3          	bnez	s0,10b38 <_reclaim_reent+0x88>
   10b4c:	0784b583          	ld	a1,120(s1)
   10b50:	00058663          	beqz	a1,10b5c <_reclaim_reent+0xac>
   10b54:	00048513          	mv	a0,s1
   10b58:	554000ef          	jal	110ac <_free_r>
   10b5c:	0484b783          	ld	a5,72(s1)
   10b60:	00078e63          	beqz	a5,10b7c <_reclaim_reent+0xcc>
   10b64:	02013403          	ld	s0,32(sp)
   10b68:	02813083          	ld	ra,40(sp)
   10b6c:	00048513          	mv	a0,s1
   10b70:	01813483          	ld	s1,24(sp)
   10b74:	03010113          	addi	sp,sp,48
   10b78:	00078067          	jr	a5
   10b7c:	02813083          	ld	ra,40(sp)
   10b80:	02013403          	ld	s0,32(sp)
   10b84:	01813483          	ld	s1,24(sp)
   10b88:	03010113          	addi	sp,sp,48
   10b8c:	00008067          	ret
   10b90:	00008067          	ret

0000000000010b94 <_lseek_r>:
   10b94:	fe010113          	addi	sp,sp,-32
   10b98:	00058793          	mv	a5,a1
   10b9c:	00813823          	sd	s0,16(sp)
   10ba0:	00913423          	sd	s1,8(sp)
   10ba4:	00060593          	mv	a1,a2
   10ba8:	00050493          	mv	s1,a0
   10bac:	00068613          	mv	a2,a3
   10bb0:	00078513          	mv	a0,a5
   10bb4:	00113c23          	sd	ra,24(sp)
   10bb8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bbc:	708010ef          	jal	122c4 <_lseek>
   10bc0:	fff00793          	li	a5,-1
   10bc4:	00f50c63          	beq	a0,a5,10bdc <_lseek_r+0x48>
   10bc8:	01813083          	ld	ra,24(sp)
   10bcc:	01013403          	ld	s0,16(sp)
   10bd0:	00813483          	ld	s1,8(sp)
   10bd4:	02010113          	addi	sp,sp,32
   10bd8:	00008067          	ret
   10bdc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10be0:	fe0784e3          	beqz	a5,10bc8 <_lseek_r+0x34>
   10be4:	01813083          	ld	ra,24(sp)
   10be8:	01013403          	ld	s0,16(sp)
   10bec:	00f4a023          	sw	a5,0(s1)
   10bf0:	00813483          	ld	s1,8(sp)
   10bf4:	02010113          	addi	sp,sp,32
   10bf8:	00008067          	ret

0000000000010bfc <_read_r>:
   10bfc:	fe010113          	addi	sp,sp,-32
   10c00:	00058793          	mv	a5,a1
   10c04:	00813823          	sd	s0,16(sp)
   10c08:	00913423          	sd	s1,8(sp)
   10c0c:	00060593          	mv	a1,a2
   10c10:	00050493          	mv	s1,a0
   10c14:	00068613          	mv	a2,a3
   10c18:	00078513          	mv	a0,a5
   10c1c:	00113c23          	sd	ra,24(sp)
   10c20:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c24:	6e0010ef          	jal	12304 <_read>
   10c28:	fff00793          	li	a5,-1
   10c2c:	00f50c63          	beq	a0,a5,10c44 <_read_r+0x48>
   10c30:	01813083          	ld	ra,24(sp)
   10c34:	01013403          	ld	s0,16(sp)
   10c38:	00813483          	ld	s1,8(sp)
   10c3c:	02010113          	addi	sp,sp,32
   10c40:	00008067          	ret
   10c44:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c48:	fe0784e3          	beqz	a5,10c30 <_read_r+0x34>
   10c4c:	01813083          	ld	ra,24(sp)
   10c50:	01013403          	ld	s0,16(sp)
   10c54:	00f4a023          	sw	a5,0(s1)
   10c58:	00813483          	ld	s1,8(sp)
   10c5c:	02010113          	addi	sp,sp,32
   10c60:	00008067          	ret

0000000000010c64 <_write_r>:
   10c64:	fe010113          	addi	sp,sp,-32
   10c68:	00058793          	mv	a5,a1
   10c6c:	00813823          	sd	s0,16(sp)
   10c70:	00913423          	sd	s1,8(sp)
   10c74:	00060593          	mv	a1,a2
   10c78:	00050493          	mv	s1,a0
   10c7c:	00068613          	mv	a2,a3
   10c80:	00078513          	mv	a0,a5
   10c84:	00113c23          	sd	ra,24(sp)
   10c88:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c8c:	730010ef          	jal	123bc <_write>
   10c90:	fff00793          	li	a5,-1
   10c94:	00f50c63          	beq	a0,a5,10cac <_write_r+0x48>
   10c98:	01813083          	ld	ra,24(sp)
   10c9c:	01013403          	ld	s0,16(sp)
   10ca0:	00813483          	ld	s1,8(sp)
   10ca4:	02010113          	addi	sp,sp,32
   10ca8:	00008067          	ret
   10cac:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10cb0:	fe0784e3          	beqz	a5,10c98 <_write_r+0x34>
   10cb4:	01813083          	ld	ra,24(sp)
   10cb8:	01013403          	ld	s0,16(sp)
   10cbc:	00f4a023          	sw	a5,0(s1)
   10cc0:	00813483          	ld	s1,8(sp)
   10cc4:	02010113          	addi	sp,sp,32
   10cc8:	00008067          	ret

0000000000010ccc <__libc_init_array>:
   10ccc:	fe010113          	addi	sp,sp,-32
   10cd0:	00813823          	sd	s0,16(sp)
   10cd4:	01213023          	sd	s2,0(sp)
   10cd8:	00013437          	lui	s0,0x13
   10cdc:	00013937          	lui	s2,0x13
   10ce0:	00113c23          	sd	ra,24(sp)
   10ce4:	00913423          	sd	s1,8(sp)
   10ce8:	00090913          	mv	s2,s2
   10cec:	00040413          	mv	s0,s0
   10cf0:	02890263          	beq	s2,s0,10d14 <__libc_init_array+0x48>
   10cf4:	40890933          	sub	s2,s2,s0
   10cf8:	40395913          	srai	s2,s2,0x3
   10cfc:	00000493          	li	s1,0
   10d00:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10d04:	00148493          	addi	s1,s1,1
   10d08:	00840413          	addi	s0,s0,8
   10d0c:	000780e7          	jalr	a5
   10d10:	ff24e8e3          	bltu	s1,s2,10d00 <__libc_init_array+0x34>
   10d14:	00013937          	lui	s2,0x13
   10d18:	00013437          	lui	s0,0x13
   10d1c:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10d20:	00040413          	mv	s0,s0
   10d24:	02890263          	beq	s2,s0,10d48 <__libc_init_array+0x7c>
   10d28:	40890933          	sub	s2,s2,s0
   10d2c:	40395913          	srai	s2,s2,0x3
   10d30:	00000493          	li	s1,0
   10d34:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10d38:	00148493          	addi	s1,s1,1
   10d3c:	00840413          	addi	s0,s0,8
   10d40:	000780e7          	jalr	a5
   10d44:	ff24e8e3          	bltu	s1,s2,10d34 <__libc_init_array+0x68>
   10d48:	01813083          	ld	ra,24(sp)
   10d4c:	01013403          	ld	s0,16(sp)
   10d50:	00813483          	ld	s1,8(sp)
   10d54:	00013903          	ld	s2,0(sp)
   10d58:	02010113          	addi	sp,sp,32
   10d5c:	00008067          	ret

0000000000010d60 <memset>:
   10d60:	00f00313          	li	t1,15
   10d64:	00050713          	mv	a4,a0
   10d68:	02c37a63          	bgeu	t1,a2,10d9c <memset+0x3c>
   10d6c:	00f77793          	andi	a5,a4,15
   10d70:	0a079063          	bnez	a5,10e10 <memset+0xb0>
   10d74:	06059e63          	bnez	a1,10df0 <memset+0x90>
   10d78:	ff067693          	andi	a3,a2,-16
   10d7c:	00f67613          	andi	a2,a2,15
   10d80:	00e686b3          	add	a3,a3,a4
   10d84:	00b73023          	sd	a1,0(a4)
   10d88:	00b73423          	sd	a1,8(a4)
   10d8c:	01070713          	addi	a4,a4,16
   10d90:	fed76ae3          	bltu	a4,a3,10d84 <memset+0x24>
   10d94:	00061463          	bnez	a2,10d9c <memset+0x3c>
   10d98:	00008067          	ret
   10d9c:	40c306b3          	sub	a3,t1,a2
   10da0:	00269693          	slli	a3,a3,0x2
   10da4:	00000297          	auipc	t0,0x0
   10da8:	005686b3          	add	a3,a3,t0
   10dac:	00c68067          	jr	12(a3)
   10db0:	00b70723          	sb	a1,14(a4)
   10db4:	00b706a3          	sb	a1,13(a4)
   10db8:	00b70623          	sb	a1,12(a4)
   10dbc:	00b705a3          	sb	a1,11(a4)
   10dc0:	00b70523          	sb	a1,10(a4)
   10dc4:	00b704a3          	sb	a1,9(a4)
   10dc8:	00b70423          	sb	a1,8(a4)
   10dcc:	00b703a3          	sb	a1,7(a4)
   10dd0:	00b70323          	sb	a1,6(a4)
   10dd4:	00b702a3          	sb	a1,5(a4)
   10dd8:	00b70223          	sb	a1,4(a4)
   10ddc:	00b701a3          	sb	a1,3(a4)
   10de0:	00b70123          	sb	a1,2(a4)
   10de4:	00b700a3          	sb	a1,1(a4)
   10de8:	00b70023          	sb	a1,0(a4)
   10dec:	00008067          	ret
   10df0:	0ff5f593          	zext.b	a1,a1
   10df4:	00859693          	slli	a3,a1,0x8
   10df8:	00d5e5b3          	or	a1,a1,a3
   10dfc:	01059693          	slli	a3,a1,0x10
   10e00:	00d5e5b3          	or	a1,a1,a3
   10e04:	02059693          	slli	a3,a1,0x20
   10e08:	00d5e5b3          	or	a1,a1,a3
   10e0c:	f6dff06f          	j	10d78 <memset+0x18>
   10e10:	00279693          	slli	a3,a5,0x2
   10e14:	00000297          	auipc	t0,0x0
   10e18:	005686b3          	add	a3,a3,t0
   10e1c:	00008293          	mv	t0,ra
   10e20:	f98680e7          	jalr	-104(a3)
   10e24:	00028093          	mv	ra,t0
   10e28:	ff078793          	addi	a5,a5,-16
   10e2c:	40f70733          	sub	a4,a4,a5
   10e30:	00f60633          	add	a2,a2,a5
   10e34:	f6c374e3          	bgeu	t1,a2,10d9c <memset+0x3c>
   10e38:	f3dff06f          	j	10d74 <memset+0x14>

0000000000010e3c <__call_exitprocs>:
   10e3c:	fb010113          	addi	sp,sp,-80
   10e40:	03413023          	sd	s4,32(sp)
   10e44:	03213823          	sd	s2,48(sp)
   10e48:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10e4c:	04113423          	sd	ra,72(sp)
   10e50:	06090e63          	beqz	s2,10ecc <__call_exitprocs+0x90>
   10e54:	03313423          	sd	s3,40(sp)
   10e58:	01513c23          	sd	s5,24(sp)
   10e5c:	01613823          	sd	s6,16(sp)
   10e60:	01713423          	sd	s7,8(sp)
   10e64:	04813023          	sd	s0,64(sp)
   10e68:	02913c23          	sd	s1,56(sp)
   10e6c:	01813023          	sd	s8,0(sp)
   10e70:	00050b13          	mv	s6,a0
   10e74:	00058b93          	mv	s7,a1
   10e78:	fff00993          	li	s3,-1
   10e7c:	00100a93          	li	s5,1
   10e80:	00892403          	lw	s0,8(s2)
   10e84:	fff4041b          	addiw	s0,s0,-1
   10e88:	02044463          	bltz	s0,10eb0 <__call_exitprocs+0x74>
   10e8c:	01090493          	addi	s1,s2,16
   10e90:	00341793          	slli	a5,s0,0x3
   10e94:	00f484b3          	add	s1,s1,a5
   10e98:	040b8463          	beqz	s7,10ee0 <__call_exitprocs+0xa4>
   10e9c:	2004b783          	ld	a5,512(s1)
   10ea0:	05778063          	beq	a5,s7,10ee0 <__call_exitprocs+0xa4>
   10ea4:	fff4041b          	addiw	s0,s0,-1
   10ea8:	ff848493          	addi	s1,s1,-8
   10eac:	ff3418e3          	bne	s0,s3,10e9c <__call_exitprocs+0x60>
   10eb0:	04013403          	ld	s0,64(sp)
   10eb4:	03813483          	ld	s1,56(sp)
   10eb8:	02813983          	ld	s3,40(sp)
   10ebc:	01813a83          	ld	s5,24(sp)
   10ec0:	01013b03          	ld	s6,16(sp)
   10ec4:	00813b83          	ld	s7,8(sp)
   10ec8:	00013c03          	ld	s8,0(sp)
   10ecc:	04813083          	ld	ra,72(sp)
   10ed0:	03013903          	ld	s2,48(sp)
   10ed4:	02013a03          	ld	s4,32(sp)
   10ed8:	05010113          	addi	sp,sp,80
   10edc:	00008067          	ret
   10ee0:	00892783          	lw	a5,8(s2)
   10ee4:	0004b683          	ld	a3,0(s1)
   10ee8:	fff7879b          	addiw	a5,a5,-1
   10eec:	06878a63          	beq	a5,s0,10f60 <__call_exitprocs+0x124>
   10ef0:	0004b023          	sd	zero,0(s1)
   10ef4:	02068663          	beqz	a3,10f20 <__call_exitprocs+0xe4>
   10ef8:	31092783          	lw	a5,784(s2)
   10efc:	008a973b          	sllw	a4,s5,s0
   10f00:	00892c03          	lw	s8,8(s2)
   10f04:	00e7f7b3          	and	a5,a5,a4
   10f08:	02079463          	bnez	a5,10f30 <__call_exitprocs+0xf4>
   10f0c:	000680e7          	jalr	a3
   10f10:	00892703          	lw	a4,8(s2)
   10f14:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10f18:	03871e63          	bne	a4,s8,10f54 <__call_exitprocs+0x118>
   10f1c:	03279c63          	bne	a5,s2,10f54 <__call_exitprocs+0x118>
   10f20:	fff4041b          	addiw	s0,s0,-1
   10f24:	ff848493          	addi	s1,s1,-8
   10f28:	f73418e3          	bne	s0,s3,10e98 <__call_exitprocs+0x5c>
   10f2c:	f85ff06f          	j	10eb0 <__call_exitprocs+0x74>
   10f30:	31492783          	lw	a5,788(s2)
   10f34:	1004b583          	ld	a1,256(s1)
   10f38:	00f77733          	and	a4,a4,a5
   10f3c:	02071663          	bnez	a4,10f68 <__call_exitprocs+0x12c>
   10f40:	000b0513          	mv	a0,s6
   10f44:	000680e7          	jalr	a3
   10f48:	00892703          	lw	a4,8(s2)
   10f4c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10f50:	fd8706e3          	beq	a4,s8,10f1c <__call_exitprocs+0xe0>
   10f54:	f4078ee3          	beqz	a5,10eb0 <__call_exitprocs+0x74>
   10f58:	00078913          	mv	s2,a5
   10f5c:	f25ff06f          	j	10e80 <__call_exitprocs+0x44>
   10f60:	00892423          	sw	s0,8(s2)
   10f64:	f91ff06f          	j	10ef4 <__call_exitprocs+0xb8>
   10f68:	00058513          	mv	a0,a1
   10f6c:	000680e7          	jalr	a3
   10f70:	fa1ff06f          	j	10f10 <__call_exitprocs+0xd4>

0000000000010f74 <atexit>:
   10f74:	00050593          	mv	a1,a0
   10f78:	00000693          	li	a3,0
   10f7c:	00000613          	li	a2,0
   10f80:	00000513          	li	a0,0
   10f84:	2340106f          	j	121b8 <__register_exitproc>

0000000000010f88 <_malloc_trim_r>:
   10f88:	fd010113          	addi	sp,sp,-48
   10f8c:	01213823          	sd	s2,16(sp)
   10f90:	00013937          	lui	s2,0x13
   10f94:	02813023          	sd	s0,32(sp)
   10f98:	00913c23          	sd	s1,24(sp)
   10f9c:	01313423          	sd	s3,8(sp)
   10fa0:	00058413          	mv	s0,a1
   10fa4:	02113423          	sd	ra,40(sp)
   10fa8:	00050993          	mv	s3,a0
   10fac:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10fb0:	4e5000ef          	jal	11c94 <__malloc_lock>
   10fb4:	01093783          	ld	a5,16(s2)
   10fb8:	00001737          	lui	a4,0x1
   10fbc:	0087b483          	ld	s1,8(a5)
   10fc0:	ffc4f493          	andi	s1,s1,-4
   10fc4:	7ff48793          	addi	a5,s1,2047
   10fc8:	7e078793          	addi	a5,a5,2016
   10fcc:	40878433          	sub	s0,a5,s0
   10fd0:	00c45413          	srli	s0,s0,0xc
   10fd4:	fff40413          	addi	s0,s0,-1
   10fd8:	00c41413          	slli	s0,s0,0xc
   10fdc:	00e44e63          	blt	s0,a4,10ff8 <_malloc_trim_r+0x70>
   10fe0:	00000593          	li	a1,0
   10fe4:	00098513          	mv	a0,s3
   10fe8:	118010ef          	jal	12100 <_sbrk_r>
   10fec:	01093783          	ld	a5,16(s2)
   10ff0:	009787b3          	add	a5,a5,s1
   10ff4:	02f50663          	beq	a0,a5,11020 <_malloc_trim_r+0x98>
   10ff8:	00098513          	mv	a0,s3
   10ffc:	49d000ef          	jal	11c98 <__malloc_unlock>
   11000:	02813083          	ld	ra,40(sp)
   11004:	02013403          	ld	s0,32(sp)
   11008:	01813483          	ld	s1,24(sp)
   1100c:	01013903          	ld	s2,16(sp)
   11010:	00813983          	ld	s3,8(sp)
   11014:	00000513          	li	a0,0
   11018:	03010113          	addi	sp,sp,48
   1101c:	00008067          	ret
   11020:	408005b3          	neg	a1,s0
   11024:	00098513          	mv	a0,s3
   11028:	0d8010ef          	jal	12100 <_sbrk_r>
   1102c:	fff00793          	li	a5,-1
   11030:	04f50463          	beq	a0,a5,11078 <_malloc_trim_r+0xf0>
   11034:	01093683          	ld	a3,16(s2)
   11038:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1103c:	408484b3          	sub	s1,s1,s0
   11040:	0014e493          	ori	s1,s1,1
   11044:	00098513          	mv	a0,s3
   11048:	408787bb          	subw	a5,a5,s0
   1104c:	0096b423          	sd	s1,8(a3)
   11050:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11054:	445000ef          	jal	11c98 <__malloc_unlock>
   11058:	02813083          	ld	ra,40(sp)
   1105c:	02013403          	ld	s0,32(sp)
   11060:	01813483          	ld	s1,24(sp)
   11064:	01013903          	ld	s2,16(sp)
   11068:	00813983          	ld	s3,8(sp)
   1106c:	00100513          	li	a0,1
   11070:	03010113          	addi	sp,sp,48
   11074:	00008067          	ret
   11078:	00000593          	li	a1,0
   1107c:	00098513          	mv	a0,s3
   11080:	080010ef          	jal	12100 <_sbrk_r>
   11084:	01093703          	ld	a4,16(s2)
   11088:	01f00693          	li	a3,31
   1108c:	40e507b3          	sub	a5,a0,a4
   11090:	f6f6d4e3          	bge	a3,a5,10ff8 <_malloc_trim_r+0x70>
   11094:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11098:	0017e793          	ori	a5,a5,1
   1109c:	40c50533          	sub	a0,a0,a2
   110a0:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   110a4:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   110a8:	f51ff06f          	j	10ff8 <_malloc_trim_r+0x70>

00000000000110ac <_free_r>:
   110ac:	12058863          	beqz	a1,111dc <_free_r+0x130>
   110b0:	fe010113          	addi	sp,sp,-32
   110b4:	00813823          	sd	s0,16(sp)
   110b8:	00b13423          	sd	a1,8(sp)
   110bc:	00050413          	mv	s0,a0
   110c0:	00113c23          	sd	ra,24(sp)
   110c4:	3d1000ef          	jal	11c94 <__malloc_lock>
   110c8:	00813583          	ld	a1,8(sp)
   110cc:	00013837          	lui	a6,0x13
   110d0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   110d4:	ff85b503          	ld	a0,-8(a1)
   110d8:	ff058713          	addi	a4,a1,-16
   110dc:	01083883          	ld	a7,16(a6)
   110e0:	ffe57793          	andi	a5,a0,-2
   110e4:	00f70633          	add	a2,a4,a5
   110e8:	00863683          	ld	a3,8(a2)
   110ec:	00157313          	andi	t1,a0,1
   110f0:	ffc6f693          	andi	a3,a3,-4
   110f4:	18c88e63          	beq	a7,a2,11290 <_free_r+0x1e4>
   110f8:	00d63423          	sd	a3,8(a2)
   110fc:	00d608b3          	add	a7,a2,a3
   11100:	0088b883          	ld	a7,8(a7)
   11104:	0018f893          	andi	a7,a7,1
   11108:	08031e63          	bnez	t1,111a4 <_free_r+0xf8>
   1110c:	ff05b303          	ld	t1,-16(a1)
   11110:	000135b7          	lui	a1,0x13
   11114:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11118:	40670733          	sub	a4,a4,t1
   1111c:	01073503          	ld	a0,16(a4)
   11120:	006787b3          	add	a5,a5,t1
   11124:	14b50063          	beq	a0,a1,11264 <_free_r+0x1b8>
   11128:	01873303          	ld	t1,24(a4)
   1112c:	00653c23          	sd	t1,24(a0)
   11130:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11134:	1a088263          	beqz	a7,112d8 <_free_r+0x22c>
   11138:	0017e693          	ori	a3,a5,1
   1113c:	00d73423          	sd	a3,8(a4)
   11140:	00f63023          	sd	a5,0(a2)
   11144:	1ff00693          	li	a3,511
   11148:	0af6e663          	bltu	a3,a5,111f4 <_free_r+0x148>
   1114c:	0037d793          	srli	a5,a5,0x3
   11150:	00179693          	slli	a3,a5,0x1
   11154:	0026869b          	addiw	a3,a3,2
   11158:	00369693          	slli	a3,a3,0x3
   1115c:	00883503          	ld	a0,8(a6)
   11160:	00d806b3          	add	a3,a6,a3
   11164:	0006b583          	ld	a1,0(a3)
   11168:	4027d61b          	sraiw	a2,a5,0x2
   1116c:	00100793          	li	a5,1
   11170:	00c797b3          	sll	a5,a5,a2
   11174:	00a7e7b3          	or	a5,a5,a0
   11178:	ff068613          	addi	a2,a3,-16
   1117c:	00b73823          	sd	a1,16(a4)
   11180:	00c73c23          	sd	a2,24(a4)
   11184:	00f83423          	sd	a5,8(a6)
   11188:	00e6b023          	sd	a4,0(a3)
   1118c:	00e5bc23          	sd	a4,24(a1)
   11190:	00040513          	mv	a0,s0
   11194:	01013403          	ld	s0,16(sp)
   11198:	01813083          	ld	ra,24(sp)
   1119c:	02010113          	addi	sp,sp,32
   111a0:	2f90006f          	j	11c98 <__malloc_unlock>
   111a4:	02089e63          	bnez	a7,111e0 <_free_r+0x134>
   111a8:	000135b7          	lui	a1,0x13
   111ac:	00d787b3          	add	a5,a5,a3
   111b0:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   111b4:	01063683          	ld	a3,16(a2)
   111b8:	0017e893          	ori	a7,a5,1
   111bc:	00f70533          	add	a0,a4,a5
   111c0:	16b68663          	beq	a3,a1,1132c <_free_r+0x280>
   111c4:	01863603          	ld	a2,24(a2)
   111c8:	00c6bc23          	sd	a2,24(a3)
   111cc:	00d63823          	sd	a3,16(a2)
   111d0:	01173423          	sd	a7,8(a4)
   111d4:	00f53023          	sd	a5,0(a0)
   111d8:	f6dff06f          	j	11144 <_free_r+0x98>
   111dc:	00008067          	ret
   111e0:	00156513          	ori	a0,a0,1
   111e4:	fea5bc23          	sd	a0,-8(a1)
   111e8:	00f63023          	sd	a5,0(a2)
   111ec:	1ff00693          	li	a3,511
   111f0:	f4f6fee3          	bgeu	a3,a5,1114c <_free_r+0xa0>
   111f4:	0097d693          	srli	a3,a5,0x9
   111f8:	00400613          	li	a2,4
   111fc:	0ed66263          	bltu	a2,a3,112e0 <_free_r+0x234>
   11200:	0067d693          	srli	a3,a5,0x6
   11204:	00169593          	slli	a1,a3,0x1
   11208:	0725859b          	addiw	a1,a1,114
   1120c:	00359593          	slli	a1,a1,0x3
   11210:	0386861b          	addiw	a2,a3,56
   11214:	00b805b3          	add	a1,a6,a1
   11218:	0005b683          	ld	a3,0(a1)
   1121c:	ff058593          	addi	a1,a1,-16
   11220:	00d59863          	bne	a1,a3,11230 <_free_r+0x184>
   11224:	1240006f          	j	11348 <_free_r+0x29c>
   11228:	0106b683          	ld	a3,16(a3)
   1122c:	00d58863          	beq	a1,a3,1123c <_free_r+0x190>
   11230:	0086b603          	ld	a2,8(a3)
   11234:	ffc67613          	andi	a2,a2,-4
   11238:	fec7e8e3          	bltu	a5,a2,11228 <_free_r+0x17c>
   1123c:	0186b583          	ld	a1,24(a3)
   11240:	00b73c23          	sd	a1,24(a4)
   11244:	00d73823          	sd	a3,16(a4)
   11248:	00040513          	mv	a0,s0
   1124c:	01013403          	ld	s0,16(sp)
   11250:	01813083          	ld	ra,24(sp)
   11254:	00e5b823          	sd	a4,16(a1)
   11258:	00e6bc23          	sd	a4,24(a3)
   1125c:	02010113          	addi	sp,sp,32
   11260:	2390006f          	j	11c98 <__malloc_unlock>
   11264:	0a089263          	bnez	a7,11308 <_free_r+0x25c>
   11268:	01863583          	ld	a1,24(a2)
   1126c:	01063603          	ld	a2,16(a2)
   11270:	00f686b3          	add	a3,a3,a5
   11274:	0016e793          	ori	a5,a3,1
   11278:	00b63c23          	sd	a1,24(a2)
   1127c:	00c5b823          	sd	a2,16(a1)
   11280:	00f73423          	sd	a5,8(a4)
   11284:	00d70733          	add	a4,a4,a3
   11288:	00d73023          	sd	a3,0(a4)
   1128c:	f05ff06f          	j	11190 <_free_r+0xe4>
   11290:	00d786b3          	add	a3,a5,a3
   11294:	02031063          	bnez	t1,112b4 <_free_r+0x208>
   11298:	ff05b783          	ld	a5,-16(a1)
   1129c:	40f70733          	sub	a4,a4,a5
   112a0:	01073603          	ld	a2,16(a4)
   112a4:	00f686b3          	add	a3,a3,a5
   112a8:	01873783          	ld	a5,24(a4)
   112ac:	00f63c23          	sd	a5,24(a2)
   112b0:	00c7b823          	sd	a2,16(a5)
   112b4:	0016e613          	ori	a2,a3,1
   112b8:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   112bc:	00c73423          	sd	a2,8(a4)
   112c0:	00e83823          	sd	a4,16(a6)
   112c4:	ecf6e6e3          	bltu	a3,a5,11190 <_free_r+0xe4>
   112c8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   112cc:	00040513          	mv	a0,s0
   112d0:	cb9ff0ef          	jal	10f88 <_malloc_trim_r>
   112d4:	ebdff06f          	j	11190 <_free_r+0xe4>
   112d8:	00d787b3          	add	a5,a5,a3
   112dc:	ed9ff06f          	j	111b4 <_free_r+0x108>
   112e0:	01400613          	li	a2,20
   112e4:	02d67a63          	bgeu	a2,a3,11318 <_free_r+0x26c>
   112e8:	05400613          	li	a2,84
   112ec:	06d66c63          	bltu	a2,a3,11364 <_free_r+0x2b8>
   112f0:	00c7d693          	srli	a3,a5,0xc
   112f4:	00169593          	slli	a1,a3,0x1
   112f8:	0de5859b          	addiw	a1,a1,222
   112fc:	00359593          	slli	a1,a1,0x3
   11300:	06e6861b          	addiw	a2,a3,110
   11304:	f11ff06f          	j	11214 <_free_r+0x168>
   11308:	0017e693          	ori	a3,a5,1
   1130c:	00d73423          	sd	a3,8(a4)
   11310:	00f63023          	sd	a5,0(a2)
   11314:	e7dff06f          	j	11190 <_free_r+0xe4>
   11318:	00169593          	slli	a1,a3,0x1
   1131c:	0b85859b          	addiw	a1,a1,184
   11320:	00359593          	slli	a1,a1,0x3
   11324:	05b6861b          	addiw	a2,a3,91
   11328:	eedff06f          	j	11214 <_free_r+0x168>
   1132c:	02e83423          	sd	a4,40(a6)
   11330:	02e83023          	sd	a4,32(a6)
   11334:	00b73c23          	sd	a1,24(a4)
   11338:	00b73823          	sd	a1,16(a4)
   1133c:	01173423          	sd	a7,8(a4)
   11340:	00f53023          	sd	a5,0(a0)
   11344:	e4dff06f          	j	11190 <_free_r+0xe4>
   11348:	00883503          	ld	a0,8(a6)
   1134c:	4026561b          	sraiw	a2,a2,0x2
   11350:	00100793          	li	a5,1
   11354:	00c797b3          	sll	a5,a5,a2
   11358:	00a7e7b3          	or	a5,a5,a0
   1135c:	00f83423          	sd	a5,8(a6)
   11360:	ee1ff06f          	j	11240 <_free_r+0x194>
   11364:	15400613          	li	a2,340
   11368:	00d66e63          	bltu	a2,a3,11384 <_free_r+0x2d8>
   1136c:	00f7d693          	srli	a3,a5,0xf
   11370:	00169593          	slli	a1,a3,0x1
   11374:	0f05859b          	addiw	a1,a1,240
   11378:	00359593          	slli	a1,a1,0x3
   1137c:	0776861b          	addiw	a2,a3,119
   11380:	e95ff06f          	j	11214 <_free_r+0x168>
   11384:	55400613          	li	a2,1364
   11388:	00d66e63          	bltu	a2,a3,113a4 <_free_r+0x2f8>
   1138c:	0127d693          	srli	a3,a5,0x12
   11390:	00169593          	slli	a1,a3,0x1
   11394:	0fa5859b          	addiw	a1,a1,250
   11398:	00359593          	slli	a1,a1,0x3
   1139c:	07c6861b          	addiw	a2,a3,124
   113a0:	e75ff06f          	j	11214 <_free_r+0x168>
   113a4:	7f000593          	li	a1,2032
   113a8:	07e00613          	li	a2,126
   113ac:	e69ff06f          	j	11214 <_free_r+0x168>

00000000000113b0 <_malloc_r>:
   113b0:	fa010113          	addi	sp,sp,-96
   113b4:	04813823          	sd	s0,80(sp)
   113b8:	04113c23          	sd	ra,88(sp)
   113bc:	01758713          	addi	a4,a1,23
   113c0:	02e00793          	li	a5,46
   113c4:	00050413          	mv	s0,a0
   113c8:	08e7ee63          	bltu	a5,a4,11464 <_malloc_r+0xb4>
   113cc:	02000713          	li	a4,32
   113d0:	06b76c63          	bltu	a4,a1,11448 <_malloc_r+0x98>
   113d4:	0c1000ef          	jal	11c94 <__malloc_lock>
   113d8:	02000713          	li	a4,32
   113dc:	05000693          	li	a3,80
   113e0:	00400893          	li	a7,4
   113e4:	00013837          	lui	a6,0x13
   113e8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   113ec:	00d806b3          	add	a3,a6,a3
   113f0:	0086b783          	ld	a5,8(a3)
   113f4:	ff068613          	addi	a2,a3,-16
   113f8:	48c78063          	beq	a5,a2,11878 <_malloc_r+0x4c8>
   113fc:	0087b703          	ld	a4,8(a5)
   11400:	0187b603          	ld	a2,24(a5)
   11404:	0107b583          	ld	a1,16(a5)
   11408:	ffc77713          	andi	a4,a4,-4
   1140c:	00e78733          	add	a4,a5,a4
   11410:	00873683          	ld	a3,8(a4)
   11414:	00c5bc23          	sd	a2,24(a1)
   11418:	00b63823          	sd	a1,16(a2)
   1141c:	0016e693          	ori	a3,a3,1
   11420:	00040513          	mv	a0,s0
   11424:	00d73423          	sd	a3,8(a4)
   11428:	00f13423          	sd	a5,8(sp)
   1142c:	06d000ef          	jal	11c98 <__malloc_unlock>
   11430:	00813783          	ld	a5,8(sp)
   11434:	05813083          	ld	ra,88(sp)
   11438:	05013403          	ld	s0,80(sp)
   1143c:	01078513          	addi	a0,a5,16
   11440:	06010113          	addi	sp,sp,96
   11444:	00008067          	ret
   11448:	00c00793          	li	a5,12
   1144c:	00f42023          	sw	a5,0(s0)
   11450:	00000513          	li	a0,0
   11454:	05813083          	ld	ra,88(sp)
   11458:	05013403          	ld	s0,80(sp)
   1145c:	06010113          	addi	sp,sp,96
   11460:	00008067          	ret
   11464:	00100793          	li	a5,1
   11468:	ff077713          	andi	a4,a4,-16
   1146c:	01f79793          	slli	a5,a5,0x1f
   11470:	fcf77ce3          	bgeu	a4,a5,11448 <_malloc_r+0x98>
   11474:	fcb76ae3          	bltu	a4,a1,11448 <_malloc_r+0x98>
   11478:	00e13423          	sd	a4,8(sp)
   1147c:	019000ef          	jal	11c94 <__malloc_lock>
   11480:	00813703          	ld	a4,8(sp)
   11484:	1f700793          	li	a5,503
   11488:	4ee7fa63          	bgeu	a5,a4,1197c <_malloc_r+0x5cc>
   1148c:	00975793          	srli	a5,a4,0x9
   11490:	18078a63          	beqz	a5,11624 <_malloc_r+0x274>
   11494:	00400693          	li	a3,4
   11498:	44f6ea63          	bltu	a3,a5,118ec <_malloc_r+0x53c>
   1149c:	00675793          	srli	a5,a4,0x6
   114a0:	0397889b          	addiw	a7,a5,57
   114a4:	0018951b          	slliw	a0,a7,0x1
   114a8:	03878e1b          	addiw	t3,a5,56
   114ac:	00351513          	slli	a0,a0,0x3
   114b0:	00013837          	lui	a6,0x13
   114b4:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   114b8:	00a80533          	add	a0,a6,a0
   114bc:	00853783          	ld	a5,8(a0)
   114c0:	ff050513          	addi	a0,a0,-16
   114c4:	02f50863          	beq	a0,a5,114f4 <_malloc_r+0x144>
   114c8:	01f00313          	li	t1,31
   114cc:	0140006f          	j	114e0 <_malloc_r+0x130>
   114d0:	0187b583          	ld	a1,24(a5)
   114d4:	36065263          	bgez	a2,11838 <_malloc_r+0x488>
   114d8:	00b50e63          	beq	a0,a1,114f4 <_malloc_r+0x144>
   114dc:	00058793          	mv	a5,a1
   114e0:	0087b683          	ld	a3,8(a5)
   114e4:	ffc6f693          	andi	a3,a3,-4
   114e8:	40e68633          	sub	a2,a3,a4
   114ec:	fec352e3          	bge	t1,a2,114d0 <_malloc_r+0x120>
   114f0:	000e0893          	mv	a7,t3
   114f4:	02083783          	ld	a5,32(a6)
   114f8:	00013e37          	lui	t3,0x13
   114fc:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11500:	2fc78a63          	beq	a5,t3,117f4 <_malloc_r+0x444>
   11504:	0087b303          	ld	t1,8(a5)
   11508:	01f00613          	li	a2,31
   1150c:	ffc37313          	andi	t1,t1,-4
   11510:	40e306b3          	sub	a3,t1,a4
   11514:	4ad64463          	blt	a2,a3,119bc <_malloc_r+0x60c>
   11518:	03c83423          	sd	t3,40(a6)
   1151c:	03c83023          	sd	t3,32(a6)
   11520:	4606da63          	bgez	a3,11994 <_malloc_r+0x5e4>
   11524:	1ff00693          	li	a3,511
   11528:	00883583          	ld	a1,8(a6)
   1152c:	3466ee63          	bltu	a3,t1,11888 <_malloc_r+0x4d8>
   11530:	00335313          	srli	t1,t1,0x3
   11534:	00131693          	slli	a3,t1,0x1
   11538:	0026869b          	addiw	a3,a3,2
   1153c:	00369693          	slli	a3,a3,0x3
   11540:	00d806b3          	add	a3,a6,a3
   11544:	0006b503          	ld	a0,0(a3)
   11548:	4023531b          	sraiw	t1,t1,0x2
   1154c:	00100613          	li	a2,1
   11550:	00661633          	sll	a2,a2,t1
   11554:	00c5e5b3          	or	a1,a1,a2
   11558:	ff068613          	addi	a2,a3,-16
   1155c:	00a7b823          	sd	a0,16(a5)
   11560:	00c7bc23          	sd	a2,24(a5)
   11564:	00b83423          	sd	a1,8(a6)
   11568:	00f6b023          	sd	a5,0(a3)
   1156c:	00f53c23          	sd	a5,24(a0)
   11570:	4028d79b          	sraiw	a5,a7,0x2
   11574:	00100513          	li	a0,1
   11578:	00f51533          	sll	a0,a0,a5
   1157c:	0aa5ec63          	bltu	a1,a0,11634 <_malloc_r+0x284>
   11580:	00b577b3          	and	a5,a0,a1
   11584:	02079463          	bnez	a5,115ac <_malloc_r+0x1fc>
   11588:	00151513          	slli	a0,a0,0x1
   1158c:	ffc8f893          	andi	a7,a7,-4
   11590:	00b577b3          	and	a5,a0,a1
   11594:	0048889b          	addiw	a7,a7,4
   11598:	00079a63          	bnez	a5,115ac <_malloc_r+0x1fc>
   1159c:	00151513          	slli	a0,a0,0x1
   115a0:	00b577b3          	and	a5,a0,a1
   115a4:	0048889b          	addiw	a7,a7,4
   115a8:	fe078ae3          	beqz	a5,1159c <_malloc_r+0x1ec>
   115ac:	01f00e93          	li	t4,31
   115b0:	00189f13          	slli	t5,a7,0x1
   115b4:	002f0f1b          	addiw	t5,t5,2
   115b8:	003f1f13          	slli	t5,t5,0x3
   115bc:	ff0f0f13          	addi	t5,t5,-16
   115c0:	01e80f33          	add	t5,a6,t5
   115c4:	000f0313          	mv	t1,t5
   115c8:	01833683          	ld	a3,24(t1)
   115cc:	00088f93          	mv	t6,a7
   115d0:	34d30263          	beq	t1,a3,11914 <_malloc_r+0x564>
   115d4:	0086b603          	ld	a2,8(a3)
   115d8:	00068793          	mv	a5,a3
   115dc:	0186b683          	ld	a3,24(a3)
   115e0:	ffc67613          	andi	a2,a2,-4
   115e4:	40e605b3          	sub	a1,a2,a4
   115e8:	34bec263          	blt	t4,a1,1192c <_malloc_r+0x57c>
   115ec:	fe05c2e3          	bltz	a1,115d0 <_malloc_r+0x220>
   115f0:	00c78633          	add	a2,a5,a2
   115f4:	00863703          	ld	a4,8(a2)
   115f8:	0107b583          	ld	a1,16(a5)
   115fc:	00040513          	mv	a0,s0
   11600:	00176713          	ori	a4,a4,1
   11604:	00e63423          	sd	a4,8(a2)
   11608:	00d5bc23          	sd	a3,24(a1)
   1160c:	00b6b823          	sd	a1,16(a3)
   11610:	00f13423          	sd	a5,8(sp)
   11614:	684000ef          	jal	11c98 <__malloc_unlock>
   11618:	00813783          	ld	a5,8(sp)
   1161c:	01078513          	addi	a0,a5,16
   11620:	e35ff06f          	j	11454 <_malloc_r+0xa4>
   11624:	40000513          	li	a0,1024
   11628:	04000893          	li	a7,64
   1162c:	03f00e13          	li	t3,63
   11630:	e81ff06f          	j	114b0 <_malloc_r+0x100>
   11634:	01083783          	ld	a5,16(a6)
   11638:	0087b683          	ld	a3,8(a5)
   1163c:	ffc6f893          	andi	a7,a3,-4
   11640:	40e88633          	sub	a2,a7,a4
   11644:	00e8e663          	bltu	a7,a4,11650 <_malloc_r+0x2a0>
   11648:	02062693          	slti	a3,a2,32
   1164c:	1a068863          	beqz	a3,117fc <_malloc_r+0x44c>
   11650:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11654:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11658:	fff00693          	li	a3,-1
   1165c:	00b705b3          	add	a1,a4,a1
   11660:	44d60663          	beq	a2,a3,11aac <_malloc_r+0x6fc>
   11664:	000016b7          	lui	a3,0x1
   11668:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   1166c:	00d585b3          	add	a1,a1,a3
   11670:	fffff6b7          	lui	a3,0xfffff
   11674:	00d5f5b3          	and	a1,a1,a3
   11678:	00040513          	mv	a0,s0
   1167c:	03013423          	sd	a6,40(sp)
   11680:	02f13023          	sd	a5,32(sp)
   11684:	00e13c23          	sd	a4,24(sp)
   11688:	01113823          	sd	a7,16(sp)
   1168c:	00b13423          	sd	a1,8(sp)
   11690:	271000ef          	jal	12100 <_sbrk_r>
   11694:	fff00693          	li	a3,-1
   11698:	00813583          	ld	a1,8(sp)
   1169c:	01013883          	ld	a7,16(sp)
   116a0:	01813703          	ld	a4,24(sp)
   116a4:	02013783          	ld	a5,32(sp)
   116a8:	02813803          	ld	a6,40(sp)
   116ac:	00050313          	mv	t1,a0
   116b0:	36d50663          	beq	a0,a3,11a1c <_malloc_r+0x66c>
   116b4:	011786b3          	add	a3,a5,a7
   116b8:	36d56063          	bltu	a0,a3,11a18 <_malloc_r+0x668>
   116bc:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   116c0:	000e2603          	lw	a2,0(t3)
   116c4:	00b6063b          	addw	a2,a2,a1
   116c8:	00ce2023          	sw	a2,0(t3)
   116cc:	00060513          	mv	a0,a2
   116d0:	4a668c63          	beq	a3,t1,11b88 <_malloc_r+0x7d8>
   116d4:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   116d8:	fff00613          	li	a2,-1
   116dc:	4ccf0463          	beq	t5,a2,11ba4 <_malloc_r+0x7f4>
   116e0:	40d306b3          	sub	a3,t1,a3
   116e4:	00a686bb          	addw	a3,a3,a0
   116e8:	00de2023          	sw	a3,0(t3)
   116ec:	00f37e93          	andi	t4,t1,15
   116f0:	3c0e8e63          	beqz	t4,11acc <_malloc_r+0x71c>
   116f4:	ff037313          	andi	t1,t1,-16
   116f8:	000016b7          	lui	a3,0x1
   116fc:	01030313          	addi	t1,t1,16
   11700:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11704:	00b30633          	add	a2,t1,a1
   11708:	41d685b3          	sub	a1,a3,t4
   1170c:	40c585b3          	sub	a1,a1,a2
   11710:	03459593          	slli	a1,a1,0x34
   11714:	0345d593          	srli	a1,a1,0x34
   11718:	00040513          	mv	a0,s0
   1171c:	05c13023          	sd	t3,64(sp)
   11720:	03013c23          	sd	a6,56(sp)
   11724:	02f13823          	sd	a5,48(sp)
   11728:	02e13423          	sd	a4,40(sp)
   1172c:	03113023          	sd	a7,32(sp)
   11730:	00613c23          	sd	t1,24(sp)
   11734:	01d13823          	sd	t4,16(sp)
   11738:	00c13423          	sd	a2,8(sp)
   1173c:	04b13423          	sd	a1,72(sp)
   11740:	1c1000ef          	jal	12100 <_sbrk_r>
   11744:	00050693          	mv	a3,a0
   11748:	fff00513          	li	a0,-1
   1174c:	00813603          	ld	a2,8(sp)
   11750:	01013e83          	ld	t4,16(sp)
   11754:	01813303          	ld	t1,24(sp)
   11758:	02013883          	ld	a7,32(sp)
   1175c:	02813703          	ld	a4,40(sp)
   11760:	03013783          	ld	a5,48(sp)
   11764:	03813803          	ld	a6,56(sp)
   11768:	04013e03          	ld	t3,64(sp)
   1176c:	48a68663          	beq	a3,a0,11bf8 <_malloc_r+0x848>
   11770:	04813583          	ld	a1,72(sp)
   11774:	0005851b          	sext.w	a0,a1
   11778:	000e2603          	lw	a2,0(t3)
   1177c:	406686b3          	sub	a3,a3,t1
   11780:	00b686b3          	add	a3,a3,a1
   11784:	0016e693          	ori	a3,a3,1
   11788:	00683823          	sd	t1,16(a6)
   1178c:	00a6063b          	addw	a2,a2,a0
   11790:	00d33423          	sd	a3,8(t1)
   11794:	00ce2023          	sw	a2,0(t3)
   11798:	03078e63          	beq	a5,a6,117d4 <_malloc_r+0x424>
   1179c:	01f00513          	li	a0,31
   117a0:	41157663          	bgeu	a0,a7,11bac <_malloc_r+0x7fc>
   117a4:	0087b583          	ld	a1,8(a5)
   117a8:	fe888693          	addi	a3,a7,-24
   117ac:	ff06f693          	andi	a3,a3,-16
   117b0:	0015f593          	andi	a1,a1,1
   117b4:	00d5e5b3          	or	a1,a1,a3
   117b8:	00b7b423          	sd	a1,8(a5)
   117bc:	00900893          	li	a7,9
   117c0:	00d785b3          	add	a1,a5,a3
   117c4:	0115b423          	sd	a7,8(a1)
   117c8:	0115b823          	sd	a7,16(a1)
   117cc:	44d56863          	bltu	a0,a3,11c1c <_malloc_r+0x86c>
   117d0:	00833683          	ld	a3,8(t1)
   117d4:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   117d8:	00c5f463          	bgeu	a1,a2,117e0 <_malloc_r+0x430>
   117dc:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   117e0:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   117e4:	00c5f463          	bgeu	a1,a2,117ec <_malloc_r+0x43c>
   117e8:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   117ec:	00030793          	mv	a5,t1
   117f0:	2340006f          	j	11a24 <_malloc_r+0x674>
   117f4:	00883583          	ld	a1,8(a6)
   117f8:	d79ff06f          	j	11570 <_malloc_r+0x1c0>
   117fc:	00176693          	ori	a3,a4,1
   11800:	00d7b423          	sd	a3,8(a5)
   11804:	00e78733          	add	a4,a5,a4
   11808:	00166613          	ori	a2,a2,1
   1180c:	00e83823          	sd	a4,16(a6)
   11810:	00040513          	mv	a0,s0
   11814:	00c73423          	sd	a2,8(a4)
   11818:	00f13423          	sd	a5,8(sp)
   1181c:	47c000ef          	jal	11c98 <__malloc_unlock>
   11820:	00813783          	ld	a5,8(sp)
   11824:	05813083          	ld	ra,88(sp)
   11828:	05013403          	ld	s0,80(sp)
   1182c:	01078513          	addi	a0,a5,16
   11830:	06010113          	addi	sp,sp,96
   11834:	00008067          	ret
   11838:	0107b603          	ld	a2,16(a5)
   1183c:	00d786b3          	add	a3,a5,a3
   11840:	0086b703          	ld	a4,8(a3)
   11844:	00b63c23          	sd	a1,24(a2)
   11848:	00c5b823          	sd	a2,16(a1)
   1184c:	00176713          	ori	a4,a4,1
   11850:	00040513          	mv	a0,s0
   11854:	00e6b423          	sd	a4,8(a3)
   11858:	00f13423          	sd	a5,8(sp)
   1185c:	43c000ef          	jal	11c98 <__malloc_unlock>
   11860:	00813783          	ld	a5,8(sp)
   11864:	05813083          	ld	ra,88(sp)
   11868:	05013403          	ld	s0,80(sp)
   1186c:	01078513          	addi	a0,a5,16
   11870:	06010113          	addi	sp,sp,96
   11874:	00008067          	ret
   11878:	0186b783          	ld	a5,24(a3)
   1187c:	0028889b          	addiw	a7,a7,2
   11880:	c6f68ae3          	beq	a3,a5,114f4 <_malloc_r+0x144>
   11884:	b79ff06f          	j	113fc <_malloc_r+0x4c>
   11888:	00935693          	srli	a3,t1,0x9
   1188c:	00400613          	li	a2,4
   11890:	16d67863          	bgeu	a2,a3,11a00 <_malloc_r+0x650>
   11894:	01400613          	li	a2,20
   11898:	28d66e63          	bltu	a2,a3,11b34 <_malloc_r+0x784>
   1189c:	00169513          	slli	a0,a3,0x1
   118a0:	0b85051b          	addiw	a0,a0,184
   118a4:	00351513          	slli	a0,a0,0x3
   118a8:	05b6861b          	addiw	a2,a3,91
   118ac:	00a80533          	add	a0,a6,a0
   118b0:	00053683          	ld	a3,0(a0)
   118b4:	ff050513          	addi	a0,a0,-16
   118b8:	00d51863          	bne	a0,a3,118c8 <_malloc_r+0x518>
   118bc:	1f80006f          	j	11ab4 <_malloc_r+0x704>
   118c0:	0106b683          	ld	a3,16(a3)
   118c4:	00d50863          	beq	a0,a3,118d4 <_malloc_r+0x524>
   118c8:	0086b603          	ld	a2,8(a3)
   118cc:	ffc67613          	andi	a2,a2,-4
   118d0:	fec368e3          	bltu	t1,a2,118c0 <_malloc_r+0x510>
   118d4:	0186b503          	ld	a0,24(a3)
   118d8:	00a7bc23          	sd	a0,24(a5)
   118dc:	00d7b823          	sd	a3,16(a5)
   118e0:	00f53823          	sd	a5,16(a0)
   118e4:	00f6bc23          	sd	a5,24(a3)
   118e8:	c89ff06f          	j	11570 <_malloc_r+0x1c0>
   118ec:	01400693          	li	a3,20
   118f0:	14f6fa63          	bgeu	a3,a5,11a44 <_malloc_r+0x694>
   118f4:	05400693          	li	a3,84
   118f8:	24f6ee63          	bltu	a3,a5,11b54 <_malloc_r+0x7a4>
   118fc:	00c75793          	srli	a5,a4,0xc
   11900:	06f7889b          	addiw	a7,a5,111
   11904:	0018951b          	slliw	a0,a7,0x1
   11908:	06e78e1b          	addiw	t3,a5,110
   1190c:	00351513          	slli	a0,a0,0x3
   11910:	ba1ff06f          	j	114b0 <_malloc_r+0x100>
   11914:	001f8f9b          	addiw	t6,t6,1
   11918:	003ff793          	andi	a5,t6,3
   1191c:	01030313          	addi	t1,t1,16
   11920:	14078263          	beqz	a5,11a64 <_malloc_r+0x6b4>
   11924:	01833683          	ld	a3,24(t1)
   11928:	ca9ff06f          	j	115d0 <_malloc_r+0x220>
   1192c:	0107b503          	ld	a0,16(a5)
   11930:	00176893          	ori	a7,a4,1
   11934:	0117b423          	sd	a7,8(a5)
   11938:	00d53c23          	sd	a3,24(a0)
   1193c:	00a6b823          	sd	a0,16(a3)
   11940:	00e78733          	add	a4,a5,a4
   11944:	02e83423          	sd	a4,40(a6)
   11948:	02e83023          	sd	a4,32(a6)
   1194c:	0015e693          	ori	a3,a1,1
   11950:	00c78633          	add	a2,a5,a2
   11954:	01c73c23          	sd	t3,24(a4)
   11958:	01c73823          	sd	t3,16(a4)
   1195c:	00d73423          	sd	a3,8(a4)
   11960:	00040513          	mv	a0,s0
   11964:	00b63023          	sd	a1,0(a2)
   11968:	00f13423          	sd	a5,8(sp)
   1196c:	32c000ef          	jal	11c98 <__malloc_unlock>
   11970:	00813783          	ld	a5,8(sp)
   11974:	01078513          	addi	a0,a5,16
   11978:	addff06f          	j	11454 <_malloc_r+0xa4>
   1197c:	00375893          	srli	a7,a4,0x3
   11980:	00189693          	slli	a3,a7,0x1
   11984:	0026869b          	addiw	a3,a3,2
   11988:	00369693          	slli	a3,a3,0x3
   1198c:	0008889b          	sext.w	a7,a7
   11990:	a55ff06f          	j	113e4 <_malloc_r+0x34>
   11994:	00678333          	add	t1,a5,t1
   11998:	00833703          	ld	a4,8(t1)
   1199c:	00040513          	mv	a0,s0
   119a0:	00f13423          	sd	a5,8(sp)
   119a4:	00176713          	ori	a4,a4,1
   119a8:	00e33423          	sd	a4,8(t1)
   119ac:	2ec000ef          	jal	11c98 <__malloc_unlock>
   119b0:	00813783          	ld	a5,8(sp)
   119b4:	01078513          	addi	a0,a5,16
   119b8:	a9dff06f          	j	11454 <_malloc_r+0xa4>
   119bc:	00176613          	ori	a2,a4,1
   119c0:	00c7b423          	sd	a2,8(a5)
   119c4:	00e78733          	add	a4,a5,a4
   119c8:	02e83423          	sd	a4,40(a6)
   119cc:	02e83023          	sd	a4,32(a6)
   119d0:	0016e613          	ori	a2,a3,1
   119d4:	00678333          	add	t1,a5,t1
   119d8:	01c73c23          	sd	t3,24(a4)
   119dc:	01c73823          	sd	t3,16(a4)
   119e0:	00c73423          	sd	a2,8(a4)
   119e4:	00040513          	mv	a0,s0
   119e8:	00d33023          	sd	a3,0(t1)
   119ec:	00f13423          	sd	a5,8(sp)
   119f0:	2a8000ef          	jal	11c98 <__malloc_unlock>
   119f4:	00813783          	ld	a5,8(sp)
   119f8:	01078513          	addi	a0,a5,16
   119fc:	a59ff06f          	j	11454 <_malloc_r+0xa4>
   11a00:	00635693          	srli	a3,t1,0x6
   11a04:	00169513          	slli	a0,a3,0x1
   11a08:	0725051b          	addiw	a0,a0,114
   11a0c:	00351513          	slli	a0,a0,0x3
   11a10:	0386861b          	addiw	a2,a3,56
   11a14:	e99ff06f          	j	118ac <_malloc_r+0x4fc>
   11a18:	15078e63          	beq	a5,a6,11b74 <_malloc_r+0x7c4>
   11a1c:	01083783          	ld	a5,16(a6)
   11a20:	0087b683          	ld	a3,8(a5)
   11a24:	ffc6f693          	andi	a3,a3,-4
   11a28:	40e68633          	sub	a2,a3,a4
   11a2c:	00e6e663          	bltu	a3,a4,11a38 <_malloc_r+0x688>
   11a30:	02062693          	slti	a3,a2,32
   11a34:	dc0684e3          	beqz	a3,117fc <_malloc_r+0x44c>
   11a38:	00040513          	mv	a0,s0
   11a3c:	25c000ef          	jal	11c98 <__malloc_unlock>
   11a40:	a11ff06f          	j	11450 <_malloc_r+0xa0>
   11a44:	05c7889b          	addiw	a7,a5,92
   11a48:	0018951b          	slliw	a0,a7,0x1
   11a4c:	05b78e1b          	addiw	t3,a5,91
   11a50:	00351513          	slli	a0,a0,0x3
   11a54:	a5dff06f          	j	114b0 <_malloc_r+0x100>
   11a58:	010f3783          	ld	a5,16(t5)
   11a5c:	fff8889b          	addiw	a7,a7,-1
   11a60:	23e79663          	bne	a5,t5,11c8c <_malloc_r+0x8dc>
   11a64:	0038f793          	andi	a5,a7,3
   11a68:	ff0f0f13          	addi	t5,t5,-16
   11a6c:	fe0796e3          	bnez	a5,11a58 <_malloc_r+0x6a8>
   11a70:	00883683          	ld	a3,8(a6)
   11a74:	fff54793          	not	a5,a0
   11a78:	00d7f7b3          	and	a5,a5,a3
   11a7c:	00f83423          	sd	a5,8(a6)
   11a80:	00151513          	slli	a0,a0,0x1
   11a84:	fff50693          	addi	a3,a0,-1
   11a88:	baf6f6e3          	bgeu	a3,a5,11634 <_malloc_r+0x284>
   11a8c:	00f576b3          	and	a3,a0,a5
   11a90:	00069a63          	bnez	a3,11aa4 <_malloc_r+0x6f4>
   11a94:	00151513          	slli	a0,a0,0x1
   11a98:	00f576b3          	and	a3,a0,a5
   11a9c:	004f8f9b          	addiw	t6,t6,4
   11aa0:	fe068ae3          	beqz	a3,11a94 <_malloc_r+0x6e4>
   11aa4:	000f8893          	mv	a7,t6
   11aa8:	b09ff06f          	j	115b0 <_malloc_r+0x200>
   11aac:	02058593          	addi	a1,a1,32
   11ab0:	bc9ff06f          	j	11678 <_malloc_r+0x2c8>
   11ab4:	4026561b          	sraiw	a2,a2,0x2
   11ab8:	00100313          	li	t1,1
   11abc:	00c31633          	sll	a2,t1,a2
   11ac0:	00c5e5b3          	or	a1,a1,a2
   11ac4:	00b83423          	sd	a1,8(a6)
   11ac8:	e11ff06f          	j	118d8 <_malloc_r+0x528>
   11acc:	00b30633          	add	a2,t1,a1
   11ad0:	40c005b3          	neg	a1,a2
   11ad4:	03459593          	slli	a1,a1,0x34
   11ad8:	0345d593          	srli	a1,a1,0x34
   11adc:	00040513          	mv	a0,s0
   11ae0:	03c13c23          	sd	t3,56(sp)
   11ae4:	03013823          	sd	a6,48(sp)
   11ae8:	02f13423          	sd	a5,40(sp)
   11aec:	02e13023          	sd	a4,32(sp)
   11af0:	01113c23          	sd	a7,24(sp)
   11af4:	00613823          	sd	t1,16(sp)
   11af8:	00c13423          	sd	a2,8(sp)
   11afc:	04b13023          	sd	a1,64(sp)
   11b00:	600000ef          	jal	12100 <_sbrk_r>
   11b04:	00050693          	mv	a3,a0
   11b08:	fff00513          	li	a0,-1
   11b0c:	01013303          	ld	t1,16(sp)
   11b10:	01813883          	ld	a7,24(sp)
   11b14:	02013703          	ld	a4,32(sp)
   11b18:	02813783          	ld	a5,40(sp)
   11b1c:	03013803          	ld	a6,48(sp)
   11b20:	03813e03          	ld	t3,56(sp)
   11b24:	0ea68463          	beq	a3,a0,11c0c <_malloc_r+0x85c>
   11b28:	04013583          	ld	a1,64(sp)
   11b2c:	0005851b          	sext.w	a0,a1
   11b30:	c49ff06f          	j	11778 <_malloc_r+0x3c8>
   11b34:	05400613          	li	a2,84
   11b38:	08d66063          	bltu	a2,a3,11bb8 <_malloc_r+0x808>
   11b3c:	00c35693          	srli	a3,t1,0xc
   11b40:	00169513          	slli	a0,a3,0x1
   11b44:	0de5051b          	addiw	a0,a0,222
   11b48:	00351513          	slli	a0,a0,0x3
   11b4c:	06e6861b          	addiw	a2,a3,110
   11b50:	d5dff06f          	j	118ac <_malloc_r+0x4fc>
   11b54:	15400693          	li	a3,340
   11b58:	08f6e063          	bltu	a3,a5,11bd8 <_malloc_r+0x828>
   11b5c:	00f75793          	srli	a5,a4,0xf
   11b60:	0787889b          	addiw	a7,a5,120
   11b64:	0018951b          	slliw	a0,a7,0x1
   11b68:	07778e1b          	addiw	t3,a5,119
   11b6c:	00351513          	slli	a0,a0,0x3
   11b70:	941ff06f          	j	114b0 <_malloc_r+0x100>
   11b74:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11b78:	000e2503          	lw	a0,0(t3)
   11b7c:	00b5053b          	addw	a0,a0,a1
   11b80:	00ae2023          	sw	a0,0(t3)
   11b84:	b51ff06f          	j	116d4 <_malloc_r+0x324>
   11b88:	03431f13          	slli	t5,t1,0x34
   11b8c:	b40f14e3          	bnez	t5,116d4 <_malloc_r+0x324>
   11b90:	01083303          	ld	t1,16(a6)
   11b94:	00b885b3          	add	a1,a7,a1
   11b98:	0015e693          	ori	a3,a1,1
   11b9c:	00d33423          	sd	a3,8(t1)
   11ba0:	c35ff06f          	j	117d4 <_malloc_r+0x424>
   11ba4:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11ba8:	b45ff06f          	j	116ec <_malloc_r+0x33c>
   11bac:	00100793          	li	a5,1
   11bb0:	00f33423          	sd	a5,8(t1)
   11bb4:	e85ff06f          	j	11a38 <_malloc_r+0x688>
   11bb8:	15400613          	li	a2,340
   11bbc:	08d66a63          	bltu	a2,a3,11c50 <_malloc_r+0x8a0>
   11bc0:	00f35693          	srli	a3,t1,0xf
   11bc4:	00169513          	slli	a0,a3,0x1
   11bc8:	0f05051b          	addiw	a0,a0,240
   11bcc:	00351513          	slli	a0,a0,0x3
   11bd0:	0776861b          	addiw	a2,a3,119
   11bd4:	cd9ff06f          	j	118ac <_malloc_r+0x4fc>
   11bd8:	55400693          	li	a3,1364
   11bdc:	08f6ea63          	bltu	a3,a5,11c70 <_malloc_r+0x8c0>
   11be0:	01275793          	srli	a5,a4,0x12
   11be4:	07d7889b          	addiw	a7,a5,125
   11be8:	0018951b          	slliw	a0,a7,0x1
   11bec:	07c78e1b          	addiw	t3,a5,124
   11bf0:	00351513          	slli	a0,a0,0x3
   11bf4:	8bdff06f          	j	114b0 <_malloc_r+0x100>
   11bf8:	ff0e8e93          	addi	t4,t4,-16
   11bfc:	01d606b3          	add	a3,a2,t4
   11c00:	00000513          	li	a0,0
   11c04:	00000593          	li	a1,0
   11c08:	b71ff06f          	j	11778 <_malloc_r+0x3c8>
   11c0c:	00813683          	ld	a3,8(sp)
   11c10:	00000593          	li	a1,0
   11c14:	00000513          	li	a0,0
   11c18:	b61ff06f          	j	11778 <_malloc_r+0x3c8>
   11c1c:	01078593          	addi	a1,a5,16
   11c20:	00040513          	mv	a0,s0
   11c24:	01c13c23          	sd	t3,24(sp)
   11c28:	01013823          	sd	a6,16(sp)
   11c2c:	00e13423          	sd	a4,8(sp)
   11c30:	c7cff0ef          	jal	110ac <_free_r>
   11c34:	01013803          	ld	a6,16(sp)
   11c38:	01813e03          	ld	t3,24(sp)
   11c3c:	00813703          	ld	a4,8(sp)
   11c40:	01083303          	ld	t1,16(a6)
   11c44:	000e2603          	lw	a2,0(t3)
   11c48:	00833683          	ld	a3,8(t1)
   11c4c:	b89ff06f          	j	117d4 <_malloc_r+0x424>
   11c50:	55400613          	li	a2,1364
   11c54:	02d66663          	bltu	a2,a3,11c80 <_malloc_r+0x8d0>
   11c58:	01235693          	srli	a3,t1,0x12
   11c5c:	00169513          	slli	a0,a3,0x1
   11c60:	0fa5051b          	addiw	a0,a0,250
   11c64:	00351513          	slli	a0,a0,0x3
   11c68:	07c6861b          	addiw	a2,a3,124
   11c6c:	c41ff06f          	j	118ac <_malloc_r+0x4fc>
   11c70:	7f000513          	li	a0,2032
   11c74:	07f00893          	li	a7,127
   11c78:	07e00e13          	li	t3,126
   11c7c:	835ff06f          	j	114b0 <_malloc_r+0x100>
   11c80:	7f000513          	li	a0,2032
   11c84:	07e00613          	li	a2,126
   11c88:	c25ff06f          	j	118ac <_malloc_r+0x4fc>
   11c8c:	00883783          	ld	a5,8(a6)
   11c90:	df1ff06f          	j	11a80 <_malloc_r+0x6d0>

0000000000011c94 <__malloc_lock>:
   11c94:	00008067          	ret

0000000000011c98 <__malloc_unlock>:
   11c98:	00008067          	ret

0000000000011c9c <_fclose_r>:
   11c9c:	fe010113          	addi	sp,sp,-32
   11ca0:	00113c23          	sd	ra,24(sp)
   11ca4:	01213023          	sd	s2,0(sp)
   11ca8:	02058863          	beqz	a1,11cd8 <_fclose_r+0x3c>
   11cac:	00813823          	sd	s0,16(sp)
   11cb0:	00913423          	sd	s1,8(sp)
   11cb4:	00058413          	mv	s0,a1
   11cb8:	00050493          	mv	s1,a0
   11cbc:	00050663          	beqz	a0,11cc8 <_fclose_r+0x2c>
   11cc0:	04853783          	ld	a5,72(a0)
   11cc4:	0c078c63          	beqz	a5,11d9c <_fclose_r+0x100>
   11cc8:	01041783          	lh	a5,16(s0)
   11ccc:	02079263          	bnez	a5,11cf0 <_fclose_r+0x54>
   11cd0:	01013403          	ld	s0,16(sp)
   11cd4:	00813483          	ld	s1,8(sp)
   11cd8:	01813083          	ld	ra,24(sp)
   11cdc:	00000913          	li	s2,0
   11ce0:	00090513          	mv	a0,s2
   11ce4:	00013903          	ld	s2,0(sp)
   11ce8:	02010113          	addi	sp,sp,32
   11cec:	00008067          	ret
   11cf0:	00040593          	mv	a1,s0
   11cf4:	00048513          	mv	a0,s1
   11cf8:	0b8000ef          	jal	11db0 <__sflush_r>
   11cfc:	05043783          	ld	a5,80(s0)
   11d00:	00050913          	mv	s2,a0
   11d04:	00078a63          	beqz	a5,11d18 <_fclose_r+0x7c>
   11d08:	03043583          	ld	a1,48(s0)
   11d0c:	00048513          	mv	a0,s1
   11d10:	000780e7          	jalr	a5
   11d14:	06054463          	bltz	a0,11d7c <_fclose_r+0xe0>
   11d18:	01045783          	lhu	a5,16(s0)
   11d1c:	0807f793          	andi	a5,a5,128
   11d20:	06079663          	bnez	a5,11d8c <_fclose_r+0xf0>
   11d24:	05843583          	ld	a1,88(s0)
   11d28:	00058c63          	beqz	a1,11d40 <_fclose_r+0xa4>
   11d2c:	07440793          	addi	a5,s0,116
   11d30:	00f58663          	beq	a1,a5,11d3c <_fclose_r+0xa0>
   11d34:	00048513          	mv	a0,s1
   11d38:	b74ff0ef          	jal	110ac <_free_r>
   11d3c:	04043c23          	sd	zero,88(s0)
   11d40:	07843583          	ld	a1,120(s0)
   11d44:	00058863          	beqz	a1,11d54 <_fclose_r+0xb8>
   11d48:	00048513          	mv	a0,s1
   11d4c:	b60ff0ef          	jal	110ac <_free_r>
   11d50:	06043c23          	sd	zero,120(s0)
   11d54:	aa5fe0ef          	jal	107f8 <__sfp_lock_acquire>
   11d58:	00041823          	sh	zero,16(s0)
   11d5c:	aa1fe0ef          	jal	107fc <__sfp_lock_release>
   11d60:	01813083          	ld	ra,24(sp)
   11d64:	01013403          	ld	s0,16(sp)
   11d68:	00813483          	ld	s1,8(sp)
   11d6c:	00090513          	mv	a0,s2
   11d70:	00013903          	ld	s2,0(sp)
   11d74:	02010113          	addi	sp,sp,32
   11d78:	00008067          	ret
   11d7c:	01045783          	lhu	a5,16(s0)
   11d80:	fff00913          	li	s2,-1
   11d84:	0807f793          	andi	a5,a5,128
   11d88:	f8078ee3          	beqz	a5,11d24 <_fclose_r+0x88>
   11d8c:	01843583          	ld	a1,24(s0)
   11d90:	00048513          	mv	a0,s1
   11d94:	b18ff0ef          	jal	110ac <_free_r>
   11d98:	f8dff06f          	j	11d24 <_fclose_r+0x88>
   11d9c:	a39fe0ef          	jal	107d4 <__sinit>
   11da0:	f29ff06f          	j	11cc8 <_fclose_r+0x2c>

0000000000011da4 <fclose>:
   11da4:	00050593          	mv	a1,a0
   11da8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11dac:	ef1ff06f          	j	11c9c <_fclose_r>

0000000000011db0 <__sflush_r>:
   11db0:	01059703          	lh	a4,16(a1)
   11db4:	fd010113          	addi	sp,sp,-48
   11db8:	02813023          	sd	s0,32(sp)
   11dbc:	01313423          	sd	s3,8(sp)
   11dc0:	02113423          	sd	ra,40(sp)
   11dc4:	00877793          	andi	a5,a4,8
   11dc8:	00058413          	mv	s0,a1
   11dcc:	00050993          	mv	s3,a0
   11dd0:	12079263          	bnez	a5,11ef4 <__sflush_r+0x144>
   11dd4:	000017b7          	lui	a5,0x1
   11dd8:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11ddc:	0085a683          	lw	a3,8(a1)
   11de0:	00f767b3          	or	a5,a4,a5
   11de4:	00f59823          	sh	a5,16(a1)
   11de8:	18d05c63          	blez	a3,11f80 <__sflush_r+0x1d0>
   11dec:	04843803          	ld	a6,72(s0)
   11df0:	0e080663          	beqz	a6,11edc <__sflush_r+0x12c>
   11df4:	00913c23          	sd	s1,24(sp)
   11df8:	03371693          	slli	a3,a4,0x33
   11dfc:	0009a483          	lw	s1,0(s3)
   11e00:	0009a023          	sw	zero,0(s3)
   11e04:	1806ca63          	bltz	a3,11f98 <__sflush_r+0x1e8>
   11e08:	03043583          	ld	a1,48(s0)
   11e0c:	00000613          	li	a2,0
   11e10:	00100693          	li	a3,1
   11e14:	00098513          	mv	a0,s3
   11e18:	000800e7          	jalr	a6
   11e1c:	fff00793          	li	a5,-1
   11e20:	00050613          	mv	a2,a0
   11e24:	1af50c63          	beq	a0,a5,11fdc <__sflush_r+0x22c>
   11e28:	01041783          	lh	a5,16(s0)
   11e2c:	04843803          	ld	a6,72(s0)
   11e30:	0047f793          	andi	a5,a5,4
   11e34:	00078e63          	beqz	a5,11e50 <__sflush_r+0xa0>
   11e38:	00842703          	lw	a4,8(s0)
   11e3c:	05843783          	ld	a5,88(s0)
   11e40:	40e60633          	sub	a2,a2,a4
   11e44:	00078663          	beqz	a5,11e50 <__sflush_r+0xa0>
   11e48:	07042783          	lw	a5,112(s0)
   11e4c:	40f60633          	sub	a2,a2,a5
   11e50:	03043583          	ld	a1,48(s0)
   11e54:	00000693          	li	a3,0
   11e58:	00098513          	mv	a0,s3
   11e5c:	000800e7          	jalr	a6
   11e60:	fff00713          	li	a4,-1
   11e64:	01041783          	lh	a5,16(s0)
   11e68:	12e51c63          	bne	a0,a4,11fa0 <__sflush_r+0x1f0>
   11e6c:	0009a683          	lw	a3,0(s3)
   11e70:	01d00713          	li	a4,29
   11e74:	18d76263          	bltu	a4,a3,11ff8 <__sflush_r+0x248>
   11e78:	20400737          	lui	a4,0x20400
   11e7c:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11e80:	00d75733          	srl	a4,a4,a3
   11e84:	00177713          	andi	a4,a4,1
   11e88:	16070863          	beqz	a4,11ff8 <__sflush_r+0x248>
   11e8c:	01843683          	ld	a3,24(s0)
   11e90:	fffff737          	lui	a4,0xfffff
   11e94:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11e98:	00e7f733          	and	a4,a5,a4
   11e9c:	00e41823          	sh	a4,16(s0)
   11ea0:	00042423          	sw	zero,8(s0)
   11ea4:	00d43023          	sd	a3,0(s0)
   11ea8:	03379713          	slli	a4,a5,0x33
   11eac:	00075663          	bgez	a4,11eb8 <__sflush_r+0x108>
   11eb0:	0009a783          	lw	a5,0(s3)
   11eb4:	10078863          	beqz	a5,11fc4 <__sflush_r+0x214>
   11eb8:	05843583          	ld	a1,88(s0)
   11ebc:	0099a023          	sw	s1,0(s3)
   11ec0:	10058a63          	beqz	a1,11fd4 <__sflush_r+0x224>
   11ec4:	07440793          	addi	a5,s0,116
   11ec8:	00f58663          	beq	a1,a5,11ed4 <__sflush_r+0x124>
   11ecc:	00098513          	mv	a0,s3
   11ed0:	9dcff0ef          	jal	110ac <_free_r>
   11ed4:	01813483          	ld	s1,24(sp)
   11ed8:	04043c23          	sd	zero,88(s0)
   11edc:	02813083          	ld	ra,40(sp)
   11ee0:	02013403          	ld	s0,32(sp)
   11ee4:	00813983          	ld	s3,8(sp)
   11ee8:	00000513          	li	a0,0
   11eec:	03010113          	addi	sp,sp,48
   11ef0:	00008067          	ret
   11ef4:	01213823          	sd	s2,16(sp)
   11ef8:	0185b903          	ld	s2,24(a1)
   11efc:	08090a63          	beqz	s2,11f90 <__sflush_r+0x1e0>
   11f00:	00913c23          	sd	s1,24(sp)
   11f04:	0005b483          	ld	s1,0(a1)
   11f08:	00377713          	andi	a4,a4,3
   11f0c:	0125b023          	sd	s2,0(a1)
   11f10:	412484bb          	subw	s1,s1,s2
   11f14:	00000793          	li	a5,0
   11f18:	00071463          	bnez	a4,11f20 <__sflush_r+0x170>
   11f1c:	0205a783          	lw	a5,32(a1)
   11f20:	00f42623          	sw	a5,12(s0)
   11f24:	00904863          	bgtz	s1,11f34 <__sflush_r+0x184>
   11f28:	0640006f          	j	11f8c <__sflush_r+0x1dc>
   11f2c:	00a90933          	add	s2,s2,a0
   11f30:	04905e63          	blez	s1,11f8c <__sflush_r+0x1dc>
   11f34:	04043783          	ld	a5,64(s0)
   11f38:	03043583          	ld	a1,48(s0)
   11f3c:	00048693          	mv	a3,s1
   11f40:	00090613          	mv	a2,s2
   11f44:	00098513          	mv	a0,s3
   11f48:	000780e7          	jalr	a5
   11f4c:	40a484bb          	subw	s1,s1,a0
   11f50:	fca04ee3          	bgtz	a0,11f2c <__sflush_r+0x17c>
   11f54:	01045783          	lhu	a5,16(s0)
   11f58:	01013903          	ld	s2,16(sp)
   11f5c:	0407e793          	ori	a5,a5,64
   11f60:	02813083          	ld	ra,40(sp)
   11f64:	00f41823          	sh	a5,16(s0)
   11f68:	02013403          	ld	s0,32(sp)
   11f6c:	01813483          	ld	s1,24(sp)
   11f70:	00813983          	ld	s3,8(sp)
   11f74:	fff00513          	li	a0,-1
   11f78:	03010113          	addi	sp,sp,48
   11f7c:	00008067          	ret
   11f80:	0705a683          	lw	a3,112(a1)
   11f84:	e6d044e3          	bgtz	a3,11dec <__sflush_r+0x3c>
   11f88:	f55ff06f          	j	11edc <__sflush_r+0x12c>
   11f8c:	01813483          	ld	s1,24(sp)
   11f90:	01013903          	ld	s2,16(sp)
   11f94:	f49ff06f          	j	11edc <__sflush_r+0x12c>
   11f98:	09043603          	ld	a2,144(s0)
   11f9c:	e95ff06f          	j	11e30 <__sflush_r+0x80>
   11fa0:	01843683          	ld	a3,24(s0)
   11fa4:	fffff737          	lui	a4,0xfffff
   11fa8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11fac:	00e7f733          	and	a4,a5,a4
   11fb0:	00e41823          	sh	a4,16(s0)
   11fb4:	00042423          	sw	zero,8(s0)
   11fb8:	00d43023          	sd	a3,0(s0)
   11fbc:	03379713          	slli	a4,a5,0x33
   11fc0:	ee075ce3          	bgez	a4,11eb8 <__sflush_r+0x108>
   11fc4:	05843583          	ld	a1,88(s0)
   11fc8:	08a43823          	sd	a0,144(s0)
   11fcc:	0099a023          	sw	s1,0(s3)
   11fd0:	ee059ae3          	bnez	a1,11ec4 <__sflush_r+0x114>
   11fd4:	01813483          	ld	s1,24(sp)
   11fd8:	f05ff06f          	j	11edc <__sflush_r+0x12c>
   11fdc:	0009a783          	lw	a5,0(s3)
   11fe0:	e40784e3          	beqz	a5,11e28 <__sflush_r+0x78>
   11fe4:	fe378713          	addi	a4,a5,-29
   11fe8:	00070c63          	beqz	a4,12000 <__sflush_r+0x250>
   11fec:	fea78793          	addi	a5,a5,-22
   11ff0:	00078863          	beqz	a5,12000 <__sflush_r+0x250>
   11ff4:	01045783          	lhu	a5,16(s0)
   11ff8:	0407e793          	ori	a5,a5,64
   11ffc:	f65ff06f          	j	11f60 <__sflush_r+0x1b0>
   12000:	0099a023          	sw	s1,0(s3)
   12004:	01813483          	ld	s1,24(sp)
   12008:	ed5ff06f          	j	11edc <__sflush_r+0x12c>

000000000001200c <_fflush_r>:
   1200c:	00050793          	mv	a5,a0
   12010:	00050663          	beqz	a0,1201c <_fflush_r+0x10>
   12014:	04853703          	ld	a4,72(a0)
   12018:	00070e63          	beqz	a4,12034 <_fflush_r+0x28>
   1201c:	01059703          	lh	a4,16(a1)
   12020:	00071663          	bnez	a4,1202c <_fflush_r+0x20>
   12024:	00000513          	li	a0,0
   12028:	00008067          	ret
   1202c:	00078513          	mv	a0,a5
   12030:	d81ff06f          	j	11db0 <__sflush_r>
   12034:	fe010113          	addi	sp,sp,-32
   12038:	00b13423          	sd	a1,8(sp)
   1203c:	00113c23          	sd	ra,24(sp)
   12040:	00a13023          	sd	a0,0(sp)
   12044:	f90fe0ef          	jal	107d4 <__sinit>
   12048:	00813583          	ld	a1,8(sp)
   1204c:	00013783          	ld	a5,0(sp)
   12050:	01059703          	lh	a4,16(a1)
   12054:	00070a63          	beqz	a4,12068 <_fflush_r+0x5c>
   12058:	01813083          	ld	ra,24(sp)
   1205c:	00078513          	mv	a0,a5
   12060:	02010113          	addi	sp,sp,32
   12064:	d4dff06f          	j	11db0 <__sflush_r>
   12068:	01813083          	ld	ra,24(sp)
   1206c:	00000513          	li	a0,0
   12070:	02010113          	addi	sp,sp,32
   12074:	00008067          	ret

0000000000012078 <fflush>:
   12078:	06050063          	beqz	a0,120d8 <fflush+0x60>
   1207c:	00050593          	mv	a1,a0
   12080:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12084:	00050663          	beqz	a0,12090 <fflush+0x18>
   12088:	04853783          	ld	a5,72(a0)
   1208c:	00078c63          	beqz	a5,120a4 <fflush+0x2c>
   12090:	01059783          	lh	a5,16(a1)
   12094:	00079663          	bnez	a5,120a0 <fflush+0x28>
   12098:	00000513          	li	a0,0
   1209c:	00008067          	ret
   120a0:	d11ff06f          	j	11db0 <__sflush_r>
   120a4:	fe010113          	addi	sp,sp,-32
   120a8:	00b13423          	sd	a1,8(sp)
   120ac:	00a13023          	sd	a0,0(sp)
   120b0:	00113c23          	sd	ra,24(sp)
   120b4:	f20fe0ef          	jal	107d4 <__sinit>
   120b8:	00813583          	ld	a1,8(sp)
   120bc:	00013503          	ld	a0,0(sp)
   120c0:	01059783          	lh	a5,16(a1)
   120c4:	02079863          	bnez	a5,120f4 <fflush+0x7c>
   120c8:	01813083          	ld	ra,24(sp)
   120cc:	00000513          	li	a0,0
   120d0:	02010113          	addi	sp,sp,32
   120d4:	00008067          	ret
   120d8:	00013637          	lui	a2,0x13
   120dc:	000125b7          	lui	a1,0x12
   120e0:	00013537          	lui	a0,0x13
   120e4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   120e8:	00c58593          	addi	a1,a1,12 # 1200c <_fflush_r>
   120ec:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   120f0:	f40fe06f          	j	10830 <_fwalk_sglue>
   120f4:	01813083          	ld	ra,24(sp)
   120f8:	02010113          	addi	sp,sp,32
   120fc:	cb5ff06f          	j	11db0 <__sflush_r>

0000000000012100 <_sbrk_r>:
   12100:	fe010113          	addi	sp,sp,-32
   12104:	00813823          	sd	s0,16(sp)
   12108:	00913423          	sd	s1,8(sp)
   1210c:	00050493          	mv	s1,a0
   12110:	00058513          	mv	a0,a1
   12114:	00113c23          	sd	ra,24(sp)
   12118:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   1211c:	228000ef          	jal	12344 <_sbrk>
   12120:	fff00793          	li	a5,-1
   12124:	00f50c63          	beq	a0,a5,1213c <_sbrk_r+0x3c>
   12128:	01813083          	ld	ra,24(sp)
   1212c:	01013403          	ld	s0,16(sp)
   12130:	00813483          	ld	s1,8(sp)
   12134:	02010113          	addi	sp,sp,32
   12138:	00008067          	ret
   1213c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12140:	fe0784e3          	beqz	a5,12128 <_sbrk_r+0x28>
   12144:	01813083          	ld	ra,24(sp)
   12148:	01013403          	ld	s0,16(sp)
   1214c:	00f4a023          	sw	a5,0(s1)
   12150:	00813483          	ld	s1,8(sp)
   12154:	02010113          	addi	sp,sp,32
   12158:	00008067          	ret

000000000001215c <__libc_fini_array>:
   1215c:	fe010113          	addi	sp,sp,-32
   12160:	00813823          	sd	s0,16(sp)
   12164:	000137b7          	lui	a5,0x13
   12168:	00013437          	lui	s0,0x13
   1216c:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12170:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12174:	408787b3          	sub	a5,a5,s0
   12178:	00913423          	sd	s1,8(sp)
   1217c:	00113c23          	sd	ra,24(sp)
   12180:	4037d493          	srai	s1,a5,0x3
   12184:	02048063          	beqz	s1,121a4 <__libc_fini_array+0x48>
   12188:	ff840413          	addi	s0,s0,-8
   1218c:	00f40433          	add	s0,s0,a5
   12190:	00043783          	ld	a5,0(s0)
   12194:	fff48493          	addi	s1,s1,-1
   12198:	ff840413          	addi	s0,s0,-8
   1219c:	000780e7          	jalr	a5
   121a0:	fe0498e3          	bnez	s1,12190 <__libc_fini_array+0x34>
   121a4:	01813083          	ld	ra,24(sp)
   121a8:	01013403          	ld	s0,16(sp)
   121ac:	00813483          	ld	s1,8(sp)
   121b0:	02010113          	addi	sp,sp,32
   121b4:	00008067          	ret

00000000000121b8 <__register_exitproc>:
   121b8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   121bc:	04078e63          	beqz	a5,12218 <__register_exitproc+0x60>
   121c0:	0087a703          	lw	a4,8(a5)
   121c4:	01f00813          	li	a6,31
   121c8:	08e84263          	blt	a6,a4,1224c <__register_exitproc+0x94>
   121cc:	02050863          	beqz	a0,121fc <__register_exitproc+0x44>
   121d0:	00371813          	slli	a6,a4,0x3
   121d4:	01078833          	add	a6,a5,a6
   121d8:	10c83823          	sd	a2,272(a6)
   121dc:	3107a883          	lw	a7,784(a5)
   121e0:	00100613          	li	a2,1
   121e4:	00e6163b          	sllw	a2,a2,a4
   121e8:	00c8e8b3          	or	a7,a7,a2
   121ec:	3117a823          	sw	a7,784(a5)
   121f0:	20d83823          	sd	a3,528(a6)
   121f4:	00200693          	li	a3,2
   121f8:	02d50663          	beq	a0,a3,12224 <__register_exitproc+0x6c>
   121fc:	0017069b          	addiw	a3,a4,1
   12200:	00371713          	slli	a4,a4,0x3
   12204:	00d7a423          	sw	a3,8(a5)
   12208:	00e787b3          	add	a5,a5,a4
   1220c:	00b7b823          	sd	a1,16(a5)
   12210:	00000513          	li	a0,0
   12214:	00008067          	ret
   12218:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   1221c:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12220:	fa1ff06f          	j	121c0 <__register_exitproc+0x8>
   12224:	3147a683          	lw	a3,788(a5)
   12228:	00000513          	li	a0,0
   1222c:	00d66633          	or	a2,a2,a3
   12230:	0017069b          	addiw	a3,a4,1
   12234:	00371713          	slli	a4,a4,0x3
   12238:	30c7aa23          	sw	a2,788(a5)
   1223c:	00d7a423          	sw	a3,8(a5)
   12240:	00e787b3          	add	a5,a5,a4
   12244:	00b7b823          	sd	a1,16(a5)
   12248:	00008067          	ret
   1224c:	fff00513          	li	a0,-1
   12250:	00008067          	ret

0000000000012254 <_close>:
   12254:	03900893          	li	a7,57
   12258:	00000073          	ecall
   1225c:	00054663          	bltz	a0,12268 <_close+0x14>
   12260:	0005051b          	sext.w	a0,a0
   12264:	00008067          	ret
   12268:	fe010113          	addi	sp,sp,-32
   1226c:	00113c23          	sd	ra,24(sp)
   12270:	00a13423          	sd	a0,8(sp)
   12274:	188000ef          	jal	123fc <__errno>
   12278:	00813783          	ld	a5,8(sp)
   1227c:	01813083          	ld	ra,24(sp)
   12280:	40f007bb          	negw	a5,a5
   12284:	00f52023          	sw	a5,0(a0)
   12288:	fff00513          	li	a0,-1
   1228c:	02010113          	addi	sp,sp,32
   12290:	00008067          	ret

0000000000012294 <_exit>:
   12294:	05d00893          	li	a7,93
   12298:	00000073          	ecall
   1229c:	00054463          	bltz	a0,122a4 <_exit+0x10>
   122a0:	0000006f          	j	122a0 <_exit+0xc>
   122a4:	fe010113          	addi	sp,sp,-32
   122a8:	00113c23          	sd	ra,24(sp)
   122ac:	00a13423          	sd	a0,8(sp)
   122b0:	14c000ef          	jal	123fc <__errno>
   122b4:	00813783          	ld	a5,8(sp)
   122b8:	40f007bb          	negw	a5,a5
   122bc:	00f52023          	sw	a5,0(a0)
   122c0:	0000006f          	j	122c0 <_exit+0x2c>

00000000000122c4 <_lseek>:
   122c4:	03e00893          	li	a7,62
   122c8:	00000073          	ecall
   122cc:	00054463          	bltz	a0,122d4 <_lseek+0x10>
   122d0:	00008067          	ret
   122d4:	fe010113          	addi	sp,sp,-32
   122d8:	00113c23          	sd	ra,24(sp)
   122dc:	00a13423          	sd	a0,8(sp)
   122e0:	11c000ef          	jal	123fc <__errno>
   122e4:	00813783          	ld	a5,8(sp)
   122e8:	01813083          	ld	ra,24(sp)
   122ec:	40f007bb          	negw	a5,a5
   122f0:	00f52023          	sw	a5,0(a0)
   122f4:	fff00793          	li	a5,-1
   122f8:	00078513          	mv	a0,a5
   122fc:	02010113          	addi	sp,sp,32
   12300:	00008067          	ret

0000000000012304 <_read>:
   12304:	03f00893          	li	a7,63
   12308:	00000073          	ecall
   1230c:	00054463          	bltz	a0,12314 <_read+0x10>
   12310:	00008067          	ret
   12314:	fe010113          	addi	sp,sp,-32
   12318:	00113c23          	sd	ra,24(sp)
   1231c:	00a13423          	sd	a0,8(sp)
   12320:	0dc000ef          	jal	123fc <__errno>
   12324:	00813783          	ld	a5,8(sp)
   12328:	01813083          	ld	ra,24(sp)
   1232c:	40f007bb          	negw	a5,a5
   12330:	00f52023          	sw	a5,0(a0)
   12334:	fff00793          	li	a5,-1
   12338:	00078513          	mv	a0,a5
   1233c:	02010113          	addi	sp,sp,32
   12340:	00008067          	ret

0000000000012344 <_sbrk>:
   12344:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12348:	ff010113          	addi	sp,sp,-16
   1234c:	00113423          	sd	ra,8(sp)
   12350:	00050713          	mv	a4,a0
   12354:	02079063          	bnez	a5,12374 <_sbrk+0x30>
   12358:	0d600893          	li	a7,214
   1235c:	00000513          	li	a0,0
   12360:	00000073          	ecall
   12364:	fff00793          	li	a5,-1
   12368:	02f50c63          	beq	a0,a5,123a0 <_sbrk+0x5c>
   1236c:	00050793          	mv	a5,a0
   12370:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12374:	00f70533          	add	a0,a4,a5
   12378:	0d600893          	li	a7,214
   1237c:	00000073          	ecall
   12380:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12384:	00f70733          	add	a4,a4,a5
   12388:	00e51c63          	bne	a0,a4,123a0 <_sbrk+0x5c>
   1238c:	00813083          	ld	ra,8(sp)
   12390:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12394:	00078513          	mv	a0,a5
   12398:	01010113          	addi	sp,sp,16
   1239c:	00008067          	ret
   123a0:	05c000ef          	jal	123fc <__errno>
   123a4:	00813083          	ld	ra,8(sp)
   123a8:	00c00793          	li	a5,12
   123ac:	00f52023          	sw	a5,0(a0)
   123b0:	fff00513          	li	a0,-1
   123b4:	01010113          	addi	sp,sp,16
   123b8:	00008067          	ret

00000000000123bc <_write>:
   123bc:	04000893          	li	a7,64
   123c0:	00000073          	ecall
   123c4:	00054463          	bltz	a0,123cc <_write+0x10>
   123c8:	00008067          	ret
   123cc:	fe010113          	addi	sp,sp,-32
   123d0:	00113c23          	sd	ra,24(sp)
   123d4:	00a13423          	sd	a0,8(sp)
   123d8:	024000ef          	jal	123fc <__errno>
   123dc:	00813783          	ld	a5,8(sp)
   123e0:	01813083          	ld	ra,24(sp)
   123e4:	40f007bb          	negw	a5,a5
   123e8:	00f52023          	sw	a5,0(a0)
   123ec:	fff00793          	li	a5,-1
   123f0:	00078513          	mv	a0,a5
   123f4:	02010113          	addi	sp,sp,32
   123f8:	00008067          	ret

00000000000123fc <__errno>:
   123fc:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12400:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012408 <__EH_FRAME_BEGIN__>:
   12408:	0000                	.insn	2, 0x0000
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

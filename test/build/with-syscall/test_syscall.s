
test/build/with-syscall/test_syscall.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	4f1000ef          	jal	10e24 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	134020ef          	jal	1227c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	14450513          	addi	a0,a0,324 # 12144 <__libc_fini_array>
   1015c:	6010006f          	j	10f5c <atexit>
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
   10184:	3c5000ef          	jal	10d48 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	dd450513          	addi	a0,a0,-556 # 10f5c <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	fb050513          	addi	a0,a0,-80 # 12144 <__libc_fini_array>
   1019c:	5c1000ef          	jal	10f5c <atexit>
   101a0:	315000ef          	jal	10cb4 <__libc_init_array>
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
   101d8:	47050513          	addi	a0,a0,1136 # 12470 <__EH_FRAME_BEGIN__>
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
   1020c:	47050513          	addi	a0,a0,1136 # 12470 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	000127b7          	lui	a5,0x12
   10230:	3f078513          	addi	a0,a5,1008 # 123f0 <__errno+0xc>
   10234:	130000ef          	jal	10364 <print_s>
   10238:	0001e7b7          	lui	a5,0x1e
   1023c:	24078513          	addi	a0,a5,576 # 1e240 <__BSS_END__+0xa2c8>
   10240:	0b8000ef          	jal	102f8 <print_d>
   10244:	06100513          	li	a0,97
   10248:	14c000ef          	jal	10394 <print_c>
   1024c:	06200513          	li	a0,98
   10250:	144000ef          	jal	10394 <print_c>
   10254:	06300513          	li	a0,99
   10258:	13c000ef          	jal	10394 <print_c>
   1025c:	00a00513          	li	a0,10
   10260:	134000ef          	jal	10394 <print_c>
   10264:	000127b7          	lui	a5,0x12
   10268:	41078513          	addi	a0,a5,1040 # 12410 <__errno+0x2c>
   1026c:	0f8000ef          	jal	10364 <print_s>
   10270:	1bc000ef          	jal	1042c <read_num>
   10274:	00050793          	mv	a5,a0
   10278:	fef42623          	sw	a5,-20(s0)
   1027c:	000127b7          	lui	a5,0x12
   10280:	42878513          	addi	a0,a5,1064 # 12428 <__errno+0x44>
   10284:	0e0000ef          	jal	10364 <print_s>
   10288:	fec42783          	lw	a5,-20(s0)
   1028c:	00078513          	mv	a0,a5
   10290:	068000ef          	jal	102f8 <print_d>
   10294:	000127b7          	lui	a5,0x12
   10298:	43878513          	addi	a0,a5,1080 # 12438 <__errno+0x54>
   1029c:	0c8000ef          	jal	10364 <print_s>
   102a0:	000127b7          	lui	a5,0x12
   102a4:	44078513          	addi	a0,a5,1088 # 12440 <__errno+0x5c>
   102a8:	0bc000ef          	jal	10364 <print_s>
   102ac:	148000ef          	jal	103f4 <read_char>
   102b0:	00050793          	mv	a5,a0
   102b4:	fef405a3          	sb	a5,-21(s0)
   102b8:	000127b7          	lui	a5,0x12
   102bc:	45878513          	addi	a0,a5,1112 # 12458 <__errno+0x74>
   102c0:	0a4000ef          	jal	10364 <print_s>
   102c4:	feb44783          	lbu	a5,-21(s0)
   102c8:	00078513          	mv	a0,a5
   102cc:	0c8000ef          	jal	10394 <print_c>
   102d0:	000127b7          	lui	a5,0x12
   102d4:	43878513          	addi	a0,a5,1080 # 12438 <__errno+0x54>
   102d8:	08c000ef          	jal	10364 <print_s>
   102dc:	0ec000ef          	jal	103c8 <exit_proc>
   102e0:	00000793          	li	a5,0
   102e4:	00078513          	mv	a0,a5
   102e8:	01813083          	ld	ra,24(sp)
   102ec:	01013403          	ld	s0,16(sp)
   102f0:	02010113          	addi	sp,sp,32
   102f4:	00008067          	ret

00000000000102f8 <print_d>:
   102f8:	fe010113          	addi	sp,sp,-32
   102fc:	00113c23          	sd	ra,24(sp)
   10300:	00813823          	sd	s0,16(sp)
   10304:	02010413          	addi	s0,sp,32
   10308:	00050793          	mv	a5,a0
   1030c:	fef42623          	sw	a5,-20(s0)
   10310:	00200893          	li	a7,2
   10314:	00000073          	ecall
   10318:	00000013          	nop
   1031c:	01813083          	ld	ra,24(sp)
   10320:	01013403          	ld	s0,16(sp)
   10324:	02010113          	addi	sp,sp,32
   10328:	00008067          	ret

000000000001032c <print_ll>:
   1032c:	fe010113          	addi	sp,sp,-32
   10330:	00113c23          	sd	ra,24(sp)
   10334:	00813823          	sd	s0,16(sp)
   10338:	02010413          	addi	s0,sp,32
   1033c:	fea43423          	sd	a0,-24(s0)
   10340:	fe843783          	ld	a5,-24(s0)
   10344:	00078513          	mv	a0,a5
   10348:	00600893          	li	a7,6
   1034c:	00000073          	ecall
   10350:	00000013          	nop
   10354:	01813083          	ld	ra,24(sp)
   10358:	01013403          	ld	s0,16(sp)
   1035c:	02010113          	addi	sp,sp,32
   10360:	00008067          	ret

0000000000010364 <print_s>:
   10364:	fe010113          	addi	sp,sp,-32
   10368:	00113c23          	sd	ra,24(sp)
   1036c:	00813823          	sd	s0,16(sp)
   10370:	02010413          	addi	s0,sp,32
   10374:	fea43423          	sd	a0,-24(s0)
   10378:	00000893          	li	a7,0
   1037c:	00000073          	ecall
   10380:	00000013          	nop
   10384:	01813083          	ld	ra,24(sp)
   10388:	01013403          	ld	s0,16(sp)
   1038c:	02010113          	addi	sp,sp,32
   10390:	00008067          	ret

0000000000010394 <print_c>:
   10394:	fe010113          	addi	sp,sp,-32
   10398:	00113c23          	sd	ra,24(sp)
   1039c:	00813823          	sd	s0,16(sp)
   103a0:	02010413          	addi	s0,sp,32
   103a4:	00050793          	mv	a5,a0
   103a8:	fef407a3          	sb	a5,-17(s0)
   103ac:	00100893          	li	a7,1
   103b0:	00000073          	ecall
   103b4:	00000013          	nop
   103b8:	01813083          	ld	ra,24(sp)
   103bc:	01013403          	ld	s0,16(sp)
   103c0:	02010113          	addi	sp,sp,32
   103c4:	00008067          	ret

00000000000103c8 <exit_proc>:
   103c8:	ff010113          	addi	sp,sp,-16
   103cc:	00113423          	sd	ra,8(sp)
   103d0:	00813023          	sd	s0,0(sp)
   103d4:	01010413          	addi	s0,sp,16
   103d8:	00300893          	li	a7,3
   103dc:	00000073          	ecall
   103e0:	00000013          	nop
   103e4:	00813083          	ld	ra,8(sp)
   103e8:	00013403          	ld	s0,0(sp)
   103ec:	01010113          	addi	sp,sp,16
   103f0:	00008067          	ret

00000000000103f4 <read_char>:
   103f4:	fe010113          	addi	sp,sp,-32
   103f8:	00113c23          	sd	ra,24(sp)
   103fc:	00813823          	sd	s0,16(sp)
   10400:	02010413          	addi	s0,sp,32
   10404:	00400893          	li	a7,4
   10408:	00000073          	ecall
   1040c:	00050793          	mv	a5,a0
   10410:	fef407a3          	sb	a5,-17(s0)
   10414:	fef44783          	lbu	a5,-17(s0)
   10418:	00078513          	mv	a0,a5
   1041c:	01813083          	ld	ra,24(sp)
   10420:	01013403          	ld	s0,16(sp)
   10424:	02010113          	addi	sp,sp,32
   10428:	00008067          	ret

000000000001042c <read_num>:
   1042c:	fe010113          	addi	sp,sp,-32
   10430:	00113c23          	sd	ra,24(sp)
   10434:	00813823          	sd	s0,16(sp)
   10438:	02010413          	addi	s0,sp,32
   1043c:	00500893          	li	a7,5
   10440:	00000073          	ecall
   10444:	00050793          	mv	a5,a0
   10448:	fef43423          	sd	a5,-24(s0)
   1044c:	fe843783          	ld	a5,-24(s0)
   10450:	00078513          	mv	a0,a5
   10454:	01813083          	ld	ra,24(sp)
   10458:	01013403          	ld	s0,16(sp)
   1045c:	02010113          	addi	sp,sp,32
   10460:	00008067          	ret

0000000000010464 <find_min>:
   10464:	fd010113          	addi	sp,sp,-48
   10468:	02113423          	sd	ra,40(sp)
   1046c:	02813023          	sd	s0,32(sp)
   10470:	03010413          	addi	s0,sp,48
   10474:	fca43c23          	sd	a0,-40(s0)
   10478:	00058793          	mv	a5,a1
   1047c:	fcf42a23          	sw	a5,-44(s0)
   10480:	00700893          	li	a7,7
   10484:	00000073          	ecall
   10488:	00050793          	mv	a5,a0
   1048c:	fef42623          	sw	a5,-20(s0)
   10490:	fec42783          	lw	a5,-20(s0)
   10494:	00078513          	mv	a0,a5
   10498:	02813083          	ld	ra,40(sp)
   1049c:	02013403          	ld	s0,32(sp)
   104a0:	03010113          	addi	sp,sp,48
   104a4:	00008067          	ret

00000000000104a8 <__fp_lock>:
   104a8:	00000513          	li	a0,0
   104ac:	00008067          	ret

00000000000104b0 <stdio_exit_handler>:
   104b0:	00013637          	lui	a2,0x13
   104b4:	000125b7          	lui	a1,0x12
   104b8:	00013537          	lui	a0,0x13
   104bc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   104c0:	c8458593          	addi	a1,a1,-892 # 11c84 <_fclose_r>
   104c4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   104c8:	34c0006f          	j	10814 <_fwalk_sglue>

00000000000104cc <cleanup_stdio>:
   104cc:	00853583          	ld	a1,8(a0)
   104d0:	ff010113          	addi	sp,sp,-16
   104d4:	00813023          	sd	s0,0(sp)
   104d8:	00113423          	sd	ra,8(sp)
   104dc:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   104e0:	00050413          	mv	s0,a0
   104e4:	00f58463          	beq	a1,a5,104ec <cleanup_stdio+0x20>
   104e8:	79c010ef          	jal	11c84 <_fclose_r>
   104ec:	01043583          	ld	a1,16(s0)
   104f0:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   104f4:	00f58663          	beq	a1,a5,10500 <cleanup_stdio+0x34>
   104f8:	00040513          	mv	a0,s0
   104fc:	788010ef          	jal	11c84 <_fclose_r>
   10500:	01843583          	ld	a1,24(s0)
   10504:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10508:	00f58c63          	beq	a1,a5,10520 <cleanup_stdio+0x54>
   1050c:	00040513          	mv	a0,s0
   10510:	00013403          	ld	s0,0(sp)
   10514:	00813083          	ld	ra,8(sp)
   10518:	01010113          	addi	sp,sp,16
   1051c:	7680106f          	j	11c84 <_fclose_r>
   10520:	00813083          	ld	ra,8(sp)
   10524:	00013403          	ld	s0,0(sp)
   10528:	01010113          	addi	sp,sp,16
   1052c:	00008067          	ret

0000000000010530 <__fp_unlock>:
   10530:	00000513          	li	a0,0
   10534:	00008067          	ret

0000000000010538 <global_stdio_init.part.0>:
   10538:	fd010113          	addi	sp,sp,-48
   1053c:	000107b7          	lui	a5,0x10
   10540:	02813023          	sd	s0,32(sp)
   10544:	4b078793          	addi	a5,a5,1200 # 104b0 <stdio_exit_handler>
   10548:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   1054c:	02113423          	sd	ra,40(sp)
   10550:	00913c23          	sd	s1,24(sp)
   10554:	01213823          	sd	s2,16(sp)
   10558:	01313423          	sd	s3,8(sp)
   1055c:	01413023          	sd	s4,0(sp)
   10560:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10564:	00800613          	li	a2,8
   10568:	00400793          	li	a5,4
   1056c:	00000593          	li	a1,0
   10570:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10574:	00f42823          	sw	a5,16(s0)
   10578:	00043023          	sd	zero,0(s0)
   1057c:	00043423          	sd	zero,8(s0)
   10580:	0a042623          	sw	zero,172(s0)
   10584:	00043c23          	sd	zero,24(s0)
   10588:	02042023          	sw	zero,32(s0)
   1058c:	02042423          	sw	zero,40(s0)
   10590:	7b8000ef          	jal	10d48 <memset>
   10594:	00011a37          	lui	s4,0x11
   10598:	000119b7          	lui	s3,0x11
   1059c:	00011937          	lui	s2,0x11
   105a0:	000114b7          	lui	s1,0x11
   105a4:	000107b7          	lui	a5,0x10
   105a8:	8e4a0a13          	addi	s4,s4,-1820 # 108e4 <__sread>
   105ac:	94898993          	addi	s3,s3,-1720 # 10948 <__swrite>
   105b0:	9d090913          	addi	s2,s2,-1584 # 109d0 <__sseek>
   105b4:	a3448493          	addi	s1,s1,-1484 # 10a34 <__sclose>
   105b8:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   105bc:	00800613          	li	a2,8
   105c0:	00000593          	li	a1,0
   105c4:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   105c8:	0cf42023          	sw	a5,192(s0)
   105cc:	03443c23          	sd	s4,56(s0)
   105d0:	05343023          	sd	s3,64(s0)
   105d4:	05243423          	sd	s2,72(s0)
   105d8:	04943823          	sd	s1,80(s0)
   105dc:	02843823          	sd	s0,48(s0)
   105e0:	0a043823          	sd	zero,176(s0)
   105e4:	0a043c23          	sd	zero,184(s0)
   105e8:	14042e23          	sw	zero,348(s0)
   105ec:	0c043423          	sd	zero,200(s0)
   105f0:	0c042823          	sw	zero,208(s0)
   105f4:	0c042c23          	sw	zero,216(s0)
   105f8:	750000ef          	jal	10d48 <memset>
   105fc:	000207b7          	lui	a5,0x20
   10600:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10604:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10608:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   1060c:	00800613          	li	a2,8
   10610:	00000593          	li	a1,0
   10614:	0f443423          	sd	s4,232(s0)
   10618:	0f343823          	sd	s3,240(s0)
   1061c:	0f243c23          	sd	s2,248(s0)
   10620:	10943023          	sd	s1,256(s0)
   10624:	16f42823          	sw	a5,368(s0)
   10628:	16043023          	sd	zero,352(s0)
   1062c:	16043423          	sd	zero,360(s0)
   10630:	20042623          	sw	zero,524(s0)
   10634:	16043c23          	sd	zero,376(s0)
   10638:	18042023          	sw	zero,384(s0)
   1063c:	18042423          	sw	zero,392(s0)
   10640:	0ee43023          	sd	a4,224(s0)
   10644:	704000ef          	jal	10d48 <memset>
   10648:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1064c:	19443c23          	sd	s4,408(s0)
   10650:	1b343023          	sd	s3,416(s0)
   10654:	1b243423          	sd	s2,424(s0)
   10658:	1a943823          	sd	s1,432(s0)
   1065c:	02813083          	ld	ra,40(sp)
   10660:	18f43823          	sd	a5,400(s0)
   10664:	02013403          	ld	s0,32(sp)
   10668:	01813483          	ld	s1,24(sp)
   1066c:	01013903          	ld	s2,16(sp)
   10670:	00813983          	ld	s3,8(sp)
   10674:	00013a03          	ld	s4,0(sp)
   10678:	03010113          	addi	sp,sp,48
   1067c:	00008067          	ret

0000000000010680 <__sfp>:
   10680:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10684:	fd010113          	addi	sp,sp,-48
   10688:	00913c23          	sd	s1,24(sp)
   1068c:	02113423          	sd	ra,40(sp)
   10690:	02813023          	sd	s0,32(sp)
   10694:	00050493          	mv	s1,a0
   10698:	10078463          	beqz	a5,107a0 <__sfp+0x120>
   1069c:	000136b7          	lui	a3,0x13
   106a0:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   106a4:	0086a703          	lw	a4,8(a3)
   106a8:	08e05c63          	blez	a4,10740 <__sfp+0xc0>
   106ac:	02071713          	slli	a4,a4,0x20
   106b0:	02075713          	srli	a4,a4,0x20
   106b4:	00171793          	slli	a5,a4,0x1
   106b8:	00e787b3          	add	a5,a5,a4
   106bc:	0106b403          	ld	s0,16(a3)
   106c0:	00279793          	slli	a5,a5,0x2
   106c4:	40e787b3          	sub	a5,a5,a4
   106c8:	00479793          	slli	a5,a5,0x4
   106cc:	00f407b3          	add	a5,s0,a5
   106d0:	00c0006f          	j	106dc <__sfp+0x5c>
   106d4:	0b040413          	addi	s0,s0,176
   106d8:	06f40463          	beq	s0,a5,10740 <__sfp+0xc0>
   106dc:	01041703          	lh	a4,16(s0)
   106e0:	fe071ae3          	bnez	a4,106d4 <__sfp+0x54>
   106e4:	ffff07b7          	lui	a5,0xffff0
   106e8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   106ec:	00f42823          	sw	a5,16(s0)
   106f0:	0a042623          	sw	zero,172(s0)
   106f4:	00043023          	sd	zero,0(s0)
   106f8:	00043423          	sd	zero,8(s0)
   106fc:	00043c23          	sd	zero,24(s0)
   10700:	02042023          	sw	zero,32(s0)
   10704:	02042423          	sw	zero,40(s0)
   10708:	00800613          	li	a2,8
   1070c:	00000593          	li	a1,0
   10710:	0a440513          	addi	a0,s0,164
   10714:	634000ef          	jal	10d48 <memset>
   10718:	04043c23          	sd	zero,88(s0)
   1071c:	06042023          	sw	zero,96(s0)
   10720:	06043c23          	sd	zero,120(s0)
   10724:	08042023          	sw	zero,128(s0)
   10728:	02813083          	ld	ra,40(sp)
   1072c:	00040513          	mv	a0,s0
   10730:	02013403          	ld	s0,32(sp)
   10734:	01813483          	ld	s1,24(sp)
   10738:	03010113          	addi	sp,sp,48
   1073c:	00008067          	ret
   10740:	0006b403          	ld	s0,0(a3)
   10744:	00040663          	beqz	s0,10750 <__sfp+0xd0>
   10748:	00040693          	mv	a3,s0
   1074c:	f59ff06f          	j	106a4 <__sfp+0x24>
   10750:	2d800593          	li	a1,728
   10754:	00048513          	mv	a0,s1
   10758:	00d13423          	sd	a3,8(sp)
   1075c:	43d000ef          	jal	11398 <_malloc_r>
   10760:	00813683          	ld	a3,8(sp)
   10764:	00050413          	mv	s0,a0
   10768:	04050063          	beqz	a0,107a8 <__sfp+0x128>
   1076c:	00400793          	li	a5,4
   10770:	00f52423          	sw	a5,8(a0)
   10774:	01850513          	addi	a0,a0,24
   10778:	00043023          	sd	zero,0(s0)
   1077c:	00a43823          	sd	a0,16(s0)
   10780:	2c000613          	li	a2,704
   10784:	00000593          	li	a1,0
   10788:	00d13423          	sd	a3,8(sp)
   1078c:	5bc000ef          	jal	10d48 <memset>
   10790:	00813683          	ld	a3,8(sp)
   10794:	0086b023          	sd	s0,0(a3)
   10798:	00040693          	mv	a3,s0
   1079c:	f09ff06f          	j	106a4 <__sfp+0x24>
   107a0:	d99ff0ef          	jal	10538 <global_stdio_init.part.0>
   107a4:	ef9ff06f          	j	1069c <__sfp+0x1c>
   107a8:	0006b023          	sd	zero,0(a3)
   107ac:	00c00793          	li	a5,12
   107b0:	00f4a023          	sw	a5,0(s1)
   107b4:	f75ff06f          	j	10728 <__sfp+0xa8>

00000000000107b8 <__sinit>:
   107b8:	04853783          	ld	a5,72(a0)
   107bc:	00078463          	beqz	a5,107c4 <__sinit+0xc>
   107c0:	00008067          	ret
   107c4:	000107b7          	lui	a5,0x10
   107c8:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   107cc:	4cc78793          	addi	a5,a5,1228 # 104cc <cleanup_stdio>
   107d0:	04f53423          	sd	a5,72(a0)
   107d4:	fe0716e3          	bnez	a4,107c0 <__sinit+0x8>
   107d8:	d61ff06f          	j	10538 <global_stdio_init.part.0>

00000000000107dc <__sfp_lock_acquire>:
   107dc:	00008067          	ret

00000000000107e0 <__sfp_lock_release>:
   107e0:	00008067          	ret

00000000000107e4 <__fp_lock_all>:
   107e4:	00013637          	lui	a2,0x13
   107e8:	000105b7          	lui	a1,0x10
   107ec:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107f0:	4a858593          	addi	a1,a1,1192 # 104a8 <__fp_lock>
   107f4:	00000513          	li	a0,0
   107f8:	01c0006f          	j	10814 <_fwalk_sglue>

00000000000107fc <__fp_unlock_all>:
   107fc:	00013637          	lui	a2,0x13
   10800:	000105b7          	lui	a1,0x10
   10804:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10808:	53058593          	addi	a1,a1,1328 # 10530 <__fp_unlock>
   1080c:	00000513          	li	a0,0
   10810:	0040006f          	j	10814 <_fwalk_sglue>

0000000000010814 <_fwalk_sglue>:
   10814:	fb010113          	addi	sp,sp,-80
   10818:	03213823          	sd	s2,48(sp)
   1081c:	03313423          	sd	s3,40(sp)
   10820:	03413023          	sd	s4,32(sp)
   10824:	01513c23          	sd	s5,24(sp)
   10828:	01613823          	sd	s6,16(sp)
   1082c:	01713423          	sd	s7,8(sp)
   10830:	04113423          	sd	ra,72(sp)
   10834:	04813023          	sd	s0,64(sp)
   10838:	02913c23          	sd	s1,56(sp)
   1083c:	00060913          	mv	s2,a2
   10840:	00050a13          	mv	s4,a0
   10844:	00058a93          	mv	s5,a1
   10848:	00000b13          	li	s6,0
   1084c:	00100b93          	li	s7,1
   10850:	fff00993          	li	s3,-1
   10854:	00892783          	lw	a5,8(s2)
   10858:	04f05a63          	blez	a5,108ac <_fwalk_sglue+0x98>
   1085c:	02079793          	slli	a5,a5,0x20
   10860:	0207d793          	srli	a5,a5,0x20
   10864:	00179493          	slli	s1,a5,0x1
   10868:	00f484b3          	add	s1,s1,a5
   1086c:	01093403          	ld	s0,16(s2)
   10870:	00249493          	slli	s1,s1,0x2
   10874:	40f484b3          	sub	s1,s1,a5
   10878:	00449493          	slli	s1,s1,0x4
   1087c:	009404b3          	add	s1,s0,s1
   10880:	01045783          	lhu	a5,16(s0)
   10884:	02fbf063          	bgeu	s7,a5,108a4 <_fwalk_sglue+0x90>
   10888:	01241783          	lh	a5,18(s0)
   1088c:	00040593          	mv	a1,s0
   10890:	000a0513          	mv	a0,s4
   10894:	01378863          	beq	a5,s3,108a4 <_fwalk_sglue+0x90>
   10898:	000a80e7          	jalr	s5
   1089c:	01656b33          	or	s6,a0,s6
   108a0:	000b0b1b          	sext.w	s6,s6
   108a4:	0b040413          	addi	s0,s0,176
   108a8:	fc941ce3          	bne	s0,s1,10880 <_fwalk_sglue+0x6c>
   108ac:	00093903          	ld	s2,0(s2)
   108b0:	fa0912e3          	bnez	s2,10854 <_fwalk_sglue+0x40>
   108b4:	04813083          	ld	ra,72(sp)
   108b8:	04013403          	ld	s0,64(sp)
   108bc:	03813483          	ld	s1,56(sp)
   108c0:	03013903          	ld	s2,48(sp)
   108c4:	02813983          	ld	s3,40(sp)
   108c8:	02013a03          	ld	s4,32(sp)
   108cc:	01813a83          	ld	s5,24(sp)
   108d0:	00813b83          	ld	s7,8(sp)
   108d4:	000b0513          	mv	a0,s6
   108d8:	01013b03          	ld	s6,16(sp)
   108dc:	05010113          	addi	sp,sp,80
   108e0:	00008067          	ret

00000000000108e4 <__sread>:
   108e4:	ff010113          	addi	sp,sp,-16
   108e8:	00813023          	sd	s0,0(sp)
   108ec:	00058413          	mv	s0,a1
   108f0:	01259583          	lh	a1,18(a1)
   108f4:	00113423          	sd	ra,8(sp)
   108f8:	2ec000ef          	jal	10be4 <_read_r>
   108fc:	02054063          	bltz	a0,1091c <__sread+0x38>
   10900:	09043783          	ld	a5,144(s0)
   10904:	00813083          	ld	ra,8(sp)
   10908:	00a787b3          	add	a5,a5,a0
   1090c:	08f43823          	sd	a5,144(s0)
   10910:	00013403          	ld	s0,0(sp)
   10914:	01010113          	addi	sp,sp,16
   10918:	00008067          	ret
   1091c:	01045783          	lhu	a5,16(s0)
   10920:	fffff737          	lui	a4,0xfffff
   10924:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10928:	00e7f7b3          	and	a5,a5,a4
   1092c:	00813083          	ld	ra,8(sp)
   10930:	00f41823          	sh	a5,16(s0)
   10934:	00013403          	ld	s0,0(sp)
   10938:	01010113          	addi	sp,sp,16
   1093c:	00008067          	ret

0000000000010940 <__seofread>:
   10940:	00000513          	li	a0,0
   10944:	00008067          	ret

0000000000010948 <__swrite>:
   10948:	01059783          	lh	a5,16(a1)
   1094c:	fd010113          	addi	sp,sp,-48
   10950:	00068313          	mv	t1,a3
   10954:	02113423          	sd	ra,40(sp)
   10958:	1007f693          	andi	a3,a5,256
   1095c:	00058713          	mv	a4,a1
   10960:	00060893          	mv	a7,a2
   10964:	00050813          	mv	a6,a0
   10968:	02069863          	bnez	a3,10998 <__swrite+0x50>
   1096c:	fffff6b7          	lui	a3,0xfffff
   10970:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10974:	02813083          	ld	ra,40(sp)
   10978:	00d7f7b3          	and	a5,a5,a3
   1097c:	01271583          	lh	a1,18(a4)
   10980:	00f71823          	sh	a5,16(a4)
   10984:	00030693          	mv	a3,t1
   10988:	00088613          	mv	a2,a7
   1098c:	00080513          	mv	a0,a6
   10990:	03010113          	addi	sp,sp,48
   10994:	2b80006f          	j	10c4c <_write_r>
   10998:	01259583          	lh	a1,18(a1)
   1099c:	00c13823          	sd	a2,16(sp)
   109a0:	00200693          	li	a3,2
   109a4:	00000613          	li	a2,0
   109a8:	00613c23          	sd	t1,24(sp)
   109ac:	00e13023          	sd	a4,0(sp)
   109b0:	00a13423          	sd	a0,8(sp)
   109b4:	1c8000ef          	jal	10b7c <_lseek_r>
   109b8:	00013703          	ld	a4,0(sp)
   109bc:	01813303          	ld	t1,24(sp)
   109c0:	01013883          	ld	a7,16(sp)
   109c4:	01071783          	lh	a5,16(a4)
   109c8:	00813803          	ld	a6,8(sp)
   109cc:	fa1ff06f          	j	1096c <__swrite+0x24>

00000000000109d0 <__sseek>:
   109d0:	ff010113          	addi	sp,sp,-16
   109d4:	00813023          	sd	s0,0(sp)
   109d8:	00058413          	mv	s0,a1
   109dc:	01259583          	lh	a1,18(a1)
   109e0:	00113423          	sd	ra,8(sp)
   109e4:	198000ef          	jal	10b7c <_lseek_r>
   109e8:	fff00713          	li	a4,-1
   109ec:	01041783          	lh	a5,16(s0)
   109f0:	02e50263          	beq	a0,a4,10a14 <__sseek+0x44>
   109f4:	00001737          	lui	a4,0x1
   109f8:	00e7e7b3          	or	a5,a5,a4
   109fc:	00813083          	ld	ra,8(sp)
   10a00:	08a43823          	sd	a0,144(s0)
   10a04:	00f41823          	sh	a5,16(s0)
   10a08:	00013403          	ld	s0,0(sp)
   10a0c:	01010113          	addi	sp,sp,16
   10a10:	00008067          	ret
   10a14:	80050713          	addi	a4,a0,-2048
   10a18:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10a1c:	00e7f7b3          	and	a5,a5,a4
   10a20:	00813083          	ld	ra,8(sp)
   10a24:	00f41823          	sh	a5,16(s0)
   10a28:	00013403          	ld	s0,0(sp)
   10a2c:	01010113          	addi	sp,sp,16
   10a30:	00008067          	ret

0000000000010a34 <__sclose>:
   10a34:	01259583          	lh	a1,18(a1)
   10a38:	0040006f          	j	10a3c <_close_r>

0000000000010a3c <_close_r>:
   10a3c:	fe010113          	addi	sp,sp,-32
   10a40:	00813823          	sd	s0,16(sp)
   10a44:	00913423          	sd	s1,8(sp)
   10a48:	00050493          	mv	s1,a0
   10a4c:	00058513          	mv	a0,a1
   10a50:	00113c23          	sd	ra,24(sp)
   10a54:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a58:	7e4010ef          	jal	1223c <_close>
   10a5c:	fff00793          	li	a5,-1
   10a60:	00f50c63          	beq	a0,a5,10a78 <_close_r+0x3c>
   10a64:	01813083          	ld	ra,24(sp)
   10a68:	01013403          	ld	s0,16(sp)
   10a6c:	00813483          	ld	s1,8(sp)
   10a70:	02010113          	addi	sp,sp,32
   10a74:	00008067          	ret
   10a78:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a7c:	fe0784e3          	beqz	a5,10a64 <_close_r+0x28>
   10a80:	01813083          	ld	ra,24(sp)
   10a84:	01013403          	ld	s0,16(sp)
   10a88:	00f4a023          	sw	a5,0(s1)
   10a8c:	00813483          	ld	s1,8(sp)
   10a90:	02010113          	addi	sp,sp,32
   10a94:	00008067          	ret

0000000000010a98 <_reclaim_reent>:
   10a98:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10a9c:	0ca78e63          	beq	a5,a0,10b78 <_reclaim_reent+0xe0>
   10aa0:	06853583          	ld	a1,104(a0)
   10aa4:	fd010113          	addi	sp,sp,-48
   10aa8:	00913c23          	sd	s1,24(sp)
   10aac:	02113423          	sd	ra,40(sp)
   10ab0:	02813023          	sd	s0,32(sp)
   10ab4:	00050493          	mv	s1,a0
   10ab8:	04058863          	beqz	a1,10b08 <_reclaim_reent+0x70>
   10abc:	01213823          	sd	s2,16(sp)
   10ac0:	01313423          	sd	s3,8(sp)
   10ac4:	00000913          	li	s2,0
   10ac8:	20000993          	li	s3,512
   10acc:	012587b3          	add	a5,a1,s2
   10ad0:	0007b403          	ld	s0,0(a5)
   10ad4:	00040e63          	beqz	s0,10af0 <_reclaim_reent+0x58>
   10ad8:	00040593          	mv	a1,s0
   10adc:	00043403          	ld	s0,0(s0)
   10ae0:	00048513          	mv	a0,s1
   10ae4:	5b0000ef          	jal	11094 <_free_r>
   10ae8:	fe0418e3          	bnez	s0,10ad8 <_reclaim_reent+0x40>
   10aec:	0684b583          	ld	a1,104(s1)
   10af0:	00890913          	addi	s2,s2,8
   10af4:	fd391ce3          	bne	s2,s3,10acc <_reclaim_reent+0x34>
   10af8:	00048513          	mv	a0,s1
   10afc:	598000ef          	jal	11094 <_free_r>
   10b00:	01013903          	ld	s2,16(sp)
   10b04:	00813983          	ld	s3,8(sp)
   10b08:	0504b583          	ld	a1,80(s1)
   10b0c:	00058663          	beqz	a1,10b18 <_reclaim_reent+0x80>
   10b10:	00048513          	mv	a0,s1
   10b14:	580000ef          	jal	11094 <_free_r>
   10b18:	0604b403          	ld	s0,96(s1)
   10b1c:	00040c63          	beqz	s0,10b34 <_reclaim_reent+0x9c>
   10b20:	00040593          	mv	a1,s0
   10b24:	00043403          	ld	s0,0(s0)
   10b28:	00048513          	mv	a0,s1
   10b2c:	568000ef          	jal	11094 <_free_r>
   10b30:	fe0418e3          	bnez	s0,10b20 <_reclaim_reent+0x88>
   10b34:	0784b583          	ld	a1,120(s1)
   10b38:	00058663          	beqz	a1,10b44 <_reclaim_reent+0xac>
   10b3c:	00048513          	mv	a0,s1
   10b40:	554000ef          	jal	11094 <_free_r>
   10b44:	0484b783          	ld	a5,72(s1)
   10b48:	00078e63          	beqz	a5,10b64 <_reclaim_reent+0xcc>
   10b4c:	02013403          	ld	s0,32(sp)
   10b50:	02813083          	ld	ra,40(sp)
   10b54:	00048513          	mv	a0,s1
   10b58:	01813483          	ld	s1,24(sp)
   10b5c:	03010113          	addi	sp,sp,48
   10b60:	00078067          	jr	a5
   10b64:	02813083          	ld	ra,40(sp)
   10b68:	02013403          	ld	s0,32(sp)
   10b6c:	01813483          	ld	s1,24(sp)
   10b70:	03010113          	addi	sp,sp,48
   10b74:	00008067          	ret
   10b78:	00008067          	ret

0000000000010b7c <_lseek_r>:
   10b7c:	fe010113          	addi	sp,sp,-32
   10b80:	00058793          	mv	a5,a1
   10b84:	00813823          	sd	s0,16(sp)
   10b88:	00913423          	sd	s1,8(sp)
   10b8c:	00060593          	mv	a1,a2
   10b90:	00050493          	mv	s1,a0
   10b94:	00068613          	mv	a2,a3
   10b98:	00078513          	mv	a0,a5
   10b9c:	00113c23          	sd	ra,24(sp)
   10ba0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10ba4:	708010ef          	jal	122ac <_lseek>
   10ba8:	fff00793          	li	a5,-1
   10bac:	00f50c63          	beq	a0,a5,10bc4 <_lseek_r+0x48>
   10bb0:	01813083          	ld	ra,24(sp)
   10bb4:	01013403          	ld	s0,16(sp)
   10bb8:	00813483          	ld	s1,8(sp)
   10bbc:	02010113          	addi	sp,sp,32
   10bc0:	00008067          	ret
   10bc4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bc8:	fe0784e3          	beqz	a5,10bb0 <_lseek_r+0x34>
   10bcc:	01813083          	ld	ra,24(sp)
   10bd0:	01013403          	ld	s0,16(sp)
   10bd4:	00f4a023          	sw	a5,0(s1)
   10bd8:	00813483          	ld	s1,8(sp)
   10bdc:	02010113          	addi	sp,sp,32
   10be0:	00008067          	ret

0000000000010be4 <_read_r>:
   10be4:	fe010113          	addi	sp,sp,-32
   10be8:	00058793          	mv	a5,a1
   10bec:	00813823          	sd	s0,16(sp)
   10bf0:	00913423          	sd	s1,8(sp)
   10bf4:	00060593          	mv	a1,a2
   10bf8:	00050493          	mv	s1,a0
   10bfc:	00068613          	mv	a2,a3
   10c00:	00078513          	mv	a0,a5
   10c04:	00113c23          	sd	ra,24(sp)
   10c08:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c0c:	6e0010ef          	jal	122ec <_read>
   10c10:	fff00793          	li	a5,-1
   10c14:	00f50c63          	beq	a0,a5,10c2c <_read_r+0x48>
   10c18:	01813083          	ld	ra,24(sp)
   10c1c:	01013403          	ld	s0,16(sp)
   10c20:	00813483          	ld	s1,8(sp)
   10c24:	02010113          	addi	sp,sp,32
   10c28:	00008067          	ret
   10c2c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c30:	fe0784e3          	beqz	a5,10c18 <_read_r+0x34>
   10c34:	01813083          	ld	ra,24(sp)
   10c38:	01013403          	ld	s0,16(sp)
   10c3c:	00f4a023          	sw	a5,0(s1)
   10c40:	00813483          	ld	s1,8(sp)
   10c44:	02010113          	addi	sp,sp,32
   10c48:	00008067          	ret

0000000000010c4c <_write_r>:
   10c4c:	fe010113          	addi	sp,sp,-32
   10c50:	00058793          	mv	a5,a1
   10c54:	00813823          	sd	s0,16(sp)
   10c58:	00913423          	sd	s1,8(sp)
   10c5c:	00060593          	mv	a1,a2
   10c60:	00050493          	mv	s1,a0
   10c64:	00068613          	mv	a2,a3
   10c68:	00078513          	mv	a0,a5
   10c6c:	00113c23          	sd	ra,24(sp)
   10c70:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c74:	730010ef          	jal	123a4 <_write>
   10c78:	fff00793          	li	a5,-1
   10c7c:	00f50c63          	beq	a0,a5,10c94 <_write_r+0x48>
   10c80:	01813083          	ld	ra,24(sp)
   10c84:	01013403          	ld	s0,16(sp)
   10c88:	00813483          	ld	s1,8(sp)
   10c8c:	02010113          	addi	sp,sp,32
   10c90:	00008067          	ret
   10c94:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c98:	fe0784e3          	beqz	a5,10c80 <_write_r+0x34>
   10c9c:	01813083          	ld	ra,24(sp)
   10ca0:	01013403          	ld	s0,16(sp)
   10ca4:	00f4a023          	sw	a5,0(s1)
   10ca8:	00813483          	ld	s1,8(sp)
   10cac:	02010113          	addi	sp,sp,32
   10cb0:	00008067          	ret

0000000000010cb4 <__libc_init_array>:
   10cb4:	fe010113          	addi	sp,sp,-32
   10cb8:	00813823          	sd	s0,16(sp)
   10cbc:	01213023          	sd	s2,0(sp)
   10cc0:	00013437          	lui	s0,0x13
   10cc4:	00013937          	lui	s2,0x13
   10cc8:	00113c23          	sd	ra,24(sp)
   10ccc:	00913423          	sd	s1,8(sp)
   10cd0:	00090913          	mv	s2,s2
   10cd4:	00040413          	mv	s0,s0
   10cd8:	02890263          	beq	s2,s0,10cfc <__libc_init_array+0x48>
   10cdc:	40890933          	sub	s2,s2,s0
   10ce0:	40395913          	srai	s2,s2,0x3
   10ce4:	00000493          	li	s1,0
   10ce8:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10cec:	00148493          	addi	s1,s1,1
   10cf0:	00840413          	addi	s0,s0,8
   10cf4:	000780e7          	jalr	a5
   10cf8:	ff24e8e3          	bltu	s1,s2,10ce8 <__libc_init_array+0x34>
   10cfc:	00013937          	lui	s2,0x13
   10d00:	00013437          	lui	s0,0x13
   10d04:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10d08:	00040413          	mv	s0,s0
   10d0c:	02890263          	beq	s2,s0,10d30 <__libc_init_array+0x7c>
   10d10:	40890933          	sub	s2,s2,s0
   10d14:	40395913          	srai	s2,s2,0x3
   10d18:	00000493          	li	s1,0
   10d1c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10d20:	00148493          	addi	s1,s1,1
   10d24:	00840413          	addi	s0,s0,8
   10d28:	000780e7          	jalr	a5
   10d2c:	ff24e8e3          	bltu	s1,s2,10d1c <__libc_init_array+0x68>
   10d30:	01813083          	ld	ra,24(sp)
   10d34:	01013403          	ld	s0,16(sp)
   10d38:	00813483          	ld	s1,8(sp)
   10d3c:	00013903          	ld	s2,0(sp)
   10d40:	02010113          	addi	sp,sp,32
   10d44:	00008067          	ret

0000000000010d48 <memset>:
   10d48:	00f00313          	li	t1,15
   10d4c:	00050713          	mv	a4,a0
   10d50:	02c37a63          	bgeu	t1,a2,10d84 <memset+0x3c>
   10d54:	00f77793          	andi	a5,a4,15
   10d58:	0a079063          	bnez	a5,10df8 <memset+0xb0>
   10d5c:	06059e63          	bnez	a1,10dd8 <memset+0x90>
   10d60:	ff067693          	andi	a3,a2,-16
   10d64:	00f67613          	andi	a2,a2,15
   10d68:	00e686b3          	add	a3,a3,a4
   10d6c:	00b73023          	sd	a1,0(a4)
   10d70:	00b73423          	sd	a1,8(a4)
   10d74:	01070713          	addi	a4,a4,16
   10d78:	fed76ae3          	bltu	a4,a3,10d6c <memset+0x24>
   10d7c:	00061463          	bnez	a2,10d84 <memset+0x3c>
   10d80:	00008067          	ret
   10d84:	40c306b3          	sub	a3,t1,a2
   10d88:	00269693          	slli	a3,a3,0x2
   10d8c:	00000297          	auipc	t0,0x0
   10d90:	005686b3          	add	a3,a3,t0
   10d94:	00c68067          	jr	12(a3)
   10d98:	00b70723          	sb	a1,14(a4)
   10d9c:	00b706a3          	sb	a1,13(a4)
   10da0:	00b70623          	sb	a1,12(a4)
   10da4:	00b705a3          	sb	a1,11(a4)
   10da8:	00b70523          	sb	a1,10(a4)
   10dac:	00b704a3          	sb	a1,9(a4)
   10db0:	00b70423          	sb	a1,8(a4)
   10db4:	00b703a3          	sb	a1,7(a4)
   10db8:	00b70323          	sb	a1,6(a4)
   10dbc:	00b702a3          	sb	a1,5(a4)
   10dc0:	00b70223          	sb	a1,4(a4)
   10dc4:	00b701a3          	sb	a1,3(a4)
   10dc8:	00b70123          	sb	a1,2(a4)
   10dcc:	00b700a3          	sb	a1,1(a4)
   10dd0:	00b70023          	sb	a1,0(a4)
   10dd4:	00008067          	ret
   10dd8:	0ff5f593          	zext.b	a1,a1
   10ddc:	00859693          	slli	a3,a1,0x8
   10de0:	00d5e5b3          	or	a1,a1,a3
   10de4:	01059693          	slli	a3,a1,0x10
   10de8:	00d5e5b3          	or	a1,a1,a3
   10dec:	02059693          	slli	a3,a1,0x20
   10df0:	00d5e5b3          	or	a1,a1,a3
   10df4:	f6dff06f          	j	10d60 <memset+0x18>
   10df8:	00279693          	slli	a3,a5,0x2
   10dfc:	00000297          	auipc	t0,0x0
   10e00:	005686b3          	add	a3,a3,t0
   10e04:	00008293          	mv	t0,ra
   10e08:	f98680e7          	jalr	-104(a3)
   10e0c:	00028093          	mv	ra,t0
   10e10:	ff078793          	addi	a5,a5,-16
   10e14:	40f70733          	sub	a4,a4,a5
   10e18:	00f60633          	add	a2,a2,a5
   10e1c:	f6c374e3          	bgeu	t1,a2,10d84 <memset+0x3c>
   10e20:	f3dff06f          	j	10d5c <memset+0x14>

0000000000010e24 <__call_exitprocs>:
   10e24:	fb010113          	addi	sp,sp,-80
   10e28:	03413023          	sd	s4,32(sp)
   10e2c:	03213823          	sd	s2,48(sp)
   10e30:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10e34:	04113423          	sd	ra,72(sp)
   10e38:	06090e63          	beqz	s2,10eb4 <__call_exitprocs+0x90>
   10e3c:	03313423          	sd	s3,40(sp)
   10e40:	01513c23          	sd	s5,24(sp)
   10e44:	01613823          	sd	s6,16(sp)
   10e48:	01713423          	sd	s7,8(sp)
   10e4c:	04813023          	sd	s0,64(sp)
   10e50:	02913c23          	sd	s1,56(sp)
   10e54:	01813023          	sd	s8,0(sp)
   10e58:	00050b13          	mv	s6,a0
   10e5c:	00058b93          	mv	s7,a1
   10e60:	fff00993          	li	s3,-1
   10e64:	00100a93          	li	s5,1
   10e68:	00892403          	lw	s0,8(s2)
   10e6c:	fff4041b          	addiw	s0,s0,-1
   10e70:	02044463          	bltz	s0,10e98 <__call_exitprocs+0x74>
   10e74:	01090493          	addi	s1,s2,16
   10e78:	00341793          	slli	a5,s0,0x3
   10e7c:	00f484b3          	add	s1,s1,a5
   10e80:	040b8463          	beqz	s7,10ec8 <__call_exitprocs+0xa4>
   10e84:	2004b783          	ld	a5,512(s1)
   10e88:	05778063          	beq	a5,s7,10ec8 <__call_exitprocs+0xa4>
   10e8c:	fff4041b          	addiw	s0,s0,-1
   10e90:	ff848493          	addi	s1,s1,-8
   10e94:	ff3418e3          	bne	s0,s3,10e84 <__call_exitprocs+0x60>
   10e98:	04013403          	ld	s0,64(sp)
   10e9c:	03813483          	ld	s1,56(sp)
   10ea0:	02813983          	ld	s3,40(sp)
   10ea4:	01813a83          	ld	s5,24(sp)
   10ea8:	01013b03          	ld	s6,16(sp)
   10eac:	00813b83          	ld	s7,8(sp)
   10eb0:	00013c03          	ld	s8,0(sp)
   10eb4:	04813083          	ld	ra,72(sp)
   10eb8:	03013903          	ld	s2,48(sp)
   10ebc:	02013a03          	ld	s4,32(sp)
   10ec0:	05010113          	addi	sp,sp,80
   10ec4:	00008067          	ret
   10ec8:	00892783          	lw	a5,8(s2)
   10ecc:	0004b683          	ld	a3,0(s1)
   10ed0:	fff7879b          	addiw	a5,a5,-1
   10ed4:	06878a63          	beq	a5,s0,10f48 <__call_exitprocs+0x124>
   10ed8:	0004b023          	sd	zero,0(s1)
   10edc:	02068663          	beqz	a3,10f08 <__call_exitprocs+0xe4>
   10ee0:	31092783          	lw	a5,784(s2)
   10ee4:	008a973b          	sllw	a4,s5,s0
   10ee8:	00892c03          	lw	s8,8(s2)
   10eec:	00e7f7b3          	and	a5,a5,a4
   10ef0:	02079463          	bnez	a5,10f18 <__call_exitprocs+0xf4>
   10ef4:	000680e7          	jalr	a3
   10ef8:	00892703          	lw	a4,8(s2)
   10efc:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10f00:	03871e63          	bne	a4,s8,10f3c <__call_exitprocs+0x118>
   10f04:	03279c63          	bne	a5,s2,10f3c <__call_exitprocs+0x118>
   10f08:	fff4041b          	addiw	s0,s0,-1
   10f0c:	ff848493          	addi	s1,s1,-8
   10f10:	f73418e3          	bne	s0,s3,10e80 <__call_exitprocs+0x5c>
   10f14:	f85ff06f          	j	10e98 <__call_exitprocs+0x74>
   10f18:	31492783          	lw	a5,788(s2)
   10f1c:	1004b583          	ld	a1,256(s1)
   10f20:	00f77733          	and	a4,a4,a5
   10f24:	02071663          	bnez	a4,10f50 <__call_exitprocs+0x12c>
   10f28:	000b0513          	mv	a0,s6
   10f2c:	000680e7          	jalr	a3
   10f30:	00892703          	lw	a4,8(s2)
   10f34:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10f38:	fd8706e3          	beq	a4,s8,10f04 <__call_exitprocs+0xe0>
   10f3c:	f4078ee3          	beqz	a5,10e98 <__call_exitprocs+0x74>
   10f40:	00078913          	mv	s2,a5
   10f44:	f25ff06f          	j	10e68 <__call_exitprocs+0x44>
   10f48:	00892423          	sw	s0,8(s2)
   10f4c:	f91ff06f          	j	10edc <__call_exitprocs+0xb8>
   10f50:	00058513          	mv	a0,a1
   10f54:	000680e7          	jalr	a3
   10f58:	fa1ff06f          	j	10ef8 <__call_exitprocs+0xd4>

0000000000010f5c <atexit>:
   10f5c:	00050593          	mv	a1,a0
   10f60:	00000693          	li	a3,0
   10f64:	00000613          	li	a2,0
   10f68:	00000513          	li	a0,0
   10f6c:	2340106f          	j	121a0 <__register_exitproc>

0000000000010f70 <_malloc_trim_r>:
   10f70:	fd010113          	addi	sp,sp,-48
   10f74:	01213823          	sd	s2,16(sp)
   10f78:	00013937          	lui	s2,0x13
   10f7c:	02813023          	sd	s0,32(sp)
   10f80:	00913c23          	sd	s1,24(sp)
   10f84:	01313423          	sd	s3,8(sp)
   10f88:	00058413          	mv	s0,a1
   10f8c:	02113423          	sd	ra,40(sp)
   10f90:	00050993          	mv	s3,a0
   10f94:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10f98:	4e5000ef          	jal	11c7c <__malloc_lock>
   10f9c:	01093783          	ld	a5,16(s2)
   10fa0:	00001737          	lui	a4,0x1
   10fa4:	0087b483          	ld	s1,8(a5)
   10fa8:	ffc4f493          	andi	s1,s1,-4
   10fac:	7ff48793          	addi	a5,s1,2047
   10fb0:	7e078793          	addi	a5,a5,2016
   10fb4:	40878433          	sub	s0,a5,s0
   10fb8:	00c45413          	srli	s0,s0,0xc
   10fbc:	fff40413          	addi	s0,s0,-1
   10fc0:	00c41413          	slli	s0,s0,0xc
   10fc4:	00e44e63          	blt	s0,a4,10fe0 <_malloc_trim_r+0x70>
   10fc8:	00000593          	li	a1,0
   10fcc:	00098513          	mv	a0,s3
   10fd0:	118010ef          	jal	120e8 <_sbrk_r>
   10fd4:	01093783          	ld	a5,16(s2)
   10fd8:	009787b3          	add	a5,a5,s1
   10fdc:	02f50663          	beq	a0,a5,11008 <_malloc_trim_r+0x98>
   10fe0:	00098513          	mv	a0,s3
   10fe4:	49d000ef          	jal	11c80 <__malloc_unlock>
   10fe8:	02813083          	ld	ra,40(sp)
   10fec:	02013403          	ld	s0,32(sp)
   10ff0:	01813483          	ld	s1,24(sp)
   10ff4:	01013903          	ld	s2,16(sp)
   10ff8:	00813983          	ld	s3,8(sp)
   10ffc:	00000513          	li	a0,0
   11000:	03010113          	addi	sp,sp,48
   11004:	00008067          	ret
   11008:	408005b3          	neg	a1,s0
   1100c:	00098513          	mv	a0,s3
   11010:	0d8010ef          	jal	120e8 <_sbrk_r>
   11014:	fff00793          	li	a5,-1
   11018:	04f50463          	beq	a0,a5,11060 <_malloc_trim_r+0xf0>
   1101c:	01093683          	ld	a3,16(s2)
   11020:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11024:	408484b3          	sub	s1,s1,s0
   11028:	0014e493          	ori	s1,s1,1
   1102c:	00098513          	mv	a0,s3
   11030:	408787bb          	subw	a5,a5,s0
   11034:	0096b423          	sd	s1,8(a3)
   11038:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1103c:	445000ef          	jal	11c80 <__malloc_unlock>
   11040:	02813083          	ld	ra,40(sp)
   11044:	02013403          	ld	s0,32(sp)
   11048:	01813483          	ld	s1,24(sp)
   1104c:	01013903          	ld	s2,16(sp)
   11050:	00813983          	ld	s3,8(sp)
   11054:	00100513          	li	a0,1
   11058:	03010113          	addi	sp,sp,48
   1105c:	00008067          	ret
   11060:	00000593          	li	a1,0
   11064:	00098513          	mv	a0,s3
   11068:	080010ef          	jal	120e8 <_sbrk_r>
   1106c:	01093703          	ld	a4,16(s2)
   11070:	01f00693          	li	a3,31
   11074:	40e507b3          	sub	a5,a0,a4
   11078:	f6f6d4e3          	bge	a3,a5,10fe0 <_malloc_trim_r+0x70>
   1107c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11080:	0017e793          	ori	a5,a5,1
   11084:	40c50533          	sub	a0,a0,a2
   11088:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   1108c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11090:	f51ff06f          	j	10fe0 <_malloc_trim_r+0x70>

0000000000011094 <_free_r>:
   11094:	12058863          	beqz	a1,111c4 <_free_r+0x130>
   11098:	fe010113          	addi	sp,sp,-32
   1109c:	00813823          	sd	s0,16(sp)
   110a0:	00b13423          	sd	a1,8(sp)
   110a4:	00050413          	mv	s0,a0
   110a8:	00113c23          	sd	ra,24(sp)
   110ac:	3d1000ef          	jal	11c7c <__malloc_lock>
   110b0:	00813583          	ld	a1,8(sp)
   110b4:	00013837          	lui	a6,0x13
   110b8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   110bc:	ff85b503          	ld	a0,-8(a1)
   110c0:	ff058713          	addi	a4,a1,-16
   110c4:	01083883          	ld	a7,16(a6)
   110c8:	ffe57793          	andi	a5,a0,-2
   110cc:	00f70633          	add	a2,a4,a5
   110d0:	00863683          	ld	a3,8(a2)
   110d4:	00157313          	andi	t1,a0,1
   110d8:	ffc6f693          	andi	a3,a3,-4
   110dc:	18c88e63          	beq	a7,a2,11278 <_free_r+0x1e4>
   110e0:	00d63423          	sd	a3,8(a2)
   110e4:	00d608b3          	add	a7,a2,a3
   110e8:	0088b883          	ld	a7,8(a7)
   110ec:	0018f893          	andi	a7,a7,1
   110f0:	08031e63          	bnez	t1,1118c <_free_r+0xf8>
   110f4:	ff05b303          	ld	t1,-16(a1)
   110f8:	000135b7          	lui	a1,0x13
   110fc:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11100:	40670733          	sub	a4,a4,t1
   11104:	01073503          	ld	a0,16(a4)
   11108:	006787b3          	add	a5,a5,t1
   1110c:	14b50063          	beq	a0,a1,1124c <_free_r+0x1b8>
   11110:	01873303          	ld	t1,24(a4)
   11114:	00653c23          	sd	t1,24(a0)
   11118:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   1111c:	1a088263          	beqz	a7,112c0 <_free_r+0x22c>
   11120:	0017e693          	ori	a3,a5,1
   11124:	00d73423          	sd	a3,8(a4)
   11128:	00f63023          	sd	a5,0(a2)
   1112c:	1ff00693          	li	a3,511
   11130:	0af6e663          	bltu	a3,a5,111dc <_free_r+0x148>
   11134:	0037d793          	srli	a5,a5,0x3
   11138:	00179693          	slli	a3,a5,0x1
   1113c:	0026869b          	addiw	a3,a3,2
   11140:	00369693          	slli	a3,a3,0x3
   11144:	00883503          	ld	a0,8(a6)
   11148:	00d806b3          	add	a3,a6,a3
   1114c:	0006b583          	ld	a1,0(a3)
   11150:	4027d61b          	sraiw	a2,a5,0x2
   11154:	00100793          	li	a5,1
   11158:	00c797b3          	sll	a5,a5,a2
   1115c:	00a7e7b3          	or	a5,a5,a0
   11160:	ff068613          	addi	a2,a3,-16
   11164:	00b73823          	sd	a1,16(a4)
   11168:	00c73c23          	sd	a2,24(a4)
   1116c:	00f83423          	sd	a5,8(a6)
   11170:	00e6b023          	sd	a4,0(a3)
   11174:	00e5bc23          	sd	a4,24(a1)
   11178:	00040513          	mv	a0,s0
   1117c:	01013403          	ld	s0,16(sp)
   11180:	01813083          	ld	ra,24(sp)
   11184:	02010113          	addi	sp,sp,32
   11188:	2f90006f          	j	11c80 <__malloc_unlock>
   1118c:	02089e63          	bnez	a7,111c8 <_free_r+0x134>
   11190:	000135b7          	lui	a1,0x13
   11194:	00d787b3          	add	a5,a5,a3
   11198:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1119c:	01063683          	ld	a3,16(a2)
   111a0:	0017e893          	ori	a7,a5,1
   111a4:	00f70533          	add	a0,a4,a5
   111a8:	16b68663          	beq	a3,a1,11314 <_free_r+0x280>
   111ac:	01863603          	ld	a2,24(a2)
   111b0:	00c6bc23          	sd	a2,24(a3)
   111b4:	00d63823          	sd	a3,16(a2)
   111b8:	01173423          	sd	a7,8(a4)
   111bc:	00f53023          	sd	a5,0(a0)
   111c0:	f6dff06f          	j	1112c <_free_r+0x98>
   111c4:	00008067          	ret
   111c8:	00156513          	ori	a0,a0,1
   111cc:	fea5bc23          	sd	a0,-8(a1)
   111d0:	00f63023          	sd	a5,0(a2)
   111d4:	1ff00693          	li	a3,511
   111d8:	f4f6fee3          	bgeu	a3,a5,11134 <_free_r+0xa0>
   111dc:	0097d693          	srli	a3,a5,0x9
   111e0:	00400613          	li	a2,4
   111e4:	0ed66263          	bltu	a2,a3,112c8 <_free_r+0x234>
   111e8:	0067d693          	srli	a3,a5,0x6
   111ec:	00169593          	slli	a1,a3,0x1
   111f0:	0725859b          	addiw	a1,a1,114
   111f4:	00359593          	slli	a1,a1,0x3
   111f8:	0386861b          	addiw	a2,a3,56
   111fc:	00b805b3          	add	a1,a6,a1
   11200:	0005b683          	ld	a3,0(a1)
   11204:	ff058593          	addi	a1,a1,-16
   11208:	00d59863          	bne	a1,a3,11218 <_free_r+0x184>
   1120c:	1240006f          	j	11330 <_free_r+0x29c>
   11210:	0106b683          	ld	a3,16(a3)
   11214:	00d58863          	beq	a1,a3,11224 <_free_r+0x190>
   11218:	0086b603          	ld	a2,8(a3)
   1121c:	ffc67613          	andi	a2,a2,-4
   11220:	fec7e8e3          	bltu	a5,a2,11210 <_free_r+0x17c>
   11224:	0186b583          	ld	a1,24(a3)
   11228:	00b73c23          	sd	a1,24(a4)
   1122c:	00d73823          	sd	a3,16(a4)
   11230:	00040513          	mv	a0,s0
   11234:	01013403          	ld	s0,16(sp)
   11238:	01813083          	ld	ra,24(sp)
   1123c:	00e5b823          	sd	a4,16(a1)
   11240:	00e6bc23          	sd	a4,24(a3)
   11244:	02010113          	addi	sp,sp,32
   11248:	2390006f          	j	11c80 <__malloc_unlock>
   1124c:	0a089263          	bnez	a7,112f0 <_free_r+0x25c>
   11250:	01863583          	ld	a1,24(a2)
   11254:	01063603          	ld	a2,16(a2)
   11258:	00f686b3          	add	a3,a3,a5
   1125c:	0016e793          	ori	a5,a3,1
   11260:	00b63c23          	sd	a1,24(a2)
   11264:	00c5b823          	sd	a2,16(a1)
   11268:	00f73423          	sd	a5,8(a4)
   1126c:	00d70733          	add	a4,a4,a3
   11270:	00d73023          	sd	a3,0(a4)
   11274:	f05ff06f          	j	11178 <_free_r+0xe4>
   11278:	00d786b3          	add	a3,a5,a3
   1127c:	02031063          	bnez	t1,1129c <_free_r+0x208>
   11280:	ff05b783          	ld	a5,-16(a1)
   11284:	40f70733          	sub	a4,a4,a5
   11288:	01073603          	ld	a2,16(a4)
   1128c:	00f686b3          	add	a3,a3,a5
   11290:	01873783          	ld	a5,24(a4)
   11294:	00f63c23          	sd	a5,24(a2)
   11298:	00c7b823          	sd	a2,16(a5)
   1129c:	0016e613          	ori	a2,a3,1
   112a0:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   112a4:	00c73423          	sd	a2,8(a4)
   112a8:	00e83823          	sd	a4,16(a6)
   112ac:	ecf6e6e3          	bltu	a3,a5,11178 <_free_r+0xe4>
   112b0:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   112b4:	00040513          	mv	a0,s0
   112b8:	cb9ff0ef          	jal	10f70 <_malloc_trim_r>
   112bc:	ebdff06f          	j	11178 <_free_r+0xe4>
   112c0:	00d787b3          	add	a5,a5,a3
   112c4:	ed9ff06f          	j	1119c <_free_r+0x108>
   112c8:	01400613          	li	a2,20
   112cc:	02d67a63          	bgeu	a2,a3,11300 <_free_r+0x26c>
   112d0:	05400613          	li	a2,84
   112d4:	06d66c63          	bltu	a2,a3,1134c <_free_r+0x2b8>
   112d8:	00c7d693          	srli	a3,a5,0xc
   112dc:	00169593          	slli	a1,a3,0x1
   112e0:	0de5859b          	addiw	a1,a1,222
   112e4:	00359593          	slli	a1,a1,0x3
   112e8:	06e6861b          	addiw	a2,a3,110
   112ec:	f11ff06f          	j	111fc <_free_r+0x168>
   112f0:	0017e693          	ori	a3,a5,1
   112f4:	00d73423          	sd	a3,8(a4)
   112f8:	00f63023          	sd	a5,0(a2)
   112fc:	e7dff06f          	j	11178 <_free_r+0xe4>
   11300:	00169593          	slli	a1,a3,0x1
   11304:	0b85859b          	addiw	a1,a1,184
   11308:	00359593          	slli	a1,a1,0x3
   1130c:	05b6861b          	addiw	a2,a3,91
   11310:	eedff06f          	j	111fc <_free_r+0x168>
   11314:	02e83423          	sd	a4,40(a6)
   11318:	02e83023          	sd	a4,32(a6)
   1131c:	00b73c23          	sd	a1,24(a4)
   11320:	00b73823          	sd	a1,16(a4)
   11324:	01173423          	sd	a7,8(a4)
   11328:	00f53023          	sd	a5,0(a0)
   1132c:	e4dff06f          	j	11178 <_free_r+0xe4>
   11330:	00883503          	ld	a0,8(a6)
   11334:	4026561b          	sraiw	a2,a2,0x2
   11338:	00100793          	li	a5,1
   1133c:	00c797b3          	sll	a5,a5,a2
   11340:	00a7e7b3          	or	a5,a5,a0
   11344:	00f83423          	sd	a5,8(a6)
   11348:	ee1ff06f          	j	11228 <_free_r+0x194>
   1134c:	15400613          	li	a2,340
   11350:	00d66e63          	bltu	a2,a3,1136c <_free_r+0x2d8>
   11354:	00f7d693          	srli	a3,a5,0xf
   11358:	00169593          	slli	a1,a3,0x1
   1135c:	0f05859b          	addiw	a1,a1,240
   11360:	00359593          	slli	a1,a1,0x3
   11364:	0776861b          	addiw	a2,a3,119
   11368:	e95ff06f          	j	111fc <_free_r+0x168>
   1136c:	55400613          	li	a2,1364
   11370:	00d66e63          	bltu	a2,a3,1138c <_free_r+0x2f8>
   11374:	0127d693          	srli	a3,a5,0x12
   11378:	00169593          	slli	a1,a3,0x1
   1137c:	0fa5859b          	addiw	a1,a1,250
   11380:	00359593          	slli	a1,a1,0x3
   11384:	07c6861b          	addiw	a2,a3,124
   11388:	e75ff06f          	j	111fc <_free_r+0x168>
   1138c:	7f000593          	li	a1,2032
   11390:	07e00613          	li	a2,126
   11394:	e69ff06f          	j	111fc <_free_r+0x168>

0000000000011398 <_malloc_r>:
   11398:	fa010113          	addi	sp,sp,-96
   1139c:	04813823          	sd	s0,80(sp)
   113a0:	04113c23          	sd	ra,88(sp)
   113a4:	01758713          	addi	a4,a1,23
   113a8:	02e00793          	li	a5,46
   113ac:	00050413          	mv	s0,a0
   113b0:	08e7ee63          	bltu	a5,a4,1144c <_malloc_r+0xb4>
   113b4:	02000713          	li	a4,32
   113b8:	06b76c63          	bltu	a4,a1,11430 <_malloc_r+0x98>
   113bc:	0c1000ef          	jal	11c7c <__malloc_lock>
   113c0:	02000713          	li	a4,32
   113c4:	05000693          	li	a3,80
   113c8:	00400893          	li	a7,4
   113cc:	00013837          	lui	a6,0x13
   113d0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   113d4:	00d806b3          	add	a3,a6,a3
   113d8:	0086b783          	ld	a5,8(a3)
   113dc:	ff068613          	addi	a2,a3,-16
   113e0:	48c78063          	beq	a5,a2,11860 <_malloc_r+0x4c8>
   113e4:	0087b703          	ld	a4,8(a5)
   113e8:	0187b603          	ld	a2,24(a5)
   113ec:	0107b583          	ld	a1,16(a5)
   113f0:	ffc77713          	andi	a4,a4,-4
   113f4:	00e78733          	add	a4,a5,a4
   113f8:	00873683          	ld	a3,8(a4)
   113fc:	00c5bc23          	sd	a2,24(a1)
   11400:	00b63823          	sd	a1,16(a2)
   11404:	0016e693          	ori	a3,a3,1
   11408:	00040513          	mv	a0,s0
   1140c:	00d73423          	sd	a3,8(a4)
   11410:	00f13423          	sd	a5,8(sp)
   11414:	06d000ef          	jal	11c80 <__malloc_unlock>
   11418:	00813783          	ld	a5,8(sp)
   1141c:	05813083          	ld	ra,88(sp)
   11420:	05013403          	ld	s0,80(sp)
   11424:	01078513          	addi	a0,a5,16
   11428:	06010113          	addi	sp,sp,96
   1142c:	00008067          	ret
   11430:	00c00793          	li	a5,12
   11434:	00f42023          	sw	a5,0(s0)
   11438:	00000513          	li	a0,0
   1143c:	05813083          	ld	ra,88(sp)
   11440:	05013403          	ld	s0,80(sp)
   11444:	06010113          	addi	sp,sp,96
   11448:	00008067          	ret
   1144c:	00100793          	li	a5,1
   11450:	ff077713          	andi	a4,a4,-16
   11454:	01f79793          	slli	a5,a5,0x1f
   11458:	fcf77ce3          	bgeu	a4,a5,11430 <_malloc_r+0x98>
   1145c:	fcb76ae3          	bltu	a4,a1,11430 <_malloc_r+0x98>
   11460:	00e13423          	sd	a4,8(sp)
   11464:	019000ef          	jal	11c7c <__malloc_lock>
   11468:	00813703          	ld	a4,8(sp)
   1146c:	1f700793          	li	a5,503
   11470:	4ee7fa63          	bgeu	a5,a4,11964 <_malloc_r+0x5cc>
   11474:	00975793          	srli	a5,a4,0x9
   11478:	18078a63          	beqz	a5,1160c <_malloc_r+0x274>
   1147c:	00400693          	li	a3,4
   11480:	44f6ea63          	bltu	a3,a5,118d4 <_malloc_r+0x53c>
   11484:	00675793          	srli	a5,a4,0x6
   11488:	0397889b          	addiw	a7,a5,57
   1148c:	0018951b          	slliw	a0,a7,0x1
   11490:	03878e1b          	addiw	t3,a5,56
   11494:	00351513          	slli	a0,a0,0x3
   11498:	00013837          	lui	a6,0x13
   1149c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   114a0:	00a80533          	add	a0,a6,a0
   114a4:	00853783          	ld	a5,8(a0)
   114a8:	ff050513          	addi	a0,a0,-16
   114ac:	02f50863          	beq	a0,a5,114dc <_malloc_r+0x144>
   114b0:	01f00313          	li	t1,31
   114b4:	0140006f          	j	114c8 <_malloc_r+0x130>
   114b8:	0187b583          	ld	a1,24(a5)
   114bc:	36065263          	bgez	a2,11820 <_malloc_r+0x488>
   114c0:	00b50e63          	beq	a0,a1,114dc <_malloc_r+0x144>
   114c4:	00058793          	mv	a5,a1
   114c8:	0087b683          	ld	a3,8(a5)
   114cc:	ffc6f693          	andi	a3,a3,-4
   114d0:	40e68633          	sub	a2,a3,a4
   114d4:	fec352e3          	bge	t1,a2,114b8 <_malloc_r+0x120>
   114d8:	000e0893          	mv	a7,t3
   114dc:	02083783          	ld	a5,32(a6)
   114e0:	00013e37          	lui	t3,0x13
   114e4:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   114e8:	2fc78a63          	beq	a5,t3,117dc <_malloc_r+0x444>
   114ec:	0087b303          	ld	t1,8(a5)
   114f0:	01f00613          	li	a2,31
   114f4:	ffc37313          	andi	t1,t1,-4
   114f8:	40e306b3          	sub	a3,t1,a4
   114fc:	4ad64463          	blt	a2,a3,119a4 <_malloc_r+0x60c>
   11500:	03c83423          	sd	t3,40(a6)
   11504:	03c83023          	sd	t3,32(a6)
   11508:	4606da63          	bgez	a3,1197c <_malloc_r+0x5e4>
   1150c:	1ff00693          	li	a3,511
   11510:	00883583          	ld	a1,8(a6)
   11514:	3466ee63          	bltu	a3,t1,11870 <_malloc_r+0x4d8>
   11518:	00335313          	srli	t1,t1,0x3
   1151c:	00131693          	slli	a3,t1,0x1
   11520:	0026869b          	addiw	a3,a3,2
   11524:	00369693          	slli	a3,a3,0x3
   11528:	00d806b3          	add	a3,a6,a3
   1152c:	0006b503          	ld	a0,0(a3)
   11530:	4023531b          	sraiw	t1,t1,0x2
   11534:	00100613          	li	a2,1
   11538:	00661633          	sll	a2,a2,t1
   1153c:	00c5e5b3          	or	a1,a1,a2
   11540:	ff068613          	addi	a2,a3,-16
   11544:	00a7b823          	sd	a0,16(a5)
   11548:	00c7bc23          	sd	a2,24(a5)
   1154c:	00b83423          	sd	a1,8(a6)
   11550:	00f6b023          	sd	a5,0(a3)
   11554:	00f53c23          	sd	a5,24(a0)
   11558:	4028d79b          	sraiw	a5,a7,0x2
   1155c:	00100513          	li	a0,1
   11560:	00f51533          	sll	a0,a0,a5
   11564:	0aa5ec63          	bltu	a1,a0,1161c <_malloc_r+0x284>
   11568:	00b577b3          	and	a5,a0,a1
   1156c:	02079463          	bnez	a5,11594 <_malloc_r+0x1fc>
   11570:	00151513          	slli	a0,a0,0x1
   11574:	ffc8f893          	andi	a7,a7,-4
   11578:	00b577b3          	and	a5,a0,a1
   1157c:	0048889b          	addiw	a7,a7,4
   11580:	00079a63          	bnez	a5,11594 <_malloc_r+0x1fc>
   11584:	00151513          	slli	a0,a0,0x1
   11588:	00b577b3          	and	a5,a0,a1
   1158c:	0048889b          	addiw	a7,a7,4
   11590:	fe078ae3          	beqz	a5,11584 <_malloc_r+0x1ec>
   11594:	01f00e93          	li	t4,31
   11598:	00189f13          	slli	t5,a7,0x1
   1159c:	002f0f1b          	addiw	t5,t5,2
   115a0:	003f1f13          	slli	t5,t5,0x3
   115a4:	ff0f0f13          	addi	t5,t5,-16
   115a8:	01e80f33          	add	t5,a6,t5
   115ac:	000f0313          	mv	t1,t5
   115b0:	01833683          	ld	a3,24(t1)
   115b4:	00088f93          	mv	t6,a7
   115b8:	34d30263          	beq	t1,a3,118fc <_malloc_r+0x564>
   115bc:	0086b603          	ld	a2,8(a3)
   115c0:	00068793          	mv	a5,a3
   115c4:	0186b683          	ld	a3,24(a3)
   115c8:	ffc67613          	andi	a2,a2,-4
   115cc:	40e605b3          	sub	a1,a2,a4
   115d0:	34bec263          	blt	t4,a1,11914 <_malloc_r+0x57c>
   115d4:	fe05c2e3          	bltz	a1,115b8 <_malloc_r+0x220>
   115d8:	00c78633          	add	a2,a5,a2
   115dc:	00863703          	ld	a4,8(a2)
   115e0:	0107b583          	ld	a1,16(a5)
   115e4:	00040513          	mv	a0,s0
   115e8:	00176713          	ori	a4,a4,1
   115ec:	00e63423          	sd	a4,8(a2)
   115f0:	00d5bc23          	sd	a3,24(a1)
   115f4:	00b6b823          	sd	a1,16(a3)
   115f8:	00f13423          	sd	a5,8(sp)
   115fc:	684000ef          	jal	11c80 <__malloc_unlock>
   11600:	00813783          	ld	a5,8(sp)
   11604:	01078513          	addi	a0,a5,16
   11608:	e35ff06f          	j	1143c <_malloc_r+0xa4>
   1160c:	40000513          	li	a0,1024
   11610:	04000893          	li	a7,64
   11614:	03f00e13          	li	t3,63
   11618:	e81ff06f          	j	11498 <_malloc_r+0x100>
   1161c:	01083783          	ld	a5,16(a6)
   11620:	0087b683          	ld	a3,8(a5)
   11624:	ffc6f893          	andi	a7,a3,-4
   11628:	40e88633          	sub	a2,a7,a4
   1162c:	00e8e663          	bltu	a7,a4,11638 <_malloc_r+0x2a0>
   11630:	02062693          	slti	a3,a2,32
   11634:	1a068863          	beqz	a3,117e4 <_malloc_r+0x44c>
   11638:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   1163c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11640:	fff00693          	li	a3,-1
   11644:	00b705b3          	add	a1,a4,a1
   11648:	44d60663          	beq	a2,a3,11a94 <_malloc_r+0x6fc>
   1164c:	000016b7          	lui	a3,0x1
   11650:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11654:	00d585b3          	add	a1,a1,a3
   11658:	fffff6b7          	lui	a3,0xfffff
   1165c:	00d5f5b3          	and	a1,a1,a3
   11660:	00040513          	mv	a0,s0
   11664:	03013423          	sd	a6,40(sp)
   11668:	02f13023          	sd	a5,32(sp)
   1166c:	00e13c23          	sd	a4,24(sp)
   11670:	01113823          	sd	a7,16(sp)
   11674:	00b13423          	sd	a1,8(sp)
   11678:	271000ef          	jal	120e8 <_sbrk_r>
   1167c:	fff00693          	li	a3,-1
   11680:	00813583          	ld	a1,8(sp)
   11684:	01013883          	ld	a7,16(sp)
   11688:	01813703          	ld	a4,24(sp)
   1168c:	02013783          	ld	a5,32(sp)
   11690:	02813803          	ld	a6,40(sp)
   11694:	00050313          	mv	t1,a0
   11698:	36d50663          	beq	a0,a3,11a04 <_malloc_r+0x66c>
   1169c:	011786b3          	add	a3,a5,a7
   116a0:	36d56063          	bltu	a0,a3,11a00 <_malloc_r+0x668>
   116a4:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   116a8:	000e2603          	lw	a2,0(t3)
   116ac:	00b6063b          	addw	a2,a2,a1
   116b0:	00ce2023          	sw	a2,0(t3)
   116b4:	00060513          	mv	a0,a2
   116b8:	4a668c63          	beq	a3,t1,11b70 <_malloc_r+0x7d8>
   116bc:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   116c0:	fff00613          	li	a2,-1
   116c4:	4ccf0463          	beq	t5,a2,11b8c <_malloc_r+0x7f4>
   116c8:	40d306b3          	sub	a3,t1,a3
   116cc:	00a686bb          	addw	a3,a3,a0
   116d0:	00de2023          	sw	a3,0(t3)
   116d4:	00f37e93          	andi	t4,t1,15
   116d8:	3c0e8e63          	beqz	t4,11ab4 <_malloc_r+0x71c>
   116dc:	ff037313          	andi	t1,t1,-16
   116e0:	000016b7          	lui	a3,0x1
   116e4:	01030313          	addi	t1,t1,16
   116e8:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   116ec:	00b30633          	add	a2,t1,a1
   116f0:	41d685b3          	sub	a1,a3,t4
   116f4:	40c585b3          	sub	a1,a1,a2
   116f8:	03459593          	slli	a1,a1,0x34
   116fc:	0345d593          	srli	a1,a1,0x34
   11700:	00040513          	mv	a0,s0
   11704:	05c13023          	sd	t3,64(sp)
   11708:	03013c23          	sd	a6,56(sp)
   1170c:	02f13823          	sd	a5,48(sp)
   11710:	02e13423          	sd	a4,40(sp)
   11714:	03113023          	sd	a7,32(sp)
   11718:	00613c23          	sd	t1,24(sp)
   1171c:	01d13823          	sd	t4,16(sp)
   11720:	00c13423          	sd	a2,8(sp)
   11724:	04b13423          	sd	a1,72(sp)
   11728:	1c1000ef          	jal	120e8 <_sbrk_r>
   1172c:	00050693          	mv	a3,a0
   11730:	fff00513          	li	a0,-1
   11734:	00813603          	ld	a2,8(sp)
   11738:	01013e83          	ld	t4,16(sp)
   1173c:	01813303          	ld	t1,24(sp)
   11740:	02013883          	ld	a7,32(sp)
   11744:	02813703          	ld	a4,40(sp)
   11748:	03013783          	ld	a5,48(sp)
   1174c:	03813803          	ld	a6,56(sp)
   11750:	04013e03          	ld	t3,64(sp)
   11754:	48a68663          	beq	a3,a0,11be0 <_malloc_r+0x848>
   11758:	04813583          	ld	a1,72(sp)
   1175c:	0005851b          	sext.w	a0,a1
   11760:	000e2603          	lw	a2,0(t3)
   11764:	406686b3          	sub	a3,a3,t1
   11768:	00b686b3          	add	a3,a3,a1
   1176c:	0016e693          	ori	a3,a3,1
   11770:	00683823          	sd	t1,16(a6)
   11774:	00a6063b          	addw	a2,a2,a0
   11778:	00d33423          	sd	a3,8(t1)
   1177c:	00ce2023          	sw	a2,0(t3)
   11780:	03078e63          	beq	a5,a6,117bc <_malloc_r+0x424>
   11784:	01f00513          	li	a0,31
   11788:	41157663          	bgeu	a0,a7,11b94 <_malloc_r+0x7fc>
   1178c:	0087b583          	ld	a1,8(a5)
   11790:	fe888693          	addi	a3,a7,-24
   11794:	ff06f693          	andi	a3,a3,-16
   11798:	0015f593          	andi	a1,a1,1
   1179c:	00d5e5b3          	or	a1,a1,a3
   117a0:	00b7b423          	sd	a1,8(a5)
   117a4:	00900893          	li	a7,9
   117a8:	00d785b3          	add	a1,a5,a3
   117ac:	0115b423          	sd	a7,8(a1)
   117b0:	0115b823          	sd	a7,16(a1)
   117b4:	44d56863          	bltu	a0,a3,11c04 <_malloc_r+0x86c>
   117b8:	00833683          	ld	a3,8(t1)
   117bc:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   117c0:	00c5f463          	bgeu	a1,a2,117c8 <_malloc_r+0x430>
   117c4:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   117c8:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   117cc:	00c5f463          	bgeu	a1,a2,117d4 <_malloc_r+0x43c>
   117d0:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   117d4:	00030793          	mv	a5,t1
   117d8:	2340006f          	j	11a0c <_malloc_r+0x674>
   117dc:	00883583          	ld	a1,8(a6)
   117e0:	d79ff06f          	j	11558 <_malloc_r+0x1c0>
   117e4:	00176693          	ori	a3,a4,1
   117e8:	00d7b423          	sd	a3,8(a5)
   117ec:	00e78733          	add	a4,a5,a4
   117f0:	00166613          	ori	a2,a2,1
   117f4:	00e83823          	sd	a4,16(a6)
   117f8:	00040513          	mv	a0,s0
   117fc:	00c73423          	sd	a2,8(a4)
   11800:	00f13423          	sd	a5,8(sp)
   11804:	47c000ef          	jal	11c80 <__malloc_unlock>
   11808:	00813783          	ld	a5,8(sp)
   1180c:	05813083          	ld	ra,88(sp)
   11810:	05013403          	ld	s0,80(sp)
   11814:	01078513          	addi	a0,a5,16
   11818:	06010113          	addi	sp,sp,96
   1181c:	00008067          	ret
   11820:	0107b603          	ld	a2,16(a5)
   11824:	00d786b3          	add	a3,a5,a3
   11828:	0086b703          	ld	a4,8(a3)
   1182c:	00b63c23          	sd	a1,24(a2)
   11830:	00c5b823          	sd	a2,16(a1)
   11834:	00176713          	ori	a4,a4,1
   11838:	00040513          	mv	a0,s0
   1183c:	00e6b423          	sd	a4,8(a3)
   11840:	00f13423          	sd	a5,8(sp)
   11844:	43c000ef          	jal	11c80 <__malloc_unlock>
   11848:	00813783          	ld	a5,8(sp)
   1184c:	05813083          	ld	ra,88(sp)
   11850:	05013403          	ld	s0,80(sp)
   11854:	01078513          	addi	a0,a5,16
   11858:	06010113          	addi	sp,sp,96
   1185c:	00008067          	ret
   11860:	0186b783          	ld	a5,24(a3)
   11864:	0028889b          	addiw	a7,a7,2
   11868:	c6f68ae3          	beq	a3,a5,114dc <_malloc_r+0x144>
   1186c:	b79ff06f          	j	113e4 <_malloc_r+0x4c>
   11870:	00935693          	srli	a3,t1,0x9
   11874:	00400613          	li	a2,4
   11878:	16d67863          	bgeu	a2,a3,119e8 <_malloc_r+0x650>
   1187c:	01400613          	li	a2,20
   11880:	28d66e63          	bltu	a2,a3,11b1c <_malloc_r+0x784>
   11884:	00169513          	slli	a0,a3,0x1
   11888:	0b85051b          	addiw	a0,a0,184
   1188c:	00351513          	slli	a0,a0,0x3
   11890:	05b6861b          	addiw	a2,a3,91
   11894:	00a80533          	add	a0,a6,a0
   11898:	00053683          	ld	a3,0(a0)
   1189c:	ff050513          	addi	a0,a0,-16
   118a0:	00d51863          	bne	a0,a3,118b0 <_malloc_r+0x518>
   118a4:	1f80006f          	j	11a9c <_malloc_r+0x704>
   118a8:	0106b683          	ld	a3,16(a3)
   118ac:	00d50863          	beq	a0,a3,118bc <_malloc_r+0x524>
   118b0:	0086b603          	ld	a2,8(a3)
   118b4:	ffc67613          	andi	a2,a2,-4
   118b8:	fec368e3          	bltu	t1,a2,118a8 <_malloc_r+0x510>
   118bc:	0186b503          	ld	a0,24(a3)
   118c0:	00a7bc23          	sd	a0,24(a5)
   118c4:	00d7b823          	sd	a3,16(a5)
   118c8:	00f53823          	sd	a5,16(a0)
   118cc:	00f6bc23          	sd	a5,24(a3)
   118d0:	c89ff06f          	j	11558 <_malloc_r+0x1c0>
   118d4:	01400693          	li	a3,20
   118d8:	14f6fa63          	bgeu	a3,a5,11a2c <_malloc_r+0x694>
   118dc:	05400693          	li	a3,84
   118e0:	24f6ee63          	bltu	a3,a5,11b3c <_malloc_r+0x7a4>
   118e4:	00c75793          	srli	a5,a4,0xc
   118e8:	06f7889b          	addiw	a7,a5,111
   118ec:	0018951b          	slliw	a0,a7,0x1
   118f0:	06e78e1b          	addiw	t3,a5,110
   118f4:	00351513          	slli	a0,a0,0x3
   118f8:	ba1ff06f          	j	11498 <_malloc_r+0x100>
   118fc:	001f8f9b          	addiw	t6,t6,1
   11900:	003ff793          	andi	a5,t6,3
   11904:	01030313          	addi	t1,t1,16
   11908:	14078263          	beqz	a5,11a4c <_malloc_r+0x6b4>
   1190c:	01833683          	ld	a3,24(t1)
   11910:	ca9ff06f          	j	115b8 <_malloc_r+0x220>
   11914:	0107b503          	ld	a0,16(a5)
   11918:	00176893          	ori	a7,a4,1
   1191c:	0117b423          	sd	a7,8(a5)
   11920:	00d53c23          	sd	a3,24(a0)
   11924:	00a6b823          	sd	a0,16(a3)
   11928:	00e78733          	add	a4,a5,a4
   1192c:	02e83423          	sd	a4,40(a6)
   11930:	02e83023          	sd	a4,32(a6)
   11934:	0015e693          	ori	a3,a1,1
   11938:	00c78633          	add	a2,a5,a2
   1193c:	01c73c23          	sd	t3,24(a4)
   11940:	01c73823          	sd	t3,16(a4)
   11944:	00d73423          	sd	a3,8(a4)
   11948:	00040513          	mv	a0,s0
   1194c:	00b63023          	sd	a1,0(a2)
   11950:	00f13423          	sd	a5,8(sp)
   11954:	32c000ef          	jal	11c80 <__malloc_unlock>
   11958:	00813783          	ld	a5,8(sp)
   1195c:	01078513          	addi	a0,a5,16
   11960:	addff06f          	j	1143c <_malloc_r+0xa4>
   11964:	00375893          	srli	a7,a4,0x3
   11968:	00189693          	slli	a3,a7,0x1
   1196c:	0026869b          	addiw	a3,a3,2
   11970:	00369693          	slli	a3,a3,0x3
   11974:	0008889b          	sext.w	a7,a7
   11978:	a55ff06f          	j	113cc <_malloc_r+0x34>
   1197c:	00678333          	add	t1,a5,t1
   11980:	00833703          	ld	a4,8(t1)
   11984:	00040513          	mv	a0,s0
   11988:	00f13423          	sd	a5,8(sp)
   1198c:	00176713          	ori	a4,a4,1
   11990:	00e33423          	sd	a4,8(t1)
   11994:	2ec000ef          	jal	11c80 <__malloc_unlock>
   11998:	00813783          	ld	a5,8(sp)
   1199c:	01078513          	addi	a0,a5,16
   119a0:	a9dff06f          	j	1143c <_malloc_r+0xa4>
   119a4:	00176613          	ori	a2,a4,1
   119a8:	00c7b423          	sd	a2,8(a5)
   119ac:	00e78733          	add	a4,a5,a4
   119b0:	02e83423          	sd	a4,40(a6)
   119b4:	02e83023          	sd	a4,32(a6)
   119b8:	0016e613          	ori	a2,a3,1
   119bc:	00678333          	add	t1,a5,t1
   119c0:	01c73c23          	sd	t3,24(a4)
   119c4:	01c73823          	sd	t3,16(a4)
   119c8:	00c73423          	sd	a2,8(a4)
   119cc:	00040513          	mv	a0,s0
   119d0:	00d33023          	sd	a3,0(t1)
   119d4:	00f13423          	sd	a5,8(sp)
   119d8:	2a8000ef          	jal	11c80 <__malloc_unlock>
   119dc:	00813783          	ld	a5,8(sp)
   119e0:	01078513          	addi	a0,a5,16
   119e4:	a59ff06f          	j	1143c <_malloc_r+0xa4>
   119e8:	00635693          	srli	a3,t1,0x6
   119ec:	00169513          	slli	a0,a3,0x1
   119f0:	0725051b          	addiw	a0,a0,114
   119f4:	00351513          	slli	a0,a0,0x3
   119f8:	0386861b          	addiw	a2,a3,56
   119fc:	e99ff06f          	j	11894 <_malloc_r+0x4fc>
   11a00:	15078e63          	beq	a5,a6,11b5c <_malloc_r+0x7c4>
   11a04:	01083783          	ld	a5,16(a6)
   11a08:	0087b683          	ld	a3,8(a5)
   11a0c:	ffc6f693          	andi	a3,a3,-4
   11a10:	40e68633          	sub	a2,a3,a4
   11a14:	00e6e663          	bltu	a3,a4,11a20 <_malloc_r+0x688>
   11a18:	02062693          	slti	a3,a2,32
   11a1c:	dc0684e3          	beqz	a3,117e4 <_malloc_r+0x44c>
   11a20:	00040513          	mv	a0,s0
   11a24:	25c000ef          	jal	11c80 <__malloc_unlock>
   11a28:	a11ff06f          	j	11438 <_malloc_r+0xa0>
   11a2c:	05c7889b          	addiw	a7,a5,92
   11a30:	0018951b          	slliw	a0,a7,0x1
   11a34:	05b78e1b          	addiw	t3,a5,91
   11a38:	00351513          	slli	a0,a0,0x3
   11a3c:	a5dff06f          	j	11498 <_malloc_r+0x100>
   11a40:	010f3783          	ld	a5,16(t5)
   11a44:	fff8889b          	addiw	a7,a7,-1
   11a48:	23e79663          	bne	a5,t5,11c74 <_malloc_r+0x8dc>
   11a4c:	0038f793          	andi	a5,a7,3
   11a50:	ff0f0f13          	addi	t5,t5,-16
   11a54:	fe0796e3          	bnez	a5,11a40 <_malloc_r+0x6a8>
   11a58:	00883683          	ld	a3,8(a6)
   11a5c:	fff54793          	not	a5,a0
   11a60:	00d7f7b3          	and	a5,a5,a3
   11a64:	00f83423          	sd	a5,8(a6)
   11a68:	00151513          	slli	a0,a0,0x1
   11a6c:	fff50693          	addi	a3,a0,-1
   11a70:	baf6f6e3          	bgeu	a3,a5,1161c <_malloc_r+0x284>
   11a74:	00f576b3          	and	a3,a0,a5
   11a78:	00069a63          	bnez	a3,11a8c <_malloc_r+0x6f4>
   11a7c:	00151513          	slli	a0,a0,0x1
   11a80:	00f576b3          	and	a3,a0,a5
   11a84:	004f8f9b          	addiw	t6,t6,4
   11a88:	fe068ae3          	beqz	a3,11a7c <_malloc_r+0x6e4>
   11a8c:	000f8893          	mv	a7,t6
   11a90:	b09ff06f          	j	11598 <_malloc_r+0x200>
   11a94:	02058593          	addi	a1,a1,32
   11a98:	bc9ff06f          	j	11660 <_malloc_r+0x2c8>
   11a9c:	4026561b          	sraiw	a2,a2,0x2
   11aa0:	00100313          	li	t1,1
   11aa4:	00c31633          	sll	a2,t1,a2
   11aa8:	00c5e5b3          	or	a1,a1,a2
   11aac:	00b83423          	sd	a1,8(a6)
   11ab0:	e11ff06f          	j	118c0 <_malloc_r+0x528>
   11ab4:	00b30633          	add	a2,t1,a1
   11ab8:	40c005b3          	neg	a1,a2
   11abc:	03459593          	slli	a1,a1,0x34
   11ac0:	0345d593          	srli	a1,a1,0x34
   11ac4:	00040513          	mv	a0,s0
   11ac8:	03c13c23          	sd	t3,56(sp)
   11acc:	03013823          	sd	a6,48(sp)
   11ad0:	02f13423          	sd	a5,40(sp)
   11ad4:	02e13023          	sd	a4,32(sp)
   11ad8:	01113c23          	sd	a7,24(sp)
   11adc:	00613823          	sd	t1,16(sp)
   11ae0:	00c13423          	sd	a2,8(sp)
   11ae4:	04b13023          	sd	a1,64(sp)
   11ae8:	600000ef          	jal	120e8 <_sbrk_r>
   11aec:	00050693          	mv	a3,a0
   11af0:	fff00513          	li	a0,-1
   11af4:	01013303          	ld	t1,16(sp)
   11af8:	01813883          	ld	a7,24(sp)
   11afc:	02013703          	ld	a4,32(sp)
   11b00:	02813783          	ld	a5,40(sp)
   11b04:	03013803          	ld	a6,48(sp)
   11b08:	03813e03          	ld	t3,56(sp)
   11b0c:	0ea68463          	beq	a3,a0,11bf4 <_malloc_r+0x85c>
   11b10:	04013583          	ld	a1,64(sp)
   11b14:	0005851b          	sext.w	a0,a1
   11b18:	c49ff06f          	j	11760 <_malloc_r+0x3c8>
   11b1c:	05400613          	li	a2,84
   11b20:	08d66063          	bltu	a2,a3,11ba0 <_malloc_r+0x808>
   11b24:	00c35693          	srli	a3,t1,0xc
   11b28:	00169513          	slli	a0,a3,0x1
   11b2c:	0de5051b          	addiw	a0,a0,222
   11b30:	00351513          	slli	a0,a0,0x3
   11b34:	06e6861b          	addiw	a2,a3,110
   11b38:	d5dff06f          	j	11894 <_malloc_r+0x4fc>
   11b3c:	15400693          	li	a3,340
   11b40:	08f6e063          	bltu	a3,a5,11bc0 <_malloc_r+0x828>
   11b44:	00f75793          	srli	a5,a4,0xf
   11b48:	0787889b          	addiw	a7,a5,120
   11b4c:	0018951b          	slliw	a0,a7,0x1
   11b50:	07778e1b          	addiw	t3,a5,119
   11b54:	00351513          	slli	a0,a0,0x3
   11b58:	941ff06f          	j	11498 <_malloc_r+0x100>
   11b5c:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11b60:	000e2503          	lw	a0,0(t3)
   11b64:	00b5053b          	addw	a0,a0,a1
   11b68:	00ae2023          	sw	a0,0(t3)
   11b6c:	b51ff06f          	j	116bc <_malloc_r+0x324>
   11b70:	03431f13          	slli	t5,t1,0x34
   11b74:	b40f14e3          	bnez	t5,116bc <_malloc_r+0x324>
   11b78:	01083303          	ld	t1,16(a6)
   11b7c:	00b885b3          	add	a1,a7,a1
   11b80:	0015e693          	ori	a3,a1,1
   11b84:	00d33423          	sd	a3,8(t1)
   11b88:	c35ff06f          	j	117bc <_malloc_r+0x424>
   11b8c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11b90:	b45ff06f          	j	116d4 <_malloc_r+0x33c>
   11b94:	00100793          	li	a5,1
   11b98:	00f33423          	sd	a5,8(t1)
   11b9c:	e85ff06f          	j	11a20 <_malloc_r+0x688>
   11ba0:	15400613          	li	a2,340
   11ba4:	08d66a63          	bltu	a2,a3,11c38 <_malloc_r+0x8a0>
   11ba8:	00f35693          	srli	a3,t1,0xf
   11bac:	00169513          	slli	a0,a3,0x1
   11bb0:	0f05051b          	addiw	a0,a0,240
   11bb4:	00351513          	slli	a0,a0,0x3
   11bb8:	0776861b          	addiw	a2,a3,119
   11bbc:	cd9ff06f          	j	11894 <_malloc_r+0x4fc>
   11bc0:	55400693          	li	a3,1364
   11bc4:	08f6ea63          	bltu	a3,a5,11c58 <_malloc_r+0x8c0>
   11bc8:	01275793          	srli	a5,a4,0x12
   11bcc:	07d7889b          	addiw	a7,a5,125
   11bd0:	0018951b          	slliw	a0,a7,0x1
   11bd4:	07c78e1b          	addiw	t3,a5,124
   11bd8:	00351513          	slli	a0,a0,0x3
   11bdc:	8bdff06f          	j	11498 <_malloc_r+0x100>
   11be0:	ff0e8e93          	addi	t4,t4,-16
   11be4:	01d606b3          	add	a3,a2,t4
   11be8:	00000513          	li	a0,0
   11bec:	00000593          	li	a1,0
   11bf0:	b71ff06f          	j	11760 <_malloc_r+0x3c8>
   11bf4:	00813683          	ld	a3,8(sp)
   11bf8:	00000593          	li	a1,0
   11bfc:	00000513          	li	a0,0
   11c00:	b61ff06f          	j	11760 <_malloc_r+0x3c8>
   11c04:	01078593          	addi	a1,a5,16
   11c08:	00040513          	mv	a0,s0
   11c0c:	01c13c23          	sd	t3,24(sp)
   11c10:	01013823          	sd	a6,16(sp)
   11c14:	00e13423          	sd	a4,8(sp)
   11c18:	c7cff0ef          	jal	11094 <_free_r>
   11c1c:	01013803          	ld	a6,16(sp)
   11c20:	01813e03          	ld	t3,24(sp)
   11c24:	00813703          	ld	a4,8(sp)
   11c28:	01083303          	ld	t1,16(a6)
   11c2c:	000e2603          	lw	a2,0(t3)
   11c30:	00833683          	ld	a3,8(t1)
   11c34:	b89ff06f          	j	117bc <_malloc_r+0x424>
   11c38:	55400613          	li	a2,1364
   11c3c:	02d66663          	bltu	a2,a3,11c68 <_malloc_r+0x8d0>
   11c40:	01235693          	srli	a3,t1,0x12
   11c44:	00169513          	slli	a0,a3,0x1
   11c48:	0fa5051b          	addiw	a0,a0,250
   11c4c:	00351513          	slli	a0,a0,0x3
   11c50:	07c6861b          	addiw	a2,a3,124
   11c54:	c41ff06f          	j	11894 <_malloc_r+0x4fc>
   11c58:	7f000513          	li	a0,2032
   11c5c:	07f00893          	li	a7,127
   11c60:	07e00e13          	li	t3,126
   11c64:	835ff06f          	j	11498 <_malloc_r+0x100>
   11c68:	7f000513          	li	a0,2032
   11c6c:	07e00613          	li	a2,126
   11c70:	c25ff06f          	j	11894 <_malloc_r+0x4fc>
   11c74:	00883783          	ld	a5,8(a6)
   11c78:	df1ff06f          	j	11a68 <_malloc_r+0x6d0>

0000000000011c7c <__malloc_lock>:
   11c7c:	00008067          	ret

0000000000011c80 <__malloc_unlock>:
   11c80:	00008067          	ret

0000000000011c84 <_fclose_r>:
   11c84:	fe010113          	addi	sp,sp,-32
   11c88:	00113c23          	sd	ra,24(sp)
   11c8c:	01213023          	sd	s2,0(sp)
   11c90:	02058863          	beqz	a1,11cc0 <_fclose_r+0x3c>
   11c94:	00813823          	sd	s0,16(sp)
   11c98:	00913423          	sd	s1,8(sp)
   11c9c:	00058413          	mv	s0,a1
   11ca0:	00050493          	mv	s1,a0
   11ca4:	00050663          	beqz	a0,11cb0 <_fclose_r+0x2c>
   11ca8:	04853783          	ld	a5,72(a0)
   11cac:	0c078c63          	beqz	a5,11d84 <_fclose_r+0x100>
   11cb0:	01041783          	lh	a5,16(s0)
   11cb4:	02079263          	bnez	a5,11cd8 <_fclose_r+0x54>
   11cb8:	01013403          	ld	s0,16(sp)
   11cbc:	00813483          	ld	s1,8(sp)
   11cc0:	01813083          	ld	ra,24(sp)
   11cc4:	00000913          	li	s2,0
   11cc8:	00090513          	mv	a0,s2
   11ccc:	00013903          	ld	s2,0(sp)
   11cd0:	02010113          	addi	sp,sp,32
   11cd4:	00008067          	ret
   11cd8:	00040593          	mv	a1,s0
   11cdc:	00048513          	mv	a0,s1
   11ce0:	0b8000ef          	jal	11d98 <__sflush_r>
   11ce4:	05043783          	ld	a5,80(s0)
   11ce8:	00050913          	mv	s2,a0
   11cec:	00078a63          	beqz	a5,11d00 <_fclose_r+0x7c>
   11cf0:	03043583          	ld	a1,48(s0)
   11cf4:	00048513          	mv	a0,s1
   11cf8:	000780e7          	jalr	a5
   11cfc:	06054463          	bltz	a0,11d64 <_fclose_r+0xe0>
   11d00:	01045783          	lhu	a5,16(s0)
   11d04:	0807f793          	andi	a5,a5,128
   11d08:	06079663          	bnez	a5,11d74 <_fclose_r+0xf0>
   11d0c:	05843583          	ld	a1,88(s0)
   11d10:	00058c63          	beqz	a1,11d28 <_fclose_r+0xa4>
   11d14:	07440793          	addi	a5,s0,116
   11d18:	00f58663          	beq	a1,a5,11d24 <_fclose_r+0xa0>
   11d1c:	00048513          	mv	a0,s1
   11d20:	b74ff0ef          	jal	11094 <_free_r>
   11d24:	04043c23          	sd	zero,88(s0)
   11d28:	07843583          	ld	a1,120(s0)
   11d2c:	00058863          	beqz	a1,11d3c <_fclose_r+0xb8>
   11d30:	00048513          	mv	a0,s1
   11d34:	b60ff0ef          	jal	11094 <_free_r>
   11d38:	06043c23          	sd	zero,120(s0)
   11d3c:	aa1fe0ef          	jal	107dc <__sfp_lock_acquire>
   11d40:	00041823          	sh	zero,16(s0)
   11d44:	a9dfe0ef          	jal	107e0 <__sfp_lock_release>
   11d48:	01813083          	ld	ra,24(sp)
   11d4c:	01013403          	ld	s0,16(sp)
   11d50:	00813483          	ld	s1,8(sp)
   11d54:	00090513          	mv	a0,s2
   11d58:	00013903          	ld	s2,0(sp)
   11d5c:	02010113          	addi	sp,sp,32
   11d60:	00008067          	ret
   11d64:	01045783          	lhu	a5,16(s0)
   11d68:	fff00913          	li	s2,-1
   11d6c:	0807f793          	andi	a5,a5,128
   11d70:	f8078ee3          	beqz	a5,11d0c <_fclose_r+0x88>
   11d74:	01843583          	ld	a1,24(s0)
   11d78:	00048513          	mv	a0,s1
   11d7c:	b18ff0ef          	jal	11094 <_free_r>
   11d80:	f8dff06f          	j	11d0c <_fclose_r+0x88>
   11d84:	a35fe0ef          	jal	107b8 <__sinit>
   11d88:	f29ff06f          	j	11cb0 <_fclose_r+0x2c>

0000000000011d8c <fclose>:
   11d8c:	00050593          	mv	a1,a0
   11d90:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11d94:	ef1ff06f          	j	11c84 <_fclose_r>

0000000000011d98 <__sflush_r>:
   11d98:	01059703          	lh	a4,16(a1)
   11d9c:	fd010113          	addi	sp,sp,-48
   11da0:	02813023          	sd	s0,32(sp)
   11da4:	01313423          	sd	s3,8(sp)
   11da8:	02113423          	sd	ra,40(sp)
   11dac:	00877793          	andi	a5,a4,8
   11db0:	00058413          	mv	s0,a1
   11db4:	00050993          	mv	s3,a0
   11db8:	12079263          	bnez	a5,11edc <__sflush_r+0x144>
   11dbc:	000017b7          	lui	a5,0x1
   11dc0:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11dc4:	0085a683          	lw	a3,8(a1)
   11dc8:	00f767b3          	or	a5,a4,a5
   11dcc:	00f59823          	sh	a5,16(a1)
   11dd0:	18d05c63          	blez	a3,11f68 <__sflush_r+0x1d0>
   11dd4:	04843803          	ld	a6,72(s0)
   11dd8:	0e080663          	beqz	a6,11ec4 <__sflush_r+0x12c>
   11ddc:	00913c23          	sd	s1,24(sp)
   11de0:	03371693          	slli	a3,a4,0x33
   11de4:	0009a483          	lw	s1,0(s3)
   11de8:	0009a023          	sw	zero,0(s3)
   11dec:	1806ca63          	bltz	a3,11f80 <__sflush_r+0x1e8>
   11df0:	03043583          	ld	a1,48(s0)
   11df4:	00000613          	li	a2,0
   11df8:	00100693          	li	a3,1
   11dfc:	00098513          	mv	a0,s3
   11e00:	000800e7          	jalr	a6
   11e04:	fff00793          	li	a5,-1
   11e08:	00050613          	mv	a2,a0
   11e0c:	1af50c63          	beq	a0,a5,11fc4 <__sflush_r+0x22c>
   11e10:	01041783          	lh	a5,16(s0)
   11e14:	04843803          	ld	a6,72(s0)
   11e18:	0047f793          	andi	a5,a5,4
   11e1c:	00078e63          	beqz	a5,11e38 <__sflush_r+0xa0>
   11e20:	00842703          	lw	a4,8(s0)
   11e24:	05843783          	ld	a5,88(s0)
   11e28:	40e60633          	sub	a2,a2,a4
   11e2c:	00078663          	beqz	a5,11e38 <__sflush_r+0xa0>
   11e30:	07042783          	lw	a5,112(s0)
   11e34:	40f60633          	sub	a2,a2,a5
   11e38:	03043583          	ld	a1,48(s0)
   11e3c:	00000693          	li	a3,0
   11e40:	00098513          	mv	a0,s3
   11e44:	000800e7          	jalr	a6
   11e48:	fff00713          	li	a4,-1
   11e4c:	01041783          	lh	a5,16(s0)
   11e50:	12e51c63          	bne	a0,a4,11f88 <__sflush_r+0x1f0>
   11e54:	0009a683          	lw	a3,0(s3)
   11e58:	01d00713          	li	a4,29
   11e5c:	18d76263          	bltu	a4,a3,11fe0 <__sflush_r+0x248>
   11e60:	20400737          	lui	a4,0x20400
   11e64:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11e68:	00d75733          	srl	a4,a4,a3
   11e6c:	00177713          	andi	a4,a4,1
   11e70:	16070863          	beqz	a4,11fe0 <__sflush_r+0x248>
   11e74:	01843683          	ld	a3,24(s0)
   11e78:	fffff737          	lui	a4,0xfffff
   11e7c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11e80:	00e7f733          	and	a4,a5,a4
   11e84:	00e41823          	sh	a4,16(s0)
   11e88:	00042423          	sw	zero,8(s0)
   11e8c:	00d43023          	sd	a3,0(s0)
   11e90:	03379713          	slli	a4,a5,0x33
   11e94:	00075663          	bgez	a4,11ea0 <__sflush_r+0x108>
   11e98:	0009a783          	lw	a5,0(s3)
   11e9c:	10078863          	beqz	a5,11fac <__sflush_r+0x214>
   11ea0:	05843583          	ld	a1,88(s0)
   11ea4:	0099a023          	sw	s1,0(s3)
   11ea8:	10058a63          	beqz	a1,11fbc <__sflush_r+0x224>
   11eac:	07440793          	addi	a5,s0,116
   11eb0:	00f58663          	beq	a1,a5,11ebc <__sflush_r+0x124>
   11eb4:	00098513          	mv	a0,s3
   11eb8:	9dcff0ef          	jal	11094 <_free_r>
   11ebc:	01813483          	ld	s1,24(sp)
   11ec0:	04043c23          	sd	zero,88(s0)
   11ec4:	02813083          	ld	ra,40(sp)
   11ec8:	02013403          	ld	s0,32(sp)
   11ecc:	00813983          	ld	s3,8(sp)
   11ed0:	00000513          	li	a0,0
   11ed4:	03010113          	addi	sp,sp,48
   11ed8:	00008067          	ret
   11edc:	01213823          	sd	s2,16(sp)
   11ee0:	0185b903          	ld	s2,24(a1)
   11ee4:	08090a63          	beqz	s2,11f78 <__sflush_r+0x1e0>
   11ee8:	00913c23          	sd	s1,24(sp)
   11eec:	0005b483          	ld	s1,0(a1)
   11ef0:	00377713          	andi	a4,a4,3
   11ef4:	0125b023          	sd	s2,0(a1)
   11ef8:	412484bb          	subw	s1,s1,s2
   11efc:	00000793          	li	a5,0
   11f00:	00071463          	bnez	a4,11f08 <__sflush_r+0x170>
   11f04:	0205a783          	lw	a5,32(a1)
   11f08:	00f42623          	sw	a5,12(s0)
   11f0c:	00904863          	bgtz	s1,11f1c <__sflush_r+0x184>
   11f10:	0640006f          	j	11f74 <__sflush_r+0x1dc>
   11f14:	00a90933          	add	s2,s2,a0
   11f18:	04905e63          	blez	s1,11f74 <__sflush_r+0x1dc>
   11f1c:	04043783          	ld	a5,64(s0)
   11f20:	03043583          	ld	a1,48(s0)
   11f24:	00048693          	mv	a3,s1
   11f28:	00090613          	mv	a2,s2
   11f2c:	00098513          	mv	a0,s3
   11f30:	000780e7          	jalr	a5
   11f34:	40a484bb          	subw	s1,s1,a0
   11f38:	fca04ee3          	bgtz	a0,11f14 <__sflush_r+0x17c>
   11f3c:	01045783          	lhu	a5,16(s0)
   11f40:	01013903          	ld	s2,16(sp)
   11f44:	0407e793          	ori	a5,a5,64
   11f48:	02813083          	ld	ra,40(sp)
   11f4c:	00f41823          	sh	a5,16(s0)
   11f50:	02013403          	ld	s0,32(sp)
   11f54:	01813483          	ld	s1,24(sp)
   11f58:	00813983          	ld	s3,8(sp)
   11f5c:	fff00513          	li	a0,-1
   11f60:	03010113          	addi	sp,sp,48
   11f64:	00008067          	ret
   11f68:	0705a683          	lw	a3,112(a1)
   11f6c:	e6d044e3          	bgtz	a3,11dd4 <__sflush_r+0x3c>
   11f70:	f55ff06f          	j	11ec4 <__sflush_r+0x12c>
   11f74:	01813483          	ld	s1,24(sp)
   11f78:	01013903          	ld	s2,16(sp)
   11f7c:	f49ff06f          	j	11ec4 <__sflush_r+0x12c>
   11f80:	09043603          	ld	a2,144(s0)
   11f84:	e95ff06f          	j	11e18 <__sflush_r+0x80>
   11f88:	01843683          	ld	a3,24(s0)
   11f8c:	fffff737          	lui	a4,0xfffff
   11f90:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f94:	00e7f733          	and	a4,a5,a4
   11f98:	00e41823          	sh	a4,16(s0)
   11f9c:	00042423          	sw	zero,8(s0)
   11fa0:	00d43023          	sd	a3,0(s0)
   11fa4:	03379713          	slli	a4,a5,0x33
   11fa8:	ee075ce3          	bgez	a4,11ea0 <__sflush_r+0x108>
   11fac:	05843583          	ld	a1,88(s0)
   11fb0:	08a43823          	sd	a0,144(s0)
   11fb4:	0099a023          	sw	s1,0(s3)
   11fb8:	ee059ae3          	bnez	a1,11eac <__sflush_r+0x114>
   11fbc:	01813483          	ld	s1,24(sp)
   11fc0:	f05ff06f          	j	11ec4 <__sflush_r+0x12c>
   11fc4:	0009a783          	lw	a5,0(s3)
   11fc8:	e40784e3          	beqz	a5,11e10 <__sflush_r+0x78>
   11fcc:	fe378713          	addi	a4,a5,-29
   11fd0:	00070c63          	beqz	a4,11fe8 <__sflush_r+0x250>
   11fd4:	fea78793          	addi	a5,a5,-22
   11fd8:	00078863          	beqz	a5,11fe8 <__sflush_r+0x250>
   11fdc:	01045783          	lhu	a5,16(s0)
   11fe0:	0407e793          	ori	a5,a5,64
   11fe4:	f65ff06f          	j	11f48 <__sflush_r+0x1b0>
   11fe8:	0099a023          	sw	s1,0(s3)
   11fec:	01813483          	ld	s1,24(sp)
   11ff0:	ed5ff06f          	j	11ec4 <__sflush_r+0x12c>

0000000000011ff4 <_fflush_r>:
   11ff4:	00050793          	mv	a5,a0
   11ff8:	00050663          	beqz	a0,12004 <_fflush_r+0x10>
   11ffc:	04853703          	ld	a4,72(a0)
   12000:	00070e63          	beqz	a4,1201c <_fflush_r+0x28>
   12004:	01059703          	lh	a4,16(a1)
   12008:	00071663          	bnez	a4,12014 <_fflush_r+0x20>
   1200c:	00000513          	li	a0,0
   12010:	00008067          	ret
   12014:	00078513          	mv	a0,a5
   12018:	d81ff06f          	j	11d98 <__sflush_r>
   1201c:	fe010113          	addi	sp,sp,-32
   12020:	00b13423          	sd	a1,8(sp)
   12024:	00113c23          	sd	ra,24(sp)
   12028:	00a13023          	sd	a0,0(sp)
   1202c:	f8cfe0ef          	jal	107b8 <__sinit>
   12030:	00813583          	ld	a1,8(sp)
   12034:	00013783          	ld	a5,0(sp)
   12038:	01059703          	lh	a4,16(a1)
   1203c:	00070a63          	beqz	a4,12050 <_fflush_r+0x5c>
   12040:	01813083          	ld	ra,24(sp)
   12044:	00078513          	mv	a0,a5
   12048:	02010113          	addi	sp,sp,32
   1204c:	d4dff06f          	j	11d98 <__sflush_r>
   12050:	01813083          	ld	ra,24(sp)
   12054:	00000513          	li	a0,0
   12058:	02010113          	addi	sp,sp,32
   1205c:	00008067          	ret

0000000000012060 <fflush>:
   12060:	06050063          	beqz	a0,120c0 <fflush+0x60>
   12064:	00050593          	mv	a1,a0
   12068:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1206c:	00050663          	beqz	a0,12078 <fflush+0x18>
   12070:	04853783          	ld	a5,72(a0)
   12074:	00078c63          	beqz	a5,1208c <fflush+0x2c>
   12078:	01059783          	lh	a5,16(a1)
   1207c:	00079663          	bnez	a5,12088 <fflush+0x28>
   12080:	00000513          	li	a0,0
   12084:	00008067          	ret
   12088:	d11ff06f          	j	11d98 <__sflush_r>
   1208c:	fe010113          	addi	sp,sp,-32
   12090:	00b13423          	sd	a1,8(sp)
   12094:	00a13023          	sd	a0,0(sp)
   12098:	00113c23          	sd	ra,24(sp)
   1209c:	f1cfe0ef          	jal	107b8 <__sinit>
   120a0:	00813583          	ld	a1,8(sp)
   120a4:	00013503          	ld	a0,0(sp)
   120a8:	01059783          	lh	a5,16(a1)
   120ac:	02079863          	bnez	a5,120dc <fflush+0x7c>
   120b0:	01813083          	ld	ra,24(sp)
   120b4:	00000513          	li	a0,0
   120b8:	02010113          	addi	sp,sp,32
   120bc:	00008067          	ret
   120c0:	00013637          	lui	a2,0x13
   120c4:	000125b7          	lui	a1,0x12
   120c8:	00013537          	lui	a0,0x13
   120cc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   120d0:	ff458593          	addi	a1,a1,-12 # 11ff4 <_fflush_r>
   120d4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   120d8:	f3cfe06f          	j	10814 <_fwalk_sglue>
   120dc:	01813083          	ld	ra,24(sp)
   120e0:	02010113          	addi	sp,sp,32
   120e4:	cb5ff06f          	j	11d98 <__sflush_r>

00000000000120e8 <_sbrk_r>:
   120e8:	fe010113          	addi	sp,sp,-32
   120ec:	00813823          	sd	s0,16(sp)
   120f0:	00913423          	sd	s1,8(sp)
   120f4:	00050493          	mv	s1,a0
   120f8:	00058513          	mv	a0,a1
   120fc:	00113c23          	sd	ra,24(sp)
   12100:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12104:	228000ef          	jal	1232c <_sbrk>
   12108:	fff00793          	li	a5,-1
   1210c:	00f50c63          	beq	a0,a5,12124 <_sbrk_r+0x3c>
   12110:	01813083          	ld	ra,24(sp)
   12114:	01013403          	ld	s0,16(sp)
   12118:	00813483          	ld	s1,8(sp)
   1211c:	02010113          	addi	sp,sp,32
   12120:	00008067          	ret
   12124:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12128:	fe0784e3          	beqz	a5,12110 <_sbrk_r+0x28>
   1212c:	01813083          	ld	ra,24(sp)
   12130:	01013403          	ld	s0,16(sp)
   12134:	00f4a023          	sw	a5,0(s1)
   12138:	00813483          	ld	s1,8(sp)
   1213c:	02010113          	addi	sp,sp,32
   12140:	00008067          	ret

0000000000012144 <__libc_fini_array>:
   12144:	fe010113          	addi	sp,sp,-32
   12148:	00813823          	sd	s0,16(sp)
   1214c:	000137b7          	lui	a5,0x13
   12150:	00013437          	lui	s0,0x13
   12154:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12158:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1215c:	408787b3          	sub	a5,a5,s0
   12160:	00913423          	sd	s1,8(sp)
   12164:	00113c23          	sd	ra,24(sp)
   12168:	4037d493          	srai	s1,a5,0x3
   1216c:	02048063          	beqz	s1,1218c <__libc_fini_array+0x48>
   12170:	ff840413          	addi	s0,s0,-8
   12174:	00f40433          	add	s0,s0,a5
   12178:	00043783          	ld	a5,0(s0)
   1217c:	fff48493          	addi	s1,s1,-1
   12180:	ff840413          	addi	s0,s0,-8
   12184:	000780e7          	jalr	a5
   12188:	fe0498e3          	bnez	s1,12178 <__libc_fini_array+0x34>
   1218c:	01813083          	ld	ra,24(sp)
   12190:	01013403          	ld	s0,16(sp)
   12194:	00813483          	ld	s1,8(sp)
   12198:	02010113          	addi	sp,sp,32
   1219c:	00008067          	ret

00000000000121a0 <__register_exitproc>:
   121a0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   121a4:	04078e63          	beqz	a5,12200 <__register_exitproc+0x60>
   121a8:	0087a703          	lw	a4,8(a5)
   121ac:	01f00813          	li	a6,31
   121b0:	08e84263          	blt	a6,a4,12234 <__register_exitproc+0x94>
   121b4:	02050863          	beqz	a0,121e4 <__register_exitproc+0x44>
   121b8:	00371813          	slli	a6,a4,0x3
   121bc:	01078833          	add	a6,a5,a6
   121c0:	10c83823          	sd	a2,272(a6)
   121c4:	3107a883          	lw	a7,784(a5)
   121c8:	00100613          	li	a2,1
   121cc:	00e6163b          	sllw	a2,a2,a4
   121d0:	00c8e8b3          	or	a7,a7,a2
   121d4:	3117a823          	sw	a7,784(a5)
   121d8:	20d83823          	sd	a3,528(a6)
   121dc:	00200693          	li	a3,2
   121e0:	02d50663          	beq	a0,a3,1220c <__register_exitproc+0x6c>
   121e4:	0017069b          	addiw	a3,a4,1
   121e8:	00371713          	slli	a4,a4,0x3
   121ec:	00d7a423          	sw	a3,8(a5)
   121f0:	00e787b3          	add	a5,a5,a4
   121f4:	00b7b823          	sd	a1,16(a5)
   121f8:	00000513          	li	a0,0
   121fc:	00008067          	ret
   12200:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12204:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12208:	fa1ff06f          	j	121a8 <__register_exitproc+0x8>
   1220c:	3147a683          	lw	a3,788(a5)
   12210:	00000513          	li	a0,0
   12214:	00d66633          	or	a2,a2,a3
   12218:	0017069b          	addiw	a3,a4,1
   1221c:	00371713          	slli	a4,a4,0x3
   12220:	30c7aa23          	sw	a2,788(a5)
   12224:	00d7a423          	sw	a3,8(a5)
   12228:	00e787b3          	add	a5,a5,a4
   1222c:	00b7b823          	sd	a1,16(a5)
   12230:	00008067          	ret
   12234:	fff00513          	li	a0,-1
   12238:	00008067          	ret

000000000001223c <_close>:
   1223c:	03900893          	li	a7,57
   12240:	00000073          	ecall
   12244:	00054663          	bltz	a0,12250 <_close+0x14>
   12248:	0005051b          	sext.w	a0,a0
   1224c:	00008067          	ret
   12250:	fe010113          	addi	sp,sp,-32
   12254:	00113c23          	sd	ra,24(sp)
   12258:	00a13423          	sd	a0,8(sp)
   1225c:	188000ef          	jal	123e4 <__errno>
   12260:	00813783          	ld	a5,8(sp)
   12264:	01813083          	ld	ra,24(sp)
   12268:	40f007bb          	negw	a5,a5
   1226c:	00f52023          	sw	a5,0(a0)
   12270:	fff00513          	li	a0,-1
   12274:	02010113          	addi	sp,sp,32
   12278:	00008067          	ret

000000000001227c <_exit>:
   1227c:	05d00893          	li	a7,93
   12280:	00000073          	ecall
   12284:	00054463          	bltz	a0,1228c <_exit+0x10>
   12288:	0000006f          	j	12288 <_exit+0xc>
   1228c:	fe010113          	addi	sp,sp,-32
   12290:	00113c23          	sd	ra,24(sp)
   12294:	00a13423          	sd	a0,8(sp)
   12298:	14c000ef          	jal	123e4 <__errno>
   1229c:	00813783          	ld	a5,8(sp)
   122a0:	40f007bb          	negw	a5,a5
   122a4:	00f52023          	sw	a5,0(a0)
   122a8:	0000006f          	j	122a8 <_exit+0x2c>

00000000000122ac <_lseek>:
   122ac:	03e00893          	li	a7,62
   122b0:	00000073          	ecall
   122b4:	00054463          	bltz	a0,122bc <_lseek+0x10>
   122b8:	00008067          	ret
   122bc:	fe010113          	addi	sp,sp,-32
   122c0:	00113c23          	sd	ra,24(sp)
   122c4:	00a13423          	sd	a0,8(sp)
   122c8:	11c000ef          	jal	123e4 <__errno>
   122cc:	00813783          	ld	a5,8(sp)
   122d0:	01813083          	ld	ra,24(sp)
   122d4:	40f007bb          	negw	a5,a5
   122d8:	00f52023          	sw	a5,0(a0)
   122dc:	fff00793          	li	a5,-1
   122e0:	00078513          	mv	a0,a5
   122e4:	02010113          	addi	sp,sp,32
   122e8:	00008067          	ret

00000000000122ec <_read>:
   122ec:	03f00893          	li	a7,63
   122f0:	00000073          	ecall
   122f4:	00054463          	bltz	a0,122fc <_read+0x10>
   122f8:	00008067          	ret
   122fc:	fe010113          	addi	sp,sp,-32
   12300:	00113c23          	sd	ra,24(sp)
   12304:	00a13423          	sd	a0,8(sp)
   12308:	0dc000ef          	jal	123e4 <__errno>
   1230c:	00813783          	ld	a5,8(sp)
   12310:	01813083          	ld	ra,24(sp)
   12314:	40f007bb          	negw	a5,a5
   12318:	00f52023          	sw	a5,0(a0)
   1231c:	fff00793          	li	a5,-1
   12320:	00078513          	mv	a0,a5
   12324:	02010113          	addi	sp,sp,32
   12328:	00008067          	ret

000000000001232c <_sbrk>:
   1232c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12330:	ff010113          	addi	sp,sp,-16
   12334:	00113423          	sd	ra,8(sp)
   12338:	00050713          	mv	a4,a0
   1233c:	02079063          	bnez	a5,1235c <_sbrk+0x30>
   12340:	0d600893          	li	a7,214
   12344:	00000513          	li	a0,0
   12348:	00000073          	ecall
   1234c:	fff00793          	li	a5,-1
   12350:	02f50c63          	beq	a0,a5,12388 <_sbrk+0x5c>
   12354:	00050793          	mv	a5,a0
   12358:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1235c:	00f70533          	add	a0,a4,a5
   12360:	0d600893          	li	a7,214
   12364:	00000073          	ecall
   12368:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1236c:	00f70733          	add	a4,a4,a5
   12370:	00e51c63          	bne	a0,a4,12388 <_sbrk+0x5c>
   12374:	00813083          	ld	ra,8(sp)
   12378:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1237c:	00078513          	mv	a0,a5
   12380:	01010113          	addi	sp,sp,16
   12384:	00008067          	ret
   12388:	05c000ef          	jal	123e4 <__errno>
   1238c:	00813083          	ld	ra,8(sp)
   12390:	00c00793          	li	a5,12
   12394:	00f52023          	sw	a5,0(a0)
   12398:	fff00513          	li	a0,-1
   1239c:	01010113          	addi	sp,sp,16
   123a0:	00008067          	ret

00000000000123a4 <_write>:
   123a4:	04000893          	li	a7,64
   123a8:	00000073          	ecall
   123ac:	00054463          	bltz	a0,123b4 <_write+0x10>
   123b0:	00008067          	ret
   123b4:	fe010113          	addi	sp,sp,-32
   123b8:	00113c23          	sd	ra,24(sp)
   123bc:	00a13423          	sd	a0,8(sp)
   123c0:	024000ef          	jal	123e4 <__errno>
   123c4:	00813783          	ld	a5,8(sp)
   123c8:	01813083          	ld	ra,24(sp)
   123cc:	40f007bb          	negw	a5,a5
   123d0:	00f52023          	sw	a5,0(a0)
   123d4:	fff00793          	li	a5,-1
   123d8:	00078513          	mv	a0,a5
   123dc:	02010113          	addi	sp,sp,32
   123e0:	00008067          	ret

00000000000123e4 <__errno>:
   123e4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   123e8:	00008067          	ret

Disassembly of section .rodata:

00000000000123f0 <.rodata>:
   123f0:	6854                	.insn	2, 0x6854
   123f2:	7369                	.insn	2, 0x7369
   123f4:	6920                	.insn	2, 0x6920
   123f6:	74732073          	.insn	4, 0x74732073
   123fa:	6972                	.insn	2, 0x6972
   123fc:	676e                	.insn	2, 0x676e
   123fe:	6620                	.insn	2, 0x6620
   12400:	6f72                	.insn	2, 0x6f72
   12402:	206d                	.insn	2, 0x206d
   12404:	7270                	.insn	2, 0x7270
   12406:	6e69                	.insn	2, 0x6e69
   12408:	5f74                	.insn	2, 0x5f74
   1240a:	0a292873          	.insn	4, 0x0a292873
   1240e:	0000                	.insn	2, 0x0000
   12410:	6e45                	.insn	2, 0x6e45
   12412:	6574                	.insn	2, 0x6574
   12414:	2072                	.insn	2, 0x2072
   12416:	2061                	.insn	2, 0x2061
   12418:	756e                	.insn	2, 0x756e
   1241a:	626d                	.insn	2, 0x626d
   1241c:	7265                	.insn	2, 0x7265
   1241e:	203a                	.insn	2, 0x203a
	...
   12428:	6854                	.insn	2, 0x6854
   1242a:	2065                	.insn	2, 0x2065
   1242c:	756e                	.insn	2, 0x756e
   1242e:	626d                	.insn	2, 0x626d
   12430:	7265                	.insn	2, 0x7265
   12432:	6920                	.insn	2, 0x6920
   12434:	00203a73          	.insn	4, 0x00203a73
   12438:	000a                	.insn	2, 0x000a
   1243a:	0000                	.insn	2, 0x0000
   1243c:	0000                	.insn	2, 0x0000
   1243e:	0000                	.insn	2, 0x0000
   12440:	6e45                	.insn	2, 0x6e45
   12442:	6574                	.insn	2, 0x6574
   12444:	2072                	.insn	2, 0x2072
   12446:	2061                	.insn	2, 0x2061
   12448:	72616863          	bltu	sp,t1,12b78 <__EH_FRAME_BEGIN__+0x708>
   1244c:	6361                	.insn	2, 0x6361
   1244e:	6574                	.insn	2, 0x6574
   12450:	3a72                	.insn	2, 0x3a72
   12452:	0020                	.insn	2, 0x0020
   12454:	0000                	.insn	2, 0x0000
   12456:	0000                	.insn	2, 0x0000
   12458:	6854                	.insn	2, 0x6854
   1245a:	2065                	.insn	2, 0x2065
   1245c:	72616863          	bltu	sp,t1,12b8c <__EH_FRAME_BEGIN__+0x71c>
   12460:	6361                	.insn	2, 0x6361
   12462:	6574                	.insn	2, 0x6574
   12464:	2072                	.insn	2, 0x2072
   12466:	7369                	.insn	2, 0x7369
   12468:	203a                	.insn	2, 0x203a
	...

Disassembly of section .eh_frame:

0000000000012470 <__EH_FRAME_BEGIN__>:
   12470:	0000                	.insn	2, 0x0000
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

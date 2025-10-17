
test/build/with-syscall/test_branch.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	5e1000ef          	jal	10f14 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	224020ef          	jal	1236c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	23450513          	addi	a0,a0,564 # 12234 <__libc_fini_array>
   1015c:	6f10006f          	j	1104c <atexit>
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
   10184:	4b5000ef          	jal	10e38 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	ec450513          	addi	a0,a0,-316 # 1104c <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	0a050513          	addi	a0,a0,160 # 12234 <__libc_fini_array>
   1019c:	6b1000ef          	jal	1104c <atexit>
   101a0:	405000ef          	jal	10da4 <__libc_init_array>
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
   101d8:	54850513          	addi	a0,a0,1352 # 12548 <__EH_FRAME_BEGIN__>
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
   1020c:	54850513          	addi	a0,a0,1352 # 12548 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	fc010113          	addi	sp,sp,-64
   10220:	02113c23          	sd	ra,56(sp)
   10224:	02813823          	sd	s0,48(sp)
   10228:	04010413          	addi	s0,sp,64
   1022c:	fe042023          	sw	zero,-32(s0)
   10230:	00100793          	li	a5,1
   10234:	fcf42e23          	sw	a5,-36(s0)
   10238:	000127b7          	lui	a5,0x12
   1023c:	53078793          	addi	a5,a5,1328 # 12530 <__errno+0x5c>
   10240:	0007b703          	ld	a4,0(a5)
   10244:	fce43423          	sd	a4,-56(s0)
   10248:	0087b703          	ld	a4,8(a5)
   1024c:	fce43823          	sd	a4,-48(s0)
   10250:	0107a783          	lw	a5,16(a5)
   10254:	fcf42c23          	sw	a5,-40(s0)
   10258:	fe042783          	lw	a5,-32(s0)
   1025c:	0007879b          	sext.w	a5,a5
   10260:	00078863          	beqz	a5,10270 <main+0x54>
   10264:	000127b7          	lui	a5,0x12
   10268:	4e078513          	addi	a0,a5,1248 # 124e0 <__errno+0xc>
   1026c:	1e8000ef          	jal	10454 <print_s>
   10270:	fdc42783          	lw	a5,-36(s0)
   10274:	0007879b          	sext.w	a5,a5
   10278:	00078863          	beqz	a5,10288 <main+0x6c>
   1027c:	000127b7          	lui	a5,0x12
   10280:	51078513          	addi	a0,a5,1296 # 12510 <__errno+0x3c>
   10284:	1d0000ef          	jal	10454 <print_s>
   10288:	000127b7          	lui	a5,0x12
   1028c:	52878513          	addi	a0,a5,1320 # 12528 <__errno+0x54>
   10290:	1c4000ef          	jal	10454 <print_s>
   10294:	fe042623          	sw	zero,-20(s0)
   10298:	0340006f          	j	102cc <main+0xb0>
   1029c:	fec42703          	lw	a4,-20(s0)
   102a0:	fc840793          	addi	a5,s0,-56
   102a4:	00271713          	slli	a4,a4,0x2
   102a8:	00f707b3          	add	a5,a4,a5
   102ac:	0007a783          	lw	a5,0(a5)
   102b0:	00078513          	mv	a0,a5
   102b4:	134000ef          	jal	103e8 <print_d>
   102b8:	02000513          	li	a0,32
   102bc:	1c8000ef          	jal	10484 <print_c>
   102c0:	fec42783          	lw	a5,-20(s0)
   102c4:	0017879b          	addiw	a5,a5,1
   102c8:	fef42623          	sw	a5,-20(s0)
   102cc:	fec42783          	lw	a5,-20(s0)
   102d0:	0007871b          	sext.w	a4,a5
   102d4:	00400793          	li	a5,4
   102d8:	fce7d2e3          	bge	a5,a4,1029c <main+0x80>
   102dc:	00a00513          	li	a0,10
   102e0:	1a4000ef          	jal	10484 <print_c>
   102e4:	00100793          	li	a5,1
   102e8:	fef42423          	sw	a5,-24(s0)
   102ec:	0740006f          	j	10360 <main+0x144>
   102f0:	fe842703          	lw	a4,-24(s0)
   102f4:	fc840793          	addi	a5,s0,-56
   102f8:	00271713          	slli	a4,a4,0x2
   102fc:	00f707b3          	add	a5,a4,a5
   10300:	0007a703          	lw	a4,0(a5)
   10304:	fe842783          	lw	a5,-24(s0)
   10308:	fff7879b          	addiw	a5,a5,-1
   1030c:	0007869b          	sext.w	a3,a5
   10310:	fc840793          	addi	a5,s0,-56
   10314:	00269693          	slli	a3,a3,0x2
   10318:	00f687b3          	add	a5,a3,a5
   1031c:	0007a783          	lw	a5,0(a5)
   10320:	00078693          	mv	a3,a5
   10324:	00068793          	mv	a5,a3
   10328:	0027979b          	slliw	a5,a5,0x2
   1032c:	00d787bb          	addw	a5,a5,a3
   10330:	0017979b          	slliw	a5,a5,0x1
   10334:	0007879b          	sext.w	a5,a5
   10338:	00f707bb          	addw	a5,a4,a5
   1033c:	0007871b          	sext.w	a4,a5
   10340:	fe842683          	lw	a3,-24(s0)
   10344:	fc840793          	addi	a5,s0,-56
   10348:	00269693          	slli	a3,a3,0x2
   1034c:	00f687b3          	add	a5,a3,a5
   10350:	00e7a023          	sw	a4,0(a5)
   10354:	fe842783          	lw	a5,-24(s0)
   10358:	0017879b          	addiw	a5,a5,1
   1035c:	fef42423          	sw	a5,-24(s0)
   10360:	fe842783          	lw	a5,-24(s0)
   10364:	0007871b          	sext.w	a4,a5
   10368:	00400793          	li	a5,4
   1036c:	f8e7d2e3          	bge	a5,a4,102f0 <main+0xd4>
   10370:	000127b7          	lui	a5,0x12
   10374:	52878513          	addi	a0,a5,1320 # 12528 <__errno+0x54>
   10378:	0dc000ef          	jal	10454 <print_s>
   1037c:	fe042223          	sw	zero,-28(s0)
   10380:	0340006f          	j	103b4 <main+0x198>
   10384:	fe442703          	lw	a4,-28(s0)
   10388:	fc840793          	addi	a5,s0,-56
   1038c:	00271713          	slli	a4,a4,0x2
   10390:	00f707b3          	add	a5,a4,a5
   10394:	0007a783          	lw	a5,0(a5)
   10398:	00078513          	mv	a0,a5
   1039c:	04c000ef          	jal	103e8 <print_d>
   103a0:	02000513          	li	a0,32
   103a4:	0e0000ef          	jal	10484 <print_c>
   103a8:	fe442783          	lw	a5,-28(s0)
   103ac:	0017879b          	addiw	a5,a5,1
   103b0:	fef42223          	sw	a5,-28(s0)
   103b4:	fe442783          	lw	a5,-28(s0)
   103b8:	0007871b          	sext.w	a4,a5
   103bc:	00400793          	li	a5,4
   103c0:	fce7d2e3          	bge	a5,a4,10384 <main+0x168>
   103c4:	00a00513          	li	a0,10
   103c8:	0bc000ef          	jal	10484 <print_c>
   103cc:	0ec000ef          	jal	104b8 <exit_proc>
   103d0:	00000793          	li	a5,0
   103d4:	00078513          	mv	a0,a5
   103d8:	03813083          	ld	ra,56(sp)
   103dc:	03013403          	ld	s0,48(sp)
   103e0:	04010113          	addi	sp,sp,64
   103e4:	00008067          	ret

00000000000103e8 <print_d>:
   103e8:	fe010113          	addi	sp,sp,-32
   103ec:	00113c23          	sd	ra,24(sp)
   103f0:	00813823          	sd	s0,16(sp)
   103f4:	02010413          	addi	s0,sp,32
   103f8:	00050793          	mv	a5,a0
   103fc:	fef42623          	sw	a5,-20(s0)
   10400:	00200893          	li	a7,2
   10404:	00000073          	ecall
   10408:	00000013          	nop
   1040c:	01813083          	ld	ra,24(sp)
   10410:	01013403          	ld	s0,16(sp)
   10414:	02010113          	addi	sp,sp,32
   10418:	00008067          	ret

000000000001041c <print_ll>:
   1041c:	fe010113          	addi	sp,sp,-32
   10420:	00113c23          	sd	ra,24(sp)
   10424:	00813823          	sd	s0,16(sp)
   10428:	02010413          	addi	s0,sp,32
   1042c:	fea43423          	sd	a0,-24(s0)
   10430:	fe843783          	ld	a5,-24(s0)
   10434:	00078513          	mv	a0,a5
   10438:	00600893          	li	a7,6
   1043c:	00000073          	ecall
   10440:	00000013          	nop
   10444:	01813083          	ld	ra,24(sp)
   10448:	01013403          	ld	s0,16(sp)
   1044c:	02010113          	addi	sp,sp,32
   10450:	00008067          	ret

0000000000010454 <print_s>:
   10454:	fe010113          	addi	sp,sp,-32
   10458:	00113c23          	sd	ra,24(sp)
   1045c:	00813823          	sd	s0,16(sp)
   10460:	02010413          	addi	s0,sp,32
   10464:	fea43423          	sd	a0,-24(s0)
   10468:	00000893          	li	a7,0
   1046c:	00000073          	ecall
   10470:	00000013          	nop
   10474:	01813083          	ld	ra,24(sp)
   10478:	01013403          	ld	s0,16(sp)
   1047c:	02010113          	addi	sp,sp,32
   10480:	00008067          	ret

0000000000010484 <print_c>:
   10484:	fe010113          	addi	sp,sp,-32
   10488:	00113c23          	sd	ra,24(sp)
   1048c:	00813823          	sd	s0,16(sp)
   10490:	02010413          	addi	s0,sp,32
   10494:	00050793          	mv	a5,a0
   10498:	fef407a3          	sb	a5,-17(s0)
   1049c:	00100893          	li	a7,1
   104a0:	00000073          	ecall
   104a4:	00000013          	nop
   104a8:	01813083          	ld	ra,24(sp)
   104ac:	01013403          	ld	s0,16(sp)
   104b0:	02010113          	addi	sp,sp,32
   104b4:	00008067          	ret

00000000000104b8 <exit_proc>:
   104b8:	ff010113          	addi	sp,sp,-16
   104bc:	00113423          	sd	ra,8(sp)
   104c0:	00813023          	sd	s0,0(sp)
   104c4:	01010413          	addi	s0,sp,16
   104c8:	00300893          	li	a7,3
   104cc:	00000073          	ecall
   104d0:	00000013          	nop
   104d4:	00813083          	ld	ra,8(sp)
   104d8:	00013403          	ld	s0,0(sp)
   104dc:	01010113          	addi	sp,sp,16
   104e0:	00008067          	ret

00000000000104e4 <read_char>:
   104e4:	fe010113          	addi	sp,sp,-32
   104e8:	00113c23          	sd	ra,24(sp)
   104ec:	00813823          	sd	s0,16(sp)
   104f0:	02010413          	addi	s0,sp,32
   104f4:	00400893          	li	a7,4
   104f8:	00000073          	ecall
   104fc:	00050793          	mv	a5,a0
   10500:	fef407a3          	sb	a5,-17(s0)
   10504:	fef44783          	lbu	a5,-17(s0)
   10508:	00078513          	mv	a0,a5
   1050c:	01813083          	ld	ra,24(sp)
   10510:	01013403          	ld	s0,16(sp)
   10514:	02010113          	addi	sp,sp,32
   10518:	00008067          	ret

000000000001051c <read_num>:
   1051c:	fe010113          	addi	sp,sp,-32
   10520:	00113c23          	sd	ra,24(sp)
   10524:	00813823          	sd	s0,16(sp)
   10528:	02010413          	addi	s0,sp,32
   1052c:	00500893          	li	a7,5
   10530:	00000073          	ecall
   10534:	00050793          	mv	a5,a0
   10538:	fef43423          	sd	a5,-24(s0)
   1053c:	fe843783          	ld	a5,-24(s0)
   10540:	00078513          	mv	a0,a5
   10544:	01813083          	ld	ra,24(sp)
   10548:	01013403          	ld	s0,16(sp)
   1054c:	02010113          	addi	sp,sp,32
   10550:	00008067          	ret

0000000000010554 <find_min>:
   10554:	fd010113          	addi	sp,sp,-48
   10558:	02113423          	sd	ra,40(sp)
   1055c:	02813023          	sd	s0,32(sp)
   10560:	03010413          	addi	s0,sp,48
   10564:	fca43c23          	sd	a0,-40(s0)
   10568:	00058793          	mv	a5,a1
   1056c:	fcf42a23          	sw	a5,-44(s0)
   10570:	00700893          	li	a7,7
   10574:	00000073          	ecall
   10578:	00050793          	mv	a5,a0
   1057c:	fef42623          	sw	a5,-20(s0)
   10580:	fec42783          	lw	a5,-20(s0)
   10584:	00078513          	mv	a0,a5
   10588:	02813083          	ld	ra,40(sp)
   1058c:	02013403          	ld	s0,32(sp)
   10590:	03010113          	addi	sp,sp,48
   10594:	00008067          	ret

0000000000010598 <__fp_lock>:
   10598:	00000513          	li	a0,0
   1059c:	00008067          	ret

00000000000105a0 <stdio_exit_handler>:
   105a0:	00013637          	lui	a2,0x13
   105a4:	000125b7          	lui	a1,0x12
   105a8:	00013537          	lui	a0,0x13
   105ac:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105b0:	d7458593          	addi	a1,a1,-652 # 11d74 <_fclose_r>
   105b4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   105b8:	34c0006f          	j	10904 <_fwalk_sglue>

00000000000105bc <cleanup_stdio>:
   105bc:	00853583          	ld	a1,8(a0)
   105c0:	ff010113          	addi	sp,sp,-16
   105c4:	00813023          	sd	s0,0(sp)
   105c8:	00113423          	sd	ra,8(sp)
   105cc:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   105d0:	00050413          	mv	s0,a0
   105d4:	00f58463          	beq	a1,a5,105dc <cleanup_stdio+0x20>
   105d8:	79c010ef          	jal	11d74 <_fclose_r>
   105dc:	01043583          	ld	a1,16(s0)
   105e0:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   105e4:	00f58663          	beq	a1,a5,105f0 <cleanup_stdio+0x34>
   105e8:	00040513          	mv	a0,s0
   105ec:	788010ef          	jal	11d74 <_fclose_r>
   105f0:	01843583          	ld	a1,24(s0)
   105f4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   105f8:	00f58c63          	beq	a1,a5,10610 <cleanup_stdio+0x54>
   105fc:	00040513          	mv	a0,s0
   10600:	00013403          	ld	s0,0(sp)
   10604:	00813083          	ld	ra,8(sp)
   10608:	01010113          	addi	sp,sp,16
   1060c:	7680106f          	j	11d74 <_fclose_r>
   10610:	00813083          	ld	ra,8(sp)
   10614:	00013403          	ld	s0,0(sp)
   10618:	01010113          	addi	sp,sp,16
   1061c:	00008067          	ret

0000000000010620 <__fp_unlock>:
   10620:	00000513          	li	a0,0
   10624:	00008067          	ret

0000000000010628 <global_stdio_init.part.0>:
   10628:	fd010113          	addi	sp,sp,-48
   1062c:	000107b7          	lui	a5,0x10
   10630:	02813023          	sd	s0,32(sp)
   10634:	5a078793          	addi	a5,a5,1440 # 105a0 <stdio_exit_handler>
   10638:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   1063c:	02113423          	sd	ra,40(sp)
   10640:	00913c23          	sd	s1,24(sp)
   10644:	01213823          	sd	s2,16(sp)
   10648:	01313423          	sd	s3,8(sp)
   1064c:	01413023          	sd	s4,0(sp)
   10650:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10654:	00800613          	li	a2,8
   10658:	00400793          	li	a5,4
   1065c:	00000593          	li	a1,0
   10660:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10664:	00f42823          	sw	a5,16(s0)
   10668:	00043023          	sd	zero,0(s0)
   1066c:	00043423          	sd	zero,8(s0)
   10670:	0a042623          	sw	zero,172(s0)
   10674:	00043c23          	sd	zero,24(s0)
   10678:	02042023          	sw	zero,32(s0)
   1067c:	02042423          	sw	zero,40(s0)
   10680:	7b8000ef          	jal	10e38 <memset>
   10684:	00011a37          	lui	s4,0x11
   10688:	000119b7          	lui	s3,0x11
   1068c:	00011937          	lui	s2,0x11
   10690:	000114b7          	lui	s1,0x11
   10694:	000107b7          	lui	a5,0x10
   10698:	9d4a0a13          	addi	s4,s4,-1580 # 109d4 <__sread>
   1069c:	a3898993          	addi	s3,s3,-1480 # 10a38 <__swrite>
   106a0:	ac090913          	addi	s2,s2,-1344 # 10ac0 <__sseek>
   106a4:	b2448493          	addi	s1,s1,-1244 # 10b24 <__sclose>
   106a8:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   106ac:	00800613          	li	a2,8
   106b0:	00000593          	li	a1,0
   106b4:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   106b8:	0cf42023          	sw	a5,192(s0)
   106bc:	03443c23          	sd	s4,56(s0)
   106c0:	05343023          	sd	s3,64(s0)
   106c4:	05243423          	sd	s2,72(s0)
   106c8:	04943823          	sd	s1,80(s0)
   106cc:	02843823          	sd	s0,48(s0)
   106d0:	0a043823          	sd	zero,176(s0)
   106d4:	0a043c23          	sd	zero,184(s0)
   106d8:	14042e23          	sw	zero,348(s0)
   106dc:	0c043423          	sd	zero,200(s0)
   106e0:	0c042823          	sw	zero,208(s0)
   106e4:	0c042c23          	sw	zero,216(s0)
   106e8:	750000ef          	jal	10e38 <memset>
   106ec:	000207b7          	lui	a5,0x20
   106f0:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   106f4:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   106f8:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   106fc:	00800613          	li	a2,8
   10700:	00000593          	li	a1,0
   10704:	0f443423          	sd	s4,232(s0)
   10708:	0f343823          	sd	s3,240(s0)
   1070c:	0f243c23          	sd	s2,248(s0)
   10710:	10943023          	sd	s1,256(s0)
   10714:	16f42823          	sw	a5,368(s0)
   10718:	16043023          	sd	zero,352(s0)
   1071c:	16043423          	sd	zero,360(s0)
   10720:	20042623          	sw	zero,524(s0)
   10724:	16043c23          	sd	zero,376(s0)
   10728:	18042023          	sw	zero,384(s0)
   1072c:	18042423          	sw	zero,392(s0)
   10730:	0ee43023          	sd	a4,224(s0)
   10734:	704000ef          	jal	10e38 <memset>
   10738:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1073c:	19443c23          	sd	s4,408(s0)
   10740:	1b343023          	sd	s3,416(s0)
   10744:	1b243423          	sd	s2,424(s0)
   10748:	1a943823          	sd	s1,432(s0)
   1074c:	02813083          	ld	ra,40(sp)
   10750:	18f43823          	sd	a5,400(s0)
   10754:	02013403          	ld	s0,32(sp)
   10758:	01813483          	ld	s1,24(sp)
   1075c:	01013903          	ld	s2,16(sp)
   10760:	00813983          	ld	s3,8(sp)
   10764:	00013a03          	ld	s4,0(sp)
   10768:	03010113          	addi	sp,sp,48
   1076c:	00008067          	ret

0000000000010770 <__sfp>:
   10770:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10774:	fd010113          	addi	sp,sp,-48
   10778:	00913c23          	sd	s1,24(sp)
   1077c:	02113423          	sd	ra,40(sp)
   10780:	02813023          	sd	s0,32(sp)
   10784:	00050493          	mv	s1,a0
   10788:	10078463          	beqz	a5,10890 <__sfp+0x120>
   1078c:	000136b7          	lui	a3,0x13
   10790:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10794:	0086a703          	lw	a4,8(a3)
   10798:	08e05c63          	blez	a4,10830 <__sfp+0xc0>
   1079c:	02071713          	slli	a4,a4,0x20
   107a0:	02075713          	srli	a4,a4,0x20
   107a4:	00171793          	slli	a5,a4,0x1
   107a8:	00e787b3          	add	a5,a5,a4
   107ac:	0106b403          	ld	s0,16(a3)
   107b0:	00279793          	slli	a5,a5,0x2
   107b4:	40e787b3          	sub	a5,a5,a4
   107b8:	00479793          	slli	a5,a5,0x4
   107bc:	00f407b3          	add	a5,s0,a5
   107c0:	00c0006f          	j	107cc <__sfp+0x5c>
   107c4:	0b040413          	addi	s0,s0,176
   107c8:	06f40463          	beq	s0,a5,10830 <__sfp+0xc0>
   107cc:	01041703          	lh	a4,16(s0)
   107d0:	fe071ae3          	bnez	a4,107c4 <__sfp+0x54>
   107d4:	ffff07b7          	lui	a5,0xffff0
   107d8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   107dc:	00f42823          	sw	a5,16(s0)
   107e0:	0a042623          	sw	zero,172(s0)
   107e4:	00043023          	sd	zero,0(s0)
   107e8:	00043423          	sd	zero,8(s0)
   107ec:	00043c23          	sd	zero,24(s0)
   107f0:	02042023          	sw	zero,32(s0)
   107f4:	02042423          	sw	zero,40(s0)
   107f8:	00800613          	li	a2,8
   107fc:	00000593          	li	a1,0
   10800:	0a440513          	addi	a0,s0,164
   10804:	634000ef          	jal	10e38 <memset>
   10808:	04043c23          	sd	zero,88(s0)
   1080c:	06042023          	sw	zero,96(s0)
   10810:	06043c23          	sd	zero,120(s0)
   10814:	08042023          	sw	zero,128(s0)
   10818:	02813083          	ld	ra,40(sp)
   1081c:	00040513          	mv	a0,s0
   10820:	02013403          	ld	s0,32(sp)
   10824:	01813483          	ld	s1,24(sp)
   10828:	03010113          	addi	sp,sp,48
   1082c:	00008067          	ret
   10830:	0006b403          	ld	s0,0(a3)
   10834:	00040663          	beqz	s0,10840 <__sfp+0xd0>
   10838:	00040693          	mv	a3,s0
   1083c:	f59ff06f          	j	10794 <__sfp+0x24>
   10840:	2d800593          	li	a1,728
   10844:	00048513          	mv	a0,s1
   10848:	00d13423          	sd	a3,8(sp)
   1084c:	43d000ef          	jal	11488 <_malloc_r>
   10850:	00813683          	ld	a3,8(sp)
   10854:	00050413          	mv	s0,a0
   10858:	04050063          	beqz	a0,10898 <__sfp+0x128>
   1085c:	00400793          	li	a5,4
   10860:	00f52423          	sw	a5,8(a0)
   10864:	01850513          	addi	a0,a0,24
   10868:	00043023          	sd	zero,0(s0)
   1086c:	00a43823          	sd	a0,16(s0)
   10870:	2c000613          	li	a2,704
   10874:	00000593          	li	a1,0
   10878:	00d13423          	sd	a3,8(sp)
   1087c:	5bc000ef          	jal	10e38 <memset>
   10880:	00813683          	ld	a3,8(sp)
   10884:	0086b023          	sd	s0,0(a3)
   10888:	00040693          	mv	a3,s0
   1088c:	f09ff06f          	j	10794 <__sfp+0x24>
   10890:	d99ff0ef          	jal	10628 <global_stdio_init.part.0>
   10894:	ef9ff06f          	j	1078c <__sfp+0x1c>
   10898:	0006b023          	sd	zero,0(a3)
   1089c:	00c00793          	li	a5,12
   108a0:	00f4a023          	sw	a5,0(s1)
   108a4:	f75ff06f          	j	10818 <__sfp+0xa8>

00000000000108a8 <__sinit>:
   108a8:	04853783          	ld	a5,72(a0)
   108ac:	00078463          	beqz	a5,108b4 <__sinit+0xc>
   108b0:	00008067          	ret
   108b4:	000107b7          	lui	a5,0x10
   108b8:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   108bc:	5bc78793          	addi	a5,a5,1468 # 105bc <cleanup_stdio>
   108c0:	04f53423          	sd	a5,72(a0)
   108c4:	fe0716e3          	bnez	a4,108b0 <__sinit+0x8>
   108c8:	d61ff06f          	j	10628 <global_stdio_init.part.0>

00000000000108cc <__sfp_lock_acquire>:
   108cc:	00008067          	ret

00000000000108d0 <__sfp_lock_release>:
   108d0:	00008067          	ret

00000000000108d4 <__fp_lock_all>:
   108d4:	00013637          	lui	a2,0x13
   108d8:	000105b7          	lui	a1,0x10
   108dc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   108e0:	59858593          	addi	a1,a1,1432 # 10598 <__fp_lock>
   108e4:	00000513          	li	a0,0
   108e8:	01c0006f          	j	10904 <_fwalk_sglue>

00000000000108ec <__fp_unlock_all>:
   108ec:	00013637          	lui	a2,0x13
   108f0:	000105b7          	lui	a1,0x10
   108f4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   108f8:	62058593          	addi	a1,a1,1568 # 10620 <__fp_unlock>
   108fc:	00000513          	li	a0,0
   10900:	0040006f          	j	10904 <_fwalk_sglue>

0000000000010904 <_fwalk_sglue>:
   10904:	fb010113          	addi	sp,sp,-80
   10908:	03213823          	sd	s2,48(sp)
   1090c:	03313423          	sd	s3,40(sp)
   10910:	03413023          	sd	s4,32(sp)
   10914:	01513c23          	sd	s5,24(sp)
   10918:	01613823          	sd	s6,16(sp)
   1091c:	01713423          	sd	s7,8(sp)
   10920:	04113423          	sd	ra,72(sp)
   10924:	04813023          	sd	s0,64(sp)
   10928:	02913c23          	sd	s1,56(sp)
   1092c:	00060913          	mv	s2,a2
   10930:	00050a13          	mv	s4,a0
   10934:	00058a93          	mv	s5,a1
   10938:	00000b13          	li	s6,0
   1093c:	00100b93          	li	s7,1
   10940:	fff00993          	li	s3,-1
   10944:	00892783          	lw	a5,8(s2)
   10948:	04f05a63          	blez	a5,1099c <_fwalk_sglue+0x98>
   1094c:	02079793          	slli	a5,a5,0x20
   10950:	0207d793          	srli	a5,a5,0x20
   10954:	00179493          	slli	s1,a5,0x1
   10958:	00f484b3          	add	s1,s1,a5
   1095c:	01093403          	ld	s0,16(s2)
   10960:	00249493          	slli	s1,s1,0x2
   10964:	40f484b3          	sub	s1,s1,a5
   10968:	00449493          	slli	s1,s1,0x4
   1096c:	009404b3          	add	s1,s0,s1
   10970:	01045783          	lhu	a5,16(s0)
   10974:	02fbf063          	bgeu	s7,a5,10994 <_fwalk_sglue+0x90>
   10978:	01241783          	lh	a5,18(s0)
   1097c:	00040593          	mv	a1,s0
   10980:	000a0513          	mv	a0,s4
   10984:	01378863          	beq	a5,s3,10994 <_fwalk_sglue+0x90>
   10988:	000a80e7          	jalr	s5
   1098c:	01656b33          	or	s6,a0,s6
   10990:	000b0b1b          	sext.w	s6,s6
   10994:	0b040413          	addi	s0,s0,176
   10998:	fc941ce3          	bne	s0,s1,10970 <_fwalk_sglue+0x6c>
   1099c:	00093903          	ld	s2,0(s2)
   109a0:	fa0912e3          	bnez	s2,10944 <_fwalk_sglue+0x40>
   109a4:	04813083          	ld	ra,72(sp)
   109a8:	04013403          	ld	s0,64(sp)
   109ac:	03813483          	ld	s1,56(sp)
   109b0:	03013903          	ld	s2,48(sp)
   109b4:	02813983          	ld	s3,40(sp)
   109b8:	02013a03          	ld	s4,32(sp)
   109bc:	01813a83          	ld	s5,24(sp)
   109c0:	00813b83          	ld	s7,8(sp)
   109c4:	000b0513          	mv	a0,s6
   109c8:	01013b03          	ld	s6,16(sp)
   109cc:	05010113          	addi	sp,sp,80
   109d0:	00008067          	ret

00000000000109d4 <__sread>:
   109d4:	ff010113          	addi	sp,sp,-16
   109d8:	00813023          	sd	s0,0(sp)
   109dc:	00058413          	mv	s0,a1
   109e0:	01259583          	lh	a1,18(a1)
   109e4:	00113423          	sd	ra,8(sp)
   109e8:	2ec000ef          	jal	10cd4 <_read_r>
   109ec:	02054063          	bltz	a0,10a0c <__sread+0x38>
   109f0:	09043783          	ld	a5,144(s0)
   109f4:	00813083          	ld	ra,8(sp)
   109f8:	00a787b3          	add	a5,a5,a0
   109fc:	08f43823          	sd	a5,144(s0)
   10a00:	00013403          	ld	s0,0(sp)
   10a04:	01010113          	addi	sp,sp,16
   10a08:	00008067          	ret
   10a0c:	01045783          	lhu	a5,16(s0)
   10a10:	fffff737          	lui	a4,0xfffff
   10a14:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a18:	00e7f7b3          	and	a5,a5,a4
   10a1c:	00813083          	ld	ra,8(sp)
   10a20:	00f41823          	sh	a5,16(s0)
   10a24:	00013403          	ld	s0,0(sp)
   10a28:	01010113          	addi	sp,sp,16
   10a2c:	00008067          	ret

0000000000010a30 <__seofread>:
   10a30:	00000513          	li	a0,0
   10a34:	00008067          	ret

0000000000010a38 <__swrite>:
   10a38:	01059783          	lh	a5,16(a1)
   10a3c:	fd010113          	addi	sp,sp,-48
   10a40:	00068313          	mv	t1,a3
   10a44:	02113423          	sd	ra,40(sp)
   10a48:	1007f693          	andi	a3,a5,256
   10a4c:	00058713          	mv	a4,a1
   10a50:	00060893          	mv	a7,a2
   10a54:	00050813          	mv	a6,a0
   10a58:	02069863          	bnez	a3,10a88 <__swrite+0x50>
   10a5c:	fffff6b7          	lui	a3,0xfffff
   10a60:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a64:	02813083          	ld	ra,40(sp)
   10a68:	00d7f7b3          	and	a5,a5,a3
   10a6c:	01271583          	lh	a1,18(a4)
   10a70:	00f71823          	sh	a5,16(a4)
   10a74:	00030693          	mv	a3,t1
   10a78:	00088613          	mv	a2,a7
   10a7c:	00080513          	mv	a0,a6
   10a80:	03010113          	addi	sp,sp,48
   10a84:	2b80006f          	j	10d3c <_write_r>
   10a88:	01259583          	lh	a1,18(a1)
   10a8c:	00c13823          	sd	a2,16(sp)
   10a90:	00200693          	li	a3,2
   10a94:	00000613          	li	a2,0
   10a98:	00613c23          	sd	t1,24(sp)
   10a9c:	00e13023          	sd	a4,0(sp)
   10aa0:	00a13423          	sd	a0,8(sp)
   10aa4:	1c8000ef          	jal	10c6c <_lseek_r>
   10aa8:	00013703          	ld	a4,0(sp)
   10aac:	01813303          	ld	t1,24(sp)
   10ab0:	01013883          	ld	a7,16(sp)
   10ab4:	01071783          	lh	a5,16(a4)
   10ab8:	00813803          	ld	a6,8(sp)
   10abc:	fa1ff06f          	j	10a5c <__swrite+0x24>

0000000000010ac0 <__sseek>:
   10ac0:	ff010113          	addi	sp,sp,-16
   10ac4:	00813023          	sd	s0,0(sp)
   10ac8:	00058413          	mv	s0,a1
   10acc:	01259583          	lh	a1,18(a1)
   10ad0:	00113423          	sd	ra,8(sp)
   10ad4:	198000ef          	jal	10c6c <_lseek_r>
   10ad8:	fff00713          	li	a4,-1
   10adc:	01041783          	lh	a5,16(s0)
   10ae0:	02e50263          	beq	a0,a4,10b04 <__sseek+0x44>
   10ae4:	00001737          	lui	a4,0x1
   10ae8:	00e7e7b3          	or	a5,a5,a4
   10aec:	00813083          	ld	ra,8(sp)
   10af0:	08a43823          	sd	a0,144(s0)
   10af4:	00f41823          	sh	a5,16(s0)
   10af8:	00013403          	ld	s0,0(sp)
   10afc:	01010113          	addi	sp,sp,16
   10b00:	00008067          	ret
   10b04:	80050713          	addi	a4,a0,-2048
   10b08:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10b0c:	00e7f7b3          	and	a5,a5,a4
   10b10:	00813083          	ld	ra,8(sp)
   10b14:	00f41823          	sh	a5,16(s0)
   10b18:	00013403          	ld	s0,0(sp)
   10b1c:	01010113          	addi	sp,sp,16
   10b20:	00008067          	ret

0000000000010b24 <__sclose>:
   10b24:	01259583          	lh	a1,18(a1)
   10b28:	0040006f          	j	10b2c <_close_r>

0000000000010b2c <_close_r>:
   10b2c:	fe010113          	addi	sp,sp,-32
   10b30:	00813823          	sd	s0,16(sp)
   10b34:	00913423          	sd	s1,8(sp)
   10b38:	00050493          	mv	s1,a0
   10b3c:	00058513          	mv	a0,a1
   10b40:	00113c23          	sd	ra,24(sp)
   10b44:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b48:	7e4010ef          	jal	1232c <_close>
   10b4c:	fff00793          	li	a5,-1
   10b50:	00f50c63          	beq	a0,a5,10b68 <_close_r+0x3c>
   10b54:	01813083          	ld	ra,24(sp)
   10b58:	01013403          	ld	s0,16(sp)
   10b5c:	00813483          	ld	s1,8(sp)
   10b60:	02010113          	addi	sp,sp,32
   10b64:	00008067          	ret
   10b68:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b6c:	fe0784e3          	beqz	a5,10b54 <_close_r+0x28>
   10b70:	01813083          	ld	ra,24(sp)
   10b74:	01013403          	ld	s0,16(sp)
   10b78:	00f4a023          	sw	a5,0(s1)
   10b7c:	00813483          	ld	s1,8(sp)
   10b80:	02010113          	addi	sp,sp,32
   10b84:	00008067          	ret

0000000000010b88 <_reclaim_reent>:
   10b88:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10b8c:	0ca78e63          	beq	a5,a0,10c68 <_reclaim_reent+0xe0>
   10b90:	06853583          	ld	a1,104(a0)
   10b94:	fd010113          	addi	sp,sp,-48
   10b98:	00913c23          	sd	s1,24(sp)
   10b9c:	02113423          	sd	ra,40(sp)
   10ba0:	02813023          	sd	s0,32(sp)
   10ba4:	00050493          	mv	s1,a0
   10ba8:	04058863          	beqz	a1,10bf8 <_reclaim_reent+0x70>
   10bac:	01213823          	sd	s2,16(sp)
   10bb0:	01313423          	sd	s3,8(sp)
   10bb4:	00000913          	li	s2,0
   10bb8:	20000993          	li	s3,512
   10bbc:	012587b3          	add	a5,a1,s2
   10bc0:	0007b403          	ld	s0,0(a5)
   10bc4:	00040e63          	beqz	s0,10be0 <_reclaim_reent+0x58>
   10bc8:	00040593          	mv	a1,s0
   10bcc:	00043403          	ld	s0,0(s0)
   10bd0:	00048513          	mv	a0,s1
   10bd4:	5b0000ef          	jal	11184 <_free_r>
   10bd8:	fe0418e3          	bnez	s0,10bc8 <_reclaim_reent+0x40>
   10bdc:	0684b583          	ld	a1,104(s1)
   10be0:	00890913          	addi	s2,s2,8
   10be4:	fd391ce3          	bne	s2,s3,10bbc <_reclaim_reent+0x34>
   10be8:	00048513          	mv	a0,s1
   10bec:	598000ef          	jal	11184 <_free_r>
   10bf0:	01013903          	ld	s2,16(sp)
   10bf4:	00813983          	ld	s3,8(sp)
   10bf8:	0504b583          	ld	a1,80(s1)
   10bfc:	00058663          	beqz	a1,10c08 <_reclaim_reent+0x80>
   10c00:	00048513          	mv	a0,s1
   10c04:	580000ef          	jal	11184 <_free_r>
   10c08:	0604b403          	ld	s0,96(s1)
   10c0c:	00040c63          	beqz	s0,10c24 <_reclaim_reent+0x9c>
   10c10:	00040593          	mv	a1,s0
   10c14:	00043403          	ld	s0,0(s0)
   10c18:	00048513          	mv	a0,s1
   10c1c:	568000ef          	jal	11184 <_free_r>
   10c20:	fe0418e3          	bnez	s0,10c10 <_reclaim_reent+0x88>
   10c24:	0784b583          	ld	a1,120(s1)
   10c28:	00058663          	beqz	a1,10c34 <_reclaim_reent+0xac>
   10c2c:	00048513          	mv	a0,s1
   10c30:	554000ef          	jal	11184 <_free_r>
   10c34:	0484b783          	ld	a5,72(s1)
   10c38:	00078e63          	beqz	a5,10c54 <_reclaim_reent+0xcc>
   10c3c:	02013403          	ld	s0,32(sp)
   10c40:	02813083          	ld	ra,40(sp)
   10c44:	00048513          	mv	a0,s1
   10c48:	01813483          	ld	s1,24(sp)
   10c4c:	03010113          	addi	sp,sp,48
   10c50:	00078067          	jr	a5
   10c54:	02813083          	ld	ra,40(sp)
   10c58:	02013403          	ld	s0,32(sp)
   10c5c:	01813483          	ld	s1,24(sp)
   10c60:	03010113          	addi	sp,sp,48
   10c64:	00008067          	ret
   10c68:	00008067          	ret

0000000000010c6c <_lseek_r>:
   10c6c:	fe010113          	addi	sp,sp,-32
   10c70:	00058793          	mv	a5,a1
   10c74:	00813823          	sd	s0,16(sp)
   10c78:	00913423          	sd	s1,8(sp)
   10c7c:	00060593          	mv	a1,a2
   10c80:	00050493          	mv	s1,a0
   10c84:	00068613          	mv	a2,a3
   10c88:	00078513          	mv	a0,a5
   10c8c:	00113c23          	sd	ra,24(sp)
   10c90:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c94:	708010ef          	jal	1239c <_lseek>
   10c98:	fff00793          	li	a5,-1
   10c9c:	00f50c63          	beq	a0,a5,10cb4 <_lseek_r+0x48>
   10ca0:	01813083          	ld	ra,24(sp)
   10ca4:	01013403          	ld	s0,16(sp)
   10ca8:	00813483          	ld	s1,8(sp)
   10cac:	02010113          	addi	sp,sp,32
   10cb0:	00008067          	ret
   10cb4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10cb8:	fe0784e3          	beqz	a5,10ca0 <_lseek_r+0x34>
   10cbc:	01813083          	ld	ra,24(sp)
   10cc0:	01013403          	ld	s0,16(sp)
   10cc4:	00f4a023          	sw	a5,0(s1)
   10cc8:	00813483          	ld	s1,8(sp)
   10ccc:	02010113          	addi	sp,sp,32
   10cd0:	00008067          	ret

0000000000010cd4 <_read_r>:
   10cd4:	fe010113          	addi	sp,sp,-32
   10cd8:	00058793          	mv	a5,a1
   10cdc:	00813823          	sd	s0,16(sp)
   10ce0:	00913423          	sd	s1,8(sp)
   10ce4:	00060593          	mv	a1,a2
   10ce8:	00050493          	mv	s1,a0
   10cec:	00068613          	mv	a2,a3
   10cf0:	00078513          	mv	a0,a5
   10cf4:	00113c23          	sd	ra,24(sp)
   10cf8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10cfc:	6e0010ef          	jal	123dc <_read>
   10d00:	fff00793          	li	a5,-1
   10d04:	00f50c63          	beq	a0,a5,10d1c <_read_r+0x48>
   10d08:	01813083          	ld	ra,24(sp)
   10d0c:	01013403          	ld	s0,16(sp)
   10d10:	00813483          	ld	s1,8(sp)
   10d14:	02010113          	addi	sp,sp,32
   10d18:	00008067          	ret
   10d1c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d20:	fe0784e3          	beqz	a5,10d08 <_read_r+0x34>
   10d24:	01813083          	ld	ra,24(sp)
   10d28:	01013403          	ld	s0,16(sp)
   10d2c:	00f4a023          	sw	a5,0(s1)
   10d30:	00813483          	ld	s1,8(sp)
   10d34:	02010113          	addi	sp,sp,32
   10d38:	00008067          	ret

0000000000010d3c <_write_r>:
   10d3c:	fe010113          	addi	sp,sp,-32
   10d40:	00058793          	mv	a5,a1
   10d44:	00813823          	sd	s0,16(sp)
   10d48:	00913423          	sd	s1,8(sp)
   10d4c:	00060593          	mv	a1,a2
   10d50:	00050493          	mv	s1,a0
   10d54:	00068613          	mv	a2,a3
   10d58:	00078513          	mv	a0,a5
   10d5c:	00113c23          	sd	ra,24(sp)
   10d60:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d64:	730010ef          	jal	12494 <_write>
   10d68:	fff00793          	li	a5,-1
   10d6c:	00f50c63          	beq	a0,a5,10d84 <_write_r+0x48>
   10d70:	01813083          	ld	ra,24(sp)
   10d74:	01013403          	ld	s0,16(sp)
   10d78:	00813483          	ld	s1,8(sp)
   10d7c:	02010113          	addi	sp,sp,32
   10d80:	00008067          	ret
   10d84:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d88:	fe0784e3          	beqz	a5,10d70 <_write_r+0x34>
   10d8c:	01813083          	ld	ra,24(sp)
   10d90:	01013403          	ld	s0,16(sp)
   10d94:	00f4a023          	sw	a5,0(s1)
   10d98:	00813483          	ld	s1,8(sp)
   10d9c:	02010113          	addi	sp,sp,32
   10da0:	00008067          	ret

0000000000010da4 <__libc_init_array>:
   10da4:	fe010113          	addi	sp,sp,-32
   10da8:	00813823          	sd	s0,16(sp)
   10dac:	01213023          	sd	s2,0(sp)
   10db0:	00013437          	lui	s0,0x13
   10db4:	00013937          	lui	s2,0x13
   10db8:	00113c23          	sd	ra,24(sp)
   10dbc:	00913423          	sd	s1,8(sp)
   10dc0:	00090913          	mv	s2,s2
   10dc4:	00040413          	mv	s0,s0
   10dc8:	02890263          	beq	s2,s0,10dec <__libc_init_array+0x48>
   10dcc:	40890933          	sub	s2,s2,s0
   10dd0:	40395913          	srai	s2,s2,0x3
   10dd4:	00000493          	li	s1,0
   10dd8:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10ddc:	00148493          	addi	s1,s1,1
   10de0:	00840413          	addi	s0,s0,8
   10de4:	000780e7          	jalr	a5
   10de8:	ff24e8e3          	bltu	s1,s2,10dd8 <__libc_init_array+0x34>
   10dec:	00013937          	lui	s2,0x13
   10df0:	00013437          	lui	s0,0x13
   10df4:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10df8:	00040413          	mv	s0,s0
   10dfc:	02890263          	beq	s2,s0,10e20 <__libc_init_array+0x7c>
   10e00:	40890933          	sub	s2,s2,s0
   10e04:	40395913          	srai	s2,s2,0x3
   10e08:	00000493          	li	s1,0
   10e0c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10e10:	00148493          	addi	s1,s1,1
   10e14:	00840413          	addi	s0,s0,8
   10e18:	000780e7          	jalr	a5
   10e1c:	ff24e8e3          	bltu	s1,s2,10e0c <__libc_init_array+0x68>
   10e20:	01813083          	ld	ra,24(sp)
   10e24:	01013403          	ld	s0,16(sp)
   10e28:	00813483          	ld	s1,8(sp)
   10e2c:	00013903          	ld	s2,0(sp)
   10e30:	02010113          	addi	sp,sp,32
   10e34:	00008067          	ret

0000000000010e38 <memset>:
   10e38:	00f00313          	li	t1,15
   10e3c:	00050713          	mv	a4,a0
   10e40:	02c37a63          	bgeu	t1,a2,10e74 <memset+0x3c>
   10e44:	00f77793          	andi	a5,a4,15
   10e48:	0a079063          	bnez	a5,10ee8 <memset+0xb0>
   10e4c:	06059e63          	bnez	a1,10ec8 <memset+0x90>
   10e50:	ff067693          	andi	a3,a2,-16
   10e54:	00f67613          	andi	a2,a2,15
   10e58:	00e686b3          	add	a3,a3,a4
   10e5c:	00b73023          	sd	a1,0(a4)
   10e60:	00b73423          	sd	a1,8(a4)
   10e64:	01070713          	addi	a4,a4,16
   10e68:	fed76ae3          	bltu	a4,a3,10e5c <memset+0x24>
   10e6c:	00061463          	bnez	a2,10e74 <memset+0x3c>
   10e70:	00008067          	ret
   10e74:	40c306b3          	sub	a3,t1,a2
   10e78:	00269693          	slli	a3,a3,0x2
   10e7c:	00000297          	auipc	t0,0x0
   10e80:	005686b3          	add	a3,a3,t0
   10e84:	00c68067          	jr	12(a3)
   10e88:	00b70723          	sb	a1,14(a4)
   10e8c:	00b706a3          	sb	a1,13(a4)
   10e90:	00b70623          	sb	a1,12(a4)
   10e94:	00b705a3          	sb	a1,11(a4)
   10e98:	00b70523          	sb	a1,10(a4)
   10e9c:	00b704a3          	sb	a1,9(a4)
   10ea0:	00b70423          	sb	a1,8(a4)
   10ea4:	00b703a3          	sb	a1,7(a4)
   10ea8:	00b70323          	sb	a1,6(a4)
   10eac:	00b702a3          	sb	a1,5(a4)
   10eb0:	00b70223          	sb	a1,4(a4)
   10eb4:	00b701a3          	sb	a1,3(a4)
   10eb8:	00b70123          	sb	a1,2(a4)
   10ebc:	00b700a3          	sb	a1,1(a4)
   10ec0:	00b70023          	sb	a1,0(a4)
   10ec4:	00008067          	ret
   10ec8:	0ff5f593          	zext.b	a1,a1
   10ecc:	00859693          	slli	a3,a1,0x8
   10ed0:	00d5e5b3          	or	a1,a1,a3
   10ed4:	01059693          	slli	a3,a1,0x10
   10ed8:	00d5e5b3          	or	a1,a1,a3
   10edc:	02059693          	slli	a3,a1,0x20
   10ee0:	00d5e5b3          	or	a1,a1,a3
   10ee4:	f6dff06f          	j	10e50 <memset+0x18>
   10ee8:	00279693          	slli	a3,a5,0x2
   10eec:	00000297          	auipc	t0,0x0
   10ef0:	005686b3          	add	a3,a3,t0
   10ef4:	00008293          	mv	t0,ra
   10ef8:	f98680e7          	jalr	-104(a3)
   10efc:	00028093          	mv	ra,t0
   10f00:	ff078793          	addi	a5,a5,-16
   10f04:	40f70733          	sub	a4,a4,a5
   10f08:	00f60633          	add	a2,a2,a5
   10f0c:	f6c374e3          	bgeu	t1,a2,10e74 <memset+0x3c>
   10f10:	f3dff06f          	j	10e4c <memset+0x14>

0000000000010f14 <__call_exitprocs>:
   10f14:	fb010113          	addi	sp,sp,-80
   10f18:	03413023          	sd	s4,32(sp)
   10f1c:	03213823          	sd	s2,48(sp)
   10f20:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10f24:	04113423          	sd	ra,72(sp)
   10f28:	06090e63          	beqz	s2,10fa4 <__call_exitprocs+0x90>
   10f2c:	03313423          	sd	s3,40(sp)
   10f30:	01513c23          	sd	s5,24(sp)
   10f34:	01613823          	sd	s6,16(sp)
   10f38:	01713423          	sd	s7,8(sp)
   10f3c:	04813023          	sd	s0,64(sp)
   10f40:	02913c23          	sd	s1,56(sp)
   10f44:	01813023          	sd	s8,0(sp)
   10f48:	00050b13          	mv	s6,a0
   10f4c:	00058b93          	mv	s7,a1
   10f50:	fff00993          	li	s3,-1
   10f54:	00100a93          	li	s5,1
   10f58:	00892403          	lw	s0,8(s2)
   10f5c:	fff4041b          	addiw	s0,s0,-1
   10f60:	02044463          	bltz	s0,10f88 <__call_exitprocs+0x74>
   10f64:	01090493          	addi	s1,s2,16
   10f68:	00341793          	slli	a5,s0,0x3
   10f6c:	00f484b3          	add	s1,s1,a5
   10f70:	040b8463          	beqz	s7,10fb8 <__call_exitprocs+0xa4>
   10f74:	2004b783          	ld	a5,512(s1)
   10f78:	05778063          	beq	a5,s7,10fb8 <__call_exitprocs+0xa4>
   10f7c:	fff4041b          	addiw	s0,s0,-1
   10f80:	ff848493          	addi	s1,s1,-8
   10f84:	ff3418e3          	bne	s0,s3,10f74 <__call_exitprocs+0x60>
   10f88:	04013403          	ld	s0,64(sp)
   10f8c:	03813483          	ld	s1,56(sp)
   10f90:	02813983          	ld	s3,40(sp)
   10f94:	01813a83          	ld	s5,24(sp)
   10f98:	01013b03          	ld	s6,16(sp)
   10f9c:	00813b83          	ld	s7,8(sp)
   10fa0:	00013c03          	ld	s8,0(sp)
   10fa4:	04813083          	ld	ra,72(sp)
   10fa8:	03013903          	ld	s2,48(sp)
   10fac:	02013a03          	ld	s4,32(sp)
   10fb0:	05010113          	addi	sp,sp,80
   10fb4:	00008067          	ret
   10fb8:	00892783          	lw	a5,8(s2)
   10fbc:	0004b683          	ld	a3,0(s1)
   10fc0:	fff7879b          	addiw	a5,a5,-1
   10fc4:	06878a63          	beq	a5,s0,11038 <__call_exitprocs+0x124>
   10fc8:	0004b023          	sd	zero,0(s1)
   10fcc:	02068663          	beqz	a3,10ff8 <__call_exitprocs+0xe4>
   10fd0:	31092783          	lw	a5,784(s2)
   10fd4:	008a973b          	sllw	a4,s5,s0
   10fd8:	00892c03          	lw	s8,8(s2)
   10fdc:	00e7f7b3          	and	a5,a5,a4
   10fe0:	02079463          	bnez	a5,11008 <__call_exitprocs+0xf4>
   10fe4:	000680e7          	jalr	a3
   10fe8:	00892703          	lw	a4,8(s2)
   10fec:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ff0:	03871e63          	bne	a4,s8,1102c <__call_exitprocs+0x118>
   10ff4:	03279c63          	bne	a5,s2,1102c <__call_exitprocs+0x118>
   10ff8:	fff4041b          	addiw	s0,s0,-1
   10ffc:	ff848493          	addi	s1,s1,-8
   11000:	f73418e3          	bne	s0,s3,10f70 <__call_exitprocs+0x5c>
   11004:	f85ff06f          	j	10f88 <__call_exitprocs+0x74>
   11008:	31492783          	lw	a5,788(s2)
   1100c:	1004b583          	ld	a1,256(s1)
   11010:	00f77733          	and	a4,a4,a5
   11014:	02071663          	bnez	a4,11040 <__call_exitprocs+0x12c>
   11018:	000b0513          	mv	a0,s6
   1101c:	000680e7          	jalr	a3
   11020:	00892703          	lw	a4,8(s2)
   11024:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11028:	fd8706e3          	beq	a4,s8,10ff4 <__call_exitprocs+0xe0>
   1102c:	f4078ee3          	beqz	a5,10f88 <__call_exitprocs+0x74>
   11030:	00078913          	mv	s2,a5
   11034:	f25ff06f          	j	10f58 <__call_exitprocs+0x44>
   11038:	00892423          	sw	s0,8(s2)
   1103c:	f91ff06f          	j	10fcc <__call_exitprocs+0xb8>
   11040:	00058513          	mv	a0,a1
   11044:	000680e7          	jalr	a3
   11048:	fa1ff06f          	j	10fe8 <__call_exitprocs+0xd4>

000000000001104c <atexit>:
   1104c:	00050593          	mv	a1,a0
   11050:	00000693          	li	a3,0
   11054:	00000613          	li	a2,0
   11058:	00000513          	li	a0,0
   1105c:	2340106f          	j	12290 <__register_exitproc>

0000000000011060 <_malloc_trim_r>:
   11060:	fd010113          	addi	sp,sp,-48
   11064:	01213823          	sd	s2,16(sp)
   11068:	00013937          	lui	s2,0x13
   1106c:	02813023          	sd	s0,32(sp)
   11070:	00913c23          	sd	s1,24(sp)
   11074:	01313423          	sd	s3,8(sp)
   11078:	00058413          	mv	s0,a1
   1107c:	02113423          	sd	ra,40(sp)
   11080:	00050993          	mv	s3,a0
   11084:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11088:	4e5000ef          	jal	11d6c <__malloc_lock>
   1108c:	01093783          	ld	a5,16(s2)
   11090:	00001737          	lui	a4,0x1
   11094:	0087b483          	ld	s1,8(a5)
   11098:	ffc4f493          	andi	s1,s1,-4
   1109c:	7ff48793          	addi	a5,s1,2047
   110a0:	7e078793          	addi	a5,a5,2016
   110a4:	40878433          	sub	s0,a5,s0
   110a8:	00c45413          	srli	s0,s0,0xc
   110ac:	fff40413          	addi	s0,s0,-1
   110b0:	00c41413          	slli	s0,s0,0xc
   110b4:	00e44e63          	blt	s0,a4,110d0 <_malloc_trim_r+0x70>
   110b8:	00000593          	li	a1,0
   110bc:	00098513          	mv	a0,s3
   110c0:	118010ef          	jal	121d8 <_sbrk_r>
   110c4:	01093783          	ld	a5,16(s2)
   110c8:	009787b3          	add	a5,a5,s1
   110cc:	02f50663          	beq	a0,a5,110f8 <_malloc_trim_r+0x98>
   110d0:	00098513          	mv	a0,s3
   110d4:	49d000ef          	jal	11d70 <__malloc_unlock>
   110d8:	02813083          	ld	ra,40(sp)
   110dc:	02013403          	ld	s0,32(sp)
   110e0:	01813483          	ld	s1,24(sp)
   110e4:	01013903          	ld	s2,16(sp)
   110e8:	00813983          	ld	s3,8(sp)
   110ec:	00000513          	li	a0,0
   110f0:	03010113          	addi	sp,sp,48
   110f4:	00008067          	ret
   110f8:	408005b3          	neg	a1,s0
   110fc:	00098513          	mv	a0,s3
   11100:	0d8010ef          	jal	121d8 <_sbrk_r>
   11104:	fff00793          	li	a5,-1
   11108:	04f50463          	beq	a0,a5,11150 <_malloc_trim_r+0xf0>
   1110c:	01093683          	ld	a3,16(s2)
   11110:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11114:	408484b3          	sub	s1,s1,s0
   11118:	0014e493          	ori	s1,s1,1
   1111c:	00098513          	mv	a0,s3
   11120:	408787bb          	subw	a5,a5,s0
   11124:	0096b423          	sd	s1,8(a3)
   11128:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1112c:	445000ef          	jal	11d70 <__malloc_unlock>
   11130:	02813083          	ld	ra,40(sp)
   11134:	02013403          	ld	s0,32(sp)
   11138:	01813483          	ld	s1,24(sp)
   1113c:	01013903          	ld	s2,16(sp)
   11140:	00813983          	ld	s3,8(sp)
   11144:	00100513          	li	a0,1
   11148:	03010113          	addi	sp,sp,48
   1114c:	00008067          	ret
   11150:	00000593          	li	a1,0
   11154:	00098513          	mv	a0,s3
   11158:	080010ef          	jal	121d8 <_sbrk_r>
   1115c:	01093703          	ld	a4,16(s2)
   11160:	01f00693          	li	a3,31
   11164:	40e507b3          	sub	a5,a0,a4
   11168:	f6f6d4e3          	bge	a3,a5,110d0 <_malloc_trim_r+0x70>
   1116c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11170:	0017e793          	ori	a5,a5,1
   11174:	40c50533          	sub	a0,a0,a2
   11178:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   1117c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11180:	f51ff06f          	j	110d0 <_malloc_trim_r+0x70>

0000000000011184 <_free_r>:
   11184:	12058863          	beqz	a1,112b4 <_free_r+0x130>
   11188:	fe010113          	addi	sp,sp,-32
   1118c:	00813823          	sd	s0,16(sp)
   11190:	00b13423          	sd	a1,8(sp)
   11194:	00050413          	mv	s0,a0
   11198:	00113c23          	sd	ra,24(sp)
   1119c:	3d1000ef          	jal	11d6c <__malloc_lock>
   111a0:	00813583          	ld	a1,8(sp)
   111a4:	00013837          	lui	a6,0x13
   111a8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   111ac:	ff85b503          	ld	a0,-8(a1)
   111b0:	ff058713          	addi	a4,a1,-16
   111b4:	01083883          	ld	a7,16(a6)
   111b8:	ffe57793          	andi	a5,a0,-2
   111bc:	00f70633          	add	a2,a4,a5
   111c0:	00863683          	ld	a3,8(a2)
   111c4:	00157313          	andi	t1,a0,1
   111c8:	ffc6f693          	andi	a3,a3,-4
   111cc:	18c88e63          	beq	a7,a2,11368 <_free_r+0x1e4>
   111d0:	00d63423          	sd	a3,8(a2)
   111d4:	00d608b3          	add	a7,a2,a3
   111d8:	0088b883          	ld	a7,8(a7)
   111dc:	0018f893          	andi	a7,a7,1
   111e0:	08031e63          	bnez	t1,1127c <_free_r+0xf8>
   111e4:	ff05b303          	ld	t1,-16(a1)
   111e8:	000135b7          	lui	a1,0x13
   111ec:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   111f0:	40670733          	sub	a4,a4,t1
   111f4:	01073503          	ld	a0,16(a4)
   111f8:	006787b3          	add	a5,a5,t1
   111fc:	14b50063          	beq	a0,a1,1133c <_free_r+0x1b8>
   11200:	01873303          	ld	t1,24(a4)
   11204:	00653c23          	sd	t1,24(a0)
   11208:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   1120c:	1a088263          	beqz	a7,113b0 <_free_r+0x22c>
   11210:	0017e693          	ori	a3,a5,1
   11214:	00d73423          	sd	a3,8(a4)
   11218:	00f63023          	sd	a5,0(a2)
   1121c:	1ff00693          	li	a3,511
   11220:	0af6e663          	bltu	a3,a5,112cc <_free_r+0x148>
   11224:	0037d793          	srli	a5,a5,0x3
   11228:	00179693          	slli	a3,a5,0x1
   1122c:	0026869b          	addiw	a3,a3,2
   11230:	00369693          	slli	a3,a3,0x3
   11234:	00883503          	ld	a0,8(a6)
   11238:	00d806b3          	add	a3,a6,a3
   1123c:	0006b583          	ld	a1,0(a3)
   11240:	4027d61b          	sraiw	a2,a5,0x2
   11244:	00100793          	li	a5,1
   11248:	00c797b3          	sll	a5,a5,a2
   1124c:	00a7e7b3          	or	a5,a5,a0
   11250:	ff068613          	addi	a2,a3,-16
   11254:	00b73823          	sd	a1,16(a4)
   11258:	00c73c23          	sd	a2,24(a4)
   1125c:	00f83423          	sd	a5,8(a6)
   11260:	00e6b023          	sd	a4,0(a3)
   11264:	00e5bc23          	sd	a4,24(a1)
   11268:	00040513          	mv	a0,s0
   1126c:	01013403          	ld	s0,16(sp)
   11270:	01813083          	ld	ra,24(sp)
   11274:	02010113          	addi	sp,sp,32
   11278:	2f90006f          	j	11d70 <__malloc_unlock>
   1127c:	02089e63          	bnez	a7,112b8 <_free_r+0x134>
   11280:	000135b7          	lui	a1,0x13
   11284:	00d787b3          	add	a5,a5,a3
   11288:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1128c:	01063683          	ld	a3,16(a2)
   11290:	0017e893          	ori	a7,a5,1
   11294:	00f70533          	add	a0,a4,a5
   11298:	16b68663          	beq	a3,a1,11404 <_free_r+0x280>
   1129c:	01863603          	ld	a2,24(a2)
   112a0:	00c6bc23          	sd	a2,24(a3)
   112a4:	00d63823          	sd	a3,16(a2)
   112a8:	01173423          	sd	a7,8(a4)
   112ac:	00f53023          	sd	a5,0(a0)
   112b0:	f6dff06f          	j	1121c <_free_r+0x98>
   112b4:	00008067          	ret
   112b8:	00156513          	ori	a0,a0,1
   112bc:	fea5bc23          	sd	a0,-8(a1)
   112c0:	00f63023          	sd	a5,0(a2)
   112c4:	1ff00693          	li	a3,511
   112c8:	f4f6fee3          	bgeu	a3,a5,11224 <_free_r+0xa0>
   112cc:	0097d693          	srli	a3,a5,0x9
   112d0:	00400613          	li	a2,4
   112d4:	0ed66263          	bltu	a2,a3,113b8 <_free_r+0x234>
   112d8:	0067d693          	srli	a3,a5,0x6
   112dc:	00169593          	slli	a1,a3,0x1
   112e0:	0725859b          	addiw	a1,a1,114
   112e4:	00359593          	slli	a1,a1,0x3
   112e8:	0386861b          	addiw	a2,a3,56
   112ec:	00b805b3          	add	a1,a6,a1
   112f0:	0005b683          	ld	a3,0(a1)
   112f4:	ff058593          	addi	a1,a1,-16
   112f8:	00d59863          	bne	a1,a3,11308 <_free_r+0x184>
   112fc:	1240006f          	j	11420 <_free_r+0x29c>
   11300:	0106b683          	ld	a3,16(a3)
   11304:	00d58863          	beq	a1,a3,11314 <_free_r+0x190>
   11308:	0086b603          	ld	a2,8(a3)
   1130c:	ffc67613          	andi	a2,a2,-4
   11310:	fec7e8e3          	bltu	a5,a2,11300 <_free_r+0x17c>
   11314:	0186b583          	ld	a1,24(a3)
   11318:	00b73c23          	sd	a1,24(a4)
   1131c:	00d73823          	sd	a3,16(a4)
   11320:	00040513          	mv	a0,s0
   11324:	01013403          	ld	s0,16(sp)
   11328:	01813083          	ld	ra,24(sp)
   1132c:	00e5b823          	sd	a4,16(a1)
   11330:	00e6bc23          	sd	a4,24(a3)
   11334:	02010113          	addi	sp,sp,32
   11338:	2390006f          	j	11d70 <__malloc_unlock>
   1133c:	0a089263          	bnez	a7,113e0 <_free_r+0x25c>
   11340:	01863583          	ld	a1,24(a2)
   11344:	01063603          	ld	a2,16(a2)
   11348:	00f686b3          	add	a3,a3,a5
   1134c:	0016e793          	ori	a5,a3,1
   11350:	00b63c23          	sd	a1,24(a2)
   11354:	00c5b823          	sd	a2,16(a1)
   11358:	00f73423          	sd	a5,8(a4)
   1135c:	00d70733          	add	a4,a4,a3
   11360:	00d73023          	sd	a3,0(a4)
   11364:	f05ff06f          	j	11268 <_free_r+0xe4>
   11368:	00d786b3          	add	a3,a5,a3
   1136c:	02031063          	bnez	t1,1138c <_free_r+0x208>
   11370:	ff05b783          	ld	a5,-16(a1)
   11374:	40f70733          	sub	a4,a4,a5
   11378:	01073603          	ld	a2,16(a4)
   1137c:	00f686b3          	add	a3,a3,a5
   11380:	01873783          	ld	a5,24(a4)
   11384:	00f63c23          	sd	a5,24(a2)
   11388:	00c7b823          	sd	a2,16(a5)
   1138c:	0016e613          	ori	a2,a3,1
   11390:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11394:	00c73423          	sd	a2,8(a4)
   11398:	00e83823          	sd	a4,16(a6)
   1139c:	ecf6e6e3          	bltu	a3,a5,11268 <_free_r+0xe4>
   113a0:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   113a4:	00040513          	mv	a0,s0
   113a8:	cb9ff0ef          	jal	11060 <_malloc_trim_r>
   113ac:	ebdff06f          	j	11268 <_free_r+0xe4>
   113b0:	00d787b3          	add	a5,a5,a3
   113b4:	ed9ff06f          	j	1128c <_free_r+0x108>
   113b8:	01400613          	li	a2,20
   113bc:	02d67a63          	bgeu	a2,a3,113f0 <_free_r+0x26c>
   113c0:	05400613          	li	a2,84
   113c4:	06d66c63          	bltu	a2,a3,1143c <_free_r+0x2b8>
   113c8:	00c7d693          	srli	a3,a5,0xc
   113cc:	00169593          	slli	a1,a3,0x1
   113d0:	0de5859b          	addiw	a1,a1,222
   113d4:	00359593          	slli	a1,a1,0x3
   113d8:	06e6861b          	addiw	a2,a3,110
   113dc:	f11ff06f          	j	112ec <_free_r+0x168>
   113e0:	0017e693          	ori	a3,a5,1
   113e4:	00d73423          	sd	a3,8(a4)
   113e8:	00f63023          	sd	a5,0(a2)
   113ec:	e7dff06f          	j	11268 <_free_r+0xe4>
   113f0:	00169593          	slli	a1,a3,0x1
   113f4:	0b85859b          	addiw	a1,a1,184
   113f8:	00359593          	slli	a1,a1,0x3
   113fc:	05b6861b          	addiw	a2,a3,91
   11400:	eedff06f          	j	112ec <_free_r+0x168>
   11404:	02e83423          	sd	a4,40(a6)
   11408:	02e83023          	sd	a4,32(a6)
   1140c:	00b73c23          	sd	a1,24(a4)
   11410:	00b73823          	sd	a1,16(a4)
   11414:	01173423          	sd	a7,8(a4)
   11418:	00f53023          	sd	a5,0(a0)
   1141c:	e4dff06f          	j	11268 <_free_r+0xe4>
   11420:	00883503          	ld	a0,8(a6)
   11424:	4026561b          	sraiw	a2,a2,0x2
   11428:	00100793          	li	a5,1
   1142c:	00c797b3          	sll	a5,a5,a2
   11430:	00a7e7b3          	or	a5,a5,a0
   11434:	00f83423          	sd	a5,8(a6)
   11438:	ee1ff06f          	j	11318 <_free_r+0x194>
   1143c:	15400613          	li	a2,340
   11440:	00d66e63          	bltu	a2,a3,1145c <_free_r+0x2d8>
   11444:	00f7d693          	srli	a3,a5,0xf
   11448:	00169593          	slli	a1,a3,0x1
   1144c:	0f05859b          	addiw	a1,a1,240
   11450:	00359593          	slli	a1,a1,0x3
   11454:	0776861b          	addiw	a2,a3,119
   11458:	e95ff06f          	j	112ec <_free_r+0x168>
   1145c:	55400613          	li	a2,1364
   11460:	00d66e63          	bltu	a2,a3,1147c <_free_r+0x2f8>
   11464:	0127d693          	srli	a3,a5,0x12
   11468:	00169593          	slli	a1,a3,0x1
   1146c:	0fa5859b          	addiw	a1,a1,250
   11470:	00359593          	slli	a1,a1,0x3
   11474:	07c6861b          	addiw	a2,a3,124
   11478:	e75ff06f          	j	112ec <_free_r+0x168>
   1147c:	7f000593          	li	a1,2032
   11480:	07e00613          	li	a2,126
   11484:	e69ff06f          	j	112ec <_free_r+0x168>

0000000000011488 <_malloc_r>:
   11488:	fa010113          	addi	sp,sp,-96
   1148c:	04813823          	sd	s0,80(sp)
   11490:	04113c23          	sd	ra,88(sp)
   11494:	01758713          	addi	a4,a1,23
   11498:	02e00793          	li	a5,46
   1149c:	00050413          	mv	s0,a0
   114a0:	08e7ee63          	bltu	a5,a4,1153c <_malloc_r+0xb4>
   114a4:	02000713          	li	a4,32
   114a8:	06b76c63          	bltu	a4,a1,11520 <_malloc_r+0x98>
   114ac:	0c1000ef          	jal	11d6c <__malloc_lock>
   114b0:	02000713          	li	a4,32
   114b4:	05000693          	li	a3,80
   114b8:	00400893          	li	a7,4
   114bc:	00013837          	lui	a6,0x13
   114c0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   114c4:	00d806b3          	add	a3,a6,a3
   114c8:	0086b783          	ld	a5,8(a3)
   114cc:	ff068613          	addi	a2,a3,-16
   114d0:	48c78063          	beq	a5,a2,11950 <_malloc_r+0x4c8>
   114d4:	0087b703          	ld	a4,8(a5)
   114d8:	0187b603          	ld	a2,24(a5)
   114dc:	0107b583          	ld	a1,16(a5)
   114e0:	ffc77713          	andi	a4,a4,-4
   114e4:	00e78733          	add	a4,a5,a4
   114e8:	00873683          	ld	a3,8(a4)
   114ec:	00c5bc23          	sd	a2,24(a1)
   114f0:	00b63823          	sd	a1,16(a2)
   114f4:	0016e693          	ori	a3,a3,1
   114f8:	00040513          	mv	a0,s0
   114fc:	00d73423          	sd	a3,8(a4)
   11500:	00f13423          	sd	a5,8(sp)
   11504:	06d000ef          	jal	11d70 <__malloc_unlock>
   11508:	00813783          	ld	a5,8(sp)
   1150c:	05813083          	ld	ra,88(sp)
   11510:	05013403          	ld	s0,80(sp)
   11514:	01078513          	addi	a0,a5,16
   11518:	06010113          	addi	sp,sp,96
   1151c:	00008067          	ret
   11520:	00c00793          	li	a5,12
   11524:	00f42023          	sw	a5,0(s0)
   11528:	00000513          	li	a0,0
   1152c:	05813083          	ld	ra,88(sp)
   11530:	05013403          	ld	s0,80(sp)
   11534:	06010113          	addi	sp,sp,96
   11538:	00008067          	ret
   1153c:	00100793          	li	a5,1
   11540:	ff077713          	andi	a4,a4,-16
   11544:	01f79793          	slli	a5,a5,0x1f
   11548:	fcf77ce3          	bgeu	a4,a5,11520 <_malloc_r+0x98>
   1154c:	fcb76ae3          	bltu	a4,a1,11520 <_malloc_r+0x98>
   11550:	00e13423          	sd	a4,8(sp)
   11554:	019000ef          	jal	11d6c <__malloc_lock>
   11558:	00813703          	ld	a4,8(sp)
   1155c:	1f700793          	li	a5,503
   11560:	4ee7fa63          	bgeu	a5,a4,11a54 <_malloc_r+0x5cc>
   11564:	00975793          	srli	a5,a4,0x9
   11568:	18078a63          	beqz	a5,116fc <_malloc_r+0x274>
   1156c:	00400693          	li	a3,4
   11570:	44f6ea63          	bltu	a3,a5,119c4 <_malloc_r+0x53c>
   11574:	00675793          	srli	a5,a4,0x6
   11578:	0397889b          	addiw	a7,a5,57
   1157c:	0018951b          	slliw	a0,a7,0x1
   11580:	03878e1b          	addiw	t3,a5,56
   11584:	00351513          	slli	a0,a0,0x3
   11588:	00013837          	lui	a6,0x13
   1158c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11590:	00a80533          	add	a0,a6,a0
   11594:	00853783          	ld	a5,8(a0)
   11598:	ff050513          	addi	a0,a0,-16
   1159c:	02f50863          	beq	a0,a5,115cc <_malloc_r+0x144>
   115a0:	01f00313          	li	t1,31
   115a4:	0140006f          	j	115b8 <_malloc_r+0x130>
   115a8:	0187b583          	ld	a1,24(a5)
   115ac:	36065263          	bgez	a2,11910 <_malloc_r+0x488>
   115b0:	00b50e63          	beq	a0,a1,115cc <_malloc_r+0x144>
   115b4:	00058793          	mv	a5,a1
   115b8:	0087b683          	ld	a3,8(a5)
   115bc:	ffc6f693          	andi	a3,a3,-4
   115c0:	40e68633          	sub	a2,a3,a4
   115c4:	fec352e3          	bge	t1,a2,115a8 <_malloc_r+0x120>
   115c8:	000e0893          	mv	a7,t3
   115cc:	02083783          	ld	a5,32(a6)
   115d0:	00013e37          	lui	t3,0x13
   115d4:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   115d8:	2fc78a63          	beq	a5,t3,118cc <_malloc_r+0x444>
   115dc:	0087b303          	ld	t1,8(a5)
   115e0:	01f00613          	li	a2,31
   115e4:	ffc37313          	andi	t1,t1,-4
   115e8:	40e306b3          	sub	a3,t1,a4
   115ec:	4ad64463          	blt	a2,a3,11a94 <_malloc_r+0x60c>
   115f0:	03c83423          	sd	t3,40(a6)
   115f4:	03c83023          	sd	t3,32(a6)
   115f8:	4606da63          	bgez	a3,11a6c <_malloc_r+0x5e4>
   115fc:	1ff00693          	li	a3,511
   11600:	00883583          	ld	a1,8(a6)
   11604:	3466ee63          	bltu	a3,t1,11960 <_malloc_r+0x4d8>
   11608:	00335313          	srli	t1,t1,0x3
   1160c:	00131693          	slli	a3,t1,0x1
   11610:	0026869b          	addiw	a3,a3,2
   11614:	00369693          	slli	a3,a3,0x3
   11618:	00d806b3          	add	a3,a6,a3
   1161c:	0006b503          	ld	a0,0(a3)
   11620:	4023531b          	sraiw	t1,t1,0x2
   11624:	00100613          	li	a2,1
   11628:	00661633          	sll	a2,a2,t1
   1162c:	00c5e5b3          	or	a1,a1,a2
   11630:	ff068613          	addi	a2,a3,-16
   11634:	00a7b823          	sd	a0,16(a5)
   11638:	00c7bc23          	sd	a2,24(a5)
   1163c:	00b83423          	sd	a1,8(a6)
   11640:	00f6b023          	sd	a5,0(a3)
   11644:	00f53c23          	sd	a5,24(a0)
   11648:	4028d79b          	sraiw	a5,a7,0x2
   1164c:	00100513          	li	a0,1
   11650:	00f51533          	sll	a0,a0,a5
   11654:	0aa5ec63          	bltu	a1,a0,1170c <_malloc_r+0x284>
   11658:	00b577b3          	and	a5,a0,a1
   1165c:	02079463          	bnez	a5,11684 <_malloc_r+0x1fc>
   11660:	00151513          	slli	a0,a0,0x1
   11664:	ffc8f893          	andi	a7,a7,-4
   11668:	00b577b3          	and	a5,a0,a1
   1166c:	0048889b          	addiw	a7,a7,4
   11670:	00079a63          	bnez	a5,11684 <_malloc_r+0x1fc>
   11674:	00151513          	slli	a0,a0,0x1
   11678:	00b577b3          	and	a5,a0,a1
   1167c:	0048889b          	addiw	a7,a7,4
   11680:	fe078ae3          	beqz	a5,11674 <_malloc_r+0x1ec>
   11684:	01f00e93          	li	t4,31
   11688:	00189f13          	slli	t5,a7,0x1
   1168c:	002f0f1b          	addiw	t5,t5,2
   11690:	003f1f13          	slli	t5,t5,0x3
   11694:	ff0f0f13          	addi	t5,t5,-16
   11698:	01e80f33          	add	t5,a6,t5
   1169c:	000f0313          	mv	t1,t5
   116a0:	01833683          	ld	a3,24(t1)
   116a4:	00088f93          	mv	t6,a7
   116a8:	34d30263          	beq	t1,a3,119ec <_malloc_r+0x564>
   116ac:	0086b603          	ld	a2,8(a3)
   116b0:	00068793          	mv	a5,a3
   116b4:	0186b683          	ld	a3,24(a3)
   116b8:	ffc67613          	andi	a2,a2,-4
   116bc:	40e605b3          	sub	a1,a2,a4
   116c0:	34bec263          	blt	t4,a1,11a04 <_malloc_r+0x57c>
   116c4:	fe05c2e3          	bltz	a1,116a8 <_malloc_r+0x220>
   116c8:	00c78633          	add	a2,a5,a2
   116cc:	00863703          	ld	a4,8(a2)
   116d0:	0107b583          	ld	a1,16(a5)
   116d4:	00040513          	mv	a0,s0
   116d8:	00176713          	ori	a4,a4,1
   116dc:	00e63423          	sd	a4,8(a2)
   116e0:	00d5bc23          	sd	a3,24(a1)
   116e4:	00b6b823          	sd	a1,16(a3)
   116e8:	00f13423          	sd	a5,8(sp)
   116ec:	684000ef          	jal	11d70 <__malloc_unlock>
   116f0:	00813783          	ld	a5,8(sp)
   116f4:	01078513          	addi	a0,a5,16
   116f8:	e35ff06f          	j	1152c <_malloc_r+0xa4>
   116fc:	40000513          	li	a0,1024
   11700:	04000893          	li	a7,64
   11704:	03f00e13          	li	t3,63
   11708:	e81ff06f          	j	11588 <_malloc_r+0x100>
   1170c:	01083783          	ld	a5,16(a6)
   11710:	0087b683          	ld	a3,8(a5)
   11714:	ffc6f893          	andi	a7,a3,-4
   11718:	40e88633          	sub	a2,a7,a4
   1171c:	00e8e663          	bltu	a7,a4,11728 <_malloc_r+0x2a0>
   11720:	02062693          	slti	a3,a2,32
   11724:	1a068863          	beqz	a3,118d4 <_malloc_r+0x44c>
   11728:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   1172c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11730:	fff00693          	li	a3,-1
   11734:	00b705b3          	add	a1,a4,a1
   11738:	44d60663          	beq	a2,a3,11b84 <_malloc_r+0x6fc>
   1173c:	000016b7          	lui	a3,0x1
   11740:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11744:	00d585b3          	add	a1,a1,a3
   11748:	fffff6b7          	lui	a3,0xfffff
   1174c:	00d5f5b3          	and	a1,a1,a3
   11750:	00040513          	mv	a0,s0
   11754:	03013423          	sd	a6,40(sp)
   11758:	02f13023          	sd	a5,32(sp)
   1175c:	00e13c23          	sd	a4,24(sp)
   11760:	01113823          	sd	a7,16(sp)
   11764:	00b13423          	sd	a1,8(sp)
   11768:	271000ef          	jal	121d8 <_sbrk_r>
   1176c:	fff00693          	li	a3,-1
   11770:	00813583          	ld	a1,8(sp)
   11774:	01013883          	ld	a7,16(sp)
   11778:	01813703          	ld	a4,24(sp)
   1177c:	02013783          	ld	a5,32(sp)
   11780:	02813803          	ld	a6,40(sp)
   11784:	00050313          	mv	t1,a0
   11788:	36d50663          	beq	a0,a3,11af4 <_malloc_r+0x66c>
   1178c:	011786b3          	add	a3,a5,a7
   11790:	36d56063          	bltu	a0,a3,11af0 <_malloc_r+0x668>
   11794:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11798:	000e2603          	lw	a2,0(t3)
   1179c:	00b6063b          	addw	a2,a2,a1
   117a0:	00ce2023          	sw	a2,0(t3)
   117a4:	00060513          	mv	a0,a2
   117a8:	4a668c63          	beq	a3,t1,11c60 <_malloc_r+0x7d8>
   117ac:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   117b0:	fff00613          	li	a2,-1
   117b4:	4ccf0463          	beq	t5,a2,11c7c <_malloc_r+0x7f4>
   117b8:	40d306b3          	sub	a3,t1,a3
   117bc:	00a686bb          	addw	a3,a3,a0
   117c0:	00de2023          	sw	a3,0(t3)
   117c4:	00f37e93          	andi	t4,t1,15
   117c8:	3c0e8e63          	beqz	t4,11ba4 <_malloc_r+0x71c>
   117cc:	ff037313          	andi	t1,t1,-16
   117d0:	000016b7          	lui	a3,0x1
   117d4:	01030313          	addi	t1,t1,16
   117d8:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   117dc:	00b30633          	add	a2,t1,a1
   117e0:	41d685b3          	sub	a1,a3,t4
   117e4:	40c585b3          	sub	a1,a1,a2
   117e8:	03459593          	slli	a1,a1,0x34
   117ec:	0345d593          	srli	a1,a1,0x34
   117f0:	00040513          	mv	a0,s0
   117f4:	05c13023          	sd	t3,64(sp)
   117f8:	03013c23          	sd	a6,56(sp)
   117fc:	02f13823          	sd	a5,48(sp)
   11800:	02e13423          	sd	a4,40(sp)
   11804:	03113023          	sd	a7,32(sp)
   11808:	00613c23          	sd	t1,24(sp)
   1180c:	01d13823          	sd	t4,16(sp)
   11810:	00c13423          	sd	a2,8(sp)
   11814:	04b13423          	sd	a1,72(sp)
   11818:	1c1000ef          	jal	121d8 <_sbrk_r>
   1181c:	00050693          	mv	a3,a0
   11820:	fff00513          	li	a0,-1
   11824:	00813603          	ld	a2,8(sp)
   11828:	01013e83          	ld	t4,16(sp)
   1182c:	01813303          	ld	t1,24(sp)
   11830:	02013883          	ld	a7,32(sp)
   11834:	02813703          	ld	a4,40(sp)
   11838:	03013783          	ld	a5,48(sp)
   1183c:	03813803          	ld	a6,56(sp)
   11840:	04013e03          	ld	t3,64(sp)
   11844:	48a68663          	beq	a3,a0,11cd0 <_malloc_r+0x848>
   11848:	04813583          	ld	a1,72(sp)
   1184c:	0005851b          	sext.w	a0,a1
   11850:	000e2603          	lw	a2,0(t3)
   11854:	406686b3          	sub	a3,a3,t1
   11858:	00b686b3          	add	a3,a3,a1
   1185c:	0016e693          	ori	a3,a3,1
   11860:	00683823          	sd	t1,16(a6)
   11864:	00a6063b          	addw	a2,a2,a0
   11868:	00d33423          	sd	a3,8(t1)
   1186c:	00ce2023          	sw	a2,0(t3)
   11870:	03078e63          	beq	a5,a6,118ac <_malloc_r+0x424>
   11874:	01f00513          	li	a0,31
   11878:	41157663          	bgeu	a0,a7,11c84 <_malloc_r+0x7fc>
   1187c:	0087b583          	ld	a1,8(a5)
   11880:	fe888693          	addi	a3,a7,-24
   11884:	ff06f693          	andi	a3,a3,-16
   11888:	0015f593          	andi	a1,a1,1
   1188c:	00d5e5b3          	or	a1,a1,a3
   11890:	00b7b423          	sd	a1,8(a5)
   11894:	00900893          	li	a7,9
   11898:	00d785b3          	add	a1,a5,a3
   1189c:	0115b423          	sd	a7,8(a1)
   118a0:	0115b823          	sd	a7,16(a1)
   118a4:	44d56863          	bltu	a0,a3,11cf4 <_malloc_r+0x86c>
   118a8:	00833683          	ld	a3,8(t1)
   118ac:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   118b0:	00c5f463          	bgeu	a1,a2,118b8 <_malloc_r+0x430>
   118b4:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   118b8:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   118bc:	00c5f463          	bgeu	a1,a2,118c4 <_malloc_r+0x43c>
   118c0:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   118c4:	00030793          	mv	a5,t1
   118c8:	2340006f          	j	11afc <_malloc_r+0x674>
   118cc:	00883583          	ld	a1,8(a6)
   118d0:	d79ff06f          	j	11648 <_malloc_r+0x1c0>
   118d4:	00176693          	ori	a3,a4,1
   118d8:	00d7b423          	sd	a3,8(a5)
   118dc:	00e78733          	add	a4,a5,a4
   118e0:	00166613          	ori	a2,a2,1
   118e4:	00e83823          	sd	a4,16(a6)
   118e8:	00040513          	mv	a0,s0
   118ec:	00c73423          	sd	a2,8(a4)
   118f0:	00f13423          	sd	a5,8(sp)
   118f4:	47c000ef          	jal	11d70 <__malloc_unlock>
   118f8:	00813783          	ld	a5,8(sp)
   118fc:	05813083          	ld	ra,88(sp)
   11900:	05013403          	ld	s0,80(sp)
   11904:	01078513          	addi	a0,a5,16
   11908:	06010113          	addi	sp,sp,96
   1190c:	00008067          	ret
   11910:	0107b603          	ld	a2,16(a5)
   11914:	00d786b3          	add	a3,a5,a3
   11918:	0086b703          	ld	a4,8(a3)
   1191c:	00b63c23          	sd	a1,24(a2)
   11920:	00c5b823          	sd	a2,16(a1)
   11924:	00176713          	ori	a4,a4,1
   11928:	00040513          	mv	a0,s0
   1192c:	00e6b423          	sd	a4,8(a3)
   11930:	00f13423          	sd	a5,8(sp)
   11934:	43c000ef          	jal	11d70 <__malloc_unlock>
   11938:	00813783          	ld	a5,8(sp)
   1193c:	05813083          	ld	ra,88(sp)
   11940:	05013403          	ld	s0,80(sp)
   11944:	01078513          	addi	a0,a5,16
   11948:	06010113          	addi	sp,sp,96
   1194c:	00008067          	ret
   11950:	0186b783          	ld	a5,24(a3)
   11954:	0028889b          	addiw	a7,a7,2
   11958:	c6f68ae3          	beq	a3,a5,115cc <_malloc_r+0x144>
   1195c:	b79ff06f          	j	114d4 <_malloc_r+0x4c>
   11960:	00935693          	srli	a3,t1,0x9
   11964:	00400613          	li	a2,4
   11968:	16d67863          	bgeu	a2,a3,11ad8 <_malloc_r+0x650>
   1196c:	01400613          	li	a2,20
   11970:	28d66e63          	bltu	a2,a3,11c0c <_malloc_r+0x784>
   11974:	00169513          	slli	a0,a3,0x1
   11978:	0b85051b          	addiw	a0,a0,184
   1197c:	00351513          	slli	a0,a0,0x3
   11980:	05b6861b          	addiw	a2,a3,91
   11984:	00a80533          	add	a0,a6,a0
   11988:	00053683          	ld	a3,0(a0)
   1198c:	ff050513          	addi	a0,a0,-16
   11990:	00d51863          	bne	a0,a3,119a0 <_malloc_r+0x518>
   11994:	1f80006f          	j	11b8c <_malloc_r+0x704>
   11998:	0106b683          	ld	a3,16(a3)
   1199c:	00d50863          	beq	a0,a3,119ac <_malloc_r+0x524>
   119a0:	0086b603          	ld	a2,8(a3)
   119a4:	ffc67613          	andi	a2,a2,-4
   119a8:	fec368e3          	bltu	t1,a2,11998 <_malloc_r+0x510>
   119ac:	0186b503          	ld	a0,24(a3)
   119b0:	00a7bc23          	sd	a0,24(a5)
   119b4:	00d7b823          	sd	a3,16(a5)
   119b8:	00f53823          	sd	a5,16(a0)
   119bc:	00f6bc23          	sd	a5,24(a3)
   119c0:	c89ff06f          	j	11648 <_malloc_r+0x1c0>
   119c4:	01400693          	li	a3,20
   119c8:	14f6fa63          	bgeu	a3,a5,11b1c <_malloc_r+0x694>
   119cc:	05400693          	li	a3,84
   119d0:	24f6ee63          	bltu	a3,a5,11c2c <_malloc_r+0x7a4>
   119d4:	00c75793          	srli	a5,a4,0xc
   119d8:	06f7889b          	addiw	a7,a5,111
   119dc:	0018951b          	slliw	a0,a7,0x1
   119e0:	06e78e1b          	addiw	t3,a5,110
   119e4:	00351513          	slli	a0,a0,0x3
   119e8:	ba1ff06f          	j	11588 <_malloc_r+0x100>
   119ec:	001f8f9b          	addiw	t6,t6,1
   119f0:	003ff793          	andi	a5,t6,3
   119f4:	01030313          	addi	t1,t1,16
   119f8:	14078263          	beqz	a5,11b3c <_malloc_r+0x6b4>
   119fc:	01833683          	ld	a3,24(t1)
   11a00:	ca9ff06f          	j	116a8 <_malloc_r+0x220>
   11a04:	0107b503          	ld	a0,16(a5)
   11a08:	00176893          	ori	a7,a4,1
   11a0c:	0117b423          	sd	a7,8(a5)
   11a10:	00d53c23          	sd	a3,24(a0)
   11a14:	00a6b823          	sd	a0,16(a3)
   11a18:	00e78733          	add	a4,a5,a4
   11a1c:	02e83423          	sd	a4,40(a6)
   11a20:	02e83023          	sd	a4,32(a6)
   11a24:	0015e693          	ori	a3,a1,1
   11a28:	00c78633          	add	a2,a5,a2
   11a2c:	01c73c23          	sd	t3,24(a4)
   11a30:	01c73823          	sd	t3,16(a4)
   11a34:	00d73423          	sd	a3,8(a4)
   11a38:	00040513          	mv	a0,s0
   11a3c:	00b63023          	sd	a1,0(a2)
   11a40:	00f13423          	sd	a5,8(sp)
   11a44:	32c000ef          	jal	11d70 <__malloc_unlock>
   11a48:	00813783          	ld	a5,8(sp)
   11a4c:	01078513          	addi	a0,a5,16
   11a50:	addff06f          	j	1152c <_malloc_r+0xa4>
   11a54:	00375893          	srli	a7,a4,0x3
   11a58:	00189693          	slli	a3,a7,0x1
   11a5c:	0026869b          	addiw	a3,a3,2
   11a60:	00369693          	slli	a3,a3,0x3
   11a64:	0008889b          	sext.w	a7,a7
   11a68:	a55ff06f          	j	114bc <_malloc_r+0x34>
   11a6c:	00678333          	add	t1,a5,t1
   11a70:	00833703          	ld	a4,8(t1)
   11a74:	00040513          	mv	a0,s0
   11a78:	00f13423          	sd	a5,8(sp)
   11a7c:	00176713          	ori	a4,a4,1
   11a80:	00e33423          	sd	a4,8(t1)
   11a84:	2ec000ef          	jal	11d70 <__malloc_unlock>
   11a88:	00813783          	ld	a5,8(sp)
   11a8c:	01078513          	addi	a0,a5,16
   11a90:	a9dff06f          	j	1152c <_malloc_r+0xa4>
   11a94:	00176613          	ori	a2,a4,1
   11a98:	00c7b423          	sd	a2,8(a5)
   11a9c:	00e78733          	add	a4,a5,a4
   11aa0:	02e83423          	sd	a4,40(a6)
   11aa4:	02e83023          	sd	a4,32(a6)
   11aa8:	0016e613          	ori	a2,a3,1
   11aac:	00678333          	add	t1,a5,t1
   11ab0:	01c73c23          	sd	t3,24(a4)
   11ab4:	01c73823          	sd	t3,16(a4)
   11ab8:	00c73423          	sd	a2,8(a4)
   11abc:	00040513          	mv	a0,s0
   11ac0:	00d33023          	sd	a3,0(t1)
   11ac4:	00f13423          	sd	a5,8(sp)
   11ac8:	2a8000ef          	jal	11d70 <__malloc_unlock>
   11acc:	00813783          	ld	a5,8(sp)
   11ad0:	01078513          	addi	a0,a5,16
   11ad4:	a59ff06f          	j	1152c <_malloc_r+0xa4>
   11ad8:	00635693          	srli	a3,t1,0x6
   11adc:	00169513          	slli	a0,a3,0x1
   11ae0:	0725051b          	addiw	a0,a0,114
   11ae4:	00351513          	slli	a0,a0,0x3
   11ae8:	0386861b          	addiw	a2,a3,56
   11aec:	e99ff06f          	j	11984 <_malloc_r+0x4fc>
   11af0:	15078e63          	beq	a5,a6,11c4c <_malloc_r+0x7c4>
   11af4:	01083783          	ld	a5,16(a6)
   11af8:	0087b683          	ld	a3,8(a5)
   11afc:	ffc6f693          	andi	a3,a3,-4
   11b00:	40e68633          	sub	a2,a3,a4
   11b04:	00e6e663          	bltu	a3,a4,11b10 <_malloc_r+0x688>
   11b08:	02062693          	slti	a3,a2,32
   11b0c:	dc0684e3          	beqz	a3,118d4 <_malloc_r+0x44c>
   11b10:	00040513          	mv	a0,s0
   11b14:	25c000ef          	jal	11d70 <__malloc_unlock>
   11b18:	a11ff06f          	j	11528 <_malloc_r+0xa0>
   11b1c:	05c7889b          	addiw	a7,a5,92
   11b20:	0018951b          	slliw	a0,a7,0x1
   11b24:	05b78e1b          	addiw	t3,a5,91
   11b28:	00351513          	slli	a0,a0,0x3
   11b2c:	a5dff06f          	j	11588 <_malloc_r+0x100>
   11b30:	010f3783          	ld	a5,16(t5)
   11b34:	fff8889b          	addiw	a7,a7,-1
   11b38:	23e79663          	bne	a5,t5,11d64 <_malloc_r+0x8dc>
   11b3c:	0038f793          	andi	a5,a7,3
   11b40:	ff0f0f13          	addi	t5,t5,-16
   11b44:	fe0796e3          	bnez	a5,11b30 <_malloc_r+0x6a8>
   11b48:	00883683          	ld	a3,8(a6)
   11b4c:	fff54793          	not	a5,a0
   11b50:	00d7f7b3          	and	a5,a5,a3
   11b54:	00f83423          	sd	a5,8(a6)
   11b58:	00151513          	slli	a0,a0,0x1
   11b5c:	fff50693          	addi	a3,a0,-1
   11b60:	baf6f6e3          	bgeu	a3,a5,1170c <_malloc_r+0x284>
   11b64:	00f576b3          	and	a3,a0,a5
   11b68:	00069a63          	bnez	a3,11b7c <_malloc_r+0x6f4>
   11b6c:	00151513          	slli	a0,a0,0x1
   11b70:	00f576b3          	and	a3,a0,a5
   11b74:	004f8f9b          	addiw	t6,t6,4
   11b78:	fe068ae3          	beqz	a3,11b6c <_malloc_r+0x6e4>
   11b7c:	000f8893          	mv	a7,t6
   11b80:	b09ff06f          	j	11688 <_malloc_r+0x200>
   11b84:	02058593          	addi	a1,a1,32
   11b88:	bc9ff06f          	j	11750 <_malloc_r+0x2c8>
   11b8c:	4026561b          	sraiw	a2,a2,0x2
   11b90:	00100313          	li	t1,1
   11b94:	00c31633          	sll	a2,t1,a2
   11b98:	00c5e5b3          	or	a1,a1,a2
   11b9c:	00b83423          	sd	a1,8(a6)
   11ba0:	e11ff06f          	j	119b0 <_malloc_r+0x528>
   11ba4:	00b30633          	add	a2,t1,a1
   11ba8:	40c005b3          	neg	a1,a2
   11bac:	03459593          	slli	a1,a1,0x34
   11bb0:	0345d593          	srli	a1,a1,0x34
   11bb4:	00040513          	mv	a0,s0
   11bb8:	03c13c23          	sd	t3,56(sp)
   11bbc:	03013823          	sd	a6,48(sp)
   11bc0:	02f13423          	sd	a5,40(sp)
   11bc4:	02e13023          	sd	a4,32(sp)
   11bc8:	01113c23          	sd	a7,24(sp)
   11bcc:	00613823          	sd	t1,16(sp)
   11bd0:	00c13423          	sd	a2,8(sp)
   11bd4:	04b13023          	sd	a1,64(sp)
   11bd8:	600000ef          	jal	121d8 <_sbrk_r>
   11bdc:	00050693          	mv	a3,a0
   11be0:	fff00513          	li	a0,-1
   11be4:	01013303          	ld	t1,16(sp)
   11be8:	01813883          	ld	a7,24(sp)
   11bec:	02013703          	ld	a4,32(sp)
   11bf0:	02813783          	ld	a5,40(sp)
   11bf4:	03013803          	ld	a6,48(sp)
   11bf8:	03813e03          	ld	t3,56(sp)
   11bfc:	0ea68463          	beq	a3,a0,11ce4 <_malloc_r+0x85c>
   11c00:	04013583          	ld	a1,64(sp)
   11c04:	0005851b          	sext.w	a0,a1
   11c08:	c49ff06f          	j	11850 <_malloc_r+0x3c8>
   11c0c:	05400613          	li	a2,84
   11c10:	08d66063          	bltu	a2,a3,11c90 <_malloc_r+0x808>
   11c14:	00c35693          	srli	a3,t1,0xc
   11c18:	00169513          	slli	a0,a3,0x1
   11c1c:	0de5051b          	addiw	a0,a0,222
   11c20:	00351513          	slli	a0,a0,0x3
   11c24:	06e6861b          	addiw	a2,a3,110
   11c28:	d5dff06f          	j	11984 <_malloc_r+0x4fc>
   11c2c:	15400693          	li	a3,340
   11c30:	08f6e063          	bltu	a3,a5,11cb0 <_malloc_r+0x828>
   11c34:	00f75793          	srli	a5,a4,0xf
   11c38:	0787889b          	addiw	a7,a5,120
   11c3c:	0018951b          	slliw	a0,a7,0x1
   11c40:	07778e1b          	addiw	t3,a5,119
   11c44:	00351513          	slli	a0,a0,0x3
   11c48:	941ff06f          	j	11588 <_malloc_r+0x100>
   11c4c:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11c50:	000e2503          	lw	a0,0(t3)
   11c54:	00b5053b          	addw	a0,a0,a1
   11c58:	00ae2023          	sw	a0,0(t3)
   11c5c:	b51ff06f          	j	117ac <_malloc_r+0x324>
   11c60:	03431f13          	slli	t5,t1,0x34
   11c64:	b40f14e3          	bnez	t5,117ac <_malloc_r+0x324>
   11c68:	01083303          	ld	t1,16(a6)
   11c6c:	00b885b3          	add	a1,a7,a1
   11c70:	0015e693          	ori	a3,a1,1
   11c74:	00d33423          	sd	a3,8(t1)
   11c78:	c35ff06f          	j	118ac <_malloc_r+0x424>
   11c7c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11c80:	b45ff06f          	j	117c4 <_malloc_r+0x33c>
   11c84:	00100793          	li	a5,1
   11c88:	00f33423          	sd	a5,8(t1)
   11c8c:	e85ff06f          	j	11b10 <_malloc_r+0x688>
   11c90:	15400613          	li	a2,340
   11c94:	08d66a63          	bltu	a2,a3,11d28 <_malloc_r+0x8a0>
   11c98:	00f35693          	srli	a3,t1,0xf
   11c9c:	00169513          	slli	a0,a3,0x1
   11ca0:	0f05051b          	addiw	a0,a0,240
   11ca4:	00351513          	slli	a0,a0,0x3
   11ca8:	0776861b          	addiw	a2,a3,119
   11cac:	cd9ff06f          	j	11984 <_malloc_r+0x4fc>
   11cb0:	55400693          	li	a3,1364
   11cb4:	08f6ea63          	bltu	a3,a5,11d48 <_malloc_r+0x8c0>
   11cb8:	01275793          	srli	a5,a4,0x12
   11cbc:	07d7889b          	addiw	a7,a5,125
   11cc0:	0018951b          	slliw	a0,a7,0x1
   11cc4:	07c78e1b          	addiw	t3,a5,124
   11cc8:	00351513          	slli	a0,a0,0x3
   11ccc:	8bdff06f          	j	11588 <_malloc_r+0x100>
   11cd0:	ff0e8e93          	addi	t4,t4,-16
   11cd4:	01d606b3          	add	a3,a2,t4
   11cd8:	00000513          	li	a0,0
   11cdc:	00000593          	li	a1,0
   11ce0:	b71ff06f          	j	11850 <_malloc_r+0x3c8>
   11ce4:	00813683          	ld	a3,8(sp)
   11ce8:	00000593          	li	a1,0
   11cec:	00000513          	li	a0,0
   11cf0:	b61ff06f          	j	11850 <_malloc_r+0x3c8>
   11cf4:	01078593          	addi	a1,a5,16
   11cf8:	00040513          	mv	a0,s0
   11cfc:	01c13c23          	sd	t3,24(sp)
   11d00:	01013823          	sd	a6,16(sp)
   11d04:	00e13423          	sd	a4,8(sp)
   11d08:	c7cff0ef          	jal	11184 <_free_r>
   11d0c:	01013803          	ld	a6,16(sp)
   11d10:	01813e03          	ld	t3,24(sp)
   11d14:	00813703          	ld	a4,8(sp)
   11d18:	01083303          	ld	t1,16(a6)
   11d1c:	000e2603          	lw	a2,0(t3)
   11d20:	00833683          	ld	a3,8(t1)
   11d24:	b89ff06f          	j	118ac <_malloc_r+0x424>
   11d28:	55400613          	li	a2,1364
   11d2c:	02d66663          	bltu	a2,a3,11d58 <_malloc_r+0x8d0>
   11d30:	01235693          	srli	a3,t1,0x12
   11d34:	00169513          	slli	a0,a3,0x1
   11d38:	0fa5051b          	addiw	a0,a0,250
   11d3c:	00351513          	slli	a0,a0,0x3
   11d40:	07c6861b          	addiw	a2,a3,124
   11d44:	c41ff06f          	j	11984 <_malloc_r+0x4fc>
   11d48:	7f000513          	li	a0,2032
   11d4c:	07f00893          	li	a7,127
   11d50:	07e00e13          	li	t3,126
   11d54:	835ff06f          	j	11588 <_malloc_r+0x100>
   11d58:	7f000513          	li	a0,2032
   11d5c:	07e00613          	li	a2,126
   11d60:	c25ff06f          	j	11984 <_malloc_r+0x4fc>
   11d64:	00883783          	ld	a5,8(a6)
   11d68:	df1ff06f          	j	11b58 <_malloc_r+0x6d0>

0000000000011d6c <__malloc_lock>:
   11d6c:	00008067          	ret

0000000000011d70 <__malloc_unlock>:
   11d70:	00008067          	ret

0000000000011d74 <_fclose_r>:
   11d74:	fe010113          	addi	sp,sp,-32
   11d78:	00113c23          	sd	ra,24(sp)
   11d7c:	01213023          	sd	s2,0(sp)
   11d80:	02058863          	beqz	a1,11db0 <_fclose_r+0x3c>
   11d84:	00813823          	sd	s0,16(sp)
   11d88:	00913423          	sd	s1,8(sp)
   11d8c:	00058413          	mv	s0,a1
   11d90:	00050493          	mv	s1,a0
   11d94:	00050663          	beqz	a0,11da0 <_fclose_r+0x2c>
   11d98:	04853783          	ld	a5,72(a0)
   11d9c:	0c078c63          	beqz	a5,11e74 <_fclose_r+0x100>
   11da0:	01041783          	lh	a5,16(s0)
   11da4:	02079263          	bnez	a5,11dc8 <_fclose_r+0x54>
   11da8:	01013403          	ld	s0,16(sp)
   11dac:	00813483          	ld	s1,8(sp)
   11db0:	01813083          	ld	ra,24(sp)
   11db4:	00000913          	li	s2,0
   11db8:	00090513          	mv	a0,s2
   11dbc:	00013903          	ld	s2,0(sp)
   11dc0:	02010113          	addi	sp,sp,32
   11dc4:	00008067          	ret
   11dc8:	00040593          	mv	a1,s0
   11dcc:	00048513          	mv	a0,s1
   11dd0:	0b8000ef          	jal	11e88 <__sflush_r>
   11dd4:	05043783          	ld	a5,80(s0)
   11dd8:	00050913          	mv	s2,a0
   11ddc:	00078a63          	beqz	a5,11df0 <_fclose_r+0x7c>
   11de0:	03043583          	ld	a1,48(s0)
   11de4:	00048513          	mv	a0,s1
   11de8:	000780e7          	jalr	a5
   11dec:	06054463          	bltz	a0,11e54 <_fclose_r+0xe0>
   11df0:	01045783          	lhu	a5,16(s0)
   11df4:	0807f793          	andi	a5,a5,128
   11df8:	06079663          	bnez	a5,11e64 <_fclose_r+0xf0>
   11dfc:	05843583          	ld	a1,88(s0)
   11e00:	00058c63          	beqz	a1,11e18 <_fclose_r+0xa4>
   11e04:	07440793          	addi	a5,s0,116
   11e08:	00f58663          	beq	a1,a5,11e14 <_fclose_r+0xa0>
   11e0c:	00048513          	mv	a0,s1
   11e10:	b74ff0ef          	jal	11184 <_free_r>
   11e14:	04043c23          	sd	zero,88(s0)
   11e18:	07843583          	ld	a1,120(s0)
   11e1c:	00058863          	beqz	a1,11e2c <_fclose_r+0xb8>
   11e20:	00048513          	mv	a0,s1
   11e24:	b60ff0ef          	jal	11184 <_free_r>
   11e28:	06043c23          	sd	zero,120(s0)
   11e2c:	aa1fe0ef          	jal	108cc <__sfp_lock_acquire>
   11e30:	00041823          	sh	zero,16(s0)
   11e34:	a9dfe0ef          	jal	108d0 <__sfp_lock_release>
   11e38:	01813083          	ld	ra,24(sp)
   11e3c:	01013403          	ld	s0,16(sp)
   11e40:	00813483          	ld	s1,8(sp)
   11e44:	00090513          	mv	a0,s2
   11e48:	00013903          	ld	s2,0(sp)
   11e4c:	02010113          	addi	sp,sp,32
   11e50:	00008067          	ret
   11e54:	01045783          	lhu	a5,16(s0)
   11e58:	fff00913          	li	s2,-1
   11e5c:	0807f793          	andi	a5,a5,128
   11e60:	f8078ee3          	beqz	a5,11dfc <_fclose_r+0x88>
   11e64:	01843583          	ld	a1,24(s0)
   11e68:	00048513          	mv	a0,s1
   11e6c:	b18ff0ef          	jal	11184 <_free_r>
   11e70:	f8dff06f          	j	11dfc <_fclose_r+0x88>
   11e74:	a35fe0ef          	jal	108a8 <__sinit>
   11e78:	f29ff06f          	j	11da0 <_fclose_r+0x2c>

0000000000011e7c <fclose>:
   11e7c:	00050593          	mv	a1,a0
   11e80:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e84:	ef1ff06f          	j	11d74 <_fclose_r>

0000000000011e88 <__sflush_r>:
   11e88:	01059703          	lh	a4,16(a1)
   11e8c:	fd010113          	addi	sp,sp,-48
   11e90:	02813023          	sd	s0,32(sp)
   11e94:	01313423          	sd	s3,8(sp)
   11e98:	02113423          	sd	ra,40(sp)
   11e9c:	00877793          	andi	a5,a4,8
   11ea0:	00058413          	mv	s0,a1
   11ea4:	00050993          	mv	s3,a0
   11ea8:	12079263          	bnez	a5,11fcc <__sflush_r+0x144>
   11eac:	000017b7          	lui	a5,0x1
   11eb0:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11eb4:	0085a683          	lw	a3,8(a1)
   11eb8:	00f767b3          	or	a5,a4,a5
   11ebc:	00f59823          	sh	a5,16(a1)
   11ec0:	18d05c63          	blez	a3,12058 <__sflush_r+0x1d0>
   11ec4:	04843803          	ld	a6,72(s0)
   11ec8:	0e080663          	beqz	a6,11fb4 <__sflush_r+0x12c>
   11ecc:	00913c23          	sd	s1,24(sp)
   11ed0:	03371693          	slli	a3,a4,0x33
   11ed4:	0009a483          	lw	s1,0(s3)
   11ed8:	0009a023          	sw	zero,0(s3)
   11edc:	1806ca63          	bltz	a3,12070 <__sflush_r+0x1e8>
   11ee0:	03043583          	ld	a1,48(s0)
   11ee4:	00000613          	li	a2,0
   11ee8:	00100693          	li	a3,1
   11eec:	00098513          	mv	a0,s3
   11ef0:	000800e7          	jalr	a6
   11ef4:	fff00793          	li	a5,-1
   11ef8:	00050613          	mv	a2,a0
   11efc:	1af50c63          	beq	a0,a5,120b4 <__sflush_r+0x22c>
   11f00:	01041783          	lh	a5,16(s0)
   11f04:	04843803          	ld	a6,72(s0)
   11f08:	0047f793          	andi	a5,a5,4
   11f0c:	00078e63          	beqz	a5,11f28 <__sflush_r+0xa0>
   11f10:	00842703          	lw	a4,8(s0)
   11f14:	05843783          	ld	a5,88(s0)
   11f18:	40e60633          	sub	a2,a2,a4
   11f1c:	00078663          	beqz	a5,11f28 <__sflush_r+0xa0>
   11f20:	07042783          	lw	a5,112(s0)
   11f24:	40f60633          	sub	a2,a2,a5
   11f28:	03043583          	ld	a1,48(s0)
   11f2c:	00000693          	li	a3,0
   11f30:	00098513          	mv	a0,s3
   11f34:	000800e7          	jalr	a6
   11f38:	fff00713          	li	a4,-1
   11f3c:	01041783          	lh	a5,16(s0)
   11f40:	12e51c63          	bne	a0,a4,12078 <__sflush_r+0x1f0>
   11f44:	0009a683          	lw	a3,0(s3)
   11f48:	01d00713          	li	a4,29
   11f4c:	18d76263          	bltu	a4,a3,120d0 <__sflush_r+0x248>
   11f50:	20400737          	lui	a4,0x20400
   11f54:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11f58:	00d75733          	srl	a4,a4,a3
   11f5c:	00177713          	andi	a4,a4,1
   11f60:	16070863          	beqz	a4,120d0 <__sflush_r+0x248>
   11f64:	01843683          	ld	a3,24(s0)
   11f68:	fffff737          	lui	a4,0xfffff
   11f6c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f70:	00e7f733          	and	a4,a5,a4
   11f74:	00e41823          	sh	a4,16(s0)
   11f78:	00042423          	sw	zero,8(s0)
   11f7c:	00d43023          	sd	a3,0(s0)
   11f80:	03379713          	slli	a4,a5,0x33
   11f84:	00075663          	bgez	a4,11f90 <__sflush_r+0x108>
   11f88:	0009a783          	lw	a5,0(s3)
   11f8c:	10078863          	beqz	a5,1209c <__sflush_r+0x214>
   11f90:	05843583          	ld	a1,88(s0)
   11f94:	0099a023          	sw	s1,0(s3)
   11f98:	10058a63          	beqz	a1,120ac <__sflush_r+0x224>
   11f9c:	07440793          	addi	a5,s0,116
   11fa0:	00f58663          	beq	a1,a5,11fac <__sflush_r+0x124>
   11fa4:	00098513          	mv	a0,s3
   11fa8:	9dcff0ef          	jal	11184 <_free_r>
   11fac:	01813483          	ld	s1,24(sp)
   11fb0:	04043c23          	sd	zero,88(s0)
   11fb4:	02813083          	ld	ra,40(sp)
   11fb8:	02013403          	ld	s0,32(sp)
   11fbc:	00813983          	ld	s3,8(sp)
   11fc0:	00000513          	li	a0,0
   11fc4:	03010113          	addi	sp,sp,48
   11fc8:	00008067          	ret
   11fcc:	01213823          	sd	s2,16(sp)
   11fd0:	0185b903          	ld	s2,24(a1)
   11fd4:	08090a63          	beqz	s2,12068 <__sflush_r+0x1e0>
   11fd8:	00913c23          	sd	s1,24(sp)
   11fdc:	0005b483          	ld	s1,0(a1)
   11fe0:	00377713          	andi	a4,a4,3
   11fe4:	0125b023          	sd	s2,0(a1)
   11fe8:	412484bb          	subw	s1,s1,s2
   11fec:	00000793          	li	a5,0
   11ff0:	00071463          	bnez	a4,11ff8 <__sflush_r+0x170>
   11ff4:	0205a783          	lw	a5,32(a1)
   11ff8:	00f42623          	sw	a5,12(s0)
   11ffc:	00904863          	bgtz	s1,1200c <__sflush_r+0x184>
   12000:	0640006f          	j	12064 <__sflush_r+0x1dc>
   12004:	00a90933          	add	s2,s2,a0
   12008:	04905e63          	blez	s1,12064 <__sflush_r+0x1dc>
   1200c:	04043783          	ld	a5,64(s0)
   12010:	03043583          	ld	a1,48(s0)
   12014:	00048693          	mv	a3,s1
   12018:	00090613          	mv	a2,s2
   1201c:	00098513          	mv	a0,s3
   12020:	000780e7          	jalr	a5
   12024:	40a484bb          	subw	s1,s1,a0
   12028:	fca04ee3          	bgtz	a0,12004 <__sflush_r+0x17c>
   1202c:	01045783          	lhu	a5,16(s0)
   12030:	01013903          	ld	s2,16(sp)
   12034:	0407e793          	ori	a5,a5,64
   12038:	02813083          	ld	ra,40(sp)
   1203c:	00f41823          	sh	a5,16(s0)
   12040:	02013403          	ld	s0,32(sp)
   12044:	01813483          	ld	s1,24(sp)
   12048:	00813983          	ld	s3,8(sp)
   1204c:	fff00513          	li	a0,-1
   12050:	03010113          	addi	sp,sp,48
   12054:	00008067          	ret
   12058:	0705a683          	lw	a3,112(a1)
   1205c:	e6d044e3          	bgtz	a3,11ec4 <__sflush_r+0x3c>
   12060:	f55ff06f          	j	11fb4 <__sflush_r+0x12c>
   12064:	01813483          	ld	s1,24(sp)
   12068:	01013903          	ld	s2,16(sp)
   1206c:	f49ff06f          	j	11fb4 <__sflush_r+0x12c>
   12070:	09043603          	ld	a2,144(s0)
   12074:	e95ff06f          	j	11f08 <__sflush_r+0x80>
   12078:	01843683          	ld	a3,24(s0)
   1207c:	fffff737          	lui	a4,0xfffff
   12080:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12084:	00e7f733          	and	a4,a5,a4
   12088:	00e41823          	sh	a4,16(s0)
   1208c:	00042423          	sw	zero,8(s0)
   12090:	00d43023          	sd	a3,0(s0)
   12094:	03379713          	slli	a4,a5,0x33
   12098:	ee075ce3          	bgez	a4,11f90 <__sflush_r+0x108>
   1209c:	05843583          	ld	a1,88(s0)
   120a0:	08a43823          	sd	a0,144(s0)
   120a4:	0099a023          	sw	s1,0(s3)
   120a8:	ee059ae3          	bnez	a1,11f9c <__sflush_r+0x114>
   120ac:	01813483          	ld	s1,24(sp)
   120b0:	f05ff06f          	j	11fb4 <__sflush_r+0x12c>
   120b4:	0009a783          	lw	a5,0(s3)
   120b8:	e40784e3          	beqz	a5,11f00 <__sflush_r+0x78>
   120bc:	fe378713          	addi	a4,a5,-29
   120c0:	00070c63          	beqz	a4,120d8 <__sflush_r+0x250>
   120c4:	fea78793          	addi	a5,a5,-22
   120c8:	00078863          	beqz	a5,120d8 <__sflush_r+0x250>
   120cc:	01045783          	lhu	a5,16(s0)
   120d0:	0407e793          	ori	a5,a5,64
   120d4:	f65ff06f          	j	12038 <__sflush_r+0x1b0>
   120d8:	0099a023          	sw	s1,0(s3)
   120dc:	01813483          	ld	s1,24(sp)
   120e0:	ed5ff06f          	j	11fb4 <__sflush_r+0x12c>

00000000000120e4 <_fflush_r>:
   120e4:	00050793          	mv	a5,a0
   120e8:	00050663          	beqz	a0,120f4 <_fflush_r+0x10>
   120ec:	04853703          	ld	a4,72(a0)
   120f0:	00070e63          	beqz	a4,1210c <_fflush_r+0x28>
   120f4:	01059703          	lh	a4,16(a1)
   120f8:	00071663          	bnez	a4,12104 <_fflush_r+0x20>
   120fc:	00000513          	li	a0,0
   12100:	00008067          	ret
   12104:	00078513          	mv	a0,a5
   12108:	d81ff06f          	j	11e88 <__sflush_r>
   1210c:	fe010113          	addi	sp,sp,-32
   12110:	00b13423          	sd	a1,8(sp)
   12114:	00113c23          	sd	ra,24(sp)
   12118:	00a13023          	sd	a0,0(sp)
   1211c:	f8cfe0ef          	jal	108a8 <__sinit>
   12120:	00813583          	ld	a1,8(sp)
   12124:	00013783          	ld	a5,0(sp)
   12128:	01059703          	lh	a4,16(a1)
   1212c:	00070a63          	beqz	a4,12140 <_fflush_r+0x5c>
   12130:	01813083          	ld	ra,24(sp)
   12134:	00078513          	mv	a0,a5
   12138:	02010113          	addi	sp,sp,32
   1213c:	d4dff06f          	j	11e88 <__sflush_r>
   12140:	01813083          	ld	ra,24(sp)
   12144:	00000513          	li	a0,0
   12148:	02010113          	addi	sp,sp,32
   1214c:	00008067          	ret

0000000000012150 <fflush>:
   12150:	06050063          	beqz	a0,121b0 <fflush+0x60>
   12154:	00050593          	mv	a1,a0
   12158:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1215c:	00050663          	beqz	a0,12168 <fflush+0x18>
   12160:	04853783          	ld	a5,72(a0)
   12164:	00078c63          	beqz	a5,1217c <fflush+0x2c>
   12168:	01059783          	lh	a5,16(a1)
   1216c:	00079663          	bnez	a5,12178 <fflush+0x28>
   12170:	00000513          	li	a0,0
   12174:	00008067          	ret
   12178:	d11ff06f          	j	11e88 <__sflush_r>
   1217c:	fe010113          	addi	sp,sp,-32
   12180:	00b13423          	sd	a1,8(sp)
   12184:	00a13023          	sd	a0,0(sp)
   12188:	00113c23          	sd	ra,24(sp)
   1218c:	f1cfe0ef          	jal	108a8 <__sinit>
   12190:	00813583          	ld	a1,8(sp)
   12194:	00013503          	ld	a0,0(sp)
   12198:	01059783          	lh	a5,16(a1)
   1219c:	02079863          	bnez	a5,121cc <fflush+0x7c>
   121a0:	01813083          	ld	ra,24(sp)
   121a4:	00000513          	li	a0,0
   121a8:	02010113          	addi	sp,sp,32
   121ac:	00008067          	ret
   121b0:	00013637          	lui	a2,0x13
   121b4:	000125b7          	lui	a1,0x12
   121b8:	00013537          	lui	a0,0x13
   121bc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   121c0:	0e458593          	addi	a1,a1,228 # 120e4 <_fflush_r>
   121c4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   121c8:	f3cfe06f          	j	10904 <_fwalk_sglue>
   121cc:	01813083          	ld	ra,24(sp)
   121d0:	02010113          	addi	sp,sp,32
   121d4:	cb5ff06f          	j	11e88 <__sflush_r>

00000000000121d8 <_sbrk_r>:
   121d8:	fe010113          	addi	sp,sp,-32
   121dc:	00813823          	sd	s0,16(sp)
   121e0:	00913423          	sd	s1,8(sp)
   121e4:	00050493          	mv	s1,a0
   121e8:	00058513          	mv	a0,a1
   121ec:	00113c23          	sd	ra,24(sp)
   121f0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   121f4:	228000ef          	jal	1241c <_sbrk>
   121f8:	fff00793          	li	a5,-1
   121fc:	00f50c63          	beq	a0,a5,12214 <_sbrk_r+0x3c>
   12200:	01813083          	ld	ra,24(sp)
   12204:	01013403          	ld	s0,16(sp)
   12208:	00813483          	ld	s1,8(sp)
   1220c:	02010113          	addi	sp,sp,32
   12210:	00008067          	ret
   12214:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12218:	fe0784e3          	beqz	a5,12200 <_sbrk_r+0x28>
   1221c:	01813083          	ld	ra,24(sp)
   12220:	01013403          	ld	s0,16(sp)
   12224:	00f4a023          	sw	a5,0(s1)
   12228:	00813483          	ld	s1,8(sp)
   1222c:	02010113          	addi	sp,sp,32
   12230:	00008067          	ret

0000000000012234 <__libc_fini_array>:
   12234:	fe010113          	addi	sp,sp,-32
   12238:	00813823          	sd	s0,16(sp)
   1223c:	000137b7          	lui	a5,0x13
   12240:	00013437          	lui	s0,0x13
   12244:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12248:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1224c:	408787b3          	sub	a5,a5,s0
   12250:	00913423          	sd	s1,8(sp)
   12254:	00113c23          	sd	ra,24(sp)
   12258:	4037d493          	srai	s1,a5,0x3
   1225c:	02048063          	beqz	s1,1227c <__libc_fini_array+0x48>
   12260:	ff840413          	addi	s0,s0,-8
   12264:	00f40433          	add	s0,s0,a5
   12268:	00043783          	ld	a5,0(s0)
   1226c:	fff48493          	addi	s1,s1,-1
   12270:	ff840413          	addi	s0,s0,-8
   12274:	000780e7          	jalr	a5
   12278:	fe0498e3          	bnez	s1,12268 <__libc_fini_array+0x34>
   1227c:	01813083          	ld	ra,24(sp)
   12280:	01013403          	ld	s0,16(sp)
   12284:	00813483          	ld	s1,8(sp)
   12288:	02010113          	addi	sp,sp,32
   1228c:	00008067          	ret

0000000000012290 <__register_exitproc>:
   12290:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12294:	04078e63          	beqz	a5,122f0 <__register_exitproc+0x60>
   12298:	0087a703          	lw	a4,8(a5)
   1229c:	01f00813          	li	a6,31
   122a0:	08e84263          	blt	a6,a4,12324 <__register_exitproc+0x94>
   122a4:	02050863          	beqz	a0,122d4 <__register_exitproc+0x44>
   122a8:	00371813          	slli	a6,a4,0x3
   122ac:	01078833          	add	a6,a5,a6
   122b0:	10c83823          	sd	a2,272(a6)
   122b4:	3107a883          	lw	a7,784(a5)
   122b8:	00100613          	li	a2,1
   122bc:	00e6163b          	sllw	a2,a2,a4
   122c0:	00c8e8b3          	or	a7,a7,a2
   122c4:	3117a823          	sw	a7,784(a5)
   122c8:	20d83823          	sd	a3,528(a6)
   122cc:	00200693          	li	a3,2
   122d0:	02d50663          	beq	a0,a3,122fc <__register_exitproc+0x6c>
   122d4:	0017069b          	addiw	a3,a4,1
   122d8:	00371713          	slli	a4,a4,0x3
   122dc:	00d7a423          	sw	a3,8(a5)
   122e0:	00e787b3          	add	a5,a5,a4
   122e4:	00b7b823          	sd	a1,16(a5)
   122e8:	00000513          	li	a0,0
   122ec:	00008067          	ret
   122f0:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   122f4:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   122f8:	fa1ff06f          	j	12298 <__register_exitproc+0x8>
   122fc:	3147a683          	lw	a3,788(a5)
   12300:	00000513          	li	a0,0
   12304:	00d66633          	or	a2,a2,a3
   12308:	0017069b          	addiw	a3,a4,1
   1230c:	00371713          	slli	a4,a4,0x3
   12310:	30c7aa23          	sw	a2,788(a5)
   12314:	00d7a423          	sw	a3,8(a5)
   12318:	00e787b3          	add	a5,a5,a4
   1231c:	00b7b823          	sd	a1,16(a5)
   12320:	00008067          	ret
   12324:	fff00513          	li	a0,-1
   12328:	00008067          	ret

000000000001232c <_close>:
   1232c:	03900893          	li	a7,57
   12330:	00000073          	ecall
   12334:	00054663          	bltz	a0,12340 <_close+0x14>
   12338:	0005051b          	sext.w	a0,a0
   1233c:	00008067          	ret
   12340:	fe010113          	addi	sp,sp,-32
   12344:	00113c23          	sd	ra,24(sp)
   12348:	00a13423          	sd	a0,8(sp)
   1234c:	188000ef          	jal	124d4 <__errno>
   12350:	00813783          	ld	a5,8(sp)
   12354:	01813083          	ld	ra,24(sp)
   12358:	40f007bb          	negw	a5,a5
   1235c:	00f52023          	sw	a5,0(a0)
   12360:	fff00513          	li	a0,-1
   12364:	02010113          	addi	sp,sp,32
   12368:	00008067          	ret

000000000001236c <_exit>:
   1236c:	05d00893          	li	a7,93
   12370:	00000073          	ecall
   12374:	00054463          	bltz	a0,1237c <_exit+0x10>
   12378:	0000006f          	j	12378 <_exit+0xc>
   1237c:	fe010113          	addi	sp,sp,-32
   12380:	00113c23          	sd	ra,24(sp)
   12384:	00a13423          	sd	a0,8(sp)
   12388:	14c000ef          	jal	124d4 <__errno>
   1238c:	00813783          	ld	a5,8(sp)
   12390:	40f007bb          	negw	a5,a5
   12394:	00f52023          	sw	a5,0(a0)
   12398:	0000006f          	j	12398 <_exit+0x2c>

000000000001239c <_lseek>:
   1239c:	03e00893          	li	a7,62
   123a0:	00000073          	ecall
   123a4:	00054463          	bltz	a0,123ac <_lseek+0x10>
   123a8:	00008067          	ret
   123ac:	fe010113          	addi	sp,sp,-32
   123b0:	00113c23          	sd	ra,24(sp)
   123b4:	00a13423          	sd	a0,8(sp)
   123b8:	11c000ef          	jal	124d4 <__errno>
   123bc:	00813783          	ld	a5,8(sp)
   123c0:	01813083          	ld	ra,24(sp)
   123c4:	40f007bb          	negw	a5,a5
   123c8:	00f52023          	sw	a5,0(a0)
   123cc:	fff00793          	li	a5,-1
   123d0:	00078513          	mv	a0,a5
   123d4:	02010113          	addi	sp,sp,32
   123d8:	00008067          	ret

00000000000123dc <_read>:
   123dc:	03f00893          	li	a7,63
   123e0:	00000073          	ecall
   123e4:	00054463          	bltz	a0,123ec <_read+0x10>
   123e8:	00008067          	ret
   123ec:	fe010113          	addi	sp,sp,-32
   123f0:	00113c23          	sd	ra,24(sp)
   123f4:	00a13423          	sd	a0,8(sp)
   123f8:	0dc000ef          	jal	124d4 <__errno>
   123fc:	00813783          	ld	a5,8(sp)
   12400:	01813083          	ld	ra,24(sp)
   12404:	40f007bb          	negw	a5,a5
   12408:	00f52023          	sw	a5,0(a0)
   1240c:	fff00793          	li	a5,-1
   12410:	00078513          	mv	a0,a5
   12414:	02010113          	addi	sp,sp,32
   12418:	00008067          	ret

000000000001241c <_sbrk>:
   1241c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12420:	ff010113          	addi	sp,sp,-16
   12424:	00113423          	sd	ra,8(sp)
   12428:	00050713          	mv	a4,a0
   1242c:	02079063          	bnez	a5,1244c <_sbrk+0x30>
   12430:	0d600893          	li	a7,214
   12434:	00000513          	li	a0,0
   12438:	00000073          	ecall
   1243c:	fff00793          	li	a5,-1
   12440:	02f50c63          	beq	a0,a5,12478 <_sbrk+0x5c>
   12444:	00050793          	mv	a5,a0
   12448:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1244c:	00f70533          	add	a0,a4,a5
   12450:	0d600893          	li	a7,214
   12454:	00000073          	ecall
   12458:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1245c:	00f70733          	add	a4,a4,a5
   12460:	00e51c63          	bne	a0,a4,12478 <_sbrk+0x5c>
   12464:	00813083          	ld	ra,8(sp)
   12468:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1246c:	00078513          	mv	a0,a5
   12470:	01010113          	addi	sp,sp,16
   12474:	00008067          	ret
   12478:	05c000ef          	jal	124d4 <__errno>
   1247c:	00813083          	ld	ra,8(sp)
   12480:	00c00793          	li	a5,12
   12484:	00f52023          	sw	a5,0(a0)
   12488:	fff00513          	li	a0,-1
   1248c:	01010113          	addi	sp,sp,16
   12490:	00008067          	ret

0000000000012494 <_write>:
   12494:	04000893          	li	a7,64
   12498:	00000073          	ecall
   1249c:	00054463          	bltz	a0,124a4 <_write+0x10>
   124a0:	00008067          	ret
   124a4:	fe010113          	addi	sp,sp,-32
   124a8:	00113c23          	sd	ra,24(sp)
   124ac:	00a13423          	sd	a0,8(sp)
   124b0:	024000ef          	jal	124d4 <__errno>
   124b4:	00813783          	ld	a5,8(sp)
   124b8:	01813083          	ld	ra,24(sp)
   124bc:	40f007bb          	negw	a5,a5
   124c0:	00f52023          	sw	a5,0(a0)
   124c4:	fff00793          	li	a5,-1
   124c8:	00078513          	mv	a0,a5
   124cc:	02010113          	addi	sp,sp,32
   124d0:	00008067          	ret

00000000000124d4 <__errno>:
   124d4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   124d8:	00008067          	ret

Disassembly of section .rodata:

00000000000124e0 <.rodata>:
   124e0:	7245                	.insn	2, 0x7245
   124e2:	6f72                	.insn	2, 0x6f72
   124e4:	2c72                	.insn	2, 0x2c72
   124e6:	6620                	.insn	2, 0x6620
   124e8:	2031                	.insn	2, 0x2031
   124ea:	7369                	.insn	2, 0x7369
   124ec:	6620                	.insn	2, 0x6620
   124ee:	6c61                	.insn	2, 0x6c61
   124f0:	202c6573          	.insn	4, 0x202c6573
   124f4:	73206577          	.insn	4, 0x73206577
   124f8:	6f68                	.insn	2, 0x6f68
   124fa:	6c75                	.insn	2, 0x6c75
   124fc:	2064                	.insn	2, 0x2064
   124fe:	6f6e                	.insn	2, 0x6f6e
   12500:	2074                	.insn	2, 0x2074
   12502:	68206f67          	.insn	4, 0x68206f67
   12506:	7265                	.insn	2, 0x7265
   12508:	2165                	.insn	2, 0x2165
   1250a:	000a                	.insn	2, 0x000a
   1250c:	0000                	.insn	2, 0x0000
   1250e:	0000                	.insn	2, 0x0000
   12510:	6559                	.insn	2, 0x6559
   12512:	66202c73          	.insn	4, 0x66202c73
   12516:	2032                	.insn	2, 0x2032
   12518:	7369                	.insn	2, 0x7369
   1251a:	7420                	.insn	2, 0x7420
   1251c:	7572                	.insn	2, 0x7572
   1251e:	0a65                	.insn	2, 0x0a65
	...
   12528:	5b61                	.insn	2, 0x5b61
   1252a:	5d35                	.insn	2, 0x5d35
   1252c:	3d20                	.insn	2, 0x3d20
   1252e:	0020                	.insn	2, 0x0020
   12530:	0001                	.insn	2, 0x0001
   12532:	0000                	.insn	2, 0x0000
   12534:	0002                	.insn	2, 0x0002
   12536:	0000                	.insn	2, 0x0000
   12538:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   1253c:	0004                	.insn	2, 0x0004
   1253e:	0000                	.insn	2, 0x0000
   12540:	0005                	.insn	2, 0x0005
	...

Disassembly of section .eh_frame:

0000000000012548 <__EH_FRAME_BEGIN__>:
   12548:	0000                	.insn	2, 0x0000
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

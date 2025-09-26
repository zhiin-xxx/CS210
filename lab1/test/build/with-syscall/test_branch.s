
test/build/with-syscall/test_branch.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	59d000ef          	jal	10ed0 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	1e0020ef          	jal	12328 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	1f050513          	addi	a0,a0,496 # 121f0 <__libc_fini_array>
   1015c:	6ad0006f          	j	11008 <atexit>
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
   10184:	471000ef          	jal	10df4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	e8050513          	addi	a0,a0,-384 # 11008 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	05c50513          	addi	a0,a0,92 # 121f0 <__libc_fini_array>
   1019c:	66d000ef          	jal	11008 <atexit>
   101a0:	3c1000ef          	jal	10d60 <__libc_init_array>
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
   101d8:	50050513          	addi	a0,a0,1280 # 12500 <__EH_FRAME_BEGIN__>
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
   1020c:	50050513          	addi	a0,a0,1280 # 12500 <__EH_FRAME_BEGIN__>
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
   1023c:	4e878793          	addi	a5,a5,1256 # 124e8 <__errno+0x58>
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
   10268:	49878513          	addi	a0,a5,1176 # 12498 <__errno+0x8>
   1026c:	1e8000ef          	jal	10454 <print_s>
   10270:	fdc42783          	lw	a5,-36(s0)
   10274:	0007879b          	sext.w	a5,a5
   10278:	00078863          	beqz	a5,10288 <main+0x6c>
   1027c:	000127b7          	lui	a5,0x12
   10280:	4c878513          	addi	a0,a5,1224 # 124c8 <__errno+0x38>
   10284:	1d0000ef          	jal	10454 <print_s>
   10288:	000127b7          	lui	a5,0x12
   1028c:	4e078513          	addi	a0,a5,1248 # 124e0 <__errno+0x50>
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
   10374:	4e078513          	addi	a0,a5,1248 # 124e0 <__errno+0x50>
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

0000000000010554 <__fp_lock>:
   10554:	00000513          	li	a0,0
   10558:	00008067          	ret

000000000001055c <stdio_exit_handler>:
   1055c:	00013637          	lui	a2,0x13
   10560:	000125b7          	lui	a1,0x12
   10564:	00013537          	lui	a0,0x13
   10568:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1056c:	d3058593          	addi	a1,a1,-720 # 11d30 <_fclose_r>
   10570:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10574:	34c0006f          	j	108c0 <_fwalk_sglue>

0000000000010578 <cleanup_stdio>:
   10578:	00853583          	ld	a1,8(a0)
   1057c:	ff010113          	addi	sp,sp,-16
   10580:	00813023          	sd	s0,0(sp)
   10584:	00113423          	sd	ra,8(sp)
   10588:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   1058c:	00050413          	mv	s0,a0
   10590:	00f58463          	beq	a1,a5,10598 <cleanup_stdio+0x20>
   10594:	79c010ef          	jal	11d30 <_fclose_r>
   10598:	01043583          	ld	a1,16(s0)
   1059c:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   105a0:	00f58663          	beq	a1,a5,105ac <cleanup_stdio+0x34>
   105a4:	00040513          	mv	a0,s0
   105a8:	788010ef          	jal	11d30 <_fclose_r>
   105ac:	01843583          	ld	a1,24(s0)
   105b0:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   105b4:	00f58c63          	beq	a1,a5,105cc <cleanup_stdio+0x54>
   105b8:	00040513          	mv	a0,s0
   105bc:	00013403          	ld	s0,0(sp)
   105c0:	00813083          	ld	ra,8(sp)
   105c4:	01010113          	addi	sp,sp,16
   105c8:	7680106f          	j	11d30 <_fclose_r>
   105cc:	00813083          	ld	ra,8(sp)
   105d0:	00013403          	ld	s0,0(sp)
   105d4:	01010113          	addi	sp,sp,16
   105d8:	00008067          	ret

00000000000105dc <__fp_unlock>:
   105dc:	00000513          	li	a0,0
   105e0:	00008067          	ret

00000000000105e4 <global_stdio_init.part.0>:
   105e4:	fd010113          	addi	sp,sp,-48
   105e8:	000107b7          	lui	a5,0x10
   105ec:	02813023          	sd	s0,32(sp)
   105f0:	55c78793          	addi	a5,a5,1372 # 1055c <stdio_exit_handler>
   105f4:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   105f8:	02113423          	sd	ra,40(sp)
   105fc:	00913c23          	sd	s1,24(sp)
   10600:	01213823          	sd	s2,16(sp)
   10604:	01313423          	sd	s3,8(sp)
   10608:	01413023          	sd	s4,0(sp)
   1060c:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10610:	00800613          	li	a2,8
   10614:	00400793          	li	a5,4
   10618:	00000593          	li	a1,0
   1061c:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10620:	00f42823          	sw	a5,16(s0)
   10624:	00043023          	sd	zero,0(s0)
   10628:	00043423          	sd	zero,8(s0)
   1062c:	0a042623          	sw	zero,172(s0)
   10630:	00043c23          	sd	zero,24(s0)
   10634:	02042023          	sw	zero,32(s0)
   10638:	02042423          	sw	zero,40(s0)
   1063c:	7b8000ef          	jal	10df4 <memset>
   10640:	00011a37          	lui	s4,0x11
   10644:	000119b7          	lui	s3,0x11
   10648:	00011937          	lui	s2,0x11
   1064c:	000114b7          	lui	s1,0x11
   10650:	000107b7          	lui	a5,0x10
   10654:	990a0a13          	addi	s4,s4,-1648 # 10990 <__sread>
   10658:	9f498993          	addi	s3,s3,-1548 # 109f4 <__swrite>
   1065c:	a7c90913          	addi	s2,s2,-1412 # 10a7c <__sseek>
   10660:	ae048493          	addi	s1,s1,-1312 # 10ae0 <__sclose>
   10664:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10668:	00800613          	li	a2,8
   1066c:	00000593          	li	a1,0
   10670:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10674:	0cf42023          	sw	a5,192(s0)
   10678:	03443c23          	sd	s4,56(s0)
   1067c:	05343023          	sd	s3,64(s0)
   10680:	05243423          	sd	s2,72(s0)
   10684:	04943823          	sd	s1,80(s0)
   10688:	02843823          	sd	s0,48(s0)
   1068c:	0a043823          	sd	zero,176(s0)
   10690:	0a043c23          	sd	zero,184(s0)
   10694:	14042e23          	sw	zero,348(s0)
   10698:	0c043423          	sd	zero,200(s0)
   1069c:	0c042823          	sw	zero,208(s0)
   106a0:	0c042c23          	sw	zero,216(s0)
   106a4:	750000ef          	jal	10df4 <memset>
   106a8:	000207b7          	lui	a5,0x20
   106ac:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   106b0:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   106b4:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   106b8:	00800613          	li	a2,8
   106bc:	00000593          	li	a1,0
   106c0:	0f443423          	sd	s4,232(s0)
   106c4:	0f343823          	sd	s3,240(s0)
   106c8:	0f243c23          	sd	s2,248(s0)
   106cc:	10943023          	sd	s1,256(s0)
   106d0:	16f42823          	sw	a5,368(s0)
   106d4:	16043023          	sd	zero,352(s0)
   106d8:	16043423          	sd	zero,360(s0)
   106dc:	20042623          	sw	zero,524(s0)
   106e0:	16043c23          	sd	zero,376(s0)
   106e4:	18042023          	sw	zero,384(s0)
   106e8:	18042423          	sw	zero,392(s0)
   106ec:	0ee43023          	sd	a4,224(s0)
   106f0:	704000ef          	jal	10df4 <memset>
   106f4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   106f8:	19443c23          	sd	s4,408(s0)
   106fc:	1b343023          	sd	s3,416(s0)
   10700:	1b243423          	sd	s2,424(s0)
   10704:	1a943823          	sd	s1,432(s0)
   10708:	02813083          	ld	ra,40(sp)
   1070c:	18f43823          	sd	a5,400(s0)
   10710:	02013403          	ld	s0,32(sp)
   10714:	01813483          	ld	s1,24(sp)
   10718:	01013903          	ld	s2,16(sp)
   1071c:	00813983          	ld	s3,8(sp)
   10720:	00013a03          	ld	s4,0(sp)
   10724:	03010113          	addi	sp,sp,48
   10728:	00008067          	ret

000000000001072c <__sfp>:
   1072c:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10730:	fd010113          	addi	sp,sp,-48
   10734:	00913c23          	sd	s1,24(sp)
   10738:	02113423          	sd	ra,40(sp)
   1073c:	02813023          	sd	s0,32(sp)
   10740:	00050493          	mv	s1,a0
   10744:	10078463          	beqz	a5,1084c <__sfp+0x120>
   10748:	000136b7          	lui	a3,0x13
   1074c:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10750:	0086a703          	lw	a4,8(a3)
   10754:	08e05c63          	blez	a4,107ec <__sfp+0xc0>
   10758:	02071713          	slli	a4,a4,0x20
   1075c:	02075713          	srli	a4,a4,0x20
   10760:	00171793          	slli	a5,a4,0x1
   10764:	00e787b3          	add	a5,a5,a4
   10768:	0106b403          	ld	s0,16(a3)
   1076c:	00279793          	slli	a5,a5,0x2
   10770:	40e787b3          	sub	a5,a5,a4
   10774:	00479793          	slli	a5,a5,0x4
   10778:	00f407b3          	add	a5,s0,a5
   1077c:	00c0006f          	j	10788 <__sfp+0x5c>
   10780:	0b040413          	addi	s0,s0,176
   10784:	06f40463          	beq	s0,a5,107ec <__sfp+0xc0>
   10788:	01041703          	lh	a4,16(s0)
   1078c:	fe071ae3          	bnez	a4,10780 <__sfp+0x54>
   10790:	ffff07b7          	lui	a5,0xffff0
   10794:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10798:	00f42823          	sw	a5,16(s0)
   1079c:	0a042623          	sw	zero,172(s0)
   107a0:	00043023          	sd	zero,0(s0)
   107a4:	00043423          	sd	zero,8(s0)
   107a8:	00043c23          	sd	zero,24(s0)
   107ac:	02042023          	sw	zero,32(s0)
   107b0:	02042423          	sw	zero,40(s0)
   107b4:	00800613          	li	a2,8
   107b8:	00000593          	li	a1,0
   107bc:	0a440513          	addi	a0,s0,164
   107c0:	634000ef          	jal	10df4 <memset>
   107c4:	04043c23          	sd	zero,88(s0)
   107c8:	06042023          	sw	zero,96(s0)
   107cc:	06043c23          	sd	zero,120(s0)
   107d0:	08042023          	sw	zero,128(s0)
   107d4:	02813083          	ld	ra,40(sp)
   107d8:	00040513          	mv	a0,s0
   107dc:	02013403          	ld	s0,32(sp)
   107e0:	01813483          	ld	s1,24(sp)
   107e4:	03010113          	addi	sp,sp,48
   107e8:	00008067          	ret
   107ec:	0006b403          	ld	s0,0(a3)
   107f0:	00040663          	beqz	s0,107fc <__sfp+0xd0>
   107f4:	00040693          	mv	a3,s0
   107f8:	f59ff06f          	j	10750 <__sfp+0x24>
   107fc:	2d800593          	li	a1,728
   10800:	00048513          	mv	a0,s1
   10804:	00d13423          	sd	a3,8(sp)
   10808:	43d000ef          	jal	11444 <_malloc_r>
   1080c:	00813683          	ld	a3,8(sp)
   10810:	00050413          	mv	s0,a0
   10814:	04050063          	beqz	a0,10854 <__sfp+0x128>
   10818:	00400793          	li	a5,4
   1081c:	00f52423          	sw	a5,8(a0)
   10820:	01850513          	addi	a0,a0,24
   10824:	00043023          	sd	zero,0(s0)
   10828:	00a43823          	sd	a0,16(s0)
   1082c:	2c000613          	li	a2,704
   10830:	00000593          	li	a1,0
   10834:	00d13423          	sd	a3,8(sp)
   10838:	5bc000ef          	jal	10df4 <memset>
   1083c:	00813683          	ld	a3,8(sp)
   10840:	0086b023          	sd	s0,0(a3)
   10844:	00040693          	mv	a3,s0
   10848:	f09ff06f          	j	10750 <__sfp+0x24>
   1084c:	d99ff0ef          	jal	105e4 <global_stdio_init.part.0>
   10850:	ef9ff06f          	j	10748 <__sfp+0x1c>
   10854:	0006b023          	sd	zero,0(a3)
   10858:	00c00793          	li	a5,12
   1085c:	00f4a023          	sw	a5,0(s1)
   10860:	f75ff06f          	j	107d4 <__sfp+0xa8>

0000000000010864 <__sinit>:
   10864:	04853783          	ld	a5,72(a0)
   10868:	00078463          	beqz	a5,10870 <__sinit+0xc>
   1086c:	00008067          	ret
   10870:	000107b7          	lui	a5,0x10
   10874:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10878:	57878793          	addi	a5,a5,1400 # 10578 <cleanup_stdio>
   1087c:	04f53423          	sd	a5,72(a0)
   10880:	fe0716e3          	bnez	a4,1086c <__sinit+0x8>
   10884:	d61ff06f          	j	105e4 <global_stdio_init.part.0>

0000000000010888 <__sfp_lock_acquire>:
   10888:	00008067          	ret

000000000001088c <__sfp_lock_release>:
   1088c:	00008067          	ret

0000000000010890 <__fp_lock_all>:
   10890:	00013637          	lui	a2,0x13
   10894:	000105b7          	lui	a1,0x10
   10898:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1089c:	55458593          	addi	a1,a1,1364 # 10554 <__fp_lock>
   108a0:	00000513          	li	a0,0
   108a4:	01c0006f          	j	108c0 <_fwalk_sglue>

00000000000108a8 <__fp_unlock_all>:
   108a8:	00013637          	lui	a2,0x13
   108ac:	000105b7          	lui	a1,0x10
   108b0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   108b4:	5dc58593          	addi	a1,a1,1500 # 105dc <__fp_unlock>
   108b8:	00000513          	li	a0,0
   108bc:	0040006f          	j	108c0 <_fwalk_sglue>

00000000000108c0 <_fwalk_sglue>:
   108c0:	fb010113          	addi	sp,sp,-80
   108c4:	03213823          	sd	s2,48(sp)
   108c8:	03313423          	sd	s3,40(sp)
   108cc:	03413023          	sd	s4,32(sp)
   108d0:	01513c23          	sd	s5,24(sp)
   108d4:	01613823          	sd	s6,16(sp)
   108d8:	01713423          	sd	s7,8(sp)
   108dc:	04113423          	sd	ra,72(sp)
   108e0:	04813023          	sd	s0,64(sp)
   108e4:	02913c23          	sd	s1,56(sp)
   108e8:	00060913          	mv	s2,a2
   108ec:	00050a13          	mv	s4,a0
   108f0:	00058a93          	mv	s5,a1
   108f4:	00000b13          	li	s6,0
   108f8:	00100b93          	li	s7,1
   108fc:	fff00993          	li	s3,-1
   10900:	00892783          	lw	a5,8(s2)
   10904:	04f05a63          	blez	a5,10958 <_fwalk_sglue+0x98>
   10908:	02079793          	slli	a5,a5,0x20
   1090c:	0207d793          	srli	a5,a5,0x20
   10910:	00179493          	slli	s1,a5,0x1
   10914:	00f484b3          	add	s1,s1,a5
   10918:	01093403          	ld	s0,16(s2)
   1091c:	00249493          	slli	s1,s1,0x2
   10920:	40f484b3          	sub	s1,s1,a5
   10924:	00449493          	slli	s1,s1,0x4
   10928:	009404b3          	add	s1,s0,s1
   1092c:	01045783          	lhu	a5,16(s0)
   10930:	02fbf063          	bgeu	s7,a5,10950 <_fwalk_sglue+0x90>
   10934:	01241783          	lh	a5,18(s0)
   10938:	00040593          	mv	a1,s0
   1093c:	000a0513          	mv	a0,s4
   10940:	01378863          	beq	a5,s3,10950 <_fwalk_sglue+0x90>
   10944:	000a80e7          	jalr	s5
   10948:	01656b33          	or	s6,a0,s6
   1094c:	000b0b1b          	sext.w	s6,s6
   10950:	0b040413          	addi	s0,s0,176
   10954:	fc941ce3          	bne	s0,s1,1092c <_fwalk_sglue+0x6c>
   10958:	00093903          	ld	s2,0(s2)
   1095c:	fa0912e3          	bnez	s2,10900 <_fwalk_sglue+0x40>
   10960:	04813083          	ld	ra,72(sp)
   10964:	04013403          	ld	s0,64(sp)
   10968:	03813483          	ld	s1,56(sp)
   1096c:	03013903          	ld	s2,48(sp)
   10970:	02813983          	ld	s3,40(sp)
   10974:	02013a03          	ld	s4,32(sp)
   10978:	01813a83          	ld	s5,24(sp)
   1097c:	00813b83          	ld	s7,8(sp)
   10980:	000b0513          	mv	a0,s6
   10984:	01013b03          	ld	s6,16(sp)
   10988:	05010113          	addi	sp,sp,80
   1098c:	00008067          	ret

0000000000010990 <__sread>:
   10990:	ff010113          	addi	sp,sp,-16
   10994:	00813023          	sd	s0,0(sp)
   10998:	00058413          	mv	s0,a1
   1099c:	01259583          	lh	a1,18(a1)
   109a0:	00113423          	sd	ra,8(sp)
   109a4:	2ec000ef          	jal	10c90 <_read_r>
   109a8:	02054063          	bltz	a0,109c8 <__sread+0x38>
   109ac:	09043783          	ld	a5,144(s0)
   109b0:	00813083          	ld	ra,8(sp)
   109b4:	00a787b3          	add	a5,a5,a0
   109b8:	08f43823          	sd	a5,144(s0)
   109bc:	00013403          	ld	s0,0(sp)
   109c0:	01010113          	addi	sp,sp,16
   109c4:	00008067          	ret
   109c8:	01045783          	lhu	a5,16(s0)
   109cc:	fffff737          	lui	a4,0xfffff
   109d0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   109d4:	00e7f7b3          	and	a5,a5,a4
   109d8:	00813083          	ld	ra,8(sp)
   109dc:	00f41823          	sh	a5,16(s0)
   109e0:	00013403          	ld	s0,0(sp)
   109e4:	01010113          	addi	sp,sp,16
   109e8:	00008067          	ret

00000000000109ec <__seofread>:
   109ec:	00000513          	li	a0,0
   109f0:	00008067          	ret

00000000000109f4 <__swrite>:
   109f4:	01059783          	lh	a5,16(a1)
   109f8:	fd010113          	addi	sp,sp,-48
   109fc:	00068313          	mv	t1,a3
   10a00:	02113423          	sd	ra,40(sp)
   10a04:	1007f693          	andi	a3,a5,256
   10a08:	00058713          	mv	a4,a1
   10a0c:	00060893          	mv	a7,a2
   10a10:	00050813          	mv	a6,a0
   10a14:	02069863          	bnez	a3,10a44 <__swrite+0x50>
   10a18:	fffff6b7          	lui	a3,0xfffff
   10a1c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a20:	02813083          	ld	ra,40(sp)
   10a24:	00d7f7b3          	and	a5,a5,a3
   10a28:	01271583          	lh	a1,18(a4)
   10a2c:	00f71823          	sh	a5,16(a4)
   10a30:	00030693          	mv	a3,t1
   10a34:	00088613          	mv	a2,a7
   10a38:	00080513          	mv	a0,a6
   10a3c:	03010113          	addi	sp,sp,48
   10a40:	2b80006f          	j	10cf8 <_write_r>
   10a44:	01259583          	lh	a1,18(a1)
   10a48:	00c13823          	sd	a2,16(sp)
   10a4c:	00200693          	li	a3,2
   10a50:	00000613          	li	a2,0
   10a54:	00613c23          	sd	t1,24(sp)
   10a58:	00e13023          	sd	a4,0(sp)
   10a5c:	00a13423          	sd	a0,8(sp)
   10a60:	1c8000ef          	jal	10c28 <_lseek_r>
   10a64:	00013703          	ld	a4,0(sp)
   10a68:	01813303          	ld	t1,24(sp)
   10a6c:	01013883          	ld	a7,16(sp)
   10a70:	01071783          	lh	a5,16(a4)
   10a74:	00813803          	ld	a6,8(sp)
   10a78:	fa1ff06f          	j	10a18 <__swrite+0x24>

0000000000010a7c <__sseek>:
   10a7c:	ff010113          	addi	sp,sp,-16
   10a80:	00813023          	sd	s0,0(sp)
   10a84:	00058413          	mv	s0,a1
   10a88:	01259583          	lh	a1,18(a1)
   10a8c:	00113423          	sd	ra,8(sp)
   10a90:	198000ef          	jal	10c28 <_lseek_r>
   10a94:	fff00713          	li	a4,-1
   10a98:	01041783          	lh	a5,16(s0)
   10a9c:	02e50263          	beq	a0,a4,10ac0 <__sseek+0x44>
   10aa0:	00001737          	lui	a4,0x1
   10aa4:	00e7e7b3          	or	a5,a5,a4
   10aa8:	00813083          	ld	ra,8(sp)
   10aac:	08a43823          	sd	a0,144(s0)
   10ab0:	00f41823          	sh	a5,16(s0)
   10ab4:	00013403          	ld	s0,0(sp)
   10ab8:	01010113          	addi	sp,sp,16
   10abc:	00008067          	ret
   10ac0:	80050713          	addi	a4,a0,-2048
   10ac4:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10ac8:	00e7f7b3          	and	a5,a5,a4
   10acc:	00813083          	ld	ra,8(sp)
   10ad0:	00f41823          	sh	a5,16(s0)
   10ad4:	00013403          	ld	s0,0(sp)
   10ad8:	01010113          	addi	sp,sp,16
   10adc:	00008067          	ret

0000000000010ae0 <__sclose>:
   10ae0:	01259583          	lh	a1,18(a1)
   10ae4:	0040006f          	j	10ae8 <_close_r>

0000000000010ae8 <_close_r>:
   10ae8:	fe010113          	addi	sp,sp,-32
   10aec:	00813823          	sd	s0,16(sp)
   10af0:	00913423          	sd	s1,8(sp)
   10af4:	00050493          	mv	s1,a0
   10af8:	00058513          	mv	a0,a1
   10afc:	00113c23          	sd	ra,24(sp)
   10b00:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b04:	7e4010ef          	jal	122e8 <_close>
   10b08:	fff00793          	li	a5,-1
   10b0c:	00f50c63          	beq	a0,a5,10b24 <_close_r+0x3c>
   10b10:	01813083          	ld	ra,24(sp)
   10b14:	01013403          	ld	s0,16(sp)
   10b18:	00813483          	ld	s1,8(sp)
   10b1c:	02010113          	addi	sp,sp,32
   10b20:	00008067          	ret
   10b24:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b28:	fe0784e3          	beqz	a5,10b10 <_close_r+0x28>
   10b2c:	01813083          	ld	ra,24(sp)
   10b30:	01013403          	ld	s0,16(sp)
   10b34:	00f4a023          	sw	a5,0(s1)
   10b38:	00813483          	ld	s1,8(sp)
   10b3c:	02010113          	addi	sp,sp,32
   10b40:	00008067          	ret

0000000000010b44 <_reclaim_reent>:
   10b44:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10b48:	0ca78e63          	beq	a5,a0,10c24 <_reclaim_reent+0xe0>
   10b4c:	06853583          	ld	a1,104(a0)
   10b50:	fd010113          	addi	sp,sp,-48
   10b54:	00913c23          	sd	s1,24(sp)
   10b58:	02113423          	sd	ra,40(sp)
   10b5c:	02813023          	sd	s0,32(sp)
   10b60:	00050493          	mv	s1,a0
   10b64:	04058863          	beqz	a1,10bb4 <_reclaim_reent+0x70>
   10b68:	01213823          	sd	s2,16(sp)
   10b6c:	01313423          	sd	s3,8(sp)
   10b70:	00000913          	li	s2,0
   10b74:	20000993          	li	s3,512
   10b78:	012587b3          	add	a5,a1,s2
   10b7c:	0007b403          	ld	s0,0(a5)
   10b80:	00040e63          	beqz	s0,10b9c <_reclaim_reent+0x58>
   10b84:	00040593          	mv	a1,s0
   10b88:	00043403          	ld	s0,0(s0)
   10b8c:	00048513          	mv	a0,s1
   10b90:	5b0000ef          	jal	11140 <_free_r>
   10b94:	fe0418e3          	bnez	s0,10b84 <_reclaim_reent+0x40>
   10b98:	0684b583          	ld	a1,104(s1)
   10b9c:	00890913          	addi	s2,s2,8
   10ba0:	fd391ce3          	bne	s2,s3,10b78 <_reclaim_reent+0x34>
   10ba4:	00048513          	mv	a0,s1
   10ba8:	598000ef          	jal	11140 <_free_r>
   10bac:	01013903          	ld	s2,16(sp)
   10bb0:	00813983          	ld	s3,8(sp)
   10bb4:	0504b583          	ld	a1,80(s1)
   10bb8:	00058663          	beqz	a1,10bc4 <_reclaim_reent+0x80>
   10bbc:	00048513          	mv	a0,s1
   10bc0:	580000ef          	jal	11140 <_free_r>
   10bc4:	0604b403          	ld	s0,96(s1)
   10bc8:	00040c63          	beqz	s0,10be0 <_reclaim_reent+0x9c>
   10bcc:	00040593          	mv	a1,s0
   10bd0:	00043403          	ld	s0,0(s0)
   10bd4:	00048513          	mv	a0,s1
   10bd8:	568000ef          	jal	11140 <_free_r>
   10bdc:	fe0418e3          	bnez	s0,10bcc <_reclaim_reent+0x88>
   10be0:	0784b583          	ld	a1,120(s1)
   10be4:	00058663          	beqz	a1,10bf0 <_reclaim_reent+0xac>
   10be8:	00048513          	mv	a0,s1
   10bec:	554000ef          	jal	11140 <_free_r>
   10bf0:	0484b783          	ld	a5,72(s1)
   10bf4:	00078e63          	beqz	a5,10c10 <_reclaim_reent+0xcc>
   10bf8:	02013403          	ld	s0,32(sp)
   10bfc:	02813083          	ld	ra,40(sp)
   10c00:	00048513          	mv	a0,s1
   10c04:	01813483          	ld	s1,24(sp)
   10c08:	03010113          	addi	sp,sp,48
   10c0c:	00078067          	jr	a5
   10c10:	02813083          	ld	ra,40(sp)
   10c14:	02013403          	ld	s0,32(sp)
   10c18:	01813483          	ld	s1,24(sp)
   10c1c:	03010113          	addi	sp,sp,48
   10c20:	00008067          	ret
   10c24:	00008067          	ret

0000000000010c28 <_lseek_r>:
   10c28:	fe010113          	addi	sp,sp,-32
   10c2c:	00058793          	mv	a5,a1
   10c30:	00813823          	sd	s0,16(sp)
   10c34:	00913423          	sd	s1,8(sp)
   10c38:	00060593          	mv	a1,a2
   10c3c:	00050493          	mv	s1,a0
   10c40:	00068613          	mv	a2,a3
   10c44:	00078513          	mv	a0,a5
   10c48:	00113c23          	sd	ra,24(sp)
   10c4c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c50:	708010ef          	jal	12358 <_lseek>
   10c54:	fff00793          	li	a5,-1
   10c58:	00f50c63          	beq	a0,a5,10c70 <_lseek_r+0x48>
   10c5c:	01813083          	ld	ra,24(sp)
   10c60:	01013403          	ld	s0,16(sp)
   10c64:	00813483          	ld	s1,8(sp)
   10c68:	02010113          	addi	sp,sp,32
   10c6c:	00008067          	ret
   10c70:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c74:	fe0784e3          	beqz	a5,10c5c <_lseek_r+0x34>
   10c78:	01813083          	ld	ra,24(sp)
   10c7c:	01013403          	ld	s0,16(sp)
   10c80:	00f4a023          	sw	a5,0(s1)
   10c84:	00813483          	ld	s1,8(sp)
   10c88:	02010113          	addi	sp,sp,32
   10c8c:	00008067          	ret

0000000000010c90 <_read_r>:
   10c90:	fe010113          	addi	sp,sp,-32
   10c94:	00058793          	mv	a5,a1
   10c98:	00813823          	sd	s0,16(sp)
   10c9c:	00913423          	sd	s1,8(sp)
   10ca0:	00060593          	mv	a1,a2
   10ca4:	00050493          	mv	s1,a0
   10ca8:	00068613          	mv	a2,a3
   10cac:	00078513          	mv	a0,a5
   10cb0:	00113c23          	sd	ra,24(sp)
   10cb4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10cb8:	6e0010ef          	jal	12398 <_read>
   10cbc:	fff00793          	li	a5,-1
   10cc0:	00f50c63          	beq	a0,a5,10cd8 <_read_r+0x48>
   10cc4:	01813083          	ld	ra,24(sp)
   10cc8:	01013403          	ld	s0,16(sp)
   10ccc:	00813483          	ld	s1,8(sp)
   10cd0:	02010113          	addi	sp,sp,32
   10cd4:	00008067          	ret
   10cd8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10cdc:	fe0784e3          	beqz	a5,10cc4 <_read_r+0x34>
   10ce0:	01813083          	ld	ra,24(sp)
   10ce4:	01013403          	ld	s0,16(sp)
   10ce8:	00f4a023          	sw	a5,0(s1)
   10cec:	00813483          	ld	s1,8(sp)
   10cf0:	02010113          	addi	sp,sp,32
   10cf4:	00008067          	ret

0000000000010cf8 <_write_r>:
   10cf8:	fe010113          	addi	sp,sp,-32
   10cfc:	00058793          	mv	a5,a1
   10d00:	00813823          	sd	s0,16(sp)
   10d04:	00913423          	sd	s1,8(sp)
   10d08:	00060593          	mv	a1,a2
   10d0c:	00050493          	mv	s1,a0
   10d10:	00068613          	mv	a2,a3
   10d14:	00078513          	mv	a0,a5
   10d18:	00113c23          	sd	ra,24(sp)
   10d1c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d20:	730010ef          	jal	12450 <_write>
   10d24:	fff00793          	li	a5,-1
   10d28:	00f50c63          	beq	a0,a5,10d40 <_write_r+0x48>
   10d2c:	01813083          	ld	ra,24(sp)
   10d30:	01013403          	ld	s0,16(sp)
   10d34:	00813483          	ld	s1,8(sp)
   10d38:	02010113          	addi	sp,sp,32
   10d3c:	00008067          	ret
   10d40:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d44:	fe0784e3          	beqz	a5,10d2c <_write_r+0x34>
   10d48:	01813083          	ld	ra,24(sp)
   10d4c:	01013403          	ld	s0,16(sp)
   10d50:	00f4a023          	sw	a5,0(s1)
   10d54:	00813483          	ld	s1,8(sp)
   10d58:	02010113          	addi	sp,sp,32
   10d5c:	00008067          	ret

0000000000010d60 <__libc_init_array>:
   10d60:	fe010113          	addi	sp,sp,-32
   10d64:	00813823          	sd	s0,16(sp)
   10d68:	01213023          	sd	s2,0(sp)
   10d6c:	00013437          	lui	s0,0x13
   10d70:	00013937          	lui	s2,0x13
   10d74:	00113c23          	sd	ra,24(sp)
   10d78:	00913423          	sd	s1,8(sp)
   10d7c:	00090913          	mv	s2,s2
   10d80:	00040413          	mv	s0,s0
   10d84:	02890263          	beq	s2,s0,10da8 <__libc_init_array+0x48>
   10d88:	40890933          	sub	s2,s2,s0
   10d8c:	40395913          	srai	s2,s2,0x3
   10d90:	00000493          	li	s1,0
   10d94:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10d98:	00148493          	addi	s1,s1,1
   10d9c:	00840413          	addi	s0,s0,8
   10da0:	000780e7          	jalr	a5
   10da4:	ff24e8e3          	bltu	s1,s2,10d94 <__libc_init_array+0x34>
   10da8:	00013937          	lui	s2,0x13
   10dac:	00013437          	lui	s0,0x13
   10db0:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10db4:	00040413          	mv	s0,s0
   10db8:	02890263          	beq	s2,s0,10ddc <__libc_init_array+0x7c>
   10dbc:	40890933          	sub	s2,s2,s0
   10dc0:	40395913          	srai	s2,s2,0x3
   10dc4:	00000493          	li	s1,0
   10dc8:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10dcc:	00148493          	addi	s1,s1,1
   10dd0:	00840413          	addi	s0,s0,8
   10dd4:	000780e7          	jalr	a5
   10dd8:	ff24e8e3          	bltu	s1,s2,10dc8 <__libc_init_array+0x68>
   10ddc:	01813083          	ld	ra,24(sp)
   10de0:	01013403          	ld	s0,16(sp)
   10de4:	00813483          	ld	s1,8(sp)
   10de8:	00013903          	ld	s2,0(sp)
   10dec:	02010113          	addi	sp,sp,32
   10df0:	00008067          	ret

0000000000010df4 <memset>:
   10df4:	00f00313          	li	t1,15
   10df8:	00050713          	mv	a4,a0
   10dfc:	02c37a63          	bgeu	t1,a2,10e30 <memset+0x3c>
   10e00:	00f77793          	andi	a5,a4,15
   10e04:	0a079063          	bnez	a5,10ea4 <memset+0xb0>
   10e08:	06059e63          	bnez	a1,10e84 <memset+0x90>
   10e0c:	ff067693          	andi	a3,a2,-16
   10e10:	00f67613          	andi	a2,a2,15
   10e14:	00e686b3          	add	a3,a3,a4
   10e18:	00b73023          	sd	a1,0(a4)
   10e1c:	00b73423          	sd	a1,8(a4)
   10e20:	01070713          	addi	a4,a4,16
   10e24:	fed76ae3          	bltu	a4,a3,10e18 <memset+0x24>
   10e28:	00061463          	bnez	a2,10e30 <memset+0x3c>
   10e2c:	00008067          	ret
   10e30:	40c306b3          	sub	a3,t1,a2
   10e34:	00269693          	slli	a3,a3,0x2
   10e38:	00000297          	auipc	t0,0x0
   10e3c:	005686b3          	add	a3,a3,t0
   10e40:	00c68067          	jr	12(a3)
   10e44:	00b70723          	sb	a1,14(a4)
   10e48:	00b706a3          	sb	a1,13(a4)
   10e4c:	00b70623          	sb	a1,12(a4)
   10e50:	00b705a3          	sb	a1,11(a4)
   10e54:	00b70523          	sb	a1,10(a4)
   10e58:	00b704a3          	sb	a1,9(a4)
   10e5c:	00b70423          	sb	a1,8(a4)
   10e60:	00b703a3          	sb	a1,7(a4)
   10e64:	00b70323          	sb	a1,6(a4)
   10e68:	00b702a3          	sb	a1,5(a4)
   10e6c:	00b70223          	sb	a1,4(a4)
   10e70:	00b701a3          	sb	a1,3(a4)
   10e74:	00b70123          	sb	a1,2(a4)
   10e78:	00b700a3          	sb	a1,1(a4)
   10e7c:	00b70023          	sb	a1,0(a4)
   10e80:	00008067          	ret
   10e84:	0ff5f593          	zext.b	a1,a1
   10e88:	00859693          	slli	a3,a1,0x8
   10e8c:	00d5e5b3          	or	a1,a1,a3
   10e90:	01059693          	slli	a3,a1,0x10
   10e94:	00d5e5b3          	or	a1,a1,a3
   10e98:	02059693          	slli	a3,a1,0x20
   10e9c:	00d5e5b3          	or	a1,a1,a3
   10ea0:	f6dff06f          	j	10e0c <memset+0x18>
   10ea4:	00279693          	slli	a3,a5,0x2
   10ea8:	00000297          	auipc	t0,0x0
   10eac:	005686b3          	add	a3,a3,t0
   10eb0:	00008293          	mv	t0,ra
   10eb4:	f98680e7          	jalr	-104(a3)
   10eb8:	00028093          	mv	ra,t0
   10ebc:	ff078793          	addi	a5,a5,-16
   10ec0:	40f70733          	sub	a4,a4,a5
   10ec4:	00f60633          	add	a2,a2,a5
   10ec8:	f6c374e3          	bgeu	t1,a2,10e30 <memset+0x3c>
   10ecc:	f3dff06f          	j	10e08 <memset+0x14>

0000000000010ed0 <__call_exitprocs>:
   10ed0:	fb010113          	addi	sp,sp,-80
   10ed4:	03413023          	sd	s4,32(sp)
   10ed8:	03213823          	sd	s2,48(sp)
   10edc:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10ee0:	04113423          	sd	ra,72(sp)
   10ee4:	06090e63          	beqz	s2,10f60 <__call_exitprocs+0x90>
   10ee8:	03313423          	sd	s3,40(sp)
   10eec:	01513c23          	sd	s5,24(sp)
   10ef0:	01613823          	sd	s6,16(sp)
   10ef4:	01713423          	sd	s7,8(sp)
   10ef8:	04813023          	sd	s0,64(sp)
   10efc:	02913c23          	sd	s1,56(sp)
   10f00:	01813023          	sd	s8,0(sp)
   10f04:	00050b13          	mv	s6,a0
   10f08:	00058b93          	mv	s7,a1
   10f0c:	fff00993          	li	s3,-1
   10f10:	00100a93          	li	s5,1
   10f14:	00892403          	lw	s0,8(s2)
   10f18:	fff4041b          	addiw	s0,s0,-1
   10f1c:	02044463          	bltz	s0,10f44 <__call_exitprocs+0x74>
   10f20:	01090493          	addi	s1,s2,16
   10f24:	00341793          	slli	a5,s0,0x3
   10f28:	00f484b3          	add	s1,s1,a5
   10f2c:	040b8463          	beqz	s7,10f74 <__call_exitprocs+0xa4>
   10f30:	2004b783          	ld	a5,512(s1)
   10f34:	05778063          	beq	a5,s7,10f74 <__call_exitprocs+0xa4>
   10f38:	fff4041b          	addiw	s0,s0,-1
   10f3c:	ff848493          	addi	s1,s1,-8
   10f40:	ff3418e3          	bne	s0,s3,10f30 <__call_exitprocs+0x60>
   10f44:	04013403          	ld	s0,64(sp)
   10f48:	03813483          	ld	s1,56(sp)
   10f4c:	02813983          	ld	s3,40(sp)
   10f50:	01813a83          	ld	s5,24(sp)
   10f54:	01013b03          	ld	s6,16(sp)
   10f58:	00813b83          	ld	s7,8(sp)
   10f5c:	00013c03          	ld	s8,0(sp)
   10f60:	04813083          	ld	ra,72(sp)
   10f64:	03013903          	ld	s2,48(sp)
   10f68:	02013a03          	ld	s4,32(sp)
   10f6c:	05010113          	addi	sp,sp,80
   10f70:	00008067          	ret
   10f74:	00892783          	lw	a5,8(s2)
   10f78:	0004b683          	ld	a3,0(s1)
   10f7c:	fff7879b          	addiw	a5,a5,-1
   10f80:	06878a63          	beq	a5,s0,10ff4 <__call_exitprocs+0x124>
   10f84:	0004b023          	sd	zero,0(s1)
   10f88:	02068663          	beqz	a3,10fb4 <__call_exitprocs+0xe4>
   10f8c:	31092783          	lw	a5,784(s2)
   10f90:	008a973b          	sllw	a4,s5,s0
   10f94:	00892c03          	lw	s8,8(s2)
   10f98:	00e7f7b3          	and	a5,a5,a4
   10f9c:	02079463          	bnez	a5,10fc4 <__call_exitprocs+0xf4>
   10fa0:	000680e7          	jalr	a3
   10fa4:	00892703          	lw	a4,8(s2)
   10fa8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10fac:	03871e63          	bne	a4,s8,10fe8 <__call_exitprocs+0x118>
   10fb0:	03279c63          	bne	a5,s2,10fe8 <__call_exitprocs+0x118>
   10fb4:	fff4041b          	addiw	s0,s0,-1
   10fb8:	ff848493          	addi	s1,s1,-8
   10fbc:	f73418e3          	bne	s0,s3,10f2c <__call_exitprocs+0x5c>
   10fc0:	f85ff06f          	j	10f44 <__call_exitprocs+0x74>
   10fc4:	31492783          	lw	a5,788(s2)
   10fc8:	1004b583          	ld	a1,256(s1)
   10fcc:	00f77733          	and	a4,a4,a5
   10fd0:	02071663          	bnez	a4,10ffc <__call_exitprocs+0x12c>
   10fd4:	000b0513          	mv	a0,s6
   10fd8:	000680e7          	jalr	a3
   10fdc:	00892703          	lw	a4,8(s2)
   10fe0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10fe4:	fd8706e3          	beq	a4,s8,10fb0 <__call_exitprocs+0xe0>
   10fe8:	f4078ee3          	beqz	a5,10f44 <__call_exitprocs+0x74>
   10fec:	00078913          	mv	s2,a5
   10ff0:	f25ff06f          	j	10f14 <__call_exitprocs+0x44>
   10ff4:	00892423          	sw	s0,8(s2)
   10ff8:	f91ff06f          	j	10f88 <__call_exitprocs+0xb8>
   10ffc:	00058513          	mv	a0,a1
   11000:	000680e7          	jalr	a3
   11004:	fa1ff06f          	j	10fa4 <__call_exitprocs+0xd4>

0000000000011008 <atexit>:
   11008:	00050593          	mv	a1,a0
   1100c:	00000693          	li	a3,0
   11010:	00000613          	li	a2,0
   11014:	00000513          	li	a0,0
   11018:	2340106f          	j	1224c <__register_exitproc>

000000000001101c <_malloc_trim_r>:
   1101c:	fd010113          	addi	sp,sp,-48
   11020:	01213823          	sd	s2,16(sp)
   11024:	00013937          	lui	s2,0x13
   11028:	02813023          	sd	s0,32(sp)
   1102c:	00913c23          	sd	s1,24(sp)
   11030:	01313423          	sd	s3,8(sp)
   11034:	00058413          	mv	s0,a1
   11038:	02113423          	sd	ra,40(sp)
   1103c:	00050993          	mv	s3,a0
   11040:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11044:	4e5000ef          	jal	11d28 <__malloc_lock>
   11048:	01093783          	ld	a5,16(s2)
   1104c:	00001737          	lui	a4,0x1
   11050:	0087b483          	ld	s1,8(a5)
   11054:	ffc4f493          	andi	s1,s1,-4
   11058:	7ff48793          	addi	a5,s1,2047
   1105c:	7e078793          	addi	a5,a5,2016
   11060:	40878433          	sub	s0,a5,s0
   11064:	00c45413          	srli	s0,s0,0xc
   11068:	fff40413          	addi	s0,s0,-1
   1106c:	00c41413          	slli	s0,s0,0xc
   11070:	00e44e63          	blt	s0,a4,1108c <_malloc_trim_r+0x70>
   11074:	00000593          	li	a1,0
   11078:	00098513          	mv	a0,s3
   1107c:	118010ef          	jal	12194 <_sbrk_r>
   11080:	01093783          	ld	a5,16(s2)
   11084:	009787b3          	add	a5,a5,s1
   11088:	02f50663          	beq	a0,a5,110b4 <_malloc_trim_r+0x98>
   1108c:	00098513          	mv	a0,s3
   11090:	49d000ef          	jal	11d2c <__malloc_unlock>
   11094:	02813083          	ld	ra,40(sp)
   11098:	02013403          	ld	s0,32(sp)
   1109c:	01813483          	ld	s1,24(sp)
   110a0:	01013903          	ld	s2,16(sp)
   110a4:	00813983          	ld	s3,8(sp)
   110a8:	00000513          	li	a0,0
   110ac:	03010113          	addi	sp,sp,48
   110b0:	00008067          	ret
   110b4:	408005b3          	neg	a1,s0
   110b8:	00098513          	mv	a0,s3
   110bc:	0d8010ef          	jal	12194 <_sbrk_r>
   110c0:	fff00793          	li	a5,-1
   110c4:	04f50463          	beq	a0,a5,1110c <_malloc_trim_r+0xf0>
   110c8:	01093683          	ld	a3,16(s2)
   110cc:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   110d0:	408484b3          	sub	s1,s1,s0
   110d4:	0014e493          	ori	s1,s1,1
   110d8:	00098513          	mv	a0,s3
   110dc:	408787bb          	subw	a5,a5,s0
   110e0:	0096b423          	sd	s1,8(a3)
   110e4:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   110e8:	445000ef          	jal	11d2c <__malloc_unlock>
   110ec:	02813083          	ld	ra,40(sp)
   110f0:	02013403          	ld	s0,32(sp)
   110f4:	01813483          	ld	s1,24(sp)
   110f8:	01013903          	ld	s2,16(sp)
   110fc:	00813983          	ld	s3,8(sp)
   11100:	00100513          	li	a0,1
   11104:	03010113          	addi	sp,sp,48
   11108:	00008067          	ret
   1110c:	00000593          	li	a1,0
   11110:	00098513          	mv	a0,s3
   11114:	080010ef          	jal	12194 <_sbrk_r>
   11118:	01093703          	ld	a4,16(s2)
   1111c:	01f00693          	li	a3,31
   11120:	40e507b3          	sub	a5,a0,a4
   11124:	f6f6d4e3          	bge	a3,a5,1108c <_malloc_trim_r+0x70>
   11128:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1112c:	0017e793          	ori	a5,a5,1
   11130:	40c50533          	sub	a0,a0,a2
   11134:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11138:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1113c:	f51ff06f          	j	1108c <_malloc_trim_r+0x70>

0000000000011140 <_free_r>:
   11140:	12058863          	beqz	a1,11270 <_free_r+0x130>
   11144:	fe010113          	addi	sp,sp,-32
   11148:	00813823          	sd	s0,16(sp)
   1114c:	00b13423          	sd	a1,8(sp)
   11150:	00050413          	mv	s0,a0
   11154:	00113c23          	sd	ra,24(sp)
   11158:	3d1000ef          	jal	11d28 <__malloc_lock>
   1115c:	00813583          	ld	a1,8(sp)
   11160:	00013837          	lui	a6,0x13
   11164:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11168:	ff85b503          	ld	a0,-8(a1)
   1116c:	ff058713          	addi	a4,a1,-16
   11170:	01083883          	ld	a7,16(a6)
   11174:	ffe57793          	andi	a5,a0,-2
   11178:	00f70633          	add	a2,a4,a5
   1117c:	00863683          	ld	a3,8(a2)
   11180:	00157313          	andi	t1,a0,1
   11184:	ffc6f693          	andi	a3,a3,-4
   11188:	18c88e63          	beq	a7,a2,11324 <_free_r+0x1e4>
   1118c:	00d63423          	sd	a3,8(a2)
   11190:	00d608b3          	add	a7,a2,a3
   11194:	0088b883          	ld	a7,8(a7)
   11198:	0018f893          	andi	a7,a7,1
   1119c:	08031e63          	bnez	t1,11238 <_free_r+0xf8>
   111a0:	ff05b303          	ld	t1,-16(a1)
   111a4:	000135b7          	lui	a1,0x13
   111a8:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   111ac:	40670733          	sub	a4,a4,t1
   111b0:	01073503          	ld	a0,16(a4)
   111b4:	006787b3          	add	a5,a5,t1
   111b8:	14b50063          	beq	a0,a1,112f8 <_free_r+0x1b8>
   111bc:	01873303          	ld	t1,24(a4)
   111c0:	00653c23          	sd	t1,24(a0)
   111c4:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   111c8:	1a088263          	beqz	a7,1136c <_free_r+0x22c>
   111cc:	0017e693          	ori	a3,a5,1
   111d0:	00d73423          	sd	a3,8(a4)
   111d4:	00f63023          	sd	a5,0(a2)
   111d8:	1ff00693          	li	a3,511
   111dc:	0af6e663          	bltu	a3,a5,11288 <_free_r+0x148>
   111e0:	0037d793          	srli	a5,a5,0x3
   111e4:	00179693          	slli	a3,a5,0x1
   111e8:	0026869b          	addiw	a3,a3,2
   111ec:	00369693          	slli	a3,a3,0x3
   111f0:	00883503          	ld	a0,8(a6)
   111f4:	00d806b3          	add	a3,a6,a3
   111f8:	0006b583          	ld	a1,0(a3)
   111fc:	4027d61b          	sraiw	a2,a5,0x2
   11200:	00100793          	li	a5,1
   11204:	00c797b3          	sll	a5,a5,a2
   11208:	00a7e7b3          	or	a5,a5,a0
   1120c:	ff068613          	addi	a2,a3,-16
   11210:	00b73823          	sd	a1,16(a4)
   11214:	00c73c23          	sd	a2,24(a4)
   11218:	00f83423          	sd	a5,8(a6)
   1121c:	00e6b023          	sd	a4,0(a3)
   11220:	00e5bc23          	sd	a4,24(a1)
   11224:	00040513          	mv	a0,s0
   11228:	01013403          	ld	s0,16(sp)
   1122c:	01813083          	ld	ra,24(sp)
   11230:	02010113          	addi	sp,sp,32
   11234:	2f90006f          	j	11d2c <__malloc_unlock>
   11238:	02089e63          	bnez	a7,11274 <_free_r+0x134>
   1123c:	000135b7          	lui	a1,0x13
   11240:	00d787b3          	add	a5,a5,a3
   11244:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11248:	01063683          	ld	a3,16(a2)
   1124c:	0017e893          	ori	a7,a5,1
   11250:	00f70533          	add	a0,a4,a5
   11254:	16b68663          	beq	a3,a1,113c0 <_free_r+0x280>
   11258:	01863603          	ld	a2,24(a2)
   1125c:	00c6bc23          	sd	a2,24(a3)
   11260:	00d63823          	sd	a3,16(a2)
   11264:	01173423          	sd	a7,8(a4)
   11268:	00f53023          	sd	a5,0(a0)
   1126c:	f6dff06f          	j	111d8 <_free_r+0x98>
   11270:	00008067          	ret
   11274:	00156513          	ori	a0,a0,1
   11278:	fea5bc23          	sd	a0,-8(a1)
   1127c:	00f63023          	sd	a5,0(a2)
   11280:	1ff00693          	li	a3,511
   11284:	f4f6fee3          	bgeu	a3,a5,111e0 <_free_r+0xa0>
   11288:	0097d693          	srli	a3,a5,0x9
   1128c:	00400613          	li	a2,4
   11290:	0ed66263          	bltu	a2,a3,11374 <_free_r+0x234>
   11294:	0067d693          	srli	a3,a5,0x6
   11298:	00169593          	slli	a1,a3,0x1
   1129c:	0725859b          	addiw	a1,a1,114
   112a0:	00359593          	slli	a1,a1,0x3
   112a4:	0386861b          	addiw	a2,a3,56
   112a8:	00b805b3          	add	a1,a6,a1
   112ac:	0005b683          	ld	a3,0(a1)
   112b0:	ff058593          	addi	a1,a1,-16
   112b4:	00d59863          	bne	a1,a3,112c4 <_free_r+0x184>
   112b8:	1240006f          	j	113dc <_free_r+0x29c>
   112bc:	0106b683          	ld	a3,16(a3)
   112c0:	00d58863          	beq	a1,a3,112d0 <_free_r+0x190>
   112c4:	0086b603          	ld	a2,8(a3)
   112c8:	ffc67613          	andi	a2,a2,-4
   112cc:	fec7e8e3          	bltu	a5,a2,112bc <_free_r+0x17c>
   112d0:	0186b583          	ld	a1,24(a3)
   112d4:	00b73c23          	sd	a1,24(a4)
   112d8:	00d73823          	sd	a3,16(a4)
   112dc:	00040513          	mv	a0,s0
   112e0:	01013403          	ld	s0,16(sp)
   112e4:	01813083          	ld	ra,24(sp)
   112e8:	00e5b823          	sd	a4,16(a1)
   112ec:	00e6bc23          	sd	a4,24(a3)
   112f0:	02010113          	addi	sp,sp,32
   112f4:	2390006f          	j	11d2c <__malloc_unlock>
   112f8:	0a089263          	bnez	a7,1139c <_free_r+0x25c>
   112fc:	01863583          	ld	a1,24(a2)
   11300:	01063603          	ld	a2,16(a2)
   11304:	00f686b3          	add	a3,a3,a5
   11308:	0016e793          	ori	a5,a3,1
   1130c:	00b63c23          	sd	a1,24(a2)
   11310:	00c5b823          	sd	a2,16(a1)
   11314:	00f73423          	sd	a5,8(a4)
   11318:	00d70733          	add	a4,a4,a3
   1131c:	00d73023          	sd	a3,0(a4)
   11320:	f05ff06f          	j	11224 <_free_r+0xe4>
   11324:	00d786b3          	add	a3,a5,a3
   11328:	02031063          	bnez	t1,11348 <_free_r+0x208>
   1132c:	ff05b783          	ld	a5,-16(a1)
   11330:	40f70733          	sub	a4,a4,a5
   11334:	01073603          	ld	a2,16(a4)
   11338:	00f686b3          	add	a3,a3,a5
   1133c:	01873783          	ld	a5,24(a4)
   11340:	00f63c23          	sd	a5,24(a2)
   11344:	00c7b823          	sd	a2,16(a5)
   11348:	0016e613          	ori	a2,a3,1
   1134c:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11350:	00c73423          	sd	a2,8(a4)
   11354:	00e83823          	sd	a4,16(a6)
   11358:	ecf6e6e3          	bltu	a3,a5,11224 <_free_r+0xe4>
   1135c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11360:	00040513          	mv	a0,s0
   11364:	cb9ff0ef          	jal	1101c <_malloc_trim_r>
   11368:	ebdff06f          	j	11224 <_free_r+0xe4>
   1136c:	00d787b3          	add	a5,a5,a3
   11370:	ed9ff06f          	j	11248 <_free_r+0x108>
   11374:	01400613          	li	a2,20
   11378:	02d67a63          	bgeu	a2,a3,113ac <_free_r+0x26c>
   1137c:	05400613          	li	a2,84
   11380:	06d66c63          	bltu	a2,a3,113f8 <_free_r+0x2b8>
   11384:	00c7d693          	srli	a3,a5,0xc
   11388:	00169593          	slli	a1,a3,0x1
   1138c:	0de5859b          	addiw	a1,a1,222
   11390:	00359593          	slli	a1,a1,0x3
   11394:	06e6861b          	addiw	a2,a3,110
   11398:	f11ff06f          	j	112a8 <_free_r+0x168>
   1139c:	0017e693          	ori	a3,a5,1
   113a0:	00d73423          	sd	a3,8(a4)
   113a4:	00f63023          	sd	a5,0(a2)
   113a8:	e7dff06f          	j	11224 <_free_r+0xe4>
   113ac:	00169593          	slli	a1,a3,0x1
   113b0:	0b85859b          	addiw	a1,a1,184
   113b4:	00359593          	slli	a1,a1,0x3
   113b8:	05b6861b          	addiw	a2,a3,91
   113bc:	eedff06f          	j	112a8 <_free_r+0x168>
   113c0:	02e83423          	sd	a4,40(a6)
   113c4:	02e83023          	sd	a4,32(a6)
   113c8:	00b73c23          	sd	a1,24(a4)
   113cc:	00b73823          	sd	a1,16(a4)
   113d0:	01173423          	sd	a7,8(a4)
   113d4:	00f53023          	sd	a5,0(a0)
   113d8:	e4dff06f          	j	11224 <_free_r+0xe4>
   113dc:	00883503          	ld	a0,8(a6)
   113e0:	4026561b          	sraiw	a2,a2,0x2
   113e4:	00100793          	li	a5,1
   113e8:	00c797b3          	sll	a5,a5,a2
   113ec:	00a7e7b3          	or	a5,a5,a0
   113f0:	00f83423          	sd	a5,8(a6)
   113f4:	ee1ff06f          	j	112d4 <_free_r+0x194>
   113f8:	15400613          	li	a2,340
   113fc:	00d66e63          	bltu	a2,a3,11418 <_free_r+0x2d8>
   11400:	00f7d693          	srli	a3,a5,0xf
   11404:	00169593          	slli	a1,a3,0x1
   11408:	0f05859b          	addiw	a1,a1,240
   1140c:	00359593          	slli	a1,a1,0x3
   11410:	0776861b          	addiw	a2,a3,119
   11414:	e95ff06f          	j	112a8 <_free_r+0x168>
   11418:	55400613          	li	a2,1364
   1141c:	00d66e63          	bltu	a2,a3,11438 <_free_r+0x2f8>
   11420:	0127d693          	srli	a3,a5,0x12
   11424:	00169593          	slli	a1,a3,0x1
   11428:	0fa5859b          	addiw	a1,a1,250
   1142c:	00359593          	slli	a1,a1,0x3
   11430:	07c6861b          	addiw	a2,a3,124
   11434:	e75ff06f          	j	112a8 <_free_r+0x168>
   11438:	7f000593          	li	a1,2032
   1143c:	07e00613          	li	a2,126
   11440:	e69ff06f          	j	112a8 <_free_r+0x168>

0000000000011444 <_malloc_r>:
   11444:	fa010113          	addi	sp,sp,-96
   11448:	04813823          	sd	s0,80(sp)
   1144c:	04113c23          	sd	ra,88(sp)
   11450:	01758713          	addi	a4,a1,23
   11454:	02e00793          	li	a5,46
   11458:	00050413          	mv	s0,a0
   1145c:	08e7ee63          	bltu	a5,a4,114f8 <_malloc_r+0xb4>
   11460:	02000713          	li	a4,32
   11464:	06b76c63          	bltu	a4,a1,114dc <_malloc_r+0x98>
   11468:	0c1000ef          	jal	11d28 <__malloc_lock>
   1146c:	02000713          	li	a4,32
   11470:	05000693          	li	a3,80
   11474:	00400893          	li	a7,4
   11478:	00013837          	lui	a6,0x13
   1147c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11480:	00d806b3          	add	a3,a6,a3
   11484:	0086b783          	ld	a5,8(a3)
   11488:	ff068613          	addi	a2,a3,-16
   1148c:	48c78063          	beq	a5,a2,1190c <_malloc_r+0x4c8>
   11490:	0087b703          	ld	a4,8(a5)
   11494:	0187b603          	ld	a2,24(a5)
   11498:	0107b583          	ld	a1,16(a5)
   1149c:	ffc77713          	andi	a4,a4,-4
   114a0:	00e78733          	add	a4,a5,a4
   114a4:	00873683          	ld	a3,8(a4)
   114a8:	00c5bc23          	sd	a2,24(a1)
   114ac:	00b63823          	sd	a1,16(a2)
   114b0:	0016e693          	ori	a3,a3,1
   114b4:	00040513          	mv	a0,s0
   114b8:	00d73423          	sd	a3,8(a4)
   114bc:	00f13423          	sd	a5,8(sp)
   114c0:	06d000ef          	jal	11d2c <__malloc_unlock>
   114c4:	00813783          	ld	a5,8(sp)
   114c8:	05813083          	ld	ra,88(sp)
   114cc:	05013403          	ld	s0,80(sp)
   114d0:	01078513          	addi	a0,a5,16
   114d4:	06010113          	addi	sp,sp,96
   114d8:	00008067          	ret
   114dc:	00c00793          	li	a5,12
   114e0:	00f42023          	sw	a5,0(s0)
   114e4:	00000513          	li	a0,0
   114e8:	05813083          	ld	ra,88(sp)
   114ec:	05013403          	ld	s0,80(sp)
   114f0:	06010113          	addi	sp,sp,96
   114f4:	00008067          	ret
   114f8:	00100793          	li	a5,1
   114fc:	ff077713          	andi	a4,a4,-16
   11500:	01f79793          	slli	a5,a5,0x1f
   11504:	fcf77ce3          	bgeu	a4,a5,114dc <_malloc_r+0x98>
   11508:	fcb76ae3          	bltu	a4,a1,114dc <_malloc_r+0x98>
   1150c:	00e13423          	sd	a4,8(sp)
   11510:	019000ef          	jal	11d28 <__malloc_lock>
   11514:	00813703          	ld	a4,8(sp)
   11518:	1f700793          	li	a5,503
   1151c:	4ee7fa63          	bgeu	a5,a4,11a10 <_malloc_r+0x5cc>
   11520:	00975793          	srli	a5,a4,0x9
   11524:	18078a63          	beqz	a5,116b8 <_malloc_r+0x274>
   11528:	00400693          	li	a3,4
   1152c:	44f6ea63          	bltu	a3,a5,11980 <_malloc_r+0x53c>
   11530:	00675793          	srli	a5,a4,0x6
   11534:	0397889b          	addiw	a7,a5,57
   11538:	0018951b          	slliw	a0,a7,0x1
   1153c:	03878e1b          	addiw	t3,a5,56
   11540:	00351513          	slli	a0,a0,0x3
   11544:	00013837          	lui	a6,0x13
   11548:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1154c:	00a80533          	add	a0,a6,a0
   11550:	00853783          	ld	a5,8(a0)
   11554:	ff050513          	addi	a0,a0,-16
   11558:	02f50863          	beq	a0,a5,11588 <_malloc_r+0x144>
   1155c:	01f00313          	li	t1,31
   11560:	0140006f          	j	11574 <_malloc_r+0x130>
   11564:	0187b583          	ld	a1,24(a5)
   11568:	36065263          	bgez	a2,118cc <_malloc_r+0x488>
   1156c:	00b50e63          	beq	a0,a1,11588 <_malloc_r+0x144>
   11570:	00058793          	mv	a5,a1
   11574:	0087b683          	ld	a3,8(a5)
   11578:	ffc6f693          	andi	a3,a3,-4
   1157c:	40e68633          	sub	a2,a3,a4
   11580:	fec352e3          	bge	t1,a2,11564 <_malloc_r+0x120>
   11584:	000e0893          	mv	a7,t3
   11588:	02083783          	ld	a5,32(a6)
   1158c:	00013e37          	lui	t3,0x13
   11590:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11594:	2fc78a63          	beq	a5,t3,11888 <_malloc_r+0x444>
   11598:	0087b303          	ld	t1,8(a5)
   1159c:	01f00613          	li	a2,31
   115a0:	ffc37313          	andi	t1,t1,-4
   115a4:	40e306b3          	sub	a3,t1,a4
   115a8:	4ad64463          	blt	a2,a3,11a50 <_malloc_r+0x60c>
   115ac:	03c83423          	sd	t3,40(a6)
   115b0:	03c83023          	sd	t3,32(a6)
   115b4:	4606da63          	bgez	a3,11a28 <_malloc_r+0x5e4>
   115b8:	1ff00693          	li	a3,511
   115bc:	00883583          	ld	a1,8(a6)
   115c0:	3466ee63          	bltu	a3,t1,1191c <_malloc_r+0x4d8>
   115c4:	00335313          	srli	t1,t1,0x3
   115c8:	00131693          	slli	a3,t1,0x1
   115cc:	0026869b          	addiw	a3,a3,2
   115d0:	00369693          	slli	a3,a3,0x3
   115d4:	00d806b3          	add	a3,a6,a3
   115d8:	0006b503          	ld	a0,0(a3)
   115dc:	4023531b          	sraiw	t1,t1,0x2
   115e0:	00100613          	li	a2,1
   115e4:	00661633          	sll	a2,a2,t1
   115e8:	00c5e5b3          	or	a1,a1,a2
   115ec:	ff068613          	addi	a2,a3,-16
   115f0:	00a7b823          	sd	a0,16(a5)
   115f4:	00c7bc23          	sd	a2,24(a5)
   115f8:	00b83423          	sd	a1,8(a6)
   115fc:	00f6b023          	sd	a5,0(a3)
   11600:	00f53c23          	sd	a5,24(a0)
   11604:	4028d79b          	sraiw	a5,a7,0x2
   11608:	00100513          	li	a0,1
   1160c:	00f51533          	sll	a0,a0,a5
   11610:	0aa5ec63          	bltu	a1,a0,116c8 <_malloc_r+0x284>
   11614:	00b577b3          	and	a5,a0,a1
   11618:	02079463          	bnez	a5,11640 <_malloc_r+0x1fc>
   1161c:	00151513          	slli	a0,a0,0x1
   11620:	ffc8f893          	andi	a7,a7,-4
   11624:	00b577b3          	and	a5,a0,a1
   11628:	0048889b          	addiw	a7,a7,4
   1162c:	00079a63          	bnez	a5,11640 <_malloc_r+0x1fc>
   11630:	00151513          	slli	a0,a0,0x1
   11634:	00b577b3          	and	a5,a0,a1
   11638:	0048889b          	addiw	a7,a7,4
   1163c:	fe078ae3          	beqz	a5,11630 <_malloc_r+0x1ec>
   11640:	01f00e93          	li	t4,31
   11644:	00189f13          	slli	t5,a7,0x1
   11648:	002f0f1b          	addiw	t5,t5,2
   1164c:	003f1f13          	slli	t5,t5,0x3
   11650:	ff0f0f13          	addi	t5,t5,-16
   11654:	01e80f33          	add	t5,a6,t5
   11658:	000f0313          	mv	t1,t5
   1165c:	01833683          	ld	a3,24(t1)
   11660:	00088f93          	mv	t6,a7
   11664:	34d30263          	beq	t1,a3,119a8 <_malloc_r+0x564>
   11668:	0086b603          	ld	a2,8(a3)
   1166c:	00068793          	mv	a5,a3
   11670:	0186b683          	ld	a3,24(a3)
   11674:	ffc67613          	andi	a2,a2,-4
   11678:	40e605b3          	sub	a1,a2,a4
   1167c:	34bec263          	blt	t4,a1,119c0 <_malloc_r+0x57c>
   11680:	fe05c2e3          	bltz	a1,11664 <_malloc_r+0x220>
   11684:	00c78633          	add	a2,a5,a2
   11688:	00863703          	ld	a4,8(a2)
   1168c:	0107b583          	ld	a1,16(a5)
   11690:	00040513          	mv	a0,s0
   11694:	00176713          	ori	a4,a4,1
   11698:	00e63423          	sd	a4,8(a2)
   1169c:	00d5bc23          	sd	a3,24(a1)
   116a0:	00b6b823          	sd	a1,16(a3)
   116a4:	00f13423          	sd	a5,8(sp)
   116a8:	684000ef          	jal	11d2c <__malloc_unlock>
   116ac:	00813783          	ld	a5,8(sp)
   116b0:	01078513          	addi	a0,a5,16
   116b4:	e35ff06f          	j	114e8 <_malloc_r+0xa4>
   116b8:	40000513          	li	a0,1024
   116bc:	04000893          	li	a7,64
   116c0:	03f00e13          	li	t3,63
   116c4:	e81ff06f          	j	11544 <_malloc_r+0x100>
   116c8:	01083783          	ld	a5,16(a6)
   116cc:	0087b683          	ld	a3,8(a5)
   116d0:	ffc6f893          	andi	a7,a3,-4
   116d4:	40e88633          	sub	a2,a7,a4
   116d8:	00e8e663          	bltu	a7,a4,116e4 <_malloc_r+0x2a0>
   116dc:	02062693          	slti	a3,a2,32
   116e0:	1a068863          	beqz	a3,11890 <_malloc_r+0x44c>
   116e4:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   116e8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   116ec:	fff00693          	li	a3,-1
   116f0:	00b705b3          	add	a1,a4,a1
   116f4:	44d60663          	beq	a2,a3,11b40 <_malloc_r+0x6fc>
   116f8:	000016b7          	lui	a3,0x1
   116fc:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11700:	00d585b3          	add	a1,a1,a3
   11704:	fffff6b7          	lui	a3,0xfffff
   11708:	00d5f5b3          	and	a1,a1,a3
   1170c:	00040513          	mv	a0,s0
   11710:	03013423          	sd	a6,40(sp)
   11714:	02f13023          	sd	a5,32(sp)
   11718:	00e13c23          	sd	a4,24(sp)
   1171c:	01113823          	sd	a7,16(sp)
   11720:	00b13423          	sd	a1,8(sp)
   11724:	271000ef          	jal	12194 <_sbrk_r>
   11728:	fff00693          	li	a3,-1
   1172c:	00813583          	ld	a1,8(sp)
   11730:	01013883          	ld	a7,16(sp)
   11734:	01813703          	ld	a4,24(sp)
   11738:	02013783          	ld	a5,32(sp)
   1173c:	02813803          	ld	a6,40(sp)
   11740:	00050313          	mv	t1,a0
   11744:	36d50663          	beq	a0,a3,11ab0 <_malloc_r+0x66c>
   11748:	011786b3          	add	a3,a5,a7
   1174c:	36d56063          	bltu	a0,a3,11aac <_malloc_r+0x668>
   11750:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11754:	000e2603          	lw	a2,0(t3)
   11758:	00b6063b          	addw	a2,a2,a1
   1175c:	00ce2023          	sw	a2,0(t3)
   11760:	00060513          	mv	a0,a2
   11764:	4a668c63          	beq	a3,t1,11c1c <_malloc_r+0x7d8>
   11768:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1176c:	fff00613          	li	a2,-1
   11770:	4ccf0463          	beq	t5,a2,11c38 <_malloc_r+0x7f4>
   11774:	40d306b3          	sub	a3,t1,a3
   11778:	00a686bb          	addw	a3,a3,a0
   1177c:	00de2023          	sw	a3,0(t3)
   11780:	00f37e93          	andi	t4,t1,15
   11784:	3c0e8e63          	beqz	t4,11b60 <_malloc_r+0x71c>
   11788:	ff037313          	andi	t1,t1,-16
   1178c:	000016b7          	lui	a3,0x1
   11790:	01030313          	addi	t1,t1,16
   11794:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11798:	00b30633          	add	a2,t1,a1
   1179c:	41d685b3          	sub	a1,a3,t4
   117a0:	40c585b3          	sub	a1,a1,a2
   117a4:	03459593          	slli	a1,a1,0x34
   117a8:	0345d593          	srli	a1,a1,0x34
   117ac:	00040513          	mv	a0,s0
   117b0:	05c13023          	sd	t3,64(sp)
   117b4:	03013c23          	sd	a6,56(sp)
   117b8:	02f13823          	sd	a5,48(sp)
   117bc:	02e13423          	sd	a4,40(sp)
   117c0:	03113023          	sd	a7,32(sp)
   117c4:	00613c23          	sd	t1,24(sp)
   117c8:	01d13823          	sd	t4,16(sp)
   117cc:	00c13423          	sd	a2,8(sp)
   117d0:	04b13423          	sd	a1,72(sp)
   117d4:	1c1000ef          	jal	12194 <_sbrk_r>
   117d8:	00050693          	mv	a3,a0
   117dc:	fff00513          	li	a0,-1
   117e0:	00813603          	ld	a2,8(sp)
   117e4:	01013e83          	ld	t4,16(sp)
   117e8:	01813303          	ld	t1,24(sp)
   117ec:	02013883          	ld	a7,32(sp)
   117f0:	02813703          	ld	a4,40(sp)
   117f4:	03013783          	ld	a5,48(sp)
   117f8:	03813803          	ld	a6,56(sp)
   117fc:	04013e03          	ld	t3,64(sp)
   11800:	48a68663          	beq	a3,a0,11c8c <_malloc_r+0x848>
   11804:	04813583          	ld	a1,72(sp)
   11808:	0005851b          	sext.w	a0,a1
   1180c:	000e2603          	lw	a2,0(t3)
   11810:	406686b3          	sub	a3,a3,t1
   11814:	00b686b3          	add	a3,a3,a1
   11818:	0016e693          	ori	a3,a3,1
   1181c:	00683823          	sd	t1,16(a6)
   11820:	00a6063b          	addw	a2,a2,a0
   11824:	00d33423          	sd	a3,8(t1)
   11828:	00ce2023          	sw	a2,0(t3)
   1182c:	03078e63          	beq	a5,a6,11868 <_malloc_r+0x424>
   11830:	01f00513          	li	a0,31
   11834:	41157663          	bgeu	a0,a7,11c40 <_malloc_r+0x7fc>
   11838:	0087b583          	ld	a1,8(a5)
   1183c:	fe888693          	addi	a3,a7,-24
   11840:	ff06f693          	andi	a3,a3,-16
   11844:	0015f593          	andi	a1,a1,1
   11848:	00d5e5b3          	or	a1,a1,a3
   1184c:	00b7b423          	sd	a1,8(a5)
   11850:	00900893          	li	a7,9
   11854:	00d785b3          	add	a1,a5,a3
   11858:	0115b423          	sd	a7,8(a1)
   1185c:	0115b823          	sd	a7,16(a1)
   11860:	44d56863          	bltu	a0,a3,11cb0 <_malloc_r+0x86c>
   11864:	00833683          	ld	a3,8(t1)
   11868:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1186c:	00c5f463          	bgeu	a1,a2,11874 <_malloc_r+0x430>
   11870:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11874:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11878:	00c5f463          	bgeu	a1,a2,11880 <_malloc_r+0x43c>
   1187c:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11880:	00030793          	mv	a5,t1
   11884:	2340006f          	j	11ab8 <_malloc_r+0x674>
   11888:	00883583          	ld	a1,8(a6)
   1188c:	d79ff06f          	j	11604 <_malloc_r+0x1c0>
   11890:	00176693          	ori	a3,a4,1
   11894:	00d7b423          	sd	a3,8(a5)
   11898:	00e78733          	add	a4,a5,a4
   1189c:	00166613          	ori	a2,a2,1
   118a0:	00e83823          	sd	a4,16(a6)
   118a4:	00040513          	mv	a0,s0
   118a8:	00c73423          	sd	a2,8(a4)
   118ac:	00f13423          	sd	a5,8(sp)
   118b0:	47c000ef          	jal	11d2c <__malloc_unlock>
   118b4:	00813783          	ld	a5,8(sp)
   118b8:	05813083          	ld	ra,88(sp)
   118bc:	05013403          	ld	s0,80(sp)
   118c0:	01078513          	addi	a0,a5,16
   118c4:	06010113          	addi	sp,sp,96
   118c8:	00008067          	ret
   118cc:	0107b603          	ld	a2,16(a5)
   118d0:	00d786b3          	add	a3,a5,a3
   118d4:	0086b703          	ld	a4,8(a3)
   118d8:	00b63c23          	sd	a1,24(a2)
   118dc:	00c5b823          	sd	a2,16(a1)
   118e0:	00176713          	ori	a4,a4,1
   118e4:	00040513          	mv	a0,s0
   118e8:	00e6b423          	sd	a4,8(a3)
   118ec:	00f13423          	sd	a5,8(sp)
   118f0:	43c000ef          	jal	11d2c <__malloc_unlock>
   118f4:	00813783          	ld	a5,8(sp)
   118f8:	05813083          	ld	ra,88(sp)
   118fc:	05013403          	ld	s0,80(sp)
   11900:	01078513          	addi	a0,a5,16
   11904:	06010113          	addi	sp,sp,96
   11908:	00008067          	ret
   1190c:	0186b783          	ld	a5,24(a3)
   11910:	0028889b          	addiw	a7,a7,2
   11914:	c6f68ae3          	beq	a3,a5,11588 <_malloc_r+0x144>
   11918:	b79ff06f          	j	11490 <_malloc_r+0x4c>
   1191c:	00935693          	srli	a3,t1,0x9
   11920:	00400613          	li	a2,4
   11924:	16d67863          	bgeu	a2,a3,11a94 <_malloc_r+0x650>
   11928:	01400613          	li	a2,20
   1192c:	28d66e63          	bltu	a2,a3,11bc8 <_malloc_r+0x784>
   11930:	00169513          	slli	a0,a3,0x1
   11934:	0b85051b          	addiw	a0,a0,184
   11938:	00351513          	slli	a0,a0,0x3
   1193c:	05b6861b          	addiw	a2,a3,91
   11940:	00a80533          	add	a0,a6,a0
   11944:	00053683          	ld	a3,0(a0)
   11948:	ff050513          	addi	a0,a0,-16
   1194c:	00d51863          	bne	a0,a3,1195c <_malloc_r+0x518>
   11950:	1f80006f          	j	11b48 <_malloc_r+0x704>
   11954:	0106b683          	ld	a3,16(a3)
   11958:	00d50863          	beq	a0,a3,11968 <_malloc_r+0x524>
   1195c:	0086b603          	ld	a2,8(a3)
   11960:	ffc67613          	andi	a2,a2,-4
   11964:	fec368e3          	bltu	t1,a2,11954 <_malloc_r+0x510>
   11968:	0186b503          	ld	a0,24(a3)
   1196c:	00a7bc23          	sd	a0,24(a5)
   11970:	00d7b823          	sd	a3,16(a5)
   11974:	00f53823          	sd	a5,16(a0)
   11978:	00f6bc23          	sd	a5,24(a3)
   1197c:	c89ff06f          	j	11604 <_malloc_r+0x1c0>
   11980:	01400693          	li	a3,20
   11984:	14f6fa63          	bgeu	a3,a5,11ad8 <_malloc_r+0x694>
   11988:	05400693          	li	a3,84
   1198c:	24f6ee63          	bltu	a3,a5,11be8 <_malloc_r+0x7a4>
   11990:	00c75793          	srli	a5,a4,0xc
   11994:	06f7889b          	addiw	a7,a5,111
   11998:	0018951b          	slliw	a0,a7,0x1
   1199c:	06e78e1b          	addiw	t3,a5,110
   119a0:	00351513          	slli	a0,a0,0x3
   119a4:	ba1ff06f          	j	11544 <_malloc_r+0x100>
   119a8:	001f8f9b          	addiw	t6,t6,1
   119ac:	003ff793          	andi	a5,t6,3
   119b0:	01030313          	addi	t1,t1,16
   119b4:	14078263          	beqz	a5,11af8 <_malloc_r+0x6b4>
   119b8:	01833683          	ld	a3,24(t1)
   119bc:	ca9ff06f          	j	11664 <_malloc_r+0x220>
   119c0:	0107b503          	ld	a0,16(a5)
   119c4:	00176893          	ori	a7,a4,1
   119c8:	0117b423          	sd	a7,8(a5)
   119cc:	00d53c23          	sd	a3,24(a0)
   119d0:	00a6b823          	sd	a0,16(a3)
   119d4:	00e78733          	add	a4,a5,a4
   119d8:	02e83423          	sd	a4,40(a6)
   119dc:	02e83023          	sd	a4,32(a6)
   119e0:	0015e693          	ori	a3,a1,1
   119e4:	00c78633          	add	a2,a5,a2
   119e8:	01c73c23          	sd	t3,24(a4)
   119ec:	01c73823          	sd	t3,16(a4)
   119f0:	00d73423          	sd	a3,8(a4)
   119f4:	00040513          	mv	a0,s0
   119f8:	00b63023          	sd	a1,0(a2)
   119fc:	00f13423          	sd	a5,8(sp)
   11a00:	32c000ef          	jal	11d2c <__malloc_unlock>
   11a04:	00813783          	ld	a5,8(sp)
   11a08:	01078513          	addi	a0,a5,16
   11a0c:	addff06f          	j	114e8 <_malloc_r+0xa4>
   11a10:	00375893          	srli	a7,a4,0x3
   11a14:	00189693          	slli	a3,a7,0x1
   11a18:	0026869b          	addiw	a3,a3,2
   11a1c:	00369693          	slli	a3,a3,0x3
   11a20:	0008889b          	sext.w	a7,a7
   11a24:	a55ff06f          	j	11478 <_malloc_r+0x34>
   11a28:	00678333          	add	t1,a5,t1
   11a2c:	00833703          	ld	a4,8(t1)
   11a30:	00040513          	mv	a0,s0
   11a34:	00f13423          	sd	a5,8(sp)
   11a38:	00176713          	ori	a4,a4,1
   11a3c:	00e33423          	sd	a4,8(t1)
   11a40:	2ec000ef          	jal	11d2c <__malloc_unlock>
   11a44:	00813783          	ld	a5,8(sp)
   11a48:	01078513          	addi	a0,a5,16
   11a4c:	a9dff06f          	j	114e8 <_malloc_r+0xa4>
   11a50:	00176613          	ori	a2,a4,1
   11a54:	00c7b423          	sd	a2,8(a5)
   11a58:	00e78733          	add	a4,a5,a4
   11a5c:	02e83423          	sd	a4,40(a6)
   11a60:	02e83023          	sd	a4,32(a6)
   11a64:	0016e613          	ori	a2,a3,1
   11a68:	00678333          	add	t1,a5,t1
   11a6c:	01c73c23          	sd	t3,24(a4)
   11a70:	01c73823          	sd	t3,16(a4)
   11a74:	00c73423          	sd	a2,8(a4)
   11a78:	00040513          	mv	a0,s0
   11a7c:	00d33023          	sd	a3,0(t1)
   11a80:	00f13423          	sd	a5,8(sp)
   11a84:	2a8000ef          	jal	11d2c <__malloc_unlock>
   11a88:	00813783          	ld	a5,8(sp)
   11a8c:	01078513          	addi	a0,a5,16
   11a90:	a59ff06f          	j	114e8 <_malloc_r+0xa4>
   11a94:	00635693          	srli	a3,t1,0x6
   11a98:	00169513          	slli	a0,a3,0x1
   11a9c:	0725051b          	addiw	a0,a0,114
   11aa0:	00351513          	slli	a0,a0,0x3
   11aa4:	0386861b          	addiw	a2,a3,56
   11aa8:	e99ff06f          	j	11940 <_malloc_r+0x4fc>
   11aac:	15078e63          	beq	a5,a6,11c08 <_malloc_r+0x7c4>
   11ab0:	01083783          	ld	a5,16(a6)
   11ab4:	0087b683          	ld	a3,8(a5)
   11ab8:	ffc6f693          	andi	a3,a3,-4
   11abc:	40e68633          	sub	a2,a3,a4
   11ac0:	00e6e663          	bltu	a3,a4,11acc <_malloc_r+0x688>
   11ac4:	02062693          	slti	a3,a2,32
   11ac8:	dc0684e3          	beqz	a3,11890 <_malloc_r+0x44c>
   11acc:	00040513          	mv	a0,s0
   11ad0:	25c000ef          	jal	11d2c <__malloc_unlock>
   11ad4:	a11ff06f          	j	114e4 <_malloc_r+0xa0>
   11ad8:	05c7889b          	addiw	a7,a5,92
   11adc:	0018951b          	slliw	a0,a7,0x1
   11ae0:	05b78e1b          	addiw	t3,a5,91
   11ae4:	00351513          	slli	a0,a0,0x3
   11ae8:	a5dff06f          	j	11544 <_malloc_r+0x100>
   11aec:	010f3783          	ld	a5,16(t5)
   11af0:	fff8889b          	addiw	a7,a7,-1
   11af4:	23e79663          	bne	a5,t5,11d20 <_malloc_r+0x8dc>
   11af8:	0038f793          	andi	a5,a7,3
   11afc:	ff0f0f13          	addi	t5,t5,-16
   11b00:	fe0796e3          	bnez	a5,11aec <_malloc_r+0x6a8>
   11b04:	00883683          	ld	a3,8(a6)
   11b08:	fff54793          	not	a5,a0
   11b0c:	00d7f7b3          	and	a5,a5,a3
   11b10:	00f83423          	sd	a5,8(a6)
   11b14:	00151513          	slli	a0,a0,0x1
   11b18:	fff50693          	addi	a3,a0,-1
   11b1c:	baf6f6e3          	bgeu	a3,a5,116c8 <_malloc_r+0x284>
   11b20:	00f576b3          	and	a3,a0,a5
   11b24:	00069a63          	bnez	a3,11b38 <_malloc_r+0x6f4>
   11b28:	00151513          	slli	a0,a0,0x1
   11b2c:	00f576b3          	and	a3,a0,a5
   11b30:	004f8f9b          	addiw	t6,t6,4
   11b34:	fe068ae3          	beqz	a3,11b28 <_malloc_r+0x6e4>
   11b38:	000f8893          	mv	a7,t6
   11b3c:	b09ff06f          	j	11644 <_malloc_r+0x200>
   11b40:	02058593          	addi	a1,a1,32
   11b44:	bc9ff06f          	j	1170c <_malloc_r+0x2c8>
   11b48:	4026561b          	sraiw	a2,a2,0x2
   11b4c:	00100313          	li	t1,1
   11b50:	00c31633          	sll	a2,t1,a2
   11b54:	00c5e5b3          	or	a1,a1,a2
   11b58:	00b83423          	sd	a1,8(a6)
   11b5c:	e11ff06f          	j	1196c <_malloc_r+0x528>
   11b60:	00b30633          	add	a2,t1,a1
   11b64:	40c005b3          	neg	a1,a2
   11b68:	03459593          	slli	a1,a1,0x34
   11b6c:	0345d593          	srli	a1,a1,0x34
   11b70:	00040513          	mv	a0,s0
   11b74:	03c13c23          	sd	t3,56(sp)
   11b78:	03013823          	sd	a6,48(sp)
   11b7c:	02f13423          	sd	a5,40(sp)
   11b80:	02e13023          	sd	a4,32(sp)
   11b84:	01113c23          	sd	a7,24(sp)
   11b88:	00613823          	sd	t1,16(sp)
   11b8c:	00c13423          	sd	a2,8(sp)
   11b90:	04b13023          	sd	a1,64(sp)
   11b94:	600000ef          	jal	12194 <_sbrk_r>
   11b98:	00050693          	mv	a3,a0
   11b9c:	fff00513          	li	a0,-1
   11ba0:	01013303          	ld	t1,16(sp)
   11ba4:	01813883          	ld	a7,24(sp)
   11ba8:	02013703          	ld	a4,32(sp)
   11bac:	02813783          	ld	a5,40(sp)
   11bb0:	03013803          	ld	a6,48(sp)
   11bb4:	03813e03          	ld	t3,56(sp)
   11bb8:	0ea68463          	beq	a3,a0,11ca0 <_malloc_r+0x85c>
   11bbc:	04013583          	ld	a1,64(sp)
   11bc0:	0005851b          	sext.w	a0,a1
   11bc4:	c49ff06f          	j	1180c <_malloc_r+0x3c8>
   11bc8:	05400613          	li	a2,84
   11bcc:	08d66063          	bltu	a2,a3,11c4c <_malloc_r+0x808>
   11bd0:	00c35693          	srli	a3,t1,0xc
   11bd4:	00169513          	slli	a0,a3,0x1
   11bd8:	0de5051b          	addiw	a0,a0,222
   11bdc:	00351513          	slli	a0,a0,0x3
   11be0:	06e6861b          	addiw	a2,a3,110
   11be4:	d5dff06f          	j	11940 <_malloc_r+0x4fc>
   11be8:	15400693          	li	a3,340
   11bec:	08f6e063          	bltu	a3,a5,11c6c <_malloc_r+0x828>
   11bf0:	00f75793          	srli	a5,a4,0xf
   11bf4:	0787889b          	addiw	a7,a5,120
   11bf8:	0018951b          	slliw	a0,a7,0x1
   11bfc:	07778e1b          	addiw	t3,a5,119
   11c00:	00351513          	slli	a0,a0,0x3
   11c04:	941ff06f          	j	11544 <_malloc_r+0x100>
   11c08:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11c0c:	000e2503          	lw	a0,0(t3)
   11c10:	00b5053b          	addw	a0,a0,a1
   11c14:	00ae2023          	sw	a0,0(t3)
   11c18:	b51ff06f          	j	11768 <_malloc_r+0x324>
   11c1c:	03431f13          	slli	t5,t1,0x34
   11c20:	b40f14e3          	bnez	t5,11768 <_malloc_r+0x324>
   11c24:	01083303          	ld	t1,16(a6)
   11c28:	00b885b3          	add	a1,a7,a1
   11c2c:	0015e693          	ori	a3,a1,1
   11c30:	00d33423          	sd	a3,8(t1)
   11c34:	c35ff06f          	j	11868 <_malloc_r+0x424>
   11c38:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11c3c:	b45ff06f          	j	11780 <_malloc_r+0x33c>
   11c40:	00100793          	li	a5,1
   11c44:	00f33423          	sd	a5,8(t1)
   11c48:	e85ff06f          	j	11acc <_malloc_r+0x688>
   11c4c:	15400613          	li	a2,340
   11c50:	08d66a63          	bltu	a2,a3,11ce4 <_malloc_r+0x8a0>
   11c54:	00f35693          	srli	a3,t1,0xf
   11c58:	00169513          	slli	a0,a3,0x1
   11c5c:	0f05051b          	addiw	a0,a0,240
   11c60:	00351513          	slli	a0,a0,0x3
   11c64:	0776861b          	addiw	a2,a3,119
   11c68:	cd9ff06f          	j	11940 <_malloc_r+0x4fc>
   11c6c:	55400693          	li	a3,1364
   11c70:	08f6ea63          	bltu	a3,a5,11d04 <_malloc_r+0x8c0>
   11c74:	01275793          	srli	a5,a4,0x12
   11c78:	07d7889b          	addiw	a7,a5,125
   11c7c:	0018951b          	slliw	a0,a7,0x1
   11c80:	07c78e1b          	addiw	t3,a5,124
   11c84:	00351513          	slli	a0,a0,0x3
   11c88:	8bdff06f          	j	11544 <_malloc_r+0x100>
   11c8c:	ff0e8e93          	addi	t4,t4,-16
   11c90:	01d606b3          	add	a3,a2,t4
   11c94:	00000513          	li	a0,0
   11c98:	00000593          	li	a1,0
   11c9c:	b71ff06f          	j	1180c <_malloc_r+0x3c8>
   11ca0:	00813683          	ld	a3,8(sp)
   11ca4:	00000593          	li	a1,0
   11ca8:	00000513          	li	a0,0
   11cac:	b61ff06f          	j	1180c <_malloc_r+0x3c8>
   11cb0:	01078593          	addi	a1,a5,16
   11cb4:	00040513          	mv	a0,s0
   11cb8:	01c13c23          	sd	t3,24(sp)
   11cbc:	01013823          	sd	a6,16(sp)
   11cc0:	00e13423          	sd	a4,8(sp)
   11cc4:	c7cff0ef          	jal	11140 <_free_r>
   11cc8:	01013803          	ld	a6,16(sp)
   11ccc:	01813e03          	ld	t3,24(sp)
   11cd0:	00813703          	ld	a4,8(sp)
   11cd4:	01083303          	ld	t1,16(a6)
   11cd8:	000e2603          	lw	a2,0(t3)
   11cdc:	00833683          	ld	a3,8(t1)
   11ce0:	b89ff06f          	j	11868 <_malloc_r+0x424>
   11ce4:	55400613          	li	a2,1364
   11ce8:	02d66663          	bltu	a2,a3,11d14 <_malloc_r+0x8d0>
   11cec:	01235693          	srli	a3,t1,0x12
   11cf0:	00169513          	slli	a0,a3,0x1
   11cf4:	0fa5051b          	addiw	a0,a0,250
   11cf8:	00351513          	slli	a0,a0,0x3
   11cfc:	07c6861b          	addiw	a2,a3,124
   11d00:	c41ff06f          	j	11940 <_malloc_r+0x4fc>
   11d04:	7f000513          	li	a0,2032
   11d08:	07f00893          	li	a7,127
   11d0c:	07e00e13          	li	t3,126
   11d10:	835ff06f          	j	11544 <_malloc_r+0x100>
   11d14:	7f000513          	li	a0,2032
   11d18:	07e00613          	li	a2,126
   11d1c:	c25ff06f          	j	11940 <_malloc_r+0x4fc>
   11d20:	00883783          	ld	a5,8(a6)
   11d24:	df1ff06f          	j	11b14 <_malloc_r+0x6d0>

0000000000011d28 <__malloc_lock>:
   11d28:	00008067          	ret

0000000000011d2c <__malloc_unlock>:
   11d2c:	00008067          	ret

0000000000011d30 <_fclose_r>:
   11d30:	fe010113          	addi	sp,sp,-32
   11d34:	00113c23          	sd	ra,24(sp)
   11d38:	01213023          	sd	s2,0(sp)
   11d3c:	02058863          	beqz	a1,11d6c <_fclose_r+0x3c>
   11d40:	00813823          	sd	s0,16(sp)
   11d44:	00913423          	sd	s1,8(sp)
   11d48:	00058413          	mv	s0,a1
   11d4c:	00050493          	mv	s1,a0
   11d50:	00050663          	beqz	a0,11d5c <_fclose_r+0x2c>
   11d54:	04853783          	ld	a5,72(a0)
   11d58:	0c078c63          	beqz	a5,11e30 <_fclose_r+0x100>
   11d5c:	01041783          	lh	a5,16(s0)
   11d60:	02079263          	bnez	a5,11d84 <_fclose_r+0x54>
   11d64:	01013403          	ld	s0,16(sp)
   11d68:	00813483          	ld	s1,8(sp)
   11d6c:	01813083          	ld	ra,24(sp)
   11d70:	00000913          	li	s2,0
   11d74:	00090513          	mv	a0,s2
   11d78:	00013903          	ld	s2,0(sp)
   11d7c:	02010113          	addi	sp,sp,32
   11d80:	00008067          	ret
   11d84:	00040593          	mv	a1,s0
   11d88:	00048513          	mv	a0,s1
   11d8c:	0b8000ef          	jal	11e44 <__sflush_r>
   11d90:	05043783          	ld	a5,80(s0)
   11d94:	00050913          	mv	s2,a0
   11d98:	00078a63          	beqz	a5,11dac <_fclose_r+0x7c>
   11d9c:	03043583          	ld	a1,48(s0)
   11da0:	00048513          	mv	a0,s1
   11da4:	000780e7          	jalr	a5
   11da8:	06054463          	bltz	a0,11e10 <_fclose_r+0xe0>
   11dac:	01045783          	lhu	a5,16(s0)
   11db0:	0807f793          	andi	a5,a5,128
   11db4:	06079663          	bnez	a5,11e20 <_fclose_r+0xf0>
   11db8:	05843583          	ld	a1,88(s0)
   11dbc:	00058c63          	beqz	a1,11dd4 <_fclose_r+0xa4>
   11dc0:	07440793          	addi	a5,s0,116
   11dc4:	00f58663          	beq	a1,a5,11dd0 <_fclose_r+0xa0>
   11dc8:	00048513          	mv	a0,s1
   11dcc:	b74ff0ef          	jal	11140 <_free_r>
   11dd0:	04043c23          	sd	zero,88(s0)
   11dd4:	07843583          	ld	a1,120(s0)
   11dd8:	00058863          	beqz	a1,11de8 <_fclose_r+0xb8>
   11ddc:	00048513          	mv	a0,s1
   11de0:	b60ff0ef          	jal	11140 <_free_r>
   11de4:	06043c23          	sd	zero,120(s0)
   11de8:	aa1fe0ef          	jal	10888 <__sfp_lock_acquire>
   11dec:	00041823          	sh	zero,16(s0)
   11df0:	a9dfe0ef          	jal	1088c <__sfp_lock_release>
   11df4:	01813083          	ld	ra,24(sp)
   11df8:	01013403          	ld	s0,16(sp)
   11dfc:	00813483          	ld	s1,8(sp)
   11e00:	00090513          	mv	a0,s2
   11e04:	00013903          	ld	s2,0(sp)
   11e08:	02010113          	addi	sp,sp,32
   11e0c:	00008067          	ret
   11e10:	01045783          	lhu	a5,16(s0)
   11e14:	fff00913          	li	s2,-1
   11e18:	0807f793          	andi	a5,a5,128
   11e1c:	f8078ee3          	beqz	a5,11db8 <_fclose_r+0x88>
   11e20:	01843583          	ld	a1,24(s0)
   11e24:	00048513          	mv	a0,s1
   11e28:	b18ff0ef          	jal	11140 <_free_r>
   11e2c:	f8dff06f          	j	11db8 <_fclose_r+0x88>
   11e30:	a35fe0ef          	jal	10864 <__sinit>
   11e34:	f29ff06f          	j	11d5c <_fclose_r+0x2c>

0000000000011e38 <fclose>:
   11e38:	00050593          	mv	a1,a0
   11e3c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e40:	ef1ff06f          	j	11d30 <_fclose_r>

0000000000011e44 <__sflush_r>:
   11e44:	01059703          	lh	a4,16(a1)
   11e48:	fd010113          	addi	sp,sp,-48
   11e4c:	02813023          	sd	s0,32(sp)
   11e50:	01313423          	sd	s3,8(sp)
   11e54:	02113423          	sd	ra,40(sp)
   11e58:	00877793          	andi	a5,a4,8
   11e5c:	00058413          	mv	s0,a1
   11e60:	00050993          	mv	s3,a0
   11e64:	12079263          	bnez	a5,11f88 <__sflush_r+0x144>
   11e68:	000017b7          	lui	a5,0x1
   11e6c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11e70:	0085a683          	lw	a3,8(a1)
   11e74:	00f767b3          	or	a5,a4,a5
   11e78:	00f59823          	sh	a5,16(a1)
   11e7c:	18d05c63          	blez	a3,12014 <__sflush_r+0x1d0>
   11e80:	04843803          	ld	a6,72(s0)
   11e84:	0e080663          	beqz	a6,11f70 <__sflush_r+0x12c>
   11e88:	00913c23          	sd	s1,24(sp)
   11e8c:	03371693          	slli	a3,a4,0x33
   11e90:	0009a483          	lw	s1,0(s3)
   11e94:	0009a023          	sw	zero,0(s3)
   11e98:	1806ca63          	bltz	a3,1202c <__sflush_r+0x1e8>
   11e9c:	03043583          	ld	a1,48(s0)
   11ea0:	00000613          	li	a2,0
   11ea4:	00100693          	li	a3,1
   11ea8:	00098513          	mv	a0,s3
   11eac:	000800e7          	jalr	a6
   11eb0:	fff00793          	li	a5,-1
   11eb4:	00050613          	mv	a2,a0
   11eb8:	1af50c63          	beq	a0,a5,12070 <__sflush_r+0x22c>
   11ebc:	01041783          	lh	a5,16(s0)
   11ec0:	04843803          	ld	a6,72(s0)
   11ec4:	0047f793          	andi	a5,a5,4
   11ec8:	00078e63          	beqz	a5,11ee4 <__sflush_r+0xa0>
   11ecc:	00842703          	lw	a4,8(s0)
   11ed0:	05843783          	ld	a5,88(s0)
   11ed4:	40e60633          	sub	a2,a2,a4
   11ed8:	00078663          	beqz	a5,11ee4 <__sflush_r+0xa0>
   11edc:	07042783          	lw	a5,112(s0)
   11ee0:	40f60633          	sub	a2,a2,a5
   11ee4:	03043583          	ld	a1,48(s0)
   11ee8:	00000693          	li	a3,0
   11eec:	00098513          	mv	a0,s3
   11ef0:	000800e7          	jalr	a6
   11ef4:	fff00713          	li	a4,-1
   11ef8:	01041783          	lh	a5,16(s0)
   11efc:	12e51c63          	bne	a0,a4,12034 <__sflush_r+0x1f0>
   11f00:	0009a683          	lw	a3,0(s3)
   11f04:	01d00713          	li	a4,29
   11f08:	18d76263          	bltu	a4,a3,1208c <__sflush_r+0x248>
   11f0c:	20400737          	lui	a4,0x20400
   11f10:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11f14:	00d75733          	srl	a4,a4,a3
   11f18:	00177713          	andi	a4,a4,1
   11f1c:	16070863          	beqz	a4,1208c <__sflush_r+0x248>
   11f20:	01843683          	ld	a3,24(s0)
   11f24:	fffff737          	lui	a4,0xfffff
   11f28:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f2c:	00e7f733          	and	a4,a5,a4
   11f30:	00e41823          	sh	a4,16(s0)
   11f34:	00042423          	sw	zero,8(s0)
   11f38:	00d43023          	sd	a3,0(s0)
   11f3c:	03379713          	slli	a4,a5,0x33
   11f40:	00075663          	bgez	a4,11f4c <__sflush_r+0x108>
   11f44:	0009a783          	lw	a5,0(s3)
   11f48:	10078863          	beqz	a5,12058 <__sflush_r+0x214>
   11f4c:	05843583          	ld	a1,88(s0)
   11f50:	0099a023          	sw	s1,0(s3)
   11f54:	10058a63          	beqz	a1,12068 <__sflush_r+0x224>
   11f58:	07440793          	addi	a5,s0,116
   11f5c:	00f58663          	beq	a1,a5,11f68 <__sflush_r+0x124>
   11f60:	00098513          	mv	a0,s3
   11f64:	9dcff0ef          	jal	11140 <_free_r>
   11f68:	01813483          	ld	s1,24(sp)
   11f6c:	04043c23          	sd	zero,88(s0)
   11f70:	02813083          	ld	ra,40(sp)
   11f74:	02013403          	ld	s0,32(sp)
   11f78:	00813983          	ld	s3,8(sp)
   11f7c:	00000513          	li	a0,0
   11f80:	03010113          	addi	sp,sp,48
   11f84:	00008067          	ret
   11f88:	01213823          	sd	s2,16(sp)
   11f8c:	0185b903          	ld	s2,24(a1)
   11f90:	08090a63          	beqz	s2,12024 <__sflush_r+0x1e0>
   11f94:	00913c23          	sd	s1,24(sp)
   11f98:	0005b483          	ld	s1,0(a1)
   11f9c:	00377713          	andi	a4,a4,3
   11fa0:	0125b023          	sd	s2,0(a1)
   11fa4:	412484bb          	subw	s1,s1,s2
   11fa8:	00000793          	li	a5,0
   11fac:	00071463          	bnez	a4,11fb4 <__sflush_r+0x170>
   11fb0:	0205a783          	lw	a5,32(a1)
   11fb4:	00f42623          	sw	a5,12(s0)
   11fb8:	00904863          	bgtz	s1,11fc8 <__sflush_r+0x184>
   11fbc:	0640006f          	j	12020 <__sflush_r+0x1dc>
   11fc0:	00a90933          	add	s2,s2,a0
   11fc4:	04905e63          	blez	s1,12020 <__sflush_r+0x1dc>
   11fc8:	04043783          	ld	a5,64(s0)
   11fcc:	03043583          	ld	a1,48(s0)
   11fd0:	00048693          	mv	a3,s1
   11fd4:	00090613          	mv	a2,s2
   11fd8:	00098513          	mv	a0,s3
   11fdc:	000780e7          	jalr	a5
   11fe0:	40a484bb          	subw	s1,s1,a0
   11fe4:	fca04ee3          	bgtz	a0,11fc0 <__sflush_r+0x17c>
   11fe8:	01045783          	lhu	a5,16(s0)
   11fec:	01013903          	ld	s2,16(sp)
   11ff0:	0407e793          	ori	a5,a5,64
   11ff4:	02813083          	ld	ra,40(sp)
   11ff8:	00f41823          	sh	a5,16(s0)
   11ffc:	02013403          	ld	s0,32(sp)
   12000:	01813483          	ld	s1,24(sp)
   12004:	00813983          	ld	s3,8(sp)
   12008:	fff00513          	li	a0,-1
   1200c:	03010113          	addi	sp,sp,48
   12010:	00008067          	ret
   12014:	0705a683          	lw	a3,112(a1)
   12018:	e6d044e3          	bgtz	a3,11e80 <__sflush_r+0x3c>
   1201c:	f55ff06f          	j	11f70 <__sflush_r+0x12c>
   12020:	01813483          	ld	s1,24(sp)
   12024:	01013903          	ld	s2,16(sp)
   12028:	f49ff06f          	j	11f70 <__sflush_r+0x12c>
   1202c:	09043603          	ld	a2,144(s0)
   12030:	e95ff06f          	j	11ec4 <__sflush_r+0x80>
   12034:	01843683          	ld	a3,24(s0)
   12038:	fffff737          	lui	a4,0xfffff
   1203c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12040:	00e7f733          	and	a4,a5,a4
   12044:	00e41823          	sh	a4,16(s0)
   12048:	00042423          	sw	zero,8(s0)
   1204c:	00d43023          	sd	a3,0(s0)
   12050:	03379713          	slli	a4,a5,0x33
   12054:	ee075ce3          	bgez	a4,11f4c <__sflush_r+0x108>
   12058:	05843583          	ld	a1,88(s0)
   1205c:	08a43823          	sd	a0,144(s0)
   12060:	0099a023          	sw	s1,0(s3)
   12064:	ee059ae3          	bnez	a1,11f58 <__sflush_r+0x114>
   12068:	01813483          	ld	s1,24(sp)
   1206c:	f05ff06f          	j	11f70 <__sflush_r+0x12c>
   12070:	0009a783          	lw	a5,0(s3)
   12074:	e40784e3          	beqz	a5,11ebc <__sflush_r+0x78>
   12078:	fe378713          	addi	a4,a5,-29
   1207c:	00070c63          	beqz	a4,12094 <__sflush_r+0x250>
   12080:	fea78793          	addi	a5,a5,-22
   12084:	00078863          	beqz	a5,12094 <__sflush_r+0x250>
   12088:	01045783          	lhu	a5,16(s0)
   1208c:	0407e793          	ori	a5,a5,64
   12090:	f65ff06f          	j	11ff4 <__sflush_r+0x1b0>
   12094:	0099a023          	sw	s1,0(s3)
   12098:	01813483          	ld	s1,24(sp)
   1209c:	ed5ff06f          	j	11f70 <__sflush_r+0x12c>

00000000000120a0 <_fflush_r>:
   120a0:	00050793          	mv	a5,a0
   120a4:	00050663          	beqz	a0,120b0 <_fflush_r+0x10>
   120a8:	04853703          	ld	a4,72(a0)
   120ac:	00070e63          	beqz	a4,120c8 <_fflush_r+0x28>
   120b0:	01059703          	lh	a4,16(a1)
   120b4:	00071663          	bnez	a4,120c0 <_fflush_r+0x20>
   120b8:	00000513          	li	a0,0
   120bc:	00008067          	ret
   120c0:	00078513          	mv	a0,a5
   120c4:	d81ff06f          	j	11e44 <__sflush_r>
   120c8:	fe010113          	addi	sp,sp,-32
   120cc:	00b13423          	sd	a1,8(sp)
   120d0:	00113c23          	sd	ra,24(sp)
   120d4:	00a13023          	sd	a0,0(sp)
   120d8:	f8cfe0ef          	jal	10864 <__sinit>
   120dc:	00813583          	ld	a1,8(sp)
   120e0:	00013783          	ld	a5,0(sp)
   120e4:	01059703          	lh	a4,16(a1)
   120e8:	00070a63          	beqz	a4,120fc <_fflush_r+0x5c>
   120ec:	01813083          	ld	ra,24(sp)
   120f0:	00078513          	mv	a0,a5
   120f4:	02010113          	addi	sp,sp,32
   120f8:	d4dff06f          	j	11e44 <__sflush_r>
   120fc:	01813083          	ld	ra,24(sp)
   12100:	00000513          	li	a0,0
   12104:	02010113          	addi	sp,sp,32
   12108:	00008067          	ret

000000000001210c <fflush>:
   1210c:	06050063          	beqz	a0,1216c <fflush+0x60>
   12110:	00050593          	mv	a1,a0
   12114:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12118:	00050663          	beqz	a0,12124 <fflush+0x18>
   1211c:	04853783          	ld	a5,72(a0)
   12120:	00078c63          	beqz	a5,12138 <fflush+0x2c>
   12124:	01059783          	lh	a5,16(a1)
   12128:	00079663          	bnez	a5,12134 <fflush+0x28>
   1212c:	00000513          	li	a0,0
   12130:	00008067          	ret
   12134:	d11ff06f          	j	11e44 <__sflush_r>
   12138:	fe010113          	addi	sp,sp,-32
   1213c:	00b13423          	sd	a1,8(sp)
   12140:	00a13023          	sd	a0,0(sp)
   12144:	00113c23          	sd	ra,24(sp)
   12148:	f1cfe0ef          	jal	10864 <__sinit>
   1214c:	00813583          	ld	a1,8(sp)
   12150:	00013503          	ld	a0,0(sp)
   12154:	01059783          	lh	a5,16(a1)
   12158:	02079863          	bnez	a5,12188 <fflush+0x7c>
   1215c:	01813083          	ld	ra,24(sp)
   12160:	00000513          	li	a0,0
   12164:	02010113          	addi	sp,sp,32
   12168:	00008067          	ret
   1216c:	00013637          	lui	a2,0x13
   12170:	000125b7          	lui	a1,0x12
   12174:	00013537          	lui	a0,0x13
   12178:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1217c:	0a058593          	addi	a1,a1,160 # 120a0 <_fflush_r>
   12180:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12184:	f3cfe06f          	j	108c0 <_fwalk_sglue>
   12188:	01813083          	ld	ra,24(sp)
   1218c:	02010113          	addi	sp,sp,32
   12190:	cb5ff06f          	j	11e44 <__sflush_r>

0000000000012194 <_sbrk_r>:
   12194:	fe010113          	addi	sp,sp,-32
   12198:	00813823          	sd	s0,16(sp)
   1219c:	00913423          	sd	s1,8(sp)
   121a0:	00050493          	mv	s1,a0
   121a4:	00058513          	mv	a0,a1
   121a8:	00113c23          	sd	ra,24(sp)
   121ac:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   121b0:	228000ef          	jal	123d8 <_sbrk>
   121b4:	fff00793          	li	a5,-1
   121b8:	00f50c63          	beq	a0,a5,121d0 <_sbrk_r+0x3c>
   121bc:	01813083          	ld	ra,24(sp)
   121c0:	01013403          	ld	s0,16(sp)
   121c4:	00813483          	ld	s1,8(sp)
   121c8:	02010113          	addi	sp,sp,32
   121cc:	00008067          	ret
   121d0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   121d4:	fe0784e3          	beqz	a5,121bc <_sbrk_r+0x28>
   121d8:	01813083          	ld	ra,24(sp)
   121dc:	01013403          	ld	s0,16(sp)
   121e0:	00f4a023          	sw	a5,0(s1)
   121e4:	00813483          	ld	s1,8(sp)
   121e8:	02010113          	addi	sp,sp,32
   121ec:	00008067          	ret

00000000000121f0 <__libc_fini_array>:
   121f0:	fe010113          	addi	sp,sp,-32
   121f4:	00813823          	sd	s0,16(sp)
   121f8:	000137b7          	lui	a5,0x13
   121fc:	00013437          	lui	s0,0x13
   12200:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12204:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12208:	408787b3          	sub	a5,a5,s0
   1220c:	00913423          	sd	s1,8(sp)
   12210:	00113c23          	sd	ra,24(sp)
   12214:	4037d493          	srai	s1,a5,0x3
   12218:	02048063          	beqz	s1,12238 <__libc_fini_array+0x48>
   1221c:	ff840413          	addi	s0,s0,-8
   12220:	00f40433          	add	s0,s0,a5
   12224:	00043783          	ld	a5,0(s0)
   12228:	fff48493          	addi	s1,s1,-1
   1222c:	ff840413          	addi	s0,s0,-8
   12230:	000780e7          	jalr	a5
   12234:	fe0498e3          	bnez	s1,12224 <__libc_fini_array+0x34>
   12238:	01813083          	ld	ra,24(sp)
   1223c:	01013403          	ld	s0,16(sp)
   12240:	00813483          	ld	s1,8(sp)
   12244:	02010113          	addi	sp,sp,32
   12248:	00008067          	ret

000000000001224c <__register_exitproc>:
   1224c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12250:	04078e63          	beqz	a5,122ac <__register_exitproc+0x60>
   12254:	0087a703          	lw	a4,8(a5)
   12258:	01f00813          	li	a6,31
   1225c:	08e84263          	blt	a6,a4,122e0 <__register_exitproc+0x94>
   12260:	02050863          	beqz	a0,12290 <__register_exitproc+0x44>
   12264:	00371813          	slli	a6,a4,0x3
   12268:	01078833          	add	a6,a5,a6
   1226c:	10c83823          	sd	a2,272(a6)
   12270:	3107a883          	lw	a7,784(a5)
   12274:	00100613          	li	a2,1
   12278:	00e6163b          	sllw	a2,a2,a4
   1227c:	00c8e8b3          	or	a7,a7,a2
   12280:	3117a823          	sw	a7,784(a5)
   12284:	20d83823          	sd	a3,528(a6)
   12288:	00200693          	li	a3,2
   1228c:	02d50663          	beq	a0,a3,122b8 <__register_exitproc+0x6c>
   12290:	0017069b          	addiw	a3,a4,1
   12294:	00371713          	slli	a4,a4,0x3
   12298:	00d7a423          	sw	a3,8(a5)
   1229c:	00e787b3          	add	a5,a5,a4
   122a0:	00b7b823          	sd	a1,16(a5)
   122a4:	00000513          	li	a0,0
   122a8:	00008067          	ret
   122ac:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   122b0:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   122b4:	fa1ff06f          	j	12254 <__register_exitproc+0x8>
   122b8:	3147a683          	lw	a3,788(a5)
   122bc:	00000513          	li	a0,0
   122c0:	00d66633          	or	a2,a2,a3
   122c4:	0017069b          	addiw	a3,a4,1
   122c8:	00371713          	slli	a4,a4,0x3
   122cc:	30c7aa23          	sw	a2,788(a5)
   122d0:	00d7a423          	sw	a3,8(a5)
   122d4:	00e787b3          	add	a5,a5,a4
   122d8:	00b7b823          	sd	a1,16(a5)
   122dc:	00008067          	ret
   122e0:	fff00513          	li	a0,-1
   122e4:	00008067          	ret

00000000000122e8 <_close>:
   122e8:	03900893          	li	a7,57
   122ec:	00000073          	ecall
   122f0:	00054663          	bltz	a0,122fc <_close+0x14>
   122f4:	0005051b          	sext.w	a0,a0
   122f8:	00008067          	ret
   122fc:	fe010113          	addi	sp,sp,-32
   12300:	00113c23          	sd	ra,24(sp)
   12304:	00a13423          	sd	a0,8(sp)
   12308:	188000ef          	jal	12490 <__errno>
   1230c:	00813783          	ld	a5,8(sp)
   12310:	01813083          	ld	ra,24(sp)
   12314:	40f007bb          	negw	a5,a5
   12318:	00f52023          	sw	a5,0(a0)
   1231c:	fff00513          	li	a0,-1
   12320:	02010113          	addi	sp,sp,32
   12324:	00008067          	ret

0000000000012328 <_exit>:
   12328:	05d00893          	li	a7,93
   1232c:	00000073          	ecall
   12330:	00054463          	bltz	a0,12338 <_exit+0x10>
   12334:	0000006f          	j	12334 <_exit+0xc>
   12338:	fe010113          	addi	sp,sp,-32
   1233c:	00113c23          	sd	ra,24(sp)
   12340:	00a13423          	sd	a0,8(sp)
   12344:	14c000ef          	jal	12490 <__errno>
   12348:	00813783          	ld	a5,8(sp)
   1234c:	40f007bb          	negw	a5,a5
   12350:	00f52023          	sw	a5,0(a0)
   12354:	0000006f          	j	12354 <_exit+0x2c>

0000000000012358 <_lseek>:
   12358:	03e00893          	li	a7,62
   1235c:	00000073          	ecall
   12360:	00054463          	bltz	a0,12368 <_lseek+0x10>
   12364:	00008067          	ret
   12368:	fe010113          	addi	sp,sp,-32
   1236c:	00113c23          	sd	ra,24(sp)
   12370:	00a13423          	sd	a0,8(sp)
   12374:	11c000ef          	jal	12490 <__errno>
   12378:	00813783          	ld	a5,8(sp)
   1237c:	01813083          	ld	ra,24(sp)
   12380:	40f007bb          	negw	a5,a5
   12384:	00f52023          	sw	a5,0(a0)
   12388:	fff00793          	li	a5,-1
   1238c:	00078513          	mv	a0,a5
   12390:	02010113          	addi	sp,sp,32
   12394:	00008067          	ret

0000000000012398 <_read>:
   12398:	03f00893          	li	a7,63
   1239c:	00000073          	ecall
   123a0:	00054463          	bltz	a0,123a8 <_read+0x10>
   123a4:	00008067          	ret
   123a8:	fe010113          	addi	sp,sp,-32
   123ac:	00113c23          	sd	ra,24(sp)
   123b0:	00a13423          	sd	a0,8(sp)
   123b4:	0dc000ef          	jal	12490 <__errno>
   123b8:	00813783          	ld	a5,8(sp)
   123bc:	01813083          	ld	ra,24(sp)
   123c0:	40f007bb          	negw	a5,a5
   123c4:	00f52023          	sw	a5,0(a0)
   123c8:	fff00793          	li	a5,-1
   123cc:	00078513          	mv	a0,a5
   123d0:	02010113          	addi	sp,sp,32
   123d4:	00008067          	ret

00000000000123d8 <_sbrk>:
   123d8:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   123dc:	ff010113          	addi	sp,sp,-16
   123e0:	00113423          	sd	ra,8(sp)
   123e4:	00050713          	mv	a4,a0
   123e8:	02079063          	bnez	a5,12408 <_sbrk+0x30>
   123ec:	0d600893          	li	a7,214
   123f0:	00000513          	li	a0,0
   123f4:	00000073          	ecall
   123f8:	fff00793          	li	a5,-1
   123fc:	02f50c63          	beq	a0,a5,12434 <_sbrk+0x5c>
   12400:	00050793          	mv	a5,a0
   12404:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12408:	00f70533          	add	a0,a4,a5
   1240c:	0d600893          	li	a7,214
   12410:	00000073          	ecall
   12414:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12418:	00f70733          	add	a4,a4,a5
   1241c:	00e51c63          	bne	a0,a4,12434 <_sbrk+0x5c>
   12420:	00813083          	ld	ra,8(sp)
   12424:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12428:	00078513          	mv	a0,a5
   1242c:	01010113          	addi	sp,sp,16
   12430:	00008067          	ret
   12434:	05c000ef          	jal	12490 <__errno>
   12438:	00813083          	ld	ra,8(sp)
   1243c:	00c00793          	li	a5,12
   12440:	00f52023          	sw	a5,0(a0)
   12444:	fff00513          	li	a0,-1
   12448:	01010113          	addi	sp,sp,16
   1244c:	00008067          	ret

0000000000012450 <_write>:
   12450:	04000893          	li	a7,64
   12454:	00000073          	ecall
   12458:	00054463          	bltz	a0,12460 <_write+0x10>
   1245c:	00008067          	ret
   12460:	fe010113          	addi	sp,sp,-32
   12464:	00113c23          	sd	ra,24(sp)
   12468:	00a13423          	sd	a0,8(sp)
   1246c:	024000ef          	jal	12490 <__errno>
   12470:	00813783          	ld	a5,8(sp)
   12474:	01813083          	ld	ra,24(sp)
   12478:	40f007bb          	negw	a5,a5
   1247c:	00f52023          	sw	a5,0(a0)
   12480:	fff00793          	li	a5,-1
   12484:	00078513          	mv	a0,a5
   12488:	02010113          	addi	sp,sp,32
   1248c:	00008067          	ret

0000000000012490 <__errno>:
   12490:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12494:	00008067          	ret

Disassembly of section .rodata:

0000000000012498 <.rodata>:
   12498:	7245                	.insn	2, 0x7245
   1249a:	6f72                	.insn	2, 0x6f72
   1249c:	2c72                	.insn	2, 0x2c72
   1249e:	6620                	.insn	2, 0x6620
   124a0:	2031                	.insn	2, 0x2031
   124a2:	7369                	.insn	2, 0x7369
   124a4:	6620                	.insn	2, 0x6620
   124a6:	6c61                	.insn	2, 0x6c61
   124a8:	202c6573          	.insn	4, 0x202c6573
   124ac:	73206577          	.insn	4, 0x73206577
   124b0:	6f68                	.insn	2, 0x6f68
   124b2:	6c75                	.insn	2, 0x6c75
   124b4:	2064                	.insn	2, 0x2064
   124b6:	6f6e                	.insn	2, 0x6f6e
   124b8:	2074                	.insn	2, 0x2074
   124ba:	68206f67          	.insn	4, 0x68206f67
   124be:	7265                	.insn	2, 0x7265
   124c0:	2165                	.insn	2, 0x2165
   124c2:	000a                	.insn	2, 0x000a
   124c4:	0000                	.insn	2, 0x0000
   124c6:	0000                	.insn	2, 0x0000
   124c8:	6559                	.insn	2, 0x6559
   124ca:	66202c73          	.insn	4, 0x66202c73
   124ce:	2032                	.insn	2, 0x2032
   124d0:	7369                	.insn	2, 0x7369
   124d2:	7420                	.insn	2, 0x7420
   124d4:	7572                	.insn	2, 0x7572
   124d6:	0a65                	.insn	2, 0x0a65
	...
   124e0:	5b61                	.insn	2, 0x5b61
   124e2:	5d35                	.insn	2, 0x5d35
   124e4:	3d20                	.insn	2, 0x3d20
   124e6:	0020                	.insn	2, 0x0020
   124e8:	0001                	.insn	2, 0x0001
   124ea:	0000                	.insn	2, 0x0000
   124ec:	0002                	.insn	2, 0x0002
   124ee:	0000                	.insn	2, 0x0000
   124f0:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   124f4:	0004                	.insn	2, 0x0004
   124f6:	0000                	.insn	2, 0x0000
   124f8:	0005                	.insn	2, 0x0005
	...

Disassembly of section .eh_frame:

0000000000012500 <__EH_FRAME_BEGIN__>:
   12500:	0000                	.insn	2, 0x0000
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

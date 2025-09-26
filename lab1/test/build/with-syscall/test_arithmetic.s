
test/build/with-syscall/test_arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	64d000ef          	jal	10f80 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	290020ef          	jal	123d8 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	2a050513          	addi	a0,a0,672 # 122a0 <__libc_fini_array>
   1015c:	75d0006f          	j	110b8 <atexit>
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
   10184:	521000ef          	jal	10ea4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	f3050513          	addi	a0,a0,-208 # 110b8 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	10c50513          	addi	a0,a0,268 # 122a0 <__libc_fini_array>
   1019c:	71d000ef          	jal	110b8 <atexit>
   101a0:	471000ef          	jal	10e10 <__libc_init_array>
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
   1027c:	0f8000ef          	jal	10374 <print_d>
   10280:	00a00513          	li	a0,10
   10284:	18c000ef          	jal	10410 <print_c>
   10288:	fec42783          	lw	a5,-20(s0)
   1028c:	00078713          	mv	a4,a5
   10290:	fe842783          	lw	a5,-24(s0)
   10294:	40f707bb          	subw	a5,a4,a5
   10298:	fcf42823          	sw	a5,-48(s0)
   1029c:	fd042783          	lw	a5,-48(s0)
   102a0:	00078513          	mv	a0,a5
   102a4:	0d0000ef          	jal	10374 <print_d>
   102a8:	00a00513          	li	a0,10
   102ac:	164000ef          	jal	10410 <print_c>
   102b0:	fe442783          	lw	a5,-28(s0)
   102b4:	00078713          	mv	a4,a5
   102b8:	fe042783          	lw	a5,-32(s0)
   102bc:	00078593          	mv	a1,a5
   102c0:	00070513          	mv	a0,a4
   102c4:	21c000ef          	jal	104e0 <__muldi3>
   102c8:	00050793          	mv	a5,a0
   102cc:	fcf42623          	sw	a5,-52(s0)
   102d0:	fcc42783          	lw	a5,-52(s0)
   102d4:	00078513          	mv	a0,a5
   102d8:	09c000ef          	jal	10374 <print_d>
   102dc:	00a00513          	li	a0,10
   102e0:	130000ef          	jal	10410 <print_c>
   102e4:	fe042783          	lw	a5,-32(s0)
   102e8:	fe442703          	lw	a4,-28(s0)
   102ec:	00070593          	mv	a1,a4
   102f0:	00078513          	mv	a0,a5
   102f4:	250000ef          	jal	10544 <__divdi3>
   102f8:	00050793          	mv	a5,a0
   102fc:	fcf42a23          	sw	a5,-44(s0)
   10300:	fd442783          	lw	a5,-44(s0)
   10304:	00078513          	mv	a0,a5
   10308:	06c000ef          	jal	10374 <print_d>
   1030c:	00a00513          	li	a0,10
   10310:	100000ef          	jal	10410 <print_c>
   10314:	fd842783          	lw	a5,-40(s0)
   10318:	fe042703          	lw	a4,-32(s0)
   1031c:	00f717bb          	sllw	a5,a4,a5
   10320:	fcf42823          	sw	a5,-48(s0)
   10324:	fd042783          	lw	a5,-48(s0)
   10328:	00078513          	mv	a0,a5
   1032c:	048000ef          	jal	10374 <print_d>
   10330:	00a00513          	li	a0,10
   10334:	0dc000ef          	jal	10410 <print_c>
   10338:	fe042783          	lw	a5,-32(s0)
   1033c:	4047d79b          	sraiw	a5,a5,0x4
   10340:	fcf42623          	sw	a5,-52(s0)
   10344:	fcc42783          	lw	a5,-52(s0)
   10348:	00078513          	mv	a0,a5
   1034c:	028000ef          	jal	10374 <print_d>
   10350:	00a00513          	li	a0,10
   10354:	0bc000ef          	jal	10410 <print_c>
   10358:	0ec000ef          	jal	10444 <exit_proc>
   1035c:	00000793          	li	a5,0
   10360:	00078513          	mv	a0,a5
   10364:	03813083          	ld	ra,56(sp)
   10368:	03013403          	ld	s0,48(sp)
   1036c:	04010113          	addi	sp,sp,64
   10370:	00008067          	ret

0000000000010374 <print_d>:
   10374:	fe010113          	addi	sp,sp,-32
   10378:	00113c23          	sd	ra,24(sp)
   1037c:	00813823          	sd	s0,16(sp)
   10380:	02010413          	addi	s0,sp,32
   10384:	00050793          	mv	a5,a0
   10388:	fef42623          	sw	a5,-20(s0)
   1038c:	00200893          	li	a7,2
   10390:	00000073          	ecall
   10394:	00000013          	nop
   10398:	01813083          	ld	ra,24(sp)
   1039c:	01013403          	ld	s0,16(sp)
   103a0:	02010113          	addi	sp,sp,32
   103a4:	00008067          	ret

00000000000103a8 <print_ll>:
   103a8:	fe010113          	addi	sp,sp,-32
   103ac:	00113c23          	sd	ra,24(sp)
   103b0:	00813823          	sd	s0,16(sp)
   103b4:	02010413          	addi	s0,sp,32
   103b8:	fea43423          	sd	a0,-24(s0)
   103bc:	fe843783          	ld	a5,-24(s0)
   103c0:	00078513          	mv	a0,a5
   103c4:	00600893          	li	a7,6
   103c8:	00000073          	ecall
   103cc:	00000013          	nop
   103d0:	01813083          	ld	ra,24(sp)
   103d4:	01013403          	ld	s0,16(sp)
   103d8:	02010113          	addi	sp,sp,32
   103dc:	00008067          	ret

00000000000103e0 <print_s>:
   103e0:	fe010113          	addi	sp,sp,-32
   103e4:	00113c23          	sd	ra,24(sp)
   103e8:	00813823          	sd	s0,16(sp)
   103ec:	02010413          	addi	s0,sp,32
   103f0:	fea43423          	sd	a0,-24(s0)
   103f4:	00000893          	li	a7,0
   103f8:	00000073          	ecall
   103fc:	00000013          	nop
   10400:	01813083          	ld	ra,24(sp)
   10404:	01013403          	ld	s0,16(sp)
   10408:	02010113          	addi	sp,sp,32
   1040c:	00008067          	ret

0000000000010410 <print_c>:
   10410:	fe010113          	addi	sp,sp,-32
   10414:	00113c23          	sd	ra,24(sp)
   10418:	00813823          	sd	s0,16(sp)
   1041c:	02010413          	addi	s0,sp,32
   10420:	00050793          	mv	a5,a0
   10424:	fef407a3          	sb	a5,-17(s0)
   10428:	00100893          	li	a7,1
   1042c:	00000073          	ecall
   10430:	00000013          	nop
   10434:	01813083          	ld	ra,24(sp)
   10438:	01013403          	ld	s0,16(sp)
   1043c:	02010113          	addi	sp,sp,32
   10440:	00008067          	ret

0000000000010444 <exit_proc>:
   10444:	ff010113          	addi	sp,sp,-16
   10448:	00113423          	sd	ra,8(sp)
   1044c:	00813023          	sd	s0,0(sp)
   10450:	01010413          	addi	s0,sp,16
   10454:	00300893          	li	a7,3
   10458:	00000073          	ecall
   1045c:	00000013          	nop
   10460:	00813083          	ld	ra,8(sp)
   10464:	00013403          	ld	s0,0(sp)
   10468:	01010113          	addi	sp,sp,16
   1046c:	00008067          	ret

0000000000010470 <read_char>:
   10470:	fe010113          	addi	sp,sp,-32
   10474:	00113c23          	sd	ra,24(sp)
   10478:	00813823          	sd	s0,16(sp)
   1047c:	02010413          	addi	s0,sp,32
   10480:	00400893          	li	a7,4
   10484:	00000073          	ecall
   10488:	00050793          	mv	a5,a0
   1048c:	fef407a3          	sb	a5,-17(s0)
   10490:	fef44783          	lbu	a5,-17(s0)
   10494:	00078513          	mv	a0,a5
   10498:	01813083          	ld	ra,24(sp)
   1049c:	01013403          	ld	s0,16(sp)
   104a0:	02010113          	addi	sp,sp,32
   104a4:	00008067          	ret

00000000000104a8 <read_num>:
   104a8:	fe010113          	addi	sp,sp,-32
   104ac:	00113c23          	sd	ra,24(sp)
   104b0:	00813823          	sd	s0,16(sp)
   104b4:	02010413          	addi	s0,sp,32
   104b8:	00500893          	li	a7,5
   104bc:	00000073          	ecall
   104c0:	00050793          	mv	a5,a0
   104c4:	fef43423          	sd	a5,-24(s0)
   104c8:	fe843783          	ld	a5,-24(s0)
   104cc:	00078513          	mv	a0,a5
   104d0:	01813083          	ld	ra,24(sp)
   104d4:	01013403          	ld	s0,16(sp)
   104d8:	02010113          	addi	sp,sp,32
   104dc:	00008067          	ret

00000000000104e0 <__muldi3>:
   104e0:	00050613          	mv	a2,a0
   104e4:	00000513          	li	a0,0
   104e8:	0015f693          	andi	a3,a1,1
   104ec:	00068463          	beqz	a3,104f4 <__muldi3+0x14>
   104f0:	00c50533          	add	a0,a0,a2
   104f4:	0015d593          	srli	a1,a1,0x1
   104f8:	00161613          	slli	a2,a2,0x1
   104fc:	fe0596e3          	bnez	a1,104e8 <__muldi3+0x8>
   10500:	00008067          	ret

0000000000010504 <__udivsi3>:
   10504:	02051513          	slli	a0,a0,0x20
   10508:	02059593          	slli	a1,a1,0x20
   1050c:	00008293          	mv	t0,ra
   10510:	03c000ef          	jal	1054c <__hidden___udivdi3>
   10514:	0005051b          	sext.w	a0,a0
   10518:	00028067          	jr	t0

000000000001051c <__umodsi3>:
   1051c:	02051513          	slli	a0,a0,0x20
   10520:	02059593          	slli	a1,a1,0x20
   10524:	02055513          	srli	a0,a0,0x20
   10528:	0205d593          	srli	a1,a1,0x20
   1052c:	00008293          	mv	t0,ra
   10530:	01c000ef          	jal	1054c <__hidden___udivdi3>
   10534:	0005851b          	sext.w	a0,a1
   10538:	00028067          	jr	t0

000000000001053c <__divsi3>:
   1053c:	fff00293          	li	t0,-1
   10540:	0a558c63          	beq	a1,t0,105f8 <__moddi3+0x30>

0000000000010544 <__divdi3>:
   10544:	06054063          	bltz	a0,105a4 <__umoddi3+0x10>
   10548:	0605c663          	bltz	a1,105b4 <__umoddi3+0x20>

000000000001054c <__hidden___udivdi3>:
   1054c:	00058613          	mv	a2,a1
   10550:	00050593          	mv	a1,a0
   10554:	fff00513          	li	a0,-1
   10558:	02060c63          	beqz	a2,10590 <__hidden___udivdi3+0x44>
   1055c:	00100693          	li	a3,1
   10560:	00b67a63          	bgeu	a2,a1,10574 <__hidden___udivdi3+0x28>
   10564:	00c05863          	blez	a2,10574 <__hidden___udivdi3+0x28>
   10568:	00161613          	slli	a2,a2,0x1
   1056c:	00169693          	slli	a3,a3,0x1
   10570:	feb66ae3          	bltu	a2,a1,10564 <__hidden___udivdi3+0x18>
   10574:	00000513          	li	a0,0
   10578:	00c5e663          	bltu	a1,a2,10584 <__hidden___udivdi3+0x38>
   1057c:	40c585b3          	sub	a1,a1,a2
   10580:	00d56533          	or	a0,a0,a3
   10584:	0016d693          	srli	a3,a3,0x1
   10588:	00165613          	srli	a2,a2,0x1
   1058c:	fe0696e3          	bnez	a3,10578 <__hidden___udivdi3+0x2c>
   10590:	00008067          	ret

0000000000010594 <__umoddi3>:
   10594:	00008293          	mv	t0,ra
   10598:	fb5ff0ef          	jal	1054c <__hidden___udivdi3>
   1059c:	00058513          	mv	a0,a1
   105a0:	00028067          	jr	t0
   105a4:	40a00533          	neg	a0,a0
   105a8:	00b04863          	bgtz	a1,105b8 <__umoddi3+0x24>
   105ac:	40b005b3          	neg	a1,a1
   105b0:	f9dff06f          	j	1054c <__hidden___udivdi3>
   105b4:	40b005b3          	neg	a1,a1
   105b8:	00008293          	mv	t0,ra
   105bc:	f91ff0ef          	jal	1054c <__hidden___udivdi3>
   105c0:	40a00533          	neg	a0,a0
   105c4:	00028067          	jr	t0

00000000000105c8 <__moddi3>:
   105c8:	00008293          	mv	t0,ra
   105cc:	0005ca63          	bltz	a1,105e0 <__moddi3+0x18>
   105d0:	00054c63          	bltz	a0,105e8 <__moddi3+0x20>
   105d4:	f79ff0ef          	jal	1054c <__hidden___udivdi3>
   105d8:	00058513          	mv	a0,a1
   105dc:	00028067          	jr	t0
   105e0:	40b005b3          	neg	a1,a1
   105e4:	fe0558e3          	bgez	a0,105d4 <__moddi3+0xc>
   105e8:	40a00533          	neg	a0,a0
   105ec:	f61ff0ef          	jal	1054c <__hidden___udivdi3>
   105f0:	40b00533          	neg	a0,a1
   105f4:	00028067          	jr	t0
   105f8:	01f29293          	slli	t0,t0,0x1f
   105fc:	f45514e3          	bne	a0,t0,10544 <__divdi3>
   10600:	00008067          	ret

0000000000010604 <__fp_lock>:
   10604:	00000513          	li	a0,0
   10608:	00008067          	ret

000000000001060c <stdio_exit_handler>:
   1060c:	00013637          	lui	a2,0x13
   10610:	000125b7          	lui	a1,0x12
   10614:	00013537          	lui	a0,0x13
   10618:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1061c:	de058593          	addi	a1,a1,-544 # 11de0 <_fclose_r>
   10620:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10624:	34c0006f          	j	10970 <_fwalk_sglue>

0000000000010628 <cleanup_stdio>:
   10628:	00853583          	ld	a1,8(a0)
   1062c:	ff010113          	addi	sp,sp,-16
   10630:	00813023          	sd	s0,0(sp)
   10634:	00113423          	sd	ra,8(sp)
   10638:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   1063c:	00050413          	mv	s0,a0
   10640:	00f58463          	beq	a1,a5,10648 <cleanup_stdio+0x20>
   10644:	79c010ef          	jal	11de0 <_fclose_r>
   10648:	01043583          	ld	a1,16(s0)
   1064c:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10650:	00f58663          	beq	a1,a5,1065c <cleanup_stdio+0x34>
   10654:	00040513          	mv	a0,s0
   10658:	788010ef          	jal	11de0 <_fclose_r>
   1065c:	01843583          	ld	a1,24(s0)
   10660:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10664:	00f58c63          	beq	a1,a5,1067c <cleanup_stdio+0x54>
   10668:	00040513          	mv	a0,s0
   1066c:	00013403          	ld	s0,0(sp)
   10670:	00813083          	ld	ra,8(sp)
   10674:	01010113          	addi	sp,sp,16
   10678:	7680106f          	j	11de0 <_fclose_r>
   1067c:	00813083          	ld	ra,8(sp)
   10680:	00013403          	ld	s0,0(sp)
   10684:	01010113          	addi	sp,sp,16
   10688:	00008067          	ret

000000000001068c <__fp_unlock>:
   1068c:	00000513          	li	a0,0
   10690:	00008067          	ret

0000000000010694 <global_stdio_init.part.0>:
   10694:	fd010113          	addi	sp,sp,-48
   10698:	000107b7          	lui	a5,0x10
   1069c:	02813023          	sd	s0,32(sp)
   106a0:	60c78793          	addi	a5,a5,1548 # 1060c <stdio_exit_handler>
   106a4:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   106a8:	02113423          	sd	ra,40(sp)
   106ac:	00913c23          	sd	s1,24(sp)
   106b0:	01213823          	sd	s2,16(sp)
   106b4:	01313423          	sd	s3,8(sp)
   106b8:	01413023          	sd	s4,0(sp)
   106bc:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   106c0:	00800613          	li	a2,8
   106c4:	00400793          	li	a5,4
   106c8:	00000593          	li	a1,0
   106cc:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   106d0:	00f42823          	sw	a5,16(s0)
   106d4:	00043023          	sd	zero,0(s0)
   106d8:	00043423          	sd	zero,8(s0)
   106dc:	0a042623          	sw	zero,172(s0)
   106e0:	00043c23          	sd	zero,24(s0)
   106e4:	02042023          	sw	zero,32(s0)
   106e8:	02042423          	sw	zero,40(s0)
   106ec:	7b8000ef          	jal	10ea4 <memset>
   106f0:	00011a37          	lui	s4,0x11
   106f4:	000119b7          	lui	s3,0x11
   106f8:	00011937          	lui	s2,0x11
   106fc:	000114b7          	lui	s1,0x11
   10700:	000107b7          	lui	a5,0x10
   10704:	a40a0a13          	addi	s4,s4,-1472 # 10a40 <__sread>
   10708:	aa498993          	addi	s3,s3,-1372 # 10aa4 <__swrite>
   1070c:	b2c90913          	addi	s2,s2,-1236 # 10b2c <__sseek>
   10710:	b9048493          	addi	s1,s1,-1136 # 10b90 <__sclose>
   10714:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10718:	00800613          	li	a2,8
   1071c:	00000593          	li	a1,0
   10720:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10724:	0cf42023          	sw	a5,192(s0)
   10728:	03443c23          	sd	s4,56(s0)
   1072c:	05343023          	sd	s3,64(s0)
   10730:	05243423          	sd	s2,72(s0)
   10734:	04943823          	sd	s1,80(s0)
   10738:	02843823          	sd	s0,48(s0)
   1073c:	0a043823          	sd	zero,176(s0)
   10740:	0a043c23          	sd	zero,184(s0)
   10744:	14042e23          	sw	zero,348(s0)
   10748:	0c043423          	sd	zero,200(s0)
   1074c:	0c042823          	sw	zero,208(s0)
   10750:	0c042c23          	sw	zero,216(s0)
   10754:	750000ef          	jal	10ea4 <memset>
   10758:	000207b7          	lui	a5,0x20
   1075c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10760:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10764:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   10768:	00800613          	li	a2,8
   1076c:	00000593          	li	a1,0
   10770:	0f443423          	sd	s4,232(s0)
   10774:	0f343823          	sd	s3,240(s0)
   10778:	0f243c23          	sd	s2,248(s0)
   1077c:	10943023          	sd	s1,256(s0)
   10780:	16f42823          	sw	a5,368(s0)
   10784:	16043023          	sd	zero,352(s0)
   10788:	16043423          	sd	zero,360(s0)
   1078c:	20042623          	sw	zero,524(s0)
   10790:	16043c23          	sd	zero,376(s0)
   10794:	18042023          	sw	zero,384(s0)
   10798:	18042423          	sw	zero,392(s0)
   1079c:	0ee43023          	sd	a4,224(s0)
   107a0:	704000ef          	jal	10ea4 <memset>
   107a4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   107a8:	19443c23          	sd	s4,408(s0)
   107ac:	1b343023          	sd	s3,416(s0)
   107b0:	1b243423          	sd	s2,424(s0)
   107b4:	1a943823          	sd	s1,432(s0)
   107b8:	02813083          	ld	ra,40(sp)
   107bc:	18f43823          	sd	a5,400(s0)
   107c0:	02013403          	ld	s0,32(sp)
   107c4:	01813483          	ld	s1,24(sp)
   107c8:	01013903          	ld	s2,16(sp)
   107cc:	00813983          	ld	s3,8(sp)
   107d0:	00013a03          	ld	s4,0(sp)
   107d4:	03010113          	addi	sp,sp,48
   107d8:	00008067          	ret

00000000000107dc <__sfp>:
   107dc:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   107e0:	fd010113          	addi	sp,sp,-48
   107e4:	00913c23          	sd	s1,24(sp)
   107e8:	02113423          	sd	ra,40(sp)
   107ec:	02813023          	sd	s0,32(sp)
   107f0:	00050493          	mv	s1,a0
   107f4:	10078463          	beqz	a5,108fc <__sfp+0x120>
   107f8:	000136b7          	lui	a3,0x13
   107fc:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10800:	0086a703          	lw	a4,8(a3)
   10804:	08e05c63          	blez	a4,1089c <__sfp+0xc0>
   10808:	02071713          	slli	a4,a4,0x20
   1080c:	02075713          	srli	a4,a4,0x20
   10810:	00171793          	slli	a5,a4,0x1
   10814:	00e787b3          	add	a5,a5,a4
   10818:	0106b403          	ld	s0,16(a3)
   1081c:	00279793          	slli	a5,a5,0x2
   10820:	40e787b3          	sub	a5,a5,a4
   10824:	00479793          	slli	a5,a5,0x4
   10828:	00f407b3          	add	a5,s0,a5
   1082c:	00c0006f          	j	10838 <__sfp+0x5c>
   10830:	0b040413          	addi	s0,s0,176
   10834:	06f40463          	beq	s0,a5,1089c <__sfp+0xc0>
   10838:	01041703          	lh	a4,16(s0)
   1083c:	fe071ae3          	bnez	a4,10830 <__sfp+0x54>
   10840:	ffff07b7          	lui	a5,0xffff0
   10844:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10848:	00f42823          	sw	a5,16(s0)
   1084c:	0a042623          	sw	zero,172(s0)
   10850:	00043023          	sd	zero,0(s0)
   10854:	00043423          	sd	zero,8(s0)
   10858:	00043c23          	sd	zero,24(s0)
   1085c:	02042023          	sw	zero,32(s0)
   10860:	02042423          	sw	zero,40(s0)
   10864:	00800613          	li	a2,8
   10868:	00000593          	li	a1,0
   1086c:	0a440513          	addi	a0,s0,164
   10870:	634000ef          	jal	10ea4 <memset>
   10874:	04043c23          	sd	zero,88(s0)
   10878:	06042023          	sw	zero,96(s0)
   1087c:	06043c23          	sd	zero,120(s0)
   10880:	08042023          	sw	zero,128(s0)
   10884:	02813083          	ld	ra,40(sp)
   10888:	00040513          	mv	a0,s0
   1088c:	02013403          	ld	s0,32(sp)
   10890:	01813483          	ld	s1,24(sp)
   10894:	03010113          	addi	sp,sp,48
   10898:	00008067          	ret
   1089c:	0006b403          	ld	s0,0(a3)
   108a0:	00040663          	beqz	s0,108ac <__sfp+0xd0>
   108a4:	00040693          	mv	a3,s0
   108a8:	f59ff06f          	j	10800 <__sfp+0x24>
   108ac:	2d800593          	li	a1,728
   108b0:	00048513          	mv	a0,s1
   108b4:	00d13423          	sd	a3,8(sp)
   108b8:	43d000ef          	jal	114f4 <_malloc_r>
   108bc:	00813683          	ld	a3,8(sp)
   108c0:	00050413          	mv	s0,a0
   108c4:	04050063          	beqz	a0,10904 <__sfp+0x128>
   108c8:	00400793          	li	a5,4
   108cc:	00f52423          	sw	a5,8(a0)
   108d0:	01850513          	addi	a0,a0,24
   108d4:	00043023          	sd	zero,0(s0)
   108d8:	00a43823          	sd	a0,16(s0)
   108dc:	2c000613          	li	a2,704
   108e0:	00000593          	li	a1,0
   108e4:	00d13423          	sd	a3,8(sp)
   108e8:	5bc000ef          	jal	10ea4 <memset>
   108ec:	00813683          	ld	a3,8(sp)
   108f0:	0086b023          	sd	s0,0(a3)
   108f4:	00040693          	mv	a3,s0
   108f8:	f09ff06f          	j	10800 <__sfp+0x24>
   108fc:	d99ff0ef          	jal	10694 <global_stdio_init.part.0>
   10900:	ef9ff06f          	j	107f8 <__sfp+0x1c>
   10904:	0006b023          	sd	zero,0(a3)
   10908:	00c00793          	li	a5,12
   1090c:	00f4a023          	sw	a5,0(s1)
   10910:	f75ff06f          	j	10884 <__sfp+0xa8>

0000000000010914 <__sinit>:
   10914:	04853783          	ld	a5,72(a0)
   10918:	00078463          	beqz	a5,10920 <__sinit+0xc>
   1091c:	00008067          	ret
   10920:	000107b7          	lui	a5,0x10
   10924:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10928:	62878793          	addi	a5,a5,1576 # 10628 <cleanup_stdio>
   1092c:	04f53423          	sd	a5,72(a0)
   10930:	fe0716e3          	bnez	a4,1091c <__sinit+0x8>
   10934:	d61ff06f          	j	10694 <global_stdio_init.part.0>

0000000000010938 <__sfp_lock_acquire>:
   10938:	00008067          	ret

000000000001093c <__sfp_lock_release>:
   1093c:	00008067          	ret

0000000000010940 <__fp_lock_all>:
   10940:	00013637          	lui	a2,0x13
   10944:	000105b7          	lui	a1,0x10
   10948:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1094c:	60458593          	addi	a1,a1,1540 # 10604 <__fp_lock>
   10950:	00000513          	li	a0,0
   10954:	01c0006f          	j	10970 <_fwalk_sglue>

0000000000010958 <__fp_unlock_all>:
   10958:	00013637          	lui	a2,0x13
   1095c:	000105b7          	lui	a1,0x10
   10960:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10964:	68c58593          	addi	a1,a1,1676 # 1068c <__fp_unlock>
   10968:	00000513          	li	a0,0
   1096c:	0040006f          	j	10970 <_fwalk_sglue>

0000000000010970 <_fwalk_sglue>:
   10970:	fb010113          	addi	sp,sp,-80
   10974:	03213823          	sd	s2,48(sp)
   10978:	03313423          	sd	s3,40(sp)
   1097c:	03413023          	sd	s4,32(sp)
   10980:	01513c23          	sd	s5,24(sp)
   10984:	01613823          	sd	s6,16(sp)
   10988:	01713423          	sd	s7,8(sp)
   1098c:	04113423          	sd	ra,72(sp)
   10990:	04813023          	sd	s0,64(sp)
   10994:	02913c23          	sd	s1,56(sp)
   10998:	00060913          	mv	s2,a2
   1099c:	00050a13          	mv	s4,a0
   109a0:	00058a93          	mv	s5,a1
   109a4:	00000b13          	li	s6,0
   109a8:	00100b93          	li	s7,1
   109ac:	fff00993          	li	s3,-1
   109b0:	00892783          	lw	a5,8(s2)
   109b4:	04f05a63          	blez	a5,10a08 <_fwalk_sglue+0x98>
   109b8:	02079793          	slli	a5,a5,0x20
   109bc:	0207d793          	srli	a5,a5,0x20
   109c0:	00179493          	slli	s1,a5,0x1
   109c4:	00f484b3          	add	s1,s1,a5
   109c8:	01093403          	ld	s0,16(s2)
   109cc:	00249493          	slli	s1,s1,0x2
   109d0:	40f484b3          	sub	s1,s1,a5
   109d4:	00449493          	slli	s1,s1,0x4
   109d8:	009404b3          	add	s1,s0,s1
   109dc:	01045783          	lhu	a5,16(s0)
   109e0:	02fbf063          	bgeu	s7,a5,10a00 <_fwalk_sglue+0x90>
   109e4:	01241783          	lh	a5,18(s0)
   109e8:	00040593          	mv	a1,s0
   109ec:	000a0513          	mv	a0,s4
   109f0:	01378863          	beq	a5,s3,10a00 <_fwalk_sglue+0x90>
   109f4:	000a80e7          	jalr	s5
   109f8:	01656b33          	or	s6,a0,s6
   109fc:	000b0b1b          	sext.w	s6,s6
   10a00:	0b040413          	addi	s0,s0,176
   10a04:	fc941ce3          	bne	s0,s1,109dc <_fwalk_sglue+0x6c>
   10a08:	00093903          	ld	s2,0(s2)
   10a0c:	fa0912e3          	bnez	s2,109b0 <_fwalk_sglue+0x40>
   10a10:	04813083          	ld	ra,72(sp)
   10a14:	04013403          	ld	s0,64(sp)
   10a18:	03813483          	ld	s1,56(sp)
   10a1c:	03013903          	ld	s2,48(sp)
   10a20:	02813983          	ld	s3,40(sp)
   10a24:	02013a03          	ld	s4,32(sp)
   10a28:	01813a83          	ld	s5,24(sp)
   10a2c:	00813b83          	ld	s7,8(sp)
   10a30:	000b0513          	mv	a0,s6
   10a34:	01013b03          	ld	s6,16(sp)
   10a38:	05010113          	addi	sp,sp,80
   10a3c:	00008067          	ret

0000000000010a40 <__sread>:
   10a40:	ff010113          	addi	sp,sp,-16
   10a44:	00813023          	sd	s0,0(sp)
   10a48:	00058413          	mv	s0,a1
   10a4c:	01259583          	lh	a1,18(a1)
   10a50:	00113423          	sd	ra,8(sp)
   10a54:	2ec000ef          	jal	10d40 <_read_r>
   10a58:	02054063          	bltz	a0,10a78 <__sread+0x38>
   10a5c:	09043783          	ld	a5,144(s0)
   10a60:	00813083          	ld	ra,8(sp)
   10a64:	00a787b3          	add	a5,a5,a0
   10a68:	08f43823          	sd	a5,144(s0)
   10a6c:	00013403          	ld	s0,0(sp)
   10a70:	01010113          	addi	sp,sp,16
   10a74:	00008067          	ret
   10a78:	01045783          	lhu	a5,16(s0)
   10a7c:	fffff737          	lui	a4,0xfffff
   10a80:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a84:	00e7f7b3          	and	a5,a5,a4
   10a88:	00813083          	ld	ra,8(sp)
   10a8c:	00f41823          	sh	a5,16(s0)
   10a90:	00013403          	ld	s0,0(sp)
   10a94:	01010113          	addi	sp,sp,16
   10a98:	00008067          	ret

0000000000010a9c <__seofread>:
   10a9c:	00000513          	li	a0,0
   10aa0:	00008067          	ret

0000000000010aa4 <__swrite>:
   10aa4:	01059783          	lh	a5,16(a1)
   10aa8:	fd010113          	addi	sp,sp,-48
   10aac:	00068313          	mv	t1,a3
   10ab0:	02113423          	sd	ra,40(sp)
   10ab4:	1007f693          	andi	a3,a5,256
   10ab8:	00058713          	mv	a4,a1
   10abc:	00060893          	mv	a7,a2
   10ac0:	00050813          	mv	a6,a0
   10ac4:	02069863          	bnez	a3,10af4 <__swrite+0x50>
   10ac8:	fffff6b7          	lui	a3,0xfffff
   10acc:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10ad0:	02813083          	ld	ra,40(sp)
   10ad4:	00d7f7b3          	and	a5,a5,a3
   10ad8:	01271583          	lh	a1,18(a4)
   10adc:	00f71823          	sh	a5,16(a4)
   10ae0:	00030693          	mv	a3,t1
   10ae4:	00088613          	mv	a2,a7
   10ae8:	00080513          	mv	a0,a6
   10aec:	03010113          	addi	sp,sp,48
   10af0:	2b80006f          	j	10da8 <_write_r>
   10af4:	01259583          	lh	a1,18(a1)
   10af8:	00c13823          	sd	a2,16(sp)
   10afc:	00200693          	li	a3,2
   10b00:	00000613          	li	a2,0
   10b04:	00613c23          	sd	t1,24(sp)
   10b08:	00e13023          	sd	a4,0(sp)
   10b0c:	00a13423          	sd	a0,8(sp)
   10b10:	1c8000ef          	jal	10cd8 <_lseek_r>
   10b14:	00013703          	ld	a4,0(sp)
   10b18:	01813303          	ld	t1,24(sp)
   10b1c:	01013883          	ld	a7,16(sp)
   10b20:	01071783          	lh	a5,16(a4)
   10b24:	00813803          	ld	a6,8(sp)
   10b28:	fa1ff06f          	j	10ac8 <__swrite+0x24>

0000000000010b2c <__sseek>:
   10b2c:	ff010113          	addi	sp,sp,-16
   10b30:	00813023          	sd	s0,0(sp)
   10b34:	00058413          	mv	s0,a1
   10b38:	01259583          	lh	a1,18(a1)
   10b3c:	00113423          	sd	ra,8(sp)
   10b40:	198000ef          	jal	10cd8 <_lseek_r>
   10b44:	fff00713          	li	a4,-1
   10b48:	01041783          	lh	a5,16(s0)
   10b4c:	02e50263          	beq	a0,a4,10b70 <__sseek+0x44>
   10b50:	00001737          	lui	a4,0x1
   10b54:	00e7e7b3          	or	a5,a5,a4
   10b58:	00813083          	ld	ra,8(sp)
   10b5c:	08a43823          	sd	a0,144(s0)
   10b60:	00f41823          	sh	a5,16(s0)
   10b64:	00013403          	ld	s0,0(sp)
   10b68:	01010113          	addi	sp,sp,16
   10b6c:	00008067          	ret
   10b70:	80050713          	addi	a4,a0,-2048
   10b74:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10b78:	00e7f7b3          	and	a5,a5,a4
   10b7c:	00813083          	ld	ra,8(sp)
   10b80:	00f41823          	sh	a5,16(s0)
   10b84:	00013403          	ld	s0,0(sp)
   10b88:	01010113          	addi	sp,sp,16
   10b8c:	00008067          	ret

0000000000010b90 <__sclose>:
   10b90:	01259583          	lh	a1,18(a1)
   10b94:	0040006f          	j	10b98 <_close_r>

0000000000010b98 <_close_r>:
   10b98:	fe010113          	addi	sp,sp,-32
   10b9c:	00813823          	sd	s0,16(sp)
   10ba0:	00913423          	sd	s1,8(sp)
   10ba4:	00050493          	mv	s1,a0
   10ba8:	00058513          	mv	a0,a1
   10bac:	00113c23          	sd	ra,24(sp)
   10bb0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bb4:	7e4010ef          	jal	12398 <_close>
   10bb8:	fff00793          	li	a5,-1
   10bbc:	00f50c63          	beq	a0,a5,10bd4 <_close_r+0x3c>
   10bc0:	01813083          	ld	ra,24(sp)
   10bc4:	01013403          	ld	s0,16(sp)
   10bc8:	00813483          	ld	s1,8(sp)
   10bcc:	02010113          	addi	sp,sp,32
   10bd0:	00008067          	ret
   10bd4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bd8:	fe0784e3          	beqz	a5,10bc0 <_close_r+0x28>
   10bdc:	01813083          	ld	ra,24(sp)
   10be0:	01013403          	ld	s0,16(sp)
   10be4:	00f4a023          	sw	a5,0(s1)
   10be8:	00813483          	ld	s1,8(sp)
   10bec:	02010113          	addi	sp,sp,32
   10bf0:	00008067          	ret

0000000000010bf4 <_reclaim_reent>:
   10bf4:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10bf8:	0ca78e63          	beq	a5,a0,10cd4 <_reclaim_reent+0xe0>
   10bfc:	06853583          	ld	a1,104(a0)
   10c00:	fd010113          	addi	sp,sp,-48
   10c04:	00913c23          	sd	s1,24(sp)
   10c08:	02113423          	sd	ra,40(sp)
   10c0c:	02813023          	sd	s0,32(sp)
   10c10:	00050493          	mv	s1,a0
   10c14:	04058863          	beqz	a1,10c64 <_reclaim_reent+0x70>
   10c18:	01213823          	sd	s2,16(sp)
   10c1c:	01313423          	sd	s3,8(sp)
   10c20:	00000913          	li	s2,0
   10c24:	20000993          	li	s3,512
   10c28:	012587b3          	add	a5,a1,s2
   10c2c:	0007b403          	ld	s0,0(a5)
   10c30:	00040e63          	beqz	s0,10c4c <_reclaim_reent+0x58>
   10c34:	00040593          	mv	a1,s0
   10c38:	00043403          	ld	s0,0(s0)
   10c3c:	00048513          	mv	a0,s1
   10c40:	5b0000ef          	jal	111f0 <_free_r>
   10c44:	fe0418e3          	bnez	s0,10c34 <_reclaim_reent+0x40>
   10c48:	0684b583          	ld	a1,104(s1)
   10c4c:	00890913          	addi	s2,s2,8
   10c50:	fd391ce3          	bne	s2,s3,10c28 <_reclaim_reent+0x34>
   10c54:	00048513          	mv	a0,s1
   10c58:	598000ef          	jal	111f0 <_free_r>
   10c5c:	01013903          	ld	s2,16(sp)
   10c60:	00813983          	ld	s3,8(sp)
   10c64:	0504b583          	ld	a1,80(s1)
   10c68:	00058663          	beqz	a1,10c74 <_reclaim_reent+0x80>
   10c6c:	00048513          	mv	a0,s1
   10c70:	580000ef          	jal	111f0 <_free_r>
   10c74:	0604b403          	ld	s0,96(s1)
   10c78:	00040c63          	beqz	s0,10c90 <_reclaim_reent+0x9c>
   10c7c:	00040593          	mv	a1,s0
   10c80:	00043403          	ld	s0,0(s0)
   10c84:	00048513          	mv	a0,s1
   10c88:	568000ef          	jal	111f0 <_free_r>
   10c8c:	fe0418e3          	bnez	s0,10c7c <_reclaim_reent+0x88>
   10c90:	0784b583          	ld	a1,120(s1)
   10c94:	00058663          	beqz	a1,10ca0 <_reclaim_reent+0xac>
   10c98:	00048513          	mv	a0,s1
   10c9c:	554000ef          	jal	111f0 <_free_r>
   10ca0:	0484b783          	ld	a5,72(s1)
   10ca4:	00078e63          	beqz	a5,10cc0 <_reclaim_reent+0xcc>
   10ca8:	02013403          	ld	s0,32(sp)
   10cac:	02813083          	ld	ra,40(sp)
   10cb0:	00048513          	mv	a0,s1
   10cb4:	01813483          	ld	s1,24(sp)
   10cb8:	03010113          	addi	sp,sp,48
   10cbc:	00078067          	jr	a5
   10cc0:	02813083          	ld	ra,40(sp)
   10cc4:	02013403          	ld	s0,32(sp)
   10cc8:	01813483          	ld	s1,24(sp)
   10ccc:	03010113          	addi	sp,sp,48
   10cd0:	00008067          	ret
   10cd4:	00008067          	ret

0000000000010cd8 <_lseek_r>:
   10cd8:	fe010113          	addi	sp,sp,-32
   10cdc:	00058793          	mv	a5,a1
   10ce0:	00813823          	sd	s0,16(sp)
   10ce4:	00913423          	sd	s1,8(sp)
   10ce8:	00060593          	mv	a1,a2
   10cec:	00050493          	mv	s1,a0
   10cf0:	00068613          	mv	a2,a3
   10cf4:	00078513          	mv	a0,a5
   10cf8:	00113c23          	sd	ra,24(sp)
   10cfc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d00:	708010ef          	jal	12408 <_lseek>
   10d04:	fff00793          	li	a5,-1
   10d08:	00f50c63          	beq	a0,a5,10d20 <_lseek_r+0x48>
   10d0c:	01813083          	ld	ra,24(sp)
   10d10:	01013403          	ld	s0,16(sp)
   10d14:	00813483          	ld	s1,8(sp)
   10d18:	02010113          	addi	sp,sp,32
   10d1c:	00008067          	ret
   10d20:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d24:	fe0784e3          	beqz	a5,10d0c <_lseek_r+0x34>
   10d28:	01813083          	ld	ra,24(sp)
   10d2c:	01013403          	ld	s0,16(sp)
   10d30:	00f4a023          	sw	a5,0(s1)
   10d34:	00813483          	ld	s1,8(sp)
   10d38:	02010113          	addi	sp,sp,32
   10d3c:	00008067          	ret

0000000000010d40 <_read_r>:
   10d40:	fe010113          	addi	sp,sp,-32
   10d44:	00058793          	mv	a5,a1
   10d48:	00813823          	sd	s0,16(sp)
   10d4c:	00913423          	sd	s1,8(sp)
   10d50:	00060593          	mv	a1,a2
   10d54:	00050493          	mv	s1,a0
   10d58:	00068613          	mv	a2,a3
   10d5c:	00078513          	mv	a0,a5
   10d60:	00113c23          	sd	ra,24(sp)
   10d64:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d68:	6e0010ef          	jal	12448 <_read>
   10d6c:	fff00793          	li	a5,-1
   10d70:	00f50c63          	beq	a0,a5,10d88 <_read_r+0x48>
   10d74:	01813083          	ld	ra,24(sp)
   10d78:	01013403          	ld	s0,16(sp)
   10d7c:	00813483          	ld	s1,8(sp)
   10d80:	02010113          	addi	sp,sp,32
   10d84:	00008067          	ret
   10d88:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d8c:	fe0784e3          	beqz	a5,10d74 <_read_r+0x34>
   10d90:	01813083          	ld	ra,24(sp)
   10d94:	01013403          	ld	s0,16(sp)
   10d98:	00f4a023          	sw	a5,0(s1)
   10d9c:	00813483          	ld	s1,8(sp)
   10da0:	02010113          	addi	sp,sp,32
   10da4:	00008067          	ret

0000000000010da8 <_write_r>:
   10da8:	fe010113          	addi	sp,sp,-32
   10dac:	00058793          	mv	a5,a1
   10db0:	00813823          	sd	s0,16(sp)
   10db4:	00913423          	sd	s1,8(sp)
   10db8:	00060593          	mv	a1,a2
   10dbc:	00050493          	mv	s1,a0
   10dc0:	00068613          	mv	a2,a3
   10dc4:	00078513          	mv	a0,a5
   10dc8:	00113c23          	sd	ra,24(sp)
   10dcc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10dd0:	730010ef          	jal	12500 <_write>
   10dd4:	fff00793          	li	a5,-1
   10dd8:	00f50c63          	beq	a0,a5,10df0 <_write_r+0x48>
   10ddc:	01813083          	ld	ra,24(sp)
   10de0:	01013403          	ld	s0,16(sp)
   10de4:	00813483          	ld	s1,8(sp)
   10de8:	02010113          	addi	sp,sp,32
   10dec:	00008067          	ret
   10df0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10df4:	fe0784e3          	beqz	a5,10ddc <_write_r+0x34>
   10df8:	01813083          	ld	ra,24(sp)
   10dfc:	01013403          	ld	s0,16(sp)
   10e00:	00f4a023          	sw	a5,0(s1)
   10e04:	00813483          	ld	s1,8(sp)
   10e08:	02010113          	addi	sp,sp,32
   10e0c:	00008067          	ret

0000000000010e10 <__libc_init_array>:
   10e10:	fe010113          	addi	sp,sp,-32
   10e14:	00813823          	sd	s0,16(sp)
   10e18:	01213023          	sd	s2,0(sp)
   10e1c:	00013437          	lui	s0,0x13
   10e20:	00013937          	lui	s2,0x13
   10e24:	00113c23          	sd	ra,24(sp)
   10e28:	00913423          	sd	s1,8(sp)
   10e2c:	00090913          	mv	s2,s2
   10e30:	00040413          	mv	s0,s0
   10e34:	02890263          	beq	s2,s0,10e58 <__libc_init_array+0x48>
   10e38:	40890933          	sub	s2,s2,s0
   10e3c:	40395913          	srai	s2,s2,0x3
   10e40:	00000493          	li	s1,0
   10e44:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10e48:	00148493          	addi	s1,s1,1
   10e4c:	00840413          	addi	s0,s0,8
   10e50:	000780e7          	jalr	a5
   10e54:	ff24e8e3          	bltu	s1,s2,10e44 <__libc_init_array+0x34>
   10e58:	00013937          	lui	s2,0x13
   10e5c:	00013437          	lui	s0,0x13
   10e60:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10e64:	00040413          	mv	s0,s0
   10e68:	02890263          	beq	s2,s0,10e8c <__libc_init_array+0x7c>
   10e6c:	40890933          	sub	s2,s2,s0
   10e70:	40395913          	srai	s2,s2,0x3
   10e74:	00000493          	li	s1,0
   10e78:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10e7c:	00148493          	addi	s1,s1,1
   10e80:	00840413          	addi	s0,s0,8
   10e84:	000780e7          	jalr	a5
   10e88:	ff24e8e3          	bltu	s1,s2,10e78 <__libc_init_array+0x68>
   10e8c:	01813083          	ld	ra,24(sp)
   10e90:	01013403          	ld	s0,16(sp)
   10e94:	00813483          	ld	s1,8(sp)
   10e98:	00013903          	ld	s2,0(sp)
   10e9c:	02010113          	addi	sp,sp,32
   10ea0:	00008067          	ret

0000000000010ea4 <memset>:
   10ea4:	00f00313          	li	t1,15
   10ea8:	00050713          	mv	a4,a0
   10eac:	02c37a63          	bgeu	t1,a2,10ee0 <memset+0x3c>
   10eb0:	00f77793          	andi	a5,a4,15
   10eb4:	0a079063          	bnez	a5,10f54 <memset+0xb0>
   10eb8:	06059e63          	bnez	a1,10f34 <memset+0x90>
   10ebc:	ff067693          	andi	a3,a2,-16
   10ec0:	00f67613          	andi	a2,a2,15
   10ec4:	00e686b3          	add	a3,a3,a4
   10ec8:	00b73023          	sd	a1,0(a4)
   10ecc:	00b73423          	sd	a1,8(a4)
   10ed0:	01070713          	addi	a4,a4,16
   10ed4:	fed76ae3          	bltu	a4,a3,10ec8 <memset+0x24>
   10ed8:	00061463          	bnez	a2,10ee0 <memset+0x3c>
   10edc:	00008067          	ret
   10ee0:	40c306b3          	sub	a3,t1,a2
   10ee4:	00269693          	slli	a3,a3,0x2
   10ee8:	00000297          	auipc	t0,0x0
   10eec:	005686b3          	add	a3,a3,t0
   10ef0:	00c68067          	jr	12(a3)
   10ef4:	00b70723          	sb	a1,14(a4)
   10ef8:	00b706a3          	sb	a1,13(a4)
   10efc:	00b70623          	sb	a1,12(a4)
   10f00:	00b705a3          	sb	a1,11(a4)
   10f04:	00b70523          	sb	a1,10(a4)
   10f08:	00b704a3          	sb	a1,9(a4)
   10f0c:	00b70423          	sb	a1,8(a4)
   10f10:	00b703a3          	sb	a1,7(a4)
   10f14:	00b70323          	sb	a1,6(a4)
   10f18:	00b702a3          	sb	a1,5(a4)
   10f1c:	00b70223          	sb	a1,4(a4)
   10f20:	00b701a3          	sb	a1,3(a4)
   10f24:	00b70123          	sb	a1,2(a4)
   10f28:	00b700a3          	sb	a1,1(a4)
   10f2c:	00b70023          	sb	a1,0(a4)
   10f30:	00008067          	ret
   10f34:	0ff5f593          	zext.b	a1,a1
   10f38:	00859693          	slli	a3,a1,0x8
   10f3c:	00d5e5b3          	or	a1,a1,a3
   10f40:	01059693          	slli	a3,a1,0x10
   10f44:	00d5e5b3          	or	a1,a1,a3
   10f48:	02059693          	slli	a3,a1,0x20
   10f4c:	00d5e5b3          	or	a1,a1,a3
   10f50:	f6dff06f          	j	10ebc <memset+0x18>
   10f54:	00279693          	slli	a3,a5,0x2
   10f58:	00000297          	auipc	t0,0x0
   10f5c:	005686b3          	add	a3,a3,t0
   10f60:	00008293          	mv	t0,ra
   10f64:	f98680e7          	jalr	-104(a3)
   10f68:	00028093          	mv	ra,t0
   10f6c:	ff078793          	addi	a5,a5,-16
   10f70:	40f70733          	sub	a4,a4,a5
   10f74:	00f60633          	add	a2,a2,a5
   10f78:	f6c374e3          	bgeu	t1,a2,10ee0 <memset+0x3c>
   10f7c:	f3dff06f          	j	10eb8 <memset+0x14>

0000000000010f80 <__call_exitprocs>:
   10f80:	fb010113          	addi	sp,sp,-80
   10f84:	03413023          	sd	s4,32(sp)
   10f88:	03213823          	sd	s2,48(sp)
   10f8c:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10f90:	04113423          	sd	ra,72(sp)
   10f94:	06090e63          	beqz	s2,11010 <__call_exitprocs+0x90>
   10f98:	03313423          	sd	s3,40(sp)
   10f9c:	01513c23          	sd	s5,24(sp)
   10fa0:	01613823          	sd	s6,16(sp)
   10fa4:	01713423          	sd	s7,8(sp)
   10fa8:	04813023          	sd	s0,64(sp)
   10fac:	02913c23          	sd	s1,56(sp)
   10fb0:	01813023          	sd	s8,0(sp)
   10fb4:	00050b13          	mv	s6,a0
   10fb8:	00058b93          	mv	s7,a1
   10fbc:	fff00993          	li	s3,-1
   10fc0:	00100a93          	li	s5,1
   10fc4:	00892403          	lw	s0,8(s2)
   10fc8:	fff4041b          	addiw	s0,s0,-1
   10fcc:	02044463          	bltz	s0,10ff4 <__call_exitprocs+0x74>
   10fd0:	01090493          	addi	s1,s2,16
   10fd4:	00341793          	slli	a5,s0,0x3
   10fd8:	00f484b3          	add	s1,s1,a5
   10fdc:	040b8463          	beqz	s7,11024 <__call_exitprocs+0xa4>
   10fe0:	2004b783          	ld	a5,512(s1)
   10fe4:	05778063          	beq	a5,s7,11024 <__call_exitprocs+0xa4>
   10fe8:	fff4041b          	addiw	s0,s0,-1
   10fec:	ff848493          	addi	s1,s1,-8
   10ff0:	ff3418e3          	bne	s0,s3,10fe0 <__call_exitprocs+0x60>
   10ff4:	04013403          	ld	s0,64(sp)
   10ff8:	03813483          	ld	s1,56(sp)
   10ffc:	02813983          	ld	s3,40(sp)
   11000:	01813a83          	ld	s5,24(sp)
   11004:	01013b03          	ld	s6,16(sp)
   11008:	00813b83          	ld	s7,8(sp)
   1100c:	00013c03          	ld	s8,0(sp)
   11010:	04813083          	ld	ra,72(sp)
   11014:	03013903          	ld	s2,48(sp)
   11018:	02013a03          	ld	s4,32(sp)
   1101c:	05010113          	addi	sp,sp,80
   11020:	00008067          	ret
   11024:	00892783          	lw	a5,8(s2)
   11028:	0004b683          	ld	a3,0(s1)
   1102c:	fff7879b          	addiw	a5,a5,-1
   11030:	06878a63          	beq	a5,s0,110a4 <__call_exitprocs+0x124>
   11034:	0004b023          	sd	zero,0(s1)
   11038:	02068663          	beqz	a3,11064 <__call_exitprocs+0xe4>
   1103c:	31092783          	lw	a5,784(s2)
   11040:	008a973b          	sllw	a4,s5,s0
   11044:	00892c03          	lw	s8,8(s2)
   11048:	00e7f7b3          	and	a5,a5,a4
   1104c:	02079463          	bnez	a5,11074 <__call_exitprocs+0xf4>
   11050:	000680e7          	jalr	a3
   11054:	00892703          	lw	a4,8(s2)
   11058:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   1105c:	03871e63          	bne	a4,s8,11098 <__call_exitprocs+0x118>
   11060:	03279c63          	bne	a5,s2,11098 <__call_exitprocs+0x118>
   11064:	fff4041b          	addiw	s0,s0,-1
   11068:	ff848493          	addi	s1,s1,-8
   1106c:	f73418e3          	bne	s0,s3,10fdc <__call_exitprocs+0x5c>
   11070:	f85ff06f          	j	10ff4 <__call_exitprocs+0x74>
   11074:	31492783          	lw	a5,788(s2)
   11078:	1004b583          	ld	a1,256(s1)
   1107c:	00f77733          	and	a4,a4,a5
   11080:	02071663          	bnez	a4,110ac <__call_exitprocs+0x12c>
   11084:	000b0513          	mv	a0,s6
   11088:	000680e7          	jalr	a3
   1108c:	00892703          	lw	a4,8(s2)
   11090:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11094:	fd8706e3          	beq	a4,s8,11060 <__call_exitprocs+0xe0>
   11098:	f4078ee3          	beqz	a5,10ff4 <__call_exitprocs+0x74>
   1109c:	00078913          	mv	s2,a5
   110a0:	f25ff06f          	j	10fc4 <__call_exitprocs+0x44>
   110a4:	00892423          	sw	s0,8(s2)
   110a8:	f91ff06f          	j	11038 <__call_exitprocs+0xb8>
   110ac:	00058513          	mv	a0,a1
   110b0:	000680e7          	jalr	a3
   110b4:	fa1ff06f          	j	11054 <__call_exitprocs+0xd4>

00000000000110b8 <atexit>:
   110b8:	00050593          	mv	a1,a0
   110bc:	00000693          	li	a3,0
   110c0:	00000613          	li	a2,0
   110c4:	00000513          	li	a0,0
   110c8:	2340106f          	j	122fc <__register_exitproc>

00000000000110cc <_malloc_trim_r>:
   110cc:	fd010113          	addi	sp,sp,-48
   110d0:	01213823          	sd	s2,16(sp)
   110d4:	00013937          	lui	s2,0x13
   110d8:	02813023          	sd	s0,32(sp)
   110dc:	00913c23          	sd	s1,24(sp)
   110e0:	01313423          	sd	s3,8(sp)
   110e4:	00058413          	mv	s0,a1
   110e8:	02113423          	sd	ra,40(sp)
   110ec:	00050993          	mv	s3,a0
   110f0:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   110f4:	4e5000ef          	jal	11dd8 <__malloc_lock>
   110f8:	01093783          	ld	a5,16(s2)
   110fc:	00001737          	lui	a4,0x1
   11100:	0087b483          	ld	s1,8(a5)
   11104:	ffc4f493          	andi	s1,s1,-4
   11108:	7ff48793          	addi	a5,s1,2047
   1110c:	7e078793          	addi	a5,a5,2016
   11110:	40878433          	sub	s0,a5,s0
   11114:	00c45413          	srli	s0,s0,0xc
   11118:	fff40413          	addi	s0,s0,-1
   1111c:	00c41413          	slli	s0,s0,0xc
   11120:	00e44e63          	blt	s0,a4,1113c <_malloc_trim_r+0x70>
   11124:	00000593          	li	a1,0
   11128:	00098513          	mv	a0,s3
   1112c:	118010ef          	jal	12244 <_sbrk_r>
   11130:	01093783          	ld	a5,16(s2)
   11134:	009787b3          	add	a5,a5,s1
   11138:	02f50663          	beq	a0,a5,11164 <_malloc_trim_r+0x98>
   1113c:	00098513          	mv	a0,s3
   11140:	49d000ef          	jal	11ddc <__malloc_unlock>
   11144:	02813083          	ld	ra,40(sp)
   11148:	02013403          	ld	s0,32(sp)
   1114c:	01813483          	ld	s1,24(sp)
   11150:	01013903          	ld	s2,16(sp)
   11154:	00813983          	ld	s3,8(sp)
   11158:	00000513          	li	a0,0
   1115c:	03010113          	addi	sp,sp,48
   11160:	00008067          	ret
   11164:	408005b3          	neg	a1,s0
   11168:	00098513          	mv	a0,s3
   1116c:	0d8010ef          	jal	12244 <_sbrk_r>
   11170:	fff00793          	li	a5,-1
   11174:	04f50463          	beq	a0,a5,111bc <_malloc_trim_r+0xf0>
   11178:	01093683          	ld	a3,16(s2)
   1117c:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11180:	408484b3          	sub	s1,s1,s0
   11184:	0014e493          	ori	s1,s1,1
   11188:	00098513          	mv	a0,s3
   1118c:	408787bb          	subw	a5,a5,s0
   11190:	0096b423          	sd	s1,8(a3)
   11194:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11198:	445000ef          	jal	11ddc <__malloc_unlock>
   1119c:	02813083          	ld	ra,40(sp)
   111a0:	02013403          	ld	s0,32(sp)
   111a4:	01813483          	ld	s1,24(sp)
   111a8:	01013903          	ld	s2,16(sp)
   111ac:	00813983          	ld	s3,8(sp)
   111b0:	00100513          	li	a0,1
   111b4:	03010113          	addi	sp,sp,48
   111b8:	00008067          	ret
   111bc:	00000593          	li	a1,0
   111c0:	00098513          	mv	a0,s3
   111c4:	080010ef          	jal	12244 <_sbrk_r>
   111c8:	01093703          	ld	a4,16(s2)
   111cc:	01f00693          	li	a3,31
   111d0:	40e507b3          	sub	a5,a0,a4
   111d4:	f6f6d4e3          	bge	a3,a5,1113c <_malloc_trim_r+0x70>
   111d8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   111dc:	0017e793          	ori	a5,a5,1
   111e0:	40c50533          	sub	a0,a0,a2
   111e4:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   111e8:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   111ec:	f51ff06f          	j	1113c <_malloc_trim_r+0x70>

00000000000111f0 <_free_r>:
   111f0:	12058863          	beqz	a1,11320 <_free_r+0x130>
   111f4:	fe010113          	addi	sp,sp,-32
   111f8:	00813823          	sd	s0,16(sp)
   111fc:	00b13423          	sd	a1,8(sp)
   11200:	00050413          	mv	s0,a0
   11204:	00113c23          	sd	ra,24(sp)
   11208:	3d1000ef          	jal	11dd8 <__malloc_lock>
   1120c:	00813583          	ld	a1,8(sp)
   11210:	00013837          	lui	a6,0x13
   11214:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11218:	ff85b503          	ld	a0,-8(a1)
   1121c:	ff058713          	addi	a4,a1,-16
   11220:	01083883          	ld	a7,16(a6)
   11224:	ffe57793          	andi	a5,a0,-2
   11228:	00f70633          	add	a2,a4,a5
   1122c:	00863683          	ld	a3,8(a2)
   11230:	00157313          	andi	t1,a0,1
   11234:	ffc6f693          	andi	a3,a3,-4
   11238:	18c88e63          	beq	a7,a2,113d4 <_free_r+0x1e4>
   1123c:	00d63423          	sd	a3,8(a2)
   11240:	00d608b3          	add	a7,a2,a3
   11244:	0088b883          	ld	a7,8(a7)
   11248:	0018f893          	andi	a7,a7,1
   1124c:	08031e63          	bnez	t1,112e8 <_free_r+0xf8>
   11250:	ff05b303          	ld	t1,-16(a1)
   11254:	000135b7          	lui	a1,0x13
   11258:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1125c:	40670733          	sub	a4,a4,t1
   11260:	01073503          	ld	a0,16(a4)
   11264:	006787b3          	add	a5,a5,t1
   11268:	14b50063          	beq	a0,a1,113a8 <_free_r+0x1b8>
   1126c:	01873303          	ld	t1,24(a4)
   11270:	00653c23          	sd	t1,24(a0)
   11274:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11278:	1a088263          	beqz	a7,1141c <_free_r+0x22c>
   1127c:	0017e693          	ori	a3,a5,1
   11280:	00d73423          	sd	a3,8(a4)
   11284:	00f63023          	sd	a5,0(a2)
   11288:	1ff00693          	li	a3,511
   1128c:	0af6e663          	bltu	a3,a5,11338 <_free_r+0x148>
   11290:	0037d793          	srli	a5,a5,0x3
   11294:	00179693          	slli	a3,a5,0x1
   11298:	0026869b          	addiw	a3,a3,2
   1129c:	00369693          	slli	a3,a3,0x3
   112a0:	00883503          	ld	a0,8(a6)
   112a4:	00d806b3          	add	a3,a6,a3
   112a8:	0006b583          	ld	a1,0(a3)
   112ac:	4027d61b          	sraiw	a2,a5,0x2
   112b0:	00100793          	li	a5,1
   112b4:	00c797b3          	sll	a5,a5,a2
   112b8:	00a7e7b3          	or	a5,a5,a0
   112bc:	ff068613          	addi	a2,a3,-16
   112c0:	00b73823          	sd	a1,16(a4)
   112c4:	00c73c23          	sd	a2,24(a4)
   112c8:	00f83423          	sd	a5,8(a6)
   112cc:	00e6b023          	sd	a4,0(a3)
   112d0:	00e5bc23          	sd	a4,24(a1)
   112d4:	00040513          	mv	a0,s0
   112d8:	01013403          	ld	s0,16(sp)
   112dc:	01813083          	ld	ra,24(sp)
   112e0:	02010113          	addi	sp,sp,32
   112e4:	2f90006f          	j	11ddc <__malloc_unlock>
   112e8:	02089e63          	bnez	a7,11324 <_free_r+0x134>
   112ec:	000135b7          	lui	a1,0x13
   112f0:	00d787b3          	add	a5,a5,a3
   112f4:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   112f8:	01063683          	ld	a3,16(a2)
   112fc:	0017e893          	ori	a7,a5,1
   11300:	00f70533          	add	a0,a4,a5
   11304:	16b68663          	beq	a3,a1,11470 <_free_r+0x280>
   11308:	01863603          	ld	a2,24(a2)
   1130c:	00c6bc23          	sd	a2,24(a3)
   11310:	00d63823          	sd	a3,16(a2)
   11314:	01173423          	sd	a7,8(a4)
   11318:	00f53023          	sd	a5,0(a0)
   1131c:	f6dff06f          	j	11288 <_free_r+0x98>
   11320:	00008067          	ret
   11324:	00156513          	ori	a0,a0,1
   11328:	fea5bc23          	sd	a0,-8(a1)
   1132c:	00f63023          	sd	a5,0(a2)
   11330:	1ff00693          	li	a3,511
   11334:	f4f6fee3          	bgeu	a3,a5,11290 <_free_r+0xa0>
   11338:	0097d693          	srli	a3,a5,0x9
   1133c:	00400613          	li	a2,4
   11340:	0ed66263          	bltu	a2,a3,11424 <_free_r+0x234>
   11344:	0067d693          	srli	a3,a5,0x6
   11348:	00169593          	slli	a1,a3,0x1
   1134c:	0725859b          	addiw	a1,a1,114
   11350:	00359593          	slli	a1,a1,0x3
   11354:	0386861b          	addiw	a2,a3,56
   11358:	00b805b3          	add	a1,a6,a1
   1135c:	0005b683          	ld	a3,0(a1)
   11360:	ff058593          	addi	a1,a1,-16
   11364:	00d59863          	bne	a1,a3,11374 <_free_r+0x184>
   11368:	1240006f          	j	1148c <_free_r+0x29c>
   1136c:	0106b683          	ld	a3,16(a3)
   11370:	00d58863          	beq	a1,a3,11380 <_free_r+0x190>
   11374:	0086b603          	ld	a2,8(a3)
   11378:	ffc67613          	andi	a2,a2,-4
   1137c:	fec7e8e3          	bltu	a5,a2,1136c <_free_r+0x17c>
   11380:	0186b583          	ld	a1,24(a3)
   11384:	00b73c23          	sd	a1,24(a4)
   11388:	00d73823          	sd	a3,16(a4)
   1138c:	00040513          	mv	a0,s0
   11390:	01013403          	ld	s0,16(sp)
   11394:	01813083          	ld	ra,24(sp)
   11398:	00e5b823          	sd	a4,16(a1)
   1139c:	00e6bc23          	sd	a4,24(a3)
   113a0:	02010113          	addi	sp,sp,32
   113a4:	2390006f          	j	11ddc <__malloc_unlock>
   113a8:	0a089263          	bnez	a7,1144c <_free_r+0x25c>
   113ac:	01863583          	ld	a1,24(a2)
   113b0:	01063603          	ld	a2,16(a2)
   113b4:	00f686b3          	add	a3,a3,a5
   113b8:	0016e793          	ori	a5,a3,1
   113bc:	00b63c23          	sd	a1,24(a2)
   113c0:	00c5b823          	sd	a2,16(a1)
   113c4:	00f73423          	sd	a5,8(a4)
   113c8:	00d70733          	add	a4,a4,a3
   113cc:	00d73023          	sd	a3,0(a4)
   113d0:	f05ff06f          	j	112d4 <_free_r+0xe4>
   113d4:	00d786b3          	add	a3,a5,a3
   113d8:	02031063          	bnez	t1,113f8 <_free_r+0x208>
   113dc:	ff05b783          	ld	a5,-16(a1)
   113e0:	40f70733          	sub	a4,a4,a5
   113e4:	01073603          	ld	a2,16(a4)
   113e8:	00f686b3          	add	a3,a3,a5
   113ec:	01873783          	ld	a5,24(a4)
   113f0:	00f63c23          	sd	a5,24(a2)
   113f4:	00c7b823          	sd	a2,16(a5)
   113f8:	0016e613          	ori	a2,a3,1
   113fc:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11400:	00c73423          	sd	a2,8(a4)
   11404:	00e83823          	sd	a4,16(a6)
   11408:	ecf6e6e3          	bltu	a3,a5,112d4 <_free_r+0xe4>
   1140c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11410:	00040513          	mv	a0,s0
   11414:	cb9ff0ef          	jal	110cc <_malloc_trim_r>
   11418:	ebdff06f          	j	112d4 <_free_r+0xe4>
   1141c:	00d787b3          	add	a5,a5,a3
   11420:	ed9ff06f          	j	112f8 <_free_r+0x108>
   11424:	01400613          	li	a2,20
   11428:	02d67a63          	bgeu	a2,a3,1145c <_free_r+0x26c>
   1142c:	05400613          	li	a2,84
   11430:	06d66c63          	bltu	a2,a3,114a8 <_free_r+0x2b8>
   11434:	00c7d693          	srli	a3,a5,0xc
   11438:	00169593          	slli	a1,a3,0x1
   1143c:	0de5859b          	addiw	a1,a1,222
   11440:	00359593          	slli	a1,a1,0x3
   11444:	06e6861b          	addiw	a2,a3,110
   11448:	f11ff06f          	j	11358 <_free_r+0x168>
   1144c:	0017e693          	ori	a3,a5,1
   11450:	00d73423          	sd	a3,8(a4)
   11454:	00f63023          	sd	a5,0(a2)
   11458:	e7dff06f          	j	112d4 <_free_r+0xe4>
   1145c:	00169593          	slli	a1,a3,0x1
   11460:	0b85859b          	addiw	a1,a1,184
   11464:	00359593          	slli	a1,a1,0x3
   11468:	05b6861b          	addiw	a2,a3,91
   1146c:	eedff06f          	j	11358 <_free_r+0x168>
   11470:	02e83423          	sd	a4,40(a6)
   11474:	02e83023          	sd	a4,32(a6)
   11478:	00b73c23          	sd	a1,24(a4)
   1147c:	00b73823          	sd	a1,16(a4)
   11480:	01173423          	sd	a7,8(a4)
   11484:	00f53023          	sd	a5,0(a0)
   11488:	e4dff06f          	j	112d4 <_free_r+0xe4>
   1148c:	00883503          	ld	a0,8(a6)
   11490:	4026561b          	sraiw	a2,a2,0x2
   11494:	00100793          	li	a5,1
   11498:	00c797b3          	sll	a5,a5,a2
   1149c:	00a7e7b3          	or	a5,a5,a0
   114a0:	00f83423          	sd	a5,8(a6)
   114a4:	ee1ff06f          	j	11384 <_free_r+0x194>
   114a8:	15400613          	li	a2,340
   114ac:	00d66e63          	bltu	a2,a3,114c8 <_free_r+0x2d8>
   114b0:	00f7d693          	srli	a3,a5,0xf
   114b4:	00169593          	slli	a1,a3,0x1
   114b8:	0f05859b          	addiw	a1,a1,240
   114bc:	00359593          	slli	a1,a1,0x3
   114c0:	0776861b          	addiw	a2,a3,119
   114c4:	e95ff06f          	j	11358 <_free_r+0x168>
   114c8:	55400613          	li	a2,1364
   114cc:	00d66e63          	bltu	a2,a3,114e8 <_free_r+0x2f8>
   114d0:	0127d693          	srli	a3,a5,0x12
   114d4:	00169593          	slli	a1,a3,0x1
   114d8:	0fa5859b          	addiw	a1,a1,250
   114dc:	00359593          	slli	a1,a1,0x3
   114e0:	07c6861b          	addiw	a2,a3,124
   114e4:	e75ff06f          	j	11358 <_free_r+0x168>
   114e8:	7f000593          	li	a1,2032
   114ec:	07e00613          	li	a2,126
   114f0:	e69ff06f          	j	11358 <_free_r+0x168>

00000000000114f4 <_malloc_r>:
   114f4:	fa010113          	addi	sp,sp,-96
   114f8:	04813823          	sd	s0,80(sp)
   114fc:	04113c23          	sd	ra,88(sp)
   11500:	01758713          	addi	a4,a1,23
   11504:	02e00793          	li	a5,46
   11508:	00050413          	mv	s0,a0
   1150c:	08e7ee63          	bltu	a5,a4,115a8 <_malloc_r+0xb4>
   11510:	02000713          	li	a4,32
   11514:	06b76c63          	bltu	a4,a1,1158c <_malloc_r+0x98>
   11518:	0c1000ef          	jal	11dd8 <__malloc_lock>
   1151c:	02000713          	li	a4,32
   11520:	05000693          	li	a3,80
   11524:	00400893          	li	a7,4
   11528:	00013837          	lui	a6,0x13
   1152c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11530:	00d806b3          	add	a3,a6,a3
   11534:	0086b783          	ld	a5,8(a3)
   11538:	ff068613          	addi	a2,a3,-16
   1153c:	48c78063          	beq	a5,a2,119bc <_malloc_r+0x4c8>
   11540:	0087b703          	ld	a4,8(a5)
   11544:	0187b603          	ld	a2,24(a5)
   11548:	0107b583          	ld	a1,16(a5)
   1154c:	ffc77713          	andi	a4,a4,-4
   11550:	00e78733          	add	a4,a5,a4
   11554:	00873683          	ld	a3,8(a4)
   11558:	00c5bc23          	sd	a2,24(a1)
   1155c:	00b63823          	sd	a1,16(a2)
   11560:	0016e693          	ori	a3,a3,1
   11564:	00040513          	mv	a0,s0
   11568:	00d73423          	sd	a3,8(a4)
   1156c:	00f13423          	sd	a5,8(sp)
   11570:	06d000ef          	jal	11ddc <__malloc_unlock>
   11574:	00813783          	ld	a5,8(sp)
   11578:	05813083          	ld	ra,88(sp)
   1157c:	05013403          	ld	s0,80(sp)
   11580:	01078513          	addi	a0,a5,16
   11584:	06010113          	addi	sp,sp,96
   11588:	00008067          	ret
   1158c:	00c00793          	li	a5,12
   11590:	00f42023          	sw	a5,0(s0)
   11594:	00000513          	li	a0,0
   11598:	05813083          	ld	ra,88(sp)
   1159c:	05013403          	ld	s0,80(sp)
   115a0:	06010113          	addi	sp,sp,96
   115a4:	00008067          	ret
   115a8:	00100793          	li	a5,1
   115ac:	ff077713          	andi	a4,a4,-16
   115b0:	01f79793          	slli	a5,a5,0x1f
   115b4:	fcf77ce3          	bgeu	a4,a5,1158c <_malloc_r+0x98>
   115b8:	fcb76ae3          	bltu	a4,a1,1158c <_malloc_r+0x98>
   115bc:	00e13423          	sd	a4,8(sp)
   115c0:	019000ef          	jal	11dd8 <__malloc_lock>
   115c4:	00813703          	ld	a4,8(sp)
   115c8:	1f700793          	li	a5,503
   115cc:	4ee7fa63          	bgeu	a5,a4,11ac0 <_malloc_r+0x5cc>
   115d0:	00975793          	srli	a5,a4,0x9
   115d4:	18078a63          	beqz	a5,11768 <_malloc_r+0x274>
   115d8:	00400693          	li	a3,4
   115dc:	44f6ea63          	bltu	a3,a5,11a30 <_malloc_r+0x53c>
   115e0:	00675793          	srli	a5,a4,0x6
   115e4:	0397889b          	addiw	a7,a5,57
   115e8:	0018951b          	slliw	a0,a7,0x1
   115ec:	03878e1b          	addiw	t3,a5,56
   115f0:	00351513          	slli	a0,a0,0x3
   115f4:	00013837          	lui	a6,0x13
   115f8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   115fc:	00a80533          	add	a0,a6,a0
   11600:	00853783          	ld	a5,8(a0)
   11604:	ff050513          	addi	a0,a0,-16
   11608:	02f50863          	beq	a0,a5,11638 <_malloc_r+0x144>
   1160c:	01f00313          	li	t1,31
   11610:	0140006f          	j	11624 <_malloc_r+0x130>
   11614:	0187b583          	ld	a1,24(a5)
   11618:	36065263          	bgez	a2,1197c <_malloc_r+0x488>
   1161c:	00b50e63          	beq	a0,a1,11638 <_malloc_r+0x144>
   11620:	00058793          	mv	a5,a1
   11624:	0087b683          	ld	a3,8(a5)
   11628:	ffc6f693          	andi	a3,a3,-4
   1162c:	40e68633          	sub	a2,a3,a4
   11630:	fec352e3          	bge	t1,a2,11614 <_malloc_r+0x120>
   11634:	000e0893          	mv	a7,t3
   11638:	02083783          	ld	a5,32(a6)
   1163c:	00013e37          	lui	t3,0x13
   11640:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11644:	2fc78a63          	beq	a5,t3,11938 <_malloc_r+0x444>
   11648:	0087b303          	ld	t1,8(a5)
   1164c:	01f00613          	li	a2,31
   11650:	ffc37313          	andi	t1,t1,-4
   11654:	40e306b3          	sub	a3,t1,a4
   11658:	4ad64463          	blt	a2,a3,11b00 <_malloc_r+0x60c>
   1165c:	03c83423          	sd	t3,40(a6)
   11660:	03c83023          	sd	t3,32(a6)
   11664:	4606da63          	bgez	a3,11ad8 <_malloc_r+0x5e4>
   11668:	1ff00693          	li	a3,511
   1166c:	00883583          	ld	a1,8(a6)
   11670:	3466ee63          	bltu	a3,t1,119cc <_malloc_r+0x4d8>
   11674:	00335313          	srli	t1,t1,0x3
   11678:	00131693          	slli	a3,t1,0x1
   1167c:	0026869b          	addiw	a3,a3,2
   11680:	00369693          	slli	a3,a3,0x3
   11684:	00d806b3          	add	a3,a6,a3
   11688:	0006b503          	ld	a0,0(a3)
   1168c:	4023531b          	sraiw	t1,t1,0x2
   11690:	00100613          	li	a2,1
   11694:	00661633          	sll	a2,a2,t1
   11698:	00c5e5b3          	or	a1,a1,a2
   1169c:	ff068613          	addi	a2,a3,-16
   116a0:	00a7b823          	sd	a0,16(a5)
   116a4:	00c7bc23          	sd	a2,24(a5)
   116a8:	00b83423          	sd	a1,8(a6)
   116ac:	00f6b023          	sd	a5,0(a3)
   116b0:	00f53c23          	sd	a5,24(a0)
   116b4:	4028d79b          	sraiw	a5,a7,0x2
   116b8:	00100513          	li	a0,1
   116bc:	00f51533          	sll	a0,a0,a5
   116c0:	0aa5ec63          	bltu	a1,a0,11778 <_malloc_r+0x284>
   116c4:	00b577b3          	and	a5,a0,a1
   116c8:	02079463          	bnez	a5,116f0 <_malloc_r+0x1fc>
   116cc:	00151513          	slli	a0,a0,0x1
   116d0:	ffc8f893          	andi	a7,a7,-4
   116d4:	00b577b3          	and	a5,a0,a1
   116d8:	0048889b          	addiw	a7,a7,4
   116dc:	00079a63          	bnez	a5,116f0 <_malloc_r+0x1fc>
   116e0:	00151513          	slli	a0,a0,0x1
   116e4:	00b577b3          	and	a5,a0,a1
   116e8:	0048889b          	addiw	a7,a7,4
   116ec:	fe078ae3          	beqz	a5,116e0 <_malloc_r+0x1ec>
   116f0:	01f00e93          	li	t4,31
   116f4:	00189f13          	slli	t5,a7,0x1
   116f8:	002f0f1b          	addiw	t5,t5,2
   116fc:	003f1f13          	slli	t5,t5,0x3
   11700:	ff0f0f13          	addi	t5,t5,-16
   11704:	01e80f33          	add	t5,a6,t5
   11708:	000f0313          	mv	t1,t5
   1170c:	01833683          	ld	a3,24(t1)
   11710:	00088f93          	mv	t6,a7
   11714:	34d30263          	beq	t1,a3,11a58 <_malloc_r+0x564>
   11718:	0086b603          	ld	a2,8(a3)
   1171c:	00068793          	mv	a5,a3
   11720:	0186b683          	ld	a3,24(a3)
   11724:	ffc67613          	andi	a2,a2,-4
   11728:	40e605b3          	sub	a1,a2,a4
   1172c:	34bec263          	blt	t4,a1,11a70 <_malloc_r+0x57c>
   11730:	fe05c2e3          	bltz	a1,11714 <_malloc_r+0x220>
   11734:	00c78633          	add	a2,a5,a2
   11738:	00863703          	ld	a4,8(a2)
   1173c:	0107b583          	ld	a1,16(a5)
   11740:	00040513          	mv	a0,s0
   11744:	00176713          	ori	a4,a4,1
   11748:	00e63423          	sd	a4,8(a2)
   1174c:	00d5bc23          	sd	a3,24(a1)
   11750:	00b6b823          	sd	a1,16(a3)
   11754:	00f13423          	sd	a5,8(sp)
   11758:	684000ef          	jal	11ddc <__malloc_unlock>
   1175c:	00813783          	ld	a5,8(sp)
   11760:	01078513          	addi	a0,a5,16
   11764:	e35ff06f          	j	11598 <_malloc_r+0xa4>
   11768:	40000513          	li	a0,1024
   1176c:	04000893          	li	a7,64
   11770:	03f00e13          	li	t3,63
   11774:	e81ff06f          	j	115f4 <_malloc_r+0x100>
   11778:	01083783          	ld	a5,16(a6)
   1177c:	0087b683          	ld	a3,8(a5)
   11780:	ffc6f893          	andi	a7,a3,-4
   11784:	40e88633          	sub	a2,a7,a4
   11788:	00e8e663          	bltu	a7,a4,11794 <_malloc_r+0x2a0>
   1178c:	02062693          	slti	a3,a2,32
   11790:	1a068863          	beqz	a3,11940 <_malloc_r+0x44c>
   11794:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11798:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1179c:	fff00693          	li	a3,-1
   117a0:	00b705b3          	add	a1,a4,a1
   117a4:	44d60663          	beq	a2,a3,11bf0 <_malloc_r+0x6fc>
   117a8:	000016b7          	lui	a3,0x1
   117ac:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   117b0:	00d585b3          	add	a1,a1,a3
   117b4:	fffff6b7          	lui	a3,0xfffff
   117b8:	00d5f5b3          	and	a1,a1,a3
   117bc:	00040513          	mv	a0,s0
   117c0:	03013423          	sd	a6,40(sp)
   117c4:	02f13023          	sd	a5,32(sp)
   117c8:	00e13c23          	sd	a4,24(sp)
   117cc:	01113823          	sd	a7,16(sp)
   117d0:	00b13423          	sd	a1,8(sp)
   117d4:	271000ef          	jal	12244 <_sbrk_r>
   117d8:	fff00693          	li	a3,-1
   117dc:	00813583          	ld	a1,8(sp)
   117e0:	01013883          	ld	a7,16(sp)
   117e4:	01813703          	ld	a4,24(sp)
   117e8:	02013783          	ld	a5,32(sp)
   117ec:	02813803          	ld	a6,40(sp)
   117f0:	00050313          	mv	t1,a0
   117f4:	36d50663          	beq	a0,a3,11b60 <_malloc_r+0x66c>
   117f8:	011786b3          	add	a3,a5,a7
   117fc:	36d56063          	bltu	a0,a3,11b5c <_malloc_r+0x668>
   11800:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11804:	000e2603          	lw	a2,0(t3)
   11808:	00b6063b          	addw	a2,a2,a1
   1180c:	00ce2023          	sw	a2,0(t3)
   11810:	00060513          	mv	a0,a2
   11814:	4a668c63          	beq	a3,t1,11ccc <_malloc_r+0x7d8>
   11818:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1181c:	fff00613          	li	a2,-1
   11820:	4ccf0463          	beq	t5,a2,11ce8 <_malloc_r+0x7f4>
   11824:	40d306b3          	sub	a3,t1,a3
   11828:	00a686bb          	addw	a3,a3,a0
   1182c:	00de2023          	sw	a3,0(t3)
   11830:	00f37e93          	andi	t4,t1,15
   11834:	3c0e8e63          	beqz	t4,11c10 <_malloc_r+0x71c>
   11838:	ff037313          	andi	t1,t1,-16
   1183c:	000016b7          	lui	a3,0x1
   11840:	01030313          	addi	t1,t1,16
   11844:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11848:	00b30633          	add	a2,t1,a1
   1184c:	41d685b3          	sub	a1,a3,t4
   11850:	40c585b3          	sub	a1,a1,a2
   11854:	03459593          	slli	a1,a1,0x34
   11858:	0345d593          	srli	a1,a1,0x34
   1185c:	00040513          	mv	a0,s0
   11860:	05c13023          	sd	t3,64(sp)
   11864:	03013c23          	sd	a6,56(sp)
   11868:	02f13823          	sd	a5,48(sp)
   1186c:	02e13423          	sd	a4,40(sp)
   11870:	03113023          	sd	a7,32(sp)
   11874:	00613c23          	sd	t1,24(sp)
   11878:	01d13823          	sd	t4,16(sp)
   1187c:	00c13423          	sd	a2,8(sp)
   11880:	04b13423          	sd	a1,72(sp)
   11884:	1c1000ef          	jal	12244 <_sbrk_r>
   11888:	00050693          	mv	a3,a0
   1188c:	fff00513          	li	a0,-1
   11890:	00813603          	ld	a2,8(sp)
   11894:	01013e83          	ld	t4,16(sp)
   11898:	01813303          	ld	t1,24(sp)
   1189c:	02013883          	ld	a7,32(sp)
   118a0:	02813703          	ld	a4,40(sp)
   118a4:	03013783          	ld	a5,48(sp)
   118a8:	03813803          	ld	a6,56(sp)
   118ac:	04013e03          	ld	t3,64(sp)
   118b0:	48a68663          	beq	a3,a0,11d3c <_malloc_r+0x848>
   118b4:	04813583          	ld	a1,72(sp)
   118b8:	0005851b          	sext.w	a0,a1
   118bc:	000e2603          	lw	a2,0(t3)
   118c0:	406686b3          	sub	a3,a3,t1
   118c4:	00b686b3          	add	a3,a3,a1
   118c8:	0016e693          	ori	a3,a3,1
   118cc:	00683823          	sd	t1,16(a6)
   118d0:	00a6063b          	addw	a2,a2,a0
   118d4:	00d33423          	sd	a3,8(t1)
   118d8:	00ce2023          	sw	a2,0(t3)
   118dc:	03078e63          	beq	a5,a6,11918 <_malloc_r+0x424>
   118e0:	01f00513          	li	a0,31
   118e4:	41157663          	bgeu	a0,a7,11cf0 <_malloc_r+0x7fc>
   118e8:	0087b583          	ld	a1,8(a5)
   118ec:	fe888693          	addi	a3,a7,-24
   118f0:	ff06f693          	andi	a3,a3,-16
   118f4:	0015f593          	andi	a1,a1,1
   118f8:	00d5e5b3          	or	a1,a1,a3
   118fc:	00b7b423          	sd	a1,8(a5)
   11900:	00900893          	li	a7,9
   11904:	00d785b3          	add	a1,a5,a3
   11908:	0115b423          	sd	a7,8(a1)
   1190c:	0115b823          	sd	a7,16(a1)
   11910:	44d56863          	bltu	a0,a3,11d60 <_malloc_r+0x86c>
   11914:	00833683          	ld	a3,8(t1)
   11918:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1191c:	00c5f463          	bgeu	a1,a2,11924 <_malloc_r+0x430>
   11920:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11924:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11928:	00c5f463          	bgeu	a1,a2,11930 <_malloc_r+0x43c>
   1192c:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11930:	00030793          	mv	a5,t1
   11934:	2340006f          	j	11b68 <_malloc_r+0x674>
   11938:	00883583          	ld	a1,8(a6)
   1193c:	d79ff06f          	j	116b4 <_malloc_r+0x1c0>
   11940:	00176693          	ori	a3,a4,1
   11944:	00d7b423          	sd	a3,8(a5)
   11948:	00e78733          	add	a4,a5,a4
   1194c:	00166613          	ori	a2,a2,1
   11950:	00e83823          	sd	a4,16(a6)
   11954:	00040513          	mv	a0,s0
   11958:	00c73423          	sd	a2,8(a4)
   1195c:	00f13423          	sd	a5,8(sp)
   11960:	47c000ef          	jal	11ddc <__malloc_unlock>
   11964:	00813783          	ld	a5,8(sp)
   11968:	05813083          	ld	ra,88(sp)
   1196c:	05013403          	ld	s0,80(sp)
   11970:	01078513          	addi	a0,a5,16
   11974:	06010113          	addi	sp,sp,96
   11978:	00008067          	ret
   1197c:	0107b603          	ld	a2,16(a5)
   11980:	00d786b3          	add	a3,a5,a3
   11984:	0086b703          	ld	a4,8(a3)
   11988:	00b63c23          	sd	a1,24(a2)
   1198c:	00c5b823          	sd	a2,16(a1)
   11990:	00176713          	ori	a4,a4,1
   11994:	00040513          	mv	a0,s0
   11998:	00e6b423          	sd	a4,8(a3)
   1199c:	00f13423          	sd	a5,8(sp)
   119a0:	43c000ef          	jal	11ddc <__malloc_unlock>
   119a4:	00813783          	ld	a5,8(sp)
   119a8:	05813083          	ld	ra,88(sp)
   119ac:	05013403          	ld	s0,80(sp)
   119b0:	01078513          	addi	a0,a5,16
   119b4:	06010113          	addi	sp,sp,96
   119b8:	00008067          	ret
   119bc:	0186b783          	ld	a5,24(a3)
   119c0:	0028889b          	addiw	a7,a7,2
   119c4:	c6f68ae3          	beq	a3,a5,11638 <_malloc_r+0x144>
   119c8:	b79ff06f          	j	11540 <_malloc_r+0x4c>
   119cc:	00935693          	srli	a3,t1,0x9
   119d0:	00400613          	li	a2,4
   119d4:	16d67863          	bgeu	a2,a3,11b44 <_malloc_r+0x650>
   119d8:	01400613          	li	a2,20
   119dc:	28d66e63          	bltu	a2,a3,11c78 <_malloc_r+0x784>
   119e0:	00169513          	slli	a0,a3,0x1
   119e4:	0b85051b          	addiw	a0,a0,184
   119e8:	00351513          	slli	a0,a0,0x3
   119ec:	05b6861b          	addiw	a2,a3,91
   119f0:	00a80533          	add	a0,a6,a0
   119f4:	00053683          	ld	a3,0(a0)
   119f8:	ff050513          	addi	a0,a0,-16
   119fc:	00d51863          	bne	a0,a3,11a0c <_malloc_r+0x518>
   11a00:	1f80006f          	j	11bf8 <_malloc_r+0x704>
   11a04:	0106b683          	ld	a3,16(a3)
   11a08:	00d50863          	beq	a0,a3,11a18 <_malloc_r+0x524>
   11a0c:	0086b603          	ld	a2,8(a3)
   11a10:	ffc67613          	andi	a2,a2,-4
   11a14:	fec368e3          	bltu	t1,a2,11a04 <_malloc_r+0x510>
   11a18:	0186b503          	ld	a0,24(a3)
   11a1c:	00a7bc23          	sd	a0,24(a5)
   11a20:	00d7b823          	sd	a3,16(a5)
   11a24:	00f53823          	sd	a5,16(a0)
   11a28:	00f6bc23          	sd	a5,24(a3)
   11a2c:	c89ff06f          	j	116b4 <_malloc_r+0x1c0>
   11a30:	01400693          	li	a3,20
   11a34:	14f6fa63          	bgeu	a3,a5,11b88 <_malloc_r+0x694>
   11a38:	05400693          	li	a3,84
   11a3c:	24f6ee63          	bltu	a3,a5,11c98 <_malloc_r+0x7a4>
   11a40:	00c75793          	srli	a5,a4,0xc
   11a44:	06f7889b          	addiw	a7,a5,111
   11a48:	0018951b          	slliw	a0,a7,0x1
   11a4c:	06e78e1b          	addiw	t3,a5,110
   11a50:	00351513          	slli	a0,a0,0x3
   11a54:	ba1ff06f          	j	115f4 <_malloc_r+0x100>
   11a58:	001f8f9b          	addiw	t6,t6,1
   11a5c:	003ff793          	andi	a5,t6,3
   11a60:	01030313          	addi	t1,t1,16
   11a64:	14078263          	beqz	a5,11ba8 <_malloc_r+0x6b4>
   11a68:	01833683          	ld	a3,24(t1)
   11a6c:	ca9ff06f          	j	11714 <_malloc_r+0x220>
   11a70:	0107b503          	ld	a0,16(a5)
   11a74:	00176893          	ori	a7,a4,1
   11a78:	0117b423          	sd	a7,8(a5)
   11a7c:	00d53c23          	sd	a3,24(a0)
   11a80:	00a6b823          	sd	a0,16(a3)
   11a84:	00e78733          	add	a4,a5,a4
   11a88:	02e83423          	sd	a4,40(a6)
   11a8c:	02e83023          	sd	a4,32(a6)
   11a90:	0015e693          	ori	a3,a1,1
   11a94:	00c78633          	add	a2,a5,a2
   11a98:	01c73c23          	sd	t3,24(a4)
   11a9c:	01c73823          	sd	t3,16(a4)
   11aa0:	00d73423          	sd	a3,8(a4)
   11aa4:	00040513          	mv	a0,s0
   11aa8:	00b63023          	sd	a1,0(a2)
   11aac:	00f13423          	sd	a5,8(sp)
   11ab0:	32c000ef          	jal	11ddc <__malloc_unlock>
   11ab4:	00813783          	ld	a5,8(sp)
   11ab8:	01078513          	addi	a0,a5,16
   11abc:	addff06f          	j	11598 <_malloc_r+0xa4>
   11ac0:	00375893          	srli	a7,a4,0x3
   11ac4:	00189693          	slli	a3,a7,0x1
   11ac8:	0026869b          	addiw	a3,a3,2
   11acc:	00369693          	slli	a3,a3,0x3
   11ad0:	0008889b          	sext.w	a7,a7
   11ad4:	a55ff06f          	j	11528 <_malloc_r+0x34>
   11ad8:	00678333          	add	t1,a5,t1
   11adc:	00833703          	ld	a4,8(t1)
   11ae0:	00040513          	mv	a0,s0
   11ae4:	00f13423          	sd	a5,8(sp)
   11ae8:	00176713          	ori	a4,a4,1
   11aec:	00e33423          	sd	a4,8(t1)
   11af0:	2ec000ef          	jal	11ddc <__malloc_unlock>
   11af4:	00813783          	ld	a5,8(sp)
   11af8:	01078513          	addi	a0,a5,16
   11afc:	a9dff06f          	j	11598 <_malloc_r+0xa4>
   11b00:	00176613          	ori	a2,a4,1
   11b04:	00c7b423          	sd	a2,8(a5)
   11b08:	00e78733          	add	a4,a5,a4
   11b0c:	02e83423          	sd	a4,40(a6)
   11b10:	02e83023          	sd	a4,32(a6)
   11b14:	0016e613          	ori	a2,a3,1
   11b18:	00678333          	add	t1,a5,t1
   11b1c:	01c73c23          	sd	t3,24(a4)
   11b20:	01c73823          	sd	t3,16(a4)
   11b24:	00c73423          	sd	a2,8(a4)
   11b28:	00040513          	mv	a0,s0
   11b2c:	00d33023          	sd	a3,0(t1)
   11b30:	00f13423          	sd	a5,8(sp)
   11b34:	2a8000ef          	jal	11ddc <__malloc_unlock>
   11b38:	00813783          	ld	a5,8(sp)
   11b3c:	01078513          	addi	a0,a5,16
   11b40:	a59ff06f          	j	11598 <_malloc_r+0xa4>
   11b44:	00635693          	srli	a3,t1,0x6
   11b48:	00169513          	slli	a0,a3,0x1
   11b4c:	0725051b          	addiw	a0,a0,114
   11b50:	00351513          	slli	a0,a0,0x3
   11b54:	0386861b          	addiw	a2,a3,56
   11b58:	e99ff06f          	j	119f0 <_malloc_r+0x4fc>
   11b5c:	15078e63          	beq	a5,a6,11cb8 <_malloc_r+0x7c4>
   11b60:	01083783          	ld	a5,16(a6)
   11b64:	0087b683          	ld	a3,8(a5)
   11b68:	ffc6f693          	andi	a3,a3,-4
   11b6c:	40e68633          	sub	a2,a3,a4
   11b70:	00e6e663          	bltu	a3,a4,11b7c <_malloc_r+0x688>
   11b74:	02062693          	slti	a3,a2,32
   11b78:	dc0684e3          	beqz	a3,11940 <_malloc_r+0x44c>
   11b7c:	00040513          	mv	a0,s0
   11b80:	25c000ef          	jal	11ddc <__malloc_unlock>
   11b84:	a11ff06f          	j	11594 <_malloc_r+0xa0>
   11b88:	05c7889b          	addiw	a7,a5,92
   11b8c:	0018951b          	slliw	a0,a7,0x1
   11b90:	05b78e1b          	addiw	t3,a5,91
   11b94:	00351513          	slli	a0,a0,0x3
   11b98:	a5dff06f          	j	115f4 <_malloc_r+0x100>
   11b9c:	010f3783          	ld	a5,16(t5)
   11ba0:	fff8889b          	addiw	a7,a7,-1
   11ba4:	23e79663          	bne	a5,t5,11dd0 <_malloc_r+0x8dc>
   11ba8:	0038f793          	andi	a5,a7,3
   11bac:	ff0f0f13          	addi	t5,t5,-16
   11bb0:	fe0796e3          	bnez	a5,11b9c <_malloc_r+0x6a8>
   11bb4:	00883683          	ld	a3,8(a6)
   11bb8:	fff54793          	not	a5,a0
   11bbc:	00d7f7b3          	and	a5,a5,a3
   11bc0:	00f83423          	sd	a5,8(a6)
   11bc4:	00151513          	slli	a0,a0,0x1
   11bc8:	fff50693          	addi	a3,a0,-1
   11bcc:	baf6f6e3          	bgeu	a3,a5,11778 <_malloc_r+0x284>
   11bd0:	00f576b3          	and	a3,a0,a5
   11bd4:	00069a63          	bnez	a3,11be8 <_malloc_r+0x6f4>
   11bd8:	00151513          	slli	a0,a0,0x1
   11bdc:	00f576b3          	and	a3,a0,a5
   11be0:	004f8f9b          	addiw	t6,t6,4
   11be4:	fe068ae3          	beqz	a3,11bd8 <_malloc_r+0x6e4>
   11be8:	000f8893          	mv	a7,t6
   11bec:	b09ff06f          	j	116f4 <_malloc_r+0x200>
   11bf0:	02058593          	addi	a1,a1,32
   11bf4:	bc9ff06f          	j	117bc <_malloc_r+0x2c8>
   11bf8:	4026561b          	sraiw	a2,a2,0x2
   11bfc:	00100313          	li	t1,1
   11c00:	00c31633          	sll	a2,t1,a2
   11c04:	00c5e5b3          	or	a1,a1,a2
   11c08:	00b83423          	sd	a1,8(a6)
   11c0c:	e11ff06f          	j	11a1c <_malloc_r+0x528>
   11c10:	00b30633          	add	a2,t1,a1
   11c14:	40c005b3          	neg	a1,a2
   11c18:	03459593          	slli	a1,a1,0x34
   11c1c:	0345d593          	srli	a1,a1,0x34
   11c20:	00040513          	mv	a0,s0
   11c24:	03c13c23          	sd	t3,56(sp)
   11c28:	03013823          	sd	a6,48(sp)
   11c2c:	02f13423          	sd	a5,40(sp)
   11c30:	02e13023          	sd	a4,32(sp)
   11c34:	01113c23          	sd	a7,24(sp)
   11c38:	00613823          	sd	t1,16(sp)
   11c3c:	00c13423          	sd	a2,8(sp)
   11c40:	04b13023          	sd	a1,64(sp)
   11c44:	600000ef          	jal	12244 <_sbrk_r>
   11c48:	00050693          	mv	a3,a0
   11c4c:	fff00513          	li	a0,-1
   11c50:	01013303          	ld	t1,16(sp)
   11c54:	01813883          	ld	a7,24(sp)
   11c58:	02013703          	ld	a4,32(sp)
   11c5c:	02813783          	ld	a5,40(sp)
   11c60:	03013803          	ld	a6,48(sp)
   11c64:	03813e03          	ld	t3,56(sp)
   11c68:	0ea68463          	beq	a3,a0,11d50 <_malloc_r+0x85c>
   11c6c:	04013583          	ld	a1,64(sp)
   11c70:	0005851b          	sext.w	a0,a1
   11c74:	c49ff06f          	j	118bc <_malloc_r+0x3c8>
   11c78:	05400613          	li	a2,84
   11c7c:	08d66063          	bltu	a2,a3,11cfc <_malloc_r+0x808>
   11c80:	00c35693          	srli	a3,t1,0xc
   11c84:	00169513          	slli	a0,a3,0x1
   11c88:	0de5051b          	addiw	a0,a0,222
   11c8c:	00351513          	slli	a0,a0,0x3
   11c90:	06e6861b          	addiw	a2,a3,110
   11c94:	d5dff06f          	j	119f0 <_malloc_r+0x4fc>
   11c98:	15400693          	li	a3,340
   11c9c:	08f6e063          	bltu	a3,a5,11d1c <_malloc_r+0x828>
   11ca0:	00f75793          	srli	a5,a4,0xf
   11ca4:	0787889b          	addiw	a7,a5,120
   11ca8:	0018951b          	slliw	a0,a7,0x1
   11cac:	07778e1b          	addiw	t3,a5,119
   11cb0:	00351513          	slli	a0,a0,0x3
   11cb4:	941ff06f          	j	115f4 <_malloc_r+0x100>
   11cb8:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11cbc:	000e2503          	lw	a0,0(t3)
   11cc0:	00b5053b          	addw	a0,a0,a1
   11cc4:	00ae2023          	sw	a0,0(t3)
   11cc8:	b51ff06f          	j	11818 <_malloc_r+0x324>
   11ccc:	03431f13          	slli	t5,t1,0x34
   11cd0:	b40f14e3          	bnez	t5,11818 <_malloc_r+0x324>
   11cd4:	01083303          	ld	t1,16(a6)
   11cd8:	00b885b3          	add	a1,a7,a1
   11cdc:	0015e693          	ori	a3,a1,1
   11ce0:	00d33423          	sd	a3,8(t1)
   11ce4:	c35ff06f          	j	11918 <_malloc_r+0x424>
   11ce8:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11cec:	b45ff06f          	j	11830 <_malloc_r+0x33c>
   11cf0:	00100793          	li	a5,1
   11cf4:	00f33423          	sd	a5,8(t1)
   11cf8:	e85ff06f          	j	11b7c <_malloc_r+0x688>
   11cfc:	15400613          	li	a2,340
   11d00:	08d66a63          	bltu	a2,a3,11d94 <_malloc_r+0x8a0>
   11d04:	00f35693          	srli	a3,t1,0xf
   11d08:	00169513          	slli	a0,a3,0x1
   11d0c:	0f05051b          	addiw	a0,a0,240
   11d10:	00351513          	slli	a0,a0,0x3
   11d14:	0776861b          	addiw	a2,a3,119
   11d18:	cd9ff06f          	j	119f0 <_malloc_r+0x4fc>
   11d1c:	55400693          	li	a3,1364
   11d20:	08f6ea63          	bltu	a3,a5,11db4 <_malloc_r+0x8c0>
   11d24:	01275793          	srli	a5,a4,0x12
   11d28:	07d7889b          	addiw	a7,a5,125
   11d2c:	0018951b          	slliw	a0,a7,0x1
   11d30:	07c78e1b          	addiw	t3,a5,124
   11d34:	00351513          	slli	a0,a0,0x3
   11d38:	8bdff06f          	j	115f4 <_malloc_r+0x100>
   11d3c:	ff0e8e93          	addi	t4,t4,-16
   11d40:	01d606b3          	add	a3,a2,t4
   11d44:	00000513          	li	a0,0
   11d48:	00000593          	li	a1,0
   11d4c:	b71ff06f          	j	118bc <_malloc_r+0x3c8>
   11d50:	00813683          	ld	a3,8(sp)
   11d54:	00000593          	li	a1,0
   11d58:	00000513          	li	a0,0
   11d5c:	b61ff06f          	j	118bc <_malloc_r+0x3c8>
   11d60:	01078593          	addi	a1,a5,16
   11d64:	00040513          	mv	a0,s0
   11d68:	01c13c23          	sd	t3,24(sp)
   11d6c:	01013823          	sd	a6,16(sp)
   11d70:	00e13423          	sd	a4,8(sp)
   11d74:	c7cff0ef          	jal	111f0 <_free_r>
   11d78:	01013803          	ld	a6,16(sp)
   11d7c:	01813e03          	ld	t3,24(sp)
   11d80:	00813703          	ld	a4,8(sp)
   11d84:	01083303          	ld	t1,16(a6)
   11d88:	000e2603          	lw	a2,0(t3)
   11d8c:	00833683          	ld	a3,8(t1)
   11d90:	b89ff06f          	j	11918 <_malloc_r+0x424>
   11d94:	55400613          	li	a2,1364
   11d98:	02d66663          	bltu	a2,a3,11dc4 <_malloc_r+0x8d0>
   11d9c:	01235693          	srli	a3,t1,0x12
   11da0:	00169513          	slli	a0,a3,0x1
   11da4:	0fa5051b          	addiw	a0,a0,250
   11da8:	00351513          	slli	a0,a0,0x3
   11dac:	07c6861b          	addiw	a2,a3,124
   11db0:	c41ff06f          	j	119f0 <_malloc_r+0x4fc>
   11db4:	7f000513          	li	a0,2032
   11db8:	07f00893          	li	a7,127
   11dbc:	07e00e13          	li	t3,126
   11dc0:	835ff06f          	j	115f4 <_malloc_r+0x100>
   11dc4:	7f000513          	li	a0,2032
   11dc8:	07e00613          	li	a2,126
   11dcc:	c25ff06f          	j	119f0 <_malloc_r+0x4fc>
   11dd0:	00883783          	ld	a5,8(a6)
   11dd4:	df1ff06f          	j	11bc4 <_malloc_r+0x6d0>

0000000000011dd8 <__malloc_lock>:
   11dd8:	00008067          	ret

0000000000011ddc <__malloc_unlock>:
   11ddc:	00008067          	ret

0000000000011de0 <_fclose_r>:
   11de0:	fe010113          	addi	sp,sp,-32
   11de4:	00113c23          	sd	ra,24(sp)
   11de8:	01213023          	sd	s2,0(sp)
   11dec:	02058863          	beqz	a1,11e1c <_fclose_r+0x3c>
   11df0:	00813823          	sd	s0,16(sp)
   11df4:	00913423          	sd	s1,8(sp)
   11df8:	00058413          	mv	s0,a1
   11dfc:	00050493          	mv	s1,a0
   11e00:	00050663          	beqz	a0,11e0c <_fclose_r+0x2c>
   11e04:	04853783          	ld	a5,72(a0)
   11e08:	0c078c63          	beqz	a5,11ee0 <_fclose_r+0x100>
   11e0c:	01041783          	lh	a5,16(s0)
   11e10:	02079263          	bnez	a5,11e34 <_fclose_r+0x54>
   11e14:	01013403          	ld	s0,16(sp)
   11e18:	00813483          	ld	s1,8(sp)
   11e1c:	01813083          	ld	ra,24(sp)
   11e20:	00000913          	li	s2,0
   11e24:	00090513          	mv	a0,s2
   11e28:	00013903          	ld	s2,0(sp)
   11e2c:	02010113          	addi	sp,sp,32
   11e30:	00008067          	ret
   11e34:	00040593          	mv	a1,s0
   11e38:	00048513          	mv	a0,s1
   11e3c:	0b8000ef          	jal	11ef4 <__sflush_r>
   11e40:	05043783          	ld	a5,80(s0)
   11e44:	00050913          	mv	s2,a0
   11e48:	00078a63          	beqz	a5,11e5c <_fclose_r+0x7c>
   11e4c:	03043583          	ld	a1,48(s0)
   11e50:	00048513          	mv	a0,s1
   11e54:	000780e7          	jalr	a5
   11e58:	06054463          	bltz	a0,11ec0 <_fclose_r+0xe0>
   11e5c:	01045783          	lhu	a5,16(s0)
   11e60:	0807f793          	andi	a5,a5,128
   11e64:	06079663          	bnez	a5,11ed0 <_fclose_r+0xf0>
   11e68:	05843583          	ld	a1,88(s0)
   11e6c:	00058c63          	beqz	a1,11e84 <_fclose_r+0xa4>
   11e70:	07440793          	addi	a5,s0,116
   11e74:	00f58663          	beq	a1,a5,11e80 <_fclose_r+0xa0>
   11e78:	00048513          	mv	a0,s1
   11e7c:	b74ff0ef          	jal	111f0 <_free_r>
   11e80:	04043c23          	sd	zero,88(s0)
   11e84:	07843583          	ld	a1,120(s0)
   11e88:	00058863          	beqz	a1,11e98 <_fclose_r+0xb8>
   11e8c:	00048513          	mv	a0,s1
   11e90:	b60ff0ef          	jal	111f0 <_free_r>
   11e94:	06043c23          	sd	zero,120(s0)
   11e98:	aa1fe0ef          	jal	10938 <__sfp_lock_acquire>
   11e9c:	00041823          	sh	zero,16(s0)
   11ea0:	a9dfe0ef          	jal	1093c <__sfp_lock_release>
   11ea4:	01813083          	ld	ra,24(sp)
   11ea8:	01013403          	ld	s0,16(sp)
   11eac:	00813483          	ld	s1,8(sp)
   11eb0:	00090513          	mv	a0,s2
   11eb4:	00013903          	ld	s2,0(sp)
   11eb8:	02010113          	addi	sp,sp,32
   11ebc:	00008067          	ret
   11ec0:	01045783          	lhu	a5,16(s0)
   11ec4:	fff00913          	li	s2,-1
   11ec8:	0807f793          	andi	a5,a5,128
   11ecc:	f8078ee3          	beqz	a5,11e68 <_fclose_r+0x88>
   11ed0:	01843583          	ld	a1,24(s0)
   11ed4:	00048513          	mv	a0,s1
   11ed8:	b18ff0ef          	jal	111f0 <_free_r>
   11edc:	f8dff06f          	j	11e68 <_fclose_r+0x88>
   11ee0:	a35fe0ef          	jal	10914 <__sinit>
   11ee4:	f29ff06f          	j	11e0c <_fclose_r+0x2c>

0000000000011ee8 <fclose>:
   11ee8:	00050593          	mv	a1,a0
   11eec:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11ef0:	ef1ff06f          	j	11de0 <_fclose_r>

0000000000011ef4 <__sflush_r>:
   11ef4:	01059703          	lh	a4,16(a1)
   11ef8:	fd010113          	addi	sp,sp,-48
   11efc:	02813023          	sd	s0,32(sp)
   11f00:	01313423          	sd	s3,8(sp)
   11f04:	02113423          	sd	ra,40(sp)
   11f08:	00877793          	andi	a5,a4,8
   11f0c:	00058413          	mv	s0,a1
   11f10:	00050993          	mv	s3,a0
   11f14:	12079263          	bnez	a5,12038 <__sflush_r+0x144>
   11f18:	000017b7          	lui	a5,0x1
   11f1c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11f20:	0085a683          	lw	a3,8(a1)
   11f24:	00f767b3          	or	a5,a4,a5
   11f28:	00f59823          	sh	a5,16(a1)
   11f2c:	18d05c63          	blez	a3,120c4 <__sflush_r+0x1d0>
   11f30:	04843803          	ld	a6,72(s0)
   11f34:	0e080663          	beqz	a6,12020 <__sflush_r+0x12c>
   11f38:	00913c23          	sd	s1,24(sp)
   11f3c:	03371693          	slli	a3,a4,0x33
   11f40:	0009a483          	lw	s1,0(s3)
   11f44:	0009a023          	sw	zero,0(s3)
   11f48:	1806ca63          	bltz	a3,120dc <__sflush_r+0x1e8>
   11f4c:	03043583          	ld	a1,48(s0)
   11f50:	00000613          	li	a2,0
   11f54:	00100693          	li	a3,1
   11f58:	00098513          	mv	a0,s3
   11f5c:	000800e7          	jalr	a6
   11f60:	fff00793          	li	a5,-1
   11f64:	00050613          	mv	a2,a0
   11f68:	1af50c63          	beq	a0,a5,12120 <__sflush_r+0x22c>
   11f6c:	01041783          	lh	a5,16(s0)
   11f70:	04843803          	ld	a6,72(s0)
   11f74:	0047f793          	andi	a5,a5,4
   11f78:	00078e63          	beqz	a5,11f94 <__sflush_r+0xa0>
   11f7c:	00842703          	lw	a4,8(s0)
   11f80:	05843783          	ld	a5,88(s0)
   11f84:	40e60633          	sub	a2,a2,a4
   11f88:	00078663          	beqz	a5,11f94 <__sflush_r+0xa0>
   11f8c:	07042783          	lw	a5,112(s0)
   11f90:	40f60633          	sub	a2,a2,a5
   11f94:	03043583          	ld	a1,48(s0)
   11f98:	00000693          	li	a3,0
   11f9c:	00098513          	mv	a0,s3
   11fa0:	000800e7          	jalr	a6
   11fa4:	fff00713          	li	a4,-1
   11fa8:	01041783          	lh	a5,16(s0)
   11fac:	12e51c63          	bne	a0,a4,120e4 <__sflush_r+0x1f0>
   11fb0:	0009a683          	lw	a3,0(s3)
   11fb4:	01d00713          	li	a4,29
   11fb8:	18d76263          	bltu	a4,a3,1213c <__sflush_r+0x248>
   11fbc:	20400737          	lui	a4,0x20400
   11fc0:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11fc4:	00d75733          	srl	a4,a4,a3
   11fc8:	00177713          	andi	a4,a4,1
   11fcc:	16070863          	beqz	a4,1213c <__sflush_r+0x248>
   11fd0:	01843683          	ld	a3,24(s0)
   11fd4:	fffff737          	lui	a4,0xfffff
   11fd8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11fdc:	00e7f733          	and	a4,a5,a4
   11fe0:	00e41823          	sh	a4,16(s0)
   11fe4:	00042423          	sw	zero,8(s0)
   11fe8:	00d43023          	sd	a3,0(s0)
   11fec:	03379713          	slli	a4,a5,0x33
   11ff0:	00075663          	bgez	a4,11ffc <__sflush_r+0x108>
   11ff4:	0009a783          	lw	a5,0(s3)
   11ff8:	10078863          	beqz	a5,12108 <__sflush_r+0x214>
   11ffc:	05843583          	ld	a1,88(s0)
   12000:	0099a023          	sw	s1,0(s3)
   12004:	10058a63          	beqz	a1,12118 <__sflush_r+0x224>
   12008:	07440793          	addi	a5,s0,116
   1200c:	00f58663          	beq	a1,a5,12018 <__sflush_r+0x124>
   12010:	00098513          	mv	a0,s3
   12014:	9dcff0ef          	jal	111f0 <_free_r>
   12018:	01813483          	ld	s1,24(sp)
   1201c:	04043c23          	sd	zero,88(s0)
   12020:	02813083          	ld	ra,40(sp)
   12024:	02013403          	ld	s0,32(sp)
   12028:	00813983          	ld	s3,8(sp)
   1202c:	00000513          	li	a0,0
   12030:	03010113          	addi	sp,sp,48
   12034:	00008067          	ret
   12038:	01213823          	sd	s2,16(sp)
   1203c:	0185b903          	ld	s2,24(a1)
   12040:	08090a63          	beqz	s2,120d4 <__sflush_r+0x1e0>
   12044:	00913c23          	sd	s1,24(sp)
   12048:	0005b483          	ld	s1,0(a1)
   1204c:	00377713          	andi	a4,a4,3
   12050:	0125b023          	sd	s2,0(a1)
   12054:	412484bb          	subw	s1,s1,s2
   12058:	00000793          	li	a5,0
   1205c:	00071463          	bnez	a4,12064 <__sflush_r+0x170>
   12060:	0205a783          	lw	a5,32(a1)
   12064:	00f42623          	sw	a5,12(s0)
   12068:	00904863          	bgtz	s1,12078 <__sflush_r+0x184>
   1206c:	0640006f          	j	120d0 <__sflush_r+0x1dc>
   12070:	00a90933          	add	s2,s2,a0
   12074:	04905e63          	blez	s1,120d0 <__sflush_r+0x1dc>
   12078:	04043783          	ld	a5,64(s0)
   1207c:	03043583          	ld	a1,48(s0)
   12080:	00048693          	mv	a3,s1
   12084:	00090613          	mv	a2,s2
   12088:	00098513          	mv	a0,s3
   1208c:	000780e7          	jalr	a5
   12090:	40a484bb          	subw	s1,s1,a0
   12094:	fca04ee3          	bgtz	a0,12070 <__sflush_r+0x17c>
   12098:	01045783          	lhu	a5,16(s0)
   1209c:	01013903          	ld	s2,16(sp)
   120a0:	0407e793          	ori	a5,a5,64
   120a4:	02813083          	ld	ra,40(sp)
   120a8:	00f41823          	sh	a5,16(s0)
   120ac:	02013403          	ld	s0,32(sp)
   120b0:	01813483          	ld	s1,24(sp)
   120b4:	00813983          	ld	s3,8(sp)
   120b8:	fff00513          	li	a0,-1
   120bc:	03010113          	addi	sp,sp,48
   120c0:	00008067          	ret
   120c4:	0705a683          	lw	a3,112(a1)
   120c8:	e6d044e3          	bgtz	a3,11f30 <__sflush_r+0x3c>
   120cc:	f55ff06f          	j	12020 <__sflush_r+0x12c>
   120d0:	01813483          	ld	s1,24(sp)
   120d4:	01013903          	ld	s2,16(sp)
   120d8:	f49ff06f          	j	12020 <__sflush_r+0x12c>
   120dc:	09043603          	ld	a2,144(s0)
   120e0:	e95ff06f          	j	11f74 <__sflush_r+0x80>
   120e4:	01843683          	ld	a3,24(s0)
   120e8:	fffff737          	lui	a4,0xfffff
   120ec:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   120f0:	00e7f733          	and	a4,a5,a4
   120f4:	00e41823          	sh	a4,16(s0)
   120f8:	00042423          	sw	zero,8(s0)
   120fc:	00d43023          	sd	a3,0(s0)
   12100:	03379713          	slli	a4,a5,0x33
   12104:	ee075ce3          	bgez	a4,11ffc <__sflush_r+0x108>
   12108:	05843583          	ld	a1,88(s0)
   1210c:	08a43823          	sd	a0,144(s0)
   12110:	0099a023          	sw	s1,0(s3)
   12114:	ee059ae3          	bnez	a1,12008 <__sflush_r+0x114>
   12118:	01813483          	ld	s1,24(sp)
   1211c:	f05ff06f          	j	12020 <__sflush_r+0x12c>
   12120:	0009a783          	lw	a5,0(s3)
   12124:	e40784e3          	beqz	a5,11f6c <__sflush_r+0x78>
   12128:	fe378713          	addi	a4,a5,-29
   1212c:	00070c63          	beqz	a4,12144 <__sflush_r+0x250>
   12130:	fea78793          	addi	a5,a5,-22
   12134:	00078863          	beqz	a5,12144 <__sflush_r+0x250>
   12138:	01045783          	lhu	a5,16(s0)
   1213c:	0407e793          	ori	a5,a5,64
   12140:	f65ff06f          	j	120a4 <__sflush_r+0x1b0>
   12144:	0099a023          	sw	s1,0(s3)
   12148:	01813483          	ld	s1,24(sp)
   1214c:	ed5ff06f          	j	12020 <__sflush_r+0x12c>

0000000000012150 <_fflush_r>:
   12150:	00050793          	mv	a5,a0
   12154:	00050663          	beqz	a0,12160 <_fflush_r+0x10>
   12158:	04853703          	ld	a4,72(a0)
   1215c:	00070e63          	beqz	a4,12178 <_fflush_r+0x28>
   12160:	01059703          	lh	a4,16(a1)
   12164:	00071663          	bnez	a4,12170 <_fflush_r+0x20>
   12168:	00000513          	li	a0,0
   1216c:	00008067          	ret
   12170:	00078513          	mv	a0,a5
   12174:	d81ff06f          	j	11ef4 <__sflush_r>
   12178:	fe010113          	addi	sp,sp,-32
   1217c:	00b13423          	sd	a1,8(sp)
   12180:	00113c23          	sd	ra,24(sp)
   12184:	00a13023          	sd	a0,0(sp)
   12188:	f8cfe0ef          	jal	10914 <__sinit>
   1218c:	00813583          	ld	a1,8(sp)
   12190:	00013783          	ld	a5,0(sp)
   12194:	01059703          	lh	a4,16(a1)
   12198:	00070a63          	beqz	a4,121ac <_fflush_r+0x5c>
   1219c:	01813083          	ld	ra,24(sp)
   121a0:	00078513          	mv	a0,a5
   121a4:	02010113          	addi	sp,sp,32
   121a8:	d4dff06f          	j	11ef4 <__sflush_r>
   121ac:	01813083          	ld	ra,24(sp)
   121b0:	00000513          	li	a0,0
   121b4:	02010113          	addi	sp,sp,32
   121b8:	00008067          	ret

00000000000121bc <fflush>:
   121bc:	06050063          	beqz	a0,1221c <fflush+0x60>
   121c0:	00050593          	mv	a1,a0
   121c4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   121c8:	00050663          	beqz	a0,121d4 <fflush+0x18>
   121cc:	04853783          	ld	a5,72(a0)
   121d0:	00078c63          	beqz	a5,121e8 <fflush+0x2c>
   121d4:	01059783          	lh	a5,16(a1)
   121d8:	00079663          	bnez	a5,121e4 <fflush+0x28>
   121dc:	00000513          	li	a0,0
   121e0:	00008067          	ret
   121e4:	d11ff06f          	j	11ef4 <__sflush_r>
   121e8:	fe010113          	addi	sp,sp,-32
   121ec:	00b13423          	sd	a1,8(sp)
   121f0:	00a13023          	sd	a0,0(sp)
   121f4:	00113c23          	sd	ra,24(sp)
   121f8:	f1cfe0ef          	jal	10914 <__sinit>
   121fc:	00813583          	ld	a1,8(sp)
   12200:	00013503          	ld	a0,0(sp)
   12204:	01059783          	lh	a5,16(a1)
   12208:	02079863          	bnez	a5,12238 <fflush+0x7c>
   1220c:	01813083          	ld	ra,24(sp)
   12210:	00000513          	li	a0,0
   12214:	02010113          	addi	sp,sp,32
   12218:	00008067          	ret
   1221c:	00013637          	lui	a2,0x13
   12220:	000125b7          	lui	a1,0x12
   12224:	00013537          	lui	a0,0x13
   12228:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1222c:	15058593          	addi	a1,a1,336 # 12150 <_fflush_r>
   12230:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12234:	f3cfe06f          	j	10970 <_fwalk_sglue>
   12238:	01813083          	ld	ra,24(sp)
   1223c:	02010113          	addi	sp,sp,32
   12240:	cb5ff06f          	j	11ef4 <__sflush_r>

0000000000012244 <_sbrk_r>:
   12244:	fe010113          	addi	sp,sp,-32
   12248:	00813823          	sd	s0,16(sp)
   1224c:	00913423          	sd	s1,8(sp)
   12250:	00050493          	mv	s1,a0
   12254:	00058513          	mv	a0,a1
   12258:	00113c23          	sd	ra,24(sp)
   1225c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12260:	228000ef          	jal	12488 <_sbrk>
   12264:	fff00793          	li	a5,-1
   12268:	00f50c63          	beq	a0,a5,12280 <_sbrk_r+0x3c>
   1226c:	01813083          	ld	ra,24(sp)
   12270:	01013403          	ld	s0,16(sp)
   12274:	00813483          	ld	s1,8(sp)
   12278:	02010113          	addi	sp,sp,32
   1227c:	00008067          	ret
   12280:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12284:	fe0784e3          	beqz	a5,1226c <_sbrk_r+0x28>
   12288:	01813083          	ld	ra,24(sp)
   1228c:	01013403          	ld	s0,16(sp)
   12290:	00f4a023          	sw	a5,0(s1)
   12294:	00813483          	ld	s1,8(sp)
   12298:	02010113          	addi	sp,sp,32
   1229c:	00008067          	ret

00000000000122a0 <__libc_fini_array>:
   122a0:	fe010113          	addi	sp,sp,-32
   122a4:	00813823          	sd	s0,16(sp)
   122a8:	000137b7          	lui	a5,0x13
   122ac:	00013437          	lui	s0,0x13
   122b0:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   122b4:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   122b8:	408787b3          	sub	a5,a5,s0
   122bc:	00913423          	sd	s1,8(sp)
   122c0:	00113c23          	sd	ra,24(sp)
   122c4:	4037d493          	srai	s1,a5,0x3
   122c8:	02048063          	beqz	s1,122e8 <__libc_fini_array+0x48>
   122cc:	ff840413          	addi	s0,s0,-8
   122d0:	00f40433          	add	s0,s0,a5
   122d4:	00043783          	ld	a5,0(s0)
   122d8:	fff48493          	addi	s1,s1,-1
   122dc:	ff840413          	addi	s0,s0,-8
   122e0:	000780e7          	jalr	a5
   122e4:	fe0498e3          	bnez	s1,122d4 <__libc_fini_array+0x34>
   122e8:	01813083          	ld	ra,24(sp)
   122ec:	01013403          	ld	s0,16(sp)
   122f0:	00813483          	ld	s1,8(sp)
   122f4:	02010113          	addi	sp,sp,32
   122f8:	00008067          	ret

00000000000122fc <__register_exitproc>:
   122fc:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12300:	04078e63          	beqz	a5,1235c <__register_exitproc+0x60>
   12304:	0087a703          	lw	a4,8(a5)
   12308:	01f00813          	li	a6,31
   1230c:	08e84263          	blt	a6,a4,12390 <__register_exitproc+0x94>
   12310:	02050863          	beqz	a0,12340 <__register_exitproc+0x44>
   12314:	00371813          	slli	a6,a4,0x3
   12318:	01078833          	add	a6,a5,a6
   1231c:	10c83823          	sd	a2,272(a6)
   12320:	3107a883          	lw	a7,784(a5)
   12324:	00100613          	li	a2,1
   12328:	00e6163b          	sllw	a2,a2,a4
   1232c:	00c8e8b3          	or	a7,a7,a2
   12330:	3117a823          	sw	a7,784(a5)
   12334:	20d83823          	sd	a3,528(a6)
   12338:	00200693          	li	a3,2
   1233c:	02d50663          	beq	a0,a3,12368 <__register_exitproc+0x6c>
   12340:	0017069b          	addiw	a3,a4,1
   12344:	00371713          	slli	a4,a4,0x3
   12348:	00d7a423          	sw	a3,8(a5)
   1234c:	00e787b3          	add	a5,a5,a4
   12350:	00b7b823          	sd	a1,16(a5)
   12354:	00000513          	li	a0,0
   12358:	00008067          	ret
   1235c:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12360:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12364:	fa1ff06f          	j	12304 <__register_exitproc+0x8>
   12368:	3147a683          	lw	a3,788(a5)
   1236c:	00000513          	li	a0,0
   12370:	00d66633          	or	a2,a2,a3
   12374:	0017069b          	addiw	a3,a4,1
   12378:	00371713          	slli	a4,a4,0x3
   1237c:	30c7aa23          	sw	a2,788(a5)
   12380:	00d7a423          	sw	a3,8(a5)
   12384:	00e787b3          	add	a5,a5,a4
   12388:	00b7b823          	sd	a1,16(a5)
   1238c:	00008067          	ret
   12390:	fff00513          	li	a0,-1
   12394:	00008067          	ret

0000000000012398 <_close>:
   12398:	03900893          	li	a7,57
   1239c:	00000073          	ecall
   123a0:	00054663          	bltz	a0,123ac <_close+0x14>
   123a4:	0005051b          	sext.w	a0,a0
   123a8:	00008067          	ret
   123ac:	fe010113          	addi	sp,sp,-32
   123b0:	00113c23          	sd	ra,24(sp)
   123b4:	00a13423          	sd	a0,8(sp)
   123b8:	188000ef          	jal	12540 <__errno>
   123bc:	00813783          	ld	a5,8(sp)
   123c0:	01813083          	ld	ra,24(sp)
   123c4:	40f007bb          	negw	a5,a5
   123c8:	00f52023          	sw	a5,0(a0)
   123cc:	fff00513          	li	a0,-1
   123d0:	02010113          	addi	sp,sp,32
   123d4:	00008067          	ret

00000000000123d8 <_exit>:
   123d8:	05d00893          	li	a7,93
   123dc:	00000073          	ecall
   123e0:	00054463          	bltz	a0,123e8 <_exit+0x10>
   123e4:	0000006f          	j	123e4 <_exit+0xc>
   123e8:	fe010113          	addi	sp,sp,-32
   123ec:	00113c23          	sd	ra,24(sp)
   123f0:	00a13423          	sd	a0,8(sp)
   123f4:	14c000ef          	jal	12540 <__errno>
   123f8:	00813783          	ld	a5,8(sp)
   123fc:	40f007bb          	negw	a5,a5
   12400:	00f52023          	sw	a5,0(a0)
   12404:	0000006f          	j	12404 <_exit+0x2c>

0000000000012408 <_lseek>:
   12408:	03e00893          	li	a7,62
   1240c:	00000073          	ecall
   12410:	00054463          	bltz	a0,12418 <_lseek+0x10>
   12414:	00008067          	ret
   12418:	fe010113          	addi	sp,sp,-32
   1241c:	00113c23          	sd	ra,24(sp)
   12420:	00a13423          	sd	a0,8(sp)
   12424:	11c000ef          	jal	12540 <__errno>
   12428:	00813783          	ld	a5,8(sp)
   1242c:	01813083          	ld	ra,24(sp)
   12430:	40f007bb          	negw	a5,a5
   12434:	00f52023          	sw	a5,0(a0)
   12438:	fff00793          	li	a5,-1
   1243c:	00078513          	mv	a0,a5
   12440:	02010113          	addi	sp,sp,32
   12444:	00008067          	ret

0000000000012448 <_read>:
   12448:	03f00893          	li	a7,63
   1244c:	00000073          	ecall
   12450:	00054463          	bltz	a0,12458 <_read+0x10>
   12454:	00008067          	ret
   12458:	fe010113          	addi	sp,sp,-32
   1245c:	00113c23          	sd	ra,24(sp)
   12460:	00a13423          	sd	a0,8(sp)
   12464:	0dc000ef          	jal	12540 <__errno>
   12468:	00813783          	ld	a5,8(sp)
   1246c:	01813083          	ld	ra,24(sp)
   12470:	40f007bb          	negw	a5,a5
   12474:	00f52023          	sw	a5,0(a0)
   12478:	fff00793          	li	a5,-1
   1247c:	00078513          	mv	a0,a5
   12480:	02010113          	addi	sp,sp,32
   12484:	00008067          	ret

0000000000012488 <_sbrk>:
   12488:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1248c:	ff010113          	addi	sp,sp,-16
   12490:	00113423          	sd	ra,8(sp)
   12494:	00050713          	mv	a4,a0
   12498:	02079063          	bnez	a5,124b8 <_sbrk+0x30>
   1249c:	0d600893          	li	a7,214
   124a0:	00000513          	li	a0,0
   124a4:	00000073          	ecall
   124a8:	fff00793          	li	a5,-1
   124ac:	02f50c63          	beq	a0,a5,124e4 <_sbrk+0x5c>
   124b0:	00050793          	mv	a5,a0
   124b4:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   124b8:	00f70533          	add	a0,a4,a5
   124bc:	0d600893          	li	a7,214
   124c0:	00000073          	ecall
   124c4:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   124c8:	00f70733          	add	a4,a4,a5
   124cc:	00e51c63          	bne	a0,a4,124e4 <_sbrk+0x5c>
   124d0:	00813083          	ld	ra,8(sp)
   124d4:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   124d8:	00078513          	mv	a0,a5
   124dc:	01010113          	addi	sp,sp,16
   124e0:	00008067          	ret
   124e4:	05c000ef          	jal	12540 <__errno>
   124e8:	00813083          	ld	ra,8(sp)
   124ec:	00c00793          	li	a5,12
   124f0:	00f52023          	sw	a5,0(a0)
   124f4:	fff00513          	li	a0,-1
   124f8:	01010113          	addi	sp,sp,16
   124fc:	00008067          	ret

0000000000012500 <_write>:
   12500:	04000893          	li	a7,64
   12504:	00000073          	ecall
   12508:	00054463          	bltz	a0,12510 <_write+0x10>
   1250c:	00008067          	ret
   12510:	fe010113          	addi	sp,sp,-32
   12514:	00113c23          	sd	ra,24(sp)
   12518:	00a13423          	sd	a0,8(sp)
   1251c:	024000ef          	jal	12540 <__errno>
   12520:	00813783          	ld	a5,8(sp)
   12524:	01813083          	ld	ra,24(sp)
   12528:	40f007bb          	negw	a5,a5
   1252c:	00f52023          	sw	a5,0(a0)
   12530:	fff00793          	li	a5,-1
   12534:	00078513          	mv	a0,a5
   12538:	02010113          	addi	sp,sp,32
   1253c:	00008067          	ret

0000000000012540 <__errno>:
   12540:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12544:	00008067          	ret

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

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	002c                	.insn	2, 0x002c
   2:	0000                	.insn	2, 0x0000
   4:	0002                	.insn	2, 0x0002
   6:	0000                	.insn	2, 0x0000
   8:	0000                	.insn	2, 0x0000
   a:	0008                	.insn	2, 0x0008
   c:	0000                	.insn	2, 0x0000
   e:	0000                	.insn	2, 0x0000
  10:	04e0                	.insn	2, 0x04e0
  12:	0001                	.insn	2, 0x0001
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	0024                	.insn	2, 0x0024
	...
  2e:	0000                	.insn	2, 0x0000
  30:	002c                	.insn	2, 0x002c
  32:	0000                	.insn	2, 0x0000
  34:	0002                	.insn	2, 0x0002
  36:	0039                	.insn	2, 0x0039
  38:	0000                	.insn	2, 0x0000
  3a:	0008                	.insn	2, 0x0008
  3c:	0000                	.insn	2, 0x0000
  3e:	0000                	.insn	2, 0x0000
  40:	0504                	.insn	2, 0x0504
  42:	0001                	.insn	2, 0x0001
  44:	0000                	.insn	2, 0x0000
  46:	0000                	.insn	2, 0x0000
  48:	0100                	.insn	2, 0x0100
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	0035                	.insn	2, 0x0035
   2:	0000                	.insn	2, 0x0000
   4:	0005                	.insn	2, 0x0005
   6:	0801                	.insn	2, 0x0801
   8:	0000                	.insn	2, 0x0000
   a:	0000                	.insn	2, 0x0000
   c:	0001                	.insn	2, 0x0001
   e:	0000                	.insn	2, 0x0000
  10:	e000                	.insn	2, 0xe000
  12:	0104                	.insn	2, 0x0104
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	2400                	.insn	2, 0x2400
  1a:	0000                	.insn	2, 0x0000
  1c:	0000                	.insn	2, 0x0000
  1e:	00000033          	add	zero,zero,zero
  22:	009c                	.insn	2, 0x009c
  24:	0000                	.insn	2, 0x0000
  26:	8001                	.insn	2, 0x8001
  28:	a802                	.insn	2, 0xa802
  2a:	0000                	.insn	2, 0x0000
  2c:	3700                	.insn	2, 0x3700
  2e:	04e0                	.insn	2, 0x04e0
  30:	0001                	.insn	2, 0x0001
  32:	0000                	.insn	2, 0x0000
  34:	0000                	.insn	2, 0x0000
  36:	0324                	.insn	2, 0x0324
  38:	a900                	.insn	2, 0xa900
  3a:	0000                	.insn	2, 0x0000
  3c:	0500                	.insn	2, 0x0500
  3e:	0100                	.insn	2, 0x0100
  40:	2808                	.insn	2, 0x2808
  42:	0000                	.insn	2, 0x0000
  44:	0100                	.insn	2, 0x0100
  46:	007e                	.insn	2, 0x007e
  48:	0000                	.insn	2, 0x0000
  4a:	0504                	.insn	2, 0x0504
  4c:	0001                	.insn	2, 0x0001
  4e:	0000                	.insn	2, 0x0000
  50:	0000                	.insn	2, 0x0000
  52:	0280                	.insn	2, 0x0280
  54:	00b1                	.insn	2, 0x00b1
  56:	0000                	.insn	2, 0x0000
  58:	00000033          	add	zero,zero,zero
  5c:	009c                	.insn	2, 0x009c
  5e:	0000                	.insn	2, 0x0000
  60:	8001                	.insn	2, 0x8001
  62:	e102                	.insn	2, 0xe102
  64:	0000                	.insn	2, 0x0000
  66:	ab00                	.insn	2, 0xab00
  68:	0401                	.insn	2, 0x0401
  6a:	0105                	.insn	2, 0x0105
  6c:	0000                	.insn	2, 0x0000
  6e:	0000                	.insn	2, 0x0000
  70:	1800                	.insn	2, 0x1800
  72:	eb02                	.insn	2, 0xeb02
  74:	0000                	.insn	2, 0x0000
  76:	ab00                	.insn	2, 0xab00
  78:	4c01                	.insn	2, 0x4c01
  7a:	0105                	.insn	2, 0x0105
  7c:	0000                	.insn	2, 0x0000
  7e:	0000                	.insn	2, 0x0000
  80:	4800                	.insn	2, 0x4800
  82:	fe02                	.insn	2, 0xfe02
  84:	0000                	.insn	2, 0x0000
  86:	ab00                	.insn	2, 0xab00
  88:	1c01                	.insn	2, 0x1c01
  8a:	0105                	.insn	2, 0x0105
  8c:	0000                	.insn	2, 0x0000
  8e:	0000                	.insn	2, 0x0000
  90:	2000                	.insn	2, 0x2000
  92:	0802                	.insn	2, 0x0802
  94:	0001                	.insn	2, 0x0001
  96:	ab00                	.insn	2, 0xab00
  98:	c801                	.insn	2, 0xc801
  9a:	0105                	.insn	2, 0x0105
  9c:	0000                	.insn	2, 0x0000
  9e:	0000                	.insn	2, 0x0000
  a0:	3000                	.insn	2, 0x3000
  a2:	1102                	.insn	2, 0x1102
  a4:	0001                	.insn	2, 0x0001
  a6:	ab00                	.insn	2, 0xab00
  a8:	3c01                	.insn	2, 0x3c01
  aa:	0105                	.insn	2, 0x0105
  ac:	0000                	.insn	2, 0x0000
  ae:	0000                	.insn	2, 0x0000
  b0:	c800                	.insn	2, 0xc800
  b2:	0201                	.insn	2, 0x0201
  b4:	011a                	.insn	2, 0x011a
  b6:	0000                	.insn	2, 0x0000
  b8:	054401ab          	.insn	4, 0x054401ab
  bc:	0001                	.insn	2, 0x0001
  be:	0000                	.insn	2, 0x0000
  c0:	0000                	.insn	2, 0x0000
  c2:	0184                	.insn	2, 0x0184
  c4:	f402                	.insn	2, 0xf402
  c6:	0000                	.insn	2, 0x0000
  c8:	ab00                	.insn	2, 0xab00
  ca:	4c01                	.insn	2, 0x4c01
  cc:	0105                	.insn	2, 0x0105
  ce:	0000                	.insn	2, 0x0000
  d0:	0000                	.insn	2, 0x0000
  d2:	4800                	.insn	2, 0x4800
  d4:	2302                	.insn	2, 0x2302
  d6:	0001                	.insn	2, 0x0001
  d8:	ab00                	.insn	2, 0xab00
  da:	9401                	.insn	2, 0x9401
  dc:	0105                	.insn	2, 0x0105
  de:	0000                	.insn	2, 0x0000
  e0:	0000                	.insn	2, 0x0000
  e2:	1000                	.insn	2, 0x1000
  e4:	0003                	.short	0x0003

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	1101                	.insn	2, 0x1101
   2:	1001                	.insn	2, 0x1001
   4:	12011117          	auipc	sp,0x12011
   8:	1b0e030f          	.insn	4, 0x1b0e030f
   c:	250e                	.insn	2, 0x250e
   e:	130e                	.insn	2, 0x130e
  10:	0005                	.insn	2, 0x0005
  12:	0200                	.insn	2, 0x0200
  14:	002e                	.insn	2, 0x002e
  16:	193f0e03          	lb	t3,403(t5)
  1a:	1549                	.insn	2, 0x1549
  1c:	0111                	.insn	2, 0x0111
  1e:	0f12                	.insn	2, 0x0f12
  20:	0000                	.insn	2, 0x0000
  22:	00003b03          	ld	s6,0(zero) # 0 <exit-0x10120>
  26:	0000                	.insn	2, 0x0000
  28:	1101                	.insn	2, 0x1101
  2a:	1001                	.insn	2, 0x1001
  2c:	12011117          	auipc	sp,0x12011
  30:	1b0e030f          	.insn	4, 0x1b0e030f
  34:	250e                	.insn	2, 0x250e
  36:	130e                	.insn	2, 0x130e
  38:	0005                	.insn	2, 0x0005
  3a:	0200                	.insn	2, 0x0200
  3c:	002e                	.insn	2, 0x002e
  3e:	193f0e03          	lb	t3,403(t5)
  42:	1549                	.insn	2, 0x1549
  44:	0111                	.insn	2, 0x0111
  46:	0f12                	.insn	2, 0x0f12
  48:	0000                	.insn	2, 0x0000
  4a:	00003b03          	ld	s6,0(zero) # 0 <exit-0x10120>
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	007a                	.insn	2, 0x007a
   2:	0000                	.insn	2, 0x0000
   4:	0005                	.insn	2, 0x0005
   6:	0008                	.insn	2, 0x0008
   8:	002e                	.insn	2, 0x002e
   a:	0000                	.insn	2, 0x0000
   c:	0101                	.insn	2, 0x0101
   e:	fb01                	.insn	2, 0xfb01
  10:	0d0e                	.insn	2, 0x0d0e
  12:	0100                	.insn	2, 0x0100
  14:	0101                	.insn	2, 0x0101
  16:	0001                	.insn	2, 0x0001
  18:	0000                	.insn	2, 0x0000
  1a:	0001                	.insn	2, 0x0001
  1c:	0100                	.insn	2, 0x0100
  1e:	0101                	.insn	2, 0x0101
  20:	021f 0000 0000      	.insn	6, 0x021f
  26:	0069                	.insn	2, 0x0069
  28:	0000                	.insn	2, 0x0000
  2a:	0102                	.insn	2, 0x0102
  2c:	021f 020f 0093      	.insn	6, 0x0093020f021f
  32:	0000                	.insn	2, 0x0000
  34:	9301                	.insn	2, 0x9301
  36:	0000                	.insn	2, 0x0000
  38:	0100                	.insn	2, 0x0100
  3a:	0900                	.insn	2, 0x0900
  3c:	e002                	.insn	2, 0xe002
  3e:	0104                	.insn	2, 0x0104
  40:	0000                	.insn	2, 0x0000
  42:	0000                	.insn	2, 0x0000
  44:	0300                	.insn	2, 0x0300
  46:	0124                	.insn	2, 0x0124
  48:	04090103          	lb	sp,64(s2)
  4c:	0100                	.insn	2, 0x0100
  4e:	04090203          	lb	tp,64(s2)
  52:	0100                	.insn	2, 0x0100
  54:	04090103          	lb	sp,64(s2)
  58:	0100                	.insn	2, 0x0100
  5a:	04090103          	lb	sp,64(s2)
  5e:	0100                	.insn	2, 0x0100
  60:	04090203          	lb	tp,64(s2)
  64:	0100                	.insn	2, 0x0100
  66:	04090103          	lb	sp,64(s2)
  6a:	0100                	.insn	2, 0x0100
  6c:	04090103          	lb	sp,64(s2)
  70:	0100                	.insn	2, 0x0100
  72:	04090103          	lb	sp,64(s2)
  76:	0100                	.insn	2, 0x0100
  78:	0409                	.insn	2, 0x0409
  7a:	0000                	.insn	2, 0x0000
  7c:	0101                	.insn	2, 0x0101
  7e:	01c4                	.insn	2, 0x01c4
  80:	0000                	.insn	2, 0x0000
  82:	0005                	.insn	2, 0x0005
  84:	0008                	.insn	2, 0x0008
  86:	002e                	.insn	2, 0x002e
  88:	0000                	.insn	2, 0x0000
  8a:	0101                	.insn	2, 0x0101
  8c:	fb01                	.insn	2, 0xfb01
  8e:	0d0e                	.insn	2, 0x0d0e
  90:	0100                	.insn	2, 0x0100
  92:	0101                	.insn	2, 0x0101
  94:	0001                	.insn	2, 0x0001
  96:	0000                	.insn	2, 0x0000
  98:	0001                	.insn	2, 0x0001
  9a:	0100                	.insn	2, 0x0100
  9c:	0101                	.insn	2, 0x0101
  9e:	021f 0000 0000      	.insn	6, 0x021f
  a4:	0069                	.insn	2, 0x0069
  a6:	0000                	.insn	2, 0x0000
  a8:	0102                	.insn	2, 0x0102
  aa:	021f 020f 009c      	.insn	6, 0x009c020f021f
  b0:	0000                	.insn	2, 0x0000
  b2:	9c01                	.insn	2, 0x9c01
  b4:	0000                	.insn	2, 0x0000
  b6:	0100                	.insn	2, 0x0100
  b8:	0900                	.insn	2, 0x0900
  ba:	0402                	.insn	2, 0x0402
  bc:	0105                	.insn	2, 0x0105
  be:	0000                	.insn	2, 0x0000
  c0:	0000                	.insn	2, 0x0000
  c2:	0300                	.insn	2, 0x0300
  c4:	01030127          	.insn	4, 0x01030127
  c8:	0409                	.insn	2, 0x0409
  ca:	0100                	.insn	2, 0x0100
  cc:	04090103          	lb	sp,64(s2)
  d0:	0100                	.insn	2, 0x0100
  d2:	04090103          	lb	sp,64(s2)
  d6:	0100                	.insn	2, 0x0100
  d8:	04090103          	lb	sp,64(s2)
  dc:	0100                	.insn	2, 0x0100
  de:	04090103          	lb	sp,64(s2)
  e2:	0100                	.insn	2, 0x0100
  e4:	04090503          	lb	a0,64(s2)
  e8:	0100                	.insn	2, 0x0100
  ea:	04090103          	lb	sp,64(s2)
  ee:	0100                	.insn	2, 0x0100
  f0:	04090103          	lb	sp,64(s2)
  f4:	0100                	.insn	2, 0x0100
  f6:	04090103          	lb	sp,64(s2)
  fa:	0100                	.insn	2, 0x0100
  fc:	04090103          	lb	sp,64(s2)
 100:	0100                	.insn	2, 0x0100
 102:	04090103          	lb	sp,64(s2)
 106:	0100                	.insn	2, 0x0100
 108:	04090103          	lb	sp,64(s2)
 10c:	0100                	.insn	2, 0x0100
 10e:	04090103          	lb	sp,64(s2)
 112:	0100                	.insn	2, 0x0100
 114:	04090703          	lb	a4,64(s2)
 118:	0100                	.insn	2, 0x0100
 11a:	04090103          	lb	sp,64(s2)
 11e:	0100                	.insn	2, 0x0100
 120:	04090403          	lb	s0,64(s2)
 124:	0100                	.insn	2, 0x0100
 126:	04090103          	lb	sp,64(s2)
 12a:	0100                	.insn	2, 0x0100
 12c:	04090403          	lb	s0,64(s2)
 130:	0100                	.insn	2, 0x0100
 132:	04090103          	lb	sp,64(s2)
 136:	0100                	.insn	2, 0x0100
 138:	04090103          	lb	sp,64(s2)
 13c:	0100                	.insn	2, 0x0100
 13e:	04090103          	lb	sp,64(s2)
 142:	0100                	.insn	2, 0x0100
 144:	04090103          	lb	sp,64(s2)
 148:	0100                	.insn	2, 0x0100
 14a:	04090103          	lb	sp,64(s2)
 14e:	0100                	.insn	2, 0x0100
 150:	04090203          	lb	tp,64(s2)
 154:	0100                	.insn	2, 0x0100
 156:	04090103          	lb	sp,64(s2)
 15a:	0100                	.insn	2, 0x0100
 15c:	04090103          	lb	sp,64(s2)
 160:	0100                	.insn	2, 0x0100
 162:	04090103          	lb	sp,64(s2)
 166:	0100                	.insn	2, 0x0100
 168:	04090203          	lb	tp,64(s2)
 16c:	0100                	.insn	2, 0x0100
 16e:	04090203          	lb	tp,64(s2)
 172:	0100                	.insn	2, 0x0100
 174:	04090103          	lb	sp,64(s2)
 178:	0100                	.insn	2, 0x0100
 17a:	04090103          	lb	sp,64(s2)
 17e:	0100                	.insn	2, 0x0100
 180:	04090203          	lb	tp,64(s2)
 184:	0100                	.insn	2, 0x0100
 186:	04090103          	lb	sp,64(s2)
 18a:	0100                	.insn	2, 0x0100
 18c:	04090103          	lb	sp,64(s2)
 190:	0100                	.insn	2, 0x0100
 192:	04090203          	lb	tp,64(s2)
 196:	0100                	.insn	2, 0x0100
 198:	04090603          	lb	a2,64(s2)
 19c:	0100                	.insn	2, 0x0100
 19e:	04090103          	lb	sp,64(s2)
 1a2:	0100                	.insn	2, 0x0100
 1a4:	04090103          	lb	sp,64(s2)
 1a8:	0100                	.insn	2, 0x0100
 1aa:	04090103          	lb	sp,64(s2)
 1ae:	0100                	.insn	2, 0x0100
 1b0:	04090503          	lb	a0,64(s2)
 1b4:	0100                	.insn	2, 0x0100
 1b6:	04090203          	lb	tp,64(s2)
 1ba:	0100                	.insn	2, 0x0100
 1bc:	04090203          	lb	tp,64(s2)
 1c0:	0100                	.insn	2, 0x0100
 1c2:	04090103          	lb	sp,64(s2)
 1c6:	0100                	.insn	2, 0x0100
 1c8:	04090203          	lb	tp,64(s2)
 1cc:	0100                	.insn	2, 0x0100
 1ce:	04090203          	lb	tp,64(s2)
 1d2:	0100                	.insn	2, 0x0100
 1d4:	04090103          	lb	sp,64(s2)
 1d8:	0100                	.insn	2, 0x0100
 1da:	04090103          	lb	sp,64(s2)
 1de:	0100                	.insn	2, 0x0100
 1e0:	04090103          	lb	sp,64(s2)
 1e4:	0100                	.insn	2, 0x0100
 1e6:	04090403          	lb	s0,64(s2)
 1ea:	0100                	.insn	2, 0x0100
 1ec:	04090103          	lb	sp,64(s2)
 1f0:	0100                	.insn	2, 0x0100
 1f2:	04090103          	lb	sp,64(s2)
 1f6:	0100                	.insn	2, 0x0100
 1f8:	04090203          	lb	tp,64(s2)
 1fc:	0100                	.insn	2, 0x0100
 1fe:	04090103          	lb	sp,64(s2)
 202:	0100                	.insn	2, 0x0100
 204:	04090103          	lb	sp,64(s2)
 208:	0100                	.insn	2, 0x0100
 20a:	04090203          	lb	tp,64(s2)
 20e:	0100                	.insn	2, 0x0100
 210:	04090103          	lb	sp,64(s2)
 214:	0100                	.insn	2, 0x0100
 216:	04090203          	lb	tp,64(s2)
 21a:	0100                	.insn	2, 0x0100
 21c:	04090103          	lb	sp,64(s2)
 220:	0100                	.insn	2, 0x0100
 222:	04090103          	lb	sp,64(s2)
 226:	0100                	.insn	2, 0x0100
 228:	04090103          	lb	sp,64(s2)
 22c:	0100                	.insn	2, 0x0100
 22e:	04090603          	lb	a2,64(s2)
 232:	0100                	.insn	2, 0x0100
 234:	04090103          	lb	sp,64(s2)
 238:	0100                	.insn	2, 0x0100
 23a:	04090103          	lb	sp,64(s2)
 23e:	0100                	.insn	2, 0x0100
 240:	0409                	.insn	2, 0x0409
 242:	0000                	.insn	2, 0x0000
 244:	0101                	.insn	2, 0x0101

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	2e2e                	.insn	2, 0x2e2e
   2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   6:	2e2e                	.insn	2, 0x2e2e
   8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   c:	2e2e                	.insn	2, 0x2e2e
   e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  12:	2f636367          	.insn	4, 0x2f636367
  16:	696c                	.insn	2, 0x696c
  18:	6762                	.insn	2, 0x6762
  1a:	632f6363          	bltu	t5,s2,640 <exit-0xfae0>
  1e:	69666e6f          	jal	t3,666b4 <__BSS_END__+0x5273c>
  22:	69722f67          	.insn	4, 0x69722f67
  26:	2f766373          	.insn	4, 0x2f766373
  2a:	756d                	.insn	2, 0x756d
  2c:	646c                	.insn	2, 0x646c
  2e:	3369                	.insn	2, 0x3369
  30:	532e                	.insn	2, 0x532e
  32:	2f00                	.insn	2, 0x2f00
  34:	6f68                	.insn	2, 0x6f68
  36:	656d                	.insn	2, 0x656d
  38:	6575792f          	.insn	4, 0x6575792f
  3c:	2f72                	.insn	2, 0x2f72
  3e:	796d                	.insn	2, 0x796d
  40:	7270                	.insn	2, 0x7270
  42:	69722f6f          	jal	t5,22ed8 <__BSS_END__+0xef60>
  46:	2d766373          	.insn	4, 0x2d766373
  4a:	2d756e67          	.insn	4, 0x2d756e67
  4e:	6f74                	.insn	2, 0x6f74
  50:	68636c6f          	jal	s8,366d6 <__BSS_END__+0x2275e>
  54:	6961                	.insn	2, 0x6961
  56:	2f6e                	.insn	2, 0x2f6e
  58:	7562                	.insn	2, 0x7562
  5a:	6c69                	.insn	2, 0x6c69
  5c:	2f64                	.insn	2, 0x2f64
  5e:	7562                	.insn	2, 0x7562
  60:	6c69                	.insn	2, 0x6c69
  62:	2d64                	.insn	2, 0x2d64
  64:	2d636367          	.insn	4, 0x2d636367
  68:	656e                	.insn	2, 0x656e
  6a:	62696c77          	.insn	4, 0x62696c77
  6e:	732d                	.insn	2, 0x732d
  70:	6174                	.insn	2, 0x6174
  72:	2f326567          	.insn	4, 0x2f326567
  76:	6972                	.insn	2, 0x6972
  78:	36766373          	.insn	4, 0x36766373
  7c:	2d34                	.insn	2, 0x2d34
  7e:	6e75                	.insn	2, 0x6e75
  80:	776f6e6b          	.insn	4, 0x776f6e6b
  84:	2d6e                	.insn	2, 0x2d6e
  86:	6c65                	.insn	2, 0x6c65
  88:	2f66                	.insn	2, 0x2f66
  8a:	7672                	.insn	2, 0x7672
  8c:	3436                	.insn	2, 0x3436
  8e:	2f69                	.insn	2, 0x2f69
  90:	706c                	.insn	2, 0x706c
  92:	3436                	.insn	2, 0x3436
  94:	62696c2f          	.insn	4, 0x62696c2f
  98:	00636367          	.insn	4, 0x00636367
  9c:	20554e47          	.insn	4, 0x20554e47
  a0:	5341                	.insn	2, 0x5341
  a2:	3220                	.insn	2, 0x3220
  a4:	342e                	.insn	2, 0x342e
  a6:	0035                	.insn	2, 0x0035
  a8:	5f5f 756d 646c      	.insn	6, 0x646c756d5f5f
  ae:	3369                	.insn	2, 0x3369
  b0:	2e00                	.insn	2, 0x2e00
  b2:	2f2e                	.insn	2, 0x2f2e
  b4:	2e2e                	.insn	2, 0x2e2e
  b6:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  ba:	2e2e                	.insn	2, 0x2e2e
  bc:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  c0:	2e2e                	.insn	2, 0x2e2e
  c2:	6363672f          	.insn	4, 0x6363672f
  c6:	62696c2f          	.insn	4, 0x62696c2f
  ca:	2f636367          	.insn	4, 0x2f636367
  ce:	666e6f63          	bltu	t3,t1,74c <exit-0xf9d4>
  d2:	6769                	.insn	2, 0x6769
  d4:	7369722f          	.insn	4, 0x7369722f
  d8:	642f7663          	bgeu	t5,sp,724 <exit-0xf9fc>
  dc:	7669                	.insn	2, 0x7669
  de:	532e                	.insn	2, 0x532e
  e0:	5f00                	.insn	2, 0x5f00
  e2:	755f 6964 7376      	.insn	6, 0x73766964755f
  e8:	3369                	.insn	2, 0x3369
  ea:	5f00                	.insn	2, 0x5f00
  ec:	685f 6469 6564      	.insn	6, 0x65646469685f
  f2:	5f6e                	.insn	2, 0x5f6e
  f4:	5f5f 6475 7669      	.insn	6, 0x766964755f5f
  fa:	6964                	.insn	2, 0x6964
  fc:	5f5f0033          	.insn	4, 0x5f5f0033
 100:	6d75                	.insn	2, 0x6d75
 102:	6973646f          	jal	s0,36f98 <__BSS_END__+0x23020>
 106:	5f5f0033          	.insn	4, 0x5f5f0033
 10a:	6f6d                	.insn	2, 0x6f6d
 10c:	6464                	.insn	2, 0x6464
 10e:	3369                	.insn	2, 0x3369
 110:	5f00                	.insn	2, 0x5f00
 112:	645f 7669 6973      	.insn	6, 0x69737669645f
 118:	5f5f0033          	.insn	4, 0x5f5f0033
 11c:	6964                	.insn	2, 0x6964
 11e:	6476                	.insn	2, 0x6476
 120:	3369                	.insn	2, 0x3369
 122:	5f00                	.insn	2, 0x5f00
 124:	755f 6f6d 6464      	.insn	6, 0x64646f6d755f
 12a:	3369                	.insn	2, 0x3369
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6d6f682f          	.insn	4, 0x6d6f682f
   4:	2f65                	.insn	2, 0x2f65
   6:	7579                	.insn	2, 0x7579
   8:	7265                	.insn	2, 0x7265
   a:	70796d2f          	.insn	4, 0x70796d2f
   e:	6f72                	.insn	2, 0x6f72
  10:	7369722f          	.insn	4, 0x7369722f
  14:	672d7663          	bgeu	s10,s2,680 <exit-0xfaa0>
  18:	756e                	.insn	2, 0x756e
  1a:	742d                	.insn	2, 0x742d
  1c:	636c6f6f          	jal	t5,c6652 <__BSS_END__+0xb26da>
  20:	6168                	.insn	2, 0x6168
  22:	6e69                	.insn	2, 0x6e69
  24:	6975622f          	.insn	4, 0x6975622f
  28:	646c                	.insn	2, 0x646c
  2a:	6975622f          	.insn	4, 0x6975622f
  2e:	646c                	.insn	2, 0x646c
  30:	672d                	.insn	2, 0x672d
  32:	6e2d6363          	bltu	s10,sp,718 <exit-0xfa08>
  36:	7765                	.insn	2, 0x7765
  38:	696c                	.insn	2, 0x696c
  3a:	2d62                	.insn	2, 0x2d62
  3c:	67617473          	.insn	4, 0x67617473
  40:	3265                	.insn	2, 0x3265
  42:	7369722f          	.insn	4, 0x7369722f
  46:	34367663          	bgeu	a2,gp,392 <exit-0xfd8e>
  4a:	752d                	.insn	2, 0x752d
  4c:	6b6e                	.insn	2, 0x6b6e
  4e:	6f6e                	.insn	2, 0x6f6e
  50:	652d6e77          	.insn	4, 0x652d6e77
  54:	666c                	.insn	2, 0x666c
  56:	3676722f          	.insn	4, 0x3676722f
  5a:	6934                	.insn	2, 0x6934
  5c:	36706c2f          	.insn	4, 0x36706c2f
  60:	2f34                	.insn	2, 0x2f34
  62:	696c                	.insn	2, 0x696c
  64:	6762                	.insn	2, 0x6762
  66:	2e006363          	bltu	zero,zero,34c <exit-0xfdd4>
  6a:	2f2e                	.insn	2, 0x2f2e
  6c:	2e2e                	.insn	2, 0x2e2e
  6e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  72:	2e2e                	.insn	2, 0x2e2e
  74:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  78:	2e2e                	.insn	2, 0x2e2e
  7a:	6363672f          	.insn	4, 0x6363672f
  7e:	62696c2f          	.insn	4, 0x62696c2f
  82:	2f636367          	.insn	4, 0x2f636367
  86:	666e6f63          	bltu	t3,t1,704 <exit-0xfa1c>
  8a:	6769                	.insn	2, 0x6769
  8c:	7369722f          	.insn	4, 0x7369722f
  90:	6d007663          	bgeu	zero,a6,75c <exit-0xf9c4>
  94:	6c75                	.insn	2, 0x6c75
  96:	6964                	.insn	2, 0x6964
  98:	00532e33          	slt	t3,t1,t0
  9c:	6964                	.insn	2, 0x6964
  9e:	2e76                	.insn	2, 0x2e76
  a0:	0053                	.short	0x0053

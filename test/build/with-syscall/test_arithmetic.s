
test/build/with-syscall/test_arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	691000ef          	jal	10fc4 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	2d4020ef          	jal	1241c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	2e450513          	addi	a0,a0,740 # 122e4 <__libc_fini_array>
   1015c:	7a10006f          	j	110fc <atexit>
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
   10184:	565000ef          	jal	10ee8 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	f7450513          	addi	a0,a0,-140 # 110fc <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	15050513          	addi	a0,a0,336 # 122e4 <__libc_fini_array>
   1019c:	761000ef          	jal	110fc <atexit>
   101a0:	4b5000ef          	jal	10e54 <__libc_init_array>
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
   101d8:	59050513          	addi	a0,a0,1424 # 12590 <__EH_FRAME_BEGIN__>
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
   1020c:	59050513          	addi	a0,a0,1424 # 12590 <__EH_FRAME_BEGIN__>
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
   102c4:	260000ef          	jal	10524 <__muldi3>
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
   102f4:	294000ef          	jal	10588 <__divdi3>
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

00000000000104e0 <find_min>:
   104e0:	fd010113          	addi	sp,sp,-48
   104e4:	02113423          	sd	ra,40(sp)
   104e8:	02813023          	sd	s0,32(sp)
   104ec:	03010413          	addi	s0,sp,48
   104f0:	fca43c23          	sd	a0,-40(s0)
   104f4:	00058793          	mv	a5,a1
   104f8:	fcf42a23          	sw	a5,-44(s0)
   104fc:	00700893          	li	a7,7
   10500:	00000073          	ecall
   10504:	00050793          	mv	a5,a0
   10508:	fef42623          	sw	a5,-20(s0)
   1050c:	fec42783          	lw	a5,-20(s0)
   10510:	00078513          	mv	a0,a5
   10514:	02813083          	ld	ra,40(sp)
   10518:	02013403          	ld	s0,32(sp)
   1051c:	03010113          	addi	sp,sp,48
   10520:	00008067          	ret

0000000000010524 <__muldi3>:
   10524:	00050613          	mv	a2,a0
   10528:	00000513          	li	a0,0
   1052c:	0015f693          	andi	a3,a1,1
   10530:	00068463          	beqz	a3,10538 <__muldi3+0x14>
   10534:	00c50533          	add	a0,a0,a2
   10538:	0015d593          	srli	a1,a1,0x1
   1053c:	00161613          	slli	a2,a2,0x1
   10540:	fe0596e3          	bnez	a1,1052c <__muldi3+0x8>
   10544:	00008067          	ret

0000000000010548 <__udivsi3>:
   10548:	02051513          	slli	a0,a0,0x20
   1054c:	02059593          	slli	a1,a1,0x20
   10550:	00008293          	mv	t0,ra
   10554:	03c000ef          	jal	10590 <__hidden___udivdi3>
   10558:	0005051b          	sext.w	a0,a0
   1055c:	00028067          	jr	t0

0000000000010560 <__umodsi3>:
   10560:	02051513          	slli	a0,a0,0x20
   10564:	02059593          	slli	a1,a1,0x20
   10568:	02055513          	srli	a0,a0,0x20
   1056c:	0205d593          	srli	a1,a1,0x20
   10570:	00008293          	mv	t0,ra
   10574:	01c000ef          	jal	10590 <__hidden___udivdi3>
   10578:	0005851b          	sext.w	a0,a1
   1057c:	00028067          	jr	t0

0000000000010580 <__divsi3>:
   10580:	fff00293          	li	t0,-1
   10584:	0a558c63          	beq	a1,t0,1063c <__moddi3+0x30>

0000000000010588 <__divdi3>:
   10588:	06054063          	bltz	a0,105e8 <__umoddi3+0x10>
   1058c:	0605c663          	bltz	a1,105f8 <__umoddi3+0x20>

0000000000010590 <__hidden___udivdi3>:
   10590:	00058613          	mv	a2,a1
   10594:	00050593          	mv	a1,a0
   10598:	fff00513          	li	a0,-1
   1059c:	02060c63          	beqz	a2,105d4 <__hidden___udivdi3+0x44>
   105a0:	00100693          	li	a3,1
   105a4:	00b67a63          	bgeu	a2,a1,105b8 <__hidden___udivdi3+0x28>
   105a8:	00c05863          	blez	a2,105b8 <__hidden___udivdi3+0x28>
   105ac:	00161613          	slli	a2,a2,0x1
   105b0:	00169693          	slli	a3,a3,0x1
   105b4:	feb66ae3          	bltu	a2,a1,105a8 <__hidden___udivdi3+0x18>
   105b8:	00000513          	li	a0,0
   105bc:	00c5e663          	bltu	a1,a2,105c8 <__hidden___udivdi3+0x38>
   105c0:	40c585b3          	sub	a1,a1,a2
   105c4:	00d56533          	or	a0,a0,a3
   105c8:	0016d693          	srli	a3,a3,0x1
   105cc:	00165613          	srli	a2,a2,0x1
   105d0:	fe0696e3          	bnez	a3,105bc <__hidden___udivdi3+0x2c>
   105d4:	00008067          	ret

00000000000105d8 <__umoddi3>:
   105d8:	00008293          	mv	t0,ra
   105dc:	fb5ff0ef          	jal	10590 <__hidden___udivdi3>
   105e0:	00058513          	mv	a0,a1
   105e4:	00028067          	jr	t0
   105e8:	40a00533          	neg	a0,a0
   105ec:	00b04863          	bgtz	a1,105fc <__umoddi3+0x24>
   105f0:	40b005b3          	neg	a1,a1
   105f4:	f9dff06f          	j	10590 <__hidden___udivdi3>
   105f8:	40b005b3          	neg	a1,a1
   105fc:	00008293          	mv	t0,ra
   10600:	f91ff0ef          	jal	10590 <__hidden___udivdi3>
   10604:	40a00533          	neg	a0,a0
   10608:	00028067          	jr	t0

000000000001060c <__moddi3>:
   1060c:	00008293          	mv	t0,ra
   10610:	0005ca63          	bltz	a1,10624 <__moddi3+0x18>
   10614:	00054c63          	bltz	a0,1062c <__moddi3+0x20>
   10618:	f79ff0ef          	jal	10590 <__hidden___udivdi3>
   1061c:	00058513          	mv	a0,a1
   10620:	00028067          	jr	t0
   10624:	40b005b3          	neg	a1,a1
   10628:	fe0558e3          	bgez	a0,10618 <__moddi3+0xc>
   1062c:	40a00533          	neg	a0,a0
   10630:	f61ff0ef          	jal	10590 <__hidden___udivdi3>
   10634:	40b00533          	neg	a0,a1
   10638:	00028067          	jr	t0
   1063c:	01f29293          	slli	t0,t0,0x1f
   10640:	f45514e3          	bne	a0,t0,10588 <__divdi3>
   10644:	00008067          	ret

0000000000010648 <__fp_lock>:
   10648:	00000513          	li	a0,0
   1064c:	00008067          	ret

0000000000010650 <stdio_exit_handler>:
   10650:	00013637          	lui	a2,0x13
   10654:	000125b7          	lui	a1,0x12
   10658:	00013537          	lui	a0,0x13
   1065c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10660:	e2458593          	addi	a1,a1,-476 # 11e24 <_fclose_r>
   10664:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10668:	34c0006f          	j	109b4 <_fwalk_sglue>

000000000001066c <cleanup_stdio>:
   1066c:	00853583          	ld	a1,8(a0)
   10670:	ff010113          	addi	sp,sp,-16
   10674:	00813023          	sd	s0,0(sp)
   10678:	00113423          	sd	ra,8(sp)
   1067c:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10680:	00050413          	mv	s0,a0
   10684:	00f58463          	beq	a1,a5,1068c <cleanup_stdio+0x20>
   10688:	79c010ef          	jal	11e24 <_fclose_r>
   1068c:	01043583          	ld	a1,16(s0)
   10690:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10694:	00f58663          	beq	a1,a5,106a0 <cleanup_stdio+0x34>
   10698:	00040513          	mv	a0,s0
   1069c:	788010ef          	jal	11e24 <_fclose_r>
   106a0:	01843583          	ld	a1,24(s0)
   106a4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   106a8:	00f58c63          	beq	a1,a5,106c0 <cleanup_stdio+0x54>
   106ac:	00040513          	mv	a0,s0
   106b0:	00013403          	ld	s0,0(sp)
   106b4:	00813083          	ld	ra,8(sp)
   106b8:	01010113          	addi	sp,sp,16
   106bc:	7680106f          	j	11e24 <_fclose_r>
   106c0:	00813083          	ld	ra,8(sp)
   106c4:	00013403          	ld	s0,0(sp)
   106c8:	01010113          	addi	sp,sp,16
   106cc:	00008067          	ret

00000000000106d0 <__fp_unlock>:
   106d0:	00000513          	li	a0,0
   106d4:	00008067          	ret

00000000000106d8 <global_stdio_init.part.0>:
   106d8:	fd010113          	addi	sp,sp,-48
   106dc:	000107b7          	lui	a5,0x10
   106e0:	02813023          	sd	s0,32(sp)
   106e4:	65078793          	addi	a5,a5,1616 # 10650 <stdio_exit_handler>
   106e8:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   106ec:	02113423          	sd	ra,40(sp)
   106f0:	00913c23          	sd	s1,24(sp)
   106f4:	01213823          	sd	s2,16(sp)
   106f8:	01313423          	sd	s3,8(sp)
   106fc:	01413023          	sd	s4,0(sp)
   10700:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10704:	00800613          	li	a2,8
   10708:	00400793          	li	a5,4
   1070c:	00000593          	li	a1,0
   10710:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10714:	00f42823          	sw	a5,16(s0)
   10718:	00043023          	sd	zero,0(s0)
   1071c:	00043423          	sd	zero,8(s0)
   10720:	0a042623          	sw	zero,172(s0)
   10724:	00043c23          	sd	zero,24(s0)
   10728:	02042023          	sw	zero,32(s0)
   1072c:	02042423          	sw	zero,40(s0)
   10730:	7b8000ef          	jal	10ee8 <memset>
   10734:	00011a37          	lui	s4,0x11
   10738:	000119b7          	lui	s3,0x11
   1073c:	00011937          	lui	s2,0x11
   10740:	000114b7          	lui	s1,0x11
   10744:	000107b7          	lui	a5,0x10
   10748:	a84a0a13          	addi	s4,s4,-1404 # 10a84 <__sread>
   1074c:	ae898993          	addi	s3,s3,-1304 # 10ae8 <__swrite>
   10750:	b7090913          	addi	s2,s2,-1168 # 10b70 <__sseek>
   10754:	bd448493          	addi	s1,s1,-1068 # 10bd4 <__sclose>
   10758:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1075c:	00800613          	li	a2,8
   10760:	00000593          	li	a1,0
   10764:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10768:	0cf42023          	sw	a5,192(s0)
   1076c:	03443c23          	sd	s4,56(s0)
   10770:	05343023          	sd	s3,64(s0)
   10774:	05243423          	sd	s2,72(s0)
   10778:	04943823          	sd	s1,80(s0)
   1077c:	02843823          	sd	s0,48(s0)
   10780:	0a043823          	sd	zero,176(s0)
   10784:	0a043c23          	sd	zero,184(s0)
   10788:	14042e23          	sw	zero,348(s0)
   1078c:	0c043423          	sd	zero,200(s0)
   10790:	0c042823          	sw	zero,208(s0)
   10794:	0c042c23          	sw	zero,216(s0)
   10798:	750000ef          	jal	10ee8 <memset>
   1079c:	000207b7          	lui	a5,0x20
   107a0:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   107a4:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   107a8:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   107ac:	00800613          	li	a2,8
   107b0:	00000593          	li	a1,0
   107b4:	0f443423          	sd	s4,232(s0)
   107b8:	0f343823          	sd	s3,240(s0)
   107bc:	0f243c23          	sd	s2,248(s0)
   107c0:	10943023          	sd	s1,256(s0)
   107c4:	16f42823          	sw	a5,368(s0)
   107c8:	16043023          	sd	zero,352(s0)
   107cc:	16043423          	sd	zero,360(s0)
   107d0:	20042623          	sw	zero,524(s0)
   107d4:	16043c23          	sd	zero,376(s0)
   107d8:	18042023          	sw	zero,384(s0)
   107dc:	18042423          	sw	zero,392(s0)
   107e0:	0ee43023          	sd	a4,224(s0)
   107e4:	704000ef          	jal	10ee8 <memset>
   107e8:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   107ec:	19443c23          	sd	s4,408(s0)
   107f0:	1b343023          	sd	s3,416(s0)
   107f4:	1b243423          	sd	s2,424(s0)
   107f8:	1a943823          	sd	s1,432(s0)
   107fc:	02813083          	ld	ra,40(sp)
   10800:	18f43823          	sd	a5,400(s0)
   10804:	02013403          	ld	s0,32(sp)
   10808:	01813483          	ld	s1,24(sp)
   1080c:	01013903          	ld	s2,16(sp)
   10810:	00813983          	ld	s3,8(sp)
   10814:	00013a03          	ld	s4,0(sp)
   10818:	03010113          	addi	sp,sp,48
   1081c:	00008067          	ret

0000000000010820 <__sfp>:
   10820:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10824:	fd010113          	addi	sp,sp,-48
   10828:	00913c23          	sd	s1,24(sp)
   1082c:	02113423          	sd	ra,40(sp)
   10830:	02813023          	sd	s0,32(sp)
   10834:	00050493          	mv	s1,a0
   10838:	10078463          	beqz	a5,10940 <__sfp+0x120>
   1083c:	000136b7          	lui	a3,0x13
   10840:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10844:	0086a703          	lw	a4,8(a3)
   10848:	08e05c63          	blez	a4,108e0 <__sfp+0xc0>
   1084c:	02071713          	slli	a4,a4,0x20
   10850:	02075713          	srli	a4,a4,0x20
   10854:	00171793          	slli	a5,a4,0x1
   10858:	00e787b3          	add	a5,a5,a4
   1085c:	0106b403          	ld	s0,16(a3)
   10860:	00279793          	slli	a5,a5,0x2
   10864:	40e787b3          	sub	a5,a5,a4
   10868:	00479793          	slli	a5,a5,0x4
   1086c:	00f407b3          	add	a5,s0,a5
   10870:	00c0006f          	j	1087c <__sfp+0x5c>
   10874:	0b040413          	addi	s0,s0,176
   10878:	06f40463          	beq	s0,a5,108e0 <__sfp+0xc0>
   1087c:	01041703          	lh	a4,16(s0)
   10880:	fe071ae3          	bnez	a4,10874 <__sfp+0x54>
   10884:	ffff07b7          	lui	a5,0xffff0
   10888:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   1088c:	00f42823          	sw	a5,16(s0)
   10890:	0a042623          	sw	zero,172(s0)
   10894:	00043023          	sd	zero,0(s0)
   10898:	00043423          	sd	zero,8(s0)
   1089c:	00043c23          	sd	zero,24(s0)
   108a0:	02042023          	sw	zero,32(s0)
   108a4:	02042423          	sw	zero,40(s0)
   108a8:	00800613          	li	a2,8
   108ac:	00000593          	li	a1,0
   108b0:	0a440513          	addi	a0,s0,164
   108b4:	634000ef          	jal	10ee8 <memset>
   108b8:	04043c23          	sd	zero,88(s0)
   108bc:	06042023          	sw	zero,96(s0)
   108c0:	06043c23          	sd	zero,120(s0)
   108c4:	08042023          	sw	zero,128(s0)
   108c8:	02813083          	ld	ra,40(sp)
   108cc:	00040513          	mv	a0,s0
   108d0:	02013403          	ld	s0,32(sp)
   108d4:	01813483          	ld	s1,24(sp)
   108d8:	03010113          	addi	sp,sp,48
   108dc:	00008067          	ret
   108e0:	0006b403          	ld	s0,0(a3)
   108e4:	00040663          	beqz	s0,108f0 <__sfp+0xd0>
   108e8:	00040693          	mv	a3,s0
   108ec:	f59ff06f          	j	10844 <__sfp+0x24>
   108f0:	2d800593          	li	a1,728
   108f4:	00048513          	mv	a0,s1
   108f8:	00d13423          	sd	a3,8(sp)
   108fc:	43d000ef          	jal	11538 <_malloc_r>
   10900:	00813683          	ld	a3,8(sp)
   10904:	00050413          	mv	s0,a0
   10908:	04050063          	beqz	a0,10948 <__sfp+0x128>
   1090c:	00400793          	li	a5,4
   10910:	00f52423          	sw	a5,8(a0)
   10914:	01850513          	addi	a0,a0,24
   10918:	00043023          	sd	zero,0(s0)
   1091c:	00a43823          	sd	a0,16(s0)
   10920:	2c000613          	li	a2,704
   10924:	00000593          	li	a1,0
   10928:	00d13423          	sd	a3,8(sp)
   1092c:	5bc000ef          	jal	10ee8 <memset>
   10930:	00813683          	ld	a3,8(sp)
   10934:	0086b023          	sd	s0,0(a3)
   10938:	00040693          	mv	a3,s0
   1093c:	f09ff06f          	j	10844 <__sfp+0x24>
   10940:	d99ff0ef          	jal	106d8 <global_stdio_init.part.0>
   10944:	ef9ff06f          	j	1083c <__sfp+0x1c>
   10948:	0006b023          	sd	zero,0(a3)
   1094c:	00c00793          	li	a5,12
   10950:	00f4a023          	sw	a5,0(s1)
   10954:	f75ff06f          	j	108c8 <__sfp+0xa8>

0000000000010958 <__sinit>:
   10958:	04853783          	ld	a5,72(a0)
   1095c:	00078463          	beqz	a5,10964 <__sinit+0xc>
   10960:	00008067          	ret
   10964:	000107b7          	lui	a5,0x10
   10968:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   1096c:	66c78793          	addi	a5,a5,1644 # 1066c <cleanup_stdio>
   10970:	04f53423          	sd	a5,72(a0)
   10974:	fe0716e3          	bnez	a4,10960 <__sinit+0x8>
   10978:	d61ff06f          	j	106d8 <global_stdio_init.part.0>

000000000001097c <__sfp_lock_acquire>:
   1097c:	00008067          	ret

0000000000010980 <__sfp_lock_release>:
   10980:	00008067          	ret

0000000000010984 <__fp_lock_all>:
   10984:	00013637          	lui	a2,0x13
   10988:	000105b7          	lui	a1,0x10
   1098c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10990:	64858593          	addi	a1,a1,1608 # 10648 <__fp_lock>
   10994:	00000513          	li	a0,0
   10998:	01c0006f          	j	109b4 <_fwalk_sglue>

000000000001099c <__fp_unlock_all>:
   1099c:	00013637          	lui	a2,0x13
   109a0:	000105b7          	lui	a1,0x10
   109a4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   109a8:	6d058593          	addi	a1,a1,1744 # 106d0 <__fp_unlock>
   109ac:	00000513          	li	a0,0
   109b0:	0040006f          	j	109b4 <_fwalk_sglue>

00000000000109b4 <_fwalk_sglue>:
   109b4:	fb010113          	addi	sp,sp,-80
   109b8:	03213823          	sd	s2,48(sp)
   109bc:	03313423          	sd	s3,40(sp)
   109c0:	03413023          	sd	s4,32(sp)
   109c4:	01513c23          	sd	s5,24(sp)
   109c8:	01613823          	sd	s6,16(sp)
   109cc:	01713423          	sd	s7,8(sp)
   109d0:	04113423          	sd	ra,72(sp)
   109d4:	04813023          	sd	s0,64(sp)
   109d8:	02913c23          	sd	s1,56(sp)
   109dc:	00060913          	mv	s2,a2
   109e0:	00050a13          	mv	s4,a0
   109e4:	00058a93          	mv	s5,a1
   109e8:	00000b13          	li	s6,0
   109ec:	00100b93          	li	s7,1
   109f0:	fff00993          	li	s3,-1
   109f4:	00892783          	lw	a5,8(s2)
   109f8:	04f05a63          	blez	a5,10a4c <_fwalk_sglue+0x98>
   109fc:	02079793          	slli	a5,a5,0x20
   10a00:	0207d793          	srli	a5,a5,0x20
   10a04:	00179493          	slli	s1,a5,0x1
   10a08:	00f484b3          	add	s1,s1,a5
   10a0c:	01093403          	ld	s0,16(s2)
   10a10:	00249493          	slli	s1,s1,0x2
   10a14:	40f484b3          	sub	s1,s1,a5
   10a18:	00449493          	slli	s1,s1,0x4
   10a1c:	009404b3          	add	s1,s0,s1
   10a20:	01045783          	lhu	a5,16(s0)
   10a24:	02fbf063          	bgeu	s7,a5,10a44 <_fwalk_sglue+0x90>
   10a28:	01241783          	lh	a5,18(s0)
   10a2c:	00040593          	mv	a1,s0
   10a30:	000a0513          	mv	a0,s4
   10a34:	01378863          	beq	a5,s3,10a44 <_fwalk_sglue+0x90>
   10a38:	000a80e7          	jalr	s5
   10a3c:	01656b33          	or	s6,a0,s6
   10a40:	000b0b1b          	sext.w	s6,s6
   10a44:	0b040413          	addi	s0,s0,176
   10a48:	fc941ce3          	bne	s0,s1,10a20 <_fwalk_sglue+0x6c>
   10a4c:	00093903          	ld	s2,0(s2)
   10a50:	fa0912e3          	bnez	s2,109f4 <_fwalk_sglue+0x40>
   10a54:	04813083          	ld	ra,72(sp)
   10a58:	04013403          	ld	s0,64(sp)
   10a5c:	03813483          	ld	s1,56(sp)
   10a60:	03013903          	ld	s2,48(sp)
   10a64:	02813983          	ld	s3,40(sp)
   10a68:	02013a03          	ld	s4,32(sp)
   10a6c:	01813a83          	ld	s5,24(sp)
   10a70:	00813b83          	ld	s7,8(sp)
   10a74:	000b0513          	mv	a0,s6
   10a78:	01013b03          	ld	s6,16(sp)
   10a7c:	05010113          	addi	sp,sp,80
   10a80:	00008067          	ret

0000000000010a84 <__sread>:
   10a84:	ff010113          	addi	sp,sp,-16
   10a88:	00813023          	sd	s0,0(sp)
   10a8c:	00058413          	mv	s0,a1
   10a90:	01259583          	lh	a1,18(a1)
   10a94:	00113423          	sd	ra,8(sp)
   10a98:	2ec000ef          	jal	10d84 <_read_r>
   10a9c:	02054063          	bltz	a0,10abc <__sread+0x38>
   10aa0:	09043783          	ld	a5,144(s0)
   10aa4:	00813083          	ld	ra,8(sp)
   10aa8:	00a787b3          	add	a5,a5,a0
   10aac:	08f43823          	sd	a5,144(s0)
   10ab0:	00013403          	ld	s0,0(sp)
   10ab4:	01010113          	addi	sp,sp,16
   10ab8:	00008067          	ret
   10abc:	01045783          	lhu	a5,16(s0)
   10ac0:	fffff737          	lui	a4,0xfffff
   10ac4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10ac8:	00e7f7b3          	and	a5,a5,a4
   10acc:	00813083          	ld	ra,8(sp)
   10ad0:	00f41823          	sh	a5,16(s0)
   10ad4:	00013403          	ld	s0,0(sp)
   10ad8:	01010113          	addi	sp,sp,16
   10adc:	00008067          	ret

0000000000010ae0 <__seofread>:
   10ae0:	00000513          	li	a0,0
   10ae4:	00008067          	ret

0000000000010ae8 <__swrite>:
   10ae8:	01059783          	lh	a5,16(a1)
   10aec:	fd010113          	addi	sp,sp,-48
   10af0:	00068313          	mv	t1,a3
   10af4:	02113423          	sd	ra,40(sp)
   10af8:	1007f693          	andi	a3,a5,256
   10afc:	00058713          	mv	a4,a1
   10b00:	00060893          	mv	a7,a2
   10b04:	00050813          	mv	a6,a0
   10b08:	02069863          	bnez	a3,10b38 <__swrite+0x50>
   10b0c:	fffff6b7          	lui	a3,0xfffff
   10b10:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10b14:	02813083          	ld	ra,40(sp)
   10b18:	00d7f7b3          	and	a5,a5,a3
   10b1c:	01271583          	lh	a1,18(a4)
   10b20:	00f71823          	sh	a5,16(a4)
   10b24:	00030693          	mv	a3,t1
   10b28:	00088613          	mv	a2,a7
   10b2c:	00080513          	mv	a0,a6
   10b30:	03010113          	addi	sp,sp,48
   10b34:	2b80006f          	j	10dec <_write_r>
   10b38:	01259583          	lh	a1,18(a1)
   10b3c:	00c13823          	sd	a2,16(sp)
   10b40:	00200693          	li	a3,2
   10b44:	00000613          	li	a2,0
   10b48:	00613c23          	sd	t1,24(sp)
   10b4c:	00e13023          	sd	a4,0(sp)
   10b50:	00a13423          	sd	a0,8(sp)
   10b54:	1c8000ef          	jal	10d1c <_lseek_r>
   10b58:	00013703          	ld	a4,0(sp)
   10b5c:	01813303          	ld	t1,24(sp)
   10b60:	01013883          	ld	a7,16(sp)
   10b64:	01071783          	lh	a5,16(a4)
   10b68:	00813803          	ld	a6,8(sp)
   10b6c:	fa1ff06f          	j	10b0c <__swrite+0x24>

0000000000010b70 <__sseek>:
   10b70:	ff010113          	addi	sp,sp,-16
   10b74:	00813023          	sd	s0,0(sp)
   10b78:	00058413          	mv	s0,a1
   10b7c:	01259583          	lh	a1,18(a1)
   10b80:	00113423          	sd	ra,8(sp)
   10b84:	198000ef          	jal	10d1c <_lseek_r>
   10b88:	fff00713          	li	a4,-1
   10b8c:	01041783          	lh	a5,16(s0)
   10b90:	02e50263          	beq	a0,a4,10bb4 <__sseek+0x44>
   10b94:	00001737          	lui	a4,0x1
   10b98:	00e7e7b3          	or	a5,a5,a4
   10b9c:	00813083          	ld	ra,8(sp)
   10ba0:	08a43823          	sd	a0,144(s0)
   10ba4:	00f41823          	sh	a5,16(s0)
   10ba8:	00013403          	ld	s0,0(sp)
   10bac:	01010113          	addi	sp,sp,16
   10bb0:	00008067          	ret
   10bb4:	80050713          	addi	a4,a0,-2048
   10bb8:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10bbc:	00e7f7b3          	and	a5,a5,a4
   10bc0:	00813083          	ld	ra,8(sp)
   10bc4:	00f41823          	sh	a5,16(s0)
   10bc8:	00013403          	ld	s0,0(sp)
   10bcc:	01010113          	addi	sp,sp,16
   10bd0:	00008067          	ret

0000000000010bd4 <__sclose>:
   10bd4:	01259583          	lh	a1,18(a1)
   10bd8:	0040006f          	j	10bdc <_close_r>

0000000000010bdc <_close_r>:
   10bdc:	fe010113          	addi	sp,sp,-32
   10be0:	00813823          	sd	s0,16(sp)
   10be4:	00913423          	sd	s1,8(sp)
   10be8:	00050493          	mv	s1,a0
   10bec:	00058513          	mv	a0,a1
   10bf0:	00113c23          	sd	ra,24(sp)
   10bf4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bf8:	7e4010ef          	jal	123dc <_close>
   10bfc:	fff00793          	li	a5,-1
   10c00:	00f50c63          	beq	a0,a5,10c18 <_close_r+0x3c>
   10c04:	01813083          	ld	ra,24(sp)
   10c08:	01013403          	ld	s0,16(sp)
   10c0c:	00813483          	ld	s1,8(sp)
   10c10:	02010113          	addi	sp,sp,32
   10c14:	00008067          	ret
   10c18:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c1c:	fe0784e3          	beqz	a5,10c04 <_close_r+0x28>
   10c20:	01813083          	ld	ra,24(sp)
   10c24:	01013403          	ld	s0,16(sp)
   10c28:	00f4a023          	sw	a5,0(s1)
   10c2c:	00813483          	ld	s1,8(sp)
   10c30:	02010113          	addi	sp,sp,32
   10c34:	00008067          	ret

0000000000010c38 <_reclaim_reent>:
   10c38:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10c3c:	0ca78e63          	beq	a5,a0,10d18 <_reclaim_reent+0xe0>
   10c40:	06853583          	ld	a1,104(a0)
   10c44:	fd010113          	addi	sp,sp,-48
   10c48:	00913c23          	sd	s1,24(sp)
   10c4c:	02113423          	sd	ra,40(sp)
   10c50:	02813023          	sd	s0,32(sp)
   10c54:	00050493          	mv	s1,a0
   10c58:	04058863          	beqz	a1,10ca8 <_reclaim_reent+0x70>
   10c5c:	01213823          	sd	s2,16(sp)
   10c60:	01313423          	sd	s3,8(sp)
   10c64:	00000913          	li	s2,0
   10c68:	20000993          	li	s3,512
   10c6c:	012587b3          	add	a5,a1,s2
   10c70:	0007b403          	ld	s0,0(a5)
   10c74:	00040e63          	beqz	s0,10c90 <_reclaim_reent+0x58>
   10c78:	00040593          	mv	a1,s0
   10c7c:	00043403          	ld	s0,0(s0)
   10c80:	00048513          	mv	a0,s1
   10c84:	5b0000ef          	jal	11234 <_free_r>
   10c88:	fe0418e3          	bnez	s0,10c78 <_reclaim_reent+0x40>
   10c8c:	0684b583          	ld	a1,104(s1)
   10c90:	00890913          	addi	s2,s2,8
   10c94:	fd391ce3          	bne	s2,s3,10c6c <_reclaim_reent+0x34>
   10c98:	00048513          	mv	a0,s1
   10c9c:	598000ef          	jal	11234 <_free_r>
   10ca0:	01013903          	ld	s2,16(sp)
   10ca4:	00813983          	ld	s3,8(sp)
   10ca8:	0504b583          	ld	a1,80(s1)
   10cac:	00058663          	beqz	a1,10cb8 <_reclaim_reent+0x80>
   10cb0:	00048513          	mv	a0,s1
   10cb4:	580000ef          	jal	11234 <_free_r>
   10cb8:	0604b403          	ld	s0,96(s1)
   10cbc:	00040c63          	beqz	s0,10cd4 <_reclaim_reent+0x9c>
   10cc0:	00040593          	mv	a1,s0
   10cc4:	00043403          	ld	s0,0(s0)
   10cc8:	00048513          	mv	a0,s1
   10ccc:	568000ef          	jal	11234 <_free_r>
   10cd0:	fe0418e3          	bnez	s0,10cc0 <_reclaim_reent+0x88>
   10cd4:	0784b583          	ld	a1,120(s1)
   10cd8:	00058663          	beqz	a1,10ce4 <_reclaim_reent+0xac>
   10cdc:	00048513          	mv	a0,s1
   10ce0:	554000ef          	jal	11234 <_free_r>
   10ce4:	0484b783          	ld	a5,72(s1)
   10ce8:	00078e63          	beqz	a5,10d04 <_reclaim_reent+0xcc>
   10cec:	02013403          	ld	s0,32(sp)
   10cf0:	02813083          	ld	ra,40(sp)
   10cf4:	00048513          	mv	a0,s1
   10cf8:	01813483          	ld	s1,24(sp)
   10cfc:	03010113          	addi	sp,sp,48
   10d00:	00078067          	jr	a5
   10d04:	02813083          	ld	ra,40(sp)
   10d08:	02013403          	ld	s0,32(sp)
   10d0c:	01813483          	ld	s1,24(sp)
   10d10:	03010113          	addi	sp,sp,48
   10d14:	00008067          	ret
   10d18:	00008067          	ret

0000000000010d1c <_lseek_r>:
   10d1c:	fe010113          	addi	sp,sp,-32
   10d20:	00058793          	mv	a5,a1
   10d24:	00813823          	sd	s0,16(sp)
   10d28:	00913423          	sd	s1,8(sp)
   10d2c:	00060593          	mv	a1,a2
   10d30:	00050493          	mv	s1,a0
   10d34:	00068613          	mv	a2,a3
   10d38:	00078513          	mv	a0,a5
   10d3c:	00113c23          	sd	ra,24(sp)
   10d40:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d44:	708010ef          	jal	1244c <_lseek>
   10d48:	fff00793          	li	a5,-1
   10d4c:	00f50c63          	beq	a0,a5,10d64 <_lseek_r+0x48>
   10d50:	01813083          	ld	ra,24(sp)
   10d54:	01013403          	ld	s0,16(sp)
   10d58:	00813483          	ld	s1,8(sp)
   10d5c:	02010113          	addi	sp,sp,32
   10d60:	00008067          	ret
   10d64:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d68:	fe0784e3          	beqz	a5,10d50 <_lseek_r+0x34>
   10d6c:	01813083          	ld	ra,24(sp)
   10d70:	01013403          	ld	s0,16(sp)
   10d74:	00f4a023          	sw	a5,0(s1)
   10d78:	00813483          	ld	s1,8(sp)
   10d7c:	02010113          	addi	sp,sp,32
   10d80:	00008067          	ret

0000000000010d84 <_read_r>:
   10d84:	fe010113          	addi	sp,sp,-32
   10d88:	00058793          	mv	a5,a1
   10d8c:	00813823          	sd	s0,16(sp)
   10d90:	00913423          	sd	s1,8(sp)
   10d94:	00060593          	mv	a1,a2
   10d98:	00050493          	mv	s1,a0
   10d9c:	00068613          	mv	a2,a3
   10da0:	00078513          	mv	a0,a5
   10da4:	00113c23          	sd	ra,24(sp)
   10da8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10dac:	6e0010ef          	jal	1248c <_read>
   10db0:	fff00793          	li	a5,-1
   10db4:	00f50c63          	beq	a0,a5,10dcc <_read_r+0x48>
   10db8:	01813083          	ld	ra,24(sp)
   10dbc:	01013403          	ld	s0,16(sp)
   10dc0:	00813483          	ld	s1,8(sp)
   10dc4:	02010113          	addi	sp,sp,32
   10dc8:	00008067          	ret
   10dcc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10dd0:	fe0784e3          	beqz	a5,10db8 <_read_r+0x34>
   10dd4:	01813083          	ld	ra,24(sp)
   10dd8:	01013403          	ld	s0,16(sp)
   10ddc:	00f4a023          	sw	a5,0(s1)
   10de0:	00813483          	ld	s1,8(sp)
   10de4:	02010113          	addi	sp,sp,32
   10de8:	00008067          	ret

0000000000010dec <_write_r>:
   10dec:	fe010113          	addi	sp,sp,-32
   10df0:	00058793          	mv	a5,a1
   10df4:	00813823          	sd	s0,16(sp)
   10df8:	00913423          	sd	s1,8(sp)
   10dfc:	00060593          	mv	a1,a2
   10e00:	00050493          	mv	s1,a0
   10e04:	00068613          	mv	a2,a3
   10e08:	00078513          	mv	a0,a5
   10e0c:	00113c23          	sd	ra,24(sp)
   10e10:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10e14:	730010ef          	jal	12544 <_write>
   10e18:	fff00793          	li	a5,-1
   10e1c:	00f50c63          	beq	a0,a5,10e34 <_write_r+0x48>
   10e20:	01813083          	ld	ra,24(sp)
   10e24:	01013403          	ld	s0,16(sp)
   10e28:	00813483          	ld	s1,8(sp)
   10e2c:	02010113          	addi	sp,sp,32
   10e30:	00008067          	ret
   10e34:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10e38:	fe0784e3          	beqz	a5,10e20 <_write_r+0x34>
   10e3c:	01813083          	ld	ra,24(sp)
   10e40:	01013403          	ld	s0,16(sp)
   10e44:	00f4a023          	sw	a5,0(s1)
   10e48:	00813483          	ld	s1,8(sp)
   10e4c:	02010113          	addi	sp,sp,32
   10e50:	00008067          	ret

0000000000010e54 <__libc_init_array>:
   10e54:	fe010113          	addi	sp,sp,-32
   10e58:	00813823          	sd	s0,16(sp)
   10e5c:	01213023          	sd	s2,0(sp)
   10e60:	00013437          	lui	s0,0x13
   10e64:	00013937          	lui	s2,0x13
   10e68:	00113c23          	sd	ra,24(sp)
   10e6c:	00913423          	sd	s1,8(sp)
   10e70:	00090913          	mv	s2,s2
   10e74:	00040413          	mv	s0,s0
   10e78:	02890263          	beq	s2,s0,10e9c <__libc_init_array+0x48>
   10e7c:	40890933          	sub	s2,s2,s0
   10e80:	40395913          	srai	s2,s2,0x3
   10e84:	00000493          	li	s1,0
   10e88:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10e8c:	00148493          	addi	s1,s1,1
   10e90:	00840413          	addi	s0,s0,8
   10e94:	000780e7          	jalr	a5
   10e98:	ff24e8e3          	bltu	s1,s2,10e88 <__libc_init_array+0x34>
   10e9c:	00013937          	lui	s2,0x13
   10ea0:	00013437          	lui	s0,0x13
   10ea4:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10ea8:	00040413          	mv	s0,s0
   10eac:	02890263          	beq	s2,s0,10ed0 <__libc_init_array+0x7c>
   10eb0:	40890933          	sub	s2,s2,s0
   10eb4:	40395913          	srai	s2,s2,0x3
   10eb8:	00000493          	li	s1,0
   10ebc:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10ec0:	00148493          	addi	s1,s1,1
   10ec4:	00840413          	addi	s0,s0,8
   10ec8:	000780e7          	jalr	a5
   10ecc:	ff24e8e3          	bltu	s1,s2,10ebc <__libc_init_array+0x68>
   10ed0:	01813083          	ld	ra,24(sp)
   10ed4:	01013403          	ld	s0,16(sp)
   10ed8:	00813483          	ld	s1,8(sp)
   10edc:	00013903          	ld	s2,0(sp)
   10ee0:	02010113          	addi	sp,sp,32
   10ee4:	00008067          	ret

0000000000010ee8 <memset>:
   10ee8:	00f00313          	li	t1,15
   10eec:	00050713          	mv	a4,a0
   10ef0:	02c37a63          	bgeu	t1,a2,10f24 <memset+0x3c>
   10ef4:	00f77793          	andi	a5,a4,15
   10ef8:	0a079063          	bnez	a5,10f98 <memset+0xb0>
   10efc:	06059e63          	bnez	a1,10f78 <memset+0x90>
   10f00:	ff067693          	andi	a3,a2,-16
   10f04:	00f67613          	andi	a2,a2,15
   10f08:	00e686b3          	add	a3,a3,a4
   10f0c:	00b73023          	sd	a1,0(a4)
   10f10:	00b73423          	sd	a1,8(a4)
   10f14:	01070713          	addi	a4,a4,16
   10f18:	fed76ae3          	bltu	a4,a3,10f0c <memset+0x24>
   10f1c:	00061463          	bnez	a2,10f24 <memset+0x3c>
   10f20:	00008067          	ret
   10f24:	40c306b3          	sub	a3,t1,a2
   10f28:	00269693          	slli	a3,a3,0x2
   10f2c:	00000297          	auipc	t0,0x0
   10f30:	005686b3          	add	a3,a3,t0
   10f34:	00c68067          	jr	12(a3)
   10f38:	00b70723          	sb	a1,14(a4)
   10f3c:	00b706a3          	sb	a1,13(a4)
   10f40:	00b70623          	sb	a1,12(a4)
   10f44:	00b705a3          	sb	a1,11(a4)
   10f48:	00b70523          	sb	a1,10(a4)
   10f4c:	00b704a3          	sb	a1,9(a4)
   10f50:	00b70423          	sb	a1,8(a4)
   10f54:	00b703a3          	sb	a1,7(a4)
   10f58:	00b70323          	sb	a1,6(a4)
   10f5c:	00b702a3          	sb	a1,5(a4)
   10f60:	00b70223          	sb	a1,4(a4)
   10f64:	00b701a3          	sb	a1,3(a4)
   10f68:	00b70123          	sb	a1,2(a4)
   10f6c:	00b700a3          	sb	a1,1(a4)
   10f70:	00b70023          	sb	a1,0(a4)
   10f74:	00008067          	ret
   10f78:	0ff5f593          	zext.b	a1,a1
   10f7c:	00859693          	slli	a3,a1,0x8
   10f80:	00d5e5b3          	or	a1,a1,a3
   10f84:	01059693          	slli	a3,a1,0x10
   10f88:	00d5e5b3          	or	a1,a1,a3
   10f8c:	02059693          	slli	a3,a1,0x20
   10f90:	00d5e5b3          	or	a1,a1,a3
   10f94:	f6dff06f          	j	10f00 <memset+0x18>
   10f98:	00279693          	slli	a3,a5,0x2
   10f9c:	00000297          	auipc	t0,0x0
   10fa0:	005686b3          	add	a3,a3,t0
   10fa4:	00008293          	mv	t0,ra
   10fa8:	f98680e7          	jalr	-104(a3)
   10fac:	00028093          	mv	ra,t0
   10fb0:	ff078793          	addi	a5,a5,-16
   10fb4:	40f70733          	sub	a4,a4,a5
   10fb8:	00f60633          	add	a2,a2,a5
   10fbc:	f6c374e3          	bgeu	t1,a2,10f24 <memset+0x3c>
   10fc0:	f3dff06f          	j	10efc <memset+0x14>

0000000000010fc4 <__call_exitprocs>:
   10fc4:	fb010113          	addi	sp,sp,-80
   10fc8:	03413023          	sd	s4,32(sp)
   10fcc:	03213823          	sd	s2,48(sp)
   10fd0:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10fd4:	04113423          	sd	ra,72(sp)
   10fd8:	06090e63          	beqz	s2,11054 <__call_exitprocs+0x90>
   10fdc:	03313423          	sd	s3,40(sp)
   10fe0:	01513c23          	sd	s5,24(sp)
   10fe4:	01613823          	sd	s6,16(sp)
   10fe8:	01713423          	sd	s7,8(sp)
   10fec:	04813023          	sd	s0,64(sp)
   10ff0:	02913c23          	sd	s1,56(sp)
   10ff4:	01813023          	sd	s8,0(sp)
   10ff8:	00050b13          	mv	s6,a0
   10ffc:	00058b93          	mv	s7,a1
   11000:	fff00993          	li	s3,-1
   11004:	00100a93          	li	s5,1
   11008:	00892403          	lw	s0,8(s2)
   1100c:	fff4041b          	addiw	s0,s0,-1
   11010:	02044463          	bltz	s0,11038 <__call_exitprocs+0x74>
   11014:	01090493          	addi	s1,s2,16
   11018:	00341793          	slli	a5,s0,0x3
   1101c:	00f484b3          	add	s1,s1,a5
   11020:	040b8463          	beqz	s7,11068 <__call_exitprocs+0xa4>
   11024:	2004b783          	ld	a5,512(s1)
   11028:	05778063          	beq	a5,s7,11068 <__call_exitprocs+0xa4>
   1102c:	fff4041b          	addiw	s0,s0,-1
   11030:	ff848493          	addi	s1,s1,-8
   11034:	ff3418e3          	bne	s0,s3,11024 <__call_exitprocs+0x60>
   11038:	04013403          	ld	s0,64(sp)
   1103c:	03813483          	ld	s1,56(sp)
   11040:	02813983          	ld	s3,40(sp)
   11044:	01813a83          	ld	s5,24(sp)
   11048:	01013b03          	ld	s6,16(sp)
   1104c:	00813b83          	ld	s7,8(sp)
   11050:	00013c03          	ld	s8,0(sp)
   11054:	04813083          	ld	ra,72(sp)
   11058:	03013903          	ld	s2,48(sp)
   1105c:	02013a03          	ld	s4,32(sp)
   11060:	05010113          	addi	sp,sp,80
   11064:	00008067          	ret
   11068:	00892783          	lw	a5,8(s2)
   1106c:	0004b683          	ld	a3,0(s1)
   11070:	fff7879b          	addiw	a5,a5,-1
   11074:	06878a63          	beq	a5,s0,110e8 <__call_exitprocs+0x124>
   11078:	0004b023          	sd	zero,0(s1)
   1107c:	02068663          	beqz	a3,110a8 <__call_exitprocs+0xe4>
   11080:	31092783          	lw	a5,784(s2)
   11084:	008a973b          	sllw	a4,s5,s0
   11088:	00892c03          	lw	s8,8(s2)
   1108c:	00e7f7b3          	and	a5,a5,a4
   11090:	02079463          	bnez	a5,110b8 <__call_exitprocs+0xf4>
   11094:	000680e7          	jalr	a3
   11098:	00892703          	lw	a4,8(s2)
   1109c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   110a0:	03871e63          	bne	a4,s8,110dc <__call_exitprocs+0x118>
   110a4:	03279c63          	bne	a5,s2,110dc <__call_exitprocs+0x118>
   110a8:	fff4041b          	addiw	s0,s0,-1
   110ac:	ff848493          	addi	s1,s1,-8
   110b0:	f73418e3          	bne	s0,s3,11020 <__call_exitprocs+0x5c>
   110b4:	f85ff06f          	j	11038 <__call_exitprocs+0x74>
   110b8:	31492783          	lw	a5,788(s2)
   110bc:	1004b583          	ld	a1,256(s1)
   110c0:	00f77733          	and	a4,a4,a5
   110c4:	02071663          	bnez	a4,110f0 <__call_exitprocs+0x12c>
   110c8:	000b0513          	mv	a0,s6
   110cc:	000680e7          	jalr	a3
   110d0:	00892703          	lw	a4,8(s2)
   110d4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   110d8:	fd8706e3          	beq	a4,s8,110a4 <__call_exitprocs+0xe0>
   110dc:	f4078ee3          	beqz	a5,11038 <__call_exitprocs+0x74>
   110e0:	00078913          	mv	s2,a5
   110e4:	f25ff06f          	j	11008 <__call_exitprocs+0x44>
   110e8:	00892423          	sw	s0,8(s2)
   110ec:	f91ff06f          	j	1107c <__call_exitprocs+0xb8>
   110f0:	00058513          	mv	a0,a1
   110f4:	000680e7          	jalr	a3
   110f8:	fa1ff06f          	j	11098 <__call_exitprocs+0xd4>

00000000000110fc <atexit>:
   110fc:	00050593          	mv	a1,a0
   11100:	00000693          	li	a3,0
   11104:	00000613          	li	a2,0
   11108:	00000513          	li	a0,0
   1110c:	2340106f          	j	12340 <__register_exitproc>

0000000000011110 <_malloc_trim_r>:
   11110:	fd010113          	addi	sp,sp,-48
   11114:	01213823          	sd	s2,16(sp)
   11118:	00013937          	lui	s2,0x13
   1111c:	02813023          	sd	s0,32(sp)
   11120:	00913c23          	sd	s1,24(sp)
   11124:	01313423          	sd	s3,8(sp)
   11128:	00058413          	mv	s0,a1
   1112c:	02113423          	sd	ra,40(sp)
   11130:	00050993          	mv	s3,a0
   11134:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11138:	4e5000ef          	jal	11e1c <__malloc_lock>
   1113c:	01093783          	ld	a5,16(s2)
   11140:	00001737          	lui	a4,0x1
   11144:	0087b483          	ld	s1,8(a5)
   11148:	ffc4f493          	andi	s1,s1,-4
   1114c:	7ff48793          	addi	a5,s1,2047
   11150:	7e078793          	addi	a5,a5,2016
   11154:	40878433          	sub	s0,a5,s0
   11158:	00c45413          	srli	s0,s0,0xc
   1115c:	fff40413          	addi	s0,s0,-1
   11160:	00c41413          	slli	s0,s0,0xc
   11164:	00e44e63          	blt	s0,a4,11180 <_malloc_trim_r+0x70>
   11168:	00000593          	li	a1,0
   1116c:	00098513          	mv	a0,s3
   11170:	118010ef          	jal	12288 <_sbrk_r>
   11174:	01093783          	ld	a5,16(s2)
   11178:	009787b3          	add	a5,a5,s1
   1117c:	02f50663          	beq	a0,a5,111a8 <_malloc_trim_r+0x98>
   11180:	00098513          	mv	a0,s3
   11184:	49d000ef          	jal	11e20 <__malloc_unlock>
   11188:	02813083          	ld	ra,40(sp)
   1118c:	02013403          	ld	s0,32(sp)
   11190:	01813483          	ld	s1,24(sp)
   11194:	01013903          	ld	s2,16(sp)
   11198:	00813983          	ld	s3,8(sp)
   1119c:	00000513          	li	a0,0
   111a0:	03010113          	addi	sp,sp,48
   111a4:	00008067          	ret
   111a8:	408005b3          	neg	a1,s0
   111ac:	00098513          	mv	a0,s3
   111b0:	0d8010ef          	jal	12288 <_sbrk_r>
   111b4:	fff00793          	li	a5,-1
   111b8:	04f50463          	beq	a0,a5,11200 <_malloc_trim_r+0xf0>
   111bc:	01093683          	ld	a3,16(s2)
   111c0:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   111c4:	408484b3          	sub	s1,s1,s0
   111c8:	0014e493          	ori	s1,s1,1
   111cc:	00098513          	mv	a0,s3
   111d0:	408787bb          	subw	a5,a5,s0
   111d4:	0096b423          	sd	s1,8(a3)
   111d8:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   111dc:	445000ef          	jal	11e20 <__malloc_unlock>
   111e0:	02813083          	ld	ra,40(sp)
   111e4:	02013403          	ld	s0,32(sp)
   111e8:	01813483          	ld	s1,24(sp)
   111ec:	01013903          	ld	s2,16(sp)
   111f0:	00813983          	ld	s3,8(sp)
   111f4:	00100513          	li	a0,1
   111f8:	03010113          	addi	sp,sp,48
   111fc:	00008067          	ret
   11200:	00000593          	li	a1,0
   11204:	00098513          	mv	a0,s3
   11208:	080010ef          	jal	12288 <_sbrk_r>
   1120c:	01093703          	ld	a4,16(s2)
   11210:	01f00693          	li	a3,31
   11214:	40e507b3          	sub	a5,a0,a4
   11218:	f6f6d4e3          	bge	a3,a5,11180 <_malloc_trim_r+0x70>
   1121c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11220:	0017e793          	ori	a5,a5,1
   11224:	40c50533          	sub	a0,a0,a2
   11228:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   1122c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11230:	f51ff06f          	j	11180 <_malloc_trim_r+0x70>

0000000000011234 <_free_r>:
   11234:	12058863          	beqz	a1,11364 <_free_r+0x130>
   11238:	fe010113          	addi	sp,sp,-32
   1123c:	00813823          	sd	s0,16(sp)
   11240:	00b13423          	sd	a1,8(sp)
   11244:	00050413          	mv	s0,a0
   11248:	00113c23          	sd	ra,24(sp)
   1124c:	3d1000ef          	jal	11e1c <__malloc_lock>
   11250:	00813583          	ld	a1,8(sp)
   11254:	00013837          	lui	a6,0x13
   11258:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1125c:	ff85b503          	ld	a0,-8(a1)
   11260:	ff058713          	addi	a4,a1,-16
   11264:	01083883          	ld	a7,16(a6)
   11268:	ffe57793          	andi	a5,a0,-2
   1126c:	00f70633          	add	a2,a4,a5
   11270:	00863683          	ld	a3,8(a2)
   11274:	00157313          	andi	t1,a0,1
   11278:	ffc6f693          	andi	a3,a3,-4
   1127c:	18c88e63          	beq	a7,a2,11418 <_free_r+0x1e4>
   11280:	00d63423          	sd	a3,8(a2)
   11284:	00d608b3          	add	a7,a2,a3
   11288:	0088b883          	ld	a7,8(a7)
   1128c:	0018f893          	andi	a7,a7,1
   11290:	08031e63          	bnez	t1,1132c <_free_r+0xf8>
   11294:	ff05b303          	ld	t1,-16(a1)
   11298:	000135b7          	lui	a1,0x13
   1129c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   112a0:	40670733          	sub	a4,a4,t1
   112a4:	01073503          	ld	a0,16(a4)
   112a8:	006787b3          	add	a5,a5,t1
   112ac:	14b50063          	beq	a0,a1,113ec <_free_r+0x1b8>
   112b0:	01873303          	ld	t1,24(a4)
   112b4:	00653c23          	sd	t1,24(a0)
   112b8:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   112bc:	1a088263          	beqz	a7,11460 <_free_r+0x22c>
   112c0:	0017e693          	ori	a3,a5,1
   112c4:	00d73423          	sd	a3,8(a4)
   112c8:	00f63023          	sd	a5,0(a2)
   112cc:	1ff00693          	li	a3,511
   112d0:	0af6e663          	bltu	a3,a5,1137c <_free_r+0x148>
   112d4:	0037d793          	srli	a5,a5,0x3
   112d8:	00179693          	slli	a3,a5,0x1
   112dc:	0026869b          	addiw	a3,a3,2
   112e0:	00369693          	slli	a3,a3,0x3
   112e4:	00883503          	ld	a0,8(a6)
   112e8:	00d806b3          	add	a3,a6,a3
   112ec:	0006b583          	ld	a1,0(a3)
   112f0:	4027d61b          	sraiw	a2,a5,0x2
   112f4:	00100793          	li	a5,1
   112f8:	00c797b3          	sll	a5,a5,a2
   112fc:	00a7e7b3          	or	a5,a5,a0
   11300:	ff068613          	addi	a2,a3,-16
   11304:	00b73823          	sd	a1,16(a4)
   11308:	00c73c23          	sd	a2,24(a4)
   1130c:	00f83423          	sd	a5,8(a6)
   11310:	00e6b023          	sd	a4,0(a3)
   11314:	00e5bc23          	sd	a4,24(a1)
   11318:	00040513          	mv	a0,s0
   1131c:	01013403          	ld	s0,16(sp)
   11320:	01813083          	ld	ra,24(sp)
   11324:	02010113          	addi	sp,sp,32
   11328:	2f90006f          	j	11e20 <__malloc_unlock>
   1132c:	02089e63          	bnez	a7,11368 <_free_r+0x134>
   11330:	000135b7          	lui	a1,0x13
   11334:	00d787b3          	add	a5,a5,a3
   11338:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1133c:	01063683          	ld	a3,16(a2)
   11340:	0017e893          	ori	a7,a5,1
   11344:	00f70533          	add	a0,a4,a5
   11348:	16b68663          	beq	a3,a1,114b4 <_free_r+0x280>
   1134c:	01863603          	ld	a2,24(a2)
   11350:	00c6bc23          	sd	a2,24(a3)
   11354:	00d63823          	sd	a3,16(a2)
   11358:	01173423          	sd	a7,8(a4)
   1135c:	00f53023          	sd	a5,0(a0)
   11360:	f6dff06f          	j	112cc <_free_r+0x98>
   11364:	00008067          	ret
   11368:	00156513          	ori	a0,a0,1
   1136c:	fea5bc23          	sd	a0,-8(a1)
   11370:	00f63023          	sd	a5,0(a2)
   11374:	1ff00693          	li	a3,511
   11378:	f4f6fee3          	bgeu	a3,a5,112d4 <_free_r+0xa0>
   1137c:	0097d693          	srli	a3,a5,0x9
   11380:	00400613          	li	a2,4
   11384:	0ed66263          	bltu	a2,a3,11468 <_free_r+0x234>
   11388:	0067d693          	srli	a3,a5,0x6
   1138c:	00169593          	slli	a1,a3,0x1
   11390:	0725859b          	addiw	a1,a1,114
   11394:	00359593          	slli	a1,a1,0x3
   11398:	0386861b          	addiw	a2,a3,56
   1139c:	00b805b3          	add	a1,a6,a1
   113a0:	0005b683          	ld	a3,0(a1)
   113a4:	ff058593          	addi	a1,a1,-16
   113a8:	00d59863          	bne	a1,a3,113b8 <_free_r+0x184>
   113ac:	1240006f          	j	114d0 <_free_r+0x29c>
   113b0:	0106b683          	ld	a3,16(a3)
   113b4:	00d58863          	beq	a1,a3,113c4 <_free_r+0x190>
   113b8:	0086b603          	ld	a2,8(a3)
   113bc:	ffc67613          	andi	a2,a2,-4
   113c0:	fec7e8e3          	bltu	a5,a2,113b0 <_free_r+0x17c>
   113c4:	0186b583          	ld	a1,24(a3)
   113c8:	00b73c23          	sd	a1,24(a4)
   113cc:	00d73823          	sd	a3,16(a4)
   113d0:	00040513          	mv	a0,s0
   113d4:	01013403          	ld	s0,16(sp)
   113d8:	01813083          	ld	ra,24(sp)
   113dc:	00e5b823          	sd	a4,16(a1)
   113e0:	00e6bc23          	sd	a4,24(a3)
   113e4:	02010113          	addi	sp,sp,32
   113e8:	2390006f          	j	11e20 <__malloc_unlock>
   113ec:	0a089263          	bnez	a7,11490 <_free_r+0x25c>
   113f0:	01863583          	ld	a1,24(a2)
   113f4:	01063603          	ld	a2,16(a2)
   113f8:	00f686b3          	add	a3,a3,a5
   113fc:	0016e793          	ori	a5,a3,1
   11400:	00b63c23          	sd	a1,24(a2)
   11404:	00c5b823          	sd	a2,16(a1)
   11408:	00f73423          	sd	a5,8(a4)
   1140c:	00d70733          	add	a4,a4,a3
   11410:	00d73023          	sd	a3,0(a4)
   11414:	f05ff06f          	j	11318 <_free_r+0xe4>
   11418:	00d786b3          	add	a3,a5,a3
   1141c:	02031063          	bnez	t1,1143c <_free_r+0x208>
   11420:	ff05b783          	ld	a5,-16(a1)
   11424:	40f70733          	sub	a4,a4,a5
   11428:	01073603          	ld	a2,16(a4)
   1142c:	00f686b3          	add	a3,a3,a5
   11430:	01873783          	ld	a5,24(a4)
   11434:	00f63c23          	sd	a5,24(a2)
   11438:	00c7b823          	sd	a2,16(a5)
   1143c:	0016e613          	ori	a2,a3,1
   11440:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11444:	00c73423          	sd	a2,8(a4)
   11448:	00e83823          	sd	a4,16(a6)
   1144c:	ecf6e6e3          	bltu	a3,a5,11318 <_free_r+0xe4>
   11450:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11454:	00040513          	mv	a0,s0
   11458:	cb9ff0ef          	jal	11110 <_malloc_trim_r>
   1145c:	ebdff06f          	j	11318 <_free_r+0xe4>
   11460:	00d787b3          	add	a5,a5,a3
   11464:	ed9ff06f          	j	1133c <_free_r+0x108>
   11468:	01400613          	li	a2,20
   1146c:	02d67a63          	bgeu	a2,a3,114a0 <_free_r+0x26c>
   11470:	05400613          	li	a2,84
   11474:	06d66c63          	bltu	a2,a3,114ec <_free_r+0x2b8>
   11478:	00c7d693          	srli	a3,a5,0xc
   1147c:	00169593          	slli	a1,a3,0x1
   11480:	0de5859b          	addiw	a1,a1,222
   11484:	00359593          	slli	a1,a1,0x3
   11488:	06e6861b          	addiw	a2,a3,110
   1148c:	f11ff06f          	j	1139c <_free_r+0x168>
   11490:	0017e693          	ori	a3,a5,1
   11494:	00d73423          	sd	a3,8(a4)
   11498:	00f63023          	sd	a5,0(a2)
   1149c:	e7dff06f          	j	11318 <_free_r+0xe4>
   114a0:	00169593          	slli	a1,a3,0x1
   114a4:	0b85859b          	addiw	a1,a1,184
   114a8:	00359593          	slli	a1,a1,0x3
   114ac:	05b6861b          	addiw	a2,a3,91
   114b0:	eedff06f          	j	1139c <_free_r+0x168>
   114b4:	02e83423          	sd	a4,40(a6)
   114b8:	02e83023          	sd	a4,32(a6)
   114bc:	00b73c23          	sd	a1,24(a4)
   114c0:	00b73823          	sd	a1,16(a4)
   114c4:	01173423          	sd	a7,8(a4)
   114c8:	00f53023          	sd	a5,0(a0)
   114cc:	e4dff06f          	j	11318 <_free_r+0xe4>
   114d0:	00883503          	ld	a0,8(a6)
   114d4:	4026561b          	sraiw	a2,a2,0x2
   114d8:	00100793          	li	a5,1
   114dc:	00c797b3          	sll	a5,a5,a2
   114e0:	00a7e7b3          	or	a5,a5,a0
   114e4:	00f83423          	sd	a5,8(a6)
   114e8:	ee1ff06f          	j	113c8 <_free_r+0x194>
   114ec:	15400613          	li	a2,340
   114f0:	00d66e63          	bltu	a2,a3,1150c <_free_r+0x2d8>
   114f4:	00f7d693          	srli	a3,a5,0xf
   114f8:	00169593          	slli	a1,a3,0x1
   114fc:	0f05859b          	addiw	a1,a1,240
   11500:	00359593          	slli	a1,a1,0x3
   11504:	0776861b          	addiw	a2,a3,119
   11508:	e95ff06f          	j	1139c <_free_r+0x168>
   1150c:	55400613          	li	a2,1364
   11510:	00d66e63          	bltu	a2,a3,1152c <_free_r+0x2f8>
   11514:	0127d693          	srli	a3,a5,0x12
   11518:	00169593          	slli	a1,a3,0x1
   1151c:	0fa5859b          	addiw	a1,a1,250
   11520:	00359593          	slli	a1,a1,0x3
   11524:	07c6861b          	addiw	a2,a3,124
   11528:	e75ff06f          	j	1139c <_free_r+0x168>
   1152c:	7f000593          	li	a1,2032
   11530:	07e00613          	li	a2,126
   11534:	e69ff06f          	j	1139c <_free_r+0x168>

0000000000011538 <_malloc_r>:
   11538:	fa010113          	addi	sp,sp,-96
   1153c:	04813823          	sd	s0,80(sp)
   11540:	04113c23          	sd	ra,88(sp)
   11544:	01758713          	addi	a4,a1,23
   11548:	02e00793          	li	a5,46
   1154c:	00050413          	mv	s0,a0
   11550:	08e7ee63          	bltu	a5,a4,115ec <_malloc_r+0xb4>
   11554:	02000713          	li	a4,32
   11558:	06b76c63          	bltu	a4,a1,115d0 <_malloc_r+0x98>
   1155c:	0c1000ef          	jal	11e1c <__malloc_lock>
   11560:	02000713          	li	a4,32
   11564:	05000693          	li	a3,80
   11568:	00400893          	li	a7,4
   1156c:	00013837          	lui	a6,0x13
   11570:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11574:	00d806b3          	add	a3,a6,a3
   11578:	0086b783          	ld	a5,8(a3)
   1157c:	ff068613          	addi	a2,a3,-16
   11580:	48c78063          	beq	a5,a2,11a00 <_malloc_r+0x4c8>
   11584:	0087b703          	ld	a4,8(a5)
   11588:	0187b603          	ld	a2,24(a5)
   1158c:	0107b583          	ld	a1,16(a5)
   11590:	ffc77713          	andi	a4,a4,-4
   11594:	00e78733          	add	a4,a5,a4
   11598:	00873683          	ld	a3,8(a4)
   1159c:	00c5bc23          	sd	a2,24(a1)
   115a0:	00b63823          	sd	a1,16(a2)
   115a4:	0016e693          	ori	a3,a3,1
   115a8:	00040513          	mv	a0,s0
   115ac:	00d73423          	sd	a3,8(a4)
   115b0:	00f13423          	sd	a5,8(sp)
   115b4:	06d000ef          	jal	11e20 <__malloc_unlock>
   115b8:	00813783          	ld	a5,8(sp)
   115bc:	05813083          	ld	ra,88(sp)
   115c0:	05013403          	ld	s0,80(sp)
   115c4:	01078513          	addi	a0,a5,16
   115c8:	06010113          	addi	sp,sp,96
   115cc:	00008067          	ret
   115d0:	00c00793          	li	a5,12
   115d4:	00f42023          	sw	a5,0(s0)
   115d8:	00000513          	li	a0,0
   115dc:	05813083          	ld	ra,88(sp)
   115e0:	05013403          	ld	s0,80(sp)
   115e4:	06010113          	addi	sp,sp,96
   115e8:	00008067          	ret
   115ec:	00100793          	li	a5,1
   115f0:	ff077713          	andi	a4,a4,-16
   115f4:	01f79793          	slli	a5,a5,0x1f
   115f8:	fcf77ce3          	bgeu	a4,a5,115d0 <_malloc_r+0x98>
   115fc:	fcb76ae3          	bltu	a4,a1,115d0 <_malloc_r+0x98>
   11600:	00e13423          	sd	a4,8(sp)
   11604:	019000ef          	jal	11e1c <__malloc_lock>
   11608:	00813703          	ld	a4,8(sp)
   1160c:	1f700793          	li	a5,503
   11610:	4ee7fa63          	bgeu	a5,a4,11b04 <_malloc_r+0x5cc>
   11614:	00975793          	srli	a5,a4,0x9
   11618:	18078a63          	beqz	a5,117ac <_malloc_r+0x274>
   1161c:	00400693          	li	a3,4
   11620:	44f6ea63          	bltu	a3,a5,11a74 <_malloc_r+0x53c>
   11624:	00675793          	srli	a5,a4,0x6
   11628:	0397889b          	addiw	a7,a5,57
   1162c:	0018951b          	slliw	a0,a7,0x1
   11630:	03878e1b          	addiw	t3,a5,56
   11634:	00351513          	slli	a0,a0,0x3
   11638:	00013837          	lui	a6,0x13
   1163c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11640:	00a80533          	add	a0,a6,a0
   11644:	00853783          	ld	a5,8(a0)
   11648:	ff050513          	addi	a0,a0,-16
   1164c:	02f50863          	beq	a0,a5,1167c <_malloc_r+0x144>
   11650:	01f00313          	li	t1,31
   11654:	0140006f          	j	11668 <_malloc_r+0x130>
   11658:	0187b583          	ld	a1,24(a5)
   1165c:	36065263          	bgez	a2,119c0 <_malloc_r+0x488>
   11660:	00b50e63          	beq	a0,a1,1167c <_malloc_r+0x144>
   11664:	00058793          	mv	a5,a1
   11668:	0087b683          	ld	a3,8(a5)
   1166c:	ffc6f693          	andi	a3,a3,-4
   11670:	40e68633          	sub	a2,a3,a4
   11674:	fec352e3          	bge	t1,a2,11658 <_malloc_r+0x120>
   11678:	000e0893          	mv	a7,t3
   1167c:	02083783          	ld	a5,32(a6)
   11680:	00013e37          	lui	t3,0x13
   11684:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11688:	2fc78a63          	beq	a5,t3,1197c <_malloc_r+0x444>
   1168c:	0087b303          	ld	t1,8(a5)
   11690:	01f00613          	li	a2,31
   11694:	ffc37313          	andi	t1,t1,-4
   11698:	40e306b3          	sub	a3,t1,a4
   1169c:	4ad64463          	blt	a2,a3,11b44 <_malloc_r+0x60c>
   116a0:	03c83423          	sd	t3,40(a6)
   116a4:	03c83023          	sd	t3,32(a6)
   116a8:	4606da63          	bgez	a3,11b1c <_malloc_r+0x5e4>
   116ac:	1ff00693          	li	a3,511
   116b0:	00883583          	ld	a1,8(a6)
   116b4:	3466ee63          	bltu	a3,t1,11a10 <_malloc_r+0x4d8>
   116b8:	00335313          	srli	t1,t1,0x3
   116bc:	00131693          	slli	a3,t1,0x1
   116c0:	0026869b          	addiw	a3,a3,2
   116c4:	00369693          	slli	a3,a3,0x3
   116c8:	00d806b3          	add	a3,a6,a3
   116cc:	0006b503          	ld	a0,0(a3)
   116d0:	4023531b          	sraiw	t1,t1,0x2
   116d4:	00100613          	li	a2,1
   116d8:	00661633          	sll	a2,a2,t1
   116dc:	00c5e5b3          	or	a1,a1,a2
   116e0:	ff068613          	addi	a2,a3,-16
   116e4:	00a7b823          	sd	a0,16(a5)
   116e8:	00c7bc23          	sd	a2,24(a5)
   116ec:	00b83423          	sd	a1,8(a6)
   116f0:	00f6b023          	sd	a5,0(a3)
   116f4:	00f53c23          	sd	a5,24(a0)
   116f8:	4028d79b          	sraiw	a5,a7,0x2
   116fc:	00100513          	li	a0,1
   11700:	00f51533          	sll	a0,a0,a5
   11704:	0aa5ec63          	bltu	a1,a0,117bc <_malloc_r+0x284>
   11708:	00b577b3          	and	a5,a0,a1
   1170c:	02079463          	bnez	a5,11734 <_malloc_r+0x1fc>
   11710:	00151513          	slli	a0,a0,0x1
   11714:	ffc8f893          	andi	a7,a7,-4
   11718:	00b577b3          	and	a5,a0,a1
   1171c:	0048889b          	addiw	a7,a7,4
   11720:	00079a63          	bnez	a5,11734 <_malloc_r+0x1fc>
   11724:	00151513          	slli	a0,a0,0x1
   11728:	00b577b3          	and	a5,a0,a1
   1172c:	0048889b          	addiw	a7,a7,4
   11730:	fe078ae3          	beqz	a5,11724 <_malloc_r+0x1ec>
   11734:	01f00e93          	li	t4,31
   11738:	00189f13          	slli	t5,a7,0x1
   1173c:	002f0f1b          	addiw	t5,t5,2
   11740:	003f1f13          	slli	t5,t5,0x3
   11744:	ff0f0f13          	addi	t5,t5,-16
   11748:	01e80f33          	add	t5,a6,t5
   1174c:	000f0313          	mv	t1,t5
   11750:	01833683          	ld	a3,24(t1)
   11754:	00088f93          	mv	t6,a7
   11758:	34d30263          	beq	t1,a3,11a9c <_malloc_r+0x564>
   1175c:	0086b603          	ld	a2,8(a3)
   11760:	00068793          	mv	a5,a3
   11764:	0186b683          	ld	a3,24(a3)
   11768:	ffc67613          	andi	a2,a2,-4
   1176c:	40e605b3          	sub	a1,a2,a4
   11770:	34bec263          	blt	t4,a1,11ab4 <_malloc_r+0x57c>
   11774:	fe05c2e3          	bltz	a1,11758 <_malloc_r+0x220>
   11778:	00c78633          	add	a2,a5,a2
   1177c:	00863703          	ld	a4,8(a2)
   11780:	0107b583          	ld	a1,16(a5)
   11784:	00040513          	mv	a0,s0
   11788:	00176713          	ori	a4,a4,1
   1178c:	00e63423          	sd	a4,8(a2)
   11790:	00d5bc23          	sd	a3,24(a1)
   11794:	00b6b823          	sd	a1,16(a3)
   11798:	00f13423          	sd	a5,8(sp)
   1179c:	684000ef          	jal	11e20 <__malloc_unlock>
   117a0:	00813783          	ld	a5,8(sp)
   117a4:	01078513          	addi	a0,a5,16
   117a8:	e35ff06f          	j	115dc <_malloc_r+0xa4>
   117ac:	40000513          	li	a0,1024
   117b0:	04000893          	li	a7,64
   117b4:	03f00e13          	li	t3,63
   117b8:	e81ff06f          	j	11638 <_malloc_r+0x100>
   117bc:	01083783          	ld	a5,16(a6)
   117c0:	0087b683          	ld	a3,8(a5)
   117c4:	ffc6f893          	andi	a7,a3,-4
   117c8:	40e88633          	sub	a2,a7,a4
   117cc:	00e8e663          	bltu	a7,a4,117d8 <_malloc_r+0x2a0>
   117d0:	02062693          	slti	a3,a2,32
   117d4:	1a068863          	beqz	a3,11984 <_malloc_r+0x44c>
   117d8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   117dc:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   117e0:	fff00693          	li	a3,-1
   117e4:	00b705b3          	add	a1,a4,a1
   117e8:	44d60663          	beq	a2,a3,11c34 <_malloc_r+0x6fc>
   117ec:	000016b7          	lui	a3,0x1
   117f0:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   117f4:	00d585b3          	add	a1,a1,a3
   117f8:	fffff6b7          	lui	a3,0xfffff
   117fc:	00d5f5b3          	and	a1,a1,a3
   11800:	00040513          	mv	a0,s0
   11804:	03013423          	sd	a6,40(sp)
   11808:	02f13023          	sd	a5,32(sp)
   1180c:	00e13c23          	sd	a4,24(sp)
   11810:	01113823          	sd	a7,16(sp)
   11814:	00b13423          	sd	a1,8(sp)
   11818:	271000ef          	jal	12288 <_sbrk_r>
   1181c:	fff00693          	li	a3,-1
   11820:	00813583          	ld	a1,8(sp)
   11824:	01013883          	ld	a7,16(sp)
   11828:	01813703          	ld	a4,24(sp)
   1182c:	02013783          	ld	a5,32(sp)
   11830:	02813803          	ld	a6,40(sp)
   11834:	00050313          	mv	t1,a0
   11838:	36d50663          	beq	a0,a3,11ba4 <_malloc_r+0x66c>
   1183c:	011786b3          	add	a3,a5,a7
   11840:	36d56063          	bltu	a0,a3,11ba0 <_malloc_r+0x668>
   11844:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11848:	000e2603          	lw	a2,0(t3)
   1184c:	00b6063b          	addw	a2,a2,a1
   11850:	00ce2023          	sw	a2,0(t3)
   11854:	00060513          	mv	a0,a2
   11858:	4a668c63          	beq	a3,t1,11d10 <_malloc_r+0x7d8>
   1185c:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11860:	fff00613          	li	a2,-1
   11864:	4ccf0463          	beq	t5,a2,11d2c <_malloc_r+0x7f4>
   11868:	40d306b3          	sub	a3,t1,a3
   1186c:	00a686bb          	addw	a3,a3,a0
   11870:	00de2023          	sw	a3,0(t3)
   11874:	00f37e93          	andi	t4,t1,15
   11878:	3c0e8e63          	beqz	t4,11c54 <_malloc_r+0x71c>
   1187c:	ff037313          	andi	t1,t1,-16
   11880:	000016b7          	lui	a3,0x1
   11884:	01030313          	addi	t1,t1,16
   11888:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   1188c:	00b30633          	add	a2,t1,a1
   11890:	41d685b3          	sub	a1,a3,t4
   11894:	40c585b3          	sub	a1,a1,a2
   11898:	03459593          	slli	a1,a1,0x34
   1189c:	0345d593          	srli	a1,a1,0x34
   118a0:	00040513          	mv	a0,s0
   118a4:	05c13023          	sd	t3,64(sp)
   118a8:	03013c23          	sd	a6,56(sp)
   118ac:	02f13823          	sd	a5,48(sp)
   118b0:	02e13423          	sd	a4,40(sp)
   118b4:	03113023          	sd	a7,32(sp)
   118b8:	00613c23          	sd	t1,24(sp)
   118bc:	01d13823          	sd	t4,16(sp)
   118c0:	00c13423          	sd	a2,8(sp)
   118c4:	04b13423          	sd	a1,72(sp)
   118c8:	1c1000ef          	jal	12288 <_sbrk_r>
   118cc:	00050693          	mv	a3,a0
   118d0:	fff00513          	li	a0,-1
   118d4:	00813603          	ld	a2,8(sp)
   118d8:	01013e83          	ld	t4,16(sp)
   118dc:	01813303          	ld	t1,24(sp)
   118e0:	02013883          	ld	a7,32(sp)
   118e4:	02813703          	ld	a4,40(sp)
   118e8:	03013783          	ld	a5,48(sp)
   118ec:	03813803          	ld	a6,56(sp)
   118f0:	04013e03          	ld	t3,64(sp)
   118f4:	48a68663          	beq	a3,a0,11d80 <_malloc_r+0x848>
   118f8:	04813583          	ld	a1,72(sp)
   118fc:	0005851b          	sext.w	a0,a1
   11900:	000e2603          	lw	a2,0(t3)
   11904:	406686b3          	sub	a3,a3,t1
   11908:	00b686b3          	add	a3,a3,a1
   1190c:	0016e693          	ori	a3,a3,1
   11910:	00683823          	sd	t1,16(a6)
   11914:	00a6063b          	addw	a2,a2,a0
   11918:	00d33423          	sd	a3,8(t1)
   1191c:	00ce2023          	sw	a2,0(t3)
   11920:	03078e63          	beq	a5,a6,1195c <_malloc_r+0x424>
   11924:	01f00513          	li	a0,31
   11928:	41157663          	bgeu	a0,a7,11d34 <_malloc_r+0x7fc>
   1192c:	0087b583          	ld	a1,8(a5)
   11930:	fe888693          	addi	a3,a7,-24
   11934:	ff06f693          	andi	a3,a3,-16
   11938:	0015f593          	andi	a1,a1,1
   1193c:	00d5e5b3          	or	a1,a1,a3
   11940:	00b7b423          	sd	a1,8(a5)
   11944:	00900893          	li	a7,9
   11948:	00d785b3          	add	a1,a5,a3
   1194c:	0115b423          	sd	a7,8(a1)
   11950:	0115b823          	sd	a7,16(a1)
   11954:	44d56863          	bltu	a0,a3,11da4 <_malloc_r+0x86c>
   11958:	00833683          	ld	a3,8(t1)
   1195c:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11960:	00c5f463          	bgeu	a1,a2,11968 <_malloc_r+0x430>
   11964:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11968:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   1196c:	00c5f463          	bgeu	a1,a2,11974 <_malloc_r+0x43c>
   11970:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11974:	00030793          	mv	a5,t1
   11978:	2340006f          	j	11bac <_malloc_r+0x674>
   1197c:	00883583          	ld	a1,8(a6)
   11980:	d79ff06f          	j	116f8 <_malloc_r+0x1c0>
   11984:	00176693          	ori	a3,a4,1
   11988:	00d7b423          	sd	a3,8(a5)
   1198c:	00e78733          	add	a4,a5,a4
   11990:	00166613          	ori	a2,a2,1
   11994:	00e83823          	sd	a4,16(a6)
   11998:	00040513          	mv	a0,s0
   1199c:	00c73423          	sd	a2,8(a4)
   119a0:	00f13423          	sd	a5,8(sp)
   119a4:	47c000ef          	jal	11e20 <__malloc_unlock>
   119a8:	00813783          	ld	a5,8(sp)
   119ac:	05813083          	ld	ra,88(sp)
   119b0:	05013403          	ld	s0,80(sp)
   119b4:	01078513          	addi	a0,a5,16
   119b8:	06010113          	addi	sp,sp,96
   119bc:	00008067          	ret
   119c0:	0107b603          	ld	a2,16(a5)
   119c4:	00d786b3          	add	a3,a5,a3
   119c8:	0086b703          	ld	a4,8(a3)
   119cc:	00b63c23          	sd	a1,24(a2)
   119d0:	00c5b823          	sd	a2,16(a1)
   119d4:	00176713          	ori	a4,a4,1
   119d8:	00040513          	mv	a0,s0
   119dc:	00e6b423          	sd	a4,8(a3)
   119e0:	00f13423          	sd	a5,8(sp)
   119e4:	43c000ef          	jal	11e20 <__malloc_unlock>
   119e8:	00813783          	ld	a5,8(sp)
   119ec:	05813083          	ld	ra,88(sp)
   119f0:	05013403          	ld	s0,80(sp)
   119f4:	01078513          	addi	a0,a5,16
   119f8:	06010113          	addi	sp,sp,96
   119fc:	00008067          	ret
   11a00:	0186b783          	ld	a5,24(a3)
   11a04:	0028889b          	addiw	a7,a7,2
   11a08:	c6f68ae3          	beq	a3,a5,1167c <_malloc_r+0x144>
   11a0c:	b79ff06f          	j	11584 <_malloc_r+0x4c>
   11a10:	00935693          	srli	a3,t1,0x9
   11a14:	00400613          	li	a2,4
   11a18:	16d67863          	bgeu	a2,a3,11b88 <_malloc_r+0x650>
   11a1c:	01400613          	li	a2,20
   11a20:	28d66e63          	bltu	a2,a3,11cbc <_malloc_r+0x784>
   11a24:	00169513          	slli	a0,a3,0x1
   11a28:	0b85051b          	addiw	a0,a0,184
   11a2c:	00351513          	slli	a0,a0,0x3
   11a30:	05b6861b          	addiw	a2,a3,91
   11a34:	00a80533          	add	a0,a6,a0
   11a38:	00053683          	ld	a3,0(a0)
   11a3c:	ff050513          	addi	a0,a0,-16
   11a40:	00d51863          	bne	a0,a3,11a50 <_malloc_r+0x518>
   11a44:	1f80006f          	j	11c3c <_malloc_r+0x704>
   11a48:	0106b683          	ld	a3,16(a3)
   11a4c:	00d50863          	beq	a0,a3,11a5c <_malloc_r+0x524>
   11a50:	0086b603          	ld	a2,8(a3)
   11a54:	ffc67613          	andi	a2,a2,-4
   11a58:	fec368e3          	bltu	t1,a2,11a48 <_malloc_r+0x510>
   11a5c:	0186b503          	ld	a0,24(a3)
   11a60:	00a7bc23          	sd	a0,24(a5)
   11a64:	00d7b823          	sd	a3,16(a5)
   11a68:	00f53823          	sd	a5,16(a0)
   11a6c:	00f6bc23          	sd	a5,24(a3)
   11a70:	c89ff06f          	j	116f8 <_malloc_r+0x1c0>
   11a74:	01400693          	li	a3,20
   11a78:	14f6fa63          	bgeu	a3,a5,11bcc <_malloc_r+0x694>
   11a7c:	05400693          	li	a3,84
   11a80:	24f6ee63          	bltu	a3,a5,11cdc <_malloc_r+0x7a4>
   11a84:	00c75793          	srli	a5,a4,0xc
   11a88:	06f7889b          	addiw	a7,a5,111
   11a8c:	0018951b          	slliw	a0,a7,0x1
   11a90:	06e78e1b          	addiw	t3,a5,110
   11a94:	00351513          	slli	a0,a0,0x3
   11a98:	ba1ff06f          	j	11638 <_malloc_r+0x100>
   11a9c:	001f8f9b          	addiw	t6,t6,1
   11aa0:	003ff793          	andi	a5,t6,3
   11aa4:	01030313          	addi	t1,t1,16
   11aa8:	14078263          	beqz	a5,11bec <_malloc_r+0x6b4>
   11aac:	01833683          	ld	a3,24(t1)
   11ab0:	ca9ff06f          	j	11758 <_malloc_r+0x220>
   11ab4:	0107b503          	ld	a0,16(a5)
   11ab8:	00176893          	ori	a7,a4,1
   11abc:	0117b423          	sd	a7,8(a5)
   11ac0:	00d53c23          	sd	a3,24(a0)
   11ac4:	00a6b823          	sd	a0,16(a3)
   11ac8:	00e78733          	add	a4,a5,a4
   11acc:	02e83423          	sd	a4,40(a6)
   11ad0:	02e83023          	sd	a4,32(a6)
   11ad4:	0015e693          	ori	a3,a1,1
   11ad8:	00c78633          	add	a2,a5,a2
   11adc:	01c73c23          	sd	t3,24(a4)
   11ae0:	01c73823          	sd	t3,16(a4)
   11ae4:	00d73423          	sd	a3,8(a4)
   11ae8:	00040513          	mv	a0,s0
   11aec:	00b63023          	sd	a1,0(a2)
   11af0:	00f13423          	sd	a5,8(sp)
   11af4:	32c000ef          	jal	11e20 <__malloc_unlock>
   11af8:	00813783          	ld	a5,8(sp)
   11afc:	01078513          	addi	a0,a5,16
   11b00:	addff06f          	j	115dc <_malloc_r+0xa4>
   11b04:	00375893          	srli	a7,a4,0x3
   11b08:	00189693          	slli	a3,a7,0x1
   11b0c:	0026869b          	addiw	a3,a3,2
   11b10:	00369693          	slli	a3,a3,0x3
   11b14:	0008889b          	sext.w	a7,a7
   11b18:	a55ff06f          	j	1156c <_malloc_r+0x34>
   11b1c:	00678333          	add	t1,a5,t1
   11b20:	00833703          	ld	a4,8(t1)
   11b24:	00040513          	mv	a0,s0
   11b28:	00f13423          	sd	a5,8(sp)
   11b2c:	00176713          	ori	a4,a4,1
   11b30:	00e33423          	sd	a4,8(t1)
   11b34:	2ec000ef          	jal	11e20 <__malloc_unlock>
   11b38:	00813783          	ld	a5,8(sp)
   11b3c:	01078513          	addi	a0,a5,16
   11b40:	a9dff06f          	j	115dc <_malloc_r+0xa4>
   11b44:	00176613          	ori	a2,a4,1
   11b48:	00c7b423          	sd	a2,8(a5)
   11b4c:	00e78733          	add	a4,a5,a4
   11b50:	02e83423          	sd	a4,40(a6)
   11b54:	02e83023          	sd	a4,32(a6)
   11b58:	0016e613          	ori	a2,a3,1
   11b5c:	00678333          	add	t1,a5,t1
   11b60:	01c73c23          	sd	t3,24(a4)
   11b64:	01c73823          	sd	t3,16(a4)
   11b68:	00c73423          	sd	a2,8(a4)
   11b6c:	00040513          	mv	a0,s0
   11b70:	00d33023          	sd	a3,0(t1)
   11b74:	00f13423          	sd	a5,8(sp)
   11b78:	2a8000ef          	jal	11e20 <__malloc_unlock>
   11b7c:	00813783          	ld	a5,8(sp)
   11b80:	01078513          	addi	a0,a5,16
   11b84:	a59ff06f          	j	115dc <_malloc_r+0xa4>
   11b88:	00635693          	srli	a3,t1,0x6
   11b8c:	00169513          	slli	a0,a3,0x1
   11b90:	0725051b          	addiw	a0,a0,114
   11b94:	00351513          	slli	a0,a0,0x3
   11b98:	0386861b          	addiw	a2,a3,56
   11b9c:	e99ff06f          	j	11a34 <_malloc_r+0x4fc>
   11ba0:	15078e63          	beq	a5,a6,11cfc <_malloc_r+0x7c4>
   11ba4:	01083783          	ld	a5,16(a6)
   11ba8:	0087b683          	ld	a3,8(a5)
   11bac:	ffc6f693          	andi	a3,a3,-4
   11bb0:	40e68633          	sub	a2,a3,a4
   11bb4:	00e6e663          	bltu	a3,a4,11bc0 <_malloc_r+0x688>
   11bb8:	02062693          	slti	a3,a2,32
   11bbc:	dc0684e3          	beqz	a3,11984 <_malloc_r+0x44c>
   11bc0:	00040513          	mv	a0,s0
   11bc4:	25c000ef          	jal	11e20 <__malloc_unlock>
   11bc8:	a11ff06f          	j	115d8 <_malloc_r+0xa0>
   11bcc:	05c7889b          	addiw	a7,a5,92
   11bd0:	0018951b          	slliw	a0,a7,0x1
   11bd4:	05b78e1b          	addiw	t3,a5,91
   11bd8:	00351513          	slli	a0,a0,0x3
   11bdc:	a5dff06f          	j	11638 <_malloc_r+0x100>
   11be0:	010f3783          	ld	a5,16(t5)
   11be4:	fff8889b          	addiw	a7,a7,-1
   11be8:	23e79663          	bne	a5,t5,11e14 <_malloc_r+0x8dc>
   11bec:	0038f793          	andi	a5,a7,3
   11bf0:	ff0f0f13          	addi	t5,t5,-16
   11bf4:	fe0796e3          	bnez	a5,11be0 <_malloc_r+0x6a8>
   11bf8:	00883683          	ld	a3,8(a6)
   11bfc:	fff54793          	not	a5,a0
   11c00:	00d7f7b3          	and	a5,a5,a3
   11c04:	00f83423          	sd	a5,8(a6)
   11c08:	00151513          	slli	a0,a0,0x1
   11c0c:	fff50693          	addi	a3,a0,-1
   11c10:	baf6f6e3          	bgeu	a3,a5,117bc <_malloc_r+0x284>
   11c14:	00f576b3          	and	a3,a0,a5
   11c18:	00069a63          	bnez	a3,11c2c <_malloc_r+0x6f4>
   11c1c:	00151513          	slli	a0,a0,0x1
   11c20:	00f576b3          	and	a3,a0,a5
   11c24:	004f8f9b          	addiw	t6,t6,4
   11c28:	fe068ae3          	beqz	a3,11c1c <_malloc_r+0x6e4>
   11c2c:	000f8893          	mv	a7,t6
   11c30:	b09ff06f          	j	11738 <_malloc_r+0x200>
   11c34:	02058593          	addi	a1,a1,32
   11c38:	bc9ff06f          	j	11800 <_malloc_r+0x2c8>
   11c3c:	4026561b          	sraiw	a2,a2,0x2
   11c40:	00100313          	li	t1,1
   11c44:	00c31633          	sll	a2,t1,a2
   11c48:	00c5e5b3          	or	a1,a1,a2
   11c4c:	00b83423          	sd	a1,8(a6)
   11c50:	e11ff06f          	j	11a60 <_malloc_r+0x528>
   11c54:	00b30633          	add	a2,t1,a1
   11c58:	40c005b3          	neg	a1,a2
   11c5c:	03459593          	slli	a1,a1,0x34
   11c60:	0345d593          	srli	a1,a1,0x34
   11c64:	00040513          	mv	a0,s0
   11c68:	03c13c23          	sd	t3,56(sp)
   11c6c:	03013823          	sd	a6,48(sp)
   11c70:	02f13423          	sd	a5,40(sp)
   11c74:	02e13023          	sd	a4,32(sp)
   11c78:	01113c23          	sd	a7,24(sp)
   11c7c:	00613823          	sd	t1,16(sp)
   11c80:	00c13423          	sd	a2,8(sp)
   11c84:	04b13023          	sd	a1,64(sp)
   11c88:	600000ef          	jal	12288 <_sbrk_r>
   11c8c:	00050693          	mv	a3,a0
   11c90:	fff00513          	li	a0,-1
   11c94:	01013303          	ld	t1,16(sp)
   11c98:	01813883          	ld	a7,24(sp)
   11c9c:	02013703          	ld	a4,32(sp)
   11ca0:	02813783          	ld	a5,40(sp)
   11ca4:	03013803          	ld	a6,48(sp)
   11ca8:	03813e03          	ld	t3,56(sp)
   11cac:	0ea68463          	beq	a3,a0,11d94 <_malloc_r+0x85c>
   11cb0:	04013583          	ld	a1,64(sp)
   11cb4:	0005851b          	sext.w	a0,a1
   11cb8:	c49ff06f          	j	11900 <_malloc_r+0x3c8>
   11cbc:	05400613          	li	a2,84
   11cc0:	08d66063          	bltu	a2,a3,11d40 <_malloc_r+0x808>
   11cc4:	00c35693          	srli	a3,t1,0xc
   11cc8:	00169513          	slli	a0,a3,0x1
   11ccc:	0de5051b          	addiw	a0,a0,222
   11cd0:	00351513          	slli	a0,a0,0x3
   11cd4:	06e6861b          	addiw	a2,a3,110
   11cd8:	d5dff06f          	j	11a34 <_malloc_r+0x4fc>
   11cdc:	15400693          	li	a3,340
   11ce0:	08f6e063          	bltu	a3,a5,11d60 <_malloc_r+0x828>
   11ce4:	00f75793          	srli	a5,a4,0xf
   11ce8:	0787889b          	addiw	a7,a5,120
   11cec:	0018951b          	slliw	a0,a7,0x1
   11cf0:	07778e1b          	addiw	t3,a5,119
   11cf4:	00351513          	slli	a0,a0,0x3
   11cf8:	941ff06f          	j	11638 <_malloc_r+0x100>
   11cfc:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11d00:	000e2503          	lw	a0,0(t3)
   11d04:	00b5053b          	addw	a0,a0,a1
   11d08:	00ae2023          	sw	a0,0(t3)
   11d0c:	b51ff06f          	j	1185c <_malloc_r+0x324>
   11d10:	03431f13          	slli	t5,t1,0x34
   11d14:	b40f14e3          	bnez	t5,1185c <_malloc_r+0x324>
   11d18:	01083303          	ld	t1,16(a6)
   11d1c:	00b885b3          	add	a1,a7,a1
   11d20:	0015e693          	ori	a3,a1,1
   11d24:	00d33423          	sd	a3,8(t1)
   11d28:	c35ff06f          	j	1195c <_malloc_r+0x424>
   11d2c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11d30:	b45ff06f          	j	11874 <_malloc_r+0x33c>
   11d34:	00100793          	li	a5,1
   11d38:	00f33423          	sd	a5,8(t1)
   11d3c:	e85ff06f          	j	11bc0 <_malloc_r+0x688>
   11d40:	15400613          	li	a2,340
   11d44:	08d66a63          	bltu	a2,a3,11dd8 <_malloc_r+0x8a0>
   11d48:	00f35693          	srli	a3,t1,0xf
   11d4c:	00169513          	slli	a0,a3,0x1
   11d50:	0f05051b          	addiw	a0,a0,240
   11d54:	00351513          	slli	a0,a0,0x3
   11d58:	0776861b          	addiw	a2,a3,119
   11d5c:	cd9ff06f          	j	11a34 <_malloc_r+0x4fc>
   11d60:	55400693          	li	a3,1364
   11d64:	08f6ea63          	bltu	a3,a5,11df8 <_malloc_r+0x8c0>
   11d68:	01275793          	srli	a5,a4,0x12
   11d6c:	07d7889b          	addiw	a7,a5,125
   11d70:	0018951b          	slliw	a0,a7,0x1
   11d74:	07c78e1b          	addiw	t3,a5,124
   11d78:	00351513          	slli	a0,a0,0x3
   11d7c:	8bdff06f          	j	11638 <_malloc_r+0x100>
   11d80:	ff0e8e93          	addi	t4,t4,-16
   11d84:	01d606b3          	add	a3,a2,t4
   11d88:	00000513          	li	a0,0
   11d8c:	00000593          	li	a1,0
   11d90:	b71ff06f          	j	11900 <_malloc_r+0x3c8>
   11d94:	00813683          	ld	a3,8(sp)
   11d98:	00000593          	li	a1,0
   11d9c:	00000513          	li	a0,0
   11da0:	b61ff06f          	j	11900 <_malloc_r+0x3c8>
   11da4:	01078593          	addi	a1,a5,16
   11da8:	00040513          	mv	a0,s0
   11dac:	01c13c23          	sd	t3,24(sp)
   11db0:	01013823          	sd	a6,16(sp)
   11db4:	00e13423          	sd	a4,8(sp)
   11db8:	c7cff0ef          	jal	11234 <_free_r>
   11dbc:	01013803          	ld	a6,16(sp)
   11dc0:	01813e03          	ld	t3,24(sp)
   11dc4:	00813703          	ld	a4,8(sp)
   11dc8:	01083303          	ld	t1,16(a6)
   11dcc:	000e2603          	lw	a2,0(t3)
   11dd0:	00833683          	ld	a3,8(t1)
   11dd4:	b89ff06f          	j	1195c <_malloc_r+0x424>
   11dd8:	55400613          	li	a2,1364
   11ddc:	02d66663          	bltu	a2,a3,11e08 <_malloc_r+0x8d0>
   11de0:	01235693          	srli	a3,t1,0x12
   11de4:	00169513          	slli	a0,a3,0x1
   11de8:	0fa5051b          	addiw	a0,a0,250
   11dec:	00351513          	slli	a0,a0,0x3
   11df0:	07c6861b          	addiw	a2,a3,124
   11df4:	c41ff06f          	j	11a34 <_malloc_r+0x4fc>
   11df8:	7f000513          	li	a0,2032
   11dfc:	07f00893          	li	a7,127
   11e00:	07e00e13          	li	t3,126
   11e04:	835ff06f          	j	11638 <_malloc_r+0x100>
   11e08:	7f000513          	li	a0,2032
   11e0c:	07e00613          	li	a2,126
   11e10:	c25ff06f          	j	11a34 <_malloc_r+0x4fc>
   11e14:	00883783          	ld	a5,8(a6)
   11e18:	df1ff06f          	j	11c08 <_malloc_r+0x6d0>

0000000000011e1c <__malloc_lock>:
   11e1c:	00008067          	ret

0000000000011e20 <__malloc_unlock>:
   11e20:	00008067          	ret

0000000000011e24 <_fclose_r>:
   11e24:	fe010113          	addi	sp,sp,-32
   11e28:	00113c23          	sd	ra,24(sp)
   11e2c:	01213023          	sd	s2,0(sp)
   11e30:	02058863          	beqz	a1,11e60 <_fclose_r+0x3c>
   11e34:	00813823          	sd	s0,16(sp)
   11e38:	00913423          	sd	s1,8(sp)
   11e3c:	00058413          	mv	s0,a1
   11e40:	00050493          	mv	s1,a0
   11e44:	00050663          	beqz	a0,11e50 <_fclose_r+0x2c>
   11e48:	04853783          	ld	a5,72(a0)
   11e4c:	0c078c63          	beqz	a5,11f24 <_fclose_r+0x100>
   11e50:	01041783          	lh	a5,16(s0)
   11e54:	02079263          	bnez	a5,11e78 <_fclose_r+0x54>
   11e58:	01013403          	ld	s0,16(sp)
   11e5c:	00813483          	ld	s1,8(sp)
   11e60:	01813083          	ld	ra,24(sp)
   11e64:	00000913          	li	s2,0
   11e68:	00090513          	mv	a0,s2
   11e6c:	00013903          	ld	s2,0(sp)
   11e70:	02010113          	addi	sp,sp,32
   11e74:	00008067          	ret
   11e78:	00040593          	mv	a1,s0
   11e7c:	00048513          	mv	a0,s1
   11e80:	0b8000ef          	jal	11f38 <__sflush_r>
   11e84:	05043783          	ld	a5,80(s0)
   11e88:	00050913          	mv	s2,a0
   11e8c:	00078a63          	beqz	a5,11ea0 <_fclose_r+0x7c>
   11e90:	03043583          	ld	a1,48(s0)
   11e94:	00048513          	mv	a0,s1
   11e98:	000780e7          	jalr	a5
   11e9c:	06054463          	bltz	a0,11f04 <_fclose_r+0xe0>
   11ea0:	01045783          	lhu	a5,16(s0)
   11ea4:	0807f793          	andi	a5,a5,128
   11ea8:	06079663          	bnez	a5,11f14 <_fclose_r+0xf0>
   11eac:	05843583          	ld	a1,88(s0)
   11eb0:	00058c63          	beqz	a1,11ec8 <_fclose_r+0xa4>
   11eb4:	07440793          	addi	a5,s0,116
   11eb8:	00f58663          	beq	a1,a5,11ec4 <_fclose_r+0xa0>
   11ebc:	00048513          	mv	a0,s1
   11ec0:	b74ff0ef          	jal	11234 <_free_r>
   11ec4:	04043c23          	sd	zero,88(s0)
   11ec8:	07843583          	ld	a1,120(s0)
   11ecc:	00058863          	beqz	a1,11edc <_fclose_r+0xb8>
   11ed0:	00048513          	mv	a0,s1
   11ed4:	b60ff0ef          	jal	11234 <_free_r>
   11ed8:	06043c23          	sd	zero,120(s0)
   11edc:	aa1fe0ef          	jal	1097c <__sfp_lock_acquire>
   11ee0:	00041823          	sh	zero,16(s0)
   11ee4:	a9dfe0ef          	jal	10980 <__sfp_lock_release>
   11ee8:	01813083          	ld	ra,24(sp)
   11eec:	01013403          	ld	s0,16(sp)
   11ef0:	00813483          	ld	s1,8(sp)
   11ef4:	00090513          	mv	a0,s2
   11ef8:	00013903          	ld	s2,0(sp)
   11efc:	02010113          	addi	sp,sp,32
   11f00:	00008067          	ret
   11f04:	01045783          	lhu	a5,16(s0)
   11f08:	fff00913          	li	s2,-1
   11f0c:	0807f793          	andi	a5,a5,128
   11f10:	f8078ee3          	beqz	a5,11eac <_fclose_r+0x88>
   11f14:	01843583          	ld	a1,24(s0)
   11f18:	00048513          	mv	a0,s1
   11f1c:	b18ff0ef          	jal	11234 <_free_r>
   11f20:	f8dff06f          	j	11eac <_fclose_r+0x88>
   11f24:	a35fe0ef          	jal	10958 <__sinit>
   11f28:	f29ff06f          	j	11e50 <_fclose_r+0x2c>

0000000000011f2c <fclose>:
   11f2c:	00050593          	mv	a1,a0
   11f30:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f34:	ef1ff06f          	j	11e24 <_fclose_r>

0000000000011f38 <__sflush_r>:
   11f38:	01059703          	lh	a4,16(a1)
   11f3c:	fd010113          	addi	sp,sp,-48
   11f40:	02813023          	sd	s0,32(sp)
   11f44:	01313423          	sd	s3,8(sp)
   11f48:	02113423          	sd	ra,40(sp)
   11f4c:	00877793          	andi	a5,a4,8
   11f50:	00058413          	mv	s0,a1
   11f54:	00050993          	mv	s3,a0
   11f58:	12079263          	bnez	a5,1207c <__sflush_r+0x144>
   11f5c:	000017b7          	lui	a5,0x1
   11f60:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11f64:	0085a683          	lw	a3,8(a1)
   11f68:	00f767b3          	or	a5,a4,a5
   11f6c:	00f59823          	sh	a5,16(a1)
   11f70:	18d05c63          	blez	a3,12108 <__sflush_r+0x1d0>
   11f74:	04843803          	ld	a6,72(s0)
   11f78:	0e080663          	beqz	a6,12064 <__sflush_r+0x12c>
   11f7c:	00913c23          	sd	s1,24(sp)
   11f80:	03371693          	slli	a3,a4,0x33
   11f84:	0009a483          	lw	s1,0(s3)
   11f88:	0009a023          	sw	zero,0(s3)
   11f8c:	1806ca63          	bltz	a3,12120 <__sflush_r+0x1e8>
   11f90:	03043583          	ld	a1,48(s0)
   11f94:	00000613          	li	a2,0
   11f98:	00100693          	li	a3,1
   11f9c:	00098513          	mv	a0,s3
   11fa0:	000800e7          	jalr	a6
   11fa4:	fff00793          	li	a5,-1
   11fa8:	00050613          	mv	a2,a0
   11fac:	1af50c63          	beq	a0,a5,12164 <__sflush_r+0x22c>
   11fb0:	01041783          	lh	a5,16(s0)
   11fb4:	04843803          	ld	a6,72(s0)
   11fb8:	0047f793          	andi	a5,a5,4
   11fbc:	00078e63          	beqz	a5,11fd8 <__sflush_r+0xa0>
   11fc0:	00842703          	lw	a4,8(s0)
   11fc4:	05843783          	ld	a5,88(s0)
   11fc8:	40e60633          	sub	a2,a2,a4
   11fcc:	00078663          	beqz	a5,11fd8 <__sflush_r+0xa0>
   11fd0:	07042783          	lw	a5,112(s0)
   11fd4:	40f60633          	sub	a2,a2,a5
   11fd8:	03043583          	ld	a1,48(s0)
   11fdc:	00000693          	li	a3,0
   11fe0:	00098513          	mv	a0,s3
   11fe4:	000800e7          	jalr	a6
   11fe8:	fff00713          	li	a4,-1
   11fec:	01041783          	lh	a5,16(s0)
   11ff0:	12e51c63          	bne	a0,a4,12128 <__sflush_r+0x1f0>
   11ff4:	0009a683          	lw	a3,0(s3)
   11ff8:	01d00713          	li	a4,29
   11ffc:	18d76263          	bltu	a4,a3,12180 <__sflush_r+0x248>
   12000:	20400737          	lui	a4,0x20400
   12004:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   12008:	00d75733          	srl	a4,a4,a3
   1200c:	00177713          	andi	a4,a4,1
   12010:	16070863          	beqz	a4,12180 <__sflush_r+0x248>
   12014:	01843683          	ld	a3,24(s0)
   12018:	fffff737          	lui	a4,0xfffff
   1201c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12020:	00e7f733          	and	a4,a5,a4
   12024:	00e41823          	sh	a4,16(s0)
   12028:	00042423          	sw	zero,8(s0)
   1202c:	00d43023          	sd	a3,0(s0)
   12030:	03379713          	slli	a4,a5,0x33
   12034:	00075663          	bgez	a4,12040 <__sflush_r+0x108>
   12038:	0009a783          	lw	a5,0(s3)
   1203c:	10078863          	beqz	a5,1214c <__sflush_r+0x214>
   12040:	05843583          	ld	a1,88(s0)
   12044:	0099a023          	sw	s1,0(s3)
   12048:	10058a63          	beqz	a1,1215c <__sflush_r+0x224>
   1204c:	07440793          	addi	a5,s0,116
   12050:	00f58663          	beq	a1,a5,1205c <__sflush_r+0x124>
   12054:	00098513          	mv	a0,s3
   12058:	9dcff0ef          	jal	11234 <_free_r>
   1205c:	01813483          	ld	s1,24(sp)
   12060:	04043c23          	sd	zero,88(s0)
   12064:	02813083          	ld	ra,40(sp)
   12068:	02013403          	ld	s0,32(sp)
   1206c:	00813983          	ld	s3,8(sp)
   12070:	00000513          	li	a0,0
   12074:	03010113          	addi	sp,sp,48
   12078:	00008067          	ret
   1207c:	01213823          	sd	s2,16(sp)
   12080:	0185b903          	ld	s2,24(a1)
   12084:	08090a63          	beqz	s2,12118 <__sflush_r+0x1e0>
   12088:	00913c23          	sd	s1,24(sp)
   1208c:	0005b483          	ld	s1,0(a1)
   12090:	00377713          	andi	a4,a4,3
   12094:	0125b023          	sd	s2,0(a1)
   12098:	412484bb          	subw	s1,s1,s2
   1209c:	00000793          	li	a5,0
   120a0:	00071463          	bnez	a4,120a8 <__sflush_r+0x170>
   120a4:	0205a783          	lw	a5,32(a1)
   120a8:	00f42623          	sw	a5,12(s0)
   120ac:	00904863          	bgtz	s1,120bc <__sflush_r+0x184>
   120b0:	0640006f          	j	12114 <__sflush_r+0x1dc>
   120b4:	00a90933          	add	s2,s2,a0
   120b8:	04905e63          	blez	s1,12114 <__sflush_r+0x1dc>
   120bc:	04043783          	ld	a5,64(s0)
   120c0:	03043583          	ld	a1,48(s0)
   120c4:	00048693          	mv	a3,s1
   120c8:	00090613          	mv	a2,s2
   120cc:	00098513          	mv	a0,s3
   120d0:	000780e7          	jalr	a5
   120d4:	40a484bb          	subw	s1,s1,a0
   120d8:	fca04ee3          	bgtz	a0,120b4 <__sflush_r+0x17c>
   120dc:	01045783          	lhu	a5,16(s0)
   120e0:	01013903          	ld	s2,16(sp)
   120e4:	0407e793          	ori	a5,a5,64
   120e8:	02813083          	ld	ra,40(sp)
   120ec:	00f41823          	sh	a5,16(s0)
   120f0:	02013403          	ld	s0,32(sp)
   120f4:	01813483          	ld	s1,24(sp)
   120f8:	00813983          	ld	s3,8(sp)
   120fc:	fff00513          	li	a0,-1
   12100:	03010113          	addi	sp,sp,48
   12104:	00008067          	ret
   12108:	0705a683          	lw	a3,112(a1)
   1210c:	e6d044e3          	bgtz	a3,11f74 <__sflush_r+0x3c>
   12110:	f55ff06f          	j	12064 <__sflush_r+0x12c>
   12114:	01813483          	ld	s1,24(sp)
   12118:	01013903          	ld	s2,16(sp)
   1211c:	f49ff06f          	j	12064 <__sflush_r+0x12c>
   12120:	09043603          	ld	a2,144(s0)
   12124:	e95ff06f          	j	11fb8 <__sflush_r+0x80>
   12128:	01843683          	ld	a3,24(s0)
   1212c:	fffff737          	lui	a4,0xfffff
   12130:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12134:	00e7f733          	and	a4,a5,a4
   12138:	00e41823          	sh	a4,16(s0)
   1213c:	00042423          	sw	zero,8(s0)
   12140:	00d43023          	sd	a3,0(s0)
   12144:	03379713          	slli	a4,a5,0x33
   12148:	ee075ce3          	bgez	a4,12040 <__sflush_r+0x108>
   1214c:	05843583          	ld	a1,88(s0)
   12150:	08a43823          	sd	a0,144(s0)
   12154:	0099a023          	sw	s1,0(s3)
   12158:	ee059ae3          	bnez	a1,1204c <__sflush_r+0x114>
   1215c:	01813483          	ld	s1,24(sp)
   12160:	f05ff06f          	j	12064 <__sflush_r+0x12c>
   12164:	0009a783          	lw	a5,0(s3)
   12168:	e40784e3          	beqz	a5,11fb0 <__sflush_r+0x78>
   1216c:	fe378713          	addi	a4,a5,-29
   12170:	00070c63          	beqz	a4,12188 <__sflush_r+0x250>
   12174:	fea78793          	addi	a5,a5,-22
   12178:	00078863          	beqz	a5,12188 <__sflush_r+0x250>
   1217c:	01045783          	lhu	a5,16(s0)
   12180:	0407e793          	ori	a5,a5,64
   12184:	f65ff06f          	j	120e8 <__sflush_r+0x1b0>
   12188:	0099a023          	sw	s1,0(s3)
   1218c:	01813483          	ld	s1,24(sp)
   12190:	ed5ff06f          	j	12064 <__sflush_r+0x12c>

0000000000012194 <_fflush_r>:
   12194:	00050793          	mv	a5,a0
   12198:	00050663          	beqz	a0,121a4 <_fflush_r+0x10>
   1219c:	04853703          	ld	a4,72(a0)
   121a0:	00070e63          	beqz	a4,121bc <_fflush_r+0x28>
   121a4:	01059703          	lh	a4,16(a1)
   121a8:	00071663          	bnez	a4,121b4 <_fflush_r+0x20>
   121ac:	00000513          	li	a0,0
   121b0:	00008067          	ret
   121b4:	00078513          	mv	a0,a5
   121b8:	d81ff06f          	j	11f38 <__sflush_r>
   121bc:	fe010113          	addi	sp,sp,-32
   121c0:	00b13423          	sd	a1,8(sp)
   121c4:	00113c23          	sd	ra,24(sp)
   121c8:	00a13023          	sd	a0,0(sp)
   121cc:	f8cfe0ef          	jal	10958 <__sinit>
   121d0:	00813583          	ld	a1,8(sp)
   121d4:	00013783          	ld	a5,0(sp)
   121d8:	01059703          	lh	a4,16(a1)
   121dc:	00070a63          	beqz	a4,121f0 <_fflush_r+0x5c>
   121e0:	01813083          	ld	ra,24(sp)
   121e4:	00078513          	mv	a0,a5
   121e8:	02010113          	addi	sp,sp,32
   121ec:	d4dff06f          	j	11f38 <__sflush_r>
   121f0:	01813083          	ld	ra,24(sp)
   121f4:	00000513          	li	a0,0
   121f8:	02010113          	addi	sp,sp,32
   121fc:	00008067          	ret

0000000000012200 <fflush>:
   12200:	06050063          	beqz	a0,12260 <fflush+0x60>
   12204:	00050593          	mv	a1,a0
   12208:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1220c:	00050663          	beqz	a0,12218 <fflush+0x18>
   12210:	04853783          	ld	a5,72(a0)
   12214:	00078c63          	beqz	a5,1222c <fflush+0x2c>
   12218:	01059783          	lh	a5,16(a1)
   1221c:	00079663          	bnez	a5,12228 <fflush+0x28>
   12220:	00000513          	li	a0,0
   12224:	00008067          	ret
   12228:	d11ff06f          	j	11f38 <__sflush_r>
   1222c:	fe010113          	addi	sp,sp,-32
   12230:	00b13423          	sd	a1,8(sp)
   12234:	00a13023          	sd	a0,0(sp)
   12238:	00113c23          	sd	ra,24(sp)
   1223c:	f1cfe0ef          	jal	10958 <__sinit>
   12240:	00813583          	ld	a1,8(sp)
   12244:	00013503          	ld	a0,0(sp)
   12248:	01059783          	lh	a5,16(a1)
   1224c:	02079863          	bnez	a5,1227c <fflush+0x7c>
   12250:	01813083          	ld	ra,24(sp)
   12254:	00000513          	li	a0,0
   12258:	02010113          	addi	sp,sp,32
   1225c:	00008067          	ret
   12260:	00013637          	lui	a2,0x13
   12264:	000125b7          	lui	a1,0x12
   12268:	00013537          	lui	a0,0x13
   1226c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12270:	19458593          	addi	a1,a1,404 # 12194 <_fflush_r>
   12274:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12278:	f3cfe06f          	j	109b4 <_fwalk_sglue>
   1227c:	01813083          	ld	ra,24(sp)
   12280:	02010113          	addi	sp,sp,32
   12284:	cb5ff06f          	j	11f38 <__sflush_r>

0000000000012288 <_sbrk_r>:
   12288:	fe010113          	addi	sp,sp,-32
   1228c:	00813823          	sd	s0,16(sp)
   12290:	00913423          	sd	s1,8(sp)
   12294:	00050493          	mv	s1,a0
   12298:	00058513          	mv	a0,a1
   1229c:	00113c23          	sd	ra,24(sp)
   122a0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   122a4:	228000ef          	jal	124cc <_sbrk>
   122a8:	fff00793          	li	a5,-1
   122ac:	00f50c63          	beq	a0,a5,122c4 <_sbrk_r+0x3c>
   122b0:	01813083          	ld	ra,24(sp)
   122b4:	01013403          	ld	s0,16(sp)
   122b8:	00813483          	ld	s1,8(sp)
   122bc:	02010113          	addi	sp,sp,32
   122c0:	00008067          	ret
   122c4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   122c8:	fe0784e3          	beqz	a5,122b0 <_sbrk_r+0x28>
   122cc:	01813083          	ld	ra,24(sp)
   122d0:	01013403          	ld	s0,16(sp)
   122d4:	00f4a023          	sw	a5,0(s1)
   122d8:	00813483          	ld	s1,8(sp)
   122dc:	02010113          	addi	sp,sp,32
   122e0:	00008067          	ret

00000000000122e4 <__libc_fini_array>:
   122e4:	fe010113          	addi	sp,sp,-32
   122e8:	00813823          	sd	s0,16(sp)
   122ec:	000137b7          	lui	a5,0x13
   122f0:	00013437          	lui	s0,0x13
   122f4:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   122f8:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   122fc:	408787b3          	sub	a5,a5,s0
   12300:	00913423          	sd	s1,8(sp)
   12304:	00113c23          	sd	ra,24(sp)
   12308:	4037d493          	srai	s1,a5,0x3
   1230c:	02048063          	beqz	s1,1232c <__libc_fini_array+0x48>
   12310:	ff840413          	addi	s0,s0,-8
   12314:	00f40433          	add	s0,s0,a5
   12318:	00043783          	ld	a5,0(s0)
   1231c:	fff48493          	addi	s1,s1,-1
   12320:	ff840413          	addi	s0,s0,-8
   12324:	000780e7          	jalr	a5
   12328:	fe0498e3          	bnez	s1,12318 <__libc_fini_array+0x34>
   1232c:	01813083          	ld	ra,24(sp)
   12330:	01013403          	ld	s0,16(sp)
   12334:	00813483          	ld	s1,8(sp)
   12338:	02010113          	addi	sp,sp,32
   1233c:	00008067          	ret

0000000000012340 <__register_exitproc>:
   12340:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12344:	04078e63          	beqz	a5,123a0 <__register_exitproc+0x60>
   12348:	0087a703          	lw	a4,8(a5)
   1234c:	01f00813          	li	a6,31
   12350:	08e84263          	blt	a6,a4,123d4 <__register_exitproc+0x94>
   12354:	02050863          	beqz	a0,12384 <__register_exitproc+0x44>
   12358:	00371813          	slli	a6,a4,0x3
   1235c:	01078833          	add	a6,a5,a6
   12360:	10c83823          	sd	a2,272(a6)
   12364:	3107a883          	lw	a7,784(a5)
   12368:	00100613          	li	a2,1
   1236c:	00e6163b          	sllw	a2,a2,a4
   12370:	00c8e8b3          	or	a7,a7,a2
   12374:	3117a823          	sw	a7,784(a5)
   12378:	20d83823          	sd	a3,528(a6)
   1237c:	00200693          	li	a3,2
   12380:	02d50663          	beq	a0,a3,123ac <__register_exitproc+0x6c>
   12384:	0017069b          	addiw	a3,a4,1
   12388:	00371713          	slli	a4,a4,0x3
   1238c:	00d7a423          	sw	a3,8(a5)
   12390:	00e787b3          	add	a5,a5,a4
   12394:	00b7b823          	sd	a1,16(a5)
   12398:	00000513          	li	a0,0
   1239c:	00008067          	ret
   123a0:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   123a4:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   123a8:	fa1ff06f          	j	12348 <__register_exitproc+0x8>
   123ac:	3147a683          	lw	a3,788(a5)
   123b0:	00000513          	li	a0,0
   123b4:	00d66633          	or	a2,a2,a3
   123b8:	0017069b          	addiw	a3,a4,1
   123bc:	00371713          	slli	a4,a4,0x3
   123c0:	30c7aa23          	sw	a2,788(a5)
   123c4:	00d7a423          	sw	a3,8(a5)
   123c8:	00e787b3          	add	a5,a5,a4
   123cc:	00b7b823          	sd	a1,16(a5)
   123d0:	00008067          	ret
   123d4:	fff00513          	li	a0,-1
   123d8:	00008067          	ret

00000000000123dc <_close>:
   123dc:	03900893          	li	a7,57
   123e0:	00000073          	ecall
   123e4:	00054663          	bltz	a0,123f0 <_close+0x14>
   123e8:	0005051b          	sext.w	a0,a0
   123ec:	00008067          	ret
   123f0:	fe010113          	addi	sp,sp,-32
   123f4:	00113c23          	sd	ra,24(sp)
   123f8:	00a13423          	sd	a0,8(sp)
   123fc:	188000ef          	jal	12584 <__errno>
   12400:	00813783          	ld	a5,8(sp)
   12404:	01813083          	ld	ra,24(sp)
   12408:	40f007bb          	negw	a5,a5
   1240c:	00f52023          	sw	a5,0(a0)
   12410:	fff00513          	li	a0,-1
   12414:	02010113          	addi	sp,sp,32
   12418:	00008067          	ret

000000000001241c <_exit>:
   1241c:	05d00893          	li	a7,93
   12420:	00000073          	ecall
   12424:	00054463          	bltz	a0,1242c <_exit+0x10>
   12428:	0000006f          	j	12428 <_exit+0xc>
   1242c:	fe010113          	addi	sp,sp,-32
   12430:	00113c23          	sd	ra,24(sp)
   12434:	00a13423          	sd	a0,8(sp)
   12438:	14c000ef          	jal	12584 <__errno>
   1243c:	00813783          	ld	a5,8(sp)
   12440:	40f007bb          	negw	a5,a5
   12444:	00f52023          	sw	a5,0(a0)
   12448:	0000006f          	j	12448 <_exit+0x2c>

000000000001244c <_lseek>:
   1244c:	03e00893          	li	a7,62
   12450:	00000073          	ecall
   12454:	00054463          	bltz	a0,1245c <_lseek+0x10>
   12458:	00008067          	ret
   1245c:	fe010113          	addi	sp,sp,-32
   12460:	00113c23          	sd	ra,24(sp)
   12464:	00a13423          	sd	a0,8(sp)
   12468:	11c000ef          	jal	12584 <__errno>
   1246c:	00813783          	ld	a5,8(sp)
   12470:	01813083          	ld	ra,24(sp)
   12474:	40f007bb          	negw	a5,a5
   12478:	00f52023          	sw	a5,0(a0)
   1247c:	fff00793          	li	a5,-1
   12480:	00078513          	mv	a0,a5
   12484:	02010113          	addi	sp,sp,32
   12488:	00008067          	ret

000000000001248c <_read>:
   1248c:	03f00893          	li	a7,63
   12490:	00000073          	ecall
   12494:	00054463          	bltz	a0,1249c <_read+0x10>
   12498:	00008067          	ret
   1249c:	fe010113          	addi	sp,sp,-32
   124a0:	00113c23          	sd	ra,24(sp)
   124a4:	00a13423          	sd	a0,8(sp)
   124a8:	0dc000ef          	jal	12584 <__errno>
   124ac:	00813783          	ld	a5,8(sp)
   124b0:	01813083          	ld	ra,24(sp)
   124b4:	40f007bb          	negw	a5,a5
   124b8:	00f52023          	sw	a5,0(a0)
   124bc:	fff00793          	li	a5,-1
   124c0:	00078513          	mv	a0,a5
   124c4:	02010113          	addi	sp,sp,32
   124c8:	00008067          	ret

00000000000124cc <_sbrk>:
   124cc:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   124d0:	ff010113          	addi	sp,sp,-16
   124d4:	00113423          	sd	ra,8(sp)
   124d8:	00050713          	mv	a4,a0
   124dc:	02079063          	bnez	a5,124fc <_sbrk+0x30>
   124e0:	0d600893          	li	a7,214
   124e4:	00000513          	li	a0,0
   124e8:	00000073          	ecall
   124ec:	fff00793          	li	a5,-1
   124f0:	02f50c63          	beq	a0,a5,12528 <_sbrk+0x5c>
   124f4:	00050793          	mv	a5,a0
   124f8:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   124fc:	00f70533          	add	a0,a4,a5
   12500:	0d600893          	li	a7,214
   12504:	00000073          	ecall
   12508:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1250c:	00f70733          	add	a4,a4,a5
   12510:	00e51c63          	bne	a0,a4,12528 <_sbrk+0x5c>
   12514:	00813083          	ld	ra,8(sp)
   12518:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1251c:	00078513          	mv	a0,a5
   12520:	01010113          	addi	sp,sp,16
   12524:	00008067          	ret
   12528:	05c000ef          	jal	12584 <__errno>
   1252c:	00813083          	ld	ra,8(sp)
   12530:	00c00793          	li	a5,12
   12534:	00f52023          	sw	a5,0(a0)
   12538:	fff00513          	li	a0,-1
   1253c:	01010113          	addi	sp,sp,16
   12540:	00008067          	ret

0000000000012544 <_write>:
   12544:	04000893          	li	a7,64
   12548:	00000073          	ecall
   1254c:	00054463          	bltz	a0,12554 <_write+0x10>
   12550:	00008067          	ret
   12554:	fe010113          	addi	sp,sp,-32
   12558:	00113c23          	sd	ra,24(sp)
   1255c:	00a13423          	sd	a0,8(sp)
   12560:	024000ef          	jal	12584 <__errno>
   12564:	00813783          	ld	a5,8(sp)
   12568:	01813083          	ld	ra,24(sp)
   1256c:	40f007bb          	negw	a5,a5
   12570:	00f52023          	sw	a5,0(a0)
   12574:	fff00793          	li	a5,-1
   12578:	00078513          	mv	a0,a5
   1257c:	02010113          	addi	sp,sp,32
   12580:	00008067          	ret

0000000000012584 <__errno>:
   12584:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12588:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012590 <__EH_FRAME_BEGIN__>:
   12590:	0000                	.insn	2, 0x0000
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
  10:	0524                	.insn	2, 0x0524
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
  40:	0548                	.insn	2, 0x0548
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
  10:	2400                	.insn	2, 0x2400
  12:	0105                	.insn	2, 0x0105
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	2400                	.insn	2, 0x2400
  1a:	0000                	.insn	2, 0x0000
  1c:	0000                	.insn	2, 0x0000
  1e:	00000033          	add	zero,zero,zero
  22:	0095                	.insn	2, 0x0095
  24:	0000                	.insn	2, 0x0000
  26:	8001                	.insn	2, 0x8001
  28:	a102                	.insn	2, 0xa102
  2a:	0000                	.insn	2, 0x0000
  2c:	3700                	.insn	2, 0x3700
  2e:	0524                	.insn	2, 0x0524
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
  4a:	0548                	.insn	2, 0x0548
  4c:	0001                	.insn	2, 0x0001
  4e:	0000                	.insn	2, 0x0000
  50:	0000                	.insn	2, 0x0000
  52:	0280                	.insn	2, 0x0280
  54:	00aa                	.insn	2, 0x00aa
  56:	0000                	.insn	2, 0x0000
  58:	00000033          	add	zero,zero,zero
  5c:	0095                	.insn	2, 0x0095
  5e:	0000                	.insn	2, 0x0000
  60:	8001                	.insn	2, 0x8001
  62:	da02                	.insn	2, 0xda02
  64:	0000                	.insn	2, 0x0000
  66:	ab00                	.insn	2, 0xab00
  68:	4801                	.insn	2, 0x4801
  6a:	0105                	.insn	2, 0x0105
  6c:	0000                	.insn	2, 0x0000
  6e:	0000                	.insn	2, 0x0000
  70:	1800                	.insn	2, 0x1800
  72:	e402                	.insn	2, 0xe402
  74:	0000                	.insn	2, 0x0000
  76:	ab00                	.insn	2, 0xab00
  78:	9001                	.insn	2, 0x9001
  7a:	0105                	.insn	2, 0x0105
  7c:	0000                	.insn	2, 0x0000
  7e:	0000                	.insn	2, 0x0000
  80:	4800                	.insn	2, 0x4800
  82:	f702                	.insn	2, 0xf702
  84:	0000                	.insn	2, 0x0000
  86:	ab00                	.insn	2, 0xab00
  88:	6001                	.insn	2, 0x6001
  8a:	0105                	.insn	2, 0x0105
  8c:	0000                	.insn	2, 0x0000
  8e:	0000                	.insn	2, 0x0000
  90:	2000                	.insn	2, 0x2000
  92:	0102                	.insn	2, 0x0102
  94:	0001                	.insn	2, 0x0001
  96:	ab00                	.insn	2, 0xab00
  98:	0c01                	.insn	2, 0x0c01
  9a:	0106                	.insn	2, 0x0106
  9c:	0000                	.insn	2, 0x0000
  9e:	0000                	.insn	2, 0x0000
  a0:	3000                	.insn	2, 0x3000
  a2:	0a02                	.insn	2, 0x0a02
  a4:	0001                	.insn	2, 0x0001
  a6:	ab00                	.insn	2, 0xab00
  a8:	8001                	.insn	2, 0x8001
  aa:	0105                	.insn	2, 0x0105
  ac:	0000                	.insn	2, 0x0000
  ae:	0000                	.insn	2, 0x0000
  b0:	c800                	.insn	2, 0xc800
  b2:	0201                	.insn	2, 0x0201
  b4:	00000113          	li	sp,0
  b8:	058801ab          	.insn	4, 0x058801ab
  bc:	0001                	.insn	2, 0x0001
  be:	0000                	.insn	2, 0x0000
  c0:	0000                	.insn	2, 0x0000
  c2:	0184                	.insn	2, 0x0184
  c4:	ed02                	.insn	2, 0xed02
  c6:	0000                	.insn	2, 0x0000
  c8:	ab00                	.insn	2, 0xab00
  ca:	9001                	.insn	2, 0x9001
  cc:	0105                	.insn	2, 0x0105
  ce:	0000                	.insn	2, 0x0000
  d0:	0000                	.insn	2, 0x0000
  d2:	4800                	.insn	2, 0x4800
  d4:	1c02                	.insn	2, 0x1c02
  d6:	0001                	.insn	2, 0x0001
  d8:	ab00                	.insn	2, 0xab00
  da:	d801                	.insn	2, 0xd801
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
  26:	0062                	.insn	2, 0x0062
  28:	0000                	.insn	2, 0x0000
  2a:	0102                	.insn	2, 0x0102
  2c:	021f 020f 008c      	.insn	6, 0x008c020f021f
  32:	0000                	.insn	2, 0x0000
  34:	8c01                	.insn	2, 0x8c01
  36:	0000                	.insn	2, 0x0000
  38:	0100                	.insn	2, 0x0100
  3a:	0900                	.insn	2, 0x0900
  3c:	2402                	.insn	2, 0x2402
  3e:	0105                	.insn	2, 0x0105
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
  a4:	0062                	.insn	2, 0x0062
  a6:	0000                	.insn	2, 0x0000
  a8:	0102                	.insn	2, 0x0102
  aa:	021f 020f 0095      	.insn	6, 0x0095020f021f
  b0:	0000                	.insn	2, 0x0000
  b2:	9501                	.insn	2, 0x9501
  b4:	0000                	.insn	2, 0x0000
  b6:	0100                	.insn	2, 0x0100
  b8:	0900                	.insn	2, 0x0900
  ba:	4802                	.insn	2, 0x4802
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
  38:	3261632f          	.insn	4, 0x3261632f
  3c:	7369722f          	.insn	4, 0x7369722f
  40:	672d7663          	bgeu	s10,s2,6ac <exit-0xfa74>
  44:	756e                	.insn	2, 0x756e
  46:	742d                	.insn	2, 0x742d
  48:	636c6f6f          	jal	t5,c667e <__BSS_END__+0xb2706>
  4c:	6168                	.insn	2, 0x6168
  4e:	6e69                	.insn	2, 0x6e69
  50:	6975622f          	.insn	4, 0x6975622f
  54:	646c                	.insn	2, 0x646c
  56:	6975622f          	.insn	4, 0x6975622f
  5a:	646c                	.insn	2, 0x646c
  5c:	672d                	.insn	2, 0x672d
  5e:	6e2d6363          	bltu	s10,sp,744 <exit-0xf9dc>
  62:	7765                	.insn	2, 0x7765
  64:	696c                	.insn	2, 0x696c
  66:	2d62                	.insn	2, 0x2d62
  68:	67617473          	.insn	4, 0x67617473
  6c:	3265                	.insn	2, 0x3265
  6e:	7369722f          	.insn	4, 0x7369722f
  72:	34367663          	bgeu	a2,gp,3be <exit-0xfd62>
  76:	752d                	.insn	2, 0x752d
  78:	6b6e                	.insn	2, 0x6b6e
  7a:	6f6e                	.insn	2, 0x6f6e
  7c:	652d6e77          	.insn	4, 0x652d6e77
  80:	666c                	.insn	2, 0x666c
  82:	3676722f          	.insn	4, 0x3676722f
  86:	6934                	.insn	2, 0x6934
  88:	36706c2f          	.insn	4, 0x36706c2f
  8c:	2f34                	.insn	2, 0x2f34
  8e:	696c                	.insn	2, 0x696c
  90:	6762                	.insn	2, 0x6762
  92:	47006363          	bltu	zero,a6,4f8 <exit-0xfc28>
  96:	554e                	.insn	2, 0x554e
  98:	4120                	.insn	2, 0x4120
  9a:	2e322053          	.insn	4, 0x2e322053
  9e:	3534                	.insn	2, 0x3534
  a0:	5f00                	.insn	2, 0x5f00
  a2:	6d5f 6c75 6964      	.insn	6, 0x69646c756d5f
  a8:	2e2e0033          	.insn	4, 0x2e2e0033
  ac:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  b0:	2e2e                	.insn	2, 0x2e2e
  b2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  b6:	2e2e                	.insn	2, 0x2e2e
  b8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  bc:	2f636367          	.insn	4, 0x2f636367
  c0:	696c                	.insn	2, 0x696c
  c2:	6762                	.insn	2, 0x6762
  c4:	632f6363          	bltu	t5,s2,6ea <exit-0xfa36>
  c8:	69666e6f          	jal	t3,6675e <__BSS_END__+0x527e6>
  cc:	69722f67          	.insn	4, 0x69722f67
  d0:	2f766373          	.insn	4, 0x2f766373
  d4:	6964                	.insn	2, 0x6964
  d6:	2e76                	.insn	2, 0x2e76
  d8:	5f5f0053          	.insn	4, 0x5f5f0053
  dc:	6475                	.insn	2, 0x6475
  de:	7669                	.insn	2, 0x7669
  e0:	00336973          	.insn	4, 0x00336973
  e4:	5f5f 6968 6464      	.insn	6, 0x646469685f5f
  ea:	6e65                	.insn	2, 0x6e65
  ec:	5f5f 755f 6964      	.insn	6, 0x6964755f5f5f
  f2:	6476                	.insn	2, 0x6476
  f4:	3369                	.insn	2, 0x3369
  f6:	5f00                	.insn	2, 0x5f00
  f8:	755f 6f6d 7364      	.insn	6, 0x73646f6d755f
  fe:	3369                	.insn	2, 0x3369
 100:	5f00                	.insn	2, 0x5f00
 102:	6d5f 646f 6964      	.insn	6, 0x6964646f6d5f
 108:	5f5f0033          	.insn	4, 0x5f5f0033
 10c:	6964                	.insn	2, 0x6964
 10e:	7376                	.insn	2, 0x7376
 110:	3369                	.insn	2, 0x3369
 112:	5f00                	.insn	2, 0x5f00
 114:	645f 7669 6964      	.insn	6, 0x69647669645f
 11a:	5f5f0033          	.insn	4, 0x5f5f0033
 11e:	6d75                	.insn	2, 0x6d75
 120:	6964646f          	jal	s0,467b6 <__BSS_END__+0x3283e>
 124:	0033                	.short	0x0033

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6d6f682f          	.insn	4, 0x6d6f682f
   4:	2f65                	.insn	2, 0x2f65
   6:	2f326163          	bltu	tp,s3,2e8 <exit-0xfe38>
   a:	6972                	.insn	2, 0x6972
   c:	2d766373          	.insn	4, 0x2d766373
  10:	2d756e67          	.insn	4, 0x2d756e67
  14:	6f74                	.insn	2, 0x6f74
  16:	68636c6f          	jal	s8,3669c <__BSS_END__+0x22724>
  1a:	6961                	.insn	2, 0x6961
  1c:	2f6e                	.insn	2, 0x2f6e
  1e:	7562                	.insn	2, 0x7562
  20:	6c69                	.insn	2, 0x6c69
  22:	2f64                	.insn	2, 0x2f64
  24:	7562                	.insn	2, 0x7562
  26:	6c69                	.insn	2, 0x6c69
  28:	2d64                	.insn	2, 0x2d64
  2a:	2d636367          	.insn	4, 0x2d636367
  2e:	656e                	.insn	2, 0x656e
  30:	62696c77          	.insn	4, 0x62696c77
  34:	732d                	.insn	2, 0x732d
  36:	6174                	.insn	2, 0x6174
  38:	2f326567          	.insn	4, 0x2f326567
  3c:	6972                	.insn	2, 0x6972
  3e:	36766373          	.insn	4, 0x36766373
  42:	2d34                	.insn	2, 0x2d34
  44:	6e75                	.insn	2, 0x6e75
  46:	776f6e6b          	.insn	4, 0x776f6e6b
  4a:	2d6e                	.insn	2, 0x2d6e
  4c:	6c65                	.insn	2, 0x6c65
  4e:	2f66                	.insn	2, 0x2f66
  50:	7672                	.insn	2, 0x7672
  52:	3436                	.insn	2, 0x3436
  54:	2f69                	.insn	2, 0x2f69
  56:	706c                	.insn	2, 0x706c
  58:	3436                	.insn	2, 0x3436
  5a:	62696c2f          	.insn	4, 0x62696c2f
  5e:	00636367          	.insn	4, 0x00636367
  62:	2e2e                	.insn	2, 0x2e2e
  64:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  68:	2e2e                	.insn	2, 0x2e2e
  6a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  6e:	2e2e                	.insn	2, 0x2e2e
  70:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  74:	2f636367          	.insn	4, 0x2f636367
  78:	696c                	.insn	2, 0x696c
  7a:	6762                	.insn	2, 0x6762
  7c:	632f6363          	bltu	t5,s2,6a2 <exit-0xfa7e>
  80:	69666e6f          	jal	t3,66716 <__BSS_END__+0x5279e>
  84:	69722f67          	.insn	4, 0x69722f67
  88:	00766373          	.insn	4, 0x00766373
  8c:	756d                	.insn	2, 0x756d
  8e:	646c                	.insn	2, 0x646c
  90:	3369                	.insn	2, 0x3369
  92:	532e                	.insn	2, 0x532e
  94:	6400                	.insn	2, 0x6400
  96:	7669                	.insn	2, 0x7669
  98:	532e                	.insn	2, 0x532e
	...

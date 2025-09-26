
test/build/with-syscall/test_mulh.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	5f1000ef          	jal	10f24 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	234020ef          	jal	1237c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	24450513          	addi	a0,a0,580 # 12244 <__libc_fini_array>
   1015c:	7010006f          	j	1105c <atexit>
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
   10184:	4c5000ef          	jal	10e48 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	ed450513          	addi	a0,a0,-300 # 1105c <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	0b050513          	addi	a0,a0,176 # 12244 <__libc_fini_array>
   1019c:	6c1000ef          	jal	1105c <atexit>
   101a0:	415000ef          	jal	10db4 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	124000ef          	jal	102d4 <main>
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
   101d8:	56050513          	addi	a0,a0,1376 # 12560 <__EH_FRAME_BEGIN__>
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
   1020c:	56050513          	addi	a0,a0,1376 # 12560 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <do_mulh>:
   1021c:	fc010113          	addi	sp,sp,-64
   10220:	02113c23          	sd	ra,56(sp)
   10224:	02813823          	sd	s0,48(sp)
   10228:	04010413          	addi	s0,sp,64
   1022c:	fca43c23          	sd	a0,-40(s0)
   10230:	fcb43823          	sd	a1,-48(s0)
   10234:	fcc43423          	sd	a2,-56(s0)
   10238:	fd843783          	ld	a5,-40(s0)
   1023c:	fd043703          	ld	a4,-48(s0)
   10240:	02e797b3          	mulh	a5,a5,a4
   10244:	fef43423          	sd	a5,-24(s0)
   10248:	000127b7          	lui	a5,0x12
   1024c:	4f078513          	addi	a0,a5,1264 # 124f0 <__errno+0xc>
   10250:	264000ef          	jal	104b4 <print_s>
   10254:	fd843503          	ld	a0,-40(s0)
   10258:	224000ef          	jal	1047c <print_ll>
   1025c:	000127b7          	lui	a5,0x12
   10260:	4f878513          	addi	a0,a5,1272 # 124f8 <__errno+0x14>
   10264:	250000ef          	jal	104b4 <print_s>
   10268:	fd043503          	ld	a0,-48(s0)
   1026c:	210000ef          	jal	1047c <print_ll>
   10270:	000127b7          	lui	a5,0x12
   10274:	50078513          	addi	a0,a5,1280 # 12500 <__errno+0x1c>
   10278:	23c000ef          	jal	104b4 <print_s>
   1027c:	fe843503          	ld	a0,-24(s0)
   10280:	1fc000ef          	jal	1047c <print_ll>
   10284:	fe843703          	ld	a4,-24(s0)
   10288:	fc843783          	ld	a5,-56(s0)
   1028c:	00f71a63          	bne	a4,a5,102a0 <do_mulh+0x84>
   10290:	000127b7          	lui	a5,0x12
   10294:	50878513          	addi	a0,a5,1288 # 12508 <__errno+0x24>
   10298:	21c000ef          	jal	104b4 <print_s>
   1029c:	0240006f          	j	102c0 <do_mulh+0xa4>
   102a0:	000127b7          	lui	a5,0x12
   102a4:	51878513          	addi	a0,a5,1304 # 12518 <__errno+0x34>
   102a8:	20c000ef          	jal	104b4 <print_s>
   102ac:	fc843503          	ld	a0,-56(s0)
   102b0:	1cc000ef          	jal	1047c <print_ll>
   102b4:	000127b7          	lui	a5,0x12
   102b8:	53078513          	addi	a0,a5,1328 # 12530 <__errno+0x4c>
   102bc:	1f8000ef          	jal	104b4 <print_s>
   102c0:	00000013          	nop
   102c4:	03813083          	ld	ra,56(sp)
   102c8:	03013403          	ld	s0,48(sp)
   102cc:	04010113          	addi	sp,sp,64
   102d0:	00008067          	ret

00000000000102d4 <main>:
   102d4:	ff010113          	addi	sp,sp,-16
   102d8:	00113423          	sd	ra,8(sp)
   102dc:	00813023          	sd	s0,0(sp)
   102e0:	01010413          	addi	s0,sp,16
   102e4:	000127b7          	lui	a5,0x12
   102e8:	53878513          	addi	a0,a5,1336 # 12538 <__errno+0x54>
   102ec:	1c8000ef          	jal	104b4 <print_s>
   102f0:	00000613          	li	a2,0
   102f4:	00300593          	li	a1,3
   102f8:	00200513          	li	a0,2
   102fc:	f21ff0ef          	jal	1021c <do_mulh>
   10300:	00000613          	li	a2,0
   10304:	ffd00593          	li	a1,-3
   10308:	ffe00513          	li	a0,-2
   1030c:	f11ff0ef          	jal	1021c <do_mulh>
   10310:	fff00613          	li	a2,-1
   10314:	ffb00593          	li	a1,-5
   10318:	00400513          	li	a0,4
   1031c:	f01ff0ef          	jal	1021c <do_mulh>
   10320:	00000613          	li	a2,0
   10324:	fff00793          	li	a5,-1
   10328:	0017d593          	srli	a1,a5,0x1
   1032c:	00000513          	li	a0,0
   10330:	eedff0ef          	jal	1021c <do_mulh>
   10334:	fff00793          	li	a5,-1
   10338:	0027d613          	srli	a2,a5,0x2
   1033c:	fff00793          	li	a5,-1
   10340:	0017d593          	srli	a1,a5,0x1
   10344:	fff00793          	li	a5,-1
   10348:	0017d513          	srli	a0,a5,0x1
   1034c:	ed1ff0ef          	jal	1021c <do_mulh>
   10350:	00100793          	li	a5,1
   10354:	03e79613          	slli	a2,a5,0x3e
   10358:	fff00793          	li	a5,-1
   1035c:	03f79593          	slli	a1,a5,0x3f
   10360:	fff00793          	li	a5,-1
   10364:	03f79513          	slli	a0,a5,0x3f
   10368:	eb5ff0ef          	jal	1021c <do_mulh>
   1036c:	fff00793          	li	a5,-1
   10370:	03e79613          	slli	a2,a5,0x3e
   10374:	fff00793          	li	a5,-1
   10378:	0017d593          	srli	a1,a5,0x1
   1037c:	fff00793          	li	a5,-1
   10380:	03f79513          	slli	a0,a5,0x3f
   10384:	e99ff0ef          	jal	1021c <do_mulh>
   10388:	00000613          	li	a2,0
   1038c:	00200593          	li	a1,2
   10390:	fff00793          	li	a5,-1
   10394:	0017d513          	srli	a0,a5,0x1
   10398:	e85ff0ef          	jal	1021c <do_mulh>
   1039c:	00000613          	li	a2,0
   103a0:	fff00793          	li	a5,-1
   103a4:	0207d593          	srli	a1,a5,0x20
   103a8:	fff00793          	li	a5,-1
   103ac:	0207d513          	srli	a0,a5,0x20
   103b0:	e6dff0ef          	jal	1021c <do_mulh>
   103b4:	00000613          	li	a2,0
   103b8:	00100793          	li	a5,1
   103bc:	01f79593          	slli	a1,a5,0x1f
   103c0:	00100793          	li	a5,1
   103c4:	01f79513          	slli	a0,a5,0x1f
   103c8:	e55ff0ef          	jal	1021c <do_mulh>
   103cc:	00000613          	li	a2,0
   103d0:	fff00593          	li	a1,-1
   103d4:	fff00513          	li	a0,-1
   103d8:	e45ff0ef          	jal	1021c <do_mulh>
   103dc:	000127b7          	lui	a5,0x12
   103e0:	5487b683          	ld	a3,1352(a5) # 12548 <__errno+0x64>
   103e4:	000127b7          	lui	a5,0x12
   103e8:	5507b703          	ld	a4,1360(a5) # 12550 <__errno+0x6c>
   103ec:	000127b7          	lui	a5,0x12
   103f0:	5587b783          	ld	a5,1368(a5) # 12558 <__errno+0x74>
   103f4:	00068613          	mv	a2,a3
   103f8:	00070593          	mv	a1,a4
   103fc:	00078513          	mv	a0,a5
   10400:	e1dff0ef          	jal	1021c <do_mulh>
   10404:	fff00613          	li	a2,-1
   10408:	fff00593          	li	a1,-1
   1040c:	fff00793          	li	a5,-1
   10410:	0017d513          	srli	a0,a5,0x1
   10414:	e09ff0ef          	jal	1021c <do_mulh>
   10418:	00000613          	li	a2,0
   1041c:	fff00593          	li	a1,-1
   10420:	fff00793          	li	a5,-1
   10424:	03f79513          	slli	a0,a5,0x3f
   10428:	df5ff0ef          	jal	1021c <do_mulh>
   1042c:	0ec000ef          	jal	10518 <exit_proc>
   10430:	00000793          	li	a5,0
   10434:	00078513          	mv	a0,a5
   10438:	00813083          	ld	ra,8(sp)
   1043c:	00013403          	ld	s0,0(sp)
   10440:	01010113          	addi	sp,sp,16
   10444:	00008067          	ret

0000000000010448 <print_d>:
   10448:	fe010113          	addi	sp,sp,-32
   1044c:	00113c23          	sd	ra,24(sp)
   10450:	00813823          	sd	s0,16(sp)
   10454:	02010413          	addi	s0,sp,32
   10458:	00050793          	mv	a5,a0
   1045c:	fef42623          	sw	a5,-20(s0)
   10460:	00200893          	li	a7,2
   10464:	00000073          	ecall
   10468:	00000013          	nop
   1046c:	01813083          	ld	ra,24(sp)
   10470:	01013403          	ld	s0,16(sp)
   10474:	02010113          	addi	sp,sp,32
   10478:	00008067          	ret

000000000001047c <print_ll>:
   1047c:	fe010113          	addi	sp,sp,-32
   10480:	00113c23          	sd	ra,24(sp)
   10484:	00813823          	sd	s0,16(sp)
   10488:	02010413          	addi	s0,sp,32
   1048c:	fea43423          	sd	a0,-24(s0)
   10490:	fe843783          	ld	a5,-24(s0)
   10494:	00078513          	mv	a0,a5
   10498:	00600893          	li	a7,6
   1049c:	00000073          	ecall
   104a0:	00000013          	nop
   104a4:	01813083          	ld	ra,24(sp)
   104a8:	01013403          	ld	s0,16(sp)
   104ac:	02010113          	addi	sp,sp,32
   104b0:	00008067          	ret

00000000000104b4 <print_s>:
   104b4:	fe010113          	addi	sp,sp,-32
   104b8:	00113c23          	sd	ra,24(sp)
   104bc:	00813823          	sd	s0,16(sp)
   104c0:	02010413          	addi	s0,sp,32
   104c4:	fea43423          	sd	a0,-24(s0)
   104c8:	00000893          	li	a7,0
   104cc:	00000073          	ecall
   104d0:	00000013          	nop
   104d4:	01813083          	ld	ra,24(sp)
   104d8:	01013403          	ld	s0,16(sp)
   104dc:	02010113          	addi	sp,sp,32
   104e0:	00008067          	ret

00000000000104e4 <print_c>:
   104e4:	fe010113          	addi	sp,sp,-32
   104e8:	00113c23          	sd	ra,24(sp)
   104ec:	00813823          	sd	s0,16(sp)
   104f0:	02010413          	addi	s0,sp,32
   104f4:	00050793          	mv	a5,a0
   104f8:	fef407a3          	sb	a5,-17(s0)
   104fc:	00100893          	li	a7,1
   10500:	00000073          	ecall
   10504:	00000013          	nop
   10508:	01813083          	ld	ra,24(sp)
   1050c:	01013403          	ld	s0,16(sp)
   10510:	02010113          	addi	sp,sp,32
   10514:	00008067          	ret

0000000000010518 <exit_proc>:
   10518:	ff010113          	addi	sp,sp,-16
   1051c:	00113423          	sd	ra,8(sp)
   10520:	00813023          	sd	s0,0(sp)
   10524:	01010413          	addi	s0,sp,16
   10528:	00300893          	li	a7,3
   1052c:	00000073          	ecall
   10530:	00000013          	nop
   10534:	00813083          	ld	ra,8(sp)
   10538:	00013403          	ld	s0,0(sp)
   1053c:	01010113          	addi	sp,sp,16
   10540:	00008067          	ret

0000000000010544 <read_char>:
   10544:	fe010113          	addi	sp,sp,-32
   10548:	00113c23          	sd	ra,24(sp)
   1054c:	00813823          	sd	s0,16(sp)
   10550:	02010413          	addi	s0,sp,32
   10554:	00400893          	li	a7,4
   10558:	00000073          	ecall
   1055c:	00050793          	mv	a5,a0
   10560:	fef407a3          	sb	a5,-17(s0)
   10564:	fef44783          	lbu	a5,-17(s0)
   10568:	00078513          	mv	a0,a5
   1056c:	01813083          	ld	ra,24(sp)
   10570:	01013403          	ld	s0,16(sp)
   10574:	02010113          	addi	sp,sp,32
   10578:	00008067          	ret

000000000001057c <read_num>:
   1057c:	fe010113          	addi	sp,sp,-32
   10580:	00113c23          	sd	ra,24(sp)
   10584:	00813823          	sd	s0,16(sp)
   10588:	02010413          	addi	s0,sp,32
   1058c:	00500893          	li	a7,5
   10590:	00000073          	ecall
   10594:	00050793          	mv	a5,a0
   10598:	fef43423          	sd	a5,-24(s0)
   1059c:	fe843783          	ld	a5,-24(s0)
   105a0:	00078513          	mv	a0,a5
   105a4:	01813083          	ld	ra,24(sp)
   105a8:	01013403          	ld	s0,16(sp)
   105ac:	02010113          	addi	sp,sp,32
   105b0:	00008067          	ret

00000000000105b4 <__fp_lock>:
   105b4:	00000513          	li	a0,0
   105b8:	00008067          	ret

00000000000105bc <stdio_exit_handler>:
   105bc:	00013637          	lui	a2,0x13
   105c0:	000125b7          	lui	a1,0x12
   105c4:	00013537          	lui	a0,0x13
   105c8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105cc:	d8458593          	addi	a1,a1,-636 # 11d84 <_fclose_r>
   105d0:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   105d4:	3440006f          	j	10918 <_fwalk_sglue>

00000000000105d8 <cleanup_stdio>:
   105d8:	00853583          	ld	a1,8(a0)
   105dc:	ff010113          	addi	sp,sp,-16
   105e0:	00813023          	sd	s0,0(sp)
   105e4:	00113423          	sd	ra,8(sp)
   105e8:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   105ec:	00050413          	mv	s0,a0
   105f0:	00f58463          	beq	a1,a5,105f8 <cleanup_stdio+0x20>
   105f4:	790010ef          	jal	11d84 <_fclose_r>
   105f8:	01043583          	ld	a1,16(s0)
   105fc:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10600:	00f58663          	beq	a1,a5,1060c <cleanup_stdio+0x34>
   10604:	00040513          	mv	a0,s0
   10608:	77c010ef          	jal	11d84 <_fclose_r>
   1060c:	01843583          	ld	a1,24(s0)
   10610:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10614:	00f58c63          	beq	a1,a5,1062c <cleanup_stdio+0x54>
   10618:	00040513          	mv	a0,s0
   1061c:	00013403          	ld	s0,0(sp)
   10620:	00813083          	ld	ra,8(sp)
   10624:	01010113          	addi	sp,sp,16
   10628:	75c0106f          	j	11d84 <_fclose_r>
   1062c:	00813083          	ld	ra,8(sp)
   10630:	00013403          	ld	s0,0(sp)
   10634:	01010113          	addi	sp,sp,16
   10638:	00008067          	ret

000000000001063c <__fp_unlock>:
   1063c:	00000513          	li	a0,0
   10640:	00008067          	ret

0000000000010644 <global_stdio_init.part.0>:
   10644:	fd010113          	addi	sp,sp,-48
   10648:	000107b7          	lui	a5,0x10
   1064c:	02813023          	sd	s0,32(sp)
   10650:	5bc78793          	addi	a5,a5,1468 # 105bc <stdio_exit_handler>
   10654:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10658:	02113423          	sd	ra,40(sp)
   1065c:	00913c23          	sd	s1,24(sp)
   10660:	01213823          	sd	s2,16(sp)
   10664:	01313423          	sd	s3,8(sp)
   10668:	01413023          	sd	s4,0(sp)
   1066c:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10670:	00800613          	li	a2,8
   10674:	00400793          	li	a5,4
   10678:	00000593          	li	a1,0
   1067c:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10680:	00f42823          	sw	a5,16(s0)
   10684:	00043023          	sd	zero,0(s0)
   10688:	00043423          	sd	zero,8(s0)
   1068c:	0a042623          	sw	zero,172(s0)
   10690:	00043c23          	sd	zero,24(s0)
   10694:	02042023          	sw	zero,32(s0)
   10698:	02042423          	sw	zero,40(s0)
   1069c:	7ac000ef          	jal	10e48 <memset>
   106a0:	00011a37          	lui	s4,0x11
   106a4:	000119b7          	lui	s3,0x11
   106a8:	00011937          	lui	s2,0x11
   106ac:	000114b7          	lui	s1,0x11
   106b0:	000107b7          	lui	a5,0x10
   106b4:	9e4a0a13          	addi	s4,s4,-1564 # 109e4 <__sread>
   106b8:	a4898993          	addi	s3,s3,-1464 # 10a48 <__swrite>
   106bc:	ad090913          	addi	s2,s2,-1328 # 10ad0 <__sseek>
   106c0:	b3448493          	addi	s1,s1,-1228 # 10b34 <__sclose>
   106c4:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   106c8:	00800613          	li	a2,8
   106cc:	00000593          	li	a1,0
   106d0:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   106d4:	0cf42023          	sw	a5,192(s0)
   106d8:	03443c23          	sd	s4,56(s0)
   106dc:	05343023          	sd	s3,64(s0)
   106e0:	05243423          	sd	s2,72(s0)
   106e4:	04943823          	sd	s1,80(s0)
   106e8:	02843823          	sd	s0,48(s0)
   106ec:	0a043823          	sd	zero,176(s0)
   106f0:	0a043c23          	sd	zero,184(s0)
   106f4:	14042e23          	sw	zero,348(s0)
   106f8:	0c043423          	sd	zero,200(s0)
   106fc:	0c042823          	sw	zero,208(s0)
   10700:	0c042c23          	sw	zero,216(s0)
   10704:	744000ef          	jal	10e48 <memset>
   10708:	000207b7          	lui	a5,0x20
   1070c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10710:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10714:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   10718:	00800613          	li	a2,8
   1071c:	00000593          	li	a1,0
   10720:	0f443423          	sd	s4,232(s0)
   10724:	0f343823          	sd	s3,240(s0)
   10728:	0f243c23          	sd	s2,248(s0)
   1072c:	10943023          	sd	s1,256(s0)
   10730:	16f42823          	sw	a5,368(s0)
   10734:	16043023          	sd	zero,352(s0)
   10738:	16043423          	sd	zero,360(s0)
   1073c:	20042623          	sw	zero,524(s0)
   10740:	16043c23          	sd	zero,376(s0)
   10744:	18042023          	sw	zero,384(s0)
   10748:	18042423          	sw	zero,392(s0)
   1074c:	0ee43023          	sd	a4,224(s0)
   10750:	6f8000ef          	jal	10e48 <memset>
   10754:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10758:	19443c23          	sd	s4,408(s0)
   1075c:	1b343023          	sd	s3,416(s0)
   10760:	1b243423          	sd	s2,424(s0)
   10764:	1a943823          	sd	s1,432(s0)
   10768:	02813083          	ld	ra,40(sp)
   1076c:	18f43823          	sd	a5,400(s0)
   10770:	02013403          	ld	s0,32(sp)
   10774:	01813483          	ld	s1,24(sp)
   10778:	01013903          	ld	s2,16(sp)
   1077c:	00813983          	ld	s3,8(sp)
   10780:	00013a03          	ld	s4,0(sp)
   10784:	03010113          	addi	sp,sp,48
   10788:	00008067          	ret

000000000001078c <__sfp>:
   1078c:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10790:	fd010113          	addi	sp,sp,-48
   10794:	00913c23          	sd	s1,24(sp)
   10798:	02113423          	sd	ra,40(sp)
   1079c:	02813023          	sd	s0,32(sp)
   107a0:	00050493          	mv	s1,a0
   107a4:	10078063          	beqz	a5,108a4 <__sfp+0x118>
   107a8:	000136b7          	lui	a3,0x13
   107ac:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   107b0:	0b000813          	li	a6,176
   107b4:	0086a703          	lw	a4,8(a3)
   107b8:	08e05463          	blez	a4,10840 <__sfp+0xb4>
   107bc:	02071713          	slli	a4,a4,0x20
   107c0:	02075713          	srli	a4,a4,0x20
   107c4:	03070733          	mul	a4,a4,a6
   107c8:	0106b403          	ld	s0,16(a3)
   107cc:	00e40733          	add	a4,s0,a4
   107d0:	00c0006f          	j	107dc <__sfp+0x50>
   107d4:	0b040413          	addi	s0,s0,176
   107d8:	06e40463          	beq	s0,a4,10840 <__sfp+0xb4>
   107dc:	01041783          	lh	a5,16(s0)
   107e0:	fe079ae3          	bnez	a5,107d4 <__sfp+0x48>
   107e4:	ffff07b7          	lui	a5,0xffff0
   107e8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   107ec:	00f42823          	sw	a5,16(s0)
   107f0:	0a042623          	sw	zero,172(s0)
   107f4:	00043023          	sd	zero,0(s0)
   107f8:	00043423          	sd	zero,8(s0)
   107fc:	00043c23          	sd	zero,24(s0)
   10800:	02042023          	sw	zero,32(s0)
   10804:	02042423          	sw	zero,40(s0)
   10808:	00800613          	li	a2,8
   1080c:	00000593          	li	a1,0
   10810:	0a440513          	addi	a0,s0,164
   10814:	634000ef          	jal	10e48 <memset>
   10818:	04043c23          	sd	zero,88(s0)
   1081c:	06042023          	sw	zero,96(s0)
   10820:	06043c23          	sd	zero,120(s0)
   10824:	08042023          	sw	zero,128(s0)
   10828:	02813083          	ld	ra,40(sp)
   1082c:	00040513          	mv	a0,s0
   10830:	02013403          	ld	s0,32(sp)
   10834:	01813483          	ld	s1,24(sp)
   10838:	03010113          	addi	sp,sp,48
   1083c:	00008067          	ret
   10840:	0006b403          	ld	s0,0(a3)
   10844:	00040663          	beqz	s0,10850 <__sfp+0xc4>
   10848:	00040693          	mv	a3,s0
   1084c:	f69ff06f          	j	107b4 <__sfp+0x28>
   10850:	2d800593          	li	a1,728
   10854:	00048513          	mv	a0,s1
   10858:	00d13423          	sd	a3,8(sp)
   1085c:	43d000ef          	jal	11498 <_malloc_r>
   10860:	00813683          	ld	a3,8(sp)
   10864:	00050413          	mv	s0,a0
   10868:	04050263          	beqz	a0,108ac <__sfp+0x120>
   1086c:	00400793          	li	a5,4
   10870:	00f52423          	sw	a5,8(a0)
   10874:	01850513          	addi	a0,a0,24
   10878:	00043023          	sd	zero,0(s0)
   1087c:	00a43823          	sd	a0,16(s0)
   10880:	2c000613          	li	a2,704
   10884:	00000593          	li	a1,0
   10888:	00d13423          	sd	a3,8(sp)
   1088c:	5bc000ef          	jal	10e48 <memset>
   10890:	00813683          	ld	a3,8(sp)
   10894:	0b000813          	li	a6,176
   10898:	0086b023          	sd	s0,0(a3)
   1089c:	00040693          	mv	a3,s0
   108a0:	f15ff06f          	j	107b4 <__sfp+0x28>
   108a4:	da1ff0ef          	jal	10644 <global_stdio_init.part.0>
   108a8:	f01ff06f          	j	107a8 <__sfp+0x1c>
   108ac:	0006b023          	sd	zero,0(a3)
   108b0:	00c00793          	li	a5,12
   108b4:	00f4a023          	sw	a5,0(s1)
   108b8:	f71ff06f          	j	10828 <__sfp+0x9c>

00000000000108bc <__sinit>:
   108bc:	04853783          	ld	a5,72(a0)
   108c0:	00078463          	beqz	a5,108c8 <__sinit+0xc>
   108c4:	00008067          	ret
   108c8:	000107b7          	lui	a5,0x10
   108cc:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   108d0:	5d878793          	addi	a5,a5,1496 # 105d8 <cleanup_stdio>
   108d4:	04f53423          	sd	a5,72(a0)
   108d8:	fe0716e3          	bnez	a4,108c4 <__sinit+0x8>
   108dc:	d69ff06f          	j	10644 <global_stdio_init.part.0>

00000000000108e0 <__sfp_lock_acquire>:
   108e0:	00008067          	ret

00000000000108e4 <__sfp_lock_release>:
   108e4:	00008067          	ret

00000000000108e8 <__fp_lock_all>:
   108e8:	00013637          	lui	a2,0x13
   108ec:	000105b7          	lui	a1,0x10
   108f0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   108f4:	5b458593          	addi	a1,a1,1460 # 105b4 <__fp_lock>
   108f8:	00000513          	li	a0,0
   108fc:	01c0006f          	j	10918 <_fwalk_sglue>

0000000000010900 <__fp_unlock_all>:
   10900:	00013637          	lui	a2,0x13
   10904:	000105b7          	lui	a1,0x10
   10908:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1090c:	63c58593          	addi	a1,a1,1596 # 1063c <__fp_unlock>
   10910:	00000513          	li	a0,0
   10914:	0040006f          	j	10918 <_fwalk_sglue>

0000000000010918 <_fwalk_sglue>:
   10918:	fb010113          	addi	sp,sp,-80
   1091c:	03213823          	sd	s2,48(sp)
   10920:	03313423          	sd	s3,40(sp)
   10924:	03413023          	sd	s4,32(sp)
   10928:	01513c23          	sd	s5,24(sp)
   1092c:	01613823          	sd	s6,16(sp)
   10930:	01713423          	sd	s7,8(sp)
   10934:	01813023          	sd	s8,0(sp)
   10938:	04113423          	sd	ra,72(sp)
   1093c:	04813023          	sd	s0,64(sp)
   10940:	02913c23          	sd	s1,56(sp)
   10944:	00060993          	mv	s3,a2
   10948:	00050a93          	mv	s5,a0
   1094c:	00058b13          	mv	s6,a1
   10950:	00000913          	li	s2,0
   10954:	0b000b93          	li	s7,176
   10958:	00100c13          	li	s8,1
   1095c:	fff00a13          	li	s4,-1
   10960:	0089a483          	lw	s1,8(s3)
   10964:	04905263          	blez	s1,109a8 <_fwalk_sglue+0x90>
   10968:	02049493          	slli	s1,s1,0x20
   1096c:	0204d493          	srli	s1,s1,0x20
   10970:	037484b3          	mul	s1,s1,s7
   10974:	0109b403          	ld	s0,16(s3)
   10978:	009404b3          	add	s1,s0,s1
   1097c:	01045783          	lhu	a5,16(s0)
   10980:	02fc7063          	bgeu	s8,a5,109a0 <_fwalk_sglue+0x88>
   10984:	01241783          	lh	a5,18(s0)
   10988:	00040593          	mv	a1,s0
   1098c:	000a8513          	mv	a0,s5
   10990:	01478863          	beq	a5,s4,109a0 <_fwalk_sglue+0x88>
   10994:	000b00e7          	jalr	s6
   10998:	01256933          	or	s2,a0,s2
   1099c:	0009091b          	sext.w	s2,s2
   109a0:	0b040413          	addi	s0,s0,176
   109a4:	fc941ce3          	bne	s0,s1,1097c <_fwalk_sglue+0x64>
   109a8:	0009b983          	ld	s3,0(s3)
   109ac:	fa099ae3          	bnez	s3,10960 <_fwalk_sglue+0x48>
   109b0:	04813083          	ld	ra,72(sp)
   109b4:	04013403          	ld	s0,64(sp)
   109b8:	03813483          	ld	s1,56(sp)
   109bc:	02813983          	ld	s3,40(sp)
   109c0:	02013a03          	ld	s4,32(sp)
   109c4:	01813a83          	ld	s5,24(sp)
   109c8:	01013b03          	ld	s6,16(sp)
   109cc:	00813b83          	ld	s7,8(sp)
   109d0:	00013c03          	ld	s8,0(sp)
   109d4:	00090513          	mv	a0,s2
   109d8:	03013903          	ld	s2,48(sp)
   109dc:	05010113          	addi	sp,sp,80
   109e0:	00008067          	ret

00000000000109e4 <__sread>:
   109e4:	ff010113          	addi	sp,sp,-16
   109e8:	00813023          	sd	s0,0(sp)
   109ec:	00058413          	mv	s0,a1
   109f0:	01259583          	lh	a1,18(a1)
   109f4:	00113423          	sd	ra,8(sp)
   109f8:	2ec000ef          	jal	10ce4 <_read_r>
   109fc:	02054063          	bltz	a0,10a1c <__sread+0x38>
   10a00:	09043783          	ld	a5,144(s0)
   10a04:	00813083          	ld	ra,8(sp)
   10a08:	00a787b3          	add	a5,a5,a0
   10a0c:	08f43823          	sd	a5,144(s0)
   10a10:	00013403          	ld	s0,0(sp)
   10a14:	01010113          	addi	sp,sp,16
   10a18:	00008067          	ret
   10a1c:	01045783          	lhu	a5,16(s0)
   10a20:	fffff737          	lui	a4,0xfffff
   10a24:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a28:	00e7f7b3          	and	a5,a5,a4
   10a2c:	00813083          	ld	ra,8(sp)
   10a30:	00f41823          	sh	a5,16(s0)
   10a34:	00013403          	ld	s0,0(sp)
   10a38:	01010113          	addi	sp,sp,16
   10a3c:	00008067          	ret

0000000000010a40 <__seofread>:
   10a40:	00000513          	li	a0,0
   10a44:	00008067          	ret

0000000000010a48 <__swrite>:
   10a48:	01059783          	lh	a5,16(a1)
   10a4c:	fd010113          	addi	sp,sp,-48
   10a50:	00068313          	mv	t1,a3
   10a54:	02113423          	sd	ra,40(sp)
   10a58:	1007f693          	andi	a3,a5,256
   10a5c:	00058713          	mv	a4,a1
   10a60:	00060893          	mv	a7,a2
   10a64:	00050813          	mv	a6,a0
   10a68:	02069863          	bnez	a3,10a98 <__swrite+0x50>
   10a6c:	fffff6b7          	lui	a3,0xfffff
   10a70:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a74:	02813083          	ld	ra,40(sp)
   10a78:	00d7f7b3          	and	a5,a5,a3
   10a7c:	01271583          	lh	a1,18(a4)
   10a80:	00f71823          	sh	a5,16(a4)
   10a84:	00030693          	mv	a3,t1
   10a88:	00088613          	mv	a2,a7
   10a8c:	00080513          	mv	a0,a6
   10a90:	03010113          	addi	sp,sp,48
   10a94:	2b80006f          	j	10d4c <_write_r>
   10a98:	01259583          	lh	a1,18(a1)
   10a9c:	00c13823          	sd	a2,16(sp)
   10aa0:	00200693          	li	a3,2
   10aa4:	00000613          	li	a2,0
   10aa8:	00613c23          	sd	t1,24(sp)
   10aac:	00e13023          	sd	a4,0(sp)
   10ab0:	00a13423          	sd	a0,8(sp)
   10ab4:	1c8000ef          	jal	10c7c <_lseek_r>
   10ab8:	00013703          	ld	a4,0(sp)
   10abc:	01813303          	ld	t1,24(sp)
   10ac0:	01013883          	ld	a7,16(sp)
   10ac4:	01071783          	lh	a5,16(a4)
   10ac8:	00813803          	ld	a6,8(sp)
   10acc:	fa1ff06f          	j	10a6c <__swrite+0x24>

0000000000010ad0 <__sseek>:
   10ad0:	ff010113          	addi	sp,sp,-16
   10ad4:	00813023          	sd	s0,0(sp)
   10ad8:	00058413          	mv	s0,a1
   10adc:	01259583          	lh	a1,18(a1)
   10ae0:	00113423          	sd	ra,8(sp)
   10ae4:	198000ef          	jal	10c7c <_lseek_r>
   10ae8:	fff00713          	li	a4,-1
   10aec:	01041783          	lh	a5,16(s0)
   10af0:	02e50263          	beq	a0,a4,10b14 <__sseek+0x44>
   10af4:	00001737          	lui	a4,0x1
   10af8:	00e7e7b3          	or	a5,a5,a4
   10afc:	00813083          	ld	ra,8(sp)
   10b00:	08a43823          	sd	a0,144(s0)
   10b04:	00f41823          	sh	a5,16(s0)
   10b08:	00013403          	ld	s0,0(sp)
   10b0c:	01010113          	addi	sp,sp,16
   10b10:	00008067          	ret
   10b14:	80050713          	addi	a4,a0,-2048
   10b18:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10b1c:	00e7f7b3          	and	a5,a5,a4
   10b20:	00813083          	ld	ra,8(sp)
   10b24:	00f41823          	sh	a5,16(s0)
   10b28:	00013403          	ld	s0,0(sp)
   10b2c:	01010113          	addi	sp,sp,16
   10b30:	00008067          	ret

0000000000010b34 <__sclose>:
   10b34:	01259583          	lh	a1,18(a1)
   10b38:	0040006f          	j	10b3c <_close_r>

0000000000010b3c <_close_r>:
   10b3c:	fe010113          	addi	sp,sp,-32
   10b40:	00813823          	sd	s0,16(sp)
   10b44:	00913423          	sd	s1,8(sp)
   10b48:	00050493          	mv	s1,a0
   10b4c:	00058513          	mv	a0,a1
   10b50:	00113c23          	sd	ra,24(sp)
   10b54:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b58:	7e4010ef          	jal	1233c <_close>
   10b5c:	fff00793          	li	a5,-1
   10b60:	00f50c63          	beq	a0,a5,10b78 <_close_r+0x3c>
   10b64:	01813083          	ld	ra,24(sp)
   10b68:	01013403          	ld	s0,16(sp)
   10b6c:	00813483          	ld	s1,8(sp)
   10b70:	02010113          	addi	sp,sp,32
   10b74:	00008067          	ret
   10b78:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b7c:	fe0784e3          	beqz	a5,10b64 <_close_r+0x28>
   10b80:	01813083          	ld	ra,24(sp)
   10b84:	01013403          	ld	s0,16(sp)
   10b88:	00f4a023          	sw	a5,0(s1)
   10b8c:	00813483          	ld	s1,8(sp)
   10b90:	02010113          	addi	sp,sp,32
   10b94:	00008067          	ret

0000000000010b98 <_reclaim_reent>:
   10b98:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10b9c:	0ca78e63          	beq	a5,a0,10c78 <_reclaim_reent+0xe0>
   10ba0:	06853583          	ld	a1,104(a0)
   10ba4:	fd010113          	addi	sp,sp,-48
   10ba8:	00913c23          	sd	s1,24(sp)
   10bac:	02113423          	sd	ra,40(sp)
   10bb0:	02813023          	sd	s0,32(sp)
   10bb4:	00050493          	mv	s1,a0
   10bb8:	04058863          	beqz	a1,10c08 <_reclaim_reent+0x70>
   10bbc:	01213823          	sd	s2,16(sp)
   10bc0:	01313423          	sd	s3,8(sp)
   10bc4:	00000913          	li	s2,0
   10bc8:	20000993          	li	s3,512
   10bcc:	012587b3          	add	a5,a1,s2
   10bd0:	0007b403          	ld	s0,0(a5)
   10bd4:	00040e63          	beqz	s0,10bf0 <_reclaim_reent+0x58>
   10bd8:	00040593          	mv	a1,s0
   10bdc:	00043403          	ld	s0,0(s0)
   10be0:	00048513          	mv	a0,s1
   10be4:	5b0000ef          	jal	11194 <_free_r>
   10be8:	fe0418e3          	bnez	s0,10bd8 <_reclaim_reent+0x40>
   10bec:	0684b583          	ld	a1,104(s1)
   10bf0:	00890913          	addi	s2,s2,8
   10bf4:	fd391ce3          	bne	s2,s3,10bcc <_reclaim_reent+0x34>
   10bf8:	00048513          	mv	a0,s1
   10bfc:	598000ef          	jal	11194 <_free_r>
   10c00:	01013903          	ld	s2,16(sp)
   10c04:	00813983          	ld	s3,8(sp)
   10c08:	0504b583          	ld	a1,80(s1)
   10c0c:	00058663          	beqz	a1,10c18 <_reclaim_reent+0x80>
   10c10:	00048513          	mv	a0,s1
   10c14:	580000ef          	jal	11194 <_free_r>
   10c18:	0604b403          	ld	s0,96(s1)
   10c1c:	00040c63          	beqz	s0,10c34 <_reclaim_reent+0x9c>
   10c20:	00040593          	mv	a1,s0
   10c24:	00043403          	ld	s0,0(s0)
   10c28:	00048513          	mv	a0,s1
   10c2c:	568000ef          	jal	11194 <_free_r>
   10c30:	fe0418e3          	bnez	s0,10c20 <_reclaim_reent+0x88>
   10c34:	0784b583          	ld	a1,120(s1)
   10c38:	00058663          	beqz	a1,10c44 <_reclaim_reent+0xac>
   10c3c:	00048513          	mv	a0,s1
   10c40:	554000ef          	jal	11194 <_free_r>
   10c44:	0484b783          	ld	a5,72(s1)
   10c48:	00078e63          	beqz	a5,10c64 <_reclaim_reent+0xcc>
   10c4c:	02013403          	ld	s0,32(sp)
   10c50:	02813083          	ld	ra,40(sp)
   10c54:	00048513          	mv	a0,s1
   10c58:	01813483          	ld	s1,24(sp)
   10c5c:	03010113          	addi	sp,sp,48
   10c60:	00078067          	jr	a5
   10c64:	02813083          	ld	ra,40(sp)
   10c68:	02013403          	ld	s0,32(sp)
   10c6c:	01813483          	ld	s1,24(sp)
   10c70:	03010113          	addi	sp,sp,48
   10c74:	00008067          	ret
   10c78:	00008067          	ret

0000000000010c7c <_lseek_r>:
   10c7c:	fe010113          	addi	sp,sp,-32
   10c80:	00058793          	mv	a5,a1
   10c84:	00813823          	sd	s0,16(sp)
   10c88:	00913423          	sd	s1,8(sp)
   10c8c:	00060593          	mv	a1,a2
   10c90:	00050493          	mv	s1,a0
   10c94:	00068613          	mv	a2,a3
   10c98:	00078513          	mv	a0,a5
   10c9c:	00113c23          	sd	ra,24(sp)
   10ca0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10ca4:	708010ef          	jal	123ac <_lseek>
   10ca8:	fff00793          	li	a5,-1
   10cac:	00f50c63          	beq	a0,a5,10cc4 <_lseek_r+0x48>
   10cb0:	01813083          	ld	ra,24(sp)
   10cb4:	01013403          	ld	s0,16(sp)
   10cb8:	00813483          	ld	s1,8(sp)
   10cbc:	02010113          	addi	sp,sp,32
   10cc0:	00008067          	ret
   10cc4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10cc8:	fe0784e3          	beqz	a5,10cb0 <_lseek_r+0x34>
   10ccc:	01813083          	ld	ra,24(sp)
   10cd0:	01013403          	ld	s0,16(sp)
   10cd4:	00f4a023          	sw	a5,0(s1)
   10cd8:	00813483          	ld	s1,8(sp)
   10cdc:	02010113          	addi	sp,sp,32
   10ce0:	00008067          	ret

0000000000010ce4 <_read_r>:
   10ce4:	fe010113          	addi	sp,sp,-32
   10ce8:	00058793          	mv	a5,a1
   10cec:	00813823          	sd	s0,16(sp)
   10cf0:	00913423          	sd	s1,8(sp)
   10cf4:	00060593          	mv	a1,a2
   10cf8:	00050493          	mv	s1,a0
   10cfc:	00068613          	mv	a2,a3
   10d00:	00078513          	mv	a0,a5
   10d04:	00113c23          	sd	ra,24(sp)
   10d08:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d0c:	6e0010ef          	jal	123ec <_read>
   10d10:	fff00793          	li	a5,-1
   10d14:	00f50c63          	beq	a0,a5,10d2c <_read_r+0x48>
   10d18:	01813083          	ld	ra,24(sp)
   10d1c:	01013403          	ld	s0,16(sp)
   10d20:	00813483          	ld	s1,8(sp)
   10d24:	02010113          	addi	sp,sp,32
   10d28:	00008067          	ret
   10d2c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d30:	fe0784e3          	beqz	a5,10d18 <_read_r+0x34>
   10d34:	01813083          	ld	ra,24(sp)
   10d38:	01013403          	ld	s0,16(sp)
   10d3c:	00f4a023          	sw	a5,0(s1)
   10d40:	00813483          	ld	s1,8(sp)
   10d44:	02010113          	addi	sp,sp,32
   10d48:	00008067          	ret

0000000000010d4c <_write_r>:
   10d4c:	fe010113          	addi	sp,sp,-32
   10d50:	00058793          	mv	a5,a1
   10d54:	00813823          	sd	s0,16(sp)
   10d58:	00913423          	sd	s1,8(sp)
   10d5c:	00060593          	mv	a1,a2
   10d60:	00050493          	mv	s1,a0
   10d64:	00068613          	mv	a2,a3
   10d68:	00078513          	mv	a0,a5
   10d6c:	00113c23          	sd	ra,24(sp)
   10d70:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d74:	730010ef          	jal	124a4 <_write>
   10d78:	fff00793          	li	a5,-1
   10d7c:	00f50c63          	beq	a0,a5,10d94 <_write_r+0x48>
   10d80:	01813083          	ld	ra,24(sp)
   10d84:	01013403          	ld	s0,16(sp)
   10d88:	00813483          	ld	s1,8(sp)
   10d8c:	02010113          	addi	sp,sp,32
   10d90:	00008067          	ret
   10d94:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d98:	fe0784e3          	beqz	a5,10d80 <_write_r+0x34>
   10d9c:	01813083          	ld	ra,24(sp)
   10da0:	01013403          	ld	s0,16(sp)
   10da4:	00f4a023          	sw	a5,0(s1)
   10da8:	00813483          	ld	s1,8(sp)
   10dac:	02010113          	addi	sp,sp,32
   10db0:	00008067          	ret

0000000000010db4 <__libc_init_array>:
   10db4:	fe010113          	addi	sp,sp,-32
   10db8:	00813823          	sd	s0,16(sp)
   10dbc:	01213023          	sd	s2,0(sp)
   10dc0:	00013437          	lui	s0,0x13
   10dc4:	00013937          	lui	s2,0x13
   10dc8:	00113c23          	sd	ra,24(sp)
   10dcc:	00913423          	sd	s1,8(sp)
   10dd0:	00090913          	mv	s2,s2
   10dd4:	00040413          	mv	s0,s0
   10dd8:	02890263          	beq	s2,s0,10dfc <__libc_init_array+0x48>
   10ddc:	40890933          	sub	s2,s2,s0
   10de0:	40395913          	srai	s2,s2,0x3
   10de4:	00000493          	li	s1,0
   10de8:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10dec:	00148493          	addi	s1,s1,1
   10df0:	00840413          	addi	s0,s0,8
   10df4:	000780e7          	jalr	a5
   10df8:	ff24e8e3          	bltu	s1,s2,10de8 <__libc_init_array+0x34>
   10dfc:	00013937          	lui	s2,0x13
   10e00:	00013437          	lui	s0,0x13
   10e04:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10e08:	00040413          	mv	s0,s0
   10e0c:	02890263          	beq	s2,s0,10e30 <__libc_init_array+0x7c>
   10e10:	40890933          	sub	s2,s2,s0
   10e14:	40395913          	srai	s2,s2,0x3
   10e18:	00000493          	li	s1,0
   10e1c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10e20:	00148493          	addi	s1,s1,1
   10e24:	00840413          	addi	s0,s0,8
   10e28:	000780e7          	jalr	a5
   10e2c:	ff24e8e3          	bltu	s1,s2,10e1c <__libc_init_array+0x68>
   10e30:	01813083          	ld	ra,24(sp)
   10e34:	01013403          	ld	s0,16(sp)
   10e38:	00813483          	ld	s1,8(sp)
   10e3c:	00013903          	ld	s2,0(sp)
   10e40:	02010113          	addi	sp,sp,32
   10e44:	00008067          	ret

0000000000010e48 <memset>:
   10e48:	00f00313          	li	t1,15
   10e4c:	00050713          	mv	a4,a0
   10e50:	02c37a63          	bgeu	t1,a2,10e84 <memset+0x3c>
   10e54:	00f77793          	andi	a5,a4,15
   10e58:	0a079063          	bnez	a5,10ef8 <memset+0xb0>
   10e5c:	06059e63          	bnez	a1,10ed8 <memset+0x90>
   10e60:	ff067693          	andi	a3,a2,-16
   10e64:	00f67613          	andi	a2,a2,15
   10e68:	00e686b3          	add	a3,a3,a4
   10e6c:	00b73023          	sd	a1,0(a4)
   10e70:	00b73423          	sd	a1,8(a4)
   10e74:	01070713          	addi	a4,a4,16
   10e78:	fed76ae3          	bltu	a4,a3,10e6c <memset+0x24>
   10e7c:	00061463          	bnez	a2,10e84 <memset+0x3c>
   10e80:	00008067          	ret
   10e84:	40c306b3          	sub	a3,t1,a2
   10e88:	00269693          	slli	a3,a3,0x2
   10e8c:	00000297          	auipc	t0,0x0
   10e90:	005686b3          	add	a3,a3,t0
   10e94:	00c68067          	jr	12(a3)
   10e98:	00b70723          	sb	a1,14(a4)
   10e9c:	00b706a3          	sb	a1,13(a4)
   10ea0:	00b70623          	sb	a1,12(a4)
   10ea4:	00b705a3          	sb	a1,11(a4)
   10ea8:	00b70523          	sb	a1,10(a4)
   10eac:	00b704a3          	sb	a1,9(a4)
   10eb0:	00b70423          	sb	a1,8(a4)
   10eb4:	00b703a3          	sb	a1,7(a4)
   10eb8:	00b70323          	sb	a1,6(a4)
   10ebc:	00b702a3          	sb	a1,5(a4)
   10ec0:	00b70223          	sb	a1,4(a4)
   10ec4:	00b701a3          	sb	a1,3(a4)
   10ec8:	00b70123          	sb	a1,2(a4)
   10ecc:	00b700a3          	sb	a1,1(a4)
   10ed0:	00b70023          	sb	a1,0(a4)
   10ed4:	00008067          	ret
   10ed8:	0ff5f593          	zext.b	a1,a1
   10edc:	00859693          	slli	a3,a1,0x8
   10ee0:	00d5e5b3          	or	a1,a1,a3
   10ee4:	01059693          	slli	a3,a1,0x10
   10ee8:	00d5e5b3          	or	a1,a1,a3
   10eec:	02059693          	slli	a3,a1,0x20
   10ef0:	00d5e5b3          	or	a1,a1,a3
   10ef4:	f6dff06f          	j	10e60 <memset+0x18>
   10ef8:	00279693          	slli	a3,a5,0x2
   10efc:	00000297          	auipc	t0,0x0
   10f00:	005686b3          	add	a3,a3,t0
   10f04:	00008293          	mv	t0,ra
   10f08:	f98680e7          	jalr	-104(a3)
   10f0c:	00028093          	mv	ra,t0
   10f10:	ff078793          	addi	a5,a5,-16
   10f14:	40f70733          	sub	a4,a4,a5
   10f18:	00f60633          	add	a2,a2,a5
   10f1c:	f6c374e3          	bgeu	t1,a2,10e84 <memset+0x3c>
   10f20:	f3dff06f          	j	10e5c <memset+0x14>

0000000000010f24 <__call_exitprocs>:
   10f24:	fb010113          	addi	sp,sp,-80
   10f28:	03413023          	sd	s4,32(sp)
   10f2c:	03213823          	sd	s2,48(sp)
   10f30:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10f34:	04113423          	sd	ra,72(sp)
   10f38:	06090e63          	beqz	s2,10fb4 <__call_exitprocs+0x90>
   10f3c:	03313423          	sd	s3,40(sp)
   10f40:	01513c23          	sd	s5,24(sp)
   10f44:	01613823          	sd	s6,16(sp)
   10f48:	01713423          	sd	s7,8(sp)
   10f4c:	04813023          	sd	s0,64(sp)
   10f50:	02913c23          	sd	s1,56(sp)
   10f54:	01813023          	sd	s8,0(sp)
   10f58:	00050b13          	mv	s6,a0
   10f5c:	00058b93          	mv	s7,a1
   10f60:	fff00993          	li	s3,-1
   10f64:	00100a93          	li	s5,1
   10f68:	00892403          	lw	s0,8(s2)
   10f6c:	fff4041b          	addiw	s0,s0,-1
   10f70:	02044463          	bltz	s0,10f98 <__call_exitprocs+0x74>
   10f74:	01090493          	addi	s1,s2,16
   10f78:	00341793          	slli	a5,s0,0x3
   10f7c:	00f484b3          	add	s1,s1,a5
   10f80:	040b8463          	beqz	s7,10fc8 <__call_exitprocs+0xa4>
   10f84:	2004b783          	ld	a5,512(s1)
   10f88:	05778063          	beq	a5,s7,10fc8 <__call_exitprocs+0xa4>
   10f8c:	fff4041b          	addiw	s0,s0,-1
   10f90:	ff848493          	addi	s1,s1,-8
   10f94:	ff3418e3          	bne	s0,s3,10f84 <__call_exitprocs+0x60>
   10f98:	04013403          	ld	s0,64(sp)
   10f9c:	03813483          	ld	s1,56(sp)
   10fa0:	02813983          	ld	s3,40(sp)
   10fa4:	01813a83          	ld	s5,24(sp)
   10fa8:	01013b03          	ld	s6,16(sp)
   10fac:	00813b83          	ld	s7,8(sp)
   10fb0:	00013c03          	ld	s8,0(sp)
   10fb4:	04813083          	ld	ra,72(sp)
   10fb8:	03013903          	ld	s2,48(sp)
   10fbc:	02013a03          	ld	s4,32(sp)
   10fc0:	05010113          	addi	sp,sp,80
   10fc4:	00008067          	ret
   10fc8:	00892783          	lw	a5,8(s2)
   10fcc:	0004b683          	ld	a3,0(s1)
   10fd0:	fff7879b          	addiw	a5,a5,-1
   10fd4:	06878a63          	beq	a5,s0,11048 <__call_exitprocs+0x124>
   10fd8:	0004b023          	sd	zero,0(s1)
   10fdc:	02068663          	beqz	a3,11008 <__call_exitprocs+0xe4>
   10fe0:	31092783          	lw	a5,784(s2)
   10fe4:	008a973b          	sllw	a4,s5,s0
   10fe8:	00892c03          	lw	s8,8(s2)
   10fec:	00e7f7b3          	and	a5,a5,a4
   10ff0:	02079463          	bnez	a5,11018 <__call_exitprocs+0xf4>
   10ff4:	000680e7          	jalr	a3
   10ff8:	00892703          	lw	a4,8(s2)
   10ffc:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11000:	03871e63          	bne	a4,s8,1103c <__call_exitprocs+0x118>
   11004:	03279c63          	bne	a5,s2,1103c <__call_exitprocs+0x118>
   11008:	fff4041b          	addiw	s0,s0,-1
   1100c:	ff848493          	addi	s1,s1,-8
   11010:	f73418e3          	bne	s0,s3,10f80 <__call_exitprocs+0x5c>
   11014:	f85ff06f          	j	10f98 <__call_exitprocs+0x74>
   11018:	31492783          	lw	a5,788(s2)
   1101c:	1004b583          	ld	a1,256(s1)
   11020:	00f77733          	and	a4,a4,a5
   11024:	02071663          	bnez	a4,11050 <__call_exitprocs+0x12c>
   11028:	000b0513          	mv	a0,s6
   1102c:	000680e7          	jalr	a3
   11030:	00892703          	lw	a4,8(s2)
   11034:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11038:	fd8706e3          	beq	a4,s8,11004 <__call_exitprocs+0xe0>
   1103c:	f4078ee3          	beqz	a5,10f98 <__call_exitprocs+0x74>
   11040:	00078913          	mv	s2,a5
   11044:	f25ff06f          	j	10f68 <__call_exitprocs+0x44>
   11048:	00892423          	sw	s0,8(s2)
   1104c:	f91ff06f          	j	10fdc <__call_exitprocs+0xb8>
   11050:	00058513          	mv	a0,a1
   11054:	000680e7          	jalr	a3
   11058:	fa1ff06f          	j	10ff8 <__call_exitprocs+0xd4>

000000000001105c <atexit>:
   1105c:	00050593          	mv	a1,a0
   11060:	00000693          	li	a3,0
   11064:	00000613          	li	a2,0
   11068:	00000513          	li	a0,0
   1106c:	2340106f          	j	122a0 <__register_exitproc>

0000000000011070 <_malloc_trim_r>:
   11070:	fd010113          	addi	sp,sp,-48
   11074:	01213823          	sd	s2,16(sp)
   11078:	00013937          	lui	s2,0x13
   1107c:	02813023          	sd	s0,32(sp)
   11080:	00913c23          	sd	s1,24(sp)
   11084:	01313423          	sd	s3,8(sp)
   11088:	00058413          	mv	s0,a1
   1108c:	02113423          	sd	ra,40(sp)
   11090:	00050993          	mv	s3,a0
   11094:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11098:	4e5000ef          	jal	11d7c <__malloc_lock>
   1109c:	01093783          	ld	a5,16(s2)
   110a0:	00001737          	lui	a4,0x1
   110a4:	0087b483          	ld	s1,8(a5)
   110a8:	ffc4f493          	andi	s1,s1,-4
   110ac:	7ff48793          	addi	a5,s1,2047
   110b0:	7e078793          	addi	a5,a5,2016
   110b4:	40878433          	sub	s0,a5,s0
   110b8:	00c45413          	srli	s0,s0,0xc
   110bc:	fff40413          	addi	s0,s0,-1
   110c0:	00c41413          	slli	s0,s0,0xc
   110c4:	00e44e63          	blt	s0,a4,110e0 <_malloc_trim_r+0x70>
   110c8:	00000593          	li	a1,0
   110cc:	00098513          	mv	a0,s3
   110d0:	118010ef          	jal	121e8 <_sbrk_r>
   110d4:	01093783          	ld	a5,16(s2)
   110d8:	009787b3          	add	a5,a5,s1
   110dc:	02f50663          	beq	a0,a5,11108 <_malloc_trim_r+0x98>
   110e0:	00098513          	mv	a0,s3
   110e4:	49d000ef          	jal	11d80 <__malloc_unlock>
   110e8:	02813083          	ld	ra,40(sp)
   110ec:	02013403          	ld	s0,32(sp)
   110f0:	01813483          	ld	s1,24(sp)
   110f4:	01013903          	ld	s2,16(sp)
   110f8:	00813983          	ld	s3,8(sp)
   110fc:	00000513          	li	a0,0
   11100:	03010113          	addi	sp,sp,48
   11104:	00008067          	ret
   11108:	408005b3          	neg	a1,s0
   1110c:	00098513          	mv	a0,s3
   11110:	0d8010ef          	jal	121e8 <_sbrk_r>
   11114:	fff00793          	li	a5,-1
   11118:	04f50463          	beq	a0,a5,11160 <_malloc_trim_r+0xf0>
   1111c:	01093683          	ld	a3,16(s2)
   11120:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11124:	408484b3          	sub	s1,s1,s0
   11128:	0014e493          	ori	s1,s1,1
   1112c:	00098513          	mv	a0,s3
   11130:	408787bb          	subw	a5,a5,s0
   11134:	0096b423          	sd	s1,8(a3)
   11138:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1113c:	445000ef          	jal	11d80 <__malloc_unlock>
   11140:	02813083          	ld	ra,40(sp)
   11144:	02013403          	ld	s0,32(sp)
   11148:	01813483          	ld	s1,24(sp)
   1114c:	01013903          	ld	s2,16(sp)
   11150:	00813983          	ld	s3,8(sp)
   11154:	00100513          	li	a0,1
   11158:	03010113          	addi	sp,sp,48
   1115c:	00008067          	ret
   11160:	00000593          	li	a1,0
   11164:	00098513          	mv	a0,s3
   11168:	080010ef          	jal	121e8 <_sbrk_r>
   1116c:	01093703          	ld	a4,16(s2)
   11170:	01f00693          	li	a3,31
   11174:	40e507b3          	sub	a5,a0,a4
   11178:	f6f6d4e3          	bge	a3,a5,110e0 <_malloc_trim_r+0x70>
   1117c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11180:	0017e793          	ori	a5,a5,1
   11184:	40c50533          	sub	a0,a0,a2
   11188:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   1118c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11190:	f51ff06f          	j	110e0 <_malloc_trim_r+0x70>

0000000000011194 <_free_r>:
   11194:	12058863          	beqz	a1,112c4 <_free_r+0x130>
   11198:	fe010113          	addi	sp,sp,-32
   1119c:	00813823          	sd	s0,16(sp)
   111a0:	00b13423          	sd	a1,8(sp)
   111a4:	00050413          	mv	s0,a0
   111a8:	00113c23          	sd	ra,24(sp)
   111ac:	3d1000ef          	jal	11d7c <__malloc_lock>
   111b0:	00813583          	ld	a1,8(sp)
   111b4:	00013837          	lui	a6,0x13
   111b8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   111bc:	ff85b503          	ld	a0,-8(a1)
   111c0:	ff058713          	addi	a4,a1,-16
   111c4:	01083883          	ld	a7,16(a6)
   111c8:	ffe57793          	andi	a5,a0,-2
   111cc:	00f70633          	add	a2,a4,a5
   111d0:	00863683          	ld	a3,8(a2)
   111d4:	00157313          	andi	t1,a0,1
   111d8:	ffc6f693          	andi	a3,a3,-4
   111dc:	18c88e63          	beq	a7,a2,11378 <_free_r+0x1e4>
   111e0:	00d63423          	sd	a3,8(a2)
   111e4:	00d608b3          	add	a7,a2,a3
   111e8:	0088b883          	ld	a7,8(a7)
   111ec:	0018f893          	andi	a7,a7,1
   111f0:	08031e63          	bnez	t1,1128c <_free_r+0xf8>
   111f4:	ff05b303          	ld	t1,-16(a1)
   111f8:	000135b7          	lui	a1,0x13
   111fc:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11200:	40670733          	sub	a4,a4,t1
   11204:	01073503          	ld	a0,16(a4)
   11208:	006787b3          	add	a5,a5,t1
   1120c:	14b50063          	beq	a0,a1,1134c <_free_r+0x1b8>
   11210:	01873303          	ld	t1,24(a4)
   11214:	00653c23          	sd	t1,24(a0)
   11218:	00a33823          	sd	a0,16(t1) # 10220 <do_mulh+0x4>
   1121c:	1a088263          	beqz	a7,113c0 <_free_r+0x22c>
   11220:	0017e693          	ori	a3,a5,1
   11224:	00d73423          	sd	a3,8(a4)
   11228:	00f63023          	sd	a5,0(a2)
   1122c:	1ff00693          	li	a3,511
   11230:	0af6e663          	bltu	a3,a5,112dc <_free_r+0x148>
   11234:	0037d793          	srli	a5,a5,0x3
   11238:	00179693          	slli	a3,a5,0x1
   1123c:	0026869b          	addiw	a3,a3,2
   11240:	00369693          	slli	a3,a3,0x3
   11244:	00883503          	ld	a0,8(a6)
   11248:	00d806b3          	add	a3,a6,a3
   1124c:	0006b583          	ld	a1,0(a3)
   11250:	4027d61b          	sraiw	a2,a5,0x2
   11254:	00100793          	li	a5,1
   11258:	00c797b3          	sll	a5,a5,a2
   1125c:	00a7e7b3          	or	a5,a5,a0
   11260:	ff068613          	addi	a2,a3,-16
   11264:	00b73823          	sd	a1,16(a4)
   11268:	00c73c23          	sd	a2,24(a4)
   1126c:	00f83423          	sd	a5,8(a6)
   11270:	00e6b023          	sd	a4,0(a3)
   11274:	00e5bc23          	sd	a4,24(a1)
   11278:	00040513          	mv	a0,s0
   1127c:	01013403          	ld	s0,16(sp)
   11280:	01813083          	ld	ra,24(sp)
   11284:	02010113          	addi	sp,sp,32
   11288:	2f90006f          	j	11d80 <__malloc_unlock>
   1128c:	02089e63          	bnez	a7,112c8 <_free_r+0x134>
   11290:	000135b7          	lui	a1,0x13
   11294:	00d787b3          	add	a5,a5,a3
   11298:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1129c:	01063683          	ld	a3,16(a2)
   112a0:	0017e893          	ori	a7,a5,1
   112a4:	00f70533          	add	a0,a4,a5
   112a8:	16b68663          	beq	a3,a1,11414 <_free_r+0x280>
   112ac:	01863603          	ld	a2,24(a2)
   112b0:	00c6bc23          	sd	a2,24(a3)
   112b4:	00d63823          	sd	a3,16(a2)
   112b8:	01173423          	sd	a7,8(a4)
   112bc:	00f53023          	sd	a5,0(a0)
   112c0:	f6dff06f          	j	1122c <_free_r+0x98>
   112c4:	00008067          	ret
   112c8:	00156513          	ori	a0,a0,1
   112cc:	fea5bc23          	sd	a0,-8(a1)
   112d0:	00f63023          	sd	a5,0(a2)
   112d4:	1ff00693          	li	a3,511
   112d8:	f4f6fee3          	bgeu	a3,a5,11234 <_free_r+0xa0>
   112dc:	0097d693          	srli	a3,a5,0x9
   112e0:	00400613          	li	a2,4
   112e4:	0ed66263          	bltu	a2,a3,113c8 <_free_r+0x234>
   112e8:	0067d693          	srli	a3,a5,0x6
   112ec:	00169593          	slli	a1,a3,0x1
   112f0:	0725859b          	addiw	a1,a1,114
   112f4:	00359593          	slli	a1,a1,0x3
   112f8:	0386861b          	addiw	a2,a3,56
   112fc:	00b805b3          	add	a1,a6,a1
   11300:	0005b683          	ld	a3,0(a1)
   11304:	ff058593          	addi	a1,a1,-16
   11308:	00d59863          	bne	a1,a3,11318 <_free_r+0x184>
   1130c:	1240006f          	j	11430 <_free_r+0x29c>
   11310:	0106b683          	ld	a3,16(a3)
   11314:	00d58863          	beq	a1,a3,11324 <_free_r+0x190>
   11318:	0086b603          	ld	a2,8(a3)
   1131c:	ffc67613          	andi	a2,a2,-4
   11320:	fec7e8e3          	bltu	a5,a2,11310 <_free_r+0x17c>
   11324:	0186b583          	ld	a1,24(a3)
   11328:	00b73c23          	sd	a1,24(a4)
   1132c:	00d73823          	sd	a3,16(a4)
   11330:	00040513          	mv	a0,s0
   11334:	01013403          	ld	s0,16(sp)
   11338:	01813083          	ld	ra,24(sp)
   1133c:	00e5b823          	sd	a4,16(a1)
   11340:	00e6bc23          	sd	a4,24(a3)
   11344:	02010113          	addi	sp,sp,32
   11348:	2390006f          	j	11d80 <__malloc_unlock>
   1134c:	0a089263          	bnez	a7,113f0 <_free_r+0x25c>
   11350:	01863583          	ld	a1,24(a2)
   11354:	01063603          	ld	a2,16(a2)
   11358:	00f686b3          	add	a3,a3,a5
   1135c:	0016e793          	ori	a5,a3,1
   11360:	00b63c23          	sd	a1,24(a2)
   11364:	00c5b823          	sd	a2,16(a1)
   11368:	00f73423          	sd	a5,8(a4)
   1136c:	00d70733          	add	a4,a4,a3
   11370:	00d73023          	sd	a3,0(a4)
   11374:	f05ff06f          	j	11278 <_free_r+0xe4>
   11378:	00d786b3          	add	a3,a5,a3
   1137c:	02031063          	bnez	t1,1139c <_free_r+0x208>
   11380:	ff05b783          	ld	a5,-16(a1)
   11384:	40f70733          	sub	a4,a4,a5
   11388:	01073603          	ld	a2,16(a4)
   1138c:	00f686b3          	add	a3,a3,a5
   11390:	01873783          	ld	a5,24(a4)
   11394:	00f63c23          	sd	a5,24(a2)
   11398:	00c7b823          	sd	a2,16(a5)
   1139c:	0016e613          	ori	a2,a3,1
   113a0:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   113a4:	00c73423          	sd	a2,8(a4)
   113a8:	00e83823          	sd	a4,16(a6)
   113ac:	ecf6e6e3          	bltu	a3,a5,11278 <_free_r+0xe4>
   113b0:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   113b4:	00040513          	mv	a0,s0
   113b8:	cb9ff0ef          	jal	11070 <_malloc_trim_r>
   113bc:	ebdff06f          	j	11278 <_free_r+0xe4>
   113c0:	00d787b3          	add	a5,a5,a3
   113c4:	ed9ff06f          	j	1129c <_free_r+0x108>
   113c8:	01400613          	li	a2,20
   113cc:	02d67a63          	bgeu	a2,a3,11400 <_free_r+0x26c>
   113d0:	05400613          	li	a2,84
   113d4:	06d66c63          	bltu	a2,a3,1144c <_free_r+0x2b8>
   113d8:	00c7d693          	srli	a3,a5,0xc
   113dc:	00169593          	slli	a1,a3,0x1
   113e0:	0de5859b          	addiw	a1,a1,222
   113e4:	00359593          	slli	a1,a1,0x3
   113e8:	06e6861b          	addiw	a2,a3,110
   113ec:	f11ff06f          	j	112fc <_free_r+0x168>
   113f0:	0017e693          	ori	a3,a5,1
   113f4:	00d73423          	sd	a3,8(a4)
   113f8:	00f63023          	sd	a5,0(a2)
   113fc:	e7dff06f          	j	11278 <_free_r+0xe4>
   11400:	00169593          	slli	a1,a3,0x1
   11404:	0b85859b          	addiw	a1,a1,184
   11408:	00359593          	slli	a1,a1,0x3
   1140c:	05b6861b          	addiw	a2,a3,91
   11410:	eedff06f          	j	112fc <_free_r+0x168>
   11414:	02e83423          	sd	a4,40(a6)
   11418:	02e83023          	sd	a4,32(a6)
   1141c:	00b73c23          	sd	a1,24(a4)
   11420:	00b73823          	sd	a1,16(a4)
   11424:	01173423          	sd	a7,8(a4)
   11428:	00f53023          	sd	a5,0(a0)
   1142c:	e4dff06f          	j	11278 <_free_r+0xe4>
   11430:	00883503          	ld	a0,8(a6)
   11434:	4026561b          	sraiw	a2,a2,0x2
   11438:	00100793          	li	a5,1
   1143c:	00c797b3          	sll	a5,a5,a2
   11440:	00a7e7b3          	or	a5,a5,a0
   11444:	00f83423          	sd	a5,8(a6)
   11448:	ee1ff06f          	j	11328 <_free_r+0x194>
   1144c:	15400613          	li	a2,340
   11450:	00d66e63          	bltu	a2,a3,1146c <_free_r+0x2d8>
   11454:	00f7d693          	srli	a3,a5,0xf
   11458:	00169593          	slli	a1,a3,0x1
   1145c:	0f05859b          	addiw	a1,a1,240
   11460:	00359593          	slli	a1,a1,0x3
   11464:	0776861b          	addiw	a2,a3,119
   11468:	e95ff06f          	j	112fc <_free_r+0x168>
   1146c:	55400613          	li	a2,1364
   11470:	00d66e63          	bltu	a2,a3,1148c <_free_r+0x2f8>
   11474:	0127d693          	srli	a3,a5,0x12
   11478:	00169593          	slli	a1,a3,0x1
   1147c:	0fa5859b          	addiw	a1,a1,250
   11480:	00359593          	slli	a1,a1,0x3
   11484:	07c6861b          	addiw	a2,a3,124
   11488:	e75ff06f          	j	112fc <_free_r+0x168>
   1148c:	7f000593          	li	a1,2032
   11490:	07e00613          	li	a2,126
   11494:	e69ff06f          	j	112fc <_free_r+0x168>

0000000000011498 <_malloc_r>:
   11498:	fa010113          	addi	sp,sp,-96
   1149c:	04813823          	sd	s0,80(sp)
   114a0:	04113c23          	sd	ra,88(sp)
   114a4:	01758713          	addi	a4,a1,23
   114a8:	02e00793          	li	a5,46
   114ac:	00050413          	mv	s0,a0
   114b0:	08e7ee63          	bltu	a5,a4,1154c <_malloc_r+0xb4>
   114b4:	02000713          	li	a4,32
   114b8:	06b76c63          	bltu	a4,a1,11530 <_malloc_r+0x98>
   114bc:	0c1000ef          	jal	11d7c <__malloc_lock>
   114c0:	02000713          	li	a4,32
   114c4:	05000693          	li	a3,80
   114c8:	00400893          	li	a7,4
   114cc:	00013837          	lui	a6,0x13
   114d0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   114d4:	00d806b3          	add	a3,a6,a3
   114d8:	0086b783          	ld	a5,8(a3)
   114dc:	ff068613          	addi	a2,a3,-16
   114e0:	48c78063          	beq	a5,a2,11960 <_malloc_r+0x4c8>
   114e4:	0087b703          	ld	a4,8(a5)
   114e8:	0187b603          	ld	a2,24(a5)
   114ec:	0107b583          	ld	a1,16(a5)
   114f0:	ffc77713          	andi	a4,a4,-4
   114f4:	00e78733          	add	a4,a5,a4
   114f8:	00873683          	ld	a3,8(a4)
   114fc:	00c5bc23          	sd	a2,24(a1)
   11500:	00b63823          	sd	a1,16(a2)
   11504:	0016e693          	ori	a3,a3,1
   11508:	00040513          	mv	a0,s0
   1150c:	00d73423          	sd	a3,8(a4)
   11510:	00f13423          	sd	a5,8(sp)
   11514:	06d000ef          	jal	11d80 <__malloc_unlock>
   11518:	00813783          	ld	a5,8(sp)
   1151c:	05813083          	ld	ra,88(sp)
   11520:	05013403          	ld	s0,80(sp)
   11524:	01078513          	addi	a0,a5,16
   11528:	06010113          	addi	sp,sp,96
   1152c:	00008067          	ret
   11530:	00c00793          	li	a5,12
   11534:	00f42023          	sw	a5,0(s0)
   11538:	00000513          	li	a0,0
   1153c:	05813083          	ld	ra,88(sp)
   11540:	05013403          	ld	s0,80(sp)
   11544:	06010113          	addi	sp,sp,96
   11548:	00008067          	ret
   1154c:	00100793          	li	a5,1
   11550:	ff077713          	andi	a4,a4,-16
   11554:	01f79793          	slli	a5,a5,0x1f
   11558:	fcf77ce3          	bgeu	a4,a5,11530 <_malloc_r+0x98>
   1155c:	fcb76ae3          	bltu	a4,a1,11530 <_malloc_r+0x98>
   11560:	00e13423          	sd	a4,8(sp)
   11564:	019000ef          	jal	11d7c <__malloc_lock>
   11568:	00813703          	ld	a4,8(sp)
   1156c:	1f700793          	li	a5,503
   11570:	4ee7fa63          	bgeu	a5,a4,11a64 <_malloc_r+0x5cc>
   11574:	00975793          	srli	a5,a4,0x9
   11578:	18078a63          	beqz	a5,1170c <_malloc_r+0x274>
   1157c:	00400693          	li	a3,4
   11580:	44f6ea63          	bltu	a3,a5,119d4 <_malloc_r+0x53c>
   11584:	00675793          	srli	a5,a4,0x6
   11588:	0397889b          	addiw	a7,a5,57
   1158c:	0018951b          	slliw	a0,a7,0x1
   11590:	03878e1b          	addiw	t3,a5,56
   11594:	00351513          	slli	a0,a0,0x3
   11598:	00013837          	lui	a6,0x13
   1159c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   115a0:	00a80533          	add	a0,a6,a0
   115a4:	00853783          	ld	a5,8(a0)
   115a8:	ff050513          	addi	a0,a0,-16
   115ac:	02f50863          	beq	a0,a5,115dc <_malloc_r+0x144>
   115b0:	01f00313          	li	t1,31
   115b4:	0140006f          	j	115c8 <_malloc_r+0x130>
   115b8:	0187b583          	ld	a1,24(a5)
   115bc:	36065263          	bgez	a2,11920 <_malloc_r+0x488>
   115c0:	00b50e63          	beq	a0,a1,115dc <_malloc_r+0x144>
   115c4:	00058793          	mv	a5,a1
   115c8:	0087b683          	ld	a3,8(a5)
   115cc:	ffc6f693          	andi	a3,a3,-4
   115d0:	40e68633          	sub	a2,a3,a4
   115d4:	fec352e3          	bge	t1,a2,115b8 <_malloc_r+0x120>
   115d8:	000e0893          	mv	a7,t3
   115dc:	02083783          	ld	a5,32(a6)
   115e0:	00013e37          	lui	t3,0x13
   115e4:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   115e8:	2fc78a63          	beq	a5,t3,118dc <_malloc_r+0x444>
   115ec:	0087b303          	ld	t1,8(a5)
   115f0:	01f00613          	li	a2,31
   115f4:	ffc37313          	andi	t1,t1,-4
   115f8:	40e306b3          	sub	a3,t1,a4
   115fc:	4ad64463          	blt	a2,a3,11aa4 <_malloc_r+0x60c>
   11600:	03c83423          	sd	t3,40(a6)
   11604:	03c83023          	sd	t3,32(a6)
   11608:	4606da63          	bgez	a3,11a7c <_malloc_r+0x5e4>
   1160c:	1ff00693          	li	a3,511
   11610:	00883583          	ld	a1,8(a6)
   11614:	3466ee63          	bltu	a3,t1,11970 <_malloc_r+0x4d8>
   11618:	00335313          	srli	t1,t1,0x3
   1161c:	00131693          	slli	a3,t1,0x1
   11620:	0026869b          	addiw	a3,a3,2
   11624:	00369693          	slli	a3,a3,0x3
   11628:	00d806b3          	add	a3,a6,a3
   1162c:	0006b503          	ld	a0,0(a3)
   11630:	4023531b          	sraiw	t1,t1,0x2
   11634:	00100613          	li	a2,1
   11638:	00661633          	sll	a2,a2,t1
   1163c:	00c5e5b3          	or	a1,a1,a2
   11640:	ff068613          	addi	a2,a3,-16
   11644:	00a7b823          	sd	a0,16(a5)
   11648:	00c7bc23          	sd	a2,24(a5)
   1164c:	00b83423          	sd	a1,8(a6)
   11650:	00f6b023          	sd	a5,0(a3)
   11654:	00f53c23          	sd	a5,24(a0)
   11658:	4028d79b          	sraiw	a5,a7,0x2
   1165c:	00100513          	li	a0,1
   11660:	00f51533          	sll	a0,a0,a5
   11664:	0aa5ec63          	bltu	a1,a0,1171c <_malloc_r+0x284>
   11668:	00b577b3          	and	a5,a0,a1
   1166c:	02079463          	bnez	a5,11694 <_malloc_r+0x1fc>
   11670:	00151513          	slli	a0,a0,0x1
   11674:	ffc8f893          	andi	a7,a7,-4
   11678:	00b577b3          	and	a5,a0,a1
   1167c:	0048889b          	addiw	a7,a7,4
   11680:	00079a63          	bnez	a5,11694 <_malloc_r+0x1fc>
   11684:	00151513          	slli	a0,a0,0x1
   11688:	00b577b3          	and	a5,a0,a1
   1168c:	0048889b          	addiw	a7,a7,4
   11690:	fe078ae3          	beqz	a5,11684 <_malloc_r+0x1ec>
   11694:	01f00e93          	li	t4,31
   11698:	00189f13          	slli	t5,a7,0x1
   1169c:	002f0f1b          	addiw	t5,t5,2
   116a0:	003f1f13          	slli	t5,t5,0x3
   116a4:	ff0f0f13          	addi	t5,t5,-16
   116a8:	01e80f33          	add	t5,a6,t5
   116ac:	000f0313          	mv	t1,t5
   116b0:	01833683          	ld	a3,24(t1)
   116b4:	00088f93          	mv	t6,a7
   116b8:	34d30263          	beq	t1,a3,119fc <_malloc_r+0x564>
   116bc:	0086b603          	ld	a2,8(a3)
   116c0:	00068793          	mv	a5,a3
   116c4:	0186b683          	ld	a3,24(a3)
   116c8:	ffc67613          	andi	a2,a2,-4
   116cc:	40e605b3          	sub	a1,a2,a4
   116d0:	34bec263          	blt	t4,a1,11a14 <_malloc_r+0x57c>
   116d4:	fe05c2e3          	bltz	a1,116b8 <_malloc_r+0x220>
   116d8:	00c78633          	add	a2,a5,a2
   116dc:	00863703          	ld	a4,8(a2)
   116e0:	0107b583          	ld	a1,16(a5)
   116e4:	00040513          	mv	a0,s0
   116e8:	00176713          	ori	a4,a4,1
   116ec:	00e63423          	sd	a4,8(a2)
   116f0:	00d5bc23          	sd	a3,24(a1)
   116f4:	00b6b823          	sd	a1,16(a3)
   116f8:	00f13423          	sd	a5,8(sp)
   116fc:	684000ef          	jal	11d80 <__malloc_unlock>
   11700:	00813783          	ld	a5,8(sp)
   11704:	01078513          	addi	a0,a5,16
   11708:	e35ff06f          	j	1153c <_malloc_r+0xa4>
   1170c:	40000513          	li	a0,1024
   11710:	04000893          	li	a7,64
   11714:	03f00e13          	li	t3,63
   11718:	e81ff06f          	j	11598 <_malloc_r+0x100>
   1171c:	01083783          	ld	a5,16(a6)
   11720:	0087b683          	ld	a3,8(a5)
   11724:	ffc6f893          	andi	a7,a3,-4
   11728:	40e88633          	sub	a2,a7,a4
   1172c:	00e8e663          	bltu	a7,a4,11738 <_malloc_r+0x2a0>
   11730:	02062693          	slti	a3,a2,32
   11734:	1a068863          	beqz	a3,118e4 <_malloc_r+0x44c>
   11738:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   1173c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11740:	fff00693          	li	a3,-1
   11744:	00b705b3          	add	a1,a4,a1
   11748:	44d60663          	beq	a2,a3,11b94 <_malloc_r+0x6fc>
   1174c:	000016b7          	lui	a3,0x1
   11750:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11754:	00d585b3          	add	a1,a1,a3
   11758:	fffff6b7          	lui	a3,0xfffff
   1175c:	00d5f5b3          	and	a1,a1,a3
   11760:	00040513          	mv	a0,s0
   11764:	03013423          	sd	a6,40(sp)
   11768:	02f13023          	sd	a5,32(sp)
   1176c:	00e13c23          	sd	a4,24(sp)
   11770:	01113823          	sd	a7,16(sp)
   11774:	00b13423          	sd	a1,8(sp)
   11778:	271000ef          	jal	121e8 <_sbrk_r>
   1177c:	fff00693          	li	a3,-1
   11780:	00813583          	ld	a1,8(sp)
   11784:	01013883          	ld	a7,16(sp)
   11788:	01813703          	ld	a4,24(sp)
   1178c:	02013783          	ld	a5,32(sp)
   11790:	02813803          	ld	a6,40(sp)
   11794:	00050313          	mv	t1,a0
   11798:	36d50663          	beq	a0,a3,11b04 <_malloc_r+0x66c>
   1179c:	011786b3          	add	a3,a5,a7
   117a0:	36d56063          	bltu	a0,a3,11b00 <_malloc_r+0x668>
   117a4:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   117a8:	000e2603          	lw	a2,0(t3)
   117ac:	00b6063b          	addw	a2,a2,a1
   117b0:	00ce2023          	sw	a2,0(t3)
   117b4:	00060513          	mv	a0,a2
   117b8:	4a668c63          	beq	a3,t1,11c70 <_malloc_r+0x7d8>
   117bc:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   117c0:	fff00613          	li	a2,-1
   117c4:	4ccf0463          	beq	t5,a2,11c8c <_malloc_r+0x7f4>
   117c8:	40d306b3          	sub	a3,t1,a3
   117cc:	00a686bb          	addw	a3,a3,a0
   117d0:	00de2023          	sw	a3,0(t3)
   117d4:	00f37e93          	andi	t4,t1,15
   117d8:	3c0e8e63          	beqz	t4,11bb4 <_malloc_r+0x71c>
   117dc:	ff037313          	andi	t1,t1,-16
   117e0:	000016b7          	lui	a3,0x1
   117e4:	01030313          	addi	t1,t1,16
   117e8:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   117ec:	00b30633          	add	a2,t1,a1
   117f0:	41d685b3          	sub	a1,a3,t4
   117f4:	40c585b3          	sub	a1,a1,a2
   117f8:	03459593          	slli	a1,a1,0x34
   117fc:	0345d593          	srli	a1,a1,0x34
   11800:	00040513          	mv	a0,s0
   11804:	05c13023          	sd	t3,64(sp)
   11808:	03013c23          	sd	a6,56(sp)
   1180c:	02f13823          	sd	a5,48(sp)
   11810:	02e13423          	sd	a4,40(sp)
   11814:	03113023          	sd	a7,32(sp)
   11818:	00613c23          	sd	t1,24(sp)
   1181c:	01d13823          	sd	t4,16(sp)
   11820:	00c13423          	sd	a2,8(sp)
   11824:	04b13423          	sd	a1,72(sp)
   11828:	1c1000ef          	jal	121e8 <_sbrk_r>
   1182c:	00050693          	mv	a3,a0
   11830:	fff00513          	li	a0,-1
   11834:	00813603          	ld	a2,8(sp)
   11838:	01013e83          	ld	t4,16(sp)
   1183c:	01813303          	ld	t1,24(sp)
   11840:	02013883          	ld	a7,32(sp)
   11844:	02813703          	ld	a4,40(sp)
   11848:	03013783          	ld	a5,48(sp)
   1184c:	03813803          	ld	a6,56(sp)
   11850:	04013e03          	ld	t3,64(sp)
   11854:	48a68663          	beq	a3,a0,11ce0 <_malloc_r+0x848>
   11858:	04813583          	ld	a1,72(sp)
   1185c:	0005851b          	sext.w	a0,a1
   11860:	000e2603          	lw	a2,0(t3)
   11864:	406686b3          	sub	a3,a3,t1
   11868:	00b686b3          	add	a3,a3,a1
   1186c:	0016e693          	ori	a3,a3,1
   11870:	00683823          	sd	t1,16(a6)
   11874:	00a6063b          	addw	a2,a2,a0
   11878:	00d33423          	sd	a3,8(t1)
   1187c:	00ce2023          	sw	a2,0(t3)
   11880:	03078e63          	beq	a5,a6,118bc <_malloc_r+0x424>
   11884:	01f00513          	li	a0,31
   11888:	41157663          	bgeu	a0,a7,11c94 <_malloc_r+0x7fc>
   1188c:	0087b583          	ld	a1,8(a5)
   11890:	fe888693          	addi	a3,a7,-24
   11894:	ff06f693          	andi	a3,a3,-16
   11898:	0015f593          	andi	a1,a1,1
   1189c:	00d5e5b3          	or	a1,a1,a3
   118a0:	00b7b423          	sd	a1,8(a5)
   118a4:	00900893          	li	a7,9
   118a8:	00d785b3          	add	a1,a5,a3
   118ac:	0115b423          	sd	a7,8(a1)
   118b0:	0115b823          	sd	a7,16(a1)
   118b4:	44d56863          	bltu	a0,a3,11d04 <_malloc_r+0x86c>
   118b8:	00833683          	ld	a3,8(t1)
   118bc:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   118c0:	00c5f463          	bgeu	a1,a2,118c8 <_malloc_r+0x430>
   118c4:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   118c8:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   118cc:	00c5f463          	bgeu	a1,a2,118d4 <_malloc_r+0x43c>
   118d0:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   118d4:	00030793          	mv	a5,t1
   118d8:	2340006f          	j	11b0c <_malloc_r+0x674>
   118dc:	00883583          	ld	a1,8(a6)
   118e0:	d79ff06f          	j	11658 <_malloc_r+0x1c0>
   118e4:	00176693          	ori	a3,a4,1
   118e8:	00d7b423          	sd	a3,8(a5)
   118ec:	00e78733          	add	a4,a5,a4
   118f0:	00166613          	ori	a2,a2,1
   118f4:	00e83823          	sd	a4,16(a6)
   118f8:	00040513          	mv	a0,s0
   118fc:	00c73423          	sd	a2,8(a4)
   11900:	00f13423          	sd	a5,8(sp)
   11904:	47c000ef          	jal	11d80 <__malloc_unlock>
   11908:	00813783          	ld	a5,8(sp)
   1190c:	05813083          	ld	ra,88(sp)
   11910:	05013403          	ld	s0,80(sp)
   11914:	01078513          	addi	a0,a5,16
   11918:	06010113          	addi	sp,sp,96
   1191c:	00008067          	ret
   11920:	0107b603          	ld	a2,16(a5)
   11924:	00d786b3          	add	a3,a5,a3
   11928:	0086b703          	ld	a4,8(a3)
   1192c:	00b63c23          	sd	a1,24(a2)
   11930:	00c5b823          	sd	a2,16(a1)
   11934:	00176713          	ori	a4,a4,1
   11938:	00040513          	mv	a0,s0
   1193c:	00e6b423          	sd	a4,8(a3)
   11940:	00f13423          	sd	a5,8(sp)
   11944:	43c000ef          	jal	11d80 <__malloc_unlock>
   11948:	00813783          	ld	a5,8(sp)
   1194c:	05813083          	ld	ra,88(sp)
   11950:	05013403          	ld	s0,80(sp)
   11954:	01078513          	addi	a0,a5,16
   11958:	06010113          	addi	sp,sp,96
   1195c:	00008067          	ret
   11960:	0186b783          	ld	a5,24(a3)
   11964:	0028889b          	addiw	a7,a7,2
   11968:	c6f68ae3          	beq	a3,a5,115dc <_malloc_r+0x144>
   1196c:	b79ff06f          	j	114e4 <_malloc_r+0x4c>
   11970:	00935693          	srli	a3,t1,0x9
   11974:	00400613          	li	a2,4
   11978:	16d67863          	bgeu	a2,a3,11ae8 <_malloc_r+0x650>
   1197c:	01400613          	li	a2,20
   11980:	28d66e63          	bltu	a2,a3,11c1c <_malloc_r+0x784>
   11984:	00169513          	slli	a0,a3,0x1
   11988:	0b85051b          	addiw	a0,a0,184
   1198c:	00351513          	slli	a0,a0,0x3
   11990:	05b6861b          	addiw	a2,a3,91
   11994:	00a80533          	add	a0,a6,a0
   11998:	00053683          	ld	a3,0(a0)
   1199c:	ff050513          	addi	a0,a0,-16
   119a0:	00d51863          	bne	a0,a3,119b0 <_malloc_r+0x518>
   119a4:	1f80006f          	j	11b9c <_malloc_r+0x704>
   119a8:	0106b683          	ld	a3,16(a3)
   119ac:	00d50863          	beq	a0,a3,119bc <_malloc_r+0x524>
   119b0:	0086b603          	ld	a2,8(a3)
   119b4:	ffc67613          	andi	a2,a2,-4
   119b8:	fec368e3          	bltu	t1,a2,119a8 <_malloc_r+0x510>
   119bc:	0186b503          	ld	a0,24(a3)
   119c0:	00a7bc23          	sd	a0,24(a5)
   119c4:	00d7b823          	sd	a3,16(a5)
   119c8:	00f53823          	sd	a5,16(a0)
   119cc:	00f6bc23          	sd	a5,24(a3)
   119d0:	c89ff06f          	j	11658 <_malloc_r+0x1c0>
   119d4:	01400693          	li	a3,20
   119d8:	14f6fa63          	bgeu	a3,a5,11b2c <_malloc_r+0x694>
   119dc:	05400693          	li	a3,84
   119e0:	24f6ee63          	bltu	a3,a5,11c3c <_malloc_r+0x7a4>
   119e4:	00c75793          	srli	a5,a4,0xc
   119e8:	06f7889b          	addiw	a7,a5,111
   119ec:	0018951b          	slliw	a0,a7,0x1
   119f0:	06e78e1b          	addiw	t3,a5,110
   119f4:	00351513          	slli	a0,a0,0x3
   119f8:	ba1ff06f          	j	11598 <_malloc_r+0x100>
   119fc:	001f8f9b          	addiw	t6,t6,1
   11a00:	003ff793          	andi	a5,t6,3
   11a04:	01030313          	addi	t1,t1,16
   11a08:	14078263          	beqz	a5,11b4c <_malloc_r+0x6b4>
   11a0c:	01833683          	ld	a3,24(t1)
   11a10:	ca9ff06f          	j	116b8 <_malloc_r+0x220>
   11a14:	0107b503          	ld	a0,16(a5)
   11a18:	00176893          	ori	a7,a4,1
   11a1c:	0117b423          	sd	a7,8(a5)
   11a20:	00d53c23          	sd	a3,24(a0)
   11a24:	00a6b823          	sd	a0,16(a3)
   11a28:	00e78733          	add	a4,a5,a4
   11a2c:	02e83423          	sd	a4,40(a6)
   11a30:	02e83023          	sd	a4,32(a6)
   11a34:	0015e693          	ori	a3,a1,1
   11a38:	00c78633          	add	a2,a5,a2
   11a3c:	01c73c23          	sd	t3,24(a4)
   11a40:	01c73823          	sd	t3,16(a4)
   11a44:	00d73423          	sd	a3,8(a4)
   11a48:	00040513          	mv	a0,s0
   11a4c:	00b63023          	sd	a1,0(a2)
   11a50:	00f13423          	sd	a5,8(sp)
   11a54:	32c000ef          	jal	11d80 <__malloc_unlock>
   11a58:	00813783          	ld	a5,8(sp)
   11a5c:	01078513          	addi	a0,a5,16
   11a60:	addff06f          	j	1153c <_malloc_r+0xa4>
   11a64:	00375893          	srli	a7,a4,0x3
   11a68:	00189693          	slli	a3,a7,0x1
   11a6c:	0026869b          	addiw	a3,a3,2
   11a70:	00369693          	slli	a3,a3,0x3
   11a74:	0008889b          	sext.w	a7,a7
   11a78:	a55ff06f          	j	114cc <_malloc_r+0x34>
   11a7c:	00678333          	add	t1,a5,t1
   11a80:	00833703          	ld	a4,8(t1)
   11a84:	00040513          	mv	a0,s0
   11a88:	00f13423          	sd	a5,8(sp)
   11a8c:	00176713          	ori	a4,a4,1
   11a90:	00e33423          	sd	a4,8(t1)
   11a94:	2ec000ef          	jal	11d80 <__malloc_unlock>
   11a98:	00813783          	ld	a5,8(sp)
   11a9c:	01078513          	addi	a0,a5,16
   11aa0:	a9dff06f          	j	1153c <_malloc_r+0xa4>
   11aa4:	00176613          	ori	a2,a4,1
   11aa8:	00c7b423          	sd	a2,8(a5)
   11aac:	00e78733          	add	a4,a5,a4
   11ab0:	02e83423          	sd	a4,40(a6)
   11ab4:	02e83023          	sd	a4,32(a6)
   11ab8:	0016e613          	ori	a2,a3,1
   11abc:	00678333          	add	t1,a5,t1
   11ac0:	01c73c23          	sd	t3,24(a4)
   11ac4:	01c73823          	sd	t3,16(a4)
   11ac8:	00c73423          	sd	a2,8(a4)
   11acc:	00040513          	mv	a0,s0
   11ad0:	00d33023          	sd	a3,0(t1)
   11ad4:	00f13423          	sd	a5,8(sp)
   11ad8:	2a8000ef          	jal	11d80 <__malloc_unlock>
   11adc:	00813783          	ld	a5,8(sp)
   11ae0:	01078513          	addi	a0,a5,16
   11ae4:	a59ff06f          	j	1153c <_malloc_r+0xa4>
   11ae8:	00635693          	srli	a3,t1,0x6
   11aec:	00169513          	slli	a0,a3,0x1
   11af0:	0725051b          	addiw	a0,a0,114
   11af4:	00351513          	slli	a0,a0,0x3
   11af8:	0386861b          	addiw	a2,a3,56
   11afc:	e99ff06f          	j	11994 <_malloc_r+0x4fc>
   11b00:	15078e63          	beq	a5,a6,11c5c <_malloc_r+0x7c4>
   11b04:	01083783          	ld	a5,16(a6)
   11b08:	0087b683          	ld	a3,8(a5)
   11b0c:	ffc6f693          	andi	a3,a3,-4
   11b10:	40e68633          	sub	a2,a3,a4
   11b14:	00e6e663          	bltu	a3,a4,11b20 <_malloc_r+0x688>
   11b18:	02062693          	slti	a3,a2,32
   11b1c:	dc0684e3          	beqz	a3,118e4 <_malloc_r+0x44c>
   11b20:	00040513          	mv	a0,s0
   11b24:	25c000ef          	jal	11d80 <__malloc_unlock>
   11b28:	a11ff06f          	j	11538 <_malloc_r+0xa0>
   11b2c:	05c7889b          	addiw	a7,a5,92
   11b30:	0018951b          	slliw	a0,a7,0x1
   11b34:	05b78e1b          	addiw	t3,a5,91
   11b38:	00351513          	slli	a0,a0,0x3
   11b3c:	a5dff06f          	j	11598 <_malloc_r+0x100>
   11b40:	010f3783          	ld	a5,16(t5)
   11b44:	fff8889b          	addiw	a7,a7,-1
   11b48:	23e79663          	bne	a5,t5,11d74 <_malloc_r+0x8dc>
   11b4c:	0038f793          	andi	a5,a7,3
   11b50:	ff0f0f13          	addi	t5,t5,-16
   11b54:	fe0796e3          	bnez	a5,11b40 <_malloc_r+0x6a8>
   11b58:	00883683          	ld	a3,8(a6)
   11b5c:	fff54793          	not	a5,a0
   11b60:	00d7f7b3          	and	a5,a5,a3
   11b64:	00f83423          	sd	a5,8(a6)
   11b68:	00151513          	slli	a0,a0,0x1
   11b6c:	fff50693          	addi	a3,a0,-1
   11b70:	baf6f6e3          	bgeu	a3,a5,1171c <_malloc_r+0x284>
   11b74:	00f576b3          	and	a3,a0,a5
   11b78:	00069a63          	bnez	a3,11b8c <_malloc_r+0x6f4>
   11b7c:	00151513          	slli	a0,a0,0x1
   11b80:	00f576b3          	and	a3,a0,a5
   11b84:	004f8f9b          	addiw	t6,t6,4
   11b88:	fe068ae3          	beqz	a3,11b7c <_malloc_r+0x6e4>
   11b8c:	000f8893          	mv	a7,t6
   11b90:	b09ff06f          	j	11698 <_malloc_r+0x200>
   11b94:	02058593          	addi	a1,a1,32
   11b98:	bc9ff06f          	j	11760 <_malloc_r+0x2c8>
   11b9c:	4026561b          	sraiw	a2,a2,0x2
   11ba0:	00100313          	li	t1,1
   11ba4:	00c31633          	sll	a2,t1,a2
   11ba8:	00c5e5b3          	or	a1,a1,a2
   11bac:	00b83423          	sd	a1,8(a6)
   11bb0:	e11ff06f          	j	119c0 <_malloc_r+0x528>
   11bb4:	00b30633          	add	a2,t1,a1
   11bb8:	40c005b3          	neg	a1,a2
   11bbc:	03459593          	slli	a1,a1,0x34
   11bc0:	0345d593          	srli	a1,a1,0x34
   11bc4:	00040513          	mv	a0,s0
   11bc8:	03c13c23          	sd	t3,56(sp)
   11bcc:	03013823          	sd	a6,48(sp)
   11bd0:	02f13423          	sd	a5,40(sp)
   11bd4:	02e13023          	sd	a4,32(sp)
   11bd8:	01113c23          	sd	a7,24(sp)
   11bdc:	00613823          	sd	t1,16(sp)
   11be0:	00c13423          	sd	a2,8(sp)
   11be4:	04b13023          	sd	a1,64(sp)
   11be8:	600000ef          	jal	121e8 <_sbrk_r>
   11bec:	00050693          	mv	a3,a0
   11bf0:	fff00513          	li	a0,-1
   11bf4:	01013303          	ld	t1,16(sp)
   11bf8:	01813883          	ld	a7,24(sp)
   11bfc:	02013703          	ld	a4,32(sp)
   11c00:	02813783          	ld	a5,40(sp)
   11c04:	03013803          	ld	a6,48(sp)
   11c08:	03813e03          	ld	t3,56(sp)
   11c0c:	0ea68463          	beq	a3,a0,11cf4 <_malloc_r+0x85c>
   11c10:	04013583          	ld	a1,64(sp)
   11c14:	0005851b          	sext.w	a0,a1
   11c18:	c49ff06f          	j	11860 <_malloc_r+0x3c8>
   11c1c:	05400613          	li	a2,84
   11c20:	08d66063          	bltu	a2,a3,11ca0 <_malloc_r+0x808>
   11c24:	00c35693          	srli	a3,t1,0xc
   11c28:	00169513          	slli	a0,a3,0x1
   11c2c:	0de5051b          	addiw	a0,a0,222
   11c30:	00351513          	slli	a0,a0,0x3
   11c34:	06e6861b          	addiw	a2,a3,110
   11c38:	d5dff06f          	j	11994 <_malloc_r+0x4fc>
   11c3c:	15400693          	li	a3,340
   11c40:	08f6e063          	bltu	a3,a5,11cc0 <_malloc_r+0x828>
   11c44:	00f75793          	srli	a5,a4,0xf
   11c48:	0787889b          	addiw	a7,a5,120
   11c4c:	0018951b          	slliw	a0,a7,0x1
   11c50:	07778e1b          	addiw	t3,a5,119
   11c54:	00351513          	slli	a0,a0,0x3
   11c58:	941ff06f          	j	11598 <_malloc_r+0x100>
   11c5c:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11c60:	000e2503          	lw	a0,0(t3)
   11c64:	00b5053b          	addw	a0,a0,a1
   11c68:	00ae2023          	sw	a0,0(t3)
   11c6c:	b51ff06f          	j	117bc <_malloc_r+0x324>
   11c70:	03431f13          	slli	t5,t1,0x34
   11c74:	b40f14e3          	bnez	t5,117bc <_malloc_r+0x324>
   11c78:	01083303          	ld	t1,16(a6)
   11c7c:	00b885b3          	add	a1,a7,a1
   11c80:	0015e693          	ori	a3,a1,1
   11c84:	00d33423          	sd	a3,8(t1)
   11c88:	c35ff06f          	j	118bc <_malloc_r+0x424>
   11c8c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11c90:	b45ff06f          	j	117d4 <_malloc_r+0x33c>
   11c94:	00100793          	li	a5,1
   11c98:	00f33423          	sd	a5,8(t1)
   11c9c:	e85ff06f          	j	11b20 <_malloc_r+0x688>
   11ca0:	15400613          	li	a2,340
   11ca4:	08d66a63          	bltu	a2,a3,11d38 <_malloc_r+0x8a0>
   11ca8:	00f35693          	srli	a3,t1,0xf
   11cac:	00169513          	slli	a0,a3,0x1
   11cb0:	0f05051b          	addiw	a0,a0,240
   11cb4:	00351513          	slli	a0,a0,0x3
   11cb8:	0776861b          	addiw	a2,a3,119
   11cbc:	cd9ff06f          	j	11994 <_malloc_r+0x4fc>
   11cc0:	55400693          	li	a3,1364
   11cc4:	08f6ea63          	bltu	a3,a5,11d58 <_malloc_r+0x8c0>
   11cc8:	01275793          	srli	a5,a4,0x12
   11ccc:	07d7889b          	addiw	a7,a5,125
   11cd0:	0018951b          	slliw	a0,a7,0x1
   11cd4:	07c78e1b          	addiw	t3,a5,124
   11cd8:	00351513          	slli	a0,a0,0x3
   11cdc:	8bdff06f          	j	11598 <_malloc_r+0x100>
   11ce0:	ff0e8e93          	addi	t4,t4,-16
   11ce4:	01d606b3          	add	a3,a2,t4
   11ce8:	00000513          	li	a0,0
   11cec:	00000593          	li	a1,0
   11cf0:	b71ff06f          	j	11860 <_malloc_r+0x3c8>
   11cf4:	00813683          	ld	a3,8(sp)
   11cf8:	00000593          	li	a1,0
   11cfc:	00000513          	li	a0,0
   11d00:	b61ff06f          	j	11860 <_malloc_r+0x3c8>
   11d04:	01078593          	addi	a1,a5,16
   11d08:	00040513          	mv	a0,s0
   11d0c:	01c13c23          	sd	t3,24(sp)
   11d10:	01013823          	sd	a6,16(sp)
   11d14:	00e13423          	sd	a4,8(sp)
   11d18:	c7cff0ef          	jal	11194 <_free_r>
   11d1c:	01013803          	ld	a6,16(sp)
   11d20:	01813e03          	ld	t3,24(sp)
   11d24:	00813703          	ld	a4,8(sp)
   11d28:	01083303          	ld	t1,16(a6)
   11d2c:	000e2603          	lw	a2,0(t3)
   11d30:	00833683          	ld	a3,8(t1)
   11d34:	b89ff06f          	j	118bc <_malloc_r+0x424>
   11d38:	55400613          	li	a2,1364
   11d3c:	02d66663          	bltu	a2,a3,11d68 <_malloc_r+0x8d0>
   11d40:	01235693          	srli	a3,t1,0x12
   11d44:	00169513          	slli	a0,a3,0x1
   11d48:	0fa5051b          	addiw	a0,a0,250
   11d4c:	00351513          	slli	a0,a0,0x3
   11d50:	07c6861b          	addiw	a2,a3,124
   11d54:	c41ff06f          	j	11994 <_malloc_r+0x4fc>
   11d58:	7f000513          	li	a0,2032
   11d5c:	07f00893          	li	a7,127
   11d60:	07e00e13          	li	t3,126
   11d64:	835ff06f          	j	11598 <_malloc_r+0x100>
   11d68:	7f000513          	li	a0,2032
   11d6c:	07e00613          	li	a2,126
   11d70:	c25ff06f          	j	11994 <_malloc_r+0x4fc>
   11d74:	00883783          	ld	a5,8(a6)
   11d78:	df1ff06f          	j	11b68 <_malloc_r+0x6d0>

0000000000011d7c <__malloc_lock>:
   11d7c:	00008067          	ret

0000000000011d80 <__malloc_unlock>:
   11d80:	00008067          	ret

0000000000011d84 <_fclose_r>:
   11d84:	fe010113          	addi	sp,sp,-32
   11d88:	00113c23          	sd	ra,24(sp)
   11d8c:	01213023          	sd	s2,0(sp)
   11d90:	02058863          	beqz	a1,11dc0 <_fclose_r+0x3c>
   11d94:	00813823          	sd	s0,16(sp)
   11d98:	00913423          	sd	s1,8(sp)
   11d9c:	00058413          	mv	s0,a1
   11da0:	00050493          	mv	s1,a0
   11da4:	00050663          	beqz	a0,11db0 <_fclose_r+0x2c>
   11da8:	04853783          	ld	a5,72(a0)
   11dac:	0c078c63          	beqz	a5,11e84 <_fclose_r+0x100>
   11db0:	01041783          	lh	a5,16(s0)
   11db4:	02079263          	bnez	a5,11dd8 <_fclose_r+0x54>
   11db8:	01013403          	ld	s0,16(sp)
   11dbc:	00813483          	ld	s1,8(sp)
   11dc0:	01813083          	ld	ra,24(sp)
   11dc4:	00000913          	li	s2,0
   11dc8:	00090513          	mv	a0,s2
   11dcc:	00013903          	ld	s2,0(sp)
   11dd0:	02010113          	addi	sp,sp,32
   11dd4:	00008067          	ret
   11dd8:	00040593          	mv	a1,s0
   11ddc:	00048513          	mv	a0,s1
   11de0:	0b8000ef          	jal	11e98 <__sflush_r>
   11de4:	05043783          	ld	a5,80(s0)
   11de8:	00050913          	mv	s2,a0
   11dec:	00078a63          	beqz	a5,11e00 <_fclose_r+0x7c>
   11df0:	03043583          	ld	a1,48(s0)
   11df4:	00048513          	mv	a0,s1
   11df8:	000780e7          	jalr	a5
   11dfc:	06054463          	bltz	a0,11e64 <_fclose_r+0xe0>
   11e00:	01045783          	lhu	a5,16(s0)
   11e04:	0807f793          	andi	a5,a5,128
   11e08:	06079663          	bnez	a5,11e74 <_fclose_r+0xf0>
   11e0c:	05843583          	ld	a1,88(s0)
   11e10:	00058c63          	beqz	a1,11e28 <_fclose_r+0xa4>
   11e14:	07440793          	addi	a5,s0,116
   11e18:	00f58663          	beq	a1,a5,11e24 <_fclose_r+0xa0>
   11e1c:	00048513          	mv	a0,s1
   11e20:	b74ff0ef          	jal	11194 <_free_r>
   11e24:	04043c23          	sd	zero,88(s0)
   11e28:	07843583          	ld	a1,120(s0)
   11e2c:	00058863          	beqz	a1,11e3c <_fclose_r+0xb8>
   11e30:	00048513          	mv	a0,s1
   11e34:	b60ff0ef          	jal	11194 <_free_r>
   11e38:	06043c23          	sd	zero,120(s0)
   11e3c:	aa5fe0ef          	jal	108e0 <__sfp_lock_acquire>
   11e40:	00041823          	sh	zero,16(s0)
   11e44:	aa1fe0ef          	jal	108e4 <__sfp_lock_release>
   11e48:	01813083          	ld	ra,24(sp)
   11e4c:	01013403          	ld	s0,16(sp)
   11e50:	00813483          	ld	s1,8(sp)
   11e54:	00090513          	mv	a0,s2
   11e58:	00013903          	ld	s2,0(sp)
   11e5c:	02010113          	addi	sp,sp,32
   11e60:	00008067          	ret
   11e64:	01045783          	lhu	a5,16(s0)
   11e68:	fff00913          	li	s2,-1
   11e6c:	0807f793          	andi	a5,a5,128
   11e70:	f8078ee3          	beqz	a5,11e0c <_fclose_r+0x88>
   11e74:	01843583          	ld	a1,24(s0)
   11e78:	00048513          	mv	a0,s1
   11e7c:	b18ff0ef          	jal	11194 <_free_r>
   11e80:	f8dff06f          	j	11e0c <_fclose_r+0x88>
   11e84:	a39fe0ef          	jal	108bc <__sinit>
   11e88:	f29ff06f          	j	11db0 <_fclose_r+0x2c>

0000000000011e8c <fclose>:
   11e8c:	00050593          	mv	a1,a0
   11e90:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e94:	ef1ff06f          	j	11d84 <_fclose_r>

0000000000011e98 <__sflush_r>:
   11e98:	01059703          	lh	a4,16(a1)
   11e9c:	fd010113          	addi	sp,sp,-48
   11ea0:	02813023          	sd	s0,32(sp)
   11ea4:	01313423          	sd	s3,8(sp)
   11ea8:	02113423          	sd	ra,40(sp)
   11eac:	00877793          	andi	a5,a4,8
   11eb0:	00058413          	mv	s0,a1
   11eb4:	00050993          	mv	s3,a0
   11eb8:	12079263          	bnez	a5,11fdc <__sflush_r+0x144>
   11ebc:	000017b7          	lui	a5,0x1
   11ec0:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11ec4:	0085a683          	lw	a3,8(a1)
   11ec8:	00f767b3          	or	a5,a4,a5
   11ecc:	00f59823          	sh	a5,16(a1)
   11ed0:	18d05c63          	blez	a3,12068 <__sflush_r+0x1d0>
   11ed4:	04843803          	ld	a6,72(s0)
   11ed8:	0e080663          	beqz	a6,11fc4 <__sflush_r+0x12c>
   11edc:	00913c23          	sd	s1,24(sp)
   11ee0:	03371693          	slli	a3,a4,0x33
   11ee4:	0009a483          	lw	s1,0(s3)
   11ee8:	0009a023          	sw	zero,0(s3)
   11eec:	1806ca63          	bltz	a3,12080 <__sflush_r+0x1e8>
   11ef0:	03043583          	ld	a1,48(s0)
   11ef4:	00000613          	li	a2,0
   11ef8:	00100693          	li	a3,1
   11efc:	00098513          	mv	a0,s3
   11f00:	000800e7          	jalr	a6
   11f04:	fff00793          	li	a5,-1
   11f08:	00050613          	mv	a2,a0
   11f0c:	1af50c63          	beq	a0,a5,120c4 <__sflush_r+0x22c>
   11f10:	01041783          	lh	a5,16(s0)
   11f14:	04843803          	ld	a6,72(s0)
   11f18:	0047f793          	andi	a5,a5,4
   11f1c:	00078e63          	beqz	a5,11f38 <__sflush_r+0xa0>
   11f20:	00842703          	lw	a4,8(s0)
   11f24:	05843783          	ld	a5,88(s0)
   11f28:	40e60633          	sub	a2,a2,a4
   11f2c:	00078663          	beqz	a5,11f38 <__sflush_r+0xa0>
   11f30:	07042783          	lw	a5,112(s0)
   11f34:	40f60633          	sub	a2,a2,a5
   11f38:	03043583          	ld	a1,48(s0)
   11f3c:	00000693          	li	a3,0
   11f40:	00098513          	mv	a0,s3
   11f44:	000800e7          	jalr	a6
   11f48:	fff00713          	li	a4,-1
   11f4c:	01041783          	lh	a5,16(s0)
   11f50:	12e51c63          	bne	a0,a4,12088 <__sflush_r+0x1f0>
   11f54:	0009a683          	lw	a3,0(s3)
   11f58:	01d00713          	li	a4,29
   11f5c:	18d76263          	bltu	a4,a3,120e0 <__sflush_r+0x248>
   11f60:	20400737          	lui	a4,0x20400
   11f64:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11f68:	00d75733          	srl	a4,a4,a3
   11f6c:	00177713          	andi	a4,a4,1
   11f70:	16070863          	beqz	a4,120e0 <__sflush_r+0x248>
   11f74:	01843683          	ld	a3,24(s0)
   11f78:	fffff737          	lui	a4,0xfffff
   11f7c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f80:	00e7f733          	and	a4,a5,a4
   11f84:	00e41823          	sh	a4,16(s0)
   11f88:	00042423          	sw	zero,8(s0)
   11f8c:	00d43023          	sd	a3,0(s0)
   11f90:	03379713          	slli	a4,a5,0x33
   11f94:	00075663          	bgez	a4,11fa0 <__sflush_r+0x108>
   11f98:	0009a783          	lw	a5,0(s3)
   11f9c:	10078863          	beqz	a5,120ac <__sflush_r+0x214>
   11fa0:	05843583          	ld	a1,88(s0)
   11fa4:	0099a023          	sw	s1,0(s3)
   11fa8:	10058a63          	beqz	a1,120bc <__sflush_r+0x224>
   11fac:	07440793          	addi	a5,s0,116
   11fb0:	00f58663          	beq	a1,a5,11fbc <__sflush_r+0x124>
   11fb4:	00098513          	mv	a0,s3
   11fb8:	9dcff0ef          	jal	11194 <_free_r>
   11fbc:	01813483          	ld	s1,24(sp)
   11fc0:	04043c23          	sd	zero,88(s0)
   11fc4:	02813083          	ld	ra,40(sp)
   11fc8:	02013403          	ld	s0,32(sp)
   11fcc:	00813983          	ld	s3,8(sp)
   11fd0:	00000513          	li	a0,0
   11fd4:	03010113          	addi	sp,sp,48
   11fd8:	00008067          	ret
   11fdc:	01213823          	sd	s2,16(sp)
   11fe0:	0185b903          	ld	s2,24(a1)
   11fe4:	08090a63          	beqz	s2,12078 <__sflush_r+0x1e0>
   11fe8:	00913c23          	sd	s1,24(sp)
   11fec:	0005b483          	ld	s1,0(a1)
   11ff0:	00377713          	andi	a4,a4,3
   11ff4:	0125b023          	sd	s2,0(a1)
   11ff8:	412484bb          	subw	s1,s1,s2
   11ffc:	00000793          	li	a5,0
   12000:	00071463          	bnez	a4,12008 <__sflush_r+0x170>
   12004:	0205a783          	lw	a5,32(a1)
   12008:	00f42623          	sw	a5,12(s0)
   1200c:	00904863          	bgtz	s1,1201c <__sflush_r+0x184>
   12010:	0640006f          	j	12074 <__sflush_r+0x1dc>
   12014:	00a90933          	add	s2,s2,a0
   12018:	04905e63          	blez	s1,12074 <__sflush_r+0x1dc>
   1201c:	04043783          	ld	a5,64(s0)
   12020:	03043583          	ld	a1,48(s0)
   12024:	00048693          	mv	a3,s1
   12028:	00090613          	mv	a2,s2
   1202c:	00098513          	mv	a0,s3
   12030:	000780e7          	jalr	a5
   12034:	40a484bb          	subw	s1,s1,a0
   12038:	fca04ee3          	bgtz	a0,12014 <__sflush_r+0x17c>
   1203c:	01045783          	lhu	a5,16(s0)
   12040:	01013903          	ld	s2,16(sp)
   12044:	0407e793          	ori	a5,a5,64
   12048:	02813083          	ld	ra,40(sp)
   1204c:	00f41823          	sh	a5,16(s0)
   12050:	02013403          	ld	s0,32(sp)
   12054:	01813483          	ld	s1,24(sp)
   12058:	00813983          	ld	s3,8(sp)
   1205c:	fff00513          	li	a0,-1
   12060:	03010113          	addi	sp,sp,48
   12064:	00008067          	ret
   12068:	0705a683          	lw	a3,112(a1)
   1206c:	e6d044e3          	bgtz	a3,11ed4 <__sflush_r+0x3c>
   12070:	f55ff06f          	j	11fc4 <__sflush_r+0x12c>
   12074:	01813483          	ld	s1,24(sp)
   12078:	01013903          	ld	s2,16(sp)
   1207c:	f49ff06f          	j	11fc4 <__sflush_r+0x12c>
   12080:	09043603          	ld	a2,144(s0)
   12084:	e95ff06f          	j	11f18 <__sflush_r+0x80>
   12088:	01843683          	ld	a3,24(s0)
   1208c:	fffff737          	lui	a4,0xfffff
   12090:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12094:	00e7f733          	and	a4,a5,a4
   12098:	00e41823          	sh	a4,16(s0)
   1209c:	00042423          	sw	zero,8(s0)
   120a0:	00d43023          	sd	a3,0(s0)
   120a4:	03379713          	slli	a4,a5,0x33
   120a8:	ee075ce3          	bgez	a4,11fa0 <__sflush_r+0x108>
   120ac:	05843583          	ld	a1,88(s0)
   120b0:	08a43823          	sd	a0,144(s0)
   120b4:	0099a023          	sw	s1,0(s3)
   120b8:	ee059ae3          	bnez	a1,11fac <__sflush_r+0x114>
   120bc:	01813483          	ld	s1,24(sp)
   120c0:	f05ff06f          	j	11fc4 <__sflush_r+0x12c>
   120c4:	0009a783          	lw	a5,0(s3)
   120c8:	e40784e3          	beqz	a5,11f10 <__sflush_r+0x78>
   120cc:	fe378713          	addi	a4,a5,-29
   120d0:	00070c63          	beqz	a4,120e8 <__sflush_r+0x250>
   120d4:	fea78793          	addi	a5,a5,-22
   120d8:	00078863          	beqz	a5,120e8 <__sflush_r+0x250>
   120dc:	01045783          	lhu	a5,16(s0)
   120e0:	0407e793          	ori	a5,a5,64
   120e4:	f65ff06f          	j	12048 <__sflush_r+0x1b0>
   120e8:	0099a023          	sw	s1,0(s3)
   120ec:	01813483          	ld	s1,24(sp)
   120f0:	ed5ff06f          	j	11fc4 <__sflush_r+0x12c>

00000000000120f4 <_fflush_r>:
   120f4:	00050793          	mv	a5,a0
   120f8:	00050663          	beqz	a0,12104 <_fflush_r+0x10>
   120fc:	04853703          	ld	a4,72(a0)
   12100:	00070e63          	beqz	a4,1211c <_fflush_r+0x28>
   12104:	01059703          	lh	a4,16(a1)
   12108:	00071663          	bnez	a4,12114 <_fflush_r+0x20>
   1210c:	00000513          	li	a0,0
   12110:	00008067          	ret
   12114:	00078513          	mv	a0,a5
   12118:	d81ff06f          	j	11e98 <__sflush_r>
   1211c:	fe010113          	addi	sp,sp,-32
   12120:	00b13423          	sd	a1,8(sp)
   12124:	00113c23          	sd	ra,24(sp)
   12128:	00a13023          	sd	a0,0(sp)
   1212c:	f90fe0ef          	jal	108bc <__sinit>
   12130:	00813583          	ld	a1,8(sp)
   12134:	00013783          	ld	a5,0(sp)
   12138:	01059703          	lh	a4,16(a1)
   1213c:	00070a63          	beqz	a4,12150 <_fflush_r+0x5c>
   12140:	01813083          	ld	ra,24(sp)
   12144:	00078513          	mv	a0,a5
   12148:	02010113          	addi	sp,sp,32
   1214c:	d4dff06f          	j	11e98 <__sflush_r>
   12150:	01813083          	ld	ra,24(sp)
   12154:	00000513          	li	a0,0
   12158:	02010113          	addi	sp,sp,32
   1215c:	00008067          	ret

0000000000012160 <fflush>:
   12160:	06050063          	beqz	a0,121c0 <fflush+0x60>
   12164:	00050593          	mv	a1,a0
   12168:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1216c:	00050663          	beqz	a0,12178 <fflush+0x18>
   12170:	04853783          	ld	a5,72(a0)
   12174:	00078c63          	beqz	a5,1218c <fflush+0x2c>
   12178:	01059783          	lh	a5,16(a1)
   1217c:	00079663          	bnez	a5,12188 <fflush+0x28>
   12180:	00000513          	li	a0,0
   12184:	00008067          	ret
   12188:	d11ff06f          	j	11e98 <__sflush_r>
   1218c:	fe010113          	addi	sp,sp,-32
   12190:	00b13423          	sd	a1,8(sp)
   12194:	00a13023          	sd	a0,0(sp)
   12198:	00113c23          	sd	ra,24(sp)
   1219c:	f20fe0ef          	jal	108bc <__sinit>
   121a0:	00813583          	ld	a1,8(sp)
   121a4:	00013503          	ld	a0,0(sp)
   121a8:	01059783          	lh	a5,16(a1)
   121ac:	02079863          	bnez	a5,121dc <fflush+0x7c>
   121b0:	01813083          	ld	ra,24(sp)
   121b4:	00000513          	li	a0,0
   121b8:	02010113          	addi	sp,sp,32
   121bc:	00008067          	ret
   121c0:	00013637          	lui	a2,0x13
   121c4:	000125b7          	lui	a1,0x12
   121c8:	00013537          	lui	a0,0x13
   121cc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   121d0:	0f458593          	addi	a1,a1,244 # 120f4 <_fflush_r>
   121d4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   121d8:	f40fe06f          	j	10918 <_fwalk_sglue>
   121dc:	01813083          	ld	ra,24(sp)
   121e0:	02010113          	addi	sp,sp,32
   121e4:	cb5ff06f          	j	11e98 <__sflush_r>

00000000000121e8 <_sbrk_r>:
   121e8:	fe010113          	addi	sp,sp,-32
   121ec:	00813823          	sd	s0,16(sp)
   121f0:	00913423          	sd	s1,8(sp)
   121f4:	00050493          	mv	s1,a0
   121f8:	00058513          	mv	a0,a1
   121fc:	00113c23          	sd	ra,24(sp)
   12200:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12204:	228000ef          	jal	1242c <_sbrk>
   12208:	fff00793          	li	a5,-1
   1220c:	00f50c63          	beq	a0,a5,12224 <_sbrk_r+0x3c>
   12210:	01813083          	ld	ra,24(sp)
   12214:	01013403          	ld	s0,16(sp)
   12218:	00813483          	ld	s1,8(sp)
   1221c:	02010113          	addi	sp,sp,32
   12220:	00008067          	ret
   12224:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12228:	fe0784e3          	beqz	a5,12210 <_sbrk_r+0x28>
   1222c:	01813083          	ld	ra,24(sp)
   12230:	01013403          	ld	s0,16(sp)
   12234:	00f4a023          	sw	a5,0(s1)
   12238:	00813483          	ld	s1,8(sp)
   1223c:	02010113          	addi	sp,sp,32
   12240:	00008067          	ret

0000000000012244 <__libc_fini_array>:
   12244:	fe010113          	addi	sp,sp,-32
   12248:	00813823          	sd	s0,16(sp)
   1224c:	000137b7          	lui	a5,0x13
   12250:	00013437          	lui	s0,0x13
   12254:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12258:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1225c:	408787b3          	sub	a5,a5,s0
   12260:	00913423          	sd	s1,8(sp)
   12264:	00113c23          	sd	ra,24(sp)
   12268:	4037d493          	srai	s1,a5,0x3
   1226c:	02048063          	beqz	s1,1228c <__libc_fini_array+0x48>
   12270:	ff840413          	addi	s0,s0,-8
   12274:	00f40433          	add	s0,s0,a5
   12278:	00043783          	ld	a5,0(s0)
   1227c:	fff48493          	addi	s1,s1,-1
   12280:	ff840413          	addi	s0,s0,-8
   12284:	000780e7          	jalr	a5
   12288:	fe0498e3          	bnez	s1,12278 <__libc_fini_array+0x34>
   1228c:	01813083          	ld	ra,24(sp)
   12290:	01013403          	ld	s0,16(sp)
   12294:	00813483          	ld	s1,8(sp)
   12298:	02010113          	addi	sp,sp,32
   1229c:	00008067          	ret

00000000000122a0 <__register_exitproc>:
   122a0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   122a4:	04078e63          	beqz	a5,12300 <__register_exitproc+0x60>
   122a8:	0087a703          	lw	a4,8(a5)
   122ac:	01f00813          	li	a6,31
   122b0:	08e84263          	blt	a6,a4,12334 <__register_exitproc+0x94>
   122b4:	02050863          	beqz	a0,122e4 <__register_exitproc+0x44>
   122b8:	00371813          	slli	a6,a4,0x3
   122bc:	01078833          	add	a6,a5,a6
   122c0:	10c83823          	sd	a2,272(a6)
   122c4:	3107a883          	lw	a7,784(a5)
   122c8:	00100613          	li	a2,1
   122cc:	00e6163b          	sllw	a2,a2,a4
   122d0:	00c8e8b3          	or	a7,a7,a2
   122d4:	3117a823          	sw	a7,784(a5)
   122d8:	20d83823          	sd	a3,528(a6)
   122dc:	00200693          	li	a3,2
   122e0:	02d50663          	beq	a0,a3,1230c <__register_exitproc+0x6c>
   122e4:	0017069b          	addiw	a3,a4,1
   122e8:	00371713          	slli	a4,a4,0x3
   122ec:	00d7a423          	sw	a3,8(a5)
   122f0:	00e787b3          	add	a5,a5,a4
   122f4:	00b7b823          	sd	a1,16(a5)
   122f8:	00000513          	li	a0,0
   122fc:	00008067          	ret
   12300:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12304:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12308:	fa1ff06f          	j	122a8 <__register_exitproc+0x8>
   1230c:	3147a683          	lw	a3,788(a5)
   12310:	00000513          	li	a0,0
   12314:	00d66633          	or	a2,a2,a3
   12318:	0017069b          	addiw	a3,a4,1
   1231c:	00371713          	slli	a4,a4,0x3
   12320:	30c7aa23          	sw	a2,788(a5)
   12324:	00d7a423          	sw	a3,8(a5)
   12328:	00e787b3          	add	a5,a5,a4
   1232c:	00b7b823          	sd	a1,16(a5)
   12330:	00008067          	ret
   12334:	fff00513          	li	a0,-1
   12338:	00008067          	ret

000000000001233c <_close>:
   1233c:	03900893          	li	a7,57
   12340:	00000073          	ecall
   12344:	00054663          	bltz	a0,12350 <_close+0x14>
   12348:	0005051b          	sext.w	a0,a0
   1234c:	00008067          	ret
   12350:	fe010113          	addi	sp,sp,-32
   12354:	00113c23          	sd	ra,24(sp)
   12358:	00a13423          	sd	a0,8(sp)
   1235c:	188000ef          	jal	124e4 <__errno>
   12360:	00813783          	ld	a5,8(sp)
   12364:	01813083          	ld	ra,24(sp)
   12368:	40f007bb          	negw	a5,a5
   1236c:	00f52023          	sw	a5,0(a0)
   12370:	fff00513          	li	a0,-1
   12374:	02010113          	addi	sp,sp,32
   12378:	00008067          	ret

000000000001237c <_exit>:
   1237c:	05d00893          	li	a7,93
   12380:	00000073          	ecall
   12384:	00054463          	bltz	a0,1238c <_exit+0x10>
   12388:	0000006f          	j	12388 <_exit+0xc>
   1238c:	fe010113          	addi	sp,sp,-32
   12390:	00113c23          	sd	ra,24(sp)
   12394:	00a13423          	sd	a0,8(sp)
   12398:	14c000ef          	jal	124e4 <__errno>
   1239c:	00813783          	ld	a5,8(sp)
   123a0:	40f007bb          	negw	a5,a5
   123a4:	00f52023          	sw	a5,0(a0)
   123a8:	0000006f          	j	123a8 <_exit+0x2c>

00000000000123ac <_lseek>:
   123ac:	03e00893          	li	a7,62
   123b0:	00000073          	ecall
   123b4:	00054463          	bltz	a0,123bc <_lseek+0x10>
   123b8:	00008067          	ret
   123bc:	fe010113          	addi	sp,sp,-32
   123c0:	00113c23          	sd	ra,24(sp)
   123c4:	00a13423          	sd	a0,8(sp)
   123c8:	11c000ef          	jal	124e4 <__errno>
   123cc:	00813783          	ld	a5,8(sp)
   123d0:	01813083          	ld	ra,24(sp)
   123d4:	40f007bb          	negw	a5,a5
   123d8:	00f52023          	sw	a5,0(a0)
   123dc:	fff00793          	li	a5,-1
   123e0:	00078513          	mv	a0,a5
   123e4:	02010113          	addi	sp,sp,32
   123e8:	00008067          	ret

00000000000123ec <_read>:
   123ec:	03f00893          	li	a7,63
   123f0:	00000073          	ecall
   123f4:	00054463          	bltz	a0,123fc <_read+0x10>
   123f8:	00008067          	ret
   123fc:	fe010113          	addi	sp,sp,-32
   12400:	00113c23          	sd	ra,24(sp)
   12404:	00a13423          	sd	a0,8(sp)
   12408:	0dc000ef          	jal	124e4 <__errno>
   1240c:	00813783          	ld	a5,8(sp)
   12410:	01813083          	ld	ra,24(sp)
   12414:	40f007bb          	negw	a5,a5
   12418:	00f52023          	sw	a5,0(a0)
   1241c:	fff00793          	li	a5,-1
   12420:	00078513          	mv	a0,a5
   12424:	02010113          	addi	sp,sp,32
   12428:	00008067          	ret

000000000001242c <_sbrk>:
   1242c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12430:	ff010113          	addi	sp,sp,-16
   12434:	00113423          	sd	ra,8(sp)
   12438:	00050713          	mv	a4,a0
   1243c:	02079063          	bnez	a5,1245c <_sbrk+0x30>
   12440:	0d600893          	li	a7,214
   12444:	00000513          	li	a0,0
   12448:	00000073          	ecall
   1244c:	fff00793          	li	a5,-1
   12450:	02f50c63          	beq	a0,a5,12488 <_sbrk+0x5c>
   12454:	00050793          	mv	a5,a0
   12458:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1245c:	00f70533          	add	a0,a4,a5
   12460:	0d600893          	li	a7,214
   12464:	00000073          	ecall
   12468:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1246c:	00f70733          	add	a4,a4,a5
   12470:	00e51c63          	bne	a0,a4,12488 <_sbrk+0x5c>
   12474:	00813083          	ld	ra,8(sp)
   12478:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1247c:	00078513          	mv	a0,a5
   12480:	01010113          	addi	sp,sp,16
   12484:	00008067          	ret
   12488:	05c000ef          	jal	124e4 <__errno>
   1248c:	00813083          	ld	ra,8(sp)
   12490:	00c00793          	li	a5,12
   12494:	00f52023          	sw	a5,0(a0)
   12498:	fff00513          	li	a0,-1
   1249c:	01010113          	addi	sp,sp,16
   124a0:	00008067          	ret

00000000000124a4 <_write>:
   124a4:	04000893          	li	a7,64
   124a8:	00000073          	ecall
   124ac:	00054463          	bltz	a0,124b4 <_write+0x10>
   124b0:	00008067          	ret
   124b4:	fe010113          	addi	sp,sp,-32
   124b8:	00113c23          	sd	ra,24(sp)
   124bc:	00a13423          	sd	a0,8(sp)
   124c0:	024000ef          	jal	124e4 <__errno>
   124c4:	00813783          	ld	a5,8(sp)
   124c8:	01813083          	ld	ra,24(sp)
   124cc:	40f007bb          	negw	a5,a5
   124d0:	00f52023          	sw	a5,0(a0)
   124d4:	fff00793          	li	a5,-1
   124d8:	00078513          	mv	a0,a5
   124dc:	02010113          	addi	sp,sp,32
   124e0:	00008067          	ret

00000000000124e4 <__errno>:
   124e4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   124e8:	00008067          	ret

Disassembly of section .rodata:

00000000000124f0 <.rodata>:
   124f0:	756d                	.insn	2, 0x756d
   124f2:	286c                	.insn	2, 0x286c
   124f4:	0000                	.insn	2, 0x0000
   124f6:	0000                	.insn	2, 0x0000
   124f8:	202c                	.insn	2, 0x202c
   124fa:	0000                	.insn	2, 0x0000
   124fc:	0000                	.insn	2, 0x0000
   124fe:	0000                	.insn	2, 0x0000
   12500:	2029                	.insn	2, 0x2029
   12502:	203d                	.insn	2, 0x203d
   12504:	0000                	.insn	2, 0x0000
   12506:	0000                	.insn	2, 0x0000
   12508:	5b20                	.insn	2, 0x5b20
   1250a:	4150                	.insn	2, 0x4150
   1250c:	0a5d5353          	.insn	4, 0x0a5d5353
	...
   12518:	5b20                	.insn	2, 0x5b20
   1251a:	4146                	.insn	2, 0x4146
   1251c:	4c49                	.insn	2, 0x4c49
   1251e:	205d                	.insn	2, 0x205d
   12520:	7865                	.insn	2, 0x7865
   12522:	6570                	.insn	2, 0x6570
   12524:	64657463          	bgeu	a0,t1,12b6c <__EH_FRAME_BEGIN__+0x60c>
   12528:	203a                	.insn	2, 0x203a
   1252a:	0000                	.insn	2, 0x0000
   1252c:	0000                	.insn	2, 0x0000
   1252e:	0000                	.insn	2, 0x0000
   12530:	000a                	.insn	2, 0x000a
   12532:	0000                	.insn	2, 0x0000
   12534:	0000                	.insn	2, 0x0000
   12536:	0000                	.insn	2, 0x0000
   12538:	756d                	.insn	2, 0x756d
   1253a:	686c                	.insn	2, 0x686c
   1253c:	7220                	.insn	2, 0x7220
   1253e:	7365                	.insn	2, 0x7365
   12540:	6c75                	.insn	2, 0x6c75
   12542:	7374                	.insn	2, 0x7374
   12544:	0a3a                	.insn	2, 0x0a3a
   12546:	0000                	.insn	2, 0x0000
   12548:	23cc0953          	.insn	4, 0x23cc0953
   1254c:	b499                	.insn	2, 0xb499
   1254e:	fffe                	.insn	2, 0xfffe
   12550:	3210                	.insn	2, 0x3210
   12552:	7654                	.insn	2, 0x7654
   12554:	ba98                	.insn	2, 0xba98
   12556:	fedc                	.insn	2, 0xfedc
   12558:	89abcdef          	jal	s11,fffffffffffce5f2 <__BSS_END__+0xfffffffffffba67a>
   1255c:	01234567          	.insn	4, 0x01234567

Disassembly of section .eh_frame:

0000000000012560 <__EH_FRAME_BEGIN__>:
   12560:	0000                	.insn	2, 0x0000
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

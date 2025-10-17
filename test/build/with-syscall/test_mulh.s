
test/build/with-syscall/test_mulh.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	635000ef          	jal	10f68 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	278020ef          	jal	123c0 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	28850513          	addi	a0,a0,648 # 12288 <__libc_fini_array>
   1015c:	7450006f          	j	110a0 <atexit>
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
   10184:	509000ef          	jal	10e8c <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	f1850513          	addi	a0,a0,-232 # 110a0 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	0f450513          	addi	a0,a0,244 # 12288 <__libc_fini_array>
   1019c:	705000ef          	jal	110a0 <atexit>
   101a0:	459000ef          	jal	10df8 <__libc_init_array>
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
   101d8:	5a050513          	addi	a0,a0,1440 # 125a0 <__EH_FRAME_BEGIN__>
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
   1020c:	5a050513          	addi	a0,a0,1440 # 125a0 <__EH_FRAME_BEGIN__>
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
   1024c:	53078513          	addi	a0,a5,1328 # 12530 <__errno+0x8>
   10250:	264000ef          	jal	104b4 <print_s>
   10254:	fd843503          	ld	a0,-40(s0)
   10258:	224000ef          	jal	1047c <print_ll>
   1025c:	000127b7          	lui	a5,0x12
   10260:	53878513          	addi	a0,a5,1336 # 12538 <__errno+0x10>
   10264:	250000ef          	jal	104b4 <print_s>
   10268:	fd043503          	ld	a0,-48(s0)
   1026c:	210000ef          	jal	1047c <print_ll>
   10270:	000127b7          	lui	a5,0x12
   10274:	54078513          	addi	a0,a5,1344 # 12540 <__errno+0x18>
   10278:	23c000ef          	jal	104b4 <print_s>
   1027c:	fe843503          	ld	a0,-24(s0)
   10280:	1fc000ef          	jal	1047c <print_ll>
   10284:	fe843703          	ld	a4,-24(s0)
   10288:	fc843783          	ld	a5,-56(s0)
   1028c:	00f71a63          	bne	a4,a5,102a0 <do_mulh+0x84>
   10290:	000127b7          	lui	a5,0x12
   10294:	54878513          	addi	a0,a5,1352 # 12548 <__errno+0x20>
   10298:	21c000ef          	jal	104b4 <print_s>
   1029c:	0240006f          	j	102c0 <do_mulh+0xa4>
   102a0:	000127b7          	lui	a5,0x12
   102a4:	55878513          	addi	a0,a5,1368 # 12558 <__errno+0x30>
   102a8:	20c000ef          	jal	104b4 <print_s>
   102ac:	fc843503          	ld	a0,-56(s0)
   102b0:	1cc000ef          	jal	1047c <print_ll>
   102b4:	000127b7          	lui	a5,0x12
   102b8:	57078513          	addi	a0,a5,1392 # 12570 <__errno+0x48>
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
   102e8:	57878513          	addi	a0,a5,1400 # 12578 <__errno+0x50>
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
   103e0:	5887b683          	ld	a3,1416(a5) # 12588 <__errno+0x60>
   103e4:	000127b7          	lui	a5,0x12
   103e8:	5907b703          	ld	a4,1424(a5) # 12590 <__errno+0x68>
   103ec:	000127b7          	lui	a5,0x12
   103f0:	5987b783          	ld	a5,1432(a5) # 12598 <__errno+0x70>
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

00000000000105b4 <find_min>:
   105b4:	fd010113          	addi	sp,sp,-48
   105b8:	02113423          	sd	ra,40(sp)
   105bc:	02813023          	sd	s0,32(sp)
   105c0:	03010413          	addi	s0,sp,48
   105c4:	fca43c23          	sd	a0,-40(s0)
   105c8:	00058793          	mv	a5,a1
   105cc:	fcf42a23          	sw	a5,-44(s0)
   105d0:	00700893          	li	a7,7
   105d4:	00000073          	ecall
   105d8:	00050793          	mv	a5,a0
   105dc:	fef42623          	sw	a5,-20(s0)
   105e0:	fec42783          	lw	a5,-20(s0)
   105e4:	00078513          	mv	a0,a5
   105e8:	02813083          	ld	ra,40(sp)
   105ec:	02013403          	ld	s0,32(sp)
   105f0:	03010113          	addi	sp,sp,48
   105f4:	00008067          	ret

00000000000105f8 <__fp_lock>:
   105f8:	00000513          	li	a0,0
   105fc:	00008067          	ret

0000000000010600 <stdio_exit_handler>:
   10600:	00013637          	lui	a2,0x13
   10604:	000125b7          	lui	a1,0x12
   10608:	00013537          	lui	a0,0x13
   1060c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10610:	dc858593          	addi	a1,a1,-568 # 11dc8 <_fclose_r>
   10614:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10618:	3440006f          	j	1095c <_fwalk_sglue>

000000000001061c <cleanup_stdio>:
   1061c:	00853583          	ld	a1,8(a0)
   10620:	ff010113          	addi	sp,sp,-16
   10624:	00813023          	sd	s0,0(sp)
   10628:	00113423          	sd	ra,8(sp)
   1062c:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10630:	00050413          	mv	s0,a0
   10634:	00f58463          	beq	a1,a5,1063c <cleanup_stdio+0x20>
   10638:	790010ef          	jal	11dc8 <_fclose_r>
   1063c:	01043583          	ld	a1,16(s0)
   10640:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10644:	00f58663          	beq	a1,a5,10650 <cleanup_stdio+0x34>
   10648:	00040513          	mv	a0,s0
   1064c:	77c010ef          	jal	11dc8 <_fclose_r>
   10650:	01843583          	ld	a1,24(s0)
   10654:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10658:	00f58c63          	beq	a1,a5,10670 <cleanup_stdio+0x54>
   1065c:	00040513          	mv	a0,s0
   10660:	00013403          	ld	s0,0(sp)
   10664:	00813083          	ld	ra,8(sp)
   10668:	01010113          	addi	sp,sp,16
   1066c:	75c0106f          	j	11dc8 <_fclose_r>
   10670:	00813083          	ld	ra,8(sp)
   10674:	00013403          	ld	s0,0(sp)
   10678:	01010113          	addi	sp,sp,16
   1067c:	00008067          	ret

0000000000010680 <__fp_unlock>:
   10680:	00000513          	li	a0,0
   10684:	00008067          	ret

0000000000010688 <global_stdio_init.part.0>:
   10688:	fd010113          	addi	sp,sp,-48
   1068c:	000107b7          	lui	a5,0x10
   10690:	02813023          	sd	s0,32(sp)
   10694:	60078793          	addi	a5,a5,1536 # 10600 <stdio_exit_handler>
   10698:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   1069c:	02113423          	sd	ra,40(sp)
   106a0:	00913c23          	sd	s1,24(sp)
   106a4:	01213823          	sd	s2,16(sp)
   106a8:	01313423          	sd	s3,8(sp)
   106ac:	01413023          	sd	s4,0(sp)
   106b0:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   106b4:	00800613          	li	a2,8
   106b8:	00400793          	li	a5,4
   106bc:	00000593          	li	a1,0
   106c0:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   106c4:	00f42823          	sw	a5,16(s0)
   106c8:	00043023          	sd	zero,0(s0)
   106cc:	00043423          	sd	zero,8(s0)
   106d0:	0a042623          	sw	zero,172(s0)
   106d4:	00043c23          	sd	zero,24(s0)
   106d8:	02042023          	sw	zero,32(s0)
   106dc:	02042423          	sw	zero,40(s0)
   106e0:	7ac000ef          	jal	10e8c <memset>
   106e4:	00011a37          	lui	s4,0x11
   106e8:	000119b7          	lui	s3,0x11
   106ec:	00011937          	lui	s2,0x11
   106f0:	000114b7          	lui	s1,0x11
   106f4:	000107b7          	lui	a5,0x10
   106f8:	a28a0a13          	addi	s4,s4,-1496 # 10a28 <__sread>
   106fc:	a8c98993          	addi	s3,s3,-1396 # 10a8c <__swrite>
   10700:	b1490913          	addi	s2,s2,-1260 # 10b14 <__sseek>
   10704:	b7848493          	addi	s1,s1,-1160 # 10b78 <__sclose>
   10708:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1070c:	00800613          	li	a2,8
   10710:	00000593          	li	a1,0
   10714:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10718:	0cf42023          	sw	a5,192(s0)
   1071c:	03443c23          	sd	s4,56(s0)
   10720:	05343023          	sd	s3,64(s0)
   10724:	05243423          	sd	s2,72(s0)
   10728:	04943823          	sd	s1,80(s0)
   1072c:	02843823          	sd	s0,48(s0)
   10730:	0a043823          	sd	zero,176(s0)
   10734:	0a043c23          	sd	zero,184(s0)
   10738:	14042e23          	sw	zero,348(s0)
   1073c:	0c043423          	sd	zero,200(s0)
   10740:	0c042823          	sw	zero,208(s0)
   10744:	0c042c23          	sw	zero,216(s0)
   10748:	744000ef          	jal	10e8c <memset>
   1074c:	000207b7          	lui	a5,0x20
   10750:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10754:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10758:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   1075c:	00800613          	li	a2,8
   10760:	00000593          	li	a1,0
   10764:	0f443423          	sd	s4,232(s0)
   10768:	0f343823          	sd	s3,240(s0)
   1076c:	0f243c23          	sd	s2,248(s0)
   10770:	10943023          	sd	s1,256(s0)
   10774:	16f42823          	sw	a5,368(s0)
   10778:	16043023          	sd	zero,352(s0)
   1077c:	16043423          	sd	zero,360(s0)
   10780:	20042623          	sw	zero,524(s0)
   10784:	16043c23          	sd	zero,376(s0)
   10788:	18042023          	sw	zero,384(s0)
   1078c:	18042423          	sw	zero,392(s0)
   10790:	0ee43023          	sd	a4,224(s0)
   10794:	6f8000ef          	jal	10e8c <memset>
   10798:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1079c:	19443c23          	sd	s4,408(s0)
   107a0:	1b343023          	sd	s3,416(s0)
   107a4:	1b243423          	sd	s2,424(s0)
   107a8:	1a943823          	sd	s1,432(s0)
   107ac:	02813083          	ld	ra,40(sp)
   107b0:	18f43823          	sd	a5,400(s0)
   107b4:	02013403          	ld	s0,32(sp)
   107b8:	01813483          	ld	s1,24(sp)
   107bc:	01013903          	ld	s2,16(sp)
   107c0:	00813983          	ld	s3,8(sp)
   107c4:	00013a03          	ld	s4,0(sp)
   107c8:	03010113          	addi	sp,sp,48
   107cc:	00008067          	ret

00000000000107d0 <__sfp>:
   107d0:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   107d4:	fd010113          	addi	sp,sp,-48
   107d8:	00913c23          	sd	s1,24(sp)
   107dc:	02113423          	sd	ra,40(sp)
   107e0:	02813023          	sd	s0,32(sp)
   107e4:	00050493          	mv	s1,a0
   107e8:	10078063          	beqz	a5,108e8 <__sfp+0x118>
   107ec:	000136b7          	lui	a3,0x13
   107f0:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   107f4:	0b000813          	li	a6,176
   107f8:	0086a703          	lw	a4,8(a3)
   107fc:	08e05463          	blez	a4,10884 <__sfp+0xb4>
   10800:	02071713          	slli	a4,a4,0x20
   10804:	02075713          	srli	a4,a4,0x20
   10808:	03070733          	mul	a4,a4,a6
   1080c:	0106b403          	ld	s0,16(a3)
   10810:	00e40733          	add	a4,s0,a4
   10814:	00c0006f          	j	10820 <__sfp+0x50>
   10818:	0b040413          	addi	s0,s0,176
   1081c:	06e40463          	beq	s0,a4,10884 <__sfp+0xb4>
   10820:	01041783          	lh	a5,16(s0)
   10824:	fe079ae3          	bnez	a5,10818 <__sfp+0x48>
   10828:	ffff07b7          	lui	a5,0xffff0
   1082c:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10830:	00f42823          	sw	a5,16(s0)
   10834:	0a042623          	sw	zero,172(s0)
   10838:	00043023          	sd	zero,0(s0)
   1083c:	00043423          	sd	zero,8(s0)
   10840:	00043c23          	sd	zero,24(s0)
   10844:	02042023          	sw	zero,32(s0)
   10848:	02042423          	sw	zero,40(s0)
   1084c:	00800613          	li	a2,8
   10850:	00000593          	li	a1,0
   10854:	0a440513          	addi	a0,s0,164
   10858:	634000ef          	jal	10e8c <memset>
   1085c:	04043c23          	sd	zero,88(s0)
   10860:	06042023          	sw	zero,96(s0)
   10864:	06043c23          	sd	zero,120(s0)
   10868:	08042023          	sw	zero,128(s0)
   1086c:	02813083          	ld	ra,40(sp)
   10870:	00040513          	mv	a0,s0
   10874:	02013403          	ld	s0,32(sp)
   10878:	01813483          	ld	s1,24(sp)
   1087c:	03010113          	addi	sp,sp,48
   10880:	00008067          	ret
   10884:	0006b403          	ld	s0,0(a3)
   10888:	00040663          	beqz	s0,10894 <__sfp+0xc4>
   1088c:	00040693          	mv	a3,s0
   10890:	f69ff06f          	j	107f8 <__sfp+0x28>
   10894:	2d800593          	li	a1,728
   10898:	00048513          	mv	a0,s1
   1089c:	00d13423          	sd	a3,8(sp)
   108a0:	43d000ef          	jal	114dc <_malloc_r>
   108a4:	00813683          	ld	a3,8(sp)
   108a8:	00050413          	mv	s0,a0
   108ac:	04050263          	beqz	a0,108f0 <__sfp+0x120>
   108b0:	00400793          	li	a5,4
   108b4:	00f52423          	sw	a5,8(a0)
   108b8:	01850513          	addi	a0,a0,24
   108bc:	00043023          	sd	zero,0(s0)
   108c0:	00a43823          	sd	a0,16(s0)
   108c4:	2c000613          	li	a2,704
   108c8:	00000593          	li	a1,0
   108cc:	00d13423          	sd	a3,8(sp)
   108d0:	5bc000ef          	jal	10e8c <memset>
   108d4:	00813683          	ld	a3,8(sp)
   108d8:	0b000813          	li	a6,176
   108dc:	0086b023          	sd	s0,0(a3)
   108e0:	00040693          	mv	a3,s0
   108e4:	f15ff06f          	j	107f8 <__sfp+0x28>
   108e8:	da1ff0ef          	jal	10688 <global_stdio_init.part.0>
   108ec:	f01ff06f          	j	107ec <__sfp+0x1c>
   108f0:	0006b023          	sd	zero,0(a3)
   108f4:	00c00793          	li	a5,12
   108f8:	00f4a023          	sw	a5,0(s1)
   108fc:	f71ff06f          	j	1086c <__sfp+0x9c>

0000000000010900 <__sinit>:
   10900:	04853783          	ld	a5,72(a0)
   10904:	00078463          	beqz	a5,1090c <__sinit+0xc>
   10908:	00008067          	ret
   1090c:	000107b7          	lui	a5,0x10
   10910:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10914:	61c78793          	addi	a5,a5,1564 # 1061c <cleanup_stdio>
   10918:	04f53423          	sd	a5,72(a0)
   1091c:	fe0716e3          	bnez	a4,10908 <__sinit+0x8>
   10920:	d69ff06f          	j	10688 <global_stdio_init.part.0>

0000000000010924 <__sfp_lock_acquire>:
   10924:	00008067          	ret

0000000000010928 <__sfp_lock_release>:
   10928:	00008067          	ret

000000000001092c <__fp_lock_all>:
   1092c:	00013637          	lui	a2,0x13
   10930:	000105b7          	lui	a1,0x10
   10934:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10938:	5f858593          	addi	a1,a1,1528 # 105f8 <__fp_lock>
   1093c:	00000513          	li	a0,0
   10940:	01c0006f          	j	1095c <_fwalk_sglue>

0000000000010944 <__fp_unlock_all>:
   10944:	00013637          	lui	a2,0x13
   10948:	000105b7          	lui	a1,0x10
   1094c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10950:	68058593          	addi	a1,a1,1664 # 10680 <__fp_unlock>
   10954:	00000513          	li	a0,0
   10958:	0040006f          	j	1095c <_fwalk_sglue>

000000000001095c <_fwalk_sglue>:
   1095c:	fb010113          	addi	sp,sp,-80
   10960:	03213823          	sd	s2,48(sp)
   10964:	03313423          	sd	s3,40(sp)
   10968:	03413023          	sd	s4,32(sp)
   1096c:	01513c23          	sd	s5,24(sp)
   10970:	01613823          	sd	s6,16(sp)
   10974:	01713423          	sd	s7,8(sp)
   10978:	01813023          	sd	s8,0(sp)
   1097c:	04113423          	sd	ra,72(sp)
   10980:	04813023          	sd	s0,64(sp)
   10984:	02913c23          	sd	s1,56(sp)
   10988:	00060993          	mv	s3,a2
   1098c:	00050a93          	mv	s5,a0
   10990:	00058b13          	mv	s6,a1
   10994:	00000913          	li	s2,0
   10998:	0b000b93          	li	s7,176
   1099c:	00100c13          	li	s8,1
   109a0:	fff00a13          	li	s4,-1
   109a4:	0089a483          	lw	s1,8(s3)
   109a8:	04905263          	blez	s1,109ec <_fwalk_sglue+0x90>
   109ac:	02049493          	slli	s1,s1,0x20
   109b0:	0204d493          	srli	s1,s1,0x20
   109b4:	037484b3          	mul	s1,s1,s7
   109b8:	0109b403          	ld	s0,16(s3)
   109bc:	009404b3          	add	s1,s0,s1
   109c0:	01045783          	lhu	a5,16(s0)
   109c4:	02fc7063          	bgeu	s8,a5,109e4 <_fwalk_sglue+0x88>
   109c8:	01241783          	lh	a5,18(s0)
   109cc:	00040593          	mv	a1,s0
   109d0:	000a8513          	mv	a0,s5
   109d4:	01478863          	beq	a5,s4,109e4 <_fwalk_sglue+0x88>
   109d8:	000b00e7          	jalr	s6
   109dc:	01256933          	or	s2,a0,s2
   109e0:	0009091b          	sext.w	s2,s2
   109e4:	0b040413          	addi	s0,s0,176
   109e8:	fc941ce3          	bne	s0,s1,109c0 <_fwalk_sglue+0x64>
   109ec:	0009b983          	ld	s3,0(s3)
   109f0:	fa099ae3          	bnez	s3,109a4 <_fwalk_sglue+0x48>
   109f4:	04813083          	ld	ra,72(sp)
   109f8:	04013403          	ld	s0,64(sp)
   109fc:	03813483          	ld	s1,56(sp)
   10a00:	02813983          	ld	s3,40(sp)
   10a04:	02013a03          	ld	s4,32(sp)
   10a08:	01813a83          	ld	s5,24(sp)
   10a0c:	01013b03          	ld	s6,16(sp)
   10a10:	00813b83          	ld	s7,8(sp)
   10a14:	00013c03          	ld	s8,0(sp)
   10a18:	00090513          	mv	a0,s2
   10a1c:	03013903          	ld	s2,48(sp)
   10a20:	05010113          	addi	sp,sp,80
   10a24:	00008067          	ret

0000000000010a28 <__sread>:
   10a28:	ff010113          	addi	sp,sp,-16
   10a2c:	00813023          	sd	s0,0(sp)
   10a30:	00058413          	mv	s0,a1
   10a34:	01259583          	lh	a1,18(a1)
   10a38:	00113423          	sd	ra,8(sp)
   10a3c:	2ec000ef          	jal	10d28 <_read_r>
   10a40:	02054063          	bltz	a0,10a60 <__sread+0x38>
   10a44:	09043783          	ld	a5,144(s0)
   10a48:	00813083          	ld	ra,8(sp)
   10a4c:	00a787b3          	add	a5,a5,a0
   10a50:	08f43823          	sd	a5,144(s0)
   10a54:	00013403          	ld	s0,0(sp)
   10a58:	01010113          	addi	sp,sp,16
   10a5c:	00008067          	ret
   10a60:	01045783          	lhu	a5,16(s0)
   10a64:	fffff737          	lui	a4,0xfffff
   10a68:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a6c:	00e7f7b3          	and	a5,a5,a4
   10a70:	00813083          	ld	ra,8(sp)
   10a74:	00f41823          	sh	a5,16(s0)
   10a78:	00013403          	ld	s0,0(sp)
   10a7c:	01010113          	addi	sp,sp,16
   10a80:	00008067          	ret

0000000000010a84 <__seofread>:
   10a84:	00000513          	li	a0,0
   10a88:	00008067          	ret

0000000000010a8c <__swrite>:
   10a8c:	01059783          	lh	a5,16(a1)
   10a90:	fd010113          	addi	sp,sp,-48
   10a94:	00068313          	mv	t1,a3
   10a98:	02113423          	sd	ra,40(sp)
   10a9c:	1007f693          	andi	a3,a5,256
   10aa0:	00058713          	mv	a4,a1
   10aa4:	00060893          	mv	a7,a2
   10aa8:	00050813          	mv	a6,a0
   10aac:	02069863          	bnez	a3,10adc <__swrite+0x50>
   10ab0:	fffff6b7          	lui	a3,0xfffff
   10ab4:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10ab8:	02813083          	ld	ra,40(sp)
   10abc:	00d7f7b3          	and	a5,a5,a3
   10ac0:	01271583          	lh	a1,18(a4)
   10ac4:	00f71823          	sh	a5,16(a4)
   10ac8:	00030693          	mv	a3,t1
   10acc:	00088613          	mv	a2,a7
   10ad0:	00080513          	mv	a0,a6
   10ad4:	03010113          	addi	sp,sp,48
   10ad8:	2b80006f          	j	10d90 <_write_r>
   10adc:	01259583          	lh	a1,18(a1)
   10ae0:	00c13823          	sd	a2,16(sp)
   10ae4:	00200693          	li	a3,2
   10ae8:	00000613          	li	a2,0
   10aec:	00613c23          	sd	t1,24(sp)
   10af0:	00e13023          	sd	a4,0(sp)
   10af4:	00a13423          	sd	a0,8(sp)
   10af8:	1c8000ef          	jal	10cc0 <_lseek_r>
   10afc:	00013703          	ld	a4,0(sp)
   10b00:	01813303          	ld	t1,24(sp)
   10b04:	01013883          	ld	a7,16(sp)
   10b08:	01071783          	lh	a5,16(a4)
   10b0c:	00813803          	ld	a6,8(sp)
   10b10:	fa1ff06f          	j	10ab0 <__swrite+0x24>

0000000000010b14 <__sseek>:
   10b14:	ff010113          	addi	sp,sp,-16
   10b18:	00813023          	sd	s0,0(sp)
   10b1c:	00058413          	mv	s0,a1
   10b20:	01259583          	lh	a1,18(a1)
   10b24:	00113423          	sd	ra,8(sp)
   10b28:	198000ef          	jal	10cc0 <_lseek_r>
   10b2c:	fff00713          	li	a4,-1
   10b30:	01041783          	lh	a5,16(s0)
   10b34:	02e50263          	beq	a0,a4,10b58 <__sseek+0x44>
   10b38:	00001737          	lui	a4,0x1
   10b3c:	00e7e7b3          	or	a5,a5,a4
   10b40:	00813083          	ld	ra,8(sp)
   10b44:	08a43823          	sd	a0,144(s0)
   10b48:	00f41823          	sh	a5,16(s0)
   10b4c:	00013403          	ld	s0,0(sp)
   10b50:	01010113          	addi	sp,sp,16
   10b54:	00008067          	ret
   10b58:	80050713          	addi	a4,a0,-2048
   10b5c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10b60:	00e7f7b3          	and	a5,a5,a4
   10b64:	00813083          	ld	ra,8(sp)
   10b68:	00f41823          	sh	a5,16(s0)
   10b6c:	00013403          	ld	s0,0(sp)
   10b70:	01010113          	addi	sp,sp,16
   10b74:	00008067          	ret

0000000000010b78 <__sclose>:
   10b78:	01259583          	lh	a1,18(a1)
   10b7c:	0040006f          	j	10b80 <_close_r>

0000000000010b80 <_close_r>:
   10b80:	fe010113          	addi	sp,sp,-32
   10b84:	00813823          	sd	s0,16(sp)
   10b88:	00913423          	sd	s1,8(sp)
   10b8c:	00050493          	mv	s1,a0
   10b90:	00058513          	mv	a0,a1
   10b94:	00113c23          	sd	ra,24(sp)
   10b98:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b9c:	7e4010ef          	jal	12380 <_close>
   10ba0:	fff00793          	li	a5,-1
   10ba4:	00f50c63          	beq	a0,a5,10bbc <_close_r+0x3c>
   10ba8:	01813083          	ld	ra,24(sp)
   10bac:	01013403          	ld	s0,16(sp)
   10bb0:	00813483          	ld	s1,8(sp)
   10bb4:	02010113          	addi	sp,sp,32
   10bb8:	00008067          	ret
   10bbc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bc0:	fe0784e3          	beqz	a5,10ba8 <_close_r+0x28>
   10bc4:	01813083          	ld	ra,24(sp)
   10bc8:	01013403          	ld	s0,16(sp)
   10bcc:	00f4a023          	sw	a5,0(s1)
   10bd0:	00813483          	ld	s1,8(sp)
   10bd4:	02010113          	addi	sp,sp,32
   10bd8:	00008067          	ret

0000000000010bdc <_reclaim_reent>:
   10bdc:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10be0:	0ca78e63          	beq	a5,a0,10cbc <_reclaim_reent+0xe0>
   10be4:	06853583          	ld	a1,104(a0)
   10be8:	fd010113          	addi	sp,sp,-48
   10bec:	00913c23          	sd	s1,24(sp)
   10bf0:	02113423          	sd	ra,40(sp)
   10bf4:	02813023          	sd	s0,32(sp)
   10bf8:	00050493          	mv	s1,a0
   10bfc:	04058863          	beqz	a1,10c4c <_reclaim_reent+0x70>
   10c00:	01213823          	sd	s2,16(sp)
   10c04:	01313423          	sd	s3,8(sp)
   10c08:	00000913          	li	s2,0
   10c0c:	20000993          	li	s3,512
   10c10:	012587b3          	add	a5,a1,s2
   10c14:	0007b403          	ld	s0,0(a5)
   10c18:	00040e63          	beqz	s0,10c34 <_reclaim_reent+0x58>
   10c1c:	00040593          	mv	a1,s0
   10c20:	00043403          	ld	s0,0(s0)
   10c24:	00048513          	mv	a0,s1
   10c28:	5b0000ef          	jal	111d8 <_free_r>
   10c2c:	fe0418e3          	bnez	s0,10c1c <_reclaim_reent+0x40>
   10c30:	0684b583          	ld	a1,104(s1)
   10c34:	00890913          	addi	s2,s2,8
   10c38:	fd391ce3          	bne	s2,s3,10c10 <_reclaim_reent+0x34>
   10c3c:	00048513          	mv	a0,s1
   10c40:	598000ef          	jal	111d8 <_free_r>
   10c44:	01013903          	ld	s2,16(sp)
   10c48:	00813983          	ld	s3,8(sp)
   10c4c:	0504b583          	ld	a1,80(s1)
   10c50:	00058663          	beqz	a1,10c5c <_reclaim_reent+0x80>
   10c54:	00048513          	mv	a0,s1
   10c58:	580000ef          	jal	111d8 <_free_r>
   10c5c:	0604b403          	ld	s0,96(s1)
   10c60:	00040c63          	beqz	s0,10c78 <_reclaim_reent+0x9c>
   10c64:	00040593          	mv	a1,s0
   10c68:	00043403          	ld	s0,0(s0)
   10c6c:	00048513          	mv	a0,s1
   10c70:	568000ef          	jal	111d8 <_free_r>
   10c74:	fe0418e3          	bnez	s0,10c64 <_reclaim_reent+0x88>
   10c78:	0784b583          	ld	a1,120(s1)
   10c7c:	00058663          	beqz	a1,10c88 <_reclaim_reent+0xac>
   10c80:	00048513          	mv	a0,s1
   10c84:	554000ef          	jal	111d8 <_free_r>
   10c88:	0484b783          	ld	a5,72(s1)
   10c8c:	00078e63          	beqz	a5,10ca8 <_reclaim_reent+0xcc>
   10c90:	02013403          	ld	s0,32(sp)
   10c94:	02813083          	ld	ra,40(sp)
   10c98:	00048513          	mv	a0,s1
   10c9c:	01813483          	ld	s1,24(sp)
   10ca0:	03010113          	addi	sp,sp,48
   10ca4:	00078067          	jr	a5
   10ca8:	02813083          	ld	ra,40(sp)
   10cac:	02013403          	ld	s0,32(sp)
   10cb0:	01813483          	ld	s1,24(sp)
   10cb4:	03010113          	addi	sp,sp,48
   10cb8:	00008067          	ret
   10cbc:	00008067          	ret

0000000000010cc0 <_lseek_r>:
   10cc0:	fe010113          	addi	sp,sp,-32
   10cc4:	00058793          	mv	a5,a1
   10cc8:	00813823          	sd	s0,16(sp)
   10ccc:	00913423          	sd	s1,8(sp)
   10cd0:	00060593          	mv	a1,a2
   10cd4:	00050493          	mv	s1,a0
   10cd8:	00068613          	mv	a2,a3
   10cdc:	00078513          	mv	a0,a5
   10ce0:	00113c23          	sd	ra,24(sp)
   10ce4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10ce8:	708010ef          	jal	123f0 <_lseek>
   10cec:	fff00793          	li	a5,-1
   10cf0:	00f50c63          	beq	a0,a5,10d08 <_lseek_r+0x48>
   10cf4:	01813083          	ld	ra,24(sp)
   10cf8:	01013403          	ld	s0,16(sp)
   10cfc:	00813483          	ld	s1,8(sp)
   10d00:	02010113          	addi	sp,sp,32
   10d04:	00008067          	ret
   10d08:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d0c:	fe0784e3          	beqz	a5,10cf4 <_lseek_r+0x34>
   10d10:	01813083          	ld	ra,24(sp)
   10d14:	01013403          	ld	s0,16(sp)
   10d18:	00f4a023          	sw	a5,0(s1)
   10d1c:	00813483          	ld	s1,8(sp)
   10d20:	02010113          	addi	sp,sp,32
   10d24:	00008067          	ret

0000000000010d28 <_read_r>:
   10d28:	fe010113          	addi	sp,sp,-32
   10d2c:	00058793          	mv	a5,a1
   10d30:	00813823          	sd	s0,16(sp)
   10d34:	00913423          	sd	s1,8(sp)
   10d38:	00060593          	mv	a1,a2
   10d3c:	00050493          	mv	s1,a0
   10d40:	00068613          	mv	a2,a3
   10d44:	00078513          	mv	a0,a5
   10d48:	00113c23          	sd	ra,24(sp)
   10d4c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d50:	6e0010ef          	jal	12430 <_read>
   10d54:	fff00793          	li	a5,-1
   10d58:	00f50c63          	beq	a0,a5,10d70 <_read_r+0x48>
   10d5c:	01813083          	ld	ra,24(sp)
   10d60:	01013403          	ld	s0,16(sp)
   10d64:	00813483          	ld	s1,8(sp)
   10d68:	02010113          	addi	sp,sp,32
   10d6c:	00008067          	ret
   10d70:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d74:	fe0784e3          	beqz	a5,10d5c <_read_r+0x34>
   10d78:	01813083          	ld	ra,24(sp)
   10d7c:	01013403          	ld	s0,16(sp)
   10d80:	00f4a023          	sw	a5,0(s1)
   10d84:	00813483          	ld	s1,8(sp)
   10d88:	02010113          	addi	sp,sp,32
   10d8c:	00008067          	ret

0000000000010d90 <_write_r>:
   10d90:	fe010113          	addi	sp,sp,-32
   10d94:	00058793          	mv	a5,a1
   10d98:	00813823          	sd	s0,16(sp)
   10d9c:	00913423          	sd	s1,8(sp)
   10da0:	00060593          	mv	a1,a2
   10da4:	00050493          	mv	s1,a0
   10da8:	00068613          	mv	a2,a3
   10dac:	00078513          	mv	a0,a5
   10db0:	00113c23          	sd	ra,24(sp)
   10db4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10db8:	730010ef          	jal	124e8 <_write>
   10dbc:	fff00793          	li	a5,-1
   10dc0:	00f50c63          	beq	a0,a5,10dd8 <_write_r+0x48>
   10dc4:	01813083          	ld	ra,24(sp)
   10dc8:	01013403          	ld	s0,16(sp)
   10dcc:	00813483          	ld	s1,8(sp)
   10dd0:	02010113          	addi	sp,sp,32
   10dd4:	00008067          	ret
   10dd8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10ddc:	fe0784e3          	beqz	a5,10dc4 <_write_r+0x34>
   10de0:	01813083          	ld	ra,24(sp)
   10de4:	01013403          	ld	s0,16(sp)
   10de8:	00f4a023          	sw	a5,0(s1)
   10dec:	00813483          	ld	s1,8(sp)
   10df0:	02010113          	addi	sp,sp,32
   10df4:	00008067          	ret

0000000000010df8 <__libc_init_array>:
   10df8:	fe010113          	addi	sp,sp,-32
   10dfc:	00813823          	sd	s0,16(sp)
   10e00:	01213023          	sd	s2,0(sp)
   10e04:	00013437          	lui	s0,0x13
   10e08:	00013937          	lui	s2,0x13
   10e0c:	00113c23          	sd	ra,24(sp)
   10e10:	00913423          	sd	s1,8(sp)
   10e14:	00090913          	mv	s2,s2
   10e18:	00040413          	mv	s0,s0
   10e1c:	02890263          	beq	s2,s0,10e40 <__libc_init_array+0x48>
   10e20:	40890933          	sub	s2,s2,s0
   10e24:	40395913          	srai	s2,s2,0x3
   10e28:	00000493          	li	s1,0
   10e2c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10e30:	00148493          	addi	s1,s1,1
   10e34:	00840413          	addi	s0,s0,8
   10e38:	000780e7          	jalr	a5
   10e3c:	ff24e8e3          	bltu	s1,s2,10e2c <__libc_init_array+0x34>
   10e40:	00013937          	lui	s2,0x13
   10e44:	00013437          	lui	s0,0x13
   10e48:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10e4c:	00040413          	mv	s0,s0
   10e50:	02890263          	beq	s2,s0,10e74 <__libc_init_array+0x7c>
   10e54:	40890933          	sub	s2,s2,s0
   10e58:	40395913          	srai	s2,s2,0x3
   10e5c:	00000493          	li	s1,0
   10e60:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10e64:	00148493          	addi	s1,s1,1
   10e68:	00840413          	addi	s0,s0,8
   10e6c:	000780e7          	jalr	a5
   10e70:	ff24e8e3          	bltu	s1,s2,10e60 <__libc_init_array+0x68>
   10e74:	01813083          	ld	ra,24(sp)
   10e78:	01013403          	ld	s0,16(sp)
   10e7c:	00813483          	ld	s1,8(sp)
   10e80:	00013903          	ld	s2,0(sp)
   10e84:	02010113          	addi	sp,sp,32
   10e88:	00008067          	ret

0000000000010e8c <memset>:
   10e8c:	00f00313          	li	t1,15
   10e90:	00050713          	mv	a4,a0
   10e94:	02c37a63          	bgeu	t1,a2,10ec8 <memset+0x3c>
   10e98:	00f77793          	andi	a5,a4,15
   10e9c:	0a079063          	bnez	a5,10f3c <memset+0xb0>
   10ea0:	06059e63          	bnez	a1,10f1c <memset+0x90>
   10ea4:	ff067693          	andi	a3,a2,-16
   10ea8:	00f67613          	andi	a2,a2,15
   10eac:	00e686b3          	add	a3,a3,a4
   10eb0:	00b73023          	sd	a1,0(a4)
   10eb4:	00b73423          	sd	a1,8(a4)
   10eb8:	01070713          	addi	a4,a4,16
   10ebc:	fed76ae3          	bltu	a4,a3,10eb0 <memset+0x24>
   10ec0:	00061463          	bnez	a2,10ec8 <memset+0x3c>
   10ec4:	00008067          	ret
   10ec8:	40c306b3          	sub	a3,t1,a2
   10ecc:	00269693          	slli	a3,a3,0x2
   10ed0:	00000297          	auipc	t0,0x0
   10ed4:	005686b3          	add	a3,a3,t0
   10ed8:	00c68067          	jr	12(a3)
   10edc:	00b70723          	sb	a1,14(a4)
   10ee0:	00b706a3          	sb	a1,13(a4)
   10ee4:	00b70623          	sb	a1,12(a4)
   10ee8:	00b705a3          	sb	a1,11(a4)
   10eec:	00b70523          	sb	a1,10(a4)
   10ef0:	00b704a3          	sb	a1,9(a4)
   10ef4:	00b70423          	sb	a1,8(a4)
   10ef8:	00b703a3          	sb	a1,7(a4)
   10efc:	00b70323          	sb	a1,6(a4)
   10f00:	00b702a3          	sb	a1,5(a4)
   10f04:	00b70223          	sb	a1,4(a4)
   10f08:	00b701a3          	sb	a1,3(a4)
   10f0c:	00b70123          	sb	a1,2(a4)
   10f10:	00b700a3          	sb	a1,1(a4)
   10f14:	00b70023          	sb	a1,0(a4)
   10f18:	00008067          	ret
   10f1c:	0ff5f593          	zext.b	a1,a1
   10f20:	00859693          	slli	a3,a1,0x8
   10f24:	00d5e5b3          	or	a1,a1,a3
   10f28:	01059693          	slli	a3,a1,0x10
   10f2c:	00d5e5b3          	or	a1,a1,a3
   10f30:	02059693          	slli	a3,a1,0x20
   10f34:	00d5e5b3          	or	a1,a1,a3
   10f38:	f6dff06f          	j	10ea4 <memset+0x18>
   10f3c:	00279693          	slli	a3,a5,0x2
   10f40:	00000297          	auipc	t0,0x0
   10f44:	005686b3          	add	a3,a3,t0
   10f48:	00008293          	mv	t0,ra
   10f4c:	f98680e7          	jalr	-104(a3)
   10f50:	00028093          	mv	ra,t0
   10f54:	ff078793          	addi	a5,a5,-16
   10f58:	40f70733          	sub	a4,a4,a5
   10f5c:	00f60633          	add	a2,a2,a5
   10f60:	f6c374e3          	bgeu	t1,a2,10ec8 <memset+0x3c>
   10f64:	f3dff06f          	j	10ea0 <memset+0x14>

0000000000010f68 <__call_exitprocs>:
   10f68:	fb010113          	addi	sp,sp,-80
   10f6c:	03413023          	sd	s4,32(sp)
   10f70:	03213823          	sd	s2,48(sp)
   10f74:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10f78:	04113423          	sd	ra,72(sp)
   10f7c:	06090e63          	beqz	s2,10ff8 <__call_exitprocs+0x90>
   10f80:	03313423          	sd	s3,40(sp)
   10f84:	01513c23          	sd	s5,24(sp)
   10f88:	01613823          	sd	s6,16(sp)
   10f8c:	01713423          	sd	s7,8(sp)
   10f90:	04813023          	sd	s0,64(sp)
   10f94:	02913c23          	sd	s1,56(sp)
   10f98:	01813023          	sd	s8,0(sp)
   10f9c:	00050b13          	mv	s6,a0
   10fa0:	00058b93          	mv	s7,a1
   10fa4:	fff00993          	li	s3,-1
   10fa8:	00100a93          	li	s5,1
   10fac:	00892403          	lw	s0,8(s2)
   10fb0:	fff4041b          	addiw	s0,s0,-1
   10fb4:	02044463          	bltz	s0,10fdc <__call_exitprocs+0x74>
   10fb8:	01090493          	addi	s1,s2,16
   10fbc:	00341793          	slli	a5,s0,0x3
   10fc0:	00f484b3          	add	s1,s1,a5
   10fc4:	040b8463          	beqz	s7,1100c <__call_exitprocs+0xa4>
   10fc8:	2004b783          	ld	a5,512(s1)
   10fcc:	05778063          	beq	a5,s7,1100c <__call_exitprocs+0xa4>
   10fd0:	fff4041b          	addiw	s0,s0,-1
   10fd4:	ff848493          	addi	s1,s1,-8
   10fd8:	ff3418e3          	bne	s0,s3,10fc8 <__call_exitprocs+0x60>
   10fdc:	04013403          	ld	s0,64(sp)
   10fe0:	03813483          	ld	s1,56(sp)
   10fe4:	02813983          	ld	s3,40(sp)
   10fe8:	01813a83          	ld	s5,24(sp)
   10fec:	01013b03          	ld	s6,16(sp)
   10ff0:	00813b83          	ld	s7,8(sp)
   10ff4:	00013c03          	ld	s8,0(sp)
   10ff8:	04813083          	ld	ra,72(sp)
   10ffc:	03013903          	ld	s2,48(sp)
   11000:	02013a03          	ld	s4,32(sp)
   11004:	05010113          	addi	sp,sp,80
   11008:	00008067          	ret
   1100c:	00892783          	lw	a5,8(s2)
   11010:	0004b683          	ld	a3,0(s1)
   11014:	fff7879b          	addiw	a5,a5,-1
   11018:	06878a63          	beq	a5,s0,1108c <__call_exitprocs+0x124>
   1101c:	0004b023          	sd	zero,0(s1)
   11020:	02068663          	beqz	a3,1104c <__call_exitprocs+0xe4>
   11024:	31092783          	lw	a5,784(s2)
   11028:	008a973b          	sllw	a4,s5,s0
   1102c:	00892c03          	lw	s8,8(s2)
   11030:	00e7f7b3          	and	a5,a5,a4
   11034:	02079463          	bnez	a5,1105c <__call_exitprocs+0xf4>
   11038:	000680e7          	jalr	a3
   1103c:	00892703          	lw	a4,8(s2)
   11040:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11044:	03871e63          	bne	a4,s8,11080 <__call_exitprocs+0x118>
   11048:	03279c63          	bne	a5,s2,11080 <__call_exitprocs+0x118>
   1104c:	fff4041b          	addiw	s0,s0,-1
   11050:	ff848493          	addi	s1,s1,-8
   11054:	f73418e3          	bne	s0,s3,10fc4 <__call_exitprocs+0x5c>
   11058:	f85ff06f          	j	10fdc <__call_exitprocs+0x74>
   1105c:	31492783          	lw	a5,788(s2)
   11060:	1004b583          	ld	a1,256(s1)
   11064:	00f77733          	and	a4,a4,a5
   11068:	02071663          	bnez	a4,11094 <__call_exitprocs+0x12c>
   1106c:	000b0513          	mv	a0,s6
   11070:	000680e7          	jalr	a3
   11074:	00892703          	lw	a4,8(s2)
   11078:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   1107c:	fd8706e3          	beq	a4,s8,11048 <__call_exitprocs+0xe0>
   11080:	f4078ee3          	beqz	a5,10fdc <__call_exitprocs+0x74>
   11084:	00078913          	mv	s2,a5
   11088:	f25ff06f          	j	10fac <__call_exitprocs+0x44>
   1108c:	00892423          	sw	s0,8(s2)
   11090:	f91ff06f          	j	11020 <__call_exitprocs+0xb8>
   11094:	00058513          	mv	a0,a1
   11098:	000680e7          	jalr	a3
   1109c:	fa1ff06f          	j	1103c <__call_exitprocs+0xd4>

00000000000110a0 <atexit>:
   110a0:	00050593          	mv	a1,a0
   110a4:	00000693          	li	a3,0
   110a8:	00000613          	li	a2,0
   110ac:	00000513          	li	a0,0
   110b0:	2340106f          	j	122e4 <__register_exitproc>

00000000000110b4 <_malloc_trim_r>:
   110b4:	fd010113          	addi	sp,sp,-48
   110b8:	01213823          	sd	s2,16(sp)
   110bc:	00013937          	lui	s2,0x13
   110c0:	02813023          	sd	s0,32(sp)
   110c4:	00913c23          	sd	s1,24(sp)
   110c8:	01313423          	sd	s3,8(sp)
   110cc:	00058413          	mv	s0,a1
   110d0:	02113423          	sd	ra,40(sp)
   110d4:	00050993          	mv	s3,a0
   110d8:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   110dc:	4e5000ef          	jal	11dc0 <__malloc_lock>
   110e0:	01093783          	ld	a5,16(s2)
   110e4:	00001737          	lui	a4,0x1
   110e8:	0087b483          	ld	s1,8(a5)
   110ec:	ffc4f493          	andi	s1,s1,-4
   110f0:	7ff48793          	addi	a5,s1,2047
   110f4:	7e078793          	addi	a5,a5,2016
   110f8:	40878433          	sub	s0,a5,s0
   110fc:	00c45413          	srli	s0,s0,0xc
   11100:	fff40413          	addi	s0,s0,-1
   11104:	00c41413          	slli	s0,s0,0xc
   11108:	00e44e63          	blt	s0,a4,11124 <_malloc_trim_r+0x70>
   1110c:	00000593          	li	a1,0
   11110:	00098513          	mv	a0,s3
   11114:	118010ef          	jal	1222c <_sbrk_r>
   11118:	01093783          	ld	a5,16(s2)
   1111c:	009787b3          	add	a5,a5,s1
   11120:	02f50663          	beq	a0,a5,1114c <_malloc_trim_r+0x98>
   11124:	00098513          	mv	a0,s3
   11128:	49d000ef          	jal	11dc4 <__malloc_unlock>
   1112c:	02813083          	ld	ra,40(sp)
   11130:	02013403          	ld	s0,32(sp)
   11134:	01813483          	ld	s1,24(sp)
   11138:	01013903          	ld	s2,16(sp)
   1113c:	00813983          	ld	s3,8(sp)
   11140:	00000513          	li	a0,0
   11144:	03010113          	addi	sp,sp,48
   11148:	00008067          	ret
   1114c:	408005b3          	neg	a1,s0
   11150:	00098513          	mv	a0,s3
   11154:	0d8010ef          	jal	1222c <_sbrk_r>
   11158:	fff00793          	li	a5,-1
   1115c:	04f50463          	beq	a0,a5,111a4 <_malloc_trim_r+0xf0>
   11160:	01093683          	ld	a3,16(s2)
   11164:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11168:	408484b3          	sub	s1,s1,s0
   1116c:	0014e493          	ori	s1,s1,1
   11170:	00098513          	mv	a0,s3
   11174:	408787bb          	subw	a5,a5,s0
   11178:	0096b423          	sd	s1,8(a3)
   1117c:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11180:	445000ef          	jal	11dc4 <__malloc_unlock>
   11184:	02813083          	ld	ra,40(sp)
   11188:	02013403          	ld	s0,32(sp)
   1118c:	01813483          	ld	s1,24(sp)
   11190:	01013903          	ld	s2,16(sp)
   11194:	00813983          	ld	s3,8(sp)
   11198:	00100513          	li	a0,1
   1119c:	03010113          	addi	sp,sp,48
   111a0:	00008067          	ret
   111a4:	00000593          	li	a1,0
   111a8:	00098513          	mv	a0,s3
   111ac:	080010ef          	jal	1222c <_sbrk_r>
   111b0:	01093703          	ld	a4,16(s2)
   111b4:	01f00693          	li	a3,31
   111b8:	40e507b3          	sub	a5,a0,a4
   111bc:	f6f6d4e3          	bge	a3,a5,11124 <_malloc_trim_r+0x70>
   111c0:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   111c4:	0017e793          	ori	a5,a5,1
   111c8:	40c50533          	sub	a0,a0,a2
   111cc:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   111d0:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   111d4:	f51ff06f          	j	11124 <_malloc_trim_r+0x70>

00000000000111d8 <_free_r>:
   111d8:	12058863          	beqz	a1,11308 <_free_r+0x130>
   111dc:	fe010113          	addi	sp,sp,-32
   111e0:	00813823          	sd	s0,16(sp)
   111e4:	00b13423          	sd	a1,8(sp)
   111e8:	00050413          	mv	s0,a0
   111ec:	00113c23          	sd	ra,24(sp)
   111f0:	3d1000ef          	jal	11dc0 <__malloc_lock>
   111f4:	00813583          	ld	a1,8(sp)
   111f8:	00013837          	lui	a6,0x13
   111fc:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11200:	ff85b503          	ld	a0,-8(a1)
   11204:	ff058713          	addi	a4,a1,-16
   11208:	01083883          	ld	a7,16(a6)
   1120c:	ffe57793          	andi	a5,a0,-2
   11210:	00f70633          	add	a2,a4,a5
   11214:	00863683          	ld	a3,8(a2)
   11218:	00157313          	andi	t1,a0,1
   1121c:	ffc6f693          	andi	a3,a3,-4
   11220:	18c88e63          	beq	a7,a2,113bc <_free_r+0x1e4>
   11224:	00d63423          	sd	a3,8(a2)
   11228:	00d608b3          	add	a7,a2,a3
   1122c:	0088b883          	ld	a7,8(a7)
   11230:	0018f893          	andi	a7,a7,1
   11234:	08031e63          	bnez	t1,112d0 <_free_r+0xf8>
   11238:	ff05b303          	ld	t1,-16(a1)
   1123c:	000135b7          	lui	a1,0x13
   11240:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11244:	40670733          	sub	a4,a4,t1
   11248:	01073503          	ld	a0,16(a4)
   1124c:	006787b3          	add	a5,a5,t1
   11250:	14b50063          	beq	a0,a1,11390 <_free_r+0x1b8>
   11254:	01873303          	ld	t1,24(a4)
   11258:	00653c23          	sd	t1,24(a0)
   1125c:	00a33823          	sd	a0,16(t1) # 10220 <do_mulh+0x4>
   11260:	1a088263          	beqz	a7,11404 <_free_r+0x22c>
   11264:	0017e693          	ori	a3,a5,1
   11268:	00d73423          	sd	a3,8(a4)
   1126c:	00f63023          	sd	a5,0(a2)
   11270:	1ff00693          	li	a3,511
   11274:	0af6e663          	bltu	a3,a5,11320 <_free_r+0x148>
   11278:	0037d793          	srli	a5,a5,0x3
   1127c:	00179693          	slli	a3,a5,0x1
   11280:	0026869b          	addiw	a3,a3,2
   11284:	00369693          	slli	a3,a3,0x3
   11288:	00883503          	ld	a0,8(a6)
   1128c:	00d806b3          	add	a3,a6,a3
   11290:	0006b583          	ld	a1,0(a3)
   11294:	4027d61b          	sraiw	a2,a5,0x2
   11298:	00100793          	li	a5,1
   1129c:	00c797b3          	sll	a5,a5,a2
   112a0:	00a7e7b3          	or	a5,a5,a0
   112a4:	ff068613          	addi	a2,a3,-16
   112a8:	00b73823          	sd	a1,16(a4)
   112ac:	00c73c23          	sd	a2,24(a4)
   112b0:	00f83423          	sd	a5,8(a6)
   112b4:	00e6b023          	sd	a4,0(a3)
   112b8:	00e5bc23          	sd	a4,24(a1)
   112bc:	00040513          	mv	a0,s0
   112c0:	01013403          	ld	s0,16(sp)
   112c4:	01813083          	ld	ra,24(sp)
   112c8:	02010113          	addi	sp,sp,32
   112cc:	2f90006f          	j	11dc4 <__malloc_unlock>
   112d0:	02089e63          	bnez	a7,1130c <_free_r+0x134>
   112d4:	000135b7          	lui	a1,0x13
   112d8:	00d787b3          	add	a5,a5,a3
   112dc:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   112e0:	01063683          	ld	a3,16(a2)
   112e4:	0017e893          	ori	a7,a5,1
   112e8:	00f70533          	add	a0,a4,a5
   112ec:	16b68663          	beq	a3,a1,11458 <_free_r+0x280>
   112f0:	01863603          	ld	a2,24(a2)
   112f4:	00c6bc23          	sd	a2,24(a3)
   112f8:	00d63823          	sd	a3,16(a2)
   112fc:	01173423          	sd	a7,8(a4)
   11300:	00f53023          	sd	a5,0(a0)
   11304:	f6dff06f          	j	11270 <_free_r+0x98>
   11308:	00008067          	ret
   1130c:	00156513          	ori	a0,a0,1
   11310:	fea5bc23          	sd	a0,-8(a1)
   11314:	00f63023          	sd	a5,0(a2)
   11318:	1ff00693          	li	a3,511
   1131c:	f4f6fee3          	bgeu	a3,a5,11278 <_free_r+0xa0>
   11320:	0097d693          	srli	a3,a5,0x9
   11324:	00400613          	li	a2,4
   11328:	0ed66263          	bltu	a2,a3,1140c <_free_r+0x234>
   1132c:	0067d693          	srli	a3,a5,0x6
   11330:	00169593          	slli	a1,a3,0x1
   11334:	0725859b          	addiw	a1,a1,114
   11338:	00359593          	slli	a1,a1,0x3
   1133c:	0386861b          	addiw	a2,a3,56
   11340:	00b805b3          	add	a1,a6,a1
   11344:	0005b683          	ld	a3,0(a1)
   11348:	ff058593          	addi	a1,a1,-16
   1134c:	00d59863          	bne	a1,a3,1135c <_free_r+0x184>
   11350:	1240006f          	j	11474 <_free_r+0x29c>
   11354:	0106b683          	ld	a3,16(a3)
   11358:	00d58863          	beq	a1,a3,11368 <_free_r+0x190>
   1135c:	0086b603          	ld	a2,8(a3)
   11360:	ffc67613          	andi	a2,a2,-4
   11364:	fec7e8e3          	bltu	a5,a2,11354 <_free_r+0x17c>
   11368:	0186b583          	ld	a1,24(a3)
   1136c:	00b73c23          	sd	a1,24(a4)
   11370:	00d73823          	sd	a3,16(a4)
   11374:	00040513          	mv	a0,s0
   11378:	01013403          	ld	s0,16(sp)
   1137c:	01813083          	ld	ra,24(sp)
   11380:	00e5b823          	sd	a4,16(a1)
   11384:	00e6bc23          	sd	a4,24(a3)
   11388:	02010113          	addi	sp,sp,32
   1138c:	2390006f          	j	11dc4 <__malloc_unlock>
   11390:	0a089263          	bnez	a7,11434 <_free_r+0x25c>
   11394:	01863583          	ld	a1,24(a2)
   11398:	01063603          	ld	a2,16(a2)
   1139c:	00f686b3          	add	a3,a3,a5
   113a0:	0016e793          	ori	a5,a3,1
   113a4:	00b63c23          	sd	a1,24(a2)
   113a8:	00c5b823          	sd	a2,16(a1)
   113ac:	00f73423          	sd	a5,8(a4)
   113b0:	00d70733          	add	a4,a4,a3
   113b4:	00d73023          	sd	a3,0(a4)
   113b8:	f05ff06f          	j	112bc <_free_r+0xe4>
   113bc:	00d786b3          	add	a3,a5,a3
   113c0:	02031063          	bnez	t1,113e0 <_free_r+0x208>
   113c4:	ff05b783          	ld	a5,-16(a1)
   113c8:	40f70733          	sub	a4,a4,a5
   113cc:	01073603          	ld	a2,16(a4)
   113d0:	00f686b3          	add	a3,a3,a5
   113d4:	01873783          	ld	a5,24(a4)
   113d8:	00f63c23          	sd	a5,24(a2)
   113dc:	00c7b823          	sd	a2,16(a5)
   113e0:	0016e613          	ori	a2,a3,1
   113e4:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   113e8:	00c73423          	sd	a2,8(a4)
   113ec:	00e83823          	sd	a4,16(a6)
   113f0:	ecf6e6e3          	bltu	a3,a5,112bc <_free_r+0xe4>
   113f4:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   113f8:	00040513          	mv	a0,s0
   113fc:	cb9ff0ef          	jal	110b4 <_malloc_trim_r>
   11400:	ebdff06f          	j	112bc <_free_r+0xe4>
   11404:	00d787b3          	add	a5,a5,a3
   11408:	ed9ff06f          	j	112e0 <_free_r+0x108>
   1140c:	01400613          	li	a2,20
   11410:	02d67a63          	bgeu	a2,a3,11444 <_free_r+0x26c>
   11414:	05400613          	li	a2,84
   11418:	06d66c63          	bltu	a2,a3,11490 <_free_r+0x2b8>
   1141c:	00c7d693          	srli	a3,a5,0xc
   11420:	00169593          	slli	a1,a3,0x1
   11424:	0de5859b          	addiw	a1,a1,222
   11428:	00359593          	slli	a1,a1,0x3
   1142c:	06e6861b          	addiw	a2,a3,110
   11430:	f11ff06f          	j	11340 <_free_r+0x168>
   11434:	0017e693          	ori	a3,a5,1
   11438:	00d73423          	sd	a3,8(a4)
   1143c:	00f63023          	sd	a5,0(a2)
   11440:	e7dff06f          	j	112bc <_free_r+0xe4>
   11444:	00169593          	slli	a1,a3,0x1
   11448:	0b85859b          	addiw	a1,a1,184
   1144c:	00359593          	slli	a1,a1,0x3
   11450:	05b6861b          	addiw	a2,a3,91
   11454:	eedff06f          	j	11340 <_free_r+0x168>
   11458:	02e83423          	sd	a4,40(a6)
   1145c:	02e83023          	sd	a4,32(a6)
   11460:	00b73c23          	sd	a1,24(a4)
   11464:	00b73823          	sd	a1,16(a4)
   11468:	01173423          	sd	a7,8(a4)
   1146c:	00f53023          	sd	a5,0(a0)
   11470:	e4dff06f          	j	112bc <_free_r+0xe4>
   11474:	00883503          	ld	a0,8(a6)
   11478:	4026561b          	sraiw	a2,a2,0x2
   1147c:	00100793          	li	a5,1
   11480:	00c797b3          	sll	a5,a5,a2
   11484:	00a7e7b3          	or	a5,a5,a0
   11488:	00f83423          	sd	a5,8(a6)
   1148c:	ee1ff06f          	j	1136c <_free_r+0x194>
   11490:	15400613          	li	a2,340
   11494:	00d66e63          	bltu	a2,a3,114b0 <_free_r+0x2d8>
   11498:	00f7d693          	srli	a3,a5,0xf
   1149c:	00169593          	slli	a1,a3,0x1
   114a0:	0f05859b          	addiw	a1,a1,240
   114a4:	00359593          	slli	a1,a1,0x3
   114a8:	0776861b          	addiw	a2,a3,119
   114ac:	e95ff06f          	j	11340 <_free_r+0x168>
   114b0:	55400613          	li	a2,1364
   114b4:	00d66e63          	bltu	a2,a3,114d0 <_free_r+0x2f8>
   114b8:	0127d693          	srli	a3,a5,0x12
   114bc:	00169593          	slli	a1,a3,0x1
   114c0:	0fa5859b          	addiw	a1,a1,250
   114c4:	00359593          	slli	a1,a1,0x3
   114c8:	07c6861b          	addiw	a2,a3,124
   114cc:	e75ff06f          	j	11340 <_free_r+0x168>
   114d0:	7f000593          	li	a1,2032
   114d4:	07e00613          	li	a2,126
   114d8:	e69ff06f          	j	11340 <_free_r+0x168>

00000000000114dc <_malloc_r>:
   114dc:	fa010113          	addi	sp,sp,-96
   114e0:	04813823          	sd	s0,80(sp)
   114e4:	04113c23          	sd	ra,88(sp)
   114e8:	01758713          	addi	a4,a1,23
   114ec:	02e00793          	li	a5,46
   114f0:	00050413          	mv	s0,a0
   114f4:	08e7ee63          	bltu	a5,a4,11590 <_malloc_r+0xb4>
   114f8:	02000713          	li	a4,32
   114fc:	06b76c63          	bltu	a4,a1,11574 <_malloc_r+0x98>
   11500:	0c1000ef          	jal	11dc0 <__malloc_lock>
   11504:	02000713          	li	a4,32
   11508:	05000693          	li	a3,80
   1150c:	00400893          	li	a7,4
   11510:	00013837          	lui	a6,0x13
   11514:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11518:	00d806b3          	add	a3,a6,a3
   1151c:	0086b783          	ld	a5,8(a3)
   11520:	ff068613          	addi	a2,a3,-16
   11524:	48c78063          	beq	a5,a2,119a4 <_malloc_r+0x4c8>
   11528:	0087b703          	ld	a4,8(a5)
   1152c:	0187b603          	ld	a2,24(a5)
   11530:	0107b583          	ld	a1,16(a5)
   11534:	ffc77713          	andi	a4,a4,-4
   11538:	00e78733          	add	a4,a5,a4
   1153c:	00873683          	ld	a3,8(a4)
   11540:	00c5bc23          	sd	a2,24(a1)
   11544:	00b63823          	sd	a1,16(a2)
   11548:	0016e693          	ori	a3,a3,1
   1154c:	00040513          	mv	a0,s0
   11550:	00d73423          	sd	a3,8(a4)
   11554:	00f13423          	sd	a5,8(sp)
   11558:	06d000ef          	jal	11dc4 <__malloc_unlock>
   1155c:	00813783          	ld	a5,8(sp)
   11560:	05813083          	ld	ra,88(sp)
   11564:	05013403          	ld	s0,80(sp)
   11568:	01078513          	addi	a0,a5,16
   1156c:	06010113          	addi	sp,sp,96
   11570:	00008067          	ret
   11574:	00c00793          	li	a5,12
   11578:	00f42023          	sw	a5,0(s0)
   1157c:	00000513          	li	a0,0
   11580:	05813083          	ld	ra,88(sp)
   11584:	05013403          	ld	s0,80(sp)
   11588:	06010113          	addi	sp,sp,96
   1158c:	00008067          	ret
   11590:	00100793          	li	a5,1
   11594:	ff077713          	andi	a4,a4,-16
   11598:	01f79793          	slli	a5,a5,0x1f
   1159c:	fcf77ce3          	bgeu	a4,a5,11574 <_malloc_r+0x98>
   115a0:	fcb76ae3          	bltu	a4,a1,11574 <_malloc_r+0x98>
   115a4:	00e13423          	sd	a4,8(sp)
   115a8:	019000ef          	jal	11dc0 <__malloc_lock>
   115ac:	00813703          	ld	a4,8(sp)
   115b0:	1f700793          	li	a5,503
   115b4:	4ee7fa63          	bgeu	a5,a4,11aa8 <_malloc_r+0x5cc>
   115b8:	00975793          	srli	a5,a4,0x9
   115bc:	18078a63          	beqz	a5,11750 <_malloc_r+0x274>
   115c0:	00400693          	li	a3,4
   115c4:	44f6ea63          	bltu	a3,a5,11a18 <_malloc_r+0x53c>
   115c8:	00675793          	srli	a5,a4,0x6
   115cc:	0397889b          	addiw	a7,a5,57
   115d0:	0018951b          	slliw	a0,a7,0x1
   115d4:	03878e1b          	addiw	t3,a5,56
   115d8:	00351513          	slli	a0,a0,0x3
   115dc:	00013837          	lui	a6,0x13
   115e0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   115e4:	00a80533          	add	a0,a6,a0
   115e8:	00853783          	ld	a5,8(a0)
   115ec:	ff050513          	addi	a0,a0,-16
   115f0:	02f50863          	beq	a0,a5,11620 <_malloc_r+0x144>
   115f4:	01f00313          	li	t1,31
   115f8:	0140006f          	j	1160c <_malloc_r+0x130>
   115fc:	0187b583          	ld	a1,24(a5)
   11600:	36065263          	bgez	a2,11964 <_malloc_r+0x488>
   11604:	00b50e63          	beq	a0,a1,11620 <_malloc_r+0x144>
   11608:	00058793          	mv	a5,a1
   1160c:	0087b683          	ld	a3,8(a5)
   11610:	ffc6f693          	andi	a3,a3,-4
   11614:	40e68633          	sub	a2,a3,a4
   11618:	fec352e3          	bge	t1,a2,115fc <_malloc_r+0x120>
   1161c:	000e0893          	mv	a7,t3
   11620:	02083783          	ld	a5,32(a6)
   11624:	00013e37          	lui	t3,0x13
   11628:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   1162c:	2fc78a63          	beq	a5,t3,11920 <_malloc_r+0x444>
   11630:	0087b303          	ld	t1,8(a5)
   11634:	01f00613          	li	a2,31
   11638:	ffc37313          	andi	t1,t1,-4
   1163c:	40e306b3          	sub	a3,t1,a4
   11640:	4ad64463          	blt	a2,a3,11ae8 <_malloc_r+0x60c>
   11644:	03c83423          	sd	t3,40(a6)
   11648:	03c83023          	sd	t3,32(a6)
   1164c:	4606da63          	bgez	a3,11ac0 <_malloc_r+0x5e4>
   11650:	1ff00693          	li	a3,511
   11654:	00883583          	ld	a1,8(a6)
   11658:	3466ee63          	bltu	a3,t1,119b4 <_malloc_r+0x4d8>
   1165c:	00335313          	srli	t1,t1,0x3
   11660:	00131693          	slli	a3,t1,0x1
   11664:	0026869b          	addiw	a3,a3,2
   11668:	00369693          	slli	a3,a3,0x3
   1166c:	00d806b3          	add	a3,a6,a3
   11670:	0006b503          	ld	a0,0(a3)
   11674:	4023531b          	sraiw	t1,t1,0x2
   11678:	00100613          	li	a2,1
   1167c:	00661633          	sll	a2,a2,t1
   11680:	00c5e5b3          	or	a1,a1,a2
   11684:	ff068613          	addi	a2,a3,-16
   11688:	00a7b823          	sd	a0,16(a5)
   1168c:	00c7bc23          	sd	a2,24(a5)
   11690:	00b83423          	sd	a1,8(a6)
   11694:	00f6b023          	sd	a5,0(a3)
   11698:	00f53c23          	sd	a5,24(a0)
   1169c:	4028d79b          	sraiw	a5,a7,0x2
   116a0:	00100513          	li	a0,1
   116a4:	00f51533          	sll	a0,a0,a5
   116a8:	0aa5ec63          	bltu	a1,a0,11760 <_malloc_r+0x284>
   116ac:	00b577b3          	and	a5,a0,a1
   116b0:	02079463          	bnez	a5,116d8 <_malloc_r+0x1fc>
   116b4:	00151513          	slli	a0,a0,0x1
   116b8:	ffc8f893          	andi	a7,a7,-4
   116bc:	00b577b3          	and	a5,a0,a1
   116c0:	0048889b          	addiw	a7,a7,4
   116c4:	00079a63          	bnez	a5,116d8 <_malloc_r+0x1fc>
   116c8:	00151513          	slli	a0,a0,0x1
   116cc:	00b577b3          	and	a5,a0,a1
   116d0:	0048889b          	addiw	a7,a7,4
   116d4:	fe078ae3          	beqz	a5,116c8 <_malloc_r+0x1ec>
   116d8:	01f00e93          	li	t4,31
   116dc:	00189f13          	slli	t5,a7,0x1
   116e0:	002f0f1b          	addiw	t5,t5,2
   116e4:	003f1f13          	slli	t5,t5,0x3
   116e8:	ff0f0f13          	addi	t5,t5,-16
   116ec:	01e80f33          	add	t5,a6,t5
   116f0:	000f0313          	mv	t1,t5
   116f4:	01833683          	ld	a3,24(t1)
   116f8:	00088f93          	mv	t6,a7
   116fc:	34d30263          	beq	t1,a3,11a40 <_malloc_r+0x564>
   11700:	0086b603          	ld	a2,8(a3)
   11704:	00068793          	mv	a5,a3
   11708:	0186b683          	ld	a3,24(a3)
   1170c:	ffc67613          	andi	a2,a2,-4
   11710:	40e605b3          	sub	a1,a2,a4
   11714:	34bec263          	blt	t4,a1,11a58 <_malloc_r+0x57c>
   11718:	fe05c2e3          	bltz	a1,116fc <_malloc_r+0x220>
   1171c:	00c78633          	add	a2,a5,a2
   11720:	00863703          	ld	a4,8(a2)
   11724:	0107b583          	ld	a1,16(a5)
   11728:	00040513          	mv	a0,s0
   1172c:	00176713          	ori	a4,a4,1
   11730:	00e63423          	sd	a4,8(a2)
   11734:	00d5bc23          	sd	a3,24(a1)
   11738:	00b6b823          	sd	a1,16(a3)
   1173c:	00f13423          	sd	a5,8(sp)
   11740:	684000ef          	jal	11dc4 <__malloc_unlock>
   11744:	00813783          	ld	a5,8(sp)
   11748:	01078513          	addi	a0,a5,16
   1174c:	e35ff06f          	j	11580 <_malloc_r+0xa4>
   11750:	40000513          	li	a0,1024
   11754:	04000893          	li	a7,64
   11758:	03f00e13          	li	t3,63
   1175c:	e81ff06f          	j	115dc <_malloc_r+0x100>
   11760:	01083783          	ld	a5,16(a6)
   11764:	0087b683          	ld	a3,8(a5)
   11768:	ffc6f893          	andi	a7,a3,-4
   1176c:	40e88633          	sub	a2,a7,a4
   11770:	00e8e663          	bltu	a7,a4,1177c <_malloc_r+0x2a0>
   11774:	02062693          	slti	a3,a2,32
   11778:	1a068863          	beqz	a3,11928 <_malloc_r+0x44c>
   1177c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11780:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11784:	fff00693          	li	a3,-1
   11788:	00b705b3          	add	a1,a4,a1
   1178c:	44d60663          	beq	a2,a3,11bd8 <_malloc_r+0x6fc>
   11790:	000016b7          	lui	a3,0x1
   11794:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11798:	00d585b3          	add	a1,a1,a3
   1179c:	fffff6b7          	lui	a3,0xfffff
   117a0:	00d5f5b3          	and	a1,a1,a3
   117a4:	00040513          	mv	a0,s0
   117a8:	03013423          	sd	a6,40(sp)
   117ac:	02f13023          	sd	a5,32(sp)
   117b0:	00e13c23          	sd	a4,24(sp)
   117b4:	01113823          	sd	a7,16(sp)
   117b8:	00b13423          	sd	a1,8(sp)
   117bc:	271000ef          	jal	1222c <_sbrk_r>
   117c0:	fff00693          	li	a3,-1
   117c4:	00813583          	ld	a1,8(sp)
   117c8:	01013883          	ld	a7,16(sp)
   117cc:	01813703          	ld	a4,24(sp)
   117d0:	02013783          	ld	a5,32(sp)
   117d4:	02813803          	ld	a6,40(sp)
   117d8:	00050313          	mv	t1,a0
   117dc:	36d50663          	beq	a0,a3,11b48 <_malloc_r+0x66c>
   117e0:	011786b3          	add	a3,a5,a7
   117e4:	36d56063          	bltu	a0,a3,11b44 <_malloc_r+0x668>
   117e8:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   117ec:	000e2603          	lw	a2,0(t3)
   117f0:	00b6063b          	addw	a2,a2,a1
   117f4:	00ce2023          	sw	a2,0(t3)
   117f8:	00060513          	mv	a0,a2
   117fc:	4a668c63          	beq	a3,t1,11cb4 <_malloc_r+0x7d8>
   11800:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11804:	fff00613          	li	a2,-1
   11808:	4ccf0463          	beq	t5,a2,11cd0 <_malloc_r+0x7f4>
   1180c:	40d306b3          	sub	a3,t1,a3
   11810:	00a686bb          	addw	a3,a3,a0
   11814:	00de2023          	sw	a3,0(t3)
   11818:	00f37e93          	andi	t4,t1,15
   1181c:	3c0e8e63          	beqz	t4,11bf8 <_malloc_r+0x71c>
   11820:	ff037313          	andi	t1,t1,-16
   11824:	000016b7          	lui	a3,0x1
   11828:	01030313          	addi	t1,t1,16
   1182c:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11830:	00b30633          	add	a2,t1,a1
   11834:	41d685b3          	sub	a1,a3,t4
   11838:	40c585b3          	sub	a1,a1,a2
   1183c:	03459593          	slli	a1,a1,0x34
   11840:	0345d593          	srli	a1,a1,0x34
   11844:	00040513          	mv	a0,s0
   11848:	05c13023          	sd	t3,64(sp)
   1184c:	03013c23          	sd	a6,56(sp)
   11850:	02f13823          	sd	a5,48(sp)
   11854:	02e13423          	sd	a4,40(sp)
   11858:	03113023          	sd	a7,32(sp)
   1185c:	00613c23          	sd	t1,24(sp)
   11860:	01d13823          	sd	t4,16(sp)
   11864:	00c13423          	sd	a2,8(sp)
   11868:	04b13423          	sd	a1,72(sp)
   1186c:	1c1000ef          	jal	1222c <_sbrk_r>
   11870:	00050693          	mv	a3,a0
   11874:	fff00513          	li	a0,-1
   11878:	00813603          	ld	a2,8(sp)
   1187c:	01013e83          	ld	t4,16(sp)
   11880:	01813303          	ld	t1,24(sp)
   11884:	02013883          	ld	a7,32(sp)
   11888:	02813703          	ld	a4,40(sp)
   1188c:	03013783          	ld	a5,48(sp)
   11890:	03813803          	ld	a6,56(sp)
   11894:	04013e03          	ld	t3,64(sp)
   11898:	48a68663          	beq	a3,a0,11d24 <_malloc_r+0x848>
   1189c:	04813583          	ld	a1,72(sp)
   118a0:	0005851b          	sext.w	a0,a1
   118a4:	000e2603          	lw	a2,0(t3)
   118a8:	406686b3          	sub	a3,a3,t1
   118ac:	00b686b3          	add	a3,a3,a1
   118b0:	0016e693          	ori	a3,a3,1
   118b4:	00683823          	sd	t1,16(a6)
   118b8:	00a6063b          	addw	a2,a2,a0
   118bc:	00d33423          	sd	a3,8(t1)
   118c0:	00ce2023          	sw	a2,0(t3)
   118c4:	03078e63          	beq	a5,a6,11900 <_malloc_r+0x424>
   118c8:	01f00513          	li	a0,31
   118cc:	41157663          	bgeu	a0,a7,11cd8 <_malloc_r+0x7fc>
   118d0:	0087b583          	ld	a1,8(a5)
   118d4:	fe888693          	addi	a3,a7,-24
   118d8:	ff06f693          	andi	a3,a3,-16
   118dc:	0015f593          	andi	a1,a1,1
   118e0:	00d5e5b3          	or	a1,a1,a3
   118e4:	00b7b423          	sd	a1,8(a5)
   118e8:	00900893          	li	a7,9
   118ec:	00d785b3          	add	a1,a5,a3
   118f0:	0115b423          	sd	a7,8(a1)
   118f4:	0115b823          	sd	a7,16(a1)
   118f8:	44d56863          	bltu	a0,a3,11d48 <_malloc_r+0x86c>
   118fc:	00833683          	ld	a3,8(t1)
   11900:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11904:	00c5f463          	bgeu	a1,a2,1190c <_malloc_r+0x430>
   11908:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1190c:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11910:	00c5f463          	bgeu	a1,a2,11918 <_malloc_r+0x43c>
   11914:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11918:	00030793          	mv	a5,t1
   1191c:	2340006f          	j	11b50 <_malloc_r+0x674>
   11920:	00883583          	ld	a1,8(a6)
   11924:	d79ff06f          	j	1169c <_malloc_r+0x1c0>
   11928:	00176693          	ori	a3,a4,1
   1192c:	00d7b423          	sd	a3,8(a5)
   11930:	00e78733          	add	a4,a5,a4
   11934:	00166613          	ori	a2,a2,1
   11938:	00e83823          	sd	a4,16(a6)
   1193c:	00040513          	mv	a0,s0
   11940:	00c73423          	sd	a2,8(a4)
   11944:	00f13423          	sd	a5,8(sp)
   11948:	47c000ef          	jal	11dc4 <__malloc_unlock>
   1194c:	00813783          	ld	a5,8(sp)
   11950:	05813083          	ld	ra,88(sp)
   11954:	05013403          	ld	s0,80(sp)
   11958:	01078513          	addi	a0,a5,16
   1195c:	06010113          	addi	sp,sp,96
   11960:	00008067          	ret
   11964:	0107b603          	ld	a2,16(a5)
   11968:	00d786b3          	add	a3,a5,a3
   1196c:	0086b703          	ld	a4,8(a3)
   11970:	00b63c23          	sd	a1,24(a2)
   11974:	00c5b823          	sd	a2,16(a1)
   11978:	00176713          	ori	a4,a4,1
   1197c:	00040513          	mv	a0,s0
   11980:	00e6b423          	sd	a4,8(a3)
   11984:	00f13423          	sd	a5,8(sp)
   11988:	43c000ef          	jal	11dc4 <__malloc_unlock>
   1198c:	00813783          	ld	a5,8(sp)
   11990:	05813083          	ld	ra,88(sp)
   11994:	05013403          	ld	s0,80(sp)
   11998:	01078513          	addi	a0,a5,16
   1199c:	06010113          	addi	sp,sp,96
   119a0:	00008067          	ret
   119a4:	0186b783          	ld	a5,24(a3)
   119a8:	0028889b          	addiw	a7,a7,2
   119ac:	c6f68ae3          	beq	a3,a5,11620 <_malloc_r+0x144>
   119b0:	b79ff06f          	j	11528 <_malloc_r+0x4c>
   119b4:	00935693          	srli	a3,t1,0x9
   119b8:	00400613          	li	a2,4
   119bc:	16d67863          	bgeu	a2,a3,11b2c <_malloc_r+0x650>
   119c0:	01400613          	li	a2,20
   119c4:	28d66e63          	bltu	a2,a3,11c60 <_malloc_r+0x784>
   119c8:	00169513          	slli	a0,a3,0x1
   119cc:	0b85051b          	addiw	a0,a0,184
   119d0:	00351513          	slli	a0,a0,0x3
   119d4:	05b6861b          	addiw	a2,a3,91
   119d8:	00a80533          	add	a0,a6,a0
   119dc:	00053683          	ld	a3,0(a0)
   119e0:	ff050513          	addi	a0,a0,-16
   119e4:	00d51863          	bne	a0,a3,119f4 <_malloc_r+0x518>
   119e8:	1f80006f          	j	11be0 <_malloc_r+0x704>
   119ec:	0106b683          	ld	a3,16(a3)
   119f0:	00d50863          	beq	a0,a3,11a00 <_malloc_r+0x524>
   119f4:	0086b603          	ld	a2,8(a3)
   119f8:	ffc67613          	andi	a2,a2,-4
   119fc:	fec368e3          	bltu	t1,a2,119ec <_malloc_r+0x510>
   11a00:	0186b503          	ld	a0,24(a3)
   11a04:	00a7bc23          	sd	a0,24(a5)
   11a08:	00d7b823          	sd	a3,16(a5)
   11a0c:	00f53823          	sd	a5,16(a0)
   11a10:	00f6bc23          	sd	a5,24(a3)
   11a14:	c89ff06f          	j	1169c <_malloc_r+0x1c0>
   11a18:	01400693          	li	a3,20
   11a1c:	14f6fa63          	bgeu	a3,a5,11b70 <_malloc_r+0x694>
   11a20:	05400693          	li	a3,84
   11a24:	24f6ee63          	bltu	a3,a5,11c80 <_malloc_r+0x7a4>
   11a28:	00c75793          	srli	a5,a4,0xc
   11a2c:	06f7889b          	addiw	a7,a5,111
   11a30:	0018951b          	slliw	a0,a7,0x1
   11a34:	06e78e1b          	addiw	t3,a5,110
   11a38:	00351513          	slli	a0,a0,0x3
   11a3c:	ba1ff06f          	j	115dc <_malloc_r+0x100>
   11a40:	001f8f9b          	addiw	t6,t6,1
   11a44:	003ff793          	andi	a5,t6,3
   11a48:	01030313          	addi	t1,t1,16
   11a4c:	14078263          	beqz	a5,11b90 <_malloc_r+0x6b4>
   11a50:	01833683          	ld	a3,24(t1)
   11a54:	ca9ff06f          	j	116fc <_malloc_r+0x220>
   11a58:	0107b503          	ld	a0,16(a5)
   11a5c:	00176893          	ori	a7,a4,1
   11a60:	0117b423          	sd	a7,8(a5)
   11a64:	00d53c23          	sd	a3,24(a0)
   11a68:	00a6b823          	sd	a0,16(a3)
   11a6c:	00e78733          	add	a4,a5,a4
   11a70:	02e83423          	sd	a4,40(a6)
   11a74:	02e83023          	sd	a4,32(a6)
   11a78:	0015e693          	ori	a3,a1,1
   11a7c:	00c78633          	add	a2,a5,a2
   11a80:	01c73c23          	sd	t3,24(a4)
   11a84:	01c73823          	sd	t3,16(a4)
   11a88:	00d73423          	sd	a3,8(a4)
   11a8c:	00040513          	mv	a0,s0
   11a90:	00b63023          	sd	a1,0(a2)
   11a94:	00f13423          	sd	a5,8(sp)
   11a98:	32c000ef          	jal	11dc4 <__malloc_unlock>
   11a9c:	00813783          	ld	a5,8(sp)
   11aa0:	01078513          	addi	a0,a5,16
   11aa4:	addff06f          	j	11580 <_malloc_r+0xa4>
   11aa8:	00375893          	srli	a7,a4,0x3
   11aac:	00189693          	slli	a3,a7,0x1
   11ab0:	0026869b          	addiw	a3,a3,2
   11ab4:	00369693          	slli	a3,a3,0x3
   11ab8:	0008889b          	sext.w	a7,a7
   11abc:	a55ff06f          	j	11510 <_malloc_r+0x34>
   11ac0:	00678333          	add	t1,a5,t1
   11ac4:	00833703          	ld	a4,8(t1)
   11ac8:	00040513          	mv	a0,s0
   11acc:	00f13423          	sd	a5,8(sp)
   11ad0:	00176713          	ori	a4,a4,1
   11ad4:	00e33423          	sd	a4,8(t1)
   11ad8:	2ec000ef          	jal	11dc4 <__malloc_unlock>
   11adc:	00813783          	ld	a5,8(sp)
   11ae0:	01078513          	addi	a0,a5,16
   11ae4:	a9dff06f          	j	11580 <_malloc_r+0xa4>
   11ae8:	00176613          	ori	a2,a4,1
   11aec:	00c7b423          	sd	a2,8(a5)
   11af0:	00e78733          	add	a4,a5,a4
   11af4:	02e83423          	sd	a4,40(a6)
   11af8:	02e83023          	sd	a4,32(a6)
   11afc:	0016e613          	ori	a2,a3,1
   11b00:	00678333          	add	t1,a5,t1
   11b04:	01c73c23          	sd	t3,24(a4)
   11b08:	01c73823          	sd	t3,16(a4)
   11b0c:	00c73423          	sd	a2,8(a4)
   11b10:	00040513          	mv	a0,s0
   11b14:	00d33023          	sd	a3,0(t1)
   11b18:	00f13423          	sd	a5,8(sp)
   11b1c:	2a8000ef          	jal	11dc4 <__malloc_unlock>
   11b20:	00813783          	ld	a5,8(sp)
   11b24:	01078513          	addi	a0,a5,16
   11b28:	a59ff06f          	j	11580 <_malloc_r+0xa4>
   11b2c:	00635693          	srli	a3,t1,0x6
   11b30:	00169513          	slli	a0,a3,0x1
   11b34:	0725051b          	addiw	a0,a0,114
   11b38:	00351513          	slli	a0,a0,0x3
   11b3c:	0386861b          	addiw	a2,a3,56
   11b40:	e99ff06f          	j	119d8 <_malloc_r+0x4fc>
   11b44:	15078e63          	beq	a5,a6,11ca0 <_malloc_r+0x7c4>
   11b48:	01083783          	ld	a5,16(a6)
   11b4c:	0087b683          	ld	a3,8(a5)
   11b50:	ffc6f693          	andi	a3,a3,-4
   11b54:	40e68633          	sub	a2,a3,a4
   11b58:	00e6e663          	bltu	a3,a4,11b64 <_malloc_r+0x688>
   11b5c:	02062693          	slti	a3,a2,32
   11b60:	dc0684e3          	beqz	a3,11928 <_malloc_r+0x44c>
   11b64:	00040513          	mv	a0,s0
   11b68:	25c000ef          	jal	11dc4 <__malloc_unlock>
   11b6c:	a11ff06f          	j	1157c <_malloc_r+0xa0>
   11b70:	05c7889b          	addiw	a7,a5,92
   11b74:	0018951b          	slliw	a0,a7,0x1
   11b78:	05b78e1b          	addiw	t3,a5,91
   11b7c:	00351513          	slli	a0,a0,0x3
   11b80:	a5dff06f          	j	115dc <_malloc_r+0x100>
   11b84:	010f3783          	ld	a5,16(t5)
   11b88:	fff8889b          	addiw	a7,a7,-1
   11b8c:	23e79663          	bne	a5,t5,11db8 <_malloc_r+0x8dc>
   11b90:	0038f793          	andi	a5,a7,3
   11b94:	ff0f0f13          	addi	t5,t5,-16
   11b98:	fe0796e3          	bnez	a5,11b84 <_malloc_r+0x6a8>
   11b9c:	00883683          	ld	a3,8(a6)
   11ba0:	fff54793          	not	a5,a0
   11ba4:	00d7f7b3          	and	a5,a5,a3
   11ba8:	00f83423          	sd	a5,8(a6)
   11bac:	00151513          	slli	a0,a0,0x1
   11bb0:	fff50693          	addi	a3,a0,-1
   11bb4:	baf6f6e3          	bgeu	a3,a5,11760 <_malloc_r+0x284>
   11bb8:	00f576b3          	and	a3,a0,a5
   11bbc:	00069a63          	bnez	a3,11bd0 <_malloc_r+0x6f4>
   11bc0:	00151513          	slli	a0,a0,0x1
   11bc4:	00f576b3          	and	a3,a0,a5
   11bc8:	004f8f9b          	addiw	t6,t6,4
   11bcc:	fe068ae3          	beqz	a3,11bc0 <_malloc_r+0x6e4>
   11bd0:	000f8893          	mv	a7,t6
   11bd4:	b09ff06f          	j	116dc <_malloc_r+0x200>
   11bd8:	02058593          	addi	a1,a1,32
   11bdc:	bc9ff06f          	j	117a4 <_malloc_r+0x2c8>
   11be0:	4026561b          	sraiw	a2,a2,0x2
   11be4:	00100313          	li	t1,1
   11be8:	00c31633          	sll	a2,t1,a2
   11bec:	00c5e5b3          	or	a1,a1,a2
   11bf0:	00b83423          	sd	a1,8(a6)
   11bf4:	e11ff06f          	j	11a04 <_malloc_r+0x528>
   11bf8:	00b30633          	add	a2,t1,a1
   11bfc:	40c005b3          	neg	a1,a2
   11c00:	03459593          	slli	a1,a1,0x34
   11c04:	0345d593          	srli	a1,a1,0x34
   11c08:	00040513          	mv	a0,s0
   11c0c:	03c13c23          	sd	t3,56(sp)
   11c10:	03013823          	sd	a6,48(sp)
   11c14:	02f13423          	sd	a5,40(sp)
   11c18:	02e13023          	sd	a4,32(sp)
   11c1c:	01113c23          	sd	a7,24(sp)
   11c20:	00613823          	sd	t1,16(sp)
   11c24:	00c13423          	sd	a2,8(sp)
   11c28:	04b13023          	sd	a1,64(sp)
   11c2c:	600000ef          	jal	1222c <_sbrk_r>
   11c30:	00050693          	mv	a3,a0
   11c34:	fff00513          	li	a0,-1
   11c38:	01013303          	ld	t1,16(sp)
   11c3c:	01813883          	ld	a7,24(sp)
   11c40:	02013703          	ld	a4,32(sp)
   11c44:	02813783          	ld	a5,40(sp)
   11c48:	03013803          	ld	a6,48(sp)
   11c4c:	03813e03          	ld	t3,56(sp)
   11c50:	0ea68463          	beq	a3,a0,11d38 <_malloc_r+0x85c>
   11c54:	04013583          	ld	a1,64(sp)
   11c58:	0005851b          	sext.w	a0,a1
   11c5c:	c49ff06f          	j	118a4 <_malloc_r+0x3c8>
   11c60:	05400613          	li	a2,84
   11c64:	08d66063          	bltu	a2,a3,11ce4 <_malloc_r+0x808>
   11c68:	00c35693          	srli	a3,t1,0xc
   11c6c:	00169513          	slli	a0,a3,0x1
   11c70:	0de5051b          	addiw	a0,a0,222
   11c74:	00351513          	slli	a0,a0,0x3
   11c78:	06e6861b          	addiw	a2,a3,110
   11c7c:	d5dff06f          	j	119d8 <_malloc_r+0x4fc>
   11c80:	15400693          	li	a3,340
   11c84:	08f6e063          	bltu	a3,a5,11d04 <_malloc_r+0x828>
   11c88:	00f75793          	srli	a5,a4,0xf
   11c8c:	0787889b          	addiw	a7,a5,120
   11c90:	0018951b          	slliw	a0,a7,0x1
   11c94:	07778e1b          	addiw	t3,a5,119
   11c98:	00351513          	slli	a0,a0,0x3
   11c9c:	941ff06f          	j	115dc <_malloc_r+0x100>
   11ca0:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11ca4:	000e2503          	lw	a0,0(t3)
   11ca8:	00b5053b          	addw	a0,a0,a1
   11cac:	00ae2023          	sw	a0,0(t3)
   11cb0:	b51ff06f          	j	11800 <_malloc_r+0x324>
   11cb4:	03431f13          	slli	t5,t1,0x34
   11cb8:	b40f14e3          	bnez	t5,11800 <_malloc_r+0x324>
   11cbc:	01083303          	ld	t1,16(a6)
   11cc0:	00b885b3          	add	a1,a7,a1
   11cc4:	0015e693          	ori	a3,a1,1
   11cc8:	00d33423          	sd	a3,8(t1)
   11ccc:	c35ff06f          	j	11900 <_malloc_r+0x424>
   11cd0:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11cd4:	b45ff06f          	j	11818 <_malloc_r+0x33c>
   11cd8:	00100793          	li	a5,1
   11cdc:	00f33423          	sd	a5,8(t1)
   11ce0:	e85ff06f          	j	11b64 <_malloc_r+0x688>
   11ce4:	15400613          	li	a2,340
   11ce8:	08d66a63          	bltu	a2,a3,11d7c <_malloc_r+0x8a0>
   11cec:	00f35693          	srli	a3,t1,0xf
   11cf0:	00169513          	slli	a0,a3,0x1
   11cf4:	0f05051b          	addiw	a0,a0,240
   11cf8:	00351513          	slli	a0,a0,0x3
   11cfc:	0776861b          	addiw	a2,a3,119
   11d00:	cd9ff06f          	j	119d8 <_malloc_r+0x4fc>
   11d04:	55400693          	li	a3,1364
   11d08:	08f6ea63          	bltu	a3,a5,11d9c <_malloc_r+0x8c0>
   11d0c:	01275793          	srli	a5,a4,0x12
   11d10:	07d7889b          	addiw	a7,a5,125
   11d14:	0018951b          	slliw	a0,a7,0x1
   11d18:	07c78e1b          	addiw	t3,a5,124
   11d1c:	00351513          	slli	a0,a0,0x3
   11d20:	8bdff06f          	j	115dc <_malloc_r+0x100>
   11d24:	ff0e8e93          	addi	t4,t4,-16
   11d28:	01d606b3          	add	a3,a2,t4
   11d2c:	00000513          	li	a0,0
   11d30:	00000593          	li	a1,0
   11d34:	b71ff06f          	j	118a4 <_malloc_r+0x3c8>
   11d38:	00813683          	ld	a3,8(sp)
   11d3c:	00000593          	li	a1,0
   11d40:	00000513          	li	a0,0
   11d44:	b61ff06f          	j	118a4 <_malloc_r+0x3c8>
   11d48:	01078593          	addi	a1,a5,16
   11d4c:	00040513          	mv	a0,s0
   11d50:	01c13c23          	sd	t3,24(sp)
   11d54:	01013823          	sd	a6,16(sp)
   11d58:	00e13423          	sd	a4,8(sp)
   11d5c:	c7cff0ef          	jal	111d8 <_free_r>
   11d60:	01013803          	ld	a6,16(sp)
   11d64:	01813e03          	ld	t3,24(sp)
   11d68:	00813703          	ld	a4,8(sp)
   11d6c:	01083303          	ld	t1,16(a6)
   11d70:	000e2603          	lw	a2,0(t3)
   11d74:	00833683          	ld	a3,8(t1)
   11d78:	b89ff06f          	j	11900 <_malloc_r+0x424>
   11d7c:	55400613          	li	a2,1364
   11d80:	02d66663          	bltu	a2,a3,11dac <_malloc_r+0x8d0>
   11d84:	01235693          	srli	a3,t1,0x12
   11d88:	00169513          	slli	a0,a3,0x1
   11d8c:	0fa5051b          	addiw	a0,a0,250
   11d90:	00351513          	slli	a0,a0,0x3
   11d94:	07c6861b          	addiw	a2,a3,124
   11d98:	c41ff06f          	j	119d8 <_malloc_r+0x4fc>
   11d9c:	7f000513          	li	a0,2032
   11da0:	07f00893          	li	a7,127
   11da4:	07e00e13          	li	t3,126
   11da8:	835ff06f          	j	115dc <_malloc_r+0x100>
   11dac:	7f000513          	li	a0,2032
   11db0:	07e00613          	li	a2,126
   11db4:	c25ff06f          	j	119d8 <_malloc_r+0x4fc>
   11db8:	00883783          	ld	a5,8(a6)
   11dbc:	df1ff06f          	j	11bac <_malloc_r+0x6d0>

0000000000011dc0 <__malloc_lock>:
   11dc0:	00008067          	ret

0000000000011dc4 <__malloc_unlock>:
   11dc4:	00008067          	ret

0000000000011dc8 <_fclose_r>:
   11dc8:	fe010113          	addi	sp,sp,-32
   11dcc:	00113c23          	sd	ra,24(sp)
   11dd0:	01213023          	sd	s2,0(sp)
   11dd4:	02058863          	beqz	a1,11e04 <_fclose_r+0x3c>
   11dd8:	00813823          	sd	s0,16(sp)
   11ddc:	00913423          	sd	s1,8(sp)
   11de0:	00058413          	mv	s0,a1
   11de4:	00050493          	mv	s1,a0
   11de8:	00050663          	beqz	a0,11df4 <_fclose_r+0x2c>
   11dec:	04853783          	ld	a5,72(a0)
   11df0:	0c078c63          	beqz	a5,11ec8 <_fclose_r+0x100>
   11df4:	01041783          	lh	a5,16(s0)
   11df8:	02079263          	bnez	a5,11e1c <_fclose_r+0x54>
   11dfc:	01013403          	ld	s0,16(sp)
   11e00:	00813483          	ld	s1,8(sp)
   11e04:	01813083          	ld	ra,24(sp)
   11e08:	00000913          	li	s2,0
   11e0c:	00090513          	mv	a0,s2
   11e10:	00013903          	ld	s2,0(sp)
   11e14:	02010113          	addi	sp,sp,32
   11e18:	00008067          	ret
   11e1c:	00040593          	mv	a1,s0
   11e20:	00048513          	mv	a0,s1
   11e24:	0b8000ef          	jal	11edc <__sflush_r>
   11e28:	05043783          	ld	a5,80(s0)
   11e2c:	00050913          	mv	s2,a0
   11e30:	00078a63          	beqz	a5,11e44 <_fclose_r+0x7c>
   11e34:	03043583          	ld	a1,48(s0)
   11e38:	00048513          	mv	a0,s1
   11e3c:	000780e7          	jalr	a5
   11e40:	06054463          	bltz	a0,11ea8 <_fclose_r+0xe0>
   11e44:	01045783          	lhu	a5,16(s0)
   11e48:	0807f793          	andi	a5,a5,128
   11e4c:	06079663          	bnez	a5,11eb8 <_fclose_r+0xf0>
   11e50:	05843583          	ld	a1,88(s0)
   11e54:	00058c63          	beqz	a1,11e6c <_fclose_r+0xa4>
   11e58:	07440793          	addi	a5,s0,116
   11e5c:	00f58663          	beq	a1,a5,11e68 <_fclose_r+0xa0>
   11e60:	00048513          	mv	a0,s1
   11e64:	b74ff0ef          	jal	111d8 <_free_r>
   11e68:	04043c23          	sd	zero,88(s0)
   11e6c:	07843583          	ld	a1,120(s0)
   11e70:	00058863          	beqz	a1,11e80 <_fclose_r+0xb8>
   11e74:	00048513          	mv	a0,s1
   11e78:	b60ff0ef          	jal	111d8 <_free_r>
   11e7c:	06043c23          	sd	zero,120(s0)
   11e80:	aa5fe0ef          	jal	10924 <__sfp_lock_acquire>
   11e84:	00041823          	sh	zero,16(s0)
   11e88:	aa1fe0ef          	jal	10928 <__sfp_lock_release>
   11e8c:	01813083          	ld	ra,24(sp)
   11e90:	01013403          	ld	s0,16(sp)
   11e94:	00813483          	ld	s1,8(sp)
   11e98:	00090513          	mv	a0,s2
   11e9c:	00013903          	ld	s2,0(sp)
   11ea0:	02010113          	addi	sp,sp,32
   11ea4:	00008067          	ret
   11ea8:	01045783          	lhu	a5,16(s0)
   11eac:	fff00913          	li	s2,-1
   11eb0:	0807f793          	andi	a5,a5,128
   11eb4:	f8078ee3          	beqz	a5,11e50 <_fclose_r+0x88>
   11eb8:	01843583          	ld	a1,24(s0)
   11ebc:	00048513          	mv	a0,s1
   11ec0:	b18ff0ef          	jal	111d8 <_free_r>
   11ec4:	f8dff06f          	j	11e50 <_fclose_r+0x88>
   11ec8:	a39fe0ef          	jal	10900 <__sinit>
   11ecc:	f29ff06f          	j	11df4 <_fclose_r+0x2c>

0000000000011ed0 <fclose>:
   11ed0:	00050593          	mv	a1,a0
   11ed4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11ed8:	ef1ff06f          	j	11dc8 <_fclose_r>

0000000000011edc <__sflush_r>:
   11edc:	01059703          	lh	a4,16(a1)
   11ee0:	fd010113          	addi	sp,sp,-48
   11ee4:	02813023          	sd	s0,32(sp)
   11ee8:	01313423          	sd	s3,8(sp)
   11eec:	02113423          	sd	ra,40(sp)
   11ef0:	00877793          	andi	a5,a4,8
   11ef4:	00058413          	mv	s0,a1
   11ef8:	00050993          	mv	s3,a0
   11efc:	12079263          	bnez	a5,12020 <__sflush_r+0x144>
   11f00:	000017b7          	lui	a5,0x1
   11f04:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11f08:	0085a683          	lw	a3,8(a1)
   11f0c:	00f767b3          	or	a5,a4,a5
   11f10:	00f59823          	sh	a5,16(a1)
   11f14:	18d05c63          	blez	a3,120ac <__sflush_r+0x1d0>
   11f18:	04843803          	ld	a6,72(s0)
   11f1c:	0e080663          	beqz	a6,12008 <__sflush_r+0x12c>
   11f20:	00913c23          	sd	s1,24(sp)
   11f24:	03371693          	slli	a3,a4,0x33
   11f28:	0009a483          	lw	s1,0(s3)
   11f2c:	0009a023          	sw	zero,0(s3)
   11f30:	1806ca63          	bltz	a3,120c4 <__sflush_r+0x1e8>
   11f34:	03043583          	ld	a1,48(s0)
   11f38:	00000613          	li	a2,0
   11f3c:	00100693          	li	a3,1
   11f40:	00098513          	mv	a0,s3
   11f44:	000800e7          	jalr	a6
   11f48:	fff00793          	li	a5,-1
   11f4c:	00050613          	mv	a2,a0
   11f50:	1af50c63          	beq	a0,a5,12108 <__sflush_r+0x22c>
   11f54:	01041783          	lh	a5,16(s0)
   11f58:	04843803          	ld	a6,72(s0)
   11f5c:	0047f793          	andi	a5,a5,4
   11f60:	00078e63          	beqz	a5,11f7c <__sflush_r+0xa0>
   11f64:	00842703          	lw	a4,8(s0)
   11f68:	05843783          	ld	a5,88(s0)
   11f6c:	40e60633          	sub	a2,a2,a4
   11f70:	00078663          	beqz	a5,11f7c <__sflush_r+0xa0>
   11f74:	07042783          	lw	a5,112(s0)
   11f78:	40f60633          	sub	a2,a2,a5
   11f7c:	03043583          	ld	a1,48(s0)
   11f80:	00000693          	li	a3,0
   11f84:	00098513          	mv	a0,s3
   11f88:	000800e7          	jalr	a6
   11f8c:	fff00713          	li	a4,-1
   11f90:	01041783          	lh	a5,16(s0)
   11f94:	12e51c63          	bne	a0,a4,120cc <__sflush_r+0x1f0>
   11f98:	0009a683          	lw	a3,0(s3)
   11f9c:	01d00713          	li	a4,29
   11fa0:	18d76263          	bltu	a4,a3,12124 <__sflush_r+0x248>
   11fa4:	20400737          	lui	a4,0x20400
   11fa8:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11fac:	00d75733          	srl	a4,a4,a3
   11fb0:	00177713          	andi	a4,a4,1
   11fb4:	16070863          	beqz	a4,12124 <__sflush_r+0x248>
   11fb8:	01843683          	ld	a3,24(s0)
   11fbc:	fffff737          	lui	a4,0xfffff
   11fc0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11fc4:	00e7f733          	and	a4,a5,a4
   11fc8:	00e41823          	sh	a4,16(s0)
   11fcc:	00042423          	sw	zero,8(s0)
   11fd0:	00d43023          	sd	a3,0(s0)
   11fd4:	03379713          	slli	a4,a5,0x33
   11fd8:	00075663          	bgez	a4,11fe4 <__sflush_r+0x108>
   11fdc:	0009a783          	lw	a5,0(s3)
   11fe0:	10078863          	beqz	a5,120f0 <__sflush_r+0x214>
   11fe4:	05843583          	ld	a1,88(s0)
   11fe8:	0099a023          	sw	s1,0(s3)
   11fec:	10058a63          	beqz	a1,12100 <__sflush_r+0x224>
   11ff0:	07440793          	addi	a5,s0,116
   11ff4:	00f58663          	beq	a1,a5,12000 <__sflush_r+0x124>
   11ff8:	00098513          	mv	a0,s3
   11ffc:	9dcff0ef          	jal	111d8 <_free_r>
   12000:	01813483          	ld	s1,24(sp)
   12004:	04043c23          	sd	zero,88(s0)
   12008:	02813083          	ld	ra,40(sp)
   1200c:	02013403          	ld	s0,32(sp)
   12010:	00813983          	ld	s3,8(sp)
   12014:	00000513          	li	a0,0
   12018:	03010113          	addi	sp,sp,48
   1201c:	00008067          	ret
   12020:	01213823          	sd	s2,16(sp)
   12024:	0185b903          	ld	s2,24(a1)
   12028:	08090a63          	beqz	s2,120bc <__sflush_r+0x1e0>
   1202c:	00913c23          	sd	s1,24(sp)
   12030:	0005b483          	ld	s1,0(a1)
   12034:	00377713          	andi	a4,a4,3
   12038:	0125b023          	sd	s2,0(a1)
   1203c:	412484bb          	subw	s1,s1,s2
   12040:	00000793          	li	a5,0
   12044:	00071463          	bnez	a4,1204c <__sflush_r+0x170>
   12048:	0205a783          	lw	a5,32(a1)
   1204c:	00f42623          	sw	a5,12(s0)
   12050:	00904863          	bgtz	s1,12060 <__sflush_r+0x184>
   12054:	0640006f          	j	120b8 <__sflush_r+0x1dc>
   12058:	00a90933          	add	s2,s2,a0
   1205c:	04905e63          	blez	s1,120b8 <__sflush_r+0x1dc>
   12060:	04043783          	ld	a5,64(s0)
   12064:	03043583          	ld	a1,48(s0)
   12068:	00048693          	mv	a3,s1
   1206c:	00090613          	mv	a2,s2
   12070:	00098513          	mv	a0,s3
   12074:	000780e7          	jalr	a5
   12078:	40a484bb          	subw	s1,s1,a0
   1207c:	fca04ee3          	bgtz	a0,12058 <__sflush_r+0x17c>
   12080:	01045783          	lhu	a5,16(s0)
   12084:	01013903          	ld	s2,16(sp)
   12088:	0407e793          	ori	a5,a5,64
   1208c:	02813083          	ld	ra,40(sp)
   12090:	00f41823          	sh	a5,16(s0)
   12094:	02013403          	ld	s0,32(sp)
   12098:	01813483          	ld	s1,24(sp)
   1209c:	00813983          	ld	s3,8(sp)
   120a0:	fff00513          	li	a0,-1
   120a4:	03010113          	addi	sp,sp,48
   120a8:	00008067          	ret
   120ac:	0705a683          	lw	a3,112(a1)
   120b0:	e6d044e3          	bgtz	a3,11f18 <__sflush_r+0x3c>
   120b4:	f55ff06f          	j	12008 <__sflush_r+0x12c>
   120b8:	01813483          	ld	s1,24(sp)
   120bc:	01013903          	ld	s2,16(sp)
   120c0:	f49ff06f          	j	12008 <__sflush_r+0x12c>
   120c4:	09043603          	ld	a2,144(s0)
   120c8:	e95ff06f          	j	11f5c <__sflush_r+0x80>
   120cc:	01843683          	ld	a3,24(s0)
   120d0:	fffff737          	lui	a4,0xfffff
   120d4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   120d8:	00e7f733          	and	a4,a5,a4
   120dc:	00e41823          	sh	a4,16(s0)
   120e0:	00042423          	sw	zero,8(s0)
   120e4:	00d43023          	sd	a3,0(s0)
   120e8:	03379713          	slli	a4,a5,0x33
   120ec:	ee075ce3          	bgez	a4,11fe4 <__sflush_r+0x108>
   120f0:	05843583          	ld	a1,88(s0)
   120f4:	08a43823          	sd	a0,144(s0)
   120f8:	0099a023          	sw	s1,0(s3)
   120fc:	ee059ae3          	bnez	a1,11ff0 <__sflush_r+0x114>
   12100:	01813483          	ld	s1,24(sp)
   12104:	f05ff06f          	j	12008 <__sflush_r+0x12c>
   12108:	0009a783          	lw	a5,0(s3)
   1210c:	e40784e3          	beqz	a5,11f54 <__sflush_r+0x78>
   12110:	fe378713          	addi	a4,a5,-29
   12114:	00070c63          	beqz	a4,1212c <__sflush_r+0x250>
   12118:	fea78793          	addi	a5,a5,-22
   1211c:	00078863          	beqz	a5,1212c <__sflush_r+0x250>
   12120:	01045783          	lhu	a5,16(s0)
   12124:	0407e793          	ori	a5,a5,64
   12128:	f65ff06f          	j	1208c <__sflush_r+0x1b0>
   1212c:	0099a023          	sw	s1,0(s3)
   12130:	01813483          	ld	s1,24(sp)
   12134:	ed5ff06f          	j	12008 <__sflush_r+0x12c>

0000000000012138 <_fflush_r>:
   12138:	00050793          	mv	a5,a0
   1213c:	00050663          	beqz	a0,12148 <_fflush_r+0x10>
   12140:	04853703          	ld	a4,72(a0)
   12144:	00070e63          	beqz	a4,12160 <_fflush_r+0x28>
   12148:	01059703          	lh	a4,16(a1)
   1214c:	00071663          	bnez	a4,12158 <_fflush_r+0x20>
   12150:	00000513          	li	a0,0
   12154:	00008067          	ret
   12158:	00078513          	mv	a0,a5
   1215c:	d81ff06f          	j	11edc <__sflush_r>
   12160:	fe010113          	addi	sp,sp,-32
   12164:	00b13423          	sd	a1,8(sp)
   12168:	00113c23          	sd	ra,24(sp)
   1216c:	00a13023          	sd	a0,0(sp)
   12170:	f90fe0ef          	jal	10900 <__sinit>
   12174:	00813583          	ld	a1,8(sp)
   12178:	00013783          	ld	a5,0(sp)
   1217c:	01059703          	lh	a4,16(a1)
   12180:	00070a63          	beqz	a4,12194 <_fflush_r+0x5c>
   12184:	01813083          	ld	ra,24(sp)
   12188:	00078513          	mv	a0,a5
   1218c:	02010113          	addi	sp,sp,32
   12190:	d4dff06f          	j	11edc <__sflush_r>
   12194:	01813083          	ld	ra,24(sp)
   12198:	00000513          	li	a0,0
   1219c:	02010113          	addi	sp,sp,32
   121a0:	00008067          	ret

00000000000121a4 <fflush>:
   121a4:	06050063          	beqz	a0,12204 <fflush+0x60>
   121a8:	00050593          	mv	a1,a0
   121ac:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   121b0:	00050663          	beqz	a0,121bc <fflush+0x18>
   121b4:	04853783          	ld	a5,72(a0)
   121b8:	00078c63          	beqz	a5,121d0 <fflush+0x2c>
   121bc:	01059783          	lh	a5,16(a1)
   121c0:	00079663          	bnez	a5,121cc <fflush+0x28>
   121c4:	00000513          	li	a0,0
   121c8:	00008067          	ret
   121cc:	d11ff06f          	j	11edc <__sflush_r>
   121d0:	fe010113          	addi	sp,sp,-32
   121d4:	00b13423          	sd	a1,8(sp)
   121d8:	00a13023          	sd	a0,0(sp)
   121dc:	00113c23          	sd	ra,24(sp)
   121e0:	f20fe0ef          	jal	10900 <__sinit>
   121e4:	00813583          	ld	a1,8(sp)
   121e8:	00013503          	ld	a0,0(sp)
   121ec:	01059783          	lh	a5,16(a1)
   121f0:	02079863          	bnez	a5,12220 <fflush+0x7c>
   121f4:	01813083          	ld	ra,24(sp)
   121f8:	00000513          	li	a0,0
   121fc:	02010113          	addi	sp,sp,32
   12200:	00008067          	ret
   12204:	00013637          	lui	a2,0x13
   12208:	000125b7          	lui	a1,0x12
   1220c:	00013537          	lui	a0,0x13
   12210:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12214:	13858593          	addi	a1,a1,312 # 12138 <_fflush_r>
   12218:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   1221c:	f40fe06f          	j	1095c <_fwalk_sglue>
   12220:	01813083          	ld	ra,24(sp)
   12224:	02010113          	addi	sp,sp,32
   12228:	cb5ff06f          	j	11edc <__sflush_r>

000000000001222c <_sbrk_r>:
   1222c:	fe010113          	addi	sp,sp,-32
   12230:	00813823          	sd	s0,16(sp)
   12234:	00913423          	sd	s1,8(sp)
   12238:	00050493          	mv	s1,a0
   1223c:	00058513          	mv	a0,a1
   12240:	00113c23          	sd	ra,24(sp)
   12244:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12248:	228000ef          	jal	12470 <_sbrk>
   1224c:	fff00793          	li	a5,-1
   12250:	00f50c63          	beq	a0,a5,12268 <_sbrk_r+0x3c>
   12254:	01813083          	ld	ra,24(sp)
   12258:	01013403          	ld	s0,16(sp)
   1225c:	00813483          	ld	s1,8(sp)
   12260:	02010113          	addi	sp,sp,32
   12264:	00008067          	ret
   12268:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   1226c:	fe0784e3          	beqz	a5,12254 <_sbrk_r+0x28>
   12270:	01813083          	ld	ra,24(sp)
   12274:	01013403          	ld	s0,16(sp)
   12278:	00f4a023          	sw	a5,0(s1)
   1227c:	00813483          	ld	s1,8(sp)
   12280:	02010113          	addi	sp,sp,32
   12284:	00008067          	ret

0000000000012288 <__libc_fini_array>:
   12288:	fe010113          	addi	sp,sp,-32
   1228c:	00813823          	sd	s0,16(sp)
   12290:	000137b7          	lui	a5,0x13
   12294:	00013437          	lui	s0,0x13
   12298:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   1229c:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   122a0:	408787b3          	sub	a5,a5,s0
   122a4:	00913423          	sd	s1,8(sp)
   122a8:	00113c23          	sd	ra,24(sp)
   122ac:	4037d493          	srai	s1,a5,0x3
   122b0:	02048063          	beqz	s1,122d0 <__libc_fini_array+0x48>
   122b4:	ff840413          	addi	s0,s0,-8
   122b8:	00f40433          	add	s0,s0,a5
   122bc:	00043783          	ld	a5,0(s0)
   122c0:	fff48493          	addi	s1,s1,-1
   122c4:	ff840413          	addi	s0,s0,-8
   122c8:	000780e7          	jalr	a5
   122cc:	fe0498e3          	bnez	s1,122bc <__libc_fini_array+0x34>
   122d0:	01813083          	ld	ra,24(sp)
   122d4:	01013403          	ld	s0,16(sp)
   122d8:	00813483          	ld	s1,8(sp)
   122dc:	02010113          	addi	sp,sp,32
   122e0:	00008067          	ret

00000000000122e4 <__register_exitproc>:
   122e4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   122e8:	04078e63          	beqz	a5,12344 <__register_exitproc+0x60>
   122ec:	0087a703          	lw	a4,8(a5)
   122f0:	01f00813          	li	a6,31
   122f4:	08e84263          	blt	a6,a4,12378 <__register_exitproc+0x94>
   122f8:	02050863          	beqz	a0,12328 <__register_exitproc+0x44>
   122fc:	00371813          	slli	a6,a4,0x3
   12300:	01078833          	add	a6,a5,a6
   12304:	10c83823          	sd	a2,272(a6)
   12308:	3107a883          	lw	a7,784(a5)
   1230c:	00100613          	li	a2,1
   12310:	00e6163b          	sllw	a2,a2,a4
   12314:	00c8e8b3          	or	a7,a7,a2
   12318:	3117a823          	sw	a7,784(a5)
   1231c:	20d83823          	sd	a3,528(a6)
   12320:	00200693          	li	a3,2
   12324:	02d50663          	beq	a0,a3,12350 <__register_exitproc+0x6c>
   12328:	0017069b          	addiw	a3,a4,1
   1232c:	00371713          	slli	a4,a4,0x3
   12330:	00d7a423          	sw	a3,8(a5)
   12334:	00e787b3          	add	a5,a5,a4
   12338:	00b7b823          	sd	a1,16(a5)
   1233c:	00000513          	li	a0,0
   12340:	00008067          	ret
   12344:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12348:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   1234c:	fa1ff06f          	j	122ec <__register_exitproc+0x8>
   12350:	3147a683          	lw	a3,788(a5)
   12354:	00000513          	li	a0,0
   12358:	00d66633          	or	a2,a2,a3
   1235c:	0017069b          	addiw	a3,a4,1
   12360:	00371713          	slli	a4,a4,0x3
   12364:	30c7aa23          	sw	a2,788(a5)
   12368:	00d7a423          	sw	a3,8(a5)
   1236c:	00e787b3          	add	a5,a5,a4
   12370:	00b7b823          	sd	a1,16(a5)
   12374:	00008067          	ret
   12378:	fff00513          	li	a0,-1
   1237c:	00008067          	ret

0000000000012380 <_close>:
   12380:	03900893          	li	a7,57
   12384:	00000073          	ecall
   12388:	00054663          	bltz	a0,12394 <_close+0x14>
   1238c:	0005051b          	sext.w	a0,a0
   12390:	00008067          	ret
   12394:	fe010113          	addi	sp,sp,-32
   12398:	00113c23          	sd	ra,24(sp)
   1239c:	00a13423          	sd	a0,8(sp)
   123a0:	188000ef          	jal	12528 <__errno>
   123a4:	00813783          	ld	a5,8(sp)
   123a8:	01813083          	ld	ra,24(sp)
   123ac:	40f007bb          	negw	a5,a5
   123b0:	00f52023          	sw	a5,0(a0)
   123b4:	fff00513          	li	a0,-1
   123b8:	02010113          	addi	sp,sp,32
   123bc:	00008067          	ret

00000000000123c0 <_exit>:
   123c0:	05d00893          	li	a7,93
   123c4:	00000073          	ecall
   123c8:	00054463          	bltz	a0,123d0 <_exit+0x10>
   123cc:	0000006f          	j	123cc <_exit+0xc>
   123d0:	fe010113          	addi	sp,sp,-32
   123d4:	00113c23          	sd	ra,24(sp)
   123d8:	00a13423          	sd	a0,8(sp)
   123dc:	14c000ef          	jal	12528 <__errno>
   123e0:	00813783          	ld	a5,8(sp)
   123e4:	40f007bb          	negw	a5,a5
   123e8:	00f52023          	sw	a5,0(a0)
   123ec:	0000006f          	j	123ec <_exit+0x2c>

00000000000123f0 <_lseek>:
   123f0:	03e00893          	li	a7,62
   123f4:	00000073          	ecall
   123f8:	00054463          	bltz	a0,12400 <_lseek+0x10>
   123fc:	00008067          	ret
   12400:	fe010113          	addi	sp,sp,-32
   12404:	00113c23          	sd	ra,24(sp)
   12408:	00a13423          	sd	a0,8(sp)
   1240c:	11c000ef          	jal	12528 <__errno>
   12410:	00813783          	ld	a5,8(sp)
   12414:	01813083          	ld	ra,24(sp)
   12418:	40f007bb          	negw	a5,a5
   1241c:	00f52023          	sw	a5,0(a0)
   12420:	fff00793          	li	a5,-1
   12424:	00078513          	mv	a0,a5
   12428:	02010113          	addi	sp,sp,32
   1242c:	00008067          	ret

0000000000012430 <_read>:
   12430:	03f00893          	li	a7,63
   12434:	00000073          	ecall
   12438:	00054463          	bltz	a0,12440 <_read+0x10>
   1243c:	00008067          	ret
   12440:	fe010113          	addi	sp,sp,-32
   12444:	00113c23          	sd	ra,24(sp)
   12448:	00a13423          	sd	a0,8(sp)
   1244c:	0dc000ef          	jal	12528 <__errno>
   12450:	00813783          	ld	a5,8(sp)
   12454:	01813083          	ld	ra,24(sp)
   12458:	40f007bb          	negw	a5,a5
   1245c:	00f52023          	sw	a5,0(a0)
   12460:	fff00793          	li	a5,-1
   12464:	00078513          	mv	a0,a5
   12468:	02010113          	addi	sp,sp,32
   1246c:	00008067          	ret

0000000000012470 <_sbrk>:
   12470:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12474:	ff010113          	addi	sp,sp,-16
   12478:	00113423          	sd	ra,8(sp)
   1247c:	00050713          	mv	a4,a0
   12480:	02079063          	bnez	a5,124a0 <_sbrk+0x30>
   12484:	0d600893          	li	a7,214
   12488:	00000513          	li	a0,0
   1248c:	00000073          	ecall
   12490:	fff00793          	li	a5,-1
   12494:	02f50c63          	beq	a0,a5,124cc <_sbrk+0x5c>
   12498:	00050793          	mv	a5,a0
   1249c:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   124a0:	00f70533          	add	a0,a4,a5
   124a4:	0d600893          	li	a7,214
   124a8:	00000073          	ecall
   124ac:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   124b0:	00f70733          	add	a4,a4,a5
   124b4:	00e51c63          	bne	a0,a4,124cc <_sbrk+0x5c>
   124b8:	00813083          	ld	ra,8(sp)
   124bc:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   124c0:	00078513          	mv	a0,a5
   124c4:	01010113          	addi	sp,sp,16
   124c8:	00008067          	ret
   124cc:	05c000ef          	jal	12528 <__errno>
   124d0:	00813083          	ld	ra,8(sp)
   124d4:	00c00793          	li	a5,12
   124d8:	00f52023          	sw	a5,0(a0)
   124dc:	fff00513          	li	a0,-1
   124e0:	01010113          	addi	sp,sp,16
   124e4:	00008067          	ret

00000000000124e8 <_write>:
   124e8:	04000893          	li	a7,64
   124ec:	00000073          	ecall
   124f0:	00054463          	bltz	a0,124f8 <_write+0x10>
   124f4:	00008067          	ret
   124f8:	fe010113          	addi	sp,sp,-32
   124fc:	00113c23          	sd	ra,24(sp)
   12500:	00a13423          	sd	a0,8(sp)
   12504:	024000ef          	jal	12528 <__errno>
   12508:	00813783          	ld	a5,8(sp)
   1250c:	01813083          	ld	ra,24(sp)
   12510:	40f007bb          	negw	a5,a5
   12514:	00f52023          	sw	a5,0(a0)
   12518:	fff00793          	li	a5,-1
   1251c:	00078513          	mv	a0,a5
   12520:	02010113          	addi	sp,sp,32
   12524:	00008067          	ret

0000000000012528 <__errno>:
   12528:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1252c:	00008067          	ret

Disassembly of section .rodata:

0000000000012530 <.rodata>:
   12530:	756d                	.insn	2, 0x756d
   12532:	286c                	.insn	2, 0x286c
   12534:	0000                	.insn	2, 0x0000
   12536:	0000                	.insn	2, 0x0000
   12538:	202c                	.insn	2, 0x202c
   1253a:	0000                	.insn	2, 0x0000
   1253c:	0000                	.insn	2, 0x0000
   1253e:	0000                	.insn	2, 0x0000
   12540:	2029                	.insn	2, 0x2029
   12542:	203d                	.insn	2, 0x203d
   12544:	0000                	.insn	2, 0x0000
   12546:	0000                	.insn	2, 0x0000
   12548:	5b20                	.insn	2, 0x5b20
   1254a:	4150                	.insn	2, 0x4150
   1254c:	0a5d5353          	.insn	4, 0x0a5d5353
	...
   12558:	5b20                	.insn	2, 0x5b20
   1255a:	4146                	.insn	2, 0x4146
   1255c:	4c49                	.insn	2, 0x4c49
   1255e:	205d                	.insn	2, 0x205d
   12560:	7865                	.insn	2, 0x7865
   12562:	6570                	.insn	2, 0x6570
   12564:	64657463          	bgeu	a0,t1,12bac <__EH_FRAME_BEGIN__+0x60c>
   12568:	203a                	.insn	2, 0x203a
   1256a:	0000                	.insn	2, 0x0000
   1256c:	0000                	.insn	2, 0x0000
   1256e:	0000                	.insn	2, 0x0000
   12570:	000a                	.insn	2, 0x000a
   12572:	0000                	.insn	2, 0x0000
   12574:	0000                	.insn	2, 0x0000
   12576:	0000                	.insn	2, 0x0000
   12578:	756d                	.insn	2, 0x756d
   1257a:	686c                	.insn	2, 0x686c
   1257c:	7220                	.insn	2, 0x7220
   1257e:	7365                	.insn	2, 0x7365
   12580:	6c75                	.insn	2, 0x6c75
   12582:	7374                	.insn	2, 0x7374
   12584:	0a3a                	.insn	2, 0x0a3a
   12586:	0000                	.insn	2, 0x0000
   12588:	23cc0953          	.insn	4, 0x23cc0953
   1258c:	b499                	.insn	2, 0xb499
   1258e:	fffe                	.insn	2, 0xfffe
   12590:	3210                	.insn	2, 0x3210
   12592:	7654                	.insn	2, 0x7654
   12594:	ba98                	.insn	2, 0xba98
   12596:	fedc                	.insn	2, 0xfedc
   12598:	89abcdef          	jal	s11,fffffffffffce632 <__BSS_END__+0xfffffffffffba6ba>
   1259c:	01234567          	.insn	4, 0x01234567

Disassembly of section .eh_frame:

00000000000125a0 <__EH_FRAME_BEGIN__>:
   125a0:	0000                	.insn	2, 0x0000
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

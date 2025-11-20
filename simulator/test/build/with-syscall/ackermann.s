
test/build/with-syscall/ackermann.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	581000ef          	jal	10eb4 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	1c4020ef          	jal	1230c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	1d450513          	addi	a0,a0,468 # 121d4 <__libc_fini_array>
   1015c:	6910006f          	j	10fec <atexit>
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
   10184:	455000ef          	jal	10dd8 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	e6450513          	addi	a0,a0,-412 # 10fec <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	04050513          	addi	a0,a0,64 # 121d4 <__libc_fini_array>
   1019c:	651000ef          	jal	10fec <atexit>
   101a0:	3a5000ef          	jal	10d44 <__libc_init_array>
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
   101d8:	4a050513          	addi	a0,a0,1184 # 124a0 <__EH_FRAME_BEGIN__>
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
   1020c:	4a050513          	addi	a0,a0,1184 # 124a0 <__EH_FRAME_BEGIN__>
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
   1032c:	48078513          	addi	a0,a5,1152 # 12480 <__errno+0xc>
   10330:	108000ef          	jal	10438 <print_s>
   10334:	fec42783          	lw	a5,-20(s0)
   10338:	00078513          	mv	a0,a5
   1033c:	090000ef          	jal	103cc <print_d>
   10340:	000127b7          	lui	a5,0x12
   10344:	49078513          	addi	a0,a5,1168 # 12490 <__errno+0x1c>
   10348:	0f0000ef          	jal	10438 <print_s>
   1034c:	fe842783          	lw	a5,-24(s0)
   10350:	00078513          	mv	a0,a5
   10354:	078000ef          	jal	103cc <print_d>
   10358:	000127b7          	lui	a5,0x12
   1035c:	49878513          	addi	a0,a5,1176 # 12498 <__errno+0x24>
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
   10550:	d1458593          	addi	a1,a1,-748 # 11d14 <_fclose_r>
   10554:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10558:	34c0006f          	j	108a4 <_fwalk_sglue>

000000000001055c <cleanup_stdio>:
   1055c:	00853583          	ld	a1,8(a0)
   10560:	ff010113          	addi	sp,sp,-16
   10564:	00813023          	sd	s0,0(sp)
   10568:	00113423          	sd	ra,8(sp)
   1056c:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10570:	00050413          	mv	s0,a0
   10574:	00f58463          	beq	a1,a5,1057c <cleanup_stdio+0x20>
   10578:	79c010ef          	jal	11d14 <_fclose_r>
   1057c:	01043583          	ld	a1,16(s0)
   10580:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10584:	00f58663          	beq	a1,a5,10590 <cleanup_stdio+0x34>
   10588:	00040513          	mv	a0,s0
   1058c:	788010ef          	jal	11d14 <_fclose_r>
   10590:	01843583          	ld	a1,24(s0)
   10594:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10598:	00f58c63          	beq	a1,a5,105b0 <cleanup_stdio+0x54>
   1059c:	00040513          	mv	a0,s0
   105a0:	00013403          	ld	s0,0(sp)
   105a4:	00813083          	ld	ra,8(sp)
   105a8:	01010113          	addi	sp,sp,16
   105ac:	7680106f          	j	11d14 <_fclose_r>
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
   10620:	7b8000ef          	jal	10dd8 <memset>
   10624:	00011a37          	lui	s4,0x11
   10628:	000119b7          	lui	s3,0x11
   1062c:	00011937          	lui	s2,0x11
   10630:	000114b7          	lui	s1,0x11
   10634:	000107b7          	lui	a5,0x10
   10638:	974a0a13          	addi	s4,s4,-1676 # 10974 <__sread>
   1063c:	9d898993          	addi	s3,s3,-1576 # 109d8 <__swrite>
   10640:	a6090913          	addi	s2,s2,-1440 # 10a60 <__sseek>
   10644:	ac448493          	addi	s1,s1,-1340 # 10ac4 <__sclose>
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
   10688:	750000ef          	jal	10dd8 <memset>
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
   106d4:	704000ef          	jal	10dd8 <memset>
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
   10728:	10078463          	beqz	a5,10830 <__sfp+0x120>
   1072c:	000136b7          	lui	a3,0x13
   10730:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10734:	0086a703          	lw	a4,8(a3)
   10738:	08e05c63          	blez	a4,107d0 <__sfp+0xc0>
   1073c:	02071713          	slli	a4,a4,0x20
   10740:	02075713          	srli	a4,a4,0x20
   10744:	00171793          	slli	a5,a4,0x1
   10748:	00e787b3          	add	a5,a5,a4
   1074c:	0106b403          	ld	s0,16(a3)
   10750:	00279793          	slli	a5,a5,0x2
   10754:	40e787b3          	sub	a5,a5,a4
   10758:	00479793          	slli	a5,a5,0x4
   1075c:	00f407b3          	add	a5,s0,a5
   10760:	00c0006f          	j	1076c <__sfp+0x5c>
   10764:	0b040413          	addi	s0,s0,176
   10768:	06f40463          	beq	s0,a5,107d0 <__sfp+0xc0>
   1076c:	01041703          	lh	a4,16(s0)
   10770:	fe071ae3          	bnez	a4,10764 <__sfp+0x54>
   10774:	ffff07b7          	lui	a5,0xffff0
   10778:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   1077c:	00f42823          	sw	a5,16(s0)
   10780:	0a042623          	sw	zero,172(s0)
   10784:	00043023          	sd	zero,0(s0)
   10788:	00043423          	sd	zero,8(s0)
   1078c:	00043c23          	sd	zero,24(s0)
   10790:	02042023          	sw	zero,32(s0)
   10794:	02042423          	sw	zero,40(s0)
   10798:	00800613          	li	a2,8
   1079c:	00000593          	li	a1,0
   107a0:	0a440513          	addi	a0,s0,164
   107a4:	634000ef          	jal	10dd8 <memset>
   107a8:	04043c23          	sd	zero,88(s0)
   107ac:	06042023          	sw	zero,96(s0)
   107b0:	06043c23          	sd	zero,120(s0)
   107b4:	08042023          	sw	zero,128(s0)
   107b8:	02813083          	ld	ra,40(sp)
   107bc:	00040513          	mv	a0,s0
   107c0:	02013403          	ld	s0,32(sp)
   107c4:	01813483          	ld	s1,24(sp)
   107c8:	03010113          	addi	sp,sp,48
   107cc:	00008067          	ret
   107d0:	0006b403          	ld	s0,0(a3)
   107d4:	00040663          	beqz	s0,107e0 <__sfp+0xd0>
   107d8:	00040693          	mv	a3,s0
   107dc:	f59ff06f          	j	10734 <__sfp+0x24>
   107e0:	2d800593          	li	a1,728
   107e4:	00048513          	mv	a0,s1
   107e8:	00d13423          	sd	a3,8(sp)
   107ec:	43d000ef          	jal	11428 <_malloc_r>
   107f0:	00813683          	ld	a3,8(sp)
   107f4:	00050413          	mv	s0,a0
   107f8:	04050063          	beqz	a0,10838 <__sfp+0x128>
   107fc:	00400793          	li	a5,4
   10800:	00f52423          	sw	a5,8(a0)
   10804:	01850513          	addi	a0,a0,24
   10808:	00043023          	sd	zero,0(s0)
   1080c:	00a43823          	sd	a0,16(s0)
   10810:	2c000613          	li	a2,704
   10814:	00000593          	li	a1,0
   10818:	00d13423          	sd	a3,8(sp)
   1081c:	5bc000ef          	jal	10dd8 <memset>
   10820:	00813683          	ld	a3,8(sp)
   10824:	0086b023          	sd	s0,0(a3)
   10828:	00040693          	mv	a3,s0
   1082c:	f09ff06f          	j	10734 <__sfp+0x24>
   10830:	d99ff0ef          	jal	105c8 <global_stdio_init.part.0>
   10834:	ef9ff06f          	j	1072c <__sfp+0x1c>
   10838:	0006b023          	sd	zero,0(a3)
   1083c:	00c00793          	li	a5,12
   10840:	00f4a023          	sw	a5,0(s1)
   10844:	f75ff06f          	j	107b8 <__sfp+0xa8>

0000000000010848 <__sinit>:
   10848:	04853783          	ld	a5,72(a0)
   1084c:	00078463          	beqz	a5,10854 <__sinit+0xc>
   10850:	00008067          	ret
   10854:	000107b7          	lui	a5,0x10
   10858:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   1085c:	55c78793          	addi	a5,a5,1372 # 1055c <cleanup_stdio>
   10860:	04f53423          	sd	a5,72(a0)
   10864:	fe0716e3          	bnez	a4,10850 <__sinit+0x8>
   10868:	d61ff06f          	j	105c8 <global_stdio_init.part.0>

000000000001086c <__sfp_lock_acquire>:
   1086c:	00008067          	ret

0000000000010870 <__sfp_lock_release>:
   10870:	00008067          	ret

0000000000010874 <__fp_lock_all>:
   10874:	00013637          	lui	a2,0x13
   10878:	000105b7          	lui	a1,0x10
   1087c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10880:	53858593          	addi	a1,a1,1336 # 10538 <__fp_lock>
   10884:	00000513          	li	a0,0
   10888:	01c0006f          	j	108a4 <_fwalk_sglue>

000000000001088c <__fp_unlock_all>:
   1088c:	00013637          	lui	a2,0x13
   10890:	000105b7          	lui	a1,0x10
   10894:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10898:	5c058593          	addi	a1,a1,1472 # 105c0 <__fp_unlock>
   1089c:	00000513          	li	a0,0
   108a0:	0040006f          	j	108a4 <_fwalk_sglue>

00000000000108a4 <_fwalk_sglue>:
   108a4:	fb010113          	addi	sp,sp,-80
   108a8:	03213823          	sd	s2,48(sp)
   108ac:	03313423          	sd	s3,40(sp)
   108b0:	03413023          	sd	s4,32(sp)
   108b4:	01513c23          	sd	s5,24(sp)
   108b8:	01613823          	sd	s6,16(sp)
   108bc:	01713423          	sd	s7,8(sp)
   108c0:	04113423          	sd	ra,72(sp)
   108c4:	04813023          	sd	s0,64(sp)
   108c8:	02913c23          	sd	s1,56(sp)
   108cc:	00060913          	mv	s2,a2
   108d0:	00050a13          	mv	s4,a0
   108d4:	00058a93          	mv	s5,a1
   108d8:	00000b13          	li	s6,0
   108dc:	00100b93          	li	s7,1
   108e0:	fff00993          	li	s3,-1
   108e4:	00892783          	lw	a5,8(s2)
   108e8:	04f05a63          	blez	a5,1093c <_fwalk_sglue+0x98>
   108ec:	02079793          	slli	a5,a5,0x20
   108f0:	0207d793          	srli	a5,a5,0x20
   108f4:	00179493          	slli	s1,a5,0x1
   108f8:	00f484b3          	add	s1,s1,a5
   108fc:	01093403          	ld	s0,16(s2)
   10900:	00249493          	slli	s1,s1,0x2
   10904:	40f484b3          	sub	s1,s1,a5
   10908:	00449493          	slli	s1,s1,0x4
   1090c:	009404b3          	add	s1,s0,s1
   10910:	01045783          	lhu	a5,16(s0)
   10914:	02fbf063          	bgeu	s7,a5,10934 <_fwalk_sglue+0x90>
   10918:	01241783          	lh	a5,18(s0)
   1091c:	00040593          	mv	a1,s0
   10920:	000a0513          	mv	a0,s4
   10924:	01378863          	beq	a5,s3,10934 <_fwalk_sglue+0x90>
   10928:	000a80e7          	jalr	s5
   1092c:	01656b33          	or	s6,a0,s6
   10930:	000b0b1b          	sext.w	s6,s6
   10934:	0b040413          	addi	s0,s0,176
   10938:	fc941ce3          	bne	s0,s1,10910 <_fwalk_sglue+0x6c>
   1093c:	00093903          	ld	s2,0(s2)
   10940:	fa0912e3          	bnez	s2,108e4 <_fwalk_sglue+0x40>
   10944:	04813083          	ld	ra,72(sp)
   10948:	04013403          	ld	s0,64(sp)
   1094c:	03813483          	ld	s1,56(sp)
   10950:	03013903          	ld	s2,48(sp)
   10954:	02813983          	ld	s3,40(sp)
   10958:	02013a03          	ld	s4,32(sp)
   1095c:	01813a83          	ld	s5,24(sp)
   10960:	00813b83          	ld	s7,8(sp)
   10964:	000b0513          	mv	a0,s6
   10968:	01013b03          	ld	s6,16(sp)
   1096c:	05010113          	addi	sp,sp,80
   10970:	00008067          	ret

0000000000010974 <__sread>:
   10974:	ff010113          	addi	sp,sp,-16
   10978:	00813023          	sd	s0,0(sp)
   1097c:	00058413          	mv	s0,a1
   10980:	01259583          	lh	a1,18(a1)
   10984:	00113423          	sd	ra,8(sp)
   10988:	2ec000ef          	jal	10c74 <_read_r>
   1098c:	02054063          	bltz	a0,109ac <__sread+0x38>
   10990:	09043783          	ld	a5,144(s0)
   10994:	00813083          	ld	ra,8(sp)
   10998:	00a787b3          	add	a5,a5,a0
   1099c:	08f43823          	sd	a5,144(s0)
   109a0:	00013403          	ld	s0,0(sp)
   109a4:	01010113          	addi	sp,sp,16
   109a8:	00008067          	ret
   109ac:	01045783          	lhu	a5,16(s0)
   109b0:	fffff737          	lui	a4,0xfffff
   109b4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   109b8:	00e7f7b3          	and	a5,a5,a4
   109bc:	00813083          	ld	ra,8(sp)
   109c0:	00f41823          	sh	a5,16(s0)
   109c4:	00013403          	ld	s0,0(sp)
   109c8:	01010113          	addi	sp,sp,16
   109cc:	00008067          	ret

00000000000109d0 <__seofread>:
   109d0:	00000513          	li	a0,0
   109d4:	00008067          	ret

00000000000109d8 <__swrite>:
   109d8:	01059783          	lh	a5,16(a1)
   109dc:	fd010113          	addi	sp,sp,-48
   109e0:	00068313          	mv	t1,a3
   109e4:	02113423          	sd	ra,40(sp)
   109e8:	1007f693          	andi	a3,a5,256
   109ec:	00058713          	mv	a4,a1
   109f0:	00060893          	mv	a7,a2
   109f4:	00050813          	mv	a6,a0
   109f8:	02069863          	bnez	a3,10a28 <__swrite+0x50>
   109fc:	fffff6b7          	lui	a3,0xfffff
   10a00:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10a04:	02813083          	ld	ra,40(sp)
   10a08:	00d7f7b3          	and	a5,a5,a3
   10a0c:	01271583          	lh	a1,18(a4)
   10a10:	00f71823          	sh	a5,16(a4)
   10a14:	00030693          	mv	a3,t1
   10a18:	00088613          	mv	a2,a7
   10a1c:	00080513          	mv	a0,a6
   10a20:	03010113          	addi	sp,sp,48
   10a24:	2b80006f          	j	10cdc <_write_r>
   10a28:	01259583          	lh	a1,18(a1)
   10a2c:	00c13823          	sd	a2,16(sp)
   10a30:	00200693          	li	a3,2
   10a34:	00000613          	li	a2,0
   10a38:	00613c23          	sd	t1,24(sp)
   10a3c:	00e13023          	sd	a4,0(sp)
   10a40:	00a13423          	sd	a0,8(sp)
   10a44:	1c8000ef          	jal	10c0c <_lseek_r>
   10a48:	00013703          	ld	a4,0(sp)
   10a4c:	01813303          	ld	t1,24(sp)
   10a50:	01013883          	ld	a7,16(sp)
   10a54:	01071783          	lh	a5,16(a4)
   10a58:	00813803          	ld	a6,8(sp)
   10a5c:	fa1ff06f          	j	109fc <__swrite+0x24>

0000000000010a60 <__sseek>:
   10a60:	ff010113          	addi	sp,sp,-16
   10a64:	00813023          	sd	s0,0(sp)
   10a68:	00058413          	mv	s0,a1
   10a6c:	01259583          	lh	a1,18(a1)
   10a70:	00113423          	sd	ra,8(sp)
   10a74:	198000ef          	jal	10c0c <_lseek_r>
   10a78:	fff00713          	li	a4,-1
   10a7c:	01041783          	lh	a5,16(s0)
   10a80:	02e50263          	beq	a0,a4,10aa4 <__sseek+0x44>
   10a84:	00001737          	lui	a4,0x1
   10a88:	00e7e7b3          	or	a5,a5,a4
   10a8c:	00813083          	ld	ra,8(sp)
   10a90:	08a43823          	sd	a0,144(s0)
   10a94:	00f41823          	sh	a5,16(s0)
   10a98:	00013403          	ld	s0,0(sp)
   10a9c:	01010113          	addi	sp,sp,16
   10aa0:	00008067          	ret
   10aa4:	80050713          	addi	a4,a0,-2048
   10aa8:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10aac:	00e7f7b3          	and	a5,a5,a4
   10ab0:	00813083          	ld	ra,8(sp)
   10ab4:	00f41823          	sh	a5,16(s0)
   10ab8:	00013403          	ld	s0,0(sp)
   10abc:	01010113          	addi	sp,sp,16
   10ac0:	00008067          	ret

0000000000010ac4 <__sclose>:
   10ac4:	01259583          	lh	a1,18(a1)
   10ac8:	0040006f          	j	10acc <_close_r>

0000000000010acc <_close_r>:
   10acc:	fe010113          	addi	sp,sp,-32
   10ad0:	00813823          	sd	s0,16(sp)
   10ad4:	00913423          	sd	s1,8(sp)
   10ad8:	00050493          	mv	s1,a0
   10adc:	00058513          	mv	a0,a1
   10ae0:	00113c23          	sd	ra,24(sp)
   10ae4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10ae8:	7e4010ef          	jal	122cc <_close>
   10aec:	fff00793          	li	a5,-1
   10af0:	00f50c63          	beq	a0,a5,10b08 <_close_r+0x3c>
   10af4:	01813083          	ld	ra,24(sp)
   10af8:	01013403          	ld	s0,16(sp)
   10afc:	00813483          	ld	s1,8(sp)
   10b00:	02010113          	addi	sp,sp,32
   10b04:	00008067          	ret
   10b08:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b0c:	fe0784e3          	beqz	a5,10af4 <_close_r+0x28>
   10b10:	01813083          	ld	ra,24(sp)
   10b14:	01013403          	ld	s0,16(sp)
   10b18:	00f4a023          	sw	a5,0(s1)
   10b1c:	00813483          	ld	s1,8(sp)
   10b20:	02010113          	addi	sp,sp,32
   10b24:	00008067          	ret

0000000000010b28 <_reclaim_reent>:
   10b28:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10b2c:	0ca78e63          	beq	a5,a0,10c08 <_reclaim_reent+0xe0>
   10b30:	06853583          	ld	a1,104(a0)
   10b34:	fd010113          	addi	sp,sp,-48
   10b38:	00913c23          	sd	s1,24(sp)
   10b3c:	02113423          	sd	ra,40(sp)
   10b40:	02813023          	sd	s0,32(sp)
   10b44:	00050493          	mv	s1,a0
   10b48:	04058863          	beqz	a1,10b98 <_reclaim_reent+0x70>
   10b4c:	01213823          	sd	s2,16(sp)
   10b50:	01313423          	sd	s3,8(sp)
   10b54:	00000913          	li	s2,0
   10b58:	20000993          	li	s3,512
   10b5c:	012587b3          	add	a5,a1,s2
   10b60:	0007b403          	ld	s0,0(a5)
   10b64:	00040e63          	beqz	s0,10b80 <_reclaim_reent+0x58>
   10b68:	00040593          	mv	a1,s0
   10b6c:	00043403          	ld	s0,0(s0)
   10b70:	00048513          	mv	a0,s1
   10b74:	5b0000ef          	jal	11124 <_free_r>
   10b78:	fe0418e3          	bnez	s0,10b68 <_reclaim_reent+0x40>
   10b7c:	0684b583          	ld	a1,104(s1)
   10b80:	00890913          	addi	s2,s2,8
   10b84:	fd391ce3          	bne	s2,s3,10b5c <_reclaim_reent+0x34>
   10b88:	00048513          	mv	a0,s1
   10b8c:	598000ef          	jal	11124 <_free_r>
   10b90:	01013903          	ld	s2,16(sp)
   10b94:	00813983          	ld	s3,8(sp)
   10b98:	0504b583          	ld	a1,80(s1)
   10b9c:	00058663          	beqz	a1,10ba8 <_reclaim_reent+0x80>
   10ba0:	00048513          	mv	a0,s1
   10ba4:	580000ef          	jal	11124 <_free_r>
   10ba8:	0604b403          	ld	s0,96(s1)
   10bac:	00040c63          	beqz	s0,10bc4 <_reclaim_reent+0x9c>
   10bb0:	00040593          	mv	a1,s0
   10bb4:	00043403          	ld	s0,0(s0)
   10bb8:	00048513          	mv	a0,s1
   10bbc:	568000ef          	jal	11124 <_free_r>
   10bc0:	fe0418e3          	bnez	s0,10bb0 <_reclaim_reent+0x88>
   10bc4:	0784b583          	ld	a1,120(s1)
   10bc8:	00058663          	beqz	a1,10bd4 <_reclaim_reent+0xac>
   10bcc:	00048513          	mv	a0,s1
   10bd0:	554000ef          	jal	11124 <_free_r>
   10bd4:	0484b783          	ld	a5,72(s1)
   10bd8:	00078e63          	beqz	a5,10bf4 <_reclaim_reent+0xcc>
   10bdc:	02013403          	ld	s0,32(sp)
   10be0:	02813083          	ld	ra,40(sp)
   10be4:	00048513          	mv	a0,s1
   10be8:	01813483          	ld	s1,24(sp)
   10bec:	03010113          	addi	sp,sp,48
   10bf0:	00078067          	jr	a5
   10bf4:	02813083          	ld	ra,40(sp)
   10bf8:	02013403          	ld	s0,32(sp)
   10bfc:	01813483          	ld	s1,24(sp)
   10c00:	03010113          	addi	sp,sp,48
   10c04:	00008067          	ret
   10c08:	00008067          	ret

0000000000010c0c <_lseek_r>:
   10c0c:	fe010113          	addi	sp,sp,-32
   10c10:	00058793          	mv	a5,a1
   10c14:	00813823          	sd	s0,16(sp)
   10c18:	00913423          	sd	s1,8(sp)
   10c1c:	00060593          	mv	a1,a2
   10c20:	00050493          	mv	s1,a0
   10c24:	00068613          	mv	a2,a3
   10c28:	00078513          	mv	a0,a5
   10c2c:	00113c23          	sd	ra,24(sp)
   10c30:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c34:	708010ef          	jal	1233c <_lseek>
   10c38:	fff00793          	li	a5,-1
   10c3c:	00f50c63          	beq	a0,a5,10c54 <_lseek_r+0x48>
   10c40:	01813083          	ld	ra,24(sp)
   10c44:	01013403          	ld	s0,16(sp)
   10c48:	00813483          	ld	s1,8(sp)
   10c4c:	02010113          	addi	sp,sp,32
   10c50:	00008067          	ret
   10c54:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c58:	fe0784e3          	beqz	a5,10c40 <_lseek_r+0x34>
   10c5c:	01813083          	ld	ra,24(sp)
   10c60:	01013403          	ld	s0,16(sp)
   10c64:	00f4a023          	sw	a5,0(s1)
   10c68:	00813483          	ld	s1,8(sp)
   10c6c:	02010113          	addi	sp,sp,32
   10c70:	00008067          	ret

0000000000010c74 <_read_r>:
   10c74:	fe010113          	addi	sp,sp,-32
   10c78:	00058793          	mv	a5,a1
   10c7c:	00813823          	sd	s0,16(sp)
   10c80:	00913423          	sd	s1,8(sp)
   10c84:	00060593          	mv	a1,a2
   10c88:	00050493          	mv	s1,a0
   10c8c:	00068613          	mv	a2,a3
   10c90:	00078513          	mv	a0,a5
   10c94:	00113c23          	sd	ra,24(sp)
   10c98:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c9c:	6e0010ef          	jal	1237c <_read>
   10ca0:	fff00793          	li	a5,-1
   10ca4:	00f50c63          	beq	a0,a5,10cbc <_read_r+0x48>
   10ca8:	01813083          	ld	ra,24(sp)
   10cac:	01013403          	ld	s0,16(sp)
   10cb0:	00813483          	ld	s1,8(sp)
   10cb4:	02010113          	addi	sp,sp,32
   10cb8:	00008067          	ret
   10cbc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10cc0:	fe0784e3          	beqz	a5,10ca8 <_read_r+0x34>
   10cc4:	01813083          	ld	ra,24(sp)
   10cc8:	01013403          	ld	s0,16(sp)
   10ccc:	00f4a023          	sw	a5,0(s1)
   10cd0:	00813483          	ld	s1,8(sp)
   10cd4:	02010113          	addi	sp,sp,32
   10cd8:	00008067          	ret

0000000000010cdc <_write_r>:
   10cdc:	fe010113          	addi	sp,sp,-32
   10ce0:	00058793          	mv	a5,a1
   10ce4:	00813823          	sd	s0,16(sp)
   10ce8:	00913423          	sd	s1,8(sp)
   10cec:	00060593          	mv	a1,a2
   10cf0:	00050493          	mv	s1,a0
   10cf4:	00068613          	mv	a2,a3
   10cf8:	00078513          	mv	a0,a5
   10cfc:	00113c23          	sd	ra,24(sp)
   10d00:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d04:	730010ef          	jal	12434 <_write>
   10d08:	fff00793          	li	a5,-1
   10d0c:	00f50c63          	beq	a0,a5,10d24 <_write_r+0x48>
   10d10:	01813083          	ld	ra,24(sp)
   10d14:	01013403          	ld	s0,16(sp)
   10d18:	00813483          	ld	s1,8(sp)
   10d1c:	02010113          	addi	sp,sp,32
   10d20:	00008067          	ret
   10d24:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10d28:	fe0784e3          	beqz	a5,10d10 <_write_r+0x34>
   10d2c:	01813083          	ld	ra,24(sp)
   10d30:	01013403          	ld	s0,16(sp)
   10d34:	00f4a023          	sw	a5,0(s1)
   10d38:	00813483          	ld	s1,8(sp)
   10d3c:	02010113          	addi	sp,sp,32
   10d40:	00008067          	ret

0000000000010d44 <__libc_init_array>:
   10d44:	fe010113          	addi	sp,sp,-32
   10d48:	00813823          	sd	s0,16(sp)
   10d4c:	01213023          	sd	s2,0(sp)
   10d50:	00013437          	lui	s0,0x13
   10d54:	00013937          	lui	s2,0x13
   10d58:	00113c23          	sd	ra,24(sp)
   10d5c:	00913423          	sd	s1,8(sp)
   10d60:	00090913          	mv	s2,s2
   10d64:	00040413          	mv	s0,s0
   10d68:	02890263          	beq	s2,s0,10d8c <__libc_init_array+0x48>
   10d6c:	40890933          	sub	s2,s2,s0
   10d70:	40395913          	srai	s2,s2,0x3
   10d74:	00000493          	li	s1,0
   10d78:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10d7c:	00148493          	addi	s1,s1,1
   10d80:	00840413          	addi	s0,s0,8
   10d84:	000780e7          	jalr	a5
   10d88:	ff24e8e3          	bltu	s1,s2,10d78 <__libc_init_array+0x34>
   10d8c:	00013937          	lui	s2,0x13
   10d90:	00013437          	lui	s0,0x13
   10d94:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10d98:	00040413          	mv	s0,s0
   10d9c:	02890263          	beq	s2,s0,10dc0 <__libc_init_array+0x7c>
   10da0:	40890933          	sub	s2,s2,s0
   10da4:	40395913          	srai	s2,s2,0x3
   10da8:	00000493          	li	s1,0
   10dac:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10db0:	00148493          	addi	s1,s1,1
   10db4:	00840413          	addi	s0,s0,8
   10db8:	000780e7          	jalr	a5
   10dbc:	ff24e8e3          	bltu	s1,s2,10dac <__libc_init_array+0x68>
   10dc0:	01813083          	ld	ra,24(sp)
   10dc4:	01013403          	ld	s0,16(sp)
   10dc8:	00813483          	ld	s1,8(sp)
   10dcc:	00013903          	ld	s2,0(sp)
   10dd0:	02010113          	addi	sp,sp,32
   10dd4:	00008067          	ret

0000000000010dd8 <memset>:
   10dd8:	00f00313          	li	t1,15
   10ddc:	00050713          	mv	a4,a0
   10de0:	02c37a63          	bgeu	t1,a2,10e14 <memset+0x3c>
   10de4:	00f77793          	andi	a5,a4,15
   10de8:	0a079063          	bnez	a5,10e88 <memset+0xb0>
   10dec:	06059e63          	bnez	a1,10e68 <memset+0x90>
   10df0:	ff067693          	andi	a3,a2,-16
   10df4:	00f67613          	andi	a2,a2,15
   10df8:	00e686b3          	add	a3,a3,a4
   10dfc:	00b73023          	sd	a1,0(a4)
   10e00:	00b73423          	sd	a1,8(a4)
   10e04:	01070713          	addi	a4,a4,16
   10e08:	fed76ae3          	bltu	a4,a3,10dfc <memset+0x24>
   10e0c:	00061463          	bnez	a2,10e14 <memset+0x3c>
   10e10:	00008067          	ret
   10e14:	40c306b3          	sub	a3,t1,a2
   10e18:	00269693          	slli	a3,a3,0x2
   10e1c:	00000297          	auipc	t0,0x0
   10e20:	005686b3          	add	a3,a3,t0
   10e24:	00c68067          	jr	12(a3)
   10e28:	00b70723          	sb	a1,14(a4)
   10e2c:	00b706a3          	sb	a1,13(a4)
   10e30:	00b70623          	sb	a1,12(a4)
   10e34:	00b705a3          	sb	a1,11(a4)
   10e38:	00b70523          	sb	a1,10(a4)
   10e3c:	00b704a3          	sb	a1,9(a4)
   10e40:	00b70423          	sb	a1,8(a4)
   10e44:	00b703a3          	sb	a1,7(a4)
   10e48:	00b70323          	sb	a1,6(a4)
   10e4c:	00b702a3          	sb	a1,5(a4)
   10e50:	00b70223          	sb	a1,4(a4)
   10e54:	00b701a3          	sb	a1,3(a4)
   10e58:	00b70123          	sb	a1,2(a4)
   10e5c:	00b700a3          	sb	a1,1(a4)
   10e60:	00b70023          	sb	a1,0(a4)
   10e64:	00008067          	ret
   10e68:	0ff5f593          	zext.b	a1,a1
   10e6c:	00859693          	slli	a3,a1,0x8
   10e70:	00d5e5b3          	or	a1,a1,a3
   10e74:	01059693          	slli	a3,a1,0x10
   10e78:	00d5e5b3          	or	a1,a1,a3
   10e7c:	02059693          	slli	a3,a1,0x20
   10e80:	00d5e5b3          	or	a1,a1,a3
   10e84:	f6dff06f          	j	10df0 <memset+0x18>
   10e88:	00279693          	slli	a3,a5,0x2
   10e8c:	00000297          	auipc	t0,0x0
   10e90:	005686b3          	add	a3,a3,t0
   10e94:	00008293          	mv	t0,ra
   10e98:	f98680e7          	jalr	-104(a3)
   10e9c:	00028093          	mv	ra,t0
   10ea0:	ff078793          	addi	a5,a5,-16
   10ea4:	40f70733          	sub	a4,a4,a5
   10ea8:	00f60633          	add	a2,a2,a5
   10eac:	f6c374e3          	bgeu	t1,a2,10e14 <memset+0x3c>
   10eb0:	f3dff06f          	j	10dec <memset+0x14>

0000000000010eb4 <__call_exitprocs>:
   10eb4:	fb010113          	addi	sp,sp,-80
   10eb8:	03413023          	sd	s4,32(sp)
   10ebc:	03213823          	sd	s2,48(sp)
   10ec0:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10ec4:	04113423          	sd	ra,72(sp)
   10ec8:	06090e63          	beqz	s2,10f44 <__call_exitprocs+0x90>
   10ecc:	03313423          	sd	s3,40(sp)
   10ed0:	01513c23          	sd	s5,24(sp)
   10ed4:	01613823          	sd	s6,16(sp)
   10ed8:	01713423          	sd	s7,8(sp)
   10edc:	04813023          	sd	s0,64(sp)
   10ee0:	02913c23          	sd	s1,56(sp)
   10ee4:	01813023          	sd	s8,0(sp)
   10ee8:	00050b13          	mv	s6,a0
   10eec:	00058b93          	mv	s7,a1
   10ef0:	fff00993          	li	s3,-1
   10ef4:	00100a93          	li	s5,1
   10ef8:	00892403          	lw	s0,8(s2)
   10efc:	fff4041b          	addiw	s0,s0,-1
   10f00:	02044463          	bltz	s0,10f28 <__call_exitprocs+0x74>
   10f04:	01090493          	addi	s1,s2,16
   10f08:	00341793          	slli	a5,s0,0x3
   10f0c:	00f484b3          	add	s1,s1,a5
   10f10:	040b8463          	beqz	s7,10f58 <__call_exitprocs+0xa4>
   10f14:	2004b783          	ld	a5,512(s1)
   10f18:	05778063          	beq	a5,s7,10f58 <__call_exitprocs+0xa4>
   10f1c:	fff4041b          	addiw	s0,s0,-1
   10f20:	ff848493          	addi	s1,s1,-8
   10f24:	ff3418e3          	bne	s0,s3,10f14 <__call_exitprocs+0x60>
   10f28:	04013403          	ld	s0,64(sp)
   10f2c:	03813483          	ld	s1,56(sp)
   10f30:	02813983          	ld	s3,40(sp)
   10f34:	01813a83          	ld	s5,24(sp)
   10f38:	01013b03          	ld	s6,16(sp)
   10f3c:	00813b83          	ld	s7,8(sp)
   10f40:	00013c03          	ld	s8,0(sp)
   10f44:	04813083          	ld	ra,72(sp)
   10f48:	03013903          	ld	s2,48(sp)
   10f4c:	02013a03          	ld	s4,32(sp)
   10f50:	05010113          	addi	sp,sp,80
   10f54:	00008067          	ret
   10f58:	00892783          	lw	a5,8(s2)
   10f5c:	0004b683          	ld	a3,0(s1)
   10f60:	fff7879b          	addiw	a5,a5,-1
   10f64:	06878a63          	beq	a5,s0,10fd8 <__call_exitprocs+0x124>
   10f68:	0004b023          	sd	zero,0(s1)
   10f6c:	02068663          	beqz	a3,10f98 <__call_exitprocs+0xe4>
   10f70:	31092783          	lw	a5,784(s2)
   10f74:	008a973b          	sllw	a4,s5,s0
   10f78:	00892c03          	lw	s8,8(s2)
   10f7c:	00e7f7b3          	and	a5,a5,a4
   10f80:	02079463          	bnez	a5,10fa8 <__call_exitprocs+0xf4>
   10f84:	000680e7          	jalr	a3
   10f88:	00892703          	lw	a4,8(s2)
   10f8c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10f90:	03871e63          	bne	a4,s8,10fcc <__call_exitprocs+0x118>
   10f94:	03279c63          	bne	a5,s2,10fcc <__call_exitprocs+0x118>
   10f98:	fff4041b          	addiw	s0,s0,-1
   10f9c:	ff848493          	addi	s1,s1,-8
   10fa0:	f73418e3          	bne	s0,s3,10f10 <__call_exitprocs+0x5c>
   10fa4:	f85ff06f          	j	10f28 <__call_exitprocs+0x74>
   10fa8:	31492783          	lw	a5,788(s2)
   10fac:	1004b583          	ld	a1,256(s1)
   10fb0:	00f77733          	and	a4,a4,a5
   10fb4:	02071663          	bnez	a4,10fe0 <__call_exitprocs+0x12c>
   10fb8:	000b0513          	mv	a0,s6
   10fbc:	000680e7          	jalr	a3
   10fc0:	00892703          	lw	a4,8(s2)
   10fc4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10fc8:	fd8706e3          	beq	a4,s8,10f94 <__call_exitprocs+0xe0>
   10fcc:	f4078ee3          	beqz	a5,10f28 <__call_exitprocs+0x74>
   10fd0:	00078913          	mv	s2,a5
   10fd4:	f25ff06f          	j	10ef8 <__call_exitprocs+0x44>
   10fd8:	00892423          	sw	s0,8(s2)
   10fdc:	f91ff06f          	j	10f6c <__call_exitprocs+0xb8>
   10fe0:	00058513          	mv	a0,a1
   10fe4:	000680e7          	jalr	a3
   10fe8:	fa1ff06f          	j	10f88 <__call_exitprocs+0xd4>

0000000000010fec <atexit>:
   10fec:	00050593          	mv	a1,a0
   10ff0:	00000693          	li	a3,0
   10ff4:	00000613          	li	a2,0
   10ff8:	00000513          	li	a0,0
   10ffc:	2340106f          	j	12230 <__register_exitproc>

0000000000011000 <_malloc_trim_r>:
   11000:	fd010113          	addi	sp,sp,-48
   11004:	01213823          	sd	s2,16(sp)
   11008:	00013937          	lui	s2,0x13
   1100c:	02813023          	sd	s0,32(sp)
   11010:	00913c23          	sd	s1,24(sp)
   11014:	01313423          	sd	s3,8(sp)
   11018:	00058413          	mv	s0,a1
   1101c:	02113423          	sd	ra,40(sp)
   11020:	00050993          	mv	s3,a0
   11024:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11028:	4e5000ef          	jal	11d0c <__malloc_lock>
   1102c:	01093783          	ld	a5,16(s2)
   11030:	00001737          	lui	a4,0x1
   11034:	0087b483          	ld	s1,8(a5)
   11038:	ffc4f493          	andi	s1,s1,-4
   1103c:	7ff48793          	addi	a5,s1,2047
   11040:	7e078793          	addi	a5,a5,2016
   11044:	40878433          	sub	s0,a5,s0
   11048:	00c45413          	srli	s0,s0,0xc
   1104c:	fff40413          	addi	s0,s0,-1
   11050:	00c41413          	slli	s0,s0,0xc
   11054:	00e44e63          	blt	s0,a4,11070 <_malloc_trim_r+0x70>
   11058:	00000593          	li	a1,0
   1105c:	00098513          	mv	a0,s3
   11060:	118010ef          	jal	12178 <_sbrk_r>
   11064:	01093783          	ld	a5,16(s2)
   11068:	009787b3          	add	a5,a5,s1
   1106c:	02f50663          	beq	a0,a5,11098 <_malloc_trim_r+0x98>
   11070:	00098513          	mv	a0,s3
   11074:	49d000ef          	jal	11d10 <__malloc_unlock>
   11078:	02813083          	ld	ra,40(sp)
   1107c:	02013403          	ld	s0,32(sp)
   11080:	01813483          	ld	s1,24(sp)
   11084:	01013903          	ld	s2,16(sp)
   11088:	00813983          	ld	s3,8(sp)
   1108c:	00000513          	li	a0,0
   11090:	03010113          	addi	sp,sp,48
   11094:	00008067          	ret
   11098:	408005b3          	neg	a1,s0
   1109c:	00098513          	mv	a0,s3
   110a0:	0d8010ef          	jal	12178 <_sbrk_r>
   110a4:	fff00793          	li	a5,-1
   110a8:	04f50463          	beq	a0,a5,110f0 <_malloc_trim_r+0xf0>
   110ac:	01093683          	ld	a3,16(s2)
   110b0:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   110b4:	408484b3          	sub	s1,s1,s0
   110b8:	0014e493          	ori	s1,s1,1
   110bc:	00098513          	mv	a0,s3
   110c0:	408787bb          	subw	a5,a5,s0
   110c4:	0096b423          	sd	s1,8(a3)
   110c8:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   110cc:	445000ef          	jal	11d10 <__malloc_unlock>
   110d0:	02813083          	ld	ra,40(sp)
   110d4:	02013403          	ld	s0,32(sp)
   110d8:	01813483          	ld	s1,24(sp)
   110dc:	01013903          	ld	s2,16(sp)
   110e0:	00813983          	ld	s3,8(sp)
   110e4:	00100513          	li	a0,1
   110e8:	03010113          	addi	sp,sp,48
   110ec:	00008067          	ret
   110f0:	00000593          	li	a1,0
   110f4:	00098513          	mv	a0,s3
   110f8:	080010ef          	jal	12178 <_sbrk_r>
   110fc:	01093703          	ld	a4,16(s2)
   11100:	01f00693          	li	a3,31
   11104:	40e507b3          	sub	a5,a0,a4
   11108:	f6f6d4e3          	bge	a3,a5,11070 <_malloc_trim_r+0x70>
   1110c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11110:	0017e793          	ori	a5,a5,1
   11114:	40c50533          	sub	a0,a0,a2
   11118:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   1111c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11120:	f51ff06f          	j	11070 <_malloc_trim_r+0x70>

0000000000011124 <_free_r>:
   11124:	12058863          	beqz	a1,11254 <_free_r+0x130>
   11128:	fe010113          	addi	sp,sp,-32
   1112c:	00813823          	sd	s0,16(sp)
   11130:	00b13423          	sd	a1,8(sp)
   11134:	00050413          	mv	s0,a0
   11138:	00113c23          	sd	ra,24(sp)
   1113c:	3d1000ef          	jal	11d0c <__malloc_lock>
   11140:	00813583          	ld	a1,8(sp)
   11144:	00013837          	lui	a6,0x13
   11148:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1114c:	ff85b503          	ld	a0,-8(a1)
   11150:	ff058713          	addi	a4,a1,-16
   11154:	01083883          	ld	a7,16(a6)
   11158:	ffe57793          	andi	a5,a0,-2
   1115c:	00f70633          	add	a2,a4,a5
   11160:	00863683          	ld	a3,8(a2)
   11164:	00157313          	andi	t1,a0,1
   11168:	ffc6f693          	andi	a3,a3,-4
   1116c:	18c88e63          	beq	a7,a2,11308 <_free_r+0x1e4>
   11170:	00d63423          	sd	a3,8(a2)
   11174:	00d608b3          	add	a7,a2,a3
   11178:	0088b883          	ld	a7,8(a7)
   1117c:	0018f893          	andi	a7,a7,1
   11180:	08031e63          	bnez	t1,1121c <_free_r+0xf8>
   11184:	ff05b303          	ld	t1,-16(a1)
   11188:	000135b7          	lui	a1,0x13
   1118c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11190:	40670733          	sub	a4,a4,t1
   11194:	01073503          	ld	a0,16(a4)
   11198:	006787b3          	add	a5,a5,t1
   1119c:	14b50063          	beq	a0,a1,112dc <_free_r+0x1b8>
   111a0:	01873303          	ld	t1,24(a4)
   111a4:	00653c23          	sd	t1,24(a0)
   111a8:	00a33823          	sd	a0,16(t1) # 10220 <ackermann+0x4>
   111ac:	1a088263          	beqz	a7,11350 <_free_r+0x22c>
   111b0:	0017e693          	ori	a3,a5,1
   111b4:	00d73423          	sd	a3,8(a4)
   111b8:	00f63023          	sd	a5,0(a2)
   111bc:	1ff00693          	li	a3,511
   111c0:	0af6e663          	bltu	a3,a5,1126c <_free_r+0x148>
   111c4:	0037d793          	srli	a5,a5,0x3
   111c8:	00179693          	slli	a3,a5,0x1
   111cc:	0026869b          	addiw	a3,a3,2
   111d0:	00369693          	slli	a3,a3,0x3
   111d4:	00883503          	ld	a0,8(a6)
   111d8:	00d806b3          	add	a3,a6,a3
   111dc:	0006b583          	ld	a1,0(a3)
   111e0:	4027d61b          	sraiw	a2,a5,0x2
   111e4:	00100793          	li	a5,1
   111e8:	00c797b3          	sll	a5,a5,a2
   111ec:	00a7e7b3          	or	a5,a5,a0
   111f0:	ff068613          	addi	a2,a3,-16
   111f4:	00b73823          	sd	a1,16(a4)
   111f8:	00c73c23          	sd	a2,24(a4)
   111fc:	00f83423          	sd	a5,8(a6)
   11200:	00e6b023          	sd	a4,0(a3)
   11204:	00e5bc23          	sd	a4,24(a1)
   11208:	00040513          	mv	a0,s0
   1120c:	01013403          	ld	s0,16(sp)
   11210:	01813083          	ld	ra,24(sp)
   11214:	02010113          	addi	sp,sp,32
   11218:	2f90006f          	j	11d10 <__malloc_unlock>
   1121c:	02089e63          	bnez	a7,11258 <_free_r+0x134>
   11220:	000135b7          	lui	a1,0x13
   11224:	00d787b3          	add	a5,a5,a3
   11228:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1122c:	01063683          	ld	a3,16(a2)
   11230:	0017e893          	ori	a7,a5,1
   11234:	00f70533          	add	a0,a4,a5
   11238:	16b68663          	beq	a3,a1,113a4 <_free_r+0x280>
   1123c:	01863603          	ld	a2,24(a2)
   11240:	00c6bc23          	sd	a2,24(a3)
   11244:	00d63823          	sd	a3,16(a2)
   11248:	01173423          	sd	a7,8(a4)
   1124c:	00f53023          	sd	a5,0(a0)
   11250:	f6dff06f          	j	111bc <_free_r+0x98>
   11254:	00008067          	ret
   11258:	00156513          	ori	a0,a0,1
   1125c:	fea5bc23          	sd	a0,-8(a1)
   11260:	00f63023          	sd	a5,0(a2)
   11264:	1ff00693          	li	a3,511
   11268:	f4f6fee3          	bgeu	a3,a5,111c4 <_free_r+0xa0>
   1126c:	0097d693          	srli	a3,a5,0x9
   11270:	00400613          	li	a2,4
   11274:	0ed66263          	bltu	a2,a3,11358 <_free_r+0x234>
   11278:	0067d693          	srli	a3,a5,0x6
   1127c:	00169593          	slli	a1,a3,0x1
   11280:	0725859b          	addiw	a1,a1,114
   11284:	00359593          	slli	a1,a1,0x3
   11288:	0386861b          	addiw	a2,a3,56
   1128c:	00b805b3          	add	a1,a6,a1
   11290:	0005b683          	ld	a3,0(a1)
   11294:	ff058593          	addi	a1,a1,-16
   11298:	00d59863          	bne	a1,a3,112a8 <_free_r+0x184>
   1129c:	1240006f          	j	113c0 <_free_r+0x29c>
   112a0:	0106b683          	ld	a3,16(a3)
   112a4:	00d58863          	beq	a1,a3,112b4 <_free_r+0x190>
   112a8:	0086b603          	ld	a2,8(a3)
   112ac:	ffc67613          	andi	a2,a2,-4
   112b0:	fec7e8e3          	bltu	a5,a2,112a0 <_free_r+0x17c>
   112b4:	0186b583          	ld	a1,24(a3)
   112b8:	00b73c23          	sd	a1,24(a4)
   112bc:	00d73823          	sd	a3,16(a4)
   112c0:	00040513          	mv	a0,s0
   112c4:	01013403          	ld	s0,16(sp)
   112c8:	01813083          	ld	ra,24(sp)
   112cc:	00e5b823          	sd	a4,16(a1)
   112d0:	00e6bc23          	sd	a4,24(a3)
   112d4:	02010113          	addi	sp,sp,32
   112d8:	2390006f          	j	11d10 <__malloc_unlock>
   112dc:	0a089263          	bnez	a7,11380 <_free_r+0x25c>
   112e0:	01863583          	ld	a1,24(a2)
   112e4:	01063603          	ld	a2,16(a2)
   112e8:	00f686b3          	add	a3,a3,a5
   112ec:	0016e793          	ori	a5,a3,1
   112f0:	00b63c23          	sd	a1,24(a2)
   112f4:	00c5b823          	sd	a2,16(a1)
   112f8:	00f73423          	sd	a5,8(a4)
   112fc:	00d70733          	add	a4,a4,a3
   11300:	00d73023          	sd	a3,0(a4)
   11304:	f05ff06f          	j	11208 <_free_r+0xe4>
   11308:	00d786b3          	add	a3,a5,a3
   1130c:	02031063          	bnez	t1,1132c <_free_r+0x208>
   11310:	ff05b783          	ld	a5,-16(a1)
   11314:	40f70733          	sub	a4,a4,a5
   11318:	01073603          	ld	a2,16(a4)
   1131c:	00f686b3          	add	a3,a3,a5
   11320:	01873783          	ld	a5,24(a4)
   11324:	00f63c23          	sd	a5,24(a2)
   11328:	00c7b823          	sd	a2,16(a5)
   1132c:	0016e613          	ori	a2,a3,1
   11330:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11334:	00c73423          	sd	a2,8(a4)
   11338:	00e83823          	sd	a4,16(a6)
   1133c:	ecf6e6e3          	bltu	a3,a5,11208 <_free_r+0xe4>
   11340:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11344:	00040513          	mv	a0,s0
   11348:	cb9ff0ef          	jal	11000 <_malloc_trim_r>
   1134c:	ebdff06f          	j	11208 <_free_r+0xe4>
   11350:	00d787b3          	add	a5,a5,a3
   11354:	ed9ff06f          	j	1122c <_free_r+0x108>
   11358:	01400613          	li	a2,20
   1135c:	02d67a63          	bgeu	a2,a3,11390 <_free_r+0x26c>
   11360:	05400613          	li	a2,84
   11364:	06d66c63          	bltu	a2,a3,113dc <_free_r+0x2b8>
   11368:	00c7d693          	srli	a3,a5,0xc
   1136c:	00169593          	slli	a1,a3,0x1
   11370:	0de5859b          	addiw	a1,a1,222
   11374:	00359593          	slli	a1,a1,0x3
   11378:	06e6861b          	addiw	a2,a3,110
   1137c:	f11ff06f          	j	1128c <_free_r+0x168>
   11380:	0017e693          	ori	a3,a5,1
   11384:	00d73423          	sd	a3,8(a4)
   11388:	00f63023          	sd	a5,0(a2)
   1138c:	e7dff06f          	j	11208 <_free_r+0xe4>
   11390:	00169593          	slli	a1,a3,0x1
   11394:	0b85859b          	addiw	a1,a1,184
   11398:	00359593          	slli	a1,a1,0x3
   1139c:	05b6861b          	addiw	a2,a3,91
   113a0:	eedff06f          	j	1128c <_free_r+0x168>
   113a4:	02e83423          	sd	a4,40(a6)
   113a8:	02e83023          	sd	a4,32(a6)
   113ac:	00b73c23          	sd	a1,24(a4)
   113b0:	00b73823          	sd	a1,16(a4)
   113b4:	01173423          	sd	a7,8(a4)
   113b8:	00f53023          	sd	a5,0(a0)
   113bc:	e4dff06f          	j	11208 <_free_r+0xe4>
   113c0:	00883503          	ld	a0,8(a6)
   113c4:	4026561b          	sraiw	a2,a2,0x2
   113c8:	00100793          	li	a5,1
   113cc:	00c797b3          	sll	a5,a5,a2
   113d0:	00a7e7b3          	or	a5,a5,a0
   113d4:	00f83423          	sd	a5,8(a6)
   113d8:	ee1ff06f          	j	112b8 <_free_r+0x194>
   113dc:	15400613          	li	a2,340
   113e0:	00d66e63          	bltu	a2,a3,113fc <_free_r+0x2d8>
   113e4:	00f7d693          	srli	a3,a5,0xf
   113e8:	00169593          	slli	a1,a3,0x1
   113ec:	0f05859b          	addiw	a1,a1,240
   113f0:	00359593          	slli	a1,a1,0x3
   113f4:	0776861b          	addiw	a2,a3,119
   113f8:	e95ff06f          	j	1128c <_free_r+0x168>
   113fc:	55400613          	li	a2,1364
   11400:	00d66e63          	bltu	a2,a3,1141c <_free_r+0x2f8>
   11404:	0127d693          	srli	a3,a5,0x12
   11408:	00169593          	slli	a1,a3,0x1
   1140c:	0fa5859b          	addiw	a1,a1,250
   11410:	00359593          	slli	a1,a1,0x3
   11414:	07c6861b          	addiw	a2,a3,124
   11418:	e75ff06f          	j	1128c <_free_r+0x168>
   1141c:	7f000593          	li	a1,2032
   11420:	07e00613          	li	a2,126
   11424:	e69ff06f          	j	1128c <_free_r+0x168>

0000000000011428 <_malloc_r>:
   11428:	fa010113          	addi	sp,sp,-96
   1142c:	04813823          	sd	s0,80(sp)
   11430:	04113c23          	sd	ra,88(sp)
   11434:	01758713          	addi	a4,a1,23
   11438:	02e00793          	li	a5,46
   1143c:	00050413          	mv	s0,a0
   11440:	08e7ee63          	bltu	a5,a4,114dc <_malloc_r+0xb4>
   11444:	02000713          	li	a4,32
   11448:	06b76c63          	bltu	a4,a1,114c0 <_malloc_r+0x98>
   1144c:	0c1000ef          	jal	11d0c <__malloc_lock>
   11450:	02000713          	li	a4,32
   11454:	05000693          	li	a3,80
   11458:	00400893          	li	a7,4
   1145c:	00013837          	lui	a6,0x13
   11460:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11464:	00d806b3          	add	a3,a6,a3
   11468:	0086b783          	ld	a5,8(a3)
   1146c:	ff068613          	addi	a2,a3,-16
   11470:	48c78063          	beq	a5,a2,118f0 <_malloc_r+0x4c8>
   11474:	0087b703          	ld	a4,8(a5)
   11478:	0187b603          	ld	a2,24(a5)
   1147c:	0107b583          	ld	a1,16(a5)
   11480:	ffc77713          	andi	a4,a4,-4
   11484:	00e78733          	add	a4,a5,a4
   11488:	00873683          	ld	a3,8(a4)
   1148c:	00c5bc23          	sd	a2,24(a1)
   11490:	00b63823          	sd	a1,16(a2)
   11494:	0016e693          	ori	a3,a3,1
   11498:	00040513          	mv	a0,s0
   1149c:	00d73423          	sd	a3,8(a4)
   114a0:	00f13423          	sd	a5,8(sp)
   114a4:	06d000ef          	jal	11d10 <__malloc_unlock>
   114a8:	00813783          	ld	a5,8(sp)
   114ac:	05813083          	ld	ra,88(sp)
   114b0:	05013403          	ld	s0,80(sp)
   114b4:	01078513          	addi	a0,a5,16
   114b8:	06010113          	addi	sp,sp,96
   114bc:	00008067          	ret
   114c0:	00c00793          	li	a5,12
   114c4:	00f42023          	sw	a5,0(s0)
   114c8:	00000513          	li	a0,0
   114cc:	05813083          	ld	ra,88(sp)
   114d0:	05013403          	ld	s0,80(sp)
   114d4:	06010113          	addi	sp,sp,96
   114d8:	00008067          	ret
   114dc:	00100793          	li	a5,1
   114e0:	ff077713          	andi	a4,a4,-16
   114e4:	01f79793          	slli	a5,a5,0x1f
   114e8:	fcf77ce3          	bgeu	a4,a5,114c0 <_malloc_r+0x98>
   114ec:	fcb76ae3          	bltu	a4,a1,114c0 <_malloc_r+0x98>
   114f0:	00e13423          	sd	a4,8(sp)
   114f4:	019000ef          	jal	11d0c <__malloc_lock>
   114f8:	00813703          	ld	a4,8(sp)
   114fc:	1f700793          	li	a5,503
   11500:	4ee7fa63          	bgeu	a5,a4,119f4 <_malloc_r+0x5cc>
   11504:	00975793          	srli	a5,a4,0x9
   11508:	18078a63          	beqz	a5,1169c <_malloc_r+0x274>
   1150c:	00400693          	li	a3,4
   11510:	44f6ea63          	bltu	a3,a5,11964 <_malloc_r+0x53c>
   11514:	00675793          	srli	a5,a4,0x6
   11518:	0397889b          	addiw	a7,a5,57
   1151c:	0018951b          	slliw	a0,a7,0x1
   11520:	03878e1b          	addiw	t3,a5,56
   11524:	00351513          	slli	a0,a0,0x3
   11528:	00013837          	lui	a6,0x13
   1152c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11530:	00a80533          	add	a0,a6,a0
   11534:	00853783          	ld	a5,8(a0)
   11538:	ff050513          	addi	a0,a0,-16
   1153c:	02f50863          	beq	a0,a5,1156c <_malloc_r+0x144>
   11540:	01f00313          	li	t1,31
   11544:	0140006f          	j	11558 <_malloc_r+0x130>
   11548:	0187b583          	ld	a1,24(a5)
   1154c:	36065263          	bgez	a2,118b0 <_malloc_r+0x488>
   11550:	00b50e63          	beq	a0,a1,1156c <_malloc_r+0x144>
   11554:	00058793          	mv	a5,a1
   11558:	0087b683          	ld	a3,8(a5)
   1155c:	ffc6f693          	andi	a3,a3,-4
   11560:	40e68633          	sub	a2,a3,a4
   11564:	fec352e3          	bge	t1,a2,11548 <_malloc_r+0x120>
   11568:	000e0893          	mv	a7,t3
   1156c:	02083783          	ld	a5,32(a6)
   11570:	00013e37          	lui	t3,0x13
   11574:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11578:	2fc78a63          	beq	a5,t3,1186c <_malloc_r+0x444>
   1157c:	0087b303          	ld	t1,8(a5)
   11580:	01f00613          	li	a2,31
   11584:	ffc37313          	andi	t1,t1,-4
   11588:	40e306b3          	sub	a3,t1,a4
   1158c:	4ad64463          	blt	a2,a3,11a34 <_malloc_r+0x60c>
   11590:	03c83423          	sd	t3,40(a6)
   11594:	03c83023          	sd	t3,32(a6)
   11598:	4606da63          	bgez	a3,11a0c <_malloc_r+0x5e4>
   1159c:	1ff00693          	li	a3,511
   115a0:	00883583          	ld	a1,8(a6)
   115a4:	3466ee63          	bltu	a3,t1,11900 <_malloc_r+0x4d8>
   115a8:	00335313          	srli	t1,t1,0x3
   115ac:	00131693          	slli	a3,t1,0x1
   115b0:	0026869b          	addiw	a3,a3,2
   115b4:	00369693          	slli	a3,a3,0x3
   115b8:	00d806b3          	add	a3,a6,a3
   115bc:	0006b503          	ld	a0,0(a3)
   115c0:	4023531b          	sraiw	t1,t1,0x2
   115c4:	00100613          	li	a2,1
   115c8:	00661633          	sll	a2,a2,t1
   115cc:	00c5e5b3          	or	a1,a1,a2
   115d0:	ff068613          	addi	a2,a3,-16
   115d4:	00a7b823          	sd	a0,16(a5)
   115d8:	00c7bc23          	sd	a2,24(a5)
   115dc:	00b83423          	sd	a1,8(a6)
   115e0:	00f6b023          	sd	a5,0(a3)
   115e4:	00f53c23          	sd	a5,24(a0)
   115e8:	4028d79b          	sraiw	a5,a7,0x2
   115ec:	00100513          	li	a0,1
   115f0:	00f51533          	sll	a0,a0,a5
   115f4:	0aa5ec63          	bltu	a1,a0,116ac <_malloc_r+0x284>
   115f8:	00b577b3          	and	a5,a0,a1
   115fc:	02079463          	bnez	a5,11624 <_malloc_r+0x1fc>
   11600:	00151513          	slli	a0,a0,0x1
   11604:	ffc8f893          	andi	a7,a7,-4
   11608:	00b577b3          	and	a5,a0,a1
   1160c:	0048889b          	addiw	a7,a7,4
   11610:	00079a63          	bnez	a5,11624 <_malloc_r+0x1fc>
   11614:	00151513          	slli	a0,a0,0x1
   11618:	00b577b3          	and	a5,a0,a1
   1161c:	0048889b          	addiw	a7,a7,4
   11620:	fe078ae3          	beqz	a5,11614 <_malloc_r+0x1ec>
   11624:	01f00e93          	li	t4,31
   11628:	00189f13          	slli	t5,a7,0x1
   1162c:	002f0f1b          	addiw	t5,t5,2
   11630:	003f1f13          	slli	t5,t5,0x3
   11634:	ff0f0f13          	addi	t5,t5,-16
   11638:	01e80f33          	add	t5,a6,t5
   1163c:	000f0313          	mv	t1,t5
   11640:	01833683          	ld	a3,24(t1)
   11644:	00088f93          	mv	t6,a7
   11648:	34d30263          	beq	t1,a3,1198c <_malloc_r+0x564>
   1164c:	0086b603          	ld	a2,8(a3)
   11650:	00068793          	mv	a5,a3
   11654:	0186b683          	ld	a3,24(a3)
   11658:	ffc67613          	andi	a2,a2,-4
   1165c:	40e605b3          	sub	a1,a2,a4
   11660:	34bec263          	blt	t4,a1,119a4 <_malloc_r+0x57c>
   11664:	fe05c2e3          	bltz	a1,11648 <_malloc_r+0x220>
   11668:	00c78633          	add	a2,a5,a2
   1166c:	00863703          	ld	a4,8(a2)
   11670:	0107b583          	ld	a1,16(a5)
   11674:	00040513          	mv	a0,s0
   11678:	00176713          	ori	a4,a4,1
   1167c:	00e63423          	sd	a4,8(a2)
   11680:	00d5bc23          	sd	a3,24(a1)
   11684:	00b6b823          	sd	a1,16(a3)
   11688:	00f13423          	sd	a5,8(sp)
   1168c:	684000ef          	jal	11d10 <__malloc_unlock>
   11690:	00813783          	ld	a5,8(sp)
   11694:	01078513          	addi	a0,a5,16
   11698:	e35ff06f          	j	114cc <_malloc_r+0xa4>
   1169c:	40000513          	li	a0,1024
   116a0:	04000893          	li	a7,64
   116a4:	03f00e13          	li	t3,63
   116a8:	e81ff06f          	j	11528 <_malloc_r+0x100>
   116ac:	01083783          	ld	a5,16(a6)
   116b0:	0087b683          	ld	a3,8(a5)
   116b4:	ffc6f893          	andi	a7,a3,-4
   116b8:	40e88633          	sub	a2,a7,a4
   116bc:	00e8e663          	bltu	a7,a4,116c8 <_malloc_r+0x2a0>
   116c0:	02062693          	slti	a3,a2,32
   116c4:	1a068863          	beqz	a3,11874 <_malloc_r+0x44c>
   116c8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   116cc:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   116d0:	fff00693          	li	a3,-1
   116d4:	00b705b3          	add	a1,a4,a1
   116d8:	44d60663          	beq	a2,a3,11b24 <_malloc_r+0x6fc>
   116dc:	000016b7          	lui	a3,0x1
   116e0:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   116e4:	00d585b3          	add	a1,a1,a3
   116e8:	fffff6b7          	lui	a3,0xfffff
   116ec:	00d5f5b3          	and	a1,a1,a3
   116f0:	00040513          	mv	a0,s0
   116f4:	03013423          	sd	a6,40(sp)
   116f8:	02f13023          	sd	a5,32(sp)
   116fc:	00e13c23          	sd	a4,24(sp)
   11700:	01113823          	sd	a7,16(sp)
   11704:	00b13423          	sd	a1,8(sp)
   11708:	271000ef          	jal	12178 <_sbrk_r>
   1170c:	fff00693          	li	a3,-1
   11710:	00813583          	ld	a1,8(sp)
   11714:	01013883          	ld	a7,16(sp)
   11718:	01813703          	ld	a4,24(sp)
   1171c:	02013783          	ld	a5,32(sp)
   11720:	02813803          	ld	a6,40(sp)
   11724:	00050313          	mv	t1,a0
   11728:	36d50663          	beq	a0,a3,11a94 <_malloc_r+0x66c>
   1172c:	011786b3          	add	a3,a5,a7
   11730:	36d56063          	bltu	a0,a3,11a90 <_malloc_r+0x668>
   11734:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11738:	000e2603          	lw	a2,0(t3)
   1173c:	00b6063b          	addw	a2,a2,a1
   11740:	00ce2023          	sw	a2,0(t3)
   11744:	00060513          	mv	a0,a2
   11748:	4a668c63          	beq	a3,t1,11c00 <_malloc_r+0x7d8>
   1174c:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11750:	fff00613          	li	a2,-1
   11754:	4ccf0463          	beq	t5,a2,11c1c <_malloc_r+0x7f4>
   11758:	40d306b3          	sub	a3,t1,a3
   1175c:	00a686bb          	addw	a3,a3,a0
   11760:	00de2023          	sw	a3,0(t3)
   11764:	00f37e93          	andi	t4,t1,15
   11768:	3c0e8e63          	beqz	t4,11b44 <_malloc_r+0x71c>
   1176c:	ff037313          	andi	t1,t1,-16
   11770:	000016b7          	lui	a3,0x1
   11774:	01030313          	addi	t1,t1,16
   11778:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   1177c:	00b30633          	add	a2,t1,a1
   11780:	41d685b3          	sub	a1,a3,t4
   11784:	40c585b3          	sub	a1,a1,a2
   11788:	03459593          	slli	a1,a1,0x34
   1178c:	0345d593          	srli	a1,a1,0x34
   11790:	00040513          	mv	a0,s0
   11794:	05c13023          	sd	t3,64(sp)
   11798:	03013c23          	sd	a6,56(sp)
   1179c:	02f13823          	sd	a5,48(sp)
   117a0:	02e13423          	sd	a4,40(sp)
   117a4:	03113023          	sd	a7,32(sp)
   117a8:	00613c23          	sd	t1,24(sp)
   117ac:	01d13823          	sd	t4,16(sp)
   117b0:	00c13423          	sd	a2,8(sp)
   117b4:	04b13423          	sd	a1,72(sp)
   117b8:	1c1000ef          	jal	12178 <_sbrk_r>
   117bc:	00050693          	mv	a3,a0
   117c0:	fff00513          	li	a0,-1
   117c4:	00813603          	ld	a2,8(sp)
   117c8:	01013e83          	ld	t4,16(sp)
   117cc:	01813303          	ld	t1,24(sp)
   117d0:	02013883          	ld	a7,32(sp)
   117d4:	02813703          	ld	a4,40(sp)
   117d8:	03013783          	ld	a5,48(sp)
   117dc:	03813803          	ld	a6,56(sp)
   117e0:	04013e03          	ld	t3,64(sp)
   117e4:	48a68663          	beq	a3,a0,11c70 <_malloc_r+0x848>
   117e8:	04813583          	ld	a1,72(sp)
   117ec:	0005851b          	sext.w	a0,a1
   117f0:	000e2603          	lw	a2,0(t3)
   117f4:	406686b3          	sub	a3,a3,t1
   117f8:	00b686b3          	add	a3,a3,a1
   117fc:	0016e693          	ori	a3,a3,1
   11800:	00683823          	sd	t1,16(a6)
   11804:	00a6063b          	addw	a2,a2,a0
   11808:	00d33423          	sd	a3,8(t1)
   1180c:	00ce2023          	sw	a2,0(t3)
   11810:	03078e63          	beq	a5,a6,1184c <_malloc_r+0x424>
   11814:	01f00513          	li	a0,31
   11818:	41157663          	bgeu	a0,a7,11c24 <_malloc_r+0x7fc>
   1181c:	0087b583          	ld	a1,8(a5)
   11820:	fe888693          	addi	a3,a7,-24
   11824:	ff06f693          	andi	a3,a3,-16
   11828:	0015f593          	andi	a1,a1,1
   1182c:	00d5e5b3          	or	a1,a1,a3
   11830:	00b7b423          	sd	a1,8(a5)
   11834:	00900893          	li	a7,9
   11838:	00d785b3          	add	a1,a5,a3
   1183c:	0115b423          	sd	a7,8(a1)
   11840:	0115b823          	sd	a7,16(a1)
   11844:	44d56863          	bltu	a0,a3,11c94 <_malloc_r+0x86c>
   11848:	00833683          	ld	a3,8(t1)
   1184c:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11850:	00c5f463          	bgeu	a1,a2,11858 <_malloc_r+0x430>
   11854:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11858:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   1185c:	00c5f463          	bgeu	a1,a2,11864 <_malloc_r+0x43c>
   11860:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11864:	00030793          	mv	a5,t1
   11868:	2340006f          	j	11a9c <_malloc_r+0x674>
   1186c:	00883583          	ld	a1,8(a6)
   11870:	d79ff06f          	j	115e8 <_malloc_r+0x1c0>
   11874:	00176693          	ori	a3,a4,1
   11878:	00d7b423          	sd	a3,8(a5)
   1187c:	00e78733          	add	a4,a5,a4
   11880:	00166613          	ori	a2,a2,1
   11884:	00e83823          	sd	a4,16(a6)
   11888:	00040513          	mv	a0,s0
   1188c:	00c73423          	sd	a2,8(a4)
   11890:	00f13423          	sd	a5,8(sp)
   11894:	47c000ef          	jal	11d10 <__malloc_unlock>
   11898:	00813783          	ld	a5,8(sp)
   1189c:	05813083          	ld	ra,88(sp)
   118a0:	05013403          	ld	s0,80(sp)
   118a4:	01078513          	addi	a0,a5,16
   118a8:	06010113          	addi	sp,sp,96
   118ac:	00008067          	ret
   118b0:	0107b603          	ld	a2,16(a5)
   118b4:	00d786b3          	add	a3,a5,a3
   118b8:	0086b703          	ld	a4,8(a3)
   118bc:	00b63c23          	sd	a1,24(a2)
   118c0:	00c5b823          	sd	a2,16(a1)
   118c4:	00176713          	ori	a4,a4,1
   118c8:	00040513          	mv	a0,s0
   118cc:	00e6b423          	sd	a4,8(a3)
   118d0:	00f13423          	sd	a5,8(sp)
   118d4:	43c000ef          	jal	11d10 <__malloc_unlock>
   118d8:	00813783          	ld	a5,8(sp)
   118dc:	05813083          	ld	ra,88(sp)
   118e0:	05013403          	ld	s0,80(sp)
   118e4:	01078513          	addi	a0,a5,16
   118e8:	06010113          	addi	sp,sp,96
   118ec:	00008067          	ret
   118f0:	0186b783          	ld	a5,24(a3)
   118f4:	0028889b          	addiw	a7,a7,2
   118f8:	c6f68ae3          	beq	a3,a5,1156c <_malloc_r+0x144>
   118fc:	b79ff06f          	j	11474 <_malloc_r+0x4c>
   11900:	00935693          	srli	a3,t1,0x9
   11904:	00400613          	li	a2,4
   11908:	16d67863          	bgeu	a2,a3,11a78 <_malloc_r+0x650>
   1190c:	01400613          	li	a2,20
   11910:	28d66e63          	bltu	a2,a3,11bac <_malloc_r+0x784>
   11914:	00169513          	slli	a0,a3,0x1
   11918:	0b85051b          	addiw	a0,a0,184
   1191c:	00351513          	slli	a0,a0,0x3
   11920:	05b6861b          	addiw	a2,a3,91
   11924:	00a80533          	add	a0,a6,a0
   11928:	00053683          	ld	a3,0(a0)
   1192c:	ff050513          	addi	a0,a0,-16
   11930:	00d51863          	bne	a0,a3,11940 <_malloc_r+0x518>
   11934:	1f80006f          	j	11b2c <_malloc_r+0x704>
   11938:	0106b683          	ld	a3,16(a3)
   1193c:	00d50863          	beq	a0,a3,1194c <_malloc_r+0x524>
   11940:	0086b603          	ld	a2,8(a3)
   11944:	ffc67613          	andi	a2,a2,-4
   11948:	fec368e3          	bltu	t1,a2,11938 <_malloc_r+0x510>
   1194c:	0186b503          	ld	a0,24(a3)
   11950:	00a7bc23          	sd	a0,24(a5)
   11954:	00d7b823          	sd	a3,16(a5)
   11958:	00f53823          	sd	a5,16(a0)
   1195c:	00f6bc23          	sd	a5,24(a3)
   11960:	c89ff06f          	j	115e8 <_malloc_r+0x1c0>
   11964:	01400693          	li	a3,20
   11968:	14f6fa63          	bgeu	a3,a5,11abc <_malloc_r+0x694>
   1196c:	05400693          	li	a3,84
   11970:	24f6ee63          	bltu	a3,a5,11bcc <_malloc_r+0x7a4>
   11974:	00c75793          	srli	a5,a4,0xc
   11978:	06f7889b          	addiw	a7,a5,111
   1197c:	0018951b          	slliw	a0,a7,0x1
   11980:	06e78e1b          	addiw	t3,a5,110
   11984:	00351513          	slli	a0,a0,0x3
   11988:	ba1ff06f          	j	11528 <_malloc_r+0x100>
   1198c:	001f8f9b          	addiw	t6,t6,1
   11990:	003ff793          	andi	a5,t6,3
   11994:	01030313          	addi	t1,t1,16
   11998:	14078263          	beqz	a5,11adc <_malloc_r+0x6b4>
   1199c:	01833683          	ld	a3,24(t1)
   119a0:	ca9ff06f          	j	11648 <_malloc_r+0x220>
   119a4:	0107b503          	ld	a0,16(a5)
   119a8:	00176893          	ori	a7,a4,1
   119ac:	0117b423          	sd	a7,8(a5)
   119b0:	00d53c23          	sd	a3,24(a0)
   119b4:	00a6b823          	sd	a0,16(a3)
   119b8:	00e78733          	add	a4,a5,a4
   119bc:	02e83423          	sd	a4,40(a6)
   119c0:	02e83023          	sd	a4,32(a6)
   119c4:	0015e693          	ori	a3,a1,1
   119c8:	00c78633          	add	a2,a5,a2
   119cc:	01c73c23          	sd	t3,24(a4)
   119d0:	01c73823          	sd	t3,16(a4)
   119d4:	00d73423          	sd	a3,8(a4)
   119d8:	00040513          	mv	a0,s0
   119dc:	00b63023          	sd	a1,0(a2)
   119e0:	00f13423          	sd	a5,8(sp)
   119e4:	32c000ef          	jal	11d10 <__malloc_unlock>
   119e8:	00813783          	ld	a5,8(sp)
   119ec:	01078513          	addi	a0,a5,16
   119f0:	addff06f          	j	114cc <_malloc_r+0xa4>
   119f4:	00375893          	srli	a7,a4,0x3
   119f8:	00189693          	slli	a3,a7,0x1
   119fc:	0026869b          	addiw	a3,a3,2
   11a00:	00369693          	slli	a3,a3,0x3
   11a04:	0008889b          	sext.w	a7,a7
   11a08:	a55ff06f          	j	1145c <_malloc_r+0x34>
   11a0c:	00678333          	add	t1,a5,t1
   11a10:	00833703          	ld	a4,8(t1)
   11a14:	00040513          	mv	a0,s0
   11a18:	00f13423          	sd	a5,8(sp)
   11a1c:	00176713          	ori	a4,a4,1
   11a20:	00e33423          	sd	a4,8(t1)
   11a24:	2ec000ef          	jal	11d10 <__malloc_unlock>
   11a28:	00813783          	ld	a5,8(sp)
   11a2c:	01078513          	addi	a0,a5,16
   11a30:	a9dff06f          	j	114cc <_malloc_r+0xa4>
   11a34:	00176613          	ori	a2,a4,1
   11a38:	00c7b423          	sd	a2,8(a5)
   11a3c:	00e78733          	add	a4,a5,a4
   11a40:	02e83423          	sd	a4,40(a6)
   11a44:	02e83023          	sd	a4,32(a6)
   11a48:	0016e613          	ori	a2,a3,1
   11a4c:	00678333          	add	t1,a5,t1
   11a50:	01c73c23          	sd	t3,24(a4)
   11a54:	01c73823          	sd	t3,16(a4)
   11a58:	00c73423          	sd	a2,8(a4)
   11a5c:	00040513          	mv	a0,s0
   11a60:	00d33023          	sd	a3,0(t1)
   11a64:	00f13423          	sd	a5,8(sp)
   11a68:	2a8000ef          	jal	11d10 <__malloc_unlock>
   11a6c:	00813783          	ld	a5,8(sp)
   11a70:	01078513          	addi	a0,a5,16
   11a74:	a59ff06f          	j	114cc <_malloc_r+0xa4>
   11a78:	00635693          	srli	a3,t1,0x6
   11a7c:	00169513          	slli	a0,a3,0x1
   11a80:	0725051b          	addiw	a0,a0,114
   11a84:	00351513          	slli	a0,a0,0x3
   11a88:	0386861b          	addiw	a2,a3,56
   11a8c:	e99ff06f          	j	11924 <_malloc_r+0x4fc>
   11a90:	15078e63          	beq	a5,a6,11bec <_malloc_r+0x7c4>
   11a94:	01083783          	ld	a5,16(a6)
   11a98:	0087b683          	ld	a3,8(a5)
   11a9c:	ffc6f693          	andi	a3,a3,-4
   11aa0:	40e68633          	sub	a2,a3,a4
   11aa4:	00e6e663          	bltu	a3,a4,11ab0 <_malloc_r+0x688>
   11aa8:	02062693          	slti	a3,a2,32
   11aac:	dc0684e3          	beqz	a3,11874 <_malloc_r+0x44c>
   11ab0:	00040513          	mv	a0,s0
   11ab4:	25c000ef          	jal	11d10 <__malloc_unlock>
   11ab8:	a11ff06f          	j	114c8 <_malloc_r+0xa0>
   11abc:	05c7889b          	addiw	a7,a5,92
   11ac0:	0018951b          	slliw	a0,a7,0x1
   11ac4:	05b78e1b          	addiw	t3,a5,91
   11ac8:	00351513          	slli	a0,a0,0x3
   11acc:	a5dff06f          	j	11528 <_malloc_r+0x100>
   11ad0:	010f3783          	ld	a5,16(t5)
   11ad4:	fff8889b          	addiw	a7,a7,-1
   11ad8:	23e79663          	bne	a5,t5,11d04 <_malloc_r+0x8dc>
   11adc:	0038f793          	andi	a5,a7,3
   11ae0:	ff0f0f13          	addi	t5,t5,-16
   11ae4:	fe0796e3          	bnez	a5,11ad0 <_malloc_r+0x6a8>
   11ae8:	00883683          	ld	a3,8(a6)
   11aec:	fff54793          	not	a5,a0
   11af0:	00d7f7b3          	and	a5,a5,a3
   11af4:	00f83423          	sd	a5,8(a6)
   11af8:	00151513          	slli	a0,a0,0x1
   11afc:	fff50693          	addi	a3,a0,-1
   11b00:	baf6f6e3          	bgeu	a3,a5,116ac <_malloc_r+0x284>
   11b04:	00f576b3          	and	a3,a0,a5
   11b08:	00069a63          	bnez	a3,11b1c <_malloc_r+0x6f4>
   11b0c:	00151513          	slli	a0,a0,0x1
   11b10:	00f576b3          	and	a3,a0,a5
   11b14:	004f8f9b          	addiw	t6,t6,4
   11b18:	fe068ae3          	beqz	a3,11b0c <_malloc_r+0x6e4>
   11b1c:	000f8893          	mv	a7,t6
   11b20:	b09ff06f          	j	11628 <_malloc_r+0x200>
   11b24:	02058593          	addi	a1,a1,32
   11b28:	bc9ff06f          	j	116f0 <_malloc_r+0x2c8>
   11b2c:	4026561b          	sraiw	a2,a2,0x2
   11b30:	00100313          	li	t1,1
   11b34:	00c31633          	sll	a2,t1,a2
   11b38:	00c5e5b3          	or	a1,a1,a2
   11b3c:	00b83423          	sd	a1,8(a6)
   11b40:	e11ff06f          	j	11950 <_malloc_r+0x528>
   11b44:	00b30633          	add	a2,t1,a1
   11b48:	40c005b3          	neg	a1,a2
   11b4c:	03459593          	slli	a1,a1,0x34
   11b50:	0345d593          	srli	a1,a1,0x34
   11b54:	00040513          	mv	a0,s0
   11b58:	03c13c23          	sd	t3,56(sp)
   11b5c:	03013823          	sd	a6,48(sp)
   11b60:	02f13423          	sd	a5,40(sp)
   11b64:	02e13023          	sd	a4,32(sp)
   11b68:	01113c23          	sd	a7,24(sp)
   11b6c:	00613823          	sd	t1,16(sp)
   11b70:	00c13423          	sd	a2,8(sp)
   11b74:	04b13023          	sd	a1,64(sp)
   11b78:	600000ef          	jal	12178 <_sbrk_r>
   11b7c:	00050693          	mv	a3,a0
   11b80:	fff00513          	li	a0,-1
   11b84:	01013303          	ld	t1,16(sp)
   11b88:	01813883          	ld	a7,24(sp)
   11b8c:	02013703          	ld	a4,32(sp)
   11b90:	02813783          	ld	a5,40(sp)
   11b94:	03013803          	ld	a6,48(sp)
   11b98:	03813e03          	ld	t3,56(sp)
   11b9c:	0ea68463          	beq	a3,a0,11c84 <_malloc_r+0x85c>
   11ba0:	04013583          	ld	a1,64(sp)
   11ba4:	0005851b          	sext.w	a0,a1
   11ba8:	c49ff06f          	j	117f0 <_malloc_r+0x3c8>
   11bac:	05400613          	li	a2,84
   11bb0:	08d66063          	bltu	a2,a3,11c30 <_malloc_r+0x808>
   11bb4:	00c35693          	srli	a3,t1,0xc
   11bb8:	00169513          	slli	a0,a3,0x1
   11bbc:	0de5051b          	addiw	a0,a0,222
   11bc0:	00351513          	slli	a0,a0,0x3
   11bc4:	06e6861b          	addiw	a2,a3,110
   11bc8:	d5dff06f          	j	11924 <_malloc_r+0x4fc>
   11bcc:	15400693          	li	a3,340
   11bd0:	08f6e063          	bltu	a3,a5,11c50 <_malloc_r+0x828>
   11bd4:	00f75793          	srli	a5,a4,0xf
   11bd8:	0787889b          	addiw	a7,a5,120
   11bdc:	0018951b          	slliw	a0,a7,0x1
   11be0:	07778e1b          	addiw	t3,a5,119
   11be4:	00351513          	slli	a0,a0,0x3
   11be8:	941ff06f          	j	11528 <_malloc_r+0x100>
   11bec:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11bf0:	000e2503          	lw	a0,0(t3)
   11bf4:	00b5053b          	addw	a0,a0,a1
   11bf8:	00ae2023          	sw	a0,0(t3)
   11bfc:	b51ff06f          	j	1174c <_malloc_r+0x324>
   11c00:	03431f13          	slli	t5,t1,0x34
   11c04:	b40f14e3          	bnez	t5,1174c <_malloc_r+0x324>
   11c08:	01083303          	ld	t1,16(a6)
   11c0c:	00b885b3          	add	a1,a7,a1
   11c10:	0015e693          	ori	a3,a1,1
   11c14:	00d33423          	sd	a3,8(t1)
   11c18:	c35ff06f          	j	1184c <_malloc_r+0x424>
   11c1c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11c20:	b45ff06f          	j	11764 <_malloc_r+0x33c>
   11c24:	00100793          	li	a5,1
   11c28:	00f33423          	sd	a5,8(t1)
   11c2c:	e85ff06f          	j	11ab0 <_malloc_r+0x688>
   11c30:	15400613          	li	a2,340
   11c34:	08d66a63          	bltu	a2,a3,11cc8 <_malloc_r+0x8a0>
   11c38:	00f35693          	srli	a3,t1,0xf
   11c3c:	00169513          	slli	a0,a3,0x1
   11c40:	0f05051b          	addiw	a0,a0,240
   11c44:	00351513          	slli	a0,a0,0x3
   11c48:	0776861b          	addiw	a2,a3,119
   11c4c:	cd9ff06f          	j	11924 <_malloc_r+0x4fc>
   11c50:	55400693          	li	a3,1364
   11c54:	08f6ea63          	bltu	a3,a5,11ce8 <_malloc_r+0x8c0>
   11c58:	01275793          	srli	a5,a4,0x12
   11c5c:	07d7889b          	addiw	a7,a5,125
   11c60:	0018951b          	slliw	a0,a7,0x1
   11c64:	07c78e1b          	addiw	t3,a5,124
   11c68:	00351513          	slli	a0,a0,0x3
   11c6c:	8bdff06f          	j	11528 <_malloc_r+0x100>
   11c70:	ff0e8e93          	addi	t4,t4,-16
   11c74:	01d606b3          	add	a3,a2,t4
   11c78:	00000513          	li	a0,0
   11c7c:	00000593          	li	a1,0
   11c80:	b71ff06f          	j	117f0 <_malloc_r+0x3c8>
   11c84:	00813683          	ld	a3,8(sp)
   11c88:	00000593          	li	a1,0
   11c8c:	00000513          	li	a0,0
   11c90:	b61ff06f          	j	117f0 <_malloc_r+0x3c8>
   11c94:	01078593          	addi	a1,a5,16
   11c98:	00040513          	mv	a0,s0
   11c9c:	01c13c23          	sd	t3,24(sp)
   11ca0:	01013823          	sd	a6,16(sp)
   11ca4:	00e13423          	sd	a4,8(sp)
   11ca8:	c7cff0ef          	jal	11124 <_free_r>
   11cac:	01013803          	ld	a6,16(sp)
   11cb0:	01813e03          	ld	t3,24(sp)
   11cb4:	00813703          	ld	a4,8(sp)
   11cb8:	01083303          	ld	t1,16(a6)
   11cbc:	000e2603          	lw	a2,0(t3)
   11cc0:	00833683          	ld	a3,8(t1)
   11cc4:	b89ff06f          	j	1184c <_malloc_r+0x424>
   11cc8:	55400613          	li	a2,1364
   11ccc:	02d66663          	bltu	a2,a3,11cf8 <_malloc_r+0x8d0>
   11cd0:	01235693          	srli	a3,t1,0x12
   11cd4:	00169513          	slli	a0,a3,0x1
   11cd8:	0fa5051b          	addiw	a0,a0,250
   11cdc:	00351513          	slli	a0,a0,0x3
   11ce0:	07c6861b          	addiw	a2,a3,124
   11ce4:	c41ff06f          	j	11924 <_malloc_r+0x4fc>
   11ce8:	7f000513          	li	a0,2032
   11cec:	07f00893          	li	a7,127
   11cf0:	07e00e13          	li	t3,126
   11cf4:	835ff06f          	j	11528 <_malloc_r+0x100>
   11cf8:	7f000513          	li	a0,2032
   11cfc:	07e00613          	li	a2,126
   11d00:	c25ff06f          	j	11924 <_malloc_r+0x4fc>
   11d04:	00883783          	ld	a5,8(a6)
   11d08:	df1ff06f          	j	11af8 <_malloc_r+0x6d0>

0000000000011d0c <__malloc_lock>:
   11d0c:	00008067          	ret

0000000000011d10 <__malloc_unlock>:
   11d10:	00008067          	ret

0000000000011d14 <_fclose_r>:
   11d14:	fe010113          	addi	sp,sp,-32
   11d18:	00113c23          	sd	ra,24(sp)
   11d1c:	01213023          	sd	s2,0(sp)
   11d20:	02058863          	beqz	a1,11d50 <_fclose_r+0x3c>
   11d24:	00813823          	sd	s0,16(sp)
   11d28:	00913423          	sd	s1,8(sp)
   11d2c:	00058413          	mv	s0,a1
   11d30:	00050493          	mv	s1,a0
   11d34:	00050663          	beqz	a0,11d40 <_fclose_r+0x2c>
   11d38:	04853783          	ld	a5,72(a0)
   11d3c:	0c078c63          	beqz	a5,11e14 <_fclose_r+0x100>
   11d40:	01041783          	lh	a5,16(s0)
   11d44:	02079263          	bnez	a5,11d68 <_fclose_r+0x54>
   11d48:	01013403          	ld	s0,16(sp)
   11d4c:	00813483          	ld	s1,8(sp)
   11d50:	01813083          	ld	ra,24(sp)
   11d54:	00000913          	li	s2,0
   11d58:	00090513          	mv	a0,s2
   11d5c:	00013903          	ld	s2,0(sp)
   11d60:	02010113          	addi	sp,sp,32
   11d64:	00008067          	ret
   11d68:	00040593          	mv	a1,s0
   11d6c:	00048513          	mv	a0,s1
   11d70:	0b8000ef          	jal	11e28 <__sflush_r>
   11d74:	05043783          	ld	a5,80(s0)
   11d78:	00050913          	mv	s2,a0
   11d7c:	00078a63          	beqz	a5,11d90 <_fclose_r+0x7c>
   11d80:	03043583          	ld	a1,48(s0)
   11d84:	00048513          	mv	a0,s1
   11d88:	000780e7          	jalr	a5
   11d8c:	06054463          	bltz	a0,11df4 <_fclose_r+0xe0>
   11d90:	01045783          	lhu	a5,16(s0)
   11d94:	0807f793          	andi	a5,a5,128
   11d98:	06079663          	bnez	a5,11e04 <_fclose_r+0xf0>
   11d9c:	05843583          	ld	a1,88(s0)
   11da0:	00058c63          	beqz	a1,11db8 <_fclose_r+0xa4>
   11da4:	07440793          	addi	a5,s0,116
   11da8:	00f58663          	beq	a1,a5,11db4 <_fclose_r+0xa0>
   11dac:	00048513          	mv	a0,s1
   11db0:	b74ff0ef          	jal	11124 <_free_r>
   11db4:	04043c23          	sd	zero,88(s0)
   11db8:	07843583          	ld	a1,120(s0)
   11dbc:	00058863          	beqz	a1,11dcc <_fclose_r+0xb8>
   11dc0:	00048513          	mv	a0,s1
   11dc4:	b60ff0ef          	jal	11124 <_free_r>
   11dc8:	06043c23          	sd	zero,120(s0)
   11dcc:	aa1fe0ef          	jal	1086c <__sfp_lock_acquire>
   11dd0:	00041823          	sh	zero,16(s0)
   11dd4:	a9dfe0ef          	jal	10870 <__sfp_lock_release>
   11dd8:	01813083          	ld	ra,24(sp)
   11ddc:	01013403          	ld	s0,16(sp)
   11de0:	00813483          	ld	s1,8(sp)
   11de4:	00090513          	mv	a0,s2
   11de8:	00013903          	ld	s2,0(sp)
   11dec:	02010113          	addi	sp,sp,32
   11df0:	00008067          	ret
   11df4:	01045783          	lhu	a5,16(s0)
   11df8:	fff00913          	li	s2,-1
   11dfc:	0807f793          	andi	a5,a5,128
   11e00:	f8078ee3          	beqz	a5,11d9c <_fclose_r+0x88>
   11e04:	01843583          	ld	a1,24(s0)
   11e08:	00048513          	mv	a0,s1
   11e0c:	b18ff0ef          	jal	11124 <_free_r>
   11e10:	f8dff06f          	j	11d9c <_fclose_r+0x88>
   11e14:	a35fe0ef          	jal	10848 <__sinit>
   11e18:	f29ff06f          	j	11d40 <_fclose_r+0x2c>

0000000000011e1c <fclose>:
   11e1c:	00050593          	mv	a1,a0
   11e20:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e24:	ef1ff06f          	j	11d14 <_fclose_r>

0000000000011e28 <__sflush_r>:
   11e28:	01059703          	lh	a4,16(a1)
   11e2c:	fd010113          	addi	sp,sp,-48
   11e30:	02813023          	sd	s0,32(sp)
   11e34:	01313423          	sd	s3,8(sp)
   11e38:	02113423          	sd	ra,40(sp)
   11e3c:	00877793          	andi	a5,a4,8
   11e40:	00058413          	mv	s0,a1
   11e44:	00050993          	mv	s3,a0
   11e48:	12079263          	bnez	a5,11f6c <__sflush_r+0x144>
   11e4c:	000017b7          	lui	a5,0x1
   11e50:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11e54:	0085a683          	lw	a3,8(a1)
   11e58:	00f767b3          	or	a5,a4,a5
   11e5c:	00f59823          	sh	a5,16(a1)
   11e60:	18d05c63          	blez	a3,11ff8 <__sflush_r+0x1d0>
   11e64:	04843803          	ld	a6,72(s0)
   11e68:	0e080663          	beqz	a6,11f54 <__sflush_r+0x12c>
   11e6c:	00913c23          	sd	s1,24(sp)
   11e70:	03371693          	slli	a3,a4,0x33
   11e74:	0009a483          	lw	s1,0(s3)
   11e78:	0009a023          	sw	zero,0(s3)
   11e7c:	1806ca63          	bltz	a3,12010 <__sflush_r+0x1e8>
   11e80:	03043583          	ld	a1,48(s0)
   11e84:	00000613          	li	a2,0
   11e88:	00100693          	li	a3,1
   11e8c:	00098513          	mv	a0,s3
   11e90:	000800e7          	jalr	a6
   11e94:	fff00793          	li	a5,-1
   11e98:	00050613          	mv	a2,a0
   11e9c:	1af50c63          	beq	a0,a5,12054 <__sflush_r+0x22c>
   11ea0:	01041783          	lh	a5,16(s0)
   11ea4:	04843803          	ld	a6,72(s0)
   11ea8:	0047f793          	andi	a5,a5,4
   11eac:	00078e63          	beqz	a5,11ec8 <__sflush_r+0xa0>
   11eb0:	00842703          	lw	a4,8(s0)
   11eb4:	05843783          	ld	a5,88(s0)
   11eb8:	40e60633          	sub	a2,a2,a4
   11ebc:	00078663          	beqz	a5,11ec8 <__sflush_r+0xa0>
   11ec0:	07042783          	lw	a5,112(s0)
   11ec4:	40f60633          	sub	a2,a2,a5
   11ec8:	03043583          	ld	a1,48(s0)
   11ecc:	00000693          	li	a3,0
   11ed0:	00098513          	mv	a0,s3
   11ed4:	000800e7          	jalr	a6
   11ed8:	fff00713          	li	a4,-1
   11edc:	01041783          	lh	a5,16(s0)
   11ee0:	12e51c63          	bne	a0,a4,12018 <__sflush_r+0x1f0>
   11ee4:	0009a683          	lw	a3,0(s3)
   11ee8:	01d00713          	li	a4,29
   11eec:	18d76263          	bltu	a4,a3,12070 <__sflush_r+0x248>
   11ef0:	20400737          	lui	a4,0x20400
   11ef4:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11ef8:	00d75733          	srl	a4,a4,a3
   11efc:	00177713          	andi	a4,a4,1
   11f00:	16070863          	beqz	a4,12070 <__sflush_r+0x248>
   11f04:	01843683          	ld	a3,24(s0)
   11f08:	fffff737          	lui	a4,0xfffff
   11f0c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f10:	00e7f733          	and	a4,a5,a4
   11f14:	00e41823          	sh	a4,16(s0)
   11f18:	00042423          	sw	zero,8(s0)
   11f1c:	00d43023          	sd	a3,0(s0)
   11f20:	03379713          	slli	a4,a5,0x33
   11f24:	00075663          	bgez	a4,11f30 <__sflush_r+0x108>
   11f28:	0009a783          	lw	a5,0(s3)
   11f2c:	10078863          	beqz	a5,1203c <__sflush_r+0x214>
   11f30:	05843583          	ld	a1,88(s0)
   11f34:	0099a023          	sw	s1,0(s3)
   11f38:	10058a63          	beqz	a1,1204c <__sflush_r+0x224>
   11f3c:	07440793          	addi	a5,s0,116
   11f40:	00f58663          	beq	a1,a5,11f4c <__sflush_r+0x124>
   11f44:	00098513          	mv	a0,s3
   11f48:	9dcff0ef          	jal	11124 <_free_r>
   11f4c:	01813483          	ld	s1,24(sp)
   11f50:	04043c23          	sd	zero,88(s0)
   11f54:	02813083          	ld	ra,40(sp)
   11f58:	02013403          	ld	s0,32(sp)
   11f5c:	00813983          	ld	s3,8(sp)
   11f60:	00000513          	li	a0,0
   11f64:	03010113          	addi	sp,sp,48
   11f68:	00008067          	ret
   11f6c:	01213823          	sd	s2,16(sp)
   11f70:	0185b903          	ld	s2,24(a1)
   11f74:	08090a63          	beqz	s2,12008 <__sflush_r+0x1e0>
   11f78:	00913c23          	sd	s1,24(sp)
   11f7c:	0005b483          	ld	s1,0(a1)
   11f80:	00377713          	andi	a4,a4,3
   11f84:	0125b023          	sd	s2,0(a1)
   11f88:	412484bb          	subw	s1,s1,s2
   11f8c:	00000793          	li	a5,0
   11f90:	00071463          	bnez	a4,11f98 <__sflush_r+0x170>
   11f94:	0205a783          	lw	a5,32(a1)
   11f98:	00f42623          	sw	a5,12(s0)
   11f9c:	00904863          	bgtz	s1,11fac <__sflush_r+0x184>
   11fa0:	0640006f          	j	12004 <__sflush_r+0x1dc>
   11fa4:	00a90933          	add	s2,s2,a0
   11fa8:	04905e63          	blez	s1,12004 <__sflush_r+0x1dc>
   11fac:	04043783          	ld	a5,64(s0)
   11fb0:	03043583          	ld	a1,48(s0)
   11fb4:	00048693          	mv	a3,s1
   11fb8:	00090613          	mv	a2,s2
   11fbc:	00098513          	mv	a0,s3
   11fc0:	000780e7          	jalr	a5
   11fc4:	40a484bb          	subw	s1,s1,a0
   11fc8:	fca04ee3          	bgtz	a0,11fa4 <__sflush_r+0x17c>
   11fcc:	01045783          	lhu	a5,16(s0)
   11fd0:	01013903          	ld	s2,16(sp)
   11fd4:	0407e793          	ori	a5,a5,64
   11fd8:	02813083          	ld	ra,40(sp)
   11fdc:	00f41823          	sh	a5,16(s0)
   11fe0:	02013403          	ld	s0,32(sp)
   11fe4:	01813483          	ld	s1,24(sp)
   11fe8:	00813983          	ld	s3,8(sp)
   11fec:	fff00513          	li	a0,-1
   11ff0:	03010113          	addi	sp,sp,48
   11ff4:	00008067          	ret
   11ff8:	0705a683          	lw	a3,112(a1)
   11ffc:	e6d044e3          	bgtz	a3,11e64 <__sflush_r+0x3c>
   12000:	f55ff06f          	j	11f54 <__sflush_r+0x12c>
   12004:	01813483          	ld	s1,24(sp)
   12008:	01013903          	ld	s2,16(sp)
   1200c:	f49ff06f          	j	11f54 <__sflush_r+0x12c>
   12010:	09043603          	ld	a2,144(s0)
   12014:	e95ff06f          	j	11ea8 <__sflush_r+0x80>
   12018:	01843683          	ld	a3,24(s0)
   1201c:	fffff737          	lui	a4,0xfffff
   12020:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12024:	00e7f733          	and	a4,a5,a4
   12028:	00e41823          	sh	a4,16(s0)
   1202c:	00042423          	sw	zero,8(s0)
   12030:	00d43023          	sd	a3,0(s0)
   12034:	03379713          	slli	a4,a5,0x33
   12038:	ee075ce3          	bgez	a4,11f30 <__sflush_r+0x108>
   1203c:	05843583          	ld	a1,88(s0)
   12040:	08a43823          	sd	a0,144(s0)
   12044:	0099a023          	sw	s1,0(s3)
   12048:	ee059ae3          	bnez	a1,11f3c <__sflush_r+0x114>
   1204c:	01813483          	ld	s1,24(sp)
   12050:	f05ff06f          	j	11f54 <__sflush_r+0x12c>
   12054:	0009a783          	lw	a5,0(s3)
   12058:	e40784e3          	beqz	a5,11ea0 <__sflush_r+0x78>
   1205c:	fe378713          	addi	a4,a5,-29
   12060:	00070c63          	beqz	a4,12078 <__sflush_r+0x250>
   12064:	fea78793          	addi	a5,a5,-22
   12068:	00078863          	beqz	a5,12078 <__sflush_r+0x250>
   1206c:	01045783          	lhu	a5,16(s0)
   12070:	0407e793          	ori	a5,a5,64
   12074:	f65ff06f          	j	11fd8 <__sflush_r+0x1b0>
   12078:	0099a023          	sw	s1,0(s3)
   1207c:	01813483          	ld	s1,24(sp)
   12080:	ed5ff06f          	j	11f54 <__sflush_r+0x12c>

0000000000012084 <_fflush_r>:
   12084:	00050793          	mv	a5,a0
   12088:	00050663          	beqz	a0,12094 <_fflush_r+0x10>
   1208c:	04853703          	ld	a4,72(a0)
   12090:	00070e63          	beqz	a4,120ac <_fflush_r+0x28>
   12094:	01059703          	lh	a4,16(a1)
   12098:	00071663          	bnez	a4,120a4 <_fflush_r+0x20>
   1209c:	00000513          	li	a0,0
   120a0:	00008067          	ret
   120a4:	00078513          	mv	a0,a5
   120a8:	d81ff06f          	j	11e28 <__sflush_r>
   120ac:	fe010113          	addi	sp,sp,-32
   120b0:	00b13423          	sd	a1,8(sp)
   120b4:	00113c23          	sd	ra,24(sp)
   120b8:	00a13023          	sd	a0,0(sp)
   120bc:	f8cfe0ef          	jal	10848 <__sinit>
   120c0:	00813583          	ld	a1,8(sp)
   120c4:	00013783          	ld	a5,0(sp)
   120c8:	01059703          	lh	a4,16(a1)
   120cc:	00070a63          	beqz	a4,120e0 <_fflush_r+0x5c>
   120d0:	01813083          	ld	ra,24(sp)
   120d4:	00078513          	mv	a0,a5
   120d8:	02010113          	addi	sp,sp,32
   120dc:	d4dff06f          	j	11e28 <__sflush_r>
   120e0:	01813083          	ld	ra,24(sp)
   120e4:	00000513          	li	a0,0
   120e8:	02010113          	addi	sp,sp,32
   120ec:	00008067          	ret

00000000000120f0 <fflush>:
   120f0:	06050063          	beqz	a0,12150 <fflush+0x60>
   120f4:	00050593          	mv	a1,a0
   120f8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   120fc:	00050663          	beqz	a0,12108 <fflush+0x18>
   12100:	04853783          	ld	a5,72(a0)
   12104:	00078c63          	beqz	a5,1211c <fflush+0x2c>
   12108:	01059783          	lh	a5,16(a1)
   1210c:	00079663          	bnez	a5,12118 <fflush+0x28>
   12110:	00000513          	li	a0,0
   12114:	00008067          	ret
   12118:	d11ff06f          	j	11e28 <__sflush_r>
   1211c:	fe010113          	addi	sp,sp,-32
   12120:	00b13423          	sd	a1,8(sp)
   12124:	00a13023          	sd	a0,0(sp)
   12128:	00113c23          	sd	ra,24(sp)
   1212c:	f1cfe0ef          	jal	10848 <__sinit>
   12130:	00813583          	ld	a1,8(sp)
   12134:	00013503          	ld	a0,0(sp)
   12138:	01059783          	lh	a5,16(a1)
   1213c:	02079863          	bnez	a5,1216c <fflush+0x7c>
   12140:	01813083          	ld	ra,24(sp)
   12144:	00000513          	li	a0,0
   12148:	02010113          	addi	sp,sp,32
   1214c:	00008067          	ret
   12150:	00013637          	lui	a2,0x13
   12154:	000125b7          	lui	a1,0x12
   12158:	00013537          	lui	a0,0x13
   1215c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12160:	08458593          	addi	a1,a1,132 # 12084 <_fflush_r>
   12164:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12168:	f3cfe06f          	j	108a4 <_fwalk_sglue>
   1216c:	01813083          	ld	ra,24(sp)
   12170:	02010113          	addi	sp,sp,32
   12174:	cb5ff06f          	j	11e28 <__sflush_r>

0000000000012178 <_sbrk_r>:
   12178:	fe010113          	addi	sp,sp,-32
   1217c:	00813823          	sd	s0,16(sp)
   12180:	00913423          	sd	s1,8(sp)
   12184:	00050493          	mv	s1,a0
   12188:	00058513          	mv	a0,a1
   1218c:	00113c23          	sd	ra,24(sp)
   12190:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12194:	228000ef          	jal	123bc <_sbrk>
   12198:	fff00793          	li	a5,-1
   1219c:	00f50c63          	beq	a0,a5,121b4 <_sbrk_r+0x3c>
   121a0:	01813083          	ld	ra,24(sp)
   121a4:	01013403          	ld	s0,16(sp)
   121a8:	00813483          	ld	s1,8(sp)
   121ac:	02010113          	addi	sp,sp,32
   121b0:	00008067          	ret
   121b4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   121b8:	fe0784e3          	beqz	a5,121a0 <_sbrk_r+0x28>
   121bc:	01813083          	ld	ra,24(sp)
   121c0:	01013403          	ld	s0,16(sp)
   121c4:	00f4a023          	sw	a5,0(s1)
   121c8:	00813483          	ld	s1,8(sp)
   121cc:	02010113          	addi	sp,sp,32
   121d0:	00008067          	ret

00000000000121d4 <__libc_fini_array>:
   121d4:	fe010113          	addi	sp,sp,-32
   121d8:	00813823          	sd	s0,16(sp)
   121dc:	000137b7          	lui	a5,0x13
   121e0:	00013437          	lui	s0,0x13
   121e4:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   121e8:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   121ec:	408787b3          	sub	a5,a5,s0
   121f0:	00913423          	sd	s1,8(sp)
   121f4:	00113c23          	sd	ra,24(sp)
   121f8:	4037d493          	srai	s1,a5,0x3
   121fc:	02048063          	beqz	s1,1221c <__libc_fini_array+0x48>
   12200:	ff840413          	addi	s0,s0,-8
   12204:	00f40433          	add	s0,s0,a5
   12208:	00043783          	ld	a5,0(s0)
   1220c:	fff48493          	addi	s1,s1,-1
   12210:	ff840413          	addi	s0,s0,-8
   12214:	000780e7          	jalr	a5
   12218:	fe0498e3          	bnez	s1,12208 <__libc_fini_array+0x34>
   1221c:	01813083          	ld	ra,24(sp)
   12220:	01013403          	ld	s0,16(sp)
   12224:	00813483          	ld	s1,8(sp)
   12228:	02010113          	addi	sp,sp,32
   1222c:	00008067          	ret

0000000000012230 <__register_exitproc>:
   12230:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12234:	04078e63          	beqz	a5,12290 <__register_exitproc+0x60>
   12238:	0087a703          	lw	a4,8(a5)
   1223c:	01f00813          	li	a6,31
   12240:	08e84263          	blt	a6,a4,122c4 <__register_exitproc+0x94>
   12244:	02050863          	beqz	a0,12274 <__register_exitproc+0x44>
   12248:	00371813          	slli	a6,a4,0x3
   1224c:	01078833          	add	a6,a5,a6
   12250:	10c83823          	sd	a2,272(a6)
   12254:	3107a883          	lw	a7,784(a5)
   12258:	00100613          	li	a2,1
   1225c:	00e6163b          	sllw	a2,a2,a4
   12260:	00c8e8b3          	or	a7,a7,a2
   12264:	3117a823          	sw	a7,784(a5)
   12268:	20d83823          	sd	a3,528(a6)
   1226c:	00200693          	li	a3,2
   12270:	02d50663          	beq	a0,a3,1229c <__register_exitproc+0x6c>
   12274:	0017069b          	addiw	a3,a4,1
   12278:	00371713          	slli	a4,a4,0x3
   1227c:	00d7a423          	sw	a3,8(a5)
   12280:	00e787b3          	add	a5,a5,a4
   12284:	00b7b823          	sd	a1,16(a5)
   12288:	00000513          	li	a0,0
   1228c:	00008067          	ret
   12290:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12294:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12298:	fa1ff06f          	j	12238 <__register_exitproc+0x8>
   1229c:	3147a683          	lw	a3,788(a5)
   122a0:	00000513          	li	a0,0
   122a4:	00d66633          	or	a2,a2,a3
   122a8:	0017069b          	addiw	a3,a4,1
   122ac:	00371713          	slli	a4,a4,0x3
   122b0:	30c7aa23          	sw	a2,788(a5)
   122b4:	00d7a423          	sw	a3,8(a5)
   122b8:	00e787b3          	add	a5,a5,a4
   122bc:	00b7b823          	sd	a1,16(a5)
   122c0:	00008067          	ret
   122c4:	fff00513          	li	a0,-1
   122c8:	00008067          	ret

00000000000122cc <_close>:
   122cc:	03900893          	li	a7,57
   122d0:	00000073          	ecall
   122d4:	00054663          	bltz	a0,122e0 <_close+0x14>
   122d8:	0005051b          	sext.w	a0,a0
   122dc:	00008067          	ret
   122e0:	fe010113          	addi	sp,sp,-32
   122e4:	00113c23          	sd	ra,24(sp)
   122e8:	00a13423          	sd	a0,8(sp)
   122ec:	188000ef          	jal	12474 <__errno>
   122f0:	00813783          	ld	a5,8(sp)
   122f4:	01813083          	ld	ra,24(sp)
   122f8:	40f007bb          	negw	a5,a5
   122fc:	00f52023          	sw	a5,0(a0)
   12300:	fff00513          	li	a0,-1
   12304:	02010113          	addi	sp,sp,32
   12308:	00008067          	ret

000000000001230c <_exit>:
   1230c:	05d00893          	li	a7,93
   12310:	00000073          	ecall
   12314:	00054463          	bltz	a0,1231c <_exit+0x10>
   12318:	0000006f          	j	12318 <_exit+0xc>
   1231c:	fe010113          	addi	sp,sp,-32
   12320:	00113c23          	sd	ra,24(sp)
   12324:	00a13423          	sd	a0,8(sp)
   12328:	14c000ef          	jal	12474 <__errno>
   1232c:	00813783          	ld	a5,8(sp)
   12330:	40f007bb          	negw	a5,a5
   12334:	00f52023          	sw	a5,0(a0)
   12338:	0000006f          	j	12338 <_exit+0x2c>

000000000001233c <_lseek>:
   1233c:	03e00893          	li	a7,62
   12340:	00000073          	ecall
   12344:	00054463          	bltz	a0,1234c <_lseek+0x10>
   12348:	00008067          	ret
   1234c:	fe010113          	addi	sp,sp,-32
   12350:	00113c23          	sd	ra,24(sp)
   12354:	00a13423          	sd	a0,8(sp)
   12358:	11c000ef          	jal	12474 <__errno>
   1235c:	00813783          	ld	a5,8(sp)
   12360:	01813083          	ld	ra,24(sp)
   12364:	40f007bb          	negw	a5,a5
   12368:	00f52023          	sw	a5,0(a0)
   1236c:	fff00793          	li	a5,-1
   12370:	00078513          	mv	a0,a5
   12374:	02010113          	addi	sp,sp,32
   12378:	00008067          	ret

000000000001237c <_read>:
   1237c:	03f00893          	li	a7,63
   12380:	00000073          	ecall
   12384:	00054463          	bltz	a0,1238c <_read+0x10>
   12388:	00008067          	ret
   1238c:	fe010113          	addi	sp,sp,-32
   12390:	00113c23          	sd	ra,24(sp)
   12394:	00a13423          	sd	a0,8(sp)
   12398:	0dc000ef          	jal	12474 <__errno>
   1239c:	00813783          	ld	a5,8(sp)
   123a0:	01813083          	ld	ra,24(sp)
   123a4:	40f007bb          	negw	a5,a5
   123a8:	00f52023          	sw	a5,0(a0)
   123ac:	fff00793          	li	a5,-1
   123b0:	00078513          	mv	a0,a5
   123b4:	02010113          	addi	sp,sp,32
   123b8:	00008067          	ret

00000000000123bc <_sbrk>:
   123bc:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   123c0:	ff010113          	addi	sp,sp,-16
   123c4:	00113423          	sd	ra,8(sp)
   123c8:	00050713          	mv	a4,a0
   123cc:	02079063          	bnez	a5,123ec <_sbrk+0x30>
   123d0:	0d600893          	li	a7,214
   123d4:	00000513          	li	a0,0
   123d8:	00000073          	ecall
   123dc:	fff00793          	li	a5,-1
   123e0:	02f50c63          	beq	a0,a5,12418 <_sbrk+0x5c>
   123e4:	00050793          	mv	a5,a0
   123e8:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   123ec:	00f70533          	add	a0,a4,a5
   123f0:	0d600893          	li	a7,214
   123f4:	00000073          	ecall
   123f8:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   123fc:	00f70733          	add	a4,a4,a5
   12400:	00e51c63          	bne	a0,a4,12418 <_sbrk+0x5c>
   12404:	00813083          	ld	ra,8(sp)
   12408:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1240c:	00078513          	mv	a0,a5
   12410:	01010113          	addi	sp,sp,16
   12414:	00008067          	ret
   12418:	05c000ef          	jal	12474 <__errno>
   1241c:	00813083          	ld	ra,8(sp)
   12420:	00c00793          	li	a5,12
   12424:	00f52023          	sw	a5,0(a0)
   12428:	fff00513          	li	a0,-1
   1242c:	01010113          	addi	sp,sp,16
   12430:	00008067          	ret

0000000000012434 <_write>:
   12434:	04000893          	li	a7,64
   12438:	00000073          	ecall
   1243c:	00054463          	bltz	a0,12444 <_write+0x10>
   12440:	00008067          	ret
   12444:	fe010113          	addi	sp,sp,-32
   12448:	00113c23          	sd	ra,24(sp)
   1244c:	00a13423          	sd	a0,8(sp)
   12450:	024000ef          	jal	12474 <__errno>
   12454:	00813783          	ld	a5,8(sp)
   12458:	01813083          	ld	ra,24(sp)
   1245c:	40f007bb          	negw	a5,a5
   12460:	00f52023          	sw	a5,0(a0)
   12464:	fff00793          	li	a5,-1
   12468:	00078513          	mv	a0,a5
   1246c:	02010113          	addi	sp,sp,32
   12470:	00008067          	ret

0000000000012474 <__errno>:
   12474:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12478:	00008067          	ret

Disassembly of section .rodata:

0000000000012480 <.rodata>:
   12480:	6341                	.insn	2, 0x6341
   12482:	6d72656b          	.insn	4, 0x6d72656b
   12486:	6e61                	.insn	2, 0x6e61
   12488:	286e                	.insn	2, 0x286e
   1248a:	0000                	.insn	2, 0x0000
   1248c:	0000                	.insn	2, 0x0000
   1248e:	0000                	.insn	2, 0x0000
   12490:	002c                	.insn	2, 0x002c
   12492:	0000                	.insn	2, 0x0000
   12494:	0000                	.insn	2, 0x0000
   12496:	0000                	.insn	2, 0x0000
   12498:	2029                	.insn	2, 0x2029
   1249a:	203d                	.insn	2, 0x203d
	...

Disassembly of section .eh_frame:

00000000000124a0 <__EH_FRAME_BEGIN__>:
   124a0:	0000                	.insn	2, 0x0000
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

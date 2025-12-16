
test/build/with-syscall/test_rem.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	49d000ef          	jal	10dd0 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	0e0020ef          	jal	12228 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	0f050513          	addi	a0,a0,240 # 120f0 <__libc_fini_array>
   1015c:	5ad0006f          	j	10f08 <atexit>
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
   10184:	371000ef          	jal	10cf4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	d8050513          	addi	a0,a0,-640 # 10f08 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	f5c50513          	addi	a0,a0,-164 # 120f0 <__libc_fini_array>
   1019c:	56d000ef          	jal	10f08 <atexit>
   101a0:	2c1000ef          	jal	10c60 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	0c4000ef          	jal	10274 <main>
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
   101d8:	3a050513          	addi	a0,a0,928 # 123a0 <__EH_FRAME_BEGIN__>
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
   1020c:	3a050513          	addi	a0,a0,928 # 123a0 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <do_rem>:
   1021c:	fd010113          	addi	sp,sp,-48
   10220:	02113423          	sd	ra,40(sp)
   10224:	02813023          	sd	s0,32(sp)
   10228:	03010413          	addi	s0,sp,48
   1022c:	fca43c23          	sd	a0,-40(s0)
   10230:	fcb43823          	sd	a1,-48(s0)
   10234:	fd843783          	ld	a5,-40(s0)
   10238:	fd043703          	ld	a4,-48(s0)
   1023c:	02e7e7b3          	rem	a5,a5,a4
   10240:	fef43423          	sd	a5,-24(s0)
   10244:	fe843783          	ld	a5,-24(s0)
   10248:	0007879b          	sext.w	a5,a5
   1024c:	00078513          	mv	a0,a5
   10250:	0a4000ef          	jal	102f4 <print_d>
   10254:	000127b7          	lui	a5,0x12
   10258:	39878513          	addi	a0,a5,920 # 12398 <__errno+0x8>
   1025c:	104000ef          	jal	10360 <print_s>
   10260:	00000013          	nop
   10264:	02813083          	ld	ra,40(sp)
   10268:	02013403          	ld	s0,32(sp)
   1026c:	03010113          	addi	sp,sp,48
   10270:	00008067          	ret

0000000000010274 <main>:
   10274:	fe010113          	addi	sp,sp,-32
   10278:	00113c23          	sd	ra,24(sp)
   1027c:	00813823          	sd	s0,16(sp)
   10280:	02010413          	addi	s0,sp,32
   10284:	00500793          	li	a5,5
   10288:	fef43423          	sd	a5,-24(s0)
   1028c:	00300793          	li	a5,3
   10290:	fef43023          	sd	a5,-32(s0)
   10294:	fe043583          	ld	a1,-32(s0)
   10298:	fe843503          	ld	a0,-24(s0)
   1029c:	f81ff0ef          	jal	1021c <do_rem>
   102a0:	04800793          	li	a5,72
   102a4:	fef43423          	sd	a5,-24(s0)
   102a8:	00a00793          	li	a5,10
   102ac:	fef43023          	sd	a5,-32(s0)
   102b0:	fe043583          	ld	a1,-32(s0)
   102b4:	fe843503          	ld	a0,-24(s0)
   102b8:	f65ff0ef          	jal	1021c <do_rem>
   102bc:	05900793          	li	a5,89
   102c0:	fef43423          	sd	a5,-24(s0)
   102c4:	00900793          	li	a5,9
   102c8:	fef43023          	sd	a5,-32(s0)
   102cc:	fe043583          	ld	a1,-32(s0)
   102d0:	fe843503          	ld	a0,-24(s0)
   102d4:	f49ff0ef          	jal	1021c <do_rem>
   102d8:	0ec000ef          	jal	103c4 <exit_proc>
   102dc:	00000793          	li	a5,0
   102e0:	00078513          	mv	a0,a5
   102e4:	01813083          	ld	ra,24(sp)
   102e8:	01013403          	ld	s0,16(sp)
   102ec:	02010113          	addi	sp,sp,32
   102f0:	00008067          	ret

00000000000102f4 <print_d>:
   102f4:	fe010113          	addi	sp,sp,-32
   102f8:	00113c23          	sd	ra,24(sp)
   102fc:	00813823          	sd	s0,16(sp)
   10300:	02010413          	addi	s0,sp,32
   10304:	00050793          	mv	a5,a0
   10308:	fef42623          	sw	a5,-20(s0)
   1030c:	00200893          	li	a7,2
   10310:	00000073          	ecall
   10314:	00000013          	nop
   10318:	01813083          	ld	ra,24(sp)
   1031c:	01013403          	ld	s0,16(sp)
   10320:	02010113          	addi	sp,sp,32
   10324:	00008067          	ret

0000000000010328 <print_ll>:
   10328:	fe010113          	addi	sp,sp,-32
   1032c:	00113c23          	sd	ra,24(sp)
   10330:	00813823          	sd	s0,16(sp)
   10334:	02010413          	addi	s0,sp,32
   10338:	fea43423          	sd	a0,-24(s0)
   1033c:	fe843783          	ld	a5,-24(s0)
   10340:	00078513          	mv	a0,a5
   10344:	00600893          	li	a7,6
   10348:	00000073          	ecall
   1034c:	00000013          	nop
   10350:	01813083          	ld	ra,24(sp)
   10354:	01013403          	ld	s0,16(sp)
   10358:	02010113          	addi	sp,sp,32
   1035c:	00008067          	ret

0000000000010360 <print_s>:
   10360:	fe010113          	addi	sp,sp,-32
   10364:	00113c23          	sd	ra,24(sp)
   10368:	00813823          	sd	s0,16(sp)
   1036c:	02010413          	addi	s0,sp,32
   10370:	fea43423          	sd	a0,-24(s0)
   10374:	00000893          	li	a7,0
   10378:	00000073          	ecall
   1037c:	00000013          	nop
   10380:	01813083          	ld	ra,24(sp)
   10384:	01013403          	ld	s0,16(sp)
   10388:	02010113          	addi	sp,sp,32
   1038c:	00008067          	ret

0000000000010390 <print_c>:
   10390:	fe010113          	addi	sp,sp,-32
   10394:	00113c23          	sd	ra,24(sp)
   10398:	00813823          	sd	s0,16(sp)
   1039c:	02010413          	addi	s0,sp,32
   103a0:	00050793          	mv	a5,a0
   103a4:	fef407a3          	sb	a5,-17(s0)
   103a8:	00100893          	li	a7,1
   103ac:	00000073          	ecall
   103b0:	00000013          	nop
   103b4:	01813083          	ld	ra,24(sp)
   103b8:	01013403          	ld	s0,16(sp)
   103bc:	02010113          	addi	sp,sp,32
   103c0:	00008067          	ret

00000000000103c4 <exit_proc>:
   103c4:	ff010113          	addi	sp,sp,-16
   103c8:	00113423          	sd	ra,8(sp)
   103cc:	00813023          	sd	s0,0(sp)
   103d0:	01010413          	addi	s0,sp,16
   103d4:	00300893          	li	a7,3
   103d8:	00000073          	ecall
   103dc:	00000013          	nop
   103e0:	00813083          	ld	ra,8(sp)
   103e4:	00013403          	ld	s0,0(sp)
   103e8:	01010113          	addi	sp,sp,16
   103ec:	00008067          	ret

00000000000103f0 <read_char>:
   103f0:	fe010113          	addi	sp,sp,-32
   103f4:	00113c23          	sd	ra,24(sp)
   103f8:	00813823          	sd	s0,16(sp)
   103fc:	02010413          	addi	s0,sp,32
   10400:	00400893          	li	a7,4
   10404:	00000073          	ecall
   10408:	00050793          	mv	a5,a0
   1040c:	fef407a3          	sb	a5,-17(s0)
   10410:	fef44783          	lbu	a5,-17(s0)
   10414:	00078513          	mv	a0,a5
   10418:	01813083          	ld	ra,24(sp)
   1041c:	01013403          	ld	s0,16(sp)
   10420:	02010113          	addi	sp,sp,32
   10424:	00008067          	ret

0000000000010428 <read_num>:
   10428:	fe010113          	addi	sp,sp,-32
   1042c:	00113c23          	sd	ra,24(sp)
   10430:	00813823          	sd	s0,16(sp)
   10434:	02010413          	addi	s0,sp,32
   10438:	00500893          	li	a7,5
   1043c:	00000073          	ecall
   10440:	00050793          	mv	a5,a0
   10444:	fef43423          	sd	a5,-24(s0)
   10448:	fe843783          	ld	a5,-24(s0)
   1044c:	00078513          	mv	a0,a5
   10450:	01813083          	ld	ra,24(sp)
   10454:	01013403          	ld	s0,16(sp)
   10458:	02010113          	addi	sp,sp,32
   1045c:	00008067          	ret

0000000000010460 <__fp_lock>:
   10460:	00000513          	li	a0,0
   10464:	00008067          	ret

0000000000010468 <stdio_exit_handler>:
   10468:	00013637          	lui	a2,0x13
   1046c:	000125b7          	lui	a1,0x12
   10470:	00013537          	lui	a0,0x13
   10474:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10478:	c3058593          	addi	a1,a1,-976 # 11c30 <_fclose_r>
   1047c:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10480:	3440006f          	j	107c4 <_fwalk_sglue>

0000000000010484 <cleanup_stdio>:
   10484:	00853583          	ld	a1,8(a0)
   10488:	ff010113          	addi	sp,sp,-16
   1048c:	00813023          	sd	s0,0(sp)
   10490:	00113423          	sd	ra,8(sp)
   10494:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10498:	00050413          	mv	s0,a0
   1049c:	00f58463          	beq	a1,a5,104a4 <cleanup_stdio+0x20>
   104a0:	790010ef          	jal	11c30 <_fclose_r>
   104a4:	01043583          	ld	a1,16(s0)
   104a8:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   104ac:	00f58663          	beq	a1,a5,104b8 <cleanup_stdio+0x34>
   104b0:	00040513          	mv	a0,s0
   104b4:	77c010ef          	jal	11c30 <_fclose_r>
   104b8:	01843583          	ld	a1,24(s0)
   104bc:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   104c0:	00f58c63          	beq	a1,a5,104d8 <cleanup_stdio+0x54>
   104c4:	00040513          	mv	a0,s0
   104c8:	00013403          	ld	s0,0(sp)
   104cc:	00813083          	ld	ra,8(sp)
   104d0:	01010113          	addi	sp,sp,16
   104d4:	75c0106f          	j	11c30 <_fclose_r>
   104d8:	00813083          	ld	ra,8(sp)
   104dc:	00013403          	ld	s0,0(sp)
   104e0:	01010113          	addi	sp,sp,16
   104e4:	00008067          	ret

00000000000104e8 <__fp_unlock>:
   104e8:	00000513          	li	a0,0
   104ec:	00008067          	ret

00000000000104f0 <global_stdio_init.part.0>:
   104f0:	fd010113          	addi	sp,sp,-48
   104f4:	000107b7          	lui	a5,0x10
   104f8:	02813023          	sd	s0,32(sp)
   104fc:	46878793          	addi	a5,a5,1128 # 10468 <stdio_exit_handler>
   10500:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10504:	02113423          	sd	ra,40(sp)
   10508:	00913c23          	sd	s1,24(sp)
   1050c:	01213823          	sd	s2,16(sp)
   10510:	01313423          	sd	s3,8(sp)
   10514:	01413023          	sd	s4,0(sp)
   10518:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1051c:	00800613          	li	a2,8
   10520:	00400793          	li	a5,4
   10524:	00000593          	li	a1,0
   10528:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   1052c:	00f42823          	sw	a5,16(s0)
   10530:	00043023          	sd	zero,0(s0)
   10534:	00043423          	sd	zero,8(s0)
   10538:	0a042623          	sw	zero,172(s0)
   1053c:	00043c23          	sd	zero,24(s0)
   10540:	02042023          	sw	zero,32(s0)
   10544:	02042423          	sw	zero,40(s0)
   10548:	7ac000ef          	jal	10cf4 <memset>
   1054c:	00011a37          	lui	s4,0x11
   10550:	000119b7          	lui	s3,0x11
   10554:	00011937          	lui	s2,0x11
   10558:	000114b7          	lui	s1,0x11
   1055c:	000107b7          	lui	a5,0x10
   10560:	890a0a13          	addi	s4,s4,-1904 # 10890 <__sread>
   10564:	8f498993          	addi	s3,s3,-1804 # 108f4 <__swrite>
   10568:	97c90913          	addi	s2,s2,-1668 # 1097c <__sseek>
   1056c:	9e048493          	addi	s1,s1,-1568 # 109e0 <__sclose>
   10570:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10574:	00800613          	li	a2,8
   10578:	00000593          	li	a1,0
   1057c:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10580:	0cf42023          	sw	a5,192(s0)
   10584:	03443c23          	sd	s4,56(s0)
   10588:	05343023          	sd	s3,64(s0)
   1058c:	05243423          	sd	s2,72(s0)
   10590:	04943823          	sd	s1,80(s0)
   10594:	02843823          	sd	s0,48(s0)
   10598:	0a043823          	sd	zero,176(s0)
   1059c:	0a043c23          	sd	zero,184(s0)
   105a0:	14042e23          	sw	zero,348(s0)
   105a4:	0c043423          	sd	zero,200(s0)
   105a8:	0c042823          	sw	zero,208(s0)
   105ac:	0c042c23          	sw	zero,216(s0)
   105b0:	744000ef          	jal	10cf4 <memset>
   105b4:	000207b7          	lui	a5,0x20
   105b8:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   105bc:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   105c0:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   105c4:	00800613          	li	a2,8
   105c8:	00000593          	li	a1,0
   105cc:	0f443423          	sd	s4,232(s0)
   105d0:	0f343823          	sd	s3,240(s0)
   105d4:	0f243c23          	sd	s2,248(s0)
   105d8:	10943023          	sd	s1,256(s0)
   105dc:	16f42823          	sw	a5,368(s0)
   105e0:	16043023          	sd	zero,352(s0)
   105e4:	16043423          	sd	zero,360(s0)
   105e8:	20042623          	sw	zero,524(s0)
   105ec:	16043c23          	sd	zero,376(s0)
   105f0:	18042023          	sw	zero,384(s0)
   105f4:	18042423          	sw	zero,392(s0)
   105f8:	0ee43023          	sd	a4,224(s0)
   105fc:	6f8000ef          	jal	10cf4 <memset>
   10600:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10604:	19443c23          	sd	s4,408(s0)
   10608:	1b343023          	sd	s3,416(s0)
   1060c:	1b243423          	sd	s2,424(s0)
   10610:	1a943823          	sd	s1,432(s0)
   10614:	02813083          	ld	ra,40(sp)
   10618:	18f43823          	sd	a5,400(s0)
   1061c:	02013403          	ld	s0,32(sp)
   10620:	01813483          	ld	s1,24(sp)
   10624:	01013903          	ld	s2,16(sp)
   10628:	00813983          	ld	s3,8(sp)
   1062c:	00013a03          	ld	s4,0(sp)
   10630:	03010113          	addi	sp,sp,48
   10634:	00008067          	ret

0000000000010638 <__sfp>:
   10638:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1063c:	fd010113          	addi	sp,sp,-48
   10640:	00913c23          	sd	s1,24(sp)
   10644:	02113423          	sd	ra,40(sp)
   10648:	02813023          	sd	s0,32(sp)
   1064c:	00050493          	mv	s1,a0
   10650:	10078063          	beqz	a5,10750 <__sfp+0x118>
   10654:	000136b7          	lui	a3,0x13
   10658:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   1065c:	0b000813          	li	a6,176
   10660:	0086a703          	lw	a4,8(a3)
   10664:	08e05463          	blez	a4,106ec <__sfp+0xb4>
   10668:	02071713          	slli	a4,a4,0x20
   1066c:	02075713          	srli	a4,a4,0x20
   10670:	03070733          	mul	a4,a4,a6
   10674:	0106b403          	ld	s0,16(a3)
   10678:	00e40733          	add	a4,s0,a4
   1067c:	00c0006f          	j	10688 <__sfp+0x50>
   10680:	0b040413          	addi	s0,s0,176
   10684:	06e40463          	beq	s0,a4,106ec <__sfp+0xb4>
   10688:	01041783          	lh	a5,16(s0)
   1068c:	fe079ae3          	bnez	a5,10680 <__sfp+0x48>
   10690:	ffff07b7          	lui	a5,0xffff0
   10694:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10698:	00f42823          	sw	a5,16(s0)
   1069c:	0a042623          	sw	zero,172(s0)
   106a0:	00043023          	sd	zero,0(s0)
   106a4:	00043423          	sd	zero,8(s0)
   106a8:	00043c23          	sd	zero,24(s0)
   106ac:	02042023          	sw	zero,32(s0)
   106b0:	02042423          	sw	zero,40(s0)
   106b4:	00800613          	li	a2,8
   106b8:	00000593          	li	a1,0
   106bc:	0a440513          	addi	a0,s0,164
   106c0:	634000ef          	jal	10cf4 <memset>
   106c4:	04043c23          	sd	zero,88(s0)
   106c8:	06042023          	sw	zero,96(s0)
   106cc:	06043c23          	sd	zero,120(s0)
   106d0:	08042023          	sw	zero,128(s0)
   106d4:	02813083          	ld	ra,40(sp)
   106d8:	00040513          	mv	a0,s0
   106dc:	02013403          	ld	s0,32(sp)
   106e0:	01813483          	ld	s1,24(sp)
   106e4:	03010113          	addi	sp,sp,48
   106e8:	00008067          	ret
   106ec:	0006b403          	ld	s0,0(a3)
   106f0:	00040663          	beqz	s0,106fc <__sfp+0xc4>
   106f4:	00040693          	mv	a3,s0
   106f8:	f69ff06f          	j	10660 <__sfp+0x28>
   106fc:	2d800593          	li	a1,728
   10700:	00048513          	mv	a0,s1
   10704:	00d13423          	sd	a3,8(sp)
   10708:	43d000ef          	jal	11344 <_malloc_r>
   1070c:	00813683          	ld	a3,8(sp)
   10710:	00050413          	mv	s0,a0
   10714:	04050263          	beqz	a0,10758 <__sfp+0x120>
   10718:	00400793          	li	a5,4
   1071c:	00f52423          	sw	a5,8(a0)
   10720:	01850513          	addi	a0,a0,24
   10724:	00043023          	sd	zero,0(s0)
   10728:	00a43823          	sd	a0,16(s0)
   1072c:	2c000613          	li	a2,704
   10730:	00000593          	li	a1,0
   10734:	00d13423          	sd	a3,8(sp)
   10738:	5bc000ef          	jal	10cf4 <memset>
   1073c:	00813683          	ld	a3,8(sp)
   10740:	0b000813          	li	a6,176
   10744:	0086b023          	sd	s0,0(a3)
   10748:	00040693          	mv	a3,s0
   1074c:	f15ff06f          	j	10660 <__sfp+0x28>
   10750:	da1ff0ef          	jal	104f0 <global_stdio_init.part.0>
   10754:	f01ff06f          	j	10654 <__sfp+0x1c>
   10758:	0006b023          	sd	zero,0(a3)
   1075c:	00c00793          	li	a5,12
   10760:	00f4a023          	sw	a5,0(s1)
   10764:	f71ff06f          	j	106d4 <__sfp+0x9c>

0000000000010768 <__sinit>:
   10768:	04853783          	ld	a5,72(a0)
   1076c:	00078463          	beqz	a5,10774 <__sinit+0xc>
   10770:	00008067          	ret
   10774:	000107b7          	lui	a5,0x10
   10778:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   1077c:	48478793          	addi	a5,a5,1156 # 10484 <cleanup_stdio>
   10780:	04f53423          	sd	a5,72(a0)
   10784:	fe0716e3          	bnez	a4,10770 <__sinit+0x8>
   10788:	d69ff06f          	j	104f0 <global_stdio_init.part.0>

000000000001078c <__sfp_lock_acquire>:
   1078c:	00008067          	ret

0000000000010790 <__sfp_lock_release>:
   10790:	00008067          	ret

0000000000010794 <__fp_lock_all>:
   10794:	00013637          	lui	a2,0x13
   10798:	000105b7          	lui	a1,0x10
   1079c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107a0:	46058593          	addi	a1,a1,1120 # 10460 <__fp_lock>
   107a4:	00000513          	li	a0,0
   107a8:	01c0006f          	j	107c4 <_fwalk_sglue>

00000000000107ac <__fp_unlock_all>:
   107ac:	00013637          	lui	a2,0x13
   107b0:	000105b7          	lui	a1,0x10
   107b4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107b8:	4e858593          	addi	a1,a1,1256 # 104e8 <__fp_unlock>
   107bc:	00000513          	li	a0,0
   107c0:	0040006f          	j	107c4 <_fwalk_sglue>

00000000000107c4 <_fwalk_sglue>:
   107c4:	fb010113          	addi	sp,sp,-80
   107c8:	03213823          	sd	s2,48(sp)
   107cc:	03313423          	sd	s3,40(sp)
   107d0:	03413023          	sd	s4,32(sp)
   107d4:	01513c23          	sd	s5,24(sp)
   107d8:	01613823          	sd	s6,16(sp)
   107dc:	01713423          	sd	s7,8(sp)
   107e0:	01813023          	sd	s8,0(sp)
   107e4:	04113423          	sd	ra,72(sp)
   107e8:	04813023          	sd	s0,64(sp)
   107ec:	02913c23          	sd	s1,56(sp)
   107f0:	00060993          	mv	s3,a2
   107f4:	00050a93          	mv	s5,a0
   107f8:	00058b13          	mv	s6,a1
   107fc:	00000913          	li	s2,0
   10800:	0b000b93          	li	s7,176
   10804:	00100c13          	li	s8,1
   10808:	fff00a13          	li	s4,-1
   1080c:	0089a483          	lw	s1,8(s3)
   10810:	04905263          	blez	s1,10854 <_fwalk_sglue+0x90>
   10814:	02049493          	slli	s1,s1,0x20
   10818:	0204d493          	srli	s1,s1,0x20
   1081c:	037484b3          	mul	s1,s1,s7
   10820:	0109b403          	ld	s0,16(s3)
   10824:	009404b3          	add	s1,s0,s1
   10828:	01045783          	lhu	a5,16(s0)
   1082c:	02fc7063          	bgeu	s8,a5,1084c <_fwalk_sglue+0x88>
   10830:	01241783          	lh	a5,18(s0)
   10834:	00040593          	mv	a1,s0
   10838:	000a8513          	mv	a0,s5
   1083c:	01478863          	beq	a5,s4,1084c <_fwalk_sglue+0x88>
   10840:	000b00e7          	jalr	s6
   10844:	01256933          	or	s2,a0,s2
   10848:	0009091b          	sext.w	s2,s2
   1084c:	0b040413          	addi	s0,s0,176
   10850:	fc941ce3          	bne	s0,s1,10828 <_fwalk_sglue+0x64>
   10854:	0009b983          	ld	s3,0(s3)
   10858:	fa099ae3          	bnez	s3,1080c <_fwalk_sglue+0x48>
   1085c:	04813083          	ld	ra,72(sp)
   10860:	04013403          	ld	s0,64(sp)
   10864:	03813483          	ld	s1,56(sp)
   10868:	02813983          	ld	s3,40(sp)
   1086c:	02013a03          	ld	s4,32(sp)
   10870:	01813a83          	ld	s5,24(sp)
   10874:	01013b03          	ld	s6,16(sp)
   10878:	00813b83          	ld	s7,8(sp)
   1087c:	00013c03          	ld	s8,0(sp)
   10880:	00090513          	mv	a0,s2
   10884:	03013903          	ld	s2,48(sp)
   10888:	05010113          	addi	sp,sp,80
   1088c:	00008067          	ret

0000000000010890 <__sread>:
   10890:	ff010113          	addi	sp,sp,-16
   10894:	00813023          	sd	s0,0(sp)
   10898:	00058413          	mv	s0,a1
   1089c:	01259583          	lh	a1,18(a1)
   108a0:	00113423          	sd	ra,8(sp)
   108a4:	2ec000ef          	jal	10b90 <_read_r>
   108a8:	02054063          	bltz	a0,108c8 <__sread+0x38>
   108ac:	09043783          	ld	a5,144(s0)
   108b0:	00813083          	ld	ra,8(sp)
   108b4:	00a787b3          	add	a5,a5,a0
   108b8:	08f43823          	sd	a5,144(s0)
   108bc:	00013403          	ld	s0,0(sp)
   108c0:	01010113          	addi	sp,sp,16
   108c4:	00008067          	ret
   108c8:	01045783          	lhu	a5,16(s0)
   108cc:	fffff737          	lui	a4,0xfffff
   108d0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   108d4:	00e7f7b3          	and	a5,a5,a4
   108d8:	00813083          	ld	ra,8(sp)
   108dc:	00f41823          	sh	a5,16(s0)
   108e0:	00013403          	ld	s0,0(sp)
   108e4:	01010113          	addi	sp,sp,16
   108e8:	00008067          	ret

00000000000108ec <__seofread>:
   108ec:	00000513          	li	a0,0
   108f0:	00008067          	ret

00000000000108f4 <__swrite>:
   108f4:	01059783          	lh	a5,16(a1)
   108f8:	fd010113          	addi	sp,sp,-48
   108fc:	00068313          	mv	t1,a3
   10900:	02113423          	sd	ra,40(sp)
   10904:	1007f693          	andi	a3,a5,256
   10908:	00058713          	mv	a4,a1
   1090c:	00060893          	mv	a7,a2
   10910:	00050813          	mv	a6,a0
   10914:	02069863          	bnez	a3,10944 <__swrite+0x50>
   10918:	fffff6b7          	lui	a3,0xfffff
   1091c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10920:	02813083          	ld	ra,40(sp)
   10924:	00d7f7b3          	and	a5,a5,a3
   10928:	01271583          	lh	a1,18(a4)
   1092c:	00f71823          	sh	a5,16(a4)
   10930:	00030693          	mv	a3,t1
   10934:	00088613          	mv	a2,a7
   10938:	00080513          	mv	a0,a6
   1093c:	03010113          	addi	sp,sp,48
   10940:	2b80006f          	j	10bf8 <_write_r>
   10944:	01259583          	lh	a1,18(a1)
   10948:	00c13823          	sd	a2,16(sp)
   1094c:	00200693          	li	a3,2
   10950:	00000613          	li	a2,0
   10954:	00613c23          	sd	t1,24(sp)
   10958:	00e13023          	sd	a4,0(sp)
   1095c:	00a13423          	sd	a0,8(sp)
   10960:	1c8000ef          	jal	10b28 <_lseek_r>
   10964:	00013703          	ld	a4,0(sp)
   10968:	01813303          	ld	t1,24(sp)
   1096c:	01013883          	ld	a7,16(sp)
   10970:	01071783          	lh	a5,16(a4)
   10974:	00813803          	ld	a6,8(sp)
   10978:	fa1ff06f          	j	10918 <__swrite+0x24>

000000000001097c <__sseek>:
   1097c:	ff010113          	addi	sp,sp,-16
   10980:	00813023          	sd	s0,0(sp)
   10984:	00058413          	mv	s0,a1
   10988:	01259583          	lh	a1,18(a1)
   1098c:	00113423          	sd	ra,8(sp)
   10990:	198000ef          	jal	10b28 <_lseek_r>
   10994:	fff00713          	li	a4,-1
   10998:	01041783          	lh	a5,16(s0)
   1099c:	02e50263          	beq	a0,a4,109c0 <__sseek+0x44>
   109a0:	00001737          	lui	a4,0x1
   109a4:	00e7e7b3          	or	a5,a5,a4
   109a8:	00813083          	ld	ra,8(sp)
   109ac:	08a43823          	sd	a0,144(s0)
   109b0:	00f41823          	sh	a5,16(s0)
   109b4:	00013403          	ld	s0,0(sp)
   109b8:	01010113          	addi	sp,sp,16
   109bc:	00008067          	ret
   109c0:	80050713          	addi	a4,a0,-2048
   109c4:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   109c8:	00e7f7b3          	and	a5,a5,a4
   109cc:	00813083          	ld	ra,8(sp)
   109d0:	00f41823          	sh	a5,16(s0)
   109d4:	00013403          	ld	s0,0(sp)
   109d8:	01010113          	addi	sp,sp,16
   109dc:	00008067          	ret

00000000000109e0 <__sclose>:
   109e0:	01259583          	lh	a1,18(a1)
   109e4:	0040006f          	j	109e8 <_close_r>

00000000000109e8 <_close_r>:
   109e8:	fe010113          	addi	sp,sp,-32
   109ec:	00813823          	sd	s0,16(sp)
   109f0:	00913423          	sd	s1,8(sp)
   109f4:	00050493          	mv	s1,a0
   109f8:	00058513          	mv	a0,a1
   109fc:	00113c23          	sd	ra,24(sp)
   10a00:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a04:	7e4010ef          	jal	121e8 <_close>
   10a08:	fff00793          	li	a5,-1
   10a0c:	00f50c63          	beq	a0,a5,10a24 <_close_r+0x3c>
   10a10:	01813083          	ld	ra,24(sp)
   10a14:	01013403          	ld	s0,16(sp)
   10a18:	00813483          	ld	s1,8(sp)
   10a1c:	02010113          	addi	sp,sp,32
   10a20:	00008067          	ret
   10a24:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a28:	fe0784e3          	beqz	a5,10a10 <_close_r+0x28>
   10a2c:	01813083          	ld	ra,24(sp)
   10a30:	01013403          	ld	s0,16(sp)
   10a34:	00f4a023          	sw	a5,0(s1)
   10a38:	00813483          	ld	s1,8(sp)
   10a3c:	02010113          	addi	sp,sp,32
   10a40:	00008067          	ret

0000000000010a44 <_reclaim_reent>:
   10a44:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10a48:	0ca78e63          	beq	a5,a0,10b24 <_reclaim_reent+0xe0>
   10a4c:	06853583          	ld	a1,104(a0)
   10a50:	fd010113          	addi	sp,sp,-48
   10a54:	00913c23          	sd	s1,24(sp)
   10a58:	02113423          	sd	ra,40(sp)
   10a5c:	02813023          	sd	s0,32(sp)
   10a60:	00050493          	mv	s1,a0
   10a64:	04058863          	beqz	a1,10ab4 <_reclaim_reent+0x70>
   10a68:	01213823          	sd	s2,16(sp)
   10a6c:	01313423          	sd	s3,8(sp)
   10a70:	00000913          	li	s2,0
   10a74:	20000993          	li	s3,512
   10a78:	012587b3          	add	a5,a1,s2
   10a7c:	0007b403          	ld	s0,0(a5)
   10a80:	00040e63          	beqz	s0,10a9c <_reclaim_reent+0x58>
   10a84:	00040593          	mv	a1,s0
   10a88:	00043403          	ld	s0,0(s0)
   10a8c:	00048513          	mv	a0,s1
   10a90:	5b0000ef          	jal	11040 <_free_r>
   10a94:	fe0418e3          	bnez	s0,10a84 <_reclaim_reent+0x40>
   10a98:	0684b583          	ld	a1,104(s1)
   10a9c:	00890913          	addi	s2,s2,8
   10aa0:	fd391ce3          	bne	s2,s3,10a78 <_reclaim_reent+0x34>
   10aa4:	00048513          	mv	a0,s1
   10aa8:	598000ef          	jal	11040 <_free_r>
   10aac:	01013903          	ld	s2,16(sp)
   10ab0:	00813983          	ld	s3,8(sp)
   10ab4:	0504b583          	ld	a1,80(s1)
   10ab8:	00058663          	beqz	a1,10ac4 <_reclaim_reent+0x80>
   10abc:	00048513          	mv	a0,s1
   10ac0:	580000ef          	jal	11040 <_free_r>
   10ac4:	0604b403          	ld	s0,96(s1)
   10ac8:	00040c63          	beqz	s0,10ae0 <_reclaim_reent+0x9c>
   10acc:	00040593          	mv	a1,s0
   10ad0:	00043403          	ld	s0,0(s0)
   10ad4:	00048513          	mv	a0,s1
   10ad8:	568000ef          	jal	11040 <_free_r>
   10adc:	fe0418e3          	bnez	s0,10acc <_reclaim_reent+0x88>
   10ae0:	0784b583          	ld	a1,120(s1)
   10ae4:	00058663          	beqz	a1,10af0 <_reclaim_reent+0xac>
   10ae8:	00048513          	mv	a0,s1
   10aec:	554000ef          	jal	11040 <_free_r>
   10af0:	0484b783          	ld	a5,72(s1)
   10af4:	00078e63          	beqz	a5,10b10 <_reclaim_reent+0xcc>
   10af8:	02013403          	ld	s0,32(sp)
   10afc:	02813083          	ld	ra,40(sp)
   10b00:	00048513          	mv	a0,s1
   10b04:	01813483          	ld	s1,24(sp)
   10b08:	03010113          	addi	sp,sp,48
   10b0c:	00078067          	jr	a5
   10b10:	02813083          	ld	ra,40(sp)
   10b14:	02013403          	ld	s0,32(sp)
   10b18:	01813483          	ld	s1,24(sp)
   10b1c:	03010113          	addi	sp,sp,48
   10b20:	00008067          	ret
   10b24:	00008067          	ret

0000000000010b28 <_lseek_r>:
   10b28:	fe010113          	addi	sp,sp,-32
   10b2c:	00058793          	mv	a5,a1
   10b30:	00813823          	sd	s0,16(sp)
   10b34:	00913423          	sd	s1,8(sp)
   10b38:	00060593          	mv	a1,a2
   10b3c:	00050493          	mv	s1,a0
   10b40:	00068613          	mv	a2,a3
   10b44:	00078513          	mv	a0,a5
   10b48:	00113c23          	sd	ra,24(sp)
   10b4c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b50:	708010ef          	jal	12258 <_lseek>
   10b54:	fff00793          	li	a5,-1
   10b58:	00f50c63          	beq	a0,a5,10b70 <_lseek_r+0x48>
   10b5c:	01813083          	ld	ra,24(sp)
   10b60:	01013403          	ld	s0,16(sp)
   10b64:	00813483          	ld	s1,8(sp)
   10b68:	02010113          	addi	sp,sp,32
   10b6c:	00008067          	ret
   10b70:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b74:	fe0784e3          	beqz	a5,10b5c <_lseek_r+0x34>
   10b78:	01813083          	ld	ra,24(sp)
   10b7c:	01013403          	ld	s0,16(sp)
   10b80:	00f4a023          	sw	a5,0(s1)
   10b84:	00813483          	ld	s1,8(sp)
   10b88:	02010113          	addi	sp,sp,32
   10b8c:	00008067          	ret

0000000000010b90 <_read_r>:
   10b90:	fe010113          	addi	sp,sp,-32
   10b94:	00058793          	mv	a5,a1
   10b98:	00813823          	sd	s0,16(sp)
   10b9c:	00913423          	sd	s1,8(sp)
   10ba0:	00060593          	mv	a1,a2
   10ba4:	00050493          	mv	s1,a0
   10ba8:	00068613          	mv	a2,a3
   10bac:	00078513          	mv	a0,a5
   10bb0:	00113c23          	sd	ra,24(sp)
   10bb4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bb8:	6e0010ef          	jal	12298 <_read>
   10bbc:	fff00793          	li	a5,-1
   10bc0:	00f50c63          	beq	a0,a5,10bd8 <_read_r+0x48>
   10bc4:	01813083          	ld	ra,24(sp)
   10bc8:	01013403          	ld	s0,16(sp)
   10bcc:	00813483          	ld	s1,8(sp)
   10bd0:	02010113          	addi	sp,sp,32
   10bd4:	00008067          	ret
   10bd8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bdc:	fe0784e3          	beqz	a5,10bc4 <_read_r+0x34>
   10be0:	01813083          	ld	ra,24(sp)
   10be4:	01013403          	ld	s0,16(sp)
   10be8:	00f4a023          	sw	a5,0(s1)
   10bec:	00813483          	ld	s1,8(sp)
   10bf0:	02010113          	addi	sp,sp,32
   10bf4:	00008067          	ret

0000000000010bf8 <_write_r>:
   10bf8:	fe010113          	addi	sp,sp,-32
   10bfc:	00058793          	mv	a5,a1
   10c00:	00813823          	sd	s0,16(sp)
   10c04:	00913423          	sd	s1,8(sp)
   10c08:	00060593          	mv	a1,a2
   10c0c:	00050493          	mv	s1,a0
   10c10:	00068613          	mv	a2,a3
   10c14:	00078513          	mv	a0,a5
   10c18:	00113c23          	sd	ra,24(sp)
   10c1c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c20:	730010ef          	jal	12350 <_write>
   10c24:	fff00793          	li	a5,-1
   10c28:	00f50c63          	beq	a0,a5,10c40 <_write_r+0x48>
   10c2c:	01813083          	ld	ra,24(sp)
   10c30:	01013403          	ld	s0,16(sp)
   10c34:	00813483          	ld	s1,8(sp)
   10c38:	02010113          	addi	sp,sp,32
   10c3c:	00008067          	ret
   10c40:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c44:	fe0784e3          	beqz	a5,10c2c <_write_r+0x34>
   10c48:	01813083          	ld	ra,24(sp)
   10c4c:	01013403          	ld	s0,16(sp)
   10c50:	00f4a023          	sw	a5,0(s1)
   10c54:	00813483          	ld	s1,8(sp)
   10c58:	02010113          	addi	sp,sp,32
   10c5c:	00008067          	ret

0000000000010c60 <__libc_init_array>:
   10c60:	fe010113          	addi	sp,sp,-32
   10c64:	00813823          	sd	s0,16(sp)
   10c68:	01213023          	sd	s2,0(sp)
   10c6c:	00013437          	lui	s0,0x13
   10c70:	00013937          	lui	s2,0x13
   10c74:	00113c23          	sd	ra,24(sp)
   10c78:	00913423          	sd	s1,8(sp)
   10c7c:	00090913          	mv	s2,s2
   10c80:	00040413          	mv	s0,s0
   10c84:	02890263          	beq	s2,s0,10ca8 <__libc_init_array+0x48>
   10c88:	40890933          	sub	s2,s2,s0
   10c8c:	40395913          	srai	s2,s2,0x3
   10c90:	00000493          	li	s1,0
   10c94:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c98:	00148493          	addi	s1,s1,1
   10c9c:	00840413          	addi	s0,s0,8
   10ca0:	000780e7          	jalr	a5
   10ca4:	ff24e8e3          	bltu	s1,s2,10c94 <__libc_init_array+0x34>
   10ca8:	00013937          	lui	s2,0x13
   10cac:	00013437          	lui	s0,0x13
   10cb0:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10cb4:	00040413          	mv	s0,s0
   10cb8:	02890263          	beq	s2,s0,10cdc <__libc_init_array+0x7c>
   10cbc:	40890933          	sub	s2,s2,s0
   10cc0:	40395913          	srai	s2,s2,0x3
   10cc4:	00000493          	li	s1,0
   10cc8:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10ccc:	00148493          	addi	s1,s1,1
   10cd0:	00840413          	addi	s0,s0,8
   10cd4:	000780e7          	jalr	a5
   10cd8:	ff24e8e3          	bltu	s1,s2,10cc8 <__libc_init_array+0x68>
   10cdc:	01813083          	ld	ra,24(sp)
   10ce0:	01013403          	ld	s0,16(sp)
   10ce4:	00813483          	ld	s1,8(sp)
   10ce8:	00013903          	ld	s2,0(sp)
   10cec:	02010113          	addi	sp,sp,32
   10cf0:	00008067          	ret

0000000000010cf4 <memset>:
   10cf4:	00f00313          	li	t1,15
   10cf8:	00050713          	mv	a4,a0
   10cfc:	02c37a63          	bgeu	t1,a2,10d30 <memset+0x3c>
   10d00:	00f77793          	andi	a5,a4,15
   10d04:	0a079063          	bnez	a5,10da4 <memset+0xb0>
   10d08:	06059e63          	bnez	a1,10d84 <memset+0x90>
   10d0c:	ff067693          	andi	a3,a2,-16
   10d10:	00f67613          	andi	a2,a2,15
   10d14:	00e686b3          	add	a3,a3,a4
   10d18:	00b73023          	sd	a1,0(a4)
   10d1c:	00b73423          	sd	a1,8(a4)
   10d20:	01070713          	addi	a4,a4,16
   10d24:	fed76ae3          	bltu	a4,a3,10d18 <memset+0x24>
   10d28:	00061463          	bnez	a2,10d30 <memset+0x3c>
   10d2c:	00008067          	ret
   10d30:	40c306b3          	sub	a3,t1,a2
   10d34:	00269693          	slli	a3,a3,0x2
   10d38:	00000297          	auipc	t0,0x0
   10d3c:	005686b3          	add	a3,a3,t0
   10d40:	00c68067          	jr	12(a3)
   10d44:	00b70723          	sb	a1,14(a4)
   10d48:	00b706a3          	sb	a1,13(a4)
   10d4c:	00b70623          	sb	a1,12(a4)
   10d50:	00b705a3          	sb	a1,11(a4)
   10d54:	00b70523          	sb	a1,10(a4)
   10d58:	00b704a3          	sb	a1,9(a4)
   10d5c:	00b70423          	sb	a1,8(a4)
   10d60:	00b703a3          	sb	a1,7(a4)
   10d64:	00b70323          	sb	a1,6(a4)
   10d68:	00b702a3          	sb	a1,5(a4)
   10d6c:	00b70223          	sb	a1,4(a4)
   10d70:	00b701a3          	sb	a1,3(a4)
   10d74:	00b70123          	sb	a1,2(a4)
   10d78:	00b700a3          	sb	a1,1(a4)
   10d7c:	00b70023          	sb	a1,0(a4)
   10d80:	00008067          	ret
   10d84:	0ff5f593          	zext.b	a1,a1
   10d88:	00859693          	slli	a3,a1,0x8
   10d8c:	00d5e5b3          	or	a1,a1,a3
   10d90:	01059693          	slli	a3,a1,0x10
   10d94:	00d5e5b3          	or	a1,a1,a3
   10d98:	02059693          	slli	a3,a1,0x20
   10d9c:	00d5e5b3          	or	a1,a1,a3
   10da0:	f6dff06f          	j	10d0c <memset+0x18>
   10da4:	00279693          	slli	a3,a5,0x2
   10da8:	00000297          	auipc	t0,0x0
   10dac:	005686b3          	add	a3,a3,t0
   10db0:	00008293          	mv	t0,ra
   10db4:	f98680e7          	jalr	-104(a3)
   10db8:	00028093          	mv	ra,t0
   10dbc:	ff078793          	addi	a5,a5,-16
   10dc0:	40f70733          	sub	a4,a4,a5
   10dc4:	00f60633          	add	a2,a2,a5
   10dc8:	f6c374e3          	bgeu	t1,a2,10d30 <memset+0x3c>
   10dcc:	f3dff06f          	j	10d08 <memset+0x14>

0000000000010dd0 <__call_exitprocs>:
   10dd0:	fb010113          	addi	sp,sp,-80
   10dd4:	03413023          	sd	s4,32(sp)
   10dd8:	03213823          	sd	s2,48(sp)
   10ddc:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10de0:	04113423          	sd	ra,72(sp)
   10de4:	06090e63          	beqz	s2,10e60 <__call_exitprocs+0x90>
   10de8:	03313423          	sd	s3,40(sp)
   10dec:	01513c23          	sd	s5,24(sp)
   10df0:	01613823          	sd	s6,16(sp)
   10df4:	01713423          	sd	s7,8(sp)
   10df8:	04813023          	sd	s0,64(sp)
   10dfc:	02913c23          	sd	s1,56(sp)
   10e00:	01813023          	sd	s8,0(sp)
   10e04:	00050b13          	mv	s6,a0
   10e08:	00058b93          	mv	s7,a1
   10e0c:	fff00993          	li	s3,-1
   10e10:	00100a93          	li	s5,1
   10e14:	00892403          	lw	s0,8(s2)
   10e18:	fff4041b          	addiw	s0,s0,-1
   10e1c:	02044463          	bltz	s0,10e44 <__call_exitprocs+0x74>
   10e20:	01090493          	addi	s1,s2,16
   10e24:	00341793          	slli	a5,s0,0x3
   10e28:	00f484b3          	add	s1,s1,a5
   10e2c:	040b8463          	beqz	s7,10e74 <__call_exitprocs+0xa4>
   10e30:	2004b783          	ld	a5,512(s1)
   10e34:	05778063          	beq	a5,s7,10e74 <__call_exitprocs+0xa4>
   10e38:	fff4041b          	addiw	s0,s0,-1
   10e3c:	ff848493          	addi	s1,s1,-8
   10e40:	ff3418e3          	bne	s0,s3,10e30 <__call_exitprocs+0x60>
   10e44:	04013403          	ld	s0,64(sp)
   10e48:	03813483          	ld	s1,56(sp)
   10e4c:	02813983          	ld	s3,40(sp)
   10e50:	01813a83          	ld	s5,24(sp)
   10e54:	01013b03          	ld	s6,16(sp)
   10e58:	00813b83          	ld	s7,8(sp)
   10e5c:	00013c03          	ld	s8,0(sp)
   10e60:	04813083          	ld	ra,72(sp)
   10e64:	03013903          	ld	s2,48(sp)
   10e68:	02013a03          	ld	s4,32(sp)
   10e6c:	05010113          	addi	sp,sp,80
   10e70:	00008067          	ret
   10e74:	00892783          	lw	a5,8(s2)
   10e78:	0004b683          	ld	a3,0(s1)
   10e7c:	fff7879b          	addiw	a5,a5,-1
   10e80:	06878a63          	beq	a5,s0,10ef4 <__call_exitprocs+0x124>
   10e84:	0004b023          	sd	zero,0(s1)
   10e88:	02068663          	beqz	a3,10eb4 <__call_exitprocs+0xe4>
   10e8c:	31092783          	lw	a5,784(s2)
   10e90:	008a973b          	sllw	a4,s5,s0
   10e94:	00892c03          	lw	s8,8(s2)
   10e98:	00e7f7b3          	and	a5,a5,a4
   10e9c:	02079463          	bnez	a5,10ec4 <__call_exitprocs+0xf4>
   10ea0:	000680e7          	jalr	a3
   10ea4:	00892703          	lw	a4,8(s2)
   10ea8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10eac:	03871e63          	bne	a4,s8,10ee8 <__call_exitprocs+0x118>
   10eb0:	03279c63          	bne	a5,s2,10ee8 <__call_exitprocs+0x118>
   10eb4:	fff4041b          	addiw	s0,s0,-1
   10eb8:	ff848493          	addi	s1,s1,-8
   10ebc:	f73418e3          	bne	s0,s3,10e2c <__call_exitprocs+0x5c>
   10ec0:	f85ff06f          	j	10e44 <__call_exitprocs+0x74>
   10ec4:	31492783          	lw	a5,788(s2)
   10ec8:	1004b583          	ld	a1,256(s1)
   10ecc:	00f77733          	and	a4,a4,a5
   10ed0:	02071663          	bnez	a4,10efc <__call_exitprocs+0x12c>
   10ed4:	000b0513          	mv	a0,s6
   10ed8:	000680e7          	jalr	a3
   10edc:	00892703          	lw	a4,8(s2)
   10ee0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ee4:	fd8706e3          	beq	a4,s8,10eb0 <__call_exitprocs+0xe0>
   10ee8:	f4078ee3          	beqz	a5,10e44 <__call_exitprocs+0x74>
   10eec:	00078913          	mv	s2,a5
   10ef0:	f25ff06f          	j	10e14 <__call_exitprocs+0x44>
   10ef4:	00892423          	sw	s0,8(s2)
   10ef8:	f91ff06f          	j	10e88 <__call_exitprocs+0xb8>
   10efc:	00058513          	mv	a0,a1
   10f00:	000680e7          	jalr	a3
   10f04:	fa1ff06f          	j	10ea4 <__call_exitprocs+0xd4>

0000000000010f08 <atexit>:
   10f08:	00050593          	mv	a1,a0
   10f0c:	00000693          	li	a3,0
   10f10:	00000613          	li	a2,0
   10f14:	00000513          	li	a0,0
   10f18:	2340106f          	j	1214c <__register_exitproc>

0000000000010f1c <_malloc_trim_r>:
   10f1c:	fd010113          	addi	sp,sp,-48
   10f20:	01213823          	sd	s2,16(sp)
   10f24:	00013937          	lui	s2,0x13
   10f28:	02813023          	sd	s0,32(sp)
   10f2c:	00913c23          	sd	s1,24(sp)
   10f30:	01313423          	sd	s3,8(sp)
   10f34:	00058413          	mv	s0,a1
   10f38:	02113423          	sd	ra,40(sp)
   10f3c:	00050993          	mv	s3,a0
   10f40:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10f44:	4e5000ef          	jal	11c28 <__malloc_lock>
   10f48:	01093783          	ld	a5,16(s2)
   10f4c:	00001737          	lui	a4,0x1
   10f50:	0087b483          	ld	s1,8(a5)
   10f54:	ffc4f493          	andi	s1,s1,-4
   10f58:	7ff48793          	addi	a5,s1,2047
   10f5c:	7e078793          	addi	a5,a5,2016
   10f60:	40878433          	sub	s0,a5,s0
   10f64:	00c45413          	srli	s0,s0,0xc
   10f68:	fff40413          	addi	s0,s0,-1
   10f6c:	00c41413          	slli	s0,s0,0xc
   10f70:	00e44e63          	blt	s0,a4,10f8c <_malloc_trim_r+0x70>
   10f74:	00000593          	li	a1,0
   10f78:	00098513          	mv	a0,s3
   10f7c:	118010ef          	jal	12094 <_sbrk_r>
   10f80:	01093783          	ld	a5,16(s2)
   10f84:	009787b3          	add	a5,a5,s1
   10f88:	02f50663          	beq	a0,a5,10fb4 <_malloc_trim_r+0x98>
   10f8c:	00098513          	mv	a0,s3
   10f90:	49d000ef          	jal	11c2c <__malloc_unlock>
   10f94:	02813083          	ld	ra,40(sp)
   10f98:	02013403          	ld	s0,32(sp)
   10f9c:	01813483          	ld	s1,24(sp)
   10fa0:	01013903          	ld	s2,16(sp)
   10fa4:	00813983          	ld	s3,8(sp)
   10fa8:	00000513          	li	a0,0
   10fac:	03010113          	addi	sp,sp,48
   10fb0:	00008067          	ret
   10fb4:	408005b3          	neg	a1,s0
   10fb8:	00098513          	mv	a0,s3
   10fbc:	0d8010ef          	jal	12094 <_sbrk_r>
   10fc0:	fff00793          	li	a5,-1
   10fc4:	04f50463          	beq	a0,a5,1100c <_malloc_trim_r+0xf0>
   10fc8:	01093683          	ld	a3,16(s2)
   10fcc:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10fd0:	408484b3          	sub	s1,s1,s0
   10fd4:	0014e493          	ori	s1,s1,1
   10fd8:	00098513          	mv	a0,s3
   10fdc:	408787bb          	subw	a5,a5,s0
   10fe0:	0096b423          	sd	s1,8(a3)
   10fe4:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10fe8:	445000ef          	jal	11c2c <__malloc_unlock>
   10fec:	02813083          	ld	ra,40(sp)
   10ff0:	02013403          	ld	s0,32(sp)
   10ff4:	01813483          	ld	s1,24(sp)
   10ff8:	01013903          	ld	s2,16(sp)
   10ffc:	00813983          	ld	s3,8(sp)
   11000:	00100513          	li	a0,1
   11004:	03010113          	addi	sp,sp,48
   11008:	00008067          	ret
   1100c:	00000593          	li	a1,0
   11010:	00098513          	mv	a0,s3
   11014:	080010ef          	jal	12094 <_sbrk_r>
   11018:	01093703          	ld	a4,16(s2)
   1101c:	01f00693          	li	a3,31
   11020:	40e507b3          	sub	a5,a0,a4
   11024:	f6f6d4e3          	bge	a3,a5,10f8c <_malloc_trim_r+0x70>
   11028:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1102c:	0017e793          	ori	a5,a5,1
   11030:	40c50533          	sub	a0,a0,a2
   11034:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11038:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1103c:	f51ff06f          	j	10f8c <_malloc_trim_r+0x70>

0000000000011040 <_free_r>:
   11040:	12058863          	beqz	a1,11170 <_free_r+0x130>
   11044:	fe010113          	addi	sp,sp,-32
   11048:	00813823          	sd	s0,16(sp)
   1104c:	00b13423          	sd	a1,8(sp)
   11050:	00050413          	mv	s0,a0
   11054:	00113c23          	sd	ra,24(sp)
   11058:	3d1000ef          	jal	11c28 <__malloc_lock>
   1105c:	00813583          	ld	a1,8(sp)
   11060:	00013837          	lui	a6,0x13
   11064:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11068:	ff85b503          	ld	a0,-8(a1)
   1106c:	ff058713          	addi	a4,a1,-16
   11070:	01083883          	ld	a7,16(a6)
   11074:	ffe57793          	andi	a5,a0,-2
   11078:	00f70633          	add	a2,a4,a5
   1107c:	00863683          	ld	a3,8(a2)
   11080:	00157313          	andi	t1,a0,1
   11084:	ffc6f693          	andi	a3,a3,-4
   11088:	18c88e63          	beq	a7,a2,11224 <_free_r+0x1e4>
   1108c:	00d63423          	sd	a3,8(a2)
   11090:	00d608b3          	add	a7,a2,a3
   11094:	0088b883          	ld	a7,8(a7)
   11098:	0018f893          	andi	a7,a7,1
   1109c:	08031e63          	bnez	t1,11138 <_free_r+0xf8>
   110a0:	ff05b303          	ld	t1,-16(a1)
   110a4:	000135b7          	lui	a1,0x13
   110a8:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   110ac:	40670733          	sub	a4,a4,t1
   110b0:	01073503          	ld	a0,16(a4)
   110b4:	006787b3          	add	a5,a5,t1
   110b8:	14b50063          	beq	a0,a1,111f8 <_free_r+0x1b8>
   110bc:	01873303          	ld	t1,24(a4)
   110c0:	00653c23          	sd	t1,24(a0)
   110c4:	00a33823          	sd	a0,16(t1) # 10220 <do_rem+0x4>
   110c8:	1a088263          	beqz	a7,1126c <_free_r+0x22c>
   110cc:	0017e693          	ori	a3,a5,1
   110d0:	00d73423          	sd	a3,8(a4)
   110d4:	00f63023          	sd	a5,0(a2)
   110d8:	1ff00693          	li	a3,511
   110dc:	0af6e663          	bltu	a3,a5,11188 <_free_r+0x148>
   110e0:	0037d793          	srli	a5,a5,0x3
   110e4:	00179693          	slli	a3,a5,0x1
   110e8:	0026869b          	addiw	a3,a3,2
   110ec:	00369693          	slli	a3,a3,0x3
   110f0:	00883503          	ld	a0,8(a6)
   110f4:	00d806b3          	add	a3,a6,a3
   110f8:	0006b583          	ld	a1,0(a3)
   110fc:	4027d61b          	sraiw	a2,a5,0x2
   11100:	00100793          	li	a5,1
   11104:	00c797b3          	sll	a5,a5,a2
   11108:	00a7e7b3          	or	a5,a5,a0
   1110c:	ff068613          	addi	a2,a3,-16
   11110:	00b73823          	sd	a1,16(a4)
   11114:	00c73c23          	sd	a2,24(a4)
   11118:	00f83423          	sd	a5,8(a6)
   1111c:	00e6b023          	sd	a4,0(a3)
   11120:	00e5bc23          	sd	a4,24(a1)
   11124:	00040513          	mv	a0,s0
   11128:	01013403          	ld	s0,16(sp)
   1112c:	01813083          	ld	ra,24(sp)
   11130:	02010113          	addi	sp,sp,32
   11134:	2f90006f          	j	11c2c <__malloc_unlock>
   11138:	02089e63          	bnez	a7,11174 <_free_r+0x134>
   1113c:	000135b7          	lui	a1,0x13
   11140:	00d787b3          	add	a5,a5,a3
   11144:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11148:	01063683          	ld	a3,16(a2)
   1114c:	0017e893          	ori	a7,a5,1
   11150:	00f70533          	add	a0,a4,a5
   11154:	16b68663          	beq	a3,a1,112c0 <_free_r+0x280>
   11158:	01863603          	ld	a2,24(a2)
   1115c:	00c6bc23          	sd	a2,24(a3)
   11160:	00d63823          	sd	a3,16(a2)
   11164:	01173423          	sd	a7,8(a4)
   11168:	00f53023          	sd	a5,0(a0)
   1116c:	f6dff06f          	j	110d8 <_free_r+0x98>
   11170:	00008067          	ret
   11174:	00156513          	ori	a0,a0,1
   11178:	fea5bc23          	sd	a0,-8(a1)
   1117c:	00f63023          	sd	a5,0(a2)
   11180:	1ff00693          	li	a3,511
   11184:	f4f6fee3          	bgeu	a3,a5,110e0 <_free_r+0xa0>
   11188:	0097d693          	srli	a3,a5,0x9
   1118c:	00400613          	li	a2,4
   11190:	0ed66263          	bltu	a2,a3,11274 <_free_r+0x234>
   11194:	0067d693          	srli	a3,a5,0x6
   11198:	00169593          	slli	a1,a3,0x1
   1119c:	0725859b          	addiw	a1,a1,114
   111a0:	00359593          	slli	a1,a1,0x3
   111a4:	0386861b          	addiw	a2,a3,56
   111a8:	00b805b3          	add	a1,a6,a1
   111ac:	0005b683          	ld	a3,0(a1)
   111b0:	ff058593          	addi	a1,a1,-16
   111b4:	00d59863          	bne	a1,a3,111c4 <_free_r+0x184>
   111b8:	1240006f          	j	112dc <_free_r+0x29c>
   111bc:	0106b683          	ld	a3,16(a3)
   111c0:	00d58863          	beq	a1,a3,111d0 <_free_r+0x190>
   111c4:	0086b603          	ld	a2,8(a3)
   111c8:	ffc67613          	andi	a2,a2,-4
   111cc:	fec7e8e3          	bltu	a5,a2,111bc <_free_r+0x17c>
   111d0:	0186b583          	ld	a1,24(a3)
   111d4:	00b73c23          	sd	a1,24(a4)
   111d8:	00d73823          	sd	a3,16(a4)
   111dc:	00040513          	mv	a0,s0
   111e0:	01013403          	ld	s0,16(sp)
   111e4:	01813083          	ld	ra,24(sp)
   111e8:	00e5b823          	sd	a4,16(a1)
   111ec:	00e6bc23          	sd	a4,24(a3)
   111f0:	02010113          	addi	sp,sp,32
   111f4:	2390006f          	j	11c2c <__malloc_unlock>
   111f8:	0a089263          	bnez	a7,1129c <_free_r+0x25c>
   111fc:	01863583          	ld	a1,24(a2)
   11200:	01063603          	ld	a2,16(a2)
   11204:	00f686b3          	add	a3,a3,a5
   11208:	0016e793          	ori	a5,a3,1
   1120c:	00b63c23          	sd	a1,24(a2)
   11210:	00c5b823          	sd	a2,16(a1)
   11214:	00f73423          	sd	a5,8(a4)
   11218:	00d70733          	add	a4,a4,a3
   1121c:	00d73023          	sd	a3,0(a4)
   11220:	f05ff06f          	j	11124 <_free_r+0xe4>
   11224:	00d786b3          	add	a3,a5,a3
   11228:	02031063          	bnez	t1,11248 <_free_r+0x208>
   1122c:	ff05b783          	ld	a5,-16(a1)
   11230:	40f70733          	sub	a4,a4,a5
   11234:	01073603          	ld	a2,16(a4)
   11238:	00f686b3          	add	a3,a3,a5
   1123c:	01873783          	ld	a5,24(a4)
   11240:	00f63c23          	sd	a5,24(a2)
   11244:	00c7b823          	sd	a2,16(a5)
   11248:	0016e613          	ori	a2,a3,1
   1124c:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11250:	00c73423          	sd	a2,8(a4)
   11254:	00e83823          	sd	a4,16(a6)
   11258:	ecf6e6e3          	bltu	a3,a5,11124 <_free_r+0xe4>
   1125c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11260:	00040513          	mv	a0,s0
   11264:	cb9ff0ef          	jal	10f1c <_malloc_trim_r>
   11268:	ebdff06f          	j	11124 <_free_r+0xe4>
   1126c:	00d787b3          	add	a5,a5,a3
   11270:	ed9ff06f          	j	11148 <_free_r+0x108>
   11274:	01400613          	li	a2,20
   11278:	02d67a63          	bgeu	a2,a3,112ac <_free_r+0x26c>
   1127c:	05400613          	li	a2,84
   11280:	06d66c63          	bltu	a2,a3,112f8 <_free_r+0x2b8>
   11284:	00c7d693          	srli	a3,a5,0xc
   11288:	00169593          	slli	a1,a3,0x1
   1128c:	0de5859b          	addiw	a1,a1,222
   11290:	00359593          	slli	a1,a1,0x3
   11294:	06e6861b          	addiw	a2,a3,110
   11298:	f11ff06f          	j	111a8 <_free_r+0x168>
   1129c:	0017e693          	ori	a3,a5,1
   112a0:	00d73423          	sd	a3,8(a4)
   112a4:	00f63023          	sd	a5,0(a2)
   112a8:	e7dff06f          	j	11124 <_free_r+0xe4>
   112ac:	00169593          	slli	a1,a3,0x1
   112b0:	0b85859b          	addiw	a1,a1,184
   112b4:	00359593          	slli	a1,a1,0x3
   112b8:	05b6861b          	addiw	a2,a3,91
   112bc:	eedff06f          	j	111a8 <_free_r+0x168>
   112c0:	02e83423          	sd	a4,40(a6)
   112c4:	02e83023          	sd	a4,32(a6)
   112c8:	00b73c23          	sd	a1,24(a4)
   112cc:	00b73823          	sd	a1,16(a4)
   112d0:	01173423          	sd	a7,8(a4)
   112d4:	00f53023          	sd	a5,0(a0)
   112d8:	e4dff06f          	j	11124 <_free_r+0xe4>
   112dc:	00883503          	ld	a0,8(a6)
   112e0:	4026561b          	sraiw	a2,a2,0x2
   112e4:	00100793          	li	a5,1
   112e8:	00c797b3          	sll	a5,a5,a2
   112ec:	00a7e7b3          	or	a5,a5,a0
   112f0:	00f83423          	sd	a5,8(a6)
   112f4:	ee1ff06f          	j	111d4 <_free_r+0x194>
   112f8:	15400613          	li	a2,340
   112fc:	00d66e63          	bltu	a2,a3,11318 <_free_r+0x2d8>
   11300:	00f7d693          	srli	a3,a5,0xf
   11304:	00169593          	slli	a1,a3,0x1
   11308:	0f05859b          	addiw	a1,a1,240
   1130c:	00359593          	slli	a1,a1,0x3
   11310:	0776861b          	addiw	a2,a3,119
   11314:	e95ff06f          	j	111a8 <_free_r+0x168>
   11318:	55400613          	li	a2,1364
   1131c:	00d66e63          	bltu	a2,a3,11338 <_free_r+0x2f8>
   11320:	0127d693          	srli	a3,a5,0x12
   11324:	00169593          	slli	a1,a3,0x1
   11328:	0fa5859b          	addiw	a1,a1,250
   1132c:	00359593          	slli	a1,a1,0x3
   11330:	07c6861b          	addiw	a2,a3,124
   11334:	e75ff06f          	j	111a8 <_free_r+0x168>
   11338:	7f000593          	li	a1,2032
   1133c:	07e00613          	li	a2,126
   11340:	e69ff06f          	j	111a8 <_free_r+0x168>

0000000000011344 <_malloc_r>:
   11344:	fa010113          	addi	sp,sp,-96
   11348:	04813823          	sd	s0,80(sp)
   1134c:	04113c23          	sd	ra,88(sp)
   11350:	01758713          	addi	a4,a1,23
   11354:	02e00793          	li	a5,46
   11358:	00050413          	mv	s0,a0
   1135c:	08e7ee63          	bltu	a5,a4,113f8 <_malloc_r+0xb4>
   11360:	02000713          	li	a4,32
   11364:	06b76c63          	bltu	a4,a1,113dc <_malloc_r+0x98>
   11368:	0c1000ef          	jal	11c28 <__malloc_lock>
   1136c:	02000713          	li	a4,32
   11370:	05000693          	li	a3,80
   11374:	00400893          	li	a7,4
   11378:	00013837          	lui	a6,0x13
   1137c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11380:	00d806b3          	add	a3,a6,a3
   11384:	0086b783          	ld	a5,8(a3)
   11388:	ff068613          	addi	a2,a3,-16
   1138c:	48c78063          	beq	a5,a2,1180c <_malloc_r+0x4c8>
   11390:	0087b703          	ld	a4,8(a5)
   11394:	0187b603          	ld	a2,24(a5)
   11398:	0107b583          	ld	a1,16(a5)
   1139c:	ffc77713          	andi	a4,a4,-4
   113a0:	00e78733          	add	a4,a5,a4
   113a4:	00873683          	ld	a3,8(a4)
   113a8:	00c5bc23          	sd	a2,24(a1)
   113ac:	00b63823          	sd	a1,16(a2)
   113b0:	0016e693          	ori	a3,a3,1
   113b4:	00040513          	mv	a0,s0
   113b8:	00d73423          	sd	a3,8(a4)
   113bc:	00f13423          	sd	a5,8(sp)
   113c0:	06d000ef          	jal	11c2c <__malloc_unlock>
   113c4:	00813783          	ld	a5,8(sp)
   113c8:	05813083          	ld	ra,88(sp)
   113cc:	05013403          	ld	s0,80(sp)
   113d0:	01078513          	addi	a0,a5,16
   113d4:	06010113          	addi	sp,sp,96
   113d8:	00008067          	ret
   113dc:	00c00793          	li	a5,12
   113e0:	00f42023          	sw	a5,0(s0)
   113e4:	00000513          	li	a0,0
   113e8:	05813083          	ld	ra,88(sp)
   113ec:	05013403          	ld	s0,80(sp)
   113f0:	06010113          	addi	sp,sp,96
   113f4:	00008067          	ret
   113f8:	00100793          	li	a5,1
   113fc:	ff077713          	andi	a4,a4,-16
   11400:	01f79793          	slli	a5,a5,0x1f
   11404:	fcf77ce3          	bgeu	a4,a5,113dc <_malloc_r+0x98>
   11408:	fcb76ae3          	bltu	a4,a1,113dc <_malloc_r+0x98>
   1140c:	00e13423          	sd	a4,8(sp)
   11410:	019000ef          	jal	11c28 <__malloc_lock>
   11414:	00813703          	ld	a4,8(sp)
   11418:	1f700793          	li	a5,503
   1141c:	4ee7fa63          	bgeu	a5,a4,11910 <_malloc_r+0x5cc>
   11420:	00975793          	srli	a5,a4,0x9
   11424:	18078a63          	beqz	a5,115b8 <_malloc_r+0x274>
   11428:	00400693          	li	a3,4
   1142c:	44f6ea63          	bltu	a3,a5,11880 <_malloc_r+0x53c>
   11430:	00675793          	srli	a5,a4,0x6
   11434:	0397889b          	addiw	a7,a5,57
   11438:	0018951b          	slliw	a0,a7,0x1
   1143c:	03878e1b          	addiw	t3,a5,56
   11440:	00351513          	slli	a0,a0,0x3
   11444:	00013837          	lui	a6,0x13
   11448:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1144c:	00a80533          	add	a0,a6,a0
   11450:	00853783          	ld	a5,8(a0)
   11454:	ff050513          	addi	a0,a0,-16
   11458:	02f50863          	beq	a0,a5,11488 <_malloc_r+0x144>
   1145c:	01f00313          	li	t1,31
   11460:	0140006f          	j	11474 <_malloc_r+0x130>
   11464:	0187b583          	ld	a1,24(a5)
   11468:	36065263          	bgez	a2,117cc <_malloc_r+0x488>
   1146c:	00b50e63          	beq	a0,a1,11488 <_malloc_r+0x144>
   11470:	00058793          	mv	a5,a1
   11474:	0087b683          	ld	a3,8(a5)
   11478:	ffc6f693          	andi	a3,a3,-4
   1147c:	40e68633          	sub	a2,a3,a4
   11480:	fec352e3          	bge	t1,a2,11464 <_malloc_r+0x120>
   11484:	000e0893          	mv	a7,t3
   11488:	02083783          	ld	a5,32(a6)
   1148c:	00013e37          	lui	t3,0x13
   11490:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11494:	2fc78a63          	beq	a5,t3,11788 <_malloc_r+0x444>
   11498:	0087b303          	ld	t1,8(a5)
   1149c:	01f00613          	li	a2,31
   114a0:	ffc37313          	andi	t1,t1,-4
   114a4:	40e306b3          	sub	a3,t1,a4
   114a8:	4ad64463          	blt	a2,a3,11950 <_malloc_r+0x60c>
   114ac:	03c83423          	sd	t3,40(a6)
   114b0:	03c83023          	sd	t3,32(a6)
   114b4:	4606da63          	bgez	a3,11928 <_malloc_r+0x5e4>
   114b8:	1ff00693          	li	a3,511
   114bc:	00883583          	ld	a1,8(a6)
   114c0:	3466ee63          	bltu	a3,t1,1181c <_malloc_r+0x4d8>
   114c4:	00335313          	srli	t1,t1,0x3
   114c8:	00131693          	slli	a3,t1,0x1
   114cc:	0026869b          	addiw	a3,a3,2
   114d0:	00369693          	slli	a3,a3,0x3
   114d4:	00d806b3          	add	a3,a6,a3
   114d8:	0006b503          	ld	a0,0(a3)
   114dc:	4023531b          	sraiw	t1,t1,0x2
   114e0:	00100613          	li	a2,1
   114e4:	00661633          	sll	a2,a2,t1
   114e8:	00c5e5b3          	or	a1,a1,a2
   114ec:	ff068613          	addi	a2,a3,-16
   114f0:	00a7b823          	sd	a0,16(a5)
   114f4:	00c7bc23          	sd	a2,24(a5)
   114f8:	00b83423          	sd	a1,8(a6)
   114fc:	00f6b023          	sd	a5,0(a3)
   11500:	00f53c23          	sd	a5,24(a0)
   11504:	4028d79b          	sraiw	a5,a7,0x2
   11508:	00100513          	li	a0,1
   1150c:	00f51533          	sll	a0,a0,a5
   11510:	0aa5ec63          	bltu	a1,a0,115c8 <_malloc_r+0x284>
   11514:	00b577b3          	and	a5,a0,a1
   11518:	02079463          	bnez	a5,11540 <_malloc_r+0x1fc>
   1151c:	00151513          	slli	a0,a0,0x1
   11520:	ffc8f893          	andi	a7,a7,-4
   11524:	00b577b3          	and	a5,a0,a1
   11528:	0048889b          	addiw	a7,a7,4
   1152c:	00079a63          	bnez	a5,11540 <_malloc_r+0x1fc>
   11530:	00151513          	slli	a0,a0,0x1
   11534:	00b577b3          	and	a5,a0,a1
   11538:	0048889b          	addiw	a7,a7,4
   1153c:	fe078ae3          	beqz	a5,11530 <_malloc_r+0x1ec>
   11540:	01f00e93          	li	t4,31
   11544:	00189f13          	slli	t5,a7,0x1
   11548:	002f0f1b          	addiw	t5,t5,2
   1154c:	003f1f13          	slli	t5,t5,0x3
   11550:	ff0f0f13          	addi	t5,t5,-16
   11554:	01e80f33          	add	t5,a6,t5
   11558:	000f0313          	mv	t1,t5
   1155c:	01833683          	ld	a3,24(t1)
   11560:	00088f93          	mv	t6,a7
   11564:	34d30263          	beq	t1,a3,118a8 <_malloc_r+0x564>
   11568:	0086b603          	ld	a2,8(a3)
   1156c:	00068793          	mv	a5,a3
   11570:	0186b683          	ld	a3,24(a3)
   11574:	ffc67613          	andi	a2,a2,-4
   11578:	40e605b3          	sub	a1,a2,a4
   1157c:	34bec263          	blt	t4,a1,118c0 <_malloc_r+0x57c>
   11580:	fe05c2e3          	bltz	a1,11564 <_malloc_r+0x220>
   11584:	00c78633          	add	a2,a5,a2
   11588:	00863703          	ld	a4,8(a2)
   1158c:	0107b583          	ld	a1,16(a5)
   11590:	00040513          	mv	a0,s0
   11594:	00176713          	ori	a4,a4,1
   11598:	00e63423          	sd	a4,8(a2)
   1159c:	00d5bc23          	sd	a3,24(a1)
   115a0:	00b6b823          	sd	a1,16(a3)
   115a4:	00f13423          	sd	a5,8(sp)
   115a8:	684000ef          	jal	11c2c <__malloc_unlock>
   115ac:	00813783          	ld	a5,8(sp)
   115b0:	01078513          	addi	a0,a5,16
   115b4:	e35ff06f          	j	113e8 <_malloc_r+0xa4>
   115b8:	40000513          	li	a0,1024
   115bc:	04000893          	li	a7,64
   115c0:	03f00e13          	li	t3,63
   115c4:	e81ff06f          	j	11444 <_malloc_r+0x100>
   115c8:	01083783          	ld	a5,16(a6)
   115cc:	0087b683          	ld	a3,8(a5)
   115d0:	ffc6f893          	andi	a7,a3,-4
   115d4:	40e88633          	sub	a2,a7,a4
   115d8:	00e8e663          	bltu	a7,a4,115e4 <_malloc_r+0x2a0>
   115dc:	02062693          	slti	a3,a2,32
   115e0:	1a068863          	beqz	a3,11790 <_malloc_r+0x44c>
   115e4:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   115e8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   115ec:	fff00693          	li	a3,-1
   115f0:	00b705b3          	add	a1,a4,a1
   115f4:	44d60663          	beq	a2,a3,11a40 <_malloc_r+0x6fc>
   115f8:	000016b7          	lui	a3,0x1
   115fc:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11600:	00d585b3          	add	a1,a1,a3
   11604:	fffff6b7          	lui	a3,0xfffff
   11608:	00d5f5b3          	and	a1,a1,a3
   1160c:	00040513          	mv	a0,s0
   11610:	03013423          	sd	a6,40(sp)
   11614:	02f13023          	sd	a5,32(sp)
   11618:	00e13c23          	sd	a4,24(sp)
   1161c:	01113823          	sd	a7,16(sp)
   11620:	00b13423          	sd	a1,8(sp)
   11624:	271000ef          	jal	12094 <_sbrk_r>
   11628:	fff00693          	li	a3,-1
   1162c:	00813583          	ld	a1,8(sp)
   11630:	01013883          	ld	a7,16(sp)
   11634:	01813703          	ld	a4,24(sp)
   11638:	02013783          	ld	a5,32(sp)
   1163c:	02813803          	ld	a6,40(sp)
   11640:	00050313          	mv	t1,a0
   11644:	36d50663          	beq	a0,a3,119b0 <_malloc_r+0x66c>
   11648:	011786b3          	add	a3,a5,a7
   1164c:	36d56063          	bltu	a0,a3,119ac <_malloc_r+0x668>
   11650:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11654:	000e2603          	lw	a2,0(t3)
   11658:	00b6063b          	addw	a2,a2,a1
   1165c:	00ce2023          	sw	a2,0(t3)
   11660:	00060513          	mv	a0,a2
   11664:	4a668c63          	beq	a3,t1,11b1c <_malloc_r+0x7d8>
   11668:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1166c:	fff00613          	li	a2,-1
   11670:	4ccf0463          	beq	t5,a2,11b38 <_malloc_r+0x7f4>
   11674:	40d306b3          	sub	a3,t1,a3
   11678:	00a686bb          	addw	a3,a3,a0
   1167c:	00de2023          	sw	a3,0(t3)
   11680:	00f37e93          	andi	t4,t1,15
   11684:	3c0e8e63          	beqz	t4,11a60 <_malloc_r+0x71c>
   11688:	ff037313          	andi	t1,t1,-16
   1168c:	000016b7          	lui	a3,0x1
   11690:	01030313          	addi	t1,t1,16
   11694:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11698:	00b30633          	add	a2,t1,a1
   1169c:	41d685b3          	sub	a1,a3,t4
   116a0:	40c585b3          	sub	a1,a1,a2
   116a4:	03459593          	slli	a1,a1,0x34
   116a8:	0345d593          	srli	a1,a1,0x34
   116ac:	00040513          	mv	a0,s0
   116b0:	05c13023          	sd	t3,64(sp)
   116b4:	03013c23          	sd	a6,56(sp)
   116b8:	02f13823          	sd	a5,48(sp)
   116bc:	02e13423          	sd	a4,40(sp)
   116c0:	03113023          	sd	a7,32(sp)
   116c4:	00613c23          	sd	t1,24(sp)
   116c8:	01d13823          	sd	t4,16(sp)
   116cc:	00c13423          	sd	a2,8(sp)
   116d0:	04b13423          	sd	a1,72(sp)
   116d4:	1c1000ef          	jal	12094 <_sbrk_r>
   116d8:	00050693          	mv	a3,a0
   116dc:	fff00513          	li	a0,-1
   116e0:	00813603          	ld	a2,8(sp)
   116e4:	01013e83          	ld	t4,16(sp)
   116e8:	01813303          	ld	t1,24(sp)
   116ec:	02013883          	ld	a7,32(sp)
   116f0:	02813703          	ld	a4,40(sp)
   116f4:	03013783          	ld	a5,48(sp)
   116f8:	03813803          	ld	a6,56(sp)
   116fc:	04013e03          	ld	t3,64(sp)
   11700:	48a68663          	beq	a3,a0,11b8c <_malloc_r+0x848>
   11704:	04813583          	ld	a1,72(sp)
   11708:	0005851b          	sext.w	a0,a1
   1170c:	000e2603          	lw	a2,0(t3)
   11710:	406686b3          	sub	a3,a3,t1
   11714:	00b686b3          	add	a3,a3,a1
   11718:	0016e693          	ori	a3,a3,1
   1171c:	00683823          	sd	t1,16(a6)
   11720:	00a6063b          	addw	a2,a2,a0
   11724:	00d33423          	sd	a3,8(t1)
   11728:	00ce2023          	sw	a2,0(t3)
   1172c:	03078e63          	beq	a5,a6,11768 <_malloc_r+0x424>
   11730:	01f00513          	li	a0,31
   11734:	41157663          	bgeu	a0,a7,11b40 <_malloc_r+0x7fc>
   11738:	0087b583          	ld	a1,8(a5)
   1173c:	fe888693          	addi	a3,a7,-24
   11740:	ff06f693          	andi	a3,a3,-16
   11744:	0015f593          	andi	a1,a1,1
   11748:	00d5e5b3          	or	a1,a1,a3
   1174c:	00b7b423          	sd	a1,8(a5)
   11750:	00900893          	li	a7,9
   11754:	00d785b3          	add	a1,a5,a3
   11758:	0115b423          	sd	a7,8(a1)
   1175c:	0115b823          	sd	a7,16(a1)
   11760:	44d56863          	bltu	a0,a3,11bb0 <_malloc_r+0x86c>
   11764:	00833683          	ld	a3,8(t1)
   11768:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1176c:	00c5f463          	bgeu	a1,a2,11774 <_malloc_r+0x430>
   11770:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11774:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11778:	00c5f463          	bgeu	a1,a2,11780 <_malloc_r+0x43c>
   1177c:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11780:	00030793          	mv	a5,t1
   11784:	2340006f          	j	119b8 <_malloc_r+0x674>
   11788:	00883583          	ld	a1,8(a6)
   1178c:	d79ff06f          	j	11504 <_malloc_r+0x1c0>
   11790:	00176693          	ori	a3,a4,1
   11794:	00d7b423          	sd	a3,8(a5)
   11798:	00e78733          	add	a4,a5,a4
   1179c:	00166613          	ori	a2,a2,1
   117a0:	00e83823          	sd	a4,16(a6)
   117a4:	00040513          	mv	a0,s0
   117a8:	00c73423          	sd	a2,8(a4)
   117ac:	00f13423          	sd	a5,8(sp)
   117b0:	47c000ef          	jal	11c2c <__malloc_unlock>
   117b4:	00813783          	ld	a5,8(sp)
   117b8:	05813083          	ld	ra,88(sp)
   117bc:	05013403          	ld	s0,80(sp)
   117c0:	01078513          	addi	a0,a5,16
   117c4:	06010113          	addi	sp,sp,96
   117c8:	00008067          	ret
   117cc:	0107b603          	ld	a2,16(a5)
   117d0:	00d786b3          	add	a3,a5,a3
   117d4:	0086b703          	ld	a4,8(a3)
   117d8:	00b63c23          	sd	a1,24(a2)
   117dc:	00c5b823          	sd	a2,16(a1)
   117e0:	00176713          	ori	a4,a4,1
   117e4:	00040513          	mv	a0,s0
   117e8:	00e6b423          	sd	a4,8(a3)
   117ec:	00f13423          	sd	a5,8(sp)
   117f0:	43c000ef          	jal	11c2c <__malloc_unlock>
   117f4:	00813783          	ld	a5,8(sp)
   117f8:	05813083          	ld	ra,88(sp)
   117fc:	05013403          	ld	s0,80(sp)
   11800:	01078513          	addi	a0,a5,16
   11804:	06010113          	addi	sp,sp,96
   11808:	00008067          	ret
   1180c:	0186b783          	ld	a5,24(a3)
   11810:	0028889b          	addiw	a7,a7,2
   11814:	c6f68ae3          	beq	a3,a5,11488 <_malloc_r+0x144>
   11818:	b79ff06f          	j	11390 <_malloc_r+0x4c>
   1181c:	00935693          	srli	a3,t1,0x9
   11820:	00400613          	li	a2,4
   11824:	16d67863          	bgeu	a2,a3,11994 <_malloc_r+0x650>
   11828:	01400613          	li	a2,20
   1182c:	28d66e63          	bltu	a2,a3,11ac8 <_malloc_r+0x784>
   11830:	00169513          	slli	a0,a3,0x1
   11834:	0b85051b          	addiw	a0,a0,184
   11838:	00351513          	slli	a0,a0,0x3
   1183c:	05b6861b          	addiw	a2,a3,91
   11840:	00a80533          	add	a0,a6,a0
   11844:	00053683          	ld	a3,0(a0)
   11848:	ff050513          	addi	a0,a0,-16
   1184c:	00d51863          	bne	a0,a3,1185c <_malloc_r+0x518>
   11850:	1f80006f          	j	11a48 <_malloc_r+0x704>
   11854:	0106b683          	ld	a3,16(a3)
   11858:	00d50863          	beq	a0,a3,11868 <_malloc_r+0x524>
   1185c:	0086b603          	ld	a2,8(a3)
   11860:	ffc67613          	andi	a2,a2,-4
   11864:	fec368e3          	bltu	t1,a2,11854 <_malloc_r+0x510>
   11868:	0186b503          	ld	a0,24(a3)
   1186c:	00a7bc23          	sd	a0,24(a5)
   11870:	00d7b823          	sd	a3,16(a5)
   11874:	00f53823          	sd	a5,16(a0)
   11878:	00f6bc23          	sd	a5,24(a3)
   1187c:	c89ff06f          	j	11504 <_malloc_r+0x1c0>
   11880:	01400693          	li	a3,20
   11884:	14f6fa63          	bgeu	a3,a5,119d8 <_malloc_r+0x694>
   11888:	05400693          	li	a3,84
   1188c:	24f6ee63          	bltu	a3,a5,11ae8 <_malloc_r+0x7a4>
   11890:	00c75793          	srli	a5,a4,0xc
   11894:	06f7889b          	addiw	a7,a5,111
   11898:	0018951b          	slliw	a0,a7,0x1
   1189c:	06e78e1b          	addiw	t3,a5,110
   118a0:	00351513          	slli	a0,a0,0x3
   118a4:	ba1ff06f          	j	11444 <_malloc_r+0x100>
   118a8:	001f8f9b          	addiw	t6,t6,1
   118ac:	003ff793          	andi	a5,t6,3
   118b0:	01030313          	addi	t1,t1,16
   118b4:	14078263          	beqz	a5,119f8 <_malloc_r+0x6b4>
   118b8:	01833683          	ld	a3,24(t1)
   118bc:	ca9ff06f          	j	11564 <_malloc_r+0x220>
   118c0:	0107b503          	ld	a0,16(a5)
   118c4:	00176893          	ori	a7,a4,1
   118c8:	0117b423          	sd	a7,8(a5)
   118cc:	00d53c23          	sd	a3,24(a0)
   118d0:	00a6b823          	sd	a0,16(a3)
   118d4:	00e78733          	add	a4,a5,a4
   118d8:	02e83423          	sd	a4,40(a6)
   118dc:	02e83023          	sd	a4,32(a6)
   118e0:	0015e693          	ori	a3,a1,1
   118e4:	00c78633          	add	a2,a5,a2
   118e8:	01c73c23          	sd	t3,24(a4)
   118ec:	01c73823          	sd	t3,16(a4)
   118f0:	00d73423          	sd	a3,8(a4)
   118f4:	00040513          	mv	a0,s0
   118f8:	00b63023          	sd	a1,0(a2)
   118fc:	00f13423          	sd	a5,8(sp)
   11900:	32c000ef          	jal	11c2c <__malloc_unlock>
   11904:	00813783          	ld	a5,8(sp)
   11908:	01078513          	addi	a0,a5,16
   1190c:	addff06f          	j	113e8 <_malloc_r+0xa4>
   11910:	00375893          	srli	a7,a4,0x3
   11914:	00189693          	slli	a3,a7,0x1
   11918:	0026869b          	addiw	a3,a3,2
   1191c:	00369693          	slli	a3,a3,0x3
   11920:	0008889b          	sext.w	a7,a7
   11924:	a55ff06f          	j	11378 <_malloc_r+0x34>
   11928:	00678333          	add	t1,a5,t1
   1192c:	00833703          	ld	a4,8(t1)
   11930:	00040513          	mv	a0,s0
   11934:	00f13423          	sd	a5,8(sp)
   11938:	00176713          	ori	a4,a4,1
   1193c:	00e33423          	sd	a4,8(t1)
   11940:	2ec000ef          	jal	11c2c <__malloc_unlock>
   11944:	00813783          	ld	a5,8(sp)
   11948:	01078513          	addi	a0,a5,16
   1194c:	a9dff06f          	j	113e8 <_malloc_r+0xa4>
   11950:	00176613          	ori	a2,a4,1
   11954:	00c7b423          	sd	a2,8(a5)
   11958:	00e78733          	add	a4,a5,a4
   1195c:	02e83423          	sd	a4,40(a6)
   11960:	02e83023          	sd	a4,32(a6)
   11964:	0016e613          	ori	a2,a3,1
   11968:	00678333          	add	t1,a5,t1
   1196c:	01c73c23          	sd	t3,24(a4)
   11970:	01c73823          	sd	t3,16(a4)
   11974:	00c73423          	sd	a2,8(a4)
   11978:	00040513          	mv	a0,s0
   1197c:	00d33023          	sd	a3,0(t1)
   11980:	00f13423          	sd	a5,8(sp)
   11984:	2a8000ef          	jal	11c2c <__malloc_unlock>
   11988:	00813783          	ld	a5,8(sp)
   1198c:	01078513          	addi	a0,a5,16
   11990:	a59ff06f          	j	113e8 <_malloc_r+0xa4>
   11994:	00635693          	srli	a3,t1,0x6
   11998:	00169513          	slli	a0,a3,0x1
   1199c:	0725051b          	addiw	a0,a0,114
   119a0:	00351513          	slli	a0,a0,0x3
   119a4:	0386861b          	addiw	a2,a3,56
   119a8:	e99ff06f          	j	11840 <_malloc_r+0x4fc>
   119ac:	15078e63          	beq	a5,a6,11b08 <_malloc_r+0x7c4>
   119b0:	01083783          	ld	a5,16(a6)
   119b4:	0087b683          	ld	a3,8(a5)
   119b8:	ffc6f693          	andi	a3,a3,-4
   119bc:	40e68633          	sub	a2,a3,a4
   119c0:	00e6e663          	bltu	a3,a4,119cc <_malloc_r+0x688>
   119c4:	02062693          	slti	a3,a2,32
   119c8:	dc0684e3          	beqz	a3,11790 <_malloc_r+0x44c>
   119cc:	00040513          	mv	a0,s0
   119d0:	25c000ef          	jal	11c2c <__malloc_unlock>
   119d4:	a11ff06f          	j	113e4 <_malloc_r+0xa0>
   119d8:	05c7889b          	addiw	a7,a5,92
   119dc:	0018951b          	slliw	a0,a7,0x1
   119e0:	05b78e1b          	addiw	t3,a5,91
   119e4:	00351513          	slli	a0,a0,0x3
   119e8:	a5dff06f          	j	11444 <_malloc_r+0x100>
   119ec:	010f3783          	ld	a5,16(t5)
   119f0:	fff8889b          	addiw	a7,a7,-1
   119f4:	23e79663          	bne	a5,t5,11c20 <_malloc_r+0x8dc>
   119f8:	0038f793          	andi	a5,a7,3
   119fc:	ff0f0f13          	addi	t5,t5,-16
   11a00:	fe0796e3          	bnez	a5,119ec <_malloc_r+0x6a8>
   11a04:	00883683          	ld	a3,8(a6)
   11a08:	fff54793          	not	a5,a0
   11a0c:	00d7f7b3          	and	a5,a5,a3
   11a10:	00f83423          	sd	a5,8(a6)
   11a14:	00151513          	slli	a0,a0,0x1
   11a18:	fff50693          	addi	a3,a0,-1
   11a1c:	baf6f6e3          	bgeu	a3,a5,115c8 <_malloc_r+0x284>
   11a20:	00f576b3          	and	a3,a0,a5
   11a24:	00069a63          	bnez	a3,11a38 <_malloc_r+0x6f4>
   11a28:	00151513          	slli	a0,a0,0x1
   11a2c:	00f576b3          	and	a3,a0,a5
   11a30:	004f8f9b          	addiw	t6,t6,4
   11a34:	fe068ae3          	beqz	a3,11a28 <_malloc_r+0x6e4>
   11a38:	000f8893          	mv	a7,t6
   11a3c:	b09ff06f          	j	11544 <_malloc_r+0x200>
   11a40:	02058593          	addi	a1,a1,32
   11a44:	bc9ff06f          	j	1160c <_malloc_r+0x2c8>
   11a48:	4026561b          	sraiw	a2,a2,0x2
   11a4c:	00100313          	li	t1,1
   11a50:	00c31633          	sll	a2,t1,a2
   11a54:	00c5e5b3          	or	a1,a1,a2
   11a58:	00b83423          	sd	a1,8(a6)
   11a5c:	e11ff06f          	j	1186c <_malloc_r+0x528>
   11a60:	00b30633          	add	a2,t1,a1
   11a64:	40c005b3          	neg	a1,a2
   11a68:	03459593          	slli	a1,a1,0x34
   11a6c:	0345d593          	srli	a1,a1,0x34
   11a70:	00040513          	mv	a0,s0
   11a74:	03c13c23          	sd	t3,56(sp)
   11a78:	03013823          	sd	a6,48(sp)
   11a7c:	02f13423          	sd	a5,40(sp)
   11a80:	02e13023          	sd	a4,32(sp)
   11a84:	01113c23          	sd	a7,24(sp)
   11a88:	00613823          	sd	t1,16(sp)
   11a8c:	00c13423          	sd	a2,8(sp)
   11a90:	04b13023          	sd	a1,64(sp)
   11a94:	600000ef          	jal	12094 <_sbrk_r>
   11a98:	00050693          	mv	a3,a0
   11a9c:	fff00513          	li	a0,-1
   11aa0:	01013303          	ld	t1,16(sp)
   11aa4:	01813883          	ld	a7,24(sp)
   11aa8:	02013703          	ld	a4,32(sp)
   11aac:	02813783          	ld	a5,40(sp)
   11ab0:	03013803          	ld	a6,48(sp)
   11ab4:	03813e03          	ld	t3,56(sp)
   11ab8:	0ea68463          	beq	a3,a0,11ba0 <_malloc_r+0x85c>
   11abc:	04013583          	ld	a1,64(sp)
   11ac0:	0005851b          	sext.w	a0,a1
   11ac4:	c49ff06f          	j	1170c <_malloc_r+0x3c8>
   11ac8:	05400613          	li	a2,84
   11acc:	08d66063          	bltu	a2,a3,11b4c <_malloc_r+0x808>
   11ad0:	00c35693          	srli	a3,t1,0xc
   11ad4:	00169513          	slli	a0,a3,0x1
   11ad8:	0de5051b          	addiw	a0,a0,222
   11adc:	00351513          	slli	a0,a0,0x3
   11ae0:	06e6861b          	addiw	a2,a3,110
   11ae4:	d5dff06f          	j	11840 <_malloc_r+0x4fc>
   11ae8:	15400693          	li	a3,340
   11aec:	08f6e063          	bltu	a3,a5,11b6c <_malloc_r+0x828>
   11af0:	00f75793          	srli	a5,a4,0xf
   11af4:	0787889b          	addiw	a7,a5,120
   11af8:	0018951b          	slliw	a0,a7,0x1
   11afc:	07778e1b          	addiw	t3,a5,119
   11b00:	00351513          	slli	a0,a0,0x3
   11b04:	941ff06f          	j	11444 <_malloc_r+0x100>
   11b08:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11b0c:	000e2503          	lw	a0,0(t3)
   11b10:	00b5053b          	addw	a0,a0,a1
   11b14:	00ae2023          	sw	a0,0(t3)
   11b18:	b51ff06f          	j	11668 <_malloc_r+0x324>
   11b1c:	03431f13          	slli	t5,t1,0x34
   11b20:	b40f14e3          	bnez	t5,11668 <_malloc_r+0x324>
   11b24:	01083303          	ld	t1,16(a6)
   11b28:	00b885b3          	add	a1,a7,a1
   11b2c:	0015e693          	ori	a3,a1,1
   11b30:	00d33423          	sd	a3,8(t1)
   11b34:	c35ff06f          	j	11768 <_malloc_r+0x424>
   11b38:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11b3c:	b45ff06f          	j	11680 <_malloc_r+0x33c>
   11b40:	00100793          	li	a5,1
   11b44:	00f33423          	sd	a5,8(t1)
   11b48:	e85ff06f          	j	119cc <_malloc_r+0x688>
   11b4c:	15400613          	li	a2,340
   11b50:	08d66a63          	bltu	a2,a3,11be4 <_malloc_r+0x8a0>
   11b54:	00f35693          	srli	a3,t1,0xf
   11b58:	00169513          	slli	a0,a3,0x1
   11b5c:	0f05051b          	addiw	a0,a0,240
   11b60:	00351513          	slli	a0,a0,0x3
   11b64:	0776861b          	addiw	a2,a3,119
   11b68:	cd9ff06f          	j	11840 <_malloc_r+0x4fc>
   11b6c:	55400693          	li	a3,1364
   11b70:	08f6ea63          	bltu	a3,a5,11c04 <_malloc_r+0x8c0>
   11b74:	01275793          	srli	a5,a4,0x12
   11b78:	07d7889b          	addiw	a7,a5,125
   11b7c:	0018951b          	slliw	a0,a7,0x1
   11b80:	07c78e1b          	addiw	t3,a5,124
   11b84:	00351513          	slli	a0,a0,0x3
   11b88:	8bdff06f          	j	11444 <_malloc_r+0x100>
   11b8c:	ff0e8e93          	addi	t4,t4,-16
   11b90:	01d606b3          	add	a3,a2,t4
   11b94:	00000513          	li	a0,0
   11b98:	00000593          	li	a1,0
   11b9c:	b71ff06f          	j	1170c <_malloc_r+0x3c8>
   11ba0:	00813683          	ld	a3,8(sp)
   11ba4:	00000593          	li	a1,0
   11ba8:	00000513          	li	a0,0
   11bac:	b61ff06f          	j	1170c <_malloc_r+0x3c8>
   11bb0:	01078593          	addi	a1,a5,16
   11bb4:	00040513          	mv	a0,s0
   11bb8:	01c13c23          	sd	t3,24(sp)
   11bbc:	01013823          	sd	a6,16(sp)
   11bc0:	00e13423          	sd	a4,8(sp)
   11bc4:	c7cff0ef          	jal	11040 <_free_r>
   11bc8:	01013803          	ld	a6,16(sp)
   11bcc:	01813e03          	ld	t3,24(sp)
   11bd0:	00813703          	ld	a4,8(sp)
   11bd4:	01083303          	ld	t1,16(a6)
   11bd8:	000e2603          	lw	a2,0(t3)
   11bdc:	00833683          	ld	a3,8(t1)
   11be0:	b89ff06f          	j	11768 <_malloc_r+0x424>
   11be4:	55400613          	li	a2,1364
   11be8:	02d66663          	bltu	a2,a3,11c14 <_malloc_r+0x8d0>
   11bec:	01235693          	srli	a3,t1,0x12
   11bf0:	00169513          	slli	a0,a3,0x1
   11bf4:	0fa5051b          	addiw	a0,a0,250
   11bf8:	00351513          	slli	a0,a0,0x3
   11bfc:	07c6861b          	addiw	a2,a3,124
   11c00:	c41ff06f          	j	11840 <_malloc_r+0x4fc>
   11c04:	7f000513          	li	a0,2032
   11c08:	07f00893          	li	a7,127
   11c0c:	07e00e13          	li	t3,126
   11c10:	835ff06f          	j	11444 <_malloc_r+0x100>
   11c14:	7f000513          	li	a0,2032
   11c18:	07e00613          	li	a2,126
   11c1c:	c25ff06f          	j	11840 <_malloc_r+0x4fc>
   11c20:	00883783          	ld	a5,8(a6)
   11c24:	df1ff06f          	j	11a14 <_malloc_r+0x6d0>

0000000000011c28 <__malloc_lock>:
   11c28:	00008067          	ret

0000000000011c2c <__malloc_unlock>:
   11c2c:	00008067          	ret

0000000000011c30 <_fclose_r>:
   11c30:	fe010113          	addi	sp,sp,-32
   11c34:	00113c23          	sd	ra,24(sp)
   11c38:	01213023          	sd	s2,0(sp)
   11c3c:	02058863          	beqz	a1,11c6c <_fclose_r+0x3c>
   11c40:	00813823          	sd	s0,16(sp)
   11c44:	00913423          	sd	s1,8(sp)
   11c48:	00058413          	mv	s0,a1
   11c4c:	00050493          	mv	s1,a0
   11c50:	00050663          	beqz	a0,11c5c <_fclose_r+0x2c>
   11c54:	04853783          	ld	a5,72(a0)
   11c58:	0c078c63          	beqz	a5,11d30 <_fclose_r+0x100>
   11c5c:	01041783          	lh	a5,16(s0)
   11c60:	02079263          	bnez	a5,11c84 <_fclose_r+0x54>
   11c64:	01013403          	ld	s0,16(sp)
   11c68:	00813483          	ld	s1,8(sp)
   11c6c:	01813083          	ld	ra,24(sp)
   11c70:	00000913          	li	s2,0
   11c74:	00090513          	mv	a0,s2
   11c78:	00013903          	ld	s2,0(sp)
   11c7c:	02010113          	addi	sp,sp,32
   11c80:	00008067          	ret
   11c84:	00040593          	mv	a1,s0
   11c88:	00048513          	mv	a0,s1
   11c8c:	0b8000ef          	jal	11d44 <__sflush_r>
   11c90:	05043783          	ld	a5,80(s0)
   11c94:	00050913          	mv	s2,a0
   11c98:	00078a63          	beqz	a5,11cac <_fclose_r+0x7c>
   11c9c:	03043583          	ld	a1,48(s0)
   11ca0:	00048513          	mv	a0,s1
   11ca4:	000780e7          	jalr	a5
   11ca8:	06054463          	bltz	a0,11d10 <_fclose_r+0xe0>
   11cac:	01045783          	lhu	a5,16(s0)
   11cb0:	0807f793          	andi	a5,a5,128
   11cb4:	06079663          	bnez	a5,11d20 <_fclose_r+0xf0>
   11cb8:	05843583          	ld	a1,88(s0)
   11cbc:	00058c63          	beqz	a1,11cd4 <_fclose_r+0xa4>
   11cc0:	07440793          	addi	a5,s0,116
   11cc4:	00f58663          	beq	a1,a5,11cd0 <_fclose_r+0xa0>
   11cc8:	00048513          	mv	a0,s1
   11ccc:	b74ff0ef          	jal	11040 <_free_r>
   11cd0:	04043c23          	sd	zero,88(s0)
   11cd4:	07843583          	ld	a1,120(s0)
   11cd8:	00058863          	beqz	a1,11ce8 <_fclose_r+0xb8>
   11cdc:	00048513          	mv	a0,s1
   11ce0:	b60ff0ef          	jal	11040 <_free_r>
   11ce4:	06043c23          	sd	zero,120(s0)
   11ce8:	aa5fe0ef          	jal	1078c <__sfp_lock_acquire>
   11cec:	00041823          	sh	zero,16(s0)
   11cf0:	aa1fe0ef          	jal	10790 <__sfp_lock_release>
   11cf4:	01813083          	ld	ra,24(sp)
   11cf8:	01013403          	ld	s0,16(sp)
   11cfc:	00813483          	ld	s1,8(sp)
   11d00:	00090513          	mv	a0,s2
   11d04:	00013903          	ld	s2,0(sp)
   11d08:	02010113          	addi	sp,sp,32
   11d0c:	00008067          	ret
   11d10:	01045783          	lhu	a5,16(s0)
   11d14:	fff00913          	li	s2,-1
   11d18:	0807f793          	andi	a5,a5,128
   11d1c:	f8078ee3          	beqz	a5,11cb8 <_fclose_r+0x88>
   11d20:	01843583          	ld	a1,24(s0)
   11d24:	00048513          	mv	a0,s1
   11d28:	b18ff0ef          	jal	11040 <_free_r>
   11d2c:	f8dff06f          	j	11cb8 <_fclose_r+0x88>
   11d30:	a39fe0ef          	jal	10768 <__sinit>
   11d34:	f29ff06f          	j	11c5c <_fclose_r+0x2c>

0000000000011d38 <fclose>:
   11d38:	00050593          	mv	a1,a0
   11d3c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11d40:	ef1ff06f          	j	11c30 <_fclose_r>

0000000000011d44 <__sflush_r>:
   11d44:	01059703          	lh	a4,16(a1)
   11d48:	fd010113          	addi	sp,sp,-48
   11d4c:	02813023          	sd	s0,32(sp)
   11d50:	01313423          	sd	s3,8(sp)
   11d54:	02113423          	sd	ra,40(sp)
   11d58:	00877793          	andi	a5,a4,8
   11d5c:	00058413          	mv	s0,a1
   11d60:	00050993          	mv	s3,a0
   11d64:	12079263          	bnez	a5,11e88 <__sflush_r+0x144>
   11d68:	000017b7          	lui	a5,0x1
   11d6c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11d70:	0085a683          	lw	a3,8(a1)
   11d74:	00f767b3          	or	a5,a4,a5
   11d78:	00f59823          	sh	a5,16(a1)
   11d7c:	18d05c63          	blez	a3,11f14 <__sflush_r+0x1d0>
   11d80:	04843803          	ld	a6,72(s0)
   11d84:	0e080663          	beqz	a6,11e70 <__sflush_r+0x12c>
   11d88:	00913c23          	sd	s1,24(sp)
   11d8c:	03371693          	slli	a3,a4,0x33
   11d90:	0009a483          	lw	s1,0(s3)
   11d94:	0009a023          	sw	zero,0(s3)
   11d98:	1806ca63          	bltz	a3,11f2c <__sflush_r+0x1e8>
   11d9c:	03043583          	ld	a1,48(s0)
   11da0:	00000613          	li	a2,0
   11da4:	00100693          	li	a3,1
   11da8:	00098513          	mv	a0,s3
   11dac:	000800e7          	jalr	a6
   11db0:	fff00793          	li	a5,-1
   11db4:	00050613          	mv	a2,a0
   11db8:	1af50c63          	beq	a0,a5,11f70 <__sflush_r+0x22c>
   11dbc:	01041783          	lh	a5,16(s0)
   11dc0:	04843803          	ld	a6,72(s0)
   11dc4:	0047f793          	andi	a5,a5,4
   11dc8:	00078e63          	beqz	a5,11de4 <__sflush_r+0xa0>
   11dcc:	00842703          	lw	a4,8(s0)
   11dd0:	05843783          	ld	a5,88(s0)
   11dd4:	40e60633          	sub	a2,a2,a4
   11dd8:	00078663          	beqz	a5,11de4 <__sflush_r+0xa0>
   11ddc:	07042783          	lw	a5,112(s0)
   11de0:	40f60633          	sub	a2,a2,a5
   11de4:	03043583          	ld	a1,48(s0)
   11de8:	00000693          	li	a3,0
   11dec:	00098513          	mv	a0,s3
   11df0:	000800e7          	jalr	a6
   11df4:	fff00713          	li	a4,-1
   11df8:	01041783          	lh	a5,16(s0)
   11dfc:	12e51c63          	bne	a0,a4,11f34 <__sflush_r+0x1f0>
   11e00:	0009a683          	lw	a3,0(s3)
   11e04:	01d00713          	li	a4,29
   11e08:	18d76263          	bltu	a4,a3,11f8c <__sflush_r+0x248>
   11e0c:	20400737          	lui	a4,0x20400
   11e10:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11e14:	00d75733          	srl	a4,a4,a3
   11e18:	00177713          	andi	a4,a4,1
   11e1c:	16070863          	beqz	a4,11f8c <__sflush_r+0x248>
   11e20:	01843683          	ld	a3,24(s0)
   11e24:	fffff737          	lui	a4,0xfffff
   11e28:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11e2c:	00e7f733          	and	a4,a5,a4
   11e30:	00e41823          	sh	a4,16(s0)
   11e34:	00042423          	sw	zero,8(s0)
   11e38:	00d43023          	sd	a3,0(s0)
   11e3c:	03379713          	slli	a4,a5,0x33
   11e40:	00075663          	bgez	a4,11e4c <__sflush_r+0x108>
   11e44:	0009a783          	lw	a5,0(s3)
   11e48:	10078863          	beqz	a5,11f58 <__sflush_r+0x214>
   11e4c:	05843583          	ld	a1,88(s0)
   11e50:	0099a023          	sw	s1,0(s3)
   11e54:	10058a63          	beqz	a1,11f68 <__sflush_r+0x224>
   11e58:	07440793          	addi	a5,s0,116
   11e5c:	00f58663          	beq	a1,a5,11e68 <__sflush_r+0x124>
   11e60:	00098513          	mv	a0,s3
   11e64:	9dcff0ef          	jal	11040 <_free_r>
   11e68:	01813483          	ld	s1,24(sp)
   11e6c:	04043c23          	sd	zero,88(s0)
   11e70:	02813083          	ld	ra,40(sp)
   11e74:	02013403          	ld	s0,32(sp)
   11e78:	00813983          	ld	s3,8(sp)
   11e7c:	00000513          	li	a0,0
   11e80:	03010113          	addi	sp,sp,48
   11e84:	00008067          	ret
   11e88:	01213823          	sd	s2,16(sp)
   11e8c:	0185b903          	ld	s2,24(a1)
   11e90:	08090a63          	beqz	s2,11f24 <__sflush_r+0x1e0>
   11e94:	00913c23          	sd	s1,24(sp)
   11e98:	0005b483          	ld	s1,0(a1)
   11e9c:	00377713          	andi	a4,a4,3
   11ea0:	0125b023          	sd	s2,0(a1)
   11ea4:	412484bb          	subw	s1,s1,s2
   11ea8:	00000793          	li	a5,0
   11eac:	00071463          	bnez	a4,11eb4 <__sflush_r+0x170>
   11eb0:	0205a783          	lw	a5,32(a1)
   11eb4:	00f42623          	sw	a5,12(s0)
   11eb8:	00904863          	bgtz	s1,11ec8 <__sflush_r+0x184>
   11ebc:	0640006f          	j	11f20 <__sflush_r+0x1dc>
   11ec0:	00a90933          	add	s2,s2,a0
   11ec4:	04905e63          	blez	s1,11f20 <__sflush_r+0x1dc>
   11ec8:	04043783          	ld	a5,64(s0)
   11ecc:	03043583          	ld	a1,48(s0)
   11ed0:	00048693          	mv	a3,s1
   11ed4:	00090613          	mv	a2,s2
   11ed8:	00098513          	mv	a0,s3
   11edc:	000780e7          	jalr	a5
   11ee0:	40a484bb          	subw	s1,s1,a0
   11ee4:	fca04ee3          	bgtz	a0,11ec0 <__sflush_r+0x17c>
   11ee8:	01045783          	lhu	a5,16(s0)
   11eec:	01013903          	ld	s2,16(sp)
   11ef0:	0407e793          	ori	a5,a5,64
   11ef4:	02813083          	ld	ra,40(sp)
   11ef8:	00f41823          	sh	a5,16(s0)
   11efc:	02013403          	ld	s0,32(sp)
   11f00:	01813483          	ld	s1,24(sp)
   11f04:	00813983          	ld	s3,8(sp)
   11f08:	fff00513          	li	a0,-1
   11f0c:	03010113          	addi	sp,sp,48
   11f10:	00008067          	ret
   11f14:	0705a683          	lw	a3,112(a1)
   11f18:	e6d044e3          	bgtz	a3,11d80 <__sflush_r+0x3c>
   11f1c:	f55ff06f          	j	11e70 <__sflush_r+0x12c>
   11f20:	01813483          	ld	s1,24(sp)
   11f24:	01013903          	ld	s2,16(sp)
   11f28:	f49ff06f          	j	11e70 <__sflush_r+0x12c>
   11f2c:	09043603          	ld	a2,144(s0)
   11f30:	e95ff06f          	j	11dc4 <__sflush_r+0x80>
   11f34:	01843683          	ld	a3,24(s0)
   11f38:	fffff737          	lui	a4,0xfffff
   11f3c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f40:	00e7f733          	and	a4,a5,a4
   11f44:	00e41823          	sh	a4,16(s0)
   11f48:	00042423          	sw	zero,8(s0)
   11f4c:	00d43023          	sd	a3,0(s0)
   11f50:	03379713          	slli	a4,a5,0x33
   11f54:	ee075ce3          	bgez	a4,11e4c <__sflush_r+0x108>
   11f58:	05843583          	ld	a1,88(s0)
   11f5c:	08a43823          	sd	a0,144(s0)
   11f60:	0099a023          	sw	s1,0(s3)
   11f64:	ee059ae3          	bnez	a1,11e58 <__sflush_r+0x114>
   11f68:	01813483          	ld	s1,24(sp)
   11f6c:	f05ff06f          	j	11e70 <__sflush_r+0x12c>
   11f70:	0009a783          	lw	a5,0(s3)
   11f74:	e40784e3          	beqz	a5,11dbc <__sflush_r+0x78>
   11f78:	fe378713          	addi	a4,a5,-29
   11f7c:	00070c63          	beqz	a4,11f94 <__sflush_r+0x250>
   11f80:	fea78793          	addi	a5,a5,-22
   11f84:	00078863          	beqz	a5,11f94 <__sflush_r+0x250>
   11f88:	01045783          	lhu	a5,16(s0)
   11f8c:	0407e793          	ori	a5,a5,64
   11f90:	f65ff06f          	j	11ef4 <__sflush_r+0x1b0>
   11f94:	0099a023          	sw	s1,0(s3)
   11f98:	01813483          	ld	s1,24(sp)
   11f9c:	ed5ff06f          	j	11e70 <__sflush_r+0x12c>

0000000000011fa0 <_fflush_r>:
   11fa0:	00050793          	mv	a5,a0
   11fa4:	00050663          	beqz	a0,11fb0 <_fflush_r+0x10>
   11fa8:	04853703          	ld	a4,72(a0)
   11fac:	00070e63          	beqz	a4,11fc8 <_fflush_r+0x28>
   11fb0:	01059703          	lh	a4,16(a1)
   11fb4:	00071663          	bnez	a4,11fc0 <_fflush_r+0x20>
   11fb8:	00000513          	li	a0,0
   11fbc:	00008067          	ret
   11fc0:	00078513          	mv	a0,a5
   11fc4:	d81ff06f          	j	11d44 <__sflush_r>
   11fc8:	fe010113          	addi	sp,sp,-32
   11fcc:	00b13423          	sd	a1,8(sp)
   11fd0:	00113c23          	sd	ra,24(sp)
   11fd4:	00a13023          	sd	a0,0(sp)
   11fd8:	f90fe0ef          	jal	10768 <__sinit>
   11fdc:	00813583          	ld	a1,8(sp)
   11fe0:	00013783          	ld	a5,0(sp)
   11fe4:	01059703          	lh	a4,16(a1)
   11fe8:	00070a63          	beqz	a4,11ffc <_fflush_r+0x5c>
   11fec:	01813083          	ld	ra,24(sp)
   11ff0:	00078513          	mv	a0,a5
   11ff4:	02010113          	addi	sp,sp,32
   11ff8:	d4dff06f          	j	11d44 <__sflush_r>
   11ffc:	01813083          	ld	ra,24(sp)
   12000:	00000513          	li	a0,0
   12004:	02010113          	addi	sp,sp,32
   12008:	00008067          	ret

000000000001200c <fflush>:
   1200c:	06050063          	beqz	a0,1206c <fflush+0x60>
   12010:	00050593          	mv	a1,a0
   12014:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12018:	00050663          	beqz	a0,12024 <fflush+0x18>
   1201c:	04853783          	ld	a5,72(a0)
   12020:	00078c63          	beqz	a5,12038 <fflush+0x2c>
   12024:	01059783          	lh	a5,16(a1)
   12028:	00079663          	bnez	a5,12034 <fflush+0x28>
   1202c:	00000513          	li	a0,0
   12030:	00008067          	ret
   12034:	d11ff06f          	j	11d44 <__sflush_r>
   12038:	fe010113          	addi	sp,sp,-32
   1203c:	00b13423          	sd	a1,8(sp)
   12040:	00a13023          	sd	a0,0(sp)
   12044:	00113c23          	sd	ra,24(sp)
   12048:	f20fe0ef          	jal	10768 <__sinit>
   1204c:	00813583          	ld	a1,8(sp)
   12050:	00013503          	ld	a0,0(sp)
   12054:	01059783          	lh	a5,16(a1)
   12058:	02079863          	bnez	a5,12088 <fflush+0x7c>
   1205c:	01813083          	ld	ra,24(sp)
   12060:	00000513          	li	a0,0
   12064:	02010113          	addi	sp,sp,32
   12068:	00008067          	ret
   1206c:	00013637          	lui	a2,0x13
   12070:	000125b7          	lui	a1,0x12
   12074:	00013537          	lui	a0,0x13
   12078:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1207c:	fa058593          	addi	a1,a1,-96 # 11fa0 <_fflush_r>
   12080:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12084:	f40fe06f          	j	107c4 <_fwalk_sglue>
   12088:	01813083          	ld	ra,24(sp)
   1208c:	02010113          	addi	sp,sp,32
   12090:	cb5ff06f          	j	11d44 <__sflush_r>

0000000000012094 <_sbrk_r>:
   12094:	fe010113          	addi	sp,sp,-32
   12098:	00813823          	sd	s0,16(sp)
   1209c:	00913423          	sd	s1,8(sp)
   120a0:	00050493          	mv	s1,a0
   120a4:	00058513          	mv	a0,a1
   120a8:	00113c23          	sd	ra,24(sp)
   120ac:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   120b0:	228000ef          	jal	122d8 <_sbrk>
   120b4:	fff00793          	li	a5,-1
   120b8:	00f50c63          	beq	a0,a5,120d0 <_sbrk_r+0x3c>
   120bc:	01813083          	ld	ra,24(sp)
   120c0:	01013403          	ld	s0,16(sp)
   120c4:	00813483          	ld	s1,8(sp)
   120c8:	02010113          	addi	sp,sp,32
   120cc:	00008067          	ret
   120d0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   120d4:	fe0784e3          	beqz	a5,120bc <_sbrk_r+0x28>
   120d8:	01813083          	ld	ra,24(sp)
   120dc:	01013403          	ld	s0,16(sp)
   120e0:	00f4a023          	sw	a5,0(s1)
   120e4:	00813483          	ld	s1,8(sp)
   120e8:	02010113          	addi	sp,sp,32
   120ec:	00008067          	ret

00000000000120f0 <__libc_fini_array>:
   120f0:	fe010113          	addi	sp,sp,-32
   120f4:	00813823          	sd	s0,16(sp)
   120f8:	000137b7          	lui	a5,0x13
   120fc:	00013437          	lui	s0,0x13
   12100:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12104:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12108:	408787b3          	sub	a5,a5,s0
   1210c:	00913423          	sd	s1,8(sp)
   12110:	00113c23          	sd	ra,24(sp)
   12114:	4037d493          	srai	s1,a5,0x3
   12118:	02048063          	beqz	s1,12138 <__libc_fini_array+0x48>
   1211c:	ff840413          	addi	s0,s0,-8
   12120:	00f40433          	add	s0,s0,a5
   12124:	00043783          	ld	a5,0(s0)
   12128:	fff48493          	addi	s1,s1,-1
   1212c:	ff840413          	addi	s0,s0,-8
   12130:	000780e7          	jalr	a5
   12134:	fe0498e3          	bnez	s1,12124 <__libc_fini_array+0x34>
   12138:	01813083          	ld	ra,24(sp)
   1213c:	01013403          	ld	s0,16(sp)
   12140:	00813483          	ld	s1,8(sp)
   12144:	02010113          	addi	sp,sp,32
   12148:	00008067          	ret

000000000001214c <__register_exitproc>:
   1214c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12150:	04078e63          	beqz	a5,121ac <__register_exitproc+0x60>
   12154:	0087a703          	lw	a4,8(a5)
   12158:	01f00813          	li	a6,31
   1215c:	08e84263          	blt	a6,a4,121e0 <__register_exitproc+0x94>
   12160:	02050863          	beqz	a0,12190 <__register_exitproc+0x44>
   12164:	00371813          	slli	a6,a4,0x3
   12168:	01078833          	add	a6,a5,a6
   1216c:	10c83823          	sd	a2,272(a6)
   12170:	3107a883          	lw	a7,784(a5)
   12174:	00100613          	li	a2,1
   12178:	00e6163b          	sllw	a2,a2,a4
   1217c:	00c8e8b3          	or	a7,a7,a2
   12180:	3117a823          	sw	a7,784(a5)
   12184:	20d83823          	sd	a3,528(a6)
   12188:	00200693          	li	a3,2
   1218c:	02d50663          	beq	a0,a3,121b8 <__register_exitproc+0x6c>
   12190:	0017069b          	addiw	a3,a4,1
   12194:	00371713          	slli	a4,a4,0x3
   12198:	00d7a423          	sw	a3,8(a5)
   1219c:	00e787b3          	add	a5,a5,a4
   121a0:	00b7b823          	sd	a1,16(a5)
   121a4:	00000513          	li	a0,0
   121a8:	00008067          	ret
   121ac:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   121b0:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   121b4:	fa1ff06f          	j	12154 <__register_exitproc+0x8>
   121b8:	3147a683          	lw	a3,788(a5)
   121bc:	00000513          	li	a0,0
   121c0:	00d66633          	or	a2,a2,a3
   121c4:	0017069b          	addiw	a3,a4,1
   121c8:	00371713          	slli	a4,a4,0x3
   121cc:	30c7aa23          	sw	a2,788(a5)
   121d0:	00d7a423          	sw	a3,8(a5)
   121d4:	00e787b3          	add	a5,a5,a4
   121d8:	00b7b823          	sd	a1,16(a5)
   121dc:	00008067          	ret
   121e0:	fff00513          	li	a0,-1
   121e4:	00008067          	ret

00000000000121e8 <_close>:
   121e8:	03900893          	li	a7,57
   121ec:	00000073          	ecall
   121f0:	00054663          	bltz	a0,121fc <_close+0x14>
   121f4:	0005051b          	sext.w	a0,a0
   121f8:	00008067          	ret
   121fc:	fe010113          	addi	sp,sp,-32
   12200:	00113c23          	sd	ra,24(sp)
   12204:	00a13423          	sd	a0,8(sp)
   12208:	188000ef          	jal	12390 <__errno>
   1220c:	00813783          	ld	a5,8(sp)
   12210:	01813083          	ld	ra,24(sp)
   12214:	40f007bb          	negw	a5,a5
   12218:	00f52023          	sw	a5,0(a0)
   1221c:	fff00513          	li	a0,-1
   12220:	02010113          	addi	sp,sp,32
   12224:	00008067          	ret

0000000000012228 <_exit>:
   12228:	05d00893          	li	a7,93
   1222c:	00000073          	ecall
   12230:	00054463          	bltz	a0,12238 <_exit+0x10>
   12234:	0000006f          	j	12234 <_exit+0xc>
   12238:	fe010113          	addi	sp,sp,-32
   1223c:	00113c23          	sd	ra,24(sp)
   12240:	00a13423          	sd	a0,8(sp)
   12244:	14c000ef          	jal	12390 <__errno>
   12248:	00813783          	ld	a5,8(sp)
   1224c:	40f007bb          	negw	a5,a5
   12250:	00f52023          	sw	a5,0(a0)
   12254:	0000006f          	j	12254 <_exit+0x2c>

0000000000012258 <_lseek>:
   12258:	03e00893          	li	a7,62
   1225c:	00000073          	ecall
   12260:	00054463          	bltz	a0,12268 <_lseek+0x10>
   12264:	00008067          	ret
   12268:	fe010113          	addi	sp,sp,-32
   1226c:	00113c23          	sd	ra,24(sp)
   12270:	00a13423          	sd	a0,8(sp)
   12274:	11c000ef          	jal	12390 <__errno>
   12278:	00813783          	ld	a5,8(sp)
   1227c:	01813083          	ld	ra,24(sp)
   12280:	40f007bb          	negw	a5,a5
   12284:	00f52023          	sw	a5,0(a0)
   12288:	fff00793          	li	a5,-1
   1228c:	00078513          	mv	a0,a5
   12290:	02010113          	addi	sp,sp,32
   12294:	00008067          	ret

0000000000012298 <_read>:
   12298:	03f00893          	li	a7,63
   1229c:	00000073          	ecall
   122a0:	00054463          	bltz	a0,122a8 <_read+0x10>
   122a4:	00008067          	ret
   122a8:	fe010113          	addi	sp,sp,-32
   122ac:	00113c23          	sd	ra,24(sp)
   122b0:	00a13423          	sd	a0,8(sp)
   122b4:	0dc000ef          	jal	12390 <__errno>
   122b8:	00813783          	ld	a5,8(sp)
   122bc:	01813083          	ld	ra,24(sp)
   122c0:	40f007bb          	negw	a5,a5
   122c4:	00f52023          	sw	a5,0(a0)
   122c8:	fff00793          	li	a5,-1
   122cc:	00078513          	mv	a0,a5
   122d0:	02010113          	addi	sp,sp,32
   122d4:	00008067          	ret

00000000000122d8 <_sbrk>:
   122d8:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   122dc:	ff010113          	addi	sp,sp,-16
   122e0:	00113423          	sd	ra,8(sp)
   122e4:	00050713          	mv	a4,a0
   122e8:	02079063          	bnez	a5,12308 <_sbrk+0x30>
   122ec:	0d600893          	li	a7,214
   122f0:	00000513          	li	a0,0
   122f4:	00000073          	ecall
   122f8:	fff00793          	li	a5,-1
   122fc:	02f50c63          	beq	a0,a5,12334 <_sbrk+0x5c>
   12300:	00050793          	mv	a5,a0
   12304:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12308:	00f70533          	add	a0,a4,a5
   1230c:	0d600893          	li	a7,214
   12310:	00000073          	ecall
   12314:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12318:	00f70733          	add	a4,a4,a5
   1231c:	00e51c63          	bne	a0,a4,12334 <_sbrk+0x5c>
   12320:	00813083          	ld	ra,8(sp)
   12324:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12328:	00078513          	mv	a0,a5
   1232c:	01010113          	addi	sp,sp,16
   12330:	00008067          	ret
   12334:	05c000ef          	jal	12390 <__errno>
   12338:	00813083          	ld	ra,8(sp)
   1233c:	00c00793          	li	a5,12
   12340:	00f52023          	sw	a5,0(a0)
   12344:	fff00513          	li	a0,-1
   12348:	01010113          	addi	sp,sp,16
   1234c:	00008067          	ret

0000000000012350 <_write>:
   12350:	04000893          	li	a7,64
   12354:	00000073          	ecall
   12358:	00054463          	bltz	a0,12360 <_write+0x10>
   1235c:	00008067          	ret
   12360:	fe010113          	addi	sp,sp,-32
   12364:	00113c23          	sd	ra,24(sp)
   12368:	00a13423          	sd	a0,8(sp)
   1236c:	024000ef          	jal	12390 <__errno>
   12370:	00813783          	ld	a5,8(sp)
   12374:	01813083          	ld	ra,24(sp)
   12378:	40f007bb          	negw	a5,a5
   1237c:	00f52023          	sw	a5,0(a0)
   12380:	fff00793          	li	a5,-1
   12384:	00078513          	mv	a0,a5
   12388:	02010113          	addi	sp,sp,32
   1238c:	00008067          	ret

0000000000012390 <__errno>:
   12390:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12394:	00008067          	ret

Disassembly of section .rodata:

0000000000012398 <.rodata>:
   12398:	000a                	.insn	2, 0x000a

Disassembly of section .eh_frame:

00000000000123a0 <__EH_FRAME_BEGIN__>:
   123a0:	0000                	.insn	2, 0x0000
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

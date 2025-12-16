
test/build/with-syscall/helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	3fd000ef          	jal	10d30 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	040020ef          	jal	12188 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	05050513          	addi	a0,a0,80 # 12050 <__libc_fini_array>
   1015c:	50d0006f          	j	10e68 <atexit>
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
   10184:	2d1000ef          	jal	10c54 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	ce050513          	addi	a0,a0,-800 # 10e68 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	ebc50513          	addi	a0,a0,-324 # 12050 <__libc_fini_array>
   1019c:	4cd000ef          	jal	10e68 <atexit>
   101a0:	221000ef          	jal	10bc0 <__libc_init_array>
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
   101d8:	30850513          	addi	a0,a0,776 # 12308 <__EH_FRAME_BEGIN__>
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
   1020c:	30850513          	addi	a0,a0,776 # 12308 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	000127b7          	lui	a5,0x12
   10230:	2f878513          	addi	a0,a5,760 # 122f8 <__errno+0x8>
   10234:	08c000ef          	jal	102c0 <print_s>
   10238:	0ec000ef          	jal	10324 <exit_proc>
   1023c:	00000793          	li	a5,0
   10240:	00078513          	mv	a0,a5
   10244:	00813083          	ld	ra,8(sp)
   10248:	00013403          	ld	s0,0(sp)
   1024c:	01010113          	addi	sp,sp,16
   10250:	00008067          	ret

0000000000010254 <print_d>:
   10254:	fe010113          	addi	sp,sp,-32
   10258:	00113c23          	sd	ra,24(sp)
   1025c:	00813823          	sd	s0,16(sp)
   10260:	02010413          	addi	s0,sp,32
   10264:	00050793          	mv	a5,a0
   10268:	fef42623          	sw	a5,-20(s0)
   1026c:	00200893          	li	a7,2
   10270:	00000073          	ecall
   10274:	00000013          	nop
   10278:	01813083          	ld	ra,24(sp)
   1027c:	01013403          	ld	s0,16(sp)
   10280:	02010113          	addi	sp,sp,32
   10284:	00008067          	ret

0000000000010288 <print_ll>:
   10288:	fe010113          	addi	sp,sp,-32
   1028c:	00113c23          	sd	ra,24(sp)
   10290:	00813823          	sd	s0,16(sp)
   10294:	02010413          	addi	s0,sp,32
   10298:	fea43423          	sd	a0,-24(s0)
   1029c:	fe843783          	ld	a5,-24(s0)
   102a0:	00078513          	mv	a0,a5
   102a4:	00600893          	li	a7,6
   102a8:	00000073          	ecall
   102ac:	00000013          	nop
   102b0:	01813083          	ld	ra,24(sp)
   102b4:	01013403          	ld	s0,16(sp)
   102b8:	02010113          	addi	sp,sp,32
   102bc:	00008067          	ret

00000000000102c0 <print_s>:
   102c0:	fe010113          	addi	sp,sp,-32
   102c4:	00113c23          	sd	ra,24(sp)
   102c8:	00813823          	sd	s0,16(sp)
   102cc:	02010413          	addi	s0,sp,32
   102d0:	fea43423          	sd	a0,-24(s0)
   102d4:	00000893          	li	a7,0
   102d8:	00000073          	ecall
   102dc:	00000013          	nop
   102e0:	01813083          	ld	ra,24(sp)
   102e4:	01013403          	ld	s0,16(sp)
   102e8:	02010113          	addi	sp,sp,32
   102ec:	00008067          	ret

00000000000102f0 <print_c>:
   102f0:	fe010113          	addi	sp,sp,-32
   102f4:	00113c23          	sd	ra,24(sp)
   102f8:	00813823          	sd	s0,16(sp)
   102fc:	02010413          	addi	s0,sp,32
   10300:	00050793          	mv	a5,a0
   10304:	fef407a3          	sb	a5,-17(s0)
   10308:	00100893          	li	a7,1
   1030c:	00000073          	ecall
   10310:	00000013          	nop
   10314:	01813083          	ld	ra,24(sp)
   10318:	01013403          	ld	s0,16(sp)
   1031c:	02010113          	addi	sp,sp,32
   10320:	00008067          	ret

0000000000010324 <exit_proc>:
   10324:	ff010113          	addi	sp,sp,-16
   10328:	00113423          	sd	ra,8(sp)
   1032c:	00813023          	sd	s0,0(sp)
   10330:	01010413          	addi	s0,sp,16
   10334:	00300893          	li	a7,3
   10338:	00000073          	ecall
   1033c:	00000013          	nop
   10340:	00813083          	ld	ra,8(sp)
   10344:	00013403          	ld	s0,0(sp)
   10348:	01010113          	addi	sp,sp,16
   1034c:	00008067          	ret

0000000000010350 <read_char>:
   10350:	fe010113          	addi	sp,sp,-32
   10354:	00113c23          	sd	ra,24(sp)
   10358:	00813823          	sd	s0,16(sp)
   1035c:	02010413          	addi	s0,sp,32
   10360:	00400893          	li	a7,4
   10364:	00000073          	ecall
   10368:	00050793          	mv	a5,a0
   1036c:	fef407a3          	sb	a5,-17(s0)
   10370:	fef44783          	lbu	a5,-17(s0)
   10374:	00078513          	mv	a0,a5
   10378:	01813083          	ld	ra,24(sp)
   1037c:	01013403          	ld	s0,16(sp)
   10380:	02010113          	addi	sp,sp,32
   10384:	00008067          	ret

0000000000010388 <read_num>:
   10388:	fe010113          	addi	sp,sp,-32
   1038c:	00113c23          	sd	ra,24(sp)
   10390:	00813823          	sd	s0,16(sp)
   10394:	02010413          	addi	s0,sp,32
   10398:	00500893          	li	a7,5
   1039c:	00000073          	ecall
   103a0:	00050793          	mv	a5,a0
   103a4:	fef43423          	sd	a5,-24(s0)
   103a8:	fe843783          	ld	a5,-24(s0)
   103ac:	00078513          	mv	a0,a5
   103b0:	01813083          	ld	ra,24(sp)
   103b4:	01013403          	ld	s0,16(sp)
   103b8:	02010113          	addi	sp,sp,32
   103bc:	00008067          	ret

00000000000103c0 <__fp_lock>:
   103c0:	00000513          	li	a0,0
   103c4:	00008067          	ret

00000000000103c8 <stdio_exit_handler>:
   103c8:	00013637          	lui	a2,0x13
   103cc:	000125b7          	lui	a1,0x12
   103d0:	00013537          	lui	a0,0x13
   103d4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   103d8:	b9058593          	addi	a1,a1,-1136 # 11b90 <_fclose_r>
   103dc:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   103e0:	3440006f          	j	10724 <_fwalk_sglue>

00000000000103e4 <cleanup_stdio>:
   103e4:	00853583          	ld	a1,8(a0)
   103e8:	ff010113          	addi	sp,sp,-16
   103ec:	00813023          	sd	s0,0(sp)
   103f0:	00113423          	sd	ra,8(sp)
   103f4:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   103f8:	00050413          	mv	s0,a0
   103fc:	00f58463          	beq	a1,a5,10404 <cleanup_stdio+0x20>
   10400:	790010ef          	jal	11b90 <_fclose_r>
   10404:	01043583          	ld	a1,16(s0)
   10408:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   1040c:	00f58663          	beq	a1,a5,10418 <cleanup_stdio+0x34>
   10410:	00040513          	mv	a0,s0
   10414:	77c010ef          	jal	11b90 <_fclose_r>
   10418:	01843583          	ld	a1,24(s0)
   1041c:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10420:	00f58c63          	beq	a1,a5,10438 <cleanup_stdio+0x54>
   10424:	00040513          	mv	a0,s0
   10428:	00013403          	ld	s0,0(sp)
   1042c:	00813083          	ld	ra,8(sp)
   10430:	01010113          	addi	sp,sp,16
   10434:	75c0106f          	j	11b90 <_fclose_r>
   10438:	00813083          	ld	ra,8(sp)
   1043c:	00013403          	ld	s0,0(sp)
   10440:	01010113          	addi	sp,sp,16
   10444:	00008067          	ret

0000000000010448 <__fp_unlock>:
   10448:	00000513          	li	a0,0
   1044c:	00008067          	ret

0000000000010450 <global_stdio_init.part.0>:
   10450:	fd010113          	addi	sp,sp,-48
   10454:	000107b7          	lui	a5,0x10
   10458:	02813023          	sd	s0,32(sp)
   1045c:	3c878793          	addi	a5,a5,968 # 103c8 <stdio_exit_handler>
   10460:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10464:	02113423          	sd	ra,40(sp)
   10468:	00913c23          	sd	s1,24(sp)
   1046c:	01213823          	sd	s2,16(sp)
   10470:	01313423          	sd	s3,8(sp)
   10474:	01413023          	sd	s4,0(sp)
   10478:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1047c:	00800613          	li	a2,8
   10480:	00400793          	li	a5,4
   10484:	00000593          	li	a1,0
   10488:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   1048c:	00f42823          	sw	a5,16(s0)
   10490:	00043023          	sd	zero,0(s0)
   10494:	00043423          	sd	zero,8(s0)
   10498:	0a042623          	sw	zero,172(s0)
   1049c:	00043c23          	sd	zero,24(s0)
   104a0:	02042023          	sw	zero,32(s0)
   104a4:	02042423          	sw	zero,40(s0)
   104a8:	7ac000ef          	jal	10c54 <memset>
   104ac:	00010a37          	lui	s4,0x10
   104b0:	000119b7          	lui	s3,0x11
   104b4:	00011937          	lui	s2,0x11
   104b8:	000114b7          	lui	s1,0x11
   104bc:	000107b7          	lui	a5,0x10
   104c0:	7f0a0a13          	addi	s4,s4,2032 # 107f0 <__sread>
   104c4:	85498993          	addi	s3,s3,-1964 # 10854 <__swrite>
   104c8:	8dc90913          	addi	s2,s2,-1828 # 108dc <__sseek>
   104cc:	94048493          	addi	s1,s1,-1728 # 10940 <__sclose>
   104d0:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   104d4:	00800613          	li	a2,8
   104d8:	00000593          	li	a1,0
   104dc:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   104e0:	0cf42023          	sw	a5,192(s0)
   104e4:	03443c23          	sd	s4,56(s0)
   104e8:	05343023          	sd	s3,64(s0)
   104ec:	05243423          	sd	s2,72(s0)
   104f0:	04943823          	sd	s1,80(s0)
   104f4:	02843823          	sd	s0,48(s0)
   104f8:	0a043823          	sd	zero,176(s0)
   104fc:	0a043c23          	sd	zero,184(s0)
   10500:	14042e23          	sw	zero,348(s0)
   10504:	0c043423          	sd	zero,200(s0)
   10508:	0c042823          	sw	zero,208(s0)
   1050c:	0c042c23          	sw	zero,216(s0)
   10510:	744000ef          	jal	10c54 <memset>
   10514:	000207b7          	lui	a5,0x20
   10518:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   1051c:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10520:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   10524:	00800613          	li	a2,8
   10528:	00000593          	li	a1,0
   1052c:	0f443423          	sd	s4,232(s0)
   10530:	0f343823          	sd	s3,240(s0)
   10534:	0f243c23          	sd	s2,248(s0)
   10538:	10943023          	sd	s1,256(s0)
   1053c:	16f42823          	sw	a5,368(s0)
   10540:	16043023          	sd	zero,352(s0)
   10544:	16043423          	sd	zero,360(s0)
   10548:	20042623          	sw	zero,524(s0)
   1054c:	16043c23          	sd	zero,376(s0)
   10550:	18042023          	sw	zero,384(s0)
   10554:	18042423          	sw	zero,392(s0)
   10558:	0ee43023          	sd	a4,224(s0)
   1055c:	6f8000ef          	jal	10c54 <memset>
   10560:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10564:	19443c23          	sd	s4,408(s0)
   10568:	1b343023          	sd	s3,416(s0)
   1056c:	1b243423          	sd	s2,424(s0)
   10570:	1a943823          	sd	s1,432(s0)
   10574:	02813083          	ld	ra,40(sp)
   10578:	18f43823          	sd	a5,400(s0)
   1057c:	02013403          	ld	s0,32(sp)
   10580:	01813483          	ld	s1,24(sp)
   10584:	01013903          	ld	s2,16(sp)
   10588:	00813983          	ld	s3,8(sp)
   1058c:	00013a03          	ld	s4,0(sp)
   10590:	03010113          	addi	sp,sp,48
   10594:	00008067          	ret

0000000000010598 <__sfp>:
   10598:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1059c:	fd010113          	addi	sp,sp,-48
   105a0:	00913c23          	sd	s1,24(sp)
   105a4:	02113423          	sd	ra,40(sp)
   105a8:	02813023          	sd	s0,32(sp)
   105ac:	00050493          	mv	s1,a0
   105b0:	10078063          	beqz	a5,106b0 <__sfp+0x118>
   105b4:	000136b7          	lui	a3,0x13
   105b8:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   105bc:	0b000813          	li	a6,176
   105c0:	0086a703          	lw	a4,8(a3)
   105c4:	08e05463          	blez	a4,1064c <__sfp+0xb4>
   105c8:	02071713          	slli	a4,a4,0x20
   105cc:	02075713          	srli	a4,a4,0x20
   105d0:	03070733          	mul	a4,a4,a6
   105d4:	0106b403          	ld	s0,16(a3)
   105d8:	00e40733          	add	a4,s0,a4
   105dc:	00c0006f          	j	105e8 <__sfp+0x50>
   105e0:	0b040413          	addi	s0,s0,176
   105e4:	06e40463          	beq	s0,a4,1064c <__sfp+0xb4>
   105e8:	01041783          	lh	a5,16(s0)
   105ec:	fe079ae3          	bnez	a5,105e0 <__sfp+0x48>
   105f0:	ffff07b7          	lui	a5,0xffff0
   105f4:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   105f8:	00f42823          	sw	a5,16(s0)
   105fc:	0a042623          	sw	zero,172(s0)
   10600:	00043023          	sd	zero,0(s0)
   10604:	00043423          	sd	zero,8(s0)
   10608:	00043c23          	sd	zero,24(s0)
   1060c:	02042023          	sw	zero,32(s0)
   10610:	02042423          	sw	zero,40(s0)
   10614:	00800613          	li	a2,8
   10618:	00000593          	li	a1,0
   1061c:	0a440513          	addi	a0,s0,164
   10620:	634000ef          	jal	10c54 <memset>
   10624:	04043c23          	sd	zero,88(s0)
   10628:	06042023          	sw	zero,96(s0)
   1062c:	06043c23          	sd	zero,120(s0)
   10630:	08042023          	sw	zero,128(s0)
   10634:	02813083          	ld	ra,40(sp)
   10638:	00040513          	mv	a0,s0
   1063c:	02013403          	ld	s0,32(sp)
   10640:	01813483          	ld	s1,24(sp)
   10644:	03010113          	addi	sp,sp,48
   10648:	00008067          	ret
   1064c:	0006b403          	ld	s0,0(a3)
   10650:	00040663          	beqz	s0,1065c <__sfp+0xc4>
   10654:	00040693          	mv	a3,s0
   10658:	f69ff06f          	j	105c0 <__sfp+0x28>
   1065c:	2d800593          	li	a1,728
   10660:	00048513          	mv	a0,s1
   10664:	00d13423          	sd	a3,8(sp)
   10668:	43d000ef          	jal	112a4 <_malloc_r>
   1066c:	00813683          	ld	a3,8(sp)
   10670:	00050413          	mv	s0,a0
   10674:	04050263          	beqz	a0,106b8 <__sfp+0x120>
   10678:	00400793          	li	a5,4
   1067c:	00f52423          	sw	a5,8(a0)
   10680:	01850513          	addi	a0,a0,24
   10684:	00043023          	sd	zero,0(s0)
   10688:	00a43823          	sd	a0,16(s0)
   1068c:	2c000613          	li	a2,704
   10690:	00000593          	li	a1,0
   10694:	00d13423          	sd	a3,8(sp)
   10698:	5bc000ef          	jal	10c54 <memset>
   1069c:	00813683          	ld	a3,8(sp)
   106a0:	0b000813          	li	a6,176
   106a4:	0086b023          	sd	s0,0(a3)
   106a8:	00040693          	mv	a3,s0
   106ac:	f15ff06f          	j	105c0 <__sfp+0x28>
   106b0:	da1ff0ef          	jal	10450 <global_stdio_init.part.0>
   106b4:	f01ff06f          	j	105b4 <__sfp+0x1c>
   106b8:	0006b023          	sd	zero,0(a3)
   106bc:	00c00793          	li	a5,12
   106c0:	00f4a023          	sw	a5,0(s1)
   106c4:	f71ff06f          	j	10634 <__sfp+0x9c>

00000000000106c8 <__sinit>:
   106c8:	04853783          	ld	a5,72(a0)
   106cc:	00078463          	beqz	a5,106d4 <__sinit+0xc>
   106d0:	00008067          	ret
   106d4:	000107b7          	lui	a5,0x10
   106d8:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   106dc:	3e478793          	addi	a5,a5,996 # 103e4 <cleanup_stdio>
   106e0:	04f53423          	sd	a5,72(a0)
   106e4:	fe0716e3          	bnez	a4,106d0 <__sinit+0x8>
   106e8:	d69ff06f          	j	10450 <global_stdio_init.part.0>

00000000000106ec <__sfp_lock_acquire>:
   106ec:	00008067          	ret

00000000000106f0 <__sfp_lock_release>:
   106f0:	00008067          	ret

00000000000106f4 <__fp_lock_all>:
   106f4:	00013637          	lui	a2,0x13
   106f8:	000105b7          	lui	a1,0x10
   106fc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10700:	3c058593          	addi	a1,a1,960 # 103c0 <__fp_lock>
   10704:	00000513          	li	a0,0
   10708:	01c0006f          	j	10724 <_fwalk_sglue>

000000000001070c <__fp_unlock_all>:
   1070c:	00013637          	lui	a2,0x13
   10710:	000105b7          	lui	a1,0x10
   10714:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10718:	44858593          	addi	a1,a1,1096 # 10448 <__fp_unlock>
   1071c:	00000513          	li	a0,0
   10720:	0040006f          	j	10724 <_fwalk_sglue>

0000000000010724 <_fwalk_sglue>:
   10724:	fb010113          	addi	sp,sp,-80
   10728:	03213823          	sd	s2,48(sp)
   1072c:	03313423          	sd	s3,40(sp)
   10730:	03413023          	sd	s4,32(sp)
   10734:	01513c23          	sd	s5,24(sp)
   10738:	01613823          	sd	s6,16(sp)
   1073c:	01713423          	sd	s7,8(sp)
   10740:	01813023          	sd	s8,0(sp)
   10744:	04113423          	sd	ra,72(sp)
   10748:	04813023          	sd	s0,64(sp)
   1074c:	02913c23          	sd	s1,56(sp)
   10750:	00060993          	mv	s3,a2
   10754:	00050a93          	mv	s5,a0
   10758:	00058b13          	mv	s6,a1
   1075c:	00000913          	li	s2,0
   10760:	0b000b93          	li	s7,176
   10764:	00100c13          	li	s8,1
   10768:	fff00a13          	li	s4,-1
   1076c:	0089a483          	lw	s1,8(s3)
   10770:	04905263          	blez	s1,107b4 <_fwalk_sglue+0x90>
   10774:	02049493          	slli	s1,s1,0x20
   10778:	0204d493          	srli	s1,s1,0x20
   1077c:	037484b3          	mul	s1,s1,s7
   10780:	0109b403          	ld	s0,16(s3)
   10784:	009404b3          	add	s1,s0,s1
   10788:	01045783          	lhu	a5,16(s0)
   1078c:	02fc7063          	bgeu	s8,a5,107ac <_fwalk_sglue+0x88>
   10790:	01241783          	lh	a5,18(s0)
   10794:	00040593          	mv	a1,s0
   10798:	000a8513          	mv	a0,s5
   1079c:	01478863          	beq	a5,s4,107ac <_fwalk_sglue+0x88>
   107a0:	000b00e7          	jalr	s6
   107a4:	01256933          	or	s2,a0,s2
   107a8:	0009091b          	sext.w	s2,s2
   107ac:	0b040413          	addi	s0,s0,176
   107b0:	fc941ce3          	bne	s0,s1,10788 <_fwalk_sglue+0x64>
   107b4:	0009b983          	ld	s3,0(s3)
   107b8:	fa099ae3          	bnez	s3,1076c <_fwalk_sglue+0x48>
   107bc:	04813083          	ld	ra,72(sp)
   107c0:	04013403          	ld	s0,64(sp)
   107c4:	03813483          	ld	s1,56(sp)
   107c8:	02813983          	ld	s3,40(sp)
   107cc:	02013a03          	ld	s4,32(sp)
   107d0:	01813a83          	ld	s5,24(sp)
   107d4:	01013b03          	ld	s6,16(sp)
   107d8:	00813b83          	ld	s7,8(sp)
   107dc:	00013c03          	ld	s8,0(sp)
   107e0:	00090513          	mv	a0,s2
   107e4:	03013903          	ld	s2,48(sp)
   107e8:	05010113          	addi	sp,sp,80
   107ec:	00008067          	ret

00000000000107f0 <__sread>:
   107f0:	ff010113          	addi	sp,sp,-16
   107f4:	00813023          	sd	s0,0(sp)
   107f8:	00058413          	mv	s0,a1
   107fc:	01259583          	lh	a1,18(a1)
   10800:	00113423          	sd	ra,8(sp)
   10804:	2ec000ef          	jal	10af0 <_read_r>
   10808:	02054063          	bltz	a0,10828 <__sread+0x38>
   1080c:	09043783          	ld	a5,144(s0)
   10810:	00813083          	ld	ra,8(sp)
   10814:	00a787b3          	add	a5,a5,a0
   10818:	08f43823          	sd	a5,144(s0)
   1081c:	00013403          	ld	s0,0(sp)
   10820:	01010113          	addi	sp,sp,16
   10824:	00008067          	ret
   10828:	01045783          	lhu	a5,16(s0)
   1082c:	fffff737          	lui	a4,0xfffff
   10830:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10834:	00e7f7b3          	and	a5,a5,a4
   10838:	00813083          	ld	ra,8(sp)
   1083c:	00f41823          	sh	a5,16(s0)
   10840:	00013403          	ld	s0,0(sp)
   10844:	01010113          	addi	sp,sp,16
   10848:	00008067          	ret

000000000001084c <__seofread>:
   1084c:	00000513          	li	a0,0
   10850:	00008067          	ret

0000000000010854 <__swrite>:
   10854:	01059783          	lh	a5,16(a1)
   10858:	fd010113          	addi	sp,sp,-48
   1085c:	00068313          	mv	t1,a3
   10860:	02113423          	sd	ra,40(sp)
   10864:	1007f693          	andi	a3,a5,256
   10868:	00058713          	mv	a4,a1
   1086c:	00060893          	mv	a7,a2
   10870:	00050813          	mv	a6,a0
   10874:	02069863          	bnez	a3,108a4 <__swrite+0x50>
   10878:	fffff6b7          	lui	a3,0xfffff
   1087c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10880:	02813083          	ld	ra,40(sp)
   10884:	00d7f7b3          	and	a5,a5,a3
   10888:	01271583          	lh	a1,18(a4)
   1088c:	00f71823          	sh	a5,16(a4)
   10890:	00030693          	mv	a3,t1
   10894:	00088613          	mv	a2,a7
   10898:	00080513          	mv	a0,a6
   1089c:	03010113          	addi	sp,sp,48
   108a0:	2b80006f          	j	10b58 <_write_r>
   108a4:	01259583          	lh	a1,18(a1)
   108a8:	00c13823          	sd	a2,16(sp)
   108ac:	00200693          	li	a3,2
   108b0:	00000613          	li	a2,0
   108b4:	00613c23          	sd	t1,24(sp)
   108b8:	00e13023          	sd	a4,0(sp)
   108bc:	00a13423          	sd	a0,8(sp)
   108c0:	1c8000ef          	jal	10a88 <_lseek_r>
   108c4:	00013703          	ld	a4,0(sp)
   108c8:	01813303          	ld	t1,24(sp)
   108cc:	01013883          	ld	a7,16(sp)
   108d0:	01071783          	lh	a5,16(a4)
   108d4:	00813803          	ld	a6,8(sp)
   108d8:	fa1ff06f          	j	10878 <__swrite+0x24>

00000000000108dc <__sseek>:
   108dc:	ff010113          	addi	sp,sp,-16
   108e0:	00813023          	sd	s0,0(sp)
   108e4:	00058413          	mv	s0,a1
   108e8:	01259583          	lh	a1,18(a1)
   108ec:	00113423          	sd	ra,8(sp)
   108f0:	198000ef          	jal	10a88 <_lseek_r>
   108f4:	fff00713          	li	a4,-1
   108f8:	01041783          	lh	a5,16(s0)
   108fc:	02e50263          	beq	a0,a4,10920 <__sseek+0x44>
   10900:	00001737          	lui	a4,0x1
   10904:	00e7e7b3          	or	a5,a5,a4
   10908:	00813083          	ld	ra,8(sp)
   1090c:	08a43823          	sd	a0,144(s0)
   10910:	00f41823          	sh	a5,16(s0)
   10914:	00013403          	ld	s0,0(sp)
   10918:	01010113          	addi	sp,sp,16
   1091c:	00008067          	ret
   10920:	80050713          	addi	a4,a0,-2048
   10924:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10928:	00e7f7b3          	and	a5,a5,a4
   1092c:	00813083          	ld	ra,8(sp)
   10930:	00f41823          	sh	a5,16(s0)
   10934:	00013403          	ld	s0,0(sp)
   10938:	01010113          	addi	sp,sp,16
   1093c:	00008067          	ret

0000000000010940 <__sclose>:
   10940:	01259583          	lh	a1,18(a1)
   10944:	0040006f          	j	10948 <_close_r>

0000000000010948 <_close_r>:
   10948:	fe010113          	addi	sp,sp,-32
   1094c:	00813823          	sd	s0,16(sp)
   10950:	00913423          	sd	s1,8(sp)
   10954:	00050493          	mv	s1,a0
   10958:	00058513          	mv	a0,a1
   1095c:	00113c23          	sd	ra,24(sp)
   10960:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10964:	7e4010ef          	jal	12148 <_close>
   10968:	fff00793          	li	a5,-1
   1096c:	00f50c63          	beq	a0,a5,10984 <_close_r+0x3c>
   10970:	01813083          	ld	ra,24(sp)
   10974:	01013403          	ld	s0,16(sp)
   10978:	00813483          	ld	s1,8(sp)
   1097c:	02010113          	addi	sp,sp,32
   10980:	00008067          	ret
   10984:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10988:	fe0784e3          	beqz	a5,10970 <_close_r+0x28>
   1098c:	01813083          	ld	ra,24(sp)
   10990:	01013403          	ld	s0,16(sp)
   10994:	00f4a023          	sw	a5,0(s1)
   10998:	00813483          	ld	s1,8(sp)
   1099c:	02010113          	addi	sp,sp,32
   109a0:	00008067          	ret

00000000000109a4 <_reclaim_reent>:
   109a4:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   109a8:	0ca78e63          	beq	a5,a0,10a84 <_reclaim_reent+0xe0>
   109ac:	06853583          	ld	a1,104(a0)
   109b0:	fd010113          	addi	sp,sp,-48
   109b4:	00913c23          	sd	s1,24(sp)
   109b8:	02113423          	sd	ra,40(sp)
   109bc:	02813023          	sd	s0,32(sp)
   109c0:	00050493          	mv	s1,a0
   109c4:	04058863          	beqz	a1,10a14 <_reclaim_reent+0x70>
   109c8:	01213823          	sd	s2,16(sp)
   109cc:	01313423          	sd	s3,8(sp)
   109d0:	00000913          	li	s2,0
   109d4:	20000993          	li	s3,512
   109d8:	012587b3          	add	a5,a1,s2
   109dc:	0007b403          	ld	s0,0(a5)
   109e0:	00040e63          	beqz	s0,109fc <_reclaim_reent+0x58>
   109e4:	00040593          	mv	a1,s0
   109e8:	00043403          	ld	s0,0(s0)
   109ec:	00048513          	mv	a0,s1
   109f0:	5b0000ef          	jal	10fa0 <_free_r>
   109f4:	fe0418e3          	bnez	s0,109e4 <_reclaim_reent+0x40>
   109f8:	0684b583          	ld	a1,104(s1)
   109fc:	00890913          	addi	s2,s2,8
   10a00:	fd391ce3          	bne	s2,s3,109d8 <_reclaim_reent+0x34>
   10a04:	00048513          	mv	a0,s1
   10a08:	598000ef          	jal	10fa0 <_free_r>
   10a0c:	01013903          	ld	s2,16(sp)
   10a10:	00813983          	ld	s3,8(sp)
   10a14:	0504b583          	ld	a1,80(s1)
   10a18:	00058663          	beqz	a1,10a24 <_reclaim_reent+0x80>
   10a1c:	00048513          	mv	a0,s1
   10a20:	580000ef          	jal	10fa0 <_free_r>
   10a24:	0604b403          	ld	s0,96(s1)
   10a28:	00040c63          	beqz	s0,10a40 <_reclaim_reent+0x9c>
   10a2c:	00040593          	mv	a1,s0
   10a30:	00043403          	ld	s0,0(s0)
   10a34:	00048513          	mv	a0,s1
   10a38:	568000ef          	jal	10fa0 <_free_r>
   10a3c:	fe0418e3          	bnez	s0,10a2c <_reclaim_reent+0x88>
   10a40:	0784b583          	ld	a1,120(s1)
   10a44:	00058663          	beqz	a1,10a50 <_reclaim_reent+0xac>
   10a48:	00048513          	mv	a0,s1
   10a4c:	554000ef          	jal	10fa0 <_free_r>
   10a50:	0484b783          	ld	a5,72(s1)
   10a54:	00078e63          	beqz	a5,10a70 <_reclaim_reent+0xcc>
   10a58:	02013403          	ld	s0,32(sp)
   10a5c:	02813083          	ld	ra,40(sp)
   10a60:	00048513          	mv	a0,s1
   10a64:	01813483          	ld	s1,24(sp)
   10a68:	03010113          	addi	sp,sp,48
   10a6c:	00078067          	jr	a5
   10a70:	02813083          	ld	ra,40(sp)
   10a74:	02013403          	ld	s0,32(sp)
   10a78:	01813483          	ld	s1,24(sp)
   10a7c:	03010113          	addi	sp,sp,48
   10a80:	00008067          	ret
   10a84:	00008067          	ret

0000000000010a88 <_lseek_r>:
   10a88:	fe010113          	addi	sp,sp,-32
   10a8c:	00058793          	mv	a5,a1
   10a90:	00813823          	sd	s0,16(sp)
   10a94:	00913423          	sd	s1,8(sp)
   10a98:	00060593          	mv	a1,a2
   10a9c:	00050493          	mv	s1,a0
   10aa0:	00068613          	mv	a2,a3
   10aa4:	00078513          	mv	a0,a5
   10aa8:	00113c23          	sd	ra,24(sp)
   10aac:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10ab0:	708010ef          	jal	121b8 <_lseek>
   10ab4:	fff00793          	li	a5,-1
   10ab8:	00f50c63          	beq	a0,a5,10ad0 <_lseek_r+0x48>
   10abc:	01813083          	ld	ra,24(sp)
   10ac0:	01013403          	ld	s0,16(sp)
   10ac4:	00813483          	ld	s1,8(sp)
   10ac8:	02010113          	addi	sp,sp,32
   10acc:	00008067          	ret
   10ad0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10ad4:	fe0784e3          	beqz	a5,10abc <_lseek_r+0x34>
   10ad8:	01813083          	ld	ra,24(sp)
   10adc:	01013403          	ld	s0,16(sp)
   10ae0:	00f4a023          	sw	a5,0(s1)
   10ae4:	00813483          	ld	s1,8(sp)
   10ae8:	02010113          	addi	sp,sp,32
   10aec:	00008067          	ret

0000000000010af0 <_read_r>:
   10af0:	fe010113          	addi	sp,sp,-32
   10af4:	00058793          	mv	a5,a1
   10af8:	00813823          	sd	s0,16(sp)
   10afc:	00913423          	sd	s1,8(sp)
   10b00:	00060593          	mv	a1,a2
   10b04:	00050493          	mv	s1,a0
   10b08:	00068613          	mv	a2,a3
   10b0c:	00078513          	mv	a0,a5
   10b10:	00113c23          	sd	ra,24(sp)
   10b14:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b18:	6e0010ef          	jal	121f8 <_read>
   10b1c:	fff00793          	li	a5,-1
   10b20:	00f50c63          	beq	a0,a5,10b38 <_read_r+0x48>
   10b24:	01813083          	ld	ra,24(sp)
   10b28:	01013403          	ld	s0,16(sp)
   10b2c:	00813483          	ld	s1,8(sp)
   10b30:	02010113          	addi	sp,sp,32
   10b34:	00008067          	ret
   10b38:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b3c:	fe0784e3          	beqz	a5,10b24 <_read_r+0x34>
   10b40:	01813083          	ld	ra,24(sp)
   10b44:	01013403          	ld	s0,16(sp)
   10b48:	00f4a023          	sw	a5,0(s1)
   10b4c:	00813483          	ld	s1,8(sp)
   10b50:	02010113          	addi	sp,sp,32
   10b54:	00008067          	ret

0000000000010b58 <_write_r>:
   10b58:	fe010113          	addi	sp,sp,-32
   10b5c:	00058793          	mv	a5,a1
   10b60:	00813823          	sd	s0,16(sp)
   10b64:	00913423          	sd	s1,8(sp)
   10b68:	00060593          	mv	a1,a2
   10b6c:	00050493          	mv	s1,a0
   10b70:	00068613          	mv	a2,a3
   10b74:	00078513          	mv	a0,a5
   10b78:	00113c23          	sd	ra,24(sp)
   10b7c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b80:	730010ef          	jal	122b0 <_write>
   10b84:	fff00793          	li	a5,-1
   10b88:	00f50c63          	beq	a0,a5,10ba0 <_write_r+0x48>
   10b8c:	01813083          	ld	ra,24(sp)
   10b90:	01013403          	ld	s0,16(sp)
   10b94:	00813483          	ld	s1,8(sp)
   10b98:	02010113          	addi	sp,sp,32
   10b9c:	00008067          	ret
   10ba0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10ba4:	fe0784e3          	beqz	a5,10b8c <_write_r+0x34>
   10ba8:	01813083          	ld	ra,24(sp)
   10bac:	01013403          	ld	s0,16(sp)
   10bb0:	00f4a023          	sw	a5,0(s1)
   10bb4:	00813483          	ld	s1,8(sp)
   10bb8:	02010113          	addi	sp,sp,32
   10bbc:	00008067          	ret

0000000000010bc0 <__libc_init_array>:
   10bc0:	fe010113          	addi	sp,sp,-32
   10bc4:	00813823          	sd	s0,16(sp)
   10bc8:	01213023          	sd	s2,0(sp)
   10bcc:	00013437          	lui	s0,0x13
   10bd0:	00013937          	lui	s2,0x13
   10bd4:	00113c23          	sd	ra,24(sp)
   10bd8:	00913423          	sd	s1,8(sp)
   10bdc:	00090913          	mv	s2,s2
   10be0:	00040413          	mv	s0,s0
   10be4:	02890263          	beq	s2,s0,10c08 <__libc_init_array+0x48>
   10be8:	40890933          	sub	s2,s2,s0
   10bec:	40395913          	srai	s2,s2,0x3
   10bf0:	00000493          	li	s1,0
   10bf4:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10bf8:	00148493          	addi	s1,s1,1
   10bfc:	00840413          	addi	s0,s0,8
   10c00:	000780e7          	jalr	a5
   10c04:	ff24e8e3          	bltu	s1,s2,10bf4 <__libc_init_array+0x34>
   10c08:	00013937          	lui	s2,0x13
   10c0c:	00013437          	lui	s0,0x13
   10c10:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10c14:	00040413          	mv	s0,s0
   10c18:	02890263          	beq	s2,s0,10c3c <__libc_init_array+0x7c>
   10c1c:	40890933          	sub	s2,s2,s0
   10c20:	40395913          	srai	s2,s2,0x3
   10c24:	00000493          	li	s1,0
   10c28:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c2c:	00148493          	addi	s1,s1,1
   10c30:	00840413          	addi	s0,s0,8
   10c34:	000780e7          	jalr	a5
   10c38:	ff24e8e3          	bltu	s1,s2,10c28 <__libc_init_array+0x68>
   10c3c:	01813083          	ld	ra,24(sp)
   10c40:	01013403          	ld	s0,16(sp)
   10c44:	00813483          	ld	s1,8(sp)
   10c48:	00013903          	ld	s2,0(sp)
   10c4c:	02010113          	addi	sp,sp,32
   10c50:	00008067          	ret

0000000000010c54 <memset>:
   10c54:	00f00313          	li	t1,15
   10c58:	00050713          	mv	a4,a0
   10c5c:	02c37a63          	bgeu	t1,a2,10c90 <memset+0x3c>
   10c60:	00f77793          	andi	a5,a4,15
   10c64:	0a079063          	bnez	a5,10d04 <memset+0xb0>
   10c68:	06059e63          	bnez	a1,10ce4 <memset+0x90>
   10c6c:	ff067693          	andi	a3,a2,-16
   10c70:	00f67613          	andi	a2,a2,15
   10c74:	00e686b3          	add	a3,a3,a4
   10c78:	00b73023          	sd	a1,0(a4)
   10c7c:	00b73423          	sd	a1,8(a4)
   10c80:	01070713          	addi	a4,a4,16
   10c84:	fed76ae3          	bltu	a4,a3,10c78 <memset+0x24>
   10c88:	00061463          	bnez	a2,10c90 <memset+0x3c>
   10c8c:	00008067          	ret
   10c90:	40c306b3          	sub	a3,t1,a2
   10c94:	00269693          	slli	a3,a3,0x2
   10c98:	00000297          	auipc	t0,0x0
   10c9c:	005686b3          	add	a3,a3,t0
   10ca0:	00c68067          	jr	12(a3)
   10ca4:	00b70723          	sb	a1,14(a4)
   10ca8:	00b706a3          	sb	a1,13(a4)
   10cac:	00b70623          	sb	a1,12(a4)
   10cb0:	00b705a3          	sb	a1,11(a4)
   10cb4:	00b70523          	sb	a1,10(a4)
   10cb8:	00b704a3          	sb	a1,9(a4)
   10cbc:	00b70423          	sb	a1,8(a4)
   10cc0:	00b703a3          	sb	a1,7(a4)
   10cc4:	00b70323          	sb	a1,6(a4)
   10cc8:	00b702a3          	sb	a1,5(a4)
   10ccc:	00b70223          	sb	a1,4(a4)
   10cd0:	00b701a3          	sb	a1,3(a4)
   10cd4:	00b70123          	sb	a1,2(a4)
   10cd8:	00b700a3          	sb	a1,1(a4)
   10cdc:	00b70023          	sb	a1,0(a4)
   10ce0:	00008067          	ret
   10ce4:	0ff5f593          	zext.b	a1,a1
   10ce8:	00859693          	slli	a3,a1,0x8
   10cec:	00d5e5b3          	or	a1,a1,a3
   10cf0:	01059693          	slli	a3,a1,0x10
   10cf4:	00d5e5b3          	or	a1,a1,a3
   10cf8:	02059693          	slli	a3,a1,0x20
   10cfc:	00d5e5b3          	or	a1,a1,a3
   10d00:	f6dff06f          	j	10c6c <memset+0x18>
   10d04:	00279693          	slli	a3,a5,0x2
   10d08:	00000297          	auipc	t0,0x0
   10d0c:	005686b3          	add	a3,a3,t0
   10d10:	00008293          	mv	t0,ra
   10d14:	f98680e7          	jalr	-104(a3)
   10d18:	00028093          	mv	ra,t0
   10d1c:	ff078793          	addi	a5,a5,-16
   10d20:	40f70733          	sub	a4,a4,a5
   10d24:	00f60633          	add	a2,a2,a5
   10d28:	f6c374e3          	bgeu	t1,a2,10c90 <memset+0x3c>
   10d2c:	f3dff06f          	j	10c68 <memset+0x14>

0000000000010d30 <__call_exitprocs>:
   10d30:	fb010113          	addi	sp,sp,-80
   10d34:	03413023          	sd	s4,32(sp)
   10d38:	03213823          	sd	s2,48(sp)
   10d3c:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10d40:	04113423          	sd	ra,72(sp)
   10d44:	06090e63          	beqz	s2,10dc0 <__call_exitprocs+0x90>
   10d48:	03313423          	sd	s3,40(sp)
   10d4c:	01513c23          	sd	s5,24(sp)
   10d50:	01613823          	sd	s6,16(sp)
   10d54:	01713423          	sd	s7,8(sp)
   10d58:	04813023          	sd	s0,64(sp)
   10d5c:	02913c23          	sd	s1,56(sp)
   10d60:	01813023          	sd	s8,0(sp)
   10d64:	00050b13          	mv	s6,a0
   10d68:	00058b93          	mv	s7,a1
   10d6c:	fff00993          	li	s3,-1
   10d70:	00100a93          	li	s5,1
   10d74:	00892403          	lw	s0,8(s2)
   10d78:	fff4041b          	addiw	s0,s0,-1
   10d7c:	02044463          	bltz	s0,10da4 <__call_exitprocs+0x74>
   10d80:	01090493          	addi	s1,s2,16
   10d84:	00341793          	slli	a5,s0,0x3
   10d88:	00f484b3          	add	s1,s1,a5
   10d8c:	040b8463          	beqz	s7,10dd4 <__call_exitprocs+0xa4>
   10d90:	2004b783          	ld	a5,512(s1)
   10d94:	05778063          	beq	a5,s7,10dd4 <__call_exitprocs+0xa4>
   10d98:	fff4041b          	addiw	s0,s0,-1
   10d9c:	ff848493          	addi	s1,s1,-8
   10da0:	ff3418e3          	bne	s0,s3,10d90 <__call_exitprocs+0x60>
   10da4:	04013403          	ld	s0,64(sp)
   10da8:	03813483          	ld	s1,56(sp)
   10dac:	02813983          	ld	s3,40(sp)
   10db0:	01813a83          	ld	s5,24(sp)
   10db4:	01013b03          	ld	s6,16(sp)
   10db8:	00813b83          	ld	s7,8(sp)
   10dbc:	00013c03          	ld	s8,0(sp)
   10dc0:	04813083          	ld	ra,72(sp)
   10dc4:	03013903          	ld	s2,48(sp)
   10dc8:	02013a03          	ld	s4,32(sp)
   10dcc:	05010113          	addi	sp,sp,80
   10dd0:	00008067          	ret
   10dd4:	00892783          	lw	a5,8(s2)
   10dd8:	0004b683          	ld	a3,0(s1)
   10ddc:	fff7879b          	addiw	a5,a5,-1
   10de0:	06878a63          	beq	a5,s0,10e54 <__call_exitprocs+0x124>
   10de4:	0004b023          	sd	zero,0(s1)
   10de8:	02068663          	beqz	a3,10e14 <__call_exitprocs+0xe4>
   10dec:	31092783          	lw	a5,784(s2)
   10df0:	008a973b          	sllw	a4,s5,s0
   10df4:	00892c03          	lw	s8,8(s2)
   10df8:	00e7f7b3          	and	a5,a5,a4
   10dfc:	02079463          	bnez	a5,10e24 <__call_exitprocs+0xf4>
   10e00:	000680e7          	jalr	a3
   10e04:	00892703          	lw	a4,8(s2)
   10e08:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e0c:	03871e63          	bne	a4,s8,10e48 <__call_exitprocs+0x118>
   10e10:	03279c63          	bne	a5,s2,10e48 <__call_exitprocs+0x118>
   10e14:	fff4041b          	addiw	s0,s0,-1
   10e18:	ff848493          	addi	s1,s1,-8
   10e1c:	f73418e3          	bne	s0,s3,10d8c <__call_exitprocs+0x5c>
   10e20:	f85ff06f          	j	10da4 <__call_exitprocs+0x74>
   10e24:	31492783          	lw	a5,788(s2)
   10e28:	1004b583          	ld	a1,256(s1)
   10e2c:	00f77733          	and	a4,a4,a5
   10e30:	02071663          	bnez	a4,10e5c <__call_exitprocs+0x12c>
   10e34:	000b0513          	mv	a0,s6
   10e38:	000680e7          	jalr	a3
   10e3c:	00892703          	lw	a4,8(s2)
   10e40:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e44:	fd8706e3          	beq	a4,s8,10e10 <__call_exitprocs+0xe0>
   10e48:	f4078ee3          	beqz	a5,10da4 <__call_exitprocs+0x74>
   10e4c:	00078913          	mv	s2,a5
   10e50:	f25ff06f          	j	10d74 <__call_exitprocs+0x44>
   10e54:	00892423          	sw	s0,8(s2)
   10e58:	f91ff06f          	j	10de8 <__call_exitprocs+0xb8>
   10e5c:	00058513          	mv	a0,a1
   10e60:	000680e7          	jalr	a3
   10e64:	fa1ff06f          	j	10e04 <__call_exitprocs+0xd4>

0000000000010e68 <atexit>:
   10e68:	00050593          	mv	a1,a0
   10e6c:	00000693          	li	a3,0
   10e70:	00000613          	li	a2,0
   10e74:	00000513          	li	a0,0
   10e78:	2340106f          	j	120ac <__register_exitproc>

0000000000010e7c <_malloc_trim_r>:
   10e7c:	fd010113          	addi	sp,sp,-48
   10e80:	01213823          	sd	s2,16(sp)
   10e84:	00013937          	lui	s2,0x13
   10e88:	02813023          	sd	s0,32(sp)
   10e8c:	00913c23          	sd	s1,24(sp)
   10e90:	01313423          	sd	s3,8(sp)
   10e94:	00058413          	mv	s0,a1
   10e98:	02113423          	sd	ra,40(sp)
   10e9c:	00050993          	mv	s3,a0
   10ea0:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10ea4:	4e5000ef          	jal	11b88 <__malloc_lock>
   10ea8:	01093783          	ld	a5,16(s2)
   10eac:	00001737          	lui	a4,0x1
   10eb0:	0087b483          	ld	s1,8(a5)
   10eb4:	ffc4f493          	andi	s1,s1,-4
   10eb8:	7ff48793          	addi	a5,s1,2047
   10ebc:	7e078793          	addi	a5,a5,2016
   10ec0:	40878433          	sub	s0,a5,s0
   10ec4:	00c45413          	srli	s0,s0,0xc
   10ec8:	fff40413          	addi	s0,s0,-1
   10ecc:	00c41413          	slli	s0,s0,0xc
   10ed0:	00e44e63          	blt	s0,a4,10eec <_malloc_trim_r+0x70>
   10ed4:	00000593          	li	a1,0
   10ed8:	00098513          	mv	a0,s3
   10edc:	118010ef          	jal	11ff4 <_sbrk_r>
   10ee0:	01093783          	ld	a5,16(s2)
   10ee4:	009787b3          	add	a5,a5,s1
   10ee8:	02f50663          	beq	a0,a5,10f14 <_malloc_trim_r+0x98>
   10eec:	00098513          	mv	a0,s3
   10ef0:	49d000ef          	jal	11b8c <__malloc_unlock>
   10ef4:	02813083          	ld	ra,40(sp)
   10ef8:	02013403          	ld	s0,32(sp)
   10efc:	01813483          	ld	s1,24(sp)
   10f00:	01013903          	ld	s2,16(sp)
   10f04:	00813983          	ld	s3,8(sp)
   10f08:	00000513          	li	a0,0
   10f0c:	03010113          	addi	sp,sp,48
   10f10:	00008067          	ret
   10f14:	408005b3          	neg	a1,s0
   10f18:	00098513          	mv	a0,s3
   10f1c:	0d8010ef          	jal	11ff4 <_sbrk_r>
   10f20:	fff00793          	li	a5,-1
   10f24:	04f50463          	beq	a0,a5,10f6c <_malloc_trim_r+0xf0>
   10f28:	01093683          	ld	a3,16(s2)
   10f2c:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f30:	408484b3          	sub	s1,s1,s0
   10f34:	0014e493          	ori	s1,s1,1
   10f38:	00098513          	mv	a0,s3
   10f3c:	408787bb          	subw	a5,a5,s0
   10f40:	0096b423          	sd	s1,8(a3)
   10f44:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f48:	445000ef          	jal	11b8c <__malloc_unlock>
   10f4c:	02813083          	ld	ra,40(sp)
   10f50:	02013403          	ld	s0,32(sp)
   10f54:	01813483          	ld	s1,24(sp)
   10f58:	01013903          	ld	s2,16(sp)
   10f5c:	00813983          	ld	s3,8(sp)
   10f60:	00100513          	li	a0,1
   10f64:	03010113          	addi	sp,sp,48
   10f68:	00008067          	ret
   10f6c:	00000593          	li	a1,0
   10f70:	00098513          	mv	a0,s3
   10f74:	080010ef          	jal	11ff4 <_sbrk_r>
   10f78:	01093703          	ld	a4,16(s2)
   10f7c:	01f00693          	li	a3,31
   10f80:	40e507b3          	sub	a5,a0,a4
   10f84:	f6f6d4e3          	bge	a3,a5,10eec <_malloc_trim_r+0x70>
   10f88:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10f8c:	0017e793          	ori	a5,a5,1
   10f90:	40c50533          	sub	a0,a0,a2
   10f94:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10f98:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f9c:	f51ff06f          	j	10eec <_malloc_trim_r+0x70>

0000000000010fa0 <_free_r>:
   10fa0:	12058863          	beqz	a1,110d0 <_free_r+0x130>
   10fa4:	fe010113          	addi	sp,sp,-32
   10fa8:	00813823          	sd	s0,16(sp)
   10fac:	00b13423          	sd	a1,8(sp)
   10fb0:	00050413          	mv	s0,a0
   10fb4:	00113c23          	sd	ra,24(sp)
   10fb8:	3d1000ef          	jal	11b88 <__malloc_lock>
   10fbc:	00813583          	ld	a1,8(sp)
   10fc0:	00013837          	lui	a6,0x13
   10fc4:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10fc8:	ff85b503          	ld	a0,-8(a1)
   10fcc:	ff058713          	addi	a4,a1,-16
   10fd0:	01083883          	ld	a7,16(a6)
   10fd4:	ffe57793          	andi	a5,a0,-2
   10fd8:	00f70633          	add	a2,a4,a5
   10fdc:	00863683          	ld	a3,8(a2)
   10fe0:	00157313          	andi	t1,a0,1
   10fe4:	ffc6f693          	andi	a3,a3,-4
   10fe8:	18c88e63          	beq	a7,a2,11184 <_free_r+0x1e4>
   10fec:	00d63423          	sd	a3,8(a2)
   10ff0:	00d608b3          	add	a7,a2,a3
   10ff4:	0088b883          	ld	a7,8(a7)
   10ff8:	0018f893          	andi	a7,a7,1
   10ffc:	08031e63          	bnez	t1,11098 <_free_r+0xf8>
   11000:	ff05b303          	ld	t1,-16(a1)
   11004:	000135b7          	lui	a1,0x13
   11008:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1100c:	40670733          	sub	a4,a4,t1
   11010:	01073503          	ld	a0,16(a4)
   11014:	006787b3          	add	a5,a5,t1
   11018:	14b50063          	beq	a0,a1,11158 <_free_r+0x1b8>
   1101c:	01873303          	ld	t1,24(a4)
   11020:	00653c23          	sd	t1,24(a0)
   11024:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11028:	1a088263          	beqz	a7,111cc <_free_r+0x22c>
   1102c:	0017e693          	ori	a3,a5,1
   11030:	00d73423          	sd	a3,8(a4)
   11034:	00f63023          	sd	a5,0(a2)
   11038:	1ff00693          	li	a3,511
   1103c:	0af6e663          	bltu	a3,a5,110e8 <_free_r+0x148>
   11040:	0037d793          	srli	a5,a5,0x3
   11044:	00179693          	slli	a3,a5,0x1
   11048:	0026869b          	addiw	a3,a3,2
   1104c:	00369693          	slli	a3,a3,0x3
   11050:	00883503          	ld	a0,8(a6)
   11054:	00d806b3          	add	a3,a6,a3
   11058:	0006b583          	ld	a1,0(a3)
   1105c:	4027d61b          	sraiw	a2,a5,0x2
   11060:	00100793          	li	a5,1
   11064:	00c797b3          	sll	a5,a5,a2
   11068:	00a7e7b3          	or	a5,a5,a0
   1106c:	ff068613          	addi	a2,a3,-16
   11070:	00b73823          	sd	a1,16(a4)
   11074:	00c73c23          	sd	a2,24(a4)
   11078:	00f83423          	sd	a5,8(a6)
   1107c:	00e6b023          	sd	a4,0(a3)
   11080:	00e5bc23          	sd	a4,24(a1)
   11084:	00040513          	mv	a0,s0
   11088:	01013403          	ld	s0,16(sp)
   1108c:	01813083          	ld	ra,24(sp)
   11090:	02010113          	addi	sp,sp,32
   11094:	2f90006f          	j	11b8c <__malloc_unlock>
   11098:	02089e63          	bnez	a7,110d4 <_free_r+0x134>
   1109c:	000135b7          	lui	a1,0x13
   110a0:	00d787b3          	add	a5,a5,a3
   110a4:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   110a8:	01063683          	ld	a3,16(a2)
   110ac:	0017e893          	ori	a7,a5,1
   110b0:	00f70533          	add	a0,a4,a5
   110b4:	16b68663          	beq	a3,a1,11220 <_free_r+0x280>
   110b8:	01863603          	ld	a2,24(a2)
   110bc:	00c6bc23          	sd	a2,24(a3)
   110c0:	00d63823          	sd	a3,16(a2)
   110c4:	01173423          	sd	a7,8(a4)
   110c8:	00f53023          	sd	a5,0(a0)
   110cc:	f6dff06f          	j	11038 <_free_r+0x98>
   110d0:	00008067          	ret
   110d4:	00156513          	ori	a0,a0,1
   110d8:	fea5bc23          	sd	a0,-8(a1)
   110dc:	00f63023          	sd	a5,0(a2)
   110e0:	1ff00693          	li	a3,511
   110e4:	f4f6fee3          	bgeu	a3,a5,11040 <_free_r+0xa0>
   110e8:	0097d693          	srli	a3,a5,0x9
   110ec:	00400613          	li	a2,4
   110f0:	0ed66263          	bltu	a2,a3,111d4 <_free_r+0x234>
   110f4:	0067d693          	srli	a3,a5,0x6
   110f8:	00169593          	slli	a1,a3,0x1
   110fc:	0725859b          	addiw	a1,a1,114
   11100:	00359593          	slli	a1,a1,0x3
   11104:	0386861b          	addiw	a2,a3,56
   11108:	00b805b3          	add	a1,a6,a1
   1110c:	0005b683          	ld	a3,0(a1)
   11110:	ff058593          	addi	a1,a1,-16
   11114:	00d59863          	bne	a1,a3,11124 <_free_r+0x184>
   11118:	1240006f          	j	1123c <_free_r+0x29c>
   1111c:	0106b683          	ld	a3,16(a3)
   11120:	00d58863          	beq	a1,a3,11130 <_free_r+0x190>
   11124:	0086b603          	ld	a2,8(a3)
   11128:	ffc67613          	andi	a2,a2,-4
   1112c:	fec7e8e3          	bltu	a5,a2,1111c <_free_r+0x17c>
   11130:	0186b583          	ld	a1,24(a3)
   11134:	00b73c23          	sd	a1,24(a4)
   11138:	00d73823          	sd	a3,16(a4)
   1113c:	00040513          	mv	a0,s0
   11140:	01013403          	ld	s0,16(sp)
   11144:	01813083          	ld	ra,24(sp)
   11148:	00e5b823          	sd	a4,16(a1)
   1114c:	00e6bc23          	sd	a4,24(a3)
   11150:	02010113          	addi	sp,sp,32
   11154:	2390006f          	j	11b8c <__malloc_unlock>
   11158:	0a089263          	bnez	a7,111fc <_free_r+0x25c>
   1115c:	01863583          	ld	a1,24(a2)
   11160:	01063603          	ld	a2,16(a2)
   11164:	00f686b3          	add	a3,a3,a5
   11168:	0016e793          	ori	a5,a3,1
   1116c:	00b63c23          	sd	a1,24(a2)
   11170:	00c5b823          	sd	a2,16(a1)
   11174:	00f73423          	sd	a5,8(a4)
   11178:	00d70733          	add	a4,a4,a3
   1117c:	00d73023          	sd	a3,0(a4)
   11180:	f05ff06f          	j	11084 <_free_r+0xe4>
   11184:	00d786b3          	add	a3,a5,a3
   11188:	02031063          	bnez	t1,111a8 <_free_r+0x208>
   1118c:	ff05b783          	ld	a5,-16(a1)
   11190:	40f70733          	sub	a4,a4,a5
   11194:	01073603          	ld	a2,16(a4)
   11198:	00f686b3          	add	a3,a3,a5
   1119c:	01873783          	ld	a5,24(a4)
   111a0:	00f63c23          	sd	a5,24(a2)
   111a4:	00c7b823          	sd	a2,16(a5)
   111a8:	0016e613          	ori	a2,a3,1
   111ac:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   111b0:	00c73423          	sd	a2,8(a4)
   111b4:	00e83823          	sd	a4,16(a6)
   111b8:	ecf6e6e3          	bltu	a3,a5,11084 <_free_r+0xe4>
   111bc:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   111c0:	00040513          	mv	a0,s0
   111c4:	cb9ff0ef          	jal	10e7c <_malloc_trim_r>
   111c8:	ebdff06f          	j	11084 <_free_r+0xe4>
   111cc:	00d787b3          	add	a5,a5,a3
   111d0:	ed9ff06f          	j	110a8 <_free_r+0x108>
   111d4:	01400613          	li	a2,20
   111d8:	02d67a63          	bgeu	a2,a3,1120c <_free_r+0x26c>
   111dc:	05400613          	li	a2,84
   111e0:	06d66c63          	bltu	a2,a3,11258 <_free_r+0x2b8>
   111e4:	00c7d693          	srli	a3,a5,0xc
   111e8:	00169593          	slli	a1,a3,0x1
   111ec:	0de5859b          	addiw	a1,a1,222
   111f0:	00359593          	slli	a1,a1,0x3
   111f4:	06e6861b          	addiw	a2,a3,110
   111f8:	f11ff06f          	j	11108 <_free_r+0x168>
   111fc:	0017e693          	ori	a3,a5,1
   11200:	00d73423          	sd	a3,8(a4)
   11204:	00f63023          	sd	a5,0(a2)
   11208:	e7dff06f          	j	11084 <_free_r+0xe4>
   1120c:	00169593          	slli	a1,a3,0x1
   11210:	0b85859b          	addiw	a1,a1,184
   11214:	00359593          	slli	a1,a1,0x3
   11218:	05b6861b          	addiw	a2,a3,91
   1121c:	eedff06f          	j	11108 <_free_r+0x168>
   11220:	02e83423          	sd	a4,40(a6)
   11224:	02e83023          	sd	a4,32(a6)
   11228:	00b73c23          	sd	a1,24(a4)
   1122c:	00b73823          	sd	a1,16(a4)
   11230:	01173423          	sd	a7,8(a4)
   11234:	00f53023          	sd	a5,0(a0)
   11238:	e4dff06f          	j	11084 <_free_r+0xe4>
   1123c:	00883503          	ld	a0,8(a6)
   11240:	4026561b          	sraiw	a2,a2,0x2
   11244:	00100793          	li	a5,1
   11248:	00c797b3          	sll	a5,a5,a2
   1124c:	00a7e7b3          	or	a5,a5,a0
   11250:	00f83423          	sd	a5,8(a6)
   11254:	ee1ff06f          	j	11134 <_free_r+0x194>
   11258:	15400613          	li	a2,340
   1125c:	00d66e63          	bltu	a2,a3,11278 <_free_r+0x2d8>
   11260:	00f7d693          	srli	a3,a5,0xf
   11264:	00169593          	slli	a1,a3,0x1
   11268:	0f05859b          	addiw	a1,a1,240
   1126c:	00359593          	slli	a1,a1,0x3
   11270:	0776861b          	addiw	a2,a3,119
   11274:	e95ff06f          	j	11108 <_free_r+0x168>
   11278:	55400613          	li	a2,1364
   1127c:	00d66e63          	bltu	a2,a3,11298 <_free_r+0x2f8>
   11280:	0127d693          	srli	a3,a5,0x12
   11284:	00169593          	slli	a1,a3,0x1
   11288:	0fa5859b          	addiw	a1,a1,250
   1128c:	00359593          	slli	a1,a1,0x3
   11290:	07c6861b          	addiw	a2,a3,124
   11294:	e75ff06f          	j	11108 <_free_r+0x168>
   11298:	7f000593          	li	a1,2032
   1129c:	07e00613          	li	a2,126
   112a0:	e69ff06f          	j	11108 <_free_r+0x168>

00000000000112a4 <_malloc_r>:
   112a4:	fa010113          	addi	sp,sp,-96
   112a8:	04813823          	sd	s0,80(sp)
   112ac:	04113c23          	sd	ra,88(sp)
   112b0:	01758713          	addi	a4,a1,23
   112b4:	02e00793          	li	a5,46
   112b8:	00050413          	mv	s0,a0
   112bc:	08e7ee63          	bltu	a5,a4,11358 <_malloc_r+0xb4>
   112c0:	02000713          	li	a4,32
   112c4:	06b76c63          	bltu	a4,a1,1133c <_malloc_r+0x98>
   112c8:	0c1000ef          	jal	11b88 <__malloc_lock>
   112cc:	02000713          	li	a4,32
   112d0:	05000693          	li	a3,80
   112d4:	00400893          	li	a7,4
   112d8:	00013837          	lui	a6,0x13
   112dc:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112e0:	00d806b3          	add	a3,a6,a3
   112e4:	0086b783          	ld	a5,8(a3)
   112e8:	ff068613          	addi	a2,a3,-16
   112ec:	48c78063          	beq	a5,a2,1176c <_malloc_r+0x4c8>
   112f0:	0087b703          	ld	a4,8(a5)
   112f4:	0187b603          	ld	a2,24(a5)
   112f8:	0107b583          	ld	a1,16(a5)
   112fc:	ffc77713          	andi	a4,a4,-4
   11300:	00e78733          	add	a4,a5,a4
   11304:	00873683          	ld	a3,8(a4)
   11308:	00c5bc23          	sd	a2,24(a1)
   1130c:	00b63823          	sd	a1,16(a2)
   11310:	0016e693          	ori	a3,a3,1
   11314:	00040513          	mv	a0,s0
   11318:	00d73423          	sd	a3,8(a4)
   1131c:	00f13423          	sd	a5,8(sp)
   11320:	06d000ef          	jal	11b8c <__malloc_unlock>
   11324:	00813783          	ld	a5,8(sp)
   11328:	05813083          	ld	ra,88(sp)
   1132c:	05013403          	ld	s0,80(sp)
   11330:	01078513          	addi	a0,a5,16
   11334:	06010113          	addi	sp,sp,96
   11338:	00008067          	ret
   1133c:	00c00793          	li	a5,12
   11340:	00f42023          	sw	a5,0(s0)
   11344:	00000513          	li	a0,0
   11348:	05813083          	ld	ra,88(sp)
   1134c:	05013403          	ld	s0,80(sp)
   11350:	06010113          	addi	sp,sp,96
   11354:	00008067          	ret
   11358:	00100793          	li	a5,1
   1135c:	ff077713          	andi	a4,a4,-16
   11360:	01f79793          	slli	a5,a5,0x1f
   11364:	fcf77ce3          	bgeu	a4,a5,1133c <_malloc_r+0x98>
   11368:	fcb76ae3          	bltu	a4,a1,1133c <_malloc_r+0x98>
   1136c:	00e13423          	sd	a4,8(sp)
   11370:	019000ef          	jal	11b88 <__malloc_lock>
   11374:	00813703          	ld	a4,8(sp)
   11378:	1f700793          	li	a5,503
   1137c:	4ee7fa63          	bgeu	a5,a4,11870 <_malloc_r+0x5cc>
   11380:	00975793          	srli	a5,a4,0x9
   11384:	18078a63          	beqz	a5,11518 <_malloc_r+0x274>
   11388:	00400693          	li	a3,4
   1138c:	44f6ea63          	bltu	a3,a5,117e0 <_malloc_r+0x53c>
   11390:	00675793          	srli	a5,a4,0x6
   11394:	0397889b          	addiw	a7,a5,57
   11398:	0018951b          	slliw	a0,a7,0x1
   1139c:	03878e1b          	addiw	t3,a5,56
   113a0:	00351513          	slli	a0,a0,0x3
   113a4:	00013837          	lui	a6,0x13
   113a8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   113ac:	00a80533          	add	a0,a6,a0
   113b0:	00853783          	ld	a5,8(a0)
   113b4:	ff050513          	addi	a0,a0,-16
   113b8:	02f50863          	beq	a0,a5,113e8 <_malloc_r+0x144>
   113bc:	01f00313          	li	t1,31
   113c0:	0140006f          	j	113d4 <_malloc_r+0x130>
   113c4:	0187b583          	ld	a1,24(a5)
   113c8:	36065263          	bgez	a2,1172c <_malloc_r+0x488>
   113cc:	00b50e63          	beq	a0,a1,113e8 <_malloc_r+0x144>
   113d0:	00058793          	mv	a5,a1
   113d4:	0087b683          	ld	a3,8(a5)
   113d8:	ffc6f693          	andi	a3,a3,-4
   113dc:	40e68633          	sub	a2,a3,a4
   113e0:	fec352e3          	bge	t1,a2,113c4 <_malloc_r+0x120>
   113e4:	000e0893          	mv	a7,t3
   113e8:	02083783          	ld	a5,32(a6)
   113ec:	00013e37          	lui	t3,0x13
   113f0:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   113f4:	2fc78a63          	beq	a5,t3,116e8 <_malloc_r+0x444>
   113f8:	0087b303          	ld	t1,8(a5)
   113fc:	01f00613          	li	a2,31
   11400:	ffc37313          	andi	t1,t1,-4
   11404:	40e306b3          	sub	a3,t1,a4
   11408:	4ad64463          	blt	a2,a3,118b0 <_malloc_r+0x60c>
   1140c:	03c83423          	sd	t3,40(a6)
   11410:	03c83023          	sd	t3,32(a6)
   11414:	4606da63          	bgez	a3,11888 <_malloc_r+0x5e4>
   11418:	1ff00693          	li	a3,511
   1141c:	00883583          	ld	a1,8(a6)
   11420:	3466ee63          	bltu	a3,t1,1177c <_malloc_r+0x4d8>
   11424:	00335313          	srli	t1,t1,0x3
   11428:	00131693          	slli	a3,t1,0x1
   1142c:	0026869b          	addiw	a3,a3,2
   11430:	00369693          	slli	a3,a3,0x3
   11434:	00d806b3          	add	a3,a6,a3
   11438:	0006b503          	ld	a0,0(a3)
   1143c:	4023531b          	sraiw	t1,t1,0x2
   11440:	00100613          	li	a2,1
   11444:	00661633          	sll	a2,a2,t1
   11448:	00c5e5b3          	or	a1,a1,a2
   1144c:	ff068613          	addi	a2,a3,-16
   11450:	00a7b823          	sd	a0,16(a5)
   11454:	00c7bc23          	sd	a2,24(a5)
   11458:	00b83423          	sd	a1,8(a6)
   1145c:	00f6b023          	sd	a5,0(a3)
   11460:	00f53c23          	sd	a5,24(a0)
   11464:	4028d79b          	sraiw	a5,a7,0x2
   11468:	00100513          	li	a0,1
   1146c:	00f51533          	sll	a0,a0,a5
   11470:	0aa5ec63          	bltu	a1,a0,11528 <_malloc_r+0x284>
   11474:	00b577b3          	and	a5,a0,a1
   11478:	02079463          	bnez	a5,114a0 <_malloc_r+0x1fc>
   1147c:	00151513          	slli	a0,a0,0x1
   11480:	ffc8f893          	andi	a7,a7,-4
   11484:	00b577b3          	and	a5,a0,a1
   11488:	0048889b          	addiw	a7,a7,4
   1148c:	00079a63          	bnez	a5,114a0 <_malloc_r+0x1fc>
   11490:	00151513          	slli	a0,a0,0x1
   11494:	00b577b3          	and	a5,a0,a1
   11498:	0048889b          	addiw	a7,a7,4
   1149c:	fe078ae3          	beqz	a5,11490 <_malloc_r+0x1ec>
   114a0:	01f00e93          	li	t4,31
   114a4:	00189f13          	slli	t5,a7,0x1
   114a8:	002f0f1b          	addiw	t5,t5,2
   114ac:	003f1f13          	slli	t5,t5,0x3
   114b0:	ff0f0f13          	addi	t5,t5,-16
   114b4:	01e80f33          	add	t5,a6,t5
   114b8:	000f0313          	mv	t1,t5
   114bc:	01833683          	ld	a3,24(t1)
   114c0:	00088f93          	mv	t6,a7
   114c4:	34d30263          	beq	t1,a3,11808 <_malloc_r+0x564>
   114c8:	0086b603          	ld	a2,8(a3)
   114cc:	00068793          	mv	a5,a3
   114d0:	0186b683          	ld	a3,24(a3)
   114d4:	ffc67613          	andi	a2,a2,-4
   114d8:	40e605b3          	sub	a1,a2,a4
   114dc:	34bec263          	blt	t4,a1,11820 <_malloc_r+0x57c>
   114e0:	fe05c2e3          	bltz	a1,114c4 <_malloc_r+0x220>
   114e4:	00c78633          	add	a2,a5,a2
   114e8:	00863703          	ld	a4,8(a2)
   114ec:	0107b583          	ld	a1,16(a5)
   114f0:	00040513          	mv	a0,s0
   114f4:	00176713          	ori	a4,a4,1
   114f8:	00e63423          	sd	a4,8(a2)
   114fc:	00d5bc23          	sd	a3,24(a1)
   11500:	00b6b823          	sd	a1,16(a3)
   11504:	00f13423          	sd	a5,8(sp)
   11508:	684000ef          	jal	11b8c <__malloc_unlock>
   1150c:	00813783          	ld	a5,8(sp)
   11510:	01078513          	addi	a0,a5,16
   11514:	e35ff06f          	j	11348 <_malloc_r+0xa4>
   11518:	40000513          	li	a0,1024
   1151c:	04000893          	li	a7,64
   11520:	03f00e13          	li	t3,63
   11524:	e81ff06f          	j	113a4 <_malloc_r+0x100>
   11528:	01083783          	ld	a5,16(a6)
   1152c:	0087b683          	ld	a3,8(a5)
   11530:	ffc6f893          	andi	a7,a3,-4
   11534:	40e88633          	sub	a2,a7,a4
   11538:	00e8e663          	bltu	a7,a4,11544 <_malloc_r+0x2a0>
   1153c:	02062693          	slti	a3,a2,32
   11540:	1a068863          	beqz	a3,116f0 <_malloc_r+0x44c>
   11544:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11548:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1154c:	fff00693          	li	a3,-1
   11550:	00b705b3          	add	a1,a4,a1
   11554:	44d60663          	beq	a2,a3,119a0 <_malloc_r+0x6fc>
   11558:	000016b7          	lui	a3,0x1
   1155c:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11560:	00d585b3          	add	a1,a1,a3
   11564:	fffff6b7          	lui	a3,0xfffff
   11568:	00d5f5b3          	and	a1,a1,a3
   1156c:	00040513          	mv	a0,s0
   11570:	03013423          	sd	a6,40(sp)
   11574:	02f13023          	sd	a5,32(sp)
   11578:	00e13c23          	sd	a4,24(sp)
   1157c:	01113823          	sd	a7,16(sp)
   11580:	00b13423          	sd	a1,8(sp)
   11584:	271000ef          	jal	11ff4 <_sbrk_r>
   11588:	fff00693          	li	a3,-1
   1158c:	00813583          	ld	a1,8(sp)
   11590:	01013883          	ld	a7,16(sp)
   11594:	01813703          	ld	a4,24(sp)
   11598:	02013783          	ld	a5,32(sp)
   1159c:	02813803          	ld	a6,40(sp)
   115a0:	00050313          	mv	t1,a0
   115a4:	36d50663          	beq	a0,a3,11910 <_malloc_r+0x66c>
   115a8:	011786b3          	add	a3,a5,a7
   115ac:	36d56063          	bltu	a0,a3,1190c <_malloc_r+0x668>
   115b0:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   115b4:	000e2603          	lw	a2,0(t3)
   115b8:	00b6063b          	addw	a2,a2,a1
   115bc:	00ce2023          	sw	a2,0(t3)
   115c0:	00060513          	mv	a0,a2
   115c4:	4a668c63          	beq	a3,t1,11a7c <_malloc_r+0x7d8>
   115c8:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   115cc:	fff00613          	li	a2,-1
   115d0:	4ccf0463          	beq	t5,a2,11a98 <_malloc_r+0x7f4>
   115d4:	40d306b3          	sub	a3,t1,a3
   115d8:	00a686bb          	addw	a3,a3,a0
   115dc:	00de2023          	sw	a3,0(t3)
   115e0:	00f37e93          	andi	t4,t1,15
   115e4:	3c0e8e63          	beqz	t4,119c0 <_malloc_r+0x71c>
   115e8:	ff037313          	andi	t1,t1,-16
   115ec:	000016b7          	lui	a3,0x1
   115f0:	01030313          	addi	t1,t1,16
   115f4:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   115f8:	00b30633          	add	a2,t1,a1
   115fc:	41d685b3          	sub	a1,a3,t4
   11600:	40c585b3          	sub	a1,a1,a2
   11604:	03459593          	slli	a1,a1,0x34
   11608:	0345d593          	srli	a1,a1,0x34
   1160c:	00040513          	mv	a0,s0
   11610:	05c13023          	sd	t3,64(sp)
   11614:	03013c23          	sd	a6,56(sp)
   11618:	02f13823          	sd	a5,48(sp)
   1161c:	02e13423          	sd	a4,40(sp)
   11620:	03113023          	sd	a7,32(sp)
   11624:	00613c23          	sd	t1,24(sp)
   11628:	01d13823          	sd	t4,16(sp)
   1162c:	00c13423          	sd	a2,8(sp)
   11630:	04b13423          	sd	a1,72(sp)
   11634:	1c1000ef          	jal	11ff4 <_sbrk_r>
   11638:	00050693          	mv	a3,a0
   1163c:	fff00513          	li	a0,-1
   11640:	00813603          	ld	a2,8(sp)
   11644:	01013e83          	ld	t4,16(sp)
   11648:	01813303          	ld	t1,24(sp)
   1164c:	02013883          	ld	a7,32(sp)
   11650:	02813703          	ld	a4,40(sp)
   11654:	03013783          	ld	a5,48(sp)
   11658:	03813803          	ld	a6,56(sp)
   1165c:	04013e03          	ld	t3,64(sp)
   11660:	48a68663          	beq	a3,a0,11aec <_malloc_r+0x848>
   11664:	04813583          	ld	a1,72(sp)
   11668:	0005851b          	sext.w	a0,a1
   1166c:	000e2603          	lw	a2,0(t3)
   11670:	406686b3          	sub	a3,a3,t1
   11674:	00b686b3          	add	a3,a3,a1
   11678:	0016e693          	ori	a3,a3,1
   1167c:	00683823          	sd	t1,16(a6)
   11680:	00a6063b          	addw	a2,a2,a0
   11684:	00d33423          	sd	a3,8(t1)
   11688:	00ce2023          	sw	a2,0(t3)
   1168c:	03078e63          	beq	a5,a6,116c8 <_malloc_r+0x424>
   11690:	01f00513          	li	a0,31
   11694:	41157663          	bgeu	a0,a7,11aa0 <_malloc_r+0x7fc>
   11698:	0087b583          	ld	a1,8(a5)
   1169c:	fe888693          	addi	a3,a7,-24
   116a0:	ff06f693          	andi	a3,a3,-16
   116a4:	0015f593          	andi	a1,a1,1
   116a8:	00d5e5b3          	or	a1,a1,a3
   116ac:	00b7b423          	sd	a1,8(a5)
   116b0:	00900893          	li	a7,9
   116b4:	00d785b3          	add	a1,a5,a3
   116b8:	0115b423          	sd	a7,8(a1)
   116bc:	0115b823          	sd	a7,16(a1)
   116c0:	44d56863          	bltu	a0,a3,11b10 <_malloc_r+0x86c>
   116c4:	00833683          	ld	a3,8(t1)
   116c8:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   116cc:	00c5f463          	bgeu	a1,a2,116d4 <_malloc_r+0x430>
   116d0:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   116d4:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   116d8:	00c5f463          	bgeu	a1,a2,116e0 <_malloc_r+0x43c>
   116dc:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   116e0:	00030793          	mv	a5,t1
   116e4:	2340006f          	j	11918 <_malloc_r+0x674>
   116e8:	00883583          	ld	a1,8(a6)
   116ec:	d79ff06f          	j	11464 <_malloc_r+0x1c0>
   116f0:	00176693          	ori	a3,a4,1
   116f4:	00d7b423          	sd	a3,8(a5)
   116f8:	00e78733          	add	a4,a5,a4
   116fc:	00166613          	ori	a2,a2,1
   11700:	00e83823          	sd	a4,16(a6)
   11704:	00040513          	mv	a0,s0
   11708:	00c73423          	sd	a2,8(a4)
   1170c:	00f13423          	sd	a5,8(sp)
   11710:	47c000ef          	jal	11b8c <__malloc_unlock>
   11714:	00813783          	ld	a5,8(sp)
   11718:	05813083          	ld	ra,88(sp)
   1171c:	05013403          	ld	s0,80(sp)
   11720:	01078513          	addi	a0,a5,16
   11724:	06010113          	addi	sp,sp,96
   11728:	00008067          	ret
   1172c:	0107b603          	ld	a2,16(a5)
   11730:	00d786b3          	add	a3,a5,a3
   11734:	0086b703          	ld	a4,8(a3)
   11738:	00b63c23          	sd	a1,24(a2)
   1173c:	00c5b823          	sd	a2,16(a1)
   11740:	00176713          	ori	a4,a4,1
   11744:	00040513          	mv	a0,s0
   11748:	00e6b423          	sd	a4,8(a3)
   1174c:	00f13423          	sd	a5,8(sp)
   11750:	43c000ef          	jal	11b8c <__malloc_unlock>
   11754:	00813783          	ld	a5,8(sp)
   11758:	05813083          	ld	ra,88(sp)
   1175c:	05013403          	ld	s0,80(sp)
   11760:	01078513          	addi	a0,a5,16
   11764:	06010113          	addi	sp,sp,96
   11768:	00008067          	ret
   1176c:	0186b783          	ld	a5,24(a3)
   11770:	0028889b          	addiw	a7,a7,2
   11774:	c6f68ae3          	beq	a3,a5,113e8 <_malloc_r+0x144>
   11778:	b79ff06f          	j	112f0 <_malloc_r+0x4c>
   1177c:	00935693          	srli	a3,t1,0x9
   11780:	00400613          	li	a2,4
   11784:	16d67863          	bgeu	a2,a3,118f4 <_malloc_r+0x650>
   11788:	01400613          	li	a2,20
   1178c:	28d66e63          	bltu	a2,a3,11a28 <_malloc_r+0x784>
   11790:	00169513          	slli	a0,a3,0x1
   11794:	0b85051b          	addiw	a0,a0,184
   11798:	00351513          	slli	a0,a0,0x3
   1179c:	05b6861b          	addiw	a2,a3,91
   117a0:	00a80533          	add	a0,a6,a0
   117a4:	00053683          	ld	a3,0(a0)
   117a8:	ff050513          	addi	a0,a0,-16
   117ac:	00d51863          	bne	a0,a3,117bc <_malloc_r+0x518>
   117b0:	1f80006f          	j	119a8 <_malloc_r+0x704>
   117b4:	0106b683          	ld	a3,16(a3)
   117b8:	00d50863          	beq	a0,a3,117c8 <_malloc_r+0x524>
   117bc:	0086b603          	ld	a2,8(a3)
   117c0:	ffc67613          	andi	a2,a2,-4
   117c4:	fec368e3          	bltu	t1,a2,117b4 <_malloc_r+0x510>
   117c8:	0186b503          	ld	a0,24(a3)
   117cc:	00a7bc23          	sd	a0,24(a5)
   117d0:	00d7b823          	sd	a3,16(a5)
   117d4:	00f53823          	sd	a5,16(a0)
   117d8:	00f6bc23          	sd	a5,24(a3)
   117dc:	c89ff06f          	j	11464 <_malloc_r+0x1c0>
   117e0:	01400693          	li	a3,20
   117e4:	14f6fa63          	bgeu	a3,a5,11938 <_malloc_r+0x694>
   117e8:	05400693          	li	a3,84
   117ec:	24f6ee63          	bltu	a3,a5,11a48 <_malloc_r+0x7a4>
   117f0:	00c75793          	srli	a5,a4,0xc
   117f4:	06f7889b          	addiw	a7,a5,111
   117f8:	0018951b          	slliw	a0,a7,0x1
   117fc:	06e78e1b          	addiw	t3,a5,110
   11800:	00351513          	slli	a0,a0,0x3
   11804:	ba1ff06f          	j	113a4 <_malloc_r+0x100>
   11808:	001f8f9b          	addiw	t6,t6,1
   1180c:	003ff793          	andi	a5,t6,3
   11810:	01030313          	addi	t1,t1,16
   11814:	14078263          	beqz	a5,11958 <_malloc_r+0x6b4>
   11818:	01833683          	ld	a3,24(t1)
   1181c:	ca9ff06f          	j	114c4 <_malloc_r+0x220>
   11820:	0107b503          	ld	a0,16(a5)
   11824:	00176893          	ori	a7,a4,1
   11828:	0117b423          	sd	a7,8(a5)
   1182c:	00d53c23          	sd	a3,24(a0)
   11830:	00a6b823          	sd	a0,16(a3)
   11834:	00e78733          	add	a4,a5,a4
   11838:	02e83423          	sd	a4,40(a6)
   1183c:	02e83023          	sd	a4,32(a6)
   11840:	0015e693          	ori	a3,a1,1
   11844:	00c78633          	add	a2,a5,a2
   11848:	01c73c23          	sd	t3,24(a4)
   1184c:	01c73823          	sd	t3,16(a4)
   11850:	00d73423          	sd	a3,8(a4)
   11854:	00040513          	mv	a0,s0
   11858:	00b63023          	sd	a1,0(a2)
   1185c:	00f13423          	sd	a5,8(sp)
   11860:	32c000ef          	jal	11b8c <__malloc_unlock>
   11864:	00813783          	ld	a5,8(sp)
   11868:	01078513          	addi	a0,a5,16
   1186c:	addff06f          	j	11348 <_malloc_r+0xa4>
   11870:	00375893          	srli	a7,a4,0x3
   11874:	00189693          	slli	a3,a7,0x1
   11878:	0026869b          	addiw	a3,a3,2
   1187c:	00369693          	slli	a3,a3,0x3
   11880:	0008889b          	sext.w	a7,a7
   11884:	a55ff06f          	j	112d8 <_malloc_r+0x34>
   11888:	00678333          	add	t1,a5,t1
   1188c:	00833703          	ld	a4,8(t1)
   11890:	00040513          	mv	a0,s0
   11894:	00f13423          	sd	a5,8(sp)
   11898:	00176713          	ori	a4,a4,1
   1189c:	00e33423          	sd	a4,8(t1)
   118a0:	2ec000ef          	jal	11b8c <__malloc_unlock>
   118a4:	00813783          	ld	a5,8(sp)
   118a8:	01078513          	addi	a0,a5,16
   118ac:	a9dff06f          	j	11348 <_malloc_r+0xa4>
   118b0:	00176613          	ori	a2,a4,1
   118b4:	00c7b423          	sd	a2,8(a5)
   118b8:	00e78733          	add	a4,a5,a4
   118bc:	02e83423          	sd	a4,40(a6)
   118c0:	02e83023          	sd	a4,32(a6)
   118c4:	0016e613          	ori	a2,a3,1
   118c8:	00678333          	add	t1,a5,t1
   118cc:	01c73c23          	sd	t3,24(a4)
   118d0:	01c73823          	sd	t3,16(a4)
   118d4:	00c73423          	sd	a2,8(a4)
   118d8:	00040513          	mv	a0,s0
   118dc:	00d33023          	sd	a3,0(t1)
   118e0:	00f13423          	sd	a5,8(sp)
   118e4:	2a8000ef          	jal	11b8c <__malloc_unlock>
   118e8:	00813783          	ld	a5,8(sp)
   118ec:	01078513          	addi	a0,a5,16
   118f0:	a59ff06f          	j	11348 <_malloc_r+0xa4>
   118f4:	00635693          	srli	a3,t1,0x6
   118f8:	00169513          	slli	a0,a3,0x1
   118fc:	0725051b          	addiw	a0,a0,114
   11900:	00351513          	slli	a0,a0,0x3
   11904:	0386861b          	addiw	a2,a3,56
   11908:	e99ff06f          	j	117a0 <_malloc_r+0x4fc>
   1190c:	15078e63          	beq	a5,a6,11a68 <_malloc_r+0x7c4>
   11910:	01083783          	ld	a5,16(a6)
   11914:	0087b683          	ld	a3,8(a5)
   11918:	ffc6f693          	andi	a3,a3,-4
   1191c:	40e68633          	sub	a2,a3,a4
   11920:	00e6e663          	bltu	a3,a4,1192c <_malloc_r+0x688>
   11924:	02062693          	slti	a3,a2,32
   11928:	dc0684e3          	beqz	a3,116f0 <_malloc_r+0x44c>
   1192c:	00040513          	mv	a0,s0
   11930:	25c000ef          	jal	11b8c <__malloc_unlock>
   11934:	a11ff06f          	j	11344 <_malloc_r+0xa0>
   11938:	05c7889b          	addiw	a7,a5,92
   1193c:	0018951b          	slliw	a0,a7,0x1
   11940:	05b78e1b          	addiw	t3,a5,91
   11944:	00351513          	slli	a0,a0,0x3
   11948:	a5dff06f          	j	113a4 <_malloc_r+0x100>
   1194c:	010f3783          	ld	a5,16(t5)
   11950:	fff8889b          	addiw	a7,a7,-1
   11954:	23e79663          	bne	a5,t5,11b80 <_malloc_r+0x8dc>
   11958:	0038f793          	andi	a5,a7,3
   1195c:	ff0f0f13          	addi	t5,t5,-16
   11960:	fe0796e3          	bnez	a5,1194c <_malloc_r+0x6a8>
   11964:	00883683          	ld	a3,8(a6)
   11968:	fff54793          	not	a5,a0
   1196c:	00d7f7b3          	and	a5,a5,a3
   11970:	00f83423          	sd	a5,8(a6)
   11974:	00151513          	slli	a0,a0,0x1
   11978:	fff50693          	addi	a3,a0,-1
   1197c:	baf6f6e3          	bgeu	a3,a5,11528 <_malloc_r+0x284>
   11980:	00f576b3          	and	a3,a0,a5
   11984:	00069a63          	bnez	a3,11998 <_malloc_r+0x6f4>
   11988:	00151513          	slli	a0,a0,0x1
   1198c:	00f576b3          	and	a3,a0,a5
   11990:	004f8f9b          	addiw	t6,t6,4
   11994:	fe068ae3          	beqz	a3,11988 <_malloc_r+0x6e4>
   11998:	000f8893          	mv	a7,t6
   1199c:	b09ff06f          	j	114a4 <_malloc_r+0x200>
   119a0:	02058593          	addi	a1,a1,32
   119a4:	bc9ff06f          	j	1156c <_malloc_r+0x2c8>
   119a8:	4026561b          	sraiw	a2,a2,0x2
   119ac:	00100313          	li	t1,1
   119b0:	00c31633          	sll	a2,t1,a2
   119b4:	00c5e5b3          	or	a1,a1,a2
   119b8:	00b83423          	sd	a1,8(a6)
   119bc:	e11ff06f          	j	117cc <_malloc_r+0x528>
   119c0:	00b30633          	add	a2,t1,a1
   119c4:	40c005b3          	neg	a1,a2
   119c8:	03459593          	slli	a1,a1,0x34
   119cc:	0345d593          	srli	a1,a1,0x34
   119d0:	00040513          	mv	a0,s0
   119d4:	03c13c23          	sd	t3,56(sp)
   119d8:	03013823          	sd	a6,48(sp)
   119dc:	02f13423          	sd	a5,40(sp)
   119e0:	02e13023          	sd	a4,32(sp)
   119e4:	01113c23          	sd	a7,24(sp)
   119e8:	00613823          	sd	t1,16(sp)
   119ec:	00c13423          	sd	a2,8(sp)
   119f0:	04b13023          	sd	a1,64(sp)
   119f4:	600000ef          	jal	11ff4 <_sbrk_r>
   119f8:	00050693          	mv	a3,a0
   119fc:	fff00513          	li	a0,-1
   11a00:	01013303          	ld	t1,16(sp)
   11a04:	01813883          	ld	a7,24(sp)
   11a08:	02013703          	ld	a4,32(sp)
   11a0c:	02813783          	ld	a5,40(sp)
   11a10:	03013803          	ld	a6,48(sp)
   11a14:	03813e03          	ld	t3,56(sp)
   11a18:	0ea68463          	beq	a3,a0,11b00 <_malloc_r+0x85c>
   11a1c:	04013583          	ld	a1,64(sp)
   11a20:	0005851b          	sext.w	a0,a1
   11a24:	c49ff06f          	j	1166c <_malloc_r+0x3c8>
   11a28:	05400613          	li	a2,84
   11a2c:	08d66063          	bltu	a2,a3,11aac <_malloc_r+0x808>
   11a30:	00c35693          	srli	a3,t1,0xc
   11a34:	00169513          	slli	a0,a3,0x1
   11a38:	0de5051b          	addiw	a0,a0,222
   11a3c:	00351513          	slli	a0,a0,0x3
   11a40:	06e6861b          	addiw	a2,a3,110
   11a44:	d5dff06f          	j	117a0 <_malloc_r+0x4fc>
   11a48:	15400693          	li	a3,340
   11a4c:	08f6e063          	bltu	a3,a5,11acc <_malloc_r+0x828>
   11a50:	00f75793          	srli	a5,a4,0xf
   11a54:	0787889b          	addiw	a7,a5,120
   11a58:	0018951b          	slliw	a0,a7,0x1
   11a5c:	07778e1b          	addiw	t3,a5,119
   11a60:	00351513          	slli	a0,a0,0x3
   11a64:	941ff06f          	j	113a4 <_malloc_r+0x100>
   11a68:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a6c:	000e2503          	lw	a0,0(t3)
   11a70:	00b5053b          	addw	a0,a0,a1
   11a74:	00ae2023          	sw	a0,0(t3)
   11a78:	b51ff06f          	j	115c8 <_malloc_r+0x324>
   11a7c:	03431f13          	slli	t5,t1,0x34
   11a80:	b40f14e3          	bnez	t5,115c8 <_malloc_r+0x324>
   11a84:	01083303          	ld	t1,16(a6)
   11a88:	00b885b3          	add	a1,a7,a1
   11a8c:	0015e693          	ori	a3,a1,1
   11a90:	00d33423          	sd	a3,8(t1)
   11a94:	c35ff06f          	j	116c8 <_malloc_r+0x424>
   11a98:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11a9c:	b45ff06f          	j	115e0 <_malloc_r+0x33c>
   11aa0:	00100793          	li	a5,1
   11aa4:	00f33423          	sd	a5,8(t1)
   11aa8:	e85ff06f          	j	1192c <_malloc_r+0x688>
   11aac:	15400613          	li	a2,340
   11ab0:	08d66a63          	bltu	a2,a3,11b44 <_malloc_r+0x8a0>
   11ab4:	00f35693          	srli	a3,t1,0xf
   11ab8:	00169513          	slli	a0,a3,0x1
   11abc:	0f05051b          	addiw	a0,a0,240
   11ac0:	00351513          	slli	a0,a0,0x3
   11ac4:	0776861b          	addiw	a2,a3,119
   11ac8:	cd9ff06f          	j	117a0 <_malloc_r+0x4fc>
   11acc:	55400693          	li	a3,1364
   11ad0:	08f6ea63          	bltu	a3,a5,11b64 <_malloc_r+0x8c0>
   11ad4:	01275793          	srli	a5,a4,0x12
   11ad8:	07d7889b          	addiw	a7,a5,125
   11adc:	0018951b          	slliw	a0,a7,0x1
   11ae0:	07c78e1b          	addiw	t3,a5,124
   11ae4:	00351513          	slli	a0,a0,0x3
   11ae8:	8bdff06f          	j	113a4 <_malloc_r+0x100>
   11aec:	ff0e8e93          	addi	t4,t4,-16
   11af0:	01d606b3          	add	a3,a2,t4
   11af4:	00000513          	li	a0,0
   11af8:	00000593          	li	a1,0
   11afc:	b71ff06f          	j	1166c <_malloc_r+0x3c8>
   11b00:	00813683          	ld	a3,8(sp)
   11b04:	00000593          	li	a1,0
   11b08:	00000513          	li	a0,0
   11b0c:	b61ff06f          	j	1166c <_malloc_r+0x3c8>
   11b10:	01078593          	addi	a1,a5,16
   11b14:	00040513          	mv	a0,s0
   11b18:	01c13c23          	sd	t3,24(sp)
   11b1c:	01013823          	sd	a6,16(sp)
   11b20:	00e13423          	sd	a4,8(sp)
   11b24:	c7cff0ef          	jal	10fa0 <_free_r>
   11b28:	01013803          	ld	a6,16(sp)
   11b2c:	01813e03          	ld	t3,24(sp)
   11b30:	00813703          	ld	a4,8(sp)
   11b34:	01083303          	ld	t1,16(a6)
   11b38:	000e2603          	lw	a2,0(t3)
   11b3c:	00833683          	ld	a3,8(t1)
   11b40:	b89ff06f          	j	116c8 <_malloc_r+0x424>
   11b44:	55400613          	li	a2,1364
   11b48:	02d66663          	bltu	a2,a3,11b74 <_malloc_r+0x8d0>
   11b4c:	01235693          	srli	a3,t1,0x12
   11b50:	00169513          	slli	a0,a3,0x1
   11b54:	0fa5051b          	addiw	a0,a0,250
   11b58:	00351513          	slli	a0,a0,0x3
   11b5c:	07c6861b          	addiw	a2,a3,124
   11b60:	c41ff06f          	j	117a0 <_malloc_r+0x4fc>
   11b64:	7f000513          	li	a0,2032
   11b68:	07f00893          	li	a7,127
   11b6c:	07e00e13          	li	t3,126
   11b70:	835ff06f          	j	113a4 <_malloc_r+0x100>
   11b74:	7f000513          	li	a0,2032
   11b78:	07e00613          	li	a2,126
   11b7c:	c25ff06f          	j	117a0 <_malloc_r+0x4fc>
   11b80:	00883783          	ld	a5,8(a6)
   11b84:	df1ff06f          	j	11974 <_malloc_r+0x6d0>

0000000000011b88 <__malloc_lock>:
   11b88:	00008067          	ret

0000000000011b8c <__malloc_unlock>:
   11b8c:	00008067          	ret

0000000000011b90 <_fclose_r>:
   11b90:	fe010113          	addi	sp,sp,-32
   11b94:	00113c23          	sd	ra,24(sp)
   11b98:	01213023          	sd	s2,0(sp)
   11b9c:	02058863          	beqz	a1,11bcc <_fclose_r+0x3c>
   11ba0:	00813823          	sd	s0,16(sp)
   11ba4:	00913423          	sd	s1,8(sp)
   11ba8:	00058413          	mv	s0,a1
   11bac:	00050493          	mv	s1,a0
   11bb0:	00050663          	beqz	a0,11bbc <_fclose_r+0x2c>
   11bb4:	04853783          	ld	a5,72(a0)
   11bb8:	0c078c63          	beqz	a5,11c90 <_fclose_r+0x100>
   11bbc:	01041783          	lh	a5,16(s0)
   11bc0:	02079263          	bnez	a5,11be4 <_fclose_r+0x54>
   11bc4:	01013403          	ld	s0,16(sp)
   11bc8:	00813483          	ld	s1,8(sp)
   11bcc:	01813083          	ld	ra,24(sp)
   11bd0:	00000913          	li	s2,0
   11bd4:	00090513          	mv	a0,s2
   11bd8:	00013903          	ld	s2,0(sp)
   11bdc:	02010113          	addi	sp,sp,32
   11be0:	00008067          	ret
   11be4:	00040593          	mv	a1,s0
   11be8:	00048513          	mv	a0,s1
   11bec:	0b8000ef          	jal	11ca4 <__sflush_r>
   11bf0:	05043783          	ld	a5,80(s0)
   11bf4:	00050913          	mv	s2,a0
   11bf8:	00078a63          	beqz	a5,11c0c <_fclose_r+0x7c>
   11bfc:	03043583          	ld	a1,48(s0)
   11c00:	00048513          	mv	a0,s1
   11c04:	000780e7          	jalr	a5
   11c08:	06054463          	bltz	a0,11c70 <_fclose_r+0xe0>
   11c0c:	01045783          	lhu	a5,16(s0)
   11c10:	0807f793          	andi	a5,a5,128
   11c14:	06079663          	bnez	a5,11c80 <_fclose_r+0xf0>
   11c18:	05843583          	ld	a1,88(s0)
   11c1c:	00058c63          	beqz	a1,11c34 <_fclose_r+0xa4>
   11c20:	07440793          	addi	a5,s0,116
   11c24:	00f58663          	beq	a1,a5,11c30 <_fclose_r+0xa0>
   11c28:	00048513          	mv	a0,s1
   11c2c:	b74ff0ef          	jal	10fa0 <_free_r>
   11c30:	04043c23          	sd	zero,88(s0)
   11c34:	07843583          	ld	a1,120(s0)
   11c38:	00058863          	beqz	a1,11c48 <_fclose_r+0xb8>
   11c3c:	00048513          	mv	a0,s1
   11c40:	b60ff0ef          	jal	10fa0 <_free_r>
   11c44:	06043c23          	sd	zero,120(s0)
   11c48:	aa5fe0ef          	jal	106ec <__sfp_lock_acquire>
   11c4c:	00041823          	sh	zero,16(s0)
   11c50:	aa1fe0ef          	jal	106f0 <__sfp_lock_release>
   11c54:	01813083          	ld	ra,24(sp)
   11c58:	01013403          	ld	s0,16(sp)
   11c5c:	00813483          	ld	s1,8(sp)
   11c60:	00090513          	mv	a0,s2
   11c64:	00013903          	ld	s2,0(sp)
   11c68:	02010113          	addi	sp,sp,32
   11c6c:	00008067          	ret
   11c70:	01045783          	lhu	a5,16(s0)
   11c74:	fff00913          	li	s2,-1
   11c78:	0807f793          	andi	a5,a5,128
   11c7c:	f8078ee3          	beqz	a5,11c18 <_fclose_r+0x88>
   11c80:	01843583          	ld	a1,24(s0)
   11c84:	00048513          	mv	a0,s1
   11c88:	b18ff0ef          	jal	10fa0 <_free_r>
   11c8c:	f8dff06f          	j	11c18 <_fclose_r+0x88>
   11c90:	a39fe0ef          	jal	106c8 <__sinit>
   11c94:	f29ff06f          	j	11bbc <_fclose_r+0x2c>

0000000000011c98 <fclose>:
   11c98:	00050593          	mv	a1,a0
   11c9c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11ca0:	ef1ff06f          	j	11b90 <_fclose_r>

0000000000011ca4 <__sflush_r>:
   11ca4:	01059703          	lh	a4,16(a1)
   11ca8:	fd010113          	addi	sp,sp,-48
   11cac:	02813023          	sd	s0,32(sp)
   11cb0:	01313423          	sd	s3,8(sp)
   11cb4:	02113423          	sd	ra,40(sp)
   11cb8:	00877793          	andi	a5,a4,8
   11cbc:	00058413          	mv	s0,a1
   11cc0:	00050993          	mv	s3,a0
   11cc4:	12079263          	bnez	a5,11de8 <__sflush_r+0x144>
   11cc8:	000017b7          	lui	a5,0x1
   11ccc:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11cd0:	0085a683          	lw	a3,8(a1)
   11cd4:	00f767b3          	or	a5,a4,a5
   11cd8:	00f59823          	sh	a5,16(a1)
   11cdc:	18d05c63          	blez	a3,11e74 <__sflush_r+0x1d0>
   11ce0:	04843803          	ld	a6,72(s0)
   11ce4:	0e080663          	beqz	a6,11dd0 <__sflush_r+0x12c>
   11ce8:	00913c23          	sd	s1,24(sp)
   11cec:	03371693          	slli	a3,a4,0x33
   11cf0:	0009a483          	lw	s1,0(s3)
   11cf4:	0009a023          	sw	zero,0(s3)
   11cf8:	1806ca63          	bltz	a3,11e8c <__sflush_r+0x1e8>
   11cfc:	03043583          	ld	a1,48(s0)
   11d00:	00000613          	li	a2,0
   11d04:	00100693          	li	a3,1
   11d08:	00098513          	mv	a0,s3
   11d0c:	000800e7          	jalr	a6
   11d10:	fff00793          	li	a5,-1
   11d14:	00050613          	mv	a2,a0
   11d18:	1af50c63          	beq	a0,a5,11ed0 <__sflush_r+0x22c>
   11d1c:	01041783          	lh	a5,16(s0)
   11d20:	04843803          	ld	a6,72(s0)
   11d24:	0047f793          	andi	a5,a5,4
   11d28:	00078e63          	beqz	a5,11d44 <__sflush_r+0xa0>
   11d2c:	00842703          	lw	a4,8(s0)
   11d30:	05843783          	ld	a5,88(s0)
   11d34:	40e60633          	sub	a2,a2,a4
   11d38:	00078663          	beqz	a5,11d44 <__sflush_r+0xa0>
   11d3c:	07042783          	lw	a5,112(s0)
   11d40:	40f60633          	sub	a2,a2,a5
   11d44:	03043583          	ld	a1,48(s0)
   11d48:	00000693          	li	a3,0
   11d4c:	00098513          	mv	a0,s3
   11d50:	000800e7          	jalr	a6
   11d54:	fff00713          	li	a4,-1
   11d58:	01041783          	lh	a5,16(s0)
   11d5c:	12e51c63          	bne	a0,a4,11e94 <__sflush_r+0x1f0>
   11d60:	0009a683          	lw	a3,0(s3)
   11d64:	01d00713          	li	a4,29
   11d68:	18d76263          	bltu	a4,a3,11eec <__sflush_r+0x248>
   11d6c:	20400737          	lui	a4,0x20400
   11d70:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11d74:	00d75733          	srl	a4,a4,a3
   11d78:	00177713          	andi	a4,a4,1
   11d7c:	16070863          	beqz	a4,11eec <__sflush_r+0x248>
   11d80:	01843683          	ld	a3,24(s0)
   11d84:	fffff737          	lui	a4,0xfffff
   11d88:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d8c:	00e7f733          	and	a4,a5,a4
   11d90:	00e41823          	sh	a4,16(s0)
   11d94:	00042423          	sw	zero,8(s0)
   11d98:	00d43023          	sd	a3,0(s0)
   11d9c:	03379713          	slli	a4,a5,0x33
   11da0:	00075663          	bgez	a4,11dac <__sflush_r+0x108>
   11da4:	0009a783          	lw	a5,0(s3)
   11da8:	10078863          	beqz	a5,11eb8 <__sflush_r+0x214>
   11dac:	05843583          	ld	a1,88(s0)
   11db0:	0099a023          	sw	s1,0(s3)
   11db4:	10058a63          	beqz	a1,11ec8 <__sflush_r+0x224>
   11db8:	07440793          	addi	a5,s0,116
   11dbc:	00f58663          	beq	a1,a5,11dc8 <__sflush_r+0x124>
   11dc0:	00098513          	mv	a0,s3
   11dc4:	9dcff0ef          	jal	10fa0 <_free_r>
   11dc8:	01813483          	ld	s1,24(sp)
   11dcc:	04043c23          	sd	zero,88(s0)
   11dd0:	02813083          	ld	ra,40(sp)
   11dd4:	02013403          	ld	s0,32(sp)
   11dd8:	00813983          	ld	s3,8(sp)
   11ddc:	00000513          	li	a0,0
   11de0:	03010113          	addi	sp,sp,48
   11de4:	00008067          	ret
   11de8:	01213823          	sd	s2,16(sp)
   11dec:	0185b903          	ld	s2,24(a1)
   11df0:	08090a63          	beqz	s2,11e84 <__sflush_r+0x1e0>
   11df4:	00913c23          	sd	s1,24(sp)
   11df8:	0005b483          	ld	s1,0(a1)
   11dfc:	00377713          	andi	a4,a4,3
   11e00:	0125b023          	sd	s2,0(a1)
   11e04:	412484bb          	subw	s1,s1,s2
   11e08:	00000793          	li	a5,0
   11e0c:	00071463          	bnez	a4,11e14 <__sflush_r+0x170>
   11e10:	0205a783          	lw	a5,32(a1)
   11e14:	00f42623          	sw	a5,12(s0)
   11e18:	00904863          	bgtz	s1,11e28 <__sflush_r+0x184>
   11e1c:	0640006f          	j	11e80 <__sflush_r+0x1dc>
   11e20:	00a90933          	add	s2,s2,a0
   11e24:	04905e63          	blez	s1,11e80 <__sflush_r+0x1dc>
   11e28:	04043783          	ld	a5,64(s0)
   11e2c:	03043583          	ld	a1,48(s0)
   11e30:	00048693          	mv	a3,s1
   11e34:	00090613          	mv	a2,s2
   11e38:	00098513          	mv	a0,s3
   11e3c:	000780e7          	jalr	a5
   11e40:	40a484bb          	subw	s1,s1,a0
   11e44:	fca04ee3          	bgtz	a0,11e20 <__sflush_r+0x17c>
   11e48:	01045783          	lhu	a5,16(s0)
   11e4c:	01013903          	ld	s2,16(sp)
   11e50:	0407e793          	ori	a5,a5,64
   11e54:	02813083          	ld	ra,40(sp)
   11e58:	00f41823          	sh	a5,16(s0)
   11e5c:	02013403          	ld	s0,32(sp)
   11e60:	01813483          	ld	s1,24(sp)
   11e64:	00813983          	ld	s3,8(sp)
   11e68:	fff00513          	li	a0,-1
   11e6c:	03010113          	addi	sp,sp,48
   11e70:	00008067          	ret
   11e74:	0705a683          	lw	a3,112(a1)
   11e78:	e6d044e3          	bgtz	a3,11ce0 <__sflush_r+0x3c>
   11e7c:	f55ff06f          	j	11dd0 <__sflush_r+0x12c>
   11e80:	01813483          	ld	s1,24(sp)
   11e84:	01013903          	ld	s2,16(sp)
   11e88:	f49ff06f          	j	11dd0 <__sflush_r+0x12c>
   11e8c:	09043603          	ld	a2,144(s0)
   11e90:	e95ff06f          	j	11d24 <__sflush_r+0x80>
   11e94:	01843683          	ld	a3,24(s0)
   11e98:	fffff737          	lui	a4,0xfffff
   11e9c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11ea0:	00e7f733          	and	a4,a5,a4
   11ea4:	00e41823          	sh	a4,16(s0)
   11ea8:	00042423          	sw	zero,8(s0)
   11eac:	00d43023          	sd	a3,0(s0)
   11eb0:	03379713          	slli	a4,a5,0x33
   11eb4:	ee075ce3          	bgez	a4,11dac <__sflush_r+0x108>
   11eb8:	05843583          	ld	a1,88(s0)
   11ebc:	08a43823          	sd	a0,144(s0)
   11ec0:	0099a023          	sw	s1,0(s3)
   11ec4:	ee059ae3          	bnez	a1,11db8 <__sflush_r+0x114>
   11ec8:	01813483          	ld	s1,24(sp)
   11ecc:	f05ff06f          	j	11dd0 <__sflush_r+0x12c>
   11ed0:	0009a783          	lw	a5,0(s3)
   11ed4:	e40784e3          	beqz	a5,11d1c <__sflush_r+0x78>
   11ed8:	fe378713          	addi	a4,a5,-29
   11edc:	00070c63          	beqz	a4,11ef4 <__sflush_r+0x250>
   11ee0:	fea78793          	addi	a5,a5,-22
   11ee4:	00078863          	beqz	a5,11ef4 <__sflush_r+0x250>
   11ee8:	01045783          	lhu	a5,16(s0)
   11eec:	0407e793          	ori	a5,a5,64
   11ef0:	f65ff06f          	j	11e54 <__sflush_r+0x1b0>
   11ef4:	0099a023          	sw	s1,0(s3)
   11ef8:	01813483          	ld	s1,24(sp)
   11efc:	ed5ff06f          	j	11dd0 <__sflush_r+0x12c>

0000000000011f00 <_fflush_r>:
   11f00:	00050793          	mv	a5,a0
   11f04:	00050663          	beqz	a0,11f10 <_fflush_r+0x10>
   11f08:	04853703          	ld	a4,72(a0)
   11f0c:	00070e63          	beqz	a4,11f28 <_fflush_r+0x28>
   11f10:	01059703          	lh	a4,16(a1)
   11f14:	00071663          	bnez	a4,11f20 <_fflush_r+0x20>
   11f18:	00000513          	li	a0,0
   11f1c:	00008067          	ret
   11f20:	00078513          	mv	a0,a5
   11f24:	d81ff06f          	j	11ca4 <__sflush_r>
   11f28:	fe010113          	addi	sp,sp,-32
   11f2c:	00b13423          	sd	a1,8(sp)
   11f30:	00113c23          	sd	ra,24(sp)
   11f34:	00a13023          	sd	a0,0(sp)
   11f38:	f90fe0ef          	jal	106c8 <__sinit>
   11f3c:	00813583          	ld	a1,8(sp)
   11f40:	00013783          	ld	a5,0(sp)
   11f44:	01059703          	lh	a4,16(a1)
   11f48:	00070a63          	beqz	a4,11f5c <_fflush_r+0x5c>
   11f4c:	01813083          	ld	ra,24(sp)
   11f50:	00078513          	mv	a0,a5
   11f54:	02010113          	addi	sp,sp,32
   11f58:	d4dff06f          	j	11ca4 <__sflush_r>
   11f5c:	01813083          	ld	ra,24(sp)
   11f60:	00000513          	li	a0,0
   11f64:	02010113          	addi	sp,sp,32
   11f68:	00008067          	ret

0000000000011f6c <fflush>:
   11f6c:	06050063          	beqz	a0,11fcc <fflush+0x60>
   11f70:	00050593          	mv	a1,a0
   11f74:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f78:	00050663          	beqz	a0,11f84 <fflush+0x18>
   11f7c:	04853783          	ld	a5,72(a0)
   11f80:	00078c63          	beqz	a5,11f98 <fflush+0x2c>
   11f84:	01059783          	lh	a5,16(a1)
   11f88:	00079663          	bnez	a5,11f94 <fflush+0x28>
   11f8c:	00000513          	li	a0,0
   11f90:	00008067          	ret
   11f94:	d11ff06f          	j	11ca4 <__sflush_r>
   11f98:	fe010113          	addi	sp,sp,-32
   11f9c:	00b13423          	sd	a1,8(sp)
   11fa0:	00a13023          	sd	a0,0(sp)
   11fa4:	00113c23          	sd	ra,24(sp)
   11fa8:	f20fe0ef          	jal	106c8 <__sinit>
   11fac:	00813583          	ld	a1,8(sp)
   11fb0:	00013503          	ld	a0,0(sp)
   11fb4:	01059783          	lh	a5,16(a1)
   11fb8:	02079863          	bnez	a5,11fe8 <fflush+0x7c>
   11fbc:	01813083          	ld	ra,24(sp)
   11fc0:	00000513          	li	a0,0
   11fc4:	02010113          	addi	sp,sp,32
   11fc8:	00008067          	ret
   11fcc:	00013637          	lui	a2,0x13
   11fd0:	000125b7          	lui	a1,0x12
   11fd4:	00013537          	lui	a0,0x13
   11fd8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11fdc:	f0058593          	addi	a1,a1,-256 # 11f00 <_fflush_r>
   11fe0:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11fe4:	f40fe06f          	j	10724 <_fwalk_sglue>
   11fe8:	01813083          	ld	ra,24(sp)
   11fec:	02010113          	addi	sp,sp,32
   11ff0:	cb5ff06f          	j	11ca4 <__sflush_r>

0000000000011ff4 <_sbrk_r>:
   11ff4:	fe010113          	addi	sp,sp,-32
   11ff8:	00813823          	sd	s0,16(sp)
   11ffc:	00913423          	sd	s1,8(sp)
   12000:	00050493          	mv	s1,a0
   12004:	00058513          	mv	a0,a1
   12008:	00113c23          	sd	ra,24(sp)
   1200c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12010:	228000ef          	jal	12238 <_sbrk>
   12014:	fff00793          	li	a5,-1
   12018:	00f50c63          	beq	a0,a5,12030 <_sbrk_r+0x3c>
   1201c:	01813083          	ld	ra,24(sp)
   12020:	01013403          	ld	s0,16(sp)
   12024:	00813483          	ld	s1,8(sp)
   12028:	02010113          	addi	sp,sp,32
   1202c:	00008067          	ret
   12030:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12034:	fe0784e3          	beqz	a5,1201c <_sbrk_r+0x28>
   12038:	01813083          	ld	ra,24(sp)
   1203c:	01013403          	ld	s0,16(sp)
   12040:	00f4a023          	sw	a5,0(s1)
   12044:	00813483          	ld	s1,8(sp)
   12048:	02010113          	addi	sp,sp,32
   1204c:	00008067          	ret

0000000000012050 <__libc_fini_array>:
   12050:	fe010113          	addi	sp,sp,-32
   12054:	00813823          	sd	s0,16(sp)
   12058:	000137b7          	lui	a5,0x13
   1205c:	00013437          	lui	s0,0x13
   12060:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12064:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12068:	408787b3          	sub	a5,a5,s0
   1206c:	00913423          	sd	s1,8(sp)
   12070:	00113c23          	sd	ra,24(sp)
   12074:	4037d493          	srai	s1,a5,0x3
   12078:	02048063          	beqz	s1,12098 <__libc_fini_array+0x48>
   1207c:	ff840413          	addi	s0,s0,-8
   12080:	00f40433          	add	s0,s0,a5
   12084:	00043783          	ld	a5,0(s0)
   12088:	fff48493          	addi	s1,s1,-1
   1208c:	ff840413          	addi	s0,s0,-8
   12090:	000780e7          	jalr	a5
   12094:	fe0498e3          	bnez	s1,12084 <__libc_fini_array+0x34>
   12098:	01813083          	ld	ra,24(sp)
   1209c:	01013403          	ld	s0,16(sp)
   120a0:	00813483          	ld	s1,8(sp)
   120a4:	02010113          	addi	sp,sp,32
   120a8:	00008067          	ret

00000000000120ac <__register_exitproc>:
   120ac:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   120b0:	04078e63          	beqz	a5,1210c <__register_exitproc+0x60>
   120b4:	0087a703          	lw	a4,8(a5)
   120b8:	01f00813          	li	a6,31
   120bc:	08e84263          	blt	a6,a4,12140 <__register_exitproc+0x94>
   120c0:	02050863          	beqz	a0,120f0 <__register_exitproc+0x44>
   120c4:	00371813          	slli	a6,a4,0x3
   120c8:	01078833          	add	a6,a5,a6
   120cc:	10c83823          	sd	a2,272(a6)
   120d0:	3107a883          	lw	a7,784(a5)
   120d4:	00100613          	li	a2,1
   120d8:	00e6163b          	sllw	a2,a2,a4
   120dc:	00c8e8b3          	or	a7,a7,a2
   120e0:	3117a823          	sw	a7,784(a5)
   120e4:	20d83823          	sd	a3,528(a6)
   120e8:	00200693          	li	a3,2
   120ec:	02d50663          	beq	a0,a3,12118 <__register_exitproc+0x6c>
   120f0:	0017069b          	addiw	a3,a4,1
   120f4:	00371713          	slli	a4,a4,0x3
   120f8:	00d7a423          	sw	a3,8(a5)
   120fc:	00e787b3          	add	a5,a5,a4
   12100:	00b7b823          	sd	a1,16(a5)
   12104:	00000513          	li	a0,0
   12108:	00008067          	ret
   1210c:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12110:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12114:	fa1ff06f          	j	120b4 <__register_exitproc+0x8>
   12118:	3147a683          	lw	a3,788(a5)
   1211c:	00000513          	li	a0,0
   12120:	00d66633          	or	a2,a2,a3
   12124:	0017069b          	addiw	a3,a4,1
   12128:	00371713          	slli	a4,a4,0x3
   1212c:	30c7aa23          	sw	a2,788(a5)
   12130:	00d7a423          	sw	a3,8(a5)
   12134:	00e787b3          	add	a5,a5,a4
   12138:	00b7b823          	sd	a1,16(a5)
   1213c:	00008067          	ret
   12140:	fff00513          	li	a0,-1
   12144:	00008067          	ret

0000000000012148 <_close>:
   12148:	03900893          	li	a7,57
   1214c:	00000073          	ecall
   12150:	00054663          	bltz	a0,1215c <_close+0x14>
   12154:	0005051b          	sext.w	a0,a0
   12158:	00008067          	ret
   1215c:	fe010113          	addi	sp,sp,-32
   12160:	00113c23          	sd	ra,24(sp)
   12164:	00a13423          	sd	a0,8(sp)
   12168:	188000ef          	jal	122f0 <__errno>
   1216c:	00813783          	ld	a5,8(sp)
   12170:	01813083          	ld	ra,24(sp)
   12174:	40f007bb          	negw	a5,a5
   12178:	00f52023          	sw	a5,0(a0)
   1217c:	fff00513          	li	a0,-1
   12180:	02010113          	addi	sp,sp,32
   12184:	00008067          	ret

0000000000012188 <_exit>:
   12188:	05d00893          	li	a7,93
   1218c:	00000073          	ecall
   12190:	00054463          	bltz	a0,12198 <_exit+0x10>
   12194:	0000006f          	j	12194 <_exit+0xc>
   12198:	fe010113          	addi	sp,sp,-32
   1219c:	00113c23          	sd	ra,24(sp)
   121a0:	00a13423          	sd	a0,8(sp)
   121a4:	14c000ef          	jal	122f0 <__errno>
   121a8:	00813783          	ld	a5,8(sp)
   121ac:	40f007bb          	negw	a5,a5
   121b0:	00f52023          	sw	a5,0(a0)
   121b4:	0000006f          	j	121b4 <_exit+0x2c>

00000000000121b8 <_lseek>:
   121b8:	03e00893          	li	a7,62
   121bc:	00000073          	ecall
   121c0:	00054463          	bltz	a0,121c8 <_lseek+0x10>
   121c4:	00008067          	ret
   121c8:	fe010113          	addi	sp,sp,-32
   121cc:	00113c23          	sd	ra,24(sp)
   121d0:	00a13423          	sd	a0,8(sp)
   121d4:	11c000ef          	jal	122f0 <__errno>
   121d8:	00813783          	ld	a5,8(sp)
   121dc:	01813083          	ld	ra,24(sp)
   121e0:	40f007bb          	negw	a5,a5
   121e4:	00f52023          	sw	a5,0(a0)
   121e8:	fff00793          	li	a5,-1
   121ec:	00078513          	mv	a0,a5
   121f0:	02010113          	addi	sp,sp,32
   121f4:	00008067          	ret

00000000000121f8 <_read>:
   121f8:	03f00893          	li	a7,63
   121fc:	00000073          	ecall
   12200:	00054463          	bltz	a0,12208 <_read+0x10>
   12204:	00008067          	ret
   12208:	fe010113          	addi	sp,sp,-32
   1220c:	00113c23          	sd	ra,24(sp)
   12210:	00a13423          	sd	a0,8(sp)
   12214:	0dc000ef          	jal	122f0 <__errno>
   12218:	00813783          	ld	a5,8(sp)
   1221c:	01813083          	ld	ra,24(sp)
   12220:	40f007bb          	negw	a5,a5
   12224:	00f52023          	sw	a5,0(a0)
   12228:	fff00793          	li	a5,-1
   1222c:	00078513          	mv	a0,a5
   12230:	02010113          	addi	sp,sp,32
   12234:	00008067          	ret

0000000000012238 <_sbrk>:
   12238:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1223c:	ff010113          	addi	sp,sp,-16
   12240:	00113423          	sd	ra,8(sp)
   12244:	00050713          	mv	a4,a0
   12248:	02079063          	bnez	a5,12268 <_sbrk+0x30>
   1224c:	0d600893          	li	a7,214
   12250:	00000513          	li	a0,0
   12254:	00000073          	ecall
   12258:	fff00793          	li	a5,-1
   1225c:	02f50c63          	beq	a0,a5,12294 <_sbrk+0x5c>
   12260:	00050793          	mv	a5,a0
   12264:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12268:	00f70533          	add	a0,a4,a5
   1226c:	0d600893          	li	a7,214
   12270:	00000073          	ecall
   12274:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12278:	00f70733          	add	a4,a4,a5
   1227c:	00e51c63          	bne	a0,a4,12294 <_sbrk+0x5c>
   12280:	00813083          	ld	ra,8(sp)
   12284:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12288:	00078513          	mv	a0,a5
   1228c:	01010113          	addi	sp,sp,16
   12290:	00008067          	ret
   12294:	05c000ef          	jal	122f0 <__errno>
   12298:	00813083          	ld	ra,8(sp)
   1229c:	00c00793          	li	a5,12
   122a0:	00f52023          	sw	a5,0(a0)
   122a4:	fff00513          	li	a0,-1
   122a8:	01010113          	addi	sp,sp,16
   122ac:	00008067          	ret

00000000000122b0 <_write>:
   122b0:	04000893          	li	a7,64
   122b4:	00000073          	ecall
   122b8:	00054463          	bltz	a0,122c0 <_write+0x10>
   122bc:	00008067          	ret
   122c0:	fe010113          	addi	sp,sp,-32
   122c4:	00113c23          	sd	ra,24(sp)
   122c8:	00a13423          	sd	a0,8(sp)
   122cc:	024000ef          	jal	122f0 <__errno>
   122d0:	00813783          	ld	a5,8(sp)
   122d4:	01813083          	ld	ra,24(sp)
   122d8:	40f007bb          	negw	a5,a5
   122dc:	00f52023          	sw	a5,0(a0)
   122e0:	fff00793          	li	a5,-1
   122e4:	00078513          	mv	a0,a5
   122e8:	02010113          	addi	sp,sp,32
   122ec:	00008067          	ret

00000000000122f0 <__errno>:
   122f0:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   122f4:	00008067          	ret

Disassembly of section .rodata:

00000000000122f8 <.rodata>:
   122f8:	6548                	.insn	2, 0x6548
   122fa:	6c6c                	.insn	2, 0x6c6c
   122fc:	57202c6f          	jal	s8,1486e <__BSS_END__+0x8f6>
   12300:	646c726f          	jal	tp,d9946 <__BSS_END__+0xc59ce>
   12304:	0a21                	.insn	2, 0x0a21
	...

Disassembly of section .eh_frame:

0000000000012308 <__EH_FRAME_BEGIN__>:
   12308:	0000                	.insn	2, 0x0000
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


test/build/with-syscall/test_syscall.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	4ad000ef          	jal	10de0 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	0f0020ef          	jal	12238 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	10050513          	addi	a0,a0,256 # 12100 <__libc_fini_array>
   1015c:	5bd0006f          	j	10f18 <atexit>
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
   10184:	381000ef          	jal	10d04 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	d9050513          	addi	a0,a0,-624 # 10f18 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	f6c50513          	addi	a0,a0,-148 # 12100 <__libc_fini_array>
   1019c:	57d000ef          	jal	10f18 <atexit>
   101a0:	2d1000ef          	jal	10c70 <__libc_init_array>
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
   101d8:	42850513          	addi	a0,a0,1064 # 12428 <__EH_FRAME_BEGIN__>
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
   1020c:	42850513          	addi	a0,a0,1064 # 12428 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	000127b7          	lui	a5,0x12
   10230:	3a878513          	addi	a0,a5,936 # 123a8 <__errno+0x8>
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
   10268:	3c878513          	addi	a0,a5,968 # 123c8 <__errno+0x28>
   1026c:	0f8000ef          	jal	10364 <print_s>
   10270:	1bc000ef          	jal	1042c <read_num>
   10274:	00050793          	mv	a5,a0
   10278:	fef42623          	sw	a5,-20(s0)
   1027c:	000127b7          	lui	a5,0x12
   10280:	3e078513          	addi	a0,a5,992 # 123e0 <__errno+0x40>
   10284:	0e0000ef          	jal	10364 <print_s>
   10288:	fec42783          	lw	a5,-20(s0)
   1028c:	00078513          	mv	a0,a5
   10290:	068000ef          	jal	102f8 <print_d>
   10294:	000127b7          	lui	a5,0x12
   10298:	3f078513          	addi	a0,a5,1008 # 123f0 <__errno+0x50>
   1029c:	0c8000ef          	jal	10364 <print_s>
   102a0:	000127b7          	lui	a5,0x12
   102a4:	3f878513          	addi	a0,a5,1016 # 123f8 <__errno+0x58>
   102a8:	0bc000ef          	jal	10364 <print_s>
   102ac:	148000ef          	jal	103f4 <read_char>
   102b0:	00050793          	mv	a5,a0
   102b4:	fef405a3          	sb	a5,-21(s0)
   102b8:	000127b7          	lui	a5,0x12
   102bc:	41078513          	addi	a0,a5,1040 # 12410 <__errno+0x70>
   102c0:	0a4000ef          	jal	10364 <print_s>
   102c4:	feb44783          	lbu	a5,-21(s0)
   102c8:	00078513          	mv	a0,a5
   102cc:	0c8000ef          	jal	10394 <print_c>
   102d0:	000127b7          	lui	a5,0x12
   102d4:	3f078513          	addi	a0,a5,1008 # 123f0 <__errno+0x50>
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

0000000000010464 <__fp_lock>:
   10464:	00000513          	li	a0,0
   10468:	00008067          	ret

000000000001046c <stdio_exit_handler>:
   1046c:	00013637          	lui	a2,0x13
   10470:	000125b7          	lui	a1,0x12
   10474:	00013537          	lui	a0,0x13
   10478:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1047c:	c4058593          	addi	a1,a1,-960 # 11c40 <_fclose_r>
   10480:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10484:	34c0006f          	j	107d0 <_fwalk_sglue>

0000000000010488 <cleanup_stdio>:
   10488:	00853583          	ld	a1,8(a0)
   1048c:	ff010113          	addi	sp,sp,-16
   10490:	00813023          	sd	s0,0(sp)
   10494:	00113423          	sd	ra,8(sp)
   10498:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   1049c:	00050413          	mv	s0,a0
   104a0:	00f58463          	beq	a1,a5,104a8 <cleanup_stdio+0x20>
   104a4:	79c010ef          	jal	11c40 <_fclose_r>
   104a8:	01043583          	ld	a1,16(s0)
   104ac:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   104b0:	00f58663          	beq	a1,a5,104bc <cleanup_stdio+0x34>
   104b4:	00040513          	mv	a0,s0
   104b8:	788010ef          	jal	11c40 <_fclose_r>
   104bc:	01843583          	ld	a1,24(s0)
   104c0:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   104c4:	00f58c63          	beq	a1,a5,104dc <cleanup_stdio+0x54>
   104c8:	00040513          	mv	a0,s0
   104cc:	00013403          	ld	s0,0(sp)
   104d0:	00813083          	ld	ra,8(sp)
   104d4:	01010113          	addi	sp,sp,16
   104d8:	7680106f          	j	11c40 <_fclose_r>
   104dc:	00813083          	ld	ra,8(sp)
   104e0:	00013403          	ld	s0,0(sp)
   104e4:	01010113          	addi	sp,sp,16
   104e8:	00008067          	ret

00000000000104ec <__fp_unlock>:
   104ec:	00000513          	li	a0,0
   104f0:	00008067          	ret

00000000000104f4 <global_stdio_init.part.0>:
   104f4:	fd010113          	addi	sp,sp,-48
   104f8:	000107b7          	lui	a5,0x10
   104fc:	02813023          	sd	s0,32(sp)
   10500:	46c78793          	addi	a5,a5,1132 # 1046c <stdio_exit_handler>
   10504:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10508:	02113423          	sd	ra,40(sp)
   1050c:	00913c23          	sd	s1,24(sp)
   10510:	01213823          	sd	s2,16(sp)
   10514:	01313423          	sd	s3,8(sp)
   10518:	01413023          	sd	s4,0(sp)
   1051c:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10520:	00800613          	li	a2,8
   10524:	00400793          	li	a5,4
   10528:	00000593          	li	a1,0
   1052c:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10530:	00f42823          	sw	a5,16(s0)
   10534:	00043023          	sd	zero,0(s0)
   10538:	00043423          	sd	zero,8(s0)
   1053c:	0a042623          	sw	zero,172(s0)
   10540:	00043c23          	sd	zero,24(s0)
   10544:	02042023          	sw	zero,32(s0)
   10548:	02042423          	sw	zero,40(s0)
   1054c:	7b8000ef          	jal	10d04 <memset>
   10550:	00011a37          	lui	s4,0x11
   10554:	000119b7          	lui	s3,0x11
   10558:	00011937          	lui	s2,0x11
   1055c:	000114b7          	lui	s1,0x11
   10560:	000107b7          	lui	a5,0x10
   10564:	8a0a0a13          	addi	s4,s4,-1888 # 108a0 <__sread>
   10568:	90498993          	addi	s3,s3,-1788 # 10904 <__swrite>
   1056c:	98c90913          	addi	s2,s2,-1652 # 1098c <__sseek>
   10570:	9f048493          	addi	s1,s1,-1552 # 109f0 <__sclose>
   10574:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10578:	00800613          	li	a2,8
   1057c:	00000593          	li	a1,0
   10580:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10584:	0cf42023          	sw	a5,192(s0)
   10588:	03443c23          	sd	s4,56(s0)
   1058c:	05343023          	sd	s3,64(s0)
   10590:	05243423          	sd	s2,72(s0)
   10594:	04943823          	sd	s1,80(s0)
   10598:	02843823          	sd	s0,48(s0)
   1059c:	0a043823          	sd	zero,176(s0)
   105a0:	0a043c23          	sd	zero,184(s0)
   105a4:	14042e23          	sw	zero,348(s0)
   105a8:	0c043423          	sd	zero,200(s0)
   105ac:	0c042823          	sw	zero,208(s0)
   105b0:	0c042c23          	sw	zero,216(s0)
   105b4:	750000ef          	jal	10d04 <memset>
   105b8:	000207b7          	lui	a5,0x20
   105bc:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   105c0:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   105c4:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   105c8:	00800613          	li	a2,8
   105cc:	00000593          	li	a1,0
   105d0:	0f443423          	sd	s4,232(s0)
   105d4:	0f343823          	sd	s3,240(s0)
   105d8:	0f243c23          	sd	s2,248(s0)
   105dc:	10943023          	sd	s1,256(s0)
   105e0:	16f42823          	sw	a5,368(s0)
   105e4:	16043023          	sd	zero,352(s0)
   105e8:	16043423          	sd	zero,360(s0)
   105ec:	20042623          	sw	zero,524(s0)
   105f0:	16043c23          	sd	zero,376(s0)
   105f4:	18042023          	sw	zero,384(s0)
   105f8:	18042423          	sw	zero,392(s0)
   105fc:	0ee43023          	sd	a4,224(s0)
   10600:	704000ef          	jal	10d04 <memset>
   10604:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10608:	19443c23          	sd	s4,408(s0)
   1060c:	1b343023          	sd	s3,416(s0)
   10610:	1b243423          	sd	s2,424(s0)
   10614:	1a943823          	sd	s1,432(s0)
   10618:	02813083          	ld	ra,40(sp)
   1061c:	18f43823          	sd	a5,400(s0)
   10620:	02013403          	ld	s0,32(sp)
   10624:	01813483          	ld	s1,24(sp)
   10628:	01013903          	ld	s2,16(sp)
   1062c:	00813983          	ld	s3,8(sp)
   10630:	00013a03          	ld	s4,0(sp)
   10634:	03010113          	addi	sp,sp,48
   10638:	00008067          	ret

000000000001063c <__sfp>:
   1063c:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10640:	fd010113          	addi	sp,sp,-48
   10644:	00913c23          	sd	s1,24(sp)
   10648:	02113423          	sd	ra,40(sp)
   1064c:	02813023          	sd	s0,32(sp)
   10650:	00050493          	mv	s1,a0
   10654:	10078463          	beqz	a5,1075c <__sfp+0x120>
   10658:	000136b7          	lui	a3,0x13
   1065c:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10660:	0086a703          	lw	a4,8(a3)
   10664:	08e05c63          	blez	a4,106fc <__sfp+0xc0>
   10668:	02071713          	slli	a4,a4,0x20
   1066c:	02075713          	srli	a4,a4,0x20
   10670:	00171793          	slli	a5,a4,0x1
   10674:	00e787b3          	add	a5,a5,a4
   10678:	0106b403          	ld	s0,16(a3)
   1067c:	00279793          	slli	a5,a5,0x2
   10680:	40e787b3          	sub	a5,a5,a4
   10684:	00479793          	slli	a5,a5,0x4
   10688:	00f407b3          	add	a5,s0,a5
   1068c:	00c0006f          	j	10698 <__sfp+0x5c>
   10690:	0b040413          	addi	s0,s0,176
   10694:	06f40463          	beq	s0,a5,106fc <__sfp+0xc0>
   10698:	01041703          	lh	a4,16(s0)
   1069c:	fe071ae3          	bnez	a4,10690 <__sfp+0x54>
   106a0:	ffff07b7          	lui	a5,0xffff0
   106a4:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   106a8:	00f42823          	sw	a5,16(s0)
   106ac:	0a042623          	sw	zero,172(s0)
   106b0:	00043023          	sd	zero,0(s0)
   106b4:	00043423          	sd	zero,8(s0)
   106b8:	00043c23          	sd	zero,24(s0)
   106bc:	02042023          	sw	zero,32(s0)
   106c0:	02042423          	sw	zero,40(s0)
   106c4:	00800613          	li	a2,8
   106c8:	00000593          	li	a1,0
   106cc:	0a440513          	addi	a0,s0,164
   106d0:	634000ef          	jal	10d04 <memset>
   106d4:	04043c23          	sd	zero,88(s0)
   106d8:	06042023          	sw	zero,96(s0)
   106dc:	06043c23          	sd	zero,120(s0)
   106e0:	08042023          	sw	zero,128(s0)
   106e4:	02813083          	ld	ra,40(sp)
   106e8:	00040513          	mv	a0,s0
   106ec:	02013403          	ld	s0,32(sp)
   106f0:	01813483          	ld	s1,24(sp)
   106f4:	03010113          	addi	sp,sp,48
   106f8:	00008067          	ret
   106fc:	0006b403          	ld	s0,0(a3)
   10700:	00040663          	beqz	s0,1070c <__sfp+0xd0>
   10704:	00040693          	mv	a3,s0
   10708:	f59ff06f          	j	10660 <__sfp+0x24>
   1070c:	2d800593          	li	a1,728
   10710:	00048513          	mv	a0,s1
   10714:	00d13423          	sd	a3,8(sp)
   10718:	43d000ef          	jal	11354 <_malloc_r>
   1071c:	00813683          	ld	a3,8(sp)
   10720:	00050413          	mv	s0,a0
   10724:	04050063          	beqz	a0,10764 <__sfp+0x128>
   10728:	00400793          	li	a5,4
   1072c:	00f52423          	sw	a5,8(a0)
   10730:	01850513          	addi	a0,a0,24
   10734:	00043023          	sd	zero,0(s0)
   10738:	00a43823          	sd	a0,16(s0)
   1073c:	2c000613          	li	a2,704
   10740:	00000593          	li	a1,0
   10744:	00d13423          	sd	a3,8(sp)
   10748:	5bc000ef          	jal	10d04 <memset>
   1074c:	00813683          	ld	a3,8(sp)
   10750:	0086b023          	sd	s0,0(a3)
   10754:	00040693          	mv	a3,s0
   10758:	f09ff06f          	j	10660 <__sfp+0x24>
   1075c:	d99ff0ef          	jal	104f4 <global_stdio_init.part.0>
   10760:	ef9ff06f          	j	10658 <__sfp+0x1c>
   10764:	0006b023          	sd	zero,0(a3)
   10768:	00c00793          	li	a5,12
   1076c:	00f4a023          	sw	a5,0(s1)
   10770:	f75ff06f          	j	106e4 <__sfp+0xa8>

0000000000010774 <__sinit>:
   10774:	04853783          	ld	a5,72(a0)
   10778:	00078463          	beqz	a5,10780 <__sinit+0xc>
   1077c:	00008067          	ret
   10780:	000107b7          	lui	a5,0x10
   10784:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10788:	48878793          	addi	a5,a5,1160 # 10488 <cleanup_stdio>
   1078c:	04f53423          	sd	a5,72(a0)
   10790:	fe0716e3          	bnez	a4,1077c <__sinit+0x8>
   10794:	d61ff06f          	j	104f4 <global_stdio_init.part.0>

0000000000010798 <__sfp_lock_acquire>:
   10798:	00008067          	ret

000000000001079c <__sfp_lock_release>:
   1079c:	00008067          	ret

00000000000107a0 <__fp_lock_all>:
   107a0:	00013637          	lui	a2,0x13
   107a4:	000105b7          	lui	a1,0x10
   107a8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107ac:	46458593          	addi	a1,a1,1124 # 10464 <__fp_lock>
   107b0:	00000513          	li	a0,0
   107b4:	01c0006f          	j	107d0 <_fwalk_sglue>

00000000000107b8 <__fp_unlock_all>:
   107b8:	00013637          	lui	a2,0x13
   107bc:	000105b7          	lui	a1,0x10
   107c0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107c4:	4ec58593          	addi	a1,a1,1260 # 104ec <__fp_unlock>
   107c8:	00000513          	li	a0,0
   107cc:	0040006f          	j	107d0 <_fwalk_sglue>

00000000000107d0 <_fwalk_sglue>:
   107d0:	fb010113          	addi	sp,sp,-80
   107d4:	03213823          	sd	s2,48(sp)
   107d8:	03313423          	sd	s3,40(sp)
   107dc:	03413023          	sd	s4,32(sp)
   107e0:	01513c23          	sd	s5,24(sp)
   107e4:	01613823          	sd	s6,16(sp)
   107e8:	01713423          	sd	s7,8(sp)
   107ec:	04113423          	sd	ra,72(sp)
   107f0:	04813023          	sd	s0,64(sp)
   107f4:	02913c23          	sd	s1,56(sp)
   107f8:	00060913          	mv	s2,a2
   107fc:	00050a13          	mv	s4,a0
   10800:	00058a93          	mv	s5,a1
   10804:	00000b13          	li	s6,0
   10808:	00100b93          	li	s7,1
   1080c:	fff00993          	li	s3,-1
   10810:	00892783          	lw	a5,8(s2)
   10814:	04f05a63          	blez	a5,10868 <_fwalk_sglue+0x98>
   10818:	02079793          	slli	a5,a5,0x20
   1081c:	0207d793          	srli	a5,a5,0x20
   10820:	00179493          	slli	s1,a5,0x1
   10824:	00f484b3          	add	s1,s1,a5
   10828:	01093403          	ld	s0,16(s2)
   1082c:	00249493          	slli	s1,s1,0x2
   10830:	40f484b3          	sub	s1,s1,a5
   10834:	00449493          	slli	s1,s1,0x4
   10838:	009404b3          	add	s1,s0,s1
   1083c:	01045783          	lhu	a5,16(s0)
   10840:	02fbf063          	bgeu	s7,a5,10860 <_fwalk_sglue+0x90>
   10844:	01241783          	lh	a5,18(s0)
   10848:	00040593          	mv	a1,s0
   1084c:	000a0513          	mv	a0,s4
   10850:	01378863          	beq	a5,s3,10860 <_fwalk_sglue+0x90>
   10854:	000a80e7          	jalr	s5
   10858:	01656b33          	or	s6,a0,s6
   1085c:	000b0b1b          	sext.w	s6,s6
   10860:	0b040413          	addi	s0,s0,176
   10864:	fc941ce3          	bne	s0,s1,1083c <_fwalk_sglue+0x6c>
   10868:	00093903          	ld	s2,0(s2)
   1086c:	fa0912e3          	bnez	s2,10810 <_fwalk_sglue+0x40>
   10870:	04813083          	ld	ra,72(sp)
   10874:	04013403          	ld	s0,64(sp)
   10878:	03813483          	ld	s1,56(sp)
   1087c:	03013903          	ld	s2,48(sp)
   10880:	02813983          	ld	s3,40(sp)
   10884:	02013a03          	ld	s4,32(sp)
   10888:	01813a83          	ld	s5,24(sp)
   1088c:	00813b83          	ld	s7,8(sp)
   10890:	000b0513          	mv	a0,s6
   10894:	01013b03          	ld	s6,16(sp)
   10898:	05010113          	addi	sp,sp,80
   1089c:	00008067          	ret

00000000000108a0 <__sread>:
   108a0:	ff010113          	addi	sp,sp,-16
   108a4:	00813023          	sd	s0,0(sp)
   108a8:	00058413          	mv	s0,a1
   108ac:	01259583          	lh	a1,18(a1)
   108b0:	00113423          	sd	ra,8(sp)
   108b4:	2ec000ef          	jal	10ba0 <_read_r>
   108b8:	02054063          	bltz	a0,108d8 <__sread+0x38>
   108bc:	09043783          	ld	a5,144(s0)
   108c0:	00813083          	ld	ra,8(sp)
   108c4:	00a787b3          	add	a5,a5,a0
   108c8:	08f43823          	sd	a5,144(s0)
   108cc:	00013403          	ld	s0,0(sp)
   108d0:	01010113          	addi	sp,sp,16
   108d4:	00008067          	ret
   108d8:	01045783          	lhu	a5,16(s0)
   108dc:	fffff737          	lui	a4,0xfffff
   108e0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   108e4:	00e7f7b3          	and	a5,a5,a4
   108e8:	00813083          	ld	ra,8(sp)
   108ec:	00f41823          	sh	a5,16(s0)
   108f0:	00013403          	ld	s0,0(sp)
   108f4:	01010113          	addi	sp,sp,16
   108f8:	00008067          	ret

00000000000108fc <__seofread>:
   108fc:	00000513          	li	a0,0
   10900:	00008067          	ret

0000000000010904 <__swrite>:
   10904:	01059783          	lh	a5,16(a1)
   10908:	fd010113          	addi	sp,sp,-48
   1090c:	00068313          	mv	t1,a3
   10910:	02113423          	sd	ra,40(sp)
   10914:	1007f693          	andi	a3,a5,256
   10918:	00058713          	mv	a4,a1
   1091c:	00060893          	mv	a7,a2
   10920:	00050813          	mv	a6,a0
   10924:	02069863          	bnez	a3,10954 <__swrite+0x50>
   10928:	fffff6b7          	lui	a3,0xfffff
   1092c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10930:	02813083          	ld	ra,40(sp)
   10934:	00d7f7b3          	and	a5,a5,a3
   10938:	01271583          	lh	a1,18(a4)
   1093c:	00f71823          	sh	a5,16(a4)
   10940:	00030693          	mv	a3,t1
   10944:	00088613          	mv	a2,a7
   10948:	00080513          	mv	a0,a6
   1094c:	03010113          	addi	sp,sp,48
   10950:	2b80006f          	j	10c08 <_write_r>
   10954:	01259583          	lh	a1,18(a1)
   10958:	00c13823          	sd	a2,16(sp)
   1095c:	00200693          	li	a3,2
   10960:	00000613          	li	a2,0
   10964:	00613c23          	sd	t1,24(sp)
   10968:	00e13023          	sd	a4,0(sp)
   1096c:	00a13423          	sd	a0,8(sp)
   10970:	1c8000ef          	jal	10b38 <_lseek_r>
   10974:	00013703          	ld	a4,0(sp)
   10978:	01813303          	ld	t1,24(sp)
   1097c:	01013883          	ld	a7,16(sp)
   10980:	01071783          	lh	a5,16(a4)
   10984:	00813803          	ld	a6,8(sp)
   10988:	fa1ff06f          	j	10928 <__swrite+0x24>

000000000001098c <__sseek>:
   1098c:	ff010113          	addi	sp,sp,-16
   10990:	00813023          	sd	s0,0(sp)
   10994:	00058413          	mv	s0,a1
   10998:	01259583          	lh	a1,18(a1)
   1099c:	00113423          	sd	ra,8(sp)
   109a0:	198000ef          	jal	10b38 <_lseek_r>
   109a4:	fff00713          	li	a4,-1
   109a8:	01041783          	lh	a5,16(s0)
   109ac:	02e50263          	beq	a0,a4,109d0 <__sseek+0x44>
   109b0:	00001737          	lui	a4,0x1
   109b4:	00e7e7b3          	or	a5,a5,a4
   109b8:	00813083          	ld	ra,8(sp)
   109bc:	08a43823          	sd	a0,144(s0)
   109c0:	00f41823          	sh	a5,16(s0)
   109c4:	00013403          	ld	s0,0(sp)
   109c8:	01010113          	addi	sp,sp,16
   109cc:	00008067          	ret
   109d0:	80050713          	addi	a4,a0,-2048
   109d4:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   109d8:	00e7f7b3          	and	a5,a5,a4
   109dc:	00813083          	ld	ra,8(sp)
   109e0:	00f41823          	sh	a5,16(s0)
   109e4:	00013403          	ld	s0,0(sp)
   109e8:	01010113          	addi	sp,sp,16
   109ec:	00008067          	ret

00000000000109f0 <__sclose>:
   109f0:	01259583          	lh	a1,18(a1)
   109f4:	0040006f          	j	109f8 <_close_r>

00000000000109f8 <_close_r>:
   109f8:	fe010113          	addi	sp,sp,-32
   109fc:	00813823          	sd	s0,16(sp)
   10a00:	00913423          	sd	s1,8(sp)
   10a04:	00050493          	mv	s1,a0
   10a08:	00058513          	mv	a0,a1
   10a0c:	00113c23          	sd	ra,24(sp)
   10a10:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a14:	7e4010ef          	jal	121f8 <_close>
   10a18:	fff00793          	li	a5,-1
   10a1c:	00f50c63          	beq	a0,a5,10a34 <_close_r+0x3c>
   10a20:	01813083          	ld	ra,24(sp)
   10a24:	01013403          	ld	s0,16(sp)
   10a28:	00813483          	ld	s1,8(sp)
   10a2c:	02010113          	addi	sp,sp,32
   10a30:	00008067          	ret
   10a34:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a38:	fe0784e3          	beqz	a5,10a20 <_close_r+0x28>
   10a3c:	01813083          	ld	ra,24(sp)
   10a40:	01013403          	ld	s0,16(sp)
   10a44:	00f4a023          	sw	a5,0(s1)
   10a48:	00813483          	ld	s1,8(sp)
   10a4c:	02010113          	addi	sp,sp,32
   10a50:	00008067          	ret

0000000000010a54 <_reclaim_reent>:
   10a54:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10a58:	0ca78e63          	beq	a5,a0,10b34 <_reclaim_reent+0xe0>
   10a5c:	06853583          	ld	a1,104(a0)
   10a60:	fd010113          	addi	sp,sp,-48
   10a64:	00913c23          	sd	s1,24(sp)
   10a68:	02113423          	sd	ra,40(sp)
   10a6c:	02813023          	sd	s0,32(sp)
   10a70:	00050493          	mv	s1,a0
   10a74:	04058863          	beqz	a1,10ac4 <_reclaim_reent+0x70>
   10a78:	01213823          	sd	s2,16(sp)
   10a7c:	01313423          	sd	s3,8(sp)
   10a80:	00000913          	li	s2,0
   10a84:	20000993          	li	s3,512
   10a88:	012587b3          	add	a5,a1,s2
   10a8c:	0007b403          	ld	s0,0(a5)
   10a90:	00040e63          	beqz	s0,10aac <_reclaim_reent+0x58>
   10a94:	00040593          	mv	a1,s0
   10a98:	00043403          	ld	s0,0(s0)
   10a9c:	00048513          	mv	a0,s1
   10aa0:	5b0000ef          	jal	11050 <_free_r>
   10aa4:	fe0418e3          	bnez	s0,10a94 <_reclaim_reent+0x40>
   10aa8:	0684b583          	ld	a1,104(s1)
   10aac:	00890913          	addi	s2,s2,8
   10ab0:	fd391ce3          	bne	s2,s3,10a88 <_reclaim_reent+0x34>
   10ab4:	00048513          	mv	a0,s1
   10ab8:	598000ef          	jal	11050 <_free_r>
   10abc:	01013903          	ld	s2,16(sp)
   10ac0:	00813983          	ld	s3,8(sp)
   10ac4:	0504b583          	ld	a1,80(s1)
   10ac8:	00058663          	beqz	a1,10ad4 <_reclaim_reent+0x80>
   10acc:	00048513          	mv	a0,s1
   10ad0:	580000ef          	jal	11050 <_free_r>
   10ad4:	0604b403          	ld	s0,96(s1)
   10ad8:	00040c63          	beqz	s0,10af0 <_reclaim_reent+0x9c>
   10adc:	00040593          	mv	a1,s0
   10ae0:	00043403          	ld	s0,0(s0)
   10ae4:	00048513          	mv	a0,s1
   10ae8:	568000ef          	jal	11050 <_free_r>
   10aec:	fe0418e3          	bnez	s0,10adc <_reclaim_reent+0x88>
   10af0:	0784b583          	ld	a1,120(s1)
   10af4:	00058663          	beqz	a1,10b00 <_reclaim_reent+0xac>
   10af8:	00048513          	mv	a0,s1
   10afc:	554000ef          	jal	11050 <_free_r>
   10b00:	0484b783          	ld	a5,72(s1)
   10b04:	00078e63          	beqz	a5,10b20 <_reclaim_reent+0xcc>
   10b08:	02013403          	ld	s0,32(sp)
   10b0c:	02813083          	ld	ra,40(sp)
   10b10:	00048513          	mv	a0,s1
   10b14:	01813483          	ld	s1,24(sp)
   10b18:	03010113          	addi	sp,sp,48
   10b1c:	00078067          	jr	a5
   10b20:	02813083          	ld	ra,40(sp)
   10b24:	02013403          	ld	s0,32(sp)
   10b28:	01813483          	ld	s1,24(sp)
   10b2c:	03010113          	addi	sp,sp,48
   10b30:	00008067          	ret
   10b34:	00008067          	ret

0000000000010b38 <_lseek_r>:
   10b38:	fe010113          	addi	sp,sp,-32
   10b3c:	00058793          	mv	a5,a1
   10b40:	00813823          	sd	s0,16(sp)
   10b44:	00913423          	sd	s1,8(sp)
   10b48:	00060593          	mv	a1,a2
   10b4c:	00050493          	mv	s1,a0
   10b50:	00068613          	mv	a2,a3
   10b54:	00078513          	mv	a0,a5
   10b58:	00113c23          	sd	ra,24(sp)
   10b5c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b60:	708010ef          	jal	12268 <_lseek>
   10b64:	fff00793          	li	a5,-1
   10b68:	00f50c63          	beq	a0,a5,10b80 <_lseek_r+0x48>
   10b6c:	01813083          	ld	ra,24(sp)
   10b70:	01013403          	ld	s0,16(sp)
   10b74:	00813483          	ld	s1,8(sp)
   10b78:	02010113          	addi	sp,sp,32
   10b7c:	00008067          	ret
   10b80:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b84:	fe0784e3          	beqz	a5,10b6c <_lseek_r+0x34>
   10b88:	01813083          	ld	ra,24(sp)
   10b8c:	01013403          	ld	s0,16(sp)
   10b90:	00f4a023          	sw	a5,0(s1)
   10b94:	00813483          	ld	s1,8(sp)
   10b98:	02010113          	addi	sp,sp,32
   10b9c:	00008067          	ret

0000000000010ba0 <_read_r>:
   10ba0:	fe010113          	addi	sp,sp,-32
   10ba4:	00058793          	mv	a5,a1
   10ba8:	00813823          	sd	s0,16(sp)
   10bac:	00913423          	sd	s1,8(sp)
   10bb0:	00060593          	mv	a1,a2
   10bb4:	00050493          	mv	s1,a0
   10bb8:	00068613          	mv	a2,a3
   10bbc:	00078513          	mv	a0,a5
   10bc0:	00113c23          	sd	ra,24(sp)
   10bc4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bc8:	6e0010ef          	jal	122a8 <_read>
   10bcc:	fff00793          	li	a5,-1
   10bd0:	00f50c63          	beq	a0,a5,10be8 <_read_r+0x48>
   10bd4:	01813083          	ld	ra,24(sp)
   10bd8:	01013403          	ld	s0,16(sp)
   10bdc:	00813483          	ld	s1,8(sp)
   10be0:	02010113          	addi	sp,sp,32
   10be4:	00008067          	ret
   10be8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bec:	fe0784e3          	beqz	a5,10bd4 <_read_r+0x34>
   10bf0:	01813083          	ld	ra,24(sp)
   10bf4:	01013403          	ld	s0,16(sp)
   10bf8:	00f4a023          	sw	a5,0(s1)
   10bfc:	00813483          	ld	s1,8(sp)
   10c00:	02010113          	addi	sp,sp,32
   10c04:	00008067          	ret

0000000000010c08 <_write_r>:
   10c08:	fe010113          	addi	sp,sp,-32
   10c0c:	00058793          	mv	a5,a1
   10c10:	00813823          	sd	s0,16(sp)
   10c14:	00913423          	sd	s1,8(sp)
   10c18:	00060593          	mv	a1,a2
   10c1c:	00050493          	mv	s1,a0
   10c20:	00068613          	mv	a2,a3
   10c24:	00078513          	mv	a0,a5
   10c28:	00113c23          	sd	ra,24(sp)
   10c2c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c30:	730010ef          	jal	12360 <_write>
   10c34:	fff00793          	li	a5,-1
   10c38:	00f50c63          	beq	a0,a5,10c50 <_write_r+0x48>
   10c3c:	01813083          	ld	ra,24(sp)
   10c40:	01013403          	ld	s0,16(sp)
   10c44:	00813483          	ld	s1,8(sp)
   10c48:	02010113          	addi	sp,sp,32
   10c4c:	00008067          	ret
   10c50:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c54:	fe0784e3          	beqz	a5,10c3c <_write_r+0x34>
   10c58:	01813083          	ld	ra,24(sp)
   10c5c:	01013403          	ld	s0,16(sp)
   10c60:	00f4a023          	sw	a5,0(s1)
   10c64:	00813483          	ld	s1,8(sp)
   10c68:	02010113          	addi	sp,sp,32
   10c6c:	00008067          	ret

0000000000010c70 <__libc_init_array>:
   10c70:	fe010113          	addi	sp,sp,-32
   10c74:	00813823          	sd	s0,16(sp)
   10c78:	01213023          	sd	s2,0(sp)
   10c7c:	00013437          	lui	s0,0x13
   10c80:	00013937          	lui	s2,0x13
   10c84:	00113c23          	sd	ra,24(sp)
   10c88:	00913423          	sd	s1,8(sp)
   10c8c:	00090913          	mv	s2,s2
   10c90:	00040413          	mv	s0,s0
   10c94:	02890263          	beq	s2,s0,10cb8 <__libc_init_array+0x48>
   10c98:	40890933          	sub	s2,s2,s0
   10c9c:	40395913          	srai	s2,s2,0x3
   10ca0:	00000493          	li	s1,0
   10ca4:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10ca8:	00148493          	addi	s1,s1,1
   10cac:	00840413          	addi	s0,s0,8
   10cb0:	000780e7          	jalr	a5
   10cb4:	ff24e8e3          	bltu	s1,s2,10ca4 <__libc_init_array+0x34>
   10cb8:	00013937          	lui	s2,0x13
   10cbc:	00013437          	lui	s0,0x13
   10cc0:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10cc4:	00040413          	mv	s0,s0
   10cc8:	02890263          	beq	s2,s0,10cec <__libc_init_array+0x7c>
   10ccc:	40890933          	sub	s2,s2,s0
   10cd0:	40395913          	srai	s2,s2,0x3
   10cd4:	00000493          	li	s1,0
   10cd8:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10cdc:	00148493          	addi	s1,s1,1
   10ce0:	00840413          	addi	s0,s0,8
   10ce4:	000780e7          	jalr	a5
   10ce8:	ff24e8e3          	bltu	s1,s2,10cd8 <__libc_init_array+0x68>
   10cec:	01813083          	ld	ra,24(sp)
   10cf0:	01013403          	ld	s0,16(sp)
   10cf4:	00813483          	ld	s1,8(sp)
   10cf8:	00013903          	ld	s2,0(sp)
   10cfc:	02010113          	addi	sp,sp,32
   10d00:	00008067          	ret

0000000000010d04 <memset>:
   10d04:	00f00313          	li	t1,15
   10d08:	00050713          	mv	a4,a0
   10d0c:	02c37a63          	bgeu	t1,a2,10d40 <memset+0x3c>
   10d10:	00f77793          	andi	a5,a4,15
   10d14:	0a079063          	bnez	a5,10db4 <memset+0xb0>
   10d18:	06059e63          	bnez	a1,10d94 <memset+0x90>
   10d1c:	ff067693          	andi	a3,a2,-16
   10d20:	00f67613          	andi	a2,a2,15
   10d24:	00e686b3          	add	a3,a3,a4
   10d28:	00b73023          	sd	a1,0(a4)
   10d2c:	00b73423          	sd	a1,8(a4)
   10d30:	01070713          	addi	a4,a4,16
   10d34:	fed76ae3          	bltu	a4,a3,10d28 <memset+0x24>
   10d38:	00061463          	bnez	a2,10d40 <memset+0x3c>
   10d3c:	00008067          	ret
   10d40:	40c306b3          	sub	a3,t1,a2
   10d44:	00269693          	slli	a3,a3,0x2
   10d48:	00000297          	auipc	t0,0x0
   10d4c:	005686b3          	add	a3,a3,t0
   10d50:	00c68067          	jr	12(a3)
   10d54:	00b70723          	sb	a1,14(a4)
   10d58:	00b706a3          	sb	a1,13(a4)
   10d5c:	00b70623          	sb	a1,12(a4)
   10d60:	00b705a3          	sb	a1,11(a4)
   10d64:	00b70523          	sb	a1,10(a4)
   10d68:	00b704a3          	sb	a1,9(a4)
   10d6c:	00b70423          	sb	a1,8(a4)
   10d70:	00b703a3          	sb	a1,7(a4)
   10d74:	00b70323          	sb	a1,6(a4)
   10d78:	00b702a3          	sb	a1,5(a4)
   10d7c:	00b70223          	sb	a1,4(a4)
   10d80:	00b701a3          	sb	a1,3(a4)
   10d84:	00b70123          	sb	a1,2(a4)
   10d88:	00b700a3          	sb	a1,1(a4)
   10d8c:	00b70023          	sb	a1,0(a4)
   10d90:	00008067          	ret
   10d94:	0ff5f593          	zext.b	a1,a1
   10d98:	00859693          	slli	a3,a1,0x8
   10d9c:	00d5e5b3          	or	a1,a1,a3
   10da0:	01059693          	slli	a3,a1,0x10
   10da4:	00d5e5b3          	or	a1,a1,a3
   10da8:	02059693          	slli	a3,a1,0x20
   10dac:	00d5e5b3          	or	a1,a1,a3
   10db0:	f6dff06f          	j	10d1c <memset+0x18>
   10db4:	00279693          	slli	a3,a5,0x2
   10db8:	00000297          	auipc	t0,0x0
   10dbc:	005686b3          	add	a3,a3,t0
   10dc0:	00008293          	mv	t0,ra
   10dc4:	f98680e7          	jalr	-104(a3)
   10dc8:	00028093          	mv	ra,t0
   10dcc:	ff078793          	addi	a5,a5,-16
   10dd0:	40f70733          	sub	a4,a4,a5
   10dd4:	00f60633          	add	a2,a2,a5
   10dd8:	f6c374e3          	bgeu	t1,a2,10d40 <memset+0x3c>
   10ddc:	f3dff06f          	j	10d18 <memset+0x14>

0000000000010de0 <__call_exitprocs>:
   10de0:	fb010113          	addi	sp,sp,-80
   10de4:	03413023          	sd	s4,32(sp)
   10de8:	03213823          	sd	s2,48(sp)
   10dec:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10df0:	04113423          	sd	ra,72(sp)
   10df4:	06090e63          	beqz	s2,10e70 <__call_exitprocs+0x90>
   10df8:	03313423          	sd	s3,40(sp)
   10dfc:	01513c23          	sd	s5,24(sp)
   10e00:	01613823          	sd	s6,16(sp)
   10e04:	01713423          	sd	s7,8(sp)
   10e08:	04813023          	sd	s0,64(sp)
   10e0c:	02913c23          	sd	s1,56(sp)
   10e10:	01813023          	sd	s8,0(sp)
   10e14:	00050b13          	mv	s6,a0
   10e18:	00058b93          	mv	s7,a1
   10e1c:	fff00993          	li	s3,-1
   10e20:	00100a93          	li	s5,1
   10e24:	00892403          	lw	s0,8(s2)
   10e28:	fff4041b          	addiw	s0,s0,-1
   10e2c:	02044463          	bltz	s0,10e54 <__call_exitprocs+0x74>
   10e30:	01090493          	addi	s1,s2,16
   10e34:	00341793          	slli	a5,s0,0x3
   10e38:	00f484b3          	add	s1,s1,a5
   10e3c:	040b8463          	beqz	s7,10e84 <__call_exitprocs+0xa4>
   10e40:	2004b783          	ld	a5,512(s1)
   10e44:	05778063          	beq	a5,s7,10e84 <__call_exitprocs+0xa4>
   10e48:	fff4041b          	addiw	s0,s0,-1
   10e4c:	ff848493          	addi	s1,s1,-8
   10e50:	ff3418e3          	bne	s0,s3,10e40 <__call_exitprocs+0x60>
   10e54:	04013403          	ld	s0,64(sp)
   10e58:	03813483          	ld	s1,56(sp)
   10e5c:	02813983          	ld	s3,40(sp)
   10e60:	01813a83          	ld	s5,24(sp)
   10e64:	01013b03          	ld	s6,16(sp)
   10e68:	00813b83          	ld	s7,8(sp)
   10e6c:	00013c03          	ld	s8,0(sp)
   10e70:	04813083          	ld	ra,72(sp)
   10e74:	03013903          	ld	s2,48(sp)
   10e78:	02013a03          	ld	s4,32(sp)
   10e7c:	05010113          	addi	sp,sp,80
   10e80:	00008067          	ret
   10e84:	00892783          	lw	a5,8(s2)
   10e88:	0004b683          	ld	a3,0(s1)
   10e8c:	fff7879b          	addiw	a5,a5,-1
   10e90:	06878a63          	beq	a5,s0,10f04 <__call_exitprocs+0x124>
   10e94:	0004b023          	sd	zero,0(s1)
   10e98:	02068663          	beqz	a3,10ec4 <__call_exitprocs+0xe4>
   10e9c:	31092783          	lw	a5,784(s2)
   10ea0:	008a973b          	sllw	a4,s5,s0
   10ea4:	00892c03          	lw	s8,8(s2)
   10ea8:	00e7f7b3          	and	a5,a5,a4
   10eac:	02079463          	bnez	a5,10ed4 <__call_exitprocs+0xf4>
   10eb0:	000680e7          	jalr	a3
   10eb4:	00892703          	lw	a4,8(s2)
   10eb8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ebc:	03871e63          	bne	a4,s8,10ef8 <__call_exitprocs+0x118>
   10ec0:	03279c63          	bne	a5,s2,10ef8 <__call_exitprocs+0x118>
   10ec4:	fff4041b          	addiw	s0,s0,-1
   10ec8:	ff848493          	addi	s1,s1,-8
   10ecc:	f73418e3          	bne	s0,s3,10e3c <__call_exitprocs+0x5c>
   10ed0:	f85ff06f          	j	10e54 <__call_exitprocs+0x74>
   10ed4:	31492783          	lw	a5,788(s2)
   10ed8:	1004b583          	ld	a1,256(s1)
   10edc:	00f77733          	and	a4,a4,a5
   10ee0:	02071663          	bnez	a4,10f0c <__call_exitprocs+0x12c>
   10ee4:	000b0513          	mv	a0,s6
   10ee8:	000680e7          	jalr	a3
   10eec:	00892703          	lw	a4,8(s2)
   10ef0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ef4:	fd8706e3          	beq	a4,s8,10ec0 <__call_exitprocs+0xe0>
   10ef8:	f4078ee3          	beqz	a5,10e54 <__call_exitprocs+0x74>
   10efc:	00078913          	mv	s2,a5
   10f00:	f25ff06f          	j	10e24 <__call_exitprocs+0x44>
   10f04:	00892423          	sw	s0,8(s2)
   10f08:	f91ff06f          	j	10e98 <__call_exitprocs+0xb8>
   10f0c:	00058513          	mv	a0,a1
   10f10:	000680e7          	jalr	a3
   10f14:	fa1ff06f          	j	10eb4 <__call_exitprocs+0xd4>

0000000000010f18 <atexit>:
   10f18:	00050593          	mv	a1,a0
   10f1c:	00000693          	li	a3,0
   10f20:	00000613          	li	a2,0
   10f24:	00000513          	li	a0,0
   10f28:	2340106f          	j	1215c <__register_exitproc>

0000000000010f2c <_malloc_trim_r>:
   10f2c:	fd010113          	addi	sp,sp,-48
   10f30:	01213823          	sd	s2,16(sp)
   10f34:	00013937          	lui	s2,0x13
   10f38:	02813023          	sd	s0,32(sp)
   10f3c:	00913c23          	sd	s1,24(sp)
   10f40:	01313423          	sd	s3,8(sp)
   10f44:	00058413          	mv	s0,a1
   10f48:	02113423          	sd	ra,40(sp)
   10f4c:	00050993          	mv	s3,a0
   10f50:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10f54:	4e5000ef          	jal	11c38 <__malloc_lock>
   10f58:	01093783          	ld	a5,16(s2)
   10f5c:	00001737          	lui	a4,0x1
   10f60:	0087b483          	ld	s1,8(a5)
   10f64:	ffc4f493          	andi	s1,s1,-4
   10f68:	7ff48793          	addi	a5,s1,2047
   10f6c:	7e078793          	addi	a5,a5,2016
   10f70:	40878433          	sub	s0,a5,s0
   10f74:	00c45413          	srli	s0,s0,0xc
   10f78:	fff40413          	addi	s0,s0,-1
   10f7c:	00c41413          	slli	s0,s0,0xc
   10f80:	00e44e63          	blt	s0,a4,10f9c <_malloc_trim_r+0x70>
   10f84:	00000593          	li	a1,0
   10f88:	00098513          	mv	a0,s3
   10f8c:	118010ef          	jal	120a4 <_sbrk_r>
   10f90:	01093783          	ld	a5,16(s2)
   10f94:	009787b3          	add	a5,a5,s1
   10f98:	02f50663          	beq	a0,a5,10fc4 <_malloc_trim_r+0x98>
   10f9c:	00098513          	mv	a0,s3
   10fa0:	49d000ef          	jal	11c3c <__malloc_unlock>
   10fa4:	02813083          	ld	ra,40(sp)
   10fa8:	02013403          	ld	s0,32(sp)
   10fac:	01813483          	ld	s1,24(sp)
   10fb0:	01013903          	ld	s2,16(sp)
   10fb4:	00813983          	ld	s3,8(sp)
   10fb8:	00000513          	li	a0,0
   10fbc:	03010113          	addi	sp,sp,48
   10fc0:	00008067          	ret
   10fc4:	408005b3          	neg	a1,s0
   10fc8:	00098513          	mv	a0,s3
   10fcc:	0d8010ef          	jal	120a4 <_sbrk_r>
   10fd0:	fff00793          	li	a5,-1
   10fd4:	04f50463          	beq	a0,a5,1101c <_malloc_trim_r+0xf0>
   10fd8:	01093683          	ld	a3,16(s2)
   10fdc:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10fe0:	408484b3          	sub	s1,s1,s0
   10fe4:	0014e493          	ori	s1,s1,1
   10fe8:	00098513          	mv	a0,s3
   10fec:	408787bb          	subw	a5,a5,s0
   10ff0:	0096b423          	sd	s1,8(a3)
   10ff4:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10ff8:	445000ef          	jal	11c3c <__malloc_unlock>
   10ffc:	02813083          	ld	ra,40(sp)
   11000:	02013403          	ld	s0,32(sp)
   11004:	01813483          	ld	s1,24(sp)
   11008:	01013903          	ld	s2,16(sp)
   1100c:	00813983          	ld	s3,8(sp)
   11010:	00100513          	li	a0,1
   11014:	03010113          	addi	sp,sp,48
   11018:	00008067          	ret
   1101c:	00000593          	li	a1,0
   11020:	00098513          	mv	a0,s3
   11024:	080010ef          	jal	120a4 <_sbrk_r>
   11028:	01093703          	ld	a4,16(s2)
   1102c:	01f00693          	li	a3,31
   11030:	40e507b3          	sub	a5,a0,a4
   11034:	f6f6d4e3          	bge	a3,a5,10f9c <_malloc_trim_r+0x70>
   11038:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1103c:	0017e793          	ori	a5,a5,1
   11040:	40c50533          	sub	a0,a0,a2
   11044:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11048:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1104c:	f51ff06f          	j	10f9c <_malloc_trim_r+0x70>

0000000000011050 <_free_r>:
   11050:	12058863          	beqz	a1,11180 <_free_r+0x130>
   11054:	fe010113          	addi	sp,sp,-32
   11058:	00813823          	sd	s0,16(sp)
   1105c:	00b13423          	sd	a1,8(sp)
   11060:	00050413          	mv	s0,a0
   11064:	00113c23          	sd	ra,24(sp)
   11068:	3d1000ef          	jal	11c38 <__malloc_lock>
   1106c:	00813583          	ld	a1,8(sp)
   11070:	00013837          	lui	a6,0x13
   11074:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11078:	ff85b503          	ld	a0,-8(a1)
   1107c:	ff058713          	addi	a4,a1,-16
   11080:	01083883          	ld	a7,16(a6)
   11084:	ffe57793          	andi	a5,a0,-2
   11088:	00f70633          	add	a2,a4,a5
   1108c:	00863683          	ld	a3,8(a2)
   11090:	00157313          	andi	t1,a0,1
   11094:	ffc6f693          	andi	a3,a3,-4
   11098:	18c88e63          	beq	a7,a2,11234 <_free_r+0x1e4>
   1109c:	00d63423          	sd	a3,8(a2)
   110a0:	00d608b3          	add	a7,a2,a3
   110a4:	0088b883          	ld	a7,8(a7)
   110a8:	0018f893          	andi	a7,a7,1
   110ac:	08031e63          	bnez	t1,11148 <_free_r+0xf8>
   110b0:	ff05b303          	ld	t1,-16(a1)
   110b4:	000135b7          	lui	a1,0x13
   110b8:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   110bc:	40670733          	sub	a4,a4,t1
   110c0:	01073503          	ld	a0,16(a4)
   110c4:	006787b3          	add	a5,a5,t1
   110c8:	14b50063          	beq	a0,a1,11208 <_free_r+0x1b8>
   110cc:	01873303          	ld	t1,24(a4)
   110d0:	00653c23          	sd	t1,24(a0)
   110d4:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   110d8:	1a088263          	beqz	a7,1127c <_free_r+0x22c>
   110dc:	0017e693          	ori	a3,a5,1
   110e0:	00d73423          	sd	a3,8(a4)
   110e4:	00f63023          	sd	a5,0(a2)
   110e8:	1ff00693          	li	a3,511
   110ec:	0af6e663          	bltu	a3,a5,11198 <_free_r+0x148>
   110f0:	0037d793          	srli	a5,a5,0x3
   110f4:	00179693          	slli	a3,a5,0x1
   110f8:	0026869b          	addiw	a3,a3,2
   110fc:	00369693          	slli	a3,a3,0x3
   11100:	00883503          	ld	a0,8(a6)
   11104:	00d806b3          	add	a3,a6,a3
   11108:	0006b583          	ld	a1,0(a3)
   1110c:	4027d61b          	sraiw	a2,a5,0x2
   11110:	00100793          	li	a5,1
   11114:	00c797b3          	sll	a5,a5,a2
   11118:	00a7e7b3          	or	a5,a5,a0
   1111c:	ff068613          	addi	a2,a3,-16
   11120:	00b73823          	sd	a1,16(a4)
   11124:	00c73c23          	sd	a2,24(a4)
   11128:	00f83423          	sd	a5,8(a6)
   1112c:	00e6b023          	sd	a4,0(a3)
   11130:	00e5bc23          	sd	a4,24(a1)
   11134:	00040513          	mv	a0,s0
   11138:	01013403          	ld	s0,16(sp)
   1113c:	01813083          	ld	ra,24(sp)
   11140:	02010113          	addi	sp,sp,32
   11144:	2f90006f          	j	11c3c <__malloc_unlock>
   11148:	02089e63          	bnez	a7,11184 <_free_r+0x134>
   1114c:	000135b7          	lui	a1,0x13
   11150:	00d787b3          	add	a5,a5,a3
   11154:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11158:	01063683          	ld	a3,16(a2)
   1115c:	0017e893          	ori	a7,a5,1
   11160:	00f70533          	add	a0,a4,a5
   11164:	16b68663          	beq	a3,a1,112d0 <_free_r+0x280>
   11168:	01863603          	ld	a2,24(a2)
   1116c:	00c6bc23          	sd	a2,24(a3)
   11170:	00d63823          	sd	a3,16(a2)
   11174:	01173423          	sd	a7,8(a4)
   11178:	00f53023          	sd	a5,0(a0)
   1117c:	f6dff06f          	j	110e8 <_free_r+0x98>
   11180:	00008067          	ret
   11184:	00156513          	ori	a0,a0,1
   11188:	fea5bc23          	sd	a0,-8(a1)
   1118c:	00f63023          	sd	a5,0(a2)
   11190:	1ff00693          	li	a3,511
   11194:	f4f6fee3          	bgeu	a3,a5,110f0 <_free_r+0xa0>
   11198:	0097d693          	srli	a3,a5,0x9
   1119c:	00400613          	li	a2,4
   111a0:	0ed66263          	bltu	a2,a3,11284 <_free_r+0x234>
   111a4:	0067d693          	srli	a3,a5,0x6
   111a8:	00169593          	slli	a1,a3,0x1
   111ac:	0725859b          	addiw	a1,a1,114
   111b0:	00359593          	slli	a1,a1,0x3
   111b4:	0386861b          	addiw	a2,a3,56
   111b8:	00b805b3          	add	a1,a6,a1
   111bc:	0005b683          	ld	a3,0(a1)
   111c0:	ff058593          	addi	a1,a1,-16
   111c4:	00d59863          	bne	a1,a3,111d4 <_free_r+0x184>
   111c8:	1240006f          	j	112ec <_free_r+0x29c>
   111cc:	0106b683          	ld	a3,16(a3)
   111d0:	00d58863          	beq	a1,a3,111e0 <_free_r+0x190>
   111d4:	0086b603          	ld	a2,8(a3)
   111d8:	ffc67613          	andi	a2,a2,-4
   111dc:	fec7e8e3          	bltu	a5,a2,111cc <_free_r+0x17c>
   111e0:	0186b583          	ld	a1,24(a3)
   111e4:	00b73c23          	sd	a1,24(a4)
   111e8:	00d73823          	sd	a3,16(a4)
   111ec:	00040513          	mv	a0,s0
   111f0:	01013403          	ld	s0,16(sp)
   111f4:	01813083          	ld	ra,24(sp)
   111f8:	00e5b823          	sd	a4,16(a1)
   111fc:	00e6bc23          	sd	a4,24(a3)
   11200:	02010113          	addi	sp,sp,32
   11204:	2390006f          	j	11c3c <__malloc_unlock>
   11208:	0a089263          	bnez	a7,112ac <_free_r+0x25c>
   1120c:	01863583          	ld	a1,24(a2)
   11210:	01063603          	ld	a2,16(a2)
   11214:	00f686b3          	add	a3,a3,a5
   11218:	0016e793          	ori	a5,a3,1
   1121c:	00b63c23          	sd	a1,24(a2)
   11220:	00c5b823          	sd	a2,16(a1)
   11224:	00f73423          	sd	a5,8(a4)
   11228:	00d70733          	add	a4,a4,a3
   1122c:	00d73023          	sd	a3,0(a4)
   11230:	f05ff06f          	j	11134 <_free_r+0xe4>
   11234:	00d786b3          	add	a3,a5,a3
   11238:	02031063          	bnez	t1,11258 <_free_r+0x208>
   1123c:	ff05b783          	ld	a5,-16(a1)
   11240:	40f70733          	sub	a4,a4,a5
   11244:	01073603          	ld	a2,16(a4)
   11248:	00f686b3          	add	a3,a3,a5
   1124c:	01873783          	ld	a5,24(a4)
   11250:	00f63c23          	sd	a5,24(a2)
   11254:	00c7b823          	sd	a2,16(a5)
   11258:	0016e613          	ori	a2,a3,1
   1125c:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11260:	00c73423          	sd	a2,8(a4)
   11264:	00e83823          	sd	a4,16(a6)
   11268:	ecf6e6e3          	bltu	a3,a5,11134 <_free_r+0xe4>
   1126c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11270:	00040513          	mv	a0,s0
   11274:	cb9ff0ef          	jal	10f2c <_malloc_trim_r>
   11278:	ebdff06f          	j	11134 <_free_r+0xe4>
   1127c:	00d787b3          	add	a5,a5,a3
   11280:	ed9ff06f          	j	11158 <_free_r+0x108>
   11284:	01400613          	li	a2,20
   11288:	02d67a63          	bgeu	a2,a3,112bc <_free_r+0x26c>
   1128c:	05400613          	li	a2,84
   11290:	06d66c63          	bltu	a2,a3,11308 <_free_r+0x2b8>
   11294:	00c7d693          	srli	a3,a5,0xc
   11298:	00169593          	slli	a1,a3,0x1
   1129c:	0de5859b          	addiw	a1,a1,222
   112a0:	00359593          	slli	a1,a1,0x3
   112a4:	06e6861b          	addiw	a2,a3,110
   112a8:	f11ff06f          	j	111b8 <_free_r+0x168>
   112ac:	0017e693          	ori	a3,a5,1
   112b0:	00d73423          	sd	a3,8(a4)
   112b4:	00f63023          	sd	a5,0(a2)
   112b8:	e7dff06f          	j	11134 <_free_r+0xe4>
   112bc:	00169593          	slli	a1,a3,0x1
   112c0:	0b85859b          	addiw	a1,a1,184
   112c4:	00359593          	slli	a1,a1,0x3
   112c8:	05b6861b          	addiw	a2,a3,91
   112cc:	eedff06f          	j	111b8 <_free_r+0x168>
   112d0:	02e83423          	sd	a4,40(a6)
   112d4:	02e83023          	sd	a4,32(a6)
   112d8:	00b73c23          	sd	a1,24(a4)
   112dc:	00b73823          	sd	a1,16(a4)
   112e0:	01173423          	sd	a7,8(a4)
   112e4:	00f53023          	sd	a5,0(a0)
   112e8:	e4dff06f          	j	11134 <_free_r+0xe4>
   112ec:	00883503          	ld	a0,8(a6)
   112f0:	4026561b          	sraiw	a2,a2,0x2
   112f4:	00100793          	li	a5,1
   112f8:	00c797b3          	sll	a5,a5,a2
   112fc:	00a7e7b3          	or	a5,a5,a0
   11300:	00f83423          	sd	a5,8(a6)
   11304:	ee1ff06f          	j	111e4 <_free_r+0x194>
   11308:	15400613          	li	a2,340
   1130c:	00d66e63          	bltu	a2,a3,11328 <_free_r+0x2d8>
   11310:	00f7d693          	srli	a3,a5,0xf
   11314:	00169593          	slli	a1,a3,0x1
   11318:	0f05859b          	addiw	a1,a1,240
   1131c:	00359593          	slli	a1,a1,0x3
   11320:	0776861b          	addiw	a2,a3,119
   11324:	e95ff06f          	j	111b8 <_free_r+0x168>
   11328:	55400613          	li	a2,1364
   1132c:	00d66e63          	bltu	a2,a3,11348 <_free_r+0x2f8>
   11330:	0127d693          	srli	a3,a5,0x12
   11334:	00169593          	slli	a1,a3,0x1
   11338:	0fa5859b          	addiw	a1,a1,250
   1133c:	00359593          	slli	a1,a1,0x3
   11340:	07c6861b          	addiw	a2,a3,124
   11344:	e75ff06f          	j	111b8 <_free_r+0x168>
   11348:	7f000593          	li	a1,2032
   1134c:	07e00613          	li	a2,126
   11350:	e69ff06f          	j	111b8 <_free_r+0x168>

0000000000011354 <_malloc_r>:
   11354:	fa010113          	addi	sp,sp,-96
   11358:	04813823          	sd	s0,80(sp)
   1135c:	04113c23          	sd	ra,88(sp)
   11360:	01758713          	addi	a4,a1,23
   11364:	02e00793          	li	a5,46
   11368:	00050413          	mv	s0,a0
   1136c:	08e7ee63          	bltu	a5,a4,11408 <_malloc_r+0xb4>
   11370:	02000713          	li	a4,32
   11374:	06b76c63          	bltu	a4,a1,113ec <_malloc_r+0x98>
   11378:	0c1000ef          	jal	11c38 <__malloc_lock>
   1137c:	02000713          	li	a4,32
   11380:	05000693          	li	a3,80
   11384:	00400893          	li	a7,4
   11388:	00013837          	lui	a6,0x13
   1138c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11390:	00d806b3          	add	a3,a6,a3
   11394:	0086b783          	ld	a5,8(a3)
   11398:	ff068613          	addi	a2,a3,-16
   1139c:	48c78063          	beq	a5,a2,1181c <_malloc_r+0x4c8>
   113a0:	0087b703          	ld	a4,8(a5)
   113a4:	0187b603          	ld	a2,24(a5)
   113a8:	0107b583          	ld	a1,16(a5)
   113ac:	ffc77713          	andi	a4,a4,-4
   113b0:	00e78733          	add	a4,a5,a4
   113b4:	00873683          	ld	a3,8(a4)
   113b8:	00c5bc23          	sd	a2,24(a1)
   113bc:	00b63823          	sd	a1,16(a2)
   113c0:	0016e693          	ori	a3,a3,1
   113c4:	00040513          	mv	a0,s0
   113c8:	00d73423          	sd	a3,8(a4)
   113cc:	00f13423          	sd	a5,8(sp)
   113d0:	06d000ef          	jal	11c3c <__malloc_unlock>
   113d4:	00813783          	ld	a5,8(sp)
   113d8:	05813083          	ld	ra,88(sp)
   113dc:	05013403          	ld	s0,80(sp)
   113e0:	01078513          	addi	a0,a5,16
   113e4:	06010113          	addi	sp,sp,96
   113e8:	00008067          	ret
   113ec:	00c00793          	li	a5,12
   113f0:	00f42023          	sw	a5,0(s0)
   113f4:	00000513          	li	a0,0
   113f8:	05813083          	ld	ra,88(sp)
   113fc:	05013403          	ld	s0,80(sp)
   11400:	06010113          	addi	sp,sp,96
   11404:	00008067          	ret
   11408:	00100793          	li	a5,1
   1140c:	ff077713          	andi	a4,a4,-16
   11410:	01f79793          	slli	a5,a5,0x1f
   11414:	fcf77ce3          	bgeu	a4,a5,113ec <_malloc_r+0x98>
   11418:	fcb76ae3          	bltu	a4,a1,113ec <_malloc_r+0x98>
   1141c:	00e13423          	sd	a4,8(sp)
   11420:	019000ef          	jal	11c38 <__malloc_lock>
   11424:	00813703          	ld	a4,8(sp)
   11428:	1f700793          	li	a5,503
   1142c:	4ee7fa63          	bgeu	a5,a4,11920 <_malloc_r+0x5cc>
   11430:	00975793          	srli	a5,a4,0x9
   11434:	18078a63          	beqz	a5,115c8 <_malloc_r+0x274>
   11438:	00400693          	li	a3,4
   1143c:	44f6ea63          	bltu	a3,a5,11890 <_malloc_r+0x53c>
   11440:	00675793          	srli	a5,a4,0x6
   11444:	0397889b          	addiw	a7,a5,57
   11448:	0018951b          	slliw	a0,a7,0x1
   1144c:	03878e1b          	addiw	t3,a5,56
   11450:	00351513          	slli	a0,a0,0x3
   11454:	00013837          	lui	a6,0x13
   11458:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1145c:	00a80533          	add	a0,a6,a0
   11460:	00853783          	ld	a5,8(a0)
   11464:	ff050513          	addi	a0,a0,-16
   11468:	02f50863          	beq	a0,a5,11498 <_malloc_r+0x144>
   1146c:	01f00313          	li	t1,31
   11470:	0140006f          	j	11484 <_malloc_r+0x130>
   11474:	0187b583          	ld	a1,24(a5)
   11478:	36065263          	bgez	a2,117dc <_malloc_r+0x488>
   1147c:	00b50e63          	beq	a0,a1,11498 <_malloc_r+0x144>
   11480:	00058793          	mv	a5,a1
   11484:	0087b683          	ld	a3,8(a5)
   11488:	ffc6f693          	andi	a3,a3,-4
   1148c:	40e68633          	sub	a2,a3,a4
   11490:	fec352e3          	bge	t1,a2,11474 <_malloc_r+0x120>
   11494:	000e0893          	mv	a7,t3
   11498:	02083783          	ld	a5,32(a6)
   1149c:	00013e37          	lui	t3,0x13
   114a0:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   114a4:	2fc78a63          	beq	a5,t3,11798 <_malloc_r+0x444>
   114a8:	0087b303          	ld	t1,8(a5)
   114ac:	01f00613          	li	a2,31
   114b0:	ffc37313          	andi	t1,t1,-4
   114b4:	40e306b3          	sub	a3,t1,a4
   114b8:	4ad64463          	blt	a2,a3,11960 <_malloc_r+0x60c>
   114bc:	03c83423          	sd	t3,40(a6)
   114c0:	03c83023          	sd	t3,32(a6)
   114c4:	4606da63          	bgez	a3,11938 <_malloc_r+0x5e4>
   114c8:	1ff00693          	li	a3,511
   114cc:	00883583          	ld	a1,8(a6)
   114d0:	3466ee63          	bltu	a3,t1,1182c <_malloc_r+0x4d8>
   114d4:	00335313          	srli	t1,t1,0x3
   114d8:	00131693          	slli	a3,t1,0x1
   114dc:	0026869b          	addiw	a3,a3,2
   114e0:	00369693          	slli	a3,a3,0x3
   114e4:	00d806b3          	add	a3,a6,a3
   114e8:	0006b503          	ld	a0,0(a3)
   114ec:	4023531b          	sraiw	t1,t1,0x2
   114f0:	00100613          	li	a2,1
   114f4:	00661633          	sll	a2,a2,t1
   114f8:	00c5e5b3          	or	a1,a1,a2
   114fc:	ff068613          	addi	a2,a3,-16
   11500:	00a7b823          	sd	a0,16(a5)
   11504:	00c7bc23          	sd	a2,24(a5)
   11508:	00b83423          	sd	a1,8(a6)
   1150c:	00f6b023          	sd	a5,0(a3)
   11510:	00f53c23          	sd	a5,24(a0)
   11514:	4028d79b          	sraiw	a5,a7,0x2
   11518:	00100513          	li	a0,1
   1151c:	00f51533          	sll	a0,a0,a5
   11520:	0aa5ec63          	bltu	a1,a0,115d8 <_malloc_r+0x284>
   11524:	00b577b3          	and	a5,a0,a1
   11528:	02079463          	bnez	a5,11550 <_malloc_r+0x1fc>
   1152c:	00151513          	slli	a0,a0,0x1
   11530:	ffc8f893          	andi	a7,a7,-4
   11534:	00b577b3          	and	a5,a0,a1
   11538:	0048889b          	addiw	a7,a7,4
   1153c:	00079a63          	bnez	a5,11550 <_malloc_r+0x1fc>
   11540:	00151513          	slli	a0,a0,0x1
   11544:	00b577b3          	and	a5,a0,a1
   11548:	0048889b          	addiw	a7,a7,4
   1154c:	fe078ae3          	beqz	a5,11540 <_malloc_r+0x1ec>
   11550:	01f00e93          	li	t4,31
   11554:	00189f13          	slli	t5,a7,0x1
   11558:	002f0f1b          	addiw	t5,t5,2
   1155c:	003f1f13          	slli	t5,t5,0x3
   11560:	ff0f0f13          	addi	t5,t5,-16
   11564:	01e80f33          	add	t5,a6,t5
   11568:	000f0313          	mv	t1,t5
   1156c:	01833683          	ld	a3,24(t1)
   11570:	00088f93          	mv	t6,a7
   11574:	34d30263          	beq	t1,a3,118b8 <_malloc_r+0x564>
   11578:	0086b603          	ld	a2,8(a3)
   1157c:	00068793          	mv	a5,a3
   11580:	0186b683          	ld	a3,24(a3)
   11584:	ffc67613          	andi	a2,a2,-4
   11588:	40e605b3          	sub	a1,a2,a4
   1158c:	34bec263          	blt	t4,a1,118d0 <_malloc_r+0x57c>
   11590:	fe05c2e3          	bltz	a1,11574 <_malloc_r+0x220>
   11594:	00c78633          	add	a2,a5,a2
   11598:	00863703          	ld	a4,8(a2)
   1159c:	0107b583          	ld	a1,16(a5)
   115a0:	00040513          	mv	a0,s0
   115a4:	00176713          	ori	a4,a4,1
   115a8:	00e63423          	sd	a4,8(a2)
   115ac:	00d5bc23          	sd	a3,24(a1)
   115b0:	00b6b823          	sd	a1,16(a3)
   115b4:	00f13423          	sd	a5,8(sp)
   115b8:	684000ef          	jal	11c3c <__malloc_unlock>
   115bc:	00813783          	ld	a5,8(sp)
   115c0:	01078513          	addi	a0,a5,16
   115c4:	e35ff06f          	j	113f8 <_malloc_r+0xa4>
   115c8:	40000513          	li	a0,1024
   115cc:	04000893          	li	a7,64
   115d0:	03f00e13          	li	t3,63
   115d4:	e81ff06f          	j	11454 <_malloc_r+0x100>
   115d8:	01083783          	ld	a5,16(a6)
   115dc:	0087b683          	ld	a3,8(a5)
   115e0:	ffc6f893          	andi	a7,a3,-4
   115e4:	40e88633          	sub	a2,a7,a4
   115e8:	00e8e663          	bltu	a7,a4,115f4 <_malloc_r+0x2a0>
   115ec:	02062693          	slti	a3,a2,32
   115f0:	1a068863          	beqz	a3,117a0 <_malloc_r+0x44c>
   115f4:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   115f8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   115fc:	fff00693          	li	a3,-1
   11600:	00b705b3          	add	a1,a4,a1
   11604:	44d60663          	beq	a2,a3,11a50 <_malloc_r+0x6fc>
   11608:	000016b7          	lui	a3,0x1
   1160c:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11610:	00d585b3          	add	a1,a1,a3
   11614:	fffff6b7          	lui	a3,0xfffff
   11618:	00d5f5b3          	and	a1,a1,a3
   1161c:	00040513          	mv	a0,s0
   11620:	03013423          	sd	a6,40(sp)
   11624:	02f13023          	sd	a5,32(sp)
   11628:	00e13c23          	sd	a4,24(sp)
   1162c:	01113823          	sd	a7,16(sp)
   11630:	00b13423          	sd	a1,8(sp)
   11634:	271000ef          	jal	120a4 <_sbrk_r>
   11638:	fff00693          	li	a3,-1
   1163c:	00813583          	ld	a1,8(sp)
   11640:	01013883          	ld	a7,16(sp)
   11644:	01813703          	ld	a4,24(sp)
   11648:	02013783          	ld	a5,32(sp)
   1164c:	02813803          	ld	a6,40(sp)
   11650:	00050313          	mv	t1,a0
   11654:	36d50663          	beq	a0,a3,119c0 <_malloc_r+0x66c>
   11658:	011786b3          	add	a3,a5,a7
   1165c:	36d56063          	bltu	a0,a3,119bc <_malloc_r+0x668>
   11660:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11664:	000e2603          	lw	a2,0(t3)
   11668:	00b6063b          	addw	a2,a2,a1
   1166c:	00ce2023          	sw	a2,0(t3)
   11670:	00060513          	mv	a0,a2
   11674:	4a668c63          	beq	a3,t1,11b2c <_malloc_r+0x7d8>
   11678:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1167c:	fff00613          	li	a2,-1
   11680:	4ccf0463          	beq	t5,a2,11b48 <_malloc_r+0x7f4>
   11684:	40d306b3          	sub	a3,t1,a3
   11688:	00a686bb          	addw	a3,a3,a0
   1168c:	00de2023          	sw	a3,0(t3)
   11690:	00f37e93          	andi	t4,t1,15
   11694:	3c0e8e63          	beqz	t4,11a70 <_malloc_r+0x71c>
   11698:	ff037313          	andi	t1,t1,-16
   1169c:	000016b7          	lui	a3,0x1
   116a0:	01030313          	addi	t1,t1,16
   116a4:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   116a8:	00b30633          	add	a2,t1,a1
   116ac:	41d685b3          	sub	a1,a3,t4
   116b0:	40c585b3          	sub	a1,a1,a2
   116b4:	03459593          	slli	a1,a1,0x34
   116b8:	0345d593          	srli	a1,a1,0x34
   116bc:	00040513          	mv	a0,s0
   116c0:	05c13023          	sd	t3,64(sp)
   116c4:	03013c23          	sd	a6,56(sp)
   116c8:	02f13823          	sd	a5,48(sp)
   116cc:	02e13423          	sd	a4,40(sp)
   116d0:	03113023          	sd	a7,32(sp)
   116d4:	00613c23          	sd	t1,24(sp)
   116d8:	01d13823          	sd	t4,16(sp)
   116dc:	00c13423          	sd	a2,8(sp)
   116e0:	04b13423          	sd	a1,72(sp)
   116e4:	1c1000ef          	jal	120a4 <_sbrk_r>
   116e8:	00050693          	mv	a3,a0
   116ec:	fff00513          	li	a0,-1
   116f0:	00813603          	ld	a2,8(sp)
   116f4:	01013e83          	ld	t4,16(sp)
   116f8:	01813303          	ld	t1,24(sp)
   116fc:	02013883          	ld	a7,32(sp)
   11700:	02813703          	ld	a4,40(sp)
   11704:	03013783          	ld	a5,48(sp)
   11708:	03813803          	ld	a6,56(sp)
   1170c:	04013e03          	ld	t3,64(sp)
   11710:	48a68663          	beq	a3,a0,11b9c <_malloc_r+0x848>
   11714:	04813583          	ld	a1,72(sp)
   11718:	0005851b          	sext.w	a0,a1
   1171c:	000e2603          	lw	a2,0(t3)
   11720:	406686b3          	sub	a3,a3,t1
   11724:	00b686b3          	add	a3,a3,a1
   11728:	0016e693          	ori	a3,a3,1
   1172c:	00683823          	sd	t1,16(a6)
   11730:	00a6063b          	addw	a2,a2,a0
   11734:	00d33423          	sd	a3,8(t1)
   11738:	00ce2023          	sw	a2,0(t3)
   1173c:	03078e63          	beq	a5,a6,11778 <_malloc_r+0x424>
   11740:	01f00513          	li	a0,31
   11744:	41157663          	bgeu	a0,a7,11b50 <_malloc_r+0x7fc>
   11748:	0087b583          	ld	a1,8(a5)
   1174c:	fe888693          	addi	a3,a7,-24
   11750:	ff06f693          	andi	a3,a3,-16
   11754:	0015f593          	andi	a1,a1,1
   11758:	00d5e5b3          	or	a1,a1,a3
   1175c:	00b7b423          	sd	a1,8(a5)
   11760:	00900893          	li	a7,9
   11764:	00d785b3          	add	a1,a5,a3
   11768:	0115b423          	sd	a7,8(a1)
   1176c:	0115b823          	sd	a7,16(a1)
   11770:	44d56863          	bltu	a0,a3,11bc0 <_malloc_r+0x86c>
   11774:	00833683          	ld	a3,8(t1)
   11778:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1177c:	00c5f463          	bgeu	a1,a2,11784 <_malloc_r+0x430>
   11780:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11784:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11788:	00c5f463          	bgeu	a1,a2,11790 <_malloc_r+0x43c>
   1178c:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11790:	00030793          	mv	a5,t1
   11794:	2340006f          	j	119c8 <_malloc_r+0x674>
   11798:	00883583          	ld	a1,8(a6)
   1179c:	d79ff06f          	j	11514 <_malloc_r+0x1c0>
   117a0:	00176693          	ori	a3,a4,1
   117a4:	00d7b423          	sd	a3,8(a5)
   117a8:	00e78733          	add	a4,a5,a4
   117ac:	00166613          	ori	a2,a2,1
   117b0:	00e83823          	sd	a4,16(a6)
   117b4:	00040513          	mv	a0,s0
   117b8:	00c73423          	sd	a2,8(a4)
   117bc:	00f13423          	sd	a5,8(sp)
   117c0:	47c000ef          	jal	11c3c <__malloc_unlock>
   117c4:	00813783          	ld	a5,8(sp)
   117c8:	05813083          	ld	ra,88(sp)
   117cc:	05013403          	ld	s0,80(sp)
   117d0:	01078513          	addi	a0,a5,16
   117d4:	06010113          	addi	sp,sp,96
   117d8:	00008067          	ret
   117dc:	0107b603          	ld	a2,16(a5)
   117e0:	00d786b3          	add	a3,a5,a3
   117e4:	0086b703          	ld	a4,8(a3)
   117e8:	00b63c23          	sd	a1,24(a2)
   117ec:	00c5b823          	sd	a2,16(a1)
   117f0:	00176713          	ori	a4,a4,1
   117f4:	00040513          	mv	a0,s0
   117f8:	00e6b423          	sd	a4,8(a3)
   117fc:	00f13423          	sd	a5,8(sp)
   11800:	43c000ef          	jal	11c3c <__malloc_unlock>
   11804:	00813783          	ld	a5,8(sp)
   11808:	05813083          	ld	ra,88(sp)
   1180c:	05013403          	ld	s0,80(sp)
   11810:	01078513          	addi	a0,a5,16
   11814:	06010113          	addi	sp,sp,96
   11818:	00008067          	ret
   1181c:	0186b783          	ld	a5,24(a3)
   11820:	0028889b          	addiw	a7,a7,2
   11824:	c6f68ae3          	beq	a3,a5,11498 <_malloc_r+0x144>
   11828:	b79ff06f          	j	113a0 <_malloc_r+0x4c>
   1182c:	00935693          	srli	a3,t1,0x9
   11830:	00400613          	li	a2,4
   11834:	16d67863          	bgeu	a2,a3,119a4 <_malloc_r+0x650>
   11838:	01400613          	li	a2,20
   1183c:	28d66e63          	bltu	a2,a3,11ad8 <_malloc_r+0x784>
   11840:	00169513          	slli	a0,a3,0x1
   11844:	0b85051b          	addiw	a0,a0,184
   11848:	00351513          	slli	a0,a0,0x3
   1184c:	05b6861b          	addiw	a2,a3,91
   11850:	00a80533          	add	a0,a6,a0
   11854:	00053683          	ld	a3,0(a0)
   11858:	ff050513          	addi	a0,a0,-16
   1185c:	00d51863          	bne	a0,a3,1186c <_malloc_r+0x518>
   11860:	1f80006f          	j	11a58 <_malloc_r+0x704>
   11864:	0106b683          	ld	a3,16(a3)
   11868:	00d50863          	beq	a0,a3,11878 <_malloc_r+0x524>
   1186c:	0086b603          	ld	a2,8(a3)
   11870:	ffc67613          	andi	a2,a2,-4
   11874:	fec368e3          	bltu	t1,a2,11864 <_malloc_r+0x510>
   11878:	0186b503          	ld	a0,24(a3)
   1187c:	00a7bc23          	sd	a0,24(a5)
   11880:	00d7b823          	sd	a3,16(a5)
   11884:	00f53823          	sd	a5,16(a0)
   11888:	00f6bc23          	sd	a5,24(a3)
   1188c:	c89ff06f          	j	11514 <_malloc_r+0x1c0>
   11890:	01400693          	li	a3,20
   11894:	14f6fa63          	bgeu	a3,a5,119e8 <_malloc_r+0x694>
   11898:	05400693          	li	a3,84
   1189c:	24f6ee63          	bltu	a3,a5,11af8 <_malloc_r+0x7a4>
   118a0:	00c75793          	srli	a5,a4,0xc
   118a4:	06f7889b          	addiw	a7,a5,111
   118a8:	0018951b          	slliw	a0,a7,0x1
   118ac:	06e78e1b          	addiw	t3,a5,110
   118b0:	00351513          	slli	a0,a0,0x3
   118b4:	ba1ff06f          	j	11454 <_malloc_r+0x100>
   118b8:	001f8f9b          	addiw	t6,t6,1
   118bc:	003ff793          	andi	a5,t6,3
   118c0:	01030313          	addi	t1,t1,16
   118c4:	14078263          	beqz	a5,11a08 <_malloc_r+0x6b4>
   118c8:	01833683          	ld	a3,24(t1)
   118cc:	ca9ff06f          	j	11574 <_malloc_r+0x220>
   118d0:	0107b503          	ld	a0,16(a5)
   118d4:	00176893          	ori	a7,a4,1
   118d8:	0117b423          	sd	a7,8(a5)
   118dc:	00d53c23          	sd	a3,24(a0)
   118e0:	00a6b823          	sd	a0,16(a3)
   118e4:	00e78733          	add	a4,a5,a4
   118e8:	02e83423          	sd	a4,40(a6)
   118ec:	02e83023          	sd	a4,32(a6)
   118f0:	0015e693          	ori	a3,a1,1
   118f4:	00c78633          	add	a2,a5,a2
   118f8:	01c73c23          	sd	t3,24(a4)
   118fc:	01c73823          	sd	t3,16(a4)
   11900:	00d73423          	sd	a3,8(a4)
   11904:	00040513          	mv	a0,s0
   11908:	00b63023          	sd	a1,0(a2)
   1190c:	00f13423          	sd	a5,8(sp)
   11910:	32c000ef          	jal	11c3c <__malloc_unlock>
   11914:	00813783          	ld	a5,8(sp)
   11918:	01078513          	addi	a0,a5,16
   1191c:	addff06f          	j	113f8 <_malloc_r+0xa4>
   11920:	00375893          	srli	a7,a4,0x3
   11924:	00189693          	slli	a3,a7,0x1
   11928:	0026869b          	addiw	a3,a3,2
   1192c:	00369693          	slli	a3,a3,0x3
   11930:	0008889b          	sext.w	a7,a7
   11934:	a55ff06f          	j	11388 <_malloc_r+0x34>
   11938:	00678333          	add	t1,a5,t1
   1193c:	00833703          	ld	a4,8(t1)
   11940:	00040513          	mv	a0,s0
   11944:	00f13423          	sd	a5,8(sp)
   11948:	00176713          	ori	a4,a4,1
   1194c:	00e33423          	sd	a4,8(t1)
   11950:	2ec000ef          	jal	11c3c <__malloc_unlock>
   11954:	00813783          	ld	a5,8(sp)
   11958:	01078513          	addi	a0,a5,16
   1195c:	a9dff06f          	j	113f8 <_malloc_r+0xa4>
   11960:	00176613          	ori	a2,a4,1
   11964:	00c7b423          	sd	a2,8(a5)
   11968:	00e78733          	add	a4,a5,a4
   1196c:	02e83423          	sd	a4,40(a6)
   11970:	02e83023          	sd	a4,32(a6)
   11974:	0016e613          	ori	a2,a3,1
   11978:	00678333          	add	t1,a5,t1
   1197c:	01c73c23          	sd	t3,24(a4)
   11980:	01c73823          	sd	t3,16(a4)
   11984:	00c73423          	sd	a2,8(a4)
   11988:	00040513          	mv	a0,s0
   1198c:	00d33023          	sd	a3,0(t1)
   11990:	00f13423          	sd	a5,8(sp)
   11994:	2a8000ef          	jal	11c3c <__malloc_unlock>
   11998:	00813783          	ld	a5,8(sp)
   1199c:	01078513          	addi	a0,a5,16
   119a0:	a59ff06f          	j	113f8 <_malloc_r+0xa4>
   119a4:	00635693          	srli	a3,t1,0x6
   119a8:	00169513          	slli	a0,a3,0x1
   119ac:	0725051b          	addiw	a0,a0,114
   119b0:	00351513          	slli	a0,a0,0x3
   119b4:	0386861b          	addiw	a2,a3,56
   119b8:	e99ff06f          	j	11850 <_malloc_r+0x4fc>
   119bc:	15078e63          	beq	a5,a6,11b18 <_malloc_r+0x7c4>
   119c0:	01083783          	ld	a5,16(a6)
   119c4:	0087b683          	ld	a3,8(a5)
   119c8:	ffc6f693          	andi	a3,a3,-4
   119cc:	40e68633          	sub	a2,a3,a4
   119d0:	00e6e663          	bltu	a3,a4,119dc <_malloc_r+0x688>
   119d4:	02062693          	slti	a3,a2,32
   119d8:	dc0684e3          	beqz	a3,117a0 <_malloc_r+0x44c>
   119dc:	00040513          	mv	a0,s0
   119e0:	25c000ef          	jal	11c3c <__malloc_unlock>
   119e4:	a11ff06f          	j	113f4 <_malloc_r+0xa0>
   119e8:	05c7889b          	addiw	a7,a5,92
   119ec:	0018951b          	slliw	a0,a7,0x1
   119f0:	05b78e1b          	addiw	t3,a5,91
   119f4:	00351513          	slli	a0,a0,0x3
   119f8:	a5dff06f          	j	11454 <_malloc_r+0x100>
   119fc:	010f3783          	ld	a5,16(t5)
   11a00:	fff8889b          	addiw	a7,a7,-1
   11a04:	23e79663          	bne	a5,t5,11c30 <_malloc_r+0x8dc>
   11a08:	0038f793          	andi	a5,a7,3
   11a0c:	ff0f0f13          	addi	t5,t5,-16
   11a10:	fe0796e3          	bnez	a5,119fc <_malloc_r+0x6a8>
   11a14:	00883683          	ld	a3,8(a6)
   11a18:	fff54793          	not	a5,a0
   11a1c:	00d7f7b3          	and	a5,a5,a3
   11a20:	00f83423          	sd	a5,8(a6)
   11a24:	00151513          	slli	a0,a0,0x1
   11a28:	fff50693          	addi	a3,a0,-1
   11a2c:	baf6f6e3          	bgeu	a3,a5,115d8 <_malloc_r+0x284>
   11a30:	00f576b3          	and	a3,a0,a5
   11a34:	00069a63          	bnez	a3,11a48 <_malloc_r+0x6f4>
   11a38:	00151513          	slli	a0,a0,0x1
   11a3c:	00f576b3          	and	a3,a0,a5
   11a40:	004f8f9b          	addiw	t6,t6,4
   11a44:	fe068ae3          	beqz	a3,11a38 <_malloc_r+0x6e4>
   11a48:	000f8893          	mv	a7,t6
   11a4c:	b09ff06f          	j	11554 <_malloc_r+0x200>
   11a50:	02058593          	addi	a1,a1,32
   11a54:	bc9ff06f          	j	1161c <_malloc_r+0x2c8>
   11a58:	4026561b          	sraiw	a2,a2,0x2
   11a5c:	00100313          	li	t1,1
   11a60:	00c31633          	sll	a2,t1,a2
   11a64:	00c5e5b3          	or	a1,a1,a2
   11a68:	00b83423          	sd	a1,8(a6)
   11a6c:	e11ff06f          	j	1187c <_malloc_r+0x528>
   11a70:	00b30633          	add	a2,t1,a1
   11a74:	40c005b3          	neg	a1,a2
   11a78:	03459593          	slli	a1,a1,0x34
   11a7c:	0345d593          	srli	a1,a1,0x34
   11a80:	00040513          	mv	a0,s0
   11a84:	03c13c23          	sd	t3,56(sp)
   11a88:	03013823          	sd	a6,48(sp)
   11a8c:	02f13423          	sd	a5,40(sp)
   11a90:	02e13023          	sd	a4,32(sp)
   11a94:	01113c23          	sd	a7,24(sp)
   11a98:	00613823          	sd	t1,16(sp)
   11a9c:	00c13423          	sd	a2,8(sp)
   11aa0:	04b13023          	sd	a1,64(sp)
   11aa4:	600000ef          	jal	120a4 <_sbrk_r>
   11aa8:	00050693          	mv	a3,a0
   11aac:	fff00513          	li	a0,-1
   11ab0:	01013303          	ld	t1,16(sp)
   11ab4:	01813883          	ld	a7,24(sp)
   11ab8:	02013703          	ld	a4,32(sp)
   11abc:	02813783          	ld	a5,40(sp)
   11ac0:	03013803          	ld	a6,48(sp)
   11ac4:	03813e03          	ld	t3,56(sp)
   11ac8:	0ea68463          	beq	a3,a0,11bb0 <_malloc_r+0x85c>
   11acc:	04013583          	ld	a1,64(sp)
   11ad0:	0005851b          	sext.w	a0,a1
   11ad4:	c49ff06f          	j	1171c <_malloc_r+0x3c8>
   11ad8:	05400613          	li	a2,84
   11adc:	08d66063          	bltu	a2,a3,11b5c <_malloc_r+0x808>
   11ae0:	00c35693          	srli	a3,t1,0xc
   11ae4:	00169513          	slli	a0,a3,0x1
   11ae8:	0de5051b          	addiw	a0,a0,222
   11aec:	00351513          	slli	a0,a0,0x3
   11af0:	06e6861b          	addiw	a2,a3,110
   11af4:	d5dff06f          	j	11850 <_malloc_r+0x4fc>
   11af8:	15400693          	li	a3,340
   11afc:	08f6e063          	bltu	a3,a5,11b7c <_malloc_r+0x828>
   11b00:	00f75793          	srli	a5,a4,0xf
   11b04:	0787889b          	addiw	a7,a5,120
   11b08:	0018951b          	slliw	a0,a7,0x1
   11b0c:	07778e1b          	addiw	t3,a5,119
   11b10:	00351513          	slli	a0,a0,0x3
   11b14:	941ff06f          	j	11454 <_malloc_r+0x100>
   11b18:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11b1c:	000e2503          	lw	a0,0(t3)
   11b20:	00b5053b          	addw	a0,a0,a1
   11b24:	00ae2023          	sw	a0,0(t3)
   11b28:	b51ff06f          	j	11678 <_malloc_r+0x324>
   11b2c:	03431f13          	slli	t5,t1,0x34
   11b30:	b40f14e3          	bnez	t5,11678 <_malloc_r+0x324>
   11b34:	01083303          	ld	t1,16(a6)
   11b38:	00b885b3          	add	a1,a7,a1
   11b3c:	0015e693          	ori	a3,a1,1
   11b40:	00d33423          	sd	a3,8(t1)
   11b44:	c35ff06f          	j	11778 <_malloc_r+0x424>
   11b48:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11b4c:	b45ff06f          	j	11690 <_malloc_r+0x33c>
   11b50:	00100793          	li	a5,1
   11b54:	00f33423          	sd	a5,8(t1)
   11b58:	e85ff06f          	j	119dc <_malloc_r+0x688>
   11b5c:	15400613          	li	a2,340
   11b60:	08d66a63          	bltu	a2,a3,11bf4 <_malloc_r+0x8a0>
   11b64:	00f35693          	srli	a3,t1,0xf
   11b68:	00169513          	slli	a0,a3,0x1
   11b6c:	0f05051b          	addiw	a0,a0,240
   11b70:	00351513          	slli	a0,a0,0x3
   11b74:	0776861b          	addiw	a2,a3,119
   11b78:	cd9ff06f          	j	11850 <_malloc_r+0x4fc>
   11b7c:	55400693          	li	a3,1364
   11b80:	08f6ea63          	bltu	a3,a5,11c14 <_malloc_r+0x8c0>
   11b84:	01275793          	srli	a5,a4,0x12
   11b88:	07d7889b          	addiw	a7,a5,125
   11b8c:	0018951b          	slliw	a0,a7,0x1
   11b90:	07c78e1b          	addiw	t3,a5,124
   11b94:	00351513          	slli	a0,a0,0x3
   11b98:	8bdff06f          	j	11454 <_malloc_r+0x100>
   11b9c:	ff0e8e93          	addi	t4,t4,-16
   11ba0:	01d606b3          	add	a3,a2,t4
   11ba4:	00000513          	li	a0,0
   11ba8:	00000593          	li	a1,0
   11bac:	b71ff06f          	j	1171c <_malloc_r+0x3c8>
   11bb0:	00813683          	ld	a3,8(sp)
   11bb4:	00000593          	li	a1,0
   11bb8:	00000513          	li	a0,0
   11bbc:	b61ff06f          	j	1171c <_malloc_r+0x3c8>
   11bc0:	01078593          	addi	a1,a5,16
   11bc4:	00040513          	mv	a0,s0
   11bc8:	01c13c23          	sd	t3,24(sp)
   11bcc:	01013823          	sd	a6,16(sp)
   11bd0:	00e13423          	sd	a4,8(sp)
   11bd4:	c7cff0ef          	jal	11050 <_free_r>
   11bd8:	01013803          	ld	a6,16(sp)
   11bdc:	01813e03          	ld	t3,24(sp)
   11be0:	00813703          	ld	a4,8(sp)
   11be4:	01083303          	ld	t1,16(a6)
   11be8:	000e2603          	lw	a2,0(t3)
   11bec:	00833683          	ld	a3,8(t1)
   11bf0:	b89ff06f          	j	11778 <_malloc_r+0x424>
   11bf4:	55400613          	li	a2,1364
   11bf8:	02d66663          	bltu	a2,a3,11c24 <_malloc_r+0x8d0>
   11bfc:	01235693          	srli	a3,t1,0x12
   11c00:	00169513          	slli	a0,a3,0x1
   11c04:	0fa5051b          	addiw	a0,a0,250
   11c08:	00351513          	slli	a0,a0,0x3
   11c0c:	07c6861b          	addiw	a2,a3,124
   11c10:	c41ff06f          	j	11850 <_malloc_r+0x4fc>
   11c14:	7f000513          	li	a0,2032
   11c18:	07f00893          	li	a7,127
   11c1c:	07e00e13          	li	t3,126
   11c20:	835ff06f          	j	11454 <_malloc_r+0x100>
   11c24:	7f000513          	li	a0,2032
   11c28:	07e00613          	li	a2,126
   11c2c:	c25ff06f          	j	11850 <_malloc_r+0x4fc>
   11c30:	00883783          	ld	a5,8(a6)
   11c34:	df1ff06f          	j	11a24 <_malloc_r+0x6d0>

0000000000011c38 <__malloc_lock>:
   11c38:	00008067          	ret

0000000000011c3c <__malloc_unlock>:
   11c3c:	00008067          	ret

0000000000011c40 <_fclose_r>:
   11c40:	fe010113          	addi	sp,sp,-32
   11c44:	00113c23          	sd	ra,24(sp)
   11c48:	01213023          	sd	s2,0(sp)
   11c4c:	02058863          	beqz	a1,11c7c <_fclose_r+0x3c>
   11c50:	00813823          	sd	s0,16(sp)
   11c54:	00913423          	sd	s1,8(sp)
   11c58:	00058413          	mv	s0,a1
   11c5c:	00050493          	mv	s1,a0
   11c60:	00050663          	beqz	a0,11c6c <_fclose_r+0x2c>
   11c64:	04853783          	ld	a5,72(a0)
   11c68:	0c078c63          	beqz	a5,11d40 <_fclose_r+0x100>
   11c6c:	01041783          	lh	a5,16(s0)
   11c70:	02079263          	bnez	a5,11c94 <_fclose_r+0x54>
   11c74:	01013403          	ld	s0,16(sp)
   11c78:	00813483          	ld	s1,8(sp)
   11c7c:	01813083          	ld	ra,24(sp)
   11c80:	00000913          	li	s2,0
   11c84:	00090513          	mv	a0,s2
   11c88:	00013903          	ld	s2,0(sp)
   11c8c:	02010113          	addi	sp,sp,32
   11c90:	00008067          	ret
   11c94:	00040593          	mv	a1,s0
   11c98:	00048513          	mv	a0,s1
   11c9c:	0b8000ef          	jal	11d54 <__sflush_r>
   11ca0:	05043783          	ld	a5,80(s0)
   11ca4:	00050913          	mv	s2,a0
   11ca8:	00078a63          	beqz	a5,11cbc <_fclose_r+0x7c>
   11cac:	03043583          	ld	a1,48(s0)
   11cb0:	00048513          	mv	a0,s1
   11cb4:	000780e7          	jalr	a5
   11cb8:	06054463          	bltz	a0,11d20 <_fclose_r+0xe0>
   11cbc:	01045783          	lhu	a5,16(s0)
   11cc0:	0807f793          	andi	a5,a5,128
   11cc4:	06079663          	bnez	a5,11d30 <_fclose_r+0xf0>
   11cc8:	05843583          	ld	a1,88(s0)
   11ccc:	00058c63          	beqz	a1,11ce4 <_fclose_r+0xa4>
   11cd0:	07440793          	addi	a5,s0,116
   11cd4:	00f58663          	beq	a1,a5,11ce0 <_fclose_r+0xa0>
   11cd8:	00048513          	mv	a0,s1
   11cdc:	b74ff0ef          	jal	11050 <_free_r>
   11ce0:	04043c23          	sd	zero,88(s0)
   11ce4:	07843583          	ld	a1,120(s0)
   11ce8:	00058863          	beqz	a1,11cf8 <_fclose_r+0xb8>
   11cec:	00048513          	mv	a0,s1
   11cf0:	b60ff0ef          	jal	11050 <_free_r>
   11cf4:	06043c23          	sd	zero,120(s0)
   11cf8:	aa1fe0ef          	jal	10798 <__sfp_lock_acquire>
   11cfc:	00041823          	sh	zero,16(s0)
   11d00:	a9dfe0ef          	jal	1079c <__sfp_lock_release>
   11d04:	01813083          	ld	ra,24(sp)
   11d08:	01013403          	ld	s0,16(sp)
   11d0c:	00813483          	ld	s1,8(sp)
   11d10:	00090513          	mv	a0,s2
   11d14:	00013903          	ld	s2,0(sp)
   11d18:	02010113          	addi	sp,sp,32
   11d1c:	00008067          	ret
   11d20:	01045783          	lhu	a5,16(s0)
   11d24:	fff00913          	li	s2,-1
   11d28:	0807f793          	andi	a5,a5,128
   11d2c:	f8078ee3          	beqz	a5,11cc8 <_fclose_r+0x88>
   11d30:	01843583          	ld	a1,24(s0)
   11d34:	00048513          	mv	a0,s1
   11d38:	b18ff0ef          	jal	11050 <_free_r>
   11d3c:	f8dff06f          	j	11cc8 <_fclose_r+0x88>
   11d40:	a35fe0ef          	jal	10774 <__sinit>
   11d44:	f29ff06f          	j	11c6c <_fclose_r+0x2c>

0000000000011d48 <fclose>:
   11d48:	00050593          	mv	a1,a0
   11d4c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11d50:	ef1ff06f          	j	11c40 <_fclose_r>

0000000000011d54 <__sflush_r>:
   11d54:	01059703          	lh	a4,16(a1)
   11d58:	fd010113          	addi	sp,sp,-48
   11d5c:	02813023          	sd	s0,32(sp)
   11d60:	01313423          	sd	s3,8(sp)
   11d64:	02113423          	sd	ra,40(sp)
   11d68:	00877793          	andi	a5,a4,8
   11d6c:	00058413          	mv	s0,a1
   11d70:	00050993          	mv	s3,a0
   11d74:	12079263          	bnez	a5,11e98 <__sflush_r+0x144>
   11d78:	000017b7          	lui	a5,0x1
   11d7c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11d80:	0085a683          	lw	a3,8(a1)
   11d84:	00f767b3          	or	a5,a4,a5
   11d88:	00f59823          	sh	a5,16(a1)
   11d8c:	18d05c63          	blez	a3,11f24 <__sflush_r+0x1d0>
   11d90:	04843803          	ld	a6,72(s0)
   11d94:	0e080663          	beqz	a6,11e80 <__sflush_r+0x12c>
   11d98:	00913c23          	sd	s1,24(sp)
   11d9c:	03371693          	slli	a3,a4,0x33
   11da0:	0009a483          	lw	s1,0(s3)
   11da4:	0009a023          	sw	zero,0(s3)
   11da8:	1806ca63          	bltz	a3,11f3c <__sflush_r+0x1e8>
   11dac:	03043583          	ld	a1,48(s0)
   11db0:	00000613          	li	a2,0
   11db4:	00100693          	li	a3,1
   11db8:	00098513          	mv	a0,s3
   11dbc:	000800e7          	jalr	a6
   11dc0:	fff00793          	li	a5,-1
   11dc4:	00050613          	mv	a2,a0
   11dc8:	1af50c63          	beq	a0,a5,11f80 <__sflush_r+0x22c>
   11dcc:	01041783          	lh	a5,16(s0)
   11dd0:	04843803          	ld	a6,72(s0)
   11dd4:	0047f793          	andi	a5,a5,4
   11dd8:	00078e63          	beqz	a5,11df4 <__sflush_r+0xa0>
   11ddc:	00842703          	lw	a4,8(s0)
   11de0:	05843783          	ld	a5,88(s0)
   11de4:	40e60633          	sub	a2,a2,a4
   11de8:	00078663          	beqz	a5,11df4 <__sflush_r+0xa0>
   11dec:	07042783          	lw	a5,112(s0)
   11df0:	40f60633          	sub	a2,a2,a5
   11df4:	03043583          	ld	a1,48(s0)
   11df8:	00000693          	li	a3,0
   11dfc:	00098513          	mv	a0,s3
   11e00:	000800e7          	jalr	a6
   11e04:	fff00713          	li	a4,-1
   11e08:	01041783          	lh	a5,16(s0)
   11e0c:	12e51c63          	bne	a0,a4,11f44 <__sflush_r+0x1f0>
   11e10:	0009a683          	lw	a3,0(s3)
   11e14:	01d00713          	li	a4,29
   11e18:	18d76263          	bltu	a4,a3,11f9c <__sflush_r+0x248>
   11e1c:	20400737          	lui	a4,0x20400
   11e20:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11e24:	00d75733          	srl	a4,a4,a3
   11e28:	00177713          	andi	a4,a4,1
   11e2c:	16070863          	beqz	a4,11f9c <__sflush_r+0x248>
   11e30:	01843683          	ld	a3,24(s0)
   11e34:	fffff737          	lui	a4,0xfffff
   11e38:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11e3c:	00e7f733          	and	a4,a5,a4
   11e40:	00e41823          	sh	a4,16(s0)
   11e44:	00042423          	sw	zero,8(s0)
   11e48:	00d43023          	sd	a3,0(s0)
   11e4c:	03379713          	slli	a4,a5,0x33
   11e50:	00075663          	bgez	a4,11e5c <__sflush_r+0x108>
   11e54:	0009a783          	lw	a5,0(s3)
   11e58:	10078863          	beqz	a5,11f68 <__sflush_r+0x214>
   11e5c:	05843583          	ld	a1,88(s0)
   11e60:	0099a023          	sw	s1,0(s3)
   11e64:	10058a63          	beqz	a1,11f78 <__sflush_r+0x224>
   11e68:	07440793          	addi	a5,s0,116
   11e6c:	00f58663          	beq	a1,a5,11e78 <__sflush_r+0x124>
   11e70:	00098513          	mv	a0,s3
   11e74:	9dcff0ef          	jal	11050 <_free_r>
   11e78:	01813483          	ld	s1,24(sp)
   11e7c:	04043c23          	sd	zero,88(s0)
   11e80:	02813083          	ld	ra,40(sp)
   11e84:	02013403          	ld	s0,32(sp)
   11e88:	00813983          	ld	s3,8(sp)
   11e8c:	00000513          	li	a0,0
   11e90:	03010113          	addi	sp,sp,48
   11e94:	00008067          	ret
   11e98:	01213823          	sd	s2,16(sp)
   11e9c:	0185b903          	ld	s2,24(a1)
   11ea0:	08090a63          	beqz	s2,11f34 <__sflush_r+0x1e0>
   11ea4:	00913c23          	sd	s1,24(sp)
   11ea8:	0005b483          	ld	s1,0(a1)
   11eac:	00377713          	andi	a4,a4,3
   11eb0:	0125b023          	sd	s2,0(a1)
   11eb4:	412484bb          	subw	s1,s1,s2
   11eb8:	00000793          	li	a5,0
   11ebc:	00071463          	bnez	a4,11ec4 <__sflush_r+0x170>
   11ec0:	0205a783          	lw	a5,32(a1)
   11ec4:	00f42623          	sw	a5,12(s0)
   11ec8:	00904863          	bgtz	s1,11ed8 <__sflush_r+0x184>
   11ecc:	0640006f          	j	11f30 <__sflush_r+0x1dc>
   11ed0:	00a90933          	add	s2,s2,a0
   11ed4:	04905e63          	blez	s1,11f30 <__sflush_r+0x1dc>
   11ed8:	04043783          	ld	a5,64(s0)
   11edc:	03043583          	ld	a1,48(s0)
   11ee0:	00048693          	mv	a3,s1
   11ee4:	00090613          	mv	a2,s2
   11ee8:	00098513          	mv	a0,s3
   11eec:	000780e7          	jalr	a5
   11ef0:	40a484bb          	subw	s1,s1,a0
   11ef4:	fca04ee3          	bgtz	a0,11ed0 <__sflush_r+0x17c>
   11ef8:	01045783          	lhu	a5,16(s0)
   11efc:	01013903          	ld	s2,16(sp)
   11f00:	0407e793          	ori	a5,a5,64
   11f04:	02813083          	ld	ra,40(sp)
   11f08:	00f41823          	sh	a5,16(s0)
   11f0c:	02013403          	ld	s0,32(sp)
   11f10:	01813483          	ld	s1,24(sp)
   11f14:	00813983          	ld	s3,8(sp)
   11f18:	fff00513          	li	a0,-1
   11f1c:	03010113          	addi	sp,sp,48
   11f20:	00008067          	ret
   11f24:	0705a683          	lw	a3,112(a1)
   11f28:	e6d044e3          	bgtz	a3,11d90 <__sflush_r+0x3c>
   11f2c:	f55ff06f          	j	11e80 <__sflush_r+0x12c>
   11f30:	01813483          	ld	s1,24(sp)
   11f34:	01013903          	ld	s2,16(sp)
   11f38:	f49ff06f          	j	11e80 <__sflush_r+0x12c>
   11f3c:	09043603          	ld	a2,144(s0)
   11f40:	e95ff06f          	j	11dd4 <__sflush_r+0x80>
   11f44:	01843683          	ld	a3,24(s0)
   11f48:	fffff737          	lui	a4,0xfffff
   11f4c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11f50:	00e7f733          	and	a4,a5,a4
   11f54:	00e41823          	sh	a4,16(s0)
   11f58:	00042423          	sw	zero,8(s0)
   11f5c:	00d43023          	sd	a3,0(s0)
   11f60:	03379713          	slli	a4,a5,0x33
   11f64:	ee075ce3          	bgez	a4,11e5c <__sflush_r+0x108>
   11f68:	05843583          	ld	a1,88(s0)
   11f6c:	08a43823          	sd	a0,144(s0)
   11f70:	0099a023          	sw	s1,0(s3)
   11f74:	ee059ae3          	bnez	a1,11e68 <__sflush_r+0x114>
   11f78:	01813483          	ld	s1,24(sp)
   11f7c:	f05ff06f          	j	11e80 <__sflush_r+0x12c>
   11f80:	0009a783          	lw	a5,0(s3)
   11f84:	e40784e3          	beqz	a5,11dcc <__sflush_r+0x78>
   11f88:	fe378713          	addi	a4,a5,-29
   11f8c:	00070c63          	beqz	a4,11fa4 <__sflush_r+0x250>
   11f90:	fea78793          	addi	a5,a5,-22
   11f94:	00078863          	beqz	a5,11fa4 <__sflush_r+0x250>
   11f98:	01045783          	lhu	a5,16(s0)
   11f9c:	0407e793          	ori	a5,a5,64
   11fa0:	f65ff06f          	j	11f04 <__sflush_r+0x1b0>
   11fa4:	0099a023          	sw	s1,0(s3)
   11fa8:	01813483          	ld	s1,24(sp)
   11fac:	ed5ff06f          	j	11e80 <__sflush_r+0x12c>

0000000000011fb0 <_fflush_r>:
   11fb0:	00050793          	mv	a5,a0
   11fb4:	00050663          	beqz	a0,11fc0 <_fflush_r+0x10>
   11fb8:	04853703          	ld	a4,72(a0)
   11fbc:	00070e63          	beqz	a4,11fd8 <_fflush_r+0x28>
   11fc0:	01059703          	lh	a4,16(a1)
   11fc4:	00071663          	bnez	a4,11fd0 <_fflush_r+0x20>
   11fc8:	00000513          	li	a0,0
   11fcc:	00008067          	ret
   11fd0:	00078513          	mv	a0,a5
   11fd4:	d81ff06f          	j	11d54 <__sflush_r>
   11fd8:	fe010113          	addi	sp,sp,-32
   11fdc:	00b13423          	sd	a1,8(sp)
   11fe0:	00113c23          	sd	ra,24(sp)
   11fe4:	00a13023          	sd	a0,0(sp)
   11fe8:	f8cfe0ef          	jal	10774 <__sinit>
   11fec:	00813583          	ld	a1,8(sp)
   11ff0:	00013783          	ld	a5,0(sp)
   11ff4:	01059703          	lh	a4,16(a1)
   11ff8:	00070a63          	beqz	a4,1200c <_fflush_r+0x5c>
   11ffc:	01813083          	ld	ra,24(sp)
   12000:	00078513          	mv	a0,a5
   12004:	02010113          	addi	sp,sp,32
   12008:	d4dff06f          	j	11d54 <__sflush_r>
   1200c:	01813083          	ld	ra,24(sp)
   12010:	00000513          	li	a0,0
   12014:	02010113          	addi	sp,sp,32
   12018:	00008067          	ret

000000000001201c <fflush>:
   1201c:	06050063          	beqz	a0,1207c <fflush+0x60>
   12020:	00050593          	mv	a1,a0
   12024:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12028:	00050663          	beqz	a0,12034 <fflush+0x18>
   1202c:	04853783          	ld	a5,72(a0)
   12030:	00078c63          	beqz	a5,12048 <fflush+0x2c>
   12034:	01059783          	lh	a5,16(a1)
   12038:	00079663          	bnez	a5,12044 <fflush+0x28>
   1203c:	00000513          	li	a0,0
   12040:	00008067          	ret
   12044:	d11ff06f          	j	11d54 <__sflush_r>
   12048:	fe010113          	addi	sp,sp,-32
   1204c:	00b13423          	sd	a1,8(sp)
   12050:	00a13023          	sd	a0,0(sp)
   12054:	00113c23          	sd	ra,24(sp)
   12058:	f1cfe0ef          	jal	10774 <__sinit>
   1205c:	00813583          	ld	a1,8(sp)
   12060:	00013503          	ld	a0,0(sp)
   12064:	01059783          	lh	a5,16(a1)
   12068:	02079863          	bnez	a5,12098 <fflush+0x7c>
   1206c:	01813083          	ld	ra,24(sp)
   12070:	00000513          	li	a0,0
   12074:	02010113          	addi	sp,sp,32
   12078:	00008067          	ret
   1207c:	00013637          	lui	a2,0x13
   12080:	000125b7          	lui	a1,0x12
   12084:	00013537          	lui	a0,0x13
   12088:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1208c:	fb058593          	addi	a1,a1,-80 # 11fb0 <_fflush_r>
   12090:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12094:	f3cfe06f          	j	107d0 <_fwalk_sglue>
   12098:	01813083          	ld	ra,24(sp)
   1209c:	02010113          	addi	sp,sp,32
   120a0:	cb5ff06f          	j	11d54 <__sflush_r>

00000000000120a4 <_sbrk_r>:
   120a4:	fe010113          	addi	sp,sp,-32
   120a8:	00813823          	sd	s0,16(sp)
   120ac:	00913423          	sd	s1,8(sp)
   120b0:	00050493          	mv	s1,a0
   120b4:	00058513          	mv	a0,a1
   120b8:	00113c23          	sd	ra,24(sp)
   120bc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   120c0:	228000ef          	jal	122e8 <_sbrk>
   120c4:	fff00793          	li	a5,-1
   120c8:	00f50c63          	beq	a0,a5,120e0 <_sbrk_r+0x3c>
   120cc:	01813083          	ld	ra,24(sp)
   120d0:	01013403          	ld	s0,16(sp)
   120d4:	00813483          	ld	s1,8(sp)
   120d8:	02010113          	addi	sp,sp,32
   120dc:	00008067          	ret
   120e0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   120e4:	fe0784e3          	beqz	a5,120cc <_sbrk_r+0x28>
   120e8:	01813083          	ld	ra,24(sp)
   120ec:	01013403          	ld	s0,16(sp)
   120f0:	00f4a023          	sw	a5,0(s1)
   120f4:	00813483          	ld	s1,8(sp)
   120f8:	02010113          	addi	sp,sp,32
   120fc:	00008067          	ret

0000000000012100 <__libc_fini_array>:
   12100:	fe010113          	addi	sp,sp,-32
   12104:	00813823          	sd	s0,16(sp)
   12108:	000137b7          	lui	a5,0x13
   1210c:	00013437          	lui	s0,0x13
   12110:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12114:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12118:	408787b3          	sub	a5,a5,s0
   1211c:	00913423          	sd	s1,8(sp)
   12120:	00113c23          	sd	ra,24(sp)
   12124:	4037d493          	srai	s1,a5,0x3
   12128:	02048063          	beqz	s1,12148 <__libc_fini_array+0x48>
   1212c:	ff840413          	addi	s0,s0,-8
   12130:	00f40433          	add	s0,s0,a5
   12134:	00043783          	ld	a5,0(s0)
   12138:	fff48493          	addi	s1,s1,-1
   1213c:	ff840413          	addi	s0,s0,-8
   12140:	000780e7          	jalr	a5
   12144:	fe0498e3          	bnez	s1,12134 <__libc_fini_array+0x34>
   12148:	01813083          	ld	ra,24(sp)
   1214c:	01013403          	ld	s0,16(sp)
   12150:	00813483          	ld	s1,8(sp)
   12154:	02010113          	addi	sp,sp,32
   12158:	00008067          	ret

000000000001215c <__register_exitproc>:
   1215c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12160:	04078e63          	beqz	a5,121bc <__register_exitproc+0x60>
   12164:	0087a703          	lw	a4,8(a5)
   12168:	01f00813          	li	a6,31
   1216c:	08e84263          	blt	a6,a4,121f0 <__register_exitproc+0x94>
   12170:	02050863          	beqz	a0,121a0 <__register_exitproc+0x44>
   12174:	00371813          	slli	a6,a4,0x3
   12178:	01078833          	add	a6,a5,a6
   1217c:	10c83823          	sd	a2,272(a6)
   12180:	3107a883          	lw	a7,784(a5)
   12184:	00100613          	li	a2,1
   12188:	00e6163b          	sllw	a2,a2,a4
   1218c:	00c8e8b3          	or	a7,a7,a2
   12190:	3117a823          	sw	a7,784(a5)
   12194:	20d83823          	sd	a3,528(a6)
   12198:	00200693          	li	a3,2
   1219c:	02d50663          	beq	a0,a3,121c8 <__register_exitproc+0x6c>
   121a0:	0017069b          	addiw	a3,a4,1
   121a4:	00371713          	slli	a4,a4,0x3
   121a8:	00d7a423          	sw	a3,8(a5)
   121ac:	00e787b3          	add	a5,a5,a4
   121b0:	00b7b823          	sd	a1,16(a5)
   121b4:	00000513          	li	a0,0
   121b8:	00008067          	ret
   121bc:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   121c0:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   121c4:	fa1ff06f          	j	12164 <__register_exitproc+0x8>
   121c8:	3147a683          	lw	a3,788(a5)
   121cc:	00000513          	li	a0,0
   121d0:	00d66633          	or	a2,a2,a3
   121d4:	0017069b          	addiw	a3,a4,1
   121d8:	00371713          	slli	a4,a4,0x3
   121dc:	30c7aa23          	sw	a2,788(a5)
   121e0:	00d7a423          	sw	a3,8(a5)
   121e4:	00e787b3          	add	a5,a5,a4
   121e8:	00b7b823          	sd	a1,16(a5)
   121ec:	00008067          	ret
   121f0:	fff00513          	li	a0,-1
   121f4:	00008067          	ret

00000000000121f8 <_close>:
   121f8:	03900893          	li	a7,57
   121fc:	00000073          	ecall
   12200:	00054663          	bltz	a0,1220c <_close+0x14>
   12204:	0005051b          	sext.w	a0,a0
   12208:	00008067          	ret
   1220c:	fe010113          	addi	sp,sp,-32
   12210:	00113c23          	sd	ra,24(sp)
   12214:	00a13423          	sd	a0,8(sp)
   12218:	188000ef          	jal	123a0 <__errno>
   1221c:	00813783          	ld	a5,8(sp)
   12220:	01813083          	ld	ra,24(sp)
   12224:	40f007bb          	negw	a5,a5
   12228:	00f52023          	sw	a5,0(a0)
   1222c:	fff00513          	li	a0,-1
   12230:	02010113          	addi	sp,sp,32
   12234:	00008067          	ret

0000000000012238 <_exit>:
   12238:	05d00893          	li	a7,93
   1223c:	00000073          	ecall
   12240:	00054463          	bltz	a0,12248 <_exit+0x10>
   12244:	0000006f          	j	12244 <_exit+0xc>
   12248:	fe010113          	addi	sp,sp,-32
   1224c:	00113c23          	sd	ra,24(sp)
   12250:	00a13423          	sd	a0,8(sp)
   12254:	14c000ef          	jal	123a0 <__errno>
   12258:	00813783          	ld	a5,8(sp)
   1225c:	40f007bb          	negw	a5,a5
   12260:	00f52023          	sw	a5,0(a0)
   12264:	0000006f          	j	12264 <_exit+0x2c>

0000000000012268 <_lseek>:
   12268:	03e00893          	li	a7,62
   1226c:	00000073          	ecall
   12270:	00054463          	bltz	a0,12278 <_lseek+0x10>
   12274:	00008067          	ret
   12278:	fe010113          	addi	sp,sp,-32
   1227c:	00113c23          	sd	ra,24(sp)
   12280:	00a13423          	sd	a0,8(sp)
   12284:	11c000ef          	jal	123a0 <__errno>
   12288:	00813783          	ld	a5,8(sp)
   1228c:	01813083          	ld	ra,24(sp)
   12290:	40f007bb          	negw	a5,a5
   12294:	00f52023          	sw	a5,0(a0)
   12298:	fff00793          	li	a5,-1
   1229c:	00078513          	mv	a0,a5
   122a0:	02010113          	addi	sp,sp,32
   122a4:	00008067          	ret

00000000000122a8 <_read>:
   122a8:	03f00893          	li	a7,63
   122ac:	00000073          	ecall
   122b0:	00054463          	bltz	a0,122b8 <_read+0x10>
   122b4:	00008067          	ret
   122b8:	fe010113          	addi	sp,sp,-32
   122bc:	00113c23          	sd	ra,24(sp)
   122c0:	00a13423          	sd	a0,8(sp)
   122c4:	0dc000ef          	jal	123a0 <__errno>
   122c8:	00813783          	ld	a5,8(sp)
   122cc:	01813083          	ld	ra,24(sp)
   122d0:	40f007bb          	negw	a5,a5
   122d4:	00f52023          	sw	a5,0(a0)
   122d8:	fff00793          	li	a5,-1
   122dc:	00078513          	mv	a0,a5
   122e0:	02010113          	addi	sp,sp,32
   122e4:	00008067          	ret

00000000000122e8 <_sbrk>:
   122e8:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   122ec:	ff010113          	addi	sp,sp,-16
   122f0:	00113423          	sd	ra,8(sp)
   122f4:	00050713          	mv	a4,a0
   122f8:	02079063          	bnez	a5,12318 <_sbrk+0x30>
   122fc:	0d600893          	li	a7,214
   12300:	00000513          	li	a0,0
   12304:	00000073          	ecall
   12308:	fff00793          	li	a5,-1
   1230c:	02f50c63          	beq	a0,a5,12344 <_sbrk+0x5c>
   12310:	00050793          	mv	a5,a0
   12314:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12318:	00f70533          	add	a0,a4,a5
   1231c:	0d600893          	li	a7,214
   12320:	00000073          	ecall
   12324:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12328:	00f70733          	add	a4,a4,a5
   1232c:	00e51c63          	bne	a0,a4,12344 <_sbrk+0x5c>
   12330:	00813083          	ld	ra,8(sp)
   12334:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12338:	00078513          	mv	a0,a5
   1233c:	01010113          	addi	sp,sp,16
   12340:	00008067          	ret
   12344:	05c000ef          	jal	123a0 <__errno>
   12348:	00813083          	ld	ra,8(sp)
   1234c:	00c00793          	li	a5,12
   12350:	00f52023          	sw	a5,0(a0)
   12354:	fff00513          	li	a0,-1
   12358:	01010113          	addi	sp,sp,16
   1235c:	00008067          	ret

0000000000012360 <_write>:
   12360:	04000893          	li	a7,64
   12364:	00000073          	ecall
   12368:	00054463          	bltz	a0,12370 <_write+0x10>
   1236c:	00008067          	ret
   12370:	fe010113          	addi	sp,sp,-32
   12374:	00113c23          	sd	ra,24(sp)
   12378:	00a13423          	sd	a0,8(sp)
   1237c:	024000ef          	jal	123a0 <__errno>
   12380:	00813783          	ld	a5,8(sp)
   12384:	01813083          	ld	ra,24(sp)
   12388:	40f007bb          	negw	a5,a5
   1238c:	00f52023          	sw	a5,0(a0)
   12390:	fff00793          	li	a5,-1
   12394:	00078513          	mv	a0,a5
   12398:	02010113          	addi	sp,sp,32
   1239c:	00008067          	ret

00000000000123a0 <__errno>:
   123a0:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   123a4:	00008067          	ret

Disassembly of section .rodata:

00000000000123a8 <.rodata>:
   123a8:	6854                	.insn	2, 0x6854
   123aa:	7369                	.insn	2, 0x7369
   123ac:	6920                	.insn	2, 0x6920
   123ae:	74732073          	.insn	4, 0x74732073
   123b2:	6972                	.insn	2, 0x6972
   123b4:	676e                	.insn	2, 0x676e
   123b6:	6620                	.insn	2, 0x6620
   123b8:	6f72                	.insn	2, 0x6f72
   123ba:	206d                	.insn	2, 0x206d
   123bc:	7270                	.insn	2, 0x7270
   123be:	6e69                	.insn	2, 0x6e69
   123c0:	5f74                	.insn	2, 0x5f74
   123c2:	0a292873          	.insn	4, 0x0a292873
   123c6:	0000                	.insn	2, 0x0000
   123c8:	6e45                	.insn	2, 0x6e45
   123ca:	6574                	.insn	2, 0x6574
   123cc:	2072                	.insn	2, 0x2072
   123ce:	2061                	.insn	2, 0x2061
   123d0:	756e                	.insn	2, 0x756e
   123d2:	626d                	.insn	2, 0x626d
   123d4:	7265                	.insn	2, 0x7265
   123d6:	203a                	.insn	2, 0x203a
	...
   123e0:	6854                	.insn	2, 0x6854
   123e2:	2065                	.insn	2, 0x2065
   123e4:	756e                	.insn	2, 0x756e
   123e6:	626d                	.insn	2, 0x626d
   123e8:	7265                	.insn	2, 0x7265
   123ea:	6920                	.insn	2, 0x6920
   123ec:	00203a73          	.insn	4, 0x00203a73
   123f0:	000a                	.insn	2, 0x000a
   123f2:	0000                	.insn	2, 0x0000
   123f4:	0000                	.insn	2, 0x0000
   123f6:	0000                	.insn	2, 0x0000
   123f8:	6e45                	.insn	2, 0x6e45
   123fa:	6574                	.insn	2, 0x6574
   123fc:	2072                	.insn	2, 0x2072
   123fe:	2061                	.insn	2, 0x2061
   12400:	72616863          	bltu	sp,t1,12b30 <__EH_FRAME_BEGIN__+0x708>
   12404:	6361                	.insn	2, 0x6361
   12406:	6574                	.insn	2, 0x6574
   12408:	3a72                	.insn	2, 0x3a72
   1240a:	0020                	.insn	2, 0x0020
   1240c:	0000                	.insn	2, 0x0000
   1240e:	0000                	.insn	2, 0x0000
   12410:	6854                	.insn	2, 0x6854
   12412:	2065                	.insn	2, 0x2065
   12414:	72616863          	bltu	sp,t1,12b44 <__EH_FRAME_BEGIN__+0x71c>
   12418:	6361                	.insn	2, 0x6361
   1241a:	6574                	.insn	2, 0x6574
   1241c:	2072                	.insn	2, 0x2072
   1241e:	7369                	.insn	2, 0x7369
   12420:	203a                	.insn	2, 0x203a
	...

Disassembly of section .eh_frame:

0000000000012428 <__EH_FRAME_BEGIN__>:
   12428:	0000                	.insn	2, 0x0000
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

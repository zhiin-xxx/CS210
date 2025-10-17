
test/build/with-syscall/helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	44d000ef          	jal	10d80 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	090020ef          	jal	121d8 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	0a050513          	addi	a0,a0,160 # 120a0 <__libc_fini_array>
   1015c:	55d0006f          	j	10eb8 <atexit>
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
   10184:	321000ef          	jal	10ca4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	d3050513          	addi	a0,a0,-720 # 10eb8 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	f0c50513          	addi	a0,a0,-244 # 120a0 <__libc_fini_array>
   1019c:	51d000ef          	jal	10eb8 <atexit>
   101a0:	271000ef          	jal	10c10 <__libc_init_array>
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
   101d8:	35850513          	addi	a0,a0,856 # 12358 <__EH_FRAME_BEGIN__>
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
   1020c:	35850513          	addi	a0,a0,856 # 12358 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	000127b7          	lui	a5,0x12
   10230:	34878513          	addi	a0,a5,840 # 12348 <__errno+0x8>
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

00000000000103c0 <find_min>:
   103c0:	fd010113          	addi	sp,sp,-48
   103c4:	02113423          	sd	ra,40(sp)
   103c8:	02813023          	sd	s0,32(sp)
   103cc:	03010413          	addi	s0,sp,48
   103d0:	fca43c23          	sd	a0,-40(s0)
   103d4:	00058793          	mv	a5,a1
   103d8:	fcf42a23          	sw	a5,-44(s0)
   103dc:	00700893          	li	a7,7
   103e0:	00000073          	ecall
   103e4:	00050793          	mv	a5,a0
   103e8:	fef42623          	sw	a5,-20(s0)
   103ec:	fec42783          	lw	a5,-20(s0)
   103f0:	00078513          	mv	a0,a5
   103f4:	02813083          	ld	ra,40(sp)
   103f8:	02013403          	ld	s0,32(sp)
   103fc:	03010113          	addi	sp,sp,48
   10400:	00008067          	ret

0000000000010404 <__fp_lock>:
   10404:	00000513          	li	a0,0
   10408:	00008067          	ret

000000000001040c <stdio_exit_handler>:
   1040c:	00013637          	lui	a2,0x13
   10410:	000125b7          	lui	a1,0x12
   10414:	00013537          	lui	a0,0x13
   10418:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1041c:	be058593          	addi	a1,a1,-1056 # 11be0 <_fclose_r>
   10420:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10424:	34c0006f          	j	10770 <_fwalk_sglue>

0000000000010428 <cleanup_stdio>:
   10428:	00853583          	ld	a1,8(a0)
   1042c:	ff010113          	addi	sp,sp,-16
   10430:	00813023          	sd	s0,0(sp)
   10434:	00113423          	sd	ra,8(sp)
   10438:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   1043c:	00050413          	mv	s0,a0
   10440:	00f58463          	beq	a1,a5,10448 <cleanup_stdio+0x20>
   10444:	79c010ef          	jal	11be0 <_fclose_r>
   10448:	01043583          	ld	a1,16(s0)
   1044c:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10450:	00f58663          	beq	a1,a5,1045c <cleanup_stdio+0x34>
   10454:	00040513          	mv	a0,s0
   10458:	788010ef          	jal	11be0 <_fclose_r>
   1045c:	01843583          	ld	a1,24(s0)
   10460:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10464:	00f58c63          	beq	a1,a5,1047c <cleanup_stdio+0x54>
   10468:	00040513          	mv	a0,s0
   1046c:	00013403          	ld	s0,0(sp)
   10470:	00813083          	ld	ra,8(sp)
   10474:	01010113          	addi	sp,sp,16
   10478:	7680106f          	j	11be0 <_fclose_r>
   1047c:	00813083          	ld	ra,8(sp)
   10480:	00013403          	ld	s0,0(sp)
   10484:	01010113          	addi	sp,sp,16
   10488:	00008067          	ret

000000000001048c <__fp_unlock>:
   1048c:	00000513          	li	a0,0
   10490:	00008067          	ret

0000000000010494 <global_stdio_init.part.0>:
   10494:	fd010113          	addi	sp,sp,-48
   10498:	000107b7          	lui	a5,0x10
   1049c:	02813023          	sd	s0,32(sp)
   104a0:	40c78793          	addi	a5,a5,1036 # 1040c <stdio_exit_handler>
   104a4:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   104a8:	02113423          	sd	ra,40(sp)
   104ac:	00913c23          	sd	s1,24(sp)
   104b0:	01213823          	sd	s2,16(sp)
   104b4:	01313423          	sd	s3,8(sp)
   104b8:	01413023          	sd	s4,0(sp)
   104bc:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   104c0:	00800613          	li	a2,8
   104c4:	00400793          	li	a5,4
   104c8:	00000593          	li	a1,0
   104cc:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   104d0:	00f42823          	sw	a5,16(s0)
   104d4:	00043023          	sd	zero,0(s0)
   104d8:	00043423          	sd	zero,8(s0)
   104dc:	0a042623          	sw	zero,172(s0)
   104e0:	00043c23          	sd	zero,24(s0)
   104e4:	02042023          	sw	zero,32(s0)
   104e8:	02042423          	sw	zero,40(s0)
   104ec:	7b8000ef          	jal	10ca4 <memset>
   104f0:	00011a37          	lui	s4,0x11
   104f4:	000119b7          	lui	s3,0x11
   104f8:	00011937          	lui	s2,0x11
   104fc:	000114b7          	lui	s1,0x11
   10500:	000107b7          	lui	a5,0x10
   10504:	840a0a13          	addi	s4,s4,-1984 # 10840 <__sread>
   10508:	8a498993          	addi	s3,s3,-1884 # 108a4 <__swrite>
   1050c:	92c90913          	addi	s2,s2,-1748 # 1092c <__sseek>
   10510:	99048493          	addi	s1,s1,-1648 # 10990 <__sclose>
   10514:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10518:	00800613          	li	a2,8
   1051c:	00000593          	li	a1,0
   10520:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10524:	0cf42023          	sw	a5,192(s0)
   10528:	03443c23          	sd	s4,56(s0)
   1052c:	05343023          	sd	s3,64(s0)
   10530:	05243423          	sd	s2,72(s0)
   10534:	04943823          	sd	s1,80(s0)
   10538:	02843823          	sd	s0,48(s0)
   1053c:	0a043823          	sd	zero,176(s0)
   10540:	0a043c23          	sd	zero,184(s0)
   10544:	14042e23          	sw	zero,348(s0)
   10548:	0c043423          	sd	zero,200(s0)
   1054c:	0c042823          	sw	zero,208(s0)
   10550:	0c042c23          	sw	zero,216(s0)
   10554:	750000ef          	jal	10ca4 <memset>
   10558:	000207b7          	lui	a5,0x20
   1055c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10560:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10564:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   10568:	00800613          	li	a2,8
   1056c:	00000593          	li	a1,0
   10570:	0f443423          	sd	s4,232(s0)
   10574:	0f343823          	sd	s3,240(s0)
   10578:	0f243c23          	sd	s2,248(s0)
   1057c:	10943023          	sd	s1,256(s0)
   10580:	16f42823          	sw	a5,368(s0)
   10584:	16043023          	sd	zero,352(s0)
   10588:	16043423          	sd	zero,360(s0)
   1058c:	20042623          	sw	zero,524(s0)
   10590:	16043c23          	sd	zero,376(s0)
   10594:	18042023          	sw	zero,384(s0)
   10598:	18042423          	sw	zero,392(s0)
   1059c:	0ee43023          	sd	a4,224(s0)
   105a0:	704000ef          	jal	10ca4 <memset>
   105a4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   105a8:	19443c23          	sd	s4,408(s0)
   105ac:	1b343023          	sd	s3,416(s0)
   105b0:	1b243423          	sd	s2,424(s0)
   105b4:	1a943823          	sd	s1,432(s0)
   105b8:	02813083          	ld	ra,40(sp)
   105bc:	18f43823          	sd	a5,400(s0)
   105c0:	02013403          	ld	s0,32(sp)
   105c4:	01813483          	ld	s1,24(sp)
   105c8:	01013903          	ld	s2,16(sp)
   105cc:	00813983          	ld	s3,8(sp)
   105d0:	00013a03          	ld	s4,0(sp)
   105d4:	03010113          	addi	sp,sp,48
   105d8:	00008067          	ret

00000000000105dc <__sfp>:
   105dc:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   105e0:	fd010113          	addi	sp,sp,-48
   105e4:	00913c23          	sd	s1,24(sp)
   105e8:	02113423          	sd	ra,40(sp)
   105ec:	02813023          	sd	s0,32(sp)
   105f0:	00050493          	mv	s1,a0
   105f4:	10078463          	beqz	a5,106fc <__sfp+0x120>
   105f8:	000136b7          	lui	a3,0x13
   105fc:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10600:	0086a703          	lw	a4,8(a3)
   10604:	08e05c63          	blez	a4,1069c <__sfp+0xc0>
   10608:	02071713          	slli	a4,a4,0x20
   1060c:	02075713          	srli	a4,a4,0x20
   10610:	00171793          	slli	a5,a4,0x1
   10614:	00e787b3          	add	a5,a5,a4
   10618:	0106b403          	ld	s0,16(a3)
   1061c:	00279793          	slli	a5,a5,0x2
   10620:	40e787b3          	sub	a5,a5,a4
   10624:	00479793          	slli	a5,a5,0x4
   10628:	00f407b3          	add	a5,s0,a5
   1062c:	00c0006f          	j	10638 <__sfp+0x5c>
   10630:	0b040413          	addi	s0,s0,176
   10634:	06f40463          	beq	s0,a5,1069c <__sfp+0xc0>
   10638:	01041703          	lh	a4,16(s0)
   1063c:	fe071ae3          	bnez	a4,10630 <__sfp+0x54>
   10640:	ffff07b7          	lui	a5,0xffff0
   10644:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10648:	00f42823          	sw	a5,16(s0)
   1064c:	0a042623          	sw	zero,172(s0)
   10650:	00043023          	sd	zero,0(s0)
   10654:	00043423          	sd	zero,8(s0)
   10658:	00043c23          	sd	zero,24(s0)
   1065c:	02042023          	sw	zero,32(s0)
   10660:	02042423          	sw	zero,40(s0)
   10664:	00800613          	li	a2,8
   10668:	00000593          	li	a1,0
   1066c:	0a440513          	addi	a0,s0,164
   10670:	634000ef          	jal	10ca4 <memset>
   10674:	04043c23          	sd	zero,88(s0)
   10678:	06042023          	sw	zero,96(s0)
   1067c:	06043c23          	sd	zero,120(s0)
   10680:	08042023          	sw	zero,128(s0)
   10684:	02813083          	ld	ra,40(sp)
   10688:	00040513          	mv	a0,s0
   1068c:	02013403          	ld	s0,32(sp)
   10690:	01813483          	ld	s1,24(sp)
   10694:	03010113          	addi	sp,sp,48
   10698:	00008067          	ret
   1069c:	0006b403          	ld	s0,0(a3)
   106a0:	00040663          	beqz	s0,106ac <__sfp+0xd0>
   106a4:	00040693          	mv	a3,s0
   106a8:	f59ff06f          	j	10600 <__sfp+0x24>
   106ac:	2d800593          	li	a1,728
   106b0:	00048513          	mv	a0,s1
   106b4:	00d13423          	sd	a3,8(sp)
   106b8:	43d000ef          	jal	112f4 <_malloc_r>
   106bc:	00813683          	ld	a3,8(sp)
   106c0:	00050413          	mv	s0,a0
   106c4:	04050063          	beqz	a0,10704 <__sfp+0x128>
   106c8:	00400793          	li	a5,4
   106cc:	00f52423          	sw	a5,8(a0)
   106d0:	01850513          	addi	a0,a0,24
   106d4:	00043023          	sd	zero,0(s0)
   106d8:	00a43823          	sd	a0,16(s0)
   106dc:	2c000613          	li	a2,704
   106e0:	00000593          	li	a1,0
   106e4:	00d13423          	sd	a3,8(sp)
   106e8:	5bc000ef          	jal	10ca4 <memset>
   106ec:	00813683          	ld	a3,8(sp)
   106f0:	0086b023          	sd	s0,0(a3)
   106f4:	00040693          	mv	a3,s0
   106f8:	f09ff06f          	j	10600 <__sfp+0x24>
   106fc:	d99ff0ef          	jal	10494 <global_stdio_init.part.0>
   10700:	ef9ff06f          	j	105f8 <__sfp+0x1c>
   10704:	0006b023          	sd	zero,0(a3)
   10708:	00c00793          	li	a5,12
   1070c:	00f4a023          	sw	a5,0(s1)
   10710:	f75ff06f          	j	10684 <__sfp+0xa8>

0000000000010714 <__sinit>:
   10714:	04853783          	ld	a5,72(a0)
   10718:	00078463          	beqz	a5,10720 <__sinit+0xc>
   1071c:	00008067          	ret
   10720:	000107b7          	lui	a5,0x10
   10724:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10728:	42878793          	addi	a5,a5,1064 # 10428 <cleanup_stdio>
   1072c:	04f53423          	sd	a5,72(a0)
   10730:	fe0716e3          	bnez	a4,1071c <__sinit+0x8>
   10734:	d61ff06f          	j	10494 <global_stdio_init.part.0>

0000000000010738 <__sfp_lock_acquire>:
   10738:	00008067          	ret

000000000001073c <__sfp_lock_release>:
   1073c:	00008067          	ret

0000000000010740 <__fp_lock_all>:
   10740:	00013637          	lui	a2,0x13
   10744:	000105b7          	lui	a1,0x10
   10748:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1074c:	40458593          	addi	a1,a1,1028 # 10404 <__fp_lock>
   10750:	00000513          	li	a0,0
   10754:	01c0006f          	j	10770 <_fwalk_sglue>

0000000000010758 <__fp_unlock_all>:
   10758:	00013637          	lui	a2,0x13
   1075c:	000105b7          	lui	a1,0x10
   10760:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10764:	48c58593          	addi	a1,a1,1164 # 1048c <__fp_unlock>
   10768:	00000513          	li	a0,0
   1076c:	0040006f          	j	10770 <_fwalk_sglue>

0000000000010770 <_fwalk_sglue>:
   10770:	fb010113          	addi	sp,sp,-80
   10774:	03213823          	sd	s2,48(sp)
   10778:	03313423          	sd	s3,40(sp)
   1077c:	03413023          	sd	s4,32(sp)
   10780:	01513c23          	sd	s5,24(sp)
   10784:	01613823          	sd	s6,16(sp)
   10788:	01713423          	sd	s7,8(sp)
   1078c:	04113423          	sd	ra,72(sp)
   10790:	04813023          	sd	s0,64(sp)
   10794:	02913c23          	sd	s1,56(sp)
   10798:	00060913          	mv	s2,a2
   1079c:	00050a13          	mv	s4,a0
   107a0:	00058a93          	mv	s5,a1
   107a4:	00000b13          	li	s6,0
   107a8:	00100b93          	li	s7,1
   107ac:	fff00993          	li	s3,-1
   107b0:	00892783          	lw	a5,8(s2)
   107b4:	04f05a63          	blez	a5,10808 <_fwalk_sglue+0x98>
   107b8:	02079793          	slli	a5,a5,0x20
   107bc:	0207d793          	srli	a5,a5,0x20
   107c0:	00179493          	slli	s1,a5,0x1
   107c4:	00f484b3          	add	s1,s1,a5
   107c8:	01093403          	ld	s0,16(s2)
   107cc:	00249493          	slli	s1,s1,0x2
   107d0:	40f484b3          	sub	s1,s1,a5
   107d4:	00449493          	slli	s1,s1,0x4
   107d8:	009404b3          	add	s1,s0,s1
   107dc:	01045783          	lhu	a5,16(s0)
   107e0:	02fbf063          	bgeu	s7,a5,10800 <_fwalk_sglue+0x90>
   107e4:	01241783          	lh	a5,18(s0)
   107e8:	00040593          	mv	a1,s0
   107ec:	000a0513          	mv	a0,s4
   107f0:	01378863          	beq	a5,s3,10800 <_fwalk_sglue+0x90>
   107f4:	000a80e7          	jalr	s5
   107f8:	01656b33          	or	s6,a0,s6
   107fc:	000b0b1b          	sext.w	s6,s6
   10800:	0b040413          	addi	s0,s0,176
   10804:	fc941ce3          	bne	s0,s1,107dc <_fwalk_sglue+0x6c>
   10808:	00093903          	ld	s2,0(s2)
   1080c:	fa0912e3          	bnez	s2,107b0 <_fwalk_sglue+0x40>
   10810:	04813083          	ld	ra,72(sp)
   10814:	04013403          	ld	s0,64(sp)
   10818:	03813483          	ld	s1,56(sp)
   1081c:	03013903          	ld	s2,48(sp)
   10820:	02813983          	ld	s3,40(sp)
   10824:	02013a03          	ld	s4,32(sp)
   10828:	01813a83          	ld	s5,24(sp)
   1082c:	00813b83          	ld	s7,8(sp)
   10830:	000b0513          	mv	a0,s6
   10834:	01013b03          	ld	s6,16(sp)
   10838:	05010113          	addi	sp,sp,80
   1083c:	00008067          	ret

0000000000010840 <__sread>:
   10840:	ff010113          	addi	sp,sp,-16
   10844:	00813023          	sd	s0,0(sp)
   10848:	00058413          	mv	s0,a1
   1084c:	01259583          	lh	a1,18(a1)
   10850:	00113423          	sd	ra,8(sp)
   10854:	2ec000ef          	jal	10b40 <_read_r>
   10858:	02054063          	bltz	a0,10878 <__sread+0x38>
   1085c:	09043783          	ld	a5,144(s0)
   10860:	00813083          	ld	ra,8(sp)
   10864:	00a787b3          	add	a5,a5,a0
   10868:	08f43823          	sd	a5,144(s0)
   1086c:	00013403          	ld	s0,0(sp)
   10870:	01010113          	addi	sp,sp,16
   10874:	00008067          	ret
   10878:	01045783          	lhu	a5,16(s0)
   1087c:	fffff737          	lui	a4,0xfffff
   10880:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10884:	00e7f7b3          	and	a5,a5,a4
   10888:	00813083          	ld	ra,8(sp)
   1088c:	00f41823          	sh	a5,16(s0)
   10890:	00013403          	ld	s0,0(sp)
   10894:	01010113          	addi	sp,sp,16
   10898:	00008067          	ret

000000000001089c <__seofread>:
   1089c:	00000513          	li	a0,0
   108a0:	00008067          	ret

00000000000108a4 <__swrite>:
   108a4:	01059783          	lh	a5,16(a1)
   108a8:	fd010113          	addi	sp,sp,-48
   108ac:	00068313          	mv	t1,a3
   108b0:	02113423          	sd	ra,40(sp)
   108b4:	1007f693          	andi	a3,a5,256
   108b8:	00058713          	mv	a4,a1
   108bc:	00060893          	mv	a7,a2
   108c0:	00050813          	mv	a6,a0
   108c4:	02069863          	bnez	a3,108f4 <__swrite+0x50>
   108c8:	fffff6b7          	lui	a3,0xfffff
   108cc:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   108d0:	02813083          	ld	ra,40(sp)
   108d4:	00d7f7b3          	and	a5,a5,a3
   108d8:	01271583          	lh	a1,18(a4)
   108dc:	00f71823          	sh	a5,16(a4)
   108e0:	00030693          	mv	a3,t1
   108e4:	00088613          	mv	a2,a7
   108e8:	00080513          	mv	a0,a6
   108ec:	03010113          	addi	sp,sp,48
   108f0:	2b80006f          	j	10ba8 <_write_r>
   108f4:	01259583          	lh	a1,18(a1)
   108f8:	00c13823          	sd	a2,16(sp)
   108fc:	00200693          	li	a3,2
   10900:	00000613          	li	a2,0
   10904:	00613c23          	sd	t1,24(sp)
   10908:	00e13023          	sd	a4,0(sp)
   1090c:	00a13423          	sd	a0,8(sp)
   10910:	1c8000ef          	jal	10ad8 <_lseek_r>
   10914:	00013703          	ld	a4,0(sp)
   10918:	01813303          	ld	t1,24(sp)
   1091c:	01013883          	ld	a7,16(sp)
   10920:	01071783          	lh	a5,16(a4)
   10924:	00813803          	ld	a6,8(sp)
   10928:	fa1ff06f          	j	108c8 <__swrite+0x24>

000000000001092c <__sseek>:
   1092c:	ff010113          	addi	sp,sp,-16
   10930:	00813023          	sd	s0,0(sp)
   10934:	00058413          	mv	s0,a1
   10938:	01259583          	lh	a1,18(a1)
   1093c:	00113423          	sd	ra,8(sp)
   10940:	198000ef          	jal	10ad8 <_lseek_r>
   10944:	fff00713          	li	a4,-1
   10948:	01041783          	lh	a5,16(s0)
   1094c:	02e50263          	beq	a0,a4,10970 <__sseek+0x44>
   10950:	00001737          	lui	a4,0x1
   10954:	00e7e7b3          	or	a5,a5,a4
   10958:	00813083          	ld	ra,8(sp)
   1095c:	08a43823          	sd	a0,144(s0)
   10960:	00f41823          	sh	a5,16(s0)
   10964:	00013403          	ld	s0,0(sp)
   10968:	01010113          	addi	sp,sp,16
   1096c:	00008067          	ret
   10970:	80050713          	addi	a4,a0,-2048
   10974:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10978:	00e7f7b3          	and	a5,a5,a4
   1097c:	00813083          	ld	ra,8(sp)
   10980:	00f41823          	sh	a5,16(s0)
   10984:	00013403          	ld	s0,0(sp)
   10988:	01010113          	addi	sp,sp,16
   1098c:	00008067          	ret

0000000000010990 <__sclose>:
   10990:	01259583          	lh	a1,18(a1)
   10994:	0040006f          	j	10998 <_close_r>

0000000000010998 <_close_r>:
   10998:	fe010113          	addi	sp,sp,-32
   1099c:	00813823          	sd	s0,16(sp)
   109a0:	00913423          	sd	s1,8(sp)
   109a4:	00050493          	mv	s1,a0
   109a8:	00058513          	mv	a0,a1
   109ac:	00113c23          	sd	ra,24(sp)
   109b0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109b4:	7e4010ef          	jal	12198 <_close>
   109b8:	fff00793          	li	a5,-1
   109bc:	00f50c63          	beq	a0,a5,109d4 <_close_r+0x3c>
   109c0:	01813083          	ld	ra,24(sp)
   109c4:	01013403          	ld	s0,16(sp)
   109c8:	00813483          	ld	s1,8(sp)
   109cc:	02010113          	addi	sp,sp,32
   109d0:	00008067          	ret
   109d4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   109d8:	fe0784e3          	beqz	a5,109c0 <_close_r+0x28>
   109dc:	01813083          	ld	ra,24(sp)
   109e0:	01013403          	ld	s0,16(sp)
   109e4:	00f4a023          	sw	a5,0(s1)
   109e8:	00813483          	ld	s1,8(sp)
   109ec:	02010113          	addi	sp,sp,32
   109f0:	00008067          	ret

00000000000109f4 <_reclaim_reent>:
   109f4:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   109f8:	0ca78e63          	beq	a5,a0,10ad4 <_reclaim_reent+0xe0>
   109fc:	06853583          	ld	a1,104(a0)
   10a00:	fd010113          	addi	sp,sp,-48
   10a04:	00913c23          	sd	s1,24(sp)
   10a08:	02113423          	sd	ra,40(sp)
   10a0c:	02813023          	sd	s0,32(sp)
   10a10:	00050493          	mv	s1,a0
   10a14:	04058863          	beqz	a1,10a64 <_reclaim_reent+0x70>
   10a18:	01213823          	sd	s2,16(sp)
   10a1c:	01313423          	sd	s3,8(sp)
   10a20:	00000913          	li	s2,0
   10a24:	20000993          	li	s3,512
   10a28:	012587b3          	add	a5,a1,s2
   10a2c:	0007b403          	ld	s0,0(a5)
   10a30:	00040e63          	beqz	s0,10a4c <_reclaim_reent+0x58>
   10a34:	00040593          	mv	a1,s0
   10a38:	00043403          	ld	s0,0(s0)
   10a3c:	00048513          	mv	a0,s1
   10a40:	5b0000ef          	jal	10ff0 <_free_r>
   10a44:	fe0418e3          	bnez	s0,10a34 <_reclaim_reent+0x40>
   10a48:	0684b583          	ld	a1,104(s1)
   10a4c:	00890913          	addi	s2,s2,8
   10a50:	fd391ce3          	bne	s2,s3,10a28 <_reclaim_reent+0x34>
   10a54:	00048513          	mv	a0,s1
   10a58:	598000ef          	jal	10ff0 <_free_r>
   10a5c:	01013903          	ld	s2,16(sp)
   10a60:	00813983          	ld	s3,8(sp)
   10a64:	0504b583          	ld	a1,80(s1)
   10a68:	00058663          	beqz	a1,10a74 <_reclaim_reent+0x80>
   10a6c:	00048513          	mv	a0,s1
   10a70:	580000ef          	jal	10ff0 <_free_r>
   10a74:	0604b403          	ld	s0,96(s1)
   10a78:	00040c63          	beqz	s0,10a90 <_reclaim_reent+0x9c>
   10a7c:	00040593          	mv	a1,s0
   10a80:	00043403          	ld	s0,0(s0)
   10a84:	00048513          	mv	a0,s1
   10a88:	568000ef          	jal	10ff0 <_free_r>
   10a8c:	fe0418e3          	bnez	s0,10a7c <_reclaim_reent+0x88>
   10a90:	0784b583          	ld	a1,120(s1)
   10a94:	00058663          	beqz	a1,10aa0 <_reclaim_reent+0xac>
   10a98:	00048513          	mv	a0,s1
   10a9c:	554000ef          	jal	10ff0 <_free_r>
   10aa0:	0484b783          	ld	a5,72(s1)
   10aa4:	00078e63          	beqz	a5,10ac0 <_reclaim_reent+0xcc>
   10aa8:	02013403          	ld	s0,32(sp)
   10aac:	02813083          	ld	ra,40(sp)
   10ab0:	00048513          	mv	a0,s1
   10ab4:	01813483          	ld	s1,24(sp)
   10ab8:	03010113          	addi	sp,sp,48
   10abc:	00078067          	jr	a5
   10ac0:	02813083          	ld	ra,40(sp)
   10ac4:	02013403          	ld	s0,32(sp)
   10ac8:	01813483          	ld	s1,24(sp)
   10acc:	03010113          	addi	sp,sp,48
   10ad0:	00008067          	ret
   10ad4:	00008067          	ret

0000000000010ad8 <_lseek_r>:
   10ad8:	fe010113          	addi	sp,sp,-32
   10adc:	00058793          	mv	a5,a1
   10ae0:	00813823          	sd	s0,16(sp)
   10ae4:	00913423          	sd	s1,8(sp)
   10ae8:	00060593          	mv	a1,a2
   10aec:	00050493          	mv	s1,a0
   10af0:	00068613          	mv	a2,a3
   10af4:	00078513          	mv	a0,a5
   10af8:	00113c23          	sd	ra,24(sp)
   10afc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b00:	708010ef          	jal	12208 <_lseek>
   10b04:	fff00793          	li	a5,-1
   10b08:	00f50c63          	beq	a0,a5,10b20 <_lseek_r+0x48>
   10b0c:	01813083          	ld	ra,24(sp)
   10b10:	01013403          	ld	s0,16(sp)
   10b14:	00813483          	ld	s1,8(sp)
   10b18:	02010113          	addi	sp,sp,32
   10b1c:	00008067          	ret
   10b20:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b24:	fe0784e3          	beqz	a5,10b0c <_lseek_r+0x34>
   10b28:	01813083          	ld	ra,24(sp)
   10b2c:	01013403          	ld	s0,16(sp)
   10b30:	00f4a023          	sw	a5,0(s1)
   10b34:	00813483          	ld	s1,8(sp)
   10b38:	02010113          	addi	sp,sp,32
   10b3c:	00008067          	ret

0000000000010b40 <_read_r>:
   10b40:	fe010113          	addi	sp,sp,-32
   10b44:	00058793          	mv	a5,a1
   10b48:	00813823          	sd	s0,16(sp)
   10b4c:	00913423          	sd	s1,8(sp)
   10b50:	00060593          	mv	a1,a2
   10b54:	00050493          	mv	s1,a0
   10b58:	00068613          	mv	a2,a3
   10b5c:	00078513          	mv	a0,a5
   10b60:	00113c23          	sd	ra,24(sp)
   10b64:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b68:	6e0010ef          	jal	12248 <_read>
   10b6c:	fff00793          	li	a5,-1
   10b70:	00f50c63          	beq	a0,a5,10b88 <_read_r+0x48>
   10b74:	01813083          	ld	ra,24(sp)
   10b78:	01013403          	ld	s0,16(sp)
   10b7c:	00813483          	ld	s1,8(sp)
   10b80:	02010113          	addi	sp,sp,32
   10b84:	00008067          	ret
   10b88:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b8c:	fe0784e3          	beqz	a5,10b74 <_read_r+0x34>
   10b90:	01813083          	ld	ra,24(sp)
   10b94:	01013403          	ld	s0,16(sp)
   10b98:	00f4a023          	sw	a5,0(s1)
   10b9c:	00813483          	ld	s1,8(sp)
   10ba0:	02010113          	addi	sp,sp,32
   10ba4:	00008067          	ret

0000000000010ba8 <_write_r>:
   10ba8:	fe010113          	addi	sp,sp,-32
   10bac:	00058793          	mv	a5,a1
   10bb0:	00813823          	sd	s0,16(sp)
   10bb4:	00913423          	sd	s1,8(sp)
   10bb8:	00060593          	mv	a1,a2
   10bbc:	00050493          	mv	s1,a0
   10bc0:	00068613          	mv	a2,a3
   10bc4:	00078513          	mv	a0,a5
   10bc8:	00113c23          	sd	ra,24(sp)
   10bcc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bd0:	730010ef          	jal	12300 <_write>
   10bd4:	fff00793          	li	a5,-1
   10bd8:	00f50c63          	beq	a0,a5,10bf0 <_write_r+0x48>
   10bdc:	01813083          	ld	ra,24(sp)
   10be0:	01013403          	ld	s0,16(sp)
   10be4:	00813483          	ld	s1,8(sp)
   10be8:	02010113          	addi	sp,sp,32
   10bec:	00008067          	ret
   10bf0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bf4:	fe0784e3          	beqz	a5,10bdc <_write_r+0x34>
   10bf8:	01813083          	ld	ra,24(sp)
   10bfc:	01013403          	ld	s0,16(sp)
   10c00:	00f4a023          	sw	a5,0(s1)
   10c04:	00813483          	ld	s1,8(sp)
   10c08:	02010113          	addi	sp,sp,32
   10c0c:	00008067          	ret

0000000000010c10 <__libc_init_array>:
   10c10:	fe010113          	addi	sp,sp,-32
   10c14:	00813823          	sd	s0,16(sp)
   10c18:	01213023          	sd	s2,0(sp)
   10c1c:	00013437          	lui	s0,0x13
   10c20:	00013937          	lui	s2,0x13
   10c24:	00113c23          	sd	ra,24(sp)
   10c28:	00913423          	sd	s1,8(sp)
   10c2c:	00090913          	mv	s2,s2
   10c30:	00040413          	mv	s0,s0
   10c34:	02890263          	beq	s2,s0,10c58 <__libc_init_array+0x48>
   10c38:	40890933          	sub	s2,s2,s0
   10c3c:	40395913          	srai	s2,s2,0x3
   10c40:	00000493          	li	s1,0
   10c44:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c48:	00148493          	addi	s1,s1,1
   10c4c:	00840413          	addi	s0,s0,8
   10c50:	000780e7          	jalr	a5
   10c54:	ff24e8e3          	bltu	s1,s2,10c44 <__libc_init_array+0x34>
   10c58:	00013937          	lui	s2,0x13
   10c5c:	00013437          	lui	s0,0x13
   10c60:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10c64:	00040413          	mv	s0,s0
   10c68:	02890263          	beq	s2,s0,10c8c <__libc_init_array+0x7c>
   10c6c:	40890933          	sub	s2,s2,s0
   10c70:	40395913          	srai	s2,s2,0x3
   10c74:	00000493          	li	s1,0
   10c78:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c7c:	00148493          	addi	s1,s1,1
   10c80:	00840413          	addi	s0,s0,8
   10c84:	000780e7          	jalr	a5
   10c88:	ff24e8e3          	bltu	s1,s2,10c78 <__libc_init_array+0x68>
   10c8c:	01813083          	ld	ra,24(sp)
   10c90:	01013403          	ld	s0,16(sp)
   10c94:	00813483          	ld	s1,8(sp)
   10c98:	00013903          	ld	s2,0(sp)
   10c9c:	02010113          	addi	sp,sp,32
   10ca0:	00008067          	ret

0000000000010ca4 <memset>:
   10ca4:	00f00313          	li	t1,15
   10ca8:	00050713          	mv	a4,a0
   10cac:	02c37a63          	bgeu	t1,a2,10ce0 <memset+0x3c>
   10cb0:	00f77793          	andi	a5,a4,15
   10cb4:	0a079063          	bnez	a5,10d54 <memset+0xb0>
   10cb8:	06059e63          	bnez	a1,10d34 <memset+0x90>
   10cbc:	ff067693          	andi	a3,a2,-16
   10cc0:	00f67613          	andi	a2,a2,15
   10cc4:	00e686b3          	add	a3,a3,a4
   10cc8:	00b73023          	sd	a1,0(a4)
   10ccc:	00b73423          	sd	a1,8(a4)
   10cd0:	01070713          	addi	a4,a4,16
   10cd4:	fed76ae3          	bltu	a4,a3,10cc8 <memset+0x24>
   10cd8:	00061463          	bnez	a2,10ce0 <memset+0x3c>
   10cdc:	00008067          	ret
   10ce0:	40c306b3          	sub	a3,t1,a2
   10ce4:	00269693          	slli	a3,a3,0x2
   10ce8:	00000297          	auipc	t0,0x0
   10cec:	005686b3          	add	a3,a3,t0
   10cf0:	00c68067          	jr	12(a3)
   10cf4:	00b70723          	sb	a1,14(a4)
   10cf8:	00b706a3          	sb	a1,13(a4)
   10cfc:	00b70623          	sb	a1,12(a4)
   10d00:	00b705a3          	sb	a1,11(a4)
   10d04:	00b70523          	sb	a1,10(a4)
   10d08:	00b704a3          	sb	a1,9(a4)
   10d0c:	00b70423          	sb	a1,8(a4)
   10d10:	00b703a3          	sb	a1,7(a4)
   10d14:	00b70323          	sb	a1,6(a4)
   10d18:	00b702a3          	sb	a1,5(a4)
   10d1c:	00b70223          	sb	a1,4(a4)
   10d20:	00b701a3          	sb	a1,3(a4)
   10d24:	00b70123          	sb	a1,2(a4)
   10d28:	00b700a3          	sb	a1,1(a4)
   10d2c:	00b70023          	sb	a1,0(a4)
   10d30:	00008067          	ret
   10d34:	0ff5f593          	zext.b	a1,a1
   10d38:	00859693          	slli	a3,a1,0x8
   10d3c:	00d5e5b3          	or	a1,a1,a3
   10d40:	01059693          	slli	a3,a1,0x10
   10d44:	00d5e5b3          	or	a1,a1,a3
   10d48:	02059693          	slli	a3,a1,0x20
   10d4c:	00d5e5b3          	or	a1,a1,a3
   10d50:	f6dff06f          	j	10cbc <memset+0x18>
   10d54:	00279693          	slli	a3,a5,0x2
   10d58:	00000297          	auipc	t0,0x0
   10d5c:	005686b3          	add	a3,a3,t0
   10d60:	00008293          	mv	t0,ra
   10d64:	f98680e7          	jalr	-104(a3)
   10d68:	00028093          	mv	ra,t0
   10d6c:	ff078793          	addi	a5,a5,-16
   10d70:	40f70733          	sub	a4,a4,a5
   10d74:	00f60633          	add	a2,a2,a5
   10d78:	f6c374e3          	bgeu	t1,a2,10ce0 <memset+0x3c>
   10d7c:	f3dff06f          	j	10cb8 <memset+0x14>

0000000000010d80 <__call_exitprocs>:
   10d80:	fb010113          	addi	sp,sp,-80
   10d84:	03413023          	sd	s4,32(sp)
   10d88:	03213823          	sd	s2,48(sp)
   10d8c:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10d90:	04113423          	sd	ra,72(sp)
   10d94:	06090e63          	beqz	s2,10e10 <__call_exitprocs+0x90>
   10d98:	03313423          	sd	s3,40(sp)
   10d9c:	01513c23          	sd	s5,24(sp)
   10da0:	01613823          	sd	s6,16(sp)
   10da4:	01713423          	sd	s7,8(sp)
   10da8:	04813023          	sd	s0,64(sp)
   10dac:	02913c23          	sd	s1,56(sp)
   10db0:	01813023          	sd	s8,0(sp)
   10db4:	00050b13          	mv	s6,a0
   10db8:	00058b93          	mv	s7,a1
   10dbc:	fff00993          	li	s3,-1
   10dc0:	00100a93          	li	s5,1
   10dc4:	00892403          	lw	s0,8(s2)
   10dc8:	fff4041b          	addiw	s0,s0,-1
   10dcc:	02044463          	bltz	s0,10df4 <__call_exitprocs+0x74>
   10dd0:	01090493          	addi	s1,s2,16
   10dd4:	00341793          	slli	a5,s0,0x3
   10dd8:	00f484b3          	add	s1,s1,a5
   10ddc:	040b8463          	beqz	s7,10e24 <__call_exitprocs+0xa4>
   10de0:	2004b783          	ld	a5,512(s1)
   10de4:	05778063          	beq	a5,s7,10e24 <__call_exitprocs+0xa4>
   10de8:	fff4041b          	addiw	s0,s0,-1
   10dec:	ff848493          	addi	s1,s1,-8
   10df0:	ff3418e3          	bne	s0,s3,10de0 <__call_exitprocs+0x60>
   10df4:	04013403          	ld	s0,64(sp)
   10df8:	03813483          	ld	s1,56(sp)
   10dfc:	02813983          	ld	s3,40(sp)
   10e00:	01813a83          	ld	s5,24(sp)
   10e04:	01013b03          	ld	s6,16(sp)
   10e08:	00813b83          	ld	s7,8(sp)
   10e0c:	00013c03          	ld	s8,0(sp)
   10e10:	04813083          	ld	ra,72(sp)
   10e14:	03013903          	ld	s2,48(sp)
   10e18:	02013a03          	ld	s4,32(sp)
   10e1c:	05010113          	addi	sp,sp,80
   10e20:	00008067          	ret
   10e24:	00892783          	lw	a5,8(s2)
   10e28:	0004b683          	ld	a3,0(s1)
   10e2c:	fff7879b          	addiw	a5,a5,-1
   10e30:	06878a63          	beq	a5,s0,10ea4 <__call_exitprocs+0x124>
   10e34:	0004b023          	sd	zero,0(s1)
   10e38:	02068663          	beqz	a3,10e64 <__call_exitprocs+0xe4>
   10e3c:	31092783          	lw	a5,784(s2)
   10e40:	008a973b          	sllw	a4,s5,s0
   10e44:	00892c03          	lw	s8,8(s2)
   10e48:	00e7f7b3          	and	a5,a5,a4
   10e4c:	02079463          	bnez	a5,10e74 <__call_exitprocs+0xf4>
   10e50:	000680e7          	jalr	a3
   10e54:	00892703          	lw	a4,8(s2)
   10e58:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e5c:	03871e63          	bne	a4,s8,10e98 <__call_exitprocs+0x118>
   10e60:	03279c63          	bne	a5,s2,10e98 <__call_exitprocs+0x118>
   10e64:	fff4041b          	addiw	s0,s0,-1
   10e68:	ff848493          	addi	s1,s1,-8
   10e6c:	f73418e3          	bne	s0,s3,10ddc <__call_exitprocs+0x5c>
   10e70:	f85ff06f          	j	10df4 <__call_exitprocs+0x74>
   10e74:	31492783          	lw	a5,788(s2)
   10e78:	1004b583          	ld	a1,256(s1)
   10e7c:	00f77733          	and	a4,a4,a5
   10e80:	02071663          	bnez	a4,10eac <__call_exitprocs+0x12c>
   10e84:	000b0513          	mv	a0,s6
   10e88:	000680e7          	jalr	a3
   10e8c:	00892703          	lw	a4,8(s2)
   10e90:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e94:	fd8706e3          	beq	a4,s8,10e60 <__call_exitprocs+0xe0>
   10e98:	f4078ee3          	beqz	a5,10df4 <__call_exitprocs+0x74>
   10e9c:	00078913          	mv	s2,a5
   10ea0:	f25ff06f          	j	10dc4 <__call_exitprocs+0x44>
   10ea4:	00892423          	sw	s0,8(s2)
   10ea8:	f91ff06f          	j	10e38 <__call_exitprocs+0xb8>
   10eac:	00058513          	mv	a0,a1
   10eb0:	000680e7          	jalr	a3
   10eb4:	fa1ff06f          	j	10e54 <__call_exitprocs+0xd4>

0000000000010eb8 <atexit>:
   10eb8:	00050593          	mv	a1,a0
   10ebc:	00000693          	li	a3,0
   10ec0:	00000613          	li	a2,0
   10ec4:	00000513          	li	a0,0
   10ec8:	2340106f          	j	120fc <__register_exitproc>

0000000000010ecc <_malloc_trim_r>:
   10ecc:	fd010113          	addi	sp,sp,-48
   10ed0:	01213823          	sd	s2,16(sp)
   10ed4:	00013937          	lui	s2,0x13
   10ed8:	02813023          	sd	s0,32(sp)
   10edc:	00913c23          	sd	s1,24(sp)
   10ee0:	01313423          	sd	s3,8(sp)
   10ee4:	00058413          	mv	s0,a1
   10ee8:	02113423          	sd	ra,40(sp)
   10eec:	00050993          	mv	s3,a0
   10ef0:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10ef4:	4e5000ef          	jal	11bd8 <__malloc_lock>
   10ef8:	01093783          	ld	a5,16(s2)
   10efc:	00001737          	lui	a4,0x1
   10f00:	0087b483          	ld	s1,8(a5)
   10f04:	ffc4f493          	andi	s1,s1,-4
   10f08:	7ff48793          	addi	a5,s1,2047
   10f0c:	7e078793          	addi	a5,a5,2016
   10f10:	40878433          	sub	s0,a5,s0
   10f14:	00c45413          	srli	s0,s0,0xc
   10f18:	fff40413          	addi	s0,s0,-1
   10f1c:	00c41413          	slli	s0,s0,0xc
   10f20:	00e44e63          	blt	s0,a4,10f3c <_malloc_trim_r+0x70>
   10f24:	00000593          	li	a1,0
   10f28:	00098513          	mv	a0,s3
   10f2c:	118010ef          	jal	12044 <_sbrk_r>
   10f30:	01093783          	ld	a5,16(s2)
   10f34:	009787b3          	add	a5,a5,s1
   10f38:	02f50663          	beq	a0,a5,10f64 <_malloc_trim_r+0x98>
   10f3c:	00098513          	mv	a0,s3
   10f40:	49d000ef          	jal	11bdc <__malloc_unlock>
   10f44:	02813083          	ld	ra,40(sp)
   10f48:	02013403          	ld	s0,32(sp)
   10f4c:	01813483          	ld	s1,24(sp)
   10f50:	01013903          	ld	s2,16(sp)
   10f54:	00813983          	ld	s3,8(sp)
   10f58:	00000513          	li	a0,0
   10f5c:	03010113          	addi	sp,sp,48
   10f60:	00008067          	ret
   10f64:	408005b3          	neg	a1,s0
   10f68:	00098513          	mv	a0,s3
   10f6c:	0d8010ef          	jal	12044 <_sbrk_r>
   10f70:	fff00793          	li	a5,-1
   10f74:	04f50463          	beq	a0,a5,10fbc <_malloc_trim_r+0xf0>
   10f78:	01093683          	ld	a3,16(s2)
   10f7c:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f80:	408484b3          	sub	s1,s1,s0
   10f84:	0014e493          	ori	s1,s1,1
   10f88:	00098513          	mv	a0,s3
   10f8c:	408787bb          	subw	a5,a5,s0
   10f90:	0096b423          	sd	s1,8(a3)
   10f94:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f98:	445000ef          	jal	11bdc <__malloc_unlock>
   10f9c:	02813083          	ld	ra,40(sp)
   10fa0:	02013403          	ld	s0,32(sp)
   10fa4:	01813483          	ld	s1,24(sp)
   10fa8:	01013903          	ld	s2,16(sp)
   10fac:	00813983          	ld	s3,8(sp)
   10fb0:	00100513          	li	a0,1
   10fb4:	03010113          	addi	sp,sp,48
   10fb8:	00008067          	ret
   10fbc:	00000593          	li	a1,0
   10fc0:	00098513          	mv	a0,s3
   10fc4:	080010ef          	jal	12044 <_sbrk_r>
   10fc8:	01093703          	ld	a4,16(s2)
   10fcc:	01f00693          	li	a3,31
   10fd0:	40e507b3          	sub	a5,a0,a4
   10fd4:	f6f6d4e3          	bge	a3,a5,10f3c <_malloc_trim_r+0x70>
   10fd8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10fdc:	0017e793          	ori	a5,a5,1
   10fe0:	40c50533          	sub	a0,a0,a2
   10fe4:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10fe8:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10fec:	f51ff06f          	j	10f3c <_malloc_trim_r+0x70>

0000000000010ff0 <_free_r>:
   10ff0:	12058863          	beqz	a1,11120 <_free_r+0x130>
   10ff4:	fe010113          	addi	sp,sp,-32
   10ff8:	00813823          	sd	s0,16(sp)
   10ffc:	00b13423          	sd	a1,8(sp)
   11000:	00050413          	mv	s0,a0
   11004:	00113c23          	sd	ra,24(sp)
   11008:	3d1000ef          	jal	11bd8 <__malloc_lock>
   1100c:	00813583          	ld	a1,8(sp)
   11010:	00013837          	lui	a6,0x13
   11014:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11018:	ff85b503          	ld	a0,-8(a1)
   1101c:	ff058713          	addi	a4,a1,-16
   11020:	01083883          	ld	a7,16(a6)
   11024:	ffe57793          	andi	a5,a0,-2
   11028:	00f70633          	add	a2,a4,a5
   1102c:	00863683          	ld	a3,8(a2)
   11030:	00157313          	andi	t1,a0,1
   11034:	ffc6f693          	andi	a3,a3,-4
   11038:	18c88e63          	beq	a7,a2,111d4 <_free_r+0x1e4>
   1103c:	00d63423          	sd	a3,8(a2)
   11040:	00d608b3          	add	a7,a2,a3
   11044:	0088b883          	ld	a7,8(a7)
   11048:	0018f893          	andi	a7,a7,1
   1104c:	08031e63          	bnez	t1,110e8 <_free_r+0xf8>
   11050:	ff05b303          	ld	t1,-16(a1)
   11054:	000135b7          	lui	a1,0x13
   11058:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1105c:	40670733          	sub	a4,a4,t1
   11060:	01073503          	ld	a0,16(a4)
   11064:	006787b3          	add	a5,a5,t1
   11068:	14b50063          	beq	a0,a1,111a8 <_free_r+0x1b8>
   1106c:	01873303          	ld	t1,24(a4)
   11070:	00653c23          	sd	t1,24(a0)
   11074:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11078:	1a088263          	beqz	a7,1121c <_free_r+0x22c>
   1107c:	0017e693          	ori	a3,a5,1
   11080:	00d73423          	sd	a3,8(a4)
   11084:	00f63023          	sd	a5,0(a2)
   11088:	1ff00693          	li	a3,511
   1108c:	0af6e663          	bltu	a3,a5,11138 <_free_r+0x148>
   11090:	0037d793          	srli	a5,a5,0x3
   11094:	00179693          	slli	a3,a5,0x1
   11098:	0026869b          	addiw	a3,a3,2
   1109c:	00369693          	slli	a3,a3,0x3
   110a0:	00883503          	ld	a0,8(a6)
   110a4:	00d806b3          	add	a3,a6,a3
   110a8:	0006b583          	ld	a1,0(a3)
   110ac:	4027d61b          	sraiw	a2,a5,0x2
   110b0:	00100793          	li	a5,1
   110b4:	00c797b3          	sll	a5,a5,a2
   110b8:	00a7e7b3          	or	a5,a5,a0
   110bc:	ff068613          	addi	a2,a3,-16
   110c0:	00b73823          	sd	a1,16(a4)
   110c4:	00c73c23          	sd	a2,24(a4)
   110c8:	00f83423          	sd	a5,8(a6)
   110cc:	00e6b023          	sd	a4,0(a3)
   110d0:	00e5bc23          	sd	a4,24(a1)
   110d4:	00040513          	mv	a0,s0
   110d8:	01013403          	ld	s0,16(sp)
   110dc:	01813083          	ld	ra,24(sp)
   110e0:	02010113          	addi	sp,sp,32
   110e4:	2f90006f          	j	11bdc <__malloc_unlock>
   110e8:	02089e63          	bnez	a7,11124 <_free_r+0x134>
   110ec:	000135b7          	lui	a1,0x13
   110f0:	00d787b3          	add	a5,a5,a3
   110f4:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   110f8:	01063683          	ld	a3,16(a2)
   110fc:	0017e893          	ori	a7,a5,1
   11100:	00f70533          	add	a0,a4,a5
   11104:	16b68663          	beq	a3,a1,11270 <_free_r+0x280>
   11108:	01863603          	ld	a2,24(a2)
   1110c:	00c6bc23          	sd	a2,24(a3)
   11110:	00d63823          	sd	a3,16(a2)
   11114:	01173423          	sd	a7,8(a4)
   11118:	00f53023          	sd	a5,0(a0)
   1111c:	f6dff06f          	j	11088 <_free_r+0x98>
   11120:	00008067          	ret
   11124:	00156513          	ori	a0,a0,1
   11128:	fea5bc23          	sd	a0,-8(a1)
   1112c:	00f63023          	sd	a5,0(a2)
   11130:	1ff00693          	li	a3,511
   11134:	f4f6fee3          	bgeu	a3,a5,11090 <_free_r+0xa0>
   11138:	0097d693          	srli	a3,a5,0x9
   1113c:	00400613          	li	a2,4
   11140:	0ed66263          	bltu	a2,a3,11224 <_free_r+0x234>
   11144:	0067d693          	srli	a3,a5,0x6
   11148:	00169593          	slli	a1,a3,0x1
   1114c:	0725859b          	addiw	a1,a1,114
   11150:	00359593          	slli	a1,a1,0x3
   11154:	0386861b          	addiw	a2,a3,56
   11158:	00b805b3          	add	a1,a6,a1
   1115c:	0005b683          	ld	a3,0(a1)
   11160:	ff058593          	addi	a1,a1,-16
   11164:	00d59863          	bne	a1,a3,11174 <_free_r+0x184>
   11168:	1240006f          	j	1128c <_free_r+0x29c>
   1116c:	0106b683          	ld	a3,16(a3)
   11170:	00d58863          	beq	a1,a3,11180 <_free_r+0x190>
   11174:	0086b603          	ld	a2,8(a3)
   11178:	ffc67613          	andi	a2,a2,-4
   1117c:	fec7e8e3          	bltu	a5,a2,1116c <_free_r+0x17c>
   11180:	0186b583          	ld	a1,24(a3)
   11184:	00b73c23          	sd	a1,24(a4)
   11188:	00d73823          	sd	a3,16(a4)
   1118c:	00040513          	mv	a0,s0
   11190:	01013403          	ld	s0,16(sp)
   11194:	01813083          	ld	ra,24(sp)
   11198:	00e5b823          	sd	a4,16(a1)
   1119c:	00e6bc23          	sd	a4,24(a3)
   111a0:	02010113          	addi	sp,sp,32
   111a4:	2390006f          	j	11bdc <__malloc_unlock>
   111a8:	0a089263          	bnez	a7,1124c <_free_r+0x25c>
   111ac:	01863583          	ld	a1,24(a2)
   111b0:	01063603          	ld	a2,16(a2)
   111b4:	00f686b3          	add	a3,a3,a5
   111b8:	0016e793          	ori	a5,a3,1
   111bc:	00b63c23          	sd	a1,24(a2)
   111c0:	00c5b823          	sd	a2,16(a1)
   111c4:	00f73423          	sd	a5,8(a4)
   111c8:	00d70733          	add	a4,a4,a3
   111cc:	00d73023          	sd	a3,0(a4)
   111d0:	f05ff06f          	j	110d4 <_free_r+0xe4>
   111d4:	00d786b3          	add	a3,a5,a3
   111d8:	02031063          	bnez	t1,111f8 <_free_r+0x208>
   111dc:	ff05b783          	ld	a5,-16(a1)
   111e0:	40f70733          	sub	a4,a4,a5
   111e4:	01073603          	ld	a2,16(a4)
   111e8:	00f686b3          	add	a3,a3,a5
   111ec:	01873783          	ld	a5,24(a4)
   111f0:	00f63c23          	sd	a5,24(a2)
   111f4:	00c7b823          	sd	a2,16(a5)
   111f8:	0016e613          	ori	a2,a3,1
   111fc:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11200:	00c73423          	sd	a2,8(a4)
   11204:	00e83823          	sd	a4,16(a6)
   11208:	ecf6e6e3          	bltu	a3,a5,110d4 <_free_r+0xe4>
   1120c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11210:	00040513          	mv	a0,s0
   11214:	cb9ff0ef          	jal	10ecc <_malloc_trim_r>
   11218:	ebdff06f          	j	110d4 <_free_r+0xe4>
   1121c:	00d787b3          	add	a5,a5,a3
   11220:	ed9ff06f          	j	110f8 <_free_r+0x108>
   11224:	01400613          	li	a2,20
   11228:	02d67a63          	bgeu	a2,a3,1125c <_free_r+0x26c>
   1122c:	05400613          	li	a2,84
   11230:	06d66c63          	bltu	a2,a3,112a8 <_free_r+0x2b8>
   11234:	00c7d693          	srli	a3,a5,0xc
   11238:	00169593          	slli	a1,a3,0x1
   1123c:	0de5859b          	addiw	a1,a1,222
   11240:	00359593          	slli	a1,a1,0x3
   11244:	06e6861b          	addiw	a2,a3,110
   11248:	f11ff06f          	j	11158 <_free_r+0x168>
   1124c:	0017e693          	ori	a3,a5,1
   11250:	00d73423          	sd	a3,8(a4)
   11254:	00f63023          	sd	a5,0(a2)
   11258:	e7dff06f          	j	110d4 <_free_r+0xe4>
   1125c:	00169593          	slli	a1,a3,0x1
   11260:	0b85859b          	addiw	a1,a1,184
   11264:	00359593          	slli	a1,a1,0x3
   11268:	05b6861b          	addiw	a2,a3,91
   1126c:	eedff06f          	j	11158 <_free_r+0x168>
   11270:	02e83423          	sd	a4,40(a6)
   11274:	02e83023          	sd	a4,32(a6)
   11278:	00b73c23          	sd	a1,24(a4)
   1127c:	00b73823          	sd	a1,16(a4)
   11280:	01173423          	sd	a7,8(a4)
   11284:	00f53023          	sd	a5,0(a0)
   11288:	e4dff06f          	j	110d4 <_free_r+0xe4>
   1128c:	00883503          	ld	a0,8(a6)
   11290:	4026561b          	sraiw	a2,a2,0x2
   11294:	00100793          	li	a5,1
   11298:	00c797b3          	sll	a5,a5,a2
   1129c:	00a7e7b3          	or	a5,a5,a0
   112a0:	00f83423          	sd	a5,8(a6)
   112a4:	ee1ff06f          	j	11184 <_free_r+0x194>
   112a8:	15400613          	li	a2,340
   112ac:	00d66e63          	bltu	a2,a3,112c8 <_free_r+0x2d8>
   112b0:	00f7d693          	srli	a3,a5,0xf
   112b4:	00169593          	slli	a1,a3,0x1
   112b8:	0f05859b          	addiw	a1,a1,240
   112bc:	00359593          	slli	a1,a1,0x3
   112c0:	0776861b          	addiw	a2,a3,119
   112c4:	e95ff06f          	j	11158 <_free_r+0x168>
   112c8:	55400613          	li	a2,1364
   112cc:	00d66e63          	bltu	a2,a3,112e8 <_free_r+0x2f8>
   112d0:	0127d693          	srli	a3,a5,0x12
   112d4:	00169593          	slli	a1,a3,0x1
   112d8:	0fa5859b          	addiw	a1,a1,250
   112dc:	00359593          	slli	a1,a1,0x3
   112e0:	07c6861b          	addiw	a2,a3,124
   112e4:	e75ff06f          	j	11158 <_free_r+0x168>
   112e8:	7f000593          	li	a1,2032
   112ec:	07e00613          	li	a2,126
   112f0:	e69ff06f          	j	11158 <_free_r+0x168>

00000000000112f4 <_malloc_r>:
   112f4:	fa010113          	addi	sp,sp,-96
   112f8:	04813823          	sd	s0,80(sp)
   112fc:	04113c23          	sd	ra,88(sp)
   11300:	01758713          	addi	a4,a1,23
   11304:	02e00793          	li	a5,46
   11308:	00050413          	mv	s0,a0
   1130c:	08e7ee63          	bltu	a5,a4,113a8 <_malloc_r+0xb4>
   11310:	02000713          	li	a4,32
   11314:	06b76c63          	bltu	a4,a1,1138c <_malloc_r+0x98>
   11318:	0c1000ef          	jal	11bd8 <__malloc_lock>
   1131c:	02000713          	li	a4,32
   11320:	05000693          	li	a3,80
   11324:	00400893          	li	a7,4
   11328:	00013837          	lui	a6,0x13
   1132c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11330:	00d806b3          	add	a3,a6,a3
   11334:	0086b783          	ld	a5,8(a3)
   11338:	ff068613          	addi	a2,a3,-16
   1133c:	48c78063          	beq	a5,a2,117bc <_malloc_r+0x4c8>
   11340:	0087b703          	ld	a4,8(a5)
   11344:	0187b603          	ld	a2,24(a5)
   11348:	0107b583          	ld	a1,16(a5)
   1134c:	ffc77713          	andi	a4,a4,-4
   11350:	00e78733          	add	a4,a5,a4
   11354:	00873683          	ld	a3,8(a4)
   11358:	00c5bc23          	sd	a2,24(a1)
   1135c:	00b63823          	sd	a1,16(a2)
   11360:	0016e693          	ori	a3,a3,1
   11364:	00040513          	mv	a0,s0
   11368:	00d73423          	sd	a3,8(a4)
   1136c:	00f13423          	sd	a5,8(sp)
   11370:	06d000ef          	jal	11bdc <__malloc_unlock>
   11374:	00813783          	ld	a5,8(sp)
   11378:	05813083          	ld	ra,88(sp)
   1137c:	05013403          	ld	s0,80(sp)
   11380:	01078513          	addi	a0,a5,16
   11384:	06010113          	addi	sp,sp,96
   11388:	00008067          	ret
   1138c:	00c00793          	li	a5,12
   11390:	00f42023          	sw	a5,0(s0)
   11394:	00000513          	li	a0,0
   11398:	05813083          	ld	ra,88(sp)
   1139c:	05013403          	ld	s0,80(sp)
   113a0:	06010113          	addi	sp,sp,96
   113a4:	00008067          	ret
   113a8:	00100793          	li	a5,1
   113ac:	ff077713          	andi	a4,a4,-16
   113b0:	01f79793          	slli	a5,a5,0x1f
   113b4:	fcf77ce3          	bgeu	a4,a5,1138c <_malloc_r+0x98>
   113b8:	fcb76ae3          	bltu	a4,a1,1138c <_malloc_r+0x98>
   113bc:	00e13423          	sd	a4,8(sp)
   113c0:	019000ef          	jal	11bd8 <__malloc_lock>
   113c4:	00813703          	ld	a4,8(sp)
   113c8:	1f700793          	li	a5,503
   113cc:	4ee7fa63          	bgeu	a5,a4,118c0 <_malloc_r+0x5cc>
   113d0:	00975793          	srli	a5,a4,0x9
   113d4:	18078a63          	beqz	a5,11568 <_malloc_r+0x274>
   113d8:	00400693          	li	a3,4
   113dc:	44f6ea63          	bltu	a3,a5,11830 <_malloc_r+0x53c>
   113e0:	00675793          	srli	a5,a4,0x6
   113e4:	0397889b          	addiw	a7,a5,57
   113e8:	0018951b          	slliw	a0,a7,0x1
   113ec:	03878e1b          	addiw	t3,a5,56
   113f0:	00351513          	slli	a0,a0,0x3
   113f4:	00013837          	lui	a6,0x13
   113f8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   113fc:	00a80533          	add	a0,a6,a0
   11400:	00853783          	ld	a5,8(a0)
   11404:	ff050513          	addi	a0,a0,-16
   11408:	02f50863          	beq	a0,a5,11438 <_malloc_r+0x144>
   1140c:	01f00313          	li	t1,31
   11410:	0140006f          	j	11424 <_malloc_r+0x130>
   11414:	0187b583          	ld	a1,24(a5)
   11418:	36065263          	bgez	a2,1177c <_malloc_r+0x488>
   1141c:	00b50e63          	beq	a0,a1,11438 <_malloc_r+0x144>
   11420:	00058793          	mv	a5,a1
   11424:	0087b683          	ld	a3,8(a5)
   11428:	ffc6f693          	andi	a3,a3,-4
   1142c:	40e68633          	sub	a2,a3,a4
   11430:	fec352e3          	bge	t1,a2,11414 <_malloc_r+0x120>
   11434:	000e0893          	mv	a7,t3
   11438:	02083783          	ld	a5,32(a6)
   1143c:	00013e37          	lui	t3,0x13
   11440:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11444:	2fc78a63          	beq	a5,t3,11738 <_malloc_r+0x444>
   11448:	0087b303          	ld	t1,8(a5)
   1144c:	01f00613          	li	a2,31
   11450:	ffc37313          	andi	t1,t1,-4
   11454:	40e306b3          	sub	a3,t1,a4
   11458:	4ad64463          	blt	a2,a3,11900 <_malloc_r+0x60c>
   1145c:	03c83423          	sd	t3,40(a6)
   11460:	03c83023          	sd	t3,32(a6)
   11464:	4606da63          	bgez	a3,118d8 <_malloc_r+0x5e4>
   11468:	1ff00693          	li	a3,511
   1146c:	00883583          	ld	a1,8(a6)
   11470:	3466ee63          	bltu	a3,t1,117cc <_malloc_r+0x4d8>
   11474:	00335313          	srli	t1,t1,0x3
   11478:	00131693          	slli	a3,t1,0x1
   1147c:	0026869b          	addiw	a3,a3,2
   11480:	00369693          	slli	a3,a3,0x3
   11484:	00d806b3          	add	a3,a6,a3
   11488:	0006b503          	ld	a0,0(a3)
   1148c:	4023531b          	sraiw	t1,t1,0x2
   11490:	00100613          	li	a2,1
   11494:	00661633          	sll	a2,a2,t1
   11498:	00c5e5b3          	or	a1,a1,a2
   1149c:	ff068613          	addi	a2,a3,-16
   114a0:	00a7b823          	sd	a0,16(a5)
   114a4:	00c7bc23          	sd	a2,24(a5)
   114a8:	00b83423          	sd	a1,8(a6)
   114ac:	00f6b023          	sd	a5,0(a3)
   114b0:	00f53c23          	sd	a5,24(a0)
   114b4:	4028d79b          	sraiw	a5,a7,0x2
   114b8:	00100513          	li	a0,1
   114bc:	00f51533          	sll	a0,a0,a5
   114c0:	0aa5ec63          	bltu	a1,a0,11578 <_malloc_r+0x284>
   114c4:	00b577b3          	and	a5,a0,a1
   114c8:	02079463          	bnez	a5,114f0 <_malloc_r+0x1fc>
   114cc:	00151513          	slli	a0,a0,0x1
   114d0:	ffc8f893          	andi	a7,a7,-4
   114d4:	00b577b3          	and	a5,a0,a1
   114d8:	0048889b          	addiw	a7,a7,4
   114dc:	00079a63          	bnez	a5,114f0 <_malloc_r+0x1fc>
   114e0:	00151513          	slli	a0,a0,0x1
   114e4:	00b577b3          	and	a5,a0,a1
   114e8:	0048889b          	addiw	a7,a7,4
   114ec:	fe078ae3          	beqz	a5,114e0 <_malloc_r+0x1ec>
   114f0:	01f00e93          	li	t4,31
   114f4:	00189f13          	slli	t5,a7,0x1
   114f8:	002f0f1b          	addiw	t5,t5,2
   114fc:	003f1f13          	slli	t5,t5,0x3
   11500:	ff0f0f13          	addi	t5,t5,-16
   11504:	01e80f33          	add	t5,a6,t5
   11508:	000f0313          	mv	t1,t5
   1150c:	01833683          	ld	a3,24(t1)
   11510:	00088f93          	mv	t6,a7
   11514:	34d30263          	beq	t1,a3,11858 <_malloc_r+0x564>
   11518:	0086b603          	ld	a2,8(a3)
   1151c:	00068793          	mv	a5,a3
   11520:	0186b683          	ld	a3,24(a3)
   11524:	ffc67613          	andi	a2,a2,-4
   11528:	40e605b3          	sub	a1,a2,a4
   1152c:	34bec263          	blt	t4,a1,11870 <_malloc_r+0x57c>
   11530:	fe05c2e3          	bltz	a1,11514 <_malloc_r+0x220>
   11534:	00c78633          	add	a2,a5,a2
   11538:	00863703          	ld	a4,8(a2)
   1153c:	0107b583          	ld	a1,16(a5)
   11540:	00040513          	mv	a0,s0
   11544:	00176713          	ori	a4,a4,1
   11548:	00e63423          	sd	a4,8(a2)
   1154c:	00d5bc23          	sd	a3,24(a1)
   11550:	00b6b823          	sd	a1,16(a3)
   11554:	00f13423          	sd	a5,8(sp)
   11558:	684000ef          	jal	11bdc <__malloc_unlock>
   1155c:	00813783          	ld	a5,8(sp)
   11560:	01078513          	addi	a0,a5,16
   11564:	e35ff06f          	j	11398 <_malloc_r+0xa4>
   11568:	40000513          	li	a0,1024
   1156c:	04000893          	li	a7,64
   11570:	03f00e13          	li	t3,63
   11574:	e81ff06f          	j	113f4 <_malloc_r+0x100>
   11578:	01083783          	ld	a5,16(a6)
   1157c:	0087b683          	ld	a3,8(a5)
   11580:	ffc6f893          	andi	a7,a3,-4
   11584:	40e88633          	sub	a2,a7,a4
   11588:	00e8e663          	bltu	a7,a4,11594 <_malloc_r+0x2a0>
   1158c:	02062693          	slti	a3,a2,32
   11590:	1a068863          	beqz	a3,11740 <_malloc_r+0x44c>
   11594:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11598:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1159c:	fff00693          	li	a3,-1
   115a0:	00b705b3          	add	a1,a4,a1
   115a4:	44d60663          	beq	a2,a3,119f0 <_malloc_r+0x6fc>
   115a8:	000016b7          	lui	a3,0x1
   115ac:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   115b0:	00d585b3          	add	a1,a1,a3
   115b4:	fffff6b7          	lui	a3,0xfffff
   115b8:	00d5f5b3          	and	a1,a1,a3
   115bc:	00040513          	mv	a0,s0
   115c0:	03013423          	sd	a6,40(sp)
   115c4:	02f13023          	sd	a5,32(sp)
   115c8:	00e13c23          	sd	a4,24(sp)
   115cc:	01113823          	sd	a7,16(sp)
   115d0:	00b13423          	sd	a1,8(sp)
   115d4:	271000ef          	jal	12044 <_sbrk_r>
   115d8:	fff00693          	li	a3,-1
   115dc:	00813583          	ld	a1,8(sp)
   115e0:	01013883          	ld	a7,16(sp)
   115e4:	01813703          	ld	a4,24(sp)
   115e8:	02013783          	ld	a5,32(sp)
   115ec:	02813803          	ld	a6,40(sp)
   115f0:	00050313          	mv	t1,a0
   115f4:	36d50663          	beq	a0,a3,11960 <_malloc_r+0x66c>
   115f8:	011786b3          	add	a3,a5,a7
   115fc:	36d56063          	bltu	a0,a3,1195c <_malloc_r+0x668>
   11600:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11604:	000e2603          	lw	a2,0(t3)
   11608:	00b6063b          	addw	a2,a2,a1
   1160c:	00ce2023          	sw	a2,0(t3)
   11610:	00060513          	mv	a0,a2
   11614:	4a668c63          	beq	a3,t1,11acc <_malloc_r+0x7d8>
   11618:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1161c:	fff00613          	li	a2,-1
   11620:	4ccf0463          	beq	t5,a2,11ae8 <_malloc_r+0x7f4>
   11624:	40d306b3          	sub	a3,t1,a3
   11628:	00a686bb          	addw	a3,a3,a0
   1162c:	00de2023          	sw	a3,0(t3)
   11630:	00f37e93          	andi	t4,t1,15
   11634:	3c0e8e63          	beqz	t4,11a10 <_malloc_r+0x71c>
   11638:	ff037313          	andi	t1,t1,-16
   1163c:	000016b7          	lui	a3,0x1
   11640:	01030313          	addi	t1,t1,16
   11644:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11648:	00b30633          	add	a2,t1,a1
   1164c:	41d685b3          	sub	a1,a3,t4
   11650:	40c585b3          	sub	a1,a1,a2
   11654:	03459593          	slli	a1,a1,0x34
   11658:	0345d593          	srli	a1,a1,0x34
   1165c:	00040513          	mv	a0,s0
   11660:	05c13023          	sd	t3,64(sp)
   11664:	03013c23          	sd	a6,56(sp)
   11668:	02f13823          	sd	a5,48(sp)
   1166c:	02e13423          	sd	a4,40(sp)
   11670:	03113023          	sd	a7,32(sp)
   11674:	00613c23          	sd	t1,24(sp)
   11678:	01d13823          	sd	t4,16(sp)
   1167c:	00c13423          	sd	a2,8(sp)
   11680:	04b13423          	sd	a1,72(sp)
   11684:	1c1000ef          	jal	12044 <_sbrk_r>
   11688:	00050693          	mv	a3,a0
   1168c:	fff00513          	li	a0,-1
   11690:	00813603          	ld	a2,8(sp)
   11694:	01013e83          	ld	t4,16(sp)
   11698:	01813303          	ld	t1,24(sp)
   1169c:	02013883          	ld	a7,32(sp)
   116a0:	02813703          	ld	a4,40(sp)
   116a4:	03013783          	ld	a5,48(sp)
   116a8:	03813803          	ld	a6,56(sp)
   116ac:	04013e03          	ld	t3,64(sp)
   116b0:	48a68663          	beq	a3,a0,11b3c <_malloc_r+0x848>
   116b4:	04813583          	ld	a1,72(sp)
   116b8:	0005851b          	sext.w	a0,a1
   116bc:	000e2603          	lw	a2,0(t3)
   116c0:	406686b3          	sub	a3,a3,t1
   116c4:	00b686b3          	add	a3,a3,a1
   116c8:	0016e693          	ori	a3,a3,1
   116cc:	00683823          	sd	t1,16(a6)
   116d0:	00a6063b          	addw	a2,a2,a0
   116d4:	00d33423          	sd	a3,8(t1)
   116d8:	00ce2023          	sw	a2,0(t3)
   116dc:	03078e63          	beq	a5,a6,11718 <_malloc_r+0x424>
   116e0:	01f00513          	li	a0,31
   116e4:	41157663          	bgeu	a0,a7,11af0 <_malloc_r+0x7fc>
   116e8:	0087b583          	ld	a1,8(a5)
   116ec:	fe888693          	addi	a3,a7,-24
   116f0:	ff06f693          	andi	a3,a3,-16
   116f4:	0015f593          	andi	a1,a1,1
   116f8:	00d5e5b3          	or	a1,a1,a3
   116fc:	00b7b423          	sd	a1,8(a5)
   11700:	00900893          	li	a7,9
   11704:	00d785b3          	add	a1,a5,a3
   11708:	0115b423          	sd	a7,8(a1)
   1170c:	0115b823          	sd	a7,16(a1)
   11710:	44d56863          	bltu	a0,a3,11b60 <_malloc_r+0x86c>
   11714:	00833683          	ld	a3,8(t1)
   11718:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1171c:	00c5f463          	bgeu	a1,a2,11724 <_malloc_r+0x430>
   11720:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11724:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11728:	00c5f463          	bgeu	a1,a2,11730 <_malloc_r+0x43c>
   1172c:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11730:	00030793          	mv	a5,t1
   11734:	2340006f          	j	11968 <_malloc_r+0x674>
   11738:	00883583          	ld	a1,8(a6)
   1173c:	d79ff06f          	j	114b4 <_malloc_r+0x1c0>
   11740:	00176693          	ori	a3,a4,1
   11744:	00d7b423          	sd	a3,8(a5)
   11748:	00e78733          	add	a4,a5,a4
   1174c:	00166613          	ori	a2,a2,1
   11750:	00e83823          	sd	a4,16(a6)
   11754:	00040513          	mv	a0,s0
   11758:	00c73423          	sd	a2,8(a4)
   1175c:	00f13423          	sd	a5,8(sp)
   11760:	47c000ef          	jal	11bdc <__malloc_unlock>
   11764:	00813783          	ld	a5,8(sp)
   11768:	05813083          	ld	ra,88(sp)
   1176c:	05013403          	ld	s0,80(sp)
   11770:	01078513          	addi	a0,a5,16
   11774:	06010113          	addi	sp,sp,96
   11778:	00008067          	ret
   1177c:	0107b603          	ld	a2,16(a5)
   11780:	00d786b3          	add	a3,a5,a3
   11784:	0086b703          	ld	a4,8(a3)
   11788:	00b63c23          	sd	a1,24(a2)
   1178c:	00c5b823          	sd	a2,16(a1)
   11790:	00176713          	ori	a4,a4,1
   11794:	00040513          	mv	a0,s0
   11798:	00e6b423          	sd	a4,8(a3)
   1179c:	00f13423          	sd	a5,8(sp)
   117a0:	43c000ef          	jal	11bdc <__malloc_unlock>
   117a4:	00813783          	ld	a5,8(sp)
   117a8:	05813083          	ld	ra,88(sp)
   117ac:	05013403          	ld	s0,80(sp)
   117b0:	01078513          	addi	a0,a5,16
   117b4:	06010113          	addi	sp,sp,96
   117b8:	00008067          	ret
   117bc:	0186b783          	ld	a5,24(a3)
   117c0:	0028889b          	addiw	a7,a7,2
   117c4:	c6f68ae3          	beq	a3,a5,11438 <_malloc_r+0x144>
   117c8:	b79ff06f          	j	11340 <_malloc_r+0x4c>
   117cc:	00935693          	srli	a3,t1,0x9
   117d0:	00400613          	li	a2,4
   117d4:	16d67863          	bgeu	a2,a3,11944 <_malloc_r+0x650>
   117d8:	01400613          	li	a2,20
   117dc:	28d66e63          	bltu	a2,a3,11a78 <_malloc_r+0x784>
   117e0:	00169513          	slli	a0,a3,0x1
   117e4:	0b85051b          	addiw	a0,a0,184
   117e8:	00351513          	slli	a0,a0,0x3
   117ec:	05b6861b          	addiw	a2,a3,91
   117f0:	00a80533          	add	a0,a6,a0
   117f4:	00053683          	ld	a3,0(a0)
   117f8:	ff050513          	addi	a0,a0,-16
   117fc:	00d51863          	bne	a0,a3,1180c <_malloc_r+0x518>
   11800:	1f80006f          	j	119f8 <_malloc_r+0x704>
   11804:	0106b683          	ld	a3,16(a3)
   11808:	00d50863          	beq	a0,a3,11818 <_malloc_r+0x524>
   1180c:	0086b603          	ld	a2,8(a3)
   11810:	ffc67613          	andi	a2,a2,-4
   11814:	fec368e3          	bltu	t1,a2,11804 <_malloc_r+0x510>
   11818:	0186b503          	ld	a0,24(a3)
   1181c:	00a7bc23          	sd	a0,24(a5)
   11820:	00d7b823          	sd	a3,16(a5)
   11824:	00f53823          	sd	a5,16(a0)
   11828:	00f6bc23          	sd	a5,24(a3)
   1182c:	c89ff06f          	j	114b4 <_malloc_r+0x1c0>
   11830:	01400693          	li	a3,20
   11834:	14f6fa63          	bgeu	a3,a5,11988 <_malloc_r+0x694>
   11838:	05400693          	li	a3,84
   1183c:	24f6ee63          	bltu	a3,a5,11a98 <_malloc_r+0x7a4>
   11840:	00c75793          	srli	a5,a4,0xc
   11844:	06f7889b          	addiw	a7,a5,111
   11848:	0018951b          	slliw	a0,a7,0x1
   1184c:	06e78e1b          	addiw	t3,a5,110
   11850:	00351513          	slli	a0,a0,0x3
   11854:	ba1ff06f          	j	113f4 <_malloc_r+0x100>
   11858:	001f8f9b          	addiw	t6,t6,1
   1185c:	003ff793          	andi	a5,t6,3
   11860:	01030313          	addi	t1,t1,16
   11864:	14078263          	beqz	a5,119a8 <_malloc_r+0x6b4>
   11868:	01833683          	ld	a3,24(t1)
   1186c:	ca9ff06f          	j	11514 <_malloc_r+0x220>
   11870:	0107b503          	ld	a0,16(a5)
   11874:	00176893          	ori	a7,a4,1
   11878:	0117b423          	sd	a7,8(a5)
   1187c:	00d53c23          	sd	a3,24(a0)
   11880:	00a6b823          	sd	a0,16(a3)
   11884:	00e78733          	add	a4,a5,a4
   11888:	02e83423          	sd	a4,40(a6)
   1188c:	02e83023          	sd	a4,32(a6)
   11890:	0015e693          	ori	a3,a1,1
   11894:	00c78633          	add	a2,a5,a2
   11898:	01c73c23          	sd	t3,24(a4)
   1189c:	01c73823          	sd	t3,16(a4)
   118a0:	00d73423          	sd	a3,8(a4)
   118a4:	00040513          	mv	a0,s0
   118a8:	00b63023          	sd	a1,0(a2)
   118ac:	00f13423          	sd	a5,8(sp)
   118b0:	32c000ef          	jal	11bdc <__malloc_unlock>
   118b4:	00813783          	ld	a5,8(sp)
   118b8:	01078513          	addi	a0,a5,16
   118bc:	addff06f          	j	11398 <_malloc_r+0xa4>
   118c0:	00375893          	srli	a7,a4,0x3
   118c4:	00189693          	slli	a3,a7,0x1
   118c8:	0026869b          	addiw	a3,a3,2
   118cc:	00369693          	slli	a3,a3,0x3
   118d0:	0008889b          	sext.w	a7,a7
   118d4:	a55ff06f          	j	11328 <_malloc_r+0x34>
   118d8:	00678333          	add	t1,a5,t1
   118dc:	00833703          	ld	a4,8(t1)
   118e0:	00040513          	mv	a0,s0
   118e4:	00f13423          	sd	a5,8(sp)
   118e8:	00176713          	ori	a4,a4,1
   118ec:	00e33423          	sd	a4,8(t1)
   118f0:	2ec000ef          	jal	11bdc <__malloc_unlock>
   118f4:	00813783          	ld	a5,8(sp)
   118f8:	01078513          	addi	a0,a5,16
   118fc:	a9dff06f          	j	11398 <_malloc_r+0xa4>
   11900:	00176613          	ori	a2,a4,1
   11904:	00c7b423          	sd	a2,8(a5)
   11908:	00e78733          	add	a4,a5,a4
   1190c:	02e83423          	sd	a4,40(a6)
   11910:	02e83023          	sd	a4,32(a6)
   11914:	0016e613          	ori	a2,a3,1
   11918:	00678333          	add	t1,a5,t1
   1191c:	01c73c23          	sd	t3,24(a4)
   11920:	01c73823          	sd	t3,16(a4)
   11924:	00c73423          	sd	a2,8(a4)
   11928:	00040513          	mv	a0,s0
   1192c:	00d33023          	sd	a3,0(t1)
   11930:	00f13423          	sd	a5,8(sp)
   11934:	2a8000ef          	jal	11bdc <__malloc_unlock>
   11938:	00813783          	ld	a5,8(sp)
   1193c:	01078513          	addi	a0,a5,16
   11940:	a59ff06f          	j	11398 <_malloc_r+0xa4>
   11944:	00635693          	srli	a3,t1,0x6
   11948:	00169513          	slli	a0,a3,0x1
   1194c:	0725051b          	addiw	a0,a0,114
   11950:	00351513          	slli	a0,a0,0x3
   11954:	0386861b          	addiw	a2,a3,56
   11958:	e99ff06f          	j	117f0 <_malloc_r+0x4fc>
   1195c:	15078e63          	beq	a5,a6,11ab8 <_malloc_r+0x7c4>
   11960:	01083783          	ld	a5,16(a6)
   11964:	0087b683          	ld	a3,8(a5)
   11968:	ffc6f693          	andi	a3,a3,-4
   1196c:	40e68633          	sub	a2,a3,a4
   11970:	00e6e663          	bltu	a3,a4,1197c <_malloc_r+0x688>
   11974:	02062693          	slti	a3,a2,32
   11978:	dc0684e3          	beqz	a3,11740 <_malloc_r+0x44c>
   1197c:	00040513          	mv	a0,s0
   11980:	25c000ef          	jal	11bdc <__malloc_unlock>
   11984:	a11ff06f          	j	11394 <_malloc_r+0xa0>
   11988:	05c7889b          	addiw	a7,a5,92
   1198c:	0018951b          	slliw	a0,a7,0x1
   11990:	05b78e1b          	addiw	t3,a5,91
   11994:	00351513          	slli	a0,a0,0x3
   11998:	a5dff06f          	j	113f4 <_malloc_r+0x100>
   1199c:	010f3783          	ld	a5,16(t5)
   119a0:	fff8889b          	addiw	a7,a7,-1
   119a4:	23e79663          	bne	a5,t5,11bd0 <_malloc_r+0x8dc>
   119a8:	0038f793          	andi	a5,a7,3
   119ac:	ff0f0f13          	addi	t5,t5,-16
   119b0:	fe0796e3          	bnez	a5,1199c <_malloc_r+0x6a8>
   119b4:	00883683          	ld	a3,8(a6)
   119b8:	fff54793          	not	a5,a0
   119bc:	00d7f7b3          	and	a5,a5,a3
   119c0:	00f83423          	sd	a5,8(a6)
   119c4:	00151513          	slli	a0,a0,0x1
   119c8:	fff50693          	addi	a3,a0,-1
   119cc:	baf6f6e3          	bgeu	a3,a5,11578 <_malloc_r+0x284>
   119d0:	00f576b3          	and	a3,a0,a5
   119d4:	00069a63          	bnez	a3,119e8 <_malloc_r+0x6f4>
   119d8:	00151513          	slli	a0,a0,0x1
   119dc:	00f576b3          	and	a3,a0,a5
   119e0:	004f8f9b          	addiw	t6,t6,4
   119e4:	fe068ae3          	beqz	a3,119d8 <_malloc_r+0x6e4>
   119e8:	000f8893          	mv	a7,t6
   119ec:	b09ff06f          	j	114f4 <_malloc_r+0x200>
   119f0:	02058593          	addi	a1,a1,32
   119f4:	bc9ff06f          	j	115bc <_malloc_r+0x2c8>
   119f8:	4026561b          	sraiw	a2,a2,0x2
   119fc:	00100313          	li	t1,1
   11a00:	00c31633          	sll	a2,t1,a2
   11a04:	00c5e5b3          	or	a1,a1,a2
   11a08:	00b83423          	sd	a1,8(a6)
   11a0c:	e11ff06f          	j	1181c <_malloc_r+0x528>
   11a10:	00b30633          	add	a2,t1,a1
   11a14:	40c005b3          	neg	a1,a2
   11a18:	03459593          	slli	a1,a1,0x34
   11a1c:	0345d593          	srli	a1,a1,0x34
   11a20:	00040513          	mv	a0,s0
   11a24:	03c13c23          	sd	t3,56(sp)
   11a28:	03013823          	sd	a6,48(sp)
   11a2c:	02f13423          	sd	a5,40(sp)
   11a30:	02e13023          	sd	a4,32(sp)
   11a34:	01113c23          	sd	a7,24(sp)
   11a38:	00613823          	sd	t1,16(sp)
   11a3c:	00c13423          	sd	a2,8(sp)
   11a40:	04b13023          	sd	a1,64(sp)
   11a44:	600000ef          	jal	12044 <_sbrk_r>
   11a48:	00050693          	mv	a3,a0
   11a4c:	fff00513          	li	a0,-1
   11a50:	01013303          	ld	t1,16(sp)
   11a54:	01813883          	ld	a7,24(sp)
   11a58:	02013703          	ld	a4,32(sp)
   11a5c:	02813783          	ld	a5,40(sp)
   11a60:	03013803          	ld	a6,48(sp)
   11a64:	03813e03          	ld	t3,56(sp)
   11a68:	0ea68463          	beq	a3,a0,11b50 <_malloc_r+0x85c>
   11a6c:	04013583          	ld	a1,64(sp)
   11a70:	0005851b          	sext.w	a0,a1
   11a74:	c49ff06f          	j	116bc <_malloc_r+0x3c8>
   11a78:	05400613          	li	a2,84
   11a7c:	08d66063          	bltu	a2,a3,11afc <_malloc_r+0x808>
   11a80:	00c35693          	srli	a3,t1,0xc
   11a84:	00169513          	slli	a0,a3,0x1
   11a88:	0de5051b          	addiw	a0,a0,222
   11a8c:	00351513          	slli	a0,a0,0x3
   11a90:	06e6861b          	addiw	a2,a3,110
   11a94:	d5dff06f          	j	117f0 <_malloc_r+0x4fc>
   11a98:	15400693          	li	a3,340
   11a9c:	08f6e063          	bltu	a3,a5,11b1c <_malloc_r+0x828>
   11aa0:	00f75793          	srli	a5,a4,0xf
   11aa4:	0787889b          	addiw	a7,a5,120
   11aa8:	0018951b          	slliw	a0,a7,0x1
   11aac:	07778e1b          	addiw	t3,a5,119
   11ab0:	00351513          	slli	a0,a0,0x3
   11ab4:	941ff06f          	j	113f4 <_malloc_r+0x100>
   11ab8:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11abc:	000e2503          	lw	a0,0(t3)
   11ac0:	00b5053b          	addw	a0,a0,a1
   11ac4:	00ae2023          	sw	a0,0(t3)
   11ac8:	b51ff06f          	j	11618 <_malloc_r+0x324>
   11acc:	03431f13          	slli	t5,t1,0x34
   11ad0:	b40f14e3          	bnez	t5,11618 <_malloc_r+0x324>
   11ad4:	01083303          	ld	t1,16(a6)
   11ad8:	00b885b3          	add	a1,a7,a1
   11adc:	0015e693          	ori	a3,a1,1
   11ae0:	00d33423          	sd	a3,8(t1)
   11ae4:	c35ff06f          	j	11718 <_malloc_r+0x424>
   11ae8:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11aec:	b45ff06f          	j	11630 <_malloc_r+0x33c>
   11af0:	00100793          	li	a5,1
   11af4:	00f33423          	sd	a5,8(t1)
   11af8:	e85ff06f          	j	1197c <_malloc_r+0x688>
   11afc:	15400613          	li	a2,340
   11b00:	08d66a63          	bltu	a2,a3,11b94 <_malloc_r+0x8a0>
   11b04:	00f35693          	srli	a3,t1,0xf
   11b08:	00169513          	slli	a0,a3,0x1
   11b0c:	0f05051b          	addiw	a0,a0,240
   11b10:	00351513          	slli	a0,a0,0x3
   11b14:	0776861b          	addiw	a2,a3,119
   11b18:	cd9ff06f          	j	117f0 <_malloc_r+0x4fc>
   11b1c:	55400693          	li	a3,1364
   11b20:	08f6ea63          	bltu	a3,a5,11bb4 <_malloc_r+0x8c0>
   11b24:	01275793          	srli	a5,a4,0x12
   11b28:	07d7889b          	addiw	a7,a5,125
   11b2c:	0018951b          	slliw	a0,a7,0x1
   11b30:	07c78e1b          	addiw	t3,a5,124
   11b34:	00351513          	slli	a0,a0,0x3
   11b38:	8bdff06f          	j	113f4 <_malloc_r+0x100>
   11b3c:	ff0e8e93          	addi	t4,t4,-16
   11b40:	01d606b3          	add	a3,a2,t4
   11b44:	00000513          	li	a0,0
   11b48:	00000593          	li	a1,0
   11b4c:	b71ff06f          	j	116bc <_malloc_r+0x3c8>
   11b50:	00813683          	ld	a3,8(sp)
   11b54:	00000593          	li	a1,0
   11b58:	00000513          	li	a0,0
   11b5c:	b61ff06f          	j	116bc <_malloc_r+0x3c8>
   11b60:	01078593          	addi	a1,a5,16
   11b64:	00040513          	mv	a0,s0
   11b68:	01c13c23          	sd	t3,24(sp)
   11b6c:	01013823          	sd	a6,16(sp)
   11b70:	00e13423          	sd	a4,8(sp)
   11b74:	c7cff0ef          	jal	10ff0 <_free_r>
   11b78:	01013803          	ld	a6,16(sp)
   11b7c:	01813e03          	ld	t3,24(sp)
   11b80:	00813703          	ld	a4,8(sp)
   11b84:	01083303          	ld	t1,16(a6)
   11b88:	000e2603          	lw	a2,0(t3)
   11b8c:	00833683          	ld	a3,8(t1)
   11b90:	b89ff06f          	j	11718 <_malloc_r+0x424>
   11b94:	55400613          	li	a2,1364
   11b98:	02d66663          	bltu	a2,a3,11bc4 <_malloc_r+0x8d0>
   11b9c:	01235693          	srli	a3,t1,0x12
   11ba0:	00169513          	slli	a0,a3,0x1
   11ba4:	0fa5051b          	addiw	a0,a0,250
   11ba8:	00351513          	slli	a0,a0,0x3
   11bac:	07c6861b          	addiw	a2,a3,124
   11bb0:	c41ff06f          	j	117f0 <_malloc_r+0x4fc>
   11bb4:	7f000513          	li	a0,2032
   11bb8:	07f00893          	li	a7,127
   11bbc:	07e00e13          	li	t3,126
   11bc0:	835ff06f          	j	113f4 <_malloc_r+0x100>
   11bc4:	7f000513          	li	a0,2032
   11bc8:	07e00613          	li	a2,126
   11bcc:	c25ff06f          	j	117f0 <_malloc_r+0x4fc>
   11bd0:	00883783          	ld	a5,8(a6)
   11bd4:	df1ff06f          	j	119c4 <_malloc_r+0x6d0>

0000000000011bd8 <__malloc_lock>:
   11bd8:	00008067          	ret

0000000000011bdc <__malloc_unlock>:
   11bdc:	00008067          	ret

0000000000011be0 <_fclose_r>:
   11be0:	fe010113          	addi	sp,sp,-32
   11be4:	00113c23          	sd	ra,24(sp)
   11be8:	01213023          	sd	s2,0(sp)
   11bec:	02058863          	beqz	a1,11c1c <_fclose_r+0x3c>
   11bf0:	00813823          	sd	s0,16(sp)
   11bf4:	00913423          	sd	s1,8(sp)
   11bf8:	00058413          	mv	s0,a1
   11bfc:	00050493          	mv	s1,a0
   11c00:	00050663          	beqz	a0,11c0c <_fclose_r+0x2c>
   11c04:	04853783          	ld	a5,72(a0)
   11c08:	0c078c63          	beqz	a5,11ce0 <_fclose_r+0x100>
   11c0c:	01041783          	lh	a5,16(s0)
   11c10:	02079263          	bnez	a5,11c34 <_fclose_r+0x54>
   11c14:	01013403          	ld	s0,16(sp)
   11c18:	00813483          	ld	s1,8(sp)
   11c1c:	01813083          	ld	ra,24(sp)
   11c20:	00000913          	li	s2,0
   11c24:	00090513          	mv	a0,s2
   11c28:	00013903          	ld	s2,0(sp)
   11c2c:	02010113          	addi	sp,sp,32
   11c30:	00008067          	ret
   11c34:	00040593          	mv	a1,s0
   11c38:	00048513          	mv	a0,s1
   11c3c:	0b8000ef          	jal	11cf4 <__sflush_r>
   11c40:	05043783          	ld	a5,80(s0)
   11c44:	00050913          	mv	s2,a0
   11c48:	00078a63          	beqz	a5,11c5c <_fclose_r+0x7c>
   11c4c:	03043583          	ld	a1,48(s0)
   11c50:	00048513          	mv	a0,s1
   11c54:	000780e7          	jalr	a5
   11c58:	06054463          	bltz	a0,11cc0 <_fclose_r+0xe0>
   11c5c:	01045783          	lhu	a5,16(s0)
   11c60:	0807f793          	andi	a5,a5,128
   11c64:	06079663          	bnez	a5,11cd0 <_fclose_r+0xf0>
   11c68:	05843583          	ld	a1,88(s0)
   11c6c:	00058c63          	beqz	a1,11c84 <_fclose_r+0xa4>
   11c70:	07440793          	addi	a5,s0,116
   11c74:	00f58663          	beq	a1,a5,11c80 <_fclose_r+0xa0>
   11c78:	00048513          	mv	a0,s1
   11c7c:	b74ff0ef          	jal	10ff0 <_free_r>
   11c80:	04043c23          	sd	zero,88(s0)
   11c84:	07843583          	ld	a1,120(s0)
   11c88:	00058863          	beqz	a1,11c98 <_fclose_r+0xb8>
   11c8c:	00048513          	mv	a0,s1
   11c90:	b60ff0ef          	jal	10ff0 <_free_r>
   11c94:	06043c23          	sd	zero,120(s0)
   11c98:	aa1fe0ef          	jal	10738 <__sfp_lock_acquire>
   11c9c:	00041823          	sh	zero,16(s0)
   11ca0:	a9dfe0ef          	jal	1073c <__sfp_lock_release>
   11ca4:	01813083          	ld	ra,24(sp)
   11ca8:	01013403          	ld	s0,16(sp)
   11cac:	00813483          	ld	s1,8(sp)
   11cb0:	00090513          	mv	a0,s2
   11cb4:	00013903          	ld	s2,0(sp)
   11cb8:	02010113          	addi	sp,sp,32
   11cbc:	00008067          	ret
   11cc0:	01045783          	lhu	a5,16(s0)
   11cc4:	fff00913          	li	s2,-1
   11cc8:	0807f793          	andi	a5,a5,128
   11ccc:	f8078ee3          	beqz	a5,11c68 <_fclose_r+0x88>
   11cd0:	01843583          	ld	a1,24(s0)
   11cd4:	00048513          	mv	a0,s1
   11cd8:	b18ff0ef          	jal	10ff0 <_free_r>
   11cdc:	f8dff06f          	j	11c68 <_fclose_r+0x88>
   11ce0:	a35fe0ef          	jal	10714 <__sinit>
   11ce4:	f29ff06f          	j	11c0c <_fclose_r+0x2c>

0000000000011ce8 <fclose>:
   11ce8:	00050593          	mv	a1,a0
   11cec:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11cf0:	ef1ff06f          	j	11be0 <_fclose_r>

0000000000011cf4 <__sflush_r>:
   11cf4:	01059703          	lh	a4,16(a1)
   11cf8:	fd010113          	addi	sp,sp,-48
   11cfc:	02813023          	sd	s0,32(sp)
   11d00:	01313423          	sd	s3,8(sp)
   11d04:	02113423          	sd	ra,40(sp)
   11d08:	00877793          	andi	a5,a4,8
   11d0c:	00058413          	mv	s0,a1
   11d10:	00050993          	mv	s3,a0
   11d14:	12079263          	bnez	a5,11e38 <__sflush_r+0x144>
   11d18:	000017b7          	lui	a5,0x1
   11d1c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11d20:	0085a683          	lw	a3,8(a1)
   11d24:	00f767b3          	or	a5,a4,a5
   11d28:	00f59823          	sh	a5,16(a1)
   11d2c:	18d05c63          	blez	a3,11ec4 <__sflush_r+0x1d0>
   11d30:	04843803          	ld	a6,72(s0)
   11d34:	0e080663          	beqz	a6,11e20 <__sflush_r+0x12c>
   11d38:	00913c23          	sd	s1,24(sp)
   11d3c:	03371693          	slli	a3,a4,0x33
   11d40:	0009a483          	lw	s1,0(s3)
   11d44:	0009a023          	sw	zero,0(s3)
   11d48:	1806ca63          	bltz	a3,11edc <__sflush_r+0x1e8>
   11d4c:	03043583          	ld	a1,48(s0)
   11d50:	00000613          	li	a2,0
   11d54:	00100693          	li	a3,1
   11d58:	00098513          	mv	a0,s3
   11d5c:	000800e7          	jalr	a6
   11d60:	fff00793          	li	a5,-1
   11d64:	00050613          	mv	a2,a0
   11d68:	1af50c63          	beq	a0,a5,11f20 <__sflush_r+0x22c>
   11d6c:	01041783          	lh	a5,16(s0)
   11d70:	04843803          	ld	a6,72(s0)
   11d74:	0047f793          	andi	a5,a5,4
   11d78:	00078e63          	beqz	a5,11d94 <__sflush_r+0xa0>
   11d7c:	00842703          	lw	a4,8(s0)
   11d80:	05843783          	ld	a5,88(s0)
   11d84:	40e60633          	sub	a2,a2,a4
   11d88:	00078663          	beqz	a5,11d94 <__sflush_r+0xa0>
   11d8c:	07042783          	lw	a5,112(s0)
   11d90:	40f60633          	sub	a2,a2,a5
   11d94:	03043583          	ld	a1,48(s0)
   11d98:	00000693          	li	a3,0
   11d9c:	00098513          	mv	a0,s3
   11da0:	000800e7          	jalr	a6
   11da4:	fff00713          	li	a4,-1
   11da8:	01041783          	lh	a5,16(s0)
   11dac:	12e51c63          	bne	a0,a4,11ee4 <__sflush_r+0x1f0>
   11db0:	0009a683          	lw	a3,0(s3)
   11db4:	01d00713          	li	a4,29
   11db8:	18d76263          	bltu	a4,a3,11f3c <__sflush_r+0x248>
   11dbc:	20400737          	lui	a4,0x20400
   11dc0:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11dc4:	00d75733          	srl	a4,a4,a3
   11dc8:	00177713          	andi	a4,a4,1
   11dcc:	16070863          	beqz	a4,11f3c <__sflush_r+0x248>
   11dd0:	01843683          	ld	a3,24(s0)
   11dd4:	fffff737          	lui	a4,0xfffff
   11dd8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11ddc:	00e7f733          	and	a4,a5,a4
   11de0:	00e41823          	sh	a4,16(s0)
   11de4:	00042423          	sw	zero,8(s0)
   11de8:	00d43023          	sd	a3,0(s0)
   11dec:	03379713          	slli	a4,a5,0x33
   11df0:	00075663          	bgez	a4,11dfc <__sflush_r+0x108>
   11df4:	0009a783          	lw	a5,0(s3)
   11df8:	10078863          	beqz	a5,11f08 <__sflush_r+0x214>
   11dfc:	05843583          	ld	a1,88(s0)
   11e00:	0099a023          	sw	s1,0(s3)
   11e04:	10058a63          	beqz	a1,11f18 <__sflush_r+0x224>
   11e08:	07440793          	addi	a5,s0,116
   11e0c:	00f58663          	beq	a1,a5,11e18 <__sflush_r+0x124>
   11e10:	00098513          	mv	a0,s3
   11e14:	9dcff0ef          	jal	10ff0 <_free_r>
   11e18:	01813483          	ld	s1,24(sp)
   11e1c:	04043c23          	sd	zero,88(s0)
   11e20:	02813083          	ld	ra,40(sp)
   11e24:	02013403          	ld	s0,32(sp)
   11e28:	00813983          	ld	s3,8(sp)
   11e2c:	00000513          	li	a0,0
   11e30:	03010113          	addi	sp,sp,48
   11e34:	00008067          	ret
   11e38:	01213823          	sd	s2,16(sp)
   11e3c:	0185b903          	ld	s2,24(a1)
   11e40:	08090a63          	beqz	s2,11ed4 <__sflush_r+0x1e0>
   11e44:	00913c23          	sd	s1,24(sp)
   11e48:	0005b483          	ld	s1,0(a1)
   11e4c:	00377713          	andi	a4,a4,3
   11e50:	0125b023          	sd	s2,0(a1)
   11e54:	412484bb          	subw	s1,s1,s2
   11e58:	00000793          	li	a5,0
   11e5c:	00071463          	bnez	a4,11e64 <__sflush_r+0x170>
   11e60:	0205a783          	lw	a5,32(a1)
   11e64:	00f42623          	sw	a5,12(s0)
   11e68:	00904863          	bgtz	s1,11e78 <__sflush_r+0x184>
   11e6c:	0640006f          	j	11ed0 <__sflush_r+0x1dc>
   11e70:	00a90933          	add	s2,s2,a0
   11e74:	04905e63          	blez	s1,11ed0 <__sflush_r+0x1dc>
   11e78:	04043783          	ld	a5,64(s0)
   11e7c:	03043583          	ld	a1,48(s0)
   11e80:	00048693          	mv	a3,s1
   11e84:	00090613          	mv	a2,s2
   11e88:	00098513          	mv	a0,s3
   11e8c:	000780e7          	jalr	a5
   11e90:	40a484bb          	subw	s1,s1,a0
   11e94:	fca04ee3          	bgtz	a0,11e70 <__sflush_r+0x17c>
   11e98:	01045783          	lhu	a5,16(s0)
   11e9c:	01013903          	ld	s2,16(sp)
   11ea0:	0407e793          	ori	a5,a5,64
   11ea4:	02813083          	ld	ra,40(sp)
   11ea8:	00f41823          	sh	a5,16(s0)
   11eac:	02013403          	ld	s0,32(sp)
   11eb0:	01813483          	ld	s1,24(sp)
   11eb4:	00813983          	ld	s3,8(sp)
   11eb8:	fff00513          	li	a0,-1
   11ebc:	03010113          	addi	sp,sp,48
   11ec0:	00008067          	ret
   11ec4:	0705a683          	lw	a3,112(a1)
   11ec8:	e6d044e3          	bgtz	a3,11d30 <__sflush_r+0x3c>
   11ecc:	f55ff06f          	j	11e20 <__sflush_r+0x12c>
   11ed0:	01813483          	ld	s1,24(sp)
   11ed4:	01013903          	ld	s2,16(sp)
   11ed8:	f49ff06f          	j	11e20 <__sflush_r+0x12c>
   11edc:	09043603          	ld	a2,144(s0)
   11ee0:	e95ff06f          	j	11d74 <__sflush_r+0x80>
   11ee4:	01843683          	ld	a3,24(s0)
   11ee8:	fffff737          	lui	a4,0xfffff
   11eec:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11ef0:	00e7f733          	and	a4,a5,a4
   11ef4:	00e41823          	sh	a4,16(s0)
   11ef8:	00042423          	sw	zero,8(s0)
   11efc:	00d43023          	sd	a3,0(s0)
   11f00:	03379713          	slli	a4,a5,0x33
   11f04:	ee075ce3          	bgez	a4,11dfc <__sflush_r+0x108>
   11f08:	05843583          	ld	a1,88(s0)
   11f0c:	08a43823          	sd	a0,144(s0)
   11f10:	0099a023          	sw	s1,0(s3)
   11f14:	ee059ae3          	bnez	a1,11e08 <__sflush_r+0x114>
   11f18:	01813483          	ld	s1,24(sp)
   11f1c:	f05ff06f          	j	11e20 <__sflush_r+0x12c>
   11f20:	0009a783          	lw	a5,0(s3)
   11f24:	e40784e3          	beqz	a5,11d6c <__sflush_r+0x78>
   11f28:	fe378713          	addi	a4,a5,-29
   11f2c:	00070c63          	beqz	a4,11f44 <__sflush_r+0x250>
   11f30:	fea78793          	addi	a5,a5,-22
   11f34:	00078863          	beqz	a5,11f44 <__sflush_r+0x250>
   11f38:	01045783          	lhu	a5,16(s0)
   11f3c:	0407e793          	ori	a5,a5,64
   11f40:	f65ff06f          	j	11ea4 <__sflush_r+0x1b0>
   11f44:	0099a023          	sw	s1,0(s3)
   11f48:	01813483          	ld	s1,24(sp)
   11f4c:	ed5ff06f          	j	11e20 <__sflush_r+0x12c>

0000000000011f50 <_fflush_r>:
   11f50:	00050793          	mv	a5,a0
   11f54:	00050663          	beqz	a0,11f60 <_fflush_r+0x10>
   11f58:	04853703          	ld	a4,72(a0)
   11f5c:	00070e63          	beqz	a4,11f78 <_fflush_r+0x28>
   11f60:	01059703          	lh	a4,16(a1)
   11f64:	00071663          	bnez	a4,11f70 <_fflush_r+0x20>
   11f68:	00000513          	li	a0,0
   11f6c:	00008067          	ret
   11f70:	00078513          	mv	a0,a5
   11f74:	d81ff06f          	j	11cf4 <__sflush_r>
   11f78:	fe010113          	addi	sp,sp,-32
   11f7c:	00b13423          	sd	a1,8(sp)
   11f80:	00113c23          	sd	ra,24(sp)
   11f84:	00a13023          	sd	a0,0(sp)
   11f88:	f8cfe0ef          	jal	10714 <__sinit>
   11f8c:	00813583          	ld	a1,8(sp)
   11f90:	00013783          	ld	a5,0(sp)
   11f94:	01059703          	lh	a4,16(a1)
   11f98:	00070a63          	beqz	a4,11fac <_fflush_r+0x5c>
   11f9c:	01813083          	ld	ra,24(sp)
   11fa0:	00078513          	mv	a0,a5
   11fa4:	02010113          	addi	sp,sp,32
   11fa8:	d4dff06f          	j	11cf4 <__sflush_r>
   11fac:	01813083          	ld	ra,24(sp)
   11fb0:	00000513          	li	a0,0
   11fb4:	02010113          	addi	sp,sp,32
   11fb8:	00008067          	ret

0000000000011fbc <fflush>:
   11fbc:	06050063          	beqz	a0,1201c <fflush+0x60>
   11fc0:	00050593          	mv	a1,a0
   11fc4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11fc8:	00050663          	beqz	a0,11fd4 <fflush+0x18>
   11fcc:	04853783          	ld	a5,72(a0)
   11fd0:	00078c63          	beqz	a5,11fe8 <fflush+0x2c>
   11fd4:	01059783          	lh	a5,16(a1)
   11fd8:	00079663          	bnez	a5,11fe4 <fflush+0x28>
   11fdc:	00000513          	li	a0,0
   11fe0:	00008067          	ret
   11fe4:	d11ff06f          	j	11cf4 <__sflush_r>
   11fe8:	fe010113          	addi	sp,sp,-32
   11fec:	00b13423          	sd	a1,8(sp)
   11ff0:	00a13023          	sd	a0,0(sp)
   11ff4:	00113c23          	sd	ra,24(sp)
   11ff8:	f1cfe0ef          	jal	10714 <__sinit>
   11ffc:	00813583          	ld	a1,8(sp)
   12000:	00013503          	ld	a0,0(sp)
   12004:	01059783          	lh	a5,16(a1)
   12008:	02079863          	bnez	a5,12038 <fflush+0x7c>
   1200c:	01813083          	ld	ra,24(sp)
   12010:	00000513          	li	a0,0
   12014:	02010113          	addi	sp,sp,32
   12018:	00008067          	ret
   1201c:	00013637          	lui	a2,0x13
   12020:	000125b7          	lui	a1,0x12
   12024:	00013537          	lui	a0,0x13
   12028:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1202c:	f5058593          	addi	a1,a1,-176 # 11f50 <_fflush_r>
   12030:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12034:	f3cfe06f          	j	10770 <_fwalk_sglue>
   12038:	01813083          	ld	ra,24(sp)
   1203c:	02010113          	addi	sp,sp,32
   12040:	cb5ff06f          	j	11cf4 <__sflush_r>

0000000000012044 <_sbrk_r>:
   12044:	fe010113          	addi	sp,sp,-32
   12048:	00813823          	sd	s0,16(sp)
   1204c:	00913423          	sd	s1,8(sp)
   12050:	00050493          	mv	s1,a0
   12054:	00058513          	mv	a0,a1
   12058:	00113c23          	sd	ra,24(sp)
   1205c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12060:	228000ef          	jal	12288 <_sbrk>
   12064:	fff00793          	li	a5,-1
   12068:	00f50c63          	beq	a0,a5,12080 <_sbrk_r+0x3c>
   1206c:	01813083          	ld	ra,24(sp)
   12070:	01013403          	ld	s0,16(sp)
   12074:	00813483          	ld	s1,8(sp)
   12078:	02010113          	addi	sp,sp,32
   1207c:	00008067          	ret
   12080:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12084:	fe0784e3          	beqz	a5,1206c <_sbrk_r+0x28>
   12088:	01813083          	ld	ra,24(sp)
   1208c:	01013403          	ld	s0,16(sp)
   12090:	00f4a023          	sw	a5,0(s1)
   12094:	00813483          	ld	s1,8(sp)
   12098:	02010113          	addi	sp,sp,32
   1209c:	00008067          	ret

00000000000120a0 <__libc_fini_array>:
   120a0:	fe010113          	addi	sp,sp,-32
   120a4:	00813823          	sd	s0,16(sp)
   120a8:	000137b7          	lui	a5,0x13
   120ac:	00013437          	lui	s0,0x13
   120b0:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   120b4:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   120b8:	408787b3          	sub	a5,a5,s0
   120bc:	00913423          	sd	s1,8(sp)
   120c0:	00113c23          	sd	ra,24(sp)
   120c4:	4037d493          	srai	s1,a5,0x3
   120c8:	02048063          	beqz	s1,120e8 <__libc_fini_array+0x48>
   120cc:	ff840413          	addi	s0,s0,-8
   120d0:	00f40433          	add	s0,s0,a5
   120d4:	00043783          	ld	a5,0(s0)
   120d8:	fff48493          	addi	s1,s1,-1
   120dc:	ff840413          	addi	s0,s0,-8
   120e0:	000780e7          	jalr	a5
   120e4:	fe0498e3          	bnez	s1,120d4 <__libc_fini_array+0x34>
   120e8:	01813083          	ld	ra,24(sp)
   120ec:	01013403          	ld	s0,16(sp)
   120f0:	00813483          	ld	s1,8(sp)
   120f4:	02010113          	addi	sp,sp,32
   120f8:	00008067          	ret

00000000000120fc <__register_exitproc>:
   120fc:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12100:	04078e63          	beqz	a5,1215c <__register_exitproc+0x60>
   12104:	0087a703          	lw	a4,8(a5)
   12108:	01f00813          	li	a6,31
   1210c:	08e84263          	blt	a6,a4,12190 <__register_exitproc+0x94>
   12110:	02050863          	beqz	a0,12140 <__register_exitproc+0x44>
   12114:	00371813          	slli	a6,a4,0x3
   12118:	01078833          	add	a6,a5,a6
   1211c:	10c83823          	sd	a2,272(a6)
   12120:	3107a883          	lw	a7,784(a5)
   12124:	00100613          	li	a2,1
   12128:	00e6163b          	sllw	a2,a2,a4
   1212c:	00c8e8b3          	or	a7,a7,a2
   12130:	3117a823          	sw	a7,784(a5)
   12134:	20d83823          	sd	a3,528(a6)
   12138:	00200693          	li	a3,2
   1213c:	02d50663          	beq	a0,a3,12168 <__register_exitproc+0x6c>
   12140:	0017069b          	addiw	a3,a4,1
   12144:	00371713          	slli	a4,a4,0x3
   12148:	00d7a423          	sw	a3,8(a5)
   1214c:	00e787b3          	add	a5,a5,a4
   12150:	00b7b823          	sd	a1,16(a5)
   12154:	00000513          	li	a0,0
   12158:	00008067          	ret
   1215c:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12160:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12164:	fa1ff06f          	j	12104 <__register_exitproc+0x8>
   12168:	3147a683          	lw	a3,788(a5)
   1216c:	00000513          	li	a0,0
   12170:	00d66633          	or	a2,a2,a3
   12174:	0017069b          	addiw	a3,a4,1
   12178:	00371713          	slli	a4,a4,0x3
   1217c:	30c7aa23          	sw	a2,788(a5)
   12180:	00d7a423          	sw	a3,8(a5)
   12184:	00e787b3          	add	a5,a5,a4
   12188:	00b7b823          	sd	a1,16(a5)
   1218c:	00008067          	ret
   12190:	fff00513          	li	a0,-1
   12194:	00008067          	ret

0000000000012198 <_close>:
   12198:	03900893          	li	a7,57
   1219c:	00000073          	ecall
   121a0:	00054663          	bltz	a0,121ac <_close+0x14>
   121a4:	0005051b          	sext.w	a0,a0
   121a8:	00008067          	ret
   121ac:	fe010113          	addi	sp,sp,-32
   121b0:	00113c23          	sd	ra,24(sp)
   121b4:	00a13423          	sd	a0,8(sp)
   121b8:	188000ef          	jal	12340 <__errno>
   121bc:	00813783          	ld	a5,8(sp)
   121c0:	01813083          	ld	ra,24(sp)
   121c4:	40f007bb          	negw	a5,a5
   121c8:	00f52023          	sw	a5,0(a0)
   121cc:	fff00513          	li	a0,-1
   121d0:	02010113          	addi	sp,sp,32
   121d4:	00008067          	ret

00000000000121d8 <_exit>:
   121d8:	05d00893          	li	a7,93
   121dc:	00000073          	ecall
   121e0:	00054463          	bltz	a0,121e8 <_exit+0x10>
   121e4:	0000006f          	j	121e4 <_exit+0xc>
   121e8:	fe010113          	addi	sp,sp,-32
   121ec:	00113c23          	sd	ra,24(sp)
   121f0:	00a13423          	sd	a0,8(sp)
   121f4:	14c000ef          	jal	12340 <__errno>
   121f8:	00813783          	ld	a5,8(sp)
   121fc:	40f007bb          	negw	a5,a5
   12200:	00f52023          	sw	a5,0(a0)
   12204:	0000006f          	j	12204 <_exit+0x2c>

0000000000012208 <_lseek>:
   12208:	03e00893          	li	a7,62
   1220c:	00000073          	ecall
   12210:	00054463          	bltz	a0,12218 <_lseek+0x10>
   12214:	00008067          	ret
   12218:	fe010113          	addi	sp,sp,-32
   1221c:	00113c23          	sd	ra,24(sp)
   12220:	00a13423          	sd	a0,8(sp)
   12224:	11c000ef          	jal	12340 <__errno>
   12228:	00813783          	ld	a5,8(sp)
   1222c:	01813083          	ld	ra,24(sp)
   12230:	40f007bb          	negw	a5,a5
   12234:	00f52023          	sw	a5,0(a0)
   12238:	fff00793          	li	a5,-1
   1223c:	00078513          	mv	a0,a5
   12240:	02010113          	addi	sp,sp,32
   12244:	00008067          	ret

0000000000012248 <_read>:
   12248:	03f00893          	li	a7,63
   1224c:	00000073          	ecall
   12250:	00054463          	bltz	a0,12258 <_read+0x10>
   12254:	00008067          	ret
   12258:	fe010113          	addi	sp,sp,-32
   1225c:	00113c23          	sd	ra,24(sp)
   12260:	00a13423          	sd	a0,8(sp)
   12264:	0dc000ef          	jal	12340 <__errno>
   12268:	00813783          	ld	a5,8(sp)
   1226c:	01813083          	ld	ra,24(sp)
   12270:	40f007bb          	negw	a5,a5
   12274:	00f52023          	sw	a5,0(a0)
   12278:	fff00793          	li	a5,-1
   1227c:	00078513          	mv	a0,a5
   12280:	02010113          	addi	sp,sp,32
   12284:	00008067          	ret

0000000000012288 <_sbrk>:
   12288:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1228c:	ff010113          	addi	sp,sp,-16
   12290:	00113423          	sd	ra,8(sp)
   12294:	00050713          	mv	a4,a0
   12298:	02079063          	bnez	a5,122b8 <_sbrk+0x30>
   1229c:	0d600893          	li	a7,214
   122a0:	00000513          	li	a0,0
   122a4:	00000073          	ecall
   122a8:	fff00793          	li	a5,-1
   122ac:	02f50c63          	beq	a0,a5,122e4 <_sbrk+0x5c>
   122b0:	00050793          	mv	a5,a0
   122b4:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   122b8:	00f70533          	add	a0,a4,a5
   122bc:	0d600893          	li	a7,214
   122c0:	00000073          	ecall
   122c4:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   122c8:	00f70733          	add	a4,a4,a5
   122cc:	00e51c63          	bne	a0,a4,122e4 <_sbrk+0x5c>
   122d0:	00813083          	ld	ra,8(sp)
   122d4:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   122d8:	00078513          	mv	a0,a5
   122dc:	01010113          	addi	sp,sp,16
   122e0:	00008067          	ret
   122e4:	05c000ef          	jal	12340 <__errno>
   122e8:	00813083          	ld	ra,8(sp)
   122ec:	00c00793          	li	a5,12
   122f0:	00f52023          	sw	a5,0(a0)
   122f4:	fff00513          	li	a0,-1
   122f8:	01010113          	addi	sp,sp,16
   122fc:	00008067          	ret

0000000000012300 <_write>:
   12300:	04000893          	li	a7,64
   12304:	00000073          	ecall
   12308:	00054463          	bltz	a0,12310 <_write+0x10>
   1230c:	00008067          	ret
   12310:	fe010113          	addi	sp,sp,-32
   12314:	00113c23          	sd	ra,24(sp)
   12318:	00a13423          	sd	a0,8(sp)
   1231c:	024000ef          	jal	12340 <__errno>
   12320:	00813783          	ld	a5,8(sp)
   12324:	01813083          	ld	ra,24(sp)
   12328:	40f007bb          	negw	a5,a5
   1232c:	00f52023          	sw	a5,0(a0)
   12330:	fff00793          	li	a5,-1
   12334:	00078513          	mv	a0,a5
   12338:	02010113          	addi	sp,sp,32
   1233c:	00008067          	ret

0000000000012340 <__errno>:
   12340:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12344:	00008067          	ret

Disassembly of section .rodata:

0000000000012348 <.rodata>:
   12348:	6548                	.insn	2, 0x6548
   1234a:	6c6c                	.insn	2, 0x6c6c
   1234c:	57202c6f          	jal	s8,148be <__BSS_END__+0x946>
   12350:	646c726f          	jal	tp,d9996 <__BSS_END__+0xc5a1e>
   12354:	0a21                	.insn	2, 0x0a21
	...

Disassembly of section .eh_frame:

0000000000012358 <__EH_FRAME_BEGIN__>:
   12358:	0000                	.insn	2, 0x0000
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

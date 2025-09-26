
test/build/with-syscall/helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	409000ef          	jal	10d3c <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	04c020ef          	jal	12194 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	05c50513          	addi	a0,a0,92 # 1205c <__libc_fini_array>
   1015c:	5190006f          	j	10e74 <atexit>
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
   10184:	2dd000ef          	jal	10c60 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	cec50513          	addi	a0,a0,-788 # 10e74 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	ec850513          	addi	a0,a0,-312 # 1205c <__libc_fini_array>
   1019c:	4d9000ef          	jal	10e74 <atexit>
   101a0:	22d000ef          	jal	10bcc <__libc_init_array>
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
   101d8:	31850513          	addi	a0,a0,792 # 12318 <__EH_FRAME_BEGIN__>
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
   1020c:	31850513          	addi	a0,a0,792 # 12318 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	000127b7          	lui	a5,0x12
   10230:	30878513          	addi	a0,a5,776 # 12308 <__errno+0xc>
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
   103d8:	b9c58593          	addi	a1,a1,-1124 # 11b9c <_fclose_r>
   103dc:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   103e0:	34c0006f          	j	1072c <_fwalk_sglue>

00000000000103e4 <cleanup_stdio>:
   103e4:	00853583          	ld	a1,8(a0)
   103e8:	ff010113          	addi	sp,sp,-16
   103ec:	00813023          	sd	s0,0(sp)
   103f0:	00113423          	sd	ra,8(sp)
   103f4:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   103f8:	00050413          	mv	s0,a0
   103fc:	00f58463          	beq	a1,a5,10404 <cleanup_stdio+0x20>
   10400:	79c010ef          	jal	11b9c <_fclose_r>
   10404:	01043583          	ld	a1,16(s0)
   10408:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   1040c:	00f58663          	beq	a1,a5,10418 <cleanup_stdio+0x34>
   10410:	00040513          	mv	a0,s0
   10414:	788010ef          	jal	11b9c <_fclose_r>
   10418:	01843583          	ld	a1,24(s0)
   1041c:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10420:	00f58c63          	beq	a1,a5,10438 <cleanup_stdio+0x54>
   10424:	00040513          	mv	a0,s0
   10428:	00013403          	ld	s0,0(sp)
   1042c:	00813083          	ld	ra,8(sp)
   10430:	01010113          	addi	sp,sp,16
   10434:	7680106f          	j	11b9c <_fclose_r>
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
   104a8:	7b8000ef          	jal	10c60 <memset>
   104ac:	00010a37          	lui	s4,0x10
   104b0:	000119b7          	lui	s3,0x11
   104b4:	00011937          	lui	s2,0x11
   104b8:	000114b7          	lui	s1,0x11
   104bc:	000107b7          	lui	a5,0x10
   104c0:	7fca0a13          	addi	s4,s4,2044 # 107fc <__sread>
   104c4:	86098993          	addi	s3,s3,-1952 # 10860 <__swrite>
   104c8:	8e890913          	addi	s2,s2,-1816 # 108e8 <__sseek>
   104cc:	94c48493          	addi	s1,s1,-1716 # 1094c <__sclose>
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
   10510:	750000ef          	jal	10c60 <memset>
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
   1055c:	704000ef          	jal	10c60 <memset>
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
   105b0:	10078463          	beqz	a5,106b8 <__sfp+0x120>
   105b4:	000136b7          	lui	a3,0x13
   105b8:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   105bc:	0086a703          	lw	a4,8(a3)
   105c0:	08e05c63          	blez	a4,10658 <__sfp+0xc0>
   105c4:	02071713          	slli	a4,a4,0x20
   105c8:	02075713          	srli	a4,a4,0x20
   105cc:	00171793          	slli	a5,a4,0x1
   105d0:	00e787b3          	add	a5,a5,a4
   105d4:	0106b403          	ld	s0,16(a3)
   105d8:	00279793          	slli	a5,a5,0x2
   105dc:	40e787b3          	sub	a5,a5,a4
   105e0:	00479793          	slli	a5,a5,0x4
   105e4:	00f407b3          	add	a5,s0,a5
   105e8:	00c0006f          	j	105f4 <__sfp+0x5c>
   105ec:	0b040413          	addi	s0,s0,176
   105f0:	06f40463          	beq	s0,a5,10658 <__sfp+0xc0>
   105f4:	01041703          	lh	a4,16(s0)
   105f8:	fe071ae3          	bnez	a4,105ec <__sfp+0x54>
   105fc:	ffff07b7          	lui	a5,0xffff0
   10600:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10604:	00f42823          	sw	a5,16(s0)
   10608:	0a042623          	sw	zero,172(s0)
   1060c:	00043023          	sd	zero,0(s0)
   10610:	00043423          	sd	zero,8(s0)
   10614:	00043c23          	sd	zero,24(s0)
   10618:	02042023          	sw	zero,32(s0)
   1061c:	02042423          	sw	zero,40(s0)
   10620:	00800613          	li	a2,8
   10624:	00000593          	li	a1,0
   10628:	0a440513          	addi	a0,s0,164
   1062c:	634000ef          	jal	10c60 <memset>
   10630:	04043c23          	sd	zero,88(s0)
   10634:	06042023          	sw	zero,96(s0)
   10638:	06043c23          	sd	zero,120(s0)
   1063c:	08042023          	sw	zero,128(s0)
   10640:	02813083          	ld	ra,40(sp)
   10644:	00040513          	mv	a0,s0
   10648:	02013403          	ld	s0,32(sp)
   1064c:	01813483          	ld	s1,24(sp)
   10650:	03010113          	addi	sp,sp,48
   10654:	00008067          	ret
   10658:	0006b403          	ld	s0,0(a3)
   1065c:	00040663          	beqz	s0,10668 <__sfp+0xd0>
   10660:	00040693          	mv	a3,s0
   10664:	f59ff06f          	j	105bc <__sfp+0x24>
   10668:	2d800593          	li	a1,728
   1066c:	00048513          	mv	a0,s1
   10670:	00d13423          	sd	a3,8(sp)
   10674:	43d000ef          	jal	112b0 <_malloc_r>
   10678:	00813683          	ld	a3,8(sp)
   1067c:	00050413          	mv	s0,a0
   10680:	04050063          	beqz	a0,106c0 <__sfp+0x128>
   10684:	00400793          	li	a5,4
   10688:	00f52423          	sw	a5,8(a0)
   1068c:	01850513          	addi	a0,a0,24
   10690:	00043023          	sd	zero,0(s0)
   10694:	00a43823          	sd	a0,16(s0)
   10698:	2c000613          	li	a2,704
   1069c:	00000593          	li	a1,0
   106a0:	00d13423          	sd	a3,8(sp)
   106a4:	5bc000ef          	jal	10c60 <memset>
   106a8:	00813683          	ld	a3,8(sp)
   106ac:	0086b023          	sd	s0,0(a3)
   106b0:	00040693          	mv	a3,s0
   106b4:	f09ff06f          	j	105bc <__sfp+0x24>
   106b8:	d99ff0ef          	jal	10450 <global_stdio_init.part.0>
   106bc:	ef9ff06f          	j	105b4 <__sfp+0x1c>
   106c0:	0006b023          	sd	zero,0(a3)
   106c4:	00c00793          	li	a5,12
   106c8:	00f4a023          	sw	a5,0(s1)
   106cc:	f75ff06f          	j	10640 <__sfp+0xa8>

00000000000106d0 <__sinit>:
   106d0:	04853783          	ld	a5,72(a0)
   106d4:	00078463          	beqz	a5,106dc <__sinit+0xc>
   106d8:	00008067          	ret
   106dc:	000107b7          	lui	a5,0x10
   106e0:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   106e4:	3e478793          	addi	a5,a5,996 # 103e4 <cleanup_stdio>
   106e8:	04f53423          	sd	a5,72(a0)
   106ec:	fe0716e3          	bnez	a4,106d8 <__sinit+0x8>
   106f0:	d61ff06f          	j	10450 <global_stdio_init.part.0>

00000000000106f4 <__sfp_lock_acquire>:
   106f4:	00008067          	ret

00000000000106f8 <__sfp_lock_release>:
   106f8:	00008067          	ret

00000000000106fc <__fp_lock_all>:
   106fc:	00013637          	lui	a2,0x13
   10700:	000105b7          	lui	a1,0x10
   10704:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10708:	3c058593          	addi	a1,a1,960 # 103c0 <__fp_lock>
   1070c:	00000513          	li	a0,0
   10710:	01c0006f          	j	1072c <_fwalk_sglue>

0000000000010714 <__fp_unlock_all>:
   10714:	00013637          	lui	a2,0x13
   10718:	000105b7          	lui	a1,0x10
   1071c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10720:	44858593          	addi	a1,a1,1096 # 10448 <__fp_unlock>
   10724:	00000513          	li	a0,0
   10728:	0040006f          	j	1072c <_fwalk_sglue>

000000000001072c <_fwalk_sglue>:
   1072c:	fb010113          	addi	sp,sp,-80
   10730:	03213823          	sd	s2,48(sp)
   10734:	03313423          	sd	s3,40(sp)
   10738:	03413023          	sd	s4,32(sp)
   1073c:	01513c23          	sd	s5,24(sp)
   10740:	01613823          	sd	s6,16(sp)
   10744:	01713423          	sd	s7,8(sp)
   10748:	04113423          	sd	ra,72(sp)
   1074c:	04813023          	sd	s0,64(sp)
   10750:	02913c23          	sd	s1,56(sp)
   10754:	00060913          	mv	s2,a2
   10758:	00050a13          	mv	s4,a0
   1075c:	00058a93          	mv	s5,a1
   10760:	00000b13          	li	s6,0
   10764:	00100b93          	li	s7,1
   10768:	fff00993          	li	s3,-1
   1076c:	00892783          	lw	a5,8(s2)
   10770:	04f05a63          	blez	a5,107c4 <_fwalk_sglue+0x98>
   10774:	02079793          	slli	a5,a5,0x20
   10778:	0207d793          	srli	a5,a5,0x20
   1077c:	00179493          	slli	s1,a5,0x1
   10780:	00f484b3          	add	s1,s1,a5
   10784:	01093403          	ld	s0,16(s2)
   10788:	00249493          	slli	s1,s1,0x2
   1078c:	40f484b3          	sub	s1,s1,a5
   10790:	00449493          	slli	s1,s1,0x4
   10794:	009404b3          	add	s1,s0,s1
   10798:	01045783          	lhu	a5,16(s0)
   1079c:	02fbf063          	bgeu	s7,a5,107bc <_fwalk_sglue+0x90>
   107a0:	01241783          	lh	a5,18(s0)
   107a4:	00040593          	mv	a1,s0
   107a8:	000a0513          	mv	a0,s4
   107ac:	01378863          	beq	a5,s3,107bc <_fwalk_sglue+0x90>
   107b0:	000a80e7          	jalr	s5
   107b4:	01656b33          	or	s6,a0,s6
   107b8:	000b0b1b          	sext.w	s6,s6
   107bc:	0b040413          	addi	s0,s0,176
   107c0:	fc941ce3          	bne	s0,s1,10798 <_fwalk_sglue+0x6c>
   107c4:	00093903          	ld	s2,0(s2)
   107c8:	fa0912e3          	bnez	s2,1076c <_fwalk_sglue+0x40>
   107cc:	04813083          	ld	ra,72(sp)
   107d0:	04013403          	ld	s0,64(sp)
   107d4:	03813483          	ld	s1,56(sp)
   107d8:	03013903          	ld	s2,48(sp)
   107dc:	02813983          	ld	s3,40(sp)
   107e0:	02013a03          	ld	s4,32(sp)
   107e4:	01813a83          	ld	s5,24(sp)
   107e8:	00813b83          	ld	s7,8(sp)
   107ec:	000b0513          	mv	a0,s6
   107f0:	01013b03          	ld	s6,16(sp)
   107f4:	05010113          	addi	sp,sp,80
   107f8:	00008067          	ret

00000000000107fc <__sread>:
   107fc:	ff010113          	addi	sp,sp,-16
   10800:	00813023          	sd	s0,0(sp)
   10804:	00058413          	mv	s0,a1
   10808:	01259583          	lh	a1,18(a1)
   1080c:	00113423          	sd	ra,8(sp)
   10810:	2ec000ef          	jal	10afc <_read_r>
   10814:	02054063          	bltz	a0,10834 <__sread+0x38>
   10818:	09043783          	ld	a5,144(s0)
   1081c:	00813083          	ld	ra,8(sp)
   10820:	00a787b3          	add	a5,a5,a0
   10824:	08f43823          	sd	a5,144(s0)
   10828:	00013403          	ld	s0,0(sp)
   1082c:	01010113          	addi	sp,sp,16
   10830:	00008067          	ret
   10834:	01045783          	lhu	a5,16(s0)
   10838:	fffff737          	lui	a4,0xfffff
   1083c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10840:	00e7f7b3          	and	a5,a5,a4
   10844:	00813083          	ld	ra,8(sp)
   10848:	00f41823          	sh	a5,16(s0)
   1084c:	00013403          	ld	s0,0(sp)
   10850:	01010113          	addi	sp,sp,16
   10854:	00008067          	ret

0000000000010858 <__seofread>:
   10858:	00000513          	li	a0,0
   1085c:	00008067          	ret

0000000000010860 <__swrite>:
   10860:	01059783          	lh	a5,16(a1)
   10864:	fd010113          	addi	sp,sp,-48
   10868:	00068313          	mv	t1,a3
   1086c:	02113423          	sd	ra,40(sp)
   10870:	1007f693          	andi	a3,a5,256
   10874:	00058713          	mv	a4,a1
   10878:	00060893          	mv	a7,a2
   1087c:	00050813          	mv	a6,a0
   10880:	02069863          	bnez	a3,108b0 <__swrite+0x50>
   10884:	fffff6b7          	lui	a3,0xfffff
   10888:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   1088c:	02813083          	ld	ra,40(sp)
   10890:	00d7f7b3          	and	a5,a5,a3
   10894:	01271583          	lh	a1,18(a4)
   10898:	00f71823          	sh	a5,16(a4)
   1089c:	00030693          	mv	a3,t1
   108a0:	00088613          	mv	a2,a7
   108a4:	00080513          	mv	a0,a6
   108a8:	03010113          	addi	sp,sp,48
   108ac:	2b80006f          	j	10b64 <_write_r>
   108b0:	01259583          	lh	a1,18(a1)
   108b4:	00c13823          	sd	a2,16(sp)
   108b8:	00200693          	li	a3,2
   108bc:	00000613          	li	a2,0
   108c0:	00613c23          	sd	t1,24(sp)
   108c4:	00e13023          	sd	a4,0(sp)
   108c8:	00a13423          	sd	a0,8(sp)
   108cc:	1c8000ef          	jal	10a94 <_lseek_r>
   108d0:	00013703          	ld	a4,0(sp)
   108d4:	01813303          	ld	t1,24(sp)
   108d8:	01013883          	ld	a7,16(sp)
   108dc:	01071783          	lh	a5,16(a4)
   108e0:	00813803          	ld	a6,8(sp)
   108e4:	fa1ff06f          	j	10884 <__swrite+0x24>

00000000000108e8 <__sseek>:
   108e8:	ff010113          	addi	sp,sp,-16
   108ec:	00813023          	sd	s0,0(sp)
   108f0:	00058413          	mv	s0,a1
   108f4:	01259583          	lh	a1,18(a1)
   108f8:	00113423          	sd	ra,8(sp)
   108fc:	198000ef          	jal	10a94 <_lseek_r>
   10900:	fff00713          	li	a4,-1
   10904:	01041783          	lh	a5,16(s0)
   10908:	02e50263          	beq	a0,a4,1092c <__sseek+0x44>
   1090c:	00001737          	lui	a4,0x1
   10910:	00e7e7b3          	or	a5,a5,a4
   10914:	00813083          	ld	ra,8(sp)
   10918:	08a43823          	sd	a0,144(s0)
   1091c:	00f41823          	sh	a5,16(s0)
   10920:	00013403          	ld	s0,0(sp)
   10924:	01010113          	addi	sp,sp,16
   10928:	00008067          	ret
   1092c:	80050713          	addi	a4,a0,-2048
   10930:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10934:	00e7f7b3          	and	a5,a5,a4
   10938:	00813083          	ld	ra,8(sp)
   1093c:	00f41823          	sh	a5,16(s0)
   10940:	00013403          	ld	s0,0(sp)
   10944:	01010113          	addi	sp,sp,16
   10948:	00008067          	ret

000000000001094c <__sclose>:
   1094c:	01259583          	lh	a1,18(a1)
   10950:	0040006f          	j	10954 <_close_r>

0000000000010954 <_close_r>:
   10954:	fe010113          	addi	sp,sp,-32
   10958:	00813823          	sd	s0,16(sp)
   1095c:	00913423          	sd	s1,8(sp)
   10960:	00050493          	mv	s1,a0
   10964:	00058513          	mv	a0,a1
   10968:	00113c23          	sd	ra,24(sp)
   1096c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10970:	7e4010ef          	jal	12154 <_close>
   10974:	fff00793          	li	a5,-1
   10978:	00f50c63          	beq	a0,a5,10990 <_close_r+0x3c>
   1097c:	01813083          	ld	ra,24(sp)
   10980:	01013403          	ld	s0,16(sp)
   10984:	00813483          	ld	s1,8(sp)
   10988:	02010113          	addi	sp,sp,32
   1098c:	00008067          	ret
   10990:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10994:	fe0784e3          	beqz	a5,1097c <_close_r+0x28>
   10998:	01813083          	ld	ra,24(sp)
   1099c:	01013403          	ld	s0,16(sp)
   109a0:	00f4a023          	sw	a5,0(s1)
   109a4:	00813483          	ld	s1,8(sp)
   109a8:	02010113          	addi	sp,sp,32
   109ac:	00008067          	ret

00000000000109b0 <_reclaim_reent>:
   109b0:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   109b4:	0ca78e63          	beq	a5,a0,10a90 <_reclaim_reent+0xe0>
   109b8:	06853583          	ld	a1,104(a0)
   109bc:	fd010113          	addi	sp,sp,-48
   109c0:	00913c23          	sd	s1,24(sp)
   109c4:	02113423          	sd	ra,40(sp)
   109c8:	02813023          	sd	s0,32(sp)
   109cc:	00050493          	mv	s1,a0
   109d0:	04058863          	beqz	a1,10a20 <_reclaim_reent+0x70>
   109d4:	01213823          	sd	s2,16(sp)
   109d8:	01313423          	sd	s3,8(sp)
   109dc:	00000913          	li	s2,0
   109e0:	20000993          	li	s3,512
   109e4:	012587b3          	add	a5,a1,s2
   109e8:	0007b403          	ld	s0,0(a5)
   109ec:	00040e63          	beqz	s0,10a08 <_reclaim_reent+0x58>
   109f0:	00040593          	mv	a1,s0
   109f4:	00043403          	ld	s0,0(s0)
   109f8:	00048513          	mv	a0,s1
   109fc:	5b0000ef          	jal	10fac <_free_r>
   10a00:	fe0418e3          	bnez	s0,109f0 <_reclaim_reent+0x40>
   10a04:	0684b583          	ld	a1,104(s1)
   10a08:	00890913          	addi	s2,s2,8
   10a0c:	fd391ce3          	bne	s2,s3,109e4 <_reclaim_reent+0x34>
   10a10:	00048513          	mv	a0,s1
   10a14:	598000ef          	jal	10fac <_free_r>
   10a18:	01013903          	ld	s2,16(sp)
   10a1c:	00813983          	ld	s3,8(sp)
   10a20:	0504b583          	ld	a1,80(s1)
   10a24:	00058663          	beqz	a1,10a30 <_reclaim_reent+0x80>
   10a28:	00048513          	mv	a0,s1
   10a2c:	580000ef          	jal	10fac <_free_r>
   10a30:	0604b403          	ld	s0,96(s1)
   10a34:	00040c63          	beqz	s0,10a4c <_reclaim_reent+0x9c>
   10a38:	00040593          	mv	a1,s0
   10a3c:	00043403          	ld	s0,0(s0)
   10a40:	00048513          	mv	a0,s1
   10a44:	568000ef          	jal	10fac <_free_r>
   10a48:	fe0418e3          	bnez	s0,10a38 <_reclaim_reent+0x88>
   10a4c:	0784b583          	ld	a1,120(s1)
   10a50:	00058663          	beqz	a1,10a5c <_reclaim_reent+0xac>
   10a54:	00048513          	mv	a0,s1
   10a58:	554000ef          	jal	10fac <_free_r>
   10a5c:	0484b783          	ld	a5,72(s1)
   10a60:	00078e63          	beqz	a5,10a7c <_reclaim_reent+0xcc>
   10a64:	02013403          	ld	s0,32(sp)
   10a68:	02813083          	ld	ra,40(sp)
   10a6c:	00048513          	mv	a0,s1
   10a70:	01813483          	ld	s1,24(sp)
   10a74:	03010113          	addi	sp,sp,48
   10a78:	00078067          	jr	a5
   10a7c:	02813083          	ld	ra,40(sp)
   10a80:	02013403          	ld	s0,32(sp)
   10a84:	01813483          	ld	s1,24(sp)
   10a88:	03010113          	addi	sp,sp,48
   10a8c:	00008067          	ret
   10a90:	00008067          	ret

0000000000010a94 <_lseek_r>:
   10a94:	fe010113          	addi	sp,sp,-32
   10a98:	00058793          	mv	a5,a1
   10a9c:	00813823          	sd	s0,16(sp)
   10aa0:	00913423          	sd	s1,8(sp)
   10aa4:	00060593          	mv	a1,a2
   10aa8:	00050493          	mv	s1,a0
   10aac:	00068613          	mv	a2,a3
   10ab0:	00078513          	mv	a0,a5
   10ab4:	00113c23          	sd	ra,24(sp)
   10ab8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10abc:	708010ef          	jal	121c4 <_lseek>
   10ac0:	fff00793          	li	a5,-1
   10ac4:	00f50c63          	beq	a0,a5,10adc <_lseek_r+0x48>
   10ac8:	01813083          	ld	ra,24(sp)
   10acc:	01013403          	ld	s0,16(sp)
   10ad0:	00813483          	ld	s1,8(sp)
   10ad4:	02010113          	addi	sp,sp,32
   10ad8:	00008067          	ret
   10adc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10ae0:	fe0784e3          	beqz	a5,10ac8 <_lseek_r+0x34>
   10ae4:	01813083          	ld	ra,24(sp)
   10ae8:	01013403          	ld	s0,16(sp)
   10aec:	00f4a023          	sw	a5,0(s1)
   10af0:	00813483          	ld	s1,8(sp)
   10af4:	02010113          	addi	sp,sp,32
   10af8:	00008067          	ret

0000000000010afc <_read_r>:
   10afc:	fe010113          	addi	sp,sp,-32
   10b00:	00058793          	mv	a5,a1
   10b04:	00813823          	sd	s0,16(sp)
   10b08:	00913423          	sd	s1,8(sp)
   10b0c:	00060593          	mv	a1,a2
   10b10:	00050493          	mv	s1,a0
   10b14:	00068613          	mv	a2,a3
   10b18:	00078513          	mv	a0,a5
   10b1c:	00113c23          	sd	ra,24(sp)
   10b20:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b24:	6e0010ef          	jal	12204 <_read>
   10b28:	fff00793          	li	a5,-1
   10b2c:	00f50c63          	beq	a0,a5,10b44 <_read_r+0x48>
   10b30:	01813083          	ld	ra,24(sp)
   10b34:	01013403          	ld	s0,16(sp)
   10b38:	00813483          	ld	s1,8(sp)
   10b3c:	02010113          	addi	sp,sp,32
   10b40:	00008067          	ret
   10b44:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b48:	fe0784e3          	beqz	a5,10b30 <_read_r+0x34>
   10b4c:	01813083          	ld	ra,24(sp)
   10b50:	01013403          	ld	s0,16(sp)
   10b54:	00f4a023          	sw	a5,0(s1)
   10b58:	00813483          	ld	s1,8(sp)
   10b5c:	02010113          	addi	sp,sp,32
   10b60:	00008067          	ret

0000000000010b64 <_write_r>:
   10b64:	fe010113          	addi	sp,sp,-32
   10b68:	00058793          	mv	a5,a1
   10b6c:	00813823          	sd	s0,16(sp)
   10b70:	00913423          	sd	s1,8(sp)
   10b74:	00060593          	mv	a1,a2
   10b78:	00050493          	mv	s1,a0
   10b7c:	00068613          	mv	a2,a3
   10b80:	00078513          	mv	a0,a5
   10b84:	00113c23          	sd	ra,24(sp)
   10b88:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b8c:	730010ef          	jal	122bc <_write>
   10b90:	fff00793          	li	a5,-1
   10b94:	00f50c63          	beq	a0,a5,10bac <_write_r+0x48>
   10b98:	01813083          	ld	ra,24(sp)
   10b9c:	01013403          	ld	s0,16(sp)
   10ba0:	00813483          	ld	s1,8(sp)
   10ba4:	02010113          	addi	sp,sp,32
   10ba8:	00008067          	ret
   10bac:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bb0:	fe0784e3          	beqz	a5,10b98 <_write_r+0x34>
   10bb4:	01813083          	ld	ra,24(sp)
   10bb8:	01013403          	ld	s0,16(sp)
   10bbc:	00f4a023          	sw	a5,0(s1)
   10bc0:	00813483          	ld	s1,8(sp)
   10bc4:	02010113          	addi	sp,sp,32
   10bc8:	00008067          	ret

0000000000010bcc <__libc_init_array>:
   10bcc:	fe010113          	addi	sp,sp,-32
   10bd0:	00813823          	sd	s0,16(sp)
   10bd4:	01213023          	sd	s2,0(sp)
   10bd8:	00013437          	lui	s0,0x13
   10bdc:	00013937          	lui	s2,0x13
   10be0:	00113c23          	sd	ra,24(sp)
   10be4:	00913423          	sd	s1,8(sp)
   10be8:	00090913          	mv	s2,s2
   10bec:	00040413          	mv	s0,s0
   10bf0:	02890263          	beq	s2,s0,10c14 <__libc_init_array+0x48>
   10bf4:	40890933          	sub	s2,s2,s0
   10bf8:	40395913          	srai	s2,s2,0x3
   10bfc:	00000493          	li	s1,0
   10c00:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c04:	00148493          	addi	s1,s1,1
   10c08:	00840413          	addi	s0,s0,8
   10c0c:	000780e7          	jalr	a5
   10c10:	ff24e8e3          	bltu	s1,s2,10c00 <__libc_init_array+0x34>
   10c14:	00013937          	lui	s2,0x13
   10c18:	00013437          	lui	s0,0x13
   10c1c:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10c20:	00040413          	mv	s0,s0
   10c24:	02890263          	beq	s2,s0,10c48 <__libc_init_array+0x7c>
   10c28:	40890933          	sub	s2,s2,s0
   10c2c:	40395913          	srai	s2,s2,0x3
   10c30:	00000493          	li	s1,0
   10c34:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c38:	00148493          	addi	s1,s1,1
   10c3c:	00840413          	addi	s0,s0,8
   10c40:	000780e7          	jalr	a5
   10c44:	ff24e8e3          	bltu	s1,s2,10c34 <__libc_init_array+0x68>
   10c48:	01813083          	ld	ra,24(sp)
   10c4c:	01013403          	ld	s0,16(sp)
   10c50:	00813483          	ld	s1,8(sp)
   10c54:	00013903          	ld	s2,0(sp)
   10c58:	02010113          	addi	sp,sp,32
   10c5c:	00008067          	ret

0000000000010c60 <memset>:
   10c60:	00f00313          	li	t1,15
   10c64:	00050713          	mv	a4,a0
   10c68:	02c37a63          	bgeu	t1,a2,10c9c <memset+0x3c>
   10c6c:	00f77793          	andi	a5,a4,15
   10c70:	0a079063          	bnez	a5,10d10 <memset+0xb0>
   10c74:	06059e63          	bnez	a1,10cf0 <memset+0x90>
   10c78:	ff067693          	andi	a3,a2,-16
   10c7c:	00f67613          	andi	a2,a2,15
   10c80:	00e686b3          	add	a3,a3,a4
   10c84:	00b73023          	sd	a1,0(a4)
   10c88:	00b73423          	sd	a1,8(a4)
   10c8c:	01070713          	addi	a4,a4,16
   10c90:	fed76ae3          	bltu	a4,a3,10c84 <memset+0x24>
   10c94:	00061463          	bnez	a2,10c9c <memset+0x3c>
   10c98:	00008067          	ret
   10c9c:	40c306b3          	sub	a3,t1,a2
   10ca0:	00269693          	slli	a3,a3,0x2
   10ca4:	00000297          	auipc	t0,0x0
   10ca8:	005686b3          	add	a3,a3,t0
   10cac:	00c68067          	jr	12(a3)
   10cb0:	00b70723          	sb	a1,14(a4)
   10cb4:	00b706a3          	sb	a1,13(a4)
   10cb8:	00b70623          	sb	a1,12(a4)
   10cbc:	00b705a3          	sb	a1,11(a4)
   10cc0:	00b70523          	sb	a1,10(a4)
   10cc4:	00b704a3          	sb	a1,9(a4)
   10cc8:	00b70423          	sb	a1,8(a4)
   10ccc:	00b703a3          	sb	a1,7(a4)
   10cd0:	00b70323          	sb	a1,6(a4)
   10cd4:	00b702a3          	sb	a1,5(a4)
   10cd8:	00b70223          	sb	a1,4(a4)
   10cdc:	00b701a3          	sb	a1,3(a4)
   10ce0:	00b70123          	sb	a1,2(a4)
   10ce4:	00b700a3          	sb	a1,1(a4)
   10ce8:	00b70023          	sb	a1,0(a4)
   10cec:	00008067          	ret
   10cf0:	0ff5f593          	zext.b	a1,a1
   10cf4:	00859693          	slli	a3,a1,0x8
   10cf8:	00d5e5b3          	or	a1,a1,a3
   10cfc:	01059693          	slli	a3,a1,0x10
   10d00:	00d5e5b3          	or	a1,a1,a3
   10d04:	02059693          	slli	a3,a1,0x20
   10d08:	00d5e5b3          	or	a1,a1,a3
   10d0c:	f6dff06f          	j	10c78 <memset+0x18>
   10d10:	00279693          	slli	a3,a5,0x2
   10d14:	00000297          	auipc	t0,0x0
   10d18:	005686b3          	add	a3,a3,t0
   10d1c:	00008293          	mv	t0,ra
   10d20:	f98680e7          	jalr	-104(a3)
   10d24:	00028093          	mv	ra,t0
   10d28:	ff078793          	addi	a5,a5,-16
   10d2c:	40f70733          	sub	a4,a4,a5
   10d30:	00f60633          	add	a2,a2,a5
   10d34:	f6c374e3          	bgeu	t1,a2,10c9c <memset+0x3c>
   10d38:	f3dff06f          	j	10c74 <memset+0x14>

0000000000010d3c <__call_exitprocs>:
   10d3c:	fb010113          	addi	sp,sp,-80
   10d40:	03413023          	sd	s4,32(sp)
   10d44:	03213823          	sd	s2,48(sp)
   10d48:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10d4c:	04113423          	sd	ra,72(sp)
   10d50:	06090e63          	beqz	s2,10dcc <__call_exitprocs+0x90>
   10d54:	03313423          	sd	s3,40(sp)
   10d58:	01513c23          	sd	s5,24(sp)
   10d5c:	01613823          	sd	s6,16(sp)
   10d60:	01713423          	sd	s7,8(sp)
   10d64:	04813023          	sd	s0,64(sp)
   10d68:	02913c23          	sd	s1,56(sp)
   10d6c:	01813023          	sd	s8,0(sp)
   10d70:	00050b13          	mv	s6,a0
   10d74:	00058b93          	mv	s7,a1
   10d78:	fff00993          	li	s3,-1
   10d7c:	00100a93          	li	s5,1
   10d80:	00892403          	lw	s0,8(s2)
   10d84:	fff4041b          	addiw	s0,s0,-1
   10d88:	02044463          	bltz	s0,10db0 <__call_exitprocs+0x74>
   10d8c:	01090493          	addi	s1,s2,16
   10d90:	00341793          	slli	a5,s0,0x3
   10d94:	00f484b3          	add	s1,s1,a5
   10d98:	040b8463          	beqz	s7,10de0 <__call_exitprocs+0xa4>
   10d9c:	2004b783          	ld	a5,512(s1)
   10da0:	05778063          	beq	a5,s7,10de0 <__call_exitprocs+0xa4>
   10da4:	fff4041b          	addiw	s0,s0,-1
   10da8:	ff848493          	addi	s1,s1,-8
   10dac:	ff3418e3          	bne	s0,s3,10d9c <__call_exitprocs+0x60>
   10db0:	04013403          	ld	s0,64(sp)
   10db4:	03813483          	ld	s1,56(sp)
   10db8:	02813983          	ld	s3,40(sp)
   10dbc:	01813a83          	ld	s5,24(sp)
   10dc0:	01013b03          	ld	s6,16(sp)
   10dc4:	00813b83          	ld	s7,8(sp)
   10dc8:	00013c03          	ld	s8,0(sp)
   10dcc:	04813083          	ld	ra,72(sp)
   10dd0:	03013903          	ld	s2,48(sp)
   10dd4:	02013a03          	ld	s4,32(sp)
   10dd8:	05010113          	addi	sp,sp,80
   10ddc:	00008067          	ret
   10de0:	00892783          	lw	a5,8(s2)
   10de4:	0004b683          	ld	a3,0(s1)
   10de8:	fff7879b          	addiw	a5,a5,-1
   10dec:	06878a63          	beq	a5,s0,10e60 <__call_exitprocs+0x124>
   10df0:	0004b023          	sd	zero,0(s1)
   10df4:	02068663          	beqz	a3,10e20 <__call_exitprocs+0xe4>
   10df8:	31092783          	lw	a5,784(s2)
   10dfc:	008a973b          	sllw	a4,s5,s0
   10e00:	00892c03          	lw	s8,8(s2)
   10e04:	00e7f7b3          	and	a5,a5,a4
   10e08:	02079463          	bnez	a5,10e30 <__call_exitprocs+0xf4>
   10e0c:	000680e7          	jalr	a3
   10e10:	00892703          	lw	a4,8(s2)
   10e14:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e18:	03871e63          	bne	a4,s8,10e54 <__call_exitprocs+0x118>
   10e1c:	03279c63          	bne	a5,s2,10e54 <__call_exitprocs+0x118>
   10e20:	fff4041b          	addiw	s0,s0,-1
   10e24:	ff848493          	addi	s1,s1,-8
   10e28:	f73418e3          	bne	s0,s3,10d98 <__call_exitprocs+0x5c>
   10e2c:	f85ff06f          	j	10db0 <__call_exitprocs+0x74>
   10e30:	31492783          	lw	a5,788(s2)
   10e34:	1004b583          	ld	a1,256(s1)
   10e38:	00f77733          	and	a4,a4,a5
   10e3c:	02071663          	bnez	a4,10e68 <__call_exitprocs+0x12c>
   10e40:	000b0513          	mv	a0,s6
   10e44:	000680e7          	jalr	a3
   10e48:	00892703          	lw	a4,8(s2)
   10e4c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e50:	fd8706e3          	beq	a4,s8,10e1c <__call_exitprocs+0xe0>
   10e54:	f4078ee3          	beqz	a5,10db0 <__call_exitprocs+0x74>
   10e58:	00078913          	mv	s2,a5
   10e5c:	f25ff06f          	j	10d80 <__call_exitprocs+0x44>
   10e60:	00892423          	sw	s0,8(s2)
   10e64:	f91ff06f          	j	10df4 <__call_exitprocs+0xb8>
   10e68:	00058513          	mv	a0,a1
   10e6c:	000680e7          	jalr	a3
   10e70:	fa1ff06f          	j	10e10 <__call_exitprocs+0xd4>

0000000000010e74 <atexit>:
   10e74:	00050593          	mv	a1,a0
   10e78:	00000693          	li	a3,0
   10e7c:	00000613          	li	a2,0
   10e80:	00000513          	li	a0,0
   10e84:	2340106f          	j	120b8 <__register_exitproc>

0000000000010e88 <_malloc_trim_r>:
   10e88:	fd010113          	addi	sp,sp,-48
   10e8c:	01213823          	sd	s2,16(sp)
   10e90:	00013937          	lui	s2,0x13
   10e94:	02813023          	sd	s0,32(sp)
   10e98:	00913c23          	sd	s1,24(sp)
   10e9c:	01313423          	sd	s3,8(sp)
   10ea0:	00058413          	mv	s0,a1
   10ea4:	02113423          	sd	ra,40(sp)
   10ea8:	00050993          	mv	s3,a0
   10eac:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10eb0:	4e5000ef          	jal	11b94 <__malloc_lock>
   10eb4:	01093783          	ld	a5,16(s2)
   10eb8:	00001737          	lui	a4,0x1
   10ebc:	0087b483          	ld	s1,8(a5)
   10ec0:	ffc4f493          	andi	s1,s1,-4
   10ec4:	7ff48793          	addi	a5,s1,2047
   10ec8:	7e078793          	addi	a5,a5,2016
   10ecc:	40878433          	sub	s0,a5,s0
   10ed0:	00c45413          	srli	s0,s0,0xc
   10ed4:	fff40413          	addi	s0,s0,-1
   10ed8:	00c41413          	slli	s0,s0,0xc
   10edc:	00e44e63          	blt	s0,a4,10ef8 <_malloc_trim_r+0x70>
   10ee0:	00000593          	li	a1,0
   10ee4:	00098513          	mv	a0,s3
   10ee8:	118010ef          	jal	12000 <_sbrk_r>
   10eec:	01093783          	ld	a5,16(s2)
   10ef0:	009787b3          	add	a5,a5,s1
   10ef4:	02f50663          	beq	a0,a5,10f20 <_malloc_trim_r+0x98>
   10ef8:	00098513          	mv	a0,s3
   10efc:	49d000ef          	jal	11b98 <__malloc_unlock>
   10f00:	02813083          	ld	ra,40(sp)
   10f04:	02013403          	ld	s0,32(sp)
   10f08:	01813483          	ld	s1,24(sp)
   10f0c:	01013903          	ld	s2,16(sp)
   10f10:	00813983          	ld	s3,8(sp)
   10f14:	00000513          	li	a0,0
   10f18:	03010113          	addi	sp,sp,48
   10f1c:	00008067          	ret
   10f20:	408005b3          	neg	a1,s0
   10f24:	00098513          	mv	a0,s3
   10f28:	0d8010ef          	jal	12000 <_sbrk_r>
   10f2c:	fff00793          	li	a5,-1
   10f30:	04f50463          	beq	a0,a5,10f78 <_malloc_trim_r+0xf0>
   10f34:	01093683          	ld	a3,16(s2)
   10f38:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f3c:	408484b3          	sub	s1,s1,s0
   10f40:	0014e493          	ori	s1,s1,1
   10f44:	00098513          	mv	a0,s3
   10f48:	408787bb          	subw	a5,a5,s0
   10f4c:	0096b423          	sd	s1,8(a3)
   10f50:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f54:	445000ef          	jal	11b98 <__malloc_unlock>
   10f58:	02813083          	ld	ra,40(sp)
   10f5c:	02013403          	ld	s0,32(sp)
   10f60:	01813483          	ld	s1,24(sp)
   10f64:	01013903          	ld	s2,16(sp)
   10f68:	00813983          	ld	s3,8(sp)
   10f6c:	00100513          	li	a0,1
   10f70:	03010113          	addi	sp,sp,48
   10f74:	00008067          	ret
   10f78:	00000593          	li	a1,0
   10f7c:	00098513          	mv	a0,s3
   10f80:	080010ef          	jal	12000 <_sbrk_r>
   10f84:	01093703          	ld	a4,16(s2)
   10f88:	01f00693          	li	a3,31
   10f8c:	40e507b3          	sub	a5,a0,a4
   10f90:	f6f6d4e3          	bge	a3,a5,10ef8 <_malloc_trim_r+0x70>
   10f94:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10f98:	0017e793          	ori	a5,a5,1
   10f9c:	40c50533          	sub	a0,a0,a2
   10fa0:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10fa4:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10fa8:	f51ff06f          	j	10ef8 <_malloc_trim_r+0x70>

0000000000010fac <_free_r>:
   10fac:	12058863          	beqz	a1,110dc <_free_r+0x130>
   10fb0:	fe010113          	addi	sp,sp,-32
   10fb4:	00813823          	sd	s0,16(sp)
   10fb8:	00b13423          	sd	a1,8(sp)
   10fbc:	00050413          	mv	s0,a0
   10fc0:	00113c23          	sd	ra,24(sp)
   10fc4:	3d1000ef          	jal	11b94 <__malloc_lock>
   10fc8:	00813583          	ld	a1,8(sp)
   10fcc:	00013837          	lui	a6,0x13
   10fd0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10fd4:	ff85b503          	ld	a0,-8(a1)
   10fd8:	ff058713          	addi	a4,a1,-16
   10fdc:	01083883          	ld	a7,16(a6)
   10fe0:	ffe57793          	andi	a5,a0,-2
   10fe4:	00f70633          	add	a2,a4,a5
   10fe8:	00863683          	ld	a3,8(a2)
   10fec:	00157313          	andi	t1,a0,1
   10ff0:	ffc6f693          	andi	a3,a3,-4
   10ff4:	18c88e63          	beq	a7,a2,11190 <_free_r+0x1e4>
   10ff8:	00d63423          	sd	a3,8(a2)
   10ffc:	00d608b3          	add	a7,a2,a3
   11000:	0088b883          	ld	a7,8(a7)
   11004:	0018f893          	andi	a7,a7,1
   11008:	08031e63          	bnez	t1,110a4 <_free_r+0xf8>
   1100c:	ff05b303          	ld	t1,-16(a1)
   11010:	000135b7          	lui	a1,0x13
   11014:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11018:	40670733          	sub	a4,a4,t1
   1101c:	01073503          	ld	a0,16(a4)
   11020:	006787b3          	add	a5,a5,t1
   11024:	14b50063          	beq	a0,a1,11164 <_free_r+0x1b8>
   11028:	01873303          	ld	t1,24(a4)
   1102c:	00653c23          	sd	t1,24(a0)
   11030:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11034:	1a088263          	beqz	a7,111d8 <_free_r+0x22c>
   11038:	0017e693          	ori	a3,a5,1
   1103c:	00d73423          	sd	a3,8(a4)
   11040:	00f63023          	sd	a5,0(a2)
   11044:	1ff00693          	li	a3,511
   11048:	0af6e663          	bltu	a3,a5,110f4 <_free_r+0x148>
   1104c:	0037d793          	srli	a5,a5,0x3
   11050:	00179693          	slli	a3,a5,0x1
   11054:	0026869b          	addiw	a3,a3,2
   11058:	00369693          	slli	a3,a3,0x3
   1105c:	00883503          	ld	a0,8(a6)
   11060:	00d806b3          	add	a3,a6,a3
   11064:	0006b583          	ld	a1,0(a3)
   11068:	4027d61b          	sraiw	a2,a5,0x2
   1106c:	00100793          	li	a5,1
   11070:	00c797b3          	sll	a5,a5,a2
   11074:	00a7e7b3          	or	a5,a5,a0
   11078:	ff068613          	addi	a2,a3,-16
   1107c:	00b73823          	sd	a1,16(a4)
   11080:	00c73c23          	sd	a2,24(a4)
   11084:	00f83423          	sd	a5,8(a6)
   11088:	00e6b023          	sd	a4,0(a3)
   1108c:	00e5bc23          	sd	a4,24(a1)
   11090:	00040513          	mv	a0,s0
   11094:	01013403          	ld	s0,16(sp)
   11098:	01813083          	ld	ra,24(sp)
   1109c:	02010113          	addi	sp,sp,32
   110a0:	2f90006f          	j	11b98 <__malloc_unlock>
   110a4:	02089e63          	bnez	a7,110e0 <_free_r+0x134>
   110a8:	000135b7          	lui	a1,0x13
   110ac:	00d787b3          	add	a5,a5,a3
   110b0:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   110b4:	01063683          	ld	a3,16(a2)
   110b8:	0017e893          	ori	a7,a5,1
   110bc:	00f70533          	add	a0,a4,a5
   110c0:	16b68663          	beq	a3,a1,1122c <_free_r+0x280>
   110c4:	01863603          	ld	a2,24(a2)
   110c8:	00c6bc23          	sd	a2,24(a3)
   110cc:	00d63823          	sd	a3,16(a2)
   110d0:	01173423          	sd	a7,8(a4)
   110d4:	00f53023          	sd	a5,0(a0)
   110d8:	f6dff06f          	j	11044 <_free_r+0x98>
   110dc:	00008067          	ret
   110e0:	00156513          	ori	a0,a0,1
   110e4:	fea5bc23          	sd	a0,-8(a1)
   110e8:	00f63023          	sd	a5,0(a2)
   110ec:	1ff00693          	li	a3,511
   110f0:	f4f6fee3          	bgeu	a3,a5,1104c <_free_r+0xa0>
   110f4:	0097d693          	srli	a3,a5,0x9
   110f8:	00400613          	li	a2,4
   110fc:	0ed66263          	bltu	a2,a3,111e0 <_free_r+0x234>
   11100:	0067d693          	srli	a3,a5,0x6
   11104:	00169593          	slli	a1,a3,0x1
   11108:	0725859b          	addiw	a1,a1,114
   1110c:	00359593          	slli	a1,a1,0x3
   11110:	0386861b          	addiw	a2,a3,56
   11114:	00b805b3          	add	a1,a6,a1
   11118:	0005b683          	ld	a3,0(a1)
   1111c:	ff058593          	addi	a1,a1,-16
   11120:	00d59863          	bne	a1,a3,11130 <_free_r+0x184>
   11124:	1240006f          	j	11248 <_free_r+0x29c>
   11128:	0106b683          	ld	a3,16(a3)
   1112c:	00d58863          	beq	a1,a3,1113c <_free_r+0x190>
   11130:	0086b603          	ld	a2,8(a3)
   11134:	ffc67613          	andi	a2,a2,-4
   11138:	fec7e8e3          	bltu	a5,a2,11128 <_free_r+0x17c>
   1113c:	0186b583          	ld	a1,24(a3)
   11140:	00b73c23          	sd	a1,24(a4)
   11144:	00d73823          	sd	a3,16(a4)
   11148:	00040513          	mv	a0,s0
   1114c:	01013403          	ld	s0,16(sp)
   11150:	01813083          	ld	ra,24(sp)
   11154:	00e5b823          	sd	a4,16(a1)
   11158:	00e6bc23          	sd	a4,24(a3)
   1115c:	02010113          	addi	sp,sp,32
   11160:	2390006f          	j	11b98 <__malloc_unlock>
   11164:	0a089263          	bnez	a7,11208 <_free_r+0x25c>
   11168:	01863583          	ld	a1,24(a2)
   1116c:	01063603          	ld	a2,16(a2)
   11170:	00f686b3          	add	a3,a3,a5
   11174:	0016e793          	ori	a5,a3,1
   11178:	00b63c23          	sd	a1,24(a2)
   1117c:	00c5b823          	sd	a2,16(a1)
   11180:	00f73423          	sd	a5,8(a4)
   11184:	00d70733          	add	a4,a4,a3
   11188:	00d73023          	sd	a3,0(a4)
   1118c:	f05ff06f          	j	11090 <_free_r+0xe4>
   11190:	00d786b3          	add	a3,a5,a3
   11194:	02031063          	bnez	t1,111b4 <_free_r+0x208>
   11198:	ff05b783          	ld	a5,-16(a1)
   1119c:	40f70733          	sub	a4,a4,a5
   111a0:	01073603          	ld	a2,16(a4)
   111a4:	00f686b3          	add	a3,a3,a5
   111a8:	01873783          	ld	a5,24(a4)
   111ac:	00f63c23          	sd	a5,24(a2)
   111b0:	00c7b823          	sd	a2,16(a5)
   111b4:	0016e613          	ori	a2,a3,1
   111b8:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   111bc:	00c73423          	sd	a2,8(a4)
   111c0:	00e83823          	sd	a4,16(a6)
   111c4:	ecf6e6e3          	bltu	a3,a5,11090 <_free_r+0xe4>
   111c8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   111cc:	00040513          	mv	a0,s0
   111d0:	cb9ff0ef          	jal	10e88 <_malloc_trim_r>
   111d4:	ebdff06f          	j	11090 <_free_r+0xe4>
   111d8:	00d787b3          	add	a5,a5,a3
   111dc:	ed9ff06f          	j	110b4 <_free_r+0x108>
   111e0:	01400613          	li	a2,20
   111e4:	02d67a63          	bgeu	a2,a3,11218 <_free_r+0x26c>
   111e8:	05400613          	li	a2,84
   111ec:	06d66c63          	bltu	a2,a3,11264 <_free_r+0x2b8>
   111f0:	00c7d693          	srli	a3,a5,0xc
   111f4:	00169593          	slli	a1,a3,0x1
   111f8:	0de5859b          	addiw	a1,a1,222
   111fc:	00359593          	slli	a1,a1,0x3
   11200:	06e6861b          	addiw	a2,a3,110
   11204:	f11ff06f          	j	11114 <_free_r+0x168>
   11208:	0017e693          	ori	a3,a5,1
   1120c:	00d73423          	sd	a3,8(a4)
   11210:	00f63023          	sd	a5,0(a2)
   11214:	e7dff06f          	j	11090 <_free_r+0xe4>
   11218:	00169593          	slli	a1,a3,0x1
   1121c:	0b85859b          	addiw	a1,a1,184
   11220:	00359593          	slli	a1,a1,0x3
   11224:	05b6861b          	addiw	a2,a3,91
   11228:	eedff06f          	j	11114 <_free_r+0x168>
   1122c:	02e83423          	sd	a4,40(a6)
   11230:	02e83023          	sd	a4,32(a6)
   11234:	00b73c23          	sd	a1,24(a4)
   11238:	00b73823          	sd	a1,16(a4)
   1123c:	01173423          	sd	a7,8(a4)
   11240:	00f53023          	sd	a5,0(a0)
   11244:	e4dff06f          	j	11090 <_free_r+0xe4>
   11248:	00883503          	ld	a0,8(a6)
   1124c:	4026561b          	sraiw	a2,a2,0x2
   11250:	00100793          	li	a5,1
   11254:	00c797b3          	sll	a5,a5,a2
   11258:	00a7e7b3          	or	a5,a5,a0
   1125c:	00f83423          	sd	a5,8(a6)
   11260:	ee1ff06f          	j	11140 <_free_r+0x194>
   11264:	15400613          	li	a2,340
   11268:	00d66e63          	bltu	a2,a3,11284 <_free_r+0x2d8>
   1126c:	00f7d693          	srli	a3,a5,0xf
   11270:	00169593          	slli	a1,a3,0x1
   11274:	0f05859b          	addiw	a1,a1,240
   11278:	00359593          	slli	a1,a1,0x3
   1127c:	0776861b          	addiw	a2,a3,119
   11280:	e95ff06f          	j	11114 <_free_r+0x168>
   11284:	55400613          	li	a2,1364
   11288:	00d66e63          	bltu	a2,a3,112a4 <_free_r+0x2f8>
   1128c:	0127d693          	srli	a3,a5,0x12
   11290:	00169593          	slli	a1,a3,0x1
   11294:	0fa5859b          	addiw	a1,a1,250
   11298:	00359593          	slli	a1,a1,0x3
   1129c:	07c6861b          	addiw	a2,a3,124
   112a0:	e75ff06f          	j	11114 <_free_r+0x168>
   112a4:	7f000593          	li	a1,2032
   112a8:	07e00613          	li	a2,126
   112ac:	e69ff06f          	j	11114 <_free_r+0x168>

00000000000112b0 <_malloc_r>:
   112b0:	fa010113          	addi	sp,sp,-96
   112b4:	04813823          	sd	s0,80(sp)
   112b8:	04113c23          	sd	ra,88(sp)
   112bc:	01758713          	addi	a4,a1,23
   112c0:	02e00793          	li	a5,46
   112c4:	00050413          	mv	s0,a0
   112c8:	08e7ee63          	bltu	a5,a4,11364 <_malloc_r+0xb4>
   112cc:	02000713          	li	a4,32
   112d0:	06b76c63          	bltu	a4,a1,11348 <_malloc_r+0x98>
   112d4:	0c1000ef          	jal	11b94 <__malloc_lock>
   112d8:	02000713          	li	a4,32
   112dc:	05000693          	li	a3,80
   112e0:	00400893          	li	a7,4
   112e4:	00013837          	lui	a6,0x13
   112e8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112ec:	00d806b3          	add	a3,a6,a3
   112f0:	0086b783          	ld	a5,8(a3)
   112f4:	ff068613          	addi	a2,a3,-16
   112f8:	48c78063          	beq	a5,a2,11778 <_malloc_r+0x4c8>
   112fc:	0087b703          	ld	a4,8(a5)
   11300:	0187b603          	ld	a2,24(a5)
   11304:	0107b583          	ld	a1,16(a5)
   11308:	ffc77713          	andi	a4,a4,-4
   1130c:	00e78733          	add	a4,a5,a4
   11310:	00873683          	ld	a3,8(a4)
   11314:	00c5bc23          	sd	a2,24(a1)
   11318:	00b63823          	sd	a1,16(a2)
   1131c:	0016e693          	ori	a3,a3,1
   11320:	00040513          	mv	a0,s0
   11324:	00d73423          	sd	a3,8(a4)
   11328:	00f13423          	sd	a5,8(sp)
   1132c:	06d000ef          	jal	11b98 <__malloc_unlock>
   11330:	00813783          	ld	a5,8(sp)
   11334:	05813083          	ld	ra,88(sp)
   11338:	05013403          	ld	s0,80(sp)
   1133c:	01078513          	addi	a0,a5,16
   11340:	06010113          	addi	sp,sp,96
   11344:	00008067          	ret
   11348:	00c00793          	li	a5,12
   1134c:	00f42023          	sw	a5,0(s0)
   11350:	00000513          	li	a0,0
   11354:	05813083          	ld	ra,88(sp)
   11358:	05013403          	ld	s0,80(sp)
   1135c:	06010113          	addi	sp,sp,96
   11360:	00008067          	ret
   11364:	00100793          	li	a5,1
   11368:	ff077713          	andi	a4,a4,-16
   1136c:	01f79793          	slli	a5,a5,0x1f
   11370:	fcf77ce3          	bgeu	a4,a5,11348 <_malloc_r+0x98>
   11374:	fcb76ae3          	bltu	a4,a1,11348 <_malloc_r+0x98>
   11378:	00e13423          	sd	a4,8(sp)
   1137c:	019000ef          	jal	11b94 <__malloc_lock>
   11380:	00813703          	ld	a4,8(sp)
   11384:	1f700793          	li	a5,503
   11388:	4ee7fa63          	bgeu	a5,a4,1187c <_malloc_r+0x5cc>
   1138c:	00975793          	srli	a5,a4,0x9
   11390:	18078a63          	beqz	a5,11524 <_malloc_r+0x274>
   11394:	00400693          	li	a3,4
   11398:	44f6ea63          	bltu	a3,a5,117ec <_malloc_r+0x53c>
   1139c:	00675793          	srli	a5,a4,0x6
   113a0:	0397889b          	addiw	a7,a5,57
   113a4:	0018951b          	slliw	a0,a7,0x1
   113a8:	03878e1b          	addiw	t3,a5,56
   113ac:	00351513          	slli	a0,a0,0x3
   113b0:	00013837          	lui	a6,0x13
   113b4:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   113b8:	00a80533          	add	a0,a6,a0
   113bc:	00853783          	ld	a5,8(a0)
   113c0:	ff050513          	addi	a0,a0,-16
   113c4:	02f50863          	beq	a0,a5,113f4 <_malloc_r+0x144>
   113c8:	01f00313          	li	t1,31
   113cc:	0140006f          	j	113e0 <_malloc_r+0x130>
   113d0:	0187b583          	ld	a1,24(a5)
   113d4:	36065263          	bgez	a2,11738 <_malloc_r+0x488>
   113d8:	00b50e63          	beq	a0,a1,113f4 <_malloc_r+0x144>
   113dc:	00058793          	mv	a5,a1
   113e0:	0087b683          	ld	a3,8(a5)
   113e4:	ffc6f693          	andi	a3,a3,-4
   113e8:	40e68633          	sub	a2,a3,a4
   113ec:	fec352e3          	bge	t1,a2,113d0 <_malloc_r+0x120>
   113f0:	000e0893          	mv	a7,t3
   113f4:	02083783          	ld	a5,32(a6)
   113f8:	00013e37          	lui	t3,0x13
   113fc:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11400:	2fc78a63          	beq	a5,t3,116f4 <_malloc_r+0x444>
   11404:	0087b303          	ld	t1,8(a5)
   11408:	01f00613          	li	a2,31
   1140c:	ffc37313          	andi	t1,t1,-4
   11410:	40e306b3          	sub	a3,t1,a4
   11414:	4ad64463          	blt	a2,a3,118bc <_malloc_r+0x60c>
   11418:	03c83423          	sd	t3,40(a6)
   1141c:	03c83023          	sd	t3,32(a6)
   11420:	4606da63          	bgez	a3,11894 <_malloc_r+0x5e4>
   11424:	1ff00693          	li	a3,511
   11428:	00883583          	ld	a1,8(a6)
   1142c:	3466ee63          	bltu	a3,t1,11788 <_malloc_r+0x4d8>
   11430:	00335313          	srli	t1,t1,0x3
   11434:	00131693          	slli	a3,t1,0x1
   11438:	0026869b          	addiw	a3,a3,2
   1143c:	00369693          	slli	a3,a3,0x3
   11440:	00d806b3          	add	a3,a6,a3
   11444:	0006b503          	ld	a0,0(a3)
   11448:	4023531b          	sraiw	t1,t1,0x2
   1144c:	00100613          	li	a2,1
   11450:	00661633          	sll	a2,a2,t1
   11454:	00c5e5b3          	or	a1,a1,a2
   11458:	ff068613          	addi	a2,a3,-16
   1145c:	00a7b823          	sd	a0,16(a5)
   11460:	00c7bc23          	sd	a2,24(a5)
   11464:	00b83423          	sd	a1,8(a6)
   11468:	00f6b023          	sd	a5,0(a3)
   1146c:	00f53c23          	sd	a5,24(a0)
   11470:	4028d79b          	sraiw	a5,a7,0x2
   11474:	00100513          	li	a0,1
   11478:	00f51533          	sll	a0,a0,a5
   1147c:	0aa5ec63          	bltu	a1,a0,11534 <_malloc_r+0x284>
   11480:	00b577b3          	and	a5,a0,a1
   11484:	02079463          	bnez	a5,114ac <_malloc_r+0x1fc>
   11488:	00151513          	slli	a0,a0,0x1
   1148c:	ffc8f893          	andi	a7,a7,-4
   11490:	00b577b3          	and	a5,a0,a1
   11494:	0048889b          	addiw	a7,a7,4
   11498:	00079a63          	bnez	a5,114ac <_malloc_r+0x1fc>
   1149c:	00151513          	slli	a0,a0,0x1
   114a0:	00b577b3          	and	a5,a0,a1
   114a4:	0048889b          	addiw	a7,a7,4
   114a8:	fe078ae3          	beqz	a5,1149c <_malloc_r+0x1ec>
   114ac:	01f00e93          	li	t4,31
   114b0:	00189f13          	slli	t5,a7,0x1
   114b4:	002f0f1b          	addiw	t5,t5,2
   114b8:	003f1f13          	slli	t5,t5,0x3
   114bc:	ff0f0f13          	addi	t5,t5,-16
   114c0:	01e80f33          	add	t5,a6,t5
   114c4:	000f0313          	mv	t1,t5
   114c8:	01833683          	ld	a3,24(t1)
   114cc:	00088f93          	mv	t6,a7
   114d0:	34d30263          	beq	t1,a3,11814 <_malloc_r+0x564>
   114d4:	0086b603          	ld	a2,8(a3)
   114d8:	00068793          	mv	a5,a3
   114dc:	0186b683          	ld	a3,24(a3)
   114e0:	ffc67613          	andi	a2,a2,-4
   114e4:	40e605b3          	sub	a1,a2,a4
   114e8:	34bec263          	blt	t4,a1,1182c <_malloc_r+0x57c>
   114ec:	fe05c2e3          	bltz	a1,114d0 <_malloc_r+0x220>
   114f0:	00c78633          	add	a2,a5,a2
   114f4:	00863703          	ld	a4,8(a2)
   114f8:	0107b583          	ld	a1,16(a5)
   114fc:	00040513          	mv	a0,s0
   11500:	00176713          	ori	a4,a4,1
   11504:	00e63423          	sd	a4,8(a2)
   11508:	00d5bc23          	sd	a3,24(a1)
   1150c:	00b6b823          	sd	a1,16(a3)
   11510:	00f13423          	sd	a5,8(sp)
   11514:	684000ef          	jal	11b98 <__malloc_unlock>
   11518:	00813783          	ld	a5,8(sp)
   1151c:	01078513          	addi	a0,a5,16
   11520:	e35ff06f          	j	11354 <_malloc_r+0xa4>
   11524:	40000513          	li	a0,1024
   11528:	04000893          	li	a7,64
   1152c:	03f00e13          	li	t3,63
   11530:	e81ff06f          	j	113b0 <_malloc_r+0x100>
   11534:	01083783          	ld	a5,16(a6)
   11538:	0087b683          	ld	a3,8(a5)
   1153c:	ffc6f893          	andi	a7,a3,-4
   11540:	40e88633          	sub	a2,a7,a4
   11544:	00e8e663          	bltu	a7,a4,11550 <_malloc_r+0x2a0>
   11548:	02062693          	slti	a3,a2,32
   1154c:	1a068863          	beqz	a3,116fc <_malloc_r+0x44c>
   11550:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11554:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11558:	fff00693          	li	a3,-1
   1155c:	00b705b3          	add	a1,a4,a1
   11560:	44d60663          	beq	a2,a3,119ac <_malloc_r+0x6fc>
   11564:	000016b7          	lui	a3,0x1
   11568:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   1156c:	00d585b3          	add	a1,a1,a3
   11570:	fffff6b7          	lui	a3,0xfffff
   11574:	00d5f5b3          	and	a1,a1,a3
   11578:	00040513          	mv	a0,s0
   1157c:	03013423          	sd	a6,40(sp)
   11580:	02f13023          	sd	a5,32(sp)
   11584:	00e13c23          	sd	a4,24(sp)
   11588:	01113823          	sd	a7,16(sp)
   1158c:	00b13423          	sd	a1,8(sp)
   11590:	271000ef          	jal	12000 <_sbrk_r>
   11594:	fff00693          	li	a3,-1
   11598:	00813583          	ld	a1,8(sp)
   1159c:	01013883          	ld	a7,16(sp)
   115a0:	01813703          	ld	a4,24(sp)
   115a4:	02013783          	ld	a5,32(sp)
   115a8:	02813803          	ld	a6,40(sp)
   115ac:	00050313          	mv	t1,a0
   115b0:	36d50663          	beq	a0,a3,1191c <_malloc_r+0x66c>
   115b4:	011786b3          	add	a3,a5,a7
   115b8:	36d56063          	bltu	a0,a3,11918 <_malloc_r+0x668>
   115bc:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   115c0:	000e2603          	lw	a2,0(t3)
   115c4:	00b6063b          	addw	a2,a2,a1
   115c8:	00ce2023          	sw	a2,0(t3)
   115cc:	00060513          	mv	a0,a2
   115d0:	4a668c63          	beq	a3,t1,11a88 <_malloc_r+0x7d8>
   115d4:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   115d8:	fff00613          	li	a2,-1
   115dc:	4ccf0463          	beq	t5,a2,11aa4 <_malloc_r+0x7f4>
   115e0:	40d306b3          	sub	a3,t1,a3
   115e4:	00a686bb          	addw	a3,a3,a0
   115e8:	00de2023          	sw	a3,0(t3)
   115ec:	00f37e93          	andi	t4,t1,15
   115f0:	3c0e8e63          	beqz	t4,119cc <_malloc_r+0x71c>
   115f4:	ff037313          	andi	t1,t1,-16
   115f8:	000016b7          	lui	a3,0x1
   115fc:	01030313          	addi	t1,t1,16
   11600:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11604:	00b30633          	add	a2,t1,a1
   11608:	41d685b3          	sub	a1,a3,t4
   1160c:	40c585b3          	sub	a1,a1,a2
   11610:	03459593          	slli	a1,a1,0x34
   11614:	0345d593          	srli	a1,a1,0x34
   11618:	00040513          	mv	a0,s0
   1161c:	05c13023          	sd	t3,64(sp)
   11620:	03013c23          	sd	a6,56(sp)
   11624:	02f13823          	sd	a5,48(sp)
   11628:	02e13423          	sd	a4,40(sp)
   1162c:	03113023          	sd	a7,32(sp)
   11630:	00613c23          	sd	t1,24(sp)
   11634:	01d13823          	sd	t4,16(sp)
   11638:	00c13423          	sd	a2,8(sp)
   1163c:	04b13423          	sd	a1,72(sp)
   11640:	1c1000ef          	jal	12000 <_sbrk_r>
   11644:	00050693          	mv	a3,a0
   11648:	fff00513          	li	a0,-1
   1164c:	00813603          	ld	a2,8(sp)
   11650:	01013e83          	ld	t4,16(sp)
   11654:	01813303          	ld	t1,24(sp)
   11658:	02013883          	ld	a7,32(sp)
   1165c:	02813703          	ld	a4,40(sp)
   11660:	03013783          	ld	a5,48(sp)
   11664:	03813803          	ld	a6,56(sp)
   11668:	04013e03          	ld	t3,64(sp)
   1166c:	48a68663          	beq	a3,a0,11af8 <_malloc_r+0x848>
   11670:	04813583          	ld	a1,72(sp)
   11674:	0005851b          	sext.w	a0,a1
   11678:	000e2603          	lw	a2,0(t3)
   1167c:	406686b3          	sub	a3,a3,t1
   11680:	00b686b3          	add	a3,a3,a1
   11684:	0016e693          	ori	a3,a3,1
   11688:	00683823          	sd	t1,16(a6)
   1168c:	00a6063b          	addw	a2,a2,a0
   11690:	00d33423          	sd	a3,8(t1)
   11694:	00ce2023          	sw	a2,0(t3)
   11698:	03078e63          	beq	a5,a6,116d4 <_malloc_r+0x424>
   1169c:	01f00513          	li	a0,31
   116a0:	41157663          	bgeu	a0,a7,11aac <_malloc_r+0x7fc>
   116a4:	0087b583          	ld	a1,8(a5)
   116a8:	fe888693          	addi	a3,a7,-24
   116ac:	ff06f693          	andi	a3,a3,-16
   116b0:	0015f593          	andi	a1,a1,1
   116b4:	00d5e5b3          	or	a1,a1,a3
   116b8:	00b7b423          	sd	a1,8(a5)
   116bc:	00900893          	li	a7,9
   116c0:	00d785b3          	add	a1,a5,a3
   116c4:	0115b423          	sd	a7,8(a1)
   116c8:	0115b823          	sd	a7,16(a1)
   116cc:	44d56863          	bltu	a0,a3,11b1c <_malloc_r+0x86c>
   116d0:	00833683          	ld	a3,8(t1)
   116d4:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   116d8:	00c5f463          	bgeu	a1,a2,116e0 <_malloc_r+0x430>
   116dc:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   116e0:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   116e4:	00c5f463          	bgeu	a1,a2,116ec <_malloc_r+0x43c>
   116e8:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   116ec:	00030793          	mv	a5,t1
   116f0:	2340006f          	j	11924 <_malloc_r+0x674>
   116f4:	00883583          	ld	a1,8(a6)
   116f8:	d79ff06f          	j	11470 <_malloc_r+0x1c0>
   116fc:	00176693          	ori	a3,a4,1
   11700:	00d7b423          	sd	a3,8(a5)
   11704:	00e78733          	add	a4,a5,a4
   11708:	00166613          	ori	a2,a2,1
   1170c:	00e83823          	sd	a4,16(a6)
   11710:	00040513          	mv	a0,s0
   11714:	00c73423          	sd	a2,8(a4)
   11718:	00f13423          	sd	a5,8(sp)
   1171c:	47c000ef          	jal	11b98 <__malloc_unlock>
   11720:	00813783          	ld	a5,8(sp)
   11724:	05813083          	ld	ra,88(sp)
   11728:	05013403          	ld	s0,80(sp)
   1172c:	01078513          	addi	a0,a5,16
   11730:	06010113          	addi	sp,sp,96
   11734:	00008067          	ret
   11738:	0107b603          	ld	a2,16(a5)
   1173c:	00d786b3          	add	a3,a5,a3
   11740:	0086b703          	ld	a4,8(a3)
   11744:	00b63c23          	sd	a1,24(a2)
   11748:	00c5b823          	sd	a2,16(a1)
   1174c:	00176713          	ori	a4,a4,1
   11750:	00040513          	mv	a0,s0
   11754:	00e6b423          	sd	a4,8(a3)
   11758:	00f13423          	sd	a5,8(sp)
   1175c:	43c000ef          	jal	11b98 <__malloc_unlock>
   11760:	00813783          	ld	a5,8(sp)
   11764:	05813083          	ld	ra,88(sp)
   11768:	05013403          	ld	s0,80(sp)
   1176c:	01078513          	addi	a0,a5,16
   11770:	06010113          	addi	sp,sp,96
   11774:	00008067          	ret
   11778:	0186b783          	ld	a5,24(a3)
   1177c:	0028889b          	addiw	a7,a7,2
   11780:	c6f68ae3          	beq	a3,a5,113f4 <_malloc_r+0x144>
   11784:	b79ff06f          	j	112fc <_malloc_r+0x4c>
   11788:	00935693          	srli	a3,t1,0x9
   1178c:	00400613          	li	a2,4
   11790:	16d67863          	bgeu	a2,a3,11900 <_malloc_r+0x650>
   11794:	01400613          	li	a2,20
   11798:	28d66e63          	bltu	a2,a3,11a34 <_malloc_r+0x784>
   1179c:	00169513          	slli	a0,a3,0x1
   117a0:	0b85051b          	addiw	a0,a0,184
   117a4:	00351513          	slli	a0,a0,0x3
   117a8:	05b6861b          	addiw	a2,a3,91
   117ac:	00a80533          	add	a0,a6,a0
   117b0:	00053683          	ld	a3,0(a0)
   117b4:	ff050513          	addi	a0,a0,-16
   117b8:	00d51863          	bne	a0,a3,117c8 <_malloc_r+0x518>
   117bc:	1f80006f          	j	119b4 <_malloc_r+0x704>
   117c0:	0106b683          	ld	a3,16(a3)
   117c4:	00d50863          	beq	a0,a3,117d4 <_malloc_r+0x524>
   117c8:	0086b603          	ld	a2,8(a3)
   117cc:	ffc67613          	andi	a2,a2,-4
   117d0:	fec368e3          	bltu	t1,a2,117c0 <_malloc_r+0x510>
   117d4:	0186b503          	ld	a0,24(a3)
   117d8:	00a7bc23          	sd	a0,24(a5)
   117dc:	00d7b823          	sd	a3,16(a5)
   117e0:	00f53823          	sd	a5,16(a0)
   117e4:	00f6bc23          	sd	a5,24(a3)
   117e8:	c89ff06f          	j	11470 <_malloc_r+0x1c0>
   117ec:	01400693          	li	a3,20
   117f0:	14f6fa63          	bgeu	a3,a5,11944 <_malloc_r+0x694>
   117f4:	05400693          	li	a3,84
   117f8:	24f6ee63          	bltu	a3,a5,11a54 <_malloc_r+0x7a4>
   117fc:	00c75793          	srli	a5,a4,0xc
   11800:	06f7889b          	addiw	a7,a5,111
   11804:	0018951b          	slliw	a0,a7,0x1
   11808:	06e78e1b          	addiw	t3,a5,110
   1180c:	00351513          	slli	a0,a0,0x3
   11810:	ba1ff06f          	j	113b0 <_malloc_r+0x100>
   11814:	001f8f9b          	addiw	t6,t6,1
   11818:	003ff793          	andi	a5,t6,3
   1181c:	01030313          	addi	t1,t1,16
   11820:	14078263          	beqz	a5,11964 <_malloc_r+0x6b4>
   11824:	01833683          	ld	a3,24(t1)
   11828:	ca9ff06f          	j	114d0 <_malloc_r+0x220>
   1182c:	0107b503          	ld	a0,16(a5)
   11830:	00176893          	ori	a7,a4,1
   11834:	0117b423          	sd	a7,8(a5)
   11838:	00d53c23          	sd	a3,24(a0)
   1183c:	00a6b823          	sd	a0,16(a3)
   11840:	00e78733          	add	a4,a5,a4
   11844:	02e83423          	sd	a4,40(a6)
   11848:	02e83023          	sd	a4,32(a6)
   1184c:	0015e693          	ori	a3,a1,1
   11850:	00c78633          	add	a2,a5,a2
   11854:	01c73c23          	sd	t3,24(a4)
   11858:	01c73823          	sd	t3,16(a4)
   1185c:	00d73423          	sd	a3,8(a4)
   11860:	00040513          	mv	a0,s0
   11864:	00b63023          	sd	a1,0(a2)
   11868:	00f13423          	sd	a5,8(sp)
   1186c:	32c000ef          	jal	11b98 <__malloc_unlock>
   11870:	00813783          	ld	a5,8(sp)
   11874:	01078513          	addi	a0,a5,16
   11878:	addff06f          	j	11354 <_malloc_r+0xa4>
   1187c:	00375893          	srli	a7,a4,0x3
   11880:	00189693          	slli	a3,a7,0x1
   11884:	0026869b          	addiw	a3,a3,2
   11888:	00369693          	slli	a3,a3,0x3
   1188c:	0008889b          	sext.w	a7,a7
   11890:	a55ff06f          	j	112e4 <_malloc_r+0x34>
   11894:	00678333          	add	t1,a5,t1
   11898:	00833703          	ld	a4,8(t1)
   1189c:	00040513          	mv	a0,s0
   118a0:	00f13423          	sd	a5,8(sp)
   118a4:	00176713          	ori	a4,a4,1
   118a8:	00e33423          	sd	a4,8(t1)
   118ac:	2ec000ef          	jal	11b98 <__malloc_unlock>
   118b0:	00813783          	ld	a5,8(sp)
   118b4:	01078513          	addi	a0,a5,16
   118b8:	a9dff06f          	j	11354 <_malloc_r+0xa4>
   118bc:	00176613          	ori	a2,a4,1
   118c0:	00c7b423          	sd	a2,8(a5)
   118c4:	00e78733          	add	a4,a5,a4
   118c8:	02e83423          	sd	a4,40(a6)
   118cc:	02e83023          	sd	a4,32(a6)
   118d0:	0016e613          	ori	a2,a3,1
   118d4:	00678333          	add	t1,a5,t1
   118d8:	01c73c23          	sd	t3,24(a4)
   118dc:	01c73823          	sd	t3,16(a4)
   118e0:	00c73423          	sd	a2,8(a4)
   118e4:	00040513          	mv	a0,s0
   118e8:	00d33023          	sd	a3,0(t1)
   118ec:	00f13423          	sd	a5,8(sp)
   118f0:	2a8000ef          	jal	11b98 <__malloc_unlock>
   118f4:	00813783          	ld	a5,8(sp)
   118f8:	01078513          	addi	a0,a5,16
   118fc:	a59ff06f          	j	11354 <_malloc_r+0xa4>
   11900:	00635693          	srli	a3,t1,0x6
   11904:	00169513          	slli	a0,a3,0x1
   11908:	0725051b          	addiw	a0,a0,114
   1190c:	00351513          	slli	a0,a0,0x3
   11910:	0386861b          	addiw	a2,a3,56
   11914:	e99ff06f          	j	117ac <_malloc_r+0x4fc>
   11918:	15078e63          	beq	a5,a6,11a74 <_malloc_r+0x7c4>
   1191c:	01083783          	ld	a5,16(a6)
   11920:	0087b683          	ld	a3,8(a5)
   11924:	ffc6f693          	andi	a3,a3,-4
   11928:	40e68633          	sub	a2,a3,a4
   1192c:	00e6e663          	bltu	a3,a4,11938 <_malloc_r+0x688>
   11930:	02062693          	slti	a3,a2,32
   11934:	dc0684e3          	beqz	a3,116fc <_malloc_r+0x44c>
   11938:	00040513          	mv	a0,s0
   1193c:	25c000ef          	jal	11b98 <__malloc_unlock>
   11940:	a11ff06f          	j	11350 <_malloc_r+0xa0>
   11944:	05c7889b          	addiw	a7,a5,92
   11948:	0018951b          	slliw	a0,a7,0x1
   1194c:	05b78e1b          	addiw	t3,a5,91
   11950:	00351513          	slli	a0,a0,0x3
   11954:	a5dff06f          	j	113b0 <_malloc_r+0x100>
   11958:	010f3783          	ld	a5,16(t5)
   1195c:	fff8889b          	addiw	a7,a7,-1
   11960:	23e79663          	bne	a5,t5,11b8c <_malloc_r+0x8dc>
   11964:	0038f793          	andi	a5,a7,3
   11968:	ff0f0f13          	addi	t5,t5,-16
   1196c:	fe0796e3          	bnez	a5,11958 <_malloc_r+0x6a8>
   11970:	00883683          	ld	a3,8(a6)
   11974:	fff54793          	not	a5,a0
   11978:	00d7f7b3          	and	a5,a5,a3
   1197c:	00f83423          	sd	a5,8(a6)
   11980:	00151513          	slli	a0,a0,0x1
   11984:	fff50693          	addi	a3,a0,-1
   11988:	baf6f6e3          	bgeu	a3,a5,11534 <_malloc_r+0x284>
   1198c:	00f576b3          	and	a3,a0,a5
   11990:	00069a63          	bnez	a3,119a4 <_malloc_r+0x6f4>
   11994:	00151513          	slli	a0,a0,0x1
   11998:	00f576b3          	and	a3,a0,a5
   1199c:	004f8f9b          	addiw	t6,t6,4
   119a0:	fe068ae3          	beqz	a3,11994 <_malloc_r+0x6e4>
   119a4:	000f8893          	mv	a7,t6
   119a8:	b09ff06f          	j	114b0 <_malloc_r+0x200>
   119ac:	02058593          	addi	a1,a1,32
   119b0:	bc9ff06f          	j	11578 <_malloc_r+0x2c8>
   119b4:	4026561b          	sraiw	a2,a2,0x2
   119b8:	00100313          	li	t1,1
   119bc:	00c31633          	sll	a2,t1,a2
   119c0:	00c5e5b3          	or	a1,a1,a2
   119c4:	00b83423          	sd	a1,8(a6)
   119c8:	e11ff06f          	j	117d8 <_malloc_r+0x528>
   119cc:	00b30633          	add	a2,t1,a1
   119d0:	40c005b3          	neg	a1,a2
   119d4:	03459593          	slli	a1,a1,0x34
   119d8:	0345d593          	srli	a1,a1,0x34
   119dc:	00040513          	mv	a0,s0
   119e0:	03c13c23          	sd	t3,56(sp)
   119e4:	03013823          	sd	a6,48(sp)
   119e8:	02f13423          	sd	a5,40(sp)
   119ec:	02e13023          	sd	a4,32(sp)
   119f0:	01113c23          	sd	a7,24(sp)
   119f4:	00613823          	sd	t1,16(sp)
   119f8:	00c13423          	sd	a2,8(sp)
   119fc:	04b13023          	sd	a1,64(sp)
   11a00:	600000ef          	jal	12000 <_sbrk_r>
   11a04:	00050693          	mv	a3,a0
   11a08:	fff00513          	li	a0,-1
   11a0c:	01013303          	ld	t1,16(sp)
   11a10:	01813883          	ld	a7,24(sp)
   11a14:	02013703          	ld	a4,32(sp)
   11a18:	02813783          	ld	a5,40(sp)
   11a1c:	03013803          	ld	a6,48(sp)
   11a20:	03813e03          	ld	t3,56(sp)
   11a24:	0ea68463          	beq	a3,a0,11b0c <_malloc_r+0x85c>
   11a28:	04013583          	ld	a1,64(sp)
   11a2c:	0005851b          	sext.w	a0,a1
   11a30:	c49ff06f          	j	11678 <_malloc_r+0x3c8>
   11a34:	05400613          	li	a2,84
   11a38:	08d66063          	bltu	a2,a3,11ab8 <_malloc_r+0x808>
   11a3c:	00c35693          	srli	a3,t1,0xc
   11a40:	00169513          	slli	a0,a3,0x1
   11a44:	0de5051b          	addiw	a0,a0,222
   11a48:	00351513          	slli	a0,a0,0x3
   11a4c:	06e6861b          	addiw	a2,a3,110
   11a50:	d5dff06f          	j	117ac <_malloc_r+0x4fc>
   11a54:	15400693          	li	a3,340
   11a58:	08f6e063          	bltu	a3,a5,11ad8 <_malloc_r+0x828>
   11a5c:	00f75793          	srli	a5,a4,0xf
   11a60:	0787889b          	addiw	a7,a5,120
   11a64:	0018951b          	slliw	a0,a7,0x1
   11a68:	07778e1b          	addiw	t3,a5,119
   11a6c:	00351513          	slli	a0,a0,0x3
   11a70:	941ff06f          	j	113b0 <_malloc_r+0x100>
   11a74:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a78:	000e2503          	lw	a0,0(t3)
   11a7c:	00b5053b          	addw	a0,a0,a1
   11a80:	00ae2023          	sw	a0,0(t3)
   11a84:	b51ff06f          	j	115d4 <_malloc_r+0x324>
   11a88:	03431f13          	slli	t5,t1,0x34
   11a8c:	b40f14e3          	bnez	t5,115d4 <_malloc_r+0x324>
   11a90:	01083303          	ld	t1,16(a6)
   11a94:	00b885b3          	add	a1,a7,a1
   11a98:	0015e693          	ori	a3,a1,1
   11a9c:	00d33423          	sd	a3,8(t1)
   11aa0:	c35ff06f          	j	116d4 <_malloc_r+0x424>
   11aa4:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11aa8:	b45ff06f          	j	115ec <_malloc_r+0x33c>
   11aac:	00100793          	li	a5,1
   11ab0:	00f33423          	sd	a5,8(t1)
   11ab4:	e85ff06f          	j	11938 <_malloc_r+0x688>
   11ab8:	15400613          	li	a2,340
   11abc:	08d66a63          	bltu	a2,a3,11b50 <_malloc_r+0x8a0>
   11ac0:	00f35693          	srli	a3,t1,0xf
   11ac4:	00169513          	slli	a0,a3,0x1
   11ac8:	0f05051b          	addiw	a0,a0,240
   11acc:	00351513          	slli	a0,a0,0x3
   11ad0:	0776861b          	addiw	a2,a3,119
   11ad4:	cd9ff06f          	j	117ac <_malloc_r+0x4fc>
   11ad8:	55400693          	li	a3,1364
   11adc:	08f6ea63          	bltu	a3,a5,11b70 <_malloc_r+0x8c0>
   11ae0:	01275793          	srli	a5,a4,0x12
   11ae4:	07d7889b          	addiw	a7,a5,125
   11ae8:	0018951b          	slliw	a0,a7,0x1
   11aec:	07c78e1b          	addiw	t3,a5,124
   11af0:	00351513          	slli	a0,a0,0x3
   11af4:	8bdff06f          	j	113b0 <_malloc_r+0x100>
   11af8:	ff0e8e93          	addi	t4,t4,-16
   11afc:	01d606b3          	add	a3,a2,t4
   11b00:	00000513          	li	a0,0
   11b04:	00000593          	li	a1,0
   11b08:	b71ff06f          	j	11678 <_malloc_r+0x3c8>
   11b0c:	00813683          	ld	a3,8(sp)
   11b10:	00000593          	li	a1,0
   11b14:	00000513          	li	a0,0
   11b18:	b61ff06f          	j	11678 <_malloc_r+0x3c8>
   11b1c:	01078593          	addi	a1,a5,16
   11b20:	00040513          	mv	a0,s0
   11b24:	01c13c23          	sd	t3,24(sp)
   11b28:	01013823          	sd	a6,16(sp)
   11b2c:	00e13423          	sd	a4,8(sp)
   11b30:	c7cff0ef          	jal	10fac <_free_r>
   11b34:	01013803          	ld	a6,16(sp)
   11b38:	01813e03          	ld	t3,24(sp)
   11b3c:	00813703          	ld	a4,8(sp)
   11b40:	01083303          	ld	t1,16(a6)
   11b44:	000e2603          	lw	a2,0(t3)
   11b48:	00833683          	ld	a3,8(t1)
   11b4c:	b89ff06f          	j	116d4 <_malloc_r+0x424>
   11b50:	55400613          	li	a2,1364
   11b54:	02d66663          	bltu	a2,a3,11b80 <_malloc_r+0x8d0>
   11b58:	01235693          	srli	a3,t1,0x12
   11b5c:	00169513          	slli	a0,a3,0x1
   11b60:	0fa5051b          	addiw	a0,a0,250
   11b64:	00351513          	slli	a0,a0,0x3
   11b68:	07c6861b          	addiw	a2,a3,124
   11b6c:	c41ff06f          	j	117ac <_malloc_r+0x4fc>
   11b70:	7f000513          	li	a0,2032
   11b74:	07f00893          	li	a7,127
   11b78:	07e00e13          	li	t3,126
   11b7c:	835ff06f          	j	113b0 <_malloc_r+0x100>
   11b80:	7f000513          	li	a0,2032
   11b84:	07e00613          	li	a2,126
   11b88:	c25ff06f          	j	117ac <_malloc_r+0x4fc>
   11b8c:	00883783          	ld	a5,8(a6)
   11b90:	df1ff06f          	j	11980 <_malloc_r+0x6d0>

0000000000011b94 <__malloc_lock>:
   11b94:	00008067          	ret

0000000000011b98 <__malloc_unlock>:
   11b98:	00008067          	ret

0000000000011b9c <_fclose_r>:
   11b9c:	fe010113          	addi	sp,sp,-32
   11ba0:	00113c23          	sd	ra,24(sp)
   11ba4:	01213023          	sd	s2,0(sp)
   11ba8:	02058863          	beqz	a1,11bd8 <_fclose_r+0x3c>
   11bac:	00813823          	sd	s0,16(sp)
   11bb0:	00913423          	sd	s1,8(sp)
   11bb4:	00058413          	mv	s0,a1
   11bb8:	00050493          	mv	s1,a0
   11bbc:	00050663          	beqz	a0,11bc8 <_fclose_r+0x2c>
   11bc0:	04853783          	ld	a5,72(a0)
   11bc4:	0c078c63          	beqz	a5,11c9c <_fclose_r+0x100>
   11bc8:	01041783          	lh	a5,16(s0)
   11bcc:	02079263          	bnez	a5,11bf0 <_fclose_r+0x54>
   11bd0:	01013403          	ld	s0,16(sp)
   11bd4:	00813483          	ld	s1,8(sp)
   11bd8:	01813083          	ld	ra,24(sp)
   11bdc:	00000913          	li	s2,0
   11be0:	00090513          	mv	a0,s2
   11be4:	00013903          	ld	s2,0(sp)
   11be8:	02010113          	addi	sp,sp,32
   11bec:	00008067          	ret
   11bf0:	00040593          	mv	a1,s0
   11bf4:	00048513          	mv	a0,s1
   11bf8:	0b8000ef          	jal	11cb0 <__sflush_r>
   11bfc:	05043783          	ld	a5,80(s0)
   11c00:	00050913          	mv	s2,a0
   11c04:	00078a63          	beqz	a5,11c18 <_fclose_r+0x7c>
   11c08:	03043583          	ld	a1,48(s0)
   11c0c:	00048513          	mv	a0,s1
   11c10:	000780e7          	jalr	a5
   11c14:	06054463          	bltz	a0,11c7c <_fclose_r+0xe0>
   11c18:	01045783          	lhu	a5,16(s0)
   11c1c:	0807f793          	andi	a5,a5,128
   11c20:	06079663          	bnez	a5,11c8c <_fclose_r+0xf0>
   11c24:	05843583          	ld	a1,88(s0)
   11c28:	00058c63          	beqz	a1,11c40 <_fclose_r+0xa4>
   11c2c:	07440793          	addi	a5,s0,116
   11c30:	00f58663          	beq	a1,a5,11c3c <_fclose_r+0xa0>
   11c34:	00048513          	mv	a0,s1
   11c38:	b74ff0ef          	jal	10fac <_free_r>
   11c3c:	04043c23          	sd	zero,88(s0)
   11c40:	07843583          	ld	a1,120(s0)
   11c44:	00058863          	beqz	a1,11c54 <_fclose_r+0xb8>
   11c48:	00048513          	mv	a0,s1
   11c4c:	b60ff0ef          	jal	10fac <_free_r>
   11c50:	06043c23          	sd	zero,120(s0)
   11c54:	aa1fe0ef          	jal	106f4 <__sfp_lock_acquire>
   11c58:	00041823          	sh	zero,16(s0)
   11c5c:	a9dfe0ef          	jal	106f8 <__sfp_lock_release>
   11c60:	01813083          	ld	ra,24(sp)
   11c64:	01013403          	ld	s0,16(sp)
   11c68:	00813483          	ld	s1,8(sp)
   11c6c:	00090513          	mv	a0,s2
   11c70:	00013903          	ld	s2,0(sp)
   11c74:	02010113          	addi	sp,sp,32
   11c78:	00008067          	ret
   11c7c:	01045783          	lhu	a5,16(s0)
   11c80:	fff00913          	li	s2,-1
   11c84:	0807f793          	andi	a5,a5,128
   11c88:	f8078ee3          	beqz	a5,11c24 <_fclose_r+0x88>
   11c8c:	01843583          	ld	a1,24(s0)
   11c90:	00048513          	mv	a0,s1
   11c94:	b18ff0ef          	jal	10fac <_free_r>
   11c98:	f8dff06f          	j	11c24 <_fclose_r+0x88>
   11c9c:	a35fe0ef          	jal	106d0 <__sinit>
   11ca0:	f29ff06f          	j	11bc8 <_fclose_r+0x2c>

0000000000011ca4 <fclose>:
   11ca4:	00050593          	mv	a1,a0
   11ca8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11cac:	ef1ff06f          	j	11b9c <_fclose_r>

0000000000011cb0 <__sflush_r>:
   11cb0:	01059703          	lh	a4,16(a1)
   11cb4:	fd010113          	addi	sp,sp,-48
   11cb8:	02813023          	sd	s0,32(sp)
   11cbc:	01313423          	sd	s3,8(sp)
   11cc0:	02113423          	sd	ra,40(sp)
   11cc4:	00877793          	andi	a5,a4,8
   11cc8:	00058413          	mv	s0,a1
   11ccc:	00050993          	mv	s3,a0
   11cd0:	12079263          	bnez	a5,11df4 <__sflush_r+0x144>
   11cd4:	000017b7          	lui	a5,0x1
   11cd8:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11cdc:	0085a683          	lw	a3,8(a1)
   11ce0:	00f767b3          	or	a5,a4,a5
   11ce4:	00f59823          	sh	a5,16(a1)
   11ce8:	18d05c63          	blez	a3,11e80 <__sflush_r+0x1d0>
   11cec:	04843803          	ld	a6,72(s0)
   11cf0:	0e080663          	beqz	a6,11ddc <__sflush_r+0x12c>
   11cf4:	00913c23          	sd	s1,24(sp)
   11cf8:	03371693          	slli	a3,a4,0x33
   11cfc:	0009a483          	lw	s1,0(s3)
   11d00:	0009a023          	sw	zero,0(s3)
   11d04:	1806ca63          	bltz	a3,11e98 <__sflush_r+0x1e8>
   11d08:	03043583          	ld	a1,48(s0)
   11d0c:	00000613          	li	a2,0
   11d10:	00100693          	li	a3,1
   11d14:	00098513          	mv	a0,s3
   11d18:	000800e7          	jalr	a6
   11d1c:	fff00793          	li	a5,-1
   11d20:	00050613          	mv	a2,a0
   11d24:	1af50c63          	beq	a0,a5,11edc <__sflush_r+0x22c>
   11d28:	01041783          	lh	a5,16(s0)
   11d2c:	04843803          	ld	a6,72(s0)
   11d30:	0047f793          	andi	a5,a5,4
   11d34:	00078e63          	beqz	a5,11d50 <__sflush_r+0xa0>
   11d38:	00842703          	lw	a4,8(s0)
   11d3c:	05843783          	ld	a5,88(s0)
   11d40:	40e60633          	sub	a2,a2,a4
   11d44:	00078663          	beqz	a5,11d50 <__sflush_r+0xa0>
   11d48:	07042783          	lw	a5,112(s0)
   11d4c:	40f60633          	sub	a2,a2,a5
   11d50:	03043583          	ld	a1,48(s0)
   11d54:	00000693          	li	a3,0
   11d58:	00098513          	mv	a0,s3
   11d5c:	000800e7          	jalr	a6
   11d60:	fff00713          	li	a4,-1
   11d64:	01041783          	lh	a5,16(s0)
   11d68:	12e51c63          	bne	a0,a4,11ea0 <__sflush_r+0x1f0>
   11d6c:	0009a683          	lw	a3,0(s3)
   11d70:	01d00713          	li	a4,29
   11d74:	18d76263          	bltu	a4,a3,11ef8 <__sflush_r+0x248>
   11d78:	20400737          	lui	a4,0x20400
   11d7c:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11d80:	00d75733          	srl	a4,a4,a3
   11d84:	00177713          	andi	a4,a4,1
   11d88:	16070863          	beqz	a4,11ef8 <__sflush_r+0x248>
   11d8c:	01843683          	ld	a3,24(s0)
   11d90:	fffff737          	lui	a4,0xfffff
   11d94:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d98:	00e7f733          	and	a4,a5,a4
   11d9c:	00e41823          	sh	a4,16(s0)
   11da0:	00042423          	sw	zero,8(s0)
   11da4:	00d43023          	sd	a3,0(s0)
   11da8:	03379713          	slli	a4,a5,0x33
   11dac:	00075663          	bgez	a4,11db8 <__sflush_r+0x108>
   11db0:	0009a783          	lw	a5,0(s3)
   11db4:	10078863          	beqz	a5,11ec4 <__sflush_r+0x214>
   11db8:	05843583          	ld	a1,88(s0)
   11dbc:	0099a023          	sw	s1,0(s3)
   11dc0:	10058a63          	beqz	a1,11ed4 <__sflush_r+0x224>
   11dc4:	07440793          	addi	a5,s0,116
   11dc8:	00f58663          	beq	a1,a5,11dd4 <__sflush_r+0x124>
   11dcc:	00098513          	mv	a0,s3
   11dd0:	9dcff0ef          	jal	10fac <_free_r>
   11dd4:	01813483          	ld	s1,24(sp)
   11dd8:	04043c23          	sd	zero,88(s0)
   11ddc:	02813083          	ld	ra,40(sp)
   11de0:	02013403          	ld	s0,32(sp)
   11de4:	00813983          	ld	s3,8(sp)
   11de8:	00000513          	li	a0,0
   11dec:	03010113          	addi	sp,sp,48
   11df0:	00008067          	ret
   11df4:	01213823          	sd	s2,16(sp)
   11df8:	0185b903          	ld	s2,24(a1)
   11dfc:	08090a63          	beqz	s2,11e90 <__sflush_r+0x1e0>
   11e00:	00913c23          	sd	s1,24(sp)
   11e04:	0005b483          	ld	s1,0(a1)
   11e08:	00377713          	andi	a4,a4,3
   11e0c:	0125b023          	sd	s2,0(a1)
   11e10:	412484bb          	subw	s1,s1,s2
   11e14:	00000793          	li	a5,0
   11e18:	00071463          	bnez	a4,11e20 <__sflush_r+0x170>
   11e1c:	0205a783          	lw	a5,32(a1)
   11e20:	00f42623          	sw	a5,12(s0)
   11e24:	00904863          	bgtz	s1,11e34 <__sflush_r+0x184>
   11e28:	0640006f          	j	11e8c <__sflush_r+0x1dc>
   11e2c:	00a90933          	add	s2,s2,a0
   11e30:	04905e63          	blez	s1,11e8c <__sflush_r+0x1dc>
   11e34:	04043783          	ld	a5,64(s0)
   11e38:	03043583          	ld	a1,48(s0)
   11e3c:	00048693          	mv	a3,s1
   11e40:	00090613          	mv	a2,s2
   11e44:	00098513          	mv	a0,s3
   11e48:	000780e7          	jalr	a5
   11e4c:	40a484bb          	subw	s1,s1,a0
   11e50:	fca04ee3          	bgtz	a0,11e2c <__sflush_r+0x17c>
   11e54:	01045783          	lhu	a5,16(s0)
   11e58:	01013903          	ld	s2,16(sp)
   11e5c:	0407e793          	ori	a5,a5,64
   11e60:	02813083          	ld	ra,40(sp)
   11e64:	00f41823          	sh	a5,16(s0)
   11e68:	02013403          	ld	s0,32(sp)
   11e6c:	01813483          	ld	s1,24(sp)
   11e70:	00813983          	ld	s3,8(sp)
   11e74:	fff00513          	li	a0,-1
   11e78:	03010113          	addi	sp,sp,48
   11e7c:	00008067          	ret
   11e80:	0705a683          	lw	a3,112(a1)
   11e84:	e6d044e3          	bgtz	a3,11cec <__sflush_r+0x3c>
   11e88:	f55ff06f          	j	11ddc <__sflush_r+0x12c>
   11e8c:	01813483          	ld	s1,24(sp)
   11e90:	01013903          	ld	s2,16(sp)
   11e94:	f49ff06f          	j	11ddc <__sflush_r+0x12c>
   11e98:	09043603          	ld	a2,144(s0)
   11e9c:	e95ff06f          	j	11d30 <__sflush_r+0x80>
   11ea0:	01843683          	ld	a3,24(s0)
   11ea4:	fffff737          	lui	a4,0xfffff
   11ea8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11eac:	00e7f733          	and	a4,a5,a4
   11eb0:	00e41823          	sh	a4,16(s0)
   11eb4:	00042423          	sw	zero,8(s0)
   11eb8:	00d43023          	sd	a3,0(s0)
   11ebc:	03379713          	slli	a4,a5,0x33
   11ec0:	ee075ce3          	bgez	a4,11db8 <__sflush_r+0x108>
   11ec4:	05843583          	ld	a1,88(s0)
   11ec8:	08a43823          	sd	a0,144(s0)
   11ecc:	0099a023          	sw	s1,0(s3)
   11ed0:	ee059ae3          	bnez	a1,11dc4 <__sflush_r+0x114>
   11ed4:	01813483          	ld	s1,24(sp)
   11ed8:	f05ff06f          	j	11ddc <__sflush_r+0x12c>
   11edc:	0009a783          	lw	a5,0(s3)
   11ee0:	e40784e3          	beqz	a5,11d28 <__sflush_r+0x78>
   11ee4:	fe378713          	addi	a4,a5,-29
   11ee8:	00070c63          	beqz	a4,11f00 <__sflush_r+0x250>
   11eec:	fea78793          	addi	a5,a5,-22
   11ef0:	00078863          	beqz	a5,11f00 <__sflush_r+0x250>
   11ef4:	01045783          	lhu	a5,16(s0)
   11ef8:	0407e793          	ori	a5,a5,64
   11efc:	f65ff06f          	j	11e60 <__sflush_r+0x1b0>
   11f00:	0099a023          	sw	s1,0(s3)
   11f04:	01813483          	ld	s1,24(sp)
   11f08:	ed5ff06f          	j	11ddc <__sflush_r+0x12c>

0000000000011f0c <_fflush_r>:
   11f0c:	00050793          	mv	a5,a0
   11f10:	00050663          	beqz	a0,11f1c <_fflush_r+0x10>
   11f14:	04853703          	ld	a4,72(a0)
   11f18:	00070e63          	beqz	a4,11f34 <_fflush_r+0x28>
   11f1c:	01059703          	lh	a4,16(a1)
   11f20:	00071663          	bnez	a4,11f2c <_fflush_r+0x20>
   11f24:	00000513          	li	a0,0
   11f28:	00008067          	ret
   11f2c:	00078513          	mv	a0,a5
   11f30:	d81ff06f          	j	11cb0 <__sflush_r>
   11f34:	fe010113          	addi	sp,sp,-32
   11f38:	00b13423          	sd	a1,8(sp)
   11f3c:	00113c23          	sd	ra,24(sp)
   11f40:	00a13023          	sd	a0,0(sp)
   11f44:	f8cfe0ef          	jal	106d0 <__sinit>
   11f48:	00813583          	ld	a1,8(sp)
   11f4c:	00013783          	ld	a5,0(sp)
   11f50:	01059703          	lh	a4,16(a1)
   11f54:	00070a63          	beqz	a4,11f68 <_fflush_r+0x5c>
   11f58:	01813083          	ld	ra,24(sp)
   11f5c:	00078513          	mv	a0,a5
   11f60:	02010113          	addi	sp,sp,32
   11f64:	d4dff06f          	j	11cb0 <__sflush_r>
   11f68:	01813083          	ld	ra,24(sp)
   11f6c:	00000513          	li	a0,0
   11f70:	02010113          	addi	sp,sp,32
   11f74:	00008067          	ret

0000000000011f78 <fflush>:
   11f78:	06050063          	beqz	a0,11fd8 <fflush+0x60>
   11f7c:	00050593          	mv	a1,a0
   11f80:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f84:	00050663          	beqz	a0,11f90 <fflush+0x18>
   11f88:	04853783          	ld	a5,72(a0)
   11f8c:	00078c63          	beqz	a5,11fa4 <fflush+0x2c>
   11f90:	01059783          	lh	a5,16(a1)
   11f94:	00079663          	bnez	a5,11fa0 <fflush+0x28>
   11f98:	00000513          	li	a0,0
   11f9c:	00008067          	ret
   11fa0:	d11ff06f          	j	11cb0 <__sflush_r>
   11fa4:	fe010113          	addi	sp,sp,-32
   11fa8:	00b13423          	sd	a1,8(sp)
   11fac:	00a13023          	sd	a0,0(sp)
   11fb0:	00113c23          	sd	ra,24(sp)
   11fb4:	f1cfe0ef          	jal	106d0 <__sinit>
   11fb8:	00813583          	ld	a1,8(sp)
   11fbc:	00013503          	ld	a0,0(sp)
   11fc0:	01059783          	lh	a5,16(a1)
   11fc4:	02079863          	bnez	a5,11ff4 <fflush+0x7c>
   11fc8:	01813083          	ld	ra,24(sp)
   11fcc:	00000513          	li	a0,0
   11fd0:	02010113          	addi	sp,sp,32
   11fd4:	00008067          	ret
   11fd8:	00013637          	lui	a2,0x13
   11fdc:	000125b7          	lui	a1,0x12
   11fe0:	00013537          	lui	a0,0x13
   11fe4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11fe8:	f0c58593          	addi	a1,a1,-244 # 11f0c <_fflush_r>
   11fec:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11ff0:	f3cfe06f          	j	1072c <_fwalk_sglue>
   11ff4:	01813083          	ld	ra,24(sp)
   11ff8:	02010113          	addi	sp,sp,32
   11ffc:	cb5ff06f          	j	11cb0 <__sflush_r>

0000000000012000 <_sbrk_r>:
   12000:	fe010113          	addi	sp,sp,-32
   12004:	00813823          	sd	s0,16(sp)
   12008:	00913423          	sd	s1,8(sp)
   1200c:	00050493          	mv	s1,a0
   12010:	00058513          	mv	a0,a1
   12014:	00113c23          	sd	ra,24(sp)
   12018:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   1201c:	228000ef          	jal	12244 <_sbrk>
   12020:	fff00793          	li	a5,-1
   12024:	00f50c63          	beq	a0,a5,1203c <_sbrk_r+0x3c>
   12028:	01813083          	ld	ra,24(sp)
   1202c:	01013403          	ld	s0,16(sp)
   12030:	00813483          	ld	s1,8(sp)
   12034:	02010113          	addi	sp,sp,32
   12038:	00008067          	ret
   1203c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12040:	fe0784e3          	beqz	a5,12028 <_sbrk_r+0x28>
   12044:	01813083          	ld	ra,24(sp)
   12048:	01013403          	ld	s0,16(sp)
   1204c:	00f4a023          	sw	a5,0(s1)
   12050:	00813483          	ld	s1,8(sp)
   12054:	02010113          	addi	sp,sp,32
   12058:	00008067          	ret

000000000001205c <__libc_fini_array>:
   1205c:	fe010113          	addi	sp,sp,-32
   12060:	00813823          	sd	s0,16(sp)
   12064:	000137b7          	lui	a5,0x13
   12068:	00013437          	lui	s0,0x13
   1206c:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12070:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12074:	408787b3          	sub	a5,a5,s0
   12078:	00913423          	sd	s1,8(sp)
   1207c:	00113c23          	sd	ra,24(sp)
   12080:	4037d493          	srai	s1,a5,0x3
   12084:	02048063          	beqz	s1,120a4 <__libc_fini_array+0x48>
   12088:	ff840413          	addi	s0,s0,-8
   1208c:	00f40433          	add	s0,s0,a5
   12090:	00043783          	ld	a5,0(s0)
   12094:	fff48493          	addi	s1,s1,-1
   12098:	ff840413          	addi	s0,s0,-8
   1209c:	000780e7          	jalr	a5
   120a0:	fe0498e3          	bnez	s1,12090 <__libc_fini_array+0x34>
   120a4:	01813083          	ld	ra,24(sp)
   120a8:	01013403          	ld	s0,16(sp)
   120ac:	00813483          	ld	s1,8(sp)
   120b0:	02010113          	addi	sp,sp,32
   120b4:	00008067          	ret

00000000000120b8 <__register_exitproc>:
   120b8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   120bc:	04078e63          	beqz	a5,12118 <__register_exitproc+0x60>
   120c0:	0087a703          	lw	a4,8(a5)
   120c4:	01f00813          	li	a6,31
   120c8:	08e84263          	blt	a6,a4,1214c <__register_exitproc+0x94>
   120cc:	02050863          	beqz	a0,120fc <__register_exitproc+0x44>
   120d0:	00371813          	slli	a6,a4,0x3
   120d4:	01078833          	add	a6,a5,a6
   120d8:	10c83823          	sd	a2,272(a6)
   120dc:	3107a883          	lw	a7,784(a5)
   120e0:	00100613          	li	a2,1
   120e4:	00e6163b          	sllw	a2,a2,a4
   120e8:	00c8e8b3          	or	a7,a7,a2
   120ec:	3117a823          	sw	a7,784(a5)
   120f0:	20d83823          	sd	a3,528(a6)
   120f4:	00200693          	li	a3,2
   120f8:	02d50663          	beq	a0,a3,12124 <__register_exitproc+0x6c>
   120fc:	0017069b          	addiw	a3,a4,1
   12100:	00371713          	slli	a4,a4,0x3
   12104:	00d7a423          	sw	a3,8(a5)
   12108:	00e787b3          	add	a5,a5,a4
   1210c:	00b7b823          	sd	a1,16(a5)
   12110:	00000513          	li	a0,0
   12114:	00008067          	ret
   12118:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   1211c:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12120:	fa1ff06f          	j	120c0 <__register_exitproc+0x8>
   12124:	3147a683          	lw	a3,788(a5)
   12128:	00000513          	li	a0,0
   1212c:	00d66633          	or	a2,a2,a3
   12130:	0017069b          	addiw	a3,a4,1
   12134:	00371713          	slli	a4,a4,0x3
   12138:	30c7aa23          	sw	a2,788(a5)
   1213c:	00d7a423          	sw	a3,8(a5)
   12140:	00e787b3          	add	a5,a5,a4
   12144:	00b7b823          	sd	a1,16(a5)
   12148:	00008067          	ret
   1214c:	fff00513          	li	a0,-1
   12150:	00008067          	ret

0000000000012154 <_close>:
   12154:	03900893          	li	a7,57
   12158:	00000073          	ecall
   1215c:	00054663          	bltz	a0,12168 <_close+0x14>
   12160:	0005051b          	sext.w	a0,a0
   12164:	00008067          	ret
   12168:	fe010113          	addi	sp,sp,-32
   1216c:	00113c23          	sd	ra,24(sp)
   12170:	00a13423          	sd	a0,8(sp)
   12174:	188000ef          	jal	122fc <__errno>
   12178:	00813783          	ld	a5,8(sp)
   1217c:	01813083          	ld	ra,24(sp)
   12180:	40f007bb          	negw	a5,a5
   12184:	00f52023          	sw	a5,0(a0)
   12188:	fff00513          	li	a0,-1
   1218c:	02010113          	addi	sp,sp,32
   12190:	00008067          	ret

0000000000012194 <_exit>:
   12194:	05d00893          	li	a7,93
   12198:	00000073          	ecall
   1219c:	00054463          	bltz	a0,121a4 <_exit+0x10>
   121a0:	0000006f          	j	121a0 <_exit+0xc>
   121a4:	fe010113          	addi	sp,sp,-32
   121a8:	00113c23          	sd	ra,24(sp)
   121ac:	00a13423          	sd	a0,8(sp)
   121b0:	14c000ef          	jal	122fc <__errno>
   121b4:	00813783          	ld	a5,8(sp)
   121b8:	40f007bb          	negw	a5,a5
   121bc:	00f52023          	sw	a5,0(a0)
   121c0:	0000006f          	j	121c0 <_exit+0x2c>

00000000000121c4 <_lseek>:
   121c4:	03e00893          	li	a7,62
   121c8:	00000073          	ecall
   121cc:	00054463          	bltz	a0,121d4 <_lseek+0x10>
   121d0:	00008067          	ret
   121d4:	fe010113          	addi	sp,sp,-32
   121d8:	00113c23          	sd	ra,24(sp)
   121dc:	00a13423          	sd	a0,8(sp)
   121e0:	11c000ef          	jal	122fc <__errno>
   121e4:	00813783          	ld	a5,8(sp)
   121e8:	01813083          	ld	ra,24(sp)
   121ec:	40f007bb          	negw	a5,a5
   121f0:	00f52023          	sw	a5,0(a0)
   121f4:	fff00793          	li	a5,-1
   121f8:	00078513          	mv	a0,a5
   121fc:	02010113          	addi	sp,sp,32
   12200:	00008067          	ret

0000000000012204 <_read>:
   12204:	03f00893          	li	a7,63
   12208:	00000073          	ecall
   1220c:	00054463          	bltz	a0,12214 <_read+0x10>
   12210:	00008067          	ret
   12214:	fe010113          	addi	sp,sp,-32
   12218:	00113c23          	sd	ra,24(sp)
   1221c:	00a13423          	sd	a0,8(sp)
   12220:	0dc000ef          	jal	122fc <__errno>
   12224:	00813783          	ld	a5,8(sp)
   12228:	01813083          	ld	ra,24(sp)
   1222c:	40f007bb          	negw	a5,a5
   12230:	00f52023          	sw	a5,0(a0)
   12234:	fff00793          	li	a5,-1
   12238:	00078513          	mv	a0,a5
   1223c:	02010113          	addi	sp,sp,32
   12240:	00008067          	ret

0000000000012244 <_sbrk>:
   12244:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12248:	ff010113          	addi	sp,sp,-16
   1224c:	00113423          	sd	ra,8(sp)
   12250:	00050713          	mv	a4,a0
   12254:	02079063          	bnez	a5,12274 <_sbrk+0x30>
   12258:	0d600893          	li	a7,214
   1225c:	00000513          	li	a0,0
   12260:	00000073          	ecall
   12264:	fff00793          	li	a5,-1
   12268:	02f50c63          	beq	a0,a5,122a0 <_sbrk+0x5c>
   1226c:	00050793          	mv	a5,a0
   12270:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12274:	00f70533          	add	a0,a4,a5
   12278:	0d600893          	li	a7,214
   1227c:	00000073          	ecall
   12280:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12284:	00f70733          	add	a4,a4,a5
   12288:	00e51c63          	bne	a0,a4,122a0 <_sbrk+0x5c>
   1228c:	00813083          	ld	ra,8(sp)
   12290:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12294:	00078513          	mv	a0,a5
   12298:	01010113          	addi	sp,sp,16
   1229c:	00008067          	ret
   122a0:	05c000ef          	jal	122fc <__errno>
   122a4:	00813083          	ld	ra,8(sp)
   122a8:	00c00793          	li	a5,12
   122ac:	00f52023          	sw	a5,0(a0)
   122b0:	fff00513          	li	a0,-1
   122b4:	01010113          	addi	sp,sp,16
   122b8:	00008067          	ret

00000000000122bc <_write>:
   122bc:	04000893          	li	a7,64
   122c0:	00000073          	ecall
   122c4:	00054463          	bltz	a0,122cc <_write+0x10>
   122c8:	00008067          	ret
   122cc:	fe010113          	addi	sp,sp,-32
   122d0:	00113c23          	sd	ra,24(sp)
   122d4:	00a13423          	sd	a0,8(sp)
   122d8:	024000ef          	jal	122fc <__errno>
   122dc:	00813783          	ld	a5,8(sp)
   122e0:	01813083          	ld	ra,24(sp)
   122e4:	40f007bb          	negw	a5,a5
   122e8:	00f52023          	sw	a5,0(a0)
   122ec:	fff00793          	li	a5,-1
   122f0:	00078513          	mv	a0,a5
   122f4:	02010113          	addi	sp,sp,32
   122f8:	00008067          	ret

00000000000122fc <__errno>:
   122fc:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12300:	00008067          	ret

Disassembly of section .rodata:

0000000000012308 <.rodata>:
   12308:	6548                	.insn	2, 0x6548
   1230a:	6c6c                	.insn	2, 0x6c6c
   1230c:	57202c6f          	jal	s8,1487e <__BSS_END__+0x906>
   12310:	646c726f          	jal	tp,d9956 <__BSS_END__+0xc59de>
   12314:	0a21                	.insn	2, 0x0a21
	...

Disassembly of section .eh_frame:

0000000000012318 <__EH_FRAME_BEGIN__>:
   12318:	0000                	.insn	2, 0x0000
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

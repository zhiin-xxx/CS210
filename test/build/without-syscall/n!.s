
test/build/without-syscall/n!.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	2fd000ef          	jal	10c30 <__call_exitprocs>
   10138:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	741010ef          	jal	12088 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	f5050513          	addi	a0,a0,-176 # 11f50 <__libc_fini_array>
   1015c:	40d0006f          	j	10d68 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00003197          	auipc	gp,0x3
   10168:	6b418193          	addi	gp,gp,1716 # 13818 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	84c50513          	addi	a0,a0,-1972 # 139b8 <result>
   10174:	00004617          	auipc	a2,0x4
   10178:	e0c60613          	addi	a2,a2,-500 # 13f80 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	1d1000ef          	jal	10b54 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	be050513          	addi	a0,a0,-1056 # 10d68 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	dbc50513          	addi	a0,a0,-580 # 11f50 <__libc_fini_array>
   1019c:	3cd000ef          	jal	10d68 <atexit>
   101a0:	121000ef          	jal	10ac0 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	0d4000ef          	jal	10284 <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1e01c783          	lbu	a5,480(gp) # 139f8 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00012537          	lui	a0,0x12
   101d8:	1f850513          	addi	a0,a0,504 # 121f8 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x10120>
   101e4:	00100793          	li	a5,1
   101e8:	1ef18023          	sb	a5,480(gp) # 139f8 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00012537          	lui	a0,0x12
   10208:	1e818593          	addi	a1,gp,488 # 13a00 <object.0>
   1020c:	1f850513          	addi	a0,a0,504 # 121f8 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <cal_n>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	00050793          	mv	a5,a0
   10230:	fef42623          	sw	a5,-20(s0)
   10234:	fec42783          	lw	a5,-20(s0)
   10238:	0007871b          	sext.w	a4,a5
   1023c:	00100793          	li	a5,1
   10240:	00f71663          	bne	a4,a5,1024c <cal_n+0x30>
   10244:	fec42783          	lw	a5,-20(s0)
   10248:	0280006f          	j	10270 <cal_n+0x54>
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	fff7879b          	addiw	a5,a5,-1
   10254:	0007879b          	sext.w	a5,a5
   10258:	00078513          	mv	a0,a5
   1025c:	fc1ff0ef          	jal	1021c <cal_n>
   10260:	00050793          	mv	a5,a0
   10264:	fec42703          	lw	a4,-20(s0)
   10268:	02f707bb          	mulw	a5,a4,a5
   1026c:	0007879b          	sext.w	a5,a5
   10270:	00078513          	mv	a0,a5
   10274:	01813083          	ld	ra,24(sp)
   10278:	01013403          	ld	s0,16(sp)
   1027c:	02010113          	addi	sp,sp,32
   10280:	00008067          	ret

0000000000010284 <main>:
   10284:	ff010113          	addi	sp,sp,-16
   10288:	00113423          	sd	ra,8(sp)
   1028c:	00813023          	sd	s0,0(sp)
   10290:	01010413          	addi	s0,sp,16
   10294:	00a00513          	li	a0,10
   10298:	f85ff0ef          	jal	1021c <cal_n>
   1029c:	00050793          	mv	a5,a0
   102a0:	00078713          	mv	a4,a5
   102a4:	1ae1a023          	sw	a4,416(gp) # 139b8 <result>
   102a8:	00000793          	li	a5,0
   102ac:	00078513          	mv	a0,a5
   102b0:	00813083          	ld	ra,8(sp)
   102b4:	00013403          	ld	s0,0(sp)
   102b8:	01010113          	addi	sp,sp,16
   102bc:	00008067          	ret

00000000000102c0 <__fp_lock>:
   102c0:	00000513          	li	a0,0
   102c4:	00008067          	ret

00000000000102c8 <stdio_exit_handler>:
   102c8:	00013637          	lui	a2,0x13
   102cc:	000125b7          	lui	a1,0x12
   102d0:	00013537          	lui	a0,0x13
   102d4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   102d8:	a9058593          	addi	a1,a1,-1392 # 11a90 <_fclose_r>
   102dc:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   102e0:	3440006f          	j	10624 <_fwalk_sglue>

00000000000102e4 <cleanup_stdio>:
   102e4:	00853583          	ld	a1,8(a0)
   102e8:	ff010113          	addi	sp,sp,-16
   102ec:	00813023          	sd	s0,0(sp)
   102f0:	00113423          	sd	ra,8(sp)
   102f4:	21818793          	addi	a5,gp,536 # 13a30 <__sf>
   102f8:	00050413          	mv	s0,a0
   102fc:	00f58463          	beq	a1,a5,10304 <cleanup_stdio+0x20>
   10300:	790010ef          	jal	11a90 <_fclose_r>
   10304:	01043583          	ld	a1,16(s0)
   10308:	2c818793          	addi	a5,gp,712 # 13ae0 <__sf+0xb0>
   1030c:	00f58663          	beq	a1,a5,10318 <cleanup_stdio+0x34>
   10310:	00040513          	mv	a0,s0
   10314:	77c010ef          	jal	11a90 <_fclose_r>
   10318:	01843583          	ld	a1,24(s0)
   1031c:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10320:	00f58c63          	beq	a1,a5,10338 <cleanup_stdio+0x54>
   10324:	00040513          	mv	a0,s0
   10328:	00013403          	ld	s0,0(sp)
   1032c:	00813083          	ld	ra,8(sp)
   10330:	01010113          	addi	sp,sp,16
   10334:	75c0106f          	j	11a90 <_fclose_r>
   10338:	00813083          	ld	ra,8(sp)
   1033c:	00013403          	ld	s0,0(sp)
   10340:	01010113          	addi	sp,sp,16
   10344:	00008067          	ret

0000000000010348 <__fp_unlock>:
   10348:	00000513          	li	a0,0
   1034c:	00008067          	ret

0000000000010350 <global_stdio_init.part.0>:
   10350:	fd010113          	addi	sp,sp,-48
   10354:	000107b7          	lui	a5,0x10
   10358:	02813023          	sd	s0,32(sp)
   1035c:	2c878793          	addi	a5,a5,712 # 102c8 <stdio_exit_handler>
   10360:	21818413          	addi	s0,gp,536 # 13a30 <__sf>
   10364:	02113423          	sd	ra,40(sp)
   10368:	00913c23          	sd	s1,24(sp)
   1036c:	01213823          	sd	s2,16(sp)
   10370:	01313423          	sd	s3,8(sp)
   10374:	01413023          	sd	s4,0(sp)
   10378:	1af1b423          	sd	a5,424(gp) # 139c0 <__stdio_exit_handler>
   1037c:	00800613          	li	a2,8
   10380:	00400793          	li	a5,4
   10384:	00000593          	li	a1,0
   10388:	2bc18513          	addi	a0,gp,700 # 13ad4 <__sf+0xa4>
   1038c:	00f42823          	sw	a5,16(s0)
   10390:	00043023          	sd	zero,0(s0)
   10394:	00043423          	sd	zero,8(s0)
   10398:	0a042623          	sw	zero,172(s0)
   1039c:	00043c23          	sd	zero,24(s0)
   103a0:	02042023          	sw	zero,32(s0)
   103a4:	02042423          	sw	zero,40(s0)
   103a8:	7ac000ef          	jal	10b54 <memset>
   103ac:	00010a37          	lui	s4,0x10
   103b0:	000109b7          	lui	s3,0x10
   103b4:	00010937          	lui	s2,0x10
   103b8:	000114b7          	lui	s1,0x11
   103bc:	000107b7          	lui	a5,0x10
   103c0:	6f0a0a13          	addi	s4,s4,1776 # 106f0 <__sread>
   103c4:	75498993          	addi	s3,s3,1876 # 10754 <__swrite>
   103c8:	7dc90913          	addi	s2,s2,2012 # 107dc <__sseek>
   103cc:	84048493          	addi	s1,s1,-1984 # 10840 <__sclose>
   103d0:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   103d4:	00800613          	li	a2,8
   103d8:	00000593          	li	a1,0
   103dc:	36c18513          	addi	a0,gp,876 # 13b84 <__sf+0x154>
   103e0:	0cf42023          	sw	a5,192(s0)
   103e4:	03443c23          	sd	s4,56(s0)
   103e8:	05343023          	sd	s3,64(s0)
   103ec:	05243423          	sd	s2,72(s0)
   103f0:	04943823          	sd	s1,80(s0)
   103f4:	02843823          	sd	s0,48(s0)
   103f8:	0a043823          	sd	zero,176(s0)
   103fc:	0a043c23          	sd	zero,184(s0)
   10400:	14042e23          	sw	zero,348(s0)
   10404:	0c043423          	sd	zero,200(s0)
   10408:	0c042823          	sw	zero,208(s0)
   1040c:	0c042c23          	sw	zero,216(s0)
   10410:	744000ef          	jal	10b54 <memset>
   10414:	000207b7          	lui	a5,0x20
   10418:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc092>
   1041c:	2c818713          	addi	a4,gp,712 # 13ae0 <__sf+0xb0>
   10420:	41c18513          	addi	a0,gp,1052 # 13c34 <__sf+0x204>
   10424:	00800613          	li	a2,8
   10428:	00000593          	li	a1,0
   1042c:	0f443423          	sd	s4,232(s0)
   10430:	0f343823          	sd	s3,240(s0)
   10434:	0f243c23          	sd	s2,248(s0)
   10438:	10943023          	sd	s1,256(s0)
   1043c:	16f42823          	sw	a5,368(s0)
   10440:	16043023          	sd	zero,352(s0)
   10444:	16043423          	sd	zero,360(s0)
   10448:	20042623          	sw	zero,524(s0)
   1044c:	16043c23          	sd	zero,376(s0)
   10450:	18042023          	sw	zero,384(s0)
   10454:	18042423          	sw	zero,392(s0)
   10458:	0ee43023          	sd	a4,224(s0)
   1045c:	6f8000ef          	jal	10b54 <memset>
   10460:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10464:	19443c23          	sd	s4,408(s0)
   10468:	1b343023          	sd	s3,416(s0)
   1046c:	1b243423          	sd	s2,424(s0)
   10470:	1a943823          	sd	s1,432(s0)
   10474:	02813083          	ld	ra,40(sp)
   10478:	18f43823          	sd	a5,400(s0)
   1047c:	02013403          	ld	s0,32(sp)
   10480:	01813483          	ld	s1,24(sp)
   10484:	01013903          	ld	s2,16(sp)
   10488:	00813983          	ld	s3,8(sp)
   1048c:	00013a03          	ld	s4,0(sp)
   10490:	03010113          	addi	sp,sp,48
   10494:	00008067          	ret

0000000000010498 <__sfp>:
   10498:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   1049c:	fd010113          	addi	sp,sp,-48
   104a0:	00913c23          	sd	s1,24(sp)
   104a4:	02113423          	sd	ra,40(sp)
   104a8:	02813023          	sd	s0,32(sp)
   104ac:	00050493          	mv	s1,a0
   104b0:	10078063          	beqz	a5,105b0 <__sfp+0x118>
   104b4:	000136b7          	lui	a3,0x13
   104b8:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   104bc:	0b000813          	li	a6,176
   104c0:	0086a703          	lw	a4,8(a3)
   104c4:	08e05463          	blez	a4,1054c <__sfp+0xb4>
   104c8:	02071713          	slli	a4,a4,0x20
   104cc:	02075713          	srli	a4,a4,0x20
   104d0:	03070733          	mul	a4,a4,a6
   104d4:	0106b403          	ld	s0,16(a3)
   104d8:	00e40733          	add	a4,s0,a4
   104dc:	00c0006f          	j	104e8 <__sfp+0x50>
   104e0:	0b040413          	addi	s0,s0,176
   104e4:	06e40463          	beq	s0,a4,1054c <__sfp+0xb4>
   104e8:	01041783          	lh	a5,16(s0)
   104ec:	fe079ae3          	bnez	a5,104e0 <__sfp+0x48>
   104f0:	ffff07b7          	lui	a5,0xffff0
   104f4:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc081>
   104f8:	00f42823          	sw	a5,16(s0)
   104fc:	0a042623          	sw	zero,172(s0)
   10500:	00043023          	sd	zero,0(s0)
   10504:	00043423          	sd	zero,8(s0)
   10508:	00043c23          	sd	zero,24(s0)
   1050c:	02042023          	sw	zero,32(s0)
   10510:	02042423          	sw	zero,40(s0)
   10514:	00800613          	li	a2,8
   10518:	00000593          	li	a1,0
   1051c:	0a440513          	addi	a0,s0,164
   10520:	634000ef          	jal	10b54 <memset>
   10524:	04043c23          	sd	zero,88(s0)
   10528:	06042023          	sw	zero,96(s0)
   1052c:	06043c23          	sd	zero,120(s0)
   10530:	08042023          	sw	zero,128(s0)
   10534:	02813083          	ld	ra,40(sp)
   10538:	00040513          	mv	a0,s0
   1053c:	02013403          	ld	s0,32(sp)
   10540:	01813483          	ld	s1,24(sp)
   10544:	03010113          	addi	sp,sp,48
   10548:	00008067          	ret
   1054c:	0006b403          	ld	s0,0(a3)
   10550:	00040663          	beqz	s0,1055c <__sfp+0xc4>
   10554:	00040693          	mv	a3,s0
   10558:	f69ff06f          	j	104c0 <__sfp+0x28>
   1055c:	2d800593          	li	a1,728
   10560:	00048513          	mv	a0,s1
   10564:	00d13423          	sd	a3,8(sp)
   10568:	43d000ef          	jal	111a4 <_malloc_r>
   1056c:	00813683          	ld	a3,8(sp)
   10570:	00050413          	mv	s0,a0
   10574:	04050263          	beqz	a0,105b8 <__sfp+0x120>
   10578:	00400793          	li	a5,4
   1057c:	00f52423          	sw	a5,8(a0)
   10580:	01850513          	addi	a0,a0,24
   10584:	00043023          	sd	zero,0(s0)
   10588:	00a43823          	sd	a0,16(s0)
   1058c:	2c000613          	li	a2,704
   10590:	00000593          	li	a1,0
   10594:	00d13423          	sd	a3,8(sp)
   10598:	5bc000ef          	jal	10b54 <memset>
   1059c:	00813683          	ld	a3,8(sp)
   105a0:	0b000813          	li	a6,176
   105a4:	0086b023          	sd	s0,0(a3)
   105a8:	00040693          	mv	a3,s0
   105ac:	f15ff06f          	j	104c0 <__sfp+0x28>
   105b0:	da1ff0ef          	jal	10350 <global_stdio_init.part.0>
   105b4:	f01ff06f          	j	104b4 <__sfp+0x1c>
   105b8:	0006b023          	sd	zero,0(a3)
   105bc:	00c00793          	li	a5,12
   105c0:	00f4a023          	sw	a5,0(s1)
   105c4:	f71ff06f          	j	10534 <__sfp+0x9c>

00000000000105c8 <__sinit>:
   105c8:	04853783          	ld	a5,72(a0)
   105cc:	00078463          	beqz	a5,105d4 <__sinit+0xc>
   105d0:	00008067          	ret
   105d4:	000107b7          	lui	a5,0x10
   105d8:	1a81b703          	ld	a4,424(gp) # 139c0 <__stdio_exit_handler>
   105dc:	2e478793          	addi	a5,a5,740 # 102e4 <cleanup_stdio>
   105e0:	04f53423          	sd	a5,72(a0)
   105e4:	fe0716e3          	bnez	a4,105d0 <__sinit+0x8>
   105e8:	d69ff06f          	j	10350 <global_stdio_init.part.0>

00000000000105ec <__sfp_lock_acquire>:
   105ec:	00008067          	ret

00000000000105f0 <__sfp_lock_release>:
   105f0:	00008067          	ret

00000000000105f4 <__fp_lock_all>:
   105f4:	00013637          	lui	a2,0x13
   105f8:	000105b7          	lui	a1,0x10
   105fc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10600:	2c058593          	addi	a1,a1,704 # 102c0 <__fp_lock>
   10604:	00000513          	li	a0,0
   10608:	01c0006f          	j	10624 <_fwalk_sglue>

000000000001060c <__fp_unlock_all>:
   1060c:	00013637          	lui	a2,0x13
   10610:	000105b7          	lui	a1,0x10
   10614:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10618:	34858593          	addi	a1,a1,840 # 10348 <__fp_unlock>
   1061c:	00000513          	li	a0,0
   10620:	0040006f          	j	10624 <_fwalk_sglue>

0000000000010624 <_fwalk_sglue>:
   10624:	fb010113          	addi	sp,sp,-80
   10628:	03213823          	sd	s2,48(sp)
   1062c:	03313423          	sd	s3,40(sp)
   10630:	03413023          	sd	s4,32(sp)
   10634:	01513c23          	sd	s5,24(sp)
   10638:	01613823          	sd	s6,16(sp)
   1063c:	01713423          	sd	s7,8(sp)
   10640:	01813023          	sd	s8,0(sp)
   10644:	04113423          	sd	ra,72(sp)
   10648:	04813023          	sd	s0,64(sp)
   1064c:	02913c23          	sd	s1,56(sp)
   10650:	00060993          	mv	s3,a2
   10654:	00050a93          	mv	s5,a0
   10658:	00058b13          	mv	s6,a1
   1065c:	00000913          	li	s2,0
   10660:	0b000b93          	li	s7,176
   10664:	00100c13          	li	s8,1
   10668:	fff00a13          	li	s4,-1
   1066c:	0089a483          	lw	s1,8(s3)
   10670:	04905263          	blez	s1,106b4 <_fwalk_sglue+0x90>
   10674:	02049493          	slli	s1,s1,0x20
   10678:	0204d493          	srli	s1,s1,0x20
   1067c:	037484b3          	mul	s1,s1,s7
   10680:	0109b403          	ld	s0,16(s3)
   10684:	009404b3          	add	s1,s0,s1
   10688:	01045783          	lhu	a5,16(s0)
   1068c:	02fc7063          	bgeu	s8,a5,106ac <_fwalk_sglue+0x88>
   10690:	01241783          	lh	a5,18(s0)
   10694:	00040593          	mv	a1,s0
   10698:	000a8513          	mv	a0,s5
   1069c:	01478863          	beq	a5,s4,106ac <_fwalk_sglue+0x88>
   106a0:	000b00e7          	jalr	s6
   106a4:	01256933          	or	s2,a0,s2
   106a8:	0009091b          	sext.w	s2,s2
   106ac:	0b040413          	addi	s0,s0,176
   106b0:	fc941ce3          	bne	s0,s1,10688 <_fwalk_sglue+0x64>
   106b4:	0009b983          	ld	s3,0(s3)
   106b8:	fa099ae3          	bnez	s3,1066c <_fwalk_sglue+0x48>
   106bc:	04813083          	ld	ra,72(sp)
   106c0:	04013403          	ld	s0,64(sp)
   106c4:	03813483          	ld	s1,56(sp)
   106c8:	02813983          	ld	s3,40(sp)
   106cc:	02013a03          	ld	s4,32(sp)
   106d0:	01813a83          	ld	s5,24(sp)
   106d4:	01013b03          	ld	s6,16(sp)
   106d8:	00813b83          	ld	s7,8(sp)
   106dc:	00013c03          	ld	s8,0(sp)
   106e0:	00090513          	mv	a0,s2
   106e4:	03013903          	ld	s2,48(sp)
   106e8:	05010113          	addi	sp,sp,80
   106ec:	00008067          	ret

00000000000106f0 <__sread>:
   106f0:	ff010113          	addi	sp,sp,-16
   106f4:	00813023          	sd	s0,0(sp)
   106f8:	00058413          	mv	s0,a1
   106fc:	01259583          	lh	a1,18(a1)
   10700:	00113423          	sd	ra,8(sp)
   10704:	2ec000ef          	jal	109f0 <_read_r>
   10708:	02054063          	bltz	a0,10728 <__sread+0x38>
   1070c:	09043783          	ld	a5,144(s0)
   10710:	00813083          	ld	ra,8(sp)
   10714:	00a787b3          	add	a5,a5,a0
   10718:	08f43823          	sd	a5,144(s0)
   1071c:	00013403          	ld	s0,0(sp)
   10720:	01010113          	addi	sp,sp,16
   10724:	00008067          	ret
   10728:	01045783          	lhu	a5,16(s0)
   1072c:	fffff737          	lui	a4,0xfffff
   10730:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   10734:	00e7f7b3          	and	a5,a5,a4
   10738:	00813083          	ld	ra,8(sp)
   1073c:	00f41823          	sh	a5,16(s0)
   10740:	00013403          	ld	s0,0(sp)
   10744:	01010113          	addi	sp,sp,16
   10748:	00008067          	ret

000000000001074c <__seofread>:
   1074c:	00000513          	li	a0,0
   10750:	00008067          	ret

0000000000010754 <__swrite>:
   10754:	01059783          	lh	a5,16(a1)
   10758:	fd010113          	addi	sp,sp,-48
   1075c:	00068313          	mv	t1,a3
   10760:	02113423          	sd	ra,40(sp)
   10764:	1007f693          	andi	a3,a5,256
   10768:	00058713          	mv	a4,a1
   1076c:	00060893          	mv	a7,a2
   10770:	00050813          	mv	a6,a0
   10774:	02069863          	bnez	a3,107a4 <__swrite+0x50>
   10778:	fffff6b7          	lui	a3,0xfffff
   1077c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   10780:	02813083          	ld	ra,40(sp)
   10784:	00d7f7b3          	and	a5,a5,a3
   10788:	01271583          	lh	a1,18(a4)
   1078c:	00f71823          	sh	a5,16(a4)
   10790:	00030693          	mv	a3,t1
   10794:	00088613          	mv	a2,a7
   10798:	00080513          	mv	a0,a6
   1079c:	03010113          	addi	sp,sp,48
   107a0:	2b80006f          	j	10a58 <_write_r>
   107a4:	01259583          	lh	a1,18(a1)
   107a8:	00c13823          	sd	a2,16(sp)
   107ac:	00200693          	li	a3,2
   107b0:	00000613          	li	a2,0
   107b4:	00613c23          	sd	t1,24(sp)
   107b8:	00e13023          	sd	a4,0(sp)
   107bc:	00a13423          	sd	a0,8(sp)
   107c0:	1c8000ef          	jal	10988 <_lseek_r>
   107c4:	00013703          	ld	a4,0(sp)
   107c8:	01813303          	ld	t1,24(sp)
   107cc:	01013883          	ld	a7,16(sp)
   107d0:	01071783          	lh	a5,16(a4)
   107d4:	00813803          	ld	a6,8(sp)
   107d8:	fa1ff06f          	j	10778 <__swrite+0x24>

00000000000107dc <__sseek>:
   107dc:	ff010113          	addi	sp,sp,-16
   107e0:	00813023          	sd	s0,0(sp)
   107e4:	00058413          	mv	s0,a1
   107e8:	01259583          	lh	a1,18(a1)
   107ec:	00113423          	sd	ra,8(sp)
   107f0:	198000ef          	jal	10988 <_lseek_r>
   107f4:	fff00713          	li	a4,-1
   107f8:	01041783          	lh	a5,16(s0)
   107fc:	02e50263          	beq	a0,a4,10820 <__sseek+0x44>
   10800:	00001737          	lui	a4,0x1
   10804:	00e7e7b3          	or	a5,a5,a4
   10808:	00813083          	ld	ra,8(sp)
   1080c:	08a43823          	sd	a0,144(s0)
   10810:	00f41823          	sh	a5,16(s0)
   10814:	00013403          	ld	s0,0(sp)
   10818:	01010113          	addi	sp,sp,16
   1081c:	00008067          	ret
   10820:	80050713          	addi	a4,a0,-2048
   10824:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10828:	00e7f7b3          	and	a5,a5,a4
   1082c:	00813083          	ld	ra,8(sp)
   10830:	00f41823          	sh	a5,16(s0)
   10834:	00013403          	ld	s0,0(sp)
   10838:	01010113          	addi	sp,sp,16
   1083c:	00008067          	ret

0000000000010840 <__sclose>:
   10840:	01259583          	lh	a1,18(a1)
   10844:	0040006f          	j	10848 <_close_r>

0000000000010848 <_close_r>:
   10848:	fe010113          	addi	sp,sp,-32
   1084c:	00813823          	sd	s0,16(sp)
   10850:	00913423          	sd	s1,8(sp)
   10854:	00050493          	mv	s1,a0
   10858:	00058513          	mv	a0,a1
   1085c:	00113c23          	sd	ra,24(sp)
   10860:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   10864:	7e4010ef          	jal	12048 <_close>
   10868:	fff00793          	li	a5,-1
   1086c:	00f50c63          	beq	a0,a5,10884 <_close_r+0x3c>
   10870:	01813083          	ld	ra,24(sp)
   10874:	01013403          	ld	s0,16(sp)
   10878:	00813483          	ld	s1,8(sp)
   1087c:	02010113          	addi	sp,sp,32
   10880:	00008067          	ret
   10884:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   10888:	fe0784e3          	beqz	a5,10870 <_close_r+0x28>
   1088c:	01813083          	ld	ra,24(sp)
   10890:	01013403          	ld	s0,16(sp)
   10894:	00f4a023          	sw	a5,0(s1)
   10898:	00813483          	ld	s1,8(sp)
   1089c:	02010113          	addi	sp,sp,32
   108a0:	00008067          	ret

00000000000108a4 <_reclaim_reent>:
   108a4:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   108a8:	0ca78e63          	beq	a5,a0,10984 <_reclaim_reent+0xe0>
   108ac:	06853583          	ld	a1,104(a0)
   108b0:	fd010113          	addi	sp,sp,-48
   108b4:	00913c23          	sd	s1,24(sp)
   108b8:	02113423          	sd	ra,40(sp)
   108bc:	02813023          	sd	s0,32(sp)
   108c0:	00050493          	mv	s1,a0
   108c4:	04058863          	beqz	a1,10914 <_reclaim_reent+0x70>
   108c8:	01213823          	sd	s2,16(sp)
   108cc:	01313423          	sd	s3,8(sp)
   108d0:	00000913          	li	s2,0
   108d4:	20000993          	li	s3,512
   108d8:	012587b3          	add	a5,a1,s2
   108dc:	0007b403          	ld	s0,0(a5)
   108e0:	00040e63          	beqz	s0,108fc <_reclaim_reent+0x58>
   108e4:	00040593          	mv	a1,s0
   108e8:	00043403          	ld	s0,0(s0)
   108ec:	00048513          	mv	a0,s1
   108f0:	5b0000ef          	jal	10ea0 <_free_r>
   108f4:	fe0418e3          	bnez	s0,108e4 <_reclaim_reent+0x40>
   108f8:	0684b583          	ld	a1,104(s1)
   108fc:	00890913          	addi	s2,s2,8
   10900:	fd391ce3          	bne	s2,s3,108d8 <_reclaim_reent+0x34>
   10904:	00048513          	mv	a0,s1
   10908:	598000ef          	jal	10ea0 <_free_r>
   1090c:	01013903          	ld	s2,16(sp)
   10910:	00813983          	ld	s3,8(sp)
   10914:	0504b583          	ld	a1,80(s1)
   10918:	00058663          	beqz	a1,10924 <_reclaim_reent+0x80>
   1091c:	00048513          	mv	a0,s1
   10920:	580000ef          	jal	10ea0 <_free_r>
   10924:	0604b403          	ld	s0,96(s1)
   10928:	00040c63          	beqz	s0,10940 <_reclaim_reent+0x9c>
   1092c:	00040593          	mv	a1,s0
   10930:	00043403          	ld	s0,0(s0)
   10934:	00048513          	mv	a0,s1
   10938:	568000ef          	jal	10ea0 <_free_r>
   1093c:	fe0418e3          	bnez	s0,1092c <_reclaim_reent+0x88>
   10940:	0784b583          	ld	a1,120(s1)
   10944:	00058663          	beqz	a1,10950 <_reclaim_reent+0xac>
   10948:	00048513          	mv	a0,s1
   1094c:	554000ef          	jal	10ea0 <_free_r>
   10950:	0484b783          	ld	a5,72(s1)
   10954:	00078e63          	beqz	a5,10970 <_reclaim_reent+0xcc>
   10958:	02013403          	ld	s0,32(sp)
   1095c:	02813083          	ld	ra,40(sp)
   10960:	00048513          	mv	a0,s1
   10964:	01813483          	ld	s1,24(sp)
   10968:	03010113          	addi	sp,sp,48
   1096c:	00078067          	jr	a5
   10970:	02813083          	ld	ra,40(sp)
   10974:	02013403          	ld	s0,32(sp)
   10978:	01813483          	ld	s1,24(sp)
   1097c:	03010113          	addi	sp,sp,48
   10980:	00008067          	ret
   10984:	00008067          	ret

0000000000010988 <_lseek_r>:
   10988:	fe010113          	addi	sp,sp,-32
   1098c:	00058793          	mv	a5,a1
   10990:	00813823          	sd	s0,16(sp)
   10994:	00913423          	sd	s1,8(sp)
   10998:	00060593          	mv	a1,a2
   1099c:	00050493          	mv	s1,a0
   109a0:	00068613          	mv	a2,a3
   109a4:	00078513          	mv	a0,a5
   109a8:	00113c23          	sd	ra,24(sp)
   109ac:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   109b0:	708010ef          	jal	120b8 <_lseek>
   109b4:	fff00793          	li	a5,-1
   109b8:	00f50c63          	beq	a0,a5,109d0 <_lseek_r+0x48>
   109bc:	01813083          	ld	ra,24(sp)
   109c0:	01013403          	ld	s0,16(sp)
   109c4:	00813483          	ld	s1,8(sp)
   109c8:	02010113          	addi	sp,sp,32
   109cc:	00008067          	ret
   109d0:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   109d4:	fe0784e3          	beqz	a5,109bc <_lseek_r+0x34>
   109d8:	01813083          	ld	ra,24(sp)
   109dc:	01013403          	ld	s0,16(sp)
   109e0:	00f4a023          	sw	a5,0(s1)
   109e4:	00813483          	ld	s1,8(sp)
   109e8:	02010113          	addi	sp,sp,32
   109ec:	00008067          	ret

00000000000109f0 <_read_r>:
   109f0:	fe010113          	addi	sp,sp,-32
   109f4:	00058793          	mv	a5,a1
   109f8:	00813823          	sd	s0,16(sp)
   109fc:	00913423          	sd	s1,8(sp)
   10a00:	00060593          	mv	a1,a2
   10a04:	00050493          	mv	s1,a0
   10a08:	00068613          	mv	a2,a3
   10a0c:	00078513          	mv	a0,a5
   10a10:	00113c23          	sd	ra,24(sp)
   10a14:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   10a18:	6e0010ef          	jal	120f8 <_read>
   10a1c:	fff00793          	li	a5,-1
   10a20:	00f50c63          	beq	a0,a5,10a38 <_read_r+0x48>
   10a24:	01813083          	ld	ra,24(sp)
   10a28:	01013403          	ld	s0,16(sp)
   10a2c:	00813483          	ld	s1,8(sp)
   10a30:	02010113          	addi	sp,sp,32
   10a34:	00008067          	ret
   10a38:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   10a3c:	fe0784e3          	beqz	a5,10a24 <_read_r+0x34>
   10a40:	01813083          	ld	ra,24(sp)
   10a44:	01013403          	ld	s0,16(sp)
   10a48:	00f4a023          	sw	a5,0(s1)
   10a4c:	00813483          	ld	s1,8(sp)
   10a50:	02010113          	addi	sp,sp,32
   10a54:	00008067          	ret

0000000000010a58 <_write_r>:
   10a58:	fe010113          	addi	sp,sp,-32
   10a5c:	00058793          	mv	a5,a1
   10a60:	00813823          	sd	s0,16(sp)
   10a64:	00913423          	sd	s1,8(sp)
   10a68:	00060593          	mv	a1,a2
   10a6c:	00050493          	mv	s1,a0
   10a70:	00068613          	mv	a2,a3
   10a74:	00078513          	mv	a0,a5
   10a78:	00113c23          	sd	ra,24(sp)
   10a7c:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   10a80:	730010ef          	jal	121b0 <_write>
   10a84:	fff00793          	li	a5,-1
   10a88:	00f50c63          	beq	a0,a5,10aa0 <_write_r+0x48>
   10a8c:	01813083          	ld	ra,24(sp)
   10a90:	01013403          	ld	s0,16(sp)
   10a94:	00813483          	ld	s1,8(sp)
   10a98:	02010113          	addi	sp,sp,32
   10a9c:	00008067          	ret
   10aa0:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   10aa4:	fe0784e3          	beqz	a5,10a8c <_write_r+0x34>
   10aa8:	01813083          	ld	ra,24(sp)
   10aac:	01013403          	ld	s0,16(sp)
   10ab0:	00f4a023          	sw	a5,0(s1)
   10ab4:	00813483          	ld	s1,8(sp)
   10ab8:	02010113          	addi	sp,sp,32
   10abc:	00008067          	ret

0000000000010ac0 <__libc_init_array>:
   10ac0:	fe010113          	addi	sp,sp,-32
   10ac4:	00813823          	sd	s0,16(sp)
   10ac8:	01213023          	sd	s2,0(sp)
   10acc:	00013437          	lui	s0,0x13
   10ad0:	00013937          	lui	s2,0x13
   10ad4:	00113c23          	sd	ra,24(sp)
   10ad8:	00913423          	sd	s1,8(sp)
   10adc:	00090913          	mv	s2,s2
   10ae0:	00040413          	mv	s0,s0
   10ae4:	02890263          	beq	s2,s0,10b08 <__libc_init_array+0x48>
   10ae8:	40890933          	sub	s2,s2,s0
   10aec:	40395913          	srai	s2,s2,0x3
   10af0:	00000493          	li	s1,0
   10af4:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10af8:	00148493          	addi	s1,s1,1
   10afc:	00840413          	addi	s0,s0,8
   10b00:	000780e7          	jalr	a5
   10b04:	ff24e8e3          	bltu	s1,s2,10af4 <__libc_init_array+0x34>
   10b08:	00013937          	lui	s2,0x13
   10b0c:	00013437          	lui	s0,0x13
   10b10:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b14:	00040413          	mv	s0,s0
   10b18:	02890263          	beq	s2,s0,10b3c <__libc_init_array+0x7c>
   10b1c:	40890933          	sub	s2,s2,s0
   10b20:	40395913          	srai	s2,s2,0x3
   10b24:	00000493          	li	s1,0
   10b28:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b2c:	00148493          	addi	s1,s1,1
   10b30:	00840413          	addi	s0,s0,8
   10b34:	000780e7          	jalr	a5
   10b38:	ff24e8e3          	bltu	s1,s2,10b28 <__libc_init_array+0x68>
   10b3c:	01813083          	ld	ra,24(sp)
   10b40:	01013403          	ld	s0,16(sp)
   10b44:	00813483          	ld	s1,8(sp)
   10b48:	00013903          	ld	s2,0(sp)
   10b4c:	02010113          	addi	sp,sp,32
   10b50:	00008067          	ret

0000000000010b54 <memset>:
   10b54:	00f00313          	li	t1,15
   10b58:	00050713          	mv	a4,a0
   10b5c:	02c37a63          	bgeu	t1,a2,10b90 <memset+0x3c>
   10b60:	00f77793          	andi	a5,a4,15
   10b64:	0a079063          	bnez	a5,10c04 <memset+0xb0>
   10b68:	06059e63          	bnez	a1,10be4 <memset+0x90>
   10b6c:	ff067693          	andi	a3,a2,-16
   10b70:	00f67613          	andi	a2,a2,15
   10b74:	00e686b3          	add	a3,a3,a4
   10b78:	00b73023          	sd	a1,0(a4)
   10b7c:	00b73423          	sd	a1,8(a4)
   10b80:	01070713          	addi	a4,a4,16
   10b84:	fed76ae3          	bltu	a4,a3,10b78 <memset+0x24>
   10b88:	00061463          	bnez	a2,10b90 <memset+0x3c>
   10b8c:	00008067          	ret
   10b90:	40c306b3          	sub	a3,t1,a2
   10b94:	00269693          	slli	a3,a3,0x2
   10b98:	00000297          	auipc	t0,0x0
   10b9c:	005686b3          	add	a3,a3,t0
   10ba0:	00c68067          	jr	12(a3)
   10ba4:	00b70723          	sb	a1,14(a4)
   10ba8:	00b706a3          	sb	a1,13(a4)
   10bac:	00b70623          	sb	a1,12(a4)
   10bb0:	00b705a3          	sb	a1,11(a4)
   10bb4:	00b70523          	sb	a1,10(a4)
   10bb8:	00b704a3          	sb	a1,9(a4)
   10bbc:	00b70423          	sb	a1,8(a4)
   10bc0:	00b703a3          	sb	a1,7(a4)
   10bc4:	00b70323          	sb	a1,6(a4)
   10bc8:	00b702a3          	sb	a1,5(a4)
   10bcc:	00b70223          	sb	a1,4(a4)
   10bd0:	00b701a3          	sb	a1,3(a4)
   10bd4:	00b70123          	sb	a1,2(a4)
   10bd8:	00b700a3          	sb	a1,1(a4)
   10bdc:	00b70023          	sb	a1,0(a4)
   10be0:	00008067          	ret
   10be4:	0ff5f593          	zext.b	a1,a1
   10be8:	00859693          	slli	a3,a1,0x8
   10bec:	00d5e5b3          	or	a1,a1,a3
   10bf0:	01059693          	slli	a3,a1,0x10
   10bf4:	00d5e5b3          	or	a1,a1,a3
   10bf8:	02059693          	slli	a3,a1,0x20
   10bfc:	00d5e5b3          	or	a1,a1,a3
   10c00:	f6dff06f          	j	10b6c <memset+0x18>
   10c04:	00279693          	slli	a3,a5,0x2
   10c08:	00000297          	auipc	t0,0x0
   10c0c:	005686b3          	add	a3,a3,t0
   10c10:	00008293          	mv	t0,ra
   10c14:	f98680e7          	jalr	-104(a3)
   10c18:	00028093          	mv	ra,t0
   10c1c:	ff078793          	addi	a5,a5,-16
   10c20:	40f70733          	sub	a4,a4,a5
   10c24:	00f60633          	add	a2,a2,a5
   10c28:	f6c374e3          	bgeu	t1,a2,10b90 <memset+0x3c>
   10c2c:	f3dff06f          	j	10b68 <memset+0x14>

0000000000010c30 <__call_exitprocs>:
   10c30:	fb010113          	addi	sp,sp,-80
   10c34:	03413023          	sd	s4,32(sp)
   10c38:	03213823          	sd	s2,48(sp)
   10c3c:	1b81b903          	ld	s2,440(gp) # 139d0 <__atexit>
   10c40:	04113423          	sd	ra,72(sp)
   10c44:	06090e63          	beqz	s2,10cc0 <__call_exitprocs+0x90>
   10c48:	03313423          	sd	s3,40(sp)
   10c4c:	01513c23          	sd	s5,24(sp)
   10c50:	01613823          	sd	s6,16(sp)
   10c54:	01713423          	sd	s7,8(sp)
   10c58:	04813023          	sd	s0,64(sp)
   10c5c:	02913c23          	sd	s1,56(sp)
   10c60:	01813023          	sd	s8,0(sp)
   10c64:	00050b13          	mv	s6,a0
   10c68:	00058b93          	mv	s7,a1
   10c6c:	fff00993          	li	s3,-1
   10c70:	00100a93          	li	s5,1
   10c74:	00892403          	lw	s0,8(s2)
   10c78:	fff4041b          	addiw	s0,s0,-1
   10c7c:	02044463          	bltz	s0,10ca4 <__call_exitprocs+0x74>
   10c80:	01090493          	addi	s1,s2,16
   10c84:	00341793          	slli	a5,s0,0x3
   10c88:	00f484b3          	add	s1,s1,a5
   10c8c:	040b8463          	beqz	s7,10cd4 <__call_exitprocs+0xa4>
   10c90:	2004b783          	ld	a5,512(s1)
   10c94:	05778063          	beq	a5,s7,10cd4 <__call_exitprocs+0xa4>
   10c98:	fff4041b          	addiw	s0,s0,-1
   10c9c:	ff848493          	addi	s1,s1,-8
   10ca0:	ff3418e3          	bne	s0,s3,10c90 <__call_exitprocs+0x60>
   10ca4:	04013403          	ld	s0,64(sp)
   10ca8:	03813483          	ld	s1,56(sp)
   10cac:	02813983          	ld	s3,40(sp)
   10cb0:	01813a83          	ld	s5,24(sp)
   10cb4:	01013b03          	ld	s6,16(sp)
   10cb8:	00813b83          	ld	s7,8(sp)
   10cbc:	00013c03          	ld	s8,0(sp)
   10cc0:	04813083          	ld	ra,72(sp)
   10cc4:	03013903          	ld	s2,48(sp)
   10cc8:	02013a03          	ld	s4,32(sp)
   10ccc:	05010113          	addi	sp,sp,80
   10cd0:	00008067          	ret
   10cd4:	00892783          	lw	a5,8(s2)
   10cd8:	0004b683          	ld	a3,0(s1)
   10cdc:	fff7879b          	addiw	a5,a5,-1
   10ce0:	06878a63          	beq	a5,s0,10d54 <__call_exitprocs+0x124>
   10ce4:	0004b023          	sd	zero,0(s1)
   10ce8:	02068663          	beqz	a3,10d14 <__call_exitprocs+0xe4>
   10cec:	31092783          	lw	a5,784(s2)
   10cf0:	008a973b          	sllw	a4,s5,s0
   10cf4:	00892c03          	lw	s8,8(s2)
   10cf8:	00e7f7b3          	and	a5,a5,a4
   10cfc:	02079463          	bnez	a5,10d24 <__call_exitprocs+0xf4>
   10d00:	000680e7          	jalr	a3
   10d04:	00892703          	lw	a4,8(s2)
   10d08:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   10d0c:	03871e63          	bne	a4,s8,10d48 <__call_exitprocs+0x118>
   10d10:	03279c63          	bne	a5,s2,10d48 <__call_exitprocs+0x118>
   10d14:	fff4041b          	addiw	s0,s0,-1
   10d18:	ff848493          	addi	s1,s1,-8
   10d1c:	f73418e3          	bne	s0,s3,10c8c <__call_exitprocs+0x5c>
   10d20:	f85ff06f          	j	10ca4 <__call_exitprocs+0x74>
   10d24:	31492783          	lw	a5,788(s2)
   10d28:	1004b583          	ld	a1,256(s1)
   10d2c:	00f77733          	and	a4,a4,a5
   10d30:	02071663          	bnez	a4,10d5c <__call_exitprocs+0x12c>
   10d34:	000b0513          	mv	a0,s6
   10d38:	000680e7          	jalr	a3
   10d3c:	00892703          	lw	a4,8(s2)
   10d40:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   10d44:	fd8706e3          	beq	a4,s8,10d10 <__call_exitprocs+0xe0>
   10d48:	f4078ee3          	beqz	a5,10ca4 <__call_exitprocs+0x74>
   10d4c:	00078913          	mv	s2,a5
   10d50:	f25ff06f          	j	10c74 <__call_exitprocs+0x44>
   10d54:	00892423          	sw	s0,8(s2)
   10d58:	f91ff06f          	j	10ce8 <__call_exitprocs+0xb8>
   10d5c:	00058513          	mv	a0,a1
   10d60:	000680e7          	jalr	a3
   10d64:	fa1ff06f          	j	10d04 <__call_exitprocs+0xd4>

0000000000010d68 <atexit>:
   10d68:	00050593          	mv	a1,a0
   10d6c:	00000693          	li	a3,0
   10d70:	00000613          	li	a2,0
   10d74:	00000513          	li	a0,0
   10d78:	2340106f          	j	11fac <__register_exitproc>

0000000000010d7c <_malloc_trim_r>:
   10d7c:	fd010113          	addi	sp,sp,-48
   10d80:	01213823          	sd	s2,16(sp)
   10d84:	00013937          	lui	s2,0x13
   10d88:	02813023          	sd	s0,32(sp)
   10d8c:	00913c23          	sd	s1,24(sp)
   10d90:	01313423          	sd	s3,8(sp)
   10d94:	00058413          	mv	s0,a1
   10d98:	02113423          	sd	ra,40(sp)
   10d9c:	00050993          	mv	s3,a0
   10da0:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10da4:	4e5000ef          	jal	11a88 <__malloc_lock>
   10da8:	01093783          	ld	a5,16(s2)
   10dac:	00001737          	lui	a4,0x1
   10db0:	0087b483          	ld	s1,8(a5)
   10db4:	ffc4f493          	andi	s1,s1,-4
   10db8:	7ff48793          	addi	a5,s1,2047
   10dbc:	7e078793          	addi	a5,a5,2016
   10dc0:	40878433          	sub	s0,a5,s0
   10dc4:	00c45413          	srli	s0,s0,0xc
   10dc8:	fff40413          	addi	s0,s0,-1
   10dcc:	00c41413          	slli	s0,s0,0xc
   10dd0:	00e44e63          	blt	s0,a4,10dec <_malloc_trim_r+0x70>
   10dd4:	00000593          	li	a1,0
   10dd8:	00098513          	mv	a0,s3
   10ddc:	118010ef          	jal	11ef4 <_sbrk_r>
   10de0:	01093783          	ld	a5,16(s2)
   10de4:	009787b3          	add	a5,a5,s1
   10de8:	02f50663          	beq	a0,a5,10e14 <_malloc_trim_r+0x98>
   10dec:	00098513          	mv	a0,s3
   10df0:	49d000ef          	jal	11a8c <__malloc_unlock>
   10df4:	02813083          	ld	ra,40(sp)
   10df8:	02013403          	ld	s0,32(sp)
   10dfc:	01813483          	ld	s1,24(sp)
   10e00:	01013903          	ld	s2,16(sp)
   10e04:	00813983          	ld	s3,8(sp)
   10e08:	00000513          	li	a0,0
   10e0c:	03010113          	addi	sp,sp,48
   10e10:	00008067          	ret
   10e14:	408005b3          	neg	a1,s0
   10e18:	00098513          	mv	a0,s3
   10e1c:	0d8010ef          	jal	11ef4 <_sbrk_r>
   10e20:	fff00793          	li	a5,-1
   10e24:	04f50463          	beq	a0,a5,10e6c <_malloc_trim_r+0xf0>
   10e28:	01093683          	ld	a3,16(s2)
   10e2c:	4281a783          	lw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   10e30:	408484b3          	sub	s1,s1,s0
   10e34:	0014e493          	ori	s1,s1,1
   10e38:	00098513          	mv	a0,s3
   10e3c:	408787bb          	subw	a5,a5,s0
   10e40:	0096b423          	sd	s1,8(a3)
   10e44:	42f1a423          	sw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   10e48:	445000ef          	jal	11a8c <__malloc_unlock>
   10e4c:	02813083          	ld	ra,40(sp)
   10e50:	02013403          	ld	s0,32(sp)
   10e54:	01813483          	ld	s1,24(sp)
   10e58:	01013903          	ld	s2,16(sp)
   10e5c:	00813983          	ld	s3,8(sp)
   10e60:	00100513          	li	a0,1
   10e64:	03010113          	addi	sp,sp,48
   10e68:	00008067          	ret
   10e6c:	00000593          	li	a1,0
   10e70:	00098513          	mv	a0,s3
   10e74:	080010ef          	jal	11ef4 <_sbrk_r>
   10e78:	01093703          	ld	a4,16(s2)
   10e7c:	01f00693          	li	a3,31
   10e80:	40e507b3          	sub	a5,a0,a4
   10e84:	f6f6d4e3          	bge	a3,a5,10dec <_malloc_trim_r+0x70>
   10e88:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10e8c:	0017e793          	ori	a5,a5,1
   10e90:	40c50533          	sub	a0,a0,a2
   10e94:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10e98:	42a1a423          	sw	a0,1064(gp) # 13c40 <__malloc_current_mallinfo>
   10e9c:	f51ff06f          	j	10dec <_malloc_trim_r+0x70>

0000000000010ea0 <_free_r>:
   10ea0:	12058863          	beqz	a1,10fd0 <_free_r+0x130>
   10ea4:	fe010113          	addi	sp,sp,-32
   10ea8:	00813823          	sd	s0,16(sp)
   10eac:	00b13423          	sd	a1,8(sp)
   10eb0:	00050413          	mv	s0,a0
   10eb4:	00113c23          	sd	ra,24(sp)
   10eb8:	3d1000ef          	jal	11a88 <__malloc_lock>
   10ebc:	00813583          	ld	a1,8(sp)
   10ec0:	00013837          	lui	a6,0x13
   10ec4:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10ec8:	ff85b503          	ld	a0,-8(a1)
   10ecc:	ff058713          	addi	a4,a1,-16
   10ed0:	01083883          	ld	a7,16(a6)
   10ed4:	ffe57793          	andi	a5,a0,-2
   10ed8:	00f70633          	add	a2,a4,a5
   10edc:	00863683          	ld	a3,8(a2)
   10ee0:	00157313          	andi	t1,a0,1
   10ee4:	ffc6f693          	andi	a3,a3,-4
   10ee8:	18c88e63          	beq	a7,a2,11084 <_free_r+0x1e4>
   10eec:	00d63423          	sd	a3,8(a2)
   10ef0:	00d608b3          	add	a7,a2,a3
   10ef4:	0088b883          	ld	a7,8(a7)
   10ef8:	0018f893          	andi	a7,a7,1
   10efc:	08031e63          	bnez	t1,10f98 <_free_r+0xf8>
   10f00:	ff05b303          	ld	t1,-16(a1)
   10f04:	000135b7          	lui	a1,0x13
   10f08:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10f0c:	40670733          	sub	a4,a4,t1
   10f10:	01073503          	ld	a0,16(a4)
   10f14:	006787b3          	add	a5,a5,t1
   10f18:	14b50063          	beq	a0,a1,11058 <_free_r+0x1b8>
   10f1c:	01873303          	ld	t1,24(a4)
   10f20:	00653c23          	sd	t1,24(a0)
   10f24:	00a33823          	sd	a0,16(t1) # 10220 <cal_n+0x4>
   10f28:	1a088263          	beqz	a7,110cc <_free_r+0x22c>
   10f2c:	0017e693          	ori	a3,a5,1
   10f30:	00d73423          	sd	a3,8(a4)
   10f34:	00f63023          	sd	a5,0(a2)
   10f38:	1ff00693          	li	a3,511
   10f3c:	0af6e663          	bltu	a3,a5,10fe8 <_free_r+0x148>
   10f40:	0037d793          	srli	a5,a5,0x3
   10f44:	00179693          	slli	a3,a5,0x1
   10f48:	0026869b          	addiw	a3,a3,2
   10f4c:	00369693          	slli	a3,a3,0x3
   10f50:	00883503          	ld	a0,8(a6)
   10f54:	00d806b3          	add	a3,a6,a3
   10f58:	0006b583          	ld	a1,0(a3)
   10f5c:	4027d61b          	sraiw	a2,a5,0x2
   10f60:	00100793          	li	a5,1
   10f64:	00c797b3          	sll	a5,a5,a2
   10f68:	00a7e7b3          	or	a5,a5,a0
   10f6c:	ff068613          	addi	a2,a3,-16
   10f70:	00b73823          	sd	a1,16(a4)
   10f74:	00c73c23          	sd	a2,24(a4)
   10f78:	00f83423          	sd	a5,8(a6)
   10f7c:	00e6b023          	sd	a4,0(a3)
   10f80:	00e5bc23          	sd	a4,24(a1)
   10f84:	00040513          	mv	a0,s0
   10f88:	01013403          	ld	s0,16(sp)
   10f8c:	01813083          	ld	ra,24(sp)
   10f90:	02010113          	addi	sp,sp,32
   10f94:	2f90006f          	j	11a8c <__malloc_unlock>
   10f98:	02089e63          	bnez	a7,10fd4 <_free_r+0x134>
   10f9c:	000135b7          	lui	a1,0x13
   10fa0:	00d787b3          	add	a5,a5,a3
   10fa4:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10fa8:	01063683          	ld	a3,16(a2)
   10fac:	0017e893          	ori	a7,a5,1
   10fb0:	00f70533          	add	a0,a4,a5
   10fb4:	16b68663          	beq	a3,a1,11120 <_free_r+0x280>
   10fb8:	01863603          	ld	a2,24(a2)
   10fbc:	00c6bc23          	sd	a2,24(a3)
   10fc0:	00d63823          	sd	a3,16(a2)
   10fc4:	01173423          	sd	a7,8(a4)
   10fc8:	00f53023          	sd	a5,0(a0)
   10fcc:	f6dff06f          	j	10f38 <_free_r+0x98>
   10fd0:	00008067          	ret
   10fd4:	00156513          	ori	a0,a0,1
   10fd8:	fea5bc23          	sd	a0,-8(a1)
   10fdc:	00f63023          	sd	a5,0(a2)
   10fe0:	1ff00693          	li	a3,511
   10fe4:	f4f6fee3          	bgeu	a3,a5,10f40 <_free_r+0xa0>
   10fe8:	0097d693          	srli	a3,a5,0x9
   10fec:	00400613          	li	a2,4
   10ff0:	0ed66263          	bltu	a2,a3,110d4 <_free_r+0x234>
   10ff4:	0067d693          	srli	a3,a5,0x6
   10ff8:	00169593          	slli	a1,a3,0x1
   10ffc:	0725859b          	addiw	a1,a1,114
   11000:	00359593          	slli	a1,a1,0x3
   11004:	0386861b          	addiw	a2,a3,56
   11008:	00b805b3          	add	a1,a6,a1
   1100c:	0005b683          	ld	a3,0(a1)
   11010:	ff058593          	addi	a1,a1,-16
   11014:	00d59863          	bne	a1,a3,11024 <_free_r+0x184>
   11018:	1240006f          	j	1113c <_free_r+0x29c>
   1101c:	0106b683          	ld	a3,16(a3)
   11020:	00d58863          	beq	a1,a3,11030 <_free_r+0x190>
   11024:	0086b603          	ld	a2,8(a3)
   11028:	ffc67613          	andi	a2,a2,-4
   1102c:	fec7e8e3          	bltu	a5,a2,1101c <_free_r+0x17c>
   11030:	0186b583          	ld	a1,24(a3)
   11034:	00b73c23          	sd	a1,24(a4)
   11038:	00d73823          	sd	a3,16(a4)
   1103c:	00040513          	mv	a0,s0
   11040:	01013403          	ld	s0,16(sp)
   11044:	01813083          	ld	ra,24(sp)
   11048:	00e5b823          	sd	a4,16(a1)
   1104c:	00e6bc23          	sd	a4,24(a3)
   11050:	02010113          	addi	sp,sp,32
   11054:	2390006f          	j	11a8c <__malloc_unlock>
   11058:	0a089263          	bnez	a7,110fc <_free_r+0x25c>
   1105c:	01863583          	ld	a1,24(a2)
   11060:	01063603          	ld	a2,16(a2)
   11064:	00f686b3          	add	a3,a3,a5
   11068:	0016e793          	ori	a5,a3,1
   1106c:	00b63c23          	sd	a1,24(a2)
   11070:	00c5b823          	sd	a2,16(a1)
   11074:	00f73423          	sd	a5,8(a4)
   11078:	00d70733          	add	a4,a4,a3
   1107c:	00d73023          	sd	a3,0(a4)
   11080:	f05ff06f          	j	10f84 <_free_r+0xe4>
   11084:	00d786b3          	add	a3,a5,a3
   11088:	02031063          	bnez	t1,110a8 <_free_r+0x208>
   1108c:	ff05b783          	ld	a5,-16(a1)
   11090:	40f70733          	sub	a4,a4,a5
   11094:	01073603          	ld	a2,16(a4)
   11098:	00f686b3          	add	a3,a3,a5
   1109c:	01873783          	ld	a5,24(a4)
   110a0:	00f63c23          	sd	a5,24(a2)
   110a4:	00c7b823          	sd	a2,16(a5)
   110a8:	0016e613          	ori	a2,a3,1
   110ac:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   110b0:	00c73423          	sd	a2,8(a4)
   110b4:	00e83823          	sd	a4,16(a6)
   110b8:	ecf6e6e3          	bltu	a3,a5,10f84 <_free_r+0xe4>
   110bc:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   110c0:	00040513          	mv	a0,s0
   110c4:	cb9ff0ef          	jal	10d7c <_malloc_trim_r>
   110c8:	ebdff06f          	j	10f84 <_free_r+0xe4>
   110cc:	00d787b3          	add	a5,a5,a3
   110d0:	ed9ff06f          	j	10fa8 <_free_r+0x108>
   110d4:	01400613          	li	a2,20
   110d8:	02d67a63          	bgeu	a2,a3,1110c <_free_r+0x26c>
   110dc:	05400613          	li	a2,84
   110e0:	06d66c63          	bltu	a2,a3,11158 <_free_r+0x2b8>
   110e4:	00c7d693          	srli	a3,a5,0xc
   110e8:	00169593          	slli	a1,a3,0x1
   110ec:	0de5859b          	addiw	a1,a1,222
   110f0:	00359593          	slli	a1,a1,0x3
   110f4:	06e6861b          	addiw	a2,a3,110
   110f8:	f11ff06f          	j	11008 <_free_r+0x168>
   110fc:	0017e693          	ori	a3,a5,1
   11100:	00d73423          	sd	a3,8(a4)
   11104:	00f63023          	sd	a5,0(a2)
   11108:	e7dff06f          	j	10f84 <_free_r+0xe4>
   1110c:	00169593          	slli	a1,a3,0x1
   11110:	0b85859b          	addiw	a1,a1,184
   11114:	00359593          	slli	a1,a1,0x3
   11118:	05b6861b          	addiw	a2,a3,91
   1111c:	eedff06f          	j	11008 <_free_r+0x168>
   11120:	02e83423          	sd	a4,40(a6)
   11124:	02e83023          	sd	a4,32(a6)
   11128:	00b73c23          	sd	a1,24(a4)
   1112c:	00b73823          	sd	a1,16(a4)
   11130:	01173423          	sd	a7,8(a4)
   11134:	00f53023          	sd	a5,0(a0)
   11138:	e4dff06f          	j	10f84 <_free_r+0xe4>
   1113c:	00883503          	ld	a0,8(a6)
   11140:	4026561b          	sraiw	a2,a2,0x2
   11144:	00100793          	li	a5,1
   11148:	00c797b3          	sll	a5,a5,a2
   1114c:	00a7e7b3          	or	a5,a5,a0
   11150:	00f83423          	sd	a5,8(a6)
   11154:	ee1ff06f          	j	11034 <_free_r+0x194>
   11158:	15400613          	li	a2,340
   1115c:	00d66e63          	bltu	a2,a3,11178 <_free_r+0x2d8>
   11160:	00f7d693          	srli	a3,a5,0xf
   11164:	00169593          	slli	a1,a3,0x1
   11168:	0f05859b          	addiw	a1,a1,240
   1116c:	00359593          	slli	a1,a1,0x3
   11170:	0776861b          	addiw	a2,a3,119
   11174:	e95ff06f          	j	11008 <_free_r+0x168>
   11178:	55400613          	li	a2,1364
   1117c:	00d66e63          	bltu	a2,a3,11198 <_free_r+0x2f8>
   11180:	0127d693          	srli	a3,a5,0x12
   11184:	00169593          	slli	a1,a3,0x1
   11188:	0fa5859b          	addiw	a1,a1,250
   1118c:	00359593          	slli	a1,a1,0x3
   11190:	07c6861b          	addiw	a2,a3,124
   11194:	e75ff06f          	j	11008 <_free_r+0x168>
   11198:	7f000593          	li	a1,2032
   1119c:	07e00613          	li	a2,126
   111a0:	e69ff06f          	j	11008 <_free_r+0x168>

00000000000111a4 <_malloc_r>:
   111a4:	fa010113          	addi	sp,sp,-96
   111a8:	04813823          	sd	s0,80(sp)
   111ac:	04113c23          	sd	ra,88(sp)
   111b0:	01758713          	addi	a4,a1,23
   111b4:	02e00793          	li	a5,46
   111b8:	00050413          	mv	s0,a0
   111bc:	08e7ee63          	bltu	a5,a4,11258 <_malloc_r+0xb4>
   111c0:	02000713          	li	a4,32
   111c4:	06b76c63          	bltu	a4,a1,1123c <_malloc_r+0x98>
   111c8:	0c1000ef          	jal	11a88 <__malloc_lock>
   111cc:	02000713          	li	a4,32
   111d0:	05000693          	li	a3,80
   111d4:	00400893          	li	a7,4
   111d8:	00013837          	lui	a6,0x13
   111dc:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   111e0:	00d806b3          	add	a3,a6,a3
   111e4:	0086b783          	ld	a5,8(a3)
   111e8:	ff068613          	addi	a2,a3,-16
   111ec:	48c78063          	beq	a5,a2,1166c <_malloc_r+0x4c8>
   111f0:	0087b703          	ld	a4,8(a5)
   111f4:	0187b603          	ld	a2,24(a5)
   111f8:	0107b583          	ld	a1,16(a5)
   111fc:	ffc77713          	andi	a4,a4,-4
   11200:	00e78733          	add	a4,a5,a4
   11204:	00873683          	ld	a3,8(a4)
   11208:	00c5bc23          	sd	a2,24(a1)
   1120c:	00b63823          	sd	a1,16(a2)
   11210:	0016e693          	ori	a3,a3,1
   11214:	00040513          	mv	a0,s0
   11218:	00d73423          	sd	a3,8(a4)
   1121c:	00f13423          	sd	a5,8(sp)
   11220:	06d000ef          	jal	11a8c <__malloc_unlock>
   11224:	00813783          	ld	a5,8(sp)
   11228:	05813083          	ld	ra,88(sp)
   1122c:	05013403          	ld	s0,80(sp)
   11230:	01078513          	addi	a0,a5,16
   11234:	06010113          	addi	sp,sp,96
   11238:	00008067          	ret
   1123c:	00c00793          	li	a5,12
   11240:	00f42023          	sw	a5,0(s0)
   11244:	00000513          	li	a0,0
   11248:	05813083          	ld	ra,88(sp)
   1124c:	05013403          	ld	s0,80(sp)
   11250:	06010113          	addi	sp,sp,96
   11254:	00008067          	ret
   11258:	00100793          	li	a5,1
   1125c:	ff077713          	andi	a4,a4,-16
   11260:	01f79793          	slli	a5,a5,0x1f
   11264:	fcf77ce3          	bgeu	a4,a5,1123c <_malloc_r+0x98>
   11268:	fcb76ae3          	bltu	a4,a1,1123c <_malloc_r+0x98>
   1126c:	00e13423          	sd	a4,8(sp)
   11270:	019000ef          	jal	11a88 <__malloc_lock>
   11274:	00813703          	ld	a4,8(sp)
   11278:	1f700793          	li	a5,503
   1127c:	4ee7fa63          	bgeu	a5,a4,11770 <_malloc_r+0x5cc>
   11280:	00975793          	srli	a5,a4,0x9
   11284:	18078a63          	beqz	a5,11418 <_malloc_r+0x274>
   11288:	00400693          	li	a3,4
   1128c:	44f6ea63          	bltu	a3,a5,116e0 <_malloc_r+0x53c>
   11290:	00675793          	srli	a5,a4,0x6
   11294:	0397889b          	addiw	a7,a5,57
   11298:	0018951b          	slliw	a0,a7,0x1
   1129c:	03878e1b          	addiw	t3,a5,56
   112a0:	00351513          	slli	a0,a0,0x3
   112a4:	00013837          	lui	a6,0x13
   112a8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112ac:	00a80533          	add	a0,a6,a0
   112b0:	00853783          	ld	a5,8(a0)
   112b4:	ff050513          	addi	a0,a0,-16
   112b8:	02f50863          	beq	a0,a5,112e8 <_malloc_r+0x144>
   112bc:	01f00313          	li	t1,31
   112c0:	0140006f          	j	112d4 <_malloc_r+0x130>
   112c4:	0187b583          	ld	a1,24(a5)
   112c8:	36065263          	bgez	a2,1162c <_malloc_r+0x488>
   112cc:	00b50e63          	beq	a0,a1,112e8 <_malloc_r+0x144>
   112d0:	00058793          	mv	a5,a1
   112d4:	0087b683          	ld	a3,8(a5)
   112d8:	ffc6f693          	andi	a3,a3,-4
   112dc:	40e68633          	sub	a2,a3,a4
   112e0:	fec352e3          	bge	t1,a2,112c4 <_malloc_r+0x120>
   112e4:	000e0893          	mv	a7,t3
   112e8:	02083783          	ld	a5,32(a6)
   112ec:	00013e37          	lui	t3,0x13
   112f0:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   112f4:	2fc78a63          	beq	a5,t3,115e8 <_malloc_r+0x444>
   112f8:	0087b303          	ld	t1,8(a5)
   112fc:	01f00613          	li	a2,31
   11300:	ffc37313          	andi	t1,t1,-4
   11304:	40e306b3          	sub	a3,t1,a4
   11308:	4ad64463          	blt	a2,a3,117b0 <_malloc_r+0x60c>
   1130c:	03c83423          	sd	t3,40(a6)
   11310:	03c83023          	sd	t3,32(a6)
   11314:	4606da63          	bgez	a3,11788 <_malloc_r+0x5e4>
   11318:	1ff00693          	li	a3,511
   1131c:	00883583          	ld	a1,8(a6)
   11320:	3466ee63          	bltu	a3,t1,1167c <_malloc_r+0x4d8>
   11324:	00335313          	srli	t1,t1,0x3
   11328:	00131693          	slli	a3,t1,0x1
   1132c:	0026869b          	addiw	a3,a3,2
   11330:	00369693          	slli	a3,a3,0x3
   11334:	00d806b3          	add	a3,a6,a3
   11338:	0006b503          	ld	a0,0(a3)
   1133c:	4023531b          	sraiw	t1,t1,0x2
   11340:	00100613          	li	a2,1
   11344:	00661633          	sll	a2,a2,t1
   11348:	00c5e5b3          	or	a1,a1,a2
   1134c:	ff068613          	addi	a2,a3,-16
   11350:	00a7b823          	sd	a0,16(a5)
   11354:	00c7bc23          	sd	a2,24(a5)
   11358:	00b83423          	sd	a1,8(a6)
   1135c:	00f6b023          	sd	a5,0(a3)
   11360:	00f53c23          	sd	a5,24(a0)
   11364:	4028d79b          	sraiw	a5,a7,0x2
   11368:	00100513          	li	a0,1
   1136c:	00f51533          	sll	a0,a0,a5
   11370:	0aa5ec63          	bltu	a1,a0,11428 <_malloc_r+0x284>
   11374:	00b577b3          	and	a5,a0,a1
   11378:	02079463          	bnez	a5,113a0 <_malloc_r+0x1fc>
   1137c:	00151513          	slli	a0,a0,0x1
   11380:	ffc8f893          	andi	a7,a7,-4
   11384:	00b577b3          	and	a5,a0,a1
   11388:	0048889b          	addiw	a7,a7,4
   1138c:	00079a63          	bnez	a5,113a0 <_malloc_r+0x1fc>
   11390:	00151513          	slli	a0,a0,0x1
   11394:	00b577b3          	and	a5,a0,a1
   11398:	0048889b          	addiw	a7,a7,4
   1139c:	fe078ae3          	beqz	a5,11390 <_malloc_r+0x1ec>
   113a0:	01f00e93          	li	t4,31
   113a4:	00189f13          	slli	t5,a7,0x1
   113a8:	002f0f1b          	addiw	t5,t5,2
   113ac:	003f1f13          	slli	t5,t5,0x3
   113b0:	ff0f0f13          	addi	t5,t5,-16
   113b4:	01e80f33          	add	t5,a6,t5
   113b8:	000f0313          	mv	t1,t5
   113bc:	01833683          	ld	a3,24(t1)
   113c0:	00088f93          	mv	t6,a7
   113c4:	34d30263          	beq	t1,a3,11708 <_malloc_r+0x564>
   113c8:	0086b603          	ld	a2,8(a3)
   113cc:	00068793          	mv	a5,a3
   113d0:	0186b683          	ld	a3,24(a3)
   113d4:	ffc67613          	andi	a2,a2,-4
   113d8:	40e605b3          	sub	a1,a2,a4
   113dc:	34bec263          	blt	t4,a1,11720 <_malloc_r+0x57c>
   113e0:	fe05c2e3          	bltz	a1,113c4 <_malloc_r+0x220>
   113e4:	00c78633          	add	a2,a5,a2
   113e8:	00863703          	ld	a4,8(a2)
   113ec:	0107b583          	ld	a1,16(a5)
   113f0:	00040513          	mv	a0,s0
   113f4:	00176713          	ori	a4,a4,1
   113f8:	00e63423          	sd	a4,8(a2)
   113fc:	00d5bc23          	sd	a3,24(a1)
   11400:	00b6b823          	sd	a1,16(a3)
   11404:	00f13423          	sd	a5,8(sp)
   11408:	684000ef          	jal	11a8c <__malloc_unlock>
   1140c:	00813783          	ld	a5,8(sp)
   11410:	01078513          	addi	a0,a5,16
   11414:	e35ff06f          	j	11248 <_malloc_r+0xa4>
   11418:	40000513          	li	a0,1024
   1141c:	04000893          	li	a7,64
   11420:	03f00e13          	li	t3,63
   11424:	e81ff06f          	j	112a4 <_malloc_r+0x100>
   11428:	01083783          	ld	a5,16(a6)
   1142c:	0087b683          	ld	a3,8(a5)
   11430:	ffc6f893          	andi	a7,a3,-4
   11434:	40e88633          	sub	a2,a7,a4
   11438:	00e8e663          	bltu	a7,a4,11444 <_malloc_r+0x2a0>
   1143c:	02062693          	slti	a3,a2,32
   11440:	1a068863          	beqz	a3,115f0 <_malloc_r+0x44c>
   11444:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   11448:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1144c:	fff00693          	li	a3,-1
   11450:	00b705b3          	add	a1,a4,a1
   11454:	44d60663          	beq	a2,a3,118a0 <_malloc_r+0x6fc>
   11458:	000016b7          	lui	a3,0x1
   1145c:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11460:	00d585b3          	add	a1,a1,a3
   11464:	fffff6b7          	lui	a3,0xfffff
   11468:	00d5f5b3          	and	a1,a1,a3
   1146c:	00040513          	mv	a0,s0
   11470:	03013423          	sd	a6,40(sp)
   11474:	02f13023          	sd	a5,32(sp)
   11478:	00e13c23          	sd	a4,24(sp)
   1147c:	01113823          	sd	a7,16(sp)
   11480:	00b13423          	sd	a1,8(sp)
   11484:	271000ef          	jal	11ef4 <_sbrk_r>
   11488:	fff00693          	li	a3,-1
   1148c:	00813583          	ld	a1,8(sp)
   11490:	01013883          	ld	a7,16(sp)
   11494:	01813703          	ld	a4,24(sp)
   11498:	02013783          	ld	a5,32(sp)
   1149c:	02813803          	ld	a6,40(sp)
   114a0:	00050313          	mv	t1,a0
   114a4:	36d50663          	beq	a0,a3,11810 <_malloc_r+0x66c>
   114a8:	011786b3          	add	a3,a5,a7
   114ac:	36d56063          	bltu	a0,a3,1180c <_malloc_r+0x668>
   114b0:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   114b4:	000e2603          	lw	a2,0(t3)
   114b8:	00b6063b          	addw	a2,a2,a1
   114bc:	00ce2023          	sw	a2,0(t3)
   114c0:	00060513          	mv	a0,a2
   114c4:	4a668c63          	beq	a3,t1,1197c <_malloc_r+0x7d8>
   114c8:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   114cc:	fff00613          	li	a2,-1
   114d0:	4ccf0463          	beq	t5,a2,11998 <_malloc_r+0x7f4>
   114d4:	40d306b3          	sub	a3,t1,a3
   114d8:	00a686bb          	addw	a3,a3,a0
   114dc:	00de2023          	sw	a3,0(t3)
   114e0:	00f37e93          	andi	t4,t1,15
   114e4:	3c0e8e63          	beqz	t4,118c0 <_malloc_r+0x71c>
   114e8:	ff037313          	andi	t1,t1,-16
   114ec:	000016b7          	lui	a3,0x1
   114f0:	01030313          	addi	t1,t1,16
   114f4:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   114f8:	00b30633          	add	a2,t1,a1
   114fc:	41d685b3          	sub	a1,a3,t4
   11500:	40c585b3          	sub	a1,a1,a2
   11504:	03459593          	slli	a1,a1,0x34
   11508:	0345d593          	srli	a1,a1,0x34
   1150c:	00040513          	mv	a0,s0
   11510:	05c13023          	sd	t3,64(sp)
   11514:	03013c23          	sd	a6,56(sp)
   11518:	02f13823          	sd	a5,48(sp)
   1151c:	02e13423          	sd	a4,40(sp)
   11520:	03113023          	sd	a7,32(sp)
   11524:	00613c23          	sd	t1,24(sp)
   11528:	01d13823          	sd	t4,16(sp)
   1152c:	00c13423          	sd	a2,8(sp)
   11530:	04b13423          	sd	a1,72(sp)
   11534:	1c1000ef          	jal	11ef4 <_sbrk_r>
   11538:	00050693          	mv	a3,a0
   1153c:	fff00513          	li	a0,-1
   11540:	00813603          	ld	a2,8(sp)
   11544:	01013e83          	ld	t4,16(sp)
   11548:	01813303          	ld	t1,24(sp)
   1154c:	02013883          	ld	a7,32(sp)
   11550:	02813703          	ld	a4,40(sp)
   11554:	03013783          	ld	a5,48(sp)
   11558:	03813803          	ld	a6,56(sp)
   1155c:	04013e03          	ld	t3,64(sp)
   11560:	48a68663          	beq	a3,a0,119ec <_malloc_r+0x848>
   11564:	04813583          	ld	a1,72(sp)
   11568:	0005851b          	sext.w	a0,a1
   1156c:	000e2603          	lw	a2,0(t3)
   11570:	406686b3          	sub	a3,a3,t1
   11574:	00b686b3          	add	a3,a3,a1
   11578:	0016e693          	ori	a3,a3,1
   1157c:	00683823          	sd	t1,16(a6)
   11580:	00a6063b          	addw	a2,a2,a0
   11584:	00d33423          	sd	a3,8(t1)
   11588:	00ce2023          	sw	a2,0(t3)
   1158c:	03078e63          	beq	a5,a6,115c8 <_malloc_r+0x424>
   11590:	01f00513          	li	a0,31
   11594:	41157663          	bgeu	a0,a7,119a0 <_malloc_r+0x7fc>
   11598:	0087b583          	ld	a1,8(a5)
   1159c:	fe888693          	addi	a3,a7,-24
   115a0:	ff06f693          	andi	a3,a3,-16
   115a4:	0015f593          	andi	a1,a1,1
   115a8:	00d5e5b3          	or	a1,a1,a3
   115ac:	00b7b423          	sd	a1,8(a5)
   115b0:	00900893          	li	a7,9
   115b4:	00d785b3          	add	a1,a5,a3
   115b8:	0115b423          	sd	a7,8(a1)
   115bc:	0115b823          	sd	a7,16(a1)
   115c0:	44d56863          	bltu	a0,a3,11a10 <_malloc_r+0x86c>
   115c4:	00833683          	ld	a3,8(t1)
   115c8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   115cc:	00c5f463          	bgeu	a1,a2,115d4 <_malloc_r+0x430>
   115d0:	1cc1b423          	sd	a2,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   115d4:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_total_mem>
   115d8:	00c5f463          	bgeu	a1,a2,115e0 <_malloc_r+0x43c>
   115dc:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_total_mem>
   115e0:	00030793          	mv	a5,t1
   115e4:	2340006f          	j	11818 <_malloc_r+0x674>
   115e8:	00883583          	ld	a1,8(a6)
   115ec:	d79ff06f          	j	11364 <_malloc_r+0x1c0>
   115f0:	00176693          	ori	a3,a4,1
   115f4:	00d7b423          	sd	a3,8(a5)
   115f8:	00e78733          	add	a4,a5,a4
   115fc:	00166613          	ori	a2,a2,1
   11600:	00e83823          	sd	a4,16(a6)
   11604:	00040513          	mv	a0,s0
   11608:	00c73423          	sd	a2,8(a4)
   1160c:	00f13423          	sd	a5,8(sp)
   11610:	47c000ef          	jal	11a8c <__malloc_unlock>
   11614:	00813783          	ld	a5,8(sp)
   11618:	05813083          	ld	ra,88(sp)
   1161c:	05013403          	ld	s0,80(sp)
   11620:	01078513          	addi	a0,a5,16
   11624:	06010113          	addi	sp,sp,96
   11628:	00008067          	ret
   1162c:	0107b603          	ld	a2,16(a5)
   11630:	00d786b3          	add	a3,a5,a3
   11634:	0086b703          	ld	a4,8(a3)
   11638:	00b63c23          	sd	a1,24(a2)
   1163c:	00c5b823          	sd	a2,16(a1)
   11640:	00176713          	ori	a4,a4,1
   11644:	00040513          	mv	a0,s0
   11648:	00e6b423          	sd	a4,8(a3)
   1164c:	00f13423          	sd	a5,8(sp)
   11650:	43c000ef          	jal	11a8c <__malloc_unlock>
   11654:	00813783          	ld	a5,8(sp)
   11658:	05813083          	ld	ra,88(sp)
   1165c:	05013403          	ld	s0,80(sp)
   11660:	01078513          	addi	a0,a5,16
   11664:	06010113          	addi	sp,sp,96
   11668:	00008067          	ret
   1166c:	0186b783          	ld	a5,24(a3)
   11670:	0028889b          	addiw	a7,a7,2
   11674:	c6f68ae3          	beq	a3,a5,112e8 <_malloc_r+0x144>
   11678:	b79ff06f          	j	111f0 <_malloc_r+0x4c>
   1167c:	00935693          	srli	a3,t1,0x9
   11680:	00400613          	li	a2,4
   11684:	16d67863          	bgeu	a2,a3,117f4 <_malloc_r+0x650>
   11688:	01400613          	li	a2,20
   1168c:	28d66e63          	bltu	a2,a3,11928 <_malloc_r+0x784>
   11690:	00169513          	slli	a0,a3,0x1
   11694:	0b85051b          	addiw	a0,a0,184
   11698:	00351513          	slli	a0,a0,0x3
   1169c:	05b6861b          	addiw	a2,a3,91
   116a0:	00a80533          	add	a0,a6,a0
   116a4:	00053683          	ld	a3,0(a0)
   116a8:	ff050513          	addi	a0,a0,-16
   116ac:	00d51863          	bne	a0,a3,116bc <_malloc_r+0x518>
   116b0:	1f80006f          	j	118a8 <_malloc_r+0x704>
   116b4:	0106b683          	ld	a3,16(a3)
   116b8:	00d50863          	beq	a0,a3,116c8 <_malloc_r+0x524>
   116bc:	0086b603          	ld	a2,8(a3)
   116c0:	ffc67613          	andi	a2,a2,-4
   116c4:	fec368e3          	bltu	t1,a2,116b4 <_malloc_r+0x510>
   116c8:	0186b503          	ld	a0,24(a3)
   116cc:	00a7bc23          	sd	a0,24(a5)
   116d0:	00d7b823          	sd	a3,16(a5)
   116d4:	00f53823          	sd	a5,16(a0)
   116d8:	00f6bc23          	sd	a5,24(a3)
   116dc:	c89ff06f          	j	11364 <_malloc_r+0x1c0>
   116e0:	01400693          	li	a3,20
   116e4:	14f6fa63          	bgeu	a3,a5,11838 <_malloc_r+0x694>
   116e8:	05400693          	li	a3,84
   116ec:	24f6ee63          	bltu	a3,a5,11948 <_malloc_r+0x7a4>
   116f0:	00c75793          	srli	a5,a4,0xc
   116f4:	06f7889b          	addiw	a7,a5,111
   116f8:	0018951b          	slliw	a0,a7,0x1
   116fc:	06e78e1b          	addiw	t3,a5,110
   11700:	00351513          	slli	a0,a0,0x3
   11704:	ba1ff06f          	j	112a4 <_malloc_r+0x100>
   11708:	001f8f9b          	addiw	t6,t6,1
   1170c:	003ff793          	andi	a5,t6,3
   11710:	01030313          	addi	t1,t1,16
   11714:	14078263          	beqz	a5,11858 <_malloc_r+0x6b4>
   11718:	01833683          	ld	a3,24(t1)
   1171c:	ca9ff06f          	j	113c4 <_malloc_r+0x220>
   11720:	0107b503          	ld	a0,16(a5)
   11724:	00176893          	ori	a7,a4,1
   11728:	0117b423          	sd	a7,8(a5)
   1172c:	00d53c23          	sd	a3,24(a0)
   11730:	00a6b823          	sd	a0,16(a3)
   11734:	00e78733          	add	a4,a5,a4
   11738:	02e83423          	sd	a4,40(a6)
   1173c:	02e83023          	sd	a4,32(a6)
   11740:	0015e693          	ori	a3,a1,1
   11744:	00c78633          	add	a2,a5,a2
   11748:	01c73c23          	sd	t3,24(a4)
   1174c:	01c73823          	sd	t3,16(a4)
   11750:	00d73423          	sd	a3,8(a4)
   11754:	00040513          	mv	a0,s0
   11758:	00b63023          	sd	a1,0(a2)
   1175c:	00f13423          	sd	a5,8(sp)
   11760:	32c000ef          	jal	11a8c <__malloc_unlock>
   11764:	00813783          	ld	a5,8(sp)
   11768:	01078513          	addi	a0,a5,16
   1176c:	addff06f          	j	11248 <_malloc_r+0xa4>
   11770:	00375893          	srli	a7,a4,0x3
   11774:	00189693          	slli	a3,a7,0x1
   11778:	0026869b          	addiw	a3,a3,2
   1177c:	00369693          	slli	a3,a3,0x3
   11780:	0008889b          	sext.w	a7,a7
   11784:	a55ff06f          	j	111d8 <_malloc_r+0x34>
   11788:	00678333          	add	t1,a5,t1
   1178c:	00833703          	ld	a4,8(t1)
   11790:	00040513          	mv	a0,s0
   11794:	00f13423          	sd	a5,8(sp)
   11798:	00176713          	ori	a4,a4,1
   1179c:	00e33423          	sd	a4,8(t1)
   117a0:	2ec000ef          	jal	11a8c <__malloc_unlock>
   117a4:	00813783          	ld	a5,8(sp)
   117a8:	01078513          	addi	a0,a5,16
   117ac:	a9dff06f          	j	11248 <_malloc_r+0xa4>
   117b0:	00176613          	ori	a2,a4,1
   117b4:	00c7b423          	sd	a2,8(a5)
   117b8:	00e78733          	add	a4,a5,a4
   117bc:	02e83423          	sd	a4,40(a6)
   117c0:	02e83023          	sd	a4,32(a6)
   117c4:	0016e613          	ori	a2,a3,1
   117c8:	00678333          	add	t1,a5,t1
   117cc:	01c73c23          	sd	t3,24(a4)
   117d0:	01c73823          	sd	t3,16(a4)
   117d4:	00c73423          	sd	a2,8(a4)
   117d8:	00040513          	mv	a0,s0
   117dc:	00d33023          	sd	a3,0(t1)
   117e0:	00f13423          	sd	a5,8(sp)
   117e4:	2a8000ef          	jal	11a8c <__malloc_unlock>
   117e8:	00813783          	ld	a5,8(sp)
   117ec:	01078513          	addi	a0,a5,16
   117f0:	a59ff06f          	j	11248 <_malloc_r+0xa4>
   117f4:	00635693          	srli	a3,t1,0x6
   117f8:	00169513          	slli	a0,a3,0x1
   117fc:	0725051b          	addiw	a0,a0,114
   11800:	00351513          	slli	a0,a0,0x3
   11804:	0386861b          	addiw	a2,a3,56
   11808:	e99ff06f          	j	116a0 <_malloc_r+0x4fc>
   1180c:	15078e63          	beq	a5,a6,11968 <_malloc_r+0x7c4>
   11810:	01083783          	ld	a5,16(a6)
   11814:	0087b683          	ld	a3,8(a5)
   11818:	ffc6f693          	andi	a3,a3,-4
   1181c:	40e68633          	sub	a2,a3,a4
   11820:	00e6e663          	bltu	a3,a4,1182c <_malloc_r+0x688>
   11824:	02062693          	slti	a3,a2,32
   11828:	dc0684e3          	beqz	a3,115f0 <_malloc_r+0x44c>
   1182c:	00040513          	mv	a0,s0
   11830:	25c000ef          	jal	11a8c <__malloc_unlock>
   11834:	a11ff06f          	j	11244 <_malloc_r+0xa0>
   11838:	05c7889b          	addiw	a7,a5,92
   1183c:	0018951b          	slliw	a0,a7,0x1
   11840:	05b78e1b          	addiw	t3,a5,91
   11844:	00351513          	slli	a0,a0,0x3
   11848:	a5dff06f          	j	112a4 <_malloc_r+0x100>
   1184c:	010f3783          	ld	a5,16(t5)
   11850:	fff8889b          	addiw	a7,a7,-1
   11854:	23e79663          	bne	a5,t5,11a80 <_malloc_r+0x8dc>
   11858:	0038f793          	andi	a5,a7,3
   1185c:	ff0f0f13          	addi	t5,t5,-16
   11860:	fe0796e3          	bnez	a5,1184c <_malloc_r+0x6a8>
   11864:	00883683          	ld	a3,8(a6)
   11868:	fff54793          	not	a5,a0
   1186c:	00d7f7b3          	and	a5,a5,a3
   11870:	00f83423          	sd	a5,8(a6)
   11874:	00151513          	slli	a0,a0,0x1
   11878:	fff50693          	addi	a3,a0,-1
   1187c:	baf6f6e3          	bgeu	a3,a5,11428 <_malloc_r+0x284>
   11880:	00f576b3          	and	a3,a0,a5
   11884:	00069a63          	bnez	a3,11898 <_malloc_r+0x6f4>
   11888:	00151513          	slli	a0,a0,0x1
   1188c:	00f576b3          	and	a3,a0,a5
   11890:	004f8f9b          	addiw	t6,t6,4
   11894:	fe068ae3          	beqz	a3,11888 <_malloc_r+0x6e4>
   11898:	000f8893          	mv	a7,t6
   1189c:	b09ff06f          	j	113a4 <_malloc_r+0x200>
   118a0:	02058593          	addi	a1,a1,32
   118a4:	bc9ff06f          	j	1146c <_malloc_r+0x2c8>
   118a8:	4026561b          	sraiw	a2,a2,0x2
   118ac:	00100313          	li	t1,1
   118b0:	00c31633          	sll	a2,t1,a2
   118b4:	00c5e5b3          	or	a1,a1,a2
   118b8:	00b83423          	sd	a1,8(a6)
   118bc:	e11ff06f          	j	116cc <_malloc_r+0x528>
   118c0:	00b30633          	add	a2,t1,a1
   118c4:	40c005b3          	neg	a1,a2
   118c8:	03459593          	slli	a1,a1,0x34
   118cc:	0345d593          	srli	a1,a1,0x34
   118d0:	00040513          	mv	a0,s0
   118d4:	03c13c23          	sd	t3,56(sp)
   118d8:	03013823          	sd	a6,48(sp)
   118dc:	02f13423          	sd	a5,40(sp)
   118e0:	02e13023          	sd	a4,32(sp)
   118e4:	01113c23          	sd	a7,24(sp)
   118e8:	00613823          	sd	t1,16(sp)
   118ec:	00c13423          	sd	a2,8(sp)
   118f0:	04b13023          	sd	a1,64(sp)
   118f4:	600000ef          	jal	11ef4 <_sbrk_r>
   118f8:	00050693          	mv	a3,a0
   118fc:	fff00513          	li	a0,-1
   11900:	01013303          	ld	t1,16(sp)
   11904:	01813883          	ld	a7,24(sp)
   11908:	02013703          	ld	a4,32(sp)
   1190c:	02813783          	ld	a5,40(sp)
   11910:	03013803          	ld	a6,48(sp)
   11914:	03813e03          	ld	t3,56(sp)
   11918:	0ea68463          	beq	a3,a0,11a00 <_malloc_r+0x85c>
   1191c:	04013583          	ld	a1,64(sp)
   11920:	0005851b          	sext.w	a0,a1
   11924:	c49ff06f          	j	1156c <_malloc_r+0x3c8>
   11928:	05400613          	li	a2,84
   1192c:	08d66063          	bltu	a2,a3,119ac <_malloc_r+0x808>
   11930:	00c35693          	srli	a3,t1,0xc
   11934:	00169513          	slli	a0,a3,0x1
   11938:	0de5051b          	addiw	a0,a0,222
   1193c:	00351513          	slli	a0,a0,0x3
   11940:	06e6861b          	addiw	a2,a3,110
   11944:	d5dff06f          	j	116a0 <_malloc_r+0x4fc>
   11948:	15400693          	li	a3,340
   1194c:	08f6e063          	bltu	a3,a5,119cc <_malloc_r+0x828>
   11950:	00f75793          	srli	a5,a4,0xf
   11954:	0787889b          	addiw	a7,a5,120
   11958:	0018951b          	slliw	a0,a7,0x1
   1195c:	07778e1b          	addiw	t3,a5,119
   11960:	00351513          	slli	a0,a0,0x3
   11964:	941ff06f          	j	112a4 <_malloc_r+0x100>
   11968:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   1196c:	000e2503          	lw	a0,0(t3)
   11970:	00b5053b          	addw	a0,a0,a1
   11974:	00ae2023          	sw	a0,0(t3)
   11978:	b51ff06f          	j	114c8 <_malloc_r+0x324>
   1197c:	03431f13          	slli	t5,t1,0x34
   11980:	b40f14e3          	bnez	t5,114c8 <_malloc_r+0x324>
   11984:	01083303          	ld	t1,16(a6)
   11988:	00b885b3          	add	a1,a7,a1
   1198c:	0015e693          	ori	a3,a1,1
   11990:	00d33423          	sd	a3,8(t1)
   11994:	c35ff06f          	j	115c8 <_malloc_r+0x424>
   11998:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   1199c:	b45ff06f          	j	114e0 <_malloc_r+0x33c>
   119a0:	00100793          	li	a5,1
   119a4:	00f33423          	sd	a5,8(t1)
   119a8:	e85ff06f          	j	1182c <_malloc_r+0x688>
   119ac:	15400613          	li	a2,340
   119b0:	08d66a63          	bltu	a2,a3,11a44 <_malloc_r+0x8a0>
   119b4:	00f35693          	srli	a3,t1,0xf
   119b8:	00169513          	slli	a0,a3,0x1
   119bc:	0f05051b          	addiw	a0,a0,240
   119c0:	00351513          	slli	a0,a0,0x3
   119c4:	0776861b          	addiw	a2,a3,119
   119c8:	cd9ff06f          	j	116a0 <_malloc_r+0x4fc>
   119cc:	55400693          	li	a3,1364
   119d0:	08f6ea63          	bltu	a3,a5,11a64 <_malloc_r+0x8c0>
   119d4:	01275793          	srli	a5,a4,0x12
   119d8:	07d7889b          	addiw	a7,a5,125
   119dc:	0018951b          	slliw	a0,a7,0x1
   119e0:	07c78e1b          	addiw	t3,a5,124
   119e4:	00351513          	slli	a0,a0,0x3
   119e8:	8bdff06f          	j	112a4 <_malloc_r+0x100>
   119ec:	ff0e8e93          	addi	t4,t4,-16
   119f0:	01d606b3          	add	a3,a2,t4
   119f4:	00000513          	li	a0,0
   119f8:	00000593          	li	a1,0
   119fc:	b71ff06f          	j	1156c <_malloc_r+0x3c8>
   11a00:	00813683          	ld	a3,8(sp)
   11a04:	00000593          	li	a1,0
   11a08:	00000513          	li	a0,0
   11a0c:	b61ff06f          	j	1156c <_malloc_r+0x3c8>
   11a10:	01078593          	addi	a1,a5,16
   11a14:	00040513          	mv	a0,s0
   11a18:	01c13c23          	sd	t3,24(sp)
   11a1c:	01013823          	sd	a6,16(sp)
   11a20:	00e13423          	sd	a4,8(sp)
   11a24:	c7cff0ef          	jal	10ea0 <_free_r>
   11a28:	01013803          	ld	a6,16(sp)
   11a2c:	01813e03          	ld	t3,24(sp)
   11a30:	00813703          	ld	a4,8(sp)
   11a34:	01083303          	ld	t1,16(a6)
   11a38:	000e2603          	lw	a2,0(t3)
   11a3c:	00833683          	ld	a3,8(t1)
   11a40:	b89ff06f          	j	115c8 <_malloc_r+0x424>
   11a44:	55400613          	li	a2,1364
   11a48:	02d66663          	bltu	a2,a3,11a74 <_malloc_r+0x8d0>
   11a4c:	01235693          	srli	a3,t1,0x12
   11a50:	00169513          	slli	a0,a3,0x1
   11a54:	0fa5051b          	addiw	a0,a0,250
   11a58:	00351513          	slli	a0,a0,0x3
   11a5c:	07c6861b          	addiw	a2,a3,124
   11a60:	c41ff06f          	j	116a0 <_malloc_r+0x4fc>
   11a64:	7f000513          	li	a0,2032
   11a68:	07f00893          	li	a7,127
   11a6c:	07e00e13          	li	t3,126
   11a70:	835ff06f          	j	112a4 <_malloc_r+0x100>
   11a74:	7f000513          	li	a0,2032
   11a78:	07e00613          	li	a2,126
   11a7c:	c25ff06f          	j	116a0 <_malloc_r+0x4fc>
   11a80:	00883783          	ld	a5,8(a6)
   11a84:	df1ff06f          	j	11874 <_malloc_r+0x6d0>

0000000000011a88 <__malloc_lock>:
   11a88:	00008067          	ret

0000000000011a8c <__malloc_unlock>:
   11a8c:	00008067          	ret

0000000000011a90 <_fclose_r>:
   11a90:	fe010113          	addi	sp,sp,-32
   11a94:	00113c23          	sd	ra,24(sp)
   11a98:	01213023          	sd	s2,0(sp)
   11a9c:	02058863          	beqz	a1,11acc <_fclose_r+0x3c>
   11aa0:	00813823          	sd	s0,16(sp)
   11aa4:	00913423          	sd	s1,8(sp)
   11aa8:	00058413          	mv	s0,a1
   11aac:	00050493          	mv	s1,a0
   11ab0:	00050663          	beqz	a0,11abc <_fclose_r+0x2c>
   11ab4:	04853783          	ld	a5,72(a0)
   11ab8:	0c078c63          	beqz	a5,11b90 <_fclose_r+0x100>
   11abc:	01041783          	lh	a5,16(s0)
   11ac0:	02079263          	bnez	a5,11ae4 <_fclose_r+0x54>
   11ac4:	01013403          	ld	s0,16(sp)
   11ac8:	00813483          	ld	s1,8(sp)
   11acc:	01813083          	ld	ra,24(sp)
   11ad0:	00000913          	li	s2,0
   11ad4:	00090513          	mv	a0,s2
   11ad8:	00013903          	ld	s2,0(sp)
   11adc:	02010113          	addi	sp,sp,32
   11ae0:	00008067          	ret
   11ae4:	00040593          	mv	a1,s0
   11ae8:	00048513          	mv	a0,s1
   11aec:	0b8000ef          	jal	11ba4 <__sflush_r>
   11af0:	05043783          	ld	a5,80(s0)
   11af4:	00050913          	mv	s2,a0
   11af8:	00078a63          	beqz	a5,11b0c <_fclose_r+0x7c>
   11afc:	03043583          	ld	a1,48(s0)
   11b00:	00048513          	mv	a0,s1
   11b04:	000780e7          	jalr	a5
   11b08:	06054463          	bltz	a0,11b70 <_fclose_r+0xe0>
   11b0c:	01045783          	lhu	a5,16(s0)
   11b10:	0807f793          	andi	a5,a5,128
   11b14:	06079663          	bnez	a5,11b80 <_fclose_r+0xf0>
   11b18:	05843583          	ld	a1,88(s0)
   11b1c:	00058c63          	beqz	a1,11b34 <_fclose_r+0xa4>
   11b20:	07440793          	addi	a5,s0,116
   11b24:	00f58663          	beq	a1,a5,11b30 <_fclose_r+0xa0>
   11b28:	00048513          	mv	a0,s1
   11b2c:	b74ff0ef          	jal	10ea0 <_free_r>
   11b30:	04043c23          	sd	zero,88(s0)
   11b34:	07843583          	ld	a1,120(s0)
   11b38:	00058863          	beqz	a1,11b48 <_fclose_r+0xb8>
   11b3c:	00048513          	mv	a0,s1
   11b40:	b60ff0ef          	jal	10ea0 <_free_r>
   11b44:	06043c23          	sd	zero,120(s0)
   11b48:	aa5fe0ef          	jal	105ec <__sfp_lock_acquire>
   11b4c:	00041823          	sh	zero,16(s0)
   11b50:	aa1fe0ef          	jal	105f0 <__sfp_lock_release>
   11b54:	01813083          	ld	ra,24(sp)
   11b58:	01013403          	ld	s0,16(sp)
   11b5c:	00813483          	ld	s1,8(sp)
   11b60:	00090513          	mv	a0,s2
   11b64:	00013903          	ld	s2,0(sp)
   11b68:	02010113          	addi	sp,sp,32
   11b6c:	00008067          	ret
   11b70:	01045783          	lhu	a5,16(s0)
   11b74:	fff00913          	li	s2,-1
   11b78:	0807f793          	andi	a5,a5,128
   11b7c:	f8078ee3          	beqz	a5,11b18 <_fclose_r+0x88>
   11b80:	01843583          	ld	a1,24(s0)
   11b84:	00048513          	mv	a0,s1
   11b88:	b18ff0ef          	jal	10ea0 <_free_r>
   11b8c:	f8dff06f          	j	11b18 <_fclose_r+0x88>
   11b90:	a39fe0ef          	jal	105c8 <__sinit>
   11b94:	f29ff06f          	j	11abc <_fclose_r+0x2c>

0000000000011b98 <fclose>:
   11b98:	00050593          	mv	a1,a0
   11b9c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11ba0:	ef1ff06f          	j	11a90 <_fclose_r>

0000000000011ba4 <__sflush_r>:
   11ba4:	01059703          	lh	a4,16(a1)
   11ba8:	fd010113          	addi	sp,sp,-48
   11bac:	02813023          	sd	s0,32(sp)
   11bb0:	01313423          	sd	s3,8(sp)
   11bb4:	02113423          	sd	ra,40(sp)
   11bb8:	00877793          	andi	a5,a4,8
   11bbc:	00058413          	mv	s0,a1
   11bc0:	00050993          	mv	s3,a0
   11bc4:	12079263          	bnez	a5,11ce8 <__sflush_r+0x144>
   11bc8:	000017b7          	lui	a5,0x1
   11bcc:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11bd0:	0085a683          	lw	a3,8(a1)
   11bd4:	00f767b3          	or	a5,a4,a5
   11bd8:	00f59823          	sh	a5,16(a1)
   11bdc:	18d05c63          	blez	a3,11d74 <__sflush_r+0x1d0>
   11be0:	04843803          	ld	a6,72(s0)
   11be4:	0e080663          	beqz	a6,11cd0 <__sflush_r+0x12c>
   11be8:	00913c23          	sd	s1,24(sp)
   11bec:	03371693          	slli	a3,a4,0x33
   11bf0:	0009a483          	lw	s1,0(s3)
   11bf4:	0009a023          	sw	zero,0(s3)
   11bf8:	1806ca63          	bltz	a3,11d8c <__sflush_r+0x1e8>
   11bfc:	03043583          	ld	a1,48(s0)
   11c00:	00000613          	li	a2,0
   11c04:	00100693          	li	a3,1
   11c08:	00098513          	mv	a0,s3
   11c0c:	000800e7          	jalr	a6
   11c10:	fff00793          	li	a5,-1
   11c14:	00050613          	mv	a2,a0
   11c18:	1af50c63          	beq	a0,a5,11dd0 <__sflush_r+0x22c>
   11c1c:	01041783          	lh	a5,16(s0)
   11c20:	04843803          	ld	a6,72(s0)
   11c24:	0047f793          	andi	a5,a5,4
   11c28:	00078e63          	beqz	a5,11c44 <__sflush_r+0xa0>
   11c2c:	00842703          	lw	a4,8(s0)
   11c30:	05843783          	ld	a5,88(s0)
   11c34:	40e60633          	sub	a2,a2,a4
   11c38:	00078663          	beqz	a5,11c44 <__sflush_r+0xa0>
   11c3c:	07042783          	lw	a5,112(s0)
   11c40:	40f60633          	sub	a2,a2,a5
   11c44:	03043583          	ld	a1,48(s0)
   11c48:	00000693          	li	a3,0
   11c4c:	00098513          	mv	a0,s3
   11c50:	000800e7          	jalr	a6
   11c54:	fff00713          	li	a4,-1
   11c58:	01041783          	lh	a5,16(s0)
   11c5c:	12e51c63          	bne	a0,a4,11d94 <__sflush_r+0x1f0>
   11c60:	0009a683          	lw	a3,0(s3)
   11c64:	01d00713          	li	a4,29
   11c68:	18d76263          	bltu	a4,a3,11dec <__sflush_r+0x248>
   11c6c:	20400737          	lui	a4,0x20400
   11c70:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec081>
   11c74:	00d75733          	srl	a4,a4,a3
   11c78:	00177713          	andi	a4,a4,1
   11c7c:	16070863          	beqz	a4,11dec <__sflush_r+0x248>
   11c80:	01843683          	ld	a3,24(s0)
   11c84:	fffff737          	lui	a4,0xfffff
   11c88:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   11c8c:	00e7f733          	and	a4,a5,a4
   11c90:	00e41823          	sh	a4,16(s0)
   11c94:	00042423          	sw	zero,8(s0)
   11c98:	00d43023          	sd	a3,0(s0)
   11c9c:	03379713          	slli	a4,a5,0x33
   11ca0:	00075663          	bgez	a4,11cac <__sflush_r+0x108>
   11ca4:	0009a783          	lw	a5,0(s3)
   11ca8:	10078863          	beqz	a5,11db8 <__sflush_r+0x214>
   11cac:	05843583          	ld	a1,88(s0)
   11cb0:	0099a023          	sw	s1,0(s3)
   11cb4:	10058a63          	beqz	a1,11dc8 <__sflush_r+0x224>
   11cb8:	07440793          	addi	a5,s0,116
   11cbc:	00f58663          	beq	a1,a5,11cc8 <__sflush_r+0x124>
   11cc0:	00098513          	mv	a0,s3
   11cc4:	9dcff0ef          	jal	10ea0 <_free_r>
   11cc8:	01813483          	ld	s1,24(sp)
   11ccc:	04043c23          	sd	zero,88(s0)
   11cd0:	02813083          	ld	ra,40(sp)
   11cd4:	02013403          	ld	s0,32(sp)
   11cd8:	00813983          	ld	s3,8(sp)
   11cdc:	00000513          	li	a0,0
   11ce0:	03010113          	addi	sp,sp,48
   11ce4:	00008067          	ret
   11ce8:	01213823          	sd	s2,16(sp)
   11cec:	0185b903          	ld	s2,24(a1)
   11cf0:	08090a63          	beqz	s2,11d84 <__sflush_r+0x1e0>
   11cf4:	00913c23          	sd	s1,24(sp)
   11cf8:	0005b483          	ld	s1,0(a1)
   11cfc:	00377713          	andi	a4,a4,3
   11d00:	0125b023          	sd	s2,0(a1)
   11d04:	412484bb          	subw	s1,s1,s2
   11d08:	00000793          	li	a5,0
   11d0c:	00071463          	bnez	a4,11d14 <__sflush_r+0x170>
   11d10:	0205a783          	lw	a5,32(a1)
   11d14:	00f42623          	sw	a5,12(s0)
   11d18:	00904863          	bgtz	s1,11d28 <__sflush_r+0x184>
   11d1c:	0640006f          	j	11d80 <__sflush_r+0x1dc>
   11d20:	00a90933          	add	s2,s2,a0
   11d24:	04905e63          	blez	s1,11d80 <__sflush_r+0x1dc>
   11d28:	04043783          	ld	a5,64(s0)
   11d2c:	03043583          	ld	a1,48(s0)
   11d30:	00048693          	mv	a3,s1
   11d34:	00090613          	mv	a2,s2
   11d38:	00098513          	mv	a0,s3
   11d3c:	000780e7          	jalr	a5
   11d40:	40a484bb          	subw	s1,s1,a0
   11d44:	fca04ee3          	bgtz	a0,11d20 <__sflush_r+0x17c>
   11d48:	01045783          	lhu	a5,16(s0)
   11d4c:	01013903          	ld	s2,16(sp)
   11d50:	0407e793          	ori	a5,a5,64
   11d54:	02813083          	ld	ra,40(sp)
   11d58:	00f41823          	sh	a5,16(s0)
   11d5c:	02013403          	ld	s0,32(sp)
   11d60:	01813483          	ld	s1,24(sp)
   11d64:	00813983          	ld	s3,8(sp)
   11d68:	fff00513          	li	a0,-1
   11d6c:	03010113          	addi	sp,sp,48
   11d70:	00008067          	ret
   11d74:	0705a683          	lw	a3,112(a1)
   11d78:	e6d044e3          	bgtz	a3,11be0 <__sflush_r+0x3c>
   11d7c:	f55ff06f          	j	11cd0 <__sflush_r+0x12c>
   11d80:	01813483          	ld	s1,24(sp)
   11d84:	01013903          	ld	s2,16(sp)
   11d88:	f49ff06f          	j	11cd0 <__sflush_r+0x12c>
   11d8c:	09043603          	ld	a2,144(s0)
   11d90:	e95ff06f          	j	11c24 <__sflush_r+0x80>
   11d94:	01843683          	ld	a3,24(s0)
   11d98:	fffff737          	lui	a4,0xfffff
   11d9c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   11da0:	00e7f733          	and	a4,a5,a4
   11da4:	00e41823          	sh	a4,16(s0)
   11da8:	00042423          	sw	zero,8(s0)
   11dac:	00d43023          	sd	a3,0(s0)
   11db0:	03379713          	slli	a4,a5,0x33
   11db4:	ee075ce3          	bgez	a4,11cac <__sflush_r+0x108>
   11db8:	05843583          	ld	a1,88(s0)
   11dbc:	08a43823          	sd	a0,144(s0)
   11dc0:	0099a023          	sw	s1,0(s3)
   11dc4:	ee059ae3          	bnez	a1,11cb8 <__sflush_r+0x114>
   11dc8:	01813483          	ld	s1,24(sp)
   11dcc:	f05ff06f          	j	11cd0 <__sflush_r+0x12c>
   11dd0:	0009a783          	lw	a5,0(s3)
   11dd4:	e40784e3          	beqz	a5,11c1c <__sflush_r+0x78>
   11dd8:	fe378713          	addi	a4,a5,-29
   11ddc:	00070c63          	beqz	a4,11df4 <__sflush_r+0x250>
   11de0:	fea78793          	addi	a5,a5,-22
   11de4:	00078863          	beqz	a5,11df4 <__sflush_r+0x250>
   11de8:	01045783          	lhu	a5,16(s0)
   11dec:	0407e793          	ori	a5,a5,64
   11df0:	f65ff06f          	j	11d54 <__sflush_r+0x1b0>
   11df4:	0099a023          	sw	s1,0(s3)
   11df8:	01813483          	ld	s1,24(sp)
   11dfc:	ed5ff06f          	j	11cd0 <__sflush_r+0x12c>

0000000000011e00 <_fflush_r>:
   11e00:	00050793          	mv	a5,a0
   11e04:	00050663          	beqz	a0,11e10 <_fflush_r+0x10>
   11e08:	04853703          	ld	a4,72(a0)
   11e0c:	00070e63          	beqz	a4,11e28 <_fflush_r+0x28>
   11e10:	01059703          	lh	a4,16(a1)
   11e14:	00071663          	bnez	a4,11e20 <_fflush_r+0x20>
   11e18:	00000513          	li	a0,0
   11e1c:	00008067          	ret
   11e20:	00078513          	mv	a0,a5
   11e24:	d81ff06f          	j	11ba4 <__sflush_r>
   11e28:	fe010113          	addi	sp,sp,-32
   11e2c:	00b13423          	sd	a1,8(sp)
   11e30:	00113c23          	sd	ra,24(sp)
   11e34:	00a13023          	sd	a0,0(sp)
   11e38:	f90fe0ef          	jal	105c8 <__sinit>
   11e3c:	00813583          	ld	a1,8(sp)
   11e40:	00013783          	ld	a5,0(sp)
   11e44:	01059703          	lh	a4,16(a1)
   11e48:	00070a63          	beqz	a4,11e5c <_fflush_r+0x5c>
   11e4c:	01813083          	ld	ra,24(sp)
   11e50:	00078513          	mv	a0,a5
   11e54:	02010113          	addi	sp,sp,32
   11e58:	d4dff06f          	j	11ba4 <__sflush_r>
   11e5c:	01813083          	ld	ra,24(sp)
   11e60:	00000513          	li	a0,0
   11e64:	02010113          	addi	sp,sp,32
   11e68:	00008067          	ret

0000000000011e6c <fflush>:
   11e6c:	06050063          	beqz	a0,11ecc <fflush+0x60>
   11e70:	00050593          	mv	a1,a0
   11e74:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e78:	00050663          	beqz	a0,11e84 <fflush+0x18>
   11e7c:	04853783          	ld	a5,72(a0)
   11e80:	00078c63          	beqz	a5,11e98 <fflush+0x2c>
   11e84:	01059783          	lh	a5,16(a1)
   11e88:	00079663          	bnez	a5,11e94 <fflush+0x28>
   11e8c:	00000513          	li	a0,0
   11e90:	00008067          	ret
   11e94:	d11ff06f          	j	11ba4 <__sflush_r>
   11e98:	fe010113          	addi	sp,sp,-32
   11e9c:	00b13423          	sd	a1,8(sp)
   11ea0:	00a13023          	sd	a0,0(sp)
   11ea4:	00113c23          	sd	ra,24(sp)
   11ea8:	f20fe0ef          	jal	105c8 <__sinit>
   11eac:	00813583          	ld	a1,8(sp)
   11eb0:	00013503          	ld	a0,0(sp)
   11eb4:	01059783          	lh	a5,16(a1)
   11eb8:	02079863          	bnez	a5,11ee8 <fflush+0x7c>
   11ebc:	01813083          	ld	ra,24(sp)
   11ec0:	00000513          	li	a0,0
   11ec4:	02010113          	addi	sp,sp,32
   11ec8:	00008067          	ret
   11ecc:	00013637          	lui	a2,0x13
   11ed0:	000125b7          	lui	a1,0x12
   11ed4:	00013537          	lui	a0,0x13
   11ed8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11edc:	e0058593          	addi	a1,a1,-512 # 11e00 <_fflush_r>
   11ee0:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11ee4:	f40fe06f          	j	10624 <_fwalk_sglue>
   11ee8:	01813083          	ld	ra,24(sp)
   11eec:	02010113          	addi	sp,sp,32
   11ef0:	cb5ff06f          	j	11ba4 <__sflush_r>

0000000000011ef4 <_sbrk_r>:
   11ef4:	fe010113          	addi	sp,sp,-32
   11ef8:	00813823          	sd	s0,16(sp)
   11efc:	00913423          	sd	s1,8(sp)
   11f00:	00050493          	mv	s1,a0
   11f04:	00058513          	mv	a0,a1
   11f08:	00113c23          	sd	ra,24(sp)
   11f0c:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   11f10:	228000ef          	jal	12138 <_sbrk>
   11f14:	fff00793          	li	a5,-1
   11f18:	00f50c63          	beq	a0,a5,11f30 <_sbrk_r+0x3c>
   11f1c:	01813083          	ld	ra,24(sp)
   11f20:	01013403          	ld	s0,16(sp)
   11f24:	00813483          	ld	s1,8(sp)
   11f28:	02010113          	addi	sp,sp,32
   11f2c:	00008067          	ret
   11f30:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   11f34:	fe0784e3          	beqz	a5,11f1c <_sbrk_r+0x28>
   11f38:	01813083          	ld	ra,24(sp)
   11f3c:	01013403          	ld	s0,16(sp)
   11f40:	00f4a023          	sw	a5,0(s1)
   11f44:	00813483          	ld	s1,8(sp)
   11f48:	02010113          	addi	sp,sp,32
   11f4c:	00008067          	ret

0000000000011f50 <__libc_fini_array>:
   11f50:	fe010113          	addi	sp,sp,-32
   11f54:	00813823          	sd	s0,16(sp)
   11f58:	000137b7          	lui	a5,0x13
   11f5c:	00013437          	lui	s0,0x13
   11f60:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   11f64:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11f68:	408787b3          	sub	a5,a5,s0
   11f6c:	00913423          	sd	s1,8(sp)
   11f70:	00113c23          	sd	ra,24(sp)
   11f74:	4037d493          	srai	s1,a5,0x3
   11f78:	02048063          	beqz	s1,11f98 <__libc_fini_array+0x48>
   11f7c:	ff840413          	addi	s0,s0,-8
   11f80:	00f40433          	add	s0,s0,a5
   11f84:	00043783          	ld	a5,0(s0)
   11f88:	fff48493          	addi	s1,s1,-1
   11f8c:	ff840413          	addi	s0,s0,-8
   11f90:	000780e7          	jalr	a5
   11f94:	fe0498e3          	bnez	s1,11f84 <__libc_fini_array+0x34>
   11f98:	01813083          	ld	ra,24(sp)
   11f9c:	01013403          	ld	s0,16(sp)
   11fa0:	00813483          	ld	s1,8(sp)
   11fa4:	02010113          	addi	sp,sp,32
   11fa8:	00008067          	ret

0000000000011fac <__register_exitproc>:
   11fac:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   11fb0:	04078e63          	beqz	a5,1200c <__register_exitproc+0x60>
   11fb4:	0087a703          	lw	a4,8(a5)
   11fb8:	01f00813          	li	a6,31
   11fbc:	08e84263          	blt	a6,a4,12040 <__register_exitproc+0x94>
   11fc0:	02050863          	beqz	a0,11ff0 <__register_exitproc+0x44>
   11fc4:	00371813          	slli	a6,a4,0x3
   11fc8:	01078833          	add	a6,a5,a6
   11fcc:	10c83823          	sd	a2,272(a6)
   11fd0:	3107a883          	lw	a7,784(a5)
   11fd4:	00100613          	li	a2,1
   11fd8:	00e6163b          	sllw	a2,a2,a4
   11fdc:	00c8e8b3          	or	a7,a7,a2
   11fe0:	3117a823          	sw	a7,784(a5)
   11fe4:	20d83823          	sd	a3,528(a6)
   11fe8:	00200693          	li	a3,2
   11fec:	02d50663          	beq	a0,a3,12018 <__register_exitproc+0x6c>
   11ff0:	0017069b          	addiw	a3,a4,1
   11ff4:	00371713          	slli	a4,a4,0x3
   11ff8:	00d7a423          	sw	a3,8(a5)
   11ffc:	00e787b3          	add	a5,a5,a4
   12000:	00b7b823          	sd	a1,16(a5)
   12004:	00000513          	li	a0,0
   12008:	00008067          	ret
   1200c:	45018793          	addi	a5,gp,1104 # 13c68 <__atexit0>
   12010:	1af1bc23          	sd	a5,440(gp) # 139d0 <__atexit>
   12014:	fa1ff06f          	j	11fb4 <__register_exitproc+0x8>
   12018:	3147a683          	lw	a3,788(a5)
   1201c:	00000513          	li	a0,0
   12020:	00d66633          	or	a2,a2,a3
   12024:	0017069b          	addiw	a3,a4,1
   12028:	00371713          	slli	a4,a4,0x3
   1202c:	30c7aa23          	sw	a2,788(a5)
   12030:	00d7a423          	sw	a3,8(a5)
   12034:	00e787b3          	add	a5,a5,a4
   12038:	00b7b823          	sd	a1,16(a5)
   1203c:	00008067          	ret
   12040:	fff00513          	li	a0,-1
   12044:	00008067          	ret

0000000000012048 <_close>:
   12048:	03900893          	li	a7,57
   1204c:	00000073          	ecall
   12050:	00054663          	bltz	a0,1205c <_close+0x14>
   12054:	0005051b          	sext.w	a0,a0
   12058:	00008067          	ret
   1205c:	fe010113          	addi	sp,sp,-32
   12060:	00113c23          	sd	ra,24(sp)
   12064:	00a13423          	sd	a0,8(sp)
   12068:	188000ef          	jal	121f0 <__errno>
   1206c:	00813783          	ld	a5,8(sp)
   12070:	01813083          	ld	ra,24(sp)
   12074:	40f007bb          	negw	a5,a5
   12078:	00f52023          	sw	a5,0(a0)
   1207c:	fff00513          	li	a0,-1
   12080:	02010113          	addi	sp,sp,32
   12084:	00008067          	ret

0000000000012088 <_exit>:
   12088:	05d00893          	li	a7,93
   1208c:	00000073          	ecall
   12090:	00054463          	bltz	a0,12098 <_exit+0x10>
   12094:	0000006f          	j	12094 <_exit+0xc>
   12098:	fe010113          	addi	sp,sp,-32
   1209c:	00113c23          	sd	ra,24(sp)
   120a0:	00a13423          	sd	a0,8(sp)
   120a4:	14c000ef          	jal	121f0 <__errno>
   120a8:	00813783          	ld	a5,8(sp)
   120ac:	40f007bb          	negw	a5,a5
   120b0:	00f52023          	sw	a5,0(a0)
   120b4:	0000006f          	j	120b4 <_exit+0x2c>

00000000000120b8 <_lseek>:
   120b8:	03e00893          	li	a7,62
   120bc:	00000073          	ecall
   120c0:	00054463          	bltz	a0,120c8 <_lseek+0x10>
   120c4:	00008067          	ret
   120c8:	fe010113          	addi	sp,sp,-32
   120cc:	00113c23          	sd	ra,24(sp)
   120d0:	00a13423          	sd	a0,8(sp)
   120d4:	11c000ef          	jal	121f0 <__errno>
   120d8:	00813783          	ld	a5,8(sp)
   120dc:	01813083          	ld	ra,24(sp)
   120e0:	40f007bb          	negw	a5,a5
   120e4:	00f52023          	sw	a5,0(a0)
   120e8:	fff00793          	li	a5,-1
   120ec:	00078513          	mv	a0,a5
   120f0:	02010113          	addi	sp,sp,32
   120f4:	00008067          	ret

00000000000120f8 <_read>:
   120f8:	03f00893          	li	a7,63
   120fc:	00000073          	ecall
   12100:	00054463          	bltz	a0,12108 <_read+0x10>
   12104:	00008067          	ret
   12108:	fe010113          	addi	sp,sp,-32
   1210c:	00113c23          	sd	ra,24(sp)
   12110:	00a13423          	sd	a0,8(sp)
   12114:	0dc000ef          	jal	121f0 <__errno>
   12118:	00813783          	ld	a5,8(sp)
   1211c:	01813083          	ld	ra,24(sp)
   12120:	40f007bb          	negw	a5,a5
   12124:	00f52023          	sw	a5,0(a0)
   12128:	fff00793          	li	a5,-1
   1212c:	00078513          	mv	a0,a5
   12130:	02010113          	addi	sp,sp,32
   12134:	00008067          	ret

0000000000012138 <_sbrk>:
   12138:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   1213c:	ff010113          	addi	sp,sp,-16
   12140:	00113423          	sd	ra,8(sp)
   12144:	00050713          	mv	a4,a0
   12148:	02079063          	bnez	a5,12168 <_sbrk+0x30>
   1214c:	0d600893          	li	a7,214
   12150:	00000513          	li	a0,0
   12154:	00000073          	ecall
   12158:	fff00793          	li	a5,-1
   1215c:	02f50c63          	beq	a0,a5,12194 <_sbrk+0x5c>
   12160:	00050793          	mv	a5,a0
   12164:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   12168:	00f70533          	add	a0,a4,a5
   1216c:	0d600893          	li	a7,214
   12170:	00000073          	ecall
   12174:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   12178:	00f70733          	add	a4,a4,a5
   1217c:	00e51c63          	bne	a0,a4,12194 <_sbrk+0x5c>
   12180:	00813083          	ld	ra,8(sp)
   12184:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   12188:	00078513          	mv	a0,a5
   1218c:	01010113          	addi	sp,sp,16
   12190:	00008067          	ret
   12194:	05c000ef          	jal	121f0 <__errno>
   12198:	00813083          	ld	ra,8(sp)
   1219c:	00c00793          	li	a5,12
   121a0:	00f52023          	sw	a5,0(a0)
   121a4:	fff00513          	li	a0,-1
   121a8:	01010113          	addi	sp,sp,16
   121ac:	00008067          	ret

00000000000121b0 <_write>:
   121b0:	04000893          	li	a7,64
   121b4:	00000073          	ecall
   121b8:	00054463          	bltz	a0,121c0 <_write+0x10>
   121bc:	00008067          	ret
   121c0:	fe010113          	addi	sp,sp,-32
   121c4:	00113c23          	sd	ra,24(sp)
   121c8:	00a13423          	sd	a0,8(sp)
   121cc:	024000ef          	jal	121f0 <__errno>
   121d0:	00813783          	ld	a5,8(sp)
   121d4:	01813083          	ld	ra,24(sp)
   121d8:	40f007bb          	negw	a5,a5
   121dc:	00f52023          	sw	a5,0(a0)
   121e0:	fff00793          	li	a5,-1
   121e4:	00078513          	mv	a0,a5
   121e8:	02010113          	addi	sp,sp,32
   121ec:	00008067          	ret

00000000000121f0 <__errno>:
   121f0:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   121f4:	00008067          	ret

Disassembly of section .eh_frame:

00000000000121f8 <__EH_FRAME_BEGIN__>:
   121f8:	0000                	.insn	2, 0x0000
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
   13028:	3a30                	.insn	2, 0x3a30
   1302a:	0001                	.insn	2, 0x0001
   1302c:	0000                	.insn	2, 0x0000
	...

0000000000013030 <_impure_data>:
	...
   13038:	3a30                	.insn	2, 0x3a30
   1303a:	0001                	.insn	2, 0x0001
   1303c:	0000                	.insn	2, 0x0000
   1303e:	0000                	.insn	2, 0x0000
   13040:	3ae0                	.insn	2, 0x3ae0
   13042:	0001                	.insn	2, 0x0001
   13044:	0000                	.insn	2, 0x0000
   13046:	0000                	.insn	2, 0x0000
   13048:	3b90                	.insn	2, 0x3b90
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

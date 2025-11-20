
test/build/without-syscall/n!.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	33d000ef          	jal	10c70 <__call_exitprocs>
   10138:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	781010ef          	jal	120c8 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	f9050513          	addi	a0,a0,-112 # 11f90 <__libc_fini_array>
   1015c:	44d0006f          	j	10da8 <atexit>
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
   10184:	211000ef          	jal	10b94 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c2050513          	addi	a0,a0,-992 # 10da8 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	dfc50513          	addi	a0,a0,-516 # 11f90 <__libc_fini_array>
   1019c:	40d000ef          	jal	10da8 <atexit>
   101a0:	161000ef          	jal	10b00 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	0e4000ef          	jal	10294 <main>
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
   101d8:	23850513          	addi	a0,a0,568 # 12238 <__EH_FRAME_BEGIN__>
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
   1020c:	23850513          	addi	a0,a0,568 # 12238 <__EH_FRAME_BEGIN__>
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
   10248:	0380006f          	j	10280 <cal_n+0x64>
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	fff7879b          	addiw	a5,a5,-1
   10254:	0007879b          	sext.w	a5,a5
   10258:	00078513          	mv	a0,a5
   1025c:	fc1ff0ef          	jal	1021c <cal_n>
   10260:	00050793          	mv	a5,a0
   10264:	00078713          	mv	a4,a5
   10268:	fec42783          	lw	a5,-20(s0)
   1026c:	00078593          	mv	a1,a5
   10270:	00070513          	mv	a0,a4
   10274:	05c000ef          	jal	102d0 <__muldi3>
   10278:	00050793          	mv	a5,a0
   1027c:	0007879b          	sext.w	a5,a5
   10280:	00078513          	mv	a0,a5
   10284:	01813083          	ld	ra,24(sp)
   10288:	01013403          	ld	s0,16(sp)
   1028c:	02010113          	addi	sp,sp,32
   10290:	00008067          	ret

0000000000010294 <main>:
   10294:	ff010113          	addi	sp,sp,-16
   10298:	00113423          	sd	ra,8(sp)
   1029c:	00813023          	sd	s0,0(sp)
   102a0:	01010413          	addi	s0,sp,16
   102a4:	00a00513          	li	a0,10
   102a8:	f75ff0ef          	jal	1021c <cal_n>
   102ac:	00050793          	mv	a5,a0
   102b0:	00078713          	mv	a4,a5
   102b4:	1ae1a023          	sw	a4,416(gp) # 139b8 <result>
   102b8:	00000793          	li	a5,0
   102bc:	00078513          	mv	a0,a5
   102c0:	00813083          	ld	ra,8(sp)
   102c4:	00013403          	ld	s0,0(sp)
   102c8:	01010113          	addi	sp,sp,16
   102cc:	00008067          	ret

00000000000102d0 <__muldi3>:
   102d0:	00050613          	mv	a2,a0
   102d4:	00000513          	li	a0,0
   102d8:	0015f693          	andi	a3,a1,1
   102dc:	00068463          	beqz	a3,102e4 <__muldi3+0x14>
   102e0:	00c50533          	add	a0,a0,a2
   102e4:	0015d593          	srli	a1,a1,0x1
   102e8:	00161613          	slli	a2,a2,0x1
   102ec:	fe0596e3          	bnez	a1,102d8 <__muldi3+0x8>
   102f0:	00008067          	ret

00000000000102f4 <__fp_lock>:
   102f4:	00000513          	li	a0,0
   102f8:	00008067          	ret

00000000000102fc <stdio_exit_handler>:
   102fc:	00013637          	lui	a2,0x13
   10300:	000125b7          	lui	a1,0x12
   10304:	00013537          	lui	a0,0x13
   10308:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1030c:	ad058593          	addi	a1,a1,-1328 # 11ad0 <_fclose_r>
   10310:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10314:	34c0006f          	j	10660 <_fwalk_sglue>

0000000000010318 <cleanup_stdio>:
   10318:	00853583          	ld	a1,8(a0)
   1031c:	ff010113          	addi	sp,sp,-16
   10320:	00813023          	sd	s0,0(sp)
   10324:	00113423          	sd	ra,8(sp)
   10328:	21818793          	addi	a5,gp,536 # 13a30 <__sf>
   1032c:	00050413          	mv	s0,a0
   10330:	00f58463          	beq	a1,a5,10338 <cleanup_stdio+0x20>
   10334:	79c010ef          	jal	11ad0 <_fclose_r>
   10338:	01043583          	ld	a1,16(s0)
   1033c:	2c818793          	addi	a5,gp,712 # 13ae0 <__sf+0xb0>
   10340:	00f58663          	beq	a1,a5,1034c <cleanup_stdio+0x34>
   10344:	00040513          	mv	a0,s0
   10348:	788010ef          	jal	11ad0 <_fclose_r>
   1034c:	01843583          	ld	a1,24(s0)
   10350:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10354:	00f58c63          	beq	a1,a5,1036c <cleanup_stdio+0x54>
   10358:	00040513          	mv	a0,s0
   1035c:	00013403          	ld	s0,0(sp)
   10360:	00813083          	ld	ra,8(sp)
   10364:	01010113          	addi	sp,sp,16
   10368:	7680106f          	j	11ad0 <_fclose_r>
   1036c:	00813083          	ld	ra,8(sp)
   10370:	00013403          	ld	s0,0(sp)
   10374:	01010113          	addi	sp,sp,16
   10378:	00008067          	ret

000000000001037c <__fp_unlock>:
   1037c:	00000513          	li	a0,0
   10380:	00008067          	ret

0000000000010384 <global_stdio_init.part.0>:
   10384:	fd010113          	addi	sp,sp,-48
   10388:	000107b7          	lui	a5,0x10
   1038c:	02813023          	sd	s0,32(sp)
   10390:	2fc78793          	addi	a5,a5,764 # 102fc <stdio_exit_handler>
   10394:	21818413          	addi	s0,gp,536 # 13a30 <__sf>
   10398:	02113423          	sd	ra,40(sp)
   1039c:	00913c23          	sd	s1,24(sp)
   103a0:	01213823          	sd	s2,16(sp)
   103a4:	01313423          	sd	s3,8(sp)
   103a8:	01413023          	sd	s4,0(sp)
   103ac:	1af1b423          	sd	a5,424(gp) # 139c0 <__stdio_exit_handler>
   103b0:	00800613          	li	a2,8
   103b4:	00400793          	li	a5,4
   103b8:	00000593          	li	a1,0
   103bc:	2bc18513          	addi	a0,gp,700 # 13ad4 <__sf+0xa4>
   103c0:	00f42823          	sw	a5,16(s0)
   103c4:	00043023          	sd	zero,0(s0)
   103c8:	00043423          	sd	zero,8(s0)
   103cc:	0a042623          	sw	zero,172(s0)
   103d0:	00043c23          	sd	zero,24(s0)
   103d4:	02042023          	sw	zero,32(s0)
   103d8:	02042423          	sw	zero,40(s0)
   103dc:	7b8000ef          	jal	10b94 <memset>
   103e0:	00010a37          	lui	s4,0x10
   103e4:	000109b7          	lui	s3,0x10
   103e8:	00011937          	lui	s2,0x11
   103ec:	000114b7          	lui	s1,0x11
   103f0:	000107b7          	lui	a5,0x10
   103f4:	730a0a13          	addi	s4,s4,1840 # 10730 <__sread>
   103f8:	79498993          	addi	s3,s3,1940 # 10794 <__swrite>
   103fc:	81c90913          	addi	s2,s2,-2020 # 1081c <__sseek>
   10400:	88048493          	addi	s1,s1,-1920 # 10880 <__sclose>
   10404:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10408:	00800613          	li	a2,8
   1040c:	00000593          	li	a1,0
   10410:	36c18513          	addi	a0,gp,876 # 13b84 <__sf+0x154>
   10414:	0cf42023          	sw	a5,192(s0)
   10418:	03443c23          	sd	s4,56(s0)
   1041c:	05343023          	sd	s3,64(s0)
   10420:	05243423          	sd	s2,72(s0)
   10424:	04943823          	sd	s1,80(s0)
   10428:	02843823          	sd	s0,48(s0)
   1042c:	0a043823          	sd	zero,176(s0)
   10430:	0a043c23          	sd	zero,184(s0)
   10434:	14042e23          	sw	zero,348(s0)
   10438:	0c043423          	sd	zero,200(s0)
   1043c:	0c042823          	sw	zero,208(s0)
   10440:	0c042c23          	sw	zero,216(s0)
   10444:	750000ef          	jal	10b94 <memset>
   10448:	000207b7          	lui	a5,0x20
   1044c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc092>
   10450:	2c818713          	addi	a4,gp,712 # 13ae0 <__sf+0xb0>
   10454:	41c18513          	addi	a0,gp,1052 # 13c34 <__sf+0x204>
   10458:	00800613          	li	a2,8
   1045c:	00000593          	li	a1,0
   10460:	0f443423          	sd	s4,232(s0)
   10464:	0f343823          	sd	s3,240(s0)
   10468:	0f243c23          	sd	s2,248(s0)
   1046c:	10943023          	sd	s1,256(s0)
   10470:	16f42823          	sw	a5,368(s0)
   10474:	16043023          	sd	zero,352(s0)
   10478:	16043423          	sd	zero,360(s0)
   1047c:	20042623          	sw	zero,524(s0)
   10480:	16043c23          	sd	zero,376(s0)
   10484:	18042023          	sw	zero,384(s0)
   10488:	18042423          	sw	zero,392(s0)
   1048c:	0ee43023          	sd	a4,224(s0)
   10490:	704000ef          	jal	10b94 <memset>
   10494:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10498:	19443c23          	sd	s4,408(s0)
   1049c:	1b343023          	sd	s3,416(s0)
   104a0:	1b243423          	sd	s2,424(s0)
   104a4:	1a943823          	sd	s1,432(s0)
   104a8:	02813083          	ld	ra,40(sp)
   104ac:	18f43823          	sd	a5,400(s0)
   104b0:	02013403          	ld	s0,32(sp)
   104b4:	01813483          	ld	s1,24(sp)
   104b8:	01013903          	ld	s2,16(sp)
   104bc:	00813983          	ld	s3,8(sp)
   104c0:	00013a03          	ld	s4,0(sp)
   104c4:	03010113          	addi	sp,sp,48
   104c8:	00008067          	ret

00000000000104cc <__sfp>:
   104cc:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   104d0:	fd010113          	addi	sp,sp,-48
   104d4:	00913c23          	sd	s1,24(sp)
   104d8:	02113423          	sd	ra,40(sp)
   104dc:	02813023          	sd	s0,32(sp)
   104e0:	00050493          	mv	s1,a0
   104e4:	10078463          	beqz	a5,105ec <__sfp+0x120>
   104e8:	000136b7          	lui	a3,0x13
   104ec:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   104f0:	0086a703          	lw	a4,8(a3)
   104f4:	08e05c63          	blez	a4,1058c <__sfp+0xc0>
   104f8:	02071713          	slli	a4,a4,0x20
   104fc:	02075713          	srli	a4,a4,0x20
   10500:	00171793          	slli	a5,a4,0x1
   10504:	00e787b3          	add	a5,a5,a4
   10508:	0106b403          	ld	s0,16(a3)
   1050c:	00279793          	slli	a5,a5,0x2
   10510:	40e787b3          	sub	a5,a5,a4
   10514:	00479793          	slli	a5,a5,0x4
   10518:	00f407b3          	add	a5,s0,a5
   1051c:	00c0006f          	j	10528 <__sfp+0x5c>
   10520:	0b040413          	addi	s0,s0,176
   10524:	06f40463          	beq	s0,a5,1058c <__sfp+0xc0>
   10528:	01041703          	lh	a4,16(s0)
   1052c:	fe071ae3          	bnez	a4,10520 <__sfp+0x54>
   10530:	ffff07b7          	lui	a5,0xffff0
   10534:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc081>
   10538:	00f42823          	sw	a5,16(s0)
   1053c:	0a042623          	sw	zero,172(s0)
   10540:	00043023          	sd	zero,0(s0)
   10544:	00043423          	sd	zero,8(s0)
   10548:	00043c23          	sd	zero,24(s0)
   1054c:	02042023          	sw	zero,32(s0)
   10550:	02042423          	sw	zero,40(s0)
   10554:	00800613          	li	a2,8
   10558:	00000593          	li	a1,0
   1055c:	0a440513          	addi	a0,s0,164
   10560:	634000ef          	jal	10b94 <memset>
   10564:	04043c23          	sd	zero,88(s0)
   10568:	06042023          	sw	zero,96(s0)
   1056c:	06043c23          	sd	zero,120(s0)
   10570:	08042023          	sw	zero,128(s0)
   10574:	02813083          	ld	ra,40(sp)
   10578:	00040513          	mv	a0,s0
   1057c:	02013403          	ld	s0,32(sp)
   10580:	01813483          	ld	s1,24(sp)
   10584:	03010113          	addi	sp,sp,48
   10588:	00008067          	ret
   1058c:	0006b403          	ld	s0,0(a3)
   10590:	00040663          	beqz	s0,1059c <__sfp+0xd0>
   10594:	00040693          	mv	a3,s0
   10598:	f59ff06f          	j	104f0 <__sfp+0x24>
   1059c:	2d800593          	li	a1,728
   105a0:	00048513          	mv	a0,s1
   105a4:	00d13423          	sd	a3,8(sp)
   105a8:	43d000ef          	jal	111e4 <_malloc_r>
   105ac:	00813683          	ld	a3,8(sp)
   105b0:	00050413          	mv	s0,a0
   105b4:	04050063          	beqz	a0,105f4 <__sfp+0x128>
   105b8:	00400793          	li	a5,4
   105bc:	00f52423          	sw	a5,8(a0)
   105c0:	01850513          	addi	a0,a0,24
   105c4:	00043023          	sd	zero,0(s0)
   105c8:	00a43823          	sd	a0,16(s0)
   105cc:	2c000613          	li	a2,704
   105d0:	00000593          	li	a1,0
   105d4:	00d13423          	sd	a3,8(sp)
   105d8:	5bc000ef          	jal	10b94 <memset>
   105dc:	00813683          	ld	a3,8(sp)
   105e0:	0086b023          	sd	s0,0(a3)
   105e4:	00040693          	mv	a3,s0
   105e8:	f09ff06f          	j	104f0 <__sfp+0x24>
   105ec:	d99ff0ef          	jal	10384 <global_stdio_init.part.0>
   105f0:	ef9ff06f          	j	104e8 <__sfp+0x1c>
   105f4:	0006b023          	sd	zero,0(a3)
   105f8:	00c00793          	li	a5,12
   105fc:	00f4a023          	sw	a5,0(s1)
   10600:	f75ff06f          	j	10574 <__sfp+0xa8>

0000000000010604 <__sinit>:
   10604:	04853783          	ld	a5,72(a0)
   10608:	00078463          	beqz	a5,10610 <__sinit+0xc>
   1060c:	00008067          	ret
   10610:	000107b7          	lui	a5,0x10
   10614:	1a81b703          	ld	a4,424(gp) # 139c0 <__stdio_exit_handler>
   10618:	31878793          	addi	a5,a5,792 # 10318 <cleanup_stdio>
   1061c:	04f53423          	sd	a5,72(a0)
   10620:	fe0716e3          	bnez	a4,1060c <__sinit+0x8>
   10624:	d61ff06f          	j	10384 <global_stdio_init.part.0>

0000000000010628 <__sfp_lock_acquire>:
   10628:	00008067          	ret

000000000001062c <__sfp_lock_release>:
   1062c:	00008067          	ret

0000000000010630 <__fp_lock_all>:
   10630:	00013637          	lui	a2,0x13
   10634:	000105b7          	lui	a1,0x10
   10638:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1063c:	2f458593          	addi	a1,a1,756 # 102f4 <__fp_lock>
   10640:	00000513          	li	a0,0
   10644:	01c0006f          	j	10660 <_fwalk_sglue>

0000000000010648 <__fp_unlock_all>:
   10648:	00013637          	lui	a2,0x13
   1064c:	000105b7          	lui	a1,0x10
   10650:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10654:	37c58593          	addi	a1,a1,892 # 1037c <__fp_unlock>
   10658:	00000513          	li	a0,0
   1065c:	0040006f          	j	10660 <_fwalk_sglue>

0000000000010660 <_fwalk_sglue>:
   10660:	fb010113          	addi	sp,sp,-80
   10664:	03213823          	sd	s2,48(sp)
   10668:	03313423          	sd	s3,40(sp)
   1066c:	03413023          	sd	s4,32(sp)
   10670:	01513c23          	sd	s5,24(sp)
   10674:	01613823          	sd	s6,16(sp)
   10678:	01713423          	sd	s7,8(sp)
   1067c:	04113423          	sd	ra,72(sp)
   10680:	04813023          	sd	s0,64(sp)
   10684:	02913c23          	sd	s1,56(sp)
   10688:	00060913          	mv	s2,a2
   1068c:	00050a13          	mv	s4,a0
   10690:	00058a93          	mv	s5,a1
   10694:	00000b13          	li	s6,0
   10698:	00100b93          	li	s7,1
   1069c:	fff00993          	li	s3,-1
   106a0:	00892783          	lw	a5,8(s2)
   106a4:	04f05a63          	blez	a5,106f8 <_fwalk_sglue+0x98>
   106a8:	02079793          	slli	a5,a5,0x20
   106ac:	0207d793          	srli	a5,a5,0x20
   106b0:	00179493          	slli	s1,a5,0x1
   106b4:	00f484b3          	add	s1,s1,a5
   106b8:	01093403          	ld	s0,16(s2)
   106bc:	00249493          	slli	s1,s1,0x2
   106c0:	40f484b3          	sub	s1,s1,a5
   106c4:	00449493          	slli	s1,s1,0x4
   106c8:	009404b3          	add	s1,s0,s1
   106cc:	01045783          	lhu	a5,16(s0)
   106d0:	02fbf063          	bgeu	s7,a5,106f0 <_fwalk_sglue+0x90>
   106d4:	01241783          	lh	a5,18(s0)
   106d8:	00040593          	mv	a1,s0
   106dc:	000a0513          	mv	a0,s4
   106e0:	01378863          	beq	a5,s3,106f0 <_fwalk_sglue+0x90>
   106e4:	000a80e7          	jalr	s5
   106e8:	01656b33          	or	s6,a0,s6
   106ec:	000b0b1b          	sext.w	s6,s6
   106f0:	0b040413          	addi	s0,s0,176
   106f4:	fc941ce3          	bne	s0,s1,106cc <_fwalk_sglue+0x6c>
   106f8:	00093903          	ld	s2,0(s2)
   106fc:	fa0912e3          	bnez	s2,106a0 <_fwalk_sglue+0x40>
   10700:	04813083          	ld	ra,72(sp)
   10704:	04013403          	ld	s0,64(sp)
   10708:	03813483          	ld	s1,56(sp)
   1070c:	03013903          	ld	s2,48(sp)
   10710:	02813983          	ld	s3,40(sp)
   10714:	02013a03          	ld	s4,32(sp)
   10718:	01813a83          	ld	s5,24(sp)
   1071c:	00813b83          	ld	s7,8(sp)
   10720:	000b0513          	mv	a0,s6
   10724:	01013b03          	ld	s6,16(sp)
   10728:	05010113          	addi	sp,sp,80
   1072c:	00008067          	ret

0000000000010730 <__sread>:
   10730:	ff010113          	addi	sp,sp,-16
   10734:	00813023          	sd	s0,0(sp)
   10738:	00058413          	mv	s0,a1
   1073c:	01259583          	lh	a1,18(a1)
   10740:	00113423          	sd	ra,8(sp)
   10744:	2ec000ef          	jal	10a30 <_read_r>
   10748:	02054063          	bltz	a0,10768 <__sread+0x38>
   1074c:	09043783          	ld	a5,144(s0)
   10750:	00813083          	ld	ra,8(sp)
   10754:	00a787b3          	add	a5,a5,a0
   10758:	08f43823          	sd	a5,144(s0)
   1075c:	00013403          	ld	s0,0(sp)
   10760:	01010113          	addi	sp,sp,16
   10764:	00008067          	ret
   10768:	01045783          	lhu	a5,16(s0)
   1076c:	fffff737          	lui	a4,0xfffff
   10770:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   10774:	00e7f7b3          	and	a5,a5,a4
   10778:	00813083          	ld	ra,8(sp)
   1077c:	00f41823          	sh	a5,16(s0)
   10780:	00013403          	ld	s0,0(sp)
   10784:	01010113          	addi	sp,sp,16
   10788:	00008067          	ret

000000000001078c <__seofread>:
   1078c:	00000513          	li	a0,0
   10790:	00008067          	ret

0000000000010794 <__swrite>:
   10794:	01059783          	lh	a5,16(a1)
   10798:	fd010113          	addi	sp,sp,-48
   1079c:	00068313          	mv	t1,a3
   107a0:	02113423          	sd	ra,40(sp)
   107a4:	1007f693          	andi	a3,a5,256
   107a8:	00058713          	mv	a4,a1
   107ac:	00060893          	mv	a7,a2
   107b0:	00050813          	mv	a6,a0
   107b4:	02069863          	bnez	a3,107e4 <__swrite+0x50>
   107b8:	fffff6b7          	lui	a3,0xfffff
   107bc:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   107c0:	02813083          	ld	ra,40(sp)
   107c4:	00d7f7b3          	and	a5,a5,a3
   107c8:	01271583          	lh	a1,18(a4)
   107cc:	00f71823          	sh	a5,16(a4)
   107d0:	00030693          	mv	a3,t1
   107d4:	00088613          	mv	a2,a7
   107d8:	00080513          	mv	a0,a6
   107dc:	03010113          	addi	sp,sp,48
   107e0:	2b80006f          	j	10a98 <_write_r>
   107e4:	01259583          	lh	a1,18(a1)
   107e8:	00c13823          	sd	a2,16(sp)
   107ec:	00200693          	li	a3,2
   107f0:	00000613          	li	a2,0
   107f4:	00613c23          	sd	t1,24(sp)
   107f8:	00e13023          	sd	a4,0(sp)
   107fc:	00a13423          	sd	a0,8(sp)
   10800:	1c8000ef          	jal	109c8 <_lseek_r>
   10804:	00013703          	ld	a4,0(sp)
   10808:	01813303          	ld	t1,24(sp)
   1080c:	01013883          	ld	a7,16(sp)
   10810:	01071783          	lh	a5,16(a4)
   10814:	00813803          	ld	a6,8(sp)
   10818:	fa1ff06f          	j	107b8 <__swrite+0x24>

000000000001081c <__sseek>:
   1081c:	ff010113          	addi	sp,sp,-16
   10820:	00813023          	sd	s0,0(sp)
   10824:	00058413          	mv	s0,a1
   10828:	01259583          	lh	a1,18(a1)
   1082c:	00113423          	sd	ra,8(sp)
   10830:	198000ef          	jal	109c8 <_lseek_r>
   10834:	fff00713          	li	a4,-1
   10838:	01041783          	lh	a5,16(s0)
   1083c:	02e50263          	beq	a0,a4,10860 <__sseek+0x44>
   10840:	00001737          	lui	a4,0x1
   10844:	00e7e7b3          	or	a5,a5,a4
   10848:	00813083          	ld	ra,8(sp)
   1084c:	08a43823          	sd	a0,144(s0)
   10850:	00f41823          	sh	a5,16(s0)
   10854:	00013403          	ld	s0,0(sp)
   10858:	01010113          	addi	sp,sp,16
   1085c:	00008067          	ret
   10860:	80050713          	addi	a4,a0,-2048
   10864:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10868:	00e7f7b3          	and	a5,a5,a4
   1086c:	00813083          	ld	ra,8(sp)
   10870:	00f41823          	sh	a5,16(s0)
   10874:	00013403          	ld	s0,0(sp)
   10878:	01010113          	addi	sp,sp,16
   1087c:	00008067          	ret

0000000000010880 <__sclose>:
   10880:	01259583          	lh	a1,18(a1)
   10884:	0040006f          	j	10888 <_close_r>

0000000000010888 <_close_r>:
   10888:	fe010113          	addi	sp,sp,-32
   1088c:	00813823          	sd	s0,16(sp)
   10890:	00913423          	sd	s1,8(sp)
   10894:	00050493          	mv	s1,a0
   10898:	00058513          	mv	a0,a1
   1089c:	00113c23          	sd	ra,24(sp)
   108a0:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   108a4:	7e4010ef          	jal	12088 <_close>
   108a8:	fff00793          	li	a5,-1
   108ac:	00f50c63          	beq	a0,a5,108c4 <_close_r+0x3c>
   108b0:	01813083          	ld	ra,24(sp)
   108b4:	01013403          	ld	s0,16(sp)
   108b8:	00813483          	ld	s1,8(sp)
   108bc:	02010113          	addi	sp,sp,32
   108c0:	00008067          	ret
   108c4:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   108c8:	fe0784e3          	beqz	a5,108b0 <_close_r+0x28>
   108cc:	01813083          	ld	ra,24(sp)
   108d0:	01013403          	ld	s0,16(sp)
   108d4:	00f4a023          	sw	a5,0(s1)
   108d8:	00813483          	ld	s1,8(sp)
   108dc:	02010113          	addi	sp,sp,32
   108e0:	00008067          	ret

00000000000108e4 <_reclaim_reent>:
   108e4:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   108e8:	0ca78e63          	beq	a5,a0,109c4 <_reclaim_reent+0xe0>
   108ec:	06853583          	ld	a1,104(a0)
   108f0:	fd010113          	addi	sp,sp,-48
   108f4:	00913c23          	sd	s1,24(sp)
   108f8:	02113423          	sd	ra,40(sp)
   108fc:	02813023          	sd	s0,32(sp)
   10900:	00050493          	mv	s1,a0
   10904:	04058863          	beqz	a1,10954 <_reclaim_reent+0x70>
   10908:	01213823          	sd	s2,16(sp)
   1090c:	01313423          	sd	s3,8(sp)
   10910:	00000913          	li	s2,0
   10914:	20000993          	li	s3,512
   10918:	012587b3          	add	a5,a1,s2
   1091c:	0007b403          	ld	s0,0(a5)
   10920:	00040e63          	beqz	s0,1093c <_reclaim_reent+0x58>
   10924:	00040593          	mv	a1,s0
   10928:	00043403          	ld	s0,0(s0)
   1092c:	00048513          	mv	a0,s1
   10930:	5b0000ef          	jal	10ee0 <_free_r>
   10934:	fe0418e3          	bnez	s0,10924 <_reclaim_reent+0x40>
   10938:	0684b583          	ld	a1,104(s1)
   1093c:	00890913          	addi	s2,s2,8
   10940:	fd391ce3          	bne	s2,s3,10918 <_reclaim_reent+0x34>
   10944:	00048513          	mv	a0,s1
   10948:	598000ef          	jal	10ee0 <_free_r>
   1094c:	01013903          	ld	s2,16(sp)
   10950:	00813983          	ld	s3,8(sp)
   10954:	0504b583          	ld	a1,80(s1)
   10958:	00058663          	beqz	a1,10964 <_reclaim_reent+0x80>
   1095c:	00048513          	mv	a0,s1
   10960:	580000ef          	jal	10ee0 <_free_r>
   10964:	0604b403          	ld	s0,96(s1)
   10968:	00040c63          	beqz	s0,10980 <_reclaim_reent+0x9c>
   1096c:	00040593          	mv	a1,s0
   10970:	00043403          	ld	s0,0(s0)
   10974:	00048513          	mv	a0,s1
   10978:	568000ef          	jal	10ee0 <_free_r>
   1097c:	fe0418e3          	bnez	s0,1096c <_reclaim_reent+0x88>
   10980:	0784b583          	ld	a1,120(s1)
   10984:	00058663          	beqz	a1,10990 <_reclaim_reent+0xac>
   10988:	00048513          	mv	a0,s1
   1098c:	554000ef          	jal	10ee0 <_free_r>
   10990:	0484b783          	ld	a5,72(s1)
   10994:	00078e63          	beqz	a5,109b0 <_reclaim_reent+0xcc>
   10998:	02013403          	ld	s0,32(sp)
   1099c:	02813083          	ld	ra,40(sp)
   109a0:	00048513          	mv	a0,s1
   109a4:	01813483          	ld	s1,24(sp)
   109a8:	03010113          	addi	sp,sp,48
   109ac:	00078067          	jr	a5
   109b0:	02813083          	ld	ra,40(sp)
   109b4:	02013403          	ld	s0,32(sp)
   109b8:	01813483          	ld	s1,24(sp)
   109bc:	03010113          	addi	sp,sp,48
   109c0:	00008067          	ret
   109c4:	00008067          	ret

00000000000109c8 <_lseek_r>:
   109c8:	fe010113          	addi	sp,sp,-32
   109cc:	00058793          	mv	a5,a1
   109d0:	00813823          	sd	s0,16(sp)
   109d4:	00913423          	sd	s1,8(sp)
   109d8:	00060593          	mv	a1,a2
   109dc:	00050493          	mv	s1,a0
   109e0:	00068613          	mv	a2,a3
   109e4:	00078513          	mv	a0,a5
   109e8:	00113c23          	sd	ra,24(sp)
   109ec:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   109f0:	708010ef          	jal	120f8 <_lseek>
   109f4:	fff00793          	li	a5,-1
   109f8:	00f50c63          	beq	a0,a5,10a10 <_lseek_r+0x48>
   109fc:	01813083          	ld	ra,24(sp)
   10a00:	01013403          	ld	s0,16(sp)
   10a04:	00813483          	ld	s1,8(sp)
   10a08:	02010113          	addi	sp,sp,32
   10a0c:	00008067          	ret
   10a10:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   10a14:	fe0784e3          	beqz	a5,109fc <_lseek_r+0x34>
   10a18:	01813083          	ld	ra,24(sp)
   10a1c:	01013403          	ld	s0,16(sp)
   10a20:	00f4a023          	sw	a5,0(s1)
   10a24:	00813483          	ld	s1,8(sp)
   10a28:	02010113          	addi	sp,sp,32
   10a2c:	00008067          	ret

0000000000010a30 <_read_r>:
   10a30:	fe010113          	addi	sp,sp,-32
   10a34:	00058793          	mv	a5,a1
   10a38:	00813823          	sd	s0,16(sp)
   10a3c:	00913423          	sd	s1,8(sp)
   10a40:	00060593          	mv	a1,a2
   10a44:	00050493          	mv	s1,a0
   10a48:	00068613          	mv	a2,a3
   10a4c:	00078513          	mv	a0,a5
   10a50:	00113c23          	sd	ra,24(sp)
   10a54:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   10a58:	6e0010ef          	jal	12138 <_read>
   10a5c:	fff00793          	li	a5,-1
   10a60:	00f50c63          	beq	a0,a5,10a78 <_read_r+0x48>
   10a64:	01813083          	ld	ra,24(sp)
   10a68:	01013403          	ld	s0,16(sp)
   10a6c:	00813483          	ld	s1,8(sp)
   10a70:	02010113          	addi	sp,sp,32
   10a74:	00008067          	ret
   10a78:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   10a7c:	fe0784e3          	beqz	a5,10a64 <_read_r+0x34>
   10a80:	01813083          	ld	ra,24(sp)
   10a84:	01013403          	ld	s0,16(sp)
   10a88:	00f4a023          	sw	a5,0(s1)
   10a8c:	00813483          	ld	s1,8(sp)
   10a90:	02010113          	addi	sp,sp,32
   10a94:	00008067          	ret

0000000000010a98 <_write_r>:
   10a98:	fe010113          	addi	sp,sp,-32
   10a9c:	00058793          	mv	a5,a1
   10aa0:	00813823          	sd	s0,16(sp)
   10aa4:	00913423          	sd	s1,8(sp)
   10aa8:	00060593          	mv	a1,a2
   10aac:	00050493          	mv	s1,a0
   10ab0:	00068613          	mv	a2,a3
   10ab4:	00078513          	mv	a0,a5
   10ab8:	00113c23          	sd	ra,24(sp)
   10abc:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   10ac0:	730010ef          	jal	121f0 <_write>
   10ac4:	fff00793          	li	a5,-1
   10ac8:	00f50c63          	beq	a0,a5,10ae0 <_write_r+0x48>
   10acc:	01813083          	ld	ra,24(sp)
   10ad0:	01013403          	ld	s0,16(sp)
   10ad4:	00813483          	ld	s1,8(sp)
   10ad8:	02010113          	addi	sp,sp,32
   10adc:	00008067          	ret
   10ae0:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   10ae4:	fe0784e3          	beqz	a5,10acc <_write_r+0x34>
   10ae8:	01813083          	ld	ra,24(sp)
   10aec:	01013403          	ld	s0,16(sp)
   10af0:	00f4a023          	sw	a5,0(s1)
   10af4:	00813483          	ld	s1,8(sp)
   10af8:	02010113          	addi	sp,sp,32
   10afc:	00008067          	ret

0000000000010b00 <__libc_init_array>:
   10b00:	fe010113          	addi	sp,sp,-32
   10b04:	00813823          	sd	s0,16(sp)
   10b08:	01213023          	sd	s2,0(sp)
   10b0c:	00013437          	lui	s0,0x13
   10b10:	00013937          	lui	s2,0x13
   10b14:	00113c23          	sd	ra,24(sp)
   10b18:	00913423          	sd	s1,8(sp)
   10b1c:	00090913          	mv	s2,s2
   10b20:	00040413          	mv	s0,s0
   10b24:	02890263          	beq	s2,s0,10b48 <__libc_init_array+0x48>
   10b28:	40890933          	sub	s2,s2,s0
   10b2c:	40395913          	srai	s2,s2,0x3
   10b30:	00000493          	li	s1,0
   10b34:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b38:	00148493          	addi	s1,s1,1
   10b3c:	00840413          	addi	s0,s0,8
   10b40:	000780e7          	jalr	a5
   10b44:	ff24e8e3          	bltu	s1,s2,10b34 <__libc_init_array+0x34>
   10b48:	00013937          	lui	s2,0x13
   10b4c:	00013437          	lui	s0,0x13
   10b50:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b54:	00040413          	mv	s0,s0
   10b58:	02890263          	beq	s2,s0,10b7c <__libc_init_array+0x7c>
   10b5c:	40890933          	sub	s2,s2,s0
   10b60:	40395913          	srai	s2,s2,0x3
   10b64:	00000493          	li	s1,0
   10b68:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b6c:	00148493          	addi	s1,s1,1
   10b70:	00840413          	addi	s0,s0,8
   10b74:	000780e7          	jalr	a5
   10b78:	ff24e8e3          	bltu	s1,s2,10b68 <__libc_init_array+0x68>
   10b7c:	01813083          	ld	ra,24(sp)
   10b80:	01013403          	ld	s0,16(sp)
   10b84:	00813483          	ld	s1,8(sp)
   10b88:	00013903          	ld	s2,0(sp)
   10b8c:	02010113          	addi	sp,sp,32
   10b90:	00008067          	ret

0000000000010b94 <memset>:
   10b94:	00f00313          	li	t1,15
   10b98:	00050713          	mv	a4,a0
   10b9c:	02c37a63          	bgeu	t1,a2,10bd0 <memset+0x3c>
   10ba0:	00f77793          	andi	a5,a4,15
   10ba4:	0a079063          	bnez	a5,10c44 <memset+0xb0>
   10ba8:	06059e63          	bnez	a1,10c24 <memset+0x90>
   10bac:	ff067693          	andi	a3,a2,-16
   10bb0:	00f67613          	andi	a2,a2,15
   10bb4:	00e686b3          	add	a3,a3,a4
   10bb8:	00b73023          	sd	a1,0(a4)
   10bbc:	00b73423          	sd	a1,8(a4)
   10bc0:	01070713          	addi	a4,a4,16
   10bc4:	fed76ae3          	bltu	a4,a3,10bb8 <memset+0x24>
   10bc8:	00061463          	bnez	a2,10bd0 <memset+0x3c>
   10bcc:	00008067          	ret
   10bd0:	40c306b3          	sub	a3,t1,a2
   10bd4:	00269693          	slli	a3,a3,0x2
   10bd8:	00000297          	auipc	t0,0x0
   10bdc:	005686b3          	add	a3,a3,t0
   10be0:	00c68067          	jr	12(a3)
   10be4:	00b70723          	sb	a1,14(a4)
   10be8:	00b706a3          	sb	a1,13(a4)
   10bec:	00b70623          	sb	a1,12(a4)
   10bf0:	00b705a3          	sb	a1,11(a4)
   10bf4:	00b70523          	sb	a1,10(a4)
   10bf8:	00b704a3          	sb	a1,9(a4)
   10bfc:	00b70423          	sb	a1,8(a4)
   10c00:	00b703a3          	sb	a1,7(a4)
   10c04:	00b70323          	sb	a1,6(a4)
   10c08:	00b702a3          	sb	a1,5(a4)
   10c0c:	00b70223          	sb	a1,4(a4)
   10c10:	00b701a3          	sb	a1,3(a4)
   10c14:	00b70123          	sb	a1,2(a4)
   10c18:	00b700a3          	sb	a1,1(a4)
   10c1c:	00b70023          	sb	a1,0(a4)
   10c20:	00008067          	ret
   10c24:	0ff5f593          	zext.b	a1,a1
   10c28:	00859693          	slli	a3,a1,0x8
   10c2c:	00d5e5b3          	or	a1,a1,a3
   10c30:	01059693          	slli	a3,a1,0x10
   10c34:	00d5e5b3          	or	a1,a1,a3
   10c38:	02059693          	slli	a3,a1,0x20
   10c3c:	00d5e5b3          	or	a1,a1,a3
   10c40:	f6dff06f          	j	10bac <memset+0x18>
   10c44:	00279693          	slli	a3,a5,0x2
   10c48:	00000297          	auipc	t0,0x0
   10c4c:	005686b3          	add	a3,a3,t0
   10c50:	00008293          	mv	t0,ra
   10c54:	f98680e7          	jalr	-104(a3)
   10c58:	00028093          	mv	ra,t0
   10c5c:	ff078793          	addi	a5,a5,-16
   10c60:	40f70733          	sub	a4,a4,a5
   10c64:	00f60633          	add	a2,a2,a5
   10c68:	f6c374e3          	bgeu	t1,a2,10bd0 <memset+0x3c>
   10c6c:	f3dff06f          	j	10ba8 <memset+0x14>

0000000000010c70 <__call_exitprocs>:
   10c70:	fb010113          	addi	sp,sp,-80
   10c74:	03413023          	sd	s4,32(sp)
   10c78:	03213823          	sd	s2,48(sp)
   10c7c:	1b81b903          	ld	s2,440(gp) # 139d0 <__atexit>
   10c80:	04113423          	sd	ra,72(sp)
   10c84:	06090e63          	beqz	s2,10d00 <__call_exitprocs+0x90>
   10c88:	03313423          	sd	s3,40(sp)
   10c8c:	01513c23          	sd	s5,24(sp)
   10c90:	01613823          	sd	s6,16(sp)
   10c94:	01713423          	sd	s7,8(sp)
   10c98:	04813023          	sd	s0,64(sp)
   10c9c:	02913c23          	sd	s1,56(sp)
   10ca0:	01813023          	sd	s8,0(sp)
   10ca4:	00050b13          	mv	s6,a0
   10ca8:	00058b93          	mv	s7,a1
   10cac:	fff00993          	li	s3,-1
   10cb0:	00100a93          	li	s5,1
   10cb4:	00892403          	lw	s0,8(s2)
   10cb8:	fff4041b          	addiw	s0,s0,-1
   10cbc:	02044463          	bltz	s0,10ce4 <__call_exitprocs+0x74>
   10cc0:	01090493          	addi	s1,s2,16
   10cc4:	00341793          	slli	a5,s0,0x3
   10cc8:	00f484b3          	add	s1,s1,a5
   10ccc:	040b8463          	beqz	s7,10d14 <__call_exitprocs+0xa4>
   10cd0:	2004b783          	ld	a5,512(s1)
   10cd4:	05778063          	beq	a5,s7,10d14 <__call_exitprocs+0xa4>
   10cd8:	fff4041b          	addiw	s0,s0,-1
   10cdc:	ff848493          	addi	s1,s1,-8
   10ce0:	ff3418e3          	bne	s0,s3,10cd0 <__call_exitprocs+0x60>
   10ce4:	04013403          	ld	s0,64(sp)
   10ce8:	03813483          	ld	s1,56(sp)
   10cec:	02813983          	ld	s3,40(sp)
   10cf0:	01813a83          	ld	s5,24(sp)
   10cf4:	01013b03          	ld	s6,16(sp)
   10cf8:	00813b83          	ld	s7,8(sp)
   10cfc:	00013c03          	ld	s8,0(sp)
   10d00:	04813083          	ld	ra,72(sp)
   10d04:	03013903          	ld	s2,48(sp)
   10d08:	02013a03          	ld	s4,32(sp)
   10d0c:	05010113          	addi	sp,sp,80
   10d10:	00008067          	ret
   10d14:	00892783          	lw	a5,8(s2)
   10d18:	0004b683          	ld	a3,0(s1)
   10d1c:	fff7879b          	addiw	a5,a5,-1
   10d20:	06878a63          	beq	a5,s0,10d94 <__call_exitprocs+0x124>
   10d24:	0004b023          	sd	zero,0(s1)
   10d28:	02068663          	beqz	a3,10d54 <__call_exitprocs+0xe4>
   10d2c:	31092783          	lw	a5,784(s2)
   10d30:	008a973b          	sllw	a4,s5,s0
   10d34:	00892c03          	lw	s8,8(s2)
   10d38:	00e7f7b3          	and	a5,a5,a4
   10d3c:	02079463          	bnez	a5,10d64 <__call_exitprocs+0xf4>
   10d40:	000680e7          	jalr	a3
   10d44:	00892703          	lw	a4,8(s2)
   10d48:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   10d4c:	03871e63          	bne	a4,s8,10d88 <__call_exitprocs+0x118>
   10d50:	03279c63          	bne	a5,s2,10d88 <__call_exitprocs+0x118>
   10d54:	fff4041b          	addiw	s0,s0,-1
   10d58:	ff848493          	addi	s1,s1,-8
   10d5c:	f73418e3          	bne	s0,s3,10ccc <__call_exitprocs+0x5c>
   10d60:	f85ff06f          	j	10ce4 <__call_exitprocs+0x74>
   10d64:	31492783          	lw	a5,788(s2)
   10d68:	1004b583          	ld	a1,256(s1)
   10d6c:	00f77733          	and	a4,a4,a5
   10d70:	02071663          	bnez	a4,10d9c <__call_exitprocs+0x12c>
   10d74:	000b0513          	mv	a0,s6
   10d78:	000680e7          	jalr	a3
   10d7c:	00892703          	lw	a4,8(s2)
   10d80:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   10d84:	fd8706e3          	beq	a4,s8,10d50 <__call_exitprocs+0xe0>
   10d88:	f4078ee3          	beqz	a5,10ce4 <__call_exitprocs+0x74>
   10d8c:	00078913          	mv	s2,a5
   10d90:	f25ff06f          	j	10cb4 <__call_exitprocs+0x44>
   10d94:	00892423          	sw	s0,8(s2)
   10d98:	f91ff06f          	j	10d28 <__call_exitprocs+0xb8>
   10d9c:	00058513          	mv	a0,a1
   10da0:	000680e7          	jalr	a3
   10da4:	fa1ff06f          	j	10d44 <__call_exitprocs+0xd4>

0000000000010da8 <atexit>:
   10da8:	00050593          	mv	a1,a0
   10dac:	00000693          	li	a3,0
   10db0:	00000613          	li	a2,0
   10db4:	00000513          	li	a0,0
   10db8:	2340106f          	j	11fec <__register_exitproc>

0000000000010dbc <_malloc_trim_r>:
   10dbc:	fd010113          	addi	sp,sp,-48
   10dc0:	01213823          	sd	s2,16(sp)
   10dc4:	00013937          	lui	s2,0x13
   10dc8:	02813023          	sd	s0,32(sp)
   10dcc:	00913c23          	sd	s1,24(sp)
   10dd0:	01313423          	sd	s3,8(sp)
   10dd4:	00058413          	mv	s0,a1
   10dd8:	02113423          	sd	ra,40(sp)
   10ddc:	00050993          	mv	s3,a0
   10de0:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10de4:	4e5000ef          	jal	11ac8 <__malloc_lock>
   10de8:	01093783          	ld	a5,16(s2)
   10dec:	00001737          	lui	a4,0x1
   10df0:	0087b483          	ld	s1,8(a5)
   10df4:	ffc4f493          	andi	s1,s1,-4
   10df8:	7ff48793          	addi	a5,s1,2047
   10dfc:	7e078793          	addi	a5,a5,2016
   10e00:	40878433          	sub	s0,a5,s0
   10e04:	00c45413          	srli	s0,s0,0xc
   10e08:	fff40413          	addi	s0,s0,-1
   10e0c:	00c41413          	slli	s0,s0,0xc
   10e10:	00e44e63          	blt	s0,a4,10e2c <_malloc_trim_r+0x70>
   10e14:	00000593          	li	a1,0
   10e18:	00098513          	mv	a0,s3
   10e1c:	118010ef          	jal	11f34 <_sbrk_r>
   10e20:	01093783          	ld	a5,16(s2)
   10e24:	009787b3          	add	a5,a5,s1
   10e28:	02f50663          	beq	a0,a5,10e54 <_malloc_trim_r+0x98>
   10e2c:	00098513          	mv	a0,s3
   10e30:	49d000ef          	jal	11acc <__malloc_unlock>
   10e34:	02813083          	ld	ra,40(sp)
   10e38:	02013403          	ld	s0,32(sp)
   10e3c:	01813483          	ld	s1,24(sp)
   10e40:	01013903          	ld	s2,16(sp)
   10e44:	00813983          	ld	s3,8(sp)
   10e48:	00000513          	li	a0,0
   10e4c:	03010113          	addi	sp,sp,48
   10e50:	00008067          	ret
   10e54:	408005b3          	neg	a1,s0
   10e58:	00098513          	mv	a0,s3
   10e5c:	0d8010ef          	jal	11f34 <_sbrk_r>
   10e60:	fff00793          	li	a5,-1
   10e64:	04f50463          	beq	a0,a5,10eac <_malloc_trim_r+0xf0>
   10e68:	01093683          	ld	a3,16(s2)
   10e6c:	4281a783          	lw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   10e70:	408484b3          	sub	s1,s1,s0
   10e74:	0014e493          	ori	s1,s1,1
   10e78:	00098513          	mv	a0,s3
   10e7c:	408787bb          	subw	a5,a5,s0
   10e80:	0096b423          	sd	s1,8(a3)
   10e84:	42f1a423          	sw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   10e88:	445000ef          	jal	11acc <__malloc_unlock>
   10e8c:	02813083          	ld	ra,40(sp)
   10e90:	02013403          	ld	s0,32(sp)
   10e94:	01813483          	ld	s1,24(sp)
   10e98:	01013903          	ld	s2,16(sp)
   10e9c:	00813983          	ld	s3,8(sp)
   10ea0:	00100513          	li	a0,1
   10ea4:	03010113          	addi	sp,sp,48
   10ea8:	00008067          	ret
   10eac:	00000593          	li	a1,0
   10eb0:	00098513          	mv	a0,s3
   10eb4:	080010ef          	jal	11f34 <_sbrk_r>
   10eb8:	01093703          	ld	a4,16(s2)
   10ebc:	01f00693          	li	a3,31
   10ec0:	40e507b3          	sub	a5,a0,a4
   10ec4:	f6f6d4e3          	bge	a3,a5,10e2c <_malloc_trim_r+0x70>
   10ec8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10ecc:	0017e793          	ori	a5,a5,1
   10ed0:	40c50533          	sub	a0,a0,a2
   10ed4:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10ed8:	42a1a423          	sw	a0,1064(gp) # 13c40 <__malloc_current_mallinfo>
   10edc:	f51ff06f          	j	10e2c <_malloc_trim_r+0x70>

0000000000010ee0 <_free_r>:
   10ee0:	12058863          	beqz	a1,11010 <_free_r+0x130>
   10ee4:	fe010113          	addi	sp,sp,-32
   10ee8:	00813823          	sd	s0,16(sp)
   10eec:	00b13423          	sd	a1,8(sp)
   10ef0:	00050413          	mv	s0,a0
   10ef4:	00113c23          	sd	ra,24(sp)
   10ef8:	3d1000ef          	jal	11ac8 <__malloc_lock>
   10efc:	00813583          	ld	a1,8(sp)
   10f00:	00013837          	lui	a6,0x13
   10f04:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10f08:	ff85b503          	ld	a0,-8(a1)
   10f0c:	ff058713          	addi	a4,a1,-16
   10f10:	01083883          	ld	a7,16(a6)
   10f14:	ffe57793          	andi	a5,a0,-2
   10f18:	00f70633          	add	a2,a4,a5
   10f1c:	00863683          	ld	a3,8(a2)
   10f20:	00157313          	andi	t1,a0,1
   10f24:	ffc6f693          	andi	a3,a3,-4
   10f28:	18c88e63          	beq	a7,a2,110c4 <_free_r+0x1e4>
   10f2c:	00d63423          	sd	a3,8(a2)
   10f30:	00d608b3          	add	a7,a2,a3
   10f34:	0088b883          	ld	a7,8(a7)
   10f38:	0018f893          	andi	a7,a7,1
   10f3c:	08031e63          	bnez	t1,10fd8 <_free_r+0xf8>
   10f40:	ff05b303          	ld	t1,-16(a1)
   10f44:	000135b7          	lui	a1,0x13
   10f48:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10f4c:	40670733          	sub	a4,a4,t1
   10f50:	01073503          	ld	a0,16(a4)
   10f54:	006787b3          	add	a5,a5,t1
   10f58:	14b50063          	beq	a0,a1,11098 <_free_r+0x1b8>
   10f5c:	01873303          	ld	t1,24(a4)
   10f60:	00653c23          	sd	t1,24(a0)
   10f64:	00a33823          	sd	a0,16(t1) # 10220 <cal_n+0x4>
   10f68:	1a088263          	beqz	a7,1110c <_free_r+0x22c>
   10f6c:	0017e693          	ori	a3,a5,1
   10f70:	00d73423          	sd	a3,8(a4)
   10f74:	00f63023          	sd	a5,0(a2)
   10f78:	1ff00693          	li	a3,511
   10f7c:	0af6e663          	bltu	a3,a5,11028 <_free_r+0x148>
   10f80:	0037d793          	srli	a5,a5,0x3
   10f84:	00179693          	slli	a3,a5,0x1
   10f88:	0026869b          	addiw	a3,a3,2
   10f8c:	00369693          	slli	a3,a3,0x3
   10f90:	00883503          	ld	a0,8(a6)
   10f94:	00d806b3          	add	a3,a6,a3
   10f98:	0006b583          	ld	a1,0(a3)
   10f9c:	4027d61b          	sraiw	a2,a5,0x2
   10fa0:	00100793          	li	a5,1
   10fa4:	00c797b3          	sll	a5,a5,a2
   10fa8:	00a7e7b3          	or	a5,a5,a0
   10fac:	ff068613          	addi	a2,a3,-16
   10fb0:	00b73823          	sd	a1,16(a4)
   10fb4:	00c73c23          	sd	a2,24(a4)
   10fb8:	00f83423          	sd	a5,8(a6)
   10fbc:	00e6b023          	sd	a4,0(a3)
   10fc0:	00e5bc23          	sd	a4,24(a1)
   10fc4:	00040513          	mv	a0,s0
   10fc8:	01013403          	ld	s0,16(sp)
   10fcc:	01813083          	ld	ra,24(sp)
   10fd0:	02010113          	addi	sp,sp,32
   10fd4:	2f90006f          	j	11acc <__malloc_unlock>
   10fd8:	02089e63          	bnez	a7,11014 <_free_r+0x134>
   10fdc:	000135b7          	lui	a1,0x13
   10fe0:	00d787b3          	add	a5,a5,a3
   10fe4:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10fe8:	01063683          	ld	a3,16(a2)
   10fec:	0017e893          	ori	a7,a5,1
   10ff0:	00f70533          	add	a0,a4,a5
   10ff4:	16b68663          	beq	a3,a1,11160 <_free_r+0x280>
   10ff8:	01863603          	ld	a2,24(a2)
   10ffc:	00c6bc23          	sd	a2,24(a3)
   11000:	00d63823          	sd	a3,16(a2)
   11004:	01173423          	sd	a7,8(a4)
   11008:	00f53023          	sd	a5,0(a0)
   1100c:	f6dff06f          	j	10f78 <_free_r+0x98>
   11010:	00008067          	ret
   11014:	00156513          	ori	a0,a0,1
   11018:	fea5bc23          	sd	a0,-8(a1)
   1101c:	00f63023          	sd	a5,0(a2)
   11020:	1ff00693          	li	a3,511
   11024:	f4f6fee3          	bgeu	a3,a5,10f80 <_free_r+0xa0>
   11028:	0097d693          	srli	a3,a5,0x9
   1102c:	00400613          	li	a2,4
   11030:	0ed66263          	bltu	a2,a3,11114 <_free_r+0x234>
   11034:	0067d693          	srli	a3,a5,0x6
   11038:	00169593          	slli	a1,a3,0x1
   1103c:	0725859b          	addiw	a1,a1,114
   11040:	00359593          	slli	a1,a1,0x3
   11044:	0386861b          	addiw	a2,a3,56
   11048:	00b805b3          	add	a1,a6,a1
   1104c:	0005b683          	ld	a3,0(a1)
   11050:	ff058593          	addi	a1,a1,-16
   11054:	00d59863          	bne	a1,a3,11064 <_free_r+0x184>
   11058:	1240006f          	j	1117c <_free_r+0x29c>
   1105c:	0106b683          	ld	a3,16(a3)
   11060:	00d58863          	beq	a1,a3,11070 <_free_r+0x190>
   11064:	0086b603          	ld	a2,8(a3)
   11068:	ffc67613          	andi	a2,a2,-4
   1106c:	fec7e8e3          	bltu	a5,a2,1105c <_free_r+0x17c>
   11070:	0186b583          	ld	a1,24(a3)
   11074:	00b73c23          	sd	a1,24(a4)
   11078:	00d73823          	sd	a3,16(a4)
   1107c:	00040513          	mv	a0,s0
   11080:	01013403          	ld	s0,16(sp)
   11084:	01813083          	ld	ra,24(sp)
   11088:	00e5b823          	sd	a4,16(a1)
   1108c:	00e6bc23          	sd	a4,24(a3)
   11090:	02010113          	addi	sp,sp,32
   11094:	2390006f          	j	11acc <__malloc_unlock>
   11098:	0a089263          	bnez	a7,1113c <_free_r+0x25c>
   1109c:	01863583          	ld	a1,24(a2)
   110a0:	01063603          	ld	a2,16(a2)
   110a4:	00f686b3          	add	a3,a3,a5
   110a8:	0016e793          	ori	a5,a3,1
   110ac:	00b63c23          	sd	a1,24(a2)
   110b0:	00c5b823          	sd	a2,16(a1)
   110b4:	00f73423          	sd	a5,8(a4)
   110b8:	00d70733          	add	a4,a4,a3
   110bc:	00d73023          	sd	a3,0(a4)
   110c0:	f05ff06f          	j	10fc4 <_free_r+0xe4>
   110c4:	00d786b3          	add	a3,a5,a3
   110c8:	02031063          	bnez	t1,110e8 <_free_r+0x208>
   110cc:	ff05b783          	ld	a5,-16(a1)
   110d0:	40f70733          	sub	a4,a4,a5
   110d4:	01073603          	ld	a2,16(a4)
   110d8:	00f686b3          	add	a3,a3,a5
   110dc:	01873783          	ld	a5,24(a4)
   110e0:	00f63c23          	sd	a5,24(a2)
   110e4:	00c7b823          	sd	a2,16(a5)
   110e8:	0016e613          	ori	a2,a3,1
   110ec:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   110f0:	00c73423          	sd	a2,8(a4)
   110f4:	00e83823          	sd	a4,16(a6)
   110f8:	ecf6e6e3          	bltu	a3,a5,10fc4 <_free_r+0xe4>
   110fc:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   11100:	00040513          	mv	a0,s0
   11104:	cb9ff0ef          	jal	10dbc <_malloc_trim_r>
   11108:	ebdff06f          	j	10fc4 <_free_r+0xe4>
   1110c:	00d787b3          	add	a5,a5,a3
   11110:	ed9ff06f          	j	10fe8 <_free_r+0x108>
   11114:	01400613          	li	a2,20
   11118:	02d67a63          	bgeu	a2,a3,1114c <_free_r+0x26c>
   1111c:	05400613          	li	a2,84
   11120:	06d66c63          	bltu	a2,a3,11198 <_free_r+0x2b8>
   11124:	00c7d693          	srli	a3,a5,0xc
   11128:	00169593          	slli	a1,a3,0x1
   1112c:	0de5859b          	addiw	a1,a1,222
   11130:	00359593          	slli	a1,a1,0x3
   11134:	06e6861b          	addiw	a2,a3,110
   11138:	f11ff06f          	j	11048 <_free_r+0x168>
   1113c:	0017e693          	ori	a3,a5,1
   11140:	00d73423          	sd	a3,8(a4)
   11144:	00f63023          	sd	a5,0(a2)
   11148:	e7dff06f          	j	10fc4 <_free_r+0xe4>
   1114c:	00169593          	slli	a1,a3,0x1
   11150:	0b85859b          	addiw	a1,a1,184
   11154:	00359593          	slli	a1,a1,0x3
   11158:	05b6861b          	addiw	a2,a3,91
   1115c:	eedff06f          	j	11048 <_free_r+0x168>
   11160:	02e83423          	sd	a4,40(a6)
   11164:	02e83023          	sd	a4,32(a6)
   11168:	00b73c23          	sd	a1,24(a4)
   1116c:	00b73823          	sd	a1,16(a4)
   11170:	01173423          	sd	a7,8(a4)
   11174:	00f53023          	sd	a5,0(a0)
   11178:	e4dff06f          	j	10fc4 <_free_r+0xe4>
   1117c:	00883503          	ld	a0,8(a6)
   11180:	4026561b          	sraiw	a2,a2,0x2
   11184:	00100793          	li	a5,1
   11188:	00c797b3          	sll	a5,a5,a2
   1118c:	00a7e7b3          	or	a5,a5,a0
   11190:	00f83423          	sd	a5,8(a6)
   11194:	ee1ff06f          	j	11074 <_free_r+0x194>
   11198:	15400613          	li	a2,340
   1119c:	00d66e63          	bltu	a2,a3,111b8 <_free_r+0x2d8>
   111a0:	00f7d693          	srli	a3,a5,0xf
   111a4:	00169593          	slli	a1,a3,0x1
   111a8:	0f05859b          	addiw	a1,a1,240
   111ac:	00359593          	slli	a1,a1,0x3
   111b0:	0776861b          	addiw	a2,a3,119
   111b4:	e95ff06f          	j	11048 <_free_r+0x168>
   111b8:	55400613          	li	a2,1364
   111bc:	00d66e63          	bltu	a2,a3,111d8 <_free_r+0x2f8>
   111c0:	0127d693          	srli	a3,a5,0x12
   111c4:	00169593          	slli	a1,a3,0x1
   111c8:	0fa5859b          	addiw	a1,a1,250
   111cc:	00359593          	slli	a1,a1,0x3
   111d0:	07c6861b          	addiw	a2,a3,124
   111d4:	e75ff06f          	j	11048 <_free_r+0x168>
   111d8:	7f000593          	li	a1,2032
   111dc:	07e00613          	li	a2,126
   111e0:	e69ff06f          	j	11048 <_free_r+0x168>

00000000000111e4 <_malloc_r>:
   111e4:	fa010113          	addi	sp,sp,-96
   111e8:	04813823          	sd	s0,80(sp)
   111ec:	04113c23          	sd	ra,88(sp)
   111f0:	01758713          	addi	a4,a1,23
   111f4:	02e00793          	li	a5,46
   111f8:	00050413          	mv	s0,a0
   111fc:	08e7ee63          	bltu	a5,a4,11298 <_malloc_r+0xb4>
   11200:	02000713          	li	a4,32
   11204:	06b76c63          	bltu	a4,a1,1127c <_malloc_r+0x98>
   11208:	0c1000ef          	jal	11ac8 <__malloc_lock>
   1120c:	02000713          	li	a4,32
   11210:	05000693          	li	a3,80
   11214:	00400893          	li	a7,4
   11218:	00013837          	lui	a6,0x13
   1121c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11220:	00d806b3          	add	a3,a6,a3
   11224:	0086b783          	ld	a5,8(a3)
   11228:	ff068613          	addi	a2,a3,-16
   1122c:	48c78063          	beq	a5,a2,116ac <_malloc_r+0x4c8>
   11230:	0087b703          	ld	a4,8(a5)
   11234:	0187b603          	ld	a2,24(a5)
   11238:	0107b583          	ld	a1,16(a5)
   1123c:	ffc77713          	andi	a4,a4,-4
   11240:	00e78733          	add	a4,a5,a4
   11244:	00873683          	ld	a3,8(a4)
   11248:	00c5bc23          	sd	a2,24(a1)
   1124c:	00b63823          	sd	a1,16(a2)
   11250:	0016e693          	ori	a3,a3,1
   11254:	00040513          	mv	a0,s0
   11258:	00d73423          	sd	a3,8(a4)
   1125c:	00f13423          	sd	a5,8(sp)
   11260:	06d000ef          	jal	11acc <__malloc_unlock>
   11264:	00813783          	ld	a5,8(sp)
   11268:	05813083          	ld	ra,88(sp)
   1126c:	05013403          	ld	s0,80(sp)
   11270:	01078513          	addi	a0,a5,16
   11274:	06010113          	addi	sp,sp,96
   11278:	00008067          	ret
   1127c:	00c00793          	li	a5,12
   11280:	00f42023          	sw	a5,0(s0)
   11284:	00000513          	li	a0,0
   11288:	05813083          	ld	ra,88(sp)
   1128c:	05013403          	ld	s0,80(sp)
   11290:	06010113          	addi	sp,sp,96
   11294:	00008067          	ret
   11298:	00100793          	li	a5,1
   1129c:	ff077713          	andi	a4,a4,-16
   112a0:	01f79793          	slli	a5,a5,0x1f
   112a4:	fcf77ce3          	bgeu	a4,a5,1127c <_malloc_r+0x98>
   112a8:	fcb76ae3          	bltu	a4,a1,1127c <_malloc_r+0x98>
   112ac:	00e13423          	sd	a4,8(sp)
   112b0:	019000ef          	jal	11ac8 <__malloc_lock>
   112b4:	00813703          	ld	a4,8(sp)
   112b8:	1f700793          	li	a5,503
   112bc:	4ee7fa63          	bgeu	a5,a4,117b0 <_malloc_r+0x5cc>
   112c0:	00975793          	srli	a5,a4,0x9
   112c4:	18078a63          	beqz	a5,11458 <_malloc_r+0x274>
   112c8:	00400693          	li	a3,4
   112cc:	44f6ea63          	bltu	a3,a5,11720 <_malloc_r+0x53c>
   112d0:	00675793          	srli	a5,a4,0x6
   112d4:	0397889b          	addiw	a7,a5,57
   112d8:	0018951b          	slliw	a0,a7,0x1
   112dc:	03878e1b          	addiw	t3,a5,56
   112e0:	00351513          	slli	a0,a0,0x3
   112e4:	00013837          	lui	a6,0x13
   112e8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112ec:	00a80533          	add	a0,a6,a0
   112f0:	00853783          	ld	a5,8(a0)
   112f4:	ff050513          	addi	a0,a0,-16
   112f8:	02f50863          	beq	a0,a5,11328 <_malloc_r+0x144>
   112fc:	01f00313          	li	t1,31
   11300:	0140006f          	j	11314 <_malloc_r+0x130>
   11304:	0187b583          	ld	a1,24(a5)
   11308:	36065263          	bgez	a2,1166c <_malloc_r+0x488>
   1130c:	00b50e63          	beq	a0,a1,11328 <_malloc_r+0x144>
   11310:	00058793          	mv	a5,a1
   11314:	0087b683          	ld	a3,8(a5)
   11318:	ffc6f693          	andi	a3,a3,-4
   1131c:	40e68633          	sub	a2,a3,a4
   11320:	fec352e3          	bge	t1,a2,11304 <_malloc_r+0x120>
   11324:	000e0893          	mv	a7,t3
   11328:	02083783          	ld	a5,32(a6)
   1132c:	00013e37          	lui	t3,0x13
   11330:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11334:	2fc78a63          	beq	a5,t3,11628 <_malloc_r+0x444>
   11338:	0087b303          	ld	t1,8(a5)
   1133c:	01f00613          	li	a2,31
   11340:	ffc37313          	andi	t1,t1,-4
   11344:	40e306b3          	sub	a3,t1,a4
   11348:	4ad64463          	blt	a2,a3,117f0 <_malloc_r+0x60c>
   1134c:	03c83423          	sd	t3,40(a6)
   11350:	03c83023          	sd	t3,32(a6)
   11354:	4606da63          	bgez	a3,117c8 <_malloc_r+0x5e4>
   11358:	1ff00693          	li	a3,511
   1135c:	00883583          	ld	a1,8(a6)
   11360:	3466ee63          	bltu	a3,t1,116bc <_malloc_r+0x4d8>
   11364:	00335313          	srli	t1,t1,0x3
   11368:	00131693          	slli	a3,t1,0x1
   1136c:	0026869b          	addiw	a3,a3,2
   11370:	00369693          	slli	a3,a3,0x3
   11374:	00d806b3          	add	a3,a6,a3
   11378:	0006b503          	ld	a0,0(a3)
   1137c:	4023531b          	sraiw	t1,t1,0x2
   11380:	00100613          	li	a2,1
   11384:	00661633          	sll	a2,a2,t1
   11388:	00c5e5b3          	or	a1,a1,a2
   1138c:	ff068613          	addi	a2,a3,-16
   11390:	00a7b823          	sd	a0,16(a5)
   11394:	00c7bc23          	sd	a2,24(a5)
   11398:	00b83423          	sd	a1,8(a6)
   1139c:	00f6b023          	sd	a5,0(a3)
   113a0:	00f53c23          	sd	a5,24(a0)
   113a4:	4028d79b          	sraiw	a5,a7,0x2
   113a8:	00100513          	li	a0,1
   113ac:	00f51533          	sll	a0,a0,a5
   113b0:	0aa5ec63          	bltu	a1,a0,11468 <_malloc_r+0x284>
   113b4:	00b577b3          	and	a5,a0,a1
   113b8:	02079463          	bnez	a5,113e0 <_malloc_r+0x1fc>
   113bc:	00151513          	slli	a0,a0,0x1
   113c0:	ffc8f893          	andi	a7,a7,-4
   113c4:	00b577b3          	and	a5,a0,a1
   113c8:	0048889b          	addiw	a7,a7,4
   113cc:	00079a63          	bnez	a5,113e0 <_malloc_r+0x1fc>
   113d0:	00151513          	slli	a0,a0,0x1
   113d4:	00b577b3          	and	a5,a0,a1
   113d8:	0048889b          	addiw	a7,a7,4
   113dc:	fe078ae3          	beqz	a5,113d0 <_malloc_r+0x1ec>
   113e0:	01f00e93          	li	t4,31
   113e4:	00189f13          	slli	t5,a7,0x1
   113e8:	002f0f1b          	addiw	t5,t5,2
   113ec:	003f1f13          	slli	t5,t5,0x3
   113f0:	ff0f0f13          	addi	t5,t5,-16
   113f4:	01e80f33          	add	t5,a6,t5
   113f8:	000f0313          	mv	t1,t5
   113fc:	01833683          	ld	a3,24(t1)
   11400:	00088f93          	mv	t6,a7
   11404:	34d30263          	beq	t1,a3,11748 <_malloc_r+0x564>
   11408:	0086b603          	ld	a2,8(a3)
   1140c:	00068793          	mv	a5,a3
   11410:	0186b683          	ld	a3,24(a3)
   11414:	ffc67613          	andi	a2,a2,-4
   11418:	40e605b3          	sub	a1,a2,a4
   1141c:	34bec263          	blt	t4,a1,11760 <_malloc_r+0x57c>
   11420:	fe05c2e3          	bltz	a1,11404 <_malloc_r+0x220>
   11424:	00c78633          	add	a2,a5,a2
   11428:	00863703          	ld	a4,8(a2)
   1142c:	0107b583          	ld	a1,16(a5)
   11430:	00040513          	mv	a0,s0
   11434:	00176713          	ori	a4,a4,1
   11438:	00e63423          	sd	a4,8(a2)
   1143c:	00d5bc23          	sd	a3,24(a1)
   11440:	00b6b823          	sd	a1,16(a3)
   11444:	00f13423          	sd	a5,8(sp)
   11448:	684000ef          	jal	11acc <__malloc_unlock>
   1144c:	00813783          	ld	a5,8(sp)
   11450:	01078513          	addi	a0,a5,16
   11454:	e35ff06f          	j	11288 <_malloc_r+0xa4>
   11458:	40000513          	li	a0,1024
   1145c:	04000893          	li	a7,64
   11460:	03f00e13          	li	t3,63
   11464:	e81ff06f          	j	112e4 <_malloc_r+0x100>
   11468:	01083783          	ld	a5,16(a6)
   1146c:	0087b683          	ld	a3,8(a5)
   11470:	ffc6f893          	andi	a7,a3,-4
   11474:	40e88633          	sub	a2,a7,a4
   11478:	00e8e663          	bltu	a7,a4,11484 <_malloc_r+0x2a0>
   1147c:	02062693          	slti	a3,a2,32
   11480:	1a068863          	beqz	a3,11630 <_malloc_r+0x44c>
   11484:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   11488:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1148c:	fff00693          	li	a3,-1
   11490:	00b705b3          	add	a1,a4,a1
   11494:	44d60663          	beq	a2,a3,118e0 <_malloc_r+0x6fc>
   11498:	000016b7          	lui	a3,0x1
   1149c:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   114a0:	00d585b3          	add	a1,a1,a3
   114a4:	fffff6b7          	lui	a3,0xfffff
   114a8:	00d5f5b3          	and	a1,a1,a3
   114ac:	00040513          	mv	a0,s0
   114b0:	03013423          	sd	a6,40(sp)
   114b4:	02f13023          	sd	a5,32(sp)
   114b8:	00e13c23          	sd	a4,24(sp)
   114bc:	01113823          	sd	a7,16(sp)
   114c0:	00b13423          	sd	a1,8(sp)
   114c4:	271000ef          	jal	11f34 <_sbrk_r>
   114c8:	fff00693          	li	a3,-1
   114cc:	00813583          	ld	a1,8(sp)
   114d0:	01013883          	ld	a7,16(sp)
   114d4:	01813703          	ld	a4,24(sp)
   114d8:	02013783          	ld	a5,32(sp)
   114dc:	02813803          	ld	a6,40(sp)
   114e0:	00050313          	mv	t1,a0
   114e4:	36d50663          	beq	a0,a3,11850 <_malloc_r+0x66c>
   114e8:	011786b3          	add	a3,a5,a7
   114ec:	36d56063          	bltu	a0,a3,1184c <_malloc_r+0x668>
   114f0:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   114f4:	000e2603          	lw	a2,0(t3)
   114f8:	00b6063b          	addw	a2,a2,a1
   114fc:	00ce2023          	sw	a2,0(t3)
   11500:	00060513          	mv	a0,a2
   11504:	4a668c63          	beq	a3,t1,119bc <_malloc_r+0x7d8>
   11508:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1150c:	fff00613          	li	a2,-1
   11510:	4ccf0463          	beq	t5,a2,119d8 <_malloc_r+0x7f4>
   11514:	40d306b3          	sub	a3,t1,a3
   11518:	00a686bb          	addw	a3,a3,a0
   1151c:	00de2023          	sw	a3,0(t3)
   11520:	00f37e93          	andi	t4,t1,15
   11524:	3c0e8e63          	beqz	t4,11900 <_malloc_r+0x71c>
   11528:	ff037313          	andi	t1,t1,-16
   1152c:	000016b7          	lui	a3,0x1
   11530:	01030313          	addi	t1,t1,16
   11534:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11538:	00b30633          	add	a2,t1,a1
   1153c:	41d685b3          	sub	a1,a3,t4
   11540:	40c585b3          	sub	a1,a1,a2
   11544:	03459593          	slli	a1,a1,0x34
   11548:	0345d593          	srli	a1,a1,0x34
   1154c:	00040513          	mv	a0,s0
   11550:	05c13023          	sd	t3,64(sp)
   11554:	03013c23          	sd	a6,56(sp)
   11558:	02f13823          	sd	a5,48(sp)
   1155c:	02e13423          	sd	a4,40(sp)
   11560:	03113023          	sd	a7,32(sp)
   11564:	00613c23          	sd	t1,24(sp)
   11568:	01d13823          	sd	t4,16(sp)
   1156c:	00c13423          	sd	a2,8(sp)
   11570:	04b13423          	sd	a1,72(sp)
   11574:	1c1000ef          	jal	11f34 <_sbrk_r>
   11578:	00050693          	mv	a3,a0
   1157c:	fff00513          	li	a0,-1
   11580:	00813603          	ld	a2,8(sp)
   11584:	01013e83          	ld	t4,16(sp)
   11588:	01813303          	ld	t1,24(sp)
   1158c:	02013883          	ld	a7,32(sp)
   11590:	02813703          	ld	a4,40(sp)
   11594:	03013783          	ld	a5,48(sp)
   11598:	03813803          	ld	a6,56(sp)
   1159c:	04013e03          	ld	t3,64(sp)
   115a0:	48a68663          	beq	a3,a0,11a2c <_malloc_r+0x848>
   115a4:	04813583          	ld	a1,72(sp)
   115a8:	0005851b          	sext.w	a0,a1
   115ac:	000e2603          	lw	a2,0(t3)
   115b0:	406686b3          	sub	a3,a3,t1
   115b4:	00b686b3          	add	a3,a3,a1
   115b8:	0016e693          	ori	a3,a3,1
   115bc:	00683823          	sd	t1,16(a6)
   115c0:	00a6063b          	addw	a2,a2,a0
   115c4:	00d33423          	sd	a3,8(t1)
   115c8:	00ce2023          	sw	a2,0(t3)
   115cc:	03078e63          	beq	a5,a6,11608 <_malloc_r+0x424>
   115d0:	01f00513          	li	a0,31
   115d4:	41157663          	bgeu	a0,a7,119e0 <_malloc_r+0x7fc>
   115d8:	0087b583          	ld	a1,8(a5)
   115dc:	fe888693          	addi	a3,a7,-24
   115e0:	ff06f693          	andi	a3,a3,-16
   115e4:	0015f593          	andi	a1,a1,1
   115e8:	00d5e5b3          	or	a1,a1,a3
   115ec:	00b7b423          	sd	a1,8(a5)
   115f0:	00900893          	li	a7,9
   115f4:	00d785b3          	add	a1,a5,a3
   115f8:	0115b423          	sd	a7,8(a1)
   115fc:	0115b823          	sd	a7,16(a1)
   11600:	44d56863          	bltu	a0,a3,11a50 <_malloc_r+0x86c>
   11604:	00833683          	ld	a3,8(t1)
   11608:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   1160c:	00c5f463          	bgeu	a1,a2,11614 <_malloc_r+0x430>
   11610:	1cc1b423          	sd	a2,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   11614:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_total_mem>
   11618:	00c5f463          	bgeu	a1,a2,11620 <_malloc_r+0x43c>
   1161c:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_total_mem>
   11620:	00030793          	mv	a5,t1
   11624:	2340006f          	j	11858 <_malloc_r+0x674>
   11628:	00883583          	ld	a1,8(a6)
   1162c:	d79ff06f          	j	113a4 <_malloc_r+0x1c0>
   11630:	00176693          	ori	a3,a4,1
   11634:	00d7b423          	sd	a3,8(a5)
   11638:	00e78733          	add	a4,a5,a4
   1163c:	00166613          	ori	a2,a2,1
   11640:	00e83823          	sd	a4,16(a6)
   11644:	00040513          	mv	a0,s0
   11648:	00c73423          	sd	a2,8(a4)
   1164c:	00f13423          	sd	a5,8(sp)
   11650:	47c000ef          	jal	11acc <__malloc_unlock>
   11654:	00813783          	ld	a5,8(sp)
   11658:	05813083          	ld	ra,88(sp)
   1165c:	05013403          	ld	s0,80(sp)
   11660:	01078513          	addi	a0,a5,16
   11664:	06010113          	addi	sp,sp,96
   11668:	00008067          	ret
   1166c:	0107b603          	ld	a2,16(a5)
   11670:	00d786b3          	add	a3,a5,a3
   11674:	0086b703          	ld	a4,8(a3)
   11678:	00b63c23          	sd	a1,24(a2)
   1167c:	00c5b823          	sd	a2,16(a1)
   11680:	00176713          	ori	a4,a4,1
   11684:	00040513          	mv	a0,s0
   11688:	00e6b423          	sd	a4,8(a3)
   1168c:	00f13423          	sd	a5,8(sp)
   11690:	43c000ef          	jal	11acc <__malloc_unlock>
   11694:	00813783          	ld	a5,8(sp)
   11698:	05813083          	ld	ra,88(sp)
   1169c:	05013403          	ld	s0,80(sp)
   116a0:	01078513          	addi	a0,a5,16
   116a4:	06010113          	addi	sp,sp,96
   116a8:	00008067          	ret
   116ac:	0186b783          	ld	a5,24(a3)
   116b0:	0028889b          	addiw	a7,a7,2
   116b4:	c6f68ae3          	beq	a3,a5,11328 <_malloc_r+0x144>
   116b8:	b79ff06f          	j	11230 <_malloc_r+0x4c>
   116bc:	00935693          	srli	a3,t1,0x9
   116c0:	00400613          	li	a2,4
   116c4:	16d67863          	bgeu	a2,a3,11834 <_malloc_r+0x650>
   116c8:	01400613          	li	a2,20
   116cc:	28d66e63          	bltu	a2,a3,11968 <_malloc_r+0x784>
   116d0:	00169513          	slli	a0,a3,0x1
   116d4:	0b85051b          	addiw	a0,a0,184
   116d8:	00351513          	slli	a0,a0,0x3
   116dc:	05b6861b          	addiw	a2,a3,91
   116e0:	00a80533          	add	a0,a6,a0
   116e4:	00053683          	ld	a3,0(a0)
   116e8:	ff050513          	addi	a0,a0,-16
   116ec:	00d51863          	bne	a0,a3,116fc <_malloc_r+0x518>
   116f0:	1f80006f          	j	118e8 <_malloc_r+0x704>
   116f4:	0106b683          	ld	a3,16(a3)
   116f8:	00d50863          	beq	a0,a3,11708 <_malloc_r+0x524>
   116fc:	0086b603          	ld	a2,8(a3)
   11700:	ffc67613          	andi	a2,a2,-4
   11704:	fec368e3          	bltu	t1,a2,116f4 <_malloc_r+0x510>
   11708:	0186b503          	ld	a0,24(a3)
   1170c:	00a7bc23          	sd	a0,24(a5)
   11710:	00d7b823          	sd	a3,16(a5)
   11714:	00f53823          	sd	a5,16(a0)
   11718:	00f6bc23          	sd	a5,24(a3)
   1171c:	c89ff06f          	j	113a4 <_malloc_r+0x1c0>
   11720:	01400693          	li	a3,20
   11724:	14f6fa63          	bgeu	a3,a5,11878 <_malloc_r+0x694>
   11728:	05400693          	li	a3,84
   1172c:	24f6ee63          	bltu	a3,a5,11988 <_malloc_r+0x7a4>
   11730:	00c75793          	srli	a5,a4,0xc
   11734:	06f7889b          	addiw	a7,a5,111
   11738:	0018951b          	slliw	a0,a7,0x1
   1173c:	06e78e1b          	addiw	t3,a5,110
   11740:	00351513          	slli	a0,a0,0x3
   11744:	ba1ff06f          	j	112e4 <_malloc_r+0x100>
   11748:	001f8f9b          	addiw	t6,t6,1
   1174c:	003ff793          	andi	a5,t6,3
   11750:	01030313          	addi	t1,t1,16
   11754:	14078263          	beqz	a5,11898 <_malloc_r+0x6b4>
   11758:	01833683          	ld	a3,24(t1)
   1175c:	ca9ff06f          	j	11404 <_malloc_r+0x220>
   11760:	0107b503          	ld	a0,16(a5)
   11764:	00176893          	ori	a7,a4,1
   11768:	0117b423          	sd	a7,8(a5)
   1176c:	00d53c23          	sd	a3,24(a0)
   11770:	00a6b823          	sd	a0,16(a3)
   11774:	00e78733          	add	a4,a5,a4
   11778:	02e83423          	sd	a4,40(a6)
   1177c:	02e83023          	sd	a4,32(a6)
   11780:	0015e693          	ori	a3,a1,1
   11784:	00c78633          	add	a2,a5,a2
   11788:	01c73c23          	sd	t3,24(a4)
   1178c:	01c73823          	sd	t3,16(a4)
   11790:	00d73423          	sd	a3,8(a4)
   11794:	00040513          	mv	a0,s0
   11798:	00b63023          	sd	a1,0(a2)
   1179c:	00f13423          	sd	a5,8(sp)
   117a0:	32c000ef          	jal	11acc <__malloc_unlock>
   117a4:	00813783          	ld	a5,8(sp)
   117a8:	01078513          	addi	a0,a5,16
   117ac:	addff06f          	j	11288 <_malloc_r+0xa4>
   117b0:	00375893          	srli	a7,a4,0x3
   117b4:	00189693          	slli	a3,a7,0x1
   117b8:	0026869b          	addiw	a3,a3,2
   117bc:	00369693          	slli	a3,a3,0x3
   117c0:	0008889b          	sext.w	a7,a7
   117c4:	a55ff06f          	j	11218 <_malloc_r+0x34>
   117c8:	00678333          	add	t1,a5,t1
   117cc:	00833703          	ld	a4,8(t1)
   117d0:	00040513          	mv	a0,s0
   117d4:	00f13423          	sd	a5,8(sp)
   117d8:	00176713          	ori	a4,a4,1
   117dc:	00e33423          	sd	a4,8(t1)
   117e0:	2ec000ef          	jal	11acc <__malloc_unlock>
   117e4:	00813783          	ld	a5,8(sp)
   117e8:	01078513          	addi	a0,a5,16
   117ec:	a9dff06f          	j	11288 <_malloc_r+0xa4>
   117f0:	00176613          	ori	a2,a4,1
   117f4:	00c7b423          	sd	a2,8(a5)
   117f8:	00e78733          	add	a4,a5,a4
   117fc:	02e83423          	sd	a4,40(a6)
   11800:	02e83023          	sd	a4,32(a6)
   11804:	0016e613          	ori	a2,a3,1
   11808:	00678333          	add	t1,a5,t1
   1180c:	01c73c23          	sd	t3,24(a4)
   11810:	01c73823          	sd	t3,16(a4)
   11814:	00c73423          	sd	a2,8(a4)
   11818:	00040513          	mv	a0,s0
   1181c:	00d33023          	sd	a3,0(t1)
   11820:	00f13423          	sd	a5,8(sp)
   11824:	2a8000ef          	jal	11acc <__malloc_unlock>
   11828:	00813783          	ld	a5,8(sp)
   1182c:	01078513          	addi	a0,a5,16
   11830:	a59ff06f          	j	11288 <_malloc_r+0xa4>
   11834:	00635693          	srli	a3,t1,0x6
   11838:	00169513          	slli	a0,a3,0x1
   1183c:	0725051b          	addiw	a0,a0,114
   11840:	00351513          	slli	a0,a0,0x3
   11844:	0386861b          	addiw	a2,a3,56
   11848:	e99ff06f          	j	116e0 <_malloc_r+0x4fc>
   1184c:	15078e63          	beq	a5,a6,119a8 <_malloc_r+0x7c4>
   11850:	01083783          	ld	a5,16(a6)
   11854:	0087b683          	ld	a3,8(a5)
   11858:	ffc6f693          	andi	a3,a3,-4
   1185c:	40e68633          	sub	a2,a3,a4
   11860:	00e6e663          	bltu	a3,a4,1186c <_malloc_r+0x688>
   11864:	02062693          	slti	a3,a2,32
   11868:	dc0684e3          	beqz	a3,11630 <_malloc_r+0x44c>
   1186c:	00040513          	mv	a0,s0
   11870:	25c000ef          	jal	11acc <__malloc_unlock>
   11874:	a11ff06f          	j	11284 <_malloc_r+0xa0>
   11878:	05c7889b          	addiw	a7,a5,92
   1187c:	0018951b          	slliw	a0,a7,0x1
   11880:	05b78e1b          	addiw	t3,a5,91
   11884:	00351513          	slli	a0,a0,0x3
   11888:	a5dff06f          	j	112e4 <_malloc_r+0x100>
   1188c:	010f3783          	ld	a5,16(t5)
   11890:	fff8889b          	addiw	a7,a7,-1
   11894:	23e79663          	bne	a5,t5,11ac0 <_malloc_r+0x8dc>
   11898:	0038f793          	andi	a5,a7,3
   1189c:	ff0f0f13          	addi	t5,t5,-16
   118a0:	fe0796e3          	bnez	a5,1188c <_malloc_r+0x6a8>
   118a4:	00883683          	ld	a3,8(a6)
   118a8:	fff54793          	not	a5,a0
   118ac:	00d7f7b3          	and	a5,a5,a3
   118b0:	00f83423          	sd	a5,8(a6)
   118b4:	00151513          	slli	a0,a0,0x1
   118b8:	fff50693          	addi	a3,a0,-1
   118bc:	baf6f6e3          	bgeu	a3,a5,11468 <_malloc_r+0x284>
   118c0:	00f576b3          	and	a3,a0,a5
   118c4:	00069a63          	bnez	a3,118d8 <_malloc_r+0x6f4>
   118c8:	00151513          	slli	a0,a0,0x1
   118cc:	00f576b3          	and	a3,a0,a5
   118d0:	004f8f9b          	addiw	t6,t6,4
   118d4:	fe068ae3          	beqz	a3,118c8 <_malloc_r+0x6e4>
   118d8:	000f8893          	mv	a7,t6
   118dc:	b09ff06f          	j	113e4 <_malloc_r+0x200>
   118e0:	02058593          	addi	a1,a1,32
   118e4:	bc9ff06f          	j	114ac <_malloc_r+0x2c8>
   118e8:	4026561b          	sraiw	a2,a2,0x2
   118ec:	00100313          	li	t1,1
   118f0:	00c31633          	sll	a2,t1,a2
   118f4:	00c5e5b3          	or	a1,a1,a2
   118f8:	00b83423          	sd	a1,8(a6)
   118fc:	e11ff06f          	j	1170c <_malloc_r+0x528>
   11900:	00b30633          	add	a2,t1,a1
   11904:	40c005b3          	neg	a1,a2
   11908:	03459593          	slli	a1,a1,0x34
   1190c:	0345d593          	srli	a1,a1,0x34
   11910:	00040513          	mv	a0,s0
   11914:	03c13c23          	sd	t3,56(sp)
   11918:	03013823          	sd	a6,48(sp)
   1191c:	02f13423          	sd	a5,40(sp)
   11920:	02e13023          	sd	a4,32(sp)
   11924:	01113c23          	sd	a7,24(sp)
   11928:	00613823          	sd	t1,16(sp)
   1192c:	00c13423          	sd	a2,8(sp)
   11930:	04b13023          	sd	a1,64(sp)
   11934:	600000ef          	jal	11f34 <_sbrk_r>
   11938:	00050693          	mv	a3,a0
   1193c:	fff00513          	li	a0,-1
   11940:	01013303          	ld	t1,16(sp)
   11944:	01813883          	ld	a7,24(sp)
   11948:	02013703          	ld	a4,32(sp)
   1194c:	02813783          	ld	a5,40(sp)
   11950:	03013803          	ld	a6,48(sp)
   11954:	03813e03          	ld	t3,56(sp)
   11958:	0ea68463          	beq	a3,a0,11a40 <_malloc_r+0x85c>
   1195c:	04013583          	ld	a1,64(sp)
   11960:	0005851b          	sext.w	a0,a1
   11964:	c49ff06f          	j	115ac <_malloc_r+0x3c8>
   11968:	05400613          	li	a2,84
   1196c:	08d66063          	bltu	a2,a3,119ec <_malloc_r+0x808>
   11970:	00c35693          	srli	a3,t1,0xc
   11974:	00169513          	slli	a0,a3,0x1
   11978:	0de5051b          	addiw	a0,a0,222
   1197c:	00351513          	slli	a0,a0,0x3
   11980:	06e6861b          	addiw	a2,a3,110
   11984:	d5dff06f          	j	116e0 <_malloc_r+0x4fc>
   11988:	15400693          	li	a3,340
   1198c:	08f6e063          	bltu	a3,a5,11a0c <_malloc_r+0x828>
   11990:	00f75793          	srli	a5,a4,0xf
   11994:	0787889b          	addiw	a7,a5,120
   11998:	0018951b          	slliw	a0,a7,0x1
   1199c:	07778e1b          	addiw	t3,a5,119
   119a0:	00351513          	slli	a0,a0,0x3
   119a4:	941ff06f          	j	112e4 <_malloc_r+0x100>
   119a8:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   119ac:	000e2503          	lw	a0,0(t3)
   119b0:	00b5053b          	addw	a0,a0,a1
   119b4:	00ae2023          	sw	a0,0(t3)
   119b8:	b51ff06f          	j	11508 <_malloc_r+0x324>
   119bc:	03431f13          	slli	t5,t1,0x34
   119c0:	b40f14e3          	bnez	t5,11508 <_malloc_r+0x324>
   119c4:	01083303          	ld	t1,16(a6)
   119c8:	00b885b3          	add	a1,a7,a1
   119cc:	0015e693          	ori	a3,a1,1
   119d0:	00d33423          	sd	a3,8(t1)
   119d4:	c35ff06f          	j	11608 <_malloc_r+0x424>
   119d8:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   119dc:	b45ff06f          	j	11520 <_malloc_r+0x33c>
   119e0:	00100793          	li	a5,1
   119e4:	00f33423          	sd	a5,8(t1)
   119e8:	e85ff06f          	j	1186c <_malloc_r+0x688>
   119ec:	15400613          	li	a2,340
   119f0:	08d66a63          	bltu	a2,a3,11a84 <_malloc_r+0x8a0>
   119f4:	00f35693          	srli	a3,t1,0xf
   119f8:	00169513          	slli	a0,a3,0x1
   119fc:	0f05051b          	addiw	a0,a0,240
   11a00:	00351513          	slli	a0,a0,0x3
   11a04:	0776861b          	addiw	a2,a3,119
   11a08:	cd9ff06f          	j	116e0 <_malloc_r+0x4fc>
   11a0c:	55400693          	li	a3,1364
   11a10:	08f6ea63          	bltu	a3,a5,11aa4 <_malloc_r+0x8c0>
   11a14:	01275793          	srli	a5,a4,0x12
   11a18:	07d7889b          	addiw	a7,a5,125
   11a1c:	0018951b          	slliw	a0,a7,0x1
   11a20:	07c78e1b          	addiw	t3,a5,124
   11a24:	00351513          	slli	a0,a0,0x3
   11a28:	8bdff06f          	j	112e4 <_malloc_r+0x100>
   11a2c:	ff0e8e93          	addi	t4,t4,-16
   11a30:	01d606b3          	add	a3,a2,t4
   11a34:	00000513          	li	a0,0
   11a38:	00000593          	li	a1,0
   11a3c:	b71ff06f          	j	115ac <_malloc_r+0x3c8>
   11a40:	00813683          	ld	a3,8(sp)
   11a44:	00000593          	li	a1,0
   11a48:	00000513          	li	a0,0
   11a4c:	b61ff06f          	j	115ac <_malloc_r+0x3c8>
   11a50:	01078593          	addi	a1,a5,16
   11a54:	00040513          	mv	a0,s0
   11a58:	01c13c23          	sd	t3,24(sp)
   11a5c:	01013823          	sd	a6,16(sp)
   11a60:	00e13423          	sd	a4,8(sp)
   11a64:	c7cff0ef          	jal	10ee0 <_free_r>
   11a68:	01013803          	ld	a6,16(sp)
   11a6c:	01813e03          	ld	t3,24(sp)
   11a70:	00813703          	ld	a4,8(sp)
   11a74:	01083303          	ld	t1,16(a6)
   11a78:	000e2603          	lw	a2,0(t3)
   11a7c:	00833683          	ld	a3,8(t1)
   11a80:	b89ff06f          	j	11608 <_malloc_r+0x424>
   11a84:	55400613          	li	a2,1364
   11a88:	02d66663          	bltu	a2,a3,11ab4 <_malloc_r+0x8d0>
   11a8c:	01235693          	srli	a3,t1,0x12
   11a90:	00169513          	slli	a0,a3,0x1
   11a94:	0fa5051b          	addiw	a0,a0,250
   11a98:	00351513          	slli	a0,a0,0x3
   11a9c:	07c6861b          	addiw	a2,a3,124
   11aa0:	c41ff06f          	j	116e0 <_malloc_r+0x4fc>
   11aa4:	7f000513          	li	a0,2032
   11aa8:	07f00893          	li	a7,127
   11aac:	07e00e13          	li	t3,126
   11ab0:	835ff06f          	j	112e4 <_malloc_r+0x100>
   11ab4:	7f000513          	li	a0,2032
   11ab8:	07e00613          	li	a2,126
   11abc:	c25ff06f          	j	116e0 <_malloc_r+0x4fc>
   11ac0:	00883783          	ld	a5,8(a6)
   11ac4:	df1ff06f          	j	118b4 <_malloc_r+0x6d0>

0000000000011ac8 <__malloc_lock>:
   11ac8:	00008067          	ret

0000000000011acc <__malloc_unlock>:
   11acc:	00008067          	ret

0000000000011ad0 <_fclose_r>:
   11ad0:	fe010113          	addi	sp,sp,-32
   11ad4:	00113c23          	sd	ra,24(sp)
   11ad8:	01213023          	sd	s2,0(sp)
   11adc:	02058863          	beqz	a1,11b0c <_fclose_r+0x3c>
   11ae0:	00813823          	sd	s0,16(sp)
   11ae4:	00913423          	sd	s1,8(sp)
   11ae8:	00058413          	mv	s0,a1
   11aec:	00050493          	mv	s1,a0
   11af0:	00050663          	beqz	a0,11afc <_fclose_r+0x2c>
   11af4:	04853783          	ld	a5,72(a0)
   11af8:	0c078c63          	beqz	a5,11bd0 <_fclose_r+0x100>
   11afc:	01041783          	lh	a5,16(s0)
   11b00:	02079263          	bnez	a5,11b24 <_fclose_r+0x54>
   11b04:	01013403          	ld	s0,16(sp)
   11b08:	00813483          	ld	s1,8(sp)
   11b0c:	01813083          	ld	ra,24(sp)
   11b10:	00000913          	li	s2,0
   11b14:	00090513          	mv	a0,s2
   11b18:	00013903          	ld	s2,0(sp)
   11b1c:	02010113          	addi	sp,sp,32
   11b20:	00008067          	ret
   11b24:	00040593          	mv	a1,s0
   11b28:	00048513          	mv	a0,s1
   11b2c:	0b8000ef          	jal	11be4 <__sflush_r>
   11b30:	05043783          	ld	a5,80(s0)
   11b34:	00050913          	mv	s2,a0
   11b38:	00078a63          	beqz	a5,11b4c <_fclose_r+0x7c>
   11b3c:	03043583          	ld	a1,48(s0)
   11b40:	00048513          	mv	a0,s1
   11b44:	000780e7          	jalr	a5
   11b48:	06054463          	bltz	a0,11bb0 <_fclose_r+0xe0>
   11b4c:	01045783          	lhu	a5,16(s0)
   11b50:	0807f793          	andi	a5,a5,128
   11b54:	06079663          	bnez	a5,11bc0 <_fclose_r+0xf0>
   11b58:	05843583          	ld	a1,88(s0)
   11b5c:	00058c63          	beqz	a1,11b74 <_fclose_r+0xa4>
   11b60:	07440793          	addi	a5,s0,116
   11b64:	00f58663          	beq	a1,a5,11b70 <_fclose_r+0xa0>
   11b68:	00048513          	mv	a0,s1
   11b6c:	b74ff0ef          	jal	10ee0 <_free_r>
   11b70:	04043c23          	sd	zero,88(s0)
   11b74:	07843583          	ld	a1,120(s0)
   11b78:	00058863          	beqz	a1,11b88 <_fclose_r+0xb8>
   11b7c:	00048513          	mv	a0,s1
   11b80:	b60ff0ef          	jal	10ee0 <_free_r>
   11b84:	06043c23          	sd	zero,120(s0)
   11b88:	aa1fe0ef          	jal	10628 <__sfp_lock_acquire>
   11b8c:	00041823          	sh	zero,16(s0)
   11b90:	a9dfe0ef          	jal	1062c <__sfp_lock_release>
   11b94:	01813083          	ld	ra,24(sp)
   11b98:	01013403          	ld	s0,16(sp)
   11b9c:	00813483          	ld	s1,8(sp)
   11ba0:	00090513          	mv	a0,s2
   11ba4:	00013903          	ld	s2,0(sp)
   11ba8:	02010113          	addi	sp,sp,32
   11bac:	00008067          	ret
   11bb0:	01045783          	lhu	a5,16(s0)
   11bb4:	fff00913          	li	s2,-1
   11bb8:	0807f793          	andi	a5,a5,128
   11bbc:	f8078ee3          	beqz	a5,11b58 <_fclose_r+0x88>
   11bc0:	01843583          	ld	a1,24(s0)
   11bc4:	00048513          	mv	a0,s1
   11bc8:	b18ff0ef          	jal	10ee0 <_free_r>
   11bcc:	f8dff06f          	j	11b58 <_fclose_r+0x88>
   11bd0:	a35fe0ef          	jal	10604 <__sinit>
   11bd4:	f29ff06f          	j	11afc <_fclose_r+0x2c>

0000000000011bd8 <fclose>:
   11bd8:	00050593          	mv	a1,a0
   11bdc:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11be0:	ef1ff06f          	j	11ad0 <_fclose_r>

0000000000011be4 <__sflush_r>:
   11be4:	01059703          	lh	a4,16(a1)
   11be8:	fd010113          	addi	sp,sp,-48
   11bec:	02813023          	sd	s0,32(sp)
   11bf0:	01313423          	sd	s3,8(sp)
   11bf4:	02113423          	sd	ra,40(sp)
   11bf8:	00877793          	andi	a5,a4,8
   11bfc:	00058413          	mv	s0,a1
   11c00:	00050993          	mv	s3,a0
   11c04:	12079263          	bnez	a5,11d28 <__sflush_r+0x144>
   11c08:	000017b7          	lui	a5,0x1
   11c0c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c10:	0085a683          	lw	a3,8(a1)
   11c14:	00f767b3          	or	a5,a4,a5
   11c18:	00f59823          	sh	a5,16(a1)
   11c1c:	18d05c63          	blez	a3,11db4 <__sflush_r+0x1d0>
   11c20:	04843803          	ld	a6,72(s0)
   11c24:	0e080663          	beqz	a6,11d10 <__sflush_r+0x12c>
   11c28:	00913c23          	sd	s1,24(sp)
   11c2c:	03371693          	slli	a3,a4,0x33
   11c30:	0009a483          	lw	s1,0(s3)
   11c34:	0009a023          	sw	zero,0(s3)
   11c38:	1806ca63          	bltz	a3,11dcc <__sflush_r+0x1e8>
   11c3c:	03043583          	ld	a1,48(s0)
   11c40:	00000613          	li	a2,0
   11c44:	00100693          	li	a3,1
   11c48:	00098513          	mv	a0,s3
   11c4c:	000800e7          	jalr	a6
   11c50:	fff00793          	li	a5,-1
   11c54:	00050613          	mv	a2,a0
   11c58:	1af50c63          	beq	a0,a5,11e10 <__sflush_r+0x22c>
   11c5c:	01041783          	lh	a5,16(s0)
   11c60:	04843803          	ld	a6,72(s0)
   11c64:	0047f793          	andi	a5,a5,4
   11c68:	00078e63          	beqz	a5,11c84 <__sflush_r+0xa0>
   11c6c:	00842703          	lw	a4,8(s0)
   11c70:	05843783          	ld	a5,88(s0)
   11c74:	40e60633          	sub	a2,a2,a4
   11c78:	00078663          	beqz	a5,11c84 <__sflush_r+0xa0>
   11c7c:	07042783          	lw	a5,112(s0)
   11c80:	40f60633          	sub	a2,a2,a5
   11c84:	03043583          	ld	a1,48(s0)
   11c88:	00000693          	li	a3,0
   11c8c:	00098513          	mv	a0,s3
   11c90:	000800e7          	jalr	a6
   11c94:	fff00713          	li	a4,-1
   11c98:	01041783          	lh	a5,16(s0)
   11c9c:	12e51c63          	bne	a0,a4,11dd4 <__sflush_r+0x1f0>
   11ca0:	0009a683          	lw	a3,0(s3)
   11ca4:	01d00713          	li	a4,29
   11ca8:	18d76263          	bltu	a4,a3,11e2c <__sflush_r+0x248>
   11cac:	20400737          	lui	a4,0x20400
   11cb0:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec081>
   11cb4:	00d75733          	srl	a4,a4,a3
   11cb8:	00177713          	andi	a4,a4,1
   11cbc:	16070863          	beqz	a4,11e2c <__sflush_r+0x248>
   11cc0:	01843683          	ld	a3,24(s0)
   11cc4:	fffff737          	lui	a4,0xfffff
   11cc8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   11ccc:	00e7f733          	and	a4,a5,a4
   11cd0:	00e41823          	sh	a4,16(s0)
   11cd4:	00042423          	sw	zero,8(s0)
   11cd8:	00d43023          	sd	a3,0(s0)
   11cdc:	03379713          	slli	a4,a5,0x33
   11ce0:	00075663          	bgez	a4,11cec <__sflush_r+0x108>
   11ce4:	0009a783          	lw	a5,0(s3)
   11ce8:	10078863          	beqz	a5,11df8 <__sflush_r+0x214>
   11cec:	05843583          	ld	a1,88(s0)
   11cf0:	0099a023          	sw	s1,0(s3)
   11cf4:	10058a63          	beqz	a1,11e08 <__sflush_r+0x224>
   11cf8:	07440793          	addi	a5,s0,116
   11cfc:	00f58663          	beq	a1,a5,11d08 <__sflush_r+0x124>
   11d00:	00098513          	mv	a0,s3
   11d04:	9dcff0ef          	jal	10ee0 <_free_r>
   11d08:	01813483          	ld	s1,24(sp)
   11d0c:	04043c23          	sd	zero,88(s0)
   11d10:	02813083          	ld	ra,40(sp)
   11d14:	02013403          	ld	s0,32(sp)
   11d18:	00813983          	ld	s3,8(sp)
   11d1c:	00000513          	li	a0,0
   11d20:	03010113          	addi	sp,sp,48
   11d24:	00008067          	ret
   11d28:	01213823          	sd	s2,16(sp)
   11d2c:	0185b903          	ld	s2,24(a1)
   11d30:	08090a63          	beqz	s2,11dc4 <__sflush_r+0x1e0>
   11d34:	00913c23          	sd	s1,24(sp)
   11d38:	0005b483          	ld	s1,0(a1)
   11d3c:	00377713          	andi	a4,a4,3
   11d40:	0125b023          	sd	s2,0(a1)
   11d44:	412484bb          	subw	s1,s1,s2
   11d48:	00000793          	li	a5,0
   11d4c:	00071463          	bnez	a4,11d54 <__sflush_r+0x170>
   11d50:	0205a783          	lw	a5,32(a1)
   11d54:	00f42623          	sw	a5,12(s0)
   11d58:	00904863          	bgtz	s1,11d68 <__sflush_r+0x184>
   11d5c:	0640006f          	j	11dc0 <__sflush_r+0x1dc>
   11d60:	00a90933          	add	s2,s2,a0
   11d64:	04905e63          	blez	s1,11dc0 <__sflush_r+0x1dc>
   11d68:	04043783          	ld	a5,64(s0)
   11d6c:	03043583          	ld	a1,48(s0)
   11d70:	00048693          	mv	a3,s1
   11d74:	00090613          	mv	a2,s2
   11d78:	00098513          	mv	a0,s3
   11d7c:	000780e7          	jalr	a5
   11d80:	40a484bb          	subw	s1,s1,a0
   11d84:	fca04ee3          	bgtz	a0,11d60 <__sflush_r+0x17c>
   11d88:	01045783          	lhu	a5,16(s0)
   11d8c:	01013903          	ld	s2,16(sp)
   11d90:	0407e793          	ori	a5,a5,64
   11d94:	02813083          	ld	ra,40(sp)
   11d98:	00f41823          	sh	a5,16(s0)
   11d9c:	02013403          	ld	s0,32(sp)
   11da0:	01813483          	ld	s1,24(sp)
   11da4:	00813983          	ld	s3,8(sp)
   11da8:	fff00513          	li	a0,-1
   11dac:	03010113          	addi	sp,sp,48
   11db0:	00008067          	ret
   11db4:	0705a683          	lw	a3,112(a1)
   11db8:	e6d044e3          	bgtz	a3,11c20 <__sflush_r+0x3c>
   11dbc:	f55ff06f          	j	11d10 <__sflush_r+0x12c>
   11dc0:	01813483          	ld	s1,24(sp)
   11dc4:	01013903          	ld	s2,16(sp)
   11dc8:	f49ff06f          	j	11d10 <__sflush_r+0x12c>
   11dcc:	09043603          	ld	a2,144(s0)
   11dd0:	e95ff06f          	j	11c64 <__sflush_r+0x80>
   11dd4:	01843683          	ld	a3,24(s0)
   11dd8:	fffff737          	lui	a4,0xfffff
   11ddc:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   11de0:	00e7f733          	and	a4,a5,a4
   11de4:	00e41823          	sh	a4,16(s0)
   11de8:	00042423          	sw	zero,8(s0)
   11dec:	00d43023          	sd	a3,0(s0)
   11df0:	03379713          	slli	a4,a5,0x33
   11df4:	ee075ce3          	bgez	a4,11cec <__sflush_r+0x108>
   11df8:	05843583          	ld	a1,88(s0)
   11dfc:	08a43823          	sd	a0,144(s0)
   11e00:	0099a023          	sw	s1,0(s3)
   11e04:	ee059ae3          	bnez	a1,11cf8 <__sflush_r+0x114>
   11e08:	01813483          	ld	s1,24(sp)
   11e0c:	f05ff06f          	j	11d10 <__sflush_r+0x12c>
   11e10:	0009a783          	lw	a5,0(s3)
   11e14:	e40784e3          	beqz	a5,11c5c <__sflush_r+0x78>
   11e18:	fe378713          	addi	a4,a5,-29
   11e1c:	00070c63          	beqz	a4,11e34 <__sflush_r+0x250>
   11e20:	fea78793          	addi	a5,a5,-22
   11e24:	00078863          	beqz	a5,11e34 <__sflush_r+0x250>
   11e28:	01045783          	lhu	a5,16(s0)
   11e2c:	0407e793          	ori	a5,a5,64
   11e30:	f65ff06f          	j	11d94 <__sflush_r+0x1b0>
   11e34:	0099a023          	sw	s1,0(s3)
   11e38:	01813483          	ld	s1,24(sp)
   11e3c:	ed5ff06f          	j	11d10 <__sflush_r+0x12c>

0000000000011e40 <_fflush_r>:
   11e40:	00050793          	mv	a5,a0
   11e44:	00050663          	beqz	a0,11e50 <_fflush_r+0x10>
   11e48:	04853703          	ld	a4,72(a0)
   11e4c:	00070e63          	beqz	a4,11e68 <_fflush_r+0x28>
   11e50:	01059703          	lh	a4,16(a1)
   11e54:	00071663          	bnez	a4,11e60 <_fflush_r+0x20>
   11e58:	00000513          	li	a0,0
   11e5c:	00008067          	ret
   11e60:	00078513          	mv	a0,a5
   11e64:	d81ff06f          	j	11be4 <__sflush_r>
   11e68:	fe010113          	addi	sp,sp,-32
   11e6c:	00b13423          	sd	a1,8(sp)
   11e70:	00113c23          	sd	ra,24(sp)
   11e74:	00a13023          	sd	a0,0(sp)
   11e78:	f8cfe0ef          	jal	10604 <__sinit>
   11e7c:	00813583          	ld	a1,8(sp)
   11e80:	00013783          	ld	a5,0(sp)
   11e84:	01059703          	lh	a4,16(a1)
   11e88:	00070a63          	beqz	a4,11e9c <_fflush_r+0x5c>
   11e8c:	01813083          	ld	ra,24(sp)
   11e90:	00078513          	mv	a0,a5
   11e94:	02010113          	addi	sp,sp,32
   11e98:	d4dff06f          	j	11be4 <__sflush_r>
   11e9c:	01813083          	ld	ra,24(sp)
   11ea0:	00000513          	li	a0,0
   11ea4:	02010113          	addi	sp,sp,32
   11ea8:	00008067          	ret

0000000000011eac <fflush>:
   11eac:	06050063          	beqz	a0,11f0c <fflush+0x60>
   11eb0:	00050593          	mv	a1,a0
   11eb4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11eb8:	00050663          	beqz	a0,11ec4 <fflush+0x18>
   11ebc:	04853783          	ld	a5,72(a0)
   11ec0:	00078c63          	beqz	a5,11ed8 <fflush+0x2c>
   11ec4:	01059783          	lh	a5,16(a1)
   11ec8:	00079663          	bnez	a5,11ed4 <fflush+0x28>
   11ecc:	00000513          	li	a0,0
   11ed0:	00008067          	ret
   11ed4:	d11ff06f          	j	11be4 <__sflush_r>
   11ed8:	fe010113          	addi	sp,sp,-32
   11edc:	00b13423          	sd	a1,8(sp)
   11ee0:	00a13023          	sd	a0,0(sp)
   11ee4:	00113c23          	sd	ra,24(sp)
   11ee8:	f1cfe0ef          	jal	10604 <__sinit>
   11eec:	00813583          	ld	a1,8(sp)
   11ef0:	00013503          	ld	a0,0(sp)
   11ef4:	01059783          	lh	a5,16(a1)
   11ef8:	02079863          	bnez	a5,11f28 <fflush+0x7c>
   11efc:	01813083          	ld	ra,24(sp)
   11f00:	00000513          	li	a0,0
   11f04:	02010113          	addi	sp,sp,32
   11f08:	00008067          	ret
   11f0c:	00013637          	lui	a2,0x13
   11f10:	000125b7          	lui	a1,0x12
   11f14:	00013537          	lui	a0,0x13
   11f18:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11f1c:	e4058593          	addi	a1,a1,-448 # 11e40 <_fflush_r>
   11f20:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11f24:	f3cfe06f          	j	10660 <_fwalk_sglue>
   11f28:	01813083          	ld	ra,24(sp)
   11f2c:	02010113          	addi	sp,sp,32
   11f30:	cb5ff06f          	j	11be4 <__sflush_r>

0000000000011f34 <_sbrk_r>:
   11f34:	fe010113          	addi	sp,sp,-32
   11f38:	00813823          	sd	s0,16(sp)
   11f3c:	00913423          	sd	s1,8(sp)
   11f40:	00050493          	mv	s1,a0
   11f44:	00058513          	mv	a0,a1
   11f48:	00113c23          	sd	ra,24(sp)
   11f4c:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   11f50:	228000ef          	jal	12178 <_sbrk>
   11f54:	fff00793          	li	a5,-1
   11f58:	00f50c63          	beq	a0,a5,11f70 <_sbrk_r+0x3c>
   11f5c:	01813083          	ld	ra,24(sp)
   11f60:	01013403          	ld	s0,16(sp)
   11f64:	00813483          	ld	s1,8(sp)
   11f68:	02010113          	addi	sp,sp,32
   11f6c:	00008067          	ret
   11f70:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   11f74:	fe0784e3          	beqz	a5,11f5c <_sbrk_r+0x28>
   11f78:	01813083          	ld	ra,24(sp)
   11f7c:	01013403          	ld	s0,16(sp)
   11f80:	00f4a023          	sw	a5,0(s1)
   11f84:	00813483          	ld	s1,8(sp)
   11f88:	02010113          	addi	sp,sp,32
   11f8c:	00008067          	ret

0000000000011f90 <__libc_fini_array>:
   11f90:	fe010113          	addi	sp,sp,-32
   11f94:	00813823          	sd	s0,16(sp)
   11f98:	000137b7          	lui	a5,0x13
   11f9c:	00013437          	lui	s0,0x13
   11fa0:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   11fa4:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11fa8:	408787b3          	sub	a5,a5,s0
   11fac:	00913423          	sd	s1,8(sp)
   11fb0:	00113c23          	sd	ra,24(sp)
   11fb4:	4037d493          	srai	s1,a5,0x3
   11fb8:	02048063          	beqz	s1,11fd8 <__libc_fini_array+0x48>
   11fbc:	ff840413          	addi	s0,s0,-8
   11fc0:	00f40433          	add	s0,s0,a5
   11fc4:	00043783          	ld	a5,0(s0)
   11fc8:	fff48493          	addi	s1,s1,-1
   11fcc:	ff840413          	addi	s0,s0,-8
   11fd0:	000780e7          	jalr	a5
   11fd4:	fe0498e3          	bnez	s1,11fc4 <__libc_fini_array+0x34>
   11fd8:	01813083          	ld	ra,24(sp)
   11fdc:	01013403          	ld	s0,16(sp)
   11fe0:	00813483          	ld	s1,8(sp)
   11fe4:	02010113          	addi	sp,sp,32
   11fe8:	00008067          	ret

0000000000011fec <__register_exitproc>:
   11fec:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   11ff0:	04078e63          	beqz	a5,1204c <__register_exitproc+0x60>
   11ff4:	0087a703          	lw	a4,8(a5)
   11ff8:	01f00813          	li	a6,31
   11ffc:	08e84263          	blt	a6,a4,12080 <__register_exitproc+0x94>
   12000:	02050863          	beqz	a0,12030 <__register_exitproc+0x44>
   12004:	00371813          	slli	a6,a4,0x3
   12008:	01078833          	add	a6,a5,a6
   1200c:	10c83823          	sd	a2,272(a6)
   12010:	3107a883          	lw	a7,784(a5)
   12014:	00100613          	li	a2,1
   12018:	00e6163b          	sllw	a2,a2,a4
   1201c:	00c8e8b3          	or	a7,a7,a2
   12020:	3117a823          	sw	a7,784(a5)
   12024:	20d83823          	sd	a3,528(a6)
   12028:	00200693          	li	a3,2
   1202c:	02d50663          	beq	a0,a3,12058 <__register_exitproc+0x6c>
   12030:	0017069b          	addiw	a3,a4,1
   12034:	00371713          	slli	a4,a4,0x3
   12038:	00d7a423          	sw	a3,8(a5)
   1203c:	00e787b3          	add	a5,a5,a4
   12040:	00b7b823          	sd	a1,16(a5)
   12044:	00000513          	li	a0,0
   12048:	00008067          	ret
   1204c:	45018793          	addi	a5,gp,1104 # 13c68 <__atexit0>
   12050:	1af1bc23          	sd	a5,440(gp) # 139d0 <__atexit>
   12054:	fa1ff06f          	j	11ff4 <__register_exitproc+0x8>
   12058:	3147a683          	lw	a3,788(a5)
   1205c:	00000513          	li	a0,0
   12060:	00d66633          	or	a2,a2,a3
   12064:	0017069b          	addiw	a3,a4,1
   12068:	00371713          	slli	a4,a4,0x3
   1206c:	30c7aa23          	sw	a2,788(a5)
   12070:	00d7a423          	sw	a3,8(a5)
   12074:	00e787b3          	add	a5,a5,a4
   12078:	00b7b823          	sd	a1,16(a5)
   1207c:	00008067          	ret
   12080:	fff00513          	li	a0,-1
   12084:	00008067          	ret

0000000000012088 <_close>:
   12088:	03900893          	li	a7,57
   1208c:	00000073          	ecall
   12090:	00054663          	bltz	a0,1209c <_close+0x14>
   12094:	0005051b          	sext.w	a0,a0
   12098:	00008067          	ret
   1209c:	fe010113          	addi	sp,sp,-32
   120a0:	00113c23          	sd	ra,24(sp)
   120a4:	00a13423          	sd	a0,8(sp)
   120a8:	188000ef          	jal	12230 <__errno>
   120ac:	00813783          	ld	a5,8(sp)
   120b0:	01813083          	ld	ra,24(sp)
   120b4:	40f007bb          	negw	a5,a5
   120b8:	00f52023          	sw	a5,0(a0)
   120bc:	fff00513          	li	a0,-1
   120c0:	02010113          	addi	sp,sp,32
   120c4:	00008067          	ret

00000000000120c8 <_exit>:
   120c8:	05d00893          	li	a7,93
   120cc:	00000073          	ecall
   120d0:	00054463          	bltz	a0,120d8 <_exit+0x10>
   120d4:	0000006f          	j	120d4 <_exit+0xc>
   120d8:	fe010113          	addi	sp,sp,-32
   120dc:	00113c23          	sd	ra,24(sp)
   120e0:	00a13423          	sd	a0,8(sp)
   120e4:	14c000ef          	jal	12230 <__errno>
   120e8:	00813783          	ld	a5,8(sp)
   120ec:	40f007bb          	negw	a5,a5
   120f0:	00f52023          	sw	a5,0(a0)
   120f4:	0000006f          	j	120f4 <_exit+0x2c>

00000000000120f8 <_lseek>:
   120f8:	03e00893          	li	a7,62
   120fc:	00000073          	ecall
   12100:	00054463          	bltz	a0,12108 <_lseek+0x10>
   12104:	00008067          	ret
   12108:	fe010113          	addi	sp,sp,-32
   1210c:	00113c23          	sd	ra,24(sp)
   12110:	00a13423          	sd	a0,8(sp)
   12114:	11c000ef          	jal	12230 <__errno>
   12118:	00813783          	ld	a5,8(sp)
   1211c:	01813083          	ld	ra,24(sp)
   12120:	40f007bb          	negw	a5,a5
   12124:	00f52023          	sw	a5,0(a0)
   12128:	fff00793          	li	a5,-1
   1212c:	00078513          	mv	a0,a5
   12130:	02010113          	addi	sp,sp,32
   12134:	00008067          	ret

0000000000012138 <_read>:
   12138:	03f00893          	li	a7,63
   1213c:	00000073          	ecall
   12140:	00054463          	bltz	a0,12148 <_read+0x10>
   12144:	00008067          	ret
   12148:	fe010113          	addi	sp,sp,-32
   1214c:	00113c23          	sd	ra,24(sp)
   12150:	00a13423          	sd	a0,8(sp)
   12154:	0dc000ef          	jal	12230 <__errno>
   12158:	00813783          	ld	a5,8(sp)
   1215c:	01813083          	ld	ra,24(sp)
   12160:	40f007bb          	negw	a5,a5
   12164:	00f52023          	sw	a5,0(a0)
   12168:	fff00793          	li	a5,-1
   1216c:	00078513          	mv	a0,a5
   12170:	02010113          	addi	sp,sp,32
   12174:	00008067          	ret

0000000000012178 <_sbrk>:
   12178:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   1217c:	ff010113          	addi	sp,sp,-16
   12180:	00113423          	sd	ra,8(sp)
   12184:	00050713          	mv	a4,a0
   12188:	02079063          	bnez	a5,121a8 <_sbrk+0x30>
   1218c:	0d600893          	li	a7,214
   12190:	00000513          	li	a0,0
   12194:	00000073          	ecall
   12198:	fff00793          	li	a5,-1
   1219c:	02f50c63          	beq	a0,a5,121d4 <_sbrk+0x5c>
   121a0:	00050793          	mv	a5,a0
   121a4:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   121a8:	00f70533          	add	a0,a4,a5
   121ac:	0d600893          	li	a7,214
   121b0:	00000073          	ecall
   121b4:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   121b8:	00f70733          	add	a4,a4,a5
   121bc:	00e51c63          	bne	a0,a4,121d4 <_sbrk+0x5c>
   121c0:	00813083          	ld	ra,8(sp)
   121c4:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   121c8:	00078513          	mv	a0,a5
   121cc:	01010113          	addi	sp,sp,16
   121d0:	00008067          	ret
   121d4:	05c000ef          	jal	12230 <__errno>
   121d8:	00813083          	ld	ra,8(sp)
   121dc:	00c00793          	li	a5,12
   121e0:	00f52023          	sw	a5,0(a0)
   121e4:	fff00513          	li	a0,-1
   121e8:	01010113          	addi	sp,sp,16
   121ec:	00008067          	ret

00000000000121f0 <_write>:
   121f0:	04000893          	li	a7,64
   121f4:	00000073          	ecall
   121f8:	00054463          	bltz	a0,12200 <_write+0x10>
   121fc:	00008067          	ret
   12200:	fe010113          	addi	sp,sp,-32
   12204:	00113c23          	sd	ra,24(sp)
   12208:	00a13423          	sd	a0,8(sp)
   1220c:	024000ef          	jal	12230 <__errno>
   12210:	00813783          	ld	a5,8(sp)
   12214:	01813083          	ld	ra,24(sp)
   12218:	40f007bb          	negw	a5,a5
   1221c:	00f52023          	sw	a5,0(a0)
   12220:	fff00793          	li	a5,-1
   12224:	00078513          	mv	a0,a5
   12228:	02010113          	addi	sp,sp,32
   1222c:	00008067          	ret

0000000000012230 <__errno>:
   12230:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12234:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012238 <__EH_FRAME_BEGIN__>:
   12238:	0000                	.insn	2, 0x0000
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
  10:	02d0                	.insn	2, 0x02d0
  12:	0001                	.insn	2, 0x0001
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	0024                	.insn	2, 0x0024
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
  10:	d000                	.insn	2, 0xd000
  12:	0102                	.insn	2, 0x0102
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
  2e:	02d0                	.insn	2, 0x02d0
  30:	0001                	.insn	2, 0x0001
  32:	0000                	.insn	2, 0x0000
  34:	0000                	.insn	2, 0x0000
  36:	0324                	.insn	2, 0x0324
	...

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
  3c:	d002                	.insn	2, 0xd002
  3e:	0102                	.insn	2, 0x0102
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
  1e:	69666e6f          	jal	t3,666b4 <__BSS_END__+0x52734>
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
  48:	636c6f6f          	jal	t5,c667e <__BSS_END__+0xb26fe>
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
  a8:	0033                	.short	0x0033

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6d6f682f          	.insn	4, 0x6d6f682f
   4:	2f65                	.insn	2, 0x2f65
   6:	2f326163          	bltu	tp,s3,2e8 <exit-0xfe38>
   a:	6972                	.insn	2, 0x6972
   c:	2d766373          	.insn	4, 0x2d766373
  10:	2d756e67          	.insn	4, 0x2d756e67
  14:	6f74                	.insn	2, 0x6f74
  16:	68636c6f          	jal	s8,3669c <__BSS_END__+0x2271c>
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
  80:	69666e6f          	jal	t3,66716 <__BSS_END__+0x52796>
  84:	69722f67          	.insn	4, 0x69722f67
  88:	00766373          	.insn	4, 0x00766373
  8c:	756d                	.insn	2, 0x756d
  8e:	646c                	.insn	2, 0x646c
  90:	3369                	.insn	2, 0x3369
  92:	532e                	.insn	2, 0x532e
	...

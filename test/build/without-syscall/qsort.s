
test/build/without-syscall/qsort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	499000ef          	jal	10dcc <__call_exitprocs>
   10138:	1981b783          	ld	a5,408(gp) # 13d58 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	0e0020ef          	jal	12228 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	0ec50513          	addi	a0,a0,236 # 120ec <__libc_fini_array>
   1015c:	5a90006f          	j	10f04 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00004197          	auipc	gp,0x4
   10168:	a5c18193          	addi	gp,gp,-1444 # 13bc0 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	bec50513          	addi	a0,a0,-1044 # 13d58 <__stdio_exit_handler>
   10174:	00004617          	auipc	a2,0x4
   10178:	24c60613          	addi	a2,a2,588 # 143c0 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	36d000ef          	jal	10cf0 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	d7c50513          	addi	a0,a0,-644 # 10f04 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	f5850513          	addi	a0,a0,-168 # 120ec <__libc_fini_array>
   1019c:	569000ef          	jal	10f04 <atexit>
   101a0:	2bd000ef          	jal	10c5c <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	230000ef          	jal	103e0 <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1d01c783          	lbu	a5,464(gp) # 13d90 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00012537          	lui	a0,0x12
   101d8:	39850513          	addi	a0,a0,920 # 12398 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x10120>
   101e4:	00100793          	li	a5,1
   101e8:	1cf18823          	sb	a5,464(gp) # 13d90 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00012537          	lui	a0,0x12
   10208:	1d818593          	addi	a1,gp,472 # 13d98 <object.0>
   1020c:	39850513          	addi	a0,a0,920 # 12398 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <qsort>:
   1021c:	fd010113          	addi	sp,sp,-48
   10220:	02113423          	sd	ra,40(sp)
   10224:	02813023          	sd	s0,32(sp)
   10228:	03010413          	addi	s0,sp,48
   1022c:	00050793          	mv	a5,a0
   10230:	00058713          	mv	a4,a1
   10234:	fcf42e23          	sw	a5,-36(s0)
   10238:	00070793          	mv	a5,a4
   1023c:	fcf42c23          	sw	a5,-40(s0)
   10240:	20818713          	addi	a4,gp,520 # 13dc8 <result>
   10244:	fdc42783          	lw	a5,-36(s0)
   10248:	00279793          	slli	a5,a5,0x2
   1024c:	00f707b3          	add	a5,a4,a5
   10250:	0007a783          	lw	a5,0(a5)
   10254:	fef42223          	sw	a5,-28(s0)
   10258:	fdc42783          	lw	a5,-36(s0)
   1025c:	fef42623          	sw	a5,-20(s0)
   10260:	fd842783          	lw	a5,-40(s0)
   10264:	fef42423          	sw	a5,-24(s0)
   10268:	fdc42783          	lw	a5,-36(s0)
   1026c:	00078713          	mv	a4,a5
   10270:	fd842783          	lw	a5,-40(s0)
   10274:	0007071b          	sext.w	a4,a4
   10278:	0007879b          	sext.w	a5,a5
   1027c:	14f75863          	bge	a4,a5,103cc <qsort+0x1b0>
   10280:	0e00006f          	j	10360 <qsort+0x144>
   10284:	fe842783          	lw	a5,-24(s0)
   10288:	fff7879b          	addiw	a5,a5,-1
   1028c:	fef42423          	sw	a5,-24(s0)
   10290:	fec42783          	lw	a5,-20(s0)
   10294:	00078713          	mv	a4,a5
   10298:	fe842783          	lw	a5,-24(s0)
   1029c:	0007071b          	sext.w	a4,a4
   102a0:	0007879b          	sext.w	a5,a5
   102a4:	02f75263          	bge	a4,a5,102c8 <qsort+0xac>
   102a8:	20818713          	addi	a4,gp,520 # 13dc8 <result>
   102ac:	fe842783          	lw	a5,-24(s0)
   102b0:	00279793          	slli	a5,a5,0x2
   102b4:	00f707b3          	add	a5,a4,a5
   102b8:	0007a783          	lw	a5,0(a5)
   102bc:	fe442703          	lw	a4,-28(s0)
   102c0:	0007071b          	sext.w	a4,a4
   102c4:	fce7d0e3          	bge	a5,a4,10284 <qsort+0x68>
   102c8:	20818713          	addi	a4,gp,520 # 13dc8 <result>
   102cc:	fe842783          	lw	a5,-24(s0)
   102d0:	00279793          	slli	a5,a5,0x2
   102d4:	00f707b3          	add	a5,a4,a5
   102d8:	0007a703          	lw	a4,0(a5)
   102dc:	20818693          	addi	a3,gp,520 # 13dc8 <result>
   102e0:	fec42783          	lw	a5,-20(s0)
   102e4:	00279793          	slli	a5,a5,0x2
   102e8:	00f687b3          	add	a5,a3,a5
   102ec:	00e7a023          	sw	a4,0(a5)
   102f0:	0100006f          	j	10300 <qsort+0xe4>
   102f4:	fec42783          	lw	a5,-20(s0)
   102f8:	0017879b          	addiw	a5,a5,1
   102fc:	fef42623          	sw	a5,-20(s0)
   10300:	fec42783          	lw	a5,-20(s0)
   10304:	00078713          	mv	a4,a5
   10308:	fe842783          	lw	a5,-24(s0)
   1030c:	0007071b          	sext.w	a4,a4
   10310:	0007879b          	sext.w	a5,a5
   10314:	02f75263          	bge	a4,a5,10338 <qsort+0x11c>
   10318:	20818713          	addi	a4,gp,520 # 13dc8 <result>
   1031c:	fec42783          	lw	a5,-20(s0)
   10320:	00279793          	slli	a5,a5,0x2
   10324:	00f707b3          	add	a5,a4,a5
   10328:	0007a783          	lw	a5,0(a5)
   1032c:	fe442703          	lw	a4,-28(s0)
   10330:	0007071b          	sext.w	a4,a4
   10334:	fcf750e3          	bge	a4,a5,102f4 <qsort+0xd8>
   10338:	20818713          	addi	a4,gp,520 # 13dc8 <result>
   1033c:	fec42783          	lw	a5,-20(s0)
   10340:	00279793          	slli	a5,a5,0x2
   10344:	00f707b3          	add	a5,a4,a5
   10348:	0007a703          	lw	a4,0(a5)
   1034c:	20818693          	addi	a3,gp,520 # 13dc8 <result>
   10350:	fe842783          	lw	a5,-24(s0)
   10354:	00279793          	slli	a5,a5,0x2
   10358:	00f687b3          	add	a5,a3,a5
   1035c:	00e7a023          	sw	a4,0(a5)
   10360:	fec42783          	lw	a5,-20(s0)
   10364:	00078713          	mv	a4,a5
   10368:	fe842783          	lw	a5,-24(s0)
   1036c:	0007071b          	sext.w	a4,a4
   10370:	0007879b          	sext.w	a5,a5
   10374:	f0f74ee3          	blt	a4,a5,10290 <qsort+0x74>
   10378:	20818713          	addi	a4,gp,520 # 13dc8 <result>
   1037c:	fec42783          	lw	a5,-20(s0)
   10380:	00279793          	slli	a5,a5,0x2
   10384:	00f707b3          	add	a5,a4,a5
   10388:	fe442703          	lw	a4,-28(s0)
   1038c:	00e7a023          	sw	a4,0(a5)
   10390:	fec42783          	lw	a5,-20(s0)
   10394:	fff7879b          	addiw	a5,a5,-1
   10398:	0007871b          	sext.w	a4,a5
   1039c:	fdc42783          	lw	a5,-36(s0)
   103a0:	00070593          	mv	a1,a4
   103a4:	00078513          	mv	a0,a5
   103a8:	e75ff0ef          	jal	1021c <qsort>
   103ac:	fec42783          	lw	a5,-20(s0)
   103b0:	0017879b          	addiw	a5,a5,1
   103b4:	0007879b          	sext.w	a5,a5
   103b8:	fd842703          	lw	a4,-40(s0)
   103bc:	00070593          	mv	a1,a4
   103c0:	00078513          	mv	a0,a5
   103c4:	e59ff0ef          	jal	1021c <qsort>
   103c8:	0080006f          	j	103d0 <qsort+0x1b4>
   103cc:	00000013          	nop
   103d0:	02813083          	ld	ra,40(sp)
   103d4:	02013403          	ld	s0,32(sp)
   103d8:	03010113          	addi	sp,sp,48
   103dc:	00008067          	ret

00000000000103e0 <main>:
   103e0:	fe010113          	addi	sp,sp,-32
   103e4:	00113c23          	sd	ra,24(sp)
   103e8:	00813823          	sd	s0,16(sp)
   103ec:	02010413          	addi	s0,sp,32
   103f0:	02800793          	li	a5,40
   103f4:	fef42623          	sw	a5,-20(s0)
   103f8:	0280006f          	j	10420 <main+0x40>
   103fc:	20818713          	addi	a4,gp,520 # 13dc8 <result>
   10400:	fec42783          	lw	a5,-20(s0)
   10404:	00279793          	slli	a5,a5,0x2
   10408:	00f707b3          	add	a5,a4,a5
   1040c:	fec42703          	lw	a4,-20(s0)
   10410:	00e7a023          	sw	a4,0(a5)
   10414:	fec42783          	lw	a5,-20(s0)
   10418:	fff7879b          	addiw	a5,a5,-1
   1041c:	fef42623          	sw	a5,-20(s0)
   10420:	fec42783          	lw	a5,-20(s0)
   10424:	0007879b          	sext.w	a5,a5
   10428:	fcf04ae3          	bgtz	a5,103fc <main+0x1c>
   1042c:	02700593          	li	a1,39
   10430:	00000513          	li	a0,0
   10434:	de9ff0ef          	jal	1021c <qsort>
   10438:	00000793          	li	a5,0
   1043c:	00078513          	mv	a0,a5
   10440:	01813083          	ld	ra,24(sp)
   10444:	01013403          	ld	s0,16(sp)
   10448:	02010113          	addi	sp,sp,32
   1044c:	00008067          	ret

0000000000010450 <__fp_lock>:
   10450:	00000513          	li	a0,0
   10454:	00008067          	ret

0000000000010458 <stdio_exit_handler>:
   10458:	00013637          	lui	a2,0x13
   1045c:	000125b7          	lui	a1,0x12
   10460:	00013537          	lui	a0,0x13
   10464:	3b860613          	addi	a2,a2,952 # 133b8 <__sglue>
   10468:	c2c58593          	addi	a1,a1,-980 # 11c2c <_fclose_r>
   1046c:	3d050513          	addi	a0,a0,976 # 133d0 <_impure_data>
   10470:	34c0006f          	j	107bc <_fwalk_sglue>

0000000000010474 <cleanup_stdio>:
   10474:	00853583          	ld	a1,8(a0)
   10478:	ff010113          	addi	sp,sp,-16
   1047c:	00813023          	sd	s0,0(sp)
   10480:	00113423          	sd	ra,8(sp)
   10484:	2b018793          	addi	a5,gp,688 # 13e70 <__sf>
   10488:	00050413          	mv	s0,a0
   1048c:	00f58463          	beq	a1,a5,10494 <cleanup_stdio+0x20>
   10490:	79c010ef          	jal	11c2c <_fclose_r>
   10494:	01043583          	ld	a1,16(s0)
   10498:	36018793          	addi	a5,gp,864 # 13f20 <__sf+0xb0>
   1049c:	00f58663          	beq	a1,a5,104a8 <cleanup_stdio+0x34>
   104a0:	00040513          	mv	a0,s0
   104a4:	788010ef          	jal	11c2c <_fclose_r>
   104a8:	01843583          	ld	a1,24(s0)
   104ac:	41018793          	addi	a5,gp,1040 # 13fd0 <__sf+0x160>
   104b0:	00f58c63          	beq	a1,a5,104c8 <cleanup_stdio+0x54>
   104b4:	00040513          	mv	a0,s0
   104b8:	00013403          	ld	s0,0(sp)
   104bc:	00813083          	ld	ra,8(sp)
   104c0:	01010113          	addi	sp,sp,16
   104c4:	7680106f          	j	11c2c <_fclose_r>
   104c8:	00813083          	ld	ra,8(sp)
   104cc:	00013403          	ld	s0,0(sp)
   104d0:	01010113          	addi	sp,sp,16
   104d4:	00008067          	ret

00000000000104d8 <__fp_unlock>:
   104d8:	00000513          	li	a0,0
   104dc:	00008067          	ret

00000000000104e0 <global_stdio_init.part.0>:
   104e0:	fd010113          	addi	sp,sp,-48
   104e4:	000107b7          	lui	a5,0x10
   104e8:	02813023          	sd	s0,32(sp)
   104ec:	45878793          	addi	a5,a5,1112 # 10458 <stdio_exit_handler>
   104f0:	2b018413          	addi	s0,gp,688 # 13e70 <__sf>
   104f4:	02113423          	sd	ra,40(sp)
   104f8:	00913c23          	sd	s1,24(sp)
   104fc:	01213823          	sd	s2,16(sp)
   10500:	01313423          	sd	s3,8(sp)
   10504:	01413023          	sd	s4,0(sp)
   10508:	18f1bc23          	sd	a5,408(gp) # 13d58 <__stdio_exit_handler>
   1050c:	00800613          	li	a2,8
   10510:	00400793          	li	a5,4
   10514:	00000593          	li	a1,0
   10518:	35418513          	addi	a0,gp,852 # 13f14 <__sf+0xa4>
   1051c:	00f42823          	sw	a5,16(s0)
   10520:	00043023          	sd	zero,0(s0)
   10524:	00043423          	sd	zero,8(s0)
   10528:	0a042623          	sw	zero,172(s0)
   1052c:	00043c23          	sd	zero,24(s0)
   10530:	02042023          	sw	zero,32(s0)
   10534:	02042423          	sw	zero,40(s0)
   10538:	7b8000ef          	jal	10cf0 <memset>
   1053c:	00011a37          	lui	s4,0x11
   10540:	000119b7          	lui	s3,0x11
   10544:	00011937          	lui	s2,0x11
   10548:	000114b7          	lui	s1,0x11
   1054c:	000107b7          	lui	a5,0x10
   10550:	88ca0a13          	addi	s4,s4,-1908 # 1088c <__sread>
   10554:	8f098993          	addi	s3,s3,-1808 # 108f0 <__swrite>
   10558:	97890913          	addi	s2,s2,-1672 # 10978 <__sseek>
   1055c:	9dc48493          	addi	s1,s1,-1572 # 109dc <__sclose>
   10560:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10564:	00800613          	li	a2,8
   10568:	00000593          	li	a1,0
   1056c:	40418513          	addi	a0,gp,1028 # 13fc4 <__sf+0x154>
   10570:	0cf42023          	sw	a5,192(s0)
   10574:	03443c23          	sd	s4,56(s0)
   10578:	05343023          	sd	s3,64(s0)
   1057c:	05243423          	sd	s2,72(s0)
   10580:	04943823          	sd	s1,80(s0)
   10584:	02843823          	sd	s0,48(s0)
   10588:	0a043823          	sd	zero,176(s0)
   1058c:	0a043c23          	sd	zero,184(s0)
   10590:	14042e23          	sw	zero,348(s0)
   10594:	0c043423          	sd	zero,200(s0)
   10598:	0c042823          	sw	zero,208(s0)
   1059c:	0c042c23          	sw	zero,216(s0)
   105a0:	750000ef          	jal	10cf0 <memset>
   105a4:	000207b7          	lui	a5,0x20
   105a8:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xbc52>
   105ac:	36018713          	addi	a4,gp,864 # 13f20 <__sf+0xb0>
   105b0:	4b418513          	addi	a0,gp,1204 # 14074 <__sf+0x204>
   105b4:	00800613          	li	a2,8
   105b8:	00000593          	li	a1,0
   105bc:	0f443423          	sd	s4,232(s0)
   105c0:	0f343823          	sd	s3,240(s0)
   105c4:	0f243c23          	sd	s2,248(s0)
   105c8:	10943023          	sd	s1,256(s0)
   105cc:	16f42823          	sw	a5,368(s0)
   105d0:	16043023          	sd	zero,352(s0)
   105d4:	16043423          	sd	zero,360(s0)
   105d8:	20042623          	sw	zero,524(s0)
   105dc:	16043c23          	sd	zero,376(s0)
   105e0:	18042023          	sw	zero,384(s0)
   105e4:	18042423          	sw	zero,392(s0)
   105e8:	0ee43023          	sd	a4,224(s0)
   105ec:	704000ef          	jal	10cf0 <memset>
   105f0:	41018793          	addi	a5,gp,1040 # 13fd0 <__sf+0x160>
   105f4:	19443c23          	sd	s4,408(s0)
   105f8:	1b343023          	sd	s3,416(s0)
   105fc:	1b243423          	sd	s2,424(s0)
   10600:	1a943823          	sd	s1,432(s0)
   10604:	02813083          	ld	ra,40(sp)
   10608:	18f43823          	sd	a5,400(s0)
   1060c:	02013403          	ld	s0,32(sp)
   10610:	01813483          	ld	s1,24(sp)
   10614:	01013903          	ld	s2,16(sp)
   10618:	00813983          	ld	s3,8(sp)
   1061c:	00013a03          	ld	s4,0(sp)
   10620:	03010113          	addi	sp,sp,48
   10624:	00008067          	ret

0000000000010628 <__sfp>:
   10628:	1981b783          	ld	a5,408(gp) # 13d58 <__stdio_exit_handler>
   1062c:	fd010113          	addi	sp,sp,-48
   10630:	00913c23          	sd	s1,24(sp)
   10634:	02113423          	sd	ra,40(sp)
   10638:	02813023          	sd	s0,32(sp)
   1063c:	00050493          	mv	s1,a0
   10640:	10078463          	beqz	a5,10748 <__sfp+0x120>
   10644:	000136b7          	lui	a3,0x13
   10648:	3b868693          	addi	a3,a3,952 # 133b8 <__sglue>
   1064c:	0086a703          	lw	a4,8(a3)
   10650:	08e05c63          	blez	a4,106e8 <__sfp+0xc0>
   10654:	02071713          	slli	a4,a4,0x20
   10658:	02075713          	srli	a4,a4,0x20
   1065c:	00171793          	slli	a5,a4,0x1
   10660:	00e787b3          	add	a5,a5,a4
   10664:	0106b403          	ld	s0,16(a3)
   10668:	00279793          	slli	a5,a5,0x2
   1066c:	40e787b3          	sub	a5,a5,a4
   10670:	00479793          	slli	a5,a5,0x4
   10674:	00f407b3          	add	a5,s0,a5
   10678:	00c0006f          	j	10684 <__sfp+0x5c>
   1067c:	0b040413          	addi	s0,s0,176
   10680:	06f40463          	beq	s0,a5,106e8 <__sfp+0xc0>
   10684:	01041703          	lh	a4,16(s0)
   10688:	fe071ae3          	bnez	a4,1067c <__sfp+0x54>
   1068c:	ffff07b7          	lui	a5,0xffff0
   10690:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdbc41>
   10694:	00f42823          	sw	a5,16(s0)
   10698:	0a042623          	sw	zero,172(s0)
   1069c:	00043023          	sd	zero,0(s0)
   106a0:	00043423          	sd	zero,8(s0)
   106a4:	00043c23          	sd	zero,24(s0)
   106a8:	02042023          	sw	zero,32(s0)
   106ac:	02042423          	sw	zero,40(s0)
   106b0:	00800613          	li	a2,8
   106b4:	00000593          	li	a1,0
   106b8:	0a440513          	addi	a0,s0,164
   106bc:	634000ef          	jal	10cf0 <memset>
   106c0:	04043c23          	sd	zero,88(s0)
   106c4:	06042023          	sw	zero,96(s0)
   106c8:	06043c23          	sd	zero,120(s0)
   106cc:	08042023          	sw	zero,128(s0)
   106d0:	02813083          	ld	ra,40(sp)
   106d4:	00040513          	mv	a0,s0
   106d8:	02013403          	ld	s0,32(sp)
   106dc:	01813483          	ld	s1,24(sp)
   106e0:	03010113          	addi	sp,sp,48
   106e4:	00008067          	ret
   106e8:	0006b403          	ld	s0,0(a3)
   106ec:	00040663          	beqz	s0,106f8 <__sfp+0xd0>
   106f0:	00040693          	mv	a3,s0
   106f4:	f59ff06f          	j	1064c <__sfp+0x24>
   106f8:	2d800593          	li	a1,728
   106fc:	00048513          	mv	a0,s1
   10700:	00d13423          	sd	a3,8(sp)
   10704:	43d000ef          	jal	11340 <_malloc_r>
   10708:	00813683          	ld	a3,8(sp)
   1070c:	00050413          	mv	s0,a0
   10710:	04050063          	beqz	a0,10750 <__sfp+0x128>
   10714:	00400793          	li	a5,4
   10718:	00f52423          	sw	a5,8(a0)
   1071c:	01850513          	addi	a0,a0,24
   10720:	00043023          	sd	zero,0(s0)
   10724:	00a43823          	sd	a0,16(s0)
   10728:	2c000613          	li	a2,704
   1072c:	00000593          	li	a1,0
   10730:	00d13423          	sd	a3,8(sp)
   10734:	5bc000ef          	jal	10cf0 <memset>
   10738:	00813683          	ld	a3,8(sp)
   1073c:	0086b023          	sd	s0,0(a3)
   10740:	00040693          	mv	a3,s0
   10744:	f09ff06f          	j	1064c <__sfp+0x24>
   10748:	d99ff0ef          	jal	104e0 <global_stdio_init.part.0>
   1074c:	ef9ff06f          	j	10644 <__sfp+0x1c>
   10750:	0006b023          	sd	zero,0(a3)
   10754:	00c00793          	li	a5,12
   10758:	00f4a023          	sw	a5,0(s1)
   1075c:	f75ff06f          	j	106d0 <__sfp+0xa8>

0000000000010760 <__sinit>:
   10760:	04853783          	ld	a5,72(a0)
   10764:	00078463          	beqz	a5,1076c <__sinit+0xc>
   10768:	00008067          	ret
   1076c:	000107b7          	lui	a5,0x10
   10770:	1981b703          	ld	a4,408(gp) # 13d58 <__stdio_exit_handler>
   10774:	47478793          	addi	a5,a5,1140 # 10474 <cleanup_stdio>
   10778:	04f53423          	sd	a5,72(a0)
   1077c:	fe0716e3          	bnez	a4,10768 <__sinit+0x8>
   10780:	d61ff06f          	j	104e0 <global_stdio_init.part.0>

0000000000010784 <__sfp_lock_acquire>:
   10784:	00008067          	ret

0000000000010788 <__sfp_lock_release>:
   10788:	00008067          	ret

000000000001078c <__fp_lock_all>:
   1078c:	00013637          	lui	a2,0x13
   10790:	000105b7          	lui	a1,0x10
   10794:	3b860613          	addi	a2,a2,952 # 133b8 <__sglue>
   10798:	45058593          	addi	a1,a1,1104 # 10450 <__fp_lock>
   1079c:	00000513          	li	a0,0
   107a0:	01c0006f          	j	107bc <_fwalk_sglue>

00000000000107a4 <__fp_unlock_all>:
   107a4:	00013637          	lui	a2,0x13
   107a8:	000105b7          	lui	a1,0x10
   107ac:	3b860613          	addi	a2,a2,952 # 133b8 <__sglue>
   107b0:	4d858593          	addi	a1,a1,1240 # 104d8 <__fp_unlock>
   107b4:	00000513          	li	a0,0
   107b8:	0040006f          	j	107bc <_fwalk_sglue>

00000000000107bc <_fwalk_sglue>:
   107bc:	fb010113          	addi	sp,sp,-80
   107c0:	03213823          	sd	s2,48(sp)
   107c4:	03313423          	sd	s3,40(sp)
   107c8:	03413023          	sd	s4,32(sp)
   107cc:	01513c23          	sd	s5,24(sp)
   107d0:	01613823          	sd	s6,16(sp)
   107d4:	01713423          	sd	s7,8(sp)
   107d8:	04113423          	sd	ra,72(sp)
   107dc:	04813023          	sd	s0,64(sp)
   107e0:	02913c23          	sd	s1,56(sp)
   107e4:	00060913          	mv	s2,a2
   107e8:	00050a13          	mv	s4,a0
   107ec:	00058a93          	mv	s5,a1
   107f0:	00000b13          	li	s6,0
   107f4:	00100b93          	li	s7,1
   107f8:	fff00993          	li	s3,-1
   107fc:	00892783          	lw	a5,8(s2)
   10800:	04f05a63          	blez	a5,10854 <_fwalk_sglue+0x98>
   10804:	02079793          	slli	a5,a5,0x20
   10808:	0207d793          	srli	a5,a5,0x20
   1080c:	00179493          	slli	s1,a5,0x1
   10810:	00f484b3          	add	s1,s1,a5
   10814:	01093403          	ld	s0,16(s2)
   10818:	00249493          	slli	s1,s1,0x2
   1081c:	40f484b3          	sub	s1,s1,a5
   10820:	00449493          	slli	s1,s1,0x4
   10824:	009404b3          	add	s1,s0,s1
   10828:	01045783          	lhu	a5,16(s0)
   1082c:	02fbf063          	bgeu	s7,a5,1084c <_fwalk_sglue+0x90>
   10830:	01241783          	lh	a5,18(s0)
   10834:	00040593          	mv	a1,s0
   10838:	000a0513          	mv	a0,s4
   1083c:	01378863          	beq	a5,s3,1084c <_fwalk_sglue+0x90>
   10840:	000a80e7          	jalr	s5
   10844:	01656b33          	or	s6,a0,s6
   10848:	000b0b1b          	sext.w	s6,s6
   1084c:	0b040413          	addi	s0,s0,176
   10850:	fc941ce3          	bne	s0,s1,10828 <_fwalk_sglue+0x6c>
   10854:	00093903          	ld	s2,0(s2)
   10858:	fa0912e3          	bnez	s2,107fc <_fwalk_sglue+0x40>
   1085c:	04813083          	ld	ra,72(sp)
   10860:	04013403          	ld	s0,64(sp)
   10864:	03813483          	ld	s1,56(sp)
   10868:	03013903          	ld	s2,48(sp)
   1086c:	02813983          	ld	s3,40(sp)
   10870:	02013a03          	ld	s4,32(sp)
   10874:	01813a83          	ld	s5,24(sp)
   10878:	00813b83          	ld	s7,8(sp)
   1087c:	000b0513          	mv	a0,s6
   10880:	01013b03          	ld	s6,16(sp)
   10884:	05010113          	addi	sp,sp,80
   10888:	00008067          	ret

000000000001088c <__sread>:
   1088c:	ff010113          	addi	sp,sp,-16
   10890:	00813023          	sd	s0,0(sp)
   10894:	00058413          	mv	s0,a1
   10898:	01259583          	lh	a1,18(a1)
   1089c:	00113423          	sd	ra,8(sp)
   108a0:	2ec000ef          	jal	10b8c <_read_r>
   108a4:	02054063          	bltz	a0,108c4 <__sread+0x38>
   108a8:	09043783          	ld	a5,144(s0)
   108ac:	00813083          	ld	ra,8(sp)
   108b0:	00a787b3          	add	a5,a5,a0
   108b4:	08f43823          	sd	a5,144(s0)
   108b8:	00013403          	ld	s0,0(sp)
   108bc:	01010113          	addi	sp,sp,16
   108c0:	00008067          	ret
   108c4:	01045783          	lhu	a5,16(s0)
   108c8:	fffff737          	lui	a4,0xfffff
   108cc:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeac3f>
   108d0:	00e7f7b3          	and	a5,a5,a4
   108d4:	00813083          	ld	ra,8(sp)
   108d8:	00f41823          	sh	a5,16(s0)
   108dc:	00013403          	ld	s0,0(sp)
   108e0:	01010113          	addi	sp,sp,16
   108e4:	00008067          	ret

00000000000108e8 <__seofread>:
   108e8:	00000513          	li	a0,0
   108ec:	00008067          	ret

00000000000108f0 <__swrite>:
   108f0:	01059783          	lh	a5,16(a1)
   108f4:	fd010113          	addi	sp,sp,-48
   108f8:	00068313          	mv	t1,a3
   108fc:	02113423          	sd	ra,40(sp)
   10900:	1007f693          	andi	a3,a5,256
   10904:	00058713          	mv	a4,a1
   10908:	00060893          	mv	a7,a2
   1090c:	00050813          	mv	a6,a0
   10910:	02069863          	bnez	a3,10940 <__swrite+0x50>
   10914:	fffff6b7          	lui	a3,0xfffff
   10918:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeac3f>
   1091c:	02813083          	ld	ra,40(sp)
   10920:	00d7f7b3          	and	a5,a5,a3
   10924:	01271583          	lh	a1,18(a4)
   10928:	00f71823          	sh	a5,16(a4)
   1092c:	00030693          	mv	a3,t1
   10930:	00088613          	mv	a2,a7
   10934:	00080513          	mv	a0,a6
   10938:	03010113          	addi	sp,sp,48
   1093c:	2b80006f          	j	10bf4 <_write_r>
   10940:	01259583          	lh	a1,18(a1)
   10944:	00c13823          	sd	a2,16(sp)
   10948:	00200693          	li	a3,2
   1094c:	00000613          	li	a2,0
   10950:	00613c23          	sd	t1,24(sp)
   10954:	00e13023          	sd	a4,0(sp)
   10958:	00a13423          	sd	a0,8(sp)
   1095c:	1c8000ef          	jal	10b24 <_lseek_r>
   10960:	00013703          	ld	a4,0(sp)
   10964:	01813303          	ld	t1,24(sp)
   10968:	01013883          	ld	a7,16(sp)
   1096c:	01071783          	lh	a5,16(a4)
   10970:	00813803          	ld	a6,8(sp)
   10974:	fa1ff06f          	j	10914 <__swrite+0x24>

0000000000010978 <__sseek>:
   10978:	ff010113          	addi	sp,sp,-16
   1097c:	00813023          	sd	s0,0(sp)
   10980:	00058413          	mv	s0,a1
   10984:	01259583          	lh	a1,18(a1)
   10988:	00113423          	sd	ra,8(sp)
   1098c:	198000ef          	jal	10b24 <_lseek_r>
   10990:	fff00713          	li	a4,-1
   10994:	01041783          	lh	a5,16(s0)
   10998:	02e50263          	beq	a0,a4,109bc <__sseek+0x44>
   1099c:	00001737          	lui	a4,0x1
   109a0:	00e7e7b3          	or	a5,a5,a4
   109a4:	00813083          	ld	ra,8(sp)
   109a8:	08a43823          	sd	a0,144(s0)
   109ac:	00f41823          	sh	a5,16(s0)
   109b0:	00013403          	ld	s0,0(sp)
   109b4:	01010113          	addi	sp,sp,16
   109b8:	00008067          	ret
   109bc:	80050713          	addi	a4,a0,-2048
   109c0:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   109c4:	00e7f7b3          	and	a5,a5,a4
   109c8:	00813083          	ld	ra,8(sp)
   109cc:	00f41823          	sh	a5,16(s0)
   109d0:	00013403          	ld	s0,0(sp)
   109d4:	01010113          	addi	sp,sp,16
   109d8:	00008067          	ret

00000000000109dc <__sclose>:
   109dc:	01259583          	lh	a1,18(a1)
   109e0:	0040006f          	j	109e4 <_close_r>

00000000000109e4 <_close_r>:
   109e4:	fe010113          	addi	sp,sp,-32
   109e8:	00813823          	sd	s0,16(sp)
   109ec:	00913423          	sd	s1,8(sp)
   109f0:	00050493          	mv	s1,a0
   109f4:	00058513          	mv	a0,a1
   109f8:	00113c23          	sd	ra,24(sp)
   109fc:	1a01a023          	sw	zero,416(gp) # 13d60 <errno>
   10a00:	7e8010ef          	jal	121e8 <_close>
   10a04:	fff00793          	li	a5,-1
   10a08:	00f50c63          	beq	a0,a5,10a20 <_close_r+0x3c>
   10a0c:	01813083          	ld	ra,24(sp)
   10a10:	01013403          	ld	s0,16(sp)
   10a14:	00813483          	ld	s1,8(sp)
   10a18:	02010113          	addi	sp,sp,32
   10a1c:	00008067          	ret
   10a20:	1a01a783          	lw	a5,416(gp) # 13d60 <errno>
   10a24:	fe0784e3          	beqz	a5,10a0c <_close_r+0x28>
   10a28:	01813083          	ld	ra,24(sp)
   10a2c:	01013403          	ld	s0,16(sp)
   10a30:	00f4a023          	sw	a5,0(s1)
   10a34:	00813483          	ld	s1,8(sp)
   10a38:	02010113          	addi	sp,sp,32
   10a3c:	00008067          	ret

0000000000010a40 <_reclaim_reent>:
   10a40:	1801b783          	ld	a5,384(gp) # 13d40 <_impure_ptr>
   10a44:	0ca78e63          	beq	a5,a0,10b20 <_reclaim_reent+0xe0>
   10a48:	06853583          	ld	a1,104(a0)
   10a4c:	fd010113          	addi	sp,sp,-48
   10a50:	00913c23          	sd	s1,24(sp)
   10a54:	02113423          	sd	ra,40(sp)
   10a58:	02813023          	sd	s0,32(sp)
   10a5c:	00050493          	mv	s1,a0
   10a60:	04058863          	beqz	a1,10ab0 <_reclaim_reent+0x70>
   10a64:	01213823          	sd	s2,16(sp)
   10a68:	01313423          	sd	s3,8(sp)
   10a6c:	00000913          	li	s2,0
   10a70:	20000993          	li	s3,512
   10a74:	012587b3          	add	a5,a1,s2
   10a78:	0007b403          	ld	s0,0(a5)
   10a7c:	00040e63          	beqz	s0,10a98 <_reclaim_reent+0x58>
   10a80:	00040593          	mv	a1,s0
   10a84:	00043403          	ld	s0,0(s0)
   10a88:	00048513          	mv	a0,s1
   10a8c:	5b0000ef          	jal	1103c <_free_r>
   10a90:	fe0418e3          	bnez	s0,10a80 <_reclaim_reent+0x40>
   10a94:	0684b583          	ld	a1,104(s1)
   10a98:	00890913          	addi	s2,s2,8
   10a9c:	fd391ce3          	bne	s2,s3,10a74 <_reclaim_reent+0x34>
   10aa0:	00048513          	mv	a0,s1
   10aa4:	598000ef          	jal	1103c <_free_r>
   10aa8:	01013903          	ld	s2,16(sp)
   10aac:	00813983          	ld	s3,8(sp)
   10ab0:	0504b583          	ld	a1,80(s1)
   10ab4:	00058663          	beqz	a1,10ac0 <_reclaim_reent+0x80>
   10ab8:	00048513          	mv	a0,s1
   10abc:	580000ef          	jal	1103c <_free_r>
   10ac0:	0604b403          	ld	s0,96(s1)
   10ac4:	00040c63          	beqz	s0,10adc <_reclaim_reent+0x9c>
   10ac8:	00040593          	mv	a1,s0
   10acc:	00043403          	ld	s0,0(s0)
   10ad0:	00048513          	mv	a0,s1
   10ad4:	568000ef          	jal	1103c <_free_r>
   10ad8:	fe0418e3          	bnez	s0,10ac8 <_reclaim_reent+0x88>
   10adc:	0784b583          	ld	a1,120(s1)
   10ae0:	00058663          	beqz	a1,10aec <_reclaim_reent+0xac>
   10ae4:	00048513          	mv	a0,s1
   10ae8:	554000ef          	jal	1103c <_free_r>
   10aec:	0484b783          	ld	a5,72(s1)
   10af0:	00078e63          	beqz	a5,10b0c <_reclaim_reent+0xcc>
   10af4:	02013403          	ld	s0,32(sp)
   10af8:	02813083          	ld	ra,40(sp)
   10afc:	00048513          	mv	a0,s1
   10b00:	01813483          	ld	s1,24(sp)
   10b04:	03010113          	addi	sp,sp,48
   10b08:	00078067          	jr	a5
   10b0c:	02813083          	ld	ra,40(sp)
   10b10:	02013403          	ld	s0,32(sp)
   10b14:	01813483          	ld	s1,24(sp)
   10b18:	03010113          	addi	sp,sp,48
   10b1c:	00008067          	ret
   10b20:	00008067          	ret

0000000000010b24 <_lseek_r>:
   10b24:	fe010113          	addi	sp,sp,-32
   10b28:	00058793          	mv	a5,a1
   10b2c:	00813823          	sd	s0,16(sp)
   10b30:	00913423          	sd	s1,8(sp)
   10b34:	00060593          	mv	a1,a2
   10b38:	00050493          	mv	s1,a0
   10b3c:	00068613          	mv	a2,a3
   10b40:	00078513          	mv	a0,a5
   10b44:	00113c23          	sd	ra,24(sp)
   10b48:	1a01a023          	sw	zero,416(gp) # 13d60 <errno>
   10b4c:	70c010ef          	jal	12258 <_lseek>
   10b50:	fff00793          	li	a5,-1
   10b54:	00f50c63          	beq	a0,a5,10b6c <_lseek_r+0x48>
   10b58:	01813083          	ld	ra,24(sp)
   10b5c:	01013403          	ld	s0,16(sp)
   10b60:	00813483          	ld	s1,8(sp)
   10b64:	02010113          	addi	sp,sp,32
   10b68:	00008067          	ret
   10b6c:	1a01a783          	lw	a5,416(gp) # 13d60 <errno>
   10b70:	fe0784e3          	beqz	a5,10b58 <_lseek_r+0x34>
   10b74:	01813083          	ld	ra,24(sp)
   10b78:	01013403          	ld	s0,16(sp)
   10b7c:	00f4a023          	sw	a5,0(s1)
   10b80:	00813483          	ld	s1,8(sp)
   10b84:	02010113          	addi	sp,sp,32
   10b88:	00008067          	ret

0000000000010b8c <_read_r>:
   10b8c:	fe010113          	addi	sp,sp,-32
   10b90:	00058793          	mv	a5,a1
   10b94:	00813823          	sd	s0,16(sp)
   10b98:	00913423          	sd	s1,8(sp)
   10b9c:	00060593          	mv	a1,a2
   10ba0:	00050493          	mv	s1,a0
   10ba4:	00068613          	mv	a2,a3
   10ba8:	00078513          	mv	a0,a5
   10bac:	00113c23          	sd	ra,24(sp)
   10bb0:	1a01a023          	sw	zero,416(gp) # 13d60 <errno>
   10bb4:	6e4010ef          	jal	12298 <_read>
   10bb8:	fff00793          	li	a5,-1
   10bbc:	00f50c63          	beq	a0,a5,10bd4 <_read_r+0x48>
   10bc0:	01813083          	ld	ra,24(sp)
   10bc4:	01013403          	ld	s0,16(sp)
   10bc8:	00813483          	ld	s1,8(sp)
   10bcc:	02010113          	addi	sp,sp,32
   10bd0:	00008067          	ret
   10bd4:	1a01a783          	lw	a5,416(gp) # 13d60 <errno>
   10bd8:	fe0784e3          	beqz	a5,10bc0 <_read_r+0x34>
   10bdc:	01813083          	ld	ra,24(sp)
   10be0:	01013403          	ld	s0,16(sp)
   10be4:	00f4a023          	sw	a5,0(s1)
   10be8:	00813483          	ld	s1,8(sp)
   10bec:	02010113          	addi	sp,sp,32
   10bf0:	00008067          	ret

0000000000010bf4 <_write_r>:
   10bf4:	fe010113          	addi	sp,sp,-32
   10bf8:	00058793          	mv	a5,a1
   10bfc:	00813823          	sd	s0,16(sp)
   10c00:	00913423          	sd	s1,8(sp)
   10c04:	00060593          	mv	a1,a2
   10c08:	00050493          	mv	s1,a0
   10c0c:	00068613          	mv	a2,a3
   10c10:	00078513          	mv	a0,a5
   10c14:	00113c23          	sd	ra,24(sp)
   10c18:	1a01a023          	sw	zero,416(gp) # 13d60 <errno>
   10c1c:	734010ef          	jal	12350 <_write>
   10c20:	fff00793          	li	a5,-1
   10c24:	00f50c63          	beq	a0,a5,10c3c <_write_r+0x48>
   10c28:	01813083          	ld	ra,24(sp)
   10c2c:	01013403          	ld	s0,16(sp)
   10c30:	00813483          	ld	s1,8(sp)
   10c34:	02010113          	addi	sp,sp,32
   10c38:	00008067          	ret
   10c3c:	1a01a783          	lw	a5,416(gp) # 13d60 <errno>
   10c40:	fe0784e3          	beqz	a5,10c28 <_write_r+0x34>
   10c44:	01813083          	ld	ra,24(sp)
   10c48:	01013403          	ld	s0,16(sp)
   10c4c:	00f4a023          	sw	a5,0(s1)
   10c50:	00813483          	ld	s1,8(sp)
   10c54:	02010113          	addi	sp,sp,32
   10c58:	00008067          	ret

0000000000010c5c <__libc_init_array>:
   10c5c:	fe010113          	addi	sp,sp,-32
   10c60:	00813823          	sd	s0,16(sp)
   10c64:	01213023          	sd	s2,0(sp)
   10c68:	00013437          	lui	s0,0x13
   10c6c:	00013937          	lui	s2,0x13
   10c70:	00113c23          	sd	ra,24(sp)
   10c74:	00913423          	sd	s1,8(sp)
   10c78:	39c90913          	addi	s2,s2,924 # 1339c <__preinit_array_end>
   10c7c:	39c40413          	addi	s0,s0,924 # 1339c <__preinit_array_end>
   10c80:	02890263          	beq	s2,s0,10ca4 <__libc_init_array+0x48>
   10c84:	40890933          	sub	s2,s2,s0
   10c88:	40395913          	srai	s2,s2,0x3
   10c8c:	00000493          	li	s1,0
   10c90:	00043783          	ld	a5,0(s0)
   10c94:	00148493          	addi	s1,s1,1
   10c98:	00840413          	addi	s0,s0,8
   10c9c:	000780e7          	jalr	a5
   10ca0:	ff24e8e3          	bltu	s1,s2,10c90 <__libc_init_array+0x34>
   10ca4:	00013937          	lui	s2,0x13
   10ca8:	00013437          	lui	s0,0x13
   10cac:	3b090913          	addi	s2,s2,944 # 133b0 <__do_global_dtors_aux_fini_array_entry>
   10cb0:	3a040413          	addi	s0,s0,928 # 133a0 <__init_array_start>
   10cb4:	02890263          	beq	s2,s0,10cd8 <__libc_init_array+0x7c>
   10cb8:	40890933          	sub	s2,s2,s0
   10cbc:	40395913          	srai	s2,s2,0x3
   10cc0:	00000493          	li	s1,0
   10cc4:	00043783          	ld	a5,0(s0)
   10cc8:	00148493          	addi	s1,s1,1
   10ccc:	00840413          	addi	s0,s0,8
   10cd0:	000780e7          	jalr	a5
   10cd4:	ff24e8e3          	bltu	s1,s2,10cc4 <__libc_init_array+0x68>
   10cd8:	01813083          	ld	ra,24(sp)
   10cdc:	01013403          	ld	s0,16(sp)
   10ce0:	00813483          	ld	s1,8(sp)
   10ce4:	00013903          	ld	s2,0(sp)
   10ce8:	02010113          	addi	sp,sp,32
   10cec:	00008067          	ret

0000000000010cf0 <memset>:
   10cf0:	00f00313          	li	t1,15
   10cf4:	00050713          	mv	a4,a0
   10cf8:	02c37a63          	bgeu	t1,a2,10d2c <memset+0x3c>
   10cfc:	00f77793          	andi	a5,a4,15
   10d00:	0a079063          	bnez	a5,10da0 <memset+0xb0>
   10d04:	06059e63          	bnez	a1,10d80 <memset+0x90>
   10d08:	ff067693          	andi	a3,a2,-16
   10d0c:	00f67613          	andi	a2,a2,15
   10d10:	00e686b3          	add	a3,a3,a4
   10d14:	00b73023          	sd	a1,0(a4)
   10d18:	00b73423          	sd	a1,8(a4)
   10d1c:	01070713          	addi	a4,a4,16
   10d20:	fed76ae3          	bltu	a4,a3,10d14 <memset+0x24>
   10d24:	00061463          	bnez	a2,10d2c <memset+0x3c>
   10d28:	00008067          	ret
   10d2c:	40c306b3          	sub	a3,t1,a2
   10d30:	00269693          	slli	a3,a3,0x2
   10d34:	00000297          	auipc	t0,0x0
   10d38:	005686b3          	add	a3,a3,t0
   10d3c:	00c68067          	jr	12(a3)
   10d40:	00b70723          	sb	a1,14(a4)
   10d44:	00b706a3          	sb	a1,13(a4)
   10d48:	00b70623          	sb	a1,12(a4)
   10d4c:	00b705a3          	sb	a1,11(a4)
   10d50:	00b70523          	sb	a1,10(a4)
   10d54:	00b704a3          	sb	a1,9(a4)
   10d58:	00b70423          	sb	a1,8(a4)
   10d5c:	00b703a3          	sb	a1,7(a4)
   10d60:	00b70323          	sb	a1,6(a4)
   10d64:	00b702a3          	sb	a1,5(a4)
   10d68:	00b70223          	sb	a1,4(a4)
   10d6c:	00b701a3          	sb	a1,3(a4)
   10d70:	00b70123          	sb	a1,2(a4)
   10d74:	00b700a3          	sb	a1,1(a4)
   10d78:	00b70023          	sb	a1,0(a4)
   10d7c:	00008067          	ret
   10d80:	0ff5f593          	zext.b	a1,a1
   10d84:	00859693          	slli	a3,a1,0x8
   10d88:	00d5e5b3          	or	a1,a1,a3
   10d8c:	01059693          	slli	a3,a1,0x10
   10d90:	00d5e5b3          	or	a1,a1,a3
   10d94:	02059693          	slli	a3,a1,0x20
   10d98:	00d5e5b3          	or	a1,a1,a3
   10d9c:	f6dff06f          	j	10d08 <memset+0x18>
   10da0:	00279693          	slli	a3,a5,0x2
   10da4:	00000297          	auipc	t0,0x0
   10da8:	005686b3          	add	a3,a3,t0
   10dac:	00008293          	mv	t0,ra
   10db0:	f98680e7          	jalr	-104(a3)
   10db4:	00028093          	mv	ra,t0
   10db8:	ff078793          	addi	a5,a5,-16
   10dbc:	40f70733          	sub	a4,a4,a5
   10dc0:	00f60633          	add	a2,a2,a5
   10dc4:	f6c374e3          	bgeu	t1,a2,10d2c <memset+0x3c>
   10dc8:	f3dff06f          	j	10d04 <memset+0x14>

0000000000010dcc <__call_exitprocs>:
   10dcc:	fb010113          	addi	sp,sp,-80
   10dd0:	03413023          	sd	s4,32(sp)
   10dd4:	03213823          	sd	s2,48(sp)
   10dd8:	1a81b903          	ld	s2,424(gp) # 13d68 <__atexit>
   10ddc:	04113423          	sd	ra,72(sp)
   10de0:	06090e63          	beqz	s2,10e5c <__call_exitprocs+0x90>
   10de4:	03313423          	sd	s3,40(sp)
   10de8:	01513c23          	sd	s5,24(sp)
   10dec:	01613823          	sd	s6,16(sp)
   10df0:	01713423          	sd	s7,8(sp)
   10df4:	04813023          	sd	s0,64(sp)
   10df8:	02913c23          	sd	s1,56(sp)
   10dfc:	01813023          	sd	s8,0(sp)
   10e00:	00050b13          	mv	s6,a0
   10e04:	00058b93          	mv	s7,a1
   10e08:	fff00993          	li	s3,-1
   10e0c:	00100a93          	li	s5,1
   10e10:	00892403          	lw	s0,8(s2)
   10e14:	fff4041b          	addiw	s0,s0,-1
   10e18:	02044463          	bltz	s0,10e40 <__call_exitprocs+0x74>
   10e1c:	01090493          	addi	s1,s2,16
   10e20:	00341793          	slli	a5,s0,0x3
   10e24:	00f484b3          	add	s1,s1,a5
   10e28:	040b8463          	beqz	s7,10e70 <__call_exitprocs+0xa4>
   10e2c:	2004b783          	ld	a5,512(s1)
   10e30:	05778063          	beq	a5,s7,10e70 <__call_exitprocs+0xa4>
   10e34:	fff4041b          	addiw	s0,s0,-1
   10e38:	ff848493          	addi	s1,s1,-8
   10e3c:	ff3418e3          	bne	s0,s3,10e2c <__call_exitprocs+0x60>
   10e40:	04013403          	ld	s0,64(sp)
   10e44:	03813483          	ld	s1,56(sp)
   10e48:	02813983          	ld	s3,40(sp)
   10e4c:	01813a83          	ld	s5,24(sp)
   10e50:	01013b03          	ld	s6,16(sp)
   10e54:	00813b83          	ld	s7,8(sp)
   10e58:	00013c03          	ld	s8,0(sp)
   10e5c:	04813083          	ld	ra,72(sp)
   10e60:	03013903          	ld	s2,48(sp)
   10e64:	02013a03          	ld	s4,32(sp)
   10e68:	05010113          	addi	sp,sp,80
   10e6c:	00008067          	ret
   10e70:	00892783          	lw	a5,8(s2)
   10e74:	0004b683          	ld	a3,0(s1)
   10e78:	fff7879b          	addiw	a5,a5,-1
   10e7c:	06878a63          	beq	a5,s0,10ef0 <__call_exitprocs+0x124>
   10e80:	0004b023          	sd	zero,0(s1)
   10e84:	02068663          	beqz	a3,10eb0 <__call_exitprocs+0xe4>
   10e88:	31092783          	lw	a5,784(s2)
   10e8c:	008a973b          	sllw	a4,s5,s0
   10e90:	00892c03          	lw	s8,8(s2)
   10e94:	00e7f7b3          	and	a5,a5,a4
   10e98:	02079463          	bnez	a5,10ec0 <__call_exitprocs+0xf4>
   10e9c:	000680e7          	jalr	a3
   10ea0:	00892703          	lw	a4,8(s2)
   10ea4:	1a81b783          	ld	a5,424(gp) # 13d68 <__atexit>
   10ea8:	03871e63          	bne	a4,s8,10ee4 <__call_exitprocs+0x118>
   10eac:	03279c63          	bne	a5,s2,10ee4 <__call_exitprocs+0x118>
   10eb0:	fff4041b          	addiw	s0,s0,-1
   10eb4:	ff848493          	addi	s1,s1,-8
   10eb8:	f73418e3          	bne	s0,s3,10e28 <__call_exitprocs+0x5c>
   10ebc:	f85ff06f          	j	10e40 <__call_exitprocs+0x74>
   10ec0:	31492783          	lw	a5,788(s2)
   10ec4:	1004b583          	ld	a1,256(s1)
   10ec8:	00f77733          	and	a4,a4,a5
   10ecc:	02071663          	bnez	a4,10ef8 <__call_exitprocs+0x12c>
   10ed0:	000b0513          	mv	a0,s6
   10ed4:	000680e7          	jalr	a3
   10ed8:	00892703          	lw	a4,8(s2)
   10edc:	1a81b783          	ld	a5,424(gp) # 13d68 <__atexit>
   10ee0:	fd8706e3          	beq	a4,s8,10eac <__call_exitprocs+0xe0>
   10ee4:	f4078ee3          	beqz	a5,10e40 <__call_exitprocs+0x74>
   10ee8:	00078913          	mv	s2,a5
   10eec:	f25ff06f          	j	10e10 <__call_exitprocs+0x44>
   10ef0:	00892423          	sw	s0,8(s2)
   10ef4:	f91ff06f          	j	10e84 <__call_exitprocs+0xb8>
   10ef8:	00058513          	mv	a0,a1
   10efc:	000680e7          	jalr	a3
   10f00:	fa1ff06f          	j	10ea0 <__call_exitprocs+0xd4>

0000000000010f04 <atexit>:
   10f04:	00050593          	mv	a1,a0
   10f08:	00000693          	li	a3,0
   10f0c:	00000613          	li	a2,0
   10f10:	00000513          	li	a0,0
   10f14:	2340106f          	j	12148 <__register_exitproc>

0000000000010f18 <_malloc_trim_r>:
   10f18:	fd010113          	addi	sp,sp,-48
   10f1c:	01213823          	sd	s2,16(sp)
   10f20:	00013937          	lui	s2,0x13
   10f24:	02813023          	sd	s0,32(sp)
   10f28:	00913c23          	sd	s1,24(sp)
   10f2c:	01313423          	sd	s3,8(sp)
   10f30:	00058413          	mv	s0,a1
   10f34:	02113423          	sd	ra,40(sp)
   10f38:	00050993          	mv	s3,a0
   10f3c:	52890913          	addi	s2,s2,1320 # 13528 <__malloc_av_>
   10f40:	4e5000ef          	jal	11c24 <__malloc_lock>
   10f44:	01093783          	ld	a5,16(s2)
   10f48:	00001737          	lui	a4,0x1
   10f4c:	0087b483          	ld	s1,8(a5)
   10f50:	ffc4f493          	andi	s1,s1,-4
   10f54:	7ff48793          	addi	a5,s1,2047
   10f58:	7e078793          	addi	a5,a5,2016
   10f5c:	40878433          	sub	s0,a5,s0
   10f60:	00c45413          	srli	s0,s0,0xc
   10f64:	fff40413          	addi	s0,s0,-1
   10f68:	00c41413          	slli	s0,s0,0xc
   10f6c:	00e44e63          	blt	s0,a4,10f88 <_malloc_trim_r+0x70>
   10f70:	00000593          	li	a1,0
   10f74:	00098513          	mv	a0,s3
   10f78:	118010ef          	jal	12090 <_sbrk_r>
   10f7c:	01093783          	ld	a5,16(s2)
   10f80:	009787b3          	add	a5,a5,s1
   10f84:	02f50663          	beq	a0,a5,10fb0 <_malloc_trim_r+0x98>
   10f88:	00098513          	mv	a0,s3
   10f8c:	49d000ef          	jal	11c28 <__malloc_unlock>
   10f90:	02813083          	ld	ra,40(sp)
   10f94:	02013403          	ld	s0,32(sp)
   10f98:	01813483          	ld	s1,24(sp)
   10f9c:	01013903          	ld	s2,16(sp)
   10fa0:	00813983          	ld	s3,8(sp)
   10fa4:	00000513          	li	a0,0
   10fa8:	03010113          	addi	sp,sp,48
   10fac:	00008067          	ret
   10fb0:	408005b3          	neg	a1,s0
   10fb4:	00098513          	mv	a0,s3
   10fb8:	0d8010ef          	jal	12090 <_sbrk_r>
   10fbc:	fff00793          	li	a5,-1
   10fc0:	04f50463          	beq	a0,a5,11008 <_malloc_trim_r+0xf0>
   10fc4:	01093683          	ld	a3,16(s2)
   10fc8:	4c01a783          	lw	a5,1216(gp) # 14080 <__malloc_current_mallinfo>
   10fcc:	408484b3          	sub	s1,s1,s0
   10fd0:	0014e493          	ori	s1,s1,1
   10fd4:	00098513          	mv	a0,s3
   10fd8:	408787bb          	subw	a5,a5,s0
   10fdc:	0096b423          	sd	s1,8(a3)
   10fe0:	4cf1a023          	sw	a5,1216(gp) # 14080 <__malloc_current_mallinfo>
   10fe4:	445000ef          	jal	11c28 <__malloc_unlock>
   10fe8:	02813083          	ld	ra,40(sp)
   10fec:	02013403          	ld	s0,32(sp)
   10ff0:	01813483          	ld	s1,24(sp)
   10ff4:	01013903          	ld	s2,16(sp)
   10ff8:	00813983          	ld	s3,8(sp)
   10ffc:	00100513          	li	a0,1
   11000:	03010113          	addi	sp,sp,48
   11004:	00008067          	ret
   11008:	00000593          	li	a1,0
   1100c:	00098513          	mv	a0,s3
   11010:	080010ef          	jal	12090 <_sbrk_r>
   11014:	01093703          	ld	a4,16(s2)
   11018:	01f00693          	li	a3,31
   1101c:	40e507b3          	sub	a5,a0,a4
   11020:	f6f6d4e3          	bge	a3,a5,10f88 <_malloc_trim_r+0x70>
   11024:	1881b603          	ld	a2,392(gp) # 13d48 <__malloc_sbrk_base>
   11028:	0017e793          	ori	a5,a5,1
   1102c:	40c50533          	sub	a0,a0,a2
   11030:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11034:	4ca1a023          	sw	a0,1216(gp) # 14080 <__malloc_current_mallinfo>
   11038:	f51ff06f          	j	10f88 <_malloc_trim_r+0x70>

000000000001103c <_free_r>:
   1103c:	12058863          	beqz	a1,1116c <_free_r+0x130>
   11040:	fe010113          	addi	sp,sp,-32
   11044:	00813823          	sd	s0,16(sp)
   11048:	00b13423          	sd	a1,8(sp)
   1104c:	00050413          	mv	s0,a0
   11050:	00113c23          	sd	ra,24(sp)
   11054:	3d1000ef          	jal	11c24 <__malloc_lock>
   11058:	00813583          	ld	a1,8(sp)
   1105c:	00013837          	lui	a6,0x13
   11060:	52880813          	addi	a6,a6,1320 # 13528 <__malloc_av_>
   11064:	ff85b503          	ld	a0,-8(a1)
   11068:	ff058713          	addi	a4,a1,-16
   1106c:	01083883          	ld	a7,16(a6)
   11070:	ffe57793          	andi	a5,a0,-2
   11074:	00f70633          	add	a2,a4,a5
   11078:	00863683          	ld	a3,8(a2)
   1107c:	00157313          	andi	t1,a0,1
   11080:	ffc6f693          	andi	a3,a3,-4
   11084:	18c88e63          	beq	a7,a2,11220 <_free_r+0x1e4>
   11088:	00d63423          	sd	a3,8(a2)
   1108c:	00d608b3          	add	a7,a2,a3
   11090:	0088b883          	ld	a7,8(a7)
   11094:	0018f893          	andi	a7,a7,1
   11098:	08031e63          	bnez	t1,11134 <_free_r+0xf8>
   1109c:	ff05b303          	ld	t1,-16(a1)
   110a0:	000135b7          	lui	a1,0x13
   110a4:	53858593          	addi	a1,a1,1336 # 13538 <__malloc_av_+0x10>
   110a8:	40670733          	sub	a4,a4,t1
   110ac:	01073503          	ld	a0,16(a4)
   110b0:	006787b3          	add	a5,a5,t1
   110b4:	14b50063          	beq	a0,a1,111f4 <_free_r+0x1b8>
   110b8:	01873303          	ld	t1,24(a4)
   110bc:	00653c23          	sd	t1,24(a0)
   110c0:	00a33823          	sd	a0,16(t1) # 10220 <qsort+0x4>
   110c4:	1a088263          	beqz	a7,11268 <_free_r+0x22c>
   110c8:	0017e693          	ori	a3,a5,1
   110cc:	00d73423          	sd	a3,8(a4)
   110d0:	00f63023          	sd	a5,0(a2)
   110d4:	1ff00693          	li	a3,511
   110d8:	0af6e663          	bltu	a3,a5,11184 <_free_r+0x148>
   110dc:	0037d793          	srli	a5,a5,0x3
   110e0:	00179693          	slli	a3,a5,0x1
   110e4:	0026869b          	addiw	a3,a3,2
   110e8:	00369693          	slli	a3,a3,0x3
   110ec:	00883503          	ld	a0,8(a6)
   110f0:	00d806b3          	add	a3,a6,a3
   110f4:	0006b583          	ld	a1,0(a3)
   110f8:	4027d61b          	sraiw	a2,a5,0x2
   110fc:	00100793          	li	a5,1
   11100:	00c797b3          	sll	a5,a5,a2
   11104:	00a7e7b3          	or	a5,a5,a0
   11108:	ff068613          	addi	a2,a3,-16
   1110c:	00b73823          	sd	a1,16(a4)
   11110:	00c73c23          	sd	a2,24(a4)
   11114:	00f83423          	sd	a5,8(a6)
   11118:	00e6b023          	sd	a4,0(a3)
   1111c:	00e5bc23          	sd	a4,24(a1)
   11120:	00040513          	mv	a0,s0
   11124:	01013403          	ld	s0,16(sp)
   11128:	01813083          	ld	ra,24(sp)
   1112c:	02010113          	addi	sp,sp,32
   11130:	2f90006f          	j	11c28 <__malloc_unlock>
   11134:	02089e63          	bnez	a7,11170 <_free_r+0x134>
   11138:	000135b7          	lui	a1,0x13
   1113c:	00d787b3          	add	a5,a5,a3
   11140:	53858593          	addi	a1,a1,1336 # 13538 <__malloc_av_+0x10>
   11144:	01063683          	ld	a3,16(a2)
   11148:	0017e893          	ori	a7,a5,1
   1114c:	00f70533          	add	a0,a4,a5
   11150:	16b68663          	beq	a3,a1,112bc <_free_r+0x280>
   11154:	01863603          	ld	a2,24(a2)
   11158:	00c6bc23          	sd	a2,24(a3)
   1115c:	00d63823          	sd	a3,16(a2)
   11160:	01173423          	sd	a7,8(a4)
   11164:	00f53023          	sd	a5,0(a0)
   11168:	f6dff06f          	j	110d4 <_free_r+0x98>
   1116c:	00008067          	ret
   11170:	00156513          	ori	a0,a0,1
   11174:	fea5bc23          	sd	a0,-8(a1)
   11178:	00f63023          	sd	a5,0(a2)
   1117c:	1ff00693          	li	a3,511
   11180:	f4f6fee3          	bgeu	a3,a5,110dc <_free_r+0xa0>
   11184:	0097d693          	srli	a3,a5,0x9
   11188:	00400613          	li	a2,4
   1118c:	0ed66263          	bltu	a2,a3,11270 <_free_r+0x234>
   11190:	0067d693          	srli	a3,a5,0x6
   11194:	00169593          	slli	a1,a3,0x1
   11198:	0725859b          	addiw	a1,a1,114
   1119c:	00359593          	slli	a1,a1,0x3
   111a0:	0386861b          	addiw	a2,a3,56
   111a4:	00b805b3          	add	a1,a6,a1
   111a8:	0005b683          	ld	a3,0(a1)
   111ac:	ff058593          	addi	a1,a1,-16
   111b0:	00d59863          	bne	a1,a3,111c0 <_free_r+0x184>
   111b4:	1240006f          	j	112d8 <_free_r+0x29c>
   111b8:	0106b683          	ld	a3,16(a3)
   111bc:	00d58863          	beq	a1,a3,111cc <_free_r+0x190>
   111c0:	0086b603          	ld	a2,8(a3)
   111c4:	ffc67613          	andi	a2,a2,-4
   111c8:	fec7e8e3          	bltu	a5,a2,111b8 <_free_r+0x17c>
   111cc:	0186b583          	ld	a1,24(a3)
   111d0:	00b73c23          	sd	a1,24(a4)
   111d4:	00d73823          	sd	a3,16(a4)
   111d8:	00040513          	mv	a0,s0
   111dc:	01013403          	ld	s0,16(sp)
   111e0:	01813083          	ld	ra,24(sp)
   111e4:	00e5b823          	sd	a4,16(a1)
   111e8:	00e6bc23          	sd	a4,24(a3)
   111ec:	02010113          	addi	sp,sp,32
   111f0:	2390006f          	j	11c28 <__malloc_unlock>
   111f4:	0a089263          	bnez	a7,11298 <_free_r+0x25c>
   111f8:	01863583          	ld	a1,24(a2)
   111fc:	01063603          	ld	a2,16(a2)
   11200:	00f686b3          	add	a3,a3,a5
   11204:	0016e793          	ori	a5,a3,1
   11208:	00b63c23          	sd	a1,24(a2)
   1120c:	00c5b823          	sd	a2,16(a1)
   11210:	00f73423          	sd	a5,8(a4)
   11214:	00d70733          	add	a4,a4,a3
   11218:	00d73023          	sd	a3,0(a4)
   1121c:	f05ff06f          	j	11120 <_free_r+0xe4>
   11220:	00d786b3          	add	a3,a5,a3
   11224:	02031063          	bnez	t1,11244 <_free_r+0x208>
   11228:	ff05b783          	ld	a5,-16(a1)
   1122c:	40f70733          	sub	a4,a4,a5
   11230:	01073603          	ld	a2,16(a4)
   11234:	00f686b3          	add	a3,a3,a5
   11238:	01873783          	ld	a5,24(a4)
   1123c:	00f63c23          	sd	a5,24(a2)
   11240:	00c7b823          	sd	a2,16(a5)
   11244:	0016e613          	ori	a2,a3,1
   11248:	1901b783          	ld	a5,400(gp) # 13d50 <__malloc_trim_threshold>
   1124c:	00c73423          	sd	a2,8(a4)
   11250:	00e83823          	sd	a4,16(a6)
   11254:	ecf6e6e3          	bltu	a3,a5,11120 <_free_r+0xe4>
   11258:	1c01b583          	ld	a1,448(gp) # 13d80 <__malloc_top_pad>
   1125c:	00040513          	mv	a0,s0
   11260:	cb9ff0ef          	jal	10f18 <_malloc_trim_r>
   11264:	ebdff06f          	j	11120 <_free_r+0xe4>
   11268:	00d787b3          	add	a5,a5,a3
   1126c:	ed9ff06f          	j	11144 <_free_r+0x108>
   11270:	01400613          	li	a2,20
   11274:	02d67a63          	bgeu	a2,a3,112a8 <_free_r+0x26c>
   11278:	05400613          	li	a2,84
   1127c:	06d66c63          	bltu	a2,a3,112f4 <_free_r+0x2b8>
   11280:	00c7d693          	srli	a3,a5,0xc
   11284:	00169593          	slli	a1,a3,0x1
   11288:	0de5859b          	addiw	a1,a1,222
   1128c:	00359593          	slli	a1,a1,0x3
   11290:	06e6861b          	addiw	a2,a3,110
   11294:	f11ff06f          	j	111a4 <_free_r+0x168>
   11298:	0017e693          	ori	a3,a5,1
   1129c:	00d73423          	sd	a3,8(a4)
   112a0:	00f63023          	sd	a5,0(a2)
   112a4:	e7dff06f          	j	11120 <_free_r+0xe4>
   112a8:	00169593          	slli	a1,a3,0x1
   112ac:	0b85859b          	addiw	a1,a1,184
   112b0:	00359593          	slli	a1,a1,0x3
   112b4:	05b6861b          	addiw	a2,a3,91
   112b8:	eedff06f          	j	111a4 <_free_r+0x168>
   112bc:	02e83423          	sd	a4,40(a6)
   112c0:	02e83023          	sd	a4,32(a6)
   112c4:	00b73c23          	sd	a1,24(a4)
   112c8:	00b73823          	sd	a1,16(a4)
   112cc:	01173423          	sd	a7,8(a4)
   112d0:	00f53023          	sd	a5,0(a0)
   112d4:	e4dff06f          	j	11120 <_free_r+0xe4>
   112d8:	00883503          	ld	a0,8(a6)
   112dc:	4026561b          	sraiw	a2,a2,0x2
   112e0:	00100793          	li	a5,1
   112e4:	00c797b3          	sll	a5,a5,a2
   112e8:	00a7e7b3          	or	a5,a5,a0
   112ec:	00f83423          	sd	a5,8(a6)
   112f0:	ee1ff06f          	j	111d0 <_free_r+0x194>
   112f4:	15400613          	li	a2,340
   112f8:	00d66e63          	bltu	a2,a3,11314 <_free_r+0x2d8>
   112fc:	00f7d693          	srli	a3,a5,0xf
   11300:	00169593          	slli	a1,a3,0x1
   11304:	0f05859b          	addiw	a1,a1,240
   11308:	00359593          	slli	a1,a1,0x3
   1130c:	0776861b          	addiw	a2,a3,119
   11310:	e95ff06f          	j	111a4 <_free_r+0x168>
   11314:	55400613          	li	a2,1364
   11318:	00d66e63          	bltu	a2,a3,11334 <_free_r+0x2f8>
   1131c:	0127d693          	srli	a3,a5,0x12
   11320:	00169593          	slli	a1,a3,0x1
   11324:	0fa5859b          	addiw	a1,a1,250
   11328:	00359593          	slli	a1,a1,0x3
   1132c:	07c6861b          	addiw	a2,a3,124
   11330:	e75ff06f          	j	111a4 <_free_r+0x168>
   11334:	7f000593          	li	a1,2032
   11338:	07e00613          	li	a2,126
   1133c:	e69ff06f          	j	111a4 <_free_r+0x168>

0000000000011340 <_malloc_r>:
   11340:	fa010113          	addi	sp,sp,-96
   11344:	04813823          	sd	s0,80(sp)
   11348:	04113c23          	sd	ra,88(sp)
   1134c:	01758713          	addi	a4,a1,23
   11350:	02e00793          	li	a5,46
   11354:	00050413          	mv	s0,a0
   11358:	08e7ee63          	bltu	a5,a4,113f4 <_malloc_r+0xb4>
   1135c:	02000713          	li	a4,32
   11360:	06b76c63          	bltu	a4,a1,113d8 <_malloc_r+0x98>
   11364:	0c1000ef          	jal	11c24 <__malloc_lock>
   11368:	02000713          	li	a4,32
   1136c:	05000693          	li	a3,80
   11370:	00400893          	li	a7,4
   11374:	00013837          	lui	a6,0x13
   11378:	52880813          	addi	a6,a6,1320 # 13528 <__malloc_av_>
   1137c:	00d806b3          	add	a3,a6,a3
   11380:	0086b783          	ld	a5,8(a3)
   11384:	ff068613          	addi	a2,a3,-16
   11388:	48c78063          	beq	a5,a2,11808 <_malloc_r+0x4c8>
   1138c:	0087b703          	ld	a4,8(a5)
   11390:	0187b603          	ld	a2,24(a5)
   11394:	0107b583          	ld	a1,16(a5)
   11398:	ffc77713          	andi	a4,a4,-4
   1139c:	00e78733          	add	a4,a5,a4
   113a0:	00873683          	ld	a3,8(a4)
   113a4:	00c5bc23          	sd	a2,24(a1)
   113a8:	00b63823          	sd	a1,16(a2)
   113ac:	0016e693          	ori	a3,a3,1
   113b0:	00040513          	mv	a0,s0
   113b4:	00d73423          	sd	a3,8(a4)
   113b8:	00f13423          	sd	a5,8(sp)
   113bc:	06d000ef          	jal	11c28 <__malloc_unlock>
   113c0:	00813783          	ld	a5,8(sp)
   113c4:	05813083          	ld	ra,88(sp)
   113c8:	05013403          	ld	s0,80(sp)
   113cc:	01078513          	addi	a0,a5,16
   113d0:	06010113          	addi	sp,sp,96
   113d4:	00008067          	ret
   113d8:	00c00793          	li	a5,12
   113dc:	00f42023          	sw	a5,0(s0)
   113e0:	00000513          	li	a0,0
   113e4:	05813083          	ld	ra,88(sp)
   113e8:	05013403          	ld	s0,80(sp)
   113ec:	06010113          	addi	sp,sp,96
   113f0:	00008067          	ret
   113f4:	00100793          	li	a5,1
   113f8:	ff077713          	andi	a4,a4,-16
   113fc:	01f79793          	slli	a5,a5,0x1f
   11400:	fcf77ce3          	bgeu	a4,a5,113d8 <_malloc_r+0x98>
   11404:	fcb76ae3          	bltu	a4,a1,113d8 <_malloc_r+0x98>
   11408:	00e13423          	sd	a4,8(sp)
   1140c:	019000ef          	jal	11c24 <__malloc_lock>
   11410:	00813703          	ld	a4,8(sp)
   11414:	1f700793          	li	a5,503
   11418:	4ee7fa63          	bgeu	a5,a4,1190c <_malloc_r+0x5cc>
   1141c:	00975793          	srli	a5,a4,0x9
   11420:	18078a63          	beqz	a5,115b4 <_malloc_r+0x274>
   11424:	00400693          	li	a3,4
   11428:	44f6ea63          	bltu	a3,a5,1187c <_malloc_r+0x53c>
   1142c:	00675793          	srli	a5,a4,0x6
   11430:	0397889b          	addiw	a7,a5,57
   11434:	0018951b          	slliw	a0,a7,0x1
   11438:	03878e1b          	addiw	t3,a5,56
   1143c:	00351513          	slli	a0,a0,0x3
   11440:	00013837          	lui	a6,0x13
   11444:	52880813          	addi	a6,a6,1320 # 13528 <__malloc_av_>
   11448:	00a80533          	add	a0,a6,a0
   1144c:	00853783          	ld	a5,8(a0)
   11450:	ff050513          	addi	a0,a0,-16
   11454:	02f50863          	beq	a0,a5,11484 <_malloc_r+0x144>
   11458:	01f00313          	li	t1,31
   1145c:	0140006f          	j	11470 <_malloc_r+0x130>
   11460:	0187b583          	ld	a1,24(a5)
   11464:	36065263          	bgez	a2,117c8 <_malloc_r+0x488>
   11468:	00b50e63          	beq	a0,a1,11484 <_malloc_r+0x144>
   1146c:	00058793          	mv	a5,a1
   11470:	0087b683          	ld	a3,8(a5)
   11474:	ffc6f693          	andi	a3,a3,-4
   11478:	40e68633          	sub	a2,a3,a4
   1147c:	fec352e3          	bge	t1,a2,11460 <_malloc_r+0x120>
   11480:	000e0893          	mv	a7,t3
   11484:	02083783          	ld	a5,32(a6)
   11488:	00013e37          	lui	t3,0x13
   1148c:	538e0e13          	addi	t3,t3,1336 # 13538 <__malloc_av_+0x10>
   11490:	2fc78a63          	beq	a5,t3,11784 <_malloc_r+0x444>
   11494:	0087b303          	ld	t1,8(a5)
   11498:	01f00613          	li	a2,31
   1149c:	ffc37313          	andi	t1,t1,-4
   114a0:	40e306b3          	sub	a3,t1,a4
   114a4:	4ad64463          	blt	a2,a3,1194c <_malloc_r+0x60c>
   114a8:	03c83423          	sd	t3,40(a6)
   114ac:	03c83023          	sd	t3,32(a6)
   114b0:	4606da63          	bgez	a3,11924 <_malloc_r+0x5e4>
   114b4:	1ff00693          	li	a3,511
   114b8:	00883583          	ld	a1,8(a6)
   114bc:	3466ee63          	bltu	a3,t1,11818 <_malloc_r+0x4d8>
   114c0:	00335313          	srli	t1,t1,0x3
   114c4:	00131693          	slli	a3,t1,0x1
   114c8:	0026869b          	addiw	a3,a3,2
   114cc:	00369693          	slli	a3,a3,0x3
   114d0:	00d806b3          	add	a3,a6,a3
   114d4:	0006b503          	ld	a0,0(a3)
   114d8:	4023531b          	sraiw	t1,t1,0x2
   114dc:	00100613          	li	a2,1
   114e0:	00661633          	sll	a2,a2,t1
   114e4:	00c5e5b3          	or	a1,a1,a2
   114e8:	ff068613          	addi	a2,a3,-16
   114ec:	00a7b823          	sd	a0,16(a5)
   114f0:	00c7bc23          	sd	a2,24(a5)
   114f4:	00b83423          	sd	a1,8(a6)
   114f8:	00f6b023          	sd	a5,0(a3)
   114fc:	00f53c23          	sd	a5,24(a0)
   11500:	4028d79b          	sraiw	a5,a7,0x2
   11504:	00100513          	li	a0,1
   11508:	00f51533          	sll	a0,a0,a5
   1150c:	0aa5ec63          	bltu	a1,a0,115c4 <_malloc_r+0x284>
   11510:	00b577b3          	and	a5,a0,a1
   11514:	02079463          	bnez	a5,1153c <_malloc_r+0x1fc>
   11518:	00151513          	slli	a0,a0,0x1
   1151c:	ffc8f893          	andi	a7,a7,-4
   11520:	00b577b3          	and	a5,a0,a1
   11524:	0048889b          	addiw	a7,a7,4
   11528:	00079a63          	bnez	a5,1153c <_malloc_r+0x1fc>
   1152c:	00151513          	slli	a0,a0,0x1
   11530:	00b577b3          	and	a5,a0,a1
   11534:	0048889b          	addiw	a7,a7,4
   11538:	fe078ae3          	beqz	a5,1152c <_malloc_r+0x1ec>
   1153c:	01f00e93          	li	t4,31
   11540:	00189f13          	slli	t5,a7,0x1
   11544:	002f0f1b          	addiw	t5,t5,2
   11548:	003f1f13          	slli	t5,t5,0x3
   1154c:	ff0f0f13          	addi	t5,t5,-16
   11550:	01e80f33          	add	t5,a6,t5
   11554:	000f0313          	mv	t1,t5
   11558:	01833683          	ld	a3,24(t1)
   1155c:	00088f93          	mv	t6,a7
   11560:	34d30263          	beq	t1,a3,118a4 <_malloc_r+0x564>
   11564:	0086b603          	ld	a2,8(a3)
   11568:	00068793          	mv	a5,a3
   1156c:	0186b683          	ld	a3,24(a3)
   11570:	ffc67613          	andi	a2,a2,-4
   11574:	40e605b3          	sub	a1,a2,a4
   11578:	34bec263          	blt	t4,a1,118bc <_malloc_r+0x57c>
   1157c:	fe05c2e3          	bltz	a1,11560 <_malloc_r+0x220>
   11580:	00c78633          	add	a2,a5,a2
   11584:	00863703          	ld	a4,8(a2)
   11588:	0107b583          	ld	a1,16(a5)
   1158c:	00040513          	mv	a0,s0
   11590:	00176713          	ori	a4,a4,1
   11594:	00e63423          	sd	a4,8(a2)
   11598:	00d5bc23          	sd	a3,24(a1)
   1159c:	00b6b823          	sd	a1,16(a3)
   115a0:	00f13423          	sd	a5,8(sp)
   115a4:	684000ef          	jal	11c28 <__malloc_unlock>
   115a8:	00813783          	ld	a5,8(sp)
   115ac:	01078513          	addi	a0,a5,16
   115b0:	e35ff06f          	j	113e4 <_malloc_r+0xa4>
   115b4:	40000513          	li	a0,1024
   115b8:	04000893          	li	a7,64
   115bc:	03f00e13          	li	t3,63
   115c0:	e81ff06f          	j	11440 <_malloc_r+0x100>
   115c4:	01083783          	ld	a5,16(a6)
   115c8:	0087b683          	ld	a3,8(a5)
   115cc:	ffc6f893          	andi	a7,a3,-4
   115d0:	40e88633          	sub	a2,a7,a4
   115d4:	00e8e663          	bltu	a7,a4,115e0 <_malloc_r+0x2a0>
   115d8:	02062693          	slti	a3,a2,32
   115dc:	1a068863          	beqz	a3,1178c <_malloc_r+0x44c>
   115e0:	1c01b583          	ld	a1,448(gp) # 13d80 <__malloc_top_pad>
   115e4:	1881b603          	ld	a2,392(gp) # 13d48 <__malloc_sbrk_base>
   115e8:	fff00693          	li	a3,-1
   115ec:	00b705b3          	add	a1,a4,a1
   115f0:	44d60663          	beq	a2,a3,11a3c <_malloc_r+0x6fc>
   115f4:	000016b7          	lui	a3,0x1
   115f8:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   115fc:	00d585b3          	add	a1,a1,a3
   11600:	fffff6b7          	lui	a3,0xfffff
   11604:	00d5f5b3          	and	a1,a1,a3
   11608:	00040513          	mv	a0,s0
   1160c:	03013423          	sd	a6,40(sp)
   11610:	02f13023          	sd	a5,32(sp)
   11614:	00e13c23          	sd	a4,24(sp)
   11618:	01113823          	sd	a7,16(sp)
   1161c:	00b13423          	sd	a1,8(sp)
   11620:	271000ef          	jal	12090 <_sbrk_r>
   11624:	fff00693          	li	a3,-1
   11628:	00813583          	ld	a1,8(sp)
   1162c:	01013883          	ld	a7,16(sp)
   11630:	01813703          	ld	a4,24(sp)
   11634:	02013783          	ld	a5,32(sp)
   11638:	02813803          	ld	a6,40(sp)
   1163c:	00050313          	mv	t1,a0
   11640:	36d50663          	beq	a0,a3,119ac <_malloc_r+0x66c>
   11644:	011786b3          	add	a3,a5,a7
   11648:	36d56063          	bltu	a0,a3,119a8 <_malloc_r+0x668>
   1164c:	4c018e13          	addi	t3,gp,1216 # 14080 <__malloc_current_mallinfo>
   11650:	000e2603          	lw	a2,0(t3)
   11654:	00b6063b          	addw	a2,a2,a1
   11658:	00ce2023          	sw	a2,0(t3)
   1165c:	00060513          	mv	a0,a2
   11660:	4a668c63          	beq	a3,t1,11b18 <_malloc_r+0x7d8>
   11664:	1881bf03          	ld	t5,392(gp) # 13d48 <__malloc_sbrk_base>
   11668:	fff00613          	li	a2,-1
   1166c:	4ccf0463          	beq	t5,a2,11b34 <_malloc_r+0x7f4>
   11670:	40d306b3          	sub	a3,t1,a3
   11674:	00a686bb          	addw	a3,a3,a0
   11678:	00de2023          	sw	a3,0(t3)
   1167c:	00f37e93          	andi	t4,t1,15
   11680:	3c0e8e63          	beqz	t4,11a5c <_malloc_r+0x71c>
   11684:	ff037313          	andi	t1,t1,-16
   11688:	000016b7          	lui	a3,0x1
   1168c:	01030313          	addi	t1,t1,16
   11690:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11694:	00b30633          	add	a2,t1,a1
   11698:	41d685b3          	sub	a1,a3,t4
   1169c:	40c585b3          	sub	a1,a1,a2
   116a0:	03459593          	slli	a1,a1,0x34
   116a4:	0345d593          	srli	a1,a1,0x34
   116a8:	00040513          	mv	a0,s0
   116ac:	05c13023          	sd	t3,64(sp)
   116b0:	03013c23          	sd	a6,56(sp)
   116b4:	02f13823          	sd	a5,48(sp)
   116b8:	02e13423          	sd	a4,40(sp)
   116bc:	03113023          	sd	a7,32(sp)
   116c0:	00613c23          	sd	t1,24(sp)
   116c4:	01d13823          	sd	t4,16(sp)
   116c8:	00c13423          	sd	a2,8(sp)
   116cc:	04b13423          	sd	a1,72(sp)
   116d0:	1c1000ef          	jal	12090 <_sbrk_r>
   116d4:	00050693          	mv	a3,a0
   116d8:	fff00513          	li	a0,-1
   116dc:	00813603          	ld	a2,8(sp)
   116e0:	01013e83          	ld	t4,16(sp)
   116e4:	01813303          	ld	t1,24(sp)
   116e8:	02013883          	ld	a7,32(sp)
   116ec:	02813703          	ld	a4,40(sp)
   116f0:	03013783          	ld	a5,48(sp)
   116f4:	03813803          	ld	a6,56(sp)
   116f8:	04013e03          	ld	t3,64(sp)
   116fc:	48a68663          	beq	a3,a0,11b88 <_malloc_r+0x848>
   11700:	04813583          	ld	a1,72(sp)
   11704:	0005851b          	sext.w	a0,a1
   11708:	000e2603          	lw	a2,0(t3)
   1170c:	406686b3          	sub	a3,a3,t1
   11710:	00b686b3          	add	a3,a3,a1
   11714:	0016e693          	ori	a3,a3,1
   11718:	00683823          	sd	t1,16(a6)
   1171c:	00a6063b          	addw	a2,a2,a0
   11720:	00d33423          	sd	a3,8(t1)
   11724:	00ce2023          	sw	a2,0(t3)
   11728:	03078e63          	beq	a5,a6,11764 <_malloc_r+0x424>
   1172c:	01f00513          	li	a0,31
   11730:	41157663          	bgeu	a0,a7,11b3c <_malloc_r+0x7fc>
   11734:	0087b583          	ld	a1,8(a5)
   11738:	fe888693          	addi	a3,a7,-24
   1173c:	ff06f693          	andi	a3,a3,-16
   11740:	0015f593          	andi	a1,a1,1
   11744:	00d5e5b3          	or	a1,a1,a3
   11748:	00b7b423          	sd	a1,8(a5)
   1174c:	00900893          	li	a7,9
   11750:	00d785b3          	add	a1,a5,a3
   11754:	0115b423          	sd	a7,8(a1)
   11758:	0115b823          	sd	a7,16(a1)
   1175c:	44d56863          	bltu	a0,a3,11bac <_malloc_r+0x86c>
   11760:	00833683          	ld	a3,8(t1)
   11764:	1b81b583          	ld	a1,440(gp) # 13d78 <__malloc_max_sbrked_mem>
   11768:	00c5f463          	bgeu	a1,a2,11770 <_malloc_r+0x430>
   1176c:	1ac1bc23          	sd	a2,440(gp) # 13d78 <__malloc_max_sbrked_mem>
   11770:	1b01b583          	ld	a1,432(gp) # 13d70 <__malloc_max_total_mem>
   11774:	00c5f463          	bgeu	a1,a2,1177c <_malloc_r+0x43c>
   11778:	1ac1b823          	sd	a2,432(gp) # 13d70 <__malloc_max_total_mem>
   1177c:	00030793          	mv	a5,t1
   11780:	2340006f          	j	119b4 <_malloc_r+0x674>
   11784:	00883583          	ld	a1,8(a6)
   11788:	d79ff06f          	j	11500 <_malloc_r+0x1c0>
   1178c:	00176693          	ori	a3,a4,1
   11790:	00d7b423          	sd	a3,8(a5)
   11794:	00e78733          	add	a4,a5,a4
   11798:	00166613          	ori	a2,a2,1
   1179c:	00e83823          	sd	a4,16(a6)
   117a0:	00040513          	mv	a0,s0
   117a4:	00c73423          	sd	a2,8(a4)
   117a8:	00f13423          	sd	a5,8(sp)
   117ac:	47c000ef          	jal	11c28 <__malloc_unlock>
   117b0:	00813783          	ld	a5,8(sp)
   117b4:	05813083          	ld	ra,88(sp)
   117b8:	05013403          	ld	s0,80(sp)
   117bc:	01078513          	addi	a0,a5,16
   117c0:	06010113          	addi	sp,sp,96
   117c4:	00008067          	ret
   117c8:	0107b603          	ld	a2,16(a5)
   117cc:	00d786b3          	add	a3,a5,a3
   117d0:	0086b703          	ld	a4,8(a3)
   117d4:	00b63c23          	sd	a1,24(a2)
   117d8:	00c5b823          	sd	a2,16(a1)
   117dc:	00176713          	ori	a4,a4,1
   117e0:	00040513          	mv	a0,s0
   117e4:	00e6b423          	sd	a4,8(a3)
   117e8:	00f13423          	sd	a5,8(sp)
   117ec:	43c000ef          	jal	11c28 <__malloc_unlock>
   117f0:	00813783          	ld	a5,8(sp)
   117f4:	05813083          	ld	ra,88(sp)
   117f8:	05013403          	ld	s0,80(sp)
   117fc:	01078513          	addi	a0,a5,16
   11800:	06010113          	addi	sp,sp,96
   11804:	00008067          	ret
   11808:	0186b783          	ld	a5,24(a3)
   1180c:	0028889b          	addiw	a7,a7,2
   11810:	c6f68ae3          	beq	a3,a5,11484 <_malloc_r+0x144>
   11814:	b79ff06f          	j	1138c <_malloc_r+0x4c>
   11818:	00935693          	srli	a3,t1,0x9
   1181c:	00400613          	li	a2,4
   11820:	16d67863          	bgeu	a2,a3,11990 <_malloc_r+0x650>
   11824:	01400613          	li	a2,20
   11828:	28d66e63          	bltu	a2,a3,11ac4 <_malloc_r+0x784>
   1182c:	00169513          	slli	a0,a3,0x1
   11830:	0b85051b          	addiw	a0,a0,184
   11834:	00351513          	slli	a0,a0,0x3
   11838:	05b6861b          	addiw	a2,a3,91
   1183c:	00a80533          	add	a0,a6,a0
   11840:	00053683          	ld	a3,0(a0)
   11844:	ff050513          	addi	a0,a0,-16
   11848:	00d51863          	bne	a0,a3,11858 <_malloc_r+0x518>
   1184c:	1f80006f          	j	11a44 <_malloc_r+0x704>
   11850:	0106b683          	ld	a3,16(a3)
   11854:	00d50863          	beq	a0,a3,11864 <_malloc_r+0x524>
   11858:	0086b603          	ld	a2,8(a3)
   1185c:	ffc67613          	andi	a2,a2,-4
   11860:	fec368e3          	bltu	t1,a2,11850 <_malloc_r+0x510>
   11864:	0186b503          	ld	a0,24(a3)
   11868:	00a7bc23          	sd	a0,24(a5)
   1186c:	00d7b823          	sd	a3,16(a5)
   11870:	00f53823          	sd	a5,16(a0)
   11874:	00f6bc23          	sd	a5,24(a3)
   11878:	c89ff06f          	j	11500 <_malloc_r+0x1c0>
   1187c:	01400693          	li	a3,20
   11880:	14f6fa63          	bgeu	a3,a5,119d4 <_malloc_r+0x694>
   11884:	05400693          	li	a3,84
   11888:	24f6ee63          	bltu	a3,a5,11ae4 <_malloc_r+0x7a4>
   1188c:	00c75793          	srli	a5,a4,0xc
   11890:	06f7889b          	addiw	a7,a5,111
   11894:	0018951b          	slliw	a0,a7,0x1
   11898:	06e78e1b          	addiw	t3,a5,110
   1189c:	00351513          	slli	a0,a0,0x3
   118a0:	ba1ff06f          	j	11440 <_malloc_r+0x100>
   118a4:	001f8f9b          	addiw	t6,t6,1
   118a8:	003ff793          	andi	a5,t6,3
   118ac:	01030313          	addi	t1,t1,16
   118b0:	14078263          	beqz	a5,119f4 <_malloc_r+0x6b4>
   118b4:	01833683          	ld	a3,24(t1)
   118b8:	ca9ff06f          	j	11560 <_malloc_r+0x220>
   118bc:	0107b503          	ld	a0,16(a5)
   118c0:	00176893          	ori	a7,a4,1
   118c4:	0117b423          	sd	a7,8(a5)
   118c8:	00d53c23          	sd	a3,24(a0)
   118cc:	00a6b823          	sd	a0,16(a3)
   118d0:	00e78733          	add	a4,a5,a4
   118d4:	02e83423          	sd	a4,40(a6)
   118d8:	02e83023          	sd	a4,32(a6)
   118dc:	0015e693          	ori	a3,a1,1
   118e0:	00c78633          	add	a2,a5,a2
   118e4:	01c73c23          	sd	t3,24(a4)
   118e8:	01c73823          	sd	t3,16(a4)
   118ec:	00d73423          	sd	a3,8(a4)
   118f0:	00040513          	mv	a0,s0
   118f4:	00b63023          	sd	a1,0(a2)
   118f8:	00f13423          	sd	a5,8(sp)
   118fc:	32c000ef          	jal	11c28 <__malloc_unlock>
   11900:	00813783          	ld	a5,8(sp)
   11904:	01078513          	addi	a0,a5,16
   11908:	addff06f          	j	113e4 <_malloc_r+0xa4>
   1190c:	00375893          	srli	a7,a4,0x3
   11910:	00189693          	slli	a3,a7,0x1
   11914:	0026869b          	addiw	a3,a3,2
   11918:	00369693          	slli	a3,a3,0x3
   1191c:	0008889b          	sext.w	a7,a7
   11920:	a55ff06f          	j	11374 <_malloc_r+0x34>
   11924:	00678333          	add	t1,a5,t1
   11928:	00833703          	ld	a4,8(t1)
   1192c:	00040513          	mv	a0,s0
   11930:	00f13423          	sd	a5,8(sp)
   11934:	00176713          	ori	a4,a4,1
   11938:	00e33423          	sd	a4,8(t1)
   1193c:	2ec000ef          	jal	11c28 <__malloc_unlock>
   11940:	00813783          	ld	a5,8(sp)
   11944:	01078513          	addi	a0,a5,16
   11948:	a9dff06f          	j	113e4 <_malloc_r+0xa4>
   1194c:	00176613          	ori	a2,a4,1
   11950:	00c7b423          	sd	a2,8(a5)
   11954:	00e78733          	add	a4,a5,a4
   11958:	02e83423          	sd	a4,40(a6)
   1195c:	02e83023          	sd	a4,32(a6)
   11960:	0016e613          	ori	a2,a3,1
   11964:	00678333          	add	t1,a5,t1
   11968:	01c73c23          	sd	t3,24(a4)
   1196c:	01c73823          	sd	t3,16(a4)
   11970:	00c73423          	sd	a2,8(a4)
   11974:	00040513          	mv	a0,s0
   11978:	00d33023          	sd	a3,0(t1)
   1197c:	00f13423          	sd	a5,8(sp)
   11980:	2a8000ef          	jal	11c28 <__malloc_unlock>
   11984:	00813783          	ld	a5,8(sp)
   11988:	01078513          	addi	a0,a5,16
   1198c:	a59ff06f          	j	113e4 <_malloc_r+0xa4>
   11990:	00635693          	srli	a3,t1,0x6
   11994:	00169513          	slli	a0,a3,0x1
   11998:	0725051b          	addiw	a0,a0,114
   1199c:	00351513          	slli	a0,a0,0x3
   119a0:	0386861b          	addiw	a2,a3,56
   119a4:	e99ff06f          	j	1183c <_malloc_r+0x4fc>
   119a8:	15078e63          	beq	a5,a6,11b04 <_malloc_r+0x7c4>
   119ac:	01083783          	ld	a5,16(a6)
   119b0:	0087b683          	ld	a3,8(a5)
   119b4:	ffc6f693          	andi	a3,a3,-4
   119b8:	40e68633          	sub	a2,a3,a4
   119bc:	00e6e663          	bltu	a3,a4,119c8 <_malloc_r+0x688>
   119c0:	02062693          	slti	a3,a2,32
   119c4:	dc0684e3          	beqz	a3,1178c <_malloc_r+0x44c>
   119c8:	00040513          	mv	a0,s0
   119cc:	25c000ef          	jal	11c28 <__malloc_unlock>
   119d0:	a11ff06f          	j	113e0 <_malloc_r+0xa0>
   119d4:	05c7889b          	addiw	a7,a5,92
   119d8:	0018951b          	slliw	a0,a7,0x1
   119dc:	05b78e1b          	addiw	t3,a5,91
   119e0:	00351513          	slli	a0,a0,0x3
   119e4:	a5dff06f          	j	11440 <_malloc_r+0x100>
   119e8:	010f3783          	ld	a5,16(t5)
   119ec:	fff8889b          	addiw	a7,a7,-1
   119f0:	23e79663          	bne	a5,t5,11c1c <_malloc_r+0x8dc>
   119f4:	0038f793          	andi	a5,a7,3
   119f8:	ff0f0f13          	addi	t5,t5,-16
   119fc:	fe0796e3          	bnez	a5,119e8 <_malloc_r+0x6a8>
   11a00:	00883683          	ld	a3,8(a6)
   11a04:	fff54793          	not	a5,a0
   11a08:	00d7f7b3          	and	a5,a5,a3
   11a0c:	00f83423          	sd	a5,8(a6)
   11a10:	00151513          	slli	a0,a0,0x1
   11a14:	fff50693          	addi	a3,a0,-1
   11a18:	baf6f6e3          	bgeu	a3,a5,115c4 <_malloc_r+0x284>
   11a1c:	00f576b3          	and	a3,a0,a5
   11a20:	00069a63          	bnez	a3,11a34 <_malloc_r+0x6f4>
   11a24:	00151513          	slli	a0,a0,0x1
   11a28:	00f576b3          	and	a3,a0,a5
   11a2c:	004f8f9b          	addiw	t6,t6,4
   11a30:	fe068ae3          	beqz	a3,11a24 <_malloc_r+0x6e4>
   11a34:	000f8893          	mv	a7,t6
   11a38:	b09ff06f          	j	11540 <_malloc_r+0x200>
   11a3c:	02058593          	addi	a1,a1,32
   11a40:	bc9ff06f          	j	11608 <_malloc_r+0x2c8>
   11a44:	4026561b          	sraiw	a2,a2,0x2
   11a48:	00100313          	li	t1,1
   11a4c:	00c31633          	sll	a2,t1,a2
   11a50:	00c5e5b3          	or	a1,a1,a2
   11a54:	00b83423          	sd	a1,8(a6)
   11a58:	e11ff06f          	j	11868 <_malloc_r+0x528>
   11a5c:	00b30633          	add	a2,t1,a1
   11a60:	40c005b3          	neg	a1,a2
   11a64:	03459593          	slli	a1,a1,0x34
   11a68:	0345d593          	srli	a1,a1,0x34
   11a6c:	00040513          	mv	a0,s0
   11a70:	03c13c23          	sd	t3,56(sp)
   11a74:	03013823          	sd	a6,48(sp)
   11a78:	02f13423          	sd	a5,40(sp)
   11a7c:	02e13023          	sd	a4,32(sp)
   11a80:	01113c23          	sd	a7,24(sp)
   11a84:	00613823          	sd	t1,16(sp)
   11a88:	00c13423          	sd	a2,8(sp)
   11a8c:	04b13023          	sd	a1,64(sp)
   11a90:	600000ef          	jal	12090 <_sbrk_r>
   11a94:	00050693          	mv	a3,a0
   11a98:	fff00513          	li	a0,-1
   11a9c:	01013303          	ld	t1,16(sp)
   11aa0:	01813883          	ld	a7,24(sp)
   11aa4:	02013703          	ld	a4,32(sp)
   11aa8:	02813783          	ld	a5,40(sp)
   11aac:	03013803          	ld	a6,48(sp)
   11ab0:	03813e03          	ld	t3,56(sp)
   11ab4:	0ea68463          	beq	a3,a0,11b9c <_malloc_r+0x85c>
   11ab8:	04013583          	ld	a1,64(sp)
   11abc:	0005851b          	sext.w	a0,a1
   11ac0:	c49ff06f          	j	11708 <_malloc_r+0x3c8>
   11ac4:	05400613          	li	a2,84
   11ac8:	08d66063          	bltu	a2,a3,11b48 <_malloc_r+0x808>
   11acc:	00c35693          	srli	a3,t1,0xc
   11ad0:	00169513          	slli	a0,a3,0x1
   11ad4:	0de5051b          	addiw	a0,a0,222
   11ad8:	00351513          	slli	a0,a0,0x3
   11adc:	06e6861b          	addiw	a2,a3,110
   11ae0:	d5dff06f          	j	1183c <_malloc_r+0x4fc>
   11ae4:	15400693          	li	a3,340
   11ae8:	08f6e063          	bltu	a3,a5,11b68 <_malloc_r+0x828>
   11aec:	00f75793          	srli	a5,a4,0xf
   11af0:	0787889b          	addiw	a7,a5,120
   11af4:	0018951b          	slliw	a0,a7,0x1
   11af8:	07778e1b          	addiw	t3,a5,119
   11afc:	00351513          	slli	a0,a0,0x3
   11b00:	941ff06f          	j	11440 <_malloc_r+0x100>
   11b04:	4c018e13          	addi	t3,gp,1216 # 14080 <__malloc_current_mallinfo>
   11b08:	000e2503          	lw	a0,0(t3)
   11b0c:	00b5053b          	addw	a0,a0,a1
   11b10:	00ae2023          	sw	a0,0(t3)
   11b14:	b51ff06f          	j	11664 <_malloc_r+0x324>
   11b18:	03431f13          	slli	t5,t1,0x34
   11b1c:	b40f14e3          	bnez	t5,11664 <_malloc_r+0x324>
   11b20:	01083303          	ld	t1,16(a6)
   11b24:	00b885b3          	add	a1,a7,a1
   11b28:	0015e693          	ori	a3,a1,1
   11b2c:	00d33423          	sd	a3,8(t1)
   11b30:	c35ff06f          	j	11764 <_malloc_r+0x424>
   11b34:	1861b423          	sd	t1,392(gp) # 13d48 <__malloc_sbrk_base>
   11b38:	b45ff06f          	j	1167c <_malloc_r+0x33c>
   11b3c:	00100793          	li	a5,1
   11b40:	00f33423          	sd	a5,8(t1)
   11b44:	e85ff06f          	j	119c8 <_malloc_r+0x688>
   11b48:	15400613          	li	a2,340
   11b4c:	08d66a63          	bltu	a2,a3,11be0 <_malloc_r+0x8a0>
   11b50:	00f35693          	srli	a3,t1,0xf
   11b54:	00169513          	slli	a0,a3,0x1
   11b58:	0f05051b          	addiw	a0,a0,240
   11b5c:	00351513          	slli	a0,a0,0x3
   11b60:	0776861b          	addiw	a2,a3,119
   11b64:	cd9ff06f          	j	1183c <_malloc_r+0x4fc>
   11b68:	55400693          	li	a3,1364
   11b6c:	08f6ea63          	bltu	a3,a5,11c00 <_malloc_r+0x8c0>
   11b70:	01275793          	srli	a5,a4,0x12
   11b74:	07d7889b          	addiw	a7,a5,125
   11b78:	0018951b          	slliw	a0,a7,0x1
   11b7c:	07c78e1b          	addiw	t3,a5,124
   11b80:	00351513          	slli	a0,a0,0x3
   11b84:	8bdff06f          	j	11440 <_malloc_r+0x100>
   11b88:	ff0e8e93          	addi	t4,t4,-16
   11b8c:	01d606b3          	add	a3,a2,t4
   11b90:	00000513          	li	a0,0
   11b94:	00000593          	li	a1,0
   11b98:	b71ff06f          	j	11708 <_malloc_r+0x3c8>
   11b9c:	00813683          	ld	a3,8(sp)
   11ba0:	00000593          	li	a1,0
   11ba4:	00000513          	li	a0,0
   11ba8:	b61ff06f          	j	11708 <_malloc_r+0x3c8>
   11bac:	01078593          	addi	a1,a5,16
   11bb0:	00040513          	mv	a0,s0
   11bb4:	01c13c23          	sd	t3,24(sp)
   11bb8:	01013823          	sd	a6,16(sp)
   11bbc:	00e13423          	sd	a4,8(sp)
   11bc0:	c7cff0ef          	jal	1103c <_free_r>
   11bc4:	01013803          	ld	a6,16(sp)
   11bc8:	01813e03          	ld	t3,24(sp)
   11bcc:	00813703          	ld	a4,8(sp)
   11bd0:	01083303          	ld	t1,16(a6)
   11bd4:	000e2603          	lw	a2,0(t3)
   11bd8:	00833683          	ld	a3,8(t1)
   11bdc:	b89ff06f          	j	11764 <_malloc_r+0x424>
   11be0:	55400613          	li	a2,1364
   11be4:	02d66663          	bltu	a2,a3,11c10 <_malloc_r+0x8d0>
   11be8:	01235693          	srli	a3,t1,0x12
   11bec:	00169513          	slli	a0,a3,0x1
   11bf0:	0fa5051b          	addiw	a0,a0,250
   11bf4:	00351513          	slli	a0,a0,0x3
   11bf8:	07c6861b          	addiw	a2,a3,124
   11bfc:	c41ff06f          	j	1183c <_malloc_r+0x4fc>
   11c00:	7f000513          	li	a0,2032
   11c04:	07f00893          	li	a7,127
   11c08:	07e00e13          	li	t3,126
   11c0c:	835ff06f          	j	11440 <_malloc_r+0x100>
   11c10:	7f000513          	li	a0,2032
   11c14:	07e00613          	li	a2,126
   11c18:	c25ff06f          	j	1183c <_malloc_r+0x4fc>
   11c1c:	00883783          	ld	a5,8(a6)
   11c20:	df1ff06f          	j	11a10 <_malloc_r+0x6d0>

0000000000011c24 <__malloc_lock>:
   11c24:	00008067          	ret

0000000000011c28 <__malloc_unlock>:
   11c28:	00008067          	ret

0000000000011c2c <_fclose_r>:
   11c2c:	fe010113          	addi	sp,sp,-32
   11c30:	00113c23          	sd	ra,24(sp)
   11c34:	01213023          	sd	s2,0(sp)
   11c38:	02058863          	beqz	a1,11c68 <_fclose_r+0x3c>
   11c3c:	00813823          	sd	s0,16(sp)
   11c40:	00913423          	sd	s1,8(sp)
   11c44:	00058413          	mv	s0,a1
   11c48:	00050493          	mv	s1,a0
   11c4c:	00050663          	beqz	a0,11c58 <_fclose_r+0x2c>
   11c50:	04853783          	ld	a5,72(a0)
   11c54:	0c078c63          	beqz	a5,11d2c <_fclose_r+0x100>
   11c58:	01041783          	lh	a5,16(s0)
   11c5c:	02079263          	bnez	a5,11c80 <_fclose_r+0x54>
   11c60:	01013403          	ld	s0,16(sp)
   11c64:	00813483          	ld	s1,8(sp)
   11c68:	01813083          	ld	ra,24(sp)
   11c6c:	00000913          	li	s2,0
   11c70:	00090513          	mv	a0,s2
   11c74:	00013903          	ld	s2,0(sp)
   11c78:	02010113          	addi	sp,sp,32
   11c7c:	00008067          	ret
   11c80:	00040593          	mv	a1,s0
   11c84:	00048513          	mv	a0,s1
   11c88:	0b8000ef          	jal	11d40 <__sflush_r>
   11c8c:	05043783          	ld	a5,80(s0)
   11c90:	00050913          	mv	s2,a0
   11c94:	00078a63          	beqz	a5,11ca8 <_fclose_r+0x7c>
   11c98:	03043583          	ld	a1,48(s0)
   11c9c:	00048513          	mv	a0,s1
   11ca0:	000780e7          	jalr	a5
   11ca4:	06054463          	bltz	a0,11d0c <_fclose_r+0xe0>
   11ca8:	01045783          	lhu	a5,16(s0)
   11cac:	0807f793          	andi	a5,a5,128
   11cb0:	06079663          	bnez	a5,11d1c <_fclose_r+0xf0>
   11cb4:	05843583          	ld	a1,88(s0)
   11cb8:	00058c63          	beqz	a1,11cd0 <_fclose_r+0xa4>
   11cbc:	07440793          	addi	a5,s0,116
   11cc0:	00f58663          	beq	a1,a5,11ccc <_fclose_r+0xa0>
   11cc4:	00048513          	mv	a0,s1
   11cc8:	b74ff0ef          	jal	1103c <_free_r>
   11ccc:	04043c23          	sd	zero,88(s0)
   11cd0:	07843583          	ld	a1,120(s0)
   11cd4:	00058863          	beqz	a1,11ce4 <_fclose_r+0xb8>
   11cd8:	00048513          	mv	a0,s1
   11cdc:	b60ff0ef          	jal	1103c <_free_r>
   11ce0:	06043c23          	sd	zero,120(s0)
   11ce4:	aa1fe0ef          	jal	10784 <__sfp_lock_acquire>
   11ce8:	00041823          	sh	zero,16(s0)
   11cec:	a9dfe0ef          	jal	10788 <__sfp_lock_release>
   11cf0:	01813083          	ld	ra,24(sp)
   11cf4:	01013403          	ld	s0,16(sp)
   11cf8:	00813483          	ld	s1,8(sp)
   11cfc:	00090513          	mv	a0,s2
   11d00:	00013903          	ld	s2,0(sp)
   11d04:	02010113          	addi	sp,sp,32
   11d08:	00008067          	ret
   11d0c:	01045783          	lhu	a5,16(s0)
   11d10:	fff00913          	li	s2,-1
   11d14:	0807f793          	andi	a5,a5,128
   11d18:	f8078ee3          	beqz	a5,11cb4 <_fclose_r+0x88>
   11d1c:	01843583          	ld	a1,24(s0)
   11d20:	00048513          	mv	a0,s1
   11d24:	b18ff0ef          	jal	1103c <_free_r>
   11d28:	f8dff06f          	j	11cb4 <_fclose_r+0x88>
   11d2c:	a35fe0ef          	jal	10760 <__sinit>
   11d30:	f29ff06f          	j	11c58 <_fclose_r+0x2c>

0000000000011d34 <fclose>:
   11d34:	00050593          	mv	a1,a0
   11d38:	1801b503          	ld	a0,384(gp) # 13d40 <_impure_ptr>
   11d3c:	ef1ff06f          	j	11c2c <_fclose_r>

0000000000011d40 <__sflush_r>:
   11d40:	01059703          	lh	a4,16(a1)
   11d44:	fd010113          	addi	sp,sp,-48
   11d48:	02813023          	sd	s0,32(sp)
   11d4c:	01313423          	sd	s3,8(sp)
   11d50:	02113423          	sd	ra,40(sp)
   11d54:	00877793          	andi	a5,a4,8
   11d58:	00058413          	mv	s0,a1
   11d5c:	00050993          	mv	s3,a0
   11d60:	12079263          	bnez	a5,11e84 <__sflush_r+0x144>
   11d64:	000017b7          	lui	a5,0x1
   11d68:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11d6c:	0085a683          	lw	a3,8(a1)
   11d70:	00f767b3          	or	a5,a4,a5
   11d74:	00f59823          	sh	a5,16(a1)
   11d78:	18d05c63          	blez	a3,11f10 <__sflush_r+0x1d0>
   11d7c:	04843803          	ld	a6,72(s0)
   11d80:	0e080663          	beqz	a6,11e6c <__sflush_r+0x12c>
   11d84:	00913c23          	sd	s1,24(sp)
   11d88:	03371693          	slli	a3,a4,0x33
   11d8c:	0009a483          	lw	s1,0(s3)
   11d90:	0009a023          	sw	zero,0(s3)
   11d94:	1806ca63          	bltz	a3,11f28 <__sflush_r+0x1e8>
   11d98:	03043583          	ld	a1,48(s0)
   11d9c:	00000613          	li	a2,0
   11da0:	00100693          	li	a3,1
   11da4:	00098513          	mv	a0,s3
   11da8:	000800e7          	jalr	a6
   11dac:	fff00793          	li	a5,-1
   11db0:	00050613          	mv	a2,a0
   11db4:	1af50c63          	beq	a0,a5,11f6c <__sflush_r+0x22c>
   11db8:	01041783          	lh	a5,16(s0)
   11dbc:	04843803          	ld	a6,72(s0)
   11dc0:	0047f793          	andi	a5,a5,4
   11dc4:	00078e63          	beqz	a5,11de0 <__sflush_r+0xa0>
   11dc8:	00842703          	lw	a4,8(s0)
   11dcc:	05843783          	ld	a5,88(s0)
   11dd0:	40e60633          	sub	a2,a2,a4
   11dd4:	00078663          	beqz	a5,11de0 <__sflush_r+0xa0>
   11dd8:	07042783          	lw	a5,112(s0)
   11ddc:	40f60633          	sub	a2,a2,a5
   11de0:	03043583          	ld	a1,48(s0)
   11de4:	00000693          	li	a3,0
   11de8:	00098513          	mv	a0,s3
   11dec:	000800e7          	jalr	a6
   11df0:	fff00713          	li	a4,-1
   11df4:	01041783          	lh	a5,16(s0)
   11df8:	12e51c63          	bne	a0,a4,11f30 <__sflush_r+0x1f0>
   11dfc:	0009a683          	lw	a3,0(s3)
   11e00:	01d00713          	li	a4,29
   11e04:	18d76263          	bltu	a4,a3,11f88 <__sflush_r+0x248>
   11e08:	20400737          	lui	a4,0x20400
   11e0c:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ebc41>
   11e10:	00d75733          	srl	a4,a4,a3
   11e14:	00177713          	andi	a4,a4,1
   11e18:	16070863          	beqz	a4,11f88 <__sflush_r+0x248>
   11e1c:	01843683          	ld	a3,24(s0)
   11e20:	fffff737          	lui	a4,0xfffff
   11e24:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb43f>
   11e28:	00e7f733          	and	a4,a5,a4
   11e2c:	00e41823          	sh	a4,16(s0)
   11e30:	00042423          	sw	zero,8(s0)
   11e34:	00d43023          	sd	a3,0(s0)
   11e38:	03379713          	slli	a4,a5,0x33
   11e3c:	00075663          	bgez	a4,11e48 <__sflush_r+0x108>
   11e40:	0009a783          	lw	a5,0(s3)
   11e44:	10078863          	beqz	a5,11f54 <__sflush_r+0x214>
   11e48:	05843583          	ld	a1,88(s0)
   11e4c:	0099a023          	sw	s1,0(s3)
   11e50:	10058a63          	beqz	a1,11f64 <__sflush_r+0x224>
   11e54:	07440793          	addi	a5,s0,116
   11e58:	00f58663          	beq	a1,a5,11e64 <__sflush_r+0x124>
   11e5c:	00098513          	mv	a0,s3
   11e60:	9dcff0ef          	jal	1103c <_free_r>
   11e64:	01813483          	ld	s1,24(sp)
   11e68:	04043c23          	sd	zero,88(s0)
   11e6c:	02813083          	ld	ra,40(sp)
   11e70:	02013403          	ld	s0,32(sp)
   11e74:	00813983          	ld	s3,8(sp)
   11e78:	00000513          	li	a0,0
   11e7c:	03010113          	addi	sp,sp,48
   11e80:	00008067          	ret
   11e84:	01213823          	sd	s2,16(sp)
   11e88:	0185b903          	ld	s2,24(a1)
   11e8c:	08090a63          	beqz	s2,11f20 <__sflush_r+0x1e0>
   11e90:	00913c23          	sd	s1,24(sp)
   11e94:	0005b483          	ld	s1,0(a1)
   11e98:	00377713          	andi	a4,a4,3
   11e9c:	0125b023          	sd	s2,0(a1)
   11ea0:	412484bb          	subw	s1,s1,s2
   11ea4:	00000793          	li	a5,0
   11ea8:	00071463          	bnez	a4,11eb0 <__sflush_r+0x170>
   11eac:	0205a783          	lw	a5,32(a1)
   11eb0:	00f42623          	sw	a5,12(s0)
   11eb4:	00904863          	bgtz	s1,11ec4 <__sflush_r+0x184>
   11eb8:	0640006f          	j	11f1c <__sflush_r+0x1dc>
   11ebc:	00a90933          	add	s2,s2,a0
   11ec0:	04905e63          	blez	s1,11f1c <__sflush_r+0x1dc>
   11ec4:	04043783          	ld	a5,64(s0)
   11ec8:	03043583          	ld	a1,48(s0)
   11ecc:	00048693          	mv	a3,s1
   11ed0:	00090613          	mv	a2,s2
   11ed4:	00098513          	mv	a0,s3
   11ed8:	000780e7          	jalr	a5
   11edc:	40a484bb          	subw	s1,s1,a0
   11ee0:	fca04ee3          	bgtz	a0,11ebc <__sflush_r+0x17c>
   11ee4:	01045783          	lhu	a5,16(s0)
   11ee8:	01013903          	ld	s2,16(sp)
   11eec:	0407e793          	ori	a5,a5,64
   11ef0:	02813083          	ld	ra,40(sp)
   11ef4:	00f41823          	sh	a5,16(s0)
   11ef8:	02013403          	ld	s0,32(sp)
   11efc:	01813483          	ld	s1,24(sp)
   11f00:	00813983          	ld	s3,8(sp)
   11f04:	fff00513          	li	a0,-1
   11f08:	03010113          	addi	sp,sp,48
   11f0c:	00008067          	ret
   11f10:	0705a683          	lw	a3,112(a1)
   11f14:	e6d044e3          	bgtz	a3,11d7c <__sflush_r+0x3c>
   11f18:	f55ff06f          	j	11e6c <__sflush_r+0x12c>
   11f1c:	01813483          	ld	s1,24(sp)
   11f20:	01013903          	ld	s2,16(sp)
   11f24:	f49ff06f          	j	11e6c <__sflush_r+0x12c>
   11f28:	09043603          	ld	a2,144(s0)
   11f2c:	e95ff06f          	j	11dc0 <__sflush_r+0x80>
   11f30:	01843683          	ld	a3,24(s0)
   11f34:	fffff737          	lui	a4,0xfffff
   11f38:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb43f>
   11f3c:	00e7f733          	and	a4,a5,a4
   11f40:	00e41823          	sh	a4,16(s0)
   11f44:	00042423          	sw	zero,8(s0)
   11f48:	00d43023          	sd	a3,0(s0)
   11f4c:	03379713          	slli	a4,a5,0x33
   11f50:	ee075ce3          	bgez	a4,11e48 <__sflush_r+0x108>
   11f54:	05843583          	ld	a1,88(s0)
   11f58:	08a43823          	sd	a0,144(s0)
   11f5c:	0099a023          	sw	s1,0(s3)
   11f60:	ee059ae3          	bnez	a1,11e54 <__sflush_r+0x114>
   11f64:	01813483          	ld	s1,24(sp)
   11f68:	f05ff06f          	j	11e6c <__sflush_r+0x12c>
   11f6c:	0009a783          	lw	a5,0(s3)
   11f70:	e40784e3          	beqz	a5,11db8 <__sflush_r+0x78>
   11f74:	fe378713          	addi	a4,a5,-29
   11f78:	00070c63          	beqz	a4,11f90 <__sflush_r+0x250>
   11f7c:	fea78793          	addi	a5,a5,-22
   11f80:	00078863          	beqz	a5,11f90 <__sflush_r+0x250>
   11f84:	01045783          	lhu	a5,16(s0)
   11f88:	0407e793          	ori	a5,a5,64
   11f8c:	f65ff06f          	j	11ef0 <__sflush_r+0x1b0>
   11f90:	0099a023          	sw	s1,0(s3)
   11f94:	01813483          	ld	s1,24(sp)
   11f98:	ed5ff06f          	j	11e6c <__sflush_r+0x12c>

0000000000011f9c <_fflush_r>:
   11f9c:	00050793          	mv	a5,a0
   11fa0:	00050663          	beqz	a0,11fac <_fflush_r+0x10>
   11fa4:	04853703          	ld	a4,72(a0)
   11fa8:	00070e63          	beqz	a4,11fc4 <_fflush_r+0x28>
   11fac:	01059703          	lh	a4,16(a1)
   11fb0:	00071663          	bnez	a4,11fbc <_fflush_r+0x20>
   11fb4:	00000513          	li	a0,0
   11fb8:	00008067          	ret
   11fbc:	00078513          	mv	a0,a5
   11fc0:	d81ff06f          	j	11d40 <__sflush_r>
   11fc4:	fe010113          	addi	sp,sp,-32
   11fc8:	00b13423          	sd	a1,8(sp)
   11fcc:	00113c23          	sd	ra,24(sp)
   11fd0:	00a13023          	sd	a0,0(sp)
   11fd4:	f8cfe0ef          	jal	10760 <__sinit>
   11fd8:	00813583          	ld	a1,8(sp)
   11fdc:	00013783          	ld	a5,0(sp)
   11fe0:	01059703          	lh	a4,16(a1)
   11fe4:	00070a63          	beqz	a4,11ff8 <_fflush_r+0x5c>
   11fe8:	01813083          	ld	ra,24(sp)
   11fec:	00078513          	mv	a0,a5
   11ff0:	02010113          	addi	sp,sp,32
   11ff4:	d4dff06f          	j	11d40 <__sflush_r>
   11ff8:	01813083          	ld	ra,24(sp)
   11ffc:	00000513          	li	a0,0
   12000:	02010113          	addi	sp,sp,32
   12004:	00008067          	ret

0000000000012008 <fflush>:
   12008:	06050063          	beqz	a0,12068 <fflush+0x60>
   1200c:	00050593          	mv	a1,a0
   12010:	1801b503          	ld	a0,384(gp) # 13d40 <_impure_ptr>
   12014:	00050663          	beqz	a0,12020 <fflush+0x18>
   12018:	04853783          	ld	a5,72(a0)
   1201c:	00078c63          	beqz	a5,12034 <fflush+0x2c>
   12020:	01059783          	lh	a5,16(a1)
   12024:	00079663          	bnez	a5,12030 <fflush+0x28>
   12028:	00000513          	li	a0,0
   1202c:	00008067          	ret
   12030:	d11ff06f          	j	11d40 <__sflush_r>
   12034:	fe010113          	addi	sp,sp,-32
   12038:	00b13423          	sd	a1,8(sp)
   1203c:	00a13023          	sd	a0,0(sp)
   12040:	00113c23          	sd	ra,24(sp)
   12044:	f1cfe0ef          	jal	10760 <__sinit>
   12048:	00813583          	ld	a1,8(sp)
   1204c:	00013503          	ld	a0,0(sp)
   12050:	01059783          	lh	a5,16(a1)
   12054:	02079863          	bnez	a5,12084 <fflush+0x7c>
   12058:	01813083          	ld	ra,24(sp)
   1205c:	00000513          	li	a0,0
   12060:	02010113          	addi	sp,sp,32
   12064:	00008067          	ret
   12068:	00013637          	lui	a2,0x13
   1206c:	000125b7          	lui	a1,0x12
   12070:	00013537          	lui	a0,0x13
   12074:	3b860613          	addi	a2,a2,952 # 133b8 <__sglue>
   12078:	f9c58593          	addi	a1,a1,-100 # 11f9c <_fflush_r>
   1207c:	3d050513          	addi	a0,a0,976 # 133d0 <_impure_data>
   12080:	f3cfe06f          	j	107bc <_fwalk_sglue>
   12084:	01813083          	ld	ra,24(sp)
   12088:	02010113          	addi	sp,sp,32
   1208c:	cb5ff06f          	j	11d40 <__sflush_r>

0000000000012090 <_sbrk_r>:
   12090:	fe010113          	addi	sp,sp,-32
   12094:	00813823          	sd	s0,16(sp)
   12098:	00913423          	sd	s1,8(sp)
   1209c:	00050493          	mv	s1,a0
   120a0:	00058513          	mv	a0,a1
   120a4:	00113c23          	sd	ra,24(sp)
   120a8:	1a01a023          	sw	zero,416(gp) # 13d60 <errno>
   120ac:	22c000ef          	jal	122d8 <_sbrk>
   120b0:	fff00793          	li	a5,-1
   120b4:	00f50c63          	beq	a0,a5,120cc <_sbrk_r+0x3c>
   120b8:	01813083          	ld	ra,24(sp)
   120bc:	01013403          	ld	s0,16(sp)
   120c0:	00813483          	ld	s1,8(sp)
   120c4:	02010113          	addi	sp,sp,32
   120c8:	00008067          	ret
   120cc:	1a01a783          	lw	a5,416(gp) # 13d60 <errno>
   120d0:	fe0784e3          	beqz	a5,120b8 <_sbrk_r+0x28>
   120d4:	01813083          	ld	ra,24(sp)
   120d8:	01013403          	ld	s0,16(sp)
   120dc:	00f4a023          	sw	a5,0(s1)
   120e0:	00813483          	ld	s1,8(sp)
   120e4:	02010113          	addi	sp,sp,32
   120e8:	00008067          	ret

00000000000120ec <__libc_fini_array>:
   120ec:	fe010113          	addi	sp,sp,-32
   120f0:	00813823          	sd	s0,16(sp)
   120f4:	000137b7          	lui	a5,0x13
   120f8:	00013437          	lui	s0,0x13
   120fc:	3b878793          	addi	a5,a5,952 # 133b8 <__sglue>
   12100:	3b040413          	addi	s0,s0,944 # 133b0 <__do_global_dtors_aux_fini_array_entry>
   12104:	408787b3          	sub	a5,a5,s0
   12108:	00913423          	sd	s1,8(sp)
   1210c:	00113c23          	sd	ra,24(sp)
   12110:	4037d493          	srai	s1,a5,0x3
   12114:	02048063          	beqz	s1,12134 <__libc_fini_array+0x48>
   12118:	ff840413          	addi	s0,s0,-8
   1211c:	00f40433          	add	s0,s0,a5
   12120:	00043783          	ld	a5,0(s0)
   12124:	fff48493          	addi	s1,s1,-1
   12128:	ff840413          	addi	s0,s0,-8
   1212c:	000780e7          	jalr	a5
   12130:	fe0498e3          	bnez	s1,12120 <__libc_fini_array+0x34>
   12134:	01813083          	ld	ra,24(sp)
   12138:	01013403          	ld	s0,16(sp)
   1213c:	00813483          	ld	s1,8(sp)
   12140:	02010113          	addi	sp,sp,32
   12144:	00008067          	ret

0000000000012148 <__register_exitproc>:
   12148:	1a81b783          	ld	a5,424(gp) # 13d68 <__atexit>
   1214c:	04078e63          	beqz	a5,121a8 <__register_exitproc+0x60>
   12150:	0087a703          	lw	a4,8(a5)
   12154:	01f00813          	li	a6,31
   12158:	08e84463          	blt	a6,a4,121e0 <__register_exitproc+0x98>
   1215c:	02050863          	beqz	a0,1218c <__register_exitproc+0x44>
   12160:	00371813          	slli	a6,a4,0x3
   12164:	01078833          	add	a6,a5,a6
   12168:	10c83823          	sd	a2,272(a6)
   1216c:	3107a883          	lw	a7,784(a5)
   12170:	00100613          	li	a2,1
   12174:	00e6163b          	sllw	a2,a2,a4
   12178:	00c8e8b3          	or	a7,a7,a2
   1217c:	3117a823          	sw	a7,784(a5)
   12180:	20d83823          	sd	a3,528(a6)
   12184:	00200693          	li	a3,2
   12188:	02d50863          	beq	a0,a3,121b8 <__register_exitproc+0x70>
   1218c:	0017069b          	addiw	a3,a4,1
   12190:	00371713          	slli	a4,a4,0x3
   12194:	00d7a423          	sw	a3,8(a5)
   12198:	00e787b3          	add	a5,a5,a4
   1219c:	00b7b823          	sd	a1,16(a5)
   121a0:	00000513          	li	a0,0
   121a4:	00008067          	ret
   121a8:	000147b7          	lui	a5,0x14
   121ac:	0a878793          	addi	a5,a5,168 # 140a8 <__atexit0>
   121b0:	1af1b423          	sd	a5,424(gp) # 13d68 <__atexit>
   121b4:	f9dff06f          	j	12150 <__register_exitproc+0x8>
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
   122d8:	1c81b783          	ld	a5,456(gp) # 13d88 <heap_end.0>
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
   12304:	1ca1b423          	sd	a0,456(gp) # 13d88 <heap_end.0>
   12308:	00f70533          	add	a0,a4,a5
   1230c:	0d600893          	li	a7,214
   12310:	00000073          	ecall
   12314:	1c81b783          	ld	a5,456(gp) # 13d88 <heap_end.0>
   12318:	00f70733          	add	a4,a4,a5
   1231c:	00e51c63          	bne	a0,a4,12334 <_sbrk+0x5c>
   12320:	00813083          	ld	ra,8(sp)
   12324:	1ca1b423          	sd	a0,456(gp) # 13d88 <heap_end.0>
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
   12390:	1801b503          	ld	a0,384(gp) # 13d40 <_impure_ptr>
   12394:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012398 <__EH_FRAME_BEGIN__>:
   12398:	0000                	.insn	2, 0x0000
	...

Disassembly of section .init_array:

00000000000133a0 <__init_array_start>:
   133a0:	014c                	.insn	2, 0x014c
   133a2:	0001                	.insn	2, 0x0001
   133a4:	0000                	.insn	2, 0x0000
	...

00000000000133a8 <__frame_dummy_init_array_entry>:
   133a8:	01fc                	.insn	2, 0x01fc
   133aa:	0001                	.insn	2, 0x0001
   133ac:	0000                	.insn	2, 0x0000
	...

Disassembly of section .fini_array:

00000000000133b0 <__do_global_dtors_aux_fini_array_entry>:
   133b0:	01b8                	.insn	2, 0x01b8
   133b2:	0001                	.insn	2, 0x0001
   133b4:	0000                	.insn	2, 0x0000
	...

Disassembly of section .data:

00000000000133b8 <__sglue>:
	...
   133c0:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   133c4:	0000                	.insn	2, 0x0000
   133c6:	0000                	.insn	2, 0x0000
   133c8:	3e70                	.insn	2, 0x3e70
   133ca:	0001                	.insn	2, 0x0001
   133cc:	0000                	.insn	2, 0x0000
	...

00000000000133d0 <_impure_data>:
	...
   133d8:	3e70                	.insn	2, 0x3e70
   133da:	0001                	.insn	2, 0x0001
   133dc:	0000                	.insn	2, 0x0000
   133de:	0000                	.insn	2, 0x0000
   133e0:	3f20                	.insn	2, 0x3f20
   133e2:	0001                	.insn	2, 0x0001
   133e4:	0000                	.insn	2, 0x0000
   133e6:	0000                	.insn	2, 0x0000
   133e8:	3fd0                	.insn	2, 0x3fd0
   133ea:	0001                	.insn	2, 0x0001
	...
   134a0:	0001                	.insn	2, 0x0001
   134a2:	0000                	.insn	2, 0x0000
   134a4:	0000                	.insn	2, 0x0000
   134a6:	0000                	.insn	2, 0x0000
   134a8:	330e                	.insn	2, 0x330e
   134aa:	abcd                	.insn	2, 0xabcd
   134ac:	1234                	.insn	2, 0x1234
   134ae:	e66d                	.insn	2, 0xe66d
   134b0:	deec                	.insn	2, 0xdeec
   134b2:	0005                	.insn	2, 0x0005
   134b4:	0000000b          	.insn	4, 0x000b
	...

0000000000013528 <__malloc_av_>:
	...
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
   13996:	0000                	.insn	2, 0x0000
   13998:	3988                	.insn	2, 0x3988
   1399a:	0001                	.insn	2, 0x0001
   1399c:	0000                	.insn	2, 0x0000
   1399e:	0000                	.insn	2, 0x0000
   139a0:	3988                	.insn	2, 0x3988
   139a2:	0001                	.insn	2, 0x0001
   139a4:	0000                	.insn	2, 0x0000
   139a6:	0000                	.insn	2, 0x0000
   139a8:	3998                	.insn	2, 0x3998
   139aa:	0001                	.insn	2, 0x0001
   139ac:	0000                	.insn	2, 0x0000
   139ae:	0000                	.insn	2, 0x0000
   139b0:	3998                	.insn	2, 0x3998
   139b2:	0001                	.insn	2, 0x0001
   139b4:	0000                	.insn	2, 0x0000
   139b6:	0000                	.insn	2, 0x0000
   139b8:	39a8                	.insn	2, 0x39a8
   139ba:	0001                	.insn	2, 0x0001
   139bc:	0000                	.insn	2, 0x0000
   139be:	0000                	.insn	2, 0x0000
   139c0:	39a8                	.insn	2, 0x39a8
   139c2:	0001                	.insn	2, 0x0001
   139c4:	0000                	.insn	2, 0x0000
   139c6:	0000                	.insn	2, 0x0000
   139c8:	39b8                	.insn	2, 0x39b8
   139ca:	0001                	.insn	2, 0x0001
   139cc:	0000                	.insn	2, 0x0000
   139ce:	0000                	.insn	2, 0x0000
   139d0:	39b8                	.insn	2, 0x39b8
   139d2:	0001                	.insn	2, 0x0001
   139d4:	0000                	.insn	2, 0x0000
   139d6:	0000                	.insn	2, 0x0000
   139d8:	39c8                	.insn	2, 0x39c8
   139da:	0001                	.insn	2, 0x0001
   139dc:	0000                	.insn	2, 0x0000
   139de:	0000                	.insn	2, 0x0000
   139e0:	39c8                	.insn	2, 0x39c8
   139e2:	0001                	.insn	2, 0x0001
   139e4:	0000                	.insn	2, 0x0000
   139e6:	0000                	.insn	2, 0x0000
   139e8:	39d8                	.insn	2, 0x39d8
   139ea:	0001                	.insn	2, 0x0001
   139ec:	0000                	.insn	2, 0x0000
   139ee:	0000                	.insn	2, 0x0000
   139f0:	39d8                	.insn	2, 0x39d8
   139f2:	0001                	.insn	2, 0x0001
   139f4:	0000                	.insn	2, 0x0000
   139f6:	0000                	.insn	2, 0x0000
   139f8:	39e8                	.insn	2, 0x39e8
   139fa:	0001                	.insn	2, 0x0001
   139fc:	0000                	.insn	2, 0x0000
   139fe:	0000                	.insn	2, 0x0000
   13a00:	39e8                	.insn	2, 0x39e8
   13a02:	0001                	.insn	2, 0x0001
   13a04:	0000                	.insn	2, 0x0000
   13a06:	0000                	.insn	2, 0x0000
   13a08:	39f8                	.insn	2, 0x39f8
   13a0a:	0001                	.insn	2, 0x0001
   13a0c:	0000                	.insn	2, 0x0000
   13a0e:	0000                	.insn	2, 0x0000
   13a10:	39f8                	.insn	2, 0x39f8
   13a12:	0001                	.insn	2, 0x0001
   13a14:	0000                	.insn	2, 0x0000
   13a16:	0000                	.insn	2, 0x0000
   13a18:	3a08                	.insn	2, 0x3a08
   13a1a:	0001                	.insn	2, 0x0001
   13a1c:	0000                	.insn	2, 0x0000
   13a1e:	0000                	.insn	2, 0x0000
   13a20:	3a08                	.insn	2, 0x3a08
   13a22:	0001                	.insn	2, 0x0001
   13a24:	0000                	.insn	2, 0x0000
   13a26:	0000                	.insn	2, 0x0000
   13a28:	3a18                	.insn	2, 0x3a18
   13a2a:	0001                	.insn	2, 0x0001
   13a2c:	0000                	.insn	2, 0x0000
   13a2e:	0000                	.insn	2, 0x0000
   13a30:	3a18                	.insn	2, 0x3a18
   13a32:	0001                	.insn	2, 0x0001
   13a34:	0000                	.insn	2, 0x0000
   13a36:	0000                	.insn	2, 0x0000
   13a38:	3a28                	.insn	2, 0x3a28
   13a3a:	0001                	.insn	2, 0x0001
   13a3c:	0000                	.insn	2, 0x0000
   13a3e:	0000                	.insn	2, 0x0000
   13a40:	3a28                	.insn	2, 0x3a28
   13a42:	0001                	.insn	2, 0x0001
   13a44:	0000                	.insn	2, 0x0000
   13a46:	0000                	.insn	2, 0x0000
   13a48:	3a38                	.insn	2, 0x3a38
   13a4a:	0001                	.insn	2, 0x0001
   13a4c:	0000                	.insn	2, 0x0000
   13a4e:	0000                	.insn	2, 0x0000
   13a50:	3a38                	.insn	2, 0x3a38
   13a52:	0001                	.insn	2, 0x0001
   13a54:	0000                	.insn	2, 0x0000
   13a56:	0000                	.insn	2, 0x0000
   13a58:	3a48                	.insn	2, 0x3a48
   13a5a:	0001                	.insn	2, 0x0001
   13a5c:	0000                	.insn	2, 0x0000
   13a5e:	0000                	.insn	2, 0x0000
   13a60:	3a48                	.insn	2, 0x3a48
   13a62:	0001                	.insn	2, 0x0001
   13a64:	0000                	.insn	2, 0x0000
   13a66:	0000                	.insn	2, 0x0000
   13a68:	3a58                	.insn	2, 0x3a58
   13a6a:	0001                	.insn	2, 0x0001
   13a6c:	0000                	.insn	2, 0x0000
   13a6e:	0000                	.insn	2, 0x0000
   13a70:	3a58                	.insn	2, 0x3a58
   13a72:	0001                	.insn	2, 0x0001
   13a74:	0000                	.insn	2, 0x0000
   13a76:	0000                	.insn	2, 0x0000
   13a78:	3a68                	.insn	2, 0x3a68
   13a7a:	0001                	.insn	2, 0x0001
   13a7c:	0000                	.insn	2, 0x0000
   13a7e:	0000                	.insn	2, 0x0000
   13a80:	3a68                	.insn	2, 0x3a68
   13a82:	0001                	.insn	2, 0x0001
   13a84:	0000                	.insn	2, 0x0000
   13a86:	0000                	.insn	2, 0x0000
   13a88:	3a78                	.insn	2, 0x3a78
   13a8a:	0001                	.insn	2, 0x0001
   13a8c:	0000                	.insn	2, 0x0000
   13a8e:	0000                	.insn	2, 0x0000
   13a90:	3a78                	.insn	2, 0x3a78
   13a92:	0001                	.insn	2, 0x0001
   13a94:	0000                	.insn	2, 0x0000
   13a96:	0000                	.insn	2, 0x0000
   13a98:	3a88                	.insn	2, 0x3a88
   13a9a:	0001                	.insn	2, 0x0001
   13a9c:	0000                	.insn	2, 0x0000
   13a9e:	0000                	.insn	2, 0x0000
   13aa0:	3a88                	.insn	2, 0x3a88
   13aa2:	0001                	.insn	2, 0x0001
   13aa4:	0000                	.insn	2, 0x0000
   13aa6:	0000                	.insn	2, 0x0000
   13aa8:	3a98                	.insn	2, 0x3a98
   13aaa:	0001                	.insn	2, 0x0001
   13aac:	0000                	.insn	2, 0x0000
   13aae:	0000                	.insn	2, 0x0000
   13ab0:	3a98                	.insn	2, 0x3a98
   13ab2:	0001                	.insn	2, 0x0001
   13ab4:	0000                	.insn	2, 0x0000
   13ab6:	0000                	.insn	2, 0x0000
   13ab8:	3aa8                	.insn	2, 0x3aa8
   13aba:	0001                	.insn	2, 0x0001
   13abc:	0000                	.insn	2, 0x0000
   13abe:	0000                	.insn	2, 0x0000
   13ac0:	3aa8                	.insn	2, 0x3aa8
   13ac2:	0001                	.insn	2, 0x0001
   13ac4:	0000                	.insn	2, 0x0000
   13ac6:	0000                	.insn	2, 0x0000
   13ac8:	3ab8                	.insn	2, 0x3ab8
   13aca:	0001                	.insn	2, 0x0001
   13acc:	0000                	.insn	2, 0x0000
   13ace:	0000                	.insn	2, 0x0000
   13ad0:	3ab8                	.insn	2, 0x3ab8
   13ad2:	0001                	.insn	2, 0x0001
   13ad4:	0000                	.insn	2, 0x0000
   13ad6:	0000                	.insn	2, 0x0000
   13ad8:	3ac8                	.insn	2, 0x3ac8
   13ada:	0001                	.insn	2, 0x0001
   13adc:	0000                	.insn	2, 0x0000
   13ade:	0000                	.insn	2, 0x0000
   13ae0:	3ac8                	.insn	2, 0x3ac8
   13ae2:	0001                	.insn	2, 0x0001
   13ae4:	0000                	.insn	2, 0x0000
   13ae6:	0000                	.insn	2, 0x0000
   13ae8:	3ad8                	.insn	2, 0x3ad8
   13aea:	0001                	.insn	2, 0x0001
   13aec:	0000                	.insn	2, 0x0000
   13aee:	0000                	.insn	2, 0x0000
   13af0:	3ad8                	.insn	2, 0x3ad8
   13af2:	0001                	.insn	2, 0x0001
   13af4:	0000                	.insn	2, 0x0000
   13af6:	0000                	.insn	2, 0x0000
   13af8:	3ae8                	.insn	2, 0x3ae8
   13afa:	0001                	.insn	2, 0x0001
   13afc:	0000                	.insn	2, 0x0000
   13afe:	0000                	.insn	2, 0x0000
   13b00:	3ae8                	.insn	2, 0x3ae8
   13b02:	0001                	.insn	2, 0x0001
   13b04:	0000                	.insn	2, 0x0000
   13b06:	0000                	.insn	2, 0x0000
   13b08:	3af8                	.insn	2, 0x3af8
   13b0a:	0001                	.insn	2, 0x0001
   13b0c:	0000                	.insn	2, 0x0000
   13b0e:	0000                	.insn	2, 0x0000
   13b10:	3af8                	.insn	2, 0x3af8
   13b12:	0001                	.insn	2, 0x0001
   13b14:	0000                	.insn	2, 0x0000
   13b16:	0000                	.insn	2, 0x0000
   13b18:	3b08                	.insn	2, 0x3b08
   13b1a:	0001                	.insn	2, 0x0001
   13b1c:	0000                	.insn	2, 0x0000
   13b1e:	0000                	.insn	2, 0x0000
   13b20:	3b08                	.insn	2, 0x3b08
   13b22:	0001                	.insn	2, 0x0001
   13b24:	0000                	.insn	2, 0x0000
   13b26:	0000                	.insn	2, 0x0000
   13b28:	3b18                	.insn	2, 0x3b18
   13b2a:	0001                	.insn	2, 0x0001
   13b2c:	0000                	.insn	2, 0x0000
   13b2e:	0000                	.insn	2, 0x0000
   13b30:	3b18                	.insn	2, 0x3b18
   13b32:	0001                	.insn	2, 0x0001
   13b34:	0000                	.insn	2, 0x0000
   13b36:	0000                	.insn	2, 0x0000
   13b38:	3b28                	.insn	2, 0x3b28
   13b3a:	0001                	.insn	2, 0x0001
   13b3c:	0000                	.insn	2, 0x0000
   13b3e:	0000                	.insn	2, 0x0000
   13b40:	3b28                	.insn	2, 0x3b28
   13b42:	0001                	.insn	2, 0x0001
   13b44:	0000                	.insn	2, 0x0000
   13b46:	0000                	.insn	2, 0x0000
   13b48:	3b38                	.insn	2, 0x3b38
   13b4a:	0001                	.insn	2, 0x0001
   13b4c:	0000                	.insn	2, 0x0000
   13b4e:	0000                	.insn	2, 0x0000
   13b50:	3b38                	.insn	2, 0x3b38
   13b52:	0001                	.insn	2, 0x0001
   13b54:	0000                	.insn	2, 0x0000
   13b56:	0000                	.insn	2, 0x0000
   13b58:	3b48                	.insn	2, 0x3b48
   13b5a:	0001                	.insn	2, 0x0001
   13b5c:	0000                	.insn	2, 0x0000
   13b5e:	0000                	.insn	2, 0x0000
   13b60:	3b48                	.insn	2, 0x3b48
   13b62:	0001                	.insn	2, 0x0001
   13b64:	0000                	.insn	2, 0x0000
   13b66:	0000                	.insn	2, 0x0000
   13b68:	3b58                	.insn	2, 0x3b58
   13b6a:	0001                	.insn	2, 0x0001
   13b6c:	0000                	.insn	2, 0x0000
   13b6e:	0000                	.insn	2, 0x0000
   13b70:	3b58                	.insn	2, 0x3b58
   13b72:	0001                	.insn	2, 0x0001
   13b74:	0000                	.insn	2, 0x0000
   13b76:	0000                	.insn	2, 0x0000
   13b78:	3b68                	.insn	2, 0x3b68
   13b7a:	0001                	.insn	2, 0x0001
   13b7c:	0000                	.insn	2, 0x0000
   13b7e:	0000                	.insn	2, 0x0000
   13b80:	3b68                	.insn	2, 0x3b68
   13b82:	0001                	.insn	2, 0x0001
   13b84:	0000                	.insn	2, 0x0000
   13b86:	0000                	.insn	2, 0x0000
   13b88:	3b78                	.insn	2, 0x3b78
   13b8a:	0001                	.insn	2, 0x0001
   13b8c:	0000                	.insn	2, 0x0000
   13b8e:	0000                	.insn	2, 0x0000
   13b90:	3b78                	.insn	2, 0x3b78
   13b92:	0001                	.insn	2, 0x0001
   13b94:	0000                	.insn	2, 0x0000
   13b96:	0000                	.insn	2, 0x0000
   13b98:	3b88                	.insn	2, 0x3b88
   13b9a:	0001                	.insn	2, 0x0001
   13b9c:	0000                	.insn	2, 0x0000
   13b9e:	0000                	.insn	2, 0x0000
   13ba0:	3b88                	.insn	2, 0x3b88
   13ba2:	0001                	.insn	2, 0x0001
   13ba4:	0000                	.insn	2, 0x0000
   13ba6:	0000                	.insn	2, 0x0000
   13ba8:	3b98                	.insn	2, 0x3b98
   13baa:	0001                	.insn	2, 0x0001
   13bac:	0000                	.insn	2, 0x0000
   13bae:	0000                	.insn	2, 0x0000
   13bb0:	3b98                	.insn	2, 0x3b98
   13bb2:	0001                	.insn	2, 0x0001
   13bb4:	0000                	.insn	2, 0x0000
   13bb6:	0000                	.insn	2, 0x0000
   13bb8:	3ba8                	.insn	2, 0x3ba8
   13bba:	0001                	.insn	2, 0x0001
   13bbc:	0000                	.insn	2, 0x0000
   13bbe:	0000                	.insn	2, 0x0000
   13bc0:	3ba8                	.insn	2, 0x3ba8
   13bc2:	0001                	.insn	2, 0x0001
   13bc4:	0000                	.insn	2, 0x0000
   13bc6:	0000                	.insn	2, 0x0000
   13bc8:	3bb8                	.insn	2, 0x3bb8
   13bca:	0001                	.insn	2, 0x0001
   13bcc:	0000                	.insn	2, 0x0000
   13bce:	0000                	.insn	2, 0x0000
   13bd0:	3bb8                	.insn	2, 0x3bb8
   13bd2:	0001                	.insn	2, 0x0001
   13bd4:	0000                	.insn	2, 0x0000
   13bd6:	0000                	.insn	2, 0x0000
   13bd8:	3bc8                	.insn	2, 0x3bc8
   13bda:	0001                	.insn	2, 0x0001
   13bdc:	0000                	.insn	2, 0x0000
   13bde:	0000                	.insn	2, 0x0000
   13be0:	3bc8                	.insn	2, 0x3bc8
   13be2:	0001                	.insn	2, 0x0001
   13be4:	0000                	.insn	2, 0x0000
   13be6:	0000                	.insn	2, 0x0000
   13be8:	3bd8                	.insn	2, 0x3bd8
   13bea:	0001                	.insn	2, 0x0001
   13bec:	0000                	.insn	2, 0x0000
   13bee:	0000                	.insn	2, 0x0000
   13bf0:	3bd8                	.insn	2, 0x3bd8
   13bf2:	0001                	.insn	2, 0x0001
   13bf4:	0000                	.insn	2, 0x0000
   13bf6:	0000                	.insn	2, 0x0000
   13bf8:	3be8                	.insn	2, 0x3be8
   13bfa:	0001                	.insn	2, 0x0001
   13bfc:	0000                	.insn	2, 0x0000
   13bfe:	0000                	.insn	2, 0x0000
   13c00:	3be8                	.insn	2, 0x3be8
   13c02:	0001                	.insn	2, 0x0001
   13c04:	0000                	.insn	2, 0x0000
   13c06:	0000                	.insn	2, 0x0000
   13c08:	3bf8                	.insn	2, 0x3bf8
   13c0a:	0001                	.insn	2, 0x0001
   13c0c:	0000                	.insn	2, 0x0000
   13c0e:	0000                	.insn	2, 0x0000
   13c10:	3bf8                	.insn	2, 0x3bf8
   13c12:	0001                	.insn	2, 0x0001
   13c14:	0000                	.insn	2, 0x0000
   13c16:	0000                	.insn	2, 0x0000
   13c18:	3c08                	.insn	2, 0x3c08
   13c1a:	0001                	.insn	2, 0x0001
   13c1c:	0000                	.insn	2, 0x0000
   13c1e:	0000                	.insn	2, 0x0000
   13c20:	3c08                	.insn	2, 0x3c08
   13c22:	0001                	.insn	2, 0x0001
   13c24:	0000                	.insn	2, 0x0000
   13c26:	0000                	.insn	2, 0x0000
   13c28:	3c18                	.insn	2, 0x3c18
   13c2a:	0001                	.insn	2, 0x0001
   13c2c:	0000                	.insn	2, 0x0000
   13c2e:	0000                	.insn	2, 0x0000
   13c30:	3c18                	.insn	2, 0x3c18
   13c32:	0001                	.insn	2, 0x0001
   13c34:	0000                	.insn	2, 0x0000
   13c36:	0000                	.insn	2, 0x0000
   13c38:	3c28                	.insn	2, 0x3c28
   13c3a:	0001                	.insn	2, 0x0001
   13c3c:	0000                	.insn	2, 0x0000
   13c3e:	0000                	.insn	2, 0x0000
   13c40:	3c28                	.insn	2, 0x3c28
   13c42:	0001                	.insn	2, 0x0001
   13c44:	0000                	.insn	2, 0x0000
   13c46:	0000                	.insn	2, 0x0000
   13c48:	3c38                	.insn	2, 0x3c38
   13c4a:	0001                	.insn	2, 0x0001
   13c4c:	0000                	.insn	2, 0x0000
   13c4e:	0000                	.insn	2, 0x0000
   13c50:	3c38                	.insn	2, 0x3c38
   13c52:	0001                	.insn	2, 0x0001
   13c54:	0000                	.insn	2, 0x0000
   13c56:	0000                	.insn	2, 0x0000
   13c58:	3c48                	.insn	2, 0x3c48
   13c5a:	0001                	.insn	2, 0x0001
   13c5c:	0000                	.insn	2, 0x0000
   13c5e:	0000                	.insn	2, 0x0000
   13c60:	3c48                	.insn	2, 0x3c48
   13c62:	0001                	.insn	2, 0x0001
   13c64:	0000                	.insn	2, 0x0000
   13c66:	0000                	.insn	2, 0x0000
   13c68:	3c58                	.insn	2, 0x3c58
   13c6a:	0001                	.insn	2, 0x0001
   13c6c:	0000                	.insn	2, 0x0000
   13c6e:	0000                	.insn	2, 0x0000
   13c70:	3c58                	.insn	2, 0x3c58
   13c72:	0001                	.insn	2, 0x0001
   13c74:	0000                	.insn	2, 0x0000
   13c76:	0000                	.insn	2, 0x0000
   13c78:	3c68                	.insn	2, 0x3c68
   13c7a:	0001                	.insn	2, 0x0001
   13c7c:	0000                	.insn	2, 0x0000
   13c7e:	0000                	.insn	2, 0x0000
   13c80:	3c68                	.insn	2, 0x3c68
   13c82:	0001                	.insn	2, 0x0001
   13c84:	0000                	.insn	2, 0x0000
   13c86:	0000                	.insn	2, 0x0000
   13c88:	3c78                	.insn	2, 0x3c78
   13c8a:	0001                	.insn	2, 0x0001
   13c8c:	0000                	.insn	2, 0x0000
   13c8e:	0000                	.insn	2, 0x0000
   13c90:	3c78                	.insn	2, 0x3c78
   13c92:	0001                	.insn	2, 0x0001
   13c94:	0000                	.insn	2, 0x0000
   13c96:	0000                	.insn	2, 0x0000
   13c98:	3c88                	.insn	2, 0x3c88
   13c9a:	0001                	.insn	2, 0x0001
   13c9c:	0000                	.insn	2, 0x0000
   13c9e:	0000                	.insn	2, 0x0000
   13ca0:	3c88                	.insn	2, 0x3c88
   13ca2:	0001                	.insn	2, 0x0001
   13ca4:	0000                	.insn	2, 0x0000
   13ca6:	0000                	.insn	2, 0x0000
   13ca8:	3c98                	.insn	2, 0x3c98
   13caa:	0001                	.insn	2, 0x0001
   13cac:	0000                	.insn	2, 0x0000
   13cae:	0000                	.insn	2, 0x0000
   13cb0:	3c98                	.insn	2, 0x3c98
   13cb2:	0001                	.insn	2, 0x0001
   13cb4:	0000                	.insn	2, 0x0000
   13cb6:	0000                	.insn	2, 0x0000
   13cb8:	3ca8                	.insn	2, 0x3ca8
   13cba:	0001                	.insn	2, 0x0001
   13cbc:	0000                	.insn	2, 0x0000
   13cbe:	0000                	.insn	2, 0x0000
   13cc0:	3ca8                	.insn	2, 0x3ca8
   13cc2:	0001                	.insn	2, 0x0001
   13cc4:	0000                	.insn	2, 0x0000
   13cc6:	0000                	.insn	2, 0x0000
   13cc8:	3cb8                	.insn	2, 0x3cb8
   13cca:	0001                	.insn	2, 0x0001
   13ccc:	0000                	.insn	2, 0x0000
   13cce:	0000                	.insn	2, 0x0000
   13cd0:	3cb8                	.insn	2, 0x3cb8
   13cd2:	0001                	.insn	2, 0x0001
   13cd4:	0000                	.insn	2, 0x0000
   13cd6:	0000                	.insn	2, 0x0000
   13cd8:	3cc8                	.insn	2, 0x3cc8
   13cda:	0001                	.insn	2, 0x0001
   13cdc:	0000                	.insn	2, 0x0000
   13cde:	0000                	.insn	2, 0x0000
   13ce0:	3cc8                	.insn	2, 0x3cc8
   13ce2:	0001                	.insn	2, 0x0001
   13ce4:	0000                	.insn	2, 0x0000
   13ce6:	0000                	.insn	2, 0x0000
   13ce8:	3cd8                	.insn	2, 0x3cd8
   13cea:	0001                	.insn	2, 0x0001
   13cec:	0000                	.insn	2, 0x0000
   13cee:	0000                	.insn	2, 0x0000
   13cf0:	3cd8                	.insn	2, 0x3cd8
   13cf2:	0001                	.insn	2, 0x0001
   13cf4:	0000                	.insn	2, 0x0000
   13cf6:	0000                	.insn	2, 0x0000
   13cf8:	3ce8                	.insn	2, 0x3ce8
   13cfa:	0001                	.insn	2, 0x0001
   13cfc:	0000                	.insn	2, 0x0000
   13cfe:	0000                	.insn	2, 0x0000
   13d00:	3ce8                	.insn	2, 0x3ce8
   13d02:	0001                	.insn	2, 0x0001
   13d04:	0000                	.insn	2, 0x0000
   13d06:	0000                	.insn	2, 0x0000
   13d08:	3cf8                	.insn	2, 0x3cf8
   13d0a:	0001                	.insn	2, 0x0001
   13d0c:	0000                	.insn	2, 0x0000
   13d0e:	0000                	.insn	2, 0x0000
   13d10:	3cf8                	.insn	2, 0x3cf8
   13d12:	0001                	.insn	2, 0x0001
   13d14:	0000                	.insn	2, 0x0000
   13d16:	0000                	.insn	2, 0x0000
   13d18:	3d08                	.insn	2, 0x3d08
   13d1a:	0001                	.insn	2, 0x0001
   13d1c:	0000                	.insn	2, 0x0000
   13d1e:	0000                	.insn	2, 0x0000
   13d20:	3d08                	.insn	2, 0x3d08
   13d22:	0001                	.insn	2, 0x0001
   13d24:	0000                	.insn	2, 0x0000
   13d26:	0000                	.insn	2, 0x0000
   13d28:	3d18                	.insn	2, 0x3d18
   13d2a:	0001                	.insn	2, 0x0001
   13d2c:	0000                	.insn	2, 0x0000
   13d2e:	0000                	.insn	2, 0x0000
   13d30:	3d18                	.insn	2, 0x3d18
   13d32:	0001                	.insn	2, 0x0001
   13d34:	0000                	.insn	2, 0x0000
	...

Disassembly of section .sdata:

0000000000013d38 <__dso_handle>:
	...

0000000000013d40 <_impure_ptr>:
   13d40:	33d0                	.insn	2, 0x33d0
   13d42:	0001                	.insn	2, 0x0001
   13d44:	0000                	.insn	2, 0x0000
	...

0000000000013d48 <__malloc_sbrk_base>:
   13d48:	ffff                	.insn	2, 0xffff
   13d4a:	ffff                	.insn	2, 0xffff
   13d4c:	ffff                	.insn	2, 0xffff
   13d4e:	ffff                	.insn	2, 0xffff

0000000000013d50 <__malloc_trim_threshold>:
   13d50:	0000                	.insn	2, 0x0000
   13d52:	0002                	.insn	2, 0x0002
   13d54:	0000                	.insn	2, 0x0000
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

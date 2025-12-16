
test/build/without-syscall/qsort.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	48d000ef          	jal	10dc0 <__call_exitprocs>
   10138:	1981b783          	ld	a5,408(gp) # 13d50 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	0d4020ef          	jal	1221c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	0e050513          	addi	a0,a0,224 # 120e0 <__libc_fini_array>
   1015c:	59d0006f          	j	10ef8 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00004197          	auipc	gp,0x4
   10168:	a5418193          	addi	gp,gp,-1452 # 13bb8 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	be450513          	addi	a0,a0,-1052 # 13d50 <__stdio_exit_handler>
   10174:	00004617          	auipc	a2,0x4
   10178:	24460613          	addi	a2,a2,580 # 143b8 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	361000ef          	jal	10ce4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	d7050513          	addi	a0,a0,-656 # 10ef8 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	f4c50513          	addi	a0,a0,-180 # 120e0 <__libc_fini_array>
   1019c:	55d000ef          	jal	10ef8 <atexit>
   101a0:	2b1000ef          	jal	10c50 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	230000ef          	jal	103e0 <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1d01c783          	lbu	a5,464(gp) # 13d88 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00012537          	lui	a0,0x12
   101d8:	39050513          	addi	a0,a0,912 # 12390 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x10120>
   101e4:	00100793          	li	a5,1
   101e8:	1cf18823          	sb	a5,464(gp) # 13d88 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00012537          	lui	a0,0x12
   10208:	1d818593          	addi	a1,gp,472 # 13d90 <object.0>
   1020c:	39050513          	addi	a0,a0,912 # 12390 <__EH_FRAME_BEGIN__>
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
   10240:	20818713          	addi	a4,gp,520 # 13dc0 <result>
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
   102a8:	20818713          	addi	a4,gp,520 # 13dc0 <result>
   102ac:	fe842783          	lw	a5,-24(s0)
   102b0:	00279793          	slli	a5,a5,0x2
   102b4:	00f707b3          	add	a5,a4,a5
   102b8:	0007a783          	lw	a5,0(a5)
   102bc:	fe442703          	lw	a4,-28(s0)
   102c0:	0007071b          	sext.w	a4,a4
   102c4:	fce7d0e3          	bge	a5,a4,10284 <qsort+0x68>
   102c8:	20818713          	addi	a4,gp,520 # 13dc0 <result>
   102cc:	fe842783          	lw	a5,-24(s0)
   102d0:	00279793          	slli	a5,a5,0x2
   102d4:	00f707b3          	add	a5,a4,a5
   102d8:	0007a703          	lw	a4,0(a5)
   102dc:	20818693          	addi	a3,gp,520 # 13dc0 <result>
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
   10318:	20818713          	addi	a4,gp,520 # 13dc0 <result>
   1031c:	fec42783          	lw	a5,-20(s0)
   10320:	00279793          	slli	a5,a5,0x2
   10324:	00f707b3          	add	a5,a4,a5
   10328:	0007a783          	lw	a5,0(a5)
   1032c:	fe442703          	lw	a4,-28(s0)
   10330:	0007071b          	sext.w	a4,a4
   10334:	fcf750e3          	bge	a4,a5,102f4 <qsort+0xd8>
   10338:	20818713          	addi	a4,gp,520 # 13dc0 <result>
   1033c:	fec42783          	lw	a5,-20(s0)
   10340:	00279793          	slli	a5,a5,0x2
   10344:	00f707b3          	add	a5,a4,a5
   10348:	0007a703          	lw	a4,0(a5)
   1034c:	20818693          	addi	a3,gp,520 # 13dc0 <result>
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
   10378:	20818713          	addi	a4,gp,520 # 13dc0 <result>
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
   103fc:	20818713          	addi	a4,gp,520 # 13dc0 <result>
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
   10464:	3b060613          	addi	a2,a2,944 # 133b0 <__sglue>
   10468:	c2058593          	addi	a1,a1,-992 # 11c20 <_fclose_r>
   1046c:	3c850513          	addi	a0,a0,968 # 133c8 <_impure_data>
   10470:	3440006f          	j	107b4 <_fwalk_sglue>

0000000000010474 <cleanup_stdio>:
   10474:	00853583          	ld	a1,8(a0)
   10478:	ff010113          	addi	sp,sp,-16
   1047c:	00813023          	sd	s0,0(sp)
   10480:	00113423          	sd	ra,8(sp)
   10484:	2b018793          	addi	a5,gp,688 # 13e68 <__sf>
   10488:	00050413          	mv	s0,a0
   1048c:	00f58463          	beq	a1,a5,10494 <cleanup_stdio+0x20>
   10490:	790010ef          	jal	11c20 <_fclose_r>
   10494:	01043583          	ld	a1,16(s0)
   10498:	36018793          	addi	a5,gp,864 # 13f18 <__sf+0xb0>
   1049c:	00f58663          	beq	a1,a5,104a8 <cleanup_stdio+0x34>
   104a0:	00040513          	mv	a0,s0
   104a4:	77c010ef          	jal	11c20 <_fclose_r>
   104a8:	01843583          	ld	a1,24(s0)
   104ac:	41018793          	addi	a5,gp,1040 # 13fc8 <__sf+0x160>
   104b0:	00f58c63          	beq	a1,a5,104c8 <cleanup_stdio+0x54>
   104b4:	00040513          	mv	a0,s0
   104b8:	00013403          	ld	s0,0(sp)
   104bc:	00813083          	ld	ra,8(sp)
   104c0:	01010113          	addi	sp,sp,16
   104c4:	75c0106f          	j	11c20 <_fclose_r>
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
   104f0:	2b018413          	addi	s0,gp,688 # 13e68 <__sf>
   104f4:	02113423          	sd	ra,40(sp)
   104f8:	00913c23          	sd	s1,24(sp)
   104fc:	01213823          	sd	s2,16(sp)
   10500:	01313423          	sd	s3,8(sp)
   10504:	01413023          	sd	s4,0(sp)
   10508:	18f1bc23          	sd	a5,408(gp) # 13d50 <__stdio_exit_handler>
   1050c:	00800613          	li	a2,8
   10510:	00400793          	li	a5,4
   10514:	00000593          	li	a1,0
   10518:	35418513          	addi	a0,gp,852 # 13f0c <__sf+0xa4>
   1051c:	00f42823          	sw	a5,16(s0)
   10520:	00043023          	sd	zero,0(s0)
   10524:	00043423          	sd	zero,8(s0)
   10528:	0a042623          	sw	zero,172(s0)
   1052c:	00043c23          	sd	zero,24(s0)
   10530:	02042023          	sw	zero,32(s0)
   10534:	02042423          	sw	zero,40(s0)
   10538:	7ac000ef          	jal	10ce4 <memset>
   1053c:	00011a37          	lui	s4,0x11
   10540:	000119b7          	lui	s3,0x11
   10544:	00011937          	lui	s2,0x11
   10548:	000114b7          	lui	s1,0x11
   1054c:	000107b7          	lui	a5,0x10
   10550:	880a0a13          	addi	s4,s4,-1920 # 10880 <__sread>
   10554:	8e498993          	addi	s3,s3,-1820 # 108e4 <__swrite>
   10558:	96c90913          	addi	s2,s2,-1684 # 1096c <__sseek>
   1055c:	9d048493          	addi	s1,s1,-1584 # 109d0 <__sclose>
   10560:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10564:	00800613          	li	a2,8
   10568:	00000593          	li	a1,0
   1056c:	40418513          	addi	a0,gp,1028 # 13fbc <__sf+0x154>
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
   105a0:	744000ef          	jal	10ce4 <memset>
   105a4:	000207b7          	lui	a5,0x20
   105a8:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xbc5a>
   105ac:	36018713          	addi	a4,gp,864 # 13f18 <__sf+0xb0>
   105b0:	4b418513          	addi	a0,gp,1204 # 1406c <__sf+0x204>
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
   105ec:	6f8000ef          	jal	10ce4 <memset>
   105f0:	41018793          	addi	a5,gp,1040 # 13fc8 <__sf+0x160>
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
   10628:	1981b783          	ld	a5,408(gp) # 13d50 <__stdio_exit_handler>
   1062c:	fd010113          	addi	sp,sp,-48
   10630:	00913c23          	sd	s1,24(sp)
   10634:	02113423          	sd	ra,40(sp)
   10638:	02813023          	sd	s0,32(sp)
   1063c:	00050493          	mv	s1,a0
   10640:	10078063          	beqz	a5,10740 <__sfp+0x118>
   10644:	000136b7          	lui	a3,0x13
   10648:	3b068693          	addi	a3,a3,944 # 133b0 <__sglue>
   1064c:	0b000813          	li	a6,176
   10650:	0086a703          	lw	a4,8(a3)
   10654:	08e05463          	blez	a4,106dc <__sfp+0xb4>
   10658:	02071713          	slli	a4,a4,0x20
   1065c:	02075713          	srli	a4,a4,0x20
   10660:	03070733          	mul	a4,a4,a6
   10664:	0106b403          	ld	s0,16(a3)
   10668:	00e40733          	add	a4,s0,a4
   1066c:	00c0006f          	j	10678 <__sfp+0x50>
   10670:	0b040413          	addi	s0,s0,176
   10674:	06e40463          	beq	s0,a4,106dc <__sfp+0xb4>
   10678:	01041783          	lh	a5,16(s0)
   1067c:	fe079ae3          	bnez	a5,10670 <__sfp+0x48>
   10680:	ffff07b7          	lui	a5,0xffff0
   10684:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdbc49>
   10688:	00f42823          	sw	a5,16(s0)
   1068c:	0a042623          	sw	zero,172(s0)
   10690:	00043023          	sd	zero,0(s0)
   10694:	00043423          	sd	zero,8(s0)
   10698:	00043c23          	sd	zero,24(s0)
   1069c:	02042023          	sw	zero,32(s0)
   106a0:	02042423          	sw	zero,40(s0)
   106a4:	00800613          	li	a2,8
   106a8:	00000593          	li	a1,0
   106ac:	0a440513          	addi	a0,s0,164
   106b0:	634000ef          	jal	10ce4 <memset>
   106b4:	04043c23          	sd	zero,88(s0)
   106b8:	06042023          	sw	zero,96(s0)
   106bc:	06043c23          	sd	zero,120(s0)
   106c0:	08042023          	sw	zero,128(s0)
   106c4:	02813083          	ld	ra,40(sp)
   106c8:	00040513          	mv	a0,s0
   106cc:	02013403          	ld	s0,32(sp)
   106d0:	01813483          	ld	s1,24(sp)
   106d4:	03010113          	addi	sp,sp,48
   106d8:	00008067          	ret
   106dc:	0006b403          	ld	s0,0(a3)
   106e0:	00040663          	beqz	s0,106ec <__sfp+0xc4>
   106e4:	00040693          	mv	a3,s0
   106e8:	f69ff06f          	j	10650 <__sfp+0x28>
   106ec:	2d800593          	li	a1,728
   106f0:	00048513          	mv	a0,s1
   106f4:	00d13423          	sd	a3,8(sp)
   106f8:	43d000ef          	jal	11334 <_malloc_r>
   106fc:	00813683          	ld	a3,8(sp)
   10700:	00050413          	mv	s0,a0
   10704:	04050263          	beqz	a0,10748 <__sfp+0x120>
   10708:	00400793          	li	a5,4
   1070c:	00f52423          	sw	a5,8(a0)
   10710:	01850513          	addi	a0,a0,24
   10714:	00043023          	sd	zero,0(s0)
   10718:	00a43823          	sd	a0,16(s0)
   1071c:	2c000613          	li	a2,704
   10720:	00000593          	li	a1,0
   10724:	00d13423          	sd	a3,8(sp)
   10728:	5bc000ef          	jal	10ce4 <memset>
   1072c:	00813683          	ld	a3,8(sp)
   10730:	0b000813          	li	a6,176
   10734:	0086b023          	sd	s0,0(a3)
   10738:	00040693          	mv	a3,s0
   1073c:	f15ff06f          	j	10650 <__sfp+0x28>
   10740:	da1ff0ef          	jal	104e0 <global_stdio_init.part.0>
   10744:	f01ff06f          	j	10644 <__sfp+0x1c>
   10748:	0006b023          	sd	zero,0(a3)
   1074c:	00c00793          	li	a5,12
   10750:	00f4a023          	sw	a5,0(s1)
   10754:	f71ff06f          	j	106c4 <__sfp+0x9c>

0000000000010758 <__sinit>:
   10758:	04853783          	ld	a5,72(a0)
   1075c:	00078463          	beqz	a5,10764 <__sinit+0xc>
   10760:	00008067          	ret
   10764:	000107b7          	lui	a5,0x10
   10768:	1981b703          	ld	a4,408(gp) # 13d50 <__stdio_exit_handler>
   1076c:	47478793          	addi	a5,a5,1140 # 10474 <cleanup_stdio>
   10770:	04f53423          	sd	a5,72(a0)
   10774:	fe0716e3          	bnez	a4,10760 <__sinit+0x8>
   10778:	d69ff06f          	j	104e0 <global_stdio_init.part.0>

000000000001077c <__sfp_lock_acquire>:
   1077c:	00008067          	ret

0000000000010780 <__sfp_lock_release>:
   10780:	00008067          	ret

0000000000010784 <__fp_lock_all>:
   10784:	00013637          	lui	a2,0x13
   10788:	000105b7          	lui	a1,0x10
   1078c:	3b060613          	addi	a2,a2,944 # 133b0 <__sglue>
   10790:	45058593          	addi	a1,a1,1104 # 10450 <__fp_lock>
   10794:	00000513          	li	a0,0
   10798:	01c0006f          	j	107b4 <_fwalk_sglue>

000000000001079c <__fp_unlock_all>:
   1079c:	00013637          	lui	a2,0x13
   107a0:	000105b7          	lui	a1,0x10
   107a4:	3b060613          	addi	a2,a2,944 # 133b0 <__sglue>
   107a8:	4d858593          	addi	a1,a1,1240 # 104d8 <__fp_unlock>
   107ac:	00000513          	li	a0,0
   107b0:	0040006f          	j	107b4 <_fwalk_sglue>

00000000000107b4 <_fwalk_sglue>:
   107b4:	fb010113          	addi	sp,sp,-80
   107b8:	03213823          	sd	s2,48(sp)
   107bc:	03313423          	sd	s3,40(sp)
   107c0:	03413023          	sd	s4,32(sp)
   107c4:	01513c23          	sd	s5,24(sp)
   107c8:	01613823          	sd	s6,16(sp)
   107cc:	01713423          	sd	s7,8(sp)
   107d0:	01813023          	sd	s8,0(sp)
   107d4:	04113423          	sd	ra,72(sp)
   107d8:	04813023          	sd	s0,64(sp)
   107dc:	02913c23          	sd	s1,56(sp)
   107e0:	00060993          	mv	s3,a2
   107e4:	00050a93          	mv	s5,a0
   107e8:	00058b13          	mv	s6,a1
   107ec:	00000913          	li	s2,0
   107f0:	0b000b93          	li	s7,176
   107f4:	00100c13          	li	s8,1
   107f8:	fff00a13          	li	s4,-1
   107fc:	0089a483          	lw	s1,8(s3)
   10800:	04905263          	blez	s1,10844 <_fwalk_sglue+0x90>
   10804:	02049493          	slli	s1,s1,0x20
   10808:	0204d493          	srli	s1,s1,0x20
   1080c:	037484b3          	mul	s1,s1,s7
   10810:	0109b403          	ld	s0,16(s3)
   10814:	009404b3          	add	s1,s0,s1
   10818:	01045783          	lhu	a5,16(s0)
   1081c:	02fc7063          	bgeu	s8,a5,1083c <_fwalk_sglue+0x88>
   10820:	01241783          	lh	a5,18(s0)
   10824:	00040593          	mv	a1,s0
   10828:	000a8513          	mv	a0,s5
   1082c:	01478863          	beq	a5,s4,1083c <_fwalk_sglue+0x88>
   10830:	000b00e7          	jalr	s6
   10834:	01256933          	or	s2,a0,s2
   10838:	0009091b          	sext.w	s2,s2
   1083c:	0b040413          	addi	s0,s0,176
   10840:	fc941ce3          	bne	s0,s1,10818 <_fwalk_sglue+0x64>
   10844:	0009b983          	ld	s3,0(s3)
   10848:	fa099ae3          	bnez	s3,107fc <_fwalk_sglue+0x48>
   1084c:	04813083          	ld	ra,72(sp)
   10850:	04013403          	ld	s0,64(sp)
   10854:	03813483          	ld	s1,56(sp)
   10858:	02813983          	ld	s3,40(sp)
   1085c:	02013a03          	ld	s4,32(sp)
   10860:	01813a83          	ld	s5,24(sp)
   10864:	01013b03          	ld	s6,16(sp)
   10868:	00813b83          	ld	s7,8(sp)
   1086c:	00013c03          	ld	s8,0(sp)
   10870:	00090513          	mv	a0,s2
   10874:	03013903          	ld	s2,48(sp)
   10878:	05010113          	addi	sp,sp,80
   1087c:	00008067          	ret

0000000000010880 <__sread>:
   10880:	ff010113          	addi	sp,sp,-16
   10884:	00813023          	sd	s0,0(sp)
   10888:	00058413          	mv	s0,a1
   1088c:	01259583          	lh	a1,18(a1)
   10890:	00113423          	sd	ra,8(sp)
   10894:	2ec000ef          	jal	10b80 <_read_r>
   10898:	02054063          	bltz	a0,108b8 <__sread+0x38>
   1089c:	09043783          	ld	a5,144(s0)
   108a0:	00813083          	ld	ra,8(sp)
   108a4:	00a787b3          	add	a5,a5,a0
   108a8:	08f43823          	sd	a5,144(s0)
   108ac:	00013403          	ld	s0,0(sp)
   108b0:	01010113          	addi	sp,sp,16
   108b4:	00008067          	ret
   108b8:	01045783          	lhu	a5,16(s0)
   108bc:	fffff737          	lui	a4,0xfffff
   108c0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeac47>
   108c4:	00e7f7b3          	and	a5,a5,a4
   108c8:	00813083          	ld	ra,8(sp)
   108cc:	00f41823          	sh	a5,16(s0)
   108d0:	00013403          	ld	s0,0(sp)
   108d4:	01010113          	addi	sp,sp,16
   108d8:	00008067          	ret

00000000000108dc <__seofread>:
   108dc:	00000513          	li	a0,0
   108e0:	00008067          	ret

00000000000108e4 <__swrite>:
   108e4:	01059783          	lh	a5,16(a1)
   108e8:	fd010113          	addi	sp,sp,-48
   108ec:	00068313          	mv	t1,a3
   108f0:	02113423          	sd	ra,40(sp)
   108f4:	1007f693          	andi	a3,a5,256
   108f8:	00058713          	mv	a4,a1
   108fc:	00060893          	mv	a7,a2
   10900:	00050813          	mv	a6,a0
   10904:	02069863          	bnez	a3,10934 <__swrite+0x50>
   10908:	fffff6b7          	lui	a3,0xfffff
   1090c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeac47>
   10910:	02813083          	ld	ra,40(sp)
   10914:	00d7f7b3          	and	a5,a5,a3
   10918:	01271583          	lh	a1,18(a4)
   1091c:	00f71823          	sh	a5,16(a4)
   10920:	00030693          	mv	a3,t1
   10924:	00088613          	mv	a2,a7
   10928:	00080513          	mv	a0,a6
   1092c:	03010113          	addi	sp,sp,48
   10930:	2b80006f          	j	10be8 <_write_r>
   10934:	01259583          	lh	a1,18(a1)
   10938:	00c13823          	sd	a2,16(sp)
   1093c:	00200693          	li	a3,2
   10940:	00000613          	li	a2,0
   10944:	00613c23          	sd	t1,24(sp)
   10948:	00e13023          	sd	a4,0(sp)
   1094c:	00a13423          	sd	a0,8(sp)
   10950:	1c8000ef          	jal	10b18 <_lseek_r>
   10954:	00013703          	ld	a4,0(sp)
   10958:	01813303          	ld	t1,24(sp)
   1095c:	01013883          	ld	a7,16(sp)
   10960:	01071783          	lh	a5,16(a4)
   10964:	00813803          	ld	a6,8(sp)
   10968:	fa1ff06f          	j	10908 <__swrite+0x24>

000000000001096c <__sseek>:
   1096c:	ff010113          	addi	sp,sp,-16
   10970:	00813023          	sd	s0,0(sp)
   10974:	00058413          	mv	s0,a1
   10978:	01259583          	lh	a1,18(a1)
   1097c:	00113423          	sd	ra,8(sp)
   10980:	198000ef          	jal	10b18 <_lseek_r>
   10984:	fff00713          	li	a4,-1
   10988:	01041783          	lh	a5,16(s0)
   1098c:	02e50263          	beq	a0,a4,109b0 <__sseek+0x44>
   10990:	00001737          	lui	a4,0x1
   10994:	00e7e7b3          	or	a5,a5,a4
   10998:	00813083          	ld	ra,8(sp)
   1099c:	08a43823          	sd	a0,144(s0)
   109a0:	00f41823          	sh	a5,16(s0)
   109a4:	00013403          	ld	s0,0(sp)
   109a8:	01010113          	addi	sp,sp,16
   109ac:	00008067          	ret
   109b0:	80050713          	addi	a4,a0,-2048
   109b4:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   109b8:	00e7f7b3          	and	a5,a5,a4
   109bc:	00813083          	ld	ra,8(sp)
   109c0:	00f41823          	sh	a5,16(s0)
   109c4:	00013403          	ld	s0,0(sp)
   109c8:	01010113          	addi	sp,sp,16
   109cc:	00008067          	ret

00000000000109d0 <__sclose>:
   109d0:	01259583          	lh	a1,18(a1)
   109d4:	0040006f          	j	109d8 <_close_r>

00000000000109d8 <_close_r>:
   109d8:	fe010113          	addi	sp,sp,-32
   109dc:	00813823          	sd	s0,16(sp)
   109e0:	00913423          	sd	s1,8(sp)
   109e4:	00050493          	mv	s1,a0
   109e8:	00058513          	mv	a0,a1
   109ec:	00113c23          	sd	ra,24(sp)
   109f0:	1a01a023          	sw	zero,416(gp) # 13d58 <errno>
   109f4:	7e8010ef          	jal	121dc <_close>
   109f8:	fff00793          	li	a5,-1
   109fc:	00f50c63          	beq	a0,a5,10a14 <_close_r+0x3c>
   10a00:	01813083          	ld	ra,24(sp)
   10a04:	01013403          	ld	s0,16(sp)
   10a08:	00813483          	ld	s1,8(sp)
   10a0c:	02010113          	addi	sp,sp,32
   10a10:	00008067          	ret
   10a14:	1a01a783          	lw	a5,416(gp) # 13d58 <errno>
   10a18:	fe0784e3          	beqz	a5,10a00 <_close_r+0x28>
   10a1c:	01813083          	ld	ra,24(sp)
   10a20:	01013403          	ld	s0,16(sp)
   10a24:	00f4a023          	sw	a5,0(s1)
   10a28:	00813483          	ld	s1,8(sp)
   10a2c:	02010113          	addi	sp,sp,32
   10a30:	00008067          	ret

0000000000010a34 <_reclaim_reent>:
   10a34:	1801b783          	ld	a5,384(gp) # 13d38 <_impure_ptr>
   10a38:	0ca78e63          	beq	a5,a0,10b14 <_reclaim_reent+0xe0>
   10a3c:	06853583          	ld	a1,104(a0)
   10a40:	fd010113          	addi	sp,sp,-48
   10a44:	00913c23          	sd	s1,24(sp)
   10a48:	02113423          	sd	ra,40(sp)
   10a4c:	02813023          	sd	s0,32(sp)
   10a50:	00050493          	mv	s1,a0
   10a54:	04058863          	beqz	a1,10aa4 <_reclaim_reent+0x70>
   10a58:	01213823          	sd	s2,16(sp)
   10a5c:	01313423          	sd	s3,8(sp)
   10a60:	00000913          	li	s2,0
   10a64:	20000993          	li	s3,512
   10a68:	012587b3          	add	a5,a1,s2
   10a6c:	0007b403          	ld	s0,0(a5)
   10a70:	00040e63          	beqz	s0,10a8c <_reclaim_reent+0x58>
   10a74:	00040593          	mv	a1,s0
   10a78:	00043403          	ld	s0,0(s0)
   10a7c:	00048513          	mv	a0,s1
   10a80:	5b0000ef          	jal	11030 <_free_r>
   10a84:	fe0418e3          	bnez	s0,10a74 <_reclaim_reent+0x40>
   10a88:	0684b583          	ld	a1,104(s1)
   10a8c:	00890913          	addi	s2,s2,8
   10a90:	fd391ce3          	bne	s2,s3,10a68 <_reclaim_reent+0x34>
   10a94:	00048513          	mv	a0,s1
   10a98:	598000ef          	jal	11030 <_free_r>
   10a9c:	01013903          	ld	s2,16(sp)
   10aa0:	00813983          	ld	s3,8(sp)
   10aa4:	0504b583          	ld	a1,80(s1)
   10aa8:	00058663          	beqz	a1,10ab4 <_reclaim_reent+0x80>
   10aac:	00048513          	mv	a0,s1
   10ab0:	580000ef          	jal	11030 <_free_r>
   10ab4:	0604b403          	ld	s0,96(s1)
   10ab8:	00040c63          	beqz	s0,10ad0 <_reclaim_reent+0x9c>
   10abc:	00040593          	mv	a1,s0
   10ac0:	00043403          	ld	s0,0(s0)
   10ac4:	00048513          	mv	a0,s1
   10ac8:	568000ef          	jal	11030 <_free_r>
   10acc:	fe0418e3          	bnez	s0,10abc <_reclaim_reent+0x88>
   10ad0:	0784b583          	ld	a1,120(s1)
   10ad4:	00058663          	beqz	a1,10ae0 <_reclaim_reent+0xac>
   10ad8:	00048513          	mv	a0,s1
   10adc:	554000ef          	jal	11030 <_free_r>
   10ae0:	0484b783          	ld	a5,72(s1)
   10ae4:	00078e63          	beqz	a5,10b00 <_reclaim_reent+0xcc>
   10ae8:	02013403          	ld	s0,32(sp)
   10aec:	02813083          	ld	ra,40(sp)
   10af0:	00048513          	mv	a0,s1
   10af4:	01813483          	ld	s1,24(sp)
   10af8:	03010113          	addi	sp,sp,48
   10afc:	00078067          	jr	a5
   10b00:	02813083          	ld	ra,40(sp)
   10b04:	02013403          	ld	s0,32(sp)
   10b08:	01813483          	ld	s1,24(sp)
   10b0c:	03010113          	addi	sp,sp,48
   10b10:	00008067          	ret
   10b14:	00008067          	ret

0000000000010b18 <_lseek_r>:
   10b18:	fe010113          	addi	sp,sp,-32
   10b1c:	00058793          	mv	a5,a1
   10b20:	00813823          	sd	s0,16(sp)
   10b24:	00913423          	sd	s1,8(sp)
   10b28:	00060593          	mv	a1,a2
   10b2c:	00050493          	mv	s1,a0
   10b30:	00068613          	mv	a2,a3
   10b34:	00078513          	mv	a0,a5
   10b38:	00113c23          	sd	ra,24(sp)
   10b3c:	1a01a023          	sw	zero,416(gp) # 13d58 <errno>
   10b40:	70c010ef          	jal	1224c <_lseek>
   10b44:	fff00793          	li	a5,-1
   10b48:	00f50c63          	beq	a0,a5,10b60 <_lseek_r+0x48>
   10b4c:	01813083          	ld	ra,24(sp)
   10b50:	01013403          	ld	s0,16(sp)
   10b54:	00813483          	ld	s1,8(sp)
   10b58:	02010113          	addi	sp,sp,32
   10b5c:	00008067          	ret
   10b60:	1a01a783          	lw	a5,416(gp) # 13d58 <errno>
   10b64:	fe0784e3          	beqz	a5,10b4c <_lseek_r+0x34>
   10b68:	01813083          	ld	ra,24(sp)
   10b6c:	01013403          	ld	s0,16(sp)
   10b70:	00f4a023          	sw	a5,0(s1)
   10b74:	00813483          	ld	s1,8(sp)
   10b78:	02010113          	addi	sp,sp,32
   10b7c:	00008067          	ret

0000000000010b80 <_read_r>:
   10b80:	fe010113          	addi	sp,sp,-32
   10b84:	00058793          	mv	a5,a1
   10b88:	00813823          	sd	s0,16(sp)
   10b8c:	00913423          	sd	s1,8(sp)
   10b90:	00060593          	mv	a1,a2
   10b94:	00050493          	mv	s1,a0
   10b98:	00068613          	mv	a2,a3
   10b9c:	00078513          	mv	a0,a5
   10ba0:	00113c23          	sd	ra,24(sp)
   10ba4:	1a01a023          	sw	zero,416(gp) # 13d58 <errno>
   10ba8:	6e4010ef          	jal	1228c <_read>
   10bac:	fff00793          	li	a5,-1
   10bb0:	00f50c63          	beq	a0,a5,10bc8 <_read_r+0x48>
   10bb4:	01813083          	ld	ra,24(sp)
   10bb8:	01013403          	ld	s0,16(sp)
   10bbc:	00813483          	ld	s1,8(sp)
   10bc0:	02010113          	addi	sp,sp,32
   10bc4:	00008067          	ret
   10bc8:	1a01a783          	lw	a5,416(gp) # 13d58 <errno>
   10bcc:	fe0784e3          	beqz	a5,10bb4 <_read_r+0x34>
   10bd0:	01813083          	ld	ra,24(sp)
   10bd4:	01013403          	ld	s0,16(sp)
   10bd8:	00f4a023          	sw	a5,0(s1)
   10bdc:	00813483          	ld	s1,8(sp)
   10be0:	02010113          	addi	sp,sp,32
   10be4:	00008067          	ret

0000000000010be8 <_write_r>:
   10be8:	fe010113          	addi	sp,sp,-32
   10bec:	00058793          	mv	a5,a1
   10bf0:	00813823          	sd	s0,16(sp)
   10bf4:	00913423          	sd	s1,8(sp)
   10bf8:	00060593          	mv	a1,a2
   10bfc:	00050493          	mv	s1,a0
   10c00:	00068613          	mv	a2,a3
   10c04:	00078513          	mv	a0,a5
   10c08:	00113c23          	sd	ra,24(sp)
   10c0c:	1a01a023          	sw	zero,416(gp) # 13d58 <errno>
   10c10:	734010ef          	jal	12344 <_write>
   10c14:	fff00793          	li	a5,-1
   10c18:	00f50c63          	beq	a0,a5,10c30 <_write_r+0x48>
   10c1c:	01813083          	ld	ra,24(sp)
   10c20:	01013403          	ld	s0,16(sp)
   10c24:	00813483          	ld	s1,8(sp)
   10c28:	02010113          	addi	sp,sp,32
   10c2c:	00008067          	ret
   10c30:	1a01a783          	lw	a5,416(gp) # 13d58 <errno>
   10c34:	fe0784e3          	beqz	a5,10c1c <_write_r+0x34>
   10c38:	01813083          	ld	ra,24(sp)
   10c3c:	01013403          	ld	s0,16(sp)
   10c40:	00f4a023          	sw	a5,0(s1)
   10c44:	00813483          	ld	s1,8(sp)
   10c48:	02010113          	addi	sp,sp,32
   10c4c:	00008067          	ret

0000000000010c50 <__libc_init_array>:
   10c50:	fe010113          	addi	sp,sp,-32
   10c54:	00813823          	sd	s0,16(sp)
   10c58:	01213023          	sd	s2,0(sp)
   10c5c:	00013437          	lui	s0,0x13
   10c60:	00013937          	lui	s2,0x13
   10c64:	00113c23          	sd	ra,24(sp)
   10c68:	00913423          	sd	s1,8(sp)
   10c6c:	39490913          	addi	s2,s2,916 # 13394 <__preinit_array_end>
   10c70:	39440413          	addi	s0,s0,916 # 13394 <__preinit_array_end>
   10c74:	02890263          	beq	s2,s0,10c98 <__libc_init_array+0x48>
   10c78:	40890933          	sub	s2,s2,s0
   10c7c:	40395913          	srai	s2,s2,0x3
   10c80:	00000493          	li	s1,0
   10c84:	00043783          	ld	a5,0(s0)
   10c88:	00148493          	addi	s1,s1,1
   10c8c:	00840413          	addi	s0,s0,8
   10c90:	000780e7          	jalr	a5
   10c94:	ff24e8e3          	bltu	s1,s2,10c84 <__libc_init_array+0x34>
   10c98:	00013937          	lui	s2,0x13
   10c9c:	00013437          	lui	s0,0x13
   10ca0:	3a890913          	addi	s2,s2,936 # 133a8 <__do_global_dtors_aux_fini_array_entry>
   10ca4:	39840413          	addi	s0,s0,920 # 13398 <__init_array_start>
   10ca8:	02890263          	beq	s2,s0,10ccc <__libc_init_array+0x7c>
   10cac:	40890933          	sub	s2,s2,s0
   10cb0:	40395913          	srai	s2,s2,0x3
   10cb4:	00000493          	li	s1,0
   10cb8:	00043783          	ld	a5,0(s0)
   10cbc:	00148493          	addi	s1,s1,1
   10cc0:	00840413          	addi	s0,s0,8
   10cc4:	000780e7          	jalr	a5
   10cc8:	ff24e8e3          	bltu	s1,s2,10cb8 <__libc_init_array+0x68>
   10ccc:	01813083          	ld	ra,24(sp)
   10cd0:	01013403          	ld	s0,16(sp)
   10cd4:	00813483          	ld	s1,8(sp)
   10cd8:	00013903          	ld	s2,0(sp)
   10cdc:	02010113          	addi	sp,sp,32
   10ce0:	00008067          	ret

0000000000010ce4 <memset>:
   10ce4:	00f00313          	li	t1,15
   10ce8:	00050713          	mv	a4,a0
   10cec:	02c37a63          	bgeu	t1,a2,10d20 <memset+0x3c>
   10cf0:	00f77793          	andi	a5,a4,15
   10cf4:	0a079063          	bnez	a5,10d94 <memset+0xb0>
   10cf8:	06059e63          	bnez	a1,10d74 <memset+0x90>
   10cfc:	ff067693          	andi	a3,a2,-16
   10d00:	00f67613          	andi	a2,a2,15
   10d04:	00e686b3          	add	a3,a3,a4
   10d08:	00b73023          	sd	a1,0(a4)
   10d0c:	00b73423          	sd	a1,8(a4)
   10d10:	01070713          	addi	a4,a4,16
   10d14:	fed76ae3          	bltu	a4,a3,10d08 <memset+0x24>
   10d18:	00061463          	bnez	a2,10d20 <memset+0x3c>
   10d1c:	00008067          	ret
   10d20:	40c306b3          	sub	a3,t1,a2
   10d24:	00269693          	slli	a3,a3,0x2
   10d28:	00000297          	auipc	t0,0x0
   10d2c:	005686b3          	add	a3,a3,t0
   10d30:	00c68067          	jr	12(a3)
   10d34:	00b70723          	sb	a1,14(a4)
   10d38:	00b706a3          	sb	a1,13(a4)
   10d3c:	00b70623          	sb	a1,12(a4)
   10d40:	00b705a3          	sb	a1,11(a4)
   10d44:	00b70523          	sb	a1,10(a4)
   10d48:	00b704a3          	sb	a1,9(a4)
   10d4c:	00b70423          	sb	a1,8(a4)
   10d50:	00b703a3          	sb	a1,7(a4)
   10d54:	00b70323          	sb	a1,6(a4)
   10d58:	00b702a3          	sb	a1,5(a4)
   10d5c:	00b70223          	sb	a1,4(a4)
   10d60:	00b701a3          	sb	a1,3(a4)
   10d64:	00b70123          	sb	a1,2(a4)
   10d68:	00b700a3          	sb	a1,1(a4)
   10d6c:	00b70023          	sb	a1,0(a4)
   10d70:	00008067          	ret
   10d74:	0ff5f593          	zext.b	a1,a1
   10d78:	00859693          	slli	a3,a1,0x8
   10d7c:	00d5e5b3          	or	a1,a1,a3
   10d80:	01059693          	slli	a3,a1,0x10
   10d84:	00d5e5b3          	or	a1,a1,a3
   10d88:	02059693          	slli	a3,a1,0x20
   10d8c:	00d5e5b3          	or	a1,a1,a3
   10d90:	f6dff06f          	j	10cfc <memset+0x18>
   10d94:	00279693          	slli	a3,a5,0x2
   10d98:	00000297          	auipc	t0,0x0
   10d9c:	005686b3          	add	a3,a3,t0
   10da0:	00008293          	mv	t0,ra
   10da4:	f98680e7          	jalr	-104(a3)
   10da8:	00028093          	mv	ra,t0
   10dac:	ff078793          	addi	a5,a5,-16
   10db0:	40f70733          	sub	a4,a4,a5
   10db4:	00f60633          	add	a2,a2,a5
   10db8:	f6c374e3          	bgeu	t1,a2,10d20 <memset+0x3c>
   10dbc:	f3dff06f          	j	10cf8 <memset+0x14>

0000000000010dc0 <__call_exitprocs>:
   10dc0:	fb010113          	addi	sp,sp,-80
   10dc4:	03413023          	sd	s4,32(sp)
   10dc8:	03213823          	sd	s2,48(sp)
   10dcc:	1a81b903          	ld	s2,424(gp) # 13d60 <__atexit>
   10dd0:	04113423          	sd	ra,72(sp)
   10dd4:	06090e63          	beqz	s2,10e50 <__call_exitprocs+0x90>
   10dd8:	03313423          	sd	s3,40(sp)
   10ddc:	01513c23          	sd	s5,24(sp)
   10de0:	01613823          	sd	s6,16(sp)
   10de4:	01713423          	sd	s7,8(sp)
   10de8:	04813023          	sd	s0,64(sp)
   10dec:	02913c23          	sd	s1,56(sp)
   10df0:	01813023          	sd	s8,0(sp)
   10df4:	00050b13          	mv	s6,a0
   10df8:	00058b93          	mv	s7,a1
   10dfc:	fff00993          	li	s3,-1
   10e00:	00100a93          	li	s5,1
   10e04:	00892403          	lw	s0,8(s2)
   10e08:	fff4041b          	addiw	s0,s0,-1
   10e0c:	02044463          	bltz	s0,10e34 <__call_exitprocs+0x74>
   10e10:	01090493          	addi	s1,s2,16
   10e14:	00341793          	slli	a5,s0,0x3
   10e18:	00f484b3          	add	s1,s1,a5
   10e1c:	040b8463          	beqz	s7,10e64 <__call_exitprocs+0xa4>
   10e20:	2004b783          	ld	a5,512(s1)
   10e24:	05778063          	beq	a5,s7,10e64 <__call_exitprocs+0xa4>
   10e28:	fff4041b          	addiw	s0,s0,-1
   10e2c:	ff848493          	addi	s1,s1,-8
   10e30:	ff3418e3          	bne	s0,s3,10e20 <__call_exitprocs+0x60>
   10e34:	04013403          	ld	s0,64(sp)
   10e38:	03813483          	ld	s1,56(sp)
   10e3c:	02813983          	ld	s3,40(sp)
   10e40:	01813a83          	ld	s5,24(sp)
   10e44:	01013b03          	ld	s6,16(sp)
   10e48:	00813b83          	ld	s7,8(sp)
   10e4c:	00013c03          	ld	s8,0(sp)
   10e50:	04813083          	ld	ra,72(sp)
   10e54:	03013903          	ld	s2,48(sp)
   10e58:	02013a03          	ld	s4,32(sp)
   10e5c:	05010113          	addi	sp,sp,80
   10e60:	00008067          	ret
   10e64:	00892783          	lw	a5,8(s2)
   10e68:	0004b683          	ld	a3,0(s1)
   10e6c:	fff7879b          	addiw	a5,a5,-1
   10e70:	06878a63          	beq	a5,s0,10ee4 <__call_exitprocs+0x124>
   10e74:	0004b023          	sd	zero,0(s1)
   10e78:	02068663          	beqz	a3,10ea4 <__call_exitprocs+0xe4>
   10e7c:	31092783          	lw	a5,784(s2)
   10e80:	008a973b          	sllw	a4,s5,s0
   10e84:	00892c03          	lw	s8,8(s2)
   10e88:	00e7f7b3          	and	a5,a5,a4
   10e8c:	02079463          	bnez	a5,10eb4 <__call_exitprocs+0xf4>
   10e90:	000680e7          	jalr	a3
   10e94:	00892703          	lw	a4,8(s2)
   10e98:	1a81b783          	ld	a5,424(gp) # 13d60 <__atexit>
   10e9c:	03871e63          	bne	a4,s8,10ed8 <__call_exitprocs+0x118>
   10ea0:	03279c63          	bne	a5,s2,10ed8 <__call_exitprocs+0x118>
   10ea4:	fff4041b          	addiw	s0,s0,-1
   10ea8:	ff848493          	addi	s1,s1,-8
   10eac:	f73418e3          	bne	s0,s3,10e1c <__call_exitprocs+0x5c>
   10eb0:	f85ff06f          	j	10e34 <__call_exitprocs+0x74>
   10eb4:	31492783          	lw	a5,788(s2)
   10eb8:	1004b583          	ld	a1,256(s1)
   10ebc:	00f77733          	and	a4,a4,a5
   10ec0:	02071663          	bnez	a4,10eec <__call_exitprocs+0x12c>
   10ec4:	000b0513          	mv	a0,s6
   10ec8:	000680e7          	jalr	a3
   10ecc:	00892703          	lw	a4,8(s2)
   10ed0:	1a81b783          	ld	a5,424(gp) # 13d60 <__atexit>
   10ed4:	fd8706e3          	beq	a4,s8,10ea0 <__call_exitprocs+0xe0>
   10ed8:	f4078ee3          	beqz	a5,10e34 <__call_exitprocs+0x74>
   10edc:	00078913          	mv	s2,a5
   10ee0:	f25ff06f          	j	10e04 <__call_exitprocs+0x44>
   10ee4:	00892423          	sw	s0,8(s2)
   10ee8:	f91ff06f          	j	10e78 <__call_exitprocs+0xb8>
   10eec:	00058513          	mv	a0,a1
   10ef0:	000680e7          	jalr	a3
   10ef4:	fa1ff06f          	j	10e94 <__call_exitprocs+0xd4>

0000000000010ef8 <atexit>:
   10ef8:	00050593          	mv	a1,a0
   10efc:	00000693          	li	a3,0
   10f00:	00000613          	li	a2,0
   10f04:	00000513          	li	a0,0
   10f08:	2340106f          	j	1213c <__register_exitproc>

0000000000010f0c <_malloc_trim_r>:
   10f0c:	fd010113          	addi	sp,sp,-48
   10f10:	01213823          	sd	s2,16(sp)
   10f14:	00013937          	lui	s2,0x13
   10f18:	02813023          	sd	s0,32(sp)
   10f1c:	00913c23          	sd	s1,24(sp)
   10f20:	01313423          	sd	s3,8(sp)
   10f24:	00058413          	mv	s0,a1
   10f28:	02113423          	sd	ra,40(sp)
   10f2c:	00050993          	mv	s3,a0
   10f30:	52090913          	addi	s2,s2,1312 # 13520 <__malloc_av_>
   10f34:	4e5000ef          	jal	11c18 <__malloc_lock>
   10f38:	01093783          	ld	a5,16(s2)
   10f3c:	00001737          	lui	a4,0x1
   10f40:	0087b483          	ld	s1,8(a5)
   10f44:	ffc4f493          	andi	s1,s1,-4
   10f48:	7ff48793          	addi	a5,s1,2047
   10f4c:	7e078793          	addi	a5,a5,2016
   10f50:	40878433          	sub	s0,a5,s0
   10f54:	00c45413          	srli	s0,s0,0xc
   10f58:	fff40413          	addi	s0,s0,-1
   10f5c:	00c41413          	slli	s0,s0,0xc
   10f60:	00e44e63          	blt	s0,a4,10f7c <_malloc_trim_r+0x70>
   10f64:	00000593          	li	a1,0
   10f68:	00098513          	mv	a0,s3
   10f6c:	118010ef          	jal	12084 <_sbrk_r>
   10f70:	01093783          	ld	a5,16(s2)
   10f74:	009787b3          	add	a5,a5,s1
   10f78:	02f50663          	beq	a0,a5,10fa4 <_malloc_trim_r+0x98>
   10f7c:	00098513          	mv	a0,s3
   10f80:	49d000ef          	jal	11c1c <__malloc_unlock>
   10f84:	02813083          	ld	ra,40(sp)
   10f88:	02013403          	ld	s0,32(sp)
   10f8c:	01813483          	ld	s1,24(sp)
   10f90:	01013903          	ld	s2,16(sp)
   10f94:	00813983          	ld	s3,8(sp)
   10f98:	00000513          	li	a0,0
   10f9c:	03010113          	addi	sp,sp,48
   10fa0:	00008067          	ret
   10fa4:	408005b3          	neg	a1,s0
   10fa8:	00098513          	mv	a0,s3
   10fac:	0d8010ef          	jal	12084 <_sbrk_r>
   10fb0:	fff00793          	li	a5,-1
   10fb4:	04f50463          	beq	a0,a5,10ffc <_malloc_trim_r+0xf0>
   10fb8:	01093683          	ld	a3,16(s2)
   10fbc:	4c01a783          	lw	a5,1216(gp) # 14078 <__malloc_current_mallinfo>
   10fc0:	408484b3          	sub	s1,s1,s0
   10fc4:	0014e493          	ori	s1,s1,1
   10fc8:	00098513          	mv	a0,s3
   10fcc:	408787bb          	subw	a5,a5,s0
   10fd0:	0096b423          	sd	s1,8(a3)
   10fd4:	4cf1a023          	sw	a5,1216(gp) # 14078 <__malloc_current_mallinfo>
   10fd8:	445000ef          	jal	11c1c <__malloc_unlock>
   10fdc:	02813083          	ld	ra,40(sp)
   10fe0:	02013403          	ld	s0,32(sp)
   10fe4:	01813483          	ld	s1,24(sp)
   10fe8:	01013903          	ld	s2,16(sp)
   10fec:	00813983          	ld	s3,8(sp)
   10ff0:	00100513          	li	a0,1
   10ff4:	03010113          	addi	sp,sp,48
   10ff8:	00008067          	ret
   10ffc:	00000593          	li	a1,0
   11000:	00098513          	mv	a0,s3
   11004:	080010ef          	jal	12084 <_sbrk_r>
   11008:	01093703          	ld	a4,16(s2)
   1100c:	01f00693          	li	a3,31
   11010:	40e507b3          	sub	a5,a0,a4
   11014:	f6f6d4e3          	bge	a3,a5,10f7c <_malloc_trim_r+0x70>
   11018:	1881b603          	ld	a2,392(gp) # 13d40 <__malloc_sbrk_base>
   1101c:	0017e793          	ori	a5,a5,1
   11020:	40c50533          	sub	a0,a0,a2
   11024:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11028:	4ca1a023          	sw	a0,1216(gp) # 14078 <__malloc_current_mallinfo>
   1102c:	f51ff06f          	j	10f7c <_malloc_trim_r+0x70>

0000000000011030 <_free_r>:
   11030:	12058863          	beqz	a1,11160 <_free_r+0x130>
   11034:	fe010113          	addi	sp,sp,-32
   11038:	00813823          	sd	s0,16(sp)
   1103c:	00b13423          	sd	a1,8(sp)
   11040:	00050413          	mv	s0,a0
   11044:	00113c23          	sd	ra,24(sp)
   11048:	3d1000ef          	jal	11c18 <__malloc_lock>
   1104c:	00813583          	ld	a1,8(sp)
   11050:	00013837          	lui	a6,0x13
   11054:	52080813          	addi	a6,a6,1312 # 13520 <__malloc_av_>
   11058:	ff85b503          	ld	a0,-8(a1)
   1105c:	ff058713          	addi	a4,a1,-16
   11060:	01083883          	ld	a7,16(a6)
   11064:	ffe57793          	andi	a5,a0,-2
   11068:	00f70633          	add	a2,a4,a5
   1106c:	00863683          	ld	a3,8(a2)
   11070:	00157313          	andi	t1,a0,1
   11074:	ffc6f693          	andi	a3,a3,-4
   11078:	18c88e63          	beq	a7,a2,11214 <_free_r+0x1e4>
   1107c:	00d63423          	sd	a3,8(a2)
   11080:	00d608b3          	add	a7,a2,a3
   11084:	0088b883          	ld	a7,8(a7)
   11088:	0018f893          	andi	a7,a7,1
   1108c:	08031e63          	bnez	t1,11128 <_free_r+0xf8>
   11090:	ff05b303          	ld	t1,-16(a1)
   11094:	000135b7          	lui	a1,0x13
   11098:	53058593          	addi	a1,a1,1328 # 13530 <__malloc_av_+0x10>
   1109c:	40670733          	sub	a4,a4,t1
   110a0:	01073503          	ld	a0,16(a4)
   110a4:	006787b3          	add	a5,a5,t1
   110a8:	14b50063          	beq	a0,a1,111e8 <_free_r+0x1b8>
   110ac:	01873303          	ld	t1,24(a4)
   110b0:	00653c23          	sd	t1,24(a0)
   110b4:	00a33823          	sd	a0,16(t1) # 10220 <qsort+0x4>
   110b8:	1a088263          	beqz	a7,1125c <_free_r+0x22c>
   110bc:	0017e693          	ori	a3,a5,1
   110c0:	00d73423          	sd	a3,8(a4)
   110c4:	00f63023          	sd	a5,0(a2)
   110c8:	1ff00693          	li	a3,511
   110cc:	0af6e663          	bltu	a3,a5,11178 <_free_r+0x148>
   110d0:	0037d793          	srli	a5,a5,0x3
   110d4:	00179693          	slli	a3,a5,0x1
   110d8:	0026869b          	addiw	a3,a3,2
   110dc:	00369693          	slli	a3,a3,0x3
   110e0:	00883503          	ld	a0,8(a6)
   110e4:	00d806b3          	add	a3,a6,a3
   110e8:	0006b583          	ld	a1,0(a3)
   110ec:	4027d61b          	sraiw	a2,a5,0x2
   110f0:	00100793          	li	a5,1
   110f4:	00c797b3          	sll	a5,a5,a2
   110f8:	00a7e7b3          	or	a5,a5,a0
   110fc:	ff068613          	addi	a2,a3,-16
   11100:	00b73823          	sd	a1,16(a4)
   11104:	00c73c23          	sd	a2,24(a4)
   11108:	00f83423          	sd	a5,8(a6)
   1110c:	00e6b023          	sd	a4,0(a3)
   11110:	00e5bc23          	sd	a4,24(a1)
   11114:	00040513          	mv	a0,s0
   11118:	01013403          	ld	s0,16(sp)
   1111c:	01813083          	ld	ra,24(sp)
   11120:	02010113          	addi	sp,sp,32
   11124:	2f90006f          	j	11c1c <__malloc_unlock>
   11128:	02089e63          	bnez	a7,11164 <_free_r+0x134>
   1112c:	000135b7          	lui	a1,0x13
   11130:	00d787b3          	add	a5,a5,a3
   11134:	53058593          	addi	a1,a1,1328 # 13530 <__malloc_av_+0x10>
   11138:	01063683          	ld	a3,16(a2)
   1113c:	0017e893          	ori	a7,a5,1
   11140:	00f70533          	add	a0,a4,a5
   11144:	16b68663          	beq	a3,a1,112b0 <_free_r+0x280>
   11148:	01863603          	ld	a2,24(a2)
   1114c:	00c6bc23          	sd	a2,24(a3)
   11150:	00d63823          	sd	a3,16(a2)
   11154:	01173423          	sd	a7,8(a4)
   11158:	00f53023          	sd	a5,0(a0)
   1115c:	f6dff06f          	j	110c8 <_free_r+0x98>
   11160:	00008067          	ret
   11164:	00156513          	ori	a0,a0,1
   11168:	fea5bc23          	sd	a0,-8(a1)
   1116c:	00f63023          	sd	a5,0(a2)
   11170:	1ff00693          	li	a3,511
   11174:	f4f6fee3          	bgeu	a3,a5,110d0 <_free_r+0xa0>
   11178:	0097d693          	srli	a3,a5,0x9
   1117c:	00400613          	li	a2,4
   11180:	0ed66263          	bltu	a2,a3,11264 <_free_r+0x234>
   11184:	0067d693          	srli	a3,a5,0x6
   11188:	00169593          	slli	a1,a3,0x1
   1118c:	0725859b          	addiw	a1,a1,114
   11190:	00359593          	slli	a1,a1,0x3
   11194:	0386861b          	addiw	a2,a3,56
   11198:	00b805b3          	add	a1,a6,a1
   1119c:	0005b683          	ld	a3,0(a1)
   111a0:	ff058593          	addi	a1,a1,-16
   111a4:	00d59863          	bne	a1,a3,111b4 <_free_r+0x184>
   111a8:	1240006f          	j	112cc <_free_r+0x29c>
   111ac:	0106b683          	ld	a3,16(a3)
   111b0:	00d58863          	beq	a1,a3,111c0 <_free_r+0x190>
   111b4:	0086b603          	ld	a2,8(a3)
   111b8:	ffc67613          	andi	a2,a2,-4
   111bc:	fec7e8e3          	bltu	a5,a2,111ac <_free_r+0x17c>
   111c0:	0186b583          	ld	a1,24(a3)
   111c4:	00b73c23          	sd	a1,24(a4)
   111c8:	00d73823          	sd	a3,16(a4)
   111cc:	00040513          	mv	a0,s0
   111d0:	01013403          	ld	s0,16(sp)
   111d4:	01813083          	ld	ra,24(sp)
   111d8:	00e5b823          	sd	a4,16(a1)
   111dc:	00e6bc23          	sd	a4,24(a3)
   111e0:	02010113          	addi	sp,sp,32
   111e4:	2390006f          	j	11c1c <__malloc_unlock>
   111e8:	0a089263          	bnez	a7,1128c <_free_r+0x25c>
   111ec:	01863583          	ld	a1,24(a2)
   111f0:	01063603          	ld	a2,16(a2)
   111f4:	00f686b3          	add	a3,a3,a5
   111f8:	0016e793          	ori	a5,a3,1
   111fc:	00b63c23          	sd	a1,24(a2)
   11200:	00c5b823          	sd	a2,16(a1)
   11204:	00f73423          	sd	a5,8(a4)
   11208:	00d70733          	add	a4,a4,a3
   1120c:	00d73023          	sd	a3,0(a4)
   11210:	f05ff06f          	j	11114 <_free_r+0xe4>
   11214:	00d786b3          	add	a3,a5,a3
   11218:	02031063          	bnez	t1,11238 <_free_r+0x208>
   1121c:	ff05b783          	ld	a5,-16(a1)
   11220:	40f70733          	sub	a4,a4,a5
   11224:	01073603          	ld	a2,16(a4)
   11228:	00f686b3          	add	a3,a3,a5
   1122c:	01873783          	ld	a5,24(a4)
   11230:	00f63c23          	sd	a5,24(a2)
   11234:	00c7b823          	sd	a2,16(a5)
   11238:	0016e613          	ori	a2,a3,1
   1123c:	1901b783          	ld	a5,400(gp) # 13d48 <__malloc_trim_threshold>
   11240:	00c73423          	sd	a2,8(a4)
   11244:	00e83823          	sd	a4,16(a6)
   11248:	ecf6e6e3          	bltu	a3,a5,11114 <_free_r+0xe4>
   1124c:	1c01b583          	ld	a1,448(gp) # 13d78 <__malloc_top_pad>
   11250:	00040513          	mv	a0,s0
   11254:	cb9ff0ef          	jal	10f0c <_malloc_trim_r>
   11258:	ebdff06f          	j	11114 <_free_r+0xe4>
   1125c:	00d787b3          	add	a5,a5,a3
   11260:	ed9ff06f          	j	11138 <_free_r+0x108>
   11264:	01400613          	li	a2,20
   11268:	02d67a63          	bgeu	a2,a3,1129c <_free_r+0x26c>
   1126c:	05400613          	li	a2,84
   11270:	06d66c63          	bltu	a2,a3,112e8 <_free_r+0x2b8>
   11274:	00c7d693          	srli	a3,a5,0xc
   11278:	00169593          	slli	a1,a3,0x1
   1127c:	0de5859b          	addiw	a1,a1,222
   11280:	00359593          	slli	a1,a1,0x3
   11284:	06e6861b          	addiw	a2,a3,110
   11288:	f11ff06f          	j	11198 <_free_r+0x168>
   1128c:	0017e693          	ori	a3,a5,1
   11290:	00d73423          	sd	a3,8(a4)
   11294:	00f63023          	sd	a5,0(a2)
   11298:	e7dff06f          	j	11114 <_free_r+0xe4>
   1129c:	00169593          	slli	a1,a3,0x1
   112a0:	0b85859b          	addiw	a1,a1,184
   112a4:	00359593          	slli	a1,a1,0x3
   112a8:	05b6861b          	addiw	a2,a3,91
   112ac:	eedff06f          	j	11198 <_free_r+0x168>
   112b0:	02e83423          	sd	a4,40(a6)
   112b4:	02e83023          	sd	a4,32(a6)
   112b8:	00b73c23          	sd	a1,24(a4)
   112bc:	00b73823          	sd	a1,16(a4)
   112c0:	01173423          	sd	a7,8(a4)
   112c4:	00f53023          	sd	a5,0(a0)
   112c8:	e4dff06f          	j	11114 <_free_r+0xe4>
   112cc:	00883503          	ld	a0,8(a6)
   112d0:	4026561b          	sraiw	a2,a2,0x2
   112d4:	00100793          	li	a5,1
   112d8:	00c797b3          	sll	a5,a5,a2
   112dc:	00a7e7b3          	or	a5,a5,a0
   112e0:	00f83423          	sd	a5,8(a6)
   112e4:	ee1ff06f          	j	111c4 <_free_r+0x194>
   112e8:	15400613          	li	a2,340
   112ec:	00d66e63          	bltu	a2,a3,11308 <_free_r+0x2d8>
   112f0:	00f7d693          	srli	a3,a5,0xf
   112f4:	00169593          	slli	a1,a3,0x1
   112f8:	0f05859b          	addiw	a1,a1,240
   112fc:	00359593          	slli	a1,a1,0x3
   11300:	0776861b          	addiw	a2,a3,119
   11304:	e95ff06f          	j	11198 <_free_r+0x168>
   11308:	55400613          	li	a2,1364
   1130c:	00d66e63          	bltu	a2,a3,11328 <_free_r+0x2f8>
   11310:	0127d693          	srli	a3,a5,0x12
   11314:	00169593          	slli	a1,a3,0x1
   11318:	0fa5859b          	addiw	a1,a1,250
   1131c:	00359593          	slli	a1,a1,0x3
   11320:	07c6861b          	addiw	a2,a3,124
   11324:	e75ff06f          	j	11198 <_free_r+0x168>
   11328:	7f000593          	li	a1,2032
   1132c:	07e00613          	li	a2,126
   11330:	e69ff06f          	j	11198 <_free_r+0x168>

0000000000011334 <_malloc_r>:
   11334:	fa010113          	addi	sp,sp,-96
   11338:	04813823          	sd	s0,80(sp)
   1133c:	04113c23          	sd	ra,88(sp)
   11340:	01758713          	addi	a4,a1,23
   11344:	02e00793          	li	a5,46
   11348:	00050413          	mv	s0,a0
   1134c:	08e7ee63          	bltu	a5,a4,113e8 <_malloc_r+0xb4>
   11350:	02000713          	li	a4,32
   11354:	06b76c63          	bltu	a4,a1,113cc <_malloc_r+0x98>
   11358:	0c1000ef          	jal	11c18 <__malloc_lock>
   1135c:	02000713          	li	a4,32
   11360:	05000693          	li	a3,80
   11364:	00400893          	li	a7,4
   11368:	00013837          	lui	a6,0x13
   1136c:	52080813          	addi	a6,a6,1312 # 13520 <__malloc_av_>
   11370:	00d806b3          	add	a3,a6,a3
   11374:	0086b783          	ld	a5,8(a3)
   11378:	ff068613          	addi	a2,a3,-16
   1137c:	48c78063          	beq	a5,a2,117fc <_malloc_r+0x4c8>
   11380:	0087b703          	ld	a4,8(a5)
   11384:	0187b603          	ld	a2,24(a5)
   11388:	0107b583          	ld	a1,16(a5)
   1138c:	ffc77713          	andi	a4,a4,-4
   11390:	00e78733          	add	a4,a5,a4
   11394:	00873683          	ld	a3,8(a4)
   11398:	00c5bc23          	sd	a2,24(a1)
   1139c:	00b63823          	sd	a1,16(a2)
   113a0:	0016e693          	ori	a3,a3,1
   113a4:	00040513          	mv	a0,s0
   113a8:	00d73423          	sd	a3,8(a4)
   113ac:	00f13423          	sd	a5,8(sp)
   113b0:	06d000ef          	jal	11c1c <__malloc_unlock>
   113b4:	00813783          	ld	a5,8(sp)
   113b8:	05813083          	ld	ra,88(sp)
   113bc:	05013403          	ld	s0,80(sp)
   113c0:	01078513          	addi	a0,a5,16
   113c4:	06010113          	addi	sp,sp,96
   113c8:	00008067          	ret
   113cc:	00c00793          	li	a5,12
   113d0:	00f42023          	sw	a5,0(s0)
   113d4:	00000513          	li	a0,0
   113d8:	05813083          	ld	ra,88(sp)
   113dc:	05013403          	ld	s0,80(sp)
   113e0:	06010113          	addi	sp,sp,96
   113e4:	00008067          	ret
   113e8:	00100793          	li	a5,1
   113ec:	ff077713          	andi	a4,a4,-16
   113f0:	01f79793          	slli	a5,a5,0x1f
   113f4:	fcf77ce3          	bgeu	a4,a5,113cc <_malloc_r+0x98>
   113f8:	fcb76ae3          	bltu	a4,a1,113cc <_malloc_r+0x98>
   113fc:	00e13423          	sd	a4,8(sp)
   11400:	019000ef          	jal	11c18 <__malloc_lock>
   11404:	00813703          	ld	a4,8(sp)
   11408:	1f700793          	li	a5,503
   1140c:	4ee7fa63          	bgeu	a5,a4,11900 <_malloc_r+0x5cc>
   11410:	00975793          	srli	a5,a4,0x9
   11414:	18078a63          	beqz	a5,115a8 <_malloc_r+0x274>
   11418:	00400693          	li	a3,4
   1141c:	44f6ea63          	bltu	a3,a5,11870 <_malloc_r+0x53c>
   11420:	00675793          	srli	a5,a4,0x6
   11424:	0397889b          	addiw	a7,a5,57
   11428:	0018951b          	slliw	a0,a7,0x1
   1142c:	03878e1b          	addiw	t3,a5,56
   11430:	00351513          	slli	a0,a0,0x3
   11434:	00013837          	lui	a6,0x13
   11438:	52080813          	addi	a6,a6,1312 # 13520 <__malloc_av_>
   1143c:	00a80533          	add	a0,a6,a0
   11440:	00853783          	ld	a5,8(a0)
   11444:	ff050513          	addi	a0,a0,-16
   11448:	02f50863          	beq	a0,a5,11478 <_malloc_r+0x144>
   1144c:	01f00313          	li	t1,31
   11450:	0140006f          	j	11464 <_malloc_r+0x130>
   11454:	0187b583          	ld	a1,24(a5)
   11458:	36065263          	bgez	a2,117bc <_malloc_r+0x488>
   1145c:	00b50e63          	beq	a0,a1,11478 <_malloc_r+0x144>
   11460:	00058793          	mv	a5,a1
   11464:	0087b683          	ld	a3,8(a5)
   11468:	ffc6f693          	andi	a3,a3,-4
   1146c:	40e68633          	sub	a2,a3,a4
   11470:	fec352e3          	bge	t1,a2,11454 <_malloc_r+0x120>
   11474:	000e0893          	mv	a7,t3
   11478:	02083783          	ld	a5,32(a6)
   1147c:	00013e37          	lui	t3,0x13
   11480:	530e0e13          	addi	t3,t3,1328 # 13530 <__malloc_av_+0x10>
   11484:	2fc78a63          	beq	a5,t3,11778 <_malloc_r+0x444>
   11488:	0087b303          	ld	t1,8(a5)
   1148c:	01f00613          	li	a2,31
   11490:	ffc37313          	andi	t1,t1,-4
   11494:	40e306b3          	sub	a3,t1,a4
   11498:	4ad64463          	blt	a2,a3,11940 <_malloc_r+0x60c>
   1149c:	03c83423          	sd	t3,40(a6)
   114a0:	03c83023          	sd	t3,32(a6)
   114a4:	4606da63          	bgez	a3,11918 <_malloc_r+0x5e4>
   114a8:	1ff00693          	li	a3,511
   114ac:	00883583          	ld	a1,8(a6)
   114b0:	3466ee63          	bltu	a3,t1,1180c <_malloc_r+0x4d8>
   114b4:	00335313          	srli	t1,t1,0x3
   114b8:	00131693          	slli	a3,t1,0x1
   114bc:	0026869b          	addiw	a3,a3,2
   114c0:	00369693          	slli	a3,a3,0x3
   114c4:	00d806b3          	add	a3,a6,a3
   114c8:	0006b503          	ld	a0,0(a3)
   114cc:	4023531b          	sraiw	t1,t1,0x2
   114d0:	00100613          	li	a2,1
   114d4:	00661633          	sll	a2,a2,t1
   114d8:	00c5e5b3          	or	a1,a1,a2
   114dc:	ff068613          	addi	a2,a3,-16
   114e0:	00a7b823          	sd	a0,16(a5)
   114e4:	00c7bc23          	sd	a2,24(a5)
   114e8:	00b83423          	sd	a1,8(a6)
   114ec:	00f6b023          	sd	a5,0(a3)
   114f0:	00f53c23          	sd	a5,24(a0)
   114f4:	4028d79b          	sraiw	a5,a7,0x2
   114f8:	00100513          	li	a0,1
   114fc:	00f51533          	sll	a0,a0,a5
   11500:	0aa5ec63          	bltu	a1,a0,115b8 <_malloc_r+0x284>
   11504:	00b577b3          	and	a5,a0,a1
   11508:	02079463          	bnez	a5,11530 <_malloc_r+0x1fc>
   1150c:	00151513          	slli	a0,a0,0x1
   11510:	ffc8f893          	andi	a7,a7,-4
   11514:	00b577b3          	and	a5,a0,a1
   11518:	0048889b          	addiw	a7,a7,4
   1151c:	00079a63          	bnez	a5,11530 <_malloc_r+0x1fc>
   11520:	00151513          	slli	a0,a0,0x1
   11524:	00b577b3          	and	a5,a0,a1
   11528:	0048889b          	addiw	a7,a7,4
   1152c:	fe078ae3          	beqz	a5,11520 <_malloc_r+0x1ec>
   11530:	01f00e93          	li	t4,31
   11534:	00189f13          	slli	t5,a7,0x1
   11538:	002f0f1b          	addiw	t5,t5,2
   1153c:	003f1f13          	slli	t5,t5,0x3
   11540:	ff0f0f13          	addi	t5,t5,-16
   11544:	01e80f33          	add	t5,a6,t5
   11548:	000f0313          	mv	t1,t5
   1154c:	01833683          	ld	a3,24(t1)
   11550:	00088f93          	mv	t6,a7
   11554:	34d30263          	beq	t1,a3,11898 <_malloc_r+0x564>
   11558:	0086b603          	ld	a2,8(a3)
   1155c:	00068793          	mv	a5,a3
   11560:	0186b683          	ld	a3,24(a3)
   11564:	ffc67613          	andi	a2,a2,-4
   11568:	40e605b3          	sub	a1,a2,a4
   1156c:	34bec263          	blt	t4,a1,118b0 <_malloc_r+0x57c>
   11570:	fe05c2e3          	bltz	a1,11554 <_malloc_r+0x220>
   11574:	00c78633          	add	a2,a5,a2
   11578:	00863703          	ld	a4,8(a2)
   1157c:	0107b583          	ld	a1,16(a5)
   11580:	00040513          	mv	a0,s0
   11584:	00176713          	ori	a4,a4,1
   11588:	00e63423          	sd	a4,8(a2)
   1158c:	00d5bc23          	sd	a3,24(a1)
   11590:	00b6b823          	sd	a1,16(a3)
   11594:	00f13423          	sd	a5,8(sp)
   11598:	684000ef          	jal	11c1c <__malloc_unlock>
   1159c:	00813783          	ld	a5,8(sp)
   115a0:	01078513          	addi	a0,a5,16
   115a4:	e35ff06f          	j	113d8 <_malloc_r+0xa4>
   115a8:	40000513          	li	a0,1024
   115ac:	04000893          	li	a7,64
   115b0:	03f00e13          	li	t3,63
   115b4:	e81ff06f          	j	11434 <_malloc_r+0x100>
   115b8:	01083783          	ld	a5,16(a6)
   115bc:	0087b683          	ld	a3,8(a5)
   115c0:	ffc6f893          	andi	a7,a3,-4
   115c4:	40e88633          	sub	a2,a7,a4
   115c8:	00e8e663          	bltu	a7,a4,115d4 <_malloc_r+0x2a0>
   115cc:	02062693          	slti	a3,a2,32
   115d0:	1a068863          	beqz	a3,11780 <_malloc_r+0x44c>
   115d4:	1c01b583          	ld	a1,448(gp) # 13d78 <__malloc_top_pad>
   115d8:	1881b603          	ld	a2,392(gp) # 13d40 <__malloc_sbrk_base>
   115dc:	fff00693          	li	a3,-1
   115e0:	00b705b3          	add	a1,a4,a1
   115e4:	44d60663          	beq	a2,a3,11a30 <_malloc_r+0x6fc>
   115e8:	000016b7          	lui	a3,0x1
   115ec:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   115f0:	00d585b3          	add	a1,a1,a3
   115f4:	fffff6b7          	lui	a3,0xfffff
   115f8:	00d5f5b3          	and	a1,a1,a3
   115fc:	00040513          	mv	a0,s0
   11600:	03013423          	sd	a6,40(sp)
   11604:	02f13023          	sd	a5,32(sp)
   11608:	00e13c23          	sd	a4,24(sp)
   1160c:	01113823          	sd	a7,16(sp)
   11610:	00b13423          	sd	a1,8(sp)
   11614:	271000ef          	jal	12084 <_sbrk_r>
   11618:	fff00693          	li	a3,-1
   1161c:	00813583          	ld	a1,8(sp)
   11620:	01013883          	ld	a7,16(sp)
   11624:	01813703          	ld	a4,24(sp)
   11628:	02013783          	ld	a5,32(sp)
   1162c:	02813803          	ld	a6,40(sp)
   11630:	00050313          	mv	t1,a0
   11634:	36d50663          	beq	a0,a3,119a0 <_malloc_r+0x66c>
   11638:	011786b3          	add	a3,a5,a7
   1163c:	36d56063          	bltu	a0,a3,1199c <_malloc_r+0x668>
   11640:	4c018e13          	addi	t3,gp,1216 # 14078 <__malloc_current_mallinfo>
   11644:	000e2603          	lw	a2,0(t3)
   11648:	00b6063b          	addw	a2,a2,a1
   1164c:	00ce2023          	sw	a2,0(t3)
   11650:	00060513          	mv	a0,a2
   11654:	4a668c63          	beq	a3,t1,11b0c <_malloc_r+0x7d8>
   11658:	1881bf03          	ld	t5,392(gp) # 13d40 <__malloc_sbrk_base>
   1165c:	fff00613          	li	a2,-1
   11660:	4ccf0463          	beq	t5,a2,11b28 <_malloc_r+0x7f4>
   11664:	40d306b3          	sub	a3,t1,a3
   11668:	00a686bb          	addw	a3,a3,a0
   1166c:	00de2023          	sw	a3,0(t3)
   11670:	00f37e93          	andi	t4,t1,15
   11674:	3c0e8e63          	beqz	t4,11a50 <_malloc_r+0x71c>
   11678:	ff037313          	andi	t1,t1,-16
   1167c:	000016b7          	lui	a3,0x1
   11680:	01030313          	addi	t1,t1,16
   11684:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11688:	00b30633          	add	a2,t1,a1
   1168c:	41d685b3          	sub	a1,a3,t4
   11690:	40c585b3          	sub	a1,a1,a2
   11694:	03459593          	slli	a1,a1,0x34
   11698:	0345d593          	srli	a1,a1,0x34
   1169c:	00040513          	mv	a0,s0
   116a0:	05c13023          	sd	t3,64(sp)
   116a4:	03013c23          	sd	a6,56(sp)
   116a8:	02f13823          	sd	a5,48(sp)
   116ac:	02e13423          	sd	a4,40(sp)
   116b0:	03113023          	sd	a7,32(sp)
   116b4:	00613c23          	sd	t1,24(sp)
   116b8:	01d13823          	sd	t4,16(sp)
   116bc:	00c13423          	sd	a2,8(sp)
   116c0:	04b13423          	sd	a1,72(sp)
   116c4:	1c1000ef          	jal	12084 <_sbrk_r>
   116c8:	00050693          	mv	a3,a0
   116cc:	fff00513          	li	a0,-1
   116d0:	00813603          	ld	a2,8(sp)
   116d4:	01013e83          	ld	t4,16(sp)
   116d8:	01813303          	ld	t1,24(sp)
   116dc:	02013883          	ld	a7,32(sp)
   116e0:	02813703          	ld	a4,40(sp)
   116e4:	03013783          	ld	a5,48(sp)
   116e8:	03813803          	ld	a6,56(sp)
   116ec:	04013e03          	ld	t3,64(sp)
   116f0:	48a68663          	beq	a3,a0,11b7c <_malloc_r+0x848>
   116f4:	04813583          	ld	a1,72(sp)
   116f8:	0005851b          	sext.w	a0,a1
   116fc:	000e2603          	lw	a2,0(t3)
   11700:	406686b3          	sub	a3,a3,t1
   11704:	00b686b3          	add	a3,a3,a1
   11708:	0016e693          	ori	a3,a3,1
   1170c:	00683823          	sd	t1,16(a6)
   11710:	00a6063b          	addw	a2,a2,a0
   11714:	00d33423          	sd	a3,8(t1)
   11718:	00ce2023          	sw	a2,0(t3)
   1171c:	03078e63          	beq	a5,a6,11758 <_malloc_r+0x424>
   11720:	01f00513          	li	a0,31
   11724:	41157663          	bgeu	a0,a7,11b30 <_malloc_r+0x7fc>
   11728:	0087b583          	ld	a1,8(a5)
   1172c:	fe888693          	addi	a3,a7,-24
   11730:	ff06f693          	andi	a3,a3,-16
   11734:	0015f593          	andi	a1,a1,1
   11738:	00d5e5b3          	or	a1,a1,a3
   1173c:	00b7b423          	sd	a1,8(a5)
   11740:	00900893          	li	a7,9
   11744:	00d785b3          	add	a1,a5,a3
   11748:	0115b423          	sd	a7,8(a1)
   1174c:	0115b823          	sd	a7,16(a1)
   11750:	44d56863          	bltu	a0,a3,11ba0 <_malloc_r+0x86c>
   11754:	00833683          	ld	a3,8(t1)
   11758:	1b81b583          	ld	a1,440(gp) # 13d70 <__malloc_max_sbrked_mem>
   1175c:	00c5f463          	bgeu	a1,a2,11764 <_malloc_r+0x430>
   11760:	1ac1bc23          	sd	a2,440(gp) # 13d70 <__malloc_max_sbrked_mem>
   11764:	1b01b583          	ld	a1,432(gp) # 13d68 <__malloc_max_total_mem>
   11768:	00c5f463          	bgeu	a1,a2,11770 <_malloc_r+0x43c>
   1176c:	1ac1b823          	sd	a2,432(gp) # 13d68 <__malloc_max_total_mem>
   11770:	00030793          	mv	a5,t1
   11774:	2340006f          	j	119a8 <_malloc_r+0x674>
   11778:	00883583          	ld	a1,8(a6)
   1177c:	d79ff06f          	j	114f4 <_malloc_r+0x1c0>
   11780:	00176693          	ori	a3,a4,1
   11784:	00d7b423          	sd	a3,8(a5)
   11788:	00e78733          	add	a4,a5,a4
   1178c:	00166613          	ori	a2,a2,1
   11790:	00e83823          	sd	a4,16(a6)
   11794:	00040513          	mv	a0,s0
   11798:	00c73423          	sd	a2,8(a4)
   1179c:	00f13423          	sd	a5,8(sp)
   117a0:	47c000ef          	jal	11c1c <__malloc_unlock>
   117a4:	00813783          	ld	a5,8(sp)
   117a8:	05813083          	ld	ra,88(sp)
   117ac:	05013403          	ld	s0,80(sp)
   117b0:	01078513          	addi	a0,a5,16
   117b4:	06010113          	addi	sp,sp,96
   117b8:	00008067          	ret
   117bc:	0107b603          	ld	a2,16(a5)
   117c0:	00d786b3          	add	a3,a5,a3
   117c4:	0086b703          	ld	a4,8(a3)
   117c8:	00b63c23          	sd	a1,24(a2)
   117cc:	00c5b823          	sd	a2,16(a1)
   117d0:	00176713          	ori	a4,a4,1
   117d4:	00040513          	mv	a0,s0
   117d8:	00e6b423          	sd	a4,8(a3)
   117dc:	00f13423          	sd	a5,8(sp)
   117e0:	43c000ef          	jal	11c1c <__malloc_unlock>
   117e4:	00813783          	ld	a5,8(sp)
   117e8:	05813083          	ld	ra,88(sp)
   117ec:	05013403          	ld	s0,80(sp)
   117f0:	01078513          	addi	a0,a5,16
   117f4:	06010113          	addi	sp,sp,96
   117f8:	00008067          	ret
   117fc:	0186b783          	ld	a5,24(a3)
   11800:	0028889b          	addiw	a7,a7,2
   11804:	c6f68ae3          	beq	a3,a5,11478 <_malloc_r+0x144>
   11808:	b79ff06f          	j	11380 <_malloc_r+0x4c>
   1180c:	00935693          	srli	a3,t1,0x9
   11810:	00400613          	li	a2,4
   11814:	16d67863          	bgeu	a2,a3,11984 <_malloc_r+0x650>
   11818:	01400613          	li	a2,20
   1181c:	28d66e63          	bltu	a2,a3,11ab8 <_malloc_r+0x784>
   11820:	00169513          	slli	a0,a3,0x1
   11824:	0b85051b          	addiw	a0,a0,184
   11828:	00351513          	slli	a0,a0,0x3
   1182c:	05b6861b          	addiw	a2,a3,91
   11830:	00a80533          	add	a0,a6,a0
   11834:	00053683          	ld	a3,0(a0)
   11838:	ff050513          	addi	a0,a0,-16
   1183c:	00d51863          	bne	a0,a3,1184c <_malloc_r+0x518>
   11840:	1f80006f          	j	11a38 <_malloc_r+0x704>
   11844:	0106b683          	ld	a3,16(a3)
   11848:	00d50863          	beq	a0,a3,11858 <_malloc_r+0x524>
   1184c:	0086b603          	ld	a2,8(a3)
   11850:	ffc67613          	andi	a2,a2,-4
   11854:	fec368e3          	bltu	t1,a2,11844 <_malloc_r+0x510>
   11858:	0186b503          	ld	a0,24(a3)
   1185c:	00a7bc23          	sd	a0,24(a5)
   11860:	00d7b823          	sd	a3,16(a5)
   11864:	00f53823          	sd	a5,16(a0)
   11868:	00f6bc23          	sd	a5,24(a3)
   1186c:	c89ff06f          	j	114f4 <_malloc_r+0x1c0>
   11870:	01400693          	li	a3,20
   11874:	14f6fa63          	bgeu	a3,a5,119c8 <_malloc_r+0x694>
   11878:	05400693          	li	a3,84
   1187c:	24f6ee63          	bltu	a3,a5,11ad8 <_malloc_r+0x7a4>
   11880:	00c75793          	srli	a5,a4,0xc
   11884:	06f7889b          	addiw	a7,a5,111
   11888:	0018951b          	slliw	a0,a7,0x1
   1188c:	06e78e1b          	addiw	t3,a5,110
   11890:	00351513          	slli	a0,a0,0x3
   11894:	ba1ff06f          	j	11434 <_malloc_r+0x100>
   11898:	001f8f9b          	addiw	t6,t6,1
   1189c:	003ff793          	andi	a5,t6,3
   118a0:	01030313          	addi	t1,t1,16
   118a4:	14078263          	beqz	a5,119e8 <_malloc_r+0x6b4>
   118a8:	01833683          	ld	a3,24(t1)
   118ac:	ca9ff06f          	j	11554 <_malloc_r+0x220>
   118b0:	0107b503          	ld	a0,16(a5)
   118b4:	00176893          	ori	a7,a4,1
   118b8:	0117b423          	sd	a7,8(a5)
   118bc:	00d53c23          	sd	a3,24(a0)
   118c0:	00a6b823          	sd	a0,16(a3)
   118c4:	00e78733          	add	a4,a5,a4
   118c8:	02e83423          	sd	a4,40(a6)
   118cc:	02e83023          	sd	a4,32(a6)
   118d0:	0015e693          	ori	a3,a1,1
   118d4:	00c78633          	add	a2,a5,a2
   118d8:	01c73c23          	sd	t3,24(a4)
   118dc:	01c73823          	sd	t3,16(a4)
   118e0:	00d73423          	sd	a3,8(a4)
   118e4:	00040513          	mv	a0,s0
   118e8:	00b63023          	sd	a1,0(a2)
   118ec:	00f13423          	sd	a5,8(sp)
   118f0:	32c000ef          	jal	11c1c <__malloc_unlock>
   118f4:	00813783          	ld	a5,8(sp)
   118f8:	01078513          	addi	a0,a5,16
   118fc:	addff06f          	j	113d8 <_malloc_r+0xa4>
   11900:	00375893          	srli	a7,a4,0x3
   11904:	00189693          	slli	a3,a7,0x1
   11908:	0026869b          	addiw	a3,a3,2
   1190c:	00369693          	slli	a3,a3,0x3
   11910:	0008889b          	sext.w	a7,a7
   11914:	a55ff06f          	j	11368 <_malloc_r+0x34>
   11918:	00678333          	add	t1,a5,t1
   1191c:	00833703          	ld	a4,8(t1)
   11920:	00040513          	mv	a0,s0
   11924:	00f13423          	sd	a5,8(sp)
   11928:	00176713          	ori	a4,a4,1
   1192c:	00e33423          	sd	a4,8(t1)
   11930:	2ec000ef          	jal	11c1c <__malloc_unlock>
   11934:	00813783          	ld	a5,8(sp)
   11938:	01078513          	addi	a0,a5,16
   1193c:	a9dff06f          	j	113d8 <_malloc_r+0xa4>
   11940:	00176613          	ori	a2,a4,1
   11944:	00c7b423          	sd	a2,8(a5)
   11948:	00e78733          	add	a4,a5,a4
   1194c:	02e83423          	sd	a4,40(a6)
   11950:	02e83023          	sd	a4,32(a6)
   11954:	0016e613          	ori	a2,a3,1
   11958:	00678333          	add	t1,a5,t1
   1195c:	01c73c23          	sd	t3,24(a4)
   11960:	01c73823          	sd	t3,16(a4)
   11964:	00c73423          	sd	a2,8(a4)
   11968:	00040513          	mv	a0,s0
   1196c:	00d33023          	sd	a3,0(t1)
   11970:	00f13423          	sd	a5,8(sp)
   11974:	2a8000ef          	jal	11c1c <__malloc_unlock>
   11978:	00813783          	ld	a5,8(sp)
   1197c:	01078513          	addi	a0,a5,16
   11980:	a59ff06f          	j	113d8 <_malloc_r+0xa4>
   11984:	00635693          	srli	a3,t1,0x6
   11988:	00169513          	slli	a0,a3,0x1
   1198c:	0725051b          	addiw	a0,a0,114
   11990:	00351513          	slli	a0,a0,0x3
   11994:	0386861b          	addiw	a2,a3,56
   11998:	e99ff06f          	j	11830 <_malloc_r+0x4fc>
   1199c:	15078e63          	beq	a5,a6,11af8 <_malloc_r+0x7c4>
   119a0:	01083783          	ld	a5,16(a6)
   119a4:	0087b683          	ld	a3,8(a5)
   119a8:	ffc6f693          	andi	a3,a3,-4
   119ac:	40e68633          	sub	a2,a3,a4
   119b0:	00e6e663          	bltu	a3,a4,119bc <_malloc_r+0x688>
   119b4:	02062693          	slti	a3,a2,32
   119b8:	dc0684e3          	beqz	a3,11780 <_malloc_r+0x44c>
   119bc:	00040513          	mv	a0,s0
   119c0:	25c000ef          	jal	11c1c <__malloc_unlock>
   119c4:	a11ff06f          	j	113d4 <_malloc_r+0xa0>
   119c8:	05c7889b          	addiw	a7,a5,92
   119cc:	0018951b          	slliw	a0,a7,0x1
   119d0:	05b78e1b          	addiw	t3,a5,91
   119d4:	00351513          	slli	a0,a0,0x3
   119d8:	a5dff06f          	j	11434 <_malloc_r+0x100>
   119dc:	010f3783          	ld	a5,16(t5)
   119e0:	fff8889b          	addiw	a7,a7,-1
   119e4:	23e79663          	bne	a5,t5,11c10 <_malloc_r+0x8dc>
   119e8:	0038f793          	andi	a5,a7,3
   119ec:	ff0f0f13          	addi	t5,t5,-16
   119f0:	fe0796e3          	bnez	a5,119dc <_malloc_r+0x6a8>
   119f4:	00883683          	ld	a3,8(a6)
   119f8:	fff54793          	not	a5,a0
   119fc:	00d7f7b3          	and	a5,a5,a3
   11a00:	00f83423          	sd	a5,8(a6)
   11a04:	00151513          	slli	a0,a0,0x1
   11a08:	fff50693          	addi	a3,a0,-1
   11a0c:	baf6f6e3          	bgeu	a3,a5,115b8 <_malloc_r+0x284>
   11a10:	00f576b3          	and	a3,a0,a5
   11a14:	00069a63          	bnez	a3,11a28 <_malloc_r+0x6f4>
   11a18:	00151513          	slli	a0,a0,0x1
   11a1c:	00f576b3          	and	a3,a0,a5
   11a20:	004f8f9b          	addiw	t6,t6,4
   11a24:	fe068ae3          	beqz	a3,11a18 <_malloc_r+0x6e4>
   11a28:	000f8893          	mv	a7,t6
   11a2c:	b09ff06f          	j	11534 <_malloc_r+0x200>
   11a30:	02058593          	addi	a1,a1,32
   11a34:	bc9ff06f          	j	115fc <_malloc_r+0x2c8>
   11a38:	4026561b          	sraiw	a2,a2,0x2
   11a3c:	00100313          	li	t1,1
   11a40:	00c31633          	sll	a2,t1,a2
   11a44:	00c5e5b3          	or	a1,a1,a2
   11a48:	00b83423          	sd	a1,8(a6)
   11a4c:	e11ff06f          	j	1185c <_malloc_r+0x528>
   11a50:	00b30633          	add	a2,t1,a1
   11a54:	40c005b3          	neg	a1,a2
   11a58:	03459593          	slli	a1,a1,0x34
   11a5c:	0345d593          	srli	a1,a1,0x34
   11a60:	00040513          	mv	a0,s0
   11a64:	03c13c23          	sd	t3,56(sp)
   11a68:	03013823          	sd	a6,48(sp)
   11a6c:	02f13423          	sd	a5,40(sp)
   11a70:	02e13023          	sd	a4,32(sp)
   11a74:	01113c23          	sd	a7,24(sp)
   11a78:	00613823          	sd	t1,16(sp)
   11a7c:	00c13423          	sd	a2,8(sp)
   11a80:	04b13023          	sd	a1,64(sp)
   11a84:	600000ef          	jal	12084 <_sbrk_r>
   11a88:	00050693          	mv	a3,a0
   11a8c:	fff00513          	li	a0,-1
   11a90:	01013303          	ld	t1,16(sp)
   11a94:	01813883          	ld	a7,24(sp)
   11a98:	02013703          	ld	a4,32(sp)
   11a9c:	02813783          	ld	a5,40(sp)
   11aa0:	03013803          	ld	a6,48(sp)
   11aa4:	03813e03          	ld	t3,56(sp)
   11aa8:	0ea68463          	beq	a3,a0,11b90 <_malloc_r+0x85c>
   11aac:	04013583          	ld	a1,64(sp)
   11ab0:	0005851b          	sext.w	a0,a1
   11ab4:	c49ff06f          	j	116fc <_malloc_r+0x3c8>
   11ab8:	05400613          	li	a2,84
   11abc:	08d66063          	bltu	a2,a3,11b3c <_malloc_r+0x808>
   11ac0:	00c35693          	srli	a3,t1,0xc
   11ac4:	00169513          	slli	a0,a3,0x1
   11ac8:	0de5051b          	addiw	a0,a0,222
   11acc:	00351513          	slli	a0,a0,0x3
   11ad0:	06e6861b          	addiw	a2,a3,110
   11ad4:	d5dff06f          	j	11830 <_malloc_r+0x4fc>
   11ad8:	15400693          	li	a3,340
   11adc:	08f6e063          	bltu	a3,a5,11b5c <_malloc_r+0x828>
   11ae0:	00f75793          	srli	a5,a4,0xf
   11ae4:	0787889b          	addiw	a7,a5,120
   11ae8:	0018951b          	slliw	a0,a7,0x1
   11aec:	07778e1b          	addiw	t3,a5,119
   11af0:	00351513          	slli	a0,a0,0x3
   11af4:	941ff06f          	j	11434 <_malloc_r+0x100>
   11af8:	4c018e13          	addi	t3,gp,1216 # 14078 <__malloc_current_mallinfo>
   11afc:	000e2503          	lw	a0,0(t3)
   11b00:	00b5053b          	addw	a0,a0,a1
   11b04:	00ae2023          	sw	a0,0(t3)
   11b08:	b51ff06f          	j	11658 <_malloc_r+0x324>
   11b0c:	03431f13          	slli	t5,t1,0x34
   11b10:	b40f14e3          	bnez	t5,11658 <_malloc_r+0x324>
   11b14:	01083303          	ld	t1,16(a6)
   11b18:	00b885b3          	add	a1,a7,a1
   11b1c:	0015e693          	ori	a3,a1,1
   11b20:	00d33423          	sd	a3,8(t1)
   11b24:	c35ff06f          	j	11758 <_malloc_r+0x424>
   11b28:	1861b423          	sd	t1,392(gp) # 13d40 <__malloc_sbrk_base>
   11b2c:	b45ff06f          	j	11670 <_malloc_r+0x33c>
   11b30:	00100793          	li	a5,1
   11b34:	00f33423          	sd	a5,8(t1)
   11b38:	e85ff06f          	j	119bc <_malloc_r+0x688>
   11b3c:	15400613          	li	a2,340
   11b40:	08d66a63          	bltu	a2,a3,11bd4 <_malloc_r+0x8a0>
   11b44:	00f35693          	srli	a3,t1,0xf
   11b48:	00169513          	slli	a0,a3,0x1
   11b4c:	0f05051b          	addiw	a0,a0,240
   11b50:	00351513          	slli	a0,a0,0x3
   11b54:	0776861b          	addiw	a2,a3,119
   11b58:	cd9ff06f          	j	11830 <_malloc_r+0x4fc>
   11b5c:	55400693          	li	a3,1364
   11b60:	08f6ea63          	bltu	a3,a5,11bf4 <_malloc_r+0x8c0>
   11b64:	01275793          	srli	a5,a4,0x12
   11b68:	07d7889b          	addiw	a7,a5,125
   11b6c:	0018951b          	slliw	a0,a7,0x1
   11b70:	07c78e1b          	addiw	t3,a5,124
   11b74:	00351513          	slli	a0,a0,0x3
   11b78:	8bdff06f          	j	11434 <_malloc_r+0x100>
   11b7c:	ff0e8e93          	addi	t4,t4,-16
   11b80:	01d606b3          	add	a3,a2,t4
   11b84:	00000513          	li	a0,0
   11b88:	00000593          	li	a1,0
   11b8c:	b71ff06f          	j	116fc <_malloc_r+0x3c8>
   11b90:	00813683          	ld	a3,8(sp)
   11b94:	00000593          	li	a1,0
   11b98:	00000513          	li	a0,0
   11b9c:	b61ff06f          	j	116fc <_malloc_r+0x3c8>
   11ba0:	01078593          	addi	a1,a5,16
   11ba4:	00040513          	mv	a0,s0
   11ba8:	01c13c23          	sd	t3,24(sp)
   11bac:	01013823          	sd	a6,16(sp)
   11bb0:	00e13423          	sd	a4,8(sp)
   11bb4:	c7cff0ef          	jal	11030 <_free_r>
   11bb8:	01013803          	ld	a6,16(sp)
   11bbc:	01813e03          	ld	t3,24(sp)
   11bc0:	00813703          	ld	a4,8(sp)
   11bc4:	01083303          	ld	t1,16(a6)
   11bc8:	000e2603          	lw	a2,0(t3)
   11bcc:	00833683          	ld	a3,8(t1)
   11bd0:	b89ff06f          	j	11758 <_malloc_r+0x424>
   11bd4:	55400613          	li	a2,1364
   11bd8:	02d66663          	bltu	a2,a3,11c04 <_malloc_r+0x8d0>
   11bdc:	01235693          	srli	a3,t1,0x12
   11be0:	00169513          	slli	a0,a3,0x1
   11be4:	0fa5051b          	addiw	a0,a0,250
   11be8:	00351513          	slli	a0,a0,0x3
   11bec:	07c6861b          	addiw	a2,a3,124
   11bf0:	c41ff06f          	j	11830 <_malloc_r+0x4fc>
   11bf4:	7f000513          	li	a0,2032
   11bf8:	07f00893          	li	a7,127
   11bfc:	07e00e13          	li	t3,126
   11c00:	835ff06f          	j	11434 <_malloc_r+0x100>
   11c04:	7f000513          	li	a0,2032
   11c08:	07e00613          	li	a2,126
   11c0c:	c25ff06f          	j	11830 <_malloc_r+0x4fc>
   11c10:	00883783          	ld	a5,8(a6)
   11c14:	df1ff06f          	j	11a04 <_malloc_r+0x6d0>

0000000000011c18 <__malloc_lock>:
   11c18:	00008067          	ret

0000000000011c1c <__malloc_unlock>:
   11c1c:	00008067          	ret

0000000000011c20 <_fclose_r>:
   11c20:	fe010113          	addi	sp,sp,-32
   11c24:	00113c23          	sd	ra,24(sp)
   11c28:	01213023          	sd	s2,0(sp)
   11c2c:	02058863          	beqz	a1,11c5c <_fclose_r+0x3c>
   11c30:	00813823          	sd	s0,16(sp)
   11c34:	00913423          	sd	s1,8(sp)
   11c38:	00058413          	mv	s0,a1
   11c3c:	00050493          	mv	s1,a0
   11c40:	00050663          	beqz	a0,11c4c <_fclose_r+0x2c>
   11c44:	04853783          	ld	a5,72(a0)
   11c48:	0c078c63          	beqz	a5,11d20 <_fclose_r+0x100>
   11c4c:	01041783          	lh	a5,16(s0)
   11c50:	02079263          	bnez	a5,11c74 <_fclose_r+0x54>
   11c54:	01013403          	ld	s0,16(sp)
   11c58:	00813483          	ld	s1,8(sp)
   11c5c:	01813083          	ld	ra,24(sp)
   11c60:	00000913          	li	s2,0
   11c64:	00090513          	mv	a0,s2
   11c68:	00013903          	ld	s2,0(sp)
   11c6c:	02010113          	addi	sp,sp,32
   11c70:	00008067          	ret
   11c74:	00040593          	mv	a1,s0
   11c78:	00048513          	mv	a0,s1
   11c7c:	0b8000ef          	jal	11d34 <__sflush_r>
   11c80:	05043783          	ld	a5,80(s0)
   11c84:	00050913          	mv	s2,a0
   11c88:	00078a63          	beqz	a5,11c9c <_fclose_r+0x7c>
   11c8c:	03043583          	ld	a1,48(s0)
   11c90:	00048513          	mv	a0,s1
   11c94:	000780e7          	jalr	a5
   11c98:	06054463          	bltz	a0,11d00 <_fclose_r+0xe0>
   11c9c:	01045783          	lhu	a5,16(s0)
   11ca0:	0807f793          	andi	a5,a5,128
   11ca4:	06079663          	bnez	a5,11d10 <_fclose_r+0xf0>
   11ca8:	05843583          	ld	a1,88(s0)
   11cac:	00058c63          	beqz	a1,11cc4 <_fclose_r+0xa4>
   11cb0:	07440793          	addi	a5,s0,116
   11cb4:	00f58663          	beq	a1,a5,11cc0 <_fclose_r+0xa0>
   11cb8:	00048513          	mv	a0,s1
   11cbc:	b74ff0ef          	jal	11030 <_free_r>
   11cc0:	04043c23          	sd	zero,88(s0)
   11cc4:	07843583          	ld	a1,120(s0)
   11cc8:	00058863          	beqz	a1,11cd8 <_fclose_r+0xb8>
   11ccc:	00048513          	mv	a0,s1
   11cd0:	b60ff0ef          	jal	11030 <_free_r>
   11cd4:	06043c23          	sd	zero,120(s0)
   11cd8:	aa5fe0ef          	jal	1077c <__sfp_lock_acquire>
   11cdc:	00041823          	sh	zero,16(s0)
   11ce0:	aa1fe0ef          	jal	10780 <__sfp_lock_release>
   11ce4:	01813083          	ld	ra,24(sp)
   11ce8:	01013403          	ld	s0,16(sp)
   11cec:	00813483          	ld	s1,8(sp)
   11cf0:	00090513          	mv	a0,s2
   11cf4:	00013903          	ld	s2,0(sp)
   11cf8:	02010113          	addi	sp,sp,32
   11cfc:	00008067          	ret
   11d00:	01045783          	lhu	a5,16(s0)
   11d04:	fff00913          	li	s2,-1
   11d08:	0807f793          	andi	a5,a5,128
   11d0c:	f8078ee3          	beqz	a5,11ca8 <_fclose_r+0x88>
   11d10:	01843583          	ld	a1,24(s0)
   11d14:	00048513          	mv	a0,s1
   11d18:	b18ff0ef          	jal	11030 <_free_r>
   11d1c:	f8dff06f          	j	11ca8 <_fclose_r+0x88>
   11d20:	a39fe0ef          	jal	10758 <__sinit>
   11d24:	f29ff06f          	j	11c4c <_fclose_r+0x2c>

0000000000011d28 <fclose>:
   11d28:	00050593          	mv	a1,a0
   11d2c:	1801b503          	ld	a0,384(gp) # 13d38 <_impure_ptr>
   11d30:	ef1ff06f          	j	11c20 <_fclose_r>

0000000000011d34 <__sflush_r>:
   11d34:	01059703          	lh	a4,16(a1)
   11d38:	fd010113          	addi	sp,sp,-48
   11d3c:	02813023          	sd	s0,32(sp)
   11d40:	01313423          	sd	s3,8(sp)
   11d44:	02113423          	sd	ra,40(sp)
   11d48:	00877793          	andi	a5,a4,8
   11d4c:	00058413          	mv	s0,a1
   11d50:	00050993          	mv	s3,a0
   11d54:	12079263          	bnez	a5,11e78 <__sflush_r+0x144>
   11d58:	000017b7          	lui	a5,0x1
   11d5c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11d60:	0085a683          	lw	a3,8(a1)
   11d64:	00f767b3          	or	a5,a4,a5
   11d68:	00f59823          	sh	a5,16(a1)
   11d6c:	18d05c63          	blez	a3,11f04 <__sflush_r+0x1d0>
   11d70:	04843803          	ld	a6,72(s0)
   11d74:	0e080663          	beqz	a6,11e60 <__sflush_r+0x12c>
   11d78:	00913c23          	sd	s1,24(sp)
   11d7c:	03371693          	slli	a3,a4,0x33
   11d80:	0009a483          	lw	s1,0(s3)
   11d84:	0009a023          	sw	zero,0(s3)
   11d88:	1806ca63          	bltz	a3,11f1c <__sflush_r+0x1e8>
   11d8c:	03043583          	ld	a1,48(s0)
   11d90:	00000613          	li	a2,0
   11d94:	00100693          	li	a3,1
   11d98:	00098513          	mv	a0,s3
   11d9c:	000800e7          	jalr	a6
   11da0:	fff00793          	li	a5,-1
   11da4:	00050613          	mv	a2,a0
   11da8:	1af50c63          	beq	a0,a5,11f60 <__sflush_r+0x22c>
   11dac:	01041783          	lh	a5,16(s0)
   11db0:	04843803          	ld	a6,72(s0)
   11db4:	0047f793          	andi	a5,a5,4
   11db8:	00078e63          	beqz	a5,11dd4 <__sflush_r+0xa0>
   11dbc:	00842703          	lw	a4,8(s0)
   11dc0:	05843783          	ld	a5,88(s0)
   11dc4:	40e60633          	sub	a2,a2,a4
   11dc8:	00078663          	beqz	a5,11dd4 <__sflush_r+0xa0>
   11dcc:	07042783          	lw	a5,112(s0)
   11dd0:	40f60633          	sub	a2,a2,a5
   11dd4:	03043583          	ld	a1,48(s0)
   11dd8:	00000693          	li	a3,0
   11ddc:	00098513          	mv	a0,s3
   11de0:	000800e7          	jalr	a6
   11de4:	fff00713          	li	a4,-1
   11de8:	01041783          	lh	a5,16(s0)
   11dec:	12e51c63          	bne	a0,a4,11f24 <__sflush_r+0x1f0>
   11df0:	0009a683          	lw	a3,0(s3)
   11df4:	01d00713          	li	a4,29
   11df8:	18d76263          	bltu	a4,a3,11f7c <__sflush_r+0x248>
   11dfc:	20400737          	lui	a4,0x20400
   11e00:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ebc49>
   11e04:	00d75733          	srl	a4,a4,a3
   11e08:	00177713          	andi	a4,a4,1
   11e0c:	16070863          	beqz	a4,11f7c <__sflush_r+0x248>
   11e10:	01843683          	ld	a3,24(s0)
   11e14:	fffff737          	lui	a4,0xfffff
   11e18:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb447>
   11e1c:	00e7f733          	and	a4,a5,a4
   11e20:	00e41823          	sh	a4,16(s0)
   11e24:	00042423          	sw	zero,8(s0)
   11e28:	00d43023          	sd	a3,0(s0)
   11e2c:	03379713          	slli	a4,a5,0x33
   11e30:	00075663          	bgez	a4,11e3c <__sflush_r+0x108>
   11e34:	0009a783          	lw	a5,0(s3)
   11e38:	10078863          	beqz	a5,11f48 <__sflush_r+0x214>
   11e3c:	05843583          	ld	a1,88(s0)
   11e40:	0099a023          	sw	s1,0(s3)
   11e44:	10058a63          	beqz	a1,11f58 <__sflush_r+0x224>
   11e48:	07440793          	addi	a5,s0,116
   11e4c:	00f58663          	beq	a1,a5,11e58 <__sflush_r+0x124>
   11e50:	00098513          	mv	a0,s3
   11e54:	9dcff0ef          	jal	11030 <_free_r>
   11e58:	01813483          	ld	s1,24(sp)
   11e5c:	04043c23          	sd	zero,88(s0)
   11e60:	02813083          	ld	ra,40(sp)
   11e64:	02013403          	ld	s0,32(sp)
   11e68:	00813983          	ld	s3,8(sp)
   11e6c:	00000513          	li	a0,0
   11e70:	03010113          	addi	sp,sp,48
   11e74:	00008067          	ret
   11e78:	01213823          	sd	s2,16(sp)
   11e7c:	0185b903          	ld	s2,24(a1)
   11e80:	08090a63          	beqz	s2,11f14 <__sflush_r+0x1e0>
   11e84:	00913c23          	sd	s1,24(sp)
   11e88:	0005b483          	ld	s1,0(a1)
   11e8c:	00377713          	andi	a4,a4,3
   11e90:	0125b023          	sd	s2,0(a1)
   11e94:	412484bb          	subw	s1,s1,s2
   11e98:	00000793          	li	a5,0
   11e9c:	00071463          	bnez	a4,11ea4 <__sflush_r+0x170>
   11ea0:	0205a783          	lw	a5,32(a1)
   11ea4:	00f42623          	sw	a5,12(s0)
   11ea8:	00904863          	bgtz	s1,11eb8 <__sflush_r+0x184>
   11eac:	0640006f          	j	11f10 <__sflush_r+0x1dc>
   11eb0:	00a90933          	add	s2,s2,a0
   11eb4:	04905e63          	blez	s1,11f10 <__sflush_r+0x1dc>
   11eb8:	04043783          	ld	a5,64(s0)
   11ebc:	03043583          	ld	a1,48(s0)
   11ec0:	00048693          	mv	a3,s1
   11ec4:	00090613          	mv	a2,s2
   11ec8:	00098513          	mv	a0,s3
   11ecc:	000780e7          	jalr	a5
   11ed0:	40a484bb          	subw	s1,s1,a0
   11ed4:	fca04ee3          	bgtz	a0,11eb0 <__sflush_r+0x17c>
   11ed8:	01045783          	lhu	a5,16(s0)
   11edc:	01013903          	ld	s2,16(sp)
   11ee0:	0407e793          	ori	a5,a5,64
   11ee4:	02813083          	ld	ra,40(sp)
   11ee8:	00f41823          	sh	a5,16(s0)
   11eec:	02013403          	ld	s0,32(sp)
   11ef0:	01813483          	ld	s1,24(sp)
   11ef4:	00813983          	ld	s3,8(sp)
   11ef8:	fff00513          	li	a0,-1
   11efc:	03010113          	addi	sp,sp,48
   11f00:	00008067          	ret
   11f04:	0705a683          	lw	a3,112(a1)
   11f08:	e6d044e3          	bgtz	a3,11d70 <__sflush_r+0x3c>
   11f0c:	f55ff06f          	j	11e60 <__sflush_r+0x12c>
   11f10:	01813483          	ld	s1,24(sp)
   11f14:	01013903          	ld	s2,16(sp)
   11f18:	f49ff06f          	j	11e60 <__sflush_r+0x12c>
   11f1c:	09043603          	ld	a2,144(s0)
   11f20:	e95ff06f          	j	11db4 <__sflush_r+0x80>
   11f24:	01843683          	ld	a3,24(s0)
   11f28:	fffff737          	lui	a4,0xfffff
   11f2c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb447>
   11f30:	00e7f733          	and	a4,a5,a4
   11f34:	00e41823          	sh	a4,16(s0)
   11f38:	00042423          	sw	zero,8(s0)
   11f3c:	00d43023          	sd	a3,0(s0)
   11f40:	03379713          	slli	a4,a5,0x33
   11f44:	ee075ce3          	bgez	a4,11e3c <__sflush_r+0x108>
   11f48:	05843583          	ld	a1,88(s0)
   11f4c:	08a43823          	sd	a0,144(s0)
   11f50:	0099a023          	sw	s1,0(s3)
   11f54:	ee059ae3          	bnez	a1,11e48 <__sflush_r+0x114>
   11f58:	01813483          	ld	s1,24(sp)
   11f5c:	f05ff06f          	j	11e60 <__sflush_r+0x12c>
   11f60:	0009a783          	lw	a5,0(s3)
   11f64:	e40784e3          	beqz	a5,11dac <__sflush_r+0x78>
   11f68:	fe378713          	addi	a4,a5,-29
   11f6c:	00070c63          	beqz	a4,11f84 <__sflush_r+0x250>
   11f70:	fea78793          	addi	a5,a5,-22
   11f74:	00078863          	beqz	a5,11f84 <__sflush_r+0x250>
   11f78:	01045783          	lhu	a5,16(s0)
   11f7c:	0407e793          	ori	a5,a5,64
   11f80:	f65ff06f          	j	11ee4 <__sflush_r+0x1b0>
   11f84:	0099a023          	sw	s1,0(s3)
   11f88:	01813483          	ld	s1,24(sp)
   11f8c:	ed5ff06f          	j	11e60 <__sflush_r+0x12c>

0000000000011f90 <_fflush_r>:
   11f90:	00050793          	mv	a5,a0
   11f94:	00050663          	beqz	a0,11fa0 <_fflush_r+0x10>
   11f98:	04853703          	ld	a4,72(a0)
   11f9c:	00070e63          	beqz	a4,11fb8 <_fflush_r+0x28>
   11fa0:	01059703          	lh	a4,16(a1)
   11fa4:	00071663          	bnez	a4,11fb0 <_fflush_r+0x20>
   11fa8:	00000513          	li	a0,0
   11fac:	00008067          	ret
   11fb0:	00078513          	mv	a0,a5
   11fb4:	d81ff06f          	j	11d34 <__sflush_r>
   11fb8:	fe010113          	addi	sp,sp,-32
   11fbc:	00b13423          	sd	a1,8(sp)
   11fc0:	00113c23          	sd	ra,24(sp)
   11fc4:	00a13023          	sd	a0,0(sp)
   11fc8:	f90fe0ef          	jal	10758 <__sinit>
   11fcc:	00813583          	ld	a1,8(sp)
   11fd0:	00013783          	ld	a5,0(sp)
   11fd4:	01059703          	lh	a4,16(a1)
   11fd8:	00070a63          	beqz	a4,11fec <_fflush_r+0x5c>
   11fdc:	01813083          	ld	ra,24(sp)
   11fe0:	00078513          	mv	a0,a5
   11fe4:	02010113          	addi	sp,sp,32
   11fe8:	d4dff06f          	j	11d34 <__sflush_r>
   11fec:	01813083          	ld	ra,24(sp)
   11ff0:	00000513          	li	a0,0
   11ff4:	02010113          	addi	sp,sp,32
   11ff8:	00008067          	ret

0000000000011ffc <fflush>:
   11ffc:	06050063          	beqz	a0,1205c <fflush+0x60>
   12000:	00050593          	mv	a1,a0
   12004:	1801b503          	ld	a0,384(gp) # 13d38 <_impure_ptr>
   12008:	00050663          	beqz	a0,12014 <fflush+0x18>
   1200c:	04853783          	ld	a5,72(a0)
   12010:	00078c63          	beqz	a5,12028 <fflush+0x2c>
   12014:	01059783          	lh	a5,16(a1)
   12018:	00079663          	bnez	a5,12024 <fflush+0x28>
   1201c:	00000513          	li	a0,0
   12020:	00008067          	ret
   12024:	d11ff06f          	j	11d34 <__sflush_r>
   12028:	fe010113          	addi	sp,sp,-32
   1202c:	00b13423          	sd	a1,8(sp)
   12030:	00a13023          	sd	a0,0(sp)
   12034:	00113c23          	sd	ra,24(sp)
   12038:	f20fe0ef          	jal	10758 <__sinit>
   1203c:	00813583          	ld	a1,8(sp)
   12040:	00013503          	ld	a0,0(sp)
   12044:	01059783          	lh	a5,16(a1)
   12048:	02079863          	bnez	a5,12078 <fflush+0x7c>
   1204c:	01813083          	ld	ra,24(sp)
   12050:	00000513          	li	a0,0
   12054:	02010113          	addi	sp,sp,32
   12058:	00008067          	ret
   1205c:	00013637          	lui	a2,0x13
   12060:	000125b7          	lui	a1,0x12
   12064:	00013537          	lui	a0,0x13
   12068:	3b060613          	addi	a2,a2,944 # 133b0 <__sglue>
   1206c:	f9058593          	addi	a1,a1,-112 # 11f90 <_fflush_r>
   12070:	3c850513          	addi	a0,a0,968 # 133c8 <_impure_data>
   12074:	f40fe06f          	j	107b4 <_fwalk_sglue>
   12078:	01813083          	ld	ra,24(sp)
   1207c:	02010113          	addi	sp,sp,32
   12080:	cb5ff06f          	j	11d34 <__sflush_r>

0000000000012084 <_sbrk_r>:
   12084:	fe010113          	addi	sp,sp,-32
   12088:	00813823          	sd	s0,16(sp)
   1208c:	00913423          	sd	s1,8(sp)
   12090:	00050493          	mv	s1,a0
   12094:	00058513          	mv	a0,a1
   12098:	00113c23          	sd	ra,24(sp)
   1209c:	1a01a023          	sw	zero,416(gp) # 13d58 <errno>
   120a0:	22c000ef          	jal	122cc <_sbrk>
   120a4:	fff00793          	li	a5,-1
   120a8:	00f50c63          	beq	a0,a5,120c0 <_sbrk_r+0x3c>
   120ac:	01813083          	ld	ra,24(sp)
   120b0:	01013403          	ld	s0,16(sp)
   120b4:	00813483          	ld	s1,8(sp)
   120b8:	02010113          	addi	sp,sp,32
   120bc:	00008067          	ret
   120c0:	1a01a783          	lw	a5,416(gp) # 13d58 <errno>
   120c4:	fe0784e3          	beqz	a5,120ac <_sbrk_r+0x28>
   120c8:	01813083          	ld	ra,24(sp)
   120cc:	01013403          	ld	s0,16(sp)
   120d0:	00f4a023          	sw	a5,0(s1)
   120d4:	00813483          	ld	s1,8(sp)
   120d8:	02010113          	addi	sp,sp,32
   120dc:	00008067          	ret

00000000000120e0 <__libc_fini_array>:
   120e0:	fe010113          	addi	sp,sp,-32
   120e4:	00813823          	sd	s0,16(sp)
   120e8:	000137b7          	lui	a5,0x13
   120ec:	00013437          	lui	s0,0x13
   120f0:	3b078793          	addi	a5,a5,944 # 133b0 <__sglue>
   120f4:	3a840413          	addi	s0,s0,936 # 133a8 <__do_global_dtors_aux_fini_array_entry>
   120f8:	408787b3          	sub	a5,a5,s0
   120fc:	00913423          	sd	s1,8(sp)
   12100:	00113c23          	sd	ra,24(sp)
   12104:	4037d493          	srai	s1,a5,0x3
   12108:	02048063          	beqz	s1,12128 <__libc_fini_array+0x48>
   1210c:	ff840413          	addi	s0,s0,-8
   12110:	00f40433          	add	s0,s0,a5
   12114:	00043783          	ld	a5,0(s0)
   12118:	fff48493          	addi	s1,s1,-1
   1211c:	ff840413          	addi	s0,s0,-8
   12120:	000780e7          	jalr	a5
   12124:	fe0498e3          	bnez	s1,12114 <__libc_fini_array+0x34>
   12128:	01813083          	ld	ra,24(sp)
   1212c:	01013403          	ld	s0,16(sp)
   12130:	00813483          	ld	s1,8(sp)
   12134:	02010113          	addi	sp,sp,32
   12138:	00008067          	ret

000000000001213c <__register_exitproc>:
   1213c:	1a81b783          	ld	a5,424(gp) # 13d60 <__atexit>
   12140:	04078e63          	beqz	a5,1219c <__register_exitproc+0x60>
   12144:	0087a703          	lw	a4,8(a5)
   12148:	01f00813          	li	a6,31
   1214c:	08e84463          	blt	a6,a4,121d4 <__register_exitproc+0x98>
   12150:	02050863          	beqz	a0,12180 <__register_exitproc+0x44>
   12154:	00371813          	slli	a6,a4,0x3
   12158:	01078833          	add	a6,a5,a6
   1215c:	10c83823          	sd	a2,272(a6)
   12160:	3107a883          	lw	a7,784(a5)
   12164:	00100613          	li	a2,1
   12168:	00e6163b          	sllw	a2,a2,a4
   1216c:	00c8e8b3          	or	a7,a7,a2
   12170:	3117a823          	sw	a7,784(a5)
   12174:	20d83823          	sd	a3,528(a6)
   12178:	00200693          	li	a3,2
   1217c:	02d50863          	beq	a0,a3,121ac <__register_exitproc+0x70>
   12180:	0017069b          	addiw	a3,a4,1
   12184:	00371713          	slli	a4,a4,0x3
   12188:	00d7a423          	sw	a3,8(a5)
   1218c:	00e787b3          	add	a5,a5,a4
   12190:	00b7b823          	sd	a1,16(a5)
   12194:	00000513          	li	a0,0
   12198:	00008067          	ret
   1219c:	000147b7          	lui	a5,0x14
   121a0:	0a078793          	addi	a5,a5,160 # 140a0 <__atexit0>
   121a4:	1af1b423          	sd	a5,424(gp) # 13d60 <__atexit>
   121a8:	f9dff06f          	j	12144 <__register_exitproc+0x8>
   121ac:	3147a683          	lw	a3,788(a5)
   121b0:	00000513          	li	a0,0
   121b4:	00d66633          	or	a2,a2,a3
   121b8:	0017069b          	addiw	a3,a4,1
   121bc:	00371713          	slli	a4,a4,0x3
   121c0:	30c7aa23          	sw	a2,788(a5)
   121c4:	00d7a423          	sw	a3,8(a5)
   121c8:	00e787b3          	add	a5,a5,a4
   121cc:	00b7b823          	sd	a1,16(a5)
   121d0:	00008067          	ret
   121d4:	fff00513          	li	a0,-1
   121d8:	00008067          	ret

00000000000121dc <_close>:
   121dc:	03900893          	li	a7,57
   121e0:	00000073          	ecall
   121e4:	00054663          	bltz	a0,121f0 <_close+0x14>
   121e8:	0005051b          	sext.w	a0,a0
   121ec:	00008067          	ret
   121f0:	fe010113          	addi	sp,sp,-32
   121f4:	00113c23          	sd	ra,24(sp)
   121f8:	00a13423          	sd	a0,8(sp)
   121fc:	188000ef          	jal	12384 <__errno>
   12200:	00813783          	ld	a5,8(sp)
   12204:	01813083          	ld	ra,24(sp)
   12208:	40f007bb          	negw	a5,a5
   1220c:	00f52023          	sw	a5,0(a0)
   12210:	fff00513          	li	a0,-1
   12214:	02010113          	addi	sp,sp,32
   12218:	00008067          	ret

000000000001221c <_exit>:
   1221c:	05d00893          	li	a7,93
   12220:	00000073          	ecall
   12224:	00054463          	bltz	a0,1222c <_exit+0x10>
   12228:	0000006f          	j	12228 <_exit+0xc>
   1222c:	fe010113          	addi	sp,sp,-32
   12230:	00113c23          	sd	ra,24(sp)
   12234:	00a13423          	sd	a0,8(sp)
   12238:	14c000ef          	jal	12384 <__errno>
   1223c:	00813783          	ld	a5,8(sp)
   12240:	40f007bb          	negw	a5,a5
   12244:	00f52023          	sw	a5,0(a0)
   12248:	0000006f          	j	12248 <_exit+0x2c>

000000000001224c <_lseek>:
   1224c:	03e00893          	li	a7,62
   12250:	00000073          	ecall
   12254:	00054463          	bltz	a0,1225c <_lseek+0x10>
   12258:	00008067          	ret
   1225c:	fe010113          	addi	sp,sp,-32
   12260:	00113c23          	sd	ra,24(sp)
   12264:	00a13423          	sd	a0,8(sp)
   12268:	11c000ef          	jal	12384 <__errno>
   1226c:	00813783          	ld	a5,8(sp)
   12270:	01813083          	ld	ra,24(sp)
   12274:	40f007bb          	negw	a5,a5
   12278:	00f52023          	sw	a5,0(a0)
   1227c:	fff00793          	li	a5,-1
   12280:	00078513          	mv	a0,a5
   12284:	02010113          	addi	sp,sp,32
   12288:	00008067          	ret

000000000001228c <_read>:
   1228c:	03f00893          	li	a7,63
   12290:	00000073          	ecall
   12294:	00054463          	bltz	a0,1229c <_read+0x10>
   12298:	00008067          	ret
   1229c:	fe010113          	addi	sp,sp,-32
   122a0:	00113c23          	sd	ra,24(sp)
   122a4:	00a13423          	sd	a0,8(sp)
   122a8:	0dc000ef          	jal	12384 <__errno>
   122ac:	00813783          	ld	a5,8(sp)
   122b0:	01813083          	ld	ra,24(sp)
   122b4:	40f007bb          	negw	a5,a5
   122b8:	00f52023          	sw	a5,0(a0)
   122bc:	fff00793          	li	a5,-1
   122c0:	00078513          	mv	a0,a5
   122c4:	02010113          	addi	sp,sp,32
   122c8:	00008067          	ret

00000000000122cc <_sbrk>:
   122cc:	1c81b783          	ld	a5,456(gp) # 13d80 <heap_end.0>
   122d0:	ff010113          	addi	sp,sp,-16
   122d4:	00113423          	sd	ra,8(sp)
   122d8:	00050713          	mv	a4,a0
   122dc:	02079063          	bnez	a5,122fc <_sbrk+0x30>
   122e0:	0d600893          	li	a7,214
   122e4:	00000513          	li	a0,0
   122e8:	00000073          	ecall
   122ec:	fff00793          	li	a5,-1
   122f0:	02f50c63          	beq	a0,a5,12328 <_sbrk+0x5c>
   122f4:	00050793          	mv	a5,a0
   122f8:	1ca1b423          	sd	a0,456(gp) # 13d80 <heap_end.0>
   122fc:	00f70533          	add	a0,a4,a5
   12300:	0d600893          	li	a7,214
   12304:	00000073          	ecall
   12308:	1c81b783          	ld	a5,456(gp) # 13d80 <heap_end.0>
   1230c:	00f70733          	add	a4,a4,a5
   12310:	00e51c63          	bne	a0,a4,12328 <_sbrk+0x5c>
   12314:	00813083          	ld	ra,8(sp)
   12318:	1ca1b423          	sd	a0,456(gp) # 13d80 <heap_end.0>
   1231c:	00078513          	mv	a0,a5
   12320:	01010113          	addi	sp,sp,16
   12324:	00008067          	ret
   12328:	05c000ef          	jal	12384 <__errno>
   1232c:	00813083          	ld	ra,8(sp)
   12330:	00c00793          	li	a5,12
   12334:	00f52023          	sw	a5,0(a0)
   12338:	fff00513          	li	a0,-1
   1233c:	01010113          	addi	sp,sp,16
   12340:	00008067          	ret

0000000000012344 <_write>:
   12344:	04000893          	li	a7,64
   12348:	00000073          	ecall
   1234c:	00054463          	bltz	a0,12354 <_write+0x10>
   12350:	00008067          	ret
   12354:	fe010113          	addi	sp,sp,-32
   12358:	00113c23          	sd	ra,24(sp)
   1235c:	00a13423          	sd	a0,8(sp)
   12360:	024000ef          	jal	12384 <__errno>
   12364:	00813783          	ld	a5,8(sp)
   12368:	01813083          	ld	ra,24(sp)
   1236c:	40f007bb          	negw	a5,a5
   12370:	00f52023          	sw	a5,0(a0)
   12374:	fff00793          	li	a5,-1
   12378:	00078513          	mv	a0,a5
   1237c:	02010113          	addi	sp,sp,32
   12380:	00008067          	ret

0000000000012384 <__errno>:
   12384:	1801b503          	ld	a0,384(gp) # 13d38 <_impure_ptr>
   12388:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012390 <__EH_FRAME_BEGIN__>:
   12390:	0000                	.insn	2, 0x0000
	...

Disassembly of section .init_array:

0000000000013398 <__init_array_start>:
   13398:	014c                	.insn	2, 0x014c
   1339a:	0001                	.insn	2, 0x0001
   1339c:	0000                	.insn	2, 0x0000
	...

00000000000133a0 <__frame_dummy_init_array_entry>:
   133a0:	01fc                	.insn	2, 0x01fc
   133a2:	0001                	.insn	2, 0x0001
   133a4:	0000                	.insn	2, 0x0000
	...

Disassembly of section .fini_array:

00000000000133a8 <__do_global_dtors_aux_fini_array_entry>:
   133a8:	01b8                	.insn	2, 0x01b8
   133aa:	0001                	.insn	2, 0x0001
   133ac:	0000                	.insn	2, 0x0000
	...

Disassembly of section .data:

00000000000133b0 <__sglue>:
	...
   133b8:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   133bc:	0000                	.insn	2, 0x0000
   133be:	0000                	.insn	2, 0x0000
   133c0:	3e68                	.insn	2, 0x3e68
   133c2:	0001                	.insn	2, 0x0001
   133c4:	0000                	.insn	2, 0x0000
	...

00000000000133c8 <_impure_data>:
	...
   133d0:	3e68                	.insn	2, 0x3e68
   133d2:	0001                	.insn	2, 0x0001
   133d4:	0000                	.insn	2, 0x0000
   133d6:	0000                	.insn	2, 0x0000
   133d8:	3f18                	.insn	2, 0x3f18
   133da:	0001                	.insn	2, 0x0001
   133dc:	0000                	.insn	2, 0x0000
   133de:	0000                	.insn	2, 0x0000
   133e0:	3fc8                	.insn	2, 0x3fc8
   133e2:	0001                	.insn	2, 0x0001
	...
   13498:	0001                	.insn	2, 0x0001
   1349a:	0000                	.insn	2, 0x0000
   1349c:	0000                	.insn	2, 0x0000
   1349e:	0000                	.insn	2, 0x0000
   134a0:	330e                	.insn	2, 0x330e
   134a2:	abcd                	.insn	2, 0xabcd
   134a4:	1234                	.insn	2, 0x1234
   134a6:	e66d                	.insn	2, 0xe66d
   134a8:	deec                	.insn	2, 0xdeec
   134aa:	0005                	.insn	2, 0x0005
   134ac:	0000000b          	.insn	4, 0x000b
	...

0000000000013520 <__malloc_av_>:
	...
   13530:	3520                	.insn	2, 0x3520
   13532:	0001                	.insn	2, 0x0001
   13534:	0000                	.insn	2, 0x0000
   13536:	0000                	.insn	2, 0x0000
   13538:	3520                	.insn	2, 0x3520
   1353a:	0001                	.insn	2, 0x0001
   1353c:	0000                	.insn	2, 0x0000
   1353e:	0000                	.insn	2, 0x0000
   13540:	3530                	.insn	2, 0x3530
   13542:	0001                	.insn	2, 0x0001
   13544:	0000                	.insn	2, 0x0000
   13546:	0000                	.insn	2, 0x0000
   13548:	3530                	.insn	2, 0x3530
   1354a:	0001                	.insn	2, 0x0001
   1354c:	0000                	.insn	2, 0x0000
   1354e:	0000                	.insn	2, 0x0000
   13550:	3540                	.insn	2, 0x3540
   13552:	0001                	.insn	2, 0x0001
   13554:	0000                	.insn	2, 0x0000
   13556:	0000                	.insn	2, 0x0000
   13558:	3540                	.insn	2, 0x3540
   1355a:	0001                	.insn	2, 0x0001
   1355c:	0000                	.insn	2, 0x0000
   1355e:	0000                	.insn	2, 0x0000
   13560:	3550                	.insn	2, 0x3550
   13562:	0001                	.insn	2, 0x0001
   13564:	0000                	.insn	2, 0x0000
   13566:	0000                	.insn	2, 0x0000
   13568:	3550                	.insn	2, 0x3550
   1356a:	0001                	.insn	2, 0x0001
   1356c:	0000                	.insn	2, 0x0000
   1356e:	0000                	.insn	2, 0x0000
   13570:	3560                	.insn	2, 0x3560
   13572:	0001                	.insn	2, 0x0001
   13574:	0000                	.insn	2, 0x0000
   13576:	0000                	.insn	2, 0x0000
   13578:	3560                	.insn	2, 0x3560
   1357a:	0001                	.insn	2, 0x0001
   1357c:	0000                	.insn	2, 0x0000
   1357e:	0000                	.insn	2, 0x0000
   13580:	3570                	.insn	2, 0x3570
   13582:	0001                	.insn	2, 0x0001
   13584:	0000                	.insn	2, 0x0000
   13586:	0000                	.insn	2, 0x0000
   13588:	3570                	.insn	2, 0x3570
   1358a:	0001                	.insn	2, 0x0001
   1358c:	0000                	.insn	2, 0x0000
   1358e:	0000                	.insn	2, 0x0000
   13590:	3580                	.insn	2, 0x3580
   13592:	0001                	.insn	2, 0x0001
   13594:	0000                	.insn	2, 0x0000
   13596:	0000                	.insn	2, 0x0000
   13598:	3580                	.insn	2, 0x3580
   1359a:	0001                	.insn	2, 0x0001
   1359c:	0000                	.insn	2, 0x0000
   1359e:	0000                	.insn	2, 0x0000
   135a0:	3590                	.insn	2, 0x3590
   135a2:	0001                	.insn	2, 0x0001
   135a4:	0000                	.insn	2, 0x0000
   135a6:	0000                	.insn	2, 0x0000
   135a8:	3590                	.insn	2, 0x3590
   135aa:	0001                	.insn	2, 0x0001
   135ac:	0000                	.insn	2, 0x0000
   135ae:	0000                	.insn	2, 0x0000
   135b0:	35a0                	.insn	2, 0x35a0
   135b2:	0001                	.insn	2, 0x0001
   135b4:	0000                	.insn	2, 0x0000
   135b6:	0000                	.insn	2, 0x0000
   135b8:	35a0                	.insn	2, 0x35a0
   135ba:	0001                	.insn	2, 0x0001
   135bc:	0000                	.insn	2, 0x0000
   135be:	0000                	.insn	2, 0x0000
   135c0:	35b0                	.insn	2, 0x35b0
   135c2:	0001                	.insn	2, 0x0001
   135c4:	0000                	.insn	2, 0x0000
   135c6:	0000                	.insn	2, 0x0000
   135c8:	35b0                	.insn	2, 0x35b0
   135ca:	0001                	.insn	2, 0x0001
   135cc:	0000                	.insn	2, 0x0000
   135ce:	0000                	.insn	2, 0x0000
   135d0:	35c0                	.insn	2, 0x35c0
   135d2:	0001                	.insn	2, 0x0001
   135d4:	0000                	.insn	2, 0x0000
   135d6:	0000                	.insn	2, 0x0000
   135d8:	35c0                	.insn	2, 0x35c0
   135da:	0001                	.insn	2, 0x0001
   135dc:	0000                	.insn	2, 0x0000
   135de:	0000                	.insn	2, 0x0000
   135e0:	35d0                	.insn	2, 0x35d0
   135e2:	0001                	.insn	2, 0x0001
   135e4:	0000                	.insn	2, 0x0000
   135e6:	0000                	.insn	2, 0x0000
   135e8:	35d0                	.insn	2, 0x35d0
   135ea:	0001                	.insn	2, 0x0001
   135ec:	0000                	.insn	2, 0x0000
   135ee:	0000                	.insn	2, 0x0000
   135f0:	35e0                	.insn	2, 0x35e0
   135f2:	0001                	.insn	2, 0x0001
   135f4:	0000                	.insn	2, 0x0000
   135f6:	0000                	.insn	2, 0x0000
   135f8:	35e0                	.insn	2, 0x35e0
   135fa:	0001                	.insn	2, 0x0001
   135fc:	0000                	.insn	2, 0x0000
   135fe:	0000                	.insn	2, 0x0000
   13600:	35f0                	.insn	2, 0x35f0
   13602:	0001                	.insn	2, 0x0001
   13604:	0000                	.insn	2, 0x0000
   13606:	0000                	.insn	2, 0x0000
   13608:	35f0                	.insn	2, 0x35f0
   1360a:	0001                	.insn	2, 0x0001
   1360c:	0000                	.insn	2, 0x0000
   1360e:	0000                	.insn	2, 0x0000
   13610:	3600                	.insn	2, 0x3600
   13612:	0001                	.insn	2, 0x0001
   13614:	0000                	.insn	2, 0x0000
   13616:	0000                	.insn	2, 0x0000
   13618:	3600                	.insn	2, 0x3600
   1361a:	0001                	.insn	2, 0x0001
   1361c:	0000                	.insn	2, 0x0000
   1361e:	0000                	.insn	2, 0x0000
   13620:	3610                	.insn	2, 0x3610
   13622:	0001                	.insn	2, 0x0001
   13624:	0000                	.insn	2, 0x0000
   13626:	0000                	.insn	2, 0x0000
   13628:	3610                	.insn	2, 0x3610
   1362a:	0001                	.insn	2, 0x0001
   1362c:	0000                	.insn	2, 0x0000
   1362e:	0000                	.insn	2, 0x0000
   13630:	3620                	.insn	2, 0x3620
   13632:	0001                	.insn	2, 0x0001
   13634:	0000                	.insn	2, 0x0000
   13636:	0000                	.insn	2, 0x0000
   13638:	3620                	.insn	2, 0x3620
   1363a:	0001                	.insn	2, 0x0001
   1363c:	0000                	.insn	2, 0x0000
   1363e:	0000                	.insn	2, 0x0000
   13640:	3630                	.insn	2, 0x3630
   13642:	0001                	.insn	2, 0x0001
   13644:	0000                	.insn	2, 0x0000
   13646:	0000                	.insn	2, 0x0000
   13648:	3630                	.insn	2, 0x3630
   1364a:	0001                	.insn	2, 0x0001
   1364c:	0000                	.insn	2, 0x0000
   1364e:	0000                	.insn	2, 0x0000
   13650:	3640                	.insn	2, 0x3640
   13652:	0001                	.insn	2, 0x0001
   13654:	0000                	.insn	2, 0x0000
   13656:	0000                	.insn	2, 0x0000
   13658:	3640                	.insn	2, 0x3640
   1365a:	0001                	.insn	2, 0x0001
   1365c:	0000                	.insn	2, 0x0000
   1365e:	0000                	.insn	2, 0x0000
   13660:	3650                	.insn	2, 0x3650
   13662:	0001                	.insn	2, 0x0001
   13664:	0000                	.insn	2, 0x0000
   13666:	0000                	.insn	2, 0x0000
   13668:	3650                	.insn	2, 0x3650
   1366a:	0001                	.insn	2, 0x0001
   1366c:	0000                	.insn	2, 0x0000
   1366e:	0000                	.insn	2, 0x0000
   13670:	3660                	.insn	2, 0x3660
   13672:	0001                	.insn	2, 0x0001
   13674:	0000                	.insn	2, 0x0000
   13676:	0000                	.insn	2, 0x0000
   13678:	3660                	.insn	2, 0x3660
   1367a:	0001                	.insn	2, 0x0001
   1367c:	0000                	.insn	2, 0x0000
   1367e:	0000                	.insn	2, 0x0000
   13680:	3670                	.insn	2, 0x3670
   13682:	0001                	.insn	2, 0x0001
   13684:	0000                	.insn	2, 0x0000
   13686:	0000                	.insn	2, 0x0000
   13688:	3670                	.insn	2, 0x3670
   1368a:	0001                	.insn	2, 0x0001
   1368c:	0000                	.insn	2, 0x0000
   1368e:	0000                	.insn	2, 0x0000
   13690:	3680                	.insn	2, 0x3680
   13692:	0001                	.insn	2, 0x0001
   13694:	0000                	.insn	2, 0x0000
   13696:	0000                	.insn	2, 0x0000
   13698:	3680                	.insn	2, 0x3680
   1369a:	0001                	.insn	2, 0x0001
   1369c:	0000                	.insn	2, 0x0000
   1369e:	0000                	.insn	2, 0x0000
   136a0:	3690                	.insn	2, 0x3690
   136a2:	0001                	.insn	2, 0x0001
   136a4:	0000                	.insn	2, 0x0000
   136a6:	0000                	.insn	2, 0x0000
   136a8:	3690                	.insn	2, 0x3690
   136aa:	0001                	.insn	2, 0x0001
   136ac:	0000                	.insn	2, 0x0000
   136ae:	0000                	.insn	2, 0x0000
   136b0:	36a0                	.insn	2, 0x36a0
   136b2:	0001                	.insn	2, 0x0001
   136b4:	0000                	.insn	2, 0x0000
   136b6:	0000                	.insn	2, 0x0000
   136b8:	36a0                	.insn	2, 0x36a0
   136ba:	0001                	.insn	2, 0x0001
   136bc:	0000                	.insn	2, 0x0000
   136be:	0000                	.insn	2, 0x0000
   136c0:	36b0                	.insn	2, 0x36b0
   136c2:	0001                	.insn	2, 0x0001
   136c4:	0000                	.insn	2, 0x0000
   136c6:	0000                	.insn	2, 0x0000
   136c8:	36b0                	.insn	2, 0x36b0
   136ca:	0001                	.insn	2, 0x0001
   136cc:	0000                	.insn	2, 0x0000
   136ce:	0000                	.insn	2, 0x0000
   136d0:	36c0                	.insn	2, 0x36c0
   136d2:	0001                	.insn	2, 0x0001
   136d4:	0000                	.insn	2, 0x0000
   136d6:	0000                	.insn	2, 0x0000
   136d8:	36c0                	.insn	2, 0x36c0
   136da:	0001                	.insn	2, 0x0001
   136dc:	0000                	.insn	2, 0x0000
   136de:	0000                	.insn	2, 0x0000
   136e0:	36d0                	.insn	2, 0x36d0
   136e2:	0001                	.insn	2, 0x0001
   136e4:	0000                	.insn	2, 0x0000
   136e6:	0000                	.insn	2, 0x0000
   136e8:	36d0                	.insn	2, 0x36d0
   136ea:	0001                	.insn	2, 0x0001
   136ec:	0000                	.insn	2, 0x0000
   136ee:	0000                	.insn	2, 0x0000
   136f0:	36e0                	.insn	2, 0x36e0
   136f2:	0001                	.insn	2, 0x0001
   136f4:	0000                	.insn	2, 0x0000
   136f6:	0000                	.insn	2, 0x0000
   136f8:	36e0                	.insn	2, 0x36e0
   136fa:	0001                	.insn	2, 0x0001
   136fc:	0000                	.insn	2, 0x0000
   136fe:	0000                	.insn	2, 0x0000
   13700:	36f0                	.insn	2, 0x36f0
   13702:	0001                	.insn	2, 0x0001
   13704:	0000                	.insn	2, 0x0000
   13706:	0000                	.insn	2, 0x0000
   13708:	36f0                	.insn	2, 0x36f0
   1370a:	0001                	.insn	2, 0x0001
   1370c:	0000                	.insn	2, 0x0000
   1370e:	0000                	.insn	2, 0x0000
   13710:	3700                	.insn	2, 0x3700
   13712:	0001                	.insn	2, 0x0001
   13714:	0000                	.insn	2, 0x0000
   13716:	0000                	.insn	2, 0x0000
   13718:	3700                	.insn	2, 0x3700
   1371a:	0001                	.insn	2, 0x0001
   1371c:	0000                	.insn	2, 0x0000
   1371e:	0000                	.insn	2, 0x0000
   13720:	3710                	.insn	2, 0x3710
   13722:	0001                	.insn	2, 0x0001
   13724:	0000                	.insn	2, 0x0000
   13726:	0000                	.insn	2, 0x0000
   13728:	3710                	.insn	2, 0x3710
   1372a:	0001                	.insn	2, 0x0001
   1372c:	0000                	.insn	2, 0x0000
   1372e:	0000                	.insn	2, 0x0000
   13730:	3720                	.insn	2, 0x3720
   13732:	0001                	.insn	2, 0x0001
   13734:	0000                	.insn	2, 0x0000
   13736:	0000                	.insn	2, 0x0000
   13738:	3720                	.insn	2, 0x3720
   1373a:	0001                	.insn	2, 0x0001
   1373c:	0000                	.insn	2, 0x0000
   1373e:	0000                	.insn	2, 0x0000
   13740:	3730                	.insn	2, 0x3730
   13742:	0001                	.insn	2, 0x0001
   13744:	0000                	.insn	2, 0x0000
   13746:	0000                	.insn	2, 0x0000
   13748:	3730                	.insn	2, 0x3730
   1374a:	0001                	.insn	2, 0x0001
   1374c:	0000                	.insn	2, 0x0000
   1374e:	0000                	.insn	2, 0x0000
   13750:	3740                	.insn	2, 0x3740
   13752:	0001                	.insn	2, 0x0001
   13754:	0000                	.insn	2, 0x0000
   13756:	0000                	.insn	2, 0x0000
   13758:	3740                	.insn	2, 0x3740
   1375a:	0001                	.insn	2, 0x0001
   1375c:	0000                	.insn	2, 0x0000
   1375e:	0000                	.insn	2, 0x0000
   13760:	3750                	.insn	2, 0x3750
   13762:	0001                	.insn	2, 0x0001
   13764:	0000                	.insn	2, 0x0000
   13766:	0000                	.insn	2, 0x0000
   13768:	3750                	.insn	2, 0x3750
   1376a:	0001                	.insn	2, 0x0001
   1376c:	0000                	.insn	2, 0x0000
   1376e:	0000                	.insn	2, 0x0000
   13770:	3760                	.insn	2, 0x3760
   13772:	0001                	.insn	2, 0x0001
   13774:	0000                	.insn	2, 0x0000
   13776:	0000                	.insn	2, 0x0000
   13778:	3760                	.insn	2, 0x3760
   1377a:	0001                	.insn	2, 0x0001
   1377c:	0000                	.insn	2, 0x0000
   1377e:	0000                	.insn	2, 0x0000
   13780:	3770                	.insn	2, 0x3770
   13782:	0001                	.insn	2, 0x0001
   13784:	0000                	.insn	2, 0x0000
   13786:	0000                	.insn	2, 0x0000
   13788:	3770                	.insn	2, 0x3770
   1378a:	0001                	.insn	2, 0x0001
   1378c:	0000                	.insn	2, 0x0000
   1378e:	0000                	.insn	2, 0x0000
   13790:	3780                	.insn	2, 0x3780
   13792:	0001                	.insn	2, 0x0001
   13794:	0000                	.insn	2, 0x0000
   13796:	0000                	.insn	2, 0x0000
   13798:	3780                	.insn	2, 0x3780
   1379a:	0001                	.insn	2, 0x0001
   1379c:	0000                	.insn	2, 0x0000
   1379e:	0000                	.insn	2, 0x0000
   137a0:	3790                	.insn	2, 0x3790
   137a2:	0001                	.insn	2, 0x0001
   137a4:	0000                	.insn	2, 0x0000
   137a6:	0000                	.insn	2, 0x0000
   137a8:	3790                	.insn	2, 0x3790
   137aa:	0001                	.insn	2, 0x0001
   137ac:	0000                	.insn	2, 0x0000
   137ae:	0000                	.insn	2, 0x0000
   137b0:	37a0                	.insn	2, 0x37a0
   137b2:	0001                	.insn	2, 0x0001
   137b4:	0000                	.insn	2, 0x0000
   137b6:	0000                	.insn	2, 0x0000
   137b8:	37a0                	.insn	2, 0x37a0
   137ba:	0001                	.insn	2, 0x0001
   137bc:	0000                	.insn	2, 0x0000
   137be:	0000                	.insn	2, 0x0000
   137c0:	37b0                	.insn	2, 0x37b0
   137c2:	0001                	.insn	2, 0x0001
   137c4:	0000                	.insn	2, 0x0000
   137c6:	0000                	.insn	2, 0x0000
   137c8:	37b0                	.insn	2, 0x37b0
   137ca:	0001                	.insn	2, 0x0001
   137cc:	0000                	.insn	2, 0x0000
   137ce:	0000                	.insn	2, 0x0000
   137d0:	37c0                	.insn	2, 0x37c0
   137d2:	0001                	.insn	2, 0x0001
   137d4:	0000                	.insn	2, 0x0000
   137d6:	0000                	.insn	2, 0x0000
   137d8:	37c0                	.insn	2, 0x37c0
   137da:	0001                	.insn	2, 0x0001
   137dc:	0000                	.insn	2, 0x0000
   137de:	0000                	.insn	2, 0x0000
   137e0:	37d0                	.insn	2, 0x37d0
   137e2:	0001                	.insn	2, 0x0001
   137e4:	0000                	.insn	2, 0x0000
   137e6:	0000                	.insn	2, 0x0000
   137e8:	37d0                	.insn	2, 0x37d0
   137ea:	0001                	.insn	2, 0x0001
   137ec:	0000                	.insn	2, 0x0000
   137ee:	0000                	.insn	2, 0x0000
   137f0:	37e0                	.insn	2, 0x37e0
   137f2:	0001                	.insn	2, 0x0001
   137f4:	0000                	.insn	2, 0x0000
   137f6:	0000                	.insn	2, 0x0000
   137f8:	37e0                	.insn	2, 0x37e0
   137fa:	0001                	.insn	2, 0x0001
   137fc:	0000                	.insn	2, 0x0000
   137fe:	0000                	.insn	2, 0x0000
   13800:	37f0                	.insn	2, 0x37f0
   13802:	0001                	.insn	2, 0x0001
   13804:	0000                	.insn	2, 0x0000
   13806:	0000                	.insn	2, 0x0000
   13808:	37f0                	.insn	2, 0x37f0
   1380a:	0001                	.insn	2, 0x0001
   1380c:	0000                	.insn	2, 0x0000
   1380e:	0000                	.insn	2, 0x0000
   13810:	3800                	.insn	2, 0x3800
   13812:	0001                	.insn	2, 0x0001
   13814:	0000                	.insn	2, 0x0000
   13816:	0000                	.insn	2, 0x0000
   13818:	3800                	.insn	2, 0x3800
   1381a:	0001                	.insn	2, 0x0001
   1381c:	0000                	.insn	2, 0x0000
   1381e:	0000                	.insn	2, 0x0000
   13820:	3810                	.insn	2, 0x3810
   13822:	0001                	.insn	2, 0x0001
   13824:	0000                	.insn	2, 0x0000
   13826:	0000                	.insn	2, 0x0000
   13828:	3810                	.insn	2, 0x3810
   1382a:	0001                	.insn	2, 0x0001
   1382c:	0000                	.insn	2, 0x0000
   1382e:	0000                	.insn	2, 0x0000
   13830:	3820                	.insn	2, 0x3820
   13832:	0001                	.insn	2, 0x0001
   13834:	0000                	.insn	2, 0x0000
   13836:	0000                	.insn	2, 0x0000
   13838:	3820                	.insn	2, 0x3820
   1383a:	0001                	.insn	2, 0x0001
   1383c:	0000                	.insn	2, 0x0000
   1383e:	0000                	.insn	2, 0x0000
   13840:	3830                	.insn	2, 0x3830
   13842:	0001                	.insn	2, 0x0001
   13844:	0000                	.insn	2, 0x0000
   13846:	0000                	.insn	2, 0x0000
   13848:	3830                	.insn	2, 0x3830
   1384a:	0001                	.insn	2, 0x0001
   1384c:	0000                	.insn	2, 0x0000
   1384e:	0000                	.insn	2, 0x0000
   13850:	3840                	.insn	2, 0x3840
   13852:	0001                	.insn	2, 0x0001
   13854:	0000                	.insn	2, 0x0000
   13856:	0000                	.insn	2, 0x0000
   13858:	3840                	.insn	2, 0x3840
   1385a:	0001                	.insn	2, 0x0001
   1385c:	0000                	.insn	2, 0x0000
   1385e:	0000                	.insn	2, 0x0000
   13860:	3850                	.insn	2, 0x3850
   13862:	0001                	.insn	2, 0x0001
   13864:	0000                	.insn	2, 0x0000
   13866:	0000                	.insn	2, 0x0000
   13868:	3850                	.insn	2, 0x3850
   1386a:	0001                	.insn	2, 0x0001
   1386c:	0000                	.insn	2, 0x0000
   1386e:	0000                	.insn	2, 0x0000
   13870:	3860                	.insn	2, 0x3860
   13872:	0001                	.insn	2, 0x0001
   13874:	0000                	.insn	2, 0x0000
   13876:	0000                	.insn	2, 0x0000
   13878:	3860                	.insn	2, 0x3860
   1387a:	0001                	.insn	2, 0x0001
   1387c:	0000                	.insn	2, 0x0000
   1387e:	0000                	.insn	2, 0x0000
   13880:	3870                	.insn	2, 0x3870
   13882:	0001                	.insn	2, 0x0001
   13884:	0000                	.insn	2, 0x0000
   13886:	0000                	.insn	2, 0x0000
   13888:	3870                	.insn	2, 0x3870
   1388a:	0001                	.insn	2, 0x0001
   1388c:	0000                	.insn	2, 0x0000
   1388e:	0000                	.insn	2, 0x0000
   13890:	3880                	.insn	2, 0x3880
   13892:	0001                	.insn	2, 0x0001
   13894:	0000                	.insn	2, 0x0000
   13896:	0000                	.insn	2, 0x0000
   13898:	3880                	.insn	2, 0x3880
   1389a:	0001                	.insn	2, 0x0001
   1389c:	0000                	.insn	2, 0x0000
   1389e:	0000                	.insn	2, 0x0000
   138a0:	3890                	.insn	2, 0x3890
   138a2:	0001                	.insn	2, 0x0001
   138a4:	0000                	.insn	2, 0x0000
   138a6:	0000                	.insn	2, 0x0000
   138a8:	3890                	.insn	2, 0x3890
   138aa:	0001                	.insn	2, 0x0001
   138ac:	0000                	.insn	2, 0x0000
   138ae:	0000                	.insn	2, 0x0000
   138b0:	38a0                	.insn	2, 0x38a0
   138b2:	0001                	.insn	2, 0x0001
   138b4:	0000                	.insn	2, 0x0000
   138b6:	0000                	.insn	2, 0x0000
   138b8:	38a0                	.insn	2, 0x38a0
   138ba:	0001                	.insn	2, 0x0001
   138bc:	0000                	.insn	2, 0x0000
   138be:	0000                	.insn	2, 0x0000
   138c0:	38b0                	.insn	2, 0x38b0
   138c2:	0001                	.insn	2, 0x0001
   138c4:	0000                	.insn	2, 0x0000
   138c6:	0000                	.insn	2, 0x0000
   138c8:	38b0                	.insn	2, 0x38b0
   138ca:	0001                	.insn	2, 0x0001
   138cc:	0000                	.insn	2, 0x0000
   138ce:	0000                	.insn	2, 0x0000
   138d0:	38c0                	.insn	2, 0x38c0
   138d2:	0001                	.insn	2, 0x0001
   138d4:	0000                	.insn	2, 0x0000
   138d6:	0000                	.insn	2, 0x0000
   138d8:	38c0                	.insn	2, 0x38c0
   138da:	0001                	.insn	2, 0x0001
   138dc:	0000                	.insn	2, 0x0000
   138de:	0000                	.insn	2, 0x0000
   138e0:	38d0                	.insn	2, 0x38d0
   138e2:	0001                	.insn	2, 0x0001
   138e4:	0000                	.insn	2, 0x0000
   138e6:	0000                	.insn	2, 0x0000
   138e8:	38d0                	.insn	2, 0x38d0
   138ea:	0001                	.insn	2, 0x0001
   138ec:	0000                	.insn	2, 0x0000
   138ee:	0000                	.insn	2, 0x0000
   138f0:	38e0                	.insn	2, 0x38e0
   138f2:	0001                	.insn	2, 0x0001
   138f4:	0000                	.insn	2, 0x0000
   138f6:	0000                	.insn	2, 0x0000
   138f8:	38e0                	.insn	2, 0x38e0
   138fa:	0001                	.insn	2, 0x0001
   138fc:	0000                	.insn	2, 0x0000
   138fe:	0000                	.insn	2, 0x0000
   13900:	38f0                	.insn	2, 0x38f0
   13902:	0001                	.insn	2, 0x0001
   13904:	0000                	.insn	2, 0x0000
   13906:	0000                	.insn	2, 0x0000
   13908:	38f0                	.insn	2, 0x38f0
   1390a:	0001                	.insn	2, 0x0001
   1390c:	0000                	.insn	2, 0x0000
   1390e:	0000                	.insn	2, 0x0000
   13910:	3900                	.insn	2, 0x3900
   13912:	0001                	.insn	2, 0x0001
   13914:	0000                	.insn	2, 0x0000
   13916:	0000                	.insn	2, 0x0000
   13918:	3900                	.insn	2, 0x3900
   1391a:	0001                	.insn	2, 0x0001
   1391c:	0000                	.insn	2, 0x0000
   1391e:	0000                	.insn	2, 0x0000
   13920:	3910                	.insn	2, 0x3910
   13922:	0001                	.insn	2, 0x0001
   13924:	0000                	.insn	2, 0x0000
   13926:	0000                	.insn	2, 0x0000
   13928:	3910                	.insn	2, 0x3910
   1392a:	0001                	.insn	2, 0x0001
   1392c:	0000                	.insn	2, 0x0000
   1392e:	0000                	.insn	2, 0x0000
   13930:	3920                	.insn	2, 0x3920
   13932:	0001                	.insn	2, 0x0001
   13934:	0000                	.insn	2, 0x0000
   13936:	0000                	.insn	2, 0x0000
   13938:	3920                	.insn	2, 0x3920
   1393a:	0001                	.insn	2, 0x0001
   1393c:	0000                	.insn	2, 0x0000
   1393e:	0000                	.insn	2, 0x0000
   13940:	3930                	.insn	2, 0x3930
   13942:	0001                	.insn	2, 0x0001
   13944:	0000                	.insn	2, 0x0000
   13946:	0000                	.insn	2, 0x0000
   13948:	3930                	.insn	2, 0x3930
   1394a:	0001                	.insn	2, 0x0001
   1394c:	0000                	.insn	2, 0x0000
   1394e:	0000                	.insn	2, 0x0000
   13950:	3940                	.insn	2, 0x3940
   13952:	0001                	.insn	2, 0x0001
   13954:	0000                	.insn	2, 0x0000
   13956:	0000                	.insn	2, 0x0000
   13958:	3940                	.insn	2, 0x3940
   1395a:	0001                	.insn	2, 0x0001
   1395c:	0000                	.insn	2, 0x0000
   1395e:	0000                	.insn	2, 0x0000
   13960:	3950                	.insn	2, 0x3950
   13962:	0001                	.insn	2, 0x0001
   13964:	0000                	.insn	2, 0x0000
   13966:	0000                	.insn	2, 0x0000
   13968:	3950                	.insn	2, 0x3950
   1396a:	0001                	.insn	2, 0x0001
   1396c:	0000                	.insn	2, 0x0000
   1396e:	0000                	.insn	2, 0x0000
   13970:	3960                	.insn	2, 0x3960
   13972:	0001                	.insn	2, 0x0001
   13974:	0000                	.insn	2, 0x0000
   13976:	0000                	.insn	2, 0x0000
   13978:	3960                	.insn	2, 0x3960
   1397a:	0001                	.insn	2, 0x0001
   1397c:	0000                	.insn	2, 0x0000
   1397e:	0000                	.insn	2, 0x0000
   13980:	3970                	.insn	2, 0x3970
   13982:	0001                	.insn	2, 0x0001
   13984:	0000                	.insn	2, 0x0000
   13986:	0000                	.insn	2, 0x0000
   13988:	3970                	.insn	2, 0x3970
   1398a:	0001                	.insn	2, 0x0001
   1398c:	0000                	.insn	2, 0x0000
   1398e:	0000                	.insn	2, 0x0000
   13990:	3980                	.insn	2, 0x3980
   13992:	0001                	.insn	2, 0x0001
   13994:	0000                	.insn	2, 0x0000
   13996:	0000                	.insn	2, 0x0000
   13998:	3980                	.insn	2, 0x3980
   1399a:	0001                	.insn	2, 0x0001
   1399c:	0000                	.insn	2, 0x0000
   1399e:	0000                	.insn	2, 0x0000
   139a0:	3990                	.insn	2, 0x3990
   139a2:	0001                	.insn	2, 0x0001
   139a4:	0000                	.insn	2, 0x0000
   139a6:	0000                	.insn	2, 0x0000
   139a8:	3990                	.insn	2, 0x3990
   139aa:	0001                	.insn	2, 0x0001
   139ac:	0000                	.insn	2, 0x0000
   139ae:	0000                	.insn	2, 0x0000
   139b0:	39a0                	.insn	2, 0x39a0
   139b2:	0001                	.insn	2, 0x0001
   139b4:	0000                	.insn	2, 0x0000
   139b6:	0000                	.insn	2, 0x0000
   139b8:	39a0                	.insn	2, 0x39a0
   139ba:	0001                	.insn	2, 0x0001
   139bc:	0000                	.insn	2, 0x0000
   139be:	0000                	.insn	2, 0x0000
   139c0:	39b0                	.insn	2, 0x39b0
   139c2:	0001                	.insn	2, 0x0001
   139c4:	0000                	.insn	2, 0x0000
   139c6:	0000                	.insn	2, 0x0000
   139c8:	39b0                	.insn	2, 0x39b0
   139ca:	0001                	.insn	2, 0x0001
   139cc:	0000                	.insn	2, 0x0000
   139ce:	0000                	.insn	2, 0x0000
   139d0:	39c0                	.insn	2, 0x39c0
   139d2:	0001                	.insn	2, 0x0001
   139d4:	0000                	.insn	2, 0x0000
   139d6:	0000                	.insn	2, 0x0000
   139d8:	39c0                	.insn	2, 0x39c0
   139da:	0001                	.insn	2, 0x0001
   139dc:	0000                	.insn	2, 0x0000
   139de:	0000                	.insn	2, 0x0000
   139e0:	39d0                	.insn	2, 0x39d0
   139e2:	0001                	.insn	2, 0x0001
   139e4:	0000                	.insn	2, 0x0000
   139e6:	0000                	.insn	2, 0x0000
   139e8:	39d0                	.insn	2, 0x39d0
   139ea:	0001                	.insn	2, 0x0001
   139ec:	0000                	.insn	2, 0x0000
   139ee:	0000                	.insn	2, 0x0000
   139f0:	39e0                	.insn	2, 0x39e0
   139f2:	0001                	.insn	2, 0x0001
   139f4:	0000                	.insn	2, 0x0000
   139f6:	0000                	.insn	2, 0x0000
   139f8:	39e0                	.insn	2, 0x39e0
   139fa:	0001                	.insn	2, 0x0001
   139fc:	0000                	.insn	2, 0x0000
   139fe:	0000                	.insn	2, 0x0000
   13a00:	39f0                	.insn	2, 0x39f0
   13a02:	0001                	.insn	2, 0x0001
   13a04:	0000                	.insn	2, 0x0000
   13a06:	0000                	.insn	2, 0x0000
   13a08:	39f0                	.insn	2, 0x39f0
   13a0a:	0001                	.insn	2, 0x0001
   13a0c:	0000                	.insn	2, 0x0000
   13a0e:	0000                	.insn	2, 0x0000
   13a10:	3a00                	.insn	2, 0x3a00
   13a12:	0001                	.insn	2, 0x0001
   13a14:	0000                	.insn	2, 0x0000
   13a16:	0000                	.insn	2, 0x0000
   13a18:	3a00                	.insn	2, 0x3a00
   13a1a:	0001                	.insn	2, 0x0001
   13a1c:	0000                	.insn	2, 0x0000
   13a1e:	0000                	.insn	2, 0x0000
   13a20:	3a10                	.insn	2, 0x3a10
   13a22:	0001                	.insn	2, 0x0001
   13a24:	0000                	.insn	2, 0x0000
   13a26:	0000                	.insn	2, 0x0000
   13a28:	3a10                	.insn	2, 0x3a10
   13a2a:	0001                	.insn	2, 0x0001
   13a2c:	0000                	.insn	2, 0x0000
   13a2e:	0000                	.insn	2, 0x0000
   13a30:	3a20                	.insn	2, 0x3a20
   13a32:	0001                	.insn	2, 0x0001
   13a34:	0000                	.insn	2, 0x0000
   13a36:	0000                	.insn	2, 0x0000
   13a38:	3a20                	.insn	2, 0x3a20
   13a3a:	0001                	.insn	2, 0x0001
   13a3c:	0000                	.insn	2, 0x0000
   13a3e:	0000                	.insn	2, 0x0000
   13a40:	3a30                	.insn	2, 0x3a30
   13a42:	0001                	.insn	2, 0x0001
   13a44:	0000                	.insn	2, 0x0000
   13a46:	0000                	.insn	2, 0x0000
   13a48:	3a30                	.insn	2, 0x3a30
   13a4a:	0001                	.insn	2, 0x0001
   13a4c:	0000                	.insn	2, 0x0000
   13a4e:	0000                	.insn	2, 0x0000
   13a50:	3a40                	.insn	2, 0x3a40
   13a52:	0001                	.insn	2, 0x0001
   13a54:	0000                	.insn	2, 0x0000
   13a56:	0000                	.insn	2, 0x0000
   13a58:	3a40                	.insn	2, 0x3a40
   13a5a:	0001                	.insn	2, 0x0001
   13a5c:	0000                	.insn	2, 0x0000
   13a5e:	0000                	.insn	2, 0x0000
   13a60:	3a50                	.insn	2, 0x3a50
   13a62:	0001                	.insn	2, 0x0001
   13a64:	0000                	.insn	2, 0x0000
   13a66:	0000                	.insn	2, 0x0000
   13a68:	3a50                	.insn	2, 0x3a50
   13a6a:	0001                	.insn	2, 0x0001
   13a6c:	0000                	.insn	2, 0x0000
   13a6e:	0000                	.insn	2, 0x0000
   13a70:	3a60                	.insn	2, 0x3a60
   13a72:	0001                	.insn	2, 0x0001
   13a74:	0000                	.insn	2, 0x0000
   13a76:	0000                	.insn	2, 0x0000
   13a78:	3a60                	.insn	2, 0x3a60
   13a7a:	0001                	.insn	2, 0x0001
   13a7c:	0000                	.insn	2, 0x0000
   13a7e:	0000                	.insn	2, 0x0000
   13a80:	3a70                	.insn	2, 0x3a70
   13a82:	0001                	.insn	2, 0x0001
   13a84:	0000                	.insn	2, 0x0000
   13a86:	0000                	.insn	2, 0x0000
   13a88:	3a70                	.insn	2, 0x3a70
   13a8a:	0001                	.insn	2, 0x0001
   13a8c:	0000                	.insn	2, 0x0000
   13a8e:	0000                	.insn	2, 0x0000
   13a90:	3a80                	.insn	2, 0x3a80
   13a92:	0001                	.insn	2, 0x0001
   13a94:	0000                	.insn	2, 0x0000
   13a96:	0000                	.insn	2, 0x0000
   13a98:	3a80                	.insn	2, 0x3a80
   13a9a:	0001                	.insn	2, 0x0001
   13a9c:	0000                	.insn	2, 0x0000
   13a9e:	0000                	.insn	2, 0x0000
   13aa0:	3a90                	.insn	2, 0x3a90
   13aa2:	0001                	.insn	2, 0x0001
   13aa4:	0000                	.insn	2, 0x0000
   13aa6:	0000                	.insn	2, 0x0000
   13aa8:	3a90                	.insn	2, 0x3a90
   13aaa:	0001                	.insn	2, 0x0001
   13aac:	0000                	.insn	2, 0x0000
   13aae:	0000                	.insn	2, 0x0000
   13ab0:	3aa0                	.insn	2, 0x3aa0
   13ab2:	0001                	.insn	2, 0x0001
   13ab4:	0000                	.insn	2, 0x0000
   13ab6:	0000                	.insn	2, 0x0000
   13ab8:	3aa0                	.insn	2, 0x3aa0
   13aba:	0001                	.insn	2, 0x0001
   13abc:	0000                	.insn	2, 0x0000
   13abe:	0000                	.insn	2, 0x0000
   13ac0:	3ab0                	.insn	2, 0x3ab0
   13ac2:	0001                	.insn	2, 0x0001
   13ac4:	0000                	.insn	2, 0x0000
   13ac6:	0000                	.insn	2, 0x0000
   13ac8:	3ab0                	.insn	2, 0x3ab0
   13aca:	0001                	.insn	2, 0x0001
   13acc:	0000                	.insn	2, 0x0000
   13ace:	0000                	.insn	2, 0x0000
   13ad0:	3ac0                	.insn	2, 0x3ac0
   13ad2:	0001                	.insn	2, 0x0001
   13ad4:	0000                	.insn	2, 0x0000
   13ad6:	0000                	.insn	2, 0x0000
   13ad8:	3ac0                	.insn	2, 0x3ac0
   13ada:	0001                	.insn	2, 0x0001
   13adc:	0000                	.insn	2, 0x0000
   13ade:	0000                	.insn	2, 0x0000
   13ae0:	3ad0                	.insn	2, 0x3ad0
   13ae2:	0001                	.insn	2, 0x0001
   13ae4:	0000                	.insn	2, 0x0000
   13ae6:	0000                	.insn	2, 0x0000
   13ae8:	3ad0                	.insn	2, 0x3ad0
   13aea:	0001                	.insn	2, 0x0001
   13aec:	0000                	.insn	2, 0x0000
   13aee:	0000                	.insn	2, 0x0000
   13af0:	3ae0                	.insn	2, 0x3ae0
   13af2:	0001                	.insn	2, 0x0001
   13af4:	0000                	.insn	2, 0x0000
   13af6:	0000                	.insn	2, 0x0000
   13af8:	3ae0                	.insn	2, 0x3ae0
   13afa:	0001                	.insn	2, 0x0001
   13afc:	0000                	.insn	2, 0x0000
   13afe:	0000                	.insn	2, 0x0000
   13b00:	3af0                	.insn	2, 0x3af0
   13b02:	0001                	.insn	2, 0x0001
   13b04:	0000                	.insn	2, 0x0000
   13b06:	0000                	.insn	2, 0x0000
   13b08:	3af0                	.insn	2, 0x3af0
   13b0a:	0001                	.insn	2, 0x0001
   13b0c:	0000                	.insn	2, 0x0000
   13b0e:	0000                	.insn	2, 0x0000
   13b10:	3b00                	.insn	2, 0x3b00
   13b12:	0001                	.insn	2, 0x0001
   13b14:	0000                	.insn	2, 0x0000
   13b16:	0000                	.insn	2, 0x0000
   13b18:	3b00                	.insn	2, 0x3b00
   13b1a:	0001                	.insn	2, 0x0001
   13b1c:	0000                	.insn	2, 0x0000
   13b1e:	0000                	.insn	2, 0x0000
   13b20:	3b10                	.insn	2, 0x3b10
   13b22:	0001                	.insn	2, 0x0001
   13b24:	0000                	.insn	2, 0x0000
   13b26:	0000                	.insn	2, 0x0000
   13b28:	3b10                	.insn	2, 0x3b10
   13b2a:	0001                	.insn	2, 0x0001
   13b2c:	0000                	.insn	2, 0x0000
   13b2e:	0000                	.insn	2, 0x0000
   13b30:	3b20                	.insn	2, 0x3b20
   13b32:	0001                	.insn	2, 0x0001
   13b34:	0000                	.insn	2, 0x0000
   13b36:	0000                	.insn	2, 0x0000
   13b38:	3b20                	.insn	2, 0x3b20
   13b3a:	0001                	.insn	2, 0x0001
   13b3c:	0000                	.insn	2, 0x0000
   13b3e:	0000                	.insn	2, 0x0000
   13b40:	3b30                	.insn	2, 0x3b30
   13b42:	0001                	.insn	2, 0x0001
   13b44:	0000                	.insn	2, 0x0000
   13b46:	0000                	.insn	2, 0x0000
   13b48:	3b30                	.insn	2, 0x3b30
   13b4a:	0001                	.insn	2, 0x0001
   13b4c:	0000                	.insn	2, 0x0000
   13b4e:	0000                	.insn	2, 0x0000
   13b50:	3b40                	.insn	2, 0x3b40
   13b52:	0001                	.insn	2, 0x0001
   13b54:	0000                	.insn	2, 0x0000
   13b56:	0000                	.insn	2, 0x0000
   13b58:	3b40                	.insn	2, 0x3b40
   13b5a:	0001                	.insn	2, 0x0001
   13b5c:	0000                	.insn	2, 0x0000
   13b5e:	0000                	.insn	2, 0x0000
   13b60:	3b50                	.insn	2, 0x3b50
   13b62:	0001                	.insn	2, 0x0001
   13b64:	0000                	.insn	2, 0x0000
   13b66:	0000                	.insn	2, 0x0000
   13b68:	3b50                	.insn	2, 0x3b50
   13b6a:	0001                	.insn	2, 0x0001
   13b6c:	0000                	.insn	2, 0x0000
   13b6e:	0000                	.insn	2, 0x0000
   13b70:	3b60                	.insn	2, 0x3b60
   13b72:	0001                	.insn	2, 0x0001
   13b74:	0000                	.insn	2, 0x0000
   13b76:	0000                	.insn	2, 0x0000
   13b78:	3b60                	.insn	2, 0x3b60
   13b7a:	0001                	.insn	2, 0x0001
   13b7c:	0000                	.insn	2, 0x0000
   13b7e:	0000                	.insn	2, 0x0000
   13b80:	3b70                	.insn	2, 0x3b70
   13b82:	0001                	.insn	2, 0x0001
   13b84:	0000                	.insn	2, 0x0000
   13b86:	0000                	.insn	2, 0x0000
   13b88:	3b70                	.insn	2, 0x3b70
   13b8a:	0001                	.insn	2, 0x0001
   13b8c:	0000                	.insn	2, 0x0000
   13b8e:	0000                	.insn	2, 0x0000
   13b90:	3b80                	.insn	2, 0x3b80
   13b92:	0001                	.insn	2, 0x0001
   13b94:	0000                	.insn	2, 0x0000
   13b96:	0000                	.insn	2, 0x0000
   13b98:	3b80                	.insn	2, 0x3b80
   13b9a:	0001                	.insn	2, 0x0001
   13b9c:	0000                	.insn	2, 0x0000
   13b9e:	0000                	.insn	2, 0x0000
   13ba0:	3b90                	.insn	2, 0x3b90
   13ba2:	0001                	.insn	2, 0x0001
   13ba4:	0000                	.insn	2, 0x0000
   13ba6:	0000                	.insn	2, 0x0000
   13ba8:	3b90                	.insn	2, 0x3b90
   13baa:	0001                	.insn	2, 0x0001
   13bac:	0000                	.insn	2, 0x0000
   13bae:	0000                	.insn	2, 0x0000
   13bb0:	3ba0                	.insn	2, 0x3ba0
   13bb2:	0001                	.insn	2, 0x0001
   13bb4:	0000                	.insn	2, 0x0000
   13bb6:	0000                	.insn	2, 0x0000
   13bb8:	3ba0                	.insn	2, 0x3ba0
   13bba:	0001                	.insn	2, 0x0001
   13bbc:	0000                	.insn	2, 0x0000
   13bbe:	0000                	.insn	2, 0x0000
   13bc0:	3bb0                	.insn	2, 0x3bb0
   13bc2:	0001                	.insn	2, 0x0001
   13bc4:	0000                	.insn	2, 0x0000
   13bc6:	0000                	.insn	2, 0x0000
   13bc8:	3bb0                	.insn	2, 0x3bb0
   13bca:	0001                	.insn	2, 0x0001
   13bcc:	0000                	.insn	2, 0x0000
   13bce:	0000                	.insn	2, 0x0000
   13bd0:	3bc0                	.insn	2, 0x3bc0
   13bd2:	0001                	.insn	2, 0x0001
   13bd4:	0000                	.insn	2, 0x0000
   13bd6:	0000                	.insn	2, 0x0000
   13bd8:	3bc0                	.insn	2, 0x3bc0
   13bda:	0001                	.insn	2, 0x0001
   13bdc:	0000                	.insn	2, 0x0000
   13bde:	0000                	.insn	2, 0x0000
   13be0:	3bd0                	.insn	2, 0x3bd0
   13be2:	0001                	.insn	2, 0x0001
   13be4:	0000                	.insn	2, 0x0000
   13be6:	0000                	.insn	2, 0x0000
   13be8:	3bd0                	.insn	2, 0x3bd0
   13bea:	0001                	.insn	2, 0x0001
   13bec:	0000                	.insn	2, 0x0000
   13bee:	0000                	.insn	2, 0x0000
   13bf0:	3be0                	.insn	2, 0x3be0
   13bf2:	0001                	.insn	2, 0x0001
   13bf4:	0000                	.insn	2, 0x0000
   13bf6:	0000                	.insn	2, 0x0000
   13bf8:	3be0                	.insn	2, 0x3be0
   13bfa:	0001                	.insn	2, 0x0001
   13bfc:	0000                	.insn	2, 0x0000
   13bfe:	0000                	.insn	2, 0x0000
   13c00:	3bf0                	.insn	2, 0x3bf0
   13c02:	0001                	.insn	2, 0x0001
   13c04:	0000                	.insn	2, 0x0000
   13c06:	0000                	.insn	2, 0x0000
   13c08:	3bf0                	.insn	2, 0x3bf0
   13c0a:	0001                	.insn	2, 0x0001
   13c0c:	0000                	.insn	2, 0x0000
   13c0e:	0000                	.insn	2, 0x0000
   13c10:	3c00                	.insn	2, 0x3c00
   13c12:	0001                	.insn	2, 0x0001
   13c14:	0000                	.insn	2, 0x0000
   13c16:	0000                	.insn	2, 0x0000
   13c18:	3c00                	.insn	2, 0x3c00
   13c1a:	0001                	.insn	2, 0x0001
   13c1c:	0000                	.insn	2, 0x0000
   13c1e:	0000                	.insn	2, 0x0000
   13c20:	3c10                	.insn	2, 0x3c10
   13c22:	0001                	.insn	2, 0x0001
   13c24:	0000                	.insn	2, 0x0000
   13c26:	0000                	.insn	2, 0x0000
   13c28:	3c10                	.insn	2, 0x3c10
   13c2a:	0001                	.insn	2, 0x0001
   13c2c:	0000                	.insn	2, 0x0000
   13c2e:	0000                	.insn	2, 0x0000
   13c30:	3c20                	.insn	2, 0x3c20
   13c32:	0001                	.insn	2, 0x0001
   13c34:	0000                	.insn	2, 0x0000
   13c36:	0000                	.insn	2, 0x0000
   13c38:	3c20                	.insn	2, 0x3c20
   13c3a:	0001                	.insn	2, 0x0001
   13c3c:	0000                	.insn	2, 0x0000
   13c3e:	0000                	.insn	2, 0x0000
   13c40:	3c30                	.insn	2, 0x3c30
   13c42:	0001                	.insn	2, 0x0001
   13c44:	0000                	.insn	2, 0x0000
   13c46:	0000                	.insn	2, 0x0000
   13c48:	3c30                	.insn	2, 0x3c30
   13c4a:	0001                	.insn	2, 0x0001
   13c4c:	0000                	.insn	2, 0x0000
   13c4e:	0000                	.insn	2, 0x0000
   13c50:	3c40                	.insn	2, 0x3c40
   13c52:	0001                	.insn	2, 0x0001
   13c54:	0000                	.insn	2, 0x0000
   13c56:	0000                	.insn	2, 0x0000
   13c58:	3c40                	.insn	2, 0x3c40
   13c5a:	0001                	.insn	2, 0x0001
   13c5c:	0000                	.insn	2, 0x0000
   13c5e:	0000                	.insn	2, 0x0000
   13c60:	3c50                	.insn	2, 0x3c50
   13c62:	0001                	.insn	2, 0x0001
   13c64:	0000                	.insn	2, 0x0000
   13c66:	0000                	.insn	2, 0x0000
   13c68:	3c50                	.insn	2, 0x3c50
   13c6a:	0001                	.insn	2, 0x0001
   13c6c:	0000                	.insn	2, 0x0000
   13c6e:	0000                	.insn	2, 0x0000
   13c70:	3c60                	.insn	2, 0x3c60
   13c72:	0001                	.insn	2, 0x0001
   13c74:	0000                	.insn	2, 0x0000
   13c76:	0000                	.insn	2, 0x0000
   13c78:	3c60                	.insn	2, 0x3c60
   13c7a:	0001                	.insn	2, 0x0001
   13c7c:	0000                	.insn	2, 0x0000
   13c7e:	0000                	.insn	2, 0x0000
   13c80:	3c70                	.insn	2, 0x3c70
   13c82:	0001                	.insn	2, 0x0001
   13c84:	0000                	.insn	2, 0x0000
   13c86:	0000                	.insn	2, 0x0000
   13c88:	3c70                	.insn	2, 0x3c70
   13c8a:	0001                	.insn	2, 0x0001
   13c8c:	0000                	.insn	2, 0x0000
   13c8e:	0000                	.insn	2, 0x0000
   13c90:	3c80                	.insn	2, 0x3c80
   13c92:	0001                	.insn	2, 0x0001
   13c94:	0000                	.insn	2, 0x0000
   13c96:	0000                	.insn	2, 0x0000
   13c98:	3c80                	.insn	2, 0x3c80
   13c9a:	0001                	.insn	2, 0x0001
   13c9c:	0000                	.insn	2, 0x0000
   13c9e:	0000                	.insn	2, 0x0000
   13ca0:	3c90                	.insn	2, 0x3c90
   13ca2:	0001                	.insn	2, 0x0001
   13ca4:	0000                	.insn	2, 0x0000
   13ca6:	0000                	.insn	2, 0x0000
   13ca8:	3c90                	.insn	2, 0x3c90
   13caa:	0001                	.insn	2, 0x0001
   13cac:	0000                	.insn	2, 0x0000
   13cae:	0000                	.insn	2, 0x0000
   13cb0:	3ca0                	.insn	2, 0x3ca0
   13cb2:	0001                	.insn	2, 0x0001
   13cb4:	0000                	.insn	2, 0x0000
   13cb6:	0000                	.insn	2, 0x0000
   13cb8:	3ca0                	.insn	2, 0x3ca0
   13cba:	0001                	.insn	2, 0x0001
   13cbc:	0000                	.insn	2, 0x0000
   13cbe:	0000                	.insn	2, 0x0000
   13cc0:	3cb0                	.insn	2, 0x3cb0
   13cc2:	0001                	.insn	2, 0x0001
   13cc4:	0000                	.insn	2, 0x0000
   13cc6:	0000                	.insn	2, 0x0000
   13cc8:	3cb0                	.insn	2, 0x3cb0
   13cca:	0001                	.insn	2, 0x0001
   13ccc:	0000                	.insn	2, 0x0000
   13cce:	0000                	.insn	2, 0x0000
   13cd0:	3cc0                	.insn	2, 0x3cc0
   13cd2:	0001                	.insn	2, 0x0001
   13cd4:	0000                	.insn	2, 0x0000
   13cd6:	0000                	.insn	2, 0x0000
   13cd8:	3cc0                	.insn	2, 0x3cc0
   13cda:	0001                	.insn	2, 0x0001
   13cdc:	0000                	.insn	2, 0x0000
   13cde:	0000                	.insn	2, 0x0000
   13ce0:	3cd0                	.insn	2, 0x3cd0
   13ce2:	0001                	.insn	2, 0x0001
   13ce4:	0000                	.insn	2, 0x0000
   13ce6:	0000                	.insn	2, 0x0000
   13ce8:	3cd0                	.insn	2, 0x3cd0
   13cea:	0001                	.insn	2, 0x0001
   13cec:	0000                	.insn	2, 0x0000
   13cee:	0000                	.insn	2, 0x0000
   13cf0:	3ce0                	.insn	2, 0x3ce0
   13cf2:	0001                	.insn	2, 0x0001
   13cf4:	0000                	.insn	2, 0x0000
   13cf6:	0000                	.insn	2, 0x0000
   13cf8:	3ce0                	.insn	2, 0x3ce0
   13cfa:	0001                	.insn	2, 0x0001
   13cfc:	0000                	.insn	2, 0x0000
   13cfe:	0000                	.insn	2, 0x0000
   13d00:	3cf0                	.insn	2, 0x3cf0
   13d02:	0001                	.insn	2, 0x0001
   13d04:	0000                	.insn	2, 0x0000
   13d06:	0000                	.insn	2, 0x0000
   13d08:	3cf0                	.insn	2, 0x3cf0
   13d0a:	0001                	.insn	2, 0x0001
   13d0c:	0000                	.insn	2, 0x0000
   13d0e:	0000                	.insn	2, 0x0000
   13d10:	3d00                	.insn	2, 0x3d00
   13d12:	0001                	.insn	2, 0x0001
   13d14:	0000                	.insn	2, 0x0000
   13d16:	0000                	.insn	2, 0x0000
   13d18:	3d00                	.insn	2, 0x3d00
   13d1a:	0001                	.insn	2, 0x0001
   13d1c:	0000                	.insn	2, 0x0000
   13d1e:	0000                	.insn	2, 0x0000
   13d20:	3d10                	.insn	2, 0x3d10
   13d22:	0001                	.insn	2, 0x0001
   13d24:	0000                	.insn	2, 0x0000
   13d26:	0000                	.insn	2, 0x0000
   13d28:	3d10                	.insn	2, 0x3d10
   13d2a:	0001                	.insn	2, 0x0001
   13d2c:	0000                	.insn	2, 0x0000
	...

Disassembly of section .sdata:

0000000000013d30 <__dso_handle>:
	...

0000000000013d38 <_impure_ptr>:
   13d38:	33c8                	.insn	2, 0x33c8
   13d3a:	0001                	.insn	2, 0x0001
   13d3c:	0000                	.insn	2, 0x0000
	...

0000000000013d40 <__malloc_sbrk_base>:
   13d40:	ffff                	.insn	2, 0xffff
   13d42:	ffff                	.insn	2, 0xffff
   13d44:	ffff                	.insn	2, 0xffff
   13d46:	ffff                	.insn	2, 0xffff

0000000000013d48 <__malloc_trim_threshold>:
   13d48:	0000                	.insn	2, 0x0000
   13d4a:	0002                	.insn	2, 0x0002
   13d4c:	0000                	.insn	2, 0x0000
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

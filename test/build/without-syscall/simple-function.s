
test/build/without-syscall/simple-function.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	35d000ef          	jal	10c90 <__call_exitprocs>
   10138:	1c81b783          	ld	a5,456(gp) # 139e0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	79d010ef          	jal	120e4 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	fac50513          	addi	a0,a0,-84 # 11fac <__libc_fini_array>
   1015c:	46d0006f          	j	10dc8 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00003197          	auipc	gp,0x3
   10168:	6b418193          	addi	gp,gp,1716 # 13818 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	87450513          	addi	a0,a0,-1932 # 139e0 <__stdio_exit_handler>
   10174:	00004617          	auipc	a2,0x4
   10178:	e2c60613          	addi	a2,a2,-468 # 13fa0 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	231000ef          	jal	10bb4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c4050513          	addi	a0,a0,-960 # 10dc8 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	e1850513          	addi	a0,a0,-488 # 11fac <__libc_fini_array>
   1019c:	42d000ef          	jal	10dc8 <atexit>
   101a0:	181000ef          	jal	10b20 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	154000ef          	jal	10304 <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	2001c783          	lbu	a5,512(gp) # 13a18 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00012537          	lui	a0,0x12
   101d8:	25850513          	addi	a0,a0,600 # 12258 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x10120>
   101e4:	00100793          	li	a5,1
   101e8:	20f18023          	sb	a5,512(gp) # 13a18 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00012537          	lui	a0,0x12
   10208:	20818593          	addi	a1,gp,520 # 13a20 <object.0>
   1020c:	25850513          	addi	a0,a0,600 # 12258 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <fuction>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	fe042623          	sw	zero,-20(s0)
   10230:	fe042623          	sw	zero,-20(s0)
   10234:	0480006f          	j	1027c <fuction+0x60>
   10238:	000137b7          	lui	a5,0x13
   1023c:	01878713          	addi	a4,a5,24 # 13018 <result>
   10240:	fec42783          	lw	a5,-20(s0)
   10244:	00279793          	slli	a5,a5,0x2
   10248:	00f707b3          	add	a5,a4,a5
   1024c:	0007a783          	lw	a5,0(a5)
   10250:	00a7879b          	addiw	a5,a5,10
   10254:	0007871b          	sext.w	a4,a5
   10258:	000137b7          	lui	a5,0x13
   1025c:	01878693          	addi	a3,a5,24 # 13018 <result>
   10260:	fec42783          	lw	a5,-20(s0)
   10264:	00279793          	slli	a5,a5,0x2
   10268:	00f687b3          	add	a5,a3,a5
   1026c:	00e7a023          	sw	a4,0(a5)
   10270:	fec42783          	lw	a5,-20(s0)
   10274:	0017879b          	addiw	a5,a5,1
   10278:	fef42623          	sw	a5,-20(s0)
   1027c:	fec42783          	lw	a5,-20(s0)
   10280:	0007871b          	sext.w	a4,a5
   10284:	00400793          	li	a5,4
   10288:	fae7d8e3          	bge	a5,a4,10238 <fuction+0x1c>
   1028c:	00500793          	li	a5,5
   10290:	fef42623          	sw	a5,-20(s0)
   10294:	0480006f          	j	102dc <fuction+0xc0>
   10298:	000137b7          	lui	a5,0x13
   1029c:	01878713          	addi	a4,a5,24 # 13018 <result>
   102a0:	fec42783          	lw	a5,-20(s0)
   102a4:	00279793          	slli	a5,a5,0x2
   102a8:	00f707b3          	add	a5,a4,a5
   102ac:	0007a783          	lw	a5,0(a5)
   102b0:	ffb7879b          	addiw	a5,a5,-5
   102b4:	0007871b          	sext.w	a4,a5
   102b8:	000137b7          	lui	a5,0x13
   102bc:	01878693          	addi	a3,a5,24 # 13018 <result>
   102c0:	fec42783          	lw	a5,-20(s0)
   102c4:	00279793          	slli	a5,a5,0x2
   102c8:	00f687b3          	add	a5,a3,a5
   102cc:	00e7a023          	sw	a4,0(a5)
   102d0:	fec42783          	lw	a5,-20(s0)
   102d4:	0017879b          	addiw	a5,a5,1
   102d8:	fef42623          	sw	a5,-20(s0)
   102dc:	fec42783          	lw	a5,-20(s0)
   102e0:	0007871b          	sext.w	a4,a5
   102e4:	00900793          	li	a5,9
   102e8:	fae7d8e3          	bge	a5,a4,10298 <fuction+0x7c>
   102ec:	00000013          	nop
   102f0:	00000013          	nop
   102f4:	01813083          	ld	ra,24(sp)
   102f8:	01013403          	ld	s0,16(sp)
   102fc:	02010113          	addi	sp,sp,32
   10300:	00008067          	ret

0000000000010304 <main>:
   10304:	ff010113          	addi	sp,sp,-16
   10308:	00113423          	sd	ra,8(sp)
   1030c:	00813023          	sd	s0,0(sp)
   10310:	01010413          	addi	s0,sp,16
   10314:	f09ff0ef          	jal	1021c <fuction>
   10318:	00000793          	li	a5,0
   1031c:	00078513          	mv	a0,a5
   10320:	00813083          	ld	ra,8(sp)
   10324:	00013403          	ld	s0,0(sp)
   10328:	01010113          	addi	sp,sp,16
   1032c:	00008067          	ret

0000000000010330 <__fp_lock>:
   10330:	00000513          	li	a0,0
   10334:	00008067          	ret

0000000000010338 <stdio_exit_handler>:
   10338:	000125b7          	lui	a1,0x12
   1033c:	00013537          	lui	a0,0x13
   10340:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10344:	af058593          	addi	a1,a1,-1296 # 11af0 <_fclose_r>
   10348:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   1034c:	3380006f          	j	10684 <_fwalk_sglue>

0000000000010350 <cleanup_stdio>:
   10350:	00853583          	ld	a1,8(a0)
   10354:	ff010113          	addi	sp,sp,-16
   10358:	00813023          	sd	s0,0(sp)
   1035c:	00113423          	sd	ra,8(sp)
   10360:	23818793          	addi	a5,gp,568 # 13a50 <__sf>
   10364:	00050413          	mv	s0,a0
   10368:	00f58463          	beq	a1,a5,10370 <cleanup_stdio+0x20>
   1036c:	784010ef          	jal	11af0 <_fclose_r>
   10370:	01043583          	ld	a1,16(s0)
   10374:	2e818793          	addi	a5,gp,744 # 13b00 <__sf+0xb0>
   10378:	00f58663          	beq	a1,a5,10384 <cleanup_stdio+0x34>
   1037c:	00040513          	mv	a0,s0
   10380:	770010ef          	jal	11af0 <_fclose_r>
   10384:	01843583          	ld	a1,24(s0)
   10388:	39818793          	addi	a5,gp,920 # 13bb0 <__sf+0x160>
   1038c:	00f58c63          	beq	a1,a5,103a4 <cleanup_stdio+0x54>
   10390:	00040513          	mv	a0,s0
   10394:	00013403          	ld	s0,0(sp)
   10398:	00813083          	ld	ra,8(sp)
   1039c:	01010113          	addi	sp,sp,16
   103a0:	7500106f          	j	11af0 <_fclose_r>
   103a4:	00813083          	ld	ra,8(sp)
   103a8:	00013403          	ld	s0,0(sp)
   103ac:	01010113          	addi	sp,sp,16
   103b0:	00008067          	ret

00000000000103b4 <__fp_unlock>:
   103b4:	00000513          	li	a0,0
   103b8:	00008067          	ret

00000000000103bc <global_stdio_init.part.0>:
   103bc:	fd010113          	addi	sp,sp,-48
   103c0:	000107b7          	lui	a5,0x10
   103c4:	02813023          	sd	s0,32(sp)
   103c8:	33878793          	addi	a5,a5,824 # 10338 <stdio_exit_handler>
   103cc:	23818413          	addi	s0,gp,568 # 13a50 <__sf>
   103d0:	02113423          	sd	ra,40(sp)
   103d4:	00913c23          	sd	s1,24(sp)
   103d8:	01213823          	sd	s2,16(sp)
   103dc:	01313423          	sd	s3,8(sp)
   103e0:	01413023          	sd	s4,0(sp)
   103e4:	1cf1b423          	sd	a5,456(gp) # 139e0 <__stdio_exit_handler>
   103e8:	00800613          	li	a2,8
   103ec:	00400793          	li	a5,4
   103f0:	00000593          	li	a1,0
   103f4:	2dc18513          	addi	a0,gp,732 # 13af4 <__sf+0xa4>
   103f8:	00f42823          	sw	a5,16(s0)
   103fc:	00043023          	sd	zero,0(s0)
   10400:	00043423          	sd	zero,8(s0)
   10404:	0a042623          	sw	zero,172(s0)
   10408:	00043c23          	sd	zero,24(s0)
   1040c:	02042023          	sw	zero,32(s0)
   10410:	02042423          	sw	zero,40(s0)
   10414:	7a0000ef          	jal	10bb4 <memset>
   10418:	00010a37          	lui	s4,0x10
   1041c:	000109b7          	lui	s3,0x10
   10420:	00011937          	lui	s2,0x11
   10424:	000114b7          	lui	s1,0x11
   10428:	000107b7          	lui	a5,0x10
   1042c:	750a0a13          	addi	s4,s4,1872 # 10750 <__sread>
   10430:	7b498993          	addi	s3,s3,1972 # 107b4 <__swrite>
   10434:	83c90913          	addi	s2,s2,-1988 # 1083c <__sseek>
   10438:	8a048493          	addi	s1,s1,-1888 # 108a0 <__sclose>
   1043c:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10440:	00800613          	li	a2,8
   10444:	00000593          	li	a1,0
   10448:	38c18513          	addi	a0,gp,908 # 13ba4 <__sf+0x154>
   1044c:	0cf42023          	sw	a5,192(s0)
   10450:	03443c23          	sd	s4,56(s0)
   10454:	05343023          	sd	s3,64(s0)
   10458:	05243423          	sd	s2,72(s0)
   1045c:	04943823          	sd	s1,80(s0)
   10460:	02843823          	sd	s0,48(s0)
   10464:	0a043823          	sd	zero,176(s0)
   10468:	0a043c23          	sd	zero,184(s0)
   1046c:	14042e23          	sw	zero,348(s0)
   10470:	0c043423          	sd	zero,200(s0)
   10474:	0c042823          	sw	zero,208(s0)
   10478:	0c042c23          	sw	zero,216(s0)
   1047c:	738000ef          	jal	10bb4 <memset>
   10480:	000207b7          	lui	a5,0x20
   10484:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc072>
   10488:	2e818713          	addi	a4,gp,744 # 13b00 <__sf+0xb0>
   1048c:	43c18513          	addi	a0,gp,1084 # 13c54 <__sf+0x204>
   10490:	00800613          	li	a2,8
   10494:	00000593          	li	a1,0
   10498:	0f443423          	sd	s4,232(s0)
   1049c:	0f343823          	sd	s3,240(s0)
   104a0:	0f243c23          	sd	s2,248(s0)
   104a4:	10943023          	sd	s1,256(s0)
   104a8:	16f42823          	sw	a5,368(s0)
   104ac:	16043023          	sd	zero,352(s0)
   104b0:	16043423          	sd	zero,360(s0)
   104b4:	20042623          	sw	zero,524(s0)
   104b8:	16043c23          	sd	zero,376(s0)
   104bc:	18042023          	sw	zero,384(s0)
   104c0:	18042423          	sw	zero,392(s0)
   104c4:	0ee43023          	sd	a4,224(s0)
   104c8:	6ec000ef          	jal	10bb4 <memset>
   104cc:	39818793          	addi	a5,gp,920 # 13bb0 <__sf+0x160>
   104d0:	19443c23          	sd	s4,408(s0)
   104d4:	1b343023          	sd	s3,416(s0)
   104d8:	1b243423          	sd	s2,424(s0)
   104dc:	1a943823          	sd	s1,432(s0)
   104e0:	02813083          	ld	ra,40(sp)
   104e4:	18f43823          	sd	a5,400(s0)
   104e8:	02013403          	ld	s0,32(sp)
   104ec:	01813483          	ld	s1,24(sp)
   104f0:	01013903          	ld	s2,16(sp)
   104f4:	00813983          	ld	s3,8(sp)
   104f8:	00013a03          	ld	s4,0(sp)
   104fc:	03010113          	addi	sp,sp,48
   10500:	00008067          	ret

0000000000010504 <__sfp>:
   10504:	1c81b783          	ld	a5,456(gp) # 139e0 <__stdio_exit_handler>
   10508:	fd010113          	addi	sp,sp,-48
   1050c:	00913c23          	sd	s1,24(sp)
   10510:	02113423          	sd	ra,40(sp)
   10514:	02813023          	sd	s0,32(sp)
   10518:	00050493          	mv	s1,a0
   1051c:	0e078e63          	beqz	a5,10618 <__sfp+0x114>
   10520:	82818693          	addi	a3,gp,-2008 # 13040 <__sglue>
   10524:	0b000813          	li	a6,176
   10528:	0086a703          	lw	a4,8(a3)
   1052c:	08e05463          	blez	a4,105b4 <__sfp+0xb0>
   10530:	02071713          	slli	a4,a4,0x20
   10534:	02075713          	srli	a4,a4,0x20
   10538:	03070733          	mul	a4,a4,a6
   1053c:	0106b403          	ld	s0,16(a3)
   10540:	00e40733          	add	a4,s0,a4
   10544:	00c0006f          	j	10550 <__sfp+0x4c>
   10548:	0b040413          	addi	s0,s0,176
   1054c:	06e40463          	beq	s0,a4,105b4 <__sfp+0xb0>
   10550:	01041783          	lh	a5,16(s0)
   10554:	fe079ae3          	bnez	a5,10548 <__sfp+0x44>
   10558:	ffff07b7          	lui	a5,0xffff0
   1055c:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc061>
   10560:	00f42823          	sw	a5,16(s0)
   10564:	0a042623          	sw	zero,172(s0)
   10568:	00043023          	sd	zero,0(s0)
   1056c:	00043423          	sd	zero,8(s0)
   10570:	00043c23          	sd	zero,24(s0)
   10574:	02042023          	sw	zero,32(s0)
   10578:	02042423          	sw	zero,40(s0)
   1057c:	00800613          	li	a2,8
   10580:	00000593          	li	a1,0
   10584:	0a440513          	addi	a0,s0,164
   10588:	62c000ef          	jal	10bb4 <memset>
   1058c:	04043c23          	sd	zero,88(s0)
   10590:	06042023          	sw	zero,96(s0)
   10594:	06043c23          	sd	zero,120(s0)
   10598:	08042023          	sw	zero,128(s0)
   1059c:	02813083          	ld	ra,40(sp)
   105a0:	00040513          	mv	a0,s0
   105a4:	02013403          	ld	s0,32(sp)
   105a8:	01813483          	ld	s1,24(sp)
   105ac:	03010113          	addi	sp,sp,48
   105b0:	00008067          	ret
   105b4:	0006b403          	ld	s0,0(a3)
   105b8:	00040663          	beqz	s0,105c4 <__sfp+0xc0>
   105bc:	00040693          	mv	a3,s0
   105c0:	f69ff06f          	j	10528 <__sfp+0x24>
   105c4:	2d800593          	li	a1,728
   105c8:	00048513          	mv	a0,s1
   105cc:	00d13423          	sd	a3,8(sp)
   105d0:	435000ef          	jal	11204 <_malloc_r>
   105d4:	00813683          	ld	a3,8(sp)
   105d8:	00050413          	mv	s0,a0
   105dc:	04050263          	beqz	a0,10620 <__sfp+0x11c>
   105e0:	00400793          	li	a5,4
   105e4:	00f52423          	sw	a5,8(a0)
   105e8:	01850513          	addi	a0,a0,24
   105ec:	00043023          	sd	zero,0(s0)
   105f0:	00a43823          	sd	a0,16(s0)
   105f4:	2c000613          	li	a2,704
   105f8:	00000593          	li	a1,0
   105fc:	00d13423          	sd	a3,8(sp)
   10600:	5b4000ef          	jal	10bb4 <memset>
   10604:	00813683          	ld	a3,8(sp)
   10608:	0b000813          	li	a6,176
   1060c:	0086b023          	sd	s0,0(a3)
   10610:	00040693          	mv	a3,s0
   10614:	f15ff06f          	j	10528 <__sfp+0x24>
   10618:	da5ff0ef          	jal	103bc <global_stdio_init.part.0>
   1061c:	f05ff06f          	j	10520 <__sfp+0x1c>
   10620:	0006b023          	sd	zero,0(a3)
   10624:	00c00793          	li	a5,12
   10628:	00f4a023          	sw	a5,0(s1)
   1062c:	f71ff06f          	j	1059c <__sfp+0x98>

0000000000010630 <__sinit>:
   10630:	04853783          	ld	a5,72(a0)
   10634:	00078463          	beqz	a5,1063c <__sinit+0xc>
   10638:	00008067          	ret
   1063c:	000107b7          	lui	a5,0x10
   10640:	1c81b703          	ld	a4,456(gp) # 139e0 <__stdio_exit_handler>
   10644:	35078793          	addi	a5,a5,848 # 10350 <cleanup_stdio>
   10648:	04f53423          	sd	a5,72(a0)
   1064c:	fe0716e3          	bnez	a4,10638 <__sinit+0x8>
   10650:	d6dff06f          	j	103bc <global_stdio_init.part.0>

0000000000010654 <__sfp_lock_acquire>:
   10654:	00008067          	ret

0000000000010658 <__sfp_lock_release>:
   10658:	00008067          	ret

000000000001065c <__fp_lock_all>:
   1065c:	000105b7          	lui	a1,0x10
   10660:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10664:	33058593          	addi	a1,a1,816 # 10330 <__fp_lock>
   10668:	00000513          	li	a0,0
   1066c:	0180006f          	j	10684 <_fwalk_sglue>

0000000000010670 <__fp_unlock_all>:
   10670:	000105b7          	lui	a1,0x10
   10674:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10678:	3b458593          	addi	a1,a1,948 # 103b4 <__fp_unlock>
   1067c:	00000513          	li	a0,0
   10680:	0040006f          	j	10684 <_fwalk_sglue>

0000000000010684 <_fwalk_sglue>:
   10684:	fb010113          	addi	sp,sp,-80
   10688:	03213823          	sd	s2,48(sp)
   1068c:	03313423          	sd	s3,40(sp)
   10690:	03413023          	sd	s4,32(sp)
   10694:	01513c23          	sd	s5,24(sp)
   10698:	01613823          	sd	s6,16(sp)
   1069c:	01713423          	sd	s7,8(sp)
   106a0:	01813023          	sd	s8,0(sp)
   106a4:	04113423          	sd	ra,72(sp)
   106a8:	04813023          	sd	s0,64(sp)
   106ac:	02913c23          	sd	s1,56(sp)
   106b0:	00060993          	mv	s3,a2
   106b4:	00050a93          	mv	s5,a0
   106b8:	00058b13          	mv	s6,a1
   106bc:	00000913          	li	s2,0
   106c0:	0b000b93          	li	s7,176
   106c4:	00100c13          	li	s8,1
   106c8:	fff00a13          	li	s4,-1
   106cc:	0089a483          	lw	s1,8(s3)
   106d0:	04905263          	blez	s1,10714 <_fwalk_sglue+0x90>
   106d4:	02049493          	slli	s1,s1,0x20
   106d8:	0204d493          	srli	s1,s1,0x20
   106dc:	037484b3          	mul	s1,s1,s7
   106e0:	0109b403          	ld	s0,16(s3)
   106e4:	009404b3          	add	s1,s0,s1
   106e8:	01045783          	lhu	a5,16(s0)
   106ec:	02fc7063          	bgeu	s8,a5,1070c <_fwalk_sglue+0x88>
   106f0:	01241783          	lh	a5,18(s0)
   106f4:	00040593          	mv	a1,s0
   106f8:	000a8513          	mv	a0,s5
   106fc:	01478863          	beq	a5,s4,1070c <_fwalk_sglue+0x88>
   10700:	000b00e7          	jalr	s6
   10704:	01256933          	or	s2,a0,s2
   10708:	0009091b          	sext.w	s2,s2
   1070c:	0b040413          	addi	s0,s0,176
   10710:	fc941ce3          	bne	s0,s1,106e8 <_fwalk_sglue+0x64>
   10714:	0009b983          	ld	s3,0(s3)
   10718:	fa099ae3          	bnez	s3,106cc <_fwalk_sglue+0x48>
   1071c:	04813083          	ld	ra,72(sp)
   10720:	04013403          	ld	s0,64(sp)
   10724:	03813483          	ld	s1,56(sp)
   10728:	02813983          	ld	s3,40(sp)
   1072c:	02013a03          	ld	s4,32(sp)
   10730:	01813a83          	ld	s5,24(sp)
   10734:	01013b03          	ld	s6,16(sp)
   10738:	00813b83          	ld	s7,8(sp)
   1073c:	00013c03          	ld	s8,0(sp)
   10740:	00090513          	mv	a0,s2
   10744:	03013903          	ld	s2,48(sp)
   10748:	05010113          	addi	sp,sp,80
   1074c:	00008067          	ret

0000000000010750 <__sread>:
   10750:	ff010113          	addi	sp,sp,-16
   10754:	00813023          	sd	s0,0(sp)
   10758:	00058413          	mv	s0,a1
   1075c:	01259583          	lh	a1,18(a1)
   10760:	00113423          	sd	ra,8(sp)
   10764:	2ec000ef          	jal	10a50 <_read_r>
   10768:	02054063          	bltz	a0,10788 <__sread+0x38>
   1076c:	09043783          	ld	a5,144(s0)
   10770:	00813083          	ld	ra,8(sp)
   10774:	00a787b3          	add	a5,a5,a0
   10778:	08f43823          	sd	a5,144(s0)
   1077c:	00013403          	ld	s0,0(sp)
   10780:	01010113          	addi	sp,sp,16
   10784:	00008067          	ret
   10788:	01045783          	lhu	a5,16(s0)
   1078c:	fffff737          	lui	a4,0xfffff
   10790:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   10794:	00e7f7b3          	and	a5,a5,a4
   10798:	00813083          	ld	ra,8(sp)
   1079c:	00f41823          	sh	a5,16(s0)
   107a0:	00013403          	ld	s0,0(sp)
   107a4:	01010113          	addi	sp,sp,16
   107a8:	00008067          	ret

00000000000107ac <__seofread>:
   107ac:	00000513          	li	a0,0
   107b0:	00008067          	ret

00000000000107b4 <__swrite>:
   107b4:	01059783          	lh	a5,16(a1)
   107b8:	fd010113          	addi	sp,sp,-48
   107bc:	00068313          	mv	t1,a3
   107c0:	02113423          	sd	ra,40(sp)
   107c4:	1007f693          	andi	a3,a5,256
   107c8:	00058713          	mv	a4,a1
   107cc:	00060893          	mv	a7,a2
   107d0:	00050813          	mv	a6,a0
   107d4:	02069863          	bnez	a3,10804 <__swrite+0x50>
   107d8:	fffff6b7          	lui	a3,0xfffff
   107dc:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   107e0:	02813083          	ld	ra,40(sp)
   107e4:	00d7f7b3          	and	a5,a5,a3
   107e8:	01271583          	lh	a1,18(a4)
   107ec:	00f71823          	sh	a5,16(a4)
   107f0:	00030693          	mv	a3,t1
   107f4:	00088613          	mv	a2,a7
   107f8:	00080513          	mv	a0,a6
   107fc:	03010113          	addi	sp,sp,48
   10800:	2b80006f          	j	10ab8 <_write_r>
   10804:	01259583          	lh	a1,18(a1)
   10808:	00c13823          	sd	a2,16(sp)
   1080c:	00200693          	li	a3,2
   10810:	00000613          	li	a2,0
   10814:	00613c23          	sd	t1,24(sp)
   10818:	00e13023          	sd	a4,0(sp)
   1081c:	00a13423          	sd	a0,8(sp)
   10820:	1c8000ef          	jal	109e8 <_lseek_r>
   10824:	00013703          	ld	a4,0(sp)
   10828:	01813303          	ld	t1,24(sp)
   1082c:	01013883          	ld	a7,16(sp)
   10830:	01071783          	lh	a5,16(a4)
   10834:	00813803          	ld	a6,8(sp)
   10838:	fa1ff06f          	j	107d8 <__swrite+0x24>

000000000001083c <__sseek>:
   1083c:	ff010113          	addi	sp,sp,-16
   10840:	00813023          	sd	s0,0(sp)
   10844:	00058413          	mv	s0,a1
   10848:	01259583          	lh	a1,18(a1)
   1084c:	00113423          	sd	ra,8(sp)
   10850:	198000ef          	jal	109e8 <_lseek_r>
   10854:	fff00713          	li	a4,-1
   10858:	01041783          	lh	a5,16(s0)
   1085c:	02e50263          	beq	a0,a4,10880 <__sseek+0x44>
   10860:	00001737          	lui	a4,0x1
   10864:	00e7e7b3          	or	a5,a5,a4
   10868:	00813083          	ld	ra,8(sp)
   1086c:	08a43823          	sd	a0,144(s0)
   10870:	00f41823          	sh	a5,16(s0)
   10874:	00013403          	ld	s0,0(sp)
   10878:	01010113          	addi	sp,sp,16
   1087c:	00008067          	ret
   10880:	80050713          	addi	a4,a0,-2048
   10884:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10888:	00e7f7b3          	and	a5,a5,a4
   1088c:	00813083          	ld	ra,8(sp)
   10890:	00f41823          	sh	a5,16(s0)
   10894:	00013403          	ld	s0,0(sp)
   10898:	01010113          	addi	sp,sp,16
   1089c:	00008067          	ret

00000000000108a0 <__sclose>:
   108a0:	01259583          	lh	a1,18(a1)
   108a4:	0040006f          	j	108a8 <_close_r>

00000000000108a8 <_close_r>:
   108a8:	fe010113          	addi	sp,sp,-32
   108ac:	00813823          	sd	s0,16(sp)
   108b0:	00913423          	sd	s1,8(sp)
   108b4:	00050493          	mv	s1,a0
   108b8:	00058513          	mv	a0,a1
   108bc:	00113c23          	sd	ra,24(sp)
   108c0:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   108c4:	7e0010ef          	jal	120a4 <_close>
   108c8:	fff00793          	li	a5,-1
   108cc:	00f50c63          	beq	a0,a5,108e4 <_close_r+0x3c>
   108d0:	01813083          	ld	ra,24(sp)
   108d4:	01013403          	ld	s0,16(sp)
   108d8:	00813483          	ld	s1,8(sp)
   108dc:	02010113          	addi	sp,sp,32
   108e0:	00008067          	ret
   108e4:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   108e8:	fe0784e3          	beqz	a5,108d0 <_close_r+0x28>
   108ec:	01813083          	ld	ra,24(sp)
   108f0:	01013403          	ld	s0,16(sp)
   108f4:	00f4a023          	sw	a5,0(s1)
   108f8:	00813483          	ld	s1,8(sp)
   108fc:	02010113          	addi	sp,sp,32
   10900:	00008067          	ret

0000000000010904 <_reclaim_reent>:
   10904:	1b01b783          	ld	a5,432(gp) # 139c8 <_impure_ptr>
   10908:	0ca78e63          	beq	a5,a0,109e4 <_reclaim_reent+0xe0>
   1090c:	06853583          	ld	a1,104(a0)
   10910:	fd010113          	addi	sp,sp,-48
   10914:	00913c23          	sd	s1,24(sp)
   10918:	02113423          	sd	ra,40(sp)
   1091c:	02813023          	sd	s0,32(sp)
   10920:	00050493          	mv	s1,a0
   10924:	04058863          	beqz	a1,10974 <_reclaim_reent+0x70>
   10928:	01213823          	sd	s2,16(sp)
   1092c:	01313423          	sd	s3,8(sp)
   10930:	00000913          	li	s2,0
   10934:	20000993          	li	s3,512
   10938:	012587b3          	add	a5,a1,s2
   1093c:	0007b403          	ld	s0,0(a5)
   10940:	00040e63          	beqz	s0,1095c <_reclaim_reent+0x58>
   10944:	00040593          	mv	a1,s0
   10948:	00043403          	ld	s0,0(s0)
   1094c:	00048513          	mv	a0,s1
   10950:	5b0000ef          	jal	10f00 <_free_r>
   10954:	fe0418e3          	bnez	s0,10944 <_reclaim_reent+0x40>
   10958:	0684b583          	ld	a1,104(s1)
   1095c:	00890913          	addi	s2,s2,8
   10960:	fd391ce3          	bne	s2,s3,10938 <_reclaim_reent+0x34>
   10964:	00048513          	mv	a0,s1
   10968:	598000ef          	jal	10f00 <_free_r>
   1096c:	01013903          	ld	s2,16(sp)
   10970:	00813983          	ld	s3,8(sp)
   10974:	0504b583          	ld	a1,80(s1)
   10978:	00058663          	beqz	a1,10984 <_reclaim_reent+0x80>
   1097c:	00048513          	mv	a0,s1
   10980:	580000ef          	jal	10f00 <_free_r>
   10984:	0604b403          	ld	s0,96(s1)
   10988:	00040c63          	beqz	s0,109a0 <_reclaim_reent+0x9c>
   1098c:	00040593          	mv	a1,s0
   10990:	00043403          	ld	s0,0(s0)
   10994:	00048513          	mv	a0,s1
   10998:	568000ef          	jal	10f00 <_free_r>
   1099c:	fe0418e3          	bnez	s0,1098c <_reclaim_reent+0x88>
   109a0:	0784b583          	ld	a1,120(s1)
   109a4:	00058663          	beqz	a1,109b0 <_reclaim_reent+0xac>
   109a8:	00048513          	mv	a0,s1
   109ac:	554000ef          	jal	10f00 <_free_r>
   109b0:	0484b783          	ld	a5,72(s1)
   109b4:	00078e63          	beqz	a5,109d0 <_reclaim_reent+0xcc>
   109b8:	02013403          	ld	s0,32(sp)
   109bc:	02813083          	ld	ra,40(sp)
   109c0:	00048513          	mv	a0,s1
   109c4:	01813483          	ld	s1,24(sp)
   109c8:	03010113          	addi	sp,sp,48
   109cc:	00078067          	jr	a5
   109d0:	02813083          	ld	ra,40(sp)
   109d4:	02013403          	ld	s0,32(sp)
   109d8:	01813483          	ld	s1,24(sp)
   109dc:	03010113          	addi	sp,sp,48
   109e0:	00008067          	ret
   109e4:	00008067          	ret

00000000000109e8 <_lseek_r>:
   109e8:	fe010113          	addi	sp,sp,-32
   109ec:	00058793          	mv	a5,a1
   109f0:	00813823          	sd	s0,16(sp)
   109f4:	00913423          	sd	s1,8(sp)
   109f8:	00060593          	mv	a1,a2
   109fc:	00050493          	mv	s1,a0
   10a00:	00068613          	mv	a2,a3
   10a04:	00078513          	mv	a0,a5
   10a08:	00113c23          	sd	ra,24(sp)
   10a0c:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10a10:	704010ef          	jal	12114 <_lseek>
   10a14:	fff00793          	li	a5,-1
   10a18:	00f50c63          	beq	a0,a5,10a30 <_lseek_r+0x48>
   10a1c:	01813083          	ld	ra,24(sp)
   10a20:	01013403          	ld	s0,16(sp)
   10a24:	00813483          	ld	s1,8(sp)
   10a28:	02010113          	addi	sp,sp,32
   10a2c:	00008067          	ret
   10a30:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a34:	fe0784e3          	beqz	a5,10a1c <_lseek_r+0x34>
   10a38:	01813083          	ld	ra,24(sp)
   10a3c:	01013403          	ld	s0,16(sp)
   10a40:	00f4a023          	sw	a5,0(s1)
   10a44:	00813483          	ld	s1,8(sp)
   10a48:	02010113          	addi	sp,sp,32
   10a4c:	00008067          	ret

0000000000010a50 <_read_r>:
   10a50:	fe010113          	addi	sp,sp,-32
   10a54:	00058793          	mv	a5,a1
   10a58:	00813823          	sd	s0,16(sp)
   10a5c:	00913423          	sd	s1,8(sp)
   10a60:	00060593          	mv	a1,a2
   10a64:	00050493          	mv	s1,a0
   10a68:	00068613          	mv	a2,a3
   10a6c:	00078513          	mv	a0,a5
   10a70:	00113c23          	sd	ra,24(sp)
   10a74:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10a78:	6dc010ef          	jal	12154 <_read>
   10a7c:	fff00793          	li	a5,-1
   10a80:	00f50c63          	beq	a0,a5,10a98 <_read_r+0x48>
   10a84:	01813083          	ld	ra,24(sp)
   10a88:	01013403          	ld	s0,16(sp)
   10a8c:	00813483          	ld	s1,8(sp)
   10a90:	02010113          	addi	sp,sp,32
   10a94:	00008067          	ret
   10a98:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a9c:	fe0784e3          	beqz	a5,10a84 <_read_r+0x34>
   10aa0:	01813083          	ld	ra,24(sp)
   10aa4:	01013403          	ld	s0,16(sp)
   10aa8:	00f4a023          	sw	a5,0(s1)
   10aac:	00813483          	ld	s1,8(sp)
   10ab0:	02010113          	addi	sp,sp,32
   10ab4:	00008067          	ret

0000000000010ab8 <_write_r>:
   10ab8:	fe010113          	addi	sp,sp,-32
   10abc:	00058793          	mv	a5,a1
   10ac0:	00813823          	sd	s0,16(sp)
   10ac4:	00913423          	sd	s1,8(sp)
   10ac8:	00060593          	mv	a1,a2
   10acc:	00050493          	mv	s1,a0
   10ad0:	00068613          	mv	a2,a3
   10ad4:	00078513          	mv	a0,a5
   10ad8:	00113c23          	sd	ra,24(sp)
   10adc:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10ae0:	72c010ef          	jal	1220c <_write>
   10ae4:	fff00793          	li	a5,-1
   10ae8:	00f50c63          	beq	a0,a5,10b00 <_write_r+0x48>
   10aec:	01813083          	ld	ra,24(sp)
   10af0:	01013403          	ld	s0,16(sp)
   10af4:	00813483          	ld	s1,8(sp)
   10af8:	02010113          	addi	sp,sp,32
   10afc:	00008067          	ret
   10b00:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10b04:	fe0784e3          	beqz	a5,10aec <_write_r+0x34>
   10b08:	01813083          	ld	ra,24(sp)
   10b0c:	01013403          	ld	s0,16(sp)
   10b10:	00f4a023          	sw	a5,0(s1)
   10b14:	00813483          	ld	s1,8(sp)
   10b18:	02010113          	addi	sp,sp,32
   10b1c:	00008067          	ret

0000000000010b20 <__libc_init_array>:
   10b20:	fe010113          	addi	sp,sp,-32
   10b24:	00813823          	sd	s0,16(sp)
   10b28:	01213023          	sd	s2,0(sp)
   10b2c:	00013437          	lui	s0,0x13
   10b30:	00013937          	lui	s2,0x13
   10b34:	00113c23          	sd	ra,24(sp)
   10b38:	00913423          	sd	s1,8(sp)
   10b3c:	00090913          	mv	s2,s2
   10b40:	00040413          	mv	s0,s0
   10b44:	02890263          	beq	s2,s0,10b68 <__libc_init_array+0x48>
   10b48:	40890933          	sub	s2,s2,s0
   10b4c:	40395913          	srai	s2,s2,0x3
   10b50:	00000493          	li	s1,0
   10b54:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b58:	00148493          	addi	s1,s1,1
   10b5c:	00840413          	addi	s0,s0,8
   10b60:	000780e7          	jalr	a5
   10b64:	ff24e8e3          	bltu	s1,s2,10b54 <__libc_init_array+0x34>
   10b68:	00013937          	lui	s2,0x13
   10b6c:	00013437          	lui	s0,0x13
   10b70:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b74:	00040413          	mv	s0,s0
   10b78:	02890263          	beq	s2,s0,10b9c <__libc_init_array+0x7c>
   10b7c:	40890933          	sub	s2,s2,s0
   10b80:	40395913          	srai	s2,s2,0x3
   10b84:	00000493          	li	s1,0
   10b88:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b8c:	00148493          	addi	s1,s1,1
   10b90:	00840413          	addi	s0,s0,8
   10b94:	000780e7          	jalr	a5
   10b98:	ff24e8e3          	bltu	s1,s2,10b88 <__libc_init_array+0x68>
   10b9c:	01813083          	ld	ra,24(sp)
   10ba0:	01013403          	ld	s0,16(sp)
   10ba4:	00813483          	ld	s1,8(sp)
   10ba8:	00013903          	ld	s2,0(sp)
   10bac:	02010113          	addi	sp,sp,32
   10bb0:	00008067          	ret

0000000000010bb4 <memset>:
   10bb4:	00f00313          	li	t1,15
   10bb8:	00050713          	mv	a4,a0
   10bbc:	02c37a63          	bgeu	t1,a2,10bf0 <memset+0x3c>
   10bc0:	00f77793          	andi	a5,a4,15
   10bc4:	0a079063          	bnez	a5,10c64 <memset+0xb0>
   10bc8:	06059e63          	bnez	a1,10c44 <memset+0x90>
   10bcc:	ff067693          	andi	a3,a2,-16
   10bd0:	00f67613          	andi	a2,a2,15
   10bd4:	00e686b3          	add	a3,a3,a4
   10bd8:	00b73023          	sd	a1,0(a4)
   10bdc:	00b73423          	sd	a1,8(a4)
   10be0:	01070713          	addi	a4,a4,16
   10be4:	fed76ae3          	bltu	a4,a3,10bd8 <memset+0x24>
   10be8:	00061463          	bnez	a2,10bf0 <memset+0x3c>
   10bec:	00008067          	ret
   10bf0:	40c306b3          	sub	a3,t1,a2
   10bf4:	00269693          	slli	a3,a3,0x2
   10bf8:	00000297          	auipc	t0,0x0
   10bfc:	005686b3          	add	a3,a3,t0
   10c00:	00c68067          	jr	12(a3)
   10c04:	00b70723          	sb	a1,14(a4)
   10c08:	00b706a3          	sb	a1,13(a4)
   10c0c:	00b70623          	sb	a1,12(a4)
   10c10:	00b705a3          	sb	a1,11(a4)
   10c14:	00b70523          	sb	a1,10(a4)
   10c18:	00b704a3          	sb	a1,9(a4)
   10c1c:	00b70423          	sb	a1,8(a4)
   10c20:	00b703a3          	sb	a1,7(a4)
   10c24:	00b70323          	sb	a1,6(a4)
   10c28:	00b702a3          	sb	a1,5(a4)
   10c2c:	00b70223          	sb	a1,4(a4)
   10c30:	00b701a3          	sb	a1,3(a4)
   10c34:	00b70123          	sb	a1,2(a4)
   10c38:	00b700a3          	sb	a1,1(a4)
   10c3c:	00b70023          	sb	a1,0(a4)
   10c40:	00008067          	ret
   10c44:	0ff5f593          	zext.b	a1,a1
   10c48:	00859693          	slli	a3,a1,0x8
   10c4c:	00d5e5b3          	or	a1,a1,a3
   10c50:	01059693          	slli	a3,a1,0x10
   10c54:	00d5e5b3          	or	a1,a1,a3
   10c58:	02059693          	slli	a3,a1,0x20
   10c5c:	00d5e5b3          	or	a1,a1,a3
   10c60:	f6dff06f          	j	10bcc <memset+0x18>
   10c64:	00279693          	slli	a3,a5,0x2
   10c68:	00000297          	auipc	t0,0x0
   10c6c:	005686b3          	add	a3,a3,t0
   10c70:	00008293          	mv	t0,ra
   10c74:	f98680e7          	jalr	-104(a3)
   10c78:	00028093          	mv	ra,t0
   10c7c:	ff078793          	addi	a5,a5,-16
   10c80:	40f70733          	sub	a4,a4,a5
   10c84:	00f60633          	add	a2,a2,a5
   10c88:	f6c374e3          	bgeu	t1,a2,10bf0 <memset+0x3c>
   10c8c:	f3dff06f          	j	10bc8 <memset+0x14>

0000000000010c90 <__call_exitprocs>:
   10c90:	fb010113          	addi	sp,sp,-80
   10c94:	03413023          	sd	s4,32(sp)
   10c98:	03213823          	sd	s2,48(sp)
   10c9c:	1d81b903          	ld	s2,472(gp) # 139f0 <__atexit>
   10ca0:	04113423          	sd	ra,72(sp)
   10ca4:	06090e63          	beqz	s2,10d20 <__call_exitprocs+0x90>
   10ca8:	03313423          	sd	s3,40(sp)
   10cac:	01513c23          	sd	s5,24(sp)
   10cb0:	01613823          	sd	s6,16(sp)
   10cb4:	01713423          	sd	s7,8(sp)
   10cb8:	04813023          	sd	s0,64(sp)
   10cbc:	02913c23          	sd	s1,56(sp)
   10cc0:	01813023          	sd	s8,0(sp)
   10cc4:	00050b13          	mv	s6,a0
   10cc8:	00058b93          	mv	s7,a1
   10ccc:	fff00993          	li	s3,-1
   10cd0:	00100a93          	li	s5,1
   10cd4:	00892403          	lw	s0,8(s2)
   10cd8:	fff4041b          	addiw	s0,s0,-1
   10cdc:	02044463          	bltz	s0,10d04 <__call_exitprocs+0x74>
   10ce0:	01090493          	addi	s1,s2,16
   10ce4:	00341793          	slli	a5,s0,0x3
   10ce8:	00f484b3          	add	s1,s1,a5
   10cec:	040b8463          	beqz	s7,10d34 <__call_exitprocs+0xa4>
   10cf0:	2004b783          	ld	a5,512(s1)
   10cf4:	05778063          	beq	a5,s7,10d34 <__call_exitprocs+0xa4>
   10cf8:	fff4041b          	addiw	s0,s0,-1
   10cfc:	ff848493          	addi	s1,s1,-8
   10d00:	ff3418e3          	bne	s0,s3,10cf0 <__call_exitprocs+0x60>
   10d04:	04013403          	ld	s0,64(sp)
   10d08:	03813483          	ld	s1,56(sp)
   10d0c:	02813983          	ld	s3,40(sp)
   10d10:	01813a83          	ld	s5,24(sp)
   10d14:	01013b03          	ld	s6,16(sp)
   10d18:	00813b83          	ld	s7,8(sp)
   10d1c:	00013c03          	ld	s8,0(sp)
   10d20:	04813083          	ld	ra,72(sp)
   10d24:	03013903          	ld	s2,48(sp)
   10d28:	02013a03          	ld	s4,32(sp)
   10d2c:	05010113          	addi	sp,sp,80
   10d30:	00008067          	ret
   10d34:	00892783          	lw	a5,8(s2)
   10d38:	0004b683          	ld	a3,0(s1)
   10d3c:	fff7879b          	addiw	a5,a5,-1
   10d40:	06878a63          	beq	a5,s0,10db4 <__call_exitprocs+0x124>
   10d44:	0004b023          	sd	zero,0(s1)
   10d48:	02068663          	beqz	a3,10d74 <__call_exitprocs+0xe4>
   10d4c:	31092783          	lw	a5,784(s2)
   10d50:	008a973b          	sllw	a4,s5,s0
   10d54:	00892c03          	lw	s8,8(s2)
   10d58:	00e7f7b3          	and	a5,a5,a4
   10d5c:	02079463          	bnez	a5,10d84 <__call_exitprocs+0xf4>
   10d60:	000680e7          	jalr	a3
   10d64:	00892703          	lw	a4,8(s2)
   10d68:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10d6c:	03871e63          	bne	a4,s8,10da8 <__call_exitprocs+0x118>
   10d70:	03279c63          	bne	a5,s2,10da8 <__call_exitprocs+0x118>
   10d74:	fff4041b          	addiw	s0,s0,-1
   10d78:	ff848493          	addi	s1,s1,-8
   10d7c:	f73418e3          	bne	s0,s3,10cec <__call_exitprocs+0x5c>
   10d80:	f85ff06f          	j	10d04 <__call_exitprocs+0x74>
   10d84:	31492783          	lw	a5,788(s2)
   10d88:	1004b583          	ld	a1,256(s1)
   10d8c:	00f77733          	and	a4,a4,a5
   10d90:	02071663          	bnez	a4,10dbc <__call_exitprocs+0x12c>
   10d94:	000b0513          	mv	a0,s6
   10d98:	000680e7          	jalr	a3
   10d9c:	00892703          	lw	a4,8(s2)
   10da0:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10da4:	fd8706e3          	beq	a4,s8,10d70 <__call_exitprocs+0xe0>
   10da8:	f4078ee3          	beqz	a5,10d04 <__call_exitprocs+0x74>
   10dac:	00078913          	mv	s2,a5
   10db0:	f25ff06f          	j	10cd4 <__call_exitprocs+0x44>
   10db4:	00892423          	sw	s0,8(s2)
   10db8:	f91ff06f          	j	10d48 <__call_exitprocs+0xb8>
   10dbc:	00058513          	mv	a0,a1
   10dc0:	000680e7          	jalr	a3
   10dc4:	fa1ff06f          	j	10d64 <__call_exitprocs+0xd4>

0000000000010dc8 <atexit>:
   10dc8:	00050593          	mv	a1,a0
   10dcc:	00000693          	li	a3,0
   10dd0:	00000613          	li	a2,0
   10dd4:	00000513          	li	a0,0
   10dd8:	2300106f          	j	12008 <__register_exitproc>

0000000000010ddc <_malloc_trim_r>:
   10ddc:	fd010113          	addi	sp,sp,-48
   10de0:	01213823          	sd	s2,16(sp)
   10de4:	00013937          	lui	s2,0x13
   10de8:	02813023          	sd	s0,32(sp)
   10dec:	00913c23          	sd	s1,24(sp)
   10df0:	01313423          	sd	s3,8(sp)
   10df4:	00058413          	mv	s0,a1
   10df8:	02113423          	sd	ra,40(sp)
   10dfc:	00050993          	mv	s3,a0
   10e00:	1b090913          	addi	s2,s2,432 # 131b0 <__malloc_av_>
   10e04:	4e5000ef          	jal	11ae8 <__malloc_lock>
   10e08:	01093783          	ld	a5,16(s2)
   10e0c:	00001737          	lui	a4,0x1
   10e10:	0087b483          	ld	s1,8(a5)
   10e14:	ffc4f493          	andi	s1,s1,-4
   10e18:	7ff48793          	addi	a5,s1,2047
   10e1c:	7e078793          	addi	a5,a5,2016
   10e20:	40878433          	sub	s0,a5,s0
   10e24:	00c45413          	srli	s0,s0,0xc
   10e28:	fff40413          	addi	s0,s0,-1
   10e2c:	00c41413          	slli	s0,s0,0xc
   10e30:	00e44e63          	blt	s0,a4,10e4c <_malloc_trim_r+0x70>
   10e34:	00000593          	li	a1,0
   10e38:	00098513          	mv	a0,s3
   10e3c:	114010ef          	jal	11f50 <_sbrk_r>
   10e40:	01093783          	ld	a5,16(s2)
   10e44:	009787b3          	add	a5,a5,s1
   10e48:	02f50663          	beq	a0,a5,10e74 <_malloc_trim_r+0x98>
   10e4c:	00098513          	mv	a0,s3
   10e50:	49d000ef          	jal	11aec <__malloc_unlock>
   10e54:	02813083          	ld	ra,40(sp)
   10e58:	02013403          	ld	s0,32(sp)
   10e5c:	01813483          	ld	s1,24(sp)
   10e60:	01013903          	ld	s2,16(sp)
   10e64:	00813983          	ld	s3,8(sp)
   10e68:	00000513          	li	a0,0
   10e6c:	03010113          	addi	sp,sp,48
   10e70:	00008067          	ret
   10e74:	408005b3          	neg	a1,s0
   10e78:	00098513          	mv	a0,s3
   10e7c:	0d4010ef          	jal	11f50 <_sbrk_r>
   10e80:	fff00793          	li	a5,-1
   10e84:	04f50463          	beq	a0,a5,10ecc <_malloc_trim_r+0xf0>
   10e88:	01093683          	ld	a3,16(s2)
   10e8c:	4481a783          	lw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10e90:	408484b3          	sub	s1,s1,s0
   10e94:	0014e493          	ori	s1,s1,1
   10e98:	00098513          	mv	a0,s3
   10e9c:	408787bb          	subw	a5,a5,s0
   10ea0:	0096b423          	sd	s1,8(a3)
   10ea4:	44f1a423          	sw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10ea8:	445000ef          	jal	11aec <__malloc_unlock>
   10eac:	02813083          	ld	ra,40(sp)
   10eb0:	02013403          	ld	s0,32(sp)
   10eb4:	01813483          	ld	s1,24(sp)
   10eb8:	01013903          	ld	s2,16(sp)
   10ebc:	00813983          	ld	s3,8(sp)
   10ec0:	00100513          	li	a0,1
   10ec4:	03010113          	addi	sp,sp,48
   10ec8:	00008067          	ret
   10ecc:	00000593          	li	a1,0
   10ed0:	00098513          	mv	a0,s3
   10ed4:	07c010ef          	jal	11f50 <_sbrk_r>
   10ed8:	01093703          	ld	a4,16(s2)
   10edc:	01f00693          	li	a3,31
   10ee0:	40e507b3          	sub	a5,a0,a4
   10ee4:	f6f6d4e3          	bge	a3,a5,10e4c <_malloc_trim_r+0x70>
   10ee8:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   10eec:	0017e793          	ori	a5,a5,1
   10ef0:	40c50533          	sub	a0,a0,a2
   10ef4:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10ef8:	44a1a423          	sw	a0,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10efc:	f51ff06f          	j	10e4c <_malloc_trim_r+0x70>

0000000000010f00 <_free_r>:
   10f00:	12058863          	beqz	a1,11030 <_free_r+0x130>
   10f04:	fe010113          	addi	sp,sp,-32
   10f08:	00813823          	sd	s0,16(sp)
   10f0c:	00b13423          	sd	a1,8(sp)
   10f10:	00050413          	mv	s0,a0
   10f14:	00113c23          	sd	ra,24(sp)
   10f18:	3d1000ef          	jal	11ae8 <__malloc_lock>
   10f1c:	00813583          	ld	a1,8(sp)
   10f20:	00013837          	lui	a6,0x13
   10f24:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   10f28:	ff85b503          	ld	a0,-8(a1)
   10f2c:	ff058713          	addi	a4,a1,-16
   10f30:	01083883          	ld	a7,16(a6)
   10f34:	ffe57793          	andi	a5,a0,-2
   10f38:	00f70633          	add	a2,a4,a5
   10f3c:	00863683          	ld	a3,8(a2)
   10f40:	00157313          	andi	t1,a0,1
   10f44:	ffc6f693          	andi	a3,a3,-4
   10f48:	18c88e63          	beq	a7,a2,110e4 <_free_r+0x1e4>
   10f4c:	00d63423          	sd	a3,8(a2)
   10f50:	00d608b3          	add	a7,a2,a3
   10f54:	0088b883          	ld	a7,8(a7)
   10f58:	0018f893          	andi	a7,a7,1
   10f5c:	08031e63          	bnez	t1,10ff8 <_free_r+0xf8>
   10f60:	ff05b303          	ld	t1,-16(a1)
   10f64:	000135b7          	lui	a1,0x13
   10f68:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   10f6c:	40670733          	sub	a4,a4,t1
   10f70:	01073503          	ld	a0,16(a4)
   10f74:	006787b3          	add	a5,a5,t1
   10f78:	14b50063          	beq	a0,a1,110b8 <_free_r+0x1b8>
   10f7c:	01873303          	ld	t1,24(a4)
   10f80:	00653c23          	sd	t1,24(a0)
   10f84:	00a33823          	sd	a0,16(t1) # 10220 <fuction+0x4>
   10f88:	1a088263          	beqz	a7,1112c <_free_r+0x22c>
   10f8c:	0017e693          	ori	a3,a5,1
   10f90:	00d73423          	sd	a3,8(a4)
   10f94:	00f63023          	sd	a5,0(a2)
   10f98:	1ff00693          	li	a3,511
   10f9c:	0af6e663          	bltu	a3,a5,11048 <_free_r+0x148>
   10fa0:	0037d793          	srli	a5,a5,0x3
   10fa4:	00179693          	slli	a3,a5,0x1
   10fa8:	0026869b          	addiw	a3,a3,2
   10fac:	00369693          	slli	a3,a3,0x3
   10fb0:	00883503          	ld	a0,8(a6)
   10fb4:	00d806b3          	add	a3,a6,a3
   10fb8:	0006b583          	ld	a1,0(a3)
   10fbc:	4027d61b          	sraiw	a2,a5,0x2
   10fc0:	00100793          	li	a5,1
   10fc4:	00c797b3          	sll	a5,a5,a2
   10fc8:	00a7e7b3          	or	a5,a5,a0
   10fcc:	ff068613          	addi	a2,a3,-16
   10fd0:	00b73823          	sd	a1,16(a4)
   10fd4:	00c73c23          	sd	a2,24(a4)
   10fd8:	00f83423          	sd	a5,8(a6)
   10fdc:	00e6b023          	sd	a4,0(a3)
   10fe0:	00e5bc23          	sd	a4,24(a1)
   10fe4:	00040513          	mv	a0,s0
   10fe8:	01013403          	ld	s0,16(sp)
   10fec:	01813083          	ld	ra,24(sp)
   10ff0:	02010113          	addi	sp,sp,32
   10ff4:	2f90006f          	j	11aec <__malloc_unlock>
   10ff8:	02089e63          	bnez	a7,11034 <_free_r+0x134>
   10ffc:	000135b7          	lui	a1,0x13
   11000:	00d787b3          	add	a5,a5,a3
   11004:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   11008:	01063683          	ld	a3,16(a2)
   1100c:	0017e893          	ori	a7,a5,1
   11010:	00f70533          	add	a0,a4,a5
   11014:	16b68663          	beq	a3,a1,11180 <_free_r+0x280>
   11018:	01863603          	ld	a2,24(a2)
   1101c:	00c6bc23          	sd	a2,24(a3)
   11020:	00d63823          	sd	a3,16(a2)
   11024:	01173423          	sd	a7,8(a4)
   11028:	00f53023          	sd	a5,0(a0)
   1102c:	f6dff06f          	j	10f98 <_free_r+0x98>
   11030:	00008067          	ret
   11034:	00156513          	ori	a0,a0,1
   11038:	fea5bc23          	sd	a0,-8(a1)
   1103c:	00f63023          	sd	a5,0(a2)
   11040:	1ff00693          	li	a3,511
   11044:	f4f6fee3          	bgeu	a3,a5,10fa0 <_free_r+0xa0>
   11048:	0097d693          	srli	a3,a5,0x9
   1104c:	00400613          	li	a2,4
   11050:	0ed66263          	bltu	a2,a3,11134 <_free_r+0x234>
   11054:	0067d693          	srli	a3,a5,0x6
   11058:	00169593          	slli	a1,a3,0x1
   1105c:	0725859b          	addiw	a1,a1,114
   11060:	00359593          	slli	a1,a1,0x3
   11064:	0386861b          	addiw	a2,a3,56
   11068:	00b805b3          	add	a1,a6,a1
   1106c:	0005b683          	ld	a3,0(a1)
   11070:	ff058593          	addi	a1,a1,-16
   11074:	00d59863          	bne	a1,a3,11084 <_free_r+0x184>
   11078:	1240006f          	j	1119c <_free_r+0x29c>
   1107c:	0106b683          	ld	a3,16(a3)
   11080:	00d58863          	beq	a1,a3,11090 <_free_r+0x190>
   11084:	0086b603          	ld	a2,8(a3)
   11088:	ffc67613          	andi	a2,a2,-4
   1108c:	fec7e8e3          	bltu	a5,a2,1107c <_free_r+0x17c>
   11090:	0186b583          	ld	a1,24(a3)
   11094:	00b73c23          	sd	a1,24(a4)
   11098:	00d73823          	sd	a3,16(a4)
   1109c:	00040513          	mv	a0,s0
   110a0:	01013403          	ld	s0,16(sp)
   110a4:	01813083          	ld	ra,24(sp)
   110a8:	00e5b823          	sd	a4,16(a1)
   110ac:	00e6bc23          	sd	a4,24(a3)
   110b0:	02010113          	addi	sp,sp,32
   110b4:	2390006f          	j	11aec <__malloc_unlock>
   110b8:	0a089263          	bnez	a7,1115c <_free_r+0x25c>
   110bc:	01863583          	ld	a1,24(a2)
   110c0:	01063603          	ld	a2,16(a2)
   110c4:	00f686b3          	add	a3,a3,a5
   110c8:	0016e793          	ori	a5,a3,1
   110cc:	00b63c23          	sd	a1,24(a2)
   110d0:	00c5b823          	sd	a2,16(a1)
   110d4:	00f73423          	sd	a5,8(a4)
   110d8:	00d70733          	add	a4,a4,a3
   110dc:	00d73023          	sd	a3,0(a4)
   110e0:	f05ff06f          	j	10fe4 <_free_r+0xe4>
   110e4:	00d786b3          	add	a3,a5,a3
   110e8:	02031063          	bnez	t1,11108 <_free_r+0x208>
   110ec:	ff05b783          	ld	a5,-16(a1)
   110f0:	40f70733          	sub	a4,a4,a5
   110f4:	01073603          	ld	a2,16(a4)
   110f8:	00f686b3          	add	a3,a3,a5
   110fc:	01873783          	ld	a5,24(a4)
   11100:	00f63c23          	sd	a5,24(a2)
   11104:	00c7b823          	sd	a2,16(a5)
   11108:	0016e613          	ori	a2,a3,1
   1110c:	1c01b783          	ld	a5,448(gp) # 139d8 <__malloc_trim_threshold>
   11110:	00c73423          	sd	a2,8(a4)
   11114:	00e83823          	sd	a4,16(a6)
   11118:	ecf6e6e3          	bltu	a3,a5,10fe4 <_free_r+0xe4>
   1111c:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   11120:	00040513          	mv	a0,s0
   11124:	cb9ff0ef          	jal	10ddc <_malloc_trim_r>
   11128:	ebdff06f          	j	10fe4 <_free_r+0xe4>
   1112c:	00d787b3          	add	a5,a5,a3
   11130:	ed9ff06f          	j	11008 <_free_r+0x108>
   11134:	01400613          	li	a2,20
   11138:	02d67a63          	bgeu	a2,a3,1116c <_free_r+0x26c>
   1113c:	05400613          	li	a2,84
   11140:	06d66c63          	bltu	a2,a3,111b8 <_free_r+0x2b8>
   11144:	00c7d693          	srli	a3,a5,0xc
   11148:	00169593          	slli	a1,a3,0x1
   1114c:	0de5859b          	addiw	a1,a1,222
   11150:	00359593          	slli	a1,a1,0x3
   11154:	06e6861b          	addiw	a2,a3,110
   11158:	f11ff06f          	j	11068 <_free_r+0x168>
   1115c:	0017e693          	ori	a3,a5,1
   11160:	00d73423          	sd	a3,8(a4)
   11164:	00f63023          	sd	a5,0(a2)
   11168:	e7dff06f          	j	10fe4 <_free_r+0xe4>
   1116c:	00169593          	slli	a1,a3,0x1
   11170:	0b85859b          	addiw	a1,a1,184
   11174:	00359593          	slli	a1,a1,0x3
   11178:	05b6861b          	addiw	a2,a3,91
   1117c:	eedff06f          	j	11068 <_free_r+0x168>
   11180:	02e83423          	sd	a4,40(a6)
   11184:	02e83023          	sd	a4,32(a6)
   11188:	00b73c23          	sd	a1,24(a4)
   1118c:	00b73823          	sd	a1,16(a4)
   11190:	01173423          	sd	a7,8(a4)
   11194:	00f53023          	sd	a5,0(a0)
   11198:	e4dff06f          	j	10fe4 <_free_r+0xe4>
   1119c:	00883503          	ld	a0,8(a6)
   111a0:	4026561b          	sraiw	a2,a2,0x2
   111a4:	00100793          	li	a5,1
   111a8:	00c797b3          	sll	a5,a5,a2
   111ac:	00a7e7b3          	or	a5,a5,a0
   111b0:	00f83423          	sd	a5,8(a6)
   111b4:	ee1ff06f          	j	11094 <_free_r+0x194>
   111b8:	15400613          	li	a2,340
   111bc:	00d66e63          	bltu	a2,a3,111d8 <_free_r+0x2d8>
   111c0:	00f7d693          	srli	a3,a5,0xf
   111c4:	00169593          	slli	a1,a3,0x1
   111c8:	0f05859b          	addiw	a1,a1,240
   111cc:	00359593          	slli	a1,a1,0x3
   111d0:	0776861b          	addiw	a2,a3,119
   111d4:	e95ff06f          	j	11068 <_free_r+0x168>
   111d8:	55400613          	li	a2,1364
   111dc:	00d66e63          	bltu	a2,a3,111f8 <_free_r+0x2f8>
   111e0:	0127d693          	srli	a3,a5,0x12
   111e4:	00169593          	slli	a1,a3,0x1
   111e8:	0fa5859b          	addiw	a1,a1,250
   111ec:	00359593          	slli	a1,a1,0x3
   111f0:	07c6861b          	addiw	a2,a3,124
   111f4:	e75ff06f          	j	11068 <_free_r+0x168>
   111f8:	7f000593          	li	a1,2032
   111fc:	07e00613          	li	a2,126
   11200:	e69ff06f          	j	11068 <_free_r+0x168>

0000000000011204 <_malloc_r>:
   11204:	fa010113          	addi	sp,sp,-96
   11208:	04813823          	sd	s0,80(sp)
   1120c:	04113c23          	sd	ra,88(sp)
   11210:	01758713          	addi	a4,a1,23
   11214:	02e00793          	li	a5,46
   11218:	00050413          	mv	s0,a0
   1121c:	08e7ee63          	bltu	a5,a4,112b8 <_malloc_r+0xb4>
   11220:	02000713          	li	a4,32
   11224:	06b76c63          	bltu	a4,a1,1129c <_malloc_r+0x98>
   11228:	0c1000ef          	jal	11ae8 <__malloc_lock>
   1122c:	02000713          	li	a4,32
   11230:	05000693          	li	a3,80
   11234:	00400893          	li	a7,4
   11238:	00013837          	lui	a6,0x13
   1123c:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   11240:	00d806b3          	add	a3,a6,a3
   11244:	0086b783          	ld	a5,8(a3)
   11248:	ff068613          	addi	a2,a3,-16
   1124c:	48c78063          	beq	a5,a2,116cc <_malloc_r+0x4c8>
   11250:	0087b703          	ld	a4,8(a5)
   11254:	0187b603          	ld	a2,24(a5)
   11258:	0107b583          	ld	a1,16(a5)
   1125c:	ffc77713          	andi	a4,a4,-4
   11260:	00e78733          	add	a4,a5,a4
   11264:	00873683          	ld	a3,8(a4)
   11268:	00c5bc23          	sd	a2,24(a1)
   1126c:	00b63823          	sd	a1,16(a2)
   11270:	0016e693          	ori	a3,a3,1
   11274:	00040513          	mv	a0,s0
   11278:	00d73423          	sd	a3,8(a4)
   1127c:	00f13423          	sd	a5,8(sp)
   11280:	06d000ef          	jal	11aec <__malloc_unlock>
   11284:	00813783          	ld	a5,8(sp)
   11288:	05813083          	ld	ra,88(sp)
   1128c:	05013403          	ld	s0,80(sp)
   11290:	01078513          	addi	a0,a5,16
   11294:	06010113          	addi	sp,sp,96
   11298:	00008067          	ret
   1129c:	00c00793          	li	a5,12
   112a0:	00f42023          	sw	a5,0(s0)
   112a4:	00000513          	li	a0,0
   112a8:	05813083          	ld	ra,88(sp)
   112ac:	05013403          	ld	s0,80(sp)
   112b0:	06010113          	addi	sp,sp,96
   112b4:	00008067          	ret
   112b8:	00100793          	li	a5,1
   112bc:	ff077713          	andi	a4,a4,-16
   112c0:	01f79793          	slli	a5,a5,0x1f
   112c4:	fcf77ce3          	bgeu	a4,a5,1129c <_malloc_r+0x98>
   112c8:	fcb76ae3          	bltu	a4,a1,1129c <_malloc_r+0x98>
   112cc:	00e13423          	sd	a4,8(sp)
   112d0:	019000ef          	jal	11ae8 <__malloc_lock>
   112d4:	00813703          	ld	a4,8(sp)
   112d8:	1f700793          	li	a5,503
   112dc:	4ee7fa63          	bgeu	a5,a4,117d0 <_malloc_r+0x5cc>
   112e0:	00975793          	srli	a5,a4,0x9
   112e4:	18078a63          	beqz	a5,11478 <_malloc_r+0x274>
   112e8:	00400693          	li	a3,4
   112ec:	44f6ea63          	bltu	a3,a5,11740 <_malloc_r+0x53c>
   112f0:	00675793          	srli	a5,a4,0x6
   112f4:	0397889b          	addiw	a7,a5,57
   112f8:	0018951b          	slliw	a0,a7,0x1
   112fc:	03878e1b          	addiw	t3,a5,56
   11300:	00351513          	slli	a0,a0,0x3
   11304:	00013837          	lui	a6,0x13
   11308:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   1130c:	00a80533          	add	a0,a6,a0
   11310:	00853783          	ld	a5,8(a0)
   11314:	ff050513          	addi	a0,a0,-16
   11318:	02f50863          	beq	a0,a5,11348 <_malloc_r+0x144>
   1131c:	01f00313          	li	t1,31
   11320:	0140006f          	j	11334 <_malloc_r+0x130>
   11324:	0187b583          	ld	a1,24(a5)
   11328:	36065263          	bgez	a2,1168c <_malloc_r+0x488>
   1132c:	00b50e63          	beq	a0,a1,11348 <_malloc_r+0x144>
   11330:	00058793          	mv	a5,a1
   11334:	0087b683          	ld	a3,8(a5)
   11338:	ffc6f693          	andi	a3,a3,-4
   1133c:	40e68633          	sub	a2,a3,a4
   11340:	fec352e3          	bge	t1,a2,11324 <_malloc_r+0x120>
   11344:	000e0893          	mv	a7,t3
   11348:	02083783          	ld	a5,32(a6)
   1134c:	00013e37          	lui	t3,0x13
   11350:	1c0e0e13          	addi	t3,t3,448 # 131c0 <__malloc_av_+0x10>
   11354:	2fc78a63          	beq	a5,t3,11648 <_malloc_r+0x444>
   11358:	0087b303          	ld	t1,8(a5)
   1135c:	01f00613          	li	a2,31
   11360:	ffc37313          	andi	t1,t1,-4
   11364:	40e306b3          	sub	a3,t1,a4
   11368:	4ad64463          	blt	a2,a3,11810 <_malloc_r+0x60c>
   1136c:	03c83423          	sd	t3,40(a6)
   11370:	03c83023          	sd	t3,32(a6)
   11374:	4606da63          	bgez	a3,117e8 <_malloc_r+0x5e4>
   11378:	1ff00693          	li	a3,511
   1137c:	00883583          	ld	a1,8(a6)
   11380:	3466ee63          	bltu	a3,t1,116dc <_malloc_r+0x4d8>
   11384:	00335313          	srli	t1,t1,0x3
   11388:	00131693          	slli	a3,t1,0x1
   1138c:	0026869b          	addiw	a3,a3,2
   11390:	00369693          	slli	a3,a3,0x3
   11394:	00d806b3          	add	a3,a6,a3
   11398:	0006b503          	ld	a0,0(a3)
   1139c:	4023531b          	sraiw	t1,t1,0x2
   113a0:	00100613          	li	a2,1
   113a4:	00661633          	sll	a2,a2,t1
   113a8:	00c5e5b3          	or	a1,a1,a2
   113ac:	ff068613          	addi	a2,a3,-16
   113b0:	00a7b823          	sd	a0,16(a5)
   113b4:	00c7bc23          	sd	a2,24(a5)
   113b8:	00b83423          	sd	a1,8(a6)
   113bc:	00f6b023          	sd	a5,0(a3)
   113c0:	00f53c23          	sd	a5,24(a0)
   113c4:	4028d79b          	sraiw	a5,a7,0x2
   113c8:	00100513          	li	a0,1
   113cc:	00f51533          	sll	a0,a0,a5
   113d0:	0aa5ec63          	bltu	a1,a0,11488 <_malloc_r+0x284>
   113d4:	00b577b3          	and	a5,a0,a1
   113d8:	02079463          	bnez	a5,11400 <_malloc_r+0x1fc>
   113dc:	00151513          	slli	a0,a0,0x1
   113e0:	ffc8f893          	andi	a7,a7,-4
   113e4:	00b577b3          	and	a5,a0,a1
   113e8:	0048889b          	addiw	a7,a7,4
   113ec:	00079a63          	bnez	a5,11400 <_malloc_r+0x1fc>
   113f0:	00151513          	slli	a0,a0,0x1
   113f4:	00b577b3          	and	a5,a0,a1
   113f8:	0048889b          	addiw	a7,a7,4
   113fc:	fe078ae3          	beqz	a5,113f0 <_malloc_r+0x1ec>
   11400:	01f00e93          	li	t4,31
   11404:	00189f13          	slli	t5,a7,0x1
   11408:	002f0f1b          	addiw	t5,t5,2
   1140c:	003f1f13          	slli	t5,t5,0x3
   11410:	ff0f0f13          	addi	t5,t5,-16
   11414:	01e80f33          	add	t5,a6,t5
   11418:	000f0313          	mv	t1,t5
   1141c:	01833683          	ld	a3,24(t1)
   11420:	00088f93          	mv	t6,a7
   11424:	34d30263          	beq	t1,a3,11768 <_malloc_r+0x564>
   11428:	0086b603          	ld	a2,8(a3)
   1142c:	00068793          	mv	a5,a3
   11430:	0186b683          	ld	a3,24(a3)
   11434:	ffc67613          	andi	a2,a2,-4
   11438:	40e605b3          	sub	a1,a2,a4
   1143c:	34bec263          	blt	t4,a1,11780 <_malloc_r+0x57c>
   11440:	fe05c2e3          	bltz	a1,11424 <_malloc_r+0x220>
   11444:	00c78633          	add	a2,a5,a2
   11448:	00863703          	ld	a4,8(a2)
   1144c:	0107b583          	ld	a1,16(a5)
   11450:	00040513          	mv	a0,s0
   11454:	00176713          	ori	a4,a4,1
   11458:	00e63423          	sd	a4,8(a2)
   1145c:	00d5bc23          	sd	a3,24(a1)
   11460:	00b6b823          	sd	a1,16(a3)
   11464:	00f13423          	sd	a5,8(sp)
   11468:	684000ef          	jal	11aec <__malloc_unlock>
   1146c:	00813783          	ld	a5,8(sp)
   11470:	01078513          	addi	a0,a5,16
   11474:	e35ff06f          	j	112a8 <_malloc_r+0xa4>
   11478:	40000513          	li	a0,1024
   1147c:	04000893          	li	a7,64
   11480:	03f00e13          	li	t3,63
   11484:	e81ff06f          	j	11304 <_malloc_r+0x100>
   11488:	01083783          	ld	a5,16(a6)
   1148c:	0087b683          	ld	a3,8(a5)
   11490:	ffc6f893          	andi	a7,a3,-4
   11494:	40e88633          	sub	a2,a7,a4
   11498:	00e8e663          	bltu	a7,a4,114a4 <_malloc_r+0x2a0>
   1149c:	02062693          	slti	a3,a2,32
   114a0:	1a068863          	beqz	a3,11650 <_malloc_r+0x44c>
   114a4:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   114a8:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   114ac:	fff00693          	li	a3,-1
   114b0:	00b705b3          	add	a1,a4,a1
   114b4:	44d60663          	beq	a2,a3,11900 <_malloc_r+0x6fc>
   114b8:	000016b7          	lui	a3,0x1
   114bc:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   114c0:	00d585b3          	add	a1,a1,a3
   114c4:	fffff6b7          	lui	a3,0xfffff
   114c8:	00d5f5b3          	and	a1,a1,a3
   114cc:	00040513          	mv	a0,s0
   114d0:	03013423          	sd	a6,40(sp)
   114d4:	02f13023          	sd	a5,32(sp)
   114d8:	00e13c23          	sd	a4,24(sp)
   114dc:	01113823          	sd	a7,16(sp)
   114e0:	00b13423          	sd	a1,8(sp)
   114e4:	26d000ef          	jal	11f50 <_sbrk_r>
   114e8:	fff00693          	li	a3,-1
   114ec:	00813583          	ld	a1,8(sp)
   114f0:	01013883          	ld	a7,16(sp)
   114f4:	01813703          	ld	a4,24(sp)
   114f8:	02013783          	ld	a5,32(sp)
   114fc:	02813803          	ld	a6,40(sp)
   11500:	00050313          	mv	t1,a0
   11504:	36d50663          	beq	a0,a3,11870 <_malloc_r+0x66c>
   11508:	011786b3          	add	a3,a5,a7
   1150c:	36d56063          	bltu	a0,a3,1186c <_malloc_r+0x668>
   11510:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   11514:	000e2603          	lw	a2,0(t3)
   11518:	00b6063b          	addw	a2,a2,a1
   1151c:	00ce2023          	sw	a2,0(t3)
   11520:	00060513          	mv	a0,a2
   11524:	4a668c63          	beq	a3,t1,119dc <_malloc_r+0x7d8>
   11528:	1b81bf03          	ld	t5,440(gp) # 139d0 <__malloc_sbrk_base>
   1152c:	fff00613          	li	a2,-1
   11530:	4ccf0463          	beq	t5,a2,119f8 <_malloc_r+0x7f4>
   11534:	40d306b3          	sub	a3,t1,a3
   11538:	00a686bb          	addw	a3,a3,a0
   1153c:	00de2023          	sw	a3,0(t3)
   11540:	00f37e93          	andi	t4,t1,15
   11544:	3c0e8e63          	beqz	t4,11920 <_malloc_r+0x71c>
   11548:	ff037313          	andi	t1,t1,-16
   1154c:	000016b7          	lui	a3,0x1
   11550:	01030313          	addi	t1,t1,16
   11554:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11558:	00b30633          	add	a2,t1,a1
   1155c:	41d685b3          	sub	a1,a3,t4
   11560:	40c585b3          	sub	a1,a1,a2
   11564:	03459593          	slli	a1,a1,0x34
   11568:	0345d593          	srli	a1,a1,0x34
   1156c:	00040513          	mv	a0,s0
   11570:	05c13023          	sd	t3,64(sp)
   11574:	03013c23          	sd	a6,56(sp)
   11578:	02f13823          	sd	a5,48(sp)
   1157c:	02e13423          	sd	a4,40(sp)
   11580:	03113023          	sd	a7,32(sp)
   11584:	00613c23          	sd	t1,24(sp)
   11588:	01d13823          	sd	t4,16(sp)
   1158c:	00c13423          	sd	a2,8(sp)
   11590:	04b13423          	sd	a1,72(sp)
   11594:	1bd000ef          	jal	11f50 <_sbrk_r>
   11598:	00050693          	mv	a3,a0
   1159c:	fff00513          	li	a0,-1
   115a0:	00813603          	ld	a2,8(sp)
   115a4:	01013e83          	ld	t4,16(sp)
   115a8:	01813303          	ld	t1,24(sp)
   115ac:	02013883          	ld	a7,32(sp)
   115b0:	02813703          	ld	a4,40(sp)
   115b4:	03013783          	ld	a5,48(sp)
   115b8:	03813803          	ld	a6,56(sp)
   115bc:	04013e03          	ld	t3,64(sp)
   115c0:	48a68663          	beq	a3,a0,11a4c <_malloc_r+0x848>
   115c4:	04813583          	ld	a1,72(sp)
   115c8:	0005851b          	sext.w	a0,a1
   115cc:	000e2603          	lw	a2,0(t3)
   115d0:	406686b3          	sub	a3,a3,t1
   115d4:	00b686b3          	add	a3,a3,a1
   115d8:	0016e693          	ori	a3,a3,1
   115dc:	00683823          	sd	t1,16(a6)
   115e0:	00a6063b          	addw	a2,a2,a0
   115e4:	00d33423          	sd	a3,8(t1)
   115e8:	00ce2023          	sw	a2,0(t3)
   115ec:	03078e63          	beq	a5,a6,11628 <_malloc_r+0x424>
   115f0:	01f00513          	li	a0,31
   115f4:	41157663          	bgeu	a0,a7,11a00 <_malloc_r+0x7fc>
   115f8:	0087b583          	ld	a1,8(a5)
   115fc:	fe888693          	addi	a3,a7,-24
   11600:	ff06f693          	andi	a3,a3,-16
   11604:	0015f593          	andi	a1,a1,1
   11608:	00d5e5b3          	or	a1,a1,a3
   1160c:	00b7b423          	sd	a1,8(a5)
   11610:	00900893          	li	a7,9
   11614:	00d785b3          	add	a1,a5,a3
   11618:	0115b423          	sd	a7,8(a1)
   1161c:	0115b823          	sd	a7,16(a1)
   11620:	44d56863          	bltu	a0,a3,11a70 <_malloc_r+0x86c>
   11624:	00833683          	ld	a3,8(t1)
   11628:	1e81b583          	ld	a1,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   1162c:	00c5f463          	bgeu	a1,a2,11634 <_malloc_r+0x430>
   11630:	1ec1b423          	sd	a2,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   11634:	1e01b583          	ld	a1,480(gp) # 139f8 <__malloc_max_total_mem>
   11638:	00c5f463          	bgeu	a1,a2,11640 <_malloc_r+0x43c>
   1163c:	1ec1b023          	sd	a2,480(gp) # 139f8 <__malloc_max_total_mem>
   11640:	00030793          	mv	a5,t1
   11644:	2340006f          	j	11878 <_malloc_r+0x674>
   11648:	00883583          	ld	a1,8(a6)
   1164c:	d79ff06f          	j	113c4 <_malloc_r+0x1c0>
   11650:	00176693          	ori	a3,a4,1
   11654:	00d7b423          	sd	a3,8(a5)
   11658:	00e78733          	add	a4,a5,a4
   1165c:	00166613          	ori	a2,a2,1
   11660:	00e83823          	sd	a4,16(a6)
   11664:	00040513          	mv	a0,s0
   11668:	00c73423          	sd	a2,8(a4)
   1166c:	00f13423          	sd	a5,8(sp)
   11670:	47c000ef          	jal	11aec <__malloc_unlock>
   11674:	00813783          	ld	a5,8(sp)
   11678:	05813083          	ld	ra,88(sp)
   1167c:	05013403          	ld	s0,80(sp)
   11680:	01078513          	addi	a0,a5,16
   11684:	06010113          	addi	sp,sp,96
   11688:	00008067          	ret
   1168c:	0107b603          	ld	a2,16(a5)
   11690:	00d786b3          	add	a3,a5,a3
   11694:	0086b703          	ld	a4,8(a3)
   11698:	00b63c23          	sd	a1,24(a2)
   1169c:	00c5b823          	sd	a2,16(a1)
   116a0:	00176713          	ori	a4,a4,1
   116a4:	00040513          	mv	a0,s0
   116a8:	00e6b423          	sd	a4,8(a3)
   116ac:	00f13423          	sd	a5,8(sp)
   116b0:	43c000ef          	jal	11aec <__malloc_unlock>
   116b4:	00813783          	ld	a5,8(sp)
   116b8:	05813083          	ld	ra,88(sp)
   116bc:	05013403          	ld	s0,80(sp)
   116c0:	01078513          	addi	a0,a5,16
   116c4:	06010113          	addi	sp,sp,96
   116c8:	00008067          	ret
   116cc:	0186b783          	ld	a5,24(a3)
   116d0:	0028889b          	addiw	a7,a7,2
   116d4:	c6f68ae3          	beq	a3,a5,11348 <_malloc_r+0x144>
   116d8:	b79ff06f          	j	11250 <_malloc_r+0x4c>
   116dc:	00935693          	srli	a3,t1,0x9
   116e0:	00400613          	li	a2,4
   116e4:	16d67863          	bgeu	a2,a3,11854 <_malloc_r+0x650>
   116e8:	01400613          	li	a2,20
   116ec:	28d66e63          	bltu	a2,a3,11988 <_malloc_r+0x784>
   116f0:	00169513          	slli	a0,a3,0x1
   116f4:	0b85051b          	addiw	a0,a0,184
   116f8:	00351513          	slli	a0,a0,0x3
   116fc:	05b6861b          	addiw	a2,a3,91
   11700:	00a80533          	add	a0,a6,a0
   11704:	00053683          	ld	a3,0(a0)
   11708:	ff050513          	addi	a0,a0,-16
   1170c:	00d51863          	bne	a0,a3,1171c <_malloc_r+0x518>
   11710:	1f80006f          	j	11908 <_malloc_r+0x704>
   11714:	0106b683          	ld	a3,16(a3)
   11718:	00d50863          	beq	a0,a3,11728 <_malloc_r+0x524>
   1171c:	0086b603          	ld	a2,8(a3)
   11720:	ffc67613          	andi	a2,a2,-4
   11724:	fec368e3          	bltu	t1,a2,11714 <_malloc_r+0x510>
   11728:	0186b503          	ld	a0,24(a3)
   1172c:	00a7bc23          	sd	a0,24(a5)
   11730:	00d7b823          	sd	a3,16(a5)
   11734:	00f53823          	sd	a5,16(a0)
   11738:	00f6bc23          	sd	a5,24(a3)
   1173c:	c89ff06f          	j	113c4 <_malloc_r+0x1c0>
   11740:	01400693          	li	a3,20
   11744:	14f6fa63          	bgeu	a3,a5,11898 <_malloc_r+0x694>
   11748:	05400693          	li	a3,84
   1174c:	24f6ee63          	bltu	a3,a5,119a8 <_malloc_r+0x7a4>
   11750:	00c75793          	srli	a5,a4,0xc
   11754:	06f7889b          	addiw	a7,a5,111
   11758:	0018951b          	slliw	a0,a7,0x1
   1175c:	06e78e1b          	addiw	t3,a5,110
   11760:	00351513          	slli	a0,a0,0x3
   11764:	ba1ff06f          	j	11304 <_malloc_r+0x100>
   11768:	001f8f9b          	addiw	t6,t6,1
   1176c:	003ff793          	andi	a5,t6,3
   11770:	01030313          	addi	t1,t1,16
   11774:	14078263          	beqz	a5,118b8 <_malloc_r+0x6b4>
   11778:	01833683          	ld	a3,24(t1)
   1177c:	ca9ff06f          	j	11424 <_malloc_r+0x220>
   11780:	0107b503          	ld	a0,16(a5)
   11784:	00176893          	ori	a7,a4,1
   11788:	0117b423          	sd	a7,8(a5)
   1178c:	00d53c23          	sd	a3,24(a0)
   11790:	00a6b823          	sd	a0,16(a3)
   11794:	00e78733          	add	a4,a5,a4
   11798:	02e83423          	sd	a4,40(a6)
   1179c:	02e83023          	sd	a4,32(a6)
   117a0:	0015e693          	ori	a3,a1,1
   117a4:	00c78633          	add	a2,a5,a2
   117a8:	01c73c23          	sd	t3,24(a4)
   117ac:	01c73823          	sd	t3,16(a4)
   117b0:	00d73423          	sd	a3,8(a4)
   117b4:	00040513          	mv	a0,s0
   117b8:	00b63023          	sd	a1,0(a2)
   117bc:	00f13423          	sd	a5,8(sp)
   117c0:	32c000ef          	jal	11aec <__malloc_unlock>
   117c4:	00813783          	ld	a5,8(sp)
   117c8:	01078513          	addi	a0,a5,16
   117cc:	addff06f          	j	112a8 <_malloc_r+0xa4>
   117d0:	00375893          	srli	a7,a4,0x3
   117d4:	00189693          	slli	a3,a7,0x1
   117d8:	0026869b          	addiw	a3,a3,2
   117dc:	00369693          	slli	a3,a3,0x3
   117e0:	0008889b          	sext.w	a7,a7
   117e4:	a55ff06f          	j	11238 <_malloc_r+0x34>
   117e8:	00678333          	add	t1,a5,t1
   117ec:	00833703          	ld	a4,8(t1)
   117f0:	00040513          	mv	a0,s0
   117f4:	00f13423          	sd	a5,8(sp)
   117f8:	00176713          	ori	a4,a4,1
   117fc:	00e33423          	sd	a4,8(t1)
   11800:	2ec000ef          	jal	11aec <__malloc_unlock>
   11804:	00813783          	ld	a5,8(sp)
   11808:	01078513          	addi	a0,a5,16
   1180c:	a9dff06f          	j	112a8 <_malloc_r+0xa4>
   11810:	00176613          	ori	a2,a4,1
   11814:	00c7b423          	sd	a2,8(a5)
   11818:	00e78733          	add	a4,a5,a4
   1181c:	02e83423          	sd	a4,40(a6)
   11820:	02e83023          	sd	a4,32(a6)
   11824:	0016e613          	ori	a2,a3,1
   11828:	00678333          	add	t1,a5,t1
   1182c:	01c73c23          	sd	t3,24(a4)
   11830:	01c73823          	sd	t3,16(a4)
   11834:	00c73423          	sd	a2,8(a4)
   11838:	00040513          	mv	a0,s0
   1183c:	00d33023          	sd	a3,0(t1)
   11840:	00f13423          	sd	a5,8(sp)
   11844:	2a8000ef          	jal	11aec <__malloc_unlock>
   11848:	00813783          	ld	a5,8(sp)
   1184c:	01078513          	addi	a0,a5,16
   11850:	a59ff06f          	j	112a8 <_malloc_r+0xa4>
   11854:	00635693          	srli	a3,t1,0x6
   11858:	00169513          	slli	a0,a3,0x1
   1185c:	0725051b          	addiw	a0,a0,114
   11860:	00351513          	slli	a0,a0,0x3
   11864:	0386861b          	addiw	a2,a3,56
   11868:	e99ff06f          	j	11700 <_malloc_r+0x4fc>
   1186c:	15078e63          	beq	a5,a6,119c8 <_malloc_r+0x7c4>
   11870:	01083783          	ld	a5,16(a6)
   11874:	0087b683          	ld	a3,8(a5)
   11878:	ffc6f693          	andi	a3,a3,-4
   1187c:	40e68633          	sub	a2,a3,a4
   11880:	00e6e663          	bltu	a3,a4,1188c <_malloc_r+0x688>
   11884:	02062693          	slti	a3,a2,32
   11888:	dc0684e3          	beqz	a3,11650 <_malloc_r+0x44c>
   1188c:	00040513          	mv	a0,s0
   11890:	25c000ef          	jal	11aec <__malloc_unlock>
   11894:	a11ff06f          	j	112a4 <_malloc_r+0xa0>
   11898:	05c7889b          	addiw	a7,a5,92
   1189c:	0018951b          	slliw	a0,a7,0x1
   118a0:	05b78e1b          	addiw	t3,a5,91
   118a4:	00351513          	slli	a0,a0,0x3
   118a8:	a5dff06f          	j	11304 <_malloc_r+0x100>
   118ac:	010f3783          	ld	a5,16(t5)
   118b0:	fff8889b          	addiw	a7,a7,-1
   118b4:	23e79663          	bne	a5,t5,11ae0 <_malloc_r+0x8dc>
   118b8:	0038f793          	andi	a5,a7,3
   118bc:	ff0f0f13          	addi	t5,t5,-16
   118c0:	fe0796e3          	bnez	a5,118ac <_malloc_r+0x6a8>
   118c4:	00883683          	ld	a3,8(a6)
   118c8:	fff54793          	not	a5,a0
   118cc:	00d7f7b3          	and	a5,a5,a3
   118d0:	00f83423          	sd	a5,8(a6)
   118d4:	00151513          	slli	a0,a0,0x1
   118d8:	fff50693          	addi	a3,a0,-1
   118dc:	baf6f6e3          	bgeu	a3,a5,11488 <_malloc_r+0x284>
   118e0:	00f576b3          	and	a3,a0,a5
   118e4:	00069a63          	bnez	a3,118f8 <_malloc_r+0x6f4>
   118e8:	00151513          	slli	a0,a0,0x1
   118ec:	00f576b3          	and	a3,a0,a5
   118f0:	004f8f9b          	addiw	t6,t6,4
   118f4:	fe068ae3          	beqz	a3,118e8 <_malloc_r+0x6e4>
   118f8:	000f8893          	mv	a7,t6
   118fc:	b09ff06f          	j	11404 <_malloc_r+0x200>
   11900:	02058593          	addi	a1,a1,32
   11904:	bc9ff06f          	j	114cc <_malloc_r+0x2c8>
   11908:	4026561b          	sraiw	a2,a2,0x2
   1190c:	00100313          	li	t1,1
   11910:	00c31633          	sll	a2,t1,a2
   11914:	00c5e5b3          	or	a1,a1,a2
   11918:	00b83423          	sd	a1,8(a6)
   1191c:	e11ff06f          	j	1172c <_malloc_r+0x528>
   11920:	00b30633          	add	a2,t1,a1
   11924:	40c005b3          	neg	a1,a2
   11928:	03459593          	slli	a1,a1,0x34
   1192c:	0345d593          	srli	a1,a1,0x34
   11930:	00040513          	mv	a0,s0
   11934:	03c13c23          	sd	t3,56(sp)
   11938:	03013823          	sd	a6,48(sp)
   1193c:	02f13423          	sd	a5,40(sp)
   11940:	02e13023          	sd	a4,32(sp)
   11944:	01113c23          	sd	a7,24(sp)
   11948:	00613823          	sd	t1,16(sp)
   1194c:	00c13423          	sd	a2,8(sp)
   11950:	04b13023          	sd	a1,64(sp)
   11954:	5fc000ef          	jal	11f50 <_sbrk_r>
   11958:	00050693          	mv	a3,a0
   1195c:	fff00513          	li	a0,-1
   11960:	01013303          	ld	t1,16(sp)
   11964:	01813883          	ld	a7,24(sp)
   11968:	02013703          	ld	a4,32(sp)
   1196c:	02813783          	ld	a5,40(sp)
   11970:	03013803          	ld	a6,48(sp)
   11974:	03813e03          	ld	t3,56(sp)
   11978:	0ea68463          	beq	a3,a0,11a60 <_malloc_r+0x85c>
   1197c:	04013583          	ld	a1,64(sp)
   11980:	0005851b          	sext.w	a0,a1
   11984:	c49ff06f          	j	115cc <_malloc_r+0x3c8>
   11988:	05400613          	li	a2,84
   1198c:	08d66063          	bltu	a2,a3,11a0c <_malloc_r+0x808>
   11990:	00c35693          	srli	a3,t1,0xc
   11994:	00169513          	slli	a0,a3,0x1
   11998:	0de5051b          	addiw	a0,a0,222
   1199c:	00351513          	slli	a0,a0,0x3
   119a0:	06e6861b          	addiw	a2,a3,110
   119a4:	d5dff06f          	j	11700 <_malloc_r+0x4fc>
   119a8:	15400693          	li	a3,340
   119ac:	08f6e063          	bltu	a3,a5,11a2c <_malloc_r+0x828>
   119b0:	00f75793          	srli	a5,a4,0xf
   119b4:	0787889b          	addiw	a7,a5,120
   119b8:	0018951b          	slliw	a0,a7,0x1
   119bc:	07778e1b          	addiw	t3,a5,119
   119c0:	00351513          	slli	a0,a0,0x3
   119c4:	941ff06f          	j	11304 <_malloc_r+0x100>
   119c8:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   119cc:	000e2503          	lw	a0,0(t3)
   119d0:	00b5053b          	addw	a0,a0,a1
   119d4:	00ae2023          	sw	a0,0(t3)
   119d8:	b51ff06f          	j	11528 <_malloc_r+0x324>
   119dc:	03431f13          	slli	t5,t1,0x34
   119e0:	b40f14e3          	bnez	t5,11528 <_malloc_r+0x324>
   119e4:	01083303          	ld	t1,16(a6)
   119e8:	00b885b3          	add	a1,a7,a1
   119ec:	0015e693          	ori	a3,a1,1
   119f0:	00d33423          	sd	a3,8(t1)
   119f4:	c35ff06f          	j	11628 <_malloc_r+0x424>
   119f8:	1a61bc23          	sd	t1,440(gp) # 139d0 <__malloc_sbrk_base>
   119fc:	b45ff06f          	j	11540 <_malloc_r+0x33c>
   11a00:	00100793          	li	a5,1
   11a04:	00f33423          	sd	a5,8(t1)
   11a08:	e85ff06f          	j	1188c <_malloc_r+0x688>
   11a0c:	15400613          	li	a2,340
   11a10:	08d66a63          	bltu	a2,a3,11aa4 <_malloc_r+0x8a0>
   11a14:	00f35693          	srli	a3,t1,0xf
   11a18:	00169513          	slli	a0,a3,0x1
   11a1c:	0f05051b          	addiw	a0,a0,240
   11a20:	00351513          	slli	a0,a0,0x3
   11a24:	0776861b          	addiw	a2,a3,119
   11a28:	cd9ff06f          	j	11700 <_malloc_r+0x4fc>
   11a2c:	55400693          	li	a3,1364
   11a30:	08f6ea63          	bltu	a3,a5,11ac4 <_malloc_r+0x8c0>
   11a34:	01275793          	srli	a5,a4,0x12
   11a38:	07d7889b          	addiw	a7,a5,125
   11a3c:	0018951b          	slliw	a0,a7,0x1
   11a40:	07c78e1b          	addiw	t3,a5,124
   11a44:	00351513          	slli	a0,a0,0x3
   11a48:	8bdff06f          	j	11304 <_malloc_r+0x100>
   11a4c:	ff0e8e93          	addi	t4,t4,-16
   11a50:	01d606b3          	add	a3,a2,t4
   11a54:	00000513          	li	a0,0
   11a58:	00000593          	li	a1,0
   11a5c:	b71ff06f          	j	115cc <_malloc_r+0x3c8>
   11a60:	00813683          	ld	a3,8(sp)
   11a64:	00000593          	li	a1,0
   11a68:	00000513          	li	a0,0
   11a6c:	b61ff06f          	j	115cc <_malloc_r+0x3c8>
   11a70:	01078593          	addi	a1,a5,16
   11a74:	00040513          	mv	a0,s0
   11a78:	01c13c23          	sd	t3,24(sp)
   11a7c:	01013823          	sd	a6,16(sp)
   11a80:	00e13423          	sd	a4,8(sp)
   11a84:	c7cff0ef          	jal	10f00 <_free_r>
   11a88:	01013803          	ld	a6,16(sp)
   11a8c:	01813e03          	ld	t3,24(sp)
   11a90:	00813703          	ld	a4,8(sp)
   11a94:	01083303          	ld	t1,16(a6)
   11a98:	000e2603          	lw	a2,0(t3)
   11a9c:	00833683          	ld	a3,8(t1)
   11aa0:	b89ff06f          	j	11628 <_malloc_r+0x424>
   11aa4:	55400613          	li	a2,1364
   11aa8:	02d66663          	bltu	a2,a3,11ad4 <_malloc_r+0x8d0>
   11aac:	01235693          	srli	a3,t1,0x12
   11ab0:	00169513          	slli	a0,a3,0x1
   11ab4:	0fa5051b          	addiw	a0,a0,250
   11ab8:	00351513          	slli	a0,a0,0x3
   11abc:	07c6861b          	addiw	a2,a3,124
   11ac0:	c41ff06f          	j	11700 <_malloc_r+0x4fc>
   11ac4:	7f000513          	li	a0,2032
   11ac8:	07f00893          	li	a7,127
   11acc:	07e00e13          	li	t3,126
   11ad0:	835ff06f          	j	11304 <_malloc_r+0x100>
   11ad4:	7f000513          	li	a0,2032
   11ad8:	07e00613          	li	a2,126
   11adc:	c25ff06f          	j	11700 <_malloc_r+0x4fc>
   11ae0:	00883783          	ld	a5,8(a6)
   11ae4:	df1ff06f          	j	118d4 <_malloc_r+0x6d0>

0000000000011ae8 <__malloc_lock>:
   11ae8:	00008067          	ret

0000000000011aec <__malloc_unlock>:
   11aec:	00008067          	ret

0000000000011af0 <_fclose_r>:
   11af0:	fe010113          	addi	sp,sp,-32
   11af4:	00113c23          	sd	ra,24(sp)
   11af8:	01213023          	sd	s2,0(sp)
   11afc:	02058863          	beqz	a1,11b2c <_fclose_r+0x3c>
   11b00:	00813823          	sd	s0,16(sp)
   11b04:	00913423          	sd	s1,8(sp)
   11b08:	00058413          	mv	s0,a1
   11b0c:	00050493          	mv	s1,a0
   11b10:	00050663          	beqz	a0,11b1c <_fclose_r+0x2c>
   11b14:	04853783          	ld	a5,72(a0)
   11b18:	0c078c63          	beqz	a5,11bf0 <_fclose_r+0x100>
   11b1c:	01041783          	lh	a5,16(s0)
   11b20:	02079263          	bnez	a5,11b44 <_fclose_r+0x54>
   11b24:	01013403          	ld	s0,16(sp)
   11b28:	00813483          	ld	s1,8(sp)
   11b2c:	01813083          	ld	ra,24(sp)
   11b30:	00000913          	li	s2,0
   11b34:	00090513          	mv	a0,s2
   11b38:	00013903          	ld	s2,0(sp)
   11b3c:	02010113          	addi	sp,sp,32
   11b40:	00008067          	ret
   11b44:	00040593          	mv	a1,s0
   11b48:	00048513          	mv	a0,s1
   11b4c:	0b8000ef          	jal	11c04 <__sflush_r>
   11b50:	05043783          	ld	a5,80(s0)
   11b54:	00050913          	mv	s2,a0
   11b58:	00078a63          	beqz	a5,11b6c <_fclose_r+0x7c>
   11b5c:	03043583          	ld	a1,48(s0)
   11b60:	00048513          	mv	a0,s1
   11b64:	000780e7          	jalr	a5
   11b68:	06054463          	bltz	a0,11bd0 <_fclose_r+0xe0>
   11b6c:	01045783          	lhu	a5,16(s0)
   11b70:	0807f793          	andi	a5,a5,128
   11b74:	06079663          	bnez	a5,11be0 <_fclose_r+0xf0>
   11b78:	05843583          	ld	a1,88(s0)
   11b7c:	00058c63          	beqz	a1,11b94 <_fclose_r+0xa4>
   11b80:	07440793          	addi	a5,s0,116
   11b84:	00f58663          	beq	a1,a5,11b90 <_fclose_r+0xa0>
   11b88:	00048513          	mv	a0,s1
   11b8c:	b74ff0ef          	jal	10f00 <_free_r>
   11b90:	04043c23          	sd	zero,88(s0)
   11b94:	07843583          	ld	a1,120(s0)
   11b98:	00058863          	beqz	a1,11ba8 <_fclose_r+0xb8>
   11b9c:	00048513          	mv	a0,s1
   11ba0:	b60ff0ef          	jal	10f00 <_free_r>
   11ba4:	06043c23          	sd	zero,120(s0)
   11ba8:	aadfe0ef          	jal	10654 <__sfp_lock_acquire>
   11bac:	00041823          	sh	zero,16(s0)
   11bb0:	aa9fe0ef          	jal	10658 <__sfp_lock_release>
   11bb4:	01813083          	ld	ra,24(sp)
   11bb8:	01013403          	ld	s0,16(sp)
   11bbc:	00813483          	ld	s1,8(sp)
   11bc0:	00090513          	mv	a0,s2
   11bc4:	00013903          	ld	s2,0(sp)
   11bc8:	02010113          	addi	sp,sp,32
   11bcc:	00008067          	ret
   11bd0:	01045783          	lhu	a5,16(s0)
   11bd4:	fff00913          	li	s2,-1
   11bd8:	0807f793          	andi	a5,a5,128
   11bdc:	f8078ee3          	beqz	a5,11b78 <_fclose_r+0x88>
   11be0:	01843583          	ld	a1,24(s0)
   11be4:	00048513          	mv	a0,s1
   11be8:	b18ff0ef          	jal	10f00 <_free_r>
   11bec:	f8dff06f          	j	11b78 <_fclose_r+0x88>
   11bf0:	a41fe0ef          	jal	10630 <__sinit>
   11bf4:	f29ff06f          	j	11b1c <_fclose_r+0x2c>

0000000000011bf8 <fclose>:
   11bf8:	00050593          	mv	a1,a0
   11bfc:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11c00:	ef1ff06f          	j	11af0 <_fclose_r>

0000000000011c04 <__sflush_r>:
   11c04:	01059703          	lh	a4,16(a1)
   11c08:	fd010113          	addi	sp,sp,-48
   11c0c:	02813023          	sd	s0,32(sp)
   11c10:	01313423          	sd	s3,8(sp)
   11c14:	02113423          	sd	ra,40(sp)
   11c18:	00877793          	andi	a5,a4,8
   11c1c:	00058413          	mv	s0,a1
   11c20:	00050993          	mv	s3,a0
   11c24:	12079263          	bnez	a5,11d48 <__sflush_r+0x144>
   11c28:	000017b7          	lui	a5,0x1
   11c2c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c30:	0085a683          	lw	a3,8(a1)
   11c34:	00f767b3          	or	a5,a4,a5
   11c38:	00f59823          	sh	a5,16(a1)
   11c3c:	18d05c63          	blez	a3,11dd4 <__sflush_r+0x1d0>
   11c40:	04843803          	ld	a6,72(s0)
   11c44:	0e080663          	beqz	a6,11d30 <__sflush_r+0x12c>
   11c48:	00913c23          	sd	s1,24(sp)
   11c4c:	03371693          	slli	a3,a4,0x33
   11c50:	0009a483          	lw	s1,0(s3)
   11c54:	0009a023          	sw	zero,0(s3)
   11c58:	1806ca63          	bltz	a3,11dec <__sflush_r+0x1e8>
   11c5c:	03043583          	ld	a1,48(s0)
   11c60:	00000613          	li	a2,0
   11c64:	00100693          	li	a3,1
   11c68:	00098513          	mv	a0,s3
   11c6c:	000800e7          	jalr	a6
   11c70:	fff00793          	li	a5,-1
   11c74:	00050613          	mv	a2,a0
   11c78:	1af50c63          	beq	a0,a5,11e30 <__sflush_r+0x22c>
   11c7c:	01041783          	lh	a5,16(s0)
   11c80:	04843803          	ld	a6,72(s0)
   11c84:	0047f793          	andi	a5,a5,4
   11c88:	00078e63          	beqz	a5,11ca4 <__sflush_r+0xa0>
   11c8c:	00842703          	lw	a4,8(s0)
   11c90:	05843783          	ld	a5,88(s0)
   11c94:	40e60633          	sub	a2,a2,a4
   11c98:	00078663          	beqz	a5,11ca4 <__sflush_r+0xa0>
   11c9c:	07042783          	lw	a5,112(s0)
   11ca0:	40f60633          	sub	a2,a2,a5
   11ca4:	03043583          	ld	a1,48(s0)
   11ca8:	00000693          	li	a3,0
   11cac:	00098513          	mv	a0,s3
   11cb0:	000800e7          	jalr	a6
   11cb4:	fff00713          	li	a4,-1
   11cb8:	01041783          	lh	a5,16(s0)
   11cbc:	12e51c63          	bne	a0,a4,11df4 <__sflush_r+0x1f0>
   11cc0:	0009a683          	lw	a3,0(s3)
   11cc4:	01d00713          	li	a4,29
   11cc8:	18d76263          	bltu	a4,a3,11e4c <__sflush_r+0x248>
   11ccc:	20400737          	lui	a4,0x20400
   11cd0:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec061>
   11cd4:	00d75733          	srl	a4,a4,a3
   11cd8:	00177713          	andi	a4,a4,1
   11cdc:	16070863          	beqz	a4,11e4c <__sflush_r+0x248>
   11ce0:	01843683          	ld	a3,24(s0)
   11ce4:	fffff737          	lui	a4,0xfffff
   11ce8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11cec:	00e7f733          	and	a4,a5,a4
   11cf0:	00e41823          	sh	a4,16(s0)
   11cf4:	00042423          	sw	zero,8(s0)
   11cf8:	00d43023          	sd	a3,0(s0)
   11cfc:	03379713          	slli	a4,a5,0x33
   11d00:	00075663          	bgez	a4,11d0c <__sflush_r+0x108>
   11d04:	0009a783          	lw	a5,0(s3)
   11d08:	10078863          	beqz	a5,11e18 <__sflush_r+0x214>
   11d0c:	05843583          	ld	a1,88(s0)
   11d10:	0099a023          	sw	s1,0(s3)
   11d14:	10058a63          	beqz	a1,11e28 <__sflush_r+0x224>
   11d18:	07440793          	addi	a5,s0,116
   11d1c:	00f58663          	beq	a1,a5,11d28 <__sflush_r+0x124>
   11d20:	00098513          	mv	a0,s3
   11d24:	9dcff0ef          	jal	10f00 <_free_r>
   11d28:	01813483          	ld	s1,24(sp)
   11d2c:	04043c23          	sd	zero,88(s0)
   11d30:	02813083          	ld	ra,40(sp)
   11d34:	02013403          	ld	s0,32(sp)
   11d38:	00813983          	ld	s3,8(sp)
   11d3c:	00000513          	li	a0,0
   11d40:	03010113          	addi	sp,sp,48
   11d44:	00008067          	ret
   11d48:	01213823          	sd	s2,16(sp)
   11d4c:	0185b903          	ld	s2,24(a1)
   11d50:	08090a63          	beqz	s2,11de4 <__sflush_r+0x1e0>
   11d54:	00913c23          	sd	s1,24(sp)
   11d58:	0005b483          	ld	s1,0(a1)
   11d5c:	00377713          	andi	a4,a4,3
   11d60:	0125b023          	sd	s2,0(a1)
   11d64:	412484bb          	subw	s1,s1,s2
   11d68:	00000793          	li	a5,0
   11d6c:	00071463          	bnez	a4,11d74 <__sflush_r+0x170>
   11d70:	0205a783          	lw	a5,32(a1)
   11d74:	00f42623          	sw	a5,12(s0)
   11d78:	00904863          	bgtz	s1,11d88 <__sflush_r+0x184>
   11d7c:	0640006f          	j	11de0 <__sflush_r+0x1dc>
   11d80:	00a90933          	add	s2,s2,a0
   11d84:	04905e63          	blez	s1,11de0 <__sflush_r+0x1dc>
   11d88:	04043783          	ld	a5,64(s0)
   11d8c:	03043583          	ld	a1,48(s0)
   11d90:	00048693          	mv	a3,s1
   11d94:	00090613          	mv	a2,s2
   11d98:	00098513          	mv	a0,s3
   11d9c:	000780e7          	jalr	a5
   11da0:	40a484bb          	subw	s1,s1,a0
   11da4:	fca04ee3          	bgtz	a0,11d80 <__sflush_r+0x17c>
   11da8:	01045783          	lhu	a5,16(s0)
   11dac:	01013903          	ld	s2,16(sp)
   11db0:	0407e793          	ori	a5,a5,64
   11db4:	02813083          	ld	ra,40(sp)
   11db8:	00f41823          	sh	a5,16(s0)
   11dbc:	02013403          	ld	s0,32(sp)
   11dc0:	01813483          	ld	s1,24(sp)
   11dc4:	00813983          	ld	s3,8(sp)
   11dc8:	fff00513          	li	a0,-1
   11dcc:	03010113          	addi	sp,sp,48
   11dd0:	00008067          	ret
   11dd4:	0705a683          	lw	a3,112(a1)
   11dd8:	e6d044e3          	bgtz	a3,11c40 <__sflush_r+0x3c>
   11ddc:	f55ff06f          	j	11d30 <__sflush_r+0x12c>
   11de0:	01813483          	ld	s1,24(sp)
   11de4:	01013903          	ld	s2,16(sp)
   11de8:	f49ff06f          	j	11d30 <__sflush_r+0x12c>
   11dec:	09043603          	ld	a2,144(s0)
   11df0:	e95ff06f          	j	11c84 <__sflush_r+0x80>
   11df4:	01843683          	ld	a3,24(s0)
   11df8:	fffff737          	lui	a4,0xfffff
   11dfc:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11e00:	00e7f733          	and	a4,a5,a4
   11e04:	00e41823          	sh	a4,16(s0)
   11e08:	00042423          	sw	zero,8(s0)
   11e0c:	00d43023          	sd	a3,0(s0)
   11e10:	03379713          	slli	a4,a5,0x33
   11e14:	ee075ce3          	bgez	a4,11d0c <__sflush_r+0x108>
   11e18:	05843583          	ld	a1,88(s0)
   11e1c:	08a43823          	sd	a0,144(s0)
   11e20:	0099a023          	sw	s1,0(s3)
   11e24:	ee059ae3          	bnez	a1,11d18 <__sflush_r+0x114>
   11e28:	01813483          	ld	s1,24(sp)
   11e2c:	f05ff06f          	j	11d30 <__sflush_r+0x12c>
   11e30:	0009a783          	lw	a5,0(s3)
   11e34:	e40784e3          	beqz	a5,11c7c <__sflush_r+0x78>
   11e38:	fe378713          	addi	a4,a5,-29
   11e3c:	00070c63          	beqz	a4,11e54 <__sflush_r+0x250>
   11e40:	fea78793          	addi	a5,a5,-22
   11e44:	00078863          	beqz	a5,11e54 <__sflush_r+0x250>
   11e48:	01045783          	lhu	a5,16(s0)
   11e4c:	0407e793          	ori	a5,a5,64
   11e50:	f65ff06f          	j	11db4 <__sflush_r+0x1b0>
   11e54:	0099a023          	sw	s1,0(s3)
   11e58:	01813483          	ld	s1,24(sp)
   11e5c:	ed5ff06f          	j	11d30 <__sflush_r+0x12c>

0000000000011e60 <_fflush_r>:
   11e60:	00050793          	mv	a5,a0
   11e64:	00050663          	beqz	a0,11e70 <_fflush_r+0x10>
   11e68:	04853703          	ld	a4,72(a0)
   11e6c:	00070e63          	beqz	a4,11e88 <_fflush_r+0x28>
   11e70:	01059703          	lh	a4,16(a1)
   11e74:	00071663          	bnez	a4,11e80 <_fflush_r+0x20>
   11e78:	00000513          	li	a0,0
   11e7c:	00008067          	ret
   11e80:	00078513          	mv	a0,a5
   11e84:	d81ff06f          	j	11c04 <__sflush_r>
   11e88:	fe010113          	addi	sp,sp,-32
   11e8c:	00b13423          	sd	a1,8(sp)
   11e90:	00113c23          	sd	ra,24(sp)
   11e94:	00a13023          	sd	a0,0(sp)
   11e98:	f98fe0ef          	jal	10630 <__sinit>
   11e9c:	00813583          	ld	a1,8(sp)
   11ea0:	00013783          	ld	a5,0(sp)
   11ea4:	01059703          	lh	a4,16(a1)
   11ea8:	00070a63          	beqz	a4,11ebc <_fflush_r+0x5c>
   11eac:	01813083          	ld	ra,24(sp)
   11eb0:	00078513          	mv	a0,a5
   11eb4:	02010113          	addi	sp,sp,32
   11eb8:	d4dff06f          	j	11c04 <__sflush_r>
   11ebc:	01813083          	ld	ra,24(sp)
   11ec0:	00000513          	li	a0,0
   11ec4:	02010113          	addi	sp,sp,32
   11ec8:	00008067          	ret

0000000000011ecc <fflush>:
   11ecc:	06050063          	beqz	a0,11f2c <fflush+0x60>
   11ed0:	00050593          	mv	a1,a0
   11ed4:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11ed8:	00050663          	beqz	a0,11ee4 <fflush+0x18>
   11edc:	04853783          	ld	a5,72(a0)
   11ee0:	00078c63          	beqz	a5,11ef8 <fflush+0x2c>
   11ee4:	01059783          	lh	a5,16(a1)
   11ee8:	00079663          	bnez	a5,11ef4 <fflush+0x28>
   11eec:	00000513          	li	a0,0
   11ef0:	00008067          	ret
   11ef4:	d11ff06f          	j	11c04 <__sflush_r>
   11ef8:	fe010113          	addi	sp,sp,-32
   11efc:	00b13423          	sd	a1,8(sp)
   11f00:	00a13023          	sd	a0,0(sp)
   11f04:	00113c23          	sd	ra,24(sp)
   11f08:	f28fe0ef          	jal	10630 <__sinit>
   11f0c:	00813583          	ld	a1,8(sp)
   11f10:	00013503          	ld	a0,0(sp)
   11f14:	01059783          	lh	a5,16(a1)
   11f18:	02079663          	bnez	a5,11f44 <fflush+0x78>
   11f1c:	01813083          	ld	ra,24(sp)
   11f20:	00000513          	li	a0,0
   11f24:	02010113          	addi	sp,sp,32
   11f28:	00008067          	ret
   11f2c:	000125b7          	lui	a1,0x12
   11f30:	00013537          	lui	a0,0x13
   11f34:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   11f38:	e6058593          	addi	a1,a1,-416 # 11e60 <_fflush_r>
   11f3c:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   11f40:	f44fe06f          	j	10684 <_fwalk_sglue>
   11f44:	01813083          	ld	ra,24(sp)
   11f48:	02010113          	addi	sp,sp,32
   11f4c:	cb9ff06f          	j	11c04 <__sflush_r>

0000000000011f50 <_sbrk_r>:
   11f50:	fe010113          	addi	sp,sp,-32
   11f54:	00813823          	sd	s0,16(sp)
   11f58:	00913423          	sd	s1,8(sp)
   11f5c:	00050493          	mv	s1,a0
   11f60:	00058513          	mv	a0,a1
   11f64:	00113c23          	sd	ra,24(sp)
   11f68:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   11f6c:	228000ef          	jal	12194 <_sbrk>
   11f70:	fff00793          	li	a5,-1
   11f74:	00f50c63          	beq	a0,a5,11f8c <_sbrk_r+0x3c>
   11f78:	01813083          	ld	ra,24(sp)
   11f7c:	01013403          	ld	s0,16(sp)
   11f80:	00813483          	ld	s1,8(sp)
   11f84:	02010113          	addi	sp,sp,32
   11f88:	00008067          	ret
   11f8c:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   11f90:	fe0784e3          	beqz	a5,11f78 <_sbrk_r+0x28>
   11f94:	01813083          	ld	ra,24(sp)
   11f98:	01013403          	ld	s0,16(sp)
   11f9c:	00f4a023          	sw	a5,0(s1)
   11fa0:	00813483          	ld	s1,8(sp)
   11fa4:	02010113          	addi	sp,sp,32
   11fa8:	00008067          	ret

0000000000011fac <__libc_fini_array>:
   11fac:	fe010113          	addi	sp,sp,-32
   11fb0:	00813823          	sd	s0,16(sp)
   11fb4:	000137b7          	lui	a5,0x13
   11fb8:	00013437          	lui	s0,0x13
   11fbc:	01878793          	addi	a5,a5,24 # 13018 <result>
   11fc0:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11fc4:	408787b3          	sub	a5,a5,s0
   11fc8:	00913423          	sd	s1,8(sp)
   11fcc:	00113c23          	sd	ra,24(sp)
   11fd0:	4037d493          	srai	s1,a5,0x3
   11fd4:	02048063          	beqz	s1,11ff4 <__libc_fini_array+0x48>
   11fd8:	ff840413          	addi	s0,s0,-8
   11fdc:	00f40433          	add	s0,s0,a5
   11fe0:	00043783          	ld	a5,0(s0)
   11fe4:	fff48493          	addi	s1,s1,-1
   11fe8:	ff840413          	addi	s0,s0,-8
   11fec:	000780e7          	jalr	a5
   11ff0:	fe0498e3          	bnez	s1,11fe0 <__libc_fini_array+0x34>
   11ff4:	01813083          	ld	ra,24(sp)
   11ff8:	01013403          	ld	s0,16(sp)
   11ffc:	00813483          	ld	s1,8(sp)
   12000:	02010113          	addi	sp,sp,32
   12004:	00008067          	ret

0000000000012008 <__register_exitproc>:
   12008:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   1200c:	04078e63          	beqz	a5,12068 <__register_exitproc+0x60>
   12010:	0087a703          	lw	a4,8(a5)
   12014:	01f00813          	li	a6,31
   12018:	08e84263          	blt	a6,a4,1209c <__register_exitproc+0x94>
   1201c:	02050863          	beqz	a0,1204c <__register_exitproc+0x44>
   12020:	00371813          	slli	a6,a4,0x3
   12024:	01078833          	add	a6,a5,a6
   12028:	10c83823          	sd	a2,272(a6)
   1202c:	3107a883          	lw	a7,784(a5)
   12030:	00100613          	li	a2,1
   12034:	00e6163b          	sllw	a2,a2,a4
   12038:	00c8e8b3          	or	a7,a7,a2
   1203c:	3117a823          	sw	a7,784(a5)
   12040:	20d83823          	sd	a3,528(a6)
   12044:	00200693          	li	a3,2
   12048:	02d50663          	beq	a0,a3,12074 <__register_exitproc+0x6c>
   1204c:	0017069b          	addiw	a3,a4,1
   12050:	00371713          	slli	a4,a4,0x3
   12054:	00d7a423          	sw	a3,8(a5)
   12058:	00e787b3          	add	a5,a5,a4
   1205c:	00b7b823          	sd	a1,16(a5)
   12060:	00000513          	li	a0,0
   12064:	00008067          	ret
   12068:	47018793          	addi	a5,gp,1136 # 13c88 <__atexit0>
   1206c:	1cf1bc23          	sd	a5,472(gp) # 139f0 <__atexit>
   12070:	fa1ff06f          	j	12010 <__register_exitproc+0x8>
   12074:	3147a683          	lw	a3,788(a5)
   12078:	00000513          	li	a0,0
   1207c:	00d66633          	or	a2,a2,a3
   12080:	0017069b          	addiw	a3,a4,1
   12084:	00371713          	slli	a4,a4,0x3
   12088:	30c7aa23          	sw	a2,788(a5)
   1208c:	00d7a423          	sw	a3,8(a5)
   12090:	00e787b3          	add	a5,a5,a4
   12094:	00b7b823          	sd	a1,16(a5)
   12098:	00008067          	ret
   1209c:	fff00513          	li	a0,-1
   120a0:	00008067          	ret

00000000000120a4 <_close>:
   120a4:	03900893          	li	a7,57
   120a8:	00000073          	ecall
   120ac:	00054663          	bltz	a0,120b8 <_close+0x14>
   120b0:	0005051b          	sext.w	a0,a0
   120b4:	00008067          	ret
   120b8:	fe010113          	addi	sp,sp,-32
   120bc:	00113c23          	sd	ra,24(sp)
   120c0:	00a13423          	sd	a0,8(sp)
   120c4:	188000ef          	jal	1224c <__errno>
   120c8:	00813783          	ld	a5,8(sp)
   120cc:	01813083          	ld	ra,24(sp)
   120d0:	40f007bb          	negw	a5,a5
   120d4:	00f52023          	sw	a5,0(a0)
   120d8:	fff00513          	li	a0,-1
   120dc:	02010113          	addi	sp,sp,32
   120e0:	00008067          	ret

00000000000120e4 <_exit>:
   120e4:	05d00893          	li	a7,93
   120e8:	00000073          	ecall
   120ec:	00054463          	bltz	a0,120f4 <_exit+0x10>
   120f0:	0000006f          	j	120f0 <_exit+0xc>
   120f4:	fe010113          	addi	sp,sp,-32
   120f8:	00113c23          	sd	ra,24(sp)
   120fc:	00a13423          	sd	a0,8(sp)
   12100:	14c000ef          	jal	1224c <__errno>
   12104:	00813783          	ld	a5,8(sp)
   12108:	40f007bb          	negw	a5,a5
   1210c:	00f52023          	sw	a5,0(a0)
   12110:	0000006f          	j	12110 <_exit+0x2c>

0000000000012114 <_lseek>:
   12114:	03e00893          	li	a7,62
   12118:	00000073          	ecall
   1211c:	00054463          	bltz	a0,12124 <_lseek+0x10>
   12120:	00008067          	ret
   12124:	fe010113          	addi	sp,sp,-32
   12128:	00113c23          	sd	ra,24(sp)
   1212c:	00a13423          	sd	a0,8(sp)
   12130:	11c000ef          	jal	1224c <__errno>
   12134:	00813783          	ld	a5,8(sp)
   12138:	01813083          	ld	ra,24(sp)
   1213c:	40f007bb          	negw	a5,a5
   12140:	00f52023          	sw	a5,0(a0)
   12144:	fff00793          	li	a5,-1
   12148:	00078513          	mv	a0,a5
   1214c:	02010113          	addi	sp,sp,32
   12150:	00008067          	ret

0000000000012154 <_read>:
   12154:	03f00893          	li	a7,63
   12158:	00000073          	ecall
   1215c:	00054463          	bltz	a0,12164 <_read+0x10>
   12160:	00008067          	ret
   12164:	fe010113          	addi	sp,sp,-32
   12168:	00113c23          	sd	ra,24(sp)
   1216c:	00a13423          	sd	a0,8(sp)
   12170:	0dc000ef          	jal	1224c <__errno>
   12174:	00813783          	ld	a5,8(sp)
   12178:	01813083          	ld	ra,24(sp)
   1217c:	40f007bb          	negw	a5,a5
   12180:	00f52023          	sw	a5,0(a0)
   12184:	fff00793          	li	a5,-1
   12188:	00078513          	mv	a0,a5
   1218c:	02010113          	addi	sp,sp,32
   12190:	00008067          	ret

0000000000012194 <_sbrk>:
   12194:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   12198:	ff010113          	addi	sp,sp,-16
   1219c:	00113423          	sd	ra,8(sp)
   121a0:	00050713          	mv	a4,a0
   121a4:	02079063          	bnez	a5,121c4 <_sbrk+0x30>
   121a8:	0d600893          	li	a7,214
   121ac:	00000513          	li	a0,0
   121b0:	00000073          	ecall
   121b4:	fff00793          	li	a5,-1
   121b8:	02f50c63          	beq	a0,a5,121f0 <_sbrk+0x5c>
   121bc:	00050793          	mv	a5,a0
   121c0:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   121c4:	00f70533          	add	a0,a4,a5
   121c8:	0d600893          	li	a7,214
   121cc:	00000073          	ecall
   121d0:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   121d4:	00f70733          	add	a4,a4,a5
   121d8:	00e51c63          	bne	a0,a4,121f0 <_sbrk+0x5c>
   121dc:	00813083          	ld	ra,8(sp)
   121e0:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   121e4:	00078513          	mv	a0,a5
   121e8:	01010113          	addi	sp,sp,16
   121ec:	00008067          	ret
   121f0:	05c000ef          	jal	1224c <__errno>
   121f4:	00813083          	ld	ra,8(sp)
   121f8:	00c00793          	li	a5,12
   121fc:	00f52023          	sw	a5,0(a0)
   12200:	fff00513          	li	a0,-1
   12204:	01010113          	addi	sp,sp,16
   12208:	00008067          	ret

000000000001220c <_write>:
   1220c:	04000893          	li	a7,64
   12210:	00000073          	ecall
   12214:	00054463          	bltz	a0,1221c <_write+0x10>
   12218:	00008067          	ret
   1221c:	fe010113          	addi	sp,sp,-32
   12220:	00113c23          	sd	ra,24(sp)
   12224:	00a13423          	sd	a0,8(sp)
   12228:	024000ef          	jal	1224c <__errno>
   1222c:	00813783          	ld	a5,8(sp)
   12230:	01813083          	ld	ra,24(sp)
   12234:	40f007bb          	negw	a5,a5
   12238:	00f52023          	sw	a5,0(a0)
   1223c:	fff00793          	li	a5,-1
   12240:	00078513          	mv	a0,a5
   12244:	02010113          	addi	sp,sp,32
   12248:	00008067          	ret

000000000001224c <__errno>:
   1224c:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   12250:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012258 <__EH_FRAME_BEGIN__>:
   12258:	0000                	.insn	2, 0x0000
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

0000000000013018 <result>:
   13018:	0001                	.insn	2, 0x0001
   1301a:	0000                	.insn	2, 0x0000
   1301c:	0002                	.insn	2, 0x0002
   1301e:	0000                	.insn	2, 0x0000
   13020:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   13024:	0004                	.insn	2, 0x0004
   13026:	0000                	.insn	2, 0x0000
   13028:	0005                	.insn	2, 0x0005
   1302a:	0000                	.insn	2, 0x0000
   1302c:	0006                	.insn	2, 0x0006
   1302e:	0000                	.insn	2, 0x0000
   13030:	00000007          	.insn	4, 0x0007
   13034:	0008                	.insn	2, 0x0008
   13036:	0000                	.insn	2, 0x0000
   13038:	0009                	.insn	2, 0x0009
   1303a:	0000                	.insn	2, 0x0000
   1303c:	000a                	.insn	2, 0x000a
	...

0000000000013040 <__sglue>:
	...
   13048:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   1304c:	0000                	.insn	2, 0x0000
   1304e:	0000                	.insn	2, 0x0000
   13050:	3a50                	.insn	2, 0x3a50
   13052:	0001                	.insn	2, 0x0001
   13054:	0000                	.insn	2, 0x0000
	...

0000000000013058 <_impure_data>:
	...
   13060:	3a50                	.insn	2, 0x3a50
   13062:	0001                	.insn	2, 0x0001
   13064:	0000                	.insn	2, 0x0000
   13066:	0000                	.insn	2, 0x0000
   13068:	3b00                	.insn	2, 0x3b00
   1306a:	0001                	.insn	2, 0x0001
   1306c:	0000                	.insn	2, 0x0000
   1306e:	0000                	.insn	2, 0x0000
   13070:	3bb0                	.insn	2, 0x3bb0
   13072:	0001                	.insn	2, 0x0001
	...
   13128:	0001                	.insn	2, 0x0001
   1312a:	0000                	.insn	2, 0x0000
   1312c:	0000                	.insn	2, 0x0000
   1312e:	0000                	.insn	2, 0x0000
   13130:	330e                	.insn	2, 0x330e
   13132:	abcd                	.insn	2, 0xabcd
   13134:	1234                	.insn	2, 0x1234
   13136:	e66d                	.insn	2, 0xe66d
   13138:	deec                	.insn	2, 0xdeec
   1313a:	0005                	.insn	2, 0x0005
   1313c:	0000000b          	.insn	4, 0x000b
	...

00000000000131b0 <__malloc_av_>:
	...
   131c0:	31b0                	.insn	2, 0x31b0
   131c2:	0001                	.insn	2, 0x0001
   131c4:	0000                	.insn	2, 0x0000
   131c6:	0000                	.insn	2, 0x0000
   131c8:	31b0                	.insn	2, 0x31b0
   131ca:	0001                	.insn	2, 0x0001
   131cc:	0000                	.insn	2, 0x0000
   131ce:	0000                	.insn	2, 0x0000
   131d0:	31c0                	.insn	2, 0x31c0
   131d2:	0001                	.insn	2, 0x0001
   131d4:	0000                	.insn	2, 0x0000
   131d6:	0000                	.insn	2, 0x0000
   131d8:	31c0                	.insn	2, 0x31c0
   131da:	0001                	.insn	2, 0x0001
   131dc:	0000                	.insn	2, 0x0000
   131de:	0000                	.insn	2, 0x0000
   131e0:	31d0                	.insn	2, 0x31d0
   131e2:	0001                	.insn	2, 0x0001
   131e4:	0000                	.insn	2, 0x0000
   131e6:	0000                	.insn	2, 0x0000
   131e8:	31d0                	.insn	2, 0x31d0
   131ea:	0001                	.insn	2, 0x0001
   131ec:	0000                	.insn	2, 0x0000
   131ee:	0000                	.insn	2, 0x0000
   131f0:	31e0                	.insn	2, 0x31e0
   131f2:	0001                	.insn	2, 0x0001
   131f4:	0000                	.insn	2, 0x0000
   131f6:	0000                	.insn	2, 0x0000
   131f8:	31e0                	.insn	2, 0x31e0
   131fa:	0001                	.insn	2, 0x0001
   131fc:	0000                	.insn	2, 0x0000
   131fe:	0000                	.insn	2, 0x0000
   13200:	31f0                	.insn	2, 0x31f0
   13202:	0001                	.insn	2, 0x0001
   13204:	0000                	.insn	2, 0x0000
   13206:	0000                	.insn	2, 0x0000
   13208:	31f0                	.insn	2, 0x31f0
   1320a:	0001                	.insn	2, 0x0001
   1320c:	0000                	.insn	2, 0x0000
   1320e:	0000                	.insn	2, 0x0000
   13210:	3200                	.insn	2, 0x3200
   13212:	0001                	.insn	2, 0x0001
   13214:	0000                	.insn	2, 0x0000
   13216:	0000                	.insn	2, 0x0000
   13218:	3200                	.insn	2, 0x3200
   1321a:	0001                	.insn	2, 0x0001
   1321c:	0000                	.insn	2, 0x0000
   1321e:	0000                	.insn	2, 0x0000
   13220:	3210                	.insn	2, 0x3210
   13222:	0001                	.insn	2, 0x0001
   13224:	0000                	.insn	2, 0x0000
   13226:	0000                	.insn	2, 0x0000
   13228:	3210                	.insn	2, 0x3210
   1322a:	0001                	.insn	2, 0x0001
   1322c:	0000                	.insn	2, 0x0000
   1322e:	0000                	.insn	2, 0x0000
   13230:	3220                	.insn	2, 0x3220
   13232:	0001                	.insn	2, 0x0001
   13234:	0000                	.insn	2, 0x0000
   13236:	0000                	.insn	2, 0x0000
   13238:	3220                	.insn	2, 0x3220
   1323a:	0001                	.insn	2, 0x0001
   1323c:	0000                	.insn	2, 0x0000
   1323e:	0000                	.insn	2, 0x0000
   13240:	3230                	.insn	2, 0x3230
   13242:	0001                	.insn	2, 0x0001
   13244:	0000                	.insn	2, 0x0000
   13246:	0000                	.insn	2, 0x0000
   13248:	3230                	.insn	2, 0x3230
   1324a:	0001                	.insn	2, 0x0001
   1324c:	0000                	.insn	2, 0x0000
   1324e:	0000                	.insn	2, 0x0000
   13250:	3240                	.insn	2, 0x3240
   13252:	0001                	.insn	2, 0x0001
   13254:	0000                	.insn	2, 0x0000
   13256:	0000                	.insn	2, 0x0000
   13258:	3240                	.insn	2, 0x3240
   1325a:	0001                	.insn	2, 0x0001
   1325c:	0000                	.insn	2, 0x0000
   1325e:	0000                	.insn	2, 0x0000
   13260:	3250                	.insn	2, 0x3250
   13262:	0001                	.insn	2, 0x0001
   13264:	0000                	.insn	2, 0x0000
   13266:	0000                	.insn	2, 0x0000
   13268:	3250                	.insn	2, 0x3250
   1326a:	0001                	.insn	2, 0x0001
   1326c:	0000                	.insn	2, 0x0000
   1326e:	0000                	.insn	2, 0x0000
   13270:	3260                	.insn	2, 0x3260
   13272:	0001                	.insn	2, 0x0001
   13274:	0000                	.insn	2, 0x0000
   13276:	0000                	.insn	2, 0x0000
   13278:	3260                	.insn	2, 0x3260
   1327a:	0001                	.insn	2, 0x0001
   1327c:	0000                	.insn	2, 0x0000
   1327e:	0000                	.insn	2, 0x0000
   13280:	3270                	.insn	2, 0x3270
   13282:	0001                	.insn	2, 0x0001
   13284:	0000                	.insn	2, 0x0000
   13286:	0000                	.insn	2, 0x0000
   13288:	3270                	.insn	2, 0x3270
   1328a:	0001                	.insn	2, 0x0001
   1328c:	0000                	.insn	2, 0x0000
   1328e:	0000                	.insn	2, 0x0000
   13290:	3280                	.insn	2, 0x3280
   13292:	0001                	.insn	2, 0x0001
   13294:	0000                	.insn	2, 0x0000
   13296:	0000                	.insn	2, 0x0000
   13298:	3280                	.insn	2, 0x3280
   1329a:	0001                	.insn	2, 0x0001
   1329c:	0000                	.insn	2, 0x0000
   1329e:	0000                	.insn	2, 0x0000
   132a0:	3290                	.insn	2, 0x3290
   132a2:	0001                	.insn	2, 0x0001
   132a4:	0000                	.insn	2, 0x0000
   132a6:	0000                	.insn	2, 0x0000
   132a8:	3290                	.insn	2, 0x3290
   132aa:	0001                	.insn	2, 0x0001
   132ac:	0000                	.insn	2, 0x0000
   132ae:	0000                	.insn	2, 0x0000
   132b0:	32a0                	.insn	2, 0x32a0
   132b2:	0001                	.insn	2, 0x0001
   132b4:	0000                	.insn	2, 0x0000
   132b6:	0000                	.insn	2, 0x0000
   132b8:	32a0                	.insn	2, 0x32a0
   132ba:	0001                	.insn	2, 0x0001
   132bc:	0000                	.insn	2, 0x0000
   132be:	0000                	.insn	2, 0x0000
   132c0:	32b0                	.insn	2, 0x32b0
   132c2:	0001                	.insn	2, 0x0001
   132c4:	0000                	.insn	2, 0x0000
   132c6:	0000                	.insn	2, 0x0000
   132c8:	32b0                	.insn	2, 0x32b0
   132ca:	0001                	.insn	2, 0x0001
   132cc:	0000                	.insn	2, 0x0000
   132ce:	0000                	.insn	2, 0x0000
   132d0:	32c0                	.insn	2, 0x32c0
   132d2:	0001                	.insn	2, 0x0001
   132d4:	0000                	.insn	2, 0x0000
   132d6:	0000                	.insn	2, 0x0000
   132d8:	32c0                	.insn	2, 0x32c0
   132da:	0001                	.insn	2, 0x0001
   132dc:	0000                	.insn	2, 0x0000
   132de:	0000                	.insn	2, 0x0000
   132e0:	32d0                	.insn	2, 0x32d0
   132e2:	0001                	.insn	2, 0x0001
   132e4:	0000                	.insn	2, 0x0000
   132e6:	0000                	.insn	2, 0x0000
   132e8:	32d0                	.insn	2, 0x32d0
   132ea:	0001                	.insn	2, 0x0001
   132ec:	0000                	.insn	2, 0x0000
   132ee:	0000                	.insn	2, 0x0000
   132f0:	32e0                	.insn	2, 0x32e0
   132f2:	0001                	.insn	2, 0x0001
   132f4:	0000                	.insn	2, 0x0000
   132f6:	0000                	.insn	2, 0x0000
   132f8:	32e0                	.insn	2, 0x32e0
   132fa:	0001                	.insn	2, 0x0001
   132fc:	0000                	.insn	2, 0x0000
   132fe:	0000                	.insn	2, 0x0000
   13300:	32f0                	.insn	2, 0x32f0
   13302:	0001                	.insn	2, 0x0001
   13304:	0000                	.insn	2, 0x0000
   13306:	0000                	.insn	2, 0x0000
   13308:	32f0                	.insn	2, 0x32f0
   1330a:	0001                	.insn	2, 0x0001
   1330c:	0000                	.insn	2, 0x0000
   1330e:	0000                	.insn	2, 0x0000
   13310:	3300                	.insn	2, 0x3300
   13312:	0001                	.insn	2, 0x0001
   13314:	0000                	.insn	2, 0x0000
   13316:	0000                	.insn	2, 0x0000
   13318:	3300                	.insn	2, 0x3300
   1331a:	0001                	.insn	2, 0x0001
   1331c:	0000                	.insn	2, 0x0000
   1331e:	0000                	.insn	2, 0x0000
   13320:	3310                	.insn	2, 0x3310
   13322:	0001                	.insn	2, 0x0001
   13324:	0000                	.insn	2, 0x0000
   13326:	0000                	.insn	2, 0x0000
   13328:	3310                	.insn	2, 0x3310
   1332a:	0001                	.insn	2, 0x0001
   1332c:	0000                	.insn	2, 0x0000
   1332e:	0000                	.insn	2, 0x0000
   13330:	3320                	.insn	2, 0x3320
   13332:	0001                	.insn	2, 0x0001
   13334:	0000                	.insn	2, 0x0000
   13336:	0000                	.insn	2, 0x0000
   13338:	3320                	.insn	2, 0x3320
   1333a:	0001                	.insn	2, 0x0001
   1333c:	0000                	.insn	2, 0x0000
   1333e:	0000                	.insn	2, 0x0000
   13340:	3330                	.insn	2, 0x3330
   13342:	0001                	.insn	2, 0x0001
   13344:	0000                	.insn	2, 0x0000
   13346:	0000                	.insn	2, 0x0000
   13348:	3330                	.insn	2, 0x3330
   1334a:	0001                	.insn	2, 0x0001
   1334c:	0000                	.insn	2, 0x0000
   1334e:	0000                	.insn	2, 0x0000
   13350:	3340                	.insn	2, 0x3340
   13352:	0001                	.insn	2, 0x0001
   13354:	0000                	.insn	2, 0x0000
   13356:	0000                	.insn	2, 0x0000
   13358:	3340                	.insn	2, 0x3340
   1335a:	0001                	.insn	2, 0x0001
   1335c:	0000                	.insn	2, 0x0000
   1335e:	0000                	.insn	2, 0x0000
   13360:	3350                	.insn	2, 0x3350
   13362:	0001                	.insn	2, 0x0001
   13364:	0000                	.insn	2, 0x0000
   13366:	0000                	.insn	2, 0x0000
   13368:	3350                	.insn	2, 0x3350
   1336a:	0001                	.insn	2, 0x0001
   1336c:	0000                	.insn	2, 0x0000
   1336e:	0000                	.insn	2, 0x0000
   13370:	3360                	.insn	2, 0x3360
   13372:	0001                	.insn	2, 0x0001
   13374:	0000                	.insn	2, 0x0000
   13376:	0000                	.insn	2, 0x0000
   13378:	3360                	.insn	2, 0x3360
   1337a:	0001                	.insn	2, 0x0001
   1337c:	0000                	.insn	2, 0x0000
   1337e:	0000                	.insn	2, 0x0000
   13380:	3370                	.insn	2, 0x3370
   13382:	0001                	.insn	2, 0x0001
   13384:	0000                	.insn	2, 0x0000
   13386:	0000                	.insn	2, 0x0000
   13388:	3370                	.insn	2, 0x3370
   1338a:	0001                	.insn	2, 0x0001
   1338c:	0000                	.insn	2, 0x0000
   1338e:	0000                	.insn	2, 0x0000
   13390:	3380                	.insn	2, 0x3380
   13392:	0001                	.insn	2, 0x0001
   13394:	0000                	.insn	2, 0x0000
   13396:	0000                	.insn	2, 0x0000
   13398:	3380                	.insn	2, 0x3380
   1339a:	0001                	.insn	2, 0x0001
   1339c:	0000                	.insn	2, 0x0000
   1339e:	0000                	.insn	2, 0x0000
   133a0:	3390                	.insn	2, 0x3390
   133a2:	0001                	.insn	2, 0x0001
   133a4:	0000                	.insn	2, 0x0000
   133a6:	0000                	.insn	2, 0x0000
   133a8:	3390                	.insn	2, 0x3390
   133aa:	0001                	.insn	2, 0x0001
   133ac:	0000                	.insn	2, 0x0000
   133ae:	0000                	.insn	2, 0x0000
   133b0:	33a0                	.insn	2, 0x33a0
   133b2:	0001                	.insn	2, 0x0001
   133b4:	0000                	.insn	2, 0x0000
   133b6:	0000                	.insn	2, 0x0000
   133b8:	33a0                	.insn	2, 0x33a0
   133ba:	0001                	.insn	2, 0x0001
   133bc:	0000                	.insn	2, 0x0000
   133be:	0000                	.insn	2, 0x0000
   133c0:	33b0                	.insn	2, 0x33b0
   133c2:	0001                	.insn	2, 0x0001
   133c4:	0000                	.insn	2, 0x0000
   133c6:	0000                	.insn	2, 0x0000
   133c8:	33b0                	.insn	2, 0x33b0
   133ca:	0001                	.insn	2, 0x0001
   133cc:	0000                	.insn	2, 0x0000
   133ce:	0000                	.insn	2, 0x0000
   133d0:	33c0                	.insn	2, 0x33c0
   133d2:	0001                	.insn	2, 0x0001
   133d4:	0000                	.insn	2, 0x0000
   133d6:	0000                	.insn	2, 0x0000
   133d8:	33c0                	.insn	2, 0x33c0
   133da:	0001                	.insn	2, 0x0001
   133dc:	0000                	.insn	2, 0x0000
   133de:	0000                	.insn	2, 0x0000
   133e0:	33d0                	.insn	2, 0x33d0
   133e2:	0001                	.insn	2, 0x0001
   133e4:	0000                	.insn	2, 0x0000
   133e6:	0000                	.insn	2, 0x0000
   133e8:	33d0                	.insn	2, 0x33d0
   133ea:	0001                	.insn	2, 0x0001
   133ec:	0000                	.insn	2, 0x0000
   133ee:	0000                	.insn	2, 0x0000
   133f0:	33e0                	.insn	2, 0x33e0
   133f2:	0001                	.insn	2, 0x0001
   133f4:	0000                	.insn	2, 0x0000
   133f6:	0000                	.insn	2, 0x0000
   133f8:	33e0                	.insn	2, 0x33e0
   133fa:	0001                	.insn	2, 0x0001
   133fc:	0000                	.insn	2, 0x0000
   133fe:	0000                	.insn	2, 0x0000
   13400:	33f0                	.insn	2, 0x33f0
   13402:	0001                	.insn	2, 0x0001
   13404:	0000                	.insn	2, 0x0000
   13406:	0000                	.insn	2, 0x0000
   13408:	33f0                	.insn	2, 0x33f0
   1340a:	0001                	.insn	2, 0x0001
   1340c:	0000                	.insn	2, 0x0000
   1340e:	0000                	.insn	2, 0x0000
   13410:	3400                	.insn	2, 0x3400
   13412:	0001                	.insn	2, 0x0001
   13414:	0000                	.insn	2, 0x0000
   13416:	0000                	.insn	2, 0x0000
   13418:	3400                	.insn	2, 0x3400
   1341a:	0001                	.insn	2, 0x0001
   1341c:	0000                	.insn	2, 0x0000
   1341e:	0000                	.insn	2, 0x0000
   13420:	3410                	.insn	2, 0x3410
   13422:	0001                	.insn	2, 0x0001
   13424:	0000                	.insn	2, 0x0000
   13426:	0000                	.insn	2, 0x0000
   13428:	3410                	.insn	2, 0x3410
   1342a:	0001                	.insn	2, 0x0001
   1342c:	0000                	.insn	2, 0x0000
   1342e:	0000                	.insn	2, 0x0000
   13430:	3420                	.insn	2, 0x3420
   13432:	0001                	.insn	2, 0x0001
   13434:	0000                	.insn	2, 0x0000
   13436:	0000                	.insn	2, 0x0000
   13438:	3420                	.insn	2, 0x3420
   1343a:	0001                	.insn	2, 0x0001
   1343c:	0000                	.insn	2, 0x0000
   1343e:	0000                	.insn	2, 0x0000
   13440:	3430                	.insn	2, 0x3430
   13442:	0001                	.insn	2, 0x0001
   13444:	0000                	.insn	2, 0x0000
   13446:	0000                	.insn	2, 0x0000
   13448:	3430                	.insn	2, 0x3430
   1344a:	0001                	.insn	2, 0x0001
   1344c:	0000                	.insn	2, 0x0000
   1344e:	0000                	.insn	2, 0x0000
   13450:	3440                	.insn	2, 0x3440
   13452:	0001                	.insn	2, 0x0001
   13454:	0000                	.insn	2, 0x0000
   13456:	0000                	.insn	2, 0x0000
   13458:	3440                	.insn	2, 0x3440
   1345a:	0001                	.insn	2, 0x0001
   1345c:	0000                	.insn	2, 0x0000
   1345e:	0000                	.insn	2, 0x0000
   13460:	3450                	.insn	2, 0x3450
   13462:	0001                	.insn	2, 0x0001
   13464:	0000                	.insn	2, 0x0000
   13466:	0000                	.insn	2, 0x0000
   13468:	3450                	.insn	2, 0x3450
   1346a:	0001                	.insn	2, 0x0001
   1346c:	0000                	.insn	2, 0x0000
   1346e:	0000                	.insn	2, 0x0000
   13470:	3460                	.insn	2, 0x3460
   13472:	0001                	.insn	2, 0x0001
   13474:	0000                	.insn	2, 0x0000
   13476:	0000                	.insn	2, 0x0000
   13478:	3460                	.insn	2, 0x3460
   1347a:	0001                	.insn	2, 0x0001
   1347c:	0000                	.insn	2, 0x0000
   1347e:	0000                	.insn	2, 0x0000
   13480:	3470                	.insn	2, 0x3470
   13482:	0001                	.insn	2, 0x0001
   13484:	0000                	.insn	2, 0x0000
   13486:	0000                	.insn	2, 0x0000
   13488:	3470                	.insn	2, 0x3470
   1348a:	0001                	.insn	2, 0x0001
   1348c:	0000                	.insn	2, 0x0000
   1348e:	0000                	.insn	2, 0x0000
   13490:	3480                	.insn	2, 0x3480
   13492:	0001                	.insn	2, 0x0001
   13494:	0000                	.insn	2, 0x0000
   13496:	0000                	.insn	2, 0x0000
   13498:	3480                	.insn	2, 0x3480
   1349a:	0001                	.insn	2, 0x0001
   1349c:	0000                	.insn	2, 0x0000
   1349e:	0000                	.insn	2, 0x0000
   134a0:	3490                	.insn	2, 0x3490
   134a2:	0001                	.insn	2, 0x0001
   134a4:	0000                	.insn	2, 0x0000
   134a6:	0000                	.insn	2, 0x0000
   134a8:	3490                	.insn	2, 0x3490
   134aa:	0001                	.insn	2, 0x0001
   134ac:	0000                	.insn	2, 0x0000
   134ae:	0000                	.insn	2, 0x0000
   134b0:	34a0                	.insn	2, 0x34a0
   134b2:	0001                	.insn	2, 0x0001
   134b4:	0000                	.insn	2, 0x0000
   134b6:	0000                	.insn	2, 0x0000
   134b8:	34a0                	.insn	2, 0x34a0
   134ba:	0001                	.insn	2, 0x0001
   134bc:	0000                	.insn	2, 0x0000
   134be:	0000                	.insn	2, 0x0000
   134c0:	34b0                	.insn	2, 0x34b0
   134c2:	0001                	.insn	2, 0x0001
   134c4:	0000                	.insn	2, 0x0000
   134c6:	0000                	.insn	2, 0x0000
   134c8:	34b0                	.insn	2, 0x34b0
   134ca:	0001                	.insn	2, 0x0001
   134cc:	0000                	.insn	2, 0x0000
   134ce:	0000                	.insn	2, 0x0000
   134d0:	34c0                	.insn	2, 0x34c0
   134d2:	0001                	.insn	2, 0x0001
   134d4:	0000                	.insn	2, 0x0000
   134d6:	0000                	.insn	2, 0x0000
   134d8:	34c0                	.insn	2, 0x34c0
   134da:	0001                	.insn	2, 0x0001
   134dc:	0000                	.insn	2, 0x0000
   134de:	0000                	.insn	2, 0x0000
   134e0:	34d0                	.insn	2, 0x34d0
   134e2:	0001                	.insn	2, 0x0001
   134e4:	0000                	.insn	2, 0x0000
   134e6:	0000                	.insn	2, 0x0000
   134e8:	34d0                	.insn	2, 0x34d0
   134ea:	0001                	.insn	2, 0x0001
   134ec:	0000                	.insn	2, 0x0000
   134ee:	0000                	.insn	2, 0x0000
   134f0:	34e0                	.insn	2, 0x34e0
   134f2:	0001                	.insn	2, 0x0001
   134f4:	0000                	.insn	2, 0x0000
   134f6:	0000                	.insn	2, 0x0000
   134f8:	34e0                	.insn	2, 0x34e0
   134fa:	0001                	.insn	2, 0x0001
   134fc:	0000                	.insn	2, 0x0000
   134fe:	0000                	.insn	2, 0x0000
   13500:	34f0                	.insn	2, 0x34f0
   13502:	0001                	.insn	2, 0x0001
   13504:	0000                	.insn	2, 0x0000
   13506:	0000                	.insn	2, 0x0000
   13508:	34f0                	.insn	2, 0x34f0
   1350a:	0001                	.insn	2, 0x0001
   1350c:	0000                	.insn	2, 0x0000
   1350e:	0000                	.insn	2, 0x0000
   13510:	3500                	.insn	2, 0x3500
   13512:	0001                	.insn	2, 0x0001
   13514:	0000                	.insn	2, 0x0000
   13516:	0000                	.insn	2, 0x0000
   13518:	3500                	.insn	2, 0x3500
   1351a:	0001                	.insn	2, 0x0001
   1351c:	0000                	.insn	2, 0x0000
   1351e:	0000                	.insn	2, 0x0000
   13520:	3510                	.insn	2, 0x3510
   13522:	0001                	.insn	2, 0x0001
   13524:	0000                	.insn	2, 0x0000
   13526:	0000                	.insn	2, 0x0000
   13528:	3510                	.insn	2, 0x3510
   1352a:	0001                	.insn	2, 0x0001
   1352c:	0000                	.insn	2, 0x0000
   1352e:	0000                	.insn	2, 0x0000
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
	...

Disassembly of section .sdata:

00000000000139c0 <__dso_handle>:
	...

00000000000139c8 <_impure_ptr>:
   139c8:	3058                	.insn	2, 0x3058
   139ca:	0001                	.insn	2, 0x0001
   139cc:	0000                	.insn	2, 0x0000
	...

00000000000139d0 <__malloc_sbrk_base>:
   139d0:	ffff                	.insn	2, 0xffff
   139d2:	ffff                	.insn	2, 0xffff
   139d4:	ffff                	.insn	2, 0xffff
   139d6:	ffff                	.insn	2, 0xffff

00000000000139d8 <__malloc_trim_threshold>:
   139d8:	0000                	.insn	2, 0x0000
   139da:	0002                	.insn	2, 0x0002
   139dc:	0000                	.insn	2, 0x0000
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

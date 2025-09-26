
test/build/without-syscall/mul-div.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	351000ef          	jal	10c84 <__call_exitprocs>
   10138:	1c81b783          	ld	a5,456(gp) # 139e0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	791010ef          	jal	120d8 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	fa050513          	addi	a0,a0,-96 # 11fa0 <__libc_fini_array>
   1015c:	4610006f          	j	10dbc <atexit>
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
   10184:	225000ef          	jal	10ba8 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c3450513          	addi	a0,a0,-972 # 10dbc <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	e0c50513          	addi	a0,a0,-500 # 11fa0 <__libc_fini_array>
   1019c:	421000ef          	jal	10dbc <atexit>
   101a0:	175000ef          	jal	10b14 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	06c000ef          	jal	1021c <main>
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
   101d8:	24850513          	addi	a0,a0,584 # 12248 <__EH_FRAME_BEGIN__>
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
   1020c:	24850513          	addi	a0,a0,584 # 12248 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	fe042623          	sw	zero,-20(s0)
   10230:	fe042623          	sw	zero,-20(s0)
   10234:	0540006f          	j	10288 <main+0x6c>
   10238:	000137b7          	lui	a5,0x13
   1023c:	01878713          	addi	a4,a5,24 # 13018 <result>
   10240:	fec42783          	lw	a5,-20(s0)
   10244:	00279793          	slli	a5,a5,0x2
   10248:	00f707b3          	add	a5,a4,a5
   1024c:	0007a783          	lw	a5,0(a5)
   10250:	00078713          	mv	a4,a5
   10254:	00070793          	mv	a5,a4
   10258:	0027979b          	slliw	a5,a5,0x2
   1025c:	00e787bb          	addw	a5,a5,a4
   10260:	0007871b          	sext.w	a4,a5
   10264:	000137b7          	lui	a5,0x13
   10268:	01878693          	addi	a3,a5,24 # 13018 <result>
   1026c:	fec42783          	lw	a5,-20(s0)
   10270:	00279793          	slli	a5,a5,0x2
   10274:	00f687b3          	add	a5,a3,a5
   10278:	00e7a023          	sw	a4,0(a5)
   1027c:	fec42783          	lw	a5,-20(s0)
   10280:	0017879b          	addiw	a5,a5,1
   10284:	fef42623          	sw	a5,-20(s0)
   10288:	fec42783          	lw	a5,-20(s0)
   1028c:	0007871b          	sext.w	a4,a5
   10290:	00400793          	li	a5,4
   10294:	fae7d2e3          	bge	a5,a4,10238 <main+0x1c>
   10298:	00500793          	li	a5,5
   1029c:	fef42623          	sw	a5,-20(s0)
   102a0:	0500006f          	j	102f0 <main+0xd4>
   102a4:	000137b7          	lui	a5,0x13
   102a8:	01878713          	addi	a4,a5,24 # 13018 <result>
   102ac:	fec42783          	lw	a5,-20(s0)
   102b0:	00279793          	slli	a5,a5,0x2
   102b4:	00f707b3          	add	a5,a4,a5
   102b8:	0007a783          	lw	a5,0(a5)
   102bc:	01f7d71b          	srliw	a4,a5,0x1f
   102c0:	00f707bb          	addw	a5,a4,a5
   102c4:	4017d79b          	sraiw	a5,a5,0x1
   102c8:	0007871b          	sext.w	a4,a5
   102cc:	000137b7          	lui	a5,0x13
   102d0:	01878693          	addi	a3,a5,24 # 13018 <result>
   102d4:	fec42783          	lw	a5,-20(s0)
   102d8:	00279793          	slli	a5,a5,0x2
   102dc:	00f687b3          	add	a5,a3,a5
   102e0:	00e7a023          	sw	a4,0(a5)
   102e4:	fec42783          	lw	a5,-20(s0)
   102e8:	0017879b          	addiw	a5,a5,1
   102ec:	fef42623          	sw	a5,-20(s0)
   102f0:	fec42783          	lw	a5,-20(s0)
   102f4:	0007871b          	sext.w	a4,a5
   102f8:	00900793          	li	a5,9
   102fc:	fae7d4e3          	bge	a5,a4,102a4 <main+0x88>
   10300:	00000793          	li	a5,0
   10304:	00078513          	mv	a0,a5
   10308:	01813083          	ld	ra,24(sp)
   1030c:	01013403          	ld	s0,16(sp)
   10310:	02010113          	addi	sp,sp,32
   10314:	00008067          	ret

0000000000010318 <__fp_lock>:
   10318:	00000513          	li	a0,0
   1031c:	00008067          	ret

0000000000010320 <stdio_exit_handler>:
   10320:	000125b7          	lui	a1,0x12
   10324:	00013537          	lui	a0,0x13
   10328:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   1032c:	ae458593          	addi	a1,a1,-1308 # 11ae4 <_fclose_r>
   10330:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   10334:	3400006f          	j	10674 <_fwalk_sglue>

0000000000010338 <cleanup_stdio>:
   10338:	00853583          	ld	a1,8(a0)
   1033c:	ff010113          	addi	sp,sp,-16
   10340:	00813023          	sd	s0,0(sp)
   10344:	00113423          	sd	ra,8(sp)
   10348:	23818793          	addi	a5,gp,568 # 13a50 <__sf>
   1034c:	00050413          	mv	s0,a0
   10350:	00f58463          	beq	a1,a5,10358 <cleanup_stdio+0x20>
   10354:	790010ef          	jal	11ae4 <_fclose_r>
   10358:	01043583          	ld	a1,16(s0)
   1035c:	2e818793          	addi	a5,gp,744 # 13b00 <__sf+0xb0>
   10360:	00f58663          	beq	a1,a5,1036c <cleanup_stdio+0x34>
   10364:	00040513          	mv	a0,s0
   10368:	77c010ef          	jal	11ae4 <_fclose_r>
   1036c:	01843583          	ld	a1,24(s0)
   10370:	39818793          	addi	a5,gp,920 # 13bb0 <__sf+0x160>
   10374:	00f58c63          	beq	a1,a5,1038c <cleanup_stdio+0x54>
   10378:	00040513          	mv	a0,s0
   1037c:	00013403          	ld	s0,0(sp)
   10380:	00813083          	ld	ra,8(sp)
   10384:	01010113          	addi	sp,sp,16
   10388:	75c0106f          	j	11ae4 <_fclose_r>
   1038c:	00813083          	ld	ra,8(sp)
   10390:	00013403          	ld	s0,0(sp)
   10394:	01010113          	addi	sp,sp,16
   10398:	00008067          	ret

000000000001039c <__fp_unlock>:
   1039c:	00000513          	li	a0,0
   103a0:	00008067          	ret

00000000000103a4 <global_stdio_init.part.0>:
   103a4:	fd010113          	addi	sp,sp,-48
   103a8:	000107b7          	lui	a5,0x10
   103ac:	02813023          	sd	s0,32(sp)
   103b0:	32078793          	addi	a5,a5,800 # 10320 <stdio_exit_handler>
   103b4:	23818413          	addi	s0,gp,568 # 13a50 <__sf>
   103b8:	02113423          	sd	ra,40(sp)
   103bc:	00913c23          	sd	s1,24(sp)
   103c0:	01213823          	sd	s2,16(sp)
   103c4:	01313423          	sd	s3,8(sp)
   103c8:	01413023          	sd	s4,0(sp)
   103cc:	1cf1b423          	sd	a5,456(gp) # 139e0 <__stdio_exit_handler>
   103d0:	00800613          	li	a2,8
   103d4:	00400793          	li	a5,4
   103d8:	00000593          	li	a1,0
   103dc:	2dc18513          	addi	a0,gp,732 # 13af4 <__sf+0xa4>
   103e0:	00f42823          	sw	a5,16(s0)
   103e4:	00043023          	sd	zero,0(s0)
   103e8:	00043423          	sd	zero,8(s0)
   103ec:	0a042623          	sw	zero,172(s0)
   103f0:	00043c23          	sd	zero,24(s0)
   103f4:	02042023          	sw	zero,32(s0)
   103f8:	02042423          	sw	zero,40(s0)
   103fc:	7ac000ef          	jal	10ba8 <memset>
   10400:	00010a37          	lui	s4,0x10
   10404:	000109b7          	lui	s3,0x10
   10408:	00011937          	lui	s2,0x11
   1040c:	000114b7          	lui	s1,0x11
   10410:	000107b7          	lui	a5,0x10
   10414:	744a0a13          	addi	s4,s4,1860 # 10744 <__sread>
   10418:	7a898993          	addi	s3,s3,1960 # 107a8 <__swrite>
   1041c:	83090913          	addi	s2,s2,-2000 # 10830 <__sseek>
   10420:	89448493          	addi	s1,s1,-1900 # 10894 <__sclose>
   10424:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10428:	00800613          	li	a2,8
   1042c:	00000593          	li	a1,0
   10430:	38c18513          	addi	a0,gp,908 # 13ba4 <__sf+0x154>
   10434:	0cf42023          	sw	a5,192(s0)
   10438:	03443c23          	sd	s4,56(s0)
   1043c:	05343023          	sd	s3,64(s0)
   10440:	05243423          	sd	s2,72(s0)
   10444:	04943823          	sd	s1,80(s0)
   10448:	02843823          	sd	s0,48(s0)
   1044c:	0a043823          	sd	zero,176(s0)
   10450:	0a043c23          	sd	zero,184(s0)
   10454:	14042e23          	sw	zero,348(s0)
   10458:	0c043423          	sd	zero,200(s0)
   1045c:	0c042823          	sw	zero,208(s0)
   10460:	0c042c23          	sw	zero,216(s0)
   10464:	744000ef          	jal	10ba8 <memset>
   10468:	000207b7          	lui	a5,0x20
   1046c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc072>
   10470:	2e818713          	addi	a4,gp,744 # 13b00 <__sf+0xb0>
   10474:	43c18513          	addi	a0,gp,1084 # 13c54 <__sf+0x204>
   10478:	00800613          	li	a2,8
   1047c:	00000593          	li	a1,0
   10480:	0f443423          	sd	s4,232(s0)
   10484:	0f343823          	sd	s3,240(s0)
   10488:	0f243c23          	sd	s2,248(s0)
   1048c:	10943023          	sd	s1,256(s0)
   10490:	16f42823          	sw	a5,368(s0)
   10494:	16043023          	sd	zero,352(s0)
   10498:	16043423          	sd	zero,360(s0)
   1049c:	20042623          	sw	zero,524(s0)
   104a0:	16043c23          	sd	zero,376(s0)
   104a4:	18042023          	sw	zero,384(s0)
   104a8:	18042423          	sw	zero,392(s0)
   104ac:	0ee43023          	sd	a4,224(s0)
   104b0:	6f8000ef          	jal	10ba8 <memset>
   104b4:	39818793          	addi	a5,gp,920 # 13bb0 <__sf+0x160>
   104b8:	19443c23          	sd	s4,408(s0)
   104bc:	1b343023          	sd	s3,416(s0)
   104c0:	1b243423          	sd	s2,424(s0)
   104c4:	1a943823          	sd	s1,432(s0)
   104c8:	02813083          	ld	ra,40(sp)
   104cc:	18f43823          	sd	a5,400(s0)
   104d0:	02013403          	ld	s0,32(sp)
   104d4:	01813483          	ld	s1,24(sp)
   104d8:	01013903          	ld	s2,16(sp)
   104dc:	00813983          	ld	s3,8(sp)
   104e0:	00013a03          	ld	s4,0(sp)
   104e4:	03010113          	addi	sp,sp,48
   104e8:	00008067          	ret

00000000000104ec <__sfp>:
   104ec:	1c81b783          	ld	a5,456(gp) # 139e0 <__stdio_exit_handler>
   104f0:	fd010113          	addi	sp,sp,-48
   104f4:	00913c23          	sd	s1,24(sp)
   104f8:	02113423          	sd	ra,40(sp)
   104fc:	02813023          	sd	s0,32(sp)
   10500:	00050493          	mv	s1,a0
   10504:	10078263          	beqz	a5,10608 <__sfp+0x11c>
   10508:	82818693          	addi	a3,gp,-2008 # 13040 <__sglue>
   1050c:	0086a703          	lw	a4,8(a3)
   10510:	08e05c63          	blez	a4,105a8 <__sfp+0xbc>
   10514:	02071713          	slli	a4,a4,0x20
   10518:	02075713          	srli	a4,a4,0x20
   1051c:	00171793          	slli	a5,a4,0x1
   10520:	00e787b3          	add	a5,a5,a4
   10524:	0106b403          	ld	s0,16(a3)
   10528:	00279793          	slli	a5,a5,0x2
   1052c:	40e787b3          	sub	a5,a5,a4
   10530:	00479793          	slli	a5,a5,0x4
   10534:	00f407b3          	add	a5,s0,a5
   10538:	00c0006f          	j	10544 <__sfp+0x58>
   1053c:	0b040413          	addi	s0,s0,176
   10540:	06f40463          	beq	s0,a5,105a8 <__sfp+0xbc>
   10544:	01041703          	lh	a4,16(s0)
   10548:	fe071ae3          	bnez	a4,1053c <__sfp+0x50>
   1054c:	ffff07b7          	lui	a5,0xffff0
   10550:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc061>
   10554:	00f42823          	sw	a5,16(s0)
   10558:	0a042623          	sw	zero,172(s0)
   1055c:	00043023          	sd	zero,0(s0)
   10560:	00043423          	sd	zero,8(s0)
   10564:	00043c23          	sd	zero,24(s0)
   10568:	02042023          	sw	zero,32(s0)
   1056c:	02042423          	sw	zero,40(s0)
   10570:	00800613          	li	a2,8
   10574:	00000593          	li	a1,0
   10578:	0a440513          	addi	a0,s0,164
   1057c:	62c000ef          	jal	10ba8 <memset>
   10580:	04043c23          	sd	zero,88(s0)
   10584:	06042023          	sw	zero,96(s0)
   10588:	06043c23          	sd	zero,120(s0)
   1058c:	08042023          	sw	zero,128(s0)
   10590:	02813083          	ld	ra,40(sp)
   10594:	00040513          	mv	a0,s0
   10598:	02013403          	ld	s0,32(sp)
   1059c:	01813483          	ld	s1,24(sp)
   105a0:	03010113          	addi	sp,sp,48
   105a4:	00008067          	ret
   105a8:	0006b403          	ld	s0,0(a3)
   105ac:	00040663          	beqz	s0,105b8 <__sfp+0xcc>
   105b0:	00040693          	mv	a3,s0
   105b4:	f59ff06f          	j	1050c <__sfp+0x20>
   105b8:	2d800593          	li	a1,728
   105bc:	00048513          	mv	a0,s1
   105c0:	00d13423          	sd	a3,8(sp)
   105c4:	435000ef          	jal	111f8 <_malloc_r>
   105c8:	00813683          	ld	a3,8(sp)
   105cc:	00050413          	mv	s0,a0
   105d0:	04050063          	beqz	a0,10610 <__sfp+0x124>
   105d4:	00400793          	li	a5,4
   105d8:	00f52423          	sw	a5,8(a0)
   105dc:	01850513          	addi	a0,a0,24
   105e0:	00043023          	sd	zero,0(s0)
   105e4:	00a43823          	sd	a0,16(s0)
   105e8:	2c000613          	li	a2,704
   105ec:	00000593          	li	a1,0
   105f0:	00d13423          	sd	a3,8(sp)
   105f4:	5b4000ef          	jal	10ba8 <memset>
   105f8:	00813683          	ld	a3,8(sp)
   105fc:	0086b023          	sd	s0,0(a3)
   10600:	00040693          	mv	a3,s0
   10604:	f09ff06f          	j	1050c <__sfp+0x20>
   10608:	d9dff0ef          	jal	103a4 <global_stdio_init.part.0>
   1060c:	efdff06f          	j	10508 <__sfp+0x1c>
   10610:	0006b023          	sd	zero,0(a3)
   10614:	00c00793          	li	a5,12
   10618:	00f4a023          	sw	a5,0(s1)
   1061c:	f75ff06f          	j	10590 <__sfp+0xa4>

0000000000010620 <__sinit>:
   10620:	04853783          	ld	a5,72(a0)
   10624:	00078463          	beqz	a5,1062c <__sinit+0xc>
   10628:	00008067          	ret
   1062c:	000107b7          	lui	a5,0x10
   10630:	1c81b703          	ld	a4,456(gp) # 139e0 <__stdio_exit_handler>
   10634:	33878793          	addi	a5,a5,824 # 10338 <cleanup_stdio>
   10638:	04f53423          	sd	a5,72(a0)
   1063c:	fe0716e3          	bnez	a4,10628 <__sinit+0x8>
   10640:	d65ff06f          	j	103a4 <global_stdio_init.part.0>

0000000000010644 <__sfp_lock_acquire>:
   10644:	00008067          	ret

0000000000010648 <__sfp_lock_release>:
   10648:	00008067          	ret

000000000001064c <__fp_lock_all>:
   1064c:	000105b7          	lui	a1,0x10
   10650:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10654:	31858593          	addi	a1,a1,792 # 10318 <__fp_lock>
   10658:	00000513          	li	a0,0
   1065c:	0180006f          	j	10674 <_fwalk_sglue>

0000000000010660 <__fp_unlock_all>:
   10660:	000105b7          	lui	a1,0x10
   10664:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10668:	39c58593          	addi	a1,a1,924 # 1039c <__fp_unlock>
   1066c:	00000513          	li	a0,0
   10670:	0040006f          	j	10674 <_fwalk_sglue>

0000000000010674 <_fwalk_sglue>:
   10674:	fb010113          	addi	sp,sp,-80
   10678:	03213823          	sd	s2,48(sp)
   1067c:	03313423          	sd	s3,40(sp)
   10680:	03413023          	sd	s4,32(sp)
   10684:	01513c23          	sd	s5,24(sp)
   10688:	01613823          	sd	s6,16(sp)
   1068c:	01713423          	sd	s7,8(sp)
   10690:	04113423          	sd	ra,72(sp)
   10694:	04813023          	sd	s0,64(sp)
   10698:	02913c23          	sd	s1,56(sp)
   1069c:	00060913          	mv	s2,a2
   106a0:	00050a13          	mv	s4,a0
   106a4:	00058a93          	mv	s5,a1
   106a8:	00000b13          	li	s6,0
   106ac:	00100b93          	li	s7,1
   106b0:	fff00993          	li	s3,-1
   106b4:	00892783          	lw	a5,8(s2)
   106b8:	04f05a63          	blez	a5,1070c <_fwalk_sglue+0x98>
   106bc:	02079793          	slli	a5,a5,0x20
   106c0:	0207d793          	srli	a5,a5,0x20
   106c4:	00179493          	slli	s1,a5,0x1
   106c8:	00f484b3          	add	s1,s1,a5
   106cc:	01093403          	ld	s0,16(s2)
   106d0:	00249493          	slli	s1,s1,0x2
   106d4:	40f484b3          	sub	s1,s1,a5
   106d8:	00449493          	slli	s1,s1,0x4
   106dc:	009404b3          	add	s1,s0,s1
   106e0:	01045783          	lhu	a5,16(s0)
   106e4:	02fbf063          	bgeu	s7,a5,10704 <_fwalk_sglue+0x90>
   106e8:	01241783          	lh	a5,18(s0)
   106ec:	00040593          	mv	a1,s0
   106f0:	000a0513          	mv	a0,s4
   106f4:	01378863          	beq	a5,s3,10704 <_fwalk_sglue+0x90>
   106f8:	000a80e7          	jalr	s5
   106fc:	01656b33          	or	s6,a0,s6
   10700:	000b0b1b          	sext.w	s6,s6
   10704:	0b040413          	addi	s0,s0,176
   10708:	fc941ce3          	bne	s0,s1,106e0 <_fwalk_sglue+0x6c>
   1070c:	00093903          	ld	s2,0(s2)
   10710:	fa0912e3          	bnez	s2,106b4 <_fwalk_sglue+0x40>
   10714:	04813083          	ld	ra,72(sp)
   10718:	04013403          	ld	s0,64(sp)
   1071c:	03813483          	ld	s1,56(sp)
   10720:	03013903          	ld	s2,48(sp)
   10724:	02813983          	ld	s3,40(sp)
   10728:	02013a03          	ld	s4,32(sp)
   1072c:	01813a83          	ld	s5,24(sp)
   10730:	00813b83          	ld	s7,8(sp)
   10734:	000b0513          	mv	a0,s6
   10738:	01013b03          	ld	s6,16(sp)
   1073c:	05010113          	addi	sp,sp,80
   10740:	00008067          	ret

0000000000010744 <__sread>:
   10744:	ff010113          	addi	sp,sp,-16
   10748:	00813023          	sd	s0,0(sp)
   1074c:	00058413          	mv	s0,a1
   10750:	01259583          	lh	a1,18(a1)
   10754:	00113423          	sd	ra,8(sp)
   10758:	2ec000ef          	jal	10a44 <_read_r>
   1075c:	02054063          	bltz	a0,1077c <__sread+0x38>
   10760:	09043783          	ld	a5,144(s0)
   10764:	00813083          	ld	ra,8(sp)
   10768:	00a787b3          	add	a5,a5,a0
   1076c:	08f43823          	sd	a5,144(s0)
   10770:	00013403          	ld	s0,0(sp)
   10774:	01010113          	addi	sp,sp,16
   10778:	00008067          	ret
   1077c:	01045783          	lhu	a5,16(s0)
   10780:	fffff737          	lui	a4,0xfffff
   10784:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   10788:	00e7f7b3          	and	a5,a5,a4
   1078c:	00813083          	ld	ra,8(sp)
   10790:	00f41823          	sh	a5,16(s0)
   10794:	00013403          	ld	s0,0(sp)
   10798:	01010113          	addi	sp,sp,16
   1079c:	00008067          	ret

00000000000107a0 <__seofread>:
   107a0:	00000513          	li	a0,0
   107a4:	00008067          	ret

00000000000107a8 <__swrite>:
   107a8:	01059783          	lh	a5,16(a1)
   107ac:	fd010113          	addi	sp,sp,-48
   107b0:	00068313          	mv	t1,a3
   107b4:	02113423          	sd	ra,40(sp)
   107b8:	1007f693          	andi	a3,a5,256
   107bc:	00058713          	mv	a4,a1
   107c0:	00060893          	mv	a7,a2
   107c4:	00050813          	mv	a6,a0
   107c8:	02069863          	bnez	a3,107f8 <__swrite+0x50>
   107cc:	fffff6b7          	lui	a3,0xfffff
   107d0:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   107d4:	02813083          	ld	ra,40(sp)
   107d8:	00d7f7b3          	and	a5,a5,a3
   107dc:	01271583          	lh	a1,18(a4)
   107e0:	00f71823          	sh	a5,16(a4)
   107e4:	00030693          	mv	a3,t1
   107e8:	00088613          	mv	a2,a7
   107ec:	00080513          	mv	a0,a6
   107f0:	03010113          	addi	sp,sp,48
   107f4:	2b80006f          	j	10aac <_write_r>
   107f8:	01259583          	lh	a1,18(a1)
   107fc:	00c13823          	sd	a2,16(sp)
   10800:	00200693          	li	a3,2
   10804:	00000613          	li	a2,0
   10808:	00613c23          	sd	t1,24(sp)
   1080c:	00e13023          	sd	a4,0(sp)
   10810:	00a13423          	sd	a0,8(sp)
   10814:	1c8000ef          	jal	109dc <_lseek_r>
   10818:	00013703          	ld	a4,0(sp)
   1081c:	01813303          	ld	t1,24(sp)
   10820:	01013883          	ld	a7,16(sp)
   10824:	01071783          	lh	a5,16(a4)
   10828:	00813803          	ld	a6,8(sp)
   1082c:	fa1ff06f          	j	107cc <__swrite+0x24>

0000000000010830 <__sseek>:
   10830:	ff010113          	addi	sp,sp,-16
   10834:	00813023          	sd	s0,0(sp)
   10838:	00058413          	mv	s0,a1
   1083c:	01259583          	lh	a1,18(a1)
   10840:	00113423          	sd	ra,8(sp)
   10844:	198000ef          	jal	109dc <_lseek_r>
   10848:	fff00713          	li	a4,-1
   1084c:	01041783          	lh	a5,16(s0)
   10850:	02e50263          	beq	a0,a4,10874 <__sseek+0x44>
   10854:	00001737          	lui	a4,0x1
   10858:	00e7e7b3          	or	a5,a5,a4
   1085c:	00813083          	ld	ra,8(sp)
   10860:	08a43823          	sd	a0,144(s0)
   10864:	00f41823          	sh	a5,16(s0)
   10868:	00013403          	ld	s0,0(sp)
   1086c:	01010113          	addi	sp,sp,16
   10870:	00008067          	ret
   10874:	80050713          	addi	a4,a0,-2048
   10878:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   1087c:	00e7f7b3          	and	a5,a5,a4
   10880:	00813083          	ld	ra,8(sp)
   10884:	00f41823          	sh	a5,16(s0)
   10888:	00013403          	ld	s0,0(sp)
   1088c:	01010113          	addi	sp,sp,16
   10890:	00008067          	ret

0000000000010894 <__sclose>:
   10894:	01259583          	lh	a1,18(a1)
   10898:	0040006f          	j	1089c <_close_r>

000000000001089c <_close_r>:
   1089c:	fe010113          	addi	sp,sp,-32
   108a0:	00813823          	sd	s0,16(sp)
   108a4:	00913423          	sd	s1,8(sp)
   108a8:	00050493          	mv	s1,a0
   108ac:	00058513          	mv	a0,a1
   108b0:	00113c23          	sd	ra,24(sp)
   108b4:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   108b8:	7e0010ef          	jal	12098 <_close>
   108bc:	fff00793          	li	a5,-1
   108c0:	00f50c63          	beq	a0,a5,108d8 <_close_r+0x3c>
   108c4:	01813083          	ld	ra,24(sp)
   108c8:	01013403          	ld	s0,16(sp)
   108cc:	00813483          	ld	s1,8(sp)
   108d0:	02010113          	addi	sp,sp,32
   108d4:	00008067          	ret
   108d8:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   108dc:	fe0784e3          	beqz	a5,108c4 <_close_r+0x28>
   108e0:	01813083          	ld	ra,24(sp)
   108e4:	01013403          	ld	s0,16(sp)
   108e8:	00f4a023          	sw	a5,0(s1)
   108ec:	00813483          	ld	s1,8(sp)
   108f0:	02010113          	addi	sp,sp,32
   108f4:	00008067          	ret

00000000000108f8 <_reclaim_reent>:
   108f8:	1b01b783          	ld	a5,432(gp) # 139c8 <_impure_ptr>
   108fc:	0ca78e63          	beq	a5,a0,109d8 <_reclaim_reent+0xe0>
   10900:	06853583          	ld	a1,104(a0)
   10904:	fd010113          	addi	sp,sp,-48
   10908:	00913c23          	sd	s1,24(sp)
   1090c:	02113423          	sd	ra,40(sp)
   10910:	02813023          	sd	s0,32(sp)
   10914:	00050493          	mv	s1,a0
   10918:	04058863          	beqz	a1,10968 <_reclaim_reent+0x70>
   1091c:	01213823          	sd	s2,16(sp)
   10920:	01313423          	sd	s3,8(sp)
   10924:	00000913          	li	s2,0
   10928:	20000993          	li	s3,512
   1092c:	012587b3          	add	a5,a1,s2
   10930:	0007b403          	ld	s0,0(a5)
   10934:	00040e63          	beqz	s0,10950 <_reclaim_reent+0x58>
   10938:	00040593          	mv	a1,s0
   1093c:	00043403          	ld	s0,0(s0)
   10940:	00048513          	mv	a0,s1
   10944:	5b0000ef          	jal	10ef4 <_free_r>
   10948:	fe0418e3          	bnez	s0,10938 <_reclaim_reent+0x40>
   1094c:	0684b583          	ld	a1,104(s1)
   10950:	00890913          	addi	s2,s2,8
   10954:	fd391ce3          	bne	s2,s3,1092c <_reclaim_reent+0x34>
   10958:	00048513          	mv	a0,s1
   1095c:	598000ef          	jal	10ef4 <_free_r>
   10960:	01013903          	ld	s2,16(sp)
   10964:	00813983          	ld	s3,8(sp)
   10968:	0504b583          	ld	a1,80(s1)
   1096c:	00058663          	beqz	a1,10978 <_reclaim_reent+0x80>
   10970:	00048513          	mv	a0,s1
   10974:	580000ef          	jal	10ef4 <_free_r>
   10978:	0604b403          	ld	s0,96(s1)
   1097c:	00040c63          	beqz	s0,10994 <_reclaim_reent+0x9c>
   10980:	00040593          	mv	a1,s0
   10984:	00043403          	ld	s0,0(s0)
   10988:	00048513          	mv	a0,s1
   1098c:	568000ef          	jal	10ef4 <_free_r>
   10990:	fe0418e3          	bnez	s0,10980 <_reclaim_reent+0x88>
   10994:	0784b583          	ld	a1,120(s1)
   10998:	00058663          	beqz	a1,109a4 <_reclaim_reent+0xac>
   1099c:	00048513          	mv	a0,s1
   109a0:	554000ef          	jal	10ef4 <_free_r>
   109a4:	0484b783          	ld	a5,72(s1)
   109a8:	00078e63          	beqz	a5,109c4 <_reclaim_reent+0xcc>
   109ac:	02013403          	ld	s0,32(sp)
   109b0:	02813083          	ld	ra,40(sp)
   109b4:	00048513          	mv	a0,s1
   109b8:	01813483          	ld	s1,24(sp)
   109bc:	03010113          	addi	sp,sp,48
   109c0:	00078067          	jr	a5
   109c4:	02813083          	ld	ra,40(sp)
   109c8:	02013403          	ld	s0,32(sp)
   109cc:	01813483          	ld	s1,24(sp)
   109d0:	03010113          	addi	sp,sp,48
   109d4:	00008067          	ret
   109d8:	00008067          	ret

00000000000109dc <_lseek_r>:
   109dc:	fe010113          	addi	sp,sp,-32
   109e0:	00058793          	mv	a5,a1
   109e4:	00813823          	sd	s0,16(sp)
   109e8:	00913423          	sd	s1,8(sp)
   109ec:	00060593          	mv	a1,a2
   109f0:	00050493          	mv	s1,a0
   109f4:	00068613          	mv	a2,a3
   109f8:	00078513          	mv	a0,a5
   109fc:	00113c23          	sd	ra,24(sp)
   10a00:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10a04:	704010ef          	jal	12108 <_lseek>
   10a08:	fff00793          	li	a5,-1
   10a0c:	00f50c63          	beq	a0,a5,10a24 <_lseek_r+0x48>
   10a10:	01813083          	ld	ra,24(sp)
   10a14:	01013403          	ld	s0,16(sp)
   10a18:	00813483          	ld	s1,8(sp)
   10a1c:	02010113          	addi	sp,sp,32
   10a20:	00008067          	ret
   10a24:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a28:	fe0784e3          	beqz	a5,10a10 <_lseek_r+0x34>
   10a2c:	01813083          	ld	ra,24(sp)
   10a30:	01013403          	ld	s0,16(sp)
   10a34:	00f4a023          	sw	a5,0(s1)
   10a38:	00813483          	ld	s1,8(sp)
   10a3c:	02010113          	addi	sp,sp,32
   10a40:	00008067          	ret

0000000000010a44 <_read_r>:
   10a44:	fe010113          	addi	sp,sp,-32
   10a48:	00058793          	mv	a5,a1
   10a4c:	00813823          	sd	s0,16(sp)
   10a50:	00913423          	sd	s1,8(sp)
   10a54:	00060593          	mv	a1,a2
   10a58:	00050493          	mv	s1,a0
   10a5c:	00068613          	mv	a2,a3
   10a60:	00078513          	mv	a0,a5
   10a64:	00113c23          	sd	ra,24(sp)
   10a68:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10a6c:	6dc010ef          	jal	12148 <_read>
   10a70:	fff00793          	li	a5,-1
   10a74:	00f50c63          	beq	a0,a5,10a8c <_read_r+0x48>
   10a78:	01813083          	ld	ra,24(sp)
   10a7c:	01013403          	ld	s0,16(sp)
   10a80:	00813483          	ld	s1,8(sp)
   10a84:	02010113          	addi	sp,sp,32
   10a88:	00008067          	ret
   10a8c:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a90:	fe0784e3          	beqz	a5,10a78 <_read_r+0x34>
   10a94:	01813083          	ld	ra,24(sp)
   10a98:	01013403          	ld	s0,16(sp)
   10a9c:	00f4a023          	sw	a5,0(s1)
   10aa0:	00813483          	ld	s1,8(sp)
   10aa4:	02010113          	addi	sp,sp,32
   10aa8:	00008067          	ret

0000000000010aac <_write_r>:
   10aac:	fe010113          	addi	sp,sp,-32
   10ab0:	00058793          	mv	a5,a1
   10ab4:	00813823          	sd	s0,16(sp)
   10ab8:	00913423          	sd	s1,8(sp)
   10abc:	00060593          	mv	a1,a2
   10ac0:	00050493          	mv	s1,a0
   10ac4:	00068613          	mv	a2,a3
   10ac8:	00078513          	mv	a0,a5
   10acc:	00113c23          	sd	ra,24(sp)
   10ad0:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10ad4:	72c010ef          	jal	12200 <_write>
   10ad8:	fff00793          	li	a5,-1
   10adc:	00f50c63          	beq	a0,a5,10af4 <_write_r+0x48>
   10ae0:	01813083          	ld	ra,24(sp)
   10ae4:	01013403          	ld	s0,16(sp)
   10ae8:	00813483          	ld	s1,8(sp)
   10aec:	02010113          	addi	sp,sp,32
   10af0:	00008067          	ret
   10af4:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10af8:	fe0784e3          	beqz	a5,10ae0 <_write_r+0x34>
   10afc:	01813083          	ld	ra,24(sp)
   10b00:	01013403          	ld	s0,16(sp)
   10b04:	00f4a023          	sw	a5,0(s1)
   10b08:	00813483          	ld	s1,8(sp)
   10b0c:	02010113          	addi	sp,sp,32
   10b10:	00008067          	ret

0000000000010b14 <__libc_init_array>:
   10b14:	fe010113          	addi	sp,sp,-32
   10b18:	00813823          	sd	s0,16(sp)
   10b1c:	01213023          	sd	s2,0(sp)
   10b20:	00013437          	lui	s0,0x13
   10b24:	00013937          	lui	s2,0x13
   10b28:	00113c23          	sd	ra,24(sp)
   10b2c:	00913423          	sd	s1,8(sp)
   10b30:	00090913          	mv	s2,s2
   10b34:	00040413          	mv	s0,s0
   10b38:	02890263          	beq	s2,s0,10b5c <__libc_init_array+0x48>
   10b3c:	40890933          	sub	s2,s2,s0
   10b40:	40395913          	srai	s2,s2,0x3
   10b44:	00000493          	li	s1,0
   10b48:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b4c:	00148493          	addi	s1,s1,1
   10b50:	00840413          	addi	s0,s0,8
   10b54:	000780e7          	jalr	a5
   10b58:	ff24e8e3          	bltu	s1,s2,10b48 <__libc_init_array+0x34>
   10b5c:	00013937          	lui	s2,0x13
   10b60:	00013437          	lui	s0,0x13
   10b64:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b68:	00040413          	mv	s0,s0
   10b6c:	02890263          	beq	s2,s0,10b90 <__libc_init_array+0x7c>
   10b70:	40890933          	sub	s2,s2,s0
   10b74:	40395913          	srai	s2,s2,0x3
   10b78:	00000493          	li	s1,0
   10b7c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b80:	00148493          	addi	s1,s1,1
   10b84:	00840413          	addi	s0,s0,8
   10b88:	000780e7          	jalr	a5
   10b8c:	ff24e8e3          	bltu	s1,s2,10b7c <__libc_init_array+0x68>
   10b90:	01813083          	ld	ra,24(sp)
   10b94:	01013403          	ld	s0,16(sp)
   10b98:	00813483          	ld	s1,8(sp)
   10b9c:	00013903          	ld	s2,0(sp)
   10ba0:	02010113          	addi	sp,sp,32
   10ba4:	00008067          	ret

0000000000010ba8 <memset>:
   10ba8:	00f00313          	li	t1,15
   10bac:	00050713          	mv	a4,a0
   10bb0:	02c37a63          	bgeu	t1,a2,10be4 <memset+0x3c>
   10bb4:	00f77793          	andi	a5,a4,15
   10bb8:	0a079063          	bnez	a5,10c58 <memset+0xb0>
   10bbc:	06059e63          	bnez	a1,10c38 <memset+0x90>
   10bc0:	ff067693          	andi	a3,a2,-16
   10bc4:	00f67613          	andi	a2,a2,15
   10bc8:	00e686b3          	add	a3,a3,a4
   10bcc:	00b73023          	sd	a1,0(a4)
   10bd0:	00b73423          	sd	a1,8(a4)
   10bd4:	01070713          	addi	a4,a4,16
   10bd8:	fed76ae3          	bltu	a4,a3,10bcc <memset+0x24>
   10bdc:	00061463          	bnez	a2,10be4 <memset+0x3c>
   10be0:	00008067          	ret
   10be4:	40c306b3          	sub	a3,t1,a2
   10be8:	00269693          	slli	a3,a3,0x2
   10bec:	00000297          	auipc	t0,0x0
   10bf0:	005686b3          	add	a3,a3,t0
   10bf4:	00c68067          	jr	12(a3)
   10bf8:	00b70723          	sb	a1,14(a4)
   10bfc:	00b706a3          	sb	a1,13(a4)
   10c00:	00b70623          	sb	a1,12(a4)
   10c04:	00b705a3          	sb	a1,11(a4)
   10c08:	00b70523          	sb	a1,10(a4)
   10c0c:	00b704a3          	sb	a1,9(a4)
   10c10:	00b70423          	sb	a1,8(a4)
   10c14:	00b703a3          	sb	a1,7(a4)
   10c18:	00b70323          	sb	a1,6(a4)
   10c1c:	00b702a3          	sb	a1,5(a4)
   10c20:	00b70223          	sb	a1,4(a4)
   10c24:	00b701a3          	sb	a1,3(a4)
   10c28:	00b70123          	sb	a1,2(a4)
   10c2c:	00b700a3          	sb	a1,1(a4)
   10c30:	00b70023          	sb	a1,0(a4)
   10c34:	00008067          	ret
   10c38:	0ff5f593          	zext.b	a1,a1
   10c3c:	00859693          	slli	a3,a1,0x8
   10c40:	00d5e5b3          	or	a1,a1,a3
   10c44:	01059693          	slli	a3,a1,0x10
   10c48:	00d5e5b3          	or	a1,a1,a3
   10c4c:	02059693          	slli	a3,a1,0x20
   10c50:	00d5e5b3          	or	a1,a1,a3
   10c54:	f6dff06f          	j	10bc0 <memset+0x18>
   10c58:	00279693          	slli	a3,a5,0x2
   10c5c:	00000297          	auipc	t0,0x0
   10c60:	005686b3          	add	a3,a3,t0
   10c64:	00008293          	mv	t0,ra
   10c68:	f98680e7          	jalr	-104(a3)
   10c6c:	00028093          	mv	ra,t0
   10c70:	ff078793          	addi	a5,a5,-16
   10c74:	40f70733          	sub	a4,a4,a5
   10c78:	00f60633          	add	a2,a2,a5
   10c7c:	f6c374e3          	bgeu	t1,a2,10be4 <memset+0x3c>
   10c80:	f3dff06f          	j	10bbc <memset+0x14>

0000000000010c84 <__call_exitprocs>:
   10c84:	fb010113          	addi	sp,sp,-80
   10c88:	03413023          	sd	s4,32(sp)
   10c8c:	03213823          	sd	s2,48(sp)
   10c90:	1d81b903          	ld	s2,472(gp) # 139f0 <__atexit>
   10c94:	04113423          	sd	ra,72(sp)
   10c98:	06090e63          	beqz	s2,10d14 <__call_exitprocs+0x90>
   10c9c:	03313423          	sd	s3,40(sp)
   10ca0:	01513c23          	sd	s5,24(sp)
   10ca4:	01613823          	sd	s6,16(sp)
   10ca8:	01713423          	sd	s7,8(sp)
   10cac:	04813023          	sd	s0,64(sp)
   10cb0:	02913c23          	sd	s1,56(sp)
   10cb4:	01813023          	sd	s8,0(sp)
   10cb8:	00050b13          	mv	s6,a0
   10cbc:	00058b93          	mv	s7,a1
   10cc0:	fff00993          	li	s3,-1
   10cc4:	00100a93          	li	s5,1
   10cc8:	00892403          	lw	s0,8(s2)
   10ccc:	fff4041b          	addiw	s0,s0,-1
   10cd0:	02044463          	bltz	s0,10cf8 <__call_exitprocs+0x74>
   10cd4:	01090493          	addi	s1,s2,16
   10cd8:	00341793          	slli	a5,s0,0x3
   10cdc:	00f484b3          	add	s1,s1,a5
   10ce0:	040b8463          	beqz	s7,10d28 <__call_exitprocs+0xa4>
   10ce4:	2004b783          	ld	a5,512(s1)
   10ce8:	05778063          	beq	a5,s7,10d28 <__call_exitprocs+0xa4>
   10cec:	fff4041b          	addiw	s0,s0,-1
   10cf0:	ff848493          	addi	s1,s1,-8
   10cf4:	ff3418e3          	bne	s0,s3,10ce4 <__call_exitprocs+0x60>
   10cf8:	04013403          	ld	s0,64(sp)
   10cfc:	03813483          	ld	s1,56(sp)
   10d00:	02813983          	ld	s3,40(sp)
   10d04:	01813a83          	ld	s5,24(sp)
   10d08:	01013b03          	ld	s6,16(sp)
   10d0c:	00813b83          	ld	s7,8(sp)
   10d10:	00013c03          	ld	s8,0(sp)
   10d14:	04813083          	ld	ra,72(sp)
   10d18:	03013903          	ld	s2,48(sp)
   10d1c:	02013a03          	ld	s4,32(sp)
   10d20:	05010113          	addi	sp,sp,80
   10d24:	00008067          	ret
   10d28:	00892783          	lw	a5,8(s2)
   10d2c:	0004b683          	ld	a3,0(s1)
   10d30:	fff7879b          	addiw	a5,a5,-1
   10d34:	06878a63          	beq	a5,s0,10da8 <__call_exitprocs+0x124>
   10d38:	0004b023          	sd	zero,0(s1)
   10d3c:	02068663          	beqz	a3,10d68 <__call_exitprocs+0xe4>
   10d40:	31092783          	lw	a5,784(s2)
   10d44:	008a973b          	sllw	a4,s5,s0
   10d48:	00892c03          	lw	s8,8(s2)
   10d4c:	00e7f7b3          	and	a5,a5,a4
   10d50:	02079463          	bnez	a5,10d78 <__call_exitprocs+0xf4>
   10d54:	000680e7          	jalr	a3
   10d58:	00892703          	lw	a4,8(s2)
   10d5c:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10d60:	03871e63          	bne	a4,s8,10d9c <__call_exitprocs+0x118>
   10d64:	03279c63          	bne	a5,s2,10d9c <__call_exitprocs+0x118>
   10d68:	fff4041b          	addiw	s0,s0,-1
   10d6c:	ff848493          	addi	s1,s1,-8
   10d70:	f73418e3          	bne	s0,s3,10ce0 <__call_exitprocs+0x5c>
   10d74:	f85ff06f          	j	10cf8 <__call_exitprocs+0x74>
   10d78:	31492783          	lw	a5,788(s2)
   10d7c:	1004b583          	ld	a1,256(s1)
   10d80:	00f77733          	and	a4,a4,a5
   10d84:	02071663          	bnez	a4,10db0 <__call_exitprocs+0x12c>
   10d88:	000b0513          	mv	a0,s6
   10d8c:	000680e7          	jalr	a3
   10d90:	00892703          	lw	a4,8(s2)
   10d94:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10d98:	fd8706e3          	beq	a4,s8,10d64 <__call_exitprocs+0xe0>
   10d9c:	f4078ee3          	beqz	a5,10cf8 <__call_exitprocs+0x74>
   10da0:	00078913          	mv	s2,a5
   10da4:	f25ff06f          	j	10cc8 <__call_exitprocs+0x44>
   10da8:	00892423          	sw	s0,8(s2)
   10dac:	f91ff06f          	j	10d3c <__call_exitprocs+0xb8>
   10db0:	00058513          	mv	a0,a1
   10db4:	000680e7          	jalr	a3
   10db8:	fa1ff06f          	j	10d58 <__call_exitprocs+0xd4>

0000000000010dbc <atexit>:
   10dbc:	00050593          	mv	a1,a0
   10dc0:	00000693          	li	a3,0
   10dc4:	00000613          	li	a2,0
   10dc8:	00000513          	li	a0,0
   10dcc:	2300106f          	j	11ffc <__register_exitproc>

0000000000010dd0 <_malloc_trim_r>:
   10dd0:	fd010113          	addi	sp,sp,-48
   10dd4:	01213823          	sd	s2,16(sp)
   10dd8:	00013937          	lui	s2,0x13
   10ddc:	02813023          	sd	s0,32(sp)
   10de0:	00913c23          	sd	s1,24(sp)
   10de4:	01313423          	sd	s3,8(sp)
   10de8:	00058413          	mv	s0,a1
   10dec:	02113423          	sd	ra,40(sp)
   10df0:	00050993          	mv	s3,a0
   10df4:	1b090913          	addi	s2,s2,432 # 131b0 <__malloc_av_>
   10df8:	4e5000ef          	jal	11adc <__malloc_lock>
   10dfc:	01093783          	ld	a5,16(s2)
   10e00:	00001737          	lui	a4,0x1
   10e04:	0087b483          	ld	s1,8(a5)
   10e08:	ffc4f493          	andi	s1,s1,-4
   10e0c:	7ff48793          	addi	a5,s1,2047
   10e10:	7e078793          	addi	a5,a5,2016
   10e14:	40878433          	sub	s0,a5,s0
   10e18:	00c45413          	srli	s0,s0,0xc
   10e1c:	fff40413          	addi	s0,s0,-1
   10e20:	00c41413          	slli	s0,s0,0xc
   10e24:	00e44e63          	blt	s0,a4,10e40 <_malloc_trim_r+0x70>
   10e28:	00000593          	li	a1,0
   10e2c:	00098513          	mv	a0,s3
   10e30:	114010ef          	jal	11f44 <_sbrk_r>
   10e34:	01093783          	ld	a5,16(s2)
   10e38:	009787b3          	add	a5,a5,s1
   10e3c:	02f50663          	beq	a0,a5,10e68 <_malloc_trim_r+0x98>
   10e40:	00098513          	mv	a0,s3
   10e44:	49d000ef          	jal	11ae0 <__malloc_unlock>
   10e48:	02813083          	ld	ra,40(sp)
   10e4c:	02013403          	ld	s0,32(sp)
   10e50:	01813483          	ld	s1,24(sp)
   10e54:	01013903          	ld	s2,16(sp)
   10e58:	00813983          	ld	s3,8(sp)
   10e5c:	00000513          	li	a0,0
   10e60:	03010113          	addi	sp,sp,48
   10e64:	00008067          	ret
   10e68:	408005b3          	neg	a1,s0
   10e6c:	00098513          	mv	a0,s3
   10e70:	0d4010ef          	jal	11f44 <_sbrk_r>
   10e74:	fff00793          	li	a5,-1
   10e78:	04f50463          	beq	a0,a5,10ec0 <_malloc_trim_r+0xf0>
   10e7c:	01093683          	ld	a3,16(s2)
   10e80:	4481a783          	lw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10e84:	408484b3          	sub	s1,s1,s0
   10e88:	0014e493          	ori	s1,s1,1
   10e8c:	00098513          	mv	a0,s3
   10e90:	408787bb          	subw	a5,a5,s0
   10e94:	0096b423          	sd	s1,8(a3)
   10e98:	44f1a423          	sw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10e9c:	445000ef          	jal	11ae0 <__malloc_unlock>
   10ea0:	02813083          	ld	ra,40(sp)
   10ea4:	02013403          	ld	s0,32(sp)
   10ea8:	01813483          	ld	s1,24(sp)
   10eac:	01013903          	ld	s2,16(sp)
   10eb0:	00813983          	ld	s3,8(sp)
   10eb4:	00100513          	li	a0,1
   10eb8:	03010113          	addi	sp,sp,48
   10ebc:	00008067          	ret
   10ec0:	00000593          	li	a1,0
   10ec4:	00098513          	mv	a0,s3
   10ec8:	07c010ef          	jal	11f44 <_sbrk_r>
   10ecc:	01093703          	ld	a4,16(s2)
   10ed0:	01f00693          	li	a3,31
   10ed4:	40e507b3          	sub	a5,a0,a4
   10ed8:	f6f6d4e3          	bge	a3,a5,10e40 <_malloc_trim_r+0x70>
   10edc:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   10ee0:	0017e793          	ori	a5,a5,1
   10ee4:	40c50533          	sub	a0,a0,a2
   10ee8:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10eec:	44a1a423          	sw	a0,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10ef0:	f51ff06f          	j	10e40 <_malloc_trim_r+0x70>

0000000000010ef4 <_free_r>:
   10ef4:	12058863          	beqz	a1,11024 <_free_r+0x130>
   10ef8:	fe010113          	addi	sp,sp,-32
   10efc:	00813823          	sd	s0,16(sp)
   10f00:	00b13423          	sd	a1,8(sp)
   10f04:	00050413          	mv	s0,a0
   10f08:	00113c23          	sd	ra,24(sp)
   10f0c:	3d1000ef          	jal	11adc <__malloc_lock>
   10f10:	00813583          	ld	a1,8(sp)
   10f14:	00013837          	lui	a6,0x13
   10f18:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   10f1c:	ff85b503          	ld	a0,-8(a1)
   10f20:	ff058713          	addi	a4,a1,-16
   10f24:	01083883          	ld	a7,16(a6)
   10f28:	ffe57793          	andi	a5,a0,-2
   10f2c:	00f70633          	add	a2,a4,a5
   10f30:	00863683          	ld	a3,8(a2)
   10f34:	00157313          	andi	t1,a0,1
   10f38:	ffc6f693          	andi	a3,a3,-4
   10f3c:	18c88e63          	beq	a7,a2,110d8 <_free_r+0x1e4>
   10f40:	00d63423          	sd	a3,8(a2)
   10f44:	00d608b3          	add	a7,a2,a3
   10f48:	0088b883          	ld	a7,8(a7)
   10f4c:	0018f893          	andi	a7,a7,1
   10f50:	08031e63          	bnez	t1,10fec <_free_r+0xf8>
   10f54:	ff05b303          	ld	t1,-16(a1)
   10f58:	000135b7          	lui	a1,0x13
   10f5c:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   10f60:	40670733          	sub	a4,a4,t1
   10f64:	01073503          	ld	a0,16(a4)
   10f68:	006787b3          	add	a5,a5,t1
   10f6c:	14b50063          	beq	a0,a1,110ac <_free_r+0x1b8>
   10f70:	01873303          	ld	t1,24(a4)
   10f74:	00653c23          	sd	t1,24(a0)
   10f78:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   10f7c:	1a088263          	beqz	a7,11120 <_free_r+0x22c>
   10f80:	0017e693          	ori	a3,a5,1
   10f84:	00d73423          	sd	a3,8(a4)
   10f88:	00f63023          	sd	a5,0(a2)
   10f8c:	1ff00693          	li	a3,511
   10f90:	0af6e663          	bltu	a3,a5,1103c <_free_r+0x148>
   10f94:	0037d793          	srli	a5,a5,0x3
   10f98:	00179693          	slli	a3,a5,0x1
   10f9c:	0026869b          	addiw	a3,a3,2
   10fa0:	00369693          	slli	a3,a3,0x3
   10fa4:	00883503          	ld	a0,8(a6)
   10fa8:	00d806b3          	add	a3,a6,a3
   10fac:	0006b583          	ld	a1,0(a3)
   10fb0:	4027d61b          	sraiw	a2,a5,0x2
   10fb4:	00100793          	li	a5,1
   10fb8:	00c797b3          	sll	a5,a5,a2
   10fbc:	00a7e7b3          	or	a5,a5,a0
   10fc0:	ff068613          	addi	a2,a3,-16
   10fc4:	00b73823          	sd	a1,16(a4)
   10fc8:	00c73c23          	sd	a2,24(a4)
   10fcc:	00f83423          	sd	a5,8(a6)
   10fd0:	00e6b023          	sd	a4,0(a3)
   10fd4:	00e5bc23          	sd	a4,24(a1)
   10fd8:	00040513          	mv	a0,s0
   10fdc:	01013403          	ld	s0,16(sp)
   10fe0:	01813083          	ld	ra,24(sp)
   10fe4:	02010113          	addi	sp,sp,32
   10fe8:	2f90006f          	j	11ae0 <__malloc_unlock>
   10fec:	02089e63          	bnez	a7,11028 <_free_r+0x134>
   10ff0:	000135b7          	lui	a1,0x13
   10ff4:	00d787b3          	add	a5,a5,a3
   10ff8:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   10ffc:	01063683          	ld	a3,16(a2)
   11000:	0017e893          	ori	a7,a5,1
   11004:	00f70533          	add	a0,a4,a5
   11008:	16b68663          	beq	a3,a1,11174 <_free_r+0x280>
   1100c:	01863603          	ld	a2,24(a2)
   11010:	00c6bc23          	sd	a2,24(a3)
   11014:	00d63823          	sd	a3,16(a2)
   11018:	01173423          	sd	a7,8(a4)
   1101c:	00f53023          	sd	a5,0(a0)
   11020:	f6dff06f          	j	10f8c <_free_r+0x98>
   11024:	00008067          	ret
   11028:	00156513          	ori	a0,a0,1
   1102c:	fea5bc23          	sd	a0,-8(a1)
   11030:	00f63023          	sd	a5,0(a2)
   11034:	1ff00693          	li	a3,511
   11038:	f4f6fee3          	bgeu	a3,a5,10f94 <_free_r+0xa0>
   1103c:	0097d693          	srli	a3,a5,0x9
   11040:	00400613          	li	a2,4
   11044:	0ed66263          	bltu	a2,a3,11128 <_free_r+0x234>
   11048:	0067d693          	srli	a3,a5,0x6
   1104c:	00169593          	slli	a1,a3,0x1
   11050:	0725859b          	addiw	a1,a1,114
   11054:	00359593          	slli	a1,a1,0x3
   11058:	0386861b          	addiw	a2,a3,56
   1105c:	00b805b3          	add	a1,a6,a1
   11060:	0005b683          	ld	a3,0(a1)
   11064:	ff058593          	addi	a1,a1,-16
   11068:	00d59863          	bne	a1,a3,11078 <_free_r+0x184>
   1106c:	1240006f          	j	11190 <_free_r+0x29c>
   11070:	0106b683          	ld	a3,16(a3)
   11074:	00d58863          	beq	a1,a3,11084 <_free_r+0x190>
   11078:	0086b603          	ld	a2,8(a3)
   1107c:	ffc67613          	andi	a2,a2,-4
   11080:	fec7e8e3          	bltu	a5,a2,11070 <_free_r+0x17c>
   11084:	0186b583          	ld	a1,24(a3)
   11088:	00b73c23          	sd	a1,24(a4)
   1108c:	00d73823          	sd	a3,16(a4)
   11090:	00040513          	mv	a0,s0
   11094:	01013403          	ld	s0,16(sp)
   11098:	01813083          	ld	ra,24(sp)
   1109c:	00e5b823          	sd	a4,16(a1)
   110a0:	00e6bc23          	sd	a4,24(a3)
   110a4:	02010113          	addi	sp,sp,32
   110a8:	2390006f          	j	11ae0 <__malloc_unlock>
   110ac:	0a089263          	bnez	a7,11150 <_free_r+0x25c>
   110b0:	01863583          	ld	a1,24(a2)
   110b4:	01063603          	ld	a2,16(a2)
   110b8:	00f686b3          	add	a3,a3,a5
   110bc:	0016e793          	ori	a5,a3,1
   110c0:	00b63c23          	sd	a1,24(a2)
   110c4:	00c5b823          	sd	a2,16(a1)
   110c8:	00f73423          	sd	a5,8(a4)
   110cc:	00d70733          	add	a4,a4,a3
   110d0:	00d73023          	sd	a3,0(a4)
   110d4:	f05ff06f          	j	10fd8 <_free_r+0xe4>
   110d8:	00d786b3          	add	a3,a5,a3
   110dc:	02031063          	bnez	t1,110fc <_free_r+0x208>
   110e0:	ff05b783          	ld	a5,-16(a1)
   110e4:	40f70733          	sub	a4,a4,a5
   110e8:	01073603          	ld	a2,16(a4)
   110ec:	00f686b3          	add	a3,a3,a5
   110f0:	01873783          	ld	a5,24(a4)
   110f4:	00f63c23          	sd	a5,24(a2)
   110f8:	00c7b823          	sd	a2,16(a5)
   110fc:	0016e613          	ori	a2,a3,1
   11100:	1c01b783          	ld	a5,448(gp) # 139d8 <__malloc_trim_threshold>
   11104:	00c73423          	sd	a2,8(a4)
   11108:	00e83823          	sd	a4,16(a6)
   1110c:	ecf6e6e3          	bltu	a3,a5,10fd8 <_free_r+0xe4>
   11110:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   11114:	00040513          	mv	a0,s0
   11118:	cb9ff0ef          	jal	10dd0 <_malloc_trim_r>
   1111c:	ebdff06f          	j	10fd8 <_free_r+0xe4>
   11120:	00d787b3          	add	a5,a5,a3
   11124:	ed9ff06f          	j	10ffc <_free_r+0x108>
   11128:	01400613          	li	a2,20
   1112c:	02d67a63          	bgeu	a2,a3,11160 <_free_r+0x26c>
   11130:	05400613          	li	a2,84
   11134:	06d66c63          	bltu	a2,a3,111ac <_free_r+0x2b8>
   11138:	00c7d693          	srli	a3,a5,0xc
   1113c:	00169593          	slli	a1,a3,0x1
   11140:	0de5859b          	addiw	a1,a1,222
   11144:	00359593          	slli	a1,a1,0x3
   11148:	06e6861b          	addiw	a2,a3,110
   1114c:	f11ff06f          	j	1105c <_free_r+0x168>
   11150:	0017e693          	ori	a3,a5,1
   11154:	00d73423          	sd	a3,8(a4)
   11158:	00f63023          	sd	a5,0(a2)
   1115c:	e7dff06f          	j	10fd8 <_free_r+0xe4>
   11160:	00169593          	slli	a1,a3,0x1
   11164:	0b85859b          	addiw	a1,a1,184
   11168:	00359593          	slli	a1,a1,0x3
   1116c:	05b6861b          	addiw	a2,a3,91
   11170:	eedff06f          	j	1105c <_free_r+0x168>
   11174:	02e83423          	sd	a4,40(a6)
   11178:	02e83023          	sd	a4,32(a6)
   1117c:	00b73c23          	sd	a1,24(a4)
   11180:	00b73823          	sd	a1,16(a4)
   11184:	01173423          	sd	a7,8(a4)
   11188:	00f53023          	sd	a5,0(a0)
   1118c:	e4dff06f          	j	10fd8 <_free_r+0xe4>
   11190:	00883503          	ld	a0,8(a6)
   11194:	4026561b          	sraiw	a2,a2,0x2
   11198:	00100793          	li	a5,1
   1119c:	00c797b3          	sll	a5,a5,a2
   111a0:	00a7e7b3          	or	a5,a5,a0
   111a4:	00f83423          	sd	a5,8(a6)
   111a8:	ee1ff06f          	j	11088 <_free_r+0x194>
   111ac:	15400613          	li	a2,340
   111b0:	00d66e63          	bltu	a2,a3,111cc <_free_r+0x2d8>
   111b4:	00f7d693          	srli	a3,a5,0xf
   111b8:	00169593          	slli	a1,a3,0x1
   111bc:	0f05859b          	addiw	a1,a1,240
   111c0:	00359593          	slli	a1,a1,0x3
   111c4:	0776861b          	addiw	a2,a3,119
   111c8:	e95ff06f          	j	1105c <_free_r+0x168>
   111cc:	55400613          	li	a2,1364
   111d0:	00d66e63          	bltu	a2,a3,111ec <_free_r+0x2f8>
   111d4:	0127d693          	srli	a3,a5,0x12
   111d8:	00169593          	slli	a1,a3,0x1
   111dc:	0fa5859b          	addiw	a1,a1,250
   111e0:	00359593          	slli	a1,a1,0x3
   111e4:	07c6861b          	addiw	a2,a3,124
   111e8:	e75ff06f          	j	1105c <_free_r+0x168>
   111ec:	7f000593          	li	a1,2032
   111f0:	07e00613          	li	a2,126
   111f4:	e69ff06f          	j	1105c <_free_r+0x168>

00000000000111f8 <_malloc_r>:
   111f8:	fa010113          	addi	sp,sp,-96
   111fc:	04813823          	sd	s0,80(sp)
   11200:	04113c23          	sd	ra,88(sp)
   11204:	01758713          	addi	a4,a1,23
   11208:	02e00793          	li	a5,46
   1120c:	00050413          	mv	s0,a0
   11210:	08e7ee63          	bltu	a5,a4,112ac <_malloc_r+0xb4>
   11214:	02000713          	li	a4,32
   11218:	06b76c63          	bltu	a4,a1,11290 <_malloc_r+0x98>
   1121c:	0c1000ef          	jal	11adc <__malloc_lock>
   11220:	02000713          	li	a4,32
   11224:	05000693          	li	a3,80
   11228:	00400893          	li	a7,4
   1122c:	00013837          	lui	a6,0x13
   11230:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   11234:	00d806b3          	add	a3,a6,a3
   11238:	0086b783          	ld	a5,8(a3)
   1123c:	ff068613          	addi	a2,a3,-16
   11240:	48c78063          	beq	a5,a2,116c0 <_malloc_r+0x4c8>
   11244:	0087b703          	ld	a4,8(a5)
   11248:	0187b603          	ld	a2,24(a5)
   1124c:	0107b583          	ld	a1,16(a5)
   11250:	ffc77713          	andi	a4,a4,-4
   11254:	00e78733          	add	a4,a5,a4
   11258:	00873683          	ld	a3,8(a4)
   1125c:	00c5bc23          	sd	a2,24(a1)
   11260:	00b63823          	sd	a1,16(a2)
   11264:	0016e693          	ori	a3,a3,1
   11268:	00040513          	mv	a0,s0
   1126c:	00d73423          	sd	a3,8(a4)
   11270:	00f13423          	sd	a5,8(sp)
   11274:	06d000ef          	jal	11ae0 <__malloc_unlock>
   11278:	00813783          	ld	a5,8(sp)
   1127c:	05813083          	ld	ra,88(sp)
   11280:	05013403          	ld	s0,80(sp)
   11284:	01078513          	addi	a0,a5,16
   11288:	06010113          	addi	sp,sp,96
   1128c:	00008067          	ret
   11290:	00c00793          	li	a5,12
   11294:	00f42023          	sw	a5,0(s0)
   11298:	00000513          	li	a0,0
   1129c:	05813083          	ld	ra,88(sp)
   112a0:	05013403          	ld	s0,80(sp)
   112a4:	06010113          	addi	sp,sp,96
   112a8:	00008067          	ret
   112ac:	00100793          	li	a5,1
   112b0:	ff077713          	andi	a4,a4,-16
   112b4:	01f79793          	slli	a5,a5,0x1f
   112b8:	fcf77ce3          	bgeu	a4,a5,11290 <_malloc_r+0x98>
   112bc:	fcb76ae3          	bltu	a4,a1,11290 <_malloc_r+0x98>
   112c0:	00e13423          	sd	a4,8(sp)
   112c4:	019000ef          	jal	11adc <__malloc_lock>
   112c8:	00813703          	ld	a4,8(sp)
   112cc:	1f700793          	li	a5,503
   112d0:	4ee7fa63          	bgeu	a5,a4,117c4 <_malloc_r+0x5cc>
   112d4:	00975793          	srli	a5,a4,0x9
   112d8:	18078a63          	beqz	a5,1146c <_malloc_r+0x274>
   112dc:	00400693          	li	a3,4
   112e0:	44f6ea63          	bltu	a3,a5,11734 <_malloc_r+0x53c>
   112e4:	00675793          	srli	a5,a4,0x6
   112e8:	0397889b          	addiw	a7,a5,57
   112ec:	0018951b          	slliw	a0,a7,0x1
   112f0:	03878e1b          	addiw	t3,a5,56
   112f4:	00351513          	slli	a0,a0,0x3
   112f8:	00013837          	lui	a6,0x13
   112fc:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   11300:	00a80533          	add	a0,a6,a0
   11304:	00853783          	ld	a5,8(a0)
   11308:	ff050513          	addi	a0,a0,-16
   1130c:	02f50863          	beq	a0,a5,1133c <_malloc_r+0x144>
   11310:	01f00313          	li	t1,31
   11314:	0140006f          	j	11328 <_malloc_r+0x130>
   11318:	0187b583          	ld	a1,24(a5)
   1131c:	36065263          	bgez	a2,11680 <_malloc_r+0x488>
   11320:	00b50e63          	beq	a0,a1,1133c <_malloc_r+0x144>
   11324:	00058793          	mv	a5,a1
   11328:	0087b683          	ld	a3,8(a5)
   1132c:	ffc6f693          	andi	a3,a3,-4
   11330:	40e68633          	sub	a2,a3,a4
   11334:	fec352e3          	bge	t1,a2,11318 <_malloc_r+0x120>
   11338:	000e0893          	mv	a7,t3
   1133c:	02083783          	ld	a5,32(a6)
   11340:	00013e37          	lui	t3,0x13
   11344:	1c0e0e13          	addi	t3,t3,448 # 131c0 <__malloc_av_+0x10>
   11348:	2fc78a63          	beq	a5,t3,1163c <_malloc_r+0x444>
   1134c:	0087b303          	ld	t1,8(a5)
   11350:	01f00613          	li	a2,31
   11354:	ffc37313          	andi	t1,t1,-4
   11358:	40e306b3          	sub	a3,t1,a4
   1135c:	4ad64463          	blt	a2,a3,11804 <_malloc_r+0x60c>
   11360:	03c83423          	sd	t3,40(a6)
   11364:	03c83023          	sd	t3,32(a6)
   11368:	4606da63          	bgez	a3,117dc <_malloc_r+0x5e4>
   1136c:	1ff00693          	li	a3,511
   11370:	00883583          	ld	a1,8(a6)
   11374:	3466ee63          	bltu	a3,t1,116d0 <_malloc_r+0x4d8>
   11378:	00335313          	srli	t1,t1,0x3
   1137c:	00131693          	slli	a3,t1,0x1
   11380:	0026869b          	addiw	a3,a3,2
   11384:	00369693          	slli	a3,a3,0x3
   11388:	00d806b3          	add	a3,a6,a3
   1138c:	0006b503          	ld	a0,0(a3)
   11390:	4023531b          	sraiw	t1,t1,0x2
   11394:	00100613          	li	a2,1
   11398:	00661633          	sll	a2,a2,t1
   1139c:	00c5e5b3          	or	a1,a1,a2
   113a0:	ff068613          	addi	a2,a3,-16
   113a4:	00a7b823          	sd	a0,16(a5)
   113a8:	00c7bc23          	sd	a2,24(a5)
   113ac:	00b83423          	sd	a1,8(a6)
   113b0:	00f6b023          	sd	a5,0(a3)
   113b4:	00f53c23          	sd	a5,24(a0)
   113b8:	4028d79b          	sraiw	a5,a7,0x2
   113bc:	00100513          	li	a0,1
   113c0:	00f51533          	sll	a0,a0,a5
   113c4:	0aa5ec63          	bltu	a1,a0,1147c <_malloc_r+0x284>
   113c8:	00b577b3          	and	a5,a0,a1
   113cc:	02079463          	bnez	a5,113f4 <_malloc_r+0x1fc>
   113d0:	00151513          	slli	a0,a0,0x1
   113d4:	ffc8f893          	andi	a7,a7,-4
   113d8:	00b577b3          	and	a5,a0,a1
   113dc:	0048889b          	addiw	a7,a7,4
   113e0:	00079a63          	bnez	a5,113f4 <_malloc_r+0x1fc>
   113e4:	00151513          	slli	a0,a0,0x1
   113e8:	00b577b3          	and	a5,a0,a1
   113ec:	0048889b          	addiw	a7,a7,4
   113f0:	fe078ae3          	beqz	a5,113e4 <_malloc_r+0x1ec>
   113f4:	01f00e93          	li	t4,31
   113f8:	00189f13          	slli	t5,a7,0x1
   113fc:	002f0f1b          	addiw	t5,t5,2
   11400:	003f1f13          	slli	t5,t5,0x3
   11404:	ff0f0f13          	addi	t5,t5,-16
   11408:	01e80f33          	add	t5,a6,t5
   1140c:	000f0313          	mv	t1,t5
   11410:	01833683          	ld	a3,24(t1)
   11414:	00088f93          	mv	t6,a7
   11418:	34d30263          	beq	t1,a3,1175c <_malloc_r+0x564>
   1141c:	0086b603          	ld	a2,8(a3)
   11420:	00068793          	mv	a5,a3
   11424:	0186b683          	ld	a3,24(a3)
   11428:	ffc67613          	andi	a2,a2,-4
   1142c:	40e605b3          	sub	a1,a2,a4
   11430:	34bec263          	blt	t4,a1,11774 <_malloc_r+0x57c>
   11434:	fe05c2e3          	bltz	a1,11418 <_malloc_r+0x220>
   11438:	00c78633          	add	a2,a5,a2
   1143c:	00863703          	ld	a4,8(a2)
   11440:	0107b583          	ld	a1,16(a5)
   11444:	00040513          	mv	a0,s0
   11448:	00176713          	ori	a4,a4,1
   1144c:	00e63423          	sd	a4,8(a2)
   11450:	00d5bc23          	sd	a3,24(a1)
   11454:	00b6b823          	sd	a1,16(a3)
   11458:	00f13423          	sd	a5,8(sp)
   1145c:	684000ef          	jal	11ae0 <__malloc_unlock>
   11460:	00813783          	ld	a5,8(sp)
   11464:	01078513          	addi	a0,a5,16
   11468:	e35ff06f          	j	1129c <_malloc_r+0xa4>
   1146c:	40000513          	li	a0,1024
   11470:	04000893          	li	a7,64
   11474:	03f00e13          	li	t3,63
   11478:	e81ff06f          	j	112f8 <_malloc_r+0x100>
   1147c:	01083783          	ld	a5,16(a6)
   11480:	0087b683          	ld	a3,8(a5)
   11484:	ffc6f893          	andi	a7,a3,-4
   11488:	40e88633          	sub	a2,a7,a4
   1148c:	00e8e663          	bltu	a7,a4,11498 <_malloc_r+0x2a0>
   11490:	02062693          	slti	a3,a2,32
   11494:	1a068863          	beqz	a3,11644 <_malloc_r+0x44c>
   11498:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   1149c:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   114a0:	fff00693          	li	a3,-1
   114a4:	00b705b3          	add	a1,a4,a1
   114a8:	44d60663          	beq	a2,a3,118f4 <_malloc_r+0x6fc>
   114ac:	000016b7          	lui	a3,0x1
   114b0:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   114b4:	00d585b3          	add	a1,a1,a3
   114b8:	fffff6b7          	lui	a3,0xfffff
   114bc:	00d5f5b3          	and	a1,a1,a3
   114c0:	00040513          	mv	a0,s0
   114c4:	03013423          	sd	a6,40(sp)
   114c8:	02f13023          	sd	a5,32(sp)
   114cc:	00e13c23          	sd	a4,24(sp)
   114d0:	01113823          	sd	a7,16(sp)
   114d4:	00b13423          	sd	a1,8(sp)
   114d8:	26d000ef          	jal	11f44 <_sbrk_r>
   114dc:	fff00693          	li	a3,-1
   114e0:	00813583          	ld	a1,8(sp)
   114e4:	01013883          	ld	a7,16(sp)
   114e8:	01813703          	ld	a4,24(sp)
   114ec:	02013783          	ld	a5,32(sp)
   114f0:	02813803          	ld	a6,40(sp)
   114f4:	00050313          	mv	t1,a0
   114f8:	36d50663          	beq	a0,a3,11864 <_malloc_r+0x66c>
   114fc:	011786b3          	add	a3,a5,a7
   11500:	36d56063          	bltu	a0,a3,11860 <_malloc_r+0x668>
   11504:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   11508:	000e2603          	lw	a2,0(t3)
   1150c:	00b6063b          	addw	a2,a2,a1
   11510:	00ce2023          	sw	a2,0(t3)
   11514:	00060513          	mv	a0,a2
   11518:	4a668c63          	beq	a3,t1,119d0 <_malloc_r+0x7d8>
   1151c:	1b81bf03          	ld	t5,440(gp) # 139d0 <__malloc_sbrk_base>
   11520:	fff00613          	li	a2,-1
   11524:	4ccf0463          	beq	t5,a2,119ec <_malloc_r+0x7f4>
   11528:	40d306b3          	sub	a3,t1,a3
   1152c:	00a686bb          	addw	a3,a3,a0
   11530:	00de2023          	sw	a3,0(t3)
   11534:	00f37e93          	andi	t4,t1,15
   11538:	3c0e8e63          	beqz	t4,11914 <_malloc_r+0x71c>
   1153c:	ff037313          	andi	t1,t1,-16
   11540:	000016b7          	lui	a3,0x1
   11544:	01030313          	addi	t1,t1,16
   11548:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   1154c:	00b30633          	add	a2,t1,a1
   11550:	41d685b3          	sub	a1,a3,t4
   11554:	40c585b3          	sub	a1,a1,a2
   11558:	03459593          	slli	a1,a1,0x34
   1155c:	0345d593          	srli	a1,a1,0x34
   11560:	00040513          	mv	a0,s0
   11564:	05c13023          	sd	t3,64(sp)
   11568:	03013c23          	sd	a6,56(sp)
   1156c:	02f13823          	sd	a5,48(sp)
   11570:	02e13423          	sd	a4,40(sp)
   11574:	03113023          	sd	a7,32(sp)
   11578:	00613c23          	sd	t1,24(sp)
   1157c:	01d13823          	sd	t4,16(sp)
   11580:	00c13423          	sd	a2,8(sp)
   11584:	04b13423          	sd	a1,72(sp)
   11588:	1bd000ef          	jal	11f44 <_sbrk_r>
   1158c:	00050693          	mv	a3,a0
   11590:	fff00513          	li	a0,-1
   11594:	00813603          	ld	a2,8(sp)
   11598:	01013e83          	ld	t4,16(sp)
   1159c:	01813303          	ld	t1,24(sp)
   115a0:	02013883          	ld	a7,32(sp)
   115a4:	02813703          	ld	a4,40(sp)
   115a8:	03013783          	ld	a5,48(sp)
   115ac:	03813803          	ld	a6,56(sp)
   115b0:	04013e03          	ld	t3,64(sp)
   115b4:	48a68663          	beq	a3,a0,11a40 <_malloc_r+0x848>
   115b8:	04813583          	ld	a1,72(sp)
   115bc:	0005851b          	sext.w	a0,a1
   115c0:	000e2603          	lw	a2,0(t3)
   115c4:	406686b3          	sub	a3,a3,t1
   115c8:	00b686b3          	add	a3,a3,a1
   115cc:	0016e693          	ori	a3,a3,1
   115d0:	00683823          	sd	t1,16(a6)
   115d4:	00a6063b          	addw	a2,a2,a0
   115d8:	00d33423          	sd	a3,8(t1)
   115dc:	00ce2023          	sw	a2,0(t3)
   115e0:	03078e63          	beq	a5,a6,1161c <_malloc_r+0x424>
   115e4:	01f00513          	li	a0,31
   115e8:	41157663          	bgeu	a0,a7,119f4 <_malloc_r+0x7fc>
   115ec:	0087b583          	ld	a1,8(a5)
   115f0:	fe888693          	addi	a3,a7,-24
   115f4:	ff06f693          	andi	a3,a3,-16
   115f8:	0015f593          	andi	a1,a1,1
   115fc:	00d5e5b3          	or	a1,a1,a3
   11600:	00b7b423          	sd	a1,8(a5)
   11604:	00900893          	li	a7,9
   11608:	00d785b3          	add	a1,a5,a3
   1160c:	0115b423          	sd	a7,8(a1)
   11610:	0115b823          	sd	a7,16(a1)
   11614:	44d56863          	bltu	a0,a3,11a64 <_malloc_r+0x86c>
   11618:	00833683          	ld	a3,8(t1)
   1161c:	1e81b583          	ld	a1,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   11620:	00c5f463          	bgeu	a1,a2,11628 <_malloc_r+0x430>
   11624:	1ec1b423          	sd	a2,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   11628:	1e01b583          	ld	a1,480(gp) # 139f8 <__malloc_max_total_mem>
   1162c:	00c5f463          	bgeu	a1,a2,11634 <_malloc_r+0x43c>
   11630:	1ec1b023          	sd	a2,480(gp) # 139f8 <__malloc_max_total_mem>
   11634:	00030793          	mv	a5,t1
   11638:	2340006f          	j	1186c <_malloc_r+0x674>
   1163c:	00883583          	ld	a1,8(a6)
   11640:	d79ff06f          	j	113b8 <_malloc_r+0x1c0>
   11644:	00176693          	ori	a3,a4,1
   11648:	00d7b423          	sd	a3,8(a5)
   1164c:	00e78733          	add	a4,a5,a4
   11650:	00166613          	ori	a2,a2,1
   11654:	00e83823          	sd	a4,16(a6)
   11658:	00040513          	mv	a0,s0
   1165c:	00c73423          	sd	a2,8(a4)
   11660:	00f13423          	sd	a5,8(sp)
   11664:	47c000ef          	jal	11ae0 <__malloc_unlock>
   11668:	00813783          	ld	a5,8(sp)
   1166c:	05813083          	ld	ra,88(sp)
   11670:	05013403          	ld	s0,80(sp)
   11674:	01078513          	addi	a0,a5,16
   11678:	06010113          	addi	sp,sp,96
   1167c:	00008067          	ret
   11680:	0107b603          	ld	a2,16(a5)
   11684:	00d786b3          	add	a3,a5,a3
   11688:	0086b703          	ld	a4,8(a3)
   1168c:	00b63c23          	sd	a1,24(a2)
   11690:	00c5b823          	sd	a2,16(a1)
   11694:	00176713          	ori	a4,a4,1
   11698:	00040513          	mv	a0,s0
   1169c:	00e6b423          	sd	a4,8(a3)
   116a0:	00f13423          	sd	a5,8(sp)
   116a4:	43c000ef          	jal	11ae0 <__malloc_unlock>
   116a8:	00813783          	ld	a5,8(sp)
   116ac:	05813083          	ld	ra,88(sp)
   116b0:	05013403          	ld	s0,80(sp)
   116b4:	01078513          	addi	a0,a5,16
   116b8:	06010113          	addi	sp,sp,96
   116bc:	00008067          	ret
   116c0:	0186b783          	ld	a5,24(a3)
   116c4:	0028889b          	addiw	a7,a7,2
   116c8:	c6f68ae3          	beq	a3,a5,1133c <_malloc_r+0x144>
   116cc:	b79ff06f          	j	11244 <_malloc_r+0x4c>
   116d0:	00935693          	srli	a3,t1,0x9
   116d4:	00400613          	li	a2,4
   116d8:	16d67863          	bgeu	a2,a3,11848 <_malloc_r+0x650>
   116dc:	01400613          	li	a2,20
   116e0:	28d66e63          	bltu	a2,a3,1197c <_malloc_r+0x784>
   116e4:	00169513          	slli	a0,a3,0x1
   116e8:	0b85051b          	addiw	a0,a0,184
   116ec:	00351513          	slli	a0,a0,0x3
   116f0:	05b6861b          	addiw	a2,a3,91
   116f4:	00a80533          	add	a0,a6,a0
   116f8:	00053683          	ld	a3,0(a0)
   116fc:	ff050513          	addi	a0,a0,-16
   11700:	00d51863          	bne	a0,a3,11710 <_malloc_r+0x518>
   11704:	1f80006f          	j	118fc <_malloc_r+0x704>
   11708:	0106b683          	ld	a3,16(a3)
   1170c:	00d50863          	beq	a0,a3,1171c <_malloc_r+0x524>
   11710:	0086b603          	ld	a2,8(a3)
   11714:	ffc67613          	andi	a2,a2,-4
   11718:	fec368e3          	bltu	t1,a2,11708 <_malloc_r+0x510>
   1171c:	0186b503          	ld	a0,24(a3)
   11720:	00a7bc23          	sd	a0,24(a5)
   11724:	00d7b823          	sd	a3,16(a5)
   11728:	00f53823          	sd	a5,16(a0)
   1172c:	00f6bc23          	sd	a5,24(a3)
   11730:	c89ff06f          	j	113b8 <_malloc_r+0x1c0>
   11734:	01400693          	li	a3,20
   11738:	14f6fa63          	bgeu	a3,a5,1188c <_malloc_r+0x694>
   1173c:	05400693          	li	a3,84
   11740:	24f6ee63          	bltu	a3,a5,1199c <_malloc_r+0x7a4>
   11744:	00c75793          	srli	a5,a4,0xc
   11748:	06f7889b          	addiw	a7,a5,111
   1174c:	0018951b          	slliw	a0,a7,0x1
   11750:	06e78e1b          	addiw	t3,a5,110
   11754:	00351513          	slli	a0,a0,0x3
   11758:	ba1ff06f          	j	112f8 <_malloc_r+0x100>
   1175c:	001f8f9b          	addiw	t6,t6,1
   11760:	003ff793          	andi	a5,t6,3
   11764:	01030313          	addi	t1,t1,16
   11768:	14078263          	beqz	a5,118ac <_malloc_r+0x6b4>
   1176c:	01833683          	ld	a3,24(t1)
   11770:	ca9ff06f          	j	11418 <_malloc_r+0x220>
   11774:	0107b503          	ld	a0,16(a5)
   11778:	00176893          	ori	a7,a4,1
   1177c:	0117b423          	sd	a7,8(a5)
   11780:	00d53c23          	sd	a3,24(a0)
   11784:	00a6b823          	sd	a0,16(a3)
   11788:	00e78733          	add	a4,a5,a4
   1178c:	02e83423          	sd	a4,40(a6)
   11790:	02e83023          	sd	a4,32(a6)
   11794:	0015e693          	ori	a3,a1,1
   11798:	00c78633          	add	a2,a5,a2
   1179c:	01c73c23          	sd	t3,24(a4)
   117a0:	01c73823          	sd	t3,16(a4)
   117a4:	00d73423          	sd	a3,8(a4)
   117a8:	00040513          	mv	a0,s0
   117ac:	00b63023          	sd	a1,0(a2)
   117b0:	00f13423          	sd	a5,8(sp)
   117b4:	32c000ef          	jal	11ae0 <__malloc_unlock>
   117b8:	00813783          	ld	a5,8(sp)
   117bc:	01078513          	addi	a0,a5,16
   117c0:	addff06f          	j	1129c <_malloc_r+0xa4>
   117c4:	00375893          	srli	a7,a4,0x3
   117c8:	00189693          	slli	a3,a7,0x1
   117cc:	0026869b          	addiw	a3,a3,2
   117d0:	00369693          	slli	a3,a3,0x3
   117d4:	0008889b          	sext.w	a7,a7
   117d8:	a55ff06f          	j	1122c <_malloc_r+0x34>
   117dc:	00678333          	add	t1,a5,t1
   117e0:	00833703          	ld	a4,8(t1)
   117e4:	00040513          	mv	a0,s0
   117e8:	00f13423          	sd	a5,8(sp)
   117ec:	00176713          	ori	a4,a4,1
   117f0:	00e33423          	sd	a4,8(t1)
   117f4:	2ec000ef          	jal	11ae0 <__malloc_unlock>
   117f8:	00813783          	ld	a5,8(sp)
   117fc:	01078513          	addi	a0,a5,16
   11800:	a9dff06f          	j	1129c <_malloc_r+0xa4>
   11804:	00176613          	ori	a2,a4,1
   11808:	00c7b423          	sd	a2,8(a5)
   1180c:	00e78733          	add	a4,a5,a4
   11810:	02e83423          	sd	a4,40(a6)
   11814:	02e83023          	sd	a4,32(a6)
   11818:	0016e613          	ori	a2,a3,1
   1181c:	00678333          	add	t1,a5,t1
   11820:	01c73c23          	sd	t3,24(a4)
   11824:	01c73823          	sd	t3,16(a4)
   11828:	00c73423          	sd	a2,8(a4)
   1182c:	00040513          	mv	a0,s0
   11830:	00d33023          	sd	a3,0(t1)
   11834:	00f13423          	sd	a5,8(sp)
   11838:	2a8000ef          	jal	11ae0 <__malloc_unlock>
   1183c:	00813783          	ld	a5,8(sp)
   11840:	01078513          	addi	a0,a5,16
   11844:	a59ff06f          	j	1129c <_malloc_r+0xa4>
   11848:	00635693          	srli	a3,t1,0x6
   1184c:	00169513          	slli	a0,a3,0x1
   11850:	0725051b          	addiw	a0,a0,114
   11854:	00351513          	slli	a0,a0,0x3
   11858:	0386861b          	addiw	a2,a3,56
   1185c:	e99ff06f          	j	116f4 <_malloc_r+0x4fc>
   11860:	15078e63          	beq	a5,a6,119bc <_malloc_r+0x7c4>
   11864:	01083783          	ld	a5,16(a6)
   11868:	0087b683          	ld	a3,8(a5)
   1186c:	ffc6f693          	andi	a3,a3,-4
   11870:	40e68633          	sub	a2,a3,a4
   11874:	00e6e663          	bltu	a3,a4,11880 <_malloc_r+0x688>
   11878:	02062693          	slti	a3,a2,32
   1187c:	dc0684e3          	beqz	a3,11644 <_malloc_r+0x44c>
   11880:	00040513          	mv	a0,s0
   11884:	25c000ef          	jal	11ae0 <__malloc_unlock>
   11888:	a11ff06f          	j	11298 <_malloc_r+0xa0>
   1188c:	05c7889b          	addiw	a7,a5,92
   11890:	0018951b          	slliw	a0,a7,0x1
   11894:	05b78e1b          	addiw	t3,a5,91
   11898:	00351513          	slli	a0,a0,0x3
   1189c:	a5dff06f          	j	112f8 <_malloc_r+0x100>
   118a0:	010f3783          	ld	a5,16(t5)
   118a4:	fff8889b          	addiw	a7,a7,-1
   118a8:	23e79663          	bne	a5,t5,11ad4 <_malloc_r+0x8dc>
   118ac:	0038f793          	andi	a5,a7,3
   118b0:	ff0f0f13          	addi	t5,t5,-16
   118b4:	fe0796e3          	bnez	a5,118a0 <_malloc_r+0x6a8>
   118b8:	00883683          	ld	a3,8(a6)
   118bc:	fff54793          	not	a5,a0
   118c0:	00d7f7b3          	and	a5,a5,a3
   118c4:	00f83423          	sd	a5,8(a6)
   118c8:	00151513          	slli	a0,a0,0x1
   118cc:	fff50693          	addi	a3,a0,-1
   118d0:	baf6f6e3          	bgeu	a3,a5,1147c <_malloc_r+0x284>
   118d4:	00f576b3          	and	a3,a0,a5
   118d8:	00069a63          	bnez	a3,118ec <_malloc_r+0x6f4>
   118dc:	00151513          	slli	a0,a0,0x1
   118e0:	00f576b3          	and	a3,a0,a5
   118e4:	004f8f9b          	addiw	t6,t6,4
   118e8:	fe068ae3          	beqz	a3,118dc <_malloc_r+0x6e4>
   118ec:	000f8893          	mv	a7,t6
   118f0:	b09ff06f          	j	113f8 <_malloc_r+0x200>
   118f4:	02058593          	addi	a1,a1,32
   118f8:	bc9ff06f          	j	114c0 <_malloc_r+0x2c8>
   118fc:	4026561b          	sraiw	a2,a2,0x2
   11900:	00100313          	li	t1,1
   11904:	00c31633          	sll	a2,t1,a2
   11908:	00c5e5b3          	or	a1,a1,a2
   1190c:	00b83423          	sd	a1,8(a6)
   11910:	e11ff06f          	j	11720 <_malloc_r+0x528>
   11914:	00b30633          	add	a2,t1,a1
   11918:	40c005b3          	neg	a1,a2
   1191c:	03459593          	slli	a1,a1,0x34
   11920:	0345d593          	srli	a1,a1,0x34
   11924:	00040513          	mv	a0,s0
   11928:	03c13c23          	sd	t3,56(sp)
   1192c:	03013823          	sd	a6,48(sp)
   11930:	02f13423          	sd	a5,40(sp)
   11934:	02e13023          	sd	a4,32(sp)
   11938:	01113c23          	sd	a7,24(sp)
   1193c:	00613823          	sd	t1,16(sp)
   11940:	00c13423          	sd	a2,8(sp)
   11944:	04b13023          	sd	a1,64(sp)
   11948:	5fc000ef          	jal	11f44 <_sbrk_r>
   1194c:	00050693          	mv	a3,a0
   11950:	fff00513          	li	a0,-1
   11954:	01013303          	ld	t1,16(sp)
   11958:	01813883          	ld	a7,24(sp)
   1195c:	02013703          	ld	a4,32(sp)
   11960:	02813783          	ld	a5,40(sp)
   11964:	03013803          	ld	a6,48(sp)
   11968:	03813e03          	ld	t3,56(sp)
   1196c:	0ea68463          	beq	a3,a0,11a54 <_malloc_r+0x85c>
   11970:	04013583          	ld	a1,64(sp)
   11974:	0005851b          	sext.w	a0,a1
   11978:	c49ff06f          	j	115c0 <_malloc_r+0x3c8>
   1197c:	05400613          	li	a2,84
   11980:	08d66063          	bltu	a2,a3,11a00 <_malloc_r+0x808>
   11984:	00c35693          	srli	a3,t1,0xc
   11988:	00169513          	slli	a0,a3,0x1
   1198c:	0de5051b          	addiw	a0,a0,222
   11990:	00351513          	slli	a0,a0,0x3
   11994:	06e6861b          	addiw	a2,a3,110
   11998:	d5dff06f          	j	116f4 <_malloc_r+0x4fc>
   1199c:	15400693          	li	a3,340
   119a0:	08f6e063          	bltu	a3,a5,11a20 <_malloc_r+0x828>
   119a4:	00f75793          	srli	a5,a4,0xf
   119a8:	0787889b          	addiw	a7,a5,120
   119ac:	0018951b          	slliw	a0,a7,0x1
   119b0:	07778e1b          	addiw	t3,a5,119
   119b4:	00351513          	slli	a0,a0,0x3
   119b8:	941ff06f          	j	112f8 <_malloc_r+0x100>
   119bc:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   119c0:	000e2503          	lw	a0,0(t3)
   119c4:	00b5053b          	addw	a0,a0,a1
   119c8:	00ae2023          	sw	a0,0(t3)
   119cc:	b51ff06f          	j	1151c <_malloc_r+0x324>
   119d0:	03431f13          	slli	t5,t1,0x34
   119d4:	b40f14e3          	bnez	t5,1151c <_malloc_r+0x324>
   119d8:	01083303          	ld	t1,16(a6)
   119dc:	00b885b3          	add	a1,a7,a1
   119e0:	0015e693          	ori	a3,a1,1
   119e4:	00d33423          	sd	a3,8(t1)
   119e8:	c35ff06f          	j	1161c <_malloc_r+0x424>
   119ec:	1a61bc23          	sd	t1,440(gp) # 139d0 <__malloc_sbrk_base>
   119f0:	b45ff06f          	j	11534 <_malloc_r+0x33c>
   119f4:	00100793          	li	a5,1
   119f8:	00f33423          	sd	a5,8(t1)
   119fc:	e85ff06f          	j	11880 <_malloc_r+0x688>
   11a00:	15400613          	li	a2,340
   11a04:	08d66a63          	bltu	a2,a3,11a98 <_malloc_r+0x8a0>
   11a08:	00f35693          	srli	a3,t1,0xf
   11a0c:	00169513          	slli	a0,a3,0x1
   11a10:	0f05051b          	addiw	a0,a0,240
   11a14:	00351513          	slli	a0,a0,0x3
   11a18:	0776861b          	addiw	a2,a3,119
   11a1c:	cd9ff06f          	j	116f4 <_malloc_r+0x4fc>
   11a20:	55400693          	li	a3,1364
   11a24:	08f6ea63          	bltu	a3,a5,11ab8 <_malloc_r+0x8c0>
   11a28:	01275793          	srli	a5,a4,0x12
   11a2c:	07d7889b          	addiw	a7,a5,125
   11a30:	0018951b          	slliw	a0,a7,0x1
   11a34:	07c78e1b          	addiw	t3,a5,124
   11a38:	00351513          	slli	a0,a0,0x3
   11a3c:	8bdff06f          	j	112f8 <_malloc_r+0x100>
   11a40:	ff0e8e93          	addi	t4,t4,-16
   11a44:	01d606b3          	add	a3,a2,t4
   11a48:	00000513          	li	a0,0
   11a4c:	00000593          	li	a1,0
   11a50:	b71ff06f          	j	115c0 <_malloc_r+0x3c8>
   11a54:	00813683          	ld	a3,8(sp)
   11a58:	00000593          	li	a1,0
   11a5c:	00000513          	li	a0,0
   11a60:	b61ff06f          	j	115c0 <_malloc_r+0x3c8>
   11a64:	01078593          	addi	a1,a5,16
   11a68:	00040513          	mv	a0,s0
   11a6c:	01c13c23          	sd	t3,24(sp)
   11a70:	01013823          	sd	a6,16(sp)
   11a74:	00e13423          	sd	a4,8(sp)
   11a78:	c7cff0ef          	jal	10ef4 <_free_r>
   11a7c:	01013803          	ld	a6,16(sp)
   11a80:	01813e03          	ld	t3,24(sp)
   11a84:	00813703          	ld	a4,8(sp)
   11a88:	01083303          	ld	t1,16(a6)
   11a8c:	000e2603          	lw	a2,0(t3)
   11a90:	00833683          	ld	a3,8(t1)
   11a94:	b89ff06f          	j	1161c <_malloc_r+0x424>
   11a98:	55400613          	li	a2,1364
   11a9c:	02d66663          	bltu	a2,a3,11ac8 <_malloc_r+0x8d0>
   11aa0:	01235693          	srli	a3,t1,0x12
   11aa4:	00169513          	slli	a0,a3,0x1
   11aa8:	0fa5051b          	addiw	a0,a0,250
   11aac:	00351513          	slli	a0,a0,0x3
   11ab0:	07c6861b          	addiw	a2,a3,124
   11ab4:	c41ff06f          	j	116f4 <_malloc_r+0x4fc>
   11ab8:	7f000513          	li	a0,2032
   11abc:	07f00893          	li	a7,127
   11ac0:	07e00e13          	li	t3,126
   11ac4:	835ff06f          	j	112f8 <_malloc_r+0x100>
   11ac8:	7f000513          	li	a0,2032
   11acc:	07e00613          	li	a2,126
   11ad0:	c25ff06f          	j	116f4 <_malloc_r+0x4fc>
   11ad4:	00883783          	ld	a5,8(a6)
   11ad8:	df1ff06f          	j	118c8 <_malloc_r+0x6d0>

0000000000011adc <__malloc_lock>:
   11adc:	00008067          	ret

0000000000011ae0 <__malloc_unlock>:
   11ae0:	00008067          	ret

0000000000011ae4 <_fclose_r>:
   11ae4:	fe010113          	addi	sp,sp,-32
   11ae8:	00113c23          	sd	ra,24(sp)
   11aec:	01213023          	sd	s2,0(sp)
   11af0:	02058863          	beqz	a1,11b20 <_fclose_r+0x3c>
   11af4:	00813823          	sd	s0,16(sp)
   11af8:	00913423          	sd	s1,8(sp)
   11afc:	00058413          	mv	s0,a1
   11b00:	00050493          	mv	s1,a0
   11b04:	00050663          	beqz	a0,11b10 <_fclose_r+0x2c>
   11b08:	04853783          	ld	a5,72(a0)
   11b0c:	0c078c63          	beqz	a5,11be4 <_fclose_r+0x100>
   11b10:	01041783          	lh	a5,16(s0)
   11b14:	02079263          	bnez	a5,11b38 <_fclose_r+0x54>
   11b18:	01013403          	ld	s0,16(sp)
   11b1c:	00813483          	ld	s1,8(sp)
   11b20:	01813083          	ld	ra,24(sp)
   11b24:	00000913          	li	s2,0
   11b28:	00090513          	mv	a0,s2
   11b2c:	00013903          	ld	s2,0(sp)
   11b30:	02010113          	addi	sp,sp,32
   11b34:	00008067          	ret
   11b38:	00040593          	mv	a1,s0
   11b3c:	00048513          	mv	a0,s1
   11b40:	0b8000ef          	jal	11bf8 <__sflush_r>
   11b44:	05043783          	ld	a5,80(s0)
   11b48:	00050913          	mv	s2,a0
   11b4c:	00078a63          	beqz	a5,11b60 <_fclose_r+0x7c>
   11b50:	03043583          	ld	a1,48(s0)
   11b54:	00048513          	mv	a0,s1
   11b58:	000780e7          	jalr	a5
   11b5c:	06054463          	bltz	a0,11bc4 <_fclose_r+0xe0>
   11b60:	01045783          	lhu	a5,16(s0)
   11b64:	0807f793          	andi	a5,a5,128
   11b68:	06079663          	bnez	a5,11bd4 <_fclose_r+0xf0>
   11b6c:	05843583          	ld	a1,88(s0)
   11b70:	00058c63          	beqz	a1,11b88 <_fclose_r+0xa4>
   11b74:	07440793          	addi	a5,s0,116
   11b78:	00f58663          	beq	a1,a5,11b84 <_fclose_r+0xa0>
   11b7c:	00048513          	mv	a0,s1
   11b80:	b74ff0ef          	jal	10ef4 <_free_r>
   11b84:	04043c23          	sd	zero,88(s0)
   11b88:	07843583          	ld	a1,120(s0)
   11b8c:	00058863          	beqz	a1,11b9c <_fclose_r+0xb8>
   11b90:	00048513          	mv	a0,s1
   11b94:	b60ff0ef          	jal	10ef4 <_free_r>
   11b98:	06043c23          	sd	zero,120(s0)
   11b9c:	aa9fe0ef          	jal	10644 <__sfp_lock_acquire>
   11ba0:	00041823          	sh	zero,16(s0)
   11ba4:	aa5fe0ef          	jal	10648 <__sfp_lock_release>
   11ba8:	01813083          	ld	ra,24(sp)
   11bac:	01013403          	ld	s0,16(sp)
   11bb0:	00813483          	ld	s1,8(sp)
   11bb4:	00090513          	mv	a0,s2
   11bb8:	00013903          	ld	s2,0(sp)
   11bbc:	02010113          	addi	sp,sp,32
   11bc0:	00008067          	ret
   11bc4:	01045783          	lhu	a5,16(s0)
   11bc8:	fff00913          	li	s2,-1
   11bcc:	0807f793          	andi	a5,a5,128
   11bd0:	f8078ee3          	beqz	a5,11b6c <_fclose_r+0x88>
   11bd4:	01843583          	ld	a1,24(s0)
   11bd8:	00048513          	mv	a0,s1
   11bdc:	b18ff0ef          	jal	10ef4 <_free_r>
   11be0:	f8dff06f          	j	11b6c <_fclose_r+0x88>
   11be4:	a3dfe0ef          	jal	10620 <__sinit>
   11be8:	f29ff06f          	j	11b10 <_fclose_r+0x2c>

0000000000011bec <fclose>:
   11bec:	00050593          	mv	a1,a0
   11bf0:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11bf4:	ef1ff06f          	j	11ae4 <_fclose_r>

0000000000011bf8 <__sflush_r>:
   11bf8:	01059703          	lh	a4,16(a1)
   11bfc:	fd010113          	addi	sp,sp,-48
   11c00:	02813023          	sd	s0,32(sp)
   11c04:	01313423          	sd	s3,8(sp)
   11c08:	02113423          	sd	ra,40(sp)
   11c0c:	00877793          	andi	a5,a4,8
   11c10:	00058413          	mv	s0,a1
   11c14:	00050993          	mv	s3,a0
   11c18:	12079263          	bnez	a5,11d3c <__sflush_r+0x144>
   11c1c:	000017b7          	lui	a5,0x1
   11c20:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c24:	0085a683          	lw	a3,8(a1)
   11c28:	00f767b3          	or	a5,a4,a5
   11c2c:	00f59823          	sh	a5,16(a1)
   11c30:	18d05c63          	blez	a3,11dc8 <__sflush_r+0x1d0>
   11c34:	04843803          	ld	a6,72(s0)
   11c38:	0e080663          	beqz	a6,11d24 <__sflush_r+0x12c>
   11c3c:	00913c23          	sd	s1,24(sp)
   11c40:	03371693          	slli	a3,a4,0x33
   11c44:	0009a483          	lw	s1,0(s3)
   11c48:	0009a023          	sw	zero,0(s3)
   11c4c:	1806ca63          	bltz	a3,11de0 <__sflush_r+0x1e8>
   11c50:	03043583          	ld	a1,48(s0)
   11c54:	00000613          	li	a2,0
   11c58:	00100693          	li	a3,1
   11c5c:	00098513          	mv	a0,s3
   11c60:	000800e7          	jalr	a6
   11c64:	fff00793          	li	a5,-1
   11c68:	00050613          	mv	a2,a0
   11c6c:	1af50c63          	beq	a0,a5,11e24 <__sflush_r+0x22c>
   11c70:	01041783          	lh	a5,16(s0)
   11c74:	04843803          	ld	a6,72(s0)
   11c78:	0047f793          	andi	a5,a5,4
   11c7c:	00078e63          	beqz	a5,11c98 <__sflush_r+0xa0>
   11c80:	00842703          	lw	a4,8(s0)
   11c84:	05843783          	ld	a5,88(s0)
   11c88:	40e60633          	sub	a2,a2,a4
   11c8c:	00078663          	beqz	a5,11c98 <__sflush_r+0xa0>
   11c90:	07042783          	lw	a5,112(s0)
   11c94:	40f60633          	sub	a2,a2,a5
   11c98:	03043583          	ld	a1,48(s0)
   11c9c:	00000693          	li	a3,0
   11ca0:	00098513          	mv	a0,s3
   11ca4:	000800e7          	jalr	a6
   11ca8:	fff00713          	li	a4,-1
   11cac:	01041783          	lh	a5,16(s0)
   11cb0:	12e51c63          	bne	a0,a4,11de8 <__sflush_r+0x1f0>
   11cb4:	0009a683          	lw	a3,0(s3)
   11cb8:	01d00713          	li	a4,29
   11cbc:	18d76263          	bltu	a4,a3,11e40 <__sflush_r+0x248>
   11cc0:	20400737          	lui	a4,0x20400
   11cc4:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec061>
   11cc8:	00d75733          	srl	a4,a4,a3
   11ccc:	00177713          	andi	a4,a4,1
   11cd0:	16070863          	beqz	a4,11e40 <__sflush_r+0x248>
   11cd4:	01843683          	ld	a3,24(s0)
   11cd8:	fffff737          	lui	a4,0xfffff
   11cdc:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11ce0:	00e7f733          	and	a4,a5,a4
   11ce4:	00e41823          	sh	a4,16(s0)
   11ce8:	00042423          	sw	zero,8(s0)
   11cec:	00d43023          	sd	a3,0(s0)
   11cf0:	03379713          	slli	a4,a5,0x33
   11cf4:	00075663          	bgez	a4,11d00 <__sflush_r+0x108>
   11cf8:	0009a783          	lw	a5,0(s3)
   11cfc:	10078863          	beqz	a5,11e0c <__sflush_r+0x214>
   11d00:	05843583          	ld	a1,88(s0)
   11d04:	0099a023          	sw	s1,0(s3)
   11d08:	10058a63          	beqz	a1,11e1c <__sflush_r+0x224>
   11d0c:	07440793          	addi	a5,s0,116
   11d10:	00f58663          	beq	a1,a5,11d1c <__sflush_r+0x124>
   11d14:	00098513          	mv	a0,s3
   11d18:	9dcff0ef          	jal	10ef4 <_free_r>
   11d1c:	01813483          	ld	s1,24(sp)
   11d20:	04043c23          	sd	zero,88(s0)
   11d24:	02813083          	ld	ra,40(sp)
   11d28:	02013403          	ld	s0,32(sp)
   11d2c:	00813983          	ld	s3,8(sp)
   11d30:	00000513          	li	a0,0
   11d34:	03010113          	addi	sp,sp,48
   11d38:	00008067          	ret
   11d3c:	01213823          	sd	s2,16(sp)
   11d40:	0185b903          	ld	s2,24(a1)
   11d44:	08090a63          	beqz	s2,11dd8 <__sflush_r+0x1e0>
   11d48:	00913c23          	sd	s1,24(sp)
   11d4c:	0005b483          	ld	s1,0(a1)
   11d50:	00377713          	andi	a4,a4,3
   11d54:	0125b023          	sd	s2,0(a1)
   11d58:	412484bb          	subw	s1,s1,s2
   11d5c:	00000793          	li	a5,0
   11d60:	00071463          	bnez	a4,11d68 <__sflush_r+0x170>
   11d64:	0205a783          	lw	a5,32(a1)
   11d68:	00f42623          	sw	a5,12(s0)
   11d6c:	00904863          	bgtz	s1,11d7c <__sflush_r+0x184>
   11d70:	0640006f          	j	11dd4 <__sflush_r+0x1dc>
   11d74:	00a90933          	add	s2,s2,a0
   11d78:	04905e63          	blez	s1,11dd4 <__sflush_r+0x1dc>
   11d7c:	04043783          	ld	a5,64(s0)
   11d80:	03043583          	ld	a1,48(s0)
   11d84:	00048693          	mv	a3,s1
   11d88:	00090613          	mv	a2,s2
   11d8c:	00098513          	mv	a0,s3
   11d90:	000780e7          	jalr	a5
   11d94:	40a484bb          	subw	s1,s1,a0
   11d98:	fca04ee3          	bgtz	a0,11d74 <__sflush_r+0x17c>
   11d9c:	01045783          	lhu	a5,16(s0)
   11da0:	01013903          	ld	s2,16(sp)
   11da4:	0407e793          	ori	a5,a5,64
   11da8:	02813083          	ld	ra,40(sp)
   11dac:	00f41823          	sh	a5,16(s0)
   11db0:	02013403          	ld	s0,32(sp)
   11db4:	01813483          	ld	s1,24(sp)
   11db8:	00813983          	ld	s3,8(sp)
   11dbc:	fff00513          	li	a0,-1
   11dc0:	03010113          	addi	sp,sp,48
   11dc4:	00008067          	ret
   11dc8:	0705a683          	lw	a3,112(a1)
   11dcc:	e6d044e3          	bgtz	a3,11c34 <__sflush_r+0x3c>
   11dd0:	f55ff06f          	j	11d24 <__sflush_r+0x12c>
   11dd4:	01813483          	ld	s1,24(sp)
   11dd8:	01013903          	ld	s2,16(sp)
   11ddc:	f49ff06f          	j	11d24 <__sflush_r+0x12c>
   11de0:	09043603          	ld	a2,144(s0)
   11de4:	e95ff06f          	j	11c78 <__sflush_r+0x80>
   11de8:	01843683          	ld	a3,24(s0)
   11dec:	fffff737          	lui	a4,0xfffff
   11df0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11df4:	00e7f733          	and	a4,a5,a4
   11df8:	00e41823          	sh	a4,16(s0)
   11dfc:	00042423          	sw	zero,8(s0)
   11e00:	00d43023          	sd	a3,0(s0)
   11e04:	03379713          	slli	a4,a5,0x33
   11e08:	ee075ce3          	bgez	a4,11d00 <__sflush_r+0x108>
   11e0c:	05843583          	ld	a1,88(s0)
   11e10:	08a43823          	sd	a0,144(s0)
   11e14:	0099a023          	sw	s1,0(s3)
   11e18:	ee059ae3          	bnez	a1,11d0c <__sflush_r+0x114>
   11e1c:	01813483          	ld	s1,24(sp)
   11e20:	f05ff06f          	j	11d24 <__sflush_r+0x12c>
   11e24:	0009a783          	lw	a5,0(s3)
   11e28:	e40784e3          	beqz	a5,11c70 <__sflush_r+0x78>
   11e2c:	fe378713          	addi	a4,a5,-29
   11e30:	00070c63          	beqz	a4,11e48 <__sflush_r+0x250>
   11e34:	fea78793          	addi	a5,a5,-22
   11e38:	00078863          	beqz	a5,11e48 <__sflush_r+0x250>
   11e3c:	01045783          	lhu	a5,16(s0)
   11e40:	0407e793          	ori	a5,a5,64
   11e44:	f65ff06f          	j	11da8 <__sflush_r+0x1b0>
   11e48:	0099a023          	sw	s1,0(s3)
   11e4c:	01813483          	ld	s1,24(sp)
   11e50:	ed5ff06f          	j	11d24 <__sflush_r+0x12c>

0000000000011e54 <_fflush_r>:
   11e54:	00050793          	mv	a5,a0
   11e58:	00050663          	beqz	a0,11e64 <_fflush_r+0x10>
   11e5c:	04853703          	ld	a4,72(a0)
   11e60:	00070e63          	beqz	a4,11e7c <_fflush_r+0x28>
   11e64:	01059703          	lh	a4,16(a1)
   11e68:	00071663          	bnez	a4,11e74 <_fflush_r+0x20>
   11e6c:	00000513          	li	a0,0
   11e70:	00008067          	ret
   11e74:	00078513          	mv	a0,a5
   11e78:	d81ff06f          	j	11bf8 <__sflush_r>
   11e7c:	fe010113          	addi	sp,sp,-32
   11e80:	00b13423          	sd	a1,8(sp)
   11e84:	00113c23          	sd	ra,24(sp)
   11e88:	00a13023          	sd	a0,0(sp)
   11e8c:	f94fe0ef          	jal	10620 <__sinit>
   11e90:	00813583          	ld	a1,8(sp)
   11e94:	00013783          	ld	a5,0(sp)
   11e98:	01059703          	lh	a4,16(a1)
   11e9c:	00070a63          	beqz	a4,11eb0 <_fflush_r+0x5c>
   11ea0:	01813083          	ld	ra,24(sp)
   11ea4:	00078513          	mv	a0,a5
   11ea8:	02010113          	addi	sp,sp,32
   11eac:	d4dff06f          	j	11bf8 <__sflush_r>
   11eb0:	01813083          	ld	ra,24(sp)
   11eb4:	00000513          	li	a0,0
   11eb8:	02010113          	addi	sp,sp,32
   11ebc:	00008067          	ret

0000000000011ec0 <fflush>:
   11ec0:	06050063          	beqz	a0,11f20 <fflush+0x60>
   11ec4:	00050593          	mv	a1,a0
   11ec8:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11ecc:	00050663          	beqz	a0,11ed8 <fflush+0x18>
   11ed0:	04853783          	ld	a5,72(a0)
   11ed4:	00078c63          	beqz	a5,11eec <fflush+0x2c>
   11ed8:	01059783          	lh	a5,16(a1)
   11edc:	00079663          	bnez	a5,11ee8 <fflush+0x28>
   11ee0:	00000513          	li	a0,0
   11ee4:	00008067          	ret
   11ee8:	d11ff06f          	j	11bf8 <__sflush_r>
   11eec:	fe010113          	addi	sp,sp,-32
   11ef0:	00b13423          	sd	a1,8(sp)
   11ef4:	00a13023          	sd	a0,0(sp)
   11ef8:	00113c23          	sd	ra,24(sp)
   11efc:	f24fe0ef          	jal	10620 <__sinit>
   11f00:	00813583          	ld	a1,8(sp)
   11f04:	00013503          	ld	a0,0(sp)
   11f08:	01059783          	lh	a5,16(a1)
   11f0c:	02079663          	bnez	a5,11f38 <fflush+0x78>
   11f10:	01813083          	ld	ra,24(sp)
   11f14:	00000513          	li	a0,0
   11f18:	02010113          	addi	sp,sp,32
   11f1c:	00008067          	ret
   11f20:	000125b7          	lui	a1,0x12
   11f24:	00013537          	lui	a0,0x13
   11f28:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   11f2c:	e5458593          	addi	a1,a1,-428 # 11e54 <_fflush_r>
   11f30:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   11f34:	f40fe06f          	j	10674 <_fwalk_sglue>
   11f38:	01813083          	ld	ra,24(sp)
   11f3c:	02010113          	addi	sp,sp,32
   11f40:	cb9ff06f          	j	11bf8 <__sflush_r>

0000000000011f44 <_sbrk_r>:
   11f44:	fe010113          	addi	sp,sp,-32
   11f48:	00813823          	sd	s0,16(sp)
   11f4c:	00913423          	sd	s1,8(sp)
   11f50:	00050493          	mv	s1,a0
   11f54:	00058513          	mv	a0,a1
   11f58:	00113c23          	sd	ra,24(sp)
   11f5c:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   11f60:	228000ef          	jal	12188 <_sbrk>
   11f64:	fff00793          	li	a5,-1
   11f68:	00f50c63          	beq	a0,a5,11f80 <_sbrk_r+0x3c>
   11f6c:	01813083          	ld	ra,24(sp)
   11f70:	01013403          	ld	s0,16(sp)
   11f74:	00813483          	ld	s1,8(sp)
   11f78:	02010113          	addi	sp,sp,32
   11f7c:	00008067          	ret
   11f80:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   11f84:	fe0784e3          	beqz	a5,11f6c <_sbrk_r+0x28>
   11f88:	01813083          	ld	ra,24(sp)
   11f8c:	01013403          	ld	s0,16(sp)
   11f90:	00f4a023          	sw	a5,0(s1)
   11f94:	00813483          	ld	s1,8(sp)
   11f98:	02010113          	addi	sp,sp,32
   11f9c:	00008067          	ret

0000000000011fa0 <__libc_fini_array>:
   11fa0:	fe010113          	addi	sp,sp,-32
   11fa4:	00813823          	sd	s0,16(sp)
   11fa8:	000137b7          	lui	a5,0x13
   11fac:	00013437          	lui	s0,0x13
   11fb0:	01878793          	addi	a5,a5,24 # 13018 <result>
   11fb4:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11fb8:	408787b3          	sub	a5,a5,s0
   11fbc:	00913423          	sd	s1,8(sp)
   11fc0:	00113c23          	sd	ra,24(sp)
   11fc4:	4037d493          	srai	s1,a5,0x3
   11fc8:	02048063          	beqz	s1,11fe8 <__libc_fini_array+0x48>
   11fcc:	ff840413          	addi	s0,s0,-8
   11fd0:	00f40433          	add	s0,s0,a5
   11fd4:	00043783          	ld	a5,0(s0)
   11fd8:	fff48493          	addi	s1,s1,-1
   11fdc:	ff840413          	addi	s0,s0,-8
   11fe0:	000780e7          	jalr	a5
   11fe4:	fe0498e3          	bnez	s1,11fd4 <__libc_fini_array+0x34>
   11fe8:	01813083          	ld	ra,24(sp)
   11fec:	01013403          	ld	s0,16(sp)
   11ff0:	00813483          	ld	s1,8(sp)
   11ff4:	02010113          	addi	sp,sp,32
   11ff8:	00008067          	ret

0000000000011ffc <__register_exitproc>:
   11ffc:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   12000:	04078e63          	beqz	a5,1205c <__register_exitproc+0x60>
   12004:	0087a703          	lw	a4,8(a5)
   12008:	01f00813          	li	a6,31
   1200c:	08e84263          	blt	a6,a4,12090 <__register_exitproc+0x94>
   12010:	02050863          	beqz	a0,12040 <__register_exitproc+0x44>
   12014:	00371813          	slli	a6,a4,0x3
   12018:	01078833          	add	a6,a5,a6
   1201c:	10c83823          	sd	a2,272(a6)
   12020:	3107a883          	lw	a7,784(a5)
   12024:	00100613          	li	a2,1
   12028:	00e6163b          	sllw	a2,a2,a4
   1202c:	00c8e8b3          	or	a7,a7,a2
   12030:	3117a823          	sw	a7,784(a5)
   12034:	20d83823          	sd	a3,528(a6)
   12038:	00200693          	li	a3,2
   1203c:	02d50663          	beq	a0,a3,12068 <__register_exitproc+0x6c>
   12040:	0017069b          	addiw	a3,a4,1
   12044:	00371713          	slli	a4,a4,0x3
   12048:	00d7a423          	sw	a3,8(a5)
   1204c:	00e787b3          	add	a5,a5,a4
   12050:	00b7b823          	sd	a1,16(a5)
   12054:	00000513          	li	a0,0
   12058:	00008067          	ret
   1205c:	47018793          	addi	a5,gp,1136 # 13c88 <__atexit0>
   12060:	1cf1bc23          	sd	a5,472(gp) # 139f0 <__atexit>
   12064:	fa1ff06f          	j	12004 <__register_exitproc+0x8>
   12068:	3147a683          	lw	a3,788(a5)
   1206c:	00000513          	li	a0,0
   12070:	00d66633          	or	a2,a2,a3
   12074:	0017069b          	addiw	a3,a4,1
   12078:	00371713          	slli	a4,a4,0x3
   1207c:	30c7aa23          	sw	a2,788(a5)
   12080:	00d7a423          	sw	a3,8(a5)
   12084:	00e787b3          	add	a5,a5,a4
   12088:	00b7b823          	sd	a1,16(a5)
   1208c:	00008067          	ret
   12090:	fff00513          	li	a0,-1
   12094:	00008067          	ret

0000000000012098 <_close>:
   12098:	03900893          	li	a7,57
   1209c:	00000073          	ecall
   120a0:	00054663          	bltz	a0,120ac <_close+0x14>
   120a4:	0005051b          	sext.w	a0,a0
   120a8:	00008067          	ret
   120ac:	fe010113          	addi	sp,sp,-32
   120b0:	00113c23          	sd	ra,24(sp)
   120b4:	00a13423          	sd	a0,8(sp)
   120b8:	188000ef          	jal	12240 <__errno>
   120bc:	00813783          	ld	a5,8(sp)
   120c0:	01813083          	ld	ra,24(sp)
   120c4:	40f007bb          	negw	a5,a5
   120c8:	00f52023          	sw	a5,0(a0)
   120cc:	fff00513          	li	a0,-1
   120d0:	02010113          	addi	sp,sp,32
   120d4:	00008067          	ret

00000000000120d8 <_exit>:
   120d8:	05d00893          	li	a7,93
   120dc:	00000073          	ecall
   120e0:	00054463          	bltz	a0,120e8 <_exit+0x10>
   120e4:	0000006f          	j	120e4 <_exit+0xc>
   120e8:	fe010113          	addi	sp,sp,-32
   120ec:	00113c23          	sd	ra,24(sp)
   120f0:	00a13423          	sd	a0,8(sp)
   120f4:	14c000ef          	jal	12240 <__errno>
   120f8:	00813783          	ld	a5,8(sp)
   120fc:	40f007bb          	negw	a5,a5
   12100:	00f52023          	sw	a5,0(a0)
   12104:	0000006f          	j	12104 <_exit+0x2c>

0000000000012108 <_lseek>:
   12108:	03e00893          	li	a7,62
   1210c:	00000073          	ecall
   12110:	00054463          	bltz	a0,12118 <_lseek+0x10>
   12114:	00008067          	ret
   12118:	fe010113          	addi	sp,sp,-32
   1211c:	00113c23          	sd	ra,24(sp)
   12120:	00a13423          	sd	a0,8(sp)
   12124:	11c000ef          	jal	12240 <__errno>
   12128:	00813783          	ld	a5,8(sp)
   1212c:	01813083          	ld	ra,24(sp)
   12130:	40f007bb          	negw	a5,a5
   12134:	00f52023          	sw	a5,0(a0)
   12138:	fff00793          	li	a5,-1
   1213c:	00078513          	mv	a0,a5
   12140:	02010113          	addi	sp,sp,32
   12144:	00008067          	ret

0000000000012148 <_read>:
   12148:	03f00893          	li	a7,63
   1214c:	00000073          	ecall
   12150:	00054463          	bltz	a0,12158 <_read+0x10>
   12154:	00008067          	ret
   12158:	fe010113          	addi	sp,sp,-32
   1215c:	00113c23          	sd	ra,24(sp)
   12160:	00a13423          	sd	a0,8(sp)
   12164:	0dc000ef          	jal	12240 <__errno>
   12168:	00813783          	ld	a5,8(sp)
   1216c:	01813083          	ld	ra,24(sp)
   12170:	40f007bb          	negw	a5,a5
   12174:	00f52023          	sw	a5,0(a0)
   12178:	fff00793          	li	a5,-1
   1217c:	00078513          	mv	a0,a5
   12180:	02010113          	addi	sp,sp,32
   12184:	00008067          	ret

0000000000012188 <_sbrk>:
   12188:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   1218c:	ff010113          	addi	sp,sp,-16
   12190:	00113423          	sd	ra,8(sp)
   12194:	00050713          	mv	a4,a0
   12198:	02079063          	bnez	a5,121b8 <_sbrk+0x30>
   1219c:	0d600893          	li	a7,214
   121a0:	00000513          	li	a0,0
   121a4:	00000073          	ecall
   121a8:	fff00793          	li	a5,-1
   121ac:	02f50c63          	beq	a0,a5,121e4 <_sbrk+0x5c>
   121b0:	00050793          	mv	a5,a0
   121b4:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   121b8:	00f70533          	add	a0,a4,a5
   121bc:	0d600893          	li	a7,214
   121c0:	00000073          	ecall
   121c4:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   121c8:	00f70733          	add	a4,a4,a5
   121cc:	00e51c63          	bne	a0,a4,121e4 <_sbrk+0x5c>
   121d0:	00813083          	ld	ra,8(sp)
   121d4:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   121d8:	00078513          	mv	a0,a5
   121dc:	01010113          	addi	sp,sp,16
   121e0:	00008067          	ret
   121e4:	05c000ef          	jal	12240 <__errno>
   121e8:	00813083          	ld	ra,8(sp)
   121ec:	00c00793          	li	a5,12
   121f0:	00f52023          	sw	a5,0(a0)
   121f4:	fff00513          	li	a0,-1
   121f8:	01010113          	addi	sp,sp,16
   121fc:	00008067          	ret

0000000000012200 <_write>:
   12200:	04000893          	li	a7,64
   12204:	00000073          	ecall
   12208:	00054463          	bltz	a0,12210 <_write+0x10>
   1220c:	00008067          	ret
   12210:	fe010113          	addi	sp,sp,-32
   12214:	00113c23          	sd	ra,24(sp)
   12218:	00a13423          	sd	a0,8(sp)
   1221c:	024000ef          	jal	12240 <__errno>
   12220:	00813783          	ld	a5,8(sp)
   12224:	01813083          	ld	ra,24(sp)
   12228:	40f007bb          	negw	a5,a5
   1222c:	00f52023          	sw	a5,0(a0)
   12230:	fff00793          	li	a5,-1
   12234:	00078513          	mv	a0,a5
   12238:	02010113          	addi	sp,sp,32
   1223c:	00008067          	ret

0000000000012240 <__errno>:
   12240:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   12244:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012248 <__EH_FRAME_BEGIN__>:
   12248:	0000                	.insn	2, 0x0000
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
   1302c:	0002                	.insn	2, 0x0002
   1302e:	0000                	.insn	2, 0x0000
   13030:	0004                	.insn	2, 0x0004
   13032:	0000                	.insn	2, 0x0000
   13034:	0006                	.insn	2, 0x0006
   13036:	0000                	.insn	2, 0x0000
   13038:	0008                	.insn	2, 0x0008
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


test/build/without-syscall/mul-div.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	345000ef          	jal	10c78 <__call_exitprocs>
   10138:	1c81b783          	ld	a5,456(gp) # 139e0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	785010ef          	jal	120cc <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	f9450513          	addi	a0,a0,-108 # 11f94 <__libc_fini_array>
   1015c:	4550006f          	j	10db0 <atexit>
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
   10184:	219000ef          	jal	10b9c <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c2850513          	addi	a0,a0,-984 # 10db0 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	e0050513          	addi	a0,a0,-512 # 11f94 <__libc_fini_array>
   1019c:	415000ef          	jal	10db0 <atexit>
   101a0:	169000ef          	jal	10b08 <__libc_init_array>
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
   101d8:	24050513          	addi	a0,a0,576 # 12240 <__EH_FRAME_BEGIN__>
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
   1020c:	24050513          	addi	a0,a0,576 # 12240 <__EH_FRAME_BEGIN__>
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
   1032c:	ad858593          	addi	a1,a1,-1320 # 11ad8 <_fclose_r>
   10330:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   10334:	3380006f          	j	1066c <_fwalk_sglue>

0000000000010338 <cleanup_stdio>:
   10338:	00853583          	ld	a1,8(a0)
   1033c:	ff010113          	addi	sp,sp,-16
   10340:	00813023          	sd	s0,0(sp)
   10344:	00113423          	sd	ra,8(sp)
   10348:	23818793          	addi	a5,gp,568 # 13a50 <__sf>
   1034c:	00050413          	mv	s0,a0
   10350:	00f58463          	beq	a1,a5,10358 <cleanup_stdio+0x20>
   10354:	784010ef          	jal	11ad8 <_fclose_r>
   10358:	01043583          	ld	a1,16(s0)
   1035c:	2e818793          	addi	a5,gp,744 # 13b00 <__sf+0xb0>
   10360:	00f58663          	beq	a1,a5,1036c <cleanup_stdio+0x34>
   10364:	00040513          	mv	a0,s0
   10368:	770010ef          	jal	11ad8 <_fclose_r>
   1036c:	01843583          	ld	a1,24(s0)
   10370:	39818793          	addi	a5,gp,920 # 13bb0 <__sf+0x160>
   10374:	00f58c63          	beq	a1,a5,1038c <cleanup_stdio+0x54>
   10378:	00040513          	mv	a0,s0
   1037c:	00013403          	ld	s0,0(sp)
   10380:	00813083          	ld	ra,8(sp)
   10384:	01010113          	addi	sp,sp,16
   10388:	7500106f          	j	11ad8 <_fclose_r>
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
   103fc:	7a0000ef          	jal	10b9c <memset>
   10400:	00010a37          	lui	s4,0x10
   10404:	000109b7          	lui	s3,0x10
   10408:	00011937          	lui	s2,0x11
   1040c:	000114b7          	lui	s1,0x11
   10410:	000107b7          	lui	a5,0x10
   10414:	738a0a13          	addi	s4,s4,1848 # 10738 <__sread>
   10418:	79c98993          	addi	s3,s3,1948 # 1079c <__swrite>
   1041c:	82490913          	addi	s2,s2,-2012 # 10824 <__sseek>
   10420:	88848493          	addi	s1,s1,-1912 # 10888 <__sclose>
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
   10464:	738000ef          	jal	10b9c <memset>
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
   104b0:	6ec000ef          	jal	10b9c <memset>
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
   10504:	0e078e63          	beqz	a5,10600 <__sfp+0x114>
   10508:	82818693          	addi	a3,gp,-2008 # 13040 <__sglue>
   1050c:	0b000813          	li	a6,176
   10510:	0086a703          	lw	a4,8(a3)
   10514:	08e05463          	blez	a4,1059c <__sfp+0xb0>
   10518:	02071713          	slli	a4,a4,0x20
   1051c:	02075713          	srli	a4,a4,0x20
   10520:	03070733          	mul	a4,a4,a6
   10524:	0106b403          	ld	s0,16(a3)
   10528:	00e40733          	add	a4,s0,a4
   1052c:	00c0006f          	j	10538 <__sfp+0x4c>
   10530:	0b040413          	addi	s0,s0,176
   10534:	06e40463          	beq	s0,a4,1059c <__sfp+0xb0>
   10538:	01041783          	lh	a5,16(s0)
   1053c:	fe079ae3          	bnez	a5,10530 <__sfp+0x44>
   10540:	ffff07b7          	lui	a5,0xffff0
   10544:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc061>
   10548:	00f42823          	sw	a5,16(s0)
   1054c:	0a042623          	sw	zero,172(s0)
   10550:	00043023          	sd	zero,0(s0)
   10554:	00043423          	sd	zero,8(s0)
   10558:	00043c23          	sd	zero,24(s0)
   1055c:	02042023          	sw	zero,32(s0)
   10560:	02042423          	sw	zero,40(s0)
   10564:	00800613          	li	a2,8
   10568:	00000593          	li	a1,0
   1056c:	0a440513          	addi	a0,s0,164
   10570:	62c000ef          	jal	10b9c <memset>
   10574:	04043c23          	sd	zero,88(s0)
   10578:	06042023          	sw	zero,96(s0)
   1057c:	06043c23          	sd	zero,120(s0)
   10580:	08042023          	sw	zero,128(s0)
   10584:	02813083          	ld	ra,40(sp)
   10588:	00040513          	mv	a0,s0
   1058c:	02013403          	ld	s0,32(sp)
   10590:	01813483          	ld	s1,24(sp)
   10594:	03010113          	addi	sp,sp,48
   10598:	00008067          	ret
   1059c:	0006b403          	ld	s0,0(a3)
   105a0:	00040663          	beqz	s0,105ac <__sfp+0xc0>
   105a4:	00040693          	mv	a3,s0
   105a8:	f69ff06f          	j	10510 <__sfp+0x24>
   105ac:	2d800593          	li	a1,728
   105b0:	00048513          	mv	a0,s1
   105b4:	00d13423          	sd	a3,8(sp)
   105b8:	435000ef          	jal	111ec <_malloc_r>
   105bc:	00813683          	ld	a3,8(sp)
   105c0:	00050413          	mv	s0,a0
   105c4:	04050263          	beqz	a0,10608 <__sfp+0x11c>
   105c8:	00400793          	li	a5,4
   105cc:	00f52423          	sw	a5,8(a0)
   105d0:	01850513          	addi	a0,a0,24
   105d4:	00043023          	sd	zero,0(s0)
   105d8:	00a43823          	sd	a0,16(s0)
   105dc:	2c000613          	li	a2,704
   105e0:	00000593          	li	a1,0
   105e4:	00d13423          	sd	a3,8(sp)
   105e8:	5b4000ef          	jal	10b9c <memset>
   105ec:	00813683          	ld	a3,8(sp)
   105f0:	0b000813          	li	a6,176
   105f4:	0086b023          	sd	s0,0(a3)
   105f8:	00040693          	mv	a3,s0
   105fc:	f15ff06f          	j	10510 <__sfp+0x24>
   10600:	da5ff0ef          	jal	103a4 <global_stdio_init.part.0>
   10604:	f05ff06f          	j	10508 <__sfp+0x1c>
   10608:	0006b023          	sd	zero,0(a3)
   1060c:	00c00793          	li	a5,12
   10610:	00f4a023          	sw	a5,0(s1)
   10614:	f71ff06f          	j	10584 <__sfp+0x98>

0000000000010618 <__sinit>:
   10618:	04853783          	ld	a5,72(a0)
   1061c:	00078463          	beqz	a5,10624 <__sinit+0xc>
   10620:	00008067          	ret
   10624:	000107b7          	lui	a5,0x10
   10628:	1c81b703          	ld	a4,456(gp) # 139e0 <__stdio_exit_handler>
   1062c:	33878793          	addi	a5,a5,824 # 10338 <cleanup_stdio>
   10630:	04f53423          	sd	a5,72(a0)
   10634:	fe0716e3          	bnez	a4,10620 <__sinit+0x8>
   10638:	d6dff06f          	j	103a4 <global_stdio_init.part.0>

000000000001063c <__sfp_lock_acquire>:
   1063c:	00008067          	ret

0000000000010640 <__sfp_lock_release>:
   10640:	00008067          	ret

0000000000010644 <__fp_lock_all>:
   10644:	000105b7          	lui	a1,0x10
   10648:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   1064c:	31858593          	addi	a1,a1,792 # 10318 <__fp_lock>
   10650:	00000513          	li	a0,0
   10654:	0180006f          	j	1066c <_fwalk_sglue>

0000000000010658 <__fp_unlock_all>:
   10658:	000105b7          	lui	a1,0x10
   1065c:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10660:	39c58593          	addi	a1,a1,924 # 1039c <__fp_unlock>
   10664:	00000513          	li	a0,0
   10668:	0040006f          	j	1066c <_fwalk_sglue>

000000000001066c <_fwalk_sglue>:
   1066c:	fb010113          	addi	sp,sp,-80
   10670:	03213823          	sd	s2,48(sp)
   10674:	03313423          	sd	s3,40(sp)
   10678:	03413023          	sd	s4,32(sp)
   1067c:	01513c23          	sd	s5,24(sp)
   10680:	01613823          	sd	s6,16(sp)
   10684:	01713423          	sd	s7,8(sp)
   10688:	01813023          	sd	s8,0(sp)
   1068c:	04113423          	sd	ra,72(sp)
   10690:	04813023          	sd	s0,64(sp)
   10694:	02913c23          	sd	s1,56(sp)
   10698:	00060993          	mv	s3,a2
   1069c:	00050a93          	mv	s5,a0
   106a0:	00058b13          	mv	s6,a1
   106a4:	00000913          	li	s2,0
   106a8:	0b000b93          	li	s7,176
   106ac:	00100c13          	li	s8,1
   106b0:	fff00a13          	li	s4,-1
   106b4:	0089a483          	lw	s1,8(s3)
   106b8:	04905263          	blez	s1,106fc <_fwalk_sglue+0x90>
   106bc:	02049493          	slli	s1,s1,0x20
   106c0:	0204d493          	srli	s1,s1,0x20
   106c4:	037484b3          	mul	s1,s1,s7
   106c8:	0109b403          	ld	s0,16(s3)
   106cc:	009404b3          	add	s1,s0,s1
   106d0:	01045783          	lhu	a5,16(s0)
   106d4:	02fc7063          	bgeu	s8,a5,106f4 <_fwalk_sglue+0x88>
   106d8:	01241783          	lh	a5,18(s0)
   106dc:	00040593          	mv	a1,s0
   106e0:	000a8513          	mv	a0,s5
   106e4:	01478863          	beq	a5,s4,106f4 <_fwalk_sglue+0x88>
   106e8:	000b00e7          	jalr	s6
   106ec:	01256933          	or	s2,a0,s2
   106f0:	0009091b          	sext.w	s2,s2
   106f4:	0b040413          	addi	s0,s0,176
   106f8:	fc941ce3          	bne	s0,s1,106d0 <_fwalk_sglue+0x64>
   106fc:	0009b983          	ld	s3,0(s3)
   10700:	fa099ae3          	bnez	s3,106b4 <_fwalk_sglue+0x48>
   10704:	04813083          	ld	ra,72(sp)
   10708:	04013403          	ld	s0,64(sp)
   1070c:	03813483          	ld	s1,56(sp)
   10710:	02813983          	ld	s3,40(sp)
   10714:	02013a03          	ld	s4,32(sp)
   10718:	01813a83          	ld	s5,24(sp)
   1071c:	01013b03          	ld	s6,16(sp)
   10720:	00813b83          	ld	s7,8(sp)
   10724:	00013c03          	ld	s8,0(sp)
   10728:	00090513          	mv	a0,s2
   1072c:	03013903          	ld	s2,48(sp)
   10730:	05010113          	addi	sp,sp,80
   10734:	00008067          	ret

0000000000010738 <__sread>:
   10738:	ff010113          	addi	sp,sp,-16
   1073c:	00813023          	sd	s0,0(sp)
   10740:	00058413          	mv	s0,a1
   10744:	01259583          	lh	a1,18(a1)
   10748:	00113423          	sd	ra,8(sp)
   1074c:	2ec000ef          	jal	10a38 <_read_r>
   10750:	02054063          	bltz	a0,10770 <__sread+0x38>
   10754:	09043783          	ld	a5,144(s0)
   10758:	00813083          	ld	ra,8(sp)
   1075c:	00a787b3          	add	a5,a5,a0
   10760:	08f43823          	sd	a5,144(s0)
   10764:	00013403          	ld	s0,0(sp)
   10768:	01010113          	addi	sp,sp,16
   1076c:	00008067          	ret
   10770:	01045783          	lhu	a5,16(s0)
   10774:	fffff737          	lui	a4,0xfffff
   10778:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   1077c:	00e7f7b3          	and	a5,a5,a4
   10780:	00813083          	ld	ra,8(sp)
   10784:	00f41823          	sh	a5,16(s0)
   10788:	00013403          	ld	s0,0(sp)
   1078c:	01010113          	addi	sp,sp,16
   10790:	00008067          	ret

0000000000010794 <__seofread>:
   10794:	00000513          	li	a0,0
   10798:	00008067          	ret

000000000001079c <__swrite>:
   1079c:	01059783          	lh	a5,16(a1)
   107a0:	fd010113          	addi	sp,sp,-48
   107a4:	00068313          	mv	t1,a3
   107a8:	02113423          	sd	ra,40(sp)
   107ac:	1007f693          	andi	a3,a5,256
   107b0:	00058713          	mv	a4,a1
   107b4:	00060893          	mv	a7,a2
   107b8:	00050813          	mv	a6,a0
   107bc:	02069863          	bnez	a3,107ec <__swrite+0x50>
   107c0:	fffff6b7          	lui	a3,0xfffff
   107c4:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   107c8:	02813083          	ld	ra,40(sp)
   107cc:	00d7f7b3          	and	a5,a5,a3
   107d0:	01271583          	lh	a1,18(a4)
   107d4:	00f71823          	sh	a5,16(a4)
   107d8:	00030693          	mv	a3,t1
   107dc:	00088613          	mv	a2,a7
   107e0:	00080513          	mv	a0,a6
   107e4:	03010113          	addi	sp,sp,48
   107e8:	2b80006f          	j	10aa0 <_write_r>
   107ec:	01259583          	lh	a1,18(a1)
   107f0:	00c13823          	sd	a2,16(sp)
   107f4:	00200693          	li	a3,2
   107f8:	00000613          	li	a2,0
   107fc:	00613c23          	sd	t1,24(sp)
   10800:	00e13023          	sd	a4,0(sp)
   10804:	00a13423          	sd	a0,8(sp)
   10808:	1c8000ef          	jal	109d0 <_lseek_r>
   1080c:	00013703          	ld	a4,0(sp)
   10810:	01813303          	ld	t1,24(sp)
   10814:	01013883          	ld	a7,16(sp)
   10818:	01071783          	lh	a5,16(a4)
   1081c:	00813803          	ld	a6,8(sp)
   10820:	fa1ff06f          	j	107c0 <__swrite+0x24>

0000000000010824 <__sseek>:
   10824:	ff010113          	addi	sp,sp,-16
   10828:	00813023          	sd	s0,0(sp)
   1082c:	00058413          	mv	s0,a1
   10830:	01259583          	lh	a1,18(a1)
   10834:	00113423          	sd	ra,8(sp)
   10838:	198000ef          	jal	109d0 <_lseek_r>
   1083c:	fff00713          	li	a4,-1
   10840:	01041783          	lh	a5,16(s0)
   10844:	02e50263          	beq	a0,a4,10868 <__sseek+0x44>
   10848:	00001737          	lui	a4,0x1
   1084c:	00e7e7b3          	or	a5,a5,a4
   10850:	00813083          	ld	ra,8(sp)
   10854:	08a43823          	sd	a0,144(s0)
   10858:	00f41823          	sh	a5,16(s0)
   1085c:	00013403          	ld	s0,0(sp)
   10860:	01010113          	addi	sp,sp,16
   10864:	00008067          	ret
   10868:	80050713          	addi	a4,a0,-2048
   1086c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10870:	00e7f7b3          	and	a5,a5,a4
   10874:	00813083          	ld	ra,8(sp)
   10878:	00f41823          	sh	a5,16(s0)
   1087c:	00013403          	ld	s0,0(sp)
   10880:	01010113          	addi	sp,sp,16
   10884:	00008067          	ret

0000000000010888 <__sclose>:
   10888:	01259583          	lh	a1,18(a1)
   1088c:	0040006f          	j	10890 <_close_r>

0000000000010890 <_close_r>:
   10890:	fe010113          	addi	sp,sp,-32
   10894:	00813823          	sd	s0,16(sp)
   10898:	00913423          	sd	s1,8(sp)
   1089c:	00050493          	mv	s1,a0
   108a0:	00058513          	mv	a0,a1
   108a4:	00113c23          	sd	ra,24(sp)
   108a8:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   108ac:	7e0010ef          	jal	1208c <_close>
   108b0:	fff00793          	li	a5,-1
   108b4:	00f50c63          	beq	a0,a5,108cc <_close_r+0x3c>
   108b8:	01813083          	ld	ra,24(sp)
   108bc:	01013403          	ld	s0,16(sp)
   108c0:	00813483          	ld	s1,8(sp)
   108c4:	02010113          	addi	sp,sp,32
   108c8:	00008067          	ret
   108cc:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   108d0:	fe0784e3          	beqz	a5,108b8 <_close_r+0x28>
   108d4:	01813083          	ld	ra,24(sp)
   108d8:	01013403          	ld	s0,16(sp)
   108dc:	00f4a023          	sw	a5,0(s1)
   108e0:	00813483          	ld	s1,8(sp)
   108e4:	02010113          	addi	sp,sp,32
   108e8:	00008067          	ret

00000000000108ec <_reclaim_reent>:
   108ec:	1b01b783          	ld	a5,432(gp) # 139c8 <_impure_ptr>
   108f0:	0ca78e63          	beq	a5,a0,109cc <_reclaim_reent+0xe0>
   108f4:	06853583          	ld	a1,104(a0)
   108f8:	fd010113          	addi	sp,sp,-48
   108fc:	00913c23          	sd	s1,24(sp)
   10900:	02113423          	sd	ra,40(sp)
   10904:	02813023          	sd	s0,32(sp)
   10908:	00050493          	mv	s1,a0
   1090c:	04058863          	beqz	a1,1095c <_reclaim_reent+0x70>
   10910:	01213823          	sd	s2,16(sp)
   10914:	01313423          	sd	s3,8(sp)
   10918:	00000913          	li	s2,0
   1091c:	20000993          	li	s3,512
   10920:	012587b3          	add	a5,a1,s2
   10924:	0007b403          	ld	s0,0(a5)
   10928:	00040e63          	beqz	s0,10944 <_reclaim_reent+0x58>
   1092c:	00040593          	mv	a1,s0
   10930:	00043403          	ld	s0,0(s0)
   10934:	00048513          	mv	a0,s1
   10938:	5b0000ef          	jal	10ee8 <_free_r>
   1093c:	fe0418e3          	bnez	s0,1092c <_reclaim_reent+0x40>
   10940:	0684b583          	ld	a1,104(s1)
   10944:	00890913          	addi	s2,s2,8
   10948:	fd391ce3          	bne	s2,s3,10920 <_reclaim_reent+0x34>
   1094c:	00048513          	mv	a0,s1
   10950:	598000ef          	jal	10ee8 <_free_r>
   10954:	01013903          	ld	s2,16(sp)
   10958:	00813983          	ld	s3,8(sp)
   1095c:	0504b583          	ld	a1,80(s1)
   10960:	00058663          	beqz	a1,1096c <_reclaim_reent+0x80>
   10964:	00048513          	mv	a0,s1
   10968:	580000ef          	jal	10ee8 <_free_r>
   1096c:	0604b403          	ld	s0,96(s1)
   10970:	00040c63          	beqz	s0,10988 <_reclaim_reent+0x9c>
   10974:	00040593          	mv	a1,s0
   10978:	00043403          	ld	s0,0(s0)
   1097c:	00048513          	mv	a0,s1
   10980:	568000ef          	jal	10ee8 <_free_r>
   10984:	fe0418e3          	bnez	s0,10974 <_reclaim_reent+0x88>
   10988:	0784b583          	ld	a1,120(s1)
   1098c:	00058663          	beqz	a1,10998 <_reclaim_reent+0xac>
   10990:	00048513          	mv	a0,s1
   10994:	554000ef          	jal	10ee8 <_free_r>
   10998:	0484b783          	ld	a5,72(s1)
   1099c:	00078e63          	beqz	a5,109b8 <_reclaim_reent+0xcc>
   109a0:	02013403          	ld	s0,32(sp)
   109a4:	02813083          	ld	ra,40(sp)
   109a8:	00048513          	mv	a0,s1
   109ac:	01813483          	ld	s1,24(sp)
   109b0:	03010113          	addi	sp,sp,48
   109b4:	00078067          	jr	a5
   109b8:	02813083          	ld	ra,40(sp)
   109bc:	02013403          	ld	s0,32(sp)
   109c0:	01813483          	ld	s1,24(sp)
   109c4:	03010113          	addi	sp,sp,48
   109c8:	00008067          	ret
   109cc:	00008067          	ret

00000000000109d0 <_lseek_r>:
   109d0:	fe010113          	addi	sp,sp,-32
   109d4:	00058793          	mv	a5,a1
   109d8:	00813823          	sd	s0,16(sp)
   109dc:	00913423          	sd	s1,8(sp)
   109e0:	00060593          	mv	a1,a2
   109e4:	00050493          	mv	s1,a0
   109e8:	00068613          	mv	a2,a3
   109ec:	00078513          	mv	a0,a5
   109f0:	00113c23          	sd	ra,24(sp)
   109f4:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   109f8:	704010ef          	jal	120fc <_lseek>
   109fc:	fff00793          	li	a5,-1
   10a00:	00f50c63          	beq	a0,a5,10a18 <_lseek_r+0x48>
   10a04:	01813083          	ld	ra,24(sp)
   10a08:	01013403          	ld	s0,16(sp)
   10a0c:	00813483          	ld	s1,8(sp)
   10a10:	02010113          	addi	sp,sp,32
   10a14:	00008067          	ret
   10a18:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a1c:	fe0784e3          	beqz	a5,10a04 <_lseek_r+0x34>
   10a20:	01813083          	ld	ra,24(sp)
   10a24:	01013403          	ld	s0,16(sp)
   10a28:	00f4a023          	sw	a5,0(s1)
   10a2c:	00813483          	ld	s1,8(sp)
   10a30:	02010113          	addi	sp,sp,32
   10a34:	00008067          	ret

0000000000010a38 <_read_r>:
   10a38:	fe010113          	addi	sp,sp,-32
   10a3c:	00058793          	mv	a5,a1
   10a40:	00813823          	sd	s0,16(sp)
   10a44:	00913423          	sd	s1,8(sp)
   10a48:	00060593          	mv	a1,a2
   10a4c:	00050493          	mv	s1,a0
   10a50:	00068613          	mv	a2,a3
   10a54:	00078513          	mv	a0,a5
   10a58:	00113c23          	sd	ra,24(sp)
   10a5c:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10a60:	6dc010ef          	jal	1213c <_read>
   10a64:	fff00793          	li	a5,-1
   10a68:	00f50c63          	beq	a0,a5,10a80 <_read_r+0x48>
   10a6c:	01813083          	ld	ra,24(sp)
   10a70:	01013403          	ld	s0,16(sp)
   10a74:	00813483          	ld	s1,8(sp)
   10a78:	02010113          	addi	sp,sp,32
   10a7c:	00008067          	ret
   10a80:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a84:	fe0784e3          	beqz	a5,10a6c <_read_r+0x34>
   10a88:	01813083          	ld	ra,24(sp)
   10a8c:	01013403          	ld	s0,16(sp)
   10a90:	00f4a023          	sw	a5,0(s1)
   10a94:	00813483          	ld	s1,8(sp)
   10a98:	02010113          	addi	sp,sp,32
   10a9c:	00008067          	ret

0000000000010aa0 <_write_r>:
   10aa0:	fe010113          	addi	sp,sp,-32
   10aa4:	00058793          	mv	a5,a1
   10aa8:	00813823          	sd	s0,16(sp)
   10aac:	00913423          	sd	s1,8(sp)
   10ab0:	00060593          	mv	a1,a2
   10ab4:	00050493          	mv	s1,a0
   10ab8:	00068613          	mv	a2,a3
   10abc:	00078513          	mv	a0,a5
   10ac0:	00113c23          	sd	ra,24(sp)
   10ac4:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10ac8:	72c010ef          	jal	121f4 <_write>
   10acc:	fff00793          	li	a5,-1
   10ad0:	00f50c63          	beq	a0,a5,10ae8 <_write_r+0x48>
   10ad4:	01813083          	ld	ra,24(sp)
   10ad8:	01013403          	ld	s0,16(sp)
   10adc:	00813483          	ld	s1,8(sp)
   10ae0:	02010113          	addi	sp,sp,32
   10ae4:	00008067          	ret
   10ae8:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10aec:	fe0784e3          	beqz	a5,10ad4 <_write_r+0x34>
   10af0:	01813083          	ld	ra,24(sp)
   10af4:	01013403          	ld	s0,16(sp)
   10af8:	00f4a023          	sw	a5,0(s1)
   10afc:	00813483          	ld	s1,8(sp)
   10b00:	02010113          	addi	sp,sp,32
   10b04:	00008067          	ret

0000000000010b08 <__libc_init_array>:
   10b08:	fe010113          	addi	sp,sp,-32
   10b0c:	00813823          	sd	s0,16(sp)
   10b10:	01213023          	sd	s2,0(sp)
   10b14:	00013437          	lui	s0,0x13
   10b18:	00013937          	lui	s2,0x13
   10b1c:	00113c23          	sd	ra,24(sp)
   10b20:	00913423          	sd	s1,8(sp)
   10b24:	00090913          	mv	s2,s2
   10b28:	00040413          	mv	s0,s0
   10b2c:	02890263          	beq	s2,s0,10b50 <__libc_init_array+0x48>
   10b30:	40890933          	sub	s2,s2,s0
   10b34:	40395913          	srai	s2,s2,0x3
   10b38:	00000493          	li	s1,0
   10b3c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b40:	00148493          	addi	s1,s1,1
   10b44:	00840413          	addi	s0,s0,8
   10b48:	000780e7          	jalr	a5
   10b4c:	ff24e8e3          	bltu	s1,s2,10b3c <__libc_init_array+0x34>
   10b50:	00013937          	lui	s2,0x13
   10b54:	00013437          	lui	s0,0x13
   10b58:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b5c:	00040413          	mv	s0,s0
   10b60:	02890263          	beq	s2,s0,10b84 <__libc_init_array+0x7c>
   10b64:	40890933          	sub	s2,s2,s0
   10b68:	40395913          	srai	s2,s2,0x3
   10b6c:	00000493          	li	s1,0
   10b70:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b74:	00148493          	addi	s1,s1,1
   10b78:	00840413          	addi	s0,s0,8
   10b7c:	000780e7          	jalr	a5
   10b80:	ff24e8e3          	bltu	s1,s2,10b70 <__libc_init_array+0x68>
   10b84:	01813083          	ld	ra,24(sp)
   10b88:	01013403          	ld	s0,16(sp)
   10b8c:	00813483          	ld	s1,8(sp)
   10b90:	00013903          	ld	s2,0(sp)
   10b94:	02010113          	addi	sp,sp,32
   10b98:	00008067          	ret

0000000000010b9c <memset>:
   10b9c:	00f00313          	li	t1,15
   10ba0:	00050713          	mv	a4,a0
   10ba4:	02c37a63          	bgeu	t1,a2,10bd8 <memset+0x3c>
   10ba8:	00f77793          	andi	a5,a4,15
   10bac:	0a079063          	bnez	a5,10c4c <memset+0xb0>
   10bb0:	06059e63          	bnez	a1,10c2c <memset+0x90>
   10bb4:	ff067693          	andi	a3,a2,-16
   10bb8:	00f67613          	andi	a2,a2,15
   10bbc:	00e686b3          	add	a3,a3,a4
   10bc0:	00b73023          	sd	a1,0(a4)
   10bc4:	00b73423          	sd	a1,8(a4)
   10bc8:	01070713          	addi	a4,a4,16
   10bcc:	fed76ae3          	bltu	a4,a3,10bc0 <memset+0x24>
   10bd0:	00061463          	bnez	a2,10bd8 <memset+0x3c>
   10bd4:	00008067          	ret
   10bd8:	40c306b3          	sub	a3,t1,a2
   10bdc:	00269693          	slli	a3,a3,0x2
   10be0:	00000297          	auipc	t0,0x0
   10be4:	005686b3          	add	a3,a3,t0
   10be8:	00c68067          	jr	12(a3)
   10bec:	00b70723          	sb	a1,14(a4)
   10bf0:	00b706a3          	sb	a1,13(a4)
   10bf4:	00b70623          	sb	a1,12(a4)
   10bf8:	00b705a3          	sb	a1,11(a4)
   10bfc:	00b70523          	sb	a1,10(a4)
   10c00:	00b704a3          	sb	a1,9(a4)
   10c04:	00b70423          	sb	a1,8(a4)
   10c08:	00b703a3          	sb	a1,7(a4)
   10c0c:	00b70323          	sb	a1,6(a4)
   10c10:	00b702a3          	sb	a1,5(a4)
   10c14:	00b70223          	sb	a1,4(a4)
   10c18:	00b701a3          	sb	a1,3(a4)
   10c1c:	00b70123          	sb	a1,2(a4)
   10c20:	00b700a3          	sb	a1,1(a4)
   10c24:	00b70023          	sb	a1,0(a4)
   10c28:	00008067          	ret
   10c2c:	0ff5f593          	zext.b	a1,a1
   10c30:	00859693          	slli	a3,a1,0x8
   10c34:	00d5e5b3          	or	a1,a1,a3
   10c38:	01059693          	slli	a3,a1,0x10
   10c3c:	00d5e5b3          	or	a1,a1,a3
   10c40:	02059693          	slli	a3,a1,0x20
   10c44:	00d5e5b3          	or	a1,a1,a3
   10c48:	f6dff06f          	j	10bb4 <memset+0x18>
   10c4c:	00279693          	slli	a3,a5,0x2
   10c50:	00000297          	auipc	t0,0x0
   10c54:	005686b3          	add	a3,a3,t0
   10c58:	00008293          	mv	t0,ra
   10c5c:	f98680e7          	jalr	-104(a3)
   10c60:	00028093          	mv	ra,t0
   10c64:	ff078793          	addi	a5,a5,-16
   10c68:	40f70733          	sub	a4,a4,a5
   10c6c:	00f60633          	add	a2,a2,a5
   10c70:	f6c374e3          	bgeu	t1,a2,10bd8 <memset+0x3c>
   10c74:	f3dff06f          	j	10bb0 <memset+0x14>

0000000000010c78 <__call_exitprocs>:
   10c78:	fb010113          	addi	sp,sp,-80
   10c7c:	03413023          	sd	s4,32(sp)
   10c80:	03213823          	sd	s2,48(sp)
   10c84:	1d81b903          	ld	s2,472(gp) # 139f0 <__atexit>
   10c88:	04113423          	sd	ra,72(sp)
   10c8c:	06090e63          	beqz	s2,10d08 <__call_exitprocs+0x90>
   10c90:	03313423          	sd	s3,40(sp)
   10c94:	01513c23          	sd	s5,24(sp)
   10c98:	01613823          	sd	s6,16(sp)
   10c9c:	01713423          	sd	s7,8(sp)
   10ca0:	04813023          	sd	s0,64(sp)
   10ca4:	02913c23          	sd	s1,56(sp)
   10ca8:	01813023          	sd	s8,0(sp)
   10cac:	00050b13          	mv	s6,a0
   10cb0:	00058b93          	mv	s7,a1
   10cb4:	fff00993          	li	s3,-1
   10cb8:	00100a93          	li	s5,1
   10cbc:	00892403          	lw	s0,8(s2)
   10cc0:	fff4041b          	addiw	s0,s0,-1
   10cc4:	02044463          	bltz	s0,10cec <__call_exitprocs+0x74>
   10cc8:	01090493          	addi	s1,s2,16
   10ccc:	00341793          	slli	a5,s0,0x3
   10cd0:	00f484b3          	add	s1,s1,a5
   10cd4:	040b8463          	beqz	s7,10d1c <__call_exitprocs+0xa4>
   10cd8:	2004b783          	ld	a5,512(s1)
   10cdc:	05778063          	beq	a5,s7,10d1c <__call_exitprocs+0xa4>
   10ce0:	fff4041b          	addiw	s0,s0,-1
   10ce4:	ff848493          	addi	s1,s1,-8
   10ce8:	ff3418e3          	bne	s0,s3,10cd8 <__call_exitprocs+0x60>
   10cec:	04013403          	ld	s0,64(sp)
   10cf0:	03813483          	ld	s1,56(sp)
   10cf4:	02813983          	ld	s3,40(sp)
   10cf8:	01813a83          	ld	s5,24(sp)
   10cfc:	01013b03          	ld	s6,16(sp)
   10d00:	00813b83          	ld	s7,8(sp)
   10d04:	00013c03          	ld	s8,0(sp)
   10d08:	04813083          	ld	ra,72(sp)
   10d0c:	03013903          	ld	s2,48(sp)
   10d10:	02013a03          	ld	s4,32(sp)
   10d14:	05010113          	addi	sp,sp,80
   10d18:	00008067          	ret
   10d1c:	00892783          	lw	a5,8(s2)
   10d20:	0004b683          	ld	a3,0(s1)
   10d24:	fff7879b          	addiw	a5,a5,-1
   10d28:	06878a63          	beq	a5,s0,10d9c <__call_exitprocs+0x124>
   10d2c:	0004b023          	sd	zero,0(s1)
   10d30:	02068663          	beqz	a3,10d5c <__call_exitprocs+0xe4>
   10d34:	31092783          	lw	a5,784(s2)
   10d38:	008a973b          	sllw	a4,s5,s0
   10d3c:	00892c03          	lw	s8,8(s2)
   10d40:	00e7f7b3          	and	a5,a5,a4
   10d44:	02079463          	bnez	a5,10d6c <__call_exitprocs+0xf4>
   10d48:	000680e7          	jalr	a3
   10d4c:	00892703          	lw	a4,8(s2)
   10d50:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10d54:	03871e63          	bne	a4,s8,10d90 <__call_exitprocs+0x118>
   10d58:	03279c63          	bne	a5,s2,10d90 <__call_exitprocs+0x118>
   10d5c:	fff4041b          	addiw	s0,s0,-1
   10d60:	ff848493          	addi	s1,s1,-8
   10d64:	f73418e3          	bne	s0,s3,10cd4 <__call_exitprocs+0x5c>
   10d68:	f85ff06f          	j	10cec <__call_exitprocs+0x74>
   10d6c:	31492783          	lw	a5,788(s2)
   10d70:	1004b583          	ld	a1,256(s1)
   10d74:	00f77733          	and	a4,a4,a5
   10d78:	02071663          	bnez	a4,10da4 <__call_exitprocs+0x12c>
   10d7c:	000b0513          	mv	a0,s6
   10d80:	000680e7          	jalr	a3
   10d84:	00892703          	lw	a4,8(s2)
   10d88:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10d8c:	fd8706e3          	beq	a4,s8,10d58 <__call_exitprocs+0xe0>
   10d90:	f4078ee3          	beqz	a5,10cec <__call_exitprocs+0x74>
   10d94:	00078913          	mv	s2,a5
   10d98:	f25ff06f          	j	10cbc <__call_exitprocs+0x44>
   10d9c:	00892423          	sw	s0,8(s2)
   10da0:	f91ff06f          	j	10d30 <__call_exitprocs+0xb8>
   10da4:	00058513          	mv	a0,a1
   10da8:	000680e7          	jalr	a3
   10dac:	fa1ff06f          	j	10d4c <__call_exitprocs+0xd4>

0000000000010db0 <atexit>:
   10db0:	00050593          	mv	a1,a0
   10db4:	00000693          	li	a3,0
   10db8:	00000613          	li	a2,0
   10dbc:	00000513          	li	a0,0
   10dc0:	2300106f          	j	11ff0 <__register_exitproc>

0000000000010dc4 <_malloc_trim_r>:
   10dc4:	fd010113          	addi	sp,sp,-48
   10dc8:	01213823          	sd	s2,16(sp)
   10dcc:	00013937          	lui	s2,0x13
   10dd0:	02813023          	sd	s0,32(sp)
   10dd4:	00913c23          	sd	s1,24(sp)
   10dd8:	01313423          	sd	s3,8(sp)
   10ddc:	00058413          	mv	s0,a1
   10de0:	02113423          	sd	ra,40(sp)
   10de4:	00050993          	mv	s3,a0
   10de8:	1b090913          	addi	s2,s2,432 # 131b0 <__malloc_av_>
   10dec:	4e5000ef          	jal	11ad0 <__malloc_lock>
   10df0:	01093783          	ld	a5,16(s2)
   10df4:	00001737          	lui	a4,0x1
   10df8:	0087b483          	ld	s1,8(a5)
   10dfc:	ffc4f493          	andi	s1,s1,-4
   10e00:	7ff48793          	addi	a5,s1,2047
   10e04:	7e078793          	addi	a5,a5,2016
   10e08:	40878433          	sub	s0,a5,s0
   10e0c:	00c45413          	srli	s0,s0,0xc
   10e10:	fff40413          	addi	s0,s0,-1
   10e14:	00c41413          	slli	s0,s0,0xc
   10e18:	00e44e63          	blt	s0,a4,10e34 <_malloc_trim_r+0x70>
   10e1c:	00000593          	li	a1,0
   10e20:	00098513          	mv	a0,s3
   10e24:	114010ef          	jal	11f38 <_sbrk_r>
   10e28:	01093783          	ld	a5,16(s2)
   10e2c:	009787b3          	add	a5,a5,s1
   10e30:	02f50663          	beq	a0,a5,10e5c <_malloc_trim_r+0x98>
   10e34:	00098513          	mv	a0,s3
   10e38:	49d000ef          	jal	11ad4 <__malloc_unlock>
   10e3c:	02813083          	ld	ra,40(sp)
   10e40:	02013403          	ld	s0,32(sp)
   10e44:	01813483          	ld	s1,24(sp)
   10e48:	01013903          	ld	s2,16(sp)
   10e4c:	00813983          	ld	s3,8(sp)
   10e50:	00000513          	li	a0,0
   10e54:	03010113          	addi	sp,sp,48
   10e58:	00008067          	ret
   10e5c:	408005b3          	neg	a1,s0
   10e60:	00098513          	mv	a0,s3
   10e64:	0d4010ef          	jal	11f38 <_sbrk_r>
   10e68:	fff00793          	li	a5,-1
   10e6c:	04f50463          	beq	a0,a5,10eb4 <_malloc_trim_r+0xf0>
   10e70:	01093683          	ld	a3,16(s2)
   10e74:	4481a783          	lw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10e78:	408484b3          	sub	s1,s1,s0
   10e7c:	0014e493          	ori	s1,s1,1
   10e80:	00098513          	mv	a0,s3
   10e84:	408787bb          	subw	a5,a5,s0
   10e88:	0096b423          	sd	s1,8(a3)
   10e8c:	44f1a423          	sw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10e90:	445000ef          	jal	11ad4 <__malloc_unlock>
   10e94:	02813083          	ld	ra,40(sp)
   10e98:	02013403          	ld	s0,32(sp)
   10e9c:	01813483          	ld	s1,24(sp)
   10ea0:	01013903          	ld	s2,16(sp)
   10ea4:	00813983          	ld	s3,8(sp)
   10ea8:	00100513          	li	a0,1
   10eac:	03010113          	addi	sp,sp,48
   10eb0:	00008067          	ret
   10eb4:	00000593          	li	a1,0
   10eb8:	00098513          	mv	a0,s3
   10ebc:	07c010ef          	jal	11f38 <_sbrk_r>
   10ec0:	01093703          	ld	a4,16(s2)
   10ec4:	01f00693          	li	a3,31
   10ec8:	40e507b3          	sub	a5,a0,a4
   10ecc:	f6f6d4e3          	bge	a3,a5,10e34 <_malloc_trim_r+0x70>
   10ed0:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   10ed4:	0017e793          	ori	a5,a5,1
   10ed8:	40c50533          	sub	a0,a0,a2
   10edc:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10ee0:	44a1a423          	sw	a0,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10ee4:	f51ff06f          	j	10e34 <_malloc_trim_r+0x70>

0000000000010ee8 <_free_r>:
   10ee8:	12058863          	beqz	a1,11018 <_free_r+0x130>
   10eec:	fe010113          	addi	sp,sp,-32
   10ef0:	00813823          	sd	s0,16(sp)
   10ef4:	00b13423          	sd	a1,8(sp)
   10ef8:	00050413          	mv	s0,a0
   10efc:	00113c23          	sd	ra,24(sp)
   10f00:	3d1000ef          	jal	11ad0 <__malloc_lock>
   10f04:	00813583          	ld	a1,8(sp)
   10f08:	00013837          	lui	a6,0x13
   10f0c:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   10f10:	ff85b503          	ld	a0,-8(a1)
   10f14:	ff058713          	addi	a4,a1,-16
   10f18:	01083883          	ld	a7,16(a6)
   10f1c:	ffe57793          	andi	a5,a0,-2
   10f20:	00f70633          	add	a2,a4,a5
   10f24:	00863683          	ld	a3,8(a2)
   10f28:	00157313          	andi	t1,a0,1
   10f2c:	ffc6f693          	andi	a3,a3,-4
   10f30:	18c88e63          	beq	a7,a2,110cc <_free_r+0x1e4>
   10f34:	00d63423          	sd	a3,8(a2)
   10f38:	00d608b3          	add	a7,a2,a3
   10f3c:	0088b883          	ld	a7,8(a7)
   10f40:	0018f893          	andi	a7,a7,1
   10f44:	08031e63          	bnez	t1,10fe0 <_free_r+0xf8>
   10f48:	ff05b303          	ld	t1,-16(a1)
   10f4c:	000135b7          	lui	a1,0x13
   10f50:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   10f54:	40670733          	sub	a4,a4,t1
   10f58:	01073503          	ld	a0,16(a4)
   10f5c:	006787b3          	add	a5,a5,t1
   10f60:	14b50063          	beq	a0,a1,110a0 <_free_r+0x1b8>
   10f64:	01873303          	ld	t1,24(a4)
   10f68:	00653c23          	sd	t1,24(a0)
   10f6c:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   10f70:	1a088263          	beqz	a7,11114 <_free_r+0x22c>
   10f74:	0017e693          	ori	a3,a5,1
   10f78:	00d73423          	sd	a3,8(a4)
   10f7c:	00f63023          	sd	a5,0(a2)
   10f80:	1ff00693          	li	a3,511
   10f84:	0af6e663          	bltu	a3,a5,11030 <_free_r+0x148>
   10f88:	0037d793          	srli	a5,a5,0x3
   10f8c:	00179693          	slli	a3,a5,0x1
   10f90:	0026869b          	addiw	a3,a3,2
   10f94:	00369693          	slli	a3,a3,0x3
   10f98:	00883503          	ld	a0,8(a6)
   10f9c:	00d806b3          	add	a3,a6,a3
   10fa0:	0006b583          	ld	a1,0(a3)
   10fa4:	4027d61b          	sraiw	a2,a5,0x2
   10fa8:	00100793          	li	a5,1
   10fac:	00c797b3          	sll	a5,a5,a2
   10fb0:	00a7e7b3          	or	a5,a5,a0
   10fb4:	ff068613          	addi	a2,a3,-16
   10fb8:	00b73823          	sd	a1,16(a4)
   10fbc:	00c73c23          	sd	a2,24(a4)
   10fc0:	00f83423          	sd	a5,8(a6)
   10fc4:	00e6b023          	sd	a4,0(a3)
   10fc8:	00e5bc23          	sd	a4,24(a1)
   10fcc:	00040513          	mv	a0,s0
   10fd0:	01013403          	ld	s0,16(sp)
   10fd4:	01813083          	ld	ra,24(sp)
   10fd8:	02010113          	addi	sp,sp,32
   10fdc:	2f90006f          	j	11ad4 <__malloc_unlock>
   10fe0:	02089e63          	bnez	a7,1101c <_free_r+0x134>
   10fe4:	000135b7          	lui	a1,0x13
   10fe8:	00d787b3          	add	a5,a5,a3
   10fec:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   10ff0:	01063683          	ld	a3,16(a2)
   10ff4:	0017e893          	ori	a7,a5,1
   10ff8:	00f70533          	add	a0,a4,a5
   10ffc:	16b68663          	beq	a3,a1,11168 <_free_r+0x280>
   11000:	01863603          	ld	a2,24(a2)
   11004:	00c6bc23          	sd	a2,24(a3)
   11008:	00d63823          	sd	a3,16(a2)
   1100c:	01173423          	sd	a7,8(a4)
   11010:	00f53023          	sd	a5,0(a0)
   11014:	f6dff06f          	j	10f80 <_free_r+0x98>
   11018:	00008067          	ret
   1101c:	00156513          	ori	a0,a0,1
   11020:	fea5bc23          	sd	a0,-8(a1)
   11024:	00f63023          	sd	a5,0(a2)
   11028:	1ff00693          	li	a3,511
   1102c:	f4f6fee3          	bgeu	a3,a5,10f88 <_free_r+0xa0>
   11030:	0097d693          	srli	a3,a5,0x9
   11034:	00400613          	li	a2,4
   11038:	0ed66263          	bltu	a2,a3,1111c <_free_r+0x234>
   1103c:	0067d693          	srli	a3,a5,0x6
   11040:	00169593          	slli	a1,a3,0x1
   11044:	0725859b          	addiw	a1,a1,114
   11048:	00359593          	slli	a1,a1,0x3
   1104c:	0386861b          	addiw	a2,a3,56
   11050:	00b805b3          	add	a1,a6,a1
   11054:	0005b683          	ld	a3,0(a1)
   11058:	ff058593          	addi	a1,a1,-16
   1105c:	00d59863          	bne	a1,a3,1106c <_free_r+0x184>
   11060:	1240006f          	j	11184 <_free_r+0x29c>
   11064:	0106b683          	ld	a3,16(a3)
   11068:	00d58863          	beq	a1,a3,11078 <_free_r+0x190>
   1106c:	0086b603          	ld	a2,8(a3)
   11070:	ffc67613          	andi	a2,a2,-4
   11074:	fec7e8e3          	bltu	a5,a2,11064 <_free_r+0x17c>
   11078:	0186b583          	ld	a1,24(a3)
   1107c:	00b73c23          	sd	a1,24(a4)
   11080:	00d73823          	sd	a3,16(a4)
   11084:	00040513          	mv	a0,s0
   11088:	01013403          	ld	s0,16(sp)
   1108c:	01813083          	ld	ra,24(sp)
   11090:	00e5b823          	sd	a4,16(a1)
   11094:	00e6bc23          	sd	a4,24(a3)
   11098:	02010113          	addi	sp,sp,32
   1109c:	2390006f          	j	11ad4 <__malloc_unlock>
   110a0:	0a089263          	bnez	a7,11144 <_free_r+0x25c>
   110a4:	01863583          	ld	a1,24(a2)
   110a8:	01063603          	ld	a2,16(a2)
   110ac:	00f686b3          	add	a3,a3,a5
   110b0:	0016e793          	ori	a5,a3,1
   110b4:	00b63c23          	sd	a1,24(a2)
   110b8:	00c5b823          	sd	a2,16(a1)
   110bc:	00f73423          	sd	a5,8(a4)
   110c0:	00d70733          	add	a4,a4,a3
   110c4:	00d73023          	sd	a3,0(a4)
   110c8:	f05ff06f          	j	10fcc <_free_r+0xe4>
   110cc:	00d786b3          	add	a3,a5,a3
   110d0:	02031063          	bnez	t1,110f0 <_free_r+0x208>
   110d4:	ff05b783          	ld	a5,-16(a1)
   110d8:	40f70733          	sub	a4,a4,a5
   110dc:	01073603          	ld	a2,16(a4)
   110e0:	00f686b3          	add	a3,a3,a5
   110e4:	01873783          	ld	a5,24(a4)
   110e8:	00f63c23          	sd	a5,24(a2)
   110ec:	00c7b823          	sd	a2,16(a5)
   110f0:	0016e613          	ori	a2,a3,1
   110f4:	1c01b783          	ld	a5,448(gp) # 139d8 <__malloc_trim_threshold>
   110f8:	00c73423          	sd	a2,8(a4)
   110fc:	00e83823          	sd	a4,16(a6)
   11100:	ecf6e6e3          	bltu	a3,a5,10fcc <_free_r+0xe4>
   11104:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   11108:	00040513          	mv	a0,s0
   1110c:	cb9ff0ef          	jal	10dc4 <_malloc_trim_r>
   11110:	ebdff06f          	j	10fcc <_free_r+0xe4>
   11114:	00d787b3          	add	a5,a5,a3
   11118:	ed9ff06f          	j	10ff0 <_free_r+0x108>
   1111c:	01400613          	li	a2,20
   11120:	02d67a63          	bgeu	a2,a3,11154 <_free_r+0x26c>
   11124:	05400613          	li	a2,84
   11128:	06d66c63          	bltu	a2,a3,111a0 <_free_r+0x2b8>
   1112c:	00c7d693          	srli	a3,a5,0xc
   11130:	00169593          	slli	a1,a3,0x1
   11134:	0de5859b          	addiw	a1,a1,222
   11138:	00359593          	slli	a1,a1,0x3
   1113c:	06e6861b          	addiw	a2,a3,110
   11140:	f11ff06f          	j	11050 <_free_r+0x168>
   11144:	0017e693          	ori	a3,a5,1
   11148:	00d73423          	sd	a3,8(a4)
   1114c:	00f63023          	sd	a5,0(a2)
   11150:	e7dff06f          	j	10fcc <_free_r+0xe4>
   11154:	00169593          	slli	a1,a3,0x1
   11158:	0b85859b          	addiw	a1,a1,184
   1115c:	00359593          	slli	a1,a1,0x3
   11160:	05b6861b          	addiw	a2,a3,91
   11164:	eedff06f          	j	11050 <_free_r+0x168>
   11168:	02e83423          	sd	a4,40(a6)
   1116c:	02e83023          	sd	a4,32(a6)
   11170:	00b73c23          	sd	a1,24(a4)
   11174:	00b73823          	sd	a1,16(a4)
   11178:	01173423          	sd	a7,8(a4)
   1117c:	00f53023          	sd	a5,0(a0)
   11180:	e4dff06f          	j	10fcc <_free_r+0xe4>
   11184:	00883503          	ld	a0,8(a6)
   11188:	4026561b          	sraiw	a2,a2,0x2
   1118c:	00100793          	li	a5,1
   11190:	00c797b3          	sll	a5,a5,a2
   11194:	00a7e7b3          	or	a5,a5,a0
   11198:	00f83423          	sd	a5,8(a6)
   1119c:	ee1ff06f          	j	1107c <_free_r+0x194>
   111a0:	15400613          	li	a2,340
   111a4:	00d66e63          	bltu	a2,a3,111c0 <_free_r+0x2d8>
   111a8:	00f7d693          	srli	a3,a5,0xf
   111ac:	00169593          	slli	a1,a3,0x1
   111b0:	0f05859b          	addiw	a1,a1,240
   111b4:	00359593          	slli	a1,a1,0x3
   111b8:	0776861b          	addiw	a2,a3,119
   111bc:	e95ff06f          	j	11050 <_free_r+0x168>
   111c0:	55400613          	li	a2,1364
   111c4:	00d66e63          	bltu	a2,a3,111e0 <_free_r+0x2f8>
   111c8:	0127d693          	srli	a3,a5,0x12
   111cc:	00169593          	slli	a1,a3,0x1
   111d0:	0fa5859b          	addiw	a1,a1,250
   111d4:	00359593          	slli	a1,a1,0x3
   111d8:	07c6861b          	addiw	a2,a3,124
   111dc:	e75ff06f          	j	11050 <_free_r+0x168>
   111e0:	7f000593          	li	a1,2032
   111e4:	07e00613          	li	a2,126
   111e8:	e69ff06f          	j	11050 <_free_r+0x168>

00000000000111ec <_malloc_r>:
   111ec:	fa010113          	addi	sp,sp,-96
   111f0:	04813823          	sd	s0,80(sp)
   111f4:	04113c23          	sd	ra,88(sp)
   111f8:	01758713          	addi	a4,a1,23
   111fc:	02e00793          	li	a5,46
   11200:	00050413          	mv	s0,a0
   11204:	08e7ee63          	bltu	a5,a4,112a0 <_malloc_r+0xb4>
   11208:	02000713          	li	a4,32
   1120c:	06b76c63          	bltu	a4,a1,11284 <_malloc_r+0x98>
   11210:	0c1000ef          	jal	11ad0 <__malloc_lock>
   11214:	02000713          	li	a4,32
   11218:	05000693          	li	a3,80
   1121c:	00400893          	li	a7,4
   11220:	00013837          	lui	a6,0x13
   11224:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   11228:	00d806b3          	add	a3,a6,a3
   1122c:	0086b783          	ld	a5,8(a3)
   11230:	ff068613          	addi	a2,a3,-16
   11234:	48c78063          	beq	a5,a2,116b4 <_malloc_r+0x4c8>
   11238:	0087b703          	ld	a4,8(a5)
   1123c:	0187b603          	ld	a2,24(a5)
   11240:	0107b583          	ld	a1,16(a5)
   11244:	ffc77713          	andi	a4,a4,-4
   11248:	00e78733          	add	a4,a5,a4
   1124c:	00873683          	ld	a3,8(a4)
   11250:	00c5bc23          	sd	a2,24(a1)
   11254:	00b63823          	sd	a1,16(a2)
   11258:	0016e693          	ori	a3,a3,1
   1125c:	00040513          	mv	a0,s0
   11260:	00d73423          	sd	a3,8(a4)
   11264:	00f13423          	sd	a5,8(sp)
   11268:	06d000ef          	jal	11ad4 <__malloc_unlock>
   1126c:	00813783          	ld	a5,8(sp)
   11270:	05813083          	ld	ra,88(sp)
   11274:	05013403          	ld	s0,80(sp)
   11278:	01078513          	addi	a0,a5,16
   1127c:	06010113          	addi	sp,sp,96
   11280:	00008067          	ret
   11284:	00c00793          	li	a5,12
   11288:	00f42023          	sw	a5,0(s0)
   1128c:	00000513          	li	a0,0
   11290:	05813083          	ld	ra,88(sp)
   11294:	05013403          	ld	s0,80(sp)
   11298:	06010113          	addi	sp,sp,96
   1129c:	00008067          	ret
   112a0:	00100793          	li	a5,1
   112a4:	ff077713          	andi	a4,a4,-16
   112a8:	01f79793          	slli	a5,a5,0x1f
   112ac:	fcf77ce3          	bgeu	a4,a5,11284 <_malloc_r+0x98>
   112b0:	fcb76ae3          	bltu	a4,a1,11284 <_malloc_r+0x98>
   112b4:	00e13423          	sd	a4,8(sp)
   112b8:	019000ef          	jal	11ad0 <__malloc_lock>
   112bc:	00813703          	ld	a4,8(sp)
   112c0:	1f700793          	li	a5,503
   112c4:	4ee7fa63          	bgeu	a5,a4,117b8 <_malloc_r+0x5cc>
   112c8:	00975793          	srli	a5,a4,0x9
   112cc:	18078a63          	beqz	a5,11460 <_malloc_r+0x274>
   112d0:	00400693          	li	a3,4
   112d4:	44f6ea63          	bltu	a3,a5,11728 <_malloc_r+0x53c>
   112d8:	00675793          	srli	a5,a4,0x6
   112dc:	0397889b          	addiw	a7,a5,57
   112e0:	0018951b          	slliw	a0,a7,0x1
   112e4:	03878e1b          	addiw	t3,a5,56
   112e8:	00351513          	slli	a0,a0,0x3
   112ec:	00013837          	lui	a6,0x13
   112f0:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   112f4:	00a80533          	add	a0,a6,a0
   112f8:	00853783          	ld	a5,8(a0)
   112fc:	ff050513          	addi	a0,a0,-16
   11300:	02f50863          	beq	a0,a5,11330 <_malloc_r+0x144>
   11304:	01f00313          	li	t1,31
   11308:	0140006f          	j	1131c <_malloc_r+0x130>
   1130c:	0187b583          	ld	a1,24(a5)
   11310:	36065263          	bgez	a2,11674 <_malloc_r+0x488>
   11314:	00b50e63          	beq	a0,a1,11330 <_malloc_r+0x144>
   11318:	00058793          	mv	a5,a1
   1131c:	0087b683          	ld	a3,8(a5)
   11320:	ffc6f693          	andi	a3,a3,-4
   11324:	40e68633          	sub	a2,a3,a4
   11328:	fec352e3          	bge	t1,a2,1130c <_malloc_r+0x120>
   1132c:	000e0893          	mv	a7,t3
   11330:	02083783          	ld	a5,32(a6)
   11334:	00013e37          	lui	t3,0x13
   11338:	1c0e0e13          	addi	t3,t3,448 # 131c0 <__malloc_av_+0x10>
   1133c:	2fc78a63          	beq	a5,t3,11630 <_malloc_r+0x444>
   11340:	0087b303          	ld	t1,8(a5)
   11344:	01f00613          	li	a2,31
   11348:	ffc37313          	andi	t1,t1,-4
   1134c:	40e306b3          	sub	a3,t1,a4
   11350:	4ad64463          	blt	a2,a3,117f8 <_malloc_r+0x60c>
   11354:	03c83423          	sd	t3,40(a6)
   11358:	03c83023          	sd	t3,32(a6)
   1135c:	4606da63          	bgez	a3,117d0 <_malloc_r+0x5e4>
   11360:	1ff00693          	li	a3,511
   11364:	00883583          	ld	a1,8(a6)
   11368:	3466ee63          	bltu	a3,t1,116c4 <_malloc_r+0x4d8>
   1136c:	00335313          	srli	t1,t1,0x3
   11370:	00131693          	slli	a3,t1,0x1
   11374:	0026869b          	addiw	a3,a3,2
   11378:	00369693          	slli	a3,a3,0x3
   1137c:	00d806b3          	add	a3,a6,a3
   11380:	0006b503          	ld	a0,0(a3)
   11384:	4023531b          	sraiw	t1,t1,0x2
   11388:	00100613          	li	a2,1
   1138c:	00661633          	sll	a2,a2,t1
   11390:	00c5e5b3          	or	a1,a1,a2
   11394:	ff068613          	addi	a2,a3,-16
   11398:	00a7b823          	sd	a0,16(a5)
   1139c:	00c7bc23          	sd	a2,24(a5)
   113a0:	00b83423          	sd	a1,8(a6)
   113a4:	00f6b023          	sd	a5,0(a3)
   113a8:	00f53c23          	sd	a5,24(a0)
   113ac:	4028d79b          	sraiw	a5,a7,0x2
   113b0:	00100513          	li	a0,1
   113b4:	00f51533          	sll	a0,a0,a5
   113b8:	0aa5ec63          	bltu	a1,a0,11470 <_malloc_r+0x284>
   113bc:	00b577b3          	and	a5,a0,a1
   113c0:	02079463          	bnez	a5,113e8 <_malloc_r+0x1fc>
   113c4:	00151513          	slli	a0,a0,0x1
   113c8:	ffc8f893          	andi	a7,a7,-4
   113cc:	00b577b3          	and	a5,a0,a1
   113d0:	0048889b          	addiw	a7,a7,4
   113d4:	00079a63          	bnez	a5,113e8 <_malloc_r+0x1fc>
   113d8:	00151513          	slli	a0,a0,0x1
   113dc:	00b577b3          	and	a5,a0,a1
   113e0:	0048889b          	addiw	a7,a7,4
   113e4:	fe078ae3          	beqz	a5,113d8 <_malloc_r+0x1ec>
   113e8:	01f00e93          	li	t4,31
   113ec:	00189f13          	slli	t5,a7,0x1
   113f0:	002f0f1b          	addiw	t5,t5,2
   113f4:	003f1f13          	slli	t5,t5,0x3
   113f8:	ff0f0f13          	addi	t5,t5,-16
   113fc:	01e80f33          	add	t5,a6,t5
   11400:	000f0313          	mv	t1,t5
   11404:	01833683          	ld	a3,24(t1)
   11408:	00088f93          	mv	t6,a7
   1140c:	34d30263          	beq	t1,a3,11750 <_malloc_r+0x564>
   11410:	0086b603          	ld	a2,8(a3)
   11414:	00068793          	mv	a5,a3
   11418:	0186b683          	ld	a3,24(a3)
   1141c:	ffc67613          	andi	a2,a2,-4
   11420:	40e605b3          	sub	a1,a2,a4
   11424:	34bec263          	blt	t4,a1,11768 <_malloc_r+0x57c>
   11428:	fe05c2e3          	bltz	a1,1140c <_malloc_r+0x220>
   1142c:	00c78633          	add	a2,a5,a2
   11430:	00863703          	ld	a4,8(a2)
   11434:	0107b583          	ld	a1,16(a5)
   11438:	00040513          	mv	a0,s0
   1143c:	00176713          	ori	a4,a4,1
   11440:	00e63423          	sd	a4,8(a2)
   11444:	00d5bc23          	sd	a3,24(a1)
   11448:	00b6b823          	sd	a1,16(a3)
   1144c:	00f13423          	sd	a5,8(sp)
   11450:	684000ef          	jal	11ad4 <__malloc_unlock>
   11454:	00813783          	ld	a5,8(sp)
   11458:	01078513          	addi	a0,a5,16
   1145c:	e35ff06f          	j	11290 <_malloc_r+0xa4>
   11460:	40000513          	li	a0,1024
   11464:	04000893          	li	a7,64
   11468:	03f00e13          	li	t3,63
   1146c:	e81ff06f          	j	112ec <_malloc_r+0x100>
   11470:	01083783          	ld	a5,16(a6)
   11474:	0087b683          	ld	a3,8(a5)
   11478:	ffc6f893          	andi	a7,a3,-4
   1147c:	40e88633          	sub	a2,a7,a4
   11480:	00e8e663          	bltu	a7,a4,1148c <_malloc_r+0x2a0>
   11484:	02062693          	slti	a3,a2,32
   11488:	1a068863          	beqz	a3,11638 <_malloc_r+0x44c>
   1148c:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   11490:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   11494:	fff00693          	li	a3,-1
   11498:	00b705b3          	add	a1,a4,a1
   1149c:	44d60663          	beq	a2,a3,118e8 <_malloc_r+0x6fc>
   114a0:	000016b7          	lui	a3,0x1
   114a4:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   114a8:	00d585b3          	add	a1,a1,a3
   114ac:	fffff6b7          	lui	a3,0xfffff
   114b0:	00d5f5b3          	and	a1,a1,a3
   114b4:	00040513          	mv	a0,s0
   114b8:	03013423          	sd	a6,40(sp)
   114bc:	02f13023          	sd	a5,32(sp)
   114c0:	00e13c23          	sd	a4,24(sp)
   114c4:	01113823          	sd	a7,16(sp)
   114c8:	00b13423          	sd	a1,8(sp)
   114cc:	26d000ef          	jal	11f38 <_sbrk_r>
   114d0:	fff00693          	li	a3,-1
   114d4:	00813583          	ld	a1,8(sp)
   114d8:	01013883          	ld	a7,16(sp)
   114dc:	01813703          	ld	a4,24(sp)
   114e0:	02013783          	ld	a5,32(sp)
   114e4:	02813803          	ld	a6,40(sp)
   114e8:	00050313          	mv	t1,a0
   114ec:	36d50663          	beq	a0,a3,11858 <_malloc_r+0x66c>
   114f0:	011786b3          	add	a3,a5,a7
   114f4:	36d56063          	bltu	a0,a3,11854 <_malloc_r+0x668>
   114f8:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   114fc:	000e2603          	lw	a2,0(t3)
   11500:	00b6063b          	addw	a2,a2,a1
   11504:	00ce2023          	sw	a2,0(t3)
   11508:	00060513          	mv	a0,a2
   1150c:	4a668c63          	beq	a3,t1,119c4 <_malloc_r+0x7d8>
   11510:	1b81bf03          	ld	t5,440(gp) # 139d0 <__malloc_sbrk_base>
   11514:	fff00613          	li	a2,-1
   11518:	4ccf0463          	beq	t5,a2,119e0 <_malloc_r+0x7f4>
   1151c:	40d306b3          	sub	a3,t1,a3
   11520:	00a686bb          	addw	a3,a3,a0
   11524:	00de2023          	sw	a3,0(t3)
   11528:	00f37e93          	andi	t4,t1,15
   1152c:	3c0e8e63          	beqz	t4,11908 <_malloc_r+0x71c>
   11530:	ff037313          	andi	t1,t1,-16
   11534:	000016b7          	lui	a3,0x1
   11538:	01030313          	addi	t1,t1,16
   1153c:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11540:	00b30633          	add	a2,t1,a1
   11544:	41d685b3          	sub	a1,a3,t4
   11548:	40c585b3          	sub	a1,a1,a2
   1154c:	03459593          	slli	a1,a1,0x34
   11550:	0345d593          	srli	a1,a1,0x34
   11554:	00040513          	mv	a0,s0
   11558:	05c13023          	sd	t3,64(sp)
   1155c:	03013c23          	sd	a6,56(sp)
   11560:	02f13823          	sd	a5,48(sp)
   11564:	02e13423          	sd	a4,40(sp)
   11568:	03113023          	sd	a7,32(sp)
   1156c:	00613c23          	sd	t1,24(sp)
   11570:	01d13823          	sd	t4,16(sp)
   11574:	00c13423          	sd	a2,8(sp)
   11578:	04b13423          	sd	a1,72(sp)
   1157c:	1bd000ef          	jal	11f38 <_sbrk_r>
   11580:	00050693          	mv	a3,a0
   11584:	fff00513          	li	a0,-1
   11588:	00813603          	ld	a2,8(sp)
   1158c:	01013e83          	ld	t4,16(sp)
   11590:	01813303          	ld	t1,24(sp)
   11594:	02013883          	ld	a7,32(sp)
   11598:	02813703          	ld	a4,40(sp)
   1159c:	03013783          	ld	a5,48(sp)
   115a0:	03813803          	ld	a6,56(sp)
   115a4:	04013e03          	ld	t3,64(sp)
   115a8:	48a68663          	beq	a3,a0,11a34 <_malloc_r+0x848>
   115ac:	04813583          	ld	a1,72(sp)
   115b0:	0005851b          	sext.w	a0,a1
   115b4:	000e2603          	lw	a2,0(t3)
   115b8:	406686b3          	sub	a3,a3,t1
   115bc:	00b686b3          	add	a3,a3,a1
   115c0:	0016e693          	ori	a3,a3,1
   115c4:	00683823          	sd	t1,16(a6)
   115c8:	00a6063b          	addw	a2,a2,a0
   115cc:	00d33423          	sd	a3,8(t1)
   115d0:	00ce2023          	sw	a2,0(t3)
   115d4:	03078e63          	beq	a5,a6,11610 <_malloc_r+0x424>
   115d8:	01f00513          	li	a0,31
   115dc:	41157663          	bgeu	a0,a7,119e8 <_malloc_r+0x7fc>
   115e0:	0087b583          	ld	a1,8(a5)
   115e4:	fe888693          	addi	a3,a7,-24
   115e8:	ff06f693          	andi	a3,a3,-16
   115ec:	0015f593          	andi	a1,a1,1
   115f0:	00d5e5b3          	or	a1,a1,a3
   115f4:	00b7b423          	sd	a1,8(a5)
   115f8:	00900893          	li	a7,9
   115fc:	00d785b3          	add	a1,a5,a3
   11600:	0115b423          	sd	a7,8(a1)
   11604:	0115b823          	sd	a7,16(a1)
   11608:	44d56863          	bltu	a0,a3,11a58 <_malloc_r+0x86c>
   1160c:	00833683          	ld	a3,8(t1)
   11610:	1e81b583          	ld	a1,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   11614:	00c5f463          	bgeu	a1,a2,1161c <_malloc_r+0x430>
   11618:	1ec1b423          	sd	a2,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   1161c:	1e01b583          	ld	a1,480(gp) # 139f8 <__malloc_max_total_mem>
   11620:	00c5f463          	bgeu	a1,a2,11628 <_malloc_r+0x43c>
   11624:	1ec1b023          	sd	a2,480(gp) # 139f8 <__malloc_max_total_mem>
   11628:	00030793          	mv	a5,t1
   1162c:	2340006f          	j	11860 <_malloc_r+0x674>
   11630:	00883583          	ld	a1,8(a6)
   11634:	d79ff06f          	j	113ac <_malloc_r+0x1c0>
   11638:	00176693          	ori	a3,a4,1
   1163c:	00d7b423          	sd	a3,8(a5)
   11640:	00e78733          	add	a4,a5,a4
   11644:	00166613          	ori	a2,a2,1
   11648:	00e83823          	sd	a4,16(a6)
   1164c:	00040513          	mv	a0,s0
   11650:	00c73423          	sd	a2,8(a4)
   11654:	00f13423          	sd	a5,8(sp)
   11658:	47c000ef          	jal	11ad4 <__malloc_unlock>
   1165c:	00813783          	ld	a5,8(sp)
   11660:	05813083          	ld	ra,88(sp)
   11664:	05013403          	ld	s0,80(sp)
   11668:	01078513          	addi	a0,a5,16
   1166c:	06010113          	addi	sp,sp,96
   11670:	00008067          	ret
   11674:	0107b603          	ld	a2,16(a5)
   11678:	00d786b3          	add	a3,a5,a3
   1167c:	0086b703          	ld	a4,8(a3)
   11680:	00b63c23          	sd	a1,24(a2)
   11684:	00c5b823          	sd	a2,16(a1)
   11688:	00176713          	ori	a4,a4,1
   1168c:	00040513          	mv	a0,s0
   11690:	00e6b423          	sd	a4,8(a3)
   11694:	00f13423          	sd	a5,8(sp)
   11698:	43c000ef          	jal	11ad4 <__malloc_unlock>
   1169c:	00813783          	ld	a5,8(sp)
   116a0:	05813083          	ld	ra,88(sp)
   116a4:	05013403          	ld	s0,80(sp)
   116a8:	01078513          	addi	a0,a5,16
   116ac:	06010113          	addi	sp,sp,96
   116b0:	00008067          	ret
   116b4:	0186b783          	ld	a5,24(a3)
   116b8:	0028889b          	addiw	a7,a7,2
   116bc:	c6f68ae3          	beq	a3,a5,11330 <_malloc_r+0x144>
   116c0:	b79ff06f          	j	11238 <_malloc_r+0x4c>
   116c4:	00935693          	srli	a3,t1,0x9
   116c8:	00400613          	li	a2,4
   116cc:	16d67863          	bgeu	a2,a3,1183c <_malloc_r+0x650>
   116d0:	01400613          	li	a2,20
   116d4:	28d66e63          	bltu	a2,a3,11970 <_malloc_r+0x784>
   116d8:	00169513          	slli	a0,a3,0x1
   116dc:	0b85051b          	addiw	a0,a0,184
   116e0:	00351513          	slli	a0,a0,0x3
   116e4:	05b6861b          	addiw	a2,a3,91
   116e8:	00a80533          	add	a0,a6,a0
   116ec:	00053683          	ld	a3,0(a0)
   116f0:	ff050513          	addi	a0,a0,-16
   116f4:	00d51863          	bne	a0,a3,11704 <_malloc_r+0x518>
   116f8:	1f80006f          	j	118f0 <_malloc_r+0x704>
   116fc:	0106b683          	ld	a3,16(a3)
   11700:	00d50863          	beq	a0,a3,11710 <_malloc_r+0x524>
   11704:	0086b603          	ld	a2,8(a3)
   11708:	ffc67613          	andi	a2,a2,-4
   1170c:	fec368e3          	bltu	t1,a2,116fc <_malloc_r+0x510>
   11710:	0186b503          	ld	a0,24(a3)
   11714:	00a7bc23          	sd	a0,24(a5)
   11718:	00d7b823          	sd	a3,16(a5)
   1171c:	00f53823          	sd	a5,16(a0)
   11720:	00f6bc23          	sd	a5,24(a3)
   11724:	c89ff06f          	j	113ac <_malloc_r+0x1c0>
   11728:	01400693          	li	a3,20
   1172c:	14f6fa63          	bgeu	a3,a5,11880 <_malloc_r+0x694>
   11730:	05400693          	li	a3,84
   11734:	24f6ee63          	bltu	a3,a5,11990 <_malloc_r+0x7a4>
   11738:	00c75793          	srli	a5,a4,0xc
   1173c:	06f7889b          	addiw	a7,a5,111
   11740:	0018951b          	slliw	a0,a7,0x1
   11744:	06e78e1b          	addiw	t3,a5,110
   11748:	00351513          	slli	a0,a0,0x3
   1174c:	ba1ff06f          	j	112ec <_malloc_r+0x100>
   11750:	001f8f9b          	addiw	t6,t6,1
   11754:	003ff793          	andi	a5,t6,3
   11758:	01030313          	addi	t1,t1,16
   1175c:	14078263          	beqz	a5,118a0 <_malloc_r+0x6b4>
   11760:	01833683          	ld	a3,24(t1)
   11764:	ca9ff06f          	j	1140c <_malloc_r+0x220>
   11768:	0107b503          	ld	a0,16(a5)
   1176c:	00176893          	ori	a7,a4,1
   11770:	0117b423          	sd	a7,8(a5)
   11774:	00d53c23          	sd	a3,24(a0)
   11778:	00a6b823          	sd	a0,16(a3)
   1177c:	00e78733          	add	a4,a5,a4
   11780:	02e83423          	sd	a4,40(a6)
   11784:	02e83023          	sd	a4,32(a6)
   11788:	0015e693          	ori	a3,a1,1
   1178c:	00c78633          	add	a2,a5,a2
   11790:	01c73c23          	sd	t3,24(a4)
   11794:	01c73823          	sd	t3,16(a4)
   11798:	00d73423          	sd	a3,8(a4)
   1179c:	00040513          	mv	a0,s0
   117a0:	00b63023          	sd	a1,0(a2)
   117a4:	00f13423          	sd	a5,8(sp)
   117a8:	32c000ef          	jal	11ad4 <__malloc_unlock>
   117ac:	00813783          	ld	a5,8(sp)
   117b0:	01078513          	addi	a0,a5,16
   117b4:	addff06f          	j	11290 <_malloc_r+0xa4>
   117b8:	00375893          	srli	a7,a4,0x3
   117bc:	00189693          	slli	a3,a7,0x1
   117c0:	0026869b          	addiw	a3,a3,2
   117c4:	00369693          	slli	a3,a3,0x3
   117c8:	0008889b          	sext.w	a7,a7
   117cc:	a55ff06f          	j	11220 <_malloc_r+0x34>
   117d0:	00678333          	add	t1,a5,t1
   117d4:	00833703          	ld	a4,8(t1)
   117d8:	00040513          	mv	a0,s0
   117dc:	00f13423          	sd	a5,8(sp)
   117e0:	00176713          	ori	a4,a4,1
   117e4:	00e33423          	sd	a4,8(t1)
   117e8:	2ec000ef          	jal	11ad4 <__malloc_unlock>
   117ec:	00813783          	ld	a5,8(sp)
   117f0:	01078513          	addi	a0,a5,16
   117f4:	a9dff06f          	j	11290 <_malloc_r+0xa4>
   117f8:	00176613          	ori	a2,a4,1
   117fc:	00c7b423          	sd	a2,8(a5)
   11800:	00e78733          	add	a4,a5,a4
   11804:	02e83423          	sd	a4,40(a6)
   11808:	02e83023          	sd	a4,32(a6)
   1180c:	0016e613          	ori	a2,a3,1
   11810:	00678333          	add	t1,a5,t1
   11814:	01c73c23          	sd	t3,24(a4)
   11818:	01c73823          	sd	t3,16(a4)
   1181c:	00c73423          	sd	a2,8(a4)
   11820:	00040513          	mv	a0,s0
   11824:	00d33023          	sd	a3,0(t1)
   11828:	00f13423          	sd	a5,8(sp)
   1182c:	2a8000ef          	jal	11ad4 <__malloc_unlock>
   11830:	00813783          	ld	a5,8(sp)
   11834:	01078513          	addi	a0,a5,16
   11838:	a59ff06f          	j	11290 <_malloc_r+0xa4>
   1183c:	00635693          	srli	a3,t1,0x6
   11840:	00169513          	slli	a0,a3,0x1
   11844:	0725051b          	addiw	a0,a0,114
   11848:	00351513          	slli	a0,a0,0x3
   1184c:	0386861b          	addiw	a2,a3,56
   11850:	e99ff06f          	j	116e8 <_malloc_r+0x4fc>
   11854:	15078e63          	beq	a5,a6,119b0 <_malloc_r+0x7c4>
   11858:	01083783          	ld	a5,16(a6)
   1185c:	0087b683          	ld	a3,8(a5)
   11860:	ffc6f693          	andi	a3,a3,-4
   11864:	40e68633          	sub	a2,a3,a4
   11868:	00e6e663          	bltu	a3,a4,11874 <_malloc_r+0x688>
   1186c:	02062693          	slti	a3,a2,32
   11870:	dc0684e3          	beqz	a3,11638 <_malloc_r+0x44c>
   11874:	00040513          	mv	a0,s0
   11878:	25c000ef          	jal	11ad4 <__malloc_unlock>
   1187c:	a11ff06f          	j	1128c <_malloc_r+0xa0>
   11880:	05c7889b          	addiw	a7,a5,92
   11884:	0018951b          	slliw	a0,a7,0x1
   11888:	05b78e1b          	addiw	t3,a5,91
   1188c:	00351513          	slli	a0,a0,0x3
   11890:	a5dff06f          	j	112ec <_malloc_r+0x100>
   11894:	010f3783          	ld	a5,16(t5)
   11898:	fff8889b          	addiw	a7,a7,-1
   1189c:	23e79663          	bne	a5,t5,11ac8 <_malloc_r+0x8dc>
   118a0:	0038f793          	andi	a5,a7,3
   118a4:	ff0f0f13          	addi	t5,t5,-16
   118a8:	fe0796e3          	bnez	a5,11894 <_malloc_r+0x6a8>
   118ac:	00883683          	ld	a3,8(a6)
   118b0:	fff54793          	not	a5,a0
   118b4:	00d7f7b3          	and	a5,a5,a3
   118b8:	00f83423          	sd	a5,8(a6)
   118bc:	00151513          	slli	a0,a0,0x1
   118c0:	fff50693          	addi	a3,a0,-1
   118c4:	baf6f6e3          	bgeu	a3,a5,11470 <_malloc_r+0x284>
   118c8:	00f576b3          	and	a3,a0,a5
   118cc:	00069a63          	bnez	a3,118e0 <_malloc_r+0x6f4>
   118d0:	00151513          	slli	a0,a0,0x1
   118d4:	00f576b3          	and	a3,a0,a5
   118d8:	004f8f9b          	addiw	t6,t6,4
   118dc:	fe068ae3          	beqz	a3,118d0 <_malloc_r+0x6e4>
   118e0:	000f8893          	mv	a7,t6
   118e4:	b09ff06f          	j	113ec <_malloc_r+0x200>
   118e8:	02058593          	addi	a1,a1,32
   118ec:	bc9ff06f          	j	114b4 <_malloc_r+0x2c8>
   118f0:	4026561b          	sraiw	a2,a2,0x2
   118f4:	00100313          	li	t1,1
   118f8:	00c31633          	sll	a2,t1,a2
   118fc:	00c5e5b3          	or	a1,a1,a2
   11900:	00b83423          	sd	a1,8(a6)
   11904:	e11ff06f          	j	11714 <_malloc_r+0x528>
   11908:	00b30633          	add	a2,t1,a1
   1190c:	40c005b3          	neg	a1,a2
   11910:	03459593          	slli	a1,a1,0x34
   11914:	0345d593          	srli	a1,a1,0x34
   11918:	00040513          	mv	a0,s0
   1191c:	03c13c23          	sd	t3,56(sp)
   11920:	03013823          	sd	a6,48(sp)
   11924:	02f13423          	sd	a5,40(sp)
   11928:	02e13023          	sd	a4,32(sp)
   1192c:	01113c23          	sd	a7,24(sp)
   11930:	00613823          	sd	t1,16(sp)
   11934:	00c13423          	sd	a2,8(sp)
   11938:	04b13023          	sd	a1,64(sp)
   1193c:	5fc000ef          	jal	11f38 <_sbrk_r>
   11940:	00050693          	mv	a3,a0
   11944:	fff00513          	li	a0,-1
   11948:	01013303          	ld	t1,16(sp)
   1194c:	01813883          	ld	a7,24(sp)
   11950:	02013703          	ld	a4,32(sp)
   11954:	02813783          	ld	a5,40(sp)
   11958:	03013803          	ld	a6,48(sp)
   1195c:	03813e03          	ld	t3,56(sp)
   11960:	0ea68463          	beq	a3,a0,11a48 <_malloc_r+0x85c>
   11964:	04013583          	ld	a1,64(sp)
   11968:	0005851b          	sext.w	a0,a1
   1196c:	c49ff06f          	j	115b4 <_malloc_r+0x3c8>
   11970:	05400613          	li	a2,84
   11974:	08d66063          	bltu	a2,a3,119f4 <_malloc_r+0x808>
   11978:	00c35693          	srli	a3,t1,0xc
   1197c:	00169513          	slli	a0,a3,0x1
   11980:	0de5051b          	addiw	a0,a0,222
   11984:	00351513          	slli	a0,a0,0x3
   11988:	06e6861b          	addiw	a2,a3,110
   1198c:	d5dff06f          	j	116e8 <_malloc_r+0x4fc>
   11990:	15400693          	li	a3,340
   11994:	08f6e063          	bltu	a3,a5,11a14 <_malloc_r+0x828>
   11998:	00f75793          	srli	a5,a4,0xf
   1199c:	0787889b          	addiw	a7,a5,120
   119a0:	0018951b          	slliw	a0,a7,0x1
   119a4:	07778e1b          	addiw	t3,a5,119
   119a8:	00351513          	slli	a0,a0,0x3
   119ac:	941ff06f          	j	112ec <_malloc_r+0x100>
   119b0:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   119b4:	000e2503          	lw	a0,0(t3)
   119b8:	00b5053b          	addw	a0,a0,a1
   119bc:	00ae2023          	sw	a0,0(t3)
   119c0:	b51ff06f          	j	11510 <_malloc_r+0x324>
   119c4:	03431f13          	slli	t5,t1,0x34
   119c8:	b40f14e3          	bnez	t5,11510 <_malloc_r+0x324>
   119cc:	01083303          	ld	t1,16(a6)
   119d0:	00b885b3          	add	a1,a7,a1
   119d4:	0015e693          	ori	a3,a1,1
   119d8:	00d33423          	sd	a3,8(t1)
   119dc:	c35ff06f          	j	11610 <_malloc_r+0x424>
   119e0:	1a61bc23          	sd	t1,440(gp) # 139d0 <__malloc_sbrk_base>
   119e4:	b45ff06f          	j	11528 <_malloc_r+0x33c>
   119e8:	00100793          	li	a5,1
   119ec:	00f33423          	sd	a5,8(t1)
   119f0:	e85ff06f          	j	11874 <_malloc_r+0x688>
   119f4:	15400613          	li	a2,340
   119f8:	08d66a63          	bltu	a2,a3,11a8c <_malloc_r+0x8a0>
   119fc:	00f35693          	srli	a3,t1,0xf
   11a00:	00169513          	slli	a0,a3,0x1
   11a04:	0f05051b          	addiw	a0,a0,240
   11a08:	00351513          	slli	a0,a0,0x3
   11a0c:	0776861b          	addiw	a2,a3,119
   11a10:	cd9ff06f          	j	116e8 <_malloc_r+0x4fc>
   11a14:	55400693          	li	a3,1364
   11a18:	08f6ea63          	bltu	a3,a5,11aac <_malloc_r+0x8c0>
   11a1c:	01275793          	srli	a5,a4,0x12
   11a20:	07d7889b          	addiw	a7,a5,125
   11a24:	0018951b          	slliw	a0,a7,0x1
   11a28:	07c78e1b          	addiw	t3,a5,124
   11a2c:	00351513          	slli	a0,a0,0x3
   11a30:	8bdff06f          	j	112ec <_malloc_r+0x100>
   11a34:	ff0e8e93          	addi	t4,t4,-16
   11a38:	01d606b3          	add	a3,a2,t4
   11a3c:	00000513          	li	a0,0
   11a40:	00000593          	li	a1,0
   11a44:	b71ff06f          	j	115b4 <_malloc_r+0x3c8>
   11a48:	00813683          	ld	a3,8(sp)
   11a4c:	00000593          	li	a1,0
   11a50:	00000513          	li	a0,0
   11a54:	b61ff06f          	j	115b4 <_malloc_r+0x3c8>
   11a58:	01078593          	addi	a1,a5,16
   11a5c:	00040513          	mv	a0,s0
   11a60:	01c13c23          	sd	t3,24(sp)
   11a64:	01013823          	sd	a6,16(sp)
   11a68:	00e13423          	sd	a4,8(sp)
   11a6c:	c7cff0ef          	jal	10ee8 <_free_r>
   11a70:	01013803          	ld	a6,16(sp)
   11a74:	01813e03          	ld	t3,24(sp)
   11a78:	00813703          	ld	a4,8(sp)
   11a7c:	01083303          	ld	t1,16(a6)
   11a80:	000e2603          	lw	a2,0(t3)
   11a84:	00833683          	ld	a3,8(t1)
   11a88:	b89ff06f          	j	11610 <_malloc_r+0x424>
   11a8c:	55400613          	li	a2,1364
   11a90:	02d66663          	bltu	a2,a3,11abc <_malloc_r+0x8d0>
   11a94:	01235693          	srli	a3,t1,0x12
   11a98:	00169513          	slli	a0,a3,0x1
   11a9c:	0fa5051b          	addiw	a0,a0,250
   11aa0:	00351513          	slli	a0,a0,0x3
   11aa4:	07c6861b          	addiw	a2,a3,124
   11aa8:	c41ff06f          	j	116e8 <_malloc_r+0x4fc>
   11aac:	7f000513          	li	a0,2032
   11ab0:	07f00893          	li	a7,127
   11ab4:	07e00e13          	li	t3,126
   11ab8:	835ff06f          	j	112ec <_malloc_r+0x100>
   11abc:	7f000513          	li	a0,2032
   11ac0:	07e00613          	li	a2,126
   11ac4:	c25ff06f          	j	116e8 <_malloc_r+0x4fc>
   11ac8:	00883783          	ld	a5,8(a6)
   11acc:	df1ff06f          	j	118bc <_malloc_r+0x6d0>

0000000000011ad0 <__malloc_lock>:
   11ad0:	00008067          	ret

0000000000011ad4 <__malloc_unlock>:
   11ad4:	00008067          	ret

0000000000011ad8 <_fclose_r>:
   11ad8:	fe010113          	addi	sp,sp,-32
   11adc:	00113c23          	sd	ra,24(sp)
   11ae0:	01213023          	sd	s2,0(sp)
   11ae4:	02058863          	beqz	a1,11b14 <_fclose_r+0x3c>
   11ae8:	00813823          	sd	s0,16(sp)
   11aec:	00913423          	sd	s1,8(sp)
   11af0:	00058413          	mv	s0,a1
   11af4:	00050493          	mv	s1,a0
   11af8:	00050663          	beqz	a0,11b04 <_fclose_r+0x2c>
   11afc:	04853783          	ld	a5,72(a0)
   11b00:	0c078c63          	beqz	a5,11bd8 <_fclose_r+0x100>
   11b04:	01041783          	lh	a5,16(s0)
   11b08:	02079263          	bnez	a5,11b2c <_fclose_r+0x54>
   11b0c:	01013403          	ld	s0,16(sp)
   11b10:	00813483          	ld	s1,8(sp)
   11b14:	01813083          	ld	ra,24(sp)
   11b18:	00000913          	li	s2,0
   11b1c:	00090513          	mv	a0,s2
   11b20:	00013903          	ld	s2,0(sp)
   11b24:	02010113          	addi	sp,sp,32
   11b28:	00008067          	ret
   11b2c:	00040593          	mv	a1,s0
   11b30:	00048513          	mv	a0,s1
   11b34:	0b8000ef          	jal	11bec <__sflush_r>
   11b38:	05043783          	ld	a5,80(s0)
   11b3c:	00050913          	mv	s2,a0
   11b40:	00078a63          	beqz	a5,11b54 <_fclose_r+0x7c>
   11b44:	03043583          	ld	a1,48(s0)
   11b48:	00048513          	mv	a0,s1
   11b4c:	000780e7          	jalr	a5
   11b50:	06054463          	bltz	a0,11bb8 <_fclose_r+0xe0>
   11b54:	01045783          	lhu	a5,16(s0)
   11b58:	0807f793          	andi	a5,a5,128
   11b5c:	06079663          	bnez	a5,11bc8 <_fclose_r+0xf0>
   11b60:	05843583          	ld	a1,88(s0)
   11b64:	00058c63          	beqz	a1,11b7c <_fclose_r+0xa4>
   11b68:	07440793          	addi	a5,s0,116
   11b6c:	00f58663          	beq	a1,a5,11b78 <_fclose_r+0xa0>
   11b70:	00048513          	mv	a0,s1
   11b74:	b74ff0ef          	jal	10ee8 <_free_r>
   11b78:	04043c23          	sd	zero,88(s0)
   11b7c:	07843583          	ld	a1,120(s0)
   11b80:	00058863          	beqz	a1,11b90 <_fclose_r+0xb8>
   11b84:	00048513          	mv	a0,s1
   11b88:	b60ff0ef          	jal	10ee8 <_free_r>
   11b8c:	06043c23          	sd	zero,120(s0)
   11b90:	aadfe0ef          	jal	1063c <__sfp_lock_acquire>
   11b94:	00041823          	sh	zero,16(s0)
   11b98:	aa9fe0ef          	jal	10640 <__sfp_lock_release>
   11b9c:	01813083          	ld	ra,24(sp)
   11ba0:	01013403          	ld	s0,16(sp)
   11ba4:	00813483          	ld	s1,8(sp)
   11ba8:	00090513          	mv	a0,s2
   11bac:	00013903          	ld	s2,0(sp)
   11bb0:	02010113          	addi	sp,sp,32
   11bb4:	00008067          	ret
   11bb8:	01045783          	lhu	a5,16(s0)
   11bbc:	fff00913          	li	s2,-1
   11bc0:	0807f793          	andi	a5,a5,128
   11bc4:	f8078ee3          	beqz	a5,11b60 <_fclose_r+0x88>
   11bc8:	01843583          	ld	a1,24(s0)
   11bcc:	00048513          	mv	a0,s1
   11bd0:	b18ff0ef          	jal	10ee8 <_free_r>
   11bd4:	f8dff06f          	j	11b60 <_fclose_r+0x88>
   11bd8:	a41fe0ef          	jal	10618 <__sinit>
   11bdc:	f29ff06f          	j	11b04 <_fclose_r+0x2c>

0000000000011be0 <fclose>:
   11be0:	00050593          	mv	a1,a0
   11be4:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11be8:	ef1ff06f          	j	11ad8 <_fclose_r>

0000000000011bec <__sflush_r>:
   11bec:	01059703          	lh	a4,16(a1)
   11bf0:	fd010113          	addi	sp,sp,-48
   11bf4:	02813023          	sd	s0,32(sp)
   11bf8:	01313423          	sd	s3,8(sp)
   11bfc:	02113423          	sd	ra,40(sp)
   11c00:	00877793          	andi	a5,a4,8
   11c04:	00058413          	mv	s0,a1
   11c08:	00050993          	mv	s3,a0
   11c0c:	12079263          	bnez	a5,11d30 <__sflush_r+0x144>
   11c10:	000017b7          	lui	a5,0x1
   11c14:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c18:	0085a683          	lw	a3,8(a1)
   11c1c:	00f767b3          	or	a5,a4,a5
   11c20:	00f59823          	sh	a5,16(a1)
   11c24:	18d05c63          	blez	a3,11dbc <__sflush_r+0x1d0>
   11c28:	04843803          	ld	a6,72(s0)
   11c2c:	0e080663          	beqz	a6,11d18 <__sflush_r+0x12c>
   11c30:	00913c23          	sd	s1,24(sp)
   11c34:	03371693          	slli	a3,a4,0x33
   11c38:	0009a483          	lw	s1,0(s3)
   11c3c:	0009a023          	sw	zero,0(s3)
   11c40:	1806ca63          	bltz	a3,11dd4 <__sflush_r+0x1e8>
   11c44:	03043583          	ld	a1,48(s0)
   11c48:	00000613          	li	a2,0
   11c4c:	00100693          	li	a3,1
   11c50:	00098513          	mv	a0,s3
   11c54:	000800e7          	jalr	a6
   11c58:	fff00793          	li	a5,-1
   11c5c:	00050613          	mv	a2,a0
   11c60:	1af50c63          	beq	a0,a5,11e18 <__sflush_r+0x22c>
   11c64:	01041783          	lh	a5,16(s0)
   11c68:	04843803          	ld	a6,72(s0)
   11c6c:	0047f793          	andi	a5,a5,4
   11c70:	00078e63          	beqz	a5,11c8c <__sflush_r+0xa0>
   11c74:	00842703          	lw	a4,8(s0)
   11c78:	05843783          	ld	a5,88(s0)
   11c7c:	40e60633          	sub	a2,a2,a4
   11c80:	00078663          	beqz	a5,11c8c <__sflush_r+0xa0>
   11c84:	07042783          	lw	a5,112(s0)
   11c88:	40f60633          	sub	a2,a2,a5
   11c8c:	03043583          	ld	a1,48(s0)
   11c90:	00000693          	li	a3,0
   11c94:	00098513          	mv	a0,s3
   11c98:	000800e7          	jalr	a6
   11c9c:	fff00713          	li	a4,-1
   11ca0:	01041783          	lh	a5,16(s0)
   11ca4:	12e51c63          	bne	a0,a4,11ddc <__sflush_r+0x1f0>
   11ca8:	0009a683          	lw	a3,0(s3)
   11cac:	01d00713          	li	a4,29
   11cb0:	18d76263          	bltu	a4,a3,11e34 <__sflush_r+0x248>
   11cb4:	20400737          	lui	a4,0x20400
   11cb8:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec061>
   11cbc:	00d75733          	srl	a4,a4,a3
   11cc0:	00177713          	andi	a4,a4,1
   11cc4:	16070863          	beqz	a4,11e34 <__sflush_r+0x248>
   11cc8:	01843683          	ld	a3,24(s0)
   11ccc:	fffff737          	lui	a4,0xfffff
   11cd0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11cd4:	00e7f733          	and	a4,a5,a4
   11cd8:	00e41823          	sh	a4,16(s0)
   11cdc:	00042423          	sw	zero,8(s0)
   11ce0:	00d43023          	sd	a3,0(s0)
   11ce4:	03379713          	slli	a4,a5,0x33
   11ce8:	00075663          	bgez	a4,11cf4 <__sflush_r+0x108>
   11cec:	0009a783          	lw	a5,0(s3)
   11cf0:	10078863          	beqz	a5,11e00 <__sflush_r+0x214>
   11cf4:	05843583          	ld	a1,88(s0)
   11cf8:	0099a023          	sw	s1,0(s3)
   11cfc:	10058a63          	beqz	a1,11e10 <__sflush_r+0x224>
   11d00:	07440793          	addi	a5,s0,116
   11d04:	00f58663          	beq	a1,a5,11d10 <__sflush_r+0x124>
   11d08:	00098513          	mv	a0,s3
   11d0c:	9dcff0ef          	jal	10ee8 <_free_r>
   11d10:	01813483          	ld	s1,24(sp)
   11d14:	04043c23          	sd	zero,88(s0)
   11d18:	02813083          	ld	ra,40(sp)
   11d1c:	02013403          	ld	s0,32(sp)
   11d20:	00813983          	ld	s3,8(sp)
   11d24:	00000513          	li	a0,0
   11d28:	03010113          	addi	sp,sp,48
   11d2c:	00008067          	ret
   11d30:	01213823          	sd	s2,16(sp)
   11d34:	0185b903          	ld	s2,24(a1)
   11d38:	08090a63          	beqz	s2,11dcc <__sflush_r+0x1e0>
   11d3c:	00913c23          	sd	s1,24(sp)
   11d40:	0005b483          	ld	s1,0(a1)
   11d44:	00377713          	andi	a4,a4,3
   11d48:	0125b023          	sd	s2,0(a1)
   11d4c:	412484bb          	subw	s1,s1,s2
   11d50:	00000793          	li	a5,0
   11d54:	00071463          	bnez	a4,11d5c <__sflush_r+0x170>
   11d58:	0205a783          	lw	a5,32(a1)
   11d5c:	00f42623          	sw	a5,12(s0)
   11d60:	00904863          	bgtz	s1,11d70 <__sflush_r+0x184>
   11d64:	0640006f          	j	11dc8 <__sflush_r+0x1dc>
   11d68:	00a90933          	add	s2,s2,a0
   11d6c:	04905e63          	blez	s1,11dc8 <__sflush_r+0x1dc>
   11d70:	04043783          	ld	a5,64(s0)
   11d74:	03043583          	ld	a1,48(s0)
   11d78:	00048693          	mv	a3,s1
   11d7c:	00090613          	mv	a2,s2
   11d80:	00098513          	mv	a0,s3
   11d84:	000780e7          	jalr	a5
   11d88:	40a484bb          	subw	s1,s1,a0
   11d8c:	fca04ee3          	bgtz	a0,11d68 <__sflush_r+0x17c>
   11d90:	01045783          	lhu	a5,16(s0)
   11d94:	01013903          	ld	s2,16(sp)
   11d98:	0407e793          	ori	a5,a5,64
   11d9c:	02813083          	ld	ra,40(sp)
   11da0:	00f41823          	sh	a5,16(s0)
   11da4:	02013403          	ld	s0,32(sp)
   11da8:	01813483          	ld	s1,24(sp)
   11dac:	00813983          	ld	s3,8(sp)
   11db0:	fff00513          	li	a0,-1
   11db4:	03010113          	addi	sp,sp,48
   11db8:	00008067          	ret
   11dbc:	0705a683          	lw	a3,112(a1)
   11dc0:	e6d044e3          	bgtz	a3,11c28 <__sflush_r+0x3c>
   11dc4:	f55ff06f          	j	11d18 <__sflush_r+0x12c>
   11dc8:	01813483          	ld	s1,24(sp)
   11dcc:	01013903          	ld	s2,16(sp)
   11dd0:	f49ff06f          	j	11d18 <__sflush_r+0x12c>
   11dd4:	09043603          	ld	a2,144(s0)
   11dd8:	e95ff06f          	j	11c6c <__sflush_r+0x80>
   11ddc:	01843683          	ld	a3,24(s0)
   11de0:	fffff737          	lui	a4,0xfffff
   11de4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11de8:	00e7f733          	and	a4,a5,a4
   11dec:	00e41823          	sh	a4,16(s0)
   11df0:	00042423          	sw	zero,8(s0)
   11df4:	00d43023          	sd	a3,0(s0)
   11df8:	03379713          	slli	a4,a5,0x33
   11dfc:	ee075ce3          	bgez	a4,11cf4 <__sflush_r+0x108>
   11e00:	05843583          	ld	a1,88(s0)
   11e04:	08a43823          	sd	a0,144(s0)
   11e08:	0099a023          	sw	s1,0(s3)
   11e0c:	ee059ae3          	bnez	a1,11d00 <__sflush_r+0x114>
   11e10:	01813483          	ld	s1,24(sp)
   11e14:	f05ff06f          	j	11d18 <__sflush_r+0x12c>
   11e18:	0009a783          	lw	a5,0(s3)
   11e1c:	e40784e3          	beqz	a5,11c64 <__sflush_r+0x78>
   11e20:	fe378713          	addi	a4,a5,-29
   11e24:	00070c63          	beqz	a4,11e3c <__sflush_r+0x250>
   11e28:	fea78793          	addi	a5,a5,-22
   11e2c:	00078863          	beqz	a5,11e3c <__sflush_r+0x250>
   11e30:	01045783          	lhu	a5,16(s0)
   11e34:	0407e793          	ori	a5,a5,64
   11e38:	f65ff06f          	j	11d9c <__sflush_r+0x1b0>
   11e3c:	0099a023          	sw	s1,0(s3)
   11e40:	01813483          	ld	s1,24(sp)
   11e44:	ed5ff06f          	j	11d18 <__sflush_r+0x12c>

0000000000011e48 <_fflush_r>:
   11e48:	00050793          	mv	a5,a0
   11e4c:	00050663          	beqz	a0,11e58 <_fflush_r+0x10>
   11e50:	04853703          	ld	a4,72(a0)
   11e54:	00070e63          	beqz	a4,11e70 <_fflush_r+0x28>
   11e58:	01059703          	lh	a4,16(a1)
   11e5c:	00071663          	bnez	a4,11e68 <_fflush_r+0x20>
   11e60:	00000513          	li	a0,0
   11e64:	00008067          	ret
   11e68:	00078513          	mv	a0,a5
   11e6c:	d81ff06f          	j	11bec <__sflush_r>
   11e70:	fe010113          	addi	sp,sp,-32
   11e74:	00b13423          	sd	a1,8(sp)
   11e78:	00113c23          	sd	ra,24(sp)
   11e7c:	00a13023          	sd	a0,0(sp)
   11e80:	f98fe0ef          	jal	10618 <__sinit>
   11e84:	00813583          	ld	a1,8(sp)
   11e88:	00013783          	ld	a5,0(sp)
   11e8c:	01059703          	lh	a4,16(a1)
   11e90:	00070a63          	beqz	a4,11ea4 <_fflush_r+0x5c>
   11e94:	01813083          	ld	ra,24(sp)
   11e98:	00078513          	mv	a0,a5
   11e9c:	02010113          	addi	sp,sp,32
   11ea0:	d4dff06f          	j	11bec <__sflush_r>
   11ea4:	01813083          	ld	ra,24(sp)
   11ea8:	00000513          	li	a0,0
   11eac:	02010113          	addi	sp,sp,32
   11eb0:	00008067          	ret

0000000000011eb4 <fflush>:
   11eb4:	06050063          	beqz	a0,11f14 <fflush+0x60>
   11eb8:	00050593          	mv	a1,a0
   11ebc:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11ec0:	00050663          	beqz	a0,11ecc <fflush+0x18>
   11ec4:	04853783          	ld	a5,72(a0)
   11ec8:	00078c63          	beqz	a5,11ee0 <fflush+0x2c>
   11ecc:	01059783          	lh	a5,16(a1)
   11ed0:	00079663          	bnez	a5,11edc <fflush+0x28>
   11ed4:	00000513          	li	a0,0
   11ed8:	00008067          	ret
   11edc:	d11ff06f          	j	11bec <__sflush_r>
   11ee0:	fe010113          	addi	sp,sp,-32
   11ee4:	00b13423          	sd	a1,8(sp)
   11ee8:	00a13023          	sd	a0,0(sp)
   11eec:	00113c23          	sd	ra,24(sp)
   11ef0:	f28fe0ef          	jal	10618 <__sinit>
   11ef4:	00813583          	ld	a1,8(sp)
   11ef8:	00013503          	ld	a0,0(sp)
   11efc:	01059783          	lh	a5,16(a1)
   11f00:	02079663          	bnez	a5,11f2c <fflush+0x78>
   11f04:	01813083          	ld	ra,24(sp)
   11f08:	00000513          	li	a0,0
   11f0c:	02010113          	addi	sp,sp,32
   11f10:	00008067          	ret
   11f14:	000125b7          	lui	a1,0x12
   11f18:	00013537          	lui	a0,0x13
   11f1c:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   11f20:	e4858593          	addi	a1,a1,-440 # 11e48 <_fflush_r>
   11f24:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   11f28:	f44fe06f          	j	1066c <_fwalk_sglue>
   11f2c:	01813083          	ld	ra,24(sp)
   11f30:	02010113          	addi	sp,sp,32
   11f34:	cb9ff06f          	j	11bec <__sflush_r>

0000000000011f38 <_sbrk_r>:
   11f38:	fe010113          	addi	sp,sp,-32
   11f3c:	00813823          	sd	s0,16(sp)
   11f40:	00913423          	sd	s1,8(sp)
   11f44:	00050493          	mv	s1,a0
   11f48:	00058513          	mv	a0,a1
   11f4c:	00113c23          	sd	ra,24(sp)
   11f50:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   11f54:	228000ef          	jal	1217c <_sbrk>
   11f58:	fff00793          	li	a5,-1
   11f5c:	00f50c63          	beq	a0,a5,11f74 <_sbrk_r+0x3c>
   11f60:	01813083          	ld	ra,24(sp)
   11f64:	01013403          	ld	s0,16(sp)
   11f68:	00813483          	ld	s1,8(sp)
   11f6c:	02010113          	addi	sp,sp,32
   11f70:	00008067          	ret
   11f74:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   11f78:	fe0784e3          	beqz	a5,11f60 <_sbrk_r+0x28>
   11f7c:	01813083          	ld	ra,24(sp)
   11f80:	01013403          	ld	s0,16(sp)
   11f84:	00f4a023          	sw	a5,0(s1)
   11f88:	00813483          	ld	s1,8(sp)
   11f8c:	02010113          	addi	sp,sp,32
   11f90:	00008067          	ret

0000000000011f94 <__libc_fini_array>:
   11f94:	fe010113          	addi	sp,sp,-32
   11f98:	00813823          	sd	s0,16(sp)
   11f9c:	000137b7          	lui	a5,0x13
   11fa0:	00013437          	lui	s0,0x13
   11fa4:	01878793          	addi	a5,a5,24 # 13018 <result>
   11fa8:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11fac:	408787b3          	sub	a5,a5,s0
   11fb0:	00913423          	sd	s1,8(sp)
   11fb4:	00113c23          	sd	ra,24(sp)
   11fb8:	4037d493          	srai	s1,a5,0x3
   11fbc:	02048063          	beqz	s1,11fdc <__libc_fini_array+0x48>
   11fc0:	ff840413          	addi	s0,s0,-8
   11fc4:	00f40433          	add	s0,s0,a5
   11fc8:	00043783          	ld	a5,0(s0)
   11fcc:	fff48493          	addi	s1,s1,-1
   11fd0:	ff840413          	addi	s0,s0,-8
   11fd4:	000780e7          	jalr	a5
   11fd8:	fe0498e3          	bnez	s1,11fc8 <__libc_fini_array+0x34>
   11fdc:	01813083          	ld	ra,24(sp)
   11fe0:	01013403          	ld	s0,16(sp)
   11fe4:	00813483          	ld	s1,8(sp)
   11fe8:	02010113          	addi	sp,sp,32
   11fec:	00008067          	ret

0000000000011ff0 <__register_exitproc>:
   11ff0:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   11ff4:	04078e63          	beqz	a5,12050 <__register_exitproc+0x60>
   11ff8:	0087a703          	lw	a4,8(a5)
   11ffc:	01f00813          	li	a6,31
   12000:	08e84263          	blt	a6,a4,12084 <__register_exitproc+0x94>
   12004:	02050863          	beqz	a0,12034 <__register_exitproc+0x44>
   12008:	00371813          	slli	a6,a4,0x3
   1200c:	01078833          	add	a6,a5,a6
   12010:	10c83823          	sd	a2,272(a6)
   12014:	3107a883          	lw	a7,784(a5)
   12018:	00100613          	li	a2,1
   1201c:	00e6163b          	sllw	a2,a2,a4
   12020:	00c8e8b3          	or	a7,a7,a2
   12024:	3117a823          	sw	a7,784(a5)
   12028:	20d83823          	sd	a3,528(a6)
   1202c:	00200693          	li	a3,2
   12030:	02d50663          	beq	a0,a3,1205c <__register_exitproc+0x6c>
   12034:	0017069b          	addiw	a3,a4,1
   12038:	00371713          	slli	a4,a4,0x3
   1203c:	00d7a423          	sw	a3,8(a5)
   12040:	00e787b3          	add	a5,a5,a4
   12044:	00b7b823          	sd	a1,16(a5)
   12048:	00000513          	li	a0,0
   1204c:	00008067          	ret
   12050:	47018793          	addi	a5,gp,1136 # 13c88 <__atexit0>
   12054:	1cf1bc23          	sd	a5,472(gp) # 139f0 <__atexit>
   12058:	fa1ff06f          	j	11ff8 <__register_exitproc+0x8>
   1205c:	3147a683          	lw	a3,788(a5)
   12060:	00000513          	li	a0,0
   12064:	00d66633          	or	a2,a2,a3
   12068:	0017069b          	addiw	a3,a4,1
   1206c:	00371713          	slli	a4,a4,0x3
   12070:	30c7aa23          	sw	a2,788(a5)
   12074:	00d7a423          	sw	a3,8(a5)
   12078:	00e787b3          	add	a5,a5,a4
   1207c:	00b7b823          	sd	a1,16(a5)
   12080:	00008067          	ret
   12084:	fff00513          	li	a0,-1
   12088:	00008067          	ret

000000000001208c <_close>:
   1208c:	03900893          	li	a7,57
   12090:	00000073          	ecall
   12094:	00054663          	bltz	a0,120a0 <_close+0x14>
   12098:	0005051b          	sext.w	a0,a0
   1209c:	00008067          	ret
   120a0:	fe010113          	addi	sp,sp,-32
   120a4:	00113c23          	sd	ra,24(sp)
   120a8:	00a13423          	sd	a0,8(sp)
   120ac:	188000ef          	jal	12234 <__errno>
   120b0:	00813783          	ld	a5,8(sp)
   120b4:	01813083          	ld	ra,24(sp)
   120b8:	40f007bb          	negw	a5,a5
   120bc:	00f52023          	sw	a5,0(a0)
   120c0:	fff00513          	li	a0,-1
   120c4:	02010113          	addi	sp,sp,32
   120c8:	00008067          	ret

00000000000120cc <_exit>:
   120cc:	05d00893          	li	a7,93
   120d0:	00000073          	ecall
   120d4:	00054463          	bltz	a0,120dc <_exit+0x10>
   120d8:	0000006f          	j	120d8 <_exit+0xc>
   120dc:	fe010113          	addi	sp,sp,-32
   120e0:	00113c23          	sd	ra,24(sp)
   120e4:	00a13423          	sd	a0,8(sp)
   120e8:	14c000ef          	jal	12234 <__errno>
   120ec:	00813783          	ld	a5,8(sp)
   120f0:	40f007bb          	negw	a5,a5
   120f4:	00f52023          	sw	a5,0(a0)
   120f8:	0000006f          	j	120f8 <_exit+0x2c>

00000000000120fc <_lseek>:
   120fc:	03e00893          	li	a7,62
   12100:	00000073          	ecall
   12104:	00054463          	bltz	a0,1210c <_lseek+0x10>
   12108:	00008067          	ret
   1210c:	fe010113          	addi	sp,sp,-32
   12110:	00113c23          	sd	ra,24(sp)
   12114:	00a13423          	sd	a0,8(sp)
   12118:	11c000ef          	jal	12234 <__errno>
   1211c:	00813783          	ld	a5,8(sp)
   12120:	01813083          	ld	ra,24(sp)
   12124:	40f007bb          	negw	a5,a5
   12128:	00f52023          	sw	a5,0(a0)
   1212c:	fff00793          	li	a5,-1
   12130:	00078513          	mv	a0,a5
   12134:	02010113          	addi	sp,sp,32
   12138:	00008067          	ret

000000000001213c <_read>:
   1213c:	03f00893          	li	a7,63
   12140:	00000073          	ecall
   12144:	00054463          	bltz	a0,1214c <_read+0x10>
   12148:	00008067          	ret
   1214c:	fe010113          	addi	sp,sp,-32
   12150:	00113c23          	sd	ra,24(sp)
   12154:	00a13423          	sd	a0,8(sp)
   12158:	0dc000ef          	jal	12234 <__errno>
   1215c:	00813783          	ld	a5,8(sp)
   12160:	01813083          	ld	ra,24(sp)
   12164:	40f007bb          	negw	a5,a5
   12168:	00f52023          	sw	a5,0(a0)
   1216c:	fff00793          	li	a5,-1
   12170:	00078513          	mv	a0,a5
   12174:	02010113          	addi	sp,sp,32
   12178:	00008067          	ret

000000000001217c <_sbrk>:
   1217c:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   12180:	ff010113          	addi	sp,sp,-16
   12184:	00113423          	sd	ra,8(sp)
   12188:	00050713          	mv	a4,a0
   1218c:	02079063          	bnez	a5,121ac <_sbrk+0x30>
   12190:	0d600893          	li	a7,214
   12194:	00000513          	li	a0,0
   12198:	00000073          	ecall
   1219c:	fff00793          	li	a5,-1
   121a0:	02f50c63          	beq	a0,a5,121d8 <_sbrk+0x5c>
   121a4:	00050793          	mv	a5,a0
   121a8:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   121ac:	00f70533          	add	a0,a4,a5
   121b0:	0d600893          	li	a7,214
   121b4:	00000073          	ecall
   121b8:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   121bc:	00f70733          	add	a4,a4,a5
   121c0:	00e51c63          	bne	a0,a4,121d8 <_sbrk+0x5c>
   121c4:	00813083          	ld	ra,8(sp)
   121c8:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   121cc:	00078513          	mv	a0,a5
   121d0:	01010113          	addi	sp,sp,16
   121d4:	00008067          	ret
   121d8:	05c000ef          	jal	12234 <__errno>
   121dc:	00813083          	ld	ra,8(sp)
   121e0:	00c00793          	li	a5,12
   121e4:	00f52023          	sw	a5,0(a0)
   121e8:	fff00513          	li	a0,-1
   121ec:	01010113          	addi	sp,sp,16
   121f0:	00008067          	ret

00000000000121f4 <_write>:
   121f4:	04000893          	li	a7,64
   121f8:	00000073          	ecall
   121fc:	00054463          	bltz	a0,12204 <_write+0x10>
   12200:	00008067          	ret
   12204:	fe010113          	addi	sp,sp,-32
   12208:	00113c23          	sd	ra,24(sp)
   1220c:	00a13423          	sd	a0,8(sp)
   12210:	024000ef          	jal	12234 <__errno>
   12214:	00813783          	ld	a5,8(sp)
   12218:	01813083          	ld	ra,24(sp)
   1221c:	40f007bb          	negw	a5,a5
   12220:	00f52023          	sw	a5,0(a0)
   12224:	fff00793          	li	a5,-1
   12228:	00078513          	mv	a0,a5
   1222c:	02010113          	addi	sp,sp,32
   12230:	00008067          	ret

0000000000012234 <__errno>:
   12234:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   12238:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012240 <__EH_FRAME_BEGIN__>:
   12240:	0000                	.insn	2, 0x0000
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


test/build/without-syscall/add.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	331000ef          	jal	10c64 <__call_exitprocs>
   10138:	1c81b783          	ld	a5,456(gp) # 139e0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	771010ef          	jal	120b8 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	f8050513          	addi	a0,a0,-128 # 11f80 <__libc_fini_array>
   1015c:	4410006f          	j	10d9c <atexit>
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
   10184:	205000ef          	jal	10b88 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c1450513          	addi	a0,a0,-1004 # 10d9c <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	dec50513          	addi	a0,a0,-532 # 11f80 <__libc_fini_array>
   1019c:	401000ef          	jal	10d9c <atexit>
   101a0:	155000ef          	jal	10af4 <__libc_init_array>
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
   101d8:	22850513          	addi	a0,a0,552 # 12228 <__EH_FRAME_BEGIN__>
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
   1020c:	22850513          	addi	a0,a0,552 # 12228 <__EH_FRAME_BEGIN__>
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
   10234:	0480006f          	j	1027c <main+0x60>
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
   10288:	fae7d8e3          	bge	a5,a4,10238 <main+0x1c>
   1028c:	00500793          	li	a5,5
   10290:	fef42623          	sw	a5,-20(s0)
   10294:	0480006f          	j	102dc <main+0xc0>
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
   102e8:	fae7d8e3          	bge	a5,a4,10298 <main+0x7c>
   102ec:	00000793          	li	a5,0
   102f0:	00078513          	mv	a0,a5
   102f4:	01813083          	ld	ra,24(sp)
   102f8:	01013403          	ld	s0,16(sp)
   102fc:	02010113          	addi	sp,sp,32
   10300:	00008067          	ret

0000000000010304 <__fp_lock>:
   10304:	00000513          	li	a0,0
   10308:	00008067          	ret

000000000001030c <stdio_exit_handler>:
   1030c:	000125b7          	lui	a1,0x12
   10310:	00013537          	lui	a0,0x13
   10314:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10318:	ac458593          	addi	a1,a1,-1340 # 11ac4 <_fclose_r>
   1031c:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   10320:	3380006f          	j	10658 <_fwalk_sglue>

0000000000010324 <cleanup_stdio>:
   10324:	00853583          	ld	a1,8(a0)
   10328:	ff010113          	addi	sp,sp,-16
   1032c:	00813023          	sd	s0,0(sp)
   10330:	00113423          	sd	ra,8(sp)
   10334:	23818793          	addi	a5,gp,568 # 13a50 <__sf>
   10338:	00050413          	mv	s0,a0
   1033c:	00f58463          	beq	a1,a5,10344 <cleanup_stdio+0x20>
   10340:	784010ef          	jal	11ac4 <_fclose_r>
   10344:	01043583          	ld	a1,16(s0)
   10348:	2e818793          	addi	a5,gp,744 # 13b00 <__sf+0xb0>
   1034c:	00f58663          	beq	a1,a5,10358 <cleanup_stdio+0x34>
   10350:	00040513          	mv	a0,s0
   10354:	770010ef          	jal	11ac4 <_fclose_r>
   10358:	01843583          	ld	a1,24(s0)
   1035c:	39818793          	addi	a5,gp,920 # 13bb0 <__sf+0x160>
   10360:	00f58c63          	beq	a1,a5,10378 <cleanup_stdio+0x54>
   10364:	00040513          	mv	a0,s0
   10368:	00013403          	ld	s0,0(sp)
   1036c:	00813083          	ld	ra,8(sp)
   10370:	01010113          	addi	sp,sp,16
   10374:	7500106f          	j	11ac4 <_fclose_r>
   10378:	00813083          	ld	ra,8(sp)
   1037c:	00013403          	ld	s0,0(sp)
   10380:	01010113          	addi	sp,sp,16
   10384:	00008067          	ret

0000000000010388 <__fp_unlock>:
   10388:	00000513          	li	a0,0
   1038c:	00008067          	ret

0000000000010390 <global_stdio_init.part.0>:
   10390:	fd010113          	addi	sp,sp,-48
   10394:	000107b7          	lui	a5,0x10
   10398:	02813023          	sd	s0,32(sp)
   1039c:	30c78793          	addi	a5,a5,780 # 1030c <stdio_exit_handler>
   103a0:	23818413          	addi	s0,gp,568 # 13a50 <__sf>
   103a4:	02113423          	sd	ra,40(sp)
   103a8:	00913c23          	sd	s1,24(sp)
   103ac:	01213823          	sd	s2,16(sp)
   103b0:	01313423          	sd	s3,8(sp)
   103b4:	01413023          	sd	s4,0(sp)
   103b8:	1cf1b423          	sd	a5,456(gp) # 139e0 <__stdio_exit_handler>
   103bc:	00800613          	li	a2,8
   103c0:	00400793          	li	a5,4
   103c4:	00000593          	li	a1,0
   103c8:	2dc18513          	addi	a0,gp,732 # 13af4 <__sf+0xa4>
   103cc:	00f42823          	sw	a5,16(s0)
   103d0:	00043023          	sd	zero,0(s0)
   103d4:	00043423          	sd	zero,8(s0)
   103d8:	0a042623          	sw	zero,172(s0)
   103dc:	00043c23          	sd	zero,24(s0)
   103e0:	02042023          	sw	zero,32(s0)
   103e4:	02042423          	sw	zero,40(s0)
   103e8:	7a0000ef          	jal	10b88 <memset>
   103ec:	00010a37          	lui	s4,0x10
   103f0:	000109b7          	lui	s3,0x10
   103f4:	00011937          	lui	s2,0x11
   103f8:	000114b7          	lui	s1,0x11
   103fc:	000107b7          	lui	a5,0x10
   10400:	724a0a13          	addi	s4,s4,1828 # 10724 <__sread>
   10404:	78898993          	addi	s3,s3,1928 # 10788 <__swrite>
   10408:	81090913          	addi	s2,s2,-2032 # 10810 <__sseek>
   1040c:	87448493          	addi	s1,s1,-1932 # 10874 <__sclose>
   10410:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10414:	00800613          	li	a2,8
   10418:	00000593          	li	a1,0
   1041c:	38c18513          	addi	a0,gp,908 # 13ba4 <__sf+0x154>
   10420:	0cf42023          	sw	a5,192(s0)
   10424:	03443c23          	sd	s4,56(s0)
   10428:	05343023          	sd	s3,64(s0)
   1042c:	05243423          	sd	s2,72(s0)
   10430:	04943823          	sd	s1,80(s0)
   10434:	02843823          	sd	s0,48(s0)
   10438:	0a043823          	sd	zero,176(s0)
   1043c:	0a043c23          	sd	zero,184(s0)
   10440:	14042e23          	sw	zero,348(s0)
   10444:	0c043423          	sd	zero,200(s0)
   10448:	0c042823          	sw	zero,208(s0)
   1044c:	0c042c23          	sw	zero,216(s0)
   10450:	738000ef          	jal	10b88 <memset>
   10454:	000207b7          	lui	a5,0x20
   10458:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc072>
   1045c:	2e818713          	addi	a4,gp,744 # 13b00 <__sf+0xb0>
   10460:	43c18513          	addi	a0,gp,1084 # 13c54 <__sf+0x204>
   10464:	00800613          	li	a2,8
   10468:	00000593          	li	a1,0
   1046c:	0f443423          	sd	s4,232(s0)
   10470:	0f343823          	sd	s3,240(s0)
   10474:	0f243c23          	sd	s2,248(s0)
   10478:	10943023          	sd	s1,256(s0)
   1047c:	16f42823          	sw	a5,368(s0)
   10480:	16043023          	sd	zero,352(s0)
   10484:	16043423          	sd	zero,360(s0)
   10488:	20042623          	sw	zero,524(s0)
   1048c:	16043c23          	sd	zero,376(s0)
   10490:	18042023          	sw	zero,384(s0)
   10494:	18042423          	sw	zero,392(s0)
   10498:	0ee43023          	sd	a4,224(s0)
   1049c:	6ec000ef          	jal	10b88 <memset>
   104a0:	39818793          	addi	a5,gp,920 # 13bb0 <__sf+0x160>
   104a4:	19443c23          	sd	s4,408(s0)
   104a8:	1b343023          	sd	s3,416(s0)
   104ac:	1b243423          	sd	s2,424(s0)
   104b0:	1a943823          	sd	s1,432(s0)
   104b4:	02813083          	ld	ra,40(sp)
   104b8:	18f43823          	sd	a5,400(s0)
   104bc:	02013403          	ld	s0,32(sp)
   104c0:	01813483          	ld	s1,24(sp)
   104c4:	01013903          	ld	s2,16(sp)
   104c8:	00813983          	ld	s3,8(sp)
   104cc:	00013a03          	ld	s4,0(sp)
   104d0:	03010113          	addi	sp,sp,48
   104d4:	00008067          	ret

00000000000104d8 <__sfp>:
   104d8:	1c81b783          	ld	a5,456(gp) # 139e0 <__stdio_exit_handler>
   104dc:	fd010113          	addi	sp,sp,-48
   104e0:	00913c23          	sd	s1,24(sp)
   104e4:	02113423          	sd	ra,40(sp)
   104e8:	02813023          	sd	s0,32(sp)
   104ec:	00050493          	mv	s1,a0
   104f0:	0e078e63          	beqz	a5,105ec <__sfp+0x114>
   104f4:	82818693          	addi	a3,gp,-2008 # 13040 <__sglue>
   104f8:	0b000813          	li	a6,176
   104fc:	0086a703          	lw	a4,8(a3)
   10500:	08e05463          	blez	a4,10588 <__sfp+0xb0>
   10504:	02071713          	slli	a4,a4,0x20
   10508:	02075713          	srli	a4,a4,0x20
   1050c:	03070733          	mul	a4,a4,a6
   10510:	0106b403          	ld	s0,16(a3)
   10514:	00e40733          	add	a4,s0,a4
   10518:	00c0006f          	j	10524 <__sfp+0x4c>
   1051c:	0b040413          	addi	s0,s0,176
   10520:	06e40463          	beq	s0,a4,10588 <__sfp+0xb0>
   10524:	01041783          	lh	a5,16(s0)
   10528:	fe079ae3          	bnez	a5,1051c <__sfp+0x44>
   1052c:	ffff07b7          	lui	a5,0xffff0
   10530:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc061>
   10534:	00f42823          	sw	a5,16(s0)
   10538:	0a042623          	sw	zero,172(s0)
   1053c:	00043023          	sd	zero,0(s0)
   10540:	00043423          	sd	zero,8(s0)
   10544:	00043c23          	sd	zero,24(s0)
   10548:	02042023          	sw	zero,32(s0)
   1054c:	02042423          	sw	zero,40(s0)
   10550:	00800613          	li	a2,8
   10554:	00000593          	li	a1,0
   10558:	0a440513          	addi	a0,s0,164
   1055c:	62c000ef          	jal	10b88 <memset>
   10560:	04043c23          	sd	zero,88(s0)
   10564:	06042023          	sw	zero,96(s0)
   10568:	06043c23          	sd	zero,120(s0)
   1056c:	08042023          	sw	zero,128(s0)
   10570:	02813083          	ld	ra,40(sp)
   10574:	00040513          	mv	a0,s0
   10578:	02013403          	ld	s0,32(sp)
   1057c:	01813483          	ld	s1,24(sp)
   10580:	03010113          	addi	sp,sp,48
   10584:	00008067          	ret
   10588:	0006b403          	ld	s0,0(a3)
   1058c:	00040663          	beqz	s0,10598 <__sfp+0xc0>
   10590:	00040693          	mv	a3,s0
   10594:	f69ff06f          	j	104fc <__sfp+0x24>
   10598:	2d800593          	li	a1,728
   1059c:	00048513          	mv	a0,s1
   105a0:	00d13423          	sd	a3,8(sp)
   105a4:	435000ef          	jal	111d8 <_malloc_r>
   105a8:	00813683          	ld	a3,8(sp)
   105ac:	00050413          	mv	s0,a0
   105b0:	04050263          	beqz	a0,105f4 <__sfp+0x11c>
   105b4:	00400793          	li	a5,4
   105b8:	00f52423          	sw	a5,8(a0)
   105bc:	01850513          	addi	a0,a0,24
   105c0:	00043023          	sd	zero,0(s0)
   105c4:	00a43823          	sd	a0,16(s0)
   105c8:	2c000613          	li	a2,704
   105cc:	00000593          	li	a1,0
   105d0:	00d13423          	sd	a3,8(sp)
   105d4:	5b4000ef          	jal	10b88 <memset>
   105d8:	00813683          	ld	a3,8(sp)
   105dc:	0b000813          	li	a6,176
   105e0:	0086b023          	sd	s0,0(a3)
   105e4:	00040693          	mv	a3,s0
   105e8:	f15ff06f          	j	104fc <__sfp+0x24>
   105ec:	da5ff0ef          	jal	10390 <global_stdio_init.part.0>
   105f0:	f05ff06f          	j	104f4 <__sfp+0x1c>
   105f4:	0006b023          	sd	zero,0(a3)
   105f8:	00c00793          	li	a5,12
   105fc:	00f4a023          	sw	a5,0(s1)
   10600:	f71ff06f          	j	10570 <__sfp+0x98>

0000000000010604 <__sinit>:
   10604:	04853783          	ld	a5,72(a0)
   10608:	00078463          	beqz	a5,10610 <__sinit+0xc>
   1060c:	00008067          	ret
   10610:	000107b7          	lui	a5,0x10
   10614:	1c81b703          	ld	a4,456(gp) # 139e0 <__stdio_exit_handler>
   10618:	32478793          	addi	a5,a5,804 # 10324 <cleanup_stdio>
   1061c:	04f53423          	sd	a5,72(a0)
   10620:	fe0716e3          	bnez	a4,1060c <__sinit+0x8>
   10624:	d6dff06f          	j	10390 <global_stdio_init.part.0>

0000000000010628 <__sfp_lock_acquire>:
   10628:	00008067          	ret

000000000001062c <__sfp_lock_release>:
   1062c:	00008067          	ret

0000000000010630 <__fp_lock_all>:
   10630:	000105b7          	lui	a1,0x10
   10634:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   10638:	30458593          	addi	a1,a1,772 # 10304 <__fp_lock>
   1063c:	00000513          	li	a0,0
   10640:	0180006f          	j	10658 <_fwalk_sglue>

0000000000010644 <__fp_unlock_all>:
   10644:	000105b7          	lui	a1,0x10
   10648:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   1064c:	38858593          	addi	a1,a1,904 # 10388 <__fp_unlock>
   10650:	00000513          	li	a0,0
   10654:	0040006f          	j	10658 <_fwalk_sglue>

0000000000010658 <_fwalk_sglue>:
   10658:	fb010113          	addi	sp,sp,-80
   1065c:	03213823          	sd	s2,48(sp)
   10660:	03313423          	sd	s3,40(sp)
   10664:	03413023          	sd	s4,32(sp)
   10668:	01513c23          	sd	s5,24(sp)
   1066c:	01613823          	sd	s6,16(sp)
   10670:	01713423          	sd	s7,8(sp)
   10674:	01813023          	sd	s8,0(sp)
   10678:	04113423          	sd	ra,72(sp)
   1067c:	04813023          	sd	s0,64(sp)
   10680:	02913c23          	sd	s1,56(sp)
   10684:	00060993          	mv	s3,a2
   10688:	00050a93          	mv	s5,a0
   1068c:	00058b13          	mv	s6,a1
   10690:	00000913          	li	s2,0
   10694:	0b000b93          	li	s7,176
   10698:	00100c13          	li	s8,1
   1069c:	fff00a13          	li	s4,-1
   106a0:	0089a483          	lw	s1,8(s3)
   106a4:	04905263          	blez	s1,106e8 <_fwalk_sglue+0x90>
   106a8:	02049493          	slli	s1,s1,0x20
   106ac:	0204d493          	srli	s1,s1,0x20
   106b0:	037484b3          	mul	s1,s1,s7
   106b4:	0109b403          	ld	s0,16(s3)
   106b8:	009404b3          	add	s1,s0,s1
   106bc:	01045783          	lhu	a5,16(s0)
   106c0:	02fc7063          	bgeu	s8,a5,106e0 <_fwalk_sglue+0x88>
   106c4:	01241783          	lh	a5,18(s0)
   106c8:	00040593          	mv	a1,s0
   106cc:	000a8513          	mv	a0,s5
   106d0:	01478863          	beq	a5,s4,106e0 <_fwalk_sglue+0x88>
   106d4:	000b00e7          	jalr	s6
   106d8:	01256933          	or	s2,a0,s2
   106dc:	0009091b          	sext.w	s2,s2
   106e0:	0b040413          	addi	s0,s0,176
   106e4:	fc941ce3          	bne	s0,s1,106bc <_fwalk_sglue+0x64>
   106e8:	0009b983          	ld	s3,0(s3)
   106ec:	fa099ae3          	bnez	s3,106a0 <_fwalk_sglue+0x48>
   106f0:	04813083          	ld	ra,72(sp)
   106f4:	04013403          	ld	s0,64(sp)
   106f8:	03813483          	ld	s1,56(sp)
   106fc:	02813983          	ld	s3,40(sp)
   10700:	02013a03          	ld	s4,32(sp)
   10704:	01813a83          	ld	s5,24(sp)
   10708:	01013b03          	ld	s6,16(sp)
   1070c:	00813b83          	ld	s7,8(sp)
   10710:	00013c03          	ld	s8,0(sp)
   10714:	00090513          	mv	a0,s2
   10718:	03013903          	ld	s2,48(sp)
   1071c:	05010113          	addi	sp,sp,80
   10720:	00008067          	ret

0000000000010724 <__sread>:
   10724:	ff010113          	addi	sp,sp,-16
   10728:	00813023          	sd	s0,0(sp)
   1072c:	00058413          	mv	s0,a1
   10730:	01259583          	lh	a1,18(a1)
   10734:	00113423          	sd	ra,8(sp)
   10738:	2ec000ef          	jal	10a24 <_read_r>
   1073c:	02054063          	bltz	a0,1075c <__sread+0x38>
   10740:	09043783          	ld	a5,144(s0)
   10744:	00813083          	ld	ra,8(sp)
   10748:	00a787b3          	add	a5,a5,a0
   1074c:	08f43823          	sd	a5,144(s0)
   10750:	00013403          	ld	s0,0(sp)
   10754:	01010113          	addi	sp,sp,16
   10758:	00008067          	ret
   1075c:	01045783          	lhu	a5,16(s0)
   10760:	fffff737          	lui	a4,0xfffff
   10764:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   10768:	00e7f7b3          	and	a5,a5,a4
   1076c:	00813083          	ld	ra,8(sp)
   10770:	00f41823          	sh	a5,16(s0)
   10774:	00013403          	ld	s0,0(sp)
   10778:	01010113          	addi	sp,sp,16
   1077c:	00008067          	ret

0000000000010780 <__seofread>:
   10780:	00000513          	li	a0,0
   10784:	00008067          	ret

0000000000010788 <__swrite>:
   10788:	01059783          	lh	a5,16(a1)
   1078c:	fd010113          	addi	sp,sp,-48
   10790:	00068313          	mv	t1,a3
   10794:	02113423          	sd	ra,40(sp)
   10798:	1007f693          	andi	a3,a5,256
   1079c:	00058713          	mv	a4,a1
   107a0:	00060893          	mv	a7,a2
   107a4:	00050813          	mv	a6,a0
   107a8:	02069863          	bnez	a3,107d8 <__swrite+0x50>
   107ac:	fffff6b7          	lui	a3,0xfffff
   107b0:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb05f>
   107b4:	02813083          	ld	ra,40(sp)
   107b8:	00d7f7b3          	and	a5,a5,a3
   107bc:	01271583          	lh	a1,18(a4)
   107c0:	00f71823          	sh	a5,16(a4)
   107c4:	00030693          	mv	a3,t1
   107c8:	00088613          	mv	a2,a7
   107cc:	00080513          	mv	a0,a6
   107d0:	03010113          	addi	sp,sp,48
   107d4:	2b80006f          	j	10a8c <_write_r>
   107d8:	01259583          	lh	a1,18(a1)
   107dc:	00c13823          	sd	a2,16(sp)
   107e0:	00200693          	li	a3,2
   107e4:	00000613          	li	a2,0
   107e8:	00613c23          	sd	t1,24(sp)
   107ec:	00e13023          	sd	a4,0(sp)
   107f0:	00a13423          	sd	a0,8(sp)
   107f4:	1c8000ef          	jal	109bc <_lseek_r>
   107f8:	00013703          	ld	a4,0(sp)
   107fc:	01813303          	ld	t1,24(sp)
   10800:	01013883          	ld	a7,16(sp)
   10804:	01071783          	lh	a5,16(a4)
   10808:	00813803          	ld	a6,8(sp)
   1080c:	fa1ff06f          	j	107ac <__swrite+0x24>

0000000000010810 <__sseek>:
   10810:	ff010113          	addi	sp,sp,-16
   10814:	00813023          	sd	s0,0(sp)
   10818:	00058413          	mv	s0,a1
   1081c:	01259583          	lh	a1,18(a1)
   10820:	00113423          	sd	ra,8(sp)
   10824:	198000ef          	jal	109bc <_lseek_r>
   10828:	fff00713          	li	a4,-1
   1082c:	01041783          	lh	a5,16(s0)
   10830:	02e50263          	beq	a0,a4,10854 <__sseek+0x44>
   10834:	00001737          	lui	a4,0x1
   10838:	00e7e7b3          	or	a5,a5,a4
   1083c:	00813083          	ld	ra,8(sp)
   10840:	08a43823          	sd	a0,144(s0)
   10844:	00f41823          	sh	a5,16(s0)
   10848:	00013403          	ld	s0,0(sp)
   1084c:	01010113          	addi	sp,sp,16
   10850:	00008067          	ret
   10854:	80050713          	addi	a4,a0,-2048
   10858:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   1085c:	00e7f7b3          	and	a5,a5,a4
   10860:	00813083          	ld	ra,8(sp)
   10864:	00f41823          	sh	a5,16(s0)
   10868:	00013403          	ld	s0,0(sp)
   1086c:	01010113          	addi	sp,sp,16
   10870:	00008067          	ret

0000000000010874 <__sclose>:
   10874:	01259583          	lh	a1,18(a1)
   10878:	0040006f          	j	1087c <_close_r>

000000000001087c <_close_r>:
   1087c:	fe010113          	addi	sp,sp,-32
   10880:	00813823          	sd	s0,16(sp)
   10884:	00913423          	sd	s1,8(sp)
   10888:	00050493          	mv	s1,a0
   1088c:	00058513          	mv	a0,a1
   10890:	00113c23          	sd	ra,24(sp)
   10894:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10898:	7e0010ef          	jal	12078 <_close>
   1089c:	fff00793          	li	a5,-1
   108a0:	00f50c63          	beq	a0,a5,108b8 <_close_r+0x3c>
   108a4:	01813083          	ld	ra,24(sp)
   108a8:	01013403          	ld	s0,16(sp)
   108ac:	00813483          	ld	s1,8(sp)
   108b0:	02010113          	addi	sp,sp,32
   108b4:	00008067          	ret
   108b8:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   108bc:	fe0784e3          	beqz	a5,108a4 <_close_r+0x28>
   108c0:	01813083          	ld	ra,24(sp)
   108c4:	01013403          	ld	s0,16(sp)
   108c8:	00f4a023          	sw	a5,0(s1)
   108cc:	00813483          	ld	s1,8(sp)
   108d0:	02010113          	addi	sp,sp,32
   108d4:	00008067          	ret

00000000000108d8 <_reclaim_reent>:
   108d8:	1b01b783          	ld	a5,432(gp) # 139c8 <_impure_ptr>
   108dc:	0ca78e63          	beq	a5,a0,109b8 <_reclaim_reent+0xe0>
   108e0:	06853583          	ld	a1,104(a0)
   108e4:	fd010113          	addi	sp,sp,-48
   108e8:	00913c23          	sd	s1,24(sp)
   108ec:	02113423          	sd	ra,40(sp)
   108f0:	02813023          	sd	s0,32(sp)
   108f4:	00050493          	mv	s1,a0
   108f8:	04058863          	beqz	a1,10948 <_reclaim_reent+0x70>
   108fc:	01213823          	sd	s2,16(sp)
   10900:	01313423          	sd	s3,8(sp)
   10904:	00000913          	li	s2,0
   10908:	20000993          	li	s3,512
   1090c:	012587b3          	add	a5,a1,s2
   10910:	0007b403          	ld	s0,0(a5)
   10914:	00040e63          	beqz	s0,10930 <_reclaim_reent+0x58>
   10918:	00040593          	mv	a1,s0
   1091c:	00043403          	ld	s0,0(s0)
   10920:	00048513          	mv	a0,s1
   10924:	5b0000ef          	jal	10ed4 <_free_r>
   10928:	fe0418e3          	bnez	s0,10918 <_reclaim_reent+0x40>
   1092c:	0684b583          	ld	a1,104(s1)
   10930:	00890913          	addi	s2,s2,8
   10934:	fd391ce3          	bne	s2,s3,1090c <_reclaim_reent+0x34>
   10938:	00048513          	mv	a0,s1
   1093c:	598000ef          	jal	10ed4 <_free_r>
   10940:	01013903          	ld	s2,16(sp)
   10944:	00813983          	ld	s3,8(sp)
   10948:	0504b583          	ld	a1,80(s1)
   1094c:	00058663          	beqz	a1,10958 <_reclaim_reent+0x80>
   10950:	00048513          	mv	a0,s1
   10954:	580000ef          	jal	10ed4 <_free_r>
   10958:	0604b403          	ld	s0,96(s1)
   1095c:	00040c63          	beqz	s0,10974 <_reclaim_reent+0x9c>
   10960:	00040593          	mv	a1,s0
   10964:	00043403          	ld	s0,0(s0)
   10968:	00048513          	mv	a0,s1
   1096c:	568000ef          	jal	10ed4 <_free_r>
   10970:	fe0418e3          	bnez	s0,10960 <_reclaim_reent+0x88>
   10974:	0784b583          	ld	a1,120(s1)
   10978:	00058663          	beqz	a1,10984 <_reclaim_reent+0xac>
   1097c:	00048513          	mv	a0,s1
   10980:	554000ef          	jal	10ed4 <_free_r>
   10984:	0484b783          	ld	a5,72(s1)
   10988:	00078e63          	beqz	a5,109a4 <_reclaim_reent+0xcc>
   1098c:	02013403          	ld	s0,32(sp)
   10990:	02813083          	ld	ra,40(sp)
   10994:	00048513          	mv	a0,s1
   10998:	01813483          	ld	s1,24(sp)
   1099c:	03010113          	addi	sp,sp,48
   109a0:	00078067          	jr	a5
   109a4:	02813083          	ld	ra,40(sp)
   109a8:	02013403          	ld	s0,32(sp)
   109ac:	01813483          	ld	s1,24(sp)
   109b0:	03010113          	addi	sp,sp,48
   109b4:	00008067          	ret
   109b8:	00008067          	ret

00000000000109bc <_lseek_r>:
   109bc:	fe010113          	addi	sp,sp,-32
   109c0:	00058793          	mv	a5,a1
   109c4:	00813823          	sd	s0,16(sp)
   109c8:	00913423          	sd	s1,8(sp)
   109cc:	00060593          	mv	a1,a2
   109d0:	00050493          	mv	s1,a0
   109d4:	00068613          	mv	a2,a3
   109d8:	00078513          	mv	a0,a5
   109dc:	00113c23          	sd	ra,24(sp)
   109e0:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   109e4:	704010ef          	jal	120e8 <_lseek>
   109e8:	fff00793          	li	a5,-1
   109ec:	00f50c63          	beq	a0,a5,10a04 <_lseek_r+0x48>
   109f0:	01813083          	ld	ra,24(sp)
   109f4:	01013403          	ld	s0,16(sp)
   109f8:	00813483          	ld	s1,8(sp)
   109fc:	02010113          	addi	sp,sp,32
   10a00:	00008067          	ret
   10a04:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a08:	fe0784e3          	beqz	a5,109f0 <_lseek_r+0x34>
   10a0c:	01813083          	ld	ra,24(sp)
   10a10:	01013403          	ld	s0,16(sp)
   10a14:	00f4a023          	sw	a5,0(s1)
   10a18:	00813483          	ld	s1,8(sp)
   10a1c:	02010113          	addi	sp,sp,32
   10a20:	00008067          	ret

0000000000010a24 <_read_r>:
   10a24:	fe010113          	addi	sp,sp,-32
   10a28:	00058793          	mv	a5,a1
   10a2c:	00813823          	sd	s0,16(sp)
   10a30:	00913423          	sd	s1,8(sp)
   10a34:	00060593          	mv	a1,a2
   10a38:	00050493          	mv	s1,a0
   10a3c:	00068613          	mv	a2,a3
   10a40:	00078513          	mv	a0,a5
   10a44:	00113c23          	sd	ra,24(sp)
   10a48:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10a4c:	6dc010ef          	jal	12128 <_read>
   10a50:	fff00793          	li	a5,-1
   10a54:	00f50c63          	beq	a0,a5,10a6c <_read_r+0x48>
   10a58:	01813083          	ld	ra,24(sp)
   10a5c:	01013403          	ld	s0,16(sp)
   10a60:	00813483          	ld	s1,8(sp)
   10a64:	02010113          	addi	sp,sp,32
   10a68:	00008067          	ret
   10a6c:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10a70:	fe0784e3          	beqz	a5,10a58 <_read_r+0x34>
   10a74:	01813083          	ld	ra,24(sp)
   10a78:	01013403          	ld	s0,16(sp)
   10a7c:	00f4a023          	sw	a5,0(s1)
   10a80:	00813483          	ld	s1,8(sp)
   10a84:	02010113          	addi	sp,sp,32
   10a88:	00008067          	ret

0000000000010a8c <_write_r>:
   10a8c:	fe010113          	addi	sp,sp,-32
   10a90:	00058793          	mv	a5,a1
   10a94:	00813823          	sd	s0,16(sp)
   10a98:	00913423          	sd	s1,8(sp)
   10a9c:	00060593          	mv	a1,a2
   10aa0:	00050493          	mv	s1,a0
   10aa4:	00068613          	mv	a2,a3
   10aa8:	00078513          	mv	a0,a5
   10aac:	00113c23          	sd	ra,24(sp)
   10ab0:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   10ab4:	72c010ef          	jal	121e0 <_write>
   10ab8:	fff00793          	li	a5,-1
   10abc:	00f50c63          	beq	a0,a5,10ad4 <_write_r+0x48>
   10ac0:	01813083          	ld	ra,24(sp)
   10ac4:	01013403          	ld	s0,16(sp)
   10ac8:	00813483          	ld	s1,8(sp)
   10acc:	02010113          	addi	sp,sp,32
   10ad0:	00008067          	ret
   10ad4:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   10ad8:	fe0784e3          	beqz	a5,10ac0 <_write_r+0x34>
   10adc:	01813083          	ld	ra,24(sp)
   10ae0:	01013403          	ld	s0,16(sp)
   10ae4:	00f4a023          	sw	a5,0(s1)
   10ae8:	00813483          	ld	s1,8(sp)
   10aec:	02010113          	addi	sp,sp,32
   10af0:	00008067          	ret

0000000000010af4 <__libc_init_array>:
   10af4:	fe010113          	addi	sp,sp,-32
   10af8:	00813823          	sd	s0,16(sp)
   10afc:	01213023          	sd	s2,0(sp)
   10b00:	00013437          	lui	s0,0x13
   10b04:	00013937          	lui	s2,0x13
   10b08:	00113c23          	sd	ra,24(sp)
   10b0c:	00913423          	sd	s1,8(sp)
   10b10:	00090913          	mv	s2,s2
   10b14:	00040413          	mv	s0,s0
   10b18:	02890263          	beq	s2,s0,10b3c <__libc_init_array+0x48>
   10b1c:	40890933          	sub	s2,s2,s0
   10b20:	40395913          	srai	s2,s2,0x3
   10b24:	00000493          	li	s1,0
   10b28:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b2c:	00148493          	addi	s1,s1,1
   10b30:	00840413          	addi	s0,s0,8
   10b34:	000780e7          	jalr	a5
   10b38:	ff24e8e3          	bltu	s1,s2,10b28 <__libc_init_array+0x34>
   10b3c:	00013937          	lui	s2,0x13
   10b40:	00013437          	lui	s0,0x13
   10b44:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b48:	00040413          	mv	s0,s0
   10b4c:	02890263          	beq	s2,s0,10b70 <__libc_init_array+0x7c>
   10b50:	40890933          	sub	s2,s2,s0
   10b54:	40395913          	srai	s2,s2,0x3
   10b58:	00000493          	li	s1,0
   10b5c:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10b60:	00148493          	addi	s1,s1,1
   10b64:	00840413          	addi	s0,s0,8
   10b68:	000780e7          	jalr	a5
   10b6c:	ff24e8e3          	bltu	s1,s2,10b5c <__libc_init_array+0x68>
   10b70:	01813083          	ld	ra,24(sp)
   10b74:	01013403          	ld	s0,16(sp)
   10b78:	00813483          	ld	s1,8(sp)
   10b7c:	00013903          	ld	s2,0(sp)
   10b80:	02010113          	addi	sp,sp,32
   10b84:	00008067          	ret

0000000000010b88 <memset>:
   10b88:	00f00313          	li	t1,15
   10b8c:	00050713          	mv	a4,a0
   10b90:	02c37a63          	bgeu	t1,a2,10bc4 <memset+0x3c>
   10b94:	00f77793          	andi	a5,a4,15
   10b98:	0a079063          	bnez	a5,10c38 <memset+0xb0>
   10b9c:	06059e63          	bnez	a1,10c18 <memset+0x90>
   10ba0:	ff067693          	andi	a3,a2,-16
   10ba4:	00f67613          	andi	a2,a2,15
   10ba8:	00e686b3          	add	a3,a3,a4
   10bac:	00b73023          	sd	a1,0(a4)
   10bb0:	00b73423          	sd	a1,8(a4)
   10bb4:	01070713          	addi	a4,a4,16
   10bb8:	fed76ae3          	bltu	a4,a3,10bac <memset+0x24>
   10bbc:	00061463          	bnez	a2,10bc4 <memset+0x3c>
   10bc0:	00008067          	ret
   10bc4:	40c306b3          	sub	a3,t1,a2
   10bc8:	00269693          	slli	a3,a3,0x2
   10bcc:	00000297          	auipc	t0,0x0
   10bd0:	005686b3          	add	a3,a3,t0
   10bd4:	00c68067          	jr	12(a3)
   10bd8:	00b70723          	sb	a1,14(a4)
   10bdc:	00b706a3          	sb	a1,13(a4)
   10be0:	00b70623          	sb	a1,12(a4)
   10be4:	00b705a3          	sb	a1,11(a4)
   10be8:	00b70523          	sb	a1,10(a4)
   10bec:	00b704a3          	sb	a1,9(a4)
   10bf0:	00b70423          	sb	a1,8(a4)
   10bf4:	00b703a3          	sb	a1,7(a4)
   10bf8:	00b70323          	sb	a1,6(a4)
   10bfc:	00b702a3          	sb	a1,5(a4)
   10c00:	00b70223          	sb	a1,4(a4)
   10c04:	00b701a3          	sb	a1,3(a4)
   10c08:	00b70123          	sb	a1,2(a4)
   10c0c:	00b700a3          	sb	a1,1(a4)
   10c10:	00b70023          	sb	a1,0(a4)
   10c14:	00008067          	ret
   10c18:	0ff5f593          	zext.b	a1,a1
   10c1c:	00859693          	slli	a3,a1,0x8
   10c20:	00d5e5b3          	or	a1,a1,a3
   10c24:	01059693          	slli	a3,a1,0x10
   10c28:	00d5e5b3          	or	a1,a1,a3
   10c2c:	02059693          	slli	a3,a1,0x20
   10c30:	00d5e5b3          	or	a1,a1,a3
   10c34:	f6dff06f          	j	10ba0 <memset+0x18>
   10c38:	00279693          	slli	a3,a5,0x2
   10c3c:	00000297          	auipc	t0,0x0
   10c40:	005686b3          	add	a3,a3,t0
   10c44:	00008293          	mv	t0,ra
   10c48:	f98680e7          	jalr	-104(a3)
   10c4c:	00028093          	mv	ra,t0
   10c50:	ff078793          	addi	a5,a5,-16
   10c54:	40f70733          	sub	a4,a4,a5
   10c58:	00f60633          	add	a2,a2,a5
   10c5c:	f6c374e3          	bgeu	t1,a2,10bc4 <memset+0x3c>
   10c60:	f3dff06f          	j	10b9c <memset+0x14>

0000000000010c64 <__call_exitprocs>:
   10c64:	fb010113          	addi	sp,sp,-80
   10c68:	03413023          	sd	s4,32(sp)
   10c6c:	03213823          	sd	s2,48(sp)
   10c70:	1d81b903          	ld	s2,472(gp) # 139f0 <__atexit>
   10c74:	04113423          	sd	ra,72(sp)
   10c78:	06090e63          	beqz	s2,10cf4 <__call_exitprocs+0x90>
   10c7c:	03313423          	sd	s3,40(sp)
   10c80:	01513c23          	sd	s5,24(sp)
   10c84:	01613823          	sd	s6,16(sp)
   10c88:	01713423          	sd	s7,8(sp)
   10c8c:	04813023          	sd	s0,64(sp)
   10c90:	02913c23          	sd	s1,56(sp)
   10c94:	01813023          	sd	s8,0(sp)
   10c98:	00050b13          	mv	s6,a0
   10c9c:	00058b93          	mv	s7,a1
   10ca0:	fff00993          	li	s3,-1
   10ca4:	00100a93          	li	s5,1
   10ca8:	00892403          	lw	s0,8(s2)
   10cac:	fff4041b          	addiw	s0,s0,-1
   10cb0:	02044463          	bltz	s0,10cd8 <__call_exitprocs+0x74>
   10cb4:	01090493          	addi	s1,s2,16
   10cb8:	00341793          	slli	a5,s0,0x3
   10cbc:	00f484b3          	add	s1,s1,a5
   10cc0:	040b8463          	beqz	s7,10d08 <__call_exitprocs+0xa4>
   10cc4:	2004b783          	ld	a5,512(s1)
   10cc8:	05778063          	beq	a5,s7,10d08 <__call_exitprocs+0xa4>
   10ccc:	fff4041b          	addiw	s0,s0,-1
   10cd0:	ff848493          	addi	s1,s1,-8
   10cd4:	ff3418e3          	bne	s0,s3,10cc4 <__call_exitprocs+0x60>
   10cd8:	04013403          	ld	s0,64(sp)
   10cdc:	03813483          	ld	s1,56(sp)
   10ce0:	02813983          	ld	s3,40(sp)
   10ce4:	01813a83          	ld	s5,24(sp)
   10ce8:	01013b03          	ld	s6,16(sp)
   10cec:	00813b83          	ld	s7,8(sp)
   10cf0:	00013c03          	ld	s8,0(sp)
   10cf4:	04813083          	ld	ra,72(sp)
   10cf8:	03013903          	ld	s2,48(sp)
   10cfc:	02013a03          	ld	s4,32(sp)
   10d00:	05010113          	addi	sp,sp,80
   10d04:	00008067          	ret
   10d08:	00892783          	lw	a5,8(s2)
   10d0c:	0004b683          	ld	a3,0(s1)
   10d10:	fff7879b          	addiw	a5,a5,-1
   10d14:	06878a63          	beq	a5,s0,10d88 <__call_exitprocs+0x124>
   10d18:	0004b023          	sd	zero,0(s1)
   10d1c:	02068663          	beqz	a3,10d48 <__call_exitprocs+0xe4>
   10d20:	31092783          	lw	a5,784(s2)
   10d24:	008a973b          	sllw	a4,s5,s0
   10d28:	00892c03          	lw	s8,8(s2)
   10d2c:	00e7f7b3          	and	a5,a5,a4
   10d30:	02079463          	bnez	a5,10d58 <__call_exitprocs+0xf4>
   10d34:	000680e7          	jalr	a3
   10d38:	00892703          	lw	a4,8(s2)
   10d3c:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10d40:	03871e63          	bne	a4,s8,10d7c <__call_exitprocs+0x118>
   10d44:	03279c63          	bne	a5,s2,10d7c <__call_exitprocs+0x118>
   10d48:	fff4041b          	addiw	s0,s0,-1
   10d4c:	ff848493          	addi	s1,s1,-8
   10d50:	f73418e3          	bne	s0,s3,10cc0 <__call_exitprocs+0x5c>
   10d54:	f85ff06f          	j	10cd8 <__call_exitprocs+0x74>
   10d58:	31492783          	lw	a5,788(s2)
   10d5c:	1004b583          	ld	a1,256(s1)
   10d60:	00f77733          	and	a4,a4,a5
   10d64:	02071663          	bnez	a4,10d90 <__call_exitprocs+0x12c>
   10d68:	000b0513          	mv	a0,s6
   10d6c:	000680e7          	jalr	a3
   10d70:	00892703          	lw	a4,8(s2)
   10d74:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   10d78:	fd8706e3          	beq	a4,s8,10d44 <__call_exitprocs+0xe0>
   10d7c:	f4078ee3          	beqz	a5,10cd8 <__call_exitprocs+0x74>
   10d80:	00078913          	mv	s2,a5
   10d84:	f25ff06f          	j	10ca8 <__call_exitprocs+0x44>
   10d88:	00892423          	sw	s0,8(s2)
   10d8c:	f91ff06f          	j	10d1c <__call_exitprocs+0xb8>
   10d90:	00058513          	mv	a0,a1
   10d94:	000680e7          	jalr	a3
   10d98:	fa1ff06f          	j	10d38 <__call_exitprocs+0xd4>

0000000000010d9c <atexit>:
   10d9c:	00050593          	mv	a1,a0
   10da0:	00000693          	li	a3,0
   10da4:	00000613          	li	a2,0
   10da8:	00000513          	li	a0,0
   10dac:	2300106f          	j	11fdc <__register_exitproc>

0000000000010db0 <_malloc_trim_r>:
   10db0:	fd010113          	addi	sp,sp,-48
   10db4:	01213823          	sd	s2,16(sp)
   10db8:	00013937          	lui	s2,0x13
   10dbc:	02813023          	sd	s0,32(sp)
   10dc0:	00913c23          	sd	s1,24(sp)
   10dc4:	01313423          	sd	s3,8(sp)
   10dc8:	00058413          	mv	s0,a1
   10dcc:	02113423          	sd	ra,40(sp)
   10dd0:	00050993          	mv	s3,a0
   10dd4:	1b090913          	addi	s2,s2,432 # 131b0 <__malloc_av_>
   10dd8:	4e5000ef          	jal	11abc <__malloc_lock>
   10ddc:	01093783          	ld	a5,16(s2)
   10de0:	00001737          	lui	a4,0x1
   10de4:	0087b483          	ld	s1,8(a5)
   10de8:	ffc4f493          	andi	s1,s1,-4
   10dec:	7ff48793          	addi	a5,s1,2047
   10df0:	7e078793          	addi	a5,a5,2016
   10df4:	40878433          	sub	s0,a5,s0
   10df8:	00c45413          	srli	s0,s0,0xc
   10dfc:	fff40413          	addi	s0,s0,-1
   10e00:	00c41413          	slli	s0,s0,0xc
   10e04:	00e44e63          	blt	s0,a4,10e20 <_malloc_trim_r+0x70>
   10e08:	00000593          	li	a1,0
   10e0c:	00098513          	mv	a0,s3
   10e10:	114010ef          	jal	11f24 <_sbrk_r>
   10e14:	01093783          	ld	a5,16(s2)
   10e18:	009787b3          	add	a5,a5,s1
   10e1c:	02f50663          	beq	a0,a5,10e48 <_malloc_trim_r+0x98>
   10e20:	00098513          	mv	a0,s3
   10e24:	49d000ef          	jal	11ac0 <__malloc_unlock>
   10e28:	02813083          	ld	ra,40(sp)
   10e2c:	02013403          	ld	s0,32(sp)
   10e30:	01813483          	ld	s1,24(sp)
   10e34:	01013903          	ld	s2,16(sp)
   10e38:	00813983          	ld	s3,8(sp)
   10e3c:	00000513          	li	a0,0
   10e40:	03010113          	addi	sp,sp,48
   10e44:	00008067          	ret
   10e48:	408005b3          	neg	a1,s0
   10e4c:	00098513          	mv	a0,s3
   10e50:	0d4010ef          	jal	11f24 <_sbrk_r>
   10e54:	fff00793          	li	a5,-1
   10e58:	04f50463          	beq	a0,a5,10ea0 <_malloc_trim_r+0xf0>
   10e5c:	01093683          	ld	a3,16(s2)
   10e60:	4481a783          	lw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10e64:	408484b3          	sub	s1,s1,s0
   10e68:	0014e493          	ori	s1,s1,1
   10e6c:	00098513          	mv	a0,s3
   10e70:	408787bb          	subw	a5,a5,s0
   10e74:	0096b423          	sd	s1,8(a3)
   10e78:	44f1a423          	sw	a5,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10e7c:	445000ef          	jal	11ac0 <__malloc_unlock>
   10e80:	02813083          	ld	ra,40(sp)
   10e84:	02013403          	ld	s0,32(sp)
   10e88:	01813483          	ld	s1,24(sp)
   10e8c:	01013903          	ld	s2,16(sp)
   10e90:	00813983          	ld	s3,8(sp)
   10e94:	00100513          	li	a0,1
   10e98:	03010113          	addi	sp,sp,48
   10e9c:	00008067          	ret
   10ea0:	00000593          	li	a1,0
   10ea4:	00098513          	mv	a0,s3
   10ea8:	07c010ef          	jal	11f24 <_sbrk_r>
   10eac:	01093703          	ld	a4,16(s2)
   10eb0:	01f00693          	li	a3,31
   10eb4:	40e507b3          	sub	a5,a0,a4
   10eb8:	f6f6d4e3          	bge	a3,a5,10e20 <_malloc_trim_r+0x70>
   10ebc:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   10ec0:	0017e793          	ori	a5,a5,1
   10ec4:	40c50533          	sub	a0,a0,a2
   10ec8:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10ecc:	44a1a423          	sw	a0,1096(gp) # 13c60 <__malloc_current_mallinfo>
   10ed0:	f51ff06f          	j	10e20 <_malloc_trim_r+0x70>

0000000000010ed4 <_free_r>:
   10ed4:	12058863          	beqz	a1,11004 <_free_r+0x130>
   10ed8:	fe010113          	addi	sp,sp,-32
   10edc:	00813823          	sd	s0,16(sp)
   10ee0:	00b13423          	sd	a1,8(sp)
   10ee4:	00050413          	mv	s0,a0
   10ee8:	00113c23          	sd	ra,24(sp)
   10eec:	3d1000ef          	jal	11abc <__malloc_lock>
   10ef0:	00813583          	ld	a1,8(sp)
   10ef4:	00013837          	lui	a6,0x13
   10ef8:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   10efc:	ff85b503          	ld	a0,-8(a1)
   10f00:	ff058713          	addi	a4,a1,-16
   10f04:	01083883          	ld	a7,16(a6)
   10f08:	ffe57793          	andi	a5,a0,-2
   10f0c:	00f70633          	add	a2,a4,a5
   10f10:	00863683          	ld	a3,8(a2)
   10f14:	00157313          	andi	t1,a0,1
   10f18:	ffc6f693          	andi	a3,a3,-4
   10f1c:	18c88e63          	beq	a7,a2,110b8 <_free_r+0x1e4>
   10f20:	00d63423          	sd	a3,8(a2)
   10f24:	00d608b3          	add	a7,a2,a3
   10f28:	0088b883          	ld	a7,8(a7)
   10f2c:	0018f893          	andi	a7,a7,1
   10f30:	08031e63          	bnez	t1,10fcc <_free_r+0xf8>
   10f34:	ff05b303          	ld	t1,-16(a1)
   10f38:	000135b7          	lui	a1,0x13
   10f3c:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   10f40:	40670733          	sub	a4,a4,t1
   10f44:	01073503          	ld	a0,16(a4)
   10f48:	006787b3          	add	a5,a5,t1
   10f4c:	14b50063          	beq	a0,a1,1108c <_free_r+0x1b8>
   10f50:	01873303          	ld	t1,24(a4)
   10f54:	00653c23          	sd	t1,24(a0)
   10f58:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   10f5c:	1a088263          	beqz	a7,11100 <_free_r+0x22c>
   10f60:	0017e693          	ori	a3,a5,1
   10f64:	00d73423          	sd	a3,8(a4)
   10f68:	00f63023          	sd	a5,0(a2)
   10f6c:	1ff00693          	li	a3,511
   10f70:	0af6e663          	bltu	a3,a5,1101c <_free_r+0x148>
   10f74:	0037d793          	srli	a5,a5,0x3
   10f78:	00179693          	slli	a3,a5,0x1
   10f7c:	0026869b          	addiw	a3,a3,2
   10f80:	00369693          	slli	a3,a3,0x3
   10f84:	00883503          	ld	a0,8(a6)
   10f88:	00d806b3          	add	a3,a6,a3
   10f8c:	0006b583          	ld	a1,0(a3)
   10f90:	4027d61b          	sraiw	a2,a5,0x2
   10f94:	00100793          	li	a5,1
   10f98:	00c797b3          	sll	a5,a5,a2
   10f9c:	00a7e7b3          	or	a5,a5,a0
   10fa0:	ff068613          	addi	a2,a3,-16
   10fa4:	00b73823          	sd	a1,16(a4)
   10fa8:	00c73c23          	sd	a2,24(a4)
   10fac:	00f83423          	sd	a5,8(a6)
   10fb0:	00e6b023          	sd	a4,0(a3)
   10fb4:	00e5bc23          	sd	a4,24(a1)
   10fb8:	00040513          	mv	a0,s0
   10fbc:	01013403          	ld	s0,16(sp)
   10fc0:	01813083          	ld	ra,24(sp)
   10fc4:	02010113          	addi	sp,sp,32
   10fc8:	2f90006f          	j	11ac0 <__malloc_unlock>
   10fcc:	02089e63          	bnez	a7,11008 <_free_r+0x134>
   10fd0:	000135b7          	lui	a1,0x13
   10fd4:	00d787b3          	add	a5,a5,a3
   10fd8:	1c058593          	addi	a1,a1,448 # 131c0 <__malloc_av_+0x10>
   10fdc:	01063683          	ld	a3,16(a2)
   10fe0:	0017e893          	ori	a7,a5,1
   10fe4:	00f70533          	add	a0,a4,a5
   10fe8:	16b68663          	beq	a3,a1,11154 <_free_r+0x280>
   10fec:	01863603          	ld	a2,24(a2)
   10ff0:	00c6bc23          	sd	a2,24(a3)
   10ff4:	00d63823          	sd	a3,16(a2)
   10ff8:	01173423          	sd	a7,8(a4)
   10ffc:	00f53023          	sd	a5,0(a0)
   11000:	f6dff06f          	j	10f6c <_free_r+0x98>
   11004:	00008067          	ret
   11008:	00156513          	ori	a0,a0,1
   1100c:	fea5bc23          	sd	a0,-8(a1)
   11010:	00f63023          	sd	a5,0(a2)
   11014:	1ff00693          	li	a3,511
   11018:	f4f6fee3          	bgeu	a3,a5,10f74 <_free_r+0xa0>
   1101c:	0097d693          	srli	a3,a5,0x9
   11020:	00400613          	li	a2,4
   11024:	0ed66263          	bltu	a2,a3,11108 <_free_r+0x234>
   11028:	0067d693          	srli	a3,a5,0x6
   1102c:	00169593          	slli	a1,a3,0x1
   11030:	0725859b          	addiw	a1,a1,114
   11034:	00359593          	slli	a1,a1,0x3
   11038:	0386861b          	addiw	a2,a3,56
   1103c:	00b805b3          	add	a1,a6,a1
   11040:	0005b683          	ld	a3,0(a1)
   11044:	ff058593          	addi	a1,a1,-16
   11048:	00d59863          	bne	a1,a3,11058 <_free_r+0x184>
   1104c:	1240006f          	j	11170 <_free_r+0x29c>
   11050:	0106b683          	ld	a3,16(a3)
   11054:	00d58863          	beq	a1,a3,11064 <_free_r+0x190>
   11058:	0086b603          	ld	a2,8(a3)
   1105c:	ffc67613          	andi	a2,a2,-4
   11060:	fec7e8e3          	bltu	a5,a2,11050 <_free_r+0x17c>
   11064:	0186b583          	ld	a1,24(a3)
   11068:	00b73c23          	sd	a1,24(a4)
   1106c:	00d73823          	sd	a3,16(a4)
   11070:	00040513          	mv	a0,s0
   11074:	01013403          	ld	s0,16(sp)
   11078:	01813083          	ld	ra,24(sp)
   1107c:	00e5b823          	sd	a4,16(a1)
   11080:	00e6bc23          	sd	a4,24(a3)
   11084:	02010113          	addi	sp,sp,32
   11088:	2390006f          	j	11ac0 <__malloc_unlock>
   1108c:	0a089263          	bnez	a7,11130 <_free_r+0x25c>
   11090:	01863583          	ld	a1,24(a2)
   11094:	01063603          	ld	a2,16(a2)
   11098:	00f686b3          	add	a3,a3,a5
   1109c:	0016e793          	ori	a5,a3,1
   110a0:	00b63c23          	sd	a1,24(a2)
   110a4:	00c5b823          	sd	a2,16(a1)
   110a8:	00f73423          	sd	a5,8(a4)
   110ac:	00d70733          	add	a4,a4,a3
   110b0:	00d73023          	sd	a3,0(a4)
   110b4:	f05ff06f          	j	10fb8 <_free_r+0xe4>
   110b8:	00d786b3          	add	a3,a5,a3
   110bc:	02031063          	bnez	t1,110dc <_free_r+0x208>
   110c0:	ff05b783          	ld	a5,-16(a1)
   110c4:	40f70733          	sub	a4,a4,a5
   110c8:	01073603          	ld	a2,16(a4)
   110cc:	00f686b3          	add	a3,a3,a5
   110d0:	01873783          	ld	a5,24(a4)
   110d4:	00f63c23          	sd	a5,24(a2)
   110d8:	00c7b823          	sd	a2,16(a5)
   110dc:	0016e613          	ori	a2,a3,1
   110e0:	1c01b783          	ld	a5,448(gp) # 139d8 <__malloc_trim_threshold>
   110e4:	00c73423          	sd	a2,8(a4)
   110e8:	00e83823          	sd	a4,16(a6)
   110ec:	ecf6e6e3          	bltu	a3,a5,10fb8 <_free_r+0xe4>
   110f0:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   110f4:	00040513          	mv	a0,s0
   110f8:	cb9ff0ef          	jal	10db0 <_malloc_trim_r>
   110fc:	ebdff06f          	j	10fb8 <_free_r+0xe4>
   11100:	00d787b3          	add	a5,a5,a3
   11104:	ed9ff06f          	j	10fdc <_free_r+0x108>
   11108:	01400613          	li	a2,20
   1110c:	02d67a63          	bgeu	a2,a3,11140 <_free_r+0x26c>
   11110:	05400613          	li	a2,84
   11114:	06d66c63          	bltu	a2,a3,1118c <_free_r+0x2b8>
   11118:	00c7d693          	srli	a3,a5,0xc
   1111c:	00169593          	slli	a1,a3,0x1
   11120:	0de5859b          	addiw	a1,a1,222
   11124:	00359593          	slli	a1,a1,0x3
   11128:	06e6861b          	addiw	a2,a3,110
   1112c:	f11ff06f          	j	1103c <_free_r+0x168>
   11130:	0017e693          	ori	a3,a5,1
   11134:	00d73423          	sd	a3,8(a4)
   11138:	00f63023          	sd	a5,0(a2)
   1113c:	e7dff06f          	j	10fb8 <_free_r+0xe4>
   11140:	00169593          	slli	a1,a3,0x1
   11144:	0b85859b          	addiw	a1,a1,184
   11148:	00359593          	slli	a1,a1,0x3
   1114c:	05b6861b          	addiw	a2,a3,91
   11150:	eedff06f          	j	1103c <_free_r+0x168>
   11154:	02e83423          	sd	a4,40(a6)
   11158:	02e83023          	sd	a4,32(a6)
   1115c:	00b73c23          	sd	a1,24(a4)
   11160:	00b73823          	sd	a1,16(a4)
   11164:	01173423          	sd	a7,8(a4)
   11168:	00f53023          	sd	a5,0(a0)
   1116c:	e4dff06f          	j	10fb8 <_free_r+0xe4>
   11170:	00883503          	ld	a0,8(a6)
   11174:	4026561b          	sraiw	a2,a2,0x2
   11178:	00100793          	li	a5,1
   1117c:	00c797b3          	sll	a5,a5,a2
   11180:	00a7e7b3          	or	a5,a5,a0
   11184:	00f83423          	sd	a5,8(a6)
   11188:	ee1ff06f          	j	11068 <_free_r+0x194>
   1118c:	15400613          	li	a2,340
   11190:	00d66e63          	bltu	a2,a3,111ac <_free_r+0x2d8>
   11194:	00f7d693          	srli	a3,a5,0xf
   11198:	00169593          	slli	a1,a3,0x1
   1119c:	0f05859b          	addiw	a1,a1,240
   111a0:	00359593          	slli	a1,a1,0x3
   111a4:	0776861b          	addiw	a2,a3,119
   111a8:	e95ff06f          	j	1103c <_free_r+0x168>
   111ac:	55400613          	li	a2,1364
   111b0:	00d66e63          	bltu	a2,a3,111cc <_free_r+0x2f8>
   111b4:	0127d693          	srli	a3,a5,0x12
   111b8:	00169593          	slli	a1,a3,0x1
   111bc:	0fa5859b          	addiw	a1,a1,250
   111c0:	00359593          	slli	a1,a1,0x3
   111c4:	07c6861b          	addiw	a2,a3,124
   111c8:	e75ff06f          	j	1103c <_free_r+0x168>
   111cc:	7f000593          	li	a1,2032
   111d0:	07e00613          	li	a2,126
   111d4:	e69ff06f          	j	1103c <_free_r+0x168>

00000000000111d8 <_malloc_r>:
   111d8:	fa010113          	addi	sp,sp,-96
   111dc:	04813823          	sd	s0,80(sp)
   111e0:	04113c23          	sd	ra,88(sp)
   111e4:	01758713          	addi	a4,a1,23
   111e8:	02e00793          	li	a5,46
   111ec:	00050413          	mv	s0,a0
   111f0:	08e7ee63          	bltu	a5,a4,1128c <_malloc_r+0xb4>
   111f4:	02000713          	li	a4,32
   111f8:	06b76c63          	bltu	a4,a1,11270 <_malloc_r+0x98>
   111fc:	0c1000ef          	jal	11abc <__malloc_lock>
   11200:	02000713          	li	a4,32
   11204:	05000693          	li	a3,80
   11208:	00400893          	li	a7,4
   1120c:	00013837          	lui	a6,0x13
   11210:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   11214:	00d806b3          	add	a3,a6,a3
   11218:	0086b783          	ld	a5,8(a3)
   1121c:	ff068613          	addi	a2,a3,-16
   11220:	48c78063          	beq	a5,a2,116a0 <_malloc_r+0x4c8>
   11224:	0087b703          	ld	a4,8(a5)
   11228:	0187b603          	ld	a2,24(a5)
   1122c:	0107b583          	ld	a1,16(a5)
   11230:	ffc77713          	andi	a4,a4,-4
   11234:	00e78733          	add	a4,a5,a4
   11238:	00873683          	ld	a3,8(a4)
   1123c:	00c5bc23          	sd	a2,24(a1)
   11240:	00b63823          	sd	a1,16(a2)
   11244:	0016e693          	ori	a3,a3,1
   11248:	00040513          	mv	a0,s0
   1124c:	00d73423          	sd	a3,8(a4)
   11250:	00f13423          	sd	a5,8(sp)
   11254:	06d000ef          	jal	11ac0 <__malloc_unlock>
   11258:	00813783          	ld	a5,8(sp)
   1125c:	05813083          	ld	ra,88(sp)
   11260:	05013403          	ld	s0,80(sp)
   11264:	01078513          	addi	a0,a5,16
   11268:	06010113          	addi	sp,sp,96
   1126c:	00008067          	ret
   11270:	00c00793          	li	a5,12
   11274:	00f42023          	sw	a5,0(s0)
   11278:	00000513          	li	a0,0
   1127c:	05813083          	ld	ra,88(sp)
   11280:	05013403          	ld	s0,80(sp)
   11284:	06010113          	addi	sp,sp,96
   11288:	00008067          	ret
   1128c:	00100793          	li	a5,1
   11290:	ff077713          	andi	a4,a4,-16
   11294:	01f79793          	slli	a5,a5,0x1f
   11298:	fcf77ce3          	bgeu	a4,a5,11270 <_malloc_r+0x98>
   1129c:	fcb76ae3          	bltu	a4,a1,11270 <_malloc_r+0x98>
   112a0:	00e13423          	sd	a4,8(sp)
   112a4:	019000ef          	jal	11abc <__malloc_lock>
   112a8:	00813703          	ld	a4,8(sp)
   112ac:	1f700793          	li	a5,503
   112b0:	4ee7fa63          	bgeu	a5,a4,117a4 <_malloc_r+0x5cc>
   112b4:	00975793          	srli	a5,a4,0x9
   112b8:	18078a63          	beqz	a5,1144c <_malloc_r+0x274>
   112bc:	00400693          	li	a3,4
   112c0:	44f6ea63          	bltu	a3,a5,11714 <_malloc_r+0x53c>
   112c4:	00675793          	srli	a5,a4,0x6
   112c8:	0397889b          	addiw	a7,a5,57
   112cc:	0018951b          	slliw	a0,a7,0x1
   112d0:	03878e1b          	addiw	t3,a5,56
   112d4:	00351513          	slli	a0,a0,0x3
   112d8:	00013837          	lui	a6,0x13
   112dc:	1b080813          	addi	a6,a6,432 # 131b0 <__malloc_av_>
   112e0:	00a80533          	add	a0,a6,a0
   112e4:	00853783          	ld	a5,8(a0)
   112e8:	ff050513          	addi	a0,a0,-16
   112ec:	02f50863          	beq	a0,a5,1131c <_malloc_r+0x144>
   112f0:	01f00313          	li	t1,31
   112f4:	0140006f          	j	11308 <_malloc_r+0x130>
   112f8:	0187b583          	ld	a1,24(a5)
   112fc:	36065263          	bgez	a2,11660 <_malloc_r+0x488>
   11300:	00b50e63          	beq	a0,a1,1131c <_malloc_r+0x144>
   11304:	00058793          	mv	a5,a1
   11308:	0087b683          	ld	a3,8(a5)
   1130c:	ffc6f693          	andi	a3,a3,-4
   11310:	40e68633          	sub	a2,a3,a4
   11314:	fec352e3          	bge	t1,a2,112f8 <_malloc_r+0x120>
   11318:	000e0893          	mv	a7,t3
   1131c:	02083783          	ld	a5,32(a6)
   11320:	00013e37          	lui	t3,0x13
   11324:	1c0e0e13          	addi	t3,t3,448 # 131c0 <__malloc_av_+0x10>
   11328:	2fc78a63          	beq	a5,t3,1161c <_malloc_r+0x444>
   1132c:	0087b303          	ld	t1,8(a5)
   11330:	01f00613          	li	a2,31
   11334:	ffc37313          	andi	t1,t1,-4
   11338:	40e306b3          	sub	a3,t1,a4
   1133c:	4ad64463          	blt	a2,a3,117e4 <_malloc_r+0x60c>
   11340:	03c83423          	sd	t3,40(a6)
   11344:	03c83023          	sd	t3,32(a6)
   11348:	4606da63          	bgez	a3,117bc <_malloc_r+0x5e4>
   1134c:	1ff00693          	li	a3,511
   11350:	00883583          	ld	a1,8(a6)
   11354:	3466ee63          	bltu	a3,t1,116b0 <_malloc_r+0x4d8>
   11358:	00335313          	srli	t1,t1,0x3
   1135c:	00131693          	slli	a3,t1,0x1
   11360:	0026869b          	addiw	a3,a3,2
   11364:	00369693          	slli	a3,a3,0x3
   11368:	00d806b3          	add	a3,a6,a3
   1136c:	0006b503          	ld	a0,0(a3)
   11370:	4023531b          	sraiw	t1,t1,0x2
   11374:	00100613          	li	a2,1
   11378:	00661633          	sll	a2,a2,t1
   1137c:	00c5e5b3          	or	a1,a1,a2
   11380:	ff068613          	addi	a2,a3,-16
   11384:	00a7b823          	sd	a0,16(a5)
   11388:	00c7bc23          	sd	a2,24(a5)
   1138c:	00b83423          	sd	a1,8(a6)
   11390:	00f6b023          	sd	a5,0(a3)
   11394:	00f53c23          	sd	a5,24(a0)
   11398:	4028d79b          	sraiw	a5,a7,0x2
   1139c:	00100513          	li	a0,1
   113a0:	00f51533          	sll	a0,a0,a5
   113a4:	0aa5ec63          	bltu	a1,a0,1145c <_malloc_r+0x284>
   113a8:	00b577b3          	and	a5,a0,a1
   113ac:	02079463          	bnez	a5,113d4 <_malloc_r+0x1fc>
   113b0:	00151513          	slli	a0,a0,0x1
   113b4:	ffc8f893          	andi	a7,a7,-4
   113b8:	00b577b3          	and	a5,a0,a1
   113bc:	0048889b          	addiw	a7,a7,4
   113c0:	00079a63          	bnez	a5,113d4 <_malloc_r+0x1fc>
   113c4:	00151513          	slli	a0,a0,0x1
   113c8:	00b577b3          	and	a5,a0,a1
   113cc:	0048889b          	addiw	a7,a7,4
   113d0:	fe078ae3          	beqz	a5,113c4 <_malloc_r+0x1ec>
   113d4:	01f00e93          	li	t4,31
   113d8:	00189f13          	slli	t5,a7,0x1
   113dc:	002f0f1b          	addiw	t5,t5,2
   113e0:	003f1f13          	slli	t5,t5,0x3
   113e4:	ff0f0f13          	addi	t5,t5,-16
   113e8:	01e80f33          	add	t5,a6,t5
   113ec:	000f0313          	mv	t1,t5
   113f0:	01833683          	ld	a3,24(t1)
   113f4:	00088f93          	mv	t6,a7
   113f8:	34d30263          	beq	t1,a3,1173c <_malloc_r+0x564>
   113fc:	0086b603          	ld	a2,8(a3)
   11400:	00068793          	mv	a5,a3
   11404:	0186b683          	ld	a3,24(a3)
   11408:	ffc67613          	andi	a2,a2,-4
   1140c:	40e605b3          	sub	a1,a2,a4
   11410:	34bec263          	blt	t4,a1,11754 <_malloc_r+0x57c>
   11414:	fe05c2e3          	bltz	a1,113f8 <_malloc_r+0x220>
   11418:	00c78633          	add	a2,a5,a2
   1141c:	00863703          	ld	a4,8(a2)
   11420:	0107b583          	ld	a1,16(a5)
   11424:	00040513          	mv	a0,s0
   11428:	00176713          	ori	a4,a4,1
   1142c:	00e63423          	sd	a4,8(a2)
   11430:	00d5bc23          	sd	a3,24(a1)
   11434:	00b6b823          	sd	a1,16(a3)
   11438:	00f13423          	sd	a5,8(sp)
   1143c:	684000ef          	jal	11ac0 <__malloc_unlock>
   11440:	00813783          	ld	a5,8(sp)
   11444:	01078513          	addi	a0,a5,16
   11448:	e35ff06f          	j	1127c <_malloc_r+0xa4>
   1144c:	40000513          	li	a0,1024
   11450:	04000893          	li	a7,64
   11454:	03f00e13          	li	t3,63
   11458:	e81ff06f          	j	112d8 <_malloc_r+0x100>
   1145c:	01083783          	ld	a5,16(a6)
   11460:	0087b683          	ld	a3,8(a5)
   11464:	ffc6f893          	andi	a7,a3,-4
   11468:	40e88633          	sub	a2,a7,a4
   1146c:	00e8e663          	bltu	a7,a4,11478 <_malloc_r+0x2a0>
   11470:	02062693          	slti	a3,a2,32
   11474:	1a068863          	beqz	a3,11624 <_malloc_r+0x44c>
   11478:	1f01b583          	ld	a1,496(gp) # 13a08 <__malloc_top_pad>
   1147c:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_sbrk_base>
   11480:	fff00693          	li	a3,-1
   11484:	00b705b3          	add	a1,a4,a1
   11488:	44d60663          	beq	a2,a3,118d4 <_malloc_r+0x6fc>
   1148c:	000016b7          	lui	a3,0x1
   11490:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11494:	00d585b3          	add	a1,a1,a3
   11498:	fffff6b7          	lui	a3,0xfffff
   1149c:	00d5f5b3          	and	a1,a1,a3
   114a0:	00040513          	mv	a0,s0
   114a4:	03013423          	sd	a6,40(sp)
   114a8:	02f13023          	sd	a5,32(sp)
   114ac:	00e13c23          	sd	a4,24(sp)
   114b0:	01113823          	sd	a7,16(sp)
   114b4:	00b13423          	sd	a1,8(sp)
   114b8:	26d000ef          	jal	11f24 <_sbrk_r>
   114bc:	fff00693          	li	a3,-1
   114c0:	00813583          	ld	a1,8(sp)
   114c4:	01013883          	ld	a7,16(sp)
   114c8:	01813703          	ld	a4,24(sp)
   114cc:	02013783          	ld	a5,32(sp)
   114d0:	02813803          	ld	a6,40(sp)
   114d4:	00050313          	mv	t1,a0
   114d8:	36d50663          	beq	a0,a3,11844 <_malloc_r+0x66c>
   114dc:	011786b3          	add	a3,a5,a7
   114e0:	36d56063          	bltu	a0,a3,11840 <_malloc_r+0x668>
   114e4:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   114e8:	000e2603          	lw	a2,0(t3)
   114ec:	00b6063b          	addw	a2,a2,a1
   114f0:	00ce2023          	sw	a2,0(t3)
   114f4:	00060513          	mv	a0,a2
   114f8:	4a668c63          	beq	a3,t1,119b0 <_malloc_r+0x7d8>
   114fc:	1b81bf03          	ld	t5,440(gp) # 139d0 <__malloc_sbrk_base>
   11500:	fff00613          	li	a2,-1
   11504:	4ccf0463          	beq	t5,a2,119cc <_malloc_r+0x7f4>
   11508:	40d306b3          	sub	a3,t1,a3
   1150c:	00a686bb          	addw	a3,a3,a0
   11510:	00de2023          	sw	a3,0(t3)
   11514:	00f37e93          	andi	t4,t1,15
   11518:	3c0e8e63          	beqz	t4,118f4 <_malloc_r+0x71c>
   1151c:	ff037313          	andi	t1,t1,-16
   11520:	000016b7          	lui	a3,0x1
   11524:	01030313          	addi	t1,t1,16
   11528:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   1152c:	00b30633          	add	a2,t1,a1
   11530:	41d685b3          	sub	a1,a3,t4
   11534:	40c585b3          	sub	a1,a1,a2
   11538:	03459593          	slli	a1,a1,0x34
   1153c:	0345d593          	srli	a1,a1,0x34
   11540:	00040513          	mv	a0,s0
   11544:	05c13023          	sd	t3,64(sp)
   11548:	03013c23          	sd	a6,56(sp)
   1154c:	02f13823          	sd	a5,48(sp)
   11550:	02e13423          	sd	a4,40(sp)
   11554:	03113023          	sd	a7,32(sp)
   11558:	00613c23          	sd	t1,24(sp)
   1155c:	01d13823          	sd	t4,16(sp)
   11560:	00c13423          	sd	a2,8(sp)
   11564:	04b13423          	sd	a1,72(sp)
   11568:	1bd000ef          	jal	11f24 <_sbrk_r>
   1156c:	00050693          	mv	a3,a0
   11570:	fff00513          	li	a0,-1
   11574:	00813603          	ld	a2,8(sp)
   11578:	01013e83          	ld	t4,16(sp)
   1157c:	01813303          	ld	t1,24(sp)
   11580:	02013883          	ld	a7,32(sp)
   11584:	02813703          	ld	a4,40(sp)
   11588:	03013783          	ld	a5,48(sp)
   1158c:	03813803          	ld	a6,56(sp)
   11590:	04013e03          	ld	t3,64(sp)
   11594:	48a68663          	beq	a3,a0,11a20 <_malloc_r+0x848>
   11598:	04813583          	ld	a1,72(sp)
   1159c:	0005851b          	sext.w	a0,a1
   115a0:	000e2603          	lw	a2,0(t3)
   115a4:	406686b3          	sub	a3,a3,t1
   115a8:	00b686b3          	add	a3,a3,a1
   115ac:	0016e693          	ori	a3,a3,1
   115b0:	00683823          	sd	t1,16(a6)
   115b4:	00a6063b          	addw	a2,a2,a0
   115b8:	00d33423          	sd	a3,8(t1)
   115bc:	00ce2023          	sw	a2,0(t3)
   115c0:	03078e63          	beq	a5,a6,115fc <_malloc_r+0x424>
   115c4:	01f00513          	li	a0,31
   115c8:	41157663          	bgeu	a0,a7,119d4 <_malloc_r+0x7fc>
   115cc:	0087b583          	ld	a1,8(a5)
   115d0:	fe888693          	addi	a3,a7,-24
   115d4:	ff06f693          	andi	a3,a3,-16
   115d8:	0015f593          	andi	a1,a1,1
   115dc:	00d5e5b3          	or	a1,a1,a3
   115e0:	00b7b423          	sd	a1,8(a5)
   115e4:	00900893          	li	a7,9
   115e8:	00d785b3          	add	a1,a5,a3
   115ec:	0115b423          	sd	a7,8(a1)
   115f0:	0115b823          	sd	a7,16(a1)
   115f4:	44d56863          	bltu	a0,a3,11a44 <_malloc_r+0x86c>
   115f8:	00833683          	ld	a3,8(t1)
   115fc:	1e81b583          	ld	a1,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   11600:	00c5f463          	bgeu	a1,a2,11608 <_malloc_r+0x430>
   11604:	1ec1b423          	sd	a2,488(gp) # 13a00 <__malloc_max_sbrked_mem>
   11608:	1e01b583          	ld	a1,480(gp) # 139f8 <__malloc_max_total_mem>
   1160c:	00c5f463          	bgeu	a1,a2,11614 <_malloc_r+0x43c>
   11610:	1ec1b023          	sd	a2,480(gp) # 139f8 <__malloc_max_total_mem>
   11614:	00030793          	mv	a5,t1
   11618:	2340006f          	j	1184c <_malloc_r+0x674>
   1161c:	00883583          	ld	a1,8(a6)
   11620:	d79ff06f          	j	11398 <_malloc_r+0x1c0>
   11624:	00176693          	ori	a3,a4,1
   11628:	00d7b423          	sd	a3,8(a5)
   1162c:	00e78733          	add	a4,a5,a4
   11630:	00166613          	ori	a2,a2,1
   11634:	00e83823          	sd	a4,16(a6)
   11638:	00040513          	mv	a0,s0
   1163c:	00c73423          	sd	a2,8(a4)
   11640:	00f13423          	sd	a5,8(sp)
   11644:	47c000ef          	jal	11ac0 <__malloc_unlock>
   11648:	00813783          	ld	a5,8(sp)
   1164c:	05813083          	ld	ra,88(sp)
   11650:	05013403          	ld	s0,80(sp)
   11654:	01078513          	addi	a0,a5,16
   11658:	06010113          	addi	sp,sp,96
   1165c:	00008067          	ret
   11660:	0107b603          	ld	a2,16(a5)
   11664:	00d786b3          	add	a3,a5,a3
   11668:	0086b703          	ld	a4,8(a3)
   1166c:	00b63c23          	sd	a1,24(a2)
   11670:	00c5b823          	sd	a2,16(a1)
   11674:	00176713          	ori	a4,a4,1
   11678:	00040513          	mv	a0,s0
   1167c:	00e6b423          	sd	a4,8(a3)
   11680:	00f13423          	sd	a5,8(sp)
   11684:	43c000ef          	jal	11ac0 <__malloc_unlock>
   11688:	00813783          	ld	a5,8(sp)
   1168c:	05813083          	ld	ra,88(sp)
   11690:	05013403          	ld	s0,80(sp)
   11694:	01078513          	addi	a0,a5,16
   11698:	06010113          	addi	sp,sp,96
   1169c:	00008067          	ret
   116a0:	0186b783          	ld	a5,24(a3)
   116a4:	0028889b          	addiw	a7,a7,2
   116a8:	c6f68ae3          	beq	a3,a5,1131c <_malloc_r+0x144>
   116ac:	b79ff06f          	j	11224 <_malloc_r+0x4c>
   116b0:	00935693          	srli	a3,t1,0x9
   116b4:	00400613          	li	a2,4
   116b8:	16d67863          	bgeu	a2,a3,11828 <_malloc_r+0x650>
   116bc:	01400613          	li	a2,20
   116c0:	28d66e63          	bltu	a2,a3,1195c <_malloc_r+0x784>
   116c4:	00169513          	slli	a0,a3,0x1
   116c8:	0b85051b          	addiw	a0,a0,184
   116cc:	00351513          	slli	a0,a0,0x3
   116d0:	05b6861b          	addiw	a2,a3,91
   116d4:	00a80533          	add	a0,a6,a0
   116d8:	00053683          	ld	a3,0(a0)
   116dc:	ff050513          	addi	a0,a0,-16
   116e0:	00d51863          	bne	a0,a3,116f0 <_malloc_r+0x518>
   116e4:	1f80006f          	j	118dc <_malloc_r+0x704>
   116e8:	0106b683          	ld	a3,16(a3)
   116ec:	00d50863          	beq	a0,a3,116fc <_malloc_r+0x524>
   116f0:	0086b603          	ld	a2,8(a3)
   116f4:	ffc67613          	andi	a2,a2,-4
   116f8:	fec368e3          	bltu	t1,a2,116e8 <_malloc_r+0x510>
   116fc:	0186b503          	ld	a0,24(a3)
   11700:	00a7bc23          	sd	a0,24(a5)
   11704:	00d7b823          	sd	a3,16(a5)
   11708:	00f53823          	sd	a5,16(a0)
   1170c:	00f6bc23          	sd	a5,24(a3)
   11710:	c89ff06f          	j	11398 <_malloc_r+0x1c0>
   11714:	01400693          	li	a3,20
   11718:	14f6fa63          	bgeu	a3,a5,1186c <_malloc_r+0x694>
   1171c:	05400693          	li	a3,84
   11720:	24f6ee63          	bltu	a3,a5,1197c <_malloc_r+0x7a4>
   11724:	00c75793          	srli	a5,a4,0xc
   11728:	06f7889b          	addiw	a7,a5,111
   1172c:	0018951b          	slliw	a0,a7,0x1
   11730:	06e78e1b          	addiw	t3,a5,110
   11734:	00351513          	slli	a0,a0,0x3
   11738:	ba1ff06f          	j	112d8 <_malloc_r+0x100>
   1173c:	001f8f9b          	addiw	t6,t6,1
   11740:	003ff793          	andi	a5,t6,3
   11744:	01030313          	addi	t1,t1,16
   11748:	14078263          	beqz	a5,1188c <_malloc_r+0x6b4>
   1174c:	01833683          	ld	a3,24(t1)
   11750:	ca9ff06f          	j	113f8 <_malloc_r+0x220>
   11754:	0107b503          	ld	a0,16(a5)
   11758:	00176893          	ori	a7,a4,1
   1175c:	0117b423          	sd	a7,8(a5)
   11760:	00d53c23          	sd	a3,24(a0)
   11764:	00a6b823          	sd	a0,16(a3)
   11768:	00e78733          	add	a4,a5,a4
   1176c:	02e83423          	sd	a4,40(a6)
   11770:	02e83023          	sd	a4,32(a6)
   11774:	0015e693          	ori	a3,a1,1
   11778:	00c78633          	add	a2,a5,a2
   1177c:	01c73c23          	sd	t3,24(a4)
   11780:	01c73823          	sd	t3,16(a4)
   11784:	00d73423          	sd	a3,8(a4)
   11788:	00040513          	mv	a0,s0
   1178c:	00b63023          	sd	a1,0(a2)
   11790:	00f13423          	sd	a5,8(sp)
   11794:	32c000ef          	jal	11ac0 <__malloc_unlock>
   11798:	00813783          	ld	a5,8(sp)
   1179c:	01078513          	addi	a0,a5,16
   117a0:	addff06f          	j	1127c <_malloc_r+0xa4>
   117a4:	00375893          	srli	a7,a4,0x3
   117a8:	00189693          	slli	a3,a7,0x1
   117ac:	0026869b          	addiw	a3,a3,2
   117b0:	00369693          	slli	a3,a3,0x3
   117b4:	0008889b          	sext.w	a7,a7
   117b8:	a55ff06f          	j	1120c <_malloc_r+0x34>
   117bc:	00678333          	add	t1,a5,t1
   117c0:	00833703          	ld	a4,8(t1)
   117c4:	00040513          	mv	a0,s0
   117c8:	00f13423          	sd	a5,8(sp)
   117cc:	00176713          	ori	a4,a4,1
   117d0:	00e33423          	sd	a4,8(t1)
   117d4:	2ec000ef          	jal	11ac0 <__malloc_unlock>
   117d8:	00813783          	ld	a5,8(sp)
   117dc:	01078513          	addi	a0,a5,16
   117e0:	a9dff06f          	j	1127c <_malloc_r+0xa4>
   117e4:	00176613          	ori	a2,a4,1
   117e8:	00c7b423          	sd	a2,8(a5)
   117ec:	00e78733          	add	a4,a5,a4
   117f0:	02e83423          	sd	a4,40(a6)
   117f4:	02e83023          	sd	a4,32(a6)
   117f8:	0016e613          	ori	a2,a3,1
   117fc:	00678333          	add	t1,a5,t1
   11800:	01c73c23          	sd	t3,24(a4)
   11804:	01c73823          	sd	t3,16(a4)
   11808:	00c73423          	sd	a2,8(a4)
   1180c:	00040513          	mv	a0,s0
   11810:	00d33023          	sd	a3,0(t1)
   11814:	00f13423          	sd	a5,8(sp)
   11818:	2a8000ef          	jal	11ac0 <__malloc_unlock>
   1181c:	00813783          	ld	a5,8(sp)
   11820:	01078513          	addi	a0,a5,16
   11824:	a59ff06f          	j	1127c <_malloc_r+0xa4>
   11828:	00635693          	srli	a3,t1,0x6
   1182c:	00169513          	slli	a0,a3,0x1
   11830:	0725051b          	addiw	a0,a0,114
   11834:	00351513          	slli	a0,a0,0x3
   11838:	0386861b          	addiw	a2,a3,56
   1183c:	e99ff06f          	j	116d4 <_malloc_r+0x4fc>
   11840:	15078e63          	beq	a5,a6,1199c <_malloc_r+0x7c4>
   11844:	01083783          	ld	a5,16(a6)
   11848:	0087b683          	ld	a3,8(a5)
   1184c:	ffc6f693          	andi	a3,a3,-4
   11850:	40e68633          	sub	a2,a3,a4
   11854:	00e6e663          	bltu	a3,a4,11860 <_malloc_r+0x688>
   11858:	02062693          	slti	a3,a2,32
   1185c:	dc0684e3          	beqz	a3,11624 <_malloc_r+0x44c>
   11860:	00040513          	mv	a0,s0
   11864:	25c000ef          	jal	11ac0 <__malloc_unlock>
   11868:	a11ff06f          	j	11278 <_malloc_r+0xa0>
   1186c:	05c7889b          	addiw	a7,a5,92
   11870:	0018951b          	slliw	a0,a7,0x1
   11874:	05b78e1b          	addiw	t3,a5,91
   11878:	00351513          	slli	a0,a0,0x3
   1187c:	a5dff06f          	j	112d8 <_malloc_r+0x100>
   11880:	010f3783          	ld	a5,16(t5)
   11884:	fff8889b          	addiw	a7,a7,-1
   11888:	23e79663          	bne	a5,t5,11ab4 <_malloc_r+0x8dc>
   1188c:	0038f793          	andi	a5,a7,3
   11890:	ff0f0f13          	addi	t5,t5,-16
   11894:	fe0796e3          	bnez	a5,11880 <_malloc_r+0x6a8>
   11898:	00883683          	ld	a3,8(a6)
   1189c:	fff54793          	not	a5,a0
   118a0:	00d7f7b3          	and	a5,a5,a3
   118a4:	00f83423          	sd	a5,8(a6)
   118a8:	00151513          	slli	a0,a0,0x1
   118ac:	fff50693          	addi	a3,a0,-1
   118b0:	baf6f6e3          	bgeu	a3,a5,1145c <_malloc_r+0x284>
   118b4:	00f576b3          	and	a3,a0,a5
   118b8:	00069a63          	bnez	a3,118cc <_malloc_r+0x6f4>
   118bc:	00151513          	slli	a0,a0,0x1
   118c0:	00f576b3          	and	a3,a0,a5
   118c4:	004f8f9b          	addiw	t6,t6,4
   118c8:	fe068ae3          	beqz	a3,118bc <_malloc_r+0x6e4>
   118cc:	000f8893          	mv	a7,t6
   118d0:	b09ff06f          	j	113d8 <_malloc_r+0x200>
   118d4:	02058593          	addi	a1,a1,32
   118d8:	bc9ff06f          	j	114a0 <_malloc_r+0x2c8>
   118dc:	4026561b          	sraiw	a2,a2,0x2
   118e0:	00100313          	li	t1,1
   118e4:	00c31633          	sll	a2,t1,a2
   118e8:	00c5e5b3          	or	a1,a1,a2
   118ec:	00b83423          	sd	a1,8(a6)
   118f0:	e11ff06f          	j	11700 <_malloc_r+0x528>
   118f4:	00b30633          	add	a2,t1,a1
   118f8:	40c005b3          	neg	a1,a2
   118fc:	03459593          	slli	a1,a1,0x34
   11900:	0345d593          	srli	a1,a1,0x34
   11904:	00040513          	mv	a0,s0
   11908:	03c13c23          	sd	t3,56(sp)
   1190c:	03013823          	sd	a6,48(sp)
   11910:	02f13423          	sd	a5,40(sp)
   11914:	02e13023          	sd	a4,32(sp)
   11918:	01113c23          	sd	a7,24(sp)
   1191c:	00613823          	sd	t1,16(sp)
   11920:	00c13423          	sd	a2,8(sp)
   11924:	04b13023          	sd	a1,64(sp)
   11928:	5fc000ef          	jal	11f24 <_sbrk_r>
   1192c:	00050693          	mv	a3,a0
   11930:	fff00513          	li	a0,-1
   11934:	01013303          	ld	t1,16(sp)
   11938:	01813883          	ld	a7,24(sp)
   1193c:	02013703          	ld	a4,32(sp)
   11940:	02813783          	ld	a5,40(sp)
   11944:	03013803          	ld	a6,48(sp)
   11948:	03813e03          	ld	t3,56(sp)
   1194c:	0ea68463          	beq	a3,a0,11a34 <_malloc_r+0x85c>
   11950:	04013583          	ld	a1,64(sp)
   11954:	0005851b          	sext.w	a0,a1
   11958:	c49ff06f          	j	115a0 <_malloc_r+0x3c8>
   1195c:	05400613          	li	a2,84
   11960:	08d66063          	bltu	a2,a3,119e0 <_malloc_r+0x808>
   11964:	00c35693          	srli	a3,t1,0xc
   11968:	00169513          	slli	a0,a3,0x1
   1196c:	0de5051b          	addiw	a0,a0,222
   11970:	00351513          	slli	a0,a0,0x3
   11974:	06e6861b          	addiw	a2,a3,110
   11978:	d5dff06f          	j	116d4 <_malloc_r+0x4fc>
   1197c:	15400693          	li	a3,340
   11980:	08f6e063          	bltu	a3,a5,11a00 <_malloc_r+0x828>
   11984:	00f75793          	srli	a5,a4,0xf
   11988:	0787889b          	addiw	a7,a5,120
   1198c:	0018951b          	slliw	a0,a7,0x1
   11990:	07778e1b          	addiw	t3,a5,119
   11994:	00351513          	slli	a0,a0,0x3
   11998:	941ff06f          	j	112d8 <_malloc_r+0x100>
   1199c:	44818e13          	addi	t3,gp,1096 # 13c60 <__malloc_current_mallinfo>
   119a0:	000e2503          	lw	a0,0(t3)
   119a4:	00b5053b          	addw	a0,a0,a1
   119a8:	00ae2023          	sw	a0,0(t3)
   119ac:	b51ff06f          	j	114fc <_malloc_r+0x324>
   119b0:	03431f13          	slli	t5,t1,0x34
   119b4:	b40f14e3          	bnez	t5,114fc <_malloc_r+0x324>
   119b8:	01083303          	ld	t1,16(a6)
   119bc:	00b885b3          	add	a1,a7,a1
   119c0:	0015e693          	ori	a3,a1,1
   119c4:	00d33423          	sd	a3,8(t1)
   119c8:	c35ff06f          	j	115fc <_malloc_r+0x424>
   119cc:	1a61bc23          	sd	t1,440(gp) # 139d0 <__malloc_sbrk_base>
   119d0:	b45ff06f          	j	11514 <_malloc_r+0x33c>
   119d4:	00100793          	li	a5,1
   119d8:	00f33423          	sd	a5,8(t1)
   119dc:	e85ff06f          	j	11860 <_malloc_r+0x688>
   119e0:	15400613          	li	a2,340
   119e4:	08d66a63          	bltu	a2,a3,11a78 <_malloc_r+0x8a0>
   119e8:	00f35693          	srli	a3,t1,0xf
   119ec:	00169513          	slli	a0,a3,0x1
   119f0:	0f05051b          	addiw	a0,a0,240
   119f4:	00351513          	slli	a0,a0,0x3
   119f8:	0776861b          	addiw	a2,a3,119
   119fc:	cd9ff06f          	j	116d4 <_malloc_r+0x4fc>
   11a00:	55400693          	li	a3,1364
   11a04:	08f6ea63          	bltu	a3,a5,11a98 <_malloc_r+0x8c0>
   11a08:	01275793          	srli	a5,a4,0x12
   11a0c:	07d7889b          	addiw	a7,a5,125
   11a10:	0018951b          	slliw	a0,a7,0x1
   11a14:	07c78e1b          	addiw	t3,a5,124
   11a18:	00351513          	slli	a0,a0,0x3
   11a1c:	8bdff06f          	j	112d8 <_malloc_r+0x100>
   11a20:	ff0e8e93          	addi	t4,t4,-16
   11a24:	01d606b3          	add	a3,a2,t4
   11a28:	00000513          	li	a0,0
   11a2c:	00000593          	li	a1,0
   11a30:	b71ff06f          	j	115a0 <_malloc_r+0x3c8>
   11a34:	00813683          	ld	a3,8(sp)
   11a38:	00000593          	li	a1,0
   11a3c:	00000513          	li	a0,0
   11a40:	b61ff06f          	j	115a0 <_malloc_r+0x3c8>
   11a44:	01078593          	addi	a1,a5,16
   11a48:	00040513          	mv	a0,s0
   11a4c:	01c13c23          	sd	t3,24(sp)
   11a50:	01013823          	sd	a6,16(sp)
   11a54:	00e13423          	sd	a4,8(sp)
   11a58:	c7cff0ef          	jal	10ed4 <_free_r>
   11a5c:	01013803          	ld	a6,16(sp)
   11a60:	01813e03          	ld	t3,24(sp)
   11a64:	00813703          	ld	a4,8(sp)
   11a68:	01083303          	ld	t1,16(a6)
   11a6c:	000e2603          	lw	a2,0(t3)
   11a70:	00833683          	ld	a3,8(t1)
   11a74:	b89ff06f          	j	115fc <_malloc_r+0x424>
   11a78:	55400613          	li	a2,1364
   11a7c:	02d66663          	bltu	a2,a3,11aa8 <_malloc_r+0x8d0>
   11a80:	01235693          	srli	a3,t1,0x12
   11a84:	00169513          	slli	a0,a3,0x1
   11a88:	0fa5051b          	addiw	a0,a0,250
   11a8c:	00351513          	slli	a0,a0,0x3
   11a90:	07c6861b          	addiw	a2,a3,124
   11a94:	c41ff06f          	j	116d4 <_malloc_r+0x4fc>
   11a98:	7f000513          	li	a0,2032
   11a9c:	07f00893          	li	a7,127
   11aa0:	07e00e13          	li	t3,126
   11aa4:	835ff06f          	j	112d8 <_malloc_r+0x100>
   11aa8:	7f000513          	li	a0,2032
   11aac:	07e00613          	li	a2,126
   11ab0:	c25ff06f          	j	116d4 <_malloc_r+0x4fc>
   11ab4:	00883783          	ld	a5,8(a6)
   11ab8:	df1ff06f          	j	118a8 <_malloc_r+0x6d0>

0000000000011abc <__malloc_lock>:
   11abc:	00008067          	ret

0000000000011ac0 <__malloc_unlock>:
   11ac0:	00008067          	ret

0000000000011ac4 <_fclose_r>:
   11ac4:	fe010113          	addi	sp,sp,-32
   11ac8:	00113c23          	sd	ra,24(sp)
   11acc:	01213023          	sd	s2,0(sp)
   11ad0:	02058863          	beqz	a1,11b00 <_fclose_r+0x3c>
   11ad4:	00813823          	sd	s0,16(sp)
   11ad8:	00913423          	sd	s1,8(sp)
   11adc:	00058413          	mv	s0,a1
   11ae0:	00050493          	mv	s1,a0
   11ae4:	00050663          	beqz	a0,11af0 <_fclose_r+0x2c>
   11ae8:	04853783          	ld	a5,72(a0)
   11aec:	0c078c63          	beqz	a5,11bc4 <_fclose_r+0x100>
   11af0:	01041783          	lh	a5,16(s0)
   11af4:	02079263          	bnez	a5,11b18 <_fclose_r+0x54>
   11af8:	01013403          	ld	s0,16(sp)
   11afc:	00813483          	ld	s1,8(sp)
   11b00:	01813083          	ld	ra,24(sp)
   11b04:	00000913          	li	s2,0
   11b08:	00090513          	mv	a0,s2
   11b0c:	00013903          	ld	s2,0(sp)
   11b10:	02010113          	addi	sp,sp,32
   11b14:	00008067          	ret
   11b18:	00040593          	mv	a1,s0
   11b1c:	00048513          	mv	a0,s1
   11b20:	0b8000ef          	jal	11bd8 <__sflush_r>
   11b24:	05043783          	ld	a5,80(s0)
   11b28:	00050913          	mv	s2,a0
   11b2c:	00078a63          	beqz	a5,11b40 <_fclose_r+0x7c>
   11b30:	03043583          	ld	a1,48(s0)
   11b34:	00048513          	mv	a0,s1
   11b38:	000780e7          	jalr	a5
   11b3c:	06054463          	bltz	a0,11ba4 <_fclose_r+0xe0>
   11b40:	01045783          	lhu	a5,16(s0)
   11b44:	0807f793          	andi	a5,a5,128
   11b48:	06079663          	bnez	a5,11bb4 <_fclose_r+0xf0>
   11b4c:	05843583          	ld	a1,88(s0)
   11b50:	00058c63          	beqz	a1,11b68 <_fclose_r+0xa4>
   11b54:	07440793          	addi	a5,s0,116
   11b58:	00f58663          	beq	a1,a5,11b64 <_fclose_r+0xa0>
   11b5c:	00048513          	mv	a0,s1
   11b60:	b74ff0ef          	jal	10ed4 <_free_r>
   11b64:	04043c23          	sd	zero,88(s0)
   11b68:	07843583          	ld	a1,120(s0)
   11b6c:	00058863          	beqz	a1,11b7c <_fclose_r+0xb8>
   11b70:	00048513          	mv	a0,s1
   11b74:	b60ff0ef          	jal	10ed4 <_free_r>
   11b78:	06043c23          	sd	zero,120(s0)
   11b7c:	aadfe0ef          	jal	10628 <__sfp_lock_acquire>
   11b80:	00041823          	sh	zero,16(s0)
   11b84:	aa9fe0ef          	jal	1062c <__sfp_lock_release>
   11b88:	01813083          	ld	ra,24(sp)
   11b8c:	01013403          	ld	s0,16(sp)
   11b90:	00813483          	ld	s1,8(sp)
   11b94:	00090513          	mv	a0,s2
   11b98:	00013903          	ld	s2,0(sp)
   11b9c:	02010113          	addi	sp,sp,32
   11ba0:	00008067          	ret
   11ba4:	01045783          	lhu	a5,16(s0)
   11ba8:	fff00913          	li	s2,-1
   11bac:	0807f793          	andi	a5,a5,128
   11bb0:	f8078ee3          	beqz	a5,11b4c <_fclose_r+0x88>
   11bb4:	01843583          	ld	a1,24(s0)
   11bb8:	00048513          	mv	a0,s1
   11bbc:	b18ff0ef          	jal	10ed4 <_free_r>
   11bc0:	f8dff06f          	j	11b4c <_fclose_r+0x88>
   11bc4:	a41fe0ef          	jal	10604 <__sinit>
   11bc8:	f29ff06f          	j	11af0 <_fclose_r+0x2c>

0000000000011bcc <fclose>:
   11bcc:	00050593          	mv	a1,a0
   11bd0:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11bd4:	ef1ff06f          	j	11ac4 <_fclose_r>

0000000000011bd8 <__sflush_r>:
   11bd8:	01059703          	lh	a4,16(a1)
   11bdc:	fd010113          	addi	sp,sp,-48
   11be0:	02813023          	sd	s0,32(sp)
   11be4:	01313423          	sd	s3,8(sp)
   11be8:	02113423          	sd	ra,40(sp)
   11bec:	00877793          	andi	a5,a4,8
   11bf0:	00058413          	mv	s0,a1
   11bf4:	00050993          	mv	s3,a0
   11bf8:	12079263          	bnez	a5,11d1c <__sflush_r+0x144>
   11bfc:	000017b7          	lui	a5,0x1
   11c00:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c04:	0085a683          	lw	a3,8(a1)
   11c08:	00f767b3          	or	a5,a4,a5
   11c0c:	00f59823          	sh	a5,16(a1)
   11c10:	18d05c63          	blez	a3,11da8 <__sflush_r+0x1d0>
   11c14:	04843803          	ld	a6,72(s0)
   11c18:	0e080663          	beqz	a6,11d04 <__sflush_r+0x12c>
   11c1c:	00913c23          	sd	s1,24(sp)
   11c20:	03371693          	slli	a3,a4,0x33
   11c24:	0009a483          	lw	s1,0(s3)
   11c28:	0009a023          	sw	zero,0(s3)
   11c2c:	1806ca63          	bltz	a3,11dc0 <__sflush_r+0x1e8>
   11c30:	03043583          	ld	a1,48(s0)
   11c34:	00000613          	li	a2,0
   11c38:	00100693          	li	a3,1
   11c3c:	00098513          	mv	a0,s3
   11c40:	000800e7          	jalr	a6
   11c44:	fff00793          	li	a5,-1
   11c48:	00050613          	mv	a2,a0
   11c4c:	1af50c63          	beq	a0,a5,11e04 <__sflush_r+0x22c>
   11c50:	01041783          	lh	a5,16(s0)
   11c54:	04843803          	ld	a6,72(s0)
   11c58:	0047f793          	andi	a5,a5,4
   11c5c:	00078e63          	beqz	a5,11c78 <__sflush_r+0xa0>
   11c60:	00842703          	lw	a4,8(s0)
   11c64:	05843783          	ld	a5,88(s0)
   11c68:	40e60633          	sub	a2,a2,a4
   11c6c:	00078663          	beqz	a5,11c78 <__sflush_r+0xa0>
   11c70:	07042783          	lw	a5,112(s0)
   11c74:	40f60633          	sub	a2,a2,a5
   11c78:	03043583          	ld	a1,48(s0)
   11c7c:	00000693          	li	a3,0
   11c80:	00098513          	mv	a0,s3
   11c84:	000800e7          	jalr	a6
   11c88:	fff00713          	li	a4,-1
   11c8c:	01041783          	lh	a5,16(s0)
   11c90:	12e51c63          	bne	a0,a4,11dc8 <__sflush_r+0x1f0>
   11c94:	0009a683          	lw	a3,0(s3)
   11c98:	01d00713          	li	a4,29
   11c9c:	18d76263          	bltu	a4,a3,11e20 <__sflush_r+0x248>
   11ca0:	20400737          	lui	a4,0x20400
   11ca4:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec061>
   11ca8:	00d75733          	srl	a4,a4,a3
   11cac:	00177713          	andi	a4,a4,1
   11cb0:	16070863          	beqz	a4,11e20 <__sflush_r+0x248>
   11cb4:	01843683          	ld	a3,24(s0)
   11cb8:	fffff737          	lui	a4,0xfffff
   11cbc:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11cc0:	00e7f733          	and	a4,a5,a4
   11cc4:	00e41823          	sh	a4,16(s0)
   11cc8:	00042423          	sw	zero,8(s0)
   11ccc:	00d43023          	sd	a3,0(s0)
   11cd0:	03379713          	slli	a4,a5,0x33
   11cd4:	00075663          	bgez	a4,11ce0 <__sflush_r+0x108>
   11cd8:	0009a783          	lw	a5,0(s3)
   11cdc:	10078863          	beqz	a5,11dec <__sflush_r+0x214>
   11ce0:	05843583          	ld	a1,88(s0)
   11ce4:	0099a023          	sw	s1,0(s3)
   11ce8:	10058a63          	beqz	a1,11dfc <__sflush_r+0x224>
   11cec:	07440793          	addi	a5,s0,116
   11cf0:	00f58663          	beq	a1,a5,11cfc <__sflush_r+0x124>
   11cf4:	00098513          	mv	a0,s3
   11cf8:	9dcff0ef          	jal	10ed4 <_free_r>
   11cfc:	01813483          	ld	s1,24(sp)
   11d00:	04043c23          	sd	zero,88(s0)
   11d04:	02813083          	ld	ra,40(sp)
   11d08:	02013403          	ld	s0,32(sp)
   11d0c:	00813983          	ld	s3,8(sp)
   11d10:	00000513          	li	a0,0
   11d14:	03010113          	addi	sp,sp,48
   11d18:	00008067          	ret
   11d1c:	01213823          	sd	s2,16(sp)
   11d20:	0185b903          	ld	s2,24(a1)
   11d24:	08090a63          	beqz	s2,11db8 <__sflush_r+0x1e0>
   11d28:	00913c23          	sd	s1,24(sp)
   11d2c:	0005b483          	ld	s1,0(a1)
   11d30:	00377713          	andi	a4,a4,3
   11d34:	0125b023          	sd	s2,0(a1)
   11d38:	412484bb          	subw	s1,s1,s2
   11d3c:	00000793          	li	a5,0
   11d40:	00071463          	bnez	a4,11d48 <__sflush_r+0x170>
   11d44:	0205a783          	lw	a5,32(a1)
   11d48:	00f42623          	sw	a5,12(s0)
   11d4c:	00904863          	bgtz	s1,11d5c <__sflush_r+0x184>
   11d50:	0640006f          	j	11db4 <__sflush_r+0x1dc>
   11d54:	00a90933          	add	s2,s2,a0
   11d58:	04905e63          	blez	s1,11db4 <__sflush_r+0x1dc>
   11d5c:	04043783          	ld	a5,64(s0)
   11d60:	03043583          	ld	a1,48(s0)
   11d64:	00048693          	mv	a3,s1
   11d68:	00090613          	mv	a2,s2
   11d6c:	00098513          	mv	a0,s3
   11d70:	000780e7          	jalr	a5
   11d74:	40a484bb          	subw	s1,s1,a0
   11d78:	fca04ee3          	bgtz	a0,11d54 <__sflush_r+0x17c>
   11d7c:	01045783          	lhu	a5,16(s0)
   11d80:	01013903          	ld	s2,16(sp)
   11d84:	0407e793          	ori	a5,a5,64
   11d88:	02813083          	ld	ra,40(sp)
   11d8c:	00f41823          	sh	a5,16(s0)
   11d90:	02013403          	ld	s0,32(sp)
   11d94:	01813483          	ld	s1,24(sp)
   11d98:	00813983          	ld	s3,8(sp)
   11d9c:	fff00513          	li	a0,-1
   11da0:	03010113          	addi	sp,sp,48
   11da4:	00008067          	ret
   11da8:	0705a683          	lw	a3,112(a1)
   11dac:	e6d044e3          	bgtz	a3,11c14 <__sflush_r+0x3c>
   11db0:	f55ff06f          	j	11d04 <__sflush_r+0x12c>
   11db4:	01813483          	ld	s1,24(sp)
   11db8:	01013903          	ld	s2,16(sp)
   11dbc:	f49ff06f          	j	11d04 <__sflush_r+0x12c>
   11dc0:	09043603          	ld	a2,144(s0)
   11dc4:	e95ff06f          	j	11c58 <__sflush_r+0x80>
   11dc8:	01843683          	ld	a3,24(s0)
   11dcc:	fffff737          	lui	a4,0xfffff
   11dd0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb85f>
   11dd4:	00e7f733          	and	a4,a5,a4
   11dd8:	00e41823          	sh	a4,16(s0)
   11ddc:	00042423          	sw	zero,8(s0)
   11de0:	00d43023          	sd	a3,0(s0)
   11de4:	03379713          	slli	a4,a5,0x33
   11de8:	ee075ce3          	bgez	a4,11ce0 <__sflush_r+0x108>
   11dec:	05843583          	ld	a1,88(s0)
   11df0:	08a43823          	sd	a0,144(s0)
   11df4:	0099a023          	sw	s1,0(s3)
   11df8:	ee059ae3          	bnez	a1,11cec <__sflush_r+0x114>
   11dfc:	01813483          	ld	s1,24(sp)
   11e00:	f05ff06f          	j	11d04 <__sflush_r+0x12c>
   11e04:	0009a783          	lw	a5,0(s3)
   11e08:	e40784e3          	beqz	a5,11c50 <__sflush_r+0x78>
   11e0c:	fe378713          	addi	a4,a5,-29
   11e10:	00070c63          	beqz	a4,11e28 <__sflush_r+0x250>
   11e14:	fea78793          	addi	a5,a5,-22
   11e18:	00078863          	beqz	a5,11e28 <__sflush_r+0x250>
   11e1c:	01045783          	lhu	a5,16(s0)
   11e20:	0407e793          	ori	a5,a5,64
   11e24:	f65ff06f          	j	11d88 <__sflush_r+0x1b0>
   11e28:	0099a023          	sw	s1,0(s3)
   11e2c:	01813483          	ld	s1,24(sp)
   11e30:	ed5ff06f          	j	11d04 <__sflush_r+0x12c>

0000000000011e34 <_fflush_r>:
   11e34:	00050793          	mv	a5,a0
   11e38:	00050663          	beqz	a0,11e44 <_fflush_r+0x10>
   11e3c:	04853703          	ld	a4,72(a0)
   11e40:	00070e63          	beqz	a4,11e5c <_fflush_r+0x28>
   11e44:	01059703          	lh	a4,16(a1)
   11e48:	00071663          	bnez	a4,11e54 <_fflush_r+0x20>
   11e4c:	00000513          	li	a0,0
   11e50:	00008067          	ret
   11e54:	00078513          	mv	a0,a5
   11e58:	d81ff06f          	j	11bd8 <__sflush_r>
   11e5c:	fe010113          	addi	sp,sp,-32
   11e60:	00b13423          	sd	a1,8(sp)
   11e64:	00113c23          	sd	ra,24(sp)
   11e68:	00a13023          	sd	a0,0(sp)
   11e6c:	f98fe0ef          	jal	10604 <__sinit>
   11e70:	00813583          	ld	a1,8(sp)
   11e74:	00013783          	ld	a5,0(sp)
   11e78:	01059703          	lh	a4,16(a1)
   11e7c:	00070a63          	beqz	a4,11e90 <_fflush_r+0x5c>
   11e80:	01813083          	ld	ra,24(sp)
   11e84:	00078513          	mv	a0,a5
   11e88:	02010113          	addi	sp,sp,32
   11e8c:	d4dff06f          	j	11bd8 <__sflush_r>
   11e90:	01813083          	ld	ra,24(sp)
   11e94:	00000513          	li	a0,0
   11e98:	02010113          	addi	sp,sp,32
   11e9c:	00008067          	ret

0000000000011ea0 <fflush>:
   11ea0:	06050063          	beqz	a0,11f00 <fflush+0x60>
   11ea4:	00050593          	mv	a1,a0
   11ea8:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   11eac:	00050663          	beqz	a0,11eb8 <fflush+0x18>
   11eb0:	04853783          	ld	a5,72(a0)
   11eb4:	00078c63          	beqz	a5,11ecc <fflush+0x2c>
   11eb8:	01059783          	lh	a5,16(a1)
   11ebc:	00079663          	bnez	a5,11ec8 <fflush+0x28>
   11ec0:	00000513          	li	a0,0
   11ec4:	00008067          	ret
   11ec8:	d11ff06f          	j	11bd8 <__sflush_r>
   11ecc:	fe010113          	addi	sp,sp,-32
   11ed0:	00b13423          	sd	a1,8(sp)
   11ed4:	00a13023          	sd	a0,0(sp)
   11ed8:	00113c23          	sd	ra,24(sp)
   11edc:	f28fe0ef          	jal	10604 <__sinit>
   11ee0:	00813583          	ld	a1,8(sp)
   11ee4:	00013503          	ld	a0,0(sp)
   11ee8:	01059783          	lh	a5,16(a1)
   11eec:	02079663          	bnez	a5,11f18 <fflush+0x78>
   11ef0:	01813083          	ld	ra,24(sp)
   11ef4:	00000513          	li	a0,0
   11ef8:	02010113          	addi	sp,sp,32
   11efc:	00008067          	ret
   11f00:	000125b7          	lui	a1,0x12
   11f04:	00013537          	lui	a0,0x13
   11f08:	82818613          	addi	a2,gp,-2008 # 13040 <__sglue>
   11f0c:	e3458593          	addi	a1,a1,-460 # 11e34 <_fflush_r>
   11f10:	05850513          	addi	a0,a0,88 # 13058 <_impure_data>
   11f14:	f44fe06f          	j	10658 <_fwalk_sglue>
   11f18:	01813083          	ld	ra,24(sp)
   11f1c:	02010113          	addi	sp,sp,32
   11f20:	cb9ff06f          	j	11bd8 <__sflush_r>

0000000000011f24 <_sbrk_r>:
   11f24:	fe010113          	addi	sp,sp,-32
   11f28:	00813823          	sd	s0,16(sp)
   11f2c:	00913423          	sd	s1,8(sp)
   11f30:	00050493          	mv	s1,a0
   11f34:	00058513          	mv	a0,a1
   11f38:	00113c23          	sd	ra,24(sp)
   11f3c:	1c01a823          	sw	zero,464(gp) # 139e8 <errno>
   11f40:	228000ef          	jal	12168 <_sbrk>
   11f44:	fff00793          	li	a5,-1
   11f48:	00f50c63          	beq	a0,a5,11f60 <_sbrk_r+0x3c>
   11f4c:	01813083          	ld	ra,24(sp)
   11f50:	01013403          	ld	s0,16(sp)
   11f54:	00813483          	ld	s1,8(sp)
   11f58:	02010113          	addi	sp,sp,32
   11f5c:	00008067          	ret
   11f60:	1d01a783          	lw	a5,464(gp) # 139e8 <errno>
   11f64:	fe0784e3          	beqz	a5,11f4c <_sbrk_r+0x28>
   11f68:	01813083          	ld	ra,24(sp)
   11f6c:	01013403          	ld	s0,16(sp)
   11f70:	00f4a023          	sw	a5,0(s1)
   11f74:	00813483          	ld	s1,8(sp)
   11f78:	02010113          	addi	sp,sp,32
   11f7c:	00008067          	ret

0000000000011f80 <__libc_fini_array>:
   11f80:	fe010113          	addi	sp,sp,-32
   11f84:	00813823          	sd	s0,16(sp)
   11f88:	000137b7          	lui	a5,0x13
   11f8c:	00013437          	lui	s0,0x13
   11f90:	01878793          	addi	a5,a5,24 # 13018 <result>
   11f94:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11f98:	408787b3          	sub	a5,a5,s0
   11f9c:	00913423          	sd	s1,8(sp)
   11fa0:	00113c23          	sd	ra,24(sp)
   11fa4:	4037d493          	srai	s1,a5,0x3
   11fa8:	02048063          	beqz	s1,11fc8 <__libc_fini_array+0x48>
   11fac:	ff840413          	addi	s0,s0,-8
   11fb0:	00f40433          	add	s0,s0,a5
   11fb4:	00043783          	ld	a5,0(s0)
   11fb8:	fff48493          	addi	s1,s1,-1
   11fbc:	ff840413          	addi	s0,s0,-8
   11fc0:	000780e7          	jalr	a5
   11fc4:	fe0498e3          	bnez	s1,11fb4 <__libc_fini_array+0x34>
   11fc8:	01813083          	ld	ra,24(sp)
   11fcc:	01013403          	ld	s0,16(sp)
   11fd0:	00813483          	ld	s1,8(sp)
   11fd4:	02010113          	addi	sp,sp,32
   11fd8:	00008067          	ret

0000000000011fdc <__register_exitproc>:
   11fdc:	1d81b783          	ld	a5,472(gp) # 139f0 <__atexit>
   11fe0:	04078e63          	beqz	a5,1203c <__register_exitproc+0x60>
   11fe4:	0087a703          	lw	a4,8(a5)
   11fe8:	01f00813          	li	a6,31
   11fec:	08e84263          	blt	a6,a4,12070 <__register_exitproc+0x94>
   11ff0:	02050863          	beqz	a0,12020 <__register_exitproc+0x44>
   11ff4:	00371813          	slli	a6,a4,0x3
   11ff8:	01078833          	add	a6,a5,a6
   11ffc:	10c83823          	sd	a2,272(a6)
   12000:	3107a883          	lw	a7,784(a5)
   12004:	00100613          	li	a2,1
   12008:	00e6163b          	sllw	a2,a2,a4
   1200c:	00c8e8b3          	or	a7,a7,a2
   12010:	3117a823          	sw	a7,784(a5)
   12014:	20d83823          	sd	a3,528(a6)
   12018:	00200693          	li	a3,2
   1201c:	02d50663          	beq	a0,a3,12048 <__register_exitproc+0x6c>
   12020:	0017069b          	addiw	a3,a4,1
   12024:	00371713          	slli	a4,a4,0x3
   12028:	00d7a423          	sw	a3,8(a5)
   1202c:	00e787b3          	add	a5,a5,a4
   12030:	00b7b823          	sd	a1,16(a5)
   12034:	00000513          	li	a0,0
   12038:	00008067          	ret
   1203c:	47018793          	addi	a5,gp,1136 # 13c88 <__atexit0>
   12040:	1cf1bc23          	sd	a5,472(gp) # 139f0 <__atexit>
   12044:	fa1ff06f          	j	11fe4 <__register_exitproc+0x8>
   12048:	3147a683          	lw	a3,788(a5)
   1204c:	00000513          	li	a0,0
   12050:	00d66633          	or	a2,a2,a3
   12054:	0017069b          	addiw	a3,a4,1
   12058:	00371713          	slli	a4,a4,0x3
   1205c:	30c7aa23          	sw	a2,788(a5)
   12060:	00d7a423          	sw	a3,8(a5)
   12064:	00e787b3          	add	a5,a5,a4
   12068:	00b7b823          	sd	a1,16(a5)
   1206c:	00008067          	ret
   12070:	fff00513          	li	a0,-1
   12074:	00008067          	ret

0000000000012078 <_close>:
   12078:	03900893          	li	a7,57
   1207c:	00000073          	ecall
   12080:	00054663          	bltz	a0,1208c <_close+0x14>
   12084:	0005051b          	sext.w	a0,a0
   12088:	00008067          	ret
   1208c:	fe010113          	addi	sp,sp,-32
   12090:	00113c23          	sd	ra,24(sp)
   12094:	00a13423          	sd	a0,8(sp)
   12098:	188000ef          	jal	12220 <__errno>
   1209c:	00813783          	ld	a5,8(sp)
   120a0:	01813083          	ld	ra,24(sp)
   120a4:	40f007bb          	negw	a5,a5
   120a8:	00f52023          	sw	a5,0(a0)
   120ac:	fff00513          	li	a0,-1
   120b0:	02010113          	addi	sp,sp,32
   120b4:	00008067          	ret

00000000000120b8 <_exit>:
   120b8:	05d00893          	li	a7,93
   120bc:	00000073          	ecall
   120c0:	00054463          	bltz	a0,120c8 <_exit+0x10>
   120c4:	0000006f          	j	120c4 <_exit+0xc>
   120c8:	fe010113          	addi	sp,sp,-32
   120cc:	00113c23          	sd	ra,24(sp)
   120d0:	00a13423          	sd	a0,8(sp)
   120d4:	14c000ef          	jal	12220 <__errno>
   120d8:	00813783          	ld	a5,8(sp)
   120dc:	40f007bb          	negw	a5,a5
   120e0:	00f52023          	sw	a5,0(a0)
   120e4:	0000006f          	j	120e4 <_exit+0x2c>

00000000000120e8 <_lseek>:
   120e8:	03e00893          	li	a7,62
   120ec:	00000073          	ecall
   120f0:	00054463          	bltz	a0,120f8 <_lseek+0x10>
   120f4:	00008067          	ret
   120f8:	fe010113          	addi	sp,sp,-32
   120fc:	00113c23          	sd	ra,24(sp)
   12100:	00a13423          	sd	a0,8(sp)
   12104:	11c000ef          	jal	12220 <__errno>
   12108:	00813783          	ld	a5,8(sp)
   1210c:	01813083          	ld	ra,24(sp)
   12110:	40f007bb          	negw	a5,a5
   12114:	00f52023          	sw	a5,0(a0)
   12118:	fff00793          	li	a5,-1
   1211c:	00078513          	mv	a0,a5
   12120:	02010113          	addi	sp,sp,32
   12124:	00008067          	ret

0000000000012128 <_read>:
   12128:	03f00893          	li	a7,63
   1212c:	00000073          	ecall
   12130:	00054463          	bltz	a0,12138 <_read+0x10>
   12134:	00008067          	ret
   12138:	fe010113          	addi	sp,sp,-32
   1213c:	00113c23          	sd	ra,24(sp)
   12140:	00a13423          	sd	a0,8(sp)
   12144:	0dc000ef          	jal	12220 <__errno>
   12148:	00813783          	ld	a5,8(sp)
   1214c:	01813083          	ld	ra,24(sp)
   12150:	40f007bb          	negw	a5,a5
   12154:	00f52023          	sw	a5,0(a0)
   12158:	fff00793          	li	a5,-1
   1215c:	00078513          	mv	a0,a5
   12160:	02010113          	addi	sp,sp,32
   12164:	00008067          	ret

0000000000012168 <_sbrk>:
   12168:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   1216c:	ff010113          	addi	sp,sp,-16
   12170:	00113423          	sd	ra,8(sp)
   12174:	00050713          	mv	a4,a0
   12178:	02079063          	bnez	a5,12198 <_sbrk+0x30>
   1217c:	0d600893          	li	a7,214
   12180:	00000513          	li	a0,0
   12184:	00000073          	ecall
   12188:	fff00793          	li	a5,-1
   1218c:	02f50c63          	beq	a0,a5,121c4 <_sbrk+0x5c>
   12190:	00050793          	mv	a5,a0
   12194:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   12198:	00f70533          	add	a0,a4,a5
   1219c:	0d600893          	li	a7,214
   121a0:	00000073          	ecall
   121a4:	1f81b783          	ld	a5,504(gp) # 13a10 <heap_end.0>
   121a8:	00f70733          	add	a4,a4,a5
   121ac:	00e51c63          	bne	a0,a4,121c4 <_sbrk+0x5c>
   121b0:	00813083          	ld	ra,8(sp)
   121b4:	1ea1bc23          	sd	a0,504(gp) # 13a10 <heap_end.0>
   121b8:	00078513          	mv	a0,a5
   121bc:	01010113          	addi	sp,sp,16
   121c0:	00008067          	ret
   121c4:	05c000ef          	jal	12220 <__errno>
   121c8:	00813083          	ld	ra,8(sp)
   121cc:	00c00793          	li	a5,12
   121d0:	00f52023          	sw	a5,0(a0)
   121d4:	fff00513          	li	a0,-1
   121d8:	01010113          	addi	sp,sp,16
   121dc:	00008067          	ret

00000000000121e0 <_write>:
   121e0:	04000893          	li	a7,64
   121e4:	00000073          	ecall
   121e8:	00054463          	bltz	a0,121f0 <_write+0x10>
   121ec:	00008067          	ret
   121f0:	fe010113          	addi	sp,sp,-32
   121f4:	00113c23          	sd	ra,24(sp)
   121f8:	00a13423          	sd	a0,8(sp)
   121fc:	024000ef          	jal	12220 <__errno>
   12200:	00813783          	ld	a5,8(sp)
   12204:	01813083          	ld	ra,24(sp)
   12208:	40f007bb          	negw	a5,a5
   1220c:	00f52023          	sw	a5,0(a0)
   12210:	fff00793          	li	a5,-1
   12214:	00078513          	mv	a0,a5
   12218:	02010113          	addi	sp,sp,32
   1221c:	00008067          	ret

0000000000012220 <__errno>:
   12220:	1b01b503          	ld	a0,432(gp) # 139c8 <_impure_ptr>
   12224:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012228 <__EH_FRAME_BEGIN__>:
   12228:	0000                	.insn	2, 0x0000
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

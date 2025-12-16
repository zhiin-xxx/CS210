
test/build/without-syscall/double-float.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	309010ef          	jal	11c3c <__call_exitprocs>
   10138:	2181b783          	ld	a5,536(gp) # 14a30 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	749020ef          	jal	13090 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00013537          	lui	a0,0x13
   10158:	f5850513          	addi	a0,a0,-168 # 12f58 <__libc_fini_array>
   1015c:	4190106f          	j	11d74 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00004197          	auipc	gp,0x4
   10168:	6b418193          	addi	gp,gp,1716 # 14818 <__global_pointer$>
   1016c:	00005517          	auipc	a0,0x5
   10170:	8c450513          	addi	a0,a0,-1852 # 14a30 <__stdio_exit_handler>
   10174:	00005617          	auipc	a2,0x5
   10178:	e7c60613          	addi	a2,a2,-388 # 14ff0 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	1dd010ef          	jal	11b60 <memset>
   10188:	00002517          	auipc	a0,0x2
   1018c:	bec50513          	addi	a0,a0,-1044 # 11d74 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00003517          	auipc	a0,0x3
   10198:	dc450513          	addi	a0,a0,-572 # 12f58 <__libc_fini_array>
   1019c:	3d9010ef          	jal	11d74 <atexit>
   101a0:	12d010ef          	jal	11acc <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	06c000ef          	jal	1021c <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	2501c783          	lbu	a5,592(gp) # 14a68 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00013537          	lui	a0,0x13
   101d8:	30850513          	addi	a0,a0,776 # 13308 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x10120>
   101e4:	00100793          	li	a5,1
   101e8:	24f18823          	sb	a5,592(gp) # 14a68 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00013537          	lui	a0,0x13
   10208:	25818593          	addi	a1,gp,600 # 14a70 <object.0>
   1020c:	30850513          	addi	a0,a0,776 # 13308 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	fd010113          	addi	sp,sp,-48
   10220:	02113423          	sd	ra,40(sp)
   10224:	02813023          	sd	s0,32(sp)
   10228:	00913c23          	sd	s1,24(sp)
   1022c:	03010413          	addi	s0,sp,48
   10230:	fc042e23          	sw	zero,-36(s0)
   10234:	00400793          	li	a5,4
   10238:	fcf42e23          	sw	a5,-36(s0)
   1023c:	0780006f          	j	102b4 <main+0x98>
   10240:	000147b7          	lui	a5,0x14
   10244:	01878713          	addi	a4,a5,24 # 14018 <result_double>
   10248:	fdc42783          	lw	a5,-36(s0)
   1024c:	00379793          	slli	a5,a5,0x3
   10250:	00f707b3          	add	a5,a4,a5
   10254:	0007b483          	ld	s1,0(a5)
   10258:	fdc42783          	lw	a5,-36(s0)
   1025c:	00078513          	mv	a0,a5
   10260:	625000ef          	jal	11084 <__floatsidf>
   10264:	00050713          	mv	a4,a0
   10268:	000137b7          	lui	a5,0x13
   1026c:	2007b583          	ld	a1,512(a5) # 13200 <__errno+0x8>
   10270:	00070513          	mv	a0,a4
   10274:	674000ef          	jal	108e8 <__muldf3>
   10278:	00050793          	mv	a5,a0
   1027c:	00078593          	mv	a1,a5
   10280:	00048513          	mv	a0,s1
   10284:	21c000ef          	jal	104a0 <__adddf3>
   10288:	00050793          	mv	a5,a0
   1028c:	00078693          	mv	a3,a5
   10290:	000147b7          	lui	a5,0x14
   10294:	01878713          	addi	a4,a5,24 # 14018 <result_double>
   10298:	fdc42783          	lw	a5,-36(s0)
   1029c:	00379793          	slli	a5,a5,0x3
   102a0:	00f707b3          	add	a5,a4,a5
   102a4:	00d7b023          	sd	a3,0(a5)
   102a8:	fdc42783          	lw	a5,-36(s0)
   102ac:	fff7879b          	addiw	a5,a5,-1
   102b0:	fcf42e23          	sw	a5,-36(s0)
   102b4:	fdc42783          	lw	a5,-36(s0)
   102b8:	0007879b          	sext.w	a5,a5
   102bc:	f807d2e3          	bgez	a5,10240 <main+0x24>
   102c0:	00500793          	li	a5,5
   102c4:	fcf42e23          	sw	a5,-36(s0)
   102c8:	0780006f          	j	10340 <main+0x124>
   102cc:	000147b7          	lui	a5,0x14
   102d0:	01878713          	addi	a4,a5,24 # 14018 <result_double>
   102d4:	fdc42783          	lw	a5,-36(s0)
   102d8:	00379793          	slli	a5,a5,0x3
   102dc:	00f707b3          	add	a5,a4,a5
   102e0:	0007b483          	ld	s1,0(a5)
   102e4:	fdc42783          	lw	a5,-36(s0)
   102e8:	00078513          	mv	a0,a5
   102ec:	599000ef          	jal	11084 <__floatsidf>
   102f0:	00050713          	mv	a4,a0
   102f4:	000137b7          	lui	a5,0x13
   102f8:	2007b583          	ld	a1,512(a5) # 13200 <__errno+0x8>
   102fc:	00070513          	mv	a0,a4
   10300:	5e8000ef          	jal	108e8 <__muldf3>
   10304:	00050793          	mv	a5,a0
   10308:	00078593          	mv	a1,a5
   1030c:	00048513          	mv	a0,s1
   10310:	11d000ef          	jal	10c2c <__subdf3>
   10314:	00050793          	mv	a5,a0
   10318:	00078693          	mv	a3,a5
   1031c:	000147b7          	lui	a5,0x14
   10320:	01878713          	addi	a4,a5,24 # 14018 <result_double>
   10324:	fdc42783          	lw	a5,-36(s0)
   10328:	00379793          	slli	a5,a5,0x3
   1032c:	00f707b3          	add	a5,a4,a5
   10330:	00d7b023          	sd	a3,0(a5)
   10334:	fdc42783          	lw	a5,-36(s0)
   10338:	0017879b          	addiw	a5,a5,1
   1033c:	fcf42e23          	sw	a5,-36(s0)
   10340:	fdc42783          	lw	a5,-36(s0)
   10344:	0007871b          	sext.w	a4,a5
   10348:	00900793          	li	a5,9
   1034c:	f8e7d0e3          	bge	a5,a4,102cc <main+0xb0>
   10350:	00400793          	li	a5,4
   10354:	fcf42e23          	sw	a5,-36(s0)
   10358:	0840006f          	j	103dc <main+0x1c0>
   1035c:	85018713          	addi	a4,gp,-1968 # 14068 <result_float>
   10360:	fdc42783          	lw	a5,-36(s0)
   10364:	00279793          	slli	a5,a5,0x2
   10368:	00f707b3          	add	a5,a4,a5
   1036c:	0007a783          	lw	a5,0(a5)
   10370:	00078513          	mv	a0,a5
   10374:	591000ef          	jal	11104 <__extendsfdf2>
   10378:	00050493          	mv	s1,a0
   1037c:	fdc42783          	lw	a5,-36(s0)
   10380:	00078513          	mv	a0,a5
   10384:	501000ef          	jal	11084 <__floatsidf>
   10388:	00050713          	mv	a4,a0
   1038c:	000137b7          	lui	a5,0x13
   10390:	2007b583          	ld	a1,512(a5) # 13200 <__errno+0x8>
   10394:	00070513          	mv	a0,a4
   10398:	550000ef          	jal	108e8 <__muldf3>
   1039c:	00050793          	mv	a5,a0
   103a0:	00078593          	mv	a1,a5
   103a4:	00048513          	mv	a0,s1
   103a8:	0f8000ef          	jal	104a0 <__adddf3>
   103ac:	00050793          	mv	a5,a0
   103b0:	00078513          	mv	a0,a5
   103b4:	5f5000ef          	jal	111a8 <__truncdfsf2>
   103b8:	00050693          	mv	a3,a0
   103bc:	85018713          	addi	a4,gp,-1968 # 14068 <result_float>
   103c0:	fdc42783          	lw	a5,-36(s0)
   103c4:	00279793          	slli	a5,a5,0x2
   103c8:	00f707b3          	add	a5,a4,a5
   103cc:	00d7a023          	sw	a3,0(a5)
   103d0:	fdc42783          	lw	a5,-36(s0)
   103d4:	fff7879b          	addiw	a5,a5,-1
   103d8:	fcf42e23          	sw	a5,-36(s0)
   103dc:	fdc42783          	lw	a5,-36(s0)
   103e0:	0007879b          	sext.w	a5,a5
   103e4:	f607dce3          	bgez	a5,1035c <main+0x140>
   103e8:	00500793          	li	a5,5
   103ec:	fcf42e23          	sw	a5,-36(s0)
   103f0:	0840006f          	j	10474 <main+0x258>
   103f4:	85018713          	addi	a4,gp,-1968 # 14068 <result_float>
   103f8:	fdc42783          	lw	a5,-36(s0)
   103fc:	00279793          	slli	a5,a5,0x2
   10400:	00f707b3          	add	a5,a4,a5
   10404:	0007a783          	lw	a5,0(a5)
   10408:	00078513          	mv	a0,a5
   1040c:	4f9000ef          	jal	11104 <__extendsfdf2>
   10410:	00050493          	mv	s1,a0
   10414:	fdc42783          	lw	a5,-36(s0)
   10418:	00078513          	mv	a0,a5
   1041c:	469000ef          	jal	11084 <__floatsidf>
   10420:	00050713          	mv	a4,a0
   10424:	000137b7          	lui	a5,0x13
   10428:	2007b583          	ld	a1,512(a5) # 13200 <__errno+0x8>
   1042c:	00070513          	mv	a0,a4
   10430:	4b8000ef          	jal	108e8 <__muldf3>
   10434:	00050793          	mv	a5,a0
   10438:	00078593          	mv	a1,a5
   1043c:	00048513          	mv	a0,s1
   10440:	7ec000ef          	jal	10c2c <__subdf3>
   10444:	00050793          	mv	a5,a0
   10448:	00078513          	mv	a0,a5
   1044c:	55d000ef          	jal	111a8 <__truncdfsf2>
   10450:	00050693          	mv	a3,a0
   10454:	85018713          	addi	a4,gp,-1968 # 14068 <result_float>
   10458:	fdc42783          	lw	a5,-36(s0)
   1045c:	00279793          	slli	a5,a5,0x2
   10460:	00f707b3          	add	a5,a4,a5
   10464:	00d7a023          	sw	a3,0(a5)
   10468:	fdc42783          	lw	a5,-36(s0)
   1046c:	0017879b          	addiw	a5,a5,1
   10470:	fcf42e23          	sw	a5,-36(s0)
   10474:	fdc42783          	lw	a5,-36(s0)
   10478:	0007871b          	sext.w	a4,a5
   1047c:	00900793          	li	a5,9
   10480:	f6e7dae3          	bge	a5,a4,103f4 <main+0x1d8>
   10484:	00000793          	li	a5,0
   10488:	00078513          	mv	a0,a5
   1048c:	02813083          	ld	ra,40(sp)
   10490:	02013403          	ld	s0,32(sp)
   10494:	01813483          	ld	s1,24(sp)
   10498:	03010113          	addi	sp,sp,48
   1049c:	00008067          	ret

00000000000104a0 <__adddf3>:
   104a0:	fe010113          	addi	sp,sp,-32
   104a4:	fff00713          	li	a4,-1
   104a8:	00c75713          	srli	a4,a4,0xc
   104ac:	0345d613          	srli	a2,a1,0x34
   104b0:	01213023          	sd	s2,0(sp)
   104b4:	03455913          	srli	s2,a0,0x34
   104b8:	00a777b3          	and	a5,a4,a0
   104bc:	00813823          	sd	s0,16(sp)
   104c0:	00b77733          	and	a4,a4,a1
   104c4:	7ff97913          	andi	s2,s2,2047
   104c8:	7ff67613          	andi	a2,a2,2047
   104cc:	00113c23          	sd	ra,24(sp)
   104d0:	00913423          	sd	s1,8(sp)
   104d4:	03f55413          	srli	s0,a0,0x3f
   104d8:	03f5d593          	srli	a1,a1,0x3f
   104dc:	00379793          	slli	a5,a5,0x3
   104e0:	00371713          	slli	a4,a4,0x3
   104e4:	40c906bb          	subw	a3,s2,a2
   104e8:	1eb41663          	bne	s0,a1,106d4 <__adddf3+0x234>
   104ec:	08d05e63          	blez	a3,10588 <__adddf3+0xe8>
   104f0:	04061c63          	bnez	a2,10548 <__adddf3+0xa8>
   104f4:	04070663          	beqz	a4,10540 <__adddf3+0xa0>
   104f8:	fff6869b          	addiw	a3,a3,-1
   104fc:	02069e63          	bnez	a3,10538 <__adddf3+0x98>
   10500:	00e787b3          	add	a5,a5,a4
   10504:	00879713          	slli	a4,a5,0x8
   10508:	18075463          	bgez	a4,10690 <__adddf3+0x1f0>
   1050c:	00190913          	addi	s2,s2,1
   10510:	7ff00713          	li	a4,2047
   10514:	3ce90663          	beq	s2,a4,108e0 <__adddf3+0x440>
   10518:	1ff00713          	li	a4,511
   1051c:	03671713          	slli	a4,a4,0x36
   10520:	0017d693          	srli	a3,a5,0x1
   10524:	fff70713          	addi	a4,a4,-1
   10528:	00e6f733          	and	a4,a3,a4
   1052c:	0017f793          	andi	a5,a5,1
   10530:	00f767b3          	or	a5,a4,a5
   10534:	15c0006f          	j	10690 <__adddf3+0x1f0>
   10538:	7ff00613          	li	a2,2047
   1053c:	02c91063          	bne	s2,a2,1055c <__adddf3+0xbc>
   10540:	00078713          	mv	a4,a5
   10544:	2a40006f          	j	107e8 <__adddf3+0x348>
   10548:	7ff00613          	li	a2,2047
   1054c:	fec90ae3          	beq	s2,a2,10540 <__adddf3+0xa0>
   10550:	00100613          	li	a2,1
   10554:	03761613          	slli	a2,a2,0x37
   10558:	00c76733          	or	a4,a4,a2
   1055c:	03800593          	li	a1,56
   10560:	00100613          	li	a2,1
   10564:	00d5ce63          	blt	a1,a3,10580 <__adddf3+0xe0>
   10568:	04000613          	li	a2,64
   1056c:	00d755b3          	srl	a1,a4,a3
   10570:	40d606bb          	subw	a3,a2,a3
   10574:	00d71733          	sll	a4,a4,a3
   10578:	00e03733          	snez	a4,a4
   1057c:	00e5e633          	or	a2,a1,a4
   10580:	00c787b3          	add	a5,a5,a2
   10584:	f81ff06f          	j	10504 <__adddf3+0x64>
   10588:	06068a63          	beqz	a3,105fc <__adddf3+0x15c>
   1058c:	02091663          	bnez	s2,105b8 <__adddf3+0x118>
   10590:	34078263          	beqz	a5,108d4 <__adddf3+0x434>
   10594:	fff6c693          	not	a3,a3
   10598:	00069863          	bnez	a3,105a8 <__adddf3+0x108>
   1059c:	00e787b3          	add	a5,a5,a4
   105a0:	00060913          	mv	s2,a2
   105a4:	f61ff06f          	j	10504 <__adddf3+0x64>
   105a8:	7ff00593          	li	a1,2047
   105ac:	02b61263          	bne	a2,a1,105d0 <__adddf3+0x130>
   105b0:	7ff00913          	li	s2,2047
   105b4:	2340006f          	j	107e8 <__adddf3+0x348>
   105b8:	7ff00593          	li	a1,2047
   105bc:	feb60ae3          	beq	a2,a1,105b0 <__adddf3+0x110>
   105c0:	00100593          	li	a1,1
   105c4:	03759593          	slli	a1,a1,0x37
   105c8:	40d006bb          	negw	a3,a3
   105cc:	00b7e7b3          	or	a5,a5,a1
   105d0:	03800513          	li	a0,56
   105d4:	00100593          	li	a1,1
   105d8:	00d54e63          	blt	a0,a3,105f4 <__adddf3+0x154>
   105dc:	04000593          	li	a1,64
   105e0:	00d7d533          	srl	a0,a5,a3
   105e4:	40d586bb          	subw	a3,a1,a3
   105e8:	00d797b3          	sll	a5,a5,a3
   105ec:	00f037b3          	snez	a5,a5
   105f0:	00f565b3          	or	a1,a0,a5
   105f4:	00e587b3          	add	a5,a1,a4
   105f8:	fa9ff06f          	j	105a0 <__adddf3+0x100>
   105fc:	00190693          	addi	a3,s2,1
   10600:	7fe6f613          	andi	a2,a3,2046
   10604:	06061c63          	bnez	a2,1067c <__adddf3+0x1dc>
   10608:	06091263          	bnez	s2,1066c <__adddf3+0x1cc>
   1060c:	2a078e63          	beqz	a5,108c8 <__adddf3+0x428>
   10610:	08070c63          	beqz	a4,106a8 <__adddf3+0x208>
   10614:	00f70733          	add	a4,a4,a5
   10618:	00871793          	slli	a5,a4,0x8
   1061c:	1c07d663          	bgez	a5,107e8 <__adddf3+0x348>
   10620:	1ff00793          	li	a5,511
   10624:	03479793          	slli	a5,a5,0x34
   10628:	00375713          	srli	a4,a4,0x3
   1062c:	fff78793          	addi	a5,a5,-1
   10630:	00f777b3          	and	a5,a4,a5
   10634:	00100913          	li	s2,1
   10638:	7ff97513          	andi	a0,s2,2047
   1063c:	00c79793          	slli	a5,a5,0xc
   10640:	03451513          	slli	a0,a0,0x34
   10644:	00c7d793          	srli	a5,a5,0xc
   10648:	03f41413          	slli	s0,s0,0x3f
   1064c:	00f56533          	or	a0,a0,a5
   10650:	01813083          	ld	ra,24(sp)
   10654:	00856533          	or	a0,a0,s0
   10658:	01013403          	ld	s0,16(sp)
   1065c:	00813483          	ld	s1,8(sp)
   10660:	00013903          	ld	s2,0(sp)
   10664:	02010113          	addi	sp,sp,32
   10668:	00008067          	ret
   1066c:	f40782e3          	beqz	a5,105b0 <__adddf3+0x110>
   10670:	1c071863          	bnez	a4,10840 <__adddf3+0x3a0>
   10674:	00078713          	mv	a4,a5
   10678:	f39ff06f          	j	105b0 <__adddf3+0x110>
   1067c:	7ff00613          	li	a2,2047
   10680:	24c68e63          	beq	a3,a2,108dc <__adddf3+0x43c>
   10684:	00e78733          	add	a4,a5,a4
   10688:	00175793          	srli	a5,a4,0x1
   1068c:	00068913          	mv	s2,a3
   10690:	0077f713          	andi	a4,a5,7
   10694:	00070a63          	beqz	a4,106a8 <__adddf3+0x208>
   10698:	00f7f713          	andi	a4,a5,15
   1069c:	00400693          	li	a3,4
   106a0:	00d70463          	beq	a4,a3,106a8 <__adddf3+0x208>
   106a4:	00d787b3          	add	a5,a5,a3
   106a8:	00879713          	slli	a4,a5,0x8
   106ac:	e8075ae3          	bgez	a4,10540 <__adddf3+0xa0>
   106b0:	00190913          	addi	s2,s2,1
   106b4:	7ff00713          	li	a4,2047
   106b8:	22e90463          	beq	s2,a4,108e0 <__adddf3+0x440>
   106bc:	1ff00713          	li	a4,511
   106c0:	03471713          	slli	a4,a4,0x34
   106c4:	0037d793          	srli	a5,a5,0x3
   106c8:	fff70713          	addi	a4,a4,-1
   106cc:	00e7f7b3          	and	a5,a5,a4
   106d0:	f69ff06f          	j	10638 <__adddf3+0x198>
   106d4:	06d05c63          	blez	a3,1074c <__adddf3+0x2ac>
   106d8:	04061e63          	bnez	a2,10734 <__adddf3+0x294>
   106dc:	e60702e3          	beqz	a4,10540 <__adddf3+0xa0>
   106e0:	fff6869b          	addiw	a3,a3,-1
   106e4:	00069e63          	bnez	a3,10700 <__adddf3+0x260>
   106e8:	40e787b3          	sub	a5,a5,a4
   106ec:	00879713          	slli	a4,a5,0x8
   106f0:	fa0750e3          	bgez	a4,10690 <__adddf3+0x1f0>
   106f4:	00979493          	slli	s1,a5,0x9
   106f8:	0094d493          	srli	s1,s1,0x9
   106fc:	16c0006f          	j	10868 <__adddf3+0x3c8>
   10700:	7ff00613          	li	a2,2047
   10704:	e2c90ee3          	beq	s2,a2,10540 <__adddf3+0xa0>
   10708:	03800593          	li	a1,56
   1070c:	00100613          	li	a2,1
   10710:	00d5ce63          	blt	a1,a3,1072c <__adddf3+0x28c>
   10714:	04000613          	li	a2,64
   10718:	00d755b3          	srl	a1,a4,a3
   1071c:	40d606bb          	subw	a3,a2,a3
   10720:	00d71733          	sll	a4,a4,a3
   10724:	00e03733          	snez	a4,a4
   10728:	00e5e633          	or	a2,a1,a4
   1072c:	40c787b3          	sub	a5,a5,a2
   10730:	fbdff06f          	j	106ec <__adddf3+0x24c>
   10734:	7ff00613          	li	a2,2047
   10738:	e0c904e3          	beq	s2,a2,10540 <__adddf3+0xa0>
   1073c:	00100613          	li	a2,1
   10740:	03761613          	slli	a2,a2,0x37
   10744:	00c76733          	or	a4,a4,a2
   10748:	fc1ff06f          	j	10708 <__adddf3+0x268>
   1074c:	00068813          	mv	a6,a3
   10750:	06068c63          	beqz	a3,107c8 <__adddf3+0x328>
   10754:	02091863          	bnez	s2,10784 <__adddf3+0x2e4>
   10758:	16078c63          	beqz	a5,108d0 <__adddf3+0x430>
   1075c:	fff6c693          	not	a3,a3
   10760:	00069a63          	bnez	a3,10774 <__adddf3+0x2d4>
   10764:	40f707b3          	sub	a5,a4,a5
   10768:	00060913          	mv	s2,a2
   1076c:	00058413          	mv	s0,a1
   10770:	f7dff06f          	j	106ec <__adddf3+0x24c>
   10774:	7ff00513          	li	a0,2047
   10778:	02a61263          	bne	a2,a0,1079c <__adddf3+0x2fc>
   1077c:	00058413          	mv	s0,a1
   10780:	e31ff06f          	j	105b0 <__adddf3+0x110>
   10784:	7ff00693          	li	a3,2047
   10788:	fed60ae3          	beq	a2,a3,1077c <__adddf3+0x2dc>
   1078c:	00100513          	li	a0,1
   10790:	03751513          	slli	a0,a0,0x37
   10794:	410006bb          	negw	a3,a6
   10798:	00a7e7b3          	or	a5,a5,a0
   1079c:	03800813          	li	a6,56
   107a0:	00100513          	li	a0,1
   107a4:	00d84e63          	blt	a6,a3,107c0 <__adddf3+0x320>
   107a8:	04000513          	li	a0,64
   107ac:	00d7d833          	srl	a6,a5,a3
   107b0:	40d506bb          	subw	a3,a0,a3
   107b4:	00d797b3          	sll	a5,a5,a3
   107b8:	00f037b3          	snez	a5,a5
   107bc:	00f86533          	or	a0,a6,a5
   107c0:	40a707b3          	sub	a5,a4,a0
   107c4:	fa5ff06f          	j	10768 <__adddf3+0x2c8>
   107c8:	00190693          	addi	a3,s2,1
   107cc:	7fe6f693          	andi	a3,a3,2046
   107d0:	08069263          	bnez	a3,10854 <__adddf3+0x3b4>
   107d4:	06091463          	bnez	s2,1083c <__adddf3+0x39c>
   107d8:	02079663          	bnez	a5,10804 <__adddf3+0x364>
   107dc:	00000413          	li	s0,0
   107e0:	e4070ce3          	beqz	a4,10638 <__adddf3+0x198>
   107e4:	00058413          	mv	s0,a1
   107e8:	00375793          	srli	a5,a4,0x3
   107ec:	7ff00713          	li	a4,2047
   107f0:	e4e914e3          	bne	s2,a4,10638 <__adddf3+0x198>
   107f4:	e40782e3          	beqz	a5,10638 <__adddf3+0x198>
   107f8:	00100793          	li	a5,1
   107fc:	03379793          	slli	a5,a5,0x33
   10800:	0340006f          	j	10834 <__adddf3+0x394>
   10804:	ea0702e3          	beqz	a4,106a8 <__adddf3+0x208>
   10808:	40e786b3          	sub	a3,a5,a4
   1080c:	00869613          	slli	a2,a3,0x8
   10810:	00065c63          	bgez	a2,10828 <__adddf3+0x388>
   10814:	40f707b3          	sub	a5,a4,a5
   10818:	00058413          	mv	s0,a1
   1081c:	00000913          	li	s2,0
   10820:	e0078ce3          	beqz	a5,10638 <__adddf3+0x198>
   10824:	e6dff06f          	j	10690 <__adddf3+0x1f0>
   10828:	00068713          	mv	a4,a3
   1082c:	fa069ee3          	bnez	a3,107e8 <__adddf3+0x348>
   10830:	00000793          	li	a5,0
   10834:	00000413          	li	s0,0
   10838:	e01ff06f          	j	10638 <__adddf3+0x198>
   1083c:	e2079ae3          	bnez	a5,10670 <__adddf3+0x1d0>
   10840:	00100793          	li	a5,1
   10844:	00000413          	li	s0,0
   10848:	7ff00913          	li	s2,2047
   1084c:	03379793          	slli	a5,a5,0x33
   10850:	de9ff06f          	j	10638 <__adddf3+0x198>
   10854:	40e784b3          	sub	s1,a5,a4
   10858:	00849693          	slli	a3,s1,0x8
   1085c:	0406d263          	bgez	a3,108a0 <__adddf3+0x400>
   10860:	40f704b3          	sub	s1,a4,a5
   10864:	00058413          	mv	s0,a1
   10868:	00048513          	mv	a0,s1
   1086c:	231000ef          	jal	1129c <__clzdi2>
   10870:	ff85051b          	addiw	a0,a0,-8
   10874:	00a494b3          	sll	s1,s1,a0
   10878:	03254c63          	blt	a0,s2,108b0 <__adddf3+0x410>
   1087c:	4125053b          	subw	a0,a0,s2
   10880:	0015051b          	addiw	a0,a0,1
   10884:	04000713          	li	a4,64
   10888:	40a7073b          	subw	a4,a4,a0
   1088c:	00a4d7b3          	srl	a5,s1,a0
   10890:	00e494b3          	sll	s1,s1,a4
   10894:	009034b3          	snez	s1,s1
   10898:	0097e7b3          	or	a5,a5,s1
   1089c:	f81ff06f          	j	1081c <__adddf3+0x37c>
   108a0:	fc0494e3          	bnez	s1,10868 <__adddf3+0x3c8>
   108a4:	00000793          	li	a5,0
   108a8:	00000913          	li	s2,0
   108ac:	f89ff06f          	j	10834 <__adddf3+0x394>
   108b0:	fff00793          	li	a5,-1
   108b4:	03779793          	slli	a5,a5,0x37
   108b8:	fff78793          	addi	a5,a5,-1
   108bc:	40a90933          	sub	s2,s2,a0
   108c0:	00f4f7b3          	and	a5,s1,a5
   108c4:	dcdff06f          	j	10690 <__adddf3+0x1f0>
   108c8:	00070793          	mv	a5,a4
   108cc:	f51ff06f          	j	1081c <__adddf3+0x37c>
   108d0:	00058413          	mv	s0,a1
   108d4:	00060913          	mv	s2,a2
   108d8:	f11ff06f          	j	107e8 <__adddf3+0x348>
   108dc:	00068913          	mv	s2,a3
   108e0:	00000793          	li	a5,0
   108e4:	d55ff06f          	j	10638 <__adddf3+0x198>

00000000000108e8 <__muldf3>:
   108e8:	fc010113          	addi	sp,sp,-64
   108ec:	03213023          	sd	s2,32(sp)
   108f0:	03455913          	srli	s2,a0,0x34
   108f4:	02913423          	sd	s1,40(sp)
   108f8:	01313c23          	sd	s3,24(sp)
   108fc:	01513423          	sd	s5,8(sp)
   10900:	00c51493          	slli	s1,a0,0xc
   10904:	02113c23          	sd	ra,56(sp)
   10908:	02813823          	sd	s0,48(sp)
   1090c:	01413823          	sd	s4,16(sp)
   10910:	7ff97913          	andi	s2,s2,2047
   10914:	00058a93          	mv	s5,a1
   10918:	00c4d493          	srli	s1,s1,0xc
   1091c:	03f55993          	srli	s3,a0,0x3f
   10920:	18090c63          	beqz	s2,10ab8 <__muldf3+0x1d0>
   10924:	7ff00793          	li	a5,2047
   10928:	1af90a63          	beq	s2,a5,10adc <__muldf3+0x1f4>
   1092c:	00100793          	li	a5,1
   10930:	00349493          	slli	s1,s1,0x3
   10934:	03779793          	slli	a5,a5,0x37
   10938:	00f4e4b3          	or	s1,s1,a5
   1093c:	c0190913          	addi	s2,s2,-1023
   10940:	00000a13          	li	s4,0
   10944:	034ad793          	srli	a5,s5,0x34
   10948:	00ca9413          	slli	s0,s5,0xc
   1094c:	7ff7f793          	andi	a5,a5,2047
   10950:	00c45413          	srli	s0,s0,0xc
   10954:	03fada93          	srli	s5,s5,0x3f
   10958:	1a078263          	beqz	a5,10afc <__muldf3+0x214>
   1095c:	7ff00713          	li	a4,2047
   10960:	1ce78063          	beq	a5,a4,10b20 <__muldf3+0x238>
   10964:	00100713          	li	a4,1
   10968:	00341413          	slli	s0,s0,0x3
   1096c:	03771713          	slli	a4,a4,0x37
   10970:	00e46433          	or	s0,s0,a4
   10974:	c0178793          	addi	a5,a5,-1023
   10978:	00000693          	li	a3,0
   1097c:	002a1713          	slli	a4,s4,0x2
   10980:	00f90933          	add	s2,s2,a5
   10984:	00d76733          	or	a4,a4,a3
   10988:	00a00793          	li	a5,10
   1098c:	00190613          	addi	a2,s2,1
   10990:	1ee7ca63          	blt	a5,a4,10b84 <__muldf3+0x29c>
   10994:	00200593          	li	a1,2
   10998:	0159c9b3          	xor	s3,s3,s5
   1099c:	00100793          	li	a5,1
   109a0:	1ae5c063          	blt	a1,a4,10b40 <__muldf3+0x258>
   109a4:	fff70713          	addi	a4,a4,-1
   109a8:	1ae7fc63          	bgeu	a5,a4,10b60 <__muldf3+0x278>
   109ac:	0204d713          	srli	a4,s1,0x20
   109b0:	02045793          	srli	a5,s0,0x20
   109b4:	02049493          	slli	s1,s1,0x20
   109b8:	02041413          	slli	s0,s0,0x20
   109bc:	0204d493          	srli	s1,s1,0x20
   109c0:	02045413          	srli	s0,s0,0x20
   109c4:	029405b3          	mul	a1,s0,s1
   109c8:	02870433          	mul	s0,a4,s0
   109cc:	02f70733          	mul	a4,a4,a5
   109d0:	029787b3          	mul	a5,a5,s1
   109d4:	008786b3          	add	a3,a5,s0
   109d8:	0205d793          	srli	a5,a1,0x20
   109dc:	00d787b3          	add	a5,a5,a3
   109e0:	0087f863          	bgeu	a5,s0,109f0 <__muldf3+0x108>
   109e4:	00100693          	li	a3,1
   109e8:	02069693          	slli	a3,a3,0x20
   109ec:	00d70733          	add	a4,a4,a3
   109f0:	02059593          	slli	a1,a1,0x20
   109f4:	02079693          	slli	a3,a5,0x20
   109f8:	0205d593          	srli	a1,a1,0x20
   109fc:	00b686b3          	add	a3,a3,a1
   10a00:	0207d793          	srli	a5,a5,0x20
   10a04:	00969413          	slli	s0,a3,0x9
   10a08:	00e787b3          	add	a5,a5,a4
   10a0c:	00979793          	slli	a5,a5,0x9
   10a10:	00803433          	snez	s0,s0
   10a14:	0376d693          	srli	a3,a3,0x37
   10a18:	00d46433          	or	s0,s0,a3
   10a1c:	00779713          	slli	a4,a5,0x7
   10a20:	0087e433          	or	s0,a5,s0
   10a24:	16075e63          	bgez	a4,10ba0 <__muldf3+0x2b8>
   10a28:	00145793          	srli	a5,s0,0x1
   10a2c:	00147413          	andi	s0,s0,1
   10a30:	0087e433          	or	s0,a5,s0
   10a34:	3ff60713          	addi	a4,a2,1023
   10a38:	16e05863          	blez	a4,10ba8 <__muldf3+0x2c0>
   10a3c:	00747793          	andi	a5,s0,7
   10a40:	00078a63          	beqz	a5,10a54 <__muldf3+0x16c>
   10a44:	00f47793          	andi	a5,s0,15
   10a48:	00400693          	li	a3,4
   10a4c:	00d78463          	beq	a5,a3,10a54 <__muldf3+0x16c>
   10a50:	00d40433          	add	s0,s0,a3
   10a54:	00741793          	slli	a5,s0,0x7
   10a58:	0007dc63          	bgez	a5,10a70 <__muldf3+0x188>
   10a5c:	fff00793          	li	a5,-1
   10a60:	03879793          	slli	a5,a5,0x38
   10a64:	fff78793          	addi	a5,a5,-1
   10a68:	00f47433          	and	s0,s0,a5
   10a6c:	40060713          	addi	a4,a2,1024
   10a70:	7fe00793          	li	a5,2046
   10a74:	1ae7c663          	blt	a5,a4,10c20 <__muldf3+0x338>
   10a78:	00345793          	srli	a5,s0,0x3
   10a7c:	03813083          	ld	ra,56(sp)
   10a80:	03013403          	ld	s0,48(sp)
   10a84:	00c79793          	slli	a5,a5,0xc
   10a88:	03471713          	slli	a4,a4,0x34
   10a8c:	00c7d793          	srli	a5,a5,0xc
   10a90:	03f99993          	slli	s3,s3,0x3f
   10a94:	00f76733          	or	a4,a4,a5
   10a98:	02813483          	ld	s1,40(sp)
   10a9c:	02013903          	ld	s2,32(sp)
   10aa0:	01013a03          	ld	s4,16(sp)
   10aa4:	00813a83          	ld	s5,8(sp)
   10aa8:	01376533          	or	a0,a4,s3
   10aac:	01813983          	ld	s3,24(sp)
   10ab0:	04010113          	addi	sp,sp,64
   10ab4:	00008067          	ret
   10ab8:	02048c63          	beqz	s1,10af0 <__muldf3+0x208>
   10abc:	00048513          	mv	a0,s1
   10ac0:	7dc000ef          	jal	1129c <__clzdi2>
   10ac4:	0005079b          	sext.w	a5,a0
   10ac8:	c0d00913          	li	s2,-1011
   10acc:	ff85051b          	addiw	a0,a0,-8
   10ad0:	00a494b3          	sll	s1,s1,a0
   10ad4:	40f90933          	sub	s2,s2,a5
   10ad8:	e69ff06f          	j	10940 <__muldf3+0x58>
   10adc:	0009091b          	sext.w	s2,s2
   10ae0:	00200a13          	li	s4,2
   10ae4:	e60480e3          	beqz	s1,10944 <__muldf3+0x5c>
   10ae8:	00300a13          	li	s4,3
   10aec:	e59ff06f          	j	10944 <__muldf3+0x5c>
   10af0:	00000913          	li	s2,0
   10af4:	00100a13          	li	s4,1
   10af8:	e4dff06f          	j	10944 <__muldf3+0x5c>
   10afc:	02040c63          	beqz	s0,10b34 <__muldf3+0x24c>
   10b00:	00040513          	mv	a0,s0
   10b04:	798000ef          	jal	1129c <__clzdi2>
   10b08:	0005071b          	sext.w	a4,a0
   10b0c:	c0d00793          	li	a5,-1011
   10b10:	ff85051b          	addiw	a0,a0,-8
   10b14:	00a41433          	sll	s0,s0,a0
   10b18:	40e787b3          	sub	a5,a5,a4
   10b1c:	e5dff06f          	j	10978 <__muldf3+0x90>
   10b20:	0007879b          	sext.w	a5,a5
   10b24:	00200693          	li	a3,2
   10b28:	e4040ae3          	beqz	s0,1097c <__muldf3+0x94>
   10b2c:	00300693          	li	a3,3
   10b30:	e4dff06f          	j	1097c <__muldf3+0x94>
   10b34:	00000793          	li	a5,0
   10b38:	00100693          	li	a3,1
   10b3c:	e41ff06f          	j	1097c <__muldf3+0x94>
   10b40:	00e79733          	sll	a4,a5,a4
   10b44:	53077593          	andi	a1,a4,1328
   10b48:	04059663          	bnez	a1,10b94 <__muldf3+0x2ac>
   10b4c:	24077593          	andi	a1,a4,576
   10b50:	0c059063          	bnez	a1,10c10 <__muldf3+0x328>
   10b54:	08877713          	andi	a4,a4,136
   10b58:	e4070ae3          	beqz	a4,109ac <__muldf3+0xc4>
   10b5c:	000a8993          	mv	s3,s5
   10b60:	00200793          	li	a5,2
   10b64:	0af68e63          	beq	a3,a5,10c20 <__muldf3+0x338>
   10b68:	00300713          	li	a4,3
   10b6c:	00100793          	li	a5,1
   10b70:	0ae68063          	beq	a3,a4,10c10 <__muldf3+0x328>
   10b74:	ecf690e3          	bne	a3,a5,10a34 <__muldf3+0x14c>
   10b78:	00000793          	li	a5,0
   10b7c:	00000713          	li	a4,0
   10b80:	efdff06f          	j	10a7c <__muldf3+0x194>
   10b84:	00f00793          	li	a5,15
   10b88:	08f70263          	beq	a4,a5,10c0c <__muldf3+0x324>
   10b8c:	00b00793          	li	a5,11
   10b90:	fcf706e3          	beq	a4,a5,10b5c <__muldf3+0x274>
   10b94:	00048413          	mv	s0,s1
   10b98:	000a0693          	mv	a3,s4
   10b9c:	fc5ff06f          	j	10b60 <__muldf3+0x278>
   10ba0:	00090613          	mv	a2,s2
   10ba4:	e91ff06f          	j	10a34 <__muldf3+0x14c>
   10ba8:	04070e63          	beqz	a4,10c04 <__muldf3+0x31c>
   10bac:	fc900793          	li	a5,-55
   10bb0:	fcf744e3          	blt	a4,a5,10b78 <__muldf3+0x290>
   10bb4:	00100793          	li	a5,1
   10bb8:	40e78733          	sub	a4,a5,a4
   10bbc:	04000693          	li	a3,64
   10bc0:	00e457b3          	srl	a5,s0,a4
   10bc4:	40e6873b          	subw	a4,a3,a4
   10bc8:	00e41433          	sll	s0,s0,a4
   10bcc:	00803433          	snez	s0,s0
   10bd0:	0087e7b3          	or	a5,a5,s0
   10bd4:	0077f713          	andi	a4,a5,7
   10bd8:	00070a63          	beqz	a4,10bec <__muldf3+0x304>
   10bdc:	00f7f713          	andi	a4,a5,15
   10be0:	00400693          	li	a3,4
   10be4:	00d70463          	beq	a4,a3,10bec <__muldf3+0x304>
   10be8:	00d787b3          	add	a5,a5,a3
   10bec:	00879713          	slli	a4,a5,0x8
   10bf0:	0037d793          	srli	a5,a5,0x3
   10bf4:	f80754e3          	bgez	a4,10b7c <__muldf3+0x294>
   10bf8:	00000793          	li	a5,0
   10bfc:	00100713          	li	a4,1
   10c00:	e7dff06f          	j	10a7c <__muldf3+0x194>
   10c04:	00100713          	li	a4,1
   10c08:	fb5ff06f          	j	10bbc <__muldf3+0x2d4>
   10c0c:	00100793          	li	a5,1
   10c10:	03379793          	slli	a5,a5,0x33
   10c14:	7ff00713          	li	a4,2047
   10c18:	00000993          	li	s3,0
   10c1c:	e61ff06f          	j	10a7c <__muldf3+0x194>
   10c20:	00000793          	li	a5,0
   10c24:	7ff00713          	li	a4,2047
   10c28:	e55ff06f          	j	10a7c <__muldf3+0x194>

0000000000010c2c <__subdf3>:
   10c2c:	0345d613          	srli	a2,a1,0x34
   10c30:	fff00713          	li	a4,-1
   10c34:	fe010113          	addi	sp,sp,-32
   10c38:	00c75713          	srli	a4,a4,0xc
   10c3c:	7ff67613          	andi	a2,a2,2047
   10c40:	00a777b3          	and	a5,a4,a0
   10c44:	00b776b3          	and	a3,a4,a1
   10c48:	00813823          	sd	s0,16(sp)
   10c4c:	00913423          	sd	s1,8(sp)
   10c50:	03455413          	srli	s0,a0,0x34
   10c54:	03f55493          	srli	s1,a0,0x3f
   10c58:	80160513          	addi	a0,a2,-2047
   10c5c:	00369713          	slli	a4,a3,0x3
   10c60:	00a03533          	snez	a0,a0
   10c64:	0016b693          	seqz	a3,a3
   10c68:	00d566b3          	or	a3,a0,a3
   10c6c:	03f5d593          	srli	a1,a1,0x3f
   10c70:	7ff47413          	andi	s0,s0,2047
   10c74:	00d5c5b3          	xor	a1,a1,a3
   10c78:	00113c23          	sd	ra,24(sp)
   10c7c:	01213023          	sd	s2,0(sp)
   10c80:	00379793          	slli	a5,a5,0x3
   10c84:	40c406bb          	subw	a3,s0,a2
   10c88:	1e959663          	bne	a1,s1,10e74 <__subdf3+0x248>
   10c8c:	08d05e63          	blez	a3,10d28 <__subdf3+0xfc>
   10c90:	04061c63          	bnez	a2,10ce8 <__subdf3+0xbc>
   10c94:	04070663          	beqz	a4,10ce0 <__subdf3+0xb4>
   10c98:	fff6869b          	addiw	a3,a3,-1
   10c9c:	02069e63          	bnez	a3,10cd8 <__subdf3+0xac>
   10ca0:	00e787b3          	add	a5,a5,a4
   10ca4:	00879713          	slli	a4,a5,0x8
   10ca8:	18075463          	bgez	a4,10e30 <__subdf3+0x204>
   10cac:	00140413          	addi	s0,s0,1
   10cb0:	7ff00713          	li	a4,2047
   10cb4:	3ce40463          	beq	s0,a4,1107c <__subdf3+0x450>
   10cb8:	1ff00713          	li	a4,511
   10cbc:	03671713          	slli	a4,a4,0x36
   10cc0:	0017d693          	srli	a3,a5,0x1
   10cc4:	fff70713          	addi	a4,a4,-1
   10cc8:	00e6f733          	and	a4,a3,a4
   10ccc:	0017f793          	andi	a5,a5,1
   10cd0:	00f767b3          	or	a5,a4,a5
   10cd4:	15c0006f          	j	10e30 <__subdf3+0x204>
   10cd8:	7ff00613          	li	a2,2047
   10cdc:	02c41063          	bne	s0,a2,10cfc <__subdf3+0xd0>
   10ce0:	00078713          	mv	a4,a5
   10ce4:	3780006f          	j	1105c <__subdf3+0x430>
   10ce8:	7ff00613          	li	a2,2047
   10cec:	fec40ae3          	beq	s0,a2,10ce0 <__subdf3+0xb4>
   10cf0:	00100613          	li	a2,1
   10cf4:	03761613          	slli	a2,a2,0x37
   10cf8:	00c76733          	or	a4,a4,a2
   10cfc:	03800593          	li	a1,56
   10d00:	00100613          	li	a2,1
   10d04:	00d5ce63          	blt	a1,a3,10d20 <__subdf3+0xf4>
   10d08:	04000613          	li	a2,64
   10d0c:	00d755b3          	srl	a1,a4,a3
   10d10:	40d606bb          	subw	a3,a2,a3
   10d14:	00d71733          	sll	a4,a4,a3
   10d18:	00e03733          	snez	a4,a4
   10d1c:	00e5e633          	or	a2,a1,a4
   10d20:	00c787b3          	add	a5,a5,a2
   10d24:	f81ff06f          	j	10ca4 <__subdf3+0x78>
   10d28:	06068a63          	beqz	a3,10d9c <__subdf3+0x170>
   10d2c:	02041663          	bnez	s0,10d58 <__subdf3+0x12c>
   10d30:	32078463          	beqz	a5,11058 <__subdf3+0x42c>
   10d34:	fff6c693          	not	a3,a3
   10d38:	00069863          	bnez	a3,10d48 <__subdf3+0x11c>
   10d3c:	00e787b3          	add	a5,a5,a4
   10d40:	00060413          	mv	s0,a2
   10d44:	f61ff06f          	j	10ca4 <__subdf3+0x78>
   10d48:	7ff00593          	li	a1,2047
   10d4c:	02b61263          	bne	a2,a1,10d70 <__subdf3+0x144>
   10d50:	7ff00413          	li	s0,2047
   10d54:	3080006f          	j	1105c <__subdf3+0x430>
   10d58:	7ff00593          	li	a1,2047
   10d5c:	feb60ae3          	beq	a2,a1,10d50 <__subdf3+0x124>
   10d60:	00100593          	li	a1,1
   10d64:	03759593          	slli	a1,a1,0x37
   10d68:	40d006bb          	negw	a3,a3
   10d6c:	00b7e7b3          	or	a5,a5,a1
   10d70:	03800513          	li	a0,56
   10d74:	00100593          	li	a1,1
   10d78:	00d54e63          	blt	a0,a3,10d94 <__subdf3+0x168>
   10d7c:	04000593          	li	a1,64
   10d80:	00d7d533          	srl	a0,a5,a3
   10d84:	40d586bb          	subw	a3,a1,a3
   10d88:	00d797b3          	sll	a5,a5,a3
   10d8c:	00f037b3          	snez	a5,a5
   10d90:	00f565b3          	or	a1,a0,a5
   10d94:	00e587b3          	add	a5,a1,a4
   10d98:	fa9ff06f          	j	10d40 <__subdf3+0x114>
   10d9c:	00140693          	addi	a3,s0,1
   10da0:	7fe6f613          	andi	a2,a3,2046
   10da4:	06061c63          	bnez	a2,10e1c <__subdf3+0x1f0>
   10da8:	06041263          	bnez	s0,10e0c <__subdf3+0x1e0>
   10dac:	2a078263          	beqz	a5,11050 <__subdf3+0x424>
   10db0:	08070c63          	beqz	a4,10e48 <__subdf3+0x21c>
   10db4:	00f70733          	add	a4,a4,a5
   10db8:	00871793          	slli	a5,a4,0x8
   10dbc:	2a07d063          	bgez	a5,1105c <__subdf3+0x430>
   10dc0:	1ff00793          	li	a5,511
   10dc4:	03479793          	slli	a5,a5,0x34
   10dc8:	00375713          	srli	a4,a4,0x3
   10dcc:	fff78793          	addi	a5,a5,-1
   10dd0:	00f777b3          	and	a5,a4,a5
   10dd4:	00100413          	li	s0,1
   10dd8:	7ff47413          	andi	s0,s0,2047
   10ddc:	00c79793          	slli	a5,a5,0xc
   10de0:	03441413          	slli	s0,s0,0x34
   10de4:	00c7d793          	srli	a5,a5,0xc
   10de8:	00f46433          	or	s0,s0,a5
   10dec:	03f49513          	slli	a0,s1,0x3f
   10df0:	01813083          	ld	ra,24(sp)
   10df4:	00a46533          	or	a0,s0,a0
   10df8:	01013403          	ld	s0,16(sp)
   10dfc:	00813483          	ld	s1,8(sp)
   10e00:	00013903          	ld	s2,0(sp)
   10e04:	02010113          	addi	sp,sp,32
   10e08:	00008067          	ret
   10e0c:	f40782e3          	beqz	a5,10d50 <__subdf3+0x124>
   10e10:	1a071c63          	bnez	a4,10fc8 <__subdf3+0x39c>
   10e14:	00078713          	mv	a4,a5
   10e18:	f39ff06f          	j	10d50 <__subdf3+0x124>
   10e1c:	7ff00613          	li	a2,2047
   10e20:	24c68c63          	beq	a3,a2,11078 <__subdf3+0x44c>
   10e24:	00e78733          	add	a4,a5,a4
   10e28:	00175793          	srli	a5,a4,0x1
   10e2c:	00068413          	mv	s0,a3
   10e30:	0077f713          	andi	a4,a5,7
   10e34:	00070a63          	beqz	a4,10e48 <__subdf3+0x21c>
   10e38:	00f7f713          	andi	a4,a5,15
   10e3c:	00400693          	li	a3,4
   10e40:	00d70463          	beq	a4,a3,10e48 <__subdf3+0x21c>
   10e44:	00d787b3          	add	a5,a5,a3
   10e48:	00879713          	slli	a4,a5,0x8
   10e4c:	e8075ae3          	bgez	a4,10ce0 <__subdf3+0xb4>
   10e50:	00140413          	addi	s0,s0,1
   10e54:	7ff00713          	li	a4,2047
   10e58:	22e40263          	beq	s0,a4,1107c <__subdf3+0x450>
   10e5c:	1ff00713          	li	a4,511
   10e60:	03471713          	slli	a4,a4,0x34
   10e64:	0037d793          	srli	a5,a5,0x3
   10e68:	fff70713          	addi	a4,a4,-1
   10e6c:	00e7f7b3          	and	a5,a5,a4
   10e70:	f69ff06f          	j	10dd8 <__subdf3+0x1ac>
   10e74:	06d05c63          	blez	a3,10eec <__subdf3+0x2c0>
   10e78:	04061e63          	bnez	a2,10ed4 <__subdf3+0x2a8>
   10e7c:	e60702e3          	beqz	a4,10ce0 <__subdf3+0xb4>
   10e80:	fff6869b          	addiw	a3,a3,-1
   10e84:	00069e63          	bnez	a3,10ea0 <__subdf3+0x274>
   10e88:	40e787b3          	sub	a5,a5,a4
   10e8c:	00879713          	slli	a4,a5,0x8
   10e90:	fa0750e3          	bgez	a4,10e30 <__subdf3+0x204>
   10e94:	00979913          	slli	s2,a5,0x9
   10e98:	00995913          	srli	s2,s2,0x9
   10e9c:	1540006f          	j	10ff0 <__subdf3+0x3c4>
   10ea0:	7ff00613          	li	a2,2047
   10ea4:	e2c40ee3          	beq	s0,a2,10ce0 <__subdf3+0xb4>
   10ea8:	03800593          	li	a1,56
   10eac:	00100613          	li	a2,1
   10eb0:	00d5ce63          	blt	a1,a3,10ecc <__subdf3+0x2a0>
   10eb4:	04000613          	li	a2,64
   10eb8:	00d755b3          	srl	a1,a4,a3
   10ebc:	40d606bb          	subw	a3,a2,a3
   10ec0:	00d71733          	sll	a4,a4,a3
   10ec4:	00e03733          	snez	a4,a4
   10ec8:	00e5e633          	or	a2,a1,a4
   10ecc:	40c787b3          	sub	a5,a5,a2
   10ed0:	fbdff06f          	j	10e8c <__subdf3+0x260>
   10ed4:	7ff00613          	li	a2,2047
   10ed8:	e0c404e3          	beq	s0,a2,10ce0 <__subdf3+0xb4>
   10edc:	00100613          	li	a2,1
   10ee0:	03761613          	slli	a2,a2,0x37
   10ee4:	00c76733          	or	a4,a4,a2
   10ee8:	fc1ff06f          	j	10ea8 <__subdf3+0x27c>
   10eec:	00068513          	mv	a0,a3
   10ef0:	06068c63          	beqz	a3,10f68 <__subdf3+0x33c>
   10ef4:	02041863          	bnez	s0,10f24 <__subdf3+0x2f8>
   10ef8:	02078263          	beqz	a5,10f1c <__subdf3+0x2f0>
   10efc:	fff6c693          	not	a3,a3
   10f00:	00069a63          	bnez	a3,10f14 <__subdf3+0x2e8>
   10f04:	40f707b3          	sub	a5,a4,a5
   10f08:	00060413          	mv	s0,a2
   10f0c:	00058493          	mv	s1,a1
   10f10:	f7dff06f          	j	10e8c <__subdf3+0x260>
   10f14:	7ff00513          	li	a0,2047
   10f18:	02a61263          	bne	a2,a0,10f3c <__subdf3+0x310>
   10f1c:	00060413          	mv	s0,a2
   10f20:	0640006f          	j	10f84 <__subdf3+0x358>
   10f24:	7ff00693          	li	a3,2047
   10f28:	fed60ae3          	beq	a2,a3,10f1c <__subdf3+0x2f0>
   10f2c:	40a006bb          	negw	a3,a0
   10f30:	00100513          	li	a0,1
   10f34:	03751513          	slli	a0,a0,0x37
   10f38:	00a7e7b3          	or	a5,a5,a0
   10f3c:	03800813          	li	a6,56
   10f40:	00100513          	li	a0,1
   10f44:	00d84e63          	blt	a6,a3,10f60 <__subdf3+0x334>
   10f48:	04000513          	li	a0,64
   10f4c:	00d7d833          	srl	a6,a5,a3
   10f50:	40d506bb          	subw	a3,a0,a3
   10f54:	00d797b3          	sll	a5,a5,a3
   10f58:	00f037b3          	snez	a5,a5
   10f5c:	00f86533          	or	a0,a6,a5
   10f60:	40a707b3          	sub	a5,a4,a0
   10f64:	fa5ff06f          	j	10f08 <__subdf3+0x2dc>
   10f68:	00140693          	addi	a3,s0,1
   10f6c:	7fe6f693          	andi	a3,a3,2046
   10f70:	06069663          	bnez	a3,10fdc <__subdf3+0x3b0>
   10f74:	04041863          	bnez	s0,10fc4 <__subdf3+0x398>
   10f78:	00079a63          	bnez	a5,10f8c <__subdf3+0x360>
   10f7c:	00000493          	li	s1,0
   10f80:	e4070ce3          	beqz	a4,10dd8 <__subdf3+0x1ac>
   10f84:	00058493          	mv	s1,a1
   10f88:	0d40006f          	j	1105c <__subdf3+0x430>
   10f8c:	ea070ee3          	beqz	a4,10e48 <__subdf3+0x21c>
   10f90:	40e786b3          	sub	a3,a5,a4
   10f94:	00869613          	slli	a2,a3,0x8
   10f98:	00065c63          	bgez	a2,10fb0 <__subdf3+0x384>
   10f9c:	40f707b3          	sub	a5,a4,a5
   10fa0:	00058493          	mv	s1,a1
   10fa4:	00000413          	li	s0,0
   10fa8:	e20788e3          	beqz	a5,10dd8 <__subdf3+0x1ac>
   10fac:	e85ff06f          	j	10e30 <__subdf3+0x204>
   10fb0:	00068713          	mv	a4,a3
   10fb4:	0a069463          	bnez	a3,1105c <__subdf3+0x430>
   10fb8:	00000793          	li	a5,0
   10fbc:	00000493          	li	s1,0
   10fc0:	e19ff06f          	j	10dd8 <__subdf3+0x1ac>
   10fc4:	e40796e3          	bnez	a5,10e10 <__subdf3+0x1e4>
   10fc8:	00100793          	li	a5,1
   10fcc:	00000493          	li	s1,0
   10fd0:	7ff00413          	li	s0,2047
   10fd4:	03379793          	slli	a5,a5,0x33
   10fd8:	e01ff06f          	j	10dd8 <__subdf3+0x1ac>
   10fdc:	40e78933          	sub	s2,a5,a4
   10fe0:	00891693          	slli	a3,s2,0x8
   10fe4:	0406d263          	bgez	a3,11028 <__subdf3+0x3fc>
   10fe8:	40f70933          	sub	s2,a4,a5
   10fec:	00058493          	mv	s1,a1
   10ff0:	00090513          	mv	a0,s2
   10ff4:	2a8000ef          	jal	1129c <__clzdi2>
   10ff8:	ff85051b          	addiw	a0,a0,-8
   10ffc:	00a91933          	sll	s2,s2,a0
   11000:	02854c63          	blt	a0,s0,11038 <__subdf3+0x40c>
   11004:	4085053b          	subw	a0,a0,s0
   11008:	0015051b          	addiw	a0,a0,1
   1100c:	04000713          	li	a4,64
   11010:	40a7073b          	subw	a4,a4,a0
   11014:	00a957b3          	srl	a5,s2,a0
   11018:	00e91933          	sll	s2,s2,a4
   1101c:	01203933          	snez	s2,s2
   11020:	0127e7b3          	or	a5,a5,s2
   11024:	f81ff06f          	j	10fa4 <__subdf3+0x378>
   11028:	fc0914e3          	bnez	s2,10ff0 <__subdf3+0x3c4>
   1102c:	00000793          	li	a5,0
   11030:	00000413          	li	s0,0
   11034:	f89ff06f          	j	10fbc <__subdf3+0x390>
   11038:	fff00793          	li	a5,-1
   1103c:	03779793          	slli	a5,a5,0x37
   11040:	fff78793          	addi	a5,a5,-1
   11044:	40a40433          	sub	s0,s0,a0
   11048:	00f977b3          	and	a5,s2,a5
   1104c:	de5ff06f          	j	10e30 <__subdf3+0x204>
   11050:	00070793          	mv	a5,a4
   11054:	f51ff06f          	j	10fa4 <__subdf3+0x378>
   11058:	00060413          	mv	s0,a2
   1105c:	00375793          	srli	a5,a4,0x3
   11060:	7ff00713          	li	a4,2047
   11064:	d6e41ae3          	bne	s0,a4,10dd8 <__subdf3+0x1ac>
   11068:	d60788e3          	beqz	a5,10dd8 <__subdf3+0x1ac>
   1106c:	00100793          	li	a5,1
   11070:	03379793          	slli	a5,a5,0x33
   11074:	f49ff06f          	j	10fbc <__subdf3+0x390>
   11078:	00068413          	mv	s0,a3
   1107c:	00000793          	li	a5,0
   11080:	d59ff06f          	j	10dd8 <__subdf3+0x1ac>

0000000000011084 <__floatsidf>:
   11084:	fe010113          	addi	sp,sp,-32
   11088:	00113c23          	sd	ra,24(sp)
   1108c:	00813823          	sd	s0,16(sp)
   11090:	00913423          	sd	s1,8(sp)
   11094:	06050063          	beqz	a0,110f4 <__floatsidf+0x70>
   11098:	41f5579b          	sraiw	a5,a0,0x1f
   1109c:	00f54433          	xor	s0,a0,a5
   110a0:	40f4043b          	subw	s0,s0,a5
   110a4:	02041413          	slli	s0,s0,0x20
   110a8:	02045413          	srli	s0,s0,0x20
   110ac:	01f5549b          	srliw	s1,a0,0x1f
   110b0:	00040513          	mv	a0,s0
   110b4:	1e8000ef          	jal	1129c <__clzdi2>
   110b8:	43e00793          	li	a5,1086
   110bc:	40a787bb          	subw	a5,a5,a0
   110c0:	ff55051b          	addiw	a0,a0,-11
   110c4:	00a41433          	sll	s0,s0,a0
   110c8:	00c41413          	slli	s0,s0,0xc
   110cc:	00c45413          	srli	s0,s0,0xc
   110d0:	03479793          	slli	a5,a5,0x34
   110d4:	01813083          	ld	ra,24(sp)
   110d8:	0087e7b3          	or	a5,a5,s0
   110dc:	01013403          	ld	s0,16(sp)
   110e0:	03f49513          	slli	a0,s1,0x3f
   110e4:	00a7e533          	or	a0,a5,a0
   110e8:	00813483          	ld	s1,8(sp)
   110ec:	02010113          	addi	sp,sp,32
   110f0:	00008067          	ret
   110f4:	00000493          	li	s1,0
   110f8:	00000413          	li	s0,0
   110fc:	00000793          	li	a5,0
   11100:	fc9ff06f          	j	110c8 <__floatsidf+0x44>

0000000000011104 <__extendsfdf2>:
   11104:	0175579b          	srliw	a5,a0,0x17
   11108:	0ff7f793          	zext.b	a5,a5
   1110c:	fe010113          	addi	sp,sp,-32
   11110:	00178713          	addi	a4,a5,1
   11114:	00813823          	sd	s0,16(sp)
   11118:	00913423          	sd	s1,8(sp)
   1111c:	02951413          	slli	s0,a0,0x29
   11120:	00113c23          	sd	ra,24(sp)
   11124:	0fe77713          	andi	a4,a4,254
   11128:	02945413          	srli	s0,s0,0x29
   1112c:	01f5549b          	srliw	s1,a0,0x1f
   11130:	02070c63          	beqz	a4,11168 <__extendsfdf2+0x64>
   11134:	38078793          	addi	a5,a5,896
   11138:	01d41413          	slli	s0,s0,0x1d
   1113c:	00c41413          	slli	s0,s0,0xc
   11140:	00c45413          	srli	s0,s0,0xc
   11144:	03479793          	slli	a5,a5,0x34
   11148:	01813083          	ld	ra,24(sp)
   1114c:	0087e7b3          	or	a5,a5,s0
   11150:	01013403          	ld	s0,16(sp)
   11154:	03f49513          	slli	a0,s1,0x3f
   11158:	00a7e533          	or	a0,a5,a0
   1115c:	00813483          	ld	s1,8(sp)
   11160:	02010113          	addi	sp,sp,32
   11164:	00008067          	ret
   11168:	02079263          	bnez	a5,1118c <__extendsfdf2+0x88>
   1116c:	fc0408e3          	beqz	s0,1113c <__extendsfdf2+0x38>
   11170:	00040513          	mv	a0,s0
   11174:	128000ef          	jal	1129c <__clzdi2>
   11178:	ff55079b          	addiw	a5,a0,-11
   1117c:	00f41433          	sll	s0,s0,a5
   11180:	3a900793          	li	a5,937
   11184:	40a787bb          	subw	a5,a5,a0
   11188:	fb5ff06f          	j	1113c <__extendsfdf2+0x38>
   1118c:	7ff00793          	li	a5,2047
   11190:	fa0406e3          	beqz	s0,1113c <__extendsfdf2+0x38>
   11194:	00100713          	li	a4,1
   11198:	01d41413          	slli	s0,s0,0x1d
   1119c:	03371713          	slli	a4,a4,0x33
   111a0:	00e46433          	or	s0,s0,a4
   111a4:	f99ff06f          	j	1113c <__extendsfdf2+0x38>

00000000000111a8 <__truncdfsf2>:
   111a8:	03455713          	srli	a4,a0,0x34
   111ac:	7ff77713          	andi	a4,a4,2047
   111b0:	00170613          	addi	a2,a4,1
   111b4:	00c51693          	slli	a3,a0,0xc
   111b8:	7fe67613          	andi	a2,a2,2046
   111bc:	00c6d793          	srli	a5,a3,0xc
   111c0:	03f55513          	srli	a0,a0,0x3f
   111c4:	0096d693          	srli	a3,a3,0x9
   111c8:	08060463          	beqz	a2,11250 <__truncdfsf2+0xa8>
   111cc:	c8070713          	addi	a4,a4,-896
   111d0:	0fe00613          	li	a2,254
   111d4:	0ce64063          	blt	a2,a4,11294 <__truncdfsf2+0xec>
   111d8:	06e04263          	bgtz	a4,1123c <__truncdfsf2+0x94>
   111dc:	fe900613          	li	a2,-23
   111e0:	00100793          	li	a5,1
   111e4:	0ac74063          	blt	a4,a2,11284 <__truncdfsf2+0xdc>
   111e8:	03779793          	slli	a5,a5,0x37
   111ec:	00f6e6b3          	or	a3,a3,a5
   111f0:	01e00793          	li	a5,30
   111f4:	40e787bb          	subw	a5,a5,a4
   111f8:	0227071b          	addiw	a4,a4,34
   111fc:	00f6d7b3          	srl	a5,a3,a5
   11200:	00e696b3          	sll	a3,a3,a4
   11204:	00d036b3          	snez	a3,a3
   11208:	00d7e7b3          	or	a5,a5,a3
   1120c:	00000713          	li	a4,0
   11210:	0077f693          	andi	a3,a5,7
   11214:	06068c63          	beqz	a3,1128c <__truncdfsf2+0xe4>
   11218:	00f7f693          	andi	a3,a5,15
   1121c:	00400613          	li	a2,4
   11220:	06c68663          	beq	a3,a2,1128c <__truncdfsf2+0xe4>
   11224:	00478793          	addi	a5,a5,4
   11228:	02579693          	slli	a3,a5,0x25
   1122c:	0606d063          	bgez	a3,1128c <__truncdfsf2+0xe4>
   11230:	00170713          	addi	a4,a4,1
   11234:	00000693          	li	a3,0
   11238:	0240006f          	j	1125c <__truncdfsf2+0xb4>
   1123c:	02679793          	slli	a5,a5,0x26
   11240:	01d6d693          	srli	a3,a3,0x1d
   11244:	00f037b3          	snez	a5,a5
   11248:	00f6e7b3          	or	a5,a3,a5
   1124c:	fc5ff06f          	j	11210 <__truncdfsf2+0x68>
   11250:	02071063          	bnez	a4,11270 <__truncdfsf2+0xc8>
   11254:	00100793          	li	a5,1
   11258:	fc0696e3          	bnez	a3,11224 <__truncdfsf2+0x7c>
   1125c:	0177171b          	slliw	a4,a4,0x17
   11260:	00d76733          	or	a4,a4,a3
   11264:	01f5151b          	slliw	a0,a0,0x1f
   11268:	00e56533          	or	a0,a0,a4
   1126c:	00008067          	ret
   11270:	0ff00713          	li	a4,255
   11274:	fe0684e3          	beqz	a3,1125c <__truncdfsf2+0xb4>
   11278:	00000513          	li	a0,0
   1127c:	004006b7          	lui	a3,0x400
   11280:	fddff06f          	j	1125c <__truncdfsf2+0xb4>
   11284:	00000713          	li	a4,0
   11288:	f9dff06f          	j	11224 <__truncdfsf2+0x7c>
   1128c:	0037d693          	srli	a3,a5,0x3
   11290:	fcdff06f          	j	1125c <__truncdfsf2+0xb4>
   11294:	0ff00713          	li	a4,255
   11298:	f9dff06f          	j	11234 <__truncdfsf2+0x8c>

000000000001129c <__clzdi2>:
   1129c:	03800793          	li	a5,56
   112a0:	00f55733          	srl	a4,a0,a5
   112a4:	0ff77693          	zext.b	a3,a4
   112a8:	02069663          	bnez	a3,112d4 <__clzdi2+0x38>
   112ac:	ff878793          	addi	a5,a5,-8
   112b0:	fe0798e3          	bnez	a5,112a0 <__clzdi2+0x4>
   112b4:	04000713          	li	a4,64
   112b8:	40f70733          	sub	a4,a4,a5
   112bc:	000137b7          	lui	a5,0x13
   112c0:	20878793          	addi	a5,a5,520 # 13208 <__clz_tab>
   112c4:	00a787b3          	add	a5,a5,a0
   112c8:	0007c503          	lbu	a0,0(a5)
   112cc:	40a7053b          	subw	a0,a4,a0
   112d0:	00008067          	ret
   112d4:	00070513          	mv	a0,a4
   112d8:	fddff06f          	j	112b4 <__clzdi2+0x18>

00000000000112dc <__fp_lock>:
   112dc:	00000513          	li	a0,0
   112e0:	00008067          	ret

00000000000112e4 <stdio_exit_handler>:
   112e4:	000135b7          	lui	a1,0x13
   112e8:	00014537          	lui	a0,0x14
   112ec:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   112f0:	a9c58593          	addi	a1,a1,-1380 # 12a9c <_fclose_r>
   112f4:	0a850513          	addi	a0,a0,168 # 140a8 <_impure_data>
   112f8:	3380006f          	j	11630 <_fwalk_sglue>

00000000000112fc <cleanup_stdio>:
   112fc:	00853583          	ld	a1,8(a0)
   11300:	ff010113          	addi	sp,sp,-16
   11304:	00813023          	sd	s0,0(sp)
   11308:	00113423          	sd	ra,8(sp)
   1130c:	28818793          	addi	a5,gp,648 # 14aa0 <__sf>
   11310:	00050413          	mv	s0,a0
   11314:	00f58463          	beq	a1,a5,1131c <cleanup_stdio+0x20>
   11318:	784010ef          	jal	12a9c <_fclose_r>
   1131c:	01043583          	ld	a1,16(s0)
   11320:	33818793          	addi	a5,gp,824 # 14b50 <__sf+0xb0>
   11324:	00f58663          	beq	a1,a5,11330 <cleanup_stdio+0x34>
   11328:	00040513          	mv	a0,s0
   1132c:	770010ef          	jal	12a9c <_fclose_r>
   11330:	01843583          	ld	a1,24(s0)
   11334:	3e818793          	addi	a5,gp,1000 # 14c00 <__sf+0x160>
   11338:	00f58c63          	beq	a1,a5,11350 <cleanup_stdio+0x54>
   1133c:	00040513          	mv	a0,s0
   11340:	00013403          	ld	s0,0(sp)
   11344:	00813083          	ld	ra,8(sp)
   11348:	01010113          	addi	sp,sp,16
   1134c:	7500106f          	j	12a9c <_fclose_r>
   11350:	00813083          	ld	ra,8(sp)
   11354:	00013403          	ld	s0,0(sp)
   11358:	01010113          	addi	sp,sp,16
   1135c:	00008067          	ret

0000000000011360 <__fp_unlock>:
   11360:	00000513          	li	a0,0
   11364:	00008067          	ret

0000000000011368 <global_stdio_init.part.0>:
   11368:	fd010113          	addi	sp,sp,-48
   1136c:	000117b7          	lui	a5,0x11
   11370:	02813023          	sd	s0,32(sp)
   11374:	2e478793          	addi	a5,a5,740 # 112e4 <stdio_exit_handler>
   11378:	28818413          	addi	s0,gp,648 # 14aa0 <__sf>
   1137c:	02113423          	sd	ra,40(sp)
   11380:	00913c23          	sd	s1,24(sp)
   11384:	01213823          	sd	s2,16(sp)
   11388:	01313423          	sd	s3,8(sp)
   1138c:	01413023          	sd	s4,0(sp)
   11390:	20f1bc23          	sd	a5,536(gp) # 14a30 <__stdio_exit_handler>
   11394:	00800613          	li	a2,8
   11398:	00400793          	li	a5,4
   1139c:	00000593          	li	a1,0
   113a0:	32c18513          	addi	a0,gp,812 # 14b44 <__sf+0xa4>
   113a4:	00f42823          	sw	a5,16(s0)
   113a8:	00043023          	sd	zero,0(s0)
   113ac:	00043423          	sd	zero,8(s0)
   113b0:	0a042623          	sw	zero,172(s0)
   113b4:	00043c23          	sd	zero,24(s0)
   113b8:	02042023          	sw	zero,32(s0)
   113bc:	02042423          	sw	zero,40(s0)
   113c0:	7a0000ef          	jal	11b60 <memset>
   113c4:	00011a37          	lui	s4,0x11
   113c8:	000119b7          	lui	s3,0x11
   113cc:	00011937          	lui	s2,0x11
   113d0:	000124b7          	lui	s1,0x12
   113d4:	000107b7          	lui	a5,0x10
   113d8:	6fca0a13          	addi	s4,s4,1788 # 116fc <__sread>
   113dc:	76098993          	addi	s3,s3,1888 # 11760 <__swrite>
   113e0:	7e890913          	addi	s2,s2,2024 # 117e8 <__sseek>
   113e4:	84c48493          	addi	s1,s1,-1972 # 1184c <__sclose>
   113e8:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   113ec:	00800613          	li	a2,8
   113f0:	00000593          	li	a1,0
   113f4:	3dc18513          	addi	a0,gp,988 # 14bf4 <__sf+0x154>
   113f8:	0cf42023          	sw	a5,192(s0)
   113fc:	03443c23          	sd	s4,56(s0)
   11400:	05343023          	sd	s3,64(s0)
   11404:	05243423          	sd	s2,72(s0)
   11408:	04943823          	sd	s1,80(s0)
   1140c:	02843823          	sd	s0,48(s0)
   11410:	0a043823          	sd	zero,176(s0)
   11414:	0a043c23          	sd	zero,184(s0)
   11418:	14042e23          	sw	zero,348(s0)
   1141c:	0c043423          	sd	zero,200(s0)
   11420:	0c042823          	sw	zero,208(s0)
   11424:	0c042c23          	sw	zero,216(s0)
   11428:	738000ef          	jal	11b60 <memset>
   1142c:	000207b7          	lui	a5,0x20
   11430:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xb022>
   11434:	33818713          	addi	a4,gp,824 # 14b50 <__sf+0xb0>
   11438:	48c18513          	addi	a0,gp,1164 # 14ca4 <__sf+0x204>
   1143c:	00800613          	li	a2,8
   11440:	00000593          	li	a1,0
   11444:	0f443423          	sd	s4,232(s0)
   11448:	0f343823          	sd	s3,240(s0)
   1144c:	0f243c23          	sd	s2,248(s0)
   11450:	10943023          	sd	s1,256(s0)
   11454:	16f42823          	sw	a5,368(s0)
   11458:	16043023          	sd	zero,352(s0)
   1145c:	16043423          	sd	zero,360(s0)
   11460:	20042623          	sw	zero,524(s0)
   11464:	16043c23          	sd	zero,376(s0)
   11468:	18042023          	sw	zero,384(s0)
   1146c:	18042423          	sw	zero,392(s0)
   11470:	0ee43023          	sd	a4,224(s0)
   11474:	6ec000ef          	jal	11b60 <memset>
   11478:	3e818793          	addi	a5,gp,1000 # 14c00 <__sf+0x160>
   1147c:	19443c23          	sd	s4,408(s0)
   11480:	1b343023          	sd	s3,416(s0)
   11484:	1b243423          	sd	s2,424(s0)
   11488:	1a943823          	sd	s1,432(s0)
   1148c:	02813083          	ld	ra,40(sp)
   11490:	18f43823          	sd	a5,400(s0)
   11494:	02013403          	ld	s0,32(sp)
   11498:	01813483          	ld	s1,24(sp)
   1149c:	01013903          	ld	s2,16(sp)
   114a0:	00813983          	ld	s3,8(sp)
   114a4:	00013a03          	ld	s4,0(sp)
   114a8:	03010113          	addi	sp,sp,48
   114ac:	00008067          	ret

00000000000114b0 <__sfp>:
   114b0:	2181b783          	ld	a5,536(gp) # 14a30 <__stdio_exit_handler>
   114b4:	fd010113          	addi	sp,sp,-48
   114b8:	00913c23          	sd	s1,24(sp)
   114bc:	02113423          	sd	ra,40(sp)
   114c0:	02813023          	sd	s0,32(sp)
   114c4:	00050493          	mv	s1,a0
   114c8:	0e078e63          	beqz	a5,115c4 <__sfp+0x114>
   114cc:	87818693          	addi	a3,gp,-1928 # 14090 <__sglue>
   114d0:	0b000813          	li	a6,176
   114d4:	0086a703          	lw	a4,8(a3) # 400008 <__BSS_END__+0x3eb018>
   114d8:	08e05463          	blez	a4,11560 <__sfp+0xb0>
   114dc:	02071713          	slli	a4,a4,0x20
   114e0:	02075713          	srli	a4,a4,0x20
   114e4:	03070733          	mul	a4,a4,a6
   114e8:	0106b403          	ld	s0,16(a3)
   114ec:	00e40733          	add	a4,s0,a4
   114f0:	00c0006f          	j	114fc <__sfp+0x4c>
   114f4:	0b040413          	addi	s0,s0,176
   114f8:	06e40463          	beq	s0,a4,11560 <__sfp+0xb0>
   114fc:	01041783          	lh	a5,16(s0)
   11500:	fe079ae3          	bnez	a5,114f4 <__sfp+0x44>
   11504:	ffff07b7          	lui	a5,0xffff0
   11508:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdb011>
   1150c:	00f42823          	sw	a5,16(s0)
   11510:	0a042623          	sw	zero,172(s0)
   11514:	00043023          	sd	zero,0(s0)
   11518:	00043423          	sd	zero,8(s0)
   1151c:	00043c23          	sd	zero,24(s0)
   11520:	02042023          	sw	zero,32(s0)
   11524:	02042423          	sw	zero,40(s0)
   11528:	00800613          	li	a2,8
   1152c:	00000593          	li	a1,0
   11530:	0a440513          	addi	a0,s0,164
   11534:	62c000ef          	jal	11b60 <memset>
   11538:	04043c23          	sd	zero,88(s0)
   1153c:	06042023          	sw	zero,96(s0)
   11540:	06043c23          	sd	zero,120(s0)
   11544:	08042023          	sw	zero,128(s0)
   11548:	02813083          	ld	ra,40(sp)
   1154c:	00040513          	mv	a0,s0
   11550:	02013403          	ld	s0,32(sp)
   11554:	01813483          	ld	s1,24(sp)
   11558:	03010113          	addi	sp,sp,48
   1155c:	00008067          	ret
   11560:	0006b403          	ld	s0,0(a3)
   11564:	00040663          	beqz	s0,11570 <__sfp+0xc0>
   11568:	00040693          	mv	a3,s0
   1156c:	f69ff06f          	j	114d4 <__sfp+0x24>
   11570:	2d800593          	li	a1,728
   11574:	00048513          	mv	a0,s1
   11578:	00d13423          	sd	a3,8(sp)
   1157c:	435000ef          	jal	121b0 <_malloc_r>
   11580:	00813683          	ld	a3,8(sp)
   11584:	00050413          	mv	s0,a0
   11588:	04050263          	beqz	a0,115cc <__sfp+0x11c>
   1158c:	00400793          	li	a5,4
   11590:	00f52423          	sw	a5,8(a0)
   11594:	01850513          	addi	a0,a0,24
   11598:	00043023          	sd	zero,0(s0)
   1159c:	00a43823          	sd	a0,16(s0)
   115a0:	2c000613          	li	a2,704
   115a4:	00000593          	li	a1,0
   115a8:	00d13423          	sd	a3,8(sp)
   115ac:	5b4000ef          	jal	11b60 <memset>
   115b0:	00813683          	ld	a3,8(sp)
   115b4:	0b000813          	li	a6,176
   115b8:	0086b023          	sd	s0,0(a3)
   115bc:	00040693          	mv	a3,s0
   115c0:	f15ff06f          	j	114d4 <__sfp+0x24>
   115c4:	da5ff0ef          	jal	11368 <global_stdio_init.part.0>
   115c8:	f05ff06f          	j	114cc <__sfp+0x1c>
   115cc:	0006b023          	sd	zero,0(a3)
   115d0:	00c00793          	li	a5,12
   115d4:	00f4a023          	sw	a5,0(s1)
   115d8:	f71ff06f          	j	11548 <__sfp+0x98>

00000000000115dc <__sinit>:
   115dc:	04853783          	ld	a5,72(a0)
   115e0:	00078463          	beqz	a5,115e8 <__sinit+0xc>
   115e4:	00008067          	ret
   115e8:	000117b7          	lui	a5,0x11
   115ec:	2181b703          	ld	a4,536(gp) # 14a30 <__stdio_exit_handler>
   115f0:	2fc78793          	addi	a5,a5,764 # 112fc <cleanup_stdio>
   115f4:	04f53423          	sd	a5,72(a0)
   115f8:	fe0716e3          	bnez	a4,115e4 <__sinit+0x8>
   115fc:	d6dff06f          	j	11368 <global_stdio_init.part.0>

0000000000011600 <__sfp_lock_acquire>:
   11600:	00008067          	ret

0000000000011604 <__sfp_lock_release>:
   11604:	00008067          	ret

0000000000011608 <__fp_lock_all>:
   11608:	000115b7          	lui	a1,0x11
   1160c:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   11610:	2dc58593          	addi	a1,a1,732 # 112dc <__fp_lock>
   11614:	00000513          	li	a0,0
   11618:	0180006f          	j	11630 <_fwalk_sglue>

000000000001161c <__fp_unlock_all>:
   1161c:	000115b7          	lui	a1,0x11
   11620:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   11624:	36058593          	addi	a1,a1,864 # 11360 <__fp_unlock>
   11628:	00000513          	li	a0,0
   1162c:	0040006f          	j	11630 <_fwalk_sglue>

0000000000011630 <_fwalk_sglue>:
   11630:	fb010113          	addi	sp,sp,-80
   11634:	03213823          	sd	s2,48(sp)
   11638:	03313423          	sd	s3,40(sp)
   1163c:	03413023          	sd	s4,32(sp)
   11640:	01513c23          	sd	s5,24(sp)
   11644:	01613823          	sd	s6,16(sp)
   11648:	01713423          	sd	s7,8(sp)
   1164c:	01813023          	sd	s8,0(sp)
   11650:	04113423          	sd	ra,72(sp)
   11654:	04813023          	sd	s0,64(sp)
   11658:	02913c23          	sd	s1,56(sp)
   1165c:	00060993          	mv	s3,a2
   11660:	00050a93          	mv	s5,a0
   11664:	00058b13          	mv	s6,a1
   11668:	00000913          	li	s2,0
   1166c:	0b000b93          	li	s7,176
   11670:	00100c13          	li	s8,1
   11674:	fff00a13          	li	s4,-1
   11678:	0089a483          	lw	s1,8(s3)
   1167c:	04905263          	blez	s1,116c0 <_fwalk_sglue+0x90>
   11680:	02049493          	slli	s1,s1,0x20
   11684:	0204d493          	srli	s1,s1,0x20
   11688:	037484b3          	mul	s1,s1,s7
   1168c:	0109b403          	ld	s0,16(s3)
   11690:	009404b3          	add	s1,s0,s1
   11694:	01045783          	lhu	a5,16(s0)
   11698:	02fc7063          	bgeu	s8,a5,116b8 <_fwalk_sglue+0x88>
   1169c:	01241783          	lh	a5,18(s0)
   116a0:	00040593          	mv	a1,s0
   116a4:	000a8513          	mv	a0,s5
   116a8:	01478863          	beq	a5,s4,116b8 <_fwalk_sglue+0x88>
   116ac:	000b00e7          	jalr	s6
   116b0:	01256933          	or	s2,a0,s2
   116b4:	0009091b          	sext.w	s2,s2
   116b8:	0b040413          	addi	s0,s0,176
   116bc:	fc941ce3          	bne	s0,s1,11694 <_fwalk_sglue+0x64>
   116c0:	0009b983          	ld	s3,0(s3)
   116c4:	fa099ae3          	bnez	s3,11678 <_fwalk_sglue+0x48>
   116c8:	04813083          	ld	ra,72(sp)
   116cc:	04013403          	ld	s0,64(sp)
   116d0:	03813483          	ld	s1,56(sp)
   116d4:	02813983          	ld	s3,40(sp)
   116d8:	02013a03          	ld	s4,32(sp)
   116dc:	01813a83          	ld	s5,24(sp)
   116e0:	01013b03          	ld	s6,16(sp)
   116e4:	00813b83          	ld	s7,8(sp)
   116e8:	00013c03          	ld	s8,0(sp)
   116ec:	00090513          	mv	a0,s2
   116f0:	03013903          	ld	s2,48(sp)
   116f4:	05010113          	addi	sp,sp,80
   116f8:	00008067          	ret

00000000000116fc <__sread>:
   116fc:	ff010113          	addi	sp,sp,-16
   11700:	00813023          	sd	s0,0(sp)
   11704:	00058413          	mv	s0,a1
   11708:	01259583          	lh	a1,18(a1)
   1170c:	00113423          	sd	ra,8(sp)
   11710:	2ec000ef          	jal	119fc <_read_r>
   11714:	02054063          	bltz	a0,11734 <__sread+0x38>
   11718:	09043783          	ld	a5,144(s0)
   1171c:	00813083          	ld	ra,8(sp)
   11720:	00a787b3          	add	a5,a5,a0
   11724:	08f43823          	sd	a5,144(s0)
   11728:	00013403          	ld	s0,0(sp)
   1172c:	01010113          	addi	sp,sp,16
   11730:	00008067          	ret
   11734:	01045783          	lhu	a5,16(s0)
   11738:	fffff737          	lui	a4,0xfffff
   1173c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffea00f>
   11740:	00e7f7b3          	and	a5,a5,a4
   11744:	00813083          	ld	ra,8(sp)
   11748:	00f41823          	sh	a5,16(s0)
   1174c:	00013403          	ld	s0,0(sp)
   11750:	01010113          	addi	sp,sp,16
   11754:	00008067          	ret

0000000000011758 <__seofread>:
   11758:	00000513          	li	a0,0
   1175c:	00008067          	ret

0000000000011760 <__swrite>:
   11760:	01059783          	lh	a5,16(a1)
   11764:	fd010113          	addi	sp,sp,-48
   11768:	00068313          	mv	t1,a3
   1176c:	02113423          	sd	ra,40(sp)
   11770:	1007f693          	andi	a3,a5,256
   11774:	00058713          	mv	a4,a1
   11778:	00060893          	mv	a7,a2
   1177c:	00050813          	mv	a6,a0
   11780:	02069863          	bnez	a3,117b0 <__swrite+0x50>
   11784:	fffff6b7          	lui	a3,0xfffff
   11788:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffea00f>
   1178c:	02813083          	ld	ra,40(sp)
   11790:	00d7f7b3          	and	a5,a5,a3
   11794:	01271583          	lh	a1,18(a4)
   11798:	00f71823          	sh	a5,16(a4)
   1179c:	00030693          	mv	a3,t1
   117a0:	00088613          	mv	a2,a7
   117a4:	00080513          	mv	a0,a6
   117a8:	03010113          	addi	sp,sp,48
   117ac:	2b80006f          	j	11a64 <_write_r>
   117b0:	01259583          	lh	a1,18(a1)
   117b4:	00c13823          	sd	a2,16(sp)
   117b8:	00200693          	li	a3,2
   117bc:	00000613          	li	a2,0
   117c0:	00613c23          	sd	t1,24(sp)
   117c4:	00e13023          	sd	a4,0(sp)
   117c8:	00a13423          	sd	a0,8(sp)
   117cc:	1c8000ef          	jal	11994 <_lseek_r>
   117d0:	00013703          	ld	a4,0(sp)
   117d4:	01813303          	ld	t1,24(sp)
   117d8:	01013883          	ld	a7,16(sp)
   117dc:	01071783          	lh	a5,16(a4)
   117e0:	00813803          	ld	a6,8(sp)
   117e4:	fa1ff06f          	j	11784 <__swrite+0x24>

00000000000117e8 <__sseek>:
   117e8:	ff010113          	addi	sp,sp,-16
   117ec:	00813023          	sd	s0,0(sp)
   117f0:	00058413          	mv	s0,a1
   117f4:	01259583          	lh	a1,18(a1)
   117f8:	00113423          	sd	ra,8(sp)
   117fc:	198000ef          	jal	11994 <_lseek_r>
   11800:	fff00713          	li	a4,-1
   11804:	01041783          	lh	a5,16(s0)
   11808:	02e50263          	beq	a0,a4,1182c <__sseek+0x44>
   1180c:	00001737          	lui	a4,0x1
   11810:	00e7e7b3          	or	a5,a5,a4
   11814:	00813083          	ld	ra,8(sp)
   11818:	08a43823          	sd	a0,144(s0)
   1181c:	00f41823          	sh	a5,16(s0)
   11820:	00013403          	ld	s0,0(sp)
   11824:	01010113          	addi	sp,sp,16
   11828:	00008067          	ret
   1182c:	80050713          	addi	a4,a0,-2048
   11830:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   11834:	00e7f7b3          	and	a5,a5,a4
   11838:	00813083          	ld	ra,8(sp)
   1183c:	00f41823          	sh	a5,16(s0)
   11840:	00013403          	ld	s0,0(sp)
   11844:	01010113          	addi	sp,sp,16
   11848:	00008067          	ret

000000000001184c <__sclose>:
   1184c:	01259583          	lh	a1,18(a1)
   11850:	0040006f          	j	11854 <_close_r>

0000000000011854 <_close_r>:
   11854:	fe010113          	addi	sp,sp,-32
   11858:	00813823          	sd	s0,16(sp)
   1185c:	00913423          	sd	s1,8(sp)
   11860:	00050493          	mv	s1,a0
   11864:	00058513          	mv	a0,a1
   11868:	00113c23          	sd	ra,24(sp)
   1186c:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   11870:	7e0010ef          	jal	13050 <_close>
   11874:	fff00793          	li	a5,-1
   11878:	00f50c63          	beq	a0,a5,11890 <_close_r+0x3c>
   1187c:	01813083          	ld	ra,24(sp)
   11880:	01013403          	ld	s0,16(sp)
   11884:	00813483          	ld	s1,8(sp)
   11888:	02010113          	addi	sp,sp,32
   1188c:	00008067          	ret
   11890:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   11894:	fe0784e3          	beqz	a5,1187c <_close_r+0x28>
   11898:	01813083          	ld	ra,24(sp)
   1189c:	01013403          	ld	s0,16(sp)
   118a0:	00f4a023          	sw	a5,0(s1)
   118a4:	00813483          	ld	s1,8(sp)
   118a8:	02010113          	addi	sp,sp,32
   118ac:	00008067          	ret

00000000000118b0 <_reclaim_reent>:
   118b0:	2001b783          	ld	a5,512(gp) # 14a18 <_impure_ptr>
   118b4:	0ca78e63          	beq	a5,a0,11990 <_reclaim_reent+0xe0>
   118b8:	06853583          	ld	a1,104(a0)
   118bc:	fd010113          	addi	sp,sp,-48
   118c0:	00913c23          	sd	s1,24(sp)
   118c4:	02113423          	sd	ra,40(sp)
   118c8:	02813023          	sd	s0,32(sp)
   118cc:	00050493          	mv	s1,a0
   118d0:	04058863          	beqz	a1,11920 <_reclaim_reent+0x70>
   118d4:	01213823          	sd	s2,16(sp)
   118d8:	01313423          	sd	s3,8(sp)
   118dc:	00000913          	li	s2,0
   118e0:	20000993          	li	s3,512
   118e4:	012587b3          	add	a5,a1,s2
   118e8:	0007b403          	ld	s0,0(a5)
   118ec:	00040e63          	beqz	s0,11908 <_reclaim_reent+0x58>
   118f0:	00040593          	mv	a1,s0
   118f4:	00043403          	ld	s0,0(s0)
   118f8:	00048513          	mv	a0,s1
   118fc:	5b0000ef          	jal	11eac <_free_r>
   11900:	fe0418e3          	bnez	s0,118f0 <_reclaim_reent+0x40>
   11904:	0684b583          	ld	a1,104(s1)
   11908:	00890913          	addi	s2,s2,8
   1190c:	fd391ce3          	bne	s2,s3,118e4 <_reclaim_reent+0x34>
   11910:	00048513          	mv	a0,s1
   11914:	598000ef          	jal	11eac <_free_r>
   11918:	01013903          	ld	s2,16(sp)
   1191c:	00813983          	ld	s3,8(sp)
   11920:	0504b583          	ld	a1,80(s1)
   11924:	00058663          	beqz	a1,11930 <_reclaim_reent+0x80>
   11928:	00048513          	mv	a0,s1
   1192c:	580000ef          	jal	11eac <_free_r>
   11930:	0604b403          	ld	s0,96(s1)
   11934:	00040c63          	beqz	s0,1194c <_reclaim_reent+0x9c>
   11938:	00040593          	mv	a1,s0
   1193c:	00043403          	ld	s0,0(s0)
   11940:	00048513          	mv	a0,s1
   11944:	568000ef          	jal	11eac <_free_r>
   11948:	fe0418e3          	bnez	s0,11938 <_reclaim_reent+0x88>
   1194c:	0784b583          	ld	a1,120(s1)
   11950:	00058663          	beqz	a1,1195c <_reclaim_reent+0xac>
   11954:	00048513          	mv	a0,s1
   11958:	554000ef          	jal	11eac <_free_r>
   1195c:	0484b783          	ld	a5,72(s1)
   11960:	00078e63          	beqz	a5,1197c <_reclaim_reent+0xcc>
   11964:	02013403          	ld	s0,32(sp)
   11968:	02813083          	ld	ra,40(sp)
   1196c:	00048513          	mv	a0,s1
   11970:	01813483          	ld	s1,24(sp)
   11974:	03010113          	addi	sp,sp,48
   11978:	00078067          	jr	a5
   1197c:	02813083          	ld	ra,40(sp)
   11980:	02013403          	ld	s0,32(sp)
   11984:	01813483          	ld	s1,24(sp)
   11988:	03010113          	addi	sp,sp,48
   1198c:	00008067          	ret
   11990:	00008067          	ret

0000000000011994 <_lseek_r>:
   11994:	fe010113          	addi	sp,sp,-32
   11998:	00058793          	mv	a5,a1
   1199c:	00813823          	sd	s0,16(sp)
   119a0:	00913423          	sd	s1,8(sp)
   119a4:	00060593          	mv	a1,a2
   119a8:	00050493          	mv	s1,a0
   119ac:	00068613          	mv	a2,a3
   119b0:	00078513          	mv	a0,a5
   119b4:	00113c23          	sd	ra,24(sp)
   119b8:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   119bc:	704010ef          	jal	130c0 <_lseek>
   119c0:	fff00793          	li	a5,-1
   119c4:	00f50c63          	beq	a0,a5,119dc <_lseek_r+0x48>
   119c8:	01813083          	ld	ra,24(sp)
   119cc:	01013403          	ld	s0,16(sp)
   119d0:	00813483          	ld	s1,8(sp)
   119d4:	02010113          	addi	sp,sp,32
   119d8:	00008067          	ret
   119dc:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   119e0:	fe0784e3          	beqz	a5,119c8 <_lseek_r+0x34>
   119e4:	01813083          	ld	ra,24(sp)
   119e8:	01013403          	ld	s0,16(sp)
   119ec:	00f4a023          	sw	a5,0(s1)
   119f0:	00813483          	ld	s1,8(sp)
   119f4:	02010113          	addi	sp,sp,32
   119f8:	00008067          	ret

00000000000119fc <_read_r>:
   119fc:	fe010113          	addi	sp,sp,-32
   11a00:	00058793          	mv	a5,a1
   11a04:	00813823          	sd	s0,16(sp)
   11a08:	00913423          	sd	s1,8(sp)
   11a0c:	00060593          	mv	a1,a2
   11a10:	00050493          	mv	s1,a0
   11a14:	00068613          	mv	a2,a3
   11a18:	00078513          	mv	a0,a5
   11a1c:	00113c23          	sd	ra,24(sp)
   11a20:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   11a24:	6dc010ef          	jal	13100 <_read>
   11a28:	fff00793          	li	a5,-1
   11a2c:	00f50c63          	beq	a0,a5,11a44 <_read_r+0x48>
   11a30:	01813083          	ld	ra,24(sp)
   11a34:	01013403          	ld	s0,16(sp)
   11a38:	00813483          	ld	s1,8(sp)
   11a3c:	02010113          	addi	sp,sp,32
   11a40:	00008067          	ret
   11a44:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   11a48:	fe0784e3          	beqz	a5,11a30 <_read_r+0x34>
   11a4c:	01813083          	ld	ra,24(sp)
   11a50:	01013403          	ld	s0,16(sp)
   11a54:	00f4a023          	sw	a5,0(s1)
   11a58:	00813483          	ld	s1,8(sp)
   11a5c:	02010113          	addi	sp,sp,32
   11a60:	00008067          	ret

0000000000011a64 <_write_r>:
   11a64:	fe010113          	addi	sp,sp,-32
   11a68:	00058793          	mv	a5,a1
   11a6c:	00813823          	sd	s0,16(sp)
   11a70:	00913423          	sd	s1,8(sp)
   11a74:	00060593          	mv	a1,a2
   11a78:	00050493          	mv	s1,a0
   11a7c:	00068613          	mv	a2,a3
   11a80:	00078513          	mv	a0,a5
   11a84:	00113c23          	sd	ra,24(sp)
   11a88:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   11a8c:	72c010ef          	jal	131b8 <_write>
   11a90:	fff00793          	li	a5,-1
   11a94:	00f50c63          	beq	a0,a5,11aac <_write_r+0x48>
   11a98:	01813083          	ld	ra,24(sp)
   11a9c:	01013403          	ld	s0,16(sp)
   11aa0:	00813483          	ld	s1,8(sp)
   11aa4:	02010113          	addi	sp,sp,32
   11aa8:	00008067          	ret
   11aac:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   11ab0:	fe0784e3          	beqz	a5,11a98 <_write_r+0x34>
   11ab4:	01813083          	ld	ra,24(sp)
   11ab8:	01013403          	ld	s0,16(sp)
   11abc:	00f4a023          	sw	a5,0(s1)
   11ac0:	00813483          	ld	s1,8(sp)
   11ac4:	02010113          	addi	sp,sp,32
   11ac8:	00008067          	ret

0000000000011acc <__libc_init_array>:
   11acc:	fe010113          	addi	sp,sp,-32
   11ad0:	00813823          	sd	s0,16(sp)
   11ad4:	01213023          	sd	s2,0(sp)
   11ad8:	00014437          	lui	s0,0x14
   11adc:	00014937          	lui	s2,0x14
   11ae0:	00113c23          	sd	ra,24(sp)
   11ae4:	00913423          	sd	s1,8(sp)
   11ae8:	00090913          	mv	s2,s2
   11aec:	00040413          	mv	s0,s0
   11af0:	02890263          	beq	s2,s0,11b14 <__libc_init_array+0x48>
   11af4:	40890933          	sub	s2,s2,s0
   11af8:	40395913          	srai	s2,s2,0x3
   11afc:	00000493          	li	s1,0
   11b00:	00043783          	ld	a5,0(s0) # 14000 <__init_array_start>
   11b04:	00148493          	addi	s1,s1,1
   11b08:	00840413          	addi	s0,s0,8
   11b0c:	000780e7          	jalr	a5
   11b10:	ff24e8e3          	bltu	s1,s2,11b00 <__libc_init_array+0x34>
   11b14:	00014937          	lui	s2,0x14
   11b18:	00014437          	lui	s0,0x14
   11b1c:	01090913          	addi	s2,s2,16 # 14010 <__do_global_dtors_aux_fini_array_entry>
   11b20:	00040413          	mv	s0,s0
   11b24:	02890263          	beq	s2,s0,11b48 <__libc_init_array+0x7c>
   11b28:	40890933          	sub	s2,s2,s0
   11b2c:	40395913          	srai	s2,s2,0x3
   11b30:	00000493          	li	s1,0
   11b34:	00043783          	ld	a5,0(s0) # 14000 <__init_array_start>
   11b38:	00148493          	addi	s1,s1,1
   11b3c:	00840413          	addi	s0,s0,8
   11b40:	000780e7          	jalr	a5
   11b44:	ff24e8e3          	bltu	s1,s2,11b34 <__libc_init_array+0x68>
   11b48:	01813083          	ld	ra,24(sp)
   11b4c:	01013403          	ld	s0,16(sp)
   11b50:	00813483          	ld	s1,8(sp)
   11b54:	00013903          	ld	s2,0(sp)
   11b58:	02010113          	addi	sp,sp,32
   11b5c:	00008067          	ret

0000000000011b60 <memset>:
   11b60:	00f00313          	li	t1,15
   11b64:	00050713          	mv	a4,a0
   11b68:	02c37a63          	bgeu	t1,a2,11b9c <memset+0x3c>
   11b6c:	00f77793          	andi	a5,a4,15
   11b70:	0a079063          	bnez	a5,11c10 <memset+0xb0>
   11b74:	06059e63          	bnez	a1,11bf0 <memset+0x90>
   11b78:	ff067693          	andi	a3,a2,-16
   11b7c:	00f67613          	andi	a2,a2,15
   11b80:	00e686b3          	add	a3,a3,a4
   11b84:	00b73023          	sd	a1,0(a4)
   11b88:	00b73423          	sd	a1,8(a4)
   11b8c:	01070713          	addi	a4,a4,16
   11b90:	fed76ae3          	bltu	a4,a3,11b84 <memset+0x24>
   11b94:	00061463          	bnez	a2,11b9c <memset+0x3c>
   11b98:	00008067          	ret
   11b9c:	40c306b3          	sub	a3,t1,a2
   11ba0:	00269693          	slli	a3,a3,0x2
   11ba4:	00000297          	auipc	t0,0x0
   11ba8:	005686b3          	add	a3,a3,t0
   11bac:	00c68067          	jr	12(a3)
   11bb0:	00b70723          	sb	a1,14(a4)
   11bb4:	00b706a3          	sb	a1,13(a4)
   11bb8:	00b70623          	sb	a1,12(a4)
   11bbc:	00b705a3          	sb	a1,11(a4)
   11bc0:	00b70523          	sb	a1,10(a4)
   11bc4:	00b704a3          	sb	a1,9(a4)
   11bc8:	00b70423          	sb	a1,8(a4)
   11bcc:	00b703a3          	sb	a1,7(a4)
   11bd0:	00b70323          	sb	a1,6(a4)
   11bd4:	00b702a3          	sb	a1,5(a4)
   11bd8:	00b70223          	sb	a1,4(a4)
   11bdc:	00b701a3          	sb	a1,3(a4)
   11be0:	00b70123          	sb	a1,2(a4)
   11be4:	00b700a3          	sb	a1,1(a4)
   11be8:	00b70023          	sb	a1,0(a4)
   11bec:	00008067          	ret
   11bf0:	0ff5f593          	zext.b	a1,a1
   11bf4:	00859693          	slli	a3,a1,0x8
   11bf8:	00d5e5b3          	or	a1,a1,a3
   11bfc:	01059693          	slli	a3,a1,0x10
   11c00:	00d5e5b3          	or	a1,a1,a3
   11c04:	02059693          	slli	a3,a1,0x20
   11c08:	00d5e5b3          	or	a1,a1,a3
   11c0c:	f6dff06f          	j	11b78 <memset+0x18>
   11c10:	00279693          	slli	a3,a5,0x2
   11c14:	00000297          	auipc	t0,0x0
   11c18:	005686b3          	add	a3,a3,t0
   11c1c:	00008293          	mv	t0,ra
   11c20:	f98680e7          	jalr	-104(a3)
   11c24:	00028093          	mv	ra,t0
   11c28:	ff078793          	addi	a5,a5,-16
   11c2c:	40f70733          	sub	a4,a4,a5
   11c30:	00f60633          	add	a2,a2,a5
   11c34:	f6c374e3          	bgeu	t1,a2,11b9c <memset+0x3c>
   11c38:	f3dff06f          	j	11b74 <memset+0x14>

0000000000011c3c <__call_exitprocs>:
   11c3c:	fb010113          	addi	sp,sp,-80
   11c40:	03413023          	sd	s4,32(sp)
   11c44:	03213823          	sd	s2,48(sp)
   11c48:	2281b903          	ld	s2,552(gp) # 14a40 <__atexit>
   11c4c:	04113423          	sd	ra,72(sp)
   11c50:	06090e63          	beqz	s2,11ccc <__call_exitprocs+0x90>
   11c54:	03313423          	sd	s3,40(sp)
   11c58:	01513c23          	sd	s5,24(sp)
   11c5c:	01613823          	sd	s6,16(sp)
   11c60:	01713423          	sd	s7,8(sp)
   11c64:	04813023          	sd	s0,64(sp)
   11c68:	02913c23          	sd	s1,56(sp)
   11c6c:	01813023          	sd	s8,0(sp)
   11c70:	00050b13          	mv	s6,a0
   11c74:	00058b93          	mv	s7,a1
   11c78:	fff00993          	li	s3,-1
   11c7c:	00100a93          	li	s5,1
   11c80:	00892403          	lw	s0,8(s2)
   11c84:	fff4041b          	addiw	s0,s0,-1
   11c88:	02044463          	bltz	s0,11cb0 <__call_exitprocs+0x74>
   11c8c:	01090493          	addi	s1,s2,16
   11c90:	00341793          	slli	a5,s0,0x3
   11c94:	00f484b3          	add	s1,s1,a5
   11c98:	040b8463          	beqz	s7,11ce0 <__call_exitprocs+0xa4>
   11c9c:	2004b783          	ld	a5,512(s1)
   11ca0:	05778063          	beq	a5,s7,11ce0 <__call_exitprocs+0xa4>
   11ca4:	fff4041b          	addiw	s0,s0,-1
   11ca8:	ff848493          	addi	s1,s1,-8
   11cac:	ff3418e3          	bne	s0,s3,11c9c <__call_exitprocs+0x60>
   11cb0:	04013403          	ld	s0,64(sp)
   11cb4:	03813483          	ld	s1,56(sp)
   11cb8:	02813983          	ld	s3,40(sp)
   11cbc:	01813a83          	ld	s5,24(sp)
   11cc0:	01013b03          	ld	s6,16(sp)
   11cc4:	00813b83          	ld	s7,8(sp)
   11cc8:	00013c03          	ld	s8,0(sp)
   11ccc:	04813083          	ld	ra,72(sp)
   11cd0:	03013903          	ld	s2,48(sp)
   11cd4:	02013a03          	ld	s4,32(sp)
   11cd8:	05010113          	addi	sp,sp,80
   11cdc:	00008067          	ret
   11ce0:	00892783          	lw	a5,8(s2)
   11ce4:	0004b683          	ld	a3,0(s1)
   11ce8:	fff7879b          	addiw	a5,a5,-1
   11cec:	06878a63          	beq	a5,s0,11d60 <__call_exitprocs+0x124>
   11cf0:	0004b023          	sd	zero,0(s1)
   11cf4:	02068663          	beqz	a3,11d20 <__call_exitprocs+0xe4>
   11cf8:	31092783          	lw	a5,784(s2)
   11cfc:	008a973b          	sllw	a4,s5,s0
   11d00:	00892c03          	lw	s8,8(s2)
   11d04:	00e7f7b3          	and	a5,a5,a4
   11d08:	02079463          	bnez	a5,11d30 <__call_exitprocs+0xf4>
   11d0c:	000680e7          	jalr	a3
   11d10:	00892703          	lw	a4,8(s2)
   11d14:	2281b783          	ld	a5,552(gp) # 14a40 <__atexit>
   11d18:	03871e63          	bne	a4,s8,11d54 <__call_exitprocs+0x118>
   11d1c:	03279c63          	bne	a5,s2,11d54 <__call_exitprocs+0x118>
   11d20:	fff4041b          	addiw	s0,s0,-1
   11d24:	ff848493          	addi	s1,s1,-8
   11d28:	f73418e3          	bne	s0,s3,11c98 <__call_exitprocs+0x5c>
   11d2c:	f85ff06f          	j	11cb0 <__call_exitprocs+0x74>
   11d30:	31492783          	lw	a5,788(s2)
   11d34:	1004b583          	ld	a1,256(s1)
   11d38:	00f77733          	and	a4,a4,a5
   11d3c:	02071663          	bnez	a4,11d68 <__call_exitprocs+0x12c>
   11d40:	000b0513          	mv	a0,s6
   11d44:	000680e7          	jalr	a3
   11d48:	00892703          	lw	a4,8(s2)
   11d4c:	2281b783          	ld	a5,552(gp) # 14a40 <__atexit>
   11d50:	fd8706e3          	beq	a4,s8,11d1c <__call_exitprocs+0xe0>
   11d54:	f4078ee3          	beqz	a5,11cb0 <__call_exitprocs+0x74>
   11d58:	00078913          	mv	s2,a5
   11d5c:	f25ff06f          	j	11c80 <__call_exitprocs+0x44>
   11d60:	00892423          	sw	s0,8(s2)
   11d64:	f91ff06f          	j	11cf4 <__call_exitprocs+0xb8>
   11d68:	00058513          	mv	a0,a1
   11d6c:	000680e7          	jalr	a3
   11d70:	fa1ff06f          	j	11d10 <__call_exitprocs+0xd4>

0000000000011d74 <atexit>:
   11d74:	00050593          	mv	a1,a0
   11d78:	00000693          	li	a3,0
   11d7c:	00000613          	li	a2,0
   11d80:	00000513          	li	a0,0
   11d84:	2300106f          	j	12fb4 <__register_exitproc>

0000000000011d88 <_malloc_trim_r>:
   11d88:	fd010113          	addi	sp,sp,-48
   11d8c:	01213823          	sd	s2,16(sp)
   11d90:	00014937          	lui	s2,0x14
   11d94:	02813023          	sd	s0,32(sp)
   11d98:	00913c23          	sd	s1,24(sp)
   11d9c:	01313423          	sd	s3,8(sp)
   11da0:	00058413          	mv	s0,a1
   11da4:	02113423          	sd	ra,40(sp)
   11da8:	00050993          	mv	s3,a0
   11dac:	20090913          	addi	s2,s2,512 # 14200 <__malloc_av_>
   11db0:	4e5000ef          	jal	12a94 <__malloc_lock>
   11db4:	01093783          	ld	a5,16(s2)
   11db8:	00001737          	lui	a4,0x1
   11dbc:	0087b483          	ld	s1,8(a5)
   11dc0:	ffc4f493          	andi	s1,s1,-4
   11dc4:	7ff48793          	addi	a5,s1,2047
   11dc8:	7e078793          	addi	a5,a5,2016
   11dcc:	40878433          	sub	s0,a5,s0
   11dd0:	00c45413          	srli	s0,s0,0xc
   11dd4:	fff40413          	addi	s0,s0,-1
   11dd8:	00c41413          	slli	s0,s0,0xc
   11ddc:	00e44e63          	blt	s0,a4,11df8 <_malloc_trim_r+0x70>
   11de0:	00000593          	li	a1,0
   11de4:	00098513          	mv	a0,s3
   11de8:	114010ef          	jal	12efc <_sbrk_r>
   11dec:	01093783          	ld	a5,16(s2)
   11df0:	009787b3          	add	a5,a5,s1
   11df4:	02f50663          	beq	a0,a5,11e20 <_malloc_trim_r+0x98>
   11df8:	00098513          	mv	a0,s3
   11dfc:	49d000ef          	jal	12a98 <__malloc_unlock>
   11e00:	02813083          	ld	ra,40(sp)
   11e04:	02013403          	ld	s0,32(sp)
   11e08:	01813483          	ld	s1,24(sp)
   11e0c:	01013903          	ld	s2,16(sp)
   11e10:	00813983          	ld	s3,8(sp)
   11e14:	00000513          	li	a0,0
   11e18:	03010113          	addi	sp,sp,48
   11e1c:	00008067          	ret
   11e20:	408005b3          	neg	a1,s0
   11e24:	00098513          	mv	a0,s3
   11e28:	0d4010ef          	jal	12efc <_sbrk_r>
   11e2c:	fff00793          	li	a5,-1
   11e30:	04f50463          	beq	a0,a5,11e78 <_malloc_trim_r+0xf0>
   11e34:	01093683          	ld	a3,16(s2)
   11e38:	4981a783          	lw	a5,1176(gp) # 14cb0 <__malloc_current_mallinfo>
   11e3c:	408484b3          	sub	s1,s1,s0
   11e40:	0014e493          	ori	s1,s1,1
   11e44:	00098513          	mv	a0,s3
   11e48:	408787bb          	subw	a5,a5,s0
   11e4c:	0096b423          	sd	s1,8(a3)
   11e50:	48f1ac23          	sw	a5,1176(gp) # 14cb0 <__malloc_current_mallinfo>
   11e54:	445000ef          	jal	12a98 <__malloc_unlock>
   11e58:	02813083          	ld	ra,40(sp)
   11e5c:	02013403          	ld	s0,32(sp)
   11e60:	01813483          	ld	s1,24(sp)
   11e64:	01013903          	ld	s2,16(sp)
   11e68:	00813983          	ld	s3,8(sp)
   11e6c:	00100513          	li	a0,1
   11e70:	03010113          	addi	sp,sp,48
   11e74:	00008067          	ret
   11e78:	00000593          	li	a1,0
   11e7c:	00098513          	mv	a0,s3
   11e80:	07c010ef          	jal	12efc <_sbrk_r>
   11e84:	01093703          	ld	a4,16(s2)
   11e88:	01f00693          	li	a3,31
   11e8c:	40e507b3          	sub	a5,a0,a4
   11e90:	f6f6d4e3          	bge	a3,a5,11df8 <_malloc_trim_r+0x70>
   11e94:	2081b603          	ld	a2,520(gp) # 14a20 <__malloc_sbrk_base>
   11e98:	0017e793          	ori	a5,a5,1
   11e9c:	40c50533          	sub	a0,a0,a2
   11ea0:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11ea4:	48a1ac23          	sw	a0,1176(gp) # 14cb0 <__malloc_current_mallinfo>
   11ea8:	f51ff06f          	j	11df8 <_malloc_trim_r+0x70>

0000000000011eac <_free_r>:
   11eac:	12058863          	beqz	a1,11fdc <_free_r+0x130>
   11eb0:	fe010113          	addi	sp,sp,-32
   11eb4:	00813823          	sd	s0,16(sp)
   11eb8:	00b13423          	sd	a1,8(sp)
   11ebc:	00050413          	mv	s0,a0
   11ec0:	00113c23          	sd	ra,24(sp)
   11ec4:	3d1000ef          	jal	12a94 <__malloc_lock>
   11ec8:	00813583          	ld	a1,8(sp)
   11ecc:	00014837          	lui	a6,0x14
   11ed0:	20080813          	addi	a6,a6,512 # 14200 <__malloc_av_>
   11ed4:	ff85b503          	ld	a0,-8(a1)
   11ed8:	ff058713          	addi	a4,a1,-16
   11edc:	01083883          	ld	a7,16(a6)
   11ee0:	ffe57793          	andi	a5,a0,-2
   11ee4:	00f70633          	add	a2,a4,a5
   11ee8:	00863683          	ld	a3,8(a2)
   11eec:	00157313          	andi	t1,a0,1
   11ef0:	ffc6f693          	andi	a3,a3,-4
   11ef4:	18c88e63          	beq	a7,a2,12090 <_free_r+0x1e4>
   11ef8:	00d63423          	sd	a3,8(a2)
   11efc:	00d608b3          	add	a7,a2,a3
   11f00:	0088b883          	ld	a7,8(a7)
   11f04:	0018f893          	andi	a7,a7,1
   11f08:	08031e63          	bnez	t1,11fa4 <_free_r+0xf8>
   11f0c:	ff05b303          	ld	t1,-16(a1)
   11f10:	000145b7          	lui	a1,0x14
   11f14:	21058593          	addi	a1,a1,528 # 14210 <__malloc_av_+0x10>
   11f18:	40670733          	sub	a4,a4,t1
   11f1c:	01073503          	ld	a0,16(a4)
   11f20:	006787b3          	add	a5,a5,t1
   11f24:	14b50063          	beq	a0,a1,12064 <_free_r+0x1b8>
   11f28:	01873303          	ld	t1,24(a4)
   11f2c:	00653c23          	sd	t1,24(a0)
   11f30:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11f34:	1a088263          	beqz	a7,120d8 <_free_r+0x22c>
   11f38:	0017e693          	ori	a3,a5,1
   11f3c:	00d73423          	sd	a3,8(a4)
   11f40:	00f63023          	sd	a5,0(a2)
   11f44:	1ff00693          	li	a3,511
   11f48:	0af6e663          	bltu	a3,a5,11ff4 <_free_r+0x148>
   11f4c:	0037d793          	srli	a5,a5,0x3
   11f50:	00179693          	slli	a3,a5,0x1
   11f54:	0026869b          	addiw	a3,a3,2
   11f58:	00369693          	slli	a3,a3,0x3
   11f5c:	00883503          	ld	a0,8(a6)
   11f60:	00d806b3          	add	a3,a6,a3
   11f64:	0006b583          	ld	a1,0(a3)
   11f68:	4027d61b          	sraiw	a2,a5,0x2
   11f6c:	00100793          	li	a5,1
   11f70:	00c797b3          	sll	a5,a5,a2
   11f74:	00a7e7b3          	or	a5,a5,a0
   11f78:	ff068613          	addi	a2,a3,-16
   11f7c:	00b73823          	sd	a1,16(a4)
   11f80:	00c73c23          	sd	a2,24(a4)
   11f84:	00f83423          	sd	a5,8(a6)
   11f88:	00e6b023          	sd	a4,0(a3)
   11f8c:	00e5bc23          	sd	a4,24(a1)
   11f90:	00040513          	mv	a0,s0
   11f94:	01013403          	ld	s0,16(sp)
   11f98:	01813083          	ld	ra,24(sp)
   11f9c:	02010113          	addi	sp,sp,32
   11fa0:	2f90006f          	j	12a98 <__malloc_unlock>
   11fa4:	02089e63          	bnez	a7,11fe0 <_free_r+0x134>
   11fa8:	000145b7          	lui	a1,0x14
   11fac:	00d787b3          	add	a5,a5,a3
   11fb0:	21058593          	addi	a1,a1,528 # 14210 <__malloc_av_+0x10>
   11fb4:	01063683          	ld	a3,16(a2)
   11fb8:	0017e893          	ori	a7,a5,1
   11fbc:	00f70533          	add	a0,a4,a5
   11fc0:	16b68663          	beq	a3,a1,1212c <_free_r+0x280>
   11fc4:	01863603          	ld	a2,24(a2)
   11fc8:	00c6bc23          	sd	a2,24(a3)
   11fcc:	00d63823          	sd	a3,16(a2)
   11fd0:	01173423          	sd	a7,8(a4)
   11fd4:	00f53023          	sd	a5,0(a0)
   11fd8:	f6dff06f          	j	11f44 <_free_r+0x98>
   11fdc:	00008067          	ret
   11fe0:	00156513          	ori	a0,a0,1
   11fe4:	fea5bc23          	sd	a0,-8(a1)
   11fe8:	00f63023          	sd	a5,0(a2)
   11fec:	1ff00693          	li	a3,511
   11ff0:	f4f6fee3          	bgeu	a3,a5,11f4c <_free_r+0xa0>
   11ff4:	0097d693          	srli	a3,a5,0x9
   11ff8:	00400613          	li	a2,4
   11ffc:	0ed66263          	bltu	a2,a3,120e0 <_free_r+0x234>
   12000:	0067d693          	srli	a3,a5,0x6
   12004:	00169593          	slli	a1,a3,0x1
   12008:	0725859b          	addiw	a1,a1,114
   1200c:	00359593          	slli	a1,a1,0x3
   12010:	0386861b          	addiw	a2,a3,56
   12014:	00b805b3          	add	a1,a6,a1
   12018:	0005b683          	ld	a3,0(a1)
   1201c:	ff058593          	addi	a1,a1,-16
   12020:	00d59863          	bne	a1,a3,12030 <_free_r+0x184>
   12024:	1240006f          	j	12148 <_free_r+0x29c>
   12028:	0106b683          	ld	a3,16(a3)
   1202c:	00d58863          	beq	a1,a3,1203c <_free_r+0x190>
   12030:	0086b603          	ld	a2,8(a3)
   12034:	ffc67613          	andi	a2,a2,-4
   12038:	fec7e8e3          	bltu	a5,a2,12028 <_free_r+0x17c>
   1203c:	0186b583          	ld	a1,24(a3)
   12040:	00b73c23          	sd	a1,24(a4)
   12044:	00d73823          	sd	a3,16(a4)
   12048:	00040513          	mv	a0,s0
   1204c:	01013403          	ld	s0,16(sp)
   12050:	01813083          	ld	ra,24(sp)
   12054:	00e5b823          	sd	a4,16(a1)
   12058:	00e6bc23          	sd	a4,24(a3)
   1205c:	02010113          	addi	sp,sp,32
   12060:	2390006f          	j	12a98 <__malloc_unlock>
   12064:	0a089263          	bnez	a7,12108 <_free_r+0x25c>
   12068:	01863583          	ld	a1,24(a2)
   1206c:	01063603          	ld	a2,16(a2)
   12070:	00f686b3          	add	a3,a3,a5
   12074:	0016e793          	ori	a5,a3,1
   12078:	00b63c23          	sd	a1,24(a2)
   1207c:	00c5b823          	sd	a2,16(a1)
   12080:	00f73423          	sd	a5,8(a4)
   12084:	00d70733          	add	a4,a4,a3
   12088:	00d73023          	sd	a3,0(a4)
   1208c:	f05ff06f          	j	11f90 <_free_r+0xe4>
   12090:	00d786b3          	add	a3,a5,a3
   12094:	02031063          	bnez	t1,120b4 <_free_r+0x208>
   12098:	ff05b783          	ld	a5,-16(a1)
   1209c:	40f70733          	sub	a4,a4,a5
   120a0:	01073603          	ld	a2,16(a4)
   120a4:	00f686b3          	add	a3,a3,a5
   120a8:	01873783          	ld	a5,24(a4)
   120ac:	00f63c23          	sd	a5,24(a2)
   120b0:	00c7b823          	sd	a2,16(a5)
   120b4:	0016e613          	ori	a2,a3,1
   120b8:	2101b783          	ld	a5,528(gp) # 14a28 <__malloc_trim_threshold>
   120bc:	00c73423          	sd	a2,8(a4)
   120c0:	00e83823          	sd	a4,16(a6)
   120c4:	ecf6e6e3          	bltu	a3,a5,11f90 <_free_r+0xe4>
   120c8:	2401b583          	ld	a1,576(gp) # 14a58 <__malloc_top_pad>
   120cc:	00040513          	mv	a0,s0
   120d0:	cb9ff0ef          	jal	11d88 <_malloc_trim_r>
   120d4:	ebdff06f          	j	11f90 <_free_r+0xe4>
   120d8:	00d787b3          	add	a5,a5,a3
   120dc:	ed9ff06f          	j	11fb4 <_free_r+0x108>
   120e0:	01400613          	li	a2,20
   120e4:	02d67a63          	bgeu	a2,a3,12118 <_free_r+0x26c>
   120e8:	05400613          	li	a2,84
   120ec:	06d66c63          	bltu	a2,a3,12164 <_free_r+0x2b8>
   120f0:	00c7d693          	srli	a3,a5,0xc
   120f4:	00169593          	slli	a1,a3,0x1
   120f8:	0de5859b          	addiw	a1,a1,222
   120fc:	00359593          	slli	a1,a1,0x3
   12100:	06e6861b          	addiw	a2,a3,110
   12104:	f11ff06f          	j	12014 <_free_r+0x168>
   12108:	0017e693          	ori	a3,a5,1
   1210c:	00d73423          	sd	a3,8(a4)
   12110:	00f63023          	sd	a5,0(a2)
   12114:	e7dff06f          	j	11f90 <_free_r+0xe4>
   12118:	00169593          	slli	a1,a3,0x1
   1211c:	0b85859b          	addiw	a1,a1,184
   12120:	00359593          	slli	a1,a1,0x3
   12124:	05b6861b          	addiw	a2,a3,91
   12128:	eedff06f          	j	12014 <_free_r+0x168>
   1212c:	02e83423          	sd	a4,40(a6)
   12130:	02e83023          	sd	a4,32(a6)
   12134:	00b73c23          	sd	a1,24(a4)
   12138:	00b73823          	sd	a1,16(a4)
   1213c:	01173423          	sd	a7,8(a4)
   12140:	00f53023          	sd	a5,0(a0)
   12144:	e4dff06f          	j	11f90 <_free_r+0xe4>
   12148:	00883503          	ld	a0,8(a6)
   1214c:	4026561b          	sraiw	a2,a2,0x2
   12150:	00100793          	li	a5,1
   12154:	00c797b3          	sll	a5,a5,a2
   12158:	00a7e7b3          	or	a5,a5,a0
   1215c:	00f83423          	sd	a5,8(a6)
   12160:	ee1ff06f          	j	12040 <_free_r+0x194>
   12164:	15400613          	li	a2,340
   12168:	00d66e63          	bltu	a2,a3,12184 <_free_r+0x2d8>
   1216c:	00f7d693          	srli	a3,a5,0xf
   12170:	00169593          	slli	a1,a3,0x1
   12174:	0f05859b          	addiw	a1,a1,240
   12178:	00359593          	slli	a1,a1,0x3
   1217c:	0776861b          	addiw	a2,a3,119
   12180:	e95ff06f          	j	12014 <_free_r+0x168>
   12184:	55400613          	li	a2,1364
   12188:	00d66e63          	bltu	a2,a3,121a4 <_free_r+0x2f8>
   1218c:	0127d693          	srli	a3,a5,0x12
   12190:	00169593          	slli	a1,a3,0x1
   12194:	0fa5859b          	addiw	a1,a1,250
   12198:	00359593          	slli	a1,a1,0x3
   1219c:	07c6861b          	addiw	a2,a3,124
   121a0:	e75ff06f          	j	12014 <_free_r+0x168>
   121a4:	7f000593          	li	a1,2032
   121a8:	07e00613          	li	a2,126
   121ac:	e69ff06f          	j	12014 <_free_r+0x168>

00000000000121b0 <_malloc_r>:
   121b0:	fa010113          	addi	sp,sp,-96
   121b4:	04813823          	sd	s0,80(sp)
   121b8:	04113c23          	sd	ra,88(sp)
   121bc:	01758713          	addi	a4,a1,23
   121c0:	02e00793          	li	a5,46
   121c4:	00050413          	mv	s0,a0
   121c8:	08e7ee63          	bltu	a5,a4,12264 <_malloc_r+0xb4>
   121cc:	02000713          	li	a4,32
   121d0:	06b76c63          	bltu	a4,a1,12248 <_malloc_r+0x98>
   121d4:	0c1000ef          	jal	12a94 <__malloc_lock>
   121d8:	02000713          	li	a4,32
   121dc:	05000693          	li	a3,80
   121e0:	00400893          	li	a7,4
   121e4:	00014837          	lui	a6,0x14
   121e8:	20080813          	addi	a6,a6,512 # 14200 <__malloc_av_>
   121ec:	00d806b3          	add	a3,a6,a3
   121f0:	0086b783          	ld	a5,8(a3)
   121f4:	ff068613          	addi	a2,a3,-16
   121f8:	48c78063          	beq	a5,a2,12678 <_malloc_r+0x4c8>
   121fc:	0087b703          	ld	a4,8(a5)
   12200:	0187b603          	ld	a2,24(a5)
   12204:	0107b583          	ld	a1,16(a5)
   12208:	ffc77713          	andi	a4,a4,-4
   1220c:	00e78733          	add	a4,a5,a4
   12210:	00873683          	ld	a3,8(a4)
   12214:	00c5bc23          	sd	a2,24(a1)
   12218:	00b63823          	sd	a1,16(a2)
   1221c:	0016e693          	ori	a3,a3,1
   12220:	00040513          	mv	a0,s0
   12224:	00d73423          	sd	a3,8(a4)
   12228:	00f13423          	sd	a5,8(sp)
   1222c:	06d000ef          	jal	12a98 <__malloc_unlock>
   12230:	00813783          	ld	a5,8(sp)
   12234:	05813083          	ld	ra,88(sp)
   12238:	05013403          	ld	s0,80(sp)
   1223c:	01078513          	addi	a0,a5,16
   12240:	06010113          	addi	sp,sp,96
   12244:	00008067          	ret
   12248:	00c00793          	li	a5,12
   1224c:	00f42023          	sw	a5,0(s0)
   12250:	00000513          	li	a0,0
   12254:	05813083          	ld	ra,88(sp)
   12258:	05013403          	ld	s0,80(sp)
   1225c:	06010113          	addi	sp,sp,96
   12260:	00008067          	ret
   12264:	00100793          	li	a5,1
   12268:	ff077713          	andi	a4,a4,-16
   1226c:	01f79793          	slli	a5,a5,0x1f
   12270:	fcf77ce3          	bgeu	a4,a5,12248 <_malloc_r+0x98>
   12274:	fcb76ae3          	bltu	a4,a1,12248 <_malloc_r+0x98>
   12278:	00e13423          	sd	a4,8(sp)
   1227c:	019000ef          	jal	12a94 <__malloc_lock>
   12280:	00813703          	ld	a4,8(sp)
   12284:	1f700793          	li	a5,503
   12288:	4ee7fa63          	bgeu	a5,a4,1277c <_malloc_r+0x5cc>
   1228c:	00975793          	srli	a5,a4,0x9
   12290:	18078a63          	beqz	a5,12424 <_malloc_r+0x274>
   12294:	00400693          	li	a3,4
   12298:	44f6ea63          	bltu	a3,a5,126ec <_malloc_r+0x53c>
   1229c:	00675793          	srli	a5,a4,0x6
   122a0:	0397889b          	addiw	a7,a5,57
   122a4:	0018951b          	slliw	a0,a7,0x1
   122a8:	03878e1b          	addiw	t3,a5,56
   122ac:	00351513          	slli	a0,a0,0x3
   122b0:	00014837          	lui	a6,0x14
   122b4:	20080813          	addi	a6,a6,512 # 14200 <__malloc_av_>
   122b8:	00a80533          	add	a0,a6,a0
   122bc:	00853783          	ld	a5,8(a0)
   122c0:	ff050513          	addi	a0,a0,-16
   122c4:	02f50863          	beq	a0,a5,122f4 <_malloc_r+0x144>
   122c8:	01f00313          	li	t1,31
   122cc:	0140006f          	j	122e0 <_malloc_r+0x130>
   122d0:	0187b583          	ld	a1,24(a5)
   122d4:	36065263          	bgez	a2,12638 <_malloc_r+0x488>
   122d8:	00b50e63          	beq	a0,a1,122f4 <_malloc_r+0x144>
   122dc:	00058793          	mv	a5,a1
   122e0:	0087b683          	ld	a3,8(a5)
   122e4:	ffc6f693          	andi	a3,a3,-4
   122e8:	40e68633          	sub	a2,a3,a4
   122ec:	fec352e3          	bge	t1,a2,122d0 <_malloc_r+0x120>
   122f0:	000e0893          	mv	a7,t3
   122f4:	02083783          	ld	a5,32(a6)
   122f8:	00014e37          	lui	t3,0x14
   122fc:	210e0e13          	addi	t3,t3,528 # 14210 <__malloc_av_+0x10>
   12300:	2fc78a63          	beq	a5,t3,125f4 <_malloc_r+0x444>
   12304:	0087b303          	ld	t1,8(a5)
   12308:	01f00613          	li	a2,31
   1230c:	ffc37313          	andi	t1,t1,-4
   12310:	40e306b3          	sub	a3,t1,a4
   12314:	4ad64463          	blt	a2,a3,127bc <_malloc_r+0x60c>
   12318:	03c83423          	sd	t3,40(a6)
   1231c:	03c83023          	sd	t3,32(a6)
   12320:	4606da63          	bgez	a3,12794 <_malloc_r+0x5e4>
   12324:	1ff00693          	li	a3,511
   12328:	00883583          	ld	a1,8(a6)
   1232c:	3466ee63          	bltu	a3,t1,12688 <_malloc_r+0x4d8>
   12330:	00335313          	srli	t1,t1,0x3
   12334:	00131693          	slli	a3,t1,0x1
   12338:	0026869b          	addiw	a3,a3,2
   1233c:	00369693          	slli	a3,a3,0x3
   12340:	00d806b3          	add	a3,a6,a3
   12344:	0006b503          	ld	a0,0(a3)
   12348:	4023531b          	sraiw	t1,t1,0x2
   1234c:	00100613          	li	a2,1
   12350:	00661633          	sll	a2,a2,t1
   12354:	00c5e5b3          	or	a1,a1,a2
   12358:	ff068613          	addi	a2,a3,-16
   1235c:	00a7b823          	sd	a0,16(a5)
   12360:	00c7bc23          	sd	a2,24(a5)
   12364:	00b83423          	sd	a1,8(a6)
   12368:	00f6b023          	sd	a5,0(a3)
   1236c:	00f53c23          	sd	a5,24(a0)
   12370:	4028d79b          	sraiw	a5,a7,0x2
   12374:	00100513          	li	a0,1
   12378:	00f51533          	sll	a0,a0,a5
   1237c:	0aa5ec63          	bltu	a1,a0,12434 <_malloc_r+0x284>
   12380:	00b577b3          	and	a5,a0,a1
   12384:	02079463          	bnez	a5,123ac <_malloc_r+0x1fc>
   12388:	00151513          	slli	a0,a0,0x1
   1238c:	ffc8f893          	andi	a7,a7,-4
   12390:	00b577b3          	and	a5,a0,a1
   12394:	0048889b          	addiw	a7,a7,4
   12398:	00079a63          	bnez	a5,123ac <_malloc_r+0x1fc>
   1239c:	00151513          	slli	a0,a0,0x1
   123a0:	00b577b3          	and	a5,a0,a1
   123a4:	0048889b          	addiw	a7,a7,4
   123a8:	fe078ae3          	beqz	a5,1239c <_malloc_r+0x1ec>
   123ac:	01f00e93          	li	t4,31
   123b0:	00189f13          	slli	t5,a7,0x1
   123b4:	002f0f1b          	addiw	t5,t5,2
   123b8:	003f1f13          	slli	t5,t5,0x3
   123bc:	ff0f0f13          	addi	t5,t5,-16
   123c0:	01e80f33          	add	t5,a6,t5
   123c4:	000f0313          	mv	t1,t5
   123c8:	01833683          	ld	a3,24(t1)
   123cc:	00088f93          	mv	t6,a7
   123d0:	34d30263          	beq	t1,a3,12714 <_malloc_r+0x564>
   123d4:	0086b603          	ld	a2,8(a3)
   123d8:	00068793          	mv	a5,a3
   123dc:	0186b683          	ld	a3,24(a3)
   123e0:	ffc67613          	andi	a2,a2,-4
   123e4:	40e605b3          	sub	a1,a2,a4
   123e8:	34bec263          	blt	t4,a1,1272c <_malloc_r+0x57c>
   123ec:	fe05c2e3          	bltz	a1,123d0 <_malloc_r+0x220>
   123f0:	00c78633          	add	a2,a5,a2
   123f4:	00863703          	ld	a4,8(a2)
   123f8:	0107b583          	ld	a1,16(a5)
   123fc:	00040513          	mv	a0,s0
   12400:	00176713          	ori	a4,a4,1
   12404:	00e63423          	sd	a4,8(a2)
   12408:	00d5bc23          	sd	a3,24(a1)
   1240c:	00b6b823          	sd	a1,16(a3)
   12410:	00f13423          	sd	a5,8(sp)
   12414:	684000ef          	jal	12a98 <__malloc_unlock>
   12418:	00813783          	ld	a5,8(sp)
   1241c:	01078513          	addi	a0,a5,16
   12420:	e35ff06f          	j	12254 <_malloc_r+0xa4>
   12424:	40000513          	li	a0,1024
   12428:	04000893          	li	a7,64
   1242c:	03f00e13          	li	t3,63
   12430:	e81ff06f          	j	122b0 <_malloc_r+0x100>
   12434:	01083783          	ld	a5,16(a6)
   12438:	0087b683          	ld	a3,8(a5)
   1243c:	ffc6f893          	andi	a7,a3,-4
   12440:	40e88633          	sub	a2,a7,a4
   12444:	00e8e663          	bltu	a7,a4,12450 <_malloc_r+0x2a0>
   12448:	02062693          	slti	a3,a2,32
   1244c:	1a068863          	beqz	a3,125fc <_malloc_r+0x44c>
   12450:	2401b583          	ld	a1,576(gp) # 14a58 <__malloc_top_pad>
   12454:	2081b603          	ld	a2,520(gp) # 14a20 <__malloc_sbrk_base>
   12458:	fff00693          	li	a3,-1
   1245c:	00b705b3          	add	a1,a4,a1
   12460:	44d60663          	beq	a2,a3,128ac <_malloc_r+0x6fc>
   12464:	000016b7          	lui	a3,0x1
   12468:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   1246c:	00d585b3          	add	a1,a1,a3
   12470:	fffff6b7          	lui	a3,0xfffff
   12474:	00d5f5b3          	and	a1,a1,a3
   12478:	00040513          	mv	a0,s0
   1247c:	03013423          	sd	a6,40(sp)
   12480:	02f13023          	sd	a5,32(sp)
   12484:	00e13c23          	sd	a4,24(sp)
   12488:	01113823          	sd	a7,16(sp)
   1248c:	00b13423          	sd	a1,8(sp)
   12490:	26d000ef          	jal	12efc <_sbrk_r>
   12494:	fff00693          	li	a3,-1
   12498:	00813583          	ld	a1,8(sp)
   1249c:	01013883          	ld	a7,16(sp)
   124a0:	01813703          	ld	a4,24(sp)
   124a4:	02013783          	ld	a5,32(sp)
   124a8:	02813803          	ld	a6,40(sp)
   124ac:	00050313          	mv	t1,a0
   124b0:	36d50663          	beq	a0,a3,1281c <_malloc_r+0x66c>
   124b4:	011786b3          	add	a3,a5,a7
   124b8:	36d56063          	bltu	a0,a3,12818 <_malloc_r+0x668>
   124bc:	49818e13          	addi	t3,gp,1176 # 14cb0 <__malloc_current_mallinfo>
   124c0:	000e2603          	lw	a2,0(t3)
   124c4:	00b6063b          	addw	a2,a2,a1
   124c8:	00ce2023          	sw	a2,0(t3)
   124cc:	00060513          	mv	a0,a2
   124d0:	4a668c63          	beq	a3,t1,12988 <_malloc_r+0x7d8>
   124d4:	2081bf03          	ld	t5,520(gp) # 14a20 <__malloc_sbrk_base>
   124d8:	fff00613          	li	a2,-1
   124dc:	4ccf0463          	beq	t5,a2,129a4 <_malloc_r+0x7f4>
   124e0:	40d306b3          	sub	a3,t1,a3
   124e4:	00a686bb          	addw	a3,a3,a0
   124e8:	00de2023          	sw	a3,0(t3)
   124ec:	00f37e93          	andi	t4,t1,15
   124f0:	3c0e8e63          	beqz	t4,128cc <_malloc_r+0x71c>
   124f4:	ff037313          	andi	t1,t1,-16
   124f8:	000016b7          	lui	a3,0x1
   124fc:	01030313          	addi	t1,t1,16
   12500:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   12504:	00b30633          	add	a2,t1,a1
   12508:	41d685b3          	sub	a1,a3,t4
   1250c:	40c585b3          	sub	a1,a1,a2
   12510:	03459593          	slli	a1,a1,0x34
   12514:	0345d593          	srli	a1,a1,0x34
   12518:	00040513          	mv	a0,s0
   1251c:	05c13023          	sd	t3,64(sp)
   12520:	03013c23          	sd	a6,56(sp)
   12524:	02f13823          	sd	a5,48(sp)
   12528:	02e13423          	sd	a4,40(sp)
   1252c:	03113023          	sd	a7,32(sp)
   12530:	00613c23          	sd	t1,24(sp)
   12534:	01d13823          	sd	t4,16(sp)
   12538:	00c13423          	sd	a2,8(sp)
   1253c:	04b13423          	sd	a1,72(sp)
   12540:	1bd000ef          	jal	12efc <_sbrk_r>
   12544:	00050693          	mv	a3,a0
   12548:	fff00513          	li	a0,-1
   1254c:	00813603          	ld	a2,8(sp)
   12550:	01013e83          	ld	t4,16(sp)
   12554:	01813303          	ld	t1,24(sp)
   12558:	02013883          	ld	a7,32(sp)
   1255c:	02813703          	ld	a4,40(sp)
   12560:	03013783          	ld	a5,48(sp)
   12564:	03813803          	ld	a6,56(sp)
   12568:	04013e03          	ld	t3,64(sp)
   1256c:	48a68663          	beq	a3,a0,129f8 <_malloc_r+0x848>
   12570:	04813583          	ld	a1,72(sp)
   12574:	0005851b          	sext.w	a0,a1
   12578:	000e2603          	lw	a2,0(t3)
   1257c:	406686b3          	sub	a3,a3,t1
   12580:	00b686b3          	add	a3,a3,a1
   12584:	0016e693          	ori	a3,a3,1
   12588:	00683823          	sd	t1,16(a6)
   1258c:	00a6063b          	addw	a2,a2,a0
   12590:	00d33423          	sd	a3,8(t1)
   12594:	00ce2023          	sw	a2,0(t3)
   12598:	03078e63          	beq	a5,a6,125d4 <_malloc_r+0x424>
   1259c:	01f00513          	li	a0,31
   125a0:	41157663          	bgeu	a0,a7,129ac <_malloc_r+0x7fc>
   125a4:	0087b583          	ld	a1,8(a5)
   125a8:	fe888693          	addi	a3,a7,-24
   125ac:	ff06f693          	andi	a3,a3,-16
   125b0:	0015f593          	andi	a1,a1,1
   125b4:	00d5e5b3          	or	a1,a1,a3
   125b8:	00b7b423          	sd	a1,8(a5)
   125bc:	00900893          	li	a7,9
   125c0:	00d785b3          	add	a1,a5,a3
   125c4:	0115b423          	sd	a7,8(a1)
   125c8:	0115b823          	sd	a7,16(a1)
   125cc:	44d56863          	bltu	a0,a3,12a1c <_malloc_r+0x86c>
   125d0:	00833683          	ld	a3,8(t1)
   125d4:	2381b583          	ld	a1,568(gp) # 14a50 <__malloc_max_sbrked_mem>
   125d8:	00c5f463          	bgeu	a1,a2,125e0 <_malloc_r+0x430>
   125dc:	22c1bc23          	sd	a2,568(gp) # 14a50 <__malloc_max_sbrked_mem>
   125e0:	2301b583          	ld	a1,560(gp) # 14a48 <__malloc_max_total_mem>
   125e4:	00c5f463          	bgeu	a1,a2,125ec <_malloc_r+0x43c>
   125e8:	22c1b823          	sd	a2,560(gp) # 14a48 <__malloc_max_total_mem>
   125ec:	00030793          	mv	a5,t1
   125f0:	2340006f          	j	12824 <_malloc_r+0x674>
   125f4:	00883583          	ld	a1,8(a6)
   125f8:	d79ff06f          	j	12370 <_malloc_r+0x1c0>
   125fc:	00176693          	ori	a3,a4,1
   12600:	00d7b423          	sd	a3,8(a5)
   12604:	00e78733          	add	a4,a5,a4
   12608:	00166613          	ori	a2,a2,1
   1260c:	00e83823          	sd	a4,16(a6)
   12610:	00040513          	mv	a0,s0
   12614:	00c73423          	sd	a2,8(a4)
   12618:	00f13423          	sd	a5,8(sp)
   1261c:	47c000ef          	jal	12a98 <__malloc_unlock>
   12620:	00813783          	ld	a5,8(sp)
   12624:	05813083          	ld	ra,88(sp)
   12628:	05013403          	ld	s0,80(sp)
   1262c:	01078513          	addi	a0,a5,16
   12630:	06010113          	addi	sp,sp,96
   12634:	00008067          	ret
   12638:	0107b603          	ld	a2,16(a5)
   1263c:	00d786b3          	add	a3,a5,a3
   12640:	0086b703          	ld	a4,8(a3)
   12644:	00b63c23          	sd	a1,24(a2)
   12648:	00c5b823          	sd	a2,16(a1)
   1264c:	00176713          	ori	a4,a4,1
   12650:	00040513          	mv	a0,s0
   12654:	00e6b423          	sd	a4,8(a3)
   12658:	00f13423          	sd	a5,8(sp)
   1265c:	43c000ef          	jal	12a98 <__malloc_unlock>
   12660:	00813783          	ld	a5,8(sp)
   12664:	05813083          	ld	ra,88(sp)
   12668:	05013403          	ld	s0,80(sp)
   1266c:	01078513          	addi	a0,a5,16
   12670:	06010113          	addi	sp,sp,96
   12674:	00008067          	ret
   12678:	0186b783          	ld	a5,24(a3)
   1267c:	0028889b          	addiw	a7,a7,2
   12680:	c6f68ae3          	beq	a3,a5,122f4 <_malloc_r+0x144>
   12684:	b79ff06f          	j	121fc <_malloc_r+0x4c>
   12688:	00935693          	srli	a3,t1,0x9
   1268c:	00400613          	li	a2,4
   12690:	16d67863          	bgeu	a2,a3,12800 <_malloc_r+0x650>
   12694:	01400613          	li	a2,20
   12698:	28d66e63          	bltu	a2,a3,12934 <_malloc_r+0x784>
   1269c:	00169513          	slli	a0,a3,0x1
   126a0:	0b85051b          	addiw	a0,a0,184
   126a4:	00351513          	slli	a0,a0,0x3
   126a8:	05b6861b          	addiw	a2,a3,91
   126ac:	00a80533          	add	a0,a6,a0
   126b0:	00053683          	ld	a3,0(a0)
   126b4:	ff050513          	addi	a0,a0,-16
   126b8:	00d51863          	bne	a0,a3,126c8 <_malloc_r+0x518>
   126bc:	1f80006f          	j	128b4 <_malloc_r+0x704>
   126c0:	0106b683          	ld	a3,16(a3)
   126c4:	00d50863          	beq	a0,a3,126d4 <_malloc_r+0x524>
   126c8:	0086b603          	ld	a2,8(a3)
   126cc:	ffc67613          	andi	a2,a2,-4
   126d0:	fec368e3          	bltu	t1,a2,126c0 <_malloc_r+0x510>
   126d4:	0186b503          	ld	a0,24(a3)
   126d8:	00a7bc23          	sd	a0,24(a5)
   126dc:	00d7b823          	sd	a3,16(a5)
   126e0:	00f53823          	sd	a5,16(a0)
   126e4:	00f6bc23          	sd	a5,24(a3)
   126e8:	c89ff06f          	j	12370 <_malloc_r+0x1c0>
   126ec:	01400693          	li	a3,20
   126f0:	14f6fa63          	bgeu	a3,a5,12844 <_malloc_r+0x694>
   126f4:	05400693          	li	a3,84
   126f8:	24f6ee63          	bltu	a3,a5,12954 <_malloc_r+0x7a4>
   126fc:	00c75793          	srli	a5,a4,0xc
   12700:	06f7889b          	addiw	a7,a5,111
   12704:	0018951b          	slliw	a0,a7,0x1
   12708:	06e78e1b          	addiw	t3,a5,110
   1270c:	00351513          	slli	a0,a0,0x3
   12710:	ba1ff06f          	j	122b0 <_malloc_r+0x100>
   12714:	001f8f9b          	addiw	t6,t6,1
   12718:	003ff793          	andi	a5,t6,3
   1271c:	01030313          	addi	t1,t1,16
   12720:	14078263          	beqz	a5,12864 <_malloc_r+0x6b4>
   12724:	01833683          	ld	a3,24(t1)
   12728:	ca9ff06f          	j	123d0 <_malloc_r+0x220>
   1272c:	0107b503          	ld	a0,16(a5)
   12730:	00176893          	ori	a7,a4,1
   12734:	0117b423          	sd	a7,8(a5)
   12738:	00d53c23          	sd	a3,24(a0)
   1273c:	00a6b823          	sd	a0,16(a3)
   12740:	00e78733          	add	a4,a5,a4
   12744:	02e83423          	sd	a4,40(a6)
   12748:	02e83023          	sd	a4,32(a6)
   1274c:	0015e693          	ori	a3,a1,1
   12750:	00c78633          	add	a2,a5,a2
   12754:	01c73c23          	sd	t3,24(a4)
   12758:	01c73823          	sd	t3,16(a4)
   1275c:	00d73423          	sd	a3,8(a4)
   12760:	00040513          	mv	a0,s0
   12764:	00b63023          	sd	a1,0(a2)
   12768:	00f13423          	sd	a5,8(sp)
   1276c:	32c000ef          	jal	12a98 <__malloc_unlock>
   12770:	00813783          	ld	a5,8(sp)
   12774:	01078513          	addi	a0,a5,16
   12778:	addff06f          	j	12254 <_malloc_r+0xa4>
   1277c:	00375893          	srli	a7,a4,0x3
   12780:	00189693          	slli	a3,a7,0x1
   12784:	0026869b          	addiw	a3,a3,2
   12788:	00369693          	slli	a3,a3,0x3
   1278c:	0008889b          	sext.w	a7,a7
   12790:	a55ff06f          	j	121e4 <_malloc_r+0x34>
   12794:	00678333          	add	t1,a5,t1
   12798:	00833703          	ld	a4,8(t1)
   1279c:	00040513          	mv	a0,s0
   127a0:	00f13423          	sd	a5,8(sp)
   127a4:	00176713          	ori	a4,a4,1
   127a8:	00e33423          	sd	a4,8(t1)
   127ac:	2ec000ef          	jal	12a98 <__malloc_unlock>
   127b0:	00813783          	ld	a5,8(sp)
   127b4:	01078513          	addi	a0,a5,16
   127b8:	a9dff06f          	j	12254 <_malloc_r+0xa4>
   127bc:	00176613          	ori	a2,a4,1
   127c0:	00c7b423          	sd	a2,8(a5)
   127c4:	00e78733          	add	a4,a5,a4
   127c8:	02e83423          	sd	a4,40(a6)
   127cc:	02e83023          	sd	a4,32(a6)
   127d0:	0016e613          	ori	a2,a3,1
   127d4:	00678333          	add	t1,a5,t1
   127d8:	01c73c23          	sd	t3,24(a4)
   127dc:	01c73823          	sd	t3,16(a4)
   127e0:	00c73423          	sd	a2,8(a4)
   127e4:	00040513          	mv	a0,s0
   127e8:	00d33023          	sd	a3,0(t1)
   127ec:	00f13423          	sd	a5,8(sp)
   127f0:	2a8000ef          	jal	12a98 <__malloc_unlock>
   127f4:	00813783          	ld	a5,8(sp)
   127f8:	01078513          	addi	a0,a5,16
   127fc:	a59ff06f          	j	12254 <_malloc_r+0xa4>
   12800:	00635693          	srli	a3,t1,0x6
   12804:	00169513          	slli	a0,a3,0x1
   12808:	0725051b          	addiw	a0,a0,114
   1280c:	00351513          	slli	a0,a0,0x3
   12810:	0386861b          	addiw	a2,a3,56
   12814:	e99ff06f          	j	126ac <_malloc_r+0x4fc>
   12818:	15078e63          	beq	a5,a6,12974 <_malloc_r+0x7c4>
   1281c:	01083783          	ld	a5,16(a6)
   12820:	0087b683          	ld	a3,8(a5)
   12824:	ffc6f693          	andi	a3,a3,-4
   12828:	40e68633          	sub	a2,a3,a4
   1282c:	00e6e663          	bltu	a3,a4,12838 <_malloc_r+0x688>
   12830:	02062693          	slti	a3,a2,32
   12834:	dc0684e3          	beqz	a3,125fc <_malloc_r+0x44c>
   12838:	00040513          	mv	a0,s0
   1283c:	25c000ef          	jal	12a98 <__malloc_unlock>
   12840:	a11ff06f          	j	12250 <_malloc_r+0xa0>
   12844:	05c7889b          	addiw	a7,a5,92
   12848:	0018951b          	slliw	a0,a7,0x1
   1284c:	05b78e1b          	addiw	t3,a5,91
   12850:	00351513          	slli	a0,a0,0x3
   12854:	a5dff06f          	j	122b0 <_malloc_r+0x100>
   12858:	010f3783          	ld	a5,16(t5)
   1285c:	fff8889b          	addiw	a7,a7,-1
   12860:	23e79663          	bne	a5,t5,12a8c <_malloc_r+0x8dc>
   12864:	0038f793          	andi	a5,a7,3
   12868:	ff0f0f13          	addi	t5,t5,-16
   1286c:	fe0796e3          	bnez	a5,12858 <_malloc_r+0x6a8>
   12870:	00883683          	ld	a3,8(a6)
   12874:	fff54793          	not	a5,a0
   12878:	00d7f7b3          	and	a5,a5,a3
   1287c:	00f83423          	sd	a5,8(a6)
   12880:	00151513          	slli	a0,a0,0x1
   12884:	fff50693          	addi	a3,a0,-1
   12888:	baf6f6e3          	bgeu	a3,a5,12434 <_malloc_r+0x284>
   1288c:	00f576b3          	and	a3,a0,a5
   12890:	00069a63          	bnez	a3,128a4 <_malloc_r+0x6f4>
   12894:	00151513          	slli	a0,a0,0x1
   12898:	00f576b3          	and	a3,a0,a5
   1289c:	004f8f9b          	addiw	t6,t6,4
   128a0:	fe068ae3          	beqz	a3,12894 <_malloc_r+0x6e4>
   128a4:	000f8893          	mv	a7,t6
   128a8:	b09ff06f          	j	123b0 <_malloc_r+0x200>
   128ac:	02058593          	addi	a1,a1,32
   128b0:	bc9ff06f          	j	12478 <_malloc_r+0x2c8>
   128b4:	4026561b          	sraiw	a2,a2,0x2
   128b8:	00100313          	li	t1,1
   128bc:	00c31633          	sll	a2,t1,a2
   128c0:	00c5e5b3          	or	a1,a1,a2
   128c4:	00b83423          	sd	a1,8(a6)
   128c8:	e11ff06f          	j	126d8 <_malloc_r+0x528>
   128cc:	00b30633          	add	a2,t1,a1
   128d0:	40c005b3          	neg	a1,a2
   128d4:	03459593          	slli	a1,a1,0x34
   128d8:	0345d593          	srli	a1,a1,0x34
   128dc:	00040513          	mv	a0,s0
   128e0:	03c13c23          	sd	t3,56(sp)
   128e4:	03013823          	sd	a6,48(sp)
   128e8:	02f13423          	sd	a5,40(sp)
   128ec:	02e13023          	sd	a4,32(sp)
   128f0:	01113c23          	sd	a7,24(sp)
   128f4:	00613823          	sd	t1,16(sp)
   128f8:	00c13423          	sd	a2,8(sp)
   128fc:	04b13023          	sd	a1,64(sp)
   12900:	5fc000ef          	jal	12efc <_sbrk_r>
   12904:	00050693          	mv	a3,a0
   12908:	fff00513          	li	a0,-1
   1290c:	01013303          	ld	t1,16(sp)
   12910:	01813883          	ld	a7,24(sp)
   12914:	02013703          	ld	a4,32(sp)
   12918:	02813783          	ld	a5,40(sp)
   1291c:	03013803          	ld	a6,48(sp)
   12920:	03813e03          	ld	t3,56(sp)
   12924:	0ea68463          	beq	a3,a0,12a0c <_malloc_r+0x85c>
   12928:	04013583          	ld	a1,64(sp)
   1292c:	0005851b          	sext.w	a0,a1
   12930:	c49ff06f          	j	12578 <_malloc_r+0x3c8>
   12934:	05400613          	li	a2,84
   12938:	08d66063          	bltu	a2,a3,129b8 <_malloc_r+0x808>
   1293c:	00c35693          	srli	a3,t1,0xc
   12940:	00169513          	slli	a0,a3,0x1
   12944:	0de5051b          	addiw	a0,a0,222
   12948:	00351513          	slli	a0,a0,0x3
   1294c:	06e6861b          	addiw	a2,a3,110
   12950:	d5dff06f          	j	126ac <_malloc_r+0x4fc>
   12954:	15400693          	li	a3,340
   12958:	08f6e063          	bltu	a3,a5,129d8 <_malloc_r+0x828>
   1295c:	00f75793          	srli	a5,a4,0xf
   12960:	0787889b          	addiw	a7,a5,120
   12964:	0018951b          	slliw	a0,a7,0x1
   12968:	07778e1b          	addiw	t3,a5,119
   1296c:	00351513          	slli	a0,a0,0x3
   12970:	941ff06f          	j	122b0 <_malloc_r+0x100>
   12974:	49818e13          	addi	t3,gp,1176 # 14cb0 <__malloc_current_mallinfo>
   12978:	000e2503          	lw	a0,0(t3)
   1297c:	00b5053b          	addw	a0,a0,a1
   12980:	00ae2023          	sw	a0,0(t3)
   12984:	b51ff06f          	j	124d4 <_malloc_r+0x324>
   12988:	03431f13          	slli	t5,t1,0x34
   1298c:	b40f14e3          	bnez	t5,124d4 <_malloc_r+0x324>
   12990:	01083303          	ld	t1,16(a6)
   12994:	00b885b3          	add	a1,a7,a1
   12998:	0015e693          	ori	a3,a1,1
   1299c:	00d33423          	sd	a3,8(t1)
   129a0:	c35ff06f          	j	125d4 <_malloc_r+0x424>
   129a4:	2061b423          	sd	t1,520(gp) # 14a20 <__malloc_sbrk_base>
   129a8:	b45ff06f          	j	124ec <_malloc_r+0x33c>
   129ac:	00100793          	li	a5,1
   129b0:	00f33423          	sd	a5,8(t1)
   129b4:	e85ff06f          	j	12838 <_malloc_r+0x688>
   129b8:	15400613          	li	a2,340
   129bc:	08d66a63          	bltu	a2,a3,12a50 <_malloc_r+0x8a0>
   129c0:	00f35693          	srli	a3,t1,0xf
   129c4:	00169513          	slli	a0,a3,0x1
   129c8:	0f05051b          	addiw	a0,a0,240
   129cc:	00351513          	slli	a0,a0,0x3
   129d0:	0776861b          	addiw	a2,a3,119
   129d4:	cd9ff06f          	j	126ac <_malloc_r+0x4fc>
   129d8:	55400693          	li	a3,1364
   129dc:	08f6ea63          	bltu	a3,a5,12a70 <_malloc_r+0x8c0>
   129e0:	01275793          	srli	a5,a4,0x12
   129e4:	07d7889b          	addiw	a7,a5,125
   129e8:	0018951b          	slliw	a0,a7,0x1
   129ec:	07c78e1b          	addiw	t3,a5,124
   129f0:	00351513          	slli	a0,a0,0x3
   129f4:	8bdff06f          	j	122b0 <_malloc_r+0x100>
   129f8:	ff0e8e93          	addi	t4,t4,-16
   129fc:	01d606b3          	add	a3,a2,t4
   12a00:	00000513          	li	a0,0
   12a04:	00000593          	li	a1,0
   12a08:	b71ff06f          	j	12578 <_malloc_r+0x3c8>
   12a0c:	00813683          	ld	a3,8(sp)
   12a10:	00000593          	li	a1,0
   12a14:	00000513          	li	a0,0
   12a18:	b61ff06f          	j	12578 <_malloc_r+0x3c8>
   12a1c:	01078593          	addi	a1,a5,16
   12a20:	00040513          	mv	a0,s0
   12a24:	01c13c23          	sd	t3,24(sp)
   12a28:	01013823          	sd	a6,16(sp)
   12a2c:	00e13423          	sd	a4,8(sp)
   12a30:	c7cff0ef          	jal	11eac <_free_r>
   12a34:	01013803          	ld	a6,16(sp)
   12a38:	01813e03          	ld	t3,24(sp)
   12a3c:	00813703          	ld	a4,8(sp)
   12a40:	01083303          	ld	t1,16(a6)
   12a44:	000e2603          	lw	a2,0(t3)
   12a48:	00833683          	ld	a3,8(t1)
   12a4c:	b89ff06f          	j	125d4 <_malloc_r+0x424>
   12a50:	55400613          	li	a2,1364
   12a54:	02d66663          	bltu	a2,a3,12a80 <_malloc_r+0x8d0>
   12a58:	01235693          	srli	a3,t1,0x12
   12a5c:	00169513          	slli	a0,a3,0x1
   12a60:	0fa5051b          	addiw	a0,a0,250
   12a64:	00351513          	slli	a0,a0,0x3
   12a68:	07c6861b          	addiw	a2,a3,124
   12a6c:	c41ff06f          	j	126ac <_malloc_r+0x4fc>
   12a70:	7f000513          	li	a0,2032
   12a74:	07f00893          	li	a7,127
   12a78:	07e00e13          	li	t3,126
   12a7c:	835ff06f          	j	122b0 <_malloc_r+0x100>
   12a80:	7f000513          	li	a0,2032
   12a84:	07e00613          	li	a2,126
   12a88:	c25ff06f          	j	126ac <_malloc_r+0x4fc>
   12a8c:	00883783          	ld	a5,8(a6)
   12a90:	df1ff06f          	j	12880 <_malloc_r+0x6d0>

0000000000012a94 <__malloc_lock>:
   12a94:	00008067          	ret

0000000000012a98 <__malloc_unlock>:
   12a98:	00008067          	ret

0000000000012a9c <_fclose_r>:
   12a9c:	fe010113          	addi	sp,sp,-32
   12aa0:	00113c23          	sd	ra,24(sp)
   12aa4:	01213023          	sd	s2,0(sp)
   12aa8:	02058863          	beqz	a1,12ad8 <_fclose_r+0x3c>
   12aac:	00813823          	sd	s0,16(sp)
   12ab0:	00913423          	sd	s1,8(sp)
   12ab4:	00058413          	mv	s0,a1
   12ab8:	00050493          	mv	s1,a0
   12abc:	00050663          	beqz	a0,12ac8 <_fclose_r+0x2c>
   12ac0:	04853783          	ld	a5,72(a0)
   12ac4:	0c078c63          	beqz	a5,12b9c <_fclose_r+0x100>
   12ac8:	01041783          	lh	a5,16(s0)
   12acc:	02079263          	bnez	a5,12af0 <_fclose_r+0x54>
   12ad0:	01013403          	ld	s0,16(sp)
   12ad4:	00813483          	ld	s1,8(sp)
   12ad8:	01813083          	ld	ra,24(sp)
   12adc:	00000913          	li	s2,0
   12ae0:	00090513          	mv	a0,s2
   12ae4:	00013903          	ld	s2,0(sp)
   12ae8:	02010113          	addi	sp,sp,32
   12aec:	00008067          	ret
   12af0:	00040593          	mv	a1,s0
   12af4:	00048513          	mv	a0,s1
   12af8:	0b8000ef          	jal	12bb0 <__sflush_r>
   12afc:	05043783          	ld	a5,80(s0)
   12b00:	00050913          	mv	s2,a0
   12b04:	00078a63          	beqz	a5,12b18 <_fclose_r+0x7c>
   12b08:	03043583          	ld	a1,48(s0)
   12b0c:	00048513          	mv	a0,s1
   12b10:	000780e7          	jalr	a5
   12b14:	06054463          	bltz	a0,12b7c <_fclose_r+0xe0>
   12b18:	01045783          	lhu	a5,16(s0)
   12b1c:	0807f793          	andi	a5,a5,128
   12b20:	06079663          	bnez	a5,12b8c <_fclose_r+0xf0>
   12b24:	05843583          	ld	a1,88(s0)
   12b28:	00058c63          	beqz	a1,12b40 <_fclose_r+0xa4>
   12b2c:	07440793          	addi	a5,s0,116
   12b30:	00f58663          	beq	a1,a5,12b3c <_fclose_r+0xa0>
   12b34:	00048513          	mv	a0,s1
   12b38:	b74ff0ef          	jal	11eac <_free_r>
   12b3c:	04043c23          	sd	zero,88(s0)
   12b40:	07843583          	ld	a1,120(s0)
   12b44:	00058863          	beqz	a1,12b54 <_fclose_r+0xb8>
   12b48:	00048513          	mv	a0,s1
   12b4c:	b60ff0ef          	jal	11eac <_free_r>
   12b50:	06043c23          	sd	zero,120(s0)
   12b54:	aadfe0ef          	jal	11600 <__sfp_lock_acquire>
   12b58:	00041823          	sh	zero,16(s0)
   12b5c:	aa9fe0ef          	jal	11604 <__sfp_lock_release>
   12b60:	01813083          	ld	ra,24(sp)
   12b64:	01013403          	ld	s0,16(sp)
   12b68:	00813483          	ld	s1,8(sp)
   12b6c:	00090513          	mv	a0,s2
   12b70:	00013903          	ld	s2,0(sp)
   12b74:	02010113          	addi	sp,sp,32
   12b78:	00008067          	ret
   12b7c:	01045783          	lhu	a5,16(s0)
   12b80:	fff00913          	li	s2,-1
   12b84:	0807f793          	andi	a5,a5,128
   12b88:	f8078ee3          	beqz	a5,12b24 <_fclose_r+0x88>
   12b8c:	01843583          	ld	a1,24(s0)
   12b90:	00048513          	mv	a0,s1
   12b94:	b18ff0ef          	jal	11eac <_free_r>
   12b98:	f8dff06f          	j	12b24 <_fclose_r+0x88>
   12b9c:	a41fe0ef          	jal	115dc <__sinit>
   12ba0:	f29ff06f          	j	12ac8 <_fclose_r+0x2c>

0000000000012ba4 <fclose>:
   12ba4:	00050593          	mv	a1,a0
   12ba8:	2001b503          	ld	a0,512(gp) # 14a18 <_impure_ptr>
   12bac:	ef1ff06f          	j	12a9c <_fclose_r>

0000000000012bb0 <__sflush_r>:
   12bb0:	01059703          	lh	a4,16(a1)
   12bb4:	fd010113          	addi	sp,sp,-48
   12bb8:	02813023          	sd	s0,32(sp)
   12bbc:	01313423          	sd	s3,8(sp)
   12bc0:	02113423          	sd	ra,40(sp)
   12bc4:	00877793          	andi	a5,a4,8
   12bc8:	00058413          	mv	s0,a1
   12bcc:	00050993          	mv	s3,a0
   12bd0:	12079263          	bnez	a5,12cf4 <__sflush_r+0x144>
   12bd4:	000017b7          	lui	a5,0x1
   12bd8:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   12bdc:	0085a683          	lw	a3,8(a1)
   12be0:	00f767b3          	or	a5,a4,a5
   12be4:	00f59823          	sh	a5,16(a1)
   12be8:	18d05c63          	blez	a3,12d80 <__sflush_r+0x1d0>
   12bec:	04843803          	ld	a6,72(s0)
   12bf0:	0e080663          	beqz	a6,12cdc <__sflush_r+0x12c>
   12bf4:	00913c23          	sd	s1,24(sp)
   12bf8:	03371693          	slli	a3,a4,0x33
   12bfc:	0009a483          	lw	s1,0(s3)
   12c00:	0009a023          	sw	zero,0(s3)
   12c04:	1806ca63          	bltz	a3,12d98 <__sflush_r+0x1e8>
   12c08:	03043583          	ld	a1,48(s0)
   12c0c:	00000613          	li	a2,0
   12c10:	00100693          	li	a3,1
   12c14:	00098513          	mv	a0,s3
   12c18:	000800e7          	jalr	a6
   12c1c:	fff00793          	li	a5,-1
   12c20:	00050613          	mv	a2,a0
   12c24:	1af50c63          	beq	a0,a5,12ddc <__sflush_r+0x22c>
   12c28:	01041783          	lh	a5,16(s0)
   12c2c:	04843803          	ld	a6,72(s0)
   12c30:	0047f793          	andi	a5,a5,4
   12c34:	00078e63          	beqz	a5,12c50 <__sflush_r+0xa0>
   12c38:	00842703          	lw	a4,8(s0)
   12c3c:	05843783          	ld	a5,88(s0)
   12c40:	40e60633          	sub	a2,a2,a4
   12c44:	00078663          	beqz	a5,12c50 <__sflush_r+0xa0>
   12c48:	07042783          	lw	a5,112(s0)
   12c4c:	40f60633          	sub	a2,a2,a5
   12c50:	03043583          	ld	a1,48(s0)
   12c54:	00000693          	li	a3,0
   12c58:	00098513          	mv	a0,s3
   12c5c:	000800e7          	jalr	a6
   12c60:	fff00713          	li	a4,-1
   12c64:	01041783          	lh	a5,16(s0)
   12c68:	12e51c63          	bne	a0,a4,12da0 <__sflush_r+0x1f0>
   12c6c:	0009a683          	lw	a3,0(s3)
   12c70:	01d00713          	li	a4,29
   12c74:	18d76263          	bltu	a4,a3,12df8 <__sflush_r+0x248>
   12c78:	20400737          	lui	a4,0x20400
   12c7c:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203eb011>
   12c80:	00d75733          	srl	a4,a4,a3
   12c84:	00177713          	andi	a4,a4,1
   12c88:	16070863          	beqz	a4,12df8 <__sflush_r+0x248>
   12c8c:	01843683          	ld	a3,24(s0)
   12c90:	fffff737          	lui	a4,0xfffff
   12c94:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffea80f>
   12c98:	00e7f733          	and	a4,a5,a4
   12c9c:	00e41823          	sh	a4,16(s0)
   12ca0:	00042423          	sw	zero,8(s0)
   12ca4:	00d43023          	sd	a3,0(s0)
   12ca8:	03379713          	slli	a4,a5,0x33
   12cac:	00075663          	bgez	a4,12cb8 <__sflush_r+0x108>
   12cb0:	0009a783          	lw	a5,0(s3)
   12cb4:	10078863          	beqz	a5,12dc4 <__sflush_r+0x214>
   12cb8:	05843583          	ld	a1,88(s0)
   12cbc:	0099a023          	sw	s1,0(s3)
   12cc0:	10058a63          	beqz	a1,12dd4 <__sflush_r+0x224>
   12cc4:	07440793          	addi	a5,s0,116
   12cc8:	00f58663          	beq	a1,a5,12cd4 <__sflush_r+0x124>
   12ccc:	00098513          	mv	a0,s3
   12cd0:	9dcff0ef          	jal	11eac <_free_r>
   12cd4:	01813483          	ld	s1,24(sp)
   12cd8:	04043c23          	sd	zero,88(s0)
   12cdc:	02813083          	ld	ra,40(sp)
   12ce0:	02013403          	ld	s0,32(sp)
   12ce4:	00813983          	ld	s3,8(sp)
   12ce8:	00000513          	li	a0,0
   12cec:	03010113          	addi	sp,sp,48
   12cf0:	00008067          	ret
   12cf4:	01213823          	sd	s2,16(sp)
   12cf8:	0185b903          	ld	s2,24(a1)
   12cfc:	08090a63          	beqz	s2,12d90 <__sflush_r+0x1e0>
   12d00:	00913c23          	sd	s1,24(sp)
   12d04:	0005b483          	ld	s1,0(a1)
   12d08:	00377713          	andi	a4,a4,3
   12d0c:	0125b023          	sd	s2,0(a1)
   12d10:	412484bb          	subw	s1,s1,s2
   12d14:	00000793          	li	a5,0
   12d18:	00071463          	bnez	a4,12d20 <__sflush_r+0x170>
   12d1c:	0205a783          	lw	a5,32(a1)
   12d20:	00f42623          	sw	a5,12(s0)
   12d24:	00904863          	bgtz	s1,12d34 <__sflush_r+0x184>
   12d28:	0640006f          	j	12d8c <__sflush_r+0x1dc>
   12d2c:	00a90933          	add	s2,s2,a0
   12d30:	04905e63          	blez	s1,12d8c <__sflush_r+0x1dc>
   12d34:	04043783          	ld	a5,64(s0)
   12d38:	03043583          	ld	a1,48(s0)
   12d3c:	00048693          	mv	a3,s1
   12d40:	00090613          	mv	a2,s2
   12d44:	00098513          	mv	a0,s3
   12d48:	000780e7          	jalr	a5
   12d4c:	40a484bb          	subw	s1,s1,a0
   12d50:	fca04ee3          	bgtz	a0,12d2c <__sflush_r+0x17c>
   12d54:	01045783          	lhu	a5,16(s0)
   12d58:	01013903          	ld	s2,16(sp)
   12d5c:	0407e793          	ori	a5,a5,64
   12d60:	02813083          	ld	ra,40(sp)
   12d64:	00f41823          	sh	a5,16(s0)
   12d68:	02013403          	ld	s0,32(sp)
   12d6c:	01813483          	ld	s1,24(sp)
   12d70:	00813983          	ld	s3,8(sp)
   12d74:	fff00513          	li	a0,-1
   12d78:	03010113          	addi	sp,sp,48
   12d7c:	00008067          	ret
   12d80:	0705a683          	lw	a3,112(a1)
   12d84:	e6d044e3          	bgtz	a3,12bec <__sflush_r+0x3c>
   12d88:	f55ff06f          	j	12cdc <__sflush_r+0x12c>
   12d8c:	01813483          	ld	s1,24(sp)
   12d90:	01013903          	ld	s2,16(sp)
   12d94:	f49ff06f          	j	12cdc <__sflush_r+0x12c>
   12d98:	09043603          	ld	a2,144(s0)
   12d9c:	e95ff06f          	j	12c30 <__sflush_r+0x80>
   12da0:	01843683          	ld	a3,24(s0)
   12da4:	fffff737          	lui	a4,0xfffff
   12da8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffea80f>
   12dac:	00e7f733          	and	a4,a5,a4
   12db0:	00e41823          	sh	a4,16(s0)
   12db4:	00042423          	sw	zero,8(s0)
   12db8:	00d43023          	sd	a3,0(s0)
   12dbc:	03379713          	slli	a4,a5,0x33
   12dc0:	ee075ce3          	bgez	a4,12cb8 <__sflush_r+0x108>
   12dc4:	05843583          	ld	a1,88(s0)
   12dc8:	08a43823          	sd	a0,144(s0)
   12dcc:	0099a023          	sw	s1,0(s3)
   12dd0:	ee059ae3          	bnez	a1,12cc4 <__sflush_r+0x114>
   12dd4:	01813483          	ld	s1,24(sp)
   12dd8:	f05ff06f          	j	12cdc <__sflush_r+0x12c>
   12ddc:	0009a783          	lw	a5,0(s3)
   12de0:	e40784e3          	beqz	a5,12c28 <__sflush_r+0x78>
   12de4:	fe378713          	addi	a4,a5,-29
   12de8:	00070c63          	beqz	a4,12e00 <__sflush_r+0x250>
   12dec:	fea78793          	addi	a5,a5,-22
   12df0:	00078863          	beqz	a5,12e00 <__sflush_r+0x250>
   12df4:	01045783          	lhu	a5,16(s0)
   12df8:	0407e793          	ori	a5,a5,64
   12dfc:	f65ff06f          	j	12d60 <__sflush_r+0x1b0>
   12e00:	0099a023          	sw	s1,0(s3)
   12e04:	01813483          	ld	s1,24(sp)
   12e08:	ed5ff06f          	j	12cdc <__sflush_r+0x12c>

0000000000012e0c <_fflush_r>:
   12e0c:	00050793          	mv	a5,a0
   12e10:	00050663          	beqz	a0,12e1c <_fflush_r+0x10>
   12e14:	04853703          	ld	a4,72(a0)
   12e18:	00070e63          	beqz	a4,12e34 <_fflush_r+0x28>
   12e1c:	01059703          	lh	a4,16(a1)
   12e20:	00071663          	bnez	a4,12e2c <_fflush_r+0x20>
   12e24:	00000513          	li	a0,0
   12e28:	00008067          	ret
   12e2c:	00078513          	mv	a0,a5
   12e30:	d81ff06f          	j	12bb0 <__sflush_r>
   12e34:	fe010113          	addi	sp,sp,-32
   12e38:	00b13423          	sd	a1,8(sp)
   12e3c:	00113c23          	sd	ra,24(sp)
   12e40:	00a13023          	sd	a0,0(sp)
   12e44:	f98fe0ef          	jal	115dc <__sinit>
   12e48:	00813583          	ld	a1,8(sp)
   12e4c:	00013783          	ld	a5,0(sp)
   12e50:	01059703          	lh	a4,16(a1)
   12e54:	00070a63          	beqz	a4,12e68 <_fflush_r+0x5c>
   12e58:	01813083          	ld	ra,24(sp)
   12e5c:	00078513          	mv	a0,a5
   12e60:	02010113          	addi	sp,sp,32
   12e64:	d4dff06f          	j	12bb0 <__sflush_r>
   12e68:	01813083          	ld	ra,24(sp)
   12e6c:	00000513          	li	a0,0
   12e70:	02010113          	addi	sp,sp,32
   12e74:	00008067          	ret

0000000000012e78 <fflush>:
   12e78:	06050063          	beqz	a0,12ed8 <fflush+0x60>
   12e7c:	00050593          	mv	a1,a0
   12e80:	2001b503          	ld	a0,512(gp) # 14a18 <_impure_ptr>
   12e84:	00050663          	beqz	a0,12e90 <fflush+0x18>
   12e88:	04853783          	ld	a5,72(a0)
   12e8c:	00078c63          	beqz	a5,12ea4 <fflush+0x2c>
   12e90:	01059783          	lh	a5,16(a1)
   12e94:	00079663          	bnez	a5,12ea0 <fflush+0x28>
   12e98:	00000513          	li	a0,0
   12e9c:	00008067          	ret
   12ea0:	d11ff06f          	j	12bb0 <__sflush_r>
   12ea4:	fe010113          	addi	sp,sp,-32
   12ea8:	00b13423          	sd	a1,8(sp)
   12eac:	00a13023          	sd	a0,0(sp)
   12eb0:	00113c23          	sd	ra,24(sp)
   12eb4:	f28fe0ef          	jal	115dc <__sinit>
   12eb8:	00813583          	ld	a1,8(sp)
   12ebc:	00013503          	ld	a0,0(sp)
   12ec0:	01059783          	lh	a5,16(a1)
   12ec4:	02079663          	bnez	a5,12ef0 <fflush+0x78>
   12ec8:	01813083          	ld	ra,24(sp)
   12ecc:	00000513          	li	a0,0
   12ed0:	02010113          	addi	sp,sp,32
   12ed4:	00008067          	ret
   12ed8:	000135b7          	lui	a1,0x13
   12edc:	00014537          	lui	a0,0x14
   12ee0:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   12ee4:	e0c58593          	addi	a1,a1,-500 # 12e0c <_fflush_r>
   12ee8:	0a850513          	addi	a0,a0,168 # 140a8 <_impure_data>
   12eec:	f44fe06f          	j	11630 <_fwalk_sglue>
   12ef0:	01813083          	ld	ra,24(sp)
   12ef4:	02010113          	addi	sp,sp,32
   12ef8:	cb9ff06f          	j	12bb0 <__sflush_r>

0000000000012efc <_sbrk_r>:
   12efc:	fe010113          	addi	sp,sp,-32
   12f00:	00813823          	sd	s0,16(sp)
   12f04:	00913423          	sd	s1,8(sp)
   12f08:	00050493          	mv	s1,a0
   12f0c:	00058513          	mv	a0,a1
   12f10:	00113c23          	sd	ra,24(sp)
   12f14:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   12f18:	228000ef          	jal	13140 <_sbrk>
   12f1c:	fff00793          	li	a5,-1
   12f20:	00f50c63          	beq	a0,a5,12f38 <_sbrk_r+0x3c>
   12f24:	01813083          	ld	ra,24(sp)
   12f28:	01013403          	ld	s0,16(sp)
   12f2c:	00813483          	ld	s1,8(sp)
   12f30:	02010113          	addi	sp,sp,32
   12f34:	00008067          	ret
   12f38:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   12f3c:	fe0784e3          	beqz	a5,12f24 <_sbrk_r+0x28>
   12f40:	01813083          	ld	ra,24(sp)
   12f44:	01013403          	ld	s0,16(sp)
   12f48:	00f4a023          	sw	a5,0(s1)
   12f4c:	00813483          	ld	s1,8(sp)
   12f50:	02010113          	addi	sp,sp,32
   12f54:	00008067          	ret

0000000000012f58 <__libc_fini_array>:
   12f58:	fe010113          	addi	sp,sp,-32
   12f5c:	00813823          	sd	s0,16(sp)
   12f60:	000147b7          	lui	a5,0x14
   12f64:	00014437          	lui	s0,0x14
   12f68:	01878793          	addi	a5,a5,24 # 14018 <result_double>
   12f6c:	01040413          	addi	s0,s0,16 # 14010 <__do_global_dtors_aux_fini_array_entry>
   12f70:	408787b3          	sub	a5,a5,s0
   12f74:	00913423          	sd	s1,8(sp)
   12f78:	00113c23          	sd	ra,24(sp)
   12f7c:	4037d493          	srai	s1,a5,0x3
   12f80:	02048063          	beqz	s1,12fa0 <__libc_fini_array+0x48>
   12f84:	ff840413          	addi	s0,s0,-8
   12f88:	00f40433          	add	s0,s0,a5
   12f8c:	00043783          	ld	a5,0(s0)
   12f90:	fff48493          	addi	s1,s1,-1
   12f94:	ff840413          	addi	s0,s0,-8
   12f98:	000780e7          	jalr	a5
   12f9c:	fe0498e3          	bnez	s1,12f8c <__libc_fini_array+0x34>
   12fa0:	01813083          	ld	ra,24(sp)
   12fa4:	01013403          	ld	s0,16(sp)
   12fa8:	00813483          	ld	s1,8(sp)
   12fac:	02010113          	addi	sp,sp,32
   12fb0:	00008067          	ret

0000000000012fb4 <__register_exitproc>:
   12fb4:	2281b783          	ld	a5,552(gp) # 14a40 <__atexit>
   12fb8:	04078e63          	beqz	a5,13014 <__register_exitproc+0x60>
   12fbc:	0087a703          	lw	a4,8(a5)
   12fc0:	01f00813          	li	a6,31
   12fc4:	08e84263          	blt	a6,a4,13048 <__register_exitproc+0x94>
   12fc8:	02050863          	beqz	a0,12ff8 <__register_exitproc+0x44>
   12fcc:	00371813          	slli	a6,a4,0x3
   12fd0:	01078833          	add	a6,a5,a6
   12fd4:	10c83823          	sd	a2,272(a6)
   12fd8:	3107a883          	lw	a7,784(a5)
   12fdc:	00100613          	li	a2,1
   12fe0:	00e6163b          	sllw	a2,a2,a4
   12fe4:	00c8e8b3          	or	a7,a7,a2
   12fe8:	3117a823          	sw	a7,784(a5)
   12fec:	20d83823          	sd	a3,528(a6)
   12ff0:	00200693          	li	a3,2
   12ff4:	02d50663          	beq	a0,a3,13020 <__register_exitproc+0x6c>
   12ff8:	0017069b          	addiw	a3,a4,1
   12ffc:	00371713          	slli	a4,a4,0x3
   13000:	00d7a423          	sw	a3,8(a5)
   13004:	00e787b3          	add	a5,a5,a4
   13008:	00b7b823          	sd	a1,16(a5)
   1300c:	00000513          	li	a0,0
   13010:	00008067          	ret
   13014:	4c018793          	addi	a5,gp,1216 # 14cd8 <__atexit0>
   13018:	22f1b423          	sd	a5,552(gp) # 14a40 <__atexit>
   1301c:	fa1ff06f          	j	12fbc <__register_exitproc+0x8>
   13020:	3147a683          	lw	a3,788(a5)
   13024:	00000513          	li	a0,0
   13028:	00d66633          	or	a2,a2,a3
   1302c:	0017069b          	addiw	a3,a4,1
   13030:	00371713          	slli	a4,a4,0x3
   13034:	30c7aa23          	sw	a2,788(a5)
   13038:	00d7a423          	sw	a3,8(a5)
   1303c:	00e787b3          	add	a5,a5,a4
   13040:	00b7b823          	sd	a1,16(a5)
   13044:	00008067          	ret
   13048:	fff00513          	li	a0,-1
   1304c:	00008067          	ret

0000000000013050 <_close>:
   13050:	03900893          	li	a7,57
   13054:	00000073          	ecall
   13058:	00054663          	bltz	a0,13064 <_close+0x14>
   1305c:	0005051b          	sext.w	a0,a0
   13060:	00008067          	ret
   13064:	fe010113          	addi	sp,sp,-32
   13068:	00113c23          	sd	ra,24(sp)
   1306c:	00a13423          	sd	a0,8(sp)
   13070:	188000ef          	jal	131f8 <__errno>
   13074:	00813783          	ld	a5,8(sp)
   13078:	01813083          	ld	ra,24(sp)
   1307c:	40f007bb          	negw	a5,a5
   13080:	00f52023          	sw	a5,0(a0)
   13084:	fff00513          	li	a0,-1
   13088:	02010113          	addi	sp,sp,32
   1308c:	00008067          	ret

0000000000013090 <_exit>:
   13090:	05d00893          	li	a7,93
   13094:	00000073          	ecall
   13098:	00054463          	bltz	a0,130a0 <_exit+0x10>
   1309c:	0000006f          	j	1309c <_exit+0xc>
   130a0:	fe010113          	addi	sp,sp,-32
   130a4:	00113c23          	sd	ra,24(sp)
   130a8:	00a13423          	sd	a0,8(sp)
   130ac:	14c000ef          	jal	131f8 <__errno>
   130b0:	00813783          	ld	a5,8(sp)
   130b4:	40f007bb          	negw	a5,a5
   130b8:	00f52023          	sw	a5,0(a0)
   130bc:	0000006f          	j	130bc <_exit+0x2c>

00000000000130c0 <_lseek>:
   130c0:	03e00893          	li	a7,62
   130c4:	00000073          	ecall
   130c8:	00054463          	bltz	a0,130d0 <_lseek+0x10>
   130cc:	00008067          	ret
   130d0:	fe010113          	addi	sp,sp,-32
   130d4:	00113c23          	sd	ra,24(sp)
   130d8:	00a13423          	sd	a0,8(sp)
   130dc:	11c000ef          	jal	131f8 <__errno>
   130e0:	00813783          	ld	a5,8(sp)
   130e4:	01813083          	ld	ra,24(sp)
   130e8:	40f007bb          	negw	a5,a5
   130ec:	00f52023          	sw	a5,0(a0)
   130f0:	fff00793          	li	a5,-1
   130f4:	00078513          	mv	a0,a5
   130f8:	02010113          	addi	sp,sp,32
   130fc:	00008067          	ret

0000000000013100 <_read>:
   13100:	03f00893          	li	a7,63
   13104:	00000073          	ecall
   13108:	00054463          	bltz	a0,13110 <_read+0x10>
   1310c:	00008067          	ret
   13110:	fe010113          	addi	sp,sp,-32
   13114:	00113c23          	sd	ra,24(sp)
   13118:	00a13423          	sd	a0,8(sp)
   1311c:	0dc000ef          	jal	131f8 <__errno>
   13120:	00813783          	ld	a5,8(sp)
   13124:	01813083          	ld	ra,24(sp)
   13128:	40f007bb          	negw	a5,a5
   1312c:	00f52023          	sw	a5,0(a0)
   13130:	fff00793          	li	a5,-1
   13134:	00078513          	mv	a0,a5
   13138:	02010113          	addi	sp,sp,32
   1313c:	00008067          	ret

0000000000013140 <_sbrk>:
   13140:	2481b783          	ld	a5,584(gp) # 14a60 <heap_end.0>
   13144:	ff010113          	addi	sp,sp,-16
   13148:	00113423          	sd	ra,8(sp)
   1314c:	00050713          	mv	a4,a0
   13150:	02079063          	bnez	a5,13170 <_sbrk+0x30>
   13154:	0d600893          	li	a7,214
   13158:	00000513          	li	a0,0
   1315c:	00000073          	ecall
   13160:	fff00793          	li	a5,-1
   13164:	02f50c63          	beq	a0,a5,1319c <_sbrk+0x5c>
   13168:	00050793          	mv	a5,a0
   1316c:	24a1b423          	sd	a0,584(gp) # 14a60 <heap_end.0>
   13170:	00f70533          	add	a0,a4,a5
   13174:	0d600893          	li	a7,214
   13178:	00000073          	ecall
   1317c:	2481b783          	ld	a5,584(gp) # 14a60 <heap_end.0>
   13180:	00f70733          	add	a4,a4,a5
   13184:	00e51c63          	bne	a0,a4,1319c <_sbrk+0x5c>
   13188:	00813083          	ld	ra,8(sp)
   1318c:	24a1b423          	sd	a0,584(gp) # 14a60 <heap_end.0>
   13190:	00078513          	mv	a0,a5
   13194:	01010113          	addi	sp,sp,16
   13198:	00008067          	ret
   1319c:	05c000ef          	jal	131f8 <__errno>
   131a0:	00813083          	ld	ra,8(sp)
   131a4:	00c00793          	li	a5,12
   131a8:	00f52023          	sw	a5,0(a0)
   131ac:	fff00513          	li	a0,-1
   131b0:	01010113          	addi	sp,sp,16
   131b4:	00008067          	ret

00000000000131b8 <_write>:
   131b8:	04000893          	li	a7,64
   131bc:	00000073          	ecall
   131c0:	00054463          	bltz	a0,131c8 <_write+0x10>
   131c4:	00008067          	ret
   131c8:	fe010113          	addi	sp,sp,-32
   131cc:	00113c23          	sd	ra,24(sp)
   131d0:	00a13423          	sd	a0,8(sp)
   131d4:	024000ef          	jal	131f8 <__errno>
   131d8:	00813783          	ld	a5,8(sp)
   131dc:	01813083          	ld	ra,24(sp)
   131e0:	40f007bb          	negw	a5,a5
   131e4:	00f52023          	sw	a5,0(a0)
   131e8:	fff00793          	li	a5,-1
   131ec:	00078513          	mv	a0,a5
   131f0:	02010113          	addi	sp,sp,32
   131f4:	00008067          	ret

00000000000131f8 <__errno>:
   131f8:	2001b503          	ld	a0,512(gp) # 14a18 <_impure_ptr>
   131fc:	00008067          	ret

Disassembly of section .rodata:

0000000000013200 <__clz_tab-0x8>:
   13200:	999a                	.insn	2, 0x999a
   13202:	9999                	.insn	2, 0x9999
   13204:	9999                	.insn	2, 0x9999
   13206:	3ff1                	.insn	2, 0x3ff1

0000000000013208 <__clz_tab>:
   13208:	0100                	.insn	2, 0x0100
   1320a:	0202                	.insn	2, 0x0202
   1320c:	03030303          	lb	t1,48(t1)
   13210:	0404                	.insn	2, 0x0404
   13212:	0404                	.insn	2, 0x0404
   13214:	0404                	.insn	2, 0x0404
   13216:	0404                	.insn	2, 0x0404
   13218:	0505                	.insn	2, 0x0505
   1321a:	0505                	.insn	2, 0x0505
   1321c:	0505                	.insn	2, 0x0505
   1321e:	0505                	.insn	2, 0x0505
   13220:	0505                	.insn	2, 0x0505
   13222:	0505                	.insn	2, 0x0505
   13224:	0505                	.insn	2, 0x0505
   13226:	0505                	.insn	2, 0x0505
   13228:	0606                	.insn	2, 0x0606
   1322a:	0606                	.insn	2, 0x0606
   1322c:	0606                	.insn	2, 0x0606
   1322e:	0606                	.insn	2, 0x0606
   13230:	0606                	.insn	2, 0x0606
   13232:	0606                	.insn	2, 0x0606
   13234:	0606                	.insn	2, 0x0606
   13236:	0606                	.insn	2, 0x0606
   13238:	0606                	.insn	2, 0x0606
   1323a:	0606                	.insn	2, 0x0606
   1323c:	0606                	.insn	2, 0x0606
   1323e:	0606                	.insn	2, 0x0606
   13240:	0606                	.insn	2, 0x0606
   13242:	0606                	.insn	2, 0x0606
   13244:	0606                	.insn	2, 0x0606
   13246:	0606                	.insn	2, 0x0606
   13248:	07070707          	.insn	4, 0x07070707
   1324c:	07070707          	.insn	4, 0x07070707
   13250:	07070707          	.insn	4, 0x07070707
   13254:	07070707          	.insn	4, 0x07070707
   13258:	07070707          	.insn	4, 0x07070707
   1325c:	07070707          	.insn	4, 0x07070707
   13260:	07070707          	.insn	4, 0x07070707
   13264:	07070707          	.insn	4, 0x07070707
   13268:	07070707          	.insn	4, 0x07070707
   1326c:	07070707          	.insn	4, 0x07070707
   13270:	07070707          	.insn	4, 0x07070707
   13274:	07070707          	.insn	4, 0x07070707
   13278:	07070707          	.insn	4, 0x07070707
   1327c:	07070707          	.insn	4, 0x07070707
   13280:	07070707          	.insn	4, 0x07070707
   13284:	07070707          	.insn	4, 0x07070707
   13288:	0808                	.insn	2, 0x0808
   1328a:	0808                	.insn	2, 0x0808
   1328c:	0808                	.insn	2, 0x0808
   1328e:	0808                	.insn	2, 0x0808
   13290:	0808                	.insn	2, 0x0808
   13292:	0808                	.insn	2, 0x0808
   13294:	0808                	.insn	2, 0x0808
   13296:	0808                	.insn	2, 0x0808
   13298:	0808                	.insn	2, 0x0808
   1329a:	0808                	.insn	2, 0x0808
   1329c:	0808                	.insn	2, 0x0808
   1329e:	0808                	.insn	2, 0x0808
   132a0:	0808                	.insn	2, 0x0808
   132a2:	0808                	.insn	2, 0x0808
   132a4:	0808                	.insn	2, 0x0808
   132a6:	0808                	.insn	2, 0x0808
   132a8:	0808                	.insn	2, 0x0808
   132aa:	0808                	.insn	2, 0x0808
   132ac:	0808                	.insn	2, 0x0808
   132ae:	0808                	.insn	2, 0x0808
   132b0:	0808                	.insn	2, 0x0808
   132b2:	0808                	.insn	2, 0x0808
   132b4:	0808                	.insn	2, 0x0808
   132b6:	0808                	.insn	2, 0x0808
   132b8:	0808                	.insn	2, 0x0808
   132ba:	0808                	.insn	2, 0x0808
   132bc:	0808                	.insn	2, 0x0808
   132be:	0808                	.insn	2, 0x0808
   132c0:	0808                	.insn	2, 0x0808
   132c2:	0808                	.insn	2, 0x0808
   132c4:	0808                	.insn	2, 0x0808
   132c6:	0808                	.insn	2, 0x0808
   132c8:	0808                	.insn	2, 0x0808
   132ca:	0808                	.insn	2, 0x0808
   132cc:	0808                	.insn	2, 0x0808
   132ce:	0808                	.insn	2, 0x0808
   132d0:	0808                	.insn	2, 0x0808
   132d2:	0808                	.insn	2, 0x0808
   132d4:	0808                	.insn	2, 0x0808
   132d6:	0808                	.insn	2, 0x0808
   132d8:	0808                	.insn	2, 0x0808
   132da:	0808                	.insn	2, 0x0808
   132dc:	0808                	.insn	2, 0x0808
   132de:	0808                	.insn	2, 0x0808
   132e0:	0808                	.insn	2, 0x0808
   132e2:	0808                	.insn	2, 0x0808
   132e4:	0808                	.insn	2, 0x0808
   132e6:	0808                	.insn	2, 0x0808
   132e8:	0808                	.insn	2, 0x0808
   132ea:	0808                	.insn	2, 0x0808
   132ec:	0808                	.insn	2, 0x0808
   132ee:	0808                	.insn	2, 0x0808
   132f0:	0808                	.insn	2, 0x0808
   132f2:	0808                	.insn	2, 0x0808
   132f4:	0808                	.insn	2, 0x0808
   132f6:	0808                	.insn	2, 0x0808
   132f8:	0808                	.insn	2, 0x0808
   132fa:	0808                	.insn	2, 0x0808
   132fc:	0808                	.insn	2, 0x0808
   132fe:	0808                	.insn	2, 0x0808
   13300:	0808                	.insn	2, 0x0808
   13302:	0808                	.insn	2, 0x0808
   13304:	0808                	.insn	2, 0x0808
   13306:	0808                	.insn	2, 0x0808

Disassembly of section .eh_frame:

0000000000013308 <__EH_FRAME_BEGIN__>:
   13308:	0000                	.insn	2, 0x0000
	...

Disassembly of section .init_array:

0000000000014000 <__init_array_start>:
   14000:	014c                	.insn	2, 0x014c
   14002:	0001                	.insn	2, 0x0001
   14004:	0000                	.insn	2, 0x0000
	...

0000000000014008 <__frame_dummy_init_array_entry>:
   14008:	01fc                	.insn	2, 0x01fc
   1400a:	0001                	.insn	2, 0x0001
   1400c:	0000                	.insn	2, 0x0000
	...

Disassembly of section .fini_array:

0000000000014010 <__do_global_dtors_aux_fini_array_entry>:
   14010:	01b8                	.insn	2, 0x01b8
   14012:	0001                	.insn	2, 0x0001
   14014:	0000                	.insn	2, 0x0000
	...

Disassembly of section .data:

0000000000014018 <result_double>:
   14018:	999a                	.insn	2, 0x999a
   1401a:	9999                	.insn	2, 0x9999
   1401c:	9999                	.insn	2, 0x9999
   1401e:	3ff1                	.insn	2, 0x3ff1
   14020:	999a                	.insn	2, 0x999a
   14022:	9999                	.insn	2, 0x9999
   14024:	9999                	.insn	2, 0x9999
   14026:	4001                	.insn	2, 0x4001
   14028:	6666                	.insn	2, 0x6666
   1402a:	6666                	.insn	2, 0x6666
   1402c:	6666                	.insn	2, 0x6666
   1402e:	400a                	.insn	2, 0x400a
   14030:	999a                	.insn	2, 0x999a
   14032:	9999                	.insn	2, 0x9999
   14034:	9999                	.insn	2, 0x9999
   14036:	4011                	.insn	2, 0x4011
   14038:	0000                	.insn	2, 0x0000
   1403a:	0000                	.insn	2, 0x0000
   1403c:	0000                	.insn	2, 0x0000
   1403e:	4016                	.insn	2, 0x4016
   14040:	6666                	.insn	2, 0x6666
   14042:	6666                	.insn	2, 0x6666
   14044:	6666                	.insn	2, 0x6666
   14046:	401a                	.insn	2, 0x401a
   14048:	cccd                	.insn	2, 0xcccd
   1404a:	cccc                	.insn	2, 0xcccc
   1404c:	cccc                	.insn	2, 0xcccc
   1404e:	401e                	.insn	2, 0x401e
   14050:	999a                	.insn	2, 0x999a
   14052:	9999                	.insn	2, 0x9999
   14054:	9999                	.insn	2, 0x9999
   14056:	4021                	.insn	2, 0x4021
   14058:	cccd                	.insn	2, 0xcccd
   1405a:	cccc                	.insn	2, 0xcccc
   1405c:	cccc                	.insn	2, 0xcccc
   1405e:	00004023          	.insn	4, 0x4023
   14062:	0000                	.insn	2, 0x0000
   14064:	0000                	.insn	2, 0x0000
   14066:	4026                	.insn	2, 0x4026

0000000000014068 <result_float>:
   14068:	cccd                	.insn	2, 0xcccd
   1406a:	3f8c                	.insn	2, 0x3f8c
   1406c:	cccd                	.insn	2, 0xcccd
   1406e:	400c                	.insn	2, 0x400c
   14070:	40533333          	.insn	4, 0x40533333
   14074:	cccd                	.insn	2, 0xcccd
   14076:	408c                	.insn	2, 0x408c
   14078:	0000                	.insn	2, 0x0000
   1407a:	40b0                	.insn	2, 0x40b0
   1407c:	40d33333          	.insn	4, 0x40d33333
   14080:	6666                	.insn	2, 0x6666
   14082:	40f6                	.insn	2, 0x40f6
   14084:	cccd                	.insn	2, 0xcccd
   14086:	410c                	.insn	2, 0x410c
   14088:	6666                	.insn	2, 0x6666
   1408a:	411e                	.insn	2, 0x411e
   1408c:	0000                	.insn	2, 0x0000
   1408e:	4130                	.insn	2, 0x4130

0000000000014090 <__sglue>:
	...
   14098:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   1409c:	0000                	.insn	2, 0x0000
   1409e:	0000                	.insn	2, 0x0000
   140a0:	4aa0                	.insn	2, 0x4aa0
   140a2:	0001                	.insn	2, 0x0001
   140a4:	0000                	.insn	2, 0x0000
	...

00000000000140a8 <_impure_data>:
	...
   140b0:	4aa0                	.insn	2, 0x4aa0
   140b2:	0001                	.insn	2, 0x0001
   140b4:	0000                	.insn	2, 0x0000
   140b6:	0000                	.insn	2, 0x0000
   140b8:	4b50                	.insn	2, 0x4b50
   140ba:	0001                	.insn	2, 0x0001
   140bc:	0000                	.insn	2, 0x0000
   140be:	0000                	.insn	2, 0x0000
   140c0:	4c00                	.insn	2, 0x4c00
   140c2:	0001                	.insn	2, 0x0001
	...
   14178:	0001                	.insn	2, 0x0001
   1417a:	0000                	.insn	2, 0x0000
   1417c:	0000                	.insn	2, 0x0000
   1417e:	0000                	.insn	2, 0x0000
   14180:	330e                	.insn	2, 0x330e
   14182:	abcd                	.insn	2, 0xabcd
   14184:	1234                	.insn	2, 0x1234
   14186:	e66d                	.insn	2, 0xe66d
   14188:	deec                	.insn	2, 0xdeec
   1418a:	0005                	.insn	2, 0x0005
   1418c:	0000000b          	.insn	4, 0x000b
	...

0000000000014200 <__malloc_av_>:
	...
   14210:	4200                	.insn	2, 0x4200
   14212:	0001                	.insn	2, 0x0001
   14214:	0000                	.insn	2, 0x0000
   14216:	0000                	.insn	2, 0x0000
   14218:	4200                	.insn	2, 0x4200
   1421a:	0001                	.insn	2, 0x0001
   1421c:	0000                	.insn	2, 0x0000
   1421e:	0000                	.insn	2, 0x0000
   14220:	4210                	.insn	2, 0x4210
   14222:	0001                	.insn	2, 0x0001
   14224:	0000                	.insn	2, 0x0000
   14226:	0000                	.insn	2, 0x0000
   14228:	4210                	.insn	2, 0x4210
   1422a:	0001                	.insn	2, 0x0001
   1422c:	0000                	.insn	2, 0x0000
   1422e:	0000                	.insn	2, 0x0000
   14230:	4220                	.insn	2, 0x4220
   14232:	0001                	.insn	2, 0x0001
   14234:	0000                	.insn	2, 0x0000
   14236:	0000                	.insn	2, 0x0000
   14238:	4220                	.insn	2, 0x4220
   1423a:	0001                	.insn	2, 0x0001
   1423c:	0000                	.insn	2, 0x0000
   1423e:	0000                	.insn	2, 0x0000
   14240:	4230                	.insn	2, 0x4230
   14242:	0001                	.insn	2, 0x0001
   14244:	0000                	.insn	2, 0x0000
   14246:	0000                	.insn	2, 0x0000
   14248:	4230                	.insn	2, 0x4230
   1424a:	0001                	.insn	2, 0x0001
   1424c:	0000                	.insn	2, 0x0000
   1424e:	0000                	.insn	2, 0x0000
   14250:	4240                	.insn	2, 0x4240
   14252:	0001                	.insn	2, 0x0001
   14254:	0000                	.insn	2, 0x0000
   14256:	0000                	.insn	2, 0x0000
   14258:	4240                	.insn	2, 0x4240
   1425a:	0001                	.insn	2, 0x0001
   1425c:	0000                	.insn	2, 0x0000
   1425e:	0000                	.insn	2, 0x0000
   14260:	4250                	.insn	2, 0x4250
   14262:	0001                	.insn	2, 0x0001
   14264:	0000                	.insn	2, 0x0000
   14266:	0000                	.insn	2, 0x0000
   14268:	4250                	.insn	2, 0x4250
   1426a:	0001                	.insn	2, 0x0001
   1426c:	0000                	.insn	2, 0x0000
   1426e:	0000                	.insn	2, 0x0000
   14270:	4260                	.insn	2, 0x4260
   14272:	0001                	.insn	2, 0x0001
   14274:	0000                	.insn	2, 0x0000
   14276:	0000                	.insn	2, 0x0000
   14278:	4260                	.insn	2, 0x4260
   1427a:	0001                	.insn	2, 0x0001
   1427c:	0000                	.insn	2, 0x0000
   1427e:	0000                	.insn	2, 0x0000
   14280:	4270                	.insn	2, 0x4270
   14282:	0001                	.insn	2, 0x0001
   14284:	0000                	.insn	2, 0x0000
   14286:	0000                	.insn	2, 0x0000
   14288:	4270                	.insn	2, 0x4270
   1428a:	0001                	.insn	2, 0x0001
   1428c:	0000                	.insn	2, 0x0000
   1428e:	0000                	.insn	2, 0x0000
   14290:	4280                	.insn	2, 0x4280
   14292:	0001                	.insn	2, 0x0001
   14294:	0000                	.insn	2, 0x0000
   14296:	0000                	.insn	2, 0x0000
   14298:	4280                	.insn	2, 0x4280
   1429a:	0001                	.insn	2, 0x0001
   1429c:	0000                	.insn	2, 0x0000
   1429e:	0000                	.insn	2, 0x0000
   142a0:	4290                	.insn	2, 0x4290
   142a2:	0001                	.insn	2, 0x0001
   142a4:	0000                	.insn	2, 0x0000
   142a6:	0000                	.insn	2, 0x0000
   142a8:	4290                	.insn	2, 0x4290
   142aa:	0001                	.insn	2, 0x0001
   142ac:	0000                	.insn	2, 0x0000
   142ae:	0000                	.insn	2, 0x0000
   142b0:	42a0                	.insn	2, 0x42a0
   142b2:	0001                	.insn	2, 0x0001
   142b4:	0000                	.insn	2, 0x0000
   142b6:	0000                	.insn	2, 0x0000
   142b8:	42a0                	.insn	2, 0x42a0
   142ba:	0001                	.insn	2, 0x0001
   142bc:	0000                	.insn	2, 0x0000
   142be:	0000                	.insn	2, 0x0000
   142c0:	42b0                	.insn	2, 0x42b0
   142c2:	0001                	.insn	2, 0x0001
   142c4:	0000                	.insn	2, 0x0000
   142c6:	0000                	.insn	2, 0x0000
   142c8:	42b0                	.insn	2, 0x42b0
   142ca:	0001                	.insn	2, 0x0001
   142cc:	0000                	.insn	2, 0x0000
   142ce:	0000                	.insn	2, 0x0000
   142d0:	42c0                	.insn	2, 0x42c0
   142d2:	0001                	.insn	2, 0x0001
   142d4:	0000                	.insn	2, 0x0000
   142d6:	0000                	.insn	2, 0x0000
   142d8:	42c0                	.insn	2, 0x42c0
   142da:	0001                	.insn	2, 0x0001
   142dc:	0000                	.insn	2, 0x0000
   142de:	0000                	.insn	2, 0x0000
   142e0:	42d0                	.insn	2, 0x42d0
   142e2:	0001                	.insn	2, 0x0001
   142e4:	0000                	.insn	2, 0x0000
   142e6:	0000                	.insn	2, 0x0000
   142e8:	42d0                	.insn	2, 0x42d0
   142ea:	0001                	.insn	2, 0x0001
   142ec:	0000                	.insn	2, 0x0000
   142ee:	0000                	.insn	2, 0x0000
   142f0:	42e0                	.insn	2, 0x42e0
   142f2:	0001                	.insn	2, 0x0001
   142f4:	0000                	.insn	2, 0x0000
   142f6:	0000                	.insn	2, 0x0000
   142f8:	42e0                	.insn	2, 0x42e0
   142fa:	0001                	.insn	2, 0x0001
   142fc:	0000                	.insn	2, 0x0000
   142fe:	0000                	.insn	2, 0x0000
   14300:	42f0                	.insn	2, 0x42f0
   14302:	0001                	.insn	2, 0x0001
   14304:	0000                	.insn	2, 0x0000
   14306:	0000                	.insn	2, 0x0000
   14308:	42f0                	.insn	2, 0x42f0
   1430a:	0001                	.insn	2, 0x0001
   1430c:	0000                	.insn	2, 0x0000
   1430e:	0000                	.insn	2, 0x0000
   14310:	4300                	.insn	2, 0x4300
   14312:	0001                	.insn	2, 0x0001
   14314:	0000                	.insn	2, 0x0000
   14316:	0000                	.insn	2, 0x0000
   14318:	4300                	.insn	2, 0x4300
   1431a:	0001                	.insn	2, 0x0001
   1431c:	0000                	.insn	2, 0x0000
   1431e:	0000                	.insn	2, 0x0000
   14320:	4310                	.insn	2, 0x4310
   14322:	0001                	.insn	2, 0x0001
   14324:	0000                	.insn	2, 0x0000
   14326:	0000                	.insn	2, 0x0000
   14328:	4310                	.insn	2, 0x4310
   1432a:	0001                	.insn	2, 0x0001
   1432c:	0000                	.insn	2, 0x0000
   1432e:	0000                	.insn	2, 0x0000
   14330:	4320                	.insn	2, 0x4320
   14332:	0001                	.insn	2, 0x0001
   14334:	0000                	.insn	2, 0x0000
   14336:	0000                	.insn	2, 0x0000
   14338:	4320                	.insn	2, 0x4320
   1433a:	0001                	.insn	2, 0x0001
   1433c:	0000                	.insn	2, 0x0000
   1433e:	0000                	.insn	2, 0x0000
   14340:	4330                	.insn	2, 0x4330
   14342:	0001                	.insn	2, 0x0001
   14344:	0000                	.insn	2, 0x0000
   14346:	0000                	.insn	2, 0x0000
   14348:	4330                	.insn	2, 0x4330
   1434a:	0001                	.insn	2, 0x0001
   1434c:	0000                	.insn	2, 0x0000
   1434e:	0000                	.insn	2, 0x0000
   14350:	4340                	.insn	2, 0x4340
   14352:	0001                	.insn	2, 0x0001
   14354:	0000                	.insn	2, 0x0000
   14356:	0000                	.insn	2, 0x0000
   14358:	4340                	.insn	2, 0x4340
   1435a:	0001                	.insn	2, 0x0001
   1435c:	0000                	.insn	2, 0x0000
   1435e:	0000                	.insn	2, 0x0000
   14360:	4350                	.insn	2, 0x4350
   14362:	0001                	.insn	2, 0x0001
   14364:	0000                	.insn	2, 0x0000
   14366:	0000                	.insn	2, 0x0000
   14368:	4350                	.insn	2, 0x4350
   1436a:	0001                	.insn	2, 0x0001
   1436c:	0000                	.insn	2, 0x0000
   1436e:	0000                	.insn	2, 0x0000
   14370:	4360                	.insn	2, 0x4360
   14372:	0001                	.insn	2, 0x0001
   14374:	0000                	.insn	2, 0x0000
   14376:	0000                	.insn	2, 0x0000
   14378:	4360                	.insn	2, 0x4360
   1437a:	0001                	.insn	2, 0x0001
   1437c:	0000                	.insn	2, 0x0000
   1437e:	0000                	.insn	2, 0x0000
   14380:	4370                	.insn	2, 0x4370
   14382:	0001                	.insn	2, 0x0001
   14384:	0000                	.insn	2, 0x0000
   14386:	0000                	.insn	2, 0x0000
   14388:	4370                	.insn	2, 0x4370
   1438a:	0001                	.insn	2, 0x0001
   1438c:	0000                	.insn	2, 0x0000
   1438e:	0000                	.insn	2, 0x0000
   14390:	4380                	.insn	2, 0x4380
   14392:	0001                	.insn	2, 0x0001
   14394:	0000                	.insn	2, 0x0000
   14396:	0000                	.insn	2, 0x0000
   14398:	4380                	.insn	2, 0x4380
   1439a:	0001                	.insn	2, 0x0001
   1439c:	0000                	.insn	2, 0x0000
   1439e:	0000                	.insn	2, 0x0000
   143a0:	4390                	.insn	2, 0x4390
   143a2:	0001                	.insn	2, 0x0001
   143a4:	0000                	.insn	2, 0x0000
   143a6:	0000                	.insn	2, 0x0000
   143a8:	4390                	.insn	2, 0x4390
   143aa:	0001                	.insn	2, 0x0001
   143ac:	0000                	.insn	2, 0x0000
   143ae:	0000                	.insn	2, 0x0000
   143b0:	43a0                	.insn	2, 0x43a0
   143b2:	0001                	.insn	2, 0x0001
   143b4:	0000                	.insn	2, 0x0000
   143b6:	0000                	.insn	2, 0x0000
   143b8:	43a0                	.insn	2, 0x43a0
   143ba:	0001                	.insn	2, 0x0001
   143bc:	0000                	.insn	2, 0x0000
   143be:	0000                	.insn	2, 0x0000
   143c0:	43b0                	.insn	2, 0x43b0
   143c2:	0001                	.insn	2, 0x0001
   143c4:	0000                	.insn	2, 0x0000
   143c6:	0000                	.insn	2, 0x0000
   143c8:	43b0                	.insn	2, 0x43b0
   143ca:	0001                	.insn	2, 0x0001
   143cc:	0000                	.insn	2, 0x0000
   143ce:	0000                	.insn	2, 0x0000
   143d0:	43c0                	.insn	2, 0x43c0
   143d2:	0001                	.insn	2, 0x0001
   143d4:	0000                	.insn	2, 0x0000
   143d6:	0000                	.insn	2, 0x0000
   143d8:	43c0                	.insn	2, 0x43c0
   143da:	0001                	.insn	2, 0x0001
   143dc:	0000                	.insn	2, 0x0000
   143de:	0000                	.insn	2, 0x0000
   143e0:	43d0                	.insn	2, 0x43d0
   143e2:	0001                	.insn	2, 0x0001
   143e4:	0000                	.insn	2, 0x0000
   143e6:	0000                	.insn	2, 0x0000
   143e8:	43d0                	.insn	2, 0x43d0
   143ea:	0001                	.insn	2, 0x0001
   143ec:	0000                	.insn	2, 0x0000
   143ee:	0000                	.insn	2, 0x0000
   143f0:	43e0                	.insn	2, 0x43e0
   143f2:	0001                	.insn	2, 0x0001
   143f4:	0000                	.insn	2, 0x0000
   143f6:	0000                	.insn	2, 0x0000
   143f8:	43e0                	.insn	2, 0x43e0
   143fa:	0001                	.insn	2, 0x0001
   143fc:	0000                	.insn	2, 0x0000
   143fe:	0000                	.insn	2, 0x0000
   14400:	43f0                	.insn	2, 0x43f0
   14402:	0001                	.insn	2, 0x0001
   14404:	0000                	.insn	2, 0x0000
   14406:	0000                	.insn	2, 0x0000
   14408:	43f0                	.insn	2, 0x43f0
   1440a:	0001                	.insn	2, 0x0001
   1440c:	0000                	.insn	2, 0x0000
   1440e:	0000                	.insn	2, 0x0000
   14410:	4400                	.insn	2, 0x4400
   14412:	0001                	.insn	2, 0x0001
   14414:	0000                	.insn	2, 0x0000
   14416:	0000                	.insn	2, 0x0000
   14418:	4400                	.insn	2, 0x4400
   1441a:	0001                	.insn	2, 0x0001
   1441c:	0000                	.insn	2, 0x0000
   1441e:	0000                	.insn	2, 0x0000
   14420:	4410                	.insn	2, 0x4410
   14422:	0001                	.insn	2, 0x0001
   14424:	0000                	.insn	2, 0x0000
   14426:	0000                	.insn	2, 0x0000
   14428:	4410                	.insn	2, 0x4410
   1442a:	0001                	.insn	2, 0x0001
   1442c:	0000                	.insn	2, 0x0000
   1442e:	0000                	.insn	2, 0x0000
   14430:	4420                	.insn	2, 0x4420
   14432:	0001                	.insn	2, 0x0001
   14434:	0000                	.insn	2, 0x0000
   14436:	0000                	.insn	2, 0x0000
   14438:	4420                	.insn	2, 0x4420
   1443a:	0001                	.insn	2, 0x0001
   1443c:	0000                	.insn	2, 0x0000
   1443e:	0000                	.insn	2, 0x0000
   14440:	4430                	.insn	2, 0x4430
   14442:	0001                	.insn	2, 0x0001
   14444:	0000                	.insn	2, 0x0000
   14446:	0000                	.insn	2, 0x0000
   14448:	4430                	.insn	2, 0x4430
   1444a:	0001                	.insn	2, 0x0001
   1444c:	0000                	.insn	2, 0x0000
   1444e:	0000                	.insn	2, 0x0000
   14450:	4440                	.insn	2, 0x4440
   14452:	0001                	.insn	2, 0x0001
   14454:	0000                	.insn	2, 0x0000
   14456:	0000                	.insn	2, 0x0000
   14458:	4440                	.insn	2, 0x4440
   1445a:	0001                	.insn	2, 0x0001
   1445c:	0000                	.insn	2, 0x0000
   1445e:	0000                	.insn	2, 0x0000
   14460:	4450                	.insn	2, 0x4450
   14462:	0001                	.insn	2, 0x0001
   14464:	0000                	.insn	2, 0x0000
   14466:	0000                	.insn	2, 0x0000
   14468:	4450                	.insn	2, 0x4450
   1446a:	0001                	.insn	2, 0x0001
   1446c:	0000                	.insn	2, 0x0000
   1446e:	0000                	.insn	2, 0x0000
   14470:	4460                	.insn	2, 0x4460
   14472:	0001                	.insn	2, 0x0001
   14474:	0000                	.insn	2, 0x0000
   14476:	0000                	.insn	2, 0x0000
   14478:	4460                	.insn	2, 0x4460
   1447a:	0001                	.insn	2, 0x0001
   1447c:	0000                	.insn	2, 0x0000
   1447e:	0000                	.insn	2, 0x0000
   14480:	4470                	.insn	2, 0x4470
   14482:	0001                	.insn	2, 0x0001
   14484:	0000                	.insn	2, 0x0000
   14486:	0000                	.insn	2, 0x0000
   14488:	4470                	.insn	2, 0x4470
   1448a:	0001                	.insn	2, 0x0001
   1448c:	0000                	.insn	2, 0x0000
   1448e:	0000                	.insn	2, 0x0000
   14490:	4480                	.insn	2, 0x4480
   14492:	0001                	.insn	2, 0x0001
   14494:	0000                	.insn	2, 0x0000
   14496:	0000                	.insn	2, 0x0000
   14498:	4480                	.insn	2, 0x4480
   1449a:	0001                	.insn	2, 0x0001
   1449c:	0000                	.insn	2, 0x0000
   1449e:	0000                	.insn	2, 0x0000
   144a0:	4490                	.insn	2, 0x4490
   144a2:	0001                	.insn	2, 0x0001
   144a4:	0000                	.insn	2, 0x0000
   144a6:	0000                	.insn	2, 0x0000
   144a8:	4490                	.insn	2, 0x4490
   144aa:	0001                	.insn	2, 0x0001
   144ac:	0000                	.insn	2, 0x0000
   144ae:	0000                	.insn	2, 0x0000
   144b0:	44a0                	.insn	2, 0x44a0
   144b2:	0001                	.insn	2, 0x0001
   144b4:	0000                	.insn	2, 0x0000
   144b6:	0000                	.insn	2, 0x0000
   144b8:	44a0                	.insn	2, 0x44a0
   144ba:	0001                	.insn	2, 0x0001
   144bc:	0000                	.insn	2, 0x0000
   144be:	0000                	.insn	2, 0x0000
   144c0:	44b0                	.insn	2, 0x44b0
   144c2:	0001                	.insn	2, 0x0001
   144c4:	0000                	.insn	2, 0x0000
   144c6:	0000                	.insn	2, 0x0000
   144c8:	44b0                	.insn	2, 0x44b0
   144ca:	0001                	.insn	2, 0x0001
   144cc:	0000                	.insn	2, 0x0000
   144ce:	0000                	.insn	2, 0x0000
   144d0:	44c0                	.insn	2, 0x44c0
   144d2:	0001                	.insn	2, 0x0001
   144d4:	0000                	.insn	2, 0x0000
   144d6:	0000                	.insn	2, 0x0000
   144d8:	44c0                	.insn	2, 0x44c0
   144da:	0001                	.insn	2, 0x0001
   144dc:	0000                	.insn	2, 0x0000
   144de:	0000                	.insn	2, 0x0000
   144e0:	44d0                	.insn	2, 0x44d0
   144e2:	0001                	.insn	2, 0x0001
   144e4:	0000                	.insn	2, 0x0000
   144e6:	0000                	.insn	2, 0x0000
   144e8:	44d0                	.insn	2, 0x44d0
   144ea:	0001                	.insn	2, 0x0001
   144ec:	0000                	.insn	2, 0x0000
   144ee:	0000                	.insn	2, 0x0000
   144f0:	44e0                	.insn	2, 0x44e0
   144f2:	0001                	.insn	2, 0x0001
   144f4:	0000                	.insn	2, 0x0000
   144f6:	0000                	.insn	2, 0x0000
   144f8:	44e0                	.insn	2, 0x44e0
   144fa:	0001                	.insn	2, 0x0001
   144fc:	0000                	.insn	2, 0x0000
   144fe:	0000                	.insn	2, 0x0000
   14500:	44f0                	.insn	2, 0x44f0
   14502:	0001                	.insn	2, 0x0001
   14504:	0000                	.insn	2, 0x0000
   14506:	0000                	.insn	2, 0x0000
   14508:	44f0                	.insn	2, 0x44f0
   1450a:	0001                	.insn	2, 0x0001
   1450c:	0000                	.insn	2, 0x0000
   1450e:	0000                	.insn	2, 0x0000
   14510:	4500                	.insn	2, 0x4500
   14512:	0001                	.insn	2, 0x0001
   14514:	0000                	.insn	2, 0x0000
   14516:	0000                	.insn	2, 0x0000
   14518:	4500                	.insn	2, 0x4500
   1451a:	0001                	.insn	2, 0x0001
   1451c:	0000                	.insn	2, 0x0000
   1451e:	0000                	.insn	2, 0x0000
   14520:	4510                	.insn	2, 0x4510
   14522:	0001                	.insn	2, 0x0001
   14524:	0000                	.insn	2, 0x0000
   14526:	0000                	.insn	2, 0x0000
   14528:	4510                	.insn	2, 0x4510
   1452a:	0001                	.insn	2, 0x0001
   1452c:	0000                	.insn	2, 0x0000
   1452e:	0000                	.insn	2, 0x0000
   14530:	4520                	.insn	2, 0x4520
   14532:	0001                	.insn	2, 0x0001
   14534:	0000                	.insn	2, 0x0000
   14536:	0000                	.insn	2, 0x0000
   14538:	4520                	.insn	2, 0x4520
   1453a:	0001                	.insn	2, 0x0001
   1453c:	0000                	.insn	2, 0x0000
   1453e:	0000                	.insn	2, 0x0000
   14540:	4530                	.insn	2, 0x4530
   14542:	0001                	.insn	2, 0x0001
   14544:	0000                	.insn	2, 0x0000
   14546:	0000                	.insn	2, 0x0000
   14548:	4530                	.insn	2, 0x4530
   1454a:	0001                	.insn	2, 0x0001
   1454c:	0000                	.insn	2, 0x0000
   1454e:	0000                	.insn	2, 0x0000
   14550:	4540                	.insn	2, 0x4540
   14552:	0001                	.insn	2, 0x0001
   14554:	0000                	.insn	2, 0x0000
   14556:	0000                	.insn	2, 0x0000
   14558:	4540                	.insn	2, 0x4540
   1455a:	0001                	.insn	2, 0x0001
   1455c:	0000                	.insn	2, 0x0000
   1455e:	0000                	.insn	2, 0x0000
   14560:	4550                	.insn	2, 0x4550
   14562:	0001                	.insn	2, 0x0001
   14564:	0000                	.insn	2, 0x0000
   14566:	0000                	.insn	2, 0x0000
   14568:	4550                	.insn	2, 0x4550
   1456a:	0001                	.insn	2, 0x0001
   1456c:	0000                	.insn	2, 0x0000
   1456e:	0000                	.insn	2, 0x0000
   14570:	4560                	.insn	2, 0x4560
   14572:	0001                	.insn	2, 0x0001
   14574:	0000                	.insn	2, 0x0000
   14576:	0000                	.insn	2, 0x0000
   14578:	4560                	.insn	2, 0x4560
   1457a:	0001                	.insn	2, 0x0001
   1457c:	0000                	.insn	2, 0x0000
   1457e:	0000                	.insn	2, 0x0000
   14580:	4570                	.insn	2, 0x4570
   14582:	0001                	.insn	2, 0x0001
   14584:	0000                	.insn	2, 0x0000
   14586:	0000                	.insn	2, 0x0000
   14588:	4570                	.insn	2, 0x4570
   1458a:	0001                	.insn	2, 0x0001
   1458c:	0000                	.insn	2, 0x0000
   1458e:	0000                	.insn	2, 0x0000
   14590:	4580                	.insn	2, 0x4580
   14592:	0001                	.insn	2, 0x0001
   14594:	0000                	.insn	2, 0x0000
   14596:	0000                	.insn	2, 0x0000
   14598:	4580                	.insn	2, 0x4580
   1459a:	0001                	.insn	2, 0x0001
   1459c:	0000                	.insn	2, 0x0000
   1459e:	0000                	.insn	2, 0x0000
   145a0:	4590                	.insn	2, 0x4590
   145a2:	0001                	.insn	2, 0x0001
   145a4:	0000                	.insn	2, 0x0000
   145a6:	0000                	.insn	2, 0x0000
   145a8:	4590                	.insn	2, 0x4590
   145aa:	0001                	.insn	2, 0x0001
   145ac:	0000                	.insn	2, 0x0000
   145ae:	0000                	.insn	2, 0x0000
   145b0:	45a0                	.insn	2, 0x45a0
   145b2:	0001                	.insn	2, 0x0001
   145b4:	0000                	.insn	2, 0x0000
   145b6:	0000                	.insn	2, 0x0000
   145b8:	45a0                	.insn	2, 0x45a0
   145ba:	0001                	.insn	2, 0x0001
   145bc:	0000                	.insn	2, 0x0000
   145be:	0000                	.insn	2, 0x0000
   145c0:	45b0                	.insn	2, 0x45b0
   145c2:	0001                	.insn	2, 0x0001
   145c4:	0000                	.insn	2, 0x0000
   145c6:	0000                	.insn	2, 0x0000
   145c8:	45b0                	.insn	2, 0x45b0
   145ca:	0001                	.insn	2, 0x0001
   145cc:	0000                	.insn	2, 0x0000
   145ce:	0000                	.insn	2, 0x0000
   145d0:	45c0                	.insn	2, 0x45c0
   145d2:	0001                	.insn	2, 0x0001
   145d4:	0000                	.insn	2, 0x0000
   145d6:	0000                	.insn	2, 0x0000
   145d8:	45c0                	.insn	2, 0x45c0
   145da:	0001                	.insn	2, 0x0001
   145dc:	0000                	.insn	2, 0x0000
   145de:	0000                	.insn	2, 0x0000
   145e0:	45d0                	.insn	2, 0x45d0
   145e2:	0001                	.insn	2, 0x0001
   145e4:	0000                	.insn	2, 0x0000
   145e6:	0000                	.insn	2, 0x0000
   145e8:	45d0                	.insn	2, 0x45d0
   145ea:	0001                	.insn	2, 0x0001
   145ec:	0000                	.insn	2, 0x0000
   145ee:	0000                	.insn	2, 0x0000
   145f0:	45e0                	.insn	2, 0x45e0
   145f2:	0001                	.insn	2, 0x0001
   145f4:	0000                	.insn	2, 0x0000
   145f6:	0000                	.insn	2, 0x0000
   145f8:	45e0                	.insn	2, 0x45e0
   145fa:	0001                	.insn	2, 0x0001
   145fc:	0000                	.insn	2, 0x0000
   145fe:	0000                	.insn	2, 0x0000
   14600:	45f0                	.insn	2, 0x45f0
   14602:	0001                	.insn	2, 0x0001
   14604:	0000                	.insn	2, 0x0000
   14606:	0000                	.insn	2, 0x0000
   14608:	45f0                	.insn	2, 0x45f0
   1460a:	0001                	.insn	2, 0x0001
   1460c:	0000                	.insn	2, 0x0000
   1460e:	0000                	.insn	2, 0x0000
   14610:	4600                	.insn	2, 0x4600
   14612:	0001                	.insn	2, 0x0001
   14614:	0000                	.insn	2, 0x0000
   14616:	0000                	.insn	2, 0x0000
   14618:	4600                	.insn	2, 0x4600
   1461a:	0001                	.insn	2, 0x0001
   1461c:	0000                	.insn	2, 0x0000
   1461e:	0000                	.insn	2, 0x0000
   14620:	4610                	.insn	2, 0x4610
   14622:	0001                	.insn	2, 0x0001
   14624:	0000                	.insn	2, 0x0000
   14626:	0000                	.insn	2, 0x0000
   14628:	4610                	.insn	2, 0x4610
   1462a:	0001                	.insn	2, 0x0001
   1462c:	0000                	.insn	2, 0x0000
   1462e:	0000                	.insn	2, 0x0000
   14630:	4620                	.insn	2, 0x4620
   14632:	0001                	.insn	2, 0x0001
   14634:	0000                	.insn	2, 0x0000
   14636:	0000                	.insn	2, 0x0000
   14638:	4620                	.insn	2, 0x4620
   1463a:	0001                	.insn	2, 0x0001
   1463c:	0000                	.insn	2, 0x0000
   1463e:	0000                	.insn	2, 0x0000
   14640:	4630                	.insn	2, 0x4630
   14642:	0001                	.insn	2, 0x0001
   14644:	0000                	.insn	2, 0x0000
   14646:	0000                	.insn	2, 0x0000
   14648:	4630                	.insn	2, 0x4630
   1464a:	0001                	.insn	2, 0x0001
   1464c:	0000                	.insn	2, 0x0000
   1464e:	0000                	.insn	2, 0x0000
   14650:	4640                	.insn	2, 0x4640
   14652:	0001                	.insn	2, 0x0001
   14654:	0000                	.insn	2, 0x0000
   14656:	0000                	.insn	2, 0x0000
   14658:	4640                	.insn	2, 0x4640
   1465a:	0001                	.insn	2, 0x0001
   1465c:	0000                	.insn	2, 0x0000
   1465e:	0000                	.insn	2, 0x0000
   14660:	4650                	.insn	2, 0x4650
   14662:	0001                	.insn	2, 0x0001
   14664:	0000                	.insn	2, 0x0000
   14666:	0000                	.insn	2, 0x0000
   14668:	4650                	.insn	2, 0x4650
   1466a:	0001                	.insn	2, 0x0001
   1466c:	0000                	.insn	2, 0x0000
   1466e:	0000                	.insn	2, 0x0000
   14670:	4660                	.insn	2, 0x4660
   14672:	0001                	.insn	2, 0x0001
   14674:	0000                	.insn	2, 0x0000
   14676:	0000                	.insn	2, 0x0000
   14678:	4660                	.insn	2, 0x4660
   1467a:	0001                	.insn	2, 0x0001
   1467c:	0000                	.insn	2, 0x0000
   1467e:	0000                	.insn	2, 0x0000
   14680:	4670                	.insn	2, 0x4670
   14682:	0001                	.insn	2, 0x0001
   14684:	0000                	.insn	2, 0x0000
   14686:	0000                	.insn	2, 0x0000
   14688:	4670                	.insn	2, 0x4670
   1468a:	0001                	.insn	2, 0x0001
   1468c:	0000                	.insn	2, 0x0000
   1468e:	0000                	.insn	2, 0x0000
   14690:	4680                	.insn	2, 0x4680
   14692:	0001                	.insn	2, 0x0001
   14694:	0000                	.insn	2, 0x0000
   14696:	0000                	.insn	2, 0x0000
   14698:	4680                	.insn	2, 0x4680
   1469a:	0001                	.insn	2, 0x0001
   1469c:	0000                	.insn	2, 0x0000
   1469e:	0000                	.insn	2, 0x0000
   146a0:	4690                	.insn	2, 0x4690
   146a2:	0001                	.insn	2, 0x0001
   146a4:	0000                	.insn	2, 0x0000
   146a6:	0000                	.insn	2, 0x0000
   146a8:	4690                	.insn	2, 0x4690
   146aa:	0001                	.insn	2, 0x0001
   146ac:	0000                	.insn	2, 0x0000
   146ae:	0000                	.insn	2, 0x0000
   146b0:	46a0                	.insn	2, 0x46a0
   146b2:	0001                	.insn	2, 0x0001
   146b4:	0000                	.insn	2, 0x0000
   146b6:	0000                	.insn	2, 0x0000
   146b8:	46a0                	.insn	2, 0x46a0
   146ba:	0001                	.insn	2, 0x0001
   146bc:	0000                	.insn	2, 0x0000
   146be:	0000                	.insn	2, 0x0000
   146c0:	46b0                	.insn	2, 0x46b0
   146c2:	0001                	.insn	2, 0x0001
   146c4:	0000                	.insn	2, 0x0000
   146c6:	0000                	.insn	2, 0x0000
   146c8:	46b0                	.insn	2, 0x46b0
   146ca:	0001                	.insn	2, 0x0001
   146cc:	0000                	.insn	2, 0x0000
   146ce:	0000                	.insn	2, 0x0000
   146d0:	46c0                	.insn	2, 0x46c0
   146d2:	0001                	.insn	2, 0x0001
   146d4:	0000                	.insn	2, 0x0000
   146d6:	0000                	.insn	2, 0x0000
   146d8:	46c0                	.insn	2, 0x46c0
   146da:	0001                	.insn	2, 0x0001
   146dc:	0000                	.insn	2, 0x0000
   146de:	0000                	.insn	2, 0x0000
   146e0:	46d0                	.insn	2, 0x46d0
   146e2:	0001                	.insn	2, 0x0001
   146e4:	0000                	.insn	2, 0x0000
   146e6:	0000                	.insn	2, 0x0000
   146e8:	46d0                	.insn	2, 0x46d0
   146ea:	0001                	.insn	2, 0x0001
   146ec:	0000                	.insn	2, 0x0000
   146ee:	0000                	.insn	2, 0x0000
   146f0:	46e0                	.insn	2, 0x46e0
   146f2:	0001                	.insn	2, 0x0001
   146f4:	0000                	.insn	2, 0x0000
   146f6:	0000                	.insn	2, 0x0000
   146f8:	46e0                	.insn	2, 0x46e0
   146fa:	0001                	.insn	2, 0x0001
   146fc:	0000                	.insn	2, 0x0000
   146fe:	0000                	.insn	2, 0x0000
   14700:	46f0                	.insn	2, 0x46f0
   14702:	0001                	.insn	2, 0x0001
   14704:	0000                	.insn	2, 0x0000
   14706:	0000                	.insn	2, 0x0000
   14708:	46f0                	.insn	2, 0x46f0
   1470a:	0001                	.insn	2, 0x0001
   1470c:	0000                	.insn	2, 0x0000
   1470e:	0000                	.insn	2, 0x0000
   14710:	4700                	.insn	2, 0x4700
   14712:	0001                	.insn	2, 0x0001
   14714:	0000                	.insn	2, 0x0000
   14716:	0000                	.insn	2, 0x0000
   14718:	4700                	.insn	2, 0x4700
   1471a:	0001                	.insn	2, 0x0001
   1471c:	0000                	.insn	2, 0x0000
   1471e:	0000                	.insn	2, 0x0000
   14720:	4710                	.insn	2, 0x4710
   14722:	0001                	.insn	2, 0x0001
   14724:	0000                	.insn	2, 0x0000
   14726:	0000                	.insn	2, 0x0000
   14728:	4710                	.insn	2, 0x4710
   1472a:	0001                	.insn	2, 0x0001
   1472c:	0000                	.insn	2, 0x0000
   1472e:	0000                	.insn	2, 0x0000
   14730:	4720                	.insn	2, 0x4720
   14732:	0001                	.insn	2, 0x0001
   14734:	0000                	.insn	2, 0x0000
   14736:	0000                	.insn	2, 0x0000
   14738:	4720                	.insn	2, 0x4720
   1473a:	0001                	.insn	2, 0x0001
   1473c:	0000                	.insn	2, 0x0000
   1473e:	0000                	.insn	2, 0x0000
   14740:	4730                	.insn	2, 0x4730
   14742:	0001                	.insn	2, 0x0001
   14744:	0000                	.insn	2, 0x0000
   14746:	0000                	.insn	2, 0x0000
   14748:	4730                	.insn	2, 0x4730
   1474a:	0001                	.insn	2, 0x0001
   1474c:	0000                	.insn	2, 0x0000
   1474e:	0000                	.insn	2, 0x0000
   14750:	4740                	.insn	2, 0x4740
   14752:	0001                	.insn	2, 0x0001
   14754:	0000                	.insn	2, 0x0000
   14756:	0000                	.insn	2, 0x0000
   14758:	4740                	.insn	2, 0x4740
   1475a:	0001                	.insn	2, 0x0001
   1475c:	0000                	.insn	2, 0x0000
   1475e:	0000                	.insn	2, 0x0000
   14760:	4750                	.insn	2, 0x4750
   14762:	0001                	.insn	2, 0x0001
   14764:	0000                	.insn	2, 0x0000
   14766:	0000                	.insn	2, 0x0000
   14768:	4750                	.insn	2, 0x4750
   1476a:	0001                	.insn	2, 0x0001
   1476c:	0000                	.insn	2, 0x0000
   1476e:	0000                	.insn	2, 0x0000
   14770:	4760                	.insn	2, 0x4760
   14772:	0001                	.insn	2, 0x0001
   14774:	0000                	.insn	2, 0x0000
   14776:	0000                	.insn	2, 0x0000
   14778:	4760                	.insn	2, 0x4760
   1477a:	0001                	.insn	2, 0x0001
   1477c:	0000                	.insn	2, 0x0000
   1477e:	0000                	.insn	2, 0x0000
   14780:	4770                	.insn	2, 0x4770
   14782:	0001                	.insn	2, 0x0001
   14784:	0000                	.insn	2, 0x0000
   14786:	0000                	.insn	2, 0x0000
   14788:	4770                	.insn	2, 0x4770
   1478a:	0001                	.insn	2, 0x0001
   1478c:	0000                	.insn	2, 0x0000
   1478e:	0000                	.insn	2, 0x0000
   14790:	4780                	.insn	2, 0x4780
   14792:	0001                	.insn	2, 0x0001
   14794:	0000                	.insn	2, 0x0000
   14796:	0000                	.insn	2, 0x0000
   14798:	4780                	.insn	2, 0x4780
   1479a:	0001                	.insn	2, 0x0001
   1479c:	0000                	.insn	2, 0x0000
   1479e:	0000                	.insn	2, 0x0000
   147a0:	4790                	.insn	2, 0x4790
   147a2:	0001                	.insn	2, 0x0001
   147a4:	0000                	.insn	2, 0x0000
   147a6:	0000                	.insn	2, 0x0000
   147a8:	4790                	.insn	2, 0x4790
   147aa:	0001                	.insn	2, 0x0001
   147ac:	0000                	.insn	2, 0x0000
   147ae:	0000                	.insn	2, 0x0000
   147b0:	47a0                	.insn	2, 0x47a0
   147b2:	0001                	.insn	2, 0x0001
   147b4:	0000                	.insn	2, 0x0000
   147b6:	0000                	.insn	2, 0x0000
   147b8:	47a0                	.insn	2, 0x47a0
   147ba:	0001                	.insn	2, 0x0001
   147bc:	0000                	.insn	2, 0x0000
   147be:	0000                	.insn	2, 0x0000
   147c0:	47b0                	.insn	2, 0x47b0
   147c2:	0001                	.insn	2, 0x0001
   147c4:	0000                	.insn	2, 0x0000
   147c6:	0000                	.insn	2, 0x0000
   147c8:	47b0                	.insn	2, 0x47b0
   147ca:	0001                	.insn	2, 0x0001
   147cc:	0000                	.insn	2, 0x0000
   147ce:	0000                	.insn	2, 0x0000
   147d0:	47c0                	.insn	2, 0x47c0
   147d2:	0001                	.insn	2, 0x0001
   147d4:	0000                	.insn	2, 0x0000
   147d6:	0000                	.insn	2, 0x0000
   147d8:	47c0                	.insn	2, 0x47c0
   147da:	0001                	.insn	2, 0x0001
   147dc:	0000                	.insn	2, 0x0000
   147de:	0000                	.insn	2, 0x0000
   147e0:	47d0                	.insn	2, 0x47d0
   147e2:	0001                	.insn	2, 0x0001
   147e4:	0000                	.insn	2, 0x0000
   147e6:	0000                	.insn	2, 0x0000
   147e8:	47d0                	.insn	2, 0x47d0
   147ea:	0001                	.insn	2, 0x0001
   147ec:	0000                	.insn	2, 0x0000
   147ee:	0000                	.insn	2, 0x0000
   147f0:	47e0                	.insn	2, 0x47e0
   147f2:	0001                	.insn	2, 0x0001
   147f4:	0000                	.insn	2, 0x0000
   147f6:	0000                	.insn	2, 0x0000
   147f8:	47e0                	.insn	2, 0x47e0
   147fa:	0001                	.insn	2, 0x0001
   147fc:	0000                	.insn	2, 0x0000
   147fe:	0000                	.insn	2, 0x0000
   14800:	47f0                	.insn	2, 0x47f0
   14802:	0001                	.insn	2, 0x0001
   14804:	0000                	.insn	2, 0x0000
   14806:	0000                	.insn	2, 0x0000
   14808:	47f0                	.insn	2, 0x47f0
   1480a:	0001                	.insn	2, 0x0001
   1480c:	0000                	.insn	2, 0x0000
   1480e:	0000                	.insn	2, 0x0000
   14810:	4800                	.insn	2, 0x4800
   14812:	0001                	.insn	2, 0x0001
   14814:	0000                	.insn	2, 0x0000
   14816:	0000                	.insn	2, 0x0000
   14818:	4800                	.insn	2, 0x4800
   1481a:	0001                	.insn	2, 0x0001
   1481c:	0000                	.insn	2, 0x0000
   1481e:	0000                	.insn	2, 0x0000
   14820:	4810                	.insn	2, 0x4810
   14822:	0001                	.insn	2, 0x0001
   14824:	0000                	.insn	2, 0x0000
   14826:	0000                	.insn	2, 0x0000
   14828:	4810                	.insn	2, 0x4810
   1482a:	0001                	.insn	2, 0x0001
   1482c:	0000                	.insn	2, 0x0000
   1482e:	0000                	.insn	2, 0x0000
   14830:	4820                	.insn	2, 0x4820
   14832:	0001                	.insn	2, 0x0001
   14834:	0000                	.insn	2, 0x0000
   14836:	0000                	.insn	2, 0x0000
   14838:	4820                	.insn	2, 0x4820
   1483a:	0001                	.insn	2, 0x0001
   1483c:	0000                	.insn	2, 0x0000
   1483e:	0000                	.insn	2, 0x0000
   14840:	4830                	.insn	2, 0x4830
   14842:	0001                	.insn	2, 0x0001
   14844:	0000                	.insn	2, 0x0000
   14846:	0000                	.insn	2, 0x0000
   14848:	4830                	.insn	2, 0x4830
   1484a:	0001                	.insn	2, 0x0001
   1484c:	0000                	.insn	2, 0x0000
   1484e:	0000                	.insn	2, 0x0000
   14850:	4840                	.insn	2, 0x4840
   14852:	0001                	.insn	2, 0x0001
   14854:	0000                	.insn	2, 0x0000
   14856:	0000                	.insn	2, 0x0000
   14858:	4840                	.insn	2, 0x4840
   1485a:	0001                	.insn	2, 0x0001
   1485c:	0000                	.insn	2, 0x0000
   1485e:	0000                	.insn	2, 0x0000
   14860:	4850                	.insn	2, 0x4850
   14862:	0001                	.insn	2, 0x0001
   14864:	0000                	.insn	2, 0x0000
   14866:	0000                	.insn	2, 0x0000
   14868:	4850                	.insn	2, 0x4850
   1486a:	0001                	.insn	2, 0x0001
   1486c:	0000                	.insn	2, 0x0000
   1486e:	0000                	.insn	2, 0x0000
   14870:	4860                	.insn	2, 0x4860
   14872:	0001                	.insn	2, 0x0001
   14874:	0000                	.insn	2, 0x0000
   14876:	0000                	.insn	2, 0x0000
   14878:	4860                	.insn	2, 0x4860
   1487a:	0001                	.insn	2, 0x0001
   1487c:	0000                	.insn	2, 0x0000
   1487e:	0000                	.insn	2, 0x0000
   14880:	4870                	.insn	2, 0x4870
   14882:	0001                	.insn	2, 0x0001
   14884:	0000                	.insn	2, 0x0000
   14886:	0000                	.insn	2, 0x0000
   14888:	4870                	.insn	2, 0x4870
   1488a:	0001                	.insn	2, 0x0001
   1488c:	0000                	.insn	2, 0x0000
   1488e:	0000                	.insn	2, 0x0000
   14890:	4880                	.insn	2, 0x4880
   14892:	0001                	.insn	2, 0x0001
   14894:	0000                	.insn	2, 0x0000
   14896:	0000                	.insn	2, 0x0000
   14898:	4880                	.insn	2, 0x4880
   1489a:	0001                	.insn	2, 0x0001
   1489c:	0000                	.insn	2, 0x0000
   1489e:	0000                	.insn	2, 0x0000
   148a0:	4890                	.insn	2, 0x4890
   148a2:	0001                	.insn	2, 0x0001
   148a4:	0000                	.insn	2, 0x0000
   148a6:	0000                	.insn	2, 0x0000
   148a8:	4890                	.insn	2, 0x4890
   148aa:	0001                	.insn	2, 0x0001
   148ac:	0000                	.insn	2, 0x0000
   148ae:	0000                	.insn	2, 0x0000
   148b0:	48a0                	.insn	2, 0x48a0
   148b2:	0001                	.insn	2, 0x0001
   148b4:	0000                	.insn	2, 0x0000
   148b6:	0000                	.insn	2, 0x0000
   148b8:	48a0                	.insn	2, 0x48a0
   148ba:	0001                	.insn	2, 0x0001
   148bc:	0000                	.insn	2, 0x0000
   148be:	0000                	.insn	2, 0x0000
   148c0:	48b0                	.insn	2, 0x48b0
   148c2:	0001                	.insn	2, 0x0001
   148c4:	0000                	.insn	2, 0x0000
   148c6:	0000                	.insn	2, 0x0000
   148c8:	48b0                	.insn	2, 0x48b0
   148ca:	0001                	.insn	2, 0x0001
   148cc:	0000                	.insn	2, 0x0000
   148ce:	0000                	.insn	2, 0x0000
   148d0:	48c0                	.insn	2, 0x48c0
   148d2:	0001                	.insn	2, 0x0001
   148d4:	0000                	.insn	2, 0x0000
   148d6:	0000                	.insn	2, 0x0000
   148d8:	48c0                	.insn	2, 0x48c0
   148da:	0001                	.insn	2, 0x0001
   148dc:	0000                	.insn	2, 0x0000
   148de:	0000                	.insn	2, 0x0000
   148e0:	48d0                	.insn	2, 0x48d0
   148e2:	0001                	.insn	2, 0x0001
   148e4:	0000                	.insn	2, 0x0000
   148e6:	0000                	.insn	2, 0x0000
   148e8:	48d0                	.insn	2, 0x48d0
   148ea:	0001                	.insn	2, 0x0001
   148ec:	0000                	.insn	2, 0x0000
   148ee:	0000                	.insn	2, 0x0000
   148f0:	48e0                	.insn	2, 0x48e0
   148f2:	0001                	.insn	2, 0x0001
   148f4:	0000                	.insn	2, 0x0000
   148f6:	0000                	.insn	2, 0x0000
   148f8:	48e0                	.insn	2, 0x48e0
   148fa:	0001                	.insn	2, 0x0001
   148fc:	0000                	.insn	2, 0x0000
   148fe:	0000                	.insn	2, 0x0000
   14900:	48f0                	.insn	2, 0x48f0
   14902:	0001                	.insn	2, 0x0001
   14904:	0000                	.insn	2, 0x0000
   14906:	0000                	.insn	2, 0x0000
   14908:	48f0                	.insn	2, 0x48f0
   1490a:	0001                	.insn	2, 0x0001
   1490c:	0000                	.insn	2, 0x0000
   1490e:	0000                	.insn	2, 0x0000
   14910:	4900                	.insn	2, 0x4900
   14912:	0001                	.insn	2, 0x0001
   14914:	0000                	.insn	2, 0x0000
   14916:	0000                	.insn	2, 0x0000
   14918:	4900                	.insn	2, 0x4900
   1491a:	0001                	.insn	2, 0x0001
   1491c:	0000                	.insn	2, 0x0000
   1491e:	0000                	.insn	2, 0x0000
   14920:	4910                	.insn	2, 0x4910
   14922:	0001                	.insn	2, 0x0001
   14924:	0000                	.insn	2, 0x0000
   14926:	0000                	.insn	2, 0x0000
   14928:	4910                	.insn	2, 0x4910
   1492a:	0001                	.insn	2, 0x0001
   1492c:	0000                	.insn	2, 0x0000
   1492e:	0000                	.insn	2, 0x0000
   14930:	4920                	.insn	2, 0x4920
   14932:	0001                	.insn	2, 0x0001
   14934:	0000                	.insn	2, 0x0000
   14936:	0000                	.insn	2, 0x0000
   14938:	4920                	.insn	2, 0x4920
   1493a:	0001                	.insn	2, 0x0001
   1493c:	0000                	.insn	2, 0x0000
   1493e:	0000                	.insn	2, 0x0000
   14940:	4930                	.insn	2, 0x4930
   14942:	0001                	.insn	2, 0x0001
   14944:	0000                	.insn	2, 0x0000
   14946:	0000                	.insn	2, 0x0000
   14948:	4930                	.insn	2, 0x4930
   1494a:	0001                	.insn	2, 0x0001
   1494c:	0000                	.insn	2, 0x0000
   1494e:	0000                	.insn	2, 0x0000
   14950:	4940                	.insn	2, 0x4940
   14952:	0001                	.insn	2, 0x0001
   14954:	0000                	.insn	2, 0x0000
   14956:	0000                	.insn	2, 0x0000
   14958:	4940                	.insn	2, 0x4940
   1495a:	0001                	.insn	2, 0x0001
   1495c:	0000                	.insn	2, 0x0000
   1495e:	0000                	.insn	2, 0x0000
   14960:	4950                	.insn	2, 0x4950
   14962:	0001                	.insn	2, 0x0001
   14964:	0000                	.insn	2, 0x0000
   14966:	0000                	.insn	2, 0x0000
   14968:	4950                	.insn	2, 0x4950
   1496a:	0001                	.insn	2, 0x0001
   1496c:	0000                	.insn	2, 0x0000
   1496e:	0000                	.insn	2, 0x0000
   14970:	4960                	.insn	2, 0x4960
   14972:	0001                	.insn	2, 0x0001
   14974:	0000                	.insn	2, 0x0000
   14976:	0000                	.insn	2, 0x0000
   14978:	4960                	.insn	2, 0x4960
   1497a:	0001                	.insn	2, 0x0001
   1497c:	0000                	.insn	2, 0x0000
   1497e:	0000                	.insn	2, 0x0000
   14980:	4970                	.insn	2, 0x4970
   14982:	0001                	.insn	2, 0x0001
   14984:	0000                	.insn	2, 0x0000
   14986:	0000                	.insn	2, 0x0000
   14988:	4970                	.insn	2, 0x4970
   1498a:	0001                	.insn	2, 0x0001
   1498c:	0000                	.insn	2, 0x0000
   1498e:	0000                	.insn	2, 0x0000
   14990:	4980                	.insn	2, 0x4980
   14992:	0001                	.insn	2, 0x0001
   14994:	0000                	.insn	2, 0x0000
   14996:	0000                	.insn	2, 0x0000
   14998:	4980                	.insn	2, 0x4980
   1499a:	0001                	.insn	2, 0x0001
   1499c:	0000                	.insn	2, 0x0000
   1499e:	0000                	.insn	2, 0x0000
   149a0:	4990                	.insn	2, 0x4990
   149a2:	0001                	.insn	2, 0x0001
   149a4:	0000                	.insn	2, 0x0000
   149a6:	0000                	.insn	2, 0x0000
   149a8:	4990                	.insn	2, 0x4990
   149aa:	0001                	.insn	2, 0x0001
   149ac:	0000                	.insn	2, 0x0000
   149ae:	0000                	.insn	2, 0x0000
   149b0:	49a0                	.insn	2, 0x49a0
   149b2:	0001                	.insn	2, 0x0001
   149b4:	0000                	.insn	2, 0x0000
   149b6:	0000                	.insn	2, 0x0000
   149b8:	49a0                	.insn	2, 0x49a0
   149ba:	0001                	.insn	2, 0x0001
   149bc:	0000                	.insn	2, 0x0000
   149be:	0000                	.insn	2, 0x0000
   149c0:	49b0                	.insn	2, 0x49b0
   149c2:	0001                	.insn	2, 0x0001
   149c4:	0000                	.insn	2, 0x0000
   149c6:	0000                	.insn	2, 0x0000
   149c8:	49b0                	.insn	2, 0x49b0
   149ca:	0001                	.insn	2, 0x0001
   149cc:	0000                	.insn	2, 0x0000
   149ce:	0000                	.insn	2, 0x0000
   149d0:	49c0                	.insn	2, 0x49c0
   149d2:	0001                	.insn	2, 0x0001
   149d4:	0000                	.insn	2, 0x0000
   149d6:	0000                	.insn	2, 0x0000
   149d8:	49c0                	.insn	2, 0x49c0
   149da:	0001                	.insn	2, 0x0001
   149dc:	0000                	.insn	2, 0x0000
   149de:	0000                	.insn	2, 0x0000
   149e0:	49d0                	.insn	2, 0x49d0
   149e2:	0001                	.insn	2, 0x0001
   149e4:	0000                	.insn	2, 0x0000
   149e6:	0000                	.insn	2, 0x0000
   149e8:	49d0                	.insn	2, 0x49d0
   149ea:	0001                	.insn	2, 0x0001
   149ec:	0000                	.insn	2, 0x0000
   149ee:	0000                	.insn	2, 0x0000
   149f0:	49e0                	.insn	2, 0x49e0
   149f2:	0001                	.insn	2, 0x0001
   149f4:	0000                	.insn	2, 0x0000
   149f6:	0000                	.insn	2, 0x0000
   149f8:	49e0                	.insn	2, 0x49e0
   149fa:	0001                	.insn	2, 0x0001
   149fc:	0000                	.insn	2, 0x0000
   149fe:	0000                	.insn	2, 0x0000
   14a00:	49f0                	.insn	2, 0x49f0
   14a02:	0001                	.insn	2, 0x0001
   14a04:	0000                	.insn	2, 0x0000
   14a06:	0000                	.insn	2, 0x0000
   14a08:	49f0                	.insn	2, 0x49f0
   14a0a:	0001                	.insn	2, 0x0001
   14a0c:	0000                	.insn	2, 0x0000
	...

Disassembly of section .sdata:

0000000000014a10 <__dso_handle>:
	...

0000000000014a18 <_impure_ptr>:
   14a18:	40a8                	.insn	2, 0x40a8
   14a1a:	0001                	.insn	2, 0x0001
   14a1c:	0000                	.insn	2, 0x0000
	...

0000000000014a20 <__malloc_sbrk_base>:
   14a20:	ffff                	.insn	2, 0xffff
   14a22:	ffff                	.insn	2, 0xffff
   14a24:	ffff                	.insn	2, 0xffff
   14a26:	ffff                	.insn	2, 0xffff

0000000000014a28 <__malloc_trim_threshold>:
   14a28:	0000                	.insn	2, 0x0000
   14a2a:	0002                	.insn	2, 0x0002
   14a2c:	0000                	.insn	2, 0x0000
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
  10:	04a0                	.insn	2, 0x04a0
  12:	0001                	.insn	2, 0x0001
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	0448                	.insn	2, 0x0448
	...
  2e:	0000                	.insn	2, 0x0000
  30:	002c                	.insn	2, 0x002c
  32:	0000                	.insn	2, 0x0000
  34:	0002                	.insn	2, 0x0002
  36:	036e                	.insn	2, 0x036e
  38:	0000                	.insn	2, 0x0000
  3a:	0008                	.insn	2, 0x0008
  3c:	0000                	.insn	2, 0x0000
  3e:	0000                	.insn	2, 0x0000
  40:	08e8                	.insn	2, 0x08e8
  42:	0001                	.insn	2, 0x0001
  44:	0000                	.insn	2, 0x0000
  46:	0000                	.insn	2, 0x0000
  48:	0344                	.insn	2, 0x0344
	...
  5e:	0000                	.insn	2, 0x0000
  60:	002c                	.insn	2, 0x002c
  62:	0000                	.insn	2, 0x0000
  64:	0002                	.insn	2, 0x0002
  66:	075f 0000 0008      	.insn	6, 0x00080000075f
  6c:	0000                	.insn	2, 0x0000
  6e:	0000                	.insn	2, 0x0000
  70:	0c2c                	.insn	2, 0x0c2c
  72:	0001                	.insn	2, 0x0001
  74:	0000                	.insn	2, 0x0000
  76:	0000                	.insn	2, 0x0000
  78:	0458                	.insn	2, 0x0458
	...
  8e:	0000                	.insn	2, 0x0000
  90:	002c                	.insn	2, 0x002c
  92:	0000                	.insn	2, 0x0000
  94:	0002                	.insn	2, 0x0002
  96:	0acd                	.insn	2, 0x0acd
  98:	0000                	.insn	2, 0x0000
  9a:	0008                	.insn	2, 0x0008
  9c:	0000                	.insn	2, 0x0000
  9e:	0000                	.insn	2, 0x0000
  a0:	1084                	.insn	2, 0x1084
  a2:	0001                	.insn	2, 0x0001
  a4:	0000                	.insn	2, 0x0000
  a6:	0000                	.insn	2, 0x0000
  a8:	0080                	.insn	2, 0x0080
	...
  be:	0000                	.insn	2, 0x0000
  c0:	002c                	.insn	2, 0x002c
  c2:	0000                	.insn	2, 0x0000
  c4:	0002                	.insn	2, 0x0002
  c6:	0d01                	.insn	2, 0x0d01
  c8:	0000                	.insn	2, 0x0000
  ca:	0008                	.insn	2, 0x0008
  cc:	0000                	.insn	2, 0x0000
  ce:	0000                	.insn	2, 0x0000
  d0:	1104                	.insn	2, 0x1104
  d2:	0001                	.insn	2, 0x0001
  d4:	0000                	.insn	2, 0x0000
  d6:	0000                	.insn	2, 0x0000
  d8:	00a4                	.insn	2, 0x00a4
	...
  ee:	0000                	.insn	2, 0x0000
  f0:	002c                	.insn	2, 0x002c
  f2:	0000                	.insn	2, 0x0000
  f4:	0002                	.insn	2, 0x0002
  f6:	0f96                	.insn	2, 0x0f96
  f8:	0000                	.insn	2, 0x0000
  fa:	0008                	.insn	2, 0x0008
  fc:	0000                	.insn	2, 0x0000
  fe:	0000                	.insn	2, 0x0000
 100:	11a8                	.insn	2, 0x11a8
 102:	0001                	.insn	2, 0x0001
 104:	0000                	.insn	2, 0x0000
 106:	0000                	.insn	2, 0x0000
 108:	00f4                	.insn	2, 0x00f4
	...
 11e:	0000                	.insn	2, 0x0000
 120:	002c                	.insn	2, 0x002c
 122:	0000                	.insn	2, 0x0000
 124:	0002                	.insn	2, 0x0002
 126:	00001263          	bnez	zero,12a <exit-0xfff6>
 12a:	0008                	.insn	2, 0x0008
 12c:	0000                	.insn	2, 0x0000
 12e:	0000                	.insn	2, 0x0000
 130:	129c                	.insn	2, 0x129c
 132:	0001                	.insn	2, 0x0001
 134:	0000                	.insn	2, 0x0000
 136:	0000                	.insn	2, 0x0000
 138:	0040                	.insn	2, 0x0040
	...
 14e:	0000                	.insn	2, 0x0000
 150:	001c                	.insn	2, 0x001c
 152:	0000                	.insn	2, 0x0000
 154:	0002                	.insn	2, 0x0002
 156:	13e9                	.insn	2, 0x13e9
 158:	0000                	.insn	2, 0x0000
 15a:	0008                	.insn	2, 0x0008
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	036a                	.insn	2, 0x036a
       2:	0000                	.insn	2, 0x0000
       4:	0005                	.insn	2, 0x0005
       6:	0801                	.insn	2, 0x0801
       8:	0000                	.insn	2, 0x0000
       a:	0000                	.insn	2, 0x0000
       c:	0000250b          	.insn	4, 0x250b
      10:	1d00                	.insn	2, 0x1d00
      12:	03164703          	lbu	a4,49(a2)
      16:	8f00                	.insn	2, 0x8f00
      18:	0000                	.insn	2, 0x0000
      1a:	2500                	.insn	2, 0x2500
      1c:	0000                	.insn	2, 0x0000
      1e:	a000                	.insn	2, 0xa000
      20:	0104                	.insn	2, 0x0104
      22:	0000                	.insn	2, 0x0000
      24:	0000                	.insn	2, 0x0000
      26:	4800                	.insn	2, 0x4800
      28:	0004                	.insn	2, 0x0004
	...
      32:	0100                	.insn	2, 0x0100
      34:	0408                	.insn	2, 0x0408
      36:	03e2                	.insn	2, 0x03e2
      38:	0000                	.insn	2, 0x0000
      3a:	1001                	.insn	2, 0x1001
      3c:	5105                	.insn	2, 0x5105
      3e:	0001                	.insn	2, 0x0001
      40:	0100                	.insn	2, 0x0100
      42:	0710                	.insn	2, 0x0710
      44:	0000                	.insn	2, 0x0000
      46:	0000                	.insn	2, 0x0000
      48:	0801                	.insn	2, 0x0801
      4a:	aa05                	.insn	2, 0xaa05
      4c:	0001                	.insn	2, 0x0001
      4e:	0100                	.insn	2, 0x0100
      50:	0601                	.insn	2, 0x0601
      52:	0000011b          	sext.w	sp,zero
      56:	040c                	.insn	2, 0x040c
      58:	6905                	.insn	2, 0x6905
      5a:	746e                	.insn	2, 0x746e
      5c:	0100                	.insn	2, 0x0100
      5e:	0801                	.insn	2, 0x0801
      60:	0119                	.insn	2, 0x0119
      62:	0000                	.insn	2, 0x0000
      64:	0401                	.insn	2, 0x0401
      66:	00017d07          	.insn	4, 0x00017d07
      6a:	0100                	.insn	2, 0x0100
      6c:	0708                	.insn	2, 0x0708
      6e:	0178                	.insn	2, 0x0178
      70:	0000                	.insn	2, 0x0000
      72:	f40d                	.insn	2, 0xf40d
      74:	0000                	.insn	2, 0x0000
      76:	0200                	.insn	2, 0x0200
      78:	0f44                	.insn	2, 0x0f44
      7a:	00000033          	add	zero,zero,zero
      7e:	080e                	.insn	2, 0x080e
      80:	c602                	.insn	2, 0xc602
      82:	0000b003          	ld	zero,0(ra) # 101dc <__do_global_dtors_aux+0x24>
      86:	0800                	.insn	2, 0x0800
      88:	016e                	.insn	2, 0x016e
      8a:	0000                	.insn	2, 0x0000
      8c:	10cd                	.insn	2, 0x10cd
      8e:	00b0                	.insn	2, 0x00b0
      90:	0000                	.insn	2, 0x0000
      92:	0034                	.insn	2, 0x0034
      94:	7078650f          	.insn	4, 0x7078650f
      98:	0200                	.insn	2, 0x0200
      9a:	0ece                	.insn	2, 0x0ece
      9c:	0064                	.insn	2, 0x0064
      9e:	0000                	.insn	2, 0x0000
      a0:	fe08340b          	.insn	4, 0xfe08340b
      a4:	0001                	.insn	2, 0x0001
      a6:	cf00                	.insn	2, 0xcf00
      a8:	640e                	.insn	2, 0x640e
      aa:	0000                	.insn	2, 0x0000
      ac:	0100                	.insn	2, 0x0100
      ae:	0801003f 00017307 	.insn	8, 0x000173070801003f
      b6:	1000                	.insn	2, 0x1000
      b8:	01ca                	.insn	2, 0x01ca
      ba:	0000                	.insn	2, 0x0000
      bc:	0208                	.insn	2, 0x0208
      be:	00dd07c3          	.insn	4, 0x00dd07c3
      c2:	0000                	.insn	2, 0x0000
      c4:	6611                	.insn	2, 0x6611
      c6:	746c                	.insn	2, 0x746c
      c8:	0200                	.insn	2, 0x0200
      ca:	0ac5                	.insn	2, 0x0ac5
      cc:	0072                	.insn	2, 0x0072
      ce:	0000                	.insn	2, 0x0000
      d0:	0312                	.insn	2, 0x0312
      d2:	0002                	.insn	2, 0x0002
      d4:	0200                	.insn	2, 0x0200
      d6:	05d1                	.insn	2, 0x05d1
      d8:	007e                	.insn	2, 0x007e
      da:	0000                	.insn	2, 0x0000
      dc:	1300                	.insn	2, 0x1300
      de:	00d1                	.insn	2, 0x00d1
      e0:	0000                	.insn	2, 0x0000
      e2:	2101                	.insn	2, 0x2101
      e4:	7201                	.insn	2, 0x7201
      e6:	0000                	.insn	2, 0x0000
      e8:	a000                	.insn	2, 0xa000
      ea:	0104                	.insn	2, 0x0104
      ec:	0000                	.insn	2, 0x0000
      ee:	0000                	.insn	2, 0x0000
      f0:	4800                	.insn	2, 0x4800
      f2:	0004                	.insn	2, 0x0004
      f4:	0000                	.insn	2, 0x0000
      f6:	0000                	.insn	2, 0x0000
      f8:	0100                	.insn	2, 0x0100
      fa:	5d9c                	.insn	2, 0x5d9c
      fc:	09000003          	lb	zero,144(zero) # 90 <exit-0x10090>
     100:	0061                	.insn	2, 0x0061
     102:	7212                	.insn	2, 0x7212
     104:	0000                	.insn	2, 0x0000
     106:	8a00                	.insn	2, 0x8a00
     108:	0000                	.insn	2, 0x0000
     10a:	0c00                	.insn	2, 0x0c00
     10c:	0000                	.insn	2, 0x0000
     10e:	0900                	.insn	2, 0x0900
     110:	0062                	.insn	2, 0x0062
     112:	721c                	.insn	2, 0x721c
     114:	0000                	.insn	2, 0x0000
     116:	cf00                	.insn	2, 0xcf00
     118:	0001                	.insn	2, 0x0001
     11a:	cb00                	.insn	2, 0xcb00
     11c:	0001                	.insn	2, 0x0001
     11e:	0600                	.insn	2, 0x0600
     120:	00da                	.insn	2, 0x00da
     122:	0000                	.insn	2, 0x0000
     124:	00005623          	.insn	4, 0x5623
     128:	0500                	.insn	2, 0x0500
     12a:	0002                	.insn	2, 0x0002
     12c:	e000                	.insn	2, 0xe000
     12e:	0001                	.insn	2, 0x0001
     130:	1400                	.insn	2, 0x1400
     132:	022a                	.insn	2, 0x022a
     134:	0000                	.insn	2, 0x0000
     136:	2301                	.insn	2, 0x2301
     138:	00005603          	lhu	a2,0(zero) # 0 <exit-0x10120>
     13c:	0000                	.insn	2, 0x0000
     13e:	635f4107          	.insn	4, 0x635f4107
     142:	2400                	.insn	2, 0x2400
     144:	035d                	.insn	2, 0x035d
     146:	0000                	.insn	2, 0x0000
     148:	4102                	.insn	2, 0x4102
     14a:	735f 2400 5d03      	.insn	6, 0x5d032400735f
     150:	9a000003          	lb	zero,-1632(zero) # fffffffffffff9a0 <__BSS_END__+0xfffffffffffea9b0>
     154:	0002                	.insn	2, 0x0002
     156:	5500                	.insn	2, 0x5500
     158:	0002                	.insn	2, 0x0002
     15a:	0200                	.insn	2, 0x0200
     15c:	5f41                	.insn	2, 0x5f41
     15e:	0065                	.insn	2, 0x0065
     160:	0324                	.insn	2, 0x0324
     162:	035d                	.insn	2, 0x035d
     164:	0000                	.insn	2, 0x0000
     166:	036e                	.insn	2, 0x036e
     168:	0000                	.insn	2, 0x0000
     16a:	00000327          	.insn	4, 0x0327
     16e:	4102                	.insn	2, 0x4102
     170:	665f 2400 b003      	.insn	6, 0xb0032400665f
     176:	0000                	.insn	2, 0x0000
     178:	8400                	.insn	2, 0x8400
     17a:	0004                	.insn	2, 0x0004
     17c:	0d00                	.insn	2, 0x0d00
     17e:	0004                	.insn	2, 0x0004
     180:	0700                	.insn	2, 0x0700
     182:	5f42                	.insn	2, 0x5f42
     184:	5d250063          	beq	a0,s2,744 <exit-0xf9dc>
     188:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
     18c:	5f42                	.insn	2, 0x5f42
     18e:	03250073          	.insn	4, 0x03250073
     192:	035d                	.insn	2, 0x035d
     194:	0000                	.insn	2, 0x0000
     196:	0649                	.insn	2, 0x0649
     198:	0000                	.insn	2, 0x0000
     19a:	0610                	.insn	2, 0x0610
     19c:	0000                	.insn	2, 0x0000
     19e:	4202                	.insn	2, 0x4202
     1a0:	655f 2500 5d03      	.insn	6, 0x5d032500655f
     1a6:	e9000003          	lb	zero,-368(zero) # fffffffffffffe90 <__BSS_END__+0xfffffffffffeaea0>
     1aa:	0006                	.insn	2, 0x0006
     1ac:	b800                	.insn	2, 0xb800
     1ae:	0006                	.insn	2, 0x0006
     1b0:	0200                	.insn	2, 0x0200
     1b2:	5f42                	.insn	2, 0x5f42
     1b4:	0066                	.insn	2, 0x0066
     1b6:	0325                	.insn	2, 0x0325
     1b8:	00b0                	.insn	2, 0x00b0
     1ba:	0000                	.insn	2, 0x0000
     1bc:	0789                	.insn	2, 0x0789
     1be:	0000                	.insn	2, 0x0000
     1c0:	074a                	.insn	2, 0x074a
     1c2:	0000                	.insn	2, 0x0000
     1c4:	635f5207          	.insn	4, 0x635f5207
     1c8:	2600                	.insn	2, 0x2600
     1ca:	035d                	.insn	2, 0x035d
     1cc:	0000                	.insn	2, 0x0000
     1ce:	5202                	.insn	2, 0x5202
     1d0:	735f 2600 5d03      	.insn	6, 0x5d032600735f
     1d6:	43000003          	lb	zero,1072(zero) # 430 <exit-0xfcf0>
     1da:	0008                	.insn	2, 0x0008
     1dc:	0600                	.insn	2, 0x0600
     1de:	0008                	.insn	2, 0x0008
     1e0:	0200                	.insn	2, 0x0200
     1e2:	5f52                	.insn	2, 0x5f52
     1e4:	0065                	.insn	2, 0x0065
     1e6:	0326                	.insn	2, 0x0326
     1e8:	035d                	.insn	2, 0x035d
     1ea:	0000                	.insn	2, 0x0000
     1ec:	0911                	.insn	2, 0x0911
     1ee:	0000                	.insn	2, 0x0000
     1f0:	000008b3          	add	a7,zero,zero
     1f4:	5202                	.insn	2, 0x5202
     1f6:	665f 2600 b003      	.insn	6, 0xb0032600665f
     1fc:	0000                	.insn	2, 0x0000
     1fe:	3900                	.insn	2, 0x3900
     200:	000a                	.insn	2, 0x000a
     202:	d600                	.insn	2, 0xd600
     204:	0009                	.insn	2, 0x0009
     206:	0200                	.insn	2, 0x0200
     208:	0072                	.insn	2, 0x0072
     20a:	00720a27          	.insn	4, 0x00720a27
     20e:	0000                	.insn	2, 0x0000
     210:	0b70                	.insn	2, 0x0b70
     212:	0000                	.insn	2, 0x0000
     214:	0b68                	.insn	2, 0x0b68
     216:	0000                	.insn	2, 0x0000
     218:	0c05                	.insn	2, 0x0c05
     21a:	0000                	.insn	2, 0x0000
     21c:	2c00                	.insn	2, 0x2c00
     21e:	0002                	.insn	2, 0x0002
     220:	0300                	.insn	2, 0x0300
     222:	00000127          	.insn	4, 0x0127
     226:	b72a                	.insn	2, 0xb72a
     228:	0000                	.insn	2, 0x0000
     22a:	0000                	.insn	2, 0x0000
     22c:	1c05                	.insn	2, 0x1c05
     22e:	0000                	.insn	2, 0x0000
     230:	4000                	.insn	2, 0x4000
     232:	0002                	.insn	2, 0x0002
     234:	0300                	.insn	2, 0x0300
     236:	00000127          	.insn	4, 0x0127
     23a:	0000b72b          	.insn	4, 0xb72b
     23e:	0000                	.insn	2, 0x0000
     240:	2c05                	.insn	2, 0x2c05
     242:	0000                	.insn	2, 0x0000
     244:	8800                	.insn	2, 0x8800
     246:	0002                	.insn	2, 0x0002
     248:	0400                	.insn	2, 0x0400
     24a:	01f4                	.insn	2, 0x01f4
     24c:	0000                	.insn	2, 0x0000
     24e:	055c                	.insn	2, 0x055c
     250:	0001                	.insn	2, 0x0001
     252:	0000                	.insn	2, 0x0000
     254:	0000                	.insn	2, 0x0000
     256:	f904                	.insn	2, 0xf904
     258:	0001                	.insn	2, 0x0001
     25a:	d000                	.insn	2, 0xd000
     25c:	0105                	.insn	2, 0x0105
     25e:	0000                	.insn	2, 0x0000
     260:	0000                	.insn	2, 0x0000
     262:	0400                	.insn	2, 0x0400
     264:	018a                	.insn	2, 0x018a
     266:	0000                	.insn	2, 0x0000
     268:	0504                	.insn	2, 0x0504
     26a:	0001                	.insn	2, 0x0001
     26c:	0000                	.insn	2, 0x0000
     26e:	0000                	.insn	2, 0x0000
     270:	100a                	.insn	2, 0x100a
     272:	0001                	.insn	2, 0x0001
     274:	0600                	.insn	2, 0x0600
     276:	000001b3          	add	gp,zero,zero
     27a:	562c                	.insn	2, 0x562c
     27c:	0000                	.insn	2, 0x0000
     27e:	9d00                	.insn	2, 0x9d00
     280:	8600000b          	.insn	4, 0x8600000b
     284:	0000000b          	.insn	4, 0x000b
     288:	8f05                	.insn	2, 0x8f05
     28a:	0000                	.insn	2, 0x0000
     28c:	0200                	.insn	2, 0x0200
     28e:	04000003          	lb	zero,64(zero) # 40 <exit-0x100e0>
     292:	015a                	.insn	2, 0x015a
     294:	0000                	.insn	2, 0x0000
     296:	0708                	.insn	2, 0x0708
     298:	0001                	.insn	2, 0x0001
     29a:	0000                	.insn	2, 0x0000
     29c:	0000                	.insn	2, 0x0000
     29e:	5f04                	.insn	2, 0x5f04
     2a0:	0001                	.insn	2, 0x0001
     2a2:	9c00                	.insn	2, 0x9c00
     2a4:	00000107          	.insn	4, 0x0107
     2a8:	0000                	.insn	2, 0x0000
     2aa:	0400                	.insn	2, 0x0400
     2ac:	0164                	.insn	2, 0x0164
     2ae:	0000                	.insn	2, 0x0000
     2b0:	06ec                	.insn	2, 0x06ec
     2b2:	0001                	.insn	2, 0x0001
     2b4:	0000                	.insn	2, 0x0000
     2b6:	0000                	.insn	2, 0x0000
     2b8:	6904                	.insn	2, 0x6904
     2ba:	0001                	.insn	2, 0x0001
     2bc:	6800                	.insn	2, 0x6800
     2be:	0108                	.insn	2, 0x0108
     2c0:	0000                	.insn	2, 0x0000
     2c2:	0000                	.insn	2, 0x0000
     2c4:	0a00                	.insn	2, 0x0a00
     2c6:	01d6                	.insn	2, 0x01d6
     2c8:	0000                	.insn	2, 0x0000
     2ca:	b306                	.insn	2, 0xb306
     2cc:	0001                	.insn	2, 0x0001
     2ce:	2c00                	.insn	2, 0x2c00
     2d0:	0056                	.insn	2, 0x0056
     2d2:	0000                	.insn	2, 0x0000
     2d4:	0bfa                	.insn	2, 0x0bfa
     2d6:	0000                	.insn	2, 0x0000
     2d8:	0bda                	.insn	2, 0x0bda
     2da:	0000                	.insn	2, 0x0000
     2dc:	c715                	.insn	2, 0xc715
     2de:	0000                	.insn	2, 0x0000
     2e0:	0600                	.insn	2, 0x0600
     2e2:	0000018f          	.insn	4, 0x018f
     2e6:	562c                	.insn	2, 0x562c
     2e8:	0000                	.insn	2, 0x0000
     2ea:	4800                	.insn	2, 0x4800
     2ec:	000c                	.insn	2, 0x000c
     2ee:	3c00                	.insn	2, 0x3c00
     2f0:	000c                	.insn	2, 0x000c
     2f2:	1600                	.insn	2, 0x1600
     2f4:	0870                	.insn	2, 0x0870
     2f6:	0001                	.insn	2, 0x0001
     2f8:	0000                	.insn	2, 0x0000
     2fa:	0000                	.insn	2, 0x0000
     2fc:	0364                	.insn	2, 0x0364
     2fe:	0000                	.insn	2, 0x0000
     300:	0000                	.insn	2, 0x0000
     302:	5205                	.insn	2, 0x5205
     304:	0000                	.insn	2, 0x0000
     306:	4000                	.insn	2, 0x4000
     308:	03000003          	lb	zero,48(zero) # 30 <exit-0x100f0>
     30c:	0211                	.insn	2, 0x0211
     30e:	0000                	.insn	2, 0x0000
     310:	562d                	.insn	2, 0x562d
     312:	0000                	.insn	2, 0x0000
     314:	1700                	.insn	2, 0x1700
     316:	0000df03          	lhu	t5,0(ra)
     31a:	2d00                	.insn	2, 0x2d00
     31c:	035d                	.insn	2, 0x035d
     31e:	0000                	.insn	2, 0x0000
     320:	00013c03          	ld	s8,0(sp)
     324:	2d00                	.insn	2, 0x2d00
     326:	035d                	.insn	2, 0x035d
     328:	0000                	.insn	2, 0x0000
     32a:	0001df03          	lhu	t5,0(gp) # 14818 <__global_pointer$>
     32e:	2d00                	.insn	2, 0x2d00
     330:	035d                	.insn	2, 0x035d
     332:	0000                	.insn	2, 0x0000
     334:	0000fb03          	.insn	4, 0xfb03
     338:	2d00                	.insn	2, 0x2d00
     33a:	00b0                	.insn	2, 0x00b0
     33c:	0000                	.insn	2, 0x0000
     33e:	0000                	.insn	2, 0x0000
     340:	3818                	.insn	2, 0x3818
     342:	0106                	.insn	2, 0x0106
     344:	0000                	.insn	2, 0x0000
     346:	0000                	.insn	2, 0x0000
     348:	1800                	.insn	2, 0x1800
     34a:	0000                	.insn	2, 0x0000
     34c:	0000                	.insn	2, 0x0000
     34e:	0000                	.insn	2, 0x0000
     350:	0300                	.insn	2, 0x0300
     352:	0012                	.insn	2, 0x0012
     354:	0000                	.insn	2, 0x0000
     356:	b72d                	.insn	2, 0xb72d
     358:	0000                	.insn	2, 0x0000
     35a:	0000                	.insn	2, 0x0000
     35c:	0100                	.insn	2, 0x0100
     35e:	0508                	.insn	2, 0x0508
     360:	01a5                	.insn	2, 0x01a5
     362:	0000                	.insn	2, 0x0000
     364:	0819                	.insn	2, 0x0819
     366:	0002                	.insn	2, 0x0002
     368:	0800                	.insn	2, 0x0800
     36a:	0002                	.insn	2, 0x0002
     36c:	0000                	.insn	2, 0x0000
     36e:	03ed                	.insn	2, 0x03ed
     370:	0000                	.insn	2, 0x0000
     372:	0005                	.insn	2, 0x0005
     374:	0801                	.insn	2, 0x0801
     376:	0000018b          	.insn	4, 0x018b
     37a:	0000250b          	.insn	4, 0x250b
     37e:	1d00                	.insn	2, 0x1d00
     380:	03164703          	lbu	a4,49(a2)
     384:	c600                	.insn	2, 0xc600
     386:	0000                	.insn	2, 0x0000
     388:	2500                	.insn	2, 0x2500
     38a:	0000                	.insn	2, 0x0000
     38c:	e800                	.insn	2, 0xe800
     38e:	0108                	.insn	2, 0x0108
     390:	0000                	.insn	2, 0x0000
     392:	0000                	.insn	2, 0x0000
     394:	4400                	.insn	2, 0x4400
     396:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
     39a:	0000                	.insn	2, 0x0000
     39c:	3a00                	.insn	2, 0x3a00
     39e:	0300000f          	fence	rw,unknown
     3a2:	0408                	.insn	2, 0x0408
     3a4:	03e2                	.insn	2, 0x03e2
     3a6:	0000                	.insn	2, 0x0000
     3a8:	51051003          	lh	zero,1296(a0)
     3ac:	0001                	.insn	2, 0x0001
     3ae:	0300                	.insn	2, 0x0300
     3b0:	0710                	.insn	2, 0x0710
     3b2:	0000                	.insn	2, 0x0000
     3b4:	0000                	.insn	2, 0x0000
     3b6:	aa050803          	lb	a6,-1376(a0)
     3ba:	0001                	.insn	2, 0x0001
     3bc:	0300                	.insn	2, 0x0300
     3be:	0601                	.insn	2, 0x0601
     3c0:	0000011b          	sext.w	sp,zero
     3c4:	040c                	.insn	2, 0x040c
     3c6:	6905                	.insn	2, 0x6905
     3c8:	746e                	.insn	2, 0x746e
     3ca:	0300                	.insn	2, 0x0300
     3cc:	0801                	.insn	2, 0x0801
     3ce:	0119                	.insn	2, 0x0119
     3d0:	0000                	.insn	2, 0x0000
     3d2:	7306                	.insn	2, 0x7306
     3d4:	0002                	.insn	2, 0x0002
     3d6:	4700                	.insn	2, 0x4700
     3d8:	1601                	.insn	2, 0x1601
     3da:	0070                	.insn	2, 0x0070
     3dc:	0000                	.insn	2, 0x0000
     3de:	7d070403          	lb	s0,2000(a4)
     3e2:	0001                	.insn	2, 0x0001
     3e4:	0300                	.insn	2, 0x0300
     3e6:	0708                	.insn	2, 0x0708
     3e8:	0178                	.insn	2, 0x0178
     3ea:	0000                	.insn	2, 0x0000
     3ec:	6606                	.insn	2, 0x6606
     3ee:	0002                	.insn	2, 0x0002
     3f0:	4c00                	.insn	2, 0x4c00
     3f2:	1101                	.insn	2, 0x1101
     3f4:	0064                	.insn	2, 0x0064
     3f6:	0000                	.insn	2, 0x0000
     3f8:	f40d                	.insn	2, 0xf40d
     3fa:	0000                	.insn	2, 0x0000
     3fc:	0300                	.insn	2, 0x0300
     3fe:	0f44                	.insn	2, 0x0f44
     400:	00000033          	add	zero,zero,zero
     404:	080e                	.insn	2, 0x080e
     406:	c803c603          	lbu	a2,-896(t2)
     40a:	0000                	.insn	2, 0x0000
     40c:	0700                	.insn	2, 0x0700
     40e:	016e                	.insn	2, 0x016e
     410:	0000                	.insn	2, 0x0000
     412:	10cd                	.insn	2, 0x10cd
     414:	00c8                	.insn	2, 0x00c8
     416:	0000                	.insn	2, 0x0000
     418:	0034                	.insn	2, 0x0034
     41a:	7078650f          	.insn	4, 0x7078650f
     41e:	0300                	.insn	2, 0x0300
     420:	0ece                	.insn	2, 0x0ece
     422:	0070                	.insn	2, 0x0070
     424:	0000                	.insn	2, 0x0000
     426:	fe07340b          	.insn	4, 0xfe07340b
     42a:	0001                	.insn	2, 0x0001
     42c:	cf00                	.insn	2, 0xcf00
     42e:	700e                	.insn	2, 0x700e
     430:	0000                	.insn	2, 0x0000
     432:	0100                	.insn	2, 0x0100
     434:	0803003f 00017307 	.insn	8, 0x000173070803003f
     43c:	1000                	.insn	2, 0x1000
     43e:	01ca                	.insn	2, 0x01ca
     440:	0000                	.insn	2, 0x0000
     442:	0308                	.insn	2, 0x0308
     444:	00f507c3          	.insn	4, 0x00f507c3
     448:	0000                	.insn	2, 0x0000
     44a:	6611                	.insn	2, 0x6611
     44c:	746c                	.insn	2, 0x746c
     44e:	0300                	.insn	2, 0x0300
     450:	0ac5                	.insn	2, 0x0ac5
     452:	008a                	.insn	2, 0x008a
     454:	0000                	.insn	2, 0x0000
     456:	0312                	.insn	2, 0x0312
     458:	0002                	.insn	2, 0x0002
     45a:	0300                	.insn	2, 0x0300
     45c:	05d1                	.insn	2, 0x05d1
     45e:	0096                	.insn	2, 0x0096
     460:	0000                	.insn	2, 0x0000
     462:	1300                	.insn	2, 0x1300
     464:	0326                	.insn	2, 0x0326
     466:	0000                	.insn	2, 0x0000
     468:	2101                	.insn	2, 0x2101
     46a:	8a01                	.insn	2, 0x8a01
     46c:	0000                	.insn	2, 0x0000
     46e:	e800                	.insn	2, 0xe800
     470:	0108                	.insn	2, 0x0108
     472:	0000                	.insn	2, 0x0000
     474:	0000                	.insn	2, 0x0000
     476:	4400                	.insn	2, 0x4400
     478:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
     47c:	0000                	.insn	2, 0x0000
     47e:	0100                	.insn	2, 0x0100
     480:	e09c                	.insn	2, 0xe09c
     482:	08000003          	lb	zero,128(zero) # 80 <exit-0x100a0>
     486:	0061                	.insn	2, 0x0061
     488:	8a12                	.insn	2, 0x8a12
     48a:	0000                	.insn	2, 0x0000
     48c:	7e00                	.insn	2, 0x7e00
     48e:	000c                	.insn	2, 0x000c
     490:	6a00                	.insn	2, 0x6a00
     492:	000c                	.insn	2, 0x000c
     494:	0800                	.insn	2, 0x0800
     496:	0062                	.insn	2, 0x0062
     498:	8a1c                	.insn	2, 0x8a1c
     49a:	0000                	.insn	2, 0x0000
     49c:	cb00                	.insn	2, 0xcb00
     49e:	000c                	.insn	2, 0x000c
     4a0:	b500                	.insn	2, 0xb500
     4a2:	000c                	.insn	2, 0x000c
     4a4:	0100                	.insn	2, 0x0100
     4a6:	00da                	.insn	2, 0x00da
     4a8:	0000                	.insn	2, 0x0000
     4aa:	00005623          	.insn	4, 0x5623
     4ae:	0800                	.insn	2, 0x0800
     4b0:	000d                	.insn	2, 0x000d
     4b2:	0200                	.insn	2, 0x0200
     4b4:	000d                	.insn	2, 0x000d
     4b6:	1400                	.insn	2, 0x1400
     4b8:	022a                	.insn	2, 0x022a
     4ba:	0000                	.insn	2, 0x0000
     4bc:	2301                	.insn	2, 0x2301
     4be:	00005603          	lhu	a2,0(zero) # 0 <exit-0x10120>
     4c2:	0000                	.insn	2, 0x0000
     4c4:	4102                	.insn	2, 0x4102
     4c6:	635f 2400 e003      	.insn	6, 0xe0032400635f
     4cc:	21000003          	lb	zero,528(zero) # 210 <exit-0xff10>
     4d0:	000d                	.insn	2, 0x000d
     4d2:	1700                	.insn	2, 0x1700
     4d4:	000d                	.insn	2, 0x000d
     4d6:	0200                	.insn	2, 0x0200
     4d8:	5f41                	.insn	2, 0x5f41
     4da:	03240073          	.insn	4, 0x03240073
     4de:	03e0                	.insn	2, 0x03e0
     4e0:	0000                	.insn	2, 0x0000
     4e2:	0d49                	.insn	2, 0x0d49
     4e4:	0000                	.insn	2, 0x0000
     4e6:	00000d3b          	addw	s10,zero,zero
     4ea:	4102                	.insn	2, 0x4102
     4ec:	655f 2400 e003      	.insn	6, 0xe0032400655f
     4f2:	95000003          	lb	zero,-1712(zero) # fffffffffffff950 <__BSS_END__+0xfffffffffffea960>
     4f6:	000d                	.insn	2, 0x000d
     4f8:	7900                	.insn	2, 0x7900
     4fa:	000d                	.insn	2, 0x000d
     4fc:	0200                	.insn	2, 0x0200
     4fe:	5f41                	.insn	2, 0x5f41
     500:	0066                	.insn	2, 0x0066
     502:	0324                	.insn	2, 0x0324
     504:	00c8                	.insn	2, 0x00c8
     506:	0000                	.insn	2, 0x0000
     508:	0e09                	.insn	2, 0x0e09
     50a:	0000                	.insn	2, 0x0000
     50c:	0df5                	.insn	2, 0x0df5
     50e:	0000                	.insn	2, 0x0000
     510:	4202                	.insn	2, 0x4202
     512:	635f 2500 e003      	.insn	6, 0xe0032500635f
     518:	58000003          	lb	zero,1408(zero) # 580 <exit-0xfba0>
     51c:	000e                	.insn	2, 0x000e
     51e:	4600                	.insn	2, 0x4600
     520:	000e                	.insn	2, 0x000e
     522:	0200                	.insn	2, 0x0200
     524:	5f42                	.insn	2, 0x5f42
     526:	03250073          	.insn	4, 0x03250073
     52a:	03e0                	.insn	2, 0x03e0
     52c:	0000                	.insn	2, 0x0000
     52e:	00000e8b          	.insn	4, 0x0e8b
     532:	0e85                	.insn	2, 0x0e85
     534:	0000                	.insn	2, 0x0000
     536:	4202                	.insn	2, 0x4202
     538:	655f 2500 e003      	.insn	6, 0xe0032500655f
     53e:	b3000003          	lb	zero,-1232(zero) # fffffffffffffb30 <__BSS_END__+0xfffffffffffeab40>
     542:	000e                	.insn	2, 0x000e
     544:	a300                	.insn	2, 0xa300
     546:	000e                	.insn	2, 0x000e
     548:	0200                	.insn	2, 0x0200
     54a:	5f42                	.insn	2, 0x5f42
     54c:	0066                	.insn	2, 0x0066
     54e:	0325                	.insn	2, 0x0325
     550:	00c8                	.insn	2, 0x00c8
     552:	0000                	.insn	2, 0x0000
     554:	0f00                	.insn	2, 0x0f00
     556:	0000                	.insn	2, 0x0000
     558:	0eee                	.insn	2, 0x0eee
     55a:	0000                	.insn	2, 0x0000
     55c:	5202                	.insn	2, 0x5202
     55e:	635f 2600 e003      	.insn	6, 0xe0032600635f
     564:	3a000003          	lb	zero,928(zero) # 3a0 <exit-0xfd80>
     568:	2f00000f          	.insn	4, 0x2f00000f
     56c:	0200000f          	fence	r,unknown
     570:	5f52                	.insn	2, 0x5f52
     572:	03260073          	.insn	4, 0x03260073
     576:	03e0                	.insn	2, 0x03e0
     578:	0000                	.insn	2, 0x0000
     57a:	0f64                	.insn	2, 0x0f64
     57c:	0000                	.insn	2, 0x0000
     57e:	0f52                	.insn	2, 0x0f52
     580:	0000                	.insn	2, 0x0000
     582:	5202                	.insn	2, 0x5202
     584:	655f 2600 e003      	.insn	6, 0xe0032600655f
     58a:	c7000003          	lb	zero,-912(zero) # fffffffffffffc70 <__BSS_END__+0xfffffffffffeac80>
     58e:	a000000f          	.insn	4, 0xa000000f
     592:	0200000f          	fence	r,unknown
     596:	5f52                	.insn	2, 0x5f52
     598:	0066                	.insn	2, 0x0066
     59a:	0326                	.insn	2, 0x0326
     59c:	00c8                	.insn	2, 0x00c8
     59e:	0000                	.insn	2, 0x0000
     5a0:	00001037          	lui	zero,0x1
     5a4:	00001017          	auipc	zero,0x1
     5a8:	7202                	.insn	2, 0x7202
     5aa:	2700                	.insn	2, 0x2700
     5ac:	8a0a                	.insn	2, 0x8a0a
     5ae:	0000                	.insn	2, 0x0000
     5b0:	7c00                	.insn	2, 0x7c00
     5b2:	0010                	.insn	2, 0x0010
     5b4:	7400                	.insn	2, 0x7400
     5b6:	0010                	.insn	2, 0x0010
     5b8:	0500                	.insn	2, 0x0500
     5ba:	000000e3          	beqz	zero,dba <exit-0xf366>
     5be:	025f 0000 2704      	.insn	6, 0x27040000025f
     5c4:	0001                	.insn	2, 0x0001
     5c6:	2a00                	.insn	2, 0x2a00
     5c8:	000000cf          	.insn	4, 0x00cf
     5cc:	0500                	.insn	2, 0x0500
     5ce:	00fd                	.insn	2, 0x00fd
     5d0:	0000                	.insn	2, 0x0000
     5d2:	0288                	.insn	2, 0x0288
     5d4:	0000                	.insn	2, 0x0000
     5d6:	7b01                	.insn	2, 0x7b01
     5d8:	0002                	.insn	2, 0x0002
     5da:	2a00                	.insn	2, 0x2a00
     5dc:	03e0                	.insn	2, 0x03e0
     5de:	0000                	.insn	2, 0x0000
     5e0:	109a                	.insn	2, 0x109a
     5e2:	0000                	.insn	2, 0x0000
     5e4:	1092                	.insn	2, 0x1092
     5e6:	0000                	.insn	2, 0x0000
     5e8:	c409                	.insn	2, 0xc409
     5ea:	010a                	.insn	2, 0x010a
     5ec:	0000                	.insn	2, 0x0000
     5ee:	0000                	.insn	2, 0x0000
     5f0:	e700                	.insn	2, 0xe700
     5f2:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
     5f6:	0605                	.insn	2, 0x0605
     5f8:	0001                	.insn	2, 0x0001
     5fa:	9c00                	.insn	2, 0x9c00
     5fc:	0002                	.insn	2, 0x0002
     5fe:	0400                	.insn	2, 0x0400
     600:	00000127          	.insn	4, 0x0127
     604:	0000cf2b          	.insn	4, 0xcf2b
     608:	0000                	.insn	2, 0x0000
     60a:	1905                	.insn	2, 0x1905
     60c:	0001                	.insn	2, 0x0001
     60e:	c500                	.insn	2, 0xc500
     610:	0002                	.insn	2, 0x0002
     612:	0100                	.insn	2, 0x0100
     614:	0000027b          	.insn	4, 0x027b
     618:	0003e02b          	.insn	4, 0x0003e02b
     61c:	b300                	.insn	2, 0xb300
     61e:	0010                	.insn	2, 0x0010
     620:	ab00                	.insn	2, 0xab00
     622:	0010                	.insn	2, 0x0010
     624:	0900                	.insn	2, 0x0900
     626:	0b08                	.insn	2, 0x0b08
     628:	0001                	.insn	2, 0x0001
     62a:	0000                	.insn	2, 0x0000
     62c:	0000                	.insn	2, 0x0000
     62e:	000003e7          	jalr	t2,zero # 0 <exit-0x10120>
     632:	0500                	.insn	2, 0x0500
     634:	0124                	.insn	2, 0x0124
     636:	0000                	.insn	2, 0x0000
     638:	0389                	.insn	2, 0x0389
     63a:	0000                	.insn	2, 0x0000
     63c:	2f01                	.insn	2, 0x2f01
     63e:	0002                	.insn	2, 0x0002
     640:	2c00                	.insn	2, 0x2c00
     642:	00c8                	.insn	2, 0x00c8
     644:	0000                	.insn	2, 0x0000
     646:	000010cf          	.insn	4, 0x10cf
     64a:	10c4                	.insn	2, 0x10c4
     64c:	0000                	.insn	2, 0x0000
     64e:	4801                	.insn	2, 0x4801
     650:	0002                	.insn	2, 0x0002
     652:	2c00                	.insn	2, 0x2c00
     654:	00c8                	.insn	2, 0x00c8
     656:	0000                	.insn	2, 0x0000
     658:	10ec                	.insn	2, 0x10ec
     65a:	0000                	.insn	2, 0x0000
     65c:	10e5                	.insn	2, 0x10e5
     65e:	0000                	.insn	2, 0x0000
     660:	2f0a                	.insn	2, 0x2f0a
     662:	0001                	.insn	2, 0x0001
     664:	0100                	.insn	2, 0x0100
     666:	026e                	.insn	2, 0x026e
     668:	0000                	.insn	2, 0x0000
     66a:	c82c                	.insn	2, 0xc82c
     66c:	0000                	.insn	2, 0x0000
     66e:	0500                	.insn	2, 0x0500
     670:	0011                	.insn	2, 0x0011
     672:	0300                	.insn	2, 0x0300
     674:	0011                	.insn	2, 0x0011
     676:	0100                	.insn	2, 0x0100
     678:	0312                	.insn	2, 0x0312
     67a:	0000                	.insn	2, 0x0000
     67c:	c82c                	.insn	2, 0xc82c
     67e:	0000                	.insn	2, 0x0000
     680:	1600                	.insn	2, 0x1600
     682:	0011                	.insn	2, 0x0011
     684:	0d00                	.insn	2, 0x0d00
     686:	0011                	.insn	2, 0x0011
     688:	0100                	.insn	2, 0x0100
     68a:	0000032f          	.insn	4, 0x032f
     68e:	c82c                	.insn	2, 0xc82c
     690:	0000                	.insn	2, 0x0000
     692:	4300                	.insn	2, 0x4300
     694:	0011                	.insn	2, 0x0011
     696:	4000                	.insn	2, 0x4000
     698:	0011                	.insn	2, 0x0011
     69a:	0100                	.insn	2, 0x0100
     69c:	00000317          	auipc	t1,0x0
     6a0:	c82c                	.insn	2, 0xc82c
     6a2:	0000                	.insn	2, 0x0000
     6a4:	4e00                	.insn	2, 0x4e00
     6a6:	0011                	.insn	2, 0x0011
     6a8:	4b00                	.insn	2, 0x4b00
     6aa:	0011                	.insn	2, 0x0011
     6ac:	0100                	.insn	2, 0x0100
     6ae:	0296                	.insn	2, 0x0296
     6b0:	0000                	.insn	2, 0x0000
     6b2:	7e2c                	.insn	2, 0x7e2c
     6b4:	0000                	.insn	2, 0x0000
     6b6:	5800                	.insn	2, 0x5800
     6b8:	0011                	.insn	2, 0x0011
     6ba:	5600                	.insn	2, 0x5600
     6bc:	0011                	.insn	2, 0x0011
     6be:	0100                	.insn	2, 0x0100
     6c0:	0321                	.insn	2, 0x0321
     6c2:	0000                	.insn	2, 0x0000
     6c4:	7e2c                	.insn	2, 0x7e2c
     6c6:	0000                	.insn	2, 0x0000
     6c8:	6200                	.insn	2, 0x6200
     6ca:	0011                	.insn	2, 0x0011
     6cc:	6000                	.insn	2, 0x6000
     6ce:	0011                	.insn	2, 0x0011
     6d0:	0100                	.insn	2, 0x0100
     6d2:	0261                	.insn	2, 0x0261
     6d4:	0000                	.insn	2, 0x0000
     6d6:	7e2c                	.insn	2, 0x7e2c
     6d8:	0000                	.insn	2, 0x0000
     6da:	6c00                	.insn	2, 0x6c00
     6dc:	0011                	.insn	2, 0x0011
     6de:	6a00                	.insn	2, 0x6a00
     6e0:	0011                	.insn	2, 0x0011
     6e2:	0100                	.insn	2, 0x0100
     6e4:	031c                	.insn	2, 0x031c
     6e6:	0000                	.insn	2, 0x0000
     6e8:	7e2c                	.insn	2, 0x7e2c
     6ea:	0000                	.insn	2, 0x0000
     6ec:	7600                	.insn	2, 0x7600
     6ee:	0011                	.insn	2, 0x0011
     6f0:	7400                	.insn	2, 0x7400
     6f2:	0011                	.insn	2, 0x0011
     6f4:	0000                	.insn	2, 0x0000
     6f6:	0500                	.insn	2, 0x0500
     6f8:	014a                	.insn	2, 0x014a
     6fa:	0000                	.insn	2, 0x0000
     6fc:	000003cf          	.insn	4, 0x03cf
     700:	b201                	.insn	2, 0xb201
     702:	0002                	.insn	2, 0x0002
     704:	2d00                	.insn	2, 0x2d00
     706:	0056                	.insn	2, 0x0056
     708:	0000                	.insn	2, 0x0000
     70a:	1186                	.insn	2, 0x1186
     70c:	0000                	.insn	2, 0x0000
     70e:	117e                	.insn	2, 0x117e
     710:	0000                	.insn	2, 0x0000
     712:	0415                	.insn	2, 0x0415
     714:	02cd                	.insn	2, 0x02cd
     716:	0000                	.insn	2, 0x0000
     718:	e02d                	.insn	2, 0xe02d
     71a:	04000003          	lb	zero,64(zero) # 40 <exit-0x100e0>
     71e:	0000029b          	sext.w	t0,zero
     722:	e02d                	.insn	2, 0xe02d
     724:	04000003          	lb	zero,64(zero) # 40 <exit-0x100e0>
     728:	02e4                	.insn	2, 0x02e4
     72a:	0000                	.insn	2, 0x0000
     72c:	e02d                	.insn	2, 0xe02d
     72e:	04000003          	lb	zero,64(zero) # 40 <exit-0x100e0>
     732:	000002fb          	.insn	4, 0x02fb
     736:	c82d                	.insn	2, 0xc82d
     738:	0000                	.insn	2, 0x0000
     73a:	0000                	.insn	2, 0x0000
     73c:	0a00                	.insn	2, 0x0a00
     73e:	0000013f 00001204 	.insn	8, 0x12040000013f
     746:	2d00                	.insn	2, 0x2d00
     748:	000000cf          	.insn	4, 0x00cf
     74c:	0000                	.insn	2, 0x0000
     74e:	a5050803          	lb	a6,-1456(a0)
     752:	0001                	.insn	2, 0x0001
     754:	1600                	.insn	2, 0x1600
     756:	0208                	.insn	2, 0x0208
     758:	0000                	.insn	2, 0x0000
     75a:	0208                	.insn	2, 0x0208
     75c:	0000                	.insn	2, 0x0000
     75e:	6a00                	.insn	2, 0x6a00
     760:	05000003          	lb	zero,80(zero) # 50 <exit-0x100d0>
     764:	0100                	.insn	2, 0x0100
     766:	ea08                	.insn	2, 0xea08
     768:	0002                	.insn	2, 0x0002
     76a:	0b00                	.insn	2, 0x0b00
     76c:	0025                	.insn	2, 0x0025
     76e:	0000                	.insn	2, 0x0000
     770:	031d                	.insn	2, 0x031d
     772:	00031647          	.insn	4, 0x00031647
     776:	00fe                	.insn	2, 0x00fe
     778:	0000                	.insn	2, 0x0000
     77a:	0025                	.insn	2, 0x0025
     77c:	0000                	.insn	2, 0x0000
     77e:	0c2c                	.insn	2, 0x0c2c
     780:	0001                	.insn	2, 0x0001
     782:	0000                	.insn	2, 0x0000
     784:	0000                	.insn	2, 0x0000
     786:	0458                	.insn	2, 0x0458
     788:	0000                	.insn	2, 0x0000
     78a:	0000                	.insn	2, 0x0000
     78c:	0000                	.insn	2, 0x0000
     78e:	18d1                	.insn	2, 0x18d1
     790:	0000                	.insn	2, 0x0000
     792:	0801                	.insn	2, 0x0801
     794:	e204                	.insn	2, 0xe204
     796:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
     79a:	0510                	.insn	2, 0x0510
     79c:	0151                	.insn	2, 0x0151
     79e:	0000                	.insn	2, 0x0000
     7a0:	1001                	.insn	2, 0x1001
     7a2:	00000007          	.insn	4, 0x0007
     7a6:	0100                	.insn	2, 0x0100
     7a8:	0508                	.insn	2, 0x0508
     7aa:	01aa                	.insn	2, 0x01aa
     7ac:	0000                	.insn	2, 0x0000
     7ae:	0101                	.insn	2, 0x0101
     7b0:	1b06                	.insn	2, 0x1b06
     7b2:	0001                	.insn	2, 0x0001
     7b4:	0c00                	.insn	2, 0x0c00
     7b6:	0504                	.insn	2, 0x0504
     7b8:	6e69                	.insn	2, 0x6e69
     7ba:	0074                	.insn	2, 0x0074
     7bc:	0101                	.insn	2, 0x0101
     7be:	1908                	.insn	2, 0x1908
     7c0:	0001                	.insn	2, 0x0001
     7c2:	0100                	.insn	2, 0x0100
     7c4:	0704                	.insn	2, 0x0704
     7c6:	017d                	.insn	2, 0x017d
     7c8:	0000                	.insn	2, 0x0000
     7ca:	0801                	.insn	2, 0x0801
     7cc:	00017807          	.insn	4, 0x00017807
     7d0:	0d00                	.insn	2, 0x0d00
     7d2:	00f4                	.insn	2, 0x00f4
     7d4:	0000                	.insn	2, 0x0000
     7d6:	4402                	.insn	2, 0x4402
     7d8:	0000330f          	.insn	4, 0x330f
     7dc:	0e00                	.insn	2, 0x0e00
     7de:	0208                	.insn	2, 0x0208
     7e0:	03c6                	.insn	2, 0x03c6
     7e2:	00b0                	.insn	2, 0x00b0
     7e4:	0000                	.insn	2, 0x0000
     7e6:	6e08                	.insn	2, 0x6e08
     7e8:	0001                	.insn	2, 0x0001
     7ea:	cd00                	.insn	2, 0xcd00
     7ec:	b010                	.insn	2, 0xb010
     7ee:	0000                	.insn	2, 0x0000
     7f0:	3400                	.insn	2, 0x3400
     7f2:	0f00                	.insn	2, 0x0f00
     7f4:	7865                	.insn	2, 0x7865
     7f6:	0070                	.insn	2, 0x0070
     7f8:	ce02                	.insn	2, 0xce02
     7fa:	640e                	.insn	2, 0x640e
     7fc:	0000                	.insn	2, 0x0000
     7fe:	0b00                	.insn	2, 0x0b00
     800:	0834                	.insn	2, 0x0834
     802:	01fe                	.insn	2, 0x01fe
     804:	0000                	.insn	2, 0x0000
     806:	00640ecf          	.insn	4, 0x00640ecf
     80a:	0000                	.insn	2, 0x0000
     80c:	3f01                	.insn	2, 0x3f01
     80e:	0100                	.insn	2, 0x0100
     810:	0708                	.insn	2, 0x0708
     812:	00000173          	.insn	4, 0x0173
     816:	ca10                	.insn	2, 0xca10
     818:	0001                	.insn	2, 0x0001
     81a:	0800                	.insn	2, 0x0800
     81c:	c302                	.insn	2, 0xc302
     81e:	0000dd07          	.insn	4, 0xdd07
     822:	1100                	.insn	2, 0x1100
     824:	6c66                	.insn	2, 0x6c66
     826:	0074                	.insn	2, 0x0074
     828:	c502                	.insn	2, 0xc502
     82a:	720a                	.insn	2, 0x720a
     82c:	0000                	.insn	2, 0x0000
     82e:	1200                	.insn	2, 0x1200
     830:	00000203          	lb	tp,0(zero) # 0 <exit-0x10120>
     834:	d102                	.insn	2, 0xd102
     836:	7e05                	.insn	2, 0x7e05
     838:	0000                	.insn	2, 0x0000
     83a:	0000                	.insn	2, 0x0000
     83c:	00033413          	sltiu	s0,t1,0
     840:	0100                	.insn	2, 0x0100
     842:	0121                	.insn	2, 0x0121
     844:	0072                	.insn	2, 0x0072
     846:	0000                	.insn	2, 0x0000
     848:	0c2c                	.insn	2, 0x0c2c
     84a:	0001                	.insn	2, 0x0001
     84c:	0000                	.insn	2, 0x0000
     84e:	0000                	.insn	2, 0x0000
     850:	0458                	.insn	2, 0x0458
     852:	0000                	.insn	2, 0x0000
     854:	0000                	.insn	2, 0x0000
     856:	0000                	.insn	2, 0x0000
     858:	9c01                	.insn	2, 0x9c01
     85a:	035d                	.insn	2, 0x035d
     85c:	0000                	.insn	2, 0x0000
     85e:	6109                	.insn	2, 0x6109
     860:	1200                	.insn	2, 0x1200
     862:	0072                	.insn	2, 0x0072
     864:	0000                	.insn	2, 0x0000
     866:	000011a7          	.insn	4, 0x11a7
     86a:	000011a3          	sh	zero,3(zero) # 3 <exit-0x1011d>
     86e:	6209                	.insn	2, 0x6209
     870:	1c00                	.insn	2, 0x1c00
     872:	0072                	.insn	2, 0x0072
     874:	0000                	.insn	2, 0x0000
     876:	11bc                	.insn	2, 0x11bc
     878:	0000                	.insn	2, 0x0000
     87a:	11b8                	.insn	2, 0x11b8
     87c:	0000                	.insn	2, 0x0000
     87e:	da06                	.insn	2, 0xda06
     880:	0000                	.insn	2, 0x0000
     882:	2300                	.insn	2, 0x2300
     884:	0056                	.insn	2, 0x0056
     886:	0000                	.insn	2, 0x0000
     888:	11f2                	.insn	2, 0x11f2
     88a:	0000                	.insn	2, 0x0000
     88c:	11cd                	.insn	2, 0x11cd
     88e:	0000                	.insn	2, 0x0000
     890:	2a14                	.insn	2, 0x2a14
     892:	0002                	.insn	2, 0x0002
     894:	0100                	.insn	2, 0x0100
     896:	00560323          	sb	t0,6(a2)
     89a:	0000                	.insn	2, 0x0000
     89c:	0700                	.insn	2, 0x0700
     89e:	5f41                	.insn	2, 0x5f41
     8a0:	5d240063          	beq	s0,s2,e60 <exit-0xf2c0>
     8a4:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
     8a8:	5f41                	.insn	2, 0x5f41
     8aa:	03240073          	.insn	4, 0x03240073
     8ae:	035d                	.insn	2, 0x035d
     8b0:	0000                	.insn	2, 0x0000
     8b2:	00001273          	.insn	4, 0x1273
     8b6:	1242                	.insn	2, 0x1242
     8b8:	0000                	.insn	2, 0x0000
     8ba:	4102                	.insn	2, 0x4102
     8bc:	655f 2400 5d03      	.insn	6, 0x5d032400655f
     8c2:	0d000003          	lb	zero,208(zero) # d0 <exit-0x10050>
     8c6:	ce000013          	li	zero,-800
     8ca:	0012                	.insn	2, 0x0012
     8cc:	0200                	.insn	2, 0x0200
     8ce:	5f41                	.insn	2, 0x5f41
     8d0:	0066                	.insn	2, 0x0066
     8d2:	0324                	.insn	2, 0x0324
     8d4:	00b0                	.insn	2, 0x00b0
     8d6:	0000                	.insn	2, 0x0000
     8d8:	13d0                	.insn	2, 0x13d0
     8da:	0000                	.insn	2, 0x0000
     8dc:	00001383          	lh	t2,0(zero) # 0 <exit-0x10120>
     8e0:	635f4207          	.insn	4, 0x635f4207
     8e4:	2500                	.insn	2, 0x2500
     8e6:	035d                	.insn	2, 0x035d
     8e8:	0000                	.insn	2, 0x0000
     8ea:	4202                	.insn	2, 0x4202
     8ec:	735f 2500 5d03      	.insn	6, 0x5d032500735f
     8f2:	9b000003          	lb	zero,-1616(zero) # fffffffffffff9b0 <__BSS_END__+0xfffffffffffea9c0>
     8f6:	0014                	.insn	2, 0x0014
     8f8:	6200                	.insn	2, 0x6200
     8fa:	0014                	.insn	2, 0x0014
     8fc:	0200                	.insn	2, 0x0200
     8fe:	5f42                	.insn	2, 0x5f42
     900:	0065                	.insn	2, 0x0065
     902:	0325                	.insn	2, 0x0325
     904:	035d                	.insn	2, 0x035d
     906:	0000                	.insn	2, 0x0000
     908:	00001537          	lui	a0,0x1
     90c:	150a                	.insn	2, 0x150a
     90e:	0000                	.insn	2, 0x0000
     910:	4202                	.insn	2, 0x4202
     912:	665f 2500 b003      	.insn	6, 0xb0032500665f
     918:	0000                	.insn	2, 0x0000
     91a:	d000                	.insn	2, 0xd000
     91c:	0015                	.insn	2, 0x0015
     91e:	9100                	.insn	2, 0x9100
     920:	0015                	.insn	2, 0x0015
     922:	0700                	.insn	2, 0x0700
     924:	5f52                	.insn	2, 0x5f52
     926:	5d260063          	beq	a2,s2,ee6 <exit-0xf23a>
     92a:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
     92e:	5f52                	.insn	2, 0x5f52
     930:	03260073          	.insn	4, 0x03260073
     934:	035d                	.insn	2, 0x035d
     936:	0000                	.insn	2, 0x0000
     938:	1686                	.insn	2, 0x1686
     93a:	0000                	.insn	2, 0x0000
     93c:	164d                	.insn	2, 0x164d
     93e:	0000                	.insn	2, 0x0000
     940:	5202                	.insn	2, 0x5202
     942:	655f 2600 5d03      	.insn	6, 0x5d032600655f
     948:	49000003          	lb	zero,1168(zero) # 490 <exit-0xfc90>
     94c:	ef000017          	auipc	zero,0xef000
     950:	0016                	.insn	2, 0x0016
     952:	0200                	.insn	2, 0x0200
     954:	5f52                	.insn	2, 0x5f52
     956:	0066                	.insn	2, 0x0066
     958:	0326                	.insn	2, 0x0326
     95a:	00b0                	.insn	2, 0x00b0
     95c:	0000                	.insn	2, 0x0000
     95e:	1866                	.insn	2, 0x1866
     960:	0000                	.insn	2, 0x0000
     962:	17fe                	.insn	2, 0x17fe
     964:	0000                	.insn	2, 0x0000
     966:	7202                	.insn	2, 0x7202
     968:	2700                	.insn	2, 0x2700
     96a:	720a                	.insn	2, 0x720a
     96c:	0000                	.insn	2, 0x0000
     96e:	a800                	.insn	2, 0xa800
     970:	0019                	.insn	2, 0x0019
     972:	a000                	.insn	2, 0xa000
     974:	0019                	.insn	2, 0x0019
     976:	0500                	.insn	2, 0x0500
     978:	0161                	.insn	2, 0x0161
     97a:	0000                	.insn	2, 0x0000
     97c:	022c                	.insn	2, 0x022c
     97e:	0000                	.insn	2, 0x0000
     980:	00012703          	lw	a4,0(sp)
     984:	2a00                	.insn	2, 0x2a00
     986:	000000b7          	lui	ra,0x0
     98a:	0500                	.insn	2, 0x0500
     98c:	0174                	.insn	2, 0x0174
     98e:	0000                	.insn	2, 0x0000
     990:	0240                	.insn	2, 0x0240
     992:	0000                	.insn	2, 0x0000
     994:	00012703          	lw	a4,0(sp)
     998:	2b00                	.insn	2, 0x2b00
     99a:	000000b7          	lui	ra,0x0
     99e:	0500                	.insn	2, 0x0500
     9a0:	0184                	.insn	2, 0x0184
     9a2:	0000                	.insn	2, 0x0000
     9a4:	0288                	.insn	2, 0x0288
     9a6:	0000                	.insn	2, 0x0000
     9a8:	f404                	.insn	2, 0xf404
     9aa:	0001                	.insn	2, 0x0001
     9ac:	fc00                	.insn	2, 0xfc00
     9ae:	010c                	.insn	2, 0x010c
     9b0:	0000                	.insn	2, 0x0000
     9b2:	0000                	.insn	2, 0x0000
     9b4:	0400                	.insn	2, 0x0400
     9b6:	01f9                	.insn	2, 0x01f9
     9b8:	0000                	.insn	2, 0x0000
     9ba:	0d70                	.insn	2, 0x0d70
     9bc:	0001                	.insn	2, 0x0001
     9be:	0000                	.insn	2, 0x0000
     9c0:	0000                	.insn	2, 0x0000
     9c2:	8a04                	.insn	2, 0x8a04
     9c4:	0001                	.insn	2, 0x0001
     9c6:	a400                	.insn	2, 0xa400
     9c8:	010c                	.insn	2, 0x010c
     9ca:	0000                	.insn	2, 0x0000
     9cc:	0000                	.insn	2, 0x0000
     9ce:	0a00                	.insn	2, 0x0a00
     9d0:	0110                	.insn	2, 0x0110
     9d2:	0000                	.insn	2, 0x0000
     9d4:	b306                	.insn	2, 0xb306
     9d6:	0001                	.insn	2, 0x0001
     9d8:	2c00                	.insn	2, 0x2c00
     9da:	0056                	.insn	2, 0x0056
     9dc:	0000                	.insn	2, 0x0000
     9de:	000019db          	.insn	4, 0x19db
     9e2:	19be                	.insn	2, 0x19be
     9e4:	0000                	.insn	2, 0x0000
     9e6:	0500                	.insn	2, 0x0500
     9e8:	000001e7          	jalr	gp,zero # 0 <exit-0x10120>
     9ec:	0302                	.insn	2, 0x0302
     9ee:	0000                	.insn	2, 0x0000
     9f0:	5a04                	.insn	2, 0x5a04
     9f2:	0001                	.insn	2, 0x0001
     9f4:	a800                	.insn	2, 0xa800
     9f6:	010e                	.insn	2, 0x010e
     9f8:	0000                	.insn	2, 0x0000
     9fa:	0000                	.insn	2, 0x0000
     9fc:	0400                	.insn	2, 0x0400
     9fe:	015f 0000 0f3c      	.insn	6, 0x0f3c0000015f
     a04:	0001                	.insn	2, 0x0001
     a06:	0000                	.insn	2, 0x0000
     a08:	0000                	.insn	2, 0x0000
     a0a:	6404                	.insn	2, 0x6404
     a0c:	0001                	.insn	2, 0x0001
     a0e:	8c00                	.insn	2, 0x8c00
     a10:	010e                	.insn	2, 0x010e
     a12:	0000                	.insn	2, 0x0000
     a14:	0000                	.insn	2, 0x0000
     a16:	0400                	.insn	2, 0x0400
     a18:	0169                	.insn	2, 0x0169
     a1a:	0000                	.insn	2, 0x0000
     a1c:	0ff0                	.insn	2, 0x0ff0
     a1e:	0001                	.insn	2, 0x0001
     a20:	0000                	.insn	2, 0x0000
     a22:	0000                	.insn	2, 0x0000
     a24:	d60a                	.insn	2, 0xd60a
     a26:	0001                	.insn	2, 0x0001
     a28:	0600                	.insn	2, 0x0600
     a2a:	000001b3          	add	gp,zero,zero
     a2e:	562c                	.insn	2, 0x562c
     a30:	0000                	.insn	2, 0x0000
     a32:	3e00                	.insn	2, 0x3e00
     a34:	001a                	.insn	2, 0x001a
     a36:	2200                	.insn	2, 0x2200
     a38:	001a                	.insn	2, 0x001a
     a3a:	1500                	.insn	2, 0x1500
     a3c:	0215                	.insn	2, 0x0215
     a3e:	0000                	.insn	2, 0x0000
     a40:	8f06                	.insn	2, 0x8f06
     a42:	0001                	.insn	2, 0x0001
     a44:	2c00                	.insn	2, 0x2c00
     a46:	0056                	.insn	2, 0x0056
     a48:	0000                	.insn	2, 0x0000
     a4a:	1a82                	.insn	2, 0x1a82
     a4c:	0000                	.insn	2, 0x0000
     a4e:	1a76                	.insn	2, 0x1a76
     a50:	0000                	.insn	2, 0x0000
     a52:	f816                	.insn	2, 0xf816
     a54:	0000010f          	.insn	4, 0x010f
     a58:	0000                	.insn	2, 0x0000
     a5a:	6400                	.insn	2, 0x6400
     a5c:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
     a60:	0500                	.insn	2, 0x0500
     a62:	01aa                	.insn	2, 0x01aa
     a64:	0000                	.insn	2, 0x0000
     a66:	0340                	.insn	2, 0x0340
     a68:	0000                	.insn	2, 0x0000
     a6a:	00021103          	lh	sp,0(tp) # 0 <exit-0x10120>
     a6e:	2d00                	.insn	2, 0x2d00
     a70:	0056                	.insn	2, 0x0056
     a72:	0000                	.insn	2, 0x0000
     a74:	00df0317          	auipc	t1,0xdf0
     a78:	0000                	.insn	2, 0x0000
     a7a:	5d2d                	.insn	2, 0x5d2d
     a7c:	03000003          	lb	zero,48(zero) # 30 <exit-0x100f0>
     a80:	013c                	.insn	2, 0x013c
     a82:	0000                	.insn	2, 0x0000
     a84:	5d2d                	.insn	2, 0x5d2d
     a86:	03000003          	lb	zero,48(zero) # 30 <exit-0x100f0>
     a8a:	01df 0000 5d2d      	.insn	6, 0x5d2d000001df
     a90:	03000003          	lb	zero,48(zero) # 30 <exit-0x100f0>
     a94:	000000fb          	.insn	4, 0x00fb
     a98:	b02d                	.insn	2, 0xb02d
     a9a:	0000                	.insn	2, 0x0000
     a9c:	0000                	.insn	2, 0x0000
     a9e:	1800                	.insn	2, 0x1800
     aa0:	0dd8                	.insn	2, 0x0dd8
     aa2:	0001                	.insn	2, 0x0001
     aa4:	0000                	.insn	2, 0x0000
     aa6:	0000                	.insn	2, 0x0000
     aa8:	0018                	.insn	2, 0x0018
     aaa:	0000                	.insn	2, 0x0000
     aac:	0000                	.insn	2, 0x0000
     aae:	0000                	.insn	2, 0x0000
     ab0:	00001203          	lh	tp,0(zero) # 0 <exit-0x10120>
     ab4:	2d00                	.insn	2, 0x2d00
     ab6:	000000b7          	lui	ra,0x0
     aba:	0000                	.insn	2, 0x0000
     abc:	0801                	.insn	2, 0x0801
     abe:	a505                	.insn	2, 0xa505
     ac0:	0001                	.insn	2, 0x0001
     ac2:	1900                	.insn	2, 0x1900
     ac4:	0208                	.insn	2, 0x0208
     ac6:	0000                	.insn	2, 0x0000
     ac8:	0208                	.insn	2, 0x0208
     aca:	0000                	.insn	2, 0x0000
     acc:	3000                	.insn	2, 0x3000
     ace:	0002                	.insn	2, 0x0002
     ad0:	0500                	.insn	2, 0x0500
     ad2:	0100                	.insn	2, 0x0100
     ad4:	7508                	.insn	2, 0x7508
     ad6:	0004                	.insn	2, 0x0004
     ad8:	0900                	.insn	2, 0x0900
     ada:	0025                	.insn	2, 0x0025
     adc:	0000                	.insn	2, 0x0000
     ade:	031d                	.insn	2, 0x031d
     ae0:	00031647          	.insn	4, 0x00031647
     ae4:	012c                	.insn	2, 0x012c
     ae6:	0000                	.insn	2, 0x0000
     ae8:	0025                	.insn	2, 0x0025
     aea:	0000                	.insn	2, 0x0000
     aec:	1084                	.insn	2, 0x1084
     aee:	0001                	.insn	2, 0x0001
     af0:	0000                	.insn	2, 0x0000
     af2:	0000                	.insn	2, 0x0000
     af4:	0080                	.insn	2, 0x0080
     af6:	0000                	.insn	2, 0x0000
     af8:	0000                	.insn	2, 0x0000
     afa:	0000                	.insn	2, 0x0000
     afc:	0000281b          	.insn	4, 0x281b
     b00:	0801                	.insn	2, 0x0801
     b02:	e204                	.insn	2, 0xe204
     b04:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
     b08:	0510                	.insn	2, 0x0510
     b0a:	0151                	.insn	2, 0x0151
     b0c:	0000                	.insn	2, 0x0000
     b0e:	1001                	.insn	2, 0x1001
     b10:	00000007          	.insn	4, 0x0007
     b14:	0100                	.insn	2, 0x0100
     b16:	0508                	.insn	2, 0x0508
     b18:	01aa                	.insn	2, 0x01aa
     b1a:	0000                	.insn	2, 0x0000
     b1c:	0101                	.insn	2, 0x0101
     b1e:	1b06                	.insn	2, 0x1b06
     b20:	0001                	.insn	2, 0x0001
     b22:	0400                	.insn	2, 0x0400
     b24:	0274                	.insn	2, 0x0274
     b26:	0000                	.insn	2, 0x0000
     b28:	0144                	.insn	2, 0x0144
     b2a:	620d                	.insn	2, 0x620d
     b2c:	0000                	.insn	2, 0x0000
     b2e:	0a00                	.insn	2, 0x0a00
     b30:	0504                	.insn	2, 0x0504
     b32:	6e69                	.insn	2, 0x6e69
     b34:	0074                	.insn	2, 0x0074
     b36:	0101                	.insn	2, 0x0101
     b38:	1908                	.insn	2, 0x1908
     b3a:	0001                	.insn	2, 0x0001
     b3c:	0400                	.insn	2, 0x0400
     b3e:	00000273          	.insn	4, 0x0273
     b42:	7c160147          	.insn	4, 0x7c160147
     b46:	0000                	.insn	2, 0x0000
     b48:	0100                	.insn	2, 0x0100
     b4a:	0704                	.insn	2, 0x0704
     b4c:	017d                	.insn	2, 0x017d
     b4e:	0000                	.insn	2, 0x0000
     b50:	0801                	.insn	2, 0x0801
     b52:	00017807          	.insn	4, 0x00017807
     b56:	0b00                	.insn	2, 0x0b00
     b58:	00f4                	.insn	2, 0x00f4
     b5a:	0000                	.insn	2, 0x0000
     b5c:	330f4403          	lbu	s0,816(t5)
     b60:	0000                	.insn	2, 0x0000
     b62:	0c00                	.insn	2, 0x0c00
     b64:	0308                	.insn	2, 0x0308
     b66:	03c6                	.insn	2, 0x03c6
     b68:	00c8                	.insn	2, 0x00c8
     b6a:	0000                	.insn	2, 0x0000
     b6c:	6e05                	.insn	2, 0x6e05
     b6e:	0001                	.insn	2, 0x0001
     b70:	cd00                	.insn	2, 0xcd00
     b72:	c810                	.insn	2, 0xc810
     b74:	0000                	.insn	2, 0x0000
     b76:	3400                	.insn	2, 0x3400
     b78:	0d00                	.insn	2, 0x0d00
     b7a:	7865                	.insn	2, 0x7865
     b7c:	0070                	.insn	2, 0x0070
     b7e:	7c0ece03          	lbu	t3,1984(t4)
     b82:	0000                	.insn	2, 0x0000
     b84:	0b00                	.insn	2, 0x0b00
     b86:	0534                	.insn	2, 0x0534
     b88:	01fe                	.insn	2, 0x01fe
     b8a:	0000                	.insn	2, 0x0000
     b8c:	007c0ecf          	.insn	4, 0x007c0ecf
     b90:	0000                	.insn	2, 0x0000
     b92:	3f01                	.insn	2, 0x3f01
     b94:	0100                	.insn	2, 0x0100
     b96:	0708                	.insn	2, 0x0708
     b98:	00000173          	.insn	4, 0x0173
     b9c:	ca0e                	.insn	2, 0xca0e
     b9e:	0001                	.insn	2, 0x0001
     ba0:	0800                	.insn	2, 0x0800
     ba2:	f507c303          	lbu	t1,-176(a5)
     ba6:	0000                	.insn	2, 0x0000
     ba8:	0f00                	.insn	2, 0x0f00
     baa:	6c66                	.insn	2, 0x6c66
     bac:	0074                	.insn	2, 0x0074
     bae:	8a0ac503          	lbu	a0,-1888(s5)
     bb2:	0000                	.insn	2, 0x0000
     bb4:	1000                	.insn	2, 0x1000
     bb6:	00000203          	lb	tp,0(zero) # 0 <exit-0x10120>
     bba:	9605d103          	lhu	sp,-1696(a1)
     bbe:	0000                	.insn	2, 0x0000
     bc0:	0000                	.insn	2, 0x0000
     bc2:	6a11                	.insn	2, 0x6a11
     bc4:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
     bc8:	0122                	.insn	2, 0x0122
     bca:	008a                	.insn	2, 0x008a
     bcc:	0000                	.insn	2, 0x0000
     bce:	1084                	.insn	2, 0x1084
     bd0:	0001                	.insn	2, 0x0001
     bd2:	0000                	.insn	2, 0x0000
     bd4:	0000                	.insn	2, 0x0000
     bd6:	0080                	.insn	2, 0x0080
     bd8:	0000                	.insn	2, 0x0000
     bda:	0000                	.insn	2, 0x0000
     bdc:	0000                	.insn	2, 0x0000
     bde:	9c01                	.insn	2, 0x9c01
     be0:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     be4:	6912                	.insn	2, 0x6912
     be6:	0100                	.insn	2, 0x0100
     be8:	1522                	.insn	2, 0x1522
     bea:	0056                	.insn	2, 0x0056
     bec:	0000                	.insn	2, 0x0000
     bee:	1aaa                	.insn	2, 0x1aaa
     bf0:	0000                	.insn	2, 0x0000
     bf2:	1aa4                	.insn	2, 0x1aa4
     bf4:	0000                	.insn	2, 0x0000
     bf6:	635f4113          	xori	sp,t5,1589
     bfa:	0100                	.insn	2, 0x0100
     bfc:	0324                	.insn	2, 0x0324
     bfe:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     c02:	735f4103          	lbu	sp,1845(t5)
     c06:	2400                	.insn	2, 0x2400
     c08:	00022303          	lw	t1,0(tp) # 0 <exit-0x10120>
     c0c:	c000                	.insn	2, 0xc000
     c0e:	001a                	.insn	2, 0x001a
     c10:	be00                	.insn	2, 0xbe00
     c12:	001a                	.insn	2, 0x001a
     c14:	0300                	.insn	2, 0x0300
     c16:	5f41                	.insn	2, 0x5f41
     c18:	0065                	.insn	2, 0x0065
     c1a:	0324                	.insn	2, 0x0324
     c1c:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     c20:	1acd                	.insn	2, 0x1acd
     c22:	0000                	.insn	2, 0x0000
     c24:	00001acb          	.insn	4, 0x1acb
     c28:	665f4103          	lbu	sp,1637(t5)
     c2c:	2400                	.insn	2, 0x2400
     c2e:	0000c803          	lbu	a6,0(ra) # 0 <exit-0x10120>
     c32:	d500                	.insn	2, 0xd500
     c34:	001a                	.insn	2, 0x001a
     c36:	d300                	.insn	2, 0xd300
     c38:	001a                	.insn	2, 0x001a
     c3a:	0300                	.insn	2, 0x0300
     c3c:	0061                	.insn	2, 0x0061
     c3e:	0a25                	.insn	2, 0x0a25
     c40:	008a                	.insn	2, 0x008a
     c42:	0000                	.insn	2, 0x0000
     c44:	1adf 0000 1adb      	.insn	6, 0x1adb00001adf
     c4a:	0000                	.insn	2, 0x0000
     c4c:	3106                	.insn	2, 0x3106
     c4e:	0002                	.insn	2, 0x0002
     c50:	1200                	.insn	2, 0x1200
     c52:	0002                	.insn	2, 0x0002
     c54:	1400                	.insn	2, 0x1400
     c56:	033d                	.insn	2, 0x033d
     c58:	0000                	.insn	2, 0x0000
     c5a:	2701                	.insn	2, 0x2701
     c5c:	10981503          	lh	a0,265(a6)
     c60:	0001                	.insn	2, 0x0001
     c62:	0000                	.insn	2, 0x0000
     c64:	0000                	.insn	2, 0x0000
     c66:	0030                	.insn	2, 0x0030
     c68:	0000                	.insn	2, 0x0000
     c6a:	0000                	.insn	2, 0x0000
     c6c:	0000                	.insn	2, 0x0000
     c6e:	00034a07          	.insn	4, 0x00034a07
     c72:	7000                	.insn	2, 0x7000
     c74:	0000                	.insn	2, 0x0000
     c76:	f700                	.insn	2, 0xf700
     c78:	001a                	.insn	2, 0x001a
     c7a:	f100                	.insn	2, 0xf100
     c7c:	001a                	.insn	2, 0x001a
     c7e:	0600                	.insn	2, 0x0600
     c80:	023c                	.insn	2, 0x023c
     c82:	0000                	.insn	2, 0x0000
     c84:	01da                	.insn	2, 0x01da
     c86:	0000                	.insn	2, 0x0000
     c88:	00035a07          	.insn	4, 0x00035a07
     c8c:	6200                	.insn	2, 0x6200
     c8e:	0000                	.insn	2, 0x0000
     c90:	1000                	.insn	2, 0x1000
     c92:	0e00001b          	addiw	zero,zero,224
     c96:	1600001b          	addiw	zero,zero,352
     c9a:	10b8                	.insn	2, 0x10b8
     c9c:	0001                	.insn	2, 0x0001
     c9e:	0000                	.insn	2, 0x0000
     ca0:	0000                	.insn	2, 0x0000
     ca2:	022a                	.insn	2, 0x022a
     ca4:	0000                	.insn	2, 0x0000
     ca6:	0800                	.insn	2, 0x0800
     ca8:	1102                	.insn	2, 0x1102
     caa:	0002                	.insn	2, 0x0002
     cac:	2700                	.insn	2, 0x2700
     cae:	0062                	.insn	2, 0x0062
     cb0:	0000                	.insn	2, 0x0000
     cb2:	0208                	.insn	2, 0x0208
     cb4:	00df 0000 2327      	.insn	6, 0x2327000000df
     cba:	0002                	.insn	2, 0x0002
     cbc:	0200                	.insn	2, 0x0200
     cbe:	013c                	.insn	2, 0x013c
     cc0:	0000                	.insn	2, 0x0000
     cc2:	00022327          	.insn	4, 0x00022327
     cc6:	0200                	.insn	2, 0x0200
     cc8:	01df 0000 2327      	.insn	6, 0x2327000001df
     cce:	0002                	.insn	2, 0x0002
     cd0:	0200                	.insn	2, 0x0200
     cd2:	000000fb          	.insn	4, 0x00fb
     cd6:	0000c827          	.insn	4, 0xc827
     cda:	0000                	.insn	2, 0x0000
     cdc:	0000                	.insn	2, 0x0000
     cde:	1700                	.insn	2, 0x1700
     ce0:	00000243          	.insn	4, 0x0243
     ce4:	1202                	.insn	2, 0x1202
     ce6:	0000                	.insn	2, 0x0000
     ce8:	2800                	.insn	2, 0x2800
     cea:	000000cf          	.insn	4, 0x00cf
     cee:	0000                	.insn	2, 0x0000
     cf0:	0801                	.insn	2, 0x0801
     cf2:	a505                	.insn	2, 0xa505
     cf4:	0001                	.insn	2, 0x0001
     cf6:	1800                	.insn	2, 0x1800
     cf8:	0208                	.insn	2, 0x0208
     cfa:	0000                	.insn	2, 0x0000
     cfc:	0208                	.insn	2, 0x0208
     cfe:	0000                	.insn	2, 0x0000
     d00:	9100                	.insn	2, 0x9100
     d02:	0002                	.insn	2, 0x0002
     d04:	0500                	.insn	2, 0x0500
     d06:	0100                	.insn	2, 0x0100
     d08:	e708                	.insn	2, 0xe708
     d0a:	0005                	.insn	2, 0x0005
     d0c:	0d00                	.insn	2, 0x0d00
     d0e:	0025                	.insn	2, 0x0025
     d10:	0000                	.insn	2, 0x0000
     d12:	031d                	.insn	2, 0x031d
     d14:	00031647          	.insn	4, 0x00031647
     d18:	0166                	.insn	2, 0x0166
     d1a:	0000                	.insn	2, 0x0000
     d1c:	0025                	.insn	2, 0x0025
     d1e:	0000                	.insn	2, 0x0000
     d20:	1104                	.insn	2, 0x1104
     d22:	0001                	.insn	2, 0x0001
     d24:	0000                	.insn	2, 0x0000
     d26:	0000                	.insn	2, 0x0000
     d28:	00a4                	.insn	2, 0x00a4
     d2a:	0000                	.insn	2, 0x0000
     d2c:	0000                	.insn	2, 0x0000
     d2e:	0000                	.insn	2, 0x0000
     d30:	2a18                	.insn	2, 0x2a18
     d32:	0000                	.insn	2, 0x0000
     d34:	0401                	.insn	2, 0x0401
     d36:	0b04                	.insn	2, 0x0b04
     d38:	0004                	.insn	2, 0x0004
     d3a:	0100                	.insn	2, 0x0100
     d3c:	0408                	.insn	2, 0x0408
     d3e:	03e2                	.insn	2, 0x03e2
     d40:	0000                	.insn	2, 0x0000
     d42:	1001                	.insn	2, 0x1001
     d44:	5105                	.insn	2, 0x5105
     d46:	0001                	.insn	2, 0x0001
     d48:	0100                	.insn	2, 0x0100
     d4a:	0710                	.insn	2, 0x0710
     d4c:	0000                	.insn	2, 0x0000
     d4e:	0000                	.insn	2, 0x0000
     d50:	0801                	.insn	2, 0x0801
     d52:	aa05                	.insn	2, 0xaa05
     d54:	0001                	.insn	2, 0x0001
     d56:	0100                	.insn	2, 0x0100
     d58:	0601                	.insn	2, 0x0601
     d5a:	0000011b          	sext.w	sp,zero
     d5e:	040e                	.insn	2, 0x040e
     d60:	6905                	.insn	2, 0x6905
     d62:	746e                	.insn	2, 0x746e
     d64:	0100                	.insn	2, 0x0100
     d66:	0801                	.insn	2, 0x0801
     d68:	0119                	.insn	2, 0x0119
     d6a:	0000                	.insn	2, 0x0000
     d6c:	0401                	.insn	2, 0x0401
     d6e:	00017d07          	.insn	4, 0x00017d07
     d72:	0100                	.insn	2, 0x0100
     d74:	0708                	.insn	2, 0x0708
     d76:	0178                	.insn	2, 0x0178
     d78:	0000                	.insn	2, 0x0000
     d7a:	8f04                	.insn	2, 0x8f04
     d7c:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
     d80:	3341                	.insn	2, 0x3341
     d82:	0000                	.insn	2, 0x0000
     d84:	0500                	.insn	2, 0x0500
     d86:	0204                	.insn	2, 0x0204
     d88:	b646                	.insn	2, 0xb646
     d8a:	0000                	.insn	2, 0x0000
     d8c:	0300                	.insn	2, 0x0300
     d8e:	016e                	.insn	2, 0x016e
     d90:	0000                	.insn	2, 0x0000
     d92:	4d02                	.insn	2, 0x4d02
     d94:	6b0e                	.insn	2, 0x6b0e
     d96:	0000                	.insn	2, 0x0000
     d98:	1700                	.insn	2, 0x1700
     d9a:	0600                	.insn	2, 0x0600
     d9c:	7865                	.insn	2, 0x7865
     d9e:	0070                	.insn	2, 0x0070
     da0:	4e02                	.insn	2, 0x4e02
     da2:	0000006b          	.insn	4, 0x006b
     da6:	1708                	.insn	2, 0x1708
     da8:	0001fe03          	.insn	4, 0x0001fe03
     dac:	0200                	.insn	2, 0x0200
     dae:	006b0e4f          	.insn	4, 0x006b0e4f
     db2:	0000                	.insn	2, 0x0000
     db4:	1f01                	.insn	2, 0x1f01
     db6:	0700                	.insn	2, 0x0700
     db8:	00000383          	lb	t2,0(zero) # 0 <exit-0x10120>
     dbc:	0204                	.insn	2, 0x0204
     dbe:	0000d943          	.insn	4, 0xd943
     dc2:	0800                	.insn	2, 0x0800
     dc4:	6c66                	.insn	2, 0x6c66
     dc6:	0074                	.insn	2, 0x0074
     dc8:	4502                	.insn	2, 0x4502
     dca:	0079                	.insn	2, 0x0079
     dcc:	0000                	.insn	2, 0x0000
     dce:	0309                	.insn	2, 0x0309
     dd0:	0002                	.insn	2, 0x0002
     dd2:	0200                	.insn	2, 0x0200
     dd4:	8451                	.insn	2, 0x8451
     dd6:	0000                	.insn	2, 0x0000
     dd8:	0000                	.insn	2, 0x0000
     dda:	f404                	.insn	2, 0xf404
     ddc:	0000                	.insn	2, 0x0000
     dde:	0300                	.insn	2, 0x0300
     de0:	3a44                	.insn	2, 0x3a44
     de2:	0000                	.insn	2, 0x0000
     de4:	0500                	.insn	2, 0x0500
     de6:	0308                	.insn	2, 0x0308
     de8:	16c6                	.insn	2, 0x16c6
     dea:	0001                	.insn	2, 0x0001
     dec:	0300                	.insn	2, 0x0300
     dee:	016e                	.insn	2, 0x016e
     df0:	0000                	.insn	2, 0x0000
     df2:	1610cd03          	lbu	s10,353(ra)
     df6:	0001                	.insn	2, 0x0001
     df8:	3400                	.insn	2, 0x3400
     dfa:	0600                	.insn	2, 0x0600
     dfc:	7865                	.insn	2, 0x7865
     dfe:	0070                	.insn	2, 0x0070
     e00:	006bce03          	lbu	t3,6(s7)
     e04:	0000                	.insn	2, 0x0000
     e06:	fe03340b          	.insn	4, 0xfe03340b
     e0a:	0001                	.insn	2, 0x0001
     e0c:	0300                	.insn	2, 0x0300
     e0e:	006b0ecf          	.insn	4, 0x006b0ecf
     e12:	0000                	.insn	2, 0x0000
     e14:	3f01                	.insn	2, 0x3f01
     e16:	0100                	.insn	2, 0x0100
     e18:	0708                	.insn	2, 0x0708
     e1a:	00000173          	.insn	4, 0x0173
     e1e:	0001ca07          	.insn	4, 0x0001ca07
     e22:	0800                	.insn	2, 0x0800
     e24:	0140c303          	lbu	t1,20(ra)
     e28:	0000                	.insn	2, 0x0000
     e2a:	6608                	.insn	2, 0x6608
     e2c:	746c                	.insn	2, 0x746c
     e2e:	0300                	.insn	2, 0x0300
     e30:	d9c5                	.insn	2, 0xd9c5
     e32:	0000                	.insn	2, 0x0000
     e34:	0900                	.insn	2, 0x0900
     e36:	00000203          	lb	tp,0(zero) # 0 <exit-0x10120>
     e3a:	00e4d103          	lhu	sp,14(s1)
     e3e:	0000                	.insn	2, 0x0000
     e40:	0f00                	.insn	2, 0x0f00
     e42:	0396                	.insn	2, 0x0396
     e44:	0000                	.insn	2, 0x0000
     e46:	2301                	.insn	2, 0x2301
     e48:	d901                	.insn	2, 0xd901
     e4a:	0000                	.insn	2, 0x0000
     e4c:	0400                	.insn	2, 0x0400
     e4e:	0111                	.insn	2, 0x0111
     e50:	0000                	.insn	2, 0x0000
     e52:	0000                	.insn	2, 0x0000
     e54:	a400                	.insn	2, 0xa400
     e56:	0000                	.insn	2, 0x0000
     e58:	0000                	.insn	2, 0x0000
     e5a:	0000                	.insn	2, 0x0000
     e5c:	0100                	.insn	2, 0x0100
     e5e:	849c                	.insn	2, 0x849c
     e60:	0002                	.insn	2, 0x0002
     e62:	1000                	.insn	2, 0x1000
     e64:	0061                	.insn	2, 0x0061
     e66:	2301                	.insn	2, 0x2301
     e68:	00007917          	auipc	s2,0x7
     e6c:	2c00                	.insn	2, 0x2c00
     e6e:	2200001b          	addiw	zero,zero,544
     e72:	0a00001b          	addiw	zero,zero,160
     e76:	00da                	.insn	2, 0x00da
     e78:	0000                	.insn	2, 0x0000
     e7a:	5d25                	.insn	2, 0x5d25
     e7c:	0000                	.insn	2, 0x0000
     e7e:	5900                	.insn	2, 0x5900
     e80:	5300001b          	addiw	zero,zero,1328
     e84:	1100001b          	addiw	zero,zero,272
     e88:	022a                	.insn	2, 0x022a
     e8a:	0000                	.insn	2, 0x0000
     e8c:	2501                	.insn	2, 0x2501
     e8e:	00005d03          	lhu	s10,0(zero) # 0 <exit-0x10120>
     e92:	0000                	.insn	2, 0x0000
     e94:	635f410b          	.insn	4, 0x635f410b
     e98:	2600                	.insn	2, 0x2600
     e9a:	0284                	.insn	2, 0x0284
     e9c:	0000                	.insn	2, 0x0000
     e9e:	4102                	.insn	2, 0x4102
     ea0:	735f 2600 8403      	.insn	6, 0x84032600735f
     ea6:	0002                	.insn	2, 0x0002
     ea8:	7300                	.insn	2, 0x7300
     eaa:	6f00001b          	addiw	zero,zero,1776
     eae:	0200001b          	addiw	zero,zero,32
     eb2:	5f41                	.insn	2, 0x5f41
     eb4:	0065                	.insn	2, 0x0065
     eb6:	0326                	.insn	2, 0x0326
     eb8:	0284                	.insn	2, 0x0284
     eba:	0000                	.insn	2, 0x0000
     ebc:	00001b93          	slli	s7,zero,0x0
     ec0:	1b89                	.insn	2, 0x1b89
     ec2:	0000                	.insn	2, 0x0000
     ec4:	4102                	.insn	2, 0x4102
     ec6:	665f 2600 1603      	.insn	6, 0x16032600665f
     ecc:	0001                	.insn	2, 0x0001
     ece:	c500                	.insn	2, 0xc500
     ed0:	bb00001b          	addiw	zero,zero,-1104
     ed4:	0b00001b          	addiw	zero,zero,176
     ed8:	5f52                	.insn	2, 0x5f52
     eda:	84270063          	beq	a4,sp,ffffffffffffff1a <__BSS_END__+0xfffffffffffeaf2a>
     ede:	0002                	.insn	2, 0x0002
     ee0:	0200                	.insn	2, 0x0200
     ee2:	5f52                	.insn	2, 0x5f52
     ee4:	03270073          	.insn	4, 0x03270073
     ee8:	0284                	.insn	2, 0x0284
     eea:	0000                	.insn	2, 0x0000
     eec:	1bf8                	.insn	2, 0x1bf8
     eee:	0000                	.insn	2, 0x0000
     ef0:	1bf4                	.insn	2, 0x1bf4
     ef2:	0000                	.insn	2, 0x0000
     ef4:	5202                	.insn	2, 0x5202
     ef6:	655f 2700 8403      	.insn	6, 0x84032700655f
     efc:	0002                	.insn	2, 0x0002
     efe:	1400                	.insn	2, 0x1400
     f00:	001c                	.insn	2, 0x001c
     f02:	0e00                	.insn	2, 0x0e00
     f04:	001c                	.insn	2, 0x001c
     f06:	0200                	.insn	2, 0x0200
     f08:	5f52                	.insn	2, 0x5f52
     f0a:	0066                	.insn	2, 0x0066
     f0c:	01160327          	.insn	4, 0x01160327
     f10:	0000                	.insn	2, 0x0000
     f12:	1c31                	.insn	2, 0x1c31
     f14:	0000                	.insn	2, 0x0000
     f16:	00001c2b          	.insn	4, 0x1c2b
     f1a:	7202                	.insn	2, 0x7202
     f1c:	2800                	.insn	2, 0x2800
     f1e:	d90a                	.insn	2, 0xd90a
     f20:	0000                	.insn	2, 0x0000
     f22:	5200                	.insn	2, 0x5200
     f24:	001c                	.insn	2, 0x001c
     f26:	4e00                	.insn	2, 0x4e00
     f28:	001c                	.insn	2, 0x001c
     f2a:	1200                	.insn	2, 0x1200
     f2c:	0259                	.insn	2, 0x0259
     f2e:	0000                	.insn	2, 0x0000
     f30:	023e                	.insn	2, 0x023e
     f32:	0000                	.insn	2, 0x0000
     f34:	270c                	.insn	2, 0x270c
     f36:	0001                	.insn	2, 0x0001
     f38:	2b00                	.insn	2, 0x2b00
     f3a:	00b6                	.insn	2, 0x00b6
     f3c:	0000                	.insn	2, 0x0000
     f3e:	1300                	.insn	2, 0x1300
     f40:	1170                	.insn	2, 0x1170
     f42:	0001                	.insn	2, 0x0001
     f44:	0000                	.insn	2, 0x0000
     f46:	0000                	.insn	2, 0x0000
     f48:	001c                	.insn	2, 0x001c
     f4a:	0000                	.insn	2, 0x0000
     f4c:	0000                	.insn	2, 0x0000
     f4e:	0000                	.insn	2, 0x0000
     f50:	00000273          	.insn	4, 0x0273
     f54:	760a                	.insn	2, 0x760a
     f56:	2f000003          	lb	zero,752(zero) # 2f0 <exit-0xfe30>
     f5a:	005d                	.insn	2, 0x005d
     f5c:	0000                	.insn	2, 0x0000
     f5e:	1c66                	.insn	2, 0x1c66
     f60:	0000                	.insn	2, 0x0000
     f62:	1c64                	.insn	2, 0x1c64
     f64:	0000                	.insn	2, 0x0000
     f66:	7814                	.insn	2, 0x7814
     f68:	0111                	.insn	2, 0x0111
     f6a:	0000                	.insn	2, 0x0000
     f6c:	0000                	.insn	2, 0x0000
     f6e:	8b00                	.insn	2, 0x8b00
     f70:	0002                	.insn	2, 0x0002
     f72:	0000                	.insn	2, 0x0000
     f74:	6315                	.insn	2, 0x6315
     f76:	0002                	.insn	2, 0x0002
     f78:	0c00                	.insn	2, 0x0c00
     f7a:	0012                	.insn	2, 0x0012
     f7c:	0000                	.insn	2, 0x0000
     f7e:	1d31                	.insn	2, 0x1d31
     f80:	0001                	.insn	2, 0x0001
     f82:	0000                	.insn	2, 0x0000
     f84:	0100                	.insn	2, 0x0100
     f86:	0508                	.insn	2, 0x0508
     f88:	01a5                	.insn	2, 0x01a5
     f8a:	0000                	.insn	2, 0x0000
     f8c:	0816                	.insn	2, 0x0816
     f8e:	0002                	.insn	2, 0x0002
     f90:	0800                	.insn	2, 0x0800
     f92:	0002                	.insn	2, 0x0002
     f94:	0000                	.insn	2, 0x0000
     f96:	02c9                	.insn	2, 0x02c9
     f98:	0000                	.insn	2, 0x0000
     f9a:	0005                	.insn	2, 0x0005
     f9c:	0801                	.insn	2, 0x0801
     f9e:	0750                	.insn	2, 0x0750
     fa0:	0000                	.insn	2, 0x0000
     fa2:	0000250f          	.insn	4, 0x250f
     fa6:	1d00                	.insn	2, 0x1d00
     fa8:	03164703          	lbu	a4,49(a2)
     fac:	9900                	.insn	2, 0x9900
     fae:	0001                	.insn	2, 0x0001
     fb0:	2500                	.insn	2, 0x2500
     fb2:	0000                	.insn	2, 0x0000
     fb4:	a800                	.insn	2, 0xa800
     fb6:	0111                	.insn	2, 0x0111
     fb8:	0000                	.insn	2, 0x0000
     fba:	0000                	.insn	2, 0x0000
     fbc:	f400                	.insn	2, 0xf400
     fbe:	0000                	.insn	2, 0x0000
     fc0:	0000                	.insn	2, 0x0000
     fc2:	0000                	.insn	2, 0x0000
     fc4:	7300                	.insn	2, 0x7300
     fc6:	002d                	.insn	2, 0x002d
     fc8:	0100                	.insn	2, 0x0100
     fca:	0408                	.insn	2, 0x0408
     fcc:	03e2                	.insn	2, 0x03e2
     fce:	0000                	.insn	2, 0x0000
     fd0:	1001                	.insn	2, 0x1001
     fd2:	5105                	.insn	2, 0x5105
     fd4:	0001                	.insn	2, 0x0001
     fd6:	0100                	.insn	2, 0x0100
     fd8:	0710                	.insn	2, 0x0710
     fda:	0000                	.insn	2, 0x0000
     fdc:	0000                	.insn	2, 0x0000
     fde:	0801                	.insn	2, 0x0801
     fe0:	aa05                	.insn	2, 0xaa05
     fe2:	0001                	.insn	2, 0x0001
     fe4:	0100                	.insn	2, 0x0100
     fe6:	0601                	.insn	2, 0x0601
     fe8:	0000011b          	sext.w	sp,zero
     fec:	0410                	.insn	2, 0x0410
     fee:	6905                	.insn	2, 0x6905
     ff0:	746e                	.insn	2, 0x746e
     ff2:	0100                	.insn	2, 0x0100
     ff4:	0801                	.insn	2, 0x0801
     ff6:	0119                	.insn	2, 0x0119
     ff8:	0000                	.insn	2, 0x0000
     ffa:	0401                	.insn	2, 0x0401
     ffc:	00017d07          	.insn	4, 0x00017d07
    1000:	0100                	.insn	2, 0x0100
    1002:	0708                	.insn	2, 0x0708
    1004:	0178                	.insn	2, 0x0178
    1006:	0000                	.insn	2, 0x0000
    1008:	8f06                	.insn	2, 0x8f06
    100a:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
    100e:	7d41                	.insn	2, 0x7d41
    1010:	0000                	.insn	2, 0x0000
    1012:	0100                	.insn	2, 0x0100
    1014:	0404                	.insn	2, 0x0404
    1016:	0000040b          	.insn	4, 0x040b
    101a:	46020407          	.insn	4, 0x46020407
    101e:	00b6                	.insn	2, 0x00b6
    1020:	0000                	.insn	2, 0x0000
    1022:	6e04                	.insn	2, 0x6e04
    1024:	0001                	.insn	2, 0x0001
    1026:	0200                	.insn	2, 0x0200
    1028:	0e4d                	.insn	2, 0x0e4d
    102a:	0064                	.insn	2, 0x0064
    102c:	0000                	.insn	2, 0x0000
    102e:	65080017          	auipc	zero,0x65080
    1032:	7078                	.insn	2, 0x7078
    1034:	0200                	.insn	2, 0x0200
    1036:	644e                	.insn	2, 0x644e
    1038:	0000                	.insn	2, 0x0000
    103a:	0800                	.insn	2, 0x0800
    103c:	01fe0417          	auipc	s0,0x1fe0
    1040:	0000                	.insn	2, 0x0000
    1042:	4f02                	.insn	2, 0x4f02
    1044:	640e                	.insn	2, 0x640e
    1046:	0000                	.insn	2, 0x0000
    1048:	0100                	.insn	2, 0x0100
    104a:	001f 8309 0003      	.insn	6, 0x00038309001f
    1050:	0400                	.insn	2, 0x0400
    1052:	4302                	.insn	2, 0x4302
    1054:	00d9                	.insn	2, 0x00d9
    1056:	0000                	.insn	2, 0x0000
    1058:	660a                	.insn	2, 0x660a
    105a:	746c                	.insn	2, 0x746c
    105c:	0200                	.insn	2, 0x0200
    105e:	7245                	.insn	2, 0x7245
    1060:	0000                	.insn	2, 0x0000
    1062:	0b00                	.insn	2, 0x0b00
    1064:	00000203          	lb	tp,0(zero) # 0 <exit-0x10120>
    1068:	5102                	.insn	2, 0x5102
    106a:	0084                	.insn	2, 0x0084
    106c:	0000                	.insn	2, 0x0000
    106e:	0600                	.insn	2, 0x0600
    1070:	00f4                	.insn	2, 0x00f4
    1072:	0000                	.insn	2, 0x0000
    1074:	00334403          	lbu	s0,3(t1) # df0a77 <__BSS_END__+0xddba87>
    1078:	0000                	.insn	2, 0x0000
    107a:	c6030807          	.insn	4, 0xc6030807
    107e:	0116                	.insn	2, 0x0116
    1080:	0000                	.insn	2, 0x0000
    1082:	6e04                	.insn	2, 0x6e04
    1084:	0001                	.insn	2, 0x0001
    1086:	0300                	.insn	2, 0x0300
    1088:	10cd                	.insn	2, 0x10cd
    108a:	0116                	.insn	2, 0x0116
    108c:	0000                	.insn	2, 0x0000
    108e:	0034                	.insn	2, 0x0034
    1090:	6508                	.insn	2, 0x6508
    1092:	7078                	.insn	2, 0x7078
    1094:	0300                	.insn	2, 0x0300
    1096:	64ce                	.insn	2, 0x64ce
    1098:	0000                	.insn	2, 0x0000
    109a:	0b00                	.insn	2, 0x0b00
    109c:	0434                	.insn	2, 0x0434
    109e:	01fe                	.insn	2, 0x01fe
    10a0:	0000                	.insn	2, 0x0000
    10a2:	640ecf03          	lbu	t5,1600(t4)
    10a6:	0000                	.insn	2, 0x0000
    10a8:	0100                	.insn	2, 0x0100
    10aa:	0801003f 00017307 	.insn	8, 0x000173070801003f
    10b2:	0900                	.insn	2, 0x0900
    10b4:	01ca                	.insn	2, 0x01ca
    10b6:	0000                	.insn	2, 0x0000
    10b8:	0308                	.insn	2, 0x0308
    10ba:	000140c3          	.insn	4, 0x000140c3
    10be:	0a00                	.insn	2, 0x0a00
    10c0:	6c66                	.insn	2, 0x6c66
    10c2:	0074                	.insn	2, 0x0074
    10c4:	00d9c503          	lbu	a0,13(s3)
    10c8:	0000                	.insn	2, 0x0000
    10ca:	0002030b          	.insn	4, 0x0002030b
    10ce:	0300                	.insn	2, 0x0300
    10d0:	e4d1                	.insn	2, 0xe4d1
    10d2:	0000                	.insn	2, 0x0000
    10d4:	0000                	.insn	2, 0x0000
    10d6:	a411                	.insn	2, 0xa411
    10d8:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
    10dc:	0122                	.insn	2, 0x0122
    10de:	0072                	.insn	2, 0x0072
    10e0:	0000                	.insn	2, 0x0000
    10e2:	11a8                	.insn	2, 0x11a8
    10e4:	0001                	.insn	2, 0x0001
    10e6:	0000                	.insn	2, 0x0000
    10e8:	0000                	.insn	2, 0x0000
    10ea:	00f4                	.insn	2, 0x00f4
    10ec:	0000                	.insn	2, 0x0000
    10ee:	0000                	.insn	2, 0x0000
    10f0:	0000                	.insn	2, 0x0000
    10f2:	9c01                	.insn	2, 0x9c01
    10f4:	02c5                	.insn	2, 0x02c5
    10f6:	0000                	.insn	2, 0x0000
    10f8:	6112                	.insn	2, 0x6112
    10fa:	0100                	.insn	2, 0x0100
    10fc:	1622                	.insn	2, 0x1622
    10fe:	00d9                	.insn	2, 0x00d9
    1100:	0000                	.insn	2, 0x0000
    1102:	1c7d                	.insn	2, 0x1c7d
    1104:	0000                	.insn	2, 0x0000
    1106:	1c79                	.insn	2, 0x1c79
    1108:	0000                	.insn	2, 0x0000
    110a:	da02                	.insn	2, 0xda02
    110c:	0000                	.insn	2, 0x0000
    110e:	2400                	.insn	2, 0x2400
    1110:	0056                	.insn	2, 0x0056
    1112:	0000                	.insn	2, 0x0000
    1114:	1c9a                	.insn	2, 0x1c9a
    1116:	0000                	.insn	2, 0x0000
    1118:	1c8e                	.insn	2, 0x1c8e
    111a:	0000                	.insn	2, 0x0000
    111c:	00022a13          	slti	s4,tp,0
    1120:	0100                	.insn	2, 0x0100
    1122:	0324                	.insn	2, 0x0324
    1124:	0056                	.insn	2, 0x0056
    1126:	0000                	.insn	2, 0x0000
    1128:	0500                	.insn	2, 0x0500
    112a:	5f41                	.insn	2, 0x5f41
    112c:	03250063          	beq	a0,s2,114c <exit-0xefd4>
    1130:	02c5                	.insn	2, 0x02c5
    1132:	0000                	.insn	2, 0x0000
    1134:	735f4103          	lbu	sp,1845(t5)
    1138:	2500                	.insn	2, 0x2500
    113a:	02c5                	.insn	2, 0x02c5
    113c:	0000                	.insn	2, 0x0000
    113e:	1cc9                	.insn	2, 0x1cc9
    1140:	0000                	.insn	2, 0x0000
    1142:	00001cbf 655f4103 	.insn	8, 0x655f410300001cbf
    114a:	2500                	.insn	2, 0x2500
    114c:	02c5                	.insn	2, 0x02c5
    114e:	0000                	.insn	2, 0x0000
    1150:	00001d07          	.insn	4, 0x1d07
    1154:	1cf5                	.insn	2, 0x1cf5
    1156:	0000                	.insn	2, 0x0000
    1158:	665f4103          	lbu	sp,1637(t5)
    115c:	2500                	.insn	2, 0x2500
    115e:	0116                	.insn	2, 0x0116
    1160:	0000                	.insn	2, 0x0000
    1162:	1d55                	.insn	2, 0x1d55
    1164:	0000                	.insn	2, 0x0000
    1166:	1d41                	.insn	2, 0x1d41
    1168:	0000                	.insn	2, 0x0000
    116a:	5205                	.insn	2, 0x5205
    116c:	635f 2600 c503      	.insn	6, 0xc5032600635f
    1172:	0002                	.insn	2, 0x0002
    1174:	0300                	.insn	2, 0x0300
    1176:	5f52                	.insn	2, 0x5f52
    1178:	c5260073          	.insn	4, 0xc5260073
    117c:	0002                	.insn	2, 0x0002
    117e:	9400                	.insn	2, 0x9400
    1180:	001d                	.insn	2, 0x001d
    1182:	8a00                	.insn	2, 0x8a00
    1184:	001d                	.insn	2, 0x001d
    1186:	0300                	.insn	2, 0x0300
    1188:	5f52                	.insn	2, 0x5f52
    118a:	0065                	.insn	2, 0x0065
    118c:	c526                	.insn	2, 0xc526
    118e:	0002                	.insn	2, 0x0002
    1190:	d300                	.insn	2, 0xd300
    1192:	001d                	.insn	2, 0x001d
    1194:	c000                	.insn	2, 0xc000
    1196:	001d                	.insn	2, 0x001d
    1198:	0300                	.insn	2, 0x0300
    119a:	5f52                	.insn	2, 0x5f52
    119c:	0066                	.insn	2, 0x0066
    119e:	1626                	.insn	2, 0x1626
    11a0:	0001                	.insn	2, 0x0001
    11a2:	1600                	.insn	2, 0x1600
    11a4:	001e                	.insn	2, 0x001e
    11a6:	0600                	.insn	2, 0x0600
    11a8:	001e                	.insn	2, 0x001e
    11aa:	0500                	.insn	2, 0x0500
    11ac:	0072                	.insn	2, 0x0072
    11ae:	00720a27          	.insn	4, 0x00720a27
    11b2:	0000                	.insn	2, 0x0000
    11b4:	790c                	.insn	2, 0x790c
    11b6:	0002                	.insn	2, 0x0002
    11b8:	3200                	.insn	2, 0x3200
    11ba:	0002                	.insn	2, 0x0002
    11bc:	0d00                	.insn	2, 0x0d00
    11be:	00000127          	.insn	4, 0x0127
    11c2:	1d2a                	.insn	2, 0x1d2a
    11c4:	0001                	.insn	2, 0x0001
    11c6:	0000                	.insn	2, 0x0000
    11c8:	830c                	.insn	2, 0x830c
    11ca:	0002                	.insn	2, 0x0002
    11cc:	a000                	.insn	2, 0xa000
    11ce:	0002                	.insn	2, 0x0002
    11d0:	0200                	.insn	2, 0x0200
    11d2:	0211                	.insn	2, 0x0211
    11d4:	0000                	.insn	2, 0x0000
    11d6:	5630                	.insn	2, 0x5630
    11d8:	0000                	.insn	2, 0x0000
    11da:	4b00                	.insn	2, 0x4b00
    11dc:	001e                	.insn	2, 0x001e
    11de:	4900                	.insn	2, 0x4900
    11e0:	001e                	.insn	2, 0x001e
    11e2:	0e00                	.insn	2, 0x0e00
    11e4:	120c                	.insn	2, 0x120c
    11e6:	0001                	.insn	2, 0x0001
    11e8:	0000                	.insn	2, 0x0000
    11ea:	0000                	.insn	2, 0x0000
    11ec:	0004                	.insn	2, 0x0004
    11ee:	0000                	.insn	2, 0x0000
    11f0:	0000                	.insn	2, 0x0000
    11f2:	0000                	.insn	2, 0x0000
    11f4:	df0d                	.insn	2, 0xdf0d
    11f6:	0000                	.insn	2, 0x0000
    11f8:	3000                	.insn	2, 0x3000
    11fa:	02c5                	.insn	2, 0x02c5
    11fc:	0000                	.insn	2, 0x0000
    11fe:	3c02                	.insn	2, 0x3c02
    1200:	0001                	.insn	2, 0x0001
    1202:	3000                	.insn	2, 0x3000
    1204:	02c5                	.insn	2, 0x02c5
    1206:	0000                	.insn	2, 0x0000
    1208:	1e54                	.insn	2, 0x1e54
    120a:	0000                	.insn	2, 0x0000
    120c:	1e52                	.insn	2, 0x1e52
    120e:	0000                	.insn	2, 0x0000
    1210:	df02                	.insn	2, 0xdf02
    1212:	0001                	.insn	2, 0x0001
    1214:	3000                	.insn	2, 0x3000
    1216:	02c5                	.insn	2, 0x02c5
    1218:	0000                	.insn	2, 0x0000
    121a:	1e61                	.insn	2, 0x1e61
    121c:	0000                	.insn	2, 0x0000
    121e:	1e5f 0000 fb02      	.insn	6, 0xfb0200001e5f
    1224:	0000                	.insn	2, 0x0000
    1226:	3000                	.insn	2, 0x3000
    1228:	0116                	.insn	2, 0x0116
    122a:	0000                	.insn	2, 0x0000
    122c:	1e6a                	.insn	2, 0x1e6a
    122e:	0000                	.insn	2, 0x0000
    1230:	1e68                	.insn	2, 0x1e68
    1232:	0000                	.insn	2, 0x0000
    1234:	0000                	.insn	2, 0x0000
    1236:	5c0e                	.insn	2, 0x5c0e
    1238:	0112                	.insn	2, 0x0112
    123a:	0000                	.insn	2, 0x0000
    123c:	0000                	.insn	2, 0x0000
    123e:	0c00                	.insn	2, 0x0c00
    1240:	0000                	.insn	2, 0x0000
    1242:	0000                	.insn	2, 0x0000
    1244:	0000                	.insn	2, 0x0000
    1246:	0200                	.insn	2, 0x0200
    1248:	0012                	.insn	2, 0x0012
    124a:	0000                	.insn	2, 0x0000
    124c:	b630                	.insn	2, 0xb630
    124e:	0000                	.insn	2, 0x0000
    1250:	7800                	.insn	2, 0x7800
    1252:	001e                	.insn	2, 0x001e
    1254:	7600                	.insn	2, 0x7600
    1256:	001e                	.insn	2, 0x001e
    1258:	0000                	.insn	2, 0x0000
    125a:	0100                	.insn	2, 0x0100
    125c:	0508                	.insn	2, 0x0508
    125e:	01a5                	.insn	2, 0x01a5
    1260:	0000                	.insn	2, 0x0000
    1262:	8200                	.insn	2, 0x8200
    1264:	0001                	.insn	2, 0x0001
    1266:	0500                	.insn	2, 0x0500
    1268:	0100                	.insn	2, 0x0100
    126a:	9a08                	.insn	2, 0x9a08
    126c:	0008                	.insn	2, 0x0008
    126e:	0400                	.insn	2, 0x0400
    1270:	0025                	.insn	2, 0x0025
    1272:	0000                	.insn	2, 0x0000
    1274:	031d                	.insn	2, 0x031d
    1276:	00031647          	.insn	4, 0x00031647
    127a:	01d5                	.insn	2, 0x01d5
    127c:	0000                	.insn	2, 0x0000
    127e:	0025                	.insn	2, 0x0025
    1280:	0000                	.insn	2, 0x0000
    1282:	129c                	.insn	2, 0x129c
    1284:	0001                	.insn	2, 0x0001
    1286:	0000                	.insn	2, 0x0000
    1288:	0000                	.insn	2, 0x0000
    128a:	0040                	.insn	2, 0x0040
    128c:	0000                	.insn	2, 0x0000
    128e:	0000                	.insn	2, 0x0000
    1290:	0000                	.insn	2, 0x0000
    1292:	31f8                	.insn	2, 0x31f8
    1294:	0000                	.insn	2, 0x0000
    1296:	0801                	.insn	2, 0x0801
    1298:	aa05                	.insn	2, 0xaa05
    129a:	0001                	.insn	2, 0x0001
    129c:	0100                	.insn	2, 0x0100
    129e:	0708                	.insn	2, 0x0708
    12a0:	0178                	.insn	2, 0x0178
    12a2:	0000                	.insn	2, 0x0000
    12a4:	0405                	.insn	2, 0x0405
    12a6:	6905                	.insn	2, 0x6905
    12a8:	746e                	.insn	2, 0x746e
    12aa:	0100                	.insn	2, 0x0100
    12ac:	0508                	.insn	2, 0x0508
    12ae:	01a5                	.insn	2, 0x01a5
    12b0:	0000                	.insn	2, 0x0000
    12b2:	1001                	.insn	2, 0x1001
    12b4:	dd04                	.insn	2, 0xdd04
    12b6:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
    12ba:	0601                	.insn	2, 0x0601
    12bc:	0000011b          	sext.w	sp,zero
    12c0:	0101                	.insn	2, 0x0101
    12c2:	1908                	.insn	2, 0x1908
    12c4:	0001                	.insn	2, 0x0001
    12c6:	0100                	.insn	2, 0x0100
    12c8:	0502                	.insn	2, 0x0502
    12ca:	0416                	.insn	2, 0x0416
    12cc:	0000                	.insn	2, 0x0000
    12ce:	0201                	.insn	2, 0x0201
    12d0:	0003c207          	.insn	4, 0x0003c207
    12d4:	0100                	.insn	2, 0x0100
    12d6:	0704                	.insn	2, 0x0704
    12d8:	017d                	.insn	2, 0x017d
    12da:	0000                	.insn	2, 0x0000
    12dc:	0101                	.insn	2, 0x0101
    12de:	2208                	.insn	2, 0x2208
    12e0:	0001                	.insn	2, 0x0001
    12e2:	0100                	.insn	2, 0x0100
    12e4:	0708                	.insn	2, 0x0708
    12e6:	00000173          	.insn	4, 0x0173
    12ea:	0101                	.insn	2, 0x0101
    12ec:	2f02                	.insn	2, 0x2f02
    12ee:	0004                	.insn	2, 0x0004
    12f0:	0200                	.insn	2, 0x0200
    12f2:	03e9                	.insn	2, 0x03e9
    12f4:	0000                	.insn	2, 0x0000
    12f6:	167e                	.insn	2, 0x167e
    12f8:	005d                	.insn	2, 0x005d
    12fa:	0000                	.insn	2, 0x0000
    12fc:	00008e03          	lb	t3,0(ra)
    1300:	0200                	.insn	2, 0x0200
    1302:	03fc                	.insn	2, 0x03fc
    1304:	0000                	.insn	2, 0x0000
    1306:	00330f87          	.insn	4, 0x00330f87
    130a:	0000                	.insn	2, 0x0000
    130c:	fb02                	.insn	2, 0xfb02
    130e:	88000003          	lb	zero,-1920(zero) # fffffffffffff880 <__BSS_END__+0xfffffffffffea890>
    1312:	3a16                	.insn	2, 0x3a16
    1314:	0000                	.insn	2, 0x0000
    1316:	0100                	.insn	2, 0x0100
    1318:	0510                	.insn	2, 0x0510
    131a:	0151                	.insn	2, 0x0151
    131c:	0000                	.insn	2, 0x0000
    131e:	1001                	.insn	2, 0x1001
    1320:	00000007          	.insn	4, 0x0007
    1324:	0100                	.insn	2, 0x0100
    1326:	0402                	.insn	2, 0x0402
    1328:	03b9                	.insn	2, 0x03b9
    132a:	0000                	.insn	2, 0x0000
    132c:	0401                	.insn	2, 0x0401
    132e:	0003b103          	ld	sp,0(t2)
    1332:	0100                	.insn	2, 0x0100
    1334:	0404                	.insn	2, 0x0404
    1336:	0000040b          	.insn	4, 0x040b
    133a:	0801                	.insn	2, 0x0801
    133c:	00040303          	lb	t1,0(s0) # 1fe103c <__BSS_END__+0x1fcc04c>
    1340:	0100                	.insn	2, 0x0100
    1342:	0408                	.insn	2, 0x0408
    1344:	03e2                	.insn	2, 0x03e2
    1346:	0000                	.insn	2, 0x0000
    1348:	1001                	.insn	2, 0x1001
    134a:	00042003          	lw	zero,0(s0)
    134e:	0100                	.insn	2, 0x0100
    1350:	0320                	.insn	2, 0x0320
    1352:	03d5                	.insn	2, 0x03d5
    1354:	0000                	.insn	2, 0x0000
    1356:	9906                	.insn	2, 0x9906
    1358:	0000                	.insn	2, 0x0000
    135a:	0300                	.insn	2, 0x0300
    135c:	0001                	.insn	2, 0x0001
    135e:	0700                	.insn	2, 0x0700
    1360:	003a                	.insn	2, 0x003a
    1362:	0000                	.insn	2, 0x0000
    1364:	00ff f303 0000 0800 	.insn	10, 0x03f108000000f30300ff
    136c:	03f1 
    136e:	0000                	.insn	2, 0x0000
    1370:	1a02                	.insn	2, 0x1a02
    1372:	1602                	.insn	2, 0x1602
    1374:	00000103          	lb	sp,0(zero) # 0 <exit-0x10120>
    1378:	0809                	.insn	2, 0x0809
    137a:	0002                	.insn	2, 0x0002
    137c:	0100                	.insn	2, 0x0100
    137e:	02ae                	.insn	2, 0x02ae
    1380:	4101                	.insn	2, 0x4101
    1382:	0000                	.insn	2, 0x0000
    1384:	9c00                	.insn	2, 0x9c00
    1386:	0112                	.insn	2, 0x0112
    1388:	0000                	.insn	2, 0x0000
    138a:	0000                	.insn	2, 0x0000
    138c:	4000                	.insn	2, 0x4000
    138e:	0000                	.insn	2, 0x0000
    1390:	0000                	.insn	2, 0x0000
    1392:	0000                	.insn	2, 0x0000
    1394:	0100                	.insn	2, 0x0100
    1396:	0a9c                	.insn	2, 0x0a9c
    1398:	0078                	.insn	2, 0x0078
    139a:	ae01                	.insn	2, 0xae01
    139c:	1202                	.insn	2, 0x1202
    139e:	00a9                	.insn	2, 0x00a9
    13a0:	0000                	.insn	2, 0x0000
    13a2:	1e95                	.insn	2, 0x1e95
    13a4:	0000                	.insn	2, 0x0000
    13a6:	1e8d                	.insn	2, 0x1e8d
    13a8:	0000                	.insn	2, 0x0000
    13aa:	7465720b          	.insn	4, 0x7465720b
    13ae:	0100                	.insn	2, 0x0100
    13b0:	02b0                	.insn	2, 0x02b0
    13b2:	9e09                	.insn	2, 0x9e09
    13b4:	0000                	.insn	2, 0x0000
    13b6:	0c00                	.insn	2, 0x0c00
    13b8:	02a8                	.insn	2, 0x02a8
    13ba:	0000                	.insn	2, 0x0000
    13bc:	110d                	.insn	2, 0x110d
    13be:	0004                	.insn	2, 0x0004
    13c0:	0100                	.insn	2, 0x0100
    13c2:	02b2                	.insn	2, 0x02b2
    13c4:	0000a903          	lw	s2,0(ra)
    13c8:	b800                	.insn	2, 0xb800
    13ca:	001e                	.insn	2, 0x001e
    13cc:	b000                	.insn	2, 0xb000
    13ce:	001e                	.insn	2, 0x001e
    13d0:	0e00                	.insn	2, 0x0e00
    13d2:	5f5f 0061 b201      	.insn	6, 0xb20100615f5f
    13d8:	0302                	.insn	2, 0x0302
    13da:	00a9                	.insn	2, 0x00a9
    13dc:	0000                	.insn	2, 0x0000
    13de:	1ed9                	.insn	2, 0x1ed9
    13e0:	0000                	.insn	2, 0x0000
    13e2:	00001ed3          	.insn	4, 0x1ed3
    13e6:	0000                	.insn	2, 0x0000
    13e8:	0000                	.insn	2, 0x0000
    13ea:	0001                	.insn	2, 0x0001
    13ec:	0500                	.insn	2, 0x0500
    13ee:	0100                	.insn	2, 0x0100
    13f0:	7308                	.insn	2, 0x7308
    13f2:	0009                	.insn	2, 0x0009
    13f4:	0300                	.insn	2, 0x0300
    13f6:	0025                	.insn	2, 0x0025
    13f8:	0000                	.insn	2, 0x0000
    13fa:	031d                	.insn	2, 0x031d
    13fc:	00031647          	.insn	4, 0x00031647
    1400:	01d5                	.insn	2, 0x01d5
    1402:	0000                	.insn	2, 0x0000
    1404:	0025                	.insn	2, 0x0025
    1406:	0000                	.insn	2, 0x0000
    1408:	000032fb          	.insn	4, 0x32fb
    140c:	0801                	.insn	2, 0x0801
    140e:	aa05                	.insn	2, 0xaa05
    1410:	0001                	.insn	2, 0x0001
    1412:	0100                	.insn	2, 0x0100
    1414:	0708                	.insn	2, 0x0708
    1416:	0178                	.insn	2, 0x0178
    1418:	0000                	.insn	2, 0x0000
    141a:	0404                	.insn	2, 0x0404
    141c:	6905                	.insn	2, 0x6905
    141e:	746e                	.insn	2, 0x746e
    1420:	0100                	.insn	2, 0x0100
    1422:	0508                	.insn	2, 0x0508
    1424:	01a5                	.insn	2, 0x01a5
    1426:	0000                	.insn	2, 0x0000
    1428:	1001                	.insn	2, 0x1001
    142a:	dd04                	.insn	2, 0xdd04
    142c:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
    1430:	0601                	.insn	2, 0x0601
    1432:	0000011b          	sext.w	sp,zero
    1436:	0101                	.insn	2, 0x0101
    1438:	1908                	.insn	2, 0x1908
    143a:	0001                	.insn	2, 0x0001
    143c:	0100                	.insn	2, 0x0100
    143e:	0502                	.insn	2, 0x0502
    1440:	0416                	.insn	2, 0x0416
    1442:	0000                	.insn	2, 0x0000
    1444:	0201                	.insn	2, 0x0201
    1446:	0003c207          	.insn	4, 0x0003c207
    144a:	0100                	.insn	2, 0x0100
    144c:	0704                	.insn	2, 0x0704
    144e:	017d                	.insn	2, 0x017d
    1450:	0000                	.insn	2, 0x0000
    1452:	0101                	.insn	2, 0x0101
    1454:	2208                	.insn	2, 0x2208
    1456:	0001                	.insn	2, 0x0001
    1458:	0100                	.insn	2, 0x0100
    145a:	0708                	.insn	2, 0x0708
    145c:	00000173          	.insn	4, 0x0173
    1460:	0101                	.insn	2, 0x0101
    1462:	2f02                	.insn	2, 0x2f02
    1464:	0004                	.insn	2, 0x0004
    1466:	0500                	.insn	2, 0x0500
    1468:	03e9                	.insn	2, 0x03e9
    146a:	0000                	.insn	2, 0x0000
    146c:	7e02                	.insn	2, 0x7e02
    146e:	4d16                	.insn	2, 0x4d16
    1470:	0000                	.insn	2, 0x0000
    1472:	0200                	.insn	2, 0x0200
    1474:	007e                	.insn	2, 0x007e
    1476:	0000                	.insn	2, 0x0000
    1478:	1001                	.insn	2, 0x1001
    147a:	5105                	.insn	2, 0x5105
    147c:	0001                	.insn	2, 0x0001
    147e:	0100                	.insn	2, 0x0100
    1480:	0710                	.insn	2, 0x0710
    1482:	0000                	.insn	2, 0x0000
    1484:	0000                	.insn	2, 0x0000
    1486:	0201                	.insn	2, 0x0201
    1488:	b904                	.insn	2, 0xb904
    148a:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
    148e:	0304                	.insn	2, 0x0304
    1490:	03b1                	.insn	2, 0x03b1
    1492:	0000                	.insn	2, 0x0000
    1494:	0401                	.insn	2, 0x0401
    1496:	0b04                	.insn	2, 0x0b04
    1498:	0004                	.insn	2, 0x0004
    149a:	0100                	.insn	2, 0x0100
    149c:	0308                	.insn	2, 0x0308
    149e:	00000403          	lb	s0,0(zero) # 0 <exit-0x10120>
    14a2:	0801                	.insn	2, 0x0801
    14a4:	e204                	.insn	2, 0xe204
    14a6:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
    14aa:	0310                	.insn	2, 0x0310
    14ac:	0420                	.insn	2, 0x0420
    14ae:	0000                	.insn	2, 0x0000
    14b0:	2001                	.insn	2, 0x2001
    14b2:	0003d503          	lhu	a0,0(t2)
    14b6:	0600                	.insn	2, 0x0600
    14b8:	008a                	.insn	2, 0x008a
    14ba:	0000                	.insn	2, 0x0000
    14bc:	00de                	.insn	2, 0x00de
    14be:	0000                	.insn	2, 0x0000
    14c0:	00002a07          	.insn	4, 0x2a07
    14c4:	ff00                	.insn	2, 0xff00
    14c6:	0200                	.insn	2, 0x0200
    14c8:	00ce                	.insn	2, 0x00ce
    14ca:	0000                	.insn	2, 0x0000
    14cc:	f108                	.insn	2, 0xf108
    14ce:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
    14d2:	021a                	.insn	2, 0x021a
    14d4:	de16                	.insn	2, 0xde16
    14d6:	0000                	.insn	2, 0x0000
    14d8:	0900                	.insn	2, 0x0900
    14da:	000000e3          	beqz	zero,1cda <exit-0xe446>
    14de:	9e01                	.insn	2, 0x9e01
    14e0:	0f02                	.insn	2, 0x0f02
    14e2:	0309                	.insn	2, 0x0309
    14e4:	3208                	.insn	2, 0x3208
    14e6:	0001                	.insn	2, 0x0001
    14e8:	0000                	.insn	2, 0x0000
    14ea:	0000                	.insn	2, 0x0000
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	2401                	.insn	2, 0x2401
   2:	0b00                	.insn	2, 0x0b00
   4:	030b3e0b          	.insn	4, 0x030b3e0b
   8:	000e                	.insn	2, 0x000e
   a:	0200                	.insn	2, 0x0200
   c:	0034                	.insn	2, 0x0034
   e:	213a0803          	lb	a6,531(s4)
  12:	3b01                	.insn	2, 0x3b01
  14:	490b390b          	.insn	4, 0x490b390b
  18:	b7170213          	addi	tp,a4,-1167
  1c:	1742                	.insn	2, 0x1742
  1e:	0000                	.insn	2, 0x0000
  20:	03003403          	ld	s0,48(zero) # 30 <exit-0x100f0>
  24:	3a0e                	.insn	2, 0x3a0e
  26:	0121                	.insn	2, 0x0121
  28:	21390b3b          	.insn	4, 0x21390b3b
  2c:	00134903          	lbu	s2,1(t1)
  30:	0400                	.insn	2, 0x0400
  32:	000a                	.insn	2, 0x000a
  34:	213a0e03          	lb	t3,531(s4)
  38:	3b01                	.insn	2, 0x3b01
  3a:	2c21                	.insn	2, 0x2c21
  3c:	2139                	.insn	2, 0x2139
  3e:	00011103          	lh	sp,0(sp)
  42:	0500                	.insn	2, 0x0500
  44:	1755010b          	.insn	4, 0x1755010b
  48:	1301                	.insn	2, 0x1301
  4a:	0000                	.insn	2, 0x0000
  4c:	3406                	.insn	2, 0x3406
  4e:	0300                	.insn	2, 0x0300
  50:	3a0e                	.insn	2, 0x3a0e
  52:	0121                	.insn	2, 0x0121
  54:	21390b3b          	.insn	4, 0x21390b3b
  58:	02134903          	lbu	s2,33(t1)
  5c:	1742b717          	auipc	a4,0x1742b
  60:	0000                	.insn	2, 0x0000
  62:	03003407          	.insn	4, 0x03003407
  66:	3a08                	.insn	2, 0x3a08
  68:	0121                	.insn	2, 0x0121
  6a:	21390b3b          	.insn	4, 0x21390b3b
  6e:	00134903          	lbu	s2,1(t1)
  72:	0800                	.insn	2, 0x0800
  74:	000d                	.insn	2, 0x000d
  76:	213a0e03          	lb	t3,531(s4)
  7a:	3b02                	.insn	2, 0x3b02
  7c:	490b390b          	.insn	4, 0x490b390b
  80:	6b0b0d13          	addi	s10,s6,1712
  84:	0900000b          	.insn	4, 0x0900000b
  88:	0005                	.insn	2, 0x0005
  8a:	213a0803          	lb	a6,531(s4)
  8e:	3b01                	.insn	2, 0x3b01
  90:	2121                	.insn	2, 0x2121
  92:	0b39                	.insn	2, 0x0b39
  94:	1349                	.insn	2, 0x1349
  96:	1702                	.insn	2, 0x1702
  98:	001742b7          	lui	t0,0x174
  9c:	0a00                	.insn	2, 0x0a00
  9e:	000a                	.insn	2, 0x000a
  a0:	213a0e03          	lb	t3,531(s4)
  a4:	3b01                	.insn	2, 0x3b01
  a6:	2c21                	.insn	2, 0x2c21
  a8:	2139                	.insn	2, 0x2139
  aa:	0b000003          	lb	zero,176(zero) # b0 <exit-0x10070>
  ae:	0111                	.insn	2, 0x0111
  b0:	0e25                	.insn	2, 0x0e25
  b2:	01900b13          	li	s6,25
  b6:	0601910b          	.insn	4, 0x0601910b
  ba:	1f1b1f03          	lh	t5,497(s6)
  be:	0111                	.insn	2, 0x0111
  c0:	0712                	.insn	2, 0x0712
  c2:	1710                	.insn	2, 0x1710
  c4:	0000                	.insn	2, 0x0000
  c6:	240c                	.insn	2, 0x240c
  c8:	0b00                	.insn	2, 0x0b00
  ca:	030b3e0b          	.insn	4, 0x030b3e0b
  ce:	0008                	.insn	2, 0x0008
  d0:	0d00                	.insn	2, 0x0d00
  d2:	0016                	.insn	2, 0x0016
  d4:	0b3a0e03          	lb	t3,179(s4)
  d8:	0b390b3b          	.insn	4, 0x0b390b3b
  dc:	1349                	.insn	2, 0x1349
  de:	0000                	.insn	2, 0x0000
  e0:	130e                	.insn	2, 0x130e
  e2:	0b01                	.insn	2, 0x0b01
  e4:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
  e8:	010b390b          	.insn	4, 0x010b390b
  ec:	0f000013          	li	zero,240
  f0:	000d                	.insn	2, 0x000d
  f2:	0b3a0803          	lb	a6,179(s4)
  f6:	0b390b3b          	.insn	4, 0x0b390b3b
  fa:	1349                	.insn	2, 0x1349
  fc:	0b0d                	.insn	2, 0x0b0d
  fe:	00000b6b          	.insn	4, 0x0b6b
 102:	1710                	.insn	2, 0x1710
 104:	0301                	.insn	2, 0x0301
 106:	0b0e                	.insn	2, 0x0b0e
 108:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 10c:	010b390b          	.insn	4, 0x010b390b
 110:	11000013          	li	zero,272
 114:	000d                	.insn	2, 0x000d
 116:	0b3a0803          	lb	a6,179(s4)
 11a:	0b390b3b          	.insn	4, 0x0b390b3b
 11e:	1349                	.insn	2, 0x1349
 120:	0000                	.insn	2, 0x0000
 122:	0d12                	.insn	2, 0x0d12
 124:	0300                	.insn	2, 0x0300
 126:	3a0e                	.insn	2, 0x3a0e
 128:	390b3b0b          	.insn	4, 0x390b3b0b
 12c:	0013490b          	.insn	4, 0x0013490b
 130:	1300                	.insn	2, 0x1300
 132:	012e                	.insn	2, 0x012e
 134:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 13c:	0b39                	.insn	2, 0x0b39
 13e:	13491927          	.insn	4, 0x13491927
 142:	0111                	.insn	2, 0x0111
 144:	0712                	.insn	2, 0x0712
 146:	1840                	.insn	2, 0x1840
 148:	197a                	.insn	2, 0x197a
 14a:	1301                	.insn	2, 0x1301
 14c:	0000                	.insn	2, 0x0000
 14e:	3414                	.insn	2, 0x3414
 150:	0300                	.insn	2, 0x0300
 152:	3a0e                	.insn	2, 0x3a0e
 154:	390b3b0b          	.insn	4, 0x390b3b0b
 158:	1c13490b          	.insn	4, 0x1c13490b
 15c:	1500000b          	.insn	4, 0x1500000b
 160:	1755010b          	.insn	4, 0x1755010b
 164:	0000                	.insn	2, 0x0000
 166:	4816                	.insn	2, 0x4816
 168:	7d00                	.insn	2, 0x7d00
 16a:	7f01                	.insn	2, 0x7f01
 16c:	17000013          	li	zero,368
 170:	0000010b          	.insn	4, 0x010b
 174:	0b18                	.insn	2, 0x0b18
 176:	1101                	.insn	2, 0x1101
 178:	1201                	.insn	2, 0x1201
 17a:	19000007          	.insn	4, 0x19000007
 17e:	002e                	.insn	2, 0x002e
 180:	193c193f 0e030e6e 	.insn	8, 0x0e030e6e193c193f
 188:	0000                	.insn	2, 0x0000
 18a:	0100                	.insn	2, 0x0100
 18c:	0034                	.insn	2, 0x0034
 18e:	213a0e03          	lb	t3,531(s4)
 192:	3b01                	.insn	2, 0x3b01
 194:	0321390b          	.insn	4, 0x0321390b
 198:	1349                	.insn	2, 0x1349
 19a:	1702                	.insn	2, 0x1702
 19c:	001742b7          	lui	t0,0x174
 1a0:	0200                	.insn	2, 0x0200
 1a2:	0034                	.insn	2, 0x0034
 1a4:	213a0803          	lb	a6,531(s4)
 1a8:	3b01                	.insn	2, 0x3b01
 1aa:	490b390b          	.insn	4, 0x490b390b
 1ae:	b7170213          	addi	tp,a4,-1167 # 1742abcd <__BSS_END__+0x17415bdd>
 1b2:	1742                	.insn	2, 0x1742
 1b4:	0000                	.insn	2, 0x0000
 1b6:	0b002403          	lw	s0,176(zero) # b0 <exit-0x10070>
 1ba:	030b3e0b          	.insn	4, 0x030b3e0b
 1be:	000e                	.insn	2, 0x000e
 1c0:	0400                	.insn	2, 0x0400
 1c2:	0034                	.insn	2, 0x0034
 1c4:	213a0e03          	lb	t3,531(s4)
 1c8:	3b01                	.insn	2, 0x3b01
 1ca:	0321390b          	.insn	4, 0x0321390b
 1ce:	1349                	.insn	2, 0x1349
 1d0:	0000                	.insn	2, 0x0000
 1d2:	0b05                	.insn	2, 0x0b05
 1d4:	5501                	.insn	2, 0x5501
 1d6:	00130117          	auipc	sp,0x130
 1da:	0600                	.insn	2, 0x0600
 1dc:	0016                	.insn	2, 0x0016
 1de:	213a0e03          	lb	t3,531(s4)
 1e2:	3b02                	.insn	2, 0x3b02
 1e4:	3905                	.insn	2, 0x3905
 1e6:	0013490b          	.insn	4, 0x0013490b
 1ea:	0700                	.insn	2, 0x0700
 1ec:	000d                	.insn	2, 0x000d
 1ee:	213a0e03          	lb	t3,531(s4)
 1f2:	390b3b03          	ld	s6,912(s6)
 1f6:	0d13490b          	.insn	4, 0x0d13490b
 1fa:	000b6b0b          	.insn	4, 0x000b6b0b
 1fe:	0800                	.insn	2, 0x0800
 200:	0005                	.insn	2, 0x0005
 202:	213a0803          	lb	a6,531(s4)
 206:	3b01                	.insn	2, 0x3b01
 208:	2121                	.insn	2, 0x2121
 20a:	0b39                	.insn	2, 0x0b39
 20c:	1349                	.insn	2, 0x1349
 20e:	1702                	.insn	2, 0x1702
 210:	001742b7          	lui	t0,0x174
 214:	0900                	.insn	2, 0x0900
 216:	0048                	.insn	2, 0x0048
 218:	017d                	.insn	2, 0x017d
 21a:	0000137f 55010b0a 	.insn	12, 0x0b00001755010b0a0000137f
 222:	0b000017 
 226:	0111                	.insn	2, 0x0111
 228:	0e25                	.insn	2, 0x0e25
 22a:	01900b13          	li	s6,25
 22e:	0601910b          	.insn	4, 0x0601910b
 232:	1f1b1f03          	lh	t5,497(s6)
 236:	0111                	.insn	2, 0x0111
 238:	0712                	.insn	2, 0x0712
 23a:	1710                	.insn	2, 0x1710
 23c:	0000                	.insn	2, 0x0000
 23e:	240c                	.insn	2, 0x240c
 240:	0b00                	.insn	2, 0x0b00
 242:	030b3e0b          	.insn	4, 0x030b3e0b
 246:	0008                	.insn	2, 0x0008
 248:	0d00                	.insn	2, 0x0d00
 24a:	0016                	.insn	2, 0x0016
 24c:	0b3a0e03          	lb	t3,179(s4)
 250:	0b390b3b          	.insn	4, 0x0b390b3b
 254:	1349                	.insn	2, 0x1349
 256:	0000                	.insn	2, 0x0000
 258:	130e                	.insn	2, 0x130e
 25a:	0b01                	.insn	2, 0x0b01
 25c:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 260:	010b390b          	.insn	4, 0x010b390b
 264:	0f000013          	li	zero,240
 268:	000d                	.insn	2, 0x000d
 26a:	0b3a0803          	lb	a6,179(s4)
 26e:	0b390b3b          	.insn	4, 0x0b390b3b
 272:	1349                	.insn	2, 0x1349
 274:	0b0d                	.insn	2, 0x0b0d
 276:	00000b6b          	.insn	4, 0x0b6b
 27a:	1710                	.insn	2, 0x1710
 27c:	0301                	.insn	2, 0x0301
 27e:	0b0e                	.insn	2, 0x0b0e
 280:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 284:	010b390b          	.insn	4, 0x010b390b
 288:	11000013          	li	zero,272
 28c:	000d                	.insn	2, 0x000d
 28e:	0b3a0803          	lb	a6,179(s4)
 292:	0b390b3b          	.insn	4, 0x0b390b3b
 296:	1349                	.insn	2, 0x1349
 298:	0000                	.insn	2, 0x0000
 29a:	0d12                	.insn	2, 0x0d12
 29c:	0300                	.insn	2, 0x0300
 29e:	3a0e                	.insn	2, 0x3a0e
 2a0:	390b3b0b          	.insn	4, 0x390b3b0b
 2a4:	0013490b          	.insn	4, 0x0013490b
 2a8:	1300                	.insn	2, 0x1300
 2aa:	012e                	.insn	2, 0x012e
 2ac:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 2b4:	0b39                	.insn	2, 0x0b39
 2b6:	13491927          	.insn	4, 0x13491927
 2ba:	0111                	.insn	2, 0x0111
 2bc:	0712                	.insn	2, 0x0712
 2be:	1840                	.insn	2, 0x1840
 2c0:	197a                	.insn	2, 0x197a
 2c2:	1301                	.insn	2, 0x1301
 2c4:	0000                	.insn	2, 0x0000
 2c6:	3414                	.insn	2, 0x3414
 2c8:	0300                	.insn	2, 0x0300
 2ca:	3a0e                	.insn	2, 0x3a0e
 2cc:	390b3b0b          	.insn	4, 0x390b3b0b
 2d0:	1c13490b          	.insn	4, 0x1c13490b
 2d4:	1500000b          	.insn	4, 0x1500000b
 2d8:	0000010b          	.insn	4, 0x010b
 2dc:	2e16                	.insn	2, 0x2e16
 2de:	3f00                	.insn	2, 0x3f00
 2e0:	3c19                	.insn	2, 0x3c19
 2e2:	6e19                	.insn	2, 0x6e19
 2e4:	030e                	.insn	2, 0x030e
 2e6:	000e                	.insn	2, 0x000e
 2e8:	0000                	.insn	2, 0x0000
 2ea:	2401                	.insn	2, 0x2401
 2ec:	0b00                	.insn	2, 0x0b00
 2ee:	030b3e0b          	.insn	4, 0x030b3e0b
 2f2:	000e                	.insn	2, 0x000e
 2f4:	0200                	.insn	2, 0x0200
 2f6:	0034                	.insn	2, 0x0034
 2f8:	213a0803          	lb	a6,531(s4)
 2fc:	3b01                	.insn	2, 0x3b01
 2fe:	490b390b          	.insn	4, 0x490b390b
 302:	b7170213          	addi	tp,a4,-1167
 306:	1742                	.insn	2, 0x1742
 308:	0000                	.insn	2, 0x0000
 30a:	03003403          	ld	s0,48(zero) # 30 <exit-0x100f0>
 30e:	3a0e                	.insn	2, 0x3a0e
 310:	0121                	.insn	2, 0x0121
 312:	21390b3b          	.insn	4, 0x21390b3b
 316:	00134903          	lbu	s2,1(t1)
 31a:	0400                	.insn	2, 0x0400
 31c:	000a                	.insn	2, 0x000a
 31e:	213a0e03          	lb	t3,531(s4)
 322:	3b01                	.insn	2, 0x3b01
 324:	2c21                	.insn	2, 0x2c21
 326:	2139                	.insn	2, 0x2139
 328:	00011103          	lh	sp,0(sp) # 1301d6 <__BSS_END__+0x11b1e6>
 32c:	0500                	.insn	2, 0x0500
 32e:	1755010b          	.insn	4, 0x1755010b
 332:	1301                	.insn	2, 0x1301
 334:	0000                	.insn	2, 0x0000
 336:	3406                	.insn	2, 0x3406
 338:	0300                	.insn	2, 0x0300
 33a:	3a0e                	.insn	2, 0x3a0e
 33c:	0121                	.insn	2, 0x0121
 33e:	21390b3b          	.insn	4, 0x21390b3b
 342:	02134903          	lbu	s2,33(t1)
 346:	1742b717          	auipc	a4,0x1742b
 34a:	0000                	.insn	2, 0x0000
 34c:	03003407          	.insn	4, 0x03003407
 350:	3a08                	.insn	2, 0x3a08
 352:	0121                	.insn	2, 0x0121
 354:	21390b3b          	.insn	4, 0x21390b3b
 358:	00134903          	lbu	s2,1(t1)
 35c:	0800                	.insn	2, 0x0800
 35e:	000d                	.insn	2, 0x000d
 360:	213a0e03          	lb	t3,531(s4)
 364:	3b02                	.insn	2, 0x3b02
 366:	490b390b          	.insn	4, 0x490b390b
 36a:	6b0b0d13          	addi	s10,s6,1712
 36e:	0900000b          	.insn	4, 0x0900000b
 372:	0005                	.insn	2, 0x0005
 374:	213a0803          	lb	a6,531(s4)
 378:	3b01                	.insn	2, 0x3b01
 37a:	2121                	.insn	2, 0x2121
 37c:	0b39                	.insn	2, 0x0b39
 37e:	1349                	.insn	2, 0x1349
 380:	1702                	.insn	2, 0x1702
 382:	001742b7          	lui	t0,0x174
 386:	0a00                	.insn	2, 0x0a00
 388:	000a                	.insn	2, 0x000a
 38a:	213a0e03          	lb	t3,531(s4)
 38e:	3b01                	.insn	2, 0x3b01
 390:	2c21                	.insn	2, 0x2c21
 392:	2139                	.insn	2, 0x2139
 394:	0b000003          	lb	zero,176(zero) # b0 <exit-0x10070>
 398:	0111                	.insn	2, 0x0111
 39a:	0e25                	.insn	2, 0x0e25
 39c:	01900b13          	li	s6,25
 3a0:	0601910b          	.insn	4, 0x0601910b
 3a4:	1f1b1f03          	lh	t5,497(s6)
 3a8:	0111                	.insn	2, 0x0111
 3aa:	0712                	.insn	2, 0x0712
 3ac:	1710                	.insn	2, 0x1710
 3ae:	0000                	.insn	2, 0x0000
 3b0:	240c                	.insn	2, 0x240c
 3b2:	0b00                	.insn	2, 0x0b00
 3b4:	030b3e0b          	.insn	4, 0x030b3e0b
 3b8:	0008                	.insn	2, 0x0008
 3ba:	0d00                	.insn	2, 0x0d00
 3bc:	0016                	.insn	2, 0x0016
 3be:	0b3a0e03          	lb	t3,179(s4)
 3c2:	0b390b3b          	.insn	4, 0x0b390b3b
 3c6:	1349                	.insn	2, 0x1349
 3c8:	0000                	.insn	2, 0x0000
 3ca:	130e                	.insn	2, 0x130e
 3cc:	0b01                	.insn	2, 0x0b01
 3ce:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 3d2:	010b390b          	.insn	4, 0x010b390b
 3d6:	0f000013          	li	zero,240
 3da:	000d                	.insn	2, 0x000d
 3dc:	0b3a0803          	lb	a6,179(s4)
 3e0:	0b390b3b          	.insn	4, 0x0b390b3b
 3e4:	1349                	.insn	2, 0x1349
 3e6:	0b0d                	.insn	2, 0x0b0d
 3e8:	00000b6b          	.insn	4, 0x0b6b
 3ec:	1710                	.insn	2, 0x1710
 3ee:	0301                	.insn	2, 0x0301
 3f0:	0b0e                	.insn	2, 0x0b0e
 3f2:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 3f6:	010b390b          	.insn	4, 0x010b390b
 3fa:	11000013          	li	zero,272
 3fe:	000d                	.insn	2, 0x000d
 400:	0b3a0803          	lb	a6,179(s4)
 404:	0b390b3b          	.insn	4, 0x0b390b3b
 408:	1349                	.insn	2, 0x1349
 40a:	0000                	.insn	2, 0x0000
 40c:	0d12                	.insn	2, 0x0d12
 40e:	0300                	.insn	2, 0x0300
 410:	3a0e                	.insn	2, 0x3a0e
 412:	390b3b0b          	.insn	4, 0x390b3b0b
 416:	0013490b          	.insn	4, 0x0013490b
 41a:	1300                	.insn	2, 0x1300
 41c:	012e                	.insn	2, 0x012e
 41e:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 426:	0b39                	.insn	2, 0x0b39
 428:	13491927          	.insn	4, 0x13491927
 42c:	0111                	.insn	2, 0x0111
 42e:	0712                	.insn	2, 0x0712
 430:	1840                	.insn	2, 0x1840
 432:	197a                	.insn	2, 0x197a
 434:	1301                	.insn	2, 0x1301
 436:	0000                	.insn	2, 0x0000
 438:	3414                	.insn	2, 0x3414
 43a:	0300                	.insn	2, 0x0300
 43c:	3a0e                	.insn	2, 0x3a0e
 43e:	390b3b0b          	.insn	4, 0x390b3b0b
 442:	1c13490b          	.insn	4, 0x1c13490b
 446:	1500000b          	.insn	4, 0x1500000b
 44a:	1755010b          	.insn	4, 0x1755010b
 44e:	0000                	.insn	2, 0x0000
 450:	4816                	.insn	2, 0x4816
 452:	7d00                	.insn	2, 0x7d00
 454:	7f01                	.insn	2, 0x7f01
 456:	17000013          	li	zero,368
 45a:	0000010b          	.insn	4, 0x010b
 45e:	0b18                	.insn	2, 0x0b18
 460:	1101                	.insn	2, 0x1101
 462:	1201                	.insn	2, 0x1201
 464:	19000007          	.insn	4, 0x19000007
 468:	002e                	.insn	2, 0x002e
 46a:	193c193f 0e030e6e 	.insn	8, 0x0e030e6e193c193f
 472:	0000                	.insn	2, 0x0000
 474:	0100                	.insn	2, 0x0100
 476:	0024                	.insn	2, 0x0024
 478:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 47c:	00000e03          	lb	t3,0(zero) # 0 <exit-0x10120>
 480:	3402                	.insn	2, 0x3402
 482:	0300                	.insn	2, 0x0300
 484:	3a0e                	.insn	2, 0x3a0e
 486:	0121                	.insn	2, 0x0121
 488:	21390b3b          	.insn	4, 0x21390b3b
 48c:	00134903          	lbu	s2,1(t1)
 490:	0300                	.insn	2, 0x0300
 492:	0034                	.insn	2, 0x0034
 494:	213a0803          	lb	a6,531(s4)
 498:	3b01                	.insn	2, 0x3b01
 49a:	490b390b          	.insn	4, 0x490b390b
 49e:	b7170213          	addi	tp,a4,-1167 # 1742aeb7 <__BSS_END__+0x17415ec7>
 4a2:	1742                	.insn	2, 0x1742
 4a4:	0000                	.insn	2, 0x0000
 4a6:	1604                	.insn	2, 0x1604
 4a8:	0300                	.insn	2, 0x0300
 4aa:	3a0e                	.insn	2, 0x3a0e
 4ac:	0221                	.insn	2, 0x0221
 4ae:	0b39053b          	.insn	4, 0x0b39053b
 4b2:	1349                	.insn	2, 0x1349
 4b4:	0000                	.insn	2, 0x0000
 4b6:	0d05                	.insn	2, 0x0d05
 4b8:	0300                	.insn	2, 0x0300
 4ba:	3a0e                	.insn	2, 0x3a0e
 4bc:	0321                	.insn	2, 0x0321
 4be:	0b390b3b          	.insn	4, 0x0b390b3b
 4c2:	1349                	.insn	2, 0x1349
 4c4:	0b0d                	.insn	2, 0x0b0d
 4c6:	00000b6b          	.insn	4, 0x0b6b
 4ca:	0b06                	.insn	2, 0x0b06
 4cc:	5501                	.insn	2, 0x5501
 4ce:	00130117          	auipc	sp,0x130
 4d2:	0700                	.insn	2, 0x0700
 4d4:	0034                	.insn	2, 0x0034
 4d6:	213a0e03          	lb	t3,531(s4)
 4da:	3b01                	.insn	2, 0x3b01
 4dc:	2721                	.insn	2, 0x2721
 4de:	2139                	.insn	2, 0x2139
 4e0:	02134903          	lbu	s2,33(t1)
 4e4:	1742b717          	auipc	a4,0x1742b
 4e8:	0000                	.insn	2, 0x0000
 4ea:	0b08                	.insn	2, 0x0b08
 4ec:	0001                	.insn	2, 0x0001
 4ee:	0900                	.insn	2, 0x0900
 4f0:	0111                	.insn	2, 0x0111
 4f2:	0e25                	.insn	2, 0x0e25
 4f4:	01900b13          	li	s6,25
 4f8:	0601910b          	.insn	4, 0x0601910b
 4fc:	1f1b1f03          	lh	t5,497(s6)
 500:	0111                	.insn	2, 0x0111
 502:	0712                	.insn	2, 0x0712
 504:	1710                	.insn	2, 0x1710
 506:	0000                	.insn	2, 0x0000
 508:	240a                	.insn	2, 0x240a
 50a:	0b00                	.insn	2, 0x0b00
 50c:	030b3e0b          	.insn	4, 0x030b3e0b
 510:	0008                	.insn	2, 0x0008
 512:	0b00                	.insn	2, 0x0b00
 514:	0016                	.insn	2, 0x0016
 516:	0b3a0e03          	lb	t3,179(s4)
 51a:	0b390b3b          	.insn	4, 0x0b390b3b
 51e:	1349                	.insn	2, 0x1349
 520:	0000                	.insn	2, 0x0000
 522:	130c                	.insn	2, 0x130c
 524:	0b01                	.insn	2, 0x0b01
 526:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 52a:	010b390b          	.insn	4, 0x010b390b
 52e:	0d000013          	li	zero,208
 532:	000d                	.insn	2, 0x000d
 534:	0b3a0803          	lb	a6,179(s4)
 538:	0b390b3b          	.insn	4, 0x0b390b3b
 53c:	1349                	.insn	2, 0x1349
 53e:	0b0d                	.insn	2, 0x0b0d
 540:	00000b6b          	.insn	4, 0x0b6b
 544:	170e                	.insn	2, 0x170e
 546:	0301                	.insn	2, 0x0301
 548:	0b0e                	.insn	2, 0x0b0e
 54a:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 54e:	010b390b          	.insn	4, 0x010b390b
 552:	0f000013          	li	zero,240
 556:	000d                	.insn	2, 0x000d
 558:	0b3a0803          	lb	a6,179(s4)
 55c:	0b390b3b          	.insn	4, 0x0b390b3b
 560:	1349                	.insn	2, 0x1349
 562:	0000                	.insn	2, 0x0000
 564:	0d10                	.insn	2, 0x0d10
 566:	0300                	.insn	2, 0x0300
 568:	3a0e                	.insn	2, 0x3a0e
 56a:	390b3b0b          	.insn	4, 0x390b3b0b
 56e:	0013490b          	.insn	4, 0x0013490b
 572:	1100                	.insn	2, 0x1100
 574:	012e                	.insn	2, 0x012e
 576:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 57e:	0b39                	.insn	2, 0x0b39
 580:	13491927          	.insn	4, 0x13491927
 584:	0111                	.insn	2, 0x0111
 586:	0712                	.insn	2, 0x0712
 588:	1840                	.insn	2, 0x1840
 58a:	197a                	.insn	2, 0x197a
 58c:	1301                	.insn	2, 0x1301
 58e:	0000                	.insn	2, 0x0000
 590:	0512                	.insn	2, 0x0512
 592:	0300                	.insn	2, 0x0300
 594:	3a08                	.insn	2, 0x3a08
 596:	390b3b0b          	.insn	4, 0x390b3b0b
 59a:	0213490b          	.insn	4, 0x0213490b
 59e:	1742b717          	auipc	a4,0x1742b
 5a2:	0000                	.insn	2, 0x0000
 5a4:	03003413          	sltiu	s0,zero,48
 5a8:	3a08                	.insn	2, 0x3a08
 5aa:	390b3b0b          	.insn	4, 0x390b3b0b
 5ae:	0013490b          	.insn	4, 0x0013490b
 5b2:	1400                	.insn	2, 0x1400
 5b4:	000a                	.insn	2, 0x000a
 5b6:	0b3a0e03          	lb	t3,179(s4)
 5ba:	0b390b3b          	.insn	4, 0x0b390b3b
 5be:	0000                	.insn	2, 0x0000
 5c0:	0b15                	.insn	2, 0x0b15
 5c2:	1101                	.insn	2, 0x1101
 5c4:	1201                	.insn	2, 0x1201
 5c6:	16000007          	.insn	4, 0x16000007
 5ca:	0048                	.insn	2, 0x0048
 5cc:	017d                	.insn	2, 0x017d
 5ce:	0000137f 55010b17 	.insn	12, 0x1800001755010b170000137f
 5d6:	18000017 
 5da:	002e                	.insn	2, 0x002e
 5dc:	193c193f 0e030e6e 	.insn	8, 0x0e030e6e193c193f
 5e4:	0000                	.insn	2, 0x0000
 5e6:	0100                	.insn	2, 0x0100
 5e8:	0024                	.insn	2, 0x0024
 5ea:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 5ee:	00000e03          	lb	t3,0(zero) # 0 <exit-0x10120>
 5f2:	3402                	.insn	2, 0x3402
 5f4:	0300                	.insn	2, 0x0300
 5f6:	3a08                	.insn	2, 0x3a08
 5f8:	0121                	.insn	2, 0x0121
 5fa:	0b390b3b          	.insn	4, 0x0b390b3b
 5fe:	1349                	.insn	2, 0x1349
 600:	1702                	.insn	2, 0x1702
 602:	001742b7          	lui	t0,0x174
 606:	0300                	.insn	2, 0x0300
 608:	000d                	.insn	2, 0x000d
 60a:	0b3a0e03          	lb	t3,179(s4)
 60e:	0b390b3b          	.insn	4, 0x0b390b3b
 612:	1349                	.insn	2, 0x1349
 614:	0b0d                	.insn	2, 0x0b0d
 616:	00000b6b          	.insn	4, 0x0b6b
 61a:	1604                	.insn	2, 0x1604
 61c:	0300                	.insn	2, 0x0300
 61e:	3a0e                	.insn	2, 0x3a0e
 620:	390b3b0b          	.insn	4, 0x390b3b0b
 624:	0f21                	.insn	2, 0x0f21
 626:	1349                	.insn	2, 0x1349
 628:	0000                	.insn	2, 0x0000
 62a:	1305                	.insn	2, 0x1305
 62c:	0b01                	.insn	2, 0x0b01
 62e:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 632:	0321390b          	.insn	4, 0x0321390b
 636:	1301                	.insn	2, 0x1301
 638:	0000                	.insn	2, 0x0000
 63a:	0d06                	.insn	2, 0x0d06
 63c:	0300                	.insn	2, 0x0300
 63e:	3a08                	.insn	2, 0x3a08
 640:	390b3b0b          	.insn	4, 0x390b3b0b
 644:	0e21                	.insn	2, 0x0e21
 646:	1349                	.insn	2, 0x1349
 648:	0b0d                	.insn	2, 0x0b0d
 64a:	00000b6b          	.insn	4, 0x0b6b
 64e:	03011707          	.insn	4, 0x03011707
 652:	0b0e                	.insn	2, 0x0b0e
 654:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 658:	0721390b          	.insn	4, 0x0721390b
 65c:	1301                	.insn	2, 0x1301
 65e:	0000                	.insn	2, 0x0000
 660:	0d08                	.insn	2, 0x0d08
 662:	0300                	.insn	2, 0x0300
 664:	3a08                	.insn	2, 0x3a08
 666:	390b3b0b          	.insn	4, 0x390b3b0b
 66a:	0a21                	.insn	2, 0x0a21
 66c:	1349                	.insn	2, 0x1349
 66e:	0000                	.insn	2, 0x0000
 670:	0d09                	.insn	2, 0x0d09
 672:	0300                	.insn	2, 0x0300
 674:	3a0e                	.insn	2, 0x3a0e
 676:	390b3b0b          	.insn	4, 0x390b3b0b
 67a:	0521                	.insn	2, 0x0521
 67c:	1349                	.insn	2, 0x1349
 67e:	0000                	.insn	2, 0x0000
 680:	340a                	.insn	2, 0x340a
 682:	0300                	.insn	2, 0x0300
 684:	3a0e                	.insn	2, 0x3a0e
 686:	0121                	.insn	2, 0x0121
 688:	21390b3b          	.insn	4, 0x21390b3b
 68c:	02134903          	lbu	s2,33(t1)
 690:	1742b717          	auipc	a4,0x1742b
 694:	0000                	.insn	2, 0x0000
 696:	0300340b          	.insn	4, 0x0300340b
 69a:	3a08                	.insn	2, 0x3a08
 69c:	0121                	.insn	2, 0x0121
 69e:	21390b3b          	.insn	4, 0x21390b3b
 6a2:	00134903          	lbu	s2,1(t1)
 6a6:	0c00                	.insn	2, 0x0c00
 6a8:	0034                	.insn	2, 0x0034
 6aa:	213a0e03          	lb	t3,531(s4)
 6ae:	3b01                	.insn	2, 0x3b01
 6b0:	0321390b          	.insn	4, 0x0321390b
 6b4:	1349                	.insn	2, 0x1349
 6b6:	0000                	.insn	2, 0x0000
 6b8:	110d                	.insn	2, 0x110d
 6ba:	2501                	.insn	2, 0x2501
 6bc:	130e                	.insn	2, 0x130e
 6be:	0b01900b          	.insn	4, 0x0b01900b
 6c2:	0191                	.insn	2, 0x0191
 6c4:	0306                	.insn	2, 0x0306
 6c6:	1b1f 111f 1201      	.insn	6, 0x1201111f1b1f
 6cc:	00171007          	.insn	4, 0x00171007
 6d0:	0e00                	.insn	2, 0x0e00
 6d2:	0024                	.insn	2, 0x0024
 6d4:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 6d8:	00000803          	lb	a6,0(zero) # 0 <exit-0x10120>
 6dc:	3f012e0f          	.insn	4, 0x3f012e0f
 6e0:	0319                	.insn	2, 0x0319
 6e2:	3a0e                	.insn	2, 0x3a0e
 6e4:	390b3b0b          	.insn	4, 0x390b3b0b
 6e8:	4919270b          	.insn	4, 0x4919270b
 6ec:	12011113          	.insn	4, 0x12011113
 6f0:	7a184007          	.insn	4, 0x7a184007
 6f4:	0119                	.insn	2, 0x0119
 6f6:	10000013          	li	zero,256
 6fa:	0005                	.insn	2, 0x0005
 6fc:	0b3a0803          	lb	a6,179(s4)
 700:	0b390b3b          	.insn	4, 0x0b390b3b
 704:	1349                	.insn	2, 0x1349
 706:	1702                	.insn	2, 0x1702
 708:	001742b7          	lui	t0,0x174
 70c:	1100                	.insn	2, 0x1100
 70e:	0034                	.insn	2, 0x0034
 710:	0b3a0e03          	lb	t3,179(s4)
 714:	0b390b3b          	.insn	4, 0x0b390b3b
 718:	1349                	.insn	2, 0x1349
 71a:	0b1c                	.insn	2, 0x0b1c
 71c:	0000                	.insn	2, 0x0000
 71e:	0b12                	.insn	2, 0x0b12
 720:	5501                	.insn	2, 0x5501
 722:	00130117          	auipc	sp,0x130
 726:	1300                	.insn	2, 0x1300
 728:	0111010b          	.insn	4, 0x0111010b
 72c:	0712                	.insn	2, 0x0712
 72e:	1301                	.insn	2, 0x1301
 730:	0000                	.insn	2, 0x0000
 732:	4814                	.insn	2, 0x4814
 734:	7d00                	.insn	2, 0x7d00
 736:	7f01                	.insn	2, 0x7f01
 738:	15000013          	li	zero,336
 73c:	1755010b          	.insn	4, 0x1755010b
 740:	0000                	.insn	2, 0x0000
 742:	2e16                	.insn	2, 0x2e16
 744:	3f00                	.insn	2, 0x3f00
 746:	3c19                	.insn	2, 0x3c19
 748:	6e19                	.insn	2, 0x6e19
 74a:	030e                	.insn	2, 0x030e
 74c:	000e                	.insn	2, 0x000e
 74e:	0000                	.insn	2, 0x0000
 750:	2401                	.insn	2, 0x2401
 752:	0b00                	.insn	2, 0x0b00
 754:	030b3e0b          	.insn	4, 0x030b3e0b
 758:	000e                	.insn	2, 0x000e
 75a:	0200                	.insn	2, 0x0200
 75c:	0034                	.insn	2, 0x0034
 75e:	213a0e03          	lb	t3,531(s4)
 762:	3b01                	.insn	2, 0x3b01
 764:	0321390b          	.insn	4, 0x0321390b
 768:	1349                	.insn	2, 0x1349
 76a:	1702                	.insn	2, 0x1702
 76c:	001742b7          	lui	t0,0x174
 770:	0300                	.insn	2, 0x0300
 772:	0034                	.insn	2, 0x0034
 774:	213a0803          	lb	a6,531(s4)
 778:	3b01                	.insn	2, 0x3b01
 77a:	0321390b          	.insn	4, 0x0321390b
 77e:	1349                	.insn	2, 0x1349
 780:	1702                	.insn	2, 0x1702
 782:	001742b7          	lui	t0,0x174
 786:	0400                	.insn	2, 0x0400
 788:	000d                	.insn	2, 0x000d
 78a:	0b3a0e03          	lb	t3,179(s4)
 78e:	0b390b3b          	.insn	4, 0x0b390b3b
 792:	1349                	.insn	2, 0x1349
 794:	0b0d                	.insn	2, 0x0b0d
 796:	00000b6b          	.insn	4, 0x0b6b
 79a:	3405                	.insn	2, 0x3405
 79c:	0300                	.insn	2, 0x0300
 79e:	3a08                	.insn	2, 0x3a08
 7a0:	0121                	.insn	2, 0x0121
 7a2:	0b390b3b          	.insn	4, 0x0b390b3b
 7a6:	1349                	.insn	2, 0x1349
 7a8:	0000                	.insn	2, 0x0000
 7aa:	1606                	.insn	2, 0x1606
 7ac:	0300                	.insn	2, 0x0300
 7ae:	3a0e                	.insn	2, 0x3a0e
 7b0:	390b3b0b          	.insn	4, 0x390b3b0b
 7b4:	0f21                	.insn	2, 0x0f21
 7b6:	1349                	.insn	2, 0x1349
 7b8:	0000                	.insn	2, 0x0000
 7ba:	0b011307          	.insn	4, 0x0b011307
 7be:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 7c2:	0321390b          	.insn	4, 0x0321390b
 7c6:	1301                	.insn	2, 0x1301
 7c8:	0000                	.insn	2, 0x0000
 7ca:	0d08                	.insn	2, 0x0d08
 7cc:	0300                	.insn	2, 0x0300
 7ce:	3a08                	.insn	2, 0x3a08
 7d0:	390b3b0b          	.insn	4, 0x390b3b0b
 7d4:	0e21                	.insn	2, 0x0e21
 7d6:	1349                	.insn	2, 0x1349
 7d8:	0b0d                	.insn	2, 0x0b0d
 7da:	00000b6b          	.insn	4, 0x0b6b
 7de:	1709                	.insn	2, 0x1709
 7e0:	0301                	.insn	2, 0x0301
 7e2:	0b0e                	.insn	2, 0x0b0e
 7e4:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 7e8:	0721390b          	.insn	4, 0x0721390b
 7ec:	1301                	.insn	2, 0x1301
 7ee:	0000                	.insn	2, 0x0000
 7f0:	0d0a                	.insn	2, 0x0d0a
 7f2:	0300                	.insn	2, 0x0300
 7f4:	3a08                	.insn	2, 0x3a08
 7f6:	390b3b0b          	.insn	4, 0x390b3b0b
 7fa:	0a21                	.insn	2, 0x0a21
 7fc:	1349                	.insn	2, 0x1349
 7fe:	0000                	.insn	2, 0x0000
 800:	03000d0b          	.insn	4, 0x03000d0b
 804:	3a0e                	.insn	2, 0x3a0e
 806:	390b3b0b          	.insn	4, 0x390b3b0b
 80a:	0521                	.insn	2, 0x0521
 80c:	1349                	.insn	2, 0x1349
 80e:	0000                	.insn	2, 0x0000
 810:	0b0c                	.insn	2, 0x0b0c
 812:	5501                	.insn	2, 0x5501
 814:	00130117          	auipc	sp,0x130
 818:	0d00                	.insn	2, 0x0d00
 81a:	0034                	.insn	2, 0x0034
 81c:	213a0e03          	lb	t3,531(s4)
 820:	3b01                	.insn	2, 0x3b01
 822:	0321390b          	.insn	4, 0x0321390b
 826:	1349                	.insn	2, 0x1349
 828:	0000                	.insn	2, 0x0000
 82a:	0b0e                	.insn	2, 0x0b0e
 82c:	1101                	.insn	2, 0x1101
 82e:	1201                	.insn	2, 0x1201
 830:	0f000007          	.insn	4, 0x0f000007
 834:	0111                	.insn	2, 0x0111
 836:	0e25                	.insn	2, 0x0e25
 838:	01900b13          	li	s6,25
 83c:	0601910b          	.insn	4, 0x0601910b
 840:	1f1b1f03          	lh	t5,497(s6)
 844:	0111                	.insn	2, 0x0111
 846:	0712                	.insn	2, 0x0712
 848:	1710                	.insn	2, 0x1710
 84a:	0000                	.insn	2, 0x0000
 84c:	2410                	.insn	2, 0x2410
 84e:	0b00                	.insn	2, 0x0b00
 850:	030b3e0b          	.insn	4, 0x030b3e0b
 854:	0008                	.insn	2, 0x0008
 856:	1100                	.insn	2, 0x1100
 858:	012e                	.insn	2, 0x012e
 85a:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 862:	0b39                	.insn	2, 0x0b39
 864:	13491927          	.insn	4, 0x13491927
 868:	0111                	.insn	2, 0x0111
 86a:	0712                	.insn	2, 0x0712
 86c:	1840                	.insn	2, 0x1840
 86e:	197a                	.insn	2, 0x197a
 870:	1301                	.insn	2, 0x1301
 872:	0000                	.insn	2, 0x0000
 874:	0512                	.insn	2, 0x0512
 876:	0300                	.insn	2, 0x0300
 878:	3a08                	.insn	2, 0x3a08
 87a:	390b3b0b          	.insn	4, 0x390b3b0b
 87e:	0213490b          	.insn	4, 0x0213490b
 882:	1742b717          	auipc	a4,0x1742b
 886:	0000                	.insn	2, 0x0000
 888:	03003413          	sltiu	s0,zero,48
 88c:	3a0e                	.insn	2, 0x3a0e
 88e:	390b3b0b          	.insn	4, 0x390b3b0b
 892:	1c13490b          	.insn	4, 0x1c13490b
 896:	0000000b          	.insn	4, 0x000b
 89a:	2401                	.insn	2, 0x2401
 89c:	0b00                	.insn	2, 0x0b00
 89e:	030b3e0b          	.insn	4, 0x030b3e0b
 8a2:	000e                	.insn	2, 0x000e
 8a4:	0200                	.insn	2, 0x0200
 8a6:	0016                	.insn	2, 0x0016
 8a8:	213a0e03          	lb	t3,531(s4)
 8ac:	3b02                	.insn	2, 0x3b02
 8ae:	490b390b          	.insn	4, 0x490b390b
 8b2:	03000013          	li	zero,48
 8b6:	0026                	.insn	2, 0x0026
 8b8:	1349                	.insn	2, 0x1349
 8ba:	0000                	.insn	2, 0x0000
 8bc:	1104                	.insn	2, 0x1104
 8be:	2501                	.insn	2, 0x2501
 8c0:	130e                	.insn	2, 0x130e
 8c2:	0b01900b          	.insn	4, 0x0b01900b
 8c6:	0191                	.insn	2, 0x0191
 8c8:	0306                	.insn	2, 0x0306
 8ca:	1b1f 111f 1201      	.insn	6, 0x1201111f1b1f
 8d0:	00171007          	.insn	4, 0x00171007
 8d4:	0500                	.insn	2, 0x0500
 8d6:	0024                	.insn	2, 0x0024
 8d8:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 8dc:	00000803          	lb	a6,0(zero) # 0 <exit-0x10120>
 8e0:	0106                	.insn	2, 0x0106
 8e2:	4901                	.insn	2, 0x4901
 8e4:	00130113          	addi	sp,t1,1
 8e8:	0700                	.insn	2, 0x0700
 8ea:	0021                	.insn	2, 0x0021
 8ec:	1349                	.insn	2, 0x1349
 8ee:	00000b2f          	.insn	4, 0x0b2f
 8f2:	3408                	.insn	2, 0x3408
 8f4:	0300                	.insn	2, 0x0300
 8f6:	3a0e                	.insn	2, 0x3a0e
 8f8:	39053b0b          	.insn	4, 0x39053b0b
 8fc:	3f13490b          	.insn	4, 0x3f13490b
 900:	3c19                	.insn	2, 0x3c19
 902:	0019                	.insn	2, 0x0019
 904:	0900                	.insn	2, 0x0900
 906:	012e                	.insn	2, 0x012e
 908:	0e03193f 053b0b3a 	.insn	8, 0x053b0b3a0e03193f
 910:	0b39                	.insn	2, 0x0b39
 912:	13491927          	.insn	4, 0x13491927
 916:	0111                	.insn	2, 0x0111
 918:	0712                	.insn	2, 0x0712
 91a:	1840                	.insn	2, 0x1840
 91c:	197a                	.insn	2, 0x197a
 91e:	0000                	.insn	2, 0x0000
 920:	050a                	.insn	2, 0x050a
 922:	0300                	.insn	2, 0x0300
 924:	3a08                	.insn	2, 0x3a08
 926:	39053b0b          	.insn	4, 0x39053b0b
 92a:	0213490b          	.insn	4, 0x0213490b
 92e:	1742b717          	auipc	a4,0x1742b
 932:	0000                	.insn	2, 0x0000
 934:	0300340b          	.insn	4, 0x0300340b
 938:	3a08                	.insn	2, 0x3a08
 93a:	39053b0b          	.insn	4, 0x39053b0b
 93e:	0013490b          	.insn	4, 0x0013490b
 942:	0c00                	.insn	2, 0x0c00
 944:	1755010b          	.insn	4, 0x1755010b
 948:	0000                	.insn	2, 0x0000
 94a:	340d                	.insn	2, 0x340d
 94c:	0300                	.insn	2, 0x0300
 94e:	3a0e                	.insn	2, 0x3a0e
 950:	39053b0b          	.insn	4, 0x39053b0b
 954:	0213490b          	.insn	4, 0x0213490b
 958:	1742b717          	auipc	a4,0x1742b
 95c:	0000                	.insn	2, 0x0000
 95e:	340e                	.insn	2, 0x340e
 960:	0300                	.insn	2, 0x0300
 962:	3a08                	.insn	2, 0x3a08
 964:	39053b0b          	.insn	4, 0x39053b0b
 968:	0213490b          	.insn	4, 0x0213490b
 96c:	1742b717          	auipc	a4,0x1742b
 970:	0000                	.insn	2, 0x0000
 972:	0100                	.insn	2, 0x0100
 974:	0024                	.insn	2, 0x0024
 976:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 97a:	00000e03          	lb	t3,0(zero) # 0 <exit-0x10120>
 97e:	2602                	.insn	2, 0x2602
 980:	4900                	.insn	2, 0x4900
 982:	03000013          	li	zero,48
 986:	0111                	.insn	2, 0x0111
 988:	0e25                	.insn	2, 0x0e25
 98a:	01900b13          	li	s6,25
 98e:	0601910b          	.insn	4, 0x0601910b
 992:	1f1b1f03          	lh	t5,497(s6)
 996:	1710                	.insn	2, 0x1710
 998:	0000                	.insn	2, 0x0000
 99a:	2404                	.insn	2, 0x2404
 99c:	0b00                	.insn	2, 0x0b00
 99e:	030b3e0b          	.insn	4, 0x030b3e0b
 9a2:	0008                	.insn	2, 0x0008
 9a4:	0500                	.insn	2, 0x0500
 9a6:	0016                	.insn	2, 0x0016
 9a8:	0b3a0e03          	lb	t3,179(s4)
 9ac:	0b390b3b          	.insn	4, 0x0b390b3b
 9b0:	1349                	.insn	2, 0x1349
 9b2:	0000                	.insn	2, 0x0000
 9b4:	0106                	.insn	2, 0x0106
 9b6:	4901                	.insn	2, 0x4901
 9b8:	00130113          	addi	sp,t1,1
 9bc:	0700                	.insn	2, 0x0700
 9be:	0021                	.insn	2, 0x0021
 9c0:	1349                	.insn	2, 0x1349
 9c2:	00000b2f          	.insn	4, 0x0b2f
 9c6:	3408                	.insn	2, 0x3408
 9c8:	0300                	.insn	2, 0x0300
 9ca:	3a0e                	.insn	2, 0x3a0e
 9cc:	39053b0b          	.insn	4, 0x39053b0b
 9d0:	3f13490b          	.insn	4, 0x3f13490b
 9d4:	3c19                	.insn	2, 0x3c19
 9d6:	0019                	.insn	2, 0x0019
 9d8:	0900                	.insn	2, 0x0900
 9da:	0034                	.insn	2, 0x0034
 9dc:	0b3a1347          	.insn	4, 0x0b3a1347
 9e0:	0b39053b          	.insn	4, 0x0b39053b
 9e4:	1802                	.insn	2, 0x1802
 9e6:	0000                	.insn	2, 0x0000
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
       0:	0f36                	.insn	2, 0x0f36
       2:	0000                	.insn	2, 0x0000
       4:	0005                	.insn	2, 0x0005
       6:	0008                	.insn	2, 0x0008
       8:	00000033          	add	zero,zero,zero
       c:	0101                	.insn	2, 0x0101
       e:	f601                	.insn	2, 0xf601
      10:	0df2                	.insn	2, 0x0df2
      12:	0100                	.insn	2, 0x0100
      14:	0101                	.insn	2, 0x0101
      16:	0001                	.insn	2, 0x0001
      18:	0000                	.insn	2, 0x0000
      1a:	0001                	.insn	2, 0x0001
      1c:	0100                	.insn	2, 0x0100
      1e:	0101                	.insn	2, 0x0101
      20:	021f 0025 0000      	.insn	6, 0x0025021f
      26:	0000                	.insn	2, 0x0000
      28:	0000                	.insn	2, 0x0000
      2a:	0102                	.insn	2, 0x0102
      2c:	021f 030b 008f      	.insn	6, 0x008f030b021f
      32:	0000                	.insn	2, 0x0000
      34:	b400                	.insn	2, 0xb400
      36:	0000                	.insn	2, 0x0000
      38:	0100                	.insn	2, 0x0100
      3a:	00bd                	.insn	2, 0x00bd
      3c:	0000                	.insn	2, 0x0000
      3e:	0001                	.insn	2, 0x0001
      40:	0209                	.insn	2, 0x0209
      42:	04a0                	.insn	2, 0x04a0
      44:	0001                	.insn	2, 0x0001
      46:	0000                	.insn	2, 0x0000
      48:	0000                	.insn	2, 0x0000
      4a:	0538                	.insn	2, 0x0538
      4c:	0901                	.insn	2, 0x0901
      4e:	0000                	.insn	2, 0x0000
      50:	0518                	.insn	2, 0x0518
      52:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      56:	0501                	.insn	2, 0x0501
      58:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      5c:	0501                	.insn	2, 0x0501
      5e:	090d                	.insn	2, 0x090d
      60:	0000                	.insn	2, 0x0000
      62:	0518                	.insn	2, 0x0518
      64:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      68:	0501                	.insn	2, 0x0501
      6a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      6e:	0501                	.insn	2, 0x0501
      70:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      74:	0501                	.insn	2, 0x0501
      76:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      7a:	0518                	.insn	2, 0x0518
      7c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      80:	0501                	.insn	2, 0x0501
      82:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      86:	0501                	.insn	2, 0x0501
      88:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      8c:	0501                	.insn	2, 0x0501
      8e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      92:	0518                	.insn	2, 0x0518
      94:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      98:	0501                	.insn	2, 0x0501
      9a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      9e:	0501                	.insn	2, 0x0501
      a0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      a4:	0501                	.insn	2, 0x0501
      a6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      aa:	0518                	.insn	2, 0x0518
      ac:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      b0:	0519                	.insn	2, 0x0519
      b2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      b6:	0518                	.insn	2, 0x0518
      b8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      bc:	0501                	.insn	2, 0x0501
      be:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      c2:	0501                	.insn	2, 0x0501
      c4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      c8:	0501                	.insn	2, 0x0501
      ca:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      ce:	0501                	.insn	2, 0x0501
      d0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      d4:	0f06                	.insn	2, 0x0f06
      d6:	0105                	.insn	2, 0x0105
      d8:	0409                	.insn	2, 0x0409
      da:	1f00                	.insn	2, 0x1f00
      dc:	0305                	.insn	2, 0x0305
      de:	0809                	.insn	2, 0x0809
      e0:	1800                	.insn	2, 0x1800
      e2:	0305                	.insn	2, 0x0305
      e4:	0409                	.insn	2, 0x0409
      e6:	0e00                	.insn	2, 0x0e00
      e8:	0105                	.insn	2, 0x0105
      ea:	0409                	.insn	2, 0x0409
      ec:	1f00                	.insn	2, 0x1f00
      ee:	0305                	.insn	2, 0x0305
      f0:	0809                	.insn	2, 0x0809
      f2:	0600                	.insn	2, 0x0600
      f4:	0501                	.insn	2, 0x0501
      f6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
      fa:	0f06                	.insn	2, 0x0f06
      fc:	0105                	.insn	2, 0x0105
      fe:	0409                	.insn	2, 0x0409
     100:	2000                	.insn	2, 0x2000
     102:	0305                	.insn	2, 0x0305
     104:	0409                	.insn	2, 0x0409
     106:	1600                	.insn	2, 0x1600
     108:	0305                	.insn	2, 0x0305
     10a:	0409                	.insn	2, 0x0409
     10c:	0600                	.insn	2, 0x0600
     10e:	0501                	.insn	2, 0x0501
     110:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     114:	1806                	.insn	2, 0x1806
     116:	0305                	.insn	2, 0x0305
     118:	0409                	.insn	2, 0x0409
     11a:	0e00                	.insn	2, 0x0e00
     11c:	0105                	.insn	2, 0x0105
     11e:	0809                	.insn	2, 0x0809
     120:	1f00                	.insn	2, 0x1f00
     122:	0305                	.insn	2, 0x0305
     124:	0409                	.insn	2, 0x0409
     126:	0100                	.insn	2, 0x0100
     128:	0305                	.insn	2, 0x0305
     12a:	0009                	.insn	2, 0x0009
     12c:	0600                	.insn	2, 0x0600
     12e:	0501                	.insn	2, 0x0501
     130:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     134:	0501                	.insn	2, 0x0501
     136:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     13a:	0501                	.insn	2, 0x0501
     13c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     140:	0200                	.insn	2, 0x0200
     142:	0204                	.insn	2, 0x0204
     144:	0501                	.insn	2, 0x0501
     146:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     14a:	0200                	.insn	2, 0x0200
     14c:	0004                	.insn	2, 0x0004
     14e:	1806                	.insn	2, 0x1806
     150:	0305                	.insn	2, 0x0305
     152:	0409                	.insn	2, 0x0409
     154:	0100                	.insn	2, 0x0100
     156:	0305                	.insn	2, 0x0305
     158:	0009                	.insn	2, 0x0009
     15a:	0000                	.insn	2, 0x0000
     15c:	0402                	.insn	2, 0x0402
     15e:	1602                	.insn	2, 0x1602
     160:	0305                	.insn	2, 0x0305
     162:	0409                	.insn	2, 0x0409
     164:	0000                	.insn	2, 0x0000
     166:	0402                	.insn	2, 0x0402
     168:	0600                	.insn	2, 0x0600
     16a:	0501                	.insn	2, 0x0501
     16c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     170:	0501                	.insn	2, 0x0501
     172:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     176:	0518                	.insn	2, 0x0518
     178:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     17c:	0501                	.insn	2, 0x0501
     17e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     182:	0501                	.insn	2, 0x0501
     184:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     188:	0501                	.insn	2, 0x0501
     18a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     18e:	0501                	.insn	2, 0x0501
     190:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     194:	0501                	.insn	2, 0x0501
     196:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     19a:	0501                	.insn	2, 0x0501
     19c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1a0:	0106                	.insn	2, 0x0106
     1a2:	0305                	.insn	2, 0x0305
     1a4:	0009                	.insn	2, 0x0009
     1a6:	0600                	.insn	2, 0x0600
     1a8:	0501                	.insn	2, 0x0501
     1aa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1ae:	0501                	.insn	2, 0x0501
     1b0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1b4:	0501                	.insn	2, 0x0501
     1b6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1ba:	0200                	.insn	2, 0x0200
     1bc:	0204                	.insn	2, 0x0204
     1be:	0501                	.insn	2, 0x0501
     1c0:	00040903          	lb	s2,0(s0)
     1c4:	0200                	.insn	2, 0x0200
     1c6:	0004                	.insn	2, 0x0004
     1c8:	0501                	.insn	2, 0x0501
     1ca:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1ce:	0501                	.insn	2, 0x0501
     1d0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1d4:	0518                	.insn	2, 0x0518
     1d6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1da:	0501                	.insn	2, 0x0501
     1dc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1e0:	0501                	.insn	2, 0x0501
     1e2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1e6:	0200                	.insn	2, 0x0200
     1e8:	0304                	.insn	2, 0x0304
     1ea:	0501                	.insn	2, 0x0501
     1ec:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1f0:	0501                	.insn	2, 0x0501
     1f2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1f6:	0501                	.insn	2, 0x0501
     1f8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     1fc:	0200                	.insn	2, 0x0200
     1fe:	0604                	.insn	2, 0x0604
     200:	0501                	.insn	2, 0x0501
     202:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     206:	0501                	.insn	2, 0x0501
     208:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     20c:	0200                	.insn	2, 0x0200
     20e:	0704                	.insn	2, 0x0704
     210:	0106                	.insn	2, 0x0106
     212:	0305                	.insn	2, 0x0305
     214:	0409                	.insn	2, 0x0409
     216:	0000                	.insn	2, 0x0000
     218:	0402                	.insn	2, 0x0402
     21a:	0106                	.insn	2, 0x0106
     21c:	0305                	.insn	2, 0x0305
     21e:	0409                	.insn	2, 0x0409
     220:	0000                	.insn	2, 0x0000
     222:	0402                	.insn	2, 0x0402
     224:	05010607          	.insn	4, 0x05010607
     228:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     22c:	0200                	.insn	2, 0x0200
     22e:	0004                	.insn	2, 0x0004
     230:	0501                	.insn	2, 0x0501
     232:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     236:	0501                	.insn	2, 0x0501
     238:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     23c:	0200                	.insn	2, 0x0200
     23e:	0704                	.insn	2, 0x0704
     240:	0106                	.insn	2, 0x0106
     242:	0305                	.insn	2, 0x0305
     244:	0409                	.insn	2, 0x0409
     246:	0000                	.insn	2, 0x0000
     248:	0402                	.insn	2, 0x0402
     24a:	0609                	.insn	2, 0x0609
     24c:	0501                	.insn	2, 0x0501
     24e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     252:	0200                	.insn	2, 0x0200
     254:	0004                	.insn	2, 0x0004
     256:	0501                	.insn	2, 0x0501
     258:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     25c:	0200                	.insn	2, 0x0200
     25e:	0904                	.insn	2, 0x0904
     260:	0106                	.insn	2, 0x0106
     262:	0305                	.insn	2, 0x0305
     264:	0409                	.insn	2, 0x0409
     266:	0000                	.insn	2, 0x0000
     268:	0402                	.insn	2, 0x0402
     26a:	0501060b          	.insn	4, 0x0501060b
     26e:	00040903          	lb	s2,0(s0)
     272:	0200                	.insn	2, 0x0200
     274:	0e04                	.insn	2, 0x0e04
     276:	0501                	.insn	2, 0x0501
     278:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     27c:	0200                	.insn	2, 0x0200
     27e:	0004                	.insn	2, 0x0004
     280:	0501                	.insn	2, 0x0501
     282:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     286:	0200                	.insn	2, 0x0200
     288:	0e04                	.insn	2, 0x0e04
     28a:	0106                	.insn	2, 0x0106
     28c:	0305                	.insn	2, 0x0305
     28e:	0409                	.insn	2, 0x0409
     290:	0000                	.insn	2, 0x0000
     292:	0402                	.insn	2, 0x0402
     294:	0600                	.insn	2, 0x0600
     296:	0501                	.insn	2, 0x0501
     298:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     29c:	0200                	.insn	2, 0x0200
     29e:	0e04                	.insn	2, 0x0e04
     2a0:	0106                	.insn	2, 0x0106
     2a2:	0305                	.insn	2, 0x0305
     2a4:	0409                	.insn	2, 0x0409
     2a6:	0000                	.insn	2, 0x0000
     2a8:	0402                	.insn	2, 0x0402
     2aa:	05010617          	auipc	a2,0x5010
     2ae:	00040903          	lb	s2,0(s0)
     2b2:	0200                	.insn	2, 0x0200
     2b4:	0004                	.insn	2, 0x0004
     2b6:	0501                	.insn	2, 0x0501
     2b8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     2bc:	0501                	.insn	2, 0x0501
     2be:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     2c2:	0200                	.insn	2, 0x0200
     2c4:	7204                	.insn	2, 0x7204
     2c6:	0106                	.insn	2, 0x0106
     2c8:	0305                	.insn	2, 0x0305
     2ca:	0809                	.insn	2, 0x0809
     2cc:	0000                	.insn	2, 0x0000
     2ce:	01ad0403          	lb	s0,26(s10)
     2d2:	0106                	.insn	2, 0x0106
     2d4:	0305                	.insn	2, 0x0305
     2d6:	0009                	.insn	2, 0x0009
     2d8:	0000                	.insn	2, 0x0000
     2da:	0402                	.insn	2, 0x0402
     2dc:	0100                	.insn	2, 0x0100
     2de:	0305                	.insn	2, 0x0305
     2e0:	0009                	.insn	2, 0x0009
     2e2:	0000                	.insn	2, 0x0000
     2e4:	01ad0403          	lb	s0,26(s10)
     2e8:	0106                	.insn	2, 0x0106
     2ea:	0305                	.insn	2, 0x0305
     2ec:	0409                	.insn	2, 0x0409
     2ee:	0000                	.insn	2, 0x0000
     2f0:	0402                	.insn	2, 0x0402
     2f2:	0600                	.insn	2, 0x0600
     2f4:	0501                	.insn	2, 0x0501
     2f6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     2fa:	0501                	.insn	2, 0x0501
     2fc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     300:	0300                	.insn	2, 0x0300
     302:	ad04                	.insn	2, 0xad04
     304:	0601                	.insn	2, 0x0601
     306:	0501                	.insn	2, 0x0501
     308:	00140903          	lb	s2,1(s0)
     30c:	0501                	.insn	2, 0x0501
     30e:	000c0903          	lb	s2,0(s8)
     312:	0501                	.insn	2, 0x0501
     314:	00040903          	lb	s2,0(s0)
     318:	0501                	.insn	2, 0x0501
     31a:	00040903          	lb	s2,0(s0)
     31e:	0200                	.insn	2, 0x0200
     320:	1804                	.insn	2, 0x1804
     322:	0106                	.insn	2, 0x0106
     324:	0305                	.insn	2, 0x0305
     326:	0409                	.insn	2, 0x0409
     328:	0600                	.insn	2, 0x0600
     32a:	0501                	.insn	2, 0x0501
     32c:	00040903          	lb	s2,0(s0)
     330:	0501                	.insn	2, 0x0501
     332:	00080903          	lb	s2,0(a6)
     336:	0501                	.insn	2, 0x0501
     338:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     33c:	0200                	.insn	2, 0x0200
     33e:	0c04                	.insn	2, 0x0c04
     340:	0106                	.insn	2, 0x0106
     342:	0305                	.insn	2, 0x0305
     344:	0409                	.insn	2, 0x0409
     346:	0600                	.insn	2, 0x0600
     348:	0501                	.insn	2, 0x0501
     34a:	00040903          	lb	s2,0(s0)
     34e:	0200                	.insn	2, 0x0200
     350:	2604                	.insn	2, 0x2604
     352:	0106                	.insn	2, 0x0106
     354:	0305                	.insn	2, 0x0305
     356:	0c09                	.insn	2, 0x0c09
     358:	0000                	.insn	2, 0x0000
     35a:	0402                	.insn	2, 0x0402
     35c:	0100                	.insn	2, 0x0100
     35e:	0305                	.insn	2, 0x0305
     360:	0009                	.insn	2, 0x0009
     362:	0000                	.insn	2, 0x0000
     364:	0402                	.insn	2, 0x0402
     366:	0501062f          	.insn	4, 0x0501062f
     36a:	00040903          	lb	s2,0(s0)
     36e:	0200                	.insn	2, 0x0200
     370:	3a04                	.insn	2, 0x3a04
     372:	0501                	.insn	2, 0x0501
     374:	00040903          	lb	s2,0(s0)
     378:	0200                	.insn	2, 0x0200
     37a:	2f04                	.insn	2, 0x2f04
     37c:	0501                	.insn	2, 0x0501
     37e:	00040903          	lb	s2,0(s0)
     382:	0200                	.insn	2, 0x0200
     384:	3004                	.insn	2, 0x3004
     386:	0106                	.insn	2, 0x0106
     388:	0305                	.insn	2, 0x0305
     38a:	0009                	.insn	2, 0x0009
     38c:	0000                	.insn	2, 0x0000
     38e:	0402                	.insn	2, 0x0402
     390:	0636                	.insn	2, 0x0636
     392:	0501                	.insn	2, 0x0501
     394:	00040903          	lb	s2,0(s0)
     398:	0200                	.insn	2, 0x0200
     39a:	3004                	.insn	2, 0x3004
     39c:	0501                	.insn	2, 0x0501
     39e:	00040903          	lb	s2,0(s0)
     3a2:	0200                	.insn	2, 0x0200
     3a4:	3604                	.insn	2, 0x3604
     3a6:	0501                	.insn	2, 0x0501
     3a8:	00040903          	lb	s2,0(s0)
     3ac:	0501                	.insn	2, 0x0501
     3ae:	00040903          	lb	s2,0(s0)
     3b2:	0501                	.insn	2, 0x0501
     3b4:	00040903          	lb	s2,0(s0)
     3b8:	0200                	.insn	2, 0x0200
     3ba:	3804                	.insn	2, 0x3804
     3bc:	0501                	.insn	2, 0x0501
     3be:	00040903          	lb	s2,0(s0)
     3c2:	0200                	.insn	2, 0x0200
     3c4:	3c04                	.insn	2, 0x3c04
     3c6:	0106                	.insn	2, 0x0106
     3c8:	0305                	.insn	2, 0x0305
     3ca:	0409                	.insn	2, 0x0409
     3cc:	0600                	.insn	2, 0x0600
     3ce:	0501                	.insn	2, 0x0501
     3d0:	00040903          	lb	s2,0(s0)
     3d4:	0200                	.insn	2, 0x0200
     3d6:	0a04                	.insn	2, 0x0a04
     3d8:	0106                	.insn	2, 0x0106
     3da:	0305                	.insn	2, 0x0305
     3dc:	0409                	.insn	2, 0x0409
     3de:	0000                	.insn	2, 0x0000
     3e0:	0402                	.insn	2, 0x0402
     3e2:	013e                	.insn	2, 0x013e
     3e4:	0305                	.insn	2, 0x0305
     3e6:	0009                	.insn	2, 0x0009
     3e8:	0000                	.insn	2, 0x0000
     3ea:	0402                	.insn	2, 0x0402
     3ec:	0100                	.insn	2, 0x0100
     3ee:	0305                	.insn	2, 0x0305
     3f0:	0009                	.insn	2, 0x0009
     3f2:	0100                	.insn	2, 0x0100
     3f4:	0305                	.insn	2, 0x0305
     3f6:	0009                	.insn	2, 0x0009
     3f8:	0000                	.insn	2, 0x0000
     3fa:	0402                	.insn	2, 0x0402
     3fc:	063e                	.insn	2, 0x063e
     3fe:	0501                	.insn	2, 0x0501
     400:	00040903          	lb	s2,0(s0)
     404:	0200                	.insn	2, 0x0200
     406:	4004                	.insn	2, 0x4004
     408:	0106                	.insn	2, 0x0106
     40a:	0305                	.insn	2, 0x0305
     40c:	0409                	.insn	2, 0x0409
     40e:	0000                	.insn	2, 0x0000
     410:	0402                	.insn	2, 0x0402
     412:	03050143          	.insn	4, 0x03050143
     416:	0009                	.insn	2, 0x0009
     418:	0000                	.insn	2, 0x0000
     41a:	0402                	.insn	2, 0x0402
     41c:	0100                	.insn	2, 0x0100
     41e:	0305                	.insn	2, 0x0305
     420:	0409                	.insn	2, 0x0409
     422:	0100                	.insn	2, 0x0100
     424:	0305                	.insn	2, 0x0305
     426:	0009                	.insn	2, 0x0009
     428:	0000                	.insn	2, 0x0000
     42a:	0402                	.insn	2, 0x0402
     42c:	05010643          	.insn	4, 0x05010643
     430:	00040903          	lb	s2,0(s0)
     434:	0200                	.insn	2, 0x0200
     436:	4c04                	.insn	2, 0x4c04
     438:	0106                	.insn	2, 0x0106
     43a:	0305                	.insn	2, 0x0305
     43c:	0409                	.insn	2, 0x0409
     43e:	0000                	.insn	2, 0x0000
     440:	0402                	.insn	2, 0x0402
     442:	0100                	.insn	2, 0x0100
     444:	0305                	.insn	2, 0x0305
     446:	0009                	.insn	2, 0x0009
     448:	0000                	.insn	2, 0x0000
     44a:	0402                	.insn	2, 0x0402
     44c:	063e                	.insn	2, 0x063e
     44e:	0501                	.insn	2, 0x0501
     450:	00040903          	lb	s2,0(s0)
     454:	0501                	.insn	2, 0x0501
     456:	00040903          	lb	s2,0(s0)
     45a:	0200                	.insn	2, 0x0200
     45c:	4d04                	.insn	2, 0x4d04
     45e:	0106                	.insn	2, 0x0106
     460:	0305                	.insn	2, 0x0305
     462:	0409                	.insn	2, 0x0409
     464:	0600                	.insn	2, 0x0600
     466:	0501                	.insn	2, 0x0501
     468:	00040903          	lb	s2,0(s0)
     46c:	0200                	.insn	2, 0x0200
     46e:	0904                	.insn	2, 0x0904
     470:	0501                	.insn	2, 0x0501
     472:	00040903          	lb	s2,0(s0)
     476:	0501                	.insn	2, 0x0501
     478:	00040903          	lb	s2,0(s0)
     47c:	0200                	.insn	2, 0x0200
     47e:	4104                	.insn	2, 0x4104
     480:	0106                	.insn	2, 0x0106
     482:	0305                	.insn	2, 0x0305
     484:	0409                	.insn	2, 0x0409
     486:	0600                	.insn	2, 0x0600
     488:	0501                	.insn	2, 0x0501
     48a:	00040903          	lb	s2,0(s0)
     48e:	0200                	.insn	2, 0x0200
     490:	5b04                	.insn	2, 0x5b04
     492:	0501                	.insn	2, 0x0501
     494:	00080903          	lb	s2,0(a6)
     498:	0200                	.insn	2, 0x0200
     49a:	3e04                	.insn	2, 0x3e04
     49c:	0501                	.insn	2, 0x0501
     49e:	00040903          	lb	s2,0(s0)
     4a2:	0200                	.insn	2, 0x0200
     4a4:	5b04                	.insn	2, 0x5b04
     4a6:	0106                	.insn	2, 0x0106
     4a8:	0305                	.insn	2, 0x0305
     4aa:	0409                	.insn	2, 0x0409
     4ac:	0000                	.insn	2, 0x0000
     4ae:	0402                	.insn	2, 0x0402
     4b0:	0100                	.insn	2, 0x0100
     4b2:	0305                	.insn	2, 0x0305
     4b4:	0009                	.insn	2, 0x0009
     4b6:	0000                	.insn	2, 0x0000
     4b8:	0402                	.insn	2, 0x0402
     4ba:	0664                	.insn	2, 0x0664
     4bc:	0501                	.insn	2, 0x0501
     4be:	00040903          	lb	s2,0(s0)
     4c2:	0200                	.insn	2, 0x0200
     4c4:	6f04                	.insn	2, 0x6f04
     4c6:	0501                	.insn	2, 0x0501
     4c8:	00040903          	lb	s2,0(s0)
     4cc:	0200                	.insn	2, 0x0200
     4ce:	6404                	.insn	2, 0x6404
     4d0:	0501                	.insn	2, 0x0501
     4d2:	00040903          	lb	s2,0(s0)
     4d6:	0200                	.insn	2, 0x0200
     4d8:	6504                	.insn	2, 0x6504
     4da:	0106                	.insn	2, 0x0106
     4dc:	0305                	.insn	2, 0x0305
     4de:	0009                	.insn	2, 0x0009
     4e0:	0000                	.insn	2, 0x0000
     4e2:	0402                	.insn	2, 0x0402
     4e4:	0501066b          	.insn	4, 0x0501066b
     4e8:	00040903          	lb	s2,0(s0)
     4ec:	0200                	.insn	2, 0x0200
     4ee:	6504                	.insn	2, 0x6504
     4f0:	0501                	.insn	2, 0x0501
     4f2:	00040903          	lb	s2,0(s0)
     4f6:	0200                	.insn	2, 0x0200
     4f8:	6b04                	.insn	2, 0x6b04
     4fa:	0501                	.insn	2, 0x0501
     4fc:	00040903          	lb	s2,0(s0)
     500:	0501                	.insn	2, 0x0501
     502:	00040903          	lb	s2,0(s0)
     506:	0501                	.insn	2, 0x0501
     508:	00040903          	lb	s2,0(s0)
     50c:	0200                	.insn	2, 0x0200
     50e:	6d04                	.insn	2, 0x6d04
     510:	0501                	.insn	2, 0x0501
     512:	00040903          	lb	s2,0(s0)
     516:	0200                	.insn	2, 0x0200
     518:	7104                	.insn	2, 0x7104
     51a:	0106                	.insn	2, 0x0106
     51c:	0305                	.insn	2, 0x0305
     51e:	0809                	.insn	2, 0x0809
     520:	0000                	.insn	2, 0x0000
     522:	0402                	.insn	2, 0x0402
     524:	0305013f 06000809 	.insn	8, 0x060008090305013f
     52c:	0501                	.insn	2, 0x0501
     52e:	00040903          	lb	s2,0(s0)
     532:	0200                	.insn	2, 0x0200
     534:	7304                	.insn	2, 0x7304
     536:	0106                	.insn	2, 0x0106
     538:	0305                	.insn	2, 0x0305
     53a:	0409                	.insn	2, 0x0409
     53c:	0000                	.insn	2, 0x0000
     53e:	0402                	.insn	2, 0x0402
     540:	0175                	.insn	2, 0x0175
     542:	0305                	.insn	2, 0x0305
     544:	0009                	.insn	2, 0x0009
     546:	0000                	.insn	2, 0x0000
     548:	0402                	.insn	2, 0x0402
     54a:	0100                	.insn	2, 0x0100
     54c:	0305                	.insn	2, 0x0305
     54e:	0009                	.insn	2, 0x0009
     550:	0000                	.insn	2, 0x0000
     552:	0402                	.insn	2, 0x0402
     554:	0675                	.insn	2, 0x0675
     556:	0501                	.insn	2, 0x0501
     558:	00040903          	lb	s2,0(s0)
     55c:	0200                	.insn	2, 0x0200
     55e:	7804                	.insn	2, 0x7804
     560:	0106                	.insn	2, 0x0106
     562:	0305                	.insn	2, 0x0305
     564:	0409                	.insn	2, 0x0409
     566:	0000                	.insn	2, 0x0000
     568:	0402                	.insn	2, 0x0402
     56a:	017e                	.insn	2, 0x017e
     56c:	0305                	.insn	2, 0x0305
     56e:	0009                	.insn	2, 0x0009
     570:	0000                	.insn	2, 0x0000
     572:	0402                	.insn	2, 0x0402
     574:	0100                	.insn	2, 0x0100
     576:	0305                	.insn	2, 0x0305
     578:	0009                	.insn	2, 0x0009
     57a:	0000                	.insn	2, 0x0000
     57c:	0402                	.insn	2, 0x0402
     57e:	067e                	.insn	2, 0x067e
     580:	0501                	.insn	2, 0x0501
     582:	00040903          	lb	s2,0(s0)
     586:	0200                	.insn	2, 0x0200
     588:	0004                	.insn	2, 0x0004
     58a:	0106                	.insn	2, 0x0106
     58c:	0305                	.insn	2, 0x0305
     58e:	0009                	.insn	2, 0x0009
     590:	0000                	.insn	2, 0x0000
     592:	0402                	.insn	2, 0x0402
     594:	067e                	.insn	2, 0x067e
     596:	0501                	.insn	2, 0x0501
     598:	00040903          	lb	s2,0(s0)
     59c:	0501                	.insn	2, 0x0501
     59e:	00040903          	lb	s2,0(s0)
     5a2:	0300                	.insn	2, 0x0300
     5a4:	8004                	.insn	2, 0x8004
     5a6:	0601                	.insn	2, 0x0601
     5a8:	0501                	.insn	2, 0x0501
     5aa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     5ae:	0200                	.insn	2, 0x0200
     5b0:	0004                	.insn	2, 0x0004
     5b2:	0501                	.insn	2, 0x0501
     5b4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     5b8:	0300                	.insn	2, 0x0300
     5ba:	8204                	.insn	2, 0x8204
     5bc:	0101                	.insn	2, 0x0101
     5be:	0305                	.insn	2, 0x0305
     5c0:	0009                	.insn	2, 0x0009
     5c2:	0000                	.insn	2, 0x0000
     5c4:	0402                	.insn	2, 0x0402
     5c6:	0100                	.insn	2, 0x0100
     5c8:	0305                	.insn	2, 0x0305
     5ca:	0009                	.insn	2, 0x0009
     5cc:	0100                	.insn	2, 0x0100
     5ce:	0305                	.insn	2, 0x0305
     5d0:	0009                	.insn	2, 0x0009
     5d2:	1800                	.insn	2, 0x1800
     5d4:	0305                	.insn	2, 0x0305
     5d6:	0009                	.insn	2, 0x0009
     5d8:	0100                	.insn	2, 0x0100
     5da:	0305                	.insn	2, 0x0305
     5dc:	0009                	.insn	2, 0x0009
     5de:	0100                	.insn	2, 0x0100
     5e0:	0305                	.insn	2, 0x0305
     5e2:	0009                	.insn	2, 0x0009
     5e4:	0000                	.insn	2, 0x0000
     5e6:	0402                	.insn	2, 0x0402
     5e8:	011c                	.insn	2, 0x011c
     5ea:	0305                	.insn	2, 0x0305
     5ec:	0009                	.insn	2, 0x0009
     5ee:	0100                	.insn	2, 0x0100
     5f0:	0305                	.insn	2, 0x0305
     5f2:	0009                	.insn	2, 0x0009
     5f4:	0000                	.insn	2, 0x0000
     5f6:	0402                	.insn	2, 0x0402
     5f8:	0125                	.insn	2, 0x0125
     5fa:	0305                	.insn	2, 0x0305
     5fc:	0009                	.insn	2, 0x0009
     5fe:	0100                	.insn	2, 0x0100
     600:	0305                	.insn	2, 0x0305
     602:	0009                	.insn	2, 0x0009
     604:	0000                	.insn	2, 0x0000
     606:	0402                	.insn	2, 0x0402
     608:	012e                	.insn	2, 0x012e
     60a:	0305                	.insn	2, 0x0305
     60c:	0009                	.insn	2, 0x0009
     60e:	0000                	.insn	2, 0x0000
     610:	0402                	.insn	2, 0x0402
     612:	0305013f 01000009 	.insn	8, 0x010000090305013f
     61a:	0305                	.insn	2, 0x0305
     61c:	0c09                	.insn	2, 0x0c09
     61e:	0600                	.insn	2, 0x0600
     620:	0501                	.insn	2, 0x0501
     622:	00080903          	lb	s2,0(a6)
     626:	0200                	.insn	2, 0x0200
     628:	0004                	.insn	2, 0x0004
     62a:	0106                	.insn	2, 0x0106
     62c:	0305                	.insn	2, 0x0305
     62e:	0009                	.insn	2, 0x0009
     630:	0000                	.insn	2, 0x0000
     632:	01800403          	lb	s0,24(zero) # 18 <exit-0x10108>
     636:	1606                	.insn	2, 0x1606
     638:	0305                	.insn	2, 0x0305
     63a:	0409                	.insn	2, 0x0409
     63c:	0100                	.insn	2, 0x0100
     63e:	0305                	.insn	2, 0x0305
     640:	0009                	.insn	2, 0x0009
     642:	0000                	.insn	2, 0x0000
     644:	0402                	.insn	2, 0x0402
     646:	064a                	.insn	2, 0x064a
     648:	0518                	.insn	2, 0x0518
     64a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     64e:	0501                	.insn	2, 0x0501
     650:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     654:	0501                	.insn	2, 0x0501
     656:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     65a:	0501                	.insn	2, 0x0501
     65c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     660:	0501                	.insn	2, 0x0501
     662:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     666:	0200                	.insn	2, 0x0200
     668:	0004                	.insn	2, 0x0004
     66a:	0501                	.insn	2, 0x0501
     66c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     670:	0501                	.insn	2, 0x0501
     672:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     676:	0200                	.insn	2, 0x0200
     678:	4a04                	.insn	2, 0x4a04
     67a:	0106                	.insn	2, 0x0106
     67c:	0305                	.insn	2, 0x0305
     67e:	0809                	.insn	2, 0x0809
     680:	0100                	.insn	2, 0x0100
     682:	0305                	.insn	2, 0x0305
     684:	0c09                	.insn	2, 0x0c09
     686:	0100                	.insn	2, 0x0100
     688:	0305                	.insn	2, 0x0305
     68a:	0409                	.insn	2, 0x0409
     68c:	0000                	.insn	2, 0x0000
     68e:	0402                	.insn	2, 0x0402
     690:	0600                	.insn	2, 0x0600
     692:	0501                	.insn	2, 0x0501
     694:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     698:	0106                	.insn	2, 0x0106
     69a:	0305                	.insn	2, 0x0305
     69c:	0009                	.insn	2, 0x0009
     69e:	0000                	.insn	2, 0x0000
     6a0:	0402                	.insn	2, 0x0402
     6a2:	064a                	.insn	2, 0x064a
     6a4:	0501                	.insn	2, 0x0501
     6a6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6aa:	0501                	.insn	2, 0x0501
     6ac:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6b0:	0200                	.insn	2, 0x0200
     6b2:	0004                	.insn	2, 0x0004
     6b4:	0518                	.insn	2, 0x0518
     6b6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6ba:	0501                	.insn	2, 0x0501
     6bc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6c0:	0501                	.insn	2, 0x0501
     6c2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6c6:	0519                	.insn	2, 0x0519
     6c8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6cc:	1806                	.insn	2, 0x1806
     6ce:	0105                	.insn	2, 0x0105
     6d0:	0809                	.insn	2, 0x0809
     6d2:	0100                	.insn	2, 0x0100
     6d4:	0105                	.insn	2, 0x0105
     6d6:	1409                	.insn	2, 0x1409
     6d8:	0000                	.insn	2, 0x0000
     6da:	0402                	.insn	2, 0x0402
     6dc:	0676                	.insn	2, 0x0676
     6de:	0512                	.insn	2, 0x0512
     6e0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6e4:	0501                	.insn	2, 0x0501
     6e6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     6ea:	0300                	.insn	2, 0x0300
     6ec:	8a04                	.insn	2, 0x8a04
     6ee:	0101                	.insn	2, 0x0101
     6f0:	0305                	.insn	2, 0x0305
     6f2:	0009                	.insn	2, 0x0009
     6f4:	0100                	.insn	2, 0x0100
     6f6:	0305                	.insn	2, 0x0305
     6f8:	0009                	.insn	2, 0x0009
     6fa:	0100                	.insn	2, 0x0100
     6fc:	0305                	.insn	2, 0x0305
     6fe:	0009                	.insn	2, 0x0009
     700:	0000                	.insn	2, 0x0000
     702:	01910403          	lb	s0,25(sp) # 13082d <__BSS_END__+0x11b83d>
     706:	0501                	.insn	2, 0x0501
     708:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     70c:	0501                	.insn	2, 0x0501
     70e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     712:	0200                	.insn	2, 0x0200
     714:	0004                	.insn	2, 0x0004
     716:	0501                	.insn	2, 0x0501
     718:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     71c:	0300                	.insn	2, 0x0300
     71e:	9104                	.insn	2, 0x9104
     720:	0601                	.insn	2, 0x0601
     722:	0501                	.insn	2, 0x0501
     724:	00040903          	lb	s2,0(s0)
     728:	0501                	.insn	2, 0x0501
     72a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     72e:	0300                	.insn	2, 0x0300
     730:	cc04                	.insn	2, 0xcc04
     732:	0602                	.insn	2, 0x0602
     734:	0501                	.insn	2, 0x0501
     736:	00040903          	lb	s2,0(s0)
     73a:	0200                	.insn	2, 0x0200
     73c:	2d04                	.insn	2, 0x2d04
     73e:	0106                	.insn	2, 0x0106
     740:	0305                	.insn	2, 0x0305
     742:	0409                	.insn	2, 0x0409
     744:	0100                	.insn	2, 0x0100
     746:	0305                	.insn	2, 0x0305
     748:	0409                	.insn	2, 0x0409
     74a:	0000                	.insn	2, 0x0000
     74c:	0402                	.insn	2, 0x0402
     74e:	0674                	.insn	2, 0x0674
     750:	0501                	.insn	2, 0x0501
     752:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     756:	0200                	.insn	2, 0x0200
     758:	0004                	.insn	2, 0x0004
     75a:	0501                	.insn	2, 0x0501
     75c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     760:	0501                	.insn	2, 0x0501
     762:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     766:	0501                	.insn	2, 0x0501
     768:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     76c:	0200                	.insn	2, 0x0200
     76e:	7404                	.insn	2, 0x7404
     770:	0106                	.insn	2, 0x0106
     772:	0305                	.insn	2, 0x0305
     774:	0c09                	.insn	2, 0x0c09
     776:	0100                	.insn	2, 0x0100
     778:	0305                	.insn	2, 0x0305
     77a:	0409                	.insn	2, 0x0409
     77c:	0100                	.insn	2, 0x0100
     77e:	0305                	.insn	2, 0x0305
     780:	0409                	.insn	2, 0x0409
     782:	0100                	.insn	2, 0x0100
     784:	0305                	.insn	2, 0x0305
     786:	0009                	.insn	2, 0x0009
     788:	0000                	.insn	2, 0x0000
     78a:	0402                	.insn	2, 0x0402
     78c:	061c                	.insn	2, 0x061c
     78e:	0518                	.insn	2, 0x0518
     790:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     794:	0501                	.insn	2, 0x0501
     796:	00080903          	lb	s2,0(a6)
     79a:	0200                	.insn	2, 0x0200
     79c:	1d04                	.insn	2, 0x1d04
     79e:	0501                	.insn	2, 0x0501
     7a0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7a4:	0200                	.insn	2, 0x0200
     7a6:	0004                	.insn	2, 0x0004
     7a8:	0501                	.insn	2, 0x0501
     7aa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7ae:	0501                	.insn	2, 0x0501
     7b0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7b4:	0501                	.insn	2, 0x0501
     7b6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7ba:	0200                	.insn	2, 0x0200
     7bc:	2004                	.insn	2, 0x2004
     7be:	0106                	.insn	2, 0x0106
     7c0:	0305                	.insn	2, 0x0305
     7c2:	0c09                	.insn	2, 0x0c09
     7c4:	0000                	.insn	2, 0x0000
     7c6:	0402                	.insn	2, 0x0402
     7c8:	0624                	.insn	2, 0x0624
     7ca:	0501                	.insn	2, 0x0501
     7cc:	00040903          	lb	s2,0(s0)
     7d0:	0200                	.insn	2, 0x0200
     7d2:	2504                	.insn	2, 0x2504
     7d4:	0501                	.insn	2, 0x0501
     7d6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7da:	0501                	.insn	2, 0x0501
     7dc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7e0:	0200                	.insn	2, 0x0200
     7e2:	2e04                	.insn	2, 0x2e04
     7e4:	0501                	.insn	2, 0x0501
     7e6:	00080903          	lb	s2,0(a6)
     7ea:	0200                	.insn	2, 0x0200
     7ec:	2f04                	.insn	2, 0x2f04
     7ee:	0501                	.insn	2, 0x0501
     7f0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7f4:	0200                	.insn	2, 0x0200
     7f6:	0004                	.insn	2, 0x0004
     7f8:	0501                	.insn	2, 0x0501
     7fa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     7fe:	0200                	.insn	2, 0x0200
     800:	2f04                	.insn	2, 0x2f04
     802:	0106                	.insn	2, 0x0106
     804:	0305                	.insn	2, 0x0305
     806:	0409                	.insn	2, 0x0409
     808:	0000                	.insn	2, 0x0000
     80a:	0402                	.insn	2, 0x0402
     80c:	0600                	.insn	2, 0x0600
     80e:	0501                	.insn	2, 0x0501
     810:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     814:	0200                	.insn	2, 0x0200
     816:	2f04                	.insn	2, 0x2f04
     818:	0106                	.insn	2, 0x0106
     81a:	0305                	.insn	2, 0x0305
     81c:	0809                	.insn	2, 0x0809
     81e:	0000                	.insn	2, 0x0000
     820:	0402                	.insn	2, 0x0402
     822:	0501063f 00000903 	.insn	8, 0x09030501063f
     82a:	0501                	.insn	2, 0x0501
     82c:	000c0903          	lb	s2,0(s8)
     830:	0106                	.insn	2, 0x0106
     832:	0305                	.insn	2, 0x0305
     834:	0809                	.insn	2, 0x0809
     836:	0000                	.insn	2, 0x0000
     838:	0402                	.insn	2, 0x0402
     83a:	0600                	.insn	2, 0x0600
     83c:	0501                	.insn	2, 0x0501
     83e:	00040903          	lb	s2,0(s0)
     842:	0106                	.insn	2, 0x0106
     844:	0305                	.insn	2, 0x0305
     846:	0009                	.insn	2, 0x0009
     848:	0000                	.insn	2, 0x0000
     84a:	0402                	.insn	2, 0x0402
     84c:	0608                	.insn	2, 0x0608
     84e:	0516                	.insn	2, 0x0516
     850:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     854:	0200                	.insn	2, 0x0200
     856:	0004                	.insn	2, 0x0004
     858:	0501                	.insn	2, 0x0501
     85a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     85e:	0200                	.insn	2, 0x0200
     860:	0804                	.insn	2, 0x0804
     862:	0106                	.insn	2, 0x0106
     864:	0305                	.insn	2, 0x0305
     866:	0409                	.insn	2, 0x0409
     868:	0000                	.insn	2, 0x0000
     86a:	01be0403          	lb	s0,27(t3)
     86e:	0106                	.insn	2, 0x0106
     870:	0305                	.insn	2, 0x0305
     872:	0009                	.insn	2, 0x0009
     874:	0000                	.insn	2, 0x0000
     876:	0402                	.insn	2, 0x0402
     878:	0100                	.insn	2, 0x0100
     87a:	0305                	.insn	2, 0x0305
     87c:	0009                	.insn	2, 0x0009
     87e:	0100                	.insn	2, 0x0100
     880:	0305                	.insn	2, 0x0305
     882:	0009                	.insn	2, 0x0009
     884:	0000                	.insn	2, 0x0000
     886:	01be0403          	lb	s0,27(t3)
     88a:	0106                	.insn	2, 0x0106
     88c:	0305                	.insn	2, 0x0305
     88e:	0409                	.insn	2, 0x0409
     890:	0000                	.insn	2, 0x0000
     892:	01c00403          	lb	s0,28(zero) # 1c <exit-0x10104>
     896:	0106                	.insn	2, 0x0106
     898:	0305                	.insn	2, 0x0305
     89a:	0409                	.insn	2, 0x0409
     89c:	0000                	.insn	2, 0x0000
     89e:	01c30403          	lb	s0,28(t1)
     8a2:	0501                	.insn	2, 0x0501
     8a4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     8a8:	0200                	.insn	2, 0x0200
     8aa:	0004                	.insn	2, 0x0004
     8ac:	0501                	.insn	2, 0x0501
     8ae:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     8b2:	0300                	.insn	2, 0x0300
     8b4:	c304                	.insn	2, 0xc304
     8b6:	0601                	.insn	2, 0x0601
     8b8:	0501                	.insn	2, 0x0501
     8ba:	00040903          	lb	s2,0(s0)
     8be:	0200                	.insn	2, 0x0200
     8c0:	0004                	.insn	2, 0x0004
     8c2:	0106                	.insn	2, 0x0106
     8c4:	0305                	.insn	2, 0x0305
     8c6:	0009                	.insn	2, 0x0009
     8c8:	0000                	.insn	2, 0x0000
     8ca:	01c30403          	lb	s0,28(t1)
     8ce:	0106                	.insn	2, 0x0106
     8d0:	0305                	.insn	2, 0x0305
     8d2:	0409                	.insn	2, 0x0409
     8d4:	0000                	.insn	2, 0x0000
     8d6:	01cc0403          	lb	s0,28(s8)
     8da:	0106                	.insn	2, 0x0106
     8dc:	0305                	.insn	2, 0x0305
     8de:	0409                	.insn	2, 0x0409
     8e0:	0000                	.insn	2, 0x0000
     8e2:	0402                	.insn	2, 0x0402
     8e4:	0100                	.insn	2, 0x0100
     8e6:	0305                	.insn	2, 0x0305
     8e8:	0009                	.insn	2, 0x0009
     8ea:	0100                	.insn	2, 0x0100
     8ec:	0305                	.insn	2, 0x0305
     8ee:	0009                	.insn	2, 0x0009
     8f0:	0000                	.insn	2, 0x0000
     8f2:	02a70403          	lb	s0,42(a4) # 1742b996 <__BSS_END__+0x174169a6>
     8f6:	0106                	.insn	2, 0x0106
     8f8:	0305                	.insn	2, 0x0305
     8fa:	0809                	.insn	2, 0x0809
     8fc:	0000                	.insn	2, 0x0000
     8fe:	02e20403          	lb	s0,46(tp) # 2e <exit-0x100f2>
     902:	0106                	.insn	2, 0x0106
     904:	0305                	.insn	2, 0x0305
     906:	0009                	.insn	2, 0x0009
     908:	0100                	.insn	2, 0x0100
     90a:	0305                	.insn	2, 0x0305
     90c:	0c09                	.insn	2, 0x0c09
     90e:	0600                	.insn	2, 0x0600
     910:	0501                	.insn	2, 0x0501
     912:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     916:	0300                	.insn	2, 0x0300
     918:	cd04                	.insn	2, 0xcd04
     91a:	0601                	.insn	2, 0x0601
     91c:	0501                	.insn	2, 0x0501
     91e:	00040903          	lb	s2,0(s0)
     922:	0106                	.insn	2, 0x0106
     924:	0305                	.insn	2, 0x0305
     926:	0409                	.insn	2, 0x0409
     928:	0000                	.insn	2, 0x0000
     92a:	0402                	.insn	2, 0x0402
     92c:	0600                	.insn	2, 0x0600
     92e:	0501                	.insn	2, 0x0501
     930:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     934:	0300                	.insn	2, 0x0300
     936:	e404                	.insn	2, 0xe404
     938:	0601                	.insn	2, 0x0601
     93a:	0501                	.insn	2, 0x0501
     93c:	00040903          	lb	s2,0(s0)
     940:	0300                	.insn	2, 0x0300
     942:	ef04                	.insn	2, 0xef04
     944:	0101                	.insn	2, 0x0101
     946:	0305                	.insn	2, 0x0305
     948:	0409                	.insn	2, 0x0409
     94a:	0000                	.insn	2, 0x0000
     94c:	01e40403          	lb	s0,30(s0)
     950:	0501                	.insn	2, 0x0501
     952:	00040903          	lb	s2,0(s0)
     956:	0300                	.insn	2, 0x0300
     958:	e504                	.insn	2, 0xe504
     95a:	0601                	.insn	2, 0x0601
     95c:	0501                	.insn	2, 0x0501
     95e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     962:	0300                	.insn	2, 0x0300
     964:	eb04                	.insn	2, 0xeb04
     966:	0601                	.insn	2, 0x0601
     968:	0501                	.insn	2, 0x0501
     96a:	00040903          	lb	s2,0(s0)
     96e:	0300                	.insn	2, 0x0300
     970:	e504                	.insn	2, 0xe504
     972:	0101                	.insn	2, 0x0101
     974:	0305                	.insn	2, 0x0305
     976:	0409                	.insn	2, 0x0409
     978:	0000                	.insn	2, 0x0000
     97a:	01eb0403          	lb	s0,30(s6)
     97e:	0501                	.insn	2, 0x0501
     980:	00040903          	lb	s2,0(s0)
     984:	0501                	.insn	2, 0x0501
     986:	00040903          	lb	s2,0(s0)
     98a:	0501                	.insn	2, 0x0501
     98c:	00040903          	lb	s2,0(s0)
     990:	0300                	.insn	2, 0x0300
     992:	ed04                	.insn	2, 0xed04
     994:	0101                	.insn	2, 0x0101
     996:	0305                	.insn	2, 0x0305
     998:	0409                	.insn	2, 0x0409
     99a:	0000                	.insn	2, 0x0000
     99c:	01f10403          	lb	s0,31(sp)
     9a0:	0106                	.insn	2, 0x0106
     9a2:	0305                	.insn	2, 0x0305
     9a4:	0409                	.insn	2, 0x0409
     9a6:	0600                	.insn	2, 0x0600
     9a8:	0501                	.insn	2, 0x0501
     9aa:	00040903          	lb	s2,0(s0)
     9ae:	0300                	.insn	2, 0x0300
     9b0:	c104                	.insn	2, 0xc104
     9b2:	0601                	.insn	2, 0x0601
     9b4:	0501                	.insn	2, 0x0501
     9b6:	00040903          	lb	s2,0(s0)
     9ba:	0106                	.insn	2, 0x0106
     9bc:	0305                	.insn	2, 0x0305
     9be:	0409                	.insn	2, 0x0409
     9c0:	0000                	.insn	2, 0x0000
     9c2:	01db0403          	lb	s0,29(s6)
     9c6:	0106                	.insn	2, 0x0106
     9c8:	0305                	.insn	2, 0x0305
     9ca:	0c09                	.insn	2, 0x0c09
     9cc:	0600                	.insn	2, 0x0600
     9ce:	0501                	.insn	2, 0x0501
     9d0:	00040903          	lb	s2,0(s0)
     9d4:	0501                	.insn	2, 0x0501
     9d6:	00040903          	lb	s2,0(s0)
     9da:	0300                	.insn	2, 0x0300
     9dc:	bf04                	.insn	2, 0xbf04
     9de:	0601                	.insn	2, 0x0601
     9e0:	0501                	.insn	2, 0x0501
     9e2:	00040903          	lb	s2,0(s0)
     9e6:	0300                	.insn	2, 0x0300
     9e8:	f304                	.insn	2, 0xf304
     9ea:	0101                	.insn	2, 0x0101
     9ec:	0305                	.insn	2, 0x0305
     9ee:	0009                	.insn	2, 0x0009
     9f0:	0000                	.insn	2, 0x0000
     9f2:	0402                	.insn	2, 0x0402
     9f4:	0100                	.insn	2, 0x0100
     9f6:	0305                	.insn	2, 0x0305
     9f8:	0009                	.insn	2, 0x0009
     9fa:	0100                	.insn	2, 0x0100
     9fc:	0305                	.insn	2, 0x0305
     9fe:	0009                	.insn	2, 0x0009
     a00:	0100                	.insn	2, 0x0100
     a02:	0305                	.insn	2, 0x0305
     a04:	0009                	.insn	2, 0x0009
     a06:	0000                	.insn	2, 0x0000
     a08:	01f30403          	lb	s0,31(t1)
     a0c:	0106                	.insn	2, 0x0106
     a0e:	0305                	.insn	2, 0x0305
     a10:	0409                	.insn	2, 0x0409
     a12:	0000                	.insn	2, 0x0000
     a14:	01f50403          	lb	s0,31(a0) # 101f <exit-0xf101>
     a18:	0106                	.insn	2, 0x0106
     a1a:	0305                	.insn	2, 0x0305
     a1c:	0409                	.insn	2, 0x0409
     a1e:	0000                	.insn	2, 0x0000
     a20:	01f80403          	lb	s0,31(a6)
     a24:	0501                	.insn	2, 0x0501
     a26:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     a2a:	0200                	.insn	2, 0x0200
     a2c:	0004                	.insn	2, 0x0004
     a2e:	0501                	.insn	2, 0x0501
     a30:	00040903          	lb	s2,0(s0)
     a34:	0501                	.insn	2, 0x0501
     a36:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     a3a:	0300                	.insn	2, 0x0300
     a3c:	f804                	.insn	2, 0xf804
     a3e:	0601                	.insn	2, 0x0601
     a40:	0501                	.insn	2, 0x0501
     a42:	00040903          	lb	s2,0(s0)
     a46:	0300                	.insn	2, 0x0300
     a48:	8104                	.insn	2, 0x8104
     a4a:	0602                	.insn	2, 0x0602
     a4c:	0501                	.insn	2, 0x0501
     a4e:	00040903          	lb	s2,0(s0)
     a52:	0200                	.insn	2, 0x0200
     a54:	0004                	.insn	2, 0x0004
     a56:	0501                	.insn	2, 0x0501
     a58:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     a5c:	0300                	.insn	2, 0x0300
     a5e:	f304                	.insn	2, 0xf304
     a60:	0601                	.insn	2, 0x0601
     a62:	0501                	.insn	2, 0x0501
     a64:	00040903          	lb	s2,0(s0)
     a68:	0501                	.insn	2, 0x0501
     a6a:	00040903          	lb	s2,0(s0)
     a6e:	0501                	.insn	2, 0x0501
     a70:	00040903          	lb	s2,0(s0)
     a74:	0300                	.insn	2, 0x0300
     a76:	8204                	.insn	2, 0x8204
     a78:	0602                	.insn	2, 0x0602
     a7a:	0501                	.insn	2, 0x0501
     a7c:	00040903          	lb	s2,0(s0)
     a80:	0106                	.insn	2, 0x0106
     a82:	0305                	.insn	2, 0x0305
     a84:	0409                	.insn	2, 0x0409
     a86:	0000                	.insn	2, 0x0000
     a88:	01f30403          	lb	s0,31(t1)
     a8c:	0501                	.insn	2, 0x0501
     a8e:	00040903          	lb	s2,0(s0)
     a92:	0501                	.insn	2, 0x0501
     a94:	00040903          	lb	s2,0(s0)
     a98:	0300                	.insn	2, 0x0300
     a9a:	f604                	.insn	2, 0xf604
     a9c:	0601                	.insn	2, 0x0601
     a9e:	0501                	.insn	2, 0x0501
     aa0:	00040903          	lb	s2,0(s0)
     aa4:	0106                	.insn	2, 0x0106
     aa6:	0305                	.insn	2, 0x0305
     aa8:	0409                	.insn	2, 0x0409
     aaa:	0000                	.insn	2, 0x0000
     aac:	02900403          	lb	s0,41(zero) # 29 <exit-0x100f7>
     ab0:	0501                	.insn	2, 0x0501
     ab2:	00040903          	lb	s2,0(s0)
     ab6:	0501                	.insn	2, 0x0501
     ab8:	00040903          	lb	s2,0(s0)
     abc:	0300                	.insn	2, 0x0300
     abe:	f304                	.insn	2, 0xf304
     ac0:	0101                	.insn	2, 0x0101
     ac2:	0305                	.insn	2, 0x0305
     ac4:	0409                	.insn	2, 0x0409
     ac6:	0000                	.insn	2, 0x0000
     ac8:	02900403          	lb	s0,41(zero) # 29 <exit-0x100f7>
     acc:	0106                	.insn	2, 0x0106
     ace:	0305                	.insn	2, 0x0305
     ad0:	0409                	.insn	2, 0x0409
     ad2:	0000                	.insn	2, 0x0000
     ad4:	0402                	.insn	2, 0x0402
     ad6:	0100                	.insn	2, 0x0100
     ad8:	0305                	.insn	2, 0x0305
     ada:	0009                	.insn	2, 0x0009
     adc:	0000                	.insn	2, 0x0000
     ade:	02990403          	lb	s0,41(s2) # 7e91 <exit-0x828f>
     ae2:	0106                	.insn	2, 0x0106
     ae4:	0305                	.insn	2, 0x0305
     ae6:	0409                	.insn	2, 0x0409
     ae8:	0000                	.insn	2, 0x0000
     aea:	02a40403          	lb	s0,42(s0)
     aee:	0501                	.insn	2, 0x0501
     af0:	00040903          	lb	s2,0(s0)
     af4:	0300                	.insn	2, 0x0300
     af6:	9904                	.insn	2, 0x9904
     af8:	0102                	.insn	2, 0x0102
     afa:	0305                	.insn	2, 0x0305
     afc:	0409                	.insn	2, 0x0409
     afe:	0000                	.insn	2, 0x0000
     b00:	029a0403          	lb	s0,41(s4)
     b04:	0106                	.insn	2, 0x0106
     b06:	0305                	.insn	2, 0x0305
     b08:	0009                	.insn	2, 0x0009
     b0a:	0000                	.insn	2, 0x0000
     b0c:	02a00403          	lb	s0,42(zero) # 2a <exit-0x100f6>
     b10:	0106                	.insn	2, 0x0106
     b12:	0305                	.insn	2, 0x0305
     b14:	0409                	.insn	2, 0x0409
     b16:	0000                	.insn	2, 0x0000
     b18:	029a0403          	lb	s0,41(s4)
     b1c:	0501                	.insn	2, 0x0501
     b1e:	00040903          	lb	s2,0(s0)
     b22:	0300                	.insn	2, 0x0300
     b24:	a004                	.insn	2, 0xa004
     b26:	0102                	.insn	2, 0x0102
     b28:	0305                	.insn	2, 0x0305
     b2a:	0409                	.insn	2, 0x0409
     b2c:	0100                	.insn	2, 0x0100
     b2e:	0305                	.insn	2, 0x0305
     b30:	0409                	.insn	2, 0x0409
     b32:	0100                	.insn	2, 0x0100
     b34:	0305                	.insn	2, 0x0305
     b36:	0409                	.insn	2, 0x0409
     b38:	0000                	.insn	2, 0x0000
     b3a:	02a20403          	lb	s0,42(tp) # 2a <exit-0x100f6>
     b3e:	0501                	.insn	2, 0x0501
     b40:	00040903          	lb	s2,0(s0)
     b44:	0300                	.insn	2, 0x0300
     b46:	a604                	.insn	2, 0xa604
     b48:	0602                	.insn	2, 0x0602
     b4a:	0501                	.insn	2, 0x0501
     b4c:	00080903          	lb	s2,0(a6)
     b50:	0300                	.insn	2, 0x0300
     b52:	f404                	.insn	2, 0xf404
     b54:	0101                	.insn	2, 0x0101
     b56:	0305                	.insn	2, 0x0305
     b58:	0c09                	.insn	2, 0x0c09
     b5a:	0000                	.insn	2, 0x0000
     b5c:	02a80403          	lb	s0,42(a6)
     b60:	0501                	.insn	2, 0x0501
     b62:	00040903          	lb	s2,0(s0)
     b66:	0300                	.insn	2, 0x0300
     b68:	aa04                	.insn	2, 0xaa04
     b6a:	0102                	.insn	2, 0x0102
     b6c:	0305                	.insn	2, 0x0305
     b6e:	0009                	.insn	2, 0x0009
     b70:	0000                	.insn	2, 0x0000
     b72:	0402                	.insn	2, 0x0402
     b74:	0100                	.insn	2, 0x0100
     b76:	0305                	.insn	2, 0x0305
     b78:	0009                	.insn	2, 0x0009
     b7a:	0000                	.insn	2, 0x0000
     b7c:	02aa0403          	lb	s0,42(s4)
     b80:	0106                	.insn	2, 0x0106
     b82:	0305                	.insn	2, 0x0305
     b84:	0409                	.insn	2, 0x0409
     b86:	0000                	.insn	2, 0x0000
     b88:	02ac0403          	lb	s0,42(s8)
     b8c:	0106                	.insn	2, 0x0106
     b8e:	0305                	.insn	2, 0x0305
     b90:	0009                	.insn	2, 0x0009
     b92:	0000                	.insn	2, 0x0000
     b94:	0402                	.insn	2, 0x0402
     b96:	0100                	.insn	2, 0x0100
     b98:	0305                	.insn	2, 0x0305
     b9a:	0009                	.insn	2, 0x0009
     b9c:	0000                	.insn	2, 0x0000
     b9e:	02ae0403          	lb	s0,42(t3)
     ba2:	0106                	.insn	2, 0x0106
     ba4:	0305                	.insn	2, 0x0305
     ba6:	0409                	.insn	2, 0x0409
     ba8:	0000                	.insn	2, 0x0000
     baa:	02ac0403          	lb	s0,42(s8)
     bae:	0501                	.insn	2, 0x0501
     bb0:	00040903          	lb	s2,0(s0)
     bb4:	0300                	.insn	2, 0x0300
     bb6:	af04                	.insn	2, 0xaf04
     bb8:	0102                	.insn	2, 0x0102
     bba:	0305                	.insn	2, 0x0305
     bbc:	0409                	.insn	2, 0x0409
     bbe:	0100                	.insn	2, 0x0100
     bc0:	0305                	.insn	2, 0x0305
     bc2:	0009                	.insn	2, 0x0009
     bc4:	0000                	.insn	2, 0x0000
     bc6:	0402                	.insn	2, 0x0402
     bc8:	0518063f 00000903 	.insn	8, 0x09030518063f
     bd0:	0501                	.insn	2, 0x0501
     bd2:	00040903          	lb	s2,0(s0)
     bd6:	0200                	.insn	2, 0x0200
     bd8:	0004                	.insn	2, 0x0004
     bda:	0501                	.insn	2, 0x0501
     bdc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     be0:	0200                	.insn	2, 0x0200
     be2:	3f04                	.insn	2, 0x3f04
     be4:	0106                	.insn	2, 0x0106
     be6:	0305                	.insn	2, 0x0305
     be8:	0809                	.insn	2, 0x0809
     bea:	0000                	.insn	2, 0x0000
     bec:	0402                	.insn	2, 0x0402
     bee:	0140                	.insn	2, 0x0140
     bf0:	0305                	.insn	2, 0x0305
     bf2:	0409                	.insn	2, 0x0409
     bf4:	0000                	.insn	2, 0x0000
     bf6:	0402                	.insn	2, 0x0402
     bf8:	0144                	.insn	2, 0x0144
     bfa:	0305                	.insn	2, 0x0305
     bfc:	0c09                	.insn	2, 0x0c09
     bfe:	0100                	.insn	2, 0x0100
     c00:	0305                	.insn	2, 0x0305
     c02:	0009                	.insn	2, 0x0009
     c04:	0000                	.insn	2, 0x0000
     c06:	02ad0403          	lb	s0,42(s10)
     c0a:	1606                	.insn	2, 0x1606
     c0c:	0305                	.insn	2, 0x0305
     c0e:	0409                	.insn	2, 0x0409
     c10:	0000                	.insn	2, 0x0000
     c12:	02b40403          	lb	s0,43(s0)
     c16:	0501                	.insn	2, 0x0501
     c18:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     c1c:	0200                	.insn	2, 0x0200
     c1e:	0004                	.insn	2, 0x0004
     c20:	0501                	.insn	2, 0x0501
     c22:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     c26:	0300                	.insn	2, 0x0300
     c28:	b404                	.insn	2, 0xb404
     c2a:	0602                	.insn	2, 0x0602
     c2c:	0501                	.insn	2, 0x0501
     c2e:	00040903          	lb	s2,0(s0)
     c32:	0200                	.insn	2, 0x0200
     c34:	0004                	.insn	2, 0x0004
     c36:	0106                	.insn	2, 0x0106
     c38:	0305                	.insn	2, 0x0305
     c3a:	0009                	.insn	2, 0x0009
     c3c:	0100                	.insn	2, 0x0100
     c3e:	0305                	.insn	2, 0x0305
     c40:	0009                	.insn	2, 0x0009
     c42:	0000                	.insn	2, 0x0000
     c44:	02b40403          	lb	s0,43(s0)
     c48:	0106                	.insn	2, 0x0106
     c4a:	0305                	.insn	2, 0x0305
     c4c:	0409                	.insn	2, 0x0409
     c4e:	0100                	.insn	2, 0x0100
     c50:	0305                	.insn	2, 0x0305
     c52:	0409                	.insn	2, 0x0409
     c54:	0000                	.insn	2, 0x0000
     c56:	02b60403          	lb	s0,43(a2) # 50102d5 <__BSS_END__+0x4ffb2e5>
     c5a:	0106                	.insn	2, 0x0106
     c5c:	0305                	.insn	2, 0x0305
     c5e:	0409                	.insn	2, 0x0409
     c60:	0000                	.insn	2, 0x0000
     c62:	0402                	.insn	2, 0x0402
     c64:	0100                	.insn	2, 0x0100
     c66:	0305                	.insn	2, 0x0305
     c68:	0009                	.insn	2, 0x0009
     c6a:	0000                	.insn	2, 0x0000
     c6c:	02b60403          	lb	s0,43(a2)
     c70:	0106                	.insn	2, 0x0106
     c72:	0305                	.insn	2, 0x0305
     c74:	0409                	.insn	2, 0x0409
     c76:	0100                	.insn	2, 0x0100
     c78:	0305                	.insn	2, 0x0305
     c7a:	0409                	.insn	2, 0x0409
     c7c:	0000                	.insn	2, 0x0000
     c7e:	0402                	.insn	2, 0x0402
     c80:	1801                	.insn	2, 0x1801
     c82:	0305                	.insn	2, 0x0305
     c84:	0809                	.insn	2, 0x0809
     c86:	0100                	.insn	2, 0x0100
     c88:	0305                	.insn	2, 0x0305
     c8a:	0009                	.insn	2, 0x0009
     c8c:	0000                	.insn	2, 0x0000
     c8e:	02b70403          	lb	s0,43(a4)
     c92:	1606                	.insn	2, 0x1606
     c94:	0305                	.insn	2, 0x0305
     c96:	0009                	.insn	2, 0x0009
     c98:	0000                	.insn	2, 0x0000
     c9a:	02b40403          	lb	s0,43(s0)
     c9e:	0106                	.insn	2, 0x0106
     ca0:	0305                	.insn	2, 0x0305
     ca2:	0409                	.insn	2, 0x0409
     ca4:	0000                	.insn	2, 0x0000
     ca6:	02b70403          	lb	s0,43(a4)
     caa:	0501                	.insn	2, 0x0501
     cac:	00040903          	lb	s2,0(s0)
     cb0:	0501                	.insn	2, 0x0501
     cb2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     cb6:	0200                	.insn	2, 0x0200
     cb8:	3f04                	.insn	2, 0x3f04
     cba:	0518                	.insn	2, 0x0518
     cbc:	00040903          	lb	s2,0(s0)
     cc0:	0200                	.insn	2, 0x0200
     cc2:	4404                	.insn	2, 0x4404
     cc4:	0501                	.insn	2, 0x0501
     cc6:	00080903          	lb	s2,0(a6)
     cca:	0501                	.insn	2, 0x0501
     ccc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     cd0:	0300                	.insn	2, 0x0300
     cd2:	ab04                	.insn	2, 0xab04
     cd4:	0602                	.insn	2, 0x0602
     cd6:	0516                	.insn	2, 0x0516
     cd8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     cdc:	0501                	.insn	2, 0x0501
     cde:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     ce2:	0300                	.insn	2, 0x0300
     ce4:	c304                	.insn	2, 0xc304
     ce6:	0102                	.insn	2, 0x0102
     ce8:	0305                	.insn	2, 0x0305
     cea:	0009                	.insn	2, 0x0009
     cec:	0100                	.insn	2, 0x0100
     cee:	0305                	.insn	2, 0x0305
     cf0:	0009                	.insn	2, 0x0009
     cf2:	0100                	.insn	2, 0x0100
     cf4:	0305                	.insn	2, 0x0305
     cf6:	0009                	.insn	2, 0x0009
     cf8:	0000                	.insn	2, 0x0000
     cfa:	02ca0403          	lb	s0,44(s4)
     cfe:	0501                	.insn	2, 0x0501
     d00:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     d04:	0501                	.insn	2, 0x0501
     d06:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     d0a:	0200                	.insn	2, 0x0200
     d0c:	0004                	.insn	2, 0x0004
     d0e:	0501                	.insn	2, 0x0501
     d10:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     d14:	0300                	.insn	2, 0x0300
     d16:	ca04                	.insn	2, 0xca04
     d18:	0602                	.insn	2, 0x0602
     d1a:	0501                	.insn	2, 0x0501
     d1c:	00040903          	lb	s2,0(s0)
     d20:	0501                	.insn	2, 0x0501
     d22:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     d26:	0200                	.insn	2, 0x0200
     d28:	4404                	.insn	2, 0x4404
     d2a:	0518                	.insn	2, 0x0518
     d2c:	00040903          	lb	s2,0(s0)
     d30:	0501                	.insn	2, 0x0501
     d32:	00040903          	lb	s2,0(s0)
     d36:	0501                	.insn	2, 0x0501
     d38:	00040903          	lb	s2,0(s0)
     d3c:	0501                	.insn	2, 0x0501
     d3e:	00080903          	lb	s2,0(a6)
     d42:	0501                	.insn	2, 0x0501
     d44:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     d48:	0300                	.insn	2, 0x0300
     d4a:	a904                	.insn	2, 0xa904
     d4c:	0602                	.insn	2, 0x0602
     d4e:	0516                	.insn	2, 0x0516
     d50:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     d54:	0200                	.insn	2, 0x0200
     d56:	0004                	.insn	2, 0x0004
     d58:	0501                	.insn	2, 0x0501
     d5a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     d5e:	0300                	.insn	2, 0x0300
     d60:	a904                	.insn	2, 0xa904
     d62:	0602                	.insn	2, 0x0602
     d64:	0501                	.insn	2, 0x0501
     d66:	00040903          	lb	s2,0(s0)
     d6a:	0200                	.insn	2, 0x0200
     d6c:	0004                	.insn	2, 0x0004
     d6e:	0106                	.insn	2, 0x0106
     d70:	0305                	.insn	2, 0x0305
     d72:	0009                	.insn	2, 0x0009
     d74:	0100                	.insn	2, 0x0100
     d76:	0305                	.insn	2, 0x0305
     d78:	0009                	.insn	2, 0x0009
     d7a:	0000                	.insn	2, 0x0000
     d7c:	02a90403          	lb	s0,42(s2)
     d80:	0106                	.insn	2, 0x0106
     d82:	0305                	.insn	2, 0x0305
     d84:	0809                	.insn	2, 0x0809
     d86:	0000                	.insn	2, 0x0000
     d88:	02db0403          	lb	s0,45(s6)
     d8c:	0106                	.insn	2, 0x0106
     d8e:	0305                	.insn	2, 0x0305
     d90:	0409                	.insn	2, 0x0409
     d92:	0000                	.insn	2, 0x0000
     d94:	0402                	.insn	2, 0x0402
     d96:	0100                	.insn	2, 0x0100
     d98:	0305                	.insn	2, 0x0305
     d9a:	0009                	.insn	2, 0x0009
     d9c:	0000                	.insn	2, 0x0000
     d9e:	02db0403          	lb	s0,45(s6)
     da2:	0106                	.insn	2, 0x0106
     da4:	0305                	.insn	2, 0x0305
     da6:	0409                	.insn	2, 0x0409
     da8:	0000                	.insn	2, 0x0000
     daa:	0402                	.insn	2, 0x0402
     dac:	0600                	.insn	2, 0x0600
     dae:	0501                	.insn	2, 0x0501
     db0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     db4:	0501                	.insn	2, 0x0501
     db6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     dba:	0501                	.insn	2, 0x0501
     dbc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     dc0:	0300                	.insn	2, 0x0300
     dc2:	e604                	.insn	2, 0xe604
     dc4:	0102                	.insn	2, 0x0102
     dc6:	0305                	.insn	2, 0x0305
     dc8:	0009                	.insn	2, 0x0009
     dca:	0000                	.insn	2, 0x0000
     dcc:	02e90403          	lb	s0,46(s2)
     dd0:	0501                	.insn	2, 0x0501
     dd2:	00080903          	lb	s2,0(a6)
     dd6:	0300                	.insn	2, 0x0300
     dd8:	ee04                	.insn	2, 0xee04
     dda:	0102                	.insn	2, 0x0102
     ddc:	0305                	.insn	2, 0x0305
     dde:	0009                	.insn	2, 0x0009
     de0:	0100                	.insn	2, 0x0100
     de2:	0305                	.insn	2, 0x0305
     de4:	0409                	.insn	2, 0x0409
     de6:	0000                	.insn	2, 0x0000
     de8:	0402                	.insn	2, 0x0402
     dea:	0100                	.insn	2, 0x0100
     dec:	0305                	.insn	2, 0x0305
     dee:	0009                	.insn	2, 0x0009
     df0:	0100                	.insn	2, 0x0100
     df2:	0305                	.insn	2, 0x0305
     df4:	0009                	.insn	2, 0x0009
     df6:	0000                	.insn	2, 0x0000
     df8:	02f30403          	lb	s0,47(t1)
     dfc:	0501                	.insn	2, 0x0501
     dfe:	00040903          	lb	s2,0(s0)
     e02:	0300                	.insn	2, 0x0300
     e04:	f504                	.insn	2, 0xf504
     e06:	0102                	.insn	2, 0x0102
     e08:	0305                	.insn	2, 0x0305
     e0a:	0009                	.insn	2, 0x0009
     e0c:	0100                	.insn	2, 0x0100
     e0e:	0305                	.insn	2, 0x0305
     e10:	0409                	.insn	2, 0x0409
     e12:	0000                	.insn	2, 0x0000
     e14:	02f60403          	lb	s0,47(a2)
     e18:	0501                	.insn	2, 0x0501
     e1a:	00040903          	lb	s2,0(s0)
     e1e:	0106                	.insn	2, 0x0106
     e20:	0305                	.insn	2, 0x0305
     e22:	0409                	.insn	2, 0x0409
     e24:	0000                	.insn	2, 0x0000
     e26:	0402                	.insn	2, 0x0402
     e28:	0600                	.insn	2, 0x0600
     e2a:	0501                	.insn	2, 0x0501
     e2c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     e30:	0300                	.insn	2, 0x0300
     e32:	fc04                	.insn	2, 0xfc04
     e34:	0602                	.insn	2, 0x0602
     e36:	0501                	.insn	2, 0x0501
     e38:	00080903          	lb	s2,0(a6)
     e3c:	0300                	.insn	2, 0x0300
     e3e:	f604                	.insn	2, 0xf604
     e40:	0102                	.insn	2, 0x0102
     e42:	0305                	.insn	2, 0x0305
     e44:	0409                	.insn	2, 0x0409
     e46:	0000                	.insn	2, 0x0000
     e48:	02fc0403          	lb	s0,47(s8)
     e4c:	0501                	.insn	2, 0x0501
     e4e:	00040903          	lb	s2,0(s0)
     e52:	0501                	.insn	2, 0x0501
     e54:	00040903          	lb	s2,0(s0)
     e58:	0300                	.insn	2, 0x0300
     e5a:	fe04                	.insn	2, 0xfe04
     e5c:	0102                	.insn	2, 0x0102
     e5e:	0305                	.insn	2, 0x0305
     e60:	0409                	.insn	2, 0x0409
     e62:	0000                	.insn	2, 0x0000
     e64:	0402                	.insn	2, 0x0402
     e66:	0600                	.insn	2, 0x0600
     e68:	0501                	.insn	2, 0x0501
     e6a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     e6e:	0106                	.insn	2, 0x0106
     e70:	0305                	.insn	2, 0x0305
     e72:	0009                	.insn	2, 0x0009
     e74:	0600                	.insn	2, 0x0600
     e76:	0501                	.insn	2, 0x0501
     e78:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     e7c:	0501                	.insn	2, 0x0501
     e7e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     e82:	0518                	.insn	2, 0x0518
     e84:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     e88:	0501                	.insn	2, 0x0501
     e8a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     e8e:	0501                	.insn	2, 0x0501
     e90:	00040903          	lb	s2,0(s0)
     e94:	0106                	.insn	2, 0x0106
     e96:	0305                	.insn	2, 0x0305
     e98:	0009                	.insn	2, 0x0009
     e9a:	0000                	.insn	2, 0x0000
     e9c:	02dc0403          	lb	s0,45(s8)
     ea0:	1606                	.insn	2, 0x1606
     ea2:	0305                	.insn	2, 0x0305
     ea4:	0409                	.insn	2, 0x0409
     ea6:	0000                	.insn	2, 0x0000
     ea8:	0402                	.insn	2, 0x0402
     eaa:	0518063f 00040903 	.insn	8, 0x000409030518063f
     eb2:	0501                	.insn	2, 0x0501
     eb4:	00040903          	lb	s2,0(s0)
     eb8:	0501                	.insn	2, 0x0501
     eba:	00040903          	lb	s2,0(s0)
     ebe:	0300                	.insn	2, 0x0300
     ec0:	f704                	.insn	2, 0xf704
     ec2:	0602                	.insn	2, 0x0602
     ec4:	0516                	.insn	2, 0x0516
     ec6:	00100903          	lb	s2,1(zero) # 1 <exit-0x1011f>
     eca:	0200                	.insn	2, 0x0200
     ecc:	0004                	.insn	2, 0x0004
     ece:	0501                	.insn	2, 0x0501
     ed0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     ed4:	0300                	.insn	2, 0x0300
     ed6:	f704                	.insn	2, 0xf704
     ed8:	0602                	.insn	2, 0x0602
     eda:	0501                	.insn	2, 0x0501
     edc:	00040903          	lb	s2,0(s0)
     ee0:	0501                	.insn	2, 0x0501
     ee2:	00040903          	lb	s2,0(s0)
     ee6:	0501                	.insn	2, 0x0501
     ee8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     eec:	0200                	.insn	2, 0x0200
     eee:	7b04                	.insn	2, 0x7b04
     ef0:	0501                	.insn	2, 0x0501
     ef2:	00040903          	lb	s2,0(s0)
     ef6:	0501                	.insn	2, 0x0501
     ef8:	00040903          	lb	s2,0(s0)
     efc:	0501                	.insn	2, 0x0501
     efe:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
     f02:	0300                	.insn	2, 0x0300
     f04:	f304                	.insn	2, 0xf304
     f06:	0101                	.insn	2, 0x0101
     f08:	0305                	.insn	2, 0x0305
     f0a:	0409                	.insn	2, 0x0409
     f0c:	0100                	.insn	2, 0x0100
     f0e:	0305                	.insn	2, 0x0305
     f10:	0409                	.insn	2, 0x0409
     f12:	0100                	.insn	2, 0x0100
     f14:	0305                	.insn	2, 0x0305
     f16:	0409                	.insn	2, 0x0409
     f18:	0100                	.insn	2, 0x0100
     f1a:	0305                	.insn	2, 0x0305
     f1c:	0409                	.insn	2, 0x0409
     f1e:	0100                	.insn	2, 0x0100
     f20:	0305                	.insn	2, 0x0305
     f22:	0009                	.insn	2, 0x0009
     f24:	0000                	.insn	2, 0x0000
     f26:	0402                	.insn	2, 0x0402
     f28:	0305183f e8020900 	.insn	8, 0xe80209000305183f
     f30:	0108                	.insn	2, 0x0108
     f32:	0000                	.insn	2, 0x0000
     f34:	0000                	.insn	2, 0x0000
     f36:	0000                	.insn	2, 0x0000
     f38:	0101                	.insn	2, 0x0101
     f3a:	00000993          	li	s3,0
     f3e:	0005                	.insn	2, 0x0005
     f40:	0008                	.insn	2, 0x0008
     f42:	0038                	.insn	2, 0x0038
     f44:	0000                	.insn	2, 0x0000
     f46:	0101                	.insn	2, 0x0101
     f48:	f601                	.insn	2, 0xf601
     f4a:	0df2                	.insn	2, 0x0df2
     f4c:	0100                	.insn	2, 0x0100
     f4e:	0101                	.insn	2, 0x0101
     f50:	0001                	.insn	2, 0x0001
     f52:	0000                	.insn	2, 0x0000
     f54:	0001                	.insn	2, 0x0001
     f56:	0100                	.insn	2, 0x0100
     f58:	0101                	.insn	2, 0x0101
     f5a:	021f 0025 0000      	.insn	6, 0x0025021f
     f60:	0000                	.insn	2, 0x0000
     f62:	0000                	.insn	2, 0x0000
     f64:	0102                	.insn	2, 0x0102
     f66:	021f 040b 00c6      	.insn	6, 0x00c6040b021f
     f6c:	0000                	.insn	2, 0x0000
     f6e:	eb00                	.insn	2, 0xeb00
     f70:	0000                	.insn	2, 0x0000
     f72:	0100                	.insn	2, 0x0100
     f74:	00f4                	.insn	2, 0x00f4
     f76:	0000                	.insn	2, 0x0000
     f78:	bd01                	.insn	2, 0xbd01
     f7a:	0000                	.insn	2, 0x0000
     f7c:	0100                	.insn	2, 0x0100
     f7e:	0900                	.insn	2, 0x0900
     f80:	e802                	.insn	2, 0xe802
     f82:	0108                	.insn	2, 0x0108
     f84:	0000                	.insn	2, 0x0000
     f86:	0000                	.insn	2, 0x0000
     f88:	3800                	.insn	2, 0x3800
     f8a:	0105                	.insn	2, 0x0105
     f8c:	0009                	.insn	2, 0x0009
     f8e:	1800                	.insn	2, 0x1800
     f90:	0305                	.insn	2, 0x0305
     f92:	0009                	.insn	2, 0x0009
     f94:	0100                	.insn	2, 0x0100
     f96:	0305                	.insn	2, 0x0305
     f98:	0009                	.insn	2, 0x0009
     f9a:	0100                	.insn	2, 0x0100
     f9c:	0d05                	.insn	2, 0x0d05
     f9e:	0009                	.insn	2, 0x0009
     fa0:	1800                	.insn	2, 0x1800
     fa2:	0305                	.insn	2, 0x0305
     fa4:	0009                	.insn	2, 0x0009
     fa6:	0100                	.insn	2, 0x0100
     fa8:	0305                	.insn	2, 0x0305
     faa:	0009                	.insn	2, 0x0009
     fac:	0100                	.insn	2, 0x0100
     fae:	0305                	.insn	2, 0x0305
     fb0:	0009                	.insn	2, 0x0009
     fb2:	0100                	.insn	2, 0x0100
     fb4:	0305                	.insn	2, 0x0305
     fb6:	0009                	.insn	2, 0x0009
     fb8:	1800                	.insn	2, 0x1800
     fba:	0305                	.insn	2, 0x0305
     fbc:	0009                	.insn	2, 0x0009
     fbe:	0100                	.insn	2, 0x0100
     fc0:	0305                	.insn	2, 0x0305
     fc2:	0009                	.insn	2, 0x0009
     fc4:	0100                	.insn	2, 0x0100
     fc6:	0305                	.insn	2, 0x0305
     fc8:	0009                	.insn	2, 0x0009
     fca:	0100                	.insn	2, 0x0100
     fcc:	0305                	.insn	2, 0x0305
     fce:	0009                	.insn	2, 0x0009
     fd0:	1800                	.insn	2, 0x1800
     fd2:	0305                	.insn	2, 0x0305
     fd4:	0009                	.insn	2, 0x0009
     fd6:	0100                	.insn	2, 0x0100
     fd8:	0305                	.insn	2, 0x0305
     fda:	0009                	.insn	2, 0x0009
     fdc:	0100                	.insn	2, 0x0100
     fde:	0305                	.insn	2, 0x0305
     fe0:	0009                	.insn	2, 0x0009
     fe2:	0100                	.insn	2, 0x0100
     fe4:	0305                	.insn	2, 0x0305
     fe6:	0009                	.insn	2, 0x0009
     fe8:	1800                	.insn	2, 0x1800
     fea:	0305                	.insn	2, 0x0305
     fec:	0009                	.insn	2, 0x0009
     fee:	1900                	.insn	2, 0x1900
     ff0:	0305                	.insn	2, 0x0305
     ff2:	0009                	.insn	2, 0x0009
     ff4:	1800                	.insn	2, 0x1800
     ff6:	0305                	.insn	2, 0x0305
     ff8:	0009                	.insn	2, 0x0009
     ffa:	0100                	.insn	2, 0x0100
     ffc:	0305                	.insn	2, 0x0305
     ffe:	0009                	.insn	2, 0x0009
    1000:	0100                	.insn	2, 0x0100
    1002:	0305                	.insn	2, 0x0305
    1004:	0009                	.insn	2, 0x0009
    1006:	0100                	.insn	2, 0x0100
    1008:	0305                	.insn	2, 0x0305
    100a:	0009                	.insn	2, 0x0009
    100c:	0100                	.insn	2, 0x0100
    100e:	0305                	.insn	2, 0x0305
    1010:	0009                	.insn	2, 0x0009
    1012:	0600                	.insn	2, 0x0600
    1014:	0901050f          	.insn	4, 0x0901050f
    1018:	0008                	.insn	2, 0x0008
    101a:	051f 0903 0004      	.insn	6, 0x00040903051f
    1020:	0901050f          	.insn	4, 0x0901050f
    1024:	000c                	.insn	2, 0x000c
    1026:	051f 0903 0004      	.insn	6, 0x00040903051f
    102c:	0901050f          	.insn	4, 0x0901050f
    1030:	000c                	.insn	2, 0x000c
    1032:	051f 0903 0004      	.insn	6, 0x00040903051f
    1038:	0901050f          	.insn	4, 0x0901050f
    103c:	0004                	.insn	2, 0x0004
    103e:	051f 0903 0004      	.insn	6, 0x00040903051f
    1044:	0106                	.insn	2, 0x0106
    1046:	0305                	.insn	2, 0x0305
    1048:	0009                	.insn	2, 0x0009
    104a:	0100                	.insn	2, 0x0100
    104c:	0305                	.insn	2, 0x0305
    104e:	0409                	.insn	2, 0x0409
    1050:	0600                	.insn	2, 0x0600
    1052:	0501                	.insn	2, 0x0501
    1054:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1058:	0106                	.insn	2, 0x0106
    105a:	0305                	.insn	2, 0x0305
    105c:	0009                	.insn	2, 0x0009
    105e:	0100                	.insn	2, 0x0100
    1060:	0305                	.insn	2, 0x0305
    1062:	0009                	.insn	2, 0x0009
    1064:	0100                	.insn	2, 0x0100
    1066:	0305                	.insn	2, 0x0305
    1068:	0c09                	.insn	2, 0x0c09
    106a:	0100                	.insn	2, 0x0100
    106c:	0305                	.insn	2, 0x0305
    106e:	0009                	.insn	2, 0x0009
    1070:	0100                	.insn	2, 0x0100
    1072:	0305                	.insn	2, 0x0305
    1074:	0009                	.insn	2, 0x0009
    1076:	0100                	.insn	2, 0x0100
    1078:	0305                	.insn	2, 0x0305
    107a:	0009                	.insn	2, 0x0009
    107c:	0000                	.insn	2, 0x0000
    107e:	0402                	.insn	2, 0x0402
    1080:	0105                	.insn	2, 0x0105
    1082:	0305                	.insn	2, 0x0305
    1084:	0809                	.insn	2, 0x0809
    1086:	0600                	.insn	2, 0x0600
    1088:	0501                	.insn	2, 0x0501
    108a:	00080903          	lb	s2,0(a6)
    108e:	0200                	.insn	2, 0x0200
    1090:	0704                	.insn	2, 0x0704
    1092:	0106                	.insn	2, 0x0106
    1094:	0305                	.insn	2, 0x0305
    1096:	0009                	.insn	2, 0x0009
    1098:	0100                	.insn	2, 0x0100
    109a:	0305                	.insn	2, 0x0305
    109c:	0409                	.insn	2, 0x0409
    109e:	0000                	.insn	2, 0x0000
    10a0:	0402                	.insn	2, 0x0402
    10a2:	0100                	.insn	2, 0x0100
    10a4:	0305                	.insn	2, 0x0305
    10a6:	0009                	.insn	2, 0x0009
    10a8:	0100                	.insn	2, 0x0100
    10aa:	0305                	.insn	2, 0x0305
    10ac:	0009                	.insn	2, 0x0009
    10ae:	0100                	.insn	2, 0x0100
    10b0:	0305                	.insn	2, 0x0305
    10b2:	0009                	.insn	2, 0x0009
    10b4:	0100                	.insn	2, 0x0100
    10b6:	0305                	.insn	2, 0x0305
    10b8:	0009                	.insn	2, 0x0009
    10ba:	0000                	.insn	2, 0x0000
    10bc:	0402                	.insn	2, 0x0402
    10be:	061c                	.insn	2, 0x061c
    10c0:	0501                	.insn	2, 0x0501
    10c2:	00040903          	lb	s2,0(s0)
    10c6:	0501                	.insn	2, 0x0501
    10c8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    10cc:	0200                	.insn	2, 0x0200
    10ce:	0004                	.insn	2, 0x0004
    10d0:	0106                	.insn	2, 0x0106
    10d2:	0305                	.insn	2, 0x0305
    10d4:	0009                	.insn	2, 0x0009
    10d6:	0100                	.insn	2, 0x0100
    10d8:	0305                	.insn	2, 0x0305
    10da:	0009                	.insn	2, 0x0009
    10dc:	1800                	.insn	2, 0x1800
    10de:	0305                	.insn	2, 0x0305
    10e0:	0009                	.insn	2, 0x0009
    10e2:	0100                	.insn	2, 0x0100
    10e4:	0305                	.insn	2, 0x0305
    10e6:	0009                	.insn	2, 0x0009
    10e8:	0100                	.insn	2, 0x0100
    10ea:	0305                	.insn	2, 0x0305
    10ec:	0009                	.insn	2, 0x0009
    10ee:	0100                	.insn	2, 0x0100
    10f0:	0305                	.insn	2, 0x0305
    10f2:	0009                	.insn	2, 0x0009
    10f4:	0100                	.insn	2, 0x0100
    10f6:	0305                	.insn	2, 0x0305
    10f8:	1009                	.insn	2, 0x1009
    10fa:	0100                	.insn	2, 0x0100
    10fc:	0305                	.insn	2, 0x0305
    10fe:	0009                	.insn	2, 0x0009
    1100:	0100                	.insn	2, 0x0100
    1102:	0305                	.insn	2, 0x0305
    1104:	0409                	.insn	2, 0x0409
    1106:	0600                	.insn	2, 0x0600
    1108:	0501                	.insn	2, 0x0501
    110a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    110e:	0106                	.insn	2, 0x0106
    1110:	0305                	.insn	2, 0x0305
    1112:	0009                	.insn	2, 0x0009
    1114:	0100                	.insn	2, 0x0100
    1116:	0305                	.insn	2, 0x0305
    1118:	0009                	.insn	2, 0x0009
    111a:	0100                	.insn	2, 0x0100
    111c:	0305                	.insn	2, 0x0305
    111e:	0409                	.insn	2, 0x0409
    1120:	0600                	.insn	2, 0x0600
    1122:	0501                	.insn	2, 0x0501
    1124:	00080903          	lb	s2,0(a6)
    1128:	0106                	.insn	2, 0x0106
    112a:	0305                	.insn	2, 0x0305
    112c:	0009                	.insn	2, 0x0009
    112e:	0100                	.insn	2, 0x0100
    1130:	0305                	.insn	2, 0x0305
    1132:	0009                	.insn	2, 0x0009
    1134:	0100                	.insn	2, 0x0100
    1136:	0305                	.insn	2, 0x0305
    1138:	0009                	.insn	2, 0x0009
    113a:	0000                	.insn	2, 0x0000
    113c:	0402                	.insn	2, 0x0402
    113e:	0105                	.insn	2, 0x0105
    1140:	0305                	.insn	2, 0x0305
    1142:	0809                	.insn	2, 0x0809
    1144:	0600                	.insn	2, 0x0600
    1146:	0501                	.insn	2, 0x0501
    1148:	00080903          	lb	s2,0(a6)
    114c:	0200                	.insn	2, 0x0200
    114e:	0704                	.insn	2, 0x0704
    1150:	0106                	.insn	2, 0x0106
    1152:	0305                	.insn	2, 0x0305
    1154:	0009                	.insn	2, 0x0009
    1156:	0100                	.insn	2, 0x0100
    1158:	0305                	.insn	2, 0x0305
    115a:	0409                	.insn	2, 0x0409
    115c:	0000                	.insn	2, 0x0000
    115e:	0402                	.insn	2, 0x0402
    1160:	0100                	.insn	2, 0x0100
    1162:	0305                	.insn	2, 0x0305
    1164:	0009                	.insn	2, 0x0009
    1166:	0100                	.insn	2, 0x0100
    1168:	0305                	.insn	2, 0x0305
    116a:	0009                	.insn	2, 0x0009
    116c:	0100                	.insn	2, 0x0100
    116e:	0305                	.insn	2, 0x0305
    1170:	0009                	.insn	2, 0x0009
    1172:	0100                	.insn	2, 0x0100
    1174:	0305                	.insn	2, 0x0305
    1176:	0009                	.insn	2, 0x0009
    1178:	0000                	.insn	2, 0x0000
    117a:	0402                	.insn	2, 0x0402
    117c:	061c                	.insn	2, 0x061c
    117e:	0501                	.insn	2, 0x0501
    1180:	00040903          	lb	s2,0(s0)
    1184:	0501                	.insn	2, 0x0501
    1186:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    118a:	0200                	.insn	2, 0x0200
    118c:	0004                	.insn	2, 0x0004
    118e:	0106                	.insn	2, 0x0106
    1190:	0305                	.insn	2, 0x0305
    1192:	0009                	.insn	2, 0x0009
    1194:	0100                	.insn	2, 0x0100
    1196:	0305                	.insn	2, 0x0305
    1198:	0009                	.insn	2, 0x0009
    119a:	1800                	.insn	2, 0x1800
    119c:	0305                	.insn	2, 0x0305
    119e:	0009                	.insn	2, 0x0009
    11a0:	0100                	.insn	2, 0x0100
    11a2:	0305                	.insn	2, 0x0305
    11a4:	0009                	.insn	2, 0x0009
    11a6:	0100                	.insn	2, 0x0100
    11a8:	0305                	.insn	2, 0x0305
    11aa:	0809                	.insn	2, 0x0809
    11ac:	0600                	.insn	2, 0x0600
    11ae:	0501                	.insn	2, 0x0501
    11b0:	00080903          	lb	s2,0(a6)
    11b4:	0501                	.insn	2, 0x0501
    11b6:	00040903          	lb	s2,0(s0)
    11ba:	0106                	.insn	2, 0x0106
    11bc:	0305                	.insn	2, 0x0305
    11be:	0409                	.insn	2, 0x0409
    11c0:	0600                	.insn	2, 0x0600
    11c2:	0501                	.insn	2, 0x0501
    11c4:	00080903          	lb	s2,0(a6)
    11c8:	0501                	.insn	2, 0x0501
    11ca:	00100903          	lb	s2,1(zero) # 1 <exit-0x1011f>
    11ce:	0106                	.insn	2, 0x0106
    11d0:	0305                	.insn	2, 0x0305
    11d2:	0009                	.insn	2, 0x0009
    11d4:	0100                	.insn	2, 0x0100
    11d6:	0305                	.insn	2, 0x0305
    11d8:	0009                	.insn	2, 0x0009
    11da:	0100                	.insn	2, 0x0100
    11dc:	0305                	.insn	2, 0x0305
    11de:	0009                	.insn	2, 0x0009
    11e0:	0100                	.insn	2, 0x0100
    11e2:	0305                	.insn	2, 0x0305
    11e4:	0009                	.insn	2, 0x0009
    11e6:	0100                	.insn	2, 0x0100
    11e8:	0305                	.insn	2, 0x0305
    11ea:	0009                	.insn	2, 0x0009
    11ec:	0100                	.insn	2, 0x0100
    11ee:	0305                	.insn	2, 0x0305
    11f0:	0009                	.insn	2, 0x0009
    11f2:	0100                	.insn	2, 0x0100
    11f4:	0305                	.insn	2, 0x0305
    11f6:	0009                	.insn	2, 0x0009
    11f8:	0100                	.insn	2, 0x0100
    11fa:	0305                	.insn	2, 0x0305
    11fc:	0009                	.insn	2, 0x0009
    11fe:	0100                	.insn	2, 0x0100
    1200:	0305                	.insn	2, 0x0305
    1202:	0009                	.insn	2, 0x0009
    1204:	0000                	.insn	2, 0x0000
    1206:	0402                	.insn	2, 0x0402
    1208:	0602                	.insn	2, 0x0602
    120a:	0501                	.insn	2, 0x0501
    120c:	00040903          	lb	s2,0(s0)
    1210:	0200                	.insn	2, 0x0200
    1212:	0004                	.insn	2, 0x0004
    1214:	0106                	.insn	2, 0x0106
    1216:	0305                	.insn	2, 0x0305
    1218:	0009                	.insn	2, 0x0009
    121a:	0100                	.insn	2, 0x0100
    121c:	0305                	.insn	2, 0x0305
    121e:	0009                	.insn	2, 0x0009
    1220:	0000                	.insn	2, 0x0000
    1222:	0402                	.insn	2, 0x0402
    1224:	0602                	.insn	2, 0x0602
    1226:	0501                	.insn	2, 0x0501
    1228:	00040903          	lb	s2,0(s0)
    122c:	0200                	.insn	2, 0x0200
    122e:	0004                	.insn	2, 0x0004
    1230:	0106                	.insn	2, 0x0106
    1232:	0305                	.insn	2, 0x0305
    1234:	0409                	.insn	2, 0x0409
    1236:	0600                	.insn	2, 0x0600
    1238:	0501                	.insn	2, 0x0501
    123a:	00040903          	lb	s2,0(s0)
    123e:	0501                	.insn	2, 0x0501
    1240:	00080903          	lb	s2,0(a6)
    1244:	0200                	.insn	2, 0x0200
    1246:	0204                	.insn	2, 0x0204
    1248:	0501                	.insn	2, 0x0501
    124a:	00040903          	lb	s2,0(s0)
    124e:	0200                	.insn	2, 0x0200
    1250:	0004                	.insn	2, 0x0004
    1252:	0106                	.insn	2, 0x0106
    1254:	0305                	.insn	2, 0x0305
    1256:	0009                	.insn	2, 0x0009
    1258:	0100                	.insn	2, 0x0100
    125a:	0305                	.insn	2, 0x0305
    125c:	0009                	.insn	2, 0x0009
    125e:	0000                	.insn	2, 0x0000
    1260:	0402                	.insn	2, 0x0402
    1262:	0602                	.insn	2, 0x0602
    1264:	0501                	.insn	2, 0x0501
    1266:	00040903          	lb	s2,0(s0)
    126a:	0200                	.insn	2, 0x0200
    126c:	0004                	.insn	2, 0x0004
    126e:	0106                	.insn	2, 0x0106
    1270:	0305                	.insn	2, 0x0305
    1272:	0009                	.insn	2, 0x0009
    1274:	0000                	.insn	2, 0x0000
    1276:	0402                	.insn	2, 0x0402
    1278:	0602                	.insn	2, 0x0602
    127a:	0501                	.insn	2, 0x0501
    127c:	00040903          	lb	s2,0(s0)
    1280:	0200                	.insn	2, 0x0200
    1282:	0004                	.insn	2, 0x0004
    1284:	0106                	.insn	2, 0x0106
    1286:	0305                	.insn	2, 0x0305
    1288:	0009                	.insn	2, 0x0009
    128a:	0000                	.insn	2, 0x0000
    128c:	0402                	.insn	2, 0x0402
    128e:	0602                	.insn	2, 0x0602
    1290:	0501                	.insn	2, 0x0501
    1292:	00040903          	lb	s2,0(s0)
    1296:	0501                	.insn	2, 0x0501
    1298:	00040903          	lb	s2,0(s0)
    129c:	0200                	.insn	2, 0x0200
    129e:	0004                	.insn	2, 0x0004
    12a0:	0106                	.insn	2, 0x0106
    12a2:	0305                	.insn	2, 0x0305
    12a4:	0009                	.insn	2, 0x0009
    12a6:	0000                	.insn	2, 0x0000
    12a8:	0402                	.insn	2, 0x0402
    12aa:	0602                	.insn	2, 0x0602
    12ac:	0501                	.insn	2, 0x0501
    12ae:	00040903          	lb	s2,0(s0)
    12b2:	0501                	.insn	2, 0x0501
    12b4:	00040903          	lb	s2,0(s0)
    12b8:	0200                	.insn	2, 0x0200
    12ba:	0004                	.insn	2, 0x0004
    12bc:	0106                	.insn	2, 0x0106
    12be:	0305                	.insn	2, 0x0305
    12c0:	0009                	.insn	2, 0x0009
    12c2:	0000                	.insn	2, 0x0000
    12c4:	0402                	.insn	2, 0x0402
    12c6:	0602                	.insn	2, 0x0602
    12c8:	0501                	.insn	2, 0x0501
    12ca:	00040903          	lb	s2,0(s0)
    12ce:	0200                	.insn	2, 0x0200
    12d0:	0904                	.insn	2, 0x0904
    12d2:	0106                	.insn	2, 0x0106
    12d4:	0305                	.insn	2, 0x0305
    12d6:	0c09                	.insn	2, 0x0c09
    12d8:	0000                	.insn	2, 0x0000
    12da:	0402                	.insn	2, 0x0402
    12dc:	0305010b          	.insn	4, 0x0305010b
    12e0:	0009                	.insn	2, 0x0009
    12e2:	0000                	.insn	2, 0x0000
    12e4:	0402                	.insn	2, 0x0402
    12e6:	0100                	.insn	2, 0x0100
    12e8:	0305                	.insn	2, 0x0305
    12ea:	0009                	.insn	2, 0x0009
    12ec:	0000                	.insn	2, 0x0000
    12ee:	0402                	.insn	2, 0x0402
    12f0:	0501060b          	.insn	4, 0x0501060b
    12f4:	00040903          	lb	s2,0(s0)
    12f8:	0501                	.insn	2, 0x0501
    12fa:	000c0903          	lb	s2,0(s8)
    12fe:	0501                	.insn	2, 0x0501
    1300:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1304:	0200                	.insn	2, 0x0200
    1306:	0004                	.insn	2, 0x0004
    1308:	0106                	.insn	2, 0x0106
    130a:	0305                	.insn	2, 0x0305
    130c:	0009                	.insn	2, 0x0009
    130e:	0100                	.insn	2, 0x0100
    1310:	0305                	.insn	2, 0x0305
    1312:	0009                	.insn	2, 0x0009
    1314:	0100                	.insn	2, 0x0100
    1316:	0305                	.insn	2, 0x0305
    1318:	0009                	.insn	2, 0x0009
    131a:	0100                	.insn	2, 0x0100
    131c:	0305                	.insn	2, 0x0305
    131e:	0009                	.insn	2, 0x0009
    1320:	0000                	.insn	2, 0x0000
    1322:	0402                	.insn	2, 0x0402
    1324:	0501060b          	.insn	4, 0x0501060b
    1328:	00040903          	lb	s2,0(s0)
    132c:	0501                	.insn	2, 0x0501
    132e:	00040903          	lb	s2,0(s0)
    1332:	0501                	.insn	2, 0x0501
    1334:	00040903          	lb	s2,0(s0)
    1338:	0501                	.insn	2, 0x0501
    133a:	00040903          	lb	s2,0(s0)
    133e:	0501                	.insn	2, 0x0501
    1340:	00080903          	lb	s2,0(a6)
    1344:	0501                	.insn	2, 0x0501
    1346:	00080903          	lb	s2,0(a6)
    134a:	0501                	.insn	2, 0x0501
    134c:	00040903          	lb	s2,0(s0)
    1350:	0200                	.insn	2, 0x0200
    1352:	0004                	.insn	2, 0x0004
    1354:	0106                	.insn	2, 0x0106
    1356:	0305                	.insn	2, 0x0305
    1358:	0009                	.insn	2, 0x0009
    135a:	0600                	.insn	2, 0x0600
    135c:	0501                	.insn	2, 0x0501
    135e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1362:	0106                	.insn	2, 0x0106
    1364:	0305                	.insn	2, 0x0305
    1366:	0009                	.insn	2, 0x0009
    1368:	0600                	.insn	2, 0x0600
    136a:	0501                	.insn	2, 0x0501
    136c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1370:	0106                	.insn	2, 0x0106
    1372:	0305                	.insn	2, 0x0305
    1374:	0009                	.insn	2, 0x0009
    1376:	0100                	.insn	2, 0x0100
    1378:	0305                	.insn	2, 0x0305
    137a:	0009                	.insn	2, 0x0009
    137c:	0000                	.insn	2, 0x0000
    137e:	0402                	.insn	2, 0x0402
    1380:	0501060b          	.insn	4, 0x0501060b
    1384:	00040903          	lb	s2,0(s0)
    1388:	0200                	.insn	2, 0x0200
    138a:	0c04                	.insn	2, 0x0c04
    138c:	0106                	.insn	2, 0x0106
    138e:	0305                	.insn	2, 0x0305
    1390:	0809                	.insn	2, 0x0809
    1392:	0600                	.insn	2, 0x0600
    1394:	0501                	.insn	2, 0x0501
    1396:	00040903          	lb	s2,0(s0)
    139a:	0200                	.insn	2, 0x0200
    139c:	0004                	.insn	2, 0x0004
    139e:	0106                	.insn	2, 0x0106
    13a0:	0305                	.insn	2, 0x0305
    13a2:	0009                	.insn	2, 0x0009
    13a4:	1800                	.insn	2, 0x1800
    13a6:	0305                	.insn	2, 0x0305
    13a8:	0009                	.insn	2, 0x0009
    13aa:	0100                	.insn	2, 0x0100
    13ac:	0305                	.insn	2, 0x0305
    13ae:	0009                	.insn	2, 0x0009
    13b0:	0100                	.insn	2, 0x0100
    13b2:	0305                	.insn	2, 0x0305
    13b4:	0009                	.insn	2, 0x0009
    13b6:	0100                	.insn	2, 0x0100
    13b8:	0305                	.insn	2, 0x0305
    13ba:	0009                	.insn	2, 0x0009
    13bc:	0000                	.insn	2, 0x0000
    13be:	0402                	.insn	2, 0x0402
    13c0:	0602                	.insn	2, 0x0602
    13c2:	0501                	.insn	2, 0x0501
    13c4:	00040903          	lb	s2,0(s0)
    13c8:	0200                	.insn	2, 0x0200
    13ca:	0004                	.insn	2, 0x0004
    13cc:	0106                	.insn	2, 0x0106
    13ce:	0305                	.insn	2, 0x0305
    13d0:	0009                	.insn	2, 0x0009
    13d2:	0000                	.insn	2, 0x0000
    13d4:	0402                	.insn	2, 0x0402
    13d6:	0602                	.insn	2, 0x0602
    13d8:	0501                	.insn	2, 0x0501
    13da:	00040903          	lb	s2,0(s0)
    13de:	0200                	.insn	2, 0x0200
    13e0:	0604                	.insn	2, 0x0604
    13e2:	0106                	.insn	2, 0x0106
    13e4:	0305                	.insn	2, 0x0305
    13e6:	0009                	.insn	2, 0x0009
    13e8:	0100                	.insn	2, 0x0100
    13ea:	0305                	.insn	2, 0x0305
    13ec:	0809                	.insn	2, 0x0809
    13ee:	0000                	.insn	2, 0x0000
    13f0:	0402                	.insn	2, 0x0402
    13f2:	0108                	.insn	2, 0x0108
    13f4:	0305                	.insn	2, 0x0305
    13f6:	0009                	.insn	2, 0x0009
    13f8:	0000                	.insn	2, 0x0000
    13fa:	0402                	.insn	2, 0x0402
    13fc:	0100                	.insn	2, 0x0100
    13fe:	0305                	.insn	2, 0x0305
    1400:	0009                	.insn	2, 0x0009
    1402:	0100                	.insn	2, 0x0100
    1404:	0305                	.insn	2, 0x0305
    1406:	0009                	.insn	2, 0x0009
    1408:	0100                	.insn	2, 0x0100
    140a:	0305                	.insn	2, 0x0305
    140c:	0009                	.insn	2, 0x0009
    140e:	0000                	.insn	2, 0x0000
    1410:	0402                	.insn	2, 0x0402
    1412:	0501060b          	.insn	4, 0x0501060b
    1416:	000c0903          	lb	s2,0(s8)
    141a:	0200                	.insn	2, 0x0200
    141c:	0f04                	.insn	2, 0x0f04
    141e:	0106                	.insn	2, 0x0106
    1420:	0305                	.insn	2, 0x0305
    1422:	0409                	.insn	2, 0x0409
    1424:	0000                	.insn	2, 0x0000
    1426:	0402                	.insn	2, 0x0402
    1428:	0110                	.insn	2, 0x0110
    142a:	0305                	.insn	2, 0x0305
    142c:	0009                	.insn	2, 0x0009
    142e:	0100                	.insn	2, 0x0100
    1430:	0305                	.insn	2, 0x0305
    1432:	0809                	.insn	2, 0x0809
    1434:	0000                	.insn	2, 0x0000
    1436:	0402                	.insn	2, 0x0402
    1438:	0115                	.insn	2, 0x0115
    143a:	0305                	.insn	2, 0x0305
    143c:	1009                	.insn	2, 0x1009
    143e:	0000                	.insn	2, 0x0000
    1440:	0402                	.insn	2, 0x0402
    1442:	0100                	.insn	2, 0x0100
    1444:	0305                	.insn	2, 0x0305
    1446:	0009                	.insn	2, 0x0009
    1448:	0000                	.insn	2, 0x0000
    144a:	0402                	.insn	2, 0x0402
    144c:	0615                	.insn	2, 0x0615
    144e:	0501                	.insn	2, 0x0501
    1450:	00040903          	lb	s2,0(s0)
    1454:	0200                	.insn	2, 0x0200
    1456:	1704                	.insn	2, 0x1704
    1458:	0106                	.insn	2, 0x0106
    145a:	0305                	.insn	2, 0x0305
    145c:	0009                	.insn	2, 0x0009
    145e:	0000                	.insn	2, 0x0000
    1460:	0402                	.insn	2, 0x0402
    1462:	0100                	.insn	2, 0x0100
    1464:	0305                	.insn	2, 0x0305
    1466:	0009                	.insn	2, 0x0009
    1468:	0000                	.insn	2, 0x0000
    146a:	0402                	.insn	2, 0x0402
    146c:	05010617          	auipc	a2,0x5010
    1470:	00080903          	lb	s2,0(a6)
    1474:	0501                	.insn	2, 0x0501
    1476:	00040903          	lb	s2,0(s0)
    147a:	0200                	.insn	2, 0x0200
    147c:	6304                	.insn	2, 0x6304
    147e:	0106                	.insn	2, 0x0106
    1480:	0305                	.insn	2, 0x0305
    1482:	0009                	.insn	2, 0x0009
    1484:	0100                	.insn	2, 0x0100
    1486:	0305                	.insn	2, 0x0305
    1488:	0009                	.insn	2, 0x0009
    148a:	0100                	.insn	2, 0x0100
    148c:	0305                	.insn	2, 0x0305
    148e:	0009                	.insn	2, 0x0009
    1490:	0100                	.insn	2, 0x0100
    1492:	0305                	.insn	2, 0x0305
    1494:	0009                	.insn	2, 0x0009
    1496:	0000                	.insn	2, 0x0000
    1498:	0402                	.insn	2, 0x0402
    149a:	0100                	.insn	2, 0x0100
    149c:	0305                	.insn	2, 0x0305
    149e:	0009                	.insn	2, 0x0009
    14a0:	0100                	.insn	2, 0x0100
    14a2:	0305                	.insn	2, 0x0305
    14a4:	0009                	.insn	2, 0x0009
    14a6:	0600                	.insn	2, 0x0600
    14a8:	0901051b          	addiw	a0,sp,144
    14ac:	0008                	.insn	2, 0x0008
    14ae:	0200                	.insn	2, 0x0200
    14b0:	6304                	.insn	2, 0x6304
    14b2:	09030513          	addi	a0,t1,144
    14b6:	0004                	.insn	2, 0x0004
    14b8:	0501                	.insn	2, 0x0501
    14ba:	00040903          	lb	s2,0(s0)
    14be:	0501                	.insn	2, 0x0501
    14c0:	00080903          	lb	s2,0(a6)
    14c4:	0501                	.insn	2, 0x0501
    14c6:	00040903          	lb	s2,0(s0)
    14ca:	0200                	.insn	2, 0x0200
    14cc:	0004                	.insn	2, 0x0004
    14ce:	0106                	.insn	2, 0x0106
    14d0:	0305                	.insn	2, 0x0305
    14d2:	0009                	.insn	2, 0x0009
    14d4:	0600                	.insn	2, 0x0600
    14d6:	0501                	.insn	2, 0x0501
    14d8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    14dc:	0200                	.insn	2, 0x0200
    14de:	6304                	.insn	2, 0x6304
    14e0:	0106                	.insn	2, 0x0106
    14e2:	0305                	.insn	2, 0x0305
    14e4:	0009                	.insn	2, 0x0009
    14e6:	0100                	.insn	2, 0x0100
    14e8:	0305                	.insn	2, 0x0305
    14ea:	0009                	.insn	2, 0x0009
    14ec:	0000                	.insn	2, 0x0000
    14ee:	0402                	.insn	2, 0x0402
    14f0:	1800                	.insn	2, 0x1800
    14f2:	0305                	.insn	2, 0x0305
    14f4:	0009                	.insn	2, 0x0009
    14f6:	0100                	.insn	2, 0x0100
    14f8:	0305                	.insn	2, 0x0305
    14fa:	0009                	.insn	2, 0x0009
    14fc:	0100                	.insn	2, 0x0100
    14fe:	0305                	.insn	2, 0x0305
    1500:	0009                	.insn	2, 0x0009
    1502:	1900                	.insn	2, 0x1900
    1504:	0305                	.insn	2, 0x0305
    1506:	0009                	.insn	2, 0x0009
    1508:	0600                	.insn	2, 0x0600
    150a:	0518                	.insn	2, 0x0518
    150c:	0901                	.insn	2, 0x0901
    150e:	000c                	.insn	2, 0x000c
    1510:	0501                	.insn	2, 0x0501
    1512:	0901                	.insn	2, 0x0901
    1514:	0004                	.insn	2, 0x0004
    1516:	0501                	.insn	2, 0x0501
    1518:	0901                	.insn	2, 0x0901
    151a:	0004                	.insn	2, 0x0004
    151c:	0501                	.insn	2, 0x0501
    151e:	0901                	.insn	2, 0x0901
    1520:	000c                	.insn	2, 0x000c
    1522:	1006                	.insn	2, 0x1006
    1524:	0305                	.insn	2, 0x0305
    1526:	0009                	.insn	2, 0x0009
    1528:	0000                	.insn	2, 0x0000
    152a:	0402                	.insn	2, 0x0402
    152c:	0602                	.insn	2, 0x0602
    152e:	0501                	.insn	2, 0x0501
    1530:	00040903          	lb	s2,0(s0)
    1534:	0200                	.insn	2, 0x0200
    1536:	0904                	.insn	2, 0x0904
    1538:	0106                	.insn	2, 0x0106
    153a:	0305                	.insn	2, 0x0305
    153c:	0009                	.insn	2, 0x0009
    153e:	0000                	.insn	2, 0x0000
    1540:	0402                	.insn	2, 0x0402
    1542:	0305010b          	.insn	4, 0x0305010b
    1546:	0009                	.insn	2, 0x0009
    1548:	0100                	.insn	2, 0x0100
    154a:	0305                	.insn	2, 0x0305
    154c:	0009                	.insn	2, 0x0009
    154e:	0100                	.insn	2, 0x0100
    1550:	0305                	.insn	2, 0x0305
    1552:	0009                	.insn	2, 0x0009
    1554:	0100                	.insn	2, 0x0100
    1556:	0305                	.insn	2, 0x0305
    1558:	0009                	.insn	2, 0x0009
    155a:	0000                	.insn	2, 0x0000
    155c:	0402                	.insn	2, 0x0402
    155e:	010d                	.insn	2, 0x010d
    1560:	0305                	.insn	2, 0x0305
    1562:	0009                	.insn	2, 0x0009
    1564:	0000                	.insn	2, 0x0000
    1566:	0402                	.insn	2, 0x0402
    1568:	0110                	.insn	2, 0x0110
    156a:	0305                	.insn	2, 0x0305
    156c:	0409                	.insn	2, 0x0409
    156e:	0600                	.insn	2, 0x0600
    1570:	0501                	.insn	2, 0x0501
    1572:	00040903          	lb	s2,0(s0)
    1576:	0501                	.insn	2, 0x0501
    1578:	00040903          	lb	s2,0(s0)
    157c:	0200                	.insn	2, 0x0200
    157e:	1504                	.insn	2, 0x1504
    1580:	0106                	.insn	2, 0x0106
    1582:	0305                	.insn	2, 0x0305
    1584:	0009                	.insn	2, 0x0009
    1586:	0100                	.insn	2, 0x0100
    1588:	0305                	.insn	2, 0x0305
    158a:	0009                	.insn	2, 0x0009
    158c:	0000                	.insn	2, 0x0000
    158e:	0402                	.insn	2, 0x0402
    1590:	0100                	.insn	2, 0x0100
    1592:	0305                	.insn	2, 0x0305
    1594:	0009                	.insn	2, 0x0009
    1596:	0100                	.insn	2, 0x0100
    1598:	0305                	.insn	2, 0x0305
    159a:	0009                	.insn	2, 0x0009
    159c:	0000                	.insn	2, 0x0000
    159e:	0402                	.insn	2, 0x0402
    15a0:	011a                	.insn	2, 0x011a
    15a2:	0305                	.insn	2, 0x0305
    15a4:	0009                	.insn	2, 0x0009
    15a6:	0000                	.insn	2, 0x0000
    15a8:	0402                	.insn	2, 0x0402
    15aa:	061c                	.insn	2, 0x061c
    15ac:	0501                	.insn	2, 0x0501
    15ae:	00040903          	lb	s2,0(s0)
    15b2:	0200                	.insn	2, 0x0200
    15b4:	1a04                	.insn	2, 0x1a04
    15b6:	0501                	.insn	2, 0x0501
    15b8:	00080903          	lb	s2,0(a6)
    15bc:	0200                	.insn	2, 0x0200
    15be:	1c04                	.insn	2, 0x1c04
    15c0:	0106                	.insn	2, 0x0106
    15c2:	0305                	.insn	2, 0x0305
    15c4:	0009                	.insn	2, 0x0009
    15c6:	0100                	.insn	2, 0x0100
    15c8:	0305                	.insn	2, 0x0305
    15ca:	0809                	.insn	2, 0x0809
    15cc:	0600                	.insn	2, 0x0600
    15ce:	0501                	.insn	2, 0x0501
    15d0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    15d4:	0200                	.insn	2, 0x0200
    15d6:	0004                	.insn	2, 0x0004
    15d8:	0106                	.insn	2, 0x0106
    15da:	0305                	.insn	2, 0x0305
    15dc:	0409                	.insn	2, 0x0409
    15de:	0600                	.insn	2, 0x0600
    15e0:	0501                	.insn	2, 0x0501
    15e2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    15e6:	0200                	.insn	2, 0x0200
    15e8:	1d04                	.insn	2, 0x1d04
    15ea:	0501                	.insn	2, 0x0501
    15ec:	00040903          	lb	s2,0(s0)
    15f0:	0200                	.insn	2, 0x0200
    15f2:	0304                	.insn	2, 0x0304
    15f4:	0501                	.insn	2, 0x0501
    15f6:	00040903          	lb	s2,0(s0)
    15fa:	0200                	.insn	2, 0x0200
    15fc:	1e04                	.insn	2, 0x1e04
    15fe:	0501                	.insn	2, 0x0501
    1600:	00080903          	lb	s2,0(a6)
    1604:	0200                	.insn	2, 0x0200
    1606:	0004                	.insn	2, 0x0004
    1608:	0501                	.insn	2, 0x0501
    160a:	00040903          	lb	s2,0(s0)
    160e:	0501                	.insn	2, 0x0501
    1610:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1614:	0200                	.insn	2, 0x0200
    1616:	0804                	.insn	2, 0x0804
    1618:	0501                	.insn	2, 0x0501
    161a:	00080903          	lb	s2,0(a6)
    161e:	0200                	.insn	2, 0x0200
    1620:	0004                	.insn	2, 0x0004
    1622:	1806                	.insn	2, 0x1806
    1624:	0305                	.insn	2, 0x0305
    1626:	0009                	.insn	2, 0x0009
    1628:	0000                	.insn	2, 0x0000
    162a:	0402                	.insn	2, 0x0402
    162c:	0602                	.insn	2, 0x0602
    162e:	0501                	.insn	2, 0x0501
    1630:	00040903          	lb	s2,0(s0)
    1634:	0200                	.insn	2, 0x0200
    1636:	0904                	.insn	2, 0x0904
    1638:	0106                	.insn	2, 0x0106
    163a:	0305                	.insn	2, 0x0305
    163c:	0009                	.insn	2, 0x0009
    163e:	0000                	.insn	2, 0x0000
    1640:	0402                	.insn	2, 0x0402
    1642:	0305010b          	.insn	4, 0x0305010b
    1646:	0009                	.insn	2, 0x0009
    1648:	0100                	.insn	2, 0x0100
    164a:	0305                	.insn	2, 0x0305
    164c:	0009                	.insn	2, 0x0009
    164e:	0100                	.insn	2, 0x0100
    1650:	0305                	.insn	2, 0x0305
    1652:	0009                	.insn	2, 0x0009
    1654:	0100                	.insn	2, 0x0100
    1656:	0305                	.insn	2, 0x0305
    1658:	0009                	.insn	2, 0x0009
    165a:	0000                	.insn	2, 0x0000
    165c:	0402                	.insn	2, 0x0402
    165e:	010d                	.insn	2, 0x010d
    1660:	0305                	.insn	2, 0x0305
    1662:	0009                	.insn	2, 0x0009
    1664:	0000                	.insn	2, 0x0000
    1666:	0402                	.insn	2, 0x0402
    1668:	0110                	.insn	2, 0x0110
    166a:	0305                	.insn	2, 0x0305
    166c:	0809                	.insn	2, 0x0809
    166e:	0600                	.insn	2, 0x0600
    1670:	0501                	.insn	2, 0x0501
    1672:	00040903          	lb	s2,0(s0)
    1676:	0200                	.insn	2, 0x0200
    1678:	1504                	.insn	2, 0x1504
    167a:	0106                	.insn	2, 0x0106
    167c:	0305                	.insn	2, 0x0305
    167e:	0009                	.insn	2, 0x0009
    1680:	0100                	.insn	2, 0x0100
    1682:	0305                	.insn	2, 0x0305
    1684:	0009                	.insn	2, 0x0009
    1686:	0000                	.insn	2, 0x0000
    1688:	0402                	.insn	2, 0x0402
    168a:	0100                	.insn	2, 0x0100
    168c:	0305                	.insn	2, 0x0305
    168e:	0009                	.insn	2, 0x0009
    1690:	0100                	.insn	2, 0x0100
    1692:	0305                	.insn	2, 0x0305
    1694:	0009                	.insn	2, 0x0009
    1696:	0000                	.insn	2, 0x0000
    1698:	0402                	.insn	2, 0x0402
    169a:	011a                	.insn	2, 0x011a
    169c:	0305                	.insn	2, 0x0305
    169e:	0009                	.insn	2, 0x0009
    16a0:	0000                	.insn	2, 0x0000
    16a2:	0402                	.insn	2, 0x0402
    16a4:	061c                	.insn	2, 0x061c
    16a6:	0501                	.insn	2, 0x0501
    16a8:	00040903          	lb	s2,0(s0)
    16ac:	0200                	.insn	2, 0x0200
    16ae:	1a04                	.insn	2, 0x1a04
    16b0:	0501                	.insn	2, 0x0501
    16b2:	00080903          	lb	s2,0(a6)
    16b6:	0200                	.insn	2, 0x0200
    16b8:	1c04                	.insn	2, 0x1c04
    16ba:	0106                	.insn	2, 0x0106
    16bc:	0305                	.insn	2, 0x0305
    16be:	0009                	.insn	2, 0x0009
    16c0:	0100                	.insn	2, 0x0100
    16c2:	0305                	.insn	2, 0x0305
    16c4:	0809                	.insn	2, 0x0809
    16c6:	0600                	.insn	2, 0x0600
    16c8:	0501                	.insn	2, 0x0501
    16ca:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    16ce:	0200                	.insn	2, 0x0200
    16d0:	0004                	.insn	2, 0x0004
    16d2:	0106                	.insn	2, 0x0106
    16d4:	0305                	.insn	2, 0x0305
    16d6:	0409                	.insn	2, 0x0409
    16d8:	0600                	.insn	2, 0x0600
    16da:	0501                	.insn	2, 0x0501
    16dc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    16e0:	0200                	.insn	2, 0x0200
    16e2:	1d04                	.insn	2, 0x1d04
    16e4:	0501                	.insn	2, 0x0501
    16e6:	00040903          	lb	s2,0(s0)
    16ea:	0200                	.insn	2, 0x0200
    16ec:	0304                	.insn	2, 0x0304
    16ee:	0501                	.insn	2, 0x0501
    16f0:	00040903          	lb	s2,0(s0)
    16f4:	0200                	.insn	2, 0x0200
    16f6:	1e04                	.insn	2, 0x1e04
    16f8:	0501                	.insn	2, 0x0501
    16fa:	00080903          	lb	s2,0(a6)
    16fe:	0200                	.insn	2, 0x0200
    1700:	0004                	.insn	2, 0x0004
    1702:	0501                	.insn	2, 0x0501
    1704:	00040903          	lb	s2,0(s0)
    1708:	0501                	.insn	2, 0x0501
    170a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    170e:	0200                	.insn	2, 0x0200
    1710:	0804                	.insn	2, 0x0804
    1712:	0501                	.insn	2, 0x0501
    1714:	00080903          	lb	s2,0(a6)
    1718:	0501                	.insn	2, 0x0501
    171a:	00040903          	lb	s2,0(s0)
    171e:	0200                	.insn	2, 0x0200
    1720:	0004                	.insn	2, 0x0004
    1722:	0518                	.insn	2, 0x0518
    1724:	00180903          	lb	s2,1(a6)
    1728:	0516                	.insn	2, 0x0516
    172a:	00040903          	lb	s2,0(s0)
    172e:	1806                	.insn	2, 0x1806
    1730:	0305                	.insn	2, 0x0305
    1732:	0009                	.insn	2, 0x0009
    1734:	0100                	.insn	2, 0x0100
    1736:	0305                	.insn	2, 0x0305
    1738:	0009                	.insn	2, 0x0009
    173a:	1800                	.insn	2, 0x1800
    173c:	0305                	.insn	2, 0x0305
    173e:	0009                	.insn	2, 0x0009
    1740:	0100                	.insn	2, 0x0100
    1742:	0305                	.insn	2, 0x0305
    1744:	0009                	.insn	2, 0x0009
    1746:	0100                	.insn	2, 0x0100
    1748:	0305                	.insn	2, 0x0305
    174a:	1809                	.insn	2, 0x1809
    174c:	0600                	.insn	2, 0x0600
    174e:	0501                	.insn	2, 0x0501
    1750:	00040903          	lb	s2,0(s0)
    1754:	0200                	.insn	2, 0x0200
    1756:	3704                	.insn	2, 0x3704
    1758:	0501                	.insn	2, 0x0501
    175a:	00080903          	lb	s2,0(a6)
    175e:	0501                	.insn	2, 0x0501
    1760:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1764:	0200                	.insn	2, 0x0200
    1766:	0004                	.insn	2, 0x0004
    1768:	0516                	.insn	2, 0x0516
    176a:	00100903          	lb	s2,1(zero) # 1 <exit-0x1011f>
    176e:	0501                	.insn	2, 0x0501
    1770:	00040903          	lb	s2,0(s0)
    1774:	0501                	.insn	2, 0x0501
    1776:	00040903          	lb	s2,0(s0)
    177a:	0501                	.insn	2, 0x0501
    177c:	00040903          	lb	s2,0(s0)
    1780:	0200                	.insn	2, 0x0200
    1782:	0d04                	.insn	2, 0x0d04
    1784:	0501                	.insn	2, 0x0501
    1786:	00040903          	lb	s2,0(s0)
    178a:	0501                	.insn	2, 0x0501
    178c:	00040903          	lb	s2,0(s0)
    1790:	0200                	.insn	2, 0x0200
    1792:	0704                	.insn	2, 0x0704
    1794:	1806                	.insn	2, 0x1806
    1796:	0305                	.insn	2, 0x0305
    1798:	0009                	.insn	2, 0x0009
    179a:	0000                	.insn	2, 0x0000
    179c:	0402                	.insn	2, 0x0402
    179e:	0100                	.insn	2, 0x0100
    17a0:	0305                	.insn	2, 0x0305
    17a2:	0009                	.insn	2, 0x0009
    17a4:	0000                	.insn	2, 0x0000
    17a6:	0402                	.insn	2, 0x0402
    17a8:	05010607          	.insn	4, 0x05010607
    17ac:	00040903          	lb	s2,0(s0)
    17b0:	0200                	.insn	2, 0x0200
    17b2:	3504                	.insn	2, 0x3504
    17b4:	0106                	.insn	2, 0x0106
    17b6:	0305                	.insn	2, 0x0305
    17b8:	0009                	.insn	2, 0x0009
    17ba:	0000                	.insn	2, 0x0000
    17bc:	0402                	.insn	2, 0x0402
    17be:	0100                	.insn	2, 0x0100
    17c0:	0305                	.insn	2, 0x0305
    17c2:	0009                	.insn	2, 0x0009
    17c4:	0000                	.insn	2, 0x0000
    17c6:	0402                	.insn	2, 0x0402
    17c8:	0635                	.insn	2, 0x0635
    17ca:	0501                	.insn	2, 0x0501
    17cc:	00100903          	lb	s2,1(zero) # 1 <exit-0x1011f>
    17d0:	0200                	.insn	2, 0x0200
    17d2:	3604                	.insn	2, 0x3604
    17d4:	0106                	.insn	2, 0x0106
    17d6:	0305                	.insn	2, 0x0305
    17d8:	0009                	.insn	2, 0x0009
    17da:	0000                	.insn	2, 0x0000
    17dc:	0402                	.insn	2, 0x0402
    17de:	063c                	.insn	2, 0x063c
    17e0:	0501                	.insn	2, 0x0501
    17e2:	00040903          	lb	s2,0(s0)
    17e6:	0200                	.insn	2, 0x0200
    17e8:	3604                	.insn	2, 0x3604
    17ea:	0501                	.insn	2, 0x0501
    17ec:	00040903          	lb	s2,0(s0)
    17f0:	0200                	.insn	2, 0x0200
    17f2:	3c04                	.insn	2, 0x3c04
    17f4:	0501                	.insn	2, 0x0501
    17f6:	000c0903          	lb	s2,0(s8)
    17fa:	0200                	.insn	2, 0x0200
    17fc:	3e04                	.insn	2, 0x3e04
    17fe:	0501                	.insn	2, 0x0501
    1800:	00040903          	lb	s2,0(s0)
    1804:	0200                	.insn	2, 0x0200
    1806:	0004                	.insn	2, 0x0004
    1808:	0106                	.insn	2, 0x0106
    180a:	0305                	.insn	2, 0x0305
    180c:	0009                	.insn	2, 0x0009
    180e:	0100                	.insn	2, 0x0100
    1810:	0305                	.insn	2, 0x0305
    1812:	0009                	.insn	2, 0x0009
    1814:	0000                	.insn	2, 0x0000
    1816:	0402                	.insn	2, 0x0402
    1818:	063e                	.insn	2, 0x063e
    181a:	0501                	.insn	2, 0x0501
    181c:	00080903          	lb	s2,0(a6)
    1820:	0200                	.insn	2, 0x0200
    1822:	3f04                	.insn	2, 0x3f04
    1824:	0106                	.insn	2, 0x0106
    1826:	0305                	.insn	2, 0x0305
    1828:	0009                	.insn	2, 0x0009
    182a:	0000                	.insn	2, 0x0000
    182c:	0402                	.insn	2, 0x0402
    182e:	0100                	.insn	2, 0x0100
    1830:	0305                	.insn	2, 0x0305
    1832:	0009                	.insn	2, 0x0009
    1834:	0100                	.insn	2, 0x0100
    1836:	0305                	.insn	2, 0x0305
    1838:	0009                	.insn	2, 0x0009
    183a:	0100                	.insn	2, 0x0100
    183c:	0305                	.insn	2, 0x0305
    183e:	0009                	.insn	2, 0x0009
    1840:	0000                	.insn	2, 0x0000
    1842:	0402                	.insn	2, 0x0402
    1844:	0642                	.insn	2, 0x0642
    1846:	0501                	.insn	2, 0x0501
    1848:	000c0903          	lb	s2,0(s8)
    184c:	0200                	.insn	2, 0x0200
    184e:	4604                	.insn	2, 0x4604
    1850:	0106                	.insn	2, 0x0106
    1852:	0305                	.insn	2, 0x0305
    1854:	0409                	.insn	2, 0x0409
    1856:	0000                	.insn	2, 0x0000
    1858:	0402                	.insn	2, 0x0402
    185a:	03050147          	.insn	4, 0x03050147
    185e:	0009                	.insn	2, 0x0009
    1860:	0100                	.insn	2, 0x0100
    1862:	0305                	.insn	2, 0x0305
    1864:	0409                	.insn	2, 0x0409
    1866:	0000                	.insn	2, 0x0000
    1868:	0402                	.insn	2, 0x0402
    186a:	064d                	.insn	2, 0x064d
    186c:	0501                	.insn	2, 0x0501
    186e:	00040903          	lb	s2,0(s0)
    1872:	0200                	.insn	2, 0x0200
    1874:	4704                	.insn	2, 0x4704
    1876:	0501                	.insn	2, 0x0501
    1878:	00040903          	lb	s2,0(s0)
    187c:	0200                	.insn	2, 0x0200
    187e:	4c04                	.insn	2, 0x4c04
    1880:	0501                	.insn	2, 0x0501
    1882:	000c0903          	lb	s2,0(s8)
    1886:	0200                	.insn	2, 0x0200
    1888:	3504                	.insn	2, 0x3504
    188a:	0501                	.insn	2, 0x0501
    188c:	00040903          	lb	s2,0(s0)
    1890:	0501                	.insn	2, 0x0501
    1892:	00040903          	lb	s2,0(s0)
    1896:	0501                	.insn	2, 0x0501
    1898:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    189c:	0200                	.insn	2, 0x0200
    189e:	6404                	.insn	2, 0x6404
    18a0:	0501                	.insn	2, 0x0501
    18a2:	00040903          	lb	s2,0(s0)
    18a6:	0501                	.insn	2, 0x0501
    18a8:	00040903          	lb	s2,0(s0)
    18ac:	0200                	.insn	2, 0x0200
    18ae:	0504                	.insn	2, 0x0504
    18b0:	0501                	.insn	2, 0x0501
    18b2:	00040903          	lb	s2,0(s0)
    18b6:	0200                	.insn	2, 0x0200
    18b8:	6404                	.insn	2, 0x6404
    18ba:	0501                	.insn	2, 0x0501
    18bc:	00080903          	lb	s2,0(a6)
    18c0:	0501                	.insn	2, 0x0501
    18c2:	02090003          	lb	zero,32(s2)
    18c6:	0c2c                	.insn	2, 0x0c2c
    18c8:	0001                	.insn	2, 0x0001
    18ca:	0000                	.insn	2, 0x0000
    18cc:	0000                	.insn	2, 0x0000
    18ce:	0100                	.insn	2, 0x0100
    18d0:	4601                	.insn	2, 0x4601
    18d2:	0500000f          	fence	ow,unknown
    18d6:	0800                	.insn	2, 0x0800
    18d8:	3300                	.insn	2, 0x3300
    18da:	0000                	.insn	2, 0x0000
    18dc:	0100                	.insn	2, 0x0100
    18de:	0101                	.insn	2, 0x0101
    18e0:	f2f6                	.insn	2, 0xf2f6
    18e2:	000d                	.insn	2, 0x000d
    18e4:	0101                	.insn	2, 0x0101
    18e6:	0101                	.insn	2, 0x0101
    18e8:	0000                	.insn	2, 0x0000
    18ea:	0100                	.insn	2, 0x0100
    18ec:	0000                	.insn	2, 0x0000
    18ee:	0101                	.insn	2, 0x0101
    18f0:	1f01                	.insn	2, 0x1f01
    18f2:	2502                	.insn	2, 0x2502
    18f4:	0000                	.insn	2, 0x0000
    18f6:	0000                	.insn	2, 0x0000
    18f8:	0000                	.insn	2, 0x0000
    18fa:	0200                	.insn	2, 0x0200
    18fc:	1f01                	.insn	2, 0x1f01
    18fe:	0b02                	.insn	2, 0x0b02
    1900:	0000fe03          	.insn	4, 0xfe03
    1904:	0000                	.insn	2, 0x0000
    1906:	00000123          	sb	zero,2(zero) # 2 <exit-0x1011e>
    190a:	bd01                	.insn	2, 0xbd01
    190c:	0000                	.insn	2, 0x0000
    190e:	0100                	.insn	2, 0x0100
    1910:	0900                	.insn	2, 0x0900
    1912:	2c02                	.insn	2, 0x2c02
    1914:	010c                	.insn	2, 0x010c
    1916:	0000                	.insn	2, 0x0000
    1918:	0000                	.insn	2, 0x0000
    191a:	3800                	.insn	2, 0x3800
    191c:	0105                	.insn	2, 0x0105
    191e:	0009                	.insn	2, 0x0009
    1920:	1800                	.insn	2, 0x1800
    1922:	0305                	.insn	2, 0x0305
    1924:	0009                	.insn	2, 0x0009
    1926:	0100                	.insn	2, 0x0100
    1928:	0305                	.insn	2, 0x0305
    192a:	0009                	.insn	2, 0x0009
    192c:	0100                	.insn	2, 0x0100
    192e:	0d05                	.insn	2, 0x0d05
    1930:	0009                	.insn	2, 0x0009
    1932:	1800                	.insn	2, 0x1800
    1934:	0305                	.insn	2, 0x0305
    1936:	0009                	.insn	2, 0x0009
    1938:	0100                	.insn	2, 0x0100
    193a:	0305                	.insn	2, 0x0305
    193c:	0009                	.insn	2, 0x0009
    193e:	0100                	.insn	2, 0x0100
    1940:	0305                	.insn	2, 0x0305
    1942:	0009                	.insn	2, 0x0009
    1944:	0100                	.insn	2, 0x0100
    1946:	0305                	.insn	2, 0x0305
    1948:	0009                	.insn	2, 0x0009
    194a:	1800                	.insn	2, 0x1800
    194c:	0305                	.insn	2, 0x0305
    194e:	0009                	.insn	2, 0x0009
    1950:	0100                	.insn	2, 0x0100
    1952:	0305                	.insn	2, 0x0305
    1954:	0009                	.insn	2, 0x0009
    1956:	0100                	.insn	2, 0x0100
    1958:	0305                	.insn	2, 0x0305
    195a:	0009                	.insn	2, 0x0009
    195c:	0100                	.insn	2, 0x0100
    195e:	0305                	.insn	2, 0x0305
    1960:	0009                	.insn	2, 0x0009
    1962:	1800                	.insn	2, 0x1800
    1964:	0305                	.insn	2, 0x0305
    1966:	0009                	.insn	2, 0x0009
    1968:	0100                	.insn	2, 0x0100
    196a:	0305                	.insn	2, 0x0305
    196c:	0009                	.insn	2, 0x0009
    196e:	0100                	.insn	2, 0x0100
    1970:	0305                	.insn	2, 0x0305
    1972:	0009                	.insn	2, 0x0009
    1974:	0100                	.insn	2, 0x0100
    1976:	0305                	.insn	2, 0x0305
    1978:	0009                	.insn	2, 0x0009
    197a:	1800                	.insn	2, 0x1800
    197c:	0305                	.insn	2, 0x0305
    197e:	0009                	.insn	2, 0x0009
    1980:	1900                	.insn	2, 0x1900
    1982:	0305                	.insn	2, 0x0305
    1984:	0009                	.insn	2, 0x0009
    1986:	1800                	.insn	2, 0x1800
    1988:	0305                	.insn	2, 0x0305
    198a:	0009                	.insn	2, 0x0009
    198c:	0100                	.insn	2, 0x0100
    198e:	0305                	.insn	2, 0x0305
    1990:	0009                	.insn	2, 0x0009
    1992:	0100                	.insn	2, 0x0100
    1994:	0305                	.insn	2, 0x0305
    1996:	0009                	.insn	2, 0x0009
    1998:	0100                	.insn	2, 0x0100
    199a:	0305                	.insn	2, 0x0305
    199c:	0009                	.insn	2, 0x0009
    199e:	0100                	.insn	2, 0x0100
    19a0:	0305                	.insn	2, 0x0305
    19a2:	0009                	.insn	2, 0x0009
    19a4:	0600                	.insn	2, 0x0600
    19a6:	0518                	.insn	2, 0x0518
    19a8:	00040903          	lb	s2,0(s0)
    19ac:	0516                	.insn	2, 0x0516
    19ae:	00040903          	lb	s2,0(s0)
    19b2:	0901050f          	.insn	4, 0x0901050f
    19b6:	0004                	.insn	2, 0x0004
    19b8:	051f 0903 0004      	.insn	6, 0x00040903051f
    19be:	0518                	.insn	2, 0x0518
    19c0:	00040903          	lb	s2,0(s0)
    19c4:	0516                	.insn	2, 0x0516
    19c6:	00040903          	lb	s2,0(s0)
    19ca:	0106                	.insn	2, 0x0106
    19cc:	0305                	.insn	2, 0x0305
    19ce:	0009                	.insn	2, 0x0009
    19d0:	0600                	.insn	2, 0x0600
    19d2:	0518                	.insn	2, 0x0518
    19d4:	00040903          	lb	s2,0(s0)
    19d8:	050e                	.insn	2, 0x050e
    19da:	0901                	.insn	2, 0x0901
    19dc:	0008                	.insn	2, 0x0008
    19de:	051f 0903 0008      	.insn	6, 0x00080903051f
    19e4:	0519                	.insn	2, 0x0519
    19e6:	00040903          	lb	s2,0(s0)
    19ea:	0200                	.insn	2, 0x0200
    19ec:	0204                	.insn	2, 0x0204
    19ee:	0516                	.insn	2, 0x0516
    19f0:	00040903          	lb	s2,0(s0)
    19f4:	0200                	.insn	2, 0x0200
    19f6:	0004                	.insn	2, 0x0004
    19f8:	0518                	.insn	2, 0x0518
    19fa:	00040903          	lb	s2,0(s0)
    19fe:	0200                	.insn	2, 0x0200
    1a00:	0204                	.insn	2, 0x0204
    1a02:	0501                	.insn	2, 0x0501
    1a04:	00080903          	lb	s2,0(a6)
    1a08:	0200                	.insn	2, 0x0200
    1a0a:	0004                	.insn	2, 0x0004
    1a0c:	0516                	.insn	2, 0x0516
    1a0e:	00040903          	lb	s2,0(s0)
    1a12:	0501                	.insn	2, 0x0501
    1a14:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1a18:	0516                	.insn	2, 0x0516
    1a1a:	00040903          	lb	s2,0(s0)
    1a1e:	0106                	.insn	2, 0x0106
    1a20:	0305                	.insn	2, 0x0305
    1a22:	0009                	.insn	2, 0x0009
    1a24:	0600                	.insn	2, 0x0600
    1a26:	0501                	.insn	2, 0x0501
    1a28:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1a2c:	0106                	.insn	2, 0x0106
    1a2e:	0305                	.insn	2, 0x0305
    1a30:	0009                	.insn	2, 0x0009
    1a32:	0100                	.insn	2, 0x0100
    1a34:	0305                	.insn	2, 0x0305
    1a36:	0009                	.insn	2, 0x0009
    1a38:	0100                	.insn	2, 0x0100
    1a3a:	0305                	.insn	2, 0x0305
    1a3c:	0009                	.insn	2, 0x0009
    1a3e:	0000                	.insn	2, 0x0000
    1a40:	0402                	.insn	2, 0x0402
    1a42:	0102                	.insn	2, 0x0102
    1a44:	0305                	.insn	2, 0x0305
    1a46:	0409                	.insn	2, 0x0409
    1a48:	0000                	.insn	2, 0x0000
    1a4a:	0402                	.insn	2, 0x0402
    1a4c:	0600                	.insn	2, 0x0600
    1a4e:	0901050f          	.insn	4, 0x0901050f
    1a52:	0008                	.insn	2, 0x0008
    1a54:	0200                	.insn	2, 0x0200
    1a56:	0204                	.insn	2, 0x0204
    1a58:	051f 0903 0004      	.insn	6, 0x00040903051f
    1a5e:	0200                	.insn	2, 0x0200
    1a60:	0004                	.insn	2, 0x0004
    1a62:	0106                	.insn	2, 0x0106
    1a64:	0305                	.insn	2, 0x0305
    1a66:	0009                	.insn	2, 0x0009
    1a68:	0100                	.insn	2, 0x0100
    1a6a:	0305                	.insn	2, 0x0305
    1a6c:	0009                	.insn	2, 0x0009
    1a6e:	1800                	.insn	2, 0x1800
    1a70:	0305                	.insn	2, 0x0305
    1a72:	0009                	.insn	2, 0x0009
    1a74:	0100                	.insn	2, 0x0100
    1a76:	0305                	.insn	2, 0x0305
    1a78:	0009                	.insn	2, 0x0009
    1a7a:	0100                	.insn	2, 0x0100
    1a7c:	0305                	.insn	2, 0x0305
    1a7e:	0009                	.insn	2, 0x0009
    1a80:	0100                	.insn	2, 0x0100
    1a82:	0305                	.insn	2, 0x0305
    1a84:	0009                	.insn	2, 0x0009
    1a86:	0100                	.insn	2, 0x0100
    1a88:	0305                	.insn	2, 0x0305
    1a8a:	0009                	.insn	2, 0x0009
    1a8c:	0100                	.insn	2, 0x0100
    1a8e:	0305                	.insn	2, 0x0305
    1a90:	0009                	.insn	2, 0x0009
    1a92:	0100                	.insn	2, 0x0100
    1a94:	0305                	.insn	2, 0x0305
    1a96:	0009                	.insn	2, 0x0009
    1a98:	0100                	.insn	2, 0x0100
    1a9a:	0305                	.insn	2, 0x0305
    1a9c:	0009                	.insn	2, 0x0009
    1a9e:	0100                	.insn	2, 0x0100
    1aa0:	0305                	.insn	2, 0x0305
    1aa2:	0009                	.insn	2, 0x0009
    1aa4:	0100                	.insn	2, 0x0100
    1aa6:	0305                	.insn	2, 0x0305
    1aa8:	0009                	.insn	2, 0x0009
    1aaa:	0000                	.insn	2, 0x0000
    1aac:	0402                	.insn	2, 0x0402
    1aae:	0102                	.insn	2, 0x0102
    1ab0:	0305                	.insn	2, 0x0305
    1ab2:	0009                	.insn	2, 0x0009
    1ab4:	0000                	.insn	2, 0x0000
    1ab6:	0402                	.insn	2, 0x0402
    1ab8:	0100                	.insn	2, 0x0100
    1aba:	0305                	.insn	2, 0x0305
    1abc:	0009                	.insn	2, 0x0009
    1abe:	0100                	.insn	2, 0x0100
    1ac0:	0305                	.insn	2, 0x0305
    1ac2:	0009                	.insn	2, 0x0009
    1ac4:	1800                	.insn	2, 0x1800
    1ac6:	0305                	.insn	2, 0x0305
    1ac8:	0009                	.insn	2, 0x0009
    1aca:	0100                	.insn	2, 0x0100
    1acc:	0305                	.insn	2, 0x0305
    1ace:	0009                	.insn	2, 0x0009
    1ad0:	0000                	.insn	2, 0x0000
    1ad2:	0402                	.insn	2, 0x0402
    1ad4:	0105                	.insn	2, 0x0105
    1ad6:	0305                	.insn	2, 0x0305
    1ad8:	0009                	.insn	2, 0x0009
    1ada:	0100                	.insn	2, 0x0100
    1adc:	0305                	.insn	2, 0x0305
    1ade:	0009                	.insn	2, 0x0009
    1ae0:	0100                	.insn	2, 0x0100
    1ae2:	0305                	.insn	2, 0x0305
    1ae4:	0009                	.insn	2, 0x0009
    1ae6:	0000                	.insn	2, 0x0000
    1ae8:	0402                	.insn	2, 0x0402
    1aea:	0108                	.insn	2, 0x0108
    1aec:	0305                	.insn	2, 0x0305
    1aee:	0009                	.insn	2, 0x0009
    1af0:	0100                	.insn	2, 0x0100
    1af2:	0305                	.insn	2, 0x0305
    1af4:	0009                	.insn	2, 0x0009
    1af6:	0100                	.insn	2, 0x0100
    1af8:	0305                	.insn	2, 0x0305
    1afa:	0009                	.insn	2, 0x0009
    1afc:	0000                	.insn	2, 0x0000
    1afe:	0402                	.insn	2, 0x0402
    1b00:	0305010b          	.insn	4, 0x0305010b
    1b04:	0009                	.insn	2, 0x0009
    1b06:	0100                	.insn	2, 0x0100
    1b08:	0305                	.insn	2, 0x0305
    1b0a:	0009                	.insn	2, 0x0009
    1b0c:	0000                	.insn	2, 0x0000
    1b0e:	0402                	.insn	2, 0x0402
    1b10:	060c                	.insn	2, 0x060c
    1b12:	0501                	.insn	2, 0x0501
    1b14:	00040903          	lb	s2,0(s0)
    1b18:	0200                	.insn	2, 0x0200
    1b1a:	0b04                	.insn	2, 0x0b04
    1b1c:	0501                	.insn	2, 0x0501
    1b1e:	00040903          	lb	s2,0(s0)
    1b22:	0200                	.insn	2, 0x0200
    1b24:	0c04                	.insn	2, 0x0c04
    1b26:	0106                	.insn	2, 0x0106
    1b28:	0305                	.insn	2, 0x0305
    1b2a:	0009                	.insn	2, 0x0009
    1b2c:	0000                	.insn	2, 0x0000
    1b2e:	0402                	.insn	2, 0x0402
    1b30:	0100                	.insn	2, 0x0100
    1b32:	0305                	.insn	2, 0x0305
    1b34:	0009                	.insn	2, 0x0009
    1b36:	0100                	.insn	2, 0x0100
    1b38:	0305                	.insn	2, 0x0305
    1b3a:	0009                	.insn	2, 0x0009
    1b3c:	0000                	.insn	2, 0x0000
    1b3e:	0402                	.insn	2, 0x0402
    1b40:	060c                	.insn	2, 0x060c
    1b42:	0501                	.insn	2, 0x0501
    1b44:	00040903          	lb	s2,0(s0)
    1b48:	0200                	.insn	2, 0x0200
    1b4a:	0e04                	.insn	2, 0x0e04
    1b4c:	0106                	.insn	2, 0x0106
    1b4e:	0305                	.insn	2, 0x0305
    1b50:	0009                	.insn	2, 0x0009
    1b52:	0000                	.insn	2, 0x0000
    1b54:	0402                	.insn	2, 0x0402
    1b56:	0100                	.insn	2, 0x0100
    1b58:	0305                	.insn	2, 0x0305
    1b5a:	0009                	.insn	2, 0x0009
    1b5c:	0000                	.insn	2, 0x0000
    1b5e:	0402                	.insn	2, 0x0402
    1b60:	060e                	.insn	2, 0x060e
    1b62:	0501                	.insn	2, 0x0501
    1b64:	00040903          	lb	s2,0(s0)
    1b68:	0200                	.insn	2, 0x0200
    1b6a:	1004                	.insn	2, 0x1004
    1b6c:	0106                	.insn	2, 0x0106
    1b6e:	0305                	.insn	2, 0x0305
    1b70:	0409                	.insn	2, 0x0409
    1b72:	0000                	.insn	2, 0x0000
    1b74:	0402                	.insn	2, 0x0402
    1b76:	03050113          	addi	sp,a0,48
    1b7a:	0009                	.insn	2, 0x0009
    1b7c:	0000                	.insn	2, 0x0000
    1b7e:	0402                	.insn	2, 0x0402
    1b80:	0100                	.insn	2, 0x0100
    1b82:	0305                	.insn	2, 0x0305
    1b84:	0009                	.insn	2, 0x0009
    1b86:	0000                	.insn	2, 0x0000
    1b88:	0402                	.insn	2, 0x0402
    1b8a:	05010613          	addi	a2,sp,80
    1b8e:	00040903          	lb	s2,0(s0)
    1b92:	0200                	.insn	2, 0x0200
    1b94:	0004                	.insn	2, 0x0004
    1b96:	0106                	.insn	2, 0x0106
    1b98:	0305                	.insn	2, 0x0305
    1b9a:	0009                	.insn	2, 0x0009
    1b9c:	0000                	.insn	2, 0x0000
    1b9e:	0402                	.insn	2, 0x0402
    1ba0:	05010613          	addi	a2,sp,80
    1ba4:	00040903          	lb	s2,0(s0)
    1ba8:	0200                	.insn	2, 0x0200
    1baa:	1c04                	.insn	2, 0x1c04
    1bac:	0106                	.insn	2, 0x0106
    1bae:	0305                	.insn	2, 0x0305
    1bb0:	0409                	.insn	2, 0x0409
    1bb2:	0000                	.insn	2, 0x0000
    1bb4:	0402                	.insn	2, 0x0402
    1bb6:	0100                	.insn	2, 0x0100
    1bb8:	0305                	.insn	2, 0x0305
    1bba:	0009                	.insn	2, 0x0009
    1bbc:	0100                	.insn	2, 0x0100
    1bbe:	0305                	.insn	2, 0x0305
    1bc0:	0009                	.insn	2, 0x0009
    1bc2:	0000                	.insn	2, 0x0000
    1bc4:	0402                	.insn	2, 0x0402
    1bc6:	05010677          	.insn	4, 0x05010677
    1bca:	00080903          	lb	s2,0(a6)
    1bce:	0300                	.insn	2, 0x0300
    1bd0:	b204                	.insn	2, 0xb204
    1bd2:	0601                	.insn	2, 0x0601
    1bd4:	0501                	.insn	2, 0x0501
    1bd6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1bda:	0200                	.insn	2, 0x0200
    1bdc:	0004                	.insn	2, 0x0004
    1bde:	0501                	.insn	2, 0x0501
    1be0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1be4:	0300                	.insn	2, 0x0300
    1be6:	b204                	.insn	2, 0xb204
    1be8:	0601                	.insn	2, 0x0601
    1bea:	0501                	.insn	2, 0x0501
    1bec:	00040903          	lb	s2,0(s0)
    1bf0:	0200                	.insn	2, 0x0200
    1bf2:	0004                	.insn	2, 0x0004
    1bf4:	0106                	.insn	2, 0x0106
    1bf6:	0305                	.insn	2, 0x0305
    1bf8:	0009                	.insn	2, 0x0009
    1bfa:	0100                	.insn	2, 0x0100
    1bfc:	0305                	.insn	2, 0x0305
    1bfe:	0009                	.insn	2, 0x0009
    1c00:	0000                	.insn	2, 0x0000
    1c02:	01b20403          	lb	s0,27(tp) # 1b <exit-0x10105>
    1c06:	0106                	.insn	2, 0x0106
    1c08:	0305                	.insn	2, 0x0305
    1c0a:	1409                	.insn	2, 0x1409
    1c0c:	0100                	.insn	2, 0x0100
    1c0e:	0305                	.insn	2, 0x0305
    1c10:	0c09                	.insn	2, 0x0c09
    1c12:	0100                	.insn	2, 0x0100
    1c14:	0305                	.insn	2, 0x0305
    1c16:	0409                	.insn	2, 0x0409
    1c18:	0100                	.insn	2, 0x0100
    1c1a:	0305                	.insn	2, 0x0305
    1c1c:	0409                	.insn	2, 0x0409
    1c1e:	0000                	.insn	2, 0x0000
    1c20:	0402                	.insn	2, 0x0402
    1c22:	061d                	.insn	2, 0x061d
    1c24:	0501                	.insn	2, 0x0501
    1c26:	00040903          	lb	s2,0(s0)
    1c2a:	0106                	.insn	2, 0x0106
    1c2c:	0305                	.insn	2, 0x0305
    1c2e:	0409                	.insn	2, 0x0409
    1c30:	0100                	.insn	2, 0x0100
    1c32:	0305                	.insn	2, 0x0305
    1c34:	0809                	.insn	2, 0x0809
    1c36:	0100                	.insn	2, 0x0100
    1c38:	0305                	.insn	2, 0x0305
    1c3a:	0009                	.insn	2, 0x0009
    1c3c:	0000                	.insn	2, 0x0000
    1c3e:	0402                	.insn	2, 0x0402
    1c40:	0611                	.insn	2, 0x0611
    1c42:	0501                	.insn	2, 0x0501
    1c44:	00040903          	lb	s2,0(s0)
    1c48:	0106                	.insn	2, 0x0106
    1c4a:	0305                	.insn	2, 0x0305
    1c4c:	0409                	.insn	2, 0x0409
    1c4e:	0000                	.insn	2, 0x0000
    1c50:	0402                	.insn	2, 0x0402
    1c52:	0501062b          	.insn	4, 0x0501062b
    1c56:	000c0903          	lb	s2,0(s8)
    1c5a:	0200                	.insn	2, 0x0200
    1c5c:	0004                	.insn	2, 0x0004
    1c5e:	0501                	.insn	2, 0x0501
    1c60:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1c64:	0200                	.insn	2, 0x0200
    1c66:	3404                	.insn	2, 0x3404
    1c68:	0106                	.insn	2, 0x0106
    1c6a:	0305                	.insn	2, 0x0305
    1c6c:	0409                	.insn	2, 0x0409
    1c6e:	0000                	.insn	2, 0x0000
    1c70:	0402                	.insn	2, 0x0402
    1c72:	0305013f 00000409 	.insn	8, 0x04090305013f
    1c7a:	0402                	.insn	2, 0x0402
    1c7c:	0134                	.insn	2, 0x0134
    1c7e:	0305                	.insn	2, 0x0305
    1c80:	0409                	.insn	2, 0x0409
    1c82:	0000                	.insn	2, 0x0000
    1c84:	0402                	.insn	2, 0x0402
    1c86:	0635                	.insn	2, 0x0635
    1c88:	0501                	.insn	2, 0x0501
    1c8a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1c8e:	0200                	.insn	2, 0x0200
    1c90:	3b04                	.insn	2, 0x3b04
    1c92:	0106                	.insn	2, 0x0106
    1c94:	0305                	.insn	2, 0x0305
    1c96:	0409                	.insn	2, 0x0409
    1c98:	0000                	.insn	2, 0x0000
    1c9a:	0402                	.insn	2, 0x0402
    1c9c:	0135                	.insn	2, 0x0135
    1c9e:	0305                	.insn	2, 0x0305
    1ca0:	0409                	.insn	2, 0x0409
    1ca2:	0000                	.insn	2, 0x0000
    1ca4:	0402                	.insn	2, 0x0402
    1ca6:	0305013b          	mulw	sp,a0,a6
    1caa:	0409                	.insn	2, 0x0409
    1cac:	0100                	.insn	2, 0x0100
    1cae:	0305                	.insn	2, 0x0305
    1cb0:	0409                	.insn	2, 0x0409
    1cb2:	0100                	.insn	2, 0x0100
    1cb4:	0305                	.insn	2, 0x0305
    1cb6:	0409                	.insn	2, 0x0409
    1cb8:	0000                	.insn	2, 0x0000
    1cba:	0402                	.insn	2, 0x0402
    1cbc:	013d                	.insn	2, 0x013d
    1cbe:	0305                	.insn	2, 0x0305
    1cc0:	0409                	.insn	2, 0x0409
    1cc2:	0000                	.insn	2, 0x0000
    1cc4:	0402                	.insn	2, 0x0402
    1cc6:	0641                	.insn	2, 0x0641
    1cc8:	0501                	.insn	2, 0x0501
    1cca:	00040903          	lb	s2,0(s0)
    1cce:	0106                	.insn	2, 0x0106
    1cd0:	0305                	.insn	2, 0x0305
    1cd2:	0409                	.insn	2, 0x0409
    1cd4:	0000                	.insn	2, 0x0000
    1cd6:	0402                	.insn	2, 0x0402
    1cd8:	0501060f          	.insn	4, 0x0501060f
    1cdc:	00040903          	lb	s2,0(s0)
    1ce0:	0200                	.insn	2, 0x0200
    1ce2:	4304                	.insn	2, 0x4304
    1ce4:	0501                	.insn	2, 0x0501
    1ce6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1cea:	0200                	.insn	2, 0x0200
    1cec:	0004                	.insn	2, 0x0004
    1cee:	0501                	.insn	2, 0x0501
    1cf0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1cf4:	0501                	.insn	2, 0x0501
    1cf6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1cfa:	0200                	.insn	2, 0x0200
    1cfc:	4304                	.insn	2, 0x4304
    1cfe:	0106                	.insn	2, 0x0106
    1d00:	0305                	.insn	2, 0x0305
    1d02:	0409                	.insn	2, 0x0409
    1d04:	0000                	.insn	2, 0x0000
    1d06:	0402                	.insn	2, 0x0402
    1d08:	0645                	.insn	2, 0x0645
    1d0a:	0501                	.insn	2, 0x0501
    1d0c:	00040903          	lb	s2,0(s0)
    1d10:	0200                	.insn	2, 0x0200
    1d12:	4804                	.insn	2, 0x4804
    1d14:	0501                	.insn	2, 0x0501
    1d16:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1d1a:	0200                	.insn	2, 0x0200
    1d1c:	0004                	.insn	2, 0x0004
    1d1e:	0501                	.insn	2, 0x0501
    1d20:	00040903          	lb	s2,0(s0)
    1d24:	0501                	.insn	2, 0x0501
    1d26:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1d2a:	0200                	.insn	2, 0x0200
    1d2c:	4804                	.insn	2, 0x4804
    1d2e:	0106                	.insn	2, 0x0106
    1d30:	0305                	.insn	2, 0x0305
    1d32:	0409                	.insn	2, 0x0409
    1d34:	0000                	.insn	2, 0x0000
    1d36:	0402                	.insn	2, 0x0402
    1d38:	0651                	.insn	2, 0x0651
    1d3a:	0501                	.insn	2, 0x0501
    1d3c:	00040903          	lb	s2,0(s0)
    1d40:	0200                	.insn	2, 0x0200
    1d42:	0004                	.insn	2, 0x0004
    1d44:	0501                	.insn	2, 0x0501
    1d46:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1d4a:	0200                	.insn	2, 0x0200
    1d4c:	4304                	.insn	2, 0x4304
    1d4e:	0106                	.insn	2, 0x0106
    1d50:	0305                	.insn	2, 0x0305
    1d52:	0409                	.insn	2, 0x0409
    1d54:	0100                	.insn	2, 0x0100
    1d56:	0305                	.insn	2, 0x0305
    1d58:	0409                	.insn	2, 0x0409
    1d5a:	0000                	.insn	2, 0x0000
    1d5c:	0402                	.insn	2, 0x0402
    1d5e:	0652                	.insn	2, 0x0652
    1d60:	0501                	.insn	2, 0x0501
    1d62:	00040903          	lb	s2,0(s0)
    1d66:	0106                	.insn	2, 0x0106
    1d68:	0305                	.insn	2, 0x0305
    1d6a:	0409                	.insn	2, 0x0409
    1d6c:	0000                	.insn	2, 0x0000
    1d6e:	0402                	.insn	2, 0x0402
    1d70:	010e                	.insn	2, 0x010e
    1d72:	0305                	.insn	2, 0x0305
    1d74:	0409                	.insn	2, 0x0409
    1d76:	0100                	.insn	2, 0x0100
    1d78:	0305                	.insn	2, 0x0305
    1d7a:	0409                	.insn	2, 0x0409
    1d7c:	0000                	.insn	2, 0x0000
    1d7e:	0402                	.insn	2, 0x0402
    1d80:	0646                	.insn	2, 0x0646
    1d82:	0501                	.insn	2, 0x0501
    1d84:	00040903          	lb	s2,0(s0)
    1d88:	0106                	.insn	2, 0x0106
    1d8a:	0305                	.insn	2, 0x0305
    1d8c:	0409                	.insn	2, 0x0409
    1d8e:	0000                	.insn	2, 0x0000
    1d90:	0402                	.insn	2, 0x0402
    1d92:	0160                	.insn	2, 0x0160
    1d94:	0305                	.insn	2, 0x0305
    1d96:	0809                	.insn	2, 0x0809
    1d98:	0000                	.insn	2, 0x0000
    1d9a:	0402                	.insn	2, 0x0402
    1d9c:	03050143          	.insn	4, 0x03050143
    1da0:	0409                	.insn	2, 0x0409
    1da2:	0000                	.insn	2, 0x0000
    1da4:	0402                	.insn	2, 0x0402
    1da6:	0660                	.insn	2, 0x0660
    1da8:	0501                	.insn	2, 0x0501
    1daa:	00040903          	lb	s2,0(s0)
    1dae:	0200                	.insn	2, 0x0200
    1db0:	0004                	.insn	2, 0x0004
    1db2:	0501                	.insn	2, 0x0501
    1db4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1db8:	0200                	.insn	2, 0x0200
    1dba:	6904                	.insn	2, 0x6904
    1dbc:	0106                	.insn	2, 0x0106
    1dbe:	0305                	.insn	2, 0x0305
    1dc0:	0409                	.insn	2, 0x0409
    1dc2:	0000                	.insn	2, 0x0000
    1dc4:	0402                	.insn	2, 0x0402
    1dc6:	0174                	.insn	2, 0x0174
    1dc8:	0305                	.insn	2, 0x0305
    1dca:	0409                	.insn	2, 0x0409
    1dcc:	0000                	.insn	2, 0x0000
    1dce:	0402                	.insn	2, 0x0402
    1dd0:	0169                	.insn	2, 0x0169
    1dd2:	0305                	.insn	2, 0x0305
    1dd4:	0409                	.insn	2, 0x0409
    1dd6:	0000                	.insn	2, 0x0000
    1dd8:	0402                	.insn	2, 0x0402
    1dda:	066a                	.insn	2, 0x066a
    1ddc:	0501                	.insn	2, 0x0501
    1dde:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1de2:	0200                	.insn	2, 0x0200
    1de4:	7004                	.insn	2, 0x7004
    1de6:	0106                	.insn	2, 0x0106
    1de8:	0305                	.insn	2, 0x0305
    1dea:	0409                	.insn	2, 0x0409
    1dec:	0000                	.insn	2, 0x0000
    1dee:	0402                	.insn	2, 0x0402
    1df0:	016a                	.insn	2, 0x016a
    1df2:	0305                	.insn	2, 0x0305
    1df4:	0409                	.insn	2, 0x0409
    1df6:	0000                	.insn	2, 0x0000
    1df8:	0402                	.insn	2, 0x0402
    1dfa:	0170                	.insn	2, 0x0170
    1dfc:	0305                	.insn	2, 0x0305
    1dfe:	0409                	.insn	2, 0x0409
    1e00:	0100                	.insn	2, 0x0100
    1e02:	0305                	.insn	2, 0x0305
    1e04:	0409                	.insn	2, 0x0409
    1e06:	0100                	.insn	2, 0x0100
    1e08:	0305                	.insn	2, 0x0305
    1e0a:	0409                	.insn	2, 0x0409
    1e0c:	0000                	.insn	2, 0x0000
    1e0e:	0402                	.insn	2, 0x0402
    1e10:	0172                	.insn	2, 0x0172
    1e12:	0305                	.insn	2, 0x0305
    1e14:	0409                	.insn	2, 0x0409
    1e16:	0000                	.insn	2, 0x0000
    1e18:	0402                	.insn	2, 0x0402
    1e1a:	0676                	.insn	2, 0x0676
    1e1c:	0501                	.insn	2, 0x0501
    1e1e:	00080903          	lb	s2,0(a6)
    1e22:	0200                	.insn	2, 0x0200
    1e24:	4404                	.insn	2, 0x4404
    1e26:	0501                	.insn	2, 0x0501
    1e28:	00080903          	lb	s2,0(a6)
    1e2c:	0106                	.insn	2, 0x0106
    1e2e:	0305                	.insn	2, 0x0305
    1e30:	0409                	.insn	2, 0x0409
    1e32:	0000                	.insn	2, 0x0000
    1e34:	0402                	.insn	2, 0x0402
    1e36:	0678                	.insn	2, 0x0678
    1e38:	0501                	.insn	2, 0x0501
    1e3a:	00040903          	lb	s2,0(s0)
    1e3e:	0200                	.insn	2, 0x0200
    1e40:	7a04                	.insn	2, 0x7a04
    1e42:	0501                	.insn	2, 0x0501
    1e44:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1e48:	0200                	.insn	2, 0x0200
    1e4a:	0004                	.insn	2, 0x0004
    1e4c:	0501                	.insn	2, 0x0501
    1e4e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1e52:	0200                	.insn	2, 0x0200
    1e54:	7a04                	.insn	2, 0x7a04
    1e56:	0106                	.insn	2, 0x0106
    1e58:	0305                	.insn	2, 0x0305
    1e5a:	0409                	.insn	2, 0x0409
    1e5c:	0000                	.insn	2, 0x0000
    1e5e:	0402                	.insn	2, 0x0402
    1e60:	067d                	.insn	2, 0x067d
    1e62:	0501                	.insn	2, 0x0501
    1e64:	00040903          	lb	s2,0(s0)
    1e68:	0300                	.insn	2, 0x0300
    1e6a:	8304                	.insn	2, 0x8304
    1e6c:	0101                	.insn	2, 0x0101
    1e6e:	0305                	.insn	2, 0x0305
    1e70:	0009                	.insn	2, 0x0009
    1e72:	0000                	.insn	2, 0x0000
    1e74:	0402                	.insn	2, 0x0402
    1e76:	0100                	.insn	2, 0x0100
    1e78:	0305                	.insn	2, 0x0305
    1e7a:	0009                	.insn	2, 0x0009
    1e7c:	0000                	.insn	2, 0x0000
    1e7e:	01830403          	lb	s0,24(t1)
    1e82:	0106                	.insn	2, 0x0106
    1e84:	0305                	.insn	2, 0x0305
    1e86:	0409                	.insn	2, 0x0409
    1e88:	0000                	.insn	2, 0x0000
    1e8a:	0402                	.insn	2, 0x0402
    1e8c:	0600                	.insn	2, 0x0600
    1e8e:	0501                	.insn	2, 0x0501
    1e90:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1e94:	0300                	.insn	2, 0x0300
    1e96:	8304                	.insn	2, 0x8304
    1e98:	0601                	.insn	2, 0x0601
    1e9a:	0501                	.insn	2, 0x0501
    1e9c:	00040903          	lb	s2,0(s0)
    1ea0:	0501                	.insn	2, 0x0501
    1ea2:	00040903          	lb	s2,0(s0)
    1ea6:	0300                	.insn	2, 0x0300
    1ea8:	8504                	.insn	2, 0x8504
    1eaa:	0601                	.insn	2, 0x0601
    1eac:	0501                	.insn	2, 0x0501
    1eae:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1eb2:	0200                	.insn	2, 0x0200
    1eb4:	0004                	.insn	2, 0x0004
    1eb6:	0501                	.insn	2, 0x0501
    1eb8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1ebc:	0300                	.insn	2, 0x0300
    1ebe:	8704                	.insn	2, 0x8704
    1ec0:	0101                	.insn	2, 0x0101
    1ec2:	0305                	.insn	2, 0x0305
    1ec4:	0009                	.insn	2, 0x0009
    1ec6:	0000                	.insn	2, 0x0000
    1ec8:	0402                	.insn	2, 0x0402
    1eca:	0100                	.insn	2, 0x0100
    1ecc:	0305                	.insn	2, 0x0305
    1ece:	0009                	.insn	2, 0x0009
    1ed0:	0100                	.insn	2, 0x0100
    1ed2:	0305                	.insn	2, 0x0305
    1ed4:	0009                	.insn	2, 0x0009
    1ed6:	0100                	.insn	2, 0x0100
    1ed8:	0305                	.insn	2, 0x0305
    1eda:	0009                	.insn	2, 0x0009
    1edc:	1800                	.insn	2, 0x1800
    1ede:	0305                	.insn	2, 0x0305
    1ee0:	0009                	.insn	2, 0x0009
    1ee2:	0100                	.insn	2, 0x0100
    1ee4:	0305                	.insn	2, 0x0305
    1ee6:	0009                	.insn	2, 0x0009
    1ee8:	0100                	.insn	2, 0x0100
    1eea:	0305                	.insn	2, 0x0305
    1eec:	0009                	.insn	2, 0x0009
    1eee:	0000                	.insn	2, 0x0000
    1ef0:	0402                	.insn	2, 0x0402
    1ef2:	011c                	.insn	2, 0x011c
    1ef4:	0305                	.insn	2, 0x0305
    1ef6:	0009                	.insn	2, 0x0009
    1ef8:	0100                	.insn	2, 0x0100
    1efa:	0305                	.insn	2, 0x0305
    1efc:	0009                	.insn	2, 0x0009
    1efe:	0000                	.insn	2, 0x0000
    1f00:	0402                	.insn	2, 0x0402
    1f02:	0125                	.insn	2, 0x0125
    1f04:	0305                	.insn	2, 0x0305
    1f06:	0009                	.insn	2, 0x0009
    1f08:	0100                	.insn	2, 0x0100
    1f0a:	0305                	.insn	2, 0x0305
    1f0c:	0009                	.insn	2, 0x0009
    1f0e:	0000                	.insn	2, 0x0000
    1f10:	0402                	.insn	2, 0x0402
    1f12:	012e                	.insn	2, 0x012e
    1f14:	0305                	.insn	2, 0x0305
    1f16:	0009                	.insn	2, 0x0009
    1f18:	0000                	.insn	2, 0x0000
    1f1a:	0402                	.insn	2, 0x0402
    1f1c:	0305013f 01000009 	.insn	8, 0x010000090305013f
    1f24:	0305                	.insn	2, 0x0305
    1f26:	0c09                	.insn	2, 0x0c09
    1f28:	0600                	.insn	2, 0x0600
    1f2a:	0501                	.insn	2, 0x0501
    1f2c:	00080903          	lb	s2,0(a6)
    1f30:	0200                	.insn	2, 0x0200
    1f32:	0004                	.insn	2, 0x0004
    1f34:	0106                	.insn	2, 0x0106
    1f36:	0305                	.insn	2, 0x0305
    1f38:	0009                	.insn	2, 0x0009
    1f3a:	0000                	.insn	2, 0x0000
    1f3c:	01850403          	lb	s0,24(a0)
    1f40:	1606                	.insn	2, 0x1606
    1f42:	0305                	.insn	2, 0x0305
    1f44:	0409                	.insn	2, 0x0409
    1f46:	0100                	.insn	2, 0x0100
    1f48:	0305                	.insn	2, 0x0305
    1f4a:	0009                	.insn	2, 0x0009
    1f4c:	0000                	.insn	2, 0x0000
    1f4e:	0402                	.insn	2, 0x0402
    1f50:	064a                	.insn	2, 0x064a
    1f52:	0518                	.insn	2, 0x0518
    1f54:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f58:	0501                	.insn	2, 0x0501
    1f5a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f5e:	0501                	.insn	2, 0x0501
    1f60:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f64:	0501                	.insn	2, 0x0501
    1f66:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f6a:	0501                	.insn	2, 0x0501
    1f6c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f70:	0200                	.insn	2, 0x0200
    1f72:	0004                	.insn	2, 0x0004
    1f74:	0501                	.insn	2, 0x0501
    1f76:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f7a:	0501                	.insn	2, 0x0501
    1f7c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f80:	0200                	.insn	2, 0x0200
    1f82:	4a04                	.insn	2, 0x4a04
    1f84:	0106                	.insn	2, 0x0106
    1f86:	0305                	.insn	2, 0x0305
    1f88:	0809                	.insn	2, 0x0809
    1f8a:	0100                	.insn	2, 0x0100
    1f8c:	0305                	.insn	2, 0x0305
    1f8e:	1009                	.insn	2, 0x1009
    1f90:	0000                	.insn	2, 0x0000
    1f92:	0402                	.insn	2, 0x0402
    1f94:	0600                	.insn	2, 0x0600
    1f96:	0501                	.insn	2, 0x0501
    1f98:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f9c:	0106                	.insn	2, 0x0106
    1f9e:	0305                	.insn	2, 0x0305
    1fa0:	0009                	.insn	2, 0x0009
    1fa2:	0000                	.insn	2, 0x0000
    1fa4:	0402                	.insn	2, 0x0402
    1fa6:	064a                	.insn	2, 0x064a
    1fa8:	0501                	.insn	2, 0x0501
    1faa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fae:	0501                	.insn	2, 0x0501
    1fb0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fb4:	0200                	.insn	2, 0x0200
    1fb6:	0004                	.insn	2, 0x0004
    1fb8:	0518                	.insn	2, 0x0518
    1fba:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fbe:	0501                	.insn	2, 0x0501
    1fc0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fc4:	0501                	.insn	2, 0x0501
    1fc6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fca:	0519                	.insn	2, 0x0519
    1fcc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fd0:	1806                	.insn	2, 0x1806
    1fd2:	0105                	.insn	2, 0x0105
    1fd4:	0809                	.insn	2, 0x0809
    1fd6:	0100                	.insn	2, 0x0100
    1fd8:	0105                	.insn	2, 0x0105
    1fda:	0809                	.insn	2, 0x0809
    1fdc:	0100                	.insn	2, 0x0100
    1fde:	0105                	.insn	2, 0x0105
    1fe0:	0c09                	.insn	2, 0x0c09
    1fe2:	0000                	.insn	2, 0x0000
    1fe4:	0402                	.insn	2, 0x0402
    1fe6:	0512067b          	.insn	4, 0x0512067b
    1fea:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fee:	0501                	.insn	2, 0x0501
    1ff0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1ff4:	0300                	.insn	2, 0x0300
    1ff6:	8f04                	.insn	2, 0x8f04
    1ff8:	0101                	.insn	2, 0x0101
    1ffa:	0305                	.insn	2, 0x0305
    1ffc:	0009                	.insn	2, 0x0009
    1ffe:	0100                	.insn	2, 0x0100
    2000:	0305                	.insn	2, 0x0305
    2002:	0009                	.insn	2, 0x0009
    2004:	0100                	.insn	2, 0x0100
    2006:	0305                	.insn	2, 0x0305
    2008:	0009                	.insn	2, 0x0009
    200a:	0000                	.insn	2, 0x0000
    200c:	01960403          	lb	s0,25(a2) # 5011485 <__BSS_END__+0x4ffc495>
    2010:	0501                	.insn	2, 0x0501
    2012:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2016:	0501                	.insn	2, 0x0501
    2018:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    201c:	0200                	.insn	2, 0x0200
    201e:	0004                	.insn	2, 0x0004
    2020:	0501                	.insn	2, 0x0501
    2022:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2026:	0300                	.insn	2, 0x0300
    2028:	9604                	.insn	2, 0x9604
    202a:	0601                	.insn	2, 0x0601
    202c:	0501                	.insn	2, 0x0501
    202e:	00040903          	lb	s2,0(s0)
    2032:	0501                	.insn	2, 0x0501
    2034:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2038:	0300                	.insn	2, 0x0300
    203a:	d104                	.insn	2, 0xd104
    203c:	0602                	.insn	2, 0x0602
    203e:	0501                	.insn	2, 0x0501
    2040:	00040903          	lb	s2,0(s0)
    2044:	0200                	.insn	2, 0x0200
    2046:	3204                	.insn	2, 0x3204
    2048:	0106                	.insn	2, 0x0106
    204a:	0305                	.insn	2, 0x0305
    204c:	0409                	.insn	2, 0x0409
    204e:	0100                	.insn	2, 0x0100
    2050:	0305                	.insn	2, 0x0305
    2052:	0409                	.insn	2, 0x0409
    2054:	0000                	.insn	2, 0x0000
    2056:	0402                	.insn	2, 0x0402
    2058:	0679                	.insn	2, 0x0679
    205a:	0501                	.insn	2, 0x0501
    205c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2060:	0200                	.insn	2, 0x0200
    2062:	0004                	.insn	2, 0x0004
    2064:	0501                	.insn	2, 0x0501
    2066:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    206a:	0501                	.insn	2, 0x0501
    206c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2070:	0501                	.insn	2, 0x0501
    2072:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2076:	0200                	.insn	2, 0x0200
    2078:	7904                	.insn	2, 0x7904
    207a:	0106                	.insn	2, 0x0106
    207c:	0305                	.insn	2, 0x0305
    207e:	0c09                	.insn	2, 0x0c09
    2080:	0100                	.insn	2, 0x0100
    2082:	0305                	.insn	2, 0x0305
    2084:	0409                	.insn	2, 0x0409
    2086:	0100                	.insn	2, 0x0100
    2088:	0305                	.insn	2, 0x0305
    208a:	0409                	.insn	2, 0x0409
    208c:	0100                	.insn	2, 0x0100
    208e:	0305                	.insn	2, 0x0305
    2090:	0009                	.insn	2, 0x0009
    2092:	0000                	.insn	2, 0x0000
    2094:	0402                	.insn	2, 0x0402
    2096:	061c                	.insn	2, 0x061c
    2098:	0518                	.insn	2, 0x0518
    209a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    209e:	0501                	.insn	2, 0x0501
    20a0:	00080903          	lb	s2,0(a6)
    20a4:	0200                	.insn	2, 0x0200
    20a6:	1d04                	.insn	2, 0x1d04
    20a8:	0501                	.insn	2, 0x0501
    20aa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20ae:	0200                	.insn	2, 0x0200
    20b0:	0004                	.insn	2, 0x0004
    20b2:	0501                	.insn	2, 0x0501
    20b4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20b8:	0501                	.insn	2, 0x0501
    20ba:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20be:	0501                	.insn	2, 0x0501
    20c0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20c4:	0200                	.insn	2, 0x0200
    20c6:	2004                	.insn	2, 0x2004
    20c8:	0106                	.insn	2, 0x0106
    20ca:	0305                	.insn	2, 0x0305
    20cc:	0c09                	.insn	2, 0x0c09
    20ce:	0000                	.insn	2, 0x0000
    20d0:	0402                	.insn	2, 0x0402
    20d2:	0624                	.insn	2, 0x0624
    20d4:	0501                	.insn	2, 0x0501
    20d6:	00040903          	lb	s2,0(s0)
    20da:	0200                	.insn	2, 0x0200
    20dc:	2504                	.insn	2, 0x2504
    20de:	0501                	.insn	2, 0x0501
    20e0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20e4:	0501                	.insn	2, 0x0501
    20e6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20ea:	0200                	.insn	2, 0x0200
    20ec:	2e04                	.insn	2, 0x2e04
    20ee:	0501                	.insn	2, 0x0501
    20f0:	00080903          	lb	s2,0(a6)
    20f4:	0200                	.insn	2, 0x0200
    20f6:	2f04                	.insn	2, 0x2f04
    20f8:	0501                	.insn	2, 0x0501
    20fa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20fe:	0200                	.insn	2, 0x0200
    2100:	0004                	.insn	2, 0x0004
    2102:	0501                	.insn	2, 0x0501
    2104:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2108:	0200                	.insn	2, 0x0200
    210a:	2f04                	.insn	2, 0x2f04
    210c:	0106                	.insn	2, 0x0106
    210e:	0305                	.insn	2, 0x0305
    2110:	0409                	.insn	2, 0x0409
    2112:	0000                	.insn	2, 0x0000
    2114:	0402                	.insn	2, 0x0402
    2116:	0600                	.insn	2, 0x0600
    2118:	0501                	.insn	2, 0x0501
    211a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    211e:	0200                	.insn	2, 0x0200
    2120:	2f04                	.insn	2, 0x2f04
    2122:	0106                	.insn	2, 0x0106
    2124:	0305                	.insn	2, 0x0305
    2126:	0809                	.insn	2, 0x0809
    2128:	0000                	.insn	2, 0x0000
    212a:	0402                	.insn	2, 0x0402
    212c:	0501063f 00000903 	.insn	8, 0x09030501063f
    2134:	0501                	.insn	2, 0x0501
    2136:	000c0903          	lb	s2,0(s8)
    213a:	0106                	.insn	2, 0x0106
    213c:	0305                	.insn	2, 0x0305
    213e:	0809                	.insn	2, 0x0809
    2140:	0000                	.insn	2, 0x0000
    2142:	0402                	.insn	2, 0x0402
    2144:	0600                	.insn	2, 0x0600
    2146:	0501                	.insn	2, 0x0501
    2148:	00040903          	lb	s2,0(s0)
    214c:	0106                	.insn	2, 0x0106
    214e:	0305                	.insn	2, 0x0305
    2150:	0009                	.insn	2, 0x0009
    2152:	0000                	.insn	2, 0x0000
    2154:	0402                	.insn	2, 0x0402
    2156:	060d                	.insn	2, 0x060d
    2158:	0516                	.insn	2, 0x0516
    215a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    215e:	0200                	.insn	2, 0x0200
    2160:	0004                	.insn	2, 0x0004
    2162:	0501                	.insn	2, 0x0501
    2164:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2168:	0200                	.insn	2, 0x0200
    216a:	0d04                	.insn	2, 0x0d04
    216c:	0106                	.insn	2, 0x0106
    216e:	0305                	.insn	2, 0x0305
    2170:	0409                	.insn	2, 0x0409
    2172:	0000                	.insn	2, 0x0000
    2174:	01c30403          	lb	s0,28(t1)
    2178:	0106                	.insn	2, 0x0106
    217a:	0305                	.insn	2, 0x0305
    217c:	0009                	.insn	2, 0x0009
    217e:	0000                	.insn	2, 0x0000
    2180:	0402                	.insn	2, 0x0402
    2182:	0100                	.insn	2, 0x0100
    2184:	0305                	.insn	2, 0x0305
    2186:	0009                	.insn	2, 0x0009
    2188:	0100                	.insn	2, 0x0100
    218a:	0305                	.insn	2, 0x0305
    218c:	0009                	.insn	2, 0x0009
    218e:	0000                	.insn	2, 0x0000
    2190:	01c30403          	lb	s0,28(t1)
    2194:	0106                	.insn	2, 0x0106
    2196:	0305                	.insn	2, 0x0305
    2198:	0409                	.insn	2, 0x0409
    219a:	0000                	.insn	2, 0x0000
    219c:	01c50403          	lb	s0,28(a0)
    21a0:	0106                	.insn	2, 0x0106
    21a2:	0305                	.insn	2, 0x0305
    21a4:	0409                	.insn	2, 0x0409
    21a6:	0000                	.insn	2, 0x0000
    21a8:	01c80403          	lb	s0,28(a6)
    21ac:	0501                	.insn	2, 0x0501
    21ae:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21b2:	0200                	.insn	2, 0x0200
    21b4:	0004                	.insn	2, 0x0004
    21b6:	0501                	.insn	2, 0x0501
    21b8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21bc:	0300                	.insn	2, 0x0300
    21be:	c804                	.insn	2, 0xc804
    21c0:	0601                	.insn	2, 0x0601
    21c2:	0501                	.insn	2, 0x0501
    21c4:	00040903          	lb	s2,0(s0)
    21c8:	0200                	.insn	2, 0x0200
    21ca:	0004                	.insn	2, 0x0004
    21cc:	0106                	.insn	2, 0x0106
    21ce:	0305                	.insn	2, 0x0305
    21d0:	0009                	.insn	2, 0x0009
    21d2:	0000                	.insn	2, 0x0000
    21d4:	01c80403          	lb	s0,28(a6)
    21d8:	0106                	.insn	2, 0x0106
    21da:	0305                	.insn	2, 0x0305
    21dc:	0409                	.insn	2, 0x0409
    21de:	0000                	.insn	2, 0x0000
    21e0:	01d10403          	lb	s0,29(sp)
    21e4:	0106                	.insn	2, 0x0106
    21e6:	0305                	.insn	2, 0x0305
    21e8:	0409                	.insn	2, 0x0409
    21ea:	0000                	.insn	2, 0x0000
    21ec:	0402                	.insn	2, 0x0402
    21ee:	0100                	.insn	2, 0x0100
    21f0:	0305                	.insn	2, 0x0305
    21f2:	0009                	.insn	2, 0x0009
    21f4:	0100                	.insn	2, 0x0100
    21f6:	0305                	.insn	2, 0x0305
    21f8:	0009                	.insn	2, 0x0009
    21fa:	0000                	.insn	2, 0x0000
    21fc:	02ac0403          	lb	s0,42(s8)
    2200:	0106                	.insn	2, 0x0106
    2202:	0305                	.insn	2, 0x0305
    2204:	0809                	.insn	2, 0x0809
    2206:	0000                	.insn	2, 0x0000
    2208:	02e70403          	lb	s0,46(a4)
    220c:	0106                	.insn	2, 0x0106
    220e:	0305                	.insn	2, 0x0305
    2210:	0009                	.insn	2, 0x0009
    2212:	0100                	.insn	2, 0x0100
    2214:	0305                	.insn	2, 0x0305
    2216:	0c09                	.insn	2, 0x0c09
    2218:	0600                	.insn	2, 0x0600
    221a:	0501                	.insn	2, 0x0501
    221c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2220:	0300                	.insn	2, 0x0300
    2222:	d204                	.insn	2, 0xd204
    2224:	0601                	.insn	2, 0x0601
    2226:	0501                	.insn	2, 0x0501
    2228:	00040903          	lb	s2,0(s0)
    222c:	0106                	.insn	2, 0x0106
    222e:	0305                	.insn	2, 0x0305
    2230:	0409                	.insn	2, 0x0409
    2232:	0000                	.insn	2, 0x0000
    2234:	0402                	.insn	2, 0x0402
    2236:	0600                	.insn	2, 0x0600
    2238:	0501                	.insn	2, 0x0501
    223a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    223e:	0300                	.insn	2, 0x0300
    2240:	e904                	.insn	2, 0xe904
    2242:	0601                	.insn	2, 0x0601
    2244:	0501                	.insn	2, 0x0501
    2246:	00040903          	lb	s2,0(s0)
    224a:	0300                	.insn	2, 0x0300
    224c:	f404                	.insn	2, 0xf404
    224e:	0101                	.insn	2, 0x0101
    2250:	0305                	.insn	2, 0x0305
    2252:	0409                	.insn	2, 0x0409
    2254:	0000                	.insn	2, 0x0000
    2256:	01e90403          	lb	s0,30(s2)
    225a:	0501                	.insn	2, 0x0501
    225c:	00040903          	lb	s2,0(s0)
    2260:	0300                	.insn	2, 0x0300
    2262:	ea04                	.insn	2, 0xea04
    2264:	0601                	.insn	2, 0x0601
    2266:	0501                	.insn	2, 0x0501
    2268:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    226c:	0300                	.insn	2, 0x0300
    226e:	f004                	.insn	2, 0xf004
    2270:	0601                	.insn	2, 0x0601
    2272:	0501                	.insn	2, 0x0501
    2274:	00040903          	lb	s2,0(s0)
    2278:	0300                	.insn	2, 0x0300
    227a:	ea04                	.insn	2, 0xea04
    227c:	0101                	.insn	2, 0x0101
    227e:	0305                	.insn	2, 0x0305
    2280:	0409                	.insn	2, 0x0409
    2282:	0000                	.insn	2, 0x0000
    2284:	01f00403          	lb	s0,31(zero) # 1f <exit-0x10101>
    2288:	0501                	.insn	2, 0x0501
    228a:	00040903          	lb	s2,0(s0)
    228e:	0501                	.insn	2, 0x0501
    2290:	00040903          	lb	s2,0(s0)
    2294:	0501                	.insn	2, 0x0501
    2296:	00040903          	lb	s2,0(s0)
    229a:	0300                	.insn	2, 0x0300
    229c:	f204                	.insn	2, 0xf204
    229e:	0101                	.insn	2, 0x0101
    22a0:	0305                	.insn	2, 0x0305
    22a2:	0409                	.insn	2, 0x0409
    22a4:	0000                	.insn	2, 0x0000
    22a6:	01f60403          	lb	s0,31(a2)
    22aa:	0106                	.insn	2, 0x0106
    22ac:	0305                	.insn	2, 0x0305
    22ae:	0409                	.insn	2, 0x0409
    22b0:	0600                	.insn	2, 0x0600
    22b2:	0501                	.insn	2, 0x0501
    22b4:	00040903          	lb	s2,0(s0)
    22b8:	0300                	.insn	2, 0x0300
    22ba:	c604                	.insn	2, 0xc604
    22bc:	0601                	.insn	2, 0x0601
    22be:	0501                	.insn	2, 0x0501
    22c0:	00040903          	lb	s2,0(s0)
    22c4:	0106                	.insn	2, 0x0106
    22c6:	0305                	.insn	2, 0x0305
    22c8:	0409                	.insn	2, 0x0409
    22ca:	0000                	.insn	2, 0x0000
    22cc:	01e00403          	lb	s0,30(zero) # 1e <exit-0x10102>
    22d0:	0106                	.insn	2, 0x0106
    22d2:	0305                	.insn	2, 0x0305
    22d4:	0c09                	.insn	2, 0x0c09
    22d6:	0600                	.insn	2, 0x0600
    22d8:	0501                	.insn	2, 0x0501
    22da:	00040903          	lb	s2,0(s0)
    22de:	0501                	.insn	2, 0x0501
    22e0:	00040903          	lb	s2,0(s0)
    22e4:	0300                	.insn	2, 0x0300
    22e6:	c404                	.insn	2, 0xc404
    22e8:	0601                	.insn	2, 0x0601
    22ea:	0501                	.insn	2, 0x0501
    22ec:	00040903          	lb	s2,0(s0)
    22f0:	0300                	.insn	2, 0x0300
    22f2:	f804                	.insn	2, 0xf804
    22f4:	0101                	.insn	2, 0x0101
    22f6:	0305                	.insn	2, 0x0305
    22f8:	0009                	.insn	2, 0x0009
    22fa:	0000                	.insn	2, 0x0000
    22fc:	0402                	.insn	2, 0x0402
    22fe:	0100                	.insn	2, 0x0100
    2300:	0305                	.insn	2, 0x0305
    2302:	0009                	.insn	2, 0x0009
    2304:	0100                	.insn	2, 0x0100
    2306:	0305                	.insn	2, 0x0305
    2308:	0009                	.insn	2, 0x0009
    230a:	0100                	.insn	2, 0x0100
    230c:	0305                	.insn	2, 0x0305
    230e:	0009                	.insn	2, 0x0009
    2310:	0000                	.insn	2, 0x0000
    2312:	01f80403          	lb	s0,31(a6)
    2316:	0106                	.insn	2, 0x0106
    2318:	0305                	.insn	2, 0x0305
    231a:	0409                	.insn	2, 0x0409
    231c:	0000                	.insn	2, 0x0000
    231e:	01fa0403          	lb	s0,31(s4)
    2322:	0106                	.insn	2, 0x0106
    2324:	0305                	.insn	2, 0x0305
    2326:	0409                	.insn	2, 0x0409
    2328:	0000                	.insn	2, 0x0000
    232a:	01fd0403          	lb	s0,31(s10)
    232e:	0501                	.insn	2, 0x0501
    2330:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2334:	0200                	.insn	2, 0x0200
    2336:	0004                	.insn	2, 0x0004
    2338:	0501                	.insn	2, 0x0501
    233a:	00040903          	lb	s2,0(s0)
    233e:	0501                	.insn	2, 0x0501
    2340:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2344:	0300                	.insn	2, 0x0300
    2346:	fd04                	.insn	2, 0xfd04
    2348:	0601                	.insn	2, 0x0601
    234a:	0501                	.insn	2, 0x0501
    234c:	00040903          	lb	s2,0(s0)
    2350:	0300                	.insn	2, 0x0300
    2352:	8604                	.insn	2, 0x8604
    2354:	0602                	.insn	2, 0x0602
    2356:	0501                	.insn	2, 0x0501
    2358:	00040903          	lb	s2,0(s0)
    235c:	0200                	.insn	2, 0x0200
    235e:	0004                	.insn	2, 0x0004
    2360:	0501                	.insn	2, 0x0501
    2362:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2366:	0300                	.insn	2, 0x0300
    2368:	f804                	.insn	2, 0xf804
    236a:	0601                	.insn	2, 0x0601
    236c:	0501                	.insn	2, 0x0501
    236e:	00040903          	lb	s2,0(s0)
    2372:	0501                	.insn	2, 0x0501
    2374:	00040903          	lb	s2,0(s0)
    2378:	0501                	.insn	2, 0x0501
    237a:	00040903          	lb	s2,0(s0)
    237e:	0300                	.insn	2, 0x0300
    2380:	8704                	.insn	2, 0x8704
    2382:	0602                	.insn	2, 0x0602
    2384:	0501                	.insn	2, 0x0501
    2386:	00080903          	lb	s2,0(a6)
    238a:	0300                	.insn	2, 0x0300
    238c:	f804                	.insn	2, 0xf804
    238e:	0601                	.insn	2, 0x0601
    2390:	0501                	.insn	2, 0x0501
    2392:	00040903          	lb	s2,0(s0)
    2396:	0501                	.insn	2, 0x0501
    2398:	00040903          	lb	s2,0(s0)
    239c:	0300                	.insn	2, 0x0300
    239e:	fb04                	.insn	2, 0xfb04
    23a0:	0601                	.insn	2, 0x0601
    23a2:	0501                	.insn	2, 0x0501
    23a4:	00040903          	lb	s2,0(s0)
    23a8:	0106                	.insn	2, 0x0106
    23aa:	0305                	.insn	2, 0x0305
    23ac:	0409                	.insn	2, 0x0409
    23ae:	0000                	.insn	2, 0x0000
    23b0:	01f80403          	lb	s0,31(a6)
    23b4:	0501                	.insn	2, 0x0501
    23b6:	00040903          	lb	s2,0(s0)
    23ba:	0300                	.insn	2, 0x0300
    23bc:	9504                	.insn	2, 0x9504
    23be:	0602                	.insn	2, 0x0602
    23c0:	0501                	.insn	2, 0x0501
    23c2:	000c0903          	lb	s2,0(s8)
    23c6:	0200                	.insn	2, 0x0200
    23c8:	0004                	.insn	2, 0x0004
    23ca:	0501                	.insn	2, 0x0501
    23cc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    23d0:	0300                	.insn	2, 0x0300
    23d2:	9e04                	.insn	2, 0x9e04
    23d4:	0602                	.insn	2, 0x0602
    23d6:	0501                	.insn	2, 0x0501
    23d8:	00040903          	lb	s2,0(s0)
    23dc:	0300                	.insn	2, 0x0300
    23de:	a904                	.insn	2, 0xa904
    23e0:	0102                	.insn	2, 0x0102
    23e2:	0305                	.insn	2, 0x0305
    23e4:	0409                	.insn	2, 0x0409
    23e6:	0000                	.insn	2, 0x0000
    23e8:	029e0403          	lb	s0,41(t3)
    23ec:	0501                	.insn	2, 0x0501
    23ee:	00040903          	lb	s2,0(s0)
    23f2:	0300                	.insn	2, 0x0300
    23f4:	9f04                	.insn	2, 0x9f04
    23f6:	0602                	.insn	2, 0x0602
    23f8:	0501                	.insn	2, 0x0501
    23fa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    23fe:	0300                	.insn	2, 0x0300
    2400:	a504                	.insn	2, 0xa504
    2402:	0602                	.insn	2, 0x0602
    2404:	0501                	.insn	2, 0x0501
    2406:	00040903          	lb	s2,0(s0)
    240a:	0300                	.insn	2, 0x0300
    240c:	9f04                	.insn	2, 0x9f04
    240e:	0102                	.insn	2, 0x0102
    2410:	0305                	.insn	2, 0x0305
    2412:	0409                	.insn	2, 0x0409
    2414:	0000                	.insn	2, 0x0000
    2416:	02a50403          	lb	s0,42(a0)
    241a:	0501                	.insn	2, 0x0501
    241c:	00040903          	lb	s2,0(s0)
    2420:	0501                	.insn	2, 0x0501
    2422:	00040903          	lb	s2,0(s0)
    2426:	0501                	.insn	2, 0x0501
    2428:	00040903          	lb	s2,0(s0)
    242c:	0300                	.insn	2, 0x0300
    242e:	a704                	.insn	2, 0xa704
    2430:	0102                	.insn	2, 0x0102
    2432:	0305                	.insn	2, 0x0305
    2434:	0409                	.insn	2, 0x0409
    2436:	0000                	.insn	2, 0x0000
    2438:	02ab0403          	lb	s0,42(s6)
    243c:	0106                	.insn	2, 0x0106
    243e:	0305                	.insn	2, 0x0305
    2440:	0809                	.insn	2, 0x0809
    2442:	0000                	.insn	2, 0x0000
    2444:	01f90403          	lb	s0,31(s2)
    2448:	0501                	.insn	2, 0x0501
    244a:	000c0903          	lb	s2,0(s8)
    244e:	0300                	.insn	2, 0x0300
    2450:	ad04                	.insn	2, 0xad04
    2452:	0102                	.insn	2, 0x0102
    2454:	0305                	.insn	2, 0x0305
    2456:	0409                	.insn	2, 0x0409
    2458:	0000                	.insn	2, 0x0000
    245a:	02af0403          	lb	s0,42(t5)
    245e:	0501                	.insn	2, 0x0501
    2460:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2464:	0200                	.insn	2, 0x0200
    2466:	0004                	.insn	2, 0x0004
    2468:	0501                	.insn	2, 0x0501
    246a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    246e:	0300                	.insn	2, 0x0300
    2470:	af04                	.insn	2, 0xaf04
    2472:	0602                	.insn	2, 0x0602
    2474:	0501                	.insn	2, 0x0501
    2476:	00040903          	lb	s2,0(s0)
    247a:	0300                	.insn	2, 0x0300
    247c:	b104                	.insn	2, 0xb104
    247e:	0602                	.insn	2, 0x0602
    2480:	0501                	.insn	2, 0x0501
    2482:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2486:	0200                	.insn	2, 0x0200
    2488:	0004                	.insn	2, 0x0004
    248a:	0501                	.insn	2, 0x0501
    248c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2490:	0300                	.insn	2, 0x0300
    2492:	b304                	.insn	2, 0xb304
    2494:	0602                	.insn	2, 0x0602
    2496:	0501                	.insn	2, 0x0501
    2498:	00040903          	lb	s2,0(s0)
    249c:	0300                	.insn	2, 0x0300
    249e:	b104                	.insn	2, 0xb104
    24a0:	0102                	.insn	2, 0x0102
    24a2:	0305                	.insn	2, 0x0305
    24a4:	0409                	.insn	2, 0x0409
    24a6:	0000                	.insn	2, 0x0000
    24a8:	01f80403          	lb	s0,31(a6)
    24ac:	0501                	.insn	2, 0x0501
    24ae:	00080903          	lb	s2,0(a6)
    24b2:	0300                	.insn	2, 0x0300
    24b4:	b204                	.insn	2, 0xb204
    24b6:	0602                	.insn	2, 0x0602
    24b8:	0501                	.insn	2, 0x0501
    24ba:	00040903          	lb	s2,0(s0)
    24be:	0300                	.insn	2, 0x0300
    24c0:	b904                	.insn	2, 0xb904
    24c2:	0102                	.insn	2, 0x0102
    24c4:	0305                	.insn	2, 0x0305
    24c6:	0009                	.insn	2, 0x0009
    24c8:	0000                	.insn	2, 0x0000
    24ca:	0402                	.insn	2, 0x0402
    24cc:	0100                	.insn	2, 0x0100
    24ce:	0305                	.insn	2, 0x0305
    24d0:	0009                	.insn	2, 0x0009
    24d2:	0000                	.insn	2, 0x0000
    24d4:	02b90403          	lb	s0,43(s2)
    24d8:	0106                	.insn	2, 0x0106
    24da:	0305                	.insn	2, 0x0305
    24dc:	0409                	.insn	2, 0x0409
    24de:	0000                	.insn	2, 0x0000
    24e0:	0402                	.insn	2, 0x0402
    24e2:	0600                	.insn	2, 0x0600
    24e4:	0501                	.insn	2, 0x0501
    24e6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    24ea:	0501                	.insn	2, 0x0501
    24ec:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    24f0:	0300                	.insn	2, 0x0300
    24f2:	b904                	.insn	2, 0xb904
    24f4:	0602                	.insn	2, 0x0602
    24f6:	0501                	.insn	2, 0x0501
    24f8:	00040903          	lb	s2,0(s0)
    24fc:	0501                	.insn	2, 0x0501
    24fe:	00040903          	lb	s2,0(s0)
    2502:	0300                	.insn	2, 0x0300
    2504:	bb04                	.insn	2, 0xbb04
    2506:	0602                	.insn	2, 0x0602
    2508:	0501                	.insn	2, 0x0501
    250a:	00040903          	lb	s2,0(s0)
    250e:	0200                	.insn	2, 0x0200
    2510:	0004                	.insn	2, 0x0004
    2512:	0501                	.insn	2, 0x0501
    2514:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2518:	0300                	.insn	2, 0x0300
    251a:	bb04                	.insn	2, 0xbb04
    251c:	0602                	.insn	2, 0x0602
    251e:	0501                	.insn	2, 0x0501
    2520:	00040903          	lb	s2,0(s0)
    2524:	0501                	.insn	2, 0x0501
    2526:	00040903          	lb	s2,0(s0)
    252a:	0200                	.insn	2, 0x0200
    252c:	0104                	.insn	2, 0x0104
    252e:	0518                	.insn	2, 0x0518
    2530:	00080903          	lb	s2,0(a6)
    2534:	0501                	.insn	2, 0x0501
    2536:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    253a:	0300                	.insn	2, 0x0300
    253c:	bc04                	.insn	2, 0xbc04
    253e:	0602                	.insn	2, 0x0602
    2540:	0516                	.insn	2, 0x0516
    2542:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2546:	0300                	.insn	2, 0x0300
    2548:	b904                	.insn	2, 0xb904
    254a:	0602                	.insn	2, 0x0602
    254c:	0501                	.insn	2, 0x0501
    254e:	00040903          	lb	s2,0(s0)
    2552:	0300                	.insn	2, 0x0300
    2554:	bc04                	.insn	2, 0xbc04
    2556:	0102                	.insn	2, 0x0102
    2558:	0305                	.insn	2, 0x0305
    255a:	0409                	.insn	2, 0x0409
    255c:	0100                	.insn	2, 0x0100
    255e:	0305                	.insn	2, 0x0305
    2560:	0009                	.insn	2, 0x0009
    2562:	0000                	.insn	2, 0x0000
    2564:	0402                	.insn	2, 0x0402
    2566:	0305183f 00000409 	.insn	8, 0x04090305183f
    256e:	0402                	.insn	2, 0x0402
    2570:	0144                	.insn	2, 0x0144
    2572:	0305                	.insn	2, 0x0305
    2574:	0809                	.insn	2, 0x0809
    2576:	0100                	.insn	2, 0x0100
    2578:	0305                	.insn	2, 0x0305
    257a:	0009                	.insn	2, 0x0009
    257c:	0000                	.insn	2, 0x0000
    257e:	02b00403          	lb	s0,43(zero) # 2b <exit-0x100f5>
    2582:	1606                	.insn	2, 0x1606
    2584:	0305                	.insn	2, 0x0305
    2586:	0009                	.insn	2, 0x0009
    2588:	0100                	.insn	2, 0x0100
    258a:	0305                	.insn	2, 0x0305
    258c:	0009                	.insn	2, 0x0009
    258e:	0000                	.insn	2, 0x0000
    2590:	02c80403          	lb	s0,44(a6)
    2594:	0501                	.insn	2, 0x0501
    2596:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    259a:	0501                	.insn	2, 0x0501
    259c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    25a0:	0501                	.insn	2, 0x0501
    25a2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    25a6:	0300                	.insn	2, 0x0300
    25a8:	cf04                	.insn	2, 0xcf04
    25aa:	0102                	.insn	2, 0x0102
    25ac:	0305                	.insn	2, 0x0305
    25ae:	0009                	.insn	2, 0x0009
    25b0:	0100                	.insn	2, 0x0100
    25b2:	0305                	.insn	2, 0x0305
    25b4:	0009                	.insn	2, 0x0009
    25b6:	0000                	.insn	2, 0x0000
    25b8:	0402                	.insn	2, 0x0402
    25ba:	0100                	.insn	2, 0x0100
    25bc:	0305                	.insn	2, 0x0305
    25be:	0009                	.insn	2, 0x0009
    25c0:	0000                	.insn	2, 0x0000
    25c2:	02cf0403          	lb	s0,44(t5)
    25c6:	0106                	.insn	2, 0x0106
    25c8:	0305                	.insn	2, 0x0305
    25ca:	0409                	.insn	2, 0x0409
    25cc:	0100                	.insn	2, 0x0100
    25ce:	0305                	.insn	2, 0x0305
    25d0:	0009                	.insn	2, 0x0009
    25d2:	0000                	.insn	2, 0x0000
    25d4:	0402                	.insn	2, 0x0402
    25d6:	1844                	.insn	2, 0x1844
    25d8:	0305                	.insn	2, 0x0305
    25da:	0409                	.insn	2, 0x0409
    25dc:	0100                	.insn	2, 0x0100
    25de:	0305                	.insn	2, 0x0305
    25e0:	0409                	.insn	2, 0x0409
    25e2:	0100                	.insn	2, 0x0100
    25e4:	0305                	.insn	2, 0x0305
    25e6:	0409                	.insn	2, 0x0409
    25e8:	0100                	.insn	2, 0x0100
    25ea:	0305                	.insn	2, 0x0305
    25ec:	0809                	.insn	2, 0x0809
    25ee:	0100                	.insn	2, 0x0100
    25f0:	0305                	.insn	2, 0x0305
    25f2:	0009                	.insn	2, 0x0009
    25f4:	0000                	.insn	2, 0x0000
    25f6:	02ae0403          	lb	s0,42(t3)
    25fa:	1606                	.insn	2, 0x1606
    25fc:	0305                	.insn	2, 0x0305
    25fe:	0009                	.insn	2, 0x0009
    2600:	0000                	.insn	2, 0x0000
    2602:	0402                	.insn	2, 0x0402
    2604:	0100                	.insn	2, 0x0100
    2606:	0305                	.insn	2, 0x0305
    2608:	0009                	.insn	2, 0x0009
    260a:	0000                	.insn	2, 0x0000
    260c:	02ae0403          	lb	s0,42(t3)
    2610:	0106                	.insn	2, 0x0106
    2612:	0305                	.insn	2, 0x0305
    2614:	0409                	.insn	2, 0x0409
    2616:	0000                	.insn	2, 0x0000
    2618:	0402                	.insn	2, 0x0402
    261a:	0600                	.insn	2, 0x0600
    261c:	0501                	.insn	2, 0x0501
    261e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2622:	0501                	.insn	2, 0x0501
    2624:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2628:	0300                	.insn	2, 0x0300
    262a:	ae04                	.insn	2, 0xae04
    262c:	0602                	.insn	2, 0x0602
    262e:	0501                	.insn	2, 0x0501
    2630:	00080903          	lb	s2,0(a6)
    2634:	0300                	.insn	2, 0x0300
    2636:	e004                	.insn	2, 0xe004
    2638:	0602                	.insn	2, 0x0602
    263a:	0501                	.insn	2, 0x0501
    263c:	00040903          	lb	s2,0(s0)
    2640:	0200                	.insn	2, 0x0200
    2642:	0004                	.insn	2, 0x0004
    2644:	0501                	.insn	2, 0x0501
    2646:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    264a:	0300                	.insn	2, 0x0300
    264c:	e004                	.insn	2, 0xe004
    264e:	0602                	.insn	2, 0x0602
    2650:	0501                	.insn	2, 0x0501
    2652:	00040903          	lb	s2,0(s0)
    2656:	0200                	.insn	2, 0x0200
    2658:	0004                	.insn	2, 0x0004
    265a:	0106                	.insn	2, 0x0106
    265c:	0305                	.insn	2, 0x0305
    265e:	0009                	.insn	2, 0x0009
    2660:	0100                	.insn	2, 0x0100
    2662:	0305                	.insn	2, 0x0305
    2664:	0009                	.insn	2, 0x0009
    2666:	0100                	.insn	2, 0x0100
    2668:	0305                	.insn	2, 0x0305
    266a:	0009                	.insn	2, 0x0009
    266c:	0000                	.insn	2, 0x0000
    266e:	02eb0403          	lb	s0,46(s6)
    2672:	0501                	.insn	2, 0x0501
    2674:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2678:	0300                	.insn	2, 0x0300
    267a:	ee04                	.insn	2, 0xee04
    267c:	0102                	.insn	2, 0x0102
    267e:	0305                	.insn	2, 0x0305
    2680:	0809                	.insn	2, 0x0809
    2682:	0000                	.insn	2, 0x0000
    2684:	02f30403          	lb	s0,47(t1)
    2688:	0501                	.insn	2, 0x0501
    268a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    268e:	0501                	.insn	2, 0x0501
    2690:	00040903          	lb	s2,0(s0)
    2694:	0200                	.insn	2, 0x0200
    2696:	0004                	.insn	2, 0x0004
    2698:	0501                	.insn	2, 0x0501
    269a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    269e:	0501                	.insn	2, 0x0501
    26a0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    26a4:	0300                	.insn	2, 0x0300
    26a6:	f804                	.insn	2, 0xf804
    26a8:	0102                	.insn	2, 0x0102
    26aa:	0305                	.insn	2, 0x0305
    26ac:	0409                	.insn	2, 0x0409
    26ae:	0000                	.insn	2, 0x0000
    26b0:	02fa0403          	lb	s0,47(s4)
    26b4:	0501                	.insn	2, 0x0501
    26b6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    26ba:	0501                	.insn	2, 0x0501
    26bc:	00040903          	lb	s2,0(s0)
    26c0:	0300                	.insn	2, 0x0300
    26c2:	fb04                	.insn	2, 0xfb04
    26c4:	0102                	.insn	2, 0x0102
    26c6:	0305                	.insn	2, 0x0305
    26c8:	0409                	.insn	2, 0x0409
    26ca:	0600                	.insn	2, 0x0600
    26cc:	0501                	.insn	2, 0x0501
    26ce:	00040903          	lb	s2,0(s0)
    26d2:	0200                	.insn	2, 0x0200
    26d4:	0004                	.insn	2, 0x0004
    26d6:	0106                	.insn	2, 0x0106
    26d8:	0305                	.insn	2, 0x0305
    26da:	0009                	.insn	2, 0x0009
    26dc:	0000                	.insn	2, 0x0000
    26de:	03810403          	lb	s0,56(sp)
    26e2:	0106                	.insn	2, 0x0106
    26e4:	0305                	.insn	2, 0x0305
    26e6:	0809                	.insn	2, 0x0809
    26e8:	0000                	.insn	2, 0x0000
    26ea:	02fb0403          	lb	s0,47(s6)
    26ee:	0501                	.insn	2, 0x0501
    26f0:	00040903          	lb	s2,0(s0)
    26f4:	0300                	.insn	2, 0x0300
    26f6:	8104                	.insn	2, 0x8104
    26f8:	03050103          	lb	sp,48(a0)
    26fc:	0409                	.insn	2, 0x0409
    26fe:	0100                	.insn	2, 0x0100
    2700:	0305                	.insn	2, 0x0305
    2702:	0409                	.insn	2, 0x0409
    2704:	0000                	.insn	2, 0x0000
    2706:	03830403          	lb	s0,56(t1)
    270a:	0501                	.insn	2, 0x0501
    270c:	00040903          	lb	s2,0(s0)
    2710:	0200                	.insn	2, 0x0200
    2712:	0004                	.insn	2, 0x0004
    2714:	0106                	.insn	2, 0x0106
    2716:	0305                	.insn	2, 0x0305
    2718:	0009                	.insn	2, 0x0009
    271a:	0600                	.insn	2, 0x0600
    271c:	0501                	.insn	2, 0x0501
    271e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2722:	0106                	.insn	2, 0x0106
    2724:	0305                	.insn	2, 0x0305
    2726:	0009                	.insn	2, 0x0009
    2728:	0100                	.insn	2, 0x0100
    272a:	0305                	.insn	2, 0x0305
    272c:	0009                	.insn	2, 0x0009
    272e:	0100                	.insn	2, 0x0100
    2730:	0305                	.insn	2, 0x0305
    2732:	0009                	.insn	2, 0x0009
    2734:	1800                	.insn	2, 0x1800
    2736:	0305                	.insn	2, 0x0305
    2738:	0009                	.insn	2, 0x0009
    273a:	0100                	.insn	2, 0x0100
    273c:	0305                	.insn	2, 0x0305
    273e:	0009                	.insn	2, 0x0009
    2740:	0100                	.insn	2, 0x0100
    2742:	0305                	.insn	2, 0x0305
    2744:	0409                	.insn	2, 0x0409
    2746:	0600                	.insn	2, 0x0600
    2748:	0501                	.insn	2, 0x0501
    274a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    274e:	0300                	.insn	2, 0x0300
    2750:	e104                	.insn	2, 0xe104
    2752:	0602                	.insn	2, 0x0602
    2754:	0516                	.insn	2, 0x0516
    2756:	00040903          	lb	s2,0(s0)
    275a:	0200                	.insn	2, 0x0200
    275c:	3f04                	.insn	2, 0x3f04
    275e:	1806                	.insn	2, 0x1806
    2760:	0305                	.insn	2, 0x0305
    2762:	0409                	.insn	2, 0x0409
    2764:	0100                	.insn	2, 0x0100
    2766:	0305                	.insn	2, 0x0305
    2768:	0409                	.insn	2, 0x0409
    276a:	0100                	.insn	2, 0x0100
    276c:	0305                	.insn	2, 0x0305
    276e:	0409                	.insn	2, 0x0409
    2770:	0000                	.insn	2, 0x0000
    2772:	02fc0403          	lb	s0,47(s8)
    2776:	1606                	.insn	2, 0x1606
    2778:	0305                	.insn	2, 0x0305
    277a:	1009                	.insn	2, 0x1009
    277c:	0000                	.insn	2, 0x0000
    277e:	0402                	.insn	2, 0x0402
    2780:	0100                	.insn	2, 0x0100
    2782:	0305                	.insn	2, 0x0305
    2784:	0009                	.insn	2, 0x0009
    2786:	0000                	.insn	2, 0x0000
    2788:	02fc0403          	lb	s0,47(s8)
    278c:	0106                	.insn	2, 0x0106
    278e:	0305                	.insn	2, 0x0305
    2790:	0409                	.insn	2, 0x0409
    2792:	0100                	.insn	2, 0x0100
    2794:	0305                	.insn	2, 0x0305
    2796:	0409                	.insn	2, 0x0409
    2798:	0100                	.insn	2, 0x0100
    279a:	0305                	.insn	2, 0x0305
    279c:	0009                	.insn	2, 0x0009
    279e:	0000                	.insn	2, 0x0000
    27a0:	01800403          	lb	s0,24(zero) # 18 <exit-0x10108>
    27a4:	0501                	.insn	2, 0x0501
    27a6:	00040903          	lb	s2,0(s0)
    27aa:	0501                	.insn	2, 0x0501
    27ac:	00040903          	lb	s2,0(s0)
    27b0:	0200                	.insn	2, 0x0200
    27b2:	4304                	.insn	2, 0x4304
    27b4:	0501                	.insn	2, 0x0501
    27b6:	00040903          	lb	s2,0(s0)
    27ba:	0501                	.insn	2, 0x0501
    27bc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    27c0:	0200                	.insn	2, 0x0200
    27c2:	3f04                	.insn	2, 0x3f04
    27c4:	1806                	.insn	2, 0x1806
    27c6:	0305                	.insn	2, 0x0305
    27c8:	0009                	.insn	2, 0x0009
    27ca:	0100                	.insn	2, 0x0100
    27cc:	0305                	.insn	2, 0x0305
    27ce:	0409                	.insn	2, 0x0409
    27d0:	0000                	.insn	2, 0x0000
    27d2:	0402                	.insn	2, 0x0402
    27d4:	0100                	.insn	2, 0x0100
    27d6:	0305                	.insn	2, 0x0305
    27d8:	0009                	.insn	2, 0x0009
    27da:	0000                	.insn	2, 0x0000
    27dc:	0402                	.insn	2, 0x0402
    27de:	0501063f 00080903 	.insn	8, 0x000809030501063f
    27e6:	0200                	.insn	2, 0x0200
    27e8:	4004                	.insn	2, 0x4004
    27ea:	0501                	.insn	2, 0x0501
    27ec:	00040903          	lb	s2,0(s0)
    27f0:	0200                	.insn	2, 0x0200
    27f2:	4404                	.insn	2, 0x4404
    27f4:	0501                	.insn	2, 0x0501
    27f6:	000c0903          	lb	s2,0(s8)
    27fa:	0501                	.insn	2, 0x0501
    27fc:	00040903          	lb	s2,0(s0)
    2800:	0501                	.insn	2, 0x0501
    2802:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2806:	0200                	.insn	2, 0x0200
    2808:	3f04                	.insn	2, 0x3f04
    280a:	0501                	.insn	2, 0x0501
    280c:	02090003          	lb	zero,32(s2)
    2810:	1084                	.insn	2, 0x1084
    2812:	0001                	.insn	2, 0x0001
    2814:	0000                	.insn	2, 0x0000
    2816:	0000                	.insn	2, 0x0000
    2818:	0100                	.insn	2, 0x0100
    281a:	f901                	.insn	2, 0xf901
    281c:	0001                	.insn	2, 0x0001
    281e:	0500                	.insn	2, 0x0500
    2820:	0800                	.insn	2, 0x0800
    2822:	3800                	.insn	2, 0x3800
    2824:	0000                	.insn	2, 0x0000
    2826:	0100                	.insn	2, 0x0100
    2828:	0101                	.insn	2, 0x0101
    282a:	f2f6                	.insn	2, 0xf2f6
    282c:	000d                	.insn	2, 0x000d
    282e:	0101                	.insn	2, 0x0101
    2830:	0101                	.insn	2, 0x0101
    2832:	0000                	.insn	2, 0x0000
    2834:	0100                	.insn	2, 0x0100
    2836:	0000                	.insn	2, 0x0000
    2838:	0101                	.insn	2, 0x0101
    283a:	1f01                	.insn	2, 0x1f01
    283c:	2502                	.insn	2, 0x2502
    283e:	0000                	.insn	2, 0x0000
    2840:	0000                	.insn	2, 0x0000
    2842:	0000                	.insn	2, 0x0000
    2844:	0200                	.insn	2, 0x0200
    2846:	1f01                	.insn	2, 0x1f01
    2848:	0b02                	.insn	2, 0x0b02
    284a:	2c04                	.insn	2, 0x2c04
    284c:	0001                	.insn	2, 0x0001
    284e:	0000                	.insn	2, 0x0000
    2850:	0151                	.insn	2, 0x0151
    2852:	0000                	.insn	2, 0x0000
    2854:	f401                	.insn	2, 0xf401
    2856:	0000                	.insn	2, 0x0000
    2858:	0100                	.insn	2, 0x0100
    285a:	00bd                	.insn	2, 0x00bd
    285c:	0000                	.insn	2, 0x0000
    285e:	0001                	.insn	2, 0x0001
    2860:	0209                	.insn	2, 0x0209
    2862:	1084                	.insn	2, 0x1084
    2864:	0001                	.insn	2, 0x0001
    2866:	0000                	.insn	2, 0x0000
    2868:	0000                	.insn	2, 0x0000
    286a:	0539                	.insn	2, 0x0539
    286c:	0901                	.insn	2, 0x0901
    286e:	0000                	.insn	2, 0x0000
    2870:	0518                	.insn	2, 0x0518
    2872:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2876:	0501                	.insn	2, 0x0501
    2878:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    287c:	0501                	.insn	2, 0x0501
    287e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2882:	0501                	.insn	2, 0x0501
    2884:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2888:	0518                	.insn	2, 0x0518
    288a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    288e:	0519                	.insn	2, 0x0519
    2890:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2894:	0501                	.insn	2, 0x0501
    2896:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    289a:	1306                	.insn	2, 0x1306
    289c:	0105                	.insn	2, 0x0105
    289e:	1009                	.insn	2, 0x1009
    28a0:	1b00                	.insn	2, 0x1b00
    28a2:	0305                	.insn	2, 0x0305
    28a4:	0409                	.insn	2, 0x0409
    28a6:	0000                	.insn	2, 0x0000
    28a8:	0402                	.insn	2, 0x0402
    28aa:	0601                	.insn	2, 0x0601
    28ac:	0501                	.insn	2, 0x0501
    28ae:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28b2:	0200                	.insn	2, 0x0200
    28b4:	0004                	.insn	2, 0x0004
    28b6:	0501                	.insn	2, 0x0501
    28b8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28bc:	0200                	.insn	2, 0x0200
    28be:	0104                	.insn	2, 0x0104
    28c0:	0106                	.insn	2, 0x0106
    28c2:	0305                	.insn	2, 0x0305
    28c4:	0c09                	.insn	2, 0x0c09
    28c6:	0000                	.insn	2, 0x0000
    28c8:	0402                	.insn	2, 0x0402
    28ca:	010a                	.insn	2, 0x010a
    28cc:	0305                	.insn	2, 0x0305
    28ce:	0809                	.insn	2, 0x0809
    28d0:	0000                	.insn	2, 0x0000
    28d2:	0402                	.insn	2, 0x0402
    28d4:	0101                	.insn	2, 0x0101
    28d6:	0305                	.insn	2, 0x0305
    28d8:	0409                	.insn	2, 0x0409
    28da:	0000                	.insn	2, 0x0000
    28dc:	0402                	.insn	2, 0x0402
    28de:	0605                	.insn	2, 0x0605
    28e0:	0501                	.insn	2, 0x0501
    28e2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28e6:	0501                	.insn	2, 0x0501
    28e8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28ec:	0501                	.insn	2, 0x0501
    28ee:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28f2:	0501                	.insn	2, 0x0501
    28f4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28f8:	0501                	.insn	2, 0x0501
    28fa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28fe:	0501                	.insn	2, 0x0501
    2900:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2904:	0200                	.insn	2, 0x0200
    2906:	0704                	.insn	2, 0x0704
    2908:	0501                	.insn	2, 0x0501
    290a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    290e:	0200                	.insn	2, 0x0200
    2910:	0a04                	.insn	2, 0x0a04
    2912:	0501                	.insn	2, 0x0501
    2914:	00040903          	lb	s2,0(s0)
    2918:	0106                	.insn	2, 0x0106
    291a:	0305                	.insn	2, 0x0305
    291c:	0409                	.insn	2, 0x0409
    291e:	0000                	.insn	2, 0x0000
    2920:	0402                	.insn	2, 0x0402
    2922:	0501060f          	.insn	4, 0x0501060f
    2926:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    292a:	0501                	.insn	2, 0x0501
    292c:	00080903          	lb	s2,0(a6)
    2930:	0106                	.insn	2, 0x0106
    2932:	0305                	.insn	2, 0x0305
    2934:	0009                	.insn	2, 0x0009
    2936:	0000                	.insn	2, 0x0000
    2938:	0402                	.insn	2, 0x0402
    293a:	0600                	.insn	2, 0x0600
    293c:	0501                	.insn	2, 0x0501
    293e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2942:	0200                	.insn	2, 0x0200
    2944:	1104                	.insn	2, 0x1104
    2946:	0501                	.insn	2, 0x0501
    2948:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    294c:	0200                	.insn	2, 0x0200
    294e:	1704                	.insn	2, 0x1704
    2950:	0501                	.insn	2, 0x0501
    2952:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2956:	0200                	.insn	2, 0x0200
    2958:	0004                	.insn	2, 0x0004
    295a:	0501                	.insn	2, 0x0501
    295c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2960:	0200                	.insn	2, 0x0200
    2962:	1904                	.insn	2, 0x1904
    2964:	0501                	.insn	2, 0x0501
    2966:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    296a:	0501                	.insn	2, 0x0501
    296c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2970:	0200                	.insn	2, 0x0200
    2972:	1e04                	.insn	2, 0x1e04
    2974:	0501                	.insn	2, 0x0501
    2976:	00040903          	lb	s2,0(s0)
    297a:	0106                	.insn	2, 0x0106
    297c:	0305                	.insn	2, 0x0305
    297e:	0409                	.insn	2, 0x0409
    2980:	0100                	.insn	2, 0x0100
    2982:	0305                	.insn	2, 0x0305
    2984:	0009                	.insn	2, 0x0009
    2986:	0000                	.insn	2, 0x0000
    2988:	0402                	.insn	2, 0x0402
    298a:	0600                	.insn	2, 0x0600
    298c:	0501                	.insn	2, 0x0501
    298e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2992:	0518                	.insn	2, 0x0518
    2994:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2998:	0501                	.insn	2, 0x0501
    299a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    299e:	0501                	.insn	2, 0x0501
    29a0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29a4:	0501                	.insn	2, 0x0501
    29a6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29aa:	0501                	.insn	2, 0x0501
    29ac:	00040903          	lb	s2,0(s0)
    29b0:	0106                	.insn	2, 0x0106
    29b2:	0305                	.insn	2, 0x0305
    29b4:	0809                	.insn	2, 0x0809
    29b6:	0100                	.insn	2, 0x0100
    29b8:	0305                	.insn	2, 0x0305
    29ba:	0009                	.insn	2, 0x0009
    29bc:	1a00                	.insn	2, 0x1a00
    29be:	0105                	.insn	2, 0x0105
    29c0:	0409                	.insn	2, 0x0409
    29c2:	1400                	.insn	2, 0x1400
    29c4:	0305                	.insn	2, 0x0305
    29c6:	0409                	.insn	2, 0x0409
    29c8:	1a00                	.insn	2, 0x1a00
    29ca:	0105                	.insn	2, 0x0105
    29cc:	0409                	.insn	2, 0x0409
    29ce:	1400                	.insn	2, 0x1400
    29d0:	0305                	.insn	2, 0x0305
    29d2:	0409                	.insn	2, 0x0409
    29d4:	0600                	.insn	2, 0x0600
    29d6:	0501                	.insn	2, 0x0501
    29d8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29dc:	0106                	.insn	2, 0x0106
    29de:	0305                	.insn	2, 0x0305
    29e0:	0009                	.insn	2, 0x0009
    29e2:	0600                	.insn	2, 0x0600
    29e4:	0501                	.insn	2, 0x0501
    29e6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29ea:	0519                	.insn	2, 0x0519
    29ec:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29f0:	1806                	.insn	2, 0x1806
    29f2:	0105                	.insn	2, 0x0105
    29f4:	0409                	.insn	2, 0x0409
    29f6:	0100                	.insn	2, 0x0100
    29f8:	0105                	.insn	2, 0x0105
    29fa:	0c09                	.insn	2, 0x0c09
    29fc:	0100                	.insn	2, 0x0100
    29fe:	0105                	.insn	2, 0x0105
    2a00:	0409                	.insn	2, 0x0409
    2a02:	0000                	.insn	2, 0x0000
    2a04:	0402                	.insn	2, 0x0402
    2a06:	1302                	.insn	2, 0x1302
    2a08:	0305                	.insn	2, 0x0305
    2a0a:	0900                	.insn	2, 0x0900
    2a0c:	0402                	.insn	2, 0x0402
    2a0e:	0111                	.insn	2, 0x0111
    2a10:	0000                	.insn	2, 0x0000
    2a12:	0000                	.insn	2, 0x0000
    2a14:	0000                	.insn	2, 0x0000
    2a16:	0101                	.insn	2, 0x0101
    2a18:	00000357          	.insn	4, 0x0357
    2a1c:	0005                	.insn	2, 0x0005
    2a1e:	0008                	.insn	2, 0x0008
    2a20:	0038                	.insn	2, 0x0038
    2a22:	0000                	.insn	2, 0x0000
    2a24:	0101                	.insn	2, 0x0101
    2a26:	f601                	.insn	2, 0xf601
    2a28:	0df2                	.insn	2, 0x0df2
    2a2a:	0100                	.insn	2, 0x0100
    2a2c:	0101                	.insn	2, 0x0101
    2a2e:	0001                	.insn	2, 0x0001
    2a30:	0000                	.insn	2, 0x0000
    2a32:	0001                	.insn	2, 0x0001
    2a34:	0100                	.insn	2, 0x0100
    2a36:	0101                	.insn	2, 0x0101
    2a38:	021f 0025 0000      	.insn	6, 0x0025021f
    2a3e:	0000                	.insn	2, 0x0000
    2a40:	0000                	.insn	2, 0x0000
    2a42:	0102                	.insn	2, 0x0102
    2a44:	021f 040b 0166      	.insn	6, 0x0166040b021f
    2a4a:	0000                	.insn	2, 0x0000
    2a4c:	8b00                	.insn	2, 0x8b00
    2a4e:	0001                	.insn	2, 0x0001
    2a50:	0100                	.insn	2, 0x0100
    2a52:	015d                	.insn	2, 0x015d
    2a54:	0000                	.insn	2, 0x0000
    2a56:	bd01                	.insn	2, 0xbd01
    2a58:	0000                	.insn	2, 0x0000
    2a5a:	0100                	.insn	2, 0x0100
    2a5c:	0900                	.insn	2, 0x0900
    2a5e:	0402                	.insn	2, 0x0402
    2a60:	0111                	.insn	2, 0x0111
    2a62:	0000                	.insn	2, 0x0000
    2a64:	0000                	.insn	2, 0x0000
    2a66:	3a00                	.insn	2, 0x3a00
    2a68:	0105                	.insn	2, 0x0105
    2a6a:	0009                	.insn	2, 0x0009
    2a6c:	1800                	.insn	2, 0x1800
    2a6e:	0305                	.insn	2, 0x0305
    2a70:	0009                	.insn	2, 0x0009
    2a72:	0100                	.insn	2, 0x0100
    2a74:	0305                	.insn	2, 0x0305
    2a76:	0009                	.insn	2, 0x0009
    2a78:	0100                	.insn	2, 0x0100
    2a7a:	0d05                	.insn	2, 0x0d05
    2a7c:	0009                	.insn	2, 0x0009
    2a7e:	1800                	.insn	2, 0x1800
    2a80:	0305                	.insn	2, 0x0305
    2a82:	0009                	.insn	2, 0x0009
    2a84:	0100                	.insn	2, 0x0100
    2a86:	0305                	.insn	2, 0x0305
    2a88:	0009                	.insn	2, 0x0009
    2a8a:	0100                	.insn	2, 0x0100
    2a8c:	0305                	.insn	2, 0x0305
    2a8e:	0009                	.insn	2, 0x0009
    2a90:	0100                	.insn	2, 0x0100
    2a92:	0305                	.insn	2, 0x0305
    2a94:	0009                	.insn	2, 0x0009
    2a96:	1800                	.insn	2, 0x1800
    2a98:	0305                	.insn	2, 0x0305
    2a9a:	0009                	.insn	2, 0x0009
    2a9c:	0100                	.insn	2, 0x0100
    2a9e:	0305                	.insn	2, 0x0305
    2aa0:	0009                	.insn	2, 0x0009
    2aa2:	0100                	.insn	2, 0x0100
    2aa4:	0305                	.insn	2, 0x0305
    2aa6:	0009                	.insn	2, 0x0009
    2aa8:	0100                	.insn	2, 0x0100
    2aaa:	0305                	.insn	2, 0x0305
    2aac:	0009                	.insn	2, 0x0009
    2aae:	1800                	.insn	2, 0x1800
    2ab0:	0305                	.insn	2, 0x0305
    2ab2:	0009                	.insn	2, 0x0009
    2ab4:	1900                	.insn	2, 0x1900
    2ab6:	0305                	.insn	2, 0x0305
    2ab8:	0009                	.insn	2, 0x0009
    2aba:	1800                	.insn	2, 0x1800
    2abc:	0305                	.insn	2, 0x0305
    2abe:	0009                	.insn	2, 0x0009
    2ac0:	0100                	.insn	2, 0x0100
    2ac2:	0305                	.insn	2, 0x0305
    2ac4:	0009                	.insn	2, 0x0009
    2ac6:	0100                	.insn	2, 0x0100
    2ac8:	0305                	.insn	2, 0x0305
    2aca:	0009                	.insn	2, 0x0009
    2acc:	0100                	.insn	2, 0x0100
    2ace:	0305                	.insn	2, 0x0305
    2ad0:	0809                	.insn	2, 0x0809
    2ad2:	0600                	.insn	2, 0x0600
    2ad4:	0510                	.insn	2, 0x0510
    2ad6:	0901                	.insn	2, 0x0901
    2ad8:	0004                	.insn	2, 0x0004
    2ada:	0522                	.insn	2, 0x0522
    2adc:	00040903          	lb	s2,0(s0)
    2ae0:	05017503          	.insn	4, 0x05017503
    2ae4:	0901                	.insn	2, 0x0901
    2ae6:	0008                	.insn	2, 0x0008
    2ae8:	051e                	.insn	2, 0x051e
    2aea:	00040903          	lb	s2,0(s0)
    2aee:	0510                	.insn	2, 0x0510
    2af0:	0901                	.insn	2, 0x0901
    2af2:	0004                	.insn	2, 0x0004
    2af4:	0522                	.insn	2, 0x0522
    2af6:	00040903          	lb	s2,0(s0)
    2afa:	09030513          	addi	a0,t1,144
    2afe:	0004                	.insn	2, 0x0004
    2b00:	0106                	.insn	2, 0x0106
    2b02:	0305                	.insn	2, 0x0305
    2b04:	0009                	.insn	2, 0x0009
    2b06:	0100                	.insn	2, 0x0100
    2b08:	0305                	.insn	2, 0x0305
    2b0a:	0409                	.insn	2, 0x0409
    2b0c:	0600                	.insn	2, 0x0600
    2b0e:	0501                	.insn	2, 0x0501
    2b10:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2b14:	0106                	.insn	2, 0x0106
    2b16:	0305                	.insn	2, 0x0305
    2b18:	0009                	.insn	2, 0x0009
    2b1a:	1b00                	.insn	2, 0x1b00
    2b1c:	0305                	.insn	2, 0x0305
    2b1e:	0009                	.insn	2, 0x0009
    2b20:	0100                	.insn	2, 0x0100
    2b22:	0305                	.insn	2, 0x0305
    2b24:	0009                	.insn	2, 0x0009
    2b26:	0100                	.insn	2, 0x0100
    2b28:	0305                	.insn	2, 0x0305
    2b2a:	0009                	.insn	2, 0x0009
    2b2c:	0100                	.insn	2, 0x0100
    2b2e:	0305                	.insn	2, 0x0305
    2b30:	0009                	.insn	2, 0x0009
    2b32:	0100                	.insn	2, 0x0100
    2b34:	0305                	.insn	2, 0x0305
    2b36:	0009                	.insn	2, 0x0009
    2b38:	0100                	.insn	2, 0x0100
    2b3a:	0305                	.insn	2, 0x0305
    2b3c:	0009                	.insn	2, 0x0009
    2b3e:	0100                	.insn	2, 0x0100
    2b40:	0305                	.insn	2, 0x0305
    2b42:	0409                	.insn	2, 0x0409
    2b44:	0000                	.insn	2, 0x0000
    2b46:	0402                	.insn	2, 0x0402
    2b48:	0101                	.insn	2, 0x0101
    2b4a:	0305                	.insn	2, 0x0305
    2b4c:	0409                	.insn	2, 0x0409
    2b4e:	0000                	.insn	2, 0x0000
    2b50:	0402                	.insn	2, 0x0402
    2b52:	0100                	.insn	2, 0x0100
    2b54:	0305                	.insn	2, 0x0305
    2b56:	0009                	.insn	2, 0x0009
    2b58:	0100                	.insn	2, 0x0100
    2b5a:	0305                	.insn	2, 0x0305
    2b5c:	0009                	.insn	2, 0x0009
    2b5e:	0000                	.insn	2, 0x0000
    2b60:	0402                	.insn	2, 0x0402
    2b62:	0104                	.insn	2, 0x0104
    2b64:	0305                	.insn	2, 0x0305
    2b66:	0409                	.insn	2, 0x0409
    2b68:	0000                	.insn	2, 0x0000
    2b6a:	0402                	.insn	2, 0x0402
    2b6c:	0100                	.insn	2, 0x0100
    2b6e:	0305                	.insn	2, 0x0305
    2b70:	0009                	.insn	2, 0x0009
    2b72:	0100                	.insn	2, 0x0100
    2b74:	0305                	.insn	2, 0x0305
    2b76:	0009                	.insn	2, 0x0009
    2b78:	0100                	.insn	2, 0x0100
    2b7a:	0305                	.insn	2, 0x0305
    2b7c:	0009                	.insn	2, 0x0009
    2b7e:	1900                	.insn	2, 0x1900
    2b80:	0305                	.insn	2, 0x0305
    2b82:	0009                	.insn	2, 0x0009
    2b84:	0100                	.insn	2, 0x0100
    2b86:	0305                	.insn	2, 0x0305
    2b88:	0009                	.insn	2, 0x0009
    2b8a:	0100                	.insn	2, 0x0100
    2b8c:	0305                	.insn	2, 0x0305
    2b8e:	0009                	.insn	2, 0x0009
    2b90:	0100                	.insn	2, 0x0100
    2b92:	0305                	.insn	2, 0x0305
    2b94:	0009                	.insn	2, 0x0009
    2b96:	0100                	.insn	2, 0x0100
    2b98:	0305                	.insn	2, 0x0305
    2b9a:	0409                	.insn	2, 0x0409
    2b9c:	0600                	.insn	2, 0x0600
    2b9e:	0501                	.insn	2, 0x0501
    2ba0:	00080903          	lb	s2,0(a6)
    2ba4:	0501                	.insn	2, 0x0501
    2ba6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2baa:	0901051b          	addiw	a0,sp,144
    2bae:	0004                	.insn	2, 0x0004
    2bb0:	09030513          	addi	a0,t1,144
    2bb4:	0004                	.insn	2, 0x0004
    2bb6:	0901051b          	addiw	a0,sp,144
    2bba:	0004                	.insn	2, 0x0004
    2bbc:	09030513          	addi	a0,t1,144
    2bc0:	0004                	.insn	2, 0x0004
    2bc2:	0106                	.insn	2, 0x0106
    2bc4:	0305                	.insn	2, 0x0305
    2bc6:	0009                	.insn	2, 0x0009
    2bc8:	0600                	.insn	2, 0x0600
    2bca:	0501                	.insn	2, 0x0501
    2bcc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2bd0:	0106                	.insn	2, 0x0106
    2bd2:	0305                	.insn	2, 0x0305
    2bd4:	0009                	.insn	2, 0x0009
    2bd6:	1800                	.insn	2, 0x1800
    2bd8:	0305                	.insn	2, 0x0305
    2bda:	0009                	.insn	2, 0x0009
    2bdc:	0100                	.insn	2, 0x0100
    2bde:	0305                	.insn	2, 0x0305
    2be0:	0009                	.insn	2, 0x0009
    2be2:	0100                	.insn	2, 0x0100
    2be4:	0305                	.insn	2, 0x0305
    2be6:	0009                	.insn	2, 0x0009
    2be8:	1900                	.insn	2, 0x1900
    2bea:	0305                	.insn	2, 0x0305
    2bec:	0009                	.insn	2, 0x0009
    2bee:	0600                	.insn	2, 0x0600
    2bf0:	0518                	.insn	2, 0x0518
    2bf2:	0901                	.insn	2, 0x0901
    2bf4:	0004                	.insn	2, 0x0004
    2bf6:	0501                	.insn	2, 0x0501
    2bf8:	0901                	.insn	2, 0x0901
    2bfa:	0004                	.insn	2, 0x0004
    2bfc:	0501                	.insn	2, 0x0501
    2bfe:	0901                	.insn	2, 0x0901
    2c00:	0008                	.insn	2, 0x0008
    2c02:	0200                	.insn	2, 0x0200
    2c04:	0204                	.insn	2, 0x0204
    2c06:	1106                	.insn	2, 0x1106
    2c08:	0305                	.insn	2, 0x0305
    2c0a:	0409                	.insn	2, 0x0409
    2c0c:	0000                	.insn	2, 0x0000
    2c0e:	0402                	.insn	2, 0x0402
    2c10:	0105                	.insn	2, 0x0105
    2c12:	0305                	.insn	2, 0x0305
    2c14:	0009                	.insn	2, 0x0009
    2c16:	0100                	.insn	2, 0x0100
    2c18:	0305                	.insn	2, 0x0305
    2c1a:	0009                	.insn	2, 0x0009
    2c1c:	0000                	.insn	2, 0x0000
    2c1e:	0402                	.insn	2, 0x0402
    2c20:	0109                	.insn	2, 0x0109
    2c22:	0305                	.insn	2, 0x0305
    2c24:	0009                	.insn	2, 0x0009
    2c26:	0100                	.insn	2, 0x0100
    2c28:	0305                	.insn	2, 0x0305
    2c2a:	0409                	.insn	2, 0x0409
    2c2c:	0000                	.insn	2, 0x0000
    2c2e:	0402                	.insn	2, 0x0402
    2c30:	0305010b          	.insn	4, 0x0305010b
    2c34:	0009                	.insn	2, 0x0009
    2c36:	0000                	.insn	2, 0x0000
    2c38:	0402                	.insn	2, 0x0402
    2c3a:	010d                	.insn	2, 0x010d
    2c3c:	0305                	.insn	2, 0x0305
    2c3e:	0009                	.insn	2, 0x0009
    2c40:	0100                	.insn	2, 0x0100
    2c42:	0305                	.insn	2, 0x0305
    2c44:	0009                	.insn	2, 0x0009
    2c46:	0000                	.insn	2, 0x0000
    2c48:	0402                	.insn	2, 0x0402
    2c4a:	0100                	.insn	2, 0x0100
    2c4c:	0305                	.insn	2, 0x0305
    2c4e:	0009                	.insn	2, 0x0009
    2c50:	0100                	.insn	2, 0x0100
    2c52:	0305                	.insn	2, 0x0305
    2c54:	0009                	.insn	2, 0x0009
    2c56:	0100                	.insn	2, 0x0100
    2c58:	0305                	.insn	2, 0x0305
    2c5a:	0009                	.insn	2, 0x0009
    2c5c:	0000                	.insn	2, 0x0000
    2c5e:	0402                	.insn	2, 0x0402
    2c60:	0114                	.insn	2, 0x0114
    2c62:	0305                	.insn	2, 0x0305
    2c64:	0009                	.insn	2, 0x0009
    2c66:	0000                	.insn	2, 0x0000
    2c68:	0402                	.insn	2, 0x0402
    2c6a:	03050117          	auipc	sp,0x3050
    2c6e:	0409                	.insn	2, 0x0409
    2c70:	0600                	.insn	2, 0x0600
    2c72:	0501                	.insn	2, 0x0501
    2c74:	00040903          	lb	s2,0(s0)
    2c78:	0200                	.insn	2, 0x0200
    2c7a:	1c04                	.insn	2, 0x1c04
    2c7c:	0106                	.insn	2, 0x0106
    2c7e:	0305                	.insn	2, 0x0305
    2c80:	0009                	.insn	2, 0x0009
    2c82:	0100                	.insn	2, 0x0100
    2c84:	0305                	.insn	2, 0x0305
    2c86:	0009                	.insn	2, 0x0009
    2c88:	0100                	.insn	2, 0x0100
    2c8a:	0305                	.insn	2, 0x0305
    2c8c:	0009                	.insn	2, 0x0009
    2c8e:	0000                	.insn	2, 0x0000
    2c90:	0402                	.insn	2, 0x0402
    2c92:	0121                	.insn	2, 0x0121
    2c94:	0305                	.insn	2, 0x0305
    2c96:	0009                	.insn	2, 0x0009
    2c98:	0000                	.insn	2, 0x0000
    2c9a:	0402                	.insn	2, 0x0402
    2c9c:	061c                	.insn	2, 0x061c
    2c9e:	0501                	.insn	2, 0x0501
    2ca0:	00040903          	lb	s2,0(s0)
    2ca4:	0200                	.insn	2, 0x0200
    2ca6:	2104                	.insn	2, 0x2104
    2ca8:	0501                	.insn	2, 0x0501
    2caa:	00040903          	lb	s2,0(s0)
    2cae:	0200                	.insn	2, 0x0200
    2cb0:	2304                	.insn	2, 0x2304
    2cb2:	0106                	.insn	2, 0x0106
    2cb4:	0305                	.insn	2, 0x0305
    2cb6:	0009                	.insn	2, 0x0009
    2cb8:	0100                	.insn	2, 0x0100
    2cba:	0305                	.insn	2, 0x0305
    2cbc:	0809                	.insn	2, 0x0809
    2cbe:	0600                	.insn	2, 0x0600
    2cc0:	0501                	.insn	2, 0x0501
    2cc2:	00040903          	lb	s2,0(s0)
    2cc6:	0501                	.insn	2, 0x0501
    2cc8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ccc:	0200                	.insn	2, 0x0200
    2cce:	0604                	.insn	2, 0x0604
    2cd0:	0106                	.insn	2, 0x0106
    2cd2:	0305                	.insn	2, 0x0305
    2cd4:	0009                	.insn	2, 0x0009
    2cd6:	0000                	.insn	2, 0x0000
    2cd8:	0402                	.insn	2, 0x0402
    2cda:	0100                	.insn	2, 0x0100
    2cdc:	0305                	.insn	2, 0x0305
    2cde:	0009                	.insn	2, 0x0009
    2ce0:	0000                	.insn	2, 0x0000
    2ce2:	0402                	.insn	2, 0x0402
    2ce4:	0606                	.insn	2, 0x0606
    2ce6:	0501                	.insn	2, 0x0501
    2ce8:	00040903          	lb	s2,0(s0)
    2cec:	0501                	.insn	2, 0x0501
    2cee:	00040903          	lb	s2,0(s0)
    2cf2:	0200                	.insn	2, 0x0200
    2cf4:	2404                	.insn	2, 0x2404
    2cf6:	0106                	.insn	2, 0x0106
    2cf8:	0305                	.insn	2, 0x0305
    2cfa:	0009                	.insn	2, 0x0009
    2cfc:	0000                	.insn	2, 0x0000
    2cfe:	0402                	.insn	2, 0x0402
    2d00:	0125                	.insn	2, 0x0125
    2d02:	0305                	.insn	2, 0x0305
    2d04:	0009                	.insn	2, 0x0009
    2d06:	0000                	.insn	2, 0x0000
    2d08:	0402                	.insn	2, 0x0402
    2d0a:	03050127          	.insn	4, 0x03050127
    2d0e:	0009                	.insn	2, 0x0009
    2d10:	0100                	.insn	2, 0x0100
    2d12:	0305                	.insn	2, 0x0305
    2d14:	0009                	.insn	2, 0x0009
    2d16:	0000                	.insn	2, 0x0000
    2d18:	0402                	.insn	2, 0x0402
    2d1a:	0129                	.insn	2, 0x0129
    2d1c:	0305                	.insn	2, 0x0305
    2d1e:	0009                	.insn	2, 0x0009
    2d20:	0000                	.insn	2, 0x0000
    2d22:	0402                	.insn	2, 0x0402
    2d24:	062e                	.insn	2, 0x062e
    2d26:	0501                	.insn	2, 0x0501
    2d28:	00040903          	lb	s2,0(s0)
    2d2c:	0200                	.insn	2, 0x0200
    2d2e:	2904                	.insn	2, 0x2904
    2d30:	0501                	.insn	2, 0x0501
    2d32:	00040903          	lb	s2,0(s0)
    2d36:	0200                	.insn	2, 0x0200
    2d38:	2b04                	.insn	2, 0x2b04
    2d3a:	0106                	.insn	2, 0x0106
    2d3c:	0305                	.insn	2, 0x0305
    2d3e:	0009                	.insn	2, 0x0009
    2d40:	0100                	.insn	2, 0x0100
    2d42:	0305                	.insn	2, 0x0305
    2d44:	0009                	.insn	2, 0x0009
    2d46:	0000                	.insn	2, 0x0000
    2d48:	0402                	.insn	2, 0x0402
    2d4a:	012c                	.insn	2, 0x012c
    2d4c:	0305                	.insn	2, 0x0305
    2d4e:	0009                	.insn	2, 0x0009
    2d50:	0100                	.insn	2, 0x0100
    2d52:	0305                	.insn	2, 0x0305
    2d54:	0009                	.insn	2, 0x0009
    2d56:	0000                	.insn	2, 0x0000
    2d58:	0402                	.insn	2, 0x0402
    2d5a:	012e                	.insn	2, 0x012e
    2d5c:	0305                	.insn	2, 0x0305
    2d5e:	0809                	.insn	2, 0x0809
    2d60:	0600                	.insn	2, 0x0600
    2d62:	0501                	.insn	2, 0x0501
    2d64:	02090003          	lb	zero,32(s2)
    2d68:	11a8                	.insn	2, 0x11a8
    2d6a:	0001                	.insn	2, 0x0001
    2d6c:	0000                	.insn	2, 0x0000
    2d6e:	0000                	.insn	2, 0x0000
    2d70:	0100                	.insn	2, 0x0100
    2d72:	8101                	.insn	2, 0x8101
    2d74:	0004                	.insn	2, 0x0004
    2d76:	0500                	.insn	2, 0x0500
    2d78:	0800                	.insn	2, 0x0800
    2d7a:	3800                	.insn	2, 0x3800
    2d7c:	0000                	.insn	2, 0x0000
    2d7e:	0100                	.insn	2, 0x0100
    2d80:	0101                	.insn	2, 0x0101
    2d82:	f2f6                	.insn	2, 0xf2f6
    2d84:	000d                	.insn	2, 0x000d
    2d86:	0101                	.insn	2, 0x0101
    2d88:	0101                	.insn	2, 0x0101
    2d8a:	0000                	.insn	2, 0x0000
    2d8c:	0100                	.insn	2, 0x0100
    2d8e:	0000                	.insn	2, 0x0000
    2d90:	0101                	.insn	2, 0x0101
    2d92:	1f01                	.insn	2, 0x1f01
    2d94:	2502                	.insn	2, 0x2502
    2d96:	0000                	.insn	2, 0x0000
    2d98:	0000                	.insn	2, 0x0000
    2d9a:	0000                	.insn	2, 0x0000
    2d9c:	0200                	.insn	2, 0x0200
    2d9e:	1f01                	.insn	2, 0x1f01
    2da0:	0b02                	.insn	2, 0x0b02
    2da2:	9904                	.insn	2, 0x9904
    2da4:	0001                	.insn	2, 0x0001
    2da6:	0000                	.insn	2, 0x0000
    2da8:	01be                	.insn	2, 0x01be
    2daa:	0000                	.insn	2, 0x0000
    2dac:	5d01                	.insn	2, 0x5d01
    2dae:	0001                	.insn	2, 0x0001
    2db0:	0100                	.insn	2, 0x0100
    2db2:	00bd                	.insn	2, 0x00bd
    2db4:	0000                	.insn	2, 0x0000
    2db6:	0001                	.insn	2, 0x0001
    2db8:	0209                	.insn	2, 0x0209
    2dba:	11a8                	.insn	2, 0x11a8
    2dbc:	0001                	.insn	2, 0x0001
    2dbe:	0000                	.insn	2, 0x0000
    2dc0:	0000                	.insn	2, 0x0000
    2dc2:	0539                	.insn	2, 0x0539
    2dc4:	0901                	.insn	2, 0x0901
    2dc6:	0000                	.insn	2, 0x0000
    2dc8:	0518                	.insn	2, 0x0518
    2dca:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2dce:	0501                	.insn	2, 0x0501
    2dd0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2dd4:	0501                	.insn	2, 0x0501
    2dd6:	090d                	.insn	2, 0x090d
    2dd8:	0000                	.insn	2, 0x0000
    2dda:	0518                	.insn	2, 0x0518
    2ddc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2de0:	0501                	.insn	2, 0x0501
    2de2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2de6:	0501                	.insn	2, 0x0501
    2de8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2dec:	0501                	.insn	2, 0x0501
    2dee:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2df2:	0518                	.insn	2, 0x0518
    2df4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2df8:	0501                	.insn	2, 0x0501
    2dfa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2dfe:	0501                	.insn	2, 0x0501
    2e00:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e04:	0501                	.insn	2, 0x0501
    2e06:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e0a:	0518                	.insn	2, 0x0518
    2e0c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e10:	0519                	.insn	2, 0x0519
    2e12:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e16:	0518                	.insn	2, 0x0518
    2e18:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e1c:	0501                	.insn	2, 0x0501
    2e1e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e22:	0501                	.insn	2, 0x0501
    2e24:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e28:	0501                	.insn	2, 0x0501
    2e2a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e2e:	0501                	.insn	2, 0x0501
    2e30:	00080903          	lb	s2,0(a6)
    2e34:	1b06                	.insn	2, 0x1b06
    2e36:	0305                	.insn	2, 0x0305
    2e38:	0409                	.insn	2, 0x0409
    2e3a:	1300                	.insn	2, 0x1300
    2e3c:	0305                	.insn	2, 0x0305
    2e3e:	0409                	.insn	2, 0x0409
    2e40:	1b00                	.insn	2, 0x1b00
    2e42:	0305                	.insn	2, 0x0305
    2e44:	0409                	.insn	2, 0x0409
    2e46:	1300                	.insn	2, 0x1300
    2e48:	0305                	.insn	2, 0x0305
    2e4a:	0409                	.insn	2, 0x0409
    2e4c:	0600                	.insn	2, 0x0600
    2e4e:	0501                	.insn	2, 0x0501
    2e50:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e54:	0501                	.insn	2, 0x0501
    2e56:	00040903          	lb	s2,0(s0)
    2e5a:	0106                	.insn	2, 0x0106
    2e5c:	0305                	.insn	2, 0x0305
    2e5e:	0009                	.insn	2, 0x0009
    2e60:	0600                	.insn	2, 0x0600
    2e62:	0501                	.insn	2, 0x0501
    2e64:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e68:	0501                	.insn	2, 0x0501
    2e6a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e6e:	0501                	.insn	2, 0x0501
    2e70:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e74:	0200                	.insn	2, 0x0200
    2e76:	0204                	.insn	2, 0x0204
    2e78:	0501                	.insn	2, 0x0501
    2e7a:	00040903          	lb	s2,0(s0)
    2e7e:	0200                	.insn	2, 0x0200
    2e80:	0004                	.insn	2, 0x0004
    2e82:	0501                	.insn	2, 0x0501
    2e84:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e88:	0501                	.insn	2, 0x0501
    2e8a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e8e:	0903051b          	addiw	a0,t1,144
    2e92:	0000                	.insn	2, 0x0000
    2e94:	0501                	.insn	2, 0x0501
    2e96:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2e9a:	0501                	.insn	2, 0x0501
    2e9c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ea0:	0501                	.insn	2, 0x0501
    2ea2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ea6:	0501                	.insn	2, 0x0501
    2ea8:	00040903          	lb	s2,0(s0)
    2eac:	0200                	.insn	2, 0x0200
    2eae:	0104                	.insn	2, 0x0104
    2eb0:	0501                	.insn	2, 0x0501
    2eb2:	00040903          	lb	s2,0(s0)
    2eb6:	0200                	.insn	2, 0x0200
    2eb8:	0004                	.insn	2, 0x0004
    2eba:	0501                	.insn	2, 0x0501
    2ebc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ec0:	0200                	.insn	2, 0x0200
    2ec2:	0104                	.insn	2, 0x0104
    2ec4:	0106                	.insn	2, 0x0106
    2ec6:	0305                	.insn	2, 0x0305
    2ec8:	0809                	.insn	2, 0x0809
    2eca:	0000                	.insn	2, 0x0000
    2ecc:	0402                	.insn	2, 0x0402
    2ece:	0604                	.insn	2, 0x0604
    2ed0:	0501                	.insn	2, 0x0501
    2ed2:	00040903          	lb	s2,0(s0)
    2ed6:	0200                	.insn	2, 0x0200
    2ed8:	1104                	.insn	2, 0x1104
    2eda:	0501                	.insn	2, 0x0501
    2edc:	000c0903          	lb	s2,0(s8)
    2ee0:	0200                	.insn	2, 0x0200
    2ee2:	1404                	.insn	2, 0x1404
    2ee4:	0501                	.insn	2, 0x0501
    2ee6:	00080903          	lb	s2,0(a6)
    2eea:	0200                	.insn	2, 0x0200
    2eec:	0004                	.insn	2, 0x0004
    2eee:	0501                	.insn	2, 0x0501
    2ef0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ef4:	0200                	.insn	2, 0x0200
    2ef6:	1404                	.insn	2, 0x1404
    2ef8:	0106                	.insn	2, 0x0106
    2efa:	0305                	.insn	2, 0x0305
    2efc:	0809                	.insn	2, 0x0809
    2efe:	0000                	.insn	2, 0x0000
    2f00:	0402                	.insn	2, 0x0402
    2f02:	011a                	.insn	2, 0x011a
    2f04:	0305                	.insn	2, 0x0305
    2f06:	0409                	.insn	2, 0x0409
    2f08:	0000                	.insn	2, 0x0000
    2f0a:	0402                	.insn	2, 0x0402
    2f0c:	0114                	.insn	2, 0x0114
    2f0e:	0305                	.insn	2, 0x0305
    2f10:	0409                	.insn	2, 0x0409
    2f12:	0000                	.insn	2, 0x0000
    2f14:	0402                	.insn	2, 0x0402
    2f16:	011a                	.insn	2, 0x011a
    2f18:	0305                	.insn	2, 0x0305
    2f1a:	0409                	.insn	2, 0x0409
    2f1c:	0100                	.insn	2, 0x0100
    2f1e:	0305                	.insn	2, 0x0305
    2f20:	0409                	.insn	2, 0x0409
    2f22:	0000                	.insn	2, 0x0000
    2f24:	0402                	.insn	2, 0x0402
    2f26:	011c                	.insn	2, 0x011c
    2f28:	0305                	.insn	2, 0x0305
    2f2a:	0409                	.insn	2, 0x0409
    2f2c:	0000                	.insn	2, 0x0000
    2f2e:	0402                	.insn	2, 0x0402
    2f30:	0600                	.insn	2, 0x0600
    2f32:	0519                	.insn	2, 0x0519
    2f34:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f38:	0200                	.insn	2, 0x0200
    2f3a:	0704                	.insn	2, 0x0704
    2f3c:	0501                	.insn	2, 0x0501
    2f3e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f42:	0501                	.insn	2, 0x0501
    2f44:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f48:	0501                	.insn	2, 0x0501
    2f4a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f4e:	0501                	.insn	2, 0x0501
    2f50:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f54:	0501                	.insn	2, 0x0501
    2f56:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f5a:	0200                	.insn	2, 0x0200
    2f5c:	0004                	.insn	2, 0x0004
    2f5e:	0501                	.insn	2, 0x0501
    2f60:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f64:	0501                	.insn	2, 0x0501
    2f66:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f6a:	0501                	.insn	2, 0x0501
    2f6c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f70:	0501                	.insn	2, 0x0501
    2f72:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f76:	0200                	.insn	2, 0x0200
    2f78:	0904                	.insn	2, 0x0904
    2f7a:	0501                	.insn	2, 0x0501
    2f7c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f80:	0200                	.insn	2, 0x0200
    2f82:	0c04                	.insn	2, 0x0c04
    2f84:	0501                	.insn	2, 0x0501
    2f86:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f8a:	0501                	.insn	2, 0x0501
    2f8c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f90:	0501                	.insn	2, 0x0501
    2f92:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f96:	0200                	.insn	2, 0x0200
    2f98:	0d04                	.insn	2, 0x0d04
    2f9a:	0501                	.insn	2, 0x0501
    2f9c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fa0:	0200                	.insn	2, 0x0200
    2fa2:	0004                	.insn	2, 0x0004
    2fa4:	0501                	.insn	2, 0x0501
    2fa6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2faa:	0501                	.insn	2, 0x0501
    2fac:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fb0:	0501                	.insn	2, 0x0501
    2fb2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fb6:	0200                	.insn	2, 0x0200
    2fb8:	1404                	.insn	2, 0x1404
    2fba:	0501                	.insn	2, 0x0501
    2fbc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fc0:	0106                	.insn	2, 0x0106
    2fc2:	0305                	.insn	2, 0x0305
    2fc4:	0409                	.insn	2, 0x0409
    2fc6:	0100                	.insn	2, 0x0100
    2fc8:	0305                	.insn	2, 0x0305
    2fca:	0009                	.insn	2, 0x0009
    2fcc:	0000                	.insn	2, 0x0000
    2fce:	0402                	.insn	2, 0x0402
    2fd0:	061c                	.insn	2, 0x061c
    2fd2:	0501                	.insn	2, 0x0501
    2fd4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fd8:	0501                	.insn	2, 0x0501
    2fda:	00080903          	lb	s2,0(a6)
    2fde:	0200                	.insn	2, 0x0200
    2fe0:	1d04                	.insn	2, 0x1d04
    2fe2:	0501                	.insn	2, 0x0501
    2fe4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fe8:	0200                	.insn	2, 0x0200
    2fea:	0004                	.insn	2, 0x0004
    2fec:	0501                	.insn	2, 0x0501
    2fee:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ff2:	0501                	.insn	2, 0x0501
    2ff4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ff8:	0501                	.insn	2, 0x0501
    2ffa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ffe:	0200                	.insn	2, 0x0200
    3000:	2004                	.insn	2, 0x2004
    3002:	0106                	.insn	2, 0x0106
    3004:	0305                	.insn	2, 0x0305
    3006:	0c09                	.insn	2, 0x0c09
    3008:	0000                	.insn	2, 0x0000
    300a:	0402                	.insn	2, 0x0402
    300c:	0624                	.insn	2, 0x0624
    300e:	0501                	.insn	2, 0x0501
    3010:	00040903          	lb	s2,0(s0)
    3014:	0200                	.insn	2, 0x0200
    3016:	2504                	.insn	2, 0x2504
    3018:	0501                	.insn	2, 0x0501
    301a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    301e:	0501                	.insn	2, 0x0501
    3020:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3024:	0200                	.insn	2, 0x0200
    3026:	2e04                	.insn	2, 0x2e04
    3028:	0501                	.insn	2, 0x0501
    302a:	00080903          	lb	s2,0(a6)
    302e:	0200                	.insn	2, 0x0200
    3030:	2f04                	.insn	2, 0x2f04
    3032:	0501                	.insn	2, 0x0501
    3034:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3038:	0200                	.insn	2, 0x0200
    303a:	0004                	.insn	2, 0x0004
    303c:	0501                	.insn	2, 0x0501
    303e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3042:	0200                	.insn	2, 0x0200
    3044:	2f04                	.insn	2, 0x2f04
    3046:	0106                	.insn	2, 0x0106
    3048:	0305                	.insn	2, 0x0305
    304a:	0409                	.insn	2, 0x0409
    304c:	0000                	.insn	2, 0x0000
    304e:	0402                	.insn	2, 0x0402
    3050:	0600                	.insn	2, 0x0600
    3052:	0501                	.insn	2, 0x0501
    3054:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3058:	0200                	.insn	2, 0x0200
    305a:	3f04                	.insn	2, 0x3f04
    305c:	0106                	.insn	2, 0x0106
    305e:	0305                	.insn	2, 0x0305
    3060:	0809                	.insn	2, 0x0809
    3062:	0100                	.insn	2, 0x0100
    3064:	0305                	.insn	2, 0x0305
    3066:	0009                	.insn	2, 0x0009
    3068:	0000                	.insn	2, 0x0000
    306a:	0402                	.insn	2, 0x0402
    306c:	0612                	.insn	2, 0x0612
    306e:	0515                	.insn	2, 0x0515
    3070:	00080903          	lb	s2,0(a6)
    3074:	0106                	.insn	2, 0x0106
    3076:	0305                	.insn	2, 0x0305
    3078:	0809                	.insn	2, 0x0809
    307a:	0000                	.insn	2, 0x0000
    307c:	0402                	.insn	2, 0x0402
    307e:	061f 0501 0903      	.insn	6, 0x09030501061f
    3084:	0000                	.insn	2, 0x0000
    3086:	0200                	.insn	2, 0x0200
    3088:	0004                	.insn	2, 0x0004
    308a:	0501                	.insn	2, 0x0501
    308c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3090:	0501                	.insn	2, 0x0501
    3092:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3096:	0519                	.insn	2, 0x0519
    3098:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    309c:	0501                	.insn	2, 0x0501
    309e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30a2:	0501                	.insn	2, 0x0501
    30a4:	00040903          	lb	s2,0(s0)
    30a8:	0106                	.insn	2, 0x0106
    30aa:	0305                	.insn	2, 0x0305
    30ac:	0009                	.insn	2, 0x0009
    30ae:	0000                	.insn	2, 0x0000
    30b0:	0402                	.insn	2, 0x0402
    30b2:	0602                	.insn	2, 0x0602
    30b4:	0515                	.insn	2, 0x0515
    30b6:	00040903          	lb	s2,0(s0)
    30ba:	0200                	.insn	2, 0x0200
    30bc:	2004                	.insn	2, 0x2004
    30be:	0501                	.insn	2, 0x0501
    30c0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30c4:	0501                	.insn	2, 0x0501
    30c6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30ca:	0200                	.insn	2, 0x0200
    30cc:	2404                	.insn	2, 0x2404
    30ce:	0501                	.insn	2, 0x0501
    30d0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30d4:	0501                	.insn	2, 0x0501
    30d6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30da:	0200                	.insn	2, 0x0200
    30dc:	0004                	.insn	2, 0x0004
    30de:	0501                	.insn	2, 0x0501
    30e0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30e4:	0200                	.insn	2, 0x0200
    30e6:	2804                	.insn	2, 0x2804
    30e8:	0106                	.insn	2, 0x0106
    30ea:	0305                	.insn	2, 0x0305
    30ec:	0409                	.insn	2, 0x0409
    30ee:	0000                	.insn	2, 0x0000
    30f0:	0402                	.insn	2, 0x0402
    30f2:	0124                	.insn	2, 0x0124
    30f4:	0305                	.insn	2, 0x0305
    30f6:	0409                	.insn	2, 0x0409
    30f8:	0000                	.insn	2, 0x0000
    30fa:	0402                	.insn	2, 0x0402
    30fc:	064a                	.insn	2, 0x064a
    30fe:	0519                	.insn	2, 0x0519
    3100:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3104:	0501                	.insn	2, 0x0501
    3106:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    310a:	0501                	.insn	2, 0x0501
    310c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3110:	0501                	.insn	2, 0x0501
    3112:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3116:	0501                	.insn	2, 0x0501
    3118:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    311c:	0200                	.insn	2, 0x0200
    311e:	0004                	.insn	2, 0x0004
    3120:	0501                	.insn	2, 0x0501
    3122:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3126:	0501                	.insn	2, 0x0501
    3128:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    312c:	0200                	.insn	2, 0x0200
    312e:	4a04                	.insn	2, 0x4a04
    3130:	0106                	.insn	2, 0x0106
    3132:	0305                	.insn	2, 0x0305
    3134:	0c09                	.insn	2, 0x0c09
    3136:	0000                	.insn	2, 0x0000
    3138:	0402                	.insn	2, 0x0402
    313a:	0600                	.insn	2, 0x0600
    313c:	0501                	.insn	2, 0x0501
    313e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3142:	0106                	.insn	2, 0x0106
    3144:	0305                	.insn	2, 0x0305
    3146:	0009                	.insn	2, 0x0009
    3148:	0000                	.insn	2, 0x0000
    314a:	0402                	.insn	2, 0x0402
    314c:	064a                	.insn	2, 0x064a
    314e:	0501                	.insn	2, 0x0501
    3150:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3154:	0501                	.insn	2, 0x0501
    3156:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    315a:	0200                	.insn	2, 0x0200
    315c:	0004                	.insn	2, 0x0004
    315e:	0518                	.insn	2, 0x0518
    3160:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3164:	0501                	.insn	2, 0x0501
    3166:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    316a:	0501                	.insn	2, 0x0501
    316c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3170:	0519                	.insn	2, 0x0519
    3172:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3176:	1806                	.insn	2, 0x1806
    3178:	0105                	.insn	2, 0x0105
    317a:	0409                	.insn	2, 0x0409
    317c:	0100                	.insn	2, 0x0100
    317e:	0105                	.insn	2, 0x0105
    3180:	0409                	.insn	2, 0x0409
    3182:	0000                	.insn	2, 0x0000
    3184:	0402                	.insn	2, 0x0402
    3186:	0621                	.insn	2, 0x0621
    3188:	0511                	.insn	2, 0x0511
    318a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    318e:	0200                	.insn	2, 0x0200
    3190:	0004                	.insn	2, 0x0004
    3192:	0501                	.insn	2, 0x0501
    3194:	00040903          	lb	s2,0(s0)
    3198:	0200                	.insn	2, 0x0200
    319a:	2104                	.insn	2, 0x2104
    319c:	0106                	.insn	2, 0x0106
    319e:	0305                	.insn	2, 0x0305
    31a0:	0409                	.insn	2, 0x0409
    31a2:	0100                	.insn	2, 0x0100
    31a4:	0305                	.insn	2, 0x0305
    31a6:	0409                	.insn	2, 0x0409
    31a8:	0000                	.insn	2, 0x0000
    31aa:	0402                	.insn	2, 0x0402
    31ac:	1944                	.insn	2, 0x1944
    31ae:	0305                	.insn	2, 0x0305
    31b0:	0409                	.insn	2, 0x0409
    31b2:	0100                	.insn	2, 0x0100
    31b4:	0305                	.insn	2, 0x0305
    31b6:	0409                	.insn	2, 0x0409
    31b8:	0100                	.insn	2, 0x0100
    31ba:	0305                	.insn	2, 0x0305
    31bc:	0409                	.insn	2, 0x0409
    31be:	0100                	.insn	2, 0x0100
    31c0:	0305                	.insn	2, 0x0305
    31c2:	0409                	.insn	2, 0x0409
    31c4:	0000                	.insn	2, 0x0000
    31c6:	0402                	.insn	2, 0x0402
    31c8:	0501063f 00000903 	.insn	8, 0x09030501063f
    31d0:	0501                	.insn	2, 0x0501
    31d2:	00040903          	lb	s2,0(s0)
    31d6:	0200                	.insn	2, 0x0200
    31d8:	0004                	.insn	2, 0x0004
    31da:	0501                	.insn	2, 0x0501
    31dc:	00040903          	lb	s2,0(s0)
    31e0:	0106                	.insn	2, 0x0106
    31e2:	0305                	.insn	2, 0x0305
    31e4:	0409                	.insn	2, 0x0409
    31e6:	0100                	.insn	2, 0x0100
    31e8:	0305                	.insn	2, 0x0305
    31ea:	0900                	.insn	2, 0x0900
    31ec:	9c02                	.insn	2, 0x9c02
    31ee:	0112                	.insn	2, 0x0112
    31f0:	0000                	.insn	2, 0x0000
    31f2:	0000                	.insn	2, 0x0000
    31f4:	0000                	.insn	2, 0x0000
    31f6:	0101                	.insn	2, 0x0101
    31f8:	00ff 0000 0005 0008 	.insn	10, 0x003300080005000000ff
    3200:	0033 
    3202:	0000                	.insn	2, 0x0000
    3204:	0101                	.insn	2, 0x0101
    3206:	f601                	.insn	2, 0xf601
    3208:	0df2                	.insn	2, 0x0df2
    320a:	0100                	.insn	2, 0x0100
    320c:	0101                	.insn	2, 0x0101
    320e:	0001                	.insn	2, 0x0001
    3210:	0000                	.insn	2, 0x0000
    3212:	0001                	.insn	2, 0x0001
    3214:	0100                	.insn	2, 0x0100
    3216:	0101                	.insn	2, 0x0101
    3218:	021f 0025 0000      	.insn	6, 0x0025021f
    321e:	01fc                	.insn	2, 0x01fc
    3220:	0000                	.insn	2, 0x0000
    3222:	0102                	.insn	2, 0x0102
    3224:	021f 030b 01d5      	.insn	6, 0x01d5030b021f
    322a:	0000                	.insn	2, 0x0000
    322c:	f200                	.insn	2, 0xf200
    322e:	0001                	.insn	2, 0x0001
    3230:	0100                	.insn	2, 0x0100
    3232:	000001cb          	.insn	4, 0x01cb
    3236:	0001                	.insn	2, 0x0001
    3238:	0209                	.insn	2, 0x0209
    323a:	129c                	.insn	2, 0x129c
    323c:	0001                	.insn	2, 0x0001
    323e:	0000                	.insn	2, 0x0000
    3240:	0000                	.insn	2, 0x0000
    3242:	0105ae03          	lw	t3,16(a1)
    3246:	0105                	.insn	2, 0x0105
    3248:	0009                	.insn	2, 0x0009
    324a:	1800                	.insn	2, 0x1800
    324c:	0305                	.insn	2, 0x0305
    324e:	0009                	.insn	2, 0x0009
    3250:	1900                	.insn	2, 0x1900
    3252:	0305                	.insn	2, 0x0305
    3254:	0009                	.insn	2, 0x0009
    3256:	0100                	.insn	2, 0x0100
    3258:	0305                	.insn	2, 0x0305
    325a:	0009                	.insn	2, 0x0009
    325c:	0100                	.insn	2, 0x0100
    325e:	0305                	.insn	2, 0x0305
    3260:	0009                	.insn	2, 0x0009
    3262:	0100                	.insn	2, 0x0100
    3264:	0305                	.insn	2, 0x0305
    3266:	0009                	.insn	2, 0x0009
    3268:	0000                	.insn	2, 0x0000
    326a:	0402                	.insn	2, 0x0402
    326c:	0102                	.insn	2, 0x0102
    326e:	0305                	.insn	2, 0x0305
    3270:	0009                	.insn	2, 0x0009
    3272:	0000                	.insn	2, 0x0000
    3274:	0402                	.insn	2, 0x0402
    3276:	010c                	.insn	2, 0x010c
    3278:	0305                	.insn	2, 0x0305
    327a:	0009                	.insn	2, 0x0009
    327c:	0000                	.insn	2, 0x0000
    327e:	0402                	.insn	2, 0x0402
    3280:	0602                	.insn	2, 0x0602
    3282:	0501                	.insn	2, 0x0501
    3284:	00040903          	lb	s2,0(s0)
    3288:	0200                	.insn	2, 0x0200
    328a:	0d04                	.insn	2, 0x0d04
    328c:	0106                	.insn	2, 0x0106
    328e:	0305                	.insn	2, 0x0305
    3290:	0c09                	.insn	2, 0x0c09
    3292:	0000                	.insn	2, 0x0000
    3294:	0402                	.insn	2, 0x0402
    3296:	0305010b          	.insn	4, 0x0305010b
    329a:	0409                	.insn	2, 0x0409
    329c:	0000                	.insn	2, 0x0000
    329e:	0402                	.insn	2, 0x0402
    32a0:	010c                	.insn	2, 0x010c
    32a2:	0305                	.insn	2, 0x0305
    32a4:	0409                	.insn	2, 0x0409
    32a6:	0000                	.insn	2, 0x0000
    32a8:	0402                	.insn	2, 0x0402
    32aa:	010e                	.insn	2, 0x010e
    32ac:	0305                	.insn	2, 0x0305
    32ae:	0009                	.insn	2, 0x0009
    32b0:	0600                	.insn	2, 0x0600
    32b2:	0501                	.insn	2, 0x0501
    32b4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    32b8:	0200                	.insn	2, 0x0200
    32ba:	0004                	.insn	2, 0x0004
    32bc:	0106                	.insn	2, 0x0106
    32be:	0305                	.insn	2, 0x0305
    32c0:	0009                	.insn	2, 0x0009
    32c2:	1900                	.insn	2, 0x1900
    32c4:	0305                	.insn	2, 0x0305
    32c6:	0009                	.insn	2, 0x0009
    32c8:	0000                	.insn	2, 0x0000
    32ca:	0402                	.insn	2, 0x0402
    32cc:	060e                	.insn	2, 0x060e
    32ce:	0515                	.insn	2, 0x0515
    32d0:	000c0903          	lb	s2,0(s8)
    32d4:	0501                	.insn	2, 0x0501
    32d6:	000c0903          	lb	s2,0(s8)
    32da:	0200                	.insn	2, 0x0200
    32dc:	0004                	.insn	2, 0x0004
    32de:	051a                	.insn	2, 0x051a
    32e0:	0901                	.insn	2, 0x0901
    32e2:	0008                	.insn	2, 0x0008
    32e4:	0501                	.insn	2, 0x0501
    32e6:	0901                	.insn	2, 0x0901
    32e8:	0004                	.insn	2, 0x0004
    32ea:	0501                	.insn	2, 0x0501
    32ec:	0001                	.insn	2, 0x0001
    32ee:	0209                	.insn	2, 0x0209
    32f0:	12dc                	.insn	2, 0x12dc
    32f2:	0001                	.insn	2, 0x0001
    32f4:	0000                	.insn	2, 0x0000
    32f6:	0000                	.insn	2, 0x0000
    32f8:	0100                	.insn	2, 0x0100
    32fa:	4901                	.insn	2, 0x4901
    32fc:	0000                	.insn	2, 0x0000
    32fe:	0500                	.insn	2, 0x0500
    3300:	0800                	.insn	2, 0x0800
    3302:	3300                	.insn	2, 0x3300
    3304:	0000                	.insn	2, 0x0000
    3306:	0100                	.insn	2, 0x0100
    3308:	0101                	.insn	2, 0x0101
    330a:	f2f6                	.insn	2, 0xf2f6
    330c:	000d                	.insn	2, 0x000d
    330e:	0101                	.insn	2, 0x0101
    3310:	0101                	.insn	2, 0x0101
    3312:	0000                	.insn	2, 0x0000
    3314:	0100                	.insn	2, 0x0100
    3316:	0000                	.insn	2, 0x0000
    3318:	0101                	.insn	2, 0x0101
    331a:	1f01                	.insn	2, 0x1f01
    331c:	2502                	.insn	2, 0x2502
    331e:	0000                	.insn	2, 0x0000
    3320:	fc00                	.insn	2, 0xfc00
    3322:	0001                	.insn	2, 0x0001
    3324:	0200                	.insn	2, 0x0200
    3326:	1f01                	.insn	2, 0x1f01
    3328:	0b02                	.insn	2, 0x0b02
    332a:	0001d503          	lhu	a0,0(gp) # 14818 <__global_pointer$>
    332e:	0000                	.insn	2, 0x0000
    3330:	01f2                	.insn	2, 0x01f2
    3332:	0000                	.insn	2, 0x0000
    3334:	cb01                	.insn	2, 0xcb01
    3336:	0001                	.insn	2, 0x0001
    3338:	0100                	.insn	2, 0x0100
    333a:	0900                	.insn	2, 0x0900
    333c:	dc02                	.insn	2, 0xdc02
    333e:	0112                	.insn	2, 0x0112
    3340:	0000                	.insn	2, 0x0000
    3342:	0000                	.insn	2, 0x0000
    3344:	0000                	.insn	2, 0x0000
    3346:	0101                	.insn	2, 0x0101

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	.insn	2, 0x000c
   2:	0000                	.insn	2, 0x0000
   4:	ffff                	.insn	2, 0xffff
   6:	ffff                	.insn	2, 0xffff
   8:	7c010003          	lb	zero,1984(sp) # 305342a <__BSS_END__+0x303e43a>
   c:	0c01                	.insn	2, 0x0c01
   e:	0002                	.insn	2, 0x0002
  10:	0034                	.insn	2, 0x0034
  12:	0000                	.insn	2, 0x0000
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	04a0                	.insn	2, 0x04a0
  1a:	0001                	.insn	2, 0x0001
  1c:	0000                	.insn	2, 0x0000
  1e:	0000                	.insn	2, 0x0000
  20:	0448                	.insn	2, 0x0448
  22:	0000                	.insn	2, 0x0000
  24:	0000                	.insn	2, 0x0000
  26:	0000                	.insn	2, 0x0000
  28:	0e44                	.insn	2, 0x0e44
  2a:	5020                	.insn	2, 0x5020
  2c:	0892                	.insn	2, 0x0892
  2e:	8860                	.insn	2, 0x8860
  30:	8104                	.insn	2, 0x8104
  32:	8902                	.insn	2, 0x8902
  34:	0306                	.insn	2, 0x0306
  36:	0180                	.insn	2, 0x0180
  38:	c10a                	.insn	2, 0xc10a
  3a:	c848                	.insn	2, 0xc848
  3c:	c944                	.insn	2, 0xc944
  3e:	d244                	.insn	2, 0xd244
  40:	0e44                	.insn	2, 0x0e44
  42:	4400                	.insn	2, 0x4400
  44:	0000000b          	.insn	4, 0x000b
  48:	000c                	.insn	2, 0x000c
  4a:	0000                	.insn	2, 0x0000
  4c:	ffff                	.insn	2, 0xffff
  4e:	ffff                	.insn	2, 0xffff
  50:	7c010003          	lb	zero,1984(sp)
  54:	0c01                	.insn	2, 0x0c01
  56:	0002                	.insn	2, 0x0002
  58:	0044                	.insn	2, 0x0044
  5a:	0000                	.insn	2, 0x0000
  5c:	0048                	.insn	2, 0x0048
  5e:	0000                	.insn	2, 0x0000
  60:	08e8                	.insn	2, 0x08e8
  62:	0001                	.insn	2, 0x0001
  64:	0000                	.insn	2, 0x0000
  66:	0000                	.insn	2, 0x0000
  68:	0344                	.insn	2, 0x0344
  6a:	0000                	.insn	2, 0x0000
  6c:	0000                	.insn	2, 0x0000
  6e:	0000                	.insn	2, 0x0000
  70:	0e44                	.insn	2, 0x0e44
  72:	4440                	.insn	2, 0x4440
  74:	0892                	.insn	2, 0x0892
  76:	8950                	.insn	2, 0x8950
  78:	9306                	.insn	2, 0x9306
  7a:	950a                	.insn	2, 0x950a
  7c:	500e                	.insn	2, 0x500e
  7e:	0281                	.insn	2, 0x0281
  80:	0488                	.insn	2, 0x0488
  82:	0c94                	.insn	2, 0x0c94
  84:	0a017003          	.insn	4, 0x0a017003
  88:	44c1                	.insn	2, 0x44c1
  8a:	58c8                	.insn	2, 0x58c8
  8c:	44c9                	.insn	2, 0x44c9
  8e:	44d2                	.insn	2, 0x44d2
  90:	44d4                	.insn	2, 0x44d4
  92:	48d5                	.insn	2, 0x48d5
  94:	000e44d3          	.insn	4, 0x000e44d3
  98:	0b44                	.insn	2, 0x0b44
  9a:	0000                	.insn	2, 0x0000
  9c:	0000                	.insn	2, 0x0000
  9e:	0000                	.insn	2, 0x0000
  a0:	000c                	.insn	2, 0x000c
  a2:	0000                	.insn	2, 0x0000
  a4:	ffff                	.insn	2, 0xffff
  a6:	ffff                	.insn	2, 0xffff
  a8:	7c010003          	lb	zero,1984(sp)
  ac:	0c01                	.insn	2, 0x0c01
  ae:	0002                	.insn	2, 0x0002
  b0:	0034                	.insn	2, 0x0034
  b2:	0000                	.insn	2, 0x0000
  b4:	00a0                	.insn	2, 0x00a0
  b6:	0000                	.insn	2, 0x0000
  b8:	0c2c                	.insn	2, 0x0c2c
  ba:	0001                	.insn	2, 0x0001
  bc:	0000                	.insn	2, 0x0000
  be:	0000                	.insn	2, 0x0000
  c0:	0458                	.insn	2, 0x0458
  c2:	0000                	.insn	2, 0x0000
  c4:	0000                	.insn	2, 0x0000
  c6:	0000                	.insn	2, 0x0000
  c8:	0e4c                	.insn	2, 0x0e4c
  ca:	5820                	.insn	2, 0x5820
  cc:	0488                	.insn	2, 0x0488
  ce:	0689                	.insn	2, 0x0689
  d0:	8170                	.insn	2, 0x8170
  d2:	9202                	.insn	2, 0x9202
  d4:	0308                	.insn	2, 0x0308
  d6:	0174                	.insn	2, 0x0174
  d8:	c10a                	.insn	2, 0xc10a
  da:	c848                	.insn	2, 0xc848
  dc:	c944                	.insn	2, 0xc944
  de:	d244                	.insn	2, 0xd244
  e0:	0e44                	.insn	2, 0x0e44
  e2:	4400                	.insn	2, 0x4400
  e4:	0000000b          	.insn	4, 0x000b
  e8:	000c                	.insn	2, 0x000c
  ea:	0000                	.insn	2, 0x0000
  ec:	ffff                	.insn	2, 0xffff
  ee:	ffff                	.insn	2, 0xffff
  f0:	7c010003          	lb	zero,1984(sp)
  f4:	0c01                	.insn	2, 0x0c01
  f6:	0002                	.insn	2, 0x0002
  f8:	002c                	.insn	2, 0x002c
  fa:	0000                	.insn	2, 0x0000
  fc:	00e8                	.insn	2, 0x00e8
  fe:	0000                	.insn	2, 0x0000
 100:	1084                	.insn	2, 0x1084
 102:	0001                	.insn	2, 0x0001
 104:	0000                	.insn	2, 0x0000
 106:	0000                	.insn	2, 0x0000
 108:	0080                	.insn	2, 0x0080
 10a:	0000                	.insn	2, 0x0000
 10c:	0000                	.insn	2, 0x0000
 10e:	0000                	.insn	2, 0x0000
 110:	0e44                	.insn	2, 0x0e44
 112:	4c20                	.insn	2, 0x4c20
 114:	0281                	.insn	2, 0x0281
 116:	0488                	.insn	2, 0x0488
 118:	0689                	.insn	2, 0x0689
 11a:	4402                	.insn	2, 0x4402
 11c:	c10a                	.insn	2, 0xc10a
 11e:	c848                	.insn	2, 0xc848
 120:	c94c                	.insn	2, 0xc94c
 122:	0e44                	.insn	2, 0x0e44
 124:	4400                	.insn	2, 0x4400
 126:	000c000b          	.insn	4, 0x000c000b
 12a:	0000                	.insn	2, 0x0000
 12c:	ffff                	.insn	2, 0xffff
 12e:	ffff                	.insn	2, 0xffff
 130:	7c010003          	lb	zero,1984(sp)
 134:	0c01                	.insn	2, 0x0c01
 136:	0002                	.insn	2, 0x0002
 138:	002c                	.insn	2, 0x002c
 13a:	0000                	.insn	2, 0x0000
 13c:	0128                	.insn	2, 0x0128
 13e:	0000                	.insn	2, 0x0000
 140:	1104                	.insn	2, 0x1104
 142:	0001                	.insn	2, 0x0001
 144:	0000                	.insn	2, 0x0000
 146:	0000                	.insn	2, 0x0000
 148:	00a4                	.insn	2, 0x00a4
 14a:	0000                	.insn	2, 0x0000
 14c:	0000                	.insn	2, 0x0000
 14e:	0000                	.insn	2, 0x0000
 150:	0e4c                	.insn	2, 0x0e4c
 152:	4c20                	.insn	2, 0x4c20
 154:	0488                	.insn	2, 0x0488
 156:	0689                	.insn	2, 0x0689
 158:	8148                	.insn	2, 0x8148
 15a:	6802                	.insn	2, 0x6802
 15c:	c10a                	.insn	2, 0xc10a
 15e:	c848                	.insn	2, 0xc848
 160:	c94c                	.insn	2, 0xc94c
 162:	0e44                	.insn	2, 0x0e44
 164:	4400                	.insn	2, 0x4400
 166:	000c000b          	.insn	4, 0x000c000b
 16a:	0000                	.insn	2, 0x0000
 16c:	ffff                	.insn	2, 0xffff
 16e:	ffff                	.insn	2, 0xffff
 170:	7c010003          	lb	zero,1984(sp)
 174:	0c01                	.insn	2, 0x0c01
 176:	0002                	.insn	2, 0x0002
 178:	0014                	.insn	2, 0x0014
 17a:	0000                	.insn	2, 0x0000
 17c:	0168                	.insn	2, 0x0168
 17e:	0000                	.insn	2, 0x0000
 180:	11a8                	.insn	2, 0x11a8
 182:	0001                	.insn	2, 0x0001
 184:	0000                	.insn	2, 0x0000
 186:	0000                	.insn	2, 0x0000
 188:	00f4                	.insn	2, 0x00f4
 18a:	0000                	.insn	2, 0x0000
 18c:	0000                	.insn	2, 0x0000
 18e:	0000                	.insn	2, 0x0000
 190:	000c                	.insn	2, 0x000c
 192:	0000                	.insn	2, 0x0000
 194:	ffff                	.insn	2, 0xffff
 196:	ffff                	.insn	2, 0xffff
 198:	7c010003          	lb	zero,1984(sp)
 19c:	0c01                	.insn	2, 0x0c01
 19e:	0002                	.insn	2, 0x0002
 1a0:	0014                	.insn	2, 0x0014
 1a2:	0000                	.insn	2, 0x0000
 1a4:	0190                	.insn	2, 0x0190
 1a6:	0000                	.insn	2, 0x0000
 1a8:	129c                	.insn	2, 0x129c
 1aa:	0001                	.insn	2, 0x0001
 1ac:	0000                	.insn	2, 0x0000
 1ae:	0000                	.insn	2, 0x0000
 1b0:	0040                	.insn	2, 0x0040
 1b2:	0000                	.insn	2, 0x0000
 1b4:	0000                	.insn	2, 0x0000
	...

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f5f 6e69 3174      	.insn	6, 0x31746e695f5f
   6:	3832                	.insn	2, 0x3832
   8:	7520                	.insn	2, 0x7520
   a:	736e                	.insn	2, 0x736e
   c:	6769                	.insn	2, 0x6769
   e:	656e                	.insn	2, 0x656e
  10:	0064                	.insn	2, 0x0064
  12:	465f 5f50 4150      	.insn	6, 0x41505f50465f
  18:	525f4b43          	.insn	4, 0x525f4b43
  1c:	5741                	.insn	2, 0x5741
  1e:	315f 665f 6f6c      	.insn	6, 0x6f6c665f315f
  24:	4700                	.insn	2, 0x4700
  26:	554e                	.insn	2, 0x554e
  28:	4320                	.insn	2, 0x4320
  2a:	3332                	.insn	2, 0x3332
  2c:	3120                	.insn	2, 0x3120
  2e:	2e35                	.insn	2, 0x2e35
  30:	2e31                	.insn	2, 0x2e31
  32:	2030                	.insn	2, 0x2030
  34:	6d2d                	.insn	2, 0x6d2d
  36:	646f6d63          	bltu	t5,t1,690 <exit-0xfa90>
  3a:	6c65                	.insn	2, 0x6c65
  3c:	6d3d                	.insn	2, 0x6d3d
  3e:	6465                	.insn	2, 0x6465
  40:	6f6c                	.insn	2, 0x6f6c
  42:	6d2d2077          	.insn	4, 0x6d2d2077
  46:	6261                	.insn	2, 0x6261
  48:	3d69                	.insn	2, 0x3d69
  4a:	706c                	.insn	2, 0x706c
  4c:	3436                	.insn	2, 0x3436
  4e:	2d20                	.insn	2, 0x2d20
  50:	636d                	.insn	2, 0x636d
  52:	6f6d                	.insn	2, 0x6f6d
  54:	6564                	.insn	2, 0x6564
  56:	3d6c                	.insn	2, 0x3d6c
  58:	656d                	.insn	2, 0x656d
  5a:	6c64                	.insn	2, 0x6c64
  5c:	2d20776f          	jal	a4,732e <exit-0x8df2>
  60:	696d                	.insn	2, 0x696d
  62:	732d6173          	.insn	4, 0x732d6173
  66:	6570                	.insn	2, 0x6570
  68:	30323d63          	.insn	4, 0x30323d63
  6c:	3931                	.insn	2, 0x3931
  6e:	3231                	.insn	2, 0x3231
  70:	3331                	.insn	2, 0x3331
  72:	2d20                	.insn	2, 0x2d20
  74:	616d                	.insn	2, 0x616d
  76:	6372                	.insn	2, 0x6372
  78:	3d68                	.insn	2, 0x3d68
  7a:	7672                	.insn	2, 0x7672
  7c:	3436                	.insn	2, 0x3436
  7e:	6d69                	.insn	2, 0x6d69
  80:	7a5f 6d6d 6c75      	.insn	6, 0x6c756d6d7a5f
  86:	2d20                	.insn	2, 0x2d20
  88:	4f2d2067          	.insn	4, 0x4f2d2067
  8c:	4f2d2073          	.insn	4, 0x4f2d2073
  90:	2032                	.insn	2, 0x2032
  92:	4f2d                	.insn	2, 0x4f2d
  94:	662d2073          	.insn	4, 0x662d2073
  98:	7562                	.insn	2, 0x7562
  9a:	6c69                	.insn	2, 0x6c69
  9c:	6964                	.insn	2, 0x6964
  9e:	676e                	.insn	2, 0x676e
  a0:	6c2d                	.insn	2, 0x6c2d
  a2:	6269                	.insn	2, 0x6269
  a4:	20636367          	.insn	4, 0x20636367
  a8:	662d                	.insn	2, 0x662d
  aa:	6f6e                	.insn	2, 0x6f6e
  ac:	732d                	.insn	2, 0x732d
  ae:	6174                	.insn	2, 0x6174
  b0:	702d6b63          	bltu	s10,sp,7c6 <exit-0xf95a>
  b4:	6f72                	.insn	2, 0x6f72
  b6:	6574                	.insn	2, 0x6574
  b8:	726f7463          	bgeu	t5,t1,7e0 <exit-0xf940>
  bc:	2d20                	.insn	2, 0x2d20
  be:	7666                	.insn	2, 0x7666
  c0:	7369                	.insn	2, 0x7369
  c2:	6269                	.insn	2, 0x6269
  c4:	6c69                	.insn	2, 0x6c69
  c6:	7469                	.insn	2, 0x7469
  c8:	3d79                	.insn	2, 0x3d79
  ca:	6968                	.insn	2, 0x6968
  cc:	6464                	.insn	2, 0x6464
  ce:	6e65                	.insn	2, 0x6e65
  d0:	5f00                	.insn	2, 0x5f00
  d2:	615f 6464 6664      	.insn	6, 0x66646464615f
  d8:	665f0033          	.insn	4, 0x665f0033
  dc:	7865                	.insn	2, 0x7865
  de:	5f00                	.insn	2, 0x5f00
  e0:	5046                	.insn	2, 0x5046
  e2:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
  e8:	494d4553          	.insn	4, 0x494d4553
  ec:	4152                	.insn	2, 0x4152
  ee:	5f545f57          	.insn	4, 0x5f545f57
  f2:	46440063          	beq	s0,tp,552 <exit-0xfbce>
  f6:	7974                	.insn	2, 0x7974
  f8:	6570                	.insn	2, 0x6570
  fa:	5f00                	.insn	2, 0x5f00
  fc:	5046                	.insn	2, 0x5046
  fe:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 104:	494d4553          	.insn	4, 0x494d4553
 108:	4152                	.insn	2, 0x4152
 10a:	5f545f57          	.insn	4, 0x5f545f57
 10e:	0066                	.insn	2, 0x0066
 110:	6461                	.insn	2, 0x6461
 112:	5f64                	.insn	2, 0x5f64
 114:	6f64                	.insn	2, 0x6f64
 116:	656e                	.insn	2, 0x656e
 118:	7500                	.insn	2, 0x7500
 11a:	736e                	.insn	2, 0x736e
 11c:	6769                	.insn	2, 0x6769
 11e:	656e                	.insn	2, 0x656e
 120:	2064                	.insn	2, 0x2064
 122:	72616863          	bltu	sp,t1,852 <exit-0xf8ce>
 126:	5f00                	.insn	2, 0x5f00
 128:	5046                	.insn	2, 0x5046
 12a:	555f 504e 4341      	.insn	6, 0x4341504e555f
 130:	41525f4b          	.insn	4, 0x41525f4b
 134:	5f315f57          	.insn	4, 0x5f315f57
 138:	6c66                	.insn	2, 0x6c66
 13a:	465f006f          	j	f0d9e <__BSS_END__+0xdbdae>
 13e:	5f50                	.insn	2, 0x5f50
 140:	4150                	.insn	2, 0x4150
 142:	535f4b43          	.insn	4, 0x535f4b43
 146:	4d45                	.insn	2, 0x4d45
 148:	5249                	.insn	2, 0x5249
 14a:	5741                	.insn	2, 0x5741
 14c:	545f 735f 5f00      	.insn	6, 0x5f00735f545f
 152:	695f 746e 3231      	.insn	6, 0x3231746e695f
 158:	0038                	.insn	2, 0x0038
 15a:	31627573          	.insn	4, 0x31627573
 15e:	7300                	.insn	2, 0x7300
 160:	6275                	.insn	2, 0x6275
 162:	0032                	.insn	2, 0x0032
 164:	33627573          	.insn	4, 0x33627573
 168:	6e00                	.insn	2, 0x6e00
 16a:	006d726f          	jal	tp,d7170 <__BSS_END__+0xc2180>
 16e:	7266                	.insn	2, 0x7266
 170:	6361                	.insn	2, 0x6361
 172:	6c00                	.insn	2, 0x6c00
 174:	20676e6f          	jal	t3,7637a <__BSS_END__+0x6138a>
 178:	6f6c                	.insn	2, 0x6f6c
 17a:	676e                	.insn	2, 0x676e
 17c:	7520                	.insn	2, 0x7520
 17e:	736e                	.insn	2, 0x736e
 180:	6769                	.insn	2, 0x6769
 182:	656e                	.insn	2, 0x656e
 184:	2064                	.insn	2, 0x2064
 186:	6e69                	.insn	2, 0x6e69
 188:	0074                	.insn	2, 0x0074
 18a:	6461                	.insn	2, 0x6461
 18c:	3364                	.insn	2, 0x3364
 18e:	5f00                	.insn	2, 0x5f00
 190:	5046                	.insn	2, 0x5046
 192:	415f 4444 495f      	.insn	6, 0x495f4444415f
 198:	544e                	.insn	2, 0x544e
 19a:	5245                	.insn	2, 0x5245
 19c:	414e                	.insn	2, 0x414e
 19e:	5f4c                	.insn	2, 0x5f4c
 1a0:	6964                	.insn	2, 0x6964
 1a2:	6666                	.insn	2, 0x6666
 1a4:	6c00                	.insn	2, 0x6c00
 1a6:	20676e6f          	jal	t3,763ac <__BSS_END__+0x613bc>
 1aa:	6f6c                	.insn	2, 0x6f6c
 1ac:	676e                	.insn	2, 0x676e
 1ae:	6920                	.insn	2, 0x6920
 1b0:	746e                	.insn	2, 0x746e
 1b2:	5f00                	.insn	2, 0x5f00
 1b4:	5046                	.insn	2, 0x5046
 1b6:	415f 4444 495f      	.insn	6, 0x495f4444415f
 1bc:	544e                	.insn	2, 0x544e
 1be:	5245                	.insn	2, 0x5245
 1c0:	414e                	.insn	2, 0x414e
 1c2:	5f4c                	.insn	2, 0x5f4c
 1c4:	6465                	.insn	2, 0x6465
 1c6:	6669                	.insn	2, 0x6669
 1c8:	0066                	.insn	2, 0x0066
 1ca:	465f 5f50 4e55      	.insn	6, 0x4e555f50465f
 1d0:	4f49                	.insn	2, 0x4f49
 1d2:	5f4e                	.insn	2, 0x5f4e
 1d4:	0044                	.insn	2, 0x0044
 1d6:	5f627573          	.insn	4, 0x5f627573
 1da:	6f64                	.insn	2, 0x6f64
 1dc:	656e                	.insn	2, 0x656e
 1de:	5f00                	.insn	2, 0x5f00
 1e0:	5046                	.insn	2, 0x5046
 1e2:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 1e8:	494d4553          	.insn	4, 0x494d4553
 1ec:	4152                	.insn	2, 0x4152
 1ee:	5f545f57          	.insn	4, 0x5f545f57
 1f2:	0065                	.insn	2, 0x0065
 1f4:	6461                	.insn	2, 0x6461
 1f6:	3164                	.insn	2, 0x3164
 1f8:	6100                	.insn	2, 0x6100
 1fa:	6464                	.insn	2, 0x6464
 1fc:	0032                	.insn	2, 0x0032
 1fe:	6e676973          	.insn	4, 0x6e676973
 202:	6200                	.insn	2, 0x6200
 204:	7469                	.insn	2, 0x7469
 206:	5f5f0073          	.insn	4, 0x5f5f0073
 20a:	647a6c63          	bltu	s4,t2,862 <exit-0xf8be>
 20e:	3269                	.insn	2, 0x3269
 210:	5f00                	.insn	2, 0x5f00
 212:	5046                	.insn	2, 0x5046
 214:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 21a:	494d4553          	.insn	4, 0x494d4553
 21e:	4152                	.insn	2, 0x4152
 220:	73695f57          	.insn	4, 0x73695f57
 224:	745f 6e69 0079      	.insn	6, 0x00796e69745f
 22a:	665f 6d72 5f00      	.insn	6, 0x5f006d72665f
 230:	5046                	.insn	2, 0x5046
 232:	4d5f 4c55 4d5f      	.insn	6, 0x4d5f4c554d5f
 238:	4145                	.insn	2, 0x4145
 23a:	5f54                	.insn	2, 0x5f54
 23c:	5f31                	.insn	2, 0x5f31
 23e:	65646977          	.insn	4, 0x65646977
 242:	5a5f 665f 0030      	.insn	6, 0x0030665f5a5f
 248:	465f 5f50 554d      	.insn	6, 0x554d5f50465f
 24e:	5f4c                	.insn	2, 0x5f4c
 250:	454d                	.insn	2, 0x454d
 252:	5441                	.insn	2, 0x5441
 254:	315f 775f 6469      	.insn	6, 0x6469775f315f
 25a:	5f65                	.insn	2, 0x5f65
 25c:	5f5a                	.insn	2, 0x5f5a
 25e:	3166                	.insn	2, 0x3166
 260:	5f00                	.insn	2, 0x5f00
 262:	755f 0068 4855      	.insn	6, 0x48550068755f
 268:	70797457          	.insn	4, 0x70797457
 26c:	0065                	.insn	2, 0x0065
 26e:	5f5f 3078 5500      	.insn	6, 0x550030785f5f
 274:	79744953          	.insn	4, 0x79744953
 278:	6570                	.insn	2, 0x6570
 27a:	5f00                	.insn	2, 0x5f00
 27c:	5046                	.insn	2, 0x5046
 27e:	555f 504e 4341      	.insn	6, 0x4341504e555f
 284:	41435f4b          	.insn	4, 0x41435f4b
 288:	4f4e                	.insn	2, 0x4f4e
 28a:	494e                	.insn	2, 0x494e
 28c:	5f4c4143          	.insn	4, 0x5f4c4143
 290:	66696873          	.insn	4, 0x66696873
 294:	0074                	.insn	2, 0x0074
 296:	5f5f 6c75 5f00      	.insn	6, 0x5f006c755f5f
 29c:	5046                	.insn	2, 0x5046
 29e:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 2a4:	4f4e4143          	.insn	4, 0x4f4e4143
 2a8:	494e                	.insn	2, 0x494e
 2aa:	5f4c4143          	.insn	4, 0x5f4c4143
 2ae:	5f54                	.insn	2, 0x5f54
 2b0:	465f0073          	.insn	4, 0x465f0073
 2b4:	5f50                	.insn	2, 0x5f50
 2b6:	4150                	.insn	2, 0x4150
 2b8:	435f4b43          	.insn	4, 0x435f4b43
 2bc:	4e41                	.insn	2, 0x4e41
 2be:	43494e4f          	.insn	4, 0x43494e4f
 2c2:	4c41                	.insn	2, 0x4c41
 2c4:	695f 5f73 6974      	.insn	6, 0x69745f73695f
 2ca:	796e                	.insn	2, 0x796e
 2cc:	5f00                	.insn	2, 0x5f00
 2ce:	5046                	.insn	2, 0x5046
 2d0:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 2d6:	4f4e4143          	.insn	4, 0x4f4e4143
 2da:	494e                	.insn	2, 0x494e
 2dc:	5f4c4143          	.insn	4, 0x5f4c4143
 2e0:	5f54                	.insn	2, 0x5f54
 2e2:	465f0063          	beq	t5,t0,742 <exit-0xf9de>
 2e6:	5f50                	.insn	2, 0x5f50
 2e8:	4150                	.insn	2, 0x4150
 2ea:	435f4b43          	.insn	4, 0x435f4b43
 2ee:	4e41                	.insn	2, 0x4e41
 2f0:	43494e4f          	.insn	4, 0x43494e4f
 2f4:	4c41                	.insn	2, 0x4c41
 2f6:	545f 655f 5f00      	.insn	6, 0x5f00655f545f
 2fc:	5046                	.insn	2, 0x5046
 2fe:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 304:	4f4e4143          	.insn	4, 0x4f4e4143
 308:	494e                	.insn	2, 0x494e
 30a:	5f4c4143          	.insn	4, 0x5f4c4143
 30e:	5f54                	.insn	2, 0x5f54
 310:	0066                	.insn	2, 0x0066
 312:	5f5f 3178 5f00      	.insn	6, 0x5f0031785f5f
 318:	785f 0033 5f5f      	.insn	6, 0x5f5f0033785f
 31e:	6876                	.insn	2, 0x6876
 320:	5f00                	.insn	2, 0x5f00
 322:	765f 006c 5f5f      	.insn	6, 0x5f5f006c765f
 328:	756d                	.insn	2, 0x756d
 32a:	646c                	.insn	2, 0x646c
 32c:	3366                	.insn	2, 0x3366
 32e:	5f00                	.insn	2, 0x5f00
 330:	785f 0032 5f5f      	.insn	6, 0x5f5f0032785f
 336:	64627573          	.insn	4, 0x64627573
 33a:	3366                	.insn	2, 0x3366
 33c:	7000                	.insn	2, 0x7000
 33e:	6361                	.insn	2, 0x6361
 340:	65735f6b          	.insn	4, 0x65735f6b
 344:	696d                	.insn	2, 0x696d
 346:	6172                	.insn	2, 0x6172
 348:	465f0077          	.insn	4, 0x465f0077
 34c:	5f50                	.insn	2, 0x5f50
 34e:	5246                	.insn	2, 0x5246
 350:	495f4d4f          	.insn	4, 0x495f4d4f
 354:	544e                	.insn	2, 0x544e
 356:	755f 0072 465f      	.insn	6, 0x465f0072755f
 35c:	5f50                	.insn	2, 0x5f50
 35e:	5246                	.insn	2, 0x5246
 360:	495f4d4f          	.insn	4, 0x495f4d4f
 364:	544e                	.insn	2, 0x544e
 366:	6c5f 007a 5f5f      	.insn	6, 0x5f5f007a6c5f
 36c:	6c66                	.insn	2, 0x6c66
 36e:	7374616f          	jal	sp,472a4 <__BSS_END__+0x322b4>
 372:	6469                	.insn	2, 0x6469
 374:	0066                	.insn	2, 0x0066
 376:	5046                	.insn	2, 0x5046
 378:	455f 5458 4e45      	.insn	6, 0x4e455458455f
 37e:	5f44                	.insn	2, 0x5f44
 380:	7a6c                	.insn	2, 0x7a6c
 382:	5f00                	.insn	2, 0x5f00
 384:	5046                	.insn	2, 0x5046
 386:	555f 494e 4e4f      	.insn	6, 0x4e4f494e555f
 38c:	535f 5300 7446      	.insn	6, 0x74465300535f
 392:	7079                	.insn	2, 0x7079
 394:	0065                	.insn	2, 0x0065
 396:	5f5f 7865 6574      	.insn	6, 0x657478655f5f
 39c:	646e                	.insn	2, 0x646e
 39e:	66646673          	.insn	4, 0x66646673
 3a2:	0032                	.insn	2, 0x0032
 3a4:	5f5f 7274 6e75      	.insn	6, 0x6e7572745f5f
 3aa:	73666463          	bltu	a2,s6,ad2 <exit-0xf64e>
 3ae:	3266                	.insn	2, 0x3266
 3b0:	6300                	.insn	2, 0x6300
 3b2:	6c706d6f          	jal	s10,7278 <exit-0x8ea8>
 3b6:	7865                	.insn	2, 0x7865
 3b8:	5f20                	.insn	2, 0x5f20
 3ba:	6c46                	.insn	2, 0x6c46
 3bc:	3174616f          	jal	sp,46ed2 <__BSS_END__+0x31ee2>
 3c0:	0036                	.insn	2, 0x0036
 3c2:	726f6873          	.insn	4, 0x726f6873
 3c6:	2074                	.insn	2, 0x2074
 3c8:	6e75                	.insn	2, 0x6e75
 3ca:	6e676973          	.insn	4, 0x6e676973
 3ce:	6465                	.insn	2, 0x6465
 3d0:	6920                	.insn	2, 0x6920
 3d2:	746e                	.insn	2, 0x746e
 3d4:	6300                	.insn	2, 0x6300
 3d6:	6c706d6f          	jal	s10,729c <exit-0x8e84>
 3da:	7865                	.insn	2, 0x7865
 3dc:	6c20                	.insn	2, 0x6c20
 3de:	20676e6f          	jal	t3,765e4 <__BSS_END__+0x615f4>
 3e2:	6f64                	.insn	2, 0x6f64
 3e4:	6275                	.insn	2, 0x6275
 3e6:	656c                	.insn	2, 0x656c
 3e8:	5500                	.insn	2, 0x5500
 3ea:	4951                	.insn	2, 0x4951
 3ec:	7974                	.insn	2, 0x7974
 3ee:	6570                	.insn	2, 0x6570
 3f0:	5f00                	.insn	2, 0x5f00
 3f2:	635f 7a6c 745f      	.insn	6, 0x745f7a6c635f
 3f8:	6261                	.insn	2, 0x6261
 3fa:	5500                	.insn	2, 0x5500
 3fc:	4944                	.insn	2, 0x4944
 3fe:	7974                	.insn	2, 0x7974
 400:	6570                	.insn	2, 0x6570
 402:	6300                	.insn	2, 0x6300
 404:	6c706d6f          	jal	s10,72ca <exit-0x8e56>
 408:	7865                	.insn	2, 0x7865
 40a:	6620                	.insn	2, 0x6620
 40c:	6f6c                	.insn	2, 0x6f6c
 40e:	7461                	.insn	2, 0x7461
 410:	5f00                	.insn	2, 0x5f00
 412:	785f 0072 6873      	.insn	6, 0x68730072785f
 418:	2074726f          	jal	tp,47e1e <__BSS_END__+0x32e2e>
 41c:	6e69                	.insn	2, 0x6e69
 41e:	0074                	.insn	2, 0x0074
 420:	706d6f63          	bltu	s10,t1,b3e <exit-0xf5e2>
 424:	656c                	.insn	2, 0x656c
 426:	2078                	.insn	2, 0x2078
 428:	6f64                	.insn	2, 0x6f64
 42a:	6275                	.insn	2, 0x6275
 42c:	656c                	.insn	2, 0x656c
 42e:	5f00                	.insn	2, 0x5f00
 430:	6f42                	.insn	2, 0x6f42
 432:	006c6f 	.3byte	0x006c6f

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	2e2e                	.insn	2, 0x2e2e
   2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   6:	2e2e                	.insn	2, 0x2e2e
   8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   c:	2e2e                	.insn	2, 0x2e2e
   e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  12:	2f636367          	.insn	4, 0x2f636367
  16:	696c                	.insn	2, 0x696c
  18:	6762                	.insn	2, 0x6762
  1a:	732f6363          	bltu	t5,s2,740 <exit-0xf9e0>
  1e:	2d74666f          	jal	a2,46af4 <__BSS_END__+0x31b04>
  22:	7066                	.insn	2, 0x7066
  24:	2f00                	.insn	2, 0x2f00
  26:	6f68                	.insn	2, 0x6f68
  28:	656d                	.insn	2, 0x656d
  2a:	6575792f          	.insn	4, 0x6575792f
  2e:	2f72                	.insn	2, 0x2f72
  30:	796d                	.insn	2, 0x796d
  32:	7270                	.insn	2, 0x7270
  34:	69722f6f          	jal	t5,22eca <__BSS_END__+0xdeda>
  38:	2d766373          	.insn	4, 0x2d766373
  3c:	2d756e67          	.insn	4, 0x2d756e67
  40:	6f74                	.insn	2, 0x6f74
  42:	68636c6f          	jal	s8,366c8 <__BSS_END__+0x216d8>
  46:	6961                	.insn	2, 0x6961
  48:	2f6e                	.insn	2, 0x2f6e
  4a:	7562                	.insn	2, 0x7562
  4c:	6c69                	.insn	2, 0x6c69
  4e:	2f64                	.insn	2, 0x2f64
  50:	7562                	.insn	2, 0x7562
  52:	6c69                	.insn	2, 0x6c69
  54:	2d64                	.insn	2, 0x2d64
  56:	2d636367          	.insn	4, 0x2d636367
  5a:	656e                	.insn	2, 0x656e
  5c:	62696c77          	.insn	4, 0x62696c77
  60:	732d                	.insn	2, 0x732d
  62:	6174                	.insn	2, 0x6174
  64:	2f326567          	.insn	4, 0x2f326567
  68:	6972                	.insn	2, 0x6972
  6a:	36766373          	.insn	4, 0x36766373
  6e:	2d34                	.insn	2, 0x2d34
  70:	6e75                	.insn	2, 0x6e75
  72:	776f6e6b          	.insn	4, 0x776f6e6b
  76:	2d6e                	.insn	2, 0x2d6e
  78:	6c65                	.insn	2, 0x6c65
  7a:	2f66                	.insn	2, 0x2f66
  7c:	7672                	.insn	2, 0x7672
  7e:	3436                	.insn	2, 0x3436
  80:	6d69                	.insn	2, 0x6d69
  82:	36706c2f          	.insn	4, 0x36706c2f
  86:	2f34                	.insn	2, 0x2f34
  88:	696c                	.insn	2, 0x696c
  8a:	6762                	.insn	2, 0x6762
  8c:	2e006363          	bltu	zero,zero,372 <exit-0xfdae>
  90:	2f2e                	.insn	2, 0x2f2e
  92:	2e2e                	.insn	2, 0x2e2e
  94:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  98:	2e2e                	.insn	2, 0x2e2e
  9a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  9e:	2e2e                	.insn	2, 0x2e2e
  a0:	6363672f          	.insn	4, 0x6363672f
  a4:	62696c2f          	.insn	4, 0x62696c2f
  a8:	2f636367          	.insn	4, 0x2f636367
  ac:	74666f73          	.insn	4, 0x74666f73
  b0:	662d                	.insn	2, 0x662d
  b2:	2f70                	.insn	2, 0x2f70
  b4:	6461                	.insn	2, 0x6461
  b6:	6464                	.insn	2, 0x6464
  b8:	3366                	.insn	2, 0x3366
  ba:	632e                	.insn	2, 0x632e
  bc:	6400                	.insn	2, 0x6400
  be:	6c62756f          	jal	a0,27784 <__BSS_END__+0x12794>
  c2:	2e65                	.insn	2, 0x2e65
  c4:	0068                	.insn	2, 0x0068
  c6:	2e2e                	.insn	2, 0x2e2e
  c8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  cc:	2e2e                	.insn	2, 0x2e2e
  ce:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  d2:	2e2e                	.insn	2, 0x2e2e
  d4:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  d8:	2f636367          	.insn	4, 0x2f636367
  dc:	696c                	.insn	2, 0x696c
  de:	6762                	.insn	2, 0x6762
  e0:	732f6363          	bltu	t5,s2,806 <exit-0xf91a>
  e4:	2d74666f          	jal	a2,46bba <__BSS_END__+0x31bca>
  e8:	7066                	.insn	2, 0x7066
  ea:	6c756d2f          	.insn	4, 0x6c756d2f
  ee:	6664                	.insn	2, 0x6664
  f0:	00632e33          	slt	t3,t1,t1
  f4:	74666f73          	.insn	4, 0x74666f73
  f8:	662d                	.insn	2, 0x662d
  fa:	2e70                	.insn	2, 0x2e70
  fc:	0068                	.insn	2, 0x0068
  fe:	2e2e                	.insn	2, 0x2e2e
 100:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 104:	2e2e                	.insn	2, 0x2e2e
 106:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 10a:	2e2e                	.insn	2, 0x2e2e
 10c:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 110:	2f636367          	.insn	4, 0x2f636367
 114:	696c                	.insn	2, 0x696c
 116:	6762                	.insn	2, 0x6762
 118:	732f6363          	bltu	t5,s2,83e <exit-0xf8e2>
 11c:	2d74666f          	jal	a2,46bf2 <__BSS_END__+0x31c02>
 120:	7066                	.insn	2, 0x7066
 122:	6275732f          	.insn	4, 0x6275732f
 126:	6664                	.insn	2, 0x6664
 128:	00632e33          	slt	t3,t1,t1
 12c:	2e2e                	.insn	2, 0x2e2e
 12e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 132:	2e2e                	.insn	2, 0x2e2e
 134:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 138:	2e2e                	.insn	2, 0x2e2e
 13a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 13e:	2f636367          	.insn	4, 0x2f636367
 142:	696c                	.insn	2, 0x696c
 144:	6762                	.insn	2, 0x6762
 146:	732f6363          	bltu	t5,s2,86c <exit-0xf8b4>
 14a:	2d74666f          	jal	a2,46c20 <__BSS_END__+0x31c30>
 14e:	7066                	.insn	2, 0x7066
 150:	6f6c662f          	.insn	4, 0x6f6c662f
 154:	7461                	.insn	2, 0x7461
 156:	66646973          	.insn	4, 0x66646973
 15a:	632e                	.insn	2, 0x632e
 15c:	7300                	.insn	2, 0x7300
 15e:	6e69                	.insn	2, 0x6e69
 160:	2e656c67          	.insn	4, 0x2e656c67
 164:	0068                	.insn	2, 0x0068
 166:	2e2e                	.insn	2, 0x2e2e
 168:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 16c:	2e2e                	.insn	2, 0x2e2e
 16e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 172:	2e2e                	.insn	2, 0x2e2e
 174:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 178:	2f636367          	.insn	4, 0x2f636367
 17c:	696c                	.insn	2, 0x696c
 17e:	6762                	.insn	2, 0x6762
 180:	732f6363          	bltu	t5,s2,8a6 <exit-0xf87a>
 184:	2d74666f          	jal	a2,46c5a <__BSS_END__+0x31c6a>
 188:	7066                	.insn	2, 0x7066
 18a:	7478652f          	.insn	4, 0x7478652f
 18e:	6e65                	.insn	2, 0x6e65
 190:	7364                	.insn	2, 0x7364
 192:	6466                	.insn	2, 0x6466
 194:	3266                	.insn	2, 0x3266
 196:	632e                	.insn	2, 0x632e
 198:	2e00                	.insn	2, 0x2e00
 19a:	2f2e                	.insn	2, 0x2f2e
 19c:	2e2e                	.insn	2, 0x2e2e
 19e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1a2:	2e2e                	.insn	2, 0x2e2e
 1a4:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1a8:	2e2e                	.insn	2, 0x2e2e
 1aa:	6363672f          	.insn	4, 0x6363672f
 1ae:	62696c2f          	.insn	4, 0x62696c2f
 1b2:	2f636367          	.insn	4, 0x2f636367
 1b6:	74666f73          	.insn	4, 0x74666f73
 1ba:	662d                	.insn	2, 0x662d
 1bc:	2f70                	.insn	2, 0x2f70
 1be:	7274                	.insn	2, 0x7274
 1c0:	6e75                	.insn	2, 0x6e75
 1c2:	73666463          	bltu	a2,s6,8ea <exit-0xf836>
 1c6:	3266                	.insn	2, 0x3266
 1c8:	632e                	.insn	2, 0x632e
 1ca:	6c00                	.insn	2, 0x6c00
 1cc:	6269                	.insn	2, 0x6269
 1ce:	32636367          	.insn	4, 0x32636367
 1d2:	682e                	.insn	2, 0x682e
 1d4:	2e00                	.insn	2, 0x2e00
 1d6:	2f2e                	.insn	2, 0x2f2e
 1d8:	2e2e                	.insn	2, 0x2e2e
 1da:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1de:	2e2e                	.insn	2, 0x2e2e
 1e0:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1e4:	2e2e                	.insn	2, 0x2e2e
 1e6:	6363672f          	.insn	4, 0x6363672f
 1ea:	62696c2f          	.insn	4, 0x62696c2f
 1ee:	2f636367          	.insn	4, 0x2f636367
 1f2:	696c                	.insn	2, 0x696c
 1f4:	6762                	.insn	2, 0x6762
 1f6:	2e326363          	bltu	tp,gp,4dc <exit-0xfc44>
 1fa:	2e2e0063          	beq	t3,sp,4da <exit-0xfc46>
 1fe:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 202:	2e2e                	.insn	2, 0x2e2e
 204:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 208:	2e2e                	.insn	2, 0x2e2e
 20a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 20e:	2f636367          	.insn	4, 0x2f636367
 212:	696c                	.insn	2, 0x696c
 214:	6762                	.insn	2, 0x6762
 216:	006363 	.3byte	0x006363

Disassembly of section .debug_loclists:

0000000000000000 <.debug_loclists>:
       0:	0c5a                	.insn	2, 0x0c5a
       2:	0000                	.insn	2, 0x0000
       4:	0005                	.insn	2, 0x0005
       6:	0008                	.insn	2, 0x0008
       8:	0000                	.insn	2, 0x0000
       a:	0000                	.insn	2, 0x0000
       c:	5500                	.insn	2, 0x5500
       e:	6055                	.insn	2, 0x6055
      10:	6260                	.insn	2, 0x6260
      12:	6362                	.insn	2, 0x6362
      14:	80018063          	beqz	gp,fffffffffffff014 <__BSS_END__+0xfffffffffffea024>
      18:	8201                	.insn	2, 0x8201
      1a:	8201                	.insn	2, 0x8201
      1c:	8401                	.insn	2, 0x8401
      1e:	8401                	.insn	2, 0x8401
      20:	8601                	.insn	2, 0x8601
      22:	8601                	.insn	2, 0x8601
      24:	8d01                	.insn	2, 0x8d01
      26:	8d01                	.insn	2, 0x8d01
      28:	9701                	.insn	2, 0x9701
      2a:	9701                	.insn	2, 0x9701
      2c:	b601                	.insn	2, 0xb601
      2e:	b601                	.insn	2, 0xb601
      30:	cb01                	.insn	2, 0xcb01
      32:	cb01                	.insn	2, 0xcb01
      34:	df01                	.insn	2, 0xdf01
      36:	df01                	.insn	2, 0xdf01
      38:	f401                	.insn	2, 0xf401
      3a:	f401                	.insn	2, 0xf401
      3c:	8401                	.insn	2, 0x8401
      3e:	8402                	.insn	2, 0x8402
      40:	8802                	.insn	2, 0x8802
      42:	8802                	.insn	2, 0x8802
      44:	aa02                	.insn	2, 0xaa02
      46:	aa02                	.insn	2, 0xaa02
      48:	ad02                	.insn	2, 0xad02
      4a:	ad02                	.insn	2, 0xad02
      4c:	ae02                	.insn	2, 0xae02
      4e:	ae02                	.insn	2, 0xae02
      50:	b102                	.insn	2, 0xb102
      52:	b102                	.insn	2, 0xb102
      54:	b402                	.insn	2, 0xb402
      56:	b402                	.insn	2, 0xb402
      58:	c302                	.insn	2, 0xc302
      5a:	c302                	.insn	2, 0xc302
      5c:	cd02                	.insn	2, 0xcd02
      5e:	cd02                	.insn	2, 0xcd02
      60:	d402                	.insn	2, 0xd402
      62:	d402                	.insn	2, 0xd402
      64:	e002                	.insn	2, 0xe002
      66:	e002                	.insn	2, 0xe002
      68:	e202                	.insn	2, 0xe202
      6a:	e202                	.insn	2, 0xe202
      6c:	e802                	.insn	2, 0xe802
      6e:	e802                	.insn	2, 0xe802
      70:	e902                	.insn	2, 0xe902
      72:	e902                	.insn	2, 0xe902
      74:	8202                	.insn	2, 0x8202
      76:	9d038203          	lb	tp,-1584(t2)
      7a:	a2039d03          	lh	s10,-1504(t2)
      7e:	a603a203          	lw	tp,-1440(t2)
      82:	ae03a603          	lw	a2,-1312(t2)
      86:	0003ae03          	lw	t3,0(t2)
      8a:	0004                	.insn	2, 0x0004
      8c:	0164                	.insn	2, 0x0164
      8e:	045a                	.insn	2, 0x045a
      90:	9864                	.insn	2, 0x9864
      92:	0601                	.insn	2, 0x0601
      94:	0aa503a3          	sb	a0,167(a0)
      98:	98049f33          	.insn	4, 0x98049f33
      9c:	a001                	.insn	2, 0xa001
      9e:	0101                	.insn	2, 0x0101
      a0:	045a                	.insn	2, 0x045a
      a2:	01a0                	.insn	2, 0x01a0
      a4:	01a8                	.insn	2, 0x01a8
      a6:	a306                	.insn	2, 0xa306
      a8:	330aa503          	lw	a0,816(s5)
      ac:	049f 01a8 0280      	.insn	6, 0x028001a8049f
      b2:	5a01                	.insn	2, 0x5a01
      b4:	8004                	.insn	2, 0x8004
      b6:	8802                	.insn	2, 0x8802
      b8:	0602                	.insn	2, 0x0602
      ba:	0aa503a3          	sb	a0,167(a0)
      be:	88049f33          	.insn	4, 0x88049f33
      c2:	9002                	.insn	2, 0x9002
      c4:	0102                	.insn	2, 0x0102
      c6:	045a                	.insn	2, 0x045a
      c8:	0290                	.insn	2, 0x0290
      ca:	0298                	.insn	2, 0x0298
      cc:	a306                	.insn	2, 0xa306
      ce:	330aa503          	lw	a0,816(s5)
      d2:	049f 0298 02b4      	.insn	6, 0x02b40298049f
      d8:	5a01                	.insn	2, 0x5a01
      da:	b404                	.insn	2, 0xb404
      dc:	dc02                	.insn	2, 0xdc02
      de:	0602                	.insn	2, 0x0602
      e0:	0aa503a3          	sb	a0,167(a0)
      e4:	dc049f33          	.insn	4, 0xdc049f33
      e8:	9802                	.insn	2, 0x9802
      ea:	045a0103          	lb	sp,69(s4)
      ee:	0398                	.insn	2, 0x0398
      f0:	03cc                	.insn	2, 0x03cc
      f2:	a306                	.insn	2, 0xa306
      f4:	330aa503          	lw	a0,816(s5)
      f8:	049f 03cc 03f0      	.insn	6, 0x03f003cc049f
      fe:	5a01                	.insn	2, 0x5a01
     100:	f004                	.insn	2, 0xf004
     102:	0604b403          	ld	s0,96(s1)
     106:	0aa503a3          	sb	a0,167(a0)
     10a:	b4049f33          	.insn	4, 0xb4049f33
     10e:	cc04                	.insn	2, 0xcc04
     110:	0104                	.insn	2, 0x0104
     112:	045a                	.insn	2, 0x045a
     114:	04cc                	.insn	2, 0x04cc
     116:	04e0                	.insn	2, 0x04e0
     118:	a306                	.insn	2, 0xa306
     11a:	330aa503          	lw	a0,816(s5)
     11e:	049f 04e0 05c8      	.insn	6, 0x05c804e0049f
     124:	5a01                	.insn	2, 0x5a01
     126:	c804                	.insn	2, 0xc804
     128:	d405                	.insn	2, 0xd405
     12a:	0605                	.insn	2, 0x0605
     12c:	0aa503a3          	sb	a0,167(a0)
     130:	d4049f33          	.insn	4, 0xd4049f33
     134:	d805                	.insn	2, 0xd805
     136:	0105                	.insn	2, 0x0105
     138:	045a                	.insn	2, 0x045a
     13a:	05d8                	.insn	2, 0x05d8
     13c:	05e4                	.insn	2, 0x05e4
     13e:	a306                	.insn	2, 0xa306
     140:	330aa503          	lw	a0,816(s5)
     144:	049f 05e4 05f0      	.insn	6, 0x05f005e4049f
     14a:	5a01                	.insn	2, 0x5a01
     14c:	f004                	.insn	2, 0xf004
     14e:	a805                	.insn	2, 0xa805
     150:	0606                	.insn	2, 0x0606
     152:	0aa503a3          	sb	a0,167(a0)
     156:	a8049f33          	.insn	4, 0xa8049f33
     15a:	c806                	.insn	2, 0xc806
     15c:	0106                	.insn	2, 0x0106
     15e:	045a                	.insn	2, 0x045a
     160:	06c8                	.insn	2, 0x06c8
     162:	06e4                	.insn	2, 0x06e4
     164:	a306                	.insn	2, 0xa306
     166:	330aa503          	lw	a0,816(s5)
     16a:	049f 06e4 06fc      	.insn	6, 0x06fc06e4049f
     170:	5a01                	.insn	2, 0x5a01
     172:	fc04                	.insn	2, 0xfc04
     174:	8806                	.insn	2, 0x8806
     176:	03a30607          	.insn	4, 0x03a30607
     17a:	0aa5                	.insn	2, 0x0aa5
     17c:	88049f33          	.insn	4, 0x88049f33
     180:	01079407          	.insn	4, 0x01079407
     184:	045a                	.insn	2, 0x045a
     186:	0794                	.insn	2, 0x0794
     188:	079c                	.insn	2, 0x079c
     18a:	a306                	.insn	2, 0xa306
     18c:	330aa503          	lw	a0,816(s5)
     190:	049f 079c 07c8      	.insn	6, 0x07c8079c049f
     196:	5a01                	.insn	2, 0x5a01
     198:	c804                	.insn	2, 0xc804
     19a:	06088007          	.insn	4, 0x06088007
     19e:	0aa503a3          	sb	a0,167(a0)
     1a2:	80049f33          	.insn	4, 0x80049f33
     1a6:	9008                	.insn	2, 0x9008
     1a8:	0108                	.insn	2, 0x0108
     1aa:	045a                	.insn	2, 0x045a
     1ac:	0890                	.insn	2, 0x0890
     1ae:	08a8                	.insn	2, 0x08a8
     1b0:	a306                	.insn	2, 0xa306
     1b2:	330aa503          	lw	a0,816(s5)
     1b6:	049f 08a8 08c0      	.insn	6, 0x08c008a8049f
     1bc:	5a01                	.insn	2, 0x5a01
     1be:	c004                	.insn	2, 0xc004
     1c0:	c808                	.insn	2, 0xc808
     1c2:	0608                	.insn	2, 0x0608
     1c4:	0aa503a3          	sb	a0,167(a0)
     1c8:	00009f33          	sll	t5,ra,zero
     1cc:	2a2a                	.insn	2, 0x2a2a
     1ce:	0400                	.insn	2, 0x0400
     1d0:	3c00                	.insn	2, 0x3c00
     1d2:	5b01                	.insn	2, 0x5b01
     1d4:	3c04                	.insn	2, 0x3c04
     1d6:	08c8                	.insn	2, 0x08c8
     1d8:	a306                	.insn	2, 0xa306
     1da:	330ba503          	lw	a0,816(s7)
     1de:	009f 6202 8463      	.insn	6, 0x84636202009f
     1e4:	8601                	.insn	2, 0x8601
     1e6:	b101                	.insn	2, 0xb101
     1e8:	cb01                	.insn	2, 0xcb01
     1ea:	d001                	.insn	2, 0xd001
     1ec:	d801                	.insn	2, 0xd801
     1ee:	df01                	.insn	2, 0xdf01
     1f0:	f401                	.insn	2, 0xf401
     1f2:	cd01                	.insn	2, 0xcd01
     1f4:	d402                	.insn	2, 0xd402
     1f6:	e002                	.insn	2, 0xe002
     1f8:	e202                	.insn	2, 0xe202
     1fa:	e802                	.insn	2, 0xe802
     1fc:	e902                	.insn	2, 0xe902
     1fe:	ef02                	.insn	2, 0xef02
     200:	f802                	.insn	2, 0xf802
     202:	ae02                	.insn	2, 0xae02
     204:	a0000403          	lb	s0,-1536(zero) # fffffffffffffa00 <__BSS_END__+0xfffffffffffeaa10>
     208:	0201                	.insn	2, 0x0201
     20a:	9f30                	.insn	2, 0x9f30
     20c:	a804                	.insn	2, 0xa804
     20e:	9001                	.insn	2, 0x9001
     210:	0202                	.insn	2, 0x0202
     212:	9f30                	.insn	2, 0x9f30
     214:	9804                	.insn	2, 0x9804
     216:	8002                	.insn	2, 0x8002
     218:	9f300203          	lb	tp,-1549(zero) # fffffffffffff9f3 <__BSS_END__+0xfffffffffffeaa03>
     21c:	cc04                	.insn	2, 0xcc04
     21e:	0203cc03          	lbu	s8,32(t2)
     222:	9f30                	.insn	2, 0x9f30
     224:	dc04                	.insn	2, 0xdc04
     226:	0203f003          	.insn	4, 0x0203f003
     22a:	9f30                	.insn	2, 0x9f30
     22c:	b404                	.insn	2, 0xb404
     22e:	c804                	.insn	2, 0xc804
     230:	0206                	.insn	2, 0x0206
     232:	9f30                	.insn	2, 0x9f30
     234:	e404                	.insn	2, 0xe404
     236:	fc06                	.insn	2, 0xfc06
     238:	0206                	.insn	2, 0x0206
     23a:	9f30                	.insn	2, 0x9f30
     23c:	8804                	.insn	2, 0x8804
     23e:	02079407          	.insn	4, 0x02079407
     242:	9f30                	.insn	2, 0x9f30
     244:	9c04                	.insn	2, 0x9c04
     246:	02079c07          	.insn	4, 0x02079c07
     24a:	9f30                	.insn	2, 0x9f30
     24c:	b404                	.insn	2, 0xb404
     24e:	0208c007          	.insn	4, 0x0208c007
     252:	9f30                	.insn	2, 0x9f30
     254:	2400                	.insn	2, 0x2400
     256:	6362                	.insn	2, 0x6362
     258:	0184                	.insn	2, 0x0184
     25a:	0186                	.insn	2, 0x0186
     25c:	01b6                	.insn	2, 0x01b6
     25e:	01df01cb          	.insn	4, 0x01df01cb
     262:	01f4                	.insn	2, 0x01f4
     264:	0284                	.insn	2, 0x0284
     266:	0288                	.insn	2, 0x0288
     268:	02ac                	.insn	2, 0x02ac
     26a:	02ad                	.insn	2, 0x02ad
     26c:	02b0                	.insn	2, 0x02b0
     26e:	02b1                	.insn	2, 0x02b1
     270:	02cb02cb          	.insn	4, 0x02cb02cb
     274:	02cd                	.insn	2, 0x02cd
     276:	02d4                	.insn	2, 0x02d4
     278:	02e0                	.insn	2, 0x02e0
     27a:	02e2                	.insn	2, 0x02e2
     27c:	02e8                	.insn	2, 0x02e8
     27e:	02e9                	.insn	2, 0x02e9
     280:	02f6                	.insn	2, 0x02f6
     282:	02f6                	.insn	2, 0x02f6
     284:	02f8                	.insn	2, 0x02f8
     286:	02f8                	.insn	2, 0x02f8
     288:	0382                	.insn	2, 0x0382
     28a:	039d                	.insn	2, 0x039d
     28c:	03a2                	.insn	2, 0x03a2
     28e:	03a6                	.insn	2, 0x03a6
     290:	03ab03ab          	.insn	4, 0x03ab03ab
     294:	03ad                	.insn	2, 0x03ad
     296:	03ad                	.insn	2, 0x03ad
     298:	03ae                	.insn	2, 0x03ae
     29a:	3804                	.insn	2, 0x3804
     29c:	01a0                	.insn	2, 0x01a0
     29e:	5801                	.insn	2, 0x5801
     2a0:	a804                	.insn	2, 0xa804
     2a2:	9001                	.insn	2, 0x9001
     2a4:	0102                	.insn	2, 0x0102
     2a6:	0458                	.insn	2, 0x0458
     2a8:	0298                	.insn	2, 0x0298
     2aa:	0398                	.insn	2, 0x0398
     2ac:	5801                	.insn	2, 0x5801
     2ae:	cc04                	.insn	2, 0xcc04
     2b0:	0103f003          	.insn	4, 0x0103f003
     2b4:	0458                	.insn	2, 0x0458
     2b6:	04b4                	.insn	2, 0x04b4
     2b8:	04cc                	.insn	2, 0x04cc
     2ba:	5801                	.insn	2, 0x5801
     2bc:	e004                	.insn	2, 0xe004
     2be:	d004                	.insn	2, 0xd004
     2c0:	0105                	.insn	2, 0x0105
     2c2:	0458                	.insn	2, 0x0458
     2c4:	05d4                	.insn	2, 0x05d4
     2c6:	05e0                	.insn	2, 0x05e0
     2c8:	5801                	.insn	2, 0x5801
     2ca:	e404                	.insn	2, 0xe404
     2cc:	c005                	.insn	2, 0xc005
     2ce:	0106                	.insn	2, 0x0106
     2d0:	0458                	.insn	2, 0x0458
     2d2:	06c0                	.insn	2, 0x06c0
     2d4:	06c8                	.insn	2, 0x06c8
     2d6:	7a06                	.insn	2, 0x7a06
     2d8:	0800                	.insn	2, 0x0800
     2da:	049f253f 06fc06e4 	.insn	8, 0x06fc06e4049f253f
     2e2:	5801                	.insn	2, 0x5801
     2e4:	8804                	.insn	2, 0x8804
     2e6:	01079407          	.insn	4, 0x01079407
     2ea:	0458                	.insn	2, 0x0458
     2ec:	079c                	.insn	2, 0x079c
     2ee:	07a8                	.insn	2, 0x07a8
     2f0:	5801                	.insn	2, 0x5801
     2f2:	a804                	.insn	2, 0xa804
     2f4:	0607b407          	.insn	4, 0x0607b407
     2f8:	007a                	.insn	2, 0x007a
     2fa:	3f08                	.insn	2, 0x3f08
     2fc:	9f25                	.insn	2, 0x9f25
     2fe:	b404                	.insn	2, 0xb404
     300:	0107c807          	.insn	4, 0x0107c807
     304:	0458                	.insn	2, 0x0458
     306:	0880                	.insn	2, 0x0880
     308:	0890                	.insn	2, 0x0890
     30a:	5801                	.insn	2, 0x5801
     30c:	a804                	.insn	2, 0xa804
     30e:	b408                	.insn	2, 0xb408
     310:	0108                	.insn	2, 0x0108
     312:	0458                	.insn	2, 0x0458
     314:	08b4                	.insn	2, 0x08b4
     316:	08bc                	.insn	2, 0x08bc
     318:	7a06                	.insn	2, 0x7a06
     31a:	0800                	.insn	2, 0x0800
     31c:	049f253f 08c008bc 	.insn	8, 0x08c008bc049f253f
     324:	5801                	.insn	2, 0x5801
     326:	2000                	.insn	2, 0x2000
     328:	6055                	.insn	2, 0x6055
     32a:	6362                	.insn	2, 0x6362
     32c:	0181                	.insn	2, 0x0181
     32e:	0182                	.insn	2, 0x0182
     330:	0185                	.insn	2, 0x0185
     332:	0186                	.insn	2, 0x0186
     334:	01b6                	.insn	2, 0x01b6
     336:	01df01cb          	.insn	4, 0x01df01cb
     33a:	01f4                	.insn	2, 0x01f4
     33c:	0284                	.insn	2, 0x0284
     33e:	0288                	.insn	2, 0x0288
     340:	02ad02ab          	.insn	4, 0x02ad02ab
     344:	02cd                	.insn	2, 0x02cd
     346:	02d4                	.insn	2, 0x02d4
     348:	02e0                	.insn	2, 0x02e0
     34a:	02e2                	.insn	2, 0x02e2
     34c:	02e8                	.insn	2, 0x02e8
     34e:	02e9                	.insn	2, 0x02e9
     350:	02f702f7          	.insn	4, 0x02f702f7
     354:	02f8                	.insn	2, 0x02f8
     356:	02f8                	.insn	2, 0x02f8
     358:	0382                	.insn	2, 0x0382
     35a:	039d                	.insn	2, 0x039d
     35c:	03a1                	.insn	2, 0x03a1
     35e:	03a1                	.insn	2, 0x03a1
     360:	03a2                	.insn	2, 0x03a2
     362:	03a6                	.insn	2, 0x03a6
     364:	03ac                	.insn	2, 0x03ac
     366:	03ac                	.insn	2, 0x03ac
     368:	03ad                	.insn	2, 0x03ad
     36a:	03ad                	.insn	2, 0x03ad
     36c:	03ae                	.insn	2, 0x03ae
     36e:	2804                	.insn	2, 0x2804
     370:	0164                	.insn	2, 0x0164
     372:	0462                	.insn	2, 0x0462
     374:	0198                	.insn	2, 0x0198
     376:	01a0                	.insn	2, 0x01a0
     378:	6201                	.insn	2, 0x6201
     37a:	a804                	.insn	2, 0xa804
     37c:	8401                	.insn	2, 0x8401
     37e:	0102                	.insn	2, 0x0102
     380:	0462                	.insn	2, 0x0462
     382:	0288                	.insn	2, 0x0288
     384:	0294                	.insn	2, 0x0294
     386:	6201                	.insn	2, 0x6201
     388:	9804                	.insn	2, 0x9804
     38a:	9802                	.insn	2, 0x9802
     38c:	04620103          	lb	sp,70(tp) # 46 <exit-0x100da>
     390:	03cc                	.insn	2, 0x03cc
     392:	03f0                	.insn	2, 0x03f0
     394:	6201                	.insn	2, 0x6201
     396:	b404                	.insn	2, 0xb404
     398:	cc04                	.insn	2, 0xcc04
     39a:	0104                	.insn	2, 0x0104
     39c:	0462                	.insn	2, 0x0462
     39e:	04e0                	.insn	2, 0x04e0
     3a0:	05cc                	.insn	2, 0x05cc
     3a2:	6201                	.insn	2, 0x6201
     3a4:	d404                	.insn	2, 0xd404
     3a6:	c805                	.insn	2, 0xc805
     3a8:	0106                	.insn	2, 0x0106
     3aa:	0462                	.insn	2, 0x0462
     3ac:	06e4                	.insn	2, 0x06e4
     3ae:	06fc                	.insn	2, 0x06fc
     3b0:	6201                	.insn	2, 0x6201
     3b2:	8804                	.insn	2, 0x8804
     3b4:	01079407          	.insn	4, 0x01079407
     3b8:	0462                	.insn	2, 0x0462
     3ba:	079c                	.insn	2, 0x079c
     3bc:	07ac                	.insn	2, 0x07ac
     3be:	6201                	.insn	2, 0x6201
     3c0:	ac04                	.insn	2, 0xac04
     3c2:	0a07b407          	.insn	4, 0x0a07b407
     3c6:	007a                	.insn	2, 0x007a
     3c8:	3408                	.insn	2, 0x3408
     3ca:	0a25                	.insn	2, 0x0a25
     3cc:	07ff 9f1a b404 c807 	.insn	10, 0x0107c807b4049f1a07ff
     3d4:	0107 
     3d6:	0462                	.insn	2, 0x0462
     3d8:	0880                	.insn	2, 0x0880
     3da:	088c                	.insn	2, 0x088c
     3dc:	6201                	.insn	2, 0x6201
     3de:	8c04                	.insn	2, 0x8c04
     3e0:	9008                	.insn	2, 0x9008
     3e2:	0a08                	.insn	2, 0x0a08
     3e4:	007a                	.insn	2, 0x007a
     3e6:	3408                	.insn	2, 0x3408
     3e8:	0a25                	.insn	2, 0x0a25
     3ea:	07ff 9f1a a804 b808 	.insn	10, 0x0108b808a8049f1a07ff
     3f2:	0108 
     3f4:	0462                	.insn	2, 0x0462
     3f6:	08b8                	.insn	2, 0x08b8
     3f8:	08bc                	.insn	2, 0x08bc
     3fa:	7a0a                	.insn	2, 0x7a0a
     3fc:	0800                	.insn	2, 0x0800
     3fe:	2534                	.insn	2, 0x2534
     400:	ff0a                	.insn	2, 0xff0a
     402:	049f1a07          	.insn	4, 0x049f1a07
     406:	08bc                	.insn	2, 0x08bc
     408:	08c0                	.insn	2, 0x08c0
     40a:	6201                	.insn	2, 0x6201
     40c:	1c00                	.insn	2, 0x1c00
     40e:	5454                	.insn	2, 0x5454
     410:	6055                	.insn	2, 0x6055
     412:	6362                	.insn	2, 0x6362
     414:	74747373          	.insn	4, 0x74747373
     418:	7f7f                	.insn	2, 0x7f7f
     41a:	0180                	.insn	2, 0x0180
     41c:	0182                	.insn	2, 0x0182
     41e:	0194                	.insn	2, 0x0194
     420:	0196                	.insn	2, 0x0196
     422:	01970197          	auipc	gp,0x1970
     426:	01a301a3          	sb	s10,3(t1)
     42a:	01b1                	.insn	2, 0x01b1
     42c:	01de01cb          	.insn	4, 0x01de01cb
     430:	01de                	.insn	2, 0x01de
     432:	01df 01f4 0283      	.insn	6, 0x028301f401df
     438:	02840283          	lb	t0,40(s0)
     43c:	0288                	.insn	2, 0x0288
     43e:	02970297          	auipc	t0,0x2970
     442:	0298                	.insn	2, 0x0298
     444:	0298                	.insn	2, 0x0298
     446:	02a9                	.insn	2, 0x02a9
     448:	02a9                	.insn	2, 0x02a9
     44a:	02aa                	.insn	2, 0x02aa
     44c:	02ad                	.insn	2, 0x02ad
     44e:	02c0                	.insn	2, 0x02c0
     450:	02c2                	.insn	2, 0x02c2
     452:	02c302c3          	.insn	4, 0x02c302c3
     456:	02cd                	.insn	2, 0x02cd
     458:	02d4                	.insn	2, 0x02d4
     45a:	02de                	.insn	2, 0x02de
     45c:	02de                	.insn	2, 0x02de
     45e:	02e0                	.insn	2, 0x02e0
     460:	02e2                	.insn	2, 0x02e2
     462:	02e8                	.insn	2, 0x02e8
     464:	02e9                	.insn	2, 0x02e9
     466:	02f5                	.insn	2, 0x02f5
     468:	02f5                	.insn	2, 0x02f5
     46a:	02f8                	.insn	2, 0x02f8
     46c:	02f8                	.insn	2, 0x02f8
     46e:	0382                	.insn	2, 0x0382
     470:	039d                	.insn	2, 0x039d
     472:	03a0                	.insn	2, 0x03a0
     474:	03a0                	.insn	2, 0x03a0
     476:	03a2                	.insn	2, 0x03a2
     478:	03a6                	.insn	2, 0x03a6
     47a:	03a8                	.insn	2, 0x03a8
     47c:	03a8                	.insn	2, 0x03a8
     47e:	03a9                	.insn	2, 0x03a9
     480:	03a9                	.insn	2, 0x03a9
     482:	03ae                	.insn	2, 0x03ae
     484:	1c04                	.insn	2, 0x1c04
     486:	0164                	.insn	2, 0x0164
     488:	045f 6464 7a0f      	.insn	6, 0x7a0f6464045f
     48e:	1000                	.insn	2, 0x1000
     490:	ffff                	.insn	2, 0xffff
     492:	ffff                	.insn	2, 0xffff
     494:	ffff                	.insn	2, 0xffff
     496:	07ff 331a 9f24 9804 	.insn	10, 0xa00198049f24331a07ff
     49e:	a001 
     4a0:	0101                	.insn	2, 0x0101
     4a2:	045f 01a8 01e4      	.insn	6, 0x01e401a8045f
     4a8:	5f01                	.insn	2, 0x5f01
     4aa:	e404                	.insn	2, 0xe404
     4ac:	e801                	.insn	2, 0xe801
     4ae:	0f01                	.insn	2, 0x0f01
     4b0:	007a                	.insn	2, 0x007a
     4b2:	ff10                	.insn	2, 0xff10
     4b4:	ffff                	.insn	2, 0xffff
     4b6:	ffff                	.insn	2, 0xffff
     4b8:	ffff                	.insn	2, 0xffff
     4ba:	24331a07          	.insn	4, 0x24331a07
     4be:	049f 01e8 0280      	.insn	6, 0x028001e8049f
     4c4:	5f01                	.insn	2, 0x5f01
     4c6:	8004                	.insn	2, 0x8004
     4c8:	8002                	.insn	2, 0x8002
     4ca:	0f02                	.insn	2, 0x0f02
     4cc:	007a                	.insn	2, 0x007a
     4ce:	ff10                	.insn	2, 0xff10
     4d0:	ffff                	.insn	2, 0xffff
     4d2:	ffff                	.insn	2, 0xffff
     4d4:	ffff                	.insn	2, 0xffff
     4d6:	24331a07          	.insn	4, 0x24331a07
     4da:	049f 0288 02cc      	.insn	6, 0x02cc0288049f
     4e0:	5f01                	.insn	2, 0x5f01
     4e2:	d404                	.insn	2, 0xd404
     4e4:	dc02                	.insn	2, 0xdc02
     4e6:	0102                	.insn	2, 0x0102
     4e8:	02dc045b          	.insn	4, 0x02dc045b
     4ec:	02fc                	.insn	2, 0x02fc
     4ee:	5f01                	.insn	2, 0x5f01
     4f0:	fc04                	.insn	2, 0xfc04
     4f2:	8002                	.insn	2, 0x8002
     4f4:	007a0f03          	lb	t5,7(s4)
     4f8:	ff10                	.insn	2, 0xff10
     4fa:	ffff                	.insn	2, 0xffff
     4fc:	ffff                	.insn	2, 0xffff
     4fe:	ffff                	.insn	2, 0xffff
     500:	24331a07          	.insn	4, 0x24331a07
     504:	049f 03cc 03ec      	.insn	6, 0x03ec03cc049f
     50a:	5f01                	.insn	2, 0x5f01
     50c:	ec04                	.insn	2, 0xec04
     50e:	0f03f003          	.insn	4, 0x0f03f003
     512:	007a                	.insn	2, 0x007a
     514:	ff10                	.insn	2, 0xff10
     516:	ffff                	.insn	2, 0xffff
     518:	ffff                	.insn	2, 0xffff
     51a:	ffff                	.insn	2, 0xffff
     51c:	24331a07          	.insn	4, 0x24331a07
     520:	049f 04b4 04cc      	.insn	6, 0x04cc04b4049f
     526:	5f01                	.insn	2, 0x5f01
     528:	cc04                	.insn	2, 0xcc04
     52a:	cc04                	.insn	2, 0xcc04
     52c:	0f04                	.insn	2, 0x0f04
     52e:	007a                	.insn	2, 0x007a
     530:	ff10                	.insn	2, 0xff10
     532:	ffff                	.insn	2, 0xffff
     534:	ffff                	.insn	2, 0xffff
     536:	ffff                	.insn	2, 0xffff
     538:	24331a07          	.insn	4, 0x24331a07
     53c:	049f 04e0 0590      	.insn	6, 0x059004e0049f
     542:	5f01                	.insn	2, 0x5f01
     544:	9004                	.insn	2, 0x9004
     546:	9405                	.insn	2, 0x9405
     548:	0f05                	.insn	2, 0x0f05
     54a:	007a                	.insn	2, 0x007a
     54c:	ff10                	.insn	2, 0xff10
     54e:	ffff                	.insn	2, 0xffff
     550:	ffff                	.insn	2, 0xffff
     552:	ffff                	.insn	2, 0xffff
     554:	24331a07          	.insn	4, 0x24331a07
     558:	049f 0594 05c8      	.insn	6, 0x05c80594049f
     55e:	5f01                	.insn	2, 0x5f01
     560:	c804                	.insn	2, 0xc804
     562:	c805                	.insn	2, 0xc805
     564:	0f05                	.insn	2, 0x0f05
     566:	007a                	.insn	2, 0x007a
     568:	ff10                	.insn	2, 0xff10
     56a:	ffff                	.insn	2, 0xffff
     56c:	ffff                	.insn	2, 0xffff
     56e:	ffff                	.insn	2, 0xffff
     570:	24331a07          	.insn	4, 0x24331a07
     574:	049f 05d4 0698      	.insn	6, 0x069805d4049f
     57a:	5f01                	.insn	2, 0x5f01
     57c:	a004                	.insn	2, 0xa004
     57e:	a806                	.insn	2, 0xa806
     580:	0106                	.insn	2, 0x0106
     582:	045a                	.insn	2, 0x045a
     584:	06a8                	.insn	2, 0x06a8
     586:	06c8                	.insn	2, 0x06c8
     588:	5f01                	.insn	2, 0x5f01
     58a:	e404                	.insn	2, 0xe404
     58c:	f806                	.insn	2, 0xf806
     58e:	0106                	.insn	2, 0x0106
     590:	045f 06f8 06fc      	.insn	6, 0x06fc06f8045f
     596:	10007a0f          	.insn	4, 0x10007a0f
     59a:	ffff                	.insn	2, 0xffff
     59c:	ffff                	.insn	2, 0xffff
     59e:	ffff                	.insn	2, 0xffff
     5a0:	07ff 331a 9f24 8804 	.insn	10, 0x940788049f24331a07ff
     5a8:	9407 
     5aa:	045f0107          	.insn	4, 0x045f0107
     5ae:	079c                	.insn	2, 0x079c
     5b0:	07a4                	.insn	2, 0x07a4
     5b2:	5f01                	.insn	2, 0x5f01
     5b4:	a404                	.insn	2, 0xa404
     5b6:	0f07b407          	.insn	4, 0x0f07b407
     5ba:	007a                	.insn	2, 0x007a
     5bc:	ff10                	.insn	2, 0xff10
     5be:	ffff                	.insn	2, 0xffff
     5c0:	ffff                	.insn	2, 0xffff
     5c2:	ffff                	.insn	2, 0xffff
     5c4:	24331a07          	.insn	4, 0x24331a07
     5c8:	049f 07b4 07c8      	.insn	6, 0x07c807b4049f
     5ce:	5f01                	.insn	2, 0x5f01
     5d0:	8004                	.insn	2, 0x8004
     5d2:	8808                	.insn	2, 0x8808
     5d4:	0108                	.insn	2, 0x0108
     5d6:	045f 0888 0890      	.insn	6, 0x08900888045f
     5dc:	10007a0f          	.insn	4, 0x10007a0f
     5e0:	ffff                	.insn	2, 0xffff
     5e2:	ffff                	.insn	2, 0xffff
     5e4:	ffff                	.insn	2, 0xffff
     5e6:	07ff 331a 9f24 a804 	.insn	10, 0xac08a8049f24331a07ff
     5ee:	ac08 
     5f0:	0108                	.insn	2, 0x0108
     5f2:	045f 08ac 08b0      	.insn	6, 0x08b008ac045f
     5f8:	10007a0f          	.insn	4, 0x10007a0f
     5fc:	ffff                	.insn	2, 0xffff
     5fe:	ffff                	.insn	2, 0xffff
     600:	ffff                	.insn	2, 0xffff
     602:	07ff 331a 9f24 b004 	.insn	10, 0xc008b0049f24331a07ff
     60a:	c008 
     60c:	0108                	.insn	2, 0x0108
     60e:	005f 5535 6260      	.insn	6, 0x62605535005f
     614:	80746963          	bltu	s0,t2,fffffffffffff626 <__BSS_END__+0xfffffffffffea636>
     618:	8201                	.insn	2, 0x8201
     61a:	8301                	.insn	2, 0x8301
     61c:	8601                	.insn	2, 0x8601
     61e:	8701                	.insn	2, 0x8701
     620:	9701                	.insn	2, 0x9701
     622:	b601                	.insn	2, 0xb601
     624:	cb01                	.insn	2, 0xcb01
     626:	df01                	.insn	2, 0xdf01
     628:	f401                	.insn	2, 0xf401
     62a:	8401                	.insn	2, 0x8401
     62c:	8802                	.insn	2, 0x8802
     62e:	8d02                	.insn	2, 0x8d02
     630:	9802                	.insn	2, 0x9802
     632:	cd02                	.insn	2, 0xcd02
     634:	d402                	.insn	2, 0xd402
     636:	e002                	.insn	2, 0xe002
     638:	e202                	.insn	2, 0xe202
     63a:	e802                	.insn	2, 0xe802
     63c:	e902                	.insn	2, 0xe902
     63e:	8202                	.insn	2, 0x8202
     640:	a2039d03          	lh	s10,-1504(t2)
     644:	ae03a603          	lw	a2,-1312(t2)
     648:	64400403          	lb	s0,1604(zero) # 644 <exit-0xfadc>
     64c:	5b01                	.insn	2, 0x5b01
     64e:	9804                	.insn	2, 0x9804
     650:	a001                	.insn	2, 0xa001
     652:	0101                	.insn	2, 0x0101
     654:	01a8045b          	.insn	4, 0x01a8045b
     658:	01c0                	.insn	2, 0x01c0
     65a:	5b01                	.insn	2, 0x5b01
     65c:	e804                	.insn	2, 0xe804
     65e:	8001                	.insn	2, 0x8001
     660:	0102                	.insn	2, 0x0102
     662:	0288045b          	.insn	4, 0x0288045b
     666:	028c                	.insn	2, 0x028c
     668:	5b01                	.insn	2, 0x5b01
     66a:	9804                	.insn	2, 0x9804
     66c:	9c02                	.insn	2, 0x9c02
     66e:	0102                	.insn	2, 0x0102
     670:	02dc045b          	.insn	4, 0x02dc045b
     674:	0398                	.insn	2, 0x0398
     676:	5b01                	.insn	2, 0x5b01
     678:	cc04                	.insn	2, 0xcc04
     67a:	0103f003          	.insn	4, 0x0103f003
     67e:	04b4045b          	.insn	4, 0x04b4045b
     682:	04cc                	.insn	2, 0x04cc
     684:	5b01                	.insn	2, 0x5b01
     686:	e004                	.insn	2, 0xe004
     688:	ec04                	.insn	2, 0xec04
     68a:	0104                	.insn	2, 0x0104
     68c:	0594045b          	.insn	4, 0x0594045b
     690:	06c8                	.insn	2, 0x06c8
     692:	5b01                	.insn	2, 0x5b01
     694:	e404                	.insn	2, 0xe404
     696:	fc06                	.insn	2, 0xfc06
     698:	0106                	.insn	2, 0x0106
     69a:	0788045b          	.insn	4, 0x0788045b
     69e:	0794                	.insn	2, 0x0794
     6a0:	5b01                	.insn	2, 0x5b01
     6a2:	9c04                	.insn	2, 0x9c04
     6a4:	0107c807          	.insn	4, 0x0107c807
     6a8:	0880045b          	.insn	4, 0x0880045b
     6ac:	0890                	.insn	2, 0x0890
     6ae:	5b01                	.insn	2, 0x5b01
     6b0:	a804                	.insn	2, 0xa804
     6b2:	c008                	.insn	2, 0xc008
     6b4:	0108                	.insn	2, 0x0108
     6b6:	5534005b          	.insn	4, 0x5534005b
     6ba:	6160                	.insn	2, 0x6160
     6bc:	84746563          	bltu	s0,t2,fffffffffffff706 <__BSS_END__+0xfffffffffffea716>
     6c0:	8601                	.insn	2, 0x8601
     6c2:	9801                	.insn	2, 0x9801
     6c4:	f401                	.insn	2, 0xf401
     6c6:	8401                	.insn	2, 0x8401
     6c8:	8802                	.insn	2, 0x8802
     6ca:	8a02                	.insn	2, 0x8a02
     6cc:	9802                	.insn	2, 0x9802
     6ce:	9902                	.insn	2, 0x9902
     6d0:	9c02                	.insn	2, 0x9c02
     6d2:	cd02                	.insn	2, 0xcd02
     6d4:	d402                	.insn	2, 0xd402
     6d6:	dc02                	.insn	2, 0xdc02
     6d8:	e902                	.insn	2, 0xe902
     6da:	f302                	.insn	2, 0xf302
     6dc:	f802                	.insn	2, 0xf802
     6de:	8202                	.insn	2, 0x8202
     6e0:	a2039d03          	lh	s10,-1504(t2)
     6e4:	ad03a903          	lw	s2,-1328(t2)
     6e8:	64400403          	lb	s0,1604(zero) # 644 <exit-0xfadc>
     6ec:	5c01                	.insn	2, 0x5c01
     6ee:	9804                	.insn	2, 0x9804
     6f0:	9c01                	.insn	2, 0x9c01
     6f2:	0101                	.insn	2, 0x0101
     6f4:	045c                	.insn	2, 0x045c
     6f6:	01a8                	.insn	2, 0x01a8
     6f8:	01ac                	.insn	2, 0x01ac
     6fa:	5c01                	.insn	2, 0x5c01
     6fc:	e804                	.insn	2, 0xe804
     6fe:	9001                	.insn	2, 0x9001
     700:	0102                	.insn	2, 0x0102
     702:	045c                	.insn	2, 0x045c
     704:	0298                	.insn	2, 0x0298
     706:	02e4                	.insn	2, 0x02e4
     708:	5c01                	.insn	2, 0x5c01
     70a:	b404                	.insn	2, 0xb404
     70c:	cc04                	.insn	2, 0xcc04
     70e:	0104                	.insn	2, 0x0104
     710:	045c                	.insn	2, 0x045c
     712:	04e0                	.insn	2, 0x04e0
     714:	04e4                	.insn	2, 0x04e4
     716:	5c01                	.insn	2, 0x5c01
     718:	9404                	.insn	2, 0x9404
     71a:	9805                	.insn	2, 0x9805
     71c:	0105                	.insn	2, 0x0105
     71e:	045c                	.insn	2, 0x045c
     720:	05ac                	.insn	2, 0x05ac
     722:	06c8                	.insn	2, 0x06c8
     724:	5c01                	.insn	2, 0x5c01
     726:	e404                	.insn	2, 0xe404
     728:	f006                	.insn	2, 0xf006
     72a:	0106                	.insn	2, 0x0106
     72c:	045c                	.insn	2, 0x045c
     72e:	079c                	.insn	2, 0x079c
     730:	07a0                	.insn	2, 0x07a0
     732:	5c01                	.insn	2, 0x5c01
     734:	b404                	.insn	2, 0xb404
     736:	0107c807          	.insn	4, 0x0107c807
     73a:	045c                	.insn	2, 0x045c
     73c:	0880                	.insn	2, 0x0880
     73e:	0890                	.insn	2, 0x0890
     740:	5c01                	.insn	2, 0x5c01
     742:	b004                	.insn	2, 0xb004
     744:	bc08                	.insn	2, 0xbc08
     746:	0108                	.insn	2, 0x0108
     748:	005c                	.insn	2, 0x005c
     74a:	62605533          	.insn	4, 0x62605533
     74e:	74727063          	bgeu	tp,t2,e8e <exit-0xf292>
     752:	8474                	.insn	2, 0x8474
     754:	8601                	.insn	2, 0x8601
     756:	a101                	.insn	2, 0xa101
     758:	cb01                	.insn	2, 0xcb01
     75a:	d701                	.insn	2, 0xd701
     75c:	d801                	.insn	2, 0xd801
     75e:	dd01                	.insn	2, 0xdd01
     760:	f401                	.insn	2, 0xf401
     762:	8401                	.insn	2, 0x8401
     764:	8802                	.insn	2, 0x8802
     766:	9402                	.insn	2, 0x9402
     768:	9602                	.insn	2, 0x9602
     76a:	9802                	.insn	2, 0x9802
     76c:	9802                	.insn	2, 0x9802
     76e:	9b02                	.insn	2, 0x9b02
     770:	9c02                	.insn	2, 0x9c02
     772:	cd02                	.insn	2, 0xcd02
     774:	d402                	.insn	2, 0xd402
     776:	e002                	.insn	2, 0xe002
     778:	e202                	.insn	2, 0xe202
     77a:	e502                	.insn	2, 0xe502
     77c:	e902                	.insn	2, 0xe902
     77e:	8202                	.insn	2, 0x8202
     780:	a2039d03          	lh	s10,-1504(t2)
     784:	ae03a603          	lw	a2,-1312(t2)
     788:	64400403          	lb	s0,1604(zero) # 644 <exit-0xfadc>
     78c:	5e01                	.insn	2, 0x5e01
     78e:	9804                	.insn	2, 0x9804
     790:	a001                	.insn	2, 0xa001
     792:	0101                	.insn	2, 0x0101
     794:	045e                	.insn	2, 0x045e
     796:	01a8                	.insn	2, 0x01a8
     798:	01d8                	.insn	2, 0x01d8
     79a:	5e01                	.insn	2, 0x5e01
     79c:	e004                	.insn	2, 0xe004
     79e:	e801                	.insn	2, 0xe801
     7a0:	0101                	.insn	2, 0x0101
     7a2:	045c                	.insn	2, 0x045c
     7a4:	01e8                	.insn	2, 0x01e8
     7a6:	0290                	.insn	2, 0x0290
     7a8:	5e01                	.insn	2, 0x5e01
     7aa:	9804                	.insn	2, 0x9804
     7ac:	f802                	.insn	2, 0xf802
     7ae:	0102                	.insn	2, 0x0102
     7b0:	045e                	.insn	2, 0x045e
     7b2:	03cc                	.insn	2, 0x03cc
     7b4:	03d8                	.insn	2, 0x03d8
     7b6:	5e01                	.insn	2, 0x5e01
     7b8:	dc04                	.insn	2, 0xdc04
     7ba:	0103e803          	lwu	a6,16(t2)
     7be:	045e                	.insn	2, 0x045e
     7c0:	04b4                	.insn	2, 0x04b4
     7c2:	04cc                	.insn	2, 0x04cc
     7c4:	5e01                	.insn	2, 0x5e01
     7c6:	e004                	.insn	2, 0xe004
     7c8:	8404                	.insn	2, 0x8404
     7ca:	0105                	.insn	2, 0x0105
     7cc:	045e                	.insn	2, 0x045e
     7ce:	058c                	.insn	2, 0x058c
     7d0:	0594                	.insn	2, 0x0594
     7d2:	5c01                	.insn	2, 0x5c01
     7d4:	9404                	.insn	2, 0x9404
     7d6:	a805                	.insn	2, 0xa805
     7d8:	0105                	.insn	2, 0x0105
     7da:	045e                	.insn	2, 0x045e
     7dc:	05ac                	.insn	2, 0x05ac
     7de:	06c8                	.insn	2, 0x06c8
     7e0:	5e01                	.insn	2, 0x5e01
     7e2:	e404                	.insn	2, 0xe404
     7e4:	fc06                	.insn	2, 0xfc06
     7e6:	0106                	.insn	2, 0x0106
     7e8:	045e                	.insn	2, 0x045e
     7ea:	0788                	.insn	2, 0x0788
     7ec:	078c                	.insn	2, 0x078c
     7ee:	5e01                	.insn	2, 0x5e01
     7f0:	9c04                	.insn	2, 0x9c04
     7f2:	0107c807          	.insn	4, 0x0107c807
     7f6:	045e                	.insn	2, 0x045e
     7f8:	0880                	.insn	2, 0x0880
     7fa:	0890                	.insn	2, 0x0890
     7fc:	5e01                	.insn	2, 0x5e01
     7fe:	a804                	.insn	2, 0xa804
     800:	c008                	.insn	2, 0xc008
     802:	0108                	.insn	2, 0x0108
     804:	005e                	.insn	2, 0x005e
     806:	84636247          	.insn	4, 0x84636247
     80a:	8601                	.insn	2, 0x8601
     80c:	b101                	.insn	2, 0xb101
     80e:	b601                	.insn	2, 0xb601
     810:	c001                	.insn	2, 0xc001
     812:	cb01                	.insn	2, 0xcb01
     814:	d401                	.insn	2, 0xd401
     816:	d801                	.insn	2, 0xd801
     818:	df01                	.insn	2, 0xdf01
     81a:	fa01                	.insn	2, 0xfa01
     81c:	9c01                	.insn	2, 0x9c01
     81e:	a102                	.insn	2, 0xa102
     820:	c302                	.insn	2, 0xc302
     822:	da02                	.insn	2, 0xda02
     824:	df02                	.insn	2, 0xdf02
     826:	df02                	.insn	2, 0xdf02
     828:	e002                	.insn	2, 0xe002
     82a:	e202                	.insn	2, 0xe202
     82c:	e802                	.insn	2, 0xe802
     82e:	fd02                	.insn	2, 0xfd02
     830:	8102                	.insn	2, 0x8102
     832:	82038103          	lb	sp,-2016(t2)
     836:	a9038203          	lb	tp,-1392(t2)
     83a:	ab03a903          	lw	s2,-1360(t2)
     83e:	ae03ab03          	lw	s6,-1312(t2)
     842:	a04c0403          	lb	s0,-1532(s8)
     846:	0101                	.insn	2, 0x0101
     848:	0458                	.insn	2, 0x0458
     84a:	01a8                	.insn	2, 0x01a8
     84c:	0290                	.insn	2, 0x0290
     84e:	5801                	.insn	2, 0x5801
     850:	9804                	.insn	2, 0x9804
     852:	8002                	.insn	2, 0x8002
     854:	04580103          	lb	sp,69(a6)
     858:	0398                	.insn	2, 0x0398
     85a:	03ac                	.insn	2, 0x03ac
     85c:	5801                	.insn	2, 0x5801
     85e:	cc04                	.insn	2, 0xcc04
     860:	0103d003          	lhu	zero,16(t2)
     864:	0458                	.insn	2, 0x0458
     866:	03dc                	.insn	2, 0x03dc
     868:	03f0                	.insn	2, 0x03f0
     86a:	5801                	.insn	2, 0x5801
     86c:	b804                	.insn	2, 0xb804
     86e:	ac04                	.insn	2, 0xac04
     870:	0105                	.insn	2, 0x0105
     872:	0458                	.insn	2, 0x0458
     874:	05b4                	.insn	2, 0x05b4
     876:	06a8                	.insn	2, 0x06a8
     878:	5b01                	.insn	2, 0x5b01
     87a:	ec04                	.insn	2, 0xec04
     87c:	f806                	.insn	2, 0xf806
     87e:	0106                	.insn	2, 0x0106
     880:	0458                	.insn	2, 0x0458
     882:	06f8                	.insn	2, 0x06f8
     884:	06fc                	.insn	2, 0x06fc
     886:	5b01                	.insn	2, 0x5b01
     888:	8804                	.insn	2, 0x8804
     88a:	01079407          	.insn	4, 0x01079407
     88e:	0458                	.insn	2, 0x0458
     890:	07b8                	.insn	2, 0x07b8
     892:	07c4                	.insn	2, 0x07c4
     894:	5801                	.insn	2, 0x5801
     896:	c404                	.insn	2, 0xc404
     898:	0107c807          	.insn	4, 0x0107c807
     89c:	07c8045b          	.insn	4, 0x07c8045b
     8a0:	08b0                	.insn	2, 0x08b0
     8a2:	5801                	.insn	2, 0x5801
     8a4:	b004                	.insn	2, 0xb004
     8a6:	b408                	.insn	2, 0xb408
     8a8:	0108                	.insn	2, 0x0108
     8aa:	08b4045b          	.insn	4, 0x08b4045b
     8ae:	08c0                	.insn	2, 0x08c0
     8b0:	5801                	.insn	2, 0x5801
     8b2:	4b00                	.insn	2, 0x4b00
     8b4:	6362                	.insn	2, 0x6362
     8b6:	7774                	.insn	2, 0x7774
     8b8:	0184                	.insn	2, 0x0184
     8ba:	0186                	.insn	2, 0x0186
     8bc:	019b0197          	auipc	gp,0x19b0
     8c0:	01b1                	.insn	2, 0x01b1
     8c2:	01b1                	.insn	2, 0x01b1
     8c4:	01b6                	.insn	2, 0x01b6
     8c6:	01d2                	.insn	2, 0x01d2
     8c8:	01d8                	.insn	2, 0x01d8
     8ca:	01da                	.insn	2, 0x01da
     8cc:	01df 01ee 01f4      	.insn	6, 0x01f401ee01df
     8d2:	01f9                	.insn	2, 0x01f9
     8d4:	029c                	.insn	2, 0x029c
     8d6:	02a0                	.insn	2, 0x02a0
     8d8:	02c602c3          	.insn	4, 0x02c602c3
     8dc:	02cd                	.insn	2, 0x02cd
     8de:	02cd                	.insn	2, 0x02cd
     8e0:	02d2                	.insn	2, 0x02d2
     8e2:	02d4                	.insn	2, 0x02d4
     8e4:	02e0                	.insn	2, 0x02e0
     8e6:	02e2                	.insn	2, 0x02e2
     8e8:	02e8                	.insn	2, 0x02e8
     8ea:	02f1                	.insn	2, 0x02f1
     8ec:	02f8                	.insn	2, 0x02f8
     8ee:	02fa                	.insn	2, 0x02fa
     8f0:	03970397          	auipc	t2,0x3970
     8f4:	039d                	.insn	2, 0x039d
     8f6:	039d                	.insn	2, 0x039d
     8f8:	03a1                	.insn	2, 0x03a1
     8fa:	03a1                	.insn	2, 0x03a1
     8fc:	03a2                	.insn	2, 0x03a2
     8fe:	03a2                	.insn	2, 0x03a2
     900:	03a6                	.insn	2, 0x03a6
     902:	03a6                	.insn	2, 0x03a6
     904:	03a9                	.insn	2, 0x03a9
     906:	03a9                	.insn	2, 0x03a9
     908:	03ad                	.insn	2, 0x03ad
     90a:	03ad                	.insn	2, 0x03ad
     90c:	03ae                	.insn	2, 0x03ae
     90e:	03ae                	.insn	2, 0x03ae
     910:	0400                	.insn	2, 0x0400
     912:	a050                	.insn	2, 0xa050
     914:	0101                	.insn	2, 0x0101
     916:	0462                	.insn	2, 0x0462
     918:	01a8                	.insn	2, 0x01a8
     91a:	01e8                	.insn	2, 0x01e8
     91c:	6201                	.insn	2, 0x6201
     91e:	ec04                	.insn	2, 0xec04
     920:	9001                	.insn	2, 0x9001
     922:	0102                	.insn	2, 0x0102
     924:	045c                	.insn	2, 0x045c
     926:	0298                	.insn	2, 0x0298
     928:	02dc                	.insn	2, 0x02dc
     92a:	5c01                	.insn	2, 0x5c01
     92c:	ec04                	.insn	2, 0xec04
     92e:	8002                	.insn	2, 0x8002
     930:	9f300203          	lb	tp,-1549(zero) # fffffffffffff9f3 <__BSS_END__+0xfffffffffffeaa03>
     934:	8004                	.insn	2, 0x8004
     936:	02039803          	lh	a6,32(t2) # 3970910 <__BSS_END__+0x395b920>
     93a:	9f31                	.insn	2, 0x9f31
     93c:	cc04                	.insn	2, 0xcc04
     93e:	0403dc03          	lhu	s8,64(t2)
     942:	ff0a                	.insn	2, 0xff0a
     944:	dc049f07          	.insn	4, 0xdc049f07
     948:	0103f003          	.insn	4, 0x0103f003
     94c:	045d                	.insn	2, 0x045d
     94e:	0494                	.insn	2, 0x0494
     950:	04b4                	.insn	2, 0x04b4
     952:	6201                	.insn	2, 0x6201
     954:	b804                	.insn	2, 0xb804
     956:	ac04                	.insn	2, 0xac04
     958:	0105                	.insn	2, 0x0105
     95a:	0462                	.insn	2, 0x0462
     95c:	05b4                	.insn	2, 0x05b4
     95e:	06a8                	.insn	2, 0x06a8
     960:	5c01                	.insn	2, 0x5c01
     962:	b804                	.insn	2, 0xb804
     964:	c806                	.insn	2, 0xc806
     966:	0206                	.insn	2, 0x0206
     968:	9f30                	.insn	2, 0x9f30
     96a:	c804                	.insn	2, 0xc804
     96c:	d406                	.insn	2, 0xd406
     96e:	0106                	.insn	2, 0x0106
     970:	0462                	.insn	2, 0x0462
     972:	06e4                	.insn	2, 0x06e4
     974:	06fc                	.insn	2, 0x06fc
     976:	3002                	.insn	2, 0x3002
     978:	049f 0788 0794      	.insn	6, 0x07940788049f
     97e:	3002                	.insn	2, 0x3002
     980:	049f 079c 07b4      	.insn	6, 0x07b4079c049f
     986:	0a04                	.insn	2, 0x0a04
     988:	07ff 049f 07b4 07fc 	.insn	10, 0x620107fc07b4049f07ff
     990:	6201 
     992:	fc04                	.insn	2, 0xfc04
     994:	02088007          	.insn	4, 0x02088007
     998:	9f30                	.insn	2, 0x9f30
     99a:	8004                	.insn	2, 0x8004
     99c:	8c08                	.insn	2, 0x8c08
     99e:	0108                	.insn	2, 0x0108
     9a0:	0462                	.insn	2, 0x0462
     9a2:	088c                	.insn	2, 0x088c
     9a4:	0890                	.insn	2, 0x0890
     9a6:	7a0a                	.insn	2, 0x7a0a
     9a8:	0800                	.insn	2, 0x0800
     9aa:	2534                	.insn	2, 0x2534
     9ac:	ff0a                	.insn	2, 0xff0a
     9ae:	049f1a07          	.insn	4, 0x049f1a07
     9b2:	0890                	.insn	2, 0x0890
     9b4:	08a8                	.insn	2, 0x08a8
     9b6:	6201                	.insn	2, 0x6201
     9b8:	a804                	.insn	2, 0xa804
     9ba:	b008                	.insn	2, 0xb008
     9bc:	0208                	.insn	2, 0x0208
     9be:	9f30                	.insn	2, 0x9f30
     9c0:	b004                	.insn	2, 0xb004
     9c2:	bc08                	.insn	2, 0xbc08
     9c4:	0108                	.insn	2, 0x0108
     9c6:	045c                	.insn	2, 0x045c
     9c8:	08bc                	.insn	2, 0x08bc
     9ca:	08c0                	.insn	2, 0x08c0
     9cc:	5d01                	.insn	2, 0x5d01
     9ce:	c004                	.insn	2, 0xc004
     9d0:	c808                	.insn	2, 0xc808
     9d2:	0108                	.insn	2, 0x0108
     9d4:	0062                	.insn	2, 0x0062
     9d6:	5854                	.insn	2, 0x5854
     9d8:	5b58                	.insn	2, 0x5b58
     9da:	5e5d5d5b          	.insn	4, 0x5e5d5d5b
     9de:	5f5e                	.insn	2, 0x5f5e
     9e0:	827f7473          	.insn	4, 0x827f7473
     9e4:	a101                	.insn	2, 0xa101
     9e6:	b101                	.insn	2, 0xb101
     9e8:	b101                	.insn	2, 0xb101
     9ea:	b301                	.insn	2, 0xb301
     9ec:	b401                	.insn	2, 0xb401
     9ee:	bf01                	.insn	2, 0xbf01
     9f0:	db01                	.insn	2, 0xdb01
     9f2:	dd01                	.insn	2, 0xdd01
     9f4:	dd01                	.insn	2, 0xdd01
     9f6:	df01                	.insn	2, 0xdf01
     9f8:	e801                	.insn	2, 0xe801
     9fa:	ec01                	.insn	2, 0xec01
     9fc:	ec01                	.insn	2, 0xec01
     9fe:	f201                	.insn	2, 0xf201
     a00:	f301                	.insn	2, 0xf301
     a02:	f401                	.insn	2, 0xf401
     a04:	8301                	.insn	2, 0x8301
     a06:	8802                	.insn	2, 0x8802
     a08:	9702                	.insn	2, 0x9702
     a0a:	9802                	.insn	2, 0x9802
     a0c:	a902                	.insn	2, 0xa902
     a0e:	ad02                	.insn	2, 0xad02
     a10:	c902                	.insn	2, 0xc902
     a12:	d002                	.insn	2, 0xd002
     a14:	d002                	.insn	2, 0xd002
     a16:	d202                	.insn	2, 0xd202
     a18:	d902                	.insn	2, 0xd902
     a1a:	de02                	.insn	2, 0xde02
     a1c:	de02                	.insn	2, 0xde02
     a1e:	e002                	.insn	2, 0xe002
     a20:	e202                	.insn	2, 0xe202
     a22:	e802                	.insn	2, 0xe802
     a24:	fc02                	.insn	2, 0xfc02
     a26:	9402                	.insn	2, 0x9402
     a28:	9d039703          	lh	a4,-1584(t2)
     a2c:	a5039d03          	lh	s10,-1456(t2)
     a30:	a603a503          	lw	a0,-1440(t2)
     a34:	ae03ad03          	lw	s10,-1312(t2)
     a38:	6c640403          	lb	s0,1734(s0)
     a3c:	5f01                	.insn	2, 0x5f01
     a3e:	6c04                	.insn	2, 0x6c04
     a40:	0e70                	.insn	2, 0x0e70
     a42:	007f ff11 ffff ffff 	.insn	10, 0xffffffffffffff11007f
     a4a:	ffff 
     a4c:	9f1a7fbf 01847004 	.insn	8, 0x018470049f1a7fbf
     a54:	7f15                	.insn	2, 0x7f15
     a56:	3100                	.insn	2, 0x3100
     a58:	1025                	.insn	2, 0x1025
     a5a:	ffff                	.insn	2, 0xffff
     a5c:	ffff                	.insn	2, 0xffff
     a5e:	ffff                	.insn	2, 0xffff
     a60:	1a7fdfff 1a31007f 	.insn	20, 0xff10007d1301900184049f211a31007f1a7fdfff
     a68:	84049f21 13019001 
     a70:	ff10007d 
     a74:	ffff                	.insn	2, 0xffff
     a76:	ffff                	.insn	2, 0xffff
     a78:	ffff                	.insn	2, 0xffff
     a7a:	7fdf 7f1a 3100      	.insn	6, 0x31007f1a7fdf
     a80:	211a                	.insn	2, 0x211a
     a82:	049f 0190 0194      	.insn	6, 0x01940190049f
     a88:	7d11                	.insn	2, 0x7d11
     a8a:	1000                	.insn	2, 0x1000
     a8c:	ffff                	.insn	2, 0xffff
     a8e:	ffff                	.insn	2, 0xffff
     a90:	ffff                	.insn	2, 0xffff
     a92:	1a7fdfff 9f21007f 	.insn	20, 0x02880280045f0101e801e4049f21007f1a7fdfff
     a9a:	e801e404 045f0101 
     aa2:	02880280 
     aa6:	5f01                	.insn	2, 0x5f01
     aa8:	f804                	.insn	2, 0xf804
     aaa:	8002                	.insn	2, 0x8002
     aac:	045e0103          	lb	sp,69(t3)
     ab0:	0380                	.insn	2, 0x0380
     ab2:	038c                	.insn	2, 0x038c
     ab4:	7e0e                	.insn	2, 0x7e0e
     ab6:	1100                	.insn	2, 0x1100
     ab8:	ffff                	.insn	2, 0xffff
     aba:	ffff                	.insn	2, 0xffff
     abc:	ffff                	.insn	2, 0xffff
     abe:	1a7fbfff 0394049f 	.insn	16, 0xe803dc045f0103a00394049f1a7fbfff
     ac6:	5f0103a0 e803dc04 
     ace:	007f0803          	lb	a6,7(t5)
     ad2:	007e                	.insn	2, 0x007e
     ad4:	3122                	.insn	2, 0x3122
     ad6:	9f25                	.insn	2, 0x9f25
     ad8:	e804                	.insn	2, 0xe804
     ada:	0503f003          	.insn	4, 0x0503f003
     ade:	007e                	.insn	2, 0x007e
     ae0:	2531                	.insn	2, 0x2531
     ae2:	049f 0488 0490      	.insn	6, 0x04900488049f
     ae8:	5f01                	.insn	2, 0x5f01
     aea:	9004                	.insn	2, 0x9004
     aec:	a804                	.insn	2, 0xa804
     aee:	0e04                	.insn	2, 0x0e04
     af0:	007f ff11 ffff ffff 	.insn	10, 0xffffffffffffff11007f
     af8:	ffff 
     afa:	9f1a7fbf b404b004 	.insn	8, 0xb404b0049f1a7fbf
     b02:	0104                	.insn	2, 0x0104
     b04:	045f 04cc 04e0      	.insn	6, 0x04e004cc045f
     b0a:	5f01                	.insn	2, 0x5f01
     b0c:	9004                	.insn	2, 0x9004
     b0e:	9405                	.insn	2, 0x9405
     b10:	0105                	.insn	2, 0x0105
     b12:	045f 05c8 05d4      	.insn	6, 0x05d405c8045f
     b18:	5f01                	.insn	2, 0x5f01
     b1a:	bc04                	.insn	2, 0xbc04
     b1c:	cc06                	.insn	2, 0xcc06
     b1e:	0106                	.insn	2, 0x0106
     b20:	045e                	.insn	2, 0x045e
     b22:	06cc                	.insn	2, 0x06cc
     b24:	06d4                	.insn	2, 0x06d4
     b26:	5f01                	.insn	2, 0x5f01
     b28:	ec04                	.insn	2, 0xec04
     b2a:	f806                	.insn	2, 0xf806
     b2c:	0106                	.insn	2, 0x0106
     b2e:	045d                	.insn	2, 0x045d
     b30:	06f8                	.insn	2, 0x06f8
     b32:	06fc                	.insn	2, 0x06fc
     b34:	5f01                	.insn	2, 0x5f01
     b36:	8804                	.insn	2, 0x8804
     b38:	01079407          	.insn	4, 0x01079407
     b3c:	045d                	.insn	2, 0x045d
     b3e:	07b8                	.insn	2, 0x07b8
     b40:	07f4                	.insn	2, 0x07f4
     b42:	5901                	.insn	2, 0x5901
     b44:	fc04                	.insn	2, 0xfc04
     b46:	01088007          	.insn	4, 0x01088007
     b4a:	045f 0880 08a4      	.insn	6, 0x08a40880045f
     b50:	5901                	.insn	2, 0x5901
     b52:	a404                	.insn	2, 0xa404
     b54:	a808                	.insn	2, 0xa808
     b56:	0108                	.insn	2, 0x0108
     b58:	045f 08bc 08c0      	.insn	6, 0x08c008bc045f
     b5e:	7f08                	.insn	2, 0x7f08
     b60:	7e00                	.insn	2, 0x7e00
     b62:	2200                	.insn	2, 0x2200
     b64:	2531                	.insn	2, 0x2531
     b66:	009f 01c2 01ca      	.insn	6, 0x01ca01c2009f
     b6c:	01ca                	.insn	2, 0x01ca
     b6e:	b00401cb          	.insn	4, 0xb00401cb
     b72:	0803b803          	ld	a6,128(t2)
     b76:	007a                	.insn	2, 0x007a
     b78:	0078                	.insn	2, 0x0078
     b7a:	a921                	.insn	2, 0xa921
     b7c:	b8049f33          	.insn	4, 0xb8049f33
     b80:	0103cc03          	lbu	s8,16(t2)
     b84:	005a                	.insn	2, 0x005a
     b86:	5551                	.insn	2, 0x5551
     b88:	6260                	.insn	2, 0x6260
     b8a:	7c766f67          	.insn	4, 0x7c766f67
     b8e:	807c                	.insn	2, 0x807c
     b90:	8201                	.insn	2, 0x8201
     b92:	8401                	.insn	2, 0x8401
     b94:	8601                	.insn	2, 0x8601
     b96:	8a01                	.insn	2, 0x8a01
     b98:	8b01                	.insn	2, 0x8b01
     b9a:	9301                	.insn	2, 0x9301
     b9c:	0401                	.insn	2, 0x0401
     b9e:	645c                	.insn	2, 0x645c
     ba0:	5d01                	.insn	2, 0x5d01
     ba2:	9804                	.insn	2, 0x9804
     ba4:	a001                	.insn	2, 0xa001
     ba6:	0101                	.insn	2, 0x0101
     ba8:	045d                	.insn	2, 0x045d
     baa:	01bc                	.insn	2, 0x01bc
     bac:	01d4                	.insn	2, 0x01d4
     bae:	5d01                	.insn	2, 0x5d01
     bb0:	ec04                	.insn	2, 0xec04
     bb2:	f801                	.insn	2, 0xf801
     bb4:	0401                	.insn	2, 0x0401
     bb6:	007d                	.insn	2, 0x007d
     bb8:	9f1f f804 8001      	.insn	6, 0x8001f8049f1f
     bbe:	0102                	.insn	2, 0x0102
     bc0:	045d                	.insn	2, 0x045d
     bc2:	0288                	.insn	2, 0x0288
     bc4:	0290                	.insn	2, 0x0290
     bc6:	5d01                	.insn	2, 0x5d01
     bc8:	9804                	.insn	2, 0x9804
     bca:	ac02                	.insn	2, 0xac02
     bcc:	0402                	.insn	2, 0x0402
     bce:	007d                	.insn	2, 0x007d
     bd0:	9f1f b004 c802      	.insn	6, 0xc802b0049f1f
     bd6:	0102                	.insn	2, 0x0102
     bd8:	005d                	.insn	2, 0x005d
     bda:	0280                	.insn	2, 0x0280
     bdc:	0284                	.insn	2, 0x0284
     bde:	0288                	.insn	2, 0x0288
     be0:	029f0293          	addi	t0,t5,41
     be4:	02a6                	.insn	2, 0x02a6
     be6:	02a6                	.insn	2, 0x02a6
     be8:	02aa                	.insn	2, 0x02aa
     bea:	02ad                	.insn	2, 0x02ad
     bec:	02b102af          	.insn	4, 0x02b102af
     bf0:	02b2                	.insn	2, 0x02b2
     bf2:	02bf02b7          	lui	t0,0x2bf0
     bf6:	03a9                	.insn	2, 0x03a9
     bf8:	c40403ab          	.insn	4, 0xc40403ab
     bfc:	cc04                	.insn	2, 0xcc04
     bfe:	0104                	.insn	2, 0x0104
     c00:	045d                	.insn	2, 0x045d
     c02:	04e0                	.insn	2, 0x04e0
     c04:	0580                	.insn	2, 0x0580
     c06:	5d01                	.insn	2, 0x5d01
     c08:	b404                	.insn	2, 0xb404
     c0a:	c005                	.insn	2, 0xc005
     c0c:	0405                	.insn	2, 0x0405
     c0e:	007d                	.insn	2, 0x007d
     c10:	9f1f c004 c805      	.insn	6, 0xc805c0049f1f
     c16:	0105                	.insn	2, 0x0105
     c18:	045d                	.insn	2, 0x045d
     c1a:	05d4                	.insn	2, 0x05d4
     c1c:	05dc                	.insn	2, 0x05dc
     c1e:	5d01                	.insn	2, 0x5d01
     c20:	e404                	.insn	2, 0xe404
     c22:	e805                	.insn	2, 0xe805
     c24:	0405                	.insn	2, 0x0405
     c26:	007d                	.insn	2, 0x007d
     c28:	9f1f fc04 9405      	.insn	6, 0x9405fc049f1f
     c2e:	0106                	.insn	2, 0x0106
     c30:	045d                	.insn	2, 0x045d
     c32:	08b0                	.insn	2, 0x08b0
     c34:	08b4                	.insn	2, 0x08b4
     c36:	7d04                	.insn	2, 0x7d04
     c38:	1f00                	.insn	2, 0x1f00
     c3a:	009f 0387 038f      	.insn	6, 0x038f0387009f
     c40:	0390                	.insn	2, 0x0390
     c42:	039d                	.insn	2, 0x039d
     c44:	03a2                	.insn	2, 0x03a2
     c46:	03a6                	.insn	2, 0x03a6
     c48:	d004                	.insn	2, 0xd004
     c4a:	0107e007          	.insn	4, 0x0107e007
     c4e:	045a                	.insn	2, 0x045a
     c50:	07e4                	.insn	2, 0x07e4
     c52:	0880                	.insn	2, 0x0880
     c54:	5a01                	.insn	2, 0x5a01
     c56:	9004                	.insn	2, 0x9004
     c58:	a808                	.insn	2, 0xa808
     c5a:	0108                	.insn	2, 0x0108
     c5c:	005a                	.insn	2, 0x005a
     c5e:	0535                	.insn	2, 0x0535
     c60:	0000                	.insn	2, 0x0000
     c62:	0005                	.insn	2, 0x0005
     c64:	0008                	.insn	2, 0x0008
     c66:	0000                	.insn	2, 0x0000
     c68:	0000                	.insn	2, 0x0000
     c6a:	2e00                	.insn	2, 0x2e00
     c6c:	bf2e                	.insn	2, 0xbf2e
     c6e:	bf01                	.insn	2, 0xbf01
     c70:	c801                	.insn	2, 0xc801
     c72:	c801                	.insn	2, 0xc801
     c74:	d301                	.insn	2, 0xd301
     c76:	d301                	.insn	2, 0xd301
     c78:	dc01                	.insn	2, 0xdc01
     c7a:	dc01                	.insn	2, 0xdc01
     c7c:	0001                	.insn	2, 0x0001
     c7e:	0004                	.insn	2, 0x0004
     c80:	0158                	.insn	2, 0x0158
     c82:	045a                	.insn	2, 0x045a
     c84:	d058                	.insn	2, 0xd058
     c86:	03a30603          	lb	a2,58(t1)
     c8a:	0aa5                	.insn	2, 0x0aa5
     c8c:	d0049f33          	.insn	4, 0xd0049f33
     c90:	0103d803          	lhu	a6,16(t2)
     c94:	045a                	.insn	2, 0x045a
     c96:	03d8                	.insn	2, 0x03d8
     c98:	03f4                	.insn	2, 0x03f4
     c9a:	a306                	.insn	2, 0xa306
     c9c:	330aa503          	lw	a0,816(s5)
     ca0:	049f 03f4 0494      	.insn	6, 0x049403f4049f
     ca6:	5a01                	.insn	2, 0x5a01
     ca8:	9404                	.insn	2, 0x9404
     caa:	c404                	.insn	2, 0xc404
     cac:	0606                	.insn	2, 0x0606
     cae:	0aa503a3          	sb	a0,167(a0)
     cb2:	00009f33          	sll	t5,ra,zero
     cb6:	2e2e                	.insn	2, 0x2e2e
     cb8:	01bf3b3b          	.insn	4, 0x01bf3b3b
     cbc:	01c901bf 01d301c9 	.insn	8, 0x01d301c901c901bf
     cc4:	01dc01d3          	.insn	4, 0x01dc01d3
     cc8:	01dc                	.insn	2, 0x01dc
     cca:	0400                	.insn	2, 0x0400
     ccc:	5800                	.insn	2, 0x5800
     cce:	5b01                	.insn	2, 0x5b01
     cd0:	5804                	.insn	2, 0x5804
     cd2:	0170                	.insn	2, 0x0170
     cd4:	0465                	.insn	2, 0x0465
     cd6:	d070                	.insn	2, 0xd070
     cd8:	03a30603          	lb	a2,58(t1)
     cdc:	0ba5                	.insn	2, 0x0ba5
     cde:	d0049f33          	.insn	4, 0xd0049f33
     ce2:	0103db03          	lhu	s6,16(t2)
     ce6:	03db045b          	.insn	4, 0x03db045b
     cea:	03f4                	.insn	2, 0x03f4
     cec:	6501                	.insn	2, 0x6501
     cee:	f404                	.insn	2, 0xf404
     cf0:	01049403          	lh	s0,16(s1)
     cf4:	0494045b          	.insn	4, 0x0494045b
     cf8:	06c4                	.insn	2, 0x06c4
     cfa:	a306                	.insn	2, 0xa306
     cfc:	330ba503          	lw	a0,816(s7)
     d00:	009f 3102 01bf      	.insn	6, 0x01bf3102009f
     d06:	01dc                	.insn	2, 0x01dc
     d08:	0004                	.insn	2, 0x0004
     d0a:	025c                	.insn	2, 0x025c
     d0c:	9f30                	.insn	2, 0x9f30
     d0e:	d004                	.insn	2, 0xd004
     d10:	02049403          	lh	s0,32(s1)
     d14:	9f30                	.insn	2, 0x9f30
     d16:	2d00                	.insn	2, 0x2d00
     d18:	2f2e                	.insn	2, 0x2f2e
     d1a:	3131                	.insn	2, 0x3131
     d1c:	01bc                	.insn	2, 0x01bc
     d1e:	01dc                	.insn	2, 0x01dc
     d20:	0400                	.insn	2, 0x0400
     d22:	5858                	.insn	2, 0x5858
     d24:	3002                	.insn	2, 0x3002
     d26:	049f 5c58 3002      	.insn	6, 0x30025c58049f
     d2c:	049f bc5c 0103      	.insn	6, 0x0103bc5c049f
     d32:	0464                	.insn	2, 0x0464
     d34:	0494                	.insn	2, 0x0494
     d36:	06c4                	.insn	2, 0x06c4
     d38:	6401                	.insn	2, 0x6401
     d3a:	2100                	.insn	2, 0x2100
     d3c:	bf56                	.insn	2, 0xbf56
     d3e:	f801                	.insn	2, 0xf801
     d40:	8201                	.insn	2, 0x8201
     d42:	8402                	.insn	2, 0x8402
     d44:	a402                	.insn	2, 0xa402
     d46:	a602                	.insn	2, 0xa602
     d48:	0402                	.insn	2, 0x0402
     d4a:	b438                	.insn	2, 0xb438
     d4c:	0601                	.insn	2, 0x0601
     d4e:	ff080083          	lb	ra,-16(a6)
     d52:	9f1a                	.insn	2, 0x9f1a
     d54:	d004                	.insn	2, 0xd004
     d56:	0604d803          	lhu	a6,96(s1)
     d5a:	ff080083          	lb	ra,-16(a6)
     d5e:	9f1a                	.insn	2, 0x9f1a
     d60:	9c04                	.insn	2, 0x9c04
     d62:	ac05                	.insn	2, 0xac05
     d64:	0605                	.insn	2, 0x0605
     d66:	ff080083          	lb	ra,-16(a6)
     d6a:	9f1a                	.insn	2, 0x9f1a
     d6c:	a404                	.insn	2, 0xa404
     d6e:	a806                	.insn	2, 0xa806
     d70:	0606                	.insn	2, 0x0606
     d72:	ff080083          	lb	ra,-16(a6)
     d76:	9f1a                	.insn	2, 0x9f1a
     d78:	2000                	.insn	2, 0x2000
     d7a:	2c2c                	.insn	2, 0x2c2c
     d7c:	bf52                	.insn	2, 0xbf52
     d7e:	d001                	.insn	2, 0xd001
     d80:	d301                	.insn	2, 0xd301
     d82:	d501                	.insn	2, 0xd501
     d84:	d501                	.insn	2, 0xd501
     d86:	d901                	.insn	2, 0xd901
     d88:	d901                	.insn	2, 0xd901
     d8a:	da01                	.insn	2, 0xda01
     d8c:	da01                	.insn	2, 0xda01
     d8e:	dc01                	.insn	2, 0xdc01
     d90:	dc01                	.insn	2, 0xdc01
     d92:	f801                	.insn	2, 0xf801
     d94:	0401                	.insn	2, 0x0401
     d96:	5834                	.insn	2, 0x5834
     d98:	0a008207          	.insn	4, 0x0a008207
     d9c:	ffff                	.insn	2, 0xffff
     d9e:	9f1a                	.insn	2, 0x9f1a
     da0:	5804                	.insn	2, 0x5804
     da2:	019c                	.insn	2, 0x019c
     da4:	6201                	.insn	2, 0x6201
     da6:	d004                	.insn	2, 0xd004
     da8:	0703e403          	lwu	s0,112(t2)
     dac:	0082                	.insn	2, 0x0082
     dae:	ff0a                	.insn	2, 0xff0a
     db0:	049f1aff 03f803f4 	.insn	12, 0x0a00820703f803f4049f1aff
     db8:	0a008207 
     dbc:	ffff                	.insn	2, 0xffff
     dbe:	9f1a                	.insn	2, 0x9f1a
     dc0:	f804                	.insn	2, 0xf804
     dc2:	0a048803          	lb	a6,160(s1)
     dc6:	007a                	.insn	2, 0x007a
     dc8:	3408                	.insn	2, 0x3408
     dca:	0a25                	.insn	2, 0x0a25
     dcc:	07ff 9f1a 8804 8c04 	.insn	10, 0x07048c0488049f1a07ff
     dd4:	0704 
     dd6:	0082                	.insn	2, 0x0082
     dd8:	ff0a                	.insn	2, 0xff0a
     dda:	049f1aff 0494048c 	.insn	12, 0x08007a0a0494048c049f1aff
     de2:	08007a0a 
     de6:	2534                	.insn	2, 0x2534
     de8:	ff0a                	.insn	2, 0xff0a
     dea:	049f1a07          	.insn	4, 0x049f1a07
     dee:	0494                	.insn	2, 0x0494
     df0:	04d8                	.insn	2, 0x04d8
     df2:	6201                	.insn	2, 0x6201
     df4:	1f00                	.insn	2, 0x1f00
     df6:	2626                	.insn	2, 0x2626
     df8:	2929                	.insn	2, 0x2929
     dfa:	2a2a                	.insn	2, 0x2a2a
     dfc:	bf65                	.insn	2, 0xbf65
     dfe:	8001                	.insn	2, 0x8001
     e00:	8202                	.insn	2, 0x8202
     e02:	8702                	.insn	2, 0x8702
     e04:	a402                	.insn	2, 0xa402
     e06:	a902                	.insn	2, 0xa902
     e08:	0402                	.insn	2, 0x0402
     e0a:	4434                	.insn	2, 0x4434
     e0c:	5901                	.insn	2, 0x5901
     e0e:	4404                	.insn	2, 0x4404
     e10:	084c                	.insn	2, 0x084c
     e12:	0079                	.insn	2, 0x0079
     e14:	0840                	.insn	2, 0x0840
     e16:	2430                	.insn	2, 0x2430
     e18:	9f21                	.insn	2, 0x9f21
     e1a:	4c04                	.insn	2, 0x4c04
     e1c:	0c54                	.insn	2, 0x0c54
     e1e:	007a                	.insn	2, 0x007a
     e20:	243c                	.insn	2, 0x243c
     e22:	253c                	.insn	2, 0x253c
     e24:	0840                	.insn	2, 0x0840
     e26:	2430                	.insn	2, 0x2430
     e28:	9f21                	.insn	2, 0x9f21
     e2a:	5404                	.insn	2, 0x5404
     e2c:	01d0                	.insn	2, 0x01d0
     e2e:	5901                	.insn	2, 0x5901
     e30:	d004                	.insn	2, 0xd004
     e32:	01059003          	lh	zero,16(a1)
     e36:	0459                	.insn	2, 0x0459
     e38:	059c                	.insn	2, 0x059c
     e3a:	05b8                	.insn	2, 0x05b8
     e3c:	5901                	.insn	2, 0x5901
     e3e:	a404                	.insn	2, 0xa404
     e40:	b806                	.insn	2, 0xb806
     e42:	0106                	.insn	2, 0x0106
     e44:	0059                	.insn	2, 0x0059
     e46:	4948                	.insn	2, 0x4948
     e48:	4c4a                	.insn	2, 0x4c4a
     e4a:	704c                	.insn	2, 0x704c
     e4c:	01f8                	.insn	2, 0x01f8
     e4e:	01fc                	.insn	2, 0x01fc
     e50:	0282                	.insn	2, 0x0282
     e52:	0286                	.insn	2, 0x0286
     e54:	02a4                	.insn	2, 0x02a4
     e56:	02a6                	.insn	2, 0x02a6
     e58:	9004                	.insn	2, 0x9004
     e5a:	9001                	.insn	2, 0x9001
     e5c:	0201                	.insn	2, 0x0201
     e5e:	9f30                	.insn	2, 0x9f30
     e60:	9004                	.insn	2, 0x9004
     e62:	9401                	.insn	2, 0x9401
     e64:	0201                	.insn	2, 0x0201
     e66:	9f30                	.insn	2, 0x9f30
     e68:	9404                	.insn	2, 0x9404
     e6a:	f001                	.insn	2, 0xf001
     e6c:	0101                	.insn	2, 0x0101
     e6e:	045d                	.insn	2, 0x045d
     e70:	04d8                	.insn	2, 0x04d8
     e72:	04f8                	.insn	2, 0x04f8
     e74:	5d01                	.insn	2, 0x5d01
     e76:	9c04                	.insn	2, 0x9c04
     e78:	b405                	.insn	2, 0xb405
     e7a:	0105                	.insn	2, 0x0105
     e7c:	045d                	.insn	2, 0x045d
     e7e:	06a4                	.insn	2, 0x06a4
     e80:	06a8                	.insn	2, 0x06a8
     e82:	5d01                	.insn	2, 0x5d01
     e84:	3b00                	.insn	2, 0x3b00
     e86:	01bd                	.insn	2, 0x01bd
     e88:	01dc                	.insn	2, 0x01dc
     e8a:	0400                	.insn	2, 0x0400
     e8c:	c070                	.insn	2, 0xc070
     e8e:	00850603          	lb	a2,8(a0)
     e92:	ff08                	.insn	2, 0xff08
     e94:	9f1a                	.insn	2, 0x9f1a
     e96:	9404                	.insn	2, 0x9404
     e98:	c404                	.insn	2, 0xc404
     e9a:	0606                	.insn	2, 0x0606
     e9c:	0085                	.insn	2, 0x0085
     e9e:	ff08                	.insn	2, 0xff08
     ea0:	9f1a                	.insn	2, 0x9f1a
     ea2:	3a00                	.insn	2, 0x3a00
     ea4:	dc534747          	.insn	4, 0xdc534747
     ea8:	e501                	.insn	2, 0xe501
     eaa:	ef01                	.insn	2, 0xef01
     eac:	f101                	.insn	2, 0xf101
     eae:	f501                	.insn	2, 0xf501
     eb0:	f601                	.insn	2, 0xf601
     eb2:	0401                	.insn	2, 0x0401
     eb4:	906c                	.insn	2, 0x906c
     eb6:	0701                	.insn	2, 0x0701
     eb8:	007f ff0a 1aff 049f 	.insn	10, 0x0190049f1affff0a007f
     ec0:	0190 
     ec2:	01a4                	.insn	2, 0x01a4
     ec4:	5f01                	.insn	2, 0x5f01
     ec6:	9404                	.insn	2, 0x9404
     ec8:	9f04                	.insn	2, 0x9f04
     eca:	0704                	.insn	2, 0x0704
     ecc:	007f ff0a 1aff 049f 	.insn	10, 0x04b8049f1affff0a007f
     ed4:	04b8 
     ed6:	04bc                	.insn	2, 0x04bc
     ed8:	0a007f07          	.insn	4, 0x0a007f07
     edc:	ffff                	.insn	2, 0xffff
     ede:	9f1a                	.insn	2, 0x9f1a
     ee0:	cc04                	.insn	2, 0xcc04
     ee2:	d004                	.insn	2, 0xd004
     ee4:	0704                	.insn	2, 0x0704
     ee6:	007f ff0a 1aff 009f 	.insn	10, 0x4139009f1affff0a007f
     eee:	4139 
     ef0:	4441                	.insn	2, 0x4441
     ef2:	6645                	.insn	2, 0x6645
     ef4:	01dc                	.insn	2, 0x01dc
     ef6:	01fc                	.insn	2, 0x01fc
     ef8:	0282                	.insn	2, 0x0282
     efa:	0285                	.insn	2, 0x0285
     efc:	02a4                	.insn	2, 0x02a4
     efe:	02a6                	.insn	2, 0x02a6
     f00:	6c04                	.insn	2, 0x6c04
     f02:	017c                	.insn	2, 0x017c
     f04:	0458                	.insn	2, 0x0458
     f06:	847c                	.insn	2, 0x847c
     f08:	0801                	.insn	2, 0x0801
     f0a:	0078                	.insn	2, 0x0078
     f0c:	0840                	.insn	2, 0x0840
     f0e:	2430                	.insn	2, 0x2430
     f10:	9f21                	.insn	2, 0x9f21
     f12:	8c04                	.insn	2, 0x8c04
     f14:	d401                	.insn	2, 0xd401
     f16:	0101                	.insn	2, 0x0101
     f18:	0458                	.insn	2, 0x0458
     f1a:	0494                	.insn	2, 0x0494
     f1c:	04f8                	.insn	2, 0x04f8
     f1e:	5801                	.insn	2, 0x5801
     f20:	9c04                	.insn	2, 0x9c04
     f22:	b005                	.insn	2, 0xb005
     f24:	0105                	.insn	2, 0x0105
     f26:	0458                	.insn	2, 0x0458
     f28:	06a4                	.insn	2, 0x06a4
     f2a:	06a8                	.insn	2, 0x06a8
     f2c:	5801                	.insn	2, 0x5801
     f2e:	5800                	.insn	2, 0x5800
     f30:	01fc0193          	addi	gp,s8,31
     f34:	0280                	.insn	2, 0x0280
     f36:	02890287          	.insn	4, 0x02890287
     f3a:	c404                	.insn	2, 0xc404
     f3c:	cc01                	.insn	2, 0xcc01
     f3e:	0202                	.insn	2, 0x0202
     f40:	9f30                	.insn	2, 0x9f30
     f42:	f804                	.insn	2, 0xf804
     f44:	9004                	.insn	2, 0x9004
     f46:	0105                	.insn	2, 0x0105
     f48:	045d                	.insn	2, 0x045d
     f4a:	05b8                	.insn	2, 0x05b8
     f4c:	05c0                	.insn	2, 0x05c0
     f4e:	3002                	.insn	2, 0x3002
     f50:	009f 5651 01a8      	.insn	6, 0x01a85651009f
     f56:	01b2                	.insn	2, 0x01b2
     f58:	01fc                	.insn	2, 0x01fc
     f5a:	0280                	.insn	2, 0x0280
     f5c:	0282                	.insn	2, 0x0282
     f5e:	0284                	.insn	2, 0x0284
     f60:	02a4                	.insn	2, 0x02a4
     f62:	02a6                	.insn	2, 0x02a6
     f64:	9404                	.insn	2, 0x9404
     f66:	b401                	.insn	2, 0xb401
     f68:	0901                	.insn	2, 0x0901
     f6a:	00850083          	lb	ra,8(a0)
     f6e:	1aff0827          	.insn	4, 0x1aff0827
     f72:	049f 0394 03ac      	.insn	6, 0x03ac0394049f
     f78:	6301                	.insn	2, 0x6301
     f7a:	f804                	.insn	2, 0xf804
     f7c:	9004                	.insn	2, 0x9004
     f7e:	0105                	.insn	2, 0x0105
     f80:	059c0463          	beq	s8,s9,fc8 <exit-0xf158>
     f84:	05ac                	.insn	2, 0x05ac
     f86:	8309                	.insn	2, 0x8309
     f88:	8500                	.insn	2, 0x8500
     f8a:	2700                	.insn	2, 0x2700
     f8c:	ff08                	.insn	2, 0xff08
     f8e:	9f1a                	.insn	2, 0x9f1a
     f90:	a404                	.insn	2, 0xa404
     f92:	a806                	.insn	2, 0xa806
     f94:	0906                	.insn	2, 0x0906
     f96:	00850083          	lb	ra,8(a0)
     f9a:	1aff0827          	.insn	4, 0x1aff0827
     f9e:	009f 9354 9501      	.insn	6, 0x95019354009f
     fa4:	b101                	.insn	2, 0xb101
     fa6:	f801                	.insn	2, 0xf801
     fa8:	8001                	.insn	2, 0x8001
     faa:	8202                	.insn	2, 0x8202
     fac:	8802                	.insn	2, 0x8802
     fae:	8802                	.insn	2, 0x8802
     fb0:	8902                	.insn	2, 0x8902
     fb2:	8902                	.insn	2, 0x8902
     fb4:	8d02                	.insn	2, 0x8d02
     fb6:	8d02                	.insn	2, 0x8d02
     fb8:	8f02                	.insn	2, 0x8f02
     fba:	a202                	.insn	2, 0xa202
     fbc:	a302                	.insn	2, 0xa302
     fbe:	a302                	.insn	2, 0xa302
     fc0:	a402                	.insn	2, 0xa402
     fc2:	a402                	.insn	2, 0xa402
     fc4:	a902                	.insn	2, 0xa902
     fc6:	0402                	.insn	2, 0x0402
     fc8:	01a8                	.insn	2, 0x01a8
     fca:	02cc                	.insn	2, 0x02cc
     fcc:	5c01                	.insn	2, 0x5c01
     fce:	d004                	.insn	2, 0xd004
     fd0:	a402                	.insn	2, 0xa402
     fd2:	045e0103          	lb	sp,69(t3)
     fd6:	04d8                	.insn	2, 0x04d8
     fd8:	0590                	.insn	2, 0x0590
     fda:	5c01                	.insn	2, 0x5c01
     fdc:	9c04                	.insn	2, 0x9c04
     fde:	bc05                	.insn	2, 0xbc05
     fe0:	0105                	.insn	2, 0x0105
     fe2:	045c                	.insn	2, 0x045c
     fe4:	05bc                	.insn	2, 0x05bc
     fe6:	05c0                	.insn	2, 0x05c0
     fe8:	9f018203          	lb	tp,-1552(gp) # 19b02ac <__BSS_END__+0x199b2bc>
     fec:	c004                	.insn	2, 0xc004
     fee:	c405                	.insn	2, 0xc405
     ff0:	0105                	.insn	2, 0x0105
     ff2:	045e                	.insn	2, 0x045e
     ff4:	05c4                	.insn	2, 0x05c4
     ff6:	05d4                	.insn	2, 0x05d4
     ff8:	3105                	.insn	2, 0x3105
     ffa:	007e                	.insn	2, 0x007e
     ffc:	9f1c                	.insn	2, 0x9f1c
     ffe:	9c04                	.insn	2, 0x9c04
    1000:	a006                	.insn	2, 0xa006
    1002:	0106                	.insn	2, 0x0106
    1004:	045e                	.insn	2, 0x045e
    1006:	06a0                	.insn	2, 0x06a0
    1008:	06a4                	.insn	2, 0x06a4
    100a:	7c04                	.insn	2, 0x7c04
    100c:	07ff 049f 06a4 06b8 	.insn	10, 0x5c0106b806a4049f07ff
    1014:	5c01 
    1016:	8900                	.insn	2, 0x8900
    1018:	8e01                	.insn	2, 0x8e01
    101a:	8f01                	.insn	2, 0x8f01
    101c:	9301                	.insn	2, 0x9301
    101e:	9f01                	.insn	2, 0x9f01
    1020:	a501                	.insn	2, 0xa501
    1022:	a501                	.insn	2, 0xa501
    1024:	a801                	.insn	2, 0xa801
    1026:	a801                	.insn	2, 0xa801
    1028:	b001                	.insn	2, 0xb001
    102a:	fc01                	.insn	2, 0xfc01
    102c:	8001                	.insn	2, 0x8001
    102e:	8702                	.insn	2, 0x8702
    1030:	8902                	.insn	2, 0x8902
    1032:	9402                	.insn	2, 0x9402
    1034:	a002                	.insn	2, 0xa002
    1036:	0402                	.insn	2, 0x0402
    1038:	02bc                	.insn	2, 0x02bc
    103a:	02c8                	.insn	2, 0x02c8
    103c:	5801                	.insn	2, 0x5801
    103e:	cc04                	.insn	2, 0xcc04
    1040:	cc02                	.insn	2, 0xcc02
    1042:	0102                	.insn	2, 0x0102
    1044:	0458                	.insn	2, 0x0458
    1046:	02ec                	.insn	2, 0x02ec
    1048:	0388                	.insn	2, 0x0388
    104a:	5801                	.insn	2, 0x5801
    104c:	8804                	.insn	2, 0x8804
    104e:	05039403          	lh	s0,80(t2)
    1052:	0078                	.insn	2, 0x0078
    1054:	049f2533          	.insn	4, 0x049f2533
    1058:	0394                	.insn	2, 0x0394
    105a:	03a0                	.insn	2, 0x03a0
    105c:	5f01                	.insn	2, 0x5f01
    105e:	f804                	.insn	2, 0xf804
    1060:	9004                	.insn	2, 0x9004
    1062:	0105                	.insn	2, 0x0105
    1064:	0458                	.insn	2, 0x0458
    1066:	05b8                	.insn	2, 0x05b8
    1068:	05c0                	.insn	2, 0x05c0
    106a:	5801                	.insn	2, 0x5801
    106c:	ec04                	.insn	2, 0xec04
    106e:	8c05                	.insn	2, 0x8c05
    1070:	0106                	.insn	2, 0x0106
    1072:	005f 01b4 01be      	.insn	6, 0x01be01b4005f
    1078:	01be                	.insn	2, 0x01be
    107a:	b00401bf 0803c403 	.insn	8, 0x0803c403b00401bf
    1082:	007e                	.insn	2, 0x007e
    1084:	a9210083          	lb	ra,-1390(sp)
    1088:	c4049f33          	.insn	4, 0xc4049f33
    108c:	0103d003          	lhu	zero,16(t2)
    1090:	005a                	.insn	2, 0x005a
    1092:	01ca                	.insn	2, 0x01ca
    1094:	01cc                	.insn	2, 0x01cc
    1096:	01cc                	.insn	2, 0x01cc
    1098:	e00401d3          	.insn	4, 0xe00401d3
    109c:	0103e003          	lwu	zero,16(t2)
    10a0:	045f 03e0 03f4      	.insn	6, 0x03f403e0045f
    10a6:	9f757f03          	.insn	4, 0x9f757f03
    10aa:	e600                	.insn	2, 0xe600
    10ac:	e801                	.insn	2, 0xe801
    10ae:	e801                	.insn	2, 0xe801
    10b0:	ef01                	.insn	2, 0xef01
    10b2:	0401                	.insn	2, 0x0401
    10b4:	04a4                	.insn	2, 0x04a4
    10b6:	04a4                	.insn	2, 0x04a4
    10b8:	5e01                	.insn	2, 0x5e01
    10ba:	a404                	.insn	2, 0xa404
    10bc:	b804                	.insn	2, 0xb804
    10be:	0304                	.insn	2, 0x0304
    10c0:	757e                	.insn	2, 0x757e
    10c2:	009f 847a 8601      	.insn	6, 0x8601847a009f
    10c8:	8e01                	.insn	2, 0x8e01
    10ca:	8701                	.insn	2, 0x8701
    10cc:	8902                	.insn	2, 0x8902
    10ce:	0402                	.insn	2, 0x0402
    10d0:	0298                	.insn	2, 0x0298
    10d2:	02b0                	.insn	2, 0x02b0
    10d4:	5d01                	.insn	2, 0x5d01
    10d6:	bc04                	.insn	2, 0xbc04
    10d8:	c802                	.insn	2, 0xc802
    10da:	0102                	.insn	2, 0x0102
    10dc:	0458                	.insn	2, 0x0458
    10de:	05b8                	.insn	2, 0x05b8
    10e0:	05c0                	.insn	2, 0x05c0
    10e2:	5801                	.insn	2, 0x5801
    10e4:	7700                	.insn	2, 0x7700
    10e6:	0180                	.insn	2, 0x0180
    10e8:	0182                	.insn	2, 0x0182
    10ea:	88040183          	lb	gp,-1920(s0)
    10ee:	9c02                	.insn	2, 0x9c02
    10f0:	0902                	.insn	2, 0x0902
    10f2:	007f 2008 7e25 2200 	.insn	10, 0x049f22007e252008007f
    10fa:	049f 
    10fc:	02a4                	.insn	2, 0x02a4
    10fe:	02a8                	.insn	2, 0x02a8
    1100:	5f01                	.insn	2, 0x5f01
    1102:	6800                	.insn	2, 0x6800
    1104:	0479                	.insn	2, 0x0479
    1106:	01e0                	.insn	2, 0x01e0
    1108:	028c                	.insn	2, 0x028c
    110a:	5b01                	.insn	2, 0x5b01
    110c:	6900                	.insn	2, 0x6900
    110e:	70706f6f          	jal	t5,8014 <exit-0x810c>
    1112:	7372                	.insn	2, 0x7372
    1114:	0180                	.insn	2, 0x0180
    1116:	e004                	.insn	2, 0xe004
    1118:	ec01                	.insn	2, 0xec01
    111a:	0601                	.insn	2, 0x0601
    111c:	007f 0079 9f1e ec04 	.insn	10, 0xf001ec049f1e0079007f
    1124:	f001 
    1126:	0101                	.insn	2, 0x0101
    1128:	045f 01f0 01f4      	.insn	6, 0x01f401f0045f
    112e:	7b09                	.insn	2, 0x7b09
    1130:	0800                	.insn	2, 0x0800
    1132:	2520                	.insn	2, 0x2520
    1134:	007f 9f22 f804 9c01 	.insn	10, 0x01029c01f8049f22007f
    113c:	0102 
    113e:	005f 816b 0401      	.insn	6, 0x0401816b005f
    1144:	01e4                	.insn	2, 0x01e4
    1146:	02a0                	.insn	2, 0x02a0
    1148:	5801                	.insn	2, 0x5801
    114a:	6d00                	.insn	2, 0x6d00
    114c:	0185                	.insn	2, 0x0185
    114e:	e804                	.insn	2, 0xe804
    1150:	b801                	.insn	2, 0xb801
    1152:	0102                	.insn	2, 0x0102
    1154:	005e                	.insn	2, 0x005e
    1156:	655f c404 d001      	.insn	6, 0xd001c404655f
    115c:	0101                	.insn	2, 0x0101
    115e:	0059                	.insn	2, 0x0059
    1160:	6662                	.insn	2, 0x6662
    1162:	c804                	.insn	2, 0xc804
    1164:	d401                	.insn	2, 0xd401
    1166:	0101                	.insn	2, 0x0101
    1168:	0058                	.insn	2, 0x0058
    116a:	6d61                	.insn	2, 0x6d61
    116c:	c804                	.insn	2, 0xc804
    116e:	e801                	.insn	2, 0xe801
    1170:	0101                	.insn	2, 0x0101
    1172:	005e                	.insn	2, 0x005e
    1174:	6f64                	.insn	2, 0x6f64
    1176:	cc04                	.insn	2, 0xcc04
    1178:	ec01                	.insn	2, 0xec01
    117a:	0101                	.insn	2, 0x0101
    117c:	005f 028a 028f      	.insn	6, 0x028f028a005f
    1182:	02a2                	.insn	2, 0x02a2
    1184:	02a4                	.insn	2, 0x02a4
    1186:	c004                	.insn	2, 0xc004
    1188:	d405                	.insn	2, 0xd405
    118a:	0205                	.insn	2, 0x0205
    118c:	9f31                	.insn	2, 0x9f31
    118e:	9c04                	.insn	2, 0x9c04
    1190:	a406                	.insn	2, 0xa406
    1192:	0206                	.insn	2, 0x0206
    1194:	9f31                	.insn	2, 0x9f31
    1196:	fd00                	.insn	2, 0xfd00
    1198:	0008                	.insn	2, 0x0008
    119a:	0500                	.insn	2, 0x0500
    119c:	0800                	.insn	2, 0x0800
    119e:	0000                	.insn	2, 0x0000
    11a0:	0000                	.insn	2, 0x0000
    11a2:	0000                	.insn	2, 0x0000
    11a4:	2222                	.insn	2, 0x2222
    11a6:	0400                	.insn	2, 0x0400
    11a8:	3000                	.insn	2, 0x3000
    11aa:	5a01                	.insn	2, 0x5a01
    11ac:	3004                	.insn	2, 0x3004
    11ae:	08d8                	.insn	2, 0x08d8
    11b0:	a306                	.insn	2, 0xa306
    11b2:	330aa503          	lw	a0,816(s5)
    11b6:	009f 2600 0026      	.insn	6, 0x00262600009f
    11bc:	0004                	.insn	2, 0x0004
    11be:	0144                	.insn	2, 0x0144
    11c0:	d844045b          	.insn	4, 0xd844045b
    11c4:	0608                	.insn	2, 0x0608
    11c6:	0ba503a3          	sb	s10,167(a0)
    11ca:	02009f33          	mulh	t5,ra,zero
    11ce:	01896867          	.insn	4, 0x01896867
    11d2:	01b7018b          	.insn	4, 0x01b7018b
    11d6:	01d1                	.insn	2, 0x01d1
    11d8:	01d6                	.insn	2, 0x01d6
    11da:	01de                	.insn	2, 0x01de
    11dc:	01e5                	.insn	2, 0x01e5
    11de:	01fa                	.insn	2, 0x01fa
    11e0:	02dd02db          	.insn	4, 0x02dd02db
    11e4:	02e402e3          	beq	s0,a4,1a08 <exit-0xe718>
    11e8:	02ea                	.insn	2, 0x02ea
    11ea:	03a602f3          	.insn	4, 0x03a602f3
    11ee:	03ad                	.insn	2, 0x03ad
    11f0:	03ae                	.insn	2, 0x03ae
    11f2:	0004                	.insn	2, 0x0004
    11f4:	01b4                	.insn	2, 0x01b4
    11f6:	3002                	.insn	2, 0x3002
    11f8:	049f 01bc 02a4      	.insn	6, 0x02a401bc049f
    11fe:	3002                	.insn	2, 0x3002
    1200:	049f 02ac 0394      	.insn	6, 0x039402ac049f
    1206:	3002                	.insn	2, 0x3002
    1208:	049f 03e0 03e0      	.insn	6, 0x03e003e0049f
    120e:	3002                	.insn	2, 0x3002
    1210:	049f 03f0 0484      	.insn	6, 0x048403f0049f
    1216:	3002                	.insn	2, 0x3002
    1218:	049f 04c8 06f8      	.insn	6, 0x06f804c8049f
    121e:	3002                	.insn	2, 0x3002
    1220:	049f 0784 0790      	.insn	6, 0x07900784049f
    1226:	3002                	.insn	2, 0x3002
    1228:	049f 0798 0798      	.insn	6, 0x07980798049f
    122e:	3002                	.insn	2, 0x3002
    1230:	049f 07b0 08b0      	.insn	6, 0x08b007b0049f
    1236:	3002                	.insn	2, 0x3002
    1238:	049f 08cc 08d0      	.insn	6, 0x08d008cc049f
    123e:	3002                	.insn	2, 0x3002
    1240:	009f 6729 bc68      	.insn	6, 0xbc686729009f
    1246:	d101                	.insn	2, 0xd101
    1248:	e501                	.insn	2, 0xe501
    124a:	fa01                	.insn	2, 0xfa01
    124c:	8a01                	.insn	2, 0x8a01
    124e:	8e02                	.insn	2, 0x8e02
    1250:	b202                	.insn	2, 0xb202
    1252:	b302                	.insn	2, 0xb302
    1254:	ce02                	.insn	2, 0xce02
    1256:	d002                	.insn	2, 0xd002
    1258:	db02                	.insn	2, 0xdb02
    125a:	dd02                	.insn	2, 0xdd02
    125c:	e302                	.insn	2, 0xe302
    125e:	e402                	.insn	2, 0xe402
    1260:	f102                	.insn	2, 0xf102
    1262:	f302                	.insn	2, 0xf302
    1264:	fd02                	.insn	2, 0xfd02
    1266:	9902                	.insn	2, 0x9902
    1268:	a2039e03          	lh	t3,-1504(t2)
    126c:	ad03a603          	lw	a2,-1328(t2)
    1270:	0403ae03          	lw	t3,64(t2)
    1274:	b448                	.insn	2, 0xb448
    1276:	0101                	.insn	2, 0x0101
    1278:	0459                	.insn	2, 0x0459
    127a:	01bc                	.insn	2, 0x01bc
    127c:	03ac                	.insn	2, 0x03ac
    127e:	5901                	.insn	2, 0x5901
    1280:	e004                	.insn	2, 0xe004
    1282:	01048403          	lb	s0,16(s1)
    1286:	0459                	.insn	2, 0x0459
    1288:	04c8                	.insn	2, 0x04c8
    128a:	04e0                	.insn	2, 0x04e0
    128c:	5901                	.insn	2, 0x5901
    128e:	f404                	.insn	2, 0xf404
    1290:	e404                	.insn	2, 0xe404
    1292:	0105                	.insn	2, 0x0105
    1294:	0459                	.insn	2, 0x0459
    1296:	05e8                	.insn	2, 0x05e8
    1298:	06d4                	.insn	2, 0x06d4
    129a:	5901                	.insn	2, 0x5901
    129c:	e004                	.insn	2, 0xe004
    129e:	f806                	.insn	2, 0xf806
    12a0:	0106                	.insn	2, 0x0106
    12a2:	0459                	.insn	2, 0x0459
    12a4:	0784                	.insn	2, 0x0784
    12a6:	0790                	.insn	2, 0x0790
    12a8:	5901                	.insn	2, 0x5901
    12aa:	9804                	.insn	2, 0x9804
    12ac:	0107a407          	.insn	4, 0x0107a407
    12b0:	0459                	.insn	2, 0x0459
    12b2:	07b0                	.insn	2, 0x07b0
    12b4:	07c4                	.insn	2, 0x07c4
    12b6:	5901                	.insn	2, 0x5901
    12b8:	fc04                	.insn	2, 0xfc04
    12ba:	01088c07          	.insn	4, 0x01088c07
    12be:	0459                	.insn	2, 0x0459
    12c0:	08a4                	.insn	2, 0x08a4
    12c2:	08b0                	.insn	2, 0x08b0
    12c4:	5901                	.insn	2, 0x5901
    12c6:	cc04                	.insn	2, 0xcc04
    12c8:	d008                	.insn	2, 0xd008
    12ca:	0108                	.insn	2, 0x0108
    12cc:	0059                	.insn	2, 0x0059
    12ce:	5a28                	.insn	2, 0x5a28
    12d0:	6765                	.insn	2, 0x6765
    12d2:	8668                	.insn	2, 0x8668
    12d4:	8701                	.insn	2, 0x8701
    12d6:	8a01                	.insn	2, 0x8a01
    12d8:	8b01                	.insn	2, 0x8b01
    12da:	bc01                	.insn	2, 0xbc01
    12dc:	d101                	.insn	2, 0xd101
    12de:	e501                	.insn	2, 0xe501
    12e0:	fa01                	.insn	2, 0xfa01
    12e2:	8a01                	.insn	2, 0x8a01
    12e4:	8e02                	.insn	2, 0x8e02
    12e6:	b102                	.insn	2, 0xb102
    12e8:	b302                	.insn	2, 0xb302
    12ea:	b502                	.insn	2, 0xb502
    12ec:	b602                	.insn	2, 0xb602
    12ee:	cf02                	.insn	2, 0xcf02
    12f0:	d002                	.insn	2, 0xd002
    12f2:	db02                	.insn	2, 0xdb02
    12f4:	dd02                	.insn	2, 0xdd02
    12f6:	e302                	.insn	2, 0xe302
    12f8:	e402                	.insn	2, 0xe402
    12fa:	f202                	.insn	2, 0xf202
    12fc:	f302                	.insn	2, 0xf302
    12fe:	fd02                	.insn	2, 0xfd02
    1300:	9902                	.insn	2, 0x9902
    1302:	a2039d03          	lh	s10,-1504(t2)
    1306:	ad03a603          	lw	a2,-1328(t2)
    130a:	0403ae03          	lw	t3,64(t2)
    130e:	7848                	.insn	2, 0x7848
    1310:	5801                	.insn	2, 0x5801
    1312:	ac04                	.insn	2, 0xac04
    1314:	b401                	.insn	2, 0xb401
    1316:	0101                	.insn	2, 0x0101
    1318:	0458                	.insn	2, 0x0458
    131a:	01bc                	.insn	2, 0x01bc
    131c:	0298                	.insn	2, 0x0298
    131e:	5801                	.insn	2, 0x5801
    1320:	9c04                	.insn	2, 0x9c04
    1322:	a802                	.insn	2, 0xa802
    1324:	0102                	.insn	2, 0x0102
    1326:	0458                	.insn	2, 0x0458
    1328:	02ac                	.insn	2, 0x02ac
    132a:	03ac                	.insn	2, 0x03ac
    132c:	5801                	.insn	2, 0x5801
    132e:	e004                	.insn	2, 0xe004
    1330:	01048403          	lb	s0,16(s1)
    1334:	0458                	.insn	2, 0x0458
    1336:	04c8                	.insn	2, 0x04c8
    1338:	04e0                	.insn	2, 0x04e0
    133a:	5801                	.insn	2, 0x5801
    133c:	f404                	.insn	2, 0xf404
    133e:	e004                	.insn	2, 0xe004
    1340:	0105                	.insn	2, 0x0105
    1342:	0458                	.insn	2, 0x0458
    1344:	05e8                	.insn	2, 0x05e8
    1346:	05f4                	.insn	2, 0x05f4
    1348:	5801                	.insn	2, 0x5801
    134a:	f804                	.insn	2, 0xf804
    134c:	d805                	.insn	2, 0xd805
    134e:	0106                	.insn	2, 0x0106
    1350:	0458                	.insn	2, 0x0458
    1352:	06e0                	.insn	2, 0x06e0
    1354:	06f8                	.insn	2, 0x06f8
    1356:	5801                	.insn	2, 0x5801
    1358:	8404                	.insn	2, 0x8404
    135a:	01079007          	.insn	4, 0x01079007
    135e:	0458                	.insn	2, 0x0458
    1360:	0798                	.insn	2, 0x0798
    1362:	07a8                	.insn	2, 0x07a8
    1364:	5801                	.insn	2, 0x5801
    1366:	b004                	.insn	2, 0xb004
    1368:	0107c407          	.insn	4, 0x0107c407
    136c:	0458                	.insn	2, 0x0458
    136e:	07fc                	.insn	2, 0x07fc
    1370:	0888                	.insn	2, 0x0888
    1372:	5801                	.insn	2, 0x5801
    1374:	a404                	.insn	2, 0xa404
    1376:	b008                	.insn	2, 0xb008
    1378:	0108                	.insn	2, 0x0108
    137a:	0458                	.insn	2, 0x0458
    137c:	08cc                	.insn	2, 0x08cc
    137e:	08d0                	.insn	2, 0x08d0
    1380:	5801                	.insn	2, 0x5801
    1382:	1d00                	.insn	2, 0x1d00
    1384:	6559                	.insn	2, 0x6559
    1386:	79786867          	.insn	4, 0x79786867
    138a:	0184                	.insn	2, 0x0184
    138c:	01990187          	.insn	4, 0x01990187
    1390:	019c019b          	addiw	gp,s8,25
    1394:	019c                	.insn	2, 0x019c
    1396:	01a8                	.insn	2, 0x01a8
    1398:	01d1                	.insn	2, 0x01d1
    139a:	01e4                	.insn	2, 0x01e4
    139c:	01fa                	.insn	2, 0x01fa
    139e:	0289                	.insn	2, 0x0289
    13a0:	028e                	.insn	2, 0x028e
    13a2:	029d                	.insn	2, 0x029d
    13a4:	029e                	.insn	2, 0x029e
    13a6:	02b302af          	.insn	4, 0x02b302af
    13aa:	02c502c3          	.insn	4, 0x02c502c3
    13ae:	02c6                	.insn	2, 0x02c6
    13b0:	02c6                	.insn	2, 0x02c6
    13b2:	02d9                	.insn	2, 0x02d9
    13b4:	02dd                	.insn	2, 0x02dd
    13b6:	02e402e3          	beq	s0,a4,1bda <exit-0xe546>
    13ba:	02f0                	.insn	2, 0x02f0
    13bc:	02fd02f3          	.insn	4, 0x02fd02f3
    13c0:	0399                	.insn	2, 0x0399
    13c2:	039c                	.insn	2, 0x039c
    13c4:	03a2                	.insn	2, 0x03a2
    13c6:	03a4                	.insn	2, 0x03a4
    13c8:	03a5                	.insn	2, 0x03a5
    13ca:	03a6                	.insn	2, 0x03a6
    13cc:	03ad                	.insn	2, 0x03ad
    13ce:	03ae                	.insn	2, 0x03ae
    13d0:	1804                	.insn	2, 0x1804
    13d2:	0178                	.insn	2, 0x0178
    13d4:	045f 01ac 01b4      	.insn	6, 0x01b401ac045f
    13da:	5f01                	.insn	2, 0x5f01
    13dc:	bc04                	.insn	2, 0xbc04
    13de:	f801                	.insn	2, 0xf801
    13e0:	0101                	.insn	2, 0x0101
    13e2:	045f 01fc 0294      	.insn	6, 0x029401fc045f
    13e8:	5f01                	.insn	2, 0x5f01
    13ea:	9c04                	.insn	2, 0x9c04
    13ec:	e002                	.insn	2, 0xe002
    13ee:	0102                	.insn	2, 0x0102
    13f0:	045f 02e8 02f0      	.insn	6, 0x02f002e8045f
    13f6:	5b01                	.insn	2, 0x5b01
    13f8:	f004                	.insn	2, 0xf004
    13fa:	9002                	.insn	2, 0x9002
    13fc:	045f0103          	lb	sp,69(t5)
    1400:	03e0                	.insn	2, 0x03e0
    1402:	0480                	.insn	2, 0x0480
    1404:	5f01                	.insn	2, 0x5f01
    1406:	c804                	.insn	2, 0xc804
    1408:	e004                	.insn	2, 0xe004
    140a:	0104                	.insn	2, 0x0104
    140c:	045f 04f4 05a4      	.insn	6, 0x05a404f4045f
    1412:	5f01                	.insn	2, 0x5f01
    1414:	a804                	.insn	2, 0xa804
    1416:	dc05                	.insn	2, 0xdc05
    1418:	0105                	.insn	2, 0x0105
    141a:	045f 05e8 06ac      	.insn	6, 0x06ac05e8045f
    1420:	5f01                	.insn	2, 0x5f01
    1422:	b404                	.insn	2, 0xb404
    1424:	bc06                	.insn	2, 0xbc06
    1426:	0106                	.insn	2, 0x0106
    1428:	045a                	.insn	2, 0x045a
    142a:	06bc                	.insn	2, 0x06bc
    142c:	06f4                	.insn	2, 0x06f4
    142e:	5f01                	.insn	2, 0x5f01
    1430:	8404                	.insn	2, 0x8404
    1432:	01079007          	.insn	4, 0x01079007
    1436:	045f 0798 07a0      	.insn	6, 0x07a00798045f
    143c:	5f01                	.insn	2, 0x5f01
    143e:	b004                	.insn	2, 0xb004
    1440:	0107c407          	.insn	4, 0x0107c407
    1444:	045f 07fc 0884      	.insn	6, 0x088407fc045f
    144a:	5f01                	.insn	2, 0x5f01
    144c:	a404                	.insn	2, 0xa404
    144e:	a808                	.insn	2, 0xa808
    1450:	0108                	.insn	2, 0x0108
    1452:	045f 08ac 08b0      	.insn	6, 0x08b008ac045f
    1458:	5f01                	.insn	2, 0x5f01
    145a:	cc04                	.insn	2, 0xcc04
    145c:	d008                	.insn	2, 0xd008
    145e:	0108                	.insn	2, 0x0108
    1460:	005f 5a41 6765      	.insn	6, 0x67655a41005f
    1466:	6e68                	.insn	2, 0x6e68
    1468:	8579                	.insn	2, 0x8579
    146a:	8701                	.insn	2, 0x8701
    146c:	8801                	.insn	2, 0x8801
    146e:	8b01                	.insn	2, 0x8b01
    1470:	8c01                	.insn	2, 0x8c01
    1472:	9c01                	.insn	2, 0x9c01
    1474:	bc01                	.insn	2, 0xbc01
    1476:	d101                	.insn	2, 0xd101
    1478:	e501                	.insn	2, 0xe501
    147a:	fa01                	.insn	2, 0xfa01
    147c:	8a01                	.insn	2, 0x8a01
    147e:	8e02                	.insn	2, 0x8e02
    1480:	9302                	.insn	2, 0x9302
    1482:	9e02                	.insn	2, 0x9e02
    1484:	db02                	.insn	2, 0xdb02
    1486:	dd02                	.insn	2, 0xdd02
    1488:	e302                	.insn	2, 0xe302
    148a:	e402                	.insn	2, 0xe402
    148c:	fd02                	.insn	2, 0xfd02
    148e:	9902                	.insn	2, 0x9902
    1490:	a2039e03          	lh	t3,-1504(t2)
    1494:	ad03a603          	lw	a2,-1328(t2)
    1498:	0403ae03          	lw	t3,64(t2)
    149c:	7858                	.insn	2, 0x7858
    149e:	5b01                	.insn	2, 0x5b01
    14a0:	ac04                	.insn	2, 0xac04
    14a2:	b401                	.insn	2, 0xb401
    14a4:	0101                	.insn	2, 0x0101
    14a6:	01bc045b          	.insn	4, 0x01bc045b
    14aa:	01d4                	.insn	2, 0x01d4
    14ac:	5b01                	.insn	2, 0x5b01
    14ae:	fc04                	.insn	2, 0xfc04
    14b0:	9401                	.insn	2, 0x9401
    14b2:	0102                	.insn	2, 0x0102
    14b4:	029c045b          	.insn	4, 0x029c045b
    14b8:	02a0                	.insn	2, 0x02a0
    14ba:	5b01                	.insn	2, 0x5b01
    14bc:	ac04                	.insn	2, 0xac04
    14be:	b002                	.insn	2, 0xb002
    14c0:	0102                	.insn	2, 0x0102
    14c2:	02f0045b          	.insn	4, 0x02f0045b
    14c6:	03ac                	.insn	2, 0x03ac
    14c8:	5b01                	.insn	2, 0x5b01
    14ca:	e004                	.insn	2, 0xe004
    14cc:	01048403          	lb	s0,16(s1)
    14d0:	04c8045b          	.insn	4, 0x04c8045b
    14d4:	04e0                	.insn	2, 0x04e0
    14d6:	5b01                	.insn	2, 0x5b01
    14d8:	f404                	.insn	2, 0xf404
    14da:	8004                	.insn	2, 0x8004
    14dc:	0105                	.insn	2, 0x0105
    14de:	05a8045b          	.insn	4, 0x05a8045b
    14e2:	06f8                	.insn	2, 0x06f8
    14e4:	5b01                	.insn	2, 0x5b01
    14e6:	8404                	.insn	2, 0x8404
    14e8:	01079007          	.insn	4, 0x01079007
    14ec:	0798045b          	.insn	4, 0x0798045b
    14f0:	07c4                	.insn	2, 0x07c4
    14f2:	5b01                	.insn	2, 0x5b01
    14f4:	fc04                	.insn	2, 0xfc04
    14f6:	01088c07          	.insn	4, 0x01088c07
    14fa:	08a4045b          	.insn	4, 0x08a4045b
    14fe:	08b0                	.insn	2, 0x08b0
    1500:	5b01                	.insn	2, 0x5b01
    1502:	cc04                	.insn	2, 0xcc04
    1504:	d008                	.insn	2, 0xd008
    1506:	0108                	.insn	2, 0x0108
    1508:	5a38005b          	.insn	4, 0x5a38005b
    150c:	6665                	.insn	2, 0x6665
    150e:	6a68                	.insn	2, 0x6a68
    1510:	8979                	.insn	2, 0x8979
    1512:	8b01                	.insn	2, 0x8b01
    1514:	9d01                	.insn	2, 0x9d01
    1516:	fa01                	.insn	2, 0xfa01
    1518:	8a01                	.insn	2, 0x8a01
    151a:	8e02                	.insn	2, 0x8e02
    151c:	9002                	.insn	2, 0x9002
    151e:	9e02                	.insn	2, 0x9e02
    1520:	9f02                	.insn	2, 0x9f02
    1522:	a202                	.insn	2, 0xa202
    1524:	d702                	.insn	2, 0xd702
    1526:	e402                	.insn	2, 0xe402
    1528:	ee02                	.insn	2, 0xee02
    152a:	f302                	.insn	2, 0xf302
    152c:	fd02                	.insn	2, 0xfd02
    152e:	9902                	.insn	2, 0x9902
    1530:	a5039e03          	lh	t3,-1456(t2)
    1534:	0403a603          	lw	a2,64(t2)
    1538:	7858                	.insn	2, 0x7858
    153a:	5c01                	.insn	2, 0x5c01
    153c:	ac04                	.insn	2, 0xac04
    153e:	b001                	.insn	2, 0xb001
    1540:	0101                	.insn	2, 0x0101
    1542:	045c                	.insn	2, 0x045c
    1544:	01bc                	.insn	2, 0x01bc
    1546:	01c0                	.insn	2, 0x01c0
    1548:	5c01                	.insn	2, 0x5c01
    154a:	fc04                	.insn	2, 0xfc04
    154c:	a401                	.insn	2, 0xa401
    154e:	0102                	.insn	2, 0x0102
    1550:	045c                	.insn	2, 0x045c
    1552:	02ac                	.insn	2, 0x02ac
    1554:	02f8                	.insn	2, 0x02f8
    1556:	5c01                	.insn	2, 0x5c01
    1558:	c804                	.insn	2, 0xc804
    155a:	e004                	.insn	2, 0xe004
    155c:	0104                	.insn	2, 0x0104
    155e:	045c                	.insn	2, 0x045c
    1560:	04f4                	.insn	2, 0x04f4
    1562:	04f8                	.insn	2, 0x04f8
    1564:	5c01                	.insn	2, 0x5c01
    1566:	a804                	.insn	2, 0xa804
    1568:	ac05                	.insn	2, 0xac05
    156a:	0105                	.insn	2, 0x0105
    156c:	045c                	.insn	2, 0x045c
    156e:	05c0                	.insn	2, 0x05c0
    1570:	06ec                	.insn	2, 0x06ec
    1572:	5c01                	.insn	2, 0x5c01
    1574:	9804                	.insn	2, 0x9804
    1576:	01079c07          	.insn	4, 0x01079c07
    157a:	045c                	.insn	2, 0x045c
    157c:	07b0                	.insn	2, 0x07b0
    157e:	07c4                	.insn	2, 0x07c4
    1580:	5c01                	.insn	2, 0x5c01
    1582:	fc04                	.insn	2, 0xfc04
    1584:	01088c07          	.insn	4, 0x01088c07
    1588:	045c                	.insn	2, 0x045c
    158a:	08ac                	.insn	2, 0x08ac
    158c:	08b0                	.insn	2, 0x08b0
    158e:	5c01                	.insn	2, 0x5c01
    1590:	3d00                	.insn	2, 0x3d00
    1592:	655a                	.insn	2, 0x655a
    1594:	77756867          	.insn	4, 0x77756867
    1598:	7979                	.insn	2, 0x7979
    159a:	0189                	.insn	2, 0x0189
    159c:	01a6018b          	.insn	4, 0x01a6018b
    15a0:	01d1                	.insn	2, 0x01d1
    15a2:	01dd                	.insn	2, 0x01dd
    15a4:	01de                	.insn	2, 0x01de
    15a6:	01fa01e3          	beq	s4,t6,1da8 <exit-0xe378>
    15aa:	028a                	.insn	2, 0x028a
    15ac:	028e                	.insn	2, 0x028e
    15ae:	029a                	.insn	2, 0x029a
    15b0:	029c                	.insn	2, 0x029c
    15b2:	029e                	.insn	2, 0x029e
    15b4:	029e                	.insn	2, 0x029e
    15b6:	02a1                	.insn	2, 0x02a1
    15b8:	02a2                	.insn	2, 0x02a2
    15ba:	02dd02db          	.insn	4, 0x02dd02db
    15be:	02e0                	.insn	2, 0x02e0
    15c0:	02e4                	.insn	2, 0x02e4
    15c2:	02fd                	.insn	2, 0x02fd
    15c4:	0399                	.insn	2, 0x0399
    15c6:	039e                	.insn	2, 0x039e
    15c8:	03a2                	.insn	2, 0x03a2
    15ca:	03a6                	.insn	2, 0x03a6
    15cc:	03ad                	.insn	2, 0x03ad
    15ce:	03ae                	.insn	2, 0x03ae
    15d0:	5804                	.insn	2, 0x5804
    15d2:	0178                	.insn	2, 0x0178
    15d4:	045e                	.insn	2, 0x045e
    15d6:	01ac                	.insn	2, 0x01ac
    15d8:	01b4                	.insn	2, 0x01b4
    15da:	5e01                	.insn	2, 0x5e01
    15dc:	bc04                	.insn	2, 0xbc04
    15de:	ec01                	.insn	2, 0xec01
    15e0:	0101                	.insn	2, 0x0101
    15e2:	045e                	.insn	2, 0x045e
    15e4:	01f4                	.insn	2, 0x01f4
    15e6:	01fc                	.insn	2, 0x01fc
    15e8:	5c01                	.insn	2, 0x5c01
    15ea:	fc04                	.insn	2, 0xfc04
    15ec:	a401                	.insn	2, 0xa401
    15ee:	0102                	.insn	2, 0x0102
    15f0:	045e                	.insn	2, 0x045e
    15f2:	02ac                	.insn	2, 0x02ac
    15f4:	038c                	.insn	2, 0x038c
    15f6:	5e01                	.insn	2, 0x5e01
    15f8:	e004                	.insn	2, 0xe004
    15fa:	0103ec03          	lwu	s8,16(t2)
    15fe:	045e                	.insn	2, 0x045e
    1600:	03f0                	.insn	2, 0x03f0
    1602:	03fc                	.insn	2, 0x03fc
    1604:	5e01                	.insn	2, 0x5e01
    1606:	c804                	.insn	2, 0xc804
    1608:	e004                	.insn	2, 0xe004
    160a:	0104                	.insn	2, 0x0104
    160c:	045e                	.insn	2, 0x045e
    160e:	04f4                	.insn	2, 0x04f4
    1610:	0598                	.insn	2, 0x0598
    1612:	5e01                	.insn	2, 0x5e01
    1614:	a004                	.insn	2, 0xa004
    1616:	a805                	.insn	2, 0xa805
    1618:	0105                	.insn	2, 0x0105
    161a:	045c                	.insn	2, 0x045c
    161c:	05a8                	.insn	2, 0x05a8
    161e:	05bc                	.insn	2, 0x05bc
    1620:	5e01                	.insn	2, 0x5e01
    1622:	c004                	.insn	2, 0xc004
    1624:	f805                	.insn	2, 0xf805
    1626:	0106                	.insn	2, 0x0106
    1628:	045e                	.insn	2, 0x045e
    162a:	0784                	.insn	2, 0x0784
    162c:	0788                	.insn	2, 0x0788
    162e:	5e01                	.insn	2, 0x5e01
    1630:	9804                	.insn	2, 0x9804
    1632:	0107c407          	.insn	4, 0x0107c407
    1636:	045e                	.insn	2, 0x045e
    1638:	07fc                	.insn	2, 0x07fc
    163a:	088c                	.insn	2, 0x088c
    163c:	5e01                	.insn	2, 0x5e01
    163e:	a404                	.insn	2, 0xa404
    1640:	b008                	.insn	2, 0xb008
    1642:	0108                	.insn	2, 0x0108
    1644:	045e                	.insn	2, 0x045e
    1646:	08cc                	.insn	2, 0x08cc
    1648:	08d0                	.insn	2, 0x08d0
    164a:	5e01                	.insn	2, 0x5e01
    164c:	4c00                	.insn	2, 0x4c00
    164e:	01896867          	.insn	4, 0x01896867
    1652:	01b7018b          	.insn	4, 0x01b7018b
    1656:	01bc                	.insn	2, 0x01bc
    1658:	01d0                	.insn	2, 0x01d0
    165a:	01d1                	.insn	2, 0x01d1
    165c:	01da                	.insn	2, 0x01da
    165e:	01de                	.insn	2, 0x01de
    1660:	01e5                	.insn	2, 0x01e5
    1662:	0280                	.insn	2, 0x0280
    1664:	02a2                	.insn	2, 0x02a2
    1666:	02c602a7          	.insn	4, 0x02c602a7
    166a:	02d5                	.insn	2, 0x02d5
    166c:	02da                	.insn	2, 0x02da
    166e:	02da                	.insn	2, 0x02da
    1670:	02dd02db          	.insn	4, 0x02dd02db
    1674:	02f802e3          	beq	a6,a5,1e98 <exit-0xe288>
    1678:	02fc                	.insn	2, 0x02fc
    167a:	02fc                	.insn	2, 0x02fc
    167c:	02fd                	.insn	2, 0x02fd
    167e:	02fd                	.insn	2, 0x02fd
    1680:	03a6                	.insn	2, 0x03a6
    1682:	03ad                	.insn	2, 0x03ad
    1684:	03ae                	.insn	2, 0x03ae
    1686:	6004                	.insn	2, 0x6004
    1688:	01b4                	.insn	2, 0x01b4
    168a:	5901                	.insn	2, 0x5901
    168c:	bc04                	.insn	2, 0xbc04
    168e:	a401                	.insn	2, 0xa401
    1690:	0102                	.insn	2, 0x0102
    1692:	0459                	.insn	2, 0x0459
    1694:	02ac                	.insn	2, 0x02ac
    1696:	0394                	.insn	2, 0x0394
    1698:	5901                	.insn	2, 0x5901
    169a:	ac04                	.insn	2, 0xac04
    169c:	0103d403          	lhu	s0,16(t2)
    16a0:	0459                	.insn	2, 0x0459
    16a2:	03e0                	.insn	2, 0x03e0
    16a4:	03e4                	.insn	2, 0x03e4
    16a6:	5901                	.insn	2, 0x5901
    16a8:	f004                	.insn	2, 0xf004
    16aa:	01048403          	lb	s0,16(s1)
    16ae:	0459                	.insn	2, 0x0459
    16b0:	04cc                	.insn	2, 0x04cc
    16b2:	05c0                	.insn	2, 0x05c0
    16b4:	5901                	.insn	2, 0x5901
    16b6:	c804                	.insn	2, 0xc804
    16b8:	bc05                	.insn	2, 0xbc05
    16ba:	0106                	.insn	2, 0x0106
    16bc:	06e8045b          	.insn	4, 0x06e8045b
    16c0:	06f4                	.insn	2, 0x06f4
    16c2:	5901                	.insn	2, 0x5901
    16c4:	f404                	.insn	2, 0xf404
    16c6:	f806                	.insn	2, 0xf806
    16c8:	0106                	.insn	2, 0x0106
    16ca:	0784045b          	.insn	4, 0x0784045b
    16ce:	0790                	.insn	2, 0x0790
    16d0:	5901                	.insn	2, 0x5901
    16d2:	b404                	.insn	2, 0xb404
    16d4:	0107c007          	.insn	4, 0x0107c007
    16d8:	0459                	.insn	2, 0x0459
    16da:	07c0                	.insn	2, 0x07c0
    16dc:	07c4                	.insn	2, 0x07c4
    16de:	5b01                	.insn	2, 0x5b01
    16e0:	c404                	.insn	2, 0xc404
    16e2:	0108b007          	.insn	4, 0x0108b007
    16e6:	0459                	.insn	2, 0x0459
    16e8:	08cc                	.insn	2, 0x08cc
    16ea:	08d0                	.insn	2, 0x08d0
    16ec:	5901                	.insn	2, 0x5901
    16ee:	5000                	.insn	2, 0x5000
    16f0:	7c796867          	.insn	4, 0x7c796867
    16f4:	0189                	.insn	2, 0x0189
    16f6:	019c018b          	.insn	4, 0x019c018b
    16fa:	01a0                	.insn	2, 0x01a0
    16fc:	01b701b7          	lui	gp,0x1b70
    1700:	01bc                	.insn	2, 0x01bc
    1702:	01d8                	.insn	2, 0x01d8
    1704:	01de                	.insn	2, 0x01de
    1706:	01e0                	.insn	2, 0x01e0
    1708:	01e5                	.insn	2, 0x01e5
    170a:	01f4                	.insn	2, 0x01f4
    170c:	01fa                	.insn	2, 0x01fa
    170e:	01ff 02a2 02a6 02c6 	.insn	10, 0x02c902c602a602a201ff
    1716:	02c9 
    1718:	02d002cf          	.insn	4, 0x02d002cf
    171c:	02dd02db          	.insn	4, 0x02dd02db
    1720:	02ec02e3          	beq	s8,a4,1f44 <exit-0xe1dc>
    1724:	02f502f3          	.insn	4, 0x02f502f3
    1728:	0392                	.insn	2, 0x0392
    172a:	0392                	.insn	2, 0x0392
    172c:	0399                	.insn	2, 0x0399
    172e:	0399                	.insn	2, 0x0399
    1730:	039d                	.insn	2, 0x039d
    1732:	039e                	.insn	2, 0x039e
    1734:	03a2                	.insn	2, 0x03a2
    1736:	03a2                	.insn	2, 0x03a2
    1738:	03a5                	.insn	2, 0x03a5
    173a:	03a5                	.insn	2, 0x03a5
    173c:	03a6                	.insn	2, 0x03a6
    173e:	03a6                	.insn	2, 0x03a6
    1740:	03ad03ab          	.insn	4, 0x03ad03ab
    1744:	03ae                	.insn	2, 0x03ae
    1746:	03ae                	.insn	2, 0x03ae
    1748:	0400                	.insn	2, 0x0400
    174a:	b464                	.insn	2, 0xb464
    174c:	0101                	.insn	2, 0x0101
    174e:	0458                	.insn	2, 0x0458
    1750:	01bc                	.insn	2, 0x01bc
    1752:	01fc                	.insn	2, 0x01fc
    1754:	5801                	.insn	2, 0x5801
    1756:	8004                	.insn	2, 0x8004
    1758:	a402                	.insn	2, 0xa402
    175a:	0102                	.insn	2, 0x0102
    175c:	045c                	.insn	2, 0x045c
    175e:	02ac                	.insn	2, 0x02ac
    1760:	02f0                	.insn	2, 0x02f0
    1762:	5c01                	.insn	2, 0x5c01
    1764:	8004                	.insn	2, 0x8004
    1766:	02039403          	lh	s0,32(t2)
    176a:	9f30                	.insn	2, 0x9f30
    176c:	9404                	.insn	2, 0x9404
    176e:	0203ac03          	lw	s8,32(t2)
    1772:	9f31                	.insn	2, 0x9f31
    1774:	e004                	.insn	2, 0xe004
    1776:	0403f003          	.insn	4, 0x0403f003
    177a:	ff0a                	.insn	2, 0xff0a
    177c:	f0049f07          	.insn	4, 0xf0049f07
    1780:	01048403          	lb	s0,16(s1)
    1784:	045d                	.insn	2, 0x045d
    1786:	04a8                	.insn	2, 0x04a8
    1788:	04c8                	.insn	2, 0x04c8
    178a:	5801                	.insn	2, 0x5801
    178c:	cc04                	.insn	2, 0xcc04
    178e:	c004                	.insn	2, 0xc004
    1790:	0105                	.insn	2, 0x0105
    1792:	0458                	.insn	2, 0x0458
    1794:	05c8                	.insn	2, 0x05c8
    1796:	06bc                	.insn	2, 0x06bc
    1798:	5c01                	.insn	2, 0x5c01
    179a:	cc04                	.insn	2, 0xcc04
    179c:	d806                	.insn	2, 0xd806
    179e:	0206                	.insn	2, 0x0206
    17a0:	9f30                	.insn	2, 0x9f30
    17a2:	e004                	.insn	2, 0xe004
    17a4:	f806                	.insn	2, 0xf806
    17a6:	0206                	.insn	2, 0x0206
    17a8:	9f30                	.insn	2, 0x9f30
    17aa:	8404                	.insn	2, 0x8404
    17ac:	02079007          	.insn	4, 0x02079007
    17b0:	9f30                	.insn	2, 0x9f30
    17b2:	9804                	.insn	2, 0x9804
    17b4:	0407b007          	.insn	4, 0x0407b007
    17b8:	ff0a                	.insn	2, 0xff0a
    17ba:	b0049f07          	.insn	4, 0xb0049f07
    17be:	0107f807          	.insn	4, 0x0107f807
    17c2:	0458                	.insn	2, 0x0458
    17c4:	07f8                	.insn	2, 0x07f8
    17c6:	07fc                	.insn	2, 0x07fc
    17c8:	3002                	.insn	2, 0x3002
    17ca:	049f 07fc 0888      	.insn	6, 0x088807fc049f
    17d0:	5801                	.insn	2, 0x5801
    17d2:	8c04                	.insn	2, 0x8c04
    17d4:	a408                	.insn	2, 0xa408
    17d6:	0108                	.insn	2, 0x0108
    17d8:	0458                	.insn	2, 0x0458
    17da:	08a4                	.insn	2, 0x08a4
    17dc:	08ac                	.insn	2, 0x08ac
    17de:	3002                	.insn	2, 0x3002
    17e0:	049f 08ac 08b0      	.insn	6, 0x08b008ac049f
    17e6:	5c01                	.insn	2, 0x5c01
    17e8:	b004                	.insn	2, 0xb004
    17ea:	bc08                	.insn	2, 0xbc08
    17ec:	0108                	.insn	2, 0x0108
    17ee:	0458                	.insn	2, 0x0458
    17f0:	08cc                	.insn	2, 0x08cc
    17f2:	08d0                	.insn	2, 0x08d0
    17f4:	5d01                	.insn	2, 0x5d01
    17f6:	d004                	.insn	2, 0xd004
    17f8:	d808                	.insn	2, 0xd808
    17fa:	0108                	.insn	2, 0x0108
    17fc:	0058                	.insn	2, 0x0058
    17fe:	5d59                	.insn	2, 0x5d59
    1800:	605d                	.insn	2, 0x605d
    1802:	6260                	.insn	2, 0x6260
    1804:	6362                	.insn	2, 0x6362
    1806:	79786463          	bltu	a6,s7,1f8e <exit-0xe192>
    180a:	0184                	.insn	2, 0x0184
    180c:	01a60187          	.insn	4, 0x01a60187
    1810:	01b701b7          	lui	gp,0x1b70
    1814:	01b9                	.insn	2, 0x01b9
    1816:	01ba                	.insn	2, 0x01ba
    1818:	01c5                	.insn	2, 0x01c5
    181a:	01e1                	.insn	2, 0x01e1
    181c:	01e301e3          	beq	t1,t5,201e <exit-0xe102>
    1820:	01e5                	.insn	2, 0x01e5
    1822:	01ee                	.insn	2, 0x01ee
    1824:	01f2                	.insn	2, 0x01f2
    1826:	01f2                	.insn	2, 0x01f2
    1828:	01f8                	.insn	2, 0x01f8
    182a:	01f9                	.insn	2, 0x01f9
    182c:	01fa                	.insn	2, 0x01fa
    182e:	0289                	.insn	2, 0x0289
    1830:	028e                	.insn	2, 0x028e
    1832:	029d                	.insn	2, 0x029d
    1834:	029e                	.insn	2, 0x029e
    1836:	02b302af          	.insn	4, 0x02b302af
    183a:	02cc                	.insn	2, 0x02cc
    183c:	02d402cf          	.insn	4, 0x02d402cf
    1840:	02d9                	.insn	2, 0x02d9
    1842:	02d9                	.insn	2, 0x02d9
    1844:	02dd02db          	.insn	4, 0x02dd02db
    1848:	02f702e3          	beq	a4,a5,206c <exit-0xe0b4>
    184c:	0392038f          	.insn	4, 0x0392038f
    1850:	0399                	.insn	2, 0x0399
    1852:	0399                	.insn	2, 0x0399
    1854:	03a1                	.insn	2, 0x03a1
    1856:	03a1                	.insn	2, 0x03a1
    1858:	03a2                	.insn	2, 0x03a2
    185a:	03a6                	.insn	2, 0x03a6
    185c:	03a9                	.insn	2, 0x03a9
    185e:	03a9                	.insn	2, 0x03a9
    1860:	03ad03ab          	.insn	4, 0x03ad03ab
    1864:	03ae                	.insn	2, 0x03ae
    1866:	7804                	.insn	2, 0x7804
    1868:	0180                	.insn	2, 0x0180
    186a:	5f01                	.insn	2, 0x5f01
    186c:	8004                	.insn	2, 0x8004
    186e:	8401                	.insn	2, 0x8401
    1870:	0e01                	.insn	2, 0x0e01
    1872:	007f ff11 ffff ffff 	.insn	10, 0xffffffffffffff11007f
    187a:	ffff 
    187c:	9f1a7fbf 98018404 	.insn	8, 0x980184049f1a7fbf
    1884:	1501                	.insn	2, 0x1501
    1886:	007f 2531 ff10 ffff 	.insn	10, 0xffffffffff102531007f
    188e:	ffff 
    1890:	ffff                	.insn	2, 0xffff
    1892:	7fdf 7f1a 3100      	.insn	6, 0x31007f1a7fdf
    1898:	211a                	.insn	2, 0x211a
    189a:	049f 0198 01a4      	.insn	6, 0x01a40198049f
    18a0:	10007d13          	andi	s10,zero,256
    18a4:	ffff                	.insn	2, 0xffff
    18a6:	ffff                	.insn	2, 0xffff
    18a8:	ffff                	.insn	2, 0xffff
    18aa:	1a7fdfff 1a31007f 	.insn	20, 0xff10007d1101a801a4049f211a31007f1a7fdfff
    18b2:	a4049f21 1101a801 
    18ba:	ff10007d 
    18be:	ffff                	.insn	2, 0xffff
    18c0:	ffff                	.insn	2, 0xffff
    18c2:	ffff                	.insn	2, 0xffff
    18c4:	7fdf 7f1a 2100      	.insn	6, 0x21007f1a7fdf
    18ca:	049f 01f8 01fc      	.insn	6, 0x01fc01f8049f
    18d0:	5f01                	.insn	2, 0x5f01
    18d2:	9404                	.insn	2, 0x9404
    18d4:	9c02                	.insn	2, 0x9c02
    18d6:	0102                	.insn	2, 0x0102
    18d8:	045f 038c 0394      	.insn	6, 0x0394038c045f
    18de:	5e01                	.insn	2, 0x5e01
    18e0:	9404                	.insn	2, 0x9404
    18e2:	0e03a003          	lw	zero,224(t2)
    18e6:	007e                	.insn	2, 0x007e
    18e8:	ff11                	.insn	2, 0xff11
    18ea:	ffff                	.insn	2, 0xffff
    18ec:	ffff                	.insn	2, 0xffff
    18ee:	ffff                	.insn	2, 0xffff
    18f0:	9f1a7fbf b403a804 	.insn	8, 0xb403a8049f1a7fbf
    18f8:	045f0103          	lb	sp,69(t5)
    18fc:	03f0                	.insn	2, 0x03f0
    18fe:	03fc                	.insn	2, 0x03fc
    1900:	7f08                	.insn	2, 0x7f08
    1902:	7e00                	.insn	2, 0x7e00
    1904:	2200                	.insn	2, 0x2200
    1906:	2531                	.insn	2, 0x2531
    1908:	049f 03fc 0484      	.insn	6, 0x048403fc049f
    190e:	7e05                	.insn	2, 0x7e05
    1910:	3100                	.insn	2, 0x3100
    1912:	9f25                	.insn	2, 0x9f25
    1914:	9c04                	.insn	2, 0x9c04
    1916:	a404                	.insn	2, 0xa404
    1918:	0104                	.insn	2, 0x0104
    191a:	045f 04a4 04bc      	.insn	6, 0x04bc04a4045f
    1920:	7f0e                	.insn	2, 0x7f0e
    1922:	1100                	.insn	2, 0x1100
    1924:	ffff                	.insn	2, 0xffff
    1926:	ffff                	.insn	2, 0xffff
    1928:	ffff                	.insn	2, 0xffff
    192a:	1a7fbfff 04c4049f 	.insn	16, 0xf404e0045f0104c804c4049f1a7fbfff
    1932:	5f0104c8 f404e004 
    193a:	0104                	.insn	2, 0x0104
    193c:	045f 05a4 05a8      	.insn	6, 0x05a805a4045f
    1942:	5f01                	.insn	2, 0x5f01
    1944:	dc04                	.insn	2, 0xdc04
    1946:	e805                	.insn	2, 0xe805
    1948:	0105                	.insn	2, 0x0105
    194a:	045f 06d0 06d8      	.insn	6, 0x06d806d0045f
    1950:	5e01                	.insn	2, 0x5e01
    1952:	e804                	.insn	2, 0xe804
    1954:	f406                	.insn	2, 0xf406
    1956:	0106                	.insn	2, 0x0106
    1958:	045d                	.insn	2, 0x045d
    195a:	06f4                	.insn	2, 0x06f4
    195c:	06f8                	.insn	2, 0x06f8
    195e:	5f01                	.insn	2, 0x5f01
    1960:	8404                	.insn	2, 0x8404
    1962:	01079007          	.insn	4, 0x01079007
    1966:	045d                	.insn	2, 0x045d
    1968:	07b4                	.insn	2, 0x07b4
    196a:	07f0                	.insn	2, 0x07f0
    196c:	6201                	.insn	2, 0x6201
    196e:	f804                	.insn	2, 0xf804
    1970:	0107fc07          	.insn	4, 0x0107fc07
    1974:	045f 07fc 08a0      	.insn	6, 0x08a007fc045f
    197a:	6201                	.insn	2, 0x6201
    197c:	a004                	.insn	2, 0xa004
    197e:	a408                	.insn	2, 0xa408
    1980:	0108                	.insn	2, 0x0108
    1982:	045f 08b0 08b4      	.insn	6, 0x08b408b0045f
    1988:	5e01                	.insn	2, 0x5e01
    198a:	b404                	.insn	2, 0xb404
    198c:	bc08                	.insn	2, 0xbc08
    198e:	0108                	.insn	2, 0x0108
    1990:	045f 08cc 08d0      	.insn	6, 0x08d008cc045f
    1996:	7f08                	.insn	2, 0x7f08
    1998:	7e00                	.insn	2, 0x7e00
    199a:	2200                	.insn	2, 0x2200
    199c:	2531                	.insn	2, 0x2531
    199e:	009f 01c7 01cf      	.insn	6, 0x01cf01c7009f
    19a4:	01d101cf          	.insn	4, 0x01d101cf
    19a8:	c404                	.insn	2, 0xc404
    19aa:	0803cc03          	lbu	s8,128(t2)
    19ae:	0078                	.insn	2, 0x0078
    19b0:	007a                	.insn	2, 0x007a
    19b2:	a921                	.insn	2, 0xa921
    19b4:	cc049f33          	.insn	4, 0xcc049f33
    19b8:	0103e003          	lwu	zero,16(t2)
    19bc:	005a                	.insn	2, 0x005a
    19be:	5a56                	.insn	2, 0x5a56
    19c0:	6765                	.insn	2, 0x6765
    19c2:	746c                	.insn	2, 0x746c
    19c4:	8101817b          	.insn	4, 0x8101817b
    19c8:	8501                	.insn	2, 0x8501
    19ca:	8701                	.insn	2, 0x8701
    19cc:	8901                	.insn	2, 0x8901
    19ce:	8b01                	.insn	2, 0x8b01
    19d0:	8f01                	.insn	2, 0x8f01
    19d2:	9001                	.insn	2, 0x9001
    19d4:	9801                	.insn	2, 0x9801
    19d6:	a501                	.insn	2, 0xa501
    19d8:	0403a603          	lw	a2,64(t2)
    19dc:	7870                	.insn	2, 0x7870
    19de:	5d01                	.insn	2, 0x5d01
    19e0:	ac04                	.insn	2, 0xac04
    19e2:	b401                	.insn	2, 0xb401
    19e4:	0101                	.insn	2, 0x0101
    19e6:	045d                	.insn	2, 0x045d
    19e8:	01d0                	.insn	2, 0x01d0
    19ea:	01e8                	.insn	2, 0x01e8
    19ec:	5d01                	.insn	2, 0x5d01
    19ee:	8004                	.insn	2, 0x8004
    19f0:	8c02                	.insn	2, 0x8c02
    19f2:	0402                	.insn	2, 0x0402
    19f4:	007d                	.insn	2, 0x007d
    19f6:	9f1f 8c04 9402      	.insn	6, 0x94028c049f1f
    19fc:	0102                	.insn	2, 0x0102
    19fe:	045d                	.insn	2, 0x045d
    1a00:	029c                	.insn	2, 0x029c
    1a02:	02a4                	.insn	2, 0x02a4
    1a04:	5d01                	.insn	2, 0x5d01
    1a06:	ac04                	.insn	2, 0xac04
    1a08:	c002                	.insn	2, 0xc002
    1a0a:	0402                	.insn	2, 0x0402
    1a0c:	007d                	.insn	2, 0x007d
    1a0e:	9f1f c404 dc02      	.insn	6, 0xdc02c4049f1f
    1a14:	0102                	.insn	2, 0x0102
    1a16:	045d                	.insn	2, 0x045d
    1a18:	08ac                	.insn	2, 0x08ac
    1a1a:	08b0                	.insn	2, 0x08b0
    1a1c:	7d04                	.insn	2, 0x7d04
    1a1e:	1f00                	.insn	2, 0x1f00
    1a20:	009f 0286 028a      	.insn	6, 0x028a0286009f
    1a26:	028e                	.insn	2, 0x028e
    1a28:	0299                	.insn	2, 0x0299
    1a2a:	02a5                	.insn	2, 0x02a5
    1a2c:	02ac                	.insn	2, 0x02ac
    1a2e:	02ac                	.insn	2, 0x02ac
    1a30:	02b0                	.insn	2, 0x02b0
    1a32:	02b402b3          	mul	t0,s0,a1
    1a36:	02b6                	.insn	2, 0x02b6
    1a38:	02ba02b7          	lui	t0,0x2ba0
    1a3c:	02c2                	.insn	2, 0x02c2
    1a3e:	d804                	.insn	2, 0xd804
    1a40:	e004                	.insn	2, 0xe004
    1a42:	0104                	.insn	2, 0x0104
    1a44:	045d                	.insn	2, 0x045d
    1a46:	04f4                	.insn	2, 0x04f4
    1a48:	0594                	.insn	2, 0x0594
    1a4a:	5d01                	.insn	2, 0x5d01
    1a4c:	c804                	.insn	2, 0xc804
    1a4e:	d405                	.insn	2, 0xd405
    1a50:	0405                	.insn	2, 0x0405
    1a52:	007d                	.insn	2, 0x007d
    1a54:	9f1f d404 dc05      	.insn	6, 0xdc05d4049f1f
    1a5a:	0105                	.insn	2, 0x0105
    1a5c:	045d                	.insn	2, 0x045d
    1a5e:	05e8                	.insn	2, 0x05e8
    1a60:	05f0                	.insn	2, 0x05f0
    1a62:	5d01                	.insn	2, 0x5d01
    1a64:	f804                	.insn	2, 0xf804
    1a66:	fc05                	.insn	2, 0xfc05
    1a68:	0405                	.insn	2, 0x0405
    1a6a:	007d                	.insn	2, 0x007d
    1a6c:	9f1f 9004 a806      	.insn	6, 0xa80690049f1f
    1a72:	0106                	.insn	2, 0x0106
    1a74:	005d                	.insn	2, 0x005d
    1a76:	0382                	.insn	2, 0x0382
    1a78:	038a                	.insn	2, 0x038a
    1a7a:	0399038b          	.insn	4, 0x0399038b
    1a7e:	039e                	.insn	2, 0x039e
    1a80:	03a2                	.insn	2, 0x03a2
    1a82:	cc04                	.insn	2, 0xcc04
    1a84:	0107dc07          	.insn	4, 0x0107dc07
    1a88:	045a                	.insn	2, 0x045a
    1a8a:	07e0                	.insn	2, 0x07e0
    1a8c:	07fc                	.insn	2, 0x07fc
    1a8e:	5a01                	.insn	2, 0x5a01
    1a90:	8c04                	.insn	2, 0x8c04
    1a92:	a408                	.insn	2, 0xa408
    1a94:	0108                	.insn	2, 0x0108
    1a96:	005a                	.insn	2, 0x005a
    1a98:	007a                	.insn	2, 0x007a
    1a9a:	0000                	.insn	2, 0x0000
    1a9c:	0005                	.insn	2, 0x0005
    1a9e:	0008                	.insn	2, 0x0008
    1aa0:	0000                	.insn	2, 0x0000
    1aa2:	0000                	.insn	2, 0x0000
    1aa4:	1700                	.insn	2, 0x1700
    1aa6:	00363617          	auipc	a2,0x363
    1aaa:	0004                	.insn	2, 0x0004
    1aac:	0130                	.insn	2, 0x0130
    1aae:	045a                	.insn	2, 0x045a
    1ab0:	7030                	.insn	2, 0x7030
    1ab2:	a304                	.insn	2, 0xa304
    1ab4:	5a01                	.insn	2, 0x5a01
    1ab6:	049f 8070 0101      	.insn	6, 0x01018070049f
    1abc:	005a                	.insn	2, 0x005a
    1abe:	2c04230f          	.insn	4, 0x2c04230f
    1ac2:	0644                	.insn	2, 0x0644
    1ac4:	0079                	.insn	2, 0x0079
    1ac6:	ff08                	.insn	2, 0xff08
    1ac8:	9f1a                	.insn	2, 0x9f1a
    1aca:	1a00                	.insn	2, 0x1a00
    1acc:	503c042b          	.insn	4, 0x503c042b
    1ad0:	5f01                	.insn	2, 0x5f01
    1ad2:	1e00                	.insn	2, 0x1e00
    1ad4:	042a                	.insn	2, 0x042a
    1ad6:	483c                	.insn	2, 0x483c
    1ad8:	5801                	.insn	2, 0x5801
    1ada:	3100                	.insn	2, 0x3100
    1adc:	3535                	.insn	2, 0x3535
    1ade:	0436                	.insn	2, 0x0436
    1ae0:	6460                	.insn	2, 0x6460
    1ae2:	7f08                	.insn	2, 0x7f08
    1ae4:	7a00                	.insn	2, 0x7a00
    1ae6:	2100                	.insn	2, 0x2100
    1ae8:	33a9                	.insn	2, 0x33a9
    1aea:	049f 7064 5a01      	.insn	6, 0x5a017064049f
    1af0:	0b00                	.insn	2, 0x0b00
    1af2:	17170f0f          	.insn	4, 0x17170f0f
    1af6:	2c140423          	sb	ra,712(s0)
    1afa:	5a01                	.insn	2, 0x5a01
    1afc:	2c04                	.insn	2, 0x2c04
    1afe:	0430                	.insn	2, 0x0430
    1b00:	007a                	.insn	2, 0x007a
    1b02:	9f19                	.insn	2, 0x9f19
    1b04:	3004                	.insn	2, 0x3004
    1b06:	0544                	.insn	2, 0x0544
    1b08:	195a01a3          	sb	s5,387(s4)
    1b0c:	009f 2218 3404      	.insn	6, 0x34042218009f
    1b12:	0140                	.insn	2, 0x0140
    1b14:	005a                	.insn	2, 0x005a
    1b16:	00000153          	.insn	4, 0x0153
    1b1a:	0005                	.insn	2, 0x0005
    1b1c:	0008                	.insn	2, 0x0008
    1b1e:	0000                	.insn	2, 0x0000
    1b20:	0000                	.insn	2, 0x0000
    1b22:	2900                	.insn	2, 0x2900
    1b24:	4029                	.insn	2, 0x4029
    1b26:	4d40                	.insn	2, 0x4d40
    1b28:	574d                	.insn	2, 0x574d
    1b2a:	00040057          	.insn	4, 0x00040057
    1b2e:	0138                	.insn	2, 0x0138
    1b30:	045a                	.insn	2, 0x045a
    1b32:	6438                	.insn	2, 0x6438
    1b34:	a306                	.insn	2, 0xa306
    1b36:	330aa503          	lw	a0,816(s5)
    1b3a:	049f 7064 5a01      	.insn	6, 0x5a017064049f
    1b40:	7004                	.insn	2, 0x7004
    1b42:	0188                	.insn	2, 0x0188
    1b44:	a306                	.insn	2, 0xa306
    1b46:	330aa503          	lw	a0,816(s5)
    1b4a:	049f 0188 01a4      	.insn	6, 0x01a40188049f
    1b50:	5a01                	.insn	2, 0x5a01
    1b52:	0200                	.insn	2, 0x0200
    1b54:	4029                	.insn	2, 0x4029
    1b56:	5e5e                	.insn	2, 0x5e5e
    1b58:	0400                	.insn	2, 0x0400
    1b5a:	3800                	.insn	2, 0x3800
    1b5c:	3002                	.insn	2, 0x3002
    1b5e:	049f 9064 0201      	.insn	6, 0x02019064049f
    1b64:	9f30                	.insn	2, 0x9f30
    1b66:	9004                	.insn	2, 0x9004
    1b68:	a401                	.insn	2, 0xa401
    1b6a:	0201                	.insn	2, 0x0201
    1b6c:	9f40                	.insn	2, 0x9f40
    1b6e:	1b00                	.insn	2, 0x1b00
    1b70:	0400403f 79065c2c 	.insn	8, 0x79065c2c0400403f
    1b78:	0800                	.insn	2, 0x0800
    1b7a:	049f1aff 0601a464 	.insn	12, 0xff0800790601a464049f1aff
    1b82:	ff080079 
    1b86:	9f1a                	.insn	2, 0x9f1a
    1b88:	1a00                	.insn	2, 0x1a00
    1b8a:	2525                	.insn	2, 0x2525
    1b8c:	4029                	.insn	2, 0x4029
    1b8e:	574e                	.insn	2, 0x574e
    1b90:	04005b5b          	.insn	4, 0x04005b5b
    1b94:	3428                	.insn	2, 0x3428
    1b96:	5f01                	.insn	2, 0x5f01
    1b98:	3404                	.insn	2, 0x3404
    1b9a:	0438                	.insn	2, 0x0438
    1b9c:	807f 9f79 6404 0173 	.insn	10, 0x045f017364049f79807f
    1ba4:	045f 
    1ba6:	0188                	.insn	2, 0x0188
    1ba8:	018c                	.insn	2, 0x018c
    1baa:	5f01                	.insn	2, 0x5f01
    1bac:	8c04                	.insn	2, 0x8c04
    1bae:	a401                	.insn	2, 0xa401
    1bb0:	0801                	.insn	2, 0x0801
    1bb2:	007a                	.insn	2, 0x007a
    1bb4:	ff082547          	.insn	4, 0xff082547
    1bb8:	9f1a                	.insn	2, 0x9f1a
    1bba:	1900                	.insn	2, 0x1900
    1bbc:	2828                	.insn	2, 0x2828
    1bbe:	4029                	.insn	2, 0x4029
    1bc0:	5754                	.insn	2, 0x5754
    1bc2:	04006363          	bltu	zero,zero,1c08 <exit-0xe518>
    1bc6:	3828                	.insn	2, 0x3828
    1bc8:	5801                	.insn	2, 0x5801
    1bca:	3804                	.insn	2, 0x3804
    1bcc:	0938                	.insn	2, 0x0938
    1bce:	007a                	.insn	2, 0x007a
    1bd0:	2908                	.insn	2, 0x2908
    1bd2:	0824                	.insn	2, 0x0824
    1bd4:	2529                	.insn	2, 0x2529
    1bd6:	049f fc64 0100      	.insn	6, 0x0100fc64049f
    1bdc:	0458                	.insn	2, 0x0458
    1bde:	0188                	.insn	2, 0x0188
    1be0:	0198                	.insn	2, 0x0198
    1be2:	5801                	.insn	2, 0x5801
    1be4:	9804                	.insn	2, 0x9804
    1be6:	a401                	.insn	2, 0xa401
    1be8:	0901                	.insn	2, 0x0901
    1bea:	007a                	.insn	2, 0x007a
    1bec:	2908                	.insn	2, 0x2908
    1bee:	0824                	.insn	2, 0x0824
    1bf0:	2529                	.insn	2, 0x2529
    1bf2:	009f 3f22 0040      	.insn	6, 0x00403f22009f
    1bf8:	2c04                	.insn	2, 0x2c04
    1bfa:	065c                	.insn	2, 0x065c
    1bfc:	0079                	.insn	2, 0x0079
    1bfe:	ff08                	.insn	2, 0xff08
    1c00:	9f1a                	.insn	2, 0x9f1a
    1c02:	6404                	.insn	2, 0x6404
    1c04:	01a4                	.insn	2, 0x01a4
    1c06:	7906                	.insn	2, 0x7906
    1c08:	0800                	.insn	2, 0x0800
    1c0a:	009f1aff 57563125 	.insn	12, 0x3404005957563125009f1aff
    1c12:	34040059 
    1c16:	0144                	.insn	2, 0x0144
    1c18:	045f 0184 0188      	.insn	6, 0x01880184045f
    1c1e:	5f01                	.insn	2, 0x5f01
    1c20:	8804                	.insn	2, 0x8804
    1c22:	a401                	.insn	2, 0xa401
    1c24:	0401                	.insn	2, 0x0401
    1c26:	ff0a                	.insn	2, 0xff0a
    1c28:	23009f07          	.insn	4, 0x23009f07
    1c2c:	4030                	.insn	2, 0x4030
    1c2e:	6868                	.insn	2, 0x6868
    1c30:	0400                	.insn	2, 0x0400
    1c32:	3c2c                	.insn	2, 0x3c2c
    1c34:	5801                	.insn	2, 0x5801
    1c36:	6404                	.insn	2, 0x6404
    1c38:	01a0                	.insn	2, 0x01a0
    1c3a:	5801                	.insn	2, 0x5801
    1c3c:	a004                	.insn	2, 0xa004
    1c3e:	a401                	.insn	2, 0xa401
    1c40:	0b01                	.insn	2, 0x0b01
    1c42:	007a                	.insn	2, 0x007a
    1c44:	2908                	.insn	2, 0x2908
    1c46:	0824                	.insn	2, 0x0824
    1c48:	2529                	.insn	2, 0x2529
    1c4a:	244d                	.insn	2, 0x244d
    1c4c:	009f 3e37 403e      	.insn	6, 0x403e3e37009f
    1c52:	5404                	.insn	2, 0x5404
    1c54:	0858                	.insn	2, 0x0858
    1c56:	007f 007a a921 9f3a 	.insn	10, 0x58049f3aa921007a007f
    1c5e:	5804 
    1c60:	0164                	.insn	2, 0x0164
    1c62:	005a                	.insn	2, 0x005a
    1c64:	574e                	.insn	2, 0x574e
    1c66:	7404                	.insn	2, 0x7404
    1c68:	0188                	.insn	2, 0x0188
    1c6a:	5a01                	.insn	2, 0x5a01
    1c6c:	1000                	.insn	2, 0x1000
    1c6e:	0002                	.insn	2, 0x0002
    1c70:	0500                	.insn	2, 0x0500
    1c72:	0800                	.insn	2, 0x0800
    1c74:	0000                	.insn	2, 0x0000
    1c76:	0000                	.insn	2, 0x0000
    1c78:	0000                	.insn	2, 0x0000
    1c7a:	1919                	.insn	2, 0x1919
    1c7c:	0400                	.insn	2, 0x0400
    1c7e:	1c00                	.insn	2, 0x1c00
    1c80:	5a01                	.insn	2, 0x5a01
    1c82:	1c04                	.insn	2, 0x1c04
    1c84:	01f4                	.insn	2, 0x01f4
    1c86:	a306                	.insn	2, 0xa306
    1c88:	330aa503          	lw	a0,816(s5)
    1c8c:	009f 4102 4641      	.insn	6, 0x46414102009f
    1c92:	837b6957          	.insn	4, 0x837b6957
    1c96:	8601                	.insn	2, 0x8601
    1c98:	0001                	.insn	2, 0x0001
    1c9a:	0004                	.insn	2, 0x0004
    1c9c:	0264                	.insn	2, 0x0264
    1c9e:	9f30                	.insn	2, 0x9f30
    1ca0:	6404                	.insn	2, 0x6404
    1ca2:	0268                	.insn	2, 0x0268
    1ca4:	9f31                	.insn	2, 0x9f31
    1ca6:	9404                	.insn	2, 0x9404
    1ca8:	b401                	.insn	2, 0xb401
    1caa:	0201                	.insn	2, 0x0201
    1cac:	9f30                	.insn	2, 0x9f30
    1cae:	c804                	.insn	2, 0xc804
    1cb0:	e401                	.insn	2, 0xe401
    1cb2:	0201                	.insn	2, 0x0201
    1cb4:	9f30                	.insn	2, 0x9f30
    1cb6:	ec04                	.insn	2, 0xec04
    1cb8:	f401                	.insn	2, 0xf401
    1cba:	0201                	.insn	2, 0x0201
    1cbc:	9f30                	.insn	2, 0x9f30
    1cbe:	1900                	.insn	2, 0x1900
    1cc0:	7b69                	.insn	2, 0x7b69
    1cc2:	7e7e                	.insn	2, 0x7e7e
    1cc4:	0181                	.insn	2, 0x0181
    1cc6:	0181                	.insn	2, 0x0181
    1cc8:	0400                	.insn	2, 0x0400
    1cca:	b41c                	.insn	2, 0xb41c
    1ccc:	0601                	.insn	2, 0x0601
    1cce:	007a                	.insn	2, 0x007a
    1cd0:	ff08                	.insn	2, 0xff08
    1cd2:	9f1a                	.insn	2, 0x9f1a
    1cd4:	c804                	.insn	2, 0xc804
    1cd6:	d001                	.insn	2, 0xd001
    1cd8:	0601                	.insn	2, 0x0601
    1cda:	007a                	.insn	2, 0x007a
    1cdc:	ff08                	.insn	2, 0xff08
    1cde:	9f1a                	.insn	2, 0x9f1a
    1ce0:	d004                	.insn	2, 0xd004
    1ce2:	dc01                	.insn	2, 0xdc01
    1ce4:	0201                	.insn	2, 0x0201
    1ce6:	9f30                	.insn	2, 0x9f30
    1ce8:	dc04                	.insn	2, 0xdc04
    1cea:	f401                	.insn	2, 0xf401
    1cec:	0601                	.insn	2, 0x0601
    1cee:	007a                	.insn	2, 0x007a
    1cf0:	ff08                	.insn	2, 0xff08
    1cf2:	9f1a                	.insn	2, 0x9f1a
    1cf4:	1800                	.insn	2, 0x1800
    1cf6:	2626                	.insn	2, 0x2626
    1cf8:	572e                	.insn	2, 0x572e
    1cfa:	6060                	.insn	2, 0x6060
    1cfc:	7b69                	.insn	2, 0x7b69
    1cfe:	817d                	.insn	2, 0x817d
    1d00:	8201                	.insn	2, 0x8201
    1d02:	8601                	.insn	2, 0x8601
    1d04:	8701                	.insn	2, 0x8701
    1d06:	0401                	.insn	2, 0x0401
    1d08:	2818                	.insn	2, 0x2818
    1d0a:	5e01                	.insn	2, 0x5e01
    1d0c:	2804                	.insn	2, 0x2804
    1d0e:	0454                	.insn	2, 0x0454
    1d10:	807e                	.insn	2, 0x807e
    1d12:	94049f07          	.insn	4, 0x94049f07
    1d16:	a801                	.insn	2, 0xa801
    1d18:	0401                	.insn	2, 0x0401
    1d1a:	807e                	.insn	2, 0x807e
    1d1c:	a8049f07          	.insn	4, 0xa8049f07
    1d20:	b401                	.insn	2, 0xb401
    1d22:	0101                	.insn	2, 0x0101
    1d24:	045e                	.insn	2, 0x045e
    1d26:	01c8                	.insn	2, 0x01c8
    1d28:	01cc                	.insn	2, 0x01cc
    1d2a:	5e01                	.insn	2, 0x5e01
    1d2c:	dc04                	.insn	2, 0xdc04
    1d2e:	e001                	.insn	2, 0xe001
    1d30:	0401                	.insn	2, 0x0401
    1d32:	807e                	.insn	2, 0x807e
    1d34:	ec049f07          	.insn	4, 0xec049f07
    1d38:	f001                	.insn	2, 0xf001
    1d3a:	0401                	.insn	2, 0x0401
    1d3c:	807e                	.insn	2, 0x807e
    1d3e:	17009f07          	.insn	4, 0x17009f07
    1d42:	1e1e                	.insn	2, 0x1e1e
    1d44:	5730                	.insn	2, 0x5730
    1d46:	5a59                	.insn	2, 0x5a59
    1d48:	6060                	.insn	2, 0x6060
    1d4a:	7b69                	.insn	2, 0x7b69
    1d4c:	0180                	.insn	2, 0x0180
    1d4e:	0181                	.insn	2, 0x0181
    1d50:	01860183          	lb	gp,24(a2) # 364abe <__BSS_END__+0x34face>
    1d54:	0400                	.insn	2, 0x0400
    1d56:	2018                	.insn	2, 0x2018
    1d58:	5f01                	.insn	2, 0x5f01
    1d5a:	2004                	.insn	2, 0x2004
    1d5c:	015c                	.insn	2, 0x015c
    1d5e:	045d                	.insn	2, 0x045d
    1d60:	0194                	.insn	2, 0x0194
    1d62:	019c                	.insn	2, 0x019c
    1d64:	5d01                	.insn	2, 0x5d01
    1d66:	a404                	.insn	2, 0xa404
    1d68:	a801                	.insn	2, 0xa801
    1d6a:	0101                	.insn	2, 0x0101
    1d6c:	045f 01a8 01b4      	.insn	6, 0x01b401a8045f
    1d72:	5d01                	.insn	2, 0x5d01
    1d74:	c804                	.insn	2, 0xc804
    1d76:	d801                	.insn	2, 0xd801
    1d78:	0101                	.insn	2, 0x0101
    1d7a:	045d                	.insn	2, 0x045d
    1d7c:	01dc                	.insn	2, 0x01dc
    1d7e:	01e4                	.insn	2, 0x01e4
    1d80:	5d01                	.insn	2, 0x5d01
    1d82:	ec04                	.insn	2, 0xec04
    1d84:	f401                	.insn	2, 0xf401
    1d86:	0101                	.insn	2, 0x0101
    1d88:	005d                	.insn	2, 0x005d
    1d8a:	6924                	.insn	2, 0x6924
    1d8c:	817e7e7b          	.insn	4, 0x817e7e7b
    1d90:	8101                	.insn	2, 0x8101
    1d92:	0001                	.insn	2, 0x0001
    1d94:	2004                	.insn	2, 0x2004
    1d96:	01b4                	.insn	2, 0x01b4
    1d98:	7a06                	.insn	2, 0x7a06
    1d9a:	0800                	.insn	2, 0x0800
    1d9c:	049f1aff 01d001c8 	.insn	12, 0x08007a0601d001c8049f1aff
    1da4:	08007a06 
    1da8:	049f1aff 01dc01d0 	.insn	12, 0x049f300201dc01d0049f1aff
    1db0:	049f3002 
    1db4:	01dc                	.insn	2, 0x01dc
    1db6:	01f4                	.insn	2, 0x01f4
    1db8:	7a06                	.insn	2, 0x7a06
    1dba:	0800                	.insn	2, 0x0800
    1dbc:	009f1aff 56552e26 	.insn	12, 0x6966605756552e26009f1aff
    1dc4:	69666057 
    1dc8:	817c                	.insn	2, 0x817c
    1dca:	8101                	.insn	2, 0x8101
    1dcc:	8201                	.insn	2, 0x8201
    1dce:	8301                	.insn	2, 0x8301
    1dd0:	8701                	.insn	2, 0x8701
    1dd2:	0401                	.insn	2, 0x0401
    1dd4:	5428                	.insn	2, 0x5428
    1dd6:	5e01                	.insn	2, 0x5e01
    1dd8:	8c04                	.insn	2, 0x8c04
    1dda:	8c01                	.insn	2, 0x8c01
    1ddc:	0101                	.insn	2, 0x0101
    1dde:	045e                	.insn	2, 0x045e
    1de0:	0194                	.insn	2, 0x0194
    1de2:	01a8                	.insn	2, 0x01a8
    1de4:	5e01                	.insn	2, 0x5e01
    1de6:	ac04                	.insn	2, 0xac04
    1de8:	b401                	.insn	2, 0xb401
    1dea:	0201                	.insn	2, 0x0201
    1dec:	9f30                	.insn	2, 0x9f30
    1dee:	c804                	.insn	2, 0xc804
    1df0:	dc01                	.insn	2, 0xdc01
    1df2:	0301                	.insn	2, 0x0301
    1df4:	ff08                	.insn	2, 0xff08
    1df6:	049f 01dc 01e0      	.insn	6, 0x01e001dc049f
    1dfc:	5e01                	.insn	2, 0x5e01
    1dfe:	e404                	.insn	2, 0xe404
    1e00:	f001                	.insn	2, 0xf001
    1e02:	0101                	.insn	2, 0x0101
    1e04:	005e                	.insn	2, 0x005e
    1e06:	5653534f          	.insn	4, 0x5653534f
    1e0a:	7b69605b          	.insn	4, 0x7b69605b
    1e0e:	01850183          	lb	gp,24(a0)
    1e12:	0185                	.insn	2, 0x0185
    1e14:	0186                	.insn	2, 0x0186
    1e16:	8004                	.insn	2, 0x8004
    1e18:	8801                	.insn	2, 0x8801
    1e1a:	0101                	.insn	2, 0x0101
    1e1c:	045f 0188 018c      	.insn	6, 0x018c0188045f
    1e22:	7f09                	.insn	2, 0x7f09
    1e24:	1100                	.insn	2, 0x1100
    1e26:	ffff                	.insn	2, 0xffff
    1e28:	9f1a5fff a801a404 	.insn	20, 0xe4045d0101c801b4045f0101a801a4049f1a5fff
    1e30:	045f0101 01c801b4 
    1e38:	e4045d01 
    1e3c:	e801                	.insn	2, 0xe801
    1e3e:	0101                	.insn	2, 0x0101
    1e40:	045f 01e8 01ec      	.insn	6, 0x01ec01e8045f
    1e46:	5d01                	.insn	2, 0x5d01
    1e48:	3200                	.insn	2, 0x3200
    1e4a:	0446                	.insn	2, 0x0446
    1e4c:	6864                	.insn	2, 0x6864
    1e4e:	3102                	.insn	2, 0x3102
    1e50:	009f 4639 6404      	.insn	6, 0x64044639009f
    1e56:	0668                	.insn	2, 0x0668
    1e58:	007a                	.insn	2, 0x007a
    1e5a:	ff08                	.insn	2, 0xff08
    1e5c:	9f1a                	.insn	2, 0x9f1a
    1e5e:	3a00                	.insn	2, 0x3a00
    1e60:	0446                	.insn	2, 0x0446
    1e62:	6864                	.insn	2, 0x6864
    1e64:	3002                	.insn	2, 0x3002
    1e66:	009f 4645 6404      	.insn	6, 0x64044645009f
    1e6c:	0768                	.insn	2, 0x0768
    1e6e:	007f 2431 0423 009f 	.insn	10, 0x7a79009f04232431007f
    1e76:	7a79 
    1e78:	c004                	.insn	2, 0xc004
    1e7a:	c401                	.insn	2, 0xc401
    1e7c:	0201                	.insn	2, 0x0201
    1e7e:	f05a                	.insn	2, 0xf05a
    1e80:	6600                	.insn	2, 0x6600
    1e82:	0000                	.insn	2, 0x0000
    1e84:	0500                	.insn	2, 0x0500
    1e86:	0800                	.insn	2, 0x0800
    1e88:	0000                	.insn	2, 0x0000
    1e8a:	0000                	.insn	2, 0x0000
    1e8c:	0000                	.insn	2, 0x0000
    1e8e:	0c0c                	.insn	2, 0x0c0c
    1e90:	14141313          	.insn	4, 0x14141313
    1e94:	0400                	.insn	2, 0x0400
    1e96:	1800                	.insn	2, 0x1800
    1e98:	5a01                	.insn	2, 0x5a01
    1e9a:	1804                	.insn	2, 0x1804
    1e9c:	0438                	.insn	2, 0x0438
    1e9e:	9f5a01a3          	sb	s5,-1565(s4)
    1ea2:	3804                	.insn	2, 0x3804
    1ea4:	013c                	.insn	2, 0x013c
    1ea6:	045a                	.insn	2, 0x045a
    1ea8:	403c                	.insn	2, 0x403c
    1eaa:	a304                	.insn	2, 0xa304
    1eac:	5a01                	.insn	2, 0x5a01
    1eae:	009f 0c04 130c      	.insn	6, 0x130c0c04009f
    1eb4:	00141413          	slli	s0,s0,0x1
    1eb8:	0004                	.insn	2, 0x0004
    1eba:	0118                	.insn	2, 0x0118
    1ebc:	045a                	.insn	2, 0x045a
    1ebe:	3818                	.insn	2, 0x3818
    1ec0:	a304                	.insn	2, 0xa304
    1ec2:	5a01                	.insn	2, 0x5a01
    1ec4:	049f 3c38 5a01      	.insn	6, 0x5a013c38049f
    1eca:	3c04                	.insn	2, 0x3c04
    1ecc:	0440                	.insn	2, 0x0440
    1ece:	9f5a01a3          	sb	s5,-1565(s4)
    1ed2:	0700                	.insn	2, 0x0700
    1ed4:	0909                	.insn	2, 0x0909
    1ed6:	1311                	.insn	2, 0x1311
    1ed8:	0400                	.insn	2, 0x0400
    1eda:	0400                	.insn	2, 0x0400
    1edc:	9f380803          	lb	a6,-1549(a6)
    1ee0:	0404                	.insn	2, 0x0404
    1ee2:	0124                	.insn	2, 0x0124
    1ee4:	045f 4038 5f01      	.insn	6, 0x5f014038045f
	...

Disassembly of section .debug_rnglists:

0000000000000000 <.debug_rnglists>:
   0:	000000d3          	.insn	4, 0x00d3
   4:	0005                	.insn	2, 0x0005
   6:	0008                	.insn	2, 0x0008
   8:	0000                	.insn	2, 0x0000
   a:	0000                	.insn	2, 0x0000
   c:	0004                	.insn	2, 0x0004
   e:	0400                	.insn	2, 0x0400
  10:	0c04                	.insn	2, 0x0c04
  12:	1404                	.insn	2, 0x1404
  14:	041c                	.insn	2, 0x041c
  16:	2824                	.insn	2, 0x2824
  18:	3404                	.insn	2, 0x3404
  1a:	0038                	.insn	2, 0x0038
  1c:	0c04                	.insn	2, 0x0c04
  1e:	0410                	.insn	2, 0x0410
  20:	2420                	.insn	2, 0x2420
  22:	2804                	.insn	2, 0x2804
  24:	042c                	.insn	2, 0x042c
  26:	3c38                	.insn	2, 0x3c38
  28:	4004                	.insn	2, 0x4004
  2a:	0040                	.insn	2, 0x0040
  2c:	4404                	.insn	2, 0x4404
  2e:	0448                	.insn	2, 0x0448
  30:	a04c                	.insn	2, 0xa04c
  32:	0401                	.insn	2, 0x0401
  34:	01a8                	.insn	2, 0x01a8
  36:	0380                	.insn	2, 0x0380
  38:	9404                	.insn	2, 0x9404
  3a:	04039803          	lh	a6,64(t2)
  3e:	03cc                	.insn	2, 0x03cc
  40:	03d0                	.insn	2, 0x03d0
  42:	d404                	.insn	2, 0xd404
  44:	0403f003          	.insn	4, 0x0403f003
  48:	08a8                	.insn	2, 0x08a8
  4a:	08b0                	.insn	2, 0x08b0
  4c:	bc04                	.insn	2, 0xbc04
  4e:	c008                	.insn	2, 0xc008
  50:	0008                	.insn	2, 0x0008
  52:	a004                	.insn	2, 0xa004
  54:	a801                	.insn	2, 0xa801
  56:	0401                	.insn	2, 0x0401
  58:	0380                	.insn	2, 0x0380
  5a:	0394                	.insn	2, 0x0394
  5c:	9804                	.insn	2, 0x9804
  5e:	04039803          	lh	a6,64(t2)
  62:	03f0                	.insn	2, 0x03f0
  64:	04b4                	.insn	2, 0x04b4
  66:	c804                	.insn	2, 0xc804
  68:	e406                	.insn	2, 0xe406
  6a:	0406                	.insn	2, 0x0406
  6c:	06fc                	.insn	2, 0x06fc
  6e:	0788                	.insn	2, 0x0788
  70:	9004                	.insn	2, 0x9004
  72:	04079c07          	.insn	4, 0x04079c07
  76:	07a0                	.insn	2, 0x07a0
  78:	07a8                	.insn	2, 0x07a8
  7a:	ac04                	.insn	2, 0xac04
  7c:	0407b407          	.insn	4, 0x0407b407
  80:	07fc                	.insn	2, 0x07fc
  82:	0880                	.insn	2, 0x0880
  84:	8404                	.insn	2, 0x8404
  86:	8808                	.insn	2, 0x8808
  88:	0408                	.insn	2, 0x0408
  8a:	08c0                	.insn	2, 0x08c0
  8c:	08c8                	.insn	2, 0x08c8
  8e:	0400                	.insn	2, 0x0400
  90:	0380                	.insn	2, 0x0380
  92:	0380                	.insn	2, 0x0380
  94:	d004                	.insn	2, 0xd004
  96:	0403d403          	lhu	s0,64(t2)
  9a:	04b4                	.insn	2, 0x04b4
  9c:	06c8                	.insn	2, 0x06c8
  9e:	e404                	.insn	2, 0xe404
  a0:	fc06                	.insn	2, 0xfc06
  a2:	0406                	.insn	2, 0x0406
  a4:	0788                	.insn	2, 0x0788
  a6:	0790                	.insn	2, 0x0790
  a8:	9c04                	.insn	2, 0x9c04
  aa:	0407a007          	.insn	4, 0x0407a007
  ae:	07a8                	.insn	2, 0x07a8
  b0:	07ac                	.insn	2, 0x07ac
  b2:	b404                	.insn	2, 0xb404
  b4:	0407fc07          	.insn	4, 0x0407fc07
  b8:	0880                	.insn	2, 0x0880
  ba:	0884                	.insn	2, 0x0884
  bc:	8804                	.insn	2, 0x8804
  be:	a808                	.insn	2, 0xa808
  c0:	0408                	.insn	2, 0x0408
  c2:	08b0                	.insn	2, 0x08b0
  c4:	08bc                	.insn	2, 0x08bc
  c6:	0400                	.insn	2, 0x0400
  c8:	04d4                	.insn	2, 0x04d4
  ca:	04e0                	.insn	2, 0x04e0
  cc:	c804                	.insn	2, 0xc804
  ce:	0407fc07          	.insn	4, 0x0407fc07
  d2:	0890                	.insn	2, 0x0890
  d4:	08a8                	.insn	2, 0x08a8
  d6:	7a00                	.insn	2, 0x7a00
  d8:	0000                	.insn	2, 0x0000
  da:	0500                	.insn	2, 0x0500
  dc:	0800                	.insn	2, 0x0800
  de:	0000                	.insn	2, 0x0000
  e0:	0000                	.insn	2, 0x0000
  e2:	0400                	.insn	2, 0x0400
  e4:	0000                	.insn	2, 0x0000
  e6:	0804                	.insn	2, 0x0804
  e8:	040c                	.insn	2, 0x040c
  ea:	1c18                	.insn	2, 0x1c18
  ec:	2804                	.insn	2, 0x2804
  ee:	042c                	.insn	2, 0x042c
  f0:	3830                	.insn	2, 0x3830
  f2:	f404                	.insn	2, 0xf404
  f4:	0403f803          	.insn	4, 0x0403f803
  f8:	0488                	.insn	2, 0x0488
  fa:	048c                	.insn	2, 0x048c
  fc:	0400                	.insn	2, 0x0400
  fe:	5c58                	.insn	2, 0x5c58
 100:	d404                	.insn	2, 0xd404
 102:	0003f403          	.insn	4, 0x0003f403
 106:	5c04                	.insn	2, 0x5c04
 108:	0470                	.insn	2, 0x0470
 10a:	04b8                	.insn	2, 0x04b8
 10c:	04bc                	.insn	2, 0x04bc
 10e:	cc04                	.insn	2, 0xcc04
 110:	d004                	.insn	2, 0xd004
 112:	0404                	.insn	2, 0x0404
 114:	04f4                	.insn	2, 0x04f4
 116:	04f8                	.insn	2, 0x04f8
 118:	0400                	.insn	2, 0x0400
 11a:	0190                	.insn	2, 0x0190
 11c:	0194                	.insn	2, 0x0194
 11e:	9804                	.insn	2, 0x9804
 120:	b804                	.insn	2, 0xb804
 122:	0004                	.insn	2, 0x0004
 124:	c404                	.insn	2, 0xc404
 126:	b401                	.insn	2, 0xb401
 128:	0402                	.insn	2, 0x0402
 12a:	02b8                	.insn	2, 0x02b8
 12c:	02bc                	.insn	2, 0x02bc
 12e:	0400                	.insn	2, 0x0400
 130:	01c4                	.insn	2, 0x01c4
 132:	0298                	.insn	2, 0x0298
 134:	9804                	.insn	2, 0x9804
 136:	9c02                	.insn	2, 0x9c02
 138:	0402                	.insn	2, 0x0402
 13a:	02a0                	.insn	2, 0x02a0
 13c:	02a4                	.insn	2, 0x02a4
 13e:	0400                	.insn	2, 0x0400
 140:	0394                	.insn	2, 0x0394
 142:	0394                	.insn	2, 0x0394
 144:	9c04                	.insn	2, 0x9c04
 146:	0003b003          	ld	zero,0(t2)
 14a:	9004                	.insn	2, 0x9004
 14c:	9c05                	.insn	2, 0x9c05
 14e:	0405                	.insn	2, 0x0405
 150:	05c0                	.insn	2, 0x05c0
 152:	06a4                	.insn	2, 0x06a4
 154:	cc00                	.insn	2, 0xcc00
 156:	0000                	.insn	2, 0x0000
 158:	0500                	.insn	2, 0x0500
 15a:	0800                	.insn	2, 0x0800
 15c:	0000                	.insn	2, 0x0000
 15e:	0000                	.insn	2, 0x0000
 160:	0400                	.insn	2, 0x0400
 162:	0000                	.insn	2, 0x0000
 164:	0404                	.insn	2, 0x0404
 166:	0408                	.insn	2, 0x0408
 168:	100c                	.insn	2, 0x100c
 16a:	1404                	.insn	2, 0x1404
 16c:	0418                	.insn	2, 0x0418
 16e:	2c24                	.insn	2, 0x2c24
 170:	4404                	.insn	2, 0x4404
 172:	0048                	.insn	2, 0x0048
 174:	0004                	.insn	2, 0x0004
 176:	0404                	.insn	2, 0x0404
 178:	1410                	.insn	2, 0x1410
 17a:	1804                	.insn	2, 0x1804
 17c:	041c                	.insn	2, 0x041c
 17e:	4440                	.insn	2, 0x4440
 180:	5804                	.insn	2, 0x5804
 182:	0058                	.insn	2, 0x0058
 184:	5804                	.insn	2, 0x5804
 186:	045c                	.insn	2, 0x045c
 188:	b460                	.insn	2, 0xb460
 18a:	0401                	.insn	2, 0x0401
 18c:	01bc                	.insn	2, 0x01bc
 18e:	0394                	.insn	2, 0x0394
 190:	a804                	.insn	2, 0xa804
 192:	0403ac03          	lw	s8,64(t2)
 196:	03e0                	.insn	2, 0x03e0
 198:	03e4                	.insn	2, 0x03e4
 19a:	e804                	.insn	2, 0xe804
 19c:	04048403          	lb	s0,64(s1)
 1a0:	08a4                	.insn	2, 0x08a4
 1a2:	08b0                	.insn	2, 0x08b0
 1a4:	cc04                	.insn	2, 0xcc04
 1a6:	d008                	.insn	2, 0xd008
 1a8:	0008                	.insn	2, 0x0008
 1aa:	b404                	.insn	2, 0xb404
 1ac:	bc01                	.insn	2, 0xbc01
 1ae:	0401                	.insn	2, 0x0401
 1b0:	0394                	.insn	2, 0x0394
 1b2:	03a8                	.insn	2, 0x03a8
 1b4:	ac04                	.insn	2, 0xac04
 1b6:	0403ac03          	lw	s8,64(t2)
 1ba:	0484                	.insn	2, 0x0484
 1bc:	04c8                	.insn	2, 0x04c8
 1be:	f804                	.insn	2, 0xf804
 1c0:	8406                	.insn	2, 0x8406
 1c2:	078c0407          	.insn	4, 0x078c0407
 1c6:	0798                	.insn	2, 0x0798
 1c8:	9c04                	.insn	2, 0x9c04
 1ca:	0407a407          	.insn	4, 0x0407a407
 1ce:	07a8                	.insn	2, 0x07a8
 1d0:	07b0                	.insn	2, 0x07b0
 1d2:	f804                	.insn	2, 0xf804
 1d4:	0407fc07          	.insn	4, 0x0407fc07
 1d8:	0880                	.insn	2, 0x0880
 1da:	0884                	.insn	2, 0x0884
 1dc:	b004                	.insn	2, 0xb004
 1de:	cc08                	.insn	2, 0xcc08
 1e0:	0408                	.insn	2, 0x0408
 1e2:	08d0                	.insn	2, 0x08d0
 1e4:	08d8                	.insn	2, 0x08d8
 1e6:	0400                	.insn	2, 0x0400
 1e8:	0394                	.insn	2, 0x0394
 1ea:	0394                	.insn	2, 0x0394
 1ec:	e404                	.insn	2, 0xe404
 1ee:	0403e803          	lwu	a6,64(t2)
 1f2:	04c8                	.insn	2, 0x04c8
 1f4:	06f8                	.insn	2, 0x06f8
 1f6:	8404                	.insn	2, 0x8404
 1f8:	04078c07          	.insn	4, 0x04078c07
 1fc:	0798                	.insn	2, 0x0798
 1fe:	079c                	.insn	2, 0x079c
 200:	a404                	.insn	2, 0xa404
 202:	0407a807          	.insn	4, 0x0407a807
 206:	07b0                	.insn	2, 0x07b0
 208:	07f8                	.insn	2, 0x07f8
 20a:	fc04                	.insn	2, 0xfc04
 20c:	04088007          	.insn	4, 0x04088007
 210:	0884                	.insn	2, 0x0884
 212:	08a4                	.insn	2, 0x08a4
 214:	0400                	.insn	2, 0x0400
 216:	04e8                	.insn	2, 0x04e8
 218:	04f4                	.insn	2, 0x04f4
 21a:	c404                	.insn	2, 0xc404
 21c:	0407f807          	.insn	4, 0x0407f807
 220:	088c                	.insn	2, 0x088c
 222:	08a4                	.insn	2, 0x08a4
 224:	2400                	.insn	2, 0x2400
 226:	0000                	.insn	2, 0x0000
 228:	0500                	.insn	2, 0x0500
 22a:	0800                	.insn	2, 0x0800
 22c:	0000                	.insn	2, 0x0000
 22e:	0000                	.insn	2, 0x0000
 230:	0400                	.insn	2, 0x0400
 232:	0000                	.insn	2, 0x0000
 234:	1004                	.insn	2, 0x1004
 236:	0444                	.insn	2, 0x0444
 238:	8070                	.insn	2, 0x8070
 23a:	0001                	.insn	2, 0x0001
 23c:	2004                	.insn	2, 0x2004
 23e:	0428                	.insn	2, 0x0428
 240:	3c2c                	.insn	2, 0x3c2c
 242:	0400                	.insn	2, 0x0400
 244:	5044                	.insn	2, 0x5044
 246:	5404                	.insn	2, 0x5404
 248:	0458                	.insn	2, 0x0458
 24a:	605c                	.insn	2, 0x605c
 24c:	1c00                	.insn	2, 0x1c00
 24e:	0000                	.insn	2, 0x0000
 250:	0500                	.insn	2, 0x0500
 252:	0800                	.insn	2, 0x0800
 254:	0000                	.insn	2, 0x0000
 256:	0000                	.insn	2, 0x0000
 258:	0400                	.insn	2, 0x0400
 25a:	0800                	.insn	2, 0x0800
 25c:	1804                	.insn	2, 0x1804
 25e:	041c                	.insn	2, 0x041c
 260:	2c24                	.insn	2, 0x2c24
 262:	0400                	.insn	2, 0x0400
 264:	4438                	.insn	2, 0x4438
 266:	4804                	.insn	2, 0x4804
 268:	044c                	.insn	2, 0x044c
 26a:	5450                	.insn	2, 0x5450
 26c:	2b00                	.insn	2, 0x2b00
 26e:	0000                	.insn	2, 0x0000
 270:	0500                	.insn	2, 0x0500
 272:	0800                	.insn	2, 0x0800
 274:	0000                	.insn	2, 0x0000
 276:	0000                	.insn	2, 0x0000
 278:	0400                	.insn	2, 0x0400
 27a:	0800                	.insn	2, 0x0800
 27c:	0c04                	.insn	2, 0x0c04
 27e:	0410                	.insn	2, 0x0410
 280:	1c14                	.insn	2, 0x1c14
 282:	0400                	.insn	2, 0x0400
 284:	9464                	.insn	2, 0x9464
 286:	0401                	.insn	2, 0x0401
 288:	01a4                	.insn	2, 0x01a4
 28a:	01a8                	.insn	2, 0x01a8
 28c:	b404                	.insn	2, 0xb404
 28e:	b401                	.insn	2, 0xb401
 290:	0401                	.insn	2, 0x0401
 292:	01d4                	.insn	2, 0x01d4
 294:	01dc                	.insn	2, 0x01dc
 296:	e404                	.insn	2, 0xe404
 298:	ec01                	.insn	2, 0xec01
 29a:	0001                	.insn	2, 0x0001
 29c:	0012                	.insn	2, 0x0012
 29e:	0000                	.insn	2, 0x0000
 2a0:	0005                	.insn	2, 0x0005
 2a2:	0008                	.insn	2, 0x0008
 2a4:	0000                	.insn	2, 0x0000
 2a6:	0000                	.insn	2, 0x0000
 2a8:	0004                	.insn	2, 0x0004
 2aa:	0418                	.insn	2, 0x0418
 2ac:	3018                	.insn	2, 0x3018
 2ae:	3804                	.insn	2, 0x3804
 2b0:	0040                	.insn	2, 0x0040

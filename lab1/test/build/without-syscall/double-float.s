
test/build/without-syscall/double-float.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	365010ef          	jal	11c98 <__call_exitprocs>
   10138:	2181b783          	ld	a5,536(gp) # 14a30 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	7a5020ef          	jal	130ec <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00013537          	lui	a0,0x13
   10158:	fb450513          	addi	a0,a0,-76 # 12fb4 <__libc_fini_array>
   1015c:	4750106f          	j	11dd0 <atexit>
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
   10184:	239010ef          	jal	11bbc <memset>
   10188:	00002517          	auipc	a0,0x2
   1018c:	c4850513          	addi	a0,a0,-952 # 11dd0 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00003517          	auipc	a0,0x3
   10198:	e2050513          	addi	a0,a0,-480 # 12fb4 <__libc_fini_array>
   1019c:	435010ef          	jal	11dd0 <atexit>
   101a0:	189010ef          	jal	11b28 <__libc_init_array>
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
   101d8:	36850513          	addi	a0,a0,872 # 13368 <__EH_FRAME_BEGIN__>
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
   1020c:	36850513          	addi	a0,a0,872 # 13368 <__EH_FRAME_BEGIN__>
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
   10260:	651000ef          	jal	110b0 <__floatsidf>
   10264:	00050713          	mv	a4,a0
   10268:	000137b7          	lui	a5,0x13
   1026c:	2607b583          	ld	a1,608(a5) # 13260 <__errno+0xc>
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
   102ec:	5c5000ef          	jal	110b0 <__floatsidf>
   102f0:	00050713          	mv	a4,a0
   102f4:	000137b7          	lui	a5,0x13
   102f8:	2607b583          	ld	a1,608(a5) # 13260 <__errno+0xc>
   102fc:	00070513          	mv	a0,a4
   10300:	5e8000ef          	jal	108e8 <__muldf3>
   10304:	00050793          	mv	a5,a0
   10308:	00078593          	mv	a1,a5
   1030c:	00048513          	mv	a0,s1
   10310:	149000ef          	jal	10c58 <__subdf3>
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
   10374:	5bd000ef          	jal	11130 <__extendsfdf2>
   10378:	00050493          	mv	s1,a0
   1037c:	fdc42783          	lw	a5,-36(s0)
   10380:	00078513          	mv	a0,a5
   10384:	52d000ef          	jal	110b0 <__floatsidf>
   10388:	00050713          	mv	a4,a0
   1038c:	000137b7          	lui	a5,0x13
   10390:	2607b583          	ld	a1,608(a5) # 13260 <__errno+0xc>
   10394:	00070513          	mv	a0,a4
   10398:	550000ef          	jal	108e8 <__muldf3>
   1039c:	00050793          	mv	a5,a0
   103a0:	00078593          	mv	a1,a5
   103a4:	00048513          	mv	a0,s1
   103a8:	0f8000ef          	jal	104a0 <__adddf3>
   103ac:	00050793          	mv	a5,a0
   103b0:	00078513          	mv	a0,a5
   103b4:	621000ef          	jal	111d4 <__truncdfsf2>
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
   1040c:	525000ef          	jal	11130 <__extendsfdf2>
   10410:	00050493          	mv	s1,a0
   10414:	fdc42783          	lw	a5,-36(s0)
   10418:	00078513          	mv	a0,a5
   1041c:	495000ef          	jal	110b0 <__floatsidf>
   10420:	00050713          	mv	a4,a0
   10424:	000137b7          	lui	a5,0x13
   10428:	2607b583          	ld	a1,608(a5) # 13260 <__errno+0xc>
   1042c:	00070513          	mv	a0,a4
   10430:	4b8000ef          	jal	108e8 <__muldf3>
   10434:	00050793          	mv	a5,a0
   10438:	00078593          	mv	a1,a5
   1043c:	00048513          	mv	a0,s1
   10440:	019000ef          	jal	10c58 <__subdf3>
   10444:	00050793          	mv	a5,a0
   10448:	00078513          	mv	a0,a5
   1044c:	589000ef          	jal	111d4 <__truncdfsf2>
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
   1086c:	281000ef          	jal	112ec <__clzdi2>
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
   10920:	1c090263          	beqz	s2,10ae4 <__muldf3+0x1fc>
   10924:	7ff00793          	li	a5,2047
   10928:	1ef90063          	beq	s2,a5,10b08 <__muldf3+0x220>
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
   10958:	1c078863          	beqz	a5,10b28 <__muldf3+0x240>
   1095c:	7ff00713          	li	a4,2047
   10960:	1ee78663          	beq	a5,a4,10b4c <__muldf3+0x264>
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
   1098c:	00190813          	addi	a6,s2,1
   10990:	22e7c063          	blt	a5,a4,10bb0 <__muldf3+0x2c8>
   10994:	00200613          	li	a2,2
   10998:	0159c9b3          	xor	s3,s3,s5
   1099c:	00100793          	li	a5,1
   109a0:	1ce64663          	blt	a2,a4,10b6c <__muldf3+0x284>
   109a4:	fff70713          	addi	a4,a4,-1
   109a8:	1ee7f263          	bgeu	a5,a4,10b8c <__muldf3+0x2a4>
   109ac:	02045793          	srli	a5,s0,0x20
   109b0:	02041413          	slli	s0,s0,0x20
   109b4:	02049513          	slli	a0,s1,0x20
   109b8:	02045413          	srli	s0,s0,0x20
   109bc:	0204de13          	srli	t3,s1,0x20
   109c0:	02055513          	srli	a0,a0,0x20
   109c4:	00040593          	mv	a1,s0
   109c8:	101000ef          	jal	112c8 <__muldi3>
   109cc:	00050893          	mv	a7,a0
   109d0:	02049513          	slli	a0,s1,0x20
   109d4:	02055513          	srli	a0,a0,0x20
   109d8:	00078593          	mv	a1,a5
   109dc:	0ed000ef          	jal	112c8 <__muldi3>
   109e0:	00050713          	mv	a4,a0
   109e4:	00040593          	mv	a1,s0
   109e8:	000e0513          	mv	a0,t3
   109ec:	0dd000ef          	jal	112c8 <__muldi3>
   109f0:	00050313          	mv	t1,a0
   109f4:	00078593          	mv	a1,a5
   109f8:	000e0513          	mv	a0,t3
   109fc:	0cd000ef          	jal	112c8 <__muldi3>
   10a00:	0208d793          	srli	a5,a7,0x20
   10a04:	00670733          	add	a4,a4,t1
   10a08:	00e787b3          	add	a5,a5,a4
   10a0c:	0067f863          	bgeu	a5,t1,10a1c <__muldf3+0x134>
   10a10:	00100713          	li	a4,1
   10a14:	02071713          	slli	a4,a4,0x20
   10a18:	00e50533          	add	a0,a0,a4
   10a1c:	02089893          	slli	a7,a7,0x20
   10a20:	02079713          	slli	a4,a5,0x20
   10a24:	0208d893          	srli	a7,a7,0x20
   10a28:	01170733          	add	a4,a4,a7
   10a2c:	0207d793          	srli	a5,a5,0x20
   10a30:	00971413          	slli	s0,a4,0x9
   10a34:	00a787b3          	add	a5,a5,a0
   10a38:	03775713          	srli	a4,a4,0x37
   10a3c:	00979793          	slli	a5,a5,0x9
   10a40:	00803433          	snez	s0,s0
   10a44:	00e46433          	or	s0,s0,a4
   10a48:	00779713          	slli	a4,a5,0x7
   10a4c:	0087e433          	or	s0,a5,s0
   10a50:	16075e63          	bgez	a4,10bcc <__muldf3+0x2e4>
   10a54:	00145793          	srli	a5,s0,0x1
   10a58:	00147413          	andi	s0,s0,1
   10a5c:	0087e433          	or	s0,a5,s0
   10a60:	3ff80513          	addi	a0,a6,1023
   10a64:	16a05863          	blez	a0,10bd4 <__muldf3+0x2ec>
   10a68:	00747793          	andi	a5,s0,7
   10a6c:	00078a63          	beqz	a5,10a80 <__muldf3+0x198>
   10a70:	00f47793          	andi	a5,s0,15
   10a74:	00400713          	li	a4,4
   10a78:	00e78463          	beq	a5,a4,10a80 <__muldf3+0x198>
   10a7c:	00e40433          	add	s0,s0,a4
   10a80:	00741793          	slli	a5,s0,0x7
   10a84:	0007dc63          	bgez	a5,10a9c <__muldf3+0x1b4>
   10a88:	fff00793          	li	a5,-1
   10a8c:	03879793          	slli	a5,a5,0x38
   10a90:	fff78793          	addi	a5,a5,-1
   10a94:	00f47433          	and	s0,s0,a5
   10a98:	40080513          	addi	a0,a6,1024
   10a9c:	7fe00793          	li	a5,2046
   10aa0:	1aa7c663          	blt	a5,a0,10c4c <__muldf3+0x364>
   10aa4:	00345793          	srli	a5,s0,0x3
   10aa8:	03813083          	ld	ra,56(sp)
   10aac:	03013403          	ld	s0,48(sp)
   10ab0:	00c79793          	slli	a5,a5,0xc
   10ab4:	03451513          	slli	a0,a0,0x34
   10ab8:	00c7d793          	srli	a5,a5,0xc
   10abc:	03f99993          	slli	s3,s3,0x3f
   10ac0:	00f56533          	or	a0,a0,a5
   10ac4:	02813483          	ld	s1,40(sp)
   10ac8:	02013903          	ld	s2,32(sp)
   10acc:	01013a03          	ld	s4,16(sp)
   10ad0:	00813a83          	ld	s5,8(sp)
   10ad4:	01356533          	or	a0,a0,s3
   10ad8:	01813983          	ld	s3,24(sp)
   10adc:	04010113          	addi	sp,sp,64
   10ae0:	00008067          	ret
   10ae4:	02048c63          	beqz	s1,10b1c <__muldf3+0x234>
   10ae8:	00048513          	mv	a0,s1
   10aec:	001000ef          	jal	112ec <__clzdi2>
   10af0:	0005079b          	sext.w	a5,a0
   10af4:	c0d00913          	li	s2,-1011
   10af8:	ff85051b          	addiw	a0,a0,-8
   10afc:	00a494b3          	sll	s1,s1,a0
   10b00:	40f90933          	sub	s2,s2,a5
   10b04:	e3dff06f          	j	10940 <__muldf3+0x58>
   10b08:	0009091b          	sext.w	s2,s2
   10b0c:	00200a13          	li	s4,2
   10b10:	e2048ae3          	beqz	s1,10944 <__muldf3+0x5c>
   10b14:	00300a13          	li	s4,3
   10b18:	e2dff06f          	j	10944 <__muldf3+0x5c>
   10b1c:	00000913          	li	s2,0
   10b20:	00100a13          	li	s4,1
   10b24:	e21ff06f          	j	10944 <__muldf3+0x5c>
   10b28:	02040c63          	beqz	s0,10b60 <__muldf3+0x278>
   10b2c:	00040513          	mv	a0,s0
   10b30:	7bc000ef          	jal	112ec <__clzdi2>
   10b34:	0005071b          	sext.w	a4,a0
   10b38:	c0d00793          	li	a5,-1011
   10b3c:	ff85051b          	addiw	a0,a0,-8
   10b40:	00a41433          	sll	s0,s0,a0
   10b44:	40e787b3          	sub	a5,a5,a4
   10b48:	e31ff06f          	j	10978 <__muldf3+0x90>
   10b4c:	0007879b          	sext.w	a5,a5
   10b50:	00200693          	li	a3,2
   10b54:	e20404e3          	beqz	s0,1097c <__muldf3+0x94>
   10b58:	00300693          	li	a3,3
   10b5c:	e21ff06f          	j	1097c <__muldf3+0x94>
   10b60:	00000793          	li	a5,0
   10b64:	00100693          	li	a3,1
   10b68:	e15ff06f          	j	1097c <__muldf3+0x94>
   10b6c:	00e79733          	sll	a4,a5,a4
   10b70:	53077613          	andi	a2,a4,1328
   10b74:	04061663          	bnez	a2,10bc0 <__muldf3+0x2d8>
   10b78:	24077613          	andi	a2,a4,576
   10b7c:	0c061063          	bnez	a2,10c3c <__muldf3+0x354>
   10b80:	08877713          	andi	a4,a4,136
   10b84:	e20704e3          	beqz	a4,109ac <__muldf3+0xc4>
   10b88:	000a8993          	mv	s3,s5
   10b8c:	00200793          	li	a5,2
   10b90:	0af68e63          	beq	a3,a5,10c4c <__muldf3+0x364>
   10b94:	00300713          	li	a4,3
   10b98:	00100793          	li	a5,1
   10b9c:	0ae68063          	beq	a3,a4,10c3c <__muldf3+0x354>
   10ba0:	ecf690e3          	bne	a3,a5,10a60 <__muldf3+0x178>
   10ba4:	00000793          	li	a5,0
   10ba8:	00000513          	li	a0,0
   10bac:	efdff06f          	j	10aa8 <__muldf3+0x1c0>
   10bb0:	00f00793          	li	a5,15
   10bb4:	08f70263          	beq	a4,a5,10c38 <__muldf3+0x350>
   10bb8:	00b00793          	li	a5,11
   10bbc:	fcf706e3          	beq	a4,a5,10b88 <__muldf3+0x2a0>
   10bc0:	00048413          	mv	s0,s1
   10bc4:	000a0693          	mv	a3,s4
   10bc8:	fc5ff06f          	j	10b8c <__muldf3+0x2a4>
   10bcc:	00090813          	mv	a6,s2
   10bd0:	e91ff06f          	j	10a60 <__muldf3+0x178>
   10bd4:	04050e63          	beqz	a0,10c30 <__muldf3+0x348>
   10bd8:	fc900793          	li	a5,-55
   10bdc:	fcf544e3          	blt	a0,a5,10ba4 <__muldf3+0x2bc>
   10be0:	00100713          	li	a4,1
   10be4:	40a70733          	sub	a4,a4,a0
   10be8:	04000693          	li	a3,64
   10bec:	00e457b3          	srl	a5,s0,a4
   10bf0:	40e6873b          	subw	a4,a3,a4
   10bf4:	00e41433          	sll	s0,s0,a4
   10bf8:	00803433          	snez	s0,s0
   10bfc:	0087e7b3          	or	a5,a5,s0
   10c00:	0077f713          	andi	a4,a5,7
   10c04:	00070a63          	beqz	a4,10c18 <__muldf3+0x330>
   10c08:	00f7f713          	andi	a4,a5,15
   10c0c:	00400693          	li	a3,4
   10c10:	00d70463          	beq	a4,a3,10c18 <__muldf3+0x330>
   10c14:	00d787b3          	add	a5,a5,a3
   10c18:	00879713          	slli	a4,a5,0x8
   10c1c:	0037d793          	srli	a5,a5,0x3
   10c20:	f80754e3          	bgez	a4,10ba8 <__muldf3+0x2c0>
   10c24:	00000793          	li	a5,0
   10c28:	00100513          	li	a0,1
   10c2c:	e7dff06f          	j	10aa8 <__muldf3+0x1c0>
   10c30:	00100713          	li	a4,1
   10c34:	fb5ff06f          	j	10be8 <__muldf3+0x300>
   10c38:	00100793          	li	a5,1
   10c3c:	03379793          	slli	a5,a5,0x33
   10c40:	7ff00513          	li	a0,2047
   10c44:	00000993          	li	s3,0
   10c48:	e61ff06f          	j	10aa8 <__muldf3+0x1c0>
   10c4c:	00000793          	li	a5,0
   10c50:	7ff00513          	li	a0,2047
   10c54:	e55ff06f          	j	10aa8 <__muldf3+0x1c0>

0000000000010c58 <__subdf3>:
   10c58:	0345d613          	srli	a2,a1,0x34
   10c5c:	fff00713          	li	a4,-1
   10c60:	fe010113          	addi	sp,sp,-32
   10c64:	00c75713          	srli	a4,a4,0xc
   10c68:	7ff67613          	andi	a2,a2,2047
   10c6c:	00a777b3          	and	a5,a4,a0
   10c70:	00b776b3          	and	a3,a4,a1
   10c74:	00813823          	sd	s0,16(sp)
   10c78:	00913423          	sd	s1,8(sp)
   10c7c:	03455413          	srli	s0,a0,0x34
   10c80:	03f55493          	srli	s1,a0,0x3f
   10c84:	80160513          	addi	a0,a2,-2047
   10c88:	00369713          	slli	a4,a3,0x3
   10c8c:	00a03533          	snez	a0,a0
   10c90:	0016b693          	seqz	a3,a3
   10c94:	00d566b3          	or	a3,a0,a3
   10c98:	03f5d593          	srli	a1,a1,0x3f
   10c9c:	7ff47413          	andi	s0,s0,2047
   10ca0:	00d5c5b3          	xor	a1,a1,a3
   10ca4:	00113c23          	sd	ra,24(sp)
   10ca8:	01213023          	sd	s2,0(sp)
   10cac:	00379793          	slli	a5,a5,0x3
   10cb0:	40c406bb          	subw	a3,s0,a2
   10cb4:	1e959663          	bne	a1,s1,10ea0 <__subdf3+0x248>
   10cb8:	08d05e63          	blez	a3,10d54 <__subdf3+0xfc>
   10cbc:	04061c63          	bnez	a2,10d14 <__subdf3+0xbc>
   10cc0:	04070663          	beqz	a4,10d0c <__subdf3+0xb4>
   10cc4:	fff6869b          	addiw	a3,a3,-1
   10cc8:	02069e63          	bnez	a3,10d04 <__subdf3+0xac>
   10ccc:	00e787b3          	add	a5,a5,a4
   10cd0:	00879713          	slli	a4,a5,0x8
   10cd4:	18075463          	bgez	a4,10e5c <__subdf3+0x204>
   10cd8:	00140413          	addi	s0,s0,1
   10cdc:	7ff00713          	li	a4,2047
   10ce0:	3ce40463          	beq	s0,a4,110a8 <__subdf3+0x450>
   10ce4:	1ff00713          	li	a4,511
   10ce8:	03671713          	slli	a4,a4,0x36
   10cec:	0017d693          	srli	a3,a5,0x1
   10cf0:	fff70713          	addi	a4,a4,-1
   10cf4:	00e6f733          	and	a4,a3,a4
   10cf8:	0017f793          	andi	a5,a5,1
   10cfc:	00f767b3          	or	a5,a4,a5
   10d00:	15c0006f          	j	10e5c <__subdf3+0x204>
   10d04:	7ff00613          	li	a2,2047
   10d08:	02c41063          	bne	s0,a2,10d28 <__subdf3+0xd0>
   10d0c:	00078713          	mv	a4,a5
   10d10:	3780006f          	j	11088 <__subdf3+0x430>
   10d14:	7ff00613          	li	a2,2047
   10d18:	fec40ae3          	beq	s0,a2,10d0c <__subdf3+0xb4>
   10d1c:	00100613          	li	a2,1
   10d20:	03761613          	slli	a2,a2,0x37
   10d24:	00c76733          	or	a4,a4,a2
   10d28:	03800593          	li	a1,56
   10d2c:	00100613          	li	a2,1
   10d30:	00d5ce63          	blt	a1,a3,10d4c <__subdf3+0xf4>
   10d34:	04000613          	li	a2,64
   10d38:	00d755b3          	srl	a1,a4,a3
   10d3c:	40d606bb          	subw	a3,a2,a3
   10d40:	00d71733          	sll	a4,a4,a3
   10d44:	00e03733          	snez	a4,a4
   10d48:	00e5e633          	or	a2,a1,a4
   10d4c:	00c787b3          	add	a5,a5,a2
   10d50:	f81ff06f          	j	10cd0 <__subdf3+0x78>
   10d54:	06068a63          	beqz	a3,10dc8 <__subdf3+0x170>
   10d58:	02041663          	bnez	s0,10d84 <__subdf3+0x12c>
   10d5c:	32078463          	beqz	a5,11084 <__subdf3+0x42c>
   10d60:	fff6c693          	not	a3,a3
   10d64:	00069863          	bnez	a3,10d74 <__subdf3+0x11c>
   10d68:	00e787b3          	add	a5,a5,a4
   10d6c:	00060413          	mv	s0,a2
   10d70:	f61ff06f          	j	10cd0 <__subdf3+0x78>
   10d74:	7ff00593          	li	a1,2047
   10d78:	02b61263          	bne	a2,a1,10d9c <__subdf3+0x144>
   10d7c:	7ff00413          	li	s0,2047
   10d80:	3080006f          	j	11088 <__subdf3+0x430>
   10d84:	7ff00593          	li	a1,2047
   10d88:	feb60ae3          	beq	a2,a1,10d7c <__subdf3+0x124>
   10d8c:	00100593          	li	a1,1
   10d90:	03759593          	slli	a1,a1,0x37
   10d94:	40d006bb          	negw	a3,a3
   10d98:	00b7e7b3          	or	a5,a5,a1
   10d9c:	03800513          	li	a0,56
   10da0:	00100593          	li	a1,1
   10da4:	00d54e63          	blt	a0,a3,10dc0 <__subdf3+0x168>
   10da8:	04000593          	li	a1,64
   10dac:	00d7d533          	srl	a0,a5,a3
   10db0:	40d586bb          	subw	a3,a1,a3
   10db4:	00d797b3          	sll	a5,a5,a3
   10db8:	00f037b3          	snez	a5,a5
   10dbc:	00f565b3          	or	a1,a0,a5
   10dc0:	00e587b3          	add	a5,a1,a4
   10dc4:	fa9ff06f          	j	10d6c <__subdf3+0x114>
   10dc8:	00140693          	addi	a3,s0,1
   10dcc:	7fe6f613          	andi	a2,a3,2046
   10dd0:	06061c63          	bnez	a2,10e48 <__subdf3+0x1f0>
   10dd4:	06041263          	bnez	s0,10e38 <__subdf3+0x1e0>
   10dd8:	2a078263          	beqz	a5,1107c <__subdf3+0x424>
   10ddc:	08070c63          	beqz	a4,10e74 <__subdf3+0x21c>
   10de0:	00f70733          	add	a4,a4,a5
   10de4:	00871793          	slli	a5,a4,0x8
   10de8:	2a07d063          	bgez	a5,11088 <__subdf3+0x430>
   10dec:	1ff00793          	li	a5,511
   10df0:	03479793          	slli	a5,a5,0x34
   10df4:	00375713          	srli	a4,a4,0x3
   10df8:	fff78793          	addi	a5,a5,-1
   10dfc:	00f777b3          	and	a5,a4,a5
   10e00:	00100413          	li	s0,1
   10e04:	7ff47413          	andi	s0,s0,2047
   10e08:	00c79793          	slli	a5,a5,0xc
   10e0c:	03441413          	slli	s0,s0,0x34
   10e10:	00c7d793          	srli	a5,a5,0xc
   10e14:	00f46433          	or	s0,s0,a5
   10e18:	03f49513          	slli	a0,s1,0x3f
   10e1c:	01813083          	ld	ra,24(sp)
   10e20:	00a46533          	or	a0,s0,a0
   10e24:	01013403          	ld	s0,16(sp)
   10e28:	00813483          	ld	s1,8(sp)
   10e2c:	00013903          	ld	s2,0(sp)
   10e30:	02010113          	addi	sp,sp,32
   10e34:	00008067          	ret
   10e38:	f40782e3          	beqz	a5,10d7c <__subdf3+0x124>
   10e3c:	1a071c63          	bnez	a4,10ff4 <__subdf3+0x39c>
   10e40:	00078713          	mv	a4,a5
   10e44:	f39ff06f          	j	10d7c <__subdf3+0x124>
   10e48:	7ff00613          	li	a2,2047
   10e4c:	24c68c63          	beq	a3,a2,110a4 <__subdf3+0x44c>
   10e50:	00e78733          	add	a4,a5,a4
   10e54:	00175793          	srli	a5,a4,0x1
   10e58:	00068413          	mv	s0,a3
   10e5c:	0077f713          	andi	a4,a5,7
   10e60:	00070a63          	beqz	a4,10e74 <__subdf3+0x21c>
   10e64:	00f7f713          	andi	a4,a5,15
   10e68:	00400693          	li	a3,4
   10e6c:	00d70463          	beq	a4,a3,10e74 <__subdf3+0x21c>
   10e70:	00d787b3          	add	a5,a5,a3
   10e74:	00879713          	slli	a4,a5,0x8
   10e78:	e8075ae3          	bgez	a4,10d0c <__subdf3+0xb4>
   10e7c:	00140413          	addi	s0,s0,1
   10e80:	7ff00713          	li	a4,2047
   10e84:	22e40263          	beq	s0,a4,110a8 <__subdf3+0x450>
   10e88:	1ff00713          	li	a4,511
   10e8c:	03471713          	slli	a4,a4,0x34
   10e90:	0037d793          	srli	a5,a5,0x3
   10e94:	fff70713          	addi	a4,a4,-1
   10e98:	00e7f7b3          	and	a5,a5,a4
   10e9c:	f69ff06f          	j	10e04 <__subdf3+0x1ac>
   10ea0:	06d05c63          	blez	a3,10f18 <__subdf3+0x2c0>
   10ea4:	04061e63          	bnez	a2,10f00 <__subdf3+0x2a8>
   10ea8:	e60702e3          	beqz	a4,10d0c <__subdf3+0xb4>
   10eac:	fff6869b          	addiw	a3,a3,-1
   10eb0:	00069e63          	bnez	a3,10ecc <__subdf3+0x274>
   10eb4:	40e787b3          	sub	a5,a5,a4
   10eb8:	00879713          	slli	a4,a5,0x8
   10ebc:	fa0750e3          	bgez	a4,10e5c <__subdf3+0x204>
   10ec0:	00979913          	slli	s2,a5,0x9
   10ec4:	00995913          	srli	s2,s2,0x9
   10ec8:	1540006f          	j	1101c <__subdf3+0x3c4>
   10ecc:	7ff00613          	li	a2,2047
   10ed0:	e2c40ee3          	beq	s0,a2,10d0c <__subdf3+0xb4>
   10ed4:	03800593          	li	a1,56
   10ed8:	00100613          	li	a2,1
   10edc:	00d5ce63          	blt	a1,a3,10ef8 <__subdf3+0x2a0>
   10ee0:	04000613          	li	a2,64
   10ee4:	00d755b3          	srl	a1,a4,a3
   10ee8:	40d606bb          	subw	a3,a2,a3
   10eec:	00d71733          	sll	a4,a4,a3
   10ef0:	00e03733          	snez	a4,a4
   10ef4:	00e5e633          	or	a2,a1,a4
   10ef8:	40c787b3          	sub	a5,a5,a2
   10efc:	fbdff06f          	j	10eb8 <__subdf3+0x260>
   10f00:	7ff00613          	li	a2,2047
   10f04:	e0c404e3          	beq	s0,a2,10d0c <__subdf3+0xb4>
   10f08:	00100613          	li	a2,1
   10f0c:	03761613          	slli	a2,a2,0x37
   10f10:	00c76733          	or	a4,a4,a2
   10f14:	fc1ff06f          	j	10ed4 <__subdf3+0x27c>
   10f18:	00068513          	mv	a0,a3
   10f1c:	06068c63          	beqz	a3,10f94 <__subdf3+0x33c>
   10f20:	02041863          	bnez	s0,10f50 <__subdf3+0x2f8>
   10f24:	02078263          	beqz	a5,10f48 <__subdf3+0x2f0>
   10f28:	fff6c693          	not	a3,a3
   10f2c:	00069a63          	bnez	a3,10f40 <__subdf3+0x2e8>
   10f30:	40f707b3          	sub	a5,a4,a5
   10f34:	00060413          	mv	s0,a2
   10f38:	00058493          	mv	s1,a1
   10f3c:	f7dff06f          	j	10eb8 <__subdf3+0x260>
   10f40:	7ff00513          	li	a0,2047
   10f44:	02a61263          	bne	a2,a0,10f68 <__subdf3+0x310>
   10f48:	00060413          	mv	s0,a2
   10f4c:	0640006f          	j	10fb0 <__subdf3+0x358>
   10f50:	7ff00693          	li	a3,2047
   10f54:	fed60ae3          	beq	a2,a3,10f48 <__subdf3+0x2f0>
   10f58:	40a006bb          	negw	a3,a0
   10f5c:	00100513          	li	a0,1
   10f60:	03751513          	slli	a0,a0,0x37
   10f64:	00a7e7b3          	or	a5,a5,a0
   10f68:	03800813          	li	a6,56
   10f6c:	00100513          	li	a0,1
   10f70:	00d84e63          	blt	a6,a3,10f8c <__subdf3+0x334>
   10f74:	04000513          	li	a0,64
   10f78:	00d7d833          	srl	a6,a5,a3
   10f7c:	40d506bb          	subw	a3,a0,a3
   10f80:	00d797b3          	sll	a5,a5,a3
   10f84:	00f037b3          	snez	a5,a5
   10f88:	00f86533          	or	a0,a6,a5
   10f8c:	40a707b3          	sub	a5,a4,a0
   10f90:	fa5ff06f          	j	10f34 <__subdf3+0x2dc>
   10f94:	00140693          	addi	a3,s0,1
   10f98:	7fe6f693          	andi	a3,a3,2046
   10f9c:	06069663          	bnez	a3,11008 <__subdf3+0x3b0>
   10fa0:	04041863          	bnez	s0,10ff0 <__subdf3+0x398>
   10fa4:	00079a63          	bnez	a5,10fb8 <__subdf3+0x360>
   10fa8:	00000493          	li	s1,0
   10fac:	e4070ce3          	beqz	a4,10e04 <__subdf3+0x1ac>
   10fb0:	00058493          	mv	s1,a1
   10fb4:	0d40006f          	j	11088 <__subdf3+0x430>
   10fb8:	ea070ee3          	beqz	a4,10e74 <__subdf3+0x21c>
   10fbc:	40e786b3          	sub	a3,a5,a4
   10fc0:	00869613          	slli	a2,a3,0x8
   10fc4:	00065c63          	bgez	a2,10fdc <__subdf3+0x384>
   10fc8:	40f707b3          	sub	a5,a4,a5
   10fcc:	00058493          	mv	s1,a1
   10fd0:	00000413          	li	s0,0
   10fd4:	e20788e3          	beqz	a5,10e04 <__subdf3+0x1ac>
   10fd8:	e85ff06f          	j	10e5c <__subdf3+0x204>
   10fdc:	00068713          	mv	a4,a3
   10fe0:	0a069463          	bnez	a3,11088 <__subdf3+0x430>
   10fe4:	00000793          	li	a5,0
   10fe8:	00000493          	li	s1,0
   10fec:	e19ff06f          	j	10e04 <__subdf3+0x1ac>
   10ff0:	e40796e3          	bnez	a5,10e3c <__subdf3+0x1e4>
   10ff4:	00100793          	li	a5,1
   10ff8:	00000493          	li	s1,0
   10ffc:	7ff00413          	li	s0,2047
   11000:	03379793          	slli	a5,a5,0x33
   11004:	e01ff06f          	j	10e04 <__subdf3+0x1ac>
   11008:	40e78933          	sub	s2,a5,a4
   1100c:	00891693          	slli	a3,s2,0x8
   11010:	0406d263          	bgez	a3,11054 <__subdf3+0x3fc>
   11014:	40f70933          	sub	s2,a4,a5
   11018:	00058493          	mv	s1,a1
   1101c:	00090513          	mv	a0,s2
   11020:	2cc000ef          	jal	112ec <__clzdi2>
   11024:	ff85051b          	addiw	a0,a0,-8
   11028:	00a91933          	sll	s2,s2,a0
   1102c:	02854c63          	blt	a0,s0,11064 <__subdf3+0x40c>
   11030:	4085053b          	subw	a0,a0,s0
   11034:	0015051b          	addiw	a0,a0,1
   11038:	04000713          	li	a4,64
   1103c:	40a7073b          	subw	a4,a4,a0
   11040:	00a957b3          	srl	a5,s2,a0
   11044:	00e91933          	sll	s2,s2,a4
   11048:	01203933          	snez	s2,s2
   1104c:	0127e7b3          	or	a5,a5,s2
   11050:	f81ff06f          	j	10fd0 <__subdf3+0x378>
   11054:	fc0914e3          	bnez	s2,1101c <__subdf3+0x3c4>
   11058:	00000793          	li	a5,0
   1105c:	00000413          	li	s0,0
   11060:	f89ff06f          	j	10fe8 <__subdf3+0x390>
   11064:	fff00793          	li	a5,-1
   11068:	03779793          	slli	a5,a5,0x37
   1106c:	fff78793          	addi	a5,a5,-1
   11070:	40a40433          	sub	s0,s0,a0
   11074:	00f977b3          	and	a5,s2,a5
   11078:	de5ff06f          	j	10e5c <__subdf3+0x204>
   1107c:	00070793          	mv	a5,a4
   11080:	f51ff06f          	j	10fd0 <__subdf3+0x378>
   11084:	00060413          	mv	s0,a2
   11088:	00375793          	srli	a5,a4,0x3
   1108c:	7ff00713          	li	a4,2047
   11090:	d6e41ae3          	bne	s0,a4,10e04 <__subdf3+0x1ac>
   11094:	d60788e3          	beqz	a5,10e04 <__subdf3+0x1ac>
   11098:	00100793          	li	a5,1
   1109c:	03379793          	slli	a5,a5,0x33
   110a0:	f49ff06f          	j	10fe8 <__subdf3+0x390>
   110a4:	00068413          	mv	s0,a3
   110a8:	00000793          	li	a5,0
   110ac:	d59ff06f          	j	10e04 <__subdf3+0x1ac>

00000000000110b0 <__floatsidf>:
   110b0:	fe010113          	addi	sp,sp,-32
   110b4:	00113c23          	sd	ra,24(sp)
   110b8:	00813823          	sd	s0,16(sp)
   110bc:	00913423          	sd	s1,8(sp)
   110c0:	06050063          	beqz	a0,11120 <__floatsidf+0x70>
   110c4:	41f5579b          	sraiw	a5,a0,0x1f
   110c8:	00f54433          	xor	s0,a0,a5
   110cc:	40f4043b          	subw	s0,s0,a5
   110d0:	02041413          	slli	s0,s0,0x20
   110d4:	02045413          	srli	s0,s0,0x20
   110d8:	01f5549b          	srliw	s1,a0,0x1f
   110dc:	00040513          	mv	a0,s0
   110e0:	20c000ef          	jal	112ec <__clzdi2>
   110e4:	43e00793          	li	a5,1086
   110e8:	40a787bb          	subw	a5,a5,a0
   110ec:	ff55051b          	addiw	a0,a0,-11
   110f0:	00a41433          	sll	s0,s0,a0
   110f4:	00c41413          	slli	s0,s0,0xc
   110f8:	00c45413          	srli	s0,s0,0xc
   110fc:	03479793          	slli	a5,a5,0x34
   11100:	01813083          	ld	ra,24(sp)
   11104:	0087e7b3          	or	a5,a5,s0
   11108:	01013403          	ld	s0,16(sp)
   1110c:	03f49513          	slli	a0,s1,0x3f
   11110:	00a7e533          	or	a0,a5,a0
   11114:	00813483          	ld	s1,8(sp)
   11118:	02010113          	addi	sp,sp,32
   1111c:	00008067          	ret
   11120:	00000493          	li	s1,0
   11124:	00000413          	li	s0,0
   11128:	00000793          	li	a5,0
   1112c:	fc9ff06f          	j	110f4 <__floatsidf+0x44>

0000000000011130 <__extendsfdf2>:
   11130:	0175579b          	srliw	a5,a0,0x17
   11134:	0ff7f793          	zext.b	a5,a5
   11138:	fe010113          	addi	sp,sp,-32
   1113c:	00178713          	addi	a4,a5,1
   11140:	00813823          	sd	s0,16(sp)
   11144:	00913423          	sd	s1,8(sp)
   11148:	02951413          	slli	s0,a0,0x29
   1114c:	00113c23          	sd	ra,24(sp)
   11150:	0fe77713          	andi	a4,a4,254
   11154:	02945413          	srli	s0,s0,0x29
   11158:	01f5549b          	srliw	s1,a0,0x1f
   1115c:	02070c63          	beqz	a4,11194 <__extendsfdf2+0x64>
   11160:	38078793          	addi	a5,a5,896
   11164:	01d41413          	slli	s0,s0,0x1d
   11168:	00c41413          	slli	s0,s0,0xc
   1116c:	00c45413          	srli	s0,s0,0xc
   11170:	03479793          	slli	a5,a5,0x34
   11174:	01813083          	ld	ra,24(sp)
   11178:	0087e7b3          	or	a5,a5,s0
   1117c:	01013403          	ld	s0,16(sp)
   11180:	03f49513          	slli	a0,s1,0x3f
   11184:	00a7e533          	or	a0,a5,a0
   11188:	00813483          	ld	s1,8(sp)
   1118c:	02010113          	addi	sp,sp,32
   11190:	00008067          	ret
   11194:	02079263          	bnez	a5,111b8 <__extendsfdf2+0x88>
   11198:	fc0408e3          	beqz	s0,11168 <__extendsfdf2+0x38>
   1119c:	00040513          	mv	a0,s0
   111a0:	14c000ef          	jal	112ec <__clzdi2>
   111a4:	ff55079b          	addiw	a5,a0,-11
   111a8:	00f41433          	sll	s0,s0,a5
   111ac:	3a900793          	li	a5,937
   111b0:	40a787bb          	subw	a5,a5,a0
   111b4:	fb5ff06f          	j	11168 <__extendsfdf2+0x38>
   111b8:	7ff00793          	li	a5,2047
   111bc:	fa0406e3          	beqz	s0,11168 <__extendsfdf2+0x38>
   111c0:	00100713          	li	a4,1
   111c4:	01d41413          	slli	s0,s0,0x1d
   111c8:	03371713          	slli	a4,a4,0x33
   111cc:	00e46433          	or	s0,s0,a4
   111d0:	f99ff06f          	j	11168 <__extendsfdf2+0x38>

00000000000111d4 <__truncdfsf2>:
   111d4:	03455713          	srli	a4,a0,0x34
   111d8:	7ff77713          	andi	a4,a4,2047
   111dc:	00170613          	addi	a2,a4,1
   111e0:	00c51693          	slli	a3,a0,0xc
   111e4:	7fe67613          	andi	a2,a2,2046
   111e8:	00c6d793          	srli	a5,a3,0xc
   111ec:	03f55513          	srli	a0,a0,0x3f
   111f0:	0096d693          	srli	a3,a3,0x9
   111f4:	08060463          	beqz	a2,1127c <__truncdfsf2+0xa8>
   111f8:	c8070713          	addi	a4,a4,-896
   111fc:	0fe00613          	li	a2,254
   11200:	0ce64063          	blt	a2,a4,112c0 <__truncdfsf2+0xec>
   11204:	06e04263          	bgtz	a4,11268 <__truncdfsf2+0x94>
   11208:	fe900613          	li	a2,-23
   1120c:	00100793          	li	a5,1
   11210:	0ac74063          	blt	a4,a2,112b0 <__truncdfsf2+0xdc>
   11214:	03779793          	slli	a5,a5,0x37
   11218:	00f6e6b3          	or	a3,a3,a5
   1121c:	01e00793          	li	a5,30
   11220:	40e787bb          	subw	a5,a5,a4
   11224:	0227071b          	addiw	a4,a4,34
   11228:	00f6d7b3          	srl	a5,a3,a5
   1122c:	00e696b3          	sll	a3,a3,a4
   11230:	00d036b3          	snez	a3,a3
   11234:	00d7e7b3          	or	a5,a5,a3
   11238:	00000713          	li	a4,0
   1123c:	0077f693          	andi	a3,a5,7
   11240:	06068c63          	beqz	a3,112b8 <__truncdfsf2+0xe4>
   11244:	00f7f693          	andi	a3,a5,15
   11248:	00400613          	li	a2,4
   1124c:	06c68663          	beq	a3,a2,112b8 <__truncdfsf2+0xe4>
   11250:	00478793          	addi	a5,a5,4
   11254:	02579693          	slli	a3,a5,0x25
   11258:	0606d063          	bgez	a3,112b8 <__truncdfsf2+0xe4>
   1125c:	00170713          	addi	a4,a4,1
   11260:	00000693          	li	a3,0
   11264:	0240006f          	j	11288 <__truncdfsf2+0xb4>
   11268:	02679793          	slli	a5,a5,0x26
   1126c:	01d6d693          	srli	a3,a3,0x1d
   11270:	00f037b3          	snez	a5,a5
   11274:	00f6e7b3          	or	a5,a3,a5
   11278:	fc5ff06f          	j	1123c <__truncdfsf2+0x68>
   1127c:	02071063          	bnez	a4,1129c <__truncdfsf2+0xc8>
   11280:	00100793          	li	a5,1
   11284:	fc0696e3          	bnez	a3,11250 <__truncdfsf2+0x7c>
   11288:	0177171b          	slliw	a4,a4,0x17
   1128c:	00d76733          	or	a4,a4,a3
   11290:	01f5151b          	slliw	a0,a0,0x1f
   11294:	00e56533          	or	a0,a0,a4
   11298:	00008067          	ret
   1129c:	0ff00713          	li	a4,255
   112a0:	fe0684e3          	beqz	a3,11288 <__truncdfsf2+0xb4>
   112a4:	00000513          	li	a0,0
   112a8:	004006b7          	lui	a3,0x400
   112ac:	fddff06f          	j	11288 <__truncdfsf2+0xb4>
   112b0:	00000713          	li	a4,0
   112b4:	f9dff06f          	j	11250 <__truncdfsf2+0x7c>
   112b8:	0037d693          	srli	a3,a5,0x3
   112bc:	fcdff06f          	j	11288 <__truncdfsf2+0xb4>
   112c0:	0ff00713          	li	a4,255
   112c4:	f9dff06f          	j	11260 <__truncdfsf2+0x8c>

00000000000112c8 <__muldi3>:
   112c8:	00050613          	mv	a2,a0
   112cc:	00000513          	li	a0,0
   112d0:	0015f693          	andi	a3,a1,1
   112d4:	00068463          	beqz	a3,112dc <__muldi3+0x14>
   112d8:	00c50533          	add	a0,a0,a2
   112dc:	0015d593          	srli	a1,a1,0x1
   112e0:	00161613          	slli	a2,a2,0x1
   112e4:	fe0596e3          	bnez	a1,112d0 <__muldi3+0x8>
   112e8:	00008067          	ret

00000000000112ec <__clzdi2>:
   112ec:	03800793          	li	a5,56
   112f0:	00f55733          	srl	a4,a0,a5
   112f4:	0ff77693          	zext.b	a3,a4
   112f8:	02069663          	bnez	a3,11324 <__clzdi2+0x38>
   112fc:	ff878793          	addi	a5,a5,-8
   11300:	fe0798e3          	bnez	a5,112f0 <__clzdi2+0x4>
   11304:	04000713          	li	a4,64
   11308:	40f70733          	sub	a4,a4,a5
   1130c:	000137b7          	lui	a5,0x13
   11310:	26878793          	addi	a5,a5,616 # 13268 <__clz_tab>
   11314:	00a787b3          	add	a5,a5,a0
   11318:	0007c503          	lbu	a0,0(a5)
   1131c:	40a7053b          	subw	a0,a4,a0
   11320:	00008067          	ret
   11324:	00070513          	mv	a0,a4
   11328:	fddff06f          	j	11304 <__clzdi2+0x18>

000000000001132c <__fp_lock>:
   1132c:	00000513          	li	a0,0
   11330:	00008067          	ret

0000000000011334 <stdio_exit_handler>:
   11334:	000135b7          	lui	a1,0x13
   11338:	00014537          	lui	a0,0x14
   1133c:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   11340:	af858593          	addi	a1,a1,-1288 # 12af8 <_fclose_r>
   11344:	0a850513          	addi	a0,a0,168 # 140a8 <_impure_data>
   11348:	3400006f          	j	11688 <_fwalk_sglue>

000000000001134c <cleanup_stdio>:
   1134c:	00853583          	ld	a1,8(a0)
   11350:	ff010113          	addi	sp,sp,-16
   11354:	00813023          	sd	s0,0(sp)
   11358:	00113423          	sd	ra,8(sp)
   1135c:	28818793          	addi	a5,gp,648 # 14aa0 <__sf>
   11360:	00050413          	mv	s0,a0
   11364:	00f58463          	beq	a1,a5,1136c <cleanup_stdio+0x20>
   11368:	790010ef          	jal	12af8 <_fclose_r>
   1136c:	01043583          	ld	a1,16(s0)
   11370:	33818793          	addi	a5,gp,824 # 14b50 <__sf+0xb0>
   11374:	00f58663          	beq	a1,a5,11380 <cleanup_stdio+0x34>
   11378:	00040513          	mv	a0,s0
   1137c:	77c010ef          	jal	12af8 <_fclose_r>
   11380:	01843583          	ld	a1,24(s0)
   11384:	3e818793          	addi	a5,gp,1000 # 14c00 <__sf+0x160>
   11388:	00f58c63          	beq	a1,a5,113a0 <cleanup_stdio+0x54>
   1138c:	00040513          	mv	a0,s0
   11390:	00013403          	ld	s0,0(sp)
   11394:	00813083          	ld	ra,8(sp)
   11398:	01010113          	addi	sp,sp,16
   1139c:	75c0106f          	j	12af8 <_fclose_r>
   113a0:	00813083          	ld	ra,8(sp)
   113a4:	00013403          	ld	s0,0(sp)
   113a8:	01010113          	addi	sp,sp,16
   113ac:	00008067          	ret

00000000000113b0 <__fp_unlock>:
   113b0:	00000513          	li	a0,0
   113b4:	00008067          	ret

00000000000113b8 <global_stdio_init.part.0>:
   113b8:	fd010113          	addi	sp,sp,-48
   113bc:	000117b7          	lui	a5,0x11
   113c0:	02813023          	sd	s0,32(sp)
   113c4:	33478793          	addi	a5,a5,820 # 11334 <stdio_exit_handler>
   113c8:	28818413          	addi	s0,gp,648 # 14aa0 <__sf>
   113cc:	02113423          	sd	ra,40(sp)
   113d0:	00913c23          	sd	s1,24(sp)
   113d4:	01213823          	sd	s2,16(sp)
   113d8:	01313423          	sd	s3,8(sp)
   113dc:	01413023          	sd	s4,0(sp)
   113e0:	20f1bc23          	sd	a5,536(gp) # 14a30 <__stdio_exit_handler>
   113e4:	00800613          	li	a2,8
   113e8:	00400793          	li	a5,4
   113ec:	00000593          	li	a1,0
   113f0:	32c18513          	addi	a0,gp,812 # 14b44 <__sf+0xa4>
   113f4:	00f42823          	sw	a5,16(s0)
   113f8:	00043023          	sd	zero,0(s0)
   113fc:	00043423          	sd	zero,8(s0)
   11400:	0a042623          	sw	zero,172(s0)
   11404:	00043c23          	sd	zero,24(s0)
   11408:	02042023          	sw	zero,32(s0)
   1140c:	02042423          	sw	zero,40(s0)
   11410:	7ac000ef          	jal	11bbc <memset>
   11414:	00011a37          	lui	s4,0x11
   11418:	000119b7          	lui	s3,0x11
   1141c:	00012937          	lui	s2,0x12
   11420:	000124b7          	lui	s1,0x12
   11424:	000107b7          	lui	a5,0x10
   11428:	758a0a13          	addi	s4,s4,1880 # 11758 <__sread>
   1142c:	7bc98993          	addi	s3,s3,1980 # 117bc <__swrite>
   11430:	84490913          	addi	s2,s2,-1980 # 11844 <__sseek>
   11434:	8a848493          	addi	s1,s1,-1880 # 118a8 <__sclose>
   11438:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1143c:	00800613          	li	a2,8
   11440:	00000593          	li	a1,0
   11444:	3dc18513          	addi	a0,gp,988 # 14bf4 <__sf+0x154>
   11448:	0cf42023          	sw	a5,192(s0)
   1144c:	03443c23          	sd	s4,56(s0)
   11450:	05343023          	sd	s3,64(s0)
   11454:	05243423          	sd	s2,72(s0)
   11458:	04943823          	sd	s1,80(s0)
   1145c:	02843823          	sd	s0,48(s0)
   11460:	0a043823          	sd	zero,176(s0)
   11464:	0a043c23          	sd	zero,184(s0)
   11468:	14042e23          	sw	zero,348(s0)
   1146c:	0c043423          	sd	zero,200(s0)
   11470:	0c042823          	sw	zero,208(s0)
   11474:	0c042c23          	sw	zero,216(s0)
   11478:	744000ef          	jal	11bbc <memset>
   1147c:	000207b7          	lui	a5,0x20
   11480:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xb022>
   11484:	33818713          	addi	a4,gp,824 # 14b50 <__sf+0xb0>
   11488:	48c18513          	addi	a0,gp,1164 # 14ca4 <__sf+0x204>
   1148c:	00800613          	li	a2,8
   11490:	00000593          	li	a1,0
   11494:	0f443423          	sd	s4,232(s0)
   11498:	0f343823          	sd	s3,240(s0)
   1149c:	0f243c23          	sd	s2,248(s0)
   114a0:	10943023          	sd	s1,256(s0)
   114a4:	16f42823          	sw	a5,368(s0)
   114a8:	16043023          	sd	zero,352(s0)
   114ac:	16043423          	sd	zero,360(s0)
   114b0:	20042623          	sw	zero,524(s0)
   114b4:	16043c23          	sd	zero,376(s0)
   114b8:	18042023          	sw	zero,384(s0)
   114bc:	18042423          	sw	zero,392(s0)
   114c0:	0ee43023          	sd	a4,224(s0)
   114c4:	6f8000ef          	jal	11bbc <memset>
   114c8:	3e818793          	addi	a5,gp,1000 # 14c00 <__sf+0x160>
   114cc:	19443c23          	sd	s4,408(s0)
   114d0:	1b343023          	sd	s3,416(s0)
   114d4:	1b243423          	sd	s2,424(s0)
   114d8:	1a943823          	sd	s1,432(s0)
   114dc:	02813083          	ld	ra,40(sp)
   114e0:	18f43823          	sd	a5,400(s0)
   114e4:	02013403          	ld	s0,32(sp)
   114e8:	01813483          	ld	s1,24(sp)
   114ec:	01013903          	ld	s2,16(sp)
   114f0:	00813983          	ld	s3,8(sp)
   114f4:	00013a03          	ld	s4,0(sp)
   114f8:	03010113          	addi	sp,sp,48
   114fc:	00008067          	ret

0000000000011500 <__sfp>:
   11500:	2181b783          	ld	a5,536(gp) # 14a30 <__stdio_exit_handler>
   11504:	fd010113          	addi	sp,sp,-48
   11508:	00913c23          	sd	s1,24(sp)
   1150c:	02113423          	sd	ra,40(sp)
   11510:	02813023          	sd	s0,32(sp)
   11514:	00050493          	mv	s1,a0
   11518:	10078263          	beqz	a5,1161c <__sfp+0x11c>
   1151c:	87818693          	addi	a3,gp,-1928 # 14090 <__sglue>
   11520:	0086a703          	lw	a4,8(a3) # 400008 <__BSS_END__+0x3eb018>
   11524:	08e05c63          	blez	a4,115bc <__sfp+0xbc>
   11528:	02071713          	slli	a4,a4,0x20
   1152c:	02075713          	srli	a4,a4,0x20
   11530:	00171793          	slli	a5,a4,0x1
   11534:	00e787b3          	add	a5,a5,a4
   11538:	0106b403          	ld	s0,16(a3)
   1153c:	00279793          	slli	a5,a5,0x2
   11540:	40e787b3          	sub	a5,a5,a4
   11544:	00479793          	slli	a5,a5,0x4
   11548:	00f407b3          	add	a5,s0,a5
   1154c:	00c0006f          	j	11558 <__sfp+0x58>
   11550:	0b040413          	addi	s0,s0,176
   11554:	06f40463          	beq	s0,a5,115bc <__sfp+0xbc>
   11558:	01041703          	lh	a4,16(s0)
   1155c:	fe071ae3          	bnez	a4,11550 <__sfp+0x50>
   11560:	ffff07b7          	lui	a5,0xffff0
   11564:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdb011>
   11568:	00f42823          	sw	a5,16(s0)
   1156c:	0a042623          	sw	zero,172(s0)
   11570:	00043023          	sd	zero,0(s0)
   11574:	00043423          	sd	zero,8(s0)
   11578:	00043c23          	sd	zero,24(s0)
   1157c:	02042023          	sw	zero,32(s0)
   11580:	02042423          	sw	zero,40(s0)
   11584:	00800613          	li	a2,8
   11588:	00000593          	li	a1,0
   1158c:	0a440513          	addi	a0,s0,164
   11590:	62c000ef          	jal	11bbc <memset>
   11594:	04043c23          	sd	zero,88(s0)
   11598:	06042023          	sw	zero,96(s0)
   1159c:	06043c23          	sd	zero,120(s0)
   115a0:	08042023          	sw	zero,128(s0)
   115a4:	02813083          	ld	ra,40(sp)
   115a8:	00040513          	mv	a0,s0
   115ac:	02013403          	ld	s0,32(sp)
   115b0:	01813483          	ld	s1,24(sp)
   115b4:	03010113          	addi	sp,sp,48
   115b8:	00008067          	ret
   115bc:	0006b403          	ld	s0,0(a3)
   115c0:	00040663          	beqz	s0,115cc <__sfp+0xcc>
   115c4:	00040693          	mv	a3,s0
   115c8:	f59ff06f          	j	11520 <__sfp+0x20>
   115cc:	2d800593          	li	a1,728
   115d0:	00048513          	mv	a0,s1
   115d4:	00d13423          	sd	a3,8(sp)
   115d8:	435000ef          	jal	1220c <_malloc_r>
   115dc:	00813683          	ld	a3,8(sp)
   115e0:	00050413          	mv	s0,a0
   115e4:	04050063          	beqz	a0,11624 <__sfp+0x124>
   115e8:	00400793          	li	a5,4
   115ec:	00f52423          	sw	a5,8(a0)
   115f0:	01850513          	addi	a0,a0,24
   115f4:	00043023          	sd	zero,0(s0)
   115f8:	00a43823          	sd	a0,16(s0)
   115fc:	2c000613          	li	a2,704
   11600:	00000593          	li	a1,0
   11604:	00d13423          	sd	a3,8(sp)
   11608:	5b4000ef          	jal	11bbc <memset>
   1160c:	00813683          	ld	a3,8(sp)
   11610:	0086b023          	sd	s0,0(a3)
   11614:	00040693          	mv	a3,s0
   11618:	f09ff06f          	j	11520 <__sfp+0x20>
   1161c:	d9dff0ef          	jal	113b8 <global_stdio_init.part.0>
   11620:	efdff06f          	j	1151c <__sfp+0x1c>
   11624:	0006b023          	sd	zero,0(a3)
   11628:	00c00793          	li	a5,12
   1162c:	00f4a023          	sw	a5,0(s1)
   11630:	f75ff06f          	j	115a4 <__sfp+0xa4>

0000000000011634 <__sinit>:
   11634:	04853783          	ld	a5,72(a0)
   11638:	00078463          	beqz	a5,11640 <__sinit+0xc>
   1163c:	00008067          	ret
   11640:	000117b7          	lui	a5,0x11
   11644:	2181b703          	ld	a4,536(gp) # 14a30 <__stdio_exit_handler>
   11648:	34c78793          	addi	a5,a5,844 # 1134c <cleanup_stdio>
   1164c:	04f53423          	sd	a5,72(a0)
   11650:	fe0716e3          	bnez	a4,1163c <__sinit+0x8>
   11654:	d65ff06f          	j	113b8 <global_stdio_init.part.0>

0000000000011658 <__sfp_lock_acquire>:
   11658:	00008067          	ret

000000000001165c <__sfp_lock_release>:
   1165c:	00008067          	ret

0000000000011660 <__fp_lock_all>:
   11660:	000115b7          	lui	a1,0x11
   11664:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   11668:	32c58593          	addi	a1,a1,812 # 1132c <__fp_lock>
   1166c:	00000513          	li	a0,0
   11670:	0180006f          	j	11688 <_fwalk_sglue>

0000000000011674 <__fp_unlock_all>:
   11674:	000115b7          	lui	a1,0x11
   11678:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   1167c:	3b058593          	addi	a1,a1,944 # 113b0 <__fp_unlock>
   11680:	00000513          	li	a0,0
   11684:	0040006f          	j	11688 <_fwalk_sglue>

0000000000011688 <_fwalk_sglue>:
   11688:	fb010113          	addi	sp,sp,-80
   1168c:	03213823          	sd	s2,48(sp)
   11690:	03313423          	sd	s3,40(sp)
   11694:	03413023          	sd	s4,32(sp)
   11698:	01513c23          	sd	s5,24(sp)
   1169c:	01613823          	sd	s6,16(sp)
   116a0:	01713423          	sd	s7,8(sp)
   116a4:	04113423          	sd	ra,72(sp)
   116a8:	04813023          	sd	s0,64(sp)
   116ac:	02913c23          	sd	s1,56(sp)
   116b0:	00060913          	mv	s2,a2
   116b4:	00050a13          	mv	s4,a0
   116b8:	00058a93          	mv	s5,a1
   116bc:	00000b13          	li	s6,0
   116c0:	00100b93          	li	s7,1
   116c4:	fff00993          	li	s3,-1
   116c8:	00892783          	lw	a5,8(s2)
   116cc:	04f05a63          	blez	a5,11720 <_fwalk_sglue+0x98>
   116d0:	02079793          	slli	a5,a5,0x20
   116d4:	0207d793          	srli	a5,a5,0x20
   116d8:	00179493          	slli	s1,a5,0x1
   116dc:	00f484b3          	add	s1,s1,a5
   116e0:	01093403          	ld	s0,16(s2)
   116e4:	00249493          	slli	s1,s1,0x2
   116e8:	40f484b3          	sub	s1,s1,a5
   116ec:	00449493          	slli	s1,s1,0x4
   116f0:	009404b3          	add	s1,s0,s1
   116f4:	01045783          	lhu	a5,16(s0)
   116f8:	02fbf063          	bgeu	s7,a5,11718 <_fwalk_sglue+0x90>
   116fc:	01241783          	lh	a5,18(s0)
   11700:	00040593          	mv	a1,s0
   11704:	000a0513          	mv	a0,s4
   11708:	01378863          	beq	a5,s3,11718 <_fwalk_sglue+0x90>
   1170c:	000a80e7          	jalr	s5
   11710:	01656b33          	or	s6,a0,s6
   11714:	000b0b1b          	sext.w	s6,s6
   11718:	0b040413          	addi	s0,s0,176
   1171c:	fc941ce3          	bne	s0,s1,116f4 <_fwalk_sglue+0x6c>
   11720:	00093903          	ld	s2,0(s2)
   11724:	fa0912e3          	bnez	s2,116c8 <_fwalk_sglue+0x40>
   11728:	04813083          	ld	ra,72(sp)
   1172c:	04013403          	ld	s0,64(sp)
   11730:	03813483          	ld	s1,56(sp)
   11734:	03013903          	ld	s2,48(sp)
   11738:	02813983          	ld	s3,40(sp)
   1173c:	02013a03          	ld	s4,32(sp)
   11740:	01813a83          	ld	s5,24(sp)
   11744:	00813b83          	ld	s7,8(sp)
   11748:	000b0513          	mv	a0,s6
   1174c:	01013b03          	ld	s6,16(sp)
   11750:	05010113          	addi	sp,sp,80
   11754:	00008067          	ret

0000000000011758 <__sread>:
   11758:	ff010113          	addi	sp,sp,-16
   1175c:	00813023          	sd	s0,0(sp)
   11760:	00058413          	mv	s0,a1
   11764:	01259583          	lh	a1,18(a1)
   11768:	00113423          	sd	ra,8(sp)
   1176c:	2ec000ef          	jal	11a58 <_read_r>
   11770:	02054063          	bltz	a0,11790 <__sread+0x38>
   11774:	09043783          	ld	a5,144(s0)
   11778:	00813083          	ld	ra,8(sp)
   1177c:	00a787b3          	add	a5,a5,a0
   11780:	08f43823          	sd	a5,144(s0)
   11784:	00013403          	ld	s0,0(sp)
   11788:	01010113          	addi	sp,sp,16
   1178c:	00008067          	ret
   11790:	01045783          	lhu	a5,16(s0)
   11794:	fffff737          	lui	a4,0xfffff
   11798:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffea00f>
   1179c:	00e7f7b3          	and	a5,a5,a4
   117a0:	00813083          	ld	ra,8(sp)
   117a4:	00f41823          	sh	a5,16(s0)
   117a8:	00013403          	ld	s0,0(sp)
   117ac:	01010113          	addi	sp,sp,16
   117b0:	00008067          	ret

00000000000117b4 <__seofread>:
   117b4:	00000513          	li	a0,0
   117b8:	00008067          	ret

00000000000117bc <__swrite>:
   117bc:	01059783          	lh	a5,16(a1)
   117c0:	fd010113          	addi	sp,sp,-48
   117c4:	00068313          	mv	t1,a3
   117c8:	02113423          	sd	ra,40(sp)
   117cc:	1007f693          	andi	a3,a5,256
   117d0:	00058713          	mv	a4,a1
   117d4:	00060893          	mv	a7,a2
   117d8:	00050813          	mv	a6,a0
   117dc:	02069863          	bnez	a3,1180c <__swrite+0x50>
   117e0:	fffff6b7          	lui	a3,0xfffff
   117e4:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffea00f>
   117e8:	02813083          	ld	ra,40(sp)
   117ec:	00d7f7b3          	and	a5,a5,a3
   117f0:	01271583          	lh	a1,18(a4)
   117f4:	00f71823          	sh	a5,16(a4)
   117f8:	00030693          	mv	a3,t1
   117fc:	00088613          	mv	a2,a7
   11800:	00080513          	mv	a0,a6
   11804:	03010113          	addi	sp,sp,48
   11808:	2b80006f          	j	11ac0 <_write_r>
   1180c:	01259583          	lh	a1,18(a1)
   11810:	00c13823          	sd	a2,16(sp)
   11814:	00200693          	li	a3,2
   11818:	00000613          	li	a2,0
   1181c:	00613c23          	sd	t1,24(sp)
   11820:	00e13023          	sd	a4,0(sp)
   11824:	00a13423          	sd	a0,8(sp)
   11828:	1c8000ef          	jal	119f0 <_lseek_r>
   1182c:	00013703          	ld	a4,0(sp)
   11830:	01813303          	ld	t1,24(sp)
   11834:	01013883          	ld	a7,16(sp)
   11838:	01071783          	lh	a5,16(a4)
   1183c:	00813803          	ld	a6,8(sp)
   11840:	fa1ff06f          	j	117e0 <__swrite+0x24>

0000000000011844 <__sseek>:
   11844:	ff010113          	addi	sp,sp,-16
   11848:	00813023          	sd	s0,0(sp)
   1184c:	00058413          	mv	s0,a1
   11850:	01259583          	lh	a1,18(a1)
   11854:	00113423          	sd	ra,8(sp)
   11858:	198000ef          	jal	119f0 <_lseek_r>
   1185c:	fff00713          	li	a4,-1
   11860:	01041783          	lh	a5,16(s0)
   11864:	02e50263          	beq	a0,a4,11888 <__sseek+0x44>
   11868:	00001737          	lui	a4,0x1
   1186c:	00e7e7b3          	or	a5,a5,a4
   11870:	00813083          	ld	ra,8(sp)
   11874:	08a43823          	sd	a0,144(s0)
   11878:	00f41823          	sh	a5,16(s0)
   1187c:	00013403          	ld	s0,0(sp)
   11880:	01010113          	addi	sp,sp,16
   11884:	00008067          	ret
   11888:	80050713          	addi	a4,a0,-2048
   1188c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   11890:	00e7f7b3          	and	a5,a5,a4
   11894:	00813083          	ld	ra,8(sp)
   11898:	00f41823          	sh	a5,16(s0)
   1189c:	00013403          	ld	s0,0(sp)
   118a0:	01010113          	addi	sp,sp,16
   118a4:	00008067          	ret

00000000000118a8 <__sclose>:
   118a8:	01259583          	lh	a1,18(a1)
   118ac:	0040006f          	j	118b0 <_close_r>

00000000000118b0 <_close_r>:
   118b0:	fe010113          	addi	sp,sp,-32
   118b4:	00813823          	sd	s0,16(sp)
   118b8:	00913423          	sd	s1,8(sp)
   118bc:	00050493          	mv	s1,a0
   118c0:	00058513          	mv	a0,a1
   118c4:	00113c23          	sd	ra,24(sp)
   118c8:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   118cc:	7e0010ef          	jal	130ac <_close>
   118d0:	fff00793          	li	a5,-1
   118d4:	00f50c63          	beq	a0,a5,118ec <_close_r+0x3c>
   118d8:	01813083          	ld	ra,24(sp)
   118dc:	01013403          	ld	s0,16(sp)
   118e0:	00813483          	ld	s1,8(sp)
   118e4:	02010113          	addi	sp,sp,32
   118e8:	00008067          	ret
   118ec:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   118f0:	fe0784e3          	beqz	a5,118d8 <_close_r+0x28>
   118f4:	01813083          	ld	ra,24(sp)
   118f8:	01013403          	ld	s0,16(sp)
   118fc:	00f4a023          	sw	a5,0(s1)
   11900:	00813483          	ld	s1,8(sp)
   11904:	02010113          	addi	sp,sp,32
   11908:	00008067          	ret

000000000001190c <_reclaim_reent>:
   1190c:	2001b783          	ld	a5,512(gp) # 14a18 <_impure_ptr>
   11910:	0ca78e63          	beq	a5,a0,119ec <_reclaim_reent+0xe0>
   11914:	06853583          	ld	a1,104(a0)
   11918:	fd010113          	addi	sp,sp,-48
   1191c:	00913c23          	sd	s1,24(sp)
   11920:	02113423          	sd	ra,40(sp)
   11924:	02813023          	sd	s0,32(sp)
   11928:	00050493          	mv	s1,a0
   1192c:	04058863          	beqz	a1,1197c <_reclaim_reent+0x70>
   11930:	01213823          	sd	s2,16(sp)
   11934:	01313423          	sd	s3,8(sp)
   11938:	00000913          	li	s2,0
   1193c:	20000993          	li	s3,512
   11940:	012587b3          	add	a5,a1,s2
   11944:	0007b403          	ld	s0,0(a5)
   11948:	00040e63          	beqz	s0,11964 <_reclaim_reent+0x58>
   1194c:	00040593          	mv	a1,s0
   11950:	00043403          	ld	s0,0(s0)
   11954:	00048513          	mv	a0,s1
   11958:	5b0000ef          	jal	11f08 <_free_r>
   1195c:	fe0418e3          	bnez	s0,1194c <_reclaim_reent+0x40>
   11960:	0684b583          	ld	a1,104(s1)
   11964:	00890913          	addi	s2,s2,8
   11968:	fd391ce3          	bne	s2,s3,11940 <_reclaim_reent+0x34>
   1196c:	00048513          	mv	a0,s1
   11970:	598000ef          	jal	11f08 <_free_r>
   11974:	01013903          	ld	s2,16(sp)
   11978:	00813983          	ld	s3,8(sp)
   1197c:	0504b583          	ld	a1,80(s1)
   11980:	00058663          	beqz	a1,1198c <_reclaim_reent+0x80>
   11984:	00048513          	mv	a0,s1
   11988:	580000ef          	jal	11f08 <_free_r>
   1198c:	0604b403          	ld	s0,96(s1)
   11990:	00040c63          	beqz	s0,119a8 <_reclaim_reent+0x9c>
   11994:	00040593          	mv	a1,s0
   11998:	00043403          	ld	s0,0(s0)
   1199c:	00048513          	mv	a0,s1
   119a0:	568000ef          	jal	11f08 <_free_r>
   119a4:	fe0418e3          	bnez	s0,11994 <_reclaim_reent+0x88>
   119a8:	0784b583          	ld	a1,120(s1)
   119ac:	00058663          	beqz	a1,119b8 <_reclaim_reent+0xac>
   119b0:	00048513          	mv	a0,s1
   119b4:	554000ef          	jal	11f08 <_free_r>
   119b8:	0484b783          	ld	a5,72(s1)
   119bc:	00078e63          	beqz	a5,119d8 <_reclaim_reent+0xcc>
   119c0:	02013403          	ld	s0,32(sp)
   119c4:	02813083          	ld	ra,40(sp)
   119c8:	00048513          	mv	a0,s1
   119cc:	01813483          	ld	s1,24(sp)
   119d0:	03010113          	addi	sp,sp,48
   119d4:	00078067          	jr	a5
   119d8:	02813083          	ld	ra,40(sp)
   119dc:	02013403          	ld	s0,32(sp)
   119e0:	01813483          	ld	s1,24(sp)
   119e4:	03010113          	addi	sp,sp,48
   119e8:	00008067          	ret
   119ec:	00008067          	ret

00000000000119f0 <_lseek_r>:
   119f0:	fe010113          	addi	sp,sp,-32
   119f4:	00058793          	mv	a5,a1
   119f8:	00813823          	sd	s0,16(sp)
   119fc:	00913423          	sd	s1,8(sp)
   11a00:	00060593          	mv	a1,a2
   11a04:	00050493          	mv	s1,a0
   11a08:	00068613          	mv	a2,a3
   11a0c:	00078513          	mv	a0,a5
   11a10:	00113c23          	sd	ra,24(sp)
   11a14:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   11a18:	704010ef          	jal	1311c <_lseek>
   11a1c:	fff00793          	li	a5,-1
   11a20:	00f50c63          	beq	a0,a5,11a38 <_lseek_r+0x48>
   11a24:	01813083          	ld	ra,24(sp)
   11a28:	01013403          	ld	s0,16(sp)
   11a2c:	00813483          	ld	s1,8(sp)
   11a30:	02010113          	addi	sp,sp,32
   11a34:	00008067          	ret
   11a38:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   11a3c:	fe0784e3          	beqz	a5,11a24 <_lseek_r+0x34>
   11a40:	01813083          	ld	ra,24(sp)
   11a44:	01013403          	ld	s0,16(sp)
   11a48:	00f4a023          	sw	a5,0(s1)
   11a4c:	00813483          	ld	s1,8(sp)
   11a50:	02010113          	addi	sp,sp,32
   11a54:	00008067          	ret

0000000000011a58 <_read_r>:
   11a58:	fe010113          	addi	sp,sp,-32
   11a5c:	00058793          	mv	a5,a1
   11a60:	00813823          	sd	s0,16(sp)
   11a64:	00913423          	sd	s1,8(sp)
   11a68:	00060593          	mv	a1,a2
   11a6c:	00050493          	mv	s1,a0
   11a70:	00068613          	mv	a2,a3
   11a74:	00078513          	mv	a0,a5
   11a78:	00113c23          	sd	ra,24(sp)
   11a7c:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   11a80:	6dc010ef          	jal	1315c <_read>
   11a84:	fff00793          	li	a5,-1
   11a88:	00f50c63          	beq	a0,a5,11aa0 <_read_r+0x48>
   11a8c:	01813083          	ld	ra,24(sp)
   11a90:	01013403          	ld	s0,16(sp)
   11a94:	00813483          	ld	s1,8(sp)
   11a98:	02010113          	addi	sp,sp,32
   11a9c:	00008067          	ret
   11aa0:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   11aa4:	fe0784e3          	beqz	a5,11a8c <_read_r+0x34>
   11aa8:	01813083          	ld	ra,24(sp)
   11aac:	01013403          	ld	s0,16(sp)
   11ab0:	00f4a023          	sw	a5,0(s1)
   11ab4:	00813483          	ld	s1,8(sp)
   11ab8:	02010113          	addi	sp,sp,32
   11abc:	00008067          	ret

0000000000011ac0 <_write_r>:
   11ac0:	fe010113          	addi	sp,sp,-32
   11ac4:	00058793          	mv	a5,a1
   11ac8:	00813823          	sd	s0,16(sp)
   11acc:	00913423          	sd	s1,8(sp)
   11ad0:	00060593          	mv	a1,a2
   11ad4:	00050493          	mv	s1,a0
   11ad8:	00068613          	mv	a2,a3
   11adc:	00078513          	mv	a0,a5
   11ae0:	00113c23          	sd	ra,24(sp)
   11ae4:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   11ae8:	72c010ef          	jal	13214 <_write>
   11aec:	fff00793          	li	a5,-1
   11af0:	00f50c63          	beq	a0,a5,11b08 <_write_r+0x48>
   11af4:	01813083          	ld	ra,24(sp)
   11af8:	01013403          	ld	s0,16(sp)
   11afc:	00813483          	ld	s1,8(sp)
   11b00:	02010113          	addi	sp,sp,32
   11b04:	00008067          	ret
   11b08:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   11b0c:	fe0784e3          	beqz	a5,11af4 <_write_r+0x34>
   11b10:	01813083          	ld	ra,24(sp)
   11b14:	01013403          	ld	s0,16(sp)
   11b18:	00f4a023          	sw	a5,0(s1)
   11b1c:	00813483          	ld	s1,8(sp)
   11b20:	02010113          	addi	sp,sp,32
   11b24:	00008067          	ret

0000000000011b28 <__libc_init_array>:
   11b28:	fe010113          	addi	sp,sp,-32
   11b2c:	00813823          	sd	s0,16(sp)
   11b30:	01213023          	sd	s2,0(sp)
   11b34:	00014437          	lui	s0,0x14
   11b38:	00014937          	lui	s2,0x14
   11b3c:	00113c23          	sd	ra,24(sp)
   11b40:	00913423          	sd	s1,8(sp)
   11b44:	00090913          	mv	s2,s2
   11b48:	00040413          	mv	s0,s0
   11b4c:	02890263          	beq	s2,s0,11b70 <__libc_init_array+0x48>
   11b50:	40890933          	sub	s2,s2,s0
   11b54:	40395913          	srai	s2,s2,0x3
   11b58:	00000493          	li	s1,0
   11b5c:	00043783          	ld	a5,0(s0) # 14000 <__init_array_start>
   11b60:	00148493          	addi	s1,s1,1
   11b64:	00840413          	addi	s0,s0,8
   11b68:	000780e7          	jalr	a5
   11b6c:	ff24e8e3          	bltu	s1,s2,11b5c <__libc_init_array+0x34>
   11b70:	00014937          	lui	s2,0x14
   11b74:	00014437          	lui	s0,0x14
   11b78:	01090913          	addi	s2,s2,16 # 14010 <__do_global_dtors_aux_fini_array_entry>
   11b7c:	00040413          	mv	s0,s0
   11b80:	02890263          	beq	s2,s0,11ba4 <__libc_init_array+0x7c>
   11b84:	40890933          	sub	s2,s2,s0
   11b88:	40395913          	srai	s2,s2,0x3
   11b8c:	00000493          	li	s1,0
   11b90:	00043783          	ld	a5,0(s0) # 14000 <__init_array_start>
   11b94:	00148493          	addi	s1,s1,1
   11b98:	00840413          	addi	s0,s0,8
   11b9c:	000780e7          	jalr	a5
   11ba0:	ff24e8e3          	bltu	s1,s2,11b90 <__libc_init_array+0x68>
   11ba4:	01813083          	ld	ra,24(sp)
   11ba8:	01013403          	ld	s0,16(sp)
   11bac:	00813483          	ld	s1,8(sp)
   11bb0:	00013903          	ld	s2,0(sp)
   11bb4:	02010113          	addi	sp,sp,32
   11bb8:	00008067          	ret

0000000000011bbc <memset>:
   11bbc:	00f00313          	li	t1,15
   11bc0:	00050713          	mv	a4,a0
   11bc4:	02c37a63          	bgeu	t1,a2,11bf8 <memset+0x3c>
   11bc8:	00f77793          	andi	a5,a4,15
   11bcc:	0a079063          	bnez	a5,11c6c <memset+0xb0>
   11bd0:	06059e63          	bnez	a1,11c4c <memset+0x90>
   11bd4:	ff067693          	andi	a3,a2,-16
   11bd8:	00f67613          	andi	a2,a2,15
   11bdc:	00e686b3          	add	a3,a3,a4
   11be0:	00b73023          	sd	a1,0(a4)
   11be4:	00b73423          	sd	a1,8(a4)
   11be8:	01070713          	addi	a4,a4,16
   11bec:	fed76ae3          	bltu	a4,a3,11be0 <memset+0x24>
   11bf0:	00061463          	bnez	a2,11bf8 <memset+0x3c>
   11bf4:	00008067          	ret
   11bf8:	40c306b3          	sub	a3,t1,a2
   11bfc:	00269693          	slli	a3,a3,0x2
   11c00:	00000297          	auipc	t0,0x0
   11c04:	005686b3          	add	a3,a3,t0
   11c08:	00c68067          	jr	12(a3)
   11c0c:	00b70723          	sb	a1,14(a4)
   11c10:	00b706a3          	sb	a1,13(a4)
   11c14:	00b70623          	sb	a1,12(a4)
   11c18:	00b705a3          	sb	a1,11(a4)
   11c1c:	00b70523          	sb	a1,10(a4)
   11c20:	00b704a3          	sb	a1,9(a4)
   11c24:	00b70423          	sb	a1,8(a4)
   11c28:	00b703a3          	sb	a1,7(a4)
   11c2c:	00b70323          	sb	a1,6(a4)
   11c30:	00b702a3          	sb	a1,5(a4)
   11c34:	00b70223          	sb	a1,4(a4)
   11c38:	00b701a3          	sb	a1,3(a4)
   11c3c:	00b70123          	sb	a1,2(a4)
   11c40:	00b700a3          	sb	a1,1(a4)
   11c44:	00b70023          	sb	a1,0(a4)
   11c48:	00008067          	ret
   11c4c:	0ff5f593          	zext.b	a1,a1
   11c50:	00859693          	slli	a3,a1,0x8
   11c54:	00d5e5b3          	or	a1,a1,a3
   11c58:	01059693          	slli	a3,a1,0x10
   11c5c:	00d5e5b3          	or	a1,a1,a3
   11c60:	02059693          	slli	a3,a1,0x20
   11c64:	00d5e5b3          	or	a1,a1,a3
   11c68:	f6dff06f          	j	11bd4 <memset+0x18>
   11c6c:	00279693          	slli	a3,a5,0x2
   11c70:	00000297          	auipc	t0,0x0
   11c74:	005686b3          	add	a3,a3,t0
   11c78:	00008293          	mv	t0,ra
   11c7c:	f98680e7          	jalr	-104(a3)
   11c80:	00028093          	mv	ra,t0
   11c84:	ff078793          	addi	a5,a5,-16
   11c88:	40f70733          	sub	a4,a4,a5
   11c8c:	00f60633          	add	a2,a2,a5
   11c90:	f6c374e3          	bgeu	t1,a2,11bf8 <memset+0x3c>
   11c94:	f3dff06f          	j	11bd0 <memset+0x14>

0000000000011c98 <__call_exitprocs>:
   11c98:	fb010113          	addi	sp,sp,-80
   11c9c:	03413023          	sd	s4,32(sp)
   11ca0:	03213823          	sd	s2,48(sp)
   11ca4:	2281b903          	ld	s2,552(gp) # 14a40 <__atexit>
   11ca8:	04113423          	sd	ra,72(sp)
   11cac:	06090e63          	beqz	s2,11d28 <__call_exitprocs+0x90>
   11cb0:	03313423          	sd	s3,40(sp)
   11cb4:	01513c23          	sd	s5,24(sp)
   11cb8:	01613823          	sd	s6,16(sp)
   11cbc:	01713423          	sd	s7,8(sp)
   11cc0:	04813023          	sd	s0,64(sp)
   11cc4:	02913c23          	sd	s1,56(sp)
   11cc8:	01813023          	sd	s8,0(sp)
   11ccc:	00050b13          	mv	s6,a0
   11cd0:	00058b93          	mv	s7,a1
   11cd4:	fff00993          	li	s3,-1
   11cd8:	00100a93          	li	s5,1
   11cdc:	00892403          	lw	s0,8(s2)
   11ce0:	fff4041b          	addiw	s0,s0,-1
   11ce4:	02044463          	bltz	s0,11d0c <__call_exitprocs+0x74>
   11ce8:	01090493          	addi	s1,s2,16
   11cec:	00341793          	slli	a5,s0,0x3
   11cf0:	00f484b3          	add	s1,s1,a5
   11cf4:	040b8463          	beqz	s7,11d3c <__call_exitprocs+0xa4>
   11cf8:	2004b783          	ld	a5,512(s1)
   11cfc:	05778063          	beq	a5,s7,11d3c <__call_exitprocs+0xa4>
   11d00:	fff4041b          	addiw	s0,s0,-1
   11d04:	ff848493          	addi	s1,s1,-8
   11d08:	ff3418e3          	bne	s0,s3,11cf8 <__call_exitprocs+0x60>
   11d0c:	04013403          	ld	s0,64(sp)
   11d10:	03813483          	ld	s1,56(sp)
   11d14:	02813983          	ld	s3,40(sp)
   11d18:	01813a83          	ld	s5,24(sp)
   11d1c:	01013b03          	ld	s6,16(sp)
   11d20:	00813b83          	ld	s7,8(sp)
   11d24:	00013c03          	ld	s8,0(sp)
   11d28:	04813083          	ld	ra,72(sp)
   11d2c:	03013903          	ld	s2,48(sp)
   11d30:	02013a03          	ld	s4,32(sp)
   11d34:	05010113          	addi	sp,sp,80
   11d38:	00008067          	ret
   11d3c:	00892783          	lw	a5,8(s2)
   11d40:	0004b683          	ld	a3,0(s1)
   11d44:	fff7879b          	addiw	a5,a5,-1
   11d48:	06878a63          	beq	a5,s0,11dbc <__call_exitprocs+0x124>
   11d4c:	0004b023          	sd	zero,0(s1)
   11d50:	02068663          	beqz	a3,11d7c <__call_exitprocs+0xe4>
   11d54:	31092783          	lw	a5,784(s2)
   11d58:	008a973b          	sllw	a4,s5,s0
   11d5c:	00892c03          	lw	s8,8(s2)
   11d60:	00e7f7b3          	and	a5,a5,a4
   11d64:	02079463          	bnez	a5,11d8c <__call_exitprocs+0xf4>
   11d68:	000680e7          	jalr	a3
   11d6c:	00892703          	lw	a4,8(s2)
   11d70:	2281b783          	ld	a5,552(gp) # 14a40 <__atexit>
   11d74:	03871e63          	bne	a4,s8,11db0 <__call_exitprocs+0x118>
   11d78:	03279c63          	bne	a5,s2,11db0 <__call_exitprocs+0x118>
   11d7c:	fff4041b          	addiw	s0,s0,-1
   11d80:	ff848493          	addi	s1,s1,-8
   11d84:	f73418e3          	bne	s0,s3,11cf4 <__call_exitprocs+0x5c>
   11d88:	f85ff06f          	j	11d0c <__call_exitprocs+0x74>
   11d8c:	31492783          	lw	a5,788(s2)
   11d90:	1004b583          	ld	a1,256(s1)
   11d94:	00f77733          	and	a4,a4,a5
   11d98:	02071663          	bnez	a4,11dc4 <__call_exitprocs+0x12c>
   11d9c:	000b0513          	mv	a0,s6
   11da0:	000680e7          	jalr	a3
   11da4:	00892703          	lw	a4,8(s2)
   11da8:	2281b783          	ld	a5,552(gp) # 14a40 <__atexit>
   11dac:	fd8706e3          	beq	a4,s8,11d78 <__call_exitprocs+0xe0>
   11db0:	f4078ee3          	beqz	a5,11d0c <__call_exitprocs+0x74>
   11db4:	00078913          	mv	s2,a5
   11db8:	f25ff06f          	j	11cdc <__call_exitprocs+0x44>
   11dbc:	00892423          	sw	s0,8(s2)
   11dc0:	f91ff06f          	j	11d50 <__call_exitprocs+0xb8>
   11dc4:	00058513          	mv	a0,a1
   11dc8:	000680e7          	jalr	a3
   11dcc:	fa1ff06f          	j	11d6c <__call_exitprocs+0xd4>

0000000000011dd0 <atexit>:
   11dd0:	00050593          	mv	a1,a0
   11dd4:	00000693          	li	a3,0
   11dd8:	00000613          	li	a2,0
   11ddc:	00000513          	li	a0,0
   11de0:	2300106f          	j	13010 <__register_exitproc>

0000000000011de4 <_malloc_trim_r>:
   11de4:	fd010113          	addi	sp,sp,-48
   11de8:	01213823          	sd	s2,16(sp)
   11dec:	00014937          	lui	s2,0x14
   11df0:	02813023          	sd	s0,32(sp)
   11df4:	00913c23          	sd	s1,24(sp)
   11df8:	01313423          	sd	s3,8(sp)
   11dfc:	00058413          	mv	s0,a1
   11e00:	02113423          	sd	ra,40(sp)
   11e04:	00050993          	mv	s3,a0
   11e08:	20090913          	addi	s2,s2,512 # 14200 <__malloc_av_>
   11e0c:	4e5000ef          	jal	12af0 <__malloc_lock>
   11e10:	01093783          	ld	a5,16(s2)
   11e14:	00001737          	lui	a4,0x1
   11e18:	0087b483          	ld	s1,8(a5)
   11e1c:	ffc4f493          	andi	s1,s1,-4
   11e20:	7ff48793          	addi	a5,s1,2047
   11e24:	7e078793          	addi	a5,a5,2016
   11e28:	40878433          	sub	s0,a5,s0
   11e2c:	00c45413          	srli	s0,s0,0xc
   11e30:	fff40413          	addi	s0,s0,-1
   11e34:	00c41413          	slli	s0,s0,0xc
   11e38:	00e44e63          	blt	s0,a4,11e54 <_malloc_trim_r+0x70>
   11e3c:	00000593          	li	a1,0
   11e40:	00098513          	mv	a0,s3
   11e44:	114010ef          	jal	12f58 <_sbrk_r>
   11e48:	01093783          	ld	a5,16(s2)
   11e4c:	009787b3          	add	a5,a5,s1
   11e50:	02f50663          	beq	a0,a5,11e7c <_malloc_trim_r+0x98>
   11e54:	00098513          	mv	a0,s3
   11e58:	49d000ef          	jal	12af4 <__malloc_unlock>
   11e5c:	02813083          	ld	ra,40(sp)
   11e60:	02013403          	ld	s0,32(sp)
   11e64:	01813483          	ld	s1,24(sp)
   11e68:	01013903          	ld	s2,16(sp)
   11e6c:	00813983          	ld	s3,8(sp)
   11e70:	00000513          	li	a0,0
   11e74:	03010113          	addi	sp,sp,48
   11e78:	00008067          	ret
   11e7c:	408005b3          	neg	a1,s0
   11e80:	00098513          	mv	a0,s3
   11e84:	0d4010ef          	jal	12f58 <_sbrk_r>
   11e88:	fff00793          	li	a5,-1
   11e8c:	04f50463          	beq	a0,a5,11ed4 <_malloc_trim_r+0xf0>
   11e90:	01093683          	ld	a3,16(s2)
   11e94:	4981a783          	lw	a5,1176(gp) # 14cb0 <__malloc_current_mallinfo>
   11e98:	408484b3          	sub	s1,s1,s0
   11e9c:	0014e493          	ori	s1,s1,1
   11ea0:	00098513          	mv	a0,s3
   11ea4:	408787bb          	subw	a5,a5,s0
   11ea8:	0096b423          	sd	s1,8(a3)
   11eac:	48f1ac23          	sw	a5,1176(gp) # 14cb0 <__malloc_current_mallinfo>
   11eb0:	445000ef          	jal	12af4 <__malloc_unlock>
   11eb4:	02813083          	ld	ra,40(sp)
   11eb8:	02013403          	ld	s0,32(sp)
   11ebc:	01813483          	ld	s1,24(sp)
   11ec0:	01013903          	ld	s2,16(sp)
   11ec4:	00813983          	ld	s3,8(sp)
   11ec8:	00100513          	li	a0,1
   11ecc:	03010113          	addi	sp,sp,48
   11ed0:	00008067          	ret
   11ed4:	00000593          	li	a1,0
   11ed8:	00098513          	mv	a0,s3
   11edc:	07c010ef          	jal	12f58 <_sbrk_r>
   11ee0:	01093703          	ld	a4,16(s2)
   11ee4:	01f00693          	li	a3,31
   11ee8:	40e507b3          	sub	a5,a0,a4
   11eec:	f6f6d4e3          	bge	a3,a5,11e54 <_malloc_trim_r+0x70>
   11ef0:	2081b603          	ld	a2,520(gp) # 14a20 <__malloc_sbrk_base>
   11ef4:	0017e793          	ori	a5,a5,1
   11ef8:	40c50533          	sub	a0,a0,a2
   11efc:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11f00:	48a1ac23          	sw	a0,1176(gp) # 14cb0 <__malloc_current_mallinfo>
   11f04:	f51ff06f          	j	11e54 <_malloc_trim_r+0x70>

0000000000011f08 <_free_r>:
   11f08:	12058863          	beqz	a1,12038 <_free_r+0x130>
   11f0c:	fe010113          	addi	sp,sp,-32
   11f10:	00813823          	sd	s0,16(sp)
   11f14:	00b13423          	sd	a1,8(sp)
   11f18:	00050413          	mv	s0,a0
   11f1c:	00113c23          	sd	ra,24(sp)
   11f20:	3d1000ef          	jal	12af0 <__malloc_lock>
   11f24:	00813583          	ld	a1,8(sp)
   11f28:	00014837          	lui	a6,0x14
   11f2c:	20080813          	addi	a6,a6,512 # 14200 <__malloc_av_>
   11f30:	ff85b503          	ld	a0,-8(a1)
   11f34:	ff058713          	addi	a4,a1,-16
   11f38:	01083883          	ld	a7,16(a6)
   11f3c:	ffe57793          	andi	a5,a0,-2
   11f40:	00f70633          	add	a2,a4,a5
   11f44:	00863683          	ld	a3,8(a2)
   11f48:	00157313          	andi	t1,a0,1
   11f4c:	ffc6f693          	andi	a3,a3,-4
   11f50:	18c88e63          	beq	a7,a2,120ec <_free_r+0x1e4>
   11f54:	00d63423          	sd	a3,8(a2)
   11f58:	00d608b3          	add	a7,a2,a3
   11f5c:	0088b883          	ld	a7,8(a7)
   11f60:	0018f893          	andi	a7,a7,1
   11f64:	08031e63          	bnez	t1,12000 <_free_r+0xf8>
   11f68:	ff05b303          	ld	t1,-16(a1)
   11f6c:	000145b7          	lui	a1,0x14
   11f70:	21058593          	addi	a1,a1,528 # 14210 <__malloc_av_+0x10>
   11f74:	40670733          	sub	a4,a4,t1
   11f78:	01073503          	ld	a0,16(a4)
   11f7c:	006787b3          	add	a5,a5,t1
   11f80:	14b50063          	beq	a0,a1,120c0 <_free_r+0x1b8>
   11f84:	01873303          	ld	t1,24(a4)
   11f88:	00653c23          	sd	t1,24(a0)
   11f8c:	00a33823          	sd	a0,16(t1) # 10220 <main+0x4>
   11f90:	1a088263          	beqz	a7,12134 <_free_r+0x22c>
   11f94:	0017e693          	ori	a3,a5,1
   11f98:	00d73423          	sd	a3,8(a4)
   11f9c:	00f63023          	sd	a5,0(a2)
   11fa0:	1ff00693          	li	a3,511
   11fa4:	0af6e663          	bltu	a3,a5,12050 <_free_r+0x148>
   11fa8:	0037d793          	srli	a5,a5,0x3
   11fac:	00179693          	slli	a3,a5,0x1
   11fb0:	0026869b          	addiw	a3,a3,2
   11fb4:	00369693          	slli	a3,a3,0x3
   11fb8:	00883503          	ld	a0,8(a6)
   11fbc:	00d806b3          	add	a3,a6,a3
   11fc0:	0006b583          	ld	a1,0(a3)
   11fc4:	4027d61b          	sraiw	a2,a5,0x2
   11fc8:	00100793          	li	a5,1
   11fcc:	00c797b3          	sll	a5,a5,a2
   11fd0:	00a7e7b3          	or	a5,a5,a0
   11fd4:	ff068613          	addi	a2,a3,-16
   11fd8:	00b73823          	sd	a1,16(a4)
   11fdc:	00c73c23          	sd	a2,24(a4)
   11fe0:	00f83423          	sd	a5,8(a6)
   11fe4:	00e6b023          	sd	a4,0(a3)
   11fe8:	00e5bc23          	sd	a4,24(a1)
   11fec:	00040513          	mv	a0,s0
   11ff0:	01013403          	ld	s0,16(sp)
   11ff4:	01813083          	ld	ra,24(sp)
   11ff8:	02010113          	addi	sp,sp,32
   11ffc:	2f90006f          	j	12af4 <__malloc_unlock>
   12000:	02089e63          	bnez	a7,1203c <_free_r+0x134>
   12004:	000145b7          	lui	a1,0x14
   12008:	00d787b3          	add	a5,a5,a3
   1200c:	21058593          	addi	a1,a1,528 # 14210 <__malloc_av_+0x10>
   12010:	01063683          	ld	a3,16(a2)
   12014:	0017e893          	ori	a7,a5,1
   12018:	00f70533          	add	a0,a4,a5
   1201c:	16b68663          	beq	a3,a1,12188 <_free_r+0x280>
   12020:	01863603          	ld	a2,24(a2)
   12024:	00c6bc23          	sd	a2,24(a3)
   12028:	00d63823          	sd	a3,16(a2)
   1202c:	01173423          	sd	a7,8(a4)
   12030:	00f53023          	sd	a5,0(a0)
   12034:	f6dff06f          	j	11fa0 <_free_r+0x98>
   12038:	00008067          	ret
   1203c:	00156513          	ori	a0,a0,1
   12040:	fea5bc23          	sd	a0,-8(a1)
   12044:	00f63023          	sd	a5,0(a2)
   12048:	1ff00693          	li	a3,511
   1204c:	f4f6fee3          	bgeu	a3,a5,11fa8 <_free_r+0xa0>
   12050:	0097d693          	srli	a3,a5,0x9
   12054:	00400613          	li	a2,4
   12058:	0ed66263          	bltu	a2,a3,1213c <_free_r+0x234>
   1205c:	0067d693          	srli	a3,a5,0x6
   12060:	00169593          	slli	a1,a3,0x1
   12064:	0725859b          	addiw	a1,a1,114
   12068:	00359593          	slli	a1,a1,0x3
   1206c:	0386861b          	addiw	a2,a3,56
   12070:	00b805b3          	add	a1,a6,a1
   12074:	0005b683          	ld	a3,0(a1)
   12078:	ff058593          	addi	a1,a1,-16
   1207c:	00d59863          	bne	a1,a3,1208c <_free_r+0x184>
   12080:	1240006f          	j	121a4 <_free_r+0x29c>
   12084:	0106b683          	ld	a3,16(a3)
   12088:	00d58863          	beq	a1,a3,12098 <_free_r+0x190>
   1208c:	0086b603          	ld	a2,8(a3)
   12090:	ffc67613          	andi	a2,a2,-4
   12094:	fec7e8e3          	bltu	a5,a2,12084 <_free_r+0x17c>
   12098:	0186b583          	ld	a1,24(a3)
   1209c:	00b73c23          	sd	a1,24(a4)
   120a0:	00d73823          	sd	a3,16(a4)
   120a4:	00040513          	mv	a0,s0
   120a8:	01013403          	ld	s0,16(sp)
   120ac:	01813083          	ld	ra,24(sp)
   120b0:	00e5b823          	sd	a4,16(a1)
   120b4:	00e6bc23          	sd	a4,24(a3)
   120b8:	02010113          	addi	sp,sp,32
   120bc:	2390006f          	j	12af4 <__malloc_unlock>
   120c0:	0a089263          	bnez	a7,12164 <_free_r+0x25c>
   120c4:	01863583          	ld	a1,24(a2)
   120c8:	01063603          	ld	a2,16(a2)
   120cc:	00f686b3          	add	a3,a3,a5
   120d0:	0016e793          	ori	a5,a3,1
   120d4:	00b63c23          	sd	a1,24(a2)
   120d8:	00c5b823          	sd	a2,16(a1)
   120dc:	00f73423          	sd	a5,8(a4)
   120e0:	00d70733          	add	a4,a4,a3
   120e4:	00d73023          	sd	a3,0(a4)
   120e8:	f05ff06f          	j	11fec <_free_r+0xe4>
   120ec:	00d786b3          	add	a3,a5,a3
   120f0:	02031063          	bnez	t1,12110 <_free_r+0x208>
   120f4:	ff05b783          	ld	a5,-16(a1)
   120f8:	40f70733          	sub	a4,a4,a5
   120fc:	01073603          	ld	a2,16(a4)
   12100:	00f686b3          	add	a3,a3,a5
   12104:	01873783          	ld	a5,24(a4)
   12108:	00f63c23          	sd	a5,24(a2)
   1210c:	00c7b823          	sd	a2,16(a5)
   12110:	0016e613          	ori	a2,a3,1
   12114:	2101b783          	ld	a5,528(gp) # 14a28 <__malloc_trim_threshold>
   12118:	00c73423          	sd	a2,8(a4)
   1211c:	00e83823          	sd	a4,16(a6)
   12120:	ecf6e6e3          	bltu	a3,a5,11fec <_free_r+0xe4>
   12124:	2401b583          	ld	a1,576(gp) # 14a58 <__malloc_top_pad>
   12128:	00040513          	mv	a0,s0
   1212c:	cb9ff0ef          	jal	11de4 <_malloc_trim_r>
   12130:	ebdff06f          	j	11fec <_free_r+0xe4>
   12134:	00d787b3          	add	a5,a5,a3
   12138:	ed9ff06f          	j	12010 <_free_r+0x108>
   1213c:	01400613          	li	a2,20
   12140:	02d67a63          	bgeu	a2,a3,12174 <_free_r+0x26c>
   12144:	05400613          	li	a2,84
   12148:	06d66c63          	bltu	a2,a3,121c0 <_free_r+0x2b8>
   1214c:	00c7d693          	srli	a3,a5,0xc
   12150:	00169593          	slli	a1,a3,0x1
   12154:	0de5859b          	addiw	a1,a1,222
   12158:	00359593          	slli	a1,a1,0x3
   1215c:	06e6861b          	addiw	a2,a3,110
   12160:	f11ff06f          	j	12070 <_free_r+0x168>
   12164:	0017e693          	ori	a3,a5,1
   12168:	00d73423          	sd	a3,8(a4)
   1216c:	00f63023          	sd	a5,0(a2)
   12170:	e7dff06f          	j	11fec <_free_r+0xe4>
   12174:	00169593          	slli	a1,a3,0x1
   12178:	0b85859b          	addiw	a1,a1,184
   1217c:	00359593          	slli	a1,a1,0x3
   12180:	05b6861b          	addiw	a2,a3,91
   12184:	eedff06f          	j	12070 <_free_r+0x168>
   12188:	02e83423          	sd	a4,40(a6)
   1218c:	02e83023          	sd	a4,32(a6)
   12190:	00b73c23          	sd	a1,24(a4)
   12194:	00b73823          	sd	a1,16(a4)
   12198:	01173423          	sd	a7,8(a4)
   1219c:	00f53023          	sd	a5,0(a0)
   121a0:	e4dff06f          	j	11fec <_free_r+0xe4>
   121a4:	00883503          	ld	a0,8(a6)
   121a8:	4026561b          	sraiw	a2,a2,0x2
   121ac:	00100793          	li	a5,1
   121b0:	00c797b3          	sll	a5,a5,a2
   121b4:	00a7e7b3          	or	a5,a5,a0
   121b8:	00f83423          	sd	a5,8(a6)
   121bc:	ee1ff06f          	j	1209c <_free_r+0x194>
   121c0:	15400613          	li	a2,340
   121c4:	00d66e63          	bltu	a2,a3,121e0 <_free_r+0x2d8>
   121c8:	00f7d693          	srli	a3,a5,0xf
   121cc:	00169593          	slli	a1,a3,0x1
   121d0:	0f05859b          	addiw	a1,a1,240
   121d4:	00359593          	slli	a1,a1,0x3
   121d8:	0776861b          	addiw	a2,a3,119
   121dc:	e95ff06f          	j	12070 <_free_r+0x168>
   121e0:	55400613          	li	a2,1364
   121e4:	00d66e63          	bltu	a2,a3,12200 <_free_r+0x2f8>
   121e8:	0127d693          	srli	a3,a5,0x12
   121ec:	00169593          	slli	a1,a3,0x1
   121f0:	0fa5859b          	addiw	a1,a1,250
   121f4:	00359593          	slli	a1,a1,0x3
   121f8:	07c6861b          	addiw	a2,a3,124
   121fc:	e75ff06f          	j	12070 <_free_r+0x168>
   12200:	7f000593          	li	a1,2032
   12204:	07e00613          	li	a2,126
   12208:	e69ff06f          	j	12070 <_free_r+0x168>

000000000001220c <_malloc_r>:
   1220c:	fa010113          	addi	sp,sp,-96
   12210:	04813823          	sd	s0,80(sp)
   12214:	04113c23          	sd	ra,88(sp)
   12218:	01758713          	addi	a4,a1,23
   1221c:	02e00793          	li	a5,46
   12220:	00050413          	mv	s0,a0
   12224:	08e7ee63          	bltu	a5,a4,122c0 <_malloc_r+0xb4>
   12228:	02000713          	li	a4,32
   1222c:	06b76c63          	bltu	a4,a1,122a4 <_malloc_r+0x98>
   12230:	0c1000ef          	jal	12af0 <__malloc_lock>
   12234:	02000713          	li	a4,32
   12238:	05000693          	li	a3,80
   1223c:	00400893          	li	a7,4
   12240:	00014837          	lui	a6,0x14
   12244:	20080813          	addi	a6,a6,512 # 14200 <__malloc_av_>
   12248:	00d806b3          	add	a3,a6,a3
   1224c:	0086b783          	ld	a5,8(a3)
   12250:	ff068613          	addi	a2,a3,-16
   12254:	48c78063          	beq	a5,a2,126d4 <_malloc_r+0x4c8>
   12258:	0087b703          	ld	a4,8(a5)
   1225c:	0187b603          	ld	a2,24(a5)
   12260:	0107b583          	ld	a1,16(a5)
   12264:	ffc77713          	andi	a4,a4,-4
   12268:	00e78733          	add	a4,a5,a4
   1226c:	00873683          	ld	a3,8(a4)
   12270:	00c5bc23          	sd	a2,24(a1)
   12274:	00b63823          	sd	a1,16(a2)
   12278:	0016e693          	ori	a3,a3,1
   1227c:	00040513          	mv	a0,s0
   12280:	00d73423          	sd	a3,8(a4)
   12284:	00f13423          	sd	a5,8(sp)
   12288:	06d000ef          	jal	12af4 <__malloc_unlock>
   1228c:	00813783          	ld	a5,8(sp)
   12290:	05813083          	ld	ra,88(sp)
   12294:	05013403          	ld	s0,80(sp)
   12298:	01078513          	addi	a0,a5,16
   1229c:	06010113          	addi	sp,sp,96
   122a0:	00008067          	ret
   122a4:	00c00793          	li	a5,12
   122a8:	00f42023          	sw	a5,0(s0)
   122ac:	00000513          	li	a0,0
   122b0:	05813083          	ld	ra,88(sp)
   122b4:	05013403          	ld	s0,80(sp)
   122b8:	06010113          	addi	sp,sp,96
   122bc:	00008067          	ret
   122c0:	00100793          	li	a5,1
   122c4:	ff077713          	andi	a4,a4,-16
   122c8:	01f79793          	slli	a5,a5,0x1f
   122cc:	fcf77ce3          	bgeu	a4,a5,122a4 <_malloc_r+0x98>
   122d0:	fcb76ae3          	bltu	a4,a1,122a4 <_malloc_r+0x98>
   122d4:	00e13423          	sd	a4,8(sp)
   122d8:	019000ef          	jal	12af0 <__malloc_lock>
   122dc:	00813703          	ld	a4,8(sp)
   122e0:	1f700793          	li	a5,503
   122e4:	4ee7fa63          	bgeu	a5,a4,127d8 <_malloc_r+0x5cc>
   122e8:	00975793          	srli	a5,a4,0x9
   122ec:	18078a63          	beqz	a5,12480 <_malloc_r+0x274>
   122f0:	00400693          	li	a3,4
   122f4:	44f6ea63          	bltu	a3,a5,12748 <_malloc_r+0x53c>
   122f8:	00675793          	srli	a5,a4,0x6
   122fc:	0397889b          	addiw	a7,a5,57
   12300:	0018951b          	slliw	a0,a7,0x1
   12304:	03878e1b          	addiw	t3,a5,56
   12308:	00351513          	slli	a0,a0,0x3
   1230c:	00014837          	lui	a6,0x14
   12310:	20080813          	addi	a6,a6,512 # 14200 <__malloc_av_>
   12314:	00a80533          	add	a0,a6,a0
   12318:	00853783          	ld	a5,8(a0)
   1231c:	ff050513          	addi	a0,a0,-16
   12320:	02f50863          	beq	a0,a5,12350 <_malloc_r+0x144>
   12324:	01f00313          	li	t1,31
   12328:	0140006f          	j	1233c <_malloc_r+0x130>
   1232c:	0187b583          	ld	a1,24(a5)
   12330:	36065263          	bgez	a2,12694 <_malloc_r+0x488>
   12334:	00b50e63          	beq	a0,a1,12350 <_malloc_r+0x144>
   12338:	00058793          	mv	a5,a1
   1233c:	0087b683          	ld	a3,8(a5)
   12340:	ffc6f693          	andi	a3,a3,-4
   12344:	40e68633          	sub	a2,a3,a4
   12348:	fec352e3          	bge	t1,a2,1232c <_malloc_r+0x120>
   1234c:	000e0893          	mv	a7,t3
   12350:	02083783          	ld	a5,32(a6)
   12354:	00014e37          	lui	t3,0x14
   12358:	210e0e13          	addi	t3,t3,528 # 14210 <__malloc_av_+0x10>
   1235c:	2fc78a63          	beq	a5,t3,12650 <_malloc_r+0x444>
   12360:	0087b303          	ld	t1,8(a5)
   12364:	01f00613          	li	a2,31
   12368:	ffc37313          	andi	t1,t1,-4
   1236c:	40e306b3          	sub	a3,t1,a4
   12370:	4ad64463          	blt	a2,a3,12818 <_malloc_r+0x60c>
   12374:	03c83423          	sd	t3,40(a6)
   12378:	03c83023          	sd	t3,32(a6)
   1237c:	4606da63          	bgez	a3,127f0 <_malloc_r+0x5e4>
   12380:	1ff00693          	li	a3,511
   12384:	00883583          	ld	a1,8(a6)
   12388:	3466ee63          	bltu	a3,t1,126e4 <_malloc_r+0x4d8>
   1238c:	00335313          	srli	t1,t1,0x3
   12390:	00131693          	slli	a3,t1,0x1
   12394:	0026869b          	addiw	a3,a3,2
   12398:	00369693          	slli	a3,a3,0x3
   1239c:	00d806b3          	add	a3,a6,a3
   123a0:	0006b503          	ld	a0,0(a3)
   123a4:	4023531b          	sraiw	t1,t1,0x2
   123a8:	00100613          	li	a2,1
   123ac:	00661633          	sll	a2,a2,t1
   123b0:	00c5e5b3          	or	a1,a1,a2
   123b4:	ff068613          	addi	a2,a3,-16
   123b8:	00a7b823          	sd	a0,16(a5)
   123bc:	00c7bc23          	sd	a2,24(a5)
   123c0:	00b83423          	sd	a1,8(a6)
   123c4:	00f6b023          	sd	a5,0(a3)
   123c8:	00f53c23          	sd	a5,24(a0)
   123cc:	4028d79b          	sraiw	a5,a7,0x2
   123d0:	00100513          	li	a0,1
   123d4:	00f51533          	sll	a0,a0,a5
   123d8:	0aa5ec63          	bltu	a1,a0,12490 <_malloc_r+0x284>
   123dc:	00b577b3          	and	a5,a0,a1
   123e0:	02079463          	bnez	a5,12408 <_malloc_r+0x1fc>
   123e4:	00151513          	slli	a0,a0,0x1
   123e8:	ffc8f893          	andi	a7,a7,-4
   123ec:	00b577b3          	and	a5,a0,a1
   123f0:	0048889b          	addiw	a7,a7,4
   123f4:	00079a63          	bnez	a5,12408 <_malloc_r+0x1fc>
   123f8:	00151513          	slli	a0,a0,0x1
   123fc:	00b577b3          	and	a5,a0,a1
   12400:	0048889b          	addiw	a7,a7,4
   12404:	fe078ae3          	beqz	a5,123f8 <_malloc_r+0x1ec>
   12408:	01f00e93          	li	t4,31
   1240c:	00189f13          	slli	t5,a7,0x1
   12410:	002f0f1b          	addiw	t5,t5,2
   12414:	003f1f13          	slli	t5,t5,0x3
   12418:	ff0f0f13          	addi	t5,t5,-16
   1241c:	01e80f33          	add	t5,a6,t5
   12420:	000f0313          	mv	t1,t5
   12424:	01833683          	ld	a3,24(t1)
   12428:	00088f93          	mv	t6,a7
   1242c:	34d30263          	beq	t1,a3,12770 <_malloc_r+0x564>
   12430:	0086b603          	ld	a2,8(a3)
   12434:	00068793          	mv	a5,a3
   12438:	0186b683          	ld	a3,24(a3)
   1243c:	ffc67613          	andi	a2,a2,-4
   12440:	40e605b3          	sub	a1,a2,a4
   12444:	34bec263          	blt	t4,a1,12788 <_malloc_r+0x57c>
   12448:	fe05c2e3          	bltz	a1,1242c <_malloc_r+0x220>
   1244c:	00c78633          	add	a2,a5,a2
   12450:	00863703          	ld	a4,8(a2)
   12454:	0107b583          	ld	a1,16(a5)
   12458:	00040513          	mv	a0,s0
   1245c:	00176713          	ori	a4,a4,1
   12460:	00e63423          	sd	a4,8(a2)
   12464:	00d5bc23          	sd	a3,24(a1)
   12468:	00b6b823          	sd	a1,16(a3)
   1246c:	00f13423          	sd	a5,8(sp)
   12470:	684000ef          	jal	12af4 <__malloc_unlock>
   12474:	00813783          	ld	a5,8(sp)
   12478:	01078513          	addi	a0,a5,16
   1247c:	e35ff06f          	j	122b0 <_malloc_r+0xa4>
   12480:	40000513          	li	a0,1024
   12484:	04000893          	li	a7,64
   12488:	03f00e13          	li	t3,63
   1248c:	e81ff06f          	j	1230c <_malloc_r+0x100>
   12490:	01083783          	ld	a5,16(a6)
   12494:	0087b683          	ld	a3,8(a5)
   12498:	ffc6f893          	andi	a7,a3,-4
   1249c:	40e88633          	sub	a2,a7,a4
   124a0:	00e8e663          	bltu	a7,a4,124ac <_malloc_r+0x2a0>
   124a4:	02062693          	slti	a3,a2,32
   124a8:	1a068863          	beqz	a3,12658 <_malloc_r+0x44c>
   124ac:	2401b583          	ld	a1,576(gp) # 14a58 <__malloc_top_pad>
   124b0:	2081b603          	ld	a2,520(gp) # 14a20 <__malloc_sbrk_base>
   124b4:	fff00693          	li	a3,-1
   124b8:	00b705b3          	add	a1,a4,a1
   124bc:	44d60663          	beq	a2,a3,12908 <_malloc_r+0x6fc>
   124c0:	000016b7          	lui	a3,0x1
   124c4:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   124c8:	00d585b3          	add	a1,a1,a3
   124cc:	fffff6b7          	lui	a3,0xfffff
   124d0:	00d5f5b3          	and	a1,a1,a3
   124d4:	00040513          	mv	a0,s0
   124d8:	03013423          	sd	a6,40(sp)
   124dc:	02f13023          	sd	a5,32(sp)
   124e0:	00e13c23          	sd	a4,24(sp)
   124e4:	01113823          	sd	a7,16(sp)
   124e8:	00b13423          	sd	a1,8(sp)
   124ec:	26d000ef          	jal	12f58 <_sbrk_r>
   124f0:	fff00693          	li	a3,-1
   124f4:	00813583          	ld	a1,8(sp)
   124f8:	01013883          	ld	a7,16(sp)
   124fc:	01813703          	ld	a4,24(sp)
   12500:	02013783          	ld	a5,32(sp)
   12504:	02813803          	ld	a6,40(sp)
   12508:	00050313          	mv	t1,a0
   1250c:	36d50663          	beq	a0,a3,12878 <_malloc_r+0x66c>
   12510:	011786b3          	add	a3,a5,a7
   12514:	36d56063          	bltu	a0,a3,12874 <_malloc_r+0x668>
   12518:	49818e13          	addi	t3,gp,1176 # 14cb0 <__malloc_current_mallinfo>
   1251c:	000e2603          	lw	a2,0(t3)
   12520:	00b6063b          	addw	a2,a2,a1
   12524:	00ce2023          	sw	a2,0(t3)
   12528:	00060513          	mv	a0,a2
   1252c:	4a668c63          	beq	a3,t1,129e4 <_malloc_r+0x7d8>
   12530:	2081bf03          	ld	t5,520(gp) # 14a20 <__malloc_sbrk_base>
   12534:	fff00613          	li	a2,-1
   12538:	4ccf0463          	beq	t5,a2,12a00 <_malloc_r+0x7f4>
   1253c:	40d306b3          	sub	a3,t1,a3
   12540:	00a686bb          	addw	a3,a3,a0
   12544:	00de2023          	sw	a3,0(t3)
   12548:	00f37e93          	andi	t4,t1,15
   1254c:	3c0e8e63          	beqz	t4,12928 <_malloc_r+0x71c>
   12550:	ff037313          	andi	t1,t1,-16
   12554:	000016b7          	lui	a3,0x1
   12558:	01030313          	addi	t1,t1,16
   1255c:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   12560:	00b30633          	add	a2,t1,a1
   12564:	41d685b3          	sub	a1,a3,t4
   12568:	40c585b3          	sub	a1,a1,a2
   1256c:	03459593          	slli	a1,a1,0x34
   12570:	0345d593          	srli	a1,a1,0x34
   12574:	00040513          	mv	a0,s0
   12578:	05c13023          	sd	t3,64(sp)
   1257c:	03013c23          	sd	a6,56(sp)
   12580:	02f13823          	sd	a5,48(sp)
   12584:	02e13423          	sd	a4,40(sp)
   12588:	03113023          	sd	a7,32(sp)
   1258c:	00613c23          	sd	t1,24(sp)
   12590:	01d13823          	sd	t4,16(sp)
   12594:	00c13423          	sd	a2,8(sp)
   12598:	04b13423          	sd	a1,72(sp)
   1259c:	1bd000ef          	jal	12f58 <_sbrk_r>
   125a0:	00050693          	mv	a3,a0
   125a4:	fff00513          	li	a0,-1
   125a8:	00813603          	ld	a2,8(sp)
   125ac:	01013e83          	ld	t4,16(sp)
   125b0:	01813303          	ld	t1,24(sp)
   125b4:	02013883          	ld	a7,32(sp)
   125b8:	02813703          	ld	a4,40(sp)
   125bc:	03013783          	ld	a5,48(sp)
   125c0:	03813803          	ld	a6,56(sp)
   125c4:	04013e03          	ld	t3,64(sp)
   125c8:	48a68663          	beq	a3,a0,12a54 <_malloc_r+0x848>
   125cc:	04813583          	ld	a1,72(sp)
   125d0:	0005851b          	sext.w	a0,a1
   125d4:	000e2603          	lw	a2,0(t3)
   125d8:	406686b3          	sub	a3,a3,t1
   125dc:	00b686b3          	add	a3,a3,a1
   125e0:	0016e693          	ori	a3,a3,1
   125e4:	00683823          	sd	t1,16(a6)
   125e8:	00a6063b          	addw	a2,a2,a0
   125ec:	00d33423          	sd	a3,8(t1)
   125f0:	00ce2023          	sw	a2,0(t3)
   125f4:	03078e63          	beq	a5,a6,12630 <_malloc_r+0x424>
   125f8:	01f00513          	li	a0,31
   125fc:	41157663          	bgeu	a0,a7,12a08 <_malloc_r+0x7fc>
   12600:	0087b583          	ld	a1,8(a5)
   12604:	fe888693          	addi	a3,a7,-24
   12608:	ff06f693          	andi	a3,a3,-16
   1260c:	0015f593          	andi	a1,a1,1
   12610:	00d5e5b3          	or	a1,a1,a3
   12614:	00b7b423          	sd	a1,8(a5)
   12618:	00900893          	li	a7,9
   1261c:	00d785b3          	add	a1,a5,a3
   12620:	0115b423          	sd	a7,8(a1)
   12624:	0115b823          	sd	a7,16(a1)
   12628:	44d56863          	bltu	a0,a3,12a78 <_malloc_r+0x86c>
   1262c:	00833683          	ld	a3,8(t1)
   12630:	2381b583          	ld	a1,568(gp) # 14a50 <__malloc_max_sbrked_mem>
   12634:	00c5f463          	bgeu	a1,a2,1263c <_malloc_r+0x430>
   12638:	22c1bc23          	sd	a2,568(gp) # 14a50 <__malloc_max_sbrked_mem>
   1263c:	2301b583          	ld	a1,560(gp) # 14a48 <__malloc_max_total_mem>
   12640:	00c5f463          	bgeu	a1,a2,12648 <_malloc_r+0x43c>
   12644:	22c1b823          	sd	a2,560(gp) # 14a48 <__malloc_max_total_mem>
   12648:	00030793          	mv	a5,t1
   1264c:	2340006f          	j	12880 <_malloc_r+0x674>
   12650:	00883583          	ld	a1,8(a6)
   12654:	d79ff06f          	j	123cc <_malloc_r+0x1c0>
   12658:	00176693          	ori	a3,a4,1
   1265c:	00d7b423          	sd	a3,8(a5)
   12660:	00e78733          	add	a4,a5,a4
   12664:	00166613          	ori	a2,a2,1
   12668:	00e83823          	sd	a4,16(a6)
   1266c:	00040513          	mv	a0,s0
   12670:	00c73423          	sd	a2,8(a4)
   12674:	00f13423          	sd	a5,8(sp)
   12678:	47c000ef          	jal	12af4 <__malloc_unlock>
   1267c:	00813783          	ld	a5,8(sp)
   12680:	05813083          	ld	ra,88(sp)
   12684:	05013403          	ld	s0,80(sp)
   12688:	01078513          	addi	a0,a5,16
   1268c:	06010113          	addi	sp,sp,96
   12690:	00008067          	ret
   12694:	0107b603          	ld	a2,16(a5)
   12698:	00d786b3          	add	a3,a5,a3
   1269c:	0086b703          	ld	a4,8(a3)
   126a0:	00b63c23          	sd	a1,24(a2)
   126a4:	00c5b823          	sd	a2,16(a1)
   126a8:	00176713          	ori	a4,a4,1
   126ac:	00040513          	mv	a0,s0
   126b0:	00e6b423          	sd	a4,8(a3)
   126b4:	00f13423          	sd	a5,8(sp)
   126b8:	43c000ef          	jal	12af4 <__malloc_unlock>
   126bc:	00813783          	ld	a5,8(sp)
   126c0:	05813083          	ld	ra,88(sp)
   126c4:	05013403          	ld	s0,80(sp)
   126c8:	01078513          	addi	a0,a5,16
   126cc:	06010113          	addi	sp,sp,96
   126d0:	00008067          	ret
   126d4:	0186b783          	ld	a5,24(a3)
   126d8:	0028889b          	addiw	a7,a7,2
   126dc:	c6f68ae3          	beq	a3,a5,12350 <_malloc_r+0x144>
   126e0:	b79ff06f          	j	12258 <_malloc_r+0x4c>
   126e4:	00935693          	srli	a3,t1,0x9
   126e8:	00400613          	li	a2,4
   126ec:	16d67863          	bgeu	a2,a3,1285c <_malloc_r+0x650>
   126f0:	01400613          	li	a2,20
   126f4:	28d66e63          	bltu	a2,a3,12990 <_malloc_r+0x784>
   126f8:	00169513          	slli	a0,a3,0x1
   126fc:	0b85051b          	addiw	a0,a0,184
   12700:	00351513          	slli	a0,a0,0x3
   12704:	05b6861b          	addiw	a2,a3,91
   12708:	00a80533          	add	a0,a6,a0
   1270c:	00053683          	ld	a3,0(a0)
   12710:	ff050513          	addi	a0,a0,-16
   12714:	00d51863          	bne	a0,a3,12724 <_malloc_r+0x518>
   12718:	1f80006f          	j	12910 <_malloc_r+0x704>
   1271c:	0106b683          	ld	a3,16(a3)
   12720:	00d50863          	beq	a0,a3,12730 <_malloc_r+0x524>
   12724:	0086b603          	ld	a2,8(a3)
   12728:	ffc67613          	andi	a2,a2,-4
   1272c:	fec368e3          	bltu	t1,a2,1271c <_malloc_r+0x510>
   12730:	0186b503          	ld	a0,24(a3)
   12734:	00a7bc23          	sd	a0,24(a5)
   12738:	00d7b823          	sd	a3,16(a5)
   1273c:	00f53823          	sd	a5,16(a0)
   12740:	00f6bc23          	sd	a5,24(a3)
   12744:	c89ff06f          	j	123cc <_malloc_r+0x1c0>
   12748:	01400693          	li	a3,20
   1274c:	14f6fa63          	bgeu	a3,a5,128a0 <_malloc_r+0x694>
   12750:	05400693          	li	a3,84
   12754:	24f6ee63          	bltu	a3,a5,129b0 <_malloc_r+0x7a4>
   12758:	00c75793          	srli	a5,a4,0xc
   1275c:	06f7889b          	addiw	a7,a5,111
   12760:	0018951b          	slliw	a0,a7,0x1
   12764:	06e78e1b          	addiw	t3,a5,110
   12768:	00351513          	slli	a0,a0,0x3
   1276c:	ba1ff06f          	j	1230c <_malloc_r+0x100>
   12770:	001f8f9b          	addiw	t6,t6,1
   12774:	003ff793          	andi	a5,t6,3
   12778:	01030313          	addi	t1,t1,16
   1277c:	14078263          	beqz	a5,128c0 <_malloc_r+0x6b4>
   12780:	01833683          	ld	a3,24(t1)
   12784:	ca9ff06f          	j	1242c <_malloc_r+0x220>
   12788:	0107b503          	ld	a0,16(a5)
   1278c:	00176893          	ori	a7,a4,1
   12790:	0117b423          	sd	a7,8(a5)
   12794:	00d53c23          	sd	a3,24(a0)
   12798:	00a6b823          	sd	a0,16(a3)
   1279c:	00e78733          	add	a4,a5,a4
   127a0:	02e83423          	sd	a4,40(a6)
   127a4:	02e83023          	sd	a4,32(a6)
   127a8:	0015e693          	ori	a3,a1,1
   127ac:	00c78633          	add	a2,a5,a2
   127b0:	01c73c23          	sd	t3,24(a4)
   127b4:	01c73823          	sd	t3,16(a4)
   127b8:	00d73423          	sd	a3,8(a4)
   127bc:	00040513          	mv	a0,s0
   127c0:	00b63023          	sd	a1,0(a2)
   127c4:	00f13423          	sd	a5,8(sp)
   127c8:	32c000ef          	jal	12af4 <__malloc_unlock>
   127cc:	00813783          	ld	a5,8(sp)
   127d0:	01078513          	addi	a0,a5,16
   127d4:	addff06f          	j	122b0 <_malloc_r+0xa4>
   127d8:	00375893          	srli	a7,a4,0x3
   127dc:	00189693          	slli	a3,a7,0x1
   127e0:	0026869b          	addiw	a3,a3,2
   127e4:	00369693          	slli	a3,a3,0x3
   127e8:	0008889b          	sext.w	a7,a7
   127ec:	a55ff06f          	j	12240 <_malloc_r+0x34>
   127f0:	00678333          	add	t1,a5,t1
   127f4:	00833703          	ld	a4,8(t1)
   127f8:	00040513          	mv	a0,s0
   127fc:	00f13423          	sd	a5,8(sp)
   12800:	00176713          	ori	a4,a4,1
   12804:	00e33423          	sd	a4,8(t1)
   12808:	2ec000ef          	jal	12af4 <__malloc_unlock>
   1280c:	00813783          	ld	a5,8(sp)
   12810:	01078513          	addi	a0,a5,16
   12814:	a9dff06f          	j	122b0 <_malloc_r+0xa4>
   12818:	00176613          	ori	a2,a4,1
   1281c:	00c7b423          	sd	a2,8(a5)
   12820:	00e78733          	add	a4,a5,a4
   12824:	02e83423          	sd	a4,40(a6)
   12828:	02e83023          	sd	a4,32(a6)
   1282c:	0016e613          	ori	a2,a3,1
   12830:	00678333          	add	t1,a5,t1
   12834:	01c73c23          	sd	t3,24(a4)
   12838:	01c73823          	sd	t3,16(a4)
   1283c:	00c73423          	sd	a2,8(a4)
   12840:	00040513          	mv	a0,s0
   12844:	00d33023          	sd	a3,0(t1)
   12848:	00f13423          	sd	a5,8(sp)
   1284c:	2a8000ef          	jal	12af4 <__malloc_unlock>
   12850:	00813783          	ld	a5,8(sp)
   12854:	01078513          	addi	a0,a5,16
   12858:	a59ff06f          	j	122b0 <_malloc_r+0xa4>
   1285c:	00635693          	srli	a3,t1,0x6
   12860:	00169513          	slli	a0,a3,0x1
   12864:	0725051b          	addiw	a0,a0,114
   12868:	00351513          	slli	a0,a0,0x3
   1286c:	0386861b          	addiw	a2,a3,56
   12870:	e99ff06f          	j	12708 <_malloc_r+0x4fc>
   12874:	15078e63          	beq	a5,a6,129d0 <_malloc_r+0x7c4>
   12878:	01083783          	ld	a5,16(a6)
   1287c:	0087b683          	ld	a3,8(a5)
   12880:	ffc6f693          	andi	a3,a3,-4
   12884:	40e68633          	sub	a2,a3,a4
   12888:	00e6e663          	bltu	a3,a4,12894 <_malloc_r+0x688>
   1288c:	02062693          	slti	a3,a2,32
   12890:	dc0684e3          	beqz	a3,12658 <_malloc_r+0x44c>
   12894:	00040513          	mv	a0,s0
   12898:	25c000ef          	jal	12af4 <__malloc_unlock>
   1289c:	a11ff06f          	j	122ac <_malloc_r+0xa0>
   128a0:	05c7889b          	addiw	a7,a5,92
   128a4:	0018951b          	slliw	a0,a7,0x1
   128a8:	05b78e1b          	addiw	t3,a5,91
   128ac:	00351513          	slli	a0,a0,0x3
   128b0:	a5dff06f          	j	1230c <_malloc_r+0x100>
   128b4:	010f3783          	ld	a5,16(t5)
   128b8:	fff8889b          	addiw	a7,a7,-1
   128bc:	23e79663          	bne	a5,t5,12ae8 <_malloc_r+0x8dc>
   128c0:	0038f793          	andi	a5,a7,3
   128c4:	ff0f0f13          	addi	t5,t5,-16
   128c8:	fe0796e3          	bnez	a5,128b4 <_malloc_r+0x6a8>
   128cc:	00883683          	ld	a3,8(a6)
   128d0:	fff54793          	not	a5,a0
   128d4:	00d7f7b3          	and	a5,a5,a3
   128d8:	00f83423          	sd	a5,8(a6)
   128dc:	00151513          	slli	a0,a0,0x1
   128e0:	fff50693          	addi	a3,a0,-1
   128e4:	baf6f6e3          	bgeu	a3,a5,12490 <_malloc_r+0x284>
   128e8:	00f576b3          	and	a3,a0,a5
   128ec:	00069a63          	bnez	a3,12900 <_malloc_r+0x6f4>
   128f0:	00151513          	slli	a0,a0,0x1
   128f4:	00f576b3          	and	a3,a0,a5
   128f8:	004f8f9b          	addiw	t6,t6,4
   128fc:	fe068ae3          	beqz	a3,128f0 <_malloc_r+0x6e4>
   12900:	000f8893          	mv	a7,t6
   12904:	b09ff06f          	j	1240c <_malloc_r+0x200>
   12908:	02058593          	addi	a1,a1,32
   1290c:	bc9ff06f          	j	124d4 <_malloc_r+0x2c8>
   12910:	4026561b          	sraiw	a2,a2,0x2
   12914:	00100313          	li	t1,1
   12918:	00c31633          	sll	a2,t1,a2
   1291c:	00c5e5b3          	or	a1,a1,a2
   12920:	00b83423          	sd	a1,8(a6)
   12924:	e11ff06f          	j	12734 <_malloc_r+0x528>
   12928:	00b30633          	add	a2,t1,a1
   1292c:	40c005b3          	neg	a1,a2
   12930:	03459593          	slli	a1,a1,0x34
   12934:	0345d593          	srli	a1,a1,0x34
   12938:	00040513          	mv	a0,s0
   1293c:	03c13c23          	sd	t3,56(sp)
   12940:	03013823          	sd	a6,48(sp)
   12944:	02f13423          	sd	a5,40(sp)
   12948:	02e13023          	sd	a4,32(sp)
   1294c:	01113c23          	sd	a7,24(sp)
   12950:	00613823          	sd	t1,16(sp)
   12954:	00c13423          	sd	a2,8(sp)
   12958:	04b13023          	sd	a1,64(sp)
   1295c:	5fc000ef          	jal	12f58 <_sbrk_r>
   12960:	00050693          	mv	a3,a0
   12964:	fff00513          	li	a0,-1
   12968:	01013303          	ld	t1,16(sp)
   1296c:	01813883          	ld	a7,24(sp)
   12970:	02013703          	ld	a4,32(sp)
   12974:	02813783          	ld	a5,40(sp)
   12978:	03013803          	ld	a6,48(sp)
   1297c:	03813e03          	ld	t3,56(sp)
   12980:	0ea68463          	beq	a3,a0,12a68 <_malloc_r+0x85c>
   12984:	04013583          	ld	a1,64(sp)
   12988:	0005851b          	sext.w	a0,a1
   1298c:	c49ff06f          	j	125d4 <_malloc_r+0x3c8>
   12990:	05400613          	li	a2,84
   12994:	08d66063          	bltu	a2,a3,12a14 <_malloc_r+0x808>
   12998:	00c35693          	srli	a3,t1,0xc
   1299c:	00169513          	slli	a0,a3,0x1
   129a0:	0de5051b          	addiw	a0,a0,222
   129a4:	00351513          	slli	a0,a0,0x3
   129a8:	06e6861b          	addiw	a2,a3,110
   129ac:	d5dff06f          	j	12708 <_malloc_r+0x4fc>
   129b0:	15400693          	li	a3,340
   129b4:	08f6e063          	bltu	a3,a5,12a34 <_malloc_r+0x828>
   129b8:	00f75793          	srli	a5,a4,0xf
   129bc:	0787889b          	addiw	a7,a5,120
   129c0:	0018951b          	slliw	a0,a7,0x1
   129c4:	07778e1b          	addiw	t3,a5,119
   129c8:	00351513          	slli	a0,a0,0x3
   129cc:	941ff06f          	j	1230c <_malloc_r+0x100>
   129d0:	49818e13          	addi	t3,gp,1176 # 14cb0 <__malloc_current_mallinfo>
   129d4:	000e2503          	lw	a0,0(t3)
   129d8:	00b5053b          	addw	a0,a0,a1
   129dc:	00ae2023          	sw	a0,0(t3)
   129e0:	b51ff06f          	j	12530 <_malloc_r+0x324>
   129e4:	03431f13          	slli	t5,t1,0x34
   129e8:	b40f14e3          	bnez	t5,12530 <_malloc_r+0x324>
   129ec:	01083303          	ld	t1,16(a6)
   129f0:	00b885b3          	add	a1,a7,a1
   129f4:	0015e693          	ori	a3,a1,1
   129f8:	00d33423          	sd	a3,8(t1)
   129fc:	c35ff06f          	j	12630 <_malloc_r+0x424>
   12a00:	2061b423          	sd	t1,520(gp) # 14a20 <__malloc_sbrk_base>
   12a04:	b45ff06f          	j	12548 <_malloc_r+0x33c>
   12a08:	00100793          	li	a5,1
   12a0c:	00f33423          	sd	a5,8(t1)
   12a10:	e85ff06f          	j	12894 <_malloc_r+0x688>
   12a14:	15400613          	li	a2,340
   12a18:	08d66a63          	bltu	a2,a3,12aac <_malloc_r+0x8a0>
   12a1c:	00f35693          	srli	a3,t1,0xf
   12a20:	00169513          	slli	a0,a3,0x1
   12a24:	0f05051b          	addiw	a0,a0,240
   12a28:	00351513          	slli	a0,a0,0x3
   12a2c:	0776861b          	addiw	a2,a3,119
   12a30:	cd9ff06f          	j	12708 <_malloc_r+0x4fc>
   12a34:	55400693          	li	a3,1364
   12a38:	08f6ea63          	bltu	a3,a5,12acc <_malloc_r+0x8c0>
   12a3c:	01275793          	srli	a5,a4,0x12
   12a40:	07d7889b          	addiw	a7,a5,125
   12a44:	0018951b          	slliw	a0,a7,0x1
   12a48:	07c78e1b          	addiw	t3,a5,124
   12a4c:	00351513          	slli	a0,a0,0x3
   12a50:	8bdff06f          	j	1230c <_malloc_r+0x100>
   12a54:	ff0e8e93          	addi	t4,t4,-16
   12a58:	01d606b3          	add	a3,a2,t4
   12a5c:	00000513          	li	a0,0
   12a60:	00000593          	li	a1,0
   12a64:	b71ff06f          	j	125d4 <_malloc_r+0x3c8>
   12a68:	00813683          	ld	a3,8(sp)
   12a6c:	00000593          	li	a1,0
   12a70:	00000513          	li	a0,0
   12a74:	b61ff06f          	j	125d4 <_malloc_r+0x3c8>
   12a78:	01078593          	addi	a1,a5,16
   12a7c:	00040513          	mv	a0,s0
   12a80:	01c13c23          	sd	t3,24(sp)
   12a84:	01013823          	sd	a6,16(sp)
   12a88:	00e13423          	sd	a4,8(sp)
   12a8c:	c7cff0ef          	jal	11f08 <_free_r>
   12a90:	01013803          	ld	a6,16(sp)
   12a94:	01813e03          	ld	t3,24(sp)
   12a98:	00813703          	ld	a4,8(sp)
   12a9c:	01083303          	ld	t1,16(a6)
   12aa0:	000e2603          	lw	a2,0(t3)
   12aa4:	00833683          	ld	a3,8(t1)
   12aa8:	b89ff06f          	j	12630 <_malloc_r+0x424>
   12aac:	55400613          	li	a2,1364
   12ab0:	02d66663          	bltu	a2,a3,12adc <_malloc_r+0x8d0>
   12ab4:	01235693          	srli	a3,t1,0x12
   12ab8:	00169513          	slli	a0,a3,0x1
   12abc:	0fa5051b          	addiw	a0,a0,250
   12ac0:	00351513          	slli	a0,a0,0x3
   12ac4:	07c6861b          	addiw	a2,a3,124
   12ac8:	c41ff06f          	j	12708 <_malloc_r+0x4fc>
   12acc:	7f000513          	li	a0,2032
   12ad0:	07f00893          	li	a7,127
   12ad4:	07e00e13          	li	t3,126
   12ad8:	835ff06f          	j	1230c <_malloc_r+0x100>
   12adc:	7f000513          	li	a0,2032
   12ae0:	07e00613          	li	a2,126
   12ae4:	c25ff06f          	j	12708 <_malloc_r+0x4fc>
   12ae8:	00883783          	ld	a5,8(a6)
   12aec:	df1ff06f          	j	128dc <_malloc_r+0x6d0>

0000000000012af0 <__malloc_lock>:
   12af0:	00008067          	ret

0000000000012af4 <__malloc_unlock>:
   12af4:	00008067          	ret

0000000000012af8 <_fclose_r>:
   12af8:	fe010113          	addi	sp,sp,-32
   12afc:	00113c23          	sd	ra,24(sp)
   12b00:	01213023          	sd	s2,0(sp)
   12b04:	02058863          	beqz	a1,12b34 <_fclose_r+0x3c>
   12b08:	00813823          	sd	s0,16(sp)
   12b0c:	00913423          	sd	s1,8(sp)
   12b10:	00058413          	mv	s0,a1
   12b14:	00050493          	mv	s1,a0
   12b18:	00050663          	beqz	a0,12b24 <_fclose_r+0x2c>
   12b1c:	04853783          	ld	a5,72(a0)
   12b20:	0c078c63          	beqz	a5,12bf8 <_fclose_r+0x100>
   12b24:	01041783          	lh	a5,16(s0)
   12b28:	02079263          	bnez	a5,12b4c <_fclose_r+0x54>
   12b2c:	01013403          	ld	s0,16(sp)
   12b30:	00813483          	ld	s1,8(sp)
   12b34:	01813083          	ld	ra,24(sp)
   12b38:	00000913          	li	s2,0
   12b3c:	00090513          	mv	a0,s2
   12b40:	00013903          	ld	s2,0(sp)
   12b44:	02010113          	addi	sp,sp,32
   12b48:	00008067          	ret
   12b4c:	00040593          	mv	a1,s0
   12b50:	00048513          	mv	a0,s1
   12b54:	0b8000ef          	jal	12c0c <__sflush_r>
   12b58:	05043783          	ld	a5,80(s0)
   12b5c:	00050913          	mv	s2,a0
   12b60:	00078a63          	beqz	a5,12b74 <_fclose_r+0x7c>
   12b64:	03043583          	ld	a1,48(s0)
   12b68:	00048513          	mv	a0,s1
   12b6c:	000780e7          	jalr	a5
   12b70:	06054463          	bltz	a0,12bd8 <_fclose_r+0xe0>
   12b74:	01045783          	lhu	a5,16(s0)
   12b78:	0807f793          	andi	a5,a5,128
   12b7c:	06079663          	bnez	a5,12be8 <_fclose_r+0xf0>
   12b80:	05843583          	ld	a1,88(s0)
   12b84:	00058c63          	beqz	a1,12b9c <_fclose_r+0xa4>
   12b88:	07440793          	addi	a5,s0,116
   12b8c:	00f58663          	beq	a1,a5,12b98 <_fclose_r+0xa0>
   12b90:	00048513          	mv	a0,s1
   12b94:	b74ff0ef          	jal	11f08 <_free_r>
   12b98:	04043c23          	sd	zero,88(s0)
   12b9c:	07843583          	ld	a1,120(s0)
   12ba0:	00058863          	beqz	a1,12bb0 <_fclose_r+0xb8>
   12ba4:	00048513          	mv	a0,s1
   12ba8:	b60ff0ef          	jal	11f08 <_free_r>
   12bac:	06043c23          	sd	zero,120(s0)
   12bb0:	aa9fe0ef          	jal	11658 <__sfp_lock_acquire>
   12bb4:	00041823          	sh	zero,16(s0)
   12bb8:	aa5fe0ef          	jal	1165c <__sfp_lock_release>
   12bbc:	01813083          	ld	ra,24(sp)
   12bc0:	01013403          	ld	s0,16(sp)
   12bc4:	00813483          	ld	s1,8(sp)
   12bc8:	00090513          	mv	a0,s2
   12bcc:	00013903          	ld	s2,0(sp)
   12bd0:	02010113          	addi	sp,sp,32
   12bd4:	00008067          	ret
   12bd8:	01045783          	lhu	a5,16(s0)
   12bdc:	fff00913          	li	s2,-1
   12be0:	0807f793          	andi	a5,a5,128
   12be4:	f8078ee3          	beqz	a5,12b80 <_fclose_r+0x88>
   12be8:	01843583          	ld	a1,24(s0)
   12bec:	00048513          	mv	a0,s1
   12bf0:	b18ff0ef          	jal	11f08 <_free_r>
   12bf4:	f8dff06f          	j	12b80 <_fclose_r+0x88>
   12bf8:	a3dfe0ef          	jal	11634 <__sinit>
   12bfc:	f29ff06f          	j	12b24 <_fclose_r+0x2c>

0000000000012c00 <fclose>:
   12c00:	00050593          	mv	a1,a0
   12c04:	2001b503          	ld	a0,512(gp) # 14a18 <_impure_ptr>
   12c08:	ef1ff06f          	j	12af8 <_fclose_r>

0000000000012c0c <__sflush_r>:
   12c0c:	01059703          	lh	a4,16(a1)
   12c10:	fd010113          	addi	sp,sp,-48
   12c14:	02813023          	sd	s0,32(sp)
   12c18:	01313423          	sd	s3,8(sp)
   12c1c:	02113423          	sd	ra,40(sp)
   12c20:	00877793          	andi	a5,a4,8
   12c24:	00058413          	mv	s0,a1
   12c28:	00050993          	mv	s3,a0
   12c2c:	12079263          	bnez	a5,12d50 <__sflush_r+0x144>
   12c30:	000017b7          	lui	a5,0x1
   12c34:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   12c38:	0085a683          	lw	a3,8(a1)
   12c3c:	00f767b3          	or	a5,a4,a5
   12c40:	00f59823          	sh	a5,16(a1)
   12c44:	18d05c63          	blez	a3,12ddc <__sflush_r+0x1d0>
   12c48:	04843803          	ld	a6,72(s0)
   12c4c:	0e080663          	beqz	a6,12d38 <__sflush_r+0x12c>
   12c50:	00913c23          	sd	s1,24(sp)
   12c54:	03371693          	slli	a3,a4,0x33
   12c58:	0009a483          	lw	s1,0(s3)
   12c5c:	0009a023          	sw	zero,0(s3)
   12c60:	1806ca63          	bltz	a3,12df4 <__sflush_r+0x1e8>
   12c64:	03043583          	ld	a1,48(s0)
   12c68:	00000613          	li	a2,0
   12c6c:	00100693          	li	a3,1
   12c70:	00098513          	mv	a0,s3
   12c74:	000800e7          	jalr	a6
   12c78:	fff00793          	li	a5,-1
   12c7c:	00050613          	mv	a2,a0
   12c80:	1af50c63          	beq	a0,a5,12e38 <__sflush_r+0x22c>
   12c84:	01041783          	lh	a5,16(s0)
   12c88:	04843803          	ld	a6,72(s0)
   12c8c:	0047f793          	andi	a5,a5,4
   12c90:	00078e63          	beqz	a5,12cac <__sflush_r+0xa0>
   12c94:	00842703          	lw	a4,8(s0)
   12c98:	05843783          	ld	a5,88(s0)
   12c9c:	40e60633          	sub	a2,a2,a4
   12ca0:	00078663          	beqz	a5,12cac <__sflush_r+0xa0>
   12ca4:	07042783          	lw	a5,112(s0)
   12ca8:	40f60633          	sub	a2,a2,a5
   12cac:	03043583          	ld	a1,48(s0)
   12cb0:	00000693          	li	a3,0
   12cb4:	00098513          	mv	a0,s3
   12cb8:	000800e7          	jalr	a6
   12cbc:	fff00713          	li	a4,-1
   12cc0:	01041783          	lh	a5,16(s0)
   12cc4:	12e51c63          	bne	a0,a4,12dfc <__sflush_r+0x1f0>
   12cc8:	0009a683          	lw	a3,0(s3)
   12ccc:	01d00713          	li	a4,29
   12cd0:	18d76263          	bltu	a4,a3,12e54 <__sflush_r+0x248>
   12cd4:	20400737          	lui	a4,0x20400
   12cd8:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203eb011>
   12cdc:	00d75733          	srl	a4,a4,a3
   12ce0:	00177713          	andi	a4,a4,1
   12ce4:	16070863          	beqz	a4,12e54 <__sflush_r+0x248>
   12ce8:	01843683          	ld	a3,24(s0)
   12cec:	fffff737          	lui	a4,0xfffff
   12cf0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffea80f>
   12cf4:	00e7f733          	and	a4,a5,a4
   12cf8:	00e41823          	sh	a4,16(s0)
   12cfc:	00042423          	sw	zero,8(s0)
   12d00:	00d43023          	sd	a3,0(s0)
   12d04:	03379713          	slli	a4,a5,0x33
   12d08:	00075663          	bgez	a4,12d14 <__sflush_r+0x108>
   12d0c:	0009a783          	lw	a5,0(s3)
   12d10:	10078863          	beqz	a5,12e20 <__sflush_r+0x214>
   12d14:	05843583          	ld	a1,88(s0)
   12d18:	0099a023          	sw	s1,0(s3)
   12d1c:	10058a63          	beqz	a1,12e30 <__sflush_r+0x224>
   12d20:	07440793          	addi	a5,s0,116
   12d24:	00f58663          	beq	a1,a5,12d30 <__sflush_r+0x124>
   12d28:	00098513          	mv	a0,s3
   12d2c:	9dcff0ef          	jal	11f08 <_free_r>
   12d30:	01813483          	ld	s1,24(sp)
   12d34:	04043c23          	sd	zero,88(s0)
   12d38:	02813083          	ld	ra,40(sp)
   12d3c:	02013403          	ld	s0,32(sp)
   12d40:	00813983          	ld	s3,8(sp)
   12d44:	00000513          	li	a0,0
   12d48:	03010113          	addi	sp,sp,48
   12d4c:	00008067          	ret
   12d50:	01213823          	sd	s2,16(sp)
   12d54:	0185b903          	ld	s2,24(a1)
   12d58:	08090a63          	beqz	s2,12dec <__sflush_r+0x1e0>
   12d5c:	00913c23          	sd	s1,24(sp)
   12d60:	0005b483          	ld	s1,0(a1)
   12d64:	00377713          	andi	a4,a4,3
   12d68:	0125b023          	sd	s2,0(a1)
   12d6c:	412484bb          	subw	s1,s1,s2
   12d70:	00000793          	li	a5,0
   12d74:	00071463          	bnez	a4,12d7c <__sflush_r+0x170>
   12d78:	0205a783          	lw	a5,32(a1)
   12d7c:	00f42623          	sw	a5,12(s0)
   12d80:	00904863          	bgtz	s1,12d90 <__sflush_r+0x184>
   12d84:	0640006f          	j	12de8 <__sflush_r+0x1dc>
   12d88:	00a90933          	add	s2,s2,a0
   12d8c:	04905e63          	blez	s1,12de8 <__sflush_r+0x1dc>
   12d90:	04043783          	ld	a5,64(s0)
   12d94:	03043583          	ld	a1,48(s0)
   12d98:	00048693          	mv	a3,s1
   12d9c:	00090613          	mv	a2,s2
   12da0:	00098513          	mv	a0,s3
   12da4:	000780e7          	jalr	a5
   12da8:	40a484bb          	subw	s1,s1,a0
   12dac:	fca04ee3          	bgtz	a0,12d88 <__sflush_r+0x17c>
   12db0:	01045783          	lhu	a5,16(s0)
   12db4:	01013903          	ld	s2,16(sp)
   12db8:	0407e793          	ori	a5,a5,64
   12dbc:	02813083          	ld	ra,40(sp)
   12dc0:	00f41823          	sh	a5,16(s0)
   12dc4:	02013403          	ld	s0,32(sp)
   12dc8:	01813483          	ld	s1,24(sp)
   12dcc:	00813983          	ld	s3,8(sp)
   12dd0:	fff00513          	li	a0,-1
   12dd4:	03010113          	addi	sp,sp,48
   12dd8:	00008067          	ret
   12ddc:	0705a683          	lw	a3,112(a1)
   12de0:	e6d044e3          	bgtz	a3,12c48 <__sflush_r+0x3c>
   12de4:	f55ff06f          	j	12d38 <__sflush_r+0x12c>
   12de8:	01813483          	ld	s1,24(sp)
   12dec:	01013903          	ld	s2,16(sp)
   12df0:	f49ff06f          	j	12d38 <__sflush_r+0x12c>
   12df4:	09043603          	ld	a2,144(s0)
   12df8:	e95ff06f          	j	12c8c <__sflush_r+0x80>
   12dfc:	01843683          	ld	a3,24(s0)
   12e00:	fffff737          	lui	a4,0xfffff
   12e04:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffea80f>
   12e08:	00e7f733          	and	a4,a5,a4
   12e0c:	00e41823          	sh	a4,16(s0)
   12e10:	00042423          	sw	zero,8(s0)
   12e14:	00d43023          	sd	a3,0(s0)
   12e18:	03379713          	slli	a4,a5,0x33
   12e1c:	ee075ce3          	bgez	a4,12d14 <__sflush_r+0x108>
   12e20:	05843583          	ld	a1,88(s0)
   12e24:	08a43823          	sd	a0,144(s0)
   12e28:	0099a023          	sw	s1,0(s3)
   12e2c:	ee059ae3          	bnez	a1,12d20 <__sflush_r+0x114>
   12e30:	01813483          	ld	s1,24(sp)
   12e34:	f05ff06f          	j	12d38 <__sflush_r+0x12c>
   12e38:	0009a783          	lw	a5,0(s3)
   12e3c:	e40784e3          	beqz	a5,12c84 <__sflush_r+0x78>
   12e40:	fe378713          	addi	a4,a5,-29
   12e44:	00070c63          	beqz	a4,12e5c <__sflush_r+0x250>
   12e48:	fea78793          	addi	a5,a5,-22
   12e4c:	00078863          	beqz	a5,12e5c <__sflush_r+0x250>
   12e50:	01045783          	lhu	a5,16(s0)
   12e54:	0407e793          	ori	a5,a5,64
   12e58:	f65ff06f          	j	12dbc <__sflush_r+0x1b0>
   12e5c:	0099a023          	sw	s1,0(s3)
   12e60:	01813483          	ld	s1,24(sp)
   12e64:	ed5ff06f          	j	12d38 <__sflush_r+0x12c>

0000000000012e68 <_fflush_r>:
   12e68:	00050793          	mv	a5,a0
   12e6c:	00050663          	beqz	a0,12e78 <_fflush_r+0x10>
   12e70:	04853703          	ld	a4,72(a0)
   12e74:	00070e63          	beqz	a4,12e90 <_fflush_r+0x28>
   12e78:	01059703          	lh	a4,16(a1)
   12e7c:	00071663          	bnez	a4,12e88 <_fflush_r+0x20>
   12e80:	00000513          	li	a0,0
   12e84:	00008067          	ret
   12e88:	00078513          	mv	a0,a5
   12e8c:	d81ff06f          	j	12c0c <__sflush_r>
   12e90:	fe010113          	addi	sp,sp,-32
   12e94:	00b13423          	sd	a1,8(sp)
   12e98:	00113c23          	sd	ra,24(sp)
   12e9c:	00a13023          	sd	a0,0(sp)
   12ea0:	f94fe0ef          	jal	11634 <__sinit>
   12ea4:	00813583          	ld	a1,8(sp)
   12ea8:	00013783          	ld	a5,0(sp)
   12eac:	01059703          	lh	a4,16(a1)
   12eb0:	00070a63          	beqz	a4,12ec4 <_fflush_r+0x5c>
   12eb4:	01813083          	ld	ra,24(sp)
   12eb8:	00078513          	mv	a0,a5
   12ebc:	02010113          	addi	sp,sp,32
   12ec0:	d4dff06f          	j	12c0c <__sflush_r>
   12ec4:	01813083          	ld	ra,24(sp)
   12ec8:	00000513          	li	a0,0
   12ecc:	02010113          	addi	sp,sp,32
   12ed0:	00008067          	ret

0000000000012ed4 <fflush>:
   12ed4:	06050063          	beqz	a0,12f34 <fflush+0x60>
   12ed8:	00050593          	mv	a1,a0
   12edc:	2001b503          	ld	a0,512(gp) # 14a18 <_impure_ptr>
   12ee0:	00050663          	beqz	a0,12eec <fflush+0x18>
   12ee4:	04853783          	ld	a5,72(a0)
   12ee8:	00078c63          	beqz	a5,12f00 <fflush+0x2c>
   12eec:	01059783          	lh	a5,16(a1)
   12ef0:	00079663          	bnez	a5,12efc <fflush+0x28>
   12ef4:	00000513          	li	a0,0
   12ef8:	00008067          	ret
   12efc:	d11ff06f          	j	12c0c <__sflush_r>
   12f00:	fe010113          	addi	sp,sp,-32
   12f04:	00b13423          	sd	a1,8(sp)
   12f08:	00a13023          	sd	a0,0(sp)
   12f0c:	00113c23          	sd	ra,24(sp)
   12f10:	f24fe0ef          	jal	11634 <__sinit>
   12f14:	00813583          	ld	a1,8(sp)
   12f18:	00013503          	ld	a0,0(sp)
   12f1c:	01059783          	lh	a5,16(a1)
   12f20:	02079663          	bnez	a5,12f4c <fflush+0x78>
   12f24:	01813083          	ld	ra,24(sp)
   12f28:	00000513          	li	a0,0
   12f2c:	02010113          	addi	sp,sp,32
   12f30:	00008067          	ret
   12f34:	000135b7          	lui	a1,0x13
   12f38:	00014537          	lui	a0,0x14
   12f3c:	87818613          	addi	a2,gp,-1928 # 14090 <__sglue>
   12f40:	e6858593          	addi	a1,a1,-408 # 12e68 <_fflush_r>
   12f44:	0a850513          	addi	a0,a0,168 # 140a8 <_impure_data>
   12f48:	f40fe06f          	j	11688 <_fwalk_sglue>
   12f4c:	01813083          	ld	ra,24(sp)
   12f50:	02010113          	addi	sp,sp,32
   12f54:	cb9ff06f          	j	12c0c <__sflush_r>

0000000000012f58 <_sbrk_r>:
   12f58:	fe010113          	addi	sp,sp,-32
   12f5c:	00813823          	sd	s0,16(sp)
   12f60:	00913423          	sd	s1,8(sp)
   12f64:	00050493          	mv	s1,a0
   12f68:	00058513          	mv	a0,a1
   12f6c:	00113c23          	sd	ra,24(sp)
   12f70:	2201a023          	sw	zero,544(gp) # 14a38 <errno>
   12f74:	228000ef          	jal	1319c <_sbrk>
   12f78:	fff00793          	li	a5,-1
   12f7c:	00f50c63          	beq	a0,a5,12f94 <_sbrk_r+0x3c>
   12f80:	01813083          	ld	ra,24(sp)
   12f84:	01013403          	ld	s0,16(sp)
   12f88:	00813483          	ld	s1,8(sp)
   12f8c:	02010113          	addi	sp,sp,32
   12f90:	00008067          	ret
   12f94:	2201a783          	lw	a5,544(gp) # 14a38 <errno>
   12f98:	fe0784e3          	beqz	a5,12f80 <_sbrk_r+0x28>
   12f9c:	01813083          	ld	ra,24(sp)
   12fa0:	01013403          	ld	s0,16(sp)
   12fa4:	00f4a023          	sw	a5,0(s1)
   12fa8:	00813483          	ld	s1,8(sp)
   12fac:	02010113          	addi	sp,sp,32
   12fb0:	00008067          	ret

0000000000012fb4 <__libc_fini_array>:
   12fb4:	fe010113          	addi	sp,sp,-32
   12fb8:	00813823          	sd	s0,16(sp)
   12fbc:	000147b7          	lui	a5,0x14
   12fc0:	00014437          	lui	s0,0x14
   12fc4:	01878793          	addi	a5,a5,24 # 14018 <result_double>
   12fc8:	01040413          	addi	s0,s0,16 # 14010 <__do_global_dtors_aux_fini_array_entry>
   12fcc:	408787b3          	sub	a5,a5,s0
   12fd0:	00913423          	sd	s1,8(sp)
   12fd4:	00113c23          	sd	ra,24(sp)
   12fd8:	4037d493          	srai	s1,a5,0x3
   12fdc:	02048063          	beqz	s1,12ffc <__libc_fini_array+0x48>
   12fe0:	ff840413          	addi	s0,s0,-8
   12fe4:	00f40433          	add	s0,s0,a5
   12fe8:	00043783          	ld	a5,0(s0)
   12fec:	fff48493          	addi	s1,s1,-1
   12ff0:	ff840413          	addi	s0,s0,-8
   12ff4:	000780e7          	jalr	a5
   12ff8:	fe0498e3          	bnez	s1,12fe8 <__libc_fini_array+0x34>
   12ffc:	01813083          	ld	ra,24(sp)
   13000:	01013403          	ld	s0,16(sp)
   13004:	00813483          	ld	s1,8(sp)
   13008:	02010113          	addi	sp,sp,32
   1300c:	00008067          	ret

0000000000013010 <__register_exitproc>:
   13010:	2281b783          	ld	a5,552(gp) # 14a40 <__atexit>
   13014:	04078e63          	beqz	a5,13070 <__register_exitproc+0x60>
   13018:	0087a703          	lw	a4,8(a5)
   1301c:	01f00813          	li	a6,31
   13020:	08e84263          	blt	a6,a4,130a4 <__register_exitproc+0x94>
   13024:	02050863          	beqz	a0,13054 <__register_exitproc+0x44>
   13028:	00371813          	slli	a6,a4,0x3
   1302c:	01078833          	add	a6,a5,a6
   13030:	10c83823          	sd	a2,272(a6)
   13034:	3107a883          	lw	a7,784(a5)
   13038:	00100613          	li	a2,1
   1303c:	00e6163b          	sllw	a2,a2,a4
   13040:	00c8e8b3          	or	a7,a7,a2
   13044:	3117a823          	sw	a7,784(a5)
   13048:	20d83823          	sd	a3,528(a6)
   1304c:	00200693          	li	a3,2
   13050:	02d50663          	beq	a0,a3,1307c <__register_exitproc+0x6c>
   13054:	0017069b          	addiw	a3,a4,1
   13058:	00371713          	slli	a4,a4,0x3
   1305c:	00d7a423          	sw	a3,8(a5)
   13060:	00e787b3          	add	a5,a5,a4
   13064:	00b7b823          	sd	a1,16(a5)
   13068:	00000513          	li	a0,0
   1306c:	00008067          	ret
   13070:	4c018793          	addi	a5,gp,1216 # 14cd8 <__atexit0>
   13074:	22f1b423          	sd	a5,552(gp) # 14a40 <__atexit>
   13078:	fa1ff06f          	j	13018 <__register_exitproc+0x8>
   1307c:	3147a683          	lw	a3,788(a5)
   13080:	00000513          	li	a0,0
   13084:	00d66633          	or	a2,a2,a3
   13088:	0017069b          	addiw	a3,a4,1
   1308c:	00371713          	slli	a4,a4,0x3
   13090:	30c7aa23          	sw	a2,788(a5)
   13094:	00d7a423          	sw	a3,8(a5)
   13098:	00e787b3          	add	a5,a5,a4
   1309c:	00b7b823          	sd	a1,16(a5)
   130a0:	00008067          	ret
   130a4:	fff00513          	li	a0,-1
   130a8:	00008067          	ret

00000000000130ac <_close>:
   130ac:	03900893          	li	a7,57
   130b0:	00000073          	ecall
   130b4:	00054663          	bltz	a0,130c0 <_close+0x14>
   130b8:	0005051b          	sext.w	a0,a0
   130bc:	00008067          	ret
   130c0:	fe010113          	addi	sp,sp,-32
   130c4:	00113c23          	sd	ra,24(sp)
   130c8:	00a13423          	sd	a0,8(sp)
   130cc:	188000ef          	jal	13254 <__errno>
   130d0:	00813783          	ld	a5,8(sp)
   130d4:	01813083          	ld	ra,24(sp)
   130d8:	40f007bb          	negw	a5,a5
   130dc:	00f52023          	sw	a5,0(a0)
   130e0:	fff00513          	li	a0,-1
   130e4:	02010113          	addi	sp,sp,32
   130e8:	00008067          	ret

00000000000130ec <_exit>:
   130ec:	05d00893          	li	a7,93
   130f0:	00000073          	ecall
   130f4:	00054463          	bltz	a0,130fc <_exit+0x10>
   130f8:	0000006f          	j	130f8 <_exit+0xc>
   130fc:	fe010113          	addi	sp,sp,-32
   13100:	00113c23          	sd	ra,24(sp)
   13104:	00a13423          	sd	a0,8(sp)
   13108:	14c000ef          	jal	13254 <__errno>
   1310c:	00813783          	ld	a5,8(sp)
   13110:	40f007bb          	negw	a5,a5
   13114:	00f52023          	sw	a5,0(a0)
   13118:	0000006f          	j	13118 <_exit+0x2c>

000000000001311c <_lseek>:
   1311c:	03e00893          	li	a7,62
   13120:	00000073          	ecall
   13124:	00054463          	bltz	a0,1312c <_lseek+0x10>
   13128:	00008067          	ret
   1312c:	fe010113          	addi	sp,sp,-32
   13130:	00113c23          	sd	ra,24(sp)
   13134:	00a13423          	sd	a0,8(sp)
   13138:	11c000ef          	jal	13254 <__errno>
   1313c:	00813783          	ld	a5,8(sp)
   13140:	01813083          	ld	ra,24(sp)
   13144:	40f007bb          	negw	a5,a5
   13148:	00f52023          	sw	a5,0(a0)
   1314c:	fff00793          	li	a5,-1
   13150:	00078513          	mv	a0,a5
   13154:	02010113          	addi	sp,sp,32
   13158:	00008067          	ret

000000000001315c <_read>:
   1315c:	03f00893          	li	a7,63
   13160:	00000073          	ecall
   13164:	00054463          	bltz	a0,1316c <_read+0x10>
   13168:	00008067          	ret
   1316c:	fe010113          	addi	sp,sp,-32
   13170:	00113c23          	sd	ra,24(sp)
   13174:	00a13423          	sd	a0,8(sp)
   13178:	0dc000ef          	jal	13254 <__errno>
   1317c:	00813783          	ld	a5,8(sp)
   13180:	01813083          	ld	ra,24(sp)
   13184:	40f007bb          	negw	a5,a5
   13188:	00f52023          	sw	a5,0(a0)
   1318c:	fff00793          	li	a5,-1
   13190:	00078513          	mv	a0,a5
   13194:	02010113          	addi	sp,sp,32
   13198:	00008067          	ret

000000000001319c <_sbrk>:
   1319c:	2481b783          	ld	a5,584(gp) # 14a60 <heap_end.0>
   131a0:	ff010113          	addi	sp,sp,-16
   131a4:	00113423          	sd	ra,8(sp)
   131a8:	00050713          	mv	a4,a0
   131ac:	02079063          	bnez	a5,131cc <_sbrk+0x30>
   131b0:	0d600893          	li	a7,214
   131b4:	00000513          	li	a0,0
   131b8:	00000073          	ecall
   131bc:	fff00793          	li	a5,-1
   131c0:	02f50c63          	beq	a0,a5,131f8 <_sbrk+0x5c>
   131c4:	00050793          	mv	a5,a0
   131c8:	24a1b423          	sd	a0,584(gp) # 14a60 <heap_end.0>
   131cc:	00f70533          	add	a0,a4,a5
   131d0:	0d600893          	li	a7,214
   131d4:	00000073          	ecall
   131d8:	2481b783          	ld	a5,584(gp) # 14a60 <heap_end.0>
   131dc:	00f70733          	add	a4,a4,a5
   131e0:	00e51c63          	bne	a0,a4,131f8 <_sbrk+0x5c>
   131e4:	00813083          	ld	ra,8(sp)
   131e8:	24a1b423          	sd	a0,584(gp) # 14a60 <heap_end.0>
   131ec:	00078513          	mv	a0,a5
   131f0:	01010113          	addi	sp,sp,16
   131f4:	00008067          	ret
   131f8:	05c000ef          	jal	13254 <__errno>
   131fc:	00813083          	ld	ra,8(sp)
   13200:	00c00793          	li	a5,12
   13204:	00f52023          	sw	a5,0(a0)
   13208:	fff00513          	li	a0,-1
   1320c:	01010113          	addi	sp,sp,16
   13210:	00008067          	ret

0000000000013214 <_write>:
   13214:	04000893          	li	a7,64
   13218:	00000073          	ecall
   1321c:	00054463          	bltz	a0,13224 <_write+0x10>
   13220:	00008067          	ret
   13224:	fe010113          	addi	sp,sp,-32
   13228:	00113c23          	sd	ra,24(sp)
   1322c:	00a13423          	sd	a0,8(sp)
   13230:	024000ef          	jal	13254 <__errno>
   13234:	00813783          	ld	a5,8(sp)
   13238:	01813083          	ld	ra,24(sp)
   1323c:	40f007bb          	negw	a5,a5
   13240:	00f52023          	sw	a5,0(a0)
   13244:	fff00793          	li	a5,-1
   13248:	00078513          	mv	a0,a5
   1324c:	02010113          	addi	sp,sp,32
   13250:	00008067          	ret

0000000000013254 <__errno>:
   13254:	2001b503          	ld	a0,512(gp) # 14a18 <_impure_ptr>
   13258:	00008067          	ret

Disassembly of section .rodata:

0000000000013260 <__clz_tab-0x8>:
   13260:	999a                	.insn	2, 0x999a
   13262:	9999                	.insn	2, 0x9999
   13264:	9999                	.insn	2, 0x9999
   13266:	3ff1                	.insn	2, 0x3ff1

0000000000013268 <__clz_tab>:
   13268:	0100                	.insn	2, 0x0100
   1326a:	0202                	.insn	2, 0x0202
   1326c:	03030303          	lb	t1,48(t1)
   13270:	0404                	.insn	2, 0x0404
   13272:	0404                	.insn	2, 0x0404
   13274:	0404                	.insn	2, 0x0404
   13276:	0404                	.insn	2, 0x0404
   13278:	0505                	.insn	2, 0x0505
   1327a:	0505                	.insn	2, 0x0505
   1327c:	0505                	.insn	2, 0x0505
   1327e:	0505                	.insn	2, 0x0505
   13280:	0505                	.insn	2, 0x0505
   13282:	0505                	.insn	2, 0x0505
   13284:	0505                	.insn	2, 0x0505
   13286:	0505                	.insn	2, 0x0505
   13288:	0606                	.insn	2, 0x0606
   1328a:	0606                	.insn	2, 0x0606
   1328c:	0606                	.insn	2, 0x0606
   1328e:	0606                	.insn	2, 0x0606
   13290:	0606                	.insn	2, 0x0606
   13292:	0606                	.insn	2, 0x0606
   13294:	0606                	.insn	2, 0x0606
   13296:	0606                	.insn	2, 0x0606
   13298:	0606                	.insn	2, 0x0606
   1329a:	0606                	.insn	2, 0x0606
   1329c:	0606                	.insn	2, 0x0606
   1329e:	0606                	.insn	2, 0x0606
   132a0:	0606                	.insn	2, 0x0606
   132a2:	0606                	.insn	2, 0x0606
   132a4:	0606                	.insn	2, 0x0606
   132a6:	0606                	.insn	2, 0x0606
   132a8:	07070707          	.insn	4, 0x07070707
   132ac:	07070707          	.insn	4, 0x07070707
   132b0:	07070707          	.insn	4, 0x07070707
   132b4:	07070707          	.insn	4, 0x07070707
   132b8:	07070707          	.insn	4, 0x07070707
   132bc:	07070707          	.insn	4, 0x07070707
   132c0:	07070707          	.insn	4, 0x07070707
   132c4:	07070707          	.insn	4, 0x07070707
   132c8:	07070707          	.insn	4, 0x07070707
   132cc:	07070707          	.insn	4, 0x07070707
   132d0:	07070707          	.insn	4, 0x07070707
   132d4:	07070707          	.insn	4, 0x07070707
   132d8:	07070707          	.insn	4, 0x07070707
   132dc:	07070707          	.insn	4, 0x07070707
   132e0:	07070707          	.insn	4, 0x07070707
   132e4:	07070707          	.insn	4, 0x07070707
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
   13308:	0808                	.insn	2, 0x0808
   1330a:	0808                	.insn	2, 0x0808
   1330c:	0808                	.insn	2, 0x0808
   1330e:	0808                	.insn	2, 0x0808
   13310:	0808                	.insn	2, 0x0808
   13312:	0808                	.insn	2, 0x0808
   13314:	0808                	.insn	2, 0x0808
   13316:	0808                	.insn	2, 0x0808
   13318:	0808                	.insn	2, 0x0808
   1331a:	0808                	.insn	2, 0x0808
   1331c:	0808                	.insn	2, 0x0808
   1331e:	0808                	.insn	2, 0x0808
   13320:	0808                	.insn	2, 0x0808
   13322:	0808                	.insn	2, 0x0808
   13324:	0808                	.insn	2, 0x0808
   13326:	0808                	.insn	2, 0x0808
   13328:	0808                	.insn	2, 0x0808
   1332a:	0808                	.insn	2, 0x0808
   1332c:	0808                	.insn	2, 0x0808
   1332e:	0808                	.insn	2, 0x0808
   13330:	0808                	.insn	2, 0x0808
   13332:	0808                	.insn	2, 0x0808
   13334:	0808                	.insn	2, 0x0808
   13336:	0808                	.insn	2, 0x0808
   13338:	0808                	.insn	2, 0x0808
   1333a:	0808                	.insn	2, 0x0808
   1333c:	0808                	.insn	2, 0x0808
   1333e:	0808                	.insn	2, 0x0808
   13340:	0808                	.insn	2, 0x0808
   13342:	0808                	.insn	2, 0x0808
   13344:	0808                	.insn	2, 0x0808
   13346:	0808                	.insn	2, 0x0808
   13348:	0808                	.insn	2, 0x0808
   1334a:	0808                	.insn	2, 0x0808
   1334c:	0808                	.insn	2, 0x0808
   1334e:	0808                	.insn	2, 0x0808
   13350:	0808                	.insn	2, 0x0808
   13352:	0808                	.insn	2, 0x0808
   13354:	0808                	.insn	2, 0x0808
   13356:	0808                	.insn	2, 0x0808
   13358:	0808                	.insn	2, 0x0808
   1335a:	0808                	.insn	2, 0x0808
   1335c:	0808                	.insn	2, 0x0808
   1335e:	0808                	.insn	2, 0x0808
   13360:	0808                	.insn	2, 0x0808
   13362:	0808                	.insn	2, 0x0808
   13364:	0808                	.insn	2, 0x0808
   13366:	0808                	.insn	2, 0x0808

Disassembly of section .eh_frame:

0000000000013368 <__EH_FRAME_BEGIN__>:
   13368:	0000                	.insn	2, 0x0000
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
  48:	0370                	.insn	2, 0x0370
	...
  5e:	0000                	.insn	2, 0x0000
  60:	002c                	.insn	2, 0x002c
  62:	0000                	.insn	2, 0x0000
  64:	0002                	.insn	2, 0x0002
  66:	000007f7          	.insn	4, 0x07f7
  6a:	0008                	.insn	2, 0x0008
  6c:	0000                	.insn	2, 0x0000
  6e:	0000                	.insn	2, 0x0000
  70:	0c58                	.insn	2, 0x0c58
  72:	0001                	.insn	2, 0x0001
  74:	0000                	.insn	2, 0x0000
  76:	0000                	.insn	2, 0x0000
  78:	0458                	.insn	2, 0x0458
	...
  8e:	0000                	.insn	2, 0x0000
  90:	002c                	.insn	2, 0x002c
  92:	0000                	.insn	2, 0x0000
  94:	0002                	.insn	2, 0x0002
  96:	0b65                	.insn	2, 0x0b65
  98:	0000                	.insn	2, 0x0000
  9a:	0008                	.insn	2, 0x0008
  9c:	0000                	.insn	2, 0x0000
  9e:	0000                	.insn	2, 0x0000
  a0:	10b0                	.insn	2, 0x10b0
  a2:	0001                	.insn	2, 0x0001
  a4:	0000                	.insn	2, 0x0000
  a6:	0000                	.insn	2, 0x0000
  a8:	0080                	.insn	2, 0x0080
	...
  be:	0000                	.insn	2, 0x0000
  c0:	002c                	.insn	2, 0x002c
  c2:	0000                	.insn	2, 0x0000
  c4:	0002                	.insn	2, 0x0002
  c6:	0d99                	.insn	2, 0x0d99
  c8:	0000                	.insn	2, 0x0000
  ca:	0008                	.insn	2, 0x0008
  cc:	0000                	.insn	2, 0x0000
  ce:	0000                	.insn	2, 0x0000
  d0:	1130                	.insn	2, 0x1130
  d2:	0001                	.insn	2, 0x0001
  d4:	0000                	.insn	2, 0x0000
  d6:	0000                	.insn	2, 0x0000
  d8:	00a4                	.insn	2, 0x00a4
	...
  ee:	0000                	.insn	2, 0x0000
  f0:	002c                	.insn	2, 0x002c
  f2:	0000                	.insn	2, 0x0000
  f4:	0002                	.insn	2, 0x0002
  f6:	102e                	.insn	2, 0x102e
  f8:	0000                	.insn	2, 0x0000
  fa:	0008                	.insn	2, 0x0008
  fc:	0000                	.insn	2, 0x0000
  fe:	0000                	.insn	2, 0x0000
 100:	11d4                	.insn	2, 0x11d4
 102:	0001                	.insn	2, 0x0001
 104:	0000                	.insn	2, 0x0000
 106:	0000                	.insn	2, 0x0000
 108:	00f4                	.insn	2, 0x00f4
	...
 11e:	0000                	.insn	2, 0x0000
 120:	002c                	.insn	2, 0x002c
 122:	0000                	.insn	2, 0x0000
 124:	0002                	.insn	2, 0x0002
 126:	000012fb          	.insn	4, 0x12fb
 12a:	0008                	.insn	2, 0x0008
 12c:	0000                	.insn	2, 0x0000
 12e:	0000                	.insn	2, 0x0000
 130:	12c8                	.insn	2, 0x12c8
 132:	0001                	.insn	2, 0x0001
 134:	0000                	.insn	2, 0x0000
 136:	0000                	.insn	2, 0x0000
 138:	0024                	.insn	2, 0x0024
	...
 14e:	0000                	.insn	2, 0x0000
 150:	002c                	.insn	2, 0x002c
 152:	0000                	.insn	2, 0x0000
 154:	0002                	.insn	2, 0x0002
 156:	1334                	.insn	2, 0x1334
 158:	0000                	.insn	2, 0x0000
 15a:	0008                	.insn	2, 0x0008
 15c:	0000                	.insn	2, 0x0000
 15e:	0000                	.insn	2, 0x0000
 160:	12ec                	.insn	2, 0x12ec
 162:	0001                	.insn	2, 0x0001
 164:	0000                	.insn	2, 0x0000
 166:	0000                	.insn	2, 0x0000
 168:	0040                	.insn	2, 0x0040
	...
 17e:	0000                	.insn	2, 0x0000
 180:	001c                	.insn	2, 0x001c
 182:	0000                	.insn	2, 0x0000
 184:	0002                	.insn	2, 0x0002
 186:	14ba                	.insn	2, 0x14ba
 188:	0000                	.insn	2, 0x0000
 18a:	0008                	.insn	2, 0x0008
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
      16:	6900                	.insn	2, 0x6900
      18:	0000                	.insn	2, 0x0000
      1a:	0000                	.insn	2, 0x0000
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
      36:	0498                	.insn	2, 0x0498
      38:	0000                	.insn	2, 0x0000
      3a:	1001                	.insn	2, 0x1001
      3c:	4a05                	.insn	2, 0x4a05
      3e:	0001                	.insn	2, 0x0001
      40:	0100                	.insn	2, 0x0100
      42:	0710                	.insn	2, 0x0710
      44:	0000                	.insn	2, 0x0000
      46:	0000                	.insn	2, 0x0000
      48:	0801                	.insn	2, 0x0801
      4a:	a305                	.insn	2, 0xa305
      4c:	0001                	.insn	2, 0x0001
      4e:	0100                	.insn	2, 0x0100
      50:	0601                	.insn	2, 0x0601
      52:	0114                	.insn	2, 0x0114
      54:	0000                	.insn	2, 0x0000
      56:	040c                	.insn	2, 0x040c
      58:	6905                	.insn	2, 0x6905
      5a:	746e                	.insn	2, 0x746e
      5c:	0100                	.insn	2, 0x0100
      5e:	0801                	.insn	2, 0x0801
      60:	0112                	.insn	2, 0x0112
      62:	0000                	.insn	2, 0x0000
      64:	0401                	.insn	2, 0x0401
      66:	00017607          	.insn	4, 0x00017607
      6a:	0100                	.insn	2, 0x0100
      6c:	0708                	.insn	2, 0x0708
      6e:	0171                	.insn	2, 0x0171
      70:	0000                	.insn	2, 0x0000
      72:	ed0d                	.insn	2, 0xed0d
      74:	0000                	.insn	2, 0x0000
      76:	0200                	.insn	2, 0x0200
      78:	0f44                	.insn	2, 0x0f44
      7a:	00000033          	add	zero,zero,zero
      7e:	080e                	.insn	2, 0x080e
      80:	c602                	.insn	2, 0xc602
      82:	0000b003          	ld	zero,0(ra) # 101dc <__do_global_dtors_aux+0x24>
      86:	0800                	.insn	2, 0x0800
      88:	00000167          	jalr	sp,zero # 0 <exit-0x10120>
      8c:	10cd                	.insn	2, 0x10cd
      8e:	00b0                	.insn	2, 0x00b0
      90:	0000                	.insn	2, 0x0000
      92:	0034                	.insn	2, 0x0034
      94:	7078650f          	.insn	4, 0x7078650f
      98:	0200                	.insn	2, 0x0200
      9a:	0ece                	.insn	2, 0x0ece
      9c:	0064                	.insn	2, 0x0064
      9e:	0000                	.insn	2, 0x0000
      a0:	f708340b          	.insn	4, 0xf708340b
      a4:	0001                	.insn	2, 0x0001
      a6:	cf00                	.insn	2, 0xcf00
      a8:	640e                	.insn	2, 0x640e
      aa:	0000                	.insn	2, 0x0000
      ac:	0100                	.insn	2, 0x0100
      ae:	0801003f 00016c07 	.insn	8, 0x00016c070801003f
      b6:	1000                	.insn	2, 0x1000
      b8:	000001c3          	.insn	4, 0x01c3
      bc:	0208                	.insn	2, 0x0208
      be:	00dd07c3          	.insn	4, 0x00dd07c3
      c2:	0000                	.insn	2, 0x0000
      c4:	6611                	.insn	2, 0x6611
      c6:	746c                	.insn	2, 0x746c
      c8:	0200                	.insn	2, 0x0200
      ca:	0ac5                	.insn	2, 0x0ac5
      cc:	0072                	.insn	2, 0x0072
      ce:	0000                	.insn	2, 0x0000
      d0:	fc12                	.insn	2, 0xfc12
      d2:	0001                	.insn	2, 0x0001
      d4:	0200                	.insn	2, 0x0200
      d6:	05d1                	.insn	2, 0x05d1
      d8:	007e                	.insn	2, 0x007e
      da:	0000                	.insn	2, 0x0000
      dc:	1300                	.insn	2, 0x1300
      de:	00ca                	.insn	2, 0x00ca
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
     120:	000000d3          	.insn	4, 0x00d3
     124:	00005623          	.insn	4, 0x5623
     128:	0500                	.insn	2, 0x0500
     12a:	0002                	.insn	2, 0x0002
     12c:	e000                	.insn	2, 0xe000
     12e:	0001                	.insn	2, 0x0001
     130:	1400                	.insn	2, 0x1400
     132:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
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
     222:	0120                	.insn	2, 0x0120
     224:	0000                	.insn	2, 0x0000
     226:	b72a                	.insn	2, 0xb72a
     228:	0000                	.insn	2, 0x0000
     22a:	0000                	.insn	2, 0x0000
     22c:	1c05                	.insn	2, 0x1c05
     22e:	0000                	.insn	2, 0x0000
     230:	4000                	.insn	2, 0x4000
     232:	0002                	.insn	2, 0x0002
     234:	0300                	.insn	2, 0x0300
     236:	0120                	.insn	2, 0x0120
     238:	0000                	.insn	2, 0x0000
     23a:	0000b72b          	.insn	4, 0xb72b
     23e:	0000                	.insn	2, 0x0000
     240:	2c05                	.insn	2, 0x2c05
     242:	0000                	.insn	2, 0x0000
     244:	8800                	.insn	2, 0x8800
     246:	0002                	.insn	2, 0x0002
     248:	0400                	.insn	2, 0x0400
     24a:	01ed                	.insn	2, 0x01ed
     24c:	0000                	.insn	2, 0x0000
     24e:	055c                	.insn	2, 0x055c
     250:	0001                	.insn	2, 0x0001
     252:	0000                	.insn	2, 0x0000
     254:	0000                	.insn	2, 0x0000
     256:	f204                	.insn	2, 0xf204
     258:	0001                	.insn	2, 0x0001
     25a:	d000                	.insn	2, 0xd000
     25c:	0105                	.insn	2, 0x0105
     25e:	0000                	.insn	2, 0x0000
     260:	0000                	.insn	2, 0x0000
     262:	0400                	.insn	2, 0x0400
     264:	00000183          	lb	gp,0(zero) # 0 <exit-0x10120>
     268:	0504                	.insn	2, 0x0504
     26a:	0001                	.insn	2, 0x0001
     26c:	0000                	.insn	2, 0x0000
     26e:	0000                	.insn	2, 0x0000
     270:	090a                	.insn	2, 0x090a
     272:	0001                	.insn	2, 0x0001
     274:	0600                	.insn	2, 0x0600
     276:	01ac                	.insn	2, 0x01ac
     278:	0000                	.insn	2, 0x0000
     27a:	562c                	.insn	2, 0x562c
     27c:	0000                	.insn	2, 0x0000
     27e:	9d00                	.insn	2, 0x9d00
     280:	8600000b          	.insn	4, 0x8600000b
     284:	0000000b          	.insn	4, 0x000b
     288:	8f05                	.insn	2, 0x8f05
     28a:	0000                	.insn	2, 0x0000
     28c:	0200                	.insn	2, 0x0200
     28e:	04000003          	lb	zero,64(zero) # 40 <exit-0x100e0>
     292:	00000153          	.insn	4, 0x0153
     296:	0708                	.insn	2, 0x0708
     298:	0001                	.insn	2, 0x0001
     29a:	0000                	.insn	2, 0x0000
     29c:	0000                	.insn	2, 0x0000
     29e:	5804                	.insn	2, 0x5804
     2a0:	0001                	.insn	2, 0x0001
     2a2:	9c00                	.insn	2, 0x9c00
     2a4:	00000107          	.insn	4, 0x0107
     2a8:	0000                	.insn	2, 0x0000
     2aa:	0400                	.insn	2, 0x0400
     2ac:	015d                	.insn	2, 0x015d
     2ae:	0000                	.insn	2, 0x0000
     2b0:	06ec                	.insn	2, 0x06ec
     2b2:	0001                	.insn	2, 0x0001
     2b4:	0000                	.insn	2, 0x0000
     2b6:	0000                	.insn	2, 0x0000
     2b8:	6204                	.insn	2, 0x6204
     2ba:	0001                	.insn	2, 0x0001
     2bc:	6800                	.insn	2, 0x6800
     2be:	0108                	.insn	2, 0x0108
     2c0:	0000                	.insn	2, 0x0000
     2c2:	0000                	.insn	2, 0x0000
     2c4:	0a00                	.insn	2, 0x0a00
     2c6:	000001cf          	.insn	4, 0x01cf
     2ca:	ac06                	.insn	2, 0xac06
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
     2e2:	0188                	.insn	2, 0x0188
     2e4:	0000                	.insn	2, 0x0000
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
     30c:	020a                	.insn	2, 0x020a
     30e:	0000                	.insn	2, 0x0000
     310:	562d                	.insn	2, 0x562d
     312:	0000                	.insn	2, 0x0000
     314:	1700                	.insn	2, 0x1700
     316:	0000d803          	lhu	a6,0(ra)
     31a:	2d00                	.insn	2, 0x2d00
     31c:	035d                	.insn	2, 0x035d
     31e:	0000                	.insn	2, 0x0000
     320:	00013503          	ld	a0,0(sp)
     324:	2d00                	.insn	2, 0x2d00
     326:	035d                	.insn	2, 0x035d
     328:	0000                	.insn	2, 0x0000
     32a:	0001d803          	lhu	a6,0(gp) # 14818 <__global_pointer$>
     32e:	2d00                	.insn	2, 0x2d00
     330:	035d                	.insn	2, 0x035d
     332:	0000                	.insn	2, 0x0000
     334:	0000f403          	.insn	4, 0xf403
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
     360:	019e                	.insn	2, 0x019e
     362:	0000                	.insn	2, 0x0000
     364:	0119                	.insn	2, 0x0119
     366:	0002                	.insn	2, 0x0002
     368:	0100                	.insn	2, 0x0100
     36a:	0002                	.insn	2, 0x0002
     36c:	0000                	.insn	2, 0x0000
     36e:	0485                	.insn	2, 0x0485
     370:	0000                	.insn	2, 0x0000
     372:	0005                	.insn	2, 0x0005
     374:	0801                	.insn	2, 0x0801
     376:	0000018b          	.insn	4, 0x018b
     37a:	250d                	.insn	2, 0x250d
     37c:	0000                	.insn	2, 0x0000
     37e:	1d00                	.insn	2, 0x1d00
     380:	03164703          	lbu	a4,49(a2)
     384:	c500                	.insn	2, 0xc500
     386:	0000                	.insn	2, 0x0000
     388:	0000                	.insn	2, 0x0000
     38a:	0000                	.insn	2, 0x0000
     38c:	e800                	.insn	2, 0xe800
     38e:	0108                	.insn	2, 0x0108
     390:	0000                	.insn	2, 0x0000
     392:	0000                	.insn	2, 0x0000
     394:	7000                	.insn	2, 0x7000
     396:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
     39a:	0000                	.insn	2, 0x0000
     39c:	3a00                	.insn	2, 0x3a00
     39e:	0300000f          	fence	rw,unknown
     3a2:	0408                	.insn	2, 0x0408
     3a4:	0498                	.insn	2, 0x0498
     3a6:	0000                	.insn	2, 0x0000
     3a8:	4a051003          	lh	zero,1184(a0)
     3ac:	0001                	.insn	2, 0x0001
     3ae:	0300                	.insn	2, 0x0300
     3b0:	0710                	.insn	2, 0x0710
     3b2:	0000                	.insn	2, 0x0000
     3b4:	0000                	.insn	2, 0x0000
     3b6:	a3050803          	lb	a6,-1488(a0)
     3ba:	0001                	.insn	2, 0x0001
     3bc:	0300                	.insn	2, 0x0300
     3be:	0601                	.insn	2, 0x0601
     3c0:	0114                	.insn	2, 0x0114
     3c2:	0000                	.insn	2, 0x0000
     3c4:	040e                	.insn	2, 0x040e
     3c6:	6905                	.insn	2, 0x6905
     3c8:	746e                	.insn	2, 0x746e
     3ca:	0300                	.insn	2, 0x0300
     3cc:	0801                	.insn	2, 0x0801
     3ce:	0112                	.insn	2, 0x0112
     3d0:	0000                	.insn	2, 0x0000
     3d2:	00027d07          	.insn	4, 0x00027d07
     3d6:	4700                	.insn	2, 0x4700
     3d8:	1601                	.insn	2, 0x1601
     3da:	0070                	.insn	2, 0x0070
     3dc:	0000                	.insn	2, 0x0000
     3de:	76070403          	lb	s0,1888(a4)
     3e2:	0001                	.insn	2, 0x0001
     3e4:	0300                	.insn	2, 0x0300
     3e6:	0708                	.insn	2, 0x0708
     3e8:	0171                	.insn	2, 0x0171
     3ea:	0000                	.insn	2, 0x0000
     3ec:	00026407          	.insn	4, 0x00026407
     3f0:	4c00                	.insn	2, 0x4c00
     3f2:	1101                	.insn	2, 0x1101
     3f4:	0064                	.insn	2, 0x0064
     3f6:	0000                	.insn	2, 0x0000
     3f8:	0000ed0f          	.insn	4, 0xed0f
     3fc:	0300                	.insn	2, 0x0300
     3fe:	0f44                	.insn	2, 0x0f44
     400:	00000033          	add	zero,zero,zero
     404:	0810                	.insn	2, 0x0810
     406:	c803c603          	lbu	a2,-896(t2)
     40a:	0000                	.insn	2, 0x0000
     40c:	0800                	.insn	2, 0x0800
     40e:	00000167          	jalr	sp,zero # 0 <exit-0x10120>
     412:	10cd                	.insn	2, 0x10cd
     414:	00c8                	.insn	2, 0x00c8
     416:	0000                	.insn	2, 0x0000
     418:	0034                	.insn	2, 0x0034
     41a:	6511                	.insn	2, 0x6511
     41c:	7078                	.insn	2, 0x7078
     41e:	0300                	.insn	2, 0x0300
     420:	0ece                	.insn	2, 0x0ece
     422:	0070                	.insn	2, 0x0070
     424:	0000                	.insn	2, 0x0000
     426:	f708340b          	.insn	4, 0xf708340b
     42a:	0001                	.insn	2, 0x0001
     42c:	cf00                	.insn	2, 0xcf00
     42e:	700e                	.insn	2, 0x700e
     430:	0000                	.insn	2, 0x0000
     432:	0100                	.insn	2, 0x0100
     434:	0803003f 00016c07 	.insn	8, 0x00016c070803003f
     43c:	1200                	.insn	2, 0x1200
     43e:	000001c3          	.insn	4, 0x01c3
     442:	0308                	.insn	2, 0x0308
     444:	00f507c3          	.insn	4, 0x00f507c3
     448:	0000                	.insn	2, 0x0000
     44a:	746c6613          	ori	a2,s8,1862
     44e:	0300                	.insn	2, 0x0300
     450:	0ac5                	.insn	2, 0x0ac5
     452:	008a                	.insn	2, 0x008a
     454:	0000                	.insn	2, 0x0000
     456:	fc14                	.insn	2, 0xfc14
     458:	0001                	.insn	2, 0x0001
     45a:	0300                	.insn	2, 0x0300
     45c:	05d1                	.insn	2, 0x05d1
     45e:	0096                	.insn	2, 0x0096
     460:	0000                	.insn	2, 0x0000
     462:	1500                	.insn	2, 0x1500
     464:	0000032b          	.insn	4, 0x032b
     468:	2101                	.insn	2, 0x2101
     46a:	8a01                	.insn	2, 0x8a01
     46c:	0000                	.insn	2, 0x0000
     46e:	e800                	.insn	2, 0xe800
     470:	0108                	.insn	2, 0x0108
     472:	0000                	.insn	2, 0x0000
     474:	0000                	.insn	2, 0x0000
     476:	7000                	.insn	2, 0x7000
     478:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
     47c:	0000                	.insn	2, 0x0000
     47e:	0100                	.insn	2, 0x0100
     480:	789c                	.insn	2, 0x789c
     482:	0004                	.insn	2, 0x0004
     484:	0900                	.insn	2, 0x0900
     486:	0061                	.insn	2, 0x0061
     488:	8a12                	.insn	2, 0x8a12
     48a:	0000                	.insn	2, 0x0000
     48c:	7e00                	.insn	2, 0x7e00
     48e:	000c                	.insn	2, 0x000c
     490:	6a00                	.insn	2, 0x6a00
     492:	000c                	.insn	2, 0x000c
     494:	0900                	.insn	2, 0x0900
     496:	0062                	.insn	2, 0x0062
     498:	8a1c                	.insn	2, 0x8a1c
     49a:	0000                	.insn	2, 0x0000
     49c:	cb00                	.insn	2, 0xcb00
     49e:	000c                	.insn	2, 0x000c
     4a0:	b500                	.insn	2, 0xb500
     4a2:	000c                	.insn	2, 0x000c
     4a4:	0100                	.insn	2, 0x0100
     4a6:	000000d3          	.insn	4, 0x00d3
     4aa:	00005623          	.insn	4, 0x5623
     4ae:	0800                	.insn	2, 0x0800
     4b0:	000d                	.insn	2, 0x000d
     4b2:	0200                	.insn	2, 0x0200
     4b4:	000d                	.insn	2, 0x000d
     4b6:	1600                	.insn	2, 0x1600
     4b8:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     4bc:	2301                	.insn	2, 0x2301
     4be:	00005603          	lhu	a2,0(zero) # 0 <exit-0x10120>
     4c2:	0000                	.insn	2, 0x0000
     4c4:	4102                	.insn	2, 0x4102
     4c6:	635f 2400 7803      	.insn	6, 0x78032400635f
     4cc:	0004                	.insn	2, 0x0004
     4ce:	2100                	.insn	2, 0x2100
     4d0:	000d                	.insn	2, 0x000d
     4d2:	1700                	.insn	2, 0x1700
     4d4:	000d                	.insn	2, 0x000d
     4d6:	0200                	.insn	2, 0x0200
     4d8:	5f41                	.insn	2, 0x5f41
     4da:	03240073          	.insn	4, 0x03240073
     4de:	0478                	.insn	2, 0x0478
     4e0:	0000                	.insn	2, 0x0000
     4e2:	0d49                	.insn	2, 0x0d49
     4e4:	0000                	.insn	2, 0x0000
     4e6:	00000d3b          	addw	s10,zero,zero
     4ea:	4102                	.insn	2, 0x4102
     4ec:	655f 2400 7803      	.insn	6, 0x78032400655f
     4f2:	0004                	.insn	2, 0x0004
     4f4:	9500                	.insn	2, 0x9500
     4f6:	000d                	.insn	2, 0x000d
     4f8:	7900                	.insn	2, 0x7900
     4fa:	000d                	.insn	2, 0x000d
     4fc:	0200                	.insn	2, 0x0200
     4fe:	5f41                	.insn	2, 0x5f41
     500:	0066                	.insn	2, 0x0066
     502:	0324                	.insn	2, 0x0324
     504:	00c8                	.insn	2, 0x00c8
     506:	0000                	.insn	2, 0x0000
     508:	0e01                	.insn	2, 0x0e01
     50a:	0000                	.insn	2, 0x0000
     50c:	0df5                	.insn	2, 0x0df5
     50e:	0000                	.insn	2, 0x0000
     510:	4202                	.insn	2, 0x4202
     512:	635f 2500 7803      	.insn	6, 0x78032500635f
     518:	0004                	.insn	2, 0x0004
     51a:	4200                	.insn	2, 0x4200
     51c:	000e                	.insn	2, 0x000e
     51e:	3000                	.insn	2, 0x3000
     520:	000e                	.insn	2, 0x000e
     522:	0200                	.insn	2, 0x0200
     524:	5f42                	.insn	2, 0x5f42
     526:	03250073          	.insn	4, 0x03250073
     52a:	0478                	.insn	2, 0x0478
     52c:	0000                	.insn	2, 0x0000
     52e:	0e75                	.insn	2, 0x0e75
     530:	0000                	.insn	2, 0x0000
     532:	00000e6f          	jal	t3,532 <exit-0xfbee>
     536:	4202                	.insn	2, 0x4202
     538:	655f 2500 7803      	.insn	6, 0x78032500655f
     53e:	0004                	.insn	2, 0x0004
     540:	9d00                	.insn	2, 0x9d00
     542:	000e                	.insn	2, 0x000e
     544:	8d00                	.insn	2, 0x8d00
     546:	000e                	.insn	2, 0x000e
     548:	0200                	.insn	2, 0x0200
     54a:	5f42                	.insn	2, 0x5f42
     54c:	0066                	.insn	2, 0x0066
     54e:	0325                	.insn	2, 0x0325
     550:	00c8                	.insn	2, 0x00c8
     552:	0000                	.insn	2, 0x0000
     554:	0eea                	.insn	2, 0x0eea
     556:	0000                	.insn	2, 0x0000
     558:	0ed8                	.insn	2, 0x0ed8
     55a:	0000                	.insn	2, 0x0000
     55c:	5202                	.insn	2, 0x5202
     55e:	635f 2600 7803      	.insn	6, 0x78032600635f
     564:	0004                	.insn	2, 0x0004
     566:	2400                	.insn	2, 0x2400
     568:	1900000f          	.insn	4, 0x1900000f
     56c:	0200000f          	fence	r,unknown
     570:	5f52                	.insn	2, 0x5f52
     572:	03260073          	.insn	4, 0x03260073
     576:	0478                	.insn	2, 0x0478
     578:	0000                	.insn	2, 0x0000
     57a:	0f4e                	.insn	2, 0x0f4e
     57c:	0000                	.insn	2, 0x0000
     57e:	0f3c                	.insn	2, 0x0f3c
     580:	0000                	.insn	2, 0x0000
     582:	5202                	.insn	2, 0x5202
     584:	655f 2600 7803      	.insn	6, 0x78032600655f
     58a:	0004                	.insn	2, 0x0004
     58c:	ad00                	.insn	2, 0xad00
     58e:	8a00000f          	.insn	4, 0x8a00000f
     592:	0200000f          	fence	r,unknown
     596:	5f52                	.insn	2, 0x5f52
     598:	0066                	.insn	2, 0x0066
     59a:	0326                	.insn	2, 0x0326
     59c:	00c8                	.insn	2, 0x00c8
     59e:	0000                	.insn	2, 0x0000
     5a0:	00001013          	slli	zero,zero,0x0
     5a4:	00000ff3          	.insn	4, 0x0ff3
     5a8:	7202                	.insn	2, 0x7202
     5aa:	2700                	.insn	2, 0x2700
     5ac:	8a0a                	.insn	2, 0x8a0a
     5ae:	0000                	.insn	2, 0x0000
     5b0:	5800                	.insn	2, 0x5800
     5b2:	0010                	.insn	2, 0x0010
     5b4:	5000                	.insn	2, 0x5000
     5b6:	0010                	.insn	2, 0x0010
     5b8:	0600                	.insn	2, 0x0600
     5ba:	000000e3          	beqz	zero,dba <exit-0xf366>
     5be:	025f 0000 2004      	.insn	6, 0x20040000025f
     5c4:	0001                	.insn	2, 0x0001
     5c6:	2a00                	.insn	2, 0x2a00
     5c8:	000000cf          	.insn	4, 0x00cf
     5cc:	0600                	.insn	2, 0x0600
     5ce:	00fd                	.insn	2, 0x00fd
     5d0:	0000                	.insn	2, 0x0000
     5d2:	0288                	.insn	2, 0x0288
     5d4:	0000                	.insn	2, 0x0000
     5d6:	8501                	.insn	2, 0x8501
     5d8:	0002                	.insn	2, 0x0002
     5da:	2a00                	.insn	2, 0x2a00
     5dc:	0478                	.insn	2, 0x0478
     5de:	0000                	.insn	2, 0x0000
     5e0:	1076                	.insn	2, 0x1076
     5e2:	0000                	.insn	2, 0x0000
     5e4:	106e                	.insn	2, 0x106e
     5e6:	0000                	.insn	2, 0x0000
     5e8:	f00a                	.insn	2, 0xf00a
     5ea:	010a                	.insn	2, 0x010a
     5ec:	0000                	.insn	2, 0x0000
     5ee:	0000                	.insn	2, 0x0000
     5f0:	7f00                	.insn	2, 0x7f00
     5f2:	0004                	.insn	2, 0x0004
     5f4:	0000                	.insn	2, 0x0000
     5f6:	0606                	.insn	2, 0x0606
     5f8:	0001                	.insn	2, 0x0001
     5fa:	9c00                	.insn	2, 0x9c00
     5fc:	0002                	.insn	2, 0x0002
     5fe:	0400                	.insn	2, 0x0400
     600:	0120                	.insn	2, 0x0120
     602:	0000                	.insn	2, 0x0000
     604:	0000cf2b          	.insn	4, 0xcf2b
     608:	0000                	.insn	2, 0x0000
     60a:	1906                	.insn	2, 0x1906
     60c:	0001                	.insn	2, 0x0001
     60e:	c500                	.insn	2, 0xc500
     610:	0002                	.insn	2, 0x0002
     612:	0100                	.insn	2, 0x0100
     614:	0285                	.insn	2, 0x0285
     616:	0000                	.insn	2, 0x0000
     618:	0004782b          	.insn	4, 0x0004782b
     61c:	8f00                	.insn	2, 0x8f00
     61e:	0010                	.insn	2, 0x0010
     620:	8700                	.insn	2, 0x8700
     622:	0010                	.insn	2, 0x0010
     624:	0a00                	.insn	2, 0x0a00
     626:	0b34                	.insn	2, 0x0b34
     628:	0001                	.insn	2, 0x0001
     62a:	0000                	.insn	2, 0x0000
     62c:	0000                	.insn	2, 0x0000
     62e:	047f 0000 0600 0124 	.insn	10, 0x012406000000047f
     636:	0000 
     638:	0421                	.insn	2, 0x0421
     63a:	0000                	.insn	2, 0x0000
     63c:	2801                	.insn	2, 0x2801
     63e:	0002                	.insn	2, 0x0002
     640:	2c00                	.insn	2, 0x2c00
     642:	00c8                	.insn	2, 0x00c8
     644:	0000                	.insn	2, 0x0000
     646:	10ac                	.insn	2, 0x10ac
     648:	0000                	.insn	2, 0x0000
     64a:	10a0                	.insn	2, 0x10a0
     64c:	0000                	.insn	2, 0x0000
     64e:	4101                	.insn	2, 0x4101
     650:	0002                	.insn	2, 0x0002
     652:	2c00                	.insn	2, 0x2c00
     654:	00c8                	.insn	2, 0x00c8
     656:	0000                	.insn	2, 0x0000
     658:	10ca                	.insn	2, 0x10ca
     65a:	0000                	.insn	2, 0x0000
     65c:	10c2                	.insn	2, 0x10c2
     65e:	0000                	.insn	2, 0x0000
     660:	00012f0b          	.insn	4, 0x00012f0b
     664:	0100                	.insn	2, 0x0100
     666:	0278                	.insn	2, 0x0278
     668:	0000                	.insn	2, 0x0000
     66a:	c82c                	.insn	2, 0xc82c
     66c:	0000                	.insn	2, 0x0000
     66e:	e600                	.insn	2, 0xe600
     670:	0010                	.insn	2, 0x0010
     672:	e100                	.insn	2, 0xe100
     674:	0010                	.insn	2, 0x0010
     676:	0100                	.insn	2, 0x0100
     678:	00000317          	auipc	t1,0x0
     67c:	c82c                	.insn	2, 0xc82c
     67e:	0000                	.insn	2, 0x0000
     680:	0200                	.insn	2, 0x0200
     682:	0011                	.insn	2, 0x0011
     684:	f500                	.insn	2, 0xf500
     686:	0010                	.insn	2, 0x0010
     688:	0100                	.insn	2, 0x0100
     68a:	0334                	.insn	2, 0x0334
     68c:	0000                	.insn	2, 0x0000
     68e:	c82c                	.insn	2, 0xc82c
     690:	0000                	.insn	2, 0x0000
     692:	2f00                	.insn	2, 0x2f00
     694:	0011                	.insn	2, 0x0011
     696:	2700                	.insn	2, 0x2700
     698:	0011                	.insn	2, 0x0011
     69a:	0100                	.insn	2, 0x0100
     69c:	031c                	.insn	2, 0x031c
     69e:	0000                	.insn	2, 0x0000
     6a0:	c82c                	.insn	2, 0xc82c
     6a2:	0000                	.insn	2, 0x0000
     6a4:	4600                	.insn	2, 0x4600
     6a6:	0011                	.insn	2, 0x0011
     6a8:	3e00                	.insn	2, 0x3e00
     6aa:	0011                	.insn	2, 0x0011
     6ac:	0100                	.insn	2, 0x0100
     6ae:	025f 0000 7e2c      	.insn	6, 0x7e2c0000025f
     6b4:	0000                	.insn	2, 0x0000
     6b6:	5c00                	.insn	2, 0x5c00
     6b8:	0011                	.insn	2, 0x0011
     6ba:	5500                	.insn	2, 0x5500
     6bc:	0011                	.insn	2, 0x0011
     6be:	0400                	.insn	2, 0x0400
     6c0:	0326                	.insn	2, 0x0326
     6c2:	0000                	.insn	2, 0x0000
     6c4:	7e2c                	.insn	2, 0x7e2c
     6c6:	0000                	.insn	2, 0x0000
     6c8:	0100                	.insn	2, 0x0100
     6ca:	025a                	.insn	2, 0x025a
     6cc:	0000                	.insn	2, 0x0000
     6ce:	7e2c                	.insn	2, 0x7e2c
     6d0:	0000                	.insn	2, 0x0000
     6d2:	7200                	.insn	2, 0x7200
     6d4:	0011                	.insn	2, 0x0011
     6d6:	6b00                	.insn	2, 0x6b00
     6d8:	0011                	.insn	2, 0x0011
     6da:	0100                	.insn	2, 0x0100
     6dc:	0321                	.insn	2, 0x0321
     6de:	0000                	.insn	2, 0x0000
     6e0:	7e2c                	.insn	2, 0x7e2c
     6e2:	0000                	.insn	2, 0x0000
     6e4:	8400                	.insn	2, 0x8400
     6e6:	0011                	.insn	2, 0x0011
     6e8:	8100                	.insn	2, 0x8100
     6ea:	0011                	.insn	2, 0x0011
     6ec:	0600                	.insn	2, 0x0600
     6ee:	0000013f 0000039f 	.insn	8, 0x039f0000013f
     6f6:	6c05                	.insn	2, 0x6c05
     6f8:	0002                	.insn	2, 0x0002
     6fa:	c800                	.insn	2, 0xc800
     6fc:	0000                	.insn	2, 0x0000
     6fe:	0100                	.insn	2, 0x0100
     700:	055a                	.insn	2, 0x055a
     702:	0272                	.insn	2, 0x0272
     704:	0000                	.insn	2, 0x0000
     706:	00c8                	.insn	2, 0x00c8
     708:	0000                	.insn	2, 0x0000
     70a:	5b01                	.insn	2, 0x5b01
     70c:	0c00                	.insn	2, 0x0c00
     70e:	09d0                	.insn	2, 0x09d0
     710:	0001                	.insn	2, 0x0001
     712:	0000                	.insn	2, 0x0000
     714:	0000                	.insn	2, 0x0000
     716:	0014                	.insn	2, 0x0014
     718:	0000                	.insn	2, 0x0000
     71a:	0000                	.insn	2, 0x0000
     71c:	0000                	.insn	2, 0x0000
     71e:	000003cb          	.insn	4, 0x03cb
     722:	6c05                	.insn	2, 0x6c05
     724:	0002                	.insn	2, 0x0002
     726:	c800                	.insn	2, 0xc800
     728:	0000                	.insn	2, 0x0000
     72a:	0100                	.insn	2, 0x0100
     72c:	055a                	.insn	2, 0x055a
     72e:	0272                	.insn	2, 0x0272
     730:	0000                	.insn	2, 0x0000
     732:	00c8                	.insn	2, 0x00c8
     734:	0000                	.insn	2, 0x0000
     736:	5b01                	.insn	2, 0x5b01
     738:	0c00                	.insn	2, 0x0c00
     73a:	09e4                	.insn	2, 0x09e4
     73c:	0001                	.insn	2, 0x0001
     73e:	0000                	.insn	2, 0x0000
     740:	0000                	.insn	2, 0x0000
     742:	0010                	.insn	2, 0x0010
     744:	0000                	.insn	2, 0x0000
     746:	0000                	.insn	2, 0x0000
     748:	0000                	.insn	2, 0x0000
     74a:	000003f7          	.insn	4, 0x03f7
     74e:	6c05                	.insn	2, 0x6c05
     750:	0002                	.insn	2, 0x0002
     752:	c800                	.insn	2, 0xc800
     754:	0000                	.insn	2, 0x0000
     756:	0100                	.insn	2, 0x0100
     758:	055a                	.insn	2, 0x055a
     75a:	0272                	.insn	2, 0x0272
     75c:	0000                	.insn	2, 0x0000
     75e:	00c8                	.insn	2, 0x00c8
     760:	0000                	.insn	2, 0x0000
     762:	5b01                	.insn	2, 0x5b01
     764:	1700                	.insn	2, 0x1700
     766:	09f4                	.insn	2, 0x09f4
     768:	0001                	.insn	2, 0x0001
     76a:	0000                	.insn	2, 0x0000
     76c:	0000                	.insn	2, 0x0000
     76e:	000c                	.insn	2, 0x000c
     770:	0000                	.insn	2, 0x0000
     772:	0000                	.insn	2, 0x0000
     774:	0000                	.insn	2, 0x0000
     776:	6c05                	.insn	2, 0x6c05
     778:	0002                	.insn	2, 0x0002
     77a:	c800                	.insn	2, 0xc800
     77c:	0000                	.insn	2, 0x0000
     77e:	0100                	.insn	2, 0x0100
     780:	055a                	.insn	2, 0x055a
     782:	0272                	.insn	2, 0x0272
     784:	0000                	.insn	2, 0x0000
     786:	00c8                	.insn	2, 0x00c8
     788:	0000                	.insn	2, 0x0000
     78a:	5b01                	.insn	2, 0x5b01
     78c:	0000                	.insn	2, 0x0000
     78e:	0600                	.insn	2, 0x0600
     790:	0155                	.insn	2, 0x0155
     792:	0000                	.insn	2, 0x0000
     794:	00000467          	jalr	s0,zero # 0 <exit-0x10120>
     798:	b701                	.insn	2, 0xb701
     79a:	0002                	.insn	2, 0x0002
     79c:	2d00                	.insn	2, 0x2d00
     79e:	0056                	.insn	2, 0x0056
     7a0:	0000                	.insn	2, 0x0000
     7a2:	1194                	.insn	2, 0x1194
     7a4:	0000                	.insn	2, 0x0000
     7a6:	118c                	.insn	2, 0x118c
     7a8:	0000                	.insn	2, 0x0000
     7aa:	0418                	.insn	2, 0x0418
     7ac:	02d2                	.insn	2, 0x02d2
     7ae:	0000                	.insn	2, 0x0000
     7b0:	782d                	.insn	2, 0x782d
     7b2:	0004                	.insn	2, 0x0004
     7b4:	0400                	.insn	2, 0x0400
     7b6:	02a0                	.insn	2, 0x02a0
     7b8:	0000                	.insn	2, 0x0000
     7ba:	782d                	.insn	2, 0x782d
     7bc:	0004                	.insn	2, 0x0004
     7be:	0400                	.insn	2, 0x0400
     7c0:	02e9                	.insn	2, 0x02e9
     7c2:	0000                	.insn	2, 0x0000
     7c4:	782d                	.insn	2, 0x782d
     7c6:	0004                	.insn	2, 0x0004
     7c8:	0400                	.insn	2, 0x0400
     7ca:	0300                	.insn	2, 0x0300
     7cc:	0000                	.insn	2, 0x0000
     7ce:	c82d                	.insn	2, 0xc82d
     7d0:	0000                	.insn	2, 0x0000
     7d2:	0000                	.insn	2, 0x0000
     7d4:	0b00                	.insn	2, 0x0b00
     7d6:	014a                	.insn	2, 0x014a
     7d8:	0000                	.insn	2, 0x0000
     7da:	1204                	.insn	2, 0x1204
     7dc:	0000                	.insn	2, 0x0000
     7de:	2d00                	.insn	2, 0x2d00
     7e0:	000000cf          	.insn	4, 0x00cf
     7e4:	0000                	.insn	2, 0x0000
     7e6:	9e050803          	lb	a6,-1568(a0)
     7ea:	0001                	.insn	2, 0x0001
     7ec:	1900                	.insn	2, 0x1900
     7ee:	0201                	.insn	2, 0x0201
     7f0:	0000                	.insn	2, 0x0000
     7f2:	0201                	.insn	2, 0x0201
     7f4:	0000                	.insn	2, 0x0000
     7f6:	6a00                	.insn	2, 0x6a00
     7f8:	05000003          	lb	zero,80(zero) # 50 <exit-0x100d0>
     7fc:	0100                	.insn	2, 0x0100
     7fe:	1208                	.insn	2, 0x1208
     800:	0b000003          	lb	zero,176(zero) # b0 <exit-0x10070>
     804:	0025                	.insn	2, 0x0025
     806:	0000                	.insn	2, 0x0000
     808:	031d                	.insn	2, 0x031d
     80a:	00031647          	.insn	4, 0x00031647
     80e:	00fd                	.insn	2, 0x00fd
     810:	0000                	.insn	2, 0x0000
     812:	0000                	.insn	2, 0x0000
     814:	0000                	.insn	2, 0x0000
     816:	0c58                	.insn	2, 0x0c58
     818:	0001                	.insn	2, 0x0001
     81a:	0000                	.insn	2, 0x0000
     81c:	0000                	.insn	2, 0x0000
     81e:	0458                	.insn	2, 0x0458
     820:	0000                	.insn	2, 0x0000
     822:	0000                	.insn	2, 0x0000
     824:	0000                	.insn	2, 0x0000
     826:	000019bf 98040801 	.insn	8, 0x98040801000019bf
     82e:	0004                	.insn	2, 0x0004
     830:	0100                	.insn	2, 0x0100
     832:	0510                	.insn	2, 0x0510
     834:	014a                	.insn	2, 0x014a
     836:	0000                	.insn	2, 0x0000
     838:	1001                	.insn	2, 0x1001
     83a:	00000007          	.insn	4, 0x0007
     83e:	0100                	.insn	2, 0x0100
     840:	0508                	.insn	2, 0x0508
     842:	000001a3          	sb	zero,3(zero) # 3 <exit-0x1011d>
     846:	0101                	.insn	2, 0x0101
     848:	1406                	.insn	2, 0x1406
     84a:	0001                	.insn	2, 0x0001
     84c:	0c00                	.insn	2, 0x0c00
     84e:	0504                	.insn	2, 0x0504
     850:	6e69                	.insn	2, 0x6e69
     852:	0074                	.insn	2, 0x0074
     854:	0101                	.insn	2, 0x0101
     856:	1208                	.insn	2, 0x1208
     858:	0001                	.insn	2, 0x0001
     85a:	0100                	.insn	2, 0x0100
     85c:	0704                	.insn	2, 0x0704
     85e:	0176                	.insn	2, 0x0176
     860:	0000                	.insn	2, 0x0000
     862:	0801                	.insn	2, 0x0801
     864:	00017107          	.insn	4, 0x00017107
     868:	0d00                	.insn	2, 0x0d00
     86a:	00ed                	.insn	2, 0x00ed
     86c:	0000                	.insn	2, 0x0000
     86e:	4402                	.insn	2, 0x4402
     870:	0000330f          	.insn	4, 0x330f
     874:	0e00                	.insn	2, 0x0e00
     876:	0208                	.insn	2, 0x0208
     878:	03c6                	.insn	2, 0x03c6
     87a:	00b0                	.insn	2, 0x00b0
     87c:	0000                	.insn	2, 0x0000
     87e:	6708                	.insn	2, 0x6708
     880:	0001                	.insn	2, 0x0001
     882:	cd00                	.insn	2, 0xcd00
     884:	b010                	.insn	2, 0xb010
     886:	0000                	.insn	2, 0x0000
     888:	3400                	.insn	2, 0x3400
     88a:	0f00                	.insn	2, 0x0f00
     88c:	7865                	.insn	2, 0x7865
     88e:	0070                	.insn	2, 0x0070
     890:	ce02                	.insn	2, 0xce02
     892:	640e                	.insn	2, 0x640e
     894:	0000                	.insn	2, 0x0000
     896:	0b00                	.insn	2, 0x0b00
     898:	0834                	.insn	2, 0x0834
     89a:	000001f7          	.insn	4, 0x01f7
     89e:	00640ecf          	.insn	4, 0x00640ecf
     8a2:	0000                	.insn	2, 0x0000
     8a4:	3f01                	.insn	2, 0x3f01
     8a6:	0100                	.insn	2, 0x0100
     8a8:	0708                	.insn	2, 0x0708
     8aa:	016c                	.insn	2, 0x016c
     8ac:	0000                	.insn	2, 0x0000
     8ae:	c310                	.insn	2, 0xc310
     8b0:	0001                	.insn	2, 0x0001
     8b2:	0800                	.insn	2, 0x0800
     8b4:	c302                	.insn	2, 0xc302
     8b6:	0000dd07          	.insn	4, 0xdd07
     8ba:	1100                	.insn	2, 0x1100
     8bc:	6c66                	.insn	2, 0x6c66
     8be:	0074                	.insn	2, 0x0074
     8c0:	c502                	.insn	2, 0xc502
     8c2:	720a                	.insn	2, 0x720a
     8c4:	0000                	.insn	2, 0x0000
     8c6:	1200                	.insn	2, 0x1200
     8c8:	01fc                	.insn	2, 0x01fc
     8ca:	0000                	.insn	2, 0x0000
     8cc:	d102                	.insn	2, 0xd102
     8ce:	7e05                	.insn	2, 0x7e05
     8d0:	0000                	.insn	2, 0x0000
     8d2:	0000                	.insn	2, 0x0000
     8d4:	00033913          	sltiu	s2,t1,0
     8d8:	0100                	.insn	2, 0x0100
     8da:	0121                	.insn	2, 0x0121
     8dc:	0072                	.insn	2, 0x0072
     8de:	0000                	.insn	2, 0x0000
     8e0:	0c58                	.insn	2, 0x0c58
     8e2:	0001                	.insn	2, 0x0001
     8e4:	0000                	.insn	2, 0x0000
     8e6:	0000                	.insn	2, 0x0000
     8e8:	0458                	.insn	2, 0x0458
     8ea:	0000                	.insn	2, 0x0000
     8ec:	0000                	.insn	2, 0x0000
     8ee:	0000                	.insn	2, 0x0000
     8f0:	9c01                	.insn	2, 0x9c01
     8f2:	035d                	.insn	2, 0x035d
     8f4:	0000                	.insn	2, 0x0000
     8f6:	6109                	.insn	2, 0x6109
     8f8:	1200                	.insn	2, 0x1200
     8fa:	0072                	.insn	2, 0x0072
     8fc:	0000                	.insn	2, 0x0000
     8fe:	11b5                	.insn	2, 0x11b5
     900:	0000                	.insn	2, 0x0000
     902:	11b1                	.insn	2, 0x11b1
     904:	0000                	.insn	2, 0x0000
     906:	6209                	.insn	2, 0x6209
     908:	1c00                	.insn	2, 0x1c00
     90a:	0072                	.insn	2, 0x0072
     90c:	0000                	.insn	2, 0x0000
     90e:	11ca                	.insn	2, 0x11ca
     910:	0000                	.insn	2, 0x0000
     912:	11c6                	.insn	2, 0x11c6
     914:	0000                	.insn	2, 0x0000
     916:	d306                	.insn	2, 0xd306
     918:	0000                	.insn	2, 0x0000
     91a:	2300                	.insn	2, 0x2300
     91c:	0056                	.insn	2, 0x0056
     91e:	0000                	.insn	2, 0x0000
     920:	1200                	.insn	2, 0x1200
     922:	0000                	.insn	2, 0x0000
     924:	000011db          	.insn	4, 0x11db
     928:	2314                	.insn	2, 0x2314
     92a:	0002                	.insn	2, 0x0002
     92c:	0100                	.insn	2, 0x0100
     92e:	00560323          	sb	t0,6(a2)
     932:	0000                	.insn	2, 0x0000
     934:	0700                	.insn	2, 0x0700
     936:	5f41                	.insn	2, 0x5f41
     938:	5d240063          	beq	s0,s2,ef8 <exit-0xf228>
     93c:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
     940:	5f41                	.insn	2, 0x5f41
     942:	03240073          	.insn	4, 0x03240073
     946:	035d                	.insn	2, 0x035d
     948:	0000                	.insn	2, 0x0000
     94a:	1281                	.insn	2, 0x1281
     94c:	0000                	.insn	2, 0x0000
     94e:	1250                	.insn	2, 0x1250
     950:	0000                	.insn	2, 0x0000
     952:	4102                	.insn	2, 0x4102
     954:	655f 2400 5d03      	.insn	6, 0x5d032400655f
     95a:	1b000003          	lb	zero,432(zero) # 1b0 <exit-0xff70>
     95e:	dc000013          	li	zero,-576
     962:	0012                	.insn	2, 0x0012
     964:	0200                	.insn	2, 0x0200
     966:	5f41                	.insn	2, 0x5f41
     968:	0066                	.insn	2, 0x0066
     96a:	0324                	.insn	2, 0x0324
     96c:	00b0                	.insn	2, 0x00b0
     96e:	0000                	.insn	2, 0x0000
     970:	13de                	.insn	2, 0x13de
     972:	0000                	.insn	2, 0x0000
     974:	1391                	.insn	2, 0x1391
     976:	0000                	.insn	2, 0x0000
     978:	635f4207          	.insn	4, 0x635f4207
     97c:	2500                	.insn	2, 0x2500
     97e:	035d                	.insn	2, 0x035d
     980:	0000                	.insn	2, 0x0000
     982:	4202                	.insn	2, 0x4202
     984:	735f 2500 5d03      	.insn	6, 0x5d032500735f
     98a:	a9000003          	lb	zero,-1392(zero) # fffffffffffffa90 <__BSS_END__+0xfffffffffffeaaa0>
     98e:	0014                	.insn	2, 0x0014
     990:	7000                	.insn	2, 0x7000
     992:	0014                	.insn	2, 0x0014
     994:	0200                	.insn	2, 0x0200
     996:	5f42                	.insn	2, 0x5f42
     998:	0065                	.insn	2, 0x0065
     99a:	0325                	.insn	2, 0x0325
     99c:	035d                	.insn	2, 0x035d
     99e:	0000                	.insn	2, 0x0000
     9a0:	1545                	.insn	2, 0x1545
     9a2:	0000                	.insn	2, 0x0000
     9a4:	1518                	.insn	2, 0x1518
     9a6:	0000                	.insn	2, 0x0000
     9a8:	4202                	.insn	2, 0x4202
     9aa:	665f 2500 b003      	.insn	6, 0xb0032500665f
     9b0:	0000                	.insn	2, 0x0000
     9b2:	de00                	.insn	2, 0xde00
     9b4:	0015                	.insn	2, 0x0015
     9b6:	9f00                	.insn	2, 0x9f00
     9b8:	0015                	.insn	2, 0x0015
     9ba:	0700                	.insn	2, 0x0700
     9bc:	5f52                	.insn	2, 0x5f52
     9be:	5d260063          	beq	a2,s2,f7e <exit-0xf1a2>
     9c2:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
     9c6:	5f52                	.insn	2, 0x5f52
     9c8:	03260073          	.insn	4, 0x03260073
     9cc:	035d                	.insn	2, 0x035d
     9ce:	0000                	.insn	2, 0x0000
     9d0:	1694                	.insn	2, 0x1694
     9d2:	0000                	.insn	2, 0x0000
     9d4:	0000165b          	.insn	4, 0x165b
     9d8:	5202                	.insn	2, 0x5202
     9da:	655f 2600 5d03      	.insn	6, 0x5d032600655f
     9e0:	57000003          	lb	zero,1392(zero) # 570 <exit-0xfbb0>
     9e4:	fd000017          	auipc	zero,0xfd000
     9e8:	0016                	.insn	2, 0x0016
     9ea:	0200                	.insn	2, 0x0200
     9ec:	5f52                	.insn	2, 0x5f52
     9ee:	0066                	.insn	2, 0x0066
     9f0:	0326                	.insn	2, 0x0326
     9f2:	00b0                	.insn	2, 0x00b0
     9f4:	0000                	.insn	2, 0x0000
     9f6:	1874                	.insn	2, 0x1874
     9f8:	0000                	.insn	2, 0x0000
     9fa:	180c                	.insn	2, 0x180c
     9fc:	0000                	.insn	2, 0x0000
     9fe:	7202                	.insn	2, 0x7202
     a00:	2700                	.insn	2, 0x2700
     a02:	720a                	.insn	2, 0x720a
     a04:	0000                	.insn	2, 0x0000
     a06:	b600                	.insn	2, 0xb600
     a08:	0019                	.insn	2, 0x0019
     a0a:	ae00                	.insn	2, 0xae00
     a0c:	0019                	.insn	2, 0x0019
     a0e:	0500                	.insn	2, 0x0500
     a10:	016c                	.insn	2, 0x016c
     a12:	0000                	.insn	2, 0x0000
     a14:	022c                	.insn	2, 0x022c
     a16:	0000                	.insn	2, 0x0000
     a18:	00012003          	lw	zero,0(sp)
     a1c:	2a00                	.insn	2, 0x2a00
     a1e:	000000b7          	lui	ra,0x0
     a22:	0500                	.insn	2, 0x0500
     a24:	017f 0000 0240 0000 	.insn	10, 0x2003000002400000017f
     a2c:	2003 
     a2e:	0001                	.insn	2, 0x0001
     a30:	2b00                	.insn	2, 0x2b00
     a32:	000000b7          	lui	ra,0x0
     a36:	0500                	.insn	2, 0x0500
     a38:	0000018f          	.insn	4, 0x018f
     a3c:	0288                	.insn	2, 0x0288
     a3e:	0000                	.insn	2, 0x0000
     a40:	ed04                	.insn	2, 0xed04
     a42:	0001                	.insn	2, 0x0001
     a44:	2800                	.insn	2, 0x2800
     a46:	010d                	.insn	2, 0x010d
     a48:	0000                	.insn	2, 0x0000
     a4a:	0000                	.insn	2, 0x0000
     a4c:	0400                	.insn	2, 0x0400
     a4e:	01f2                	.insn	2, 0x01f2
     a50:	0000                	.insn	2, 0x0000
     a52:	0d9c                	.insn	2, 0x0d9c
     a54:	0001                	.insn	2, 0x0001
     a56:	0000                	.insn	2, 0x0000
     a58:	0000                	.insn	2, 0x0000
     a5a:	8304                	.insn	2, 0x8304
     a5c:	0001                	.insn	2, 0x0001
     a5e:	d000                	.insn	2, 0xd000
     a60:	010c                	.insn	2, 0x010c
     a62:	0000                	.insn	2, 0x0000
     a64:	0000                	.insn	2, 0x0000
     a66:	0a00                	.insn	2, 0x0a00
     a68:	0109                	.insn	2, 0x0109
     a6a:	0000                	.insn	2, 0x0000
     a6c:	ac06                	.insn	2, 0xac06
     a6e:	0001                	.insn	2, 0x0001
     a70:	2c00                	.insn	2, 0x2c00
     a72:	0056                	.insn	2, 0x0056
     a74:	0000                	.insn	2, 0x0000
     a76:	19e9                	.insn	2, 0x19e9
     a78:	0000                	.insn	2, 0x0000
     a7a:	19cc                	.insn	2, 0x19cc
     a7c:	0000                	.insn	2, 0x0000
     a7e:	0500                	.insn	2, 0x0500
     a80:	01f2                	.insn	2, 0x01f2
     a82:	0000                	.insn	2, 0x0000
     a84:	0302                	.insn	2, 0x0302
     a86:	0000                	.insn	2, 0x0000
     a88:	5304                	.insn	2, 0x5304
     a8a:	0001                	.insn	2, 0x0001
     a8c:	d400                	.insn	2, 0xd400
     a8e:	010e                	.insn	2, 0x010e
     a90:	0000                	.insn	2, 0x0000
     a92:	0000                	.insn	2, 0x0000
     a94:	0400                	.insn	2, 0x0400
     a96:	0158                	.insn	2, 0x0158
     a98:	0000                	.insn	2, 0x0000
     a9a:	0f68                	.insn	2, 0x0f68
     a9c:	0001                	.insn	2, 0x0001
     a9e:	0000                	.insn	2, 0x0000
     aa0:	0000                	.insn	2, 0x0000
     aa2:	5d04                	.insn	2, 0x5d04
     aa4:	0001                	.insn	2, 0x0001
     aa6:	b800                	.insn	2, 0xb800
     aa8:	010e                	.insn	2, 0x010e
     aaa:	0000                	.insn	2, 0x0000
     aac:	0000                	.insn	2, 0x0000
     aae:	0400                	.insn	2, 0x0400
     ab0:	0162                	.insn	2, 0x0162
     ab2:	0000                	.insn	2, 0x0000
     ab4:	101c                	.insn	2, 0x101c
     ab6:	0001                	.insn	2, 0x0001
     ab8:	0000                	.insn	2, 0x0000
     aba:	0000                	.insn	2, 0x0000
     abc:	cf0a                	.insn	2, 0xcf0a
     abe:	0001                	.insn	2, 0x0001
     ac0:	0600                	.insn	2, 0x0600
     ac2:	01ac                	.insn	2, 0x01ac
     ac4:	0000                	.insn	2, 0x0000
     ac6:	562c                	.insn	2, 0x562c
     ac8:	0000                	.insn	2, 0x0000
     aca:	4c00                	.insn	2, 0x4c00
     acc:	001a                	.insn	2, 0x001a
     ace:	3000                	.insn	2, 0x3000
     ad0:	001a                	.insn	2, 0x001a
     ad2:	1500                	.insn	2, 0x1500
     ad4:	0220                	.insn	2, 0x0220
     ad6:	0000                	.insn	2, 0x0000
     ad8:	8806                	.insn	2, 0x8806
     ada:	0001                	.insn	2, 0x0001
     adc:	2c00                	.insn	2, 0x2c00
     ade:	0056                	.insn	2, 0x0056
     ae0:	0000                	.insn	2, 0x0000
     ae2:	1a90                	.insn	2, 0x1a90
     ae4:	0000                	.insn	2, 0x0000
     ae6:	1a84                	.insn	2, 0x1a84
     ae8:	0000                	.insn	2, 0x0000
     aea:	2416                	.insn	2, 0x2416
     aec:	0110                	.insn	2, 0x0110
     aee:	0000                	.insn	2, 0x0000
     af0:	0000                	.insn	2, 0x0000
     af2:	6400                	.insn	2, 0x6400
     af4:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
     af8:	0500                	.insn	2, 0x0500
     afa:	01b5                	.insn	2, 0x01b5
     afc:	0000                	.insn	2, 0x0000
     afe:	0340                	.insn	2, 0x0340
     b00:	0000                	.insn	2, 0x0000
     b02:	00020a03          	lb	s4,0(tp) # 0 <exit-0x10120>
     b06:	2d00                	.insn	2, 0x2d00
     b08:	0056                	.insn	2, 0x0056
     b0a:	0000                	.insn	2, 0x0000
     b0c:	00d80317          	auipc	t1,0xd80
     b10:	0000                	.insn	2, 0x0000
     b12:	5d2d                	.insn	2, 0x5d2d
     b14:	03000003          	lb	zero,48(zero) # 30 <exit-0x100f0>
     b18:	0135                	.insn	2, 0x0135
     b1a:	0000                	.insn	2, 0x0000
     b1c:	5d2d                	.insn	2, 0x5d2d
     b1e:	03000003          	lb	zero,48(zero) # 30 <exit-0x100f0>
     b22:	01d8                	.insn	2, 0x01d8
     b24:	0000                	.insn	2, 0x0000
     b26:	5d2d                	.insn	2, 0x5d2d
     b28:	03000003          	lb	zero,48(zero) # 30 <exit-0x100f0>
     b2c:	00f4                	.insn	2, 0x00f4
     b2e:	0000                	.insn	2, 0x0000
     b30:	b02d                	.insn	2, 0xb02d
     b32:	0000                	.insn	2, 0x0000
     b34:	0000                	.insn	2, 0x0000
     b36:	1800                	.insn	2, 0x1800
     b38:	0e04                	.insn	2, 0x0e04
     b3a:	0001                	.insn	2, 0x0001
     b3c:	0000                	.insn	2, 0x0000
     b3e:	0000                	.insn	2, 0x0000
     b40:	0018                	.insn	2, 0x0018
     b42:	0000                	.insn	2, 0x0000
     b44:	0000                	.insn	2, 0x0000
     b46:	0000                	.insn	2, 0x0000
     b48:	00001203          	lh	tp,0(zero) # 0 <exit-0x10120>
     b4c:	2d00                	.insn	2, 0x2d00
     b4e:	000000b7          	lui	ra,0x0
     b52:	0000                	.insn	2, 0x0000
     b54:	0801                	.insn	2, 0x0801
     b56:	9e05                	.insn	2, 0x9e05
     b58:	0001                	.insn	2, 0x0001
     b5a:	1900                	.insn	2, 0x1900
     b5c:	0201                	.insn	2, 0x0201
     b5e:	0000                	.insn	2, 0x0000
     b60:	0201                	.insn	2, 0x0201
     b62:	0000                	.insn	2, 0x0000
     b64:	3000                	.insn	2, 0x3000
     b66:	0002                	.insn	2, 0x0002
     b68:	0500                	.insn	2, 0x0500
     b6a:	0100                	.insn	2, 0x0100
     b6c:	9d08                	.insn	2, 0x9d08
     b6e:	0004                	.insn	2, 0x0004
     b70:	0900                	.insn	2, 0x0900
     b72:	0025                	.insn	2, 0x0025
     b74:	0000                	.insn	2, 0x0000
     b76:	031d                	.insn	2, 0x031d
     b78:	00031647          	.insn	4, 0x00031647
     b7c:	0000012b          	.insn	4, 0x012b
     b80:	0000                	.insn	2, 0x0000
     b82:	0000                	.insn	2, 0x0000
     b84:	10b0                	.insn	2, 0x10b0
     b86:	0001                	.insn	2, 0x0001
     b88:	0000                	.insn	2, 0x0000
     b8a:	0000                	.insn	2, 0x0000
     b8c:	0080                	.insn	2, 0x0080
     b8e:	0000                	.insn	2, 0x0000
     b90:	0000                	.insn	2, 0x0000
     b92:	0000                	.insn	2, 0x0000
     b94:	2909                	.insn	2, 0x2909
     b96:	0000                	.insn	2, 0x0000
     b98:	0801                	.insn	2, 0x0801
     b9a:	9804                	.insn	2, 0x9804
     b9c:	0004                	.insn	2, 0x0004
     b9e:	0100                	.insn	2, 0x0100
     ba0:	0510                	.insn	2, 0x0510
     ba2:	014a                	.insn	2, 0x014a
     ba4:	0000                	.insn	2, 0x0000
     ba6:	1001                	.insn	2, 0x1001
     ba8:	00000007          	.insn	4, 0x0007
     bac:	0100                	.insn	2, 0x0100
     bae:	0508                	.insn	2, 0x0508
     bb0:	000001a3          	sb	zero,3(zero) # 3 <exit-0x1011d>
     bb4:	0101                	.insn	2, 0x0101
     bb6:	1406                	.insn	2, 0x1406
     bb8:	0001                	.insn	2, 0x0001
     bba:	0400                	.insn	2, 0x0400
     bbc:	027e                	.insn	2, 0x027e
     bbe:	0000                	.insn	2, 0x0000
     bc0:	0144                	.insn	2, 0x0144
     bc2:	620d                	.insn	2, 0x620d
     bc4:	0000                	.insn	2, 0x0000
     bc6:	0a00                	.insn	2, 0x0a00
     bc8:	0504                	.insn	2, 0x0504
     bca:	6e69                	.insn	2, 0x6e69
     bcc:	0074                	.insn	2, 0x0074
     bce:	0101                	.insn	2, 0x0101
     bd0:	1208                	.insn	2, 0x1208
     bd2:	0001                	.insn	2, 0x0001
     bd4:	0400                	.insn	2, 0x0400
     bd6:	027d                	.insn	2, 0x027d
     bd8:	0000                	.insn	2, 0x0000
     bda:	7c160147          	.insn	4, 0x7c160147
     bde:	0000                	.insn	2, 0x0000
     be0:	0100                	.insn	2, 0x0100
     be2:	0704                	.insn	2, 0x0704
     be4:	0176                	.insn	2, 0x0176
     be6:	0000                	.insn	2, 0x0000
     be8:	0801                	.insn	2, 0x0801
     bea:	00017107          	.insn	4, 0x00017107
     bee:	0b00                	.insn	2, 0x0b00
     bf0:	00ed                	.insn	2, 0x00ed
     bf2:	0000                	.insn	2, 0x0000
     bf4:	330f4403          	lbu	s0,816(t5)
     bf8:	0000                	.insn	2, 0x0000
     bfa:	0c00                	.insn	2, 0x0c00
     bfc:	0308                	.insn	2, 0x0308
     bfe:	03c6                	.insn	2, 0x03c6
     c00:	00c8                	.insn	2, 0x00c8
     c02:	0000                	.insn	2, 0x0000
     c04:	6705                	.insn	2, 0x6705
     c06:	0001                	.insn	2, 0x0001
     c08:	cd00                	.insn	2, 0xcd00
     c0a:	c810                	.insn	2, 0xc810
     c0c:	0000                	.insn	2, 0x0000
     c0e:	3400                	.insn	2, 0x3400
     c10:	0d00                	.insn	2, 0x0d00
     c12:	7865                	.insn	2, 0x7865
     c14:	0070                	.insn	2, 0x0070
     c16:	7c0ece03          	lbu	t3,1984(t4)
     c1a:	0000                	.insn	2, 0x0000
     c1c:	0b00                	.insn	2, 0x0b00
     c1e:	0534                	.insn	2, 0x0534
     c20:	000001f7          	.insn	4, 0x01f7
     c24:	007c0ecf          	.insn	4, 0x007c0ecf
     c28:	0000                	.insn	2, 0x0000
     c2a:	3f01                	.insn	2, 0x3f01
     c2c:	0100                	.insn	2, 0x0100
     c2e:	0708                	.insn	2, 0x0708
     c30:	016c                	.insn	2, 0x016c
     c32:	0000                	.insn	2, 0x0000
     c34:	c30e                	.insn	2, 0xc30e
     c36:	0001                	.insn	2, 0x0001
     c38:	0800                	.insn	2, 0x0800
     c3a:	f507c303          	lbu	t1,-176(a5)
     c3e:	0000                	.insn	2, 0x0000
     c40:	0f00                	.insn	2, 0x0f00
     c42:	6c66                	.insn	2, 0x6c66
     c44:	0074                	.insn	2, 0x0074
     c46:	8a0ac503          	lbu	a0,-1888(s5)
     c4a:	0000                	.insn	2, 0x0000
     c4c:	1000                	.insn	2, 0x1000
     c4e:	01fc                	.insn	2, 0x01fc
     c50:	0000                	.insn	2, 0x0000
     c52:	9605d103          	lhu	sp,-1696(a1)
     c56:	0000                	.insn	2, 0x0000
     c58:	0000                	.insn	2, 0x0000
     c5a:	6f11                	.insn	2, 0x6f11
     c5c:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
     c60:	0122                	.insn	2, 0x0122
     c62:	008a                	.insn	2, 0x008a
     c64:	0000                	.insn	2, 0x0000
     c66:	10b0                	.insn	2, 0x10b0
     c68:	0001                	.insn	2, 0x0001
     c6a:	0000                	.insn	2, 0x0000
     c6c:	0000                	.insn	2, 0x0000
     c6e:	0080                	.insn	2, 0x0080
     c70:	0000                	.insn	2, 0x0000
     c72:	0000                	.insn	2, 0x0000
     c74:	0000                	.insn	2, 0x0000
     c76:	9c01                	.insn	2, 0x9c01
     c78:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     c7c:	6912                	.insn	2, 0x6912
     c7e:	0100                	.insn	2, 0x0100
     c80:	1522                	.insn	2, 0x1522
     c82:	0056                	.insn	2, 0x0056
     c84:	0000                	.insn	2, 0x0000
     c86:	1ab8                	.insn	2, 0x1ab8
     c88:	0000                	.insn	2, 0x0000
     c8a:	1ab2                	.insn	2, 0x1ab2
     c8c:	0000                	.insn	2, 0x0000
     c8e:	635f4113          	xori	sp,t5,1589
     c92:	0100                	.insn	2, 0x0100
     c94:	0324                	.insn	2, 0x0324
     c96:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     c9a:	735f4103          	lbu	sp,1845(t5)
     c9e:	2400                	.insn	2, 0x2400
     ca0:	00022303          	lw	t1,0(tp) # 0 <exit-0x10120>
     ca4:	ce00                	.insn	2, 0xce00
     ca6:	001a                	.insn	2, 0x001a
     ca8:	cc00                	.insn	2, 0xcc00
     caa:	001a                	.insn	2, 0x001a
     cac:	0300                	.insn	2, 0x0300
     cae:	5f41                	.insn	2, 0x5f41
     cb0:	0065                	.insn	2, 0x0065
     cb2:	0324                	.insn	2, 0x0324
     cb4:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     cb8:	00001adb          	.insn	4, 0x1adb
     cbc:	1ad9                	.insn	2, 0x1ad9
     cbe:	0000                	.insn	2, 0x0000
     cc0:	665f4103          	lbu	sp,1637(t5)
     cc4:	2400                	.insn	2, 0x2400
     cc6:	0000c803          	lbu	a6,0(ra) # 0 <exit-0x10120>
     cca:	e300                	.insn	2, 0xe300
     ccc:	001a                	.insn	2, 0x001a
     cce:	e100                	.insn	2, 0xe100
     cd0:	001a                	.insn	2, 0x001a
     cd2:	0300                	.insn	2, 0x0300
     cd4:	0061                	.insn	2, 0x0061
     cd6:	0a25                	.insn	2, 0x0a25
     cd8:	008a                	.insn	2, 0x008a
     cda:	0000                	.insn	2, 0x0000
     cdc:	1aed                	.insn	2, 0x1aed
     cde:	0000                	.insn	2, 0x0000
     ce0:	1ae9                	.insn	2, 0x1ae9
     ce2:	0000                	.insn	2, 0x0000
     ce4:	3c06                	.insn	2, 0x3c06
     ce6:	0002                	.insn	2, 0x0002
     ce8:	1200                	.insn	2, 0x1200
     cea:	0002                	.insn	2, 0x0002
     cec:	1400                	.insn	2, 0x1400
     cee:	0342                	.insn	2, 0x0342
     cf0:	0000                	.insn	2, 0x0000
     cf2:	2701                	.insn	2, 0x2701
     cf4:	10c41503          	lh	a0,268(s0)
     cf8:	0001                	.insn	2, 0x0001
     cfa:	0000                	.insn	2, 0x0000
     cfc:	0000                	.insn	2, 0x0000
     cfe:	0030                	.insn	2, 0x0030
     d00:	0000                	.insn	2, 0x0000
     d02:	0000                	.insn	2, 0x0000
     d04:	0000                	.insn	2, 0x0000
     d06:	00034f07          	.insn	4, 0x00034f07
     d0a:	7000                	.insn	2, 0x7000
     d0c:	0000                	.insn	2, 0x0000
     d0e:	0500                	.insn	2, 0x0500
     d10:	ff00001b          	addiw	zero,zero,-16
     d14:	001a                	.insn	2, 0x001a
     d16:	0600                	.insn	2, 0x0600
     d18:	00000247          	.insn	4, 0x0247
     d1c:	01da                	.insn	2, 0x01da
     d1e:	0000                	.insn	2, 0x0000
     d20:	00035f07          	.insn	4, 0x00035f07
     d24:	6200                	.insn	2, 0x6200
     d26:	0000                	.insn	2, 0x0000
     d28:	1e00                	.insn	2, 0x1e00
     d2a:	1c00001b          	addiw	zero,zero,448
     d2e:	1600001b          	addiw	zero,zero,352
     d32:	10e4                	.insn	2, 0x10e4
     d34:	0001                	.insn	2, 0x0001
     d36:	0000                	.insn	2, 0x0000
     d38:	0000                	.insn	2, 0x0000
     d3a:	022a                	.insn	2, 0x022a
     d3c:	0000                	.insn	2, 0x0000
     d3e:	0800                	.insn	2, 0x0800
     d40:	0a02                	.insn	2, 0x0a02
     d42:	0002                	.insn	2, 0x0002
     d44:	2700                	.insn	2, 0x2700
     d46:	0062                	.insn	2, 0x0062
     d48:	0000                	.insn	2, 0x0000
     d4a:	0208                	.insn	2, 0x0208
     d4c:	00d8                	.insn	2, 0x00d8
     d4e:	0000                	.insn	2, 0x0000
     d50:	00022327          	.insn	4, 0x00022327
     d54:	0200                	.insn	2, 0x0200
     d56:	0135                	.insn	2, 0x0135
     d58:	0000                	.insn	2, 0x0000
     d5a:	00022327          	.insn	4, 0x00022327
     d5e:	0200                	.insn	2, 0x0200
     d60:	01d8                	.insn	2, 0x01d8
     d62:	0000                	.insn	2, 0x0000
     d64:	00022327          	.insn	4, 0x00022327
     d68:	0200                	.insn	2, 0x0200
     d6a:	00f4                	.insn	2, 0x00f4
     d6c:	0000                	.insn	2, 0x0000
     d6e:	0000c827          	.insn	4, 0xc827
     d72:	0000                	.insn	2, 0x0000
     d74:	0000                	.insn	2, 0x0000
     d76:	1700                	.insn	2, 0x1700
     d78:	024e                	.insn	2, 0x024e
     d7a:	0000                	.insn	2, 0x0000
     d7c:	1202                	.insn	2, 0x1202
     d7e:	0000                	.insn	2, 0x0000
     d80:	2800                	.insn	2, 0x2800
     d82:	000000cf          	.insn	4, 0x00cf
     d86:	0000                	.insn	2, 0x0000
     d88:	0801                	.insn	2, 0x0801
     d8a:	9e05                	.insn	2, 0x9e05
     d8c:	0001                	.insn	2, 0x0001
     d8e:	1800                	.insn	2, 0x1800
     d90:	0201                	.insn	2, 0x0201
     d92:	0000                	.insn	2, 0x0000
     d94:	0201                	.insn	2, 0x0201
     d96:	0000                	.insn	2, 0x0000
     d98:	9100                	.insn	2, 0x9100
     d9a:	0002                	.insn	2, 0x0002
     d9c:	0500                	.insn	2, 0x0500
     d9e:	0100                	.insn	2, 0x0100
     da0:	0f08                	.insn	2, 0x0f08
     da2:	0006                	.insn	2, 0x0006
     da4:	0d00                	.insn	2, 0x0d00
     da6:	0025                	.insn	2, 0x0025
     da8:	0000                	.insn	2, 0x0000
     daa:	031d                	.insn	2, 0x031d
     dac:	00031647          	.insn	4, 0x00031647
     db0:	0165                	.insn	2, 0x0165
     db2:	0000                	.insn	2, 0x0000
     db4:	0000                	.insn	2, 0x0000
     db6:	0000                	.insn	2, 0x0000
     db8:	1130                	.insn	2, 0x1130
     dba:	0001                	.insn	2, 0x0001
     dbc:	0000                	.insn	2, 0x0000
     dbe:	0000                	.insn	2, 0x0000
     dc0:	00a4                	.insn	2, 0x00a4
     dc2:	0000                	.insn	2, 0x0000
     dc4:	0000                	.insn	2, 0x0000
     dc6:	0000                	.insn	2, 0x0000
     dc8:	2b06                	.insn	2, 0x2b06
     dca:	0000                	.insn	2, 0x0000
     dcc:	0401                	.insn	2, 0x0401
     dce:	c104                	.insn	2, 0xc104
     dd0:	0004                	.insn	2, 0x0004
     dd2:	0100                	.insn	2, 0x0100
     dd4:	0408                	.insn	2, 0x0408
     dd6:	0498                	.insn	2, 0x0498
     dd8:	0000                	.insn	2, 0x0000
     dda:	1001                	.insn	2, 0x1001
     ddc:	4a05                	.insn	2, 0x4a05
     dde:	0001                	.insn	2, 0x0001
     de0:	0100                	.insn	2, 0x0100
     de2:	0710                	.insn	2, 0x0710
     de4:	0000                	.insn	2, 0x0000
     de6:	0000                	.insn	2, 0x0000
     de8:	0801                	.insn	2, 0x0801
     dea:	a305                	.insn	2, 0xa305
     dec:	0001                	.insn	2, 0x0001
     dee:	0100                	.insn	2, 0x0100
     df0:	0601                	.insn	2, 0x0601
     df2:	0114                	.insn	2, 0x0114
     df4:	0000                	.insn	2, 0x0000
     df6:	040e                	.insn	2, 0x040e
     df8:	6905                	.insn	2, 0x6905
     dfa:	746e                	.insn	2, 0x746e
     dfc:	0100                	.insn	2, 0x0100
     dfe:	0801                	.insn	2, 0x0801
     e00:	0112                	.insn	2, 0x0112
     e02:	0000                	.insn	2, 0x0000
     e04:	0401                	.insn	2, 0x0401
     e06:	00017607          	.insn	4, 0x00017607
     e0a:	0100                	.insn	2, 0x0100
     e0c:	0708                	.insn	2, 0x0708
     e0e:	0171                	.insn	2, 0x0171
     e10:	0000                	.insn	2, 0x0000
     e12:	9404                	.insn	2, 0x9404
     e14:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
     e18:	3341                	.insn	2, 0x3341
     e1a:	0000                	.insn	2, 0x0000
     e1c:	0500                	.insn	2, 0x0500
     e1e:	0204                	.insn	2, 0x0204
     e20:	b646                	.insn	2, 0xb646
     e22:	0000                	.insn	2, 0x0000
     e24:	0300                	.insn	2, 0x0300
     e26:	00000167          	jalr	sp,zero # 0 <exit-0x10120>
     e2a:	4d02                	.insn	2, 0x4d02
     e2c:	6b0e                	.insn	2, 0x6b0e
     e2e:	0000                	.insn	2, 0x0000
     e30:	1700                	.insn	2, 0x1700
     e32:	0600                	.insn	2, 0x0600
     e34:	7865                	.insn	2, 0x7865
     e36:	0070                	.insn	2, 0x0070
     e38:	4e02                	.insn	2, 0x4e02
     e3a:	0000006b          	.insn	4, 0x006b
     e3e:	1708                	.insn	2, 0x1708
     e40:	0001f703          	.insn	4, 0x0001f703
     e44:	0200                	.insn	2, 0x0200
     e46:	006b0e4f          	.insn	4, 0x006b0e4f
     e4a:	0000                	.insn	2, 0x0000
     e4c:	1f01                	.insn	2, 0x1f01
     e4e:	0700                	.insn	2, 0x0700
     e50:	0388                	.insn	2, 0x0388
     e52:	0000                	.insn	2, 0x0000
     e54:	0204                	.insn	2, 0x0204
     e56:	0000d943          	.insn	4, 0xd943
     e5a:	0800                	.insn	2, 0x0800
     e5c:	6c66                	.insn	2, 0x6c66
     e5e:	0074                	.insn	2, 0x0074
     e60:	4502                	.insn	2, 0x4502
     e62:	0079                	.insn	2, 0x0079
     e64:	0000                	.insn	2, 0x0000
     e66:	fc09                	.insn	2, 0xfc09
     e68:	0001                	.insn	2, 0x0001
     e6a:	0200                	.insn	2, 0x0200
     e6c:	8451                	.insn	2, 0x8451
     e6e:	0000                	.insn	2, 0x0000
     e70:	0000                	.insn	2, 0x0000
     e72:	ed04                	.insn	2, 0xed04
     e74:	0000                	.insn	2, 0x0000
     e76:	0300                	.insn	2, 0x0300
     e78:	3a44                	.insn	2, 0x3a44
     e7a:	0000                	.insn	2, 0x0000
     e7c:	0500                	.insn	2, 0x0500
     e7e:	0308                	.insn	2, 0x0308
     e80:	16c6                	.insn	2, 0x16c6
     e82:	0001                	.insn	2, 0x0001
     e84:	0300                	.insn	2, 0x0300
     e86:	00000167          	jalr	sp,zero # 0 <exit-0x10120>
     e8a:	1610cd03          	lbu	s10,353(ra)
     e8e:	0001                	.insn	2, 0x0001
     e90:	3400                	.insn	2, 0x3400
     e92:	0600                	.insn	2, 0x0600
     e94:	7865                	.insn	2, 0x7865
     e96:	0070                	.insn	2, 0x0070
     e98:	006bce03          	lbu	t3,6(s7)
     e9c:	0000                	.insn	2, 0x0000
     e9e:	f703340b          	.insn	4, 0xf703340b
     ea2:	0001                	.insn	2, 0x0001
     ea4:	0300                	.insn	2, 0x0300
     ea6:	006b0ecf          	.insn	4, 0x006b0ecf
     eaa:	0000                	.insn	2, 0x0000
     eac:	3f01                	.insn	2, 0x3f01
     eae:	0100                	.insn	2, 0x0100
     eb0:	0708                	.insn	2, 0x0708
     eb2:	016c                	.insn	2, 0x016c
     eb4:	0000                	.insn	2, 0x0000
     eb6:	0001c307          	.insn	4, 0x0001c307
     eba:	0800                	.insn	2, 0x0800
     ebc:	0140c303          	lbu	t1,20(ra)
     ec0:	0000                	.insn	2, 0x0000
     ec2:	6608                	.insn	2, 0x6608
     ec4:	746c                	.insn	2, 0x746c
     ec6:	0300                	.insn	2, 0x0300
     ec8:	d9c5                	.insn	2, 0xd9c5
     eca:	0000                	.insn	2, 0x0000
     ecc:	0900                	.insn	2, 0x0900
     ece:	01fc                	.insn	2, 0x01fc
     ed0:	0000                	.insn	2, 0x0000
     ed2:	00e4d103          	lhu	sp,14(s1)
     ed6:	0000                	.insn	2, 0x0000
     ed8:	0f00                	.insn	2, 0x0f00
     eda:	0000039b          	sext.w	t2,zero
     ede:	2301                	.insn	2, 0x2301
     ee0:	d901                	.insn	2, 0xd901
     ee2:	0000                	.insn	2, 0x0000
     ee4:	3000                	.insn	2, 0x3000
     ee6:	0111                	.insn	2, 0x0111
     ee8:	0000                	.insn	2, 0x0000
     eea:	0000                	.insn	2, 0x0000
     eec:	a400                	.insn	2, 0xa400
     eee:	0000                	.insn	2, 0x0000
     ef0:	0000                	.insn	2, 0x0000
     ef2:	0000                	.insn	2, 0x0000
     ef4:	0100                	.insn	2, 0x0100
     ef6:	849c                	.insn	2, 0x849c
     ef8:	0002                	.insn	2, 0x0002
     efa:	1000                	.insn	2, 0x1000
     efc:	0061                	.insn	2, 0x0061
     efe:	2301                	.insn	2, 0x2301
     f00:	00007917          	auipc	s2,0x7
     f04:	3a00                	.insn	2, 0x3a00
     f06:	3000001b          	addiw	zero,zero,768
     f0a:	0a00001b          	addiw	zero,zero,160
     f0e:	000000d3          	.insn	4, 0x00d3
     f12:	5d25                	.insn	2, 0x5d25
     f14:	0000                	.insn	2, 0x0000
     f16:	6700                	.insn	2, 0x6700
     f18:	6100001b          	addiw	zero,zero,1552
     f1c:	1100001b          	addiw	zero,zero,272
     f20:	00000223          	sb	zero,4(zero) # 4 <exit-0x1011c>
     f24:	2501                	.insn	2, 0x2501
     f26:	00005d03          	lhu	s10,0(zero) # 0 <exit-0x10120>
     f2a:	0000                	.insn	2, 0x0000
     f2c:	635f410b          	.insn	4, 0x635f410b
     f30:	2600                	.insn	2, 0x2600
     f32:	0284                	.insn	2, 0x0284
     f34:	0000                	.insn	2, 0x0000
     f36:	4102                	.insn	2, 0x4102
     f38:	735f 2600 8403      	.insn	6, 0x84032600735f
     f3e:	0002                	.insn	2, 0x0002
     f40:	8100                	.insn	2, 0x8100
     f42:	7d00001b          	addiw	zero,zero,2000
     f46:	0200001b          	addiw	zero,zero,32
     f4a:	5f41                	.insn	2, 0x5f41
     f4c:	0065                	.insn	2, 0x0065
     f4e:	0326                	.insn	2, 0x0326
     f50:	0284                	.insn	2, 0x0284
     f52:	0000                	.insn	2, 0x0000
     f54:	1ba1                	.insn	2, 0x1ba1
     f56:	0000                	.insn	2, 0x0000
     f58:	00001b97          	auipc	s7,0x1
     f5c:	4102                	.insn	2, 0x4102
     f5e:	665f 2600 1603      	.insn	6, 0x16032600665f
     f64:	0001                	.insn	2, 0x0001
     f66:	d300                	.insn	2, 0xd300
     f68:	c900001b          	addiw	zero,zero,-880
     f6c:	0b00001b          	addiw	zero,zero,176
     f70:	5f52                	.insn	2, 0x5f52
     f72:	84270063          	beq	a4,sp,ffffffffffffffb2 <__BSS_END__+0xfffffffffffeafc2>
     f76:	0002                	.insn	2, 0x0002
     f78:	0200                	.insn	2, 0x0200
     f7a:	5f52                	.insn	2, 0x5f52
     f7c:	03270073          	.insn	4, 0x03270073
     f80:	0284                	.insn	2, 0x0284
     f82:	0000                	.insn	2, 0x0000
     f84:	1c06                	.insn	2, 0x1c06
     f86:	0000                	.insn	2, 0x0000
     f88:	1c02                	.insn	2, 0x1c02
     f8a:	0000                	.insn	2, 0x0000
     f8c:	5202                	.insn	2, 0x5202
     f8e:	655f 2700 8403      	.insn	6, 0x84032700655f
     f94:	0002                	.insn	2, 0x0002
     f96:	2200                	.insn	2, 0x2200
     f98:	001c                	.insn	2, 0x001c
     f9a:	1c00                	.insn	2, 0x1c00
     f9c:	001c                	.insn	2, 0x001c
     f9e:	0200                	.insn	2, 0x0200
     fa0:	5f52                	.insn	2, 0x5f52
     fa2:	0066                	.insn	2, 0x0066
     fa4:	01160327          	.insn	4, 0x01160327
     fa8:	0000                	.insn	2, 0x0000
     faa:	00001c3f 00001c39 	.insn	8, 0x1c3900001c3f
     fb2:	7202                	.insn	2, 0x7202
     fb4:	2800                	.insn	2, 0x2800
     fb6:	d90a                	.insn	2, 0xd90a
     fb8:	0000                	.insn	2, 0x0000
     fba:	6000                	.insn	2, 0x6000
     fbc:	001c                	.insn	2, 0x001c
     fbe:	5c00                	.insn	2, 0x5c00
     fc0:	001c                	.insn	2, 0x001c
     fc2:	1200                	.insn	2, 0x1200
     fc4:	0264                	.insn	2, 0x0264
     fc6:	0000                	.insn	2, 0x0000
     fc8:	023e                	.insn	2, 0x023e
     fca:	0000                	.insn	2, 0x0000
     fcc:	200c                	.insn	2, 0x200c
     fce:	0001                	.insn	2, 0x0001
     fd0:	2b00                	.insn	2, 0x2b00
     fd2:	00b6                	.insn	2, 0x00b6
     fd4:	0000                	.insn	2, 0x0000
     fd6:	1300                	.insn	2, 0x1300
     fd8:	119c                	.insn	2, 0x119c
     fda:	0001                	.insn	2, 0x0001
     fdc:	0000                	.insn	2, 0x0000
     fde:	0000                	.insn	2, 0x0000
     fe0:	001c                	.insn	2, 0x001c
     fe2:	0000                	.insn	2, 0x0000
     fe4:	0000                	.insn	2, 0x0000
     fe6:	0000                	.insn	2, 0x0000
     fe8:	00000273          	.insn	4, 0x0273
     fec:	7b0a                	.insn	2, 0x7b0a
     fee:	2f000003          	lb	zero,752(zero) # 2f0 <exit-0xfe30>
     ff2:	005d                	.insn	2, 0x005d
     ff4:	0000                	.insn	2, 0x0000
     ff6:	1c74                	.insn	2, 0x1c74
     ff8:	0000                	.insn	2, 0x0000
     ffa:	1c72                	.insn	2, 0x1c72
     ffc:	0000                	.insn	2, 0x0000
     ffe:	a414                	.insn	2, 0xa414
    1000:	0111                	.insn	2, 0x0111
    1002:	0000                	.insn	2, 0x0000
    1004:	0000                	.insn	2, 0x0000
    1006:	8b00                	.insn	2, 0x8b00
    1008:	0002                	.insn	2, 0x0002
    100a:	0000                	.insn	2, 0x0000
    100c:	6e15                	.insn	2, 0x6e15
    100e:	0002                	.insn	2, 0x0002
    1010:	0c00                	.insn	2, 0x0c00
    1012:	0012                	.insn	2, 0x0012
    1014:	0000                	.insn	2, 0x0000
    1016:	1d31                	.insn	2, 0x1d31
    1018:	0001                	.insn	2, 0x0001
    101a:	0000                	.insn	2, 0x0000
    101c:	0100                	.insn	2, 0x0100
    101e:	0508                	.insn	2, 0x0508
    1020:	019e                	.insn	2, 0x019e
    1022:	0000                	.insn	2, 0x0000
    1024:	0116                	.insn	2, 0x0116
    1026:	0002                	.insn	2, 0x0002
    1028:	0100                	.insn	2, 0x0100
    102a:	0002                	.insn	2, 0x0002
    102c:	0000                	.insn	2, 0x0000
    102e:	02c9                	.insn	2, 0x02c9
    1030:	0000                	.insn	2, 0x0000
    1032:	0005                	.insn	2, 0x0005
    1034:	0801                	.insn	2, 0x0801
    1036:	0778                	.insn	2, 0x0778
    1038:	0000                	.insn	2, 0x0000
    103a:	0000250f          	.insn	4, 0x250f
    103e:	1d00                	.insn	2, 0x1d00
    1040:	03164703          	lbu	a4,49(a2)
    1044:	9800                	.insn	2, 0x9800
    1046:	0001                	.insn	2, 0x0001
    1048:	0000                	.insn	2, 0x0000
    104a:	0000                	.insn	2, 0x0000
    104c:	d400                	.insn	2, 0xd400
    104e:	0111                	.insn	2, 0x0111
    1050:	0000                	.insn	2, 0x0000
    1052:	0000                	.insn	2, 0x0000
    1054:	f400                	.insn	2, 0xf400
    1056:	0000                	.insn	2, 0x0000
    1058:	0000                	.insn	2, 0x0000
    105a:	0000                	.insn	2, 0x0000
    105c:	6100                	.insn	2, 0x6100
    105e:	002e                	.insn	2, 0x002e
    1060:	0100                	.insn	2, 0x0100
    1062:	0408                	.insn	2, 0x0408
    1064:	0498                	.insn	2, 0x0498
    1066:	0000                	.insn	2, 0x0000
    1068:	1001                	.insn	2, 0x1001
    106a:	4a05                	.insn	2, 0x4a05
    106c:	0001                	.insn	2, 0x0001
    106e:	0100                	.insn	2, 0x0100
    1070:	0710                	.insn	2, 0x0710
    1072:	0000                	.insn	2, 0x0000
    1074:	0000                	.insn	2, 0x0000
    1076:	0801                	.insn	2, 0x0801
    1078:	a305                	.insn	2, 0xa305
    107a:	0001                	.insn	2, 0x0001
    107c:	0100                	.insn	2, 0x0100
    107e:	0601                	.insn	2, 0x0601
    1080:	0114                	.insn	2, 0x0114
    1082:	0000                	.insn	2, 0x0000
    1084:	0410                	.insn	2, 0x0410
    1086:	6905                	.insn	2, 0x6905
    1088:	746e                	.insn	2, 0x746e
    108a:	0100                	.insn	2, 0x0100
    108c:	0801                	.insn	2, 0x0801
    108e:	0112                	.insn	2, 0x0112
    1090:	0000                	.insn	2, 0x0000
    1092:	0401                	.insn	2, 0x0401
    1094:	00017607          	.insn	4, 0x00017607
    1098:	0100                	.insn	2, 0x0100
    109a:	0708                	.insn	2, 0x0708
    109c:	0171                	.insn	2, 0x0171
    109e:	0000                	.insn	2, 0x0000
    10a0:	9406                	.insn	2, 0x9406
    10a2:	02000003          	lb	zero,32(zero) # 20 <exit-0x10100>
    10a6:	7d41                	.insn	2, 0x7d41
    10a8:	0000                	.insn	2, 0x0000
    10aa:	0100                	.insn	2, 0x0100
    10ac:	0404                	.insn	2, 0x0404
    10ae:	04c1                	.insn	2, 0x04c1
    10b0:	0000                	.insn	2, 0x0000
    10b2:	46020407          	.insn	4, 0x46020407
    10b6:	00b6                	.insn	2, 0x00b6
    10b8:	0000                	.insn	2, 0x0000
    10ba:	6704                	.insn	2, 0x6704
    10bc:	0001                	.insn	2, 0x0001
    10be:	0200                	.insn	2, 0x0200
    10c0:	0e4d                	.insn	2, 0x0e4d
    10c2:	0064                	.insn	2, 0x0064
    10c4:	0000                	.insn	2, 0x0000
    10c6:	65080017          	auipc	zero,0x65080
    10ca:	7078                	.insn	2, 0x7078
    10cc:	0200                	.insn	2, 0x0200
    10ce:	644e                	.insn	2, 0x644e
    10d0:	0000                	.insn	2, 0x0000
    10d2:	0800                	.insn	2, 0x0800
    10d4:	01f70417          	auipc	s0,0x1f70
    10d8:	0000                	.insn	2, 0x0000
    10da:	4f02                	.insn	2, 0x4f02
    10dc:	640e                	.insn	2, 0x640e
    10de:	0000                	.insn	2, 0x0000
    10e0:	0100                	.insn	2, 0x0100
    10e2:	001f 8809 0003      	.insn	6, 0x00038809001f
    10e8:	0400                	.insn	2, 0x0400
    10ea:	4302                	.insn	2, 0x4302
    10ec:	00d9                	.insn	2, 0x00d9
    10ee:	0000                	.insn	2, 0x0000
    10f0:	660a                	.insn	2, 0x660a
    10f2:	746c                	.insn	2, 0x746c
    10f4:	0200                	.insn	2, 0x0200
    10f6:	7245                	.insn	2, 0x7245
    10f8:	0000                	.insn	2, 0x0000
    10fa:	0b00                	.insn	2, 0x0b00
    10fc:	01fc                	.insn	2, 0x01fc
    10fe:	0000                	.insn	2, 0x0000
    1100:	5102                	.insn	2, 0x5102
    1102:	0084                	.insn	2, 0x0084
    1104:	0000                	.insn	2, 0x0000
    1106:	0600                	.insn	2, 0x0600
    1108:	00ed                	.insn	2, 0x00ed
    110a:	0000                	.insn	2, 0x0000
    110c:	00334403          	lbu	s0,3(t1) # d80b0f <__BSS_END__+0xd6bb1f>
    1110:	0000                	.insn	2, 0x0000
    1112:	c6030807          	.insn	4, 0xc6030807
    1116:	0116                	.insn	2, 0x0116
    1118:	0000                	.insn	2, 0x0000
    111a:	6704                	.insn	2, 0x6704
    111c:	0001                	.insn	2, 0x0001
    111e:	0300                	.insn	2, 0x0300
    1120:	10cd                	.insn	2, 0x10cd
    1122:	0116                	.insn	2, 0x0116
    1124:	0000                	.insn	2, 0x0000
    1126:	0034                	.insn	2, 0x0034
    1128:	6508                	.insn	2, 0x6508
    112a:	7078                	.insn	2, 0x7078
    112c:	0300                	.insn	2, 0x0300
    112e:	64ce                	.insn	2, 0x64ce
    1130:	0000                	.insn	2, 0x0000
    1132:	0b00                	.insn	2, 0x0b00
    1134:	0434                	.insn	2, 0x0434
    1136:	000001f7          	.insn	4, 0x01f7
    113a:	640ecf03          	lbu	t5,1600(t4)
    113e:	0000                	.insn	2, 0x0000
    1140:	0100                	.insn	2, 0x0100
    1142:	0801003f 00016c07 	.insn	8, 0x00016c070801003f
    114a:	0900                	.insn	2, 0x0900
    114c:	000001c3          	.insn	4, 0x01c3
    1150:	0308                	.insn	2, 0x0308
    1152:	000140c3          	.insn	4, 0x000140c3
    1156:	0a00                	.insn	2, 0x0a00
    1158:	6c66                	.insn	2, 0x6c66
    115a:	0074                	.insn	2, 0x0074
    115c:	00d9c503          	lbu	a0,13(s3)
    1160:	0000                	.insn	2, 0x0000
    1162:	0001fc0b          	.insn	4, 0x0001fc0b
    1166:	0300                	.insn	2, 0x0300
    1168:	e4d1                	.insn	2, 0xe4d1
    116a:	0000                	.insn	2, 0x0000
    116c:	0000                	.insn	2, 0x0000
    116e:	a911                	.insn	2, 0xa911
    1170:	01000003          	lb	zero,16(zero) # 10 <exit-0x10110>
    1174:	0122                	.insn	2, 0x0122
    1176:	0072                	.insn	2, 0x0072
    1178:	0000                	.insn	2, 0x0000
    117a:	11d4                	.insn	2, 0x11d4
    117c:	0001                	.insn	2, 0x0001
    117e:	0000                	.insn	2, 0x0000
    1180:	0000                	.insn	2, 0x0000
    1182:	00f4                	.insn	2, 0x00f4
    1184:	0000                	.insn	2, 0x0000
    1186:	0000                	.insn	2, 0x0000
    1188:	0000                	.insn	2, 0x0000
    118a:	9c01                	.insn	2, 0x9c01
    118c:	02c5                	.insn	2, 0x02c5
    118e:	0000                	.insn	2, 0x0000
    1190:	6112                	.insn	2, 0x6112
    1192:	0100                	.insn	2, 0x0100
    1194:	1622                	.insn	2, 0x1622
    1196:	00d9                	.insn	2, 0x00d9
    1198:	0000                	.insn	2, 0x0000
    119a:	00001c8b          	.insn	4, 0x1c8b
    119e:	00001c87          	.insn	4, 0x1c87
    11a2:	d302                	.insn	2, 0xd302
    11a4:	0000                	.insn	2, 0x0000
    11a6:	2400                	.insn	2, 0x2400
    11a8:	0056                	.insn	2, 0x0056
    11aa:	0000                	.insn	2, 0x0000
    11ac:	1ca8                	.insn	2, 0x1ca8
    11ae:	0000                	.insn	2, 0x0000
    11b0:	1c9c                	.insn	2, 0x1c9c
    11b2:	0000                	.insn	2, 0x0000
    11b4:	00022313          	slti	t1,tp,0
    11b8:	0100                	.insn	2, 0x0100
    11ba:	0324                	.insn	2, 0x0324
    11bc:	0056                	.insn	2, 0x0056
    11be:	0000                	.insn	2, 0x0000
    11c0:	0500                	.insn	2, 0x0500
    11c2:	5f41                	.insn	2, 0x5f41
    11c4:	03250063          	beq	a0,s2,11e4 <exit-0xef3c>
    11c8:	02c5                	.insn	2, 0x02c5
    11ca:	0000                	.insn	2, 0x0000
    11cc:	735f4103          	lbu	sp,1845(t5)
    11d0:	2500                	.insn	2, 0x2500
    11d2:	02c5                	.insn	2, 0x02c5
    11d4:	0000                	.insn	2, 0x0000
    11d6:	00001cd7          	.insn	4, 0x1cd7
    11da:	1ccd                	.insn	2, 0x1ccd
    11dc:	0000                	.insn	2, 0x0000
    11de:	655f4103          	lbu	sp,1621(t5)
    11e2:	2500                	.insn	2, 0x2500
    11e4:	02c5                	.insn	2, 0x02c5
    11e6:	0000                	.insn	2, 0x0000
    11e8:	1d15                	.insn	2, 0x1d15
    11ea:	0000                	.insn	2, 0x0000
    11ec:	00001d03          	lh	s10,0(zero) # 0 <exit-0x10120>
    11f0:	665f4103          	lbu	sp,1637(t5)
    11f4:	2500                	.insn	2, 0x2500
    11f6:	0116                	.insn	2, 0x0116
    11f8:	0000                	.insn	2, 0x0000
    11fa:	00001d63          	bnez	zero,1214 <exit-0xef0c>
    11fe:	00001d4f          	.insn	4, 0x1d4f
    1202:	5205                	.insn	2, 0x5205
    1204:	635f 2600 c503      	.insn	6, 0xc5032600635f
    120a:	0002                	.insn	2, 0x0002
    120c:	0300                	.insn	2, 0x0300
    120e:	5f52                	.insn	2, 0x5f52
    1210:	c5260073          	.insn	4, 0xc5260073
    1214:	0002                	.insn	2, 0x0002
    1216:	a200                	.insn	2, 0xa200
    1218:	001d                	.insn	2, 0x001d
    121a:	9800                	.insn	2, 0x9800
    121c:	001d                	.insn	2, 0x001d
    121e:	0300                	.insn	2, 0x0300
    1220:	5f52                	.insn	2, 0x5f52
    1222:	0065                	.insn	2, 0x0065
    1224:	c526                	.insn	2, 0xc526
    1226:	0002                	.insn	2, 0x0002
    1228:	e100                	.insn	2, 0xe100
    122a:	001d                	.insn	2, 0x001d
    122c:	ce00                	.insn	2, 0xce00
    122e:	001d                	.insn	2, 0x001d
    1230:	0300                	.insn	2, 0x0300
    1232:	5f52                	.insn	2, 0x5f52
    1234:	0066                	.insn	2, 0x0066
    1236:	1626                	.insn	2, 0x1626
    1238:	0001                	.insn	2, 0x0001
    123a:	2400                	.insn	2, 0x2400
    123c:	001e                	.insn	2, 0x001e
    123e:	1400                	.insn	2, 0x1400
    1240:	001e                	.insn	2, 0x001e
    1242:	0500                	.insn	2, 0x0500
    1244:	0072                	.insn	2, 0x0072
    1246:	00720a27          	.insn	4, 0x00720a27
    124a:	0000                	.insn	2, 0x0000
    124c:	840c                	.insn	2, 0x840c
    124e:	0002                	.insn	2, 0x0002
    1250:	3200                	.insn	2, 0x3200
    1252:	0002                	.insn	2, 0x0002
    1254:	0d00                	.insn	2, 0x0d00
    1256:	0120                	.insn	2, 0x0120
    1258:	0000                	.insn	2, 0x0000
    125a:	1d2a                	.insn	2, 0x1d2a
    125c:	0001                	.insn	2, 0x0001
    125e:	0000                	.insn	2, 0x0000
    1260:	8e0c                	.insn	2, 0x8e0c
    1262:	0002                	.insn	2, 0x0002
    1264:	a000                	.insn	2, 0xa000
    1266:	0002                	.insn	2, 0x0002
    1268:	0200                	.insn	2, 0x0200
    126a:	020a                	.insn	2, 0x020a
    126c:	0000                	.insn	2, 0x0000
    126e:	5630                	.insn	2, 0x5630
    1270:	0000                	.insn	2, 0x0000
    1272:	5900                	.insn	2, 0x5900
    1274:	001e                	.insn	2, 0x001e
    1276:	5700                	.insn	2, 0x5700
    1278:	001e                	.insn	2, 0x001e
    127a:	0e00                	.insn	2, 0x0e00
    127c:	1238                	.insn	2, 0x1238
    127e:	0001                	.insn	2, 0x0001
    1280:	0000                	.insn	2, 0x0000
    1282:	0000                	.insn	2, 0x0000
    1284:	0004                	.insn	2, 0x0004
    1286:	0000                	.insn	2, 0x0000
    1288:	0000                	.insn	2, 0x0000
    128a:	0000                	.insn	2, 0x0000
    128c:	d80d                	.insn	2, 0xd80d
    128e:	0000                	.insn	2, 0x0000
    1290:	3000                	.insn	2, 0x3000
    1292:	02c5                	.insn	2, 0x02c5
    1294:	0000                	.insn	2, 0x0000
    1296:	3502                	.insn	2, 0x3502
    1298:	0001                	.insn	2, 0x0001
    129a:	3000                	.insn	2, 0x3000
    129c:	02c5                	.insn	2, 0x02c5
    129e:	0000                	.insn	2, 0x0000
    12a0:	1e62                	.insn	2, 0x1e62
    12a2:	0000                	.insn	2, 0x0000
    12a4:	1e60                	.insn	2, 0x1e60
    12a6:	0000                	.insn	2, 0x0000
    12a8:	d802                	.insn	2, 0xd802
    12aa:	0001                	.insn	2, 0x0001
    12ac:	3000                	.insn	2, 0x3000
    12ae:	02c5                	.insn	2, 0x02c5
    12b0:	0000                	.insn	2, 0x0000
    12b2:	00001e6f          	jal	t3,22b2 <exit-0xde6e>
    12b6:	1e6d                	.insn	2, 0x1e6d
    12b8:	0000                	.insn	2, 0x0000
    12ba:	f402                	.insn	2, 0xf402
    12bc:	0000                	.insn	2, 0x0000
    12be:	3000                	.insn	2, 0x3000
    12c0:	0116                	.insn	2, 0x0116
    12c2:	0000                	.insn	2, 0x0000
    12c4:	1e78                	.insn	2, 0x1e78
    12c6:	0000                	.insn	2, 0x0000
    12c8:	1e76                	.insn	2, 0x1e76
    12ca:	0000                	.insn	2, 0x0000
    12cc:	0000                	.insn	2, 0x0000
    12ce:	880e                	.insn	2, 0x880e
    12d0:	0112                	.insn	2, 0x0112
    12d2:	0000                	.insn	2, 0x0000
    12d4:	0000                	.insn	2, 0x0000
    12d6:	0c00                	.insn	2, 0x0c00
    12d8:	0000                	.insn	2, 0x0000
    12da:	0000                	.insn	2, 0x0000
    12dc:	0000                	.insn	2, 0x0000
    12de:	0200                	.insn	2, 0x0200
    12e0:	0012                	.insn	2, 0x0012
    12e2:	0000                	.insn	2, 0x0000
    12e4:	b630                	.insn	2, 0xb630
    12e6:	0000                	.insn	2, 0x0000
    12e8:	8600                	.insn	2, 0x8600
    12ea:	001e                	.insn	2, 0x001e
    12ec:	8400                	.insn	2, 0x8400
    12ee:	001e                	.insn	2, 0x001e
    12f0:	0000                	.insn	2, 0x0000
    12f2:	0100                	.insn	2, 0x0100
    12f4:	0508                	.insn	2, 0x0508
    12f6:	019e                	.insn	2, 0x019e
    12f8:	0000                	.insn	2, 0x0000
    12fa:	3500                	.insn	2, 0x3500
    12fc:	0000                	.insn	2, 0x0000
    12fe:	0500                	.insn	2, 0x0500
    1300:	0100                	.insn	2, 0x0100
    1302:	c208                	.insn	2, 0xc208
    1304:	0008                	.insn	2, 0x0008
    1306:	0100                	.insn	2, 0x0100
    1308:	32e6                	.insn	2, 0x32e6
    130a:	0000                	.insn	2, 0x0000
    130c:	12c8                	.insn	2, 0x12c8
    130e:	0001                	.insn	2, 0x0001
    1310:	0000                	.insn	2, 0x0000
    1312:	0000                	.insn	2, 0x0000
    1314:	b624                	.insn	2, 0xb624
    1316:	e9000003          	lb	zero,-368(zero) # fffffffffffffe90 <__BSS_END__+0xfffffffffffeaea0>
    131a:	52000003          	lb	zero,1312(zero) # 520 <exit-0xfc00>
    131e:	0004                	.insn	2, 0x0004
    1320:	0100                	.insn	2, 0x0100
    1322:	0280                	.insn	2, 0x0280
    1324:	045e                	.insn	2, 0x045e
    1326:	0000                	.insn	2, 0x0000
    1328:	0112c837          	lui	a6,0x112c
    132c:	0000                	.insn	2, 0x0000
    132e:	0000                	.insn	2, 0x0000
    1330:	2400                	.insn	2, 0x2400
    1332:	01820003          	lb	zero,24(tp) # 18 <exit-0x10108>
    1336:	0000                	.insn	2, 0x0000
    1338:	0005                	.insn	2, 0x0005
    133a:	0801                	.insn	2, 0x0801
    133c:	08ea                	.insn	2, 0x08ea
    133e:	0000                	.insn	2, 0x0000
    1340:	2504                	.insn	2, 0x2504
    1342:	0000                	.insn	2, 0x0000
    1344:	1d00                	.insn	2, 0x1d00
    1346:	03164703          	lbu	a4,49(a2)
    134a:	fd00                	.insn	2, 0xfd00
    134c:	0001                	.insn	2, 0x0001
    134e:	0000                	.insn	2, 0x0000
    1350:	0000                	.insn	2, 0x0000
    1352:	ec00                	.insn	2, 0xec00
    1354:	0112                	.insn	2, 0x0112
    1356:	0000                	.insn	2, 0x0000
    1358:	0000                	.insn	2, 0x0000
    135a:	4000                	.insn	2, 0x4000
    135c:	0000                	.insn	2, 0x0000
    135e:	0000                	.insn	2, 0x0000
    1360:	0000                	.insn	2, 0x0000
    1362:	6400                	.insn	2, 0x6400
    1364:	01000033          	add	zero,zero,a6
    1368:	0508                	.insn	2, 0x0508
    136a:	000001a3          	sb	zero,3(zero) # 3 <exit-0x1011d>
    136e:	0801                	.insn	2, 0x0801
    1370:	00017107          	.insn	4, 0x00017107
    1374:	0500                	.insn	2, 0x0500
    1376:	0504                	.insn	2, 0x0504
    1378:	6e69                	.insn	2, 0x6e69
    137a:	0074                	.insn	2, 0x0074
    137c:	0801                	.insn	2, 0x0801
    137e:	9e05                	.insn	2, 0x9e05
    1380:	0001                	.insn	2, 0x0001
    1382:	0100                	.insn	2, 0x0100
    1384:	0410                	.insn	2, 0x0410
    1386:	00000493          	li	s1,0
    138a:	0101                	.insn	2, 0x0101
    138c:	1406                	.insn	2, 0x1406
    138e:	0001                	.insn	2, 0x0001
    1390:	0100                	.insn	2, 0x0100
    1392:	0801                	.insn	2, 0x0801
    1394:	0112                	.insn	2, 0x0112
    1396:	0000                	.insn	2, 0x0000
    1398:	0201                	.insn	2, 0x0201
    139a:	cc05                	.insn	2, 0xcc05
    139c:	0004                	.insn	2, 0x0004
    139e:	0100                	.insn	2, 0x0100
    13a0:	0702                	.insn	2, 0x0702
    13a2:	0478                	.insn	2, 0x0478
    13a4:	0000                	.insn	2, 0x0000
    13a6:	0401                	.insn	2, 0x0401
    13a8:	00017607          	.insn	4, 0x00017607
    13ac:	0100                	.insn	2, 0x0100
    13ae:	0801                	.insn	2, 0x0801
    13b0:	0000011b          	sext.w	sp,zero
    13b4:	0801                	.insn	2, 0x0801
    13b6:	00016c07          	.insn	4, 0x00016c07
    13ba:	0100                	.insn	2, 0x0100
    13bc:	0201                	.insn	2, 0x0201
    13be:	04e5                	.insn	2, 0x04e5
    13c0:	0000                	.insn	2, 0x0000
    13c2:	9f02                	.insn	2, 0x9f02
    13c4:	0004                	.insn	2, 0x0004
    13c6:	7e00                	.insn	2, 0x7e00
    13c8:	5d16                	.insn	2, 0x5d16
    13ca:	0000                	.insn	2, 0x0000
    13cc:	0300                	.insn	2, 0x0300
    13ce:	008e                	.insn	2, 0x008e
    13d0:	0000                	.insn	2, 0x0000
    13d2:	b202                	.insn	2, 0xb202
    13d4:	0004                	.insn	2, 0x0004
    13d6:	8700                	.insn	2, 0x8700
    13d8:	0000330f          	.insn	4, 0x330f
    13dc:	0200                	.insn	2, 0x0200
    13de:	04b1                	.insn	2, 0x04b1
    13e0:	0000                	.insn	2, 0x0000
    13e2:	1688                	.insn	2, 0x1688
    13e4:	003a                	.insn	2, 0x003a
    13e6:	0000                	.insn	2, 0x0000
    13e8:	1001                	.insn	2, 0x1001
    13ea:	4a05                	.insn	2, 0x4a05
    13ec:	0001                	.insn	2, 0x0001
    13ee:	0100                	.insn	2, 0x0100
    13f0:	0710                	.insn	2, 0x0710
    13f2:	0000                	.insn	2, 0x0000
    13f4:	0000                	.insn	2, 0x0000
    13f6:	0201                	.insn	2, 0x0201
    13f8:	6f04                	.insn	2, 0x6f04
    13fa:	0004                	.insn	2, 0x0004
    13fc:	0100                	.insn	2, 0x0100
    13fe:	0304                	.insn	2, 0x0304
    1400:	00000467          	jalr	s0,zero # 0 <exit-0x10120>
    1404:	0401                	.insn	2, 0x0401
    1406:	c104                	.insn	2, 0xc104
    1408:	0004                	.insn	2, 0x0004
    140a:	0100                	.insn	2, 0x0100
    140c:	0308                	.insn	2, 0x0308
    140e:	04b9                	.insn	2, 0x04b9
    1410:	0000                	.insn	2, 0x0000
    1412:	0801                	.insn	2, 0x0801
    1414:	9804                	.insn	2, 0x9804
    1416:	0004                	.insn	2, 0x0004
    1418:	0100                	.insn	2, 0x0100
    141a:	0310                	.insn	2, 0x0310
    141c:	04d6                	.insn	2, 0x04d6
    141e:	0000                	.insn	2, 0x0000
    1420:	2001                	.insn	2, 0x2001
    1422:	00048b03          	lb	s6,0(s1)
    1426:	0600                	.insn	2, 0x0600
    1428:	0099                	.insn	2, 0x0099
    142a:	0000                	.insn	2, 0x0000
    142c:	00000103          	lb	sp,0(zero) # 0 <exit-0x10120>
    1430:	00003a07          	.insn	4, 0x3a07
    1434:	ff00                	.insn	2, 0xff00
    1436:	0300                	.insn	2, 0x0300
    1438:	000000f3          	.insn	4, 0x00f3
    143c:	a708                	.insn	2, 0xa708
    143e:	0004                	.insn	2, 0x0004
    1440:	0200                	.insn	2, 0x0200
    1442:	021a                	.insn	2, 0x021a
    1444:	0316                	.insn	2, 0x0316
    1446:	0001                	.insn	2, 0x0001
    1448:	0900                	.insn	2, 0x0900
    144a:	0201                	.insn	2, 0x0201
    144c:	0000                	.insn	2, 0x0000
    144e:	ae01                	.insn	2, 0xae01
    1450:	0102                	.insn	2, 0x0102
    1452:	0041                	.insn	2, 0x0041
    1454:	0000                	.insn	2, 0x0000
    1456:	12ec                	.insn	2, 0x12ec
    1458:	0001                	.insn	2, 0x0001
    145a:	0000                	.insn	2, 0x0000
    145c:	0000                	.insn	2, 0x0000
    145e:	0040                	.insn	2, 0x0040
    1460:	0000                	.insn	2, 0x0000
    1462:	0000                	.insn	2, 0x0000
    1464:	0000                	.insn	2, 0x0000
    1466:	9c01                	.insn	2, 0x9c01
    1468:	780a                	.insn	2, 0x780a
    146a:	0100                	.insn	2, 0x0100
    146c:	02ae                	.insn	2, 0x02ae
    146e:	a912                	.insn	2, 0xa912
    1470:	0000                	.insn	2, 0x0000
    1472:	a300                	.insn	2, 0xa300
    1474:	001e                	.insn	2, 0x001e
    1476:	9b00                	.insn	2, 0x9b00
    1478:	001e                	.insn	2, 0x001e
    147a:	0b00                	.insn	2, 0x0b00
    147c:	6572                	.insn	2, 0x6572
    147e:	0074                	.insn	2, 0x0074
    1480:	b001                	.insn	2, 0xb001
    1482:	0902                	.insn	2, 0x0902
    1484:	009e                	.insn	2, 0x009e
    1486:	0000                	.insn	2, 0x0000
    1488:	b30c                	.insn	2, 0xb30c
    148a:	0002                	.insn	2, 0x0002
    148c:	0d00                	.insn	2, 0x0d00
    148e:	000004c7          	.insn	4, 0x04c7
    1492:	b201                	.insn	2, 0xb201
    1494:	0302                	.insn	2, 0x0302
    1496:	00a9                	.insn	2, 0x00a9
    1498:	0000                	.insn	2, 0x0000
    149a:	1ec6                	.insn	2, 0x1ec6
    149c:	0000                	.insn	2, 0x0000
    149e:	1ebe                	.insn	2, 0x1ebe
    14a0:	0000                	.insn	2, 0x0000
    14a2:	5f0e                	.insn	2, 0x5f0e
    14a4:	615f 0100 02b2      	.insn	6, 0x02b20100615f
    14aa:	0000a903          	lw	s2,0(ra)
    14ae:	e700                	.insn	2, 0xe700
    14b0:	001e                	.insn	2, 0x001e
    14b2:	e100                	.insn	2, 0xe100
    14b4:	001e                	.insn	2, 0x001e
    14b6:	0000                	.insn	2, 0x0000
    14b8:	0000                	.insn	2, 0x0000
    14ba:	0100                	.insn	2, 0x0100
    14bc:	0000                	.insn	2, 0x0000
    14be:	0005                	.insn	2, 0x0005
    14c0:	0801                	.insn	2, 0x0801
    14c2:	000009c3          	.insn	4, 0x09c3
    14c6:	00002503          	lw	a0,0(zero) # 0 <exit-0x10120>
    14ca:	1d00                	.insn	2, 0x1d00
    14cc:	03164703          	lbu	a4,49(a2)
    14d0:	fd00                	.insn	2, 0xfd00
    14d2:	0001                	.insn	2, 0x0001
    14d4:	0000                	.insn	2, 0x0000
    14d6:	0000                	.insn	2, 0x0000
    14d8:	6700                	.insn	2, 0x6700
    14da:	0034                	.insn	2, 0x0034
    14dc:	0100                	.insn	2, 0x0100
    14de:	0508                	.insn	2, 0x0508
    14e0:	000001a3          	sb	zero,3(zero) # 3 <exit-0x1011d>
    14e4:	0801                	.insn	2, 0x0801
    14e6:	00017107          	.insn	4, 0x00017107
    14ea:	0400                	.insn	2, 0x0400
    14ec:	0504                	.insn	2, 0x0504
    14ee:	6e69                	.insn	2, 0x6e69
    14f0:	0074                	.insn	2, 0x0074
    14f2:	0801                	.insn	2, 0x0801
    14f4:	9e05                	.insn	2, 0x9e05
    14f6:	0001                	.insn	2, 0x0001
    14f8:	0100                	.insn	2, 0x0100
    14fa:	0410                	.insn	2, 0x0410
    14fc:	00000493          	li	s1,0
    1500:	0101                	.insn	2, 0x0101
    1502:	1406                	.insn	2, 0x1406
    1504:	0001                	.insn	2, 0x0001
    1506:	0100                	.insn	2, 0x0100
    1508:	0801                	.insn	2, 0x0801
    150a:	0112                	.insn	2, 0x0112
    150c:	0000                	.insn	2, 0x0000
    150e:	0201                	.insn	2, 0x0201
    1510:	cc05                	.insn	2, 0xcc05
    1512:	0004                	.insn	2, 0x0004
    1514:	0100                	.insn	2, 0x0100
    1516:	0702                	.insn	2, 0x0702
    1518:	0478                	.insn	2, 0x0478
    151a:	0000                	.insn	2, 0x0000
    151c:	0401                	.insn	2, 0x0401
    151e:	00017607          	.insn	4, 0x00017607
    1522:	0100                	.insn	2, 0x0100
    1524:	0801                	.insn	2, 0x0801
    1526:	0000011b          	sext.w	sp,zero
    152a:	0801                	.insn	2, 0x0801
    152c:	00016c07          	.insn	4, 0x00016c07
    1530:	0100                	.insn	2, 0x0100
    1532:	0201                	.insn	2, 0x0201
    1534:	04e5                	.insn	2, 0x04e5
    1536:	0000                	.insn	2, 0x0000
    1538:	9f05                	.insn	2, 0x9f05
    153a:	0004                	.insn	2, 0x0004
    153c:	0200                	.insn	2, 0x0200
    153e:	167e                	.insn	2, 0x167e
    1540:	004d                	.insn	2, 0x004d
    1542:	0000                	.insn	2, 0x0000
    1544:	7e02                	.insn	2, 0x7e02
    1546:	0000                	.insn	2, 0x0000
    1548:	0100                	.insn	2, 0x0100
    154a:	0510                	.insn	2, 0x0510
    154c:	014a                	.insn	2, 0x014a
    154e:	0000                	.insn	2, 0x0000
    1550:	1001                	.insn	2, 0x1001
    1552:	00000007          	.insn	4, 0x0007
    1556:	0100                	.insn	2, 0x0100
    1558:	0402                	.insn	2, 0x0402
    155a:	0000046f          	jal	s0,155a <exit-0xebc6>
    155e:	0401                	.insn	2, 0x0401
    1560:	00046703          	lwu	a4,0(s0) # 1f710d4 <__BSS_END__+0x1f5c0e4>
    1564:	0100                	.insn	2, 0x0100
    1566:	0404                	.insn	2, 0x0404
    1568:	04c1                	.insn	2, 0x04c1
    156a:	0000                	.insn	2, 0x0000
    156c:	0801                	.insn	2, 0x0801
    156e:	0004b903          	ld	s2,0(s1)
    1572:	0100                	.insn	2, 0x0100
    1574:	0408                	.insn	2, 0x0408
    1576:	0498                	.insn	2, 0x0498
    1578:	0000                	.insn	2, 0x0000
    157a:	1001                	.insn	2, 0x1001
    157c:	0004d603          	lhu	a2,0(s1)
    1580:	0100                	.insn	2, 0x0100
    1582:	0320                	.insn	2, 0x0320
    1584:	0000048b          	.insn	4, 0x048b
    1588:	8a06                	.insn	2, 0x8a06
    158a:	0000                	.insn	2, 0x0000
    158c:	de00                	.insn	2, 0xde00
    158e:	0000                	.insn	2, 0x0000
    1590:	0700                	.insn	2, 0x0700
    1592:	002a                	.insn	2, 0x002a
    1594:	0000                	.insn	2, 0x0000
    1596:	00ff ce02 0000 0800 	.insn	10, 0x04a708000000ce0200ff
    159e:	04a7 
    15a0:	0000                	.insn	2, 0x0000
    15a2:	1a02                	.insn	2, 0x1a02
    15a4:	1602                	.insn	2, 0x1602
    15a6:	00de                	.insn	2, 0x00de
    15a8:	0000                	.insn	2, 0x0000
    15aa:	e309                	.insn	2, 0xe309
    15ac:	0000                	.insn	2, 0x0000
    15ae:	0100                	.insn	2, 0x0100
    15b0:	029e                	.insn	2, 0x029e
    15b2:	6803090f          	.insn	4, 0x6803090f
    15b6:	0132                	.insn	2, 0x0132
    15b8:	0000                	.insn	2, 0x0000
    15ba:	0000                	.insn	2, 0x0000
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
 1d2:	3405                	.insn	2, 0x3405
 1d4:	0300                	.insn	2, 0x0300
 1d6:	3a0e                	.insn	2, 0x3a0e
 1d8:	0121                	.insn	2, 0x0121
 1da:	392c213b          	.insn	4, 0x392c213b
 1de:	0321                	.insn	2, 0x0321
 1e0:	1349                	.insn	2, 0x1349
 1e2:	1802                	.insn	2, 0x1802
 1e4:	0000                	.insn	2, 0x0000
 1e6:	0b06                	.insn	2, 0x0b06
 1e8:	5501                	.insn	2, 0x5501
 1ea:	00130117          	auipc	sp,0x130
 1ee:	0700                	.insn	2, 0x0700
 1f0:	0016                	.insn	2, 0x0016
 1f2:	213a0e03          	lb	t3,531(s4)
 1f6:	3b02                	.insn	2, 0x3b02
 1f8:	3905                	.insn	2, 0x3905
 1fa:	0013490b          	.insn	4, 0x0013490b
 1fe:	0800                	.insn	2, 0x0800
 200:	000d                	.insn	2, 0x000d
 202:	213a0e03          	lb	t3,531(s4)
 206:	390b3b03          	ld	s6,912(s6)
 20a:	0d13490b          	.insn	4, 0x0d13490b
 20e:	000b6b0b          	.insn	4, 0x000b6b0b
 212:	0900                	.insn	2, 0x0900
 214:	0005                	.insn	2, 0x0005
 216:	213a0803          	lb	a6,531(s4)
 21a:	3b01                	.insn	2, 0x3b01
 21c:	2121                	.insn	2, 0x2121
 21e:	0b39                	.insn	2, 0x0b39
 220:	1349                	.insn	2, 0x1349
 222:	1702                	.insn	2, 0x1702
 224:	001742b7          	lui	t0,0x174
 228:	0a00                	.insn	2, 0x0a00
 22a:	0048                	.insn	2, 0x0048
 22c:	017d                	.insn	2, 0x017d
 22e:	0000137f 55010b0b 	.insn	12, 0x0c00001755010b0b0000137f
 236:	0c000017 
 23a:	0111010b          	.insn	4, 0x0111010b
 23e:	0712                	.insn	2, 0x0712
 240:	1301                	.insn	2, 0x1301
 242:	0000                	.insn	2, 0x0000
 244:	110d                	.insn	2, 0x110d
 246:	2501                	.insn	2, 0x2501
 248:	130e                	.insn	2, 0x130e
 24a:	0b01900b          	.insn	4, 0x0b01900b
 24e:	0191                	.insn	2, 0x0191
 250:	0306                	.insn	2, 0x0306
 252:	1b1f 111f 1201      	.insn	6, 0x1201111f1b1f
 258:	00171007          	.insn	4, 0x00171007
 25c:	0e00                	.insn	2, 0x0e00
 25e:	0024                	.insn	2, 0x0024
 260:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 264:	00000803          	lb	a6,0(zero) # 0 <exit-0x10120>
 268:	0300160f          	.insn	4, 0x0300160f
 26c:	3a0e                	.insn	2, 0x3a0e
 26e:	390b3b0b          	.insn	4, 0x390b3b0b
 272:	0013490b          	.insn	4, 0x0013490b
 276:	1000                	.insn	2, 0x1000
 278:	0b0b0113          	addi	sp,s6,176
 27c:	0b3a                	.insn	2, 0x0b3a
 27e:	0b390b3b          	.insn	4, 0x0b390b3b
 282:	1301                	.insn	2, 0x1301
 284:	0000                	.insn	2, 0x0000
 286:	0d11                	.insn	2, 0x0d11
 288:	0300                	.insn	2, 0x0300
 28a:	3a08                	.insn	2, 0x3a08
 28c:	390b3b0b          	.insn	4, 0x390b3b0b
 290:	0d13490b          	.insn	4, 0x0d13490b
 294:	000b6b0b          	.insn	4, 0x000b6b0b
 298:	1200                	.insn	2, 0x1200
 29a:	0e030117          	auipc	sp,0xe030
 29e:	0b3a0b0b          	.insn	4, 0x0b3a0b0b
 2a2:	0b390b3b          	.insn	4, 0x0b390b3b
 2a6:	1301                	.insn	2, 0x1301
 2a8:	0000                	.insn	2, 0x0000
 2aa:	03000d13          	li	s10,48
 2ae:	3a08                	.insn	2, 0x3a08
 2b0:	390b3b0b          	.insn	4, 0x390b3b0b
 2b4:	0013490b          	.insn	4, 0x0013490b
 2b8:	1400                	.insn	2, 0x1400
 2ba:	000d                	.insn	2, 0x000d
 2bc:	0b3a0e03          	lb	t3,179(s4)
 2c0:	0b390b3b          	.insn	4, 0x0b390b3b
 2c4:	1349                	.insn	2, 0x1349
 2c6:	0000                	.insn	2, 0x0000
 2c8:	2e15                	.insn	2, 0x2e15
 2ca:	3f01                	.insn	2, 0x3f01
 2cc:	0319                	.insn	2, 0x0319
 2ce:	3a0e                	.insn	2, 0x3a0e
 2d0:	390b3b0b          	.insn	4, 0x390b3b0b
 2d4:	4919270b          	.insn	4, 0x4919270b
 2d8:	12011113          	.insn	4, 0x12011113
 2dc:	7a184007          	.insn	4, 0x7a184007
 2e0:	0119                	.insn	2, 0x0119
 2e2:	16000013          	li	zero,352
 2e6:	0034                	.insn	2, 0x0034
 2e8:	0b3a0e03          	lb	t3,179(s4)
 2ec:	0b390b3b          	.insn	4, 0x0b390b3b
 2f0:	1349                	.insn	2, 0x1349
 2f2:	0b1c                	.insn	2, 0x0b1c
 2f4:	0000                	.insn	2, 0x0000
 2f6:	11010b17          	auipc	s6,0x11010
 2fa:	1201                	.insn	2, 0x1201
 2fc:	18000007          	.insn	4, 0x18000007
 300:	0000010b          	.insn	4, 0x010b
 304:	2e19                	.insn	2, 0x2e19
 306:	3f00                	.insn	2, 0x3f00
 308:	3c19                	.insn	2, 0x3c19
 30a:	6e19                	.insn	2, 0x6e19
 30c:	030e                	.insn	2, 0x030e
 30e:	000e                	.insn	2, 0x000e
 310:	0000                	.insn	2, 0x0000
 312:	2401                	.insn	2, 0x2401
 314:	0b00                	.insn	2, 0x0b00
 316:	030b3e0b          	.insn	4, 0x030b3e0b
 31a:	000e                	.insn	2, 0x000e
 31c:	0200                	.insn	2, 0x0200
 31e:	0034                	.insn	2, 0x0034
 320:	213a0803          	lb	a6,531(s4)
 324:	3b01                	.insn	2, 0x3b01
 326:	490b390b          	.insn	4, 0x490b390b
 32a:	b7170213          	addi	tp,a4,-1167
 32e:	1742                	.insn	2, 0x1742
 330:	0000                	.insn	2, 0x0000
 332:	03003403          	ld	s0,48(zero) # 30 <exit-0x100f0>
 336:	3a0e                	.insn	2, 0x3a0e
 338:	0121                	.insn	2, 0x0121
 33a:	21390b3b          	.insn	4, 0x21390b3b
 33e:	00134903          	lbu	s2,1(t1)
 342:	0400                	.insn	2, 0x0400
 344:	000a                	.insn	2, 0x000a
 346:	213a0e03          	lb	t3,531(s4)
 34a:	3b01                	.insn	2, 0x3b01
 34c:	2c21                	.insn	2, 0x2c21
 34e:	2139                	.insn	2, 0x2139
 350:	00011103          	lh	sp,0(sp) # e03029a <__BSS_END__+0xe01b2aa>
 354:	0500                	.insn	2, 0x0500
 356:	1755010b          	.insn	4, 0x1755010b
 35a:	1301                	.insn	2, 0x1301
 35c:	0000                	.insn	2, 0x0000
 35e:	3406                	.insn	2, 0x3406
 360:	0300                	.insn	2, 0x0300
 362:	3a0e                	.insn	2, 0x3a0e
 364:	0121                	.insn	2, 0x0121
 366:	21390b3b          	.insn	4, 0x21390b3b
 36a:	02134903          	lbu	s2,33(t1)
 36e:	1742b717          	auipc	a4,0x1742b
 372:	0000                	.insn	2, 0x0000
 374:	03003407          	.insn	4, 0x03003407
 378:	3a08                	.insn	2, 0x3a08
 37a:	0121                	.insn	2, 0x0121
 37c:	21390b3b          	.insn	4, 0x21390b3b
 380:	00134903          	lbu	s2,1(t1)
 384:	0800                	.insn	2, 0x0800
 386:	000d                	.insn	2, 0x000d
 388:	213a0e03          	lb	t3,531(s4)
 38c:	3b02                	.insn	2, 0x3b02
 38e:	490b390b          	.insn	4, 0x490b390b
 392:	6b0b0d13          	addi	s10,s6,1712 # 110109a6 <__BSS_END__+0x10ffb9b6>
 396:	0900000b          	.insn	4, 0x0900000b
 39a:	0005                	.insn	2, 0x0005
 39c:	213a0803          	lb	a6,531(s4)
 3a0:	3b01                	.insn	2, 0x3b01
 3a2:	2121                	.insn	2, 0x2121
 3a4:	0b39                	.insn	2, 0x0b39
 3a6:	1349                	.insn	2, 0x1349
 3a8:	1702                	.insn	2, 0x1702
 3aa:	001742b7          	lui	t0,0x174
 3ae:	0a00                	.insn	2, 0x0a00
 3b0:	000a                	.insn	2, 0x000a
 3b2:	213a0e03          	lb	t3,531(s4)
 3b6:	3b01                	.insn	2, 0x3b01
 3b8:	2c21                	.insn	2, 0x2c21
 3ba:	2139                	.insn	2, 0x2139
 3bc:	0b000003          	lb	zero,176(zero) # b0 <exit-0x10070>
 3c0:	0111                	.insn	2, 0x0111
 3c2:	0e25                	.insn	2, 0x0e25
 3c4:	01900b13          	li	s6,25
 3c8:	0601910b          	.insn	4, 0x0601910b
 3cc:	1f1b1f03          	lh	t5,497(s6)
 3d0:	0111                	.insn	2, 0x0111
 3d2:	0712                	.insn	2, 0x0712
 3d4:	1710                	.insn	2, 0x1710
 3d6:	0000                	.insn	2, 0x0000
 3d8:	240c                	.insn	2, 0x240c
 3da:	0b00                	.insn	2, 0x0b00
 3dc:	030b3e0b          	.insn	4, 0x030b3e0b
 3e0:	0008                	.insn	2, 0x0008
 3e2:	0d00                	.insn	2, 0x0d00
 3e4:	0016                	.insn	2, 0x0016
 3e6:	0b3a0e03          	lb	t3,179(s4)
 3ea:	0b390b3b          	.insn	4, 0x0b390b3b
 3ee:	1349                	.insn	2, 0x1349
 3f0:	0000                	.insn	2, 0x0000
 3f2:	130e                	.insn	2, 0x130e
 3f4:	0b01                	.insn	2, 0x0b01
 3f6:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 3fa:	010b390b          	.insn	4, 0x010b390b
 3fe:	0f000013          	li	zero,240
 402:	000d                	.insn	2, 0x000d
 404:	0b3a0803          	lb	a6,179(s4)
 408:	0b390b3b          	.insn	4, 0x0b390b3b
 40c:	1349                	.insn	2, 0x1349
 40e:	0b0d                	.insn	2, 0x0b0d
 410:	00000b6b          	.insn	4, 0x0b6b
 414:	1710                	.insn	2, 0x1710
 416:	0301                	.insn	2, 0x0301
 418:	0b0e                	.insn	2, 0x0b0e
 41a:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 41e:	010b390b          	.insn	4, 0x010b390b
 422:	11000013          	li	zero,272
 426:	000d                	.insn	2, 0x000d
 428:	0b3a0803          	lb	a6,179(s4)
 42c:	0b390b3b          	.insn	4, 0x0b390b3b
 430:	1349                	.insn	2, 0x1349
 432:	0000                	.insn	2, 0x0000
 434:	0d12                	.insn	2, 0x0d12
 436:	0300                	.insn	2, 0x0300
 438:	3a0e                	.insn	2, 0x3a0e
 43a:	390b3b0b          	.insn	4, 0x390b3b0b
 43e:	0013490b          	.insn	4, 0x0013490b
 442:	1300                	.insn	2, 0x1300
 444:	012e                	.insn	2, 0x012e
 446:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 44e:	0b39                	.insn	2, 0x0b39
 450:	13491927          	.insn	4, 0x13491927
 454:	0111                	.insn	2, 0x0111
 456:	0712                	.insn	2, 0x0712
 458:	1840                	.insn	2, 0x1840
 45a:	197a                	.insn	2, 0x197a
 45c:	1301                	.insn	2, 0x1301
 45e:	0000                	.insn	2, 0x0000
 460:	3414                	.insn	2, 0x3414
 462:	0300                	.insn	2, 0x0300
 464:	3a0e                	.insn	2, 0x3a0e
 466:	390b3b0b          	.insn	4, 0x390b3b0b
 46a:	1c13490b          	.insn	4, 0x1c13490b
 46e:	1500000b          	.insn	4, 0x1500000b
 472:	1755010b          	.insn	4, 0x1755010b
 476:	0000                	.insn	2, 0x0000
 478:	4816                	.insn	2, 0x4816
 47a:	7d00                	.insn	2, 0x7d00
 47c:	7f01                	.insn	2, 0x7f01
 47e:	17000013          	li	zero,368
 482:	0000010b          	.insn	4, 0x010b
 486:	0b18                	.insn	2, 0x0b18
 488:	1101                	.insn	2, 0x1101
 48a:	1201                	.insn	2, 0x1201
 48c:	19000007          	.insn	4, 0x19000007
 490:	002e                	.insn	2, 0x002e
 492:	193c193f 0e030e6e 	.insn	8, 0x0e030e6e193c193f
 49a:	0000                	.insn	2, 0x0000
 49c:	0100                	.insn	2, 0x0100
 49e:	0024                	.insn	2, 0x0024
 4a0:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 4a4:	00000e03          	lb	t3,0(zero) # 0 <exit-0x10120>
 4a8:	3402                	.insn	2, 0x3402
 4aa:	0300                	.insn	2, 0x0300
 4ac:	3a0e                	.insn	2, 0x3a0e
 4ae:	0121                	.insn	2, 0x0121
 4b0:	21390b3b          	.insn	4, 0x21390b3b
 4b4:	00134903          	lbu	s2,1(t1)
 4b8:	0300                	.insn	2, 0x0300
 4ba:	0034                	.insn	2, 0x0034
 4bc:	213a0803          	lb	a6,531(s4)
 4c0:	3b01                	.insn	2, 0x3b01
 4c2:	490b390b          	.insn	4, 0x490b390b
 4c6:	b7170213          	addi	tp,a4,-1167 # 1742aedf <__BSS_END__+0x17415eef>
 4ca:	1742                	.insn	2, 0x1742
 4cc:	0000                	.insn	2, 0x0000
 4ce:	1604                	.insn	2, 0x1604
 4d0:	0300                	.insn	2, 0x0300
 4d2:	3a0e                	.insn	2, 0x3a0e
 4d4:	0221                	.insn	2, 0x0221
 4d6:	0b39053b          	.insn	4, 0x0b39053b
 4da:	1349                	.insn	2, 0x1349
 4dc:	0000                	.insn	2, 0x0000
 4de:	0d05                	.insn	2, 0x0d05
 4e0:	0300                	.insn	2, 0x0300
 4e2:	3a0e                	.insn	2, 0x3a0e
 4e4:	0321                	.insn	2, 0x0321
 4e6:	0b390b3b          	.insn	4, 0x0b390b3b
 4ea:	1349                	.insn	2, 0x1349
 4ec:	0b0d                	.insn	2, 0x0b0d
 4ee:	00000b6b          	.insn	4, 0x0b6b
 4f2:	0b06                	.insn	2, 0x0b06
 4f4:	5501                	.insn	2, 0x5501
 4f6:	00130117          	auipc	sp,0x130
 4fa:	0700                	.insn	2, 0x0700
 4fc:	0034                	.insn	2, 0x0034
 4fe:	213a0e03          	lb	t3,531(s4)
 502:	3b01                	.insn	2, 0x3b01
 504:	2721                	.insn	2, 0x2721
 506:	2139                	.insn	2, 0x2139
 508:	02134903          	lbu	s2,33(t1)
 50c:	1742b717          	auipc	a4,0x1742b
 510:	0000                	.insn	2, 0x0000
 512:	0b08                	.insn	2, 0x0b08
 514:	0001                	.insn	2, 0x0001
 516:	0900                	.insn	2, 0x0900
 518:	0111                	.insn	2, 0x0111
 51a:	0e25                	.insn	2, 0x0e25
 51c:	01900b13          	li	s6,25
 520:	0601910b          	.insn	4, 0x0601910b
 524:	1f1b1f03          	lh	t5,497(s6)
 528:	0111                	.insn	2, 0x0111
 52a:	0712                	.insn	2, 0x0712
 52c:	1710                	.insn	2, 0x1710
 52e:	0000                	.insn	2, 0x0000
 530:	240a                	.insn	2, 0x240a
 532:	0b00                	.insn	2, 0x0b00
 534:	030b3e0b          	.insn	4, 0x030b3e0b
 538:	0008                	.insn	2, 0x0008
 53a:	0b00                	.insn	2, 0x0b00
 53c:	0016                	.insn	2, 0x0016
 53e:	0b3a0e03          	lb	t3,179(s4)
 542:	0b390b3b          	.insn	4, 0x0b390b3b
 546:	1349                	.insn	2, 0x1349
 548:	0000                	.insn	2, 0x0000
 54a:	130c                	.insn	2, 0x130c
 54c:	0b01                	.insn	2, 0x0b01
 54e:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 552:	010b390b          	.insn	4, 0x010b390b
 556:	0d000013          	li	zero,208
 55a:	000d                	.insn	2, 0x000d
 55c:	0b3a0803          	lb	a6,179(s4)
 560:	0b390b3b          	.insn	4, 0x0b390b3b
 564:	1349                	.insn	2, 0x1349
 566:	0b0d                	.insn	2, 0x0b0d
 568:	00000b6b          	.insn	4, 0x0b6b
 56c:	170e                	.insn	2, 0x170e
 56e:	0301                	.insn	2, 0x0301
 570:	0b0e                	.insn	2, 0x0b0e
 572:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 576:	010b390b          	.insn	4, 0x010b390b
 57a:	0f000013          	li	zero,240
 57e:	000d                	.insn	2, 0x000d
 580:	0b3a0803          	lb	a6,179(s4)
 584:	0b390b3b          	.insn	4, 0x0b390b3b
 588:	1349                	.insn	2, 0x1349
 58a:	0000                	.insn	2, 0x0000
 58c:	0d10                	.insn	2, 0x0d10
 58e:	0300                	.insn	2, 0x0300
 590:	3a0e                	.insn	2, 0x3a0e
 592:	390b3b0b          	.insn	4, 0x390b3b0b
 596:	0013490b          	.insn	4, 0x0013490b
 59a:	1100                	.insn	2, 0x1100
 59c:	012e                	.insn	2, 0x012e
 59e:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 5a6:	0b39                	.insn	2, 0x0b39
 5a8:	13491927          	.insn	4, 0x13491927
 5ac:	0111                	.insn	2, 0x0111
 5ae:	0712                	.insn	2, 0x0712
 5b0:	1840                	.insn	2, 0x1840
 5b2:	197a                	.insn	2, 0x197a
 5b4:	1301                	.insn	2, 0x1301
 5b6:	0000                	.insn	2, 0x0000
 5b8:	0512                	.insn	2, 0x0512
 5ba:	0300                	.insn	2, 0x0300
 5bc:	3a08                	.insn	2, 0x3a08
 5be:	390b3b0b          	.insn	4, 0x390b3b0b
 5c2:	0213490b          	.insn	4, 0x0213490b
 5c6:	1742b717          	auipc	a4,0x1742b
 5ca:	0000                	.insn	2, 0x0000
 5cc:	03003413          	sltiu	s0,zero,48
 5d0:	3a08                	.insn	2, 0x3a08
 5d2:	390b3b0b          	.insn	4, 0x390b3b0b
 5d6:	0013490b          	.insn	4, 0x0013490b
 5da:	1400                	.insn	2, 0x1400
 5dc:	000a                	.insn	2, 0x000a
 5de:	0b3a0e03          	lb	t3,179(s4)
 5e2:	0b390b3b          	.insn	4, 0x0b390b3b
 5e6:	0000                	.insn	2, 0x0000
 5e8:	0b15                	.insn	2, 0x0b15
 5ea:	1101                	.insn	2, 0x1101
 5ec:	1201                	.insn	2, 0x1201
 5ee:	16000007          	.insn	4, 0x16000007
 5f2:	0048                	.insn	2, 0x0048
 5f4:	017d                	.insn	2, 0x017d
 5f6:	0000137f 55010b17 	.insn	12, 0x1800001755010b170000137f
 5fe:	18000017 
 602:	002e                	.insn	2, 0x002e
 604:	193c193f 0e030e6e 	.insn	8, 0x0e030e6e193c193f
 60c:	0000                	.insn	2, 0x0000
 60e:	0100                	.insn	2, 0x0100
 610:	0024                	.insn	2, 0x0024
 612:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 616:	00000e03          	lb	t3,0(zero) # 0 <exit-0x10120>
 61a:	3402                	.insn	2, 0x3402
 61c:	0300                	.insn	2, 0x0300
 61e:	3a08                	.insn	2, 0x3a08
 620:	0121                	.insn	2, 0x0121
 622:	0b390b3b          	.insn	4, 0x0b390b3b
 626:	1349                	.insn	2, 0x1349
 628:	1702                	.insn	2, 0x1702
 62a:	001742b7          	lui	t0,0x174
 62e:	0300                	.insn	2, 0x0300
 630:	000d                	.insn	2, 0x000d
 632:	0b3a0e03          	lb	t3,179(s4)
 636:	0b390b3b          	.insn	4, 0x0b390b3b
 63a:	1349                	.insn	2, 0x1349
 63c:	0b0d                	.insn	2, 0x0b0d
 63e:	00000b6b          	.insn	4, 0x0b6b
 642:	1604                	.insn	2, 0x1604
 644:	0300                	.insn	2, 0x0300
 646:	3a0e                	.insn	2, 0x3a0e
 648:	390b3b0b          	.insn	4, 0x390b3b0b
 64c:	0f21                	.insn	2, 0x0f21
 64e:	1349                	.insn	2, 0x1349
 650:	0000                	.insn	2, 0x0000
 652:	1305                	.insn	2, 0x1305
 654:	0b01                	.insn	2, 0x0b01
 656:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 65a:	0321390b          	.insn	4, 0x0321390b
 65e:	1301                	.insn	2, 0x1301
 660:	0000                	.insn	2, 0x0000
 662:	0d06                	.insn	2, 0x0d06
 664:	0300                	.insn	2, 0x0300
 666:	3a08                	.insn	2, 0x3a08
 668:	390b3b0b          	.insn	4, 0x390b3b0b
 66c:	0e21                	.insn	2, 0x0e21
 66e:	1349                	.insn	2, 0x1349
 670:	0b0d                	.insn	2, 0x0b0d
 672:	00000b6b          	.insn	4, 0x0b6b
 676:	03011707          	.insn	4, 0x03011707
 67a:	0b0e                	.insn	2, 0x0b0e
 67c:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 680:	0721390b          	.insn	4, 0x0721390b
 684:	1301                	.insn	2, 0x1301
 686:	0000                	.insn	2, 0x0000
 688:	0d08                	.insn	2, 0x0d08
 68a:	0300                	.insn	2, 0x0300
 68c:	3a08                	.insn	2, 0x3a08
 68e:	390b3b0b          	.insn	4, 0x390b3b0b
 692:	0a21                	.insn	2, 0x0a21
 694:	1349                	.insn	2, 0x1349
 696:	0000                	.insn	2, 0x0000
 698:	0d09                	.insn	2, 0x0d09
 69a:	0300                	.insn	2, 0x0300
 69c:	3a0e                	.insn	2, 0x3a0e
 69e:	390b3b0b          	.insn	4, 0x390b3b0b
 6a2:	0521                	.insn	2, 0x0521
 6a4:	1349                	.insn	2, 0x1349
 6a6:	0000                	.insn	2, 0x0000
 6a8:	340a                	.insn	2, 0x340a
 6aa:	0300                	.insn	2, 0x0300
 6ac:	3a0e                	.insn	2, 0x3a0e
 6ae:	0121                	.insn	2, 0x0121
 6b0:	21390b3b          	.insn	4, 0x21390b3b
 6b4:	02134903          	lbu	s2,33(t1)
 6b8:	1742b717          	auipc	a4,0x1742b
 6bc:	0000                	.insn	2, 0x0000
 6be:	0300340b          	.insn	4, 0x0300340b
 6c2:	3a08                	.insn	2, 0x3a08
 6c4:	0121                	.insn	2, 0x0121
 6c6:	21390b3b          	.insn	4, 0x21390b3b
 6ca:	00134903          	lbu	s2,1(t1)
 6ce:	0c00                	.insn	2, 0x0c00
 6d0:	0034                	.insn	2, 0x0034
 6d2:	213a0e03          	lb	t3,531(s4)
 6d6:	3b01                	.insn	2, 0x3b01
 6d8:	0321390b          	.insn	4, 0x0321390b
 6dc:	1349                	.insn	2, 0x1349
 6de:	0000                	.insn	2, 0x0000
 6e0:	110d                	.insn	2, 0x110d
 6e2:	2501                	.insn	2, 0x2501
 6e4:	130e                	.insn	2, 0x130e
 6e6:	0b01900b          	.insn	4, 0x0b01900b
 6ea:	0191                	.insn	2, 0x0191
 6ec:	0306                	.insn	2, 0x0306
 6ee:	1b1f 111f 1201      	.insn	6, 0x1201111f1b1f
 6f4:	00171007          	.insn	4, 0x00171007
 6f8:	0e00                	.insn	2, 0x0e00
 6fa:	0024                	.insn	2, 0x0024
 6fc:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 700:	00000803          	lb	a6,0(zero) # 0 <exit-0x10120>
 704:	3f012e0f          	.insn	4, 0x3f012e0f
 708:	0319                	.insn	2, 0x0319
 70a:	3a0e                	.insn	2, 0x3a0e
 70c:	390b3b0b          	.insn	4, 0x390b3b0b
 710:	4919270b          	.insn	4, 0x4919270b
 714:	12011113          	.insn	4, 0x12011113
 718:	7a184007          	.insn	4, 0x7a184007
 71c:	0119                	.insn	2, 0x0119
 71e:	10000013          	li	zero,256
 722:	0005                	.insn	2, 0x0005
 724:	0b3a0803          	lb	a6,179(s4)
 728:	0b390b3b          	.insn	4, 0x0b390b3b
 72c:	1349                	.insn	2, 0x1349
 72e:	1702                	.insn	2, 0x1702
 730:	001742b7          	lui	t0,0x174
 734:	1100                	.insn	2, 0x1100
 736:	0034                	.insn	2, 0x0034
 738:	0b3a0e03          	lb	t3,179(s4)
 73c:	0b390b3b          	.insn	4, 0x0b390b3b
 740:	1349                	.insn	2, 0x1349
 742:	0b1c                	.insn	2, 0x0b1c
 744:	0000                	.insn	2, 0x0000
 746:	0b12                	.insn	2, 0x0b12
 748:	5501                	.insn	2, 0x5501
 74a:	00130117          	auipc	sp,0x130
 74e:	1300                	.insn	2, 0x1300
 750:	0111010b          	.insn	4, 0x0111010b
 754:	0712                	.insn	2, 0x0712
 756:	1301                	.insn	2, 0x1301
 758:	0000                	.insn	2, 0x0000
 75a:	4814                	.insn	2, 0x4814
 75c:	7d00                	.insn	2, 0x7d00
 75e:	7f01                	.insn	2, 0x7f01
 760:	15000013          	li	zero,336
 764:	1755010b          	.insn	4, 0x1755010b
 768:	0000                	.insn	2, 0x0000
 76a:	2e16                	.insn	2, 0x2e16
 76c:	3f00                	.insn	2, 0x3f00
 76e:	3c19                	.insn	2, 0x3c19
 770:	6e19                	.insn	2, 0x6e19
 772:	030e                	.insn	2, 0x030e
 774:	000e                	.insn	2, 0x000e
 776:	0000                	.insn	2, 0x0000
 778:	2401                	.insn	2, 0x2401
 77a:	0b00                	.insn	2, 0x0b00
 77c:	030b3e0b          	.insn	4, 0x030b3e0b
 780:	000e                	.insn	2, 0x000e
 782:	0200                	.insn	2, 0x0200
 784:	0034                	.insn	2, 0x0034
 786:	213a0e03          	lb	t3,531(s4)
 78a:	3b01                	.insn	2, 0x3b01
 78c:	0321390b          	.insn	4, 0x0321390b
 790:	1349                	.insn	2, 0x1349
 792:	1702                	.insn	2, 0x1702
 794:	001742b7          	lui	t0,0x174
 798:	0300                	.insn	2, 0x0300
 79a:	0034                	.insn	2, 0x0034
 79c:	213a0803          	lb	a6,531(s4)
 7a0:	3b01                	.insn	2, 0x3b01
 7a2:	0321390b          	.insn	4, 0x0321390b
 7a6:	1349                	.insn	2, 0x1349
 7a8:	1702                	.insn	2, 0x1702
 7aa:	001742b7          	lui	t0,0x174
 7ae:	0400                	.insn	2, 0x0400
 7b0:	000d                	.insn	2, 0x000d
 7b2:	0b3a0e03          	lb	t3,179(s4)
 7b6:	0b390b3b          	.insn	4, 0x0b390b3b
 7ba:	1349                	.insn	2, 0x1349
 7bc:	0b0d                	.insn	2, 0x0b0d
 7be:	00000b6b          	.insn	4, 0x0b6b
 7c2:	3405                	.insn	2, 0x3405
 7c4:	0300                	.insn	2, 0x0300
 7c6:	3a08                	.insn	2, 0x3a08
 7c8:	0121                	.insn	2, 0x0121
 7ca:	0b390b3b          	.insn	4, 0x0b390b3b
 7ce:	1349                	.insn	2, 0x1349
 7d0:	0000                	.insn	2, 0x0000
 7d2:	1606                	.insn	2, 0x1606
 7d4:	0300                	.insn	2, 0x0300
 7d6:	3a0e                	.insn	2, 0x3a0e
 7d8:	390b3b0b          	.insn	4, 0x390b3b0b
 7dc:	0f21                	.insn	2, 0x0f21
 7de:	1349                	.insn	2, 0x1349
 7e0:	0000                	.insn	2, 0x0000
 7e2:	0b011307          	.insn	4, 0x0b011307
 7e6:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 7ea:	0321390b          	.insn	4, 0x0321390b
 7ee:	1301                	.insn	2, 0x1301
 7f0:	0000                	.insn	2, 0x0000
 7f2:	0d08                	.insn	2, 0x0d08
 7f4:	0300                	.insn	2, 0x0300
 7f6:	3a08                	.insn	2, 0x3a08
 7f8:	390b3b0b          	.insn	4, 0x390b3b0b
 7fc:	0e21                	.insn	2, 0x0e21
 7fe:	1349                	.insn	2, 0x1349
 800:	0b0d                	.insn	2, 0x0b0d
 802:	00000b6b          	.insn	4, 0x0b6b
 806:	1709                	.insn	2, 0x1709
 808:	0301                	.insn	2, 0x0301
 80a:	0b0e                	.insn	2, 0x0b0e
 80c:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 810:	0721390b          	.insn	4, 0x0721390b
 814:	1301                	.insn	2, 0x1301
 816:	0000                	.insn	2, 0x0000
 818:	0d0a                	.insn	2, 0x0d0a
 81a:	0300                	.insn	2, 0x0300
 81c:	3a08                	.insn	2, 0x3a08
 81e:	390b3b0b          	.insn	4, 0x390b3b0b
 822:	0a21                	.insn	2, 0x0a21
 824:	1349                	.insn	2, 0x1349
 826:	0000                	.insn	2, 0x0000
 828:	03000d0b          	.insn	4, 0x03000d0b
 82c:	3a0e                	.insn	2, 0x3a0e
 82e:	390b3b0b          	.insn	4, 0x390b3b0b
 832:	0521                	.insn	2, 0x0521
 834:	1349                	.insn	2, 0x1349
 836:	0000                	.insn	2, 0x0000
 838:	0b0c                	.insn	2, 0x0b0c
 83a:	5501                	.insn	2, 0x5501
 83c:	00130117          	auipc	sp,0x130
 840:	0d00                	.insn	2, 0x0d00
 842:	0034                	.insn	2, 0x0034
 844:	213a0e03          	lb	t3,531(s4)
 848:	3b01                	.insn	2, 0x3b01
 84a:	0321390b          	.insn	4, 0x0321390b
 84e:	1349                	.insn	2, 0x1349
 850:	0000                	.insn	2, 0x0000
 852:	0b0e                	.insn	2, 0x0b0e
 854:	1101                	.insn	2, 0x1101
 856:	1201                	.insn	2, 0x1201
 858:	0f000007          	.insn	4, 0x0f000007
 85c:	0111                	.insn	2, 0x0111
 85e:	0e25                	.insn	2, 0x0e25
 860:	01900b13          	li	s6,25
 864:	0601910b          	.insn	4, 0x0601910b
 868:	1f1b1f03          	lh	t5,497(s6)
 86c:	0111                	.insn	2, 0x0111
 86e:	0712                	.insn	2, 0x0712
 870:	1710                	.insn	2, 0x1710
 872:	0000                	.insn	2, 0x0000
 874:	2410                	.insn	2, 0x2410
 876:	0b00                	.insn	2, 0x0b00
 878:	030b3e0b          	.insn	4, 0x030b3e0b
 87c:	0008                	.insn	2, 0x0008
 87e:	1100                	.insn	2, 0x1100
 880:	012e                	.insn	2, 0x012e
 882:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 88a:	0b39                	.insn	2, 0x0b39
 88c:	13491927          	.insn	4, 0x13491927
 890:	0111                	.insn	2, 0x0111
 892:	0712                	.insn	2, 0x0712
 894:	1840                	.insn	2, 0x1840
 896:	197a                	.insn	2, 0x197a
 898:	1301                	.insn	2, 0x1301
 89a:	0000                	.insn	2, 0x0000
 89c:	0512                	.insn	2, 0x0512
 89e:	0300                	.insn	2, 0x0300
 8a0:	3a08                	.insn	2, 0x3a08
 8a2:	390b3b0b          	.insn	4, 0x390b3b0b
 8a6:	0213490b          	.insn	4, 0x0213490b
 8aa:	1742b717          	auipc	a4,0x1742b
 8ae:	0000                	.insn	2, 0x0000
 8b0:	03003413          	sltiu	s0,zero,48
 8b4:	3a0e                	.insn	2, 0x3a0e
 8b6:	390b3b0b          	.insn	4, 0x390b3b0b
 8ba:	1c13490b          	.insn	4, 0x1c13490b
 8be:	0000000b          	.insn	4, 0x000b
 8c2:	1101                	.insn	2, 0x1101
 8c4:	1001                	.insn	2, 0x1001
 8c6:	12011117          	auipc	sp,0x12011
 8ca:	1b0e030f          	.insn	4, 0x1b0e030f
 8ce:	250e                	.insn	2, 0x250e
 8d0:	130e                	.insn	2, 0x130e
 8d2:	0005                	.insn	2, 0x0005
 8d4:	0200                	.insn	2, 0x0200
 8d6:	002e                	.insn	2, 0x002e
 8d8:	193f0e03          	lb	t3,403(t5)
 8dc:	1549                	.insn	2, 0x1549
 8de:	0111                	.insn	2, 0x0111
 8e0:	0f12                	.insn	2, 0x0f12
 8e2:	0000                	.insn	2, 0x0000
 8e4:	00003b03          	ld	s6,0(zero) # 0 <exit-0x10120>
 8e8:	0000                	.insn	2, 0x0000
 8ea:	2401                	.insn	2, 0x2401
 8ec:	0b00                	.insn	2, 0x0b00
 8ee:	030b3e0b          	.insn	4, 0x030b3e0b
 8f2:	000e                	.insn	2, 0x000e
 8f4:	0200                	.insn	2, 0x0200
 8f6:	0016                	.insn	2, 0x0016
 8f8:	213a0e03          	lb	t3,531(s4)
 8fc:	3b02                	.insn	2, 0x3b02
 8fe:	490b390b          	.insn	4, 0x490b390b
 902:	03000013          	li	zero,48
 906:	0026                	.insn	2, 0x0026
 908:	1349                	.insn	2, 0x1349
 90a:	0000                	.insn	2, 0x0000
 90c:	1104                	.insn	2, 0x1104
 90e:	2501                	.insn	2, 0x2501
 910:	130e                	.insn	2, 0x130e
 912:	0b01900b          	.insn	4, 0x0b01900b
 916:	0191                	.insn	2, 0x0191
 918:	0306                	.insn	2, 0x0306
 91a:	1b1f 111f 1201      	.insn	6, 0x1201111f1b1f
 920:	00171007          	.insn	4, 0x00171007
 924:	0500                	.insn	2, 0x0500
 926:	0024                	.insn	2, 0x0024
 928:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 92c:	00000803          	lb	a6,0(zero) # 0 <exit-0x10120>
 930:	0106                	.insn	2, 0x0106
 932:	4901                	.insn	2, 0x4901
 934:	00130113          	addi	sp,t1,1
 938:	0700                	.insn	2, 0x0700
 93a:	0021                	.insn	2, 0x0021
 93c:	1349                	.insn	2, 0x1349
 93e:	00000b2f          	.insn	4, 0x0b2f
 942:	3408                	.insn	2, 0x3408
 944:	0300                	.insn	2, 0x0300
 946:	3a0e                	.insn	2, 0x3a0e
 948:	39053b0b          	.insn	4, 0x39053b0b
 94c:	3f13490b          	.insn	4, 0x3f13490b
 950:	3c19                	.insn	2, 0x3c19
 952:	0019                	.insn	2, 0x0019
 954:	0900                	.insn	2, 0x0900
 956:	012e                	.insn	2, 0x012e
 958:	0e03193f 053b0b3a 	.insn	8, 0x053b0b3a0e03193f
 960:	0b39                	.insn	2, 0x0b39
 962:	13491927          	.insn	4, 0x13491927
 966:	0111                	.insn	2, 0x0111
 968:	0712                	.insn	2, 0x0712
 96a:	1840                	.insn	2, 0x1840
 96c:	197a                	.insn	2, 0x197a
 96e:	0000                	.insn	2, 0x0000
 970:	050a                	.insn	2, 0x050a
 972:	0300                	.insn	2, 0x0300
 974:	3a08                	.insn	2, 0x3a08
 976:	39053b0b          	.insn	4, 0x39053b0b
 97a:	0213490b          	.insn	4, 0x0213490b
 97e:	1742b717          	auipc	a4,0x1742b
 982:	0000                	.insn	2, 0x0000
 984:	0300340b          	.insn	4, 0x0300340b
 988:	3a08                	.insn	2, 0x3a08
 98a:	39053b0b          	.insn	4, 0x39053b0b
 98e:	0013490b          	.insn	4, 0x0013490b
 992:	0c00                	.insn	2, 0x0c00
 994:	1755010b          	.insn	4, 0x1755010b
 998:	0000                	.insn	2, 0x0000
 99a:	340d                	.insn	2, 0x340d
 99c:	0300                	.insn	2, 0x0300
 99e:	3a0e                	.insn	2, 0x3a0e
 9a0:	39053b0b          	.insn	4, 0x39053b0b
 9a4:	0213490b          	.insn	4, 0x0213490b
 9a8:	1742b717          	auipc	a4,0x1742b
 9ac:	0000                	.insn	2, 0x0000
 9ae:	340e                	.insn	2, 0x340e
 9b0:	0300                	.insn	2, 0x0300
 9b2:	3a08                	.insn	2, 0x3a08
 9b4:	39053b0b          	.insn	4, 0x39053b0b
 9b8:	0213490b          	.insn	4, 0x0213490b
 9bc:	1742b717          	auipc	a4,0x1742b
 9c0:	0000                	.insn	2, 0x0000
 9c2:	0100                	.insn	2, 0x0100
 9c4:	0024                	.insn	2, 0x0024
 9c6:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 9ca:	00000e03          	lb	t3,0(zero) # 0 <exit-0x10120>
 9ce:	2602                	.insn	2, 0x2602
 9d0:	4900                	.insn	2, 0x4900
 9d2:	03000013          	li	zero,48
 9d6:	0111                	.insn	2, 0x0111
 9d8:	0e25                	.insn	2, 0x0e25
 9da:	01900b13          	li	s6,25
 9de:	0601910b          	.insn	4, 0x0601910b
 9e2:	1f1b1f03          	lh	t5,497(s6)
 9e6:	1710                	.insn	2, 0x1710
 9e8:	0000                	.insn	2, 0x0000
 9ea:	2404                	.insn	2, 0x2404
 9ec:	0b00                	.insn	2, 0x0b00
 9ee:	030b3e0b          	.insn	4, 0x030b3e0b
 9f2:	0008                	.insn	2, 0x0008
 9f4:	0500                	.insn	2, 0x0500
 9f6:	0016                	.insn	2, 0x0016
 9f8:	0b3a0e03          	lb	t3,179(s4)
 9fc:	0b390b3b          	.insn	4, 0x0b390b3b
 a00:	1349                	.insn	2, 0x1349
 a02:	0000                	.insn	2, 0x0000
 a04:	0106                	.insn	2, 0x0106
 a06:	4901                	.insn	2, 0x4901
 a08:	00130113          	addi	sp,t1,1
 a0c:	0700                	.insn	2, 0x0700
 a0e:	0021                	.insn	2, 0x0021
 a10:	1349                	.insn	2, 0x1349
 a12:	00000b2f          	.insn	4, 0x0b2f
 a16:	3408                	.insn	2, 0x3408
 a18:	0300                	.insn	2, 0x0300
 a1a:	3a0e                	.insn	2, 0x3a0e
 a1c:	39053b0b          	.insn	4, 0x39053b0b
 a20:	3f13490b          	.insn	4, 0x3f13490b
 a24:	3c19                	.insn	2, 0x3c19
 a26:	0019                	.insn	2, 0x0019
 a28:	0900                	.insn	2, 0x0900
 a2a:	0034                	.insn	2, 0x0034
 a2c:	0b3a1347          	.insn	4, 0x0b3a1347
 a30:	0b39053b          	.insn	4, 0x0b39053b
 a34:	1802                	.insn	2, 0x1802
 a36:	0000                	.insn	2, 0x0000
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
      20:	021f 0000 0000      	.insn	6, 0x021f
      26:	00000097          	auipc	ra,0x0
      2a:	0102                	.insn	2, 0x0102
      2c:	021f 030b 0069      	.insn	6, 0x0069030b021f
      32:	0000                	.insn	2, 0x0000
      34:	8e00                	.insn	2, 0x8e00
      36:	0000                	.insn	2, 0x0000
      38:	0100                	.insn	2, 0x0100
      3a:	00bc                	.insn	2, 0x00bc
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
     332:	00080903          	lb	s2,0(a6) # 112c000 <__BSS_END__+0x1117010>
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
     702:	01910403          	lb	s0,25(sp) # 120118df <__BSS_END__+0x11ffc8ef>
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
     8f2:	02a70403          	lb	s0,42(a4) # 1742b9e6 <__BSS_END__+0x174169f6>
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
     a14:	01f50403          	lb	s0,31(a0)
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
     ade:	02990403          	lb	s0,41(s2) # 7f29 <exit-0x81f7>
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
     f3a:	0a81                	.insn	2, 0x0a81
     f3c:	0000                	.insn	2, 0x0000
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
     f5a:	021f 0000 0000      	.insn	6, 0x021f
     f60:	00000097          	auipc	ra,0x0
     f64:	0102                	.insn	2, 0x0102
     f66:	021f 040b 00c5      	.insn	6, 0x00c5040b021f
     f6c:	0000                	.insn	2, 0x0000
     f6e:	ea00                	.insn	2, 0xea00
     f70:	0000                	.insn	2, 0x0000
     f72:	0100                	.insn	2, 0x0100
     f74:	000000f3          	.insn	4, 0x00f3
     f78:	bc01                	.insn	2, 0xbc01
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
    120c:	00080903          	lb	s2,0(a6)
    1210:	0501                	.insn	2, 0x0501
    1212:	000c0903          	lb	s2,0(s8)
    1216:	0200                	.insn	2, 0x0200
    1218:	0004                	.insn	2, 0x0004
    121a:	0106                	.insn	2, 0x0106
    121c:	0305                	.insn	2, 0x0305
    121e:	0009                	.insn	2, 0x0009
    1220:	0100                	.insn	2, 0x0100
    1222:	0305                	.insn	2, 0x0305
    1224:	0009                	.insn	2, 0x0009
    1226:	0100                	.insn	2, 0x0100
    1228:	0305                	.insn	2, 0x0305
    122a:	0009                	.insn	2, 0x0009
    122c:	0100                	.insn	2, 0x0100
    122e:	0305                	.insn	2, 0x0305
    1230:	0009                	.insn	2, 0x0009
    1232:	0000                	.insn	2, 0x0000
    1234:	0402                	.insn	2, 0x0402
    1236:	0602                	.insn	2, 0x0602
    1238:	0501                	.insn	2, 0x0501
    123a:	00040903          	lb	s2,0(s0)
    123e:	0200                	.insn	2, 0x0200
    1240:	0004                	.insn	2, 0x0004
    1242:	0106                	.insn	2, 0x0106
    1244:	0305                	.insn	2, 0x0305
    1246:	0009                	.insn	2, 0x0009
    1248:	0000                	.insn	2, 0x0000
    124a:	0402                	.insn	2, 0x0402
    124c:	0602                	.insn	2, 0x0602
    124e:	0501                	.insn	2, 0x0501
    1250:	00040903          	lb	s2,0(s0)
    1254:	0200                	.insn	2, 0x0200
    1256:	0004                	.insn	2, 0x0004
    1258:	0106                	.insn	2, 0x0106
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
    1280:	0501                	.insn	2, 0x0501
    1282:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1286:	0200                	.insn	2, 0x0200
    1288:	0004                	.insn	2, 0x0004
    128a:	0106                	.insn	2, 0x0106
    128c:	0305                	.insn	2, 0x0305
    128e:	0009                	.insn	2, 0x0009
    1290:	0100                	.insn	2, 0x0100
    1292:	0305                	.insn	2, 0x0305
    1294:	0009                	.insn	2, 0x0009
    1296:	0000                	.insn	2, 0x0000
    1298:	0402                	.insn	2, 0x0402
    129a:	0602                	.insn	2, 0x0602
    129c:	0501                	.insn	2, 0x0501
    129e:	00040903          	lb	s2,0(s0)
    12a2:	0501                	.insn	2, 0x0501
    12a4:	00040903          	lb	s2,0(s0)
    12a8:	0200                	.insn	2, 0x0200
    12aa:	0004                	.insn	2, 0x0004
    12ac:	0106                	.insn	2, 0x0106
    12ae:	0305                	.insn	2, 0x0305
    12b0:	0009                	.insn	2, 0x0009
    12b2:	0000                	.insn	2, 0x0000
    12b4:	0402                	.insn	2, 0x0402
    12b6:	0602                	.insn	2, 0x0602
    12b8:	0501                	.insn	2, 0x0501
    12ba:	00040903          	lb	s2,0(s0)
    12be:	0200                	.insn	2, 0x0200
    12c0:	0004                	.insn	2, 0x0004
    12c2:	0106                	.insn	2, 0x0106
    12c4:	0305                	.insn	2, 0x0305
    12c6:	0009                	.insn	2, 0x0009
    12c8:	0000                	.insn	2, 0x0000
    12ca:	0402                	.insn	2, 0x0402
    12cc:	0602                	.insn	2, 0x0602
    12ce:	0501                	.insn	2, 0x0501
    12d0:	00040903          	lb	s2,0(s0)
    12d4:	0200                	.insn	2, 0x0200
    12d6:	0004                	.insn	2, 0x0004
    12d8:	0106                	.insn	2, 0x0106
    12da:	0305                	.insn	2, 0x0305
    12dc:	0009                	.insn	2, 0x0009
    12de:	0000                	.insn	2, 0x0000
    12e0:	0402                	.insn	2, 0x0402
    12e2:	0602                	.insn	2, 0x0602
    12e4:	0501                	.insn	2, 0x0501
    12e6:	00040903          	lb	s2,0(s0)
    12ea:	0501                	.insn	2, 0x0501
    12ec:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    12f0:	0200                	.insn	2, 0x0200
    12f2:	0004                	.insn	2, 0x0004
    12f4:	0106                	.insn	2, 0x0106
    12f6:	0305                	.insn	2, 0x0305
    12f8:	0009                	.insn	2, 0x0009
    12fa:	0100                	.insn	2, 0x0100
    12fc:	0305                	.insn	2, 0x0305
    12fe:	0009                	.insn	2, 0x0009
    1300:	0000                	.insn	2, 0x0000
    1302:	0402                	.insn	2, 0x0402
    1304:	0602                	.insn	2, 0x0602
    1306:	0501                	.insn	2, 0x0501
    1308:	00080903          	lb	s2,0(a6)
    130c:	0200                	.insn	2, 0x0200
    130e:	0004                	.insn	2, 0x0004
    1310:	0106                	.insn	2, 0x0106
    1312:	0305                	.insn	2, 0x0305
    1314:	0009                	.insn	2, 0x0009
    1316:	0100                	.insn	2, 0x0100
    1318:	0305                	.insn	2, 0x0305
    131a:	0009                	.insn	2, 0x0009
    131c:	0000                	.insn	2, 0x0000
    131e:	0402                	.insn	2, 0x0402
    1320:	0602                	.insn	2, 0x0602
    1322:	0501                	.insn	2, 0x0501
    1324:	00040903          	lb	s2,0(s0)
    1328:	0200                	.insn	2, 0x0200
    132a:	0004                	.insn	2, 0x0004
    132c:	0106                	.insn	2, 0x0106
    132e:	0305                	.insn	2, 0x0305
    1330:	0009                	.insn	2, 0x0009
    1332:	0000                	.insn	2, 0x0000
    1334:	0402                	.insn	2, 0x0402
    1336:	0602                	.insn	2, 0x0602
    1338:	0501                	.insn	2, 0x0501
    133a:	00040903          	lb	s2,0(s0)
    133e:	0501                	.insn	2, 0x0501
    1340:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1344:	0200                	.insn	2, 0x0200
    1346:	0004                	.insn	2, 0x0004
    1348:	0106                	.insn	2, 0x0106
    134a:	0305                	.insn	2, 0x0305
    134c:	0009                	.insn	2, 0x0009
    134e:	0100                	.insn	2, 0x0100
    1350:	0305                	.insn	2, 0x0305
    1352:	0009                	.insn	2, 0x0009
    1354:	0000                	.insn	2, 0x0000
    1356:	0402                	.insn	2, 0x0402
    1358:	0602                	.insn	2, 0x0602
    135a:	0501                	.insn	2, 0x0501
    135c:	00080903          	lb	s2,0(a6)
    1360:	0200                	.insn	2, 0x0200
    1362:	0004                	.insn	2, 0x0004
    1364:	0106                	.insn	2, 0x0106
    1366:	0305                	.insn	2, 0x0305
    1368:	0009                	.insn	2, 0x0009
    136a:	0100                	.insn	2, 0x0100
    136c:	0305                	.insn	2, 0x0305
    136e:	0009                	.insn	2, 0x0009
    1370:	0000                	.insn	2, 0x0000
    1372:	0402                	.insn	2, 0x0402
    1374:	0602                	.insn	2, 0x0602
    1376:	0501                	.insn	2, 0x0501
    1378:	00040903          	lb	s2,0(s0)
    137c:	0200                	.insn	2, 0x0200
    137e:	0004                	.insn	2, 0x0004
    1380:	0106                	.insn	2, 0x0106
    1382:	0305                	.insn	2, 0x0305
    1384:	0009                	.insn	2, 0x0009
    1386:	0600                	.insn	2, 0x0600
    1388:	0501                	.insn	2, 0x0501
    138a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    138e:	0106                	.insn	2, 0x0106
    1390:	0305                	.insn	2, 0x0305
    1392:	0009                	.insn	2, 0x0009
    1394:	0100                	.insn	2, 0x0100
    1396:	0305                	.insn	2, 0x0305
    1398:	0009                	.insn	2, 0x0009
    139a:	0000                	.insn	2, 0x0000
    139c:	0402                	.insn	2, 0x0402
    139e:	0602                	.insn	2, 0x0602
    13a0:	0501                	.insn	2, 0x0501
    13a2:	00040903          	lb	s2,0(s0)
    13a6:	0501                	.insn	2, 0x0501
    13a8:	00040903          	lb	s2,0(s0)
    13ac:	0501                	.insn	2, 0x0501
    13ae:	00040903          	lb	s2,0(s0)
    13b2:	0200                	.insn	2, 0x0200
    13b4:	0004                	.insn	2, 0x0004
    13b6:	0106                	.insn	2, 0x0106
    13b8:	0305                	.insn	2, 0x0305
    13ba:	0009                	.insn	2, 0x0009
    13bc:	0000                	.insn	2, 0x0000
    13be:	0402                	.insn	2, 0x0402
    13c0:	0602                	.insn	2, 0x0602
    13c2:	0501                	.insn	2, 0x0501
    13c4:	00040903          	lb	s2,0(s0)
    13c8:	0200                	.insn	2, 0x0200
    13ca:	0904                	.insn	2, 0x0904
    13cc:	0106                	.insn	2, 0x0106
    13ce:	0305                	.insn	2, 0x0305
    13d0:	0c09                	.insn	2, 0x0c09
    13d2:	0000                	.insn	2, 0x0000
    13d4:	0402                	.insn	2, 0x0402
    13d6:	0305010b          	.insn	4, 0x0305010b
    13da:	0009                	.insn	2, 0x0009
    13dc:	0000                	.insn	2, 0x0000
    13de:	0402                	.insn	2, 0x0402
    13e0:	0100                	.insn	2, 0x0100
    13e2:	0305                	.insn	2, 0x0305
    13e4:	0009                	.insn	2, 0x0009
    13e6:	0000                	.insn	2, 0x0000
    13e8:	0402                	.insn	2, 0x0402
    13ea:	0501060b          	.insn	4, 0x0501060b
    13ee:	00040903          	lb	s2,0(s0)
    13f2:	0501                	.insn	2, 0x0501
    13f4:	000c0903          	lb	s2,0(s8)
    13f8:	0501                	.insn	2, 0x0501
    13fa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    13fe:	0200                	.insn	2, 0x0200
    1400:	0004                	.insn	2, 0x0004
    1402:	0106                	.insn	2, 0x0106
    1404:	0305                	.insn	2, 0x0305
    1406:	0009                	.insn	2, 0x0009
    1408:	0100                	.insn	2, 0x0100
    140a:	0305                	.insn	2, 0x0305
    140c:	0009                	.insn	2, 0x0009
    140e:	0100                	.insn	2, 0x0100
    1410:	0305                	.insn	2, 0x0305
    1412:	0009                	.insn	2, 0x0009
    1414:	0100                	.insn	2, 0x0100
    1416:	0305                	.insn	2, 0x0305
    1418:	0009                	.insn	2, 0x0009
    141a:	0000                	.insn	2, 0x0000
    141c:	0402                	.insn	2, 0x0402
    141e:	0501060b          	.insn	4, 0x0501060b
    1422:	00040903          	lb	s2,0(s0)
    1426:	0501                	.insn	2, 0x0501
    1428:	00080903          	lb	s2,0(a6)
    142c:	0501                	.insn	2, 0x0501
    142e:	00040903          	lb	s2,0(s0)
    1432:	0501                	.insn	2, 0x0501
    1434:	00040903          	lb	s2,0(s0)
    1438:	0501                	.insn	2, 0x0501
    143a:	00100903          	lb	s2,1(zero) # 1 <exit-0x1011f>
    143e:	0200                	.insn	2, 0x0200
    1440:	0004                	.insn	2, 0x0004
    1442:	0106                	.insn	2, 0x0106
    1444:	0305                	.insn	2, 0x0305
    1446:	0009                	.insn	2, 0x0009
    1448:	0600                	.insn	2, 0x0600
    144a:	0501                	.insn	2, 0x0501
    144c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1450:	0106                	.insn	2, 0x0106
    1452:	0305                	.insn	2, 0x0305
    1454:	0009                	.insn	2, 0x0009
    1456:	0600                	.insn	2, 0x0600
    1458:	0501                	.insn	2, 0x0501
    145a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    145e:	0106                	.insn	2, 0x0106
    1460:	0305                	.insn	2, 0x0305
    1462:	0009                	.insn	2, 0x0009
    1464:	0100                	.insn	2, 0x0100
    1466:	0305                	.insn	2, 0x0305
    1468:	0009                	.insn	2, 0x0009
    146a:	0000                	.insn	2, 0x0000
    146c:	0402                	.insn	2, 0x0402
    146e:	0501060b          	.insn	4, 0x0501060b
    1472:	00040903          	lb	s2,0(s0)
    1476:	0200                	.insn	2, 0x0200
    1478:	0c04                	.insn	2, 0x0c04
    147a:	0106                	.insn	2, 0x0106
    147c:	0305                	.insn	2, 0x0305
    147e:	0809                	.insn	2, 0x0809
    1480:	0600                	.insn	2, 0x0600
    1482:	0501                	.insn	2, 0x0501
    1484:	00040903          	lb	s2,0(s0)
    1488:	0200                	.insn	2, 0x0200
    148a:	0004                	.insn	2, 0x0004
    148c:	0106                	.insn	2, 0x0106
    148e:	0305                	.insn	2, 0x0305
    1490:	0009                	.insn	2, 0x0009
    1492:	1800                	.insn	2, 0x1800
    1494:	0305                	.insn	2, 0x0305
    1496:	0009                	.insn	2, 0x0009
    1498:	0100                	.insn	2, 0x0100
    149a:	0305                	.insn	2, 0x0305
    149c:	0009                	.insn	2, 0x0009
    149e:	0100                	.insn	2, 0x0100
    14a0:	0305                	.insn	2, 0x0305
    14a2:	0009                	.insn	2, 0x0009
    14a4:	0100                	.insn	2, 0x0100
    14a6:	0305                	.insn	2, 0x0305
    14a8:	0009                	.insn	2, 0x0009
    14aa:	0000                	.insn	2, 0x0000
    14ac:	0402                	.insn	2, 0x0402
    14ae:	0602                	.insn	2, 0x0602
    14b0:	0501                	.insn	2, 0x0501
    14b2:	00040903          	lb	s2,0(s0)
    14b6:	0200                	.insn	2, 0x0200
    14b8:	0004                	.insn	2, 0x0004
    14ba:	0106                	.insn	2, 0x0106
    14bc:	0305                	.insn	2, 0x0305
    14be:	0009                	.insn	2, 0x0009
    14c0:	0000                	.insn	2, 0x0000
    14c2:	0402                	.insn	2, 0x0402
    14c4:	0602                	.insn	2, 0x0602
    14c6:	0501                	.insn	2, 0x0501
    14c8:	00040903          	lb	s2,0(s0)
    14cc:	0200                	.insn	2, 0x0200
    14ce:	0604                	.insn	2, 0x0604
    14d0:	0106                	.insn	2, 0x0106
    14d2:	0305                	.insn	2, 0x0305
    14d4:	0009                	.insn	2, 0x0009
    14d6:	0100                	.insn	2, 0x0100
    14d8:	0305                	.insn	2, 0x0305
    14da:	0809                	.insn	2, 0x0809
    14dc:	0000                	.insn	2, 0x0000
    14de:	0402                	.insn	2, 0x0402
    14e0:	0108                	.insn	2, 0x0108
    14e2:	0305                	.insn	2, 0x0305
    14e4:	0009                	.insn	2, 0x0009
    14e6:	0000                	.insn	2, 0x0000
    14e8:	0402                	.insn	2, 0x0402
    14ea:	0100                	.insn	2, 0x0100
    14ec:	0305                	.insn	2, 0x0305
    14ee:	0009                	.insn	2, 0x0009
    14f0:	0100                	.insn	2, 0x0100
    14f2:	0305                	.insn	2, 0x0305
    14f4:	0009                	.insn	2, 0x0009
    14f6:	0100                	.insn	2, 0x0100
    14f8:	0305                	.insn	2, 0x0305
    14fa:	0009                	.insn	2, 0x0009
    14fc:	0000                	.insn	2, 0x0000
    14fe:	0402                	.insn	2, 0x0402
    1500:	0501060b          	.insn	4, 0x0501060b
    1504:	000c0903          	lb	s2,0(s8)
    1508:	0200                	.insn	2, 0x0200
    150a:	0f04                	.insn	2, 0x0f04
    150c:	0106                	.insn	2, 0x0106
    150e:	0305                	.insn	2, 0x0305
    1510:	0409                	.insn	2, 0x0409
    1512:	0000                	.insn	2, 0x0000
    1514:	0402                	.insn	2, 0x0402
    1516:	0110                	.insn	2, 0x0110
    1518:	0305                	.insn	2, 0x0305
    151a:	0009                	.insn	2, 0x0009
    151c:	0100                	.insn	2, 0x0100
    151e:	0305                	.insn	2, 0x0305
    1520:	0809                	.insn	2, 0x0809
    1522:	0000                	.insn	2, 0x0000
    1524:	0402                	.insn	2, 0x0402
    1526:	0115                	.insn	2, 0x0115
    1528:	0305                	.insn	2, 0x0305
    152a:	1009                	.insn	2, 0x1009
    152c:	0000                	.insn	2, 0x0000
    152e:	0402                	.insn	2, 0x0402
    1530:	0100                	.insn	2, 0x0100
    1532:	0305                	.insn	2, 0x0305
    1534:	0009                	.insn	2, 0x0009
    1536:	0000                	.insn	2, 0x0000
    1538:	0402                	.insn	2, 0x0402
    153a:	0615                	.insn	2, 0x0615
    153c:	0501                	.insn	2, 0x0501
    153e:	00040903          	lb	s2,0(s0)
    1542:	0200                	.insn	2, 0x0200
    1544:	1704                	.insn	2, 0x1704
    1546:	0106                	.insn	2, 0x0106
    1548:	0305                	.insn	2, 0x0305
    154a:	0009                	.insn	2, 0x0009
    154c:	0000                	.insn	2, 0x0000
    154e:	0402                	.insn	2, 0x0402
    1550:	0100                	.insn	2, 0x0100
    1552:	0305                	.insn	2, 0x0305
    1554:	0009                	.insn	2, 0x0009
    1556:	0000                	.insn	2, 0x0000
    1558:	0402                	.insn	2, 0x0402
    155a:	05010617          	auipc	a2,0x5010
    155e:	00080903          	lb	s2,0(a6)
    1562:	0501                	.insn	2, 0x0501
    1564:	00040903          	lb	s2,0(s0)
    1568:	0200                	.insn	2, 0x0200
    156a:	6304                	.insn	2, 0x6304
    156c:	0106                	.insn	2, 0x0106
    156e:	0305                	.insn	2, 0x0305
    1570:	0009                	.insn	2, 0x0009
    1572:	0100                	.insn	2, 0x0100
    1574:	0305                	.insn	2, 0x0305
    1576:	0009                	.insn	2, 0x0009
    1578:	0100                	.insn	2, 0x0100
    157a:	0305                	.insn	2, 0x0305
    157c:	0009                	.insn	2, 0x0009
    157e:	0100                	.insn	2, 0x0100
    1580:	0305                	.insn	2, 0x0305
    1582:	0009                	.insn	2, 0x0009
    1584:	0000                	.insn	2, 0x0000
    1586:	0402                	.insn	2, 0x0402
    1588:	0100                	.insn	2, 0x0100
    158a:	0305                	.insn	2, 0x0305
    158c:	0009                	.insn	2, 0x0009
    158e:	0100                	.insn	2, 0x0100
    1590:	0305                	.insn	2, 0x0305
    1592:	0009                	.insn	2, 0x0009
    1594:	0600                	.insn	2, 0x0600
    1596:	0901051b          	addiw	a0,sp,144
    159a:	0008                	.insn	2, 0x0008
    159c:	0200                	.insn	2, 0x0200
    159e:	6304                	.insn	2, 0x6304
    15a0:	09030513          	addi	a0,t1,144
    15a4:	0004                	.insn	2, 0x0004
    15a6:	0501                	.insn	2, 0x0501
    15a8:	00040903          	lb	s2,0(s0)
    15ac:	0501                	.insn	2, 0x0501
    15ae:	00080903          	lb	s2,0(a6)
    15b2:	0501                	.insn	2, 0x0501
    15b4:	00040903          	lb	s2,0(s0)
    15b8:	0200                	.insn	2, 0x0200
    15ba:	0004                	.insn	2, 0x0004
    15bc:	0106                	.insn	2, 0x0106
    15be:	0305                	.insn	2, 0x0305
    15c0:	0009                	.insn	2, 0x0009
    15c2:	0600                	.insn	2, 0x0600
    15c4:	0501                	.insn	2, 0x0501
    15c6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    15ca:	0200                	.insn	2, 0x0200
    15cc:	6304                	.insn	2, 0x6304
    15ce:	0106                	.insn	2, 0x0106
    15d0:	0305                	.insn	2, 0x0305
    15d2:	0009                	.insn	2, 0x0009
    15d4:	0100                	.insn	2, 0x0100
    15d6:	0305                	.insn	2, 0x0305
    15d8:	0009                	.insn	2, 0x0009
    15da:	0000                	.insn	2, 0x0000
    15dc:	0402                	.insn	2, 0x0402
    15de:	1800                	.insn	2, 0x1800
    15e0:	0305                	.insn	2, 0x0305
    15e2:	0009                	.insn	2, 0x0009
    15e4:	0100                	.insn	2, 0x0100
    15e6:	0305                	.insn	2, 0x0305
    15e8:	0009                	.insn	2, 0x0009
    15ea:	0100                	.insn	2, 0x0100
    15ec:	0305                	.insn	2, 0x0305
    15ee:	0009                	.insn	2, 0x0009
    15f0:	1900                	.insn	2, 0x1900
    15f2:	0305                	.insn	2, 0x0305
    15f4:	0009                	.insn	2, 0x0009
    15f6:	0600                	.insn	2, 0x0600
    15f8:	0518                	.insn	2, 0x0518
    15fa:	0901                	.insn	2, 0x0901
    15fc:	0004                	.insn	2, 0x0004
    15fe:	0501                	.insn	2, 0x0501
    1600:	0901                	.insn	2, 0x0901
    1602:	0008                	.insn	2, 0x0008
    1604:	0501                	.insn	2, 0x0501
    1606:	0901                	.insn	2, 0x0901
    1608:	0004                	.insn	2, 0x0004
    160a:	0501                	.insn	2, 0x0501
    160c:	0901                	.insn	2, 0x0901
    160e:	0004                	.insn	2, 0x0004
    1610:	0501                	.insn	2, 0x0501
    1612:	0901                	.insn	2, 0x0901
    1614:	000c                	.insn	2, 0x000c
    1616:	1006                	.insn	2, 0x1006
    1618:	0305                	.insn	2, 0x0305
    161a:	0009                	.insn	2, 0x0009
    161c:	0000                	.insn	2, 0x0000
    161e:	0402                	.insn	2, 0x0402
    1620:	0602                	.insn	2, 0x0602
    1622:	0501                	.insn	2, 0x0501
    1624:	00040903          	lb	s2,0(s0)
    1628:	0200                	.insn	2, 0x0200
    162a:	0904                	.insn	2, 0x0904
    162c:	0106                	.insn	2, 0x0106
    162e:	0305                	.insn	2, 0x0305
    1630:	0009                	.insn	2, 0x0009
    1632:	0000                	.insn	2, 0x0000
    1634:	0402                	.insn	2, 0x0402
    1636:	0305010b          	.insn	4, 0x0305010b
    163a:	0009                	.insn	2, 0x0009
    163c:	0100                	.insn	2, 0x0100
    163e:	0305                	.insn	2, 0x0305
    1640:	0009                	.insn	2, 0x0009
    1642:	0100                	.insn	2, 0x0100
    1644:	0305                	.insn	2, 0x0305
    1646:	0009                	.insn	2, 0x0009
    1648:	0100                	.insn	2, 0x0100
    164a:	0305                	.insn	2, 0x0305
    164c:	0009                	.insn	2, 0x0009
    164e:	0000                	.insn	2, 0x0000
    1650:	0402                	.insn	2, 0x0402
    1652:	010d                	.insn	2, 0x010d
    1654:	0305                	.insn	2, 0x0305
    1656:	0009                	.insn	2, 0x0009
    1658:	0000                	.insn	2, 0x0000
    165a:	0402                	.insn	2, 0x0402
    165c:	0110                	.insn	2, 0x0110
    165e:	0305                	.insn	2, 0x0305
    1660:	0409                	.insn	2, 0x0409
    1662:	0600                	.insn	2, 0x0600
    1664:	0501                	.insn	2, 0x0501
    1666:	00040903          	lb	s2,0(s0)
    166a:	0501                	.insn	2, 0x0501
    166c:	00040903          	lb	s2,0(s0)
    1670:	0200                	.insn	2, 0x0200
    1672:	1504                	.insn	2, 0x1504
    1674:	0106                	.insn	2, 0x0106
    1676:	0305                	.insn	2, 0x0305
    1678:	0009                	.insn	2, 0x0009
    167a:	0100                	.insn	2, 0x0100
    167c:	0305                	.insn	2, 0x0305
    167e:	0009                	.insn	2, 0x0009
    1680:	0000                	.insn	2, 0x0000
    1682:	0402                	.insn	2, 0x0402
    1684:	0100                	.insn	2, 0x0100
    1686:	0305                	.insn	2, 0x0305
    1688:	0009                	.insn	2, 0x0009
    168a:	0100                	.insn	2, 0x0100
    168c:	0305                	.insn	2, 0x0305
    168e:	0009                	.insn	2, 0x0009
    1690:	0000                	.insn	2, 0x0000
    1692:	0402                	.insn	2, 0x0402
    1694:	011a                	.insn	2, 0x011a
    1696:	0305                	.insn	2, 0x0305
    1698:	0009                	.insn	2, 0x0009
    169a:	0000                	.insn	2, 0x0000
    169c:	0402                	.insn	2, 0x0402
    169e:	061c                	.insn	2, 0x061c
    16a0:	0501                	.insn	2, 0x0501
    16a2:	00040903          	lb	s2,0(s0)
    16a6:	0200                	.insn	2, 0x0200
    16a8:	1a04                	.insn	2, 0x1a04
    16aa:	0501                	.insn	2, 0x0501
    16ac:	00080903          	lb	s2,0(a6)
    16b0:	0200                	.insn	2, 0x0200
    16b2:	1c04                	.insn	2, 0x1c04
    16b4:	0106                	.insn	2, 0x0106
    16b6:	0305                	.insn	2, 0x0305
    16b8:	0009                	.insn	2, 0x0009
    16ba:	0100                	.insn	2, 0x0100
    16bc:	0305                	.insn	2, 0x0305
    16be:	0809                	.insn	2, 0x0809
    16c0:	0600                	.insn	2, 0x0600
    16c2:	0501                	.insn	2, 0x0501
    16c4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    16c8:	0200                	.insn	2, 0x0200
    16ca:	0004                	.insn	2, 0x0004
    16cc:	0106                	.insn	2, 0x0106
    16ce:	0305                	.insn	2, 0x0305
    16d0:	0409                	.insn	2, 0x0409
    16d2:	0600                	.insn	2, 0x0600
    16d4:	0501                	.insn	2, 0x0501
    16d6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    16da:	0200                	.insn	2, 0x0200
    16dc:	1d04                	.insn	2, 0x1d04
    16de:	0501                	.insn	2, 0x0501
    16e0:	00040903          	lb	s2,0(s0)
    16e4:	0200                	.insn	2, 0x0200
    16e6:	0304                	.insn	2, 0x0304
    16e8:	0501                	.insn	2, 0x0501
    16ea:	00040903          	lb	s2,0(s0)
    16ee:	0200                	.insn	2, 0x0200
    16f0:	1e04                	.insn	2, 0x1e04
    16f2:	0501                	.insn	2, 0x0501
    16f4:	00080903          	lb	s2,0(a6)
    16f8:	0200                	.insn	2, 0x0200
    16fa:	0004                	.insn	2, 0x0004
    16fc:	0501                	.insn	2, 0x0501
    16fe:	00040903          	lb	s2,0(s0)
    1702:	0501                	.insn	2, 0x0501
    1704:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1708:	0200                	.insn	2, 0x0200
    170a:	0804                	.insn	2, 0x0804
    170c:	0501                	.insn	2, 0x0501
    170e:	00080903          	lb	s2,0(a6)
    1712:	0200                	.insn	2, 0x0200
    1714:	0004                	.insn	2, 0x0004
    1716:	1806                	.insn	2, 0x1806
    1718:	0305                	.insn	2, 0x0305
    171a:	0009                	.insn	2, 0x0009
    171c:	0000                	.insn	2, 0x0000
    171e:	0402                	.insn	2, 0x0402
    1720:	0602                	.insn	2, 0x0602
    1722:	0501                	.insn	2, 0x0501
    1724:	00040903          	lb	s2,0(s0)
    1728:	0200                	.insn	2, 0x0200
    172a:	0904                	.insn	2, 0x0904
    172c:	0106                	.insn	2, 0x0106
    172e:	0305                	.insn	2, 0x0305
    1730:	0009                	.insn	2, 0x0009
    1732:	0000                	.insn	2, 0x0000
    1734:	0402                	.insn	2, 0x0402
    1736:	0305010b          	.insn	4, 0x0305010b
    173a:	0009                	.insn	2, 0x0009
    173c:	0100                	.insn	2, 0x0100
    173e:	0305                	.insn	2, 0x0305
    1740:	0009                	.insn	2, 0x0009
    1742:	0100                	.insn	2, 0x0100
    1744:	0305                	.insn	2, 0x0305
    1746:	0009                	.insn	2, 0x0009
    1748:	0100                	.insn	2, 0x0100
    174a:	0305                	.insn	2, 0x0305
    174c:	0009                	.insn	2, 0x0009
    174e:	0000                	.insn	2, 0x0000
    1750:	0402                	.insn	2, 0x0402
    1752:	010d                	.insn	2, 0x010d
    1754:	0305                	.insn	2, 0x0305
    1756:	0009                	.insn	2, 0x0009
    1758:	0000                	.insn	2, 0x0000
    175a:	0402                	.insn	2, 0x0402
    175c:	0110                	.insn	2, 0x0110
    175e:	0305                	.insn	2, 0x0305
    1760:	0809                	.insn	2, 0x0809
    1762:	0600                	.insn	2, 0x0600
    1764:	0501                	.insn	2, 0x0501
    1766:	00040903          	lb	s2,0(s0)
    176a:	0200                	.insn	2, 0x0200
    176c:	1504                	.insn	2, 0x1504
    176e:	0106                	.insn	2, 0x0106
    1770:	0305                	.insn	2, 0x0305
    1772:	0009                	.insn	2, 0x0009
    1774:	0100                	.insn	2, 0x0100
    1776:	0305                	.insn	2, 0x0305
    1778:	0009                	.insn	2, 0x0009
    177a:	0000                	.insn	2, 0x0000
    177c:	0402                	.insn	2, 0x0402
    177e:	0100                	.insn	2, 0x0100
    1780:	0305                	.insn	2, 0x0305
    1782:	0009                	.insn	2, 0x0009
    1784:	0100                	.insn	2, 0x0100
    1786:	0305                	.insn	2, 0x0305
    1788:	0009                	.insn	2, 0x0009
    178a:	0000                	.insn	2, 0x0000
    178c:	0402                	.insn	2, 0x0402
    178e:	011a                	.insn	2, 0x011a
    1790:	0305                	.insn	2, 0x0305
    1792:	0009                	.insn	2, 0x0009
    1794:	0000                	.insn	2, 0x0000
    1796:	0402                	.insn	2, 0x0402
    1798:	061c                	.insn	2, 0x061c
    179a:	0501                	.insn	2, 0x0501
    179c:	00040903          	lb	s2,0(s0)
    17a0:	0200                	.insn	2, 0x0200
    17a2:	1a04                	.insn	2, 0x1a04
    17a4:	0501                	.insn	2, 0x0501
    17a6:	00080903          	lb	s2,0(a6)
    17aa:	0200                	.insn	2, 0x0200
    17ac:	1c04                	.insn	2, 0x1c04
    17ae:	0106                	.insn	2, 0x0106
    17b0:	0305                	.insn	2, 0x0305
    17b2:	0009                	.insn	2, 0x0009
    17b4:	0100                	.insn	2, 0x0100
    17b6:	0305                	.insn	2, 0x0305
    17b8:	0809                	.insn	2, 0x0809
    17ba:	0600                	.insn	2, 0x0600
    17bc:	0501                	.insn	2, 0x0501
    17be:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    17c2:	0200                	.insn	2, 0x0200
    17c4:	0004                	.insn	2, 0x0004
    17c6:	0106                	.insn	2, 0x0106
    17c8:	0305                	.insn	2, 0x0305
    17ca:	0409                	.insn	2, 0x0409
    17cc:	0600                	.insn	2, 0x0600
    17ce:	0501                	.insn	2, 0x0501
    17d0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    17d4:	0200                	.insn	2, 0x0200
    17d6:	1d04                	.insn	2, 0x1d04
    17d8:	0501                	.insn	2, 0x0501
    17da:	00040903          	lb	s2,0(s0)
    17de:	0200                	.insn	2, 0x0200
    17e0:	0304                	.insn	2, 0x0304
    17e2:	0501                	.insn	2, 0x0501
    17e4:	00040903          	lb	s2,0(s0)
    17e8:	0200                	.insn	2, 0x0200
    17ea:	1e04                	.insn	2, 0x1e04
    17ec:	0501                	.insn	2, 0x0501
    17ee:	00080903          	lb	s2,0(a6)
    17f2:	0200                	.insn	2, 0x0200
    17f4:	0004                	.insn	2, 0x0004
    17f6:	0501                	.insn	2, 0x0501
    17f8:	00040903          	lb	s2,0(s0)
    17fc:	0501                	.insn	2, 0x0501
    17fe:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1802:	0200                	.insn	2, 0x0200
    1804:	0804                	.insn	2, 0x0804
    1806:	0501                	.insn	2, 0x0501
    1808:	00080903          	lb	s2,0(a6)
    180c:	0501                	.insn	2, 0x0501
    180e:	00040903          	lb	s2,0(s0)
    1812:	0200                	.insn	2, 0x0200
    1814:	0004                	.insn	2, 0x0004
    1816:	0518                	.insn	2, 0x0518
    1818:	00180903          	lb	s2,1(a6)
    181c:	0516                	.insn	2, 0x0516
    181e:	00040903          	lb	s2,0(s0)
    1822:	1806                	.insn	2, 0x1806
    1824:	0305                	.insn	2, 0x0305
    1826:	0009                	.insn	2, 0x0009
    1828:	0100                	.insn	2, 0x0100
    182a:	0305                	.insn	2, 0x0305
    182c:	0009                	.insn	2, 0x0009
    182e:	1800                	.insn	2, 0x1800
    1830:	0305                	.insn	2, 0x0305
    1832:	0009                	.insn	2, 0x0009
    1834:	0100                	.insn	2, 0x0100
    1836:	0305                	.insn	2, 0x0305
    1838:	0009                	.insn	2, 0x0009
    183a:	0100                	.insn	2, 0x0100
    183c:	0305                	.insn	2, 0x0305
    183e:	1809                	.insn	2, 0x1809
    1840:	0600                	.insn	2, 0x0600
    1842:	0501                	.insn	2, 0x0501
    1844:	00040903          	lb	s2,0(s0)
    1848:	0200                	.insn	2, 0x0200
    184a:	3704                	.insn	2, 0x3704
    184c:	0501                	.insn	2, 0x0501
    184e:	00080903          	lb	s2,0(a6)
    1852:	0501                	.insn	2, 0x0501
    1854:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1858:	0200                	.insn	2, 0x0200
    185a:	0004                	.insn	2, 0x0004
    185c:	0516                	.insn	2, 0x0516
    185e:	00100903          	lb	s2,1(zero) # 1 <exit-0x1011f>
    1862:	0501                	.insn	2, 0x0501
    1864:	00040903          	lb	s2,0(s0)
    1868:	0501                	.insn	2, 0x0501
    186a:	00040903          	lb	s2,0(s0)
    186e:	0501                	.insn	2, 0x0501
    1870:	00040903          	lb	s2,0(s0)
    1874:	0200                	.insn	2, 0x0200
    1876:	0d04                	.insn	2, 0x0d04
    1878:	0501                	.insn	2, 0x0501
    187a:	00040903          	lb	s2,0(s0)
    187e:	0501                	.insn	2, 0x0501
    1880:	00040903          	lb	s2,0(s0)
    1884:	0200                	.insn	2, 0x0200
    1886:	0704                	.insn	2, 0x0704
    1888:	1806                	.insn	2, 0x1806
    188a:	0305                	.insn	2, 0x0305
    188c:	0009                	.insn	2, 0x0009
    188e:	0000                	.insn	2, 0x0000
    1890:	0402                	.insn	2, 0x0402
    1892:	0100                	.insn	2, 0x0100
    1894:	0305                	.insn	2, 0x0305
    1896:	0009                	.insn	2, 0x0009
    1898:	0000                	.insn	2, 0x0000
    189a:	0402                	.insn	2, 0x0402
    189c:	05010607          	.insn	4, 0x05010607
    18a0:	00040903          	lb	s2,0(s0)
    18a4:	0200                	.insn	2, 0x0200
    18a6:	3504                	.insn	2, 0x3504
    18a8:	0106                	.insn	2, 0x0106
    18aa:	0305                	.insn	2, 0x0305
    18ac:	0009                	.insn	2, 0x0009
    18ae:	0000                	.insn	2, 0x0000
    18b0:	0402                	.insn	2, 0x0402
    18b2:	0100                	.insn	2, 0x0100
    18b4:	0305                	.insn	2, 0x0305
    18b6:	0009                	.insn	2, 0x0009
    18b8:	0000                	.insn	2, 0x0000
    18ba:	0402                	.insn	2, 0x0402
    18bc:	0635                	.insn	2, 0x0635
    18be:	0501                	.insn	2, 0x0501
    18c0:	00100903          	lb	s2,1(zero) # 1 <exit-0x1011f>
    18c4:	0200                	.insn	2, 0x0200
    18c6:	3604                	.insn	2, 0x3604
    18c8:	0106                	.insn	2, 0x0106
    18ca:	0305                	.insn	2, 0x0305
    18cc:	0009                	.insn	2, 0x0009
    18ce:	0000                	.insn	2, 0x0000
    18d0:	0402                	.insn	2, 0x0402
    18d2:	063c                	.insn	2, 0x063c
    18d4:	0501                	.insn	2, 0x0501
    18d6:	00040903          	lb	s2,0(s0)
    18da:	0200                	.insn	2, 0x0200
    18dc:	3604                	.insn	2, 0x3604
    18de:	0501                	.insn	2, 0x0501
    18e0:	00040903          	lb	s2,0(s0)
    18e4:	0200                	.insn	2, 0x0200
    18e6:	3c04                	.insn	2, 0x3c04
    18e8:	0501                	.insn	2, 0x0501
    18ea:	000c0903          	lb	s2,0(s8)
    18ee:	0200                	.insn	2, 0x0200
    18f0:	3e04                	.insn	2, 0x3e04
    18f2:	0501                	.insn	2, 0x0501
    18f4:	00040903          	lb	s2,0(s0)
    18f8:	0200                	.insn	2, 0x0200
    18fa:	0004                	.insn	2, 0x0004
    18fc:	0106                	.insn	2, 0x0106
    18fe:	0305                	.insn	2, 0x0305
    1900:	0009                	.insn	2, 0x0009
    1902:	0100                	.insn	2, 0x0100
    1904:	0305                	.insn	2, 0x0305
    1906:	0009                	.insn	2, 0x0009
    1908:	0000                	.insn	2, 0x0000
    190a:	0402                	.insn	2, 0x0402
    190c:	063e                	.insn	2, 0x063e
    190e:	0501                	.insn	2, 0x0501
    1910:	00080903          	lb	s2,0(a6)
    1914:	0200                	.insn	2, 0x0200
    1916:	3f04                	.insn	2, 0x3f04
    1918:	0106                	.insn	2, 0x0106
    191a:	0305                	.insn	2, 0x0305
    191c:	0009                	.insn	2, 0x0009
    191e:	0000                	.insn	2, 0x0000
    1920:	0402                	.insn	2, 0x0402
    1922:	0100                	.insn	2, 0x0100
    1924:	0305                	.insn	2, 0x0305
    1926:	0009                	.insn	2, 0x0009
    1928:	0100                	.insn	2, 0x0100
    192a:	0305                	.insn	2, 0x0305
    192c:	0009                	.insn	2, 0x0009
    192e:	0100                	.insn	2, 0x0100
    1930:	0305                	.insn	2, 0x0305
    1932:	0009                	.insn	2, 0x0009
    1934:	0000                	.insn	2, 0x0000
    1936:	0402                	.insn	2, 0x0402
    1938:	0642                	.insn	2, 0x0642
    193a:	0501                	.insn	2, 0x0501
    193c:	000c0903          	lb	s2,0(s8)
    1940:	0200                	.insn	2, 0x0200
    1942:	4604                	.insn	2, 0x4604
    1944:	0106                	.insn	2, 0x0106
    1946:	0305                	.insn	2, 0x0305
    1948:	0409                	.insn	2, 0x0409
    194a:	0000                	.insn	2, 0x0000
    194c:	0402                	.insn	2, 0x0402
    194e:	03050147          	.insn	4, 0x03050147
    1952:	0009                	.insn	2, 0x0009
    1954:	0100                	.insn	2, 0x0100
    1956:	0305                	.insn	2, 0x0305
    1958:	0409                	.insn	2, 0x0409
    195a:	0000                	.insn	2, 0x0000
    195c:	0402                	.insn	2, 0x0402
    195e:	064d                	.insn	2, 0x064d
    1960:	0501                	.insn	2, 0x0501
    1962:	00040903          	lb	s2,0(s0)
    1966:	0200                	.insn	2, 0x0200
    1968:	4704                	.insn	2, 0x4704
    196a:	0501                	.insn	2, 0x0501
    196c:	00040903          	lb	s2,0(s0)
    1970:	0200                	.insn	2, 0x0200
    1972:	4c04                	.insn	2, 0x4c04
    1974:	0501                	.insn	2, 0x0501
    1976:	000c0903          	lb	s2,0(s8)
    197a:	0200                	.insn	2, 0x0200
    197c:	3504                	.insn	2, 0x3504
    197e:	0501                	.insn	2, 0x0501
    1980:	00080903          	lb	s2,0(a6)
    1984:	0501                	.insn	2, 0x0501
    1986:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    198a:	0200                	.insn	2, 0x0200
    198c:	6404                	.insn	2, 0x6404
    198e:	0501                	.insn	2, 0x0501
    1990:	00040903          	lb	s2,0(s0)
    1994:	0501                	.insn	2, 0x0501
    1996:	00040903          	lb	s2,0(s0)
    199a:	0200                	.insn	2, 0x0200
    199c:	0504                	.insn	2, 0x0504
    199e:	0501                	.insn	2, 0x0501
    19a0:	00040903          	lb	s2,0(s0)
    19a4:	0200                	.insn	2, 0x0200
    19a6:	6404                	.insn	2, 0x6404
    19a8:	0501                	.insn	2, 0x0501
    19aa:	00080903          	lb	s2,0(a6)
    19ae:	0501                	.insn	2, 0x0501
    19b0:	02090003          	lb	zero,32(s2)
    19b4:	0c58                	.insn	2, 0x0c58
    19b6:	0001                	.insn	2, 0x0001
    19b8:	0000                	.insn	2, 0x0000
    19ba:	0000                	.insn	2, 0x0000
    19bc:	0100                	.insn	2, 0x0100
    19be:	4601                	.insn	2, 0x4601
    19c0:	0500000f          	fence	ow,unknown
    19c4:	0800                	.insn	2, 0x0800
    19c6:	3300                	.insn	2, 0x3300
    19c8:	0000                	.insn	2, 0x0000
    19ca:	0100                	.insn	2, 0x0100
    19cc:	0101                	.insn	2, 0x0101
    19ce:	f2f6                	.insn	2, 0xf2f6
    19d0:	000d                	.insn	2, 0x000d
    19d2:	0101                	.insn	2, 0x0101
    19d4:	0101                	.insn	2, 0x0101
    19d6:	0000                	.insn	2, 0x0000
    19d8:	0100                	.insn	2, 0x0100
    19da:	0000                	.insn	2, 0x0000
    19dc:	0101                	.insn	2, 0x0101
    19de:	1f01                	.insn	2, 0x1f01
    19e0:	0002                	.insn	2, 0x0002
    19e2:	0000                	.insn	2, 0x0000
    19e4:	9700                	.insn	2, 0x9700
    19e6:	0000                	.insn	2, 0x0000
    19e8:	0200                	.insn	2, 0x0200
    19ea:	1f01                	.insn	2, 0x1f01
    19ec:	0b02                	.insn	2, 0x0b02
    19ee:	0000fd03          	.insn	4, 0xfd03
    19f2:	0000                	.insn	2, 0x0000
    19f4:	0122                	.insn	2, 0x0122
    19f6:	0000                	.insn	2, 0x0000
    19f8:	bc01                	.insn	2, 0xbc01
    19fa:	0000                	.insn	2, 0x0000
    19fc:	0100                	.insn	2, 0x0100
    19fe:	0900                	.insn	2, 0x0900
    1a00:	5802                	.insn	2, 0x5802
    1a02:	010c                	.insn	2, 0x010c
    1a04:	0000                	.insn	2, 0x0000
    1a06:	0000                	.insn	2, 0x0000
    1a08:	3800                	.insn	2, 0x3800
    1a0a:	0105                	.insn	2, 0x0105
    1a0c:	0009                	.insn	2, 0x0009
    1a0e:	1800                	.insn	2, 0x1800
    1a10:	0305                	.insn	2, 0x0305
    1a12:	0009                	.insn	2, 0x0009
    1a14:	0100                	.insn	2, 0x0100
    1a16:	0305                	.insn	2, 0x0305
    1a18:	0009                	.insn	2, 0x0009
    1a1a:	0100                	.insn	2, 0x0100
    1a1c:	0d05                	.insn	2, 0x0d05
    1a1e:	0009                	.insn	2, 0x0009
    1a20:	1800                	.insn	2, 0x1800
    1a22:	0305                	.insn	2, 0x0305
    1a24:	0009                	.insn	2, 0x0009
    1a26:	0100                	.insn	2, 0x0100
    1a28:	0305                	.insn	2, 0x0305
    1a2a:	0009                	.insn	2, 0x0009
    1a2c:	0100                	.insn	2, 0x0100
    1a2e:	0305                	.insn	2, 0x0305
    1a30:	0009                	.insn	2, 0x0009
    1a32:	0100                	.insn	2, 0x0100
    1a34:	0305                	.insn	2, 0x0305
    1a36:	0009                	.insn	2, 0x0009
    1a38:	1800                	.insn	2, 0x1800
    1a3a:	0305                	.insn	2, 0x0305
    1a3c:	0009                	.insn	2, 0x0009
    1a3e:	0100                	.insn	2, 0x0100
    1a40:	0305                	.insn	2, 0x0305
    1a42:	0009                	.insn	2, 0x0009
    1a44:	0100                	.insn	2, 0x0100
    1a46:	0305                	.insn	2, 0x0305
    1a48:	0009                	.insn	2, 0x0009
    1a4a:	0100                	.insn	2, 0x0100
    1a4c:	0305                	.insn	2, 0x0305
    1a4e:	0009                	.insn	2, 0x0009
    1a50:	1800                	.insn	2, 0x1800
    1a52:	0305                	.insn	2, 0x0305
    1a54:	0009                	.insn	2, 0x0009
    1a56:	0100                	.insn	2, 0x0100
    1a58:	0305                	.insn	2, 0x0305
    1a5a:	0009                	.insn	2, 0x0009
    1a5c:	0100                	.insn	2, 0x0100
    1a5e:	0305                	.insn	2, 0x0305
    1a60:	0009                	.insn	2, 0x0009
    1a62:	0100                	.insn	2, 0x0100
    1a64:	0305                	.insn	2, 0x0305
    1a66:	0009                	.insn	2, 0x0009
    1a68:	1800                	.insn	2, 0x1800
    1a6a:	0305                	.insn	2, 0x0305
    1a6c:	0009                	.insn	2, 0x0009
    1a6e:	1900                	.insn	2, 0x1900
    1a70:	0305                	.insn	2, 0x0305
    1a72:	0009                	.insn	2, 0x0009
    1a74:	1800                	.insn	2, 0x1800
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
    1a92:	0600                	.insn	2, 0x0600
    1a94:	0518                	.insn	2, 0x0518
    1a96:	00040903          	lb	s2,0(s0)
    1a9a:	0516                	.insn	2, 0x0516
    1a9c:	00040903          	lb	s2,0(s0)
    1aa0:	0901050f          	.insn	4, 0x0901050f
    1aa4:	0004                	.insn	2, 0x0004
    1aa6:	051f 0903 0004      	.insn	6, 0x00040903051f
    1aac:	0518                	.insn	2, 0x0518
    1aae:	00040903          	lb	s2,0(s0)
    1ab2:	0516                	.insn	2, 0x0516
    1ab4:	00040903          	lb	s2,0(s0)
    1ab8:	0106                	.insn	2, 0x0106
    1aba:	0305                	.insn	2, 0x0305
    1abc:	0009                	.insn	2, 0x0009
    1abe:	0600                	.insn	2, 0x0600
    1ac0:	0518                	.insn	2, 0x0518
    1ac2:	00040903          	lb	s2,0(s0)
    1ac6:	050e                	.insn	2, 0x050e
    1ac8:	0901                	.insn	2, 0x0901
    1aca:	0008                	.insn	2, 0x0008
    1acc:	051f 0903 0008      	.insn	6, 0x00080903051f
    1ad2:	0519                	.insn	2, 0x0519
    1ad4:	00040903          	lb	s2,0(s0)
    1ad8:	0200                	.insn	2, 0x0200
    1ada:	0204                	.insn	2, 0x0204
    1adc:	0516                	.insn	2, 0x0516
    1ade:	00040903          	lb	s2,0(s0)
    1ae2:	0200                	.insn	2, 0x0200
    1ae4:	0004                	.insn	2, 0x0004
    1ae6:	0518                	.insn	2, 0x0518
    1ae8:	00040903          	lb	s2,0(s0)
    1aec:	0200                	.insn	2, 0x0200
    1aee:	0204                	.insn	2, 0x0204
    1af0:	0501                	.insn	2, 0x0501
    1af2:	00080903          	lb	s2,0(a6)
    1af6:	0200                	.insn	2, 0x0200
    1af8:	0004                	.insn	2, 0x0004
    1afa:	0516                	.insn	2, 0x0516
    1afc:	00040903          	lb	s2,0(s0)
    1b00:	0501                	.insn	2, 0x0501
    1b02:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1b06:	0516                	.insn	2, 0x0516
    1b08:	00040903          	lb	s2,0(s0)
    1b0c:	0106                	.insn	2, 0x0106
    1b0e:	0305                	.insn	2, 0x0305
    1b10:	0009                	.insn	2, 0x0009
    1b12:	0600                	.insn	2, 0x0600
    1b14:	0501                	.insn	2, 0x0501
    1b16:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1b1a:	0106                	.insn	2, 0x0106
    1b1c:	0305                	.insn	2, 0x0305
    1b1e:	0009                	.insn	2, 0x0009
    1b20:	0100                	.insn	2, 0x0100
    1b22:	0305                	.insn	2, 0x0305
    1b24:	0009                	.insn	2, 0x0009
    1b26:	0100                	.insn	2, 0x0100
    1b28:	0305                	.insn	2, 0x0305
    1b2a:	0009                	.insn	2, 0x0009
    1b2c:	0000                	.insn	2, 0x0000
    1b2e:	0402                	.insn	2, 0x0402
    1b30:	0102                	.insn	2, 0x0102
    1b32:	0305                	.insn	2, 0x0305
    1b34:	0409                	.insn	2, 0x0409
    1b36:	0000                	.insn	2, 0x0000
    1b38:	0402                	.insn	2, 0x0402
    1b3a:	0600                	.insn	2, 0x0600
    1b3c:	0901050f          	.insn	4, 0x0901050f
    1b40:	0008                	.insn	2, 0x0008
    1b42:	0200                	.insn	2, 0x0200
    1b44:	0204                	.insn	2, 0x0204
    1b46:	051f 0903 0004      	.insn	6, 0x00040903051f
    1b4c:	0200                	.insn	2, 0x0200
    1b4e:	0004                	.insn	2, 0x0004
    1b50:	0106                	.insn	2, 0x0106
    1b52:	0305                	.insn	2, 0x0305
    1b54:	0009                	.insn	2, 0x0009
    1b56:	0100                	.insn	2, 0x0100
    1b58:	0305                	.insn	2, 0x0305
    1b5a:	0009                	.insn	2, 0x0009
    1b5c:	1800                	.insn	2, 0x1800
    1b5e:	0305                	.insn	2, 0x0305
    1b60:	0009                	.insn	2, 0x0009
    1b62:	0100                	.insn	2, 0x0100
    1b64:	0305                	.insn	2, 0x0305
    1b66:	0009                	.insn	2, 0x0009
    1b68:	0100                	.insn	2, 0x0100
    1b6a:	0305                	.insn	2, 0x0305
    1b6c:	0009                	.insn	2, 0x0009
    1b6e:	0100                	.insn	2, 0x0100
    1b70:	0305                	.insn	2, 0x0305
    1b72:	0009                	.insn	2, 0x0009
    1b74:	0100                	.insn	2, 0x0100
    1b76:	0305                	.insn	2, 0x0305
    1b78:	0009                	.insn	2, 0x0009
    1b7a:	0100                	.insn	2, 0x0100
    1b7c:	0305                	.insn	2, 0x0305
    1b7e:	0009                	.insn	2, 0x0009
    1b80:	0100                	.insn	2, 0x0100
    1b82:	0305                	.insn	2, 0x0305
    1b84:	0009                	.insn	2, 0x0009
    1b86:	0100                	.insn	2, 0x0100
    1b88:	0305                	.insn	2, 0x0305
    1b8a:	0009                	.insn	2, 0x0009
    1b8c:	0100                	.insn	2, 0x0100
    1b8e:	0305                	.insn	2, 0x0305
    1b90:	0009                	.insn	2, 0x0009
    1b92:	0100                	.insn	2, 0x0100
    1b94:	0305                	.insn	2, 0x0305
    1b96:	0009                	.insn	2, 0x0009
    1b98:	0000                	.insn	2, 0x0000
    1b9a:	0402                	.insn	2, 0x0402
    1b9c:	0102                	.insn	2, 0x0102
    1b9e:	0305                	.insn	2, 0x0305
    1ba0:	0009                	.insn	2, 0x0009
    1ba2:	0000                	.insn	2, 0x0000
    1ba4:	0402                	.insn	2, 0x0402
    1ba6:	0100                	.insn	2, 0x0100
    1ba8:	0305                	.insn	2, 0x0305
    1baa:	0009                	.insn	2, 0x0009
    1bac:	0100                	.insn	2, 0x0100
    1bae:	0305                	.insn	2, 0x0305
    1bb0:	0009                	.insn	2, 0x0009
    1bb2:	1800                	.insn	2, 0x1800
    1bb4:	0305                	.insn	2, 0x0305
    1bb6:	0009                	.insn	2, 0x0009
    1bb8:	0100                	.insn	2, 0x0100
    1bba:	0305                	.insn	2, 0x0305
    1bbc:	0009                	.insn	2, 0x0009
    1bbe:	0000                	.insn	2, 0x0000
    1bc0:	0402                	.insn	2, 0x0402
    1bc2:	0105                	.insn	2, 0x0105
    1bc4:	0305                	.insn	2, 0x0305
    1bc6:	0009                	.insn	2, 0x0009
    1bc8:	0100                	.insn	2, 0x0100
    1bca:	0305                	.insn	2, 0x0305
    1bcc:	0009                	.insn	2, 0x0009
    1bce:	0100                	.insn	2, 0x0100
    1bd0:	0305                	.insn	2, 0x0305
    1bd2:	0009                	.insn	2, 0x0009
    1bd4:	0000                	.insn	2, 0x0000
    1bd6:	0402                	.insn	2, 0x0402
    1bd8:	0108                	.insn	2, 0x0108
    1bda:	0305                	.insn	2, 0x0305
    1bdc:	0009                	.insn	2, 0x0009
    1bde:	0100                	.insn	2, 0x0100
    1be0:	0305                	.insn	2, 0x0305
    1be2:	0009                	.insn	2, 0x0009
    1be4:	0100                	.insn	2, 0x0100
    1be6:	0305                	.insn	2, 0x0305
    1be8:	0009                	.insn	2, 0x0009
    1bea:	0000                	.insn	2, 0x0000
    1bec:	0402                	.insn	2, 0x0402
    1bee:	0305010b          	.insn	4, 0x0305010b
    1bf2:	0009                	.insn	2, 0x0009
    1bf4:	0100                	.insn	2, 0x0100
    1bf6:	0305                	.insn	2, 0x0305
    1bf8:	0009                	.insn	2, 0x0009
    1bfa:	0000                	.insn	2, 0x0000
    1bfc:	0402                	.insn	2, 0x0402
    1bfe:	060c                	.insn	2, 0x060c
    1c00:	0501                	.insn	2, 0x0501
    1c02:	00040903          	lb	s2,0(s0)
    1c06:	0200                	.insn	2, 0x0200
    1c08:	0b04                	.insn	2, 0x0b04
    1c0a:	0501                	.insn	2, 0x0501
    1c0c:	00040903          	lb	s2,0(s0)
    1c10:	0200                	.insn	2, 0x0200
    1c12:	0c04                	.insn	2, 0x0c04
    1c14:	0106                	.insn	2, 0x0106
    1c16:	0305                	.insn	2, 0x0305
    1c18:	0009                	.insn	2, 0x0009
    1c1a:	0000                	.insn	2, 0x0000
    1c1c:	0402                	.insn	2, 0x0402
    1c1e:	0100                	.insn	2, 0x0100
    1c20:	0305                	.insn	2, 0x0305
    1c22:	0009                	.insn	2, 0x0009
    1c24:	0100                	.insn	2, 0x0100
    1c26:	0305                	.insn	2, 0x0305
    1c28:	0009                	.insn	2, 0x0009
    1c2a:	0000                	.insn	2, 0x0000
    1c2c:	0402                	.insn	2, 0x0402
    1c2e:	060c                	.insn	2, 0x060c
    1c30:	0501                	.insn	2, 0x0501
    1c32:	00040903          	lb	s2,0(s0)
    1c36:	0200                	.insn	2, 0x0200
    1c38:	0e04                	.insn	2, 0x0e04
    1c3a:	0106                	.insn	2, 0x0106
    1c3c:	0305                	.insn	2, 0x0305
    1c3e:	0009                	.insn	2, 0x0009
    1c40:	0000                	.insn	2, 0x0000
    1c42:	0402                	.insn	2, 0x0402
    1c44:	0100                	.insn	2, 0x0100
    1c46:	0305                	.insn	2, 0x0305
    1c48:	0009                	.insn	2, 0x0009
    1c4a:	0000                	.insn	2, 0x0000
    1c4c:	0402                	.insn	2, 0x0402
    1c4e:	060e                	.insn	2, 0x060e
    1c50:	0501                	.insn	2, 0x0501
    1c52:	00040903          	lb	s2,0(s0)
    1c56:	0200                	.insn	2, 0x0200
    1c58:	1004                	.insn	2, 0x1004
    1c5a:	0106                	.insn	2, 0x0106
    1c5c:	0305                	.insn	2, 0x0305
    1c5e:	0409                	.insn	2, 0x0409
    1c60:	0000                	.insn	2, 0x0000
    1c62:	0402                	.insn	2, 0x0402
    1c64:	03050113          	addi	sp,a0,48
    1c68:	0009                	.insn	2, 0x0009
    1c6a:	0000                	.insn	2, 0x0000
    1c6c:	0402                	.insn	2, 0x0402
    1c6e:	0100                	.insn	2, 0x0100
    1c70:	0305                	.insn	2, 0x0305
    1c72:	0009                	.insn	2, 0x0009
    1c74:	0000                	.insn	2, 0x0000
    1c76:	0402                	.insn	2, 0x0402
    1c78:	05010613          	addi	a2,sp,80
    1c7c:	00040903          	lb	s2,0(s0)
    1c80:	0200                	.insn	2, 0x0200
    1c82:	0004                	.insn	2, 0x0004
    1c84:	0106                	.insn	2, 0x0106
    1c86:	0305                	.insn	2, 0x0305
    1c88:	0009                	.insn	2, 0x0009
    1c8a:	0000                	.insn	2, 0x0000
    1c8c:	0402                	.insn	2, 0x0402
    1c8e:	05010613          	addi	a2,sp,80
    1c92:	00040903          	lb	s2,0(s0)
    1c96:	0200                	.insn	2, 0x0200
    1c98:	1c04                	.insn	2, 0x1c04
    1c9a:	0106                	.insn	2, 0x0106
    1c9c:	0305                	.insn	2, 0x0305
    1c9e:	0409                	.insn	2, 0x0409
    1ca0:	0000                	.insn	2, 0x0000
    1ca2:	0402                	.insn	2, 0x0402
    1ca4:	0100                	.insn	2, 0x0100
    1ca6:	0305                	.insn	2, 0x0305
    1ca8:	0009                	.insn	2, 0x0009
    1caa:	0100                	.insn	2, 0x0100
    1cac:	0305                	.insn	2, 0x0305
    1cae:	0009                	.insn	2, 0x0009
    1cb0:	0000                	.insn	2, 0x0000
    1cb2:	0402                	.insn	2, 0x0402
    1cb4:	05010677          	.insn	4, 0x05010677
    1cb8:	00080903          	lb	s2,0(a6)
    1cbc:	0300                	.insn	2, 0x0300
    1cbe:	b204                	.insn	2, 0xb204
    1cc0:	0601                	.insn	2, 0x0601
    1cc2:	0501                	.insn	2, 0x0501
    1cc4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1cc8:	0200                	.insn	2, 0x0200
    1cca:	0004                	.insn	2, 0x0004
    1ccc:	0501                	.insn	2, 0x0501
    1cce:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1cd2:	0300                	.insn	2, 0x0300
    1cd4:	b204                	.insn	2, 0xb204
    1cd6:	0601                	.insn	2, 0x0601
    1cd8:	0501                	.insn	2, 0x0501
    1cda:	00040903          	lb	s2,0(s0)
    1cde:	0200                	.insn	2, 0x0200
    1ce0:	0004                	.insn	2, 0x0004
    1ce2:	0106                	.insn	2, 0x0106
    1ce4:	0305                	.insn	2, 0x0305
    1ce6:	0009                	.insn	2, 0x0009
    1ce8:	0100                	.insn	2, 0x0100
    1cea:	0305                	.insn	2, 0x0305
    1cec:	0009                	.insn	2, 0x0009
    1cee:	0000                	.insn	2, 0x0000
    1cf0:	01b20403          	lb	s0,27(tp) # 1b <exit-0x10105>
    1cf4:	0106                	.insn	2, 0x0106
    1cf6:	0305                	.insn	2, 0x0305
    1cf8:	1409                	.insn	2, 0x1409
    1cfa:	0100                	.insn	2, 0x0100
    1cfc:	0305                	.insn	2, 0x0305
    1cfe:	0c09                	.insn	2, 0x0c09
    1d00:	0100                	.insn	2, 0x0100
    1d02:	0305                	.insn	2, 0x0305
    1d04:	0409                	.insn	2, 0x0409
    1d06:	0100                	.insn	2, 0x0100
    1d08:	0305                	.insn	2, 0x0305
    1d0a:	0409                	.insn	2, 0x0409
    1d0c:	0000                	.insn	2, 0x0000
    1d0e:	0402                	.insn	2, 0x0402
    1d10:	061d                	.insn	2, 0x061d
    1d12:	0501                	.insn	2, 0x0501
    1d14:	00040903          	lb	s2,0(s0)
    1d18:	0106                	.insn	2, 0x0106
    1d1a:	0305                	.insn	2, 0x0305
    1d1c:	0409                	.insn	2, 0x0409
    1d1e:	0100                	.insn	2, 0x0100
    1d20:	0305                	.insn	2, 0x0305
    1d22:	0809                	.insn	2, 0x0809
    1d24:	0100                	.insn	2, 0x0100
    1d26:	0305                	.insn	2, 0x0305
    1d28:	0009                	.insn	2, 0x0009
    1d2a:	0000                	.insn	2, 0x0000
    1d2c:	0402                	.insn	2, 0x0402
    1d2e:	0611                	.insn	2, 0x0611
    1d30:	0501                	.insn	2, 0x0501
    1d32:	00040903          	lb	s2,0(s0)
    1d36:	0106                	.insn	2, 0x0106
    1d38:	0305                	.insn	2, 0x0305
    1d3a:	0409                	.insn	2, 0x0409
    1d3c:	0000                	.insn	2, 0x0000
    1d3e:	0402                	.insn	2, 0x0402
    1d40:	0501062b          	.insn	4, 0x0501062b
    1d44:	000c0903          	lb	s2,0(s8)
    1d48:	0200                	.insn	2, 0x0200
    1d4a:	0004                	.insn	2, 0x0004
    1d4c:	0501                	.insn	2, 0x0501
    1d4e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1d52:	0200                	.insn	2, 0x0200
    1d54:	3404                	.insn	2, 0x3404
    1d56:	0106                	.insn	2, 0x0106
    1d58:	0305                	.insn	2, 0x0305
    1d5a:	0409                	.insn	2, 0x0409
    1d5c:	0000                	.insn	2, 0x0000
    1d5e:	0402                	.insn	2, 0x0402
    1d60:	0305013f 00000409 	.insn	8, 0x04090305013f
    1d68:	0402                	.insn	2, 0x0402
    1d6a:	0134                	.insn	2, 0x0134
    1d6c:	0305                	.insn	2, 0x0305
    1d6e:	0409                	.insn	2, 0x0409
    1d70:	0000                	.insn	2, 0x0000
    1d72:	0402                	.insn	2, 0x0402
    1d74:	0635                	.insn	2, 0x0635
    1d76:	0501                	.insn	2, 0x0501
    1d78:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1d7c:	0200                	.insn	2, 0x0200
    1d7e:	3b04                	.insn	2, 0x3b04
    1d80:	0106                	.insn	2, 0x0106
    1d82:	0305                	.insn	2, 0x0305
    1d84:	0409                	.insn	2, 0x0409
    1d86:	0000                	.insn	2, 0x0000
    1d88:	0402                	.insn	2, 0x0402
    1d8a:	0135                	.insn	2, 0x0135
    1d8c:	0305                	.insn	2, 0x0305
    1d8e:	0409                	.insn	2, 0x0409
    1d90:	0000                	.insn	2, 0x0000
    1d92:	0402                	.insn	2, 0x0402
    1d94:	0305013b          	.insn	4, 0x0305013b
    1d98:	0409                	.insn	2, 0x0409
    1d9a:	0100                	.insn	2, 0x0100
    1d9c:	0305                	.insn	2, 0x0305
    1d9e:	0409                	.insn	2, 0x0409
    1da0:	0100                	.insn	2, 0x0100
    1da2:	0305                	.insn	2, 0x0305
    1da4:	0409                	.insn	2, 0x0409
    1da6:	0000                	.insn	2, 0x0000
    1da8:	0402                	.insn	2, 0x0402
    1daa:	013d                	.insn	2, 0x013d
    1dac:	0305                	.insn	2, 0x0305
    1dae:	0409                	.insn	2, 0x0409
    1db0:	0000                	.insn	2, 0x0000
    1db2:	0402                	.insn	2, 0x0402
    1db4:	0641                	.insn	2, 0x0641
    1db6:	0501                	.insn	2, 0x0501
    1db8:	00040903          	lb	s2,0(s0)
    1dbc:	0106                	.insn	2, 0x0106
    1dbe:	0305                	.insn	2, 0x0305
    1dc0:	0409                	.insn	2, 0x0409
    1dc2:	0000                	.insn	2, 0x0000
    1dc4:	0402                	.insn	2, 0x0402
    1dc6:	0501060f          	.insn	4, 0x0501060f
    1dca:	00040903          	lb	s2,0(s0)
    1dce:	0200                	.insn	2, 0x0200
    1dd0:	4304                	.insn	2, 0x4304
    1dd2:	0501                	.insn	2, 0x0501
    1dd4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1dd8:	0200                	.insn	2, 0x0200
    1dda:	0004                	.insn	2, 0x0004
    1ddc:	0501                	.insn	2, 0x0501
    1dde:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1de2:	0501                	.insn	2, 0x0501
    1de4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1de8:	0200                	.insn	2, 0x0200
    1dea:	4304                	.insn	2, 0x4304
    1dec:	0106                	.insn	2, 0x0106
    1dee:	0305                	.insn	2, 0x0305
    1df0:	0409                	.insn	2, 0x0409
    1df2:	0000                	.insn	2, 0x0000
    1df4:	0402                	.insn	2, 0x0402
    1df6:	0645                	.insn	2, 0x0645
    1df8:	0501                	.insn	2, 0x0501
    1dfa:	00040903          	lb	s2,0(s0)
    1dfe:	0200                	.insn	2, 0x0200
    1e00:	4804                	.insn	2, 0x4804
    1e02:	0501                	.insn	2, 0x0501
    1e04:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1e08:	0200                	.insn	2, 0x0200
    1e0a:	0004                	.insn	2, 0x0004
    1e0c:	0501                	.insn	2, 0x0501
    1e0e:	00040903          	lb	s2,0(s0)
    1e12:	0501                	.insn	2, 0x0501
    1e14:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1e18:	0200                	.insn	2, 0x0200
    1e1a:	4804                	.insn	2, 0x4804
    1e1c:	0106                	.insn	2, 0x0106
    1e1e:	0305                	.insn	2, 0x0305
    1e20:	0409                	.insn	2, 0x0409
    1e22:	0000                	.insn	2, 0x0000
    1e24:	0402                	.insn	2, 0x0402
    1e26:	0651                	.insn	2, 0x0651
    1e28:	0501                	.insn	2, 0x0501
    1e2a:	00040903          	lb	s2,0(s0)
    1e2e:	0200                	.insn	2, 0x0200
    1e30:	0004                	.insn	2, 0x0004
    1e32:	0501                	.insn	2, 0x0501
    1e34:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1e38:	0200                	.insn	2, 0x0200
    1e3a:	4304                	.insn	2, 0x4304
    1e3c:	0106                	.insn	2, 0x0106
    1e3e:	0305                	.insn	2, 0x0305
    1e40:	0409                	.insn	2, 0x0409
    1e42:	0100                	.insn	2, 0x0100
    1e44:	0305                	.insn	2, 0x0305
    1e46:	0409                	.insn	2, 0x0409
    1e48:	0000                	.insn	2, 0x0000
    1e4a:	0402                	.insn	2, 0x0402
    1e4c:	0652                	.insn	2, 0x0652
    1e4e:	0501                	.insn	2, 0x0501
    1e50:	00040903          	lb	s2,0(s0)
    1e54:	0106                	.insn	2, 0x0106
    1e56:	0305                	.insn	2, 0x0305
    1e58:	0409                	.insn	2, 0x0409
    1e5a:	0000                	.insn	2, 0x0000
    1e5c:	0402                	.insn	2, 0x0402
    1e5e:	010e                	.insn	2, 0x010e
    1e60:	0305                	.insn	2, 0x0305
    1e62:	0409                	.insn	2, 0x0409
    1e64:	0100                	.insn	2, 0x0100
    1e66:	0305                	.insn	2, 0x0305
    1e68:	0409                	.insn	2, 0x0409
    1e6a:	0000                	.insn	2, 0x0000
    1e6c:	0402                	.insn	2, 0x0402
    1e6e:	0646                	.insn	2, 0x0646
    1e70:	0501                	.insn	2, 0x0501
    1e72:	00040903          	lb	s2,0(s0)
    1e76:	0106                	.insn	2, 0x0106
    1e78:	0305                	.insn	2, 0x0305
    1e7a:	0409                	.insn	2, 0x0409
    1e7c:	0000                	.insn	2, 0x0000
    1e7e:	0402                	.insn	2, 0x0402
    1e80:	0160                	.insn	2, 0x0160
    1e82:	0305                	.insn	2, 0x0305
    1e84:	0809                	.insn	2, 0x0809
    1e86:	0000                	.insn	2, 0x0000
    1e88:	0402                	.insn	2, 0x0402
    1e8a:	03050143          	.insn	4, 0x03050143
    1e8e:	0409                	.insn	2, 0x0409
    1e90:	0000                	.insn	2, 0x0000
    1e92:	0402                	.insn	2, 0x0402
    1e94:	0660                	.insn	2, 0x0660
    1e96:	0501                	.insn	2, 0x0501
    1e98:	00040903          	lb	s2,0(s0)
    1e9c:	0200                	.insn	2, 0x0200
    1e9e:	0004                	.insn	2, 0x0004
    1ea0:	0501                	.insn	2, 0x0501
    1ea2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1ea6:	0200                	.insn	2, 0x0200
    1ea8:	6904                	.insn	2, 0x6904
    1eaa:	0106                	.insn	2, 0x0106
    1eac:	0305                	.insn	2, 0x0305
    1eae:	0409                	.insn	2, 0x0409
    1eb0:	0000                	.insn	2, 0x0000
    1eb2:	0402                	.insn	2, 0x0402
    1eb4:	0174                	.insn	2, 0x0174
    1eb6:	0305                	.insn	2, 0x0305
    1eb8:	0409                	.insn	2, 0x0409
    1eba:	0000                	.insn	2, 0x0000
    1ebc:	0402                	.insn	2, 0x0402
    1ebe:	0169                	.insn	2, 0x0169
    1ec0:	0305                	.insn	2, 0x0305
    1ec2:	0409                	.insn	2, 0x0409
    1ec4:	0000                	.insn	2, 0x0000
    1ec6:	0402                	.insn	2, 0x0402
    1ec8:	066a                	.insn	2, 0x066a
    1eca:	0501                	.insn	2, 0x0501
    1ecc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1ed0:	0200                	.insn	2, 0x0200
    1ed2:	7004                	.insn	2, 0x7004
    1ed4:	0106                	.insn	2, 0x0106
    1ed6:	0305                	.insn	2, 0x0305
    1ed8:	0409                	.insn	2, 0x0409
    1eda:	0000                	.insn	2, 0x0000
    1edc:	0402                	.insn	2, 0x0402
    1ede:	016a                	.insn	2, 0x016a
    1ee0:	0305                	.insn	2, 0x0305
    1ee2:	0409                	.insn	2, 0x0409
    1ee4:	0000                	.insn	2, 0x0000
    1ee6:	0402                	.insn	2, 0x0402
    1ee8:	0170                	.insn	2, 0x0170
    1eea:	0305                	.insn	2, 0x0305
    1eec:	0409                	.insn	2, 0x0409
    1eee:	0100                	.insn	2, 0x0100
    1ef0:	0305                	.insn	2, 0x0305
    1ef2:	0409                	.insn	2, 0x0409
    1ef4:	0100                	.insn	2, 0x0100
    1ef6:	0305                	.insn	2, 0x0305
    1ef8:	0409                	.insn	2, 0x0409
    1efa:	0000                	.insn	2, 0x0000
    1efc:	0402                	.insn	2, 0x0402
    1efe:	0172                	.insn	2, 0x0172
    1f00:	0305                	.insn	2, 0x0305
    1f02:	0409                	.insn	2, 0x0409
    1f04:	0000                	.insn	2, 0x0000
    1f06:	0402                	.insn	2, 0x0402
    1f08:	0676                	.insn	2, 0x0676
    1f0a:	0501                	.insn	2, 0x0501
    1f0c:	00080903          	lb	s2,0(a6)
    1f10:	0200                	.insn	2, 0x0200
    1f12:	4404                	.insn	2, 0x4404
    1f14:	0501                	.insn	2, 0x0501
    1f16:	00080903          	lb	s2,0(a6)
    1f1a:	0106                	.insn	2, 0x0106
    1f1c:	0305                	.insn	2, 0x0305
    1f1e:	0409                	.insn	2, 0x0409
    1f20:	0000                	.insn	2, 0x0000
    1f22:	0402                	.insn	2, 0x0402
    1f24:	0678                	.insn	2, 0x0678
    1f26:	0501                	.insn	2, 0x0501
    1f28:	00040903          	lb	s2,0(s0)
    1f2c:	0200                	.insn	2, 0x0200
    1f2e:	7a04                	.insn	2, 0x7a04
    1f30:	0501                	.insn	2, 0x0501
    1f32:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f36:	0200                	.insn	2, 0x0200
    1f38:	0004                	.insn	2, 0x0004
    1f3a:	0501                	.insn	2, 0x0501
    1f3c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f40:	0200                	.insn	2, 0x0200
    1f42:	7a04                	.insn	2, 0x7a04
    1f44:	0106                	.insn	2, 0x0106
    1f46:	0305                	.insn	2, 0x0305
    1f48:	0409                	.insn	2, 0x0409
    1f4a:	0000                	.insn	2, 0x0000
    1f4c:	0402                	.insn	2, 0x0402
    1f4e:	067d                	.insn	2, 0x067d
    1f50:	0501                	.insn	2, 0x0501
    1f52:	00040903          	lb	s2,0(s0)
    1f56:	0300                	.insn	2, 0x0300
    1f58:	8304                	.insn	2, 0x8304
    1f5a:	0101                	.insn	2, 0x0101
    1f5c:	0305                	.insn	2, 0x0305
    1f5e:	0009                	.insn	2, 0x0009
    1f60:	0000                	.insn	2, 0x0000
    1f62:	0402                	.insn	2, 0x0402
    1f64:	0100                	.insn	2, 0x0100
    1f66:	0305                	.insn	2, 0x0305
    1f68:	0009                	.insn	2, 0x0009
    1f6a:	0000                	.insn	2, 0x0000
    1f6c:	01830403          	lb	s0,24(t1)
    1f70:	0106                	.insn	2, 0x0106
    1f72:	0305                	.insn	2, 0x0305
    1f74:	0409                	.insn	2, 0x0409
    1f76:	0000                	.insn	2, 0x0000
    1f78:	0402                	.insn	2, 0x0402
    1f7a:	0600                	.insn	2, 0x0600
    1f7c:	0501                	.insn	2, 0x0501
    1f7e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1f82:	0300                	.insn	2, 0x0300
    1f84:	8304                	.insn	2, 0x8304
    1f86:	0601                	.insn	2, 0x0601
    1f88:	0501                	.insn	2, 0x0501
    1f8a:	00040903          	lb	s2,0(s0)
    1f8e:	0501                	.insn	2, 0x0501
    1f90:	00040903          	lb	s2,0(s0)
    1f94:	0300                	.insn	2, 0x0300
    1f96:	8504                	.insn	2, 0x8504
    1f98:	0601                	.insn	2, 0x0601
    1f9a:	0501                	.insn	2, 0x0501
    1f9c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1fa0:	0200                	.insn	2, 0x0200
    1fa2:	0004                	.insn	2, 0x0004
    1fa4:	0501                	.insn	2, 0x0501
    1fa6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    1faa:	0300                	.insn	2, 0x0300
    1fac:	8704                	.insn	2, 0x8704
    1fae:	0101                	.insn	2, 0x0101
    1fb0:	0305                	.insn	2, 0x0305
    1fb2:	0009                	.insn	2, 0x0009
    1fb4:	0000                	.insn	2, 0x0000
    1fb6:	0402                	.insn	2, 0x0402
    1fb8:	0100                	.insn	2, 0x0100
    1fba:	0305                	.insn	2, 0x0305
    1fbc:	0009                	.insn	2, 0x0009
    1fbe:	0100                	.insn	2, 0x0100
    1fc0:	0305                	.insn	2, 0x0305
    1fc2:	0009                	.insn	2, 0x0009
    1fc4:	0100                	.insn	2, 0x0100
    1fc6:	0305                	.insn	2, 0x0305
    1fc8:	0009                	.insn	2, 0x0009
    1fca:	1800                	.insn	2, 0x1800
    1fcc:	0305                	.insn	2, 0x0305
    1fce:	0009                	.insn	2, 0x0009
    1fd0:	0100                	.insn	2, 0x0100
    1fd2:	0305                	.insn	2, 0x0305
    1fd4:	0009                	.insn	2, 0x0009
    1fd6:	0100                	.insn	2, 0x0100
    1fd8:	0305                	.insn	2, 0x0305
    1fda:	0009                	.insn	2, 0x0009
    1fdc:	0000                	.insn	2, 0x0000
    1fde:	0402                	.insn	2, 0x0402
    1fe0:	011c                	.insn	2, 0x011c
    1fe2:	0305                	.insn	2, 0x0305
    1fe4:	0009                	.insn	2, 0x0009
    1fe6:	0100                	.insn	2, 0x0100
    1fe8:	0305                	.insn	2, 0x0305
    1fea:	0009                	.insn	2, 0x0009
    1fec:	0000                	.insn	2, 0x0000
    1fee:	0402                	.insn	2, 0x0402
    1ff0:	0125                	.insn	2, 0x0125
    1ff2:	0305                	.insn	2, 0x0305
    1ff4:	0009                	.insn	2, 0x0009
    1ff6:	0100                	.insn	2, 0x0100
    1ff8:	0305                	.insn	2, 0x0305
    1ffa:	0009                	.insn	2, 0x0009
    1ffc:	0000                	.insn	2, 0x0000
    1ffe:	0402                	.insn	2, 0x0402
    2000:	012e                	.insn	2, 0x012e
    2002:	0305                	.insn	2, 0x0305
    2004:	0009                	.insn	2, 0x0009
    2006:	0000                	.insn	2, 0x0000
    2008:	0402                	.insn	2, 0x0402
    200a:	0305013f 01000009 	.insn	8, 0x010000090305013f
    2012:	0305                	.insn	2, 0x0305
    2014:	0c09                	.insn	2, 0x0c09
    2016:	0600                	.insn	2, 0x0600
    2018:	0501                	.insn	2, 0x0501
    201a:	00080903          	lb	s2,0(a6)
    201e:	0200                	.insn	2, 0x0200
    2020:	0004                	.insn	2, 0x0004
    2022:	0106                	.insn	2, 0x0106
    2024:	0305                	.insn	2, 0x0305
    2026:	0009                	.insn	2, 0x0009
    2028:	0000                	.insn	2, 0x0000
    202a:	01850403          	lb	s0,24(a0)
    202e:	1606                	.insn	2, 0x1606
    2030:	0305                	.insn	2, 0x0305
    2032:	0409                	.insn	2, 0x0409
    2034:	0100                	.insn	2, 0x0100
    2036:	0305                	.insn	2, 0x0305
    2038:	0009                	.insn	2, 0x0009
    203a:	0000                	.insn	2, 0x0000
    203c:	0402                	.insn	2, 0x0402
    203e:	064a                	.insn	2, 0x064a
    2040:	0518                	.insn	2, 0x0518
    2042:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2046:	0501                	.insn	2, 0x0501
    2048:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    204c:	0501                	.insn	2, 0x0501
    204e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2052:	0501                	.insn	2, 0x0501
    2054:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2058:	0501                	.insn	2, 0x0501
    205a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    205e:	0200                	.insn	2, 0x0200
    2060:	0004                	.insn	2, 0x0004
    2062:	0501                	.insn	2, 0x0501
    2064:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2068:	0501                	.insn	2, 0x0501
    206a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    206e:	0200                	.insn	2, 0x0200
    2070:	4a04                	.insn	2, 0x4a04
    2072:	0106                	.insn	2, 0x0106
    2074:	0305                	.insn	2, 0x0305
    2076:	0809                	.insn	2, 0x0809
    2078:	0100                	.insn	2, 0x0100
    207a:	0305                	.insn	2, 0x0305
    207c:	1009                	.insn	2, 0x1009
    207e:	0000                	.insn	2, 0x0000
    2080:	0402                	.insn	2, 0x0402
    2082:	0600                	.insn	2, 0x0600
    2084:	0501                	.insn	2, 0x0501
    2086:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    208a:	0106                	.insn	2, 0x0106
    208c:	0305                	.insn	2, 0x0305
    208e:	0009                	.insn	2, 0x0009
    2090:	0000                	.insn	2, 0x0000
    2092:	0402                	.insn	2, 0x0402
    2094:	064a                	.insn	2, 0x064a
    2096:	0501                	.insn	2, 0x0501
    2098:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    209c:	0501                	.insn	2, 0x0501
    209e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20a2:	0200                	.insn	2, 0x0200
    20a4:	0004                	.insn	2, 0x0004
    20a6:	0518                	.insn	2, 0x0518
    20a8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20ac:	0501                	.insn	2, 0x0501
    20ae:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20b2:	0501                	.insn	2, 0x0501
    20b4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20b8:	0519                	.insn	2, 0x0519
    20ba:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20be:	1806                	.insn	2, 0x1806
    20c0:	0105                	.insn	2, 0x0105
    20c2:	0809                	.insn	2, 0x0809
    20c4:	0100                	.insn	2, 0x0100
    20c6:	0105                	.insn	2, 0x0105
    20c8:	0809                	.insn	2, 0x0809
    20ca:	0100                	.insn	2, 0x0100
    20cc:	0105                	.insn	2, 0x0105
    20ce:	0c09                	.insn	2, 0x0c09
    20d0:	0000                	.insn	2, 0x0000
    20d2:	0402                	.insn	2, 0x0402
    20d4:	0512067b          	.insn	4, 0x0512067b
    20d8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20dc:	0501                	.insn	2, 0x0501
    20de:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    20e2:	0300                	.insn	2, 0x0300
    20e4:	8f04                	.insn	2, 0x8f04
    20e6:	0101                	.insn	2, 0x0101
    20e8:	0305                	.insn	2, 0x0305
    20ea:	0009                	.insn	2, 0x0009
    20ec:	0100                	.insn	2, 0x0100
    20ee:	0305                	.insn	2, 0x0305
    20f0:	0009                	.insn	2, 0x0009
    20f2:	0100                	.insn	2, 0x0100
    20f4:	0305                	.insn	2, 0x0305
    20f6:	0009                	.insn	2, 0x0009
    20f8:	0000                	.insn	2, 0x0000
    20fa:	01960403          	lb	s0,25(a2) # 5011573 <__BSS_END__+0x4ffc583>
    20fe:	0501                	.insn	2, 0x0501
    2100:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2104:	0501                	.insn	2, 0x0501
    2106:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    210a:	0200                	.insn	2, 0x0200
    210c:	0004                	.insn	2, 0x0004
    210e:	0501                	.insn	2, 0x0501
    2110:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2114:	0300                	.insn	2, 0x0300
    2116:	9604                	.insn	2, 0x9604
    2118:	0601                	.insn	2, 0x0601
    211a:	0501                	.insn	2, 0x0501
    211c:	00040903          	lb	s2,0(s0)
    2120:	0501                	.insn	2, 0x0501
    2122:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2126:	0300                	.insn	2, 0x0300
    2128:	d104                	.insn	2, 0xd104
    212a:	0602                	.insn	2, 0x0602
    212c:	0501                	.insn	2, 0x0501
    212e:	00040903          	lb	s2,0(s0)
    2132:	0200                	.insn	2, 0x0200
    2134:	3204                	.insn	2, 0x3204
    2136:	0106                	.insn	2, 0x0106
    2138:	0305                	.insn	2, 0x0305
    213a:	0409                	.insn	2, 0x0409
    213c:	0100                	.insn	2, 0x0100
    213e:	0305                	.insn	2, 0x0305
    2140:	0409                	.insn	2, 0x0409
    2142:	0000                	.insn	2, 0x0000
    2144:	0402                	.insn	2, 0x0402
    2146:	0679                	.insn	2, 0x0679
    2148:	0501                	.insn	2, 0x0501
    214a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    214e:	0200                	.insn	2, 0x0200
    2150:	0004                	.insn	2, 0x0004
    2152:	0501                	.insn	2, 0x0501
    2154:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2158:	0501                	.insn	2, 0x0501
    215a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    215e:	0501                	.insn	2, 0x0501
    2160:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2164:	0200                	.insn	2, 0x0200
    2166:	7904                	.insn	2, 0x7904
    2168:	0106                	.insn	2, 0x0106
    216a:	0305                	.insn	2, 0x0305
    216c:	0c09                	.insn	2, 0x0c09
    216e:	0100                	.insn	2, 0x0100
    2170:	0305                	.insn	2, 0x0305
    2172:	0409                	.insn	2, 0x0409
    2174:	0100                	.insn	2, 0x0100
    2176:	0305                	.insn	2, 0x0305
    2178:	0409                	.insn	2, 0x0409
    217a:	0100                	.insn	2, 0x0100
    217c:	0305                	.insn	2, 0x0305
    217e:	0009                	.insn	2, 0x0009
    2180:	0000                	.insn	2, 0x0000
    2182:	0402                	.insn	2, 0x0402
    2184:	061c                	.insn	2, 0x061c
    2186:	0518                	.insn	2, 0x0518
    2188:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    218c:	0501                	.insn	2, 0x0501
    218e:	00080903          	lb	s2,0(a6)
    2192:	0200                	.insn	2, 0x0200
    2194:	1d04                	.insn	2, 0x1d04
    2196:	0501                	.insn	2, 0x0501
    2198:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    219c:	0200                	.insn	2, 0x0200
    219e:	0004                	.insn	2, 0x0004
    21a0:	0501                	.insn	2, 0x0501
    21a2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21a6:	0501                	.insn	2, 0x0501
    21a8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21ac:	0501                	.insn	2, 0x0501
    21ae:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21b2:	0200                	.insn	2, 0x0200
    21b4:	2004                	.insn	2, 0x2004
    21b6:	0106                	.insn	2, 0x0106
    21b8:	0305                	.insn	2, 0x0305
    21ba:	0c09                	.insn	2, 0x0c09
    21bc:	0000                	.insn	2, 0x0000
    21be:	0402                	.insn	2, 0x0402
    21c0:	0624                	.insn	2, 0x0624
    21c2:	0501                	.insn	2, 0x0501
    21c4:	00040903          	lb	s2,0(s0)
    21c8:	0200                	.insn	2, 0x0200
    21ca:	2504                	.insn	2, 0x2504
    21cc:	0501                	.insn	2, 0x0501
    21ce:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21d2:	0501                	.insn	2, 0x0501
    21d4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21d8:	0200                	.insn	2, 0x0200
    21da:	2e04                	.insn	2, 0x2e04
    21dc:	0501                	.insn	2, 0x0501
    21de:	00080903          	lb	s2,0(a6)
    21e2:	0200                	.insn	2, 0x0200
    21e4:	2f04                	.insn	2, 0x2f04
    21e6:	0501                	.insn	2, 0x0501
    21e8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21ec:	0200                	.insn	2, 0x0200
    21ee:	0004                	.insn	2, 0x0004
    21f0:	0501                	.insn	2, 0x0501
    21f2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    21f6:	0200                	.insn	2, 0x0200
    21f8:	2f04                	.insn	2, 0x2f04
    21fa:	0106                	.insn	2, 0x0106
    21fc:	0305                	.insn	2, 0x0305
    21fe:	0409                	.insn	2, 0x0409
    2200:	0000                	.insn	2, 0x0000
    2202:	0402                	.insn	2, 0x0402
    2204:	0600                	.insn	2, 0x0600
    2206:	0501                	.insn	2, 0x0501
    2208:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    220c:	0200                	.insn	2, 0x0200
    220e:	2f04                	.insn	2, 0x2f04
    2210:	0106                	.insn	2, 0x0106
    2212:	0305                	.insn	2, 0x0305
    2214:	0809                	.insn	2, 0x0809
    2216:	0000                	.insn	2, 0x0000
    2218:	0402                	.insn	2, 0x0402
    221a:	0501063f 00000903 	.insn	8, 0x09030501063f
    2222:	0501                	.insn	2, 0x0501
    2224:	000c0903          	lb	s2,0(s8)
    2228:	0106                	.insn	2, 0x0106
    222a:	0305                	.insn	2, 0x0305
    222c:	0809                	.insn	2, 0x0809
    222e:	0000                	.insn	2, 0x0000
    2230:	0402                	.insn	2, 0x0402
    2232:	0600                	.insn	2, 0x0600
    2234:	0501                	.insn	2, 0x0501
    2236:	00040903          	lb	s2,0(s0)
    223a:	0106                	.insn	2, 0x0106
    223c:	0305                	.insn	2, 0x0305
    223e:	0009                	.insn	2, 0x0009
    2240:	0000                	.insn	2, 0x0000
    2242:	0402                	.insn	2, 0x0402
    2244:	060d                	.insn	2, 0x060d
    2246:	0516                	.insn	2, 0x0516
    2248:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    224c:	0200                	.insn	2, 0x0200
    224e:	0004                	.insn	2, 0x0004
    2250:	0501                	.insn	2, 0x0501
    2252:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2256:	0200                	.insn	2, 0x0200
    2258:	0d04                	.insn	2, 0x0d04
    225a:	0106                	.insn	2, 0x0106
    225c:	0305                	.insn	2, 0x0305
    225e:	0409                	.insn	2, 0x0409
    2260:	0000                	.insn	2, 0x0000
    2262:	01c30403          	lb	s0,28(t1)
    2266:	0106                	.insn	2, 0x0106
    2268:	0305                	.insn	2, 0x0305
    226a:	0009                	.insn	2, 0x0009
    226c:	0000                	.insn	2, 0x0000
    226e:	0402                	.insn	2, 0x0402
    2270:	0100                	.insn	2, 0x0100
    2272:	0305                	.insn	2, 0x0305
    2274:	0009                	.insn	2, 0x0009
    2276:	0100                	.insn	2, 0x0100
    2278:	0305                	.insn	2, 0x0305
    227a:	0009                	.insn	2, 0x0009
    227c:	0000                	.insn	2, 0x0000
    227e:	01c30403          	lb	s0,28(t1)
    2282:	0106                	.insn	2, 0x0106
    2284:	0305                	.insn	2, 0x0305
    2286:	0409                	.insn	2, 0x0409
    2288:	0000                	.insn	2, 0x0000
    228a:	01c50403          	lb	s0,28(a0)
    228e:	0106                	.insn	2, 0x0106
    2290:	0305                	.insn	2, 0x0305
    2292:	0409                	.insn	2, 0x0409
    2294:	0000                	.insn	2, 0x0000
    2296:	01c80403          	lb	s0,28(a6)
    229a:	0501                	.insn	2, 0x0501
    229c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    22a0:	0200                	.insn	2, 0x0200
    22a2:	0004                	.insn	2, 0x0004
    22a4:	0501                	.insn	2, 0x0501
    22a6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    22aa:	0300                	.insn	2, 0x0300
    22ac:	c804                	.insn	2, 0xc804
    22ae:	0601                	.insn	2, 0x0601
    22b0:	0501                	.insn	2, 0x0501
    22b2:	00040903          	lb	s2,0(s0)
    22b6:	0200                	.insn	2, 0x0200
    22b8:	0004                	.insn	2, 0x0004
    22ba:	0106                	.insn	2, 0x0106
    22bc:	0305                	.insn	2, 0x0305
    22be:	0009                	.insn	2, 0x0009
    22c0:	0000                	.insn	2, 0x0000
    22c2:	01c80403          	lb	s0,28(a6)
    22c6:	0106                	.insn	2, 0x0106
    22c8:	0305                	.insn	2, 0x0305
    22ca:	0409                	.insn	2, 0x0409
    22cc:	0000                	.insn	2, 0x0000
    22ce:	01d10403          	lb	s0,29(sp)
    22d2:	0106                	.insn	2, 0x0106
    22d4:	0305                	.insn	2, 0x0305
    22d6:	0409                	.insn	2, 0x0409
    22d8:	0000                	.insn	2, 0x0000
    22da:	0402                	.insn	2, 0x0402
    22dc:	0100                	.insn	2, 0x0100
    22de:	0305                	.insn	2, 0x0305
    22e0:	0009                	.insn	2, 0x0009
    22e2:	0100                	.insn	2, 0x0100
    22e4:	0305                	.insn	2, 0x0305
    22e6:	0009                	.insn	2, 0x0009
    22e8:	0000                	.insn	2, 0x0000
    22ea:	02ac0403          	lb	s0,42(s8)
    22ee:	0106                	.insn	2, 0x0106
    22f0:	0305                	.insn	2, 0x0305
    22f2:	0809                	.insn	2, 0x0809
    22f4:	0000                	.insn	2, 0x0000
    22f6:	02e70403          	lb	s0,46(a4)
    22fa:	0106                	.insn	2, 0x0106
    22fc:	0305                	.insn	2, 0x0305
    22fe:	0009                	.insn	2, 0x0009
    2300:	0100                	.insn	2, 0x0100
    2302:	0305                	.insn	2, 0x0305
    2304:	0c09                	.insn	2, 0x0c09
    2306:	0600                	.insn	2, 0x0600
    2308:	0501                	.insn	2, 0x0501
    230a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    230e:	0300                	.insn	2, 0x0300
    2310:	d204                	.insn	2, 0xd204
    2312:	0601                	.insn	2, 0x0601
    2314:	0501                	.insn	2, 0x0501
    2316:	00040903          	lb	s2,0(s0)
    231a:	0106                	.insn	2, 0x0106
    231c:	0305                	.insn	2, 0x0305
    231e:	0409                	.insn	2, 0x0409
    2320:	0000                	.insn	2, 0x0000
    2322:	0402                	.insn	2, 0x0402
    2324:	0600                	.insn	2, 0x0600
    2326:	0501                	.insn	2, 0x0501
    2328:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    232c:	0300                	.insn	2, 0x0300
    232e:	e904                	.insn	2, 0xe904
    2330:	0601                	.insn	2, 0x0601
    2332:	0501                	.insn	2, 0x0501
    2334:	00040903          	lb	s2,0(s0)
    2338:	0300                	.insn	2, 0x0300
    233a:	f404                	.insn	2, 0xf404
    233c:	0101                	.insn	2, 0x0101
    233e:	0305                	.insn	2, 0x0305
    2340:	0409                	.insn	2, 0x0409
    2342:	0000                	.insn	2, 0x0000
    2344:	01e90403          	lb	s0,30(s2)
    2348:	0501                	.insn	2, 0x0501
    234a:	00040903          	lb	s2,0(s0)
    234e:	0300                	.insn	2, 0x0300
    2350:	ea04                	.insn	2, 0xea04
    2352:	0601                	.insn	2, 0x0601
    2354:	0501                	.insn	2, 0x0501
    2356:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    235a:	0300                	.insn	2, 0x0300
    235c:	f004                	.insn	2, 0xf004
    235e:	0601                	.insn	2, 0x0601
    2360:	0501                	.insn	2, 0x0501
    2362:	00040903          	lb	s2,0(s0)
    2366:	0300                	.insn	2, 0x0300
    2368:	ea04                	.insn	2, 0xea04
    236a:	0101                	.insn	2, 0x0101
    236c:	0305                	.insn	2, 0x0305
    236e:	0409                	.insn	2, 0x0409
    2370:	0000                	.insn	2, 0x0000
    2372:	01f00403          	lb	s0,31(zero) # 1f <exit-0x10101>
    2376:	0501                	.insn	2, 0x0501
    2378:	00040903          	lb	s2,0(s0)
    237c:	0501                	.insn	2, 0x0501
    237e:	00040903          	lb	s2,0(s0)
    2382:	0501                	.insn	2, 0x0501
    2384:	00040903          	lb	s2,0(s0)
    2388:	0300                	.insn	2, 0x0300
    238a:	f204                	.insn	2, 0xf204
    238c:	0101                	.insn	2, 0x0101
    238e:	0305                	.insn	2, 0x0305
    2390:	0409                	.insn	2, 0x0409
    2392:	0000                	.insn	2, 0x0000
    2394:	01f60403          	lb	s0,31(a2)
    2398:	0106                	.insn	2, 0x0106
    239a:	0305                	.insn	2, 0x0305
    239c:	0409                	.insn	2, 0x0409
    239e:	0600                	.insn	2, 0x0600
    23a0:	0501                	.insn	2, 0x0501
    23a2:	00040903          	lb	s2,0(s0)
    23a6:	0300                	.insn	2, 0x0300
    23a8:	c604                	.insn	2, 0xc604
    23aa:	0601                	.insn	2, 0x0601
    23ac:	0501                	.insn	2, 0x0501
    23ae:	00040903          	lb	s2,0(s0)
    23b2:	0106                	.insn	2, 0x0106
    23b4:	0305                	.insn	2, 0x0305
    23b6:	0409                	.insn	2, 0x0409
    23b8:	0000                	.insn	2, 0x0000
    23ba:	01e00403          	lb	s0,30(zero) # 1e <exit-0x10102>
    23be:	0106                	.insn	2, 0x0106
    23c0:	0305                	.insn	2, 0x0305
    23c2:	0c09                	.insn	2, 0x0c09
    23c4:	0600                	.insn	2, 0x0600
    23c6:	0501                	.insn	2, 0x0501
    23c8:	00040903          	lb	s2,0(s0)
    23cc:	0501                	.insn	2, 0x0501
    23ce:	00040903          	lb	s2,0(s0)
    23d2:	0300                	.insn	2, 0x0300
    23d4:	c404                	.insn	2, 0xc404
    23d6:	0601                	.insn	2, 0x0601
    23d8:	0501                	.insn	2, 0x0501
    23da:	00040903          	lb	s2,0(s0)
    23de:	0300                	.insn	2, 0x0300
    23e0:	f804                	.insn	2, 0xf804
    23e2:	0101                	.insn	2, 0x0101
    23e4:	0305                	.insn	2, 0x0305
    23e6:	0009                	.insn	2, 0x0009
    23e8:	0000                	.insn	2, 0x0000
    23ea:	0402                	.insn	2, 0x0402
    23ec:	0100                	.insn	2, 0x0100
    23ee:	0305                	.insn	2, 0x0305
    23f0:	0009                	.insn	2, 0x0009
    23f2:	0100                	.insn	2, 0x0100
    23f4:	0305                	.insn	2, 0x0305
    23f6:	0009                	.insn	2, 0x0009
    23f8:	0100                	.insn	2, 0x0100
    23fa:	0305                	.insn	2, 0x0305
    23fc:	0009                	.insn	2, 0x0009
    23fe:	0000                	.insn	2, 0x0000
    2400:	01f80403          	lb	s0,31(a6)
    2404:	0106                	.insn	2, 0x0106
    2406:	0305                	.insn	2, 0x0305
    2408:	0409                	.insn	2, 0x0409
    240a:	0000                	.insn	2, 0x0000
    240c:	01fa0403          	lb	s0,31(s4)
    2410:	0106                	.insn	2, 0x0106
    2412:	0305                	.insn	2, 0x0305
    2414:	0409                	.insn	2, 0x0409
    2416:	0000                	.insn	2, 0x0000
    2418:	01fd0403          	lb	s0,31(s10)
    241c:	0501                	.insn	2, 0x0501
    241e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2422:	0200                	.insn	2, 0x0200
    2424:	0004                	.insn	2, 0x0004
    2426:	0501                	.insn	2, 0x0501
    2428:	00040903          	lb	s2,0(s0)
    242c:	0501                	.insn	2, 0x0501
    242e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2432:	0300                	.insn	2, 0x0300
    2434:	fd04                	.insn	2, 0xfd04
    2436:	0601                	.insn	2, 0x0601
    2438:	0501                	.insn	2, 0x0501
    243a:	00040903          	lb	s2,0(s0)
    243e:	0300                	.insn	2, 0x0300
    2440:	8604                	.insn	2, 0x8604
    2442:	0602                	.insn	2, 0x0602
    2444:	0501                	.insn	2, 0x0501
    2446:	00040903          	lb	s2,0(s0)
    244a:	0200                	.insn	2, 0x0200
    244c:	0004                	.insn	2, 0x0004
    244e:	0501                	.insn	2, 0x0501
    2450:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2454:	0300                	.insn	2, 0x0300
    2456:	f804                	.insn	2, 0xf804
    2458:	0601                	.insn	2, 0x0601
    245a:	0501                	.insn	2, 0x0501
    245c:	00040903          	lb	s2,0(s0)
    2460:	0501                	.insn	2, 0x0501
    2462:	00040903          	lb	s2,0(s0)
    2466:	0501                	.insn	2, 0x0501
    2468:	00040903          	lb	s2,0(s0)
    246c:	0300                	.insn	2, 0x0300
    246e:	8704                	.insn	2, 0x8704
    2470:	0602                	.insn	2, 0x0602
    2472:	0501                	.insn	2, 0x0501
    2474:	00080903          	lb	s2,0(a6)
    2478:	0300                	.insn	2, 0x0300
    247a:	f804                	.insn	2, 0xf804
    247c:	0601                	.insn	2, 0x0601
    247e:	0501                	.insn	2, 0x0501
    2480:	00040903          	lb	s2,0(s0)
    2484:	0501                	.insn	2, 0x0501
    2486:	00040903          	lb	s2,0(s0)
    248a:	0300                	.insn	2, 0x0300
    248c:	fb04                	.insn	2, 0xfb04
    248e:	0601                	.insn	2, 0x0601
    2490:	0501                	.insn	2, 0x0501
    2492:	00040903          	lb	s2,0(s0)
    2496:	0106                	.insn	2, 0x0106
    2498:	0305                	.insn	2, 0x0305
    249a:	0409                	.insn	2, 0x0409
    249c:	0000                	.insn	2, 0x0000
    249e:	01f80403          	lb	s0,31(a6)
    24a2:	0501                	.insn	2, 0x0501
    24a4:	00040903          	lb	s2,0(s0)
    24a8:	0300                	.insn	2, 0x0300
    24aa:	9504                	.insn	2, 0x9504
    24ac:	0602                	.insn	2, 0x0602
    24ae:	0501                	.insn	2, 0x0501
    24b0:	000c0903          	lb	s2,0(s8)
    24b4:	0200                	.insn	2, 0x0200
    24b6:	0004                	.insn	2, 0x0004
    24b8:	0501                	.insn	2, 0x0501
    24ba:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    24be:	0300                	.insn	2, 0x0300
    24c0:	9e04                	.insn	2, 0x9e04
    24c2:	0602                	.insn	2, 0x0602
    24c4:	0501                	.insn	2, 0x0501
    24c6:	00040903          	lb	s2,0(s0)
    24ca:	0300                	.insn	2, 0x0300
    24cc:	a904                	.insn	2, 0xa904
    24ce:	0102                	.insn	2, 0x0102
    24d0:	0305                	.insn	2, 0x0305
    24d2:	0409                	.insn	2, 0x0409
    24d4:	0000                	.insn	2, 0x0000
    24d6:	029e0403          	lb	s0,41(t3)
    24da:	0501                	.insn	2, 0x0501
    24dc:	00040903          	lb	s2,0(s0)
    24e0:	0300                	.insn	2, 0x0300
    24e2:	9f04                	.insn	2, 0x9f04
    24e4:	0602                	.insn	2, 0x0602
    24e6:	0501                	.insn	2, 0x0501
    24e8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    24ec:	0300                	.insn	2, 0x0300
    24ee:	a504                	.insn	2, 0xa504
    24f0:	0602                	.insn	2, 0x0602
    24f2:	0501                	.insn	2, 0x0501
    24f4:	00040903          	lb	s2,0(s0)
    24f8:	0300                	.insn	2, 0x0300
    24fa:	9f04                	.insn	2, 0x9f04
    24fc:	0102                	.insn	2, 0x0102
    24fe:	0305                	.insn	2, 0x0305
    2500:	0409                	.insn	2, 0x0409
    2502:	0000                	.insn	2, 0x0000
    2504:	02a50403          	lb	s0,42(a0)
    2508:	0501                	.insn	2, 0x0501
    250a:	00040903          	lb	s2,0(s0)
    250e:	0501                	.insn	2, 0x0501
    2510:	00040903          	lb	s2,0(s0)
    2514:	0501                	.insn	2, 0x0501
    2516:	00040903          	lb	s2,0(s0)
    251a:	0300                	.insn	2, 0x0300
    251c:	a704                	.insn	2, 0xa704
    251e:	0102                	.insn	2, 0x0102
    2520:	0305                	.insn	2, 0x0305
    2522:	0409                	.insn	2, 0x0409
    2524:	0000                	.insn	2, 0x0000
    2526:	02ab0403          	lb	s0,42(s6)
    252a:	0106                	.insn	2, 0x0106
    252c:	0305                	.insn	2, 0x0305
    252e:	0809                	.insn	2, 0x0809
    2530:	0000                	.insn	2, 0x0000
    2532:	01f90403          	lb	s0,31(s2)
    2536:	0501                	.insn	2, 0x0501
    2538:	000c0903          	lb	s2,0(s8)
    253c:	0300                	.insn	2, 0x0300
    253e:	ad04                	.insn	2, 0xad04
    2540:	0102                	.insn	2, 0x0102
    2542:	0305                	.insn	2, 0x0305
    2544:	0409                	.insn	2, 0x0409
    2546:	0000                	.insn	2, 0x0000
    2548:	02af0403          	lb	s0,42(t5)
    254c:	0501                	.insn	2, 0x0501
    254e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2552:	0200                	.insn	2, 0x0200
    2554:	0004                	.insn	2, 0x0004
    2556:	0501                	.insn	2, 0x0501
    2558:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    255c:	0300                	.insn	2, 0x0300
    255e:	af04                	.insn	2, 0xaf04
    2560:	0602                	.insn	2, 0x0602
    2562:	0501                	.insn	2, 0x0501
    2564:	00040903          	lb	s2,0(s0)
    2568:	0300                	.insn	2, 0x0300
    256a:	b104                	.insn	2, 0xb104
    256c:	0602                	.insn	2, 0x0602
    256e:	0501                	.insn	2, 0x0501
    2570:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2574:	0200                	.insn	2, 0x0200
    2576:	0004                	.insn	2, 0x0004
    2578:	0501                	.insn	2, 0x0501
    257a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    257e:	0300                	.insn	2, 0x0300
    2580:	b304                	.insn	2, 0xb304
    2582:	0602                	.insn	2, 0x0602
    2584:	0501                	.insn	2, 0x0501
    2586:	00040903          	lb	s2,0(s0)
    258a:	0300                	.insn	2, 0x0300
    258c:	b104                	.insn	2, 0xb104
    258e:	0102                	.insn	2, 0x0102
    2590:	0305                	.insn	2, 0x0305
    2592:	0409                	.insn	2, 0x0409
    2594:	0000                	.insn	2, 0x0000
    2596:	01f80403          	lb	s0,31(a6)
    259a:	0501                	.insn	2, 0x0501
    259c:	00080903          	lb	s2,0(a6)
    25a0:	0300                	.insn	2, 0x0300
    25a2:	b204                	.insn	2, 0xb204
    25a4:	0602                	.insn	2, 0x0602
    25a6:	0501                	.insn	2, 0x0501
    25a8:	00040903          	lb	s2,0(s0)
    25ac:	0300                	.insn	2, 0x0300
    25ae:	b904                	.insn	2, 0xb904
    25b0:	0102                	.insn	2, 0x0102
    25b2:	0305                	.insn	2, 0x0305
    25b4:	0009                	.insn	2, 0x0009
    25b6:	0000                	.insn	2, 0x0000
    25b8:	0402                	.insn	2, 0x0402
    25ba:	0100                	.insn	2, 0x0100
    25bc:	0305                	.insn	2, 0x0305
    25be:	0009                	.insn	2, 0x0009
    25c0:	0000                	.insn	2, 0x0000
    25c2:	02b90403          	lb	s0,43(s2)
    25c6:	0106                	.insn	2, 0x0106
    25c8:	0305                	.insn	2, 0x0305
    25ca:	0409                	.insn	2, 0x0409
    25cc:	0000                	.insn	2, 0x0000
    25ce:	0402                	.insn	2, 0x0402
    25d0:	0600                	.insn	2, 0x0600
    25d2:	0501                	.insn	2, 0x0501
    25d4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    25d8:	0501                	.insn	2, 0x0501
    25da:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    25de:	0300                	.insn	2, 0x0300
    25e0:	b904                	.insn	2, 0xb904
    25e2:	0602                	.insn	2, 0x0602
    25e4:	0501                	.insn	2, 0x0501
    25e6:	00040903          	lb	s2,0(s0)
    25ea:	0501                	.insn	2, 0x0501
    25ec:	00040903          	lb	s2,0(s0)
    25f0:	0300                	.insn	2, 0x0300
    25f2:	bb04                	.insn	2, 0xbb04
    25f4:	0602                	.insn	2, 0x0602
    25f6:	0501                	.insn	2, 0x0501
    25f8:	00040903          	lb	s2,0(s0)
    25fc:	0200                	.insn	2, 0x0200
    25fe:	0004                	.insn	2, 0x0004
    2600:	0501                	.insn	2, 0x0501
    2602:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2606:	0300                	.insn	2, 0x0300
    2608:	bb04                	.insn	2, 0xbb04
    260a:	0602                	.insn	2, 0x0602
    260c:	0501                	.insn	2, 0x0501
    260e:	00040903          	lb	s2,0(s0)
    2612:	0501                	.insn	2, 0x0501
    2614:	00040903          	lb	s2,0(s0)
    2618:	0200                	.insn	2, 0x0200
    261a:	0104                	.insn	2, 0x0104
    261c:	0518                	.insn	2, 0x0518
    261e:	00080903          	lb	s2,0(a6)
    2622:	0501                	.insn	2, 0x0501
    2624:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2628:	0300                	.insn	2, 0x0300
    262a:	bc04                	.insn	2, 0xbc04
    262c:	0602                	.insn	2, 0x0602
    262e:	0516                	.insn	2, 0x0516
    2630:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2634:	0300                	.insn	2, 0x0300
    2636:	b904                	.insn	2, 0xb904
    2638:	0602                	.insn	2, 0x0602
    263a:	0501                	.insn	2, 0x0501
    263c:	00040903          	lb	s2,0(s0)
    2640:	0300                	.insn	2, 0x0300
    2642:	bc04                	.insn	2, 0xbc04
    2644:	0102                	.insn	2, 0x0102
    2646:	0305                	.insn	2, 0x0305
    2648:	0409                	.insn	2, 0x0409
    264a:	0100                	.insn	2, 0x0100
    264c:	0305                	.insn	2, 0x0305
    264e:	0009                	.insn	2, 0x0009
    2650:	0000                	.insn	2, 0x0000
    2652:	0402                	.insn	2, 0x0402
    2654:	0305183f 00000409 	.insn	8, 0x04090305183f
    265c:	0402                	.insn	2, 0x0402
    265e:	0144                	.insn	2, 0x0144
    2660:	0305                	.insn	2, 0x0305
    2662:	0809                	.insn	2, 0x0809
    2664:	0100                	.insn	2, 0x0100
    2666:	0305                	.insn	2, 0x0305
    2668:	0009                	.insn	2, 0x0009
    266a:	0000                	.insn	2, 0x0000
    266c:	02b00403          	lb	s0,43(zero) # 2b <exit-0x100f5>
    2670:	1606                	.insn	2, 0x1606
    2672:	0305                	.insn	2, 0x0305
    2674:	0009                	.insn	2, 0x0009
    2676:	0100                	.insn	2, 0x0100
    2678:	0305                	.insn	2, 0x0305
    267a:	0009                	.insn	2, 0x0009
    267c:	0000                	.insn	2, 0x0000
    267e:	02c80403          	lb	s0,44(a6)
    2682:	0501                	.insn	2, 0x0501
    2684:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2688:	0501                	.insn	2, 0x0501
    268a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    268e:	0501                	.insn	2, 0x0501
    2690:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2694:	0300                	.insn	2, 0x0300
    2696:	cf04                	.insn	2, 0xcf04
    2698:	0102                	.insn	2, 0x0102
    269a:	0305                	.insn	2, 0x0305
    269c:	0009                	.insn	2, 0x0009
    269e:	0100                	.insn	2, 0x0100
    26a0:	0305                	.insn	2, 0x0305
    26a2:	0009                	.insn	2, 0x0009
    26a4:	0000                	.insn	2, 0x0000
    26a6:	0402                	.insn	2, 0x0402
    26a8:	0100                	.insn	2, 0x0100
    26aa:	0305                	.insn	2, 0x0305
    26ac:	0009                	.insn	2, 0x0009
    26ae:	0000                	.insn	2, 0x0000
    26b0:	02cf0403          	lb	s0,44(t5)
    26b4:	0106                	.insn	2, 0x0106
    26b6:	0305                	.insn	2, 0x0305
    26b8:	0409                	.insn	2, 0x0409
    26ba:	0100                	.insn	2, 0x0100
    26bc:	0305                	.insn	2, 0x0305
    26be:	0009                	.insn	2, 0x0009
    26c0:	0000                	.insn	2, 0x0000
    26c2:	0402                	.insn	2, 0x0402
    26c4:	1844                	.insn	2, 0x1844
    26c6:	0305                	.insn	2, 0x0305
    26c8:	0409                	.insn	2, 0x0409
    26ca:	0100                	.insn	2, 0x0100
    26cc:	0305                	.insn	2, 0x0305
    26ce:	0409                	.insn	2, 0x0409
    26d0:	0100                	.insn	2, 0x0100
    26d2:	0305                	.insn	2, 0x0305
    26d4:	0409                	.insn	2, 0x0409
    26d6:	0100                	.insn	2, 0x0100
    26d8:	0305                	.insn	2, 0x0305
    26da:	0809                	.insn	2, 0x0809
    26dc:	0100                	.insn	2, 0x0100
    26de:	0305                	.insn	2, 0x0305
    26e0:	0009                	.insn	2, 0x0009
    26e2:	0000                	.insn	2, 0x0000
    26e4:	02ae0403          	lb	s0,42(t3)
    26e8:	1606                	.insn	2, 0x1606
    26ea:	0305                	.insn	2, 0x0305
    26ec:	0009                	.insn	2, 0x0009
    26ee:	0000                	.insn	2, 0x0000
    26f0:	0402                	.insn	2, 0x0402
    26f2:	0100                	.insn	2, 0x0100
    26f4:	0305                	.insn	2, 0x0305
    26f6:	0009                	.insn	2, 0x0009
    26f8:	0000                	.insn	2, 0x0000
    26fa:	02ae0403          	lb	s0,42(t3)
    26fe:	0106                	.insn	2, 0x0106
    2700:	0305                	.insn	2, 0x0305
    2702:	0409                	.insn	2, 0x0409
    2704:	0000                	.insn	2, 0x0000
    2706:	0402                	.insn	2, 0x0402
    2708:	0600                	.insn	2, 0x0600
    270a:	0501                	.insn	2, 0x0501
    270c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2710:	0501                	.insn	2, 0x0501
    2712:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2716:	0300                	.insn	2, 0x0300
    2718:	ae04                	.insn	2, 0xae04
    271a:	0602                	.insn	2, 0x0602
    271c:	0501                	.insn	2, 0x0501
    271e:	00080903          	lb	s2,0(a6)
    2722:	0300                	.insn	2, 0x0300
    2724:	e004                	.insn	2, 0xe004
    2726:	0602                	.insn	2, 0x0602
    2728:	0501                	.insn	2, 0x0501
    272a:	00040903          	lb	s2,0(s0)
    272e:	0200                	.insn	2, 0x0200
    2730:	0004                	.insn	2, 0x0004
    2732:	0501                	.insn	2, 0x0501
    2734:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2738:	0300                	.insn	2, 0x0300
    273a:	e004                	.insn	2, 0xe004
    273c:	0602                	.insn	2, 0x0602
    273e:	0501                	.insn	2, 0x0501
    2740:	00040903          	lb	s2,0(s0)
    2744:	0200                	.insn	2, 0x0200
    2746:	0004                	.insn	2, 0x0004
    2748:	0106                	.insn	2, 0x0106
    274a:	0305                	.insn	2, 0x0305
    274c:	0009                	.insn	2, 0x0009
    274e:	0100                	.insn	2, 0x0100
    2750:	0305                	.insn	2, 0x0305
    2752:	0009                	.insn	2, 0x0009
    2754:	0100                	.insn	2, 0x0100
    2756:	0305                	.insn	2, 0x0305
    2758:	0009                	.insn	2, 0x0009
    275a:	0000                	.insn	2, 0x0000
    275c:	02eb0403          	lb	s0,46(s6)
    2760:	0501                	.insn	2, 0x0501
    2762:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2766:	0300                	.insn	2, 0x0300
    2768:	ee04                	.insn	2, 0xee04
    276a:	0102                	.insn	2, 0x0102
    276c:	0305                	.insn	2, 0x0305
    276e:	0809                	.insn	2, 0x0809
    2770:	0000                	.insn	2, 0x0000
    2772:	02f30403          	lb	s0,47(t1)
    2776:	0501                	.insn	2, 0x0501
    2778:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    277c:	0501                	.insn	2, 0x0501
    277e:	00040903          	lb	s2,0(s0)
    2782:	0200                	.insn	2, 0x0200
    2784:	0004                	.insn	2, 0x0004
    2786:	0501                	.insn	2, 0x0501
    2788:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    278c:	0501                	.insn	2, 0x0501
    278e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2792:	0300                	.insn	2, 0x0300
    2794:	f804                	.insn	2, 0xf804
    2796:	0102                	.insn	2, 0x0102
    2798:	0305                	.insn	2, 0x0305
    279a:	0409                	.insn	2, 0x0409
    279c:	0000                	.insn	2, 0x0000
    279e:	02fa0403          	lb	s0,47(s4)
    27a2:	0501                	.insn	2, 0x0501
    27a4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    27a8:	0501                	.insn	2, 0x0501
    27aa:	00040903          	lb	s2,0(s0)
    27ae:	0300                	.insn	2, 0x0300
    27b0:	fb04                	.insn	2, 0xfb04
    27b2:	0102                	.insn	2, 0x0102
    27b4:	0305                	.insn	2, 0x0305
    27b6:	0409                	.insn	2, 0x0409
    27b8:	0600                	.insn	2, 0x0600
    27ba:	0501                	.insn	2, 0x0501
    27bc:	00040903          	lb	s2,0(s0)
    27c0:	0200                	.insn	2, 0x0200
    27c2:	0004                	.insn	2, 0x0004
    27c4:	0106                	.insn	2, 0x0106
    27c6:	0305                	.insn	2, 0x0305
    27c8:	0009                	.insn	2, 0x0009
    27ca:	0000                	.insn	2, 0x0000
    27cc:	03810403          	lb	s0,56(sp)
    27d0:	0106                	.insn	2, 0x0106
    27d2:	0305                	.insn	2, 0x0305
    27d4:	0809                	.insn	2, 0x0809
    27d6:	0000                	.insn	2, 0x0000
    27d8:	02fb0403          	lb	s0,47(s6)
    27dc:	0501                	.insn	2, 0x0501
    27de:	00040903          	lb	s2,0(s0)
    27e2:	0300                	.insn	2, 0x0300
    27e4:	8104                	.insn	2, 0x8104
    27e6:	03050103          	lb	sp,48(a0)
    27ea:	0409                	.insn	2, 0x0409
    27ec:	0100                	.insn	2, 0x0100
    27ee:	0305                	.insn	2, 0x0305
    27f0:	0409                	.insn	2, 0x0409
    27f2:	0000                	.insn	2, 0x0000
    27f4:	03830403          	lb	s0,56(t1)
    27f8:	0501                	.insn	2, 0x0501
    27fa:	00040903          	lb	s2,0(s0)
    27fe:	0200                	.insn	2, 0x0200
    2800:	0004                	.insn	2, 0x0004
    2802:	0106                	.insn	2, 0x0106
    2804:	0305                	.insn	2, 0x0305
    2806:	0009                	.insn	2, 0x0009
    2808:	0600                	.insn	2, 0x0600
    280a:	0501                	.insn	2, 0x0501
    280c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2810:	0106                	.insn	2, 0x0106
    2812:	0305                	.insn	2, 0x0305
    2814:	0009                	.insn	2, 0x0009
    2816:	0100                	.insn	2, 0x0100
    2818:	0305                	.insn	2, 0x0305
    281a:	0009                	.insn	2, 0x0009
    281c:	0100                	.insn	2, 0x0100
    281e:	0305                	.insn	2, 0x0305
    2820:	0009                	.insn	2, 0x0009
    2822:	1800                	.insn	2, 0x1800
    2824:	0305                	.insn	2, 0x0305
    2826:	0009                	.insn	2, 0x0009
    2828:	0100                	.insn	2, 0x0100
    282a:	0305                	.insn	2, 0x0305
    282c:	0009                	.insn	2, 0x0009
    282e:	0100                	.insn	2, 0x0100
    2830:	0305                	.insn	2, 0x0305
    2832:	0409                	.insn	2, 0x0409
    2834:	0600                	.insn	2, 0x0600
    2836:	0501                	.insn	2, 0x0501
    2838:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    283c:	0300                	.insn	2, 0x0300
    283e:	e104                	.insn	2, 0xe104
    2840:	0602                	.insn	2, 0x0602
    2842:	0516                	.insn	2, 0x0516
    2844:	00040903          	lb	s2,0(s0)
    2848:	0200                	.insn	2, 0x0200
    284a:	3f04                	.insn	2, 0x3f04
    284c:	1806                	.insn	2, 0x1806
    284e:	0305                	.insn	2, 0x0305
    2850:	0409                	.insn	2, 0x0409
    2852:	0100                	.insn	2, 0x0100
    2854:	0305                	.insn	2, 0x0305
    2856:	0409                	.insn	2, 0x0409
    2858:	0100                	.insn	2, 0x0100
    285a:	0305                	.insn	2, 0x0305
    285c:	0409                	.insn	2, 0x0409
    285e:	0000                	.insn	2, 0x0000
    2860:	02fc0403          	lb	s0,47(s8)
    2864:	1606                	.insn	2, 0x1606
    2866:	0305                	.insn	2, 0x0305
    2868:	1009                	.insn	2, 0x1009
    286a:	0000                	.insn	2, 0x0000
    286c:	0402                	.insn	2, 0x0402
    286e:	0100                	.insn	2, 0x0100
    2870:	0305                	.insn	2, 0x0305
    2872:	0009                	.insn	2, 0x0009
    2874:	0000                	.insn	2, 0x0000
    2876:	02fc0403          	lb	s0,47(s8)
    287a:	0106                	.insn	2, 0x0106
    287c:	0305                	.insn	2, 0x0305
    287e:	0409                	.insn	2, 0x0409
    2880:	0100                	.insn	2, 0x0100
    2882:	0305                	.insn	2, 0x0305
    2884:	0409                	.insn	2, 0x0409
    2886:	0100                	.insn	2, 0x0100
    2888:	0305                	.insn	2, 0x0305
    288a:	0009                	.insn	2, 0x0009
    288c:	0000                	.insn	2, 0x0000
    288e:	01800403          	lb	s0,24(zero) # 18 <exit-0x10108>
    2892:	0501                	.insn	2, 0x0501
    2894:	00040903          	lb	s2,0(s0)
    2898:	0501                	.insn	2, 0x0501
    289a:	00040903          	lb	s2,0(s0)
    289e:	0200                	.insn	2, 0x0200
    28a0:	4304                	.insn	2, 0x4304
    28a2:	0501                	.insn	2, 0x0501
    28a4:	00040903          	lb	s2,0(s0)
    28a8:	0501                	.insn	2, 0x0501
    28aa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28ae:	0200                	.insn	2, 0x0200
    28b0:	3f04                	.insn	2, 0x3f04
    28b2:	1806                	.insn	2, 0x1806
    28b4:	0305                	.insn	2, 0x0305
    28b6:	0009                	.insn	2, 0x0009
    28b8:	0100                	.insn	2, 0x0100
    28ba:	0305                	.insn	2, 0x0305
    28bc:	0409                	.insn	2, 0x0409
    28be:	0000                	.insn	2, 0x0000
    28c0:	0402                	.insn	2, 0x0402
    28c2:	0100                	.insn	2, 0x0100
    28c4:	0305                	.insn	2, 0x0305
    28c6:	0009                	.insn	2, 0x0009
    28c8:	0000                	.insn	2, 0x0000
    28ca:	0402                	.insn	2, 0x0402
    28cc:	0501063f 00080903 	.insn	8, 0x000809030501063f
    28d4:	0200                	.insn	2, 0x0200
    28d6:	4004                	.insn	2, 0x4004
    28d8:	0501                	.insn	2, 0x0501
    28da:	00040903          	lb	s2,0(s0)
    28de:	0200                	.insn	2, 0x0200
    28e0:	4404                	.insn	2, 0x4404
    28e2:	0501                	.insn	2, 0x0501
    28e4:	000c0903          	lb	s2,0(s8)
    28e8:	0501                	.insn	2, 0x0501
    28ea:	00040903          	lb	s2,0(s0)
    28ee:	0501                	.insn	2, 0x0501
    28f0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    28f4:	0200                	.insn	2, 0x0200
    28f6:	3f04                	.insn	2, 0x3f04
    28f8:	0501                	.insn	2, 0x0501
    28fa:	02090003          	lb	zero,32(s2)
    28fe:	10b0                	.insn	2, 0x10b0
    2900:	0001                	.insn	2, 0x0001
    2902:	0000                	.insn	2, 0x0000
    2904:	0000                	.insn	2, 0x0000
    2906:	0100                	.insn	2, 0x0100
    2908:	f901                	.insn	2, 0xf901
    290a:	0001                	.insn	2, 0x0001
    290c:	0500                	.insn	2, 0x0500
    290e:	0800                	.insn	2, 0x0800
    2910:	3800                	.insn	2, 0x3800
    2912:	0000                	.insn	2, 0x0000
    2914:	0100                	.insn	2, 0x0100
    2916:	0101                	.insn	2, 0x0101
    2918:	f2f6                	.insn	2, 0xf2f6
    291a:	000d                	.insn	2, 0x000d
    291c:	0101                	.insn	2, 0x0101
    291e:	0101                	.insn	2, 0x0101
    2920:	0000                	.insn	2, 0x0000
    2922:	0100                	.insn	2, 0x0100
    2924:	0000                	.insn	2, 0x0000
    2926:	0101                	.insn	2, 0x0101
    2928:	1f01                	.insn	2, 0x1f01
    292a:	0002                	.insn	2, 0x0002
    292c:	0000                	.insn	2, 0x0000
    292e:	9700                	.insn	2, 0x9700
    2930:	0000                	.insn	2, 0x0000
    2932:	0200                	.insn	2, 0x0200
    2934:	1f01                	.insn	2, 0x1f01
    2936:	0b02                	.insn	2, 0x0b02
    2938:	2b04                	.insn	2, 0x2b04
    293a:	0001                	.insn	2, 0x0001
    293c:	0000                	.insn	2, 0x0000
    293e:	0150                	.insn	2, 0x0150
    2940:	0000                	.insn	2, 0x0000
    2942:	f301                	.insn	2, 0xf301
    2944:	0000                	.insn	2, 0x0000
    2946:	0100                	.insn	2, 0x0100
    2948:	00bc                	.insn	2, 0x00bc
    294a:	0000                	.insn	2, 0x0000
    294c:	0001                	.insn	2, 0x0001
    294e:	0209                	.insn	2, 0x0209
    2950:	10b0                	.insn	2, 0x10b0
    2952:	0001                	.insn	2, 0x0001
    2954:	0000                	.insn	2, 0x0000
    2956:	0000                	.insn	2, 0x0000
    2958:	0539                	.insn	2, 0x0539
    295a:	0901                	.insn	2, 0x0901
    295c:	0000                	.insn	2, 0x0000
    295e:	0518                	.insn	2, 0x0518
    2960:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2964:	0501                	.insn	2, 0x0501
    2966:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    296a:	0501                	.insn	2, 0x0501
    296c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2970:	0501                	.insn	2, 0x0501
    2972:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2976:	0518                	.insn	2, 0x0518
    2978:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    297c:	0519                	.insn	2, 0x0519
    297e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2982:	0501                	.insn	2, 0x0501
    2984:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2988:	1306                	.insn	2, 0x1306
    298a:	0105                	.insn	2, 0x0105
    298c:	1009                	.insn	2, 0x1009
    298e:	1b00                	.insn	2, 0x1b00
    2990:	0305                	.insn	2, 0x0305
    2992:	0409                	.insn	2, 0x0409
    2994:	0000                	.insn	2, 0x0000
    2996:	0402                	.insn	2, 0x0402
    2998:	0601                	.insn	2, 0x0601
    299a:	0501                	.insn	2, 0x0501
    299c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29a0:	0200                	.insn	2, 0x0200
    29a2:	0004                	.insn	2, 0x0004
    29a4:	0501                	.insn	2, 0x0501
    29a6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29aa:	0200                	.insn	2, 0x0200
    29ac:	0104                	.insn	2, 0x0104
    29ae:	0106                	.insn	2, 0x0106
    29b0:	0305                	.insn	2, 0x0305
    29b2:	0c09                	.insn	2, 0x0c09
    29b4:	0000                	.insn	2, 0x0000
    29b6:	0402                	.insn	2, 0x0402
    29b8:	010a                	.insn	2, 0x010a
    29ba:	0305                	.insn	2, 0x0305
    29bc:	0809                	.insn	2, 0x0809
    29be:	0000                	.insn	2, 0x0000
    29c0:	0402                	.insn	2, 0x0402
    29c2:	0101                	.insn	2, 0x0101
    29c4:	0305                	.insn	2, 0x0305
    29c6:	0409                	.insn	2, 0x0409
    29c8:	0000                	.insn	2, 0x0000
    29ca:	0402                	.insn	2, 0x0402
    29cc:	0605                	.insn	2, 0x0605
    29ce:	0501                	.insn	2, 0x0501
    29d0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29d4:	0501                	.insn	2, 0x0501
    29d6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29da:	0501                	.insn	2, 0x0501
    29dc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29e0:	0501                	.insn	2, 0x0501
    29e2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29e6:	0501                	.insn	2, 0x0501
    29e8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29ec:	0501                	.insn	2, 0x0501
    29ee:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29f2:	0200                	.insn	2, 0x0200
    29f4:	0704                	.insn	2, 0x0704
    29f6:	0501                	.insn	2, 0x0501
    29f8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    29fc:	0200                	.insn	2, 0x0200
    29fe:	0a04                	.insn	2, 0x0a04
    2a00:	0501                	.insn	2, 0x0501
    2a02:	00040903          	lb	s2,0(s0)
    2a06:	0106                	.insn	2, 0x0106
    2a08:	0305                	.insn	2, 0x0305
    2a0a:	0409                	.insn	2, 0x0409
    2a0c:	0000                	.insn	2, 0x0000
    2a0e:	0402                	.insn	2, 0x0402
    2a10:	0501060f          	.insn	4, 0x0501060f
    2a14:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a18:	0501                	.insn	2, 0x0501
    2a1a:	00080903          	lb	s2,0(a6)
    2a1e:	0106                	.insn	2, 0x0106
    2a20:	0305                	.insn	2, 0x0305
    2a22:	0009                	.insn	2, 0x0009
    2a24:	0000                	.insn	2, 0x0000
    2a26:	0402                	.insn	2, 0x0402
    2a28:	0600                	.insn	2, 0x0600
    2a2a:	0501                	.insn	2, 0x0501
    2a2c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a30:	0200                	.insn	2, 0x0200
    2a32:	1104                	.insn	2, 0x1104
    2a34:	0501                	.insn	2, 0x0501
    2a36:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a3a:	0200                	.insn	2, 0x0200
    2a3c:	1704                	.insn	2, 0x1704
    2a3e:	0501                	.insn	2, 0x0501
    2a40:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a44:	0200                	.insn	2, 0x0200
    2a46:	0004                	.insn	2, 0x0004
    2a48:	0501                	.insn	2, 0x0501
    2a4a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a4e:	0200                	.insn	2, 0x0200
    2a50:	1904                	.insn	2, 0x1904
    2a52:	0501                	.insn	2, 0x0501
    2a54:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a58:	0501                	.insn	2, 0x0501
    2a5a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a5e:	0200                	.insn	2, 0x0200
    2a60:	1e04                	.insn	2, 0x1e04
    2a62:	0501                	.insn	2, 0x0501
    2a64:	00040903          	lb	s2,0(s0)
    2a68:	0106                	.insn	2, 0x0106
    2a6a:	0305                	.insn	2, 0x0305
    2a6c:	0409                	.insn	2, 0x0409
    2a6e:	0100                	.insn	2, 0x0100
    2a70:	0305                	.insn	2, 0x0305
    2a72:	0009                	.insn	2, 0x0009
    2a74:	0000                	.insn	2, 0x0000
    2a76:	0402                	.insn	2, 0x0402
    2a78:	0600                	.insn	2, 0x0600
    2a7a:	0501                	.insn	2, 0x0501
    2a7c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a80:	0518                	.insn	2, 0x0518
    2a82:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a86:	0501                	.insn	2, 0x0501
    2a88:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a8c:	0501                	.insn	2, 0x0501
    2a8e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a92:	0501                	.insn	2, 0x0501
    2a94:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2a98:	0501                	.insn	2, 0x0501
    2a9a:	00040903          	lb	s2,0(s0)
    2a9e:	0106                	.insn	2, 0x0106
    2aa0:	0305                	.insn	2, 0x0305
    2aa2:	0809                	.insn	2, 0x0809
    2aa4:	0100                	.insn	2, 0x0100
    2aa6:	0305                	.insn	2, 0x0305
    2aa8:	0009                	.insn	2, 0x0009
    2aaa:	1a00                	.insn	2, 0x1a00
    2aac:	0105                	.insn	2, 0x0105
    2aae:	0409                	.insn	2, 0x0409
    2ab0:	1400                	.insn	2, 0x1400
    2ab2:	0305                	.insn	2, 0x0305
    2ab4:	0409                	.insn	2, 0x0409
    2ab6:	1a00                	.insn	2, 0x1a00
    2ab8:	0105                	.insn	2, 0x0105
    2aba:	0409                	.insn	2, 0x0409
    2abc:	1400                	.insn	2, 0x1400
    2abe:	0305                	.insn	2, 0x0305
    2ac0:	0409                	.insn	2, 0x0409
    2ac2:	0600                	.insn	2, 0x0600
    2ac4:	0501                	.insn	2, 0x0501
    2ac6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2aca:	0106                	.insn	2, 0x0106
    2acc:	0305                	.insn	2, 0x0305
    2ace:	0009                	.insn	2, 0x0009
    2ad0:	0600                	.insn	2, 0x0600
    2ad2:	0501                	.insn	2, 0x0501
    2ad4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ad8:	0519                	.insn	2, 0x0519
    2ada:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ade:	1806                	.insn	2, 0x1806
    2ae0:	0105                	.insn	2, 0x0105
    2ae2:	0409                	.insn	2, 0x0409
    2ae4:	0100                	.insn	2, 0x0100
    2ae6:	0105                	.insn	2, 0x0105
    2ae8:	0c09                	.insn	2, 0x0c09
    2aea:	0100                	.insn	2, 0x0100
    2aec:	0105                	.insn	2, 0x0105
    2aee:	0409                	.insn	2, 0x0409
    2af0:	0000                	.insn	2, 0x0000
    2af2:	0402                	.insn	2, 0x0402
    2af4:	1302                	.insn	2, 0x1302
    2af6:	0305                	.insn	2, 0x0305
    2af8:	0900                	.insn	2, 0x0900
    2afa:	3002                	.insn	2, 0x3002
    2afc:	0111                	.insn	2, 0x0111
    2afe:	0000                	.insn	2, 0x0000
    2b00:	0000                	.insn	2, 0x0000
    2b02:	0000                	.insn	2, 0x0000
    2b04:	0101                	.insn	2, 0x0101
    2b06:	00000357          	.insn	4, 0x0357
    2b0a:	0005                	.insn	2, 0x0005
    2b0c:	0008                	.insn	2, 0x0008
    2b0e:	0038                	.insn	2, 0x0038
    2b10:	0000                	.insn	2, 0x0000
    2b12:	0101                	.insn	2, 0x0101
    2b14:	f601                	.insn	2, 0xf601
    2b16:	0df2                	.insn	2, 0x0df2
    2b18:	0100                	.insn	2, 0x0100
    2b1a:	0101                	.insn	2, 0x0101
    2b1c:	0001                	.insn	2, 0x0001
    2b1e:	0000                	.insn	2, 0x0000
    2b20:	0001                	.insn	2, 0x0001
    2b22:	0100                	.insn	2, 0x0100
    2b24:	0101                	.insn	2, 0x0101
    2b26:	021f 0000 0000      	.insn	6, 0x021f
    2b2c:	00000097          	auipc	ra,0x0
    2b30:	0102                	.insn	2, 0x0102
    2b32:	021f 040b 0165      	.insn	6, 0x0165040b021f
    2b38:	0000                	.insn	2, 0x0000
    2b3a:	8a00                	.insn	2, 0x8a00
    2b3c:	0001                	.insn	2, 0x0001
    2b3e:	0100                	.insn	2, 0x0100
    2b40:	015c                	.insn	2, 0x015c
    2b42:	0000                	.insn	2, 0x0000
    2b44:	bc01                	.insn	2, 0xbc01
    2b46:	0000                	.insn	2, 0x0000
    2b48:	0100                	.insn	2, 0x0100
    2b4a:	0900                	.insn	2, 0x0900
    2b4c:	3002                	.insn	2, 0x3002
    2b4e:	0111                	.insn	2, 0x0111
    2b50:	0000                	.insn	2, 0x0000
    2b52:	0000                	.insn	2, 0x0000
    2b54:	3a00                	.insn	2, 0x3a00
    2b56:	0105                	.insn	2, 0x0105
    2b58:	0009                	.insn	2, 0x0009
    2b5a:	1800                	.insn	2, 0x1800
    2b5c:	0305                	.insn	2, 0x0305
    2b5e:	0009                	.insn	2, 0x0009
    2b60:	0100                	.insn	2, 0x0100
    2b62:	0305                	.insn	2, 0x0305
    2b64:	0009                	.insn	2, 0x0009
    2b66:	0100                	.insn	2, 0x0100
    2b68:	0d05                	.insn	2, 0x0d05
    2b6a:	0009                	.insn	2, 0x0009
    2b6c:	1800                	.insn	2, 0x1800
    2b6e:	0305                	.insn	2, 0x0305
    2b70:	0009                	.insn	2, 0x0009
    2b72:	0100                	.insn	2, 0x0100
    2b74:	0305                	.insn	2, 0x0305
    2b76:	0009                	.insn	2, 0x0009
    2b78:	0100                	.insn	2, 0x0100
    2b7a:	0305                	.insn	2, 0x0305
    2b7c:	0009                	.insn	2, 0x0009
    2b7e:	0100                	.insn	2, 0x0100
    2b80:	0305                	.insn	2, 0x0305
    2b82:	0009                	.insn	2, 0x0009
    2b84:	1800                	.insn	2, 0x1800
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
    2b9a:	0009                	.insn	2, 0x0009
    2b9c:	1800                	.insn	2, 0x1800
    2b9e:	0305                	.insn	2, 0x0305
    2ba0:	0009                	.insn	2, 0x0009
    2ba2:	1900                	.insn	2, 0x1900
    2ba4:	0305                	.insn	2, 0x0305
    2ba6:	0009                	.insn	2, 0x0009
    2ba8:	1800                	.insn	2, 0x1800
    2baa:	0305                	.insn	2, 0x0305
    2bac:	0009                	.insn	2, 0x0009
    2bae:	0100                	.insn	2, 0x0100
    2bb0:	0305                	.insn	2, 0x0305
    2bb2:	0009                	.insn	2, 0x0009
    2bb4:	0100                	.insn	2, 0x0100
    2bb6:	0305                	.insn	2, 0x0305
    2bb8:	0009                	.insn	2, 0x0009
    2bba:	0100                	.insn	2, 0x0100
    2bbc:	0305                	.insn	2, 0x0305
    2bbe:	0809                	.insn	2, 0x0809
    2bc0:	0600                	.insn	2, 0x0600
    2bc2:	0510                	.insn	2, 0x0510
    2bc4:	0901                	.insn	2, 0x0901
    2bc6:	0004                	.insn	2, 0x0004
    2bc8:	0522                	.insn	2, 0x0522
    2bca:	00040903          	lb	s2,0(s0)
    2bce:	05017503          	.insn	4, 0x05017503
    2bd2:	0901                	.insn	2, 0x0901
    2bd4:	0008                	.insn	2, 0x0008
    2bd6:	051e                	.insn	2, 0x051e
    2bd8:	00040903          	lb	s2,0(s0)
    2bdc:	0510                	.insn	2, 0x0510
    2bde:	0901                	.insn	2, 0x0901
    2be0:	0004                	.insn	2, 0x0004
    2be2:	0522                	.insn	2, 0x0522
    2be4:	00040903          	lb	s2,0(s0)
    2be8:	09030513          	addi	a0,t1,144
    2bec:	0004                	.insn	2, 0x0004
    2bee:	0106                	.insn	2, 0x0106
    2bf0:	0305                	.insn	2, 0x0305
    2bf2:	0009                	.insn	2, 0x0009
    2bf4:	0100                	.insn	2, 0x0100
    2bf6:	0305                	.insn	2, 0x0305
    2bf8:	0409                	.insn	2, 0x0409
    2bfa:	0600                	.insn	2, 0x0600
    2bfc:	0501                	.insn	2, 0x0501
    2bfe:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2c02:	0106                	.insn	2, 0x0106
    2c04:	0305                	.insn	2, 0x0305
    2c06:	0009                	.insn	2, 0x0009
    2c08:	1b00                	.insn	2, 0x1b00
    2c0a:	0305                	.insn	2, 0x0305
    2c0c:	0009                	.insn	2, 0x0009
    2c0e:	0100                	.insn	2, 0x0100
    2c10:	0305                	.insn	2, 0x0305
    2c12:	0009                	.insn	2, 0x0009
    2c14:	0100                	.insn	2, 0x0100
    2c16:	0305                	.insn	2, 0x0305
    2c18:	0009                	.insn	2, 0x0009
    2c1a:	0100                	.insn	2, 0x0100
    2c1c:	0305                	.insn	2, 0x0305
    2c1e:	0009                	.insn	2, 0x0009
    2c20:	0100                	.insn	2, 0x0100
    2c22:	0305                	.insn	2, 0x0305
    2c24:	0009                	.insn	2, 0x0009
    2c26:	0100                	.insn	2, 0x0100
    2c28:	0305                	.insn	2, 0x0305
    2c2a:	0009                	.insn	2, 0x0009
    2c2c:	0100                	.insn	2, 0x0100
    2c2e:	0305                	.insn	2, 0x0305
    2c30:	0409                	.insn	2, 0x0409
    2c32:	0000                	.insn	2, 0x0000
    2c34:	0402                	.insn	2, 0x0402
    2c36:	0101                	.insn	2, 0x0101
    2c38:	0305                	.insn	2, 0x0305
    2c3a:	0409                	.insn	2, 0x0409
    2c3c:	0000                	.insn	2, 0x0000
    2c3e:	0402                	.insn	2, 0x0402
    2c40:	0100                	.insn	2, 0x0100
    2c42:	0305                	.insn	2, 0x0305
    2c44:	0009                	.insn	2, 0x0009
    2c46:	0100                	.insn	2, 0x0100
    2c48:	0305                	.insn	2, 0x0305
    2c4a:	0009                	.insn	2, 0x0009
    2c4c:	0000                	.insn	2, 0x0000
    2c4e:	0402                	.insn	2, 0x0402
    2c50:	0104                	.insn	2, 0x0104
    2c52:	0305                	.insn	2, 0x0305
    2c54:	0409                	.insn	2, 0x0409
    2c56:	0000                	.insn	2, 0x0000
    2c58:	0402                	.insn	2, 0x0402
    2c5a:	0100                	.insn	2, 0x0100
    2c5c:	0305                	.insn	2, 0x0305
    2c5e:	0009                	.insn	2, 0x0009
    2c60:	0100                	.insn	2, 0x0100
    2c62:	0305                	.insn	2, 0x0305
    2c64:	0009                	.insn	2, 0x0009
    2c66:	0100                	.insn	2, 0x0100
    2c68:	0305                	.insn	2, 0x0305
    2c6a:	0009                	.insn	2, 0x0009
    2c6c:	1900                	.insn	2, 0x1900
    2c6e:	0305                	.insn	2, 0x0305
    2c70:	0009                	.insn	2, 0x0009
    2c72:	0100                	.insn	2, 0x0100
    2c74:	0305                	.insn	2, 0x0305
    2c76:	0009                	.insn	2, 0x0009
    2c78:	0100                	.insn	2, 0x0100
    2c7a:	0305                	.insn	2, 0x0305
    2c7c:	0009                	.insn	2, 0x0009
    2c7e:	0100                	.insn	2, 0x0100
    2c80:	0305                	.insn	2, 0x0305
    2c82:	0009                	.insn	2, 0x0009
    2c84:	0100                	.insn	2, 0x0100
    2c86:	0305                	.insn	2, 0x0305
    2c88:	0409                	.insn	2, 0x0409
    2c8a:	0600                	.insn	2, 0x0600
    2c8c:	0501                	.insn	2, 0x0501
    2c8e:	00080903          	lb	s2,0(a6)
    2c92:	0501                	.insn	2, 0x0501
    2c94:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2c98:	0901051b          	addiw	a0,sp,144
    2c9c:	0004                	.insn	2, 0x0004
    2c9e:	09030513          	addi	a0,t1,144
    2ca2:	0004                	.insn	2, 0x0004
    2ca4:	0901051b          	addiw	a0,sp,144
    2ca8:	0004                	.insn	2, 0x0004
    2caa:	09030513          	addi	a0,t1,144
    2cae:	0004                	.insn	2, 0x0004
    2cb0:	0106                	.insn	2, 0x0106
    2cb2:	0305                	.insn	2, 0x0305
    2cb4:	0009                	.insn	2, 0x0009
    2cb6:	0600                	.insn	2, 0x0600
    2cb8:	0501                	.insn	2, 0x0501
    2cba:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2cbe:	0106                	.insn	2, 0x0106
    2cc0:	0305                	.insn	2, 0x0305
    2cc2:	0009                	.insn	2, 0x0009
    2cc4:	1800                	.insn	2, 0x1800
    2cc6:	0305                	.insn	2, 0x0305
    2cc8:	0009                	.insn	2, 0x0009
    2cca:	0100                	.insn	2, 0x0100
    2ccc:	0305                	.insn	2, 0x0305
    2cce:	0009                	.insn	2, 0x0009
    2cd0:	0100                	.insn	2, 0x0100
    2cd2:	0305                	.insn	2, 0x0305
    2cd4:	0009                	.insn	2, 0x0009
    2cd6:	1900                	.insn	2, 0x1900
    2cd8:	0305                	.insn	2, 0x0305
    2cda:	0009                	.insn	2, 0x0009
    2cdc:	0600                	.insn	2, 0x0600
    2cde:	0518                	.insn	2, 0x0518
    2ce0:	0901                	.insn	2, 0x0901
    2ce2:	0004                	.insn	2, 0x0004
    2ce4:	0501                	.insn	2, 0x0501
    2ce6:	0901                	.insn	2, 0x0901
    2ce8:	0004                	.insn	2, 0x0004
    2cea:	0501                	.insn	2, 0x0501
    2cec:	0901                	.insn	2, 0x0901
    2cee:	0008                	.insn	2, 0x0008
    2cf0:	0200                	.insn	2, 0x0200
    2cf2:	0204                	.insn	2, 0x0204
    2cf4:	1106                	.insn	2, 0x1106
    2cf6:	0305                	.insn	2, 0x0305
    2cf8:	0409                	.insn	2, 0x0409
    2cfa:	0000                	.insn	2, 0x0000
    2cfc:	0402                	.insn	2, 0x0402
    2cfe:	0105                	.insn	2, 0x0105
    2d00:	0305                	.insn	2, 0x0305
    2d02:	0009                	.insn	2, 0x0009
    2d04:	0100                	.insn	2, 0x0100
    2d06:	0305                	.insn	2, 0x0305
    2d08:	0009                	.insn	2, 0x0009
    2d0a:	0000                	.insn	2, 0x0000
    2d0c:	0402                	.insn	2, 0x0402
    2d0e:	0109                	.insn	2, 0x0109
    2d10:	0305                	.insn	2, 0x0305
    2d12:	0009                	.insn	2, 0x0009
    2d14:	0100                	.insn	2, 0x0100
    2d16:	0305                	.insn	2, 0x0305
    2d18:	0409                	.insn	2, 0x0409
    2d1a:	0000                	.insn	2, 0x0000
    2d1c:	0402                	.insn	2, 0x0402
    2d1e:	0305010b          	.insn	4, 0x0305010b
    2d22:	0009                	.insn	2, 0x0009
    2d24:	0000                	.insn	2, 0x0000
    2d26:	0402                	.insn	2, 0x0402
    2d28:	010d                	.insn	2, 0x010d
    2d2a:	0305                	.insn	2, 0x0305
    2d2c:	0009                	.insn	2, 0x0009
    2d2e:	0100                	.insn	2, 0x0100
    2d30:	0305                	.insn	2, 0x0305
    2d32:	0009                	.insn	2, 0x0009
    2d34:	0000                	.insn	2, 0x0000
    2d36:	0402                	.insn	2, 0x0402
    2d38:	0100                	.insn	2, 0x0100
    2d3a:	0305                	.insn	2, 0x0305
    2d3c:	0009                	.insn	2, 0x0009
    2d3e:	0100                	.insn	2, 0x0100
    2d40:	0305                	.insn	2, 0x0305
    2d42:	0009                	.insn	2, 0x0009
    2d44:	0100                	.insn	2, 0x0100
    2d46:	0305                	.insn	2, 0x0305
    2d48:	0009                	.insn	2, 0x0009
    2d4a:	0000                	.insn	2, 0x0000
    2d4c:	0402                	.insn	2, 0x0402
    2d4e:	0114                	.insn	2, 0x0114
    2d50:	0305                	.insn	2, 0x0305
    2d52:	0009                	.insn	2, 0x0009
    2d54:	0000                	.insn	2, 0x0000
    2d56:	0402                	.insn	2, 0x0402
    2d58:	03050117          	auipc	sp,0x3050
    2d5c:	0409                	.insn	2, 0x0409
    2d5e:	0600                	.insn	2, 0x0600
    2d60:	0501                	.insn	2, 0x0501
    2d62:	00040903          	lb	s2,0(s0)
    2d66:	0200                	.insn	2, 0x0200
    2d68:	1c04                	.insn	2, 0x1c04
    2d6a:	0106                	.insn	2, 0x0106
    2d6c:	0305                	.insn	2, 0x0305
    2d6e:	0009                	.insn	2, 0x0009
    2d70:	0100                	.insn	2, 0x0100
    2d72:	0305                	.insn	2, 0x0305
    2d74:	0009                	.insn	2, 0x0009
    2d76:	0100                	.insn	2, 0x0100
    2d78:	0305                	.insn	2, 0x0305
    2d7a:	0009                	.insn	2, 0x0009
    2d7c:	0000                	.insn	2, 0x0000
    2d7e:	0402                	.insn	2, 0x0402
    2d80:	0121                	.insn	2, 0x0121
    2d82:	0305                	.insn	2, 0x0305
    2d84:	0009                	.insn	2, 0x0009
    2d86:	0000                	.insn	2, 0x0000
    2d88:	0402                	.insn	2, 0x0402
    2d8a:	061c                	.insn	2, 0x061c
    2d8c:	0501                	.insn	2, 0x0501
    2d8e:	00040903          	lb	s2,0(s0)
    2d92:	0200                	.insn	2, 0x0200
    2d94:	2104                	.insn	2, 0x2104
    2d96:	0501                	.insn	2, 0x0501
    2d98:	00040903          	lb	s2,0(s0)
    2d9c:	0200                	.insn	2, 0x0200
    2d9e:	2304                	.insn	2, 0x2304
    2da0:	0106                	.insn	2, 0x0106
    2da2:	0305                	.insn	2, 0x0305
    2da4:	0009                	.insn	2, 0x0009
    2da6:	0100                	.insn	2, 0x0100
    2da8:	0305                	.insn	2, 0x0305
    2daa:	0809                	.insn	2, 0x0809
    2dac:	0600                	.insn	2, 0x0600
    2dae:	0501                	.insn	2, 0x0501
    2db0:	00040903          	lb	s2,0(s0)
    2db4:	0501                	.insn	2, 0x0501
    2db6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2dba:	0200                	.insn	2, 0x0200
    2dbc:	0604                	.insn	2, 0x0604
    2dbe:	0106                	.insn	2, 0x0106
    2dc0:	0305                	.insn	2, 0x0305
    2dc2:	0009                	.insn	2, 0x0009
    2dc4:	0000                	.insn	2, 0x0000
    2dc6:	0402                	.insn	2, 0x0402
    2dc8:	0100                	.insn	2, 0x0100
    2dca:	0305                	.insn	2, 0x0305
    2dcc:	0009                	.insn	2, 0x0009
    2dce:	0000                	.insn	2, 0x0000
    2dd0:	0402                	.insn	2, 0x0402
    2dd2:	0606                	.insn	2, 0x0606
    2dd4:	0501                	.insn	2, 0x0501
    2dd6:	00040903          	lb	s2,0(s0)
    2dda:	0501                	.insn	2, 0x0501
    2ddc:	00040903          	lb	s2,0(s0)
    2de0:	0200                	.insn	2, 0x0200
    2de2:	2404                	.insn	2, 0x2404
    2de4:	0106                	.insn	2, 0x0106
    2de6:	0305                	.insn	2, 0x0305
    2de8:	0009                	.insn	2, 0x0009
    2dea:	0000                	.insn	2, 0x0000
    2dec:	0402                	.insn	2, 0x0402
    2dee:	0125                	.insn	2, 0x0125
    2df0:	0305                	.insn	2, 0x0305
    2df2:	0009                	.insn	2, 0x0009
    2df4:	0000                	.insn	2, 0x0000
    2df6:	0402                	.insn	2, 0x0402
    2df8:	03050127          	.insn	4, 0x03050127
    2dfc:	0009                	.insn	2, 0x0009
    2dfe:	0100                	.insn	2, 0x0100
    2e00:	0305                	.insn	2, 0x0305
    2e02:	0009                	.insn	2, 0x0009
    2e04:	0000                	.insn	2, 0x0000
    2e06:	0402                	.insn	2, 0x0402
    2e08:	0129                	.insn	2, 0x0129
    2e0a:	0305                	.insn	2, 0x0305
    2e0c:	0009                	.insn	2, 0x0009
    2e0e:	0000                	.insn	2, 0x0000
    2e10:	0402                	.insn	2, 0x0402
    2e12:	062e                	.insn	2, 0x062e
    2e14:	0501                	.insn	2, 0x0501
    2e16:	00040903          	lb	s2,0(s0)
    2e1a:	0200                	.insn	2, 0x0200
    2e1c:	2904                	.insn	2, 0x2904
    2e1e:	0501                	.insn	2, 0x0501
    2e20:	00040903          	lb	s2,0(s0)
    2e24:	0200                	.insn	2, 0x0200
    2e26:	2b04                	.insn	2, 0x2b04
    2e28:	0106                	.insn	2, 0x0106
    2e2a:	0305                	.insn	2, 0x0305
    2e2c:	0009                	.insn	2, 0x0009
    2e2e:	0100                	.insn	2, 0x0100
    2e30:	0305                	.insn	2, 0x0305
    2e32:	0009                	.insn	2, 0x0009
    2e34:	0000                	.insn	2, 0x0000
    2e36:	0402                	.insn	2, 0x0402
    2e38:	012c                	.insn	2, 0x012c
    2e3a:	0305                	.insn	2, 0x0305
    2e3c:	0009                	.insn	2, 0x0009
    2e3e:	0100                	.insn	2, 0x0100
    2e40:	0305                	.insn	2, 0x0305
    2e42:	0009                	.insn	2, 0x0009
    2e44:	0000                	.insn	2, 0x0000
    2e46:	0402                	.insn	2, 0x0402
    2e48:	012e                	.insn	2, 0x012e
    2e4a:	0305                	.insn	2, 0x0305
    2e4c:	0809                	.insn	2, 0x0809
    2e4e:	0600                	.insn	2, 0x0600
    2e50:	0501                	.insn	2, 0x0501
    2e52:	02090003          	lb	zero,32(s2)
    2e56:	11d4                	.insn	2, 0x11d4
    2e58:	0001                	.insn	2, 0x0001
    2e5a:	0000                	.insn	2, 0x0000
    2e5c:	0000                	.insn	2, 0x0000
    2e5e:	0100                	.insn	2, 0x0100
    2e60:	8101                	.insn	2, 0x8101
    2e62:	0004                	.insn	2, 0x0004
    2e64:	0500                	.insn	2, 0x0500
    2e66:	0800                	.insn	2, 0x0800
    2e68:	3800                	.insn	2, 0x3800
    2e6a:	0000                	.insn	2, 0x0000
    2e6c:	0100                	.insn	2, 0x0100
    2e6e:	0101                	.insn	2, 0x0101
    2e70:	f2f6                	.insn	2, 0xf2f6
    2e72:	000d                	.insn	2, 0x000d
    2e74:	0101                	.insn	2, 0x0101
    2e76:	0101                	.insn	2, 0x0101
    2e78:	0000                	.insn	2, 0x0000
    2e7a:	0100                	.insn	2, 0x0100
    2e7c:	0000                	.insn	2, 0x0000
    2e7e:	0101                	.insn	2, 0x0101
    2e80:	1f01                	.insn	2, 0x1f01
    2e82:	0002                	.insn	2, 0x0002
    2e84:	0000                	.insn	2, 0x0000
    2e86:	9700                	.insn	2, 0x9700
    2e88:	0000                	.insn	2, 0x0000
    2e8a:	0200                	.insn	2, 0x0200
    2e8c:	1f01                	.insn	2, 0x1f01
    2e8e:	0b02                	.insn	2, 0x0b02
    2e90:	9804                	.insn	2, 0x9804
    2e92:	0001                	.insn	2, 0x0001
    2e94:	0000                	.insn	2, 0x0000
    2e96:	01bd                	.insn	2, 0x01bd
    2e98:	0000                	.insn	2, 0x0000
    2e9a:	5c01                	.insn	2, 0x5c01
    2e9c:	0001                	.insn	2, 0x0001
    2e9e:	0100                	.insn	2, 0x0100
    2ea0:	00bc                	.insn	2, 0x00bc
    2ea2:	0000                	.insn	2, 0x0000
    2ea4:	0001                	.insn	2, 0x0001
    2ea6:	0209                	.insn	2, 0x0209
    2ea8:	11d4                	.insn	2, 0x11d4
    2eaa:	0001                	.insn	2, 0x0001
    2eac:	0000                	.insn	2, 0x0000
    2eae:	0000                	.insn	2, 0x0000
    2eb0:	0539                	.insn	2, 0x0539
    2eb2:	0901                	.insn	2, 0x0901
    2eb4:	0000                	.insn	2, 0x0000
    2eb6:	0518                	.insn	2, 0x0518
    2eb8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ebc:	0501                	.insn	2, 0x0501
    2ebe:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ec2:	0501                	.insn	2, 0x0501
    2ec4:	090d                	.insn	2, 0x090d
    2ec6:	0000                	.insn	2, 0x0000
    2ec8:	0518                	.insn	2, 0x0518
    2eca:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ece:	0501                	.insn	2, 0x0501
    2ed0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ed4:	0501                	.insn	2, 0x0501
    2ed6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2eda:	0501                	.insn	2, 0x0501
    2edc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ee0:	0518                	.insn	2, 0x0518
    2ee2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ee6:	0501                	.insn	2, 0x0501
    2ee8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2eec:	0501                	.insn	2, 0x0501
    2eee:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ef2:	0501                	.insn	2, 0x0501
    2ef4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2ef8:	0518                	.insn	2, 0x0518
    2efa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2efe:	0519                	.insn	2, 0x0519
    2f00:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f04:	0518                	.insn	2, 0x0518
    2f06:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f0a:	0501                	.insn	2, 0x0501
    2f0c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f10:	0501                	.insn	2, 0x0501
    2f12:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f16:	0501                	.insn	2, 0x0501
    2f18:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f1c:	0501                	.insn	2, 0x0501
    2f1e:	00080903          	lb	s2,0(a6)
    2f22:	1b06                	.insn	2, 0x1b06
    2f24:	0305                	.insn	2, 0x0305
    2f26:	0409                	.insn	2, 0x0409
    2f28:	1300                	.insn	2, 0x1300
    2f2a:	0305                	.insn	2, 0x0305
    2f2c:	0409                	.insn	2, 0x0409
    2f2e:	1b00                	.insn	2, 0x1b00
    2f30:	0305                	.insn	2, 0x0305
    2f32:	0409                	.insn	2, 0x0409
    2f34:	1300                	.insn	2, 0x1300
    2f36:	0305                	.insn	2, 0x0305
    2f38:	0409                	.insn	2, 0x0409
    2f3a:	0600                	.insn	2, 0x0600
    2f3c:	0501                	.insn	2, 0x0501
    2f3e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f42:	0501                	.insn	2, 0x0501
    2f44:	00040903          	lb	s2,0(s0)
    2f48:	0106                	.insn	2, 0x0106
    2f4a:	0305                	.insn	2, 0x0305
    2f4c:	0009                	.insn	2, 0x0009
    2f4e:	0600                	.insn	2, 0x0600
    2f50:	0501                	.insn	2, 0x0501
    2f52:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f56:	0501                	.insn	2, 0x0501
    2f58:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f5c:	0501                	.insn	2, 0x0501
    2f5e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f62:	0200                	.insn	2, 0x0200
    2f64:	0204                	.insn	2, 0x0204
    2f66:	0501                	.insn	2, 0x0501
    2f68:	00040903          	lb	s2,0(s0)
    2f6c:	0200                	.insn	2, 0x0200
    2f6e:	0004                	.insn	2, 0x0004
    2f70:	0501                	.insn	2, 0x0501
    2f72:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f76:	0501                	.insn	2, 0x0501
    2f78:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f7c:	0903051b          	addiw	a0,t1,144
    2f80:	0000                	.insn	2, 0x0000
    2f82:	0501                	.insn	2, 0x0501
    2f84:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f88:	0501                	.insn	2, 0x0501
    2f8a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f8e:	0501                	.insn	2, 0x0501
    2f90:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2f94:	0501                	.insn	2, 0x0501
    2f96:	00040903          	lb	s2,0(s0)
    2f9a:	0200                	.insn	2, 0x0200
    2f9c:	0104                	.insn	2, 0x0104
    2f9e:	0501                	.insn	2, 0x0501
    2fa0:	00040903          	lb	s2,0(s0)
    2fa4:	0200                	.insn	2, 0x0200
    2fa6:	0004                	.insn	2, 0x0004
    2fa8:	0501                	.insn	2, 0x0501
    2faa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fae:	0200                	.insn	2, 0x0200
    2fb0:	0104                	.insn	2, 0x0104
    2fb2:	0106                	.insn	2, 0x0106
    2fb4:	0305                	.insn	2, 0x0305
    2fb6:	0809                	.insn	2, 0x0809
    2fb8:	0000                	.insn	2, 0x0000
    2fba:	0402                	.insn	2, 0x0402
    2fbc:	0604                	.insn	2, 0x0604
    2fbe:	0501                	.insn	2, 0x0501
    2fc0:	00040903          	lb	s2,0(s0)
    2fc4:	0200                	.insn	2, 0x0200
    2fc6:	1104                	.insn	2, 0x1104
    2fc8:	0501                	.insn	2, 0x0501
    2fca:	000c0903          	lb	s2,0(s8)
    2fce:	0200                	.insn	2, 0x0200
    2fd0:	1404                	.insn	2, 0x1404
    2fd2:	0501                	.insn	2, 0x0501
    2fd4:	00080903          	lb	s2,0(a6)
    2fd8:	0200                	.insn	2, 0x0200
    2fda:	0004                	.insn	2, 0x0004
    2fdc:	0501                	.insn	2, 0x0501
    2fde:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    2fe2:	0200                	.insn	2, 0x0200
    2fe4:	1404                	.insn	2, 0x1404
    2fe6:	0106                	.insn	2, 0x0106
    2fe8:	0305                	.insn	2, 0x0305
    2fea:	0809                	.insn	2, 0x0809
    2fec:	0000                	.insn	2, 0x0000
    2fee:	0402                	.insn	2, 0x0402
    2ff0:	011a                	.insn	2, 0x011a
    2ff2:	0305                	.insn	2, 0x0305
    2ff4:	0409                	.insn	2, 0x0409
    2ff6:	0000                	.insn	2, 0x0000
    2ff8:	0402                	.insn	2, 0x0402
    2ffa:	0114                	.insn	2, 0x0114
    2ffc:	0305                	.insn	2, 0x0305
    2ffe:	0409                	.insn	2, 0x0409
    3000:	0000                	.insn	2, 0x0000
    3002:	0402                	.insn	2, 0x0402
    3004:	011a                	.insn	2, 0x011a
    3006:	0305                	.insn	2, 0x0305
    3008:	0409                	.insn	2, 0x0409
    300a:	0100                	.insn	2, 0x0100
    300c:	0305                	.insn	2, 0x0305
    300e:	0409                	.insn	2, 0x0409
    3010:	0000                	.insn	2, 0x0000
    3012:	0402                	.insn	2, 0x0402
    3014:	011c                	.insn	2, 0x011c
    3016:	0305                	.insn	2, 0x0305
    3018:	0409                	.insn	2, 0x0409
    301a:	0000                	.insn	2, 0x0000
    301c:	0402                	.insn	2, 0x0402
    301e:	0600                	.insn	2, 0x0600
    3020:	0519                	.insn	2, 0x0519
    3022:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3026:	0200                	.insn	2, 0x0200
    3028:	0704                	.insn	2, 0x0704
    302a:	0501                	.insn	2, 0x0501
    302c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3030:	0501                	.insn	2, 0x0501
    3032:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3036:	0501                	.insn	2, 0x0501
    3038:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    303c:	0501                	.insn	2, 0x0501
    303e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3042:	0501                	.insn	2, 0x0501
    3044:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3048:	0200                	.insn	2, 0x0200
    304a:	0004                	.insn	2, 0x0004
    304c:	0501                	.insn	2, 0x0501
    304e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3052:	0501                	.insn	2, 0x0501
    3054:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3058:	0501                	.insn	2, 0x0501
    305a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    305e:	0501                	.insn	2, 0x0501
    3060:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3064:	0200                	.insn	2, 0x0200
    3066:	0904                	.insn	2, 0x0904
    3068:	0501                	.insn	2, 0x0501
    306a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    306e:	0200                	.insn	2, 0x0200
    3070:	0c04                	.insn	2, 0x0c04
    3072:	0501                	.insn	2, 0x0501
    3074:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3078:	0501                	.insn	2, 0x0501
    307a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    307e:	0501                	.insn	2, 0x0501
    3080:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3084:	0200                	.insn	2, 0x0200
    3086:	0d04                	.insn	2, 0x0d04
    3088:	0501                	.insn	2, 0x0501
    308a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    308e:	0200                	.insn	2, 0x0200
    3090:	0004                	.insn	2, 0x0004
    3092:	0501                	.insn	2, 0x0501
    3094:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3098:	0501                	.insn	2, 0x0501
    309a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    309e:	0501                	.insn	2, 0x0501
    30a0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30a4:	0200                	.insn	2, 0x0200
    30a6:	1404                	.insn	2, 0x1404
    30a8:	0501                	.insn	2, 0x0501
    30aa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30ae:	0106                	.insn	2, 0x0106
    30b0:	0305                	.insn	2, 0x0305
    30b2:	0409                	.insn	2, 0x0409
    30b4:	0100                	.insn	2, 0x0100
    30b6:	0305                	.insn	2, 0x0305
    30b8:	0009                	.insn	2, 0x0009
    30ba:	0000                	.insn	2, 0x0000
    30bc:	0402                	.insn	2, 0x0402
    30be:	061c                	.insn	2, 0x061c
    30c0:	0501                	.insn	2, 0x0501
    30c2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30c6:	0501                	.insn	2, 0x0501
    30c8:	00080903          	lb	s2,0(a6)
    30cc:	0200                	.insn	2, 0x0200
    30ce:	1d04                	.insn	2, 0x1d04
    30d0:	0501                	.insn	2, 0x0501
    30d2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30d6:	0200                	.insn	2, 0x0200
    30d8:	0004                	.insn	2, 0x0004
    30da:	0501                	.insn	2, 0x0501
    30dc:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30e0:	0501                	.insn	2, 0x0501
    30e2:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30e6:	0501                	.insn	2, 0x0501
    30e8:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    30ec:	0200                	.insn	2, 0x0200
    30ee:	2004                	.insn	2, 0x2004
    30f0:	0106                	.insn	2, 0x0106
    30f2:	0305                	.insn	2, 0x0305
    30f4:	0c09                	.insn	2, 0x0c09
    30f6:	0000                	.insn	2, 0x0000
    30f8:	0402                	.insn	2, 0x0402
    30fa:	0624                	.insn	2, 0x0624
    30fc:	0501                	.insn	2, 0x0501
    30fe:	00040903          	lb	s2,0(s0)
    3102:	0200                	.insn	2, 0x0200
    3104:	2504                	.insn	2, 0x2504
    3106:	0501                	.insn	2, 0x0501
    3108:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    310c:	0501                	.insn	2, 0x0501
    310e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3112:	0200                	.insn	2, 0x0200
    3114:	2e04                	.insn	2, 0x2e04
    3116:	0501                	.insn	2, 0x0501
    3118:	00080903          	lb	s2,0(a6)
    311c:	0200                	.insn	2, 0x0200
    311e:	2f04                	.insn	2, 0x2f04
    3120:	0501                	.insn	2, 0x0501
    3122:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3126:	0200                	.insn	2, 0x0200
    3128:	0004                	.insn	2, 0x0004
    312a:	0501                	.insn	2, 0x0501
    312c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3130:	0200                	.insn	2, 0x0200
    3132:	2f04                	.insn	2, 0x2f04
    3134:	0106                	.insn	2, 0x0106
    3136:	0305                	.insn	2, 0x0305
    3138:	0409                	.insn	2, 0x0409
    313a:	0000                	.insn	2, 0x0000
    313c:	0402                	.insn	2, 0x0402
    313e:	0600                	.insn	2, 0x0600
    3140:	0501                	.insn	2, 0x0501
    3142:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3146:	0200                	.insn	2, 0x0200
    3148:	3f04                	.insn	2, 0x3f04
    314a:	0106                	.insn	2, 0x0106
    314c:	0305                	.insn	2, 0x0305
    314e:	0809                	.insn	2, 0x0809
    3150:	0100                	.insn	2, 0x0100
    3152:	0305                	.insn	2, 0x0305
    3154:	0009                	.insn	2, 0x0009
    3156:	0000                	.insn	2, 0x0000
    3158:	0402                	.insn	2, 0x0402
    315a:	0612                	.insn	2, 0x0612
    315c:	0515                	.insn	2, 0x0515
    315e:	00080903          	lb	s2,0(a6)
    3162:	0106                	.insn	2, 0x0106
    3164:	0305                	.insn	2, 0x0305
    3166:	0809                	.insn	2, 0x0809
    3168:	0000                	.insn	2, 0x0000
    316a:	0402                	.insn	2, 0x0402
    316c:	061f 0501 0903      	.insn	6, 0x09030501061f
    3172:	0000                	.insn	2, 0x0000
    3174:	0200                	.insn	2, 0x0200
    3176:	0004                	.insn	2, 0x0004
    3178:	0501                	.insn	2, 0x0501
    317a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    317e:	0501                	.insn	2, 0x0501
    3180:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3184:	0519                	.insn	2, 0x0519
    3186:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    318a:	0501                	.insn	2, 0x0501
    318c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3190:	0501                	.insn	2, 0x0501
    3192:	00040903          	lb	s2,0(s0)
    3196:	0106                	.insn	2, 0x0106
    3198:	0305                	.insn	2, 0x0305
    319a:	0009                	.insn	2, 0x0009
    319c:	0000                	.insn	2, 0x0000
    319e:	0402                	.insn	2, 0x0402
    31a0:	0602                	.insn	2, 0x0602
    31a2:	0515                	.insn	2, 0x0515
    31a4:	00040903          	lb	s2,0(s0)
    31a8:	0200                	.insn	2, 0x0200
    31aa:	2004                	.insn	2, 0x2004
    31ac:	0501                	.insn	2, 0x0501
    31ae:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31b2:	0501                	.insn	2, 0x0501
    31b4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31b8:	0200                	.insn	2, 0x0200
    31ba:	2404                	.insn	2, 0x2404
    31bc:	0501                	.insn	2, 0x0501
    31be:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31c2:	0501                	.insn	2, 0x0501
    31c4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31c8:	0200                	.insn	2, 0x0200
    31ca:	0004                	.insn	2, 0x0004
    31cc:	0501                	.insn	2, 0x0501
    31ce:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31d2:	0200                	.insn	2, 0x0200
    31d4:	2804                	.insn	2, 0x2804
    31d6:	0106                	.insn	2, 0x0106
    31d8:	0305                	.insn	2, 0x0305
    31da:	0409                	.insn	2, 0x0409
    31dc:	0000                	.insn	2, 0x0000
    31de:	0402                	.insn	2, 0x0402
    31e0:	0124                	.insn	2, 0x0124
    31e2:	0305                	.insn	2, 0x0305
    31e4:	0409                	.insn	2, 0x0409
    31e6:	0000                	.insn	2, 0x0000
    31e8:	0402                	.insn	2, 0x0402
    31ea:	064a                	.insn	2, 0x064a
    31ec:	0519                	.insn	2, 0x0519
    31ee:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31f2:	0501                	.insn	2, 0x0501
    31f4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31f8:	0501                	.insn	2, 0x0501
    31fa:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    31fe:	0501                	.insn	2, 0x0501
    3200:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3204:	0501                	.insn	2, 0x0501
    3206:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    320a:	0200                	.insn	2, 0x0200
    320c:	0004                	.insn	2, 0x0004
    320e:	0501                	.insn	2, 0x0501
    3210:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3214:	0501                	.insn	2, 0x0501
    3216:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    321a:	0200                	.insn	2, 0x0200
    321c:	4a04                	.insn	2, 0x4a04
    321e:	0106                	.insn	2, 0x0106
    3220:	0305                	.insn	2, 0x0305
    3222:	0c09                	.insn	2, 0x0c09
    3224:	0000                	.insn	2, 0x0000
    3226:	0402                	.insn	2, 0x0402
    3228:	0600                	.insn	2, 0x0600
    322a:	0501                	.insn	2, 0x0501
    322c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3230:	0106                	.insn	2, 0x0106
    3232:	0305                	.insn	2, 0x0305
    3234:	0009                	.insn	2, 0x0009
    3236:	0000                	.insn	2, 0x0000
    3238:	0402                	.insn	2, 0x0402
    323a:	064a                	.insn	2, 0x064a
    323c:	0501                	.insn	2, 0x0501
    323e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3242:	0501                	.insn	2, 0x0501
    3244:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3248:	0200                	.insn	2, 0x0200
    324a:	0004                	.insn	2, 0x0004
    324c:	0518                	.insn	2, 0x0518
    324e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3252:	0501                	.insn	2, 0x0501
    3254:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3258:	0501                	.insn	2, 0x0501
    325a:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    325e:	0519                	.insn	2, 0x0519
    3260:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3264:	1806                	.insn	2, 0x1806
    3266:	0105                	.insn	2, 0x0105
    3268:	0409                	.insn	2, 0x0409
    326a:	0100                	.insn	2, 0x0100
    326c:	0105                	.insn	2, 0x0105
    326e:	0409                	.insn	2, 0x0409
    3270:	0000                	.insn	2, 0x0000
    3272:	0402                	.insn	2, 0x0402
    3274:	0621                	.insn	2, 0x0621
    3276:	0511                	.insn	2, 0x0511
    3278:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    327c:	0200                	.insn	2, 0x0200
    327e:	0004                	.insn	2, 0x0004
    3280:	0501                	.insn	2, 0x0501
    3282:	00040903          	lb	s2,0(s0)
    3286:	0200                	.insn	2, 0x0200
    3288:	2104                	.insn	2, 0x2104
    328a:	0106                	.insn	2, 0x0106
    328c:	0305                	.insn	2, 0x0305
    328e:	0409                	.insn	2, 0x0409
    3290:	0100                	.insn	2, 0x0100
    3292:	0305                	.insn	2, 0x0305
    3294:	0409                	.insn	2, 0x0409
    3296:	0000                	.insn	2, 0x0000
    3298:	0402                	.insn	2, 0x0402
    329a:	1944                	.insn	2, 0x1944
    329c:	0305                	.insn	2, 0x0305
    329e:	0409                	.insn	2, 0x0409
    32a0:	0100                	.insn	2, 0x0100
    32a2:	0305                	.insn	2, 0x0305
    32a4:	0409                	.insn	2, 0x0409
    32a6:	0100                	.insn	2, 0x0100
    32a8:	0305                	.insn	2, 0x0305
    32aa:	0409                	.insn	2, 0x0409
    32ac:	0100                	.insn	2, 0x0100
    32ae:	0305                	.insn	2, 0x0305
    32b0:	0409                	.insn	2, 0x0409
    32b2:	0000                	.insn	2, 0x0000
    32b4:	0402                	.insn	2, 0x0402
    32b6:	0501063f 00000903 	.insn	8, 0x09030501063f
    32be:	0501                	.insn	2, 0x0501
    32c0:	00040903          	lb	s2,0(s0)
    32c4:	0200                	.insn	2, 0x0200
    32c6:	0004                	.insn	2, 0x0004
    32c8:	0501                	.insn	2, 0x0501
    32ca:	00040903          	lb	s2,0(s0)
    32ce:	0106                	.insn	2, 0x0106
    32d0:	0305                	.insn	2, 0x0305
    32d2:	0409                	.insn	2, 0x0409
    32d4:	0100                	.insn	2, 0x0100
    32d6:	0305                	.insn	2, 0x0305
    32d8:	0900                	.insn	2, 0x0900
    32da:	c802                	.insn	2, 0xc802
    32dc:	0112                	.insn	2, 0x0112
    32de:	0000                	.insn	2, 0x0000
    32e0:	0000                	.insn	2, 0x0000
    32e2:	0000                	.insn	2, 0x0000
    32e4:	0101                	.insn	2, 0x0101
    32e6:	007a                	.insn	2, 0x007a
    32e8:	0000                	.insn	2, 0x0000
    32ea:	0005                	.insn	2, 0x0005
    32ec:	0008                	.insn	2, 0x0008
    32ee:	002e                	.insn	2, 0x002e
    32f0:	0000                	.insn	2, 0x0000
    32f2:	0101                	.insn	2, 0x0101
    32f4:	fb01                	.insn	2, 0xfb01
    32f6:	0d0e                	.insn	2, 0x0d0e
    32f8:	0100                	.insn	2, 0x0100
    32fa:	0101                	.insn	2, 0x0101
    32fc:	0001                	.insn	2, 0x0001
    32fe:	0000                	.insn	2, 0x0000
    3300:	0001                	.insn	2, 0x0001
    3302:	0100                	.insn	2, 0x0100
    3304:	0101                	.insn	2, 0x0101
    3306:	021f 0000 0000      	.insn	6, 0x021f
    330c:	01ca                	.insn	2, 0x01ca
    330e:	0000                	.insn	2, 0x0000
    3310:	0102                	.insn	2, 0x0102
    3312:	021f 020f 01f4      	.insn	6, 0x01f4020f021f
    3318:	0000                	.insn	2, 0x0000
    331a:	f401                	.insn	2, 0xf401
    331c:	0001                	.insn	2, 0x0001
    331e:	0100                	.insn	2, 0x0100
    3320:	0900                	.insn	2, 0x0900
    3322:	c802                	.insn	2, 0xc802
    3324:	0112                	.insn	2, 0x0112
    3326:	0000                	.insn	2, 0x0000
    3328:	0000                	.insn	2, 0x0000
    332a:	0300                	.insn	2, 0x0300
    332c:	0124                	.insn	2, 0x0124
    332e:	04090103          	lb	sp,64(s2)
    3332:	0100                	.insn	2, 0x0100
    3334:	04090203          	lb	tp,64(s2)
    3338:	0100                	.insn	2, 0x0100
    333a:	04090103          	lb	sp,64(s2)
    333e:	0100                	.insn	2, 0x0100
    3340:	04090103          	lb	sp,64(s2)
    3344:	0100                	.insn	2, 0x0100
    3346:	04090203          	lb	tp,64(s2)
    334a:	0100                	.insn	2, 0x0100
    334c:	04090103          	lb	sp,64(s2)
    3350:	0100                	.insn	2, 0x0100
    3352:	04090103          	lb	sp,64(s2)
    3356:	0100                	.insn	2, 0x0100
    3358:	04090103          	lb	sp,64(s2)
    335c:	0100                	.insn	2, 0x0100
    335e:	0409                	.insn	2, 0x0409
    3360:	0000                	.insn	2, 0x0000
    3362:	0101                	.insn	2, 0x0101
    3364:	00ff 0000 0005 0008 	.insn	10, 0x003300080005000000ff
    336c:	0033 
    336e:	0000                	.insn	2, 0x0000
    3370:	0101                	.insn	2, 0x0101
    3372:	f601                	.insn	2, 0xf601
    3374:	0df2                	.insn	2, 0x0df2
    3376:	0100                	.insn	2, 0x0100
    3378:	0101                	.insn	2, 0x0101
    337a:	0001                	.insn	2, 0x0001
    337c:	0000                	.insn	2, 0x0000
    337e:	0001                	.insn	2, 0x0001
    3380:	0100                	.insn	2, 0x0100
    3382:	0101                	.insn	2, 0x0101
    3384:	021f 0000 0000      	.insn	6, 0x021f
    338a:	022e                	.insn	2, 0x022e
    338c:	0000                	.insn	2, 0x0000
    338e:	0102                	.insn	2, 0x0102
    3390:	021f 030b 01fd      	.insn	6, 0x01fd030b021f
    3396:	0000                	.insn	2, 0x0000
    3398:	1a00                	.insn	2, 0x1a00
    339a:	0002                	.insn	2, 0x0002
    339c:	0100                	.insn	2, 0x0100
    339e:	0224                	.insn	2, 0x0224
    33a0:	0000                	.insn	2, 0x0000
    33a2:	0001                	.insn	2, 0x0001
    33a4:	0209                	.insn	2, 0x0209
    33a6:	12ec                	.insn	2, 0x12ec
    33a8:	0001                	.insn	2, 0x0001
    33aa:	0000                	.insn	2, 0x0000
    33ac:	0000                	.insn	2, 0x0000
    33ae:	0105ae03          	lw	t3,16(a1)
    33b2:	0105                	.insn	2, 0x0105
    33b4:	0009                	.insn	2, 0x0009
    33b6:	1800                	.insn	2, 0x1800
    33b8:	0305                	.insn	2, 0x0305
    33ba:	0009                	.insn	2, 0x0009
    33bc:	1900                	.insn	2, 0x1900
    33be:	0305                	.insn	2, 0x0305
    33c0:	0009                	.insn	2, 0x0009
    33c2:	0100                	.insn	2, 0x0100
    33c4:	0305                	.insn	2, 0x0305
    33c6:	0009                	.insn	2, 0x0009
    33c8:	0100                	.insn	2, 0x0100
    33ca:	0305                	.insn	2, 0x0305
    33cc:	0009                	.insn	2, 0x0009
    33ce:	0100                	.insn	2, 0x0100
    33d0:	0305                	.insn	2, 0x0305
    33d2:	0009                	.insn	2, 0x0009
    33d4:	0000                	.insn	2, 0x0000
    33d6:	0402                	.insn	2, 0x0402
    33d8:	0102                	.insn	2, 0x0102
    33da:	0305                	.insn	2, 0x0305
    33dc:	0009                	.insn	2, 0x0009
    33de:	0000                	.insn	2, 0x0000
    33e0:	0402                	.insn	2, 0x0402
    33e2:	010c                	.insn	2, 0x010c
    33e4:	0305                	.insn	2, 0x0305
    33e6:	0009                	.insn	2, 0x0009
    33e8:	0000                	.insn	2, 0x0000
    33ea:	0402                	.insn	2, 0x0402
    33ec:	0602                	.insn	2, 0x0602
    33ee:	0501                	.insn	2, 0x0501
    33f0:	00040903          	lb	s2,0(s0)
    33f4:	0200                	.insn	2, 0x0200
    33f6:	0d04                	.insn	2, 0x0d04
    33f8:	0106                	.insn	2, 0x0106
    33fa:	0305                	.insn	2, 0x0305
    33fc:	0c09                	.insn	2, 0x0c09
    33fe:	0000                	.insn	2, 0x0000
    3400:	0402                	.insn	2, 0x0402
    3402:	0305010b          	.insn	4, 0x0305010b
    3406:	0409                	.insn	2, 0x0409
    3408:	0000                	.insn	2, 0x0000
    340a:	0402                	.insn	2, 0x0402
    340c:	010c                	.insn	2, 0x010c
    340e:	0305                	.insn	2, 0x0305
    3410:	0409                	.insn	2, 0x0409
    3412:	0000                	.insn	2, 0x0000
    3414:	0402                	.insn	2, 0x0402
    3416:	010e                	.insn	2, 0x010e
    3418:	0305                	.insn	2, 0x0305
    341a:	0009                	.insn	2, 0x0009
    341c:	0600                	.insn	2, 0x0600
    341e:	0501                	.insn	2, 0x0501
    3420:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
    3424:	0200                	.insn	2, 0x0200
    3426:	0004                	.insn	2, 0x0004
    3428:	0106                	.insn	2, 0x0106
    342a:	0305                	.insn	2, 0x0305
    342c:	0009                	.insn	2, 0x0009
    342e:	1900                	.insn	2, 0x1900
    3430:	0305                	.insn	2, 0x0305
    3432:	0009                	.insn	2, 0x0009
    3434:	0000                	.insn	2, 0x0000
    3436:	0402                	.insn	2, 0x0402
    3438:	060e                	.insn	2, 0x060e
    343a:	0515                	.insn	2, 0x0515
    343c:	000c0903          	lb	s2,0(s8)
    3440:	0501                	.insn	2, 0x0501
    3442:	000c0903          	lb	s2,0(s8)
    3446:	0200                	.insn	2, 0x0200
    3448:	0004                	.insn	2, 0x0004
    344a:	051a                	.insn	2, 0x051a
    344c:	0901                	.insn	2, 0x0901
    344e:	0008                	.insn	2, 0x0008
    3450:	0501                	.insn	2, 0x0501
    3452:	0901                	.insn	2, 0x0901
    3454:	0004                	.insn	2, 0x0004
    3456:	0501                	.insn	2, 0x0501
    3458:	0001                	.insn	2, 0x0001
    345a:	0209                	.insn	2, 0x0209
    345c:	132c                	.insn	2, 0x132c
    345e:	0001                	.insn	2, 0x0001
    3460:	0000                	.insn	2, 0x0000
    3462:	0000                	.insn	2, 0x0000
    3464:	0100                	.insn	2, 0x0100
    3466:	4901                	.insn	2, 0x4901
    3468:	0000                	.insn	2, 0x0000
    346a:	0500                	.insn	2, 0x0500
    346c:	0800                	.insn	2, 0x0800
    346e:	3300                	.insn	2, 0x3300
    3470:	0000                	.insn	2, 0x0000
    3472:	0100                	.insn	2, 0x0100
    3474:	0101                	.insn	2, 0x0101
    3476:	f2f6                	.insn	2, 0xf2f6
    3478:	000d                	.insn	2, 0x000d
    347a:	0101                	.insn	2, 0x0101
    347c:	0101                	.insn	2, 0x0101
    347e:	0000                	.insn	2, 0x0000
    3480:	0100                	.insn	2, 0x0100
    3482:	0000                	.insn	2, 0x0000
    3484:	0101                	.insn	2, 0x0101
    3486:	1f01                	.insn	2, 0x1f01
    3488:	0002                	.insn	2, 0x0002
    348a:	0000                	.insn	2, 0x0000
    348c:	2e00                	.insn	2, 0x2e00
    348e:	0002                	.insn	2, 0x0002
    3490:	0200                	.insn	2, 0x0200
    3492:	1f01                	.insn	2, 0x1f01
    3494:	0b02                	.insn	2, 0x0b02
    3496:	0001fd03          	.insn	4, 0x0001fd03
    349a:	0000                	.insn	2, 0x0000
    349c:	021a                	.insn	2, 0x021a
    349e:	0000                	.insn	2, 0x0000
    34a0:	2401                	.insn	2, 0x2401
    34a2:	0002                	.insn	2, 0x0002
    34a4:	0100                	.insn	2, 0x0100
    34a6:	0900                	.insn	2, 0x0900
    34a8:	2c02                	.insn	2, 0x2c02
    34aa:	00000113          	li	sp,0
    34ae:	0000                	.insn	2, 0x0000
    34b0:	0000                	.insn	2, 0x0000
    34b2:	0101                	.insn	2, 0x0101

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	.insn	2, 0x000c
   2:	0000                	.insn	2, 0x0000
   4:	ffff                	.insn	2, 0xffff
   6:	ffff                	.insn	2, 0xffff
   8:	7c010003          	lb	zero,1984(sp) # 3053518 <__BSS_END__+0x303e528>
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
  68:	0370                	.insn	2, 0x0370
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
  84:	0a019c03          	lh	s8,160(gp) # 148b8 <__global_pointer$+0xa0>
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
  b8:	0c58                	.insn	2, 0x0c58
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
 100:	10b0                	.insn	2, 0x10b0
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
 140:	1130                	.insn	2, 0x1130
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
 180:	11d4                	.insn	2, 0x11d4
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
 1a8:	12ec                	.insn	2, 0x12ec
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
  7e:	2069                	.insn	2, 0x2069
  80:	672d                	.insn	2, 0x672d
  82:	2d20                	.insn	2, 0x2d20
  84:	2d20734f          	.insn	4, 0x2d20734f
  88:	2d20324f          	.insn	4, 0x2d20324f
  8c:	2d20734f          	.insn	4, 0x2d20734f
  90:	6266                	.insn	2, 0x6266
  92:	6975                	.insn	2, 0x6975
  94:	646c                	.insn	2, 0x646c
  96:	6e69                	.insn	2, 0x6e69
  98:	696c2d67          	.insn	4, 0x696c2d67
  9c:	6762                	.insn	2, 0x6762
  9e:	2d206363          	bltu	zero,s2,364 <exit-0xfdbc>
  a2:	6e66                	.insn	2, 0x6e66
  a4:	74732d6f          	jal	s10,32fea <__BSS_END__+0x1dffa>
  a8:	6361                	.insn	2, 0x6361
  aa:	72702d6b          	.insn	4, 0x72702d6b
  ae:	6365746f          	jal	s0,576e4 <__BSS_END__+0x426f4>
  b2:	6f74                	.insn	2, 0x6f74
  b4:	2072                	.insn	2, 0x2072
  b6:	662d                	.insn	2, 0x662d
  b8:	6976                	.insn	2, 0x6976
  ba:	69626973          	.insn	4, 0x69626973
  be:	696c                	.insn	2, 0x696c
  c0:	7974                	.insn	2, 0x7974
  c2:	683d                	.insn	2, 0x683d
  c4:	6469                	.insn	2, 0x6469
  c6:	6564                	.insn	2, 0x6564
  c8:	006e                	.insn	2, 0x006e
  ca:	5f5f 6461 6464      	.insn	6, 0x646464615f5f
  d0:	3366                	.insn	2, 0x3366
  d2:	5f00                	.insn	2, 0x5f00
  d4:	6566                	.insn	2, 0x6566
  d6:	0078                	.insn	2, 0x0078
  d8:	465f 5f50 4150      	.insn	6, 0x41505f50465f
  de:	535f4b43          	.insn	4, 0x535f4b43
  e2:	4d45                	.insn	2, 0x4d45
  e4:	5249                	.insn	2, 0x5249
  e6:	5741                	.insn	2, 0x5741
  e8:	545f 635f 4400      	.insn	6, 0x4400635f545f
  ee:	7446                	.insn	2, 0x7446
  f0:	7079                	.insn	2, 0x7079
  f2:	0065                	.insn	2, 0x0065
  f4:	465f 5f50 4150      	.insn	6, 0x41505f50465f
  fa:	535f4b43          	.insn	4, 0x535f4b43
  fe:	4d45                	.insn	2, 0x4d45
 100:	5249                	.insn	2, 0x5249
 102:	5741                	.insn	2, 0x5741
 104:	545f 665f 6100      	.insn	6, 0x6100665f545f
 10a:	6464                	.insn	2, 0x6464
 10c:	645f 6e6f 0065      	.insn	6, 0x00656e6f645f
 112:	6e75                	.insn	2, 0x6e75
 114:	6e676973          	.insn	4, 0x6e676973
 118:	6465                	.insn	2, 0x6465
 11a:	6320                	.insn	2, 0x6320
 11c:	6168                	.insn	2, 0x6168
 11e:	0072                	.insn	2, 0x0072
 120:	465f 5f50 4e55      	.insn	6, 0x4e555f50465f
 126:	4150                	.insn	2, 0x4150
 128:	525f4b43          	.insn	4, 0x525f4b43
 12c:	5741                	.insn	2, 0x5741
 12e:	315f 665f 6f6c      	.insn	6, 0x6f6c665f315f
 134:	5f00                	.insn	2, 0x5f00
 136:	5046                	.insn	2, 0x5046
 138:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 13e:	494d4553          	.insn	4, 0x494d4553
 142:	4152                	.insn	2, 0x4152
 144:	5f545f57          	.insn	4, 0x5f545f57
 148:	5f5f0073          	.insn	4, 0x5f5f0073
 14c:	6e69                	.insn	2, 0x6e69
 14e:	3174                	.insn	2, 0x3174
 150:	3832                	.insn	2, 0x3832
 152:	7300                	.insn	2, 0x7300
 154:	6275                	.insn	2, 0x6275
 156:	0031                	.insn	2, 0x0031
 158:	32627573          	.insn	4, 0x32627573
 15c:	7300                	.insn	2, 0x7300
 15e:	6275                	.insn	2, 0x6275
 160:	6f6e0033          	.insn	4, 0x6f6e0033
 164:	6d72                	.insn	2, 0x6d72
 166:	6600                	.insn	2, 0x6600
 168:	6172                	.insn	2, 0x6172
 16a:	6f6c0063          	beq	s8,s6,84a <exit-0xf8d6>
 16e:	676e                	.insn	2, 0x676e
 170:	6c20                	.insn	2, 0x6c20
 172:	20676e6f          	jal	t3,76378 <__BSS_END__+0x61388>
 176:	6e75                	.insn	2, 0x6e75
 178:	6e676973          	.insn	4, 0x6e676973
 17c:	6465                	.insn	2, 0x6465
 17e:	6920                	.insn	2, 0x6920
 180:	746e                	.insn	2, 0x746e
 182:	6100                	.insn	2, 0x6100
 184:	6464                	.insn	2, 0x6464
 186:	465f0033          	.insn	4, 0x465f0033
 18a:	5f50                	.insn	2, 0x5f50
 18c:	4441                	.insn	2, 0x4441
 18e:	5f44                	.insn	2, 0x5f44
 190:	4e49                	.insn	2, 0x4e49
 192:	4554                	.insn	2, 0x4554
 194:	4e52                	.insn	2, 0x4e52
 196:	4c41                	.insn	2, 0x4c41
 198:	645f 6669 0066      	.insn	6, 0x00666669645f
 19e:	6f6c                	.insn	2, 0x6f6c
 1a0:	676e                	.insn	2, 0x676e
 1a2:	6c20                	.insn	2, 0x6c20
 1a4:	20676e6f          	jal	t3,763aa <__BSS_END__+0x613ba>
 1a8:	6e69                	.insn	2, 0x6e69
 1aa:	0074                	.insn	2, 0x0074
 1ac:	465f 5f50 4441      	.insn	6, 0x44415f50465f
 1b2:	5f44                	.insn	2, 0x5f44
 1b4:	4e49                	.insn	2, 0x4e49
 1b6:	4554                	.insn	2, 0x4554
 1b8:	4e52                	.insn	2, 0x4e52
 1ba:	4c41                	.insn	2, 0x4c41
 1bc:	655f 6964 6666      	.insn	6, 0x66666964655f
 1c2:	5f00                	.insn	2, 0x5f00
 1c4:	5046                	.insn	2, 0x5046
 1c6:	555f 494e 4e4f      	.insn	6, 0x4e4f494e555f
 1cc:	445f 7300 6275      	.insn	6, 0x62757300445f
 1d2:	645f 6e6f 0065      	.insn	6, 0x00656e6f645f
 1d8:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 1de:	535f4b43          	.insn	4, 0x535f4b43
 1e2:	4d45                	.insn	2, 0x4d45
 1e4:	5249                	.insn	2, 0x5249
 1e6:	5741                	.insn	2, 0x5741
 1e8:	545f 655f 6100      	.insn	6, 0x6100655f545f
 1ee:	6464                	.insn	2, 0x6464
 1f0:	0031                	.insn	2, 0x0031
 1f2:	6461                	.insn	2, 0x6461
 1f4:	3264                	.insn	2, 0x3264
 1f6:	7300                	.insn	2, 0x7300
 1f8:	6769                	.insn	2, 0x6769
 1fa:	006e                	.insn	2, 0x006e
 1fc:	6962                	.insn	2, 0x6962
 1fe:	7374                	.insn	2, 0x7374
 200:	5f00                	.insn	2, 0x5f00
 202:	635f 7a6c 6964      	.insn	6, 0x69647a6c635f
 208:	0032                	.insn	2, 0x0032
 20a:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 210:	535f4b43          	.insn	4, 0x535f4b43
 214:	4d45                	.insn	2, 0x4d45
 216:	5249                	.insn	2, 0x5249
 218:	5741                	.insn	2, 0x5741
 21a:	695f 5f73 6974      	.insn	6, 0x69745f73695f
 220:	796e                	.insn	2, 0x796e
 222:	5f00                	.insn	2, 0x5f00
 224:	7266                	.insn	2, 0x7266
 226:	006d                	.insn	2, 0x006d
 228:	465f 5f50 554d      	.insn	6, 0x554d5f50465f
 22e:	5f4c                	.insn	2, 0x5f4c
 230:	454d                	.insn	2, 0x454d
 232:	5441                	.insn	2, 0x5441
 234:	315f 775f 6469      	.insn	6, 0x6469775f315f
 23a:	5f65                	.insn	2, 0x5f65
 23c:	5f5a                	.insn	2, 0x5f5a
 23e:	3066                	.insn	2, 0x3066
 240:	5f00                	.insn	2, 0x5f00
 242:	5046                	.insn	2, 0x5046
 244:	4d5f 4c55 4d5f      	.insn	6, 0x4d5f4c554d5f
 24a:	4145                	.insn	2, 0x4145
 24c:	5f54                	.insn	2, 0x5f54
 24e:	5f31                	.insn	2, 0x5f31
 250:	65646977          	.insn	4, 0x65646977
 254:	5a5f 665f 0031      	.insn	6, 0x0031665f5a5f
 25a:	5f5f 6875 5f00      	.insn	6, 0x5f0068755f5f
 260:	755f 006c 4855      	.insn	6, 0x4855006c755f
 266:	70797457          	.insn	4, 0x70797457
 26a:	0065                	.insn	2, 0x0065
 26c:	5f5f 706f 0030      	.insn	6, 0x0030706f5f5f
 272:	5f5f 706f 0031      	.insn	6, 0x0031706f5f5f
 278:	5f5f 3078 5500      	.insn	6, 0x550030785f5f
 27e:	79744953          	.insn	4, 0x79744953
 282:	6570                	.insn	2, 0x6570
 284:	5f00                	.insn	2, 0x5f00
 286:	5046                	.insn	2, 0x5046
 288:	555f 504e 4341      	.insn	6, 0x4341504e555f
 28e:	41435f4b          	.insn	4, 0x41435f4b
 292:	4f4e                	.insn	2, 0x4f4e
 294:	494e                	.insn	2, 0x494e
 296:	5f4c4143          	.insn	4, 0x5f4c4143
 29a:	66696873          	.insn	4, 0x66696873
 29e:	0074                	.insn	2, 0x0074
 2a0:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 2a6:	435f4b43          	.insn	4, 0x435f4b43
 2aa:	4e41                	.insn	2, 0x4e41
 2ac:	43494e4f          	.insn	4, 0x43494e4f
 2b0:	4c41                	.insn	2, 0x4c41
 2b2:	545f 735f 5f00      	.insn	6, 0x5f00735f545f
 2b8:	5046                	.insn	2, 0x5046
 2ba:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 2c0:	4f4e4143          	.insn	4, 0x4f4e4143
 2c4:	494e                	.insn	2, 0x494e
 2c6:	5f4c4143          	.insn	4, 0x5f4c4143
 2ca:	7369                	.insn	2, 0x7369
 2cc:	745f 6e69 0079      	.insn	6, 0x00796e69745f
 2d2:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 2d8:	435f4b43          	.insn	4, 0x435f4b43
 2dc:	4e41                	.insn	2, 0x4e41
 2de:	43494e4f          	.insn	4, 0x43494e4f
 2e2:	4c41                	.insn	2, 0x4c41
 2e4:	545f 635f 5f00      	.insn	6, 0x5f00635f545f
 2ea:	5046                	.insn	2, 0x5046
 2ec:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 2f2:	4f4e4143          	.insn	4, 0x4f4e4143
 2f6:	494e                	.insn	2, 0x494e
 2f8:	5f4c4143          	.insn	4, 0x5f4c4143
 2fc:	5f54                	.insn	2, 0x5f54
 2fe:	0065                	.insn	2, 0x0065
 300:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 306:	435f4b43          	.insn	4, 0x435f4b43
 30a:	4e41                	.insn	2, 0x4e41
 30c:	43494e4f          	.insn	4, 0x43494e4f
 310:	4c41                	.insn	2, 0x4c41
 312:	545f 665f 5f00      	.insn	6, 0x5f00665f545f
 318:	785f 0031 5f5f      	.insn	6, 0x5f5f0031785f
 31e:	3378                	.insn	2, 0x3378
 320:	5f00                	.insn	2, 0x5f00
 322:	765f 0068 5f5f      	.insn	6, 0x5f5f0068765f
 328:	6c76                	.insn	2, 0x6c76
 32a:	5f00                	.insn	2, 0x5f00
 32c:	6d5f 6c75 6664      	.insn	6, 0x66646c756d5f
 332:	5f5f0033          	.insn	4, 0x5f5f0033
 336:	3278                	.insn	2, 0x3278
 338:	5f00                	.insn	2, 0x5f00
 33a:	735f 6275 6664      	.insn	6, 0x66646275735f
 340:	61700033          	.insn	4, 0x61700033
 344:	735f6b63          	bltu	t5,s5,a7a <exit-0xf6a6>
 348:	6d65                	.insn	2, 0x6d65
 34a:	7269                	.insn	2, 0x7269
 34c:	7761                	.insn	2, 0x7761
 34e:	5f00                	.insn	2, 0x5f00
 350:	5046                	.insn	2, 0x5046
 352:	465f 4f52 5f4d      	.insn	6, 0x5f4d4f52465f
 358:	4e49                	.insn	2, 0x4e49
 35a:	5f54                	.insn	2, 0x5f54
 35c:	7275                	.insn	2, 0x7275
 35e:	5f00                	.insn	2, 0x5f00
 360:	5046                	.insn	2, 0x5046
 362:	465f 4f52 5f4d      	.insn	6, 0x5f4d4f52465f
 368:	4e49                	.insn	2, 0x4e49
 36a:	5f54                	.insn	2, 0x5f54
 36c:	7a6c                	.insn	2, 0x7a6c
 36e:	5f00                	.insn	2, 0x5f00
 370:	665f 6f6c 7461      	.insn	6, 0x74616f6c665f
 376:	66646973          	.insn	4, 0x66646973
 37a:	4600                	.insn	2, 0x4600
 37c:	5f50                	.insn	2, 0x5f50
 37e:	5845                	.insn	2, 0x5845
 380:	4554                	.insn	2, 0x4554
 382:	444e                	.insn	2, 0x444e
 384:	6c5f 007a 465f      	.insn	6, 0x465f007a6c5f
 38a:	5f50                	.insn	2, 0x5f50
 38c:	4e55                	.insn	2, 0x4e55
 38e:	4f49                	.insn	2, 0x4f49
 390:	5f4e                	.insn	2, 0x5f4e
 392:	46530053          	.insn	4, 0x46530053
 396:	7974                	.insn	2, 0x7974
 398:	6570                	.insn	2, 0x6570
 39a:	5f00                	.insn	2, 0x5f00
 39c:	655f 7478 6e65      	.insn	6, 0x6e657478655f
 3a2:	7364                	.insn	2, 0x7364
 3a4:	6466                	.insn	2, 0x6466
 3a6:	3266                	.insn	2, 0x3266
 3a8:	5f00                	.insn	2, 0x5f00
 3aa:	745f 7572 636e      	.insn	6, 0x636e7572745f
 3b0:	6664                	.insn	2, 0x6664
 3b2:	00326673          	.insn	4, 0x00326673
 3b6:	2e2e                	.insn	2, 0x2e2e
 3b8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 3bc:	2e2e                	.insn	2, 0x2e2e
 3be:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 3c2:	2e2e                	.insn	2, 0x2e2e
 3c4:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 3c8:	2f636367          	.insn	4, 0x2f636367
 3cc:	696c                	.insn	2, 0x696c
 3ce:	6762                	.insn	2, 0x6762
 3d0:	632f6363          	bltu	t5,s2,9f6 <exit-0xf72a>
 3d4:	69666e6f          	jal	t3,66a6a <__BSS_END__+0x51a7a>
 3d8:	69722f67          	.insn	4, 0x69722f67
 3dc:	2f766373          	.insn	4, 0x2f766373
 3e0:	756d                	.insn	2, 0x756d
 3e2:	646c                	.insn	2, 0x646c
 3e4:	3369                	.insn	2, 0x3369
 3e6:	532e                	.insn	2, 0x532e
 3e8:	2f00                	.insn	2, 0x2f00
 3ea:	6f68                	.insn	2, 0x6f68
 3ec:	656d                	.insn	2, 0x656d
 3ee:	6575792f          	.insn	4, 0x6575792f
 3f2:	2f72                	.insn	2, 0x2f72
 3f4:	796d                	.insn	2, 0x796d
 3f6:	7270                	.insn	2, 0x7270
 3f8:	69722f6f          	jal	t5,2328e <__BSS_END__+0xe29e>
 3fc:	2d766373          	.insn	4, 0x2d766373
 400:	2d756e67          	.insn	4, 0x2d756e67
 404:	6f74                	.insn	2, 0x6f74
 406:	68636c6f          	jal	s8,36a8c <__BSS_END__+0x21a9c>
 40a:	6961                	.insn	2, 0x6961
 40c:	2f6e                	.insn	2, 0x2f6e
 40e:	7562                	.insn	2, 0x7562
 410:	6c69                	.insn	2, 0x6c69
 412:	2f64                	.insn	2, 0x2f64
 414:	7562                	.insn	2, 0x7562
 416:	6c69                	.insn	2, 0x6c69
 418:	2d64                	.insn	2, 0x2d64
 41a:	2d636367          	.insn	4, 0x2d636367
 41e:	656e                	.insn	2, 0x656e
 420:	62696c77          	.insn	4, 0x62696c77
 424:	732d                	.insn	2, 0x732d
 426:	6174                	.insn	2, 0x6174
 428:	2f326567          	.insn	4, 0x2f326567
 42c:	6972                	.insn	2, 0x6972
 42e:	36766373          	.insn	4, 0x36766373
 432:	2d34                	.insn	2, 0x2d34
 434:	6e75                	.insn	2, 0x6e75
 436:	776f6e6b          	.insn	4, 0x776f6e6b
 43a:	2d6e                	.insn	2, 0x2d6e
 43c:	6c65                	.insn	2, 0x6c65
 43e:	2f66                	.insn	2, 0x2f66
 440:	7672                	.insn	2, 0x7672
 442:	3436                	.insn	2, 0x3436
 444:	2f69                	.insn	2, 0x2f69
 446:	706c                	.insn	2, 0x706c
 448:	3436                	.insn	2, 0x3436
 44a:	62696c2f          	.insn	4, 0x62696c2f
 44e:	00636367          	.insn	4, 0x00636367
 452:	20554e47          	.insn	4, 0x20554e47
 456:	5341                	.insn	2, 0x5341
 458:	3220                	.insn	2, 0x3220
 45a:	342e                	.insn	2, 0x342e
 45c:	0035                	.insn	2, 0x0035
 45e:	5f5f 756d 646c      	.insn	6, 0x646c756d5f5f
 464:	3369                	.insn	2, 0x3369
 466:	6300                	.insn	2, 0x6300
 468:	6c706d6f          	jal	s10,732e <exit-0x8df2>
 46c:	7865                	.insn	2, 0x7865
 46e:	5f20                	.insn	2, 0x5f20
 470:	6c46                	.insn	2, 0x6c46
 472:	3174616f          	jal	sp,46f88 <__BSS_END__+0x31f98>
 476:	0036                	.insn	2, 0x0036
 478:	726f6873          	.insn	4, 0x726f6873
 47c:	2074                	.insn	2, 0x2074
 47e:	6e75                	.insn	2, 0x6e75
 480:	6e676973          	.insn	4, 0x6e676973
 484:	6465                	.insn	2, 0x6465
 486:	6920                	.insn	2, 0x6920
 488:	746e                	.insn	2, 0x746e
 48a:	6300                	.insn	2, 0x6300
 48c:	6c706d6f          	jal	s10,7352 <exit-0x8dce>
 490:	7865                	.insn	2, 0x7865
 492:	6c20                	.insn	2, 0x6c20
 494:	20676e6f          	jal	t3,7669a <__BSS_END__+0x616aa>
 498:	6f64                	.insn	2, 0x6f64
 49a:	6275                	.insn	2, 0x6275
 49c:	656c                	.insn	2, 0x656c
 49e:	5500                	.insn	2, 0x5500
 4a0:	4951                	.insn	2, 0x4951
 4a2:	7974                	.insn	2, 0x7974
 4a4:	6570                	.insn	2, 0x6570
 4a6:	5f00                	.insn	2, 0x5f00
 4a8:	635f 7a6c 745f      	.insn	6, 0x745f7a6c635f
 4ae:	6261                	.insn	2, 0x6261
 4b0:	5500                	.insn	2, 0x5500
 4b2:	4944                	.insn	2, 0x4944
 4b4:	7974                	.insn	2, 0x7974
 4b6:	6570                	.insn	2, 0x6570
 4b8:	6300                	.insn	2, 0x6300
 4ba:	6c706d6f          	jal	s10,7380 <exit-0x8da0>
 4be:	7865                	.insn	2, 0x7865
 4c0:	6620                	.insn	2, 0x6620
 4c2:	6f6c                	.insn	2, 0x6f6c
 4c4:	7461                	.insn	2, 0x7461
 4c6:	5f00                	.insn	2, 0x5f00
 4c8:	785f 0072 6873      	.insn	6, 0x68730072785f
 4ce:	2074726f          	jal	tp,47ed4 <__BSS_END__+0x32ee4>
 4d2:	6e69                	.insn	2, 0x6e69
 4d4:	0074                	.insn	2, 0x0074
 4d6:	706d6f63          	bltu	s10,t1,bf4 <exit-0xf52c>
 4da:	656c                	.insn	2, 0x656c
 4dc:	2078                	.insn	2, 0x2078
 4de:	6f64                	.insn	2, 0x6f64
 4e0:	6275                	.insn	2, 0x6275
 4e2:	656c                	.insn	2, 0x656c
 4e4:	5f00                	.insn	2, 0x5f00
 4e6:	6f42                	.insn	2, 0x6f42
 4e8:	006c6f 	.3byte	0x006c6f

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6d6f682f          	.insn	4, 0x6d6f682f
   4:	2f65                	.insn	2, 0x2f65
   6:	7579                	.insn	2, 0x7579
   8:	7265                	.insn	2, 0x7265
   a:	70796d2f          	.insn	4, 0x70796d2f
   e:	6f72                	.insn	2, 0x6f72
  10:	7369722f          	.insn	4, 0x7369722f
  14:	672d7663          	bgeu	s10,s2,680 <exit-0xfaa0>
  18:	756e                	.insn	2, 0x756e
  1a:	742d                	.insn	2, 0x742d
  1c:	636c6f6f          	jal	t5,c6652 <__BSS_END__+0xb1662>
  20:	6168                	.insn	2, 0x6168
  22:	6e69                	.insn	2, 0x6e69
  24:	6975622f          	.insn	4, 0x6975622f
  28:	646c                	.insn	2, 0x646c
  2a:	6975622f          	.insn	4, 0x6975622f
  2e:	646c                	.insn	2, 0x646c
  30:	672d                	.insn	2, 0x672d
  32:	6e2d6363          	bltu	s10,sp,718 <exit-0xfa08>
  36:	7765                	.insn	2, 0x7765
  38:	696c                	.insn	2, 0x696c
  3a:	2d62                	.insn	2, 0x2d62
  3c:	67617473          	.insn	4, 0x67617473
  40:	3265                	.insn	2, 0x3265
  42:	7369722f          	.insn	4, 0x7369722f
  46:	34367663          	bgeu	a2,gp,392 <exit-0xfd8e>
  4a:	752d                	.insn	2, 0x752d
  4c:	6b6e                	.insn	2, 0x6b6e
  4e:	6f6e                	.insn	2, 0x6f6e
  50:	652d6e77          	.insn	4, 0x652d6e77
  54:	666c                	.insn	2, 0x666c
  56:	3676722f          	.insn	4, 0x3676722f
  5a:	6934                	.insn	2, 0x6934
  5c:	36706c2f          	.insn	4, 0x36706c2f
  60:	2f34                	.insn	2, 0x2f34
  62:	696c                	.insn	2, 0x696c
  64:	6762                	.insn	2, 0x6762
  66:	2e006363          	bltu	zero,zero,34c <exit-0xfdd4>
  6a:	2f2e                	.insn	2, 0x2f2e
  6c:	2e2e                	.insn	2, 0x2e2e
  6e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  72:	2e2e                	.insn	2, 0x2e2e
  74:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  78:	2e2e                	.insn	2, 0x2e2e
  7a:	6363672f          	.insn	4, 0x6363672f
  7e:	62696c2f          	.insn	4, 0x62696c2f
  82:	2f636367          	.insn	4, 0x2f636367
  86:	74666f73          	.insn	4, 0x74666f73
  8a:	662d                	.insn	2, 0x662d
  8c:	2f70                	.insn	2, 0x2f70
  8e:	6461                	.insn	2, 0x6461
  90:	6464                	.insn	2, 0x6464
  92:	3366                	.insn	2, 0x3366
  94:	632e                	.insn	2, 0x632e
  96:	2e00                	.insn	2, 0x2e00
  98:	2f2e                	.insn	2, 0x2f2e
  9a:	2e2e                	.insn	2, 0x2e2e
  9c:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  a0:	2e2e                	.insn	2, 0x2e2e
  a2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  a6:	2e2e                	.insn	2, 0x2e2e
  a8:	6363672f          	.insn	4, 0x6363672f
  ac:	62696c2f          	.insn	4, 0x62696c2f
  b0:	2f636367          	.insn	4, 0x2f636367
  b4:	74666f73          	.insn	4, 0x74666f73
  b8:	662d                	.insn	2, 0x662d
  ba:	0070                	.insn	2, 0x0070
  bc:	6f64                	.insn	2, 0x6f64
  be:	6275                	.insn	2, 0x6275
  c0:	656c                	.insn	2, 0x656c
  c2:	682e                	.insn	2, 0x682e
  c4:	2e00                	.insn	2, 0x2e00
  c6:	2f2e                	.insn	2, 0x2f2e
  c8:	2e2e                	.insn	2, 0x2e2e
  ca:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  ce:	2e2e                	.insn	2, 0x2e2e
  d0:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  d4:	2e2e                	.insn	2, 0x2e2e
  d6:	6363672f          	.insn	4, 0x6363672f
  da:	62696c2f          	.insn	4, 0x62696c2f
  de:	2f636367          	.insn	4, 0x2f636367
  e2:	74666f73          	.insn	4, 0x74666f73
  e6:	662d                	.insn	2, 0x662d
  e8:	2f70                	.insn	2, 0x2f70
  ea:	756d                	.insn	2, 0x756d
  ec:	646c                	.insn	2, 0x646c
  ee:	3366                	.insn	2, 0x3366
  f0:	632e                	.insn	2, 0x632e
  f2:	7300                	.insn	2, 0x7300
  f4:	2d74666f          	jal	a2,46bca <__BSS_END__+0x31bda>
  f8:	7066                	.insn	2, 0x7066
  fa:	682e                	.insn	2, 0x682e
  fc:	2e00                	.insn	2, 0x2e00
  fe:	2f2e                	.insn	2, 0x2f2e
 100:	2e2e                	.insn	2, 0x2e2e
 102:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 106:	2e2e                	.insn	2, 0x2e2e
 108:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 10c:	2e2e                	.insn	2, 0x2e2e
 10e:	6363672f          	.insn	4, 0x6363672f
 112:	62696c2f          	.insn	4, 0x62696c2f
 116:	2f636367          	.insn	4, 0x2f636367
 11a:	74666f73          	.insn	4, 0x74666f73
 11e:	662d                	.insn	2, 0x662d
 120:	2f70                	.insn	2, 0x2f70
 122:	64627573          	.insn	4, 0x64627573
 126:	3366                	.insn	2, 0x3366
 128:	632e                	.insn	2, 0x632e
 12a:	2e00                	.insn	2, 0x2e00
 12c:	2f2e                	.insn	2, 0x2f2e
 12e:	2e2e                	.insn	2, 0x2e2e
 130:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 134:	2e2e                	.insn	2, 0x2e2e
 136:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 13a:	2e2e                	.insn	2, 0x2e2e
 13c:	6363672f          	.insn	4, 0x6363672f
 140:	62696c2f          	.insn	4, 0x62696c2f
 144:	2f636367          	.insn	4, 0x2f636367
 148:	74666f73          	.insn	4, 0x74666f73
 14c:	662d                	.insn	2, 0x662d
 14e:	2f70                	.insn	2, 0x2f70
 150:	6c66                	.insn	2, 0x6c66
 152:	7374616f          	jal	sp,47088 <__BSS_END__+0x32098>
 156:	6469                	.insn	2, 0x6469
 158:	2e66                	.insn	2, 0x2e66
 15a:	69730063          	beq	t1,s7,7da <exit-0xf946>
 15e:	676e                	.insn	2, 0x676e
 160:	656c                	.insn	2, 0x656c
 162:	682e                	.insn	2, 0x682e
 164:	2e00                	.insn	2, 0x2e00
 166:	2f2e                	.insn	2, 0x2f2e
 168:	2e2e                	.insn	2, 0x2e2e
 16a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 16e:	2e2e                	.insn	2, 0x2e2e
 170:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 174:	2e2e                	.insn	2, 0x2e2e
 176:	6363672f          	.insn	4, 0x6363672f
 17a:	62696c2f          	.insn	4, 0x62696c2f
 17e:	2f636367          	.insn	4, 0x2f636367
 182:	74666f73          	.insn	4, 0x74666f73
 186:	662d                	.insn	2, 0x662d
 188:	2f70                	.insn	2, 0x2f70
 18a:	7865                	.insn	2, 0x7865
 18c:	6574                	.insn	2, 0x6574
 18e:	646e                	.insn	2, 0x646e
 190:	66646673          	.insn	4, 0x66646673
 194:	2e32                	.insn	2, 0x2e32
 196:	2e2e0063          	beq	t3,sp,476 <exit-0xfcaa>
 19a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 19e:	2e2e                	.insn	2, 0x2e2e
 1a0:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1a4:	2e2e                	.insn	2, 0x2e2e
 1a6:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1aa:	2f636367          	.insn	4, 0x2f636367
 1ae:	696c                	.insn	2, 0x696c
 1b0:	6762                	.insn	2, 0x6762
 1b2:	732f6363          	bltu	t5,s2,8d8 <exit-0xf848>
 1b6:	2d74666f          	jal	a2,46c8c <__BSS_END__+0x31c9c>
 1ba:	7066                	.insn	2, 0x7066
 1bc:	7572742f          	.insn	4, 0x7572742f
 1c0:	636e                	.insn	2, 0x636e
 1c2:	6664                	.insn	2, 0x6664
 1c4:	2e326673          	.insn	4, 0x2e326673
 1c8:	2e2e0063          	beq	t3,sp,4a8 <exit-0xfc78>
 1cc:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1d0:	2e2e                	.insn	2, 0x2e2e
 1d2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1d6:	2e2e                	.insn	2, 0x2e2e
 1d8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 1dc:	2f636367          	.insn	4, 0x2f636367
 1e0:	696c                	.insn	2, 0x696c
 1e2:	6762                	.insn	2, 0x6762
 1e4:	632f6363          	bltu	t5,s2,80a <exit-0xf916>
 1e8:	69666e6f          	jal	t3,6687e <__BSS_END__+0x5188e>
 1ec:	69722f67          	.insn	4, 0x69722f67
 1f0:	00766373          	.insn	4, 0x00766373
 1f4:	756d                	.insn	2, 0x756d
 1f6:	646c                	.insn	2, 0x646c
 1f8:	3369                	.insn	2, 0x3369
 1fa:	532e                	.insn	2, 0x532e
 1fc:	2e00                	.insn	2, 0x2e00
 1fe:	2f2e                	.insn	2, 0x2f2e
 200:	2e2e                	.insn	2, 0x2e2e
 202:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 206:	2e2e                	.insn	2, 0x2e2e
 208:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 20c:	2e2e                	.insn	2, 0x2e2e
 20e:	6363672f          	.insn	4, 0x6363672f
 212:	62696c2f          	.insn	4, 0x62696c2f
 216:	2f636367          	.insn	4, 0x2f636367
 21a:	696c                	.insn	2, 0x696c
 21c:	6762                	.insn	2, 0x6762
 21e:	2e326363          	bltu	tp,gp,504 <exit-0xfc1c>
 222:	696c0063          	beq	s8,s6,8a2 <exit-0xf87e>
 226:	6762                	.insn	2, 0x6762
 228:	2e326363          	bltu	tp,gp,50e <exit-0xfc12>
 22c:	0068                	.insn	2, 0x0068
 22e:	2e2e                	.insn	2, 0x2e2e
 230:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 234:	2e2e                	.insn	2, 0x2e2e
 236:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 23a:	2e2e                	.insn	2, 0x2e2e
 23c:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 240:	2f636367          	.insn	4, 0x2f636367
 244:	696c                	.insn	2, 0x696c
 246:	6762                	.insn	2, 0x6762
 248:	006363 	.3byte	0x006363

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
     1da:	330ba503          	lw	a0,816(s7) # 2288 <exit-0xde98>
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
     c5e:	00000543          	.insn	4, 0x0543
     c62:	0005                	.insn	2, 0x0005
     c64:	0008                	.insn	2, 0x0008
     c66:	0000                	.insn	2, 0x0000
     c68:	0000                	.insn	2, 0x0000
     c6a:	2e00                	.insn	2, 0x2e00
     c6c:	da2e                	.insn	2, 0xda2e
     c6e:	da01                	.insn	2, 0xda01
     c70:	e301                	.insn	2, 0xe301
     c72:	e301                	.insn	2, 0xe301
     c74:	ee01                	.insn	2, 0xee01
     c76:	ee01                	.insn	2, 0xee01
     c78:	f701                	.insn	2, 0xf701
     c7a:	f701                	.insn	2, 0xf701
     c7c:	0001                	.insn	2, 0x0001
     c7e:	0004                	.insn	2, 0x0004
     c80:	0158                	.insn	2, 0x0158
     c82:	045a                	.insn	2, 0x045a
     c84:	fc58                	.insn	2, 0xfc58
     c86:	03a30603          	lb	a2,58(t1)
     c8a:	0aa5                	.insn	2, 0x0aa5
     c8c:	fc049f33          	.insn	4, 0xfc049f33
     c90:	01048403          	lb	s0,16(s1)
     c94:	045a                	.insn	2, 0x045a
     c96:	0484                	.insn	2, 0x0484
     c98:	04a0                	.insn	2, 0x04a0
     c9a:	a306                	.insn	2, 0xa306
     c9c:	330aa503          	lw	a0,816(s5)
     ca0:	049f 04a0 04c0      	.insn	6, 0x04c004a0049f
     ca6:	5a01                	.insn	2, 0x5a01
     ca8:	c004                	.insn	2, 0xc004
     caa:	f004                	.insn	2, 0xf004
     cac:	0606                	.insn	2, 0x0606
     cae:	0aa503a3          	sb	a0,167(a0)
     cb2:	00009f33          	sll	t5,ra,zero
     cb6:	2e2e                	.insn	2, 0x2e2e
     cb8:	01da3b3b          	.insn	4, 0x01da3b3b
     cbc:	01da                	.insn	2, 0x01da
     cbe:	01e4                	.insn	2, 0x01e4
     cc0:	01e4                	.insn	2, 0x01e4
     cc2:	01ee                	.insn	2, 0x01ee
     cc4:	01ee                	.insn	2, 0x01ee
     cc6:	01f701f7          	.insn	4, 0x01f701f7
     cca:	0400                	.insn	2, 0x0400
     ccc:	5800                	.insn	2, 0x5800
     cce:	5b01                	.insn	2, 0x5b01
     cd0:	5804                	.insn	2, 0x5804
     cd2:	0170                	.insn	2, 0x0170
     cd4:	0465                	.insn	2, 0x0465
     cd6:	fc70                	.insn	2, 0xfc70
     cd8:	03a30603          	lb	a2,58(t1)
     cdc:	0ba5                	.insn	2, 0x0ba5
     cde:	fc049f33          	.insn	4, 0xfc049f33
     ce2:	01048703          	lb	a4,16(s1)
     ce6:	0487045b          	.insn	4, 0x0487045b
     cea:	04a0                	.insn	2, 0x04a0
     cec:	6501                	.insn	2, 0x6501
     cee:	a004                	.insn	2, 0xa004
     cf0:	c004                	.insn	2, 0xc004
     cf2:	0104                	.insn	2, 0x0104
     cf4:	04c0045b          	.insn	4, 0x04c0045b
     cf8:	06f0                	.insn	2, 0x06f0
     cfa:	a306                	.insn	2, 0xa306
     cfc:	330ba503          	lw	a0,816(s7)
     d00:	009f 3102 01da      	.insn	6, 0x01da3102009f
     d06:	000401f7          	.insn	4, 0x000401f7
     d0a:	025c                	.insn	2, 0x025c
     d0c:	9f30                	.insn	2, 0x9f30
     d0e:	fc04                	.insn	2, 0xfc04
     d10:	0204c003          	lbu	zero,32(s1)
     d14:	9f30                	.insn	2, 0x9f30
     d16:	2d00                	.insn	2, 0x2d00
     d18:	2f2e                	.insn	2, 0x2f2e
     d1a:	3131                	.insn	2, 0x3131
     d1c:	01f701d7          	.insn	4, 0x01f701d7
     d20:	0400                	.insn	2, 0x0400
     d22:	5858                	.insn	2, 0x5858
     d24:	3002                	.insn	2, 0x3002
     d26:	049f 5c58 3002      	.insn	6, 0x30025c58049f
     d2c:	049f e85c 0103      	.insn	6, 0x0103e85c049f
     d32:	0464                	.insn	2, 0x0464
     d34:	04c0                	.insn	2, 0x04c0
     d36:	06f0                	.insn	2, 0x06f0
     d38:	6401                	.insn	2, 0x6401
     d3a:	2100                	.insn	2, 0x2100
     d3c:	da56                	.insn	2, 0xda56
     d3e:	9301                	.insn	2, 0x9301
     d40:	9d02                	.insn	2, 0x9d02
     d42:	9f02                	.insn	2, 0x9f02
     d44:	be02                	.insn	2, 0xbe02
     d46:	c002                	.insn	2, 0xc002
     d48:	0402                	.insn	2, 0x0402
     d4a:	b438                	.insn	2, 0xb438
     d4c:	0601                	.insn	2, 0x0601
     d4e:	ff080083          	lb	ra,-16(a6)
     d52:	9f1a                	.insn	2, 0x9f1a
     d54:	fc04                	.insn	2, 0xfc04
     d56:	06058403          	lb	s0,96(a1)
     d5a:	ff080083          	lb	ra,-16(a6)
     d5e:	9f1a                	.insn	2, 0x9f1a
     d60:	c804                	.insn	2, 0xc804
     d62:	d805                	.insn	2, 0xd805
     d64:	0605                	.insn	2, 0x0605
     d66:	ff080083          	lb	ra,-16(a6)
     d6a:	9f1a                	.insn	2, 0x9f1a
     d6c:	d004                	.insn	2, 0xd004
     d6e:	d406                	.insn	2, 0xd406
     d70:	0606                	.insn	2, 0x0606
     d72:	ff080083          	lb	ra,-16(a6)
     d76:	9f1a                	.insn	2, 0x9f1a
     d78:	2000                	.insn	2, 0x2000
     d7a:	2c2c                	.insn	2, 0x2c2c
     d7c:	da52                	.insn	2, 0xda52
     d7e:	eb01                	.insn	2, 0xeb01
     d80:	ee01                	.insn	2, 0xee01
     d82:	f001                	.insn	2, 0xf001
     d84:	f001                	.insn	2, 0xf001
     d86:	f401                	.insn	2, 0xf401
     d88:	f401                	.insn	2, 0xf401
     d8a:	f501                	.insn	2, 0xf501
     d8c:	f501                	.insn	2, 0xf501
     d8e:	f701                	.insn	2, 0xf701
     d90:	f701                	.insn	2, 0xf701
     d92:	9301                	.insn	2, 0x9301
     d94:	0402                	.insn	2, 0x0402
     d96:	5834                	.insn	2, 0x5834
     d98:	0a008207          	.insn	4, 0x0a008207
     d9c:	ffff                	.insn	2, 0xffff
     d9e:	9f1a                	.insn	2, 0x9f1a
     da0:	5804                	.insn	2, 0x5804
     da2:	019c                	.insn	2, 0x019c
     da4:	6201                	.insn	2, 0x6201
     da6:	fc04                	.insn	2, 0xfc04
     da8:	07049003          	lh	zero,112(s1)
     dac:	0082                	.insn	2, 0x0082
     dae:	ff0a                	.insn	2, 0xff0a
     db0:	049f1aff 04a404a0 	.insn	12, 0x0a00820704a404a0049f1aff
     db8:	0a008207 
     dbc:	ffff                	.insn	2, 0xffff
     dbe:	9f1a                	.insn	2, 0x9f1a
     dc0:	a404                	.insn	2, 0xa404
     dc2:	b404                	.insn	2, 0xb404
     dc4:	0a04                	.insn	2, 0x0a04
     dc6:	007a                	.insn	2, 0x007a
     dc8:	3408                	.insn	2, 0x3408
     dca:	0a25                	.insn	2, 0x0a25
     dcc:	07ff 9f1a b404 b804 	.insn	10, 0x0704b804b4049f1a07ff
     dd4:	0704 
     dd6:	0082                	.insn	2, 0x0082
     dd8:	ff0a                	.insn	2, 0xff0a
     dda:	049f1aff 04c004b8 	.insn	12, 0x08007a0a04c004b8049f1aff
     de2:	08007a0a 
     de6:	2534                	.insn	2, 0x2534
     de8:	ff0a                	.insn	2, 0xff0a
     dea:	049f1a07          	.insn	4, 0x049f1a07
     dee:	04c0                	.insn	2, 0x04c0
     df0:	0584                	.insn	2, 0x0584
     df2:	6201                	.insn	2, 0x6201
     df4:	1f00                	.insn	2, 0x1f00
     df6:	2626                	.insn	2, 0x2626
     df8:	2929                	.insn	2, 0x2929
     dfa:	2a2a                	.insn	2, 0x2a2a
     dfc:	01d6                	.insn	2, 0x01d6
     dfe:	01da                	.insn	2, 0x01da
     e00:	0400                	.insn	2, 0x0400
     e02:	4434                	.insn	2, 0x4434
     e04:	5901                	.insn	2, 0x5901
     e06:	4404                	.insn	2, 0x4404
     e08:	084c                	.insn	2, 0x084c
     e0a:	0079                	.insn	2, 0x0079
     e0c:	0840                	.insn	2, 0x0840
     e0e:	2430                	.insn	2, 0x2430
     e10:	9f21                	.insn	2, 0x9f21
     e12:	4c04                	.insn	2, 0x4c04
     e14:	0c54                	.insn	2, 0x0c54
     e16:	007a                	.insn	2, 0x007a
     e18:	243c                	.insn	2, 0x243c
     e1a:	253c                	.insn	2, 0x253c
     e1c:	0840                	.insn	2, 0x0840
     e1e:	2430                	.insn	2, 0x2430
     e20:	9f21                	.insn	2, 0x9f21
     e22:	5404                	.insn	2, 0x5404
     e24:	03e0                	.insn	2, 0x03e0
     e26:	5901                	.insn	2, 0x5901
     e28:	fc04                	.insn	2, 0xfc04
     e2a:	0106f003          	.insn	4, 0x0106f003
     e2e:	0059                	.insn	2, 0x0059
     e30:	4948                	.insn	2, 0x4948
     e32:	4c4a                	.insn	2, 0x4c4a
     e34:	6b4c                	.insn	2, 0x6b4c
     e36:	02970293          	addi	t0,a4,41
     e3a:	029d                	.insn	2, 0x029d
     e3c:	02a1                	.insn	2, 0x02a1
     e3e:	02be                	.insn	2, 0x02be
     e40:	02c0                	.insn	2, 0x02c0
     e42:	9004                	.insn	2, 0x9004
     e44:	9001                	.insn	2, 0x9001
     e46:	0201                	.insn	2, 0x0201
     e48:	9f30                	.insn	2, 0x9f30
     e4a:	9004                	.insn	2, 0x9004
     e4c:	9401                	.insn	2, 0x9401
     e4e:	0201                	.insn	2, 0x0201
     e50:	9f30                	.insn	2, 0x9f30
     e52:	9404                	.insn	2, 0x9404
     e54:	e401                	.insn	2, 0xe401
     e56:	0101                	.insn	2, 0x0101
     e58:	045d                	.insn	2, 0x045d
     e5a:	0584                	.insn	2, 0x0584
     e5c:	05a4                	.insn	2, 0x05a4
     e5e:	5d01                	.insn	2, 0x5d01
     e60:	c804                	.insn	2, 0xc804
     e62:	e005                	.insn	2, 0xe005
     e64:	0105                	.insn	2, 0x0105
     e66:	045d                	.insn	2, 0x045d
     e68:	06d0                	.insn	2, 0x06d0
     e6a:	06d4                	.insn	2, 0x06d4
     e6c:	5d01                	.insn	2, 0x5d01
     e6e:	3b00                	.insn	2, 0x3b00
     e70:	01d8                	.insn	2, 0x01d8
     e72:	040001f7          	.insn	4, 0x040001f7
     e76:	ec70                	.insn	2, 0xec70
     e78:	00850603          	lb	a2,8(a0)
     e7c:	ff08                	.insn	2, 0xff08
     e7e:	9f1a                	.insn	2, 0x9f1a
     e80:	c004                	.insn	2, 0xc004
     e82:	f004                	.insn	2, 0xf004
     e84:	0606                	.insn	2, 0x0606
     e86:	0085                	.insn	2, 0x0085
     e88:	ff08                	.insn	2, 0xff08
     e8a:	9f1a                	.insn	2, 0x9f1a
     e8c:	3a00                	.insn	2, 0x3a00
     e8e:	f7534747          	.insn	4, 0xf7534747
     e92:	8001                	.insn	2, 0x8001
     e94:	8a02                	.insn	2, 0x8a02
     e96:	8c02                	.insn	2, 0x8c02
     e98:	9002                	.insn	2, 0x9002
     e9a:	9102                	.insn	2, 0x9102
     e9c:	0402                	.insn	2, 0x0402
     e9e:	906c                	.insn	2, 0x906c
     ea0:	0701                	.insn	2, 0x0701
     ea2:	007f ff0a 1aff 049f 	.insn	10, 0x0190049f1affff0a007f
     eaa:	0190 
     eac:	01a4                	.insn	2, 0x01a4
     eae:	5f01                	.insn	2, 0x5f01
     eb0:	c004                	.insn	2, 0xc004
     eb2:	cb04                	.insn	2, 0xcb04
     eb4:	0704                	.insn	2, 0x0704
     eb6:	007f ff0a 1aff 049f 	.insn	10, 0x04e4049f1affff0a007f
     ebe:	04e4 
     ec0:	04e8                	.insn	2, 0x04e8
     ec2:	0a007f07          	.insn	4, 0x0a007f07
     ec6:	ffff                	.insn	2, 0xffff
     ec8:	9f1a                	.insn	2, 0x9f1a
     eca:	f804                	.insn	2, 0xf804
     ecc:	fc04                	.insn	2, 0xfc04
     ece:	0704                	.insn	2, 0x0704
     ed0:	007f ff0a 1aff 009f 	.insn	10, 0x4139009f1affff0a007f
     ed8:	4139 
     eda:	4441                	.insn	2, 0x4441
     edc:	6145                	.insn	2, 0x6145
     ede:	029701f7          	.insn	4, 0x029701f7
     ee2:	029d                	.insn	2, 0x029d
     ee4:	02a0                	.insn	2, 0x02a0
     ee6:	02be                	.insn	2, 0x02be
     ee8:	02c0                	.insn	2, 0x02c0
     eea:	6c04                	.insn	2, 0x6c04
     eec:	017c                	.insn	2, 0x017c
     eee:	0458                	.insn	2, 0x0458
     ef0:	847c                	.insn	2, 0x847c
     ef2:	0801                	.insn	2, 0x0801
     ef4:	0078                	.insn	2, 0x0078
     ef6:	0840                	.insn	2, 0x0840
     ef8:	2430                	.insn	2, 0x2430
     efa:	9f21                	.insn	2, 0x9f21
     efc:	8c04                	.insn	2, 0x8c04
     efe:	cc01                	.insn	2, 0xcc01
     f00:	0101                	.insn	2, 0x0101
     f02:	0458                	.insn	2, 0x0458
     f04:	04c0                	.insn	2, 0x04c0
     f06:	05a4                	.insn	2, 0x05a4
     f08:	5801                	.insn	2, 0x5801
     f0a:	c804                	.insn	2, 0xc804
     f0c:	dc05                	.insn	2, 0xdc05
     f0e:	0105                	.insn	2, 0x0105
     f10:	0458                	.insn	2, 0x0458
     f12:	06d0                	.insn	2, 0x06d0
     f14:	06d4                	.insn	2, 0x06d4
     f16:	5801                	.insn	2, 0x5801
     f18:	5800                	.insn	2, 0x5800
     f1a:	01ad                	.insn	2, 0x01ad
     f1c:	029b0297          	auipc	t0,0x29b0
     f20:	02a2                	.insn	2, 0x02a2
     f22:	02a4                	.insn	2, 0x02a4
     f24:	c404                	.insn	2, 0xc404
     f26:	f801                	.insn	2, 0xf801
     f28:	0202                	.insn	2, 0x0202
     f2a:	9f30                	.insn	2, 0x9f30
     f2c:	a404                	.insn	2, 0xa404
     f2e:	bc05                	.insn	2, 0xbc05
     f30:	0105                	.insn	2, 0x0105
     f32:	045d                	.insn	2, 0x045d
     f34:	05e4                	.insn	2, 0x05e4
     f36:	05ec                	.insn	2, 0x05ec
     f38:	3002                	.insn	2, 0x3002
     f3a:	009f 5651 01c2      	.insn	6, 0x01c25651009f
     f40:	01cc                	.insn	2, 0x01cc
     f42:	029b0297          	auipc	t0,0x29b0
     f46:	029d                	.insn	2, 0x029d
     f48:	029f 02be 02c0      	.insn	6, 0x02c002be029f
     f4e:	9404                	.insn	2, 0x9404
     f50:	b401                	.insn	2, 0xb401
     f52:	0901                	.insn	2, 0x0901
     f54:	00850083          	lb	ra,8(a0)
     f58:	1aff0827          	.insn	4, 0x1aff0827
     f5c:	049f 03c0 03d8      	.insn	6, 0x03d803c0049f
     f62:	6301                	.insn	2, 0x6301
     f64:	a404                	.insn	2, 0xa404
     f66:	bc05                	.insn	2, 0xbc05
     f68:	0105                	.insn	2, 0x0105
     f6a:	05c80463          	beq	a6,t3,fb2 <exit-0xf16e>
     f6e:	05d8                	.insn	2, 0x05d8
     f70:	8309                	.insn	2, 0x8309
     f72:	8500                	.insn	2, 0x8500
     f74:	2700                	.insn	2, 0x2700
     f76:	ff08                	.insn	2, 0xff08
     f78:	9f1a                	.insn	2, 0x9f1a
     f7a:	d004                	.insn	2, 0xd004
     f7c:	d406                	.insn	2, 0xd406
     f7e:	0906                	.insn	2, 0x0906
     f80:	00850083          	lb	ra,8(a0)
     f84:	1aff0827          	.insn	4, 0x1aff0827
     f88:	009f ad54 af01      	.insn	6, 0xaf01ad54009f
     f8e:	cb01                	.insn	2, 0xcb01
     f90:	9301                	.insn	2, 0x9301
     f92:	9b02                	.insn	2, 0x9b02
     f94:	9d02                	.insn	2, 0x9d02
     f96:	a302                	.insn	2, 0xa302
     f98:	a302                	.insn	2, 0xa302
     f9a:	a402                	.insn	2, 0xa402
     f9c:	a402                	.insn	2, 0xa402
     f9e:	a802                	.insn	2, 0xa802
     fa0:	a802                	.insn	2, 0xa802
     fa2:	aa02                	.insn	2, 0xaa02
     fa4:	bd02                	.insn	2, 0xbd02
     fa6:	be02                	.insn	2, 0xbe02
     fa8:	be02                	.insn	2, 0xbe02
     faa:	c302                	.insn	2, 0xc302
     fac:	0402                	.insn	2, 0x0402
     fae:	01a8                	.insn	2, 0x01a8
     fb0:	02f8                	.insn	2, 0x02f8
     fb2:	6001                	.insn	2, 0x6001
     fb4:	fc04                	.insn	2, 0xfc04
     fb6:	d002                	.insn	2, 0xd002
     fb8:	045a0103          	lb	sp,69(s4)
     fbc:	0584                	.insn	2, 0x0584
     fbe:	05bc                	.insn	2, 0x05bc
     fc0:	6001                	.insn	2, 0x6001
     fc2:	c804                	.insn	2, 0xc804
     fc4:	e805                	.insn	2, 0xe805
     fc6:	0105                	.insn	2, 0x0105
     fc8:	0460                	.insn	2, 0x0460
     fca:	05e8                	.insn	2, 0x05e8
     fcc:	05ec                	.insn	2, 0x05ec
     fce:	9f018203          	lb	tp,-1552(gp) # 19b02ac <__BSS_END__+0x199b2bc>
     fd2:	ec04                	.insn	2, 0xec04
     fd4:	f005                	.insn	2, 0xf005
     fd6:	0105                	.insn	2, 0x0105
     fd8:	045a                	.insn	2, 0x045a
     fda:	05f0                	.insn	2, 0x05f0
     fdc:	0680                	.insn	2, 0x0680
     fde:	3105                	.insn	2, 0x3105
     fe0:	007a                	.insn	2, 0x007a
     fe2:	9f1c                	.insn	2, 0x9f1c
     fe4:	c804                	.insn	2, 0xc804
     fe6:	d006                	.insn	2, 0xd006
     fe8:	0106                	.insn	2, 0x0106
     fea:	045a                	.insn	2, 0x045a
     fec:	06d0                	.insn	2, 0x06d0
     fee:	06e4                	.insn	2, 0x06e4
     ff0:	6001                	.insn	2, 0x6001
     ff2:	a300                	.insn	2, 0xa300
     ff4:	a801                	.insn	2, 0xa801
     ff6:	a901                	.insn	2, 0xa901
     ff8:	ad01                	.insn	2, 0xad01
     ffa:	b901                	.insn	2, 0xb901
     ffc:	bf01                	.insn	2, 0xbf01
     ffe:	bf01                	.insn	2, 0xbf01
    1000:	c201                	.insn	2, 0xc201
    1002:	c201                	.insn	2, 0xc201
    1004:	ca01                	.insn	2, 0xca01
    1006:	9701                	.insn	2, 0x9701
    1008:	9b02                	.insn	2, 0x9b02
    100a:	a202                	.insn	2, 0xa202
    100c:	a402                	.insn	2, 0xa402
    100e:	af02                	.insn	2, 0xaf02
    1010:	bb02                	.insn	2, 0xbb02
    1012:	0402                	.insn	2, 0x0402
    1014:	02e8                	.insn	2, 0x02e8
    1016:	02f4                	.insn	2, 0x02f4
    1018:	5801                	.insn	2, 0x5801
    101a:	f804                	.insn	2, 0xf804
    101c:	f802                	.insn	2, 0xf802
    101e:	0102                	.insn	2, 0x0102
    1020:	0458                	.insn	2, 0x0458
    1022:	0398                	.insn	2, 0x0398
    1024:	03b4                	.insn	2, 0x03b4
    1026:	5801                	.insn	2, 0x5801
    1028:	b404                	.insn	2, 0xb404
    102a:	0503c003          	lbu	zero,80(t2)
    102e:	0078                	.insn	2, 0x0078
    1030:	049f2533          	.insn	4, 0x049f2533
    1034:	03c0                	.insn	2, 0x03c0
    1036:	03cc                	.insn	2, 0x03cc
    1038:	5f01                	.insn	2, 0x5f01
    103a:	a404                	.insn	2, 0xa404
    103c:	bc05                	.insn	2, 0xbc05
    103e:	0105                	.insn	2, 0x0105
    1040:	0458                	.insn	2, 0x0458
    1042:	05e4                	.insn	2, 0x05e4
    1044:	05ec                	.insn	2, 0x05ec
    1046:	5801                	.insn	2, 0x5801
    1048:	9804                	.insn	2, 0x9804
    104a:	b806                	.insn	2, 0xb806
    104c:	0106                	.insn	2, 0x0106
    104e:	005f 01ce 01d9      	.insn	6, 0x01d901ce005f
    1054:	01d9                	.insn	2, 0x01d9
    1056:	01da                	.insn	2, 0x01da
    1058:	dc04                	.insn	2, 0xdc04
    105a:	0803f003          	.insn	4, 0x0803f003
    105e:	007a                	.insn	2, 0x007a
    1060:	a9210083          	lb	ra,-1390(sp)
    1064:	f0049f33          	.insn	4, 0xf0049f33
    1068:	0103fc03          	.insn	4, 0x0103fc03
    106c:	005a                	.insn	2, 0x005a
    106e:	01e5                	.insn	2, 0x01e5
    1070:	01e701e7          	jalr	gp,30(a4)
    1074:	01ee                	.insn	2, 0x01ee
    1076:	8c04                	.insn	2, 0x8c04
    1078:	8c04                	.insn	2, 0x8c04
    107a:	0104                	.insn	2, 0x0104
    107c:	045f 048c 04a0      	.insn	6, 0x04a0048c045f
    1082:	9f757f03          	.insn	4, 0x9f757f03
    1086:	8100                	.insn	2, 0x8100
    1088:	8302                	.insn	2, 0x8302
    108a:	8302                	.insn	2, 0x8302
    108c:	8a02                	.insn	2, 0x8a02
    108e:	0402                	.insn	2, 0x0402
    1090:	04d0                	.insn	2, 0x04d0
    1092:	04d0                	.insn	2, 0x04d0
    1094:	5e01                	.insn	2, 0x5e01
    1096:	d004                	.insn	2, 0xd004
    1098:	e404                	.insn	2, 0xe404
    109a:	0304                	.insn	2, 0x0304
    109c:	757e                	.insn	2, 0x757e
    109e:	009f 0196 019e      	.insn	6, 0x019e0196009f
    10a4:	01a0                	.insn	2, 0x01a0
    10a6:	01a8                	.insn	2, 0x01a8
    10a8:	02a2                	.insn	2, 0x02a2
    10aa:	02a4                	.insn	2, 0x02a4
    10ac:	c404                	.insn	2, 0xc404
    10ae:	d402                	.insn	2, 0xd402
    10b0:	0102                	.insn	2, 0x0102
    10b2:	045e                	.insn	2, 0x045e
    10b4:	02e8                	.insn	2, 0x02e8
    10b6:	02f4                	.insn	2, 0x02f4
    10b8:	5801                	.insn	2, 0x5801
    10ba:	e404                	.insn	2, 0xe404
    10bc:	ec05                	.insn	2, 0xec05
    10be:	0105                	.insn	2, 0x0105
    10c0:	0058                	.insn	2, 0x0058
    10c2:	019c0193          	addi	gp,s8,25
    10c6:	019d                	.insn	2, 0x019d
    10c8:	019f b404 c802      	.insn	6, 0xc802b404019f
    10ce:	0902                	.insn	2, 0x0902
    10d0:	007f 2008 7a25 2200 	.insn	10, 0x049f22007a252008007f
    10d8:	049f 
    10da:	02d0                	.insn	2, 0x02d0
    10dc:	02d8                	.insn	2, 0x02d8
    10de:	5f01                	.insn	2, 0x5f01
    10e0:	6d00                	.insn	2, 0x6d00
    10e2:	7171                	.insn	2, 0x7171
    10e4:	0195                	.insn	2, 0x0195
    10e6:	e804                	.insn	2, 0xe804
    10e8:	ec01                	.insn	2, 0xec01
    10ea:	0101                	.insn	2, 0x0101
    10ec:	045a                	.insn	2, 0x045a
    10ee:	01ec                	.insn	2, 0x01ec
    10f0:	02b8                	.insn	2, 0x02b8
    10f2:	6101                	.insn	2, 0x6101
    10f4:	7800                	.insn	2, 0x7800
    10f6:	7c7c                	.insn	2, 0x7c7c
    10f8:	018b018b          	.insn	4, 0x018b018b
    10fc:	018e                	.insn	2, 0x018e
    10fe:	019c018f          	.insn	4, 0x019c018f
    1102:	fc04                	.insn	2, 0xfc04
    1104:	8401                	.insn	2, 0x8401
    1106:	0102                	.insn	2, 0x0102
    1108:	045a                	.insn	2, 0x045a
    110a:	0284                	.insn	2, 0x0284
    110c:	0298                	.insn	2, 0x0298
    110e:	5e01                	.insn	2, 0x5e01
    1110:	9804                	.insn	2, 0x9804
    1112:	a002                	.insn	2, 0xa002
    1114:	0902                	.insn	2, 0x0902
    1116:	0081                	.insn	2, 0x0081
    1118:	2008                	.insn	2, 0x2008
    111a:	7e25                	.insn	2, 0x7e25
    111c:	2200                	.insn	2, 0x2200
    111e:	049f 02a4 02c8      	.insn	6, 0x02c802a4049f
    1124:	5f01                	.insn	2, 0x5f01
    1126:	8100                	.insn	2, 0x8100
    1128:	ad01                	.insn	2, 0xad01
    112a:	a201                	.insn	2, 0xa201
    112c:	a402                	.insn	2, 0xa402
    112e:	0402                	.insn	2, 0x0402
    1130:	028c                	.insn	2, 0x028c
    1132:	02f8                	.insn	2, 0x02f8
    1134:	5601                	.insn	2, 0x5601
    1136:	e404                	.insn	2, 0xe404
    1138:	ec05                	.insn	2, 0xec05
    113a:	0105                	.insn	2, 0x0105
    113c:	0056                	.insn	2, 0x0056
    113e:	0189                	.insn	2, 0x0189
    1140:	01ad                	.insn	2, 0x01ad
    1142:	02a2                	.insn	2, 0x02a2
    1144:	02a4                	.insn	2, 0x02a4
    1146:	9804                	.insn	2, 0x9804
    1148:	f802                	.insn	2, 0xf802
    114a:	0102                	.insn	2, 0x0102
    114c:	045a                	.insn	2, 0x045a
    114e:	05e4                	.insn	2, 0x05e4
    1150:	05ec                	.insn	2, 0x05ec
    1152:	5a01                	.insn	2, 0x5a01
    1154:	5f00                	.insn	2, 0x5f00
    1156:	01ad                	.insn	2, 0x01ad
    1158:	02a2                	.insn	2, 0x02a2
    115a:	02a4                	.insn	2, 0x02a4
    115c:	c404                	.insn	2, 0xc404
    115e:	f801                	.insn	2, 0xf801
    1160:	0102                	.insn	2, 0x0102
    1162:	0459                	.insn	2, 0x0459
    1164:	05e4                	.insn	2, 0x05e4
    1166:	05ec                	.insn	2, 0x05ec
    1168:	5901                	.insn	2, 0x5901
    116a:	6200                	.insn	2, 0x6200
    116c:	01ad                	.insn	2, 0x01ad
    116e:	02a2                	.insn	2, 0x02a2
    1170:	02a4                	.insn	2, 0x02a4
    1172:	d804                	.insn	2, 0xd804
    1174:	f801                	.insn	2, 0xf801
    1176:	0102                	.insn	2, 0x0102
    1178:	046c                	.insn	2, 0x046c
    117a:	05e4                	.insn	2, 0x05e4
    117c:	05ec                	.insn	2, 0x05ec
    117e:	6c01                	.insn	2, 0x6c01
    1180:	6400                	.insn	2, 0x6400
    1182:	018d                	.insn	2, 0x018d
    1184:	d804                	.insn	2, 0xd804
    1186:	9c01                	.insn	2, 0x9c01
    1188:	0102                	.insn	2, 0x0102
    118a:	005f 02a5 02aa      	.insn	6, 0x02aa02a5005f
    1190:	02bd                	.insn	2, 0x02bd
    1192:	02be                	.insn	2, 0x02be
    1194:	ec04                	.insn	2, 0xec04
    1196:	8005                	.insn	2, 0x8005
    1198:	0206                	.insn	2, 0x0206
    119a:	9f31                	.insn	2, 0x9f31
    119c:	c804                	.insn	2, 0xc804
    119e:	d006                	.insn	2, 0xd006
    11a0:	0206                	.insn	2, 0x0206
    11a2:	9f31                	.insn	2, 0x9f31
    11a4:	fd00                	.insn	2, 0xfd00
    11a6:	0008                	.insn	2, 0x0008
    11a8:	0500                	.insn	2, 0x0500
    11aa:	0800                	.insn	2, 0x0800
    11ac:	0000                	.insn	2, 0x0000
    11ae:	0000                	.insn	2, 0x0000
    11b0:	0000                	.insn	2, 0x0000
    11b2:	2222                	.insn	2, 0x2222
    11b4:	0400                	.insn	2, 0x0400
    11b6:	3000                	.insn	2, 0x3000
    11b8:	5a01                	.insn	2, 0x5a01
    11ba:	3004                	.insn	2, 0x3004
    11bc:	08d8                	.insn	2, 0x08d8
    11be:	a306                	.insn	2, 0xa306
    11c0:	330aa503          	lw	a0,816(s5)
    11c4:	009f 2600 0026      	.insn	6, 0x00262600009f
    11ca:	0004                	.insn	2, 0x0004
    11cc:	0144                	.insn	2, 0x0144
    11ce:	d844045b          	.insn	4, 0xd844045b
    11d2:	0608                	.insn	2, 0x0608
    11d4:	0ba503a3          	sb	s10,167(a0)
    11d8:	02009f33          	.insn	4, 0x02009f33
    11dc:	01896867          	.insn	4, 0x01896867
    11e0:	01b7018b          	.insn	4, 0x01b7018b
    11e4:	01d1                	.insn	2, 0x01d1
    11e6:	01d6                	.insn	2, 0x01d6
    11e8:	01de                	.insn	2, 0x01de
    11ea:	01e5                	.insn	2, 0x01e5
    11ec:	01fa                	.insn	2, 0x01fa
    11ee:	02dd02db          	.insn	4, 0x02dd02db
    11f2:	02e402e3          	beq	s0,a4,1a16 <exit-0xe70a>
    11f6:	02ea                	.insn	2, 0x02ea
    11f8:	03a602f3          	.insn	4, 0x03a602f3
    11fc:	03ad                	.insn	2, 0x03ad
    11fe:	03ae                	.insn	2, 0x03ae
    1200:	0004                	.insn	2, 0x0004
    1202:	01b4                	.insn	2, 0x01b4
    1204:	3002                	.insn	2, 0x3002
    1206:	049f 01bc 02a4      	.insn	6, 0x02a401bc049f
    120c:	3002                	.insn	2, 0x3002
    120e:	049f 02ac 0394      	.insn	6, 0x039402ac049f
    1214:	3002                	.insn	2, 0x3002
    1216:	049f 03e0 03e0      	.insn	6, 0x03e003e0049f
    121c:	3002                	.insn	2, 0x3002
    121e:	049f 03f0 0484      	.insn	6, 0x048403f0049f
    1224:	3002                	.insn	2, 0x3002
    1226:	049f 04c8 06f8      	.insn	6, 0x06f804c8049f
    122c:	3002                	.insn	2, 0x3002
    122e:	049f 0784 0790      	.insn	6, 0x07900784049f
    1234:	3002                	.insn	2, 0x3002
    1236:	049f 0798 0798      	.insn	6, 0x07980798049f
    123c:	3002                	.insn	2, 0x3002
    123e:	049f 07b0 08b0      	.insn	6, 0x08b007b0049f
    1244:	3002                	.insn	2, 0x3002
    1246:	049f 08cc 08d0      	.insn	6, 0x08d008cc049f
    124c:	3002                	.insn	2, 0x3002
    124e:	009f 6729 bc68      	.insn	6, 0xbc686729009f
    1254:	d101                	.insn	2, 0xd101
    1256:	e501                	.insn	2, 0xe501
    1258:	fa01                	.insn	2, 0xfa01
    125a:	8a01                	.insn	2, 0x8a01
    125c:	8e02                	.insn	2, 0x8e02
    125e:	b202                	.insn	2, 0xb202
    1260:	b302                	.insn	2, 0xb302
    1262:	ce02                	.insn	2, 0xce02
    1264:	d002                	.insn	2, 0xd002
    1266:	db02                	.insn	2, 0xdb02
    1268:	dd02                	.insn	2, 0xdd02
    126a:	e302                	.insn	2, 0xe302
    126c:	e402                	.insn	2, 0xe402
    126e:	f102                	.insn	2, 0xf102
    1270:	f302                	.insn	2, 0xf302
    1272:	fd02                	.insn	2, 0xfd02
    1274:	9902                	.insn	2, 0x9902
    1276:	a2039e03          	lh	t3,-1504(t2)
    127a:	ad03a603          	lw	a2,-1328(t2)
    127e:	0403ae03          	lw	t3,64(t2)
    1282:	b448                	.insn	2, 0xb448
    1284:	0101                	.insn	2, 0x0101
    1286:	0459                	.insn	2, 0x0459
    1288:	01bc                	.insn	2, 0x01bc
    128a:	03ac                	.insn	2, 0x03ac
    128c:	5901                	.insn	2, 0x5901
    128e:	e004                	.insn	2, 0xe004
    1290:	01048403          	lb	s0,16(s1)
    1294:	0459                	.insn	2, 0x0459
    1296:	04c8                	.insn	2, 0x04c8
    1298:	04e0                	.insn	2, 0x04e0
    129a:	5901                	.insn	2, 0x5901
    129c:	f404                	.insn	2, 0xf404
    129e:	e404                	.insn	2, 0xe404
    12a0:	0105                	.insn	2, 0x0105
    12a2:	0459                	.insn	2, 0x0459
    12a4:	05e8                	.insn	2, 0x05e8
    12a6:	06d4                	.insn	2, 0x06d4
    12a8:	5901                	.insn	2, 0x5901
    12aa:	e004                	.insn	2, 0xe004
    12ac:	f806                	.insn	2, 0xf806
    12ae:	0106                	.insn	2, 0x0106
    12b0:	0459                	.insn	2, 0x0459
    12b2:	0784                	.insn	2, 0x0784
    12b4:	0790                	.insn	2, 0x0790
    12b6:	5901                	.insn	2, 0x5901
    12b8:	9804                	.insn	2, 0x9804
    12ba:	0107a407          	.insn	4, 0x0107a407
    12be:	0459                	.insn	2, 0x0459
    12c0:	07b0                	.insn	2, 0x07b0
    12c2:	07c4                	.insn	2, 0x07c4
    12c4:	5901                	.insn	2, 0x5901
    12c6:	fc04                	.insn	2, 0xfc04
    12c8:	01088c07          	.insn	4, 0x01088c07
    12cc:	0459                	.insn	2, 0x0459
    12ce:	08a4                	.insn	2, 0x08a4
    12d0:	08b0                	.insn	2, 0x08b0
    12d2:	5901                	.insn	2, 0x5901
    12d4:	cc04                	.insn	2, 0xcc04
    12d6:	d008                	.insn	2, 0xd008
    12d8:	0108                	.insn	2, 0x0108
    12da:	0059                	.insn	2, 0x0059
    12dc:	5a28                	.insn	2, 0x5a28
    12de:	6765                	.insn	2, 0x6765
    12e0:	8668                	.insn	2, 0x8668
    12e2:	8701                	.insn	2, 0x8701
    12e4:	8a01                	.insn	2, 0x8a01
    12e6:	8b01                	.insn	2, 0x8b01
    12e8:	bc01                	.insn	2, 0xbc01
    12ea:	d101                	.insn	2, 0xd101
    12ec:	e501                	.insn	2, 0xe501
    12ee:	fa01                	.insn	2, 0xfa01
    12f0:	8a01                	.insn	2, 0x8a01
    12f2:	8e02                	.insn	2, 0x8e02
    12f4:	b102                	.insn	2, 0xb102
    12f6:	b302                	.insn	2, 0xb302
    12f8:	b502                	.insn	2, 0xb502
    12fa:	b602                	.insn	2, 0xb602
    12fc:	cf02                	.insn	2, 0xcf02
    12fe:	d002                	.insn	2, 0xd002
    1300:	db02                	.insn	2, 0xdb02
    1302:	dd02                	.insn	2, 0xdd02
    1304:	e302                	.insn	2, 0xe302
    1306:	e402                	.insn	2, 0xe402
    1308:	f202                	.insn	2, 0xf202
    130a:	f302                	.insn	2, 0xf302
    130c:	fd02                	.insn	2, 0xfd02
    130e:	9902                	.insn	2, 0x9902
    1310:	a2039d03          	lh	s10,-1504(t2)
    1314:	ad03a603          	lw	a2,-1328(t2)
    1318:	0403ae03          	lw	t3,64(t2)
    131c:	7848                	.insn	2, 0x7848
    131e:	5801                	.insn	2, 0x5801
    1320:	ac04                	.insn	2, 0xac04
    1322:	b401                	.insn	2, 0xb401
    1324:	0101                	.insn	2, 0x0101
    1326:	0458                	.insn	2, 0x0458
    1328:	01bc                	.insn	2, 0x01bc
    132a:	0298                	.insn	2, 0x0298
    132c:	5801                	.insn	2, 0x5801
    132e:	9c04                	.insn	2, 0x9c04
    1330:	a802                	.insn	2, 0xa802
    1332:	0102                	.insn	2, 0x0102
    1334:	0458                	.insn	2, 0x0458
    1336:	02ac                	.insn	2, 0x02ac
    1338:	03ac                	.insn	2, 0x03ac
    133a:	5801                	.insn	2, 0x5801
    133c:	e004                	.insn	2, 0xe004
    133e:	01048403          	lb	s0,16(s1)
    1342:	0458                	.insn	2, 0x0458
    1344:	04c8                	.insn	2, 0x04c8
    1346:	04e0                	.insn	2, 0x04e0
    1348:	5801                	.insn	2, 0x5801
    134a:	f404                	.insn	2, 0xf404
    134c:	e004                	.insn	2, 0xe004
    134e:	0105                	.insn	2, 0x0105
    1350:	0458                	.insn	2, 0x0458
    1352:	05e8                	.insn	2, 0x05e8
    1354:	05f4                	.insn	2, 0x05f4
    1356:	5801                	.insn	2, 0x5801
    1358:	f804                	.insn	2, 0xf804
    135a:	d805                	.insn	2, 0xd805
    135c:	0106                	.insn	2, 0x0106
    135e:	0458                	.insn	2, 0x0458
    1360:	06e0                	.insn	2, 0x06e0
    1362:	06f8                	.insn	2, 0x06f8
    1364:	5801                	.insn	2, 0x5801
    1366:	8404                	.insn	2, 0x8404
    1368:	01079007          	.insn	4, 0x01079007
    136c:	0458                	.insn	2, 0x0458
    136e:	0798                	.insn	2, 0x0798
    1370:	07a8                	.insn	2, 0x07a8
    1372:	5801                	.insn	2, 0x5801
    1374:	b004                	.insn	2, 0xb004
    1376:	0107c407          	.insn	4, 0x0107c407
    137a:	0458                	.insn	2, 0x0458
    137c:	07fc                	.insn	2, 0x07fc
    137e:	0888                	.insn	2, 0x0888
    1380:	5801                	.insn	2, 0x5801
    1382:	a404                	.insn	2, 0xa404
    1384:	b008                	.insn	2, 0xb008
    1386:	0108                	.insn	2, 0x0108
    1388:	0458                	.insn	2, 0x0458
    138a:	08cc                	.insn	2, 0x08cc
    138c:	08d0                	.insn	2, 0x08d0
    138e:	5801                	.insn	2, 0x5801
    1390:	1d00                	.insn	2, 0x1d00
    1392:	6559                	.insn	2, 0x6559
    1394:	79786867          	.insn	4, 0x79786867
    1398:	0184                	.insn	2, 0x0184
    139a:	01990187          	.insn	4, 0x01990187
    139e:	019c019b          	addiw	gp,s8,25
    13a2:	019c                	.insn	2, 0x019c
    13a4:	01a8                	.insn	2, 0x01a8
    13a6:	01d1                	.insn	2, 0x01d1
    13a8:	01e4                	.insn	2, 0x01e4
    13aa:	01fa                	.insn	2, 0x01fa
    13ac:	0289                	.insn	2, 0x0289
    13ae:	028e                	.insn	2, 0x028e
    13b0:	029d                	.insn	2, 0x029d
    13b2:	029e                	.insn	2, 0x029e
    13b4:	02b302af          	.insn	4, 0x02b302af
    13b8:	02c502c3          	.insn	4, 0x02c502c3
    13bc:	02c6                	.insn	2, 0x02c6
    13be:	02c6                	.insn	2, 0x02c6
    13c0:	02d9                	.insn	2, 0x02d9
    13c2:	02dd                	.insn	2, 0x02dd
    13c4:	02e402e3          	beq	s0,a4,1be8 <exit-0xe538>
    13c8:	02f0                	.insn	2, 0x02f0
    13ca:	02fd02f3          	.insn	4, 0x02fd02f3
    13ce:	0399                	.insn	2, 0x0399
    13d0:	039c                	.insn	2, 0x039c
    13d2:	03a2                	.insn	2, 0x03a2
    13d4:	03a4                	.insn	2, 0x03a4
    13d6:	03a5                	.insn	2, 0x03a5
    13d8:	03a6                	.insn	2, 0x03a6
    13da:	03ad                	.insn	2, 0x03ad
    13dc:	03ae                	.insn	2, 0x03ae
    13de:	1804                	.insn	2, 0x1804
    13e0:	0178                	.insn	2, 0x0178
    13e2:	045f 01ac 01b4      	.insn	6, 0x01b401ac045f
    13e8:	5f01                	.insn	2, 0x5f01
    13ea:	bc04                	.insn	2, 0xbc04
    13ec:	f801                	.insn	2, 0xf801
    13ee:	0101                	.insn	2, 0x0101
    13f0:	045f 01fc 0294      	.insn	6, 0x029401fc045f
    13f6:	5f01                	.insn	2, 0x5f01
    13f8:	9c04                	.insn	2, 0x9c04
    13fa:	e002                	.insn	2, 0xe002
    13fc:	0102                	.insn	2, 0x0102
    13fe:	045f 02e8 02f0      	.insn	6, 0x02f002e8045f
    1404:	5b01                	.insn	2, 0x5b01
    1406:	f004                	.insn	2, 0xf004
    1408:	9002                	.insn	2, 0x9002
    140a:	045f0103          	lb	sp,69(t5)
    140e:	03e0                	.insn	2, 0x03e0
    1410:	0480                	.insn	2, 0x0480
    1412:	5f01                	.insn	2, 0x5f01
    1414:	c804                	.insn	2, 0xc804
    1416:	e004                	.insn	2, 0xe004
    1418:	0104                	.insn	2, 0x0104
    141a:	045f 04f4 05a4      	.insn	6, 0x05a404f4045f
    1420:	5f01                	.insn	2, 0x5f01
    1422:	a804                	.insn	2, 0xa804
    1424:	dc05                	.insn	2, 0xdc05
    1426:	0105                	.insn	2, 0x0105
    1428:	045f 05e8 06ac      	.insn	6, 0x06ac05e8045f
    142e:	5f01                	.insn	2, 0x5f01
    1430:	b404                	.insn	2, 0xb404
    1432:	bc06                	.insn	2, 0xbc06
    1434:	0106                	.insn	2, 0x0106
    1436:	045a                	.insn	2, 0x045a
    1438:	06bc                	.insn	2, 0x06bc
    143a:	06f4                	.insn	2, 0x06f4
    143c:	5f01                	.insn	2, 0x5f01
    143e:	8404                	.insn	2, 0x8404
    1440:	01079007          	.insn	4, 0x01079007
    1444:	045f 0798 07a0      	.insn	6, 0x07a00798045f
    144a:	5f01                	.insn	2, 0x5f01
    144c:	b004                	.insn	2, 0xb004
    144e:	0107c407          	.insn	4, 0x0107c407
    1452:	045f 07fc 0884      	.insn	6, 0x088407fc045f
    1458:	5f01                	.insn	2, 0x5f01
    145a:	a404                	.insn	2, 0xa404
    145c:	a808                	.insn	2, 0xa808
    145e:	0108                	.insn	2, 0x0108
    1460:	045f 08ac 08b0      	.insn	6, 0x08b008ac045f
    1466:	5f01                	.insn	2, 0x5f01
    1468:	cc04                	.insn	2, 0xcc04
    146a:	d008                	.insn	2, 0xd008
    146c:	0108                	.insn	2, 0x0108
    146e:	005f 5a41 6765      	.insn	6, 0x67655a41005f
    1474:	6e68                	.insn	2, 0x6e68
    1476:	8579                	.insn	2, 0x8579
    1478:	8701                	.insn	2, 0x8701
    147a:	8801                	.insn	2, 0x8801
    147c:	8b01                	.insn	2, 0x8b01
    147e:	8c01                	.insn	2, 0x8c01
    1480:	9c01                	.insn	2, 0x9c01
    1482:	bc01                	.insn	2, 0xbc01
    1484:	d101                	.insn	2, 0xd101
    1486:	e501                	.insn	2, 0xe501
    1488:	fa01                	.insn	2, 0xfa01
    148a:	8a01                	.insn	2, 0x8a01
    148c:	8e02                	.insn	2, 0x8e02
    148e:	9302                	.insn	2, 0x9302
    1490:	9e02                	.insn	2, 0x9e02
    1492:	db02                	.insn	2, 0xdb02
    1494:	dd02                	.insn	2, 0xdd02
    1496:	e302                	.insn	2, 0xe302
    1498:	e402                	.insn	2, 0xe402
    149a:	fd02                	.insn	2, 0xfd02
    149c:	9902                	.insn	2, 0x9902
    149e:	a2039e03          	lh	t3,-1504(t2)
    14a2:	ad03a603          	lw	a2,-1328(t2)
    14a6:	0403ae03          	lw	t3,64(t2)
    14aa:	7858                	.insn	2, 0x7858
    14ac:	5b01                	.insn	2, 0x5b01
    14ae:	ac04                	.insn	2, 0xac04
    14b0:	b401                	.insn	2, 0xb401
    14b2:	0101                	.insn	2, 0x0101
    14b4:	01bc045b          	.insn	4, 0x01bc045b
    14b8:	01d4                	.insn	2, 0x01d4
    14ba:	5b01                	.insn	2, 0x5b01
    14bc:	fc04                	.insn	2, 0xfc04
    14be:	9401                	.insn	2, 0x9401
    14c0:	0102                	.insn	2, 0x0102
    14c2:	029c045b          	.insn	4, 0x029c045b
    14c6:	02a0                	.insn	2, 0x02a0
    14c8:	5b01                	.insn	2, 0x5b01
    14ca:	ac04                	.insn	2, 0xac04
    14cc:	b002                	.insn	2, 0xb002
    14ce:	0102                	.insn	2, 0x0102
    14d0:	02f0045b          	.insn	4, 0x02f0045b
    14d4:	03ac                	.insn	2, 0x03ac
    14d6:	5b01                	.insn	2, 0x5b01
    14d8:	e004                	.insn	2, 0xe004
    14da:	01048403          	lb	s0,16(s1)
    14de:	04c8045b          	.insn	4, 0x04c8045b
    14e2:	04e0                	.insn	2, 0x04e0
    14e4:	5b01                	.insn	2, 0x5b01
    14e6:	f404                	.insn	2, 0xf404
    14e8:	8004                	.insn	2, 0x8004
    14ea:	0105                	.insn	2, 0x0105
    14ec:	05a8045b          	.insn	4, 0x05a8045b
    14f0:	06f8                	.insn	2, 0x06f8
    14f2:	5b01                	.insn	2, 0x5b01
    14f4:	8404                	.insn	2, 0x8404
    14f6:	01079007          	.insn	4, 0x01079007
    14fa:	0798045b          	.insn	4, 0x0798045b
    14fe:	07c4                	.insn	2, 0x07c4
    1500:	5b01                	.insn	2, 0x5b01
    1502:	fc04                	.insn	2, 0xfc04
    1504:	01088c07          	.insn	4, 0x01088c07
    1508:	08a4045b          	.insn	4, 0x08a4045b
    150c:	08b0                	.insn	2, 0x08b0
    150e:	5b01                	.insn	2, 0x5b01
    1510:	cc04                	.insn	2, 0xcc04
    1512:	d008                	.insn	2, 0xd008
    1514:	0108                	.insn	2, 0x0108
    1516:	5a38005b          	.insn	4, 0x5a38005b
    151a:	6665                	.insn	2, 0x6665
    151c:	6a68                	.insn	2, 0x6a68
    151e:	8979                	.insn	2, 0x8979
    1520:	8b01                	.insn	2, 0x8b01
    1522:	9d01                	.insn	2, 0x9d01
    1524:	fa01                	.insn	2, 0xfa01
    1526:	8a01                	.insn	2, 0x8a01
    1528:	8e02                	.insn	2, 0x8e02
    152a:	9002                	.insn	2, 0x9002
    152c:	9e02                	.insn	2, 0x9e02
    152e:	9f02                	.insn	2, 0x9f02
    1530:	a202                	.insn	2, 0xa202
    1532:	d702                	.insn	2, 0xd702
    1534:	e402                	.insn	2, 0xe402
    1536:	ee02                	.insn	2, 0xee02
    1538:	f302                	.insn	2, 0xf302
    153a:	fd02                	.insn	2, 0xfd02
    153c:	9902                	.insn	2, 0x9902
    153e:	a5039e03          	lh	t3,-1456(t2)
    1542:	0403a603          	lw	a2,64(t2)
    1546:	7858                	.insn	2, 0x7858
    1548:	5c01                	.insn	2, 0x5c01
    154a:	ac04                	.insn	2, 0xac04
    154c:	b001                	.insn	2, 0xb001
    154e:	0101                	.insn	2, 0x0101
    1550:	045c                	.insn	2, 0x045c
    1552:	01bc                	.insn	2, 0x01bc
    1554:	01c0                	.insn	2, 0x01c0
    1556:	5c01                	.insn	2, 0x5c01
    1558:	fc04                	.insn	2, 0xfc04
    155a:	a401                	.insn	2, 0xa401
    155c:	0102                	.insn	2, 0x0102
    155e:	045c                	.insn	2, 0x045c
    1560:	02ac                	.insn	2, 0x02ac
    1562:	02f8                	.insn	2, 0x02f8
    1564:	5c01                	.insn	2, 0x5c01
    1566:	c804                	.insn	2, 0xc804
    1568:	e004                	.insn	2, 0xe004
    156a:	0104                	.insn	2, 0x0104
    156c:	045c                	.insn	2, 0x045c
    156e:	04f4                	.insn	2, 0x04f4
    1570:	04f8                	.insn	2, 0x04f8
    1572:	5c01                	.insn	2, 0x5c01
    1574:	a804                	.insn	2, 0xa804
    1576:	ac05                	.insn	2, 0xac05
    1578:	0105                	.insn	2, 0x0105
    157a:	045c                	.insn	2, 0x045c
    157c:	05c0                	.insn	2, 0x05c0
    157e:	06ec                	.insn	2, 0x06ec
    1580:	5c01                	.insn	2, 0x5c01
    1582:	9804                	.insn	2, 0x9804
    1584:	01079c07          	.insn	4, 0x01079c07
    1588:	045c                	.insn	2, 0x045c
    158a:	07b0                	.insn	2, 0x07b0
    158c:	07c4                	.insn	2, 0x07c4
    158e:	5c01                	.insn	2, 0x5c01
    1590:	fc04                	.insn	2, 0xfc04
    1592:	01088c07          	.insn	4, 0x01088c07
    1596:	045c                	.insn	2, 0x045c
    1598:	08ac                	.insn	2, 0x08ac
    159a:	08b0                	.insn	2, 0x08b0
    159c:	5c01                	.insn	2, 0x5c01
    159e:	3d00                	.insn	2, 0x3d00
    15a0:	655a                	.insn	2, 0x655a
    15a2:	77756867          	.insn	4, 0x77756867
    15a6:	7979                	.insn	2, 0x7979
    15a8:	0189                	.insn	2, 0x0189
    15aa:	01a6018b          	.insn	4, 0x01a6018b
    15ae:	01d1                	.insn	2, 0x01d1
    15b0:	01dd                	.insn	2, 0x01dd
    15b2:	01de                	.insn	2, 0x01de
    15b4:	01fa01e3          	beq	s4,t6,1db6 <exit-0xe36a>
    15b8:	028a                	.insn	2, 0x028a
    15ba:	028e                	.insn	2, 0x028e
    15bc:	029a                	.insn	2, 0x029a
    15be:	029c                	.insn	2, 0x029c
    15c0:	029e                	.insn	2, 0x029e
    15c2:	029e                	.insn	2, 0x029e
    15c4:	02a1                	.insn	2, 0x02a1
    15c6:	02a2                	.insn	2, 0x02a2
    15c8:	02dd02db          	.insn	4, 0x02dd02db
    15cc:	02e0                	.insn	2, 0x02e0
    15ce:	02e4                	.insn	2, 0x02e4
    15d0:	02fd                	.insn	2, 0x02fd
    15d2:	0399                	.insn	2, 0x0399
    15d4:	039e                	.insn	2, 0x039e
    15d6:	03a2                	.insn	2, 0x03a2
    15d8:	03a6                	.insn	2, 0x03a6
    15da:	03ad                	.insn	2, 0x03ad
    15dc:	03ae                	.insn	2, 0x03ae
    15de:	5804                	.insn	2, 0x5804
    15e0:	0178                	.insn	2, 0x0178
    15e2:	045e                	.insn	2, 0x045e
    15e4:	01ac                	.insn	2, 0x01ac
    15e6:	01b4                	.insn	2, 0x01b4
    15e8:	5e01                	.insn	2, 0x5e01
    15ea:	bc04                	.insn	2, 0xbc04
    15ec:	ec01                	.insn	2, 0xec01
    15ee:	0101                	.insn	2, 0x0101
    15f0:	045e                	.insn	2, 0x045e
    15f2:	01f4                	.insn	2, 0x01f4
    15f4:	01fc                	.insn	2, 0x01fc
    15f6:	5c01                	.insn	2, 0x5c01
    15f8:	fc04                	.insn	2, 0xfc04
    15fa:	a401                	.insn	2, 0xa401
    15fc:	0102                	.insn	2, 0x0102
    15fe:	045e                	.insn	2, 0x045e
    1600:	02ac                	.insn	2, 0x02ac
    1602:	038c                	.insn	2, 0x038c
    1604:	5e01                	.insn	2, 0x5e01
    1606:	e004                	.insn	2, 0xe004
    1608:	0103ec03          	lwu	s8,16(t2)
    160c:	045e                	.insn	2, 0x045e
    160e:	03f0                	.insn	2, 0x03f0
    1610:	03fc                	.insn	2, 0x03fc
    1612:	5e01                	.insn	2, 0x5e01
    1614:	c804                	.insn	2, 0xc804
    1616:	e004                	.insn	2, 0xe004
    1618:	0104                	.insn	2, 0x0104
    161a:	045e                	.insn	2, 0x045e
    161c:	04f4                	.insn	2, 0x04f4
    161e:	0598                	.insn	2, 0x0598
    1620:	5e01                	.insn	2, 0x5e01
    1622:	a004                	.insn	2, 0xa004
    1624:	a805                	.insn	2, 0xa805
    1626:	0105                	.insn	2, 0x0105
    1628:	045c                	.insn	2, 0x045c
    162a:	05a8                	.insn	2, 0x05a8
    162c:	05bc                	.insn	2, 0x05bc
    162e:	5e01                	.insn	2, 0x5e01
    1630:	c004                	.insn	2, 0xc004
    1632:	f805                	.insn	2, 0xf805
    1634:	0106                	.insn	2, 0x0106
    1636:	045e                	.insn	2, 0x045e
    1638:	0784                	.insn	2, 0x0784
    163a:	0788                	.insn	2, 0x0788
    163c:	5e01                	.insn	2, 0x5e01
    163e:	9804                	.insn	2, 0x9804
    1640:	0107c407          	.insn	4, 0x0107c407
    1644:	045e                	.insn	2, 0x045e
    1646:	07fc                	.insn	2, 0x07fc
    1648:	088c                	.insn	2, 0x088c
    164a:	5e01                	.insn	2, 0x5e01
    164c:	a404                	.insn	2, 0xa404
    164e:	b008                	.insn	2, 0xb008
    1650:	0108                	.insn	2, 0x0108
    1652:	045e                	.insn	2, 0x045e
    1654:	08cc                	.insn	2, 0x08cc
    1656:	08d0                	.insn	2, 0x08d0
    1658:	5e01                	.insn	2, 0x5e01
    165a:	4c00                	.insn	2, 0x4c00
    165c:	01896867          	.insn	4, 0x01896867
    1660:	01b7018b          	.insn	4, 0x01b7018b
    1664:	01bc                	.insn	2, 0x01bc
    1666:	01d0                	.insn	2, 0x01d0
    1668:	01d1                	.insn	2, 0x01d1
    166a:	01da                	.insn	2, 0x01da
    166c:	01de                	.insn	2, 0x01de
    166e:	01e5                	.insn	2, 0x01e5
    1670:	0280                	.insn	2, 0x0280
    1672:	02a2                	.insn	2, 0x02a2
    1674:	02c602a7          	.insn	4, 0x02c602a7
    1678:	02d5                	.insn	2, 0x02d5
    167a:	02da                	.insn	2, 0x02da
    167c:	02da                	.insn	2, 0x02da
    167e:	02dd02db          	.insn	4, 0x02dd02db
    1682:	02f802e3          	beq	a6,a5,1ea6 <exit-0xe27a>
    1686:	02fc                	.insn	2, 0x02fc
    1688:	02fc                	.insn	2, 0x02fc
    168a:	02fd                	.insn	2, 0x02fd
    168c:	02fd                	.insn	2, 0x02fd
    168e:	03a6                	.insn	2, 0x03a6
    1690:	03ad                	.insn	2, 0x03ad
    1692:	03ae                	.insn	2, 0x03ae
    1694:	6004                	.insn	2, 0x6004
    1696:	01b4                	.insn	2, 0x01b4
    1698:	5901                	.insn	2, 0x5901
    169a:	bc04                	.insn	2, 0xbc04
    169c:	a401                	.insn	2, 0xa401
    169e:	0102                	.insn	2, 0x0102
    16a0:	0459                	.insn	2, 0x0459
    16a2:	02ac                	.insn	2, 0x02ac
    16a4:	0394                	.insn	2, 0x0394
    16a6:	5901                	.insn	2, 0x5901
    16a8:	ac04                	.insn	2, 0xac04
    16aa:	0103d403          	lhu	s0,16(t2)
    16ae:	0459                	.insn	2, 0x0459
    16b0:	03e0                	.insn	2, 0x03e0
    16b2:	03e4                	.insn	2, 0x03e4
    16b4:	5901                	.insn	2, 0x5901
    16b6:	f004                	.insn	2, 0xf004
    16b8:	01048403          	lb	s0,16(s1)
    16bc:	0459                	.insn	2, 0x0459
    16be:	04cc                	.insn	2, 0x04cc
    16c0:	05c0                	.insn	2, 0x05c0
    16c2:	5901                	.insn	2, 0x5901
    16c4:	c804                	.insn	2, 0xc804
    16c6:	bc05                	.insn	2, 0xbc05
    16c8:	0106                	.insn	2, 0x0106
    16ca:	06e8045b          	.insn	4, 0x06e8045b
    16ce:	06f4                	.insn	2, 0x06f4
    16d0:	5901                	.insn	2, 0x5901
    16d2:	f404                	.insn	2, 0xf404
    16d4:	f806                	.insn	2, 0xf806
    16d6:	0106                	.insn	2, 0x0106
    16d8:	0784045b          	.insn	4, 0x0784045b
    16dc:	0790                	.insn	2, 0x0790
    16de:	5901                	.insn	2, 0x5901
    16e0:	b404                	.insn	2, 0xb404
    16e2:	0107c007          	.insn	4, 0x0107c007
    16e6:	0459                	.insn	2, 0x0459
    16e8:	07c0                	.insn	2, 0x07c0
    16ea:	07c4                	.insn	2, 0x07c4
    16ec:	5b01                	.insn	2, 0x5b01
    16ee:	c404                	.insn	2, 0xc404
    16f0:	0108b007          	.insn	4, 0x0108b007
    16f4:	0459                	.insn	2, 0x0459
    16f6:	08cc                	.insn	2, 0x08cc
    16f8:	08d0                	.insn	2, 0x08d0
    16fa:	5901                	.insn	2, 0x5901
    16fc:	5000                	.insn	2, 0x5000
    16fe:	7c796867          	.insn	4, 0x7c796867
    1702:	0189                	.insn	2, 0x0189
    1704:	019c018b          	.insn	4, 0x019c018b
    1708:	01a0                	.insn	2, 0x01a0
    170a:	01b701b7          	lui	gp,0x1b70
    170e:	01bc                	.insn	2, 0x01bc
    1710:	01d8                	.insn	2, 0x01d8
    1712:	01de                	.insn	2, 0x01de
    1714:	01e0                	.insn	2, 0x01e0
    1716:	01e5                	.insn	2, 0x01e5
    1718:	01f4                	.insn	2, 0x01f4
    171a:	01fa                	.insn	2, 0x01fa
    171c:	01ff 02a2 02a6 02c6 	.insn	10, 0x02c902c602a602a201ff
    1724:	02c9 
    1726:	02d002cf          	.insn	4, 0x02d002cf
    172a:	02dd02db          	.insn	4, 0x02dd02db
    172e:	02ec02e3          	beq	s8,a4,1f52 <exit-0xe1ce>
    1732:	02f502f3          	.insn	4, 0x02f502f3
    1736:	0392                	.insn	2, 0x0392
    1738:	0392                	.insn	2, 0x0392
    173a:	0399                	.insn	2, 0x0399
    173c:	0399                	.insn	2, 0x0399
    173e:	039d                	.insn	2, 0x039d
    1740:	039e                	.insn	2, 0x039e
    1742:	03a2                	.insn	2, 0x03a2
    1744:	03a2                	.insn	2, 0x03a2
    1746:	03a5                	.insn	2, 0x03a5
    1748:	03a5                	.insn	2, 0x03a5
    174a:	03a6                	.insn	2, 0x03a6
    174c:	03a6                	.insn	2, 0x03a6
    174e:	03ad03ab          	.insn	4, 0x03ad03ab
    1752:	03ae                	.insn	2, 0x03ae
    1754:	03ae                	.insn	2, 0x03ae
    1756:	0400                	.insn	2, 0x0400
    1758:	b464                	.insn	2, 0xb464
    175a:	0101                	.insn	2, 0x0101
    175c:	0458                	.insn	2, 0x0458
    175e:	01bc                	.insn	2, 0x01bc
    1760:	01fc                	.insn	2, 0x01fc
    1762:	5801                	.insn	2, 0x5801
    1764:	8004                	.insn	2, 0x8004
    1766:	a402                	.insn	2, 0xa402
    1768:	0102                	.insn	2, 0x0102
    176a:	045c                	.insn	2, 0x045c
    176c:	02ac                	.insn	2, 0x02ac
    176e:	02f0                	.insn	2, 0x02f0
    1770:	5c01                	.insn	2, 0x5c01
    1772:	8004                	.insn	2, 0x8004
    1774:	02039403          	lh	s0,32(t2)
    1778:	9f30                	.insn	2, 0x9f30
    177a:	9404                	.insn	2, 0x9404
    177c:	0203ac03          	lw	s8,32(t2)
    1780:	9f31                	.insn	2, 0x9f31
    1782:	e004                	.insn	2, 0xe004
    1784:	0403f003          	.insn	4, 0x0403f003
    1788:	ff0a                	.insn	2, 0xff0a
    178a:	f0049f07          	.insn	4, 0xf0049f07
    178e:	01048403          	lb	s0,16(s1)
    1792:	045d                	.insn	2, 0x045d
    1794:	04a8                	.insn	2, 0x04a8
    1796:	04c8                	.insn	2, 0x04c8
    1798:	5801                	.insn	2, 0x5801
    179a:	cc04                	.insn	2, 0xcc04
    179c:	c004                	.insn	2, 0xc004
    179e:	0105                	.insn	2, 0x0105
    17a0:	0458                	.insn	2, 0x0458
    17a2:	05c8                	.insn	2, 0x05c8
    17a4:	06bc                	.insn	2, 0x06bc
    17a6:	5c01                	.insn	2, 0x5c01
    17a8:	cc04                	.insn	2, 0xcc04
    17aa:	d806                	.insn	2, 0xd806
    17ac:	0206                	.insn	2, 0x0206
    17ae:	9f30                	.insn	2, 0x9f30
    17b0:	e004                	.insn	2, 0xe004
    17b2:	f806                	.insn	2, 0xf806
    17b4:	0206                	.insn	2, 0x0206
    17b6:	9f30                	.insn	2, 0x9f30
    17b8:	8404                	.insn	2, 0x8404
    17ba:	02079007          	.insn	4, 0x02079007
    17be:	9f30                	.insn	2, 0x9f30
    17c0:	9804                	.insn	2, 0x9804
    17c2:	0407b007          	.insn	4, 0x0407b007
    17c6:	ff0a                	.insn	2, 0xff0a
    17c8:	b0049f07          	.insn	4, 0xb0049f07
    17cc:	0107f807          	.insn	4, 0x0107f807
    17d0:	0458                	.insn	2, 0x0458
    17d2:	07f8                	.insn	2, 0x07f8
    17d4:	07fc                	.insn	2, 0x07fc
    17d6:	3002                	.insn	2, 0x3002
    17d8:	049f 07fc 0888      	.insn	6, 0x088807fc049f
    17de:	5801                	.insn	2, 0x5801
    17e0:	8c04                	.insn	2, 0x8c04
    17e2:	a408                	.insn	2, 0xa408
    17e4:	0108                	.insn	2, 0x0108
    17e6:	0458                	.insn	2, 0x0458
    17e8:	08a4                	.insn	2, 0x08a4
    17ea:	08ac                	.insn	2, 0x08ac
    17ec:	3002                	.insn	2, 0x3002
    17ee:	049f 08ac 08b0      	.insn	6, 0x08b008ac049f
    17f4:	5c01                	.insn	2, 0x5c01
    17f6:	b004                	.insn	2, 0xb004
    17f8:	bc08                	.insn	2, 0xbc08
    17fa:	0108                	.insn	2, 0x0108
    17fc:	0458                	.insn	2, 0x0458
    17fe:	08cc                	.insn	2, 0x08cc
    1800:	08d0                	.insn	2, 0x08d0
    1802:	5d01                	.insn	2, 0x5d01
    1804:	d004                	.insn	2, 0xd004
    1806:	d808                	.insn	2, 0xd808
    1808:	0108                	.insn	2, 0x0108
    180a:	0058                	.insn	2, 0x0058
    180c:	5d59                	.insn	2, 0x5d59
    180e:	605d                	.insn	2, 0x605d
    1810:	6260                	.insn	2, 0x6260
    1812:	6362                	.insn	2, 0x6362
    1814:	79786463          	bltu	a6,s7,1f9c <exit-0xe184>
    1818:	0184                	.insn	2, 0x0184
    181a:	01a60187          	.insn	4, 0x01a60187
    181e:	01b701b7          	lui	gp,0x1b70
    1822:	01b9                	.insn	2, 0x01b9
    1824:	01ba                	.insn	2, 0x01ba
    1826:	01c5                	.insn	2, 0x01c5
    1828:	01e1                	.insn	2, 0x01e1
    182a:	01e301e3          	beq	t1,t5,202c <exit-0xe0f4>
    182e:	01e5                	.insn	2, 0x01e5
    1830:	01ee                	.insn	2, 0x01ee
    1832:	01f2                	.insn	2, 0x01f2
    1834:	01f2                	.insn	2, 0x01f2
    1836:	01f8                	.insn	2, 0x01f8
    1838:	01f9                	.insn	2, 0x01f9
    183a:	01fa                	.insn	2, 0x01fa
    183c:	0289                	.insn	2, 0x0289
    183e:	028e                	.insn	2, 0x028e
    1840:	029d                	.insn	2, 0x029d
    1842:	029e                	.insn	2, 0x029e
    1844:	02b302af          	.insn	4, 0x02b302af
    1848:	02cc                	.insn	2, 0x02cc
    184a:	02d402cf          	.insn	4, 0x02d402cf
    184e:	02d9                	.insn	2, 0x02d9
    1850:	02d9                	.insn	2, 0x02d9
    1852:	02dd02db          	.insn	4, 0x02dd02db
    1856:	02f702e3          	beq	a4,a5,207a <exit-0xe0a6>
    185a:	0392038f          	.insn	4, 0x0392038f
    185e:	0399                	.insn	2, 0x0399
    1860:	0399                	.insn	2, 0x0399
    1862:	03a1                	.insn	2, 0x03a1
    1864:	03a1                	.insn	2, 0x03a1
    1866:	03a2                	.insn	2, 0x03a2
    1868:	03a6                	.insn	2, 0x03a6
    186a:	03a9                	.insn	2, 0x03a9
    186c:	03a9                	.insn	2, 0x03a9
    186e:	03ad03ab          	.insn	4, 0x03ad03ab
    1872:	03ae                	.insn	2, 0x03ae
    1874:	7804                	.insn	2, 0x7804
    1876:	0180                	.insn	2, 0x0180
    1878:	5f01                	.insn	2, 0x5f01
    187a:	8004                	.insn	2, 0x8004
    187c:	8401                	.insn	2, 0x8401
    187e:	0e01                	.insn	2, 0x0e01
    1880:	007f ff11 ffff ffff 	.insn	10, 0xffffffffffffff11007f
    1888:	ffff 
    188a:	9f1a7fbf 98018404 	.insn	8, 0x980184049f1a7fbf
    1892:	1501                	.insn	2, 0x1501
    1894:	007f 2531 ff10 ffff 	.insn	10, 0xffffffffff102531007f
    189c:	ffff 
    189e:	ffff                	.insn	2, 0xffff
    18a0:	7fdf 7f1a 3100      	.insn	6, 0x31007f1a7fdf
    18a6:	211a                	.insn	2, 0x211a
    18a8:	049f 0198 01a4      	.insn	6, 0x01a40198049f
    18ae:	10007d13          	andi	s10,zero,256
    18b2:	ffff                	.insn	2, 0xffff
    18b4:	ffff                	.insn	2, 0xffff
    18b6:	ffff                	.insn	2, 0xffff
    18b8:	1a7fdfff 1a31007f 	.insn	20, 0xff10007d1101a801a4049f211a31007f1a7fdfff
    18c0:	a4049f21 1101a801 
    18c8:	ff10007d 
    18cc:	ffff                	.insn	2, 0xffff
    18ce:	ffff                	.insn	2, 0xffff
    18d0:	ffff                	.insn	2, 0xffff
    18d2:	7fdf 7f1a 2100      	.insn	6, 0x21007f1a7fdf
    18d8:	049f 01f8 01fc      	.insn	6, 0x01fc01f8049f
    18de:	5f01                	.insn	2, 0x5f01
    18e0:	9404                	.insn	2, 0x9404
    18e2:	9c02                	.insn	2, 0x9c02
    18e4:	0102                	.insn	2, 0x0102
    18e6:	045f 038c 0394      	.insn	6, 0x0394038c045f
    18ec:	5e01                	.insn	2, 0x5e01
    18ee:	9404                	.insn	2, 0x9404
    18f0:	0e03a003          	lw	zero,224(t2)
    18f4:	007e                	.insn	2, 0x007e
    18f6:	ff11                	.insn	2, 0xff11
    18f8:	ffff                	.insn	2, 0xffff
    18fa:	ffff                	.insn	2, 0xffff
    18fc:	ffff                	.insn	2, 0xffff
    18fe:	9f1a7fbf b403a804 	.insn	8, 0xb403a8049f1a7fbf
    1906:	045f0103          	lb	sp,69(t5)
    190a:	03f0                	.insn	2, 0x03f0
    190c:	03fc                	.insn	2, 0x03fc
    190e:	7f08                	.insn	2, 0x7f08
    1910:	7e00                	.insn	2, 0x7e00
    1912:	2200                	.insn	2, 0x2200
    1914:	2531                	.insn	2, 0x2531
    1916:	049f 03fc 0484      	.insn	6, 0x048403fc049f
    191c:	7e05                	.insn	2, 0x7e05
    191e:	3100                	.insn	2, 0x3100
    1920:	9f25                	.insn	2, 0x9f25
    1922:	9c04                	.insn	2, 0x9c04
    1924:	a404                	.insn	2, 0xa404
    1926:	0104                	.insn	2, 0x0104
    1928:	045f 04a4 04bc      	.insn	6, 0x04bc04a4045f
    192e:	7f0e                	.insn	2, 0x7f0e
    1930:	1100                	.insn	2, 0x1100
    1932:	ffff                	.insn	2, 0xffff
    1934:	ffff                	.insn	2, 0xffff
    1936:	ffff                	.insn	2, 0xffff
    1938:	1a7fbfff 04c4049f 	.insn	16, 0xf404e0045f0104c804c4049f1a7fbfff
    1940:	5f0104c8 f404e004 
    1948:	0104                	.insn	2, 0x0104
    194a:	045f 05a4 05a8      	.insn	6, 0x05a805a4045f
    1950:	5f01                	.insn	2, 0x5f01
    1952:	dc04                	.insn	2, 0xdc04
    1954:	e805                	.insn	2, 0xe805
    1956:	0105                	.insn	2, 0x0105
    1958:	045f 06d0 06d8      	.insn	6, 0x06d806d0045f
    195e:	5e01                	.insn	2, 0x5e01
    1960:	e804                	.insn	2, 0xe804
    1962:	f406                	.insn	2, 0xf406
    1964:	0106                	.insn	2, 0x0106
    1966:	045d                	.insn	2, 0x045d
    1968:	06f4                	.insn	2, 0x06f4
    196a:	06f8                	.insn	2, 0x06f8
    196c:	5f01                	.insn	2, 0x5f01
    196e:	8404                	.insn	2, 0x8404
    1970:	01079007          	.insn	4, 0x01079007
    1974:	045d                	.insn	2, 0x045d
    1976:	07b4                	.insn	2, 0x07b4
    1978:	07f0                	.insn	2, 0x07f0
    197a:	6201                	.insn	2, 0x6201
    197c:	f804                	.insn	2, 0xf804
    197e:	0107fc07          	.insn	4, 0x0107fc07
    1982:	045f 07fc 08a0      	.insn	6, 0x08a007fc045f
    1988:	6201                	.insn	2, 0x6201
    198a:	a004                	.insn	2, 0xa004
    198c:	a408                	.insn	2, 0xa408
    198e:	0108                	.insn	2, 0x0108
    1990:	045f 08b0 08b4      	.insn	6, 0x08b408b0045f
    1996:	5e01                	.insn	2, 0x5e01
    1998:	b404                	.insn	2, 0xb404
    199a:	bc08                	.insn	2, 0xbc08
    199c:	0108                	.insn	2, 0x0108
    199e:	045f 08cc 08d0      	.insn	6, 0x08d008cc045f
    19a4:	7f08                	.insn	2, 0x7f08
    19a6:	7e00                	.insn	2, 0x7e00
    19a8:	2200                	.insn	2, 0x2200
    19aa:	2531                	.insn	2, 0x2531
    19ac:	009f 01c7 01cf      	.insn	6, 0x01cf01c7009f
    19b2:	01d101cf          	.insn	4, 0x01d101cf
    19b6:	c404                	.insn	2, 0xc404
    19b8:	0803cc03          	lbu	s8,128(t2)
    19bc:	0078                	.insn	2, 0x0078
    19be:	007a                	.insn	2, 0x007a
    19c0:	a921                	.insn	2, 0xa921
    19c2:	cc049f33          	.insn	4, 0xcc049f33
    19c6:	0103e003          	lwu	zero,16(t2)
    19ca:	005a                	.insn	2, 0x005a
    19cc:	5a56                	.insn	2, 0x5a56
    19ce:	6765                	.insn	2, 0x6765
    19d0:	746c                	.insn	2, 0x746c
    19d2:	8101817b          	.insn	4, 0x8101817b
    19d6:	8501                	.insn	2, 0x8501
    19d8:	8701                	.insn	2, 0x8701
    19da:	8901                	.insn	2, 0x8901
    19dc:	8b01                	.insn	2, 0x8b01
    19de:	8f01                	.insn	2, 0x8f01
    19e0:	9001                	.insn	2, 0x9001
    19e2:	9801                	.insn	2, 0x9801
    19e4:	a501                	.insn	2, 0xa501
    19e6:	0403a603          	lw	a2,64(t2)
    19ea:	7870                	.insn	2, 0x7870
    19ec:	5d01                	.insn	2, 0x5d01
    19ee:	ac04                	.insn	2, 0xac04
    19f0:	b401                	.insn	2, 0xb401
    19f2:	0101                	.insn	2, 0x0101
    19f4:	045d                	.insn	2, 0x045d
    19f6:	01d0                	.insn	2, 0x01d0
    19f8:	01e8                	.insn	2, 0x01e8
    19fa:	5d01                	.insn	2, 0x5d01
    19fc:	8004                	.insn	2, 0x8004
    19fe:	8c02                	.insn	2, 0x8c02
    1a00:	0402                	.insn	2, 0x0402
    1a02:	007d                	.insn	2, 0x007d
    1a04:	9f1f 8c04 9402      	.insn	6, 0x94028c049f1f
    1a0a:	0102                	.insn	2, 0x0102
    1a0c:	045d                	.insn	2, 0x045d
    1a0e:	029c                	.insn	2, 0x029c
    1a10:	02a4                	.insn	2, 0x02a4
    1a12:	5d01                	.insn	2, 0x5d01
    1a14:	ac04                	.insn	2, 0xac04
    1a16:	c002                	.insn	2, 0xc002
    1a18:	0402                	.insn	2, 0x0402
    1a1a:	007d                	.insn	2, 0x007d
    1a1c:	9f1f c404 dc02      	.insn	6, 0xdc02c4049f1f
    1a22:	0102                	.insn	2, 0x0102
    1a24:	045d                	.insn	2, 0x045d
    1a26:	08ac                	.insn	2, 0x08ac
    1a28:	08b0                	.insn	2, 0x08b0
    1a2a:	7d04                	.insn	2, 0x7d04
    1a2c:	1f00                	.insn	2, 0x1f00
    1a2e:	009f 0286 028a      	.insn	6, 0x028a0286009f
    1a34:	028e                	.insn	2, 0x028e
    1a36:	0299                	.insn	2, 0x0299
    1a38:	02a5                	.insn	2, 0x02a5
    1a3a:	02ac                	.insn	2, 0x02ac
    1a3c:	02ac                	.insn	2, 0x02ac
    1a3e:	02b0                	.insn	2, 0x02b0
    1a40:	02b402b3          	.insn	4, 0x02b402b3
    1a44:	02b6                	.insn	2, 0x02b6
    1a46:	02ba02b7          	lui	t0,0x2ba0
    1a4a:	02c2                	.insn	2, 0x02c2
    1a4c:	d804                	.insn	2, 0xd804
    1a4e:	e004                	.insn	2, 0xe004
    1a50:	0104                	.insn	2, 0x0104
    1a52:	045d                	.insn	2, 0x045d
    1a54:	04f4                	.insn	2, 0x04f4
    1a56:	0594                	.insn	2, 0x0594
    1a58:	5d01                	.insn	2, 0x5d01
    1a5a:	c804                	.insn	2, 0xc804
    1a5c:	d405                	.insn	2, 0xd405
    1a5e:	0405                	.insn	2, 0x0405
    1a60:	007d                	.insn	2, 0x007d
    1a62:	9f1f d404 dc05      	.insn	6, 0xdc05d4049f1f
    1a68:	0105                	.insn	2, 0x0105
    1a6a:	045d                	.insn	2, 0x045d
    1a6c:	05e8                	.insn	2, 0x05e8
    1a6e:	05f0                	.insn	2, 0x05f0
    1a70:	5d01                	.insn	2, 0x5d01
    1a72:	f804                	.insn	2, 0xf804
    1a74:	fc05                	.insn	2, 0xfc05
    1a76:	0405                	.insn	2, 0x0405
    1a78:	007d                	.insn	2, 0x007d
    1a7a:	9f1f 9004 a806      	.insn	6, 0xa80690049f1f
    1a80:	0106                	.insn	2, 0x0106
    1a82:	005d                	.insn	2, 0x005d
    1a84:	0382                	.insn	2, 0x0382
    1a86:	038a                	.insn	2, 0x038a
    1a88:	0399038b          	.insn	4, 0x0399038b
    1a8c:	039e                	.insn	2, 0x039e
    1a8e:	03a2                	.insn	2, 0x03a2
    1a90:	cc04                	.insn	2, 0xcc04
    1a92:	0107dc07          	.insn	4, 0x0107dc07
    1a96:	045a                	.insn	2, 0x045a
    1a98:	07e0                	.insn	2, 0x07e0
    1a9a:	07fc                	.insn	2, 0x07fc
    1a9c:	5a01                	.insn	2, 0x5a01
    1a9e:	8c04                	.insn	2, 0x8c04
    1aa0:	a408                	.insn	2, 0xa408
    1aa2:	0108                	.insn	2, 0x0108
    1aa4:	005a                	.insn	2, 0x005a
    1aa6:	007a                	.insn	2, 0x007a
    1aa8:	0000                	.insn	2, 0x0000
    1aaa:	0005                	.insn	2, 0x0005
    1aac:	0008                	.insn	2, 0x0008
    1aae:	0000                	.insn	2, 0x0000
    1ab0:	0000                	.insn	2, 0x0000
    1ab2:	1700                	.insn	2, 0x1700
    1ab4:	00363617          	auipc	a2,0x363
    1ab8:	0004                	.insn	2, 0x0004
    1aba:	0130                	.insn	2, 0x0130
    1abc:	045a                	.insn	2, 0x045a
    1abe:	7030                	.insn	2, 0x7030
    1ac0:	a304                	.insn	2, 0xa304
    1ac2:	5a01                	.insn	2, 0x5a01
    1ac4:	049f 8070 0101      	.insn	6, 0x01018070049f
    1aca:	005a                	.insn	2, 0x005a
    1acc:	2c04230f          	.insn	4, 0x2c04230f
    1ad0:	0644                	.insn	2, 0x0644
    1ad2:	0079                	.insn	2, 0x0079
    1ad4:	ff08                	.insn	2, 0xff08
    1ad6:	9f1a                	.insn	2, 0x9f1a
    1ad8:	1a00                	.insn	2, 0x1a00
    1ada:	503c042b          	.insn	4, 0x503c042b
    1ade:	5f01                	.insn	2, 0x5f01
    1ae0:	1e00                	.insn	2, 0x1e00
    1ae2:	042a                	.insn	2, 0x042a
    1ae4:	483c                	.insn	2, 0x483c
    1ae6:	5801                	.insn	2, 0x5801
    1ae8:	3100                	.insn	2, 0x3100
    1aea:	3535                	.insn	2, 0x3535
    1aec:	0436                	.insn	2, 0x0436
    1aee:	6460                	.insn	2, 0x6460
    1af0:	7f08                	.insn	2, 0x7f08
    1af2:	7a00                	.insn	2, 0x7a00
    1af4:	2100                	.insn	2, 0x2100
    1af6:	33a9                	.insn	2, 0x33a9
    1af8:	049f 7064 5a01      	.insn	6, 0x5a017064049f
    1afe:	0b00                	.insn	2, 0x0b00
    1b00:	17170f0f          	.insn	4, 0x17170f0f
    1b04:	2c140423          	sb	ra,712(s0)
    1b08:	5a01                	.insn	2, 0x5a01
    1b0a:	2c04                	.insn	2, 0x2c04
    1b0c:	0430                	.insn	2, 0x0430
    1b0e:	007a                	.insn	2, 0x007a
    1b10:	9f19                	.insn	2, 0x9f19
    1b12:	3004                	.insn	2, 0x3004
    1b14:	0544                	.insn	2, 0x0544
    1b16:	195a01a3          	sb	s5,387(s4)
    1b1a:	009f 2218 3404      	.insn	6, 0x34042218009f
    1b20:	0140                	.insn	2, 0x0140
    1b22:	005a                	.insn	2, 0x005a
    1b24:	00000153          	.insn	4, 0x0153
    1b28:	0005                	.insn	2, 0x0005
    1b2a:	0008                	.insn	2, 0x0008
    1b2c:	0000                	.insn	2, 0x0000
    1b2e:	0000                	.insn	2, 0x0000
    1b30:	2900                	.insn	2, 0x2900
    1b32:	4029                	.insn	2, 0x4029
    1b34:	4d40                	.insn	2, 0x4d40
    1b36:	574d                	.insn	2, 0x574d
    1b38:	00040057          	.insn	4, 0x00040057
    1b3c:	0138                	.insn	2, 0x0138
    1b3e:	045a                	.insn	2, 0x045a
    1b40:	6438                	.insn	2, 0x6438
    1b42:	a306                	.insn	2, 0xa306
    1b44:	330aa503          	lw	a0,816(s5)
    1b48:	049f 7064 5a01      	.insn	6, 0x5a017064049f
    1b4e:	7004                	.insn	2, 0x7004
    1b50:	0188                	.insn	2, 0x0188
    1b52:	a306                	.insn	2, 0xa306
    1b54:	330aa503          	lw	a0,816(s5)
    1b58:	049f 0188 01a4      	.insn	6, 0x01a40188049f
    1b5e:	5a01                	.insn	2, 0x5a01
    1b60:	0200                	.insn	2, 0x0200
    1b62:	4029                	.insn	2, 0x4029
    1b64:	5e5e                	.insn	2, 0x5e5e
    1b66:	0400                	.insn	2, 0x0400
    1b68:	3800                	.insn	2, 0x3800
    1b6a:	3002                	.insn	2, 0x3002
    1b6c:	049f 9064 0201      	.insn	6, 0x02019064049f
    1b72:	9f30                	.insn	2, 0x9f30
    1b74:	9004                	.insn	2, 0x9004
    1b76:	a401                	.insn	2, 0xa401
    1b78:	0201                	.insn	2, 0x0201
    1b7a:	9f40                	.insn	2, 0x9f40
    1b7c:	1b00                	.insn	2, 0x1b00
    1b7e:	0400403f 79065c2c 	.insn	8, 0x79065c2c0400403f
    1b86:	0800                	.insn	2, 0x0800
    1b88:	049f1aff 0601a464 	.insn	12, 0xff0800790601a464049f1aff
    1b90:	ff080079 
    1b94:	9f1a                	.insn	2, 0x9f1a
    1b96:	1a00                	.insn	2, 0x1a00
    1b98:	2525                	.insn	2, 0x2525
    1b9a:	4029                	.insn	2, 0x4029
    1b9c:	574e                	.insn	2, 0x574e
    1b9e:	04005b5b          	.insn	4, 0x04005b5b
    1ba2:	3428                	.insn	2, 0x3428
    1ba4:	5f01                	.insn	2, 0x5f01
    1ba6:	3404                	.insn	2, 0x3404
    1ba8:	0438                	.insn	2, 0x0438
    1baa:	807f 9f79 6404 0173 	.insn	10, 0x045f017364049f79807f
    1bb2:	045f 
    1bb4:	0188                	.insn	2, 0x0188
    1bb6:	018c                	.insn	2, 0x018c
    1bb8:	5f01                	.insn	2, 0x5f01
    1bba:	8c04                	.insn	2, 0x8c04
    1bbc:	a401                	.insn	2, 0xa401
    1bbe:	0801                	.insn	2, 0x0801
    1bc0:	007a                	.insn	2, 0x007a
    1bc2:	ff082547          	.insn	4, 0xff082547
    1bc6:	9f1a                	.insn	2, 0x9f1a
    1bc8:	1900                	.insn	2, 0x1900
    1bca:	2828                	.insn	2, 0x2828
    1bcc:	4029                	.insn	2, 0x4029
    1bce:	5754                	.insn	2, 0x5754
    1bd0:	04006363          	bltu	zero,zero,1c16 <exit-0xe50a>
    1bd4:	3828                	.insn	2, 0x3828
    1bd6:	5801                	.insn	2, 0x5801
    1bd8:	3804                	.insn	2, 0x3804
    1bda:	0938                	.insn	2, 0x0938
    1bdc:	007a                	.insn	2, 0x007a
    1bde:	2908                	.insn	2, 0x2908
    1be0:	0824                	.insn	2, 0x0824
    1be2:	2529                	.insn	2, 0x2529
    1be4:	049f fc64 0100      	.insn	6, 0x0100fc64049f
    1bea:	0458                	.insn	2, 0x0458
    1bec:	0188                	.insn	2, 0x0188
    1bee:	0198                	.insn	2, 0x0198
    1bf0:	5801                	.insn	2, 0x5801
    1bf2:	9804                	.insn	2, 0x9804
    1bf4:	a401                	.insn	2, 0xa401
    1bf6:	0901                	.insn	2, 0x0901
    1bf8:	007a                	.insn	2, 0x007a
    1bfa:	2908                	.insn	2, 0x2908
    1bfc:	0824                	.insn	2, 0x0824
    1bfe:	2529                	.insn	2, 0x2529
    1c00:	009f 3f22 0040      	.insn	6, 0x00403f22009f
    1c06:	2c04                	.insn	2, 0x2c04
    1c08:	065c                	.insn	2, 0x065c
    1c0a:	0079                	.insn	2, 0x0079
    1c0c:	ff08                	.insn	2, 0xff08
    1c0e:	9f1a                	.insn	2, 0x9f1a
    1c10:	6404                	.insn	2, 0x6404
    1c12:	01a4                	.insn	2, 0x01a4
    1c14:	7906                	.insn	2, 0x7906
    1c16:	0800                	.insn	2, 0x0800
    1c18:	009f1aff 57563125 	.insn	12, 0x3404005957563125009f1aff
    1c20:	34040059 
    1c24:	0144                	.insn	2, 0x0144
    1c26:	045f 0184 0188      	.insn	6, 0x01880184045f
    1c2c:	5f01                	.insn	2, 0x5f01
    1c2e:	8804                	.insn	2, 0x8804
    1c30:	a401                	.insn	2, 0xa401
    1c32:	0401                	.insn	2, 0x0401
    1c34:	ff0a                	.insn	2, 0xff0a
    1c36:	23009f07          	.insn	4, 0x23009f07
    1c3a:	4030                	.insn	2, 0x4030
    1c3c:	6868                	.insn	2, 0x6868
    1c3e:	0400                	.insn	2, 0x0400
    1c40:	3c2c                	.insn	2, 0x3c2c
    1c42:	5801                	.insn	2, 0x5801
    1c44:	6404                	.insn	2, 0x6404
    1c46:	01a0                	.insn	2, 0x01a0
    1c48:	5801                	.insn	2, 0x5801
    1c4a:	a004                	.insn	2, 0xa004
    1c4c:	a401                	.insn	2, 0xa401
    1c4e:	0b01                	.insn	2, 0x0b01
    1c50:	007a                	.insn	2, 0x007a
    1c52:	2908                	.insn	2, 0x2908
    1c54:	0824                	.insn	2, 0x0824
    1c56:	2529                	.insn	2, 0x2529
    1c58:	244d                	.insn	2, 0x244d
    1c5a:	009f 3e37 403e      	.insn	6, 0x403e3e37009f
    1c60:	5404                	.insn	2, 0x5404
    1c62:	0858                	.insn	2, 0x0858
    1c64:	007f 007a a921 9f3a 	.insn	10, 0x58049f3aa921007a007f
    1c6c:	5804 
    1c6e:	0164                	.insn	2, 0x0164
    1c70:	005a                	.insn	2, 0x005a
    1c72:	574e                	.insn	2, 0x574e
    1c74:	7404                	.insn	2, 0x7404
    1c76:	0188                	.insn	2, 0x0188
    1c78:	5a01                	.insn	2, 0x5a01
    1c7a:	1000                	.insn	2, 0x1000
    1c7c:	0002                	.insn	2, 0x0002
    1c7e:	0500                	.insn	2, 0x0500
    1c80:	0800                	.insn	2, 0x0800
    1c82:	0000                	.insn	2, 0x0000
    1c84:	0000                	.insn	2, 0x0000
    1c86:	0000                	.insn	2, 0x0000
    1c88:	1919                	.insn	2, 0x1919
    1c8a:	0400                	.insn	2, 0x0400
    1c8c:	1c00                	.insn	2, 0x1c00
    1c8e:	5a01                	.insn	2, 0x5a01
    1c90:	1c04                	.insn	2, 0x1c04
    1c92:	01f4                	.insn	2, 0x01f4
    1c94:	a306                	.insn	2, 0xa306
    1c96:	330aa503          	lw	a0,816(s5)
    1c9a:	009f 4102 4641      	.insn	6, 0x46414102009f
    1ca0:	837b6957          	.insn	4, 0x837b6957
    1ca4:	8601                	.insn	2, 0x8601
    1ca6:	0001                	.insn	2, 0x0001
    1ca8:	0004                	.insn	2, 0x0004
    1caa:	0264                	.insn	2, 0x0264
    1cac:	9f30                	.insn	2, 0x9f30
    1cae:	6404                	.insn	2, 0x6404
    1cb0:	0268                	.insn	2, 0x0268
    1cb2:	9f31                	.insn	2, 0x9f31
    1cb4:	9404                	.insn	2, 0x9404
    1cb6:	b401                	.insn	2, 0xb401
    1cb8:	0201                	.insn	2, 0x0201
    1cba:	9f30                	.insn	2, 0x9f30
    1cbc:	c804                	.insn	2, 0xc804
    1cbe:	e401                	.insn	2, 0xe401
    1cc0:	0201                	.insn	2, 0x0201
    1cc2:	9f30                	.insn	2, 0x9f30
    1cc4:	ec04                	.insn	2, 0xec04
    1cc6:	f401                	.insn	2, 0xf401
    1cc8:	0201                	.insn	2, 0x0201
    1cca:	9f30                	.insn	2, 0x9f30
    1ccc:	1900                	.insn	2, 0x1900
    1cce:	7b69                	.insn	2, 0x7b69
    1cd0:	7e7e                	.insn	2, 0x7e7e
    1cd2:	0181                	.insn	2, 0x0181
    1cd4:	0181                	.insn	2, 0x0181
    1cd6:	0400                	.insn	2, 0x0400
    1cd8:	b41c                	.insn	2, 0xb41c
    1cda:	0601                	.insn	2, 0x0601
    1cdc:	007a                	.insn	2, 0x007a
    1cde:	ff08                	.insn	2, 0xff08
    1ce0:	9f1a                	.insn	2, 0x9f1a
    1ce2:	c804                	.insn	2, 0xc804
    1ce4:	d001                	.insn	2, 0xd001
    1ce6:	0601                	.insn	2, 0x0601
    1ce8:	007a                	.insn	2, 0x007a
    1cea:	ff08                	.insn	2, 0xff08
    1cec:	9f1a                	.insn	2, 0x9f1a
    1cee:	d004                	.insn	2, 0xd004
    1cf0:	dc01                	.insn	2, 0xdc01
    1cf2:	0201                	.insn	2, 0x0201
    1cf4:	9f30                	.insn	2, 0x9f30
    1cf6:	dc04                	.insn	2, 0xdc04
    1cf8:	f401                	.insn	2, 0xf401
    1cfa:	0601                	.insn	2, 0x0601
    1cfc:	007a                	.insn	2, 0x007a
    1cfe:	ff08                	.insn	2, 0xff08
    1d00:	9f1a                	.insn	2, 0x9f1a
    1d02:	1800                	.insn	2, 0x1800
    1d04:	2626                	.insn	2, 0x2626
    1d06:	572e                	.insn	2, 0x572e
    1d08:	6060                	.insn	2, 0x6060
    1d0a:	7b69                	.insn	2, 0x7b69
    1d0c:	817d                	.insn	2, 0x817d
    1d0e:	8201                	.insn	2, 0x8201
    1d10:	8601                	.insn	2, 0x8601
    1d12:	8701                	.insn	2, 0x8701
    1d14:	0401                	.insn	2, 0x0401
    1d16:	2818                	.insn	2, 0x2818
    1d18:	5e01                	.insn	2, 0x5e01
    1d1a:	2804                	.insn	2, 0x2804
    1d1c:	0454                	.insn	2, 0x0454
    1d1e:	807e                	.insn	2, 0x807e
    1d20:	94049f07          	.insn	4, 0x94049f07
    1d24:	a801                	.insn	2, 0xa801
    1d26:	0401                	.insn	2, 0x0401
    1d28:	807e                	.insn	2, 0x807e
    1d2a:	a8049f07          	.insn	4, 0xa8049f07
    1d2e:	b401                	.insn	2, 0xb401
    1d30:	0101                	.insn	2, 0x0101
    1d32:	045e                	.insn	2, 0x045e
    1d34:	01c8                	.insn	2, 0x01c8
    1d36:	01cc                	.insn	2, 0x01cc
    1d38:	5e01                	.insn	2, 0x5e01
    1d3a:	dc04                	.insn	2, 0xdc04
    1d3c:	e001                	.insn	2, 0xe001
    1d3e:	0401                	.insn	2, 0x0401
    1d40:	807e                	.insn	2, 0x807e
    1d42:	ec049f07          	.insn	4, 0xec049f07
    1d46:	f001                	.insn	2, 0xf001
    1d48:	0401                	.insn	2, 0x0401
    1d4a:	807e                	.insn	2, 0x807e
    1d4c:	17009f07          	.insn	4, 0x17009f07
    1d50:	1e1e                	.insn	2, 0x1e1e
    1d52:	5730                	.insn	2, 0x5730
    1d54:	5a59                	.insn	2, 0x5a59
    1d56:	6060                	.insn	2, 0x6060
    1d58:	7b69                	.insn	2, 0x7b69
    1d5a:	0180                	.insn	2, 0x0180
    1d5c:	0181                	.insn	2, 0x0181
    1d5e:	01860183          	lb	gp,24(a2) # 364acc <__BSS_END__+0x34fadc>
    1d62:	0400                	.insn	2, 0x0400
    1d64:	2018                	.insn	2, 0x2018
    1d66:	5f01                	.insn	2, 0x5f01
    1d68:	2004                	.insn	2, 0x2004
    1d6a:	015c                	.insn	2, 0x015c
    1d6c:	045d                	.insn	2, 0x045d
    1d6e:	0194                	.insn	2, 0x0194
    1d70:	019c                	.insn	2, 0x019c
    1d72:	5d01                	.insn	2, 0x5d01
    1d74:	a404                	.insn	2, 0xa404
    1d76:	a801                	.insn	2, 0xa801
    1d78:	0101                	.insn	2, 0x0101
    1d7a:	045f 01a8 01b4      	.insn	6, 0x01b401a8045f
    1d80:	5d01                	.insn	2, 0x5d01
    1d82:	c804                	.insn	2, 0xc804
    1d84:	d801                	.insn	2, 0xd801
    1d86:	0101                	.insn	2, 0x0101
    1d88:	045d                	.insn	2, 0x045d
    1d8a:	01dc                	.insn	2, 0x01dc
    1d8c:	01e4                	.insn	2, 0x01e4
    1d8e:	5d01                	.insn	2, 0x5d01
    1d90:	ec04                	.insn	2, 0xec04
    1d92:	f401                	.insn	2, 0xf401
    1d94:	0101                	.insn	2, 0x0101
    1d96:	005d                	.insn	2, 0x005d
    1d98:	6924                	.insn	2, 0x6924
    1d9a:	817e7e7b          	.insn	4, 0x817e7e7b
    1d9e:	8101                	.insn	2, 0x8101
    1da0:	0001                	.insn	2, 0x0001
    1da2:	2004                	.insn	2, 0x2004
    1da4:	01b4                	.insn	2, 0x01b4
    1da6:	7a06                	.insn	2, 0x7a06
    1da8:	0800                	.insn	2, 0x0800
    1daa:	049f1aff 01d001c8 	.insn	12, 0x08007a0601d001c8049f1aff
    1db2:	08007a06 
    1db6:	049f1aff 01dc01d0 	.insn	12, 0x049f300201dc01d0049f1aff
    1dbe:	049f3002 
    1dc2:	01dc                	.insn	2, 0x01dc
    1dc4:	01f4                	.insn	2, 0x01f4
    1dc6:	7a06                	.insn	2, 0x7a06
    1dc8:	0800                	.insn	2, 0x0800
    1dca:	009f1aff 56552e26 	.insn	12, 0x6966605756552e26009f1aff
    1dd2:	69666057 
    1dd6:	817c                	.insn	2, 0x817c
    1dd8:	8101                	.insn	2, 0x8101
    1dda:	8201                	.insn	2, 0x8201
    1ddc:	8301                	.insn	2, 0x8301
    1dde:	8701                	.insn	2, 0x8701
    1de0:	0401                	.insn	2, 0x0401
    1de2:	5428                	.insn	2, 0x5428
    1de4:	5e01                	.insn	2, 0x5e01
    1de6:	8c04                	.insn	2, 0x8c04
    1de8:	8c01                	.insn	2, 0x8c01
    1dea:	0101                	.insn	2, 0x0101
    1dec:	045e                	.insn	2, 0x045e
    1dee:	0194                	.insn	2, 0x0194
    1df0:	01a8                	.insn	2, 0x01a8
    1df2:	5e01                	.insn	2, 0x5e01
    1df4:	ac04                	.insn	2, 0xac04
    1df6:	b401                	.insn	2, 0xb401
    1df8:	0201                	.insn	2, 0x0201
    1dfa:	9f30                	.insn	2, 0x9f30
    1dfc:	c804                	.insn	2, 0xc804
    1dfe:	dc01                	.insn	2, 0xdc01
    1e00:	0301                	.insn	2, 0x0301
    1e02:	ff08                	.insn	2, 0xff08
    1e04:	049f 01dc 01e0      	.insn	6, 0x01e001dc049f
    1e0a:	5e01                	.insn	2, 0x5e01
    1e0c:	e404                	.insn	2, 0xe404
    1e0e:	f001                	.insn	2, 0xf001
    1e10:	0101                	.insn	2, 0x0101
    1e12:	005e                	.insn	2, 0x005e
    1e14:	5653534f          	.insn	4, 0x5653534f
    1e18:	7b69605b          	.insn	4, 0x7b69605b
    1e1c:	01850183          	lb	gp,24(a0)
    1e20:	0185                	.insn	2, 0x0185
    1e22:	0186                	.insn	2, 0x0186
    1e24:	8004                	.insn	2, 0x8004
    1e26:	8801                	.insn	2, 0x8801
    1e28:	0101                	.insn	2, 0x0101
    1e2a:	045f 0188 018c      	.insn	6, 0x018c0188045f
    1e30:	7f09                	.insn	2, 0x7f09
    1e32:	1100                	.insn	2, 0x1100
    1e34:	ffff                	.insn	2, 0xffff
    1e36:	9f1a5fff a801a404 	.insn	20, 0xe4045d0101c801b4045f0101a801a4049f1a5fff
    1e3e:	045f0101 01c801b4 
    1e46:	e4045d01 
    1e4a:	e801                	.insn	2, 0xe801
    1e4c:	0101                	.insn	2, 0x0101
    1e4e:	045f 01e8 01ec      	.insn	6, 0x01ec01e8045f
    1e54:	5d01                	.insn	2, 0x5d01
    1e56:	3200                	.insn	2, 0x3200
    1e58:	0446                	.insn	2, 0x0446
    1e5a:	6864                	.insn	2, 0x6864
    1e5c:	3102                	.insn	2, 0x3102
    1e5e:	009f 4639 6404      	.insn	6, 0x64044639009f
    1e64:	0668                	.insn	2, 0x0668
    1e66:	007a                	.insn	2, 0x007a
    1e68:	ff08                	.insn	2, 0xff08
    1e6a:	9f1a                	.insn	2, 0x9f1a
    1e6c:	3a00                	.insn	2, 0x3a00
    1e6e:	0446                	.insn	2, 0x0446
    1e70:	6864                	.insn	2, 0x6864
    1e72:	3002                	.insn	2, 0x3002
    1e74:	009f 4645 6404      	.insn	6, 0x64044645009f
    1e7a:	0768                	.insn	2, 0x0768
    1e7c:	007f 2431 0423 009f 	.insn	10, 0x7a79009f04232431007f
    1e84:	7a79 
    1e86:	c004                	.insn	2, 0xc004
    1e88:	c401                	.insn	2, 0xc401
    1e8a:	0201                	.insn	2, 0x0201
    1e8c:	f05a                	.insn	2, 0xf05a
    1e8e:	6600                	.insn	2, 0x6600
    1e90:	0000                	.insn	2, 0x0000
    1e92:	0500                	.insn	2, 0x0500
    1e94:	0800                	.insn	2, 0x0800
    1e96:	0000                	.insn	2, 0x0000
    1e98:	0000                	.insn	2, 0x0000
    1e9a:	0000                	.insn	2, 0x0000
    1e9c:	0c0c                	.insn	2, 0x0c0c
    1e9e:	14141313          	.insn	4, 0x14141313
    1ea2:	0400                	.insn	2, 0x0400
    1ea4:	1800                	.insn	2, 0x1800
    1ea6:	5a01                	.insn	2, 0x5a01
    1ea8:	1804                	.insn	2, 0x1804
    1eaa:	0438                	.insn	2, 0x0438
    1eac:	9f5a01a3          	sb	s5,-1565(s4)
    1eb0:	3804                	.insn	2, 0x3804
    1eb2:	013c                	.insn	2, 0x013c
    1eb4:	045a                	.insn	2, 0x045a
    1eb6:	403c                	.insn	2, 0x403c
    1eb8:	a304                	.insn	2, 0xa304
    1eba:	5a01                	.insn	2, 0x5a01
    1ebc:	009f 0c04 130c      	.insn	6, 0x130c0c04009f
    1ec2:	00141413          	slli	s0,s0,0x1
    1ec6:	0004                	.insn	2, 0x0004
    1ec8:	0118                	.insn	2, 0x0118
    1eca:	045a                	.insn	2, 0x045a
    1ecc:	3818                	.insn	2, 0x3818
    1ece:	a304                	.insn	2, 0xa304
    1ed0:	5a01                	.insn	2, 0x5a01
    1ed2:	049f 3c38 5a01      	.insn	6, 0x5a013c38049f
    1ed8:	3c04                	.insn	2, 0x3c04
    1eda:	0440                	.insn	2, 0x0440
    1edc:	9f5a01a3          	sb	s5,-1565(s4)
    1ee0:	0700                	.insn	2, 0x0700
    1ee2:	0909                	.insn	2, 0x0909
    1ee4:	1311                	.insn	2, 0x1311
    1ee6:	0400                	.insn	2, 0x0400
    1ee8:	0400                	.insn	2, 0x0400
    1eea:	9f380803          	lb	a6,-1549(a6)
    1eee:	0404                	.insn	2, 0x0404
    1ef0:	0124                	.insn	2, 0x0124
    1ef2:	045f 4038 5f01      	.insn	6, 0x5f014038045f
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
  d6:	8500                	.insn	2, 0x8500
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
  f2:	a004                	.insn	2, 0xa004
  f4:	a404                	.insn	2, 0xa404
  f6:	0404                	.insn	2, 0x0404
  f8:	04b4                	.insn	2, 0x04b4
  fa:	04b8                	.insn	2, 0x04b8
  fc:	0400                	.insn	2, 0x0400
  fe:	5c58                	.insn	2, 0x5c58
 100:	8004                	.insn	2, 0x8004
 102:	a004                	.insn	2, 0xa004
 104:	0004                	.insn	2, 0x0004
 106:	5c04                	.insn	2, 0x5c04
 108:	0470                	.insn	2, 0x0470
 10a:	04e4                	.insn	2, 0x04e4
 10c:	04e8                	.insn	2, 0x04e8
 10e:	f804                	.insn	2, 0xf804
 110:	fc04                	.insn	2, 0xfc04
 112:	0404                	.insn	2, 0x0404
 114:	05a0                	.insn	2, 0x05a0
 116:	05a4                	.insn	2, 0x05a4
 118:	0400                	.insn	2, 0x0400
 11a:	0190                	.insn	2, 0x0190
 11c:	0194                	.insn	2, 0x0194
 11e:	c404                	.insn	2, 0xc404
 120:	e404                	.insn	2, 0xe404
 122:	0004                	.insn	2, 0x0004
 124:	c404                	.insn	2, 0xc404
 126:	e001                	.insn	2, 0xe001
 128:	0402                	.insn	2, 0x0402
 12a:	02e4                	.insn	2, 0x02e4
 12c:	02e8                	.insn	2, 0x02e8
 12e:	0400                	.insn	2, 0x0400
 130:	01c4                	.insn	2, 0x01c4
 132:	02c4                	.insn	2, 0x02c4
 134:	c404                	.insn	2, 0xc404
 136:	c802                	.insn	2, 0xc802
 138:	0402                	.insn	2, 0x0402
 13a:	02cc                	.insn	2, 0x02cc
 13c:	02d0                	.insn	2, 0x02d0
 13e:	0400                	.insn	2, 0x0400
 140:	01cc                	.insn	2, 0x01cc
 142:	01d4                	.insn	2, 0x01d4
 144:	d804                	.insn	2, 0xd804
 146:	e801                	.insn	2, 0xe801
 148:	0001                	.insn	2, 0x0001
 14a:	c004                	.insn	2, 0xc004
 14c:	0403c003          	lbu	zero,64(t2)
 150:	03c8                	.insn	2, 0x03c8
 152:	03dc                	.insn	2, 0x03dc
 154:	0400                	.insn	2, 0x0400
 156:	05bc                	.insn	2, 0x05bc
 158:	05c8                	.insn	2, 0x05c8
 15a:	ec04                	.insn	2, 0xec04
 15c:	d005                	.insn	2, 0xd005
 15e:	0006                	.insn	2, 0x0006
 160:	00cc                	.insn	2, 0x00cc
 162:	0000                	.insn	2, 0x0000
 164:	0005                	.insn	2, 0x0005
 166:	0008                	.insn	2, 0x0008
 168:	0000                	.insn	2, 0x0000
 16a:	0000                	.insn	2, 0x0000
 16c:	0004                	.insn	2, 0x0004
 16e:	0400                	.insn	2, 0x0400
 170:	0804                	.insn	2, 0x0804
 172:	0c04                	.insn	2, 0x0c04
 174:	0410                	.insn	2, 0x0410
 176:	1814                	.insn	2, 0x1814
 178:	2404                	.insn	2, 0x2404
 17a:	042c                	.insn	2, 0x042c
 17c:	4844                	.insn	2, 0x4844
 17e:	0400                	.insn	2, 0x0400
 180:	0400                	.insn	2, 0x0400
 182:	1004                	.insn	2, 0x1004
 184:	0414                	.insn	2, 0x0414
 186:	1c18                	.insn	2, 0x1c18
 188:	4004                	.insn	2, 0x4004
 18a:	0444                	.insn	2, 0x0444
 18c:	5858                	.insn	2, 0x5858
 18e:	0400                	.insn	2, 0x0400
 190:	5c58                	.insn	2, 0x5c58
 192:	6004                	.insn	2, 0x6004
 194:	01b4                	.insn	2, 0x01b4
 196:	bc04                	.insn	2, 0xbc04
 198:	9401                	.insn	2, 0x9401
 19a:	03a80403          	lb	s0,58(a6)
 19e:	03ac                	.insn	2, 0x03ac
 1a0:	e004                	.insn	2, 0xe004
 1a2:	0403e403          	lwu	s0,64(t2)
 1a6:	03e8                	.insn	2, 0x03e8
 1a8:	0484                	.insn	2, 0x0484
 1aa:	a404                	.insn	2, 0xa404
 1ac:	b008                	.insn	2, 0xb008
 1ae:	0408                	.insn	2, 0x0408
 1b0:	08cc                	.insn	2, 0x08cc
 1b2:	08d0                	.insn	2, 0x08d0
 1b4:	0400                	.insn	2, 0x0400
 1b6:	01b4                	.insn	2, 0x01b4
 1b8:	01bc                	.insn	2, 0x01bc
 1ba:	9404                	.insn	2, 0x9404
 1bc:	0403a803          	lw	a6,64(t2)
 1c0:	03ac                	.insn	2, 0x03ac
 1c2:	03ac                	.insn	2, 0x03ac
 1c4:	8404                	.insn	2, 0x8404
 1c6:	c804                	.insn	2, 0xc804
 1c8:	0404                	.insn	2, 0x0404
 1ca:	06f8                	.insn	2, 0x06f8
 1cc:	0784                	.insn	2, 0x0784
 1ce:	8c04                	.insn	2, 0x8c04
 1d0:	04079807          	.insn	4, 0x04079807
 1d4:	079c                	.insn	2, 0x079c
 1d6:	07a4                	.insn	2, 0x07a4
 1d8:	a804                	.insn	2, 0xa804
 1da:	0407b007          	.insn	4, 0x0407b007
 1de:	07f8                	.insn	2, 0x07f8
 1e0:	07fc                	.insn	2, 0x07fc
 1e2:	8004                	.insn	2, 0x8004
 1e4:	8408                	.insn	2, 0x8408
 1e6:	0408                	.insn	2, 0x0408
 1e8:	08b0                	.insn	2, 0x08b0
 1ea:	08cc                	.insn	2, 0x08cc
 1ec:	d004                	.insn	2, 0xd004
 1ee:	d808                	.insn	2, 0xd808
 1f0:	0008                	.insn	2, 0x0008
 1f2:	9404                	.insn	2, 0x9404
 1f4:	04039403          	lh	s0,64(t2)
 1f8:	03e4                	.insn	2, 0x03e4
 1fa:	03e8                	.insn	2, 0x03e8
 1fc:	c804                	.insn	2, 0xc804
 1fe:	f804                	.insn	2, 0xf804
 200:	0406                	.insn	2, 0x0406
 202:	0784                	.insn	2, 0x0784
 204:	078c                	.insn	2, 0x078c
 206:	9804                	.insn	2, 0x9804
 208:	04079c07          	.insn	4, 0x04079c07
 20c:	07a4                	.insn	2, 0x07a4
 20e:	07a8                	.insn	2, 0x07a8
 210:	b004                	.insn	2, 0xb004
 212:	0407f807          	.insn	4, 0x0407f807
 216:	07fc                	.insn	2, 0x07fc
 218:	0880                	.insn	2, 0x0880
 21a:	8404                	.insn	2, 0x8404
 21c:	a408                	.insn	2, 0xa408
 21e:	0008                	.insn	2, 0x0008
 220:	e804                	.insn	2, 0xe804
 222:	f404                	.insn	2, 0xf404
 224:	0404                	.insn	2, 0x0404
 226:	07c4                	.insn	2, 0x07c4
 228:	07f8                	.insn	2, 0x07f8
 22a:	8c04                	.insn	2, 0x8c04
 22c:	a408                	.insn	2, 0xa408
 22e:	0008                	.insn	2, 0x0008
 230:	0024                	.insn	2, 0x0024
 232:	0000                	.insn	2, 0x0000
 234:	0005                	.insn	2, 0x0005
 236:	0008                	.insn	2, 0x0008
 238:	0000                	.insn	2, 0x0000
 23a:	0000                	.insn	2, 0x0000
 23c:	0004                	.insn	2, 0x0004
 23e:	0400                	.insn	2, 0x0400
 240:	4410                	.insn	2, 0x4410
 242:	7004                	.insn	2, 0x7004
 244:	0180                	.insn	2, 0x0180
 246:	0400                	.insn	2, 0x0400
 248:	2820                	.insn	2, 0x2820
 24a:	2c04                	.insn	2, 0x2c04
 24c:	003c                	.insn	2, 0x003c
 24e:	4404                	.insn	2, 0x4404
 250:	0450                	.insn	2, 0x0450
 252:	5854                	.insn	2, 0x5854
 254:	5c04                	.insn	2, 0x5c04
 256:	0060                	.insn	2, 0x0060
 258:	001c                	.insn	2, 0x001c
 25a:	0000                	.insn	2, 0x0000
 25c:	0005                	.insn	2, 0x0005
 25e:	0008                	.insn	2, 0x0008
 260:	0000                	.insn	2, 0x0000
 262:	0000                	.insn	2, 0x0000
 264:	0004                	.insn	2, 0x0004
 266:	0408                	.insn	2, 0x0408
 268:	1c18                	.insn	2, 0x1c18
 26a:	2404                	.insn	2, 0x2404
 26c:	002c                	.insn	2, 0x002c
 26e:	3804                	.insn	2, 0x3804
 270:	0444                	.insn	2, 0x0444
 272:	4c48                	.insn	2, 0x4c48
 274:	5004                	.insn	2, 0x5004
 276:	0054                	.insn	2, 0x0054
 278:	0000002b          	.insn	4, 0x002b
 27c:	0005                	.insn	2, 0x0005
 27e:	0008                	.insn	2, 0x0008
 280:	0000                	.insn	2, 0x0000
 282:	0000                	.insn	2, 0x0000
 284:	0004                	.insn	2, 0x0004
 286:	0408                	.insn	2, 0x0408
 288:	100c                	.insn	2, 0x100c
 28a:	1404                	.insn	2, 0x1404
 28c:	001c                	.insn	2, 0x001c
 28e:	6404                	.insn	2, 0x6404
 290:	0194                	.insn	2, 0x0194
 292:	a404                	.insn	2, 0xa404
 294:	a801                	.insn	2, 0xa801
 296:	0401                	.insn	2, 0x0401
 298:	01b4                	.insn	2, 0x01b4
 29a:	01b4                	.insn	2, 0x01b4
 29c:	d404                	.insn	2, 0xd404
 29e:	dc01                	.insn	2, 0xdc01
 2a0:	0401                	.insn	2, 0x0401
 2a2:	01e4                	.insn	2, 0x01e4
 2a4:	01ec                	.insn	2, 0x01ec
 2a6:	1200                	.insn	2, 0x1200
 2a8:	0000                	.insn	2, 0x0000
 2aa:	0500                	.insn	2, 0x0500
 2ac:	0800                	.insn	2, 0x0800
 2ae:	0000                	.insn	2, 0x0000
 2b0:	0000                	.insn	2, 0x0000
 2b2:	0400                	.insn	2, 0x0400
 2b4:	1800                	.insn	2, 0x1800
 2b6:	1804                	.insn	2, 0x1804
 2b8:	0430                	.insn	2, 0x0430
 2ba:	4038                	.insn	2, 0x4038
	...

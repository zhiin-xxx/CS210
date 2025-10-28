
test/build/with-syscall/matrixmulti.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	64c010ef          	jal	11780 <__call_exitprocs>
   10138:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	291020ef          	jal	12bd8 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00013537          	lui	a0,0x13
   10158:	aa050513          	addi	a0,a0,-1376 # 12aa0 <__libc_fini_array>
   1015c:	75c0106f          	j	118b8 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00003197          	auipc	gp,0x3
   10168:	6b418193          	addi	gp,gp,1716 # 13818 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	85450513          	addi	a0,a0,-1964 # 139c0 <__stdio_exit_handler>
   10174:	00004617          	auipc	a2,0x4
   10178:	e0c60613          	addi	a2,a2,-500 # 13f80 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	520010ef          	jal	116a4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	73050513          	addi	a0,a0,1840 # 118b8 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00003517          	auipc	a0,0x3
   10198:	90c50513          	addi	a0,a0,-1780 # 12aa0 <__libc_fini_array>
   1019c:	71c010ef          	jal	118b8 <atexit>
   101a0:	470010ef          	jal	11610 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	2d8000ef          	jal	10488 <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1e01c783          	lbu	a5,480(gp) # 139f8 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00013537          	lui	a0,0x13
   101d8:	da850513          	addi	a0,a0,-600 # 12da8 <__EH_FRAME_BEGIN__>
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
   10204:	00013537          	lui	a0,0x13
   10208:	1e818593          	addi	a1,gp,488 # 13a00 <object.0>
   1020c:	da850513          	addi	a0,a0,-600 # 12da8 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <matmulti>:
   1021c:	f8010113          	addi	sp,sp,-128
   10220:	06113c23          	sd	ra,120(sp)
   10224:	06813823          	sd	s0,112(sp)
   10228:	06913423          	sd	s1,104(sp)
   1022c:	07213023          	sd	s2,96(sp)
   10230:	05313c23          	sd	s3,88(sp)
   10234:	08010413          	addi	s0,sp,128
   10238:	f8a43c23          	sd	a0,-104(s0)
   1023c:	f8b43823          	sd	a1,-112(s0)
   10240:	f8c43423          	sd	a2,-120(s0)
   10244:	f8d42223          	sw	a3,-124(s0)
   10248:	00a00693          	li	a3,10
   1024c:	fff68693          	addi	a3,a3,-1
   10250:	fad43c23          	sd	a3,-72(s0)
   10254:	00a00693          	li	a3,10
   10258:	00068913          	mv	s2,a3
   1025c:	00000993          	li	s3,0
   10260:	03b95693          	srli	a3,s2,0x3b
   10264:	00599393          	slli	t2,s3,0x5
   10268:	007683b3          	add	t2,a3,t2
   1026c:	00591313          	slli	t1,s2,0x5
   10270:	00a00693          	li	a3,10
   10274:	fff68693          	addi	a3,a3,-1
   10278:	fad43823          	sd	a3,-80(s0)
   1027c:	00a00693          	li	a3,10
   10280:	00068f13          	mv	t5,a3
   10284:	00000f93          	li	t6,0
   10288:	03bf5693          	srli	a3,t5,0x3b
   1028c:	005f9893          	slli	a7,t6,0x5
   10290:	011688b3          	add	a7,a3,a7
   10294:	005f1813          	slli	a6,t5,0x5
   10298:	00a00693          	li	a3,10
   1029c:	fff68693          	addi	a3,a3,-1
   102a0:	fad43423          	sd	a3,-88(s0)
   102a4:	00a00693          	li	a3,10
   102a8:	00068e13          	mv	t3,a3
   102ac:	00000e93          	li	t4,0
   102b0:	03be5693          	srli	a3,t3,0x3b
   102b4:	005e9793          	slli	a5,t4,0x5
   102b8:	00f687b3          	add	a5,a3,a5
   102bc:	005e1713          	slli	a4,t3,0x5
   102c0:	fc042623          	sw	zero,-52(s0)
   102c4:	1880006f          	j	1044c <matmulti+0x230>
   102c8:	fc042423          	sw	zero,-56(s0)
   102cc:	15c0006f          	j	10428 <matmulti+0x20c>
   102d0:	fcc42783          	lw	a5,-52(s0)
   102d4:	00a00713          	li	a4,10
   102d8:	00070593          	mv	a1,a4
   102dc:	00078513          	mv	a0,a5
   102e0:	275000ef          	jal	10d54 <__muldi3>
   102e4:	00050793          	mv	a5,a0
   102e8:	00279793          	slli	a5,a5,0x2
   102ec:	f8843703          	ld	a4,-120(s0)
   102f0:	00f70733          	add	a4,a4,a5
   102f4:	fc842783          	lw	a5,-56(s0)
   102f8:	00279793          	slli	a5,a5,0x2
   102fc:	00f707b3          	add	a5,a4,a5
   10300:	0007a023          	sw	zero,0(a5)
   10304:	fc042223          	sw	zero,-60(s0)
   10308:	0fc0006f          	j	10404 <matmulti+0x1e8>
   1030c:	fcc42783          	lw	a5,-52(s0)
   10310:	00a00713          	li	a4,10
   10314:	00070593          	mv	a1,a4
   10318:	00078513          	mv	a0,a5
   1031c:	239000ef          	jal	10d54 <__muldi3>
   10320:	00050793          	mv	a5,a0
   10324:	00279793          	slli	a5,a5,0x2
   10328:	f8843703          	ld	a4,-120(s0)
   1032c:	00f70733          	add	a4,a4,a5
   10330:	fc842783          	lw	a5,-56(s0)
   10334:	00279793          	slli	a5,a5,0x2
   10338:	00f707b3          	add	a5,a4,a5
   1033c:	0007a903          	lw	s2,0(a5)
   10340:	fcc42783          	lw	a5,-52(s0)
   10344:	00a00713          	li	a4,10
   10348:	00070593          	mv	a1,a4
   1034c:	00078513          	mv	a0,a5
   10350:	205000ef          	jal	10d54 <__muldi3>
   10354:	00050793          	mv	a5,a0
   10358:	00279793          	slli	a5,a5,0x2
   1035c:	f9843703          	ld	a4,-104(s0)
   10360:	00f70733          	add	a4,a4,a5
   10364:	fc442783          	lw	a5,-60(s0)
   10368:	00279793          	slli	a5,a5,0x2
   1036c:	00f707b3          	add	a5,a4,a5
   10370:	0007a483          	lw	s1,0(a5)
   10374:	fc442783          	lw	a5,-60(s0)
   10378:	00a00713          	li	a4,10
   1037c:	00070593          	mv	a1,a4
   10380:	00078513          	mv	a0,a5
   10384:	1d1000ef          	jal	10d54 <__muldi3>
   10388:	00050793          	mv	a5,a0
   1038c:	00279793          	slli	a5,a5,0x2
   10390:	f9043703          	ld	a4,-112(s0)
   10394:	00f70733          	add	a4,a4,a5
   10398:	fc842783          	lw	a5,-56(s0)
   1039c:	00279793          	slli	a5,a5,0x2
   103a0:	00f707b3          	add	a5,a4,a5
   103a4:	0007a783          	lw	a5,0(a5)
   103a8:	00078593          	mv	a1,a5
   103ac:	00048513          	mv	a0,s1
   103b0:	1a5000ef          	jal	10d54 <__muldi3>
   103b4:	00050793          	mv	a5,a0
   103b8:	0007849b          	sext.w	s1,a5
   103bc:	fcc42783          	lw	a5,-52(s0)
   103c0:	00a00713          	li	a4,10
   103c4:	00070593          	mv	a1,a4
   103c8:	00078513          	mv	a0,a5
   103cc:	189000ef          	jal	10d54 <__muldi3>
   103d0:	00050793          	mv	a5,a0
   103d4:	00279793          	slli	a5,a5,0x2
   103d8:	f8843703          	ld	a4,-120(s0)
   103dc:	00f706b3          	add	a3,a4,a5
   103e0:	009907bb          	addw	a5,s2,s1
   103e4:	0007871b          	sext.w	a4,a5
   103e8:	fc842783          	lw	a5,-56(s0)
   103ec:	00279793          	slli	a5,a5,0x2
   103f0:	00f687b3          	add	a5,a3,a5
   103f4:	00e7a023          	sw	a4,0(a5)
   103f8:	fc442783          	lw	a5,-60(s0)
   103fc:	0017879b          	addiw	a5,a5,1
   10400:	fcf42223          	sw	a5,-60(s0)
   10404:	fc442783          	lw	a5,-60(s0)
   10408:	00078713          	mv	a4,a5
   1040c:	f8442783          	lw	a5,-124(s0)
   10410:	0007071b          	sext.w	a4,a4
   10414:	0007879b          	sext.w	a5,a5
   10418:	eef74ae3          	blt	a4,a5,1030c <matmulti+0xf0>
   1041c:	fc842783          	lw	a5,-56(s0)
   10420:	0017879b          	addiw	a5,a5,1
   10424:	fcf42423          	sw	a5,-56(s0)
   10428:	fc842783          	lw	a5,-56(s0)
   1042c:	00078713          	mv	a4,a5
   10430:	f8442783          	lw	a5,-124(s0)
   10434:	0007071b          	sext.w	a4,a4
   10438:	0007879b          	sext.w	a5,a5
   1043c:	e8f74ae3          	blt	a4,a5,102d0 <matmulti+0xb4>
   10440:	fcc42783          	lw	a5,-52(s0)
   10444:	0017879b          	addiw	a5,a5,1
   10448:	fcf42623          	sw	a5,-52(s0)
   1044c:	fcc42783          	lw	a5,-52(s0)
   10450:	00078713          	mv	a4,a5
   10454:	f8442783          	lw	a5,-124(s0)
   10458:	0007071b          	sext.w	a4,a4
   1045c:	0007879b          	sext.w	a5,a5
   10460:	e6f744e3          	blt	a4,a5,102c8 <matmulti+0xac>
   10464:	00000013          	nop
   10468:	00000013          	nop
   1046c:	07813083          	ld	ra,120(sp)
   10470:	07013403          	ld	s0,112(sp)
   10474:	06813483          	ld	s1,104(sp)
   10478:	06013903          	ld	s2,96(sp)
   1047c:	05813983          	ld	s3,88(sp)
   10480:	08010113          	addi	sp,sp,128
   10484:	00008067          	ret

0000000000010488 <main>:
   10488:	e2010113          	addi	sp,sp,-480
   1048c:	1c113c23          	sd	ra,472(sp)
   10490:	1c813823          	sd	s0,464(sp)
   10494:	1c913423          	sd	s1,456(sp)
   10498:	1d213023          	sd	s2,448(sp)
   1049c:	1b313c23          	sd	s3,440(sp)
   104a0:	1b413823          	sd	s4,432(sp)
   104a4:	1b513423          	sd	s5,424(sp)
   104a8:	1b613023          	sd	s6,416(sp)
   104ac:	19713c23          	sd	s7,408(sp)
   104b0:	19813823          	sd	s8,400(sp)
   104b4:	19913423          	sd	s9,392(sp)
   104b8:	19a13023          	sd	s10,384(sp)
   104bc:	17b13c23          	sd	s11,376(sp)
   104c0:	1e010413          	addi	s0,sp,480
   104c4:	00010793          	mv	a5,sp
   104c8:	e2f43023          	sd	a5,-480(s0)
   104cc:	00a00793          	li	a5,10
   104d0:	fff78793          	addi	a5,a5,-1
   104d4:	f6f43423          	sd	a5,-152(s0)
   104d8:	00a00793          	li	a5,10
   104dc:	00078513          	mv	a0,a5
   104e0:	00000593          	li	a1,0
   104e4:	03b55793          	srli	a5,a0,0x3b
   104e8:	00559693          	slli	a3,a1,0x5
   104ec:	00d786b3          	add	a3,a5,a3
   104f0:	00551613          	slli	a2,a0,0x5
   104f4:	00a00793          	li	a5,10
   104f8:	00279793          	slli	a5,a5,0x2
   104fc:	e2f43423          	sd	a5,-472(s0)
   10500:	00a00793          	li	a5,10
   10504:	fff78793          	addi	a5,a5,-1
   10508:	f6f43023          	sd	a5,-160(s0)
   1050c:	00a00793          	li	a5,10
   10510:	00078313          	mv	t1,a5
   10514:	00000393          	li	t2,0
   10518:	00a00793          	li	a5,10
   1051c:	00078813          	mv	a6,a5
   10520:	00000893          	li	a7,0
   10524:	00080613          	mv	a2,a6
   10528:	00088693          	mv	a3,a7
   1052c:	00030513          	mv	a0,t1
   10530:	00038593          	mv	a1,t2
   10534:	045000ef          	jal	10d78 <__multi3>
   10538:	00050613          	mv	a2,a0
   1053c:	00058693          	mv	a3,a1
   10540:	00060713          	mv	a4,a2
   10544:	00068793          	mv	a5,a3
   10548:	03b75693          	srli	a3,a4,0x3b
   1054c:	00579993          	slli	s3,a5,0x5
   10550:	013689b3          	add	s3,a3,s3
   10554:	00571913          	slli	s2,a4,0x5
   10558:	00a00793          	li	a5,10
   1055c:	00078713          	mv	a4,a5
   10560:	00a00793          	li	a5,10
   10564:	00078593          	mv	a1,a5
   10568:	00070513          	mv	a0,a4
   1056c:	7e8000ef          	jal	10d54 <__muldi3>
   10570:	00a00793          	li	a5,10
   10574:	f0f43023          	sd	a5,-256(s0)
   10578:	f0043423          	sd	zero,-248(s0)
   1057c:	00a00793          	li	a5,10
   10580:	eef43823          	sd	a5,-272(s0)
   10584:	ee043c23          	sd	zero,-264(s0)
   10588:	ef043603          	ld	a2,-272(s0)
   1058c:	ef843683          	ld	a3,-264(s0)
   10590:	f0043503          	ld	a0,-256(s0)
   10594:	f0843583          	ld	a1,-248(s0)
   10598:	7e0000ef          	jal	10d78 <__multi3>
   1059c:	00050613          	mv	a2,a0
   105a0:	00058693          	mv	a3,a1
   105a4:	00060713          	mv	a4,a2
   105a8:	00068793          	mv	a5,a3
   105ac:	03b75693          	srli	a3,a4,0x3b
   105b0:	00579a93          	slli	s5,a5,0x5
   105b4:	01568ab3          	add	s5,a3,s5
   105b8:	00571a13          	slli	s4,a4,0x5
   105bc:	00a00793          	li	a5,10
   105c0:	00078713          	mv	a4,a5
   105c4:	00a00793          	li	a5,10
   105c8:	00078593          	mv	a1,a5
   105cc:	00070513          	mv	a0,a4
   105d0:	784000ef          	jal	10d54 <__muldi3>
   105d4:	00050793          	mv	a5,a0
   105d8:	00279793          	slli	a5,a5,0x2
   105dc:	00f78793          	addi	a5,a5,15
   105e0:	0047d793          	srli	a5,a5,0x4
   105e4:	00479793          	slli	a5,a5,0x4
   105e8:	40f10133          	sub	sp,sp,a5
   105ec:	00010793          	mv	a5,sp
   105f0:	00378793          	addi	a5,a5,3
   105f4:	0027d793          	srli	a5,a5,0x2
   105f8:	00279793          	slli	a5,a5,0x2
   105fc:	f4f43c23          	sd	a5,-168(s0)
   10600:	00a00793          	li	a5,10
   10604:	fff78793          	addi	a5,a5,-1
   10608:	f4f43823          	sd	a5,-176(s0)
   1060c:	00a00793          	li	a5,10
   10610:	00078c13          	mv	s8,a5
   10614:	00000c93          	li	s9,0
   10618:	03bc5793          	srli	a5,s8,0x3b
   1061c:	005c9b93          	slli	s7,s9,0x5
   10620:	01778bb3          	add	s7,a5,s7
   10624:	005c1b13          	slli	s6,s8,0x5
   10628:	00a00793          	li	a5,10
   1062c:	00279a13          	slli	s4,a5,0x2
   10630:	00a00793          	li	a5,10
   10634:	fff78793          	addi	a5,a5,-1
   10638:	f4f43423          	sd	a5,-184(s0)
   1063c:	00a00793          	li	a5,10
   10640:	eef43023          	sd	a5,-288(s0)
   10644:	ee043423          	sd	zero,-280(s0)
   10648:	00a00793          	li	a5,10
   1064c:	ecf43823          	sd	a5,-304(s0)
   10650:	ec043c23          	sd	zero,-296(s0)
   10654:	ed043603          	ld	a2,-304(s0)
   10658:	ed843683          	ld	a3,-296(s0)
   1065c:	ee043503          	ld	a0,-288(s0)
   10660:	ee843583          	ld	a1,-280(s0)
   10664:	714000ef          	jal	10d78 <__multi3>
   10668:	00050613          	mv	a2,a0
   1066c:	00058693          	mv	a3,a1
   10670:	00060713          	mv	a4,a2
   10674:	00068793          	mv	a5,a3
   10678:	03b75693          	srli	a3,a4,0x3b
   1067c:	00579d93          	slli	s11,a5,0x5
   10680:	01b68db3          	add	s11,a3,s11
   10684:	00571d13          	slli	s10,a4,0x5
   10688:	00a00793          	li	a5,10
   1068c:	00078713          	mv	a4,a5
   10690:	00a00793          	li	a5,10
   10694:	00078593          	mv	a1,a5
   10698:	00070513          	mv	a0,a4
   1069c:	6b8000ef          	jal	10d54 <__muldi3>
   106a0:	00a00793          	li	a5,10
   106a4:	ecf43023          	sd	a5,-320(s0)
   106a8:	ec043423          	sd	zero,-312(s0)
   106ac:	00a00793          	li	a5,10
   106b0:	eaf43823          	sd	a5,-336(s0)
   106b4:	ea043c23          	sd	zero,-328(s0)
   106b8:	eb043603          	ld	a2,-336(s0)
   106bc:	eb843683          	ld	a3,-328(s0)
   106c0:	ec043503          	ld	a0,-320(s0)
   106c4:	ec843583          	ld	a1,-312(s0)
   106c8:	6b0000ef          	jal	10d78 <__multi3>
   106cc:	00050613          	mv	a2,a0
   106d0:	00058693          	mv	a3,a1
   106d4:	00060713          	mv	a4,a2
   106d8:	00068793          	mv	a5,a3
   106dc:	03b75693          	srli	a3,a4,0x3b
   106e0:	00579613          	slli	a2,a5,0x5
   106e4:	eac43423          	sd	a2,-344(s0)
   106e8:	ea843603          	ld	a2,-344(s0)
   106ec:	00c686b3          	add	a3,a3,a2
   106f0:	ead43423          	sd	a3,-344(s0)
   106f4:	00571793          	slli	a5,a4,0x5
   106f8:	eaf43023          	sd	a5,-352(s0)
   106fc:	00a00793          	li	a5,10
   10700:	00078713          	mv	a4,a5
   10704:	00a00793          	li	a5,10
   10708:	00078593          	mv	a1,a5
   1070c:	00070513          	mv	a0,a4
   10710:	644000ef          	jal	10d54 <__muldi3>
   10714:	00050793          	mv	a5,a0
   10718:	00279793          	slli	a5,a5,0x2
   1071c:	00f78793          	addi	a5,a5,15
   10720:	0047d793          	srli	a5,a5,0x4
   10724:	00479793          	slli	a5,a5,0x4
   10728:	40f10133          	sub	sp,sp,a5
   1072c:	00010793          	mv	a5,sp
   10730:	00378793          	addi	a5,a5,3
   10734:	0027d793          	srli	a5,a5,0x2
   10738:	00279793          	slli	a5,a5,0x2
   1073c:	f4f43023          	sd	a5,-192(s0)
   10740:	00a00793          	li	a5,10
   10744:	fff78793          	addi	a5,a5,-1
   10748:	f2f43c23          	sd	a5,-200(s0)
   1074c:	00a00793          	li	a5,10
   10750:	f0f43823          	sd	a5,-240(s0)
   10754:	f0043c23          	sd	zero,-232(s0)
   10758:	f1043783          	ld	a5,-240(s0)
   1075c:	03b7d793          	srli	a5,a5,0x3b
   10760:	f1843703          	ld	a4,-232(s0)
   10764:	00571713          	slli	a4,a4,0x5
   10768:	e8e43c23          	sd	a4,-360(s0)
   1076c:	e9843703          	ld	a4,-360(s0)
   10770:	00e787b3          	add	a5,a5,a4
   10774:	e8f43c23          	sd	a5,-360(s0)
   10778:	f1043783          	ld	a5,-240(s0)
   1077c:	00579793          	slli	a5,a5,0x5
   10780:	e8f43823          	sd	a5,-368(s0)
   10784:	00a00793          	li	a5,10
   10788:	00279493          	slli	s1,a5,0x2
   1078c:	00a00793          	li	a5,10
   10790:	fff78793          	addi	a5,a5,-1
   10794:	f2f43823          	sd	a5,-208(s0)
   10798:	00a00793          	li	a5,10
   1079c:	e8f43023          	sd	a5,-384(s0)
   107a0:	e8043423          	sd	zero,-376(s0)
   107a4:	00a00793          	li	a5,10
   107a8:	e6f43823          	sd	a5,-400(s0)
   107ac:	e6043c23          	sd	zero,-392(s0)
   107b0:	e7043603          	ld	a2,-400(s0)
   107b4:	e7843683          	ld	a3,-392(s0)
   107b8:	e8043503          	ld	a0,-384(s0)
   107bc:	e8843583          	ld	a1,-376(s0)
   107c0:	5b8000ef          	jal	10d78 <__multi3>
   107c4:	00050613          	mv	a2,a0
   107c8:	00058693          	mv	a3,a1
   107cc:	00060713          	mv	a4,a2
   107d0:	00068793          	mv	a5,a3
   107d4:	03b75693          	srli	a3,a4,0x3b
   107d8:	00579613          	slli	a2,a5,0x5
   107dc:	e6c43423          	sd	a2,-408(s0)
   107e0:	e6843603          	ld	a2,-408(s0)
   107e4:	00c686b3          	add	a3,a3,a2
   107e8:	e6d43423          	sd	a3,-408(s0)
   107ec:	00571793          	slli	a5,a4,0x5
   107f0:	e6f43023          	sd	a5,-416(s0)
   107f4:	00a00793          	li	a5,10
   107f8:	00078713          	mv	a4,a5
   107fc:	00a00793          	li	a5,10
   10800:	00078593          	mv	a1,a5
   10804:	00070513          	mv	a0,a4
   10808:	54c000ef          	jal	10d54 <__muldi3>
   1080c:	00a00793          	li	a5,10
   10810:	e4f43823          	sd	a5,-432(s0)
   10814:	e4043c23          	sd	zero,-424(s0)
   10818:	00a00793          	li	a5,10
   1081c:	e4f43023          	sd	a5,-448(s0)
   10820:	e4043423          	sd	zero,-440(s0)
   10824:	e4043603          	ld	a2,-448(s0)
   10828:	e4843683          	ld	a3,-440(s0)
   1082c:	e5043503          	ld	a0,-432(s0)
   10830:	e5843583          	ld	a1,-424(s0)
   10834:	544000ef          	jal	10d78 <__multi3>
   10838:	00050613          	mv	a2,a0
   1083c:	00058693          	mv	a3,a1
   10840:	00060713          	mv	a4,a2
   10844:	00068793          	mv	a5,a3
   10848:	03b75693          	srli	a3,a4,0x3b
   1084c:	00579613          	slli	a2,a5,0x5
   10850:	e2c43c23          	sd	a2,-456(s0)
   10854:	e3843603          	ld	a2,-456(s0)
   10858:	00c686b3          	add	a3,a3,a2
   1085c:	e2d43c23          	sd	a3,-456(s0)
   10860:	00571793          	slli	a5,a4,0x5
   10864:	e2f43823          	sd	a5,-464(s0)
   10868:	00a00793          	li	a5,10
   1086c:	00078713          	mv	a4,a5
   10870:	00a00793          	li	a5,10
   10874:	00078593          	mv	a1,a5
   10878:	00070513          	mv	a0,a4
   1087c:	4d8000ef          	jal	10d54 <__muldi3>
   10880:	00050793          	mv	a5,a0
   10884:	00279793          	slli	a5,a5,0x2
   10888:	00f78793          	addi	a5,a5,15
   1088c:	0047d793          	srli	a5,a5,0x4
   10890:	00479793          	slli	a5,a5,0x4
   10894:	40f10133          	sub	sp,sp,a5
   10898:	00010793          	mv	a5,sp
   1089c:	00378793          	addi	a5,a5,3
   108a0:	0027d793          	srli	a5,a5,0x2
   108a4:	00279793          	slli	a5,a5,0x2
   108a8:	f2f43423          	sd	a5,-216(s0)
   108ac:	f8042623          	sw	zero,-116(s0)
   108b0:	0d00006f          	j	10980 <main+0x4f8>
   108b4:	f8042423          	sw	zero,-120(s0)
   108b8:	0ac0006f          	j	10964 <main+0x4dc>
   108bc:	e2843783          	ld	a5,-472(s0)
   108c0:	0027d713          	srli	a4,a5,0x2
   108c4:	f5843903          	ld	s2,-168(s0)
   108c8:	f8842983          	lw	s3,-120(s0)
   108cc:	f8c42783          	lw	a5,-116(s0)
   108d0:	00070593          	mv	a1,a4
   108d4:	00078513          	mv	a0,a5
   108d8:	47c000ef          	jal	10d54 <__muldi3>
   108dc:	00050793          	mv	a5,a0
   108e0:	00f987b3          	add	a5,s3,a5
   108e4:	00279793          	slli	a5,a5,0x2
   108e8:	00f907b3          	add	a5,s2,a5
   108ec:	f8c42703          	lw	a4,-116(s0)
   108f0:	00e7a023          	sw	a4,0(a5)
   108f4:	002a5713          	srli	a4,s4,0x2
   108f8:	f4043903          	ld	s2,-192(s0)
   108fc:	f8842983          	lw	s3,-120(s0)
   10900:	f8c42783          	lw	a5,-116(s0)
   10904:	00070593          	mv	a1,a4
   10908:	00078513          	mv	a0,a5
   1090c:	448000ef          	jal	10d54 <__muldi3>
   10910:	00050793          	mv	a5,a0
   10914:	00f987b3          	add	a5,s3,a5
   10918:	00279793          	slli	a5,a5,0x2
   1091c:	00f907b3          	add	a5,s2,a5
   10920:	f8842703          	lw	a4,-120(s0)
   10924:	00e7a023          	sw	a4,0(a5)
   10928:	0024d713          	srli	a4,s1,0x2
   1092c:	f2843903          	ld	s2,-216(s0)
   10930:	f8842983          	lw	s3,-120(s0)
   10934:	f8c42783          	lw	a5,-116(s0)
   10938:	00070593          	mv	a1,a4
   1093c:	00078513          	mv	a0,a5
   10940:	414000ef          	jal	10d54 <__muldi3>
   10944:	00050793          	mv	a5,a0
   10948:	00f987b3          	add	a5,s3,a5
   1094c:	00279793          	slli	a5,a5,0x2
   10950:	00f907b3          	add	a5,s2,a5
   10954:	0007a023          	sw	zero,0(a5)
   10958:	f8842783          	lw	a5,-120(s0)
   1095c:	0017879b          	addiw	a5,a5,1
   10960:	f8f42423          	sw	a5,-120(s0)
   10964:	00a00793          	li	a5,10
   10968:	f8842703          	lw	a4,-120(s0)
   1096c:	0007071b          	sext.w	a4,a4
   10970:	f4f746e3          	blt	a4,a5,108bc <main+0x434>
   10974:	f8c42783          	lw	a5,-116(s0)
   10978:	0017879b          	addiw	a5,a5,1
   1097c:	f8f42623          	sw	a5,-116(s0)
   10980:	00a00793          	li	a5,10
   10984:	f8c42703          	lw	a4,-116(s0)
   10988:	0007071b          	sext.w	a4,a4
   1098c:	f2f744e3          	blt	a4,a5,108b4 <main+0x42c>
   10990:	000137b7          	lui	a5,0x13
   10994:	d4878513          	addi	a0,a5,-696 # 12d48 <__errno+0x8>
   10998:	2bc000ef          	jal	10c54 <print_s>
   1099c:	f8042223          	sw	zero,-124(s0)
   109a0:	0880006f          	j	10a28 <main+0x5a0>
   109a4:	f8042023          	sw	zero,-128(s0)
   109a8:	0580006f          	j	10a00 <main+0x578>
   109ac:	e2843783          	ld	a5,-472(s0)
   109b0:	0027d713          	srli	a4,a5,0x2
   109b4:	f5843903          	ld	s2,-168(s0)
   109b8:	f8042983          	lw	s3,-128(s0)
   109bc:	f8442783          	lw	a5,-124(s0)
   109c0:	00070593          	mv	a1,a4
   109c4:	00078513          	mv	a0,a5
   109c8:	38c000ef          	jal	10d54 <__muldi3>
   109cc:	00050793          	mv	a5,a0
   109d0:	00f987b3          	add	a5,s3,a5
   109d4:	00279793          	slli	a5,a5,0x2
   109d8:	00f907b3          	add	a5,s2,a5
   109dc:	0007a783          	lw	a5,0(a5)
   109e0:	00078513          	mv	a0,a5
   109e4:	204000ef          	jal	10be8 <print_d>
   109e8:	000137b7          	lui	a5,0x13
   109ec:	d6078513          	addi	a0,a5,-672 # 12d60 <__errno+0x20>
   109f0:	264000ef          	jal	10c54 <print_s>
   109f4:	f8042783          	lw	a5,-128(s0)
   109f8:	0017879b          	addiw	a5,a5,1
   109fc:	f8f42023          	sw	a5,-128(s0)
   10a00:	00a00793          	li	a5,10
   10a04:	f8042703          	lw	a4,-128(s0)
   10a08:	0007071b          	sext.w	a4,a4
   10a0c:	faf740e3          	blt	a4,a5,109ac <main+0x524>
   10a10:	000137b7          	lui	a5,0x13
   10a14:	d6878513          	addi	a0,a5,-664 # 12d68 <__errno+0x28>
   10a18:	23c000ef          	jal	10c54 <print_s>
   10a1c:	f8442783          	lw	a5,-124(s0)
   10a20:	0017879b          	addiw	a5,a5,1
   10a24:	f8f42223          	sw	a5,-124(s0)
   10a28:	00a00793          	li	a5,10
   10a2c:	f8442703          	lw	a4,-124(s0)
   10a30:	0007071b          	sext.w	a4,a4
   10a34:	f6f748e3          	blt	a4,a5,109a4 <main+0x51c>
   10a38:	000137b7          	lui	a5,0x13
   10a3c:	d7078513          	addi	a0,a5,-656 # 12d70 <__errno+0x30>
   10a40:	214000ef          	jal	10c54 <print_s>
   10a44:	f6042e23          	sw	zero,-132(s0)
   10a48:	0840006f          	j	10acc <main+0x644>
   10a4c:	f6042c23          	sw	zero,-136(s0)
   10a50:	0540006f          	j	10aa4 <main+0x61c>
   10a54:	002a5713          	srli	a4,s4,0x2
   10a58:	f4043903          	ld	s2,-192(s0)
   10a5c:	f7842983          	lw	s3,-136(s0)
   10a60:	f7c42783          	lw	a5,-132(s0)
   10a64:	00070593          	mv	a1,a4
   10a68:	00078513          	mv	a0,a5
   10a6c:	2e8000ef          	jal	10d54 <__muldi3>
   10a70:	00050793          	mv	a5,a0
   10a74:	00f987b3          	add	a5,s3,a5
   10a78:	00279793          	slli	a5,a5,0x2
   10a7c:	00f907b3          	add	a5,s2,a5
   10a80:	0007a783          	lw	a5,0(a5)
   10a84:	00078513          	mv	a0,a5
   10a88:	160000ef          	jal	10be8 <print_d>
   10a8c:	000137b7          	lui	a5,0x13
   10a90:	d6078513          	addi	a0,a5,-672 # 12d60 <__errno+0x20>
   10a94:	1c0000ef          	jal	10c54 <print_s>
   10a98:	f7842783          	lw	a5,-136(s0)
   10a9c:	0017879b          	addiw	a5,a5,1
   10aa0:	f6f42c23          	sw	a5,-136(s0)
   10aa4:	00a00793          	li	a5,10
   10aa8:	f7842703          	lw	a4,-136(s0)
   10aac:	0007071b          	sext.w	a4,a4
   10ab0:	faf742e3          	blt	a4,a5,10a54 <main+0x5cc>
   10ab4:	000137b7          	lui	a5,0x13
   10ab8:	d6878513          	addi	a0,a5,-664 # 12d68 <__errno+0x28>
   10abc:	198000ef          	jal	10c54 <print_s>
   10ac0:	f7c42783          	lw	a5,-132(s0)
   10ac4:	0017879b          	addiw	a5,a5,1
   10ac8:	f6f42e23          	sw	a5,-132(s0)
   10acc:	00a00793          	li	a5,10
   10ad0:	f7c42703          	lw	a4,-132(s0)
   10ad4:	0007071b          	sext.w	a4,a4
   10ad8:	f6f74ae3          	blt	a4,a5,10a4c <main+0x5c4>
   10adc:	00a00793          	li	a5,10
   10ae0:	00078693          	mv	a3,a5
   10ae4:	f2843603          	ld	a2,-216(s0)
   10ae8:	f4043583          	ld	a1,-192(s0)
   10aec:	f5843503          	ld	a0,-168(s0)
   10af0:	f2cff0ef          	jal	1021c <matmulti>
   10af4:	000137b7          	lui	a5,0x13
   10af8:	d8878513          	addi	a0,a5,-632 # 12d88 <__errno+0x48>
   10afc:	158000ef          	jal	10c54 <print_s>
   10b00:	f6042a23          	sw	zero,-140(s0)
   10b04:	0840006f          	j	10b88 <main+0x700>
   10b08:	f6042823          	sw	zero,-144(s0)
   10b0c:	0540006f          	j	10b60 <main+0x6d8>
   10b10:	0024d713          	srli	a4,s1,0x2
   10b14:	f2843903          	ld	s2,-216(s0)
   10b18:	f7042983          	lw	s3,-144(s0)
   10b1c:	f7442783          	lw	a5,-140(s0)
   10b20:	00070593          	mv	a1,a4
   10b24:	00078513          	mv	a0,a5
   10b28:	22c000ef          	jal	10d54 <__muldi3>
   10b2c:	00050793          	mv	a5,a0
   10b30:	00f987b3          	add	a5,s3,a5
   10b34:	00279793          	slli	a5,a5,0x2
   10b38:	00f907b3          	add	a5,s2,a5
   10b3c:	0007a783          	lw	a5,0(a5)
   10b40:	00078513          	mv	a0,a5
   10b44:	0a4000ef          	jal	10be8 <print_d>
   10b48:	000137b7          	lui	a5,0x13
   10b4c:	d6078513          	addi	a0,a5,-672 # 12d60 <__errno+0x20>
   10b50:	104000ef          	jal	10c54 <print_s>
   10b54:	f7042783          	lw	a5,-144(s0)
   10b58:	0017879b          	addiw	a5,a5,1
   10b5c:	f6f42823          	sw	a5,-144(s0)
   10b60:	00a00793          	li	a5,10
   10b64:	f7042703          	lw	a4,-144(s0)
   10b68:	0007071b          	sext.w	a4,a4
   10b6c:	faf742e3          	blt	a4,a5,10b10 <main+0x688>
   10b70:	000137b7          	lui	a5,0x13
   10b74:	d6878513          	addi	a0,a5,-664 # 12d68 <__errno+0x28>
   10b78:	0dc000ef          	jal	10c54 <print_s>
   10b7c:	f7442783          	lw	a5,-140(s0)
   10b80:	0017879b          	addiw	a5,a5,1
   10b84:	f6f42a23          	sw	a5,-140(s0)
   10b88:	00a00793          	li	a5,10
   10b8c:	f7442703          	lw	a4,-140(s0)
   10b90:	0007071b          	sext.w	a4,a4
   10b94:	f6f74ae3          	blt	a4,a5,10b08 <main+0x680>
   10b98:	120000ef          	jal	10cb8 <exit_proc>
   10b9c:	e2043103          	ld	sp,-480(s0)
   10ba0:	00000793          	li	a5,0
   10ba4:	00078513          	mv	a0,a5
   10ba8:	e2040113          	addi	sp,s0,-480
   10bac:	1d813083          	ld	ra,472(sp)
   10bb0:	1d013403          	ld	s0,464(sp)
   10bb4:	1c813483          	ld	s1,456(sp)
   10bb8:	1c013903          	ld	s2,448(sp)
   10bbc:	1b813983          	ld	s3,440(sp)
   10bc0:	1b013a03          	ld	s4,432(sp)
   10bc4:	1a813a83          	ld	s5,424(sp)
   10bc8:	1a013b03          	ld	s6,416(sp)
   10bcc:	19813b83          	ld	s7,408(sp)
   10bd0:	19013c03          	ld	s8,400(sp)
   10bd4:	18813c83          	ld	s9,392(sp)
   10bd8:	18013d03          	ld	s10,384(sp)
   10bdc:	17813d83          	ld	s11,376(sp)
   10be0:	1e010113          	addi	sp,sp,480
   10be4:	00008067          	ret

0000000000010be8 <print_d>:
   10be8:	fe010113          	addi	sp,sp,-32
   10bec:	00113c23          	sd	ra,24(sp)
   10bf0:	00813823          	sd	s0,16(sp)
   10bf4:	02010413          	addi	s0,sp,32
   10bf8:	00050793          	mv	a5,a0
   10bfc:	fef42623          	sw	a5,-20(s0)
   10c00:	00200893          	li	a7,2
   10c04:	00000073          	ecall
   10c08:	00000013          	nop
   10c0c:	01813083          	ld	ra,24(sp)
   10c10:	01013403          	ld	s0,16(sp)
   10c14:	02010113          	addi	sp,sp,32
   10c18:	00008067          	ret

0000000000010c1c <print_ll>:
   10c1c:	fe010113          	addi	sp,sp,-32
   10c20:	00113c23          	sd	ra,24(sp)
   10c24:	00813823          	sd	s0,16(sp)
   10c28:	02010413          	addi	s0,sp,32
   10c2c:	fea43423          	sd	a0,-24(s0)
   10c30:	fe843783          	ld	a5,-24(s0)
   10c34:	00078513          	mv	a0,a5
   10c38:	00600893          	li	a7,6
   10c3c:	00000073          	ecall
   10c40:	00000013          	nop
   10c44:	01813083          	ld	ra,24(sp)
   10c48:	01013403          	ld	s0,16(sp)
   10c4c:	02010113          	addi	sp,sp,32
   10c50:	00008067          	ret

0000000000010c54 <print_s>:
   10c54:	fe010113          	addi	sp,sp,-32
   10c58:	00113c23          	sd	ra,24(sp)
   10c5c:	00813823          	sd	s0,16(sp)
   10c60:	02010413          	addi	s0,sp,32
   10c64:	fea43423          	sd	a0,-24(s0)
   10c68:	00000893          	li	a7,0
   10c6c:	00000073          	ecall
   10c70:	00000013          	nop
   10c74:	01813083          	ld	ra,24(sp)
   10c78:	01013403          	ld	s0,16(sp)
   10c7c:	02010113          	addi	sp,sp,32
   10c80:	00008067          	ret

0000000000010c84 <print_c>:
   10c84:	fe010113          	addi	sp,sp,-32
   10c88:	00113c23          	sd	ra,24(sp)
   10c8c:	00813823          	sd	s0,16(sp)
   10c90:	02010413          	addi	s0,sp,32
   10c94:	00050793          	mv	a5,a0
   10c98:	fef407a3          	sb	a5,-17(s0)
   10c9c:	00100893          	li	a7,1
   10ca0:	00000073          	ecall
   10ca4:	00000013          	nop
   10ca8:	01813083          	ld	ra,24(sp)
   10cac:	01013403          	ld	s0,16(sp)
   10cb0:	02010113          	addi	sp,sp,32
   10cb4:	00008067          	ret

0000000000010cb8 <exit_proc>:
   10cb8:	ff010113          	addi	sp,sp,-16
   10cbc:	00113423          	sd	ra,8(sp)
   10cc0:	00813023          	sd	s0,0(sp)
   10cc4:	01010413          	addi	s0,sp,16
   10cc8:	00300893          	li	a7,3
   10ccc:	00000073          	ecall
   10cd0:	00000013          	nop
   10cd4:	00813083          	ld	ra,8(sp)
   10cd8:	00013403          	ld	s0,0(sp)
   10cdc:	01010113          	addi	sp,sp,16
   10ce0:	00008067          	ret

0000000000010ce4 <read_char>:
   10ce4:	fe010113          	addi	sp,sp,-32
   10ce8:	00113c23          	sd	ra,24(sp)
   10cec:	00813823          	sd	s0,16(sp)
   10cf0:	02010413          	addi	s0,sp,32
   10cf4:	00400893          	li	a7,4
   10cf8:	00000073          	ecall
   10cfc:	00050793          	mv	a5,a0
   10d00:	fef407a3          	sb	a5,-17(s0)
   10d04:	fef44783          	lbu	a5,-17(s0)
   10d08:	00078513          	mv	a0,a5
   10d0c:	01813083          	ld	ra,24(sp)
   10d10:	01013403          	ld	s0,16(sp)
   10d14:	02010113          	addi	sp,sp,32
   10d18:	00008067          	ret

0000000000010d1c <read_num>:
   10d1c:	fe010113          	addi	sp,sp,-32
   10d20:	00113c23          	sd	ra,24(sp)
   10d24:	00813823          	sd	s0,16(sp)
   10d28:	02010413          	addi	s0,sp,32
   10d2c:	00500893          	li	a7,5
   10d30:	00000073          	ecall
   10d34:	00050793          	mv	a5,a0
   10d38:	fef43423          	sd	a5,-24(s0)
   10d3c:	fe843783          	ld	a5,-24(s0)
   10d40:	00078513          	mv	a0,a5
   10d44:	01813083          	ld	ra,24(sp)
   10d48:	01013403          	ld	s0,16(sp)
   10d4c:	02010113          	addi	sp,sp,32
   10d50:	00008067          	ret

0000000000010d54 <__muldi3>:
   10d54:	00050613          	mv	a2,a0
   10d58:	00000513          	li	a0,0
   10d5c:	0015f693          	andi	a3,a1,1
   10d60:	00068463          	beqz	a3,10d68 <__muldi3+0x14>
   10d64:	00c50533          	add	a0,a0,a2
   10d68:	0015d593          	srli	a1,a1,0x1
   10d6c:	00161613          	slli	a2,a2,0x1
   10d70:	fe0596e3          	bnez	a1,10d5c <__muldi3+0x8>
   10d74:	00008067          	ret

0000000000010d78 <__multi3>:
   10d78:	ff010113          	addi	sp,sp,-16
   10d7c:	00068313          	mv	t1,a3
   10d80:	00113423          	sd	ra,8(sp)
   10d84:	00050e13          	mv	t3,a0
   10d88:	00050693          	mv	a3,a0
   10d8c:	00060893          	mv	a7,a2
   10d90:	00000713          	li	a4,0
   10d94:	00000793          	li	a5,0
   10d98:	00000813          	li	a6,0
   10d9c:	0018fe93          	andi	t4,a7,1
   10da0:	00171513          	slli	a0,a4,0x1
   10da4:	000e8a63          	beqz	t4,10db8 <__multi3+0x40>
   10da8:	01068833          	add	a6,a3,a6
   10dac:	00e787b3          	add	a5,a5,a4
   10db0:	00d83733          	sltu	a4,a6,a3
   10db4:	00f707b3          	add	a5,a4,a5
   10db8:	03f6d713          	srli	a4,a3,0x3f
   10dbc:	0018d893          	srli	a7,a7,0x1
   10dc0:	00e56733          	or	a4,a0,a4
   10dc4:	00169693          	slli	a3,a3,0x1
   10dc8:	fc089ae3          	bnez	a7,10d9c <__multi3+0x24>
   10dcc:	00058863          	beqz	a1,10ddc <__multi3+0x64>
   10dd0:	00060513          	mv	a0,a2
   10dd4:	f81ff0ef          	jal	10d54 <__muldi3>
   10dd8:	00a787b3          	add	a5,a5,a0
   10ddc:	00030a63          	beqz	t1,10df0 <__multi3+0x78>
   10de0:	000e0513          	mv	a0,t3
   10de4:	00030593          	mv	a1,t1
   10de8:	f6dff0ef          	jal	10d54 <__muldi3>
   10dec:	00f507b3          	add	a5,a0,a5
   10df0:	00813083          	ld	ra,8(sp)
   10df4:	00080513          	mv	a0,a6
   10df8:	00078593          	mv	a1,a5
   10dfc:	01010113          	addi	sp,sp,16
   10e00:	00008067          	ret

0000000000010e04 <__fp_lock>:
   10e04:	00000513          	li	a0,0
   10e08:	00008067          	ret

0000000000010e0c <stdio_exit_handler>:
   10e0c:	00013637          	lui	a2,0x13
   10e10:	000125b7          	lui	a1,0x12
   10e14:	00013537          	lui	a0,0x13
   10e18:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10e1c:	5e058593          	addi	a1,a1,1504 # 125e0 <_fclose_r>
   10e20:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10e24:	34c0006f          	j	11170 <_fwalk_sglue>

0000000000010e28 <cleanup_stdio>:
   10e28:	00853583          	ld	a1,8(a0)
   10e2c:	ff010113          	addi	sp,sp,-16
   10e30:	00813023          	sd	s0,0(sp)
   10e34:	00113423          	sd	ra,8(sp)
   10e38:	21818793          	addi	a5,gp,536 # 13a30 <__sf>
   10e3c:	00050413          	mv	s0,a0
   10e40:	00f58463          	beq	a1,a5,10e48 <cleanup_stdio+0x20>
   10e44:	79c010ef          	jal	125e0 <_fclose_r>
   10e48:	01043583          	ld	a1,16(s0)
   10e4c:	2c818793          	addi	a5,gp,712 # 13ae0 <__sf+0xb0>
   10e50:	00f58663          	beq	a1,a5,10e5c <cleanup_stdio+0x34>
   10e54:	00040513          	mv	a0,s0
   10e58:	788010ef          	jal	125e0 <_fclose_r>
   10e5c:	01843583          	ld	a1,24(s0)
   10e60:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10e64:	00f58c63          	beq	a1,a5,10e7c <cleanup_stdio+0x54>
   10e68:	00040513          	mv	a0,s0
   10e6c:	00013403          	ld	s0,0(sp)
   10e70:	00813083          	ld	ra,8(sp)
   10e74:	01010113          	addi	sp,sp,16
   10e78:	7680106f          	j	125e0 <_fclose_r>
   10e7c:	00813083          	ld	ra,8(sp)
   10e80:	00013403          	ld	s0,0(sp)
   10e84:	01010113          	addi	sp,sp,16
   10e88:	00008067          	ret

0000000000010e8c <__fp_unlock>:
   10e8c:	00000513          	li	a0,0
   10e90:	00008067          	ret

0000000000010e94 <global_stdio_init.part.0>:
   10e94:	fd010113          	addi	sp,sp,-48
   10e98:	000117b7          	lui	a5,0x11
   10e9c:	02813023          	sd	s0,32(sp)
   10ea0:	e0c78793          	addi	a5,a5,-500 # 10e0c <stdio_exit_handler>
   10ea4:	21818413          	addi	s0,gp,536 # 13a30 <__sf>
   10ea8:	02113423          	sd	ra,40(sp)
   10eac:	00913c23          	sd	s1,24(sp)
   10eb0:	01213823          	sd	s2,16(sp)
   10eb4:	01313423          	sd	s3,8(sp)
   10eb8:	01413023          	sd	s4,0(sp)
   10ebc:	1af1b423          	sd	a5,424(gp) # 139c0 <__stdio_exit_handler>
   10ec0:	00800613          	li	a2,8
   10ec4:	00400793          	li	a5,4
   10ec8:	00000593          	li	a1,0
   10ecc:	2bc18513          	addi	a0,gp,700 # 13ad4 <__sf+0xa4>
   10ed0:	00f42823          	sw	a5,16(s0)
   10ed4:	00043023          	sd	zero,0(s0)
   10ed8:	00043423          	sd	zero,8(s0)
   10edc:	0a042623          	sw	zero,172(s0)
   10ee0:	00043c23          	sd	zero,24(s0)
   10ee4:	02042023          	sw	zero,32(s0)
   10ee8:	02042423          	sw	zero,40(s0)
   10eec:	7b8000ef          	jal	116a4 <memset>
   10ef0:	00011a37          	lui	s4,0x11
   10ef4:	000119b7          	lui	s3,0x11
   10ef8:	00011937          	lui	s2,0x11
   10efc:	000114b7          	lui	s1,0x11
   10f00:	000107b7          	lui	a5,0x10
   10f04:	240a0a13          	addi	s4,s4,576 # 11240 <__sread>
   10f08:	2a498993          	addi	s3,s3,676 # 112a4 <__swrite>
   10f0c:	32c90913          	addi	s2,s2,812 # 1132c <__sseek>
   10f10:	39048493          	addi	s1,s1,912 # 11390 <__sclose>
   10f14:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10f18:	00800613          	li	a2,8
   10f1c:	00000593          	li	a1,0
   10f20:	36c18513          	addi	a0,gp,876 # 13b84 <__sf+0x154>
   10f24:	0cf42023          	sw	a5,192(s0)
   10f28:	03443c23          	sd	s4,56(s0)
   10f2c:	05343023          	sd	s3,64(s0)
   10f30:	05243423          	sd	s2,72(s0)
   10f34:	04943823          	sd	s1,80(s0)
   10f38:	02843823          	sd	s0,48(s0)
   10f3c:	0a043823          	sd	zero,176(s0)
   10f40:	0a043c23          	sd	zero,184(s0)
   10f44:	14042e23          	sw	zero,348(s0)
   10f48:	0c043423          	sd	zero,200(s0)
   10f4c:	0c042823          	sw	zero,208(s0)
   10f50:	0c042c23          	sw	zero,216(s0)
   10f54:	750000ef          	jal	116a4 <memset>
   10f58:	000207b7          	lui	a5,0x20
   10f5c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc092>
   10f60:	2c818713          	addi	a4,gp,712 # 13ae0 <__sf+0xb0>
   10f64:	41c18513          	addi	a0,gp,1052 # 13c34 <__sf+0x204>
   10f68:	00800613          	li	a2,8
   10f6c:	00000593          	li	a1,0
   10f70:	0f443423          	sd	s4,232(s0)
   10f74:	0f343823          	sd	s3,240(s0)
   10f78:	0f243c23          	sd	s2,248(s0)
   10f7c:	10943023          	sd	s1,256(s0)
   10f80:	16f42823          	sw	a5,368(s0)
   10f84:	16043023          	sd	zero,352(s0)
   10f88:	16043423          	sd	zero,360(s0)
   10f8c:	20042623          	sw	zero,524(s0)
   10f90:	16043c23          	sd	zero,376(s0)
   10f94:	18042023          	sw	zero,384(s0)
   10f98:	18042423          	sw	zero,392(s0)
   10f9c:	0ee43023          	sd	a4,224(s0)
   10fa0:	704000ef          	jal	116a4 <memset>
   10fa4:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10fa8:	19443c23          	sd	s4,408(s0)
   10fac:	1b343023          	sd	s3,416(s0)
   10fb0:	1b243423          	sd	s2,424(s0)
   10fb4:	1a943823          	sd	s1,432(s0)
   10fb8:	02813083          	ld	ra,40(sp)
   10fbc:	18f43823          	sd	a5,400(s0)
   10fc0:	02013403          	ld	s0,32(sp)
   10fc4:	01813483          	ld	s1,24(sp)
   10fc8:	01013903          	ld	s2,16(sp)
   10fcc:	00813983          	ld	s3,8(sp)
   10fd0:	00013a03          	ld	s4,0(sp)
   10fd4:	03010113          	addi	sp,sp,48
   10fd8:	00008067          	ret

0000000000010fdc <__sfp>:
   10fdc:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   10fe0:	fd010113          	addi	sp,sp,-48
   10fe4:	00913c23          	sd	s1,24(sp)
   10fe8:	02113423          	sd	ra,40(sp)
   10fec:	02813023          	sd	s0,32(sp)
   10ff0:	00050493          	mv	s1,a0
   10ff4:	10078463          	beqz	a5,110fc <__sfp+0x120>
   10ff8:	000136b7          	lui	a3,0x13
   10ffc:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   11000:	0086a703          	lw	a4,8(a3)
   11004:	08e05c63          	blez	a4,1109c <__sfp+0xc0>
   11008:	02071713          	slli	a4,a4,0x20
   1100c:	02075713          	srli	a4,a4,0x20
   11010:	00171793          	slli	a5,a4,0x1
   11014:	00e787b3          	add	a5,a5,a4
   11018:	0106b403          	ld	s0,16(a3)
   1101c:	00279793          	slli	a5,a5,0x2
   11020:	40e787b3          	sub	a5,a5,a4
   11024:	00479793          	slli	a5,a5,0x4
   11028:	00f407b3          	add	a5,s0,a5
   1102c:	00c0006f          	j	11038 <__sfp+0x5c>
   11030:	0b040413          	addi	s0,s0,176
   11034:	06f40463          	beq	s0,a5,1109c <__sfp+0xc0>
   11038:	01041703          	lh	a4,16(s0)
   1103c:	fe071ae3          	bnez	a4,11030 <__sfp+0x54>
   11040:	ffff07b7          	lui	a5,0xffff0
   11044:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc081>
   11048:	00f42823          	sw	a5,16(s0)
   1104c:	0a042623          	sw	zero,172(s0)
   11050:	00043023          	sd	zero,0(s0)
   11054:	00043423          	sd	zero,8(s0)
   11058:	00043c23          	sd	zero,24(s0)
   1105c:	02042023          	sw	zero,32(s0)
   11060:	02042423          	sw	zero,40(s0)
   11064:	00800613          	li	a2,8
   11068:	00000593          	li	a1,0
   1106c:	0a440513          	addi	a0,s0,164
   11070:	634000ef          	jal	116a4 <memset>
   11074:	04043c23          	sd	zero,88(s0)
   11078:	06042023          	sw	zero,96(s0)
   1107c:	06043c23          	sd	zero,120(s0)
   11080:	08042023          	sw	zero,128(s0)
   11084:	02813083          	ld	ra,40(sp)
   11088:	00040513          	mv	a0,s0
   1108c:	02013403          	ld	s0,32(sp)
   11090:	01813483          	ld	s1,24(sp)
   11094:	03010113          	addi	sp,sp,48
   11098:	00008067          	ret
   1109c:	0006b403          	ld	s0,0(a3)
   110a0:	00040663          	beqz	s0,110ac <__sfp+0xd0>
   110a4:	00040693          	mv	a3,s0
   110a8:	f59ff06f          	j	11000 <__sfp+0x24>
   110ac:	2d800593          	li	a1,728
   110b0:	00048513          	mv	a0,s1
   110b4:	00d13423          	sd	a3,8(sp)
   110b8:	43d000ef          	jal	11cf4 <_malloc_r>
   110bc:	00813683          	ld	a3,8(sp)
   110c0:	00050413          	mv	s0,a0
   110c4:	04050063          	beqz	a0,11104 <__sfp+0x128>
   110c8:	00400793          	li	a5,4
   110cc:	00f52423          	sw	a5,8(a0)
   110d0:	01850513          	addi	a0,a0,24
   110d4:	00043023          	sd	zero,0(s0)
   110d8:	00a43823          	sd	a0,16(s0)
   110dc:	2c000613          	li	a2,704
   110e0:	00000593          	li	a1,0
   110e4:	00d13423          	sd	a3,8(sp)
   110e8:	5bc000ef          	jal	116a4 <memset>
   110ec:	00813683          	ld	a3,8(sp)
   110f0:	0086b023          	sd	s0,0(a3)
   110f4:	00040693          	mv	a3,s0
   110f8:	f09ff06f          	j	11000 <__sfp+0x24>
   110fc:	d99ff0ef          	jal	10e94 <global_stdio_init.part.0>
   11100:	ef9ff06f          	j	10ff8 <__sfp+0x1c>
   11104:	0006b023          	sd	zero,0(a3)
   11108:	00c00793          	li	a5,12
   1110c:	00f4a023          	sw	a5,0(s1)
   11110:	f75ff06f          	j	11084 <__sfp+0xa8>

0000000000011114 <__sinit>:
   11114:	04853783          	ld	a5,72(a0)
   11118:	00078463          	beqz	a5,11120 <__sinit+0xc>
   1111c:	00008067          	ret
   11120:	000117b7          	lui	a5,0x11
   11124:	1a81b703          	ld	a4,424(gp) # 139c0 <__stdio_exit_handler>
   11128:	e2878793          	addi	a5,a5,-472 # 10e28 <cleanup_stdio>
   1112c:	04f53423          	sd	a5,72(a0)
   11130:	fe0716e3          	bnez	a4,1111c <__sinit+0x8>
   11134:	d61ff06f          	j	10e94 <global_stdio_init.part.0>

0000000000011138 <__sfp_lock_acquire>:
   11138:	00008067          	ret

000000000001113c <__sfp_lock_release>:
   1113c:	00008067          	ret

0000000000011140 <__fp_lock_all>:
   11140:	00013637          	lui	a2,0x13
   11144:	000115b7          	lui	a1,0x11
   11148:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1114c:	e0458593          	addi	a1,a1,-508 # 10e04 <__fp_lock>
   11150:	00000513          	li	a0,0
   11154:	01c0006f          	j	11170 <_fwalk_sglue>

0000000000011158 <__fp_unlock_all>:
   11158:	00013637          	lui	a2,0x13
   1115c:	000115b7          	lui	a1,0x11
   11160:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11164:	e8c58593          	addi	a1,a1,-372 # 10e8c <__fp_unlock>
   11168:	00000513          	li	a0,0
   1116c:	0040006f          	j	11170 <_fwalk_sglue>

0000000000011170 <_fwalk_sglue>:
   11170:	fb010113          	addi	sp,sp,-80
   11174:	03213823          	sd	s2,48(sp)
   11178:	03313423          	sd	s3,40(sp)
   1117c:	03413023          	sd	s4,32(sp)
   11180:	01513c23          	sd	s5,24(sp)
   11184:	01613823          	sd	s6,16(sp)
   11188:	01713423          	sd	s7,8(sp)
   1118c:	04113423          	sd	ra,72(sp)
   11190:	04813023          	sd	s0,64(sp)
   11194:	02913c23          	sd	s1,56(sp)
   11198:	00060913          	mv	s2,a2
   1119c:	00050a13          	mv	s4,a0
   111a0:	00058a93          	mv	s5,a1
   111a4:	00000b13          	li	s6,0
   111a8:	00100b93          	li	s7,1
   111ac:	fff00993          	li	s3,-1
   111b0:	00892783          	lw	a5,8(s2)
   111b4:	04f05a63          	blez	a5,11208 <_fwalk_sglue+0x98>
   111b8:	02079793          	slli	a5,a5,0x20
   111bc:	0207d793          	srli	a5,a5,0x20
   111c0:	00179493          	slli	s1,a5,0x1
   111c4:	00f484b3          	add	s1,s1,a5
   111c8:	01093403          	ld	s0,16(s2)
   111cc:	00249493          	slli	s1,s1,0x2
   111d0:	40f484b3          	sub	s1,s1,a5
   111d4:	00449493          	slli	s1,s1,0x4
   111d8:	009404b3          	add	s1,s0,s1
   111dc:	01045783          	lhu	a5,16(s0)
   111e0:	02fbf063          	bgeu	s7,a5,11200 <_fwalk_sglue+0x90>
   111e4:	01241783          	lh	a5,18(s0)
   111e8:	00040593          	mv	a1,s0
   111ec:	000a0513          	mv	a0,s4
   111f0:	01378863          	beq	a5,s3,11200 <_fwalk_sglue+0x90>
   111f4:	000a80e7          	jalr	s5
   111f8:	01656b33          	or	s6,a0,s6
   111fc:	000b0b1b          	sext.w	s6,s6
   11200:	0b040413          	addi	s0,s0,176
   11204:	fc941ce3          	bne	s0,s1,111dc <_fwalk_sglue+0x6c>
   11208:	00093903          	ld	s2,0(s2)
   1120c:	fa0912e3          	bnez	s2,111b0 <_fwalk_sglue+0x40>
   11210:	04813083          	ld	ra,72(sp)
   11214:	04013403          	ld	s0,64(sp)
   11218:	03813483          	ld	s1,56(sp)
   1121c:	03013903          	ld	s2,48(sp)
   11220:	02813983          	ld	s3,40(sp)
   11224:	02013a03          	ld	s4,32(sp)
   11228:	01813a83          	ld	s5,24(sp)
   1122c:	00813b83          	ld	s7,8(sp)
   11230:	000b0513          	mv	a0,s6
   11234:	01013b03          	ld	s6,16(sp)
   11238:	05010113          	addi	sp,sp,80
   1123c:	00008067          	ret

0000000000011240 <__sread>:
   11240:	ff010113          	addi	sp,sp,-16
   11244:	00813023          	sd	s0,0(sp)
   11248:	00058413          	mv	s0,a1
   1124c:	01259583          	lh	a1,18(a1)
   11250:	00113423          	sd	ra,8(sp)
   11254:	2ec000ef          	jal	11540 <_read_r>
   11258:	02054063          	bltz	a0,11278 <__sread+0x38>
   1125c:	09043783          	ld	a5,144(s0)
   11260:	00813083          	ld	ra,8(sp)
   11264:	00a787b3          	add	a5,a5,a0
   11268:	08f43823          	sd	a5,144(s0)
   1126c:	00013403          	ld	s0,0(sp)
   11270:	01010113          	addi	sp,sp,16
   11274:	00008067          	ret
   11278:	01045783          	lhu	a5,16(s0)
   1127c:	fffff737          	lui	a4,0xfffff
   11280:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   11284:	00e7f7b3          	and	a5,a5,a4
   11288:	00813083          	ld	ra,8(sp)
   1128c:	00f41823          	sh	a5,16(s0)
   11290:	00013403          	ld	s0,0(sp)
   11294:	01010113          	addi	sp,sp,16
   11298:	00008067          	ret

000000000001129c <__seofread>:
   1129c:	00000513          	li	a0,0
   112a0:	00008067          	ret

00000000000112a4 <__swrite>:
   112a4:	01059783          	lh	a5,16(a1)
   112a8:	fd010113          	addi	sp,sp,-48
   112ac:	00068313          	mv	t1,a3
   112b0:	02113423          	sd	ra,40(sp)
   112b4:	1007f693          	andi	a3,a5,256
   112b8:	00058713          	mv	a4,a1
   112bc:	00060893          	mv	a7,a2
   112c0:	00050813          	mv	a6,a0
   112c4:	02069863          	bnez	a3,112f4 <__swrite+0x50>
   112c8:	fffff6b7          	lui	a3,0xfffff
   112cc:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   112d0:	02813083          	ld	ra,40(sp)
   112d4:	00d7f7b3          	and	a5,a5,a3
   112d8:	01271583          	lh	a1,18(a4)
   112dc:	00f71823          	sh	a5,16(a4)
   112e0:	00030693          	mv	a3,t1
   112e4:	00088613          	mv	a2,a7
   112e8:	00080513          	mv	a0,a6
   112ec:	03010113          	addi	sp,sp,48
   112f0:	2b80006f          	j	115a8 <_write_r>
   112f4:	01259583          	lh	a1,18(a1)
   112f8:	00c13823          	sd	a2,16(sp)
   112fc:	00200693          	li	a3,2
   11300:	00000613          	li	a2,0
   11304:	00613c23          	sd	t1,24(sp)
   11308:	00e13023          	sd	a4,0(sp)
   1130c:	00a13423          	sd	a0,8(sp)
   11310:	1c8000ef          	jal	114d8 <_lseek_r>
   11314:	00013703          	ld	a4,0(sp)
   11318:	01813303          	ld	t1,24(sp)
   1131c:	01013883          	ld	a7,16(sp)
   11320:	01071783          	lh	a5,16(a4)
   11324:	00813803          	ld	a6,8(sp)
   11328:	fa1ff06f          	j	112c8 <__swrite+0x24>

000000000001132c <__sseek>:
   1132c:	ff010113          	addi	sp,sp,-16
   11330:	00813023          	sd	s0,0(sp)
   11334:	00058413          	mv	s0,a1
   11338:	01259583          	lh	a1,18(a1)
   1133c:	00113423          	sd	ra,8(sp)
   11340:	198000ef          	jal	114d8 <_lseek_r>
   11344:	fff00713          	li	a4,-1
   11348:	01041783          	lh	a5,16(s0)
   1134c:	02e50263          	beq	a0,a4,11370 <__sseek+0x44>
   11350:	00001737          	lui	a4,0x1
   11354:	00e7e7b3          	or	a5,a5,a4
   11358:	00813083          	ld	ra,8(sp)
   1135c:	08a43823          	sd	a0,144(s0)
   11360:	00f41823          	sh	a5,16(s0)
   11364:	00013403          	ld	s0,0(sp)
   11368:	01010113          	addi	sp,sp,16
   1136c:	00008067          	ret
   11370:	80050713          	addi	a4,a0,-2048
   11374:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   11378:	00e7f7b3          	and	a5,a5,a4
   1137c:	00813083          	ld	ra,8(sp)
   11380:	00f41823          	sh	a5,16(s0)
   11384:	00013403          	ld	s0,0(sp)
   11388:	01010113          	addi	sp,sp,16
   1138c:	00008067          	ret

0000000000011390 <__sclose>:
   11390:	01259583          	lh	a1,18(a1)
   11394:	0040006f          	j	11398 <_close_r>

0000000000011398 <_close_r>:
   11398:	fe010113          	addi	sp,sp,-32
   1139c:	00813823          	sd	s0,16(sp)
   113a0:	00913423          	sd	s1,8(sp)
   113a4:	00050493          	mv	s1,a0
   113a8:	00058513          	mv	a0,a1
   113ac:	00113c23          	sd	ra,24(sp)
   113b0:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   113b4:	7e4010ef          	jal	12b98 <_close>
   113b8:	fff00793          	li	a5,-1
   113bc:	00f50c63          	beq	a0,a5,113d4 <_close_r+0x3c>
   113c0:	01813083          	ld	ra,24(sp)
   113c4:	01013403          	ld	s0,16(sp)
   113c8:	00813483          	ld	s1,8(sp)
   113cc:	02010113          	addi	sp,sp,32
   113d0:	00008067          	ret
   113d4:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   113d8:	fe0784e3          	beqz	a5,113c0 <_close_r+0x28>
   113dc:	01813083          	ld	ra,24(sp)
   113e0:	01013403          	ld	s0,16(sp)
   113e4:	00f4a023          	sw	a5,0(s1)
   113e8:	00813483          	ld	s1,8(sp)
   113ec:	02010113          	addi	sp,sp,32
   113f0:	00008067          	ret

00000000000113f4 <_reclaim_reent>:
   113f4:	1901b783          	ld	a5,400(gp) # 139a8 <_impure_ptr>
   113f8:	0ca78e63          	beq	a5,a0,114d4 <_reclaim_reent+0xe0>
   113fc:	06853583          	ld	a1,104(a0)
   11400:	fd010113          	addi	sp,sp,-48
   11404:	00913c23          	sd	s1,24(sp)
   11408:	02113423          	sd	ra,40(sp)
   1140c:	02813023          	sd	s0,32(sp)
   11410:	00050493          	mv	s1,a0
   11414:	04058863          	beqz	a1,11464 <_reclaim_reent+0x70>
   11418:	01213823          	sd	s2,16(sp)
   1141c:	01313423          	sd	s3,8(sp)
   11420:	00000913          	li	s2,0
   11424:	20000993          	li	s3,512
   11428:	012587b3          	add	a5,a1,s2
   1142c:	0007b403          	ld	s0,0(a5)
   11430:	00040e63          	beqz	s0,1144c <_reclaim_reent+0x58>
   11434:	00040593          	mv	a1,s0
   11438:	00043403          	ld	s0,0(s0)
   1143c:	00048513          	mv	a0,s1
   11440:	5b0000ef          	jal	119f0 <_free_r>
   11444:	fe0418e3          	bnez	s0,11434 <_reclaim_reent+0x40>
   11448:	0684b583          	ld	a1,104(s1)
   1144c:	00890913          	addi	s2,s2,8
   11450:	fd391ce3          	bne	s2,s3,11428 <_reclaim_reent+0x34>
   11454:	00048513          	mv	a0,s1
   11458:	598000ef          	jal	119f0 <_free_r>
   1145c:	01013903          	ld	s2,16(sp)
   11460:	00813983          	ld	s3,8(sp)
   11464:	0504b583          	ld	a1,80(s1)
   11468:	00058663          	beqz	a1,11474 <_reclaim_reent+0x80>
   1146c:	00048513          	mv	a0,s1
   11470:	580000ef          	jal	119f0 <_free_r>
   11474:	0604b403          	ld	s0,96(s1)
   11478:	00040c63          	beqz	s0,11490 <_reclaim_reent+0x9c>
   1147c:	00040593          	mv	a1,s0
   11480:	00043403          	ld	s0,0(s0)
   11484:	00048513          	mv	a0,s1
   11488:	568000ef          	jal	119f0 <_free_r>
   1148c:	fe0418e3          	bnez	s0,1147c <_reclaim_reent+0x88>
   11490:	0784b583          	ld	a1,120(s1)
   11494:	00058663          	beqz	a1,114a0 <_reclaim_reent+0xac>
   11498:	00048513          	mv	a0,s1
   1149c:	554000ef          	jal	119f0 <_free_r>
   114a0:	0484b783          	ld	a5,72(s1)
   114a4:	00078e63          	beqz	a5,114c0 <_reclaim_reent+0xcc>
   114a8:	02013403          	ld	s0,32(sp)
   114ac:	02813083          	ld	ra,40(sp)
   114b0:	00048513          	mv	a0,s1
   114b4:	01813483          	ld	s1,24(sp)
   114b8:	03010113          	addi	sp,sp,48
   114bc:	00078067          	jr	a5
   114c0:	02813083          	ld	ra,40(sp)
   114c4:	02013403          	ld	s0,32(sp)
   114c8:	01813483          	ld	s1,24(sp)
   114cc:	03010113          	addi	sp,sp,48
   114d0:	00008067          	ret
   114d4:	00008067          	ret

00000000000114d8 <_lseek_r>:
   114d8:	fe010113          	addi	sp,sp,-32
   114dc:	00058793          	mv	a5,a1
   114e0:	00813823          	sd	s0,16(sp)
   114e4:	00913423          	sd	s1,8(sp)
   114e8:	00060593          	mv	a1,a2
   114ec:	00050493          	mv	s1,a0
   114f0:	00068613          	mv	a2,a3
   114f4:	00078513          	mv	a0,a5
   114f8:	00113c23          	sd	ra,24(sp)
   114fc:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   11500:	708010ef          	jal	12c08 <_lseek>
   11504:	fff00793          	li	a5,-1
   11508:	00f50c63          	beq	a0,a5,11520 <_lseek_r+0x48>
   1150c:	01813083          	ld	ra,24(sp)
   11510:	01013403          	ld	s0,16(sp)
   11514:	00813483          	ld	s1,8(sp)
   11518:	02010113          	addi	sp,sp,32
   1151c:	00008067          	ret
   11520:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   11524:	fe0784e3          	beqz	a5,1150c <_lseek_r+0x34>
   11528:	01813083          	ld	ra,24(sp)
   1152c:	01013403          	ld	s0,16(sp)
   11530:	00f4a023          	sw	a5,0(s1)
   11534:	00813483          	ld	s1,8(sp)
   11538:	02010113          	addi	sp,sp,32
   1153c:	00008067          	ret

0000000000011540 <_read_r>:
   11540:	fe010113          	addi	sp,sp,-32
   11544:	00058793          	mv	a5,a1
   11548:	00813823          	sd	s0,16(sp)
   1154c:	00913423          	sd	s1,8(sp)
   11550:	00060593          	mv	a1,a2
   11554:	00050493          	mv	s1,a0
   11558:	00068613          	mv	a2,a3
   1155c:	00078513          	mv	a0,a5
   11560:	00113c23          	sd	ra,24(sp)
   11564:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   11568:	6e0010ef          	jal	12c48 <_read>
   1156c:	fff00793          	li	a5,-1
   11570:	00f50c63          	beq	a0,a5,11588 <_read_r+0x48>
   11574:	01813083          	ld	ra,24(sp)
   11578:	01013403          	ld	s0,16(sp)
   1157c:	00813483          	ld	s1,8(sp)
   11580:	02010113          	addi	sp,sp,32
   11584:	00008067          	ret
   11588:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   1158c:	fe0784e3          	beqz	a5,11574 <_read_r+0x34>
   11590:	01813083          	ld	ra,24(sp)
   11594:	01013403          	ld	s0,16(sp)
   11598:	00f4a023          	sw	a5,0(s1)
   1159c:	00813483          	ld	s1,8(sp)
   115a0:	02010113          	addi	sp,sp,32
   115a4:	00008067          	ret

00000000000115a8 <_write_r>:
   115a8:	fe010113          	addi	sp,sp,-32
   115ac:	00058793          	mv	a5,a1
   115b0:	00813823          	sd	s0,16(sp)
   115b4:	00913423          	sd	s1,8(sp)
   115b8:	00060593          	mv	a1,a2
   115bc:	00050493          	mv	s1,a0
   115c0:	00068613          	mv	a2,a3
   115c4:	00078513          	mv	a0,a5
   115c8:	00113c23          	sd	ra,24(sp)
   115cc:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   115d0:	730010ef          	jal	12d00 <_write>
   115d4:	fff00793          	li	a5,-1
   115d8:	00f50c63          	beq	a0,a5,115f0 <_write_r+0x48>
   115dc:	01813083          	ld	ra,24(sp)
   115e0:	01013403          	ld	s0,16(sp)
   115e4:	00813483          	ld	s1,8(sp)
   115e8:	02010113          	addi	sp,sp,32
   115ec:	00008067          	ret
   115f0:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   115f4:	fe0784e3          	beqz	a5,115dc <_write_r+0x34>
   115f8:	01813083          	ld	ra,24(sp)
   115fc:	01013403          	ld	s0,16(sp)
   11600:	00f4a023          	sw	a5,0(s1)
   11604:	00813483          	ld	s1,8(sp)
   11608:	02010113          	addi	sp,sp,32
   1160c:	00008067          	ret

0000000000011610 <__libc_init_array>:
   11610:	fe010113          	addi	sp,sp,-32
   11614:	00813823          	sd	s0,16(sp)
   11618:	01213023          	sd	s2,0(sp)
   1161c:	00013437          	lui	s0,0x13
   11620:	00013937          	lui	s2,0x13
   11624:	00113c23          	sd	ra,24(sp)
   11628:	00913423          	sd	s1,8(sp)
   1162c:	00090913          	mv	s2,s2
   11630:	00040413          	mv	s0,s0
   11634:	02890263          	beq	s2,s0,11658 <__libc_init_array+0x48>
   11638:	40890933          	sub	s2,s2,s0
   1163c:	40395913          	srai	s2,s2,0x3
   11640:	00000493          	li	s1,0
   11644:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   11648:	00148493          	addi	s1,s1,1
   1164c:	00840413          	addi	s0,s0,8
   11650:	000780e7          	jalr	a5
   11654:	ff24e8e3          	bltu	s1,s2,11644 <__libc_init_array+0x34>
   11658:	00013937          	lui	s2,0x13
   1165c:	00013437          	lui	s0,0x13
   11660:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11664:	00040413          	mv	s0,s0
   11668:	02890263          	beq	s2,s0,1168c <__libc_init_array+0x7c>
   1166c:	40890933          	sub	s2,s2,s0
   11670:	40395913          	srai	s2,s2,0x3
   11674:	00000493          	li	s1,0
   11678:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   1167c:	00148493          	addi	s1,s1,1
   11680:	00840413          	addi	s0,s0,8
   11684:	000780e7          	jalr	a5
   11688:	ff24e8e3          	bltu	s1,s2,11678 <__libc_init_array+0x68>
   1168c:	01813083          	ld	ra,24(sp)
   11690:	01013403          	ld	s0,16(sp)
   11694:	00813483          	ld	s1,8(sp)
   11698:	00013903          	ld	s2,0(sp)
   1169c:	02010113          	addi	sp,sp,32
   116a0:	00008067          	ret

00000000000116a4 <memset>:
   116a4:	00f00313          	li	t1,15
   116a8:	00050713          	mv	a4,a0
   116ac:	02c37a63          	bgeu	t1,a2,116e0 <memset+0x3c>
   116b0:	00f77793          	andi	a5,a4,15
   116b4:	0a079063          	bnez	a5,11754 <memset+0xb0>
   116b8:	06059e63          	bnez	a1,11734 <memset+0x90>
   116bc:	ff067693          	andi	a3,a2,-16
   116c0:	00f67613          	andi	a2,a2,15
   116c4:	00e686b3          	add	a3,a3,a4
   116c8:	00b73023          	sd	a1,0(a4)
   116cc:	00b73423          	sd	a1,8(a4)
   116d0:	01070713          	addi	a4,a4,16
   116d4:	fed76ae3          	bltu	a4,a3,116c8 <memset+0x24>
   116d8:	00061463          	bnez	a2,116e0 <memset+0x3c>
   116dc:	00008067          	ret
   116e0:	40c306b3          	sub	a3,t1,a2
   116e4:	00269693          	slli	a3,a3,0x2
   116e8:	00000297          	auipc	t0,0x0
   116ec:	005686b3          	add	a3,a3,t0
   116f0:	00c68067          	jr	12(a3)
   116f4:	00b70723          	sb	a1,14(a4)
   116f8:	00b706a3          	sb	a1,13(a4)
   116fc:	00b70623          	sb	a1,12(a4)
   11700:	00b705a3          	sb	a1,11(a4)
   11704:	00b70523          	sb	a1,10(a4)
   11708:	00b704a3          	sb	a1,9(a4)
   1170c:	00b70423          	sb	a1,8(a4)
   11710:	00b703a3          	sb	a1,7(a4)
   11714:	00b70323          	sb	a1,6(a4)
   11718:	00b702a3          	sb	a1,5(a4)
   1171c:	00b70223          	sb	a1,4(a4)
   11720:	00b701a3          	sb	a1,3(a4)
   11724:	00b70123          	sb	a1,2(a4)
   11728:	00b700a3          	sb	a1,1(a4)
   1172c:	00b70023          	sb	a1,0(a4)
   11730:	00008067          	ret
   11734:	0ff5f593          	zext.b	a1,a1
   11738:	00859693          	slli	a3,a1,0x8
   1173c:	00d5e5b3          	or	a1,a1,a3
   11740:	01059693          	slli	a3,a1,0x10
   11744:	00d5e5b3          	or	a1,a1,a3
   11748:	02059693          	slli	a3,a1,0x20
   1174c:	00d5e5b3          	or	a1,a1,a3
   11750:	f6dff06f          	j	116bc <memset+0x18>
   11754:	00279693          	slli	a3,a5,0x2
   11758:	00000297          	auipc	t0,0x0
   1175c:	005686b3          	add	a3,a3,t0
   11760:	00008293          	mv	t0,ra
   11764:	f98680e7          	jalr	-104(a3)
   11768:	00028093          	mv	ra,t0
   1176c:	ff078793          	addi	a5,a5,-16
   11770:	40f70733          	sub	a4,a4,a5
   11774:	00f60633          	add	a2,a2,a5
   11778:	f6c374e3          	bgeu	t1,a2,116e0 <memset+0x3c>
   1177c:	f3dff06f          	j	116b8 <memset+0x14>

0000000000011780 <__call_exitprocs>:
   11780:	fb010113          	addi	sp,sp,-80
   11784:	03413023          	sd	s4,32(sp)
   11788:	03213823          	sd	s2,48(sp)
   1178c:	1b81b903          	ld	s2,440(gp) # 139d0 <__atexit>
   11790:	04113423          	sd	ra,72(sp)
   11794:	06090e63          	beqz	s2,11810 <__call_exitprocs+0x90>
   11798:	03313423          	sd	s3,40(sp)
   1179c:	01513c23          	sd	s5,24(sp)
   117a0:	01613823          	sd	s6,16(sp)
   117a4:	01713423          	sd	s7,8(sp)
   117a8:	04813023          	sd	s0,64(sp)
   117ac:	02913c23          	sd	s1,56(sp)
   117b0:	01813023          	sd	s8,0(sp)
   117b4:	00050b13          	mv	s6,a0
   117b8:	00058b93          	mv	s7,a1
   117bc:	fff00993          	li	s3,-1
   117c0:	00100a93          	li	s5,1
   117c4:	00892403          	lw	s0,8(s2)
   117c8:	fff4041b          	addiw	s0,s0,-1
   117cc:	02044463          	bltz	s0,117f4 <__call_exitprocs+0x74>
   117d0:	01090493          	addi	s1,s2,16
   117d4:	00341793          	slli	a5,s0,0x3
   117d8:	00f484b3          	add	s1,s1,a5
   117dc:	040b8463          	beqz	s7,11824 <__call_exitprocs+0xa4>
   117e0:	2004b783          	ld	a5,512(s1)
   117e4:	05778063          	beq	a5,s7,11824 <__call_exitprocs+0xa4>
   117e8:	fff4041b          	addiw	s0,s0,-1
   117ec:	ff848493          	addi	s1,s1,-8
   117f0:	ff3418e3          	bne	s0,s3,117e0 <__call_exitprocs+0x60>
   117f4:	04013403          	ld	s0,64(sp)
   117f8:	03813483          	ld	s1,56(sp)
   117fc:	02813983          	ld	s3,40(sp)
   11800:	01813a83          	ld	s5,24(sp)
   11804:	01013b03          	ld	s6,16(sp)
   11808:	00813b83          	ld	s7,8(sp)
   1180c:	00013c03          	ld	s8,0(sp)
   11810:	04813083          	ld	ra,72(sp)
   11814:	03013903          	ld	s2,48(sp)
   11818:	02013a03          	ld	s4,32(sp)
   1181c:	05010113          	addi	sp,sp,80
   11820:	00008067          	ret
   11824:	00892783          	lw	a5,8(s2)
   11828:	0004b683          	ld	a3,0(s1)
   1182c:	fff7879b          	addiw	a5,a5,-1
   11830:	06878a63          	beq	a5,s0,118a4 <__call_exitprocs+0x124>
   11834:	0004b023          	sd	zero,0(s1)
   11838:	02068663          	beqz	a3,11864 <__call_exitprocs+0xe4>
   1183c:	31092783          	lw	a5,784(s2)
   11840:	008a973b          	sllw	a4,s5,s0
   11844:	00892c03          	lw	s8,8(s2)
   11848:	00e7f7b3          	and	a5,a5,a4
   1184c:	02079463          	bnez	a5,11874 <__call_exitprocs+0xf4>
   11850:	000680e7          	jalr	a3
   11854:	00892703          	lw	a4,8(s2)
   11858:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   1185c:	03871e63          	bne	a4,s8,11898 <__call_exitprocs+0x118>
   11860:	03279c63          	bne	a5,s2,11898 <__call_exitprocs+0x118>
   11864:	fff4041b          	addiw	s0,s0,-1
   11868:	ff848493          	addi	s1,s1,-8
   1186c:	f73418e3          	bne	s0,s3,117dc <__call_exitprocs+0x5c>
   11870:	f85ff06f          	j	117f4 <__call_exitprocs+0x74>
   11874:	31492783          	lw	a5,788(s2)
   11878:	1004b583          	ld	a1,256(s1)
   1187c:	00f77733          	and	a4,a4,a5
   11880:	02071663          	bnez	a4,118ac <__call_exitprocs+0x12c>
   11884:	000b0513          	mv	a0,s6
   11888:	000680e7          	jalr	a3
   1188c:	00892703          	lw	a4,8(s2)
   11890:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   11894:	fd8706e3          	beq	a4,s8,11860 <__call_exitprocs+0xe0>
   11898:	f4078ee3          	beqz	a5,117f4 <__call_exitprocs+0x74>
   1189c:	00078913          	mv	s2,a5
   118a0:	f25ff06f          	j	117c4 <__call_exitprocs+0x44>
   118a4:	00892423          	sw	s0,8(s2)
   118a8:	f91ff06f          	j	11838 <__call_exitprocs+0xb8>
   118ac:	00058513          	mv	a0,a1
   118b0:	000680e7          	jalr	a3
   118b4:	fa1ff06f          	j	11854 <__call_exitprocs+0xd4>

00000000000118b8 <atexit>:
   118b8:	00050593          	mv	a1,a0
   118bc:	00000693          	li	a3,0
   118c0:	00000613          	li	a2,0
   118c4:	00000513          	li	a0,0
   118c8:	2340106f          	j	12afc <__register_exitproc>

00000000000118cc <_malloc_trim_r>:
   118cc:	fd010113          	addi	sp,sp,-48
   118d0:	01213823          	sd	s2,16(sp)
   118d4:	00013937          	lui	s2,0x13
   118d8:	02813023          	sd	s0,32(sp)
   118dc:	00913c23          	sd	s1,24(sp)
   118e0:	01313423          	sd	s3,8(sp)
   118e4:	00058413          	mv	s0,a1
   118e8:	02113423          	sd	ra,40(sp)
   118ec:	00050993          	mv	s3,a0
   118f0:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   118f4:	4e5000ef          	jal	125d8 <__malloc_lock>
   118f8:	01093783          	ld	a5,16(s2)
   118fc:	00001737          	lui	a4,0x1
   11900:	0087b483          	ld	s1,8(a5)
   11904:	ffc4f493          	andi	s1,s1,-4
   11908:	7ff48793          	addi	a5,s1,2047
   1190c:	7e078793          	addi	a5,a5,2016
   11910:	40878433          	sub	s0,a5,s0
   11914:	00c45413          	srli	s0,s0,0xc
   11918:	fff40413          	addi	s0,s0,-1
   1191c:	00c41413          	slli	s0,s0,0xc
   11920:	00e44e63          	blt	s0,a4,1193c <_malloc_trim_r+0x70>
   11924:	00000593          	li	a1,0
   11928:	00098513          	mv	a0,s3
   1192c:	118010ef          	jal	12a44 <_sbrk_r>
   11930:	01093783          	ld	a5,16(s2)
   11934:	009787b3          	add	a5,a5,s1
   11938:	02f50663          	beq	a0,a5,11964 <_malloc_trim_r+0x98>
   1193c:	00098513          	mv	a0,s3
   11940:	49d000ef          	jal	125dc <__malloc_unlock>
   11944:	02813083          	ld	ra,40(sp)
   11948:	02013403          	ld	s0,32(sp)
   1194c:	01813483          	ld	s1,24(sp)
   11950:	01013903          	ld	s2,16(sp)
   11954:	00813983          	ld	s3,8(sp)
   11958:	00000513          	li	a0,0
   1195c:	03010113          	addi	sp,sp,48
   11960:	00008067          	ret
   11964:	408005b3          	neg	a1,s0
   11968:	00098513          	mv	a0,s3
   1196c:	0d8010ef          	jal	12a44 <_sbrk_r>
   11970:	fff00793          	li	a5,-1
   11974:	04f50463          	beq	a0,a5,119bc <_malloc_trim_r+0xf0>
   11978:	01093683          	ld	a3,16(s2)
   1197c:	4281a783          	lw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   11980:	408484b3          	sub	s1,s1,s0
   11984:	0014e493          	ori	s1,s1,1
   11988:	00098513          	mv	a0,s3
   1198c:	408787bb          	subw	a5,a5,s0
   11990:	0096b423          	sd	s1,8(a3)
   11994:	42f1a423          	sw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   11998:	445000ef          	jal	125dc <__malloc_unlock>
   1199c:	02813083          	ld	ra,40(sp)
   119a0:	02013403          	ld	s0,32(sp)
   119a4:	01813483          	ld	s1,24(sp)
   119a8:	01013903          	ld	s2,16(sp)
   119ac:	00813983          	ld	s3,8(sp)
   119b0:	00100513          	li	a0,1
   119b4:	03010113          	addi	sp,sp,48
   119b8:	00008067          	ret
   119bc:	00000593          	li	a1,0
   119c0:	00098513          	mv	a0,s3
   119c4:	080010ef          	jal	12a44 <_sbrk_r>
   119c8:	01093703          	ld	a4,16(s2)
   119cc:	01f00693          	li	a3,31
   119d0:	40e507b3          	sub	a5,a0,a4
   119d4:	f6f6d4e3          	bge	a3,a5,1193c <_malloc_trim_r+0x70>
   119d8:	1981b603          	ld	a2,408(gp) # 139b0 <__malloc_sbrk_base>
   119dc:	0017e793          	ori	a5,a5,1
   119e0:	40c50533          	sub	a0,a0,a2
   119e4:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   119e8:	42a1a423          	sw	a0,1064(gp) # 13c40 <__malloc_current_mallinfo>
   119ec:	f51ff06f          	j	1193c <_malloc_trim_r+0x70>

00000000000119f0 <_free_r>:
   119f0:	12058863          	beqz	a1,11b20 <_free_r+0x130>
   119f4:	fe010113          	addi	sp,sp,-32
   119f8:	00813823          	sd	s0,16(sp)
   119fc:	00b13423          	sd	a1,8(sp)
   11a00:	00050413          	mv	s0,a0
   11a04:	00113c23          	sd	ra,24(sp)
   11a08:	3d1000ef          	jal	125d8 <__malloc_lock>
   11a0c:	00813583          	ld	a1,8(sp)
   11a10:	00013837          	lui	a6,0x13
   11a14:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11a18:	ff85b503          	ld	a0,-8(a1)
   11a1c:	ff058713          	addi	a4,a1,-16
   11a20:	01083883          	ld	a7,16(a6)
   11a24:	ffe57793          	andi	a5,a0,-2
   11a28:	00f70633          	add	a2,a4,a5
   11a2c:	00863683          	ld	a3,8(a2)
   11a30:	00157313          	andi	t1,a0,1
   11a34:	ffc6f693          	andi	a3,a3,-4
   11a38:	18c88e63          	beq	a7,a2,11bd4 <_free_r+0x1e4>
   11a3c:	00d63423          	sd	a3,8(a2)
   11a40:	00d608b3          	add	a7,a2,a3
   11a44:	0088b883          	ld	a7,8(a7)
   11a48:	0018f893          	andi	a7,a7,1
   11a4c:	08031e63          	bnez	t1,11ae8 <_free_r+0xf8>
   11a50:	ff05b303          	ld	t1,-16(a1)
   11a54:	000135b7          	lui	a1,0x13
   11a58:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11a5c:	40670733          	sub	a4,a4,t1
   11a60:	01073503          	ld	a0,16(a4)
   11a64:	006787b3          	add	a5,a5,t1
   11a68:	14b50063          	beq	a0,a1,11ba8 <_free_r+0x1b8>
   11a6c:	01873303          	ld	t1,24(a4)
   11a70:	00653c23          	sd	t1,24(a0)
   11a74:	00a33823          	sd	a0,16(t1) # 10220 <matmulti+0x4>
   11a78:	1a088263          	beqz	a7,11c1c <_free_r+0x22c>
   11a7c:	0017e693          	ori	a3,a5,1
   11a80:	00d73423          	sd	a3,8(a4)
   11a84:	00f63023          	sd	a5,0(a2)
   11a88:	1ff00693          	li	a3,511
   11a8c:	0af6e663          	bltu	a3,a5,11b38 <_free_r+0x148>
   11a90:	0037d793          	srli	a5,a5,0x3
   11a94:	00179693          	slli	a3,a5,0x1
   11a98:	0026869b          	addiw	a3,a3,2
   11a9c:	00369693          	slli	a3,a3,0x3
   11aa0:	00883503          	ld	a0,8(a6)
   11aa4:	00d806b3          	add	a3,a6,a3
   11aa8:	0006b583          	ld	a1,0(a3)
   11aac:	4027d61b          	sraiw	a2,a5,0x2
   11ab0:	00100793          	li	a5,1
   11ab4:	00c797b3          	sll	a5,a5,a2
   11ab8:	00a7e7b3          	or	a5,a5,a0
   11abc:	ff068613          	addi	a2,a3,-16
   11ac0:	00b73823          	sd	a1,16(a4)
   11ac4:	00c73c23          	sd	a2,24(a4)
   11ac8:	00f83423          	sd	a5,8(a6)
   11acc:	00e6b023          	sd	a4,0(a3)
   11ad0:	00e5bc23          	sd	a4,24(a1)
   11ad4:	00040513          	mv	a0,s0
   11ad8:	01013403          	ld	s0,16(sp)
   11adc:	01813083          	ld	ra,24(sp)
   11ae0:	02010113          	addi	sp,sp,32
   11ae4:	2f90006f          	j	125dc <__malloc_unlock>
   11ae8:	02089e63          	bnez	a7,11b24 <_free_r+0x134>
   11aec:	000135b7          	lui	a1,0x13
   11af0:	00d787b3          	add	a5,a5,a3
   11af4:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11af8:	01063683          	ld	a3,16(a2)
   11afc:	0017e893          	ori	a7,a5,1
   11b00:	00f70533          	add	a0,a4,a5
   11b04:	16b68663          	beq	a3,a1,11c70 <_free_r+0x280>
   11b08:	01863603          	ld	a2,24(a2)
   11b0c:	00c6bc23          	sd	a2,24(a3)
   11b10:	00d63823          	sd	a3,16(a2)
   11b14:	01173423          	sd	a7,8(a4)
   11b18:	00f53023          	sd	a5,0(a0)
   11b1c:	f6dff06f          	j	11a88 <_free_r+0x98>
   11b20:	00008067          	ret
   11b24:	00156513          	ori	a0,a0,1
   11b28:	fea5bc23          	sd	a0,-8(a1)
   11b2c:	00f63023          	sd	a5,0(a2)
   11b30:	1ff00693          	li	a3,511
   11b34:	f4f6fee3          	bgeu	a3,a5,11a90 <_free_r+0xa0>
   11b38:	0097d693          	srli	a3,a5,0x9
   11b3c:	00400613          	li	a2,4
   11b40:	0ed66263          	bltu	a2,a3,11c24 <_free_r+0x234>
   11b44:	0067d693          	srli	a3,a5,0x6
   11b48:	00169593          	slli	a1,a3,0x1
   11b4c:	0725859b          	addiw	a1,a1,114
   11b50:	00359593          	slli	a1,a1,0x3
   11b54:	0386861b          	addiw	a2,a3,56
   11b58:	00b805b3          	add	a1,a6,a1
   11b5c:	0005b683          	ld	a3,0(a1)
   11b60:	ff058593          	addi	a1,a1,-16
   11b64:	00d59863          	bne	a1,a3,11b74 <_free_r+0x184>
   11b68:	1240006f          	j	11c8c <_free_r+0x29c>
   11b6c:	0106b683          	ld	a3,16(a3)
   11b70:	00d58863          	beq	a1,a3,11b80 <_free_r+0x190>
   11b74:	0086b603          	ld	a2,8(a3)
   11b78:	ffc67613          	andi	a2,a2,-4
   11b7c:	fec7e8e3          	bltu	a5,a2,11b6c <_free_r+0x17c>
   11b80:	0186b583          	ld	a1,24(a3)
   11b84:	00b73c23          	sd	a1,24(a4)
   11b88:	00d73823          	sd	a3,16(a4)
   11b8c:	00040513          	mv	a0,s0
   11b90:	01013403          	ld	s0,16(sp)
   11b94:	01813083          	ld	ra,24(sp)
   11b98:	00e5b823          	sd	a4,16(a1)
   11b9c:	00e6bc23          	sd	a4,24(a3)
   11ba0:	02010113          	addi	sp,sp,32
   11ba4:	2390006f          	j	125dc <__malloc_unlock>
   11ba8:	0a089263          	bnez	a7,11c4c <_free_r+0x25c>
   11bac:	01863583          	ld	a1,24(a2)
   11bb0:	01063603          	ld	a2,16(a2)
   11bb4:	00f686b3          	add	a3,a3,a5
   11bb8:	0016e793          	ori	a5,a3,1
   11bbc:	00b63c23          	sd	a1,24(a2)
   11bc0:	00c5b823          	sd	a2,16(a1)
   11bc4:	00f73423          	sd	a5,8(a4)
   11bc8:	00d70733          	add	a4,a4,a3
   11bcc:	00d73023          	sd	a3,0(a4)
   11bd0:	f05ff06f          	j	11ad4 <_free_r+0xe4>
   11bd4:	00d786b3          	add	a3,a5,a3
   11bd8:	02031063          	bnez	t1,11bf8 <_free_r+0x208>
   11bdc:	ff05b783          	ld	a5,-16(a1)
   11be0:	40f70733          	sub	a4,a4,a5
   11be4:	01073603          	ld	a2,16(a4)
   11be8:	00f686b3          	add	a3,a3,a5
   11bec:	01873783          	ld	a5,24(a4)
   11bf0:	00f63c23          	sd	a5,24(a2)
   11bf4:	00c7b823          	sd	a2,16(a5)
   11bf8:	0016e613          	ori	a2,a3,1
   11bfc:	1a01b783          	ld	a5,416(gp) # 139b8 <__malloc_trim_threshold>
   11c00:	00c73423          	sd	a2,8(a4)
   11c04:	00e83823          	sd	a4,16(a6)
   11c08:	ecf6e6e3          	bltu	a3,a5,11ad4 <_free_r+0xe4>
   11c0c:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   11c10:	00040513          	mv	a0,s0
   11c14:	cb9ff0ef          	jal	118cc <_malloc_trim_r>
   11c18:	ebdff06f          	j	11ad4 <_free_r+0xe4>
   11c1c:	00d787b3          	add	a5,a5,a3
   11c20:	ed9ff06f          	j	11af8 <_free_r+0x108>
   11c24:	01400613          	li	a2,20
   11c28:	02d67a63          	bgeu	a2,a3,11c5c <_free_r+0x26c>
   11c2c:	05400613          	li	a2,84
   11c30:	06d66c63          	bltu	a2,a3,11ca8 <_free_r+0x2b8>
   11c34:	00c7d693          	srli	a3,a5,0xc
   11c38:	00169593          	slli	a1,a3,0x1
   11c3c:	0de5859b          	addiw	a1,a1,222
   11c40:	00359593          	slli	a1,a1,0x3
   11c44:	06e6861b          	addiw	a2,a3,110
   11c48:	f11ff06f          	j	11b58 <_free_r+0x168>
   11c4c:	0017e693          	ori	a3,a5,1
   11c50:	00d73423          	sd	a3,8(a4)
   11c54:	00f63023          	sd	a5,0(a2)
   11c58:	e7dff06f          	j	11ad4 <_free_r+0xe4>
   11c5c:	00169593          	slli	a1,a3,0x1
   11c60:	0b85859b          	addiw	a1,a1,184
   11c64:	00359593          	slli	a1,a1,0x3
   11c68:	05b6861b          	addiw	a2,a3,91
   11c6c:	eedff06f          	j	11b58 <_free_r+0x168>
   11c70:	02e83423          	sd	a4,40(a6)
   11c74:	02e83023          	sd	a4,32(a6)
   11c78:	00b73c23          	sd	a1,24(a4)
   11c7c:	00b73823          	sd	a1,16(a4)
   11c80:	01173423          	sd	a7,8(a4)
   11c84:	00f53023          	sd	a5,0(a0)
   11c88:	e4dff06f          	j	11ad4 <_free_r+0xe4>
   11c8c:	00883503          	ld	a0,8(a6)
   11c90:	4026561b          	sraiw	a2,a2,0x2
   11c94:	00100793          	li	a5,1
   11c98:	00c797b3          	sll	a5,a5,a2
   11c9c:	00a7e7b3          	or	a5,a5,a0
   11ca0:	00f83423          	sd	a5,8(a6)
   11ca4:	ee1ff06f          	j	11b84 <_free_r+0x194>
   11ca8:	15400613          	li	a2,340
   11cac:	00d66e63          	bltu	a2,a3,11cc8 <_free_r+0x2d8>
   11cb0:	00f7d693          	srli	a3,a5,0xf
   11cb4:	00169593          	slli	a1,a3,0x1
   11cb8:	0f05859b          	addiw	a1,a1,240
   11cbc:	00359593          	slli	a1,a1,0x3
   11cc0:	0776861b          	addiw	a2,a3,119
   11cc4:	e95ff06f          	j	11b58 <_free_r+0x168>
   11cc8:	55400613          	li	a2,1364
   11ccc:	00d66e63          	bltu	a2,a3,11ce8 <_free_r+0x2f8>
   11cd0:	0127d693          	srli	a3,a5,0x12
   11cd4:	00169593          	slli	a1,a3,0x1
   11cd8:	0fa5859b          	addiw	a1,a1,250
   11cdc:	00359593          	slli	a1,a1,0x3
   11ce0:	07c6861b          	addiw	a2,a3,124
   11ce4:	e75ff06f          	j	11b58 <_free_r+0x168>
   11ce8:	7f000593          	li	a1,2032
   11cec:	07e00613          	li	a2,126
   11cf0:	e69ff06f          	j	11b58 <_free_r+0x168>

0000000000011cf4 <_malloc_r>:
   11cf4:	fa010113          	addi	sp,sp,-96
   11cf8:	04813823          	sd	s0,80(sp)
   11cfc:	04113c23          	sd	ra,88(sp)
   11d00:	01758713          	addi	a4,a1,23
   11d04:	02e00793          	li	a5,46
   11d08:	00050413          	mv	s0,a0
   11d0c:	08e7ee63          	bltu	a5,a4,11da8 <_malloc_r+0xb4>
   11d10:	02000713          	li	a4,32
   11d14:	06b76c63          	bltu	a4,a1,11d8c <_malloc_r+0x98>
   11d18:	0c1000ef          	jal	125d8 <__malloc_lock>
   11d1c:	02000713          	li	a4,32
   11d20:	05000693          	li	a3,80
   11d24:	00400893          	li	a7,4
   11d28:	00013837          	lui	a6,0x13
   11d2c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11d30:	00d806b3          	add	a3,a6,a3
   11d34:	0086b783          	ld	a5,8(a3)
   11d38:	ff068613          	addi	a2,a3,-16
   11d3c:	48c78063          	beq	a5,a2,121bc <_malloc_r+0x4c8>
   11d40:	0087b703          	ld	a4,8(a5)
   11d44:	0187b603          	ld	a2,24(a5)
   11d48:	0107b583          	ld	a1,16(a5)
   11d4c:	ffc77713          	andi	a4,a4,-4
   11d50:	00e78733          	add	a4,a5,a4
   11d54:	00873683          	ld	a3,8(a4)
   11d58:	00c5bc23          	sd	a2,24(a1)
   11d5c:	00b63823          	sd	a1,16(a2)
   11d60:	0016e693          	ori	a3,a3,1
   11d64:	00040513          	mv	a0,s0
   11d68:	00d73423          	sd	a3,8(a4)
   11d6c:	00f13423          	sd	a5,8(sp)
   11d70:	06d000ef          	jal	125dc <__malloc_unlock>
   11d74:	00813783          	ld	a5,8(sp)
   11d78:	05813083          	ld	ra,88(sp)
   11d7c:	05013403          	ld	s0,80(sp)
   11d80:	01078513          	addi	a0,a5,16
   11d84:	06010113          	addi	sp,sp,96
   11d88:	00008067          	ret
   11d8c:	00c00793          	li	a5,12
   11d90:	00f42023          	sw	a5,0(s0)
   11d94:	00000513          	li	a0,0
   11d98:	05813083          	ld	ra,88(sp)
   11d9c:	05013403          	ld	s0,80(sp)
   11da0:	06010113          	addi	sp,sp,96
   11da4:	00008067          	ret
   11da8:	00100793          	li	a5,1
   11dac:	ff077713          	andi	a4,a4,-16
   11db0:	01f79793          	slli	a5,a5,0x1f
   11db4:	fcf77ce3          	bgeu	a4,a5,11d8c <_malloc_r+0x98>
   11db8:	fcb76ae3          	bltu	a4,a1,11d8c <_malloc_r+0x98>
   11dbc:	00e13423          	sd	a4,8(sp)
   11dc0:	019000ef          	jal	125d8 <__malloc_lock>
   11dc4:	00813703          	ld	a4,8(sp)
   11dc8:	1f700793          	li	a5,503
   11dcc:	4ee7fa63          	bgeu	a5,a4,122c0 <_malloc_r+0x5cc>
   11dd0:	00975793          	srli	a5,a4,0x9
   11dd4:	18078a63          	beqz	a5,11f68 <_malloc_r+0x274>
   11dd8:	00400693          	li	a3,4
   11ddc:	44f6ea63          	bltu	a3,a5,12230 <_malloc_r+0x53c>
   11de0:	00675793          	srli	a5,a4,0x6
   11de4:	0397889b          	addiw	a7,a5,57
   11de8:	0018951b          	slliw	a0,a7,0x1
   11dec:	03878e1b          	addiw	t3,a5,56
   11df0:	00351513          	slli	a0,a0,0x3
   11df4:	00013837          	lui	a6,0x13
   11df8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11dfc:	00a80533          	add	a0,a6,a0
   11e00:	00853783          	ld	a5,8(a0)
   11e04:	ff050513          	addi	a0,a0,-16
   11e08:	02f50863          	beq	a0,a5,11e38 <_malloc_r+0x144>
   11e0c:	01f00313          	li	t1,31
   11e10:	0140006f          	j	11e24 <_malloc_r+0x130>
   11e14:	0187b583          	ld	a1,24(a5)
   11e18:	36065263          	bgez	a2,1217c <_malloc_r+0x488>
   11e1c:	00b50e63          	beq	a0,a1,11e38 <_malloc_r+0x144>
   11e20:	00058793          	mv	a5,a1
   11e24:	0087b683          	ld	a3,8(a5)
   11e28:	ffc6f693          	andi	a3,a3,-4
   11e2c:	40e68633          	sub	a2,a3,a4
   11e30:	fec352e3          	bge	t1,a2,11e14 <_malloc_r+0x120>
   11e34:	000e0893          	mv	a7,t3
   11e38:	02083783          	ld	a5,32(a6)
   11e3c:	00013e37          	lui	t3,0x13
   11e40:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11e44:	2fc78a63          	beq	a5,t3,12138 <_malloc_r+0x444>
   11e48:	0087b303          	ld	t1,8(a5)
   11e4c:	01f00613          	li	a2,31
   11e50:	ffc37313          	andi	t1,t1,-4
   11e54:	40e306b3          	sub	a3,t1,a4
   11e58:	4ad64463          	blt	a2,a3,12300 <_malloc_r+0x60c>
   11e5c:	03c83423          	sd	t3,40(a6)
   11e60:	03c83023          	sd	t3,32(a6)
   11e64:	4606da63          	bgez	a3,122d8 <_malloc_r+0x5e4>
   11e68:	1ff00693          	li	a3,511
   11e6c:	00883583          	ld	a1,8(a6)
   11e70:	3466ee63          	bltu	a3,t1,121cc <_malloc_r+0x4d8>
   11e74:	00335313          	srli	t1,t1,0x3
   11e78:	00131693          	slli	a3,t1,0x1
   11e7c:	0026869b          	addiw	a3,a3,2
   11e80:	00369693          	slli	a3,a3,0x3
   11e84:	00d806b3          	add	a3,a6,a3
   11e88:	0006b503          	ld	a0,0(a3)
   11e8c:	4023531b          	sraiw	t1,t1,0x2
   11e90:	00100613          	li	a2,1
   11e94:	00661633          	sll	a2,a2,t1
   11e98:	00c5e5b3          	or	a1,a1,a2
   11e9c:	ff068613          	addi	a2,a3,-16
   11ea0:	00a7b823          	sd	a0,16(a5)
   11ea4:	00c7bc23          	sd	a2,24(a5)
   11ea8:	00b83423          	sd	a1,8(a6)
   11eac:	00f6b023          	sd	a5,0(a3)
   11eb0:	00f53c23          	sd	a5,24(a0)
   11eb4:	4028d79b          	sraiw	a5,a7,0x2
   11eb8:	00100513          	li	a0,1
   11ebc:	00f51533          	sll	a0,a0,a5
   11ec0:	0aa5ec63          	bltu	a1,a0,11f78 <_malloc_r+0x284>
   11ec4:	00b577b3          	and	a5,a0,a1
   11ec8:	02079463          	bnez	a5,11ef0 <_malloc_r+0x1fc>
   11ecc:	00151513          	slli	a0,a0,0x1
   11ed0:	ffc8f893          	andi	a7,a7,-4
   11ed4:	00b577b3          	and	a5,a0,a1
   11ed8:	0048889b          	addiw	a7,a7,4
   11edc:	00079a63          	bnez	a5,11ef0 <_malloc_r+0x1fc>
   11ee0:	00151513          	slli	a0,a0,0x1
   11ee4:	00b577b3          	and	a5,a0,a1
   11ee8:	0048889b          	addiw	a7,a7,4
   11eec:	fe078ae3          	beqz	a5,11ee0 <_malloc_r+0x1ec>
   11ef0:	01f00e93          	li	t4,31
   11ef4:	00189f13          	slli	t5,a7,0x1
   11ef8:	002f0f1b          	addiw	t5,t5,2
   11efc:	003f1f13          	slli	t5,t5,0x3
   11f00:	ff0f0f13          	addi	t5,t5,-16
   11f04:	01e80f33          	add	t5,a6,t5
   11f08:	000f0313          	mv	t1,t5
   11f0c:	01833683          	ld	a3,24(t1)
   11f10:	00088f93          	mv	t6,a7
   11f14:	34d30263          	beq	t1,a3,12258 <_malloc_r+0x564>
   11f18:	0086b603          	ld	a2,8(a3)
   11f1c:	00068793          	mv	a5,a3
   11f20:	0186b683          	ld	a3,24(a3)
   11f24:	ffc67613          	andi	a2,a2,-4
   11f28:	40e605b3          	sub	a1,a2,a4
   11f2c:	34bec263          	blt	t4,a1,12270 <_malloc_r+0x57c>
   11f30:	fe05c2e3          	bltz	a1,11f14 <_malloc_r+0x220>
   11f34:	00c78633          	add	a2,a5,a2
   11f38:	00863703          	ld	a4,8(a2)
   11f3c:	0107b583          	ld	a1,16(a5)
   11f40:	00040513          	mv	a0,s0
   11f44:	00176713          	ori	a4,a4,1
   11f48:	00e63423          	sd	a4,8(a2)
   11f4c:	00d5bc23          	sd	a3,24(a1)
   11f50:	00b6b823          	sd	a1,16(a3)
   11f54:	00f13423          	sd	a5,8(sp)
   11f58:	684000ef          	jal	125dc <__malloc_unlock>
   11f5c:	00813783          	ld	a5,8(sp)
   11f60:	01078513          	addi	a0,a5,16
   11f64:	e35ff06f          	j	11d98 <_malloc_r+0xa4>
   11f68:	40000513          	li	a0,1024
   11f6c:	04000893          	li	a7,64
   11f70:	03f00e13          	li	t3,63
   11f74:	e81ff06f          	j	11df4 <_malloc_r+0x100>
   11f78:	01083783          	ld	a5,16(a6)
   11f7c:	0087b683          	ld	a3,8(a5)
   11f80:	ffc6f893          	andi	a7,a3,-4
   11f84:	40e88633          	sub	a2,a7,a4
   11f88:	00e8e663          	bltu	a7,a4,11f94 <_malloc_r+0x2a0>
   11f8c:	02062693          	slti	a3,a2,32
   11f90:	1a068863          	beqz	a3,12140 <_malloc_r+0x44c>
   11f94:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   11f98:	1981b603          	ld	a2,408(gp) # 139b0 <__malloc_sbrk_base>
   11f9c:	fff00693          	li	a3,-1
   11fa0:	00b705b3          	add	a1,a4,a1
   11fa4:	44d60663          	beq	a2,a3,123f0 <_malloc_r+0x6fc>
   11fa8:	000016b7          	lui	a3,0x1
   11fac:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11fb0:	00d585b3          	add	a1,a1,a3
   11fb4:	fffff6b7          	lui	a3,0xfffff
   11fb8:	00d5f5b3          	and	a1,a1,a3
   11fbc:	00040513          	mv	a0,s0
   11fc0:	03013423          	sd	a6,40(sp)
   11fc4:	02f13023          	sd	a5,32(sp)
   11fc8:	00e13c23          	sd	a4,24(sp)
   11fcc:	01113823          	sd	a7,16(sp)
   11fd0:	00b13423          	sd	a1,8(sp)
   11fd4:	271000ef          	jal	12a44 <_sbrk_r>
   11fd8:	fff00693          	li	a3,-1
   11fdc:	00813583          	ld	a1,8(sp)
   11fe0:	01013883          	ld	a7,16(sp)
   11fe4:	01813703          	ld	a4,24(sp)
   11fe8:	02013783          	ld	a5,32(sp)
   11fec:	02813803          	ld	a6,40(sp)
   11ff0:	00050313          	mv	t1,a0
   11ff4:	36d50663          	beq	a0,a3,12360 <_malloc_r+0x66c>
   11ff8:	011786b3          	add	a3,a5,a7
   11ffc:	36d56063          	bltu	a0,a3,1235c <_malloc_r+0x668>
   12000:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   12004:	000e2603          	lw	a2,0(t3)
   12008:	00b6063b          	addw	a2,a2,a1
   1200c:	00ce2023          	sw	a2,0(t3)
   12010:	00060513          	mv	a0,a2
   12014:	4a668c63          	beq	a3,t1,124cc <_malloc_r+0x7d8>
   12018:	1981bf03          	ld	t5,408(gp) # 139b0 <__malloc_sbrk_base>
   1201c:	fff00613          	li	a2,-1
   12020:	4ccf0463          	beq	t5,a2,124e8 <_malloc_r+0x7f4>
   12024:	40d306b3          	sub	a3,t1,a3
   12028:	00a686bb          	addw	a3,a3,a0
   1202c:	00de2023          	sw	a3,0(t3)
   12030:	00f37e93          	andi	t4,t1,15
   12034:	3c0e8e63          	beqz	t4,12410 <_malloc_r+0x71c>
   12038:	ff037313          	andi	t1,t1,-16
   1203c:	000016b7          	lui	a3,0x1
   12040:	01030313          	addi	t1,t1,16
   12044:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   12048:	00b30633          	add	a2,t1,a1
   1204c:	41d685b3          	sub	a1,a3,t4
   12050:	40c585b3          	sub	a1,a1,a2
   12054:	03459593          	slli	a1,a1,0x34
   12058:	0345d593          	srli	a1,a1,0x34
   1205c:	00040513          	mv	a0,s0
   12060:	05c13023          	sd	t3,64(sp)
   12064:	03013c23          	sd	a6,56(sp)
   12068:	02f13823          	sd	a5,48(sp)
   1206c:	02e13423          	sd	a4,40(sp)
   12070:	03113023          	sd	a7,32(sp)
   12074:	00613c23          	sd	t1,24(sp)
   12078:	01d13823          	sd	t4,16(sp)
   1207c:	00c13423          	sd	a2,8(sp)
   12080:	04b13423          	sd	a1,72(sp)
   12084:	1c1000ef          	jal	12a44 <_sbrk_r>
   12088:	00050693          	mv	a3,a0
   1208c:	fff00513          	li	a0,-1
   12090:	00813603          	ld	a2,8(sp)
   12094:	01013e83          	ld	t4,16(sp)
   12098:	01813303          	ld	t1,24(sp)
   1209c:	02013883          	ld	a7,32(sp)
   120a0:	02813703          	ld	a4,40(sp)
   120a4:	03013783          	ld	a5,48(sp)
   120a8:	03813803          	ld	a6,56(sp)
   120ac:	04013e03          	ld	t3,64(sp)
   120b0:	48a68663          	beq	a3,a0,1253c <_malloc_r+0x848>
   120b4:	04813583          	ld	a1,72(sp)
   120b8:	0005851b          	sext.w	a0,a1
   120bc:	000e2603          	lw	a2,0(t3)
   120c0:	406686b3          	sub	a3,a3,t1
   120c4:	00b686b3          	add	a3,a3,a1
   120c8:	0016e693          	ori	a3,a3,1
   120cc:	00683823          	sd	t1,16(a6)
   120d0:	00a6063b          	addw	a2,a2,a0
   120d4:	00d33423          	sd	a3,8(t1)
   120d8:	00ce2023          	sw	a2,0(t3)
   120dc:	03078e63          	beq	a5,a6,12118 <_malloc_r+0x424>
   120e0:	01f00513          	li	a0,31
   120e4:	41157663          	bgeu	a0,a7,124f0 <_malloc_r+0x7fc>
   120e8:	0087b583          	ld	a1,8(a5)
   120ec:	fe888693          	addi	a3,a7,-24
   120f0:	ff06f693          	andi	a3,a3,-16
   120f4:	0015f593          	andi	a1,a1,1
   120f8:	00d5e5b3          	or	a1,a1,a3
   120fc:	00b7b423          	sd	a1,8(a5)
   12100:	00900893          	li	a7,9
   12104:	00d785b3          	add	a1,a5,a3
   12108:	0115b423          	sd	a7,8(a1)
   1210c:	0115b823          	sd	a7,16(a1)
   12110:	44d56863          	bltu	a0,a3,12560 <_malloc_r+0x86c>
   12114:	00833683          	ld	a3,8(t1)
   12118:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   1211c:	00c5f463          	bgeu	a1,a2,12124 <_malloc_r+0x430>
   12120:	1cc1b423          	sd	a2,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   12124:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_total_mem>
   12128:	00c5f463          	bgeu	a1,a2,12130 <_malloc_r+0x43c>
   1212c:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_total_mem>
   12130:	00030793          	mv	a5,t1
   12134:	2340006f          	j	12368 <_malloc_r+0x674>
   12138:	00883583          	ld	a1,8(a6)
   1213c:	d79ff06f          	j	11eb4 <_malloc_r+0x1c0>
   12140:	00176693          	ori	a3,a4,1
   12144:	00d7b423          	sd	a3,8(a5)
   12148:	00e78733          	add	a4,a5,a4
   1214c:	00166613          	ori	a2,a2,1
   12150:	00e83823          	sd	a4,16(a6)
   12154:	00040513          	mv	a0,s0
   12158:	00c73423          	sd	a2,8(a4)
   1215c:	00f13423          	sd	a5,8(sp)
   12160:	47c000ef          	jal	125dc <__malloc_unlock>
   12164:	00813783          	ld	a5,8(sp)
   12168:	05813083          	ld	ra,88(sp)
   1216c:	05013403          	ld	s0,80(sp)
   12170:	01078513          	addi	a0,a5,16
   12174:	06010113          	addi	sp,sp,96
   12178:	00008067          	ret
   1217c:	0107b603          	ld	a2,16(a5)
   12180:	00d786b3          	add	a3,a5,a3
   12184:	0086b703          	ld	a4,8(a3)
   12188:	00b63c23          	sd	a1,24(a2)
   1218c:	00c5b823          	sd	a2,16(a1)
   12190:	00176713          	ori	a4,a4,1
   12194:	00040513          	mv	a0,s0
   12198:	00e6b423          	sd	a4,8(a3)
   1219c:	00f13423          	sd	a5,8(sp)
   121a0:	43c000ef          	jal	125dc <__malloc_unlock>
   121a4:	00813783          	ld	a5,8(sp)
   121a8:	05813083          	ld	ra,88(sp)
   121ac:	05013403          	ld	s0,80(sp)
   121b0:	01078513          	addi	a0,a5,16
   121b4:	06010113          	addi	sp,sp,96
   121b8:	00008067          	ret
   121bc:	0186b783          	ld	a5,24(a3)
   121c0:	0028889b          	addiw	a7,a7,2
   121c4:	c6f68ae3          	beq	a3,a5,11e38 <_malloc_r+0x144>
   121c8:	b79ff06f          	j	11d40 <_malloc_r+0x4c>
   121cc:	00935693          	srli	a3,t1,0x9
   121d0:	00400613          	li	a2,4
   121d4:	16d67863          	bgeu	a2,a3,12344 <_malloc_r+0x650>
   121d8:	01400613          	li	a2,20
   121dc:	28d66e63          	bltu	a2,a3,12478 <_malloc_r+0x784>
   121e0:	00169513          	slli	a0,a3,0x1
   121e4:	0b85051b          	addiw	a0,a0,184
   121e8:	00351513          	slli	a0,a0,0x3
   121ec:	05b6861b          	addiw	a2,a3,91
   121f0:	00a80533          	add	a0,a6,a0
   121f4:	00053683          	ld	a3,0(a0)
   121f8:	ff050513          	addi	a0,a0,-16
   121fc:	00d51863          	bne	a0,a3,1220c <_malloc_r+0x518>
   12200:	1f80006f          	j	123f8 <_malloc_r+0x704>
   12204:	0106b683          	ld	a3,16(a3)
   12208:	00d50863          	beq	a0,a3,12218 <_malloc_r+0x524>
   1220c:	0086b603          	ld	a2,8(a3)
   12210:	ffc67613          	andi	a2,a2,-4
   12214:	fec368e3          	bltu	t1,a2,12204 <_malloc_r+0x510>
   12218:	0186b503          	ld	a0,24(a3)
   1221c:	00a7bc23          	sd	a0,24(a5)
   12220:	00d7b823          	sd	a3,16(a5)
   12224:	00f53823          	sd	a5,16(a0)
   12228:	00f6bc23          	sd	a5,24(a3)
   1222c:	c89ff06f          	j	11eb4 <_malloc_r+0x1c0>
   12230:	01400693          	li	a3,20
   12234:	14f6fa63          	bgeu	a3,a5,12388 <_malloc_r+0x694>
   12238:	05400693          	li	a3,84
   1223c:	24f6ee63          	bltu	a3,a5,12498 <_malloc_r+0x7a4>
   12240:	00c75793          	srli	a5,a4,0xc
   12244:	06f7889b          	addiw	a7,a5,111
   12248:	0018951b          	slliw	a0,a7,0x1
   1224c:	06e78e1b          	addiw	t3,a5,110
   12250:	00351513          	slli	a0,a0,0x3
   12254:	ba1ff06f          	j	11df4 <_malloc_r+0x100>
   12258:	001f8f9b          	addiw	t6,t6,1
   1225c:	003ff793          	andi	a5,t6,3
   12260:	01030313          	addi	t1,t1,16
   12264:	14078263          	beqz	a5,123a8 <_malloc_r+0x6b4>
   12268:	01833683          	ld	a3,24(t1)
   1226c:	ca9ff06f          	j	11f14 <_malloc_r+0x220>
   12270:	0107b503          	ld	a0,16(a5)
   12274:	00176893          	ori	a7,a4,1
   12278:	0117b423          	sd	a7,8(a5)
   1227c:	00d53c23          	sd	a3,24(a0)
   12280:	00a6b823          	sd	a0,16(a3)
   12284:	00e78733          	add	a4,a5,a4
   12288:	02e83423          	sd	a4,40(a6)
   1228c:	02e83023          	sd	a4,32(a6)
   12290:	0015e693          	ori	a3,a1,1
   12294:	00c78633          	add	a2,a5,a2
   12298:	01c73c23          	sd	t3,24(a4)
   1229c:	01c73823          	sd	t3,16(a4)
   122a0:	00d73423          	sd	a3,8(a4)
   122a4:	00040513          	mv	a0,s0
   122a8:	00b63023          	sd	a1,0(a2)
   122ac:	00f13423          	sd	a5,8(sp)
   122b0:	32c000ef          	jal	125dc <__malloc_unlock>
   122b4:	00813783          	ld	a5,8(sp)
   122b8:	01078513          	addi	a0,a5,16
   122bc:	addff06f          	j	11d98 <_malloc_r+0xa4>
   122c0:	00375893          	srli	a7,a4,0x3
   122c4:	00189693          	slli	a3,a7,0x1
   122c8:	0026869b          	addiw	a3,a3,2
   122cc:	00369693          	slli	a3,a3,0x3
   122d0:	0008889b          	sext.w	a7,a7
   122d4:	a55ff06f          	j	11d28 <_malloc_r+0x34>
   122d8:	00678333          	add	t1,a5,t1
   122dc:	00833703          	ld	a4,8(t1)
   122e0:	00040513          	mv	a0,s0
   122e4:	00f13423          	sd	a5,8(sp)
   122e8:	00176713          	ori	a4,a4,1
   122ec:	00e33423          	sd	a4,8(t1)
   122f0:	2ec000ef          	jal	125dc <__malloc_unlock>
   122f4:	00813783          	ld	a5,8(sp)
   122f8:	01078513          	addi	a0,a5,16
   122fc:	a9dff06f          	j	11d98 <_malloc_r+0xa4>
   12300:	00176613          	ori	a2,a4,1
   12304:	00c7b423          	sd	a2,8(a5)
   12308:	00e78733          	add	a4,a5,a4
   1230c:	02e83423          	sd	a4,40(a6)
   12310:	02e83023          	sd	a4,32(a6)
   12314:	0016e613          	ori	a2,a3,1
   12318:	00678333          	add	t1,a5,t1
   1231c:	01c73c23          	sd	t3,24(a4)
   12320:	01c73823          	sd	t3,16(a4)
   12324:	00c73423          	sd	a2,8(a4)
   12328:	00040513          	mv	a0,s0
   1232c:	00d33023          	sd	a3,0(t1)
   12330:	00f13423          	sd	a5,8(sp)
   12334:	2a8000ef          	jal	125dc <__malloc_unlock>
   12338:	00813783          	ld	a5,8(sp)
   1233c:	01078513          	addi	a0,a5,16
   12340:	a59ff06f          	j	11d98 <_malloc_r+0xa4>
   12344:	00635693          	srli	a3,t1,0x6
   12348:	00169513          	slli	a0,a3,0x1
   1234c:	0725051b          	addiw	a0,a0,114
   12350:	00351513          	slli	a0,a0,0x3
   12354:	0386861b          	addiw	a2,a3,56
   12358:	e99ff06f          	j	121f0 <_malloc_r+0x4fc>
   1235c:	15078e63          	beq	a5,a6,124b8 <_malloc_r+0x7c4>
   12360:	01083783          	ld	a5,16(a6)
   12364:	0087b683          	ld	a3,8(a5)
   12368:	ffc6f693          	andi	a3,a3,-4
   1236c:	40e68633          	sub	a2,a3,a4
   12370:	00e6e663          	bltu	a3,a4,1237c <_malloc_r+0x688>
   12374:	02062693          	slti	a3,a2,32
   12378:	dc0684e3          	beqz	a3,12140 <_malloc_r+0x44c>
   1237c:	00040513          	mv	a0,s0
   12380:	25c000ef          	jal	125dc <__malloc_unlock>
   12384:	a11ff06f          	j	11d94 <_malloc_r+0xa0>
   12388:	05c7889b          	addiw	a7,a5,92
   1238c:	0018951b          	slliw	a0,a7,0x1
   12390:	05b78e1b          	addiw	t3,a5,91
   12394:	00351513          	slli	a0,a0,0x3
   12398:	a5dff06f          	j	11df4 <_malloc_r+0x100>
   1239c:	010f3783          	ld	a5,16(t5)
   123a0:	fff8889b          	addiw	a7,a7,-1
   123a4:	23e79663          	bne	a5,t5,125d0 <_malloc_r+0x8dc>
   123a8:	0038f793          	andi	a5,a7,3
   123ac:	ff0f0f13          	addi	t5,t5,-16
   123b0:	fe0796e3          	bnez	a5,1239c <_malloc_r+0x6a8>
   123b4:	00883683          	ld	a3,8(a6)
   123b8:	fff54793          	not	a5,a0
   123bc:	00d7f7b3          	and	a5,a5,a3
   123c0:	00f83423          	sd	a5,8(a6)
   123c4:	00151513          	slli	a0,a0,0x1
   123c8:	fff50693          	addi	a3,a0,-1
   123cc:	baf6f6e3          	bgeu	a3,a5,11f78 <_malloc_r+0x284>
   123d0:	00f576b3          	and	a3,a0,a5
   123d4:	00069a63          	bnez	a3,123e8 <_malloc_r+0x6f4>
   123d8:	00151513          	slli	a0,a0,0x1
   123dc:	00f576b3          	and	a3,a0,a5
   123e0:	004f8f9b          	addiw	t6,t6,4
   123e4:	fe068ae3          	beqz	a3,123d8 <_malloc_r+0x6e4>
   123e8:	000f8893          	mv	a7,t6
   123ec:	b09ff06f          	j	11ef4 <_malloc_r+0x200>
   123f0:	02058593          	addi	a1,a1,32
   123f4:	bc9ff06f          	j	11fbc <_malloc_r+0x2c8>
   123f8:	4026561b          	sraiw	a2,a2,0x2
   123fc:	00100313          	li	t1,1
   12400:	00c31633          	sll	a2,t1,a2
   12404:	00c5e5b3          	or	a1,a1,a2
   12408:	00b83423          	sd	a1,8(a6)
   1240c:	e11ff06f          	j	1221c <_malloc_r+0x528>
   12410:	00b30633          	add	a2,t1,a1
   12414:	40c005b3          	neg	a1,a2
   12418:	03459593          	slli	a1,a1,0x34
   1241c:	0345d593          	srli	a1,a1,0x34
   12420:	00040513          	mv	a0,s0
   12424:	03c13c23          	sd	t3,56(sp)
   12428:	03013823          	sd	a6,48(sp)
   1242c:	02f13423          	sd	a5,40(sp)
   12430:	02e13023          	sd	a4,32(sp)
   12434:	01113c23          	sd	a7,24(sp)
   12438:	00613823          	sd	t1,16(sp)
   1243c:	00c13423          	sd	a2,8(sp)
   12440:	04b13023          	sd	a1,64(sp)
   12444:	600000ef          	jal	12a44 <_sbrk_r>
   12448:	00050693          	mv	a3,a0
   1244c:	fff00513          	li	a0,-1
   12450:	01013303          	ld	t1,16(sp)
   12454:	01813883          	ld	a7,24(sp)
   12458:	02013703          	ld	a4,32(sp)
   1245c:	02813783          	ld	a5,40(sp)
   12460:	03013803          	ld	a6,48(sp)
   12464:	03813e03          	ld	t3,56(sp)
   12468:	0ea68463          	beq	a3,a0,12550 <_malloc_r+0x85c>
   1246c:	04013583          	ld	a1,64(sp)
   12470:	0005851b          	sext.w	a0,a1
   12474:	c49ff06f          	j	120bc <_malloc_r+0x3c8>
   12478:	05400613          	li	a2,84
   1247c:	08d66063          	bltu	a2,a3,124fc <_malloc_r+0x808>
   12480:	00c35693          	srli	a3,t1,0xc
   12484:	00169513          	slli	a0,a3,0x1
   12488:	0de5051b          	addiw	a0,a0,222
   1248c:	00351513          	slli	a0,a0,0x3
   12490:	06e6861b          	addiw	a2,a3,110
   12494:	d5dff06f          	j	121f0 <_malloc_r+0x4fc>
   12498:	15400693          	li	a3,340
   1249c:	08f6e063          	bltu	a3,a5,1251c <_malloc_r+0x828>
   124a0:	00f75793          	srli	a5,a4,0xf
   124a4:	0787889b          	addiw	a7,a5,120
   124a8:	0018951b          	slliw	a0,a7,0x1
   124ac:	07778e1b          	addiw	t3,a5,119
   124b0:	00351513          	slli	a0,a0,0x3
   124b4:	941ff06f          	j	11df4 <_malloc_r+0x100>
   124b8:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   124bc:	000e2503          	lw	a0,0(t3)
   124c0:	00b5053b          	addw	a0,a0,a1
   124c4:	00ae2023          	sw	a0,0(t3)
   124c8:	b51ff06f          	j	12018 <_malloc_r+0x324>
   124cc:	03431f13          	slli	t5,t1,0x34
   124d0:	b40f14e3          	bnez	t5,12018 <_malloc_r+0x324>
   124d4:	01083303          	ld	t1,16(a6)
   124d8:	00b885b3          	add	a1,a7,a1
   124dc:	0015e693          	ori	a3,a1,1
   124e0:	00d33423          	sd	a3,8(t1)
   124e4:	c35ff06f          	j	12118 <_malloc_r+0x424>
   124e8:	1861bc23          	sd	t1,408(gp) # 139b0 <__malloc_sbrk_base>
   124ec:	b45ff06f          	j	12030 <_malloc_r+0x33c>
   124f0:	00100793          	li	a5,1
   124f4:	00f33423          	sd	a5,8(t1)
   124f8:	e85ff06f          	j	1237c <_malloc_r+0x688>
   124fc:	15400613          	li	a2,340
   12500:	08d66a63          	bltu	a2,a3,12594 <_malloc_r+0x8a0>
   12504:	00f35693          	srli	a3,t1,0xf
   12508:	00169513          	slli	a0,a3,0x1
   1250c:	0f05051b          	addiw	a0,a0,240
   12510:	00351513          	slli	a0,a0,0x3
   12514:	0776861b          	addiw	a2,a3,119
   12518:	cd9ff06f          	j	121f0 <_malloc_r+0x4fc>
   1251c:	55400693          	li	a3,1364
   12520:	08f6ea63          	bltu	a3,a5,125b4 <_malloc_r+0x8c0>
   12524:	01275793          	srli	a5,a4,0x12
   12528:	07d7889b          	addiw	a7,a5,125
   1252c:	0018951b          	slliw	a0,a7,0x1
   12530:	07c78e1b          	addiw	t3,a5,124
   12534:	00351513          	slli	a0,a0,0x3
   12538:	8bdff06f          	j	11df4 <_malloc_r+0x100>
   1253c:	ff0e8e93          	addi	t4,t4,-16
   12540:	01d606b3          	add	a3,a2,t4
   12544:	00000513          	li	a0,0
   12548:	00000593          	li	a1,0
   1254c:	b71ff06f          	j	120bc <_malloc_r+0x3c8>
   12550:	00813683          	ld	a3,8(sp)
   12554:	00000593          	li	a1,0
   12558:	00000513          	li	a0,0
   1255c:	b61ff06f          	j	120bc <_malloc_r+0x3c8>
   12560:	01078593          	addi	a1,a5,16
   12564:	00040513          	mv	a0,s0
   12568:	01c13c23          	sd	t3,24(sp)
   1256c:	01013823          	sd	a6,16(sp)
   12570:	00e13423          	sd	a4,8(sp)
   12574:	c7cff0ef          	jal	119f0 <_free_r>
   12578:	01013803          	ld	a6,16(sp)
   1257c:	01813e03          	ld	t3,24(sp)
   12580:	00813703          	ld	a4,8(sp)
   12584:	01083303          	ld	t1,16(a6)
   12588:	000e2603          	lw	a2,0(t3)
   1258c:	00833683          	ld	a3,8(t1)
   12590:	b89ff06f          	j	12118 <_malloc_r+0x424>
   12594:	55400613          	li	a2,1364
   12598:	02d66663          	bltu	a2,a3,125c4 <_malloc_r+0x8d0>
   1259c:	01235693          	srli	a3,t1,0x12
   125a0:	00169513          	slli	a0,a3,0x1
   125a4:	0fa5051b          	addiw	a0,a0,250
   125a8:	00351513          	slli	a0,a0,0x3
   125ac:	07c6861b          	addiw	a2,a3,124
   125b0:	c41ff06f          	j	121f0 <_malloc_r+0x4fc>
   125b4:	7f000513          	li	a0,2032
   125b8:	07f00893          	li	a7,127
   125bc:	07e00e13          	li	t3,126
   125c0:	835ff06f          	j	11df4 <_malloc_r+0x100>
   125c4:	7f000513          	li	a0,2032
   125c8:	07e00613          	li	a2,126
   125cc:	c25ff06f          	j	121f0 <_malloc_r+0x4fc>
   125d0:	00883783          	ld	a5,8(a6)
   125d4:	df1ff06f          	j	123c4 <_malloc_r+0x6d0>

00000000000125d8 <__malloc_lock>:
   125d8:	00008067          	ret

00000000000125dc <__malloc_unlock>:
   125dc:	00008067          	ret

00000000000125e0 <_fclose_r>:
   125e0:	fe010113          	addi	sp,sp,-32
   125e4:	00113c23          	sd	ra,24(sp)
   125e8:	01213023          	sd	s2,0(sp)
   125ec:	02058863          	beqz	a1,1261c <_fclose_r+0x3c>
   125f0:	00813823          	sd	s0,16(sp)
   125f4:	00913423          	sd	s1,8(sp)
   125f8:	00058413          	mv	s0,a1
   125fc:	00050493          	mv	s1,a0
   12600:	00050663          	beqz	a0,1260c <_fclose_r+0x2c>
   12604:	04853783          	ld	a5,72(a0)
   12608:	0c078c63          	beqz	a5,126e0 <_fclose_r+0x100>
   1260c:	01041783          	lh	a5,16(s0)
   12610:	02079263          	bnez	a5,12634 <_fclose_r+0x54>
   12614:	01013403          	ld	s0,16(sp)
   12618:	00813483          	ld	s1,8(sp)
   1261c:	01813083          	ld	ra,24(sp)
   12620:	00000913          	li	s2,0
   12624:	00090513          	mv	a0,s2
   12628:	00013903          	ld	s2,0(sp)
   1262c:	02010113          	addi	sp,sp,32
   12630:	00008067          	ret
   12634:	00040593          	mv	a1,s0
   12638:	00048513          	mv	a0,s1
   1263c:	0b8000ef          	jal	126f4 <__sflush_r>
   12640:	05043783          	ld	a5,80(s0)
   12644:	00050913          	mv	s2,a0
   12648:	00078a63          	beqz	a5,1265c <_fclose_r+0x7c>
   1264c:	03043583          	ld	a1,48(s0)
   12650:	00048513          	mv	a0,s1
   12654:	000780e7          	jalr	a5
   12658:	06054463          	bltz	a0,126c0 <_fclose_r+0xe0>
   1265c:	01045783          	lhu	a5,16(s0)
   12660:	0807f793          	andi	a5,a5,128
   12664:	06079663          	bnez	a5,126d0 <_fclose_r+0xf0>
   12668:	05843583          	ld	a1,88(s0)
   1266c:	00058c63          	beqz	a1,12684 <_fclose_r+0xa4>
   12670:	07440793          	addi	a5,s0,116
   12674:	00f58663          	beq	a1,a5,12680 <_fclose_r+0xa0>
   12678:	00048513          	mv	a0,s1
   1267c:	b74ff0ef          	jal	119f0 <_free_r>
   12680:	04043c23          	sd	zero,88(s0)
   12684:	07843583          	ld	a1,120(s0)
   12688:	00058863          	beqz	a1,12698 <_fclose_r+0xb8>
   1268c:	00048513          	mv	a0,s1
   12690:	b60ff0ef          	jal	119f0 <_free_r>
   12694:	06043c23          	sd	zero,120(s0)
   12698:	aa1fe0ef          	jal	11138 <__sfp_lock_acquire>
   1269c:	00041823          	sh	zero,16(s0)
   126a0:	a9dfe0ef          	jal	1113c <__sfp_lock_release>
   126a4:	01813083          	ld	ra,24(sp)
   126a8:	01013403          	ld	s0,16(sp)
   126ac:	00813483          	ld	s1,8(sp)
   126b0:	00090513          	mv	a0,s2
   126b4:	00013903          	ld	s2,0(sp)
   126b8:	02010113          	addi	sp,sp,32
   126bc:	00008067          	ret
   126c0:	01045783          	lhu	a5,16(s0)
   126c4:	fff00913          	li	s2,-1
   126c8:	0807f793          	andi	a5,a5,128
   126cc:	f8078ee3          	beqz	a5,12668 <_fclose_r+0x88>
   126d0:	01843583          	ld	a1,24(s0)
   126d4:	00048513          	mv	a0,s1
   126d8:	b18ff0ef          	jal	119f0 <_free_r>
   126dc:	f8dff06f          	j	12668 <_fclose_r+0x88>
   126e0:	a35fe0ef          	jal	11114 <__sinit>
   126e4:	f29ff06f          	j	1260c <_fclose_r+0x2c>

00000000000126e8 <fclose>:
   126e8:	00050593          	mv	a1,a0
   126ec:	1901b503          	ld	a0,400(gp) # 139a8 <_impure_ptr>
   126f0:	ef1ff06f          	j	125e0 <_fclose_r>

00000000000126f4 <__sflush_r>:
   126f4:	01059703          	lh	a4,16(a1)
   126f8:	fd010113          	addi	sp,sp,-48
   126fc:	02813023          	sd	s0,32(sp)
   12700:	01313423          	sd	s3,8(sp)
   12704:	02113423          	sd	ra,40(sp)
   12708:	00877793          	andi	a5,a4,8
   1270c:	00058413          	mv	s0,a1
   12710:	00050993          	mv	s3,a0
   12714:	12079263          	bnez	a5,12838 <__sflush_r+0x144>
   12718:	000017b7          	lui	a5,0x1
   1271c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   12720:	0085a683          	lw	a3,8(a1)
   12724:	00f767b3          	or	a5,a4,a5
   12728:	00f59823          	sh	a5,16(a1)
   1272c:	18d05c63          	blez	a3,128c4 <__sflush_r+0x1d0>
   12730:	04843803          	ld	a6,72(s0)
   12734:	0e080663          	beqz	a6,12820 <__sflush_r+0x12c>
   12738:	00913c23          	sd	s1,24(sp)
   1273c:	03371693          	slli	a3,a4,0x33
   12740:	0009a483          	lw	s1,0(s3)
   12744:	0009a023          	sw	zero,0(s3)
   12748:	1806ca63          	bltz	a3,128dc <__sflush_r+0x1e8>
   1274c:	03043583          	ld	a1,48(s0)
   12750:	00000613          	li	a2,0
   12754:	00100693          	li	a3,1
   12758:	00098513          	mv	a0,s3
   1275c:	000800e7          	jalr	a6
   12760:	fff00793          	li	a5,-1
   12764:	00050613          	mv	a2,a0
   12768:	1af50c63          	beq	a0,a5,12920 <__sflush_r+0x22c>
   1276c:	01041783          	lh	a5,16(s0)
   12770:	04843803          	ld	a6,72(s0)
   12774:	0047f793          	andi	a5,a5,4
   12778:	00078e63          	beqz	a5,12794 <__sflush_r+0xa0>
   1277c:	00842703          	lw	a4,8(s0)
   12780:	05843783          	ld	a5,88(s0)
   12784:	40e60633          	sub	a2,a2,a4
   12788:	00078663          	beqz	a5,12794 <__sflush_r+0xa0>
   1278c:	07042783          	lw	a5,112(s0)
   12790:	40f60633          	sub	a2,a2,a5
   12794:	03043583          	ld	a1,48(s0)
   12798:	00000693          	li	a3,0
   1279c:	00098513          	mv	a0,s3
   127a0:	000800e7          	jalr	a6
   127a4:	fff00713          	li	a4,-1
   127a8:	01041783          	lh	a5,16(s0)
   127ac:	12e51c63          	bne	a0,a4,128e4 <__sflush_r+0x1f0>
   127b0:	0009a683          	lw	a3,0(s3)
   127b4:	01d00713          	li	a4,29
   127b8:	18d76263          	bltu	a4,a3,1293c <__sflush_r+0x248>
   127bc:	20400737          	lui	a4,0x20400
   127c0:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec081>
   127c4:	00d75733          	srl	a4,a4,a3
   127c8:	00177713          	andi	a4,a4,1
   127cc:	16070863          	beqz	a4,1293c <__sflush_r+0x248>
   127d0:	01843683          	ld	a3,24(s0)
   127d4:	fffff737          	lui	a4,0xfffff
   127d8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   127dc:	00e7f733          	and	a4,a5,a4
   127e0:	00e41823          	sh	a4,16(s0)
   127e4:	00042423          	sw	zero,8(s0)
   127e8:	00d43023          	sd	a3,0(s0)
   127ec:	03379713          	slli	a4,a5,0x33
   127f0:	00075663          	bgez	a4,127fc <__sflush_r+0x108>
   127f4:	0009a783          	lw	a5,0(s3)
   127f8:	10078863          	beqz	a5,12908 <__sflush_r+0x214>
   127fc:	05843583          	ld	a1,88(s0)
   12800:	0099a023          	sw	s1,0(s3)
   12804:	10058a63          	beqz	a1,12918 <__sflush_r+0x224>
   12808:	07440793          	addi	a5,s0,116
   1280c:	00f58663          	beq	a1,a5,12818 <__sflush_r+0x124>
   12810:	00098513          	mv	a0,s3
   12814:	9dcff0ef          	jal	119f0 <_free_r>
   12818:	01813483          	ld	s1,24(sp)
   1281c:	04043c23          	sd	zero,88(s0)
   12820:	02813083          	ld	ra,40(sp)
   12824:	02013403          	ld	s0,32(sp)
   12828:	00813983          	ld	s3,8(sp)
   1282c:	00000513          	li	a0,0
   12830:	03010113          	addi	sp,sp,48
   12834:	00008067          	ret
   12838:	01213823          	sd	s2,16(sp)
   1283c:	0185b903          	ld	s2,24(a1)
   12840:	08090a63          	beqz	s2,128d4 <__sflush_r+0x1e0>
   12844:	00913c23          	sd	s1,24(sp)
   12848:	0005b483          	ld	s1,0(a1)
   1284c:	00377713          	andi	a4,a4,3
   12850:	0125b023          	sd	s2,0(a1)
   12854:	412484bb          	subw	s1,s1,s2
   12858:	00000793          	li	a5,0
   1285c:	00071463          	bnez	a4,12864 <__sflush_r+0x170>
   12860:	0205a783          	lw	a5,32(a1)
   12864:	00f42623          	sw	a5,12(s0)
   12868:	00904863          	bgtz	s1,12878 <__sflush_r+0x184>
   1286c:	0640006f          	j	128d0 <__sflush_r+0x1dc>
   12870:	00a90933          	add	s2,s2,a0
   12874:	04905e63          	blez	s1,128d0 <__sflush_r+0x1dc>
   12878:	04043783          	ld	a5,64(s0)
   1287c:	03043583          	ld	a1,48(s0)
   12880:	00048693          	mv	a3,s1
   12884:	00090613          	mv	a2,s2
   12888:	00098513          	mv	a0,s3
   1288c:	000780e7          	jalr	a5
   12890:	40a484bb          	subw	s1,s1,a0
   12894:	fca04ee3          	bgtz	a0,12870 <__sflush_r+0x17c>
   12898:	01045783          	lhu	a5,16(s0)
   1289c:	01013903          	ld	s2,16(sp)
   128a0:	0407e793          	ori	a5,a5,64
   128a4:	02813083          	ld	ra,40(sp)
   128a8:	00f41823          	sh	a5,16(s0)
   128ac:	02013403          	ld	s0,32(sp)
   128b0:	01813483          	ld	s1,24(sp)
   128b4:	00813983          	ld	s3,8(sp)
   128b8:	fff00513          	li	a0,-1
   128bc:	03010113          	addi	sp,sp,48
   128c0:	00008067          	ret
   128c4:	0705a683          	lw	a3,112(a1)
   128c8:	e6d044e3          	bgtz	a3,12730 <__sflush_r+0x3c>
   128cc:	f55ff06f          	j	12820 <__sflush_r+0x12c>
   128d0:	01813483          	ld	s1,24(sp)
   128d4:	01013903          	ld	s2,16(sp)
   128d8:	f49ff06f          	j	12820 <__sflush_r+0x12c>
   128dc:	09043603          	ld	a2,144(s0)
   128e0:	e95ff06f          	j	12774 <__sflush_r+0x80>
   128e4:	01843683          	ld	a3,24(s0)
   128e8:	fffff737          	lui	a4,0xfffff
   128ec:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   128f0:	00e7f733          	and	a4,a5,a4
   128f4:	00e41823          	sh	a4,16(s0)
   128f8:	00042423          	sw	zero,8(s0)
   128fc:	00d43023          	sd	a3,0(s0)
   12900:	03379713          	slli	a4,a5,0x33
   12904:	ee075ce3          	bgez	a4,127fc <__sflush_r+0x108>
   12908:	05843583          	ld	a1,88(s0)
   1290c:	08a43823          	sd	a0,144(s0)
   12910:	0099a023          	sw	s1,0(s3)
   12914:	ee059ae3          	bnez	a1,12808 <__sflush_r+0x114>
   12918:	01813483          	ld	s1,24(sp)
   1291c:	f05ff06f          	j	12820 <__sflush_r+0x12c>
   12920:	0009a783          	lw	a5,0(s3)
   12924:	e40784e3          	beqz	a5,1276c <__sflush_r+0x78>
   12928:	fe378713          	addi	a4,a5,-29
   1292c:	00070c63          	beqz	a4,12944 <__sflush_r+0x250>
   12930:	fea78793          	addi	a5,a5,-22
   12934:	00078863          	beqz	a5,12944 <__sflush_r+0x250>
   12938:	01045783          	lhu	a5,16(s0)
   1293c:	0407e793          	ori	a5,a5,64
   12940:	f65ff06f          	j	128a4 <__sflush_r+0x1b0>
   12944:	0099a023          	sw	s1,0(s3)
   12948:	01813483          	ld	s1,24(sp)
   1294c:	ed5ff06f          	j	12820 <__sflush_r+0x12c>

0000000000012950 <_fflush_r>:
   12950:	00050793          	mv	a5,a0
   12954:	00050663          	beqz	a0,12960 <_fflush_r+0x10>
   12958:	04853703          	ld	a4,72(a0)
   1295c:	00070e63          	beqz	a4,12978 <_fflush_r+0x28>
   12960:	01059703          	lh	a4,16(a1)
   12964:	00071663          	bnez	a4,12970 <_fflush_r+0x20>
   12968:	00000513          	li	a0,0
   1296c:	00008067          	ret
   12970:	00078513          	mv	a0,a5
   12974:	d81ff06f          	j	126f4 <__sflush_r>
   12978:	fe010113          	addi	sp,sp,-32
   1297c:	00b13423          	sd	a1,8(sp)
   12980:	00113c23          	sd	ra,24(sp)
   12984:	00a13023          	sd	a0,0(sp)
   12988:	f8cfe0ef          	jal	11114 <__sinit>
   1298c:	00813583          	ld	a1,8(sp)
   12990:	00013783          	ld	a5,0(sp)
   12994:	01059703          	lh	a4,16(a1)
   12998:	00070a63          	beqz	a4,129ac <_fflush_r+0x5c>
   1299c:	01813083          	ld	ra,24(sp)
   129a0:	00078513          	mv	a0,a5
   129a4:	02010113          	addi	sp,sp,32
   129a8:	d4dff06f          	j	126f4 <__sflush_r>
   129ac:	01813083          	ld	ra,24(sp)
   129b0:	00000513          	li	a0,0
   129b4:	02010113          	addi	sp,sp,32
   129b8:	00008067          	ret

00000000000129bc <fflush>:
   129bc:	06050063          	beqz	a0,12a1c <fflush+0x60>
   129c0:	00050593          	mv	a1,a0
   129c4:	1901b503          	ld	a0,400(gp) # 139a8 <_impure_ptr>
   129c8:	00050663          	beqz	a0,129d4 <fflush+0x18>
   129cc:	04853783          	ld	a5,72(a0)
   129d0:	00078c63          	beqz	a5,129e8 <fflush+0x2c>
   129d4:	01059783          	lh	a5,16(a1)
   129d8:	00079663          	bnez	a5,129e4 <fflush+0x28>
   129dc:	00000513          	li	a0,0
   129e0:	00008067          	ret
   129e4:	d11ff06f          	j	126f4 <__sflush_r>
   129e8:	fe010113          	addi	sp,sp,-32
   129ec:	00b13423          	sd	a1,8(sp)
   129f0:	00a13023          	sd	a0,0(sp)
   129f4:	00113c23          	sd	ra,24(sp)
   129f8:	f1cfe0ef          	jal	11114 <__sinit>
   129fc:	00813583          	ld	a1,8(sp)
   12a00:	00013503          	ld	a0,0(sp)
   12a04:	01059783          	lh	a5,16(a1)
   12a08:	02079863          	bnez	a5,12a38 <fflush+0x7c>
   12a0c:	01813083          	ld	ra,24(sp)
   12a10:	00000513          	li	a0,0
   12a14:	02010113          	addi	sp,sp,32
   12a18:	00008067          	ret
   12a1c:	00013637          	lui	a2,0x13
   12a20:	000135b7          	lui	a1,0x13
   12a24:	00013537          	lui	a0,0x13
   12a28:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12a2c:	95058593          	addi	a1,a1,-1712 # 12950 <_fflush_r>
   12a30:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12a34:	f3cfe06f          	j	11170 <_fwalk_sglue>
   12a38:	01813083          	ld	ra,24(sp)
   12a3c:	02010113          	addi	sp,sp,32
   12a40:	cb5ff06f          	j	126f4 <__sflush_r>

0000000000012a44 <_sbrk_r>:
   12a44:	fe010113          	addi	sp,sp,-32
   12a48:	00813823          	sd	s0,16(sp)
   12a4c:	00913423          	sd	s1,8(sp)
   12a50:	00050493          	mv	s1,a0
   12a54:	00058513          	mv	a0,a1
   12a58:	00113c23          	sd	ra,24(sp)
   12a5c:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   12a60:	228000ef          	jal	12c88 <_sbrk>
   12a64:	fff00793          	li	a5,-1
   12a68:	00f50c63          	beq	a0,a5,12a80 <_sbrk_r+0x3c>
   12a6c:	01813083          	ld	ra,24(sp)
   12a70:	01013403          	ld	s0,16(sp)
   12a74:	00813483          	ld	s1,8(sp)
   12a78:	02010113          	addi	sp,sp,32
   12a7c:	00008067          	ret
   12a80:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   12a84:	fe0784e3          	beqz	a5,12a6c <_sbrk_r+0x28>
   12a88:	01813083          	ld	ra,24(sp)
   12a8c:	01013403          	ld	s0,16(sp)
   12a90:	00f4a023          	sw	a5,0(s1)
   12a94:	00813483          	ld	s1,8(sp)
   12a98:	02010113          	addi	sp,sp,32
   12a9c:	00008067          	ret

0000000000012aa0 <__libc_fini_array>:
   12aa0:	fe010113          	addi	sp,sp,-32
   12aa4:	00813823          	sd	s0,16(sp)
   12aa8:	000137b7          	lui	a5,0x13
   12aac:	00013437          	lui	s0,0x13
   12ab0:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12ab4:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12ab8:	408787b3          	sub	a5,a5,s0
   12abc:	00913423          	sd	s1,8(sp)
   12ac0:	00113c23          	sd	ra,24(sp)
   12ac4:	4037d493          	srai	s1,a5,0x3
   12ac8:	02048063          	beqz	s1,12ae8 <__libc_fini_array+0x48>
   12acc:	ff840413          	addi	s0,s0,-8
   12ad0:	00f40433          	add	s0,s0,a5
   12ad4:	00043783          	ld	a5,0(s0)
   12ad8:	fff48493          	addi	s1,s1,-1
   12adc:	ff840413          	addi	s0,s0,-8
   12ae0:	000780e7          	jalr	a5
   12ae4:	fe0498e3          	bnez	s1,12ad4 <__libc_fini_array+0x34>
   12ae8:	01813083          	ld	ra,24(sp)
   12aec:	01013403          	ld	s0,16(sp)
   12af0:	00813483          	ld	s1,8(sp)
   12af4:	02010113          	addi	sp,sp,32
   12af8:	00008067          	ret

0000000000012afc <__register_exitproc>:
   12afc:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   12b00:	04078e63          	beqz	a5,12b5c <__register_exitproc+0x60>
   12b04:	0087a703          	lw	a4,8(a5)
   12b08:	01f00813          	li	a6,31
   12b0c:	08e84263          	blt	a6,a4,12b90 <__register_exitproc+0x94>
   12b10:	02050863          	beqz	a0,12b40 <__register_exitproc+0x44>
   12b14:	00371813          	slli	a6,a4,0x3
   12b18:	01078833          	add	a6,a5,a6
   12b1c:	10c83823          	sd	a2,272(a6)
   12b20:	3107a883          	lw	a7,784(a5)
   12b24:	00100613          	li	a2,1
   12b28:	00e6163b          	sllw	a2,a2,a4
   12b2c:	00c8e8b3          	or	a7,a7,a2
   12b30:	3117a823          	sw	a7,784(a5)
   12b34:	20d83823          	sd	a3,528(a6)
   12b38:	00200693          	li	a3,2
   12b3c:	02d50663          	beq	a0,a3,12b68 <__register_exitproc+0x6c>
   12b40:	0017069b          	addiw	a3,a4,1
   12b44:	00371713          	slli	a4,a4,0x3
   12b48:	00d7a423          	sw	a3,8(a5)
   12b4c:	00e787b3          	add	a5,a5,a4
   12b50:	00b7b823          	sd	a1,16(a5)
   12b54:	00000513          	li	a0,0
   12b58:	00008067          	ret
   12b5c:	45018793          	addi	a5,gp,1104 # 13c68 <__atexit0>
   12b60:	1af1bc23          	sd	a5,440(gp) # 139d0 <__atexit>
   12b64:	fa1ff06f          	j	12b04 <__register_exitproc+0x8>
   12b68:	3147a683          	lw	a3,788(a5)
   12b6c:	00000513          	li	a0,0
   12b70:	00d66633          	or	a2,a2,a3
   12b74:	0017069b          	addiw	a3,a4,1
   12b78:	00371713          	slli	a4,a4,0x3
   12b7c:	30c7aa23          	sw	a2,788(a5)
   12b80:	00d7a423          	sw	a3,8(a5)
   12b84:	00e787b3          	add	a5,a5,a4
   12b88:	00b7b823          	sd	a1,16(a5)
   12b8c:	00008067          	ret
   12b90:	fff00513          	li	a0,-1
   12b94:	00008067          	ret

0000000000012b98 <_close>:
   12b98:	03900893          	li	a7,57
   12b9c:	00000073          	ecall
   12ba0:	00054663          	bltz	a0,12bac <_close+0x14>
   12ba4:	0005051b          	sext.w	a0,a0
   12ba8:	00008067          	ret
   12bac:	fe010113          	addi	sp,sp,-32
   12bb0:	00113c23          	sd	ra,24(sp)
   12bb4:	00a13423          	sd	a0,8(sp)
   12bb8:	188000ef          	jal	12d40 <__errno>
   12bbc:	00813783          	ld	a5,8(sp)
   12bc0:	01813083          	ld	ra,24(sp)
   12bc4:	40f007bb          	negw	a5,a5
   12bc8:	00f52023          	sw	a5,0(a0)
   12bcc:	fff00513          	li	a0,-1
   12bd0:	02010113          	addi	sp,sp,32
   12bd4:	00008067          	ret

0000000000012bd8 <_exit>:
   12bd8:	05d00893          	li	a7,93
   12bdc:	00000073          	ecall
   12be0:	00054463          	bltz	a0,12be8 <_exit+0x10>
   12be4:	0000006f          	j	12be4 <_exit+0xc>
   12be8:	fe010113          	addi	sp,sp,-32
   12bec:	00113c23          	sd	ra,24(sp)
   12bf0:	00a13423          	sd	a0,8(sp)
   12bf4:	14c000ef          	jal	12d40 <__errno>
   12bf8:	00813783          	ld	a5,8(sp)
   12bfc:	40f007bb          	negw	a5,a5
   12c00:	00f52023          	sw	a5,0(a0)
   12c04:	0000006f          	j	12c04 <_exit+0x2c>

0000000000012c08 <_lseek>:
   12c08:	03e00893          	li	a7,62
   12c0c:	00000073          	ecall
   12c10:	00054463          	bltz	a0,12c18 <_lseek+0x10>
   12c14:	00008067          	ret
   12c18:	fe010113          	addi	sp,sp,-32
   12c1c:	00113c23          	sd	ra,24(sp)
   12c20:	00a13423          	sd	a0,8(sp)
   12c24:	11c000ef          	jal	12d40 <__errno>
   12c28:	00813783          	ld	a5,8(sp)
   12c2c:	01813083          	ld	ra,24(sp)
   12c30:	40f007bb          	negw	a5,a5
   12c34:	00f52023          	sw	a5,0(a0)
   12c38:	fff00793          	li	a5,-1
   12c3c:	00078513          	mv	a0,a5
   12c40:	02010113          	addi	sp,sp,32
   12c44:	00008067          	ret

0000000000012c48 <_read>:
   12c48:	03f00893          	li	a7,63
   12c4c:	00000073          	ecall
   12c50:	00054463          	bltz	a0,12c58 <_read+0x10>
   12c54:	00008067          	ret
   12c58:	fe010113          	addi	sp,sp,-32
   12c5c:	00113c23          	sd	ra,24(sp)
   12c60:	00a13423          	sd	a0,8(sp)
   12c64:	0dc000ef          	jal	12d40 <__errno>
   12c68:	00813783          	ld	a5,8(sp)
   12c6c:	01813083          	ld	ra,24(sp)
   12c70:	40f007bb          	negw	a5,a5
   12c74:	00f52023          	sw	a5,0(a0)
   12c78:	fff00793          	li	a5,-1
   12c7c:	00078513          	mv	a0,a5
   12c80:	02010113          	addi	sp,sp,32
   12c84:	00008067          	ret

0000000000012c88 <_sbrk>:
   12c88:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   12c8c:	ff010113          	addi	sp,sp,-16
   12c90:	00113423          	sd	ra,8(sp)
   12c94:	00050713          	mv	a4,a0
   12c98:	02079063          	bnez	a5,12cb8 <_sbrk+0x30>
   12c9c:	0d600893          	li	a7,214
   12ca0:	00000513          	li	a0,0
   12ca4:	00000073          	ecall
   12ca8:	fff00793          	li	a5,-1
   12cac:	02f50c63          	beq	a0,a5,12ce4 <_sbrk+0x5c>
   12cb0:	00050793          	mv	a5,a0
   12cb4:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   12cb8:	00f70533          	add	a0,a4,a5
   12cbc:	0d600893          	li	a7,214
   12cc0:	00000073          	ecall
   12cc4:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   12cc8:	00f70733          	add	a4,a4,a5
   12ccc:	00e51c63          	bne	a0,a4,12ce4 <_sbrk+0x5c>
   12cd0:	00813083          	ld	ra,8(sp)
   12cd4:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   12cd8:	00078513          	mv	a0,a5
   12cdc:	01010113          	addi	sp,sp,16
   12ce0:	00008067          	ret
   12ce4:	05c000ef          	jal	12d40 <__errno>
   12ce8:	00813083          	ld	ra,8(sp)
   12cec:	00c00793          	li	a5,12
   12cf0:	00f52023          	sw	a5,0(a0)
   12cf4:	fff00513          	li	a0,-1
   12cf8:	01010113          	addi	sp,sp,16
   12cfc:	00008067          	ret

0000000000012d00 <_write>:
   12d00:	04000893          	li	a7,64
   12d04:	00000073          	ecall
   12d08:	00054463          	bltz	a0,12d10 <_write+0x10>
   12d0c:	00008067          	ret
   12d10:	fe010113          	addi	sp,sp,-32
   12d14:	00113c23          	sd	ra,24(sp)
   12d18:	00a13423          	sd	a0,8(sp)
   12d1c:	024000ef          	jal	12d40 <__errno>
   12d20:	00813783          	ld	a5,8(sp)
   12d24:	01813083          	ld	ra,24(sp)
   12d28:	40f007bb          	negw	a5,a5
   12d2c:	00f52023          	sw	a5,0(a0)
   12d30:	fff00793          	li	a5,-1
   12d34:	00078513          	mv	a0,a5
   12d38:	02010113          	addi	sp,sp,32
   12d3c:	00008067          	ret

0000000000012d40 <__errno>:
   12d40:	1901b503          	ld	a0,400(gp) # 139a8 <_impure_ptr>
   12d44:	00008067          	ret

Disassembly of section .rodata:

0000000000012d48 <.rodata>:
   12d48:	6854                	.insn	2, 0x6854
   12d4a:	2065                	.insn	2, 0x2065
   12d4c:	746e6f63          	bltu	t3,t1,134aa <__malloc_av_+0x322>
   12d50:	6e65                	.insn	2, 0x6e65
   12d52:	2074                	.insn	2, 0x2074
   12d54:	4120666f          	jal	a2,19166 <__BSS_END__+0x51e6>
   12d58:	6920                	.insn	2, 0x6920
   12d5a:	0a203a73          	.insn	4, 0x0a203a73
   12d5e:	0000                	.insn	2, 0x0000
   12d60:	0020                	.insn	2, 0x0020
   12d62:	0000                	.insn	2, 0x0000
   12d64:	0000                	.insn	2, 0x0000
   12d66:	0000                	.insn	2, 0x0000
   12d68:	000a                	.insn	2, 0x000a
   12d6a:	0000                	.insn	2, 0x0000
   12d6c:	0000                	.insn	2, 0x0000
   12d6e:	0000                	.insn	2, 0x0000
   12d70:	6854                	.insn	2, 0x6854
   12d72:	2065                	.insn	2, 0x2065
   12d74:	746e6f63          	bltu	t3,t1,134d2 <__malloc_av_+0x34a>
   12d78:	6e65                	.insn	2, 0x6e65
   12d7a:	2074                	.insn	2, 0x2074
   12d7c:	4220666f          	jal	a2,1919e <__BSS_END__+0x521e>
   12d80:	6920                	.insn	2, 0x6920
   12d82:	0a203a73          	.insn	4, 0x0a203a73
   12d86:	0000                	.insn	2, 0x0000
   12d88:	6854                	.insn	2, 0x6854
   12d8a:	2065                	.insn	2, 0x2065
   12d8c:	746e6f63          	bltu	t3,t1,134ea <__malloc_av_+0x362>
   12d90:	6e65                	.insn	2, 0x6e65
   12d92:	2074                	.insn	2, 0x2074
   12d94:	4320666f          	jal	a2,191c6 <__BSS_END__+0x5246>
   12d98:	413d                	.insn	2, 0x413d
   12d9a:	422a                	.insn	2, 0x422a
   12d9c:	6920                	.insn	2, 0x6920
   12d9e:	0a203a73          	.insn	4, 0x0a203a73
	...

Disassembly of section .eh_frame:

0000000000012da8 <__EH_FRAME_BEGIN__>:
   12da8:	0000                	.insn	2, 0x0000
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

0000000000013998 <M>:
   13998:	000a                	.insn	2, 0x000a
   1399a:	0000                	.insn	2, 0x0000
   1399c:	0000                	.insn	2, 0x0000
	...

00000000000139a0 <__dso_handle>:
	...

00000000000139a8 <_impure_ptr>:
   139a8:	3030                	.insn	2, 0x3030
   139aa:	0001                	.insn	2, 0x0001
   139ac:	0000                	.insn	2, 0x0000
	...

00000000000139b0 <__malloc_sbrk_base>:
   139b0:	ffff                	.insn	2, 0xffff
   139b2:	ffff                	.insn	2, 0xffff
   139b4:	ffff                	.insn	2, 0xffff
   139b6:	ffff                	.insn	2, 0xffff

00000000000139b8 <__malloc_trim_threshold>:
   139b8:	0000                	.insn	2, 0x0000
   139ba:	0002                	.insn	2, 0x0002
   139bc:	0000                	.insn	2, 0x0000
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
  10:	0d54                	.insn	2, 0x0d54
  12:	0001                	.insn	2, 0x0001
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	0024                	.insn	2, 0x0024
	...
  2e:	0000                	.insn	2, 0x0000
  30:	002c                	.insn	2, 0x002c
  32:	0000                	.insn	2, 0x0000
  34:	0002                	.insn	2, 0x0002
  36:	0039                	.insn	2, 0x0039
  38:	0000                	.insn	2, 0x0000
  3a:	0008                	.insn	2, 0x0008
  3c:	0000                	.insn	2, 0x0000
  3e:	0000                	.insn	2, 0x0000
  40:	0d78                	.insn	2, 0x0d78
  42:	0001                	.insn	2, 0x0001
  44:	0000                	.insn	2, 0x0000
  46:	0000                	.insn	2, 0x0000
  48:	008c                	.insn	2, 0x008c
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
  10:	5400                	.insn	2, 0x5400
  12:	010d                	.insn	2, 0x010d
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	2400                	.insn	2, 0x2400
  1a:	0000                	.insn	2, 0x0000
  1c:	0000                	.insn	2, 0x0000
  1e:	00000033          	add	zero,zero,zero
  22:	009c                	.insn	2, 0x009c
  24:	0000                	.insn	2, 0x0000
  26:	8001                	.insn	2, 0x8001
  28:	a802                	.insn	2, 0xa802
  2a:	0000                	.insn	2, 0x0000
  2c:	3700                	.insn	2, 0x3700
  2e:	0d54                	.insn	2, 0x0d54
  30:	0001                	.insn	2, 0x0001
  32:	0000                	.insn	2, 0x0000
  34:	0000                	.insn	2, 0x0000
  36:	0324                	.insn	2, 0x0324
  38:	9d00                	.insn	2, 0x9d00
  3a:	0002                	.insn	2, 0x0002
  3c:	0500                	.insn	2, 0x0500
  3e:	0100                	.insn	2, 0x0100
  40:	2808                	.insn	2, 0x2808
  42:	0000                	.insn	2, 0x0000
  44:	0800                	.insn	2, 0x0800
  46:	00c1                	.insn	2, 0x00c1
  48:	0000                	.insn	2, 0x0000
  4a:	031d                	.insn	2, 0x031d
  4c:	00031647          	.insn	4, 0x00031647
  50:	009c                	.insn	2, 0x009c
  52:	0000                	.insn	2, 0x0000
  54:	0000                	.insn	2, 0x0000
  56:	0000                	.insn	2, 0x0000
  58:	0d78                	.insn	2, 0x0d78
  5a:	0001                	.insn	2, 0x0001
  5c:	0000                	.insn	2, 0x0000
  5e:	0000                	.insn	2, 0x0000
  60:	008c                	.insn	2, 0x008c
  62:	0000                	.insn	2, 0x0000
  64:	0000                	.insn	2, 0x0000
  66:	0000                	.insn	2, 0x0000
  68:	007e                	.insn	2, 0x007e
  6a:	0000                	.insn	2, 0x0000
  6c:	1001                	.insn	2, 0x1001
  6e:	00017107          	.insn	4, 0x00017107
  72:	0100                	.insn	2, 0x0100
  74:	0508                	.insn	2, 0x0508
  76:	023d                	.insn	2, 0x023d
  78:	0000                	.insn	2, 0x0000
  7a:	0801                	.insn	2, 0x0801
  7c:	00021807          	.insn	4, 0x00021807
  80:	0900                	.insn	2, 0x0900
  82:	0504                	.insn	2, 0x0504
  84:	6e69                	.insn	2, 0x6e69
  86:	0074                	.insn	2, 0x0074
  88:	0801                	.insn	2, 0x0801
  8a:	3805                	.insn	2, 0x3805
  8c:	0002                	.insn	2, 0x0002
  8e:	0100                	.insn	2, 0x0100
  90:	0410                	.insn	2, 0x0410
  92:	0200                	.insn	2, 0x0200
  94:	0000                	.insn	2, 0x0000
  96:	0101                	.insn	2, 0x0101
  98:	bf06                	.insn	2, 0xbf06
  9a:	0001                	.insn	2, 0x0001
  9c:	0100                	.insn	2, 0x0100
  9e:	0801                	.insn	2, 0x0801
  a0:	01bd                	.insn	2, 0x01bd
  a2:	0000                	.insn	2, 0x0000
  a4:	0201                	.insn	2, 0x0201
  a6:	4605                	.insn	2, 0x4605
  a8:	0002                	.insn	2, 0x0002
  aa:	0100                	.insn	2, 0x0100
  ac:	0702                	.insn	2, 0x0702
  ae:	01d4                	.insn	2, 0x01d4
  b0:	0000                	.insn	2, 0x0000
  b2:	0401                	.insn	2, 0x0401
  b4:	00021d07          	.insn	4, 0x00021d07
  b8:	0100                	.insn	2, 0x0100
  ba:	0801                	.insn	2, 0x0801
  bc:	01c6                	.insn	2, 0x01c6
  be:	0000                	.insn	2, 0x0000
  c0:	0801                	.insn	2, 0x0801
  c2:	00021307          	.insn	4, 0x00021307
  c6:	0100                	.insn	2, 0x0100
  c8:	0201                	.insn	2, 0x0201
  ca:	027d                	.insn	2, 0x027d
  cc:	0000                	.insn	2, 0x0000
  ce:	2b04                	.insn	2, 0x2b04
  d0:	0002                	.insn	2, 0x0002
  d2:	8700                	.insn	2, 0x8700
  d4:	00003a0f          	.insn	4, 0x3a0f
  d8:	0400                	.insn	2, 0x0400
  da:	022a                	.insn	2, 0x022a
  dc:	0000                	.insn	2, 0x0000
  de:	1688                	.insn	2, 0x1688
  e0:	0041                	.insn	2, 0x0041
  e2:	0000                	.insn	2, 0x0000
  e4:	b104                	.insn	2, 0xb104
  e6:	0000                	.insn	2, 0x0000
  e8:	8b00                	.insn	2, 0x8b00
  ea:	0000b60f          	.insn	4, 0xb60f
  ee:	0100                	.insn	2, 0x0100
  f0:	0510                	.insn	2, 0x0510
  f2:	000001e7          	jalr	gp,zero # 0 <exit-0x10120>
  f6:	0201                	.insn	2, 0x0201
  f8:	a404                	.insn	2, 0xa404
  fa:	0001                	.insn	2, 0x0001
  fc:	0100                	.insn	2, 0x0100
  fe:	0304                	.insn	2, 0x0304
 100:	019c                	.insn	2, 0x019c
 102:	0000                	.insn	2, 0x0000
 104:	0401                	.insn	2, 0x0401
 106:	7704                	.insn	2, 0x7704
 108:	0002                	.insn	2, 0x0002
 10a:	0100                	.insn	2, 0x0100
 10c:	0308                	.insn	2, 0x0308
 10e:	0000026f          	jal	tp,10e <exit-0x10012>
 112:	0801                	.insn	2, 0x0801
 114:	0504                	.insn	2, 0x0504
 116:	0002                	.insn	2, 0x0002
 118:	0100                	.insn	2, 0x0100
 11a:	0310                	.insn	2, 0x0310
 11c:	0250                	.insn	2, 0x0250
 11e:	0000                	.insn	2, 0x0000
 120:	2001                	.insn	2, 0x2001
 122:	0001f803          	.insn	4, 0x0001f803
 126:	0a00                	.insn	2, 0x0a00
 128:	00b8                	.insn	2, 0x00b8
 12a:	0000                	.insn	2, 0x0000
 12c:	0210                	.insn	2, 0x0210
 12e:	0205                	.insn	2, 0x0205
 130:	190a                	.insn	2, 0x190a
 132:	0001                	.insn	2, 0x0001
 134:	0b00                	.insn	2, 0x0b00
 136:	6f6c                	.insn	2, 0x6f6c
 138:	05020077          	.insn	4, 0x05020077
 13c:	1a02                	.insn	2, 0x1a02
 13e:	0095                	.insn	2, 0x0095
 140:	0000                	.insn	2, 0x0000
 142:	0c00                	.insn	2, 0x0c00
 144:	020e                	.insn	2, 0x020e
 146:	0000                	.insn	2, 0x0000
 148:	0502                	.insn	2, 0x0502
 14a:	1f02                	.insn	2, 0x1f02
 14c:	0095                	.insn	2, 0x0095
 14e:	0000                	.insn	2, 0x0000
 150:	0008                	.insn	2, 0x0008
 152:	100d                	.insn	2, 0x100d
 154:	0c02                	.insn	2, 0x0c02
 156:	0902                	.insn	2, 0x0902
 158:	0139                	.insn	2, 0x0139
 15a:	0000                	.insn	2, 0x0000
 15c:	7306                	.insn	2, 0x7306
 15e:	0e00                	.insn	2, 0x0e00
 160:	1302                	.insn	2, 0x1302
 162:	00ee                	.insn	2, 0x00ee
 164:	0000                	.insn	2, 0x0000
 166:	6c06                	.insn	2, 0x6c06
 168:	006c                	.insn	2, 0x006c
 16a:	ab0a020f          	.insn	4, 0xab0a020f
 16e:	0000                	.insn	2, 0x0000
 170:	0000                	.insn	2, 0x0000
 172:	f00e                	.insn	2, 0xf00e
 174:	0001                	.insn	2, 0x0001
 176:	0200                	.insn	2, 0x0200
 178:	0210                	.insn	2, 0x0210
 17a:	00011903          	lh	s2,0(sp)
 17e:	0f00                	.insn	2, 0x0f00
 180:	0139                	.insn	2, 0x0139
 182:	0000                	.insn	2, 0x0000
 184:	cb10                	.insn	2, 0xcb10
 186:	0001                	.insn	2, 0x0001
 188:	0100                	.insn	2, 0x0100
 18a:	0129                	.insn	2, 0x0129
 18c:	000000ab          	.insn	4, 0x00ab
 190:	0d78                	.insn	2, 0x0d78
 192:	0001                	.insn	2, 0x0001
 194:	0000                	.insn	2, 0x0000
 196:	0000                	.insn	2, 0x0000
 198:	008c                	.insn	2, 0x008c
 19a:	0000                	.insn	2, 0x0000
 19c:	0000                	.insn	2, 0x0000
 19e:	0000                	.insn	2, 0x0000
 1a0:	9c01                	.insn	2, 0x9c01
 1a2:	12007507          	.insn	4, 0x12007507
 1a6:	000000ab          	.insn	4, 0x00ab
 1aa:	0010                	.insn	2, 0x0010
 1ac:	0000                	.insn	2, 0x0000
 1ae:	000c                	.insn	2, 0x000c
 1b0:	0000                	.insn	2, 0x0000
 1b2:	1c007607          	.insn	4, 0x1c007607
 1b6:	000000ab          	.insn	4, 0x00ab
 1ba:	002a                	.insn	2, 0x002a
 1bc:	0000                	.insn	2, 0x0000
 1be:	0026                	.insn	2, 0x0026
 1c0:	0000                	.insn	2, 0x0000
 1c2:	7505                	.insn	2, 0x7505
 1c4:	0075                	.insn	2, 0x0075
 1c6:	0146112b          	.insn	4, 0x0146112b
 1ca:	0000                	.insn	2, 0x0000
 1cc:	7605                	.insn	2, 0x7605
 1ce:	0076                	.insn	2, 0x0076
 1d0:	112c                	.insn	2, 0x112c
 1d2:	0146                	.insn	2, 0x0146
 1d4:	0000                	.insn	2, 0x0000
 1d6:	7705                	.insn	2, 0x7705
 1d8:	2d00                	.insn	2, 0x2d00
 1da:	0001390b          	.insn	4, 0x0001390b
 1de:	0200                	.insn	2, 0x0200
 1e0:	025f 0000 a02e      	.insn	6, 0xa02e0000025f
 1e6:	0000                	.insn	2, 0x0000
 1e8:	4400                	.insn	2, 0x4400
 1ea:	0000                	.insn	2, 0x0000
 1ec:	4000                	.insn	2, 0x4000
 1ee:	0000                	.insn	2, 0x0000
 1f0:	0200                	.insn	2, 0x0200
 1f2:	0232                	.insn	2, 0x0232
 1f4:	0000                	.insn	2, 0x0000
 1f6:	0000a02f          	.insn	4, 0xa02f
 1fa:	5300                	.insn	2, 0x5300
 1fc:	0000                	.insn	2, 0x0000
 1fe:	4f00                	.insn	2, 0x4f00
 200:	0000                	.insn	2, 0x0000
 202:	0300                	.insn	2, 0x0300
 204:	000001b3          	add	gp,zero,zero
 208:	0a30                	.insn	2, 0x0a30
 20a:	00a0                	.insn	2, 0x00a0
 20c:	0000                	.insn	2, 0x0000
 20e:	5e01                	.insn	2, 0x5e01
 210:	6902                	.insn	2, 0x6902
 212:	0002                	.insn	2, 0x0002
 214:	3100                	.insn	2, 0x3100
 216:	00a0                	.insn	2, 0x00a0
 218:	0000                	.insn	2, 0x0000
 21a:	0065                	.insn	2, 0x0065
 21c:	0000                	.insn	2, 0x0000
 21e:	005f 0000 6502      	.insn	6, 0x65020000005f
 224:	0002                	.insn	2, 0x0002
 226:	3200                	.insn	2, 0x3200
 228:	00a0                	.insn	2, 0x00a0
 22a:	0000                	.insn	2, 0x0000
 22c:	0000007b          	.insn	4, 0x007b
 230:	00000077          	.insn	4, 0x0077
 234:	0c02                	.insn	2, 0x0c02
 236:	0002                	.insn	2, 0x0002
 238:	3300                	.insn	2, 0x3300
 23a:	00a0                	.insn	2, 0x00a0
 23c:	0000                	.insn	2, 0x0000
 23e:	0091                	.insn	2, 0x0091
 240:	0000                	.insn	2, 0x0000
 242:	0000008b          	.insn	4, 0x008b
 246:	6602                	.insn	2, 0x6602
 248:	0001                	.insn	2, 0x0001
 24a:	3400                	.insn	2, 0x3400
 24c:	00a0                	.insn	2, 0x00a0
 24e:	0000                	.insn	2, 0x0000
 250:	00ac                	.insn	2, 0x00ac
 252:	0000                	.insn	2, 0x0000
 254:	00a2                	.insn	2, 0x00a2
 256:	0000                	.insn	2, 0x0000
 258:	8f02                	.insn	2, 0x8f02
 25a:	0001                	.insn	2, 0x0001
 25c:	3500                	.insn	2, 0x3500
 25e:	00a0                	.insn	2, 0x00a0
 260:	0000                	.insn	2, 0x0000
 262:	000000cf          	.insn	4, 0x00cf
 266:	00cd                	.insn	2, 0x00cd
 268:	0000                	.insn	2, 0x0000
 26a:	ad02                	.insn	2, 0xad02
 26c:	0001                	.insn	2, 0x0001
 26e:	3600                	.insn	2, 0x3600
 270:	00a0                	.insn	2, 0x00a0
 272:	0000                	.insn	2, 0x0000
 274:	00d9                	.insn	2, 0x00d9
 276:	0000                	.insn	2, 0x0000
 278:	00d5                	.insn	2, 0x00d5
 27a:	0000                	.insn	2, 0x0000
 27c:	d011                	.insn	2, 0xd011
 27e:	010d                	.insn	2, 0x010d
 280:	0000                	.insn	2, 0x0000
 282:	0000                	.insn	2, 0x0000
 284:	0800                	.insn	2, 0x0800
 286:	0000                	.insn	2, 0x0000
 288:	0000                	.insn	2, 0x0000
 28a:	0000                	.insn	2, 0x0000
 28c:	7300                	.insn	2, 0x7300
 28e:	0002                	.insn	2, 0x0002
 290:	0300                	.insn	2, 0x0300
 292:	00000183          	lb	gp,0(zero) # 0 <exit-0x10120>
 296:	1b50                	.insn	2, 0x1b50
 298:	00a0                	.insn	2, 0x00a0
 29a:	0000                	.insn	2, 0x0000
 29c:	5a01                	.insn	2, 0x5a01
 29e:	00018903          	lb	s2,0(gp) # 13818 <__global_pointer$>
 2a2:	5000                	.insn	2, 0x5000
 2a4:	0000a01b          	.insn	4, 0xa01b
 2a8:	0100                	.insn	2, 0x0100
 2aa:	e012005b          	.insn	4, 0xe012005b
 2ae:	010d                	.insn	2, 0x010d
 2b0:	0000                	.insn	2, 0x0000
 2b2:	0000                	.insn	2, 0x0000
 2b4:	0c00                	.insn	2, 0x0c00
 2b6:	0000                	.insn	2, 0x0000
 2b8:	0000                	.insn	2, 0x0000
 2ba:	0000                	.insn	2, 0x0000
 2bc:	0300                	.insn	2, 0x0300
 2be:	00000183          	lb	gp,0(zero) # 0 <exit-0x10120>
 2c2:	00a01153          	.insn	4, 0x00a01153
 2c6:	0000                	.insn	2, 0x0000
 2c8:	5a01                	.insn	2, 0x5a01
 2ca:	00018903          	lb	s2,0(gp) # 13818 <__global_pointer$>
 2ce:	5300                	.insn	2, 0x5300
 2d0:	a011                	.insn	2, 0xa011
 2d2:	0000                	.insn	2, 0x0000
 2d4:	0100                	.insn	2, 0x0100
 2d6:	0000005b          	.insn	4, 0x005b

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
  26:	0000                	.insn	2, 0x0000
  28:	2401                	.insn	2, 0x2401
  2a:	0b00                	.insn	2, 0x0b00
  2c:	030b3e0b          	.insn	4, 0x030b3e0b
  30:	000e                	.insn	2, 0x000e
  32:	0200                	.insn	2, 0x0200
  34:	0034                	.insn	2, 0x0034
  36:	213a0e03          	lb	t3,531(s4)
  3a:	3b01                	.insn	2, 0x3b01
  3c:	0a21390b          	.insn	4, 0x0a21390b
  40:	1349                	.insn	2, 0x1349
  42:	1702                	.insn	2, 0x1702
  44:	001742b7          	lui	t0,0x174
  48:	0300                	.insn	2, 0x0300
  4a:	0034                	.insn	2, 0x0034
  4c:	213a0e03          	lb	t3,531(s4)
  50:	3b01                	.insn	2, 0x3b01
  52:	490b390b          	.insn	4, 0x490b390b
  56:	00180213          	addi	tp,a6,1
  5a:	0400                	.insn	2, 0x0400
  5c:	0016                	.insn	2, 0x0016
  5e:	213a0e03          	lb	t3,531(s4)
  62:	3b02                	.insn	2, 0x3b02
  64:	490b390b          	.insn	4, 0x490b390b
  68:	05000013          	li	zero,80
  6c:	0034                	.insn	2, 0x0034
  6e:	213a0803          	lb	a6,531(s4)
  72:	3b01                	.insn	2, 0x3b01
  74:	490b390b          	.insn	4, 0x490b390b
  78:	06000013          	li	zero,96
  7c:	000d                	.insn	2, 0x000d
  7e:	213a0803          	lb	a6,531(s4)
  82:	3b02                	.insn	2, 0x3b02
  84:	3905                	.insn	2, 0x3905
  86:	0013490b          	.insn	4, 0x0013490b
  8a:	0700                	.insn	2, 0x0700
  8c:	0005                	.insn	2, 0x0005
  8e:	213a0803          	lb	a6,531(s4)
  92:	3b01                	.insn	2, 0x3b01
  94:	2921                	.insn	2, 0x2921
  96:	0b39                	.insn	2, 0x0b39
  98:	1349                	.insn	2, 0x1349
  9a:	1702                	.insn	2, 0x1702
  9c:	001742b7          	lui	t0,0x174
  a0:	0800                	.insn	2, 0x0800
  a2:	0111                	.insn	2, 0x0111
  a4:	0e25                	.insn	2, 0x0e25
  a6:	01900b13          	li	s6,25
  aa:	0601910b          	.insn	4, 0x0601910b
  ae:	1f1b1f03          	lh	t5,497(s6)
  b2:	0111                	.insn	2, 0x0111
  b4:	0712                	.insn	2, 0x0712
  b6:	1710                	.insn	2, 0x1710
  b8:	0000                	.insn	2, 0x0000
  ba:	2409                	.insn	2, 0x2409
  bc:	0b00                	.insn	2, 0x0b00
  be:	030b3e0b          	.insn	4, 0x030b3e0b
  c2:	0008                	.insn	2, 0x0008
  c4:	0a00                	.insn	2, 0x0a00
  c6:	0e030113          	addi	sp,t1,224
  ca:	0b3a0b0b          	.insn	4, 0x0b3a0b0b
  ce:	0b39053b          	.insn	4, 0x0b39053b
  d2:	1301                	.insn	2, 0x1301
  d4:	0000                	.insn	2, 0x0000
  d6:	03000d0b          	.insn	4, 0x03000d0b
  da:	3a08                	.insn	2, 0x3a08
  dc:	39053b0b          	.insn	4, 0x39053b0b
  e0:	3813490b          	.insn	4, 0x3813490b
  e4:	0c00000b          	.insn	4, 0x0c00000b
  e8:	000d                	.insn	2, 0x000d
  ea:	0b3a0e03          	lb	t3,179(s4)
  ee:	0b39053b          	.insn	4, 0x0b39053b
  f2:	1349                	.insn	2, 0x1349
  f4:	0b38                	.insn	2, 0x0b38
  f6:	0000                	.insn	2, 0x0000
  f8:	170d                	.insn	2, 0x170d
  fa:	0b01                	.insn	2, 0x0b01
  fc:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 100:	3905                	.insn	2, 0x3905
 102:	0013010b          	.insn	4, 0x0013010b
 106:	0e00                	.insn	2, 0x0e00
 108:	0016                	.insn	2, 0x0016
 10a:	0b3a0e03          	lb	t3,179(s4)
 10e:	0b39053b          	.insn	4, 0x0b39053b
 112:	1349                	.insn	2, 0x1349
 114:	0000                	.insn	2, 0x0000
 116:	4900260f          	.insn	4, 0x4900260f
 11a:	10000013          	li	zero,256
 11e:	012e                	.insn	2, 0x012e
 120:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 128:	0b39                	.insn	2, 0x0b39
 12a:	13491927          	.insn	4, 0x13491927
 12e:	0111                	.insn	2, 0x0111
 130:	0712                	.insn	2, 0x0712
 132:	1840                	.insn	2, 0x1840
 134:	197a                	.insn	2, 0x197a
 136:	0000                	.insn	2, 0x0000
 138:	0b11                	.insn	2, 0x0b11
 13a:	1101                	.insn	2, 0x1101
 13c:	1201                	.insn	2, 0x1201
 13e:	00130107          	.insn	4, 0x00130107
 142:	1200                	.insn	2, 0x1200
 144:	0111010b          	.insn	4, 0x0111010b
 148:	0712                	.insn	2, 0x0712
 14a:	0000                	.insn	2, 0x0000
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
  26:	0069                	.insn	2, 0x0069
  28:	0000                	.insn	2, 0x0000
  2a:	0102                	.insn	2, 0x0102
  2c:	021f 020f 0093      	.insn	6, 0x0093020f021f
  32:	0000                	.insn	2, 0x0000
  34:	9301                	.insn	2, 0x9301
  36:	0000                	.insn	2, 0x0000
  38:	0100                	.insn	2, 0x0100
  3a:	0900                	.insn	2, 0x0900
  3c:	5402                	.insn	2, 0x5402
  3e:	010d                	.insn	2, 0x010d
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
  7e:	01fa                	.insn	2, 0x01fa
  80:	0000                	.insn	2, 0x0000
  82:	0005                	.insn	2, 0x0005
  84:	0008                	.insn	2, 0x0008
  86:	00000037          	lui	zero,0x0
  8a:	0101                	.insn	2, 0x0101
  8c:	f601                	.insn	2, 0xf601
  8e:	0df2                	.insn	2, 0x0df2
  90:	0100                	.insn	2, 0x0100
  92:	0101                	.insn	2, 0x0101
  94:	0001                	.insn	2, 0x0001
  96:	0000                	.insn	2, 0x0000
  98:	0001                	.insn	2, 0x0001
  9a:	0100                	.insn	2, 0x0100
  9c:	0101                	.insn	2, 0x0101
  9e:	031f 0000 0000      	.insn	6, 0x031f
  a4:	0069                	.insn	2, 0x0069
  a6:	0000                	.insn	2, 0x0000
  a8:	00d9                	.insn	2, 0x00d9
  aa:	0000                	.insn	2, 0x0000
  ac:	0102                	.insn	2, 0x0102
  ae:	021f 030b 009c      	.insn	6, 0x009c030b021f
  b4:	0000                	.insn	2, 0x0000
  b6:	c600                	.insn	2, 0xc600
  b8:	0000                	.insn	2, 0x0000
  ba:	0100                	.insn	2, 0x0100
  bc:	000000cf          	.insn	4, 0x00cf
  c0:	0002                	.insn	2, 0x0002
  c2:	0209                	.insn	2, 0x0209
  c4:	0d78                	.insn	2, 0x0d78
  c6:	0001                	.insn	2, 0x0001
  c8:	0000                	.insn	2, 0x0000
  ca:	0000                	.insn	2, 0x0000
  cc:	0540                	.insn	2, 0x0540
  ce:	0901                	.insn	2, 0x0901
  d0:	0000                	.insn	2, 0x0000
  d2:	0518                	.insn	2, 0x0518
  d4:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
  d8:	0518                	.insn	2, 0x0518
  da:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
  de:	0518                	.insn	2, 0x0518
  e0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
  e4:	0518                	.insn	2, 0x0518
  e6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
  ea:	1306                	.insn	2, 0x1306
  ec:	0105                	.insn	2, 0x0105
  ee:	0c09                	.insn	2, 0x0c09
  f0:	0100                	.insn	2, 0x0100
  f2:	0105                	.insn	2, 0x0105
  f4:	0409                	.insn	2, 0x0409
  f6:	1b00                	.insn	2, 0x1b00
  f8:	0a05                	.insn	2, 0x0a05
  fa:	0409                	.insn	2, 0x0409
  fc:	0600                	.insn	2, 0x0600
  fe:	0518                	.insn	2, 0x0518
 100:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 104:	0518                	.insn	2, 0x0518
 106:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 10a:	0518                	.insn	2, 0x0518
 10c:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 110:	0518                	.insn	2, 0x0518
 112:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 116:	0518                	.insn	2, 0x0518
 118:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 11c:	0518                	.insn	2, 0x0518
 11e:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 122:	1206                	.insn	2, 0x1206
 124:	0a05                	.insn	2, 0x0a05
 126:	0409                	.insn	2, 0x0409
 128:	1c00                	.insn	2, 0x1c00
 12a:	0a05                	.insn	2, 0x0a05
 12c:	0409                	.insn	2, 0x0409
 12e:	1600                	.insn	2, 0x1600
 130:	0a05                	.insn	2, 0x0a05
 132:	0409                	.insn	2, 0x0409
 134:	1500                	.insn	2, 0x1500
 136:	0a05                	.insn	2, 0x0a05
 138:	0409                	.insn	2, 0x0409
 13a:	0600                	.insn	2, 0x0600
 13c:	0903051b          	addiw	a0,t1,144
 140:	0000                	.insn	2, 0x0000
 142:	0518                	.insn	2, 0x0518
 144:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 148:	0903051b          	addiw	a0,t1,144
 14c:	0000                	.insn	2, 0x0000
 14e:	0519                	.insn	2, 0x0519
 150:	00000907          	.insn	4, 0x0907
 154:	0518                	.insn	2, 0x0518
 156:	00000907          	.insn	4, 0x0907
 15a:	1906                	.insn	2, 0x1906
 15c:	1105                	.insn	2, 0x1105
 15e:	0409                	.insn	2, 0x0409
 160:	1500                	.insn	2, 0x1500
 162:	1405                	.insn	2, 0x1405
 164:	0409                	.insn	2, 0x0409
 166:	0600                	.insn	2, 0x0600
 168:	0518                	.insn	2, 0x0518
 16a:	00000907          	.insn	4, 0x0907
 16e:	0518                	.insn	2, 0x0518
 170:	00000907          	.insn	4, 0x0907
 174:	0106                	.insn	2, 0x0106
 176:	0a05                	.insn	2, 0x0a05
 178:	0409                	.insn	2, 0x0409
 17a:	0100                	.insn	2, 0x0100
 17c:	0a05                	.insn	2, 0x0a05
 17e:	0409                	.insn	2, 0x0409
 180:	1600                	.insn	2, 0x1600
 182:	1205                	.insn	2, 0x1205
 184:	0409                	.insn	2, 0x0409
 186:	0600                	.insn	2, 0x0600
 188:	051a                	.insn	2, 0x051a
 18a:	0904                	.insn	2, 0x0904
 18c:	0000                	.insn	2, 0x0000
 18e:	0518                	.insn	2, 0x0518
 190:	0904                	.insn	2, 0x0904
 192:	0000                	.insn	2, 0x0000
 194:	0518                	.insn	2, 0x0518
 196:	0904                	.insn	2, 0x0904
 198:	0000                	.insn	2, 0x0000
 19a:	1506                	.insn	2, 0x1506
 19c:	1605                	.insn	2, 0x1605
 19e:	0409                	.insn	2, 0x0409
 1a0:	1900                	.insn	2, 0x1900
 1a2:	0b05                	.insn	2, 0x0b05
 1a4:	0409                	.insn	2, 0x0409
 1a6:	0600                	.insn	2, 0x0600
 1a8:	0519                	.insn	2, 0x0519
 1aa:	00000907          	.insn	4, 0x0907
 1ae:	0106                	.insn	2, 0x0106
 1b0:	1105                	.insn	2, 0x1105
 1b2:	0409                	.insn	2, 0x0409
 1b4:	0600                	.insn	2, 0x0600
 1b6:	0518                	.insn	2, 0x0518
 1b8:	00000907          	.insn	4, 0x0907
 1bc:	0106                	.insn	2, 0x0106
 1be:	0d05                	.insn	2, 0x0d05
 1c0:	0409                	.insn	2, 0x0409
 1c2:	0600                	.insn	2, 0x0600
 1c4:	0518                	.insn	2, 0x0518
 1c6:	00000907          	.insn	4, 0x0907
 1ca:	0518                	.insn	2, 0x0518
 1cc:	00000907          	.insn	4, 0x0907
 1d0:	0106                	.insn	2, 0x0106
 1d2:	1205                	.insn	2, 0x1205
 1d4:	0809                	.insn	2, 0x0809
 1d6:	0600                	.insn	2, 0x0600
 1d8:	0519                	.insn	2, 0x0519
 1da:	090a                	.insn	2, 0x090a
 1dc:	0004                	.insn	2, 0x0004
 1de:	0519                	.insn	2, 0x0519
 1e0:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 1e4:	0518                	.insn	2, 0x0518
 1e6:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 1ea:	0519                	.insn	2, 0x0519
 1ec:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 1f0:	0106                	.insn	2, 0x0106
 1f2:	0605                	.insn	2, 0x0605
 1f4:	0409                	.insn	2, 0x0409
 1f6:	0600                	.insn	2, 0x0600
 1f8:	0518                	.insn	2, 0x0518
 1fa:	0905                	.insn	2, 0x0905
 1fc:	0000                	.insn	2, 0x0000
 1fe:	0501                	.insn	2, 0x0501
 200:	0004091b          	sext.w	s2,s0
 204:	0501                	.insn	2, 0x0501
 206:	0000091b          	sext.w	s2,zero
 20a:	0501                	.insn	2, 0x0501
 20c:	0004091b          	sext.w	s2,s0
 210:	0501                	.insn	2, 0x0501
 212:	0000091b          	sext.w	s2,zero
 216:	0106                	.insn	2, 0x0106
 218:	1b05                	.insn	2, 0x1b05
 21a:	0009                	.insn	2, 0x0009
 21c:	0100                	.insn	2, 0x0100
 21e:	1905                	.insn	2, 0x1905
 220:	0409                	.insn	2, 0x0409
 222:	0600                	.insn	2, 0x0600
 224:	0519                	.insn	2, 0x0519
 226:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 22a:	0106                	.insn	2, 0x0106
 22c:	0605                	.insn	2, 0x0605
 22e:	0409                	.insn	2, 0x0409
 230:	0600                	.insn	2, 0x0600
 232:	0518                	.insn	2, 0x0518
 234:	0905                	.insn	2, 0x0905
 236:	0000                	.insn	2, 0x0000
 238:	0501                	.insn	2, 0x0501
 23a:	0911                	.insn	2, 0x0911
 23c:	0004                	.insn	2, 0x0004
 23e:	0501                	.insn	2, 0x0501
 240:	0911                	.insn	2, 0x0911
 242:	0004                	.insn	2, 0x0004
 244:	0501                	.insn	2, 0x0501
 246:	0911                	.insn	2, 0x0911
 248:	0004                	.insn	2, 0x0004
 24a:	0501                	.insn	2, 0x0501
 24c:	0911                	.insn	2, 0x0911
 24e:	0000                	.insn	2, 0x0000
 250:	0106                	.insn	2, 0x0106
 252:	1105                	.insn	2, 0x1105
 254:	0009                	.insn	2, 0x0009
 256:	0100                	.insn	2, 0x0100
 258:	0e05                	.insn	2, 0x0e05
 25a:	0409                	.insn	2, 0x0409
 25c:	0600                	.insn	2, 0x0600
 25e:	0519                	.insn	2, 0x0519
 260:	00000903          	lb	s2,0(zero) # 0 <exit-0x10120>
 264:	1806                	.insn	2, 0x1806
 266:	0105                	.insn	2, 0x0105
 268:	0809                	.insn	2, 0x0809
 26a:	0100                	.insn	2, 0x0100
 26c:	0105                	.insn	2, 0x0105
 26e:	0900                	.insn	2, 0x0900
 270:	0402                	.insn	2, 0x0402
 272:	010e                	.insn	2, 0x010e
 274:	0000                	.insn	2, 0x0000
 276:	0000                	.insn	2, 0x0000
 278:	0000                	.insn	2, 0x0000
 27a:	0101                	.insn	2, 0x0101

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
   0:	000c                	.insn	2, 0x000c
   2:	0000                	.insn	2, 0x0000
   4:	ffff                	.insn	2, 0xffff
   6:	ffff                	.insn	2, 0xffff
   8:	7c010003          	lb	zero,1984(sp) # 120117c4 <__BSS_END__+0x11ffd844>
   c:	0c01                	.insn	2, 0x0c01
   e:	0002                	.insn	2, 0x0002
  10:	0024                	.insn	2, 0x0024
  12:	0000                	.insn	2, 0x0000
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	0d78                	.insn	2, 0x0d78
  1a:	0001                	.insn	2, 0x0001
  1c:	0000                	.insn	2, 0x0000
  1e:	0000                	.insn	2, 0x0000
  20:	008c                	.insn	2, 0x008c
  22:	0000                	.insn	2, 0x0000
  24:	0000                	.insn	2, 0x0000
  26:	0000                	.insn	2, 0x0000
  28:	0e44                	.insn	2, 0x0e44
  2a:	4810                	.insn	2, 0x4810
  2c:	0281                	.insn	2, 0x0281
  2e:	7002                	.insn	2, 0x7002
  30:	4cc1                	.insn	2, 0x4cc1
  32:	000e                	.insn	2, 0x000e
  34:	0000                	.insn	2, 0x0000
	...

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
  38:	6575792f          	.insn	4, 0x6575792f
  3c:	2f72                	.insn	2, 0x2f72
  3e:	796d                	.insn	2, 0x796d
  40:	7270                	.insn	2, 0x7270
  42:	69722f6f          	jal	t5,22ed8 <__BSS_END__+0xef58>
  46:	2d766373          	.insn	4, 0x2d766373
  4a:	2d756e67          	.insn	4, 0x2d756e67
  4e:	6f74                	.insn	2, 0x6f74
  50:	68636c6f          	jal	s8,366d6 <__BSS_END__+0x22756>
  54:	6961                	.insn	2, 0x6961
  56:	2f6e                	.insn	2, 0x2f6e
  58:	7562                	.insn	2, 0x7562
  5a:	6c69                	.insn	2, 0x6c69
  5c:	2f64                	.insn	2, 0x2f64
  5e:	7562                	.insn	2, 0x7562
  60:	6c69                	.insn	2, 0x6c69
  62:	2d64                	.insn	2, 0x2d64
  64:	2d636367          	.insn	4, 0x2d636367
  68:	656e                	.insn	2, 0x656e
  6a:	62696c77          	.insn	4, 0x62696c77
  6e:	732d                	.insn	2, 0x732d
  70:	6174                	.insn	2, 0x6174
  72:	2f326567          	.insn	4, 0x2f326567
  76:	6972                	.insn	2, 0x6972
  78:	36766373          	.insn	4, 0x36766373
  7c:	2d34                	.insn	2, 0x2d34
  7e:	6e75                	.insn	2, 0x6e75
  80:	776f6e6b          	.insn	4, 0x776f6e6b
  84:	2d6e                	.insn	2, 0x2d6e
  86:	6c65                	.insn	2, 0x6c65
  88:	2f66                	.insn	2, 0x2f66
  8a:	7672                	.insn	2, 0x7672
  8c:	3436                	.insn	2, 0x3436
  8e:	2f69                	.insn	2, 0x2f69
  90:	706c                	.insn	2, 0x706c
  92:	3436                	.insn	2, 0x3436
  94:	62696c2f          	.insn	4, 0x62696c2f
  98:	00636367          	.insn	4, 0x00636367
  9c:	20554e47          	.insn	4, 0x20554e47
  a0:	5341                	.insn	2, 0x5341
  a2:	3220                	.insn	2, 0x3220
  a4:	342e                	.insn	2, 0x342e
  a6:	0035                	.insn	2, 0x0035
  a8:	5f5f 756d 646c      	.insn	6, 0x646c756d5f5f
  ae:	3369                	.insn	2, 0x3369
  b0:	5400                	.insn	2, 0x5400
  b2:	7449                	.insn	2, 0x7449
  b4:	7079                	.insn	2, 0x7079
  b6:	0065                	.insn	2, 0x0065
  b8:	5744                	.insn	2, 0x5744
  ba:	75727473          	.insn	4, 0x75727473
  be:	47007463          	bgeu	zero,a6,526 <exit-0xfbfa>
  c2:	554e                	.insn	2, 0x554e
  c4:	4320                	.insn	2, 0x4320
  c6:	3332                	.insn	2, 0x3332
  c8:	3120                	.insn	2, 0x3120
  ca:	2e35                	.insn	2, 0x2e35
  cc:	2e31                	.insn	2, 0x2e31
  ce:	2030                	.insn	2, 0x2030
  d0:	6d2d                	.insn	2, 0x6d2d
  d2:	646f6d63          	bltu	t5,t1,72c <exit-0xf9f4>
  d6:	6c65                	.insn	2, 0x6c65
  d8:	6d3d                	.insn	2, 0x6d3d
  da:	6465                	.insn	2, 0x6465
  dc:	6f6c                	.insn	2, 0x6f6c
  de:	6d2d2077          	.insn	4, 0x6d2d2077
  e2:	6261                	.insn	2, 0x6261
  e4:	3d69                	.insn	2, 0x3d69
  e6:	706c                	.insn	2, 0x706c
  e8:	3436                	.insn	2, 0x3436
  ea:	2d20                	.insn	2, 0x2d20
  ec:	636d                	.insn	2, 0x636d
  ee:	6f6d                	.insn	2, 0x6f6d
  f0:	6564                	.insn	2, 0x6564
  f2:	3d6c                	.insn	2, 0x3d6c
  f4:	656d                	.insn	2, 0x656d
  f6:	6c64                	.insn	2, 0x6c64
  f8:	2d20776f          	jal	a4,73ca <exit-0x8d56>
  fc:	696d                	.insn	2, 0x696d
  fe:	732d6173          	.insn	4, 0x732d6173
 102:	6570                	.insn	2, 0x6570
 104:	30323d63          	.insn	4, 0x30323d63
 108:	3931                	.insn	2, 0x3931
 10a:	3231                	.insn	2, 0x3231
 10c:	3331                	.insn	2, 0x3331
 10e:	2d20                	.insn	2, 0x2d20
 110:	616d                	.insn	2, 0x616d
 112:	6372                	.insn	2, 0x6372
 114:	3d68                	.insn	2, 0x3d68
 116:	7672                	.insn	2, 0x7672
 118:	3436                	.insn	2, 0x3436
 11a:	2069                	.insn	2, 0x2069
 11c:	672d                	.insn	2, 0x672d
 11e:	2d20                	.insn	2, 0x2d20
 120:	2d20734f          	.insn	4, 0x2d20734f
 124:	2d20324f          	.insn	4, 0x2d20324f
 128:	2d20734f          	.insn	4, 0x2d20734f
 12c:	6266                	.insn	2, 0x6266
 12e:	6975                	.insn	2, 0x6975
 130:	646c                	.insn	2, 0x646c
 132:	6e69                	.insn	2, 0x6e69
 134:	696c2d67          	.insn	4, 0x696c2d67
 138:	6762                	.insn	2, 0x6762
 13a:	2d206363          	bltu	zero,s2,400 <exit-0xfd20>
 13e:	6e66                	.insn	2, 0x6e66
 140:	74732d6f          	jal	s10,33086 <__BSS_END__+0x1f106>
 144:	6361                	.insn	2, 0x6361
 146:	72702d6b          	.insn	4, 0x72702d6b
 14a:	6365746f          	jal	s0,57780 <__BSS_END__+0x43800>
 14e:	6f74                	.insn	2, 0x6f74
 150:	2072                	.insn	2, 0x2072
 152:	662d                	.insn	2, 0x662d
 154:	6976                	.insn	2, 0x6976
 156:	69626973          	.insn	4, 0x69626973
 15a:	696c                	.insn	2, 0x696c
 15c:	7974                	.insn	2, 0x7974
 15e:	683d                	.insn	2, 0x683d
 160:	6469                	.insn	2, 0x6469
 162:	6564                	.insn	2, 0x6564
 164:	006e                	.insn	2, 0x006e
 166:	69685f77          	.insn	4, 0x69685f77
 16a:	745f6867          	.insn	4, 0x745f6867
 16e:	706d                	.insn	2, 0x706d
 170:	5f00                	.insn	2, 0x5f00
 172:	695f 746e 3231      	.insn	6, 0x3231746e695f
 178:	2038                	.insn	2, 0x2038
 17a:	6e75                	.insn	2, 0x6e75
 17c:	6e676973          	.insn	4, 0x6e676973
 180:	6465                	.insn	2, 0x6465
 182:	5f00                	.insn	2, 0x5f00
 184:	6f5f 3070 5f00      	.insn	6, 0x5f0030706f5f
 18a:	6f5f 3170 7700      	.insn	6, 0x770031706f5f
 190:	685f 6769 5f68      	.insn	6, 0x5f686769685f
 196:	6d74                	.insn	2, 0x6d74
 198:	3270                	.insn	2, 0x3270
 19a:	0078                	.insn	2, 0x0078
 19c:	706d6f63          	bltu	s10,t1,8ba <exit-0xf866>
 1a0:	656c                	.insn	2, 0x656c
 1a2:	2078                	.insn	2, 0x2078
 1a4:	465f 6f6c 7461      	.insn	6, 0x74616f6c465f
 1aa:	3631                	.insn	2, 0x3631
 1ac:	6300                	.insn	2, 0x6300
 1ae:	7261                	.insn	2, 0x7261
 1b0:	7972                	.insn	2, 0x7972
 1b2:	7500                	.insn	2, 0x7500
 1b4:	6c5f 776f 6d5f      	.insn	6, 0x6d5f776f6c5f
 1ba:	75006273          	.insn	4, 0x75006273
 1be:	736e                	.insn	2, 0x736e
 1c0:	6769                	.insn	2, 0x6769
 1c2:	656e                	.insn	2, 0x656e
 1c4:	2064                	.insn	2, 0x2064
 1c6:	72616863          	bltu	sp,t1,8f6 <exit-0xf82a>
 1ca:	5f00                	.insn	2, 0x5f00
 1cc:	6d5f 6c75 6974      	.insn	6, 0x69746c756d5f
 1d2:	68730033          	.insn	4, 0x68730033
 1d6:	2074726f          	jal	tp,47bdc <__BSS_END__+0x33c5c>
 1da:	6e75                	.insn	2, 0x6e75
 1dc:	6e676973          	.insn	4, 0x6e676973
 1e0:	6465                	.insn	2, 0x6465
 1e2:	6920                	.insn	2, 0x6920
 1e4:	746e                	.insn	2, 0x746e
 1e6:	5f00                	.insn	2, 0x5f00
 1e8:	695f 746e 3231      	.insn	6, 0x3231746e695f
 1ee:	0038                	.insn	2, 0x0038
 1f0:	5744                	.insn	2, 0x5744
 1f2:	6e75                	.insn	2, 0x6e75
 1f4:	6f69                	.insn	2, 0x6f69
 1f6:	006e                	.insn	2, 0x006e
 1f8:	706d6f63          	bltu	s10,t1,916 <exit-0xf80a>
 1fc:	656c                	.insn	2, 0x656c
 1fe:	2078                	.insn	2, 0x2078
 200:	6f6c                	.insn	2, 0x6f6c
 202:	676e                	.insn	2, 0x676e
 204:	6420                	.insn	2, 0x6420
 206:	6c62756f          	jal	a0,278cc <__BSS_END__+0x1394c>
 20a:	0065                	.insn	2, 0x0065
 20c:	69685f77          	.insn	4, 0x69685f77
 210:	6c006867          	.insn	4, 0x6c006867
 214:	20676e6f          	jal	t3,7641a <__BSS_END__+0x6249a>
 218:	6f6c                	.insn	2, 0x6f6c
 21a:	676e                	.insn	2, 0x676e
 21c:	7520                	.insn	2, 0x7520
 21e:	736e                	.insn	2, 0x736e
 220:	6769                	.insn	2, 0x6769
 222:	656e                	.insn	2, 0x656e
 224:	2064                	.insn	2, 0x2064
 226:	6e69                	.insn	2, 0x6e69
 228:	0074                	.insn	2, 0x0074
 22a:	4455                	.insn	2, 0x4455
 22c:	7449                	.insn	2, 0x7449
 22e:	7079                	.insn	2, 0x7079
 230:	0065                	.insn	2, 0x0065
 232:	5f76                	.insn	2, 0x5f76
 234:	6f6c                	.insn	2, 0x6f6c
 236:	6f6c0077          	.insn	4, 0x6f6c0077
 23a:	676e                	.insn	2, 0x676e
 23c:	6c20                	.insn	2, 0x6c20
 23e:	20676e6f          	jal	t3,76444 <__BSS_END__+0x624c4>
 242:	6e69                	.insn	2, 0x6e69
 244:	0074                	.insn	2, 0x0074
 246:	726f6873          	.insn	4, 0x726f6873
 24a:	2074                	.insn	2, 0x2074
 24c:	6e69                	.insn	2, 0x6e69
 24e:	0074                	.insn	2, 0x0074
 250:	706d6f63          	bltu	s10,t1,96e <exit-0xf7b2>
 254:	656c                	.insn	2, 0x656c
 256:	2078                	.insn	2, 0x2078
 258:	6f64                	.insn	2, 0x6f64
 25a:	6275                	.insn	2, 0x6275
 25c:	656c                	.insn	2, 0x656c
 25e:	7500                	.insn	2, 0x7500
 260:	6c5f 776f 6e00      	.insn	6, 0x6e00776f6c5f
 266:	7765                	.insn	2, 0x7765
 268:	775f 6c5f 776f      	.insn	6, 0x776f6c5f775f
 26e:	6300                	.insn	2, 0x6300
 270:	6c706d6f          	jal	s10,7136 <exit-0x8fea>
 274:	7865                	.insn	2, 0x7865
 276:	6620                	.insn	2, 0x6620
 278:	6f6c                	.insn	2, 0x6f6c
 27a:	7461                	.insn	2, 0x7461
 27c:	5f00                	.insn	2, 0x5f00
 27e:	6f42                	.insn	2, 0x6f42
 280:	006c6f 	.3byte	0x006c6f

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
  1c:	636c6f6f          	jal	t5,c6652 <__BSS_END__+0xb26d2>
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
  86:	666e6f63          	bltu	t3,t1,704 <exit-0xfa1c>
  8a:	6769                	.insn	2, 0x6769
  8c:	7369722f          	.insn	4, 0x7369722f
  90:	6d007663          	bgeu	zero,a6,75c <exit-0xf9c4>
  94:	6c75                	.insn	2, 0x6c75
  96:	6964                	.insn	2, 0x6964
  98:	00532e33          	slt	t3,t1,t0
  9c:	2e2e                	.insn	2, 0x2e2e
  9e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  a2:	2e2e                	.insn	2, 0x2e2e
  a4:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  a8:	2e2e                	.insn	2, 0x2e2e
  aa:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  ae:	2f636367          	.insn	4, 0x2f636367
  b2:	696c                	.insn	2, 0x696c
  b4:	6762                	.insn	2, 0x6762
  b6:	632f6363          	bltu	t5,s2,6dc <exit-0xfa44>
  ba:	69666e6f          	jal	t3,66750 <__BSS_END__+0x527d0>
  be:	69722f67          	.insn	4, 0x69722f67
  c2:	2f766373          	.insn	4, 0x2f766373
  c6:	756d                	.insn	2, 0x756d
  c8:	746c                	.insn	2, 0x746c
  ca:	3369                	.insn	2, 0x3369
  cc:	632e                	.insn	2, 0x632e
  ce:	6c00                	.insn	2, 0x6c00
  d0:	6269                	.insn	2, 0x6269
  d2:	32636367          	.insn	4, 0x32636367
  d6:	682e                	.insn	2, 0x682e
  d8:	2e00                	.insn	2, 0x2e00
  da:	2f2e                	.insn	2, 0x2f2e
  dc:	2e2e                	.insn	2, 0x2e2e
  de:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  e2:	2e2e                	.insn	2, 0x2e2e
  e4:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  e8:	2e2e                	.insn	2, 0x2e2e
  ea:	6363672f          	.insn	4, 0x6363672f
  ee:	62696c2f          	.insn	4, 0x62696c2f
  f2:	00636367          	.insn	4, 0x00636367

Disassembly of section .debug_loclists:

0000000000000000 <.debug_loclists>:
   0:	0105                	.insn	2, 0x0105
   2:	0000                	.insn	2, 0x0000
   4:	0005                	.insn	2, 0x0005
   6:	0008                	.insn	2, 0x0008
   8:	0000                	.insn	2, 0x0000
   a:	0000                	.insn	2, 0x0000
   c:	1200                	.insn	2, 0x1200
   e:	0012                	.insn	2, 0x0012
  10:	0004                	.insn	2, 0x0004
  12:	0624                	.insn	2, 0x0624
  14:	935a                	.insn	2, 0x935a
  16:	5b08                	.insn	2, 0x5b08
  18:	24040893          	addi	a7,s0,576
  1c:	018c                	.insn	2, 0x018c
  1e:	a306                	.insn	2, 0xa306
  20:	330aa503          	lw	a0,816(s5)
  24:	009f 3300 0033      	.insn	6, 0x00333300009f
  2a:	0004                	.insn	2, 0x0004
  2c:	0660                	.insn	2, 0x0660
  2e:	935c                	.insn	2, 0x935c
  30:	5d08                	.insn	2, 0x5d08
  32:	60040893          	addi	a7,s0,1536
  36:	018c                	.insn	2, 0x018c
  38:	a306                	.insn	2, 0xa306
  3a:	330ca503          	lw	a0,816(s9)
  3e:	009f 1208 2a12      	.insn	6, 0x2a121208009f
  44:	1404                	.insn	2, 0x1404
  46:	0124                	.insn	2, 0x0124
  48:	045a                	.insn	2, 0x045a
  4a:	5024                	.insn	2, 0x5024
  4c:	5d01                	.insn	2, 0x5d01
  4e:	0900                	.insn	2, 0x0900
  50:	1212                	.insn	2, 0x1212
  52:	0400                	.insn	2, 0x0400
  54:	2414                	.insn	2, 0x2414
  56:	5c01                	.insn	2, 0x5c01
  58:	2404                	.insn	2, 0x2404
  5a:	018c                	.insn	2, 0x018c
  5c:	6101                	.insn	2, 0x6101
  5e:	0b00                	.insn	2, 0x0b00
  60:	1212                	.insn	2, 0x1212
  62:	201d                	.insn	2, 0x201d
  64:	0400                	.insn	2, 0x0400
  66:	2414                	.insn	2, 0x2414
  68:	3002                	.insn	2, 0x3002
  6a:	049f 3424 6001      	.insn	6, 0x60013424049f
  70:	3804                	.insn	2, 0x3804
  72:	018c                	.insn	2, 0x018c
  74:	6001                	.insn	2, 0x6001
  76:	1600                	.insn	2, 0x1600
  78:	1d1d                	.insn	2, 0x1d1d
  7a:	34240423          	sb	sp,840(s0)
  7e:	7d06                	.insn	2, 0x7d06
  80:	8000                	.insn	2, 0x8000
  82:	2200                	.insn	2, 0x2200
  84:	049f 4034 6001      	.insn	6, 0x60014034049f
  8a:	0d00                	.insn	2, 0x0d00
  8c:	1212                	.insn	2, 0x1212
  8e:	231e                	.insn	2, 0x231e
  90:	0436                	.insn	2, 0x0436
  92:	2414                	.insn	2, 0x2414
  94:	3002                	.insn	2, 0x3002
  96:	049f 3824 5f01      	.insn	6, 0x5f013824049f
  9c:	4004                	.insn	2, 0x4004
  9e:	0164                	.insn	2, 0x0164
  a0:	005f 120e 1a12      	.insn	6, 0x1a12120e005f
  a6:	1e1a                	.insn	2, 0x1e1a
  a8:	231e                	.insn	2, 0x231e
  aa:	002a                	.insn	2, 0x002a
  ac:	1404                	.insn	2, 0x1404
  ae:	0224                	.insn	2, 0x0224
  b0:	9f30                	.insn	2, 0x9f30
  b2:	2404                	.insn	2, 0x2404
  b4:	012c                	.insn	2, 0x012c
  b6:	045e                	.insn	2, 0x045e
  b8:	382c                	.insn	2, 0x382c
  ba:	7f06                	.insn	2, 0x7f06
  bc:	7e00                	.insn	2, 0x7e00
  be:	2200                	.insn	2, 0x2200
  c0:	049f 4038 5f01      	.insn	6, 0x5f014038049f
  c6:	5004                	.insn	2, 0x5004
  c8:	018c                	.insn	2, 0x018c
  ca:	5e01                	.insn	2, 0x5e01
  cc:	1900                	.insn	2, 0x1900
  ce:	0431                	.insn	2, 0x0431
  d0:	5c2c                	.insn	2, 0x5c2c
  d2:	5a01                	.insn	2, 0x5a01
  d4:	1f00                	.insn	2, 0x1f00
  d6:	2222                	.insn	2, 0x2222
  d8:	3c380423          	sb	gp,968(a6)
  dc:	801f 2300 8080      	.insn	6, 0x80802300801f
  e2:	8080                	.insn	2, 0x8080
  e4:	8080                	.insn	2, 0x8080
  e6:	8080                	.insn	2, 0x8080
  e8:	0180                	.insn	2, 0x0180
  ea:	007d                	.insn	2, 0x007d
  ec:	80808023          	sb	s0,-2048(ra) # f9dc <exit-0x744>
  f0:	8080                	.insn	2, 0x8080
  f2:	8080                	.insn	2, 0x8080
  f4:	8080                	.insn	2, 0x8080
  f6:	2d01                	.insn	2, 0x2d01
  f8:	ff08                	.insn	2, 0xff08
  fa:	9f1a                	.insn	2, 0x9f1a
  fc:	3c04                	.insn	2, 0x3c04
  fe:	0840                	.insn	2, 0x0840
 100:	007e                	.insn	2, 0x007e
 102:	2e30                	.insn	2, 0x2e30
 104:	ff08                	.insn	2, 0xff08
 106:	9f1a                	.insn	2, 0x9f1a
	...

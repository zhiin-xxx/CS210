
test/build/with-syscall/matrixmulti.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	568010ef          	jal	1169c <__call_exitprocs>
   10138:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	1ad020ef          	jal	12af4 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00013537          	lui	a0,0x13
   10158:	9bc50513          	addi	a0,a0,-1604 # 129bc <__libc_fini_array>
   1015c:	6780106f          	j	117d4 <atexit>
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
   10184:	43c010ef          	jal	115c0 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	64c50513          	addi	a0,a0,1612 # 117d4 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00003517          	auipc	a0,0x3
   10198:	82850513          	addi	a0,a0,-2008 # 129bc <__libc_fini_array>
   1019c:	638010ef          	jal	117d4 <atexit>
   101a0:	38c010ef          	jal	1152c <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	288000ef          	jal	10438 <main>
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
   101d8:	cc850513          	addi	a0,a0,-824 # 12cc8 <__EH_FRAME_BEGIN__>
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
   1020c:	cc850513          	addi	a0,a0,-824 # 12cc8 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <matmulti>:
   1021c:	f9010113          	addi	sp,sp,-112
   10220:	06113423          	sd	ra,104(sp)
   10224:	06813023          	sd	s0,96(sp)
   10228:	05213c23          	sd	s2,88(sp)
   1022c:	05313823          	sd	s3,80(sp)
   10230:	07010413          	addi	s0,sp,112
   10234:	faa43423          	sd	a0,-88(s0)
   10238:	fab43023          	sd	a1,-96(s0)
   1023c:	f8c43c23          	sd	a2,-104(s0)
   10240:	f8d42a23          	sw	a3,-108(s0)
   10244:	00a00693          	li	a3,10
   10248:	fff68693          	addi	a3,a3,-1
   1024c:	fcd43423          	sd	a3,-56(s0)
   10250:	00a00693          	li	a3,10
   10254:	00068913          	mv	s2,a3
   10258:	00000993          	li	s3,0
   1025c:	03b95693          	srli	a3,s2,0x3b
   10260:	00599393          	slli	t2,s3,0x5
   10264:	007683b3          	add	t2,a3,t2
   10268:	00591313          	slli	t1,s2,0x5
   1026c:	00a00693          	li	a3,10
   10270:	fff68693          	addi	a3,a3,-1
   10274:	fcd43023          	sd	a3,-64(s0)
   10278:	00a00693          	li	a3,10
   1027c:	00068f13          	mv	t5,a3
   10280:	00000f93          	li	t6,0
   10284:	03bf5693          	srli	a3,t5,0x3b
   10288:	005f9893          	slli	a7,t6,0x5
   1028c:	011688b3          	add	a7,a3,a7
   10290:	005f1813          	slli	a6,t5,0x5
   10294:	00a00693          	li	a3,10
   10298:	fff68693          	addi	a3,a3,-1
   1029c:	fad43c23          	sd	a3,-72(s0)
   102a0:	00a00693          	li	a3,10
   102a4:	00068e13          	mv	t3,a3
   102a8:	00000e93          	li	t4,0
   102ac:	03be5693          	srli	a3,t3,0x3b
   102b0:	005e9793          	slli	a5,t4,0x5
   102b4:	00f687b3          	add	a5,a3,a5
   102b8:	005e1713          	slli	a4,t3,0x5
   102bc:	fc042e23          	sw	zero,-36(s0)
   102c0:	1400006f          	j	10400 <matmulti+0x1e4>
   102c4:	fc042c23          	sw	zero,-40(s0)
   102c8:	1140006f          	j	103dc <matmulti+0x1c0>
   102cc:	fdc42783          	lw	a5,-36(s0)
   102d0:	00a00713          	li	a4,10
   102d4:	02e787b3          	mul	a5,a5,a4
   102d8:	00279793          	slli	a5,a5,0x2
   102dc:	f9843703          	ld	a4,-104(s0)
   102e0:	00f70733          	add	a4,a4,a5
   102e4:	fd842783          	lw	a5,-40(s0)
   102e8:	00279793          	slli	a5,a5,0x2
   102ec:	00f707b3          	add	a5,a4,a5
   102f0:	0007a023          	sw	zero,0(a5)
   102f4:	fc042a23          	sw	zero,-44(s0)
   102f8:	0c00006f          	j	103b8 <matmulti+0x19c>
   102fc:	fdc42783          	lw	a5,-36(s0)
   10300:	00a00713          	li	a4,10
   10304:	02e787b3          	mul	a5,a5,a4
   10308:	00279793          	slli	a5,a5,0x2
   1030c:	f9843703          	ld	a4,-104(s0)
   10310:	00f70733          	add	a4,a4,a5
   10314:	fd842783          	lw	a5,-40(s0)
   10318:	00279793          	slli	a5,a5,0x2
   1031c:	00f707b3          	add	a5,a4,a5
   10320:	0007a703          	lw	a4,0(a5)
   10324:	fdc42783          	lw	a5,-36(s0)
   10328:	00a00693          	li	a3,10
   1032c:	02d787b3          	mul	a5,a5,a3
   10330:	00279793          	slli	a5,a5,0x2
   10334:	fa843683          	ld	a3,-88(s0)
   10338:	00f686b3          	add	a3,a3,a5
   1033c:	fd442783          	lw	a5,-44(s0)
   10340:	00279793          	slli	a5,a5,0x2
   10344:	00f687b3          	add	a5,a3,a5
   10348:	0007a683          	lw	a3,0(a5)
   1034c:	fd442783          	lw	a5,-44(s0)
   10350:	00a00613          	li	a2,10
   10354:	02c787b3          	mul	a5,a5,a2
   10358:	00279793          	slli	a5,a5,0x2
   1035c:	fa043603          	ld	a2,-96(s0)
   10360:	00f60633          	add	a2,a2,a5
   10364:	fd842783          	lw	a5,-40(s0)
   10368:	00279793          	slli	a5,a5,0x2
   1036c:	00f607b3          	add	a5,a2,a5
   10370:	0007a783          	lw	a5,0(a5)
   10374:	02f687bb          	mulw	a5,a3,a5
   10378:	0007879b          	sext.w	a5,a5
   1037c:	fdc42683          	lw	a3,-36(s0)
   10380:	00a00613          	li	a2,10
   10384:	02c686b3          	mul	a3,a3,a2
   10388:	00269693          	slli	a3,a3,0x2
   1038c:	f9843603          	ld	a2,-104(s0)
   10390:	00d606b3          	add	a3,a2,a3
   10394:	00f707bb          	addw	a5,a4,a5
   10398:	0007871b          	sext.w	a4,a5
   1039c:	fd842783          	lw	a5,-40(s0)
   103a0:	00279793          	slli	a5,a5,0x2
   103a4:	00f687b3          	add	a5,a3,a5
   103a8:	00e7a023          	sw	a4,0(a5)
   103ac:	fd442783          	lw	a5,-44(s0)
   103b0:	0017879b          	addiw	a5,a5,1
   103b4:	fcf42a23          	sw	a5,-44(s0)
   103b8:	fd442783          	lw	a5,-44(s0)
   103bc:	00078713          	mv	a4,a5
   103c0:	f9442783          	lw	a5,-108(s0)
   103c4:	0007071b          	sext.w	a4,a4
   103c8:	0007879b          	sext.w	a5,a5
   103cc:	f2f748e3          	blt	a4,a5,102fc <matmulti+0xe0>
   103d0:	fd842783          	lw	a5,-40(s0)
   103d4:	0017879b          	addiw	a5,a5,1
   103d8:	fcf42c23          	sw	a5,-40(s0)
   103dc:	fd842783          	lw	a5,-40(s0)
   103e0:	00078713          	mv	a4,a5
   103e4:	f9442783          	lw	a5,-108(s0)
   103e8:	0007071b          	sext.w	a4,a4
   103ec:	0007879b          	sext.w	a5,a5
   103f0:	ecf74ee3          	blt	a4,a5,102cc <matmulti+0xb0>
   103f4:	fdc42783          	lw	a5,-36(s0)
   103f8:	0017879b          	addiw	a5,a5,1
   103fc:	fcf42e23          	sw	a5,-36(s0)
   10400:	fdc42783          	lw	a5,-36(s0)
   10404:	00078713          	mv	a4,a5
   10408:	f9442783          	lw	a5,-108(s0)
   1040c:	0007071b          	sext.w	a4,a4
   10410:	0007879b          	sext.w	a5,a5
   10414:	eaf748e3          	blt	a4,a5,102c4 <matmulti+0xa8>
   10418:	00000013          	nop
   1041c:	00000013          	nop
   10420:	06813083          	ld	ra,104(sp)
   10424:	06013403          	ld	s0,96(sp)
   10428:	05813903          	ld	s2,88(sp)
   1042c:	05013983          	ld	s3,80(sp)
   10430:	07010113          	addi	sp,sp,112
   10434:	00008067          	ret

0000000000010438 <main>:
   10438:	de010113          	addi	sp,sp,-544
   1043c:	20113c23          	sd	ra,536(sp)
   10440:	20813823          	sd	s0,528(sp)
   10444:	20913423          	sd	s1,520(sp)
   10448:	21213023          	sd	s2,512(sp)
   1044c:	1f313c23          	sd	s3,504(sp)
   10450:	1f413823          	sd	s4,496(sp)
   10454:	1f513423          	sd	s5,488(sp)
   10458:	1f613023          	sd	s6,480(sp)
   1045c:	1d713c23          	sd	s7,472(sp)
   10460:	1d813823          	sd	s8,464(sp)
   10464:	1d913423          	sd	s9,456(sp)
   10468:	1da13023          	sd	s10,448(sp)
   1046c:	1bb13c23          	sd	s11,440(sp)
   10470:	22010413          	addi	s0,sp,544
   10474:	00010793          	mv	a5,sp
   10478:	def43023          	sd	a5,-544(s0)
   1047c:	00a00793          	li	a5,10
   10480:	fff78793          	addi	a5,a5,-1
   10484:	f6f43423          	sd	a5,-152(s0)
   10488:	00a00793          	li	a5,10
   1048c:	00078513          	mv	a0,a5
   10490:	00000593          	li	a1,0
   10494:	03b55793          	srli	a5,a0,0x3b
   10498:	00559693          	slli	a3,a1,0x5
   1049c:	00d786b3          	add	a3,a5,a3
   104a0:	00551613          	slli	a2,a0,0x5
   104a4:	00a00793          	li	a5,10
   104a8:	00279793          	slli	a5,a5,0x2
   104ac:	def43423          	sd	a5,-536(s0)
   104b0:	00a00793          	li	a5,10
   104b4:	fff78793          	addi	a5,a5,-1
   104b8:	f6f43023          	sd	a5,-160(s0)
   104bc:	00a00793          	li	a5,10
   104c0:	00078313          	mv	t1,a5
   104c4:	00000393          	li	t2,0
   104c8:	00a00793          	li	a5,10
   104cc:	00078813          	mv	a6,a5
   104d0:	00000893          	li	a7,0
   104d4:	03038733          	mul	a4,t2,a6
   104d8:	026887b3          	mul	a5,a7,t1
   104dc:	00f706b3          	add	a3,a4,a5
   104e0:	03030733          	mul	a4,t1,a6
   104e4:	030337b3          	mulhu	a5,t1,a6
   104e8:	00070e13          	mv	t3,a4
   104ec:	00078e93          	mv	t4,a5
   104f0:	01d687b3          	add	a5,a3,t4
   104f4:	00078e93          	mv	t4,a5
   104f8:	03be5793          	srli	a5,t3,0x3b
   104fc:	005e9f93          	slli	t6,t4,0x5
   10500:	01f78fb3          	add	t6,a5,t6
   10504:	005e1f13          	slli	t5,t3,0x5
   10508:	00a00793          	li	a5,10
   1050c:	00078a13          	mv	s4,a5
   10510:	00000a93          	li	s5,0
   10514:	00a00793          	li	a5,10
   10518:	00078913          	mv	s2,a5
   1051c:	00000993          	li	s3,0
   10520:	032a8733          	mul	a4,s5,s2
   10524:	034987b3          	mul	a5,s3,s4
   10528:	00f706b3          	add	a3,a4,a5
   1052c:	032a0733          	mul	a4,s4,s2
   10530:	032a37b3          	mulhu	a5,s4,s2
   10534:	00070b13          	mv	s6,a4
   10538:	00078b93          	mv	s7,a5
   1053c:	017687b3          	add	a5,a3,s7
   10540:	00078b93          	mv	s7,a5
   10544:	03bb5793          	srli	a5,s6,0x3b
   10548:	005b9c93          	slli	s9,s7,0x5
   1054c:	01978cb3          	add	s9,a5,s9
   10550:	005b1c13          	slli	s8,s6,0x5
   10554:	00a00793          	li	a5,10
   10558:	00078713          	mv	a4,a5
   1055c:	00a00793          	li	a5,10
   10560:	02f707b3          	mul	a5,a4,a5
   10564:	00279793          	slli	a5,a5,0x2
   10568:	00f78793          	addi	a5,a5,15
   1056c:	0047d793          	srli	a5,a5,0x4
   10570:	00479793          	slli	a5,a5,0x4
   10574:	40f10133          	sub	sp,sp,a5
   10578:	00010793          	mv	a5,sp
   1057c:	00378793          	addi	a5,a5,3
   10580:	0027d793          	srli	a5,a5,0x2
   10584:	00279793          	slli	a5,a5,0x2
   10588:	f4f43c23          	sd	a5,-168(s0)
   1058c:	00a00793          	li	a5,10
   10590:	fff78793          	addi	a5,a5,-1
   10594:	f4f43823          	sd	a5,-176(s0)
   10598:	00a00793          	li	a5,10
   1059c:	e4f43823          	sd	a5,-432(s0)
   105a0:	e4043c23          	sd	zero,-424(s0)
   105a4:	e5043783          	ld	a5,-432(s0)
   105a8:	03b7d793          	srli	a5,a5,0x3b
   105ac:	e5843703          	ld	a4,-424(s0)
   105b0:	00571d93          	slli	s11,a4,0x5
   105b4:	01b78db3          	add	s11,a5,s11
   105b8:	e5043783          	ld	a5,-432(s0)
   105bc:	00579d13          	slli	s10,a5,0x5
   105c0:	00a00793          	li	a5,10
   105c4:	00279913          	slli	s2,a5,0x2
   105c8:	00a00793          	li	a5,10
   105cc:	fff78793          	addi	a5,a5,-1
   105d0:	f4f43423          	sd	a5,-184(s0)
   105d4:	00a00793          	li	a5,10
   105d8:	ecf43823          	sd	a5,-304(s0)
   105dc:	ec043c23          	sd	zero,-296(s0)
   105e0:	00a00793          	li	a5,10
   105e4:	ecf43023          	sd	a5,-320(s0)
   105e8:	ec043423          	sd	zero,-312(s0)
   105ec:	ed843783          	ld	a5,-296(s0)
   105f0:	ec043703          	ld	a4,-320(s0)
   105f4:	02e78733          	mul	a4,a5,a4
   105f8:	ec843783          	ld	a5,-312(s0)
   105fc:	ed043683          	ld	a3,-304(s0)
   10600:	02d787b3          	mul	a5,a5,a3
   10604:	00f706b3          	add	a3,a4,a5
   10608:	ed043783          	ld	a5,-304(s0)
   1060c:	ec043703          	ld	a4,-320(s0)
   10610:	02e78733          	mul	a4,a5,a4
   10614:	ed043783          	ld	a5,-304(s0)
   10618:	ec043603          	ld	a2,-320(s0)
   1061c:	02c7b7b3          	mulhu	a5,a5,a2
   10620:	f0e43823          	sd	a4,-240(s0)
   10624:	f0f43c23          	sd	a5,-232(s0)
   10628:	f1843783          	ld	a5,-232(s0)
   1062c:	00f687b3          	add	a5,a3,a5
   10630:	f0f43c23          	sd	a5,-232(s0)
   10634:	f1043783          	ld	a5,-240(s0)
   10638:	03b7d793          	srli	a5,a5,0x3b
   1063c:	f1843703          	ld	a4,-232(s0)
   10640:	00571713          	slli	a4,a4,0x5
   10644:	e2e43c23          	sd	a4,-456(s0)
   10648:	e3843703          	ld	a4,-456(s0)
   1064c:	00e787b3          	add	a5,a5,a4
   10650:	e2f43c23          	sd	a5,-456(s0)
   10654:	f1043783          	ld	a5,-240(s0)
   10658:	00579793          	slli	a5,a5,0x5
   1065c:	e2f43823          	sd	a5,-464(s0)
   10660:	00a00793          	li	a5,10
   10664:	eaf43823          	sd	a5,-336(s0)
   10668:	ea043c23          	sd	zero,-328(s0)
   1066c:	00a00793          	li	a5,10
   10670:	eaf43023          	sd	a5,-352(s0)
   10674:	ea043423          	sd	zero,-344(s0)
   10678:	eb843783          	ld	a5,-328(s0)
   1067c:	ea043703          	ld	a4,-352(s0)
   10680:	02e78733          	mul	a4,a5,a4
   10684:	ea843783          	ld	a5,-344(s0)
   10688:	eb043683          	ld	a3,-336(s0)
   1068c:	02d787b3          	mul	a5,a5,a3
   10690:	00f706b3          	add	a3,a4,a5
   10694:	eb043783          	ld	a5,-336(s0)
   10698:	ea043703          	ld	a4,-352(s0)
   1069c:	02e78733          	mul	a4,a5,a4
   106a0:	eb043783          	ld	a5,-336(s0)
   106a4:	ea043603          	ld	a2,-352(s0)
   106a8:	02c7b7b3          	mulhu	a5,a5,a2
   106ac:	f0e43023          	sd	a4,-256(s0)
   106b0:	f0f43423          	sd	a5,-248(s0)
   106b4:	f0843783          	ld	a5,-248(s0)
   106b8:	00f687b3          	add	a5,a3,a5
   106bc:	f0f43423          	sd	a5,-248(s0)
   106c0:	f0043783          	ld	a5,-256(s0)
   106c4:	03b7d793          	srli	a5,a5,0x3b
   106c8:	f0843703          	ld	a4,-248(s0)
   106cc:	00571713          	slli	a4,a4,0x5
   106d0:	e2e43423          	sd	a4,-472(s0)
   106d4:	e2843703          	ld	a4,-472(s0)
   106d8:	00e787b3          	add	a5,a5,a4
   106dc:	e2f43423          	sd	a5,-472(s0)
   106e0:	f0043783          	ld	a5,-256(s0)
   106e4:	00579793          	slli	a5,a5,0x5
   106e8:	e2f43023          	sd	a5,-480(s0)
   106ec:	00a00793          	li	a5,10
   106f0:	00078713          	mv	a4,a5
   106f4:	00a00793          	li	a5,10
   106f8:	02f707b3          	mul	a5,a4,a5
   106fc:	00279793          	slli	a5,a5,0x2
   10700:	00f78793          	addi	a5,a5,15
   10704:	0047d793          	srli	a5,a5,0x4
   10708:	00479793          	slli	a5,a5,0x4
   1070c:	40f10133          	sub	sp,sp,a5
   10710:	00010793          	mv	a5,sp
   10714:	00378793          	addi	a5,a5,3
   10718:	0027d793          	srli	a5,a5,0x2
   1071c:	00279793          	slli	a5,a5,0x2
   10720:	f4f43023          	sd	a5,-192(s0)
   10724:	00a00793          	li	a5,10
   10728:	fff78793          	addi	a5,a5,-1
   1072c:	f2f43c23          	sd	a5,-200(s0)
   10730:	00a00793          	li	a5,10
   10734:	e4f43023          	sd	a5,-448(s0)
   10738:	e4043423          	sd	zero,-440(s0)
   1073c:	e4043783          	ld	a5,-448(s0)
   10740:	03b7d793          	srli	a5,a5,0x3b
   10744:	e4843703          	ld	a4,-440(s0)
   10748:	00571713          	slli	a4,a4,0x5
   1074c:	e0e43c23          	sd	a4,-488(s0)
   10750:	e1843703          	ld	a4,-488(s0)
   10754:	00e787b3          	add	a5,a5,a4
   10758:	e0f43c23          	sd	a5,-488(s0)
   1075c:	e4043783          	ld	a5,-448(s0)
   10760:	00579793          	slli	a5,a5,0x5
   10764:	e0f43823          	sd	a5,-496(s0)
   10768:	00a00793          	li	a5,10
   1076c:	00279493          	slli	s1,a5,0x2
   10770:	00a00793          	li	a5,10
   10774:	fff78793          	addi	a5,a5,-1
   10778:	f2f43823          	sd	a5,-208(s0)
   1077c:	00a00793          	li	a5,10
   10780:	e8f43823          	sd	a5,-368(s0)
   10784:	e8043c23          	sd	zero,-360(s0)
   10788:	00a00793          	li	a5,10
   1078c:	e8f43023          	sd	a5,-384(s0)
   10790:	e8043423          	sd	zero,-376(s0)
   10794:	e9843783          	ld	a5,-360(s0)
   10798:	e8043703          	ld	a4,-384(s0)
   1079c:	02e78733          	mul	a4,a5,a4
   107a0:	e8843783          	ld	a5,-376(s0)
   107a4:	e9043683          	ld	a3,-368(s0)
   107a8:	02d787b3          	mul	a5,a5,a3
   107ac:	00f707b3          	add	a5,a4,a5
   107b0:	e9043703          	ld	a4,-368(s0)
   107b4:	e8043683          	ld	a3,-384(s0)
   107b8:	02d706b3          	mul	a3,a4,a3
   107bc:	e9043703          	ld	a4,-368(s0)
   107c0:	e8043603          	ld	a2,-384(s0)
   107c4:	02c73733          	mulhu	a4,a4,a2
   107c8:	eed43823          	sd	a3,-272(s0)
   107cc:	eee43c23          	sd	a4,-264(s0)
   107d0:	ef843703          	ld	a4,-264(s0)
   107d4:	00e787b3          	add	a5,a5,a4
   107d8:	eef43c23          	sd	a5,-264(s0)
   107dc:	ef043783          	ld	a5,-272(s0)
   107e0:	03b7d793          	srli	a5,a5,0x3b
   107e4:	ef843703          	ld	a4,-264(s0)
   107e8:	00571713          	slli	a4,a4,0x5
   107ec:	e0e43423          	sd	a4,-504(s0)
   107f0:	e0843703          	ld	a4,-504(s0)
   107f4:	00e787b3          	add	a5,a5,a4
   107f8:	e0f43423          	sd	a5,-504(s0)
   107fc:	ef043783          	ld	a5,-272(s0)
   10800:	00579793          	slli	a5,a5,0x5
   10804:	e0f43023          	sd	a5,-512(s0)
   10808:	00a00793          	li	a5,10
   1080c:	e6f43823          	sd	a5,-400(s0)
   10810:	e6043c23          	sd	zero,-392(s0)
   10814:	00a00793          	li	a5,10
   10818:	e6f43023          	sd	a5,-416(s0)
   1081c:	e6043423          	sd	zero,-408(s0)
   10820:	e7843783          	ld	a5,-392(s0)
   10824:	e6043703          	ld	a4,-416(s0)
   10828:	02e78733          	mul	a4,a5,a4
   1082c:	e6843783          	ld	a5,-408(s0)
   10830:	e7043683          	ld	a3,-400(s0)
   10834:	02d787b3          	mul	a5,a5,a3
   10838:	00f707b3          	add	a5,a4,a5
   1083c:	e7043703          	ld	a4,-400(s0)
   10840:	e6043683          	ld	a3,-416(s0)
   10844:	02d706b3          	mul	a3,a4,a3
   10848:	e7043703          	ld	a4,-400(s0)
   1084c:	e6043603          	ld	a2,-416(s0)
   10850:	02c73733          	mulhu	a4,a4,a2
   10854:	eed43023          	sd	a3,-288(s0)
   10858:	eee43423          	sd	a4,-280(s0)
   1085c:	ee843703          	ld	a4,-280(s0)
   10860:	00e787b3          	add	a5,a5,a4
   10864:	eef43423          	sd	a5,-280(s0)
   10868:	ee043783          	ld	a5,-288(s0)
   1086c:	03b7d793          	srli	a5,a5,0x3b
   10870:	ee843703          	ld	a4,-280(s0)
   10874:	00571713          	slli	a4,a4,0x5
   10878:	dee43c23          	sd	a4,-520(s0)
   1087c:	df843703          	ld	a4,-520(s0)
   10880:	00e787b3          	add	a5,a5,a4
   10884:	def43c23          	sd	a5,-520(s0)
   10888:	ee043783          	ld	a5,-288(s0)
   1088c:	00579793          	slli	a5,a5,0x5
   10890:	def43823          	sd	a5,-528(s0)
   10894:	00a00793          	li	a5,10
   10898:	00078713          	mv	a4,a5
   1089c:	00a00793          	li	a5,10
   108a0:	02f707b3          	mul	a5,a4,a5
   108a4:	00279793          	slli	a5,a5,0x2
   108a8:	00f78793          	addi	a5,a5,15
   108ac:	0047d793          	srli	a5,a5,0x4
   108b0:	00479793          	slli	a5,a5,0x4
   108b4:	40f10133          	sub	sp,sp,a5
   108b8:	00010793          	mv	a5,sp
   108bc:	00378793          	addi	a5,a5,3
   108c0:	0027d793          	srli	a5,a5,0x2
   108c4:	00279793          	slli	a5,a5,0x2
   108c8:	f2f43423          	sd	a5,-216(s0)
   108cc:	f8042623          	sw	zero,-116(s0)
   108d0:	0ac0006f          	j	1097c <main+0x544>
   108d4:	f8042423          	sw	zero,-120(s0)
   108d8:	0880006f          	j	10960 <main+0x528>
   108dc:	de843783          	ld	a5,-536(s0)
   108e0:	0027d793          	srli	a5,a5,0x2
   108e4:	f5843703          	ld	a4,-168(s0)
   108e8:	f8842683          	lw	a3,-120(s0)
   108ec:	f8c42603          	lw	a2,-116(s0)
   108f0:	02f607b3          	mul	a5,a2,a5
   108f4:	00f687b3          	add	a5,a3,a5
   108f8:	00279793          	slli	a5,a5,0x2
   108fc:	00f707b3          	add	a5,a4,a5
   10900:	f8c42703          	lw	a4,-116(s0)
   10904:	00e7a023          	sw	a4,0(a5)
   10908:	00295793          	srli	a5,s2,0x2
   1090c:	f4043703          	ld	a4,-192(s0)
   10910:	f8842683          	lw	a3,-120(s0)
   10914:	f8c42603          	lw	a2,-116(s0)
   10918:	02f607b3          	mul	a5,a2,a5
   1091c:	00f687b3          	add	a5,a3,a5
   10920:	00279793          	slli	a5,a5,0x2
   10924:	00f707b3          	add	a5,a4,a5
   10928:	f8842703          	lw	a4,-120(s0)
   1092c:	00e7a023          	sw	a4,0(a5)
   10930:	0024d793          	srli	a5,s1,0x2
   10934:	f2843703          	ld	a4,-216(s0)
   10938:	f8842683          	lw	a3,-120(s0)
   1093c:	f8c42603          	lw	a2,-116(s0)
   10940:	02f607b3          	mul	a5,a2,a5
   10944:	00f687b3          	add	a5,a3,a5
   10948:	00279793          	slli	a5,a5,0x2
   1094c:	00f707b3          	add	a5,a4,a5
   10950:	0007a023          	sw	zero,0(a5)
   10954:	f8842783          	lw	a5,-120(s0)
   10958:	0017879b          	addiw	a5,a5,1
   1095c:	f8f42423          	sw	a5,-120(s0)
   10960:	00a00793          	li	a5,10
   10964:	f8842703          	lw	a4,-120(s0)
   10968:	0007071b          	sext.w	a4,a4
   1096c:	f6f748e3          	blt	a4,a5,108dc <main+0x4a4>
   10970:	f8c42783          	lw	a5,-116(s0)
   10974:	0017879b          	addiw	a5,a5,1
   10978:	f8f42623          	sw	a5,-116(s0)
   1097c:	00a00793          	li	a5,10
   10980:	f8c42703          	lw	a4,-116(s0)
   10984:	0007071b          	sext.w	a4,a4
   10988:	f4f746e3          	blt	a4,a5,108d4 <main+0x49c>
   1098c:	000137b7          	lui	a5,0x13
   10990:	c6878513          	addi	a0,a5,-920 # 12c68 <__errno+0xc>
   10994:	298000ef          	jal	10c2c <print_s>
   10998:	f8042223          	sw	zero,-124(s0)
   1099c:	07c0006f          	j	10a18 <main+0x5e0>
   109a0:	f8042023          	sw	zero,-128(s0)
   109a4:	04c0006f          	j	109f0 <main+0x5b8>
   109a8:	de843783          	ld	a5,-536(s0)
   109ac:	0027d793          	srli	a5,a5,0x2
   109b0:	f5843703          	ld	a4,-168(s0)
   109b4:	f8042683          	lw	a3,-128(s0)
   109b8:	f8442603          	lw	a2,-124(s0)
   109bc:	02f607b3          	mul	a5,a2,a5
   109c0:	00f687b3          	add	a5,a3,a5
   109c4:	00279793          	slli	a5,a5,0x2
   109c8:	00f707b3          	add	a5,a4,a5
   109cc:	0007a783          	lw	a5,0(a5)
   109d0:	00078513          	mv	a0,a5
   109d4:	1ec000ef          	jal	10bc0 <print_d>
   109d8:	000137b7          	lui	a5,0x13
   109dc:	c8078513          	addi	a0,a5,-896 # 12c80 <__errno+0x24>
   109e0:	24c000ef          	jal	10c2c <print_s>
   109e4:	f8042783          	lw	a5,-128(s0)
   109e8:	0017879b          	addiw	a5,a5,1
   109ec:	f8f42023          	sw	a5,-128(s0)
   109f0:	00a00793          	li	a5,10
   109f4:	f8042703          	lw	a4,-128(s0)
   109f8:	0007071b          	sext.w	a4,a4
   109fc:	faf746e3          	blt	a4,a5,109a8 <main+0x570>
   10a00:	000137b7          	lui	a5,0x13
   10a04:	c8878513          	addi	a0,a5,-888 # 12c88 <__errno+0x2c>
   10a08:	224000ef          	jal	10c2c <print_s>
   10a0c:	f8442783          	lw	a5,-124(s0)
   10a10:	0017879b          	addiw	a5,a5,1
   10a14:	f8f42223          	sw	a5,-124(s0)
   10a18:	00a00793          	li	a5,10
   10a1c:	f8442703          	lw	a4,-124(s0)
   10a20:	0007071b          	sext.w	a4,a4
   10a24:	f6f74ee3          	blt	a4,a5,109a0 <main+0x568>
   10a28:	000137b7          	lui	a5,0x13
   10a2c:	c9078513          	addi	a0,a5,-880 # 12c90 <__errno+0x34>
   10a30:	1fc000ef          	jal	10c2c <print_s>
   10a34:	f6042e23          	sw	zero,-132(s0)
   10a38:	0780006f          	j	10ab0 <main+0x678>
   10a3c:	f6042c23          	sw	zero,-136(s0)
   10a40:	0480006f          	j	10a88 <main+0x650>
   10a44:	00295793          	srli	a5,s2,0x2
   10a48:	f4043703          	ld	a4,-192(s0)
   10a4c:	f7842683          	lw	a3,-136(s0)
   10a50:	f7c42603          	lw	a2,-132(s0)
   10a54:	02f607b3          	mul	a5,a2,a5
   10a58:	00f687b3          	add	a5,a3,a5
   10a5c:	00279793          	slli	a5,a5,0x2
   10a60:	00f707b3          	add	a5,a4,a5
   10a64:	0007a783          	lw	a5,0(a5)
   10a68:	00078513          	mv	a0,a5
   10a6c:	154000ef          	jal	10bc0 <print_d>
   10a70:	000137b7          	lui	a5,0x13
   10a74:	c8078513          	addi	a0,a5,-896 # 12c80 <__errno+0x24>
   10a78:	1b4000ef          	jal	10c2c <print_s>
   10a7c:	f7842783          	lw	a5,-136(s0)
   10a80:	0017879b          	addiw	a5,a5,1
   10a84:	f6f42c23          	sw	a5,-136(s0)
   10a88:	00a00793          	li	a5,10
   10a8c:	f7842703          	lw	a4,-136(s0)
   10a90:	0007071b          	sext.w	a4,a4
   10a94:	faf748e3          	blt	a4,a5,10a44 <main+0x60c>
   10a98:	000137b7          	lui	a5,0x13
   10a9c:	c8878513          	addi	a0,a5,-888 # 12c88 <__errno+0x2c>
   10aa0:	18c000ef          	jal	10c2c <print_s>
   10aa4:	f7c42783          	lw	a5,-132(s0)
   10aa8:	0017879b          	addiw	a5,a5,1
   10aac:	f6f42e23          	sw	a5,-132(s0)
   10ab0:	00a00793          	li	a5,10
   10ab4:	f7c42703          	lw	a4,-132(s0)
   10ab8:	0007071b          	sext.w	a4,a4
   10abc:	f8f740e3          	blt	a4,a5,10a3c <main+0x604>
   10ac0:	00a00793          	li	a5,10
   10ac4:	00078693          	mv	a3,a5
   10ac8:	f2843603          	ld	a2,-216(s0)
   10acc:	f4043583          	ld	a1,-192(s0)
   10ad0:	f5843503          	ld	a0,-168(s0)
   10ad4:	f48ff0ef          	jal	1021c <matmulti>
   10ad8:	000137b7          	lui	a5,0x13
   10adc:	ca878513          	addi	a0,a5,-856 # 12ca8 <__errno+0x4c>
   10ae0:	14c000ef          	jal	10c2c <print_s>
   10ae4:	f6042a23          	sw	zero,-140(s0)
   10ae8:	0780006f          	j	10b60 <main+0x728>
   10aec:	f6042823          	sw	zero,-144(s0)
   10af0:	0480006f          	j	10b38 <main+0x700>
   10af4:	0024d793          	srli	a5,s1,0x2
   10af8:	f2843703          	ld	a4,-216(s0)
   10afc:	f7042683          	lw	a3,-144(s0)
   10b00:	f7442603          	lw	a2,-140(s0)
   10b04:	02f607b3          	mul	a5,a2,a5
   10b08:	00f687b3          	add	a5,a3,a5
   10b0c:	00279793          	slli	a5,a5,0x2
   10b10:	00f707b3          	add	a5,a4,a5
   10b14:	0007a783          	lw	a5,0(a5)
   10b18:	00078513          	mv	a0,a5
   10b1c:	0a4000ef          	jal	10bc0 <print_d>
   10b20:	000137b7          	lui	a5,0x13
   10b24:	c8078513          	addi	a0,a5,-896 # 12c80 <__errno+0x24>
   10b28:	104000ef          	jal	10c2c <print_s>
   10b2c:	f7042783          	lw	a5,-144(s0)
   10b30:	0017879b          	addiw	a5,a5,1
   10b34:	f6f42823          	sw	a5,-144(s0)
   10b38:	00a00793          	li	a5,10
   10b3c:	f7042703          	lw	a4,-144(s0)
   10b40:	0007071b          	sext.w	a4,a4
   10b44:	faf748e3          	blt	a4,a5,10af4 <main+0x6bc>
   10b48:	000137b7          	lui	a5,0x13
   10b4c:	c8878513          	addi	a0,a5,-888 # 12c88 <__errno+0x2c>
   10b50:	0dc000ef          	jal	10c2c <print_s>
   10b54:	f7442783          	lw	a5,-140(s0)
   10b58:	0017879b          	addiw	a5,a5,1
   10b5c:	f6f42a23          	sw	a5,-140(s0)
   10b60:	00a00793          	li	a5,10
   10b64:	f7442703          	lw	a4,-140(s0)
   10b68:	0007071b          	sext.w	a4,a4
   10b6c:	f8f740e3          	blt	a4,a5,10aec <main+0x6b4>
   10b70:	120000ef          	jal	10c90 <exit_proc>
   10b74:	de043103          	ld	sp,-544(s0)
   10b78:	00000793          	li	a5,0
   10b7c:	00078513          	mv	a0,a5
   10b80:	de040113          	addi	sp,s0,-544
   10b84:	21813083          	ld	ra,536(sp)
   10b88:	21013403          	ld	s0,528(sp)
   10b8c:	20813483          	ld	s1,520(sp)
   10b90:	20013903          	ld	s2,512(sp)
   10b94:	1f813983          	ld	s3,504(sp)
   10b98:	1f013a03          	ld	s4,496(sp)
   10b9c:	1e813a83          	ld	s5,488(sp)
   10ba0:	1e013b03          	ld	s6,480(sp)
   10ba4:	1d813b83          	ld	s7,472(sp)
   10ba8:	1d013c03          	ld	s8,464(sp)
   10bac:	1c813c83          	ld	s9,456(sp)
   10bb0:	1c013d03          	ld	s10,448(sp)
   10bb4:	1b813d83          	ld	s11,440(sp)
   10bb8:	22010113          	addi	sp,sp,544
   10bbc:	00008067          	ret

0000000000010bc0 <print_d>:
   10bc0:	fe010113          	addi	sp,sp,-32
   10bc4:	00113c23          	sd	ra,24(sp)
   10bc8:	00813823          	sd	s0,16(sp)
   10bcc:	02010413          	addi	s0,sp,32
   10bd0:	00050793          	mv	a5,a0
   10bd4:	fef42623          	sw	a5,-20(s0)
   10bd8:	00200893          	li	a7,2
   10bdc:	00000073          	ecall
   10be0:	00000013          	nop
   10be4:	01813083          	ld	ra,24(sp)
   10be8:	01013403          	ld	s0,16(sp)
   10bec:	02010113          	addi	sp,sp,32
   10bf0:	00008067          	ret

0000000000010bf4 <print_ll>:
   10bf4:	fe010113          	addi	sp,sp,-32
   10bf8:	00113c23          	sd	ra,24(sp)
   10bfc:	00813823          	sd	s0,16(sp)
   10c00:	02010413          	addi	s0,sp,32
   10c04:	fea43423          	sd	a0,-24(s0)
   10c08:	fe843783          	ld	a5,-24(s0)
   10c0c:	00078513          	mv	a0,a5
   10c10:	00600893          	li	a7,6
   10c14:	00000073          	ecall
   10c18:	00000013          	nop
   10c1c:	01813083          	ld	ra,24(sp)
   10c20:	01013403          	ld	s0,16(sp)
   10c24:	02010113          	addi	sp,sp,32
   10c28:	00008067          	ret

0000000000010c2c <print_s>:
   10c2c:	fe010113          	addi	sp,sp,-32
   10c30:	00113c23          	sd	ra,24(sp)
   10c34:	00813823          	sd	s0,16(sp)
   10c38:	02010413          	addi	s0,sp,32
   10c3c:	fea43423          	sd	a0,-24(s0)
   10c40:	00000893          	li	a7,0
   10c44:	00000073          	ecall
   10c48:	00000013          	nop
   10c4c:	01813083          	ld	ra,24(sp)
   10c50:	01013403          	ld	s0,16(sp)
   10c54:	02010113          	addi	sp,sp,32
   10c58:	00008067          	ret

0000000000010c5c <print_c>:
   10c5c:	fe010113          	addi	sp,sp,-32
   10c60:	00113c23          	sd	ra,24(sp)
   10c64:	00813823          	sd	s0,16(sp)
   10c68:	02010413          	addi	s0,sp,32
   10c6c:	00050793          	mv	a5,a0
   10c70:	fef407a3          	sb	a5,-17(s0)
   10c74:	00100893          	li	a7,1
   10c78:	00000073          	ecall
   10c7c:	00000013          	nop
   10c80:	01813083          	ld	ra,24(sp)
   10c84:	01013403          	ld	s0,16(sp)
   10c88:	02010113          	addi	sp,sp,32
   10c8c:	00008067          	ret

0000000000010c90 <exit_proc>:
   10c90:	ff010113          	addi	sp,sp,-16
   10c94:	00113423          	sd	ra,8(sp)
   10c98:	00813023          	sd	s0,0(sp)
   10c9c:	01010413          	addi	s0,sp,16
   10ca0:	00300893          	li	a7,3
   10ca4:	00000073          	ecall
   10ca8:	00000013          	nop
   10cac:	00813083          	ld	ra,8(sp)
   10cb0:	00013403          	ld	s0,0(sp)
   10cb4:	01010113          	addi	sp,sp,16
   10cb8:	00008067          	ret

0000000000010cbc <read_char>:
   10cbc:	fe010113          	addi	sp,sp,-32
   10cc0:	00113c23          	sd	ra,24(sp)
   10cc4:	00813823          	sd	s0,16(sp)
   10cc8:	02010413          	addi	s0,sp,32
   10ccc:	00400893          	li	a7,4
   10cd0:	00000073          	ecall
   10cd4:	00050793          	mv	a5,a0
   10cd8:	fef407a3          	sb	a5,-17(s0)
   10cdc:	fef44783          	lbu	a5,-17(s0)
   10ce0:	00078513          	mv	a0,a5
   10ce4:	01813083          	ld	ra,24(sp)
   10ce8:	01013403          	ld	s0,16(sp)
   10cec:	02010113          	addi	sp,sp,32
   10cf0:	00008067          	ret

0000000000010cf4 <read_num>:
   10cf4:	fe010113          	addi	sp,sp,-32
   10cf8:	00113c23          	sd	ra,24(sp)
   10cfc:	00813823          	sd	s0,16(sp)
   10d00:	02010413          	addi	s0,sp,32
   10d04:	00500893          	li	a7,5
   10d08:	00000073          	ecall
   10d0c:	00050793          	mv	a5,a0
   10d10:	fef43423          	sd	a5,-24(s0)
   10d14:	fe843783          	ld	a5,-24(s0)
   10d18:	00078513          	mv	a0,a5
   10d1c:	01813083          	ld	ra,24(sp)
   10d20:	01013403          	ld	s0,16(sp)
   10d24:	02010113          	addi	sp,sp,32
   10d28:	00008067          	ret

0000000000010d2c <__fp_lock>:
   10d2c:	00000513          	li	a0,0
   10d30:	00008067          	ret

0000000000010d34 <stdio_exit_handler>:
   10d34:	00013637          	lui	a2,0x13
   10d38:	000125b7          	lui	a1,0x12
   10d3c:	00013537          	lui	a0,0x13
   10d40:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10d44:	4fc58593          	addi	a1,a1,1276 # 124fc <_fclose_r>
   10d48:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10d4c:	3440006f          	j	11090 <_fwalk_sglue>

0000000000010d50 <cleanup_stdio>:
   10d50:	00853583          	ld	a1,8(a0)
   10d54:	ff010113          	addi	sp,sp,-16
   10d58:	00813023          	sd	s0,0(sp)
   10d5c:	00113423          	sd	ra,8(sp)
   10d60:	21818793          	addi	a5,gp,536 # 13a30 <__sf>
   10d64:	00050413          	mv	s0,a0
   10d68:	00f58463          	beq	a1,a5,10d70 <cleanup_stdio+0x20>
   10d6c:	790010ef          	jal	124fc <_fclose_r>
   10d70:	01043583          	ld	a1,16(s0)
   10d74:	2c818793          	addi	a5,gp,712 # 13ae0 <__sf+0xb0>
   10d78:	00f58663          	beq	a1,a5,10d84 <cleanup_stdio+0x34>
   10d7c:	00040513          	mv	a0,s0
   10d80:	77c010ef          	jal	124fc <_fclose_r>
   10d84:	01843583          	ld	a1,24(s0)
   10d88:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10d8c:	00f58c63          	beq	a1,a5,10da4 <cleanup_stdio+0x54>
   10d90:	00040513          	mv	a0,s0
   10d94:	00013403          	ld	s0,0(sp)
   10d98:	00813083          	ld	ra,8(sp)
   10d9c:	01010113          	addi	sp,sp,16
   10da0:	75c0106f          	j	124fc <_fclose_r>
   10da4:	00813083          	ld	ra,8(sp)
   10da8:	00013403          	ld	s0,0(sp)
   10dac:	01010113          	addi	sp,sp,16
   10db0:	00008067          	ret

0000000000010db4 <__fp_unlock>:
   10db4:	00000513          	li	a0,0
   10db8:	00008067          	ret

0000000000010dbc <global_stdio_init.part.0>:
   10dbc:	fd010113          	addi	sp,sp,-48
   10dc0:	000117b7          	lui	a5,0x11
   10dc4:	02813023          	sd	s0,32(sp)
   10dc8:	d3478793          	addi	a5,a5,-716 # 10d34 <stdio_exit_handler>
   10dcc:	21818413          	addi	s0,gp,536 # 13a30 <__sf>
   10dd0:	02113423          	sd	ra,40(sp)
   10dd4:	00913c23          	sd	s1,24(sp)
   10dd8:	01213823          	sd	s2,16(sp)
   10ddc:	01313423          	sd	s3,8(sp)
   10de0:	01413023          	sd	s4,0(sp)
   10de4:	1af1b423          	sd	a5,424(gp) # 139c0 <__stdio_exit_handler>
   10de8:	00800613          	li	a2,8
   10dec:	00400793          	li	a5,4
   10df0:	00000593          	li	a1,0
   10df4:	2bc18513          	addi	a0,gp,700 # 13ad4 <__sf+0xa4>
   10df8:	00f42823          	sw	a5,16(s0)
   10dfc:	00043023          	sd	zero,0(s0)
   10e00:	00043423          	sd	zero,8(s0)
   10e04:	0a042623          	sw	zero,172(s0)
   10e08:	00043c23          	sd	zero,24(s0)
   10e0c:	02042023          	sw	zero,32(s0)
   10e10:	02042423          	sw	zero,40(s0)
   10e14:	7ac000ef          	jal	115c0 <memset>
   10e18:	00011a37          	lui	s4,0x11
   10e1c:	000119b7          	lui	s3,0x11
   10e20:	00011937          	lui	s2,0x11
   10e24:	000114b7          	lui	s1,0x11
   10e28:	000107b7          	lui	a5,0x10
   10e2c:	15ca0a13          	addi	s4,s4,348 # 1115c <__sread>
   10e30:	1c098993          	addi	s3,s3,448 # 111c0 <__swrite>
   10e34:	24890913          	addi	s2,s2,584 # 11248 <__sseek>
   10e38:	2ac48493          	addi	s1,s1,684 # 112ac <__sclose>
   10e3c:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10e40:	00800613          	li	a2,8
   10e44:	00000593          	li	a1,0
   10e48:	36c18513          	addi	a0,gp,876 # 13b84 <__sf+0x154>
   10e4c:	0cf42023          	sw	a5,192(s0)
   10e50:	03443c23          	sd	s4,56(s0)
   10e54:	05343023          	sd	s3,64(s0)
   10e58:	05243423          	sd	s2,72(s0)
   10e5c:	04943823          	sd	s1,80(s0)
   10e60:	02843823          	sd	s0,48(s0)
   10e64:	0a043823          	sd	zero,176(s0)
   10e68:	0a043c23          	sd	zero,184(s0)
   10e6c:	14042e23          	sw	zero,348(s0)
   10e70:	0c043423          	sd	zero,200(s0)
   10e74:	0c042823          	sw	zero,208(s0)
   10e78:	0c042c23          	sw	zero,216(s0)
   10e7c:	744000ef          	jal	115c0 <memset>
   10e80:	000207b7          	lui	a5,0x20
   10e84:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc092>
   10e88:	2c818713          	addi	a4,gp,712 # 13ae0 <__sf+0xb0>
   10e8c:	41c18513          	addi	a0,gp,1052 # 13c34 <__sf+0x204>
   10e90:	00800613          	li	a2,8
   10e94:	00000593          	li	a1,0
   10e98:	0f443423          	sd	s4,232(s0)
   10e9c:	0f343823          	sd	s3,240(s0)
   10ea0:	0f243c23          	sd	s2,248(s0)
   10ea4:	10943023          	sd	s1,256(s0)
   10ea8:	16f42823          	sw	a5,368(s0)
   10eac:	16043023          	sd	zero,352(s0)
   10eb0:	16043423          	sd	zero,360(s0)
   10eb4:	20042623          	sw	zero,524(s0)
   10eb8:	16043c23          	sd	zero,376(s0)
   10ebc:	18042023          	sw	zero,384(s0)
   10ec0:	18042423          	sw	zero,392(s0)
   10ec4:	0ee43023          	sd	a4,224(s0)
   10ec8:	6f8000ef          	jal	115c0 <memset>
   10ecc:	37818793          	addi	a5,gp,888 # 13b90 <__sf+0x160>
   10ed0:	19443c23          	sd	s4,408(s0)
   10ed4:	1b343023          	sd	s3,416(s0)
   10ed8:	1b243423          	sd	s2,424(s0)
   10edc:	1a943823          	sd	s1,432(s0)
   10ee0:	02813083          	ld	ra,40(sp)
   10ee4:	18f43823          	sd	a5,400(s0)
   10ee8:	02013403          	ld	s0,32(sp)
   10eec:	01813483          	ld	s1,24(sp)
   10ef0:	01013903          	ld	s2,16(sp)
   10ef4:	00813983          	ld	s3,8(sp)
   10ef8:	00013a03          	ld	s4,0(sp)
   10efc:	03010113          	addi	sp,sp,48
   10f00:	00008067          	ret

0000000000010f04 <__sfp>:
   10f04:	1a81b783          	ld	a5,424(gp) # 139c0 <__stdio_exit_handler>
   10f08:	fd010113          	addi	sp,sp,-48
   10f0c:	00913c23          	sd	s1,24(sp)
   10f10:	02113423          	sd	ra,40(sp)
   10f14:	02813023          	sd	s0,32(sp)
   10f18:	00050493          	mv	s1,a0
   10f1c:	10078063          	beqz	a5,1101c <__sfp+0x118>
   10f20:	000136b7          	lui	a3,0x13
   10f24:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10f28:	0b000813          	li	a6,176
   10f2c:	0086a703          	lw	a4,8(a3)
   10f30:	08e05463          	blez	a4,10fb8 <__sfp+0xb4>
   10f34:	02071713          	slli	a4,a4,0x20
   10f38:	02075713          	srli	a4,a4,0x20
   10f3c:	03070733          	mul	a4,a4,a6
   10f40:	0106b403          	ld	s0,16(a3)
   10f44:	00e40733          	add	a4,s0,a4
   10f48:	00c0006f          	j	10f54 <__sfp+0x50>
   10f4c:	0b040413          	addi	s0,s0,176
   10f50:	06e40463          	beq	s0,a4,10fb8 <__sfp+0xb4>
   10f54:	01041783          	lh	a5,16(s0)
   10f58:	fe079ae3          	bnez	a5,10f4c <__sfp+0x48>
   10f5c:	ffff07b7          	lui	a5,0xffff0
   10f60:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc081>
   10f64:	00f42823          	sw	a5,16(s0)
   10f68:	0a042623          	sw	zero,172(s0)
   10f6c:	00043023          	sd	zero,0(s0)
   10f70:	00043423          	sd	zero,8(s0)
   10f74:	00043c23          	sd	zero,24(s0)
   10f78:	02042023          	sw	zero,32(s0)
   10f7c:	02042423          	sw	zero,40(s0)
   10f80:	00800613          	li	a2,8
   10f84:	00000593          	li	a1,0
   10f88:	0a440513          	addi	a0,s0,164
   10f8c:	634000ef          	jal	115c0 <memset>
   10f90:	04043c23          	sd	zero,88(s0)
   10f94:	06042023          	sw	zero,96(s0)
   10f98:	06043c23          	sd	zero,120(s0)
   10f9c:	08042023          	sw	zero,128(s0)
   10fa0:	02813083          	ld	ra,40(sp)
   10fa4:	00040513          	mv	a0,s0
   10fa8:	02013403          	ld	s0,32(sp)
   10fac:	01813483          	ld	s1,24(sp)
   10fb0:	03010113          	addi	sp,sp,48
   10fb4:	00008067          	ret
   10fb8:	0006b403          	ld	s0,0(a3)
   10fbc:	00040663          	beqz	s0,10fc8 <__sfp+0xc4>
   10fc0:	00040693          	mv	a3,s0
   10fc4:	f69ff06f          	j	10f2c <__sfp+0x28>
   10fc8:	2d800593          	li	a1,728
   10fcc:	00048513          	mv	a0,s1
   10fd0:	00d13423          	sd	a3,8(sp)
   10fd4:	43d000ef          	jal	11c10 <_malloc_r>
   10fd8:	00813683          	ld	a3,8(sp)
   10fdc:	00050413          	mv	s0,a0
   10fe0:	04050263          	beqz	a0,11024 <__sfp+0x120>
   10fe4:	00400793          	li	a5,4
   10fe8:	00f52423          	sw	a5,8(a0)
   10fec:	01850513          	addi	a0,a0,24
   10ff0:	00043023          	sd	zero,0(s0)
   10ff4:	00a43823          	sd	a0,16(s0)
   10ff8:	2c000613          	li	a2,704
   10ffc:	00000593          	li	a1,0
   11000:	00d13423          	sd	a3,8(sp)
   11004:	5bc000ef          	jal	115c0 <memset>
   11008:	00813683          	ld	a3,8(sp)
   1100c:	0b000813          	li	a6,176
   11010:	0086b023          	sd	s0,0(a3)
   11014:	00040693          	mv	a3,s0
   11018:	f15ff06f          	j	10f2c <__sfp+0x28>
   1101c:	da1ff0ef          	jal	10dbc <global_stdio_init.part.0>
   11020:	f01ff06f          	j	10f20 <__sfp+0x1c>
   11024:	0006b023          	sd	zero,0(a3)
   11028:	00c00793          	li	a5,12
   1102c:	00f4a023          	sw	a5,0(s1)
   11030:	f71ff06f          	j	10fa0 <__sfp+0x9c>

0000000000011034 <__sinit>:
   11034:	04853783          	ld	a5,72(a0)
   11038:	00078463          	beqz	a5,11040 <__sinit+0xc>
   1103c:	00008067          	ret
   11040:	000117b7          	lui	a5,0x11
   11044:	1a81b703          	ld	a4,424(gp) # 139c0 <__stdio_exit_handler>
   11048:	d5078793          	addi	a5,a5,-688 # 10d50 <cleanup_stdio>
   1104c:	04f53423          	sd	a5,72(a0)
   11050:	fe0716e3          	bnez	a4,1103c <__sinit+0x8>
   11054:	d69ff06f          	j	10dbc <global_stdio_init.part.0>

0000000000011058 <__sfp_lock_acquire>:
   11058:	00008067          	ret

000000000001105c <__sfp_lock_release>:
   1105c:	00008067          	ret

0000000000011060 <__fp_lock_all>:
   11060:	00013637          	lui	a2,0x13
   11064:	000115b7          	lui	a1,0x11
   11068:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1106c:	d2c58593          	addi	a1,a1,-724 # 10d2c <__fp_lock>
   11070:	00000513          	li	a0,0
   11074:	01c0006f          	j	11090 <_fwalk_sglue>

0000000000011078 <__fp_unlock_all>:
   11078:	00013637          	lui	a2,0x13
   1107c:	000115b7          	lui	a1,0x11
   11080:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11084:	db458593          	addi	a1,a1,-588 # 10db4 <__fp_unlock>
   11088:	00000513          	li	a0,0
   1108c:	0040006f          	j	11090 <_fwalk_sglue>

0000000000011090 <_fwalk_sglue>:
   11090:	fb010113          	addi	sp,sp,-80
   11094:	03213823          	sd	s2,48(sp)
   11098:	03313423          	sd	s3,40(sp)
   1109c:	03413023          	sd	s4,32(sp)
   110a0:	01513c23          	sd	s5,24(sp)
   110a4:	01613823          	sd	s6,16(sp)
   110a8:	01713423          	sd	s7,8(sp)
   110ac:	01813023          	sd	s8,0(sp)
   110b0:	04113423          	sd	ra,72(sp)
   110b4:	04813023          	sd	s0,64(sp)
   110b8:	02913c23          	sd	s1,56(sp)
   110bc:	00060993          	mv	s3,a2
   110c0:	00050a93          	mv	s5,a0
   110c4:	00058b13          	mv	s6,a1
   110c8:	00000913          	li	s2,0
   110cc:	0b000b93          	li	s7,176
   110d0:	00100c13          	li	s8,1
   110d4:	fff00a13          	li	s4,-1
   110d8:	0089a483          	lw	s1,8(s3)
   110dc:	04905263          	blez	s1,11120 <_fwalk_sglue+0x90>
   110e0:	02049493          	slli	s1,s1,0x20
   110e4:	0204d493          	srli	s1,s1,0x20
   110e8:	037484b3          	mul	s1,s1,s7
   110ec:	0109b403          	ld	s0,16(s3)
   110f0:	009404b3          	add	s1,s0,s1
   110f4:	01045783          	lhu	a5,16(s0)
   110f8:	02fc7063          	bgeu	s8,a5,11118 <_fwalk_sglue+0x88>
   110fc:	01241783          	lh	a5,18(s0)
   11100:	00040593          	mv	a1,s0
   11104:	000a8513          	mv	a0,s5
   11108:	01478863          	beq	a5,s4,11118 <_fwalk_sglue+0x88>
   1110c:	000b00e7          	jalr	s6
   11110:	01256933          	or	s2,a0,s2
   11114:	0009091b          	sext.w	s2,s2
   11118:	0b040413          	addi	s0,s0,176
   1111c:	fc941ce3          	bne	s0,s1,110f4 <_fwalk_sglue+0x64>
   11120:	0009b983          	ld	s3,0(s3)
   11124:	fa099ae3          	bnez	s3,110d8 <_fwalk_sglue+0x48>
   11128:	04813083          	ld	ra,72(sp)
   1112c:	04013403          	ld	s0,64(sp)
   11130:	03813483          	ld	s1,56(sp)
   11134:	02813983          	ld	s3,40(sp)
   11138:	02013a03          	ld	s4,32(sp)
   1113c:	01813a83          	ld	s5,24(sp)
   11140:	01013b03          	ld	s6,16(sp)
   11144:	00813b83          	ld	s7,8(sp)
   11148:	00013c03          	ld	s8,0(sp)
   1114c:	00090513          	mv	a0,s2
   11150:	03013903          	ld	s2,48(sp)
   11154:	05010113          	addi	sp,sp,80
   11158:	00008067          	ret

000000000001115c <__sread>:
   1115c:	ff010113          	addi	sp,sp,-16
   11160:	00813023          	sd	s0,0(sp)
   11164:	00058413          	mv	s0,a1
   11168:	01259583          	lh	a1,18(a1)
   1116c:	00113423          	sd	ra,8(sp)
   11170:	2ec000ef          	jal	1145c <_read_r>
   11174:	02054063          	bltz	a0,11194 <__sread+0x38>
   11178:	09043783          	ld	a5,144(s0)
   1117c:	00813083          	ld	ra,8(sp)
   11180:	00a787b3          	add	a5,a5,a0
   11184:	08f43823          	sd	a5,144(s0)
   11188:	00013403          	ld	s0,0(sp)
   1118c:	01010113          	addi	sp,sp,16
   11190:	00008067          	ret
   11194:	01045783          	lhu	a5,16(s0)
   11198:	fffff737          	lui	a4,0xfffff
   1119c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   111a0:	00e7f7b3          	and	a5,a5,a4
   111a4:	00813083          	ld	ra,8(sp)
   111a8:	00f41823          	sh	a5,16(s0)
   111ac:	00013403          	ld	s0,0(sp)
   111b0:	01010113          	addi	sp,sp,16
   111b4:	00008067          	ret

00000000000111b8 <__seofread>:
   111b8:	00000513          	li	a0,0
   111bc:	00008067          	ret

00000000000111c0 <__swrite>:
   111c0:	01059783          	lh	a5,16(a1)
   111c4:	fd010113          	addi	sp,sp,-48
   111c8:	00068313          	mv	t1,a3
   111cc:	02113423          	sd	ra,40(sp)
   111d0:	1007f693          	andi	a3,a5,256
   111d4:	00058713          	mv	a4,a1
   111d8:	00060893          	mv	a7,a2
   111dc:	00050813          	mv	a6,a0
   111e0:	02069863          	bnez	a3,11210 <__swrite+0x50>
   111e4:	fffff6b7          	lui	a3,0xfffff
   111e8:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb07f>
   111ec:	02813083          	ld	ra,40(sp)
   111f0:	00d7f7b3          	and	a5,a5,a3
   111f4:	01271583          	lh	a1,18(a4)
   111f8:	00f71823          	sh	a5,16(a4)
   111fc:	00030693          	mv	a3,t1
   11200:	00088613          	mv	a2,a7
   11204:	00080513          	mv	a0,a6
   11208:	03010113          	addi	sp,sp,48
   1120c:	2b80006f          	j	114c4 <_write_r>
   11210:	01259583          	lh	a1,18(a1)
   11214:	00c13823          	sd	a2,16(sp)
   11218:	00200693          	li	a3,2
   1121c:	00000613          	li	a2,0
   11220:	00613c23          	sd	t1,24(sp)
   11224:	00e13023          	sd	a4,0(sp)
   11228:	00a13423          	sd	a0,8(sp)
   1122c:	1c8000ef          	jal	113f4 <_lseek_r>
   11230:	00013703          	ld	a4,0(sp)
   11234:	01813303          	ld	t1,24(sp)
   11238:	01013883          	ld	a7,16(sp)
   1123c:	01071783          	lh	a5,16(a4)
   11240:	00813803          	ld	a6,8(sp)
   11244:	fa1ff06f          	j	111e4 <__swrite+0x24>

0000000000011248 <__sseek>:
   11248:	ff010113          	addi	sp,sp,-16
   1124c:	00813023          	sd	s0,0(sp)
   11250:	00058413          	mv	s0,a1
   11254:	01259583          	lh	a1,18(a1)
   11258:	00113423          	sd	ra,8(sp)
   1125c:	198000ef          	jal	113f4 <_lseek_r>
   11260:	fff00713          	li	a4,-1
   11264:	01041783          	lh	a5,16(s0)
   11268:	02e50263          	beq	a0,a4,1128c <__sseek+0x44>
   1126c:	00001737          	lui	a4,0x1
   11270:	00e7e7b3          	or	a5,a5,a4
   11274:	00813083          	ld	ra,8(sp)
   11278:	08a43823          	sd	a0,144(s0)
   1127c:	00f41823          	sh	a5,16(s0)
   11280:	00013403          	ld	s0,0(sp)
   11284:	01010113          	addi	sp,sp,16
   11288:	00008067          	ret
   1128c:	80050713          	addi	a4,a0,-2048
   11290:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   11294:	00e7f7b3          	and	a5,a5,a4
   11298:	00813083          	ld	ra,8(sp)
   1129c:	00f41823          	sh	a5,16(s0)
   112a0:	00013403          	ld	s0,0(sp)
   112a4:	01010113          	addi	sp,sp,16
   112a8:	00008067          	ret

00000000000112ac <__sclose>:
   112ac:	01259583          	lh	a1,18(a1)
   112b0:	0040006f          	j	112b4 <_close_r>

00000000000112b4 <_close_r>:
   112b4:	fe010113          	addi	sp,sp,-32
   112b8:	00813823          	sd	s0,16(sp)
   112bc:	00913423          	sd	s1,8(sp)
   112c0:	00050493          	mv	s1,a0
   112c4:	00058513          	mv	a0,a1
   112c8:	00113c23          	sd	ra,24(sp)
   112cc:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   112d0:	7e4010ef          	jal	12ab4 <_close>
   112d4:	fff00793          	li	a5,-1
   112d8:	00f50c63          	beq	a0,a5,112f0 <_close_r+0x3c>
   112dc:	01813083          	ld	ra,24(sp)
   112e0:	01013403          	ld	s0,16(sp)
   112e4:	00813483          	ld	s1,8(sp)
   112e8:	02010113          	addi	sp,sp,32
   112ec:	00008067          	ret
   112f0:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   112f4:	fe0784e3          	beqz	a5,112dc <_close_r+0x28>
   112f8:	01813083          	ld	ra,24(sp)
   112fc:	01013403          	ld	s0,16(sp)
   11300:	00f4a023          	sw	a5,0(s1)
   11304:	00813483          	ld	s1,8(sp)
   11308:	02010113          	addi	sp,sp,32
   1130c:	00008067          	ret

0000000000011310 <_reclaim_reent>:
   11310:	1901b783          	ld	a5,400(gp) # 139a8 <_impure_ptr>
   11314:	0ca78e63          	beq	a5,a0,113f0 <_reclaim_reent+0xe0>
   11318:	06853583          	ld	a1,104(a0)
   1131c:	fd010113          	addi	sp,sp,-48
   11320:	00913c23          	sd	s1,24(sp)
   11324:	02113423          	sd	ra,40(sp)
   11328:	02813023          	sd	s0,32(sp)
   1132c:	00050493          	mv	s1,a0
   11330:	04058863          	beqz	a1,11380 <_reclaim_reent+0x70>
   11334:	01213823          	sd	s2,16(sp)
   11338:	01313423          	sd	s3,8(sp)
   1133c:	00000913          	li	s2,0
   11340:	20000993          	li	s3,512
   11344:	012587b3          	add	a5,a1,s2
   11348:	0007b403          	ld	s0,0(a5)
   1134c:	00040e63          	beqz	s0,11368 <_reclaim_reent+0x58>
   11350:	00040593          	mv	a1,s0
   11354:	00043403          	ld	s0,0(s0)
   11358:	00048513          	mv	a0,s1
   1135c:	5b0000ef          	jal	1190c <_free_r>
   11360:	fe0418e3          	bnez	s0,11350 <_reclaim_reent+0x40>
   11364:	0684b583          	ld	a1,104(s1)
   11368:	00890913          	addi	s2,s2,8
   1136c:	fd391ce3          	bne	s2,s3,11344 <_reclaim_reent+0x34>
   11370:	00048513          	mv	a0,s1
   11374:	598000ef          	jal	1190c <_free_r>
   11378:	01013903          	ld	s2,16(sp)
   1137c:	00813983          	ld	s3,8(sp)
   11380:	0504b583          	ld	a1,80(s1)
   11384:	00058663          	beqz	a1,11390 <_reclaim_reent+0x80>
   11388:	00048513          	mv	a0,s1
   1138c:	580000ef          	jal	1190c <_free_r>
   11390:	0604b403          	ld	s0,96(s1)
   11394:	00040c63          	beqz	s0,113ac <_reclaim_reent+0x9c>
   11398:	00040593          	mv	a1,s0
   1139c:	00043403          	ld	s0,0(s0)
   113a0:	00048513          	mv	a0,s1
   113a4:	568000ef          	jal	1190c <_free_r>
   113a8:	fe0418e3          	bnez	s0,11398 <_reclaim_reent+0x88>
   113ac:	0784b583          	ld	a1,120(s1)
   113b0:	00058663          	beqz	a1,113bc <_reclaim_reent+0xac>
   113b4:	00048513          	mv	a0,s1
   113b8:	554000ef          	jal	1190c <_free_r>
   113bc:	0484b783          	ld	a5,72(s1)
   113c0:	00078e63          	beqz	a5,113dc <_reclaim_reent+0xcc>
   113c4:	02013403          	ld	s0,32(sp)
   113c8:	02813083          	ld	ra,40(sp)
   113cc:	00048513          	mv	a0,s1
   113d0:	01813483          	ld	s1,24(sp)
   113d4:	03010113          	addi	sp,sp,48
   113d8:	00078067          	jr	a5
   113dc:	02813083          	ld	ra,40(sp)
   113e0:	02013403          	ld	s0,32(sp)
   113e4:	01813483          	ld	s1,24(sp)
   113e8:	03010113          	addi	sp,sp,48
   113ec:	00008067          	ret
   113f0:	00008067          	ret

00000000000113f4 <_lseek_r>:
   113f4:	fe010113          	addi	sp,sp,-32
   113f8:	00058793          	mv	a5,a1
   113fc:	00813823          	sd	s0,16(sp)
   11400:	00913423          	sd	s1,8(sp)
   11404:	00060593          	mv	a1,a2
   11408:	00050493          	mv	s1,a0
   1140c:	00068613          	mv	a2,a3
   11410:	00078513          	mv	a0,a5
   11414:	00113c23          	sd	ra,24(sp)
   11418:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   1141c:	708010ef          	jal	12b24 <_lseek>
   11420:	fff00793          	li	a5,-1
   11424:	00f50c63          	beq	a0,a5,1143c <_lseek_r+0x48>
   11428:	01813083          	ld	ra,24(sp)
   1142c:	01013403          	ld	s0,16(sp)
   11430:	00813483          	ld	s1,8(sp)
   11434:	02010113          	addi	sp,sp,32
   11438:	00008067          	ret
   1143c:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   11440:	fe0784e3          	beqz	a5,11428 <_lseek_r+0x34>
   11444:	01813083          	ld	ra,24(sp)
   11448:	01013403          	ld	s0,16(sp)
   1144c:	00f4a023          	sw	a5,0(s1)
   11450:	00813483          	ld	s1,8(sp)
   11454:	02010113          	addi	sp,sp,32
   11458:	00008067          	ret

000000000001145c <_read_r>:
   1145c:	fe010113          	addi	sp,sp,-32
   11460:	00058793          	mv	a5,a1
   11464:	00813823          	sd	s0,16(sp)
   11468:	00913423          	sd	s1,8(sp)
   1146c:	00060593          	mv	a1,a2
   11470:	00050493          	mv	s1,a0
   11474:	00068613          	mv	a2,a3
   11478:	00078513          	mv	a0,a5
   1147c:	00113c23          	sd	ra,24(sp)
   11480:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   11484:	6e0010ef          	jal	12b64 <_read>
   11488:	fff00793          	li	a5,-1
   1148c:	00f50c63          	beq	a0,a5,114a4 <_read_r+0x48>
   11490:	01813083          	ld	ra,24(sp)
   11494:	01013403          	ld	s0,16(sp)
   11498:	00813483          	ld	s1,8(sp)
   1149c:	02010113          	addi	sp,sp,32
   114a0:	00008067          	ret
   114a4:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   114a8:	fe0784e3          	beqz	a5,11490 <_read_r+0x34>
   114ac:	01813083          	ld	ra,24(sp)
   114b0:	01013403          	ld	s0,16(sp)
   114b4:	00f4a023          	sw	a5,0(s1)
   114b8:	00813483          	ld	s1,8(sp)
   114bc:	02010113          	addi	sp,sp,32
   114c0:	00008067          	ret

00000000000114c4 <_write_r>:
   114c4:	fe010113          	addi	sp,sp,-32
   114c8:	00058793          	mv	a5,a1
   114cc:	00813823          	sd	s0,16(sp)
   114d0:	00913423          	sd	s1,8(sp)
   114d4:	00060593          	mv	a1,a2
   114d8:	00050493          	mv	s1,a0
   114dc:	00068613          	mv	a2,a3
   114e0:	00078513          	mv	a0,a5
   114e4:	00113c23          	sd	ra,24(sp)
   114e8:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   114ec:	730010ef          	jal	12c1c <_write>
   114f0:	fff00793          	li	a5,-1
   114f4:	00f50c63          	beq	a0,a5,1150c <_write_r+0x48>
   114f8:	01813083          	ld	ra,24(sp)
   114fc:	01013403          	ld	s0,16(sp)
   11500:	00813483          	ld	s1,8(sp)
   11504:	02010113          	addi	sp,sp,32
   11508:	00008067          	ret
   1150c:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   11510:	fe0784e3          	beqz	a5,114f8 <_write_r+0x34>
   11514:	01813083          	ld	ra,24(sp)
   11518:	01013403          	ld	s0,16(sp)
   1151c:	00f4a023          	sw	a5,0(s1)
   11520:	00813483          	ld	s1,8(sp)
   11524:	02010113          	addi	sp,sp,32
   11528:	00008067          	ret

000000000001152c <__libc_init_array>:
   1152c:	fe010113          	addi	sp,sp,-32
   11530:	00813823          	sd	s0,16(sp)
   11534:	01213023          	sd	s2,0(sp)
   11538:	00013437          	lui	s0,0x13
   1153c:	00013937          	lui	s2,0x13
   11540:	00113c23          	sd	ra,24(sp)
   11544:	00913423          	sd	s1,8(sp)
   11548:	00090913          	mv	s2,s2
   1154c:	00040413          	mv	s0,s0
   11550:	02890263          	beq	s2,s0,11574 <__libc_init_array+0x48>
   11554:	40890933          	sub	s2,s2,s0
   11558:	40395913          	srai	s2,s2,0x3
   1155c:	00000493          	li	s1,0
   11560:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   11564:	00148493          	addi	s1,s1,1
   11568:	00840413          	addi	s0,s0,8
   1156c:	000780e7          	jalr	a5
   11570:	ff24e8e3          	bltu	s1,s2,11560 <__libc_init_array+0x34>
   11574:	00013937          	lui	s2,0x13
   11578:	00013437          	lui	s0,0x13
   1157c:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11580:	00040413          	mv	s0,s0
   11584:	02890263          	beq	s2,s0,115a8 <__libc_init_array+0x7c>
   11588:	40890933          	sub	s2,s2,s0
   1158c:	40395913          	srai	s2,s2,0x3
   11590:	00000493          	li	s1,0
   11594:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   11598:	00148493          	addi	s1,s1,1
   1159c:	00840413          	addi	s0,s0,8
   115a0:	000780e7          	jalr	a5
   115a4:	ff24e8e3          	bltu	s1,s2,11594 <__libc_init_array+0x68>
   115a8:	01813083          	ld	ra,24(sp)
   115ac:	01013403          	ld	s0,16(sp)
   115b0:	00813483          	ld	s1,8(sp)
   115b4:	00013903          	ld	s2,0(sp)
   115b8:	02010113          	addi	sp,sp,32
   115bc:	00008067          	ret

00000000000115c0 <memset>:
   115c0:	00f00313          	li	t1,15
   115c4:	00050713          	mv	a4,a0
   115c8:	02c37a63          	bgeu	t1,a2,115fc <memset+0x3c>
   115cc:	00f77793          	andi	a5,a4,15
   115d0:	0a079063          	bnez	a5,11670 <memset+0xb0>
   115d4:	06059e63          	bnez	a1,11650 <memset+0x90>
   115d8:	ff067693          	andi	a3,a2,-16
   115dc:	00f67613          	andi	a2,a2,15
   115e0:	00e686b3          	add	a3,a3,a4
   115e4:	00b73023          	sd	a1,0(a4)
   115e8:	00b73423          	sd	a1,8(a4)
   115ec:	01070713          	addi	a4,a4,16
   115f0:	fed76ae3          	bltu	a4,a3,115e4 <memset+0x24>
   115f4:	00061463          	bnez	a2,115fc <memset+0x3c>
   115f8:	00008067          	ret
   115fc:	40c306b3          	sub	a3,t1,a2
   11600:	00269693          	slli	a3,a3,0x2
   11604:	00000297          	auipc	t0,0x0
   11608:	005686b3          	add	a3,a3,t0
   1160c:	00c68067          	jr	12(a3)
   11610:	00b70723          	sb	a1,14(a4)
   11614:	00b706a3          	sb	a1,13(a4)
   11618:	00b70623          	sb	a1,12(a4)
   1161c:	00b705a3          	sb	a1,11(a4)
   11620:	00b70523          	sb	a1,10(a4)
   11624:	00b704a3          	sb	a1,9(a4)
   11628:	00b70423          	sb	a1,8(a4)
   1162c:	00b703a3          	sb	a1,7(a4)
   11630:	00b70323          	sb	a1,6(a4)
   11634:	00b702a3          	sb	a1,5(a4)
   11638:	00b70223          	sb	a1,4(a4)
   1163c:	00b701a3          	sb	a1,3(a4)
   11640:	00b70123          	sb	a1,2(a4)
   11644:	00b700a3          	sb	a1,1(a4)
   11648:	00b70023          	sb	a1,0(a4)
   1164c:	00008067          	ret
   11650:	0ff5f593          	zext.b	a1,a1
   11654:	00859693          	slli	a3,a1,0x8
   11658:	00d5e5b3          	or	a1,a1,a3
   1165c:	01059693          	slli	a3,a1,0x10
   11660:	00d5e5b3          	or	a1,a1,a3
   11664:	02059693          	slli	a3,a1,0x20
   11668:	00d5e5b3          	or	a1,a1,a3
   1166c:	f6dff06f          	j	115d8 <memset+0x18>
   11670:	00279693          	slli	a3,a5,0x2
   11674:	00000297          	auipc	t0,0x0
   11678:	005686b3          	add	a3,a3,t0
   1167c:	00008293          	mv	t0,ra
   11680:	f98680e7          	jalr	-104(a3)
   11684:	00028093          	mv	ra,t0
   11688:	ff078793          	addi	a5,a5,-16
   1168c:	40f70733          	sub	a4,a4,a5
   11690:	00f60633          	add	a2,a2,a5
   11694:	f6c374e3          	bgeu	t1,a2,115fc <memset+0x3c>
   11698:	f3dff06f          	j	115d4 <memset+0x14>

000000000001169c <__call_exitprocs>:
   1169c:	fb010113          	addi	sp,sp,-80
   116a0:	03413023          	sd	s4,32(sp)
   116a4:	03213823          	sd	s2,48(sp)
   116a8:	1b81b903          	ld	s2,440(gp) # 139d0 <__atexit>
   116ac:	04113423          	sd	ra,72(sp)
   116b0:	06090e63          	beqz	s2,1172c <__call_exitprocs+0x90>
   116b4:	03313423          	sd	s3,40(sp)
   116b8:	01513c23          	sd	s5,24(sp)
   116bc:	01613823          	sd	s6,16(sp)
   116c0:	01713423          	sd	s7,8(sp)
   116c4:	04813023          	sd	s0,64(sp)
   116c8:	02913c23          	sd	s1,56(sp)
   116cc:	01813023          	sd	s8,0(sp)
   116d0:	00050b13          	mv	s6,a0
   116d4:	00058b93          	mv	s7,a1
   116d8:	fff00993          	li	s3,-1
   116dc:	00100a93          	li	s5,1
   116e0:	00892403          	lw	s0,8(s2)
   116e4:	fff4041b          	addiw	s0,s0,-1
   116e8:	02044463          	bltz	s0,11710 <__call_exitprocs+0x74>
   116ec:	01090493          	addi	s1,s2,16
   116f0:	00341793          	slli	a5,s0,0x3
   116f4:	00f484b3          	add	s1,s1,a5
   116f8:	040b8463          	beqz	s7,11740 <__call_exitprocs+0xa4>
   116fc:	2004b783          	ld	a5,512(s1)
   11700:	05778063          	beq	a5,s7,11740 <__call_exitprocs+0xa4>
   11704:	fff4041b          	addiw	s0,s0,-1
   11708:	ff848493          	addi	s1,s1,-8
   1170c:	ff3418e3          	bne	s0,s3,116fc <__call_exitprocs+0x60>
   11710:	04013403          	ld	s0,64(sp)
   11714:	03813483          	ld	s1,56(sp)
   11718:	02813983          	ld	s3,40(sp)
   1171c:	01813a83          	ld	s5,24(sp)
   11720:	01013b03          	ld	s6,16(sp)
   11724:	00813b83          	ld	s7,8(sp)
   11728:	00013c03          	ld	s8,0(sp)
   1172c:	04813083          	ld	ra,72(sp)
   11730:	03013903          	ld	s2,48(sp)
   11734:	02013a03          	ld	s4,32(sp)
   11738:	05010113          	addi	sp,sp,80
   1173c:	00008067          	ret
   11740:	00892783          	lw	a5,8(s2)
   11744:	0004b683          	ld	a3,0(s1)
   11748:	fff7879b          	addiw	a5,a5,-1
   1174c:	06878a63          	beq	a5,s0,117c0 <__call_exitprocs+0x124>
   11750:	0004b023          	sd	zero,0(s1)
   11754:	02068663          	beqz	a3,11780 <__call_exitprocs+0xe4>
   11758:	31092783          	lw	a5,784(s2)
   1175c:	008a973b          	sllw	a4,s5,s0
   11760:	00892c03          	lw	s8,8(s2)
   11764:	00e7f7b3          	and	a5,a5,a4
   11768:	02079463          	bnez	a5,11790 <__call_exitprocs+0xf4>
   1176c:	000680e7          	jalr	a3
   11770:	00892703          	lw	a4,8(s2)
   11774:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   11778:	03871e63          	bne	a4,s8,117b4 <__call_exitprocs+0x118>
   1177c:	03279c63          	bne	a5,s2,117b4 <__call_exitprocs+0x118>
   11780:	fff4041b          	addiw	s0,s0,-1
   11784:	ff848493          	addi	s1,s1,-8
   11788:	f73418e3          	bne	s0,s3,116f8 <__call_exitprocs+0x5c>
   1178c:	f85ff06f          	j	11710 <__call_exitprocs+0x74>
   11790:	31492783          	lw	a5,788(s2)
   11794:	1004b583          	ld	a1,256(s1)
   11798:	00f77733          	and	a4,a4,a5
   1179c:	02071663          	bnez	a4,117c8 <__call_exitprocs+0x12c>
   117a0:	000b0513          	mv	a0,s6
   117a4:	000680e7          	jalr	a3
   117a8:	00892703          	lw	a4,8(s2)
   117ac:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   117b0:	fd8706e3          	beq	a4,s8,1177c <__call_exitprocs+0xe0>
   117b4:	f4078ee3          	beqz	a5,11710 <__call_exitprocs+0x74>
   117b8:	00078913          	mv	s2,a5
   117bc:	f25ff06f          	j	116e0 <__call_exitprocs+0x44>
   117c0:	00892423          	sw	s0,8(s2)
   117c4:	f91ff06f          	j	11754 <__call_exitprocs+0xb8>
   117c8:	00058513          	mv	a0,a1
   117cc:	000680e7          	jalr	a3
   117d0:	fa1ff06f          	j	11770 <__call_exitprocs+0xd4>

00000000000117d4 <atexit>:
   117d4:	00050593          	mv	a1,a0
   117d8:	00000693          	li	a3,0
   117dc:	00000613          	li	a2,0
   117e0:	00000513          	li	a0,0
   117e4:	2340106f          	j	12a18 <__register_exitproc>

00000000000117e8 <_malloc_trim_r>:
   117e8:	fd010113          	addi	sp,sp,-48
   117ec:	01213823          	sd	s2,16(sp)
   117f0:	00013937          	lui	s2,0x13
   117f4:	02813023          	sd	s0,32(sp)
   117f8:	00913c23          	sd	s1,24(sp)
   117fc:	01313423          	sd	s3,8(sp)
   11800:	00058413          	mv	s0,a1
   11804:	02113423          	sd	ra,40(sp)
   11808:	00050993          	mv	s3,a0
   1180c:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   11810:	4e5000ef          	jal	124f4 <__malloc_lock>
   11814:	01093783          	ld	a5,16(s2)
   11818:	00001737          	lui	a4,0x1
   1181c:	0087b483          	ld	s1,8(a5)
   11820:	ffc4f493          	andi	s1,s1,-4
   11824:	7ff48793          	addi	a5,s1,2047
   11828:	7e078793          	addi	a5,a5,2016
   1182c:	40878433          	sub	s0,a5,s0
   11830:	00c45413          	srli	s0,s0,0xc
   11834:	fff40413          	addi	s0,s0,-1
   11838:	00c41413          	slli	s0,s0,0xc
   1183c:	00e44e63          	blt	s0,a4,11858 <_malloc_trim_r+0x70>
   11840:	00000593          	li	a1,0
   11844:	00098513          	mv	a0,s3
   11848:	118010ef          	jal	12960 <_sbrk_r>
   1184c:	01093783          	ld	a5,16(s2)
   11850:	009787b3          	add	a5,a5,s1
   11854:	02f50663          	beq	a0,a5,11880 <_malloc_trim_r+0x98>
   11858:	00098513          	mv	a0,s3
   1185c:	49d000ef          	jal	124f8 <__malloc_unlock>
   11860:	02813083          	ld	ra,40(sp)
   11864:	02013403          	ld	s0,32(sp)
   11868:	01813483          	ld	s1,24(sp)
   1186c:	01013903          	ld	s2,16(sp)
   11870:	00813983          	ld	s3,8(sp)
   11874:	00000513          	li	a0,0
   11878:	03010113          	addi	sp,sp,48
   1187c:	00008067          	ret
   11880:	408005b3          	neg	a1,s0
   11884:	00098513          	mv	a0,s3
   11888:	0d8010ef          	jal	12960 <_sbrk_r>
   1188c:	fff00793          	li	a5,-1
   11890:	04f50463          	beq	a0,a5,118d8 <_malloc_trim_r+0xf0>
   11894:	01093683          	ld	a3,16(s2)
   11898:	4281a783          	lw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   1189c:	408484b3          	sub	s1,s1,s0
   118a0:	0014e493          	ori	s1,s1,1
   118a4:	00098513          	mv	a0,s3
   118a8:	408787bb          	subw	a5,a5,s0
   118ac:	0096b423          	sd	s1,8(a3)
   118b0:	42f1a423          	sw	a5,1064(gp) # 13c40 <__malloc_current_mallinfo>
   118b4:	445000ef          	jal	124f8 <__malloc_unlock>
   118b8:	02813083          	ld	ra,40(sp)
   118bc:	02013403          	ld	s0,32(sp)
   118c0:	01813483          	ld	s1,24(sp)
   118c4:	01013903          	ld	s2,16(sp)
   118c8:	00813983          	ld	s3,8(sp)
   118cc:	00100513          	li	a0,1
   118d0:	03010113          	addi	sp,sp,48
   118d4:	00008067          	ret
   118d8:	00000593          	li	a1,0
   118dc:	00098513          	mv	a0,s3
   118e0:	080010ef          	jal	12960 <_sbrk_r>
   118e4:	01093703          	ld	a4,16(s2)
   118e8:	01f00693          	li	a3,31
   118ec:	40e507b3          	sub	a5,a0,a4
   118f0:	f6f6d4e3          	bge	a3,a5,11858 <_malloc_trim_r+0x70>
   118f4:	1981b603          	ld	a2,408(gp) # 139b0 <__malloc_sbrk_base>
   118f8:	0017e793          	ori	a5,a5,1
   118fc:	40c50533          	sub	a0,a0,a2
   11900:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   11904:	42a1a423          	sw	a0,1064(gp) # 13c40 <__malloc_current_mallinfo>
   11908:	f51ff06f          	j	11858 <_malloc_trim_r+0x70>

000000000001190c <_free_r>:
   1190c:	12058863          	beqz	a1,11a3c <_free_r+0x130>
   11910:	fe010113          	addi	sp,sp,-32
   11914:	00813823          	sd	s0,16(sp)
   11918:	00b13423          	sd	a1,8(sp)
   1191c:	00050413          	mv	s0,a0
   11920:	00113c23          	sd	ra,24(sp)
   11924:	3d1000ef          	jal	124f4 <__malloc_lock>
   11928:	00813583          	ld	a1,8(sp)
   1192c:	00013837          	lui	a6,0x13
   11930:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11934:	ff85b503          	ld	a0,-8(a1)
   11938:	ff058713          	addi	a4,a1,-16
   1193c:	01083883          	ld	a7,16(a6)
   11940:	ffe57793          	andi	a5,a0,-2
   11944:	00f70633          	add	a2,a4,a5
   11948:	00863683          	ld	a3,8(a2)
   1194c:	00157313          	andi	t1,a0,1
   11950:	ffc6f693          	andi	a3,a3,-4
   11954:	18c88e63          	beq	a7,a2,11af0 <_free_r+0x1e4>
   11958:	00d63423          	sd	a3,8(a2)
   1195c:	00d608b3          	add	a7,a2,a3
   11960:	0088b883          	ld	a7,8(a7)
   11964:	0018f893          	andi	a7,a7,1
   11968:	08031e63          	bnez	t1,11a04 <_free_r+0xf8>
   1196c:	ff05b303          	ld	t1,-16(a1)
   11970:	000135b7          	lui	a1,0x13
   11974:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11978:	40670733          	sub	a4,a4,t1
   1197c:	01073503          	ld	a0,16(a4)
   11980:	006787b3          	add	a5,a5,t1
   11984:	14b50063          	beq	a0,a1,11ac4 <_free_r+0x1b8>
   11988:	01873303          	ld	t1,24(a4)
   1198c:	00653c23          	sd	t1,24(a0)
   11990:	00a33823          	sd	a0,16(t1) # 10220 <matmulti+0x4>
   11994:	1a088263          	beqz	a7,11b38 <_free_r+0x22c>
   11998:	0017e693          	ori	a3,a5,1
   1199c:	00d73423          	sd	a3,8(a4)
   119a0:	00f63023          	sd	a5,0(a2)
   119a4:	1ff00693          	li	a3,511
   119a8:	0af6e663          	bltu	a3,a5,11a54 <_free_r+0x148>
   119ac:	0037d793          	srli	a5,a5,0x3
   119b0:	00179693          	slli	a3,a5,0x1
   119b4:	0026869b          	addiw	a3,a3,2
   119b8:	00369693          	slli	a3,a3,0x3
   119bc:	00883503          	ld	a0,8(a6)
   119c0:	00d806b3          	add	a3,a6,a3
   119c4:	0006b583          	ld	a1,0(a3)
   119c8:	4027d61b          	sraiw	a2,a5,0x2
   119cc:	00100793          	li	a5,1
   119d0:	00c797b3          	sll	a5,a5,a2
   119d4:	00a7e7b3          	or	a5,a5,a0
   119d8:	ff068613          	addi	a2,a3,-16
   119dc:	00b73823          	sd	a1,16(a4)
   119e0:	00c73c23          	sd	a2,24(a4)
   119e4:	00f83423          	sd	a5,8(a6)
   119e8:	00e6b023          	sd	a4,0(a3)
   119ec:	00e5bc23          	sd	a4,24(a1)
   119f0:	00040513          	mv	a0,s0
   119f4:	01013403          	ld	s0,16(sp)
   119f8:	01813083          	ld	ra,24(sp)
   119fc:	02010113          	addi	sp,sp,32
   11a00:	2f90006f          	j	124f8 <__malloc_unlock>
   11a04:	02089e63          	bnez	a7,11a40 <_free_r+0x134>
   11a08:	000135b7          	lui	a1,0x13
   11a0c:	00d787b3          	add	a5,a5,a3
   11a10:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11a14:	01063683          	ld	a3,16(a2)
   11a18:	0017e893          	ori	a7,a5,1
   11a1c:	00f70533          	add	a0,a4,a5
   11a20:	16b68663          	beq	a3,a1,11b8c <_free_r+0x280>
   11a24:	01863603          	ld	a2,24(a2)
   11a28:	00c6bc23          	sd	a2,24(a3)
   11a2c:	00d63823          	sd	a3,16(a2)
   11a30:	01173423          	sd	a7,8(a4)
   11a34:	00f53023          	sd	a5,0(a0)
   11a38:	f6dff06f          	j	119a4 <_free_r+0x98>
   11a3c:	00008067          	ret
   11a40:	00156513          	ori	a0,a0,1
   11a44:	fea5bc23          	sd	a0,-8(a1)
   11a48:	00f63023          	sd	a5,0(a2)
   11a4c:	1ff00693          	li	a3,511
   11a50:	f4f6fee3          	bgeu	a3,a5,119ac <_free_r+0xa0>
   11a54:	0097d693          	srli	a3,a5,0x9
   11a58:	00400613          	li	a2,4
   11a5c:	0ed66263          	bltu	a2,a3,11b40 <_free_r+0x234>
   11a60:	0067d693          	srli	a3,a5,0x6
   11a64:	00169593          	slli	a1,a3,0x1
   11a68:	0725859b          	addiw	a1,a1,114
   11a6c:	00359593          	slli	a1,a1,0x3
   11a70:	0386861b          	addiw	a2,a3,56
   11a74:	00b805b3          	add	a1,a6,a1
   11a78:	0005b683          	ld	a3,0(a1)
   11a7c:	ff058593          	addi	a1,a1,-16
   11a80:	00d59863          	bne	a1,a3,11a90 <_free_r+0x184>
   11a84:	1240006f          	j	11ba8 <_free_r+0x29c>
   11a88:	0106b683          	ld	a3,16(a3)
   11a8c:	00d58863          	beq	a1,a3,11a9c <_free_r+0x190>
   11a90:	0086b603          	ld	a2,8(a3)
   11a94:	ffc67613          	andi	a2,a2,-4
   11a98:	fec7e8e3          	bltu	a5,a2,11a88 <_free_r+0x17c>
   11a9c:	0186b583          	ld	a1,24(a3)
   11aa0:	00b73c23          	sd	a1,24(a4)
   11aa4:	00d73823          	sd	a3,16(a4)
   11aa8:	00040513          	mv	a0,s0
   11aac:	01013403          	ld	s0,16(sp)
   11ab0:	01813083          	ld	ra,24(sp)
   11ab4:	00e5b823          	sd	a4,16(a1)
   11ab8:	00e6bc23          	sd	a4,24(a3)
   11abc:	02010113          	addi	sp,sp,32
   11ac0:	2390006f          	j	124f8 <__malloc_unlock>
   11ac4:	0a089263          	bnez	a7,11b68 <_free_r+0x25c>
   11ac8:	01863583          	ld	a1,24(a2)
   11acc:	01063603          	ld	a2,16(a2)
   11ad0:	00f686b3          	add	a3,a3,a5
   11ad4:	0016e793          	ori	a5,a3,1
   11ad8:	00b63c23          	sd	a1,24(a2)
   11adc:	00c5b823          	sd	a2,16(a1)
   11ae0:	00f73423          	sd	a5,8(a4)
   11ae4:	00d70733          	add	a4,a4,a3
   11ae8:	00d73023          	sd	a3,0(a4)
   11aec:	f05ff06f          	j	119f0 <_free_r+0xe4>
   11af0:	00d786b3          	add	a3,a5,a3
   11af4:	02031063          	bnez	t1,11b14 <_free_r+0x208>
   11af8:	ff05b783          	ld	a5,-16(a1)
   11afc:	40f70733          	sub	a4,a4,a5
   11b00:	01073603          	ld	a2,16(a4)
   11b04:	00f686b3          	add	a3,a3,a5
   11b08:	01873783          	ld	a5,24(a4)
   11b0c:	00f63c23          	sd	a5,24(a2)
   11b10:	00c7b823          	sd	a2,16(a5)
   11b14:	0016e613          	ori	a2,a3,1
   11b18:	1a01b783          	ld	a5,416(gp) # 139b8 <__malloc_trim_threshold>
   11b1c:	00c73423          	sd	a2,8(a4)
   11b20:	00e83823          	sd	a4,16(a6)
   11b24:	ecf6e6e3          	bltu	a3,a5,119f0 <_free_r+0xe4>
   11b28:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   11b2c:	00040513          	mv	a0,s0
   11b30:	cb9ff0ef          	jal	117e8 <_malloc_trim_r>
   11b34:	ebdff06f          	j	119f0 <_free_r+0xe4>
   11b38:	00d787b3          	add	a5,a5,a3
   11b3c:	ed9ff06f          	j	11a14 <_free_r+0x108>
   11b40:	01400613          	li	a2,20
   11b44:	02d67a63          	bgeu	a2,a3,11b78 <_free_r+0x26c>
   11b48:	05400613          	li	a2,84
   11b4c:	06d66c63          	bltu	a2,a3,11bc4 <_free_r+0x2b8>
   11b50:	00c7d693          	srli	a3,a5,0xc
   11b54:	00169593          	slli	a1,a3,0x1
   11b58:	0de5859b          	addiw	a1,a1,222
   11b5c:	00359593          	slli	a1,a1,0x3
   11b60:	06e6861b          	addiw	a2,a3,110
   11b64:	f11ff06f          	j	11a74 <_free_r+0x168>
   11b68:	0017e693          	ori	a3,a5,1
   11b6c:	00d73423          	sd	a3,8(a4)
   11b70:	00f63023          	sd	a5,0(a2)
   11b74:	e7dff06f          	j	119f0 <_free_r+0xe4>
   11b78:	00169593          	slli	a1,a3,0x1
   11b7c:	0b85859b          	addiw	a1,a1,184
   11b80:	00359593          	slli	a1,a1,0x3
   11b84:	05b6861b          	addiw	a2,a3,91
   11b88:	eedff06f          	j	11a74 <_free_r+0x168>
   11b8c:	02e83423          	sd	a4,40(a6)
   11b90:	02e83023          	sd	a4,32(a6)
   11b94:	00b73c23          	sd	a1,24(a4)
   11b98:	00b73823          	sd	a1,16(a4)
   11b9c:	01173423          	sd	a7,8(a4)
   11ba0:	00f53023          	sd	a5,0(a0)
   11ba4:	e4dff06f          	j	119f0 <_free_r+0xe4>
   11ba8:	00883503          	ld	a0,8(a6)
   11bac:	4026561b          	sraiw	a2,a2,0x2
   11bb0:	00100793          	li	a5,1
   11bb4:	00c797b3          	sll	a5,a5,a2
   11bb8:	00a7e7b3          	or	a5,a5,a0
   11bbc:	00f83423          	sd	a5,8(a6)
   11bc0:	ee1ff06f          	j	11aa0 <_free_r+0x194>
   11bc4:	15400613          	li	a2,340
   11bc8:	00d66e63          	bltu	a2,a3,11be4 <_free_r+0x2d8>
   11bcc:	00f7d693          	srli	a3,a5,0xf
   11bd0:	00169593          	slli	a1,a3,0x1
   11bd4:	0f05859b          	addiw	a1,a1,240
   11bd8:	00359593          	slli	a1,a1,0x3
   11bdc:	0776861b          	addiw	a2,a3,119
   11be0:	e95ff06f          	j	11a74 <_free_r+0x168>
   11be4:	55400613          	li	a2,1364
   11be8:	00d66e63          	bltu	a2,a3,11c04 <_free_r+0x2f8>
   11bec:	0127d693          	srli	a3,a5,0x12
   11bf0:	00169593          	slli	a1,a3,0x1
   11bf4:	0fa5859b          	addiw	a1,a1,250
   11bf8:	00359593          	slli	a1,a1,0x3
   11bfc:	07c6861b          	addiw	a2,a3,124
   11c00:	e75ff06f          	j	11a74 <_free_r+0x168>
   11c04:	7f000593          	li	a1,2032
   11c08:	07e00613          	li	a2,126
   11c0c:	e69ff06f          	j	11a74 <_free_r+0x168>

0000000000011c10 <_malloc_r>:
   11c10:	fa010113          	addi	sp,sp,-96
   11c14:	04813823          	sd	s0,80(sp)
   11c18:	04113c23          	sd	ra,88(sp)
   11c1c:	01758713          	addi	a4,a1,23
   11c20:	02e00793          	li	a5,46
   11c24:	00050413          	mv	s0,a0
   11c28:	08e7ee63          	bltu	a5,a4,11cc4 <_malloc_r+0xb4>
   11c2c:	02000713          	li	a4,32
   11c30:	06b76c63          	bltu	a4,a1,11ca8 <_malloc_r+0x98>
   11c34:	0c1000ef          	jal	124f4 <__malloc_lock>
   11c38:	02000713          	li	a4,32
   11c3c:	05000693          	li	a3,80
   11c40:	00400893          	li	a7,4
   11c44:	00013837          	lui	a6,0x13
   11c48:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11c4c:	00d806b3          	add	a3,a6,a3
   11c50:	0086b783          	ld	a5,8(a3)
   11c54:	ff068613          	addi	a2,a3,-16
   11c58:	48c78063          	beq	a5,a2,120d8 <_malloc_r+0x4c8>
   11c5c:	0087b703          	ld	a4,8(a5)
   11c60:	0187b603          	ld	a2,24(a5)
   11c64:	0107b583          	ld	a1,16(a5)
   11c68:	ffc77713          	andi	a4,a4,-4
   11c6c:	00e78733          	add	a4,a5,a4
   11c70:	00873683          	ld	a3,8(a4)
   11c74:	00c5bc23          	sd	a2,24(a1)
   11c78:	00b63823          	sd	a1,16(a2)
   11c7c:	0016e693          	ori	a3,a3,1
   11c80:	00040513          	mv	a0,s0
   11c84:	00d73423          	sd	a3,8(a4)
   11c88:	00f13423          	sd	a5,8(sp)
   11c8c:	06d000ef          	jal	124f8 <__malloc_unlock>
   11c90:	00813783          	ld	a5,8(sp)
   11c94:	05813083          	ld	ra,88(sp)
   11c98:	05013403          	ld	s0,80(sp)
   11c9c:	01078513          	addi	a0,a5,16
   11ca0:	06010113          	addi	sp,sp,96
   11ca4:	00008067          	ret
   11ca8:	00c00793          	li	a5,12
   11cac:	00f42023          	sw	a5,0(s0)
   11cb0:	00000513          	li	a0,0
   11cb4:	05813083          	ld	ra,88(sp)
   11cb8:	05013403          	ld	s0,80(sp)
   11cbc:	06010113          	addi	sp,sp,96
   11cc0:	00008067          	ret
   11cc4:	00100793          	li	a5,1
   11cc8:	ff077713          	andi	a4,a4,-16
   11ccc:	01f79793          	slli	a5,a5,0x1f
   11cd0:	fcf77ce3          	bgeu	a4,a5,11ca8 <_malloc_r+0x98>
   11cd4:	fcb76ae3          	bltu	a4,a1,11ca8 <_malloc_r+0x98>
   11cd8:	00e13423          	sd	a4,8(sp)
   11cdc:	019000ef          	jal	124f4 <__malloc_lock>
   11ce0:	00813703          	ld	a4,8(sp)
   11ce4:	1f700793          	li	a5,503
   11ce8:	4ee7fa63          	bgeu	a5,a4,121dc <_malloc_r+0x5cc>
   11cec:	00975793          	srli	a5,a4,0x9
   11cf0:	18078a63          	beqz	a5,11e84 <_malloc_r+0x274>
   11cf4:	00400693          	li	a3,4
   11cf8:	44f6ea63          	bltu	a3,a5,1214c <_malloc_r+0x53c>
   11cfc:	00675793          	srli	a5,a4,0x6
   11d00:	0397889b          	addiw	a7,a5,57
   11d04:	0018951b          	slliw	a0,a7,0x1
   11d08:	03878e1b          	addiw	t3,a5,56
   11d0c:	00351513          	slli	a0,a0,0x3
   11d10:	00013837          	lui	a6,0x13
   11d14:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11d18:	00a80533          	add	a0,a6,a0
   11d1c:	00853783          	ld	a5,8(a0)
   11d20:	ff050513          	addi	a0,a0,-16
   11d24:	02f50863          	beq	a0,a5,11d54 <_malloc_r+0x144>
   11d28:	01f00313          	li	t1,31
   11d2c:	0140006f          	j	11d40 <_malloc_r+0x130>
   11d30:	0187b583          	ld	a1,24(a5)
   11d34:	36065263          	bgez	a2,12098 <_malloc_r+0x488>
   11d38:	00b50e63          	beq	a0,a1,11d54 <_malloc_r+0x144>
   11d3c:	00058793          	mv	a5,a1
   11d40:	0087b683          	ld	a3,8(a5)
   11d44:	ffc6f693          	andi	a3,a3,-4
   11d48:	40e68633          	sub	a2,a3,a4
   11d4c:	fec352e3          	bge	t1,a2,11d30 <_malloc_r+0x120>
   11d50:	000e0893          	mv	a7,t3
   11d54:	02083783          	ld	a5,32(a6)
   11d58:	00013e37          	lui	t3,0x13
   11d5c:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11d60:	2fc78a63          	beq	a5,t3,12054 <_malloc_r+0x444>
   11d64:	0087b303          	ld	t1,8(a5)
   11d68:	01f00613          	li	a2,31
   11d6c:	ffc37313          	andi	t1,t1,-4
   11d70:	40e306b3          	sub	a3,t1,a4
   11d74:	4ad64463          	blt	a2,a3,1221c <_malloc_r+0x60c>
   11d78:	03c83423          	sd	t3,40(a6)
   11d7c:	03c83023          	sd	t3,32(a6)
   11d80:	4606da63          	bgez	a3,121f4 <_malloc_r+0x5e4>
   11d84:	1ff00693          	li	a3,511
   11d88:	00883583          	ld	a1,8(a6)
   11d8c:	3466ee63          	bltu	a3,t1,120e8 <_malloc_r+0x4d8>
   11d90:	00335313          	srli	t1,t1,0x3
   11d94:	00131693          	slli	a3,t1,0x1
   11d98:	0026869b          	addiw	a3,a3,2
   11d9c:	00369693          	slli	a3,a3,0x3
   11da0:	00d806b3          	add	a3,a6,a3
   11da4:	0006b503          	ld	a0,0(a3)
   11da8:	4023531b          	sraiw	t1,t1,0x2
   11dac:	00100613          	li	a2,1
   11db0:	00661633          	sll	a2,a2,t1
   11db4:	00c5e5b3          	or	a1,a1,a2
   11db8:	ff068613          	addi	a2,a3,-16
   11dbc:	00a7b823          	sd	a0,16(a5)
   11dc0:	00c7bc23          	sd	a2,24(a5)
   11dc4:	00b83423          	sd	a1,8(a6)
   11dc8:	00f6b023          	sd	a5,0(a3)
   11dcc:	00f53c23          	sd	a5,24(a0)
   11dd0:	4028d79b          	sraiw	a5,a7,0x2
   11dd4:	00100513          	li	a0,1
   11dd8:	00f51533          	sll	a0,a0,a5
   11ddc:	0aa5ec63          	bltu	a1,a0,11e94 <_malloc_r+0x284>
   11de0:	00b577b3          	and	a5,a0,a1
   11de4:	02079463          	bnez	a5,11e0c <_malloc_r+0x1fc>
   11de8:	00151513          	slli	a0,a0,0x1
   11dec:	ffc8f893          	andi	a7,a7,-4
   11df0:	00b577b3          	and	a5,a0,a1
   11df4:	0048889b          	addiw	a7,a7,4
   11df8:	00079a63          	bnez	a5,11e0c <_malloc_r+0x1fc>
   11dfc:	00151513          	slli	a0,a0,0x1
   11e00:	00b577b3          	and	a5,a0,a1
   11e04:	0048889b          	addiw	a7,a7,4
   11e08:	fe078ae3          	beqz	a5,11dfc <_malloc_r+0x1ec>
   11e0c:	01f00e93          	li	t4,31
   11e10:	00189f13          	slli	t5,a7,0x1
   11e14:	002f0f1b          	addiw	t5,t5,2
   11e18:	003f1f13          	slli	t5,t5,0x3
   11e1c:	ff0f0f13          	addi	t5,t5,-16
   11e20:	01e80f33          	add	t5,a6,t5
   11e24:	000f0313          	mv	t1,t5
   11e28:	01833683          	ld	a3,24(t1)
   11e2c:	00088f93          	mv	t6,a7
   11e30:	34d30263          	beq	t1,a3,12174 <_malloc_r+0x564>
   11e34:	0086b603          	ld	a2,8(a3)
   11e38:	00068793          	mv	a5,a3
   11e3c:	0186b683          	ld	a3,24(a3)
   11e40:	ffc67613          	andi	a2,a2,-4
   11e44:	40e605b3          	sub	a1,a2,a4
   11e48:	34bec263          	blt	t4,a1,1218c <_malloc_r+0x57c>
   11e4c:	fe05c2e3          	bltz	a1,11e30 <_malloc_r+0x220>
   11e50:	00c78633          	add	a2,a5,a2
   11e54:	00863703          	ld	a4,8(a2)
   11e58:	0107b583          	ld	a1,16(a5)
   11e5c:	00040513          	mv	a0,s0
   11e60:	00176713          	ori	a4,a4,1
   11e64:	00e63423          	sd	a4,8(a2)
   11e68:	00d5bc23          	sd	a3,24(a1)
   11e6c:	00b6b823          	sd	a1,16(a3)
   11e70:	00f13423          	sd	a5,8(sp)
   11e74:	684000ef          	jal	124f8 <__malloc_unlock>
   11e78:	00813783          	ld	a5,8(sp)
   11e7c:	01078513          	addi	a0,a5,16
   11e80:	e35ff06f          	j	11cb4 <_malloc_r+0xa4>
   11e84:	40000513          	li	a0,1024
   11e88:	04000893          	li	a7,64
   11e8c:	03f00e13          	li	t3,63
   11e90:	e81ff06f          	j	11d10 <_malloc_r+0x100>
   11e94:	01083783          	ld	a5,16(a6)
   11e98:	0087b683          	ld	a3,8(a5)
   11e9c:	ffc6f893          	andi	a7,a3,-4
   11ea0:	40e88633          	sub	a2,a7,a4
   11ea4:	00e8e663          	bltu	a7,a4,11eb0 <_malloc_r+0x2a0>
   11ea8:	02062693          	slti	a3,a2,32
   11eac:	1a068863          	beqz	a3,1205c <_malloc_r+0x44c>
   11eb0:	1d01b583          	ld	a1,464(gp) # 139e8 <__malloc_top_pad>
   11eb4:	1981b603          	ld	a2,408(gp) # 139b0 <__malloc_sbrk_base>
   11eb8:	fff00693          	li	a3,-1
   11ebc:	00b705b3          	add	a1,a4,a1
   11ec0:	44d60663          	beq	a2,a3,1230c <_malloc_r+0x6fc>
   11ec4:	000016b7          	lui	a3,0x1
   11ec8:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11ecc:	00d585b3          	add	a1,a1,a3
   11ed0:	fffff6b7          	lui	a3,0xfffff
   11ed4:	00d5f5b3          	and	a1,a1,a3
   11ed8:	00040513          	mv	a0,s0
   11edc:	03013423          	sd	a6,40(sp)
   11ee0:	02f13023          	sd	a5,32(sp)
   11ee4:	00e13c23          	sd	a4,24(sp)
   11ee8:	01113823          	sd	a7,16(sp)
   11eec:	00b13423          	sd	a1,8(sp)
   11ef0:	271000ef          	jal	12960 <_sbrk_r>
   11ef4:	fff00693          	li	a3,-1
   11ef8:	00813583          	ld	a1,8(sp)
   11efc:	01013883          	ld	a7,16(sp)
   11f00:	01813703          	ld	a4,24(sp)
   11f04:	02013783          	ld	a5,32(sp)
   11f08:	02813803          	ld	a6,40(sp)
   11f0c:	00050313          	mv	t1,a0
   11f10:	36d50663          	beq	a0,a3,1227c <_malloc_r+0x66c>
   11f14:	011786b3          	add	a3,a5,a7
   11f18:	36d56063          	bltu	a0,a3,12278 <_malloc_r+0x668>
   11f1c:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   11f20:	000e2603          	lw	a2,0(t3)
   11f24:	00b6063b          	addw	a2,a2,a1
   11f28:	00ce2023          	sw	a2,0(t3)
   11f2c:	00060513          	mv	a0,a2
   11f30:	4a668c63          	beq	a3,t1,123e8 <_malloc_r+0x7d8>
   11f34:	1981bf03          	ld	t5,408(gp) # 139b0 <__malloc_sbrk_base>
   11f38:	fff00613          	li	a2,-1
   11f3c:	4ccf0463          	beq	t5,a2,12404 <_malloc_r+0x7f4>
   11f40:	40d306b3          	sub	a3,t1,a3
   11f44:	00a686bb          	addw	a3,a3,a0
   11f48:	00de2023          	sw	a3,0(t3)
   11f4c:	00f37e93          	andi	t4,t1,15
   11f50:	3c0e8e63          	beqz	t4,1232c <_malloc_r+0x71c>
   11f54:	ff037313          	andi	t1,t1,-16
   11f58:	000016b7          	lui	a3,0x1
   11f5c:	01030313          	addi	t1,t1,16
   11f60:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11f64:	00b30633          	add	a2,t1,a1
   11f68:	41d685b3          	sub	a1,a3,t4
   11f6c:	40c585b3          	sub	a1,a1,a2
   11f70:	03459593          	slli	a1,a1,0x34
   11f74:	0345d593          	srli	a1,a1,0x34
   11f78:	00040513          	mv	a0,s0
   11f7c:	05c13023          	sd	t3,64(sp)
   11f80:	03013c23          	sd	a6,56(sp)
   11f84:	02f13823          	sd	a5,48(sp)
   11f88:	02e13423          	sd	a4,40(sp)
   11f8c:	03113023          	sd	a7,32(sp)
   11f90:	00613c23          	sd	t1,24(sp)
   11f94:	01d13823          	sd	t4,16(sp)
   11f98:	00c13423          	sd	a2,8(sp)
   11f9c:	04b13423          	sd	a1,72(sp)
   11fa0:	1c1000ef          	jal	12960 <_sbrk_r>
   11fa4:	00050693          	mv	a3,a0
   11fa8:	fff00513          	li	a0,-1
   11fac:	00813603          	ld	a2,8(sp)
   11fb0:	01013e83          	ld	t4,16(sp)
   11fb4:	01813303          	ld	t1,24(sp)
   11fb8:	02013883          	ld	a7,32(sp)
   11fbc:	02813703          	ld	a4,40(sp)
   11fc0:	03013783          	ld	a5,48(sp)
   11fc4:	03813803          	ld	a6,56(sp)
   11fc8:	04013e03          	ld	t3,64(sp)
   11fcc:	48a68663          	beq	a3,a0,12458 <_malloc_r+0x848>
   11fd0:	04813583          	ld	a1,72(sp)
   11fd4:	0005851b          	sext.w	a0,a1
   11fd8:	000e2603          	lw	a2,0(t3)
   11fdc:	406686b3          	sub	a3,a3,t1
   11fe0:	00b686b3          	add	a3,a3,a1
   11fe4:	0016e693          	ori	a3,a3,1
   11fe8:	00683823          	sd	t1,16(a6)
   11fec:	00a6063b          	addw	a2,a2,a0
   11ff0:	00d33423          	sd	a3,8(t1)
   11ff4:	00ce2023          	sw	a2,0(t3)
   11ff8:	03078e63          	beq	a5,a6,12034 <_malloc_r+0x424>
   11ffc:	01f00513          	li	a0,31
   12000:	41157663          	bgeu	a0,a7,1240c <_malloc_r+0x7fc>
   12004:	0087b583          	ld	a1,8(a5)
   12008:	fe888693          	addi	a3,a7,-24
   1200c:	ff06f693          	andi	a3,a3,-16
   12010:	0015f593          	andi	a1,a1,1
   12014:	00d5e5b3          	or	a1,a1,a3
   12018:	00b7b423          	sd	a1,8(a5)
   1201c:	00900893          	li	a7,9
   12020:	00d785b3          	add	a1,a5,a3
   12024:	0115b423          	sd	a7,8(a1)
   12028:	0115b823          	sd	a7,16(a1)
   1202c:	44d56863          	bltu	a0,a3,1247c <_malloc_r+0x86c>
   12030:	00833683          	ld	a3,8(t1)
   12034:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   12038:	00c5f463          	bgeu	a1,a2,12040 <_malloc_r+0x430>
   1203c:	1cc1b423          	sd	a2,456(gp) # 139e0 <__malloc_max_sbrked_mem>
   12040:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_total_mem>
   12044:	00c5f463          	bgeu	a1,a2,1204c <_malloc_r+0x43c>
   12048:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_total_mem>
   1204c:	00030793          	mv	a5,t1
   12050:	2340006f          	j	12284 <_malloc_r+0x674>
   12054:	00883583          	ld	a1,8(a6)
   12058:	d79ff06f          	j	11dd0 <_malloc_r+0x1c0>
   1205c:	00176693          	ori	a3,a4,1
   12060:	00d7b423          	sd	a3,8(a5)
   12064:	00e78733          	add	a4,a5,a4
   12068:	00166613          	ori	a2,a2,1
   1206c:	00e83823          	sd	a4,16(a6)
   12070:	00040513          	mv	a0,s0
   12074:	00c73423          	sd	a2,8(a4)
   12078:	00f13423          	sd	a5,8(sp)
   1207c:	47c000ef          	jal	124f8 <__malloc_unlock>
   12080:	00813783          	ld	a5,8(sp)
   12084:	05813083          	ld	ra,88(sp)
   12088:	05013403          	ld	s0,80(sp)
   1208c:	01078513          	addi	a0,a5,16
   12090:	06010113          	addi	sp,sp,96
   12094:	00008067          	ret
   12098:	0107b603          	ld	a2,16(a5)
   1209c:	00d786b3          	add	a3,a5,a3
   120a0:	0086b703          	ld	a4,8(a3)
   120a4:	00b63c23          	sd	a1,24(a2)
   120a8:	00c5b823          	sd	a2,16(a1)
   120ac:	00176713          	ori	a4,a4,1
   120b0:	00040513          	mv	a0,s0
   120b4:	00e6b423          	sd	a4,8(a3)
   120b8:	00f13423          	sd	a5,8(sp)
   120bc:	43c000ef          	jal	124f8 <__malloc_unlock>
   120c0:	00813783          	ld	a5,8(sp)
   120c4:	05813083          	ld	ra,88(sp)
   120c8:	05013403          	ld	s0,80(sp)
   120cc:	01078513          	addi	a0,a5,16
   120d0:	06010113          	addi	sp,sp,96
   120d4:	00008067          	ret
   120d8:	0186b783          	ld	a5,24(a3)
   120dc:	0028889b          	addiw	a7,a7,2
   120e0:	c6f68ae3          	beq	a3,a5,11d54 <_malloc_r+0x144>
   120e4:	b79ff06f          	j	11c5c <_malloc_r+0x4c>
   120e8:	00935693          	srli	a3,t1,0x9
   120ec:	00400613          	li	a2,4
   120f0:	16d67863          	bgeu	a2,a3,12260 <_malloc_r+0x650>
   120f4:	01400613          	li	a2,20
   120f8:	28d66e63          	bltu	a2,a3,12394 <_malloc_r+0x784>
   120fc:	00169513          	slli	a0,a3,0x1
   12100:	0b85051b          	addiw	a0,a0,184
   12104:	00351513          	slli	a0,a0,0x3
   12108:	05b6861b          	addiw	a2,a3,91
   1210c:	00a80533          	add	a0,a6,a0
   12110:	00053683          	ld	a3,0(a0)
   12114:	ff050513          	addi	a0,a0,-16
   12118:	00d51863          	bne	a0,a3,12128 <_malloc_r+0x518>
   1211c:	1f80006f          	j	12314 <_malloc_r+0x704>
   12120:	0106b683          	ld	a3,16(a3)
   12124:	00d50863          	beq	a0,a3,12134 <_malloc_r+0x524>
   12128:	0086b603          	ld	a2,8(a3)
   1212c:	ffc67613          	andi	a2,a2,-4
   12130:	fec368e3          	bltu	t1,a2,12120 <_malloc_r+0x510>
   12134:	0186b503          	ld	a0,24(a3)
   12138:	00a7bc23          	sd	a0,24(a5)
   1213c:	00d7b823          	sd	a3,16(a5)
   12140:	00f53823          	sd	a5,16(a0)
   12144:	00f6bc23          	sd	a5,24(a3)
   12148:	c89ff06f          	j	11dd0 <_malloc_r+0x1c0>
   1214c:	01400693          	li	a3,20
   12150:	14f6fa63          	bgeu	a3,a5,122a4 <_malloc_r+0x694>
   12154:	05400693          	li	a3,84
   12158:	24f6ee63          	bltu	a3,a5,123b4 <_malloc_r+0x7a4>
   1215c:	00c75793          	srli	a5,a4,0xc
   12160:	06f7889b          	addiw	a7,a5,111
   12164:	0018951b          	slliw	a0,a7,0x1
   12168:	06e78e1b          	addiw	t3,a5,110
   1216c:	00351513          	slli	a0,a0,0x3
   12170:	ba1ff06f          	j	11d10 <_malloc_r+0x100>
   12174:	001f8f9b          	addiw	t6,t6,1
   12178:	003ff793          	andi	a5,t6,3
   1217c:	01030313          	addi	t1,t1,16
   12180:	14078263          	beqz	a5,122c4 <_malloc_r+0x6b4>
   12184:	01833683          	ld	a3,24(t1)
   12188:	ca9ff06f          	j	11e30 <_malloc_r+0x220>
   1218c:	0107b503          	ld	a0,16(a5)
   12190:	00176893          	ori	a7,a4,1
   12194:	0117b423          	sd	a7,8(a5)
   12198:	00d53c23          	sd	a3,24(a0)
   1219c:	00a6b823          	sd	a0,16(a3)
   121a0:	00e78733          	add	a4,a5,a4
   121a4:	02e83423          	sd	a4,40(a6)
   121a8:	02e83023          	sd	a4,32(a6)
   121ac:	0015e693          	ori	a3,a1,1
   121b0:	00c78633          	add	a2,a5,a2
   121b4:	01c73c23          	sd	t3,24(a4)
   121b8:	01c73823          	sd	t3,16(a4)
   121bc:	00d73423          	sd	a3,8(a4)
   121c0:	00040513          	mv	a0,s0
   121c4:	00b63023          	sd	a1,0(a2)
   121c8:	00f13423          	sd	a5,8(sp)
   121cc:	32c000ef          	jal	124f8 <__malloc_unlock>
   121d0:	00813783          	ld	a5,8(sp)
   121d4:	01078513          	addi	a0,a5,16
   121d8:	addff06f          	j	11cb4 <_malloc_r+0xa4>
   121dc:	00375893          	srli	a7,a4,0x3
   121e0:	00189693          	slli	a3,a7,0x1
   121e4:	0026869b          	addiw	a3,a3,2
   121e8:	00369693          	slli	a3,a3,0x3
   121ec:	0008889b          	sext.w	a7,a7
   121f0:	a55ff06f          	j	11c44 <_malloc_r+0x34>
   121f4:	00678333          	add	t1,a5,t1
   121f8:	00833703          	ld	a4,8(t1)
   121fc:	00040513          	mv	a0,s0
   12200:	00f13423          	sd	a5,8(sp)
   12204:	00176713          	ori	a4,a4,1
   12208:	00e33423          	sd	a4,8(t1)
   1220c:	2ec000ef          	jal	124f8 <__malloc_unlock>
   12210:	00813783          	ld	a5,8(sp)
   12214:	01078513          	addi	a0,a5,16
   12218:	a9dff06f          	j	11cb4 <_malloc_r+0xa4>
   1221c:	00176613          	ori	a2,a4,1
   12220:	00c7b423          	sd	a2,8(a5)
   12224:	00e78733          	add	a4,a5,a4
   12228:	02e83423          	sd	a4,40(a6)
   1222c:	02e83023          	sd	a4,32(a6)
   12230:	0016e613          	ori	a2,a3,1
   12234:	00678333          	add	t1,a5,t1
   12238:	01c73c23          	sd	t3,24(a4)
   1223c:	01c73823          	sd	t3,16(a4)
   12240:	00c73423          	sd	a2,8(a4)
   12244:	00040513          	mv	a0,s0
   12248:	00d33023          	sd	a3,0(t1)
   1224c:	00f13423          	sd	a5,8(sp)
   12250:	2a8000ef          	jal	124f8 <__malloc_unlock>
   12254:	00813783          	ld	a5,8(sp)
   12258:	01078513          	addi	a0,a5,16
   1225c:	a59ff06f          	j	11cb4 <_malloc_r+0xa4>
   12260:	00635693          	srli	a3,t1,0x6
   12264:	00169513          	slli	a0,a3,0x1
   12268:	0725051b          	addiw	a0,a0,114
   1226c:	00351513          	slli	a0,a0,0x3
   12270:	0386861b          	addiw	a2,a3,56
   12274:	e99ff06f          	j	1210c <_malloc_r+0x4fc>
   12278:	15078e63          	beq	a5,a6,123d4 <_malloc_r+0x7c4>
   1227c:	01083783          	ld	a5,16(a6)
   12280:	0087b683          	ld	a3,8(a5)
   12284:	ffc6f693          	andi	a3,a3,-4
   12288:	40e68633          	sub	a2,a3,a4
   1228c:	00e6e663          	bltu	a3,a4,12298 <_malloc_r+0x688>
   12290:	02062693          	slti	a3,a2,32
   12294:	dc0684e3          	beqz	a3,1205c <_malloc_r+0x44c>
   12298:	00040513          	mv	a0,s0
   1229c:	25c000ef          	jal	124f8 <__malloc_unlock>
   122a0:	a11ff06f          	j	11cb0 <_malloc_r+0xa0>
   122a4:	05c7889b          	addiw	a7,a5,92
   122a8:	0018951b          	slliw	a0,a7,0x1
   122ac:	05b78e1b          	addiw	t3,a5,91
   122b0:	00351513          	slli	a0,a0,0x3
   122b4:	a5dff06f          	j	11d10 <_malloc_r+0x100>
   122b8:	010f3783          	ld	a5,16(t5)
   122bc:	fff8889b          	addiw	a7,a7,-1
   122c0:	23e79663          	bne	a5,t5,124ec <_malloc_r+0x8dc>
   122c4:	0038f793          	andi	a5,a7,3
   122c8:	ff0f0f13          	addi	t5,t5,-16
   122cc:	fe0796e3          	bnez	a5,122b8 <_malloc_r+0x6a8>
   122d0:	00883683          	ld	a3,8(a6)
   122d4:	fff54793          	not	a5,a0
   122d8:	00d7f7b3          	and	a5,a5,a3
   122dc:	00f83423          	sd	a5,8(a6)
   122e0:	00151513          	slli	a0,a0,0x1
   122e4:	fff50693          	addi	a3,a0,-1
   122e8:	baf6f6e3          	bgeu	a3,a5,11e94 <_malloc_r+0x284>
   122ec:	00f576b3          	and	a3,a0,a5
   122f0:	00069a63          	bnez	a3,12304 <_malloc_r+0x6f4>
   122f4:	00151513          	slli	a0,a0,0x1
   122f8:	00f576b3          	and	a3,a0,a5
   122fc:	004f8f9b          	addiw	t6,t6,4
   12300:	fe068ae3          	beqz	a3,122f4 <_malloc_r+0x6e4>
   12304:	000f8893          	mv	a7,t6
   12308:	b09ff06f          	j	11e10 <_malloc_r+0x200>
   1230c:	02058593          	addi	a1,a1,32
   12310:	bc9ff06f          	j	11ed8 <_malloc_r+0x2c8>
   12314:	4026561b          	sraiw	a2,a2,0x2
   12318:	00100313          	li	t1,1
   1231c:	00c31633          	sll	a2,t1,a2
   12320:	00c5e5b3          	or	a1,a1,a2
   12324:	00b83423          	sd	a1,8(a6)
   12328:	e11ff06f          	j	12138 <_malloc_r+0x528>
   1232c:	00b30633          	add	a2,t1,a1
   12330:	40c005b3          	neg	a1,a2
   12334:	03459593          	slli	a1,a1,0x34
   12338:	0345d593          	srli	a1,a1,0x34
   1233c:	00040513          	mv	a0,s0
   12340:	03c13c23          	sd	t3,56(sp)
   12344:	03013823          	sd	a6,48(sp)
   12348:	02f13423          	sd	a5,40(sp)
   1234c:	02e13023          	sd	a4,32(sp)
   12350:	01113c23          	sd	a7,24(sp)
   12354:	00613823          	sd	t1,16(sp)
   12358:	00c13423          	sd	a2,8(sp)
   1235c:	04b13023          	sd	a1,64(sp)
   12360:	600000ef          	jal	12960 <_sbrk_r>
   12364:	00050693          	mv	a3,a0
   12368:	fff00513          	li	a0,-1
   1236c:	01013303          	ld	t1,16(sp)
   12370:	01813883          	ld	a7,24(sp)
   12374:	02013703          	ld	a4,32(sp)
   12378:	02813783          	ld	a5,40(sp)
   1237c:	03013803          	ld	a6,48(sp)
   12380:	03813e03          	ld	t3,56(sp)
   12384:	0ea68463          	beq	a3,a0,1246c <_malloc_r+0x85c>
   12388:	04013583          	ld	a1,64(sp)
   1238c:	0005851b          	sext.w	a0,a1
   12390:	c49ff06f          	j	11fd8 <_malloc_r+0x3c8>
   12394:	05400613          	li	a2,84
   12398:	08d66063          	bltu	a2,a3,12418 <_malloc_r+0x808>
   1239c:	00c35693          	srli	a3,t1,0xc
   123a0:	00169513          	slli	a0,a3,0x1
   123a4:	0de5051b          	addiw	a0,a0,222
   123a8:	00351513          	slli	a0,a0,0x3
   123ac:	06e6861b          	addiw	a2,a3,110
   123b0:	d5dff06f          	j	1210c <_malloc_r+0x4fc>
   123b4:	15400693          	li	a3,340
   123b8:	08f6e063          	bltu	a3,a5,12438 <_malloc_r+0x828>
   123bc:	00f75793          	srli	a5,a4,0xf
   123c0:	0787889b          	addiw	a7,a5,120
   123c4:	0018951b          	slliw	a0,a7,0x1
   123c8:	07778e1b          	addiw	t3,a5,119
   123cc:	00351513          	slli	a0,a0,0x3
   123d0:	941ff06f          	j	11d10 <_malloc_r+0x100>
   123d4:	42818e13          	addi	t3,gp,1064 # 13c40 <__malloc_current_mallinfo>
   123d8:	000e2503          	lw	a0,0(t3)
   123dc:	00b5053b          	addw	a0,a0,a1
   123e0:	00ae2023          	sw	a0,0(t3)
   123e4:	b51ff06f          	j	11f34 <_malloc_r+0x324>
   123e8:	03431f13          	slli	t5,t1,0x34
   123ec:	b40f14e3          	bnez	t5,11f34 <_malloc_r+0x324>
   123f0:	01083303          	ld	t1,16(a6)
   123f4:	00b885b3          	add	a1,a7,a1
   123f8:	0015e693          	ori	a3,a1,1
   123fc:	00d33423          	sd	a3,8(t1)
   12400:	c35ff06f          	j	12034 <_malloc_r+0x424>
   12404:	1861bc23          	sd	t1,408(gp) # 139b0 <__malloc_sbrk_base>
   12408:	b45ff06f          	j	11f4c <_malloc_r+0x33c>
   1240c:	00100793          	li	a5,1
   12410:	00f33423          	sd	a5,8(t1)
   12414:	e85ff06f          	j	12298 <_malloc_r+0x688>
   12418:	15400613          	li	a2,340
   1241c:	08d66a63          	bltu	a2,a3,124b0 <_malloc_r+0x8a0>
   12420:	00f35693          	srli	a3,t1,0xf
   12424:	00169513          	slli	a0,a3,0x1
   12428:	0f05051b          	addiw	a0,a0,240
   1242c:	00351513          	slli	a0,a0,0x3
   12430:	0776861b          	addiw	a2,a3,119
   12434:	cd9ff06f          	j	1210c <_malloc_r+0x4fc>
   12438:	55400693          	li	a3,1364
   1243c:	08f6ea63          	bltu	a3,a5,124d0 <_malloc_r+0x8c0>
   12440:	01275793          	srli	a5,a4,0x12
   12444:	07d7889b          	addiw	a7,a5,125
   12448:	0018951b          	slliw	a0,a7,0x1
   1244c:	07c78e1b          	addiw	t3,a5,124
   12450:	00351513          	slli	a0,a0,0x3
   12454:	8bdff06f          	j	11d10 <_malloc_r+0x100>
   12458:	ff0e8e93          	addi	t4,t4,-16
   1245c:	01d606b3          	add	a3,a2,t4
   12460:	00000513          	li	a0,0
   12464:	00000593          	li	a1,0
   12468:	b71ff06f          	j	11fd8 <_malloc_r+0x3c8>
   1246c:	00813683          	ld	a3,8(sp)
   12470:	00000593          	li	a1,0
   12474:	00000513          	li	a0,0
   12478:	b61ff06f          	j	11fd8 <_malloc_r+0x3c8>
   1247c:	01078593          	addi	a1,a5,16
   12480:	00040513          	mv	a0,s0
   12484:	01c13c23          	sd	t3,24(sp)
   12488:	01013823          	sd	a6,16(sp)
   1248c:	00e13423          	sd	a4,8(sp)
   12490:	c7cff0ef          	jal	1190c <_free_r>
   12494:	01013803          	ld	a6,16(sp)
   12498:	01813e03          	ld	t3,24(sp)
   1249c:	00813703          	ld	a4,8(sp)
   124a0:	01083303          	ld	t1,16(a6)
   124a4:	000e2603          	lw	a2,0(t3)
   124a8:	00833683          	ld	a3,8(t1)
   124ac:	b89ff06f          	j	12034 <_malloc_r+0x424>
   124b0:	55400613          	li	a2,1364
   124b4:	02d66663          	bltu	a2,a3,124e0 <_malloc_r+0x8d0>
   124b8:	01235693          	srli	a3,t1,0x12
   124bc:	00169513          	slli	a0,a3,0x1
   124c0:	0fa5051b          	addiw	a0,a0,250
   124c4:	00351513          	slli	a0,a0,0x3
   124c8:	07c6861b          	addiw	a2,a3,124
   124cc:	c41ff06f          	j	1210c <_malloc_r+0x4fc>
   124d0:	7f000513          	li	a0,2032
   124d4:	07f00893          	li	a7,127
   124d8:	07e00e13          	li	t3,126
   124dc:	835ff06f          	j	11d10 <_malloc_r+0x100>
   124e0:	7f000513          	li	a0,2032
   124e4:	07e00613          	li	a2,126
   124e8:	c25ff06f          	j	1210c <_malloc_r+0x4fc>
   124ec:	00883783          	ld	a5,8(a6)
   124f0:	df1ff06f          	j	122e0 <_malloc_r+0x6d0>

00000000000124f4 <__malloc_lock>:
   124f4:	00008067          	ret

00000000000124f8 <__malloc_unlock>:
   124f8:	00008067          	ret

00000000000124fc <_fclose_r>:
   124fc:	fe010113          	addi	sp,sp,-32
   12500:	00113c23          	sd	ra,24(sp)
   12504:	01213023          	sd	s2,0(sp)
   12508:	02058863          	beqz	a1,12538 <_fclose_r+0x3c>
   1250c:	00813823          	sd	s0,16(sp)
   12510:	00913423          	sd	s1,8(sp)
   12514:	00058413          	mv	s0,a1
   12518:	00050493          	mv	s1,a0
   1251c:	00050663          	beqz	a0,12528 <_fclose_r+0x2c>
   12520:	04853783          	ld	a5,72(a0)
   12524:	0c078c63          	beqz	a5,125fc <_fclose_r+0x100>
   12528:	01041783          	lh	a5,16(s0)
   1252c:	02079263          	bnez	a5,12550 <_fclose_r+0x54>
   12530:	01013403          	ld	s0,16(sp)
   12534:	00813483          	ld	s1,8(sp)
   12538:	01813083          	ld	ra,24(sp)
   1253c:	00000913          	li	s2,0
   12540:	00090513          	mv	a0,s2
   12544:	00013903          	ld	s2,0(sp)
   12548:	02010113          	addi	sp,sp,32
   1254c:	00008067          	ret
   12550:	00040593          	mv	a1,s0
   12554:	00048513          	mv	a0,s1
   12558:	0b8000ef          	jal	12610 <__sflush_r>
   1255c:	05043783          	ld	a5,80(s0)
   12560:	00050913          	mv	s2,a0
   12564:	00078a63          	beqz	a5,12578 <_fclose_r+0x7c>
   12568:	03043583          	ld	a1,48(s0)
   1256c:	00048513          	mv	a0,s1
   12570:	000780e7          	jalr	a5
   12574:	06054463          	bltz	a0,125dc <_fclose_r+0xe0>
   12578:	01045783          	lhu	a5,16(s0)
   1257c:	0807f793          	andi	a5,a5,128
   12580:	06079663          	bnez	a5,125ec <_fclose_r+0xf0>
   12584:	05843583          	ld	a1,88(s0)
   12588:	00058c63          	beqz	a1,125a0 <_fclose_r+0xa4>
   1258c:	07440793          	addi	a5,s0,116
   12590:	00f58663          	beq	a1,a5,1259c <_fclose_r+0xa0>
   12594:	00048513          	mv	a0,s1
   12598:	b74ff0ef          	jal	1190c <_free_r>
   1259c:	04043c23          	sd	zero,88(s0)
   125a0:	07843583          	ld	a1,120(s0)
   125a4:	00058863          	beqz	a1,125b4 <_fclose_r+0xb8>
   125a8:	00048513          	mv	a0,s1
   125ac:	b60ff0ef          	jal	1190c <_free_r>
   125b0:	06043c23          	sd	zero,120(s0)
   125b4:	aa5fe0ef          	jal	11058 <__sfp_lock_acquire>
   125b8:	00041823          	sh	zero,16(s0)
   125bc:	aa1fe0ef          	jal	1105c <__sfp_lock_release>
   125c0:	01813083          	ld	ra,24(sp)
   125c4:	01013403          	ld	s0,16(sp)
   125c8:	00813483          	ld	s1,8(sp)
   125cc:	00090513          	mv	a0,s2
   125d0:	00013903          	ld	s2,0(sp)
   125d4:	02010113          	addi	sp,sp,32
   125d8:	00008067          	ret
   125dc:	01045783          	lhu	a5,16(s0)
   125e0:	fff00913          	li	s2,-1
   125e4:	0807f793          	andi	a5,a5,128
   125e8:	f8078ee3          	beqz	a5,12584 <_fclose_r+0x88>
   125ec:	01843583          	ld	a1,24(s0)
   125f0:	00048513          	mv	a0,s1
   125f4:	b18ff0ef          	jal	1190c <_free_r>
   125f8:	f8dff06f          	j	12584 <_fclose_r+0x88>
   125fc:	a39fe0ef          	jal	11034 <__sinit>
   12600:	f29ff06f          	j	12528 <_fclose_r+0x2c>

0000000000012604 <fclose>:
   12604:	00050593          	mv	a1,a0
   12608:	1901b503          	ld	a0,400(gp) # 139a8 <_impure_ptr>
   1260c:	ef1ff06f          	j	124fc <_fclose_r>

0000000000012610 <__sflush_r>:
   12610:	01059703          	lh	a4,16(a1)
   12614:	fd010113          	addi	sp,sp,-48
   12618:	02813023          	sd	s0,32(sp)
   1261c:	01313423          	sd	s3,8(sp)
   12620:	02113423          	sd	ra,40(sp)
   12624:	00877793          	andi	a5,a4,8
   12628:	00058413          	mv	s0,a1
   1262c:	00050993          	mv	s3,a0
   12630:	12079263          	bnez	a5,12754 <__sflush_r+0x144>
   12634:	000017b7          	lui	a5,0x1
   12638:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   1263c:	0085a683          	lw	a3,8(a1)
   12640:	00f767b3          	or	a5,a4,a5
   12644:	00f59823          	sh	a5,16(a1)
   12648:	18d05c63          	blez	a3,127e0 <__sflush_r+0x1d0>
   1264c:	04843803          	ld	a6,72(s0)
   12650:	0e080663          	beqz	a6,1273c <__sflush_r+0x12c>
   12654:	00913c23          	sd	s1,24(sp)
   12658:	03371693          	slli	a3,a4,0x33
   1265c:	0009a483          	lw	s1,0(s3)
   12660:	0009a023          	sw	zero,0(s3)
   12664:	1806ca63          	bltz	a3,127f8 <__sflush_r+0x1e8>
   12668:	03043583          	ld	a1,48(s0)
   1266c:	00000613          	li	a2,0
   12670:	00100693          	li	a3,1
   12674:	00098513          	mv	a0,s3
   12678:	000800e7          	jalr	a6
   1267c:	fff00793          	li	a5,-1
   12680:	00050613          	mv	a2,a0
   12684:	1af50c63          	beq	a0,a5,1283c <__sflush_r+0x22c>
   12688:	01041783          	lh	a5,16(s0)
   1268c:	04843803          	ld	a6,72(s0)
   12690:	0047f793          	andi	a5,a5,4
   12694:	00078e63          	beqz	a5,126b0 <__sflush_r+0xa0>
   12698:	00842703          	lw	a4,8(s0)
   1269c:	05843783          	ld	a5,88(s0)
   126a0:	40e60633          	sub	a2,a2,a4
   126a4:	00078663          	beqz	a5,126b0 <__sflush_r+0xa0>
   126a8:	07042783          	lw	a5,112(s0)
   126ac:	40f60633          	sub	a2,a2,a5
   126b0:	03043583          	ld	a1,48(s0)
   126b4:	00000693          	li	a3,0
   126b8:	00098513          	mv	a0,s3
   126bc:	000800e7          	jalr	a6
   126c0:	fff00713          	li	a4,-1
   126c4:	01041783          	lh	a5,16(s0)
   126c8:	12e51c63          	bne	a0,a4,12800 <__sflush_r+0x1f0>
   126cc:	0009a683          	lw	a3,0(s3)
   126d0:	01d00713          	li	a4,29
   126d4:	18d76263          	bltu	a4,a3,12858 <__sflush_r+0x248>
   126d8:	20400737          	lui	a4,0x20400
   126dc:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec081>
   126e0:	00d75733          	srl	a4,a4,a3
   126e4:	00177713          	andi	a4,a4,1
   126e8:	16070863          	beqz	a4,12858 <__sflush_r+0x248>
   126ec:	01843683          	ld	a3,24(s0)
   126f0:	fffff737          	lui	a4,0xfffff
   126f4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   126f8:	00e7f733          	and	a4,a5,a4
   126fc:	00e41823          	sh	a4,16(s0)
   12700:	00042423          	sw	zero,8(s0)
   12704:	00d43023          	sd	a3,0(s0)
   12708:	03379713          	slli	a4,a5,0x33
   1270c:	00075663          	bgez	a4,12718 <__sflush_r+0x108>
   12710:	0009a783          	lw	a5,0(s3)
   12714:	10078863          	beqz	a5,12824 <__sflush_r+0x214>
   12718:	05843583          	ld	a1,88(s0)
   1271c:	0099a023          	sw	s1,0(s3)
   12720:	10058a63          	beqz	a1,12834 <__sflush_r+0x224>
   12724:	07440793          	addi	a5,s0,116
   12728:	00f58663          	beq	a1,a5,12734 <__sflush_r+0x124>
   1272c:	00098513          	mv	a0,s3
   12730:	9dcff0ef          	jal	1190c <_free_r>
   12734:	01813483          	ld	s1,24(sp)
   12738:	04043c23          	sd	zero,88(s0)
   1273c:	02813083          	ld	ra,40(sp)
   12740:	02013403          	ld	s0,32(sp)
   12744:	00813983          	ld	s3,8(sp)
   12748:	00000513          	li	a0,0
   1274c:	03010113          	addi	sp,sp,48
   12750:	00008067          	ret
   12754:	01213823          	sd	s2,16(sp)
   12758:	0185b903          	ld	s2,24(a1)
   1275c:	08090a63          	beqz	s2,127f0 <__sflush_r+0x1e0>
   12760:	00913c23          	sd	s1,24(sp)
   12764:	0005b483          	ld	s1,0(a1)
   12768:	00377713          	andi	a4,a4,3
   1276c:	0125b023          	sd	s2,0(a1)
   12770:	412484bb          	subw	s1,s1,s2
   12774:	00000793          	li	a5,0
   12778:	00071463          	bnez	a4,12780 <__sflush_r+0x170>
   1277c:	0205a783          	lw	a5,32(a1)
   12780:	00f42623          	sw	a5,12(s0)
   12784:	00904863          	bgtz	s1,12794 <__sflush_r+0x184>
   12788:	0640006f          	j	127ec <__sflush_r+0x1dc>
   1278c:	00a90933          	add	s2,s2,a0
   12790:	04905e63          	blez	s1,127ec <__sflush_r+0x1dc>
   12794:	04043783          	ld	a5,64(s0)
   12798:	03043583          	ld	a1,48(s0)
   1279c:	00048693          	mv	a3,s1
   127a0:	00090613          	mv	a2,s2
   127a4:	00098513          	mv	a0,s3
   127a8:	000780e7          	jalr	a5
   127ac:	40a484bb          	subw	s1,s1,a0
   127b0:	fca04ee3          	bgtz	a0,1278c <__sflush_r+0x17c>
   127b4:	01045783          	lhu	a5,16(s0)
   127b8:	01013903          	ld	s2,16(sp)
   127bc:	0407e793          	ori	a5,a5,64
   127c0:	02813083          	ld	ra,40(sp)
   127c4:	00f41823          	sh	a5,16(s0)
   127c8:	02013403          	ld	s0,32(sp)
   127cc:	01813483          	ld	s1,24(sp)
   127d0:	00813983          	ld	s3,8(sp)
   127d4:	fff00513          	li	a0,-1
   127d8:	03010113          	addi	sp,sp,48
   127dc:	00008067          	ret
   127e0:	0705a683          	lw	a3,112(a1)
   127e4:	e6d044e3          	bgtz	a3,1264c <__sflush_r+0x3c>
   127e8:	f55ff06f          	j	1273c <__sflush_r+0x12c>
   127ec:	01813483          	ld	s1,24(sp)
   127f0:	01013903          	ld	s2,16(sp)
   127f4:	f49ff06f          	j	1273c <__sflush_r+0x12c>
   127f8:	09043603          	ld	a2,144(s0)
   127fc:	e95ff06f          	j	12690 <__sflush_r+0x80>
   12800:	01843683          	ld	a3,24(s0)
   12804:	fffff737          	lui	a4,0xfffff
   12808:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb87f>
   1280c:	00e7f733          	and	a4,a5,a4
   12810:	00e41823          	sh	a4,16(s0)
   12814:	00042423          	sw	zero,8(s0)
   12818:	00d43023          	sd	a3,0(s0)
   1281c:	03379713          	slli	a4,a5,0x33
   12820:	ee075ce3          	bgez	a4,12718 <__sflush_r+0x108>
   12824:	05843583          	ld	a1,88(s0)
   12828:	08a43823          	sd	a0,144(s0)
   1282c:	0099a023          	sw	s1,0(s3)
   12830:	ee059ae3          	bnez	a1,12724 <__sflush_r+0x114>
   12834:	01813483          	ld	s1,24(sp)
   12838:	f05ff06f          	j	1273c <__sflush_r+0x12c>
   1283c:	0009a783          	lw	a5,0(s3)
   12840:	e40784e3          	beqz	a5,12688 <__sflush_r+0x78>
   12844:	fe378713          	addi	a4,a5,-29
   12848:	00070c63          	beqz	a4,12860 <__sflush_r+0x250>
   1284c:	fea78793          	addi	a5,a5,-22
   12850:	00078863          	beqz	a5,12860 <__sflush_r+0x250>
   12854:	01045783          	lhu	a5,16(s0)
   12858:	0407e793          	ori	a5,a5,64
   1285c:	f65ff06f          	j	127c0 <__sflush_r+0x1b0>
   12860:	0099a023          	sw	s1,0(s3)
   12864:	01813483          	ld	s1,24(sp)
   12868:	ed5ff06f          	j	1273c <__sflush_r+0x12c>

000000000001286c <_fflush_r>:
   1286c:	00050793          	mv	a5,a0
   12870:	00050663          	beqz	a0,1287c <_fflush_r+0x10>
   12874:	04853703          	ld	a4,72(a0)
   12878:	00070e63          	beqz	a4,12894 <_fflush_r+0x28>
   1287c:	01059703          	lh	a4,16(a1)
   12880:	00071663          	bnez	a4,1288c <_fflush_r+0x20>
   12884:	00000513          	li	a0,0
   12888:	00008067          	ret
   1288c:	00078513          	mv	a0,a5
   12890:	d81ff06f          	j	12610 <__sflush_r>
   12894:	fe010113          	addi	sp,sp,-32
   12898:	00b13423          	sd	a1,8(sp)
   1289c:	00113c23          	sd	ra,24(sp)
   128a0:	00a13023          	sd	a0,0(sp)
   128a4:	f90fe0ef          	jal	11034 <__sinit>
   128a8:	00813583          	ld	a1,8(sp)
   128ac:	00013783          	ld	a5,0(sp)
   128b0:	01059703          	lh	a4,16(a1)
   128b4:	00070a63          	beqz	a4,128c8 <_fflush_r+0x5c>
   128b8:	01813083          	ld	ra,24(sp)
   128bc:	00078513          	mv	a0,a5
   128c0:	02010113          	addi	sp,sp,32
   128c4:	d4dff06f          	j	12610 <__sflush_r>
   128c8:	01813083          	ld	ra,24(sp)
   128cc:	00000513          	li	a0,0
   128d0:	02010113          	addi	sp,sp,32
   128d4:	00008067          	ret

00000000000128d8 <fflush>:
   128d8:	06050063          	beqz	a0,12938 <fflush+0x60>
   128dc:	00050593          	mv	a1,a0
   128e0:	1901b503          	ld	a0,400(gp) # 139a8 <_impure_ptr>
   128e4:	00050663          	beqz	a0,128f0 <fflush+0x18>
   128e8:	04853783          	ld	a5,72(a0)
   128ec:	00078c63          	beqz	a5,12904 <fflush+0x2c>
   128f0:	01059783          	lh	a5,16(a1)
   128f4:	00079663          	bnez	a5,12900 <fflush+0x28>
   128f8:	00000513          	li	a0,0
   128fc:	00008067          	ret
   12900:	d11ff06f          	j	12610 <__sflush_r>
   12904:	fe010113          	addi	sp,sp,-32
   12908:	00b13423          	sd	a1,8(sp)
   1290c:	00a13023          	sd	a0,0(sp)
   12910:	00113c23          	sd	ra,24(sp)
   12914:	f20fe0ef          	jal	11034 <__sinit>
   12918:	00813583          	ld	a1,8(sp)
   1291c:	00013503          	ld	a0,0(sp)
   12920:	01059783          	lh	a5,16(a1)
   12924:	02079863          	bnez	a5,12954 <fflush+0x7c>
   12928:	01813083          	ld	ra,24(sp)
   1292c:	00000513          	li	a0,0
   12930:	02010113          	addi	sp,sp,32
   12934:	00008067          	ret
   12938:	00013637          	lui	a2,0x13
   1293c:	000135b7          	lui	a1,0x13
   12940:	00013537          	lui	a0,0x13
   12944:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12948:	86c58593          	addi	a1,a1,-1940 # 1286c <_fflush_r>
   1294c:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12950:	f40fe06f          	j	11090 <_fwalk_sglue>
   12954:	01813083          	ld	ra,24(sp)
   12958:	02010113          	addi	sp,sp,32
   1295c:	cb5ff06f          	j	12610 <__sflush_r>

0000000000012960 <_sbrk_r>:
   12960:	fe010113          	addi	sp,sp,-32
   12964:	00813823          	sd	s0,16(sp)
   12968:	00913423          	sd	s1,8(sp)
   1296c:	00050493          	mv	s1,a0
   12970:	00058513          	mv	a0,a1
   12974:	00113c23          	sd	ra,24(sp)
   12978:	1a01a823          	sw	zero,432(gp) # 139c8 <errno>
   1297c:	228000ef          	jal	12ba4 <_sbrk>
   12980:	fff00793          	li	a5,-1
   12984:	00f50c63          	beq	a0,a5,1299c <_sbrk_r+0x3c>
   12988:	01813083          	ld	ra,24(sp)
   1298c:	01013403          	ld	s0,16(sp)
   12990:	00813483          	ld	s1,8(sp)
   12994:	02010113          	addi	sp,sp,32
   12998:	00008067          	ret
   1299c:	1b01a783          	lw	a5,432(gp) # 139c8 <errno>
   129a0:	fe0784e3          	beqz	a5,12988 <_sbrk_r+0x28>
   129a4:	01813083          	ld	ra,24(sp)
   129a8:	01013403          	ld	s0,16(sp)
   129ac:	00f4a023          	sw	a5,0(s1)
   129b0:	00813483          	ld	s1,8(sp)
   129b4:	02010113          	addi	sp,sp,32
   129b8:	00008067          	ret

00000000000129bc <__libc_fini_array>:
   129bc:	fe010113          	addi	sp,sp,-32
   129c0:	00813823          	sd	s0,16(sp)
   129c4:	000137b7          	lui	a5,0x13
   129c8:	00013437          	lui	s0,0x13
   129cc:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   129d0:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   129d4:	408787b3          	sub	a5,a5,s0
   129d8:	00913423          	sd	s1,8(sp)
   129dc:	00113c23          	sd	ra,24(sp)
   129e0:	4037d493          	srai	s1,a5,0x3
   129e4:	02048063          	beqz	s1,12a04 <__libc_fini_array+0x48>
   129e8:	ff840413          	addi	s0,s0,-8
   129ec:	00f40433          	add	s0,s0,a5
   129f0:	00043783          	ld	a5,0(s0)
   129f4:	fff48493          	addi	s1,s1,-1
   129f8:	ff840413          	addi	s0,s0,-8
   129fc:	000780e7          	jalr	a5
   12a00:	fe0498e3          	bnez	s1,129f0 <__libc_fini_array+0x34>
   12a04:	01813083          	ld	ra,24(sp)
   12a08:	01013403          	ld	s0,16(sp)
   12a0c:	00813483          	ld	s1,8(sp)
   12a10:	02010113          	addi	sp,sp,32
   12a14:	00008067          	ret

0000000000012a18 <__register_exitproc>:
   12a18:	1b81b783          	ld	a5,440(gp) # 139d0 <__atexit>
   12a1c:	04078e63          	beqz	a5,12a78 <__register_exitproc+0x60>
   12a20:	0087a703          	lw	a4,8(a5)
   12a24:	01f00813          	li	a6,31
   12a28:	08e84263          	blt	a6,a4,12aac <__register_exitproc+0x94>
   12a2c:	02050863          	beqz	a0,12a5c <__register_exitproc+0x44>
   12a30:	00371813          	slli	a6,a4,0x3
   12a34:	01078833          	add	a6,a5,a6
   12a38:	10c83823          	sd	a2,272(a6)
   12a3c:	3107a883          	lw	a7,784(a5)
   12a40:	00100613          	li	a2,1
   12a44:	00e6163b          	sllw	a2,a2,a4
   12a48:	00c8e8b3          	or	a7,a7,a2
   12a4c:	3117a823          	sw	a7,784(a5)
   12a50:	20d83823          	sd	a3,528(a6)
   12a54:	00200693          	li	a3,2
   12a58:	02d50663          	beq	a0,a3,12a84 <__register_exitproc+0x6c>
   12a5c:	0017069b          	addiw	a3,a4,1
   12a60:	00371713          	slli	a4,a4,0x3
   12a64:	00d7a423          	sw	a3,8(a5)
   12a68:	00e787b3          	add	a5,a5,a4
   12a6c:	00b7b823          	sd	a1,16(a5)
   12a70:	00000513          	li	a0,0
   12a74:	00008067          	ret
   12a78:	45018793          	addi	a5,gp,1104 # 13c68 <__atexit0>
   12a7c:	1af1bc23          	sd	a5,440(gp) # 139d0 <__atexit>
   12a80:	fa1ff06f          	j	12a20 <__register_exitproc+0x8>
   12a84:	3147a683          	lw	a3,788(a5)
   12a88:	00000513          	li	a0,0
   12a8c:	00d66633          	or	a2,a2,a3
   12a90:	0017069b          	addiw	a3,a4,1
   12a94:	00371713          	slli	a4,a4,0x3
   12a98:	30c7aa23          	sw	a2,788(a5)
   12a9c:	00d7a423          	sw	a3,8(a5)
   12aa0:	00e787b3          	add	a5,a5,a4
   12aa4:	00b7b823          	sd	a1,16(a5)
   12aa8:	00008067          	ret
   12aac:	fff00513          	li	a0,-1
   12ab0:	00008067          	ret

0000000000012ab4 <_close>:
   12ab4:	03900893          	li	a7,57
   12ab8:	00000073          	ecall
   12abc:	00054663          	bltz	a0,12ac8 <_close+0x14>
   12ac0:	0005051b          	sext.w	a0,a0
   12ac4:	00008067          	ret
   12ac8:	fe010113          	addi	sp,sp,-32
   12acc:	00113c23          	sd	ra,24(sp)
   12ad0:	00a13423          	sd	a0,8(sp)
   12ad4:	188000ef          	jal	12c5c <__errno>
   12ad8:	00813783          	ld	a5,8(sp)
   12adc:	01813083          	ld	ra,24(sp)
   12ae0:	40f007bb          	negw	a5,a5
   12ae4:	00f52023          	sw	a5,0(a0)
   12ae8:	fff00513          	li	a0,-1
   12aec:	02010113          	addi	sp,sp,32
   12af0:	00008067          	ret

0000000000012af4 <_exit>:
   12af4:	05d00893          	li	a7,93
   12af8:	00000073          	ecall
   12afc:	00054463          	bltz	a0,12b04 <_exit+0x10>
   12b00:	0000006f          	j	12b00 <_exit+0xc>
   12b04:	fe010113          	addi	sp,sp,-32
   12b08:	00113c23          	sd	ra,24(sp)
   12b0c:	00a13423          	sd	a0,8(sp)
   12b10:	14c000ef          	jal	12c5c <__errno>
   12b14:	00813783          	ld	a5,8(sp)
   12b18:	40f007bb          	negw	a5,a5
   12b1c:	00f52023          	sw	a5,0(a0)
   12b20:	0000006f          	j	12b20 <_exit+0x2c>

0000000000012b24 <_lseek>:
   12b24:	03e00893          	li	a7,62
   12b28:	00000073          	ecall
   12b2c:	00054463          	bltz	a0,12b34 <_lseek+0x10>
   12b30:	00008067          	ret
   12b34:	fe010113          	addi	sp,sp,-32
   12b38:	00113c23          	sd	ra,24(sp)
   12b3c:	00a13423          	sd	a0,8(sp)
   12b40:	11c000ef          	jal	12c5c <__errno>
   12b44:	00813783          	ld	a5,8(sp)
   12b48:	01813083          	ld	ra,24(sp)
   12b4c:	40f007bb          	negw	a5,a5
   12b50:	00f52023          	sw	a5,0(a0)
   12b54:	fff00793          	li	a5,-1
   12b58:	00078513          	mv	a0,a5
   12b5c:	02010113          	addi	sp,sp,32
   12b60:	00008067          	ret

0000000000012b64 <_read>:
   12b64:	03f00893          	li	a7,63
   12b68:	00000073          	ecall
   12b6c:	00054463          	bltz	a0,12b74 <_read+0x10>
   12b70:	00008067          	ret
   12b74:	fe010113          	addi	sp,sp,-32
   12b78:	00113c23          	sd	ra,24(sp)
   12b7c:	00a13423          	sd	a0,8(sp)
   12b80:	0dc000ef          	jal	12c5c <__errno>
   12b84:	00813783          	ld	a5,8(sp)
   12b88:	01813083          	ld	ra,24(sp)
   12b8c:	40f007bb          	negw	a5,a5
   12b90:	00f52023          	sw	a5,0(a0)
   12b94:	fff00793          	li	a5,-1
   12b98:	00078513          	mv	a0,a5
   12b9c:	02010113          	addi	sp,sp,32
   12ba0:	00008067          	ret

0000000000012ba4 <_sbrk>:
   12ba4:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   12ba8:	ff010113          	addi	sp,sp,-16
   12bac:	00113423          	sd	ra,8(sp)
   12bb0:	00050713          	mv	a4,a0
   12bb4:	02079063          	bnez	a5,12bd4 <_sbrk+0x30>
   12bb8:	0d600893          	li	a7,214
   12bbc:	00000513          	li	a0,0
   12bc0:	00000073          	ecall
   12bc4:	fff00793          	li	a5,-1
   12bc8:	02f50c63          	beq	a0,a5,12c00 <_sbrk+0x5c>
   12bcc:	00050793          	mv	a5,a0
   12bd0:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   12bd4:	00f70533          	add	a0,a4,a5
   12bd8:	0d600893          	li	a7,214
   12bdc:	00000073          	ecall
   12be0:	1d81b783          	ld	a5,472(gp) # 139f0 <heap_end.0>
   12be4:	00f70733          	add	a4,a4,a5
   12be8:	00e51c63          	bne	a0,a4,12c00 <_sbrk+0x5c>
   12bec:	00813083          	ld	ra,8(sp)
   12bf0:	1ca1bc23          	sd	a0,472(gp) # 139f0 <heap_end.0>
   12bf4:	00078513          	mv	a0,a5
   12bf8:	01010113          	addi	sp,sp,16
   12bfc:	00008067          	ret
   12c00:	05c000ef          	jal	12c5c <__errno>
   12c04:	00813083          	ld	ra,8(sp)
   12c08:	00c00793          	li	a5,12
   12c0c:	00f52023          	sw	a5,0(a0)
   12c10:	fff00513          	li	a0,-1
   12c14:	01010113          	addi	sp,sp,16
   12c18:	00008067          	ret

0000000000012c1c <_write>:
   12c1c:	04000893          	li	a7,64
   12c20:	00000073          	ecall
   12c24:	00054463          	bltz	a0,12c2c <_write+0x10>
   12c28:	00008067          	ret
   12c2c:	fe010113          	addi	sp,sp,-32
   12c30:	00113c23          	sd	ra,24(sp)
   12c34:	00a13423          	sd	a0,8(sp)
   12c38:	024000ef          	jal	12c5c <__errno>
   12c3c:	00813783          	ld	a5,8(sp)
   12c40:	01813083          	ld	ra,24(sp)
   12c44:	40f007bb          	negw	a5,a5
   12c48:	00f52023          	sw	a5,0(a0)
   12c4c:	fff00793          	li	a5,-1
   12c50:	00078513          	mv	a0,a5
   12c54:	02010113          	addi	sp,sp,32
   12c58:	00008067          	ret

0000000000012c5c <__errno>:
   12c5c:	1901b503          	ld	a0,400(gp) # 139a8 <_impure_ptr>
   12c60:	00008067          	ret

Disassembly of section .rodata:

0000000000012c68 <.rodata>:
   12c68:	6854                	.insn	2, 0x6854
   12c6a:	2065                	.insn	2, 0x2065
   12c6c:	746e6f63          	bltu	t3,t1,133ca <__malloc_av_+0x242>
   12c70:	6e65                	.insn	2, 0x6e65
   12c72:	2074                	.insn	2, 0x2074
   12c74:	4120666f          	jal	a2,19086 <__BSS_END__+0x5106>
   12c78:	6920                	.insn	2, 0x6920
   12c7a:	0a203a73          	.insn	4, 0x0a203a73
   12c7e:	0000                	.insn	2, 0x0000
   12c80:	0020                	.insn	2, 0x0020
   12c82:	0000                	.insn	2, 0x0000
   12c84:	0000                	.insn	2, 0x0000
   12c86:	0000                	.insn	2, 0x0000
   12c88:	000a                	.insn	2, 0x000a
   12c8a:	0000                	.insn	2, 0x0000
   12c8c:	0000                	.insn	2, 0x0000
   12c8e:	0000                	.insn	2, 0x0000
   12c90:	6854                	.insn	2, 0x6854
   12c92:	2065                	.insn	2, 0x2065
   12c94:	746e6f63          	bltu	t3,t1,133f2 <__malloc_av_+0x26a>
   12c98:	6e65                	.insn	2, 0x6e65
   12c9a:	2074                	.insn	2, 0x2074
   12c9c:	4220666f          	jal	a2,190be <__BSS_END__+0x513e>
   12ca0:	6920                	.insn	2, 0x6920
   12ca2:	0a203a73          	.insn	4, 0x0a203a73
   12ca6:	0000                	.insn	2, 0x0000
   12ca8:	6854                	.insn	2, 0x6854
   12caa:	2065                	.insn	2, 0x2065
   12cac:	746e6f63          	bltu	t3,t1,1340a <__malloc_av_+0x282>
   12cb0:	6e65                	.insn	2, 0x6e65
   12cb2:	2074                	.insn	2, 0x2074
   12cb4:	4320666f          	jal	a2,190e6 <__BSS_END__+0x5166>
   12cb8:	413d                	.insn	2, 0x413d
   12cba:	422a                	.insn	2, 0x422a
   12cbc:	6920                	.insn	2, 0x6920
   12cbe:	0a203a73          	.insn	4, 0x0a203a73
	...

Disassembly of section .eh_frame:

0000000000012cc8 <__EH_FRAME_BEGIN__>:
   12cc8:	0000                	.insn	2, 0x0000
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

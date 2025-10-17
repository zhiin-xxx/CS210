
build/kernel.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000020000 <__trap_entry>:
   20000:	ee810113          	addi	sp,sp,-280
   20004:	00113423          	sd	ra,8(sp)
   20008:	00313c23          	sd	gp,24(sp)
   2000c:	02413023          	sd	tp,32(sp)
   20010:	02513423          	sd	t0,40(sp)
   20014:	02613823          	sd	t1,48(sp)
   20018:	02713c23          	sd	t2,56(sp)
   2001c:	04813023          	sd	s0,64(sp)
   20020:	04913423          	sd	s1,72(sp)
   20024:	04a13823          	sd	a0,80(sp)
   20028:	04b13c23          	sd	a1,88(sp)
   2002c:	06c13023          	sd	a2,96(sp)
   20030:	06d13423          	sd	a3,104(sp)
   20034:	06e13823          	sd	a4,112(sp)
   20038:	06f13c23          	sd	a5,120(sp)
   2003c:	09013023          	sd	a6,128(sp)
   20040:	09113423          	sd	a7,136(sp)
   20044:	09213823          	sd	s2,144(sp)
   20048:	09313c23          	sd	s3,152(sp)
   2004c:	0b413023          	sd	s4,160(sp)
   20050:	0b513423          	sd	s5,168(sp)
   20054:	0b613823          	sd	s6,176(sp)
   20058:	0b713c23          	sd	s7,184(sp)
   2005c:	0d813023          	sd	s8,192(sp)
   20060:	0d913423          	sd	s9,200(sp)
   20064:	0da13823          	sd	s10,208(sp)
   20068:	0db13c23          	sd	s11,216(sp)
   2006c:	0fc13023          	sd	t3,224(sp)
   20070:	0fd13423          	sd	t4,232(sp)
   20074:	0fe13823          	sd	t5,240(sp)
   20078:	0ff13c23          	sd	t6,248(sp)
   2007c:	342022f3          	csrr	t0,mcause
   20080:	30002373          	csrr	t1,mstatus
   20084:	341023f3          	csrr	t2,mepc
   20088:	10513023          	sd	t0,256(sp)
   2008c:	10613423          	sd	t1,264(sp)
   20090:	10713823          	sd	t2,272(sp)
   20094:	00010513          	mv	a0,sp
   20098:	098000ef          	jal	20130 <trap_handler>
   2009c:	00050113          	mv	sp,a0
   200a0:	10813303          	ld	t1,264(sp)
   200a4:	11013383          	ld	t2,272(sp)
   200a8:	30031073          	csrw	mstatus,t1
   200ac:	34139073          	csrw	mepc,t2
   200b0:	00813083          	ld	ra,8(sp)
   200b4:	01813183          	ld	gp,24(sp)
   200b8:	02013203          	ld	tp,32(sp)
   200bc:	02813283          	ld	t0,40(sp)
   200c0:	03013303          	ld	t1,48(sp)
   200c4:	03813383          	ld	t2,56(sp)
   200c8:	04013403          	ld	s0,64(sp)
   200cc:	04813483          	ld	s1,72(sp)
   200d0:	05013503          	ld	a0,80(sp)
   200d4:	05813583          	ld	a1,88(sp)
   200d8:	06013603          	ld	a2,96(sp)
   200dc:	06813683          	ld	a3,104(sp)
   200e0:	07013703          	ld	a4,112(sp)
   200e4:	07813783          	ld	a5,120(sp)
   200e8:	08013803          	ld	a6,128(sp)
   200ec:	08813883          	ld	a7,136(sp)
   200f0:	09013903          	ld	s2,144(sp)
   200f4:	09813983          	ld	s3,152(sp)
   200f8:	0a013a03          	ld	s4,160(sp)
   200fc:	0a813a83          	ld	s5,168(sp)
   20100:	0b013b03          	ld	s6,176(sp)
   20104:	0b813b83          	ld	s7,184(sp)
   20108:	0c013c03          	ld	s8,192(sp)
   2010c:	0c813c83          	ld	s9,200(sp)
   20110:	0d013d03          	ld	s10,208(sp)
   20114:	0d813d83          	ld	s11,216(sp)
   20118:	0e013e03          	ld	t3,224(sp)
   2011c:	0e813e83          	ld	t4,232(sp)
   20120:	0f013f03          	ld	t5,240(sp)
   20124:	0f813f83          	ld	t6,248(sp)
   20128:	11810113          	addi	sp,sp,280
   2012c:	30200073          	mret

0000000000020130 <trap_handler>:
   20130:	fc010113          	addi	sp,sp,-64
   20134:	02113c23          	sd	ra,56(sp)
   20138:	02813823          	sd	s0,48(sp)
   2013c:	04010413          	addi	s0,sp,64
   20140:	fca43423          	sd	a0,-56(s0)
   20144:	fc843783          	ld	a5,-56(s0)
   20148:	1007b783          	ld	a5,256(a5)
   2014c:	fef42223          	sw	a5,-28(s0)
   20150:	fe442783          	lw	a5,-28(s0)
   20154:	0007871b          	sext.w	a4,a5
   20158:	00b00793          	li	a5,11
   2015c:	0af71863          	bne	a4,a5,2020c <trap_handler+0xdc>
   20160:	fc843783          	ld	a5,-56(s0)
   20164:	0507b783          	ld	a5,80(a5)
   20168:	fcf43c23          	sd	a5,-40(s0)
   2016c:	fc843783          	ld	a5,-56(s0)
   20170:	0587b783          	ld	a5,88(a5)
   20174:	fcf42a23          	sw	a5,-44(s0)
   20178:	fd843783          	ld	a5,-40(s0)
   2017c:	0007a783          	lw	a5,0(a5)
   20180:	fef42623          	sw	a5,-20(s0)
   20184:	00100793          	li	a5,1
   20188:	fef42423          	sw	a5,-24(s0)
   2018c:	0580006f          	j	201e4 <trap_handler+0xb4>
   20190:	fe842783          	lw	a5,-24(s0)
   20194:	00279793          	slli	a5,a5,0x2
   20198:	fd843703          	ld	a4,-40(s0)
   2019c:	00f707b3          	add	a5,a4,a5
   201a0:	0007a783          	lw	a5,0(a5)
   201a4:	fcf42823          	sw	a5,-48(s0)
   201a8:	fd042783          	lw	a5,-48(s0)
   201ac:	00078713          	mv	a4,a5
   201b0:	fec42783          	lw	a5,-20(s0)
   201b4:	0007071b          	sext.w	a4,a4
   201b8:	0007879b          	sext.w	a5,a5
   201bc:	00f75e63          	bge	a4,a5,201d8 <trap_handler+0xa8>
   201c0:	fe842783          	lw	a5,-24(s0)
   201c4:	00279793          	slli	a5,a5,0x2
   201c8:	fd843703          	ld	a4,-40(s0)
   201cc:	00f707b3          	add	a5,a4,a5
   201d0:	0007a783          	lw	a5,0(a5)
   201d4:	fef42623          	sw	a5,-20(s0)
   201d8:	fe842783          	lw	a5,-24(s0)
   201dc:	0017879b          	addiw	a5,a5,1
   201e0:	fef42423          	sw	a5,-24(s0)
   201e4:	fe842783          	lw	a5,-24(s0)
   201e8:	00078713          	mv	a4,a5
   201ec:	fd442783          	lw	a5,-44(s0)
   201f0:	0007071b          	sext.w	a4,a4
   201f4:	0007879b          	sext.w	a5,a5
   201f8:	f8f74ce3          	blt	a4,a5,20190 <trap_handler+0x60>
   201fc:	fec42703          	lw	a4,-20(s0)
   20200:	fc843783          	ld	a5,-56(s0)
   20204:	04e7b823          	sd	a4,80(a5)
   20208:	0080006f          	j	20210 <trap_handler+0xe0>
   2020c:	00000013          	nop
   20210:	fc843783          	ld	a5,-56(s0)
   20214:	00078513          	mv	a0,a5
   20218:	03813083          	ld	ra,56(sp)
   2021c:	03013403          	ld	s0,48(sp)
   20220:	04010113          	addi	sp,sp,64
   20224:	00008067          	ret

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	4e41                	.insn	2, 0x4e41
   2:	0000                	.insn	2, 0x0000
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <__trap_entry-0x1ffec>
   c:	0044                	.insn	2, 0x0044
   e:	0000                	.insn	2, 0x0000
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3676                	.insn	2, 0x3676
  16:	6934                	.insn	2, 0x6934
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	.insn	2, 0x5f31
  1c:	326d                	.insn	2, 0x326d
  1e:	3070                	.insn	2, 0x3070
  20:	615f 7032 5f31      	.insn	6, 0x5f317032615f
  26:	697a                	.insn	2, 0x697a
  28:	32727363          	bgeu	tp,t2,34e <__trap_entry-0x1fcb2>
  2c:	3070                	.insn	2, 0x3070
  2e:	7a5f 6d6d 6c75      	.insn	6, 0x6c756d6d7a5f
  34:	7031                	.insn	2, 0x7031
  36:	5f30                	.insn	2, 0x5f30
  38:	617a                	.insn	2, 0x617a
  3a:	6d61                	.insn	2, 0x6d61
  3c:	3070316f          	jal	sp,3b42 <__trap_entry-0x1c4be>
  40:	7a5f 6c61 7372      	.insn	6, 0x73726c617a5f
  46:	30703163          	.insn	4, 0x30703163
  4a:	0800                	.insn	2, 0x0800
  4c:	0a01                	.insn	2, 0x0a01
  4e:	0b                	.byte	0x0b

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	.insn	4, 0x3a434347
   4:	2820                	.insn	2, 0x2820
   6:	33623167          	.insn	4, 0x33623167
   a:	3630                	.insn	2, 0x3630
   c:	3330                	.insn	2, 0x3330
   e:	6139                	.insn	2, 0x6139
  10:	20293463          	.insn	4, 0x20293463
  14:	3531                	.insn	2, 0x3531
  16:	312e                	.insn	2, 0x312e
  18:	302e                	.insn	2, 0x302e
	...

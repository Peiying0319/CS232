
msb:     file format elf32-i386


Disassembly of section .init:

000003bc <_init>:
_init():
 3bc:	53                   	push   %ebx
 3bd:	83 ec 08             	sub    $0x8,%esp
 3c0:	e8 bb 00 00 00       	call   480 <__x86.get_pc_thunk.bx>
 3c5:	81 c3 0b 1c 00 00    	add    $0x1c0b,%ebx
 3cb:	8b 83 24 00 00 00    	mov    0x24(%ebx),%eax
 3d1:	85 c0                	test   %eax,%eax
 3d3:	74 05                	je     3da <_init+0x1e>
 3d5:	e8 5e 00 00 00       	call   438 <__gmon_start__@plt>
 3da:	83 c4 08             	add    $0x8,%esp
 3dd:	5b                   	pop    %ebx
 3de:	c3                   	ret    

Disassembly of section .plt:

000003e0 <.plt>:
 3e0:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 3e6:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 3ec:	00 00                	add    %al,(%eax)
	...

000003f0 <printf@plt>:
 3f0:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 3f6:	68 00 00 00 00       	push   $0x0
 3fb:	e9 e0 ff ff ff       	jmp    3e0 <.plt>

00000400 <__libc_start_main@plt>:
 400:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 406:	68 08 00 00 00       	push   $0x8
 40b:	e9 d0 ff ff ff       	jmp    3e0 <.plt>

00000410 <putchar@plt>:
 410:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 416:	68 10 00 00 00       	push   $0x10
 41b:	e9 c0 ff ff ff       	jmp    3e0 <.plt>

00000420 <atoi@plt>:
 420:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 426:	68 18 00 00 00       	push   $0x18
 42b:	e9 b0 ff ff ff       	jmp    3e0 <.plt>

Disassembly of section .plt.got:

00000430 <__cxa_finalize@plt>:
 430:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
 436:	66 90                	xchg   %ax,%ax

00000438 <__gmon_start__@plt>:
 438:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
 43e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000440 <_start>:
_start():
 440:	31 ed                	xor    %ebp,%ebp
 442:	5e                   	pop    %esi
 443:	89 e1                	mov    %esp,%ecx
 445:	83 e4 f0             	and    $0xfffffff0,%esp
 448:	50                   	push   %eax
 449:	54                   	push   %esp
 44a:	52                   	push   %edx
 44b:	e8 22 00 00 00       	call   472 <_start+0x32>
 450:	81 c3 80 1b 00 00    	add    $0x1b80,%ebx
 456:	8d 83 50 e8 ff ff    	lea    -0x17b0(%ebx),%eax
 45c:	50                   	push   %eax
 45d:	8d 83 f0 e7 ff ff    	lea    -0x1810(%ebx),%eax
 463:	50                   	push   %eax
 464:	51                   	push   %ecx
 465:	56                   	push   %esi
 466:	ff b3 28 00 00 00    	pushl  0x28(%ebx)
 46c:	e8 8f ff ff ff       	call   400 <__libc_start_main@plt>
 471:	f4                   	hlt    
 472:	8b 1c 24             	mov    (%esp),%ebx
 475:	c3                   	ret    
 476:	66 90                	xchg   %ax,%ax
 478:	66 90                	xchg   %ax,%ax
 47a:	66 90                	xchg   %ax,%ax
 47c:	66 90                	xchg   %ax,%ax
 47e:	66 90                	xchg   %ax,%ax

00000480 <__x86.get_pc_thunk.bx>:
__x86.get_pc_thunk.bx():
 480:	8b 1c 24             	mov    (%esp),%ebx
 483:	c3                   	ret    
 484:	66 90                	xchg   %ax,%ax
 486:	66 90                	xchg   %ax,%ax
 488:	66 90                	xchg   %ax,%ax
 48a:	66 90                	xchg   %ax,%ax
 48c:	66 90                	xchg   %ax,%ax
 48e:	66 90                	xchg   %ax,%ax

00000490 <deregister_tm_clones>:
deregister_tm_clones():
 490:	e8 e4 00 00 00       	call   579 <__x86.get_pc_thunk.dx>
 495:	81 c2 3b 1b 00 00    	add    $0x1b3b,%edx
 49b:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
 4a1:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
 4a7:	39 c8                	cmp    %ecx,%eax
 4a9:	74 1d                	je     4c8 <deregister_tm_clones+0x38>
 4ab:	8b 82 1c 00 00 00    	mov    0x1c(%edx),%eax
 4b1:	85 c0                	test   %eax,%eax
 4b3:	74 13                	je     4c8 <deregister_tm_clones+0x38>
 4b5:	55                   	push   %ebp
 4b6:	89 e5                	mov    %esp,%ebp
 4b8:	83 ec 14             	sub    $0x14,%esp
 4bb:	51                   	push   %ecx
 4bc:	ff d0                	call   *%eax
 4be:	83 c4 10             	add    $0x10,%esp
 4c1:	c9                   	leave  
 4c2:	c3                   	ret    
 4c3:	90                   	nop
 4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4c8:	f3 c3                	repz ret 
 4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004d0 <register_tm_clones>:
register_tm_clones():
 4d0:	e8 a4 00 00 00       	call   579 <__x86.get_pc_thunk.dx>
 4d5:	81 c2 fb 1a 00 00    	add    $0x1afb,%edx
 4db:	55                   	push   %ebp
 4dc:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
 4e2:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
 4e8:	29 c8                	sub    %ecx,%eax
 4ea:	89 e5                	mov    %esp,%ebp
 4ec:	53                   	push   %ebx
 4ed:	c1 f8 02             	sar    $0x2,%eax
 4f0:	89 c3                	mov    %eax,%ebx
 4f2:	83 ec 04             	sub    $0x4,%esp
 4f5:	c1 eb 1f             	shr    $0x1f,%ebx
 4f8:	01 d8                	add    %ebx,%eax
 4fa:	d1 f8                	sar    %eax
 4fc:	74 14                	je     512 <register_tm_clones+0x42>
 4fe:	8b 92 2c 00 00 00    	mov    0x2c(%edx),%edx
 504:	85 d2                	test   %edx,%edx
 506:	74 0a                	je     512 <register_tm_clones+0x42>
 508:	83 ec 08             	sub    $0x8,%esp
 50b:	50                   	push   %eax
 50c:	51                   	push   %ecx
 50d:	ff d2                	call   *%edx
 50f:	83 c4 10             	add    $0x10,%esp
 512:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 515:	c9                   	leave  
 516:	c3                   	ret    
 517:	89 f6                	mov    %esi,%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <__do_global_dtors_aux>:
__do_global_dtors_aux():
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	53                   	push   %ebx
 524:	e8 57 ff ff ff       	call   480 <__x86.get_pc_thunk.bx>
 529:	81 c3 a7 1a 00 00    	add    $0x1aa7,%ebx
 52f:	83 ec 04             	sub    $0x4,%esp
 532:	80 bb 38 00 00 00 00 	cmpb   $0x0,0x38(%ebx)
 539:	75 27                	jne    562 <__do_global_dtors_aux+0x42>
 53b:	8b 83 20 00 00 00    	mov    0x20(%ebx),%eax
 541:	85 c0                	test   %eax,%eax
 543:	74 11                	je     556 <__do_global_dtors_aux+0x36>
 545:	83 ec 0c             	sub    $0xc,%esp
 548:	ff b3 34 00 00 00    	pushl  0x34(%ebx)
 54e:	e8 dd fe ff ff       	call   430 <__cxa_finalize@plt>
 553:	83 c4 10             	add    $0x10,%esp
 556:	e8 35 ff ff ff       	call   490 <deregister_tm_clones>
 55b:	c6 83 38 00 00 00 01 	movb   $0x1,0x38(%ebx)
 562:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 565:	c9                   	leave  
 566:	c3                   	ret    
 567:	89 f6                	mov    %esi,%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000570 <frame_dummy>:
frame_dummy():
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	5d                   	pop    %ebp
 574:	e9 57 ff ff ff       	jmp    4d0 <register_tm_clones>

00000579 <__x86.get_pc_thunk.dx>:
__x86.get_pc_thunk.dx():
 579:	8b 14 24             	mov    (%esp),%edx
 57c:	c3                   	ret    

0000057d <main>:
main():
/home/jdoe/CS232/lab7/task1/msb.c:9
int msb(int x);
void print_binary(int n);

//Please do not modify main().
//All your changes should be made within msb()
int main(int argc, char **argv) {
 57d:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 581:	83 e4 f0             	and    $0xfffffff0,%esp
 584:	ff 71 fc             	pushl  -0x4(%ecx)
 587:	55                   	push   %ebp
 588:	89 e5                	mov    %esp,%ebp
 58a:	53                   	push   %ebx
 58b:	51                   	push   %ecx
 58c:	83 ec 10             	sub    $0x10,%esp
 58f:	e8 ec fe ff ff       	call   480 <__x86.get_pc_thunk.bx>
 594:	81 c3 3c 1a 00 00    	add    $0x1a3c,%ebx
 59a:	89 c8                	mov    %ecx,%eax
/home/jdoe/CS232/lab7/task1/msb.c:10
	if (argc<2) {
 59c:	83 38 01             	cmpl   $0x1,(%eax)
 59f:	7f 1f                	jg     5c0 <main+0x43>
/home/jdoe/CS232/lab7/task1/msb.c:11
		printf("Invoke as %s <n> \n\twhere <n> is an integer\n",argv[0]);
 5a1:	8b 40 04             	mov    0x4(%eax),%eax
 5a4:	8b 00                	mov    (%eax),%eax
 5a6:	83 ec 08             	sub    $0x8,%esp
 5a9:	50                   	push   %eax
 5aa:	8d 83 70 e8 ff ff    	lea    -0x1790(%ebx),%eax
 5b0:	50                   	push   %eax
 5b1:	e8 3a fe ff ff       	call   3f0 <printf@plt>
 5b6:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:12
		return 1;
 5b9:	b8 01 00 00 00       	mov    $0x1,%eax
 5be:	eb 6d                	jmp    62d <main+0xb0>
/home/jdoe/CS232/lab7/task1/msb.c:14
	}
	int x=atoi(argv[1]);
 5c0:	8b 40 04             	mov    0x4(%eax),%eax
 5c3:	83 c0 04             	add    $0x4,%eax
 5c6:	8b 00                	mov    (%eax),%eax
 5c8:	83 ec 0c             	sub    $0xc,%esp
 5cb:	50                   	push   %eax
 5cc:	e8 4f fe ff ff       	call   420 <atoi@plt>
 5d1:	83 c4 10             	add    $0x10,%esp
 5d4:	89 45 f4             	mov    %eax,-0xc(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:15
	printf("X= ");
 5d7:	83 ec 0c             	sub    $0xc,%esp
 5da:	8d 83 9c e8 ff ff    	lea    -0x1764(%ebx),%eax
 5e0:	50                   	push   %eax
 5e1:	e8 0a fe ff ff       	call   3f0 <printf@plt>
 5e6:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:16
	print_binary(x);
 5e9:	83 ec 0c             	sub    $0xc,%esp
 5ec:	ff 75 f4             	pushl  -0xc(%ebp)
 5ef:	e8 5a 01 00 00       	call   74e <print_binary>
 5f4:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:17
	printf("\n");
 5f7:	83 ec 0c             	sub    $0xc,%esp
 5fa:	6a 0a                	push   $0xa
 5fc:	e8 0f fe ff ff       	call   410 <putchar@plt>
 601:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:18
	printf("The most significant bit of %d is at position %d\n",x,msb(x));
 604:	83 ec 0c             	sub    $0xc,%esp
 607:	ff 75 f4             	pushl  -0xc(%ebp)
 60a:	e8 70 00 00 00       	call   67f <msb>
 60f:	83 c4 10             	add    $0x10,%esp
 612:	83 ec 04             	sub    $0x4,%esp
 615:	50                   	push   %eax
 616:	ff 75 f4             	pushl  -0xc(%ebp)
 619:	8d 83 a0 e8 ff ff    	lea    -0x1760(%ebx),%eax
 61f:	50                   	push   %eax
 620:	e8 cb fd ff ff       	call   3f0 <printf@plt>
 625:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:19
	return 0;
 628:	b8 00 00 00 00       	mov    $0x0,%eax
/home/jdoe/CS232/lab7/task1/msb.c:20
}
 62d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 630:	59                   	pop    %ecx
 631:	5b                   	pop    %ebx
 632:	5d                   	pop    %ebp
 633:	8d 61 fc             	lea    -0x4(%ecx),%esp
 636:	c3                   	ret    

00000637 <get_mask>:
get_mask():
/home/jdoe/CS232/lab7/task1/msb.c:24


int get_mask( int hw, int ep)
{
 637:	55                   	push   %ebp
 638:	89 e5                	mov    %esp,%ebp
 63a:	83 ec 10             	sub    $0x10,%esp
 63d:	e8 79 01 00 00       	call   7bb <__x86.get_pc_thunk.ax>
 642:	05 8e 19 00 00       	add    $0x198e,%eax
/home/jdoe/CS232/lab7/task1/msb.c:26
  int i;
  int mask = 0;
 647:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:27
  for (i = hw; i < 2*hw; i++)
 64e:	8b 45 08             	mov    0x8(%ebp),%eax
 651:	89 45 f8             	mov    %eax,-0x8(%ebp)
 654:	eb 1a                	jmp    670 <get_mask+0x39>
/home/jdoe/CS232/lab7/task1/msb.c:28 (discriminator 3)
    mask |= (1 << (ep +i));
 656:	8b 55 0c             	mov    0xc(%ebp),%edx
 659:	8b 45 f8             	mov    -0x8(%ebp),%eax
 65c:	01 d0                	add    %edx,%eax
 65e:	ba 01 00 00 00       	mov    $0x1,%edx
 663:	89 c1                	mov    %eax,%ecx
 665:	d3 e2                	shl    %cl,%edx
 667:	89 d0                	mov    %edx,%eax
 669:	09 45 fc             	or     %eax,-0x4(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:27 (discriminator 3)
  for (i = hw; i < 2*hw; i++)
 66c:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:27 (discriminator 1)
 670:	8b 45 08             	mov    0x8(%ebp),%eax
 673:	01 c0                	add    %eax,%eax
 675:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 678:	7c dc                	jl     656 <get_mask+0x1f>
/home/jdoe/CS232/lab7/task1/msb.c:29
  return mask;
 67a:	8b 45 fc             	mov    -0x4(%ebp),%eax
/home/jdoe/CS232/lab7/task1/msb.c:30
}
 67d:	c9                   	leave  
 67e:	c3                   	ret    

0000067f <msb>:
msb():
/home/jdoe/CS232/lab7/task1/msb.c:32

int msb(int x) {
 67f:	55                   	push   %ebp
 680:	89 e5                	mov    %esp,%ebp
 682:	53                   	push   %ebx
 683:	83 ec 14             	sub    $0x14,%esp
 686:	e8 f5 fd ff ff       	call   480 <__x86.get_pc_thunk.bx>
 68b:	81 c3 45 19 00 00    	add    $0x1945,%ebx
/home/jdoe/CS232/lab7/task1/msb.c:33
	if (x==0) return -1;
 691:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 695:	75 0a                	jne    6a1 <msb+0x22>
/home/jdoe/CS232/lab7/task1/msb.c:33 (discriminator 1)
 697:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 69c:	e9 a8 00 00 00       	jmp    749 <msb+0xca>
/home/jdoe/CS232/lab7/task1/msb.c:44
	//                        ^
	//                        |
	//                        ep
	// in which * is a wild card which could be 0 or 1
	int w, ep;
	w=32; // Number of bits that might contain most significant 1
 6a1:	c7 45 e8 20 00 00 00 	movl   $0x20,-0x18(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:45
	ep=0; // Rightmost bit that might contain most significant 1
 6a8:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:46
	while(w>1) { //Narrow down to a single bit
 6af:	e9 88 00 00 00       	jmp    73c <msb+0xbd>
/home/jdoe/CS232/lab7/task1/msb.c:50
		//TODO: Look at half the range of bits
		//TODO: create a mask.
		// This mask is all one-bits in the left half of the range
		int hw =  w/2;
 6b4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 6b7:	89 c2                	mov    %eax,%edx
 6b9:	c1 ea 1f             	shr    $0x1f,%edx
 6bc:	01 d0                	add    %edx,%eax
 6be:	d1 f8                	sar    %eax
 6c0:	89 45 f0             	mov    %eax,-0x10(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:51
		int mask = get_mask(hw, ep);
 6c3:	ff 75 ec             	pushl  -0x14(%ebp)
 6c6:	ff 75 f0             	pushl  -0x10(%ebp)
 6c9:	e8 69 ff ff ff       	call   637 <get_mask>
 6ce:	83 c4 08             	add    $0x8,%esp
 6d1:	89 45 f4             	mov    %eax,-0xc(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:53

		printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
 6d4:	83 ec 0c             	sub    $0xc,%esp
 6d7:	8d 83 d2 e8 ff ff    	lea    -0x172e(%ebx),%eax
 6dd:	50                   	push   %eax
 6de:	e8 0d fd ff ff       	call   3f0 <printf@plt>
 6e3:	83 c4 10             	add    $0x10,%esp
 6e6:	83 ec 0c             	sub    $0xc,%esp
 6e9:	ff 75 f4             	pushl  -0xc(%ebp)
 6ec:	e8 5d 00 00 00       	call   74e <print_binary>
 6f1:	83 c4 10             	add    $0x10,%esp
 6f4:	83 ec 04             	sub    $0x4,%esp
 6f7:	ff 75 ec             	pushl  -0x14(%ebp)
 6fa:	ff 75 f0             	pushl  -0x10(%ebp)
 6fd:	8d 83 d6 e8 ff ff    	lea    -0x172a(%ebx),%eax
 703:	50                   	push   %eax
 704:	e8 e7 fc ff ff       	call   3f0 <printf@plt>
 709:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:59
		//TODO: use mask to figure out if the left half of the range has at least one bit
		//If the left half of the range has a one bit, focus on only the left half
		//else focus on only the right half
		//TODO: You have ruled out either the left half of the range or the right half of the range
		//set up ep and w accordingly
			if ((x &mask)) {
 70c:	8b 45 08             	mov    0x8(%ebp),%eax
 70f:	23 45 f4             	and    -0xc(%ebp),%eax
 712:	85 c0                	test   %eax,%eax
 714:	74 17                	je     72d <msb+0xae>
/home/jdoe/CS232/lab7/task1/msb.c:60
	    	w = w / 2;
 716:	8b 45 e8             	mov    -0x18(%ebp),%eax
 719:	89 c2                	mov    %eax,%edx
 71b:	c1 ea 1f             	shr    $0x1f,%edx
 71e:	01 d0                	add    %edx,%eax
 720:	d1 f8                	sar    %eax
 722:	89 45 e8             	mov    %eax,-0x18(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:61
	    	ep += hw;
 725:	8b 45 f0             	mov    -0x10(%ebp),%eax
 728:	01 45 ec             	add    %eax,-0x14(%ebp)
 72b:	eb 0f                	jmp    73c <msb+0xbd>
/home/jdoe/CS232/lab7/task1/msb.c:63
			} else {
	  		w = w /2;
 72d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 730:	89 c2                	mov    %eax,%edx
 732:	c1 ea 1f             	shr    $0x1f,%edx
 735:	01 d0                	add    %edx,%eax
 737:	d1 f8                	sar    %eax
 739:	89 45 e8             	mov    %eax,-0x18(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:46
	while(w>1) { //Narrow down to a single bit
 73c:	83 7d e8 01          	cmpl   $0x1,-0x18(%ebp)
 740:	0f 8f 6e ff ff ff    	jg     6b4 <msb+0x35>
/home/jdoe/CS232/lab7/task1/msb.c:66
			}
		}
	return ep;
 746:	8b 45 ec             	mov    -0x14(%ebp),%eax
/home/jdoe/CS232/lab7/task1/msb.c:67
}
 749:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 74c:	c9                   	leave  
 74d:	c3                   	ret    

0000074e <print_binary>:
print_binary():
/home/jdoe/CS232/lab7/task1/msb.c:69
//Do not modify print_binary
void print_binary(int n) {
 74e:	55                   	push   %ebp
 74f:	89 e5                	mov    %esp,%ebp
 751:	53                   	push   %ebx
 752:	83 ec 14             	sub    $0x14,%esp
 755:	e8 26 fd ff ff       	call   480 <__x86.get_pc_thunk.bx>
 75a:	81 c3 76 18 00 00    	add    $0x1876,%ebx
/home/jdoe/CS232/lab7/task1/msb.c:71
	int i;
	for(i=31;i>=0;i--) {
 760:	c7 45 f4 1f 00 00 00 	movl   $0x1f,-0xc(%ebp)
 767:	eb 46                	jmp    7af <print_binary+0x61>
/home/jdoe/CS232/lab7/task1/msb.c:72
		printf("%c",(n&1<<i)?'1':'0');
 769:	8b 45 f4             	mov    -0xc(%ebp),%eax
 76c:	8b 55 08             	mov    0x8(%ebp),%edx
 76f:	89 c1                	mov    %eax,%ecx
 771:	d3 fa                	sar    %cl,%edx
 773:	89 d0                	mov    %edx,%eax
 775:	83 e0 01             	and    $0x1,%eax
 778:	85 c0                	test   %eax,%eax
 77a:	74 07                	je     783 <print_binary+0x35>
/home/jdoe/CS232/lab7/task1/msb.c:72 (discriminator 1)
 77c:	b8 31 00 00 00       	mov    $0x31,%eax
 781:	eb 05                	jmp    788 <print_binary+0x3a>
/home/jdoe/CS232/lab7/task1/msb.c:72 (discriminator 2)
 783:	b8 30 00 00 00       	mov    $0x30,%eax
/home/jdoe/CS232/lab7/task1/msb.c:72 (discriminator 4)
 788:	83 ec 0c             	sub    $0xc,%esp
 78b:	50                   	push   %eax
 78c:	e8 7f fc ff ff       	call   410 <putchar@plt>
 791:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:73 (discriminator 4)
		if (0==i%4) printf(" ");
 794:	8b 45 f4             	mov    -0xc(%ebp),%eax
 797:	83 e0 03             	and    $0x3,%eax
 79a:	85 c0                	test   %eax,%eax
 79c:	75 0d                	jne    7ab <print_binary+0x5d>
/home/jdoe/CS232/lab7/task1/msb.c:73 (discriminator 1)
 79e:	83 ec 0c             	sub    $0xc,%esp
 7a1:	6a 20                	push   $0x20
 7a3:	e8 68 fc ff ff       	call   410 <putchar@plt>
 7a8:	83 c4 10             	add    $0x10,%esp
/home/jdoe/CS232/lab7/task1/msb.c:71 (discriminator 2)
	for(i=31;i>=0;i--) {
 7ab:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
/home/jdoe/CS232/lab7/task1/msb.c:71 (discriminator 1)
 7af:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 7b3:	79 b4                	jns    769 <print_binary+0x1b>
/home/jdoe/CS232/lab7/task1/msb.c:75
	}
}
 7b5:	90                   	nop
 7b6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7b9:	c9                   	leave  
 7ba:	c3                   	ret    

000007bb <__x86.get_pc_thunk.ax>:
__x86.get_pc_thunk.ax():
 7bb:	8b 04 24             	mov    (%esp),%eax
 7be:	c3                   	ret    
 7bf:	90                   	nop

000007c0 <__libc_csu_init>:
__libc_csu_init():
 7c0:	55                   	push   %ebp
 7c1:	57                   	push   %edi
 7c2:	56                   	push   %esi
 7c3:	53                   	push   %ebx
 7c4:	e8 b7 fc ff ff       	call   480 <__x86.get_pc_thunk.bx>
 7c9:	81 c3 07 18 00 00    	add    $0x1807,%ebx
 7cf:	83 ec 0c             	sub    $0xc,%esp
 7d2:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 7d6:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
 7dc:	e8 db fb ff ff       	call   3bc <_init>
 7e1:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 7e7:	29 c6                	sub    %eax,%esi
 7e9:	c1 fe 02             	sar    $0x2,%esi
 7ec:	85 f6                	test   %esi,%esi
 7ee:	74 25                	je     815 <__libc_csu_init+0x55>
 7f0:	31 ff                	xor    %edi,%edi
 7f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 7f8:	83 ec 04             	sub    $0x4,%esp
 7fb:	55                   	push   %ebp
 7fc:	ff 74 24 2c          	pushl  0x2c(%esp)
 800:	ff 74 24 2c          	pushl  0x2c(%esp)
 804:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
 80b:	83 c7 01             	add    $0x1,%edi
 80e:	83 c4 10             	add    $0x10,%esp
 811:	39 fe                	cmp    %edi,%esi
 813:	75 e3                	jne    7f8 <__libc_csu_init+0x38>
 815:	83 c4 0c             	add    $0xc,%esp
 818:	5b                   	pop    %ebx
 819:	5e                   	pop    %esi
 81a:	5f                   	pop    %edi
 81b:	5d                   	pop    %ebp
 81c:	c3                   	ret    
 81d:	8d 76 00             	lea    0x0(%esi),%esi

00000820 <__libc_csu_fini>:
__libc_csu_fini():
 820:	f3 c3                	repz ret 

Disassembly of section .fini:

00000824 <_fini>:
_fini():
 824:	53                   	push   %ebx
 825:	83 ec 08             	sub    $0x8,%esp
 828:	e8 53 fc ff ff       	call   480 <__x86.get_pc_thunk.bx>
 82d:	81 c3 a3 17 00 00    	add    $0x17a3,%ebx
 833:	83 c4 08             	add    $0x8,%esp
 836:	5b                   	pop    %ebx
 837:	c3                   	ret    

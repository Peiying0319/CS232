#include <stdio.h>
#include <stdlib.h>

int msb(int x);
void print_binary(int n);

//Please do not modify main().
//All your changes should be made within msb()
int main(int argc, char **argv) {
	if (argc<2) {
		printf("Invoke as %s <n> \n\twhere <n> is an integer\n",argv[0]);
		return 1;
	}
	int x=atoi(argv[1]);
	printf("X= ");
	print_binary(x);
	printf("\n");
	printf("The most significant bit of %d is at position %d\n",x,msb(x));
	return 0;
}


int get_mask( int hw, int ep)
{
  int i;
  int mask = 0;
  for (i = hw; i < 2*hw; i++)
    mask |= (1 << (ep +i));
  return mask;
}

int msb(int x) {
	if (x==0) return -1;
	//we are looking for a *range* that may contain most significant 1
	//the range is defined by width (w) and end_point (ep)
	//if we say range=6, ep=3, then it describes the following scenario:
	//                 |<--w->|
	//         0000 000* **** ****
	//                        ^
	//                        |
	//                        ep
	// in which * is a wild card which could be 0 or 1
	int w, ep;
	w=32; // Number of bits that might contain most significant 1
	ep=0; // Rightmost bit that might contain most significant 1
	while(w>1) { //Narrow down to a single bit
		//TODO: Look at half the range of bits
		//TODO: create a mask.
		// This mask is all one-bits in the left half of the range
		int hw =  w/2;
		int mask = get_mask(hw, ep);

		printf("M= "); print_binary(mask); printf(" hw=%d ep=%d\n",hw,ep);
		//TODO: use mask to figure out if the left half of the range has at least one bit
		//If the left half of the range has a one bit, focus on only the left half
		//else focus on only the right half
		//TODO: You have ruled out either the left half of the range or the right half of the range
		//set up ep and w accordingly
			if ((x &mask)) {
	    	w = w / 2;
	    	ep += hw;
			} else {
	  		w = w /2;
			}
		}
	return ep;
}
//Do not modify print_binary
void print_binary(int n) {
	int i;
	for(i=31;i>=0;i--) {
		printf("%c",(n&1<<i)?'1':'0');
		if (0==i%4) printf(" ");
	}
}

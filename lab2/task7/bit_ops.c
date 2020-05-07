#include <stdio.h>
#include <stdlib.h>

// Note, the bits are counted from right to left.
// Return the bit states of x within range of [start, end], in which both are inclusive.
// Assume 0 <= start & end <= 31   [start: end]    x = 010111  01  get_bits(x, 3,5) = "0101"  Array[0] = 1, Array[1] = 1...

unsigned * get_bits(unsigned x,
                 unsigned start,
                 unsigned end) {


    // Allocate dynamic array base on start and end by malloc

 int len = end - start + 1;
 int i;
 unsigned *retArr = malloc (sizeof(unsigned) * len);    // A[0] (8 byte for double) ,A[1] 4 byte for char, a[2]] 4 byte for char
 /// cut right side base on start
 x = x >> start;
 // Loop i = 0 --> len (Pseudecode)
	//for(i=0; i<len; i++){
		// 1st Initialer
		// 2nd condition to break the loop
		// 3rd update the varible to break the loop
//	}
    i = 0;
    while (i < len) { // condition to break the loop
    	unsigned bit = x&1;// Get the first bit by & operation  0101 & 1 -> 1
    	retArr[i] = bit;          // Store the bit inside correct index of retArr
    	  x = x>>1;                     // Update the next value by shift
    	i++; // update to break the loop
	}

    return retArr;
    // YOUR CODE HERE
    // Returning NULL is a placeholder
    // get_bits dynamically allocates an array a and set a[i] = 1 when (i+start)-th bit
    // of x is 1, otherwise siet a[i] = 0;
    // At last, get_bits returns the address of the array.
}

// Set the bits of x within range of [start, end], in which both are inclusive
// Assume 0 <= start & end <= 31
void set_bits(unsigned * x,
             unsigned start,
             unsigned end,
             unsigned *v) {
    // YOUR CODE HERE
    // No return value
    // v points to an array of at least (end-start+1) unsigned integers.
    // if v[i] == 0, then set (i+start)-th bit of x zero, otherwise, set (i+start)-th bit of x one.
     int i;

     unsigned bits = 0;        /* Convert to v Ex Array {1,0,1,0}; v[0] = 1, v[1] = 0, v[2] = 1 , v[3] = 0  --> bits store real unsigned number "0101 = 5" */
     for (i = 0; i < end - start + 1; i++) {
          unsigned val = v[i] << i;   // v[0] = 1 << 0  --> bbits =1 | v[1] = 0  --> 00 + 1 = 01 | v[2] = 1 --> 100+ 01--> 101
          bits = bits + val;
      }

      // number with all 1's
      unsigned allOnes = ~0;
      // Set all the bits in the left
      unsigned left = allOnes << (end + 1);

     // Set all the bits in the right
      unsigned right = ((1 << start) - 1);

      // Do Bitwsie OR to get all the bits
      unsigned mask = left | right;

      // clear bits j through i
      unsigned masked_n = *x & mask;

      // move m into the correct position
      unsigned m_shifted = bits << start;

      // return the Bitwise OR of masked_n
      // and shifted_m
      *x = masked_n | m_shifted;


}

// Flip the bits of x within range [start, end], in which both are inclusive.
// Assume 0 <= start & end <= 31
void flip_bits(unsigned * x,
              unsigned start,
              unsigned end) {
    // YOUR CODE HERE
        int i;
      unsigned *v = get_bits(*x, start, end); // 0101 0010 10  -> (start =2 , end = 5) tmp = 1101 --> tmp = 0010
      for (i = 0; i < end -start + 1; i++)
         v[i] = !v[i];
      set_bits(x, start, end, v);

}


/*
 * YOU CAN IGNORE THE REST OF THIS FILE
 */

/*
 * Tests that two arrays of size <size> are equal. Equal meaning that all the
 * elements in the arrays are equal.
 */
int array_equals(unsigned *arr1,
		unsigned *arr2,
		unsigned size) {

   int i;
   for (i = 0; i < size; i++) {
       if (arr1[i] != arr2[i]) {
           return 0;
       }
   }

   return 1;
}

/*
 * Prints an unsigned array as a bit string. This assumes that each integer
 * is only 0 or 1.
 */
void print_unsigned_array(unsigned *arr1,
		        unsigned size) {

    printf("0b");
    unsigned i;
    for (i = 0; i < size; i++) {
        printf("%u", arr1[i]);
    }
}

void test_get_bits(unsigned x,
                  unsigned s,
		  unsigned e,
                  unsigned * expected) {
    unsigned* a = get_bits(x, s, e);
    if(!array_equals(a, expected, e - s + 1)) {
        printf("get_bits(0x%08x,%u,%u): ",x,s,e);
	print_unsigned_array(a, e - s + 1);
	printf(", expected ");
	print_unsigned_array(expected, e - s + 1);
	printf("\n");
    } else {
        printf("get_bits(0x%08x,%u,%u): ",x,s,e);
	print_unsigned_array(a, e - s + 1);
	printf(", correct\n");
    }
    free(a);
}

void test_set_bits(unsigned x,
                  unsigned s,
		  unsigned e,
                  unsigned * v,
                  unsigned expected) {
    unsigned o = x;
    set_bits(&x, s, e, v);
    if(x!=expected) {
        printf("set_bits(0x%08x,%u,%u,",o,s,e);
	print_unsigned_array(v, e - s + 1);
	printf("): 0x%08x, expected 0x%08x\n",x,expected);
    } else {
        printf("set_bits(0x%08x,%u,%u,%u): 0x%08x, correct\n",o,s,e,*v,x);
    }
}

void test_flip_bits(unsigned x,
                   unsigned s,
		   unsigned e,
                   unsigned expected) {
    unsigned o = x;
    flip_bits(&x, s, e);
    if(x!=expected) {
        printf("flip_bits(0x%08x,%u,%u): 0x%08x, expected 0x%08x\n",o,s,e,x,expected);
    } else {
        printf("flip_bits(0x%08x,%u,%u): 0x%08x, correct\n",o,s,e,x);
    }
}

int main(int argc,
         const char * argv[]) {
    printf("\nTesting get_bits()\n\n");
    unsigned expected;
    expected = 0;
    test_get_bits(0b1001110,0,0,&expected);
    expected = 1;
    test_get_bits(0b1001110,1,1,&expected);  // get_bits (x , start, end)
    expected = 0;
    test_get_bits(0b1001110,5,5,&expected);
    expected = 1;
    test_get_bits(0b11011,3,3,&expected);
    expected = 0;
    test_get_bits(0b11011,2,2,&expected);
    expected = 0;
    test_get_bits(0b11011,9,9,&expected);

    unsigned expectedArr[] = {1,0,1,0};
    test_get_bits(0b111010101110, 3, 6, expectedArr);  // "1010" {1, 0, 1, 0}
    test_get_bits(0b01011111, 4, 7, expectedArr);  // 1010
    test_get_bits(0b11110101, 0, 3, expectedArr);

    printf("\nTesting set_bits()\n\n");
    test_set_bits(0b1001110,2,2,&expectedArr[1],0b1001010);
    test_set_bits(0b1101101,0,0,&expectedArr[1],0b1101100);
    test_set_bits(0b1001110,2,2,expectedArr,0b1001110);
    test_set_bits(0b1101101,0,0,expectedArr,0b1101101);
    test_set_bits(0b1001110,9,9,&expectedArr[1],0b1001110);
    test_set_bits(0b1101101,4,4,&expectedArr[1],0b1101101);
    test_set_bits(0b1001110,9,9,expectedArr,0b1001001110);
    test_set_bits(0b1101101,7,7,expectedArr,0b11101101);

    test_set_bits(0b111111,0,3,expectedArr,0b110101);     // arr[0] = 1, arr[1] = 0, arr[2] = 1, arr[3] =0 --> x = 111111 v= "0101"  110101
    test_set_bits(0b111111,2,5,expectedArr,0b010111);    //  111111  010111
    test_set_bits(0b111111,1,4,expectedArr,0b101011);  // 101011

    test_set_bits(0,0,3,expectedArr,0b0101);
    test_set_bits(0,2,5,expectedArr,0b010100);
    test_set_bits(0,1,4,expectedArr,0b01010);

    printf("\nTesting flip_bits()\n\n");
    test_flip_bits(0b1001110,0,0,0b1001111);
    test_flip_bits(0b1001110,1,1,0b1001100);
    test_flip_bits(0b1001110,2,2,0b1001010);
    test_flip_bits(0b1001110,5,5,0b1101110);
    test_flip_bits(0b1001110,9,9,0b1001001110);

    test_flip_bits(0b1010,0,3,0b0101);
    test_flip_bits(0b0101,0,3,0b1010);
    test_flip_bits(0b0,0,0,0b1);
    test_flip_bits(0b0,4,4,0b10000);
    test_flip_bits(0b0,0,5,0b111111);
    test_flip_bits(0b1111,0,4,0b10000);

    printf("\n");
    return 0;
}

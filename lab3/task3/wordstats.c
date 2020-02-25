#include <stdio.h>
#include <string.h>
#define MAX_BUF 1024

int main () {

  /* Zero out the array */
  int letter_frequency[26] = {0};
  int len, i, c, order;
  char buf[MAX_BUF];

  printf("Enter a string to get letter frequency:\n ");
  fgets(buf, MAX_BUF,stdin);
  len = strlen(buf);

  do {

    for(c = 0; c < len; c++){
      if(buf[c] >= 'a' && buf[c] <= 'z'){
        order = buf[c] - 97;
        letter_frequency[order]++;
      }
      else if(buf[c] >= 'A' && buf[c] <= 'Z'){
      order = buf[c] - 65;
      letter_frequency[order]++;
      }
    }
  } while (c < len);

  printf("Distribution of letters in corpus:\n");
  for (i = 0; i < 26; i++) {
    // 'A' is ASCII code 65
    printf("%c: %d\n", 65+i, letter_frequency[i]);
  }
}

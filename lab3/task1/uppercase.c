#include <stdio.h>

int main(int argc, char *argv[]) {

   char str[10090];
   int ch, n = 0;

   printf("Please enter a string to convert to UPPERCASE\n");

   while ((ch = getchar()) != EOF && n < 1000) {
      str[n] = ch;
      ++n;
   }

   for (int i = 0; i < n; ++i)
    if (str[i] >= 'a' && str[i] <= 'z'){
      putchar(str[i]-32);
    }
    else(putchar(str[i]));
    return 0;

    return 0;
}

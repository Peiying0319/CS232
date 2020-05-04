#include <stdio.h>
#include "snode.h"

// global variables (data segment)

struct snode *n1, *n2, *n3, *p;

//------------ MY MAIN FUNCTION --------------------

int main(int argc, char *argv[]) {

  // create snodes
  n1 = snode_create("hello");
  n2 = snode_create("there");
  n3 = snode_create("prof");

  printf("snode_test running...\n");

  // manually "link" the nodes together.
  n1->next = n2;
  n2->next = n3;
  n3->next = NULL;

  // p points to node n1 initially
  p = n1;

  while (p != NULL) {
    int len;
    // Complete this line to print the current node's string and
    // the stored length (do not use strlen!)
    for (len = 0; p->str[len] != '\0'; ++len);
    printf("str: %s - length: %d\n", p->str, len);
    p = p->next;

    // TODO: add code to move p to point to next node
    // until you add this line, this program will have an infinite loop.
  }

  return 0;
}

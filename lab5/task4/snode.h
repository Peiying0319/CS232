#ifndef _snode_H_
#define _snode_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct snode {
  char *str;
  struct snode *next;
};

struct snode *snode_create(char *s) ;
void snode_destroy(struct snode * s) ;

#endif

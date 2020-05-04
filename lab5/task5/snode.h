#ifndef _snode_H_
#define _snode_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct snode {
  void *str;
  struct snode *next;
};

struct snode *snode_create(void *s) ;
void snode_destroy(struct snode * s) ;

#endif

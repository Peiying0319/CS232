#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct snode {
  //TODO: change str to dynamic allcoation
  char *str;
  struct snode *next;
};

//TODO: change prototypes of functions to remove
//length
struct snode *snode_create(char *s) ;
void snode_destroy(struct snode * s) ;
char * snode_get_str(struct snode *s);
void snode_set_str(struct snode *s, char *str);
void snode_set_next(struct snode *s, struct snode *next);
struct snode *snode_get_next(struct snode *s);

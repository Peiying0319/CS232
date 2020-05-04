#include <stdio.h>
#include "snode.h"
#include <string.h>
#include <stdlib.h>

struct snode *snode_create(void *s)
{
 //TODO: implement snode_create
 //return node;
    struct snode *node = malloc(sizeof(struct snode));
    //int len = strlen(s) + 1;
    //node->str = malloc(sizeof(char *) * len);
    //strcpy(node->str, s);
    node->str = s;
    node->next = NULL;
    return node;

}
void snode_destroy(struct snode * s)
{
    free(s);
}

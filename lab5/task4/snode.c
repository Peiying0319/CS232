#include <stdio.h>
#include "snode.h"
#include <string.h>
#include <stdlib.h>

struct snode *snode_create(char *s)
{
 //TODO: implement snode_create
 //return node;
    struct snode *node = malloc(sizeof(struct snode));
    int len = strlen(s) + 1;
    node->str = malloc(sizeof(char *) * len);
    strcpy(node->str, s);
    node->next = NULL;
    return node;

}
void snode_destroy(struct snode * s)
{
    if(s->str) {
        free(s->str);
    }
    free(s);
}

#include <stdio.h>
#include "slist.h"


/**
 * Allocates new slist dynamically.
 *
 * @return pointer to the list
 */
struct slist *slist_create()
{
    struct slist *s = malloc(sizeof(struct slist));
    s->front = NULL;
    s->back = NULL;
    return s;
}

/**
 * Inserts new node in slist after the last node.
 *
 * @param l pointer to the list (non-NULL)
 * @param str pointer to a C string to store in new list node
 * returns a pointer to the newly added node
 */

struct snode* slist_add_back(struct slist *l, char *str)
{
    struct snode *new_node = snode_create(str);
    l->back->next = new_node;
    l->back = new_node;
    return new_node;
}

/**
 * Inserts new node in slist before the first node.
 *
 * @param l pointer to the list (non-NULL)
 * @param str pointer to a C string to store in new list node
 * returns a pointer to the newly added node
 */

struct snode* slist_add_front(struct slist *l, char *str)
{
    struct snode *new_node = snode_create(str);
    new_node->next = l->front;
    l->front = new_node;
    return new_node;
}

/**
 * Returns the first snode with the given string.
 *
 * @param l pointer to the list (non-NULL)
 * @parap str pointer to a string
 * @return struct snode* or NULL if no match
 */

struct snode* slist_find(struct slist *l, char *str)
{
    struct snode *current = l->front;
    while (current) {
        if (strcmp(current->str, str) == 0) {
            return current;
        }
        current = current -> next;
    }
    return NULL;
}
/**
 * Deallocate a list and all snodes
 *
 * @param l pointer tot he list
 */
void slist_destroy(struct slist *l)
{
    struct snode *current = l->front;
    while (current) {
        struct snode *tmp = current;
        current = current -> next;
        snode_destroy(tmp);
    }

}

/**
 * Traverse the list and print the content of each node.
 *
 * @param l pointer to the list (non-NULL)
 */
void slist_traverse(struct slist *l)
{
    struct snode *current = l->front;
    while (current) {
        printf("%s ", current->str);
        current = current -> next;
    }
    printf("\n");
}

/**
 * Returns the number of elements in the list (nodes).
 *
 * @param l pointer to the list (non-NULL)
 */
uint32_t slist_length(struct slist *l)
{
    uint32_t len = 0;
    struct snode *current = l->front;
    while (current) {
        len++;
        current = current -> next;
    }
    return len;
}
/**
 * Deletes the first snode with the given string.
 *
 * @param l pointer to the list (non-NULL)
 * @parap str pointer to a string
 * @return struct snode* or NULL if no match
 */
struct snode* slist_delete(struct slist *l, char *str)
{
    struct snode *current = l->front;
    while (current->next) {
        if(strcmp(current->next->str, str) == 0) { // Found
            struct snode *tmp = current->next;
            current->next = current->next->next;
            tmp->next = NULL;
            return tmp;
        }
        current = current -> next;
    }
    return NULL;
}

struct snode * slist_get_front(struct slist *l)
{
    return l->front;
}

struct snode * slist_get_back(struct slist *l)
{
    return l->back;
}

#include<stdio.h>
#include<stdlib.h>
#include "snode.h"
typedef struct snode node_t;

node_t * setup() {
    //TODO:copy setup func from task1
    node_t * head;
    node_t * node1 = (node_t*)malloc(sizeof(node_t));
    node_t * node2 = (node_t*)malloc(sizeof(node_t));
    node_t * node3 = (node_t*)malloc(sizeof(node_t));
    head = node1;
    strcpy(node1->str, "hello");
    node1->length = 5;
    strcpy(node2->str, "there");
    node2->length =5;
    strcpy(node3->str, "prof");
    node3->length = 4;
    node1->next = node2;
    node2->next = node3;
    node3->next = NULL;
    return head;
}

void teardown(node_t * head) {
    //TODO: free all dynamic memory you requested.
    while(head!=NULL) {
        node_t *temp = head;
        head = head -> next;
        temp->next = NULL;
        free(temp);
    }
}

void add(node_t **head, char * str, int length){
    //TODO: implement add to add a new node to front, pointed by head
    node_t * node = (node_t*)malloc(sizeof(node_t));
    strcpy(node->str, str);
    node->length = length;
    node->next = *head;
    *head = node;
}

//You can ignore the following code for testing
void dump_all(node_t*);
int main (int argc, char ** argv) {
    node_t * head = setup();
    add(&head, "hi", 2);
    dump_all(head);
    teardown(head);
    return 0;
}

void dump_all(node_t * head) {
    printf("head -> ");
    node_t * cur = head;
    while(cur != NULL) {
        printf("%s ", cur->str);
	cur = cur->next;
    }
    printf("\ndone\n ");
}

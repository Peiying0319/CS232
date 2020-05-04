#include<stdio.h>
#include<stdlib.h>
#include "snode.h"
typedef struct snode node_t;

node_t * setup() {
    //TODO:copy setup func from task2
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

void teardown(node_t *head) {
    //TODO: free all dynamic memory you requested.
    while(head!=NULL) {
        node_t *temp = head;
        head = head -> next;
        temp->next = NULL;
        free(temp);
    }
}

void add(node_t ** head, char * str, int length){
    //TODO: copy add func from task2
    node_t * node = (node_t*)malloc(sizeof(node_t));
    strcpy(node->str, str);
    node->length = length;
    node->next = *head;
    *head = node;
}
void delete_node_at(node_t ** head, int idx) {
    //TODO: implement delete a node based on index
	//deletes a node at index idx, which ranges from zero to the length of the list - 1.
    // If linked list is empty
   if (*head == NULL)
      return;

   // Store head node
   node_t * temp = *head;
   // If head needs to be removed
   if (idx == 0)
   {
       *head = temp->next;
       free(temp);
       return;
   }
   // Find previous node of the node to be deleted
   for (int i=0; temp!=NULL && i<idx-1; i++)
       temp = temp->next;
   // If position is more than number of ndoes
   if (temp == NULL || temp->next == NULL)
       return;

    // Node temp->next is the node to be deleted
    // Store pointer to the next of node to be deleted
    node_t *next = temp->next->next;

    // Unlink the node from linked list
    free(temp->next);  // Free memory

    temp->next = next;  // Unlink the deleted node from list
}
void delete_node_key(node_t ** head, char * key) {
    //TODO: implement delete a node based on key
	//given a certain key, find and delete.
    node_t* temp = *head, *prev;

    // If head node itself holds the key to be deleted
    if (temp != NULL && strcmp(temp->str, key) == 0)
    {
        *head = temp->next;
        free(temp);
        return;
    }

    // Search for the key to be deleted, keep track of the
    // previous node as we need to change 'prev->next'
    while (temp != NULL && strcmp(temp->str, key) != 0)
    {
        prev = temp;
        temp = temp->next;
    }

    // If key was not present in linked list
    if (temp == NULL) return;
    // Unlink the node from linked list
    prev->next = temp->next;
    free(temp);  // Free memory
}
//You can ignore the following code for testing
void dump_all(node_t*);
int main (int argc, char ** argv) {
    node_t * head = setup();
    add(&head, "hi", 2);
    delete_node_key(&head, "prof");
    delete_node_at(&head, 0);
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

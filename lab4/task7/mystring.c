//* Include the system headers we need */
#include <stdlib.h>
#include <stdio.h>

/* Include our header */
#include "mystring.h"

/* Define what our struct is */
struct mystring_t {
	size_t size;
	char *data;
};

/* Utility function to handle allocation failures. In this
   case we print a message and exit. */
static void allocation_failed() {
    fprintf(stderr, "Out of memory.\n");
    exit(1);
}

/* Bad example of how to create a new mystring */
mystring_t *bad_string_new() {
	/* Create the string and a pointer to it */
        /*This is a bad constructor as v gets destroyed once contructor returns*/
	mystring_t *retval, v;
	retval = &v;

	/* Initialize attributes */
	retval->size = 1; //why size+1? size is the actual char lenght.
			  //we must reseve an extra space for null
	retval->data = (char*) malloc((retval->size+1)*sizeof(char));
	if (retval->data == NULL) {
		allocation_failed();
	}

	retval->data[0] = ' ';
	retval->data[retval->size] = '\0';
	return retval;
}

/* Another suboptimal way of creating a string */
mystring_t also_bad_string_new() {
	/* Create the string */
	/*why is this bad? does v get destroyed upon returning? */
	mystring_t s;

	/* Initialize attributes */
	s.size = 1; //why size+1? an extra space for null
	s.data = (char*) malloc((s.size+1)*sizeof(char));
	if (s.data == NULL) {
		allocation_failed();
	}
	s.data[0] = ' ';
	s.data[s.size] = '\0';
	return s;
}

/* Create a new string with a size (length) of 1
   and set its single component to zero... the
   RIGHT WAY */
mystring_t *mystring_new() {
	mystring_t *retval = (mystring_t *) malloc(sizeof(mystring_t));
	//YOUR CODE HERE
	retval->size = 1; //why size+1? an extra space for null
	retval->data = (char*) malloc((retval->size+1)*sizeof(char));
	if (retval->data == NULL) {
		allocation_failed();
	}
	retval->data[0] = ' ';
	retval->data[1] = '\0';
	return retval;
}

/* Return the value at the specified location/component "loc" of the mystring */
char mystring_get(mystring_t *s, size_t loc) {
	//YOUR CODE HERE
    if (loc < 0 || loc > s->size) {
        return ' ';
    }
	return s->data[loc];
}

/* Free up the memory allocated for the passed mystring.
   Remember, you need to free up ALL the memory that was allocated. */
void mystring_delete(mystring_t *s) {
	/* YOUR CODE HERE */
    free(s->data);
    free(s);
}

int mystring_get_len(mystring_t *s) {
	/* YOUR CODE HERE */
    return s->size;
}

char* mystring_get_data(mystring_t *s) {
	/* YOUR CODE HERE*/
	return s->data;
}
void mystring_cat(mystring_t *s, char *s2) {
	/* YOUR CODE HERE*/
    int len_s2;
    int index = s->size;
    for (len_s2 = 0; s2[len_s2] != '\0'; len_s2++);
    for (int i = 0; i < len_s2; i++) {
        s->data[index] = s2[i];
        index++;
    }
    s->size = s->size + len_s2;
    s->data[s->size] = '\0';
}

/* Set a value in the mystring. If the extra memory allocation fails, call
   allocation_failed(). Unset space should be value of space */
void mystring_set(mystring_t *s, size_t loc, char value) {
	/* YOUR CODE HERE*/
    int i;
    for (i = 0; i < s->size; i++) {
        if (s->data[i] == '\0')
            break;
    }
    if (loc < i)
        s->data[loc] = value;
    else {
        for(;i < loc; i++)
            s->data[i] = ' ';
        s->data[loc] = value;
        s->data[loc +1] = '\0';
        s->size = loc + 1;
    }
}

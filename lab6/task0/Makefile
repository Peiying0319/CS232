CC=gcc
CFLAGS=-g -O3 -Wall -std=c11

unit_test: snode.c snode.h slist.h slist.c unit_test.c
	$(CC) $(CFLAGS) snode.c slist.c unit_test.c -o unit_test

snode_test: snode.c snode.h snode_test.c
	$(CC) $(CFLAGS) snode.c snode_test.c -o snode_test

clean:
	rm -f *.o snode_test song_list unit_test

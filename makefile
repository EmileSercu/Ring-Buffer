#flags, warnings for mistakes and implement C 
CFLAGS = -Wall -Wextra -std=c11

#Program
all: RingBuffer

#combine the branches
RingBuffer: main.o ring_buffer.o
	gcc $(CFLAGS) -o RingBuffer main.o ring_buffer.o

#I'm using a header file so I need to combine the files for them to run properly
#branch 2
main.o: main.c ring_buffer.h
	gcc $(CFLAGS) -c main.c

#Branch 1
ring_buffer.o: ring_buffer.c ring_buffer.h
	gcc $(CFLAGS) -c ring_buffer.c

#clean up combined files
.PHONY: clean
clean:
	rm -f *.o *~ RingBuffer
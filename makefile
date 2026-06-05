#flags, warnings for mistakes and implement C 
FLAGS = -Wall -Wextra -std=c11

#Program
all: RingBuffer

#combine the branches
RingBuffer: main.o ring_buffer.o
	gcc $(FLAGS) -o RingBuffer main.o ring_buffer.o

#I'm using a header file so I need to combine the files to run properly
#branch 1
main.o: main.c ring_buffer.h
	gcc $(FLAGS) -c main.c

#Branch 2
ring_buffer.o: ring_buffer.c ring_buffer.h
	gcc $(FLAGS) -c ring_buffer.c

#clean up combined files
.PHONY: clean
clean:
	rm -f *.o *~ RingBuffer
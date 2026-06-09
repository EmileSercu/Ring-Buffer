//In the header file I define the structure of the buffer and declare the functions

#include <stdint.h>
#include <stdbool.h>

#ifndef RING_BUFFER_H
#define RING_BUFFER_H


#define BUFFER_SIZE 16

typedef struct {
    uint8_t data[BUFFER_SIZE];
    uint8_t head;
    uint8_t tail;
    uint8_t lenght;
} RingBuffer;

//initialize ringbuffer with pointer to store address
void rb_init(RingBuffer *rb);

//write one uint8 into the buffer, returns 1 if successfull, 0 if not
bool rb_write(RingBuffer *rb, uint8_t byte);

//read one uint8 from the buffer, store the byte at the byte address, return 1 if there is data, 0 if there is none
bool rb_read(RingBuffer *rb, uint8_t *byte);

//read address in ringbuffer, if there is a value stored retun 1, if not return 0
bool rb_full(RingBuffer *rb);
//read address in ringbuffer, if there is no data retun 1, if there is return 0
bool rb_empty(RingBuffer *rb);

//debugger, print the current address of the ringbuffer
uint8_t rb_print_state(RingBuffer *rb);

#endif
#include <Ring_buffer.h>
#include <stdio.h>

void rb_init(RingBuffer *rb) {
    rb->write = 0;
    rb->read = 0;
    rb->counter = 0;

}


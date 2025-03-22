// keyrecord_wrapper.h
#ifndef KEYRECORD_WRAPPER_H
#define KEYRECORD_WRAPPER_H

#include <stdint.h>
#include <stdbool.h>

typedef struct {
    uint8_t col;
    uint8_t row;
} keypos_t;

typedef enum keyevent_type_t { TICK_EVENT = 0, KEY_EVENT = 1, ENCODER_CW_EVENT = 2, ENCODER_CCW_EVENT = 3, COMBO_EVENT = 4 } keyevent_type_t;

typedef struct {
    keypos_t        key;
    uint16_t        time;
    keyevent_type_t type;
    bool            pressed;
} keyevent_t;

typedef struct {
    keyevent_t event;
} keyrecord_t;

#endif
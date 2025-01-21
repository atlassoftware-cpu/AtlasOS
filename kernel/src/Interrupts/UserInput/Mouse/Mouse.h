#pragma once

#include <CPU/IO/IO.h>
#include <Bitmaps/BitmapDraw.h>
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <Point.h>
#include <config.h>

#define PS2Leftbutton 0b00000001
#define PS2Middlebutton 0b00000100
#define PS2Rightbutton 0b00000010
#define PS2XSign 0b00010000
#define PS2YSign 0b00100000
#define PS2XOverflow 0b01000000
#define PS2YOverflow 0b10000000

extern uint8_t MousePointer[];

void MouseWait();
void MouseWaitInput();
void MouseWrite(uint8_t value);
uint8_t MouseRead();

extern uint8_t MouseCycle;
extern uint8_t MousePacket[4];
extern bool MousePacketReady;
extern Point MousePosition;
extern Point MousePositionOld;

void HandlePS2Mouse(uint8_t data);
void ProcessMousePacket();
void InitPS2Mouse();

typedef struct _button_t {
    char label[17];
    void (*Handler)();
    Point Position;
    Point Scale;
    int Enabled;
} Button_t;

Button_t CreateButton(const char* label, void (*Handler)(), uint64_t x, uint64_t y, uint64_t sx, uint64_t sy);
void RemoveButton(int btn_index);
void CheckBtns(uint64_t x, uint64_t y);
void SetBtnEnabled(Button_t btn);
void ClearBtnEnabled(Button_t btn);
#pragma once

#include <CPU/IO/IO.h>
#include <Bitmaps/BitmapDraw.h>
#include <stdbool.h>
#include <stdint.h>
#include <Point.h>

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
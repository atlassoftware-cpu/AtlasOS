#pragma once

#include <stdint.h>
#include <stdbool.h>
#include <limine.h>
#include <Interrupts/UserInput/Mouse/Mouse.h>
#include <Point.h>

extern struct limine_framebuffer fb_instance;
extern struct limine_framebuffer* fb;

extern bool MouseDrawn;
extern uint32_t MouseCursorBuffer[16 * 16];
extern uint32_t MouseCursorBufferAfter[16 * 16];
extern Point CursorPosition;

void DrawBmp(uint8_t* bmp, uint32_t startx, uint32_t starty, uint32_t width_multiplier, uint32_t height_multiplier);
void PutPx(uint32_t x, uint32_t y, uint32_t clr);
uint32_t GetPx(uint32_t x, uint32_t y);

void DrawOverlayMouseCursor(uint8_t* mouseCursor, Point position, uint32_t color);
void ClearMouseCursor(uint8_t* mouseCursor, Point position);
#pragma once

#include <stdint.h>
#include <limine.h>

extern struct limine_framebuffer fb_instance;
extern struct limine_framebuffer* fb;

void DrawBmp(uint8_t* bmp, uint32_t startx, uint32_t starty, uint32_t width_multiplier, uint32_t height_multiplier);
void PutPx(uint32_t x, uint32_t y, uint32_t clr);
#pragma once
#include <stdint.h>
#include <Bitmaps/BitmapDraw.h>
#include <FontRenderer/FontRenderer.h>
#include <Paging/PageFrameAlloc/PageFrameAllocator.h>
#include <stdint.h>
#include <stddef.h>

void InitializeScreenGrid(struct limine_framebuffer* fb);
void PutCharAtPos(char c, int x, int y);
void PutChar(char c);
void PutCharSimple(char c);
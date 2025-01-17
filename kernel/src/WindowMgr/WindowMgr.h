#pragma once

#include <stdint.h>
#include <limine.h>

#include <Bitmaps/BitmapDraw.h>

typedef struct _window_mgr_t {
    uint32_t width;
    uint32_t height;
    uint32_t bpp;
    uint32_t pitch;
    uint32_t* framebuffer;
} WindowManager;

typedef struct _win_mgr_framebuffer {
    char AppName[17];
    uint32_t Width;
    uint32_t Height;
    uint32_t StartX;
    uint32_t StartY;
    uint32_t BPP;
    uint32_t Pitch;
    uint32_t* Framebuffer;
    uint32_t BackColor:24; // Corrected bit-field declaration
} WindowManagerFramebuffer;
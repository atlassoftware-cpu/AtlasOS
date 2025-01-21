// filepath: /Ubuntu/home/nanosoft/AtlasSoftware/AtlasOS/kernel/src/WindowMgr/WindowMgr.c
#include "WindowMgr.h"

WindowManager winmgr_instance;
WindowManager* winmgr = &winmgr_instance;

void InitWindowManager(struct limine_framebuffer* framebuffer) {
    winmgr->width = framebuffer->width;
    winmgr->height = framebuffer->height;
    winmgr->bpp = framebuffer->bpp;
    winmgr->pitch = framebuffer->pitch;
    winmgr->framebuffer = (uint32_t*)framebuffer->address; // Use the correct member name
}

extern _memset(void*,int,size_t);

void CreateWindowProc(WindowManagerFramebuffer* framebuffer) {
    // TODO: Create a title bar (12 pixels high) and a close button
    // TODO: Write window name on the title bar

    if (framebuffer->Width + framebuffer->StartX > winmgr->width || framebuffer->Height + framebuffer->StartY > winmgr->height) {
        return;
    }

    for (uint32_t y = 0; y < framebuffer->Height; ++y) {
        for (uint32_t x = 0; x < framebuffer->Width; ++x) {
            PutPx(x + framebuffer->StartX, y + framebuffer->StartY, framebuffer->BackColor);
        }
    }
}

void UpdateWindowProc(WindowManagerFramebuffer* framebuffer) {
    if (framebuffer->Width + framebuffer->StartX > winmgr->width || framebuffer->Height + framebuffer->StartY > winmgr->height) {
        return;
    }

    for (uint32_t y = 0; y < framebuffer->Height; ++y) {
        for (uint32_t x = 0; x < framebuffer->Width; ++x) {
            PutPx(x + framebuffer->StartX, y + framebuffer->StartY, framebuffer->Framebuffer[y * framebuffer->Width + x]);
        }
    }
}
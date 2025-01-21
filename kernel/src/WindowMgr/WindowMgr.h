#pragma once

#include <stdint.h>
#include <limine.h>
#include <stddef.h>

#include <Bitmaps/BitmapDraw.h>

typedef struct _window_mgr_t {
    uint32_t width;
    uint32_t height;
    uint32_t bpp;
    uint32_t pitch;
    uint32_t* framebuffer;
} WindowManager;

#define ELEMENT_TEXT        0b00000001
#define ELEMENT_IMAGE       0b00000010
#define ELEMENT_BUTTON      0b00000100
#define ELEMENT_INPUTBOX    0b00001000

typedef struct {
    char Input[4096];
    void (*handler)();
} InputBox;

typedef struct _elemnt_t {
    uint8_t Type; // The element type, text, image, button, input box, etc...
    union Element {
        char TEXT[8192];
        uint32_t* IMGPtr; // pointer to the image data loaded in memeory ends with the mark "IMGEND\00\00" with total of 8 bytes
        void (*BtnHandler)(); // the button handler
        InputBox* InputBoxStruc; // the input box struct which will contain the data of the input box
    }
} WindowElement;

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
    uint32_t* WinFbStart;

} WindowManagerFramebuffer;

void InitWindowManager(struct limine_framebuffer* framebuffer);
void CreateWindowProc(WindowManagerFramebuffer* framebuffer);
void UpdateWindowProc(WindowManagerFramebuffer* framebuffer);
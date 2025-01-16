#include "Write.h"

// Define ScrGridPt structure
typedef struct {
    int x;
    int y;
} ScrGridPt;

// Declare outb function (if needed)
void outb(uint16_t port, uint8_t value);

// Global variables
uint64_t GridXLen;
uint64_t GridYLen;
char ScreenGrid[(1920/8)*(1080/8)]; 
ScrGridPt ScreenGridPt = {0, 0};
ScrGridPt Cursor = {0, 0};

// External memory set function (assumes second argument is the value to set memory to)
extern void _memset(void* ptr, int value, size_t num);

// Initialize the screen grid
void InitializeScreenGrid(struct limine_framebuffer* fb) {
    outb(0xE9, 't');  // Debug: Entering InitializeScreenGrid
    GridXLen = fb->width / 8;
    GridYLen = fb->height / 8;
}

void PutCharAtPos(char c, int x, int y) {
    if (x < 0 || x >= (int)GridXLen || y < 0 || y >= (int)GridYLen) {
        return; // Out of bounds
    }

    // Update the screen grid
    ScreenGrid[y * GridXLen + x] = c;

    // Set the position for font rendering
    int _x = x * 8;
    int _y = y * 8;
    ScreenGridPt.x = _x;
    ScreenGridPt.y = _y;

    // Call to font rendering function
    font_char(c, _x, _y, 0xFFFFFF);  // Assuming font_char is working properly

    // Handle special characters
    switch (c) {
        case '\n':
            ScreenGridPt.y++;
            ScreenGridPt.x = 0;
            if (ScreenGridPt.y >= GridYLen) {
                ScreenGridPt.y = 0;
            }
            break;
        case '\b':
            if (ScreenGridPt.x > 0) {
                ScreenGridPt.x--;
            } else if (ScreenGridPt.y > 0) {
                ScreenGridPt.y--;
                ScreenGridPt.x = GridXLen - 1;
            }
            break;
        case '\t':
            ScreenGridPt.x += 4 * 8;
            if (ScreenGridPt.x >= GridXLen) {
                ScreenGridPt.x = 0;
                ScreenGridPt.y++;
                if (ScreenGridPt.y >= GridYLen) {
                    ScreenGridPt.y = 0;
                }
            }
            break;
        case ' ':
            ScreenGridPt.x += 8;
            if (ScreenGridPt.x >= GridXLen) {
                ScreenGridPt.x = 0;
                ScreenGridPt.y++;
                if (ScreenGridPt.y >= GridYLen) {
                    ScreenGridPt.y = 0;
                }
            }
            break;
        default:
            // Additional character printing logic
            ScreenGridPt.x += 8;
            if (ScreenGridPt.x >= GridXLen) {
                ScreenGridPt.x = 0;
                ScreenGridPt.y++;
                if (ScreenGridPt.y >= GridYLen) {
                    ScreenGridPt.y = 0;
                }
            }
            break;
    }

    // Update cursor after placing character
    Cursor.x = x;
    Cursor.y = y;
}

// Put a character at the current cursor position
void PutChar(char c) {
    PutCharAtPos(c, ScreenGridPt.x, ScreenGridPt.y);
}

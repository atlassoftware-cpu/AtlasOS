#include "Write.h"

uint64_t GridXLen;
uint64_t GridYLen;

char** ScreenGrid;

typedef struct {
    uint64_t x;
    uint64_t y;
} ScrGridPt;

ScrGridPt ScreenGridPt = {0, 0};
ScrGridPt Cursor       = {0, 0};

extern void _memset(void*, void*, size_t);

void InitializeScreenGrid(struct limine_framebuffer* fb) {
    GridXLen = fb->width / 8;
    GridYLen = fb->height / 8;

    size_t total_size = GridXLen * GridYLen * sizeof(char);
    size_t num_pages = (total_size + 4095) / 4096; // Assuming page size is 4096 bytes

    ScreenGrid = (char**)RequestPages(num_pages);
    _memset(ScreenGrid, 0, total_size);
}

void PutCharAtPos(char c, int x, int y) {
    if (x < 0 || x >= (int)GridXLen || y < 0 || y >= (int)GridYLen) {
        return; // Out of bounds
    }

    ScreenGrid[y * GridXLen + x] = c;
    int _x = x * 8;
    int _y = y * 8;
    ScreenGridPt.x = _x;
    ScreenGridPt.y = _y;

    switch (c) {
        case '\n':
            ScreenGridPt.y++;
            ScreenGridPt.x = 0;
            if (ScreenGridPt.y >= GridYLen) {
                ScreenGridPt.y = 0; // Wrap around
            }
            break;
        case '\b':
            if (ScreenGridPt.x > 0) {
                ScreenGridPt.x--;
            } else if (ScreenGridPt.y > 0) {
                ScreenGridPt.y--;
                ScreenGridPt.x = GridXLen - 1;
            }
            for (int x_ = 0; x_ < 8; x_++) {
                for (int y_ = 0; y_ < 8; y_++) {
                    int _x_ = _x + x_;
                    int _y_ = _y + y_;
                    PutPx(_x_, _y_, 0x00000000);
                }
            }
            ScreenGrid[y * GridXLen + x] = '\0';
            break;
        case '\t':
            ScreenGridPt.x += 4 * 8;
            if (ScreenGridPt.x >= fb->width) {
                ScreenGridPt.x = 0;
                ScreenGridPt.y++;
                if (ScreenGridPt.y >= GridYLen) {
                    ScreenGridPt.y = 0; // Wrap around
                }
            }
            break;
        case ' ':
            ScreenGridPt.x += 8;
            if (ScreenGridPt.x >= fb->width) {
                ScreenGridPt.x = 0;
                ScreenGridPt.y++;
                if (ScreenGridPt.y >= GridYLen) {
                    ScreenGridPt.y = 0; // Wrap around
                }
            }
            break;
        default:
            font_char(c, _x, _y, 0xFFFFFF);
            ScreenGridPt.x += 8;
            if (ScreenGridPt.x >= fb->width) {
                ScreenGridPt.x = 0;
                ScreenGridPt.y++;
                if (ScreenGridPt.y >= GridYLen) {
                    ScreenGridPt.y = 0; // Wrap around
                }
            }
            break;
    }

    Cursor.x = x;
    Cursor.y = y;
}

void PutChar(char c) {
    PutCharAtPos(c, ScreenGridPt.x, ScreenGridPt.y);
}
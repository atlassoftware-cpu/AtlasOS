#include "Write.h"

Point Cursor;
extern __attribute__((hot, used)) void RefreshOSWidgets();

int XLenKbd = 1920;
int YLenKbd = 1080;

char ScrnGridData[1920 * 1080];
int first = 0;

__attribute__((hot, used)) void RedrawChars() {
    for (int y = 0; y < YLenKbd; y++) {
        for (int x = 0; x < XLenKbd; x++) {
            int _last_x = x * 8; // Calculate pixel position based on index
            int _last_y = y * 8;
            char c = ScrnGridData[y * XLenKbd + x];
            font_char(c, _last_x, _last_y, 0xFFFFFFFF);
        }
    }
}

__attribute__((hot, used)) void DrawChar(char c, int x, int y) {
    ScrnGridData[y * XLenKbd + x] = c;
    font_char(c, x, y, 0xFFFFFF);
}

void PutCharSimple(char c) {
    if (!first) {
        XLenKbd = fb->width / 8 - 2;
        YLenKbd = fb->height / 8 - 2;
        first = 1;
    }
    switch (c) {
        case '\n':
            Cursor.X = 0;
            Cursor.Y += 8;
            if (Cursor.Y > fb->height) Cursor.Y = fb->height - 8;
            break;
        case '\b':
            RefreshOSWidgets();
            RedrawChars();
            if (Cursor.X - 8 < 0) {
                Cursor.X = 0;
                Cursor.Y = (Cursor.Y - 8 < 0) ? 0 : Cursor.Y - 8;
            } else {
                Cursor.X -= 8;
            }
            break;
        case '\t':
            Cursor.X += 8 * 4;
            if (Cursor.X > fb->width) Cursor.X = fb->width - 8;
            break;
        default:
            DrawChar(c, Cursor.X, Cursor.Y);
            Cursor.X += 8;
            if (Cursor.X > fb->width) {
                Cursor.X = 0;
                Cursor.Y += 8;
                if (Cursor.Y > fb->height) Cursor.Y = fb->height - 8;
            }
            break;
    }
}

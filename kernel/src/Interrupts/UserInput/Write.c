#include "Write.h"

Point Cursor;

void PutCharSimple(char c) {
    switch (c) {
        case '\n':
            Cursor.X = 0;
            Cursor.Y += 8;
            break;
        case '\b':
            if (Cursor.X-8 < 0) {
                Cursor.X = 0;
                Cursor.Y = 1920-8;
            } else {
                Cursor.X -= 8;
            }
            break;
        case '\t':
            Cursor.X += 8*4;
            if (Cursor.X > 1920) {
                Cursor.X = 1920;
                break;
            }
            break;
        default:
            font_char(c, Cursor.X, Cursor.Y, 0xFFFFFF);
            Cursor.X+=8;
            if (Cursor.X > 1920) {
                Cursor.X = 0;
                Cursor.Y += 8;
            }
            break;
    }
}
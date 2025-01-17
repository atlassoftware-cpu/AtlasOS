#include <Icons.h>
#include <Bitmaps/BitmapDraw.h>
#include "FontRenderer.h"

void font_char(char c, size_t x, size_t y, uint32_t color) {
    const uint8_t *glyph = FONT[(size_t) c];

    for (size_t yy = 0; yy < 8; yy++) {
        for (size_t xx = 0; xx < 8; xx++) {
            if (glyph[yy] & (1 << xx)) {
                PutPx(x+xx, y+yy, color);
            }
        }
    }
}

void font_str(const char *s, size_t x, size_t y, uint32_t color) {
    char c;

    while ((c = *s++) != 0) {
        font_char(c, x, y, color);
        x += 8;
    }
}
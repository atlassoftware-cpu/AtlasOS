#include "BitmapDraw.h"

struct limine_framebuffer fb_instance;
struct limine_framebuffer* fb;

bool MouseDrawn;
uint32_t MouseCursorBuffer[16 * 16];
uint32_t MouseCursorBufferAfter[16 * 16];
Point CursorPosition;

void PutPx(uint32_t x, uint32_t y, uint32_t clr) {
    volatile uint32_t* fb_address = (volatile uint32_t*)fb->address;
    fb_address[y * (fb->pitch / sizeof(uint32_t)) + x] = clr;
}

// Function to parse and draw BMP data
void DrawBmp(uint8_t* bmp, uint32_t startx, uint32_t starty, uint32_t width_multiplier, uint32_t height_multiplier) {
    // BMP header parsing
    uint32_t width = *(uint32_t*)(bmp + 18);   // Offset for width in BMP header
    uint32_t height = *(uint32_t*)(bmp + 22);  // Offset for height in BMP header
    uint16_t bpp = *(uint16_t*)(bmp + 28);     // Offset for bits per pixel
    uint32_t dataOffset = *(uint32_t*)(bmp + 10); // Offset for pixel data
    
    if (bpp != 32) {
        // Only supports 32-bit BMP (with RGBA color)
        return;
    }

    // Each row is padded to a 4-byte boundary
    uint32_t rowSize = ((bpp * width + 31) / 32) * 4;

    // Pixel data starts at the dataOffset
    uint8_t* pixelData = bmp + dataOffset;

    // BMP rows are stored bottom-to-top
    for (uint32_t row = 0; row < height; ++row) {
        for (uint32_t col = 0; col < width; ++col) {
            // Calculate the pixel's position in the array
            uint8_t* pixel = pixelData + (height - 1 - row) * rowSize + col * (bpp / 8);

            // Extract color components (RGBA)
            uint32_t color = 0;
            uint8_t blue = pixel[0];
            uint8_t green = pixel[1];
            uint8_t red = pixel[2];
            uint8_t alpha = pixel[3];

            // Construct color value with alpha channel
            color = (red << 16) | (green << 8) | blue | (alpha << 24);

            // If pixel is black (RGB: 0x000000), convert it to 0xFF1E1E1E
            if (red == 0 && green == 0 && blue == 0) {
                color = 0xFF1E1E1E;  // Replace black with 0xFF1E1E1E
            }

            // Draw the pixel on the screen with width and height multipliers
            for (uint32_t dy = 0; dy < height_multiplier; ++dy) {
                for (uint32_t dx = 0; dx < width_multiplier; ++dx) {
                    PutPx(startx + col * width_multiplier + dx, starty + row * height_multiplier + dy, color);
                }
            }
        }
    }
}

uint32_t GetPx(uint32_t x, uint32_t y) {
    uint64_t pixel_address = (uint64_t)fb->address + (y * fb->pitch) + (x * 4);
    return *(uint32_t*)pixel_address;
}

void ClearMouseCursor(uint8_t* mouseCursor, Point position) {
    if (!MouseDrawn) return;

    int xMax = 16;
    int yMax = 16;
    int differenceX = fb->width - position.X;
    int differenceY = fb->height - position.Y;

    if (differenceX < 16) xMax = differenceX;
    if (differenceY < 16) yMax = differenceY;

    for (int y = 0; y < yMax; y++){
        for (int x = 0; x < xMax; x++){
            int bit = y * 16 + x;
            int byte = bit / 8;
            if ((mouseCursor[byte] & (0b10000000 >> (x % 8))))
            {
                if (GetPx(position.X + x, position.Y + y) == MouseCursorBufferAfter[x + y *16]){
                    PutPx(position.X + x, position.Y + y, MouseCursorBuffer[x + y * 16]);
                }
            }
        }
    }
}

void DrawOverlayMouseCursor(uint8_t* mouseCursor, Point position, uint32_t color) {
    int xMax = 16;
    int yMax = 16;
    int differenceX = fb->width - position.X;
    int differenceY = fb->height - position.Y;

    if (differenceX < 16) xMax = differenceX;
    if (differenceY < 16) yMax = differenceY;

    for (int y = 0; y < yMax; y++){
        for (int x = 0; x < xMax; x++){
            int bit = y * 16 + x;
            int byte = bit / 8;
            if ((mouseCursor[byte] & (0b10000000 >> (x % 8))))
            {
                MouseCursorBuffer[x + y * 16] = GetPx(position.X + x, position.Y + y);
                PutPx(position.X + x, position.Y + y, color);
                MouseCursorBufferAfter[x + y * 16] = GetPx(position.X + x, position.Y + y);

            }
        }
    }

    MouseDrawn = true;
}

void FillScreen(uint32_t color) {
    for (uint32_t y = 0; y < fb->height; y++) {
        for (uint32_t x = 0; x < fb->width; x++) {
            PutPx(x, y, color);
        }
    }
}
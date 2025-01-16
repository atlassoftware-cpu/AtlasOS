#include "BitmapDraw.h"

struct limine_framebuffer fb_instance;
struct limine_framebuffer* fb;

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
    
    if (bpp != 24 && bpp != 32) {
        // Unsupported format (only supports 24-bit or 32-bit BMP)
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

            // Extract color components
            uint32_t color = 0;
            color |= pixel[0];        // Blue
            color |= pixel[1] << 8;   // Green
            color |= pixel[2] << 16;  // Red

            if (bpp == 32) {
                color |= pixel[3] << 24; // Alpha (if present)
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
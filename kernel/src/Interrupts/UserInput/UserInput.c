#include <FontRenderer/FontRenderer.h>
#include "Write.h"
#include "UserInput.h"
#include <stdbool.h>

char USLayoutNrml[128] = {
    0, '`', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b',
    '\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\n',
    0, 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', '`', 0,
    '\\', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', 0,
    '*', 0, ' ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    '-', 0, 0, 0, '+', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};
char USLayoutCaps[128] = {
    0, '`', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b',
    '\t', 'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '[', ']', '\n',
    0, 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', ';', '\'', 0, 0,
    '\\', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', ',', '.', '/', 0,
    '*', 0, ' ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    '-', 0, 0, 0, '+', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};
char USLayoutShft[128] = {
    0, '~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '\b',
    '\t', 'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '{', '}', '\n',
    0, 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', ':', '\"', '`', 0,
    '|', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '<', '>', '?', 0,
    '*', 0, ' ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    '-', 0, 0, 0, '+', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

bool IsCaps = false;  // Caps lock state
bool IsShift = false; // Shift key state

void HandleKbd(uint8_t sc) {
    // Mask to ensure we are working with the valid part of the scan code
    uint8_t scan_code = sc & 0x7F;  // Mask out the upper bit (0x7F)

    switch (sc) {
        case 0x2A:  // Left Shift press
            IsShift=true;
            break;
        case 0x36:  // Right Shift press
            IsShift = true;
            break;
        case 0xAA:  // Left Shift release
            IsShift=false;
            break;
        case 0xB6:  // Right Shift release
            IsShift = false;
            break;

        case 0x3A:  // Caps Lock press
            if ((sc & 0x80) == 0) {  // Check if it's a key press, not a key release (0x80 for key release)
                IsCaps = !IsCaps;  // Toggle Caps Lock on key press
            }
            break;

        default:
            break;
    }

    // Process the character based on Caps Lock and Shift states
    if (scan_code < sizeof(USLayoutNrml) / sizeof(USLayoutNrml[0])) {
        if (USLayoutNrml[scan_code] != 0) {  // Check for unassigned keys
            if (IsCaps) {
                PutCharSimple(USLayoutCaps[scan_code]);
            } else if (IsShift) {
                PutCharSimple(USLayoutShft[scan_code]);
            } else {
                PutCharSimple(USLayoutNrml[scan_code]);
            }
        }
    } else {
        // Handle invalid or unused scan codes here (optional)
    }
}

void HandleMouse(uint8_t packet) {
    HandlePS2Mouse(packet);
    ProcessMousePacket();
}
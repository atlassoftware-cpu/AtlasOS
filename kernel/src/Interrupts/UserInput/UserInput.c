#include <FontRenderer/FontRenderer.h>
#include "Write.h"
#include "UserInput.h"

char USLayout[128] = {
    0, 27, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b',
    '\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\n',
    0, 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', '`', 0,
    '\\', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', 0,
    '*', 0, ' ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    '-', 0, 0, 0, '+', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

void HandleKbd(uint8_t sc) {
    // Mask to ensure we are working with the valid part of the scan code
    uint8_t scan_code = sc & 0x7F;  // 0x7F to mask out any upper bits

    if (scan_code < sizeof(USLayout) / sizeof(USLayout[0])) {
        if (USLayout[scan_code] != 0) { // Check for unassigned keys
            //PutCharAtPos(USLayout[scan_code], 0, 0);
            //font_char(USLayout[scan_code], 12, 12, 0xFFFFFF);
            PutCharSimple(USLayout[scan_code]);
            IOWait();
        }
    } else {
        // Handle invalid scan codes (you can add logging or debugging here)
    }
}

void HandleMouse(uint8_t packet) {
    HandlePS2Mouse(packet);
    ProcessMousePacket();
}
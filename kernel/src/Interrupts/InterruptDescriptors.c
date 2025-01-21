// filepath: /Ubuntu/home/nanosoft/AtlasSoftware/AtlasOS/kernel/src/Interrupts/InterruptDescriptors.c

#include "InterruptDescriptors.h"
#include <CPU/IO/IO.h>
#include "UserInput/UserInput.h"
#include <GLOBAL.h>

__attribute__((interrupt)) void kb(InterruptFrame* Frame) {
    if (ALLOW_WRITE == 0) return;
    uint8_t scancode = inb(0x60);
    
    if (scancode & 0x80) {
        outb(0x20, 0x20);  // Acknowledge the interrupt on master PIC
        IOWait();
        return;
    }

    HandleKbd(scancode);
    outb(0x20, 0x20);  // Acknowledge the interrupt on master PIC
}

__attribute__((interrupt)) void mouse(InterruptFrame* Frame) {
    uint8_t data = inb(0x60);  // Read data from mouse
    HandlePS2Mouse(data);
    ProcessMousePacket();  // Process the mouse packet
    outb(0x20, 0x20);  // Acknowledge interrupt on master PIC
    outb(0xA0, 0x20);  // Acknowledge interrupt on slave PIC
}

__attribute__((interrupt)) void syscall(InterruptFrame* Frame) {
        outb(0xE9, 'R');
        outb(0xE9, 'A');
        outb(0xE9, 'X');
}
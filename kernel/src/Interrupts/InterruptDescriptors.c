// filepath: /Ubuntu/home/nanosoft/AtlasSoftware/AtlasOS/kernel/src/Interrupts/InterruptDescriptors.c

#include "InterruptDescriptors.h"
#include <CPU/IO/IO.h>
#include "UserInput/UserInput.h"

__attribute__((interrupt)) void kb(InterruptFrame* Frame) {
    uint8_t scancode = inb(0x60);
    HandleKbd(scancode);
    outb(0x20, 0x20);
}

__attribute__((interrupt)) void mouse(InterruptFrame* Frame) {
    uint8_t data = inb(0x60);
    HandleMouse(data);
    outb(0xA0, 0x20);
}

__attribute__((interrupt)) void syscall(InterruptFrame* Frame) {
    if (Frame->rax == 0xFF) {
        outb(0xE9, 'R');
        outb(0xE9, 'A');
        outb(0xE9, 'X');
    }
}
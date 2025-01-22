#include "IO.h"

// Write a byte to the specified port
void outb(uint16_t port, uint8_t value) {
    __asm__ volatile ("outb %0, %1" : : "a"(value), "Nd"(port));
}

// Write a word to the specified port
void outw(uint16_t port, uint16_t value) {
    __asm__ volatile ("outw %0, %1" : : "a"(value), "Nd"(port));
}

// Write a double word to the specified port
void outl(uint16_t port, uint32_t value) {
    __asm__ volatile ("outl %0, %1" : : "a"(value), "Nd"(port));
}

// Read a byte from the specified port
uint8_t inb(uint16_t port) {
    uint8_t ret;
    __asm__ volatile ("inb %1, %0" : "=a"(ret) : "Nd"(port));
    return ret;
}

// Read a word from the specified port
uint16_t inw(uint16_t port) {
    uint16_t ret;
    __asm__ volatile ("inw %1, %0" : "=a"(ret) : "Nd"(port));
    return ret;
}

// Read a double word from the specified port
uint32_t inl(uint16_t port) {
    uint32_t ret;
    __asm__ volatile ("inl %1, %0" : "=a"(ret) : "Nd"(port));
    return ret;
}


uint32_t ral(uint16_t port);
uint32_t rah(uint16_t port);

uint64_t inq(uint16_t port) {
    uint32_t low = ral(port);
    uint32_t high = rah(port);
    return ((uint64_t)high << 32) | low;
}

void outq(uint16_t port, uint64_t value) {
    uint32_t low = (uint32_t)(value & 0xFFFFFFFF);
    uint32_t high = (uint32_t)((value >> 32) & 0xFFFFFFFF);
    __asm__ volatile ("outl %0, %1" : : "a"(low), "Nd"(port));
    __asm__ volatile ("outl %0, %1" : : "a"(high), "Nd"(port + 4));
}

void IOWait() {
    // Write to an unused port (0x80 is often used for this purpose)
    __asm__ volatile ("outb %%al, $0x80" : : "a"(0));
}
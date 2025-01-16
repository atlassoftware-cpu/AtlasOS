#pragma once
#include <stdint.h>

// Write a byte to the specified port
void outb(uint16_t port, uint8_t value);

// Write a word to the specified port
void outw(uint16_t port, uint16_t value);

// Write a double word to the specified port
void outl(uint16_t port, uint32_t value);

// Read a byte from the specified port
uint8_t inb(uint16_t port);

// Read a word from the specified port
uint16_t inw(uint16_t port);

// Read a double word from the specified port
uint32_t inl(uint16_t port);

void IOWait();
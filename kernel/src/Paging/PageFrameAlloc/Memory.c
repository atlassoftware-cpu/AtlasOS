#include "Memory.h"

// Define the total memory size (16 MiB)
uint64_t memorySize = 16 * 1024 * 1024;

// Define the page bitmap (8iKB for 16 MiB of memory with 4KiB pages)
uint8_t pageBitmap[16 * 1024 / 8]; // 16 MiB / 4KiB per page / 8 bits per byte
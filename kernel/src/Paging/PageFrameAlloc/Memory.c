#include "Memory.h"

// Define the total memory size (32 MiB)
uint64_t memorySize = 64 * 1024 * 1024;

// Define the page bitmap (8iKB for 32 MiB of memory with 4KiB pages)
uint8_t pageBitmap[64 * 1024 / 8]; // 32 MiB / 4KiB per page / 8 bits per byte
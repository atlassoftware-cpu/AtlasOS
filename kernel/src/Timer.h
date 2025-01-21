#ifndef TIMER_H
#define TIMER_H

#include <stdint.h>

// Function to get the CPU frequency in Hz
uint64_t GetCPUFrequency();

// Function to create a delay using a busy-wait loop with nop instructions
void Delay(uint64_t seconds);

// Function to create a more accurate delay using rdtsc
void AccurateDelay(uint64_t seconds);

#endif // TIMER_H
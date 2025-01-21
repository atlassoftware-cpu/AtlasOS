#include "Timer.h"
#include <stdint.h>

// Function to read the Time Stamp Counter using inline assembly
static inline uint64_t rdtsc() {
    uint32_t lo, hi;
    asm volatile ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

// Function to get the CPU frequency in Hz
uint64_t GetCPUFrequency() {
    uint64_t start, end;
    uint64_t start_time, end_time;
    uint64_t frequency;

    // Measure the start time and CPU cycles
    start_time = rdtsc();
    start = rdtsc();

    // Wait for a short period (e.g., 100ms)
    for (volatile int i = 0; i < 100000000; i++);

    // Measure the end time and CPU cycles
    end_time = rdtsc();
    end = rdtsc();

    // Calculate the elapsed time in cycles
    uint64_t elapsed_cycles = end_time - start_time;

    // Assuming the delay loop takes approximately 100ms
    // Convert 100ms to seconds (0.1 seconds)
    uint64_t elapsed_time_ns = 100000000; // 100ms in nanoseconds

    // Calculate the CPU frequency in Hz
    frequency = (elapsed_cycles * 10) / elapsed_time_ns;

    return frequency;
}

// Function to create a delay using a busy-wait loop with nop instructions
void Delay(uint64_t seconds) {
    uint64_t frequency = GetCPUFrequency();
    uint64_t cycles = seconds * frequency;

    for (uint64_t i = 0; i < cycles; i++) {
        asm volatile ("nop");
    }
}

// Function to create a more accurate delay using rdtsc
void AccurateDelay(uint64_t seconds) {
    uint64_t start, end;
    uint64_t frequency = GetCPUFrequency();
    uint64_t cycles = seconds * frequency;

    start = rdtsc();
    do {
        end = rdtsc();
    } while ((end - start) < cycles);
}
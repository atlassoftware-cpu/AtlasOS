#include "DataLoader.h"

void* LoadDataToMemory(const void* source, size_t size) {
    if (source == NULL || size == 0) {
        return NULL; // Invalid input
    }

    // Page size and calculation
    const size_t PAGE_SIZE = 4096; // Assuming 4KB pages
    size_t pages_needed = (size + PAGE_SIZE - 1) / PAGE_SIZE; // Total pages required

    // Allocate memory for the data
    uint8_t* first_page = (uint8_t*)RequestPage();
    if (!first_page) {
        return NULL; // Allocation failed for the first page
    }

    // Keep track of current destination page and offset
    uint8_t* current_page = first_page;
    size_t remaining_size = size;
    size_t bytes_copied = 0;

    // Copy data across pages
    const uint8_t* src = (const uint8_t*)source;
    while (remaining_size > 0) {
        size_t bytes_to_copy = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;

        // Copy data to the current page
        for (size_t i = 0; i < bytes_to_copy; ++i) {
            current_page[i] = src[bytes_copied + i];
        }

        // Update counters
        bytes_copied += bytes_to_copy;
        remaining_size -= bytes_to_copy;

        // If more data remains, allocate the next page
        if (remaining_size > 0) {
            uint8_t* next_page = (uint8_t*)RequestPage();
            if (!next_page) {
                return NULL; // Allocation failed for subsequent pages
            }

            current_page = next_page;
        }
    }

    return first_page; // Return pointer to the first allocated page
}
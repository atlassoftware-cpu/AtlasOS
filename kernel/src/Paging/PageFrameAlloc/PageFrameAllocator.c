#include "PageFrameAllocator.h"

static uint8_t* pageBitmap;
static uint64_t totalMemorySize;
static uint64_t totalPages;
static uint64_t freePages;

static inline void SetBitmap(uint64_t index, uint8_t value) {
    pageBitmap[index / 8] = (pageBitmap[index / 8] & ~(1 << (index % 8))) | (value << (index % 8));
}

static inline uint8_t GetBitmap(uint64_t index) {
    return (pageBitmap[index / 8] >> (index % 8)) & 1;
}

void InitializePageFrameAllocator(uint64_t memorySize, void* bitmap) {
    totalMemorySize = memorySize;
    totalPages = memorySize / PAGE_SIZE;
    freePages = totalPages;
    pageBitmap = (uint8_t*)bitmap;

    // Mark all pages as free
    for (uint64_t i = 0; i < totalPages; i++) {
        SetBitmap(i, 0);
    }
}

void* RequestPage() {
    for (uint64_t i = 0; i < totalPages; i++) {
        if (GetBitmap(i) == 0) {
            SetBitmap(i, 1);
            freePages--;
            return (void*)(i * PAGE_SIZE);
        }
    }
    return NULL; // No free pages available
}

void FreePage(void* page) {
    uint64_t index = (uint64_t)page / PAGE_SIZE;
    if (GetBitmap(index) == 1) {
        SetBitmap(index, 0);
        freePages++;
    }
}

void* RequestPages(size_t num_pages) {
    void* base_address = RequestPage();
    if (!base_address) {
        return NULL;
    }

    for (size_t i = 1; i < num_pages; ++i) {
        void* page_address = RequestPage();
        if (!page_address) {
            FreePages(base_address, i);
            return NULL;
        }
    }

    return base_address;
}

void FreePages(void* base_address, size_t num_pages) {
    for (size_t i = 0; i < num_pages; ++i) {
        FreePage((uint8_t*)base_address + i * PAGE_SIZE);
    }
}
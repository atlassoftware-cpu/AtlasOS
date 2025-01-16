#pragma once
#include <stdint.h>
#include <stddef.h>

#define PAGE_SIZE 4096

void InitializePageFrameAllocator(uint64_t memorySize, void* bitmap);
void* RequestPage();
void FreePage(void* page);
void* RequestPages(size_t num_pages);
void FreePages(void* base_address, size_t num_pages);
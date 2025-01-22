#include "IDT.h"

#define IDT_MAX_DESCRIPTORS 256

typedef struct {
    uint16_t isr_low;
    uint16_t kernel_cs;
    uint8_t  ist;
    uint8_t  attributes;
    uint16_t isr_mid;
    uint32_t isr_high;
    uint32_t reserved;
} __attribute__((packed)) IDTEntry;

__attribute((aligned(0x10)))
static IDTEntry idt[256];

typedef struct {
    uint16_t limit;
    uint64_t base;
} __attribute__((packed)) IDTR;

static IDTR idtr;

extern void _memset(void*, void*, size_t);
extern void _memset32(void*, void*, size_t);

__attribute__((noreturn))
void excepetion_handler(void);
void exception_handler() {
    _memset32(fb->address, (void*) 0x0000FF, fb->width * fb->height);
    font_str("Oops! AtlasOS has ran into an error :(", 12, 12, 0xEEEEEEFF);
    font_str("AtlasSuper-POWER: You may now change the power state of the machine...", 12, 20, 0xEEEEEEFF);
    font_str("Halting the machine...", 12, 28, 0xEEEEEEFF);
    __asm__ volatile ("cli\n"
                      "hlt");
}

void idt_set_descriptor(uint8_t vector, void* isr, uint8_t flags);
void idt_set_descriptor(uint8_t vector, void* isr, uint8_t flags) {
    IDTEntry* descriptor = &idt[vector];

    descriptor->isr_low        = (uint64_t)isr & 0xFFFF;
    descriptor->kernel_cs      = 0x08;
    descriptor->ist            = 0;
    descriptor->attributes     = flags;
    descriptor->isr_mid        = ((uint64_t)isr >> 16) & 0xFFFF;
    descriptor->isr_high       = ((uint64_t)isr >> 32) & 0xFFFFFFFF;
    descriptor->reserved       = 0;
}

static bool vectors[IDT_MAX_DESCRIPTORS];

extern void* isr_stub_table[];

void idt_init(void);
void idt_init() {
    idtr.base = (uintptr_t)&idt[0];
    idtr.limit = (uint16_t)sizeof(IDTEntry) * IDT_MAX_DESCRIPTORS - 1;

    for (uint8_t vector = 0; vector < 32; vector++) {
        idt_set_descriptor(vector, isr_stub_table[vector], 0x8E);
        vectors[vector] = true;
    }

    __asm__ volatile ("lidt %0" : : "m"(idtr)); // load the new IDT
}

void idt_reinit(void);
void idt_reinit() {
    idt_init();
}
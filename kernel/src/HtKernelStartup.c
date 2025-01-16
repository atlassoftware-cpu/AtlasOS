#include <limine.h>
#include <GDT/GDT.h>
#include <Paging/PageFrameAlloc/PageFrameAllocator.h>
#include <Paging/PageFrameAlloc/Memory.h>
#include <CPU/IO/IO.h>
#include <AtlasSoftwareRequestService/AtlasSoftwareRequestService.h>
#include <Bitmaps/BitmapDraw.h>
#include <Icons.h>
#include <WindowMgr/WindowMgr.h>
#include <DataLoader/DataLoader.h>
#include <FontRenderer/FontRenderer.h>
#include <IDT/IDT.h>
#include <Interrupts/InterruptDescriptors.h>
#include <Interrupts/UserInput/Write.h>

__attribute__((section("._HtKernel"))) _Noreturn static void _HtKernelStartup(struct limine_framebuffer* framebuffer);

__attribute__((section("._HtKernel"))) void _HtKernelLoad(struct limine_framebuffer* fb) {
    _HtKernelStartup(fb);

    while (1) {}
}

#include <stdint.h>
#include <stddef.h>

#define PIC1_COMMAND 0x20
#define PIC1_DATA    0x21
#define PIC2_COMMAND 0xA0
#define PIC2_DATA    0xA1

void IRQ_set_mask(uint8_t IRQline) {
    uint16_t port;
    uint8_t value;

    if (IRQline < 8) {
        port = PIC1_DATA;
    } else {
        port = PIC2_DATA;
        IRQline -= 8;
    }
    value = inb(port) | (1 << IRQline);
    outb(port, value);
}

void IRQ_clear_mask(uint8_t IRQline) {
    uint16_t port;
    uint8_t value;

    if (IRQline < 8) {
        port = PIC1_DATA;
    } else {
        port = PIC2_DATA;
        IRQline -= 8;
    }
    value = inb(port) & ~(1 << IRQline);
    outb(port, value);
}

void PIC_remap(int offset1, int offset2) {
    uint8_t a1, a2;

    a1 = inb(PIC1_DATA); // Save masks
    a2 = inb(PIC2_DATA);

    outb(PIC1_COMMAND, 0x11); // Start the initialization sequence (in cascade mode)
    IOWait();
    outb(PIC2_COMMAND, 0x11);
    IOWait();
    outb(PIC1_DATA, offset1); // ICW2: Master PIC vector offset
    IOWait();
    outb(PIC2_DATA, offset2); // ICW2: Slave PIC vector offset
    IOWait();
    outb(PIC1_DATA, 4); // ICW3: Tell Master PIC that there is a slave PIC at IRQ2 (0000 0100)
    IOWait();
    outb(PIC2_DATA, 2); // ICW3: Tell Slave PIC its cascade identity (0000 0010)
    IOWait();

    outb(PIC1_DATA, 0x01); // ICW4: 8086/88 (MCS-80/85) mode
    IOWait();
    outb(PIC2_DATA, 0x01);
    IOWait();

    outb(PIC1_DATA, a1); // Restore saved masks
    outb(PIC2_DATA, a2);
}

__attribute__((section("._HtKernel"))) _Noreturn static void _HtKernelStartup(struct limine_framebuffer* framebuffer) {

    GDTDescriptor gdtDesc;
    gdtDesc.Size = sizeof(GDT) - 1;
    gdtDesc.Offset = (uint64_t)&DefaultGDT;
    LoadGDT(&gdtDesc); // Load the GDT

    (void)framebuffer;

    // Initialize the page frame allocator
    extern uint64_t memorySize; // Define this variable with the total memory size
    extern uint8_t pageBitmap[]; // Define this array as the bitmap storage
    InitializePageFrameAllocator(memorySize, pageBitmap);

    outb(0x60, 0xED);
    IOWait();
    outb(0x60, 0b11100000);
    IOWait();
    if (inb(0x60) != 0xFA) {
        int i = 0 / 0;
    }

    fb = framebuffer;

    // Show the logo as loading

    DrawBmp(AtlasOSLogo, framebuffer->width/2-128, framebuffer->height/2-128, 1, 1);

    // Load the kernel font

    size_t String_Length_Px = 17*8; /* = 136 */

    font_str("Loading Kernel...", framebuffer->width/2-(String_Length_Px/2), framebuffer->height/2-(8/2)+135, 0xFFFFFFFF);

    PIC_remap(0x20, 0x28);

    idt_set_descriptor(0x21, &kb, 0x8E);
    idt_set_descriptor(0x2C, &mouse, 0x8E);
    idt_set_descriptor(0x80, &syscall, 0x8F);

    idt_init();

    IRQ_clear_mask(1);

    InitializeScreenGrid(framebuffer);

    while (1) {}
}
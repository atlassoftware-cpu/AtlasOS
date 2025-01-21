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
#include <Interrupts/UserInput/Mouse/Mouse.h>
#include <CMOS/CMOS.h>
#include <CStr.h>
#include <Timer.h>

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

void SetKeyboardRateAndDelay(uint8_t delay, uint8_t rate) {
    outb(0x60, 0xF3);         // Set Rate and Delay command
    while (inb(0x60) != 0xFA); // Wait for ACK
    
    outb(0x60, delay);         // Send Delay (0-3)
    while (inb(0x60) != 0xFA); // Wait for ACK
    
    outb(0x60, rate);          // Send Rate (0-3)
    while (inb(0x60) != 0xFA); // Wait for ACK
}

void PrintHexToSerial(uint32_t hex_num) {
    // Buffer to store the hex string
    char hex_string[9];  // 8 hex digits + null terminator
    uint32_t num = hex_num;

    // Convert the hex number to a string (8 hex characters)
    for (int i = 7; i >= 0; i--) {
        uint8_t hex_digit = num & 0xF;
        hex_string[i] = (hex_digit < 10) ? (hex_digit + '0') : (hex_digit - 10 + 'A');
        num >>= 4;
    }
    hex_string[8] = '\0';  // Null terminate the string

    // Print the hex string to the serial (port 0xE9)
    for (int i = 0; hex_string[i] != '\0'; i++) {
        outb(0xE9, hex_string[i]);  // Send each character to port 0xE9
    }
}

extern char* _strcpy(char* destination, const char* source);

uint64_t ticks = 0;

__attribute__((interrupt)) void rtc(InterruptFrame* Frame) {
    PrintHexToSerial(ticks++);
}

uint64_t slow_fibonacci(uint64_t n) {
    // Horribly inefficient Fibonacci using recursion with no memoization
    if (n <= 1) {
        return n;
    } else {
        return slow_fibonacci(n - 1) + slow_fibonacci(n - 2);
    }
}

void slow_operation() {
    // Step 2: Call the slow Fibonacci function many times in a loop
    for (volatile int i = 0; i < 1; i++) {
        volatile uint64_t fib_result = slow_fibonacci(40);  // Fibonacci(40) is extremely slow to compute
        if (fib_result % 2 == 0) {
            // Just to further waste time
            volatile int dummy = fib_result;
        }
    }
}

__attribute__((hot, used)) void RefreshOSWidgets();

void SlideUp(uint32_t color) {
    uint32_t* buffer = (uint32_t*)fb->address;

    for (int y = fb->height - 1; y >= 0; y--) {
        for (int x = 0; x < fb->width; x++) {
            buffer[y * fb->width + x] = color;
        }
        // Delay function to create the sliding effect
        for (volatile int delay = 0; delay < 100000; delay++);
    }
}

int ENABLED_MENU_ICON = 0;

void EnableMenuIcon() {
    if (ENABLED_MENU_ICON == 0) {
        ENABLED_MENU_ICON = 1;
        /*  Menu Window */
        /* show new screen */
        SlideUp(0xFF1E1E1E);
        for (int x = 0; x <= fb->width; x++) {
            for (int y = 0; y <= 22; y++) {
                PutPx(x, y, 0xFF2F2F2F);
            }
        }
        font_char('X', fb->width-16, 8, 0xFFE81123);
        Button_t EXIT = CreateButton("X", &EnableMenuIcon, fb->width-16, 8, 22, 22);
        SetBtnEnabled(EXIT);
    } else {
        ENABLED_MENU_ICON = 0;
        // Add code to close the menu here
        RefreshOSWidgets(); // Refresh the widgets after closing the menu
    }
}

__attribute__((hot, used)) void RefreshOSWidgets() {
    uint32_t* buffer = (uint32_t*)fb->address;

    uint8_t top_r = 0, top_g = 128, top_b = 255;   // Intense light blue (top)
    uint8_t bottom_r = 0, bottom_g = 64, bottom_b = 128; // Intense deep blue (bottom)

    for (int y = 0; y < fb->height; y++) {
        int t = (y * 256) / (fb->height - 1); // Interpolation factor (0 to 256)

        // Interpolate colors using fixed-point arithmetic
        uint8_t r = ((256 - t) * top_r + t * bottom_r) / 256;
        uint8_t g = ((256 - t) * top_g + t * bottom_g) / 256;
        uint8_t b = ((256 - t) * top_b + t * bottom_b) / 256;

        // Combine RGB into a 32-bit color
        uint32_t color = (r << 16) | (g << 8) | b;

        for (int x = 0; x < fb->width; x++) {
            buffer[y * fb->width + x] = color;
        }
    }

    for (int x = 0; x < fb->width; x++) {
        for (int y = fb->height - 1; y >= fb->height - 50; y--) {
            buffer[y * fb->width + x] = 0xFF1E1E1E;
        }
    }

    DrawBmp(DesktopAccess, fb->width-36, fb->height-50/2-(32/2), 2, 2);
    DrawBmp(MenuIcon, fb->width/2-(16), fb->height-50/2-(32/2), 2, 2);
    DrawBmp(Clock, (32/2), fb->height-50/2-(32/2), 2, 2);
    DrawBmp(PowerIcon, fb->width/2+(16), fb->height-50/2-(32/2), 2, 2);
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

    //slow_operation();

    idt_set_descriptor(0x21, &kb, 0x8E);
    idt_set_descriptor(0x2C, &mouse, 0x8E);
    idt_set_descriptor(0x80, &syscall, 0x8F);

    idt_init();

    PIC_remap(0x20, 0x28);

    outb(0x21, 0b11111001);
    outb(0xA1, 0b11011111);
    IRQ_clear_mask(1);
    IRQ_clear_mask(2);
    IRQ_clear_mask(12);

    __asm__ volatile ("sti"); // set the interrupt flag

    InitPS2Mouse(); 

    uint32_t* buffer = (uint32_t*)fb->address;

    uint8_t top_r = 0, top_g = 128, top_b = 255;   // Intense light blue (top)
    uint8_t bottom_r = 0, bottom_g = 64, bottom_b = 128; // Intense deep blue (bottom)

    SlideUp(0x007Cf8);

    for (int y = 0; y < fb->height; y++) {
        int t = (y * 256) / (fb->height - 1); // Interpolation factor (0 to 256)

        // Interpolate colors using fixed-point arithmetic
        uint8_t r = ((256 - t) * top_r + t * bottom_r) / 256;
        uint8_t g = ((256 - t) * top_g + t * bottom_g) / 256;
        uint8_t b = ((256 - t) * top_b + t * bottom_b) / 256;

        // Combine RGB into a 32-bit color
        uint32_t color = (r << 16) | (g << 8) | b;

        for (int x = 0; x < fb->width; x++) {
            buffer[y * fb->width + x] = color;
        }
    }

    for (int x = 0; x < fb->width; x++) {
        for (int y = fb->height - 1; y >= fb->height - 50; y--) {
            buffer[y * fb->width + x] = 0xFF1E1E1E;
        }
    }

    DrawBmp(DesktopAccess, fb->width-36, fb->height-50/2-(32/2), 2, 2);
    DrawBmp(MenuIcon, fb->width/2-(16), fb->height-50/2-(32/2), 2, 2);
    DrawBmp(Clock, (32/2), fb->height-50/2-(32/2), 2, 2);
    DrawBmp(PowerIcon, fb->width/2+(16), fb->height-50/2-(32/2), 2, 2);

    InitWindowManager(framebuffer);

    Button_t BtnMenuAccess = CreateButton("Menu Access", &EnableMenuIcon, fb->width/2-(16), fb->height-50/2-(32/2), 32, 32);
    SetBtnEnabled(BtnMenuAccess);

    while (1) {
        ProcessMousePacket();
    }

    while (1) {}
}

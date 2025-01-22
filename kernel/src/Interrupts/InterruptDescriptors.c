// filepath: /Ubuntu/home/nanosoft/AtlasSoftware/AtlasOS/kernel/src/Interrupts/InterruptDescriptors.c

#include "InterruptDescriptors.h"
#include <CPU/IO/IO.h>
#include "UserInput/UserInput.h"
#include <GLOBAL.h>

__attribute__((interrupt)) void kb(InterruptFrame* Frame) {
    if (ALLOW_WRITE == 0) {
        outb(0x20, 0x20);  // Acknowledge the interrupt on master PIC
        return;
    }
    uint8_t scancode = inb(0x60);
    
    if (scancode & 0x80) {
        outb(0x20, 0x20);  // Acknowledge the interrupt on master PIC
        IOWait();
        return;
    }

    HandleKbd(scancode);
    outb(0x20, 0x20);  // Acknowledge the interrupt on master PIC
}

__attribute__((interrupt)) void mouse(InterruptFrame* Frame) {
    uint8_t data = inb(0x60);  // Read data from mouse
    HandlePS2Mouse(data);
    ProcessMousePacket();  // Process the mouse packet
    outb(0x20, 0x20);  // Acknowledge interrupt on master PIC
    outb(0xA0, 0x20);  // Acknowledge interrupt on slave PIC
}


#pragma region ReadRegs_t
typedef struct {
    unsigned long rax;
    unsigned long rbx;
    unsigned long rcx;
    unsigned long rdx;
    unsigned long rsi;
    unsigned long rdi;
    unsigned long rsp;
    unsigned long rbp;
    unsigned long r8;
    unsigned long r9;
    unsigned long r10;
    unsigned long r11;
    unsigned long r12;
    unsigned long r13;
    unsigned long r14;
    unsigned long r15;
} RegTable_t;

RegTable_t* ReadRegs() {
    static RegTable_t regs;

    __asm__ __volatile__(
        "mov %%rax, %0\n"
        "mov %%rbx, %1\n"
        "mov %%rcx, %2\n"
        "mov %%rdx, %3\n"
        "mov %%rsi, %4\n"
        "mov %%rdi, %5\n"
        "mov %%rsp, %6\n"
        "mov %%rbp, %7\n"
        "mov %%r8, %8\n"
        "mov %%r9, %9\n"
        "mov %%r10, %10\n"
        "mov %%r11, %11\n"
        "mov %%r12, %12\n"
        "mov %%r13, %13\n"
        "mov %%r14, %14\n"
        "mov %%r15, %15\n"
        : "=m"(regs.rax), "=m"(regs.rbx), "=m"(regs.rcx), "=m"(regs.rdx),
          "=m"(regs.rsi), "=m"(regs.rdi), "=m"(regs.rsp), "=m"(regs.rbp),
          "=m"(regs.r8), "=m"(regs.r9), "=m"(regs.r10), "=m"(regs.r11),
          "=m"(regs.r12), "=m"(regs.r13), "=m"(regs.r14), "=m"(regs.r15)
    );

    return &regs;
}
#pragma endregion

__attribute__((interrupt)) void syscall(InterruptFrame* Frame) {
    RegTable_t* regs = ReadRegs();
    uint64_t syscall_num = regs->rax;
    uint64_t arg1 = regs->rbx;
    uint64_t arg2 = regs->rcx;
    uint64_t arg3 = regs->rdx;
    uint64_t arg4 = regs->rsi;
    uint64_t arg5 = regs->rdi;

    switch (syscall_num) {
        case 0:  // Print to serial
            for (int i = 0; i < arg1; i++) {
                if (!CONSOLE_OPEN) {
                    StartConsole();
                    ConsoleWriteChar(((char*)arg2)[i]);
                } else {
                    ConsoleWriteChar(((char*)arg2)[i]);
                }
            }
            break;
    }
}
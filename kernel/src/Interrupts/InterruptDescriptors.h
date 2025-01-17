// filepath: /Ubuntu/home/nanosoft/AtlasSoftware/AtlasOS/kernel/src/Interrupts/InterruptDescriptors.h
#pragma once

#include <stdint.h>

typedef struct _interrupt_frame_t {
    uint64_t rip;
    uint64_t cs;
    uint64_t rflags;
    uint64_t rsp;
    uint64_t ss;
    uint64_t rdi;
    uint64_t rsi;
    uint64_t rdx;
    uint64_t rcx;
    uint64_t rax;
    uint64_t r8;
    uint64_t r9;
    uint64_t r10;
    uint64_t r11;
    uint64_t r12;
    uint64_t r13;
    uint64_t r14;
    uint64_t r15;
    uint64_t rbp;
} InterruptFrame;

__attribute__((interrupt)) void kb(InterruptFrame* Frame);
__attribute__((interrupt)) void mouse(InterruptFrame* Frame);
__attribute__((interrupt)) void syscall(InterruptFrame* Frame);
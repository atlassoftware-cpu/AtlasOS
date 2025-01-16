#include "GDT.h"

GDT DefaultGDT = {
    {0, 0, 0, 0x00, 0x00, 0}, // null
    {0xFFFF, 0, 0, 0x9A, 0xA0, 0}, // kernel code segment
    {0xFFFF, 0, 0, 0x92, 0xA0, 0}, // kernel data segment
    {0, 0, 0, 0x00, 0x00, 0}, // user null
    {0xFFFF, 0, 0, 0xFA, 0xA0, 0}, // user code segment
    {0xFFFF, 0, 0, 0xF2, 0xA0, 0}  // user data segment
};
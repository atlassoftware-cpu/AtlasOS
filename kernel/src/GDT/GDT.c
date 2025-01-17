#include "GDT.h"

GDT DefaultGDT = {
    {0, 0, 0, 0x00, 0x00, 0},       // null descriptor
    {0xFFFF, 0, 0, 0x9A, 0xA0, 0},   // kernel code segment (0x08)
    {0xFFFF, 0, 0, 0x92, 0xA0, 0},   // kernel data segment (0x10)
    {0, 0, 0, 0x00, 0x00, 0},        // null descriptor (user space not used)
    {0, 0, 0, 0x00, 0x00, 0},        // null descriptor (user space not used)
    {0, 0, 0, 0x00, 0x00, 0}         // null descriptor (user space not used)
};

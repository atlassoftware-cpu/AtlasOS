#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <FontRenderer/FontRenderer.h>
#include <Bitmaps/BitmapDraw.h>

__attribute__((noreturn)) void exception_handler(void);
void idt_set_descriptor(uint8_t vector, void* isr, uint8_t flags);
void idt_init(void);
void idt_reinit(void);

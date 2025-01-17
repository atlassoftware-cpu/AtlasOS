#pragma once

#include <stdint.h>
#include <stddef.h>

#include <Icons.h>

void font_char(char c, size_t x, size_t y, uint32_t color);
void font_str(const char *s, size_t x, size_t y, uint32_t color);
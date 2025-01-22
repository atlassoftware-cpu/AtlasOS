#ifndef GLOBAL_H
#define GLOBAL_H

// Include necessary headers
#include <stdint.h>
#include <stddef.h>
#include <Point.h>
#include <Bitmaps/BitmapDraw.h>

// Declare global variables and functions
extern int ALLOW_WRITE;
extern int CONSOLE_OPEN;

void StartConsole();
void InitConsole();
void ConsoleWriteChar(char c);
void ConsoleWrite(char* s);
void ConsoleNWrite(char* s, size_t len);

#endif // GLOBAL_H
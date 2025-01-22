#include <GLOBAL.h>

extern void RefreshOSWidgets(void);

void StartConsole() {
    CONSOLE_OPEN = 1;
    uint32_t* buffer = (uint32_t*)fb->address;
    for (int y = 0; y < fb->height; y++) {
        for (int x = 0; x < fb->width; x++) {
            buffer[y * fb->width + x] = 0xFF1E1E1E;
        }
    }
    for (int x = 0; x <= fb->width; x++) {
        for (int y = 0; y <= 22; y++) {
            PutPx(x, y, 0xFF2F2F2F);
        }
    }
    font_char('X', fb->width-16, 8, 0xFFE81123);
}

void EXIT_CON() {
    CONSOLE_OPEN = 0;
    for (int x = 0; x < fb->width; x++) {
        for (int y = 0; y < fb->height; y++) {
            RefreshOSWidgets();
        }
    }
}

int XGrid = 0;
int YGrid = 0;

Point ConsoleCursor = {8, 30};

__attribute__((used))
void InitConsole() {
    XGrid = fb->width / 8;
    YGrid = fb->height / 8;

    Button_t EXIT_CON = CreateButton("X", &EXIT_CON, fb->width-16, 8, 22, 22);
    SetBtnEnabled(EXIT_CON);
}

void ConsoleWriteChar(char c) {
    if (c == '\n') {
        ConsoleCursor.X = 8;
        ConsoleCursor.Y += 8; // Move down by one character height
        if (ConsoleCursor.Y >= fb->height) {
            ConsoleCursor.Y = 30;
        }
    } else if (c == '\b') {
        ConsoleCursor.X -= 8; // Move back by one character width
        if (ConsoleCursor.X < 8) {
            ConsoleCursor.X = fb->width - 8;
            ConsoleCursor.Y -= 8;
            if (ConsoleCursor.Y < 30) {
                ConsoleCursor.Y = 30;
            }
            for (int x = ConsoleCursor.X; x < ConsoleCursor.X + 8; x++) {
                for (int y = ConsoleCursor.Y; y < ConsoleCursor.Y + 8; y++) {
                    PutPx(x, y, 0xFF1E1E1E);
                }
            }
        }
    } else {
        font_char(c, ConsoleCursor.X, ConsoleCursor.Y, 0xFFFFFF);
        ConsoleCursor.X += 8; // Move forward by one character width
        if (ConsoleCursor.X >= fb->width) {
            ConsoleCursor.X = 8;
            ConsoleCursor.Y += 8; // Move down by one character height
            if (ConsoleCursor.Y >= fb->height) {
                ConsoleCursor.Y = 30;
            }
        }
    }
}

__attribute__((hot, used))
void ConsoleWrite(char* s) {
    while (*s) {
        ConsoleWriteChar(*s);
        s++;
    }
}

__attribute__((hot, used))
void ConsoleNWrite(char* s, size_t len) {
    for (size_t i = 0; i < len; i++) {
        ConsoleWriteChar(s[i]);
    }
}
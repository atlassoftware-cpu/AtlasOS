#pragma once

typedef struct {
    uint8_t second;   // 0-59
    uint8_t minute;   // 0-59
    uint8_t hour;     // 0-23
    uint8_t day;      // 1-31
    uint8_t month;    // 1-12
    uint16_t year;    // 1900-2099
    uint16_t century; // 20-21 (or more based on your needs)
} Time;

uint8_t readCmosByte(uint8_t reg);
uint8_t bcdToDec(uint8_t bcd);
Time ReadCmos();
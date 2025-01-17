#include <stdint.h>
#include "CMOS.h"

// Function to read a byte from the CMOS RTC
uint8_t readCmosByte(uint8_t reg) {
    outb(0x70, reg);  // Select the register
    return inb(0x71); // Read the value from the data port
}

// Convert BCD to integer
uint8_t bcdToDec(uint8_t bcd) {
    return ((bcd >> 4) * 10) + (bcd & 0x0F);
}

// Function to read the time from CMOS
Time ReadCmos() {
    Time currentTime;

    // Read the time from CMOS
    currentTime.second = bcdToDec(readCmosByte(0x00));   // Seconds (0-59)
    currentTime.minute = bcdToDec(readCmosByte(0x02));   // Minutes (0-59)
    currentTime.hour = bcdToDec(readCmosByte(0x04));     // Hour (0-23)
    currentTime.day = bcdToDec(readCmosByte(0x07));      // Day of month (1-31)
    currentTime.month = bcdToDec(readCmosByte(0x08));    // Month (1-12)
    currentTime.year = bcdToDec(readCmosByte(0x09)) + 2000; // Year (1900-2099)

    // Determine the century
    uint8_t centuryRegister = readCmosByte(0x32); // Some RTC chips store century in a specific register
    currentTime.century = (centuryRegister / 100) + 20; // Assuming a 20th or 21st century (you can adjust this if needed)

    return currentTime;
}

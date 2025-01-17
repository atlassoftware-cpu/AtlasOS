#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#pragma pack(push, 1)
typedef struct {
    uint16_t type;
    uint32_t size;
    uint16_t reserved1;
    uint16_t reserved2;
    uint32_t offset;
} BMPHeader;

typedef struct {
    uint32_t size;
    int32_t width;
    int32_t height;
    uint16_t planes;
    uint16_t bitCount;
    uint32_t compression;
    uint32_t imageSize;
    int32_t xResolution;
    int32_t yResolution;
    uint32_t colorsUsed;
    uint32_t importantColors;
} DIBHeader;
#pragma pack(pop)

void convertRawToBMP(const char* inputFileName, const char* outputFileName, int width, int height) {
    FILE *inputFile = fopen(inputFileName, "rb");
    if (!inputFile) {
        perror("Failed to open input file");
        return;
    }

    // Get the size of the input file
    fseek(inputFile, 0, SEEK_END);
    long fileSize = ftell(inputFile);
    fseek(inputFile, 0, SEEK_SET);

    // Read raw data from the file
    unsigned char *rawData = malloc(fileSize);
    if (rawData == NULL) {
        perror("Memory allocation failed");
        fclose(inputFile);
        return;
    }

    fread(rawData, 1, fileSize, inputFile);
    fclose(inputFile);

    // Setup BMP Header
    BMPHeader bmpHeader;
    bmpHeader.type = 0x4D42;  // 'BM'
    bmpHeader.size = sizeof(BMPHeader) + sizeof(DIBHeader) + fileSize;
    bmpHeader.reserved1 = 0;
    bmpHeader.reserved2 = 0;
    bmpHeader.offset = sizeof(BMPHeader) + sizeof(DIBHeader);

    // Setup DIB Header
    DIBHeader dibHeader;
    dibHeader.size = sizeof(DIBHeader);
    dibHeader.width = width;
    dibHeader.height = height;
    dibHeader.planes = 1;
    dibHeader.bitCount = 32; // 32-bit BMP (RGBA)
    dibHeader.compression = 0;
    dibHeader.imageSize = fileSize;
    dibHeader.xResolution = 0;
    dibHeader.yResolution = 0;
    dibHeader.colorsUsed = 0;
    dibHeader.importantColors = 0;

    // Create the output BMP file
    FILE *outputFile = fopen(outputFileName, "wb");
    if (!outputFile) {
        perror("Failed to create output file");
        free(rawData);
        return;
    }

    // Write BMP Header
    fwrite(&bmpHeader, sizeof(BMPHeader), 1, outputFile);

    // Write DIB Header
    fwrite(&dibHeader, sizeof(DIBHeader), 1, outputFile);

    // Write the raw pixel data
    fwrite(rawData, 1, fileSize, outputFile);

    fclose(outputFile);
    free(rawData);

    printf("BMP file created successfully: %s\n", outputFileName);
}

int main() {
    const char *inputFileName = "rawimage.raw";  // Raw image file (8624 bytes)
    const char *outputFileName = "output.bmp";  // Output BMP file
    int width = 64;  // Width of the image (adjust as needed)
    int height = 134; // Height of the image (adjust as needed)

    convertRawToBMP(inputFileName, outputFileName, width, height);
    return 0;
}

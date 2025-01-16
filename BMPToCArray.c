#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// Function to read a BMP file and store its data into a uint8_t array
uint8_t* read_bmp_to_uint8(const char* file_path, size_t* file_size) {
    FILE* file = fopen(file_path, "rb");
    if (!file) {
        perror("Failed to open BMP file");
        return NULL;
    }

    // Seek to the end to determine file size
    fseek(file, 0, SEEK_END);
    *file_size = ftell(file);
    rewind(file);

    // Allocate memory to hold the BMP file data
    uint8_t* data = (uint8_t*)malloc(*file_size);
    if (!data) {
        perror("Failed to allocate memory");
        fclose(file);
        return NULL;
    }

    // Read the BMP file into the allocated memory
    if (fread(data, 1, *file_size, file) != *file_size) {
        perror("Failed to read BMP file");
        free(data);
        fclose(file);
        return NULL;
    }

    fclose(file);
    return data;
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <bmp_file_path>\n", argv[0]);
        return 1;
    }

    size_t file_size = 0;
    uint8_t* bmp_data = read_bmp_to_uint8(argv[1], &file_size);
    if (!bmp_data) {
        return 1;
    }

    printf("BMP file successfully read!\n");
    printf("File size: %zu bytes\n", file_size);

    // Write the BMP data to an output text file as a uint8_t array
    char output_file[256];
    snprintf(output_file, sizeof(output_file), "%s.out.txt", argv[1]);

    FILE* out_file = fopen(output_file, "w");
    if (!out_file) {
        perror("Failed to create output file");
        free(bmp_data);
        return 1;
    }

    // Extract the file name without extension for variable name
    char var_name[256];
    snprintf(var_name, sizeof(var_name), "%s", argv[1]);
    char* dot = strrchr(var_name, '.');
    if (dot) *dot = '\0'; // Remove the extension

    fprintf(out_file, "uint8_t %s[] = {\n", var_name);
    for (size_t i = 0; i < file_size; i++) {
        fprintf(out_file, "0x%02X%s", bmp_data[i], (i < file_size - 1) ? ", " : "");
        if ((i + 1) % 16 == 0) {
            fprintf(out_file, "\n");
        }
    }
    fprintf(out_file, "\n};\n");

    fclose(out_file);
    printf("BMP data written to %s\n", output_file);

    // Clean up
    free(bmp_data);
    return 0;
}
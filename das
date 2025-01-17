[1mdiff --git a/.github/ISSUE_TEMPLATE/bug_report.md b/.github/ISSUE_TEMPLATE/bug_report.md[m
[1mdeleted file mode 100644[m
[1mindex dd84ea7..0000000[m
[1m--- a/.github/ISSUE_TEMPLATE/bug_report.md[m
[1m+++ /dev/null[m
[36m@@ -1,38 +0,0 @@[m
[31m----[m
[31m-name: Bug report[m
[31m-about: Create a report to help us improve[m
[31m-title: ''[m
[31m-labels: ''[m
[31m-assignees: ''[m
[31m-[m
[31m----[m
[31m-[m
[31m-**Describe the bug**[m
[31m-A clear and concise description of what the bug is.[m
[31m-[m
[31m-**To Reproduce**[m
[31m-Steps to reproduce the behavior:[m
[31m-1. Go to '...'[m
[31m-2. Click on '....'[m
[31m-3. Scroll down to '....'[m
[31m-4. See error[m
[31m-[m
[31m-**Expected behavior**[m
[31m-A clear and concise description of what you expected to happen.[m
[31m-[m
[31m-**Screenshots**[m
[31m-If applicable, add screenshots to help explain your problem.[m
[31m-[m
[31m-**Desktop (please complete the following information):**[m
[31m- - OS: [e.g. iOS][m
[31m- - Browser [e.g. chrome, safari][m
[31m- - Version [e.g. 22][m
[31m-[m
[31m-**Smartphone (please complete the following information):**[m
[31m- - Device: [e.g. iPhone6][m
[31m- - OS: [e.g. iOS8.1][m
[31m- - Browser [e.g. stock browser, safari][m
[31m- - Version [e.g. 22][m
[31m-[m
[31m-**Additional context**[m
[31m-Add any other context about the problem here.[m
[1mdiff --git a/.github/ISSUE_TEMPLATE/feature_request.md b/.github/ISSUE_TEMPLATE/feature_request.md[m
[1mdeleted file mode 100644[m
[1mindex bbcbbe7..0000000[m
[1m--- a/.github/ISSUE_TEMPLATE/feature_request.md[m
[1m+++ /dev/null[m
[36m@@ -1,20 +0,0 @@[m
[31m----[m
[31m-name: Feature request[m
[31m-about: Suggest an idea for this project[m
[31m-title: ''[m
[31m-labels: ''[m
[31m-assignees: ''[m
[31m-[m
[31m----[m
[31m-[m
[31m-**Is your feature request related to a problem? Please describe.**[m
[31m-A clear and concise description of what the problem is. Ex. I'm always frustrated when [...][m
[31m-[m
[31m-**Describe the solution you'd like**[m
[31m-A clear and concise description of what you want to happen.[m
[31m-[m
[31m-**Describe alternatives you've considered**[m
[31m-A clear and concise description of any alternative solutions or features you've considered.[m
[31m-[m
[31m-**Additional context**[m
[31m-Add any other context or screenshots about the feature request here.[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..e6967fd[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m/kernel-deps[m
[32m+[m[32m/limine[m
[32m+[m[32m/ovmf[m
[32m+[m[32m*.iso[m
[32m+[m[32m*.hdd[m
[1mdiff --git a/.vscode/c_cpp_properties.json b/.vscode/c_cpp_properties.json[m
[1mnew file mode 100644[m
[1mindex 0000000..33db3c9[m
[1m--- /dev/null[m
[1m+++ b/.vscode/c_cpp_properties.json[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "configurations": [[m
[32m+[m[32m        {[m
[32m+[m[32m            "name": "Win32",[m
[32m+[m[32m            "includePath": [[m
[32m+[m[32m                "${default}",[m
[32m+[m[32m                "${workspaceFolder}/**",[m
[32m+[m[32m                "${workspaceFolder}/src/**",[m
[32m+[m[32m                "${workspaceFolder}/freestnd-c-hdrs/x86_64/include",[m
[32m+[m[32m                "${workspaceFolder}/freestnd-cxx-hdrs/x86_64/include",[m
[32m+[m[32m            ],[m
[32m+[m[32m            "defines": [[m
[32m+[m[32m                "_DEBUG",[m
[32m+[m[32m                "UNICODE",[m
[32m+[m[32m                "_UNICODE"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "compilerPath": "C:\\Program Files (x86)\\gcc-14.2.0-no-debug\\bin\\gcc.exe",[m
[32m+[m[32m            "cStandard": "c17",[m
[32m+[m[32m            "cppStandard": "gnu++17",[m
[32m+[m[32m            "intelliSenseMode": "linux-clang-x64"[m
[32m+[m[32m        }[m
[32m+[m[32m    ],[m
[32m+[m[32m    "version": 4[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/.vscode/settings.json b/.vscode/settings.json[m
[1mnew file mode 100644[m
[1mindex 0000000..5d744ec[m
[1m--- /dev/null[m
[1m+++ b/.vscode/settings.json[m
[36m@@ -0,0 +1,7 @@[m
[32m+[m[32m{[m[41m[m
[32m+[m[32m    "files.associations": {[m[41m[m
[32m+[m[32m        "cstdint": "cpp",[m[41m[m
[32m+[m[32m        "string.h": "c",[m[41m[m
[32m+[m[32m        "stdlib.h": "c"[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/AtlasOS.zip b/AtlasOS.zip[m
[1mdeleted file mode 100644[m
[1mindex 73dc47e..0000000[m
Binary files a/AtlasOS.zip and /dev/null differ
[1mdiff --git a/BMPToCArray.c b/BMPToCArray.c[m
[1mnew file mode 100644[m
[1mindex 0000000..35586e1[m
[1m--- /dev/null[m
[1m+++ b/BMPToCArray.c[m
[36m@@ -0,0 +1,85 @@[m
[32m+[m[32m#include <stdio.h>[m[41m[m
[32m+[m[32m#include <stdlib.h>[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Function to read a BMP file and store its data into a uint8_t array[m[41m[m
[32m+[m[32muint8_t* read_bmp_to_uint8(const char* file_path, size_t* file_size) {[m[41m[m
[32m+[m[32m    FILE* file = fopen(file_path, "rb");[m[41m[m
[32m+[m[32m    if (!file) {[m[41m[m
[32m+[m[32m        perror("Failed to open BMP file");[m[41m[m
[32m+[m[32m        return NULL;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Seek to the end to determine file size[m[41m[m
[32m+[m[32m    fseek(file, 0, SEEK_END);[m[41m[m
[32m+[m[32m    *file_size = ftell(file);[m[41m[m
[32m+[m[32m    rewind(file);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Allocate memory to hold the BMP file data[m[41m[m
[32m+[m[32m    uint8_t* data = (uint8_t*)malloc(*file_size);[m[41m[m
[32m+[m[32m    if (!data) {[m[41m[m
[32m+[m[32m        perror("Failed to allocate memory");[m[41m[m
[32m+[m[32m        fclose(file);[m[41m[m
[32m+[m[32m        return NULL;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Read the BMP file into the allocated memory[m[41m[m
[32m+[m[32m    if (fread(data, 1, *file_size, file) != *file_size) {[m[41m[m
[32m+[m[32m        perror("Failed to read BMP file");[m[41m[m
[32m+[m[32m        free(data);[m[41m[m
[32m+[m[32m        fclose(file);[m[41m[m
[32m+[m[32m        return NULL;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    fclose(file);[m[41m[m
[32m+[m[32m    return data;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mint main(int argc, char* argv[]) {[m[41m[m
[32m+[m[32m    if (argc != 2) {[m[41m[m
[32m+[m[32m        fprintf(stderr, "Usage: %s <bmp_file_path>\n", argv[0]);[m[41m[m
[32m+[m[32m        return 1;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    size_t file_size = 0;[m[41m[m
[32m+[m[32m    uint8_t* bmp_data = read_bmp_to_uint8(argv[1], &file_size);[m[41m[m
[32m+[m[32m    if (!bmp_data) {[m[41m[m
[32m+[m[32m        return 1;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    printf("BMP file successfully read!\n");[m[41m[m
[32m+[m[32m    printf("File size: %zu bytes\n", file_size);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Write the BMP data to an output text file as a uint8_t array[m[41m[m
[32m+[m[32m    char output_file[256];[m[41m[m
[32m+[m[32m    snprintf(output_file, sizeof(output_file), "%s.out.txt", argv[1]);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    FILE* out_file = fopen(output_file, "w");[m[41m[m
[32m+[m[32m    if (!out_file) {[m[41m[m
[32m+[m[32m        perror("Failed to create output file");[m[41m[m
[32m+[m[32m        free(bmp_data);[m[41m[m
[32m+[m[32m        return 1;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Extract the file name without extension for variable name[m[41m[m
[32m+[m[32m    char var_name[256];[m[41m[m
[32m+[m[32m    snprintf(var_name, sizeof(var_name), "%s", argv[1]);[m[41m[m
[32m+[m[32m    char* dot = strrchr(var_name, '.');[m[41m[m
[32m+[m[32m    if (dot) *dot = '\0'; // Remove the extension[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    fprintf(out_file, "uint8_t %s[] = {\n", var_name);[m[41m[m
[32m+[m[32m    for (size_t i = 0; i < file_size; i++) {[m[41m[m
[32m+[m[32m        fprintf(out_file, "0x%02X%s", bmp_data[i], (i < file_size - 1) ? ", " : "");[m[41m[m
[32m+[m[32m        if ((i + 1) % 16 == 0) {[m[41m[m
[32m+[m[32m            fprintf(out_file, "\n");[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m    fprintf(out_file, "\n};\n");[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    fclose(out_file);[m[41m[m
[32m+[m[32m    printf("BMP data written to %s\n", output_file);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Clean up[m[41m[m
[32m+[m[32m    free(bmp_data);[m[41m[m
[32m+[m[32m    return 0;[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/GNUmakefile b/GNUmakefile[m
[1mnew file mode 100644[m
[1mindex 0000000..5affb74[m
[1m--- /dev/null[m
[1m+++ b/GNUmakefile[m
[36m@@ -0,0 +1,257 @@[m
[32m+[m[32m# Nuke built-in rules and variables.[m
[32m+[m[32mMAKEFLAGS += -rR[m
[32m+[m[32m.SUFFIXES:[m
[32m+[m
[32m+[m[32m# Target architecture to build for. Default to x86_64.[m
[32m+[m[32mARCH := x86_64[m
[32m+[m
[32m+[m[32m# Default user QEMU flags. These are appended to the QEMU command calls.[m
[32m+[m[32mQEMUFLAGS := -m 3G[m
[32m+[m
[32m+[m[32moverride IMAGE_NAME := atlas-os_$(ARCH)[m
[32m+[m
[32m+[m[32m# Toolchain for building the 'limine' executable for the host.[m
[32m+[m[32mHOST_CC := cc[m
[32m+[m[32mHOST_CFLAGS := -g -O2 -pipe[m
[32m+[m[32mHOST_CPPFLAGS :=[m
[32m+[m[32mHOST_LDFLAGS :=[m
[32m+[m[32mHOST_LIBS :=[m
[32m+[m
[32m+[m[32m.PHONY: all[m
[32m+[m[32mall: $(IMAGE_NAME).iso[m
[32m+[m
[32m+[m[32m.PHONY: all-hdd[m
[32m+[m[32mall-hdd: $(IMAGE_NAME).hdd[m
[32m+[m
[32m+[m[32m.PHONY: run[m
[32m+[m[32mrun: run-$(ARCH)[m
[32m+[m
[32m+[m[32m.PHONY: run-hdd[m
[32m+[m[32mrun-hdd: run-hdd-$(ARCH)[m
[32m+[m
[32m+[m[32m.PHONY: run-x86_64[m
[32m+[m[32mrun-x86_64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).iso[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M q35 \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-cdrom $(IMAGE_NAME).iso \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-hdd-x86_64[m
[32m+[m[32mrun-hdd-x86_64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).hdd[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M q35 \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-hda $(IMAGE_NAME).hdd \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-aarch64[m
[32m+[m[32mrun-aarch64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).iso[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M virt \[m
[32m+[m		[32m-cpu cortex-a72 \[m
[32m+[m		[32m-device ramfb \[m
[32m+[m		[32m-device qemu-xhci \[m
[32m+[m		[32m-device usb-kbd \[m
[32m+[m		[32m-device usb-mouse \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-cdrom $(IMAGE_NAME).iso \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-hdd-aarch64[m
[32m+[m[32mrun-hdd-aarch64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).hdd[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M virt \[m
[32m+[m		[32m-cpu cortex-a72 \[m
[32m+[m		[32m-device ramfb \[m
[32m+[m		[32m-device qemu-xhci \[m
[32m+[m		[32m-device usb-kbd \[m
[32m+[m		[32m-device usb-mouse \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-hda $(IMAGE_NAME).hdd \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-riscv64[m
[32m+[m[32mrun-riscv64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).iso[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M virt \[m
[32m+[m		[32m-cpu rv64 \[m
[32m+[m		[32m-device ramfb \[m
[32m+[m		[32m-device qemu-xhci \[m
[32m+[m		[32m-device usb-kbd \[m
[32m+[m		[32m-device usb-mouse \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-cdrom $(IMAGE_NAME).iso \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-hdd-riscv64[m
[32m+[m[32mrun-hdd-riscv64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).hdd[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M virt \[m
[32m+[m		[32m-cpu rv64 \[m
[32m+[m		[32m-device ramfb \[m
[32m+[m		[32m-device qemu-xhci \[m
[32m+[m		[32m-device usb-kbd \[m
[32m+[m		[32m-device usb-mouse \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-hda $(IMAGE_NAME).hdd \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-loongarch64[m
[32m+[m[32mrun-loongarch64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).iso[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M virt \[m
[32m+[m		[32m-cpu la464 \[m
[32m+[m		[32m-device ramfb \[m
[32m+[m		[32m-device qemu-xhci \[m
[32m+[m		[32m-device usb-kbd \[m
[32m+[m		[32m-device usb-mouse \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-cdrom $(IMAGE_NAME).iso \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-hdd-loongarch64[m
[32m+[m[32mrun-hdd-loongarch64: ovmf/ovmf-code-$(ARCH).fd $(IMAGE_NAME).hdd[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M virt \[m
[32m+[m		[32m-cpu la464 \[m
[32m+[m		[32m-device ramfb \[m
[32m+[m		[32m-device qemu-xhci \[m
[32m+[m		[32m-device usb-kbd \[m
[32m+[m		[32m-device usb-mouse \[m
[32m+[m		[32m-drive if=pflash,unit=0,format=raw,file=ovmf/ovmf-code-$(ARCH).fd,readonly=on \[m
[32m+[m		[32m-hda $(IMAGE_NAME).hdd \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m
[32m+[m[32m.PHONY: run-bios[m
[32m+[m[32mrun-bios: $(IMAGE_NAME).iso[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M q35 \[m
[32m+[m		[32m-cdrom $(IMAGE_NAME).iso \[m
[32m+[m		[32m-boot d \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32m.PHONY: run-hdd-bios[m
[32m+[m[32mrun-hdd-bios: $(IMAGE_NAME).hdd[m
[32m+[m	[32mqemu-system-$(ARCH) \[m
[32m+[m		[32m-M q35 \[m
[32m+[m		[32m-hda $(IMAGE_NAME).hdd \[m
[32m+[m		[32m$(QEMUFLAGS)[m
[32m+[m
[32m+[m[32movmf/ovmf-code-$(ARCH).fd:[m
[32m+[m	[32mmkdir -p ovmf[m
[32m+[m	[32mcurl -Lo $@ https://github.com/osdev0/edk2-ovmf-nightly/releases/latest/download/ovmf-code-$(ARCH).fd[m
[32m+[m	[32mcase "$(ARCH)" in \[m
[32m+[m		[32maarch64) dd if=/dev/zero of=$@ bs=1 count=0 seek=67108864 2>/dev/null;; \[m
[32m+[m		[32mriscv64) dd if=/dev/zero of=$@ bs=1 count=0 seek=33554432 2>/dev/null;; \[m
[32m+[m	[32mesac[m
[32m+[m
[32m+[m[32mlimine/limine:[m
[32m+[m	[32mrm -rf limine[m
[32m+[m	[32mgit clone https://github.com/limine-bootloader/limine.git --branch=v8.x-binary --depth=1[m
[32m+[m	[32m$(MAKE) -C limine \[m
[32m+[m		[32mCC="$(HOST_CC)" \[m
[32m+[m		[32mCFLAGS="$(HOST_CFLAGS)" \[m
[32m+[m		[32mCPPFLAGS="$(HOST_CPPFLAGS)" \[m
[32m+[m		[32mLDFLAGS="$(HOST_LDFLAGS)" \[m
[32m+[m		[32mLIBS="$(HOST_LIBS)"[m
[32m+[m
[32m+[m[32mkernel-deps:[m
[32m+[m	[32m./kernel/get-deps[m
[32m+[m	[32mtouch kernel-deps[m
[32m+[m
[32m+[m[32m.PHONY: kernel[m
[32m+[m[32mkernel: kernel-deps[m
[32m+[m	[32m$(MAKE) -C kernel[m
[32m+[m
[32m+[m[32m$(IMAGE_NAME).iso: limine/limine kernel[m
[32m+[m	[32mrm -rf iso_root[m
[32m+[m	[32mmkdir -p iso_root/boot[m
[32m+[m	[32mcp -v kernel/bin-$(ARCH)/kernel iso_root/boot/[m
[32m+[m	[32mmkdir -p iso_root/boot/limine[m
[32m+[m	[32mcp -v limine.conf iso_root/boot/limine/[m
[32m+[m	[32mmkdir -p iso_root/EFI/BOOT[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m	[32mcp -v limine/limine-bios.sys limine/limine-bios-cd.bin limine/limine-uefi-cd.bin iso_root/boot/limine/[m
[32m+[m	[32mcp -v limine/BOOTX64.EFI iso_root/EFI/BOOT/[m
[32m+[m	[32mcp -v limine/BOOTIA32.EFI iso_root/EFI/BOOT/[m
[32m+[m	[32mxorriso -as mkisofs -R -r -J -b boot/limine/limine-bios-cd.bin \[m
[32m+[m		[32m-no-emul-boot -boot-load-size 4 -boot-info-table -hfsplus \[m
[32m+[m		[32m-apm-block-size 2048 --efi-boot boot/limine/limine-uefi-cd.bin \[m
[32m+[m		[32m-efi-boot-part --efi-boot-image --protective-msdos-label \[m
[32m+[m		[32miso_root -o $(IMAGE_NAME).iso[m
[32m+[m	[32m./limine/limine bios-install $(IMAGE_NAME).iso[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),aarch64)[m
[32m+[m	[32mcp -v limine/limine-uefi-cd.bin iso_root/boot/limine/[m
[32m+[m	[32mcp -v limine/BOOTAA64.EFI iso_root/EFI/BOOT/[m
[32m+[m	[32mxorriso -as mkisofs -R -r -J \[m
[32m+[m		[32m-hfsplus -apm-block-size 2048 \[m
[32m+[m		[32m--efi-boot boot/limine/limine-uefi-cd.bin \[m
[32m+[m		[32m-efi-boot-part --efi-boot-image --protective-msdos-label \[m
[32m+[m		[32miso_root -o $(IMAGE_NAME).iso[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),riscv64)[m
[32m+[m	[32mcp -v limine/limine-uefi-cd.bin iso_root/boot/limine/[m
[32m+[m	[32mcp -v limine/BOOTRISCV64.EFI iso_root/EFI/BOOT/[m
[32m+[m	[32mxorriso -as mkisofs -R -r -J \[m
[32m+[m		[32m-hfsplus -apm-block-size 2048 \[m
[32m+[m		[32m--efi-boot boot/limine/limine-uefi-cd.bin \[m
[32m+[m		[32m-efi-boot-part --efi-boot-image --protective-msdos-label \[m
[32m+[m		[32miso_root -o $(IMAGE_NAME).iso[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),loongarch64)[m
[32m+[m	[32mcp -v limine/limine-uefi-cd.bin iso_root/boot/limine/[m
[32m+[m	[32mcp -v limine/BOOTLOONGARCH64.EFI iso_root/EFI/BOOT/[m
[32m+[m	[32mxorriso -as mkisofs -R -r -J \[m
[32m+[m		[32m-hfsplus -apm-block-size 2048 \[m
[32m+[m		[32m--efi-boot boot/limine/limine-uefi-cd.bin \[m
[32m+[m		[32m-efi-boot-part --efi-boot-image --protective-msdos-label \[m
[32m+[m		[32miso_root -o $(IMAGE_NAME).iso[m
[32m+[m[32mendif[m
[32m+[m	[32mrm -rf iso_root[m
[32m+[m
[32m+[m[32m$(IMAGE_NAME).hdd: limine/limine kernel[m
[32m+[m	[32mrm -f $(IMAGE_NAME).hdd[m
[32m+[m	[32mdd if=/dev/zero bs=1M count=0 seek=64 of=$(IMAGE_NAME).hdd[m
[32m+[m	[32mPATH=$$PATH:/usr/sbin:/sbin sgdisk $(IMAGE_NAME).hdd -n 1:2048 -t 1:ef00[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m	[32m./limine/limine bios-install $(IMAGE_NAME).hdd[m
[32m+[m[32mendif[m
[32m+[m	[32mmformat -i $(IMAGE_NAME).hdd@@1M[m
[32m+[m	[32mmmd -i $(IMAGE_NAME).hdd@@1M ::/EFI ::/EFI/BOOT ::/boot ::/boot/limine[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M kernel/bin-$(ARCH)/kernel ::/boot[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M limine.conf ::/boot/limine[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M limine/limine-bios.sys ::/boot/limine[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M limine/BOOTX64.EFI ::/EFI/BOOT[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M limine/BOOTIA32.EFI ::/EFI/BOOT[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),aarch64)[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M limine/BOOTAA64.EFI ::/EFI/BOOT[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),riscv64)[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M limine/BOOTRISCV64.EFI ::/EFI/BOOT[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),loongarch64)[m
[32m+[m	[32mmcopy -i $(IMAGE_NAME).hdd@@1M limine/BOOTLOONGARCH64.EFI ::/EFI/BOOT[m
[32m+[m[32mendif[m
[32m+[m
[32m+[m[32m.PHONY: clean[m
[32m+[m[32mclean:[m
[32m+[m	[32m$(MAKE) -C kernel clean[m
[32m+[m	[32mrm -rf iso_root $(IMAGE_NAME).iso $(IMAGE_NAME).hdd[m
[32m+[m
[32m+[m[32m.PHONY: distclean[m
[32m+[m[32mdistclean:[m
[32m+[m	[32m$(MAKE) -C kernel distclean[m
[32m+[m	[32mrm -rf iso_root *.iso *.hdd kernel-deps limine ovmf[m
[32m+[m
[32m+[m[32m.PHONY: com3_debug.com3[m
[32m+[m[32mcom3_debug.com3:[m
[32m+[m	[32m@rm -rf com3_debug.com3[m
[32m+[m	[32m@touch com3_debug.com3[m
[32m+[m
[32m+[m[32mrun-com3: com3_debug.com3[m
[32m+[m	[32mqemu-system-x86_64 -M q35 -hda $(IMAGE_NAME).iso -serial file:com3_debug.com3 -device isa-serial,chardev=charcom3 -chardev file,id=charcom3,path=com3_debug.com3[m
\ No newline at end of file[m
[1mdiff --git a/LICENSE b/LICENSE[m
[1mnew file mode 100644[m
[1mindex 0000000..f288702[m
[1m--- /dev/null[m
[1m+++ b/LICENSE[m
[36m@@ -0,0 +1,674 @@[m
[32m+[m[32m                    GNU GENERAL PUBLIC LICENSE[m
[32m+[m[32m                       Version 3, 29 June 2007[m
[32m+[m
[32m+[m[32m Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>[m
[32m+[m[32m Everyone is permitted to copy and distribute verbatim copies[m
[32m+[m[32m of this license document, but changing it is not allowed.[m
[32m+[m
[32m+[m[32m                            Preamble[m
[32m+[m
[32m+[m[32m  The GNU General Public License is a free, copyleft license for[m
[32m+[m[32msoftware and other kinds of works.[m
[32m+[m
[32m+[m[32m  The licenses for most software and other practical works are designed[m
[32m+[m[32mto take away your freedom to share and change the works.  By contrast,[m
[32m+[m[32mthe GNU General Public License is intended to guarantee your freedom to[m
[32m+[m[32mshare and change all versions of a program--to make sure it remains free[m
[32m+[m[32msoftware for all its users.  We, the Free Software Foundation, use the[m
[32m+[m[32mGNU General Public License for most of our software; it applies also to[m
[32m+[m[32many other work released this way by its authors.  You can apply it to[m
[32m+[m[32myour programs, too.[m
[32m+[m
[32m+[m[32m  When we speak of free software, we are referring to freedom, not[m
[32m+[m[32mprice.  Our General Public Licenses are designed to make sure that you[m
[32m+[m[32mhave the freedom to distribute copies of free software (and charge for[m
[32m+[m[32mthem if you wish), that you receive source code or can get it if you[m
[32m+[m[32mwant it, that you can change the software or use pieces of it in new[m
[32m+[m[32mfree programs, and that you know you can do these things.[m
[32m+[m
[32m+[m[32m  To protect your rights, we need to prevent others from denying you[m
[32m+[m[32mthese rights or asking you to surrender the rights.  Therefore, you have[m
[32m+[m[32mcertain responsibilities if you distribute copies of the software, or if[m
[32m+[m[32myou modify it: responsibilities to respect the freedom of others.[m
[32m+[m
[32m+[m[32m  For example, if you distribute copies of such a program, whether[m
[32m+[m[32mgratis or for a fee, you must pass on to the recipients the same[m
[32m+[m[32mfreedoms that you received.  You must make sure that they, too, receive[m
[32m+[m[32mor can get the source code.  And you must show them these terms so they[m
[32m+[m[32mknow their rights.[m
[32m+[m
[32m+[m[32m  Developers that use the GNU GPL protect your rights with two steps:[m
[32m+[m[32m(1) assert copyright on the software, and (2) offer you this License[m
[32m+[m[32mgiving you legal permission to copy, distribute and/or modify it.[m
[32m+[m
[32m+[m[32m  For the developers' and authors' protection, the GPL clearly explains[m
[32m+[m[32mthat there is no warranty for this free software.  For both users' and[m
[32m+[m[32mauthors' sake, the GPL requires that modified versions be marked as[m
[32m+[m[32mchanged, so that their problems will not be attributed erroneously to[m
[32m+[m[32mauthors of previous versions.[m
[32m+[m
[32m+[m[32m  Some devices are designed to deny users access to install or run[m
[32m+[m[32mmodified versions of the software inside them, although the manufacturer[m
[32m+[m[32mcan do so.  This is fundamentally incompatible with the aim of[m
[32m+[m[32mprotecting users' freedom to change the software.  The systematic[m
[32m+[m[32mpattern of such abuse occurs in the area of products for individuals to[m
[32m+[m[32muse, which is precisely where it is most unacceptable.  Therefore, we[m
[32m+[m[32mhave designed this version of the GPL to prohibit the practice for those[m
[32m+[m[32mproducts.  If such problems arise substantially in other domains, we[m
[32m+[m[32mstand ready to extend this provision to those domains in future versions[m
[32m+[m[32mof the GPL, as needed to protect the freedom of users.[m
[32m+[m
[32m+[m[32m  Finally, every program is threatened constantly by software patents.[m
[32m+[m[32mStates should not allow patents to restrict development and use of[m
[32m+[m[32msoftware on general-purpose computers, but in those that do, we wish to[m
[32m+[m[32mavoid the special danger that patents applied to a free program could[m
[32m+[m[32mmake it effectively proprietary.  To prevent this, the GPL assures that[m
[32m+[m[32mpatents cannot be used to render the program non-free.[m
[32m+[m
[32m+[m[32m  The precise terms and conditions for copying, distribution and[m
[32m+[m[32mmodification follow.[m
[32m+[m
[32m+[m[32m                       TERMS AND CONDITIONS[m
[32m+[m
[32m+[m[32m  0. Definitions.[m
[32m+[m
[32m+[m[32m  "This License" refers to version 3 of the GNU General Public License.[m
[32m+[m
[32m+[m[32m  "Copyright" also means copyright-like laws that apply to other kinds of[m
[32m+[m[32mworks, such as semiconductor masks.[m
[32m+[m
[32m+[m[32m  "The Program" refers to any copyrightable work licensed under this[m
[32m+[m[32mLicense.  Each licensee is addressed as "you".  "Licensees" and[m
[32m+[m[32m"recipients" may be individuals or organizations.[m
[32m+[m
[32m+[m[32m  To "modify" a work means to copy from or adapt all or part of the work[m
[32m+[m[32min a fashion requiring copyright permission, other than the making of an[m
[32m+[m[32mexact copy.  The resulting work is called a "modified version" of the[m
[32m+[m[32mearlier work or a work "based on" the earlier work.[m
[32m+[m
[32m+[m[32m  A "covered work" means either the unmodified Program or a work based[m
[32m+[m[32mon the Program.[m
[32m+[m
[32m+[m[32m  To "propagate" a work means to do anything with it that, without[m
[32m+[m[32mpermission, would make you directly or secondarily liable for[m
[32m+[m[32minfringement under applicable copyright law, except executing it on a[m
[32m+[m[32mcomputer or modifying a private copy.  Propagation includes copying,[m
[32m+[m[32mdistribution (with or without modification), making available to the[m
[32m+[m[32mpublic, and in some countries other activities as well.[m
[32m+[m
[32m+[m[32m  To "convey" a work means any kind of propagation that enables other[m
[32m+[m[32mparties to make or receive copies.  Mere interaction with a user through[m
[32m+[m[32ma computer network, with no transfer of a copy, is not conveying.[m
[32m+[m
[32m+[m[32m  An interactive user interface displays "Appropriate Legal Notices"[m
[32m+[m[32mto the extent that it includes a convenient and prominently visible[m
[32m+[m[32mfeature that (1) displays an appropriate copyright notice, and (2)[m
[32m+[m[32mtells the user that there is no warranty for the work (except to the[m
[32m+[m[32mextent that warranties are provided), that licensees may convey the[m
[32m+[m[32mwork under this License, and how to view a copy of this License.  If[m
[32m+[m[32mthe interface presents a list of user commands or options, such as a[m
[32m+[m[32mmenu, a prominent item in the list meets this criterion.[m
[32m+[m
[32m+[m[32m  1. Source Code.[m
[32m+[m
[32m+[m[32m  The "source code" for a work means the preferred form of the work[m
[32m+[m[32mfor making modifications to it.  "Object code" means any non-source[m
[32m+[m[32mform of a work.[m
[32m+[m
[32m+[m[32m  A "Standard Interface" means an interface that either is an official[m
[32m+[m[32mstandard defined by a recognized standards body, or, in the case of[m
[32m+[m[32minterfaces specified for a particular programming language, one that[m
[32m+[m[32mis widely used among developers working in that language.[m
[32m+[m
[32m+[m[32m  The "System Libraries" of an executable work include anything, other[m
[32m+[m[32mthan the work as a whole, that (a) is included in the normal form of[m
[32m+[m[32mpackaging a Major Component, but which is not part of that Major[m
[32m+[m[32mComponent, and (b) serves only to enable use of the work with that[m
[32m+[m[32mMajor Component, or to implement a Standard Interface for which an[m
[32m+[m[32mimplementation is available to the public in source code form.  A[m
[32m+[m[32m"Major Component", in this context, means a major essential component[m
[32m+[m[32m(kernel, window system, and so on) of the specific operating system[m
[32m+[m[32m(if any) on which the executable work runs, or a compiler used to[m
[32m+[m[32mproduce the work, or an object code interpreter used to run it.[m
[32m+[m
[32m+[m[32m  The "Corresponding Source" for a work in object code form means all[m
[32m+[m[32mthe source code needed to generate, install, and (for an executable[m
[32m+[m[32mwork) run the object code and to modify the work, including scripts to[m
[32m+[m[32mcontrol those activities.  However, it does not include the work's[m
[32m+[m[32mSystem Libraries, or general-purpose tools or generally available free[m
[32m+[m[32mprograms which are used unmodified in performing those activities but[m
[32m+[m[32mwhich are not part of the work.  For example, Corresponding Source[m
[32m+[m[32mincludes interface definition files associated with source files for[m
[32m+[m[32mthe work, and the source code for shared libraries and dynamically[m
[32m+[m[32mlinked subprograms that the work is specifically designed to require,[m
[32m+[m[32msuch as by intimate data communication or control flow between those[m
[32m+[m[32msubprograms and other parts of the work.[m
[32m+[m
[32m+[m[32m  The Corresponding Source need not include anything that users[m
[32m+[m[32mcan regenerate automatically from other parts of the Corresponding[m
[32m+[m[32mSource.[m
[32m+[m
[32m+[m[32m  The Corresponding Source for a work in source code form is that[m
[32m+[m[32msame work.[m
[32m+[m
[32m+[m[32m  2. Basic Permissions.[m
[32m+[m
[32m+[m[32m  All rights granted under this License are granted for the term of[m
[32m+[m[32mcopyright on the Program, and are irrevocable provided the stated[m
[32m+[m[32mconditions are met.  This License explicitly affirms your unlimited[m
[32m+[m[32mpermission to run the unmodified Program.  The output from running a[m
[32m+[m[32mcovered work is covered by this License only if the output, given its[m
[32m+[m[32mcontent, constitutes a covered work.  This License acknowledges your[m
[32m+[m[32mrights of fair use or other equivalent, as provided by copyright law.[m
[32m+[m
[32m+[m[32m  You may make, run and propagate covered works that you do not[m
[32m+[m[32mconvey, without conditions so long as your license otherwise remains[m
[32m+[m[32min force.  You may convey covered works to others for the sole purpose[m
[32m+[m[32mof having them make modifications exclusively for you, or provide you[m
[32m+[m[32mwith facilities for running those works, provided that you comply with[m
[32m+[m[32mthe terms of this License in conveying all material for which you do[m
[32m+[m[32mnot control copyright.  Those thus making or running the covered works[m
[32m+[m[32mfor you must do so exclusively on your behalf, under your direction[m
[32m+[m[32mand control, on terms that prohibit them from making any copies of[m
[32m+[m[32myour copyrighted material outside their relationship with you.[m
[32m+[m
[32m+[m[32m  Conveying under any other circumstances is permitted solely under[m
[32m+[m[32mthe conditions stated below.  Sublicensing is not allowed; section 10[m
[32m+[m[32mmakes it unnecessary.[m
[32m+[m
[32m+[m[32m  3. Protecting Users' Legal Rights From Anti-Circumvention Law.[m
[32m+[m
[32m+[m[32m  No covered work shall be deemed part of an effective technological[m
[32m+[m[32mmeasure under any applicable law fulfilling obligations under article[m
[32m+[m[32m11 of the WIPO copyright treaty adopted on 20 December 1996, or[m
[32m+[m[32msimilar laws prohibiting or restricting circumvention of such[m
[32m+[m[32mmeasures.[m
[32m+[m
[32m+[m[32m  When you convey a covered work, you waive any legal power to forbid[m
[32m+[m[32mcircumvention of technological measures to the extent such circumvention[m
[32m+[m[32mis effected by exercising rights under this License with respect to[m
[32m+[m[32mthe covered work, and you disclaim any intention to limit operation or[m
[32m+[m[32mmodification of the work as a means of enforcing, against the work's[m
[32m+[m[32musers, your or third parties' legal rights to forbid circumvention of[m
[32m+[m[32mtechnological measures.[m
[32m+[m
[32m+[m[32m  4. Conveying Verbatim Copies.[m
[32m+[m
[32m+[m[32m  You may convey verbatim copies of the Program's source code as you[m
[32m+[m[32mreceive it, in any medium, provided that you conspicuously and[m
[32m+[m[32mappropriately publish on each copy an appropriate copyright notice;[m
[32m+[m[32mkeep intact all notices stating that this License and any[m
[32m+[m[32mnon-permissive terms added in accord with section 7 apply to the code;[m
[32m+[m[32mkeep intact all notices of the absence of any warranty; and give all[m
[32m+[m[32mrecipients a copy of this License along with the Program.[m
[32m+[m
[32m+[m[32m  You may charge any price or no price for each copy that you convey,[m
[32m+[m[32mand you may offer support or warranty protection for a fee.[m
[32m+[m
[32m+[m[32m  5. Conveying Modified Source Versions.[m
[32m+[m
[32m+[m[32m  You may convey a work based on the Program, or the modifications to[m
[32m+[m[32mproduce it from the Program, in the form of source code under the[m
[32m+[m[32mterms of section 4, provided that you also meet all of these conditions:[m
[32m+[m
[32m+[m[32m    a) The work must carry prominent notices stating that you modified[m
[32m+[m[32m    it, and giving a relevant date.[m
[32m+[m
[32m+[m[32m    b) The work must carry prominent notices stating that it is[m
[32m+[m[32m    released under this License and any conditions added under section[m
[32m+[m[32m    7.  This requirement modifies the requirement in section 4 to[m
[32m+[m[32m    "keep intact all notices".[m
[32m+[m
[32m+[m[32m    c) You must license the entire work, as a whole, under this[m
[32m+[m[32m    License to anyone who comes into possession of a copy.  This[m
[32m+[m[32m    License will therefore apply, along with any applicable section 7[m
[32m+[m[32m    additional terms, to the whole of the work, and all its parts,[m
[32m+[m[32m    regardless of how they are packaged.  This License gives no[m
[32m+[m[32m    permission to license the work in any other way, but it does not[m
[32m+[m[32m    invalidate such permission if you have separately received it.[m
[32m+[m
[32m+[m[32m    d) If the work has interactive user interfaces, each must display[m
[32m+[m[32m    Appropriate Legal Notices; however, if the Program has interactive[m
[32m+[m[32m    interfaces that do not display Appropriate Legal Notices, your[m
[32m+[m[32m    work need not make them do so.[m
[32m+[m
[32m+[m[32m  A compilation of a covered work with other separate and independent[m
[32m+[m[32mworks, which are not by their nature extensions of the covered work,[m
[32m+[m[32mand which are not combined with it such as to form a larger program,[m
[32m+[m[32min or on a volume of a storage or distribution medium, is called an[m
[32m+[m[32m"aggregate" if the compilation and its resulting copyright are not[m
[32m+[m[32mused to limit the access or legal rights of the compilation's users[m
[32m+[m[32mbeyond what the individual works permit.  Inclusion of a covered work[m
[32m+[m[32min an aggregate does not cause this License to apply to the other[m
[32m+[m[32mparts of the aggregate.[m
[32m+[m
[32m+[m[32m  6. Conveying Non-Source Forms.[m
[32m+[m
[32m+[m[32m  You may convey a covered work in object code form under the terms[m
[32m+[m[32mof sections 4 and 5, provided that you also convey the[m
[32m+[m[32mmachine-readable Corresponding Source under the terms of this License,[m
[32m+[m[32min one of these ways:[m
[32m+[m
[32m+[m[32m    a) Convey the object code in, or embodied in, a physical product[m
[32m+[m[32m    (including a physical distribution medium), accompanied by the[m
[32m+[m[32m    Corresponding Source fixed on a durable physical medium[m
[32m+[m[32m    customarily used for software interchange.[m
[32m+[m
[32m+[m[32m    b) Convey the object code in, or embodied in, a physical product[m
[32m+[m[32m    (including a physical distribution medium), accompanied by a[m
[32m+[m[32m    written offer, valid for at least three years and valid for as[m
[32m+[m[32m    long as you offer spare parts or customer support for that product[m
[32m+[m[32m    model, to give anyone who possesses the object code either (1) a[m
[32m+[m[32m    copy of the Corresponding Source for all the software in the[m
[32m+[m[32m    product that is covered by this License, on a durable physical[m
[32m+[m[32m    medium customarily used for software interchange, for a price no[m
[32m+[m[32m    more than your reasonable cost of physically performing this[m
[32m+[m[32m    conveying of source, or (2) access to copy the[m
[32m+[m[32m    Corresponding Source from a network server at no charge.[m
[32m+[m
[32m+[m[32m    c) Convey individual copies of the object code with a copy of the[m
[32m+[m[32m    written offer to provide the Corresponding Source.  This[m
[32m+[m[32m    alternative is allowed only occasionally and noncommercially, and[m
[32m+[m[32m    only if you received the object code with such an offer, in accord[m
[32m+[m[32m    with subsection 6b.[m
[32m+[m
[32m+[m[32m    d) Convey the object code by offering access from a designated[m
[32m+[m[32m    place (gratis or for a charge), and offer equivalent access to the[m
[32m+[m[32m    Corresponding Source in the same way through the same place at no[m
[32m+[m[32m    further charge.  You need not require recipients to copy the[m
[32m+[m[32m    Corresponding Source along with the object code.  If the place to[m
[32m+[m[32m    copy the object code is a network server, the Corresponding Source[m
[32m+[m[32m    may be on a different server (operated by you or a third party)[m
[32m+[m[32m    that supports equivalent copying facilities, provided you maintain[m
[32m+[m[32m    clear directions next to the object code saying where to find the[m
[32m+[m[32m    Corresponding Source.  Regardless of what server hosts the[m
[32m+[m[32m    Corresponding Source, you remain obligated to ensure that it is[m
[32m+[m[32m    available for as long as needed to satisfy these requirements.[m
[32m+[m
[32m+[m[32m    e) Convey the object code using peer-to-peer transmission, provided[m
[32m+[m[32m    you inform other peers where the object code and Corresponding[m
[32m+[m[32m    Source of the work are being offered to the general public at no[m
[32m+[m[32m    charge under subsection 6d.[m
[32m+[m
[32m+[m[32m  A separable portion of the object code, whose source code is excluded[m
[32m+[m[32mfrom the Corresponding Source as a System Library, need not be[m
[32m+[m[32mincluded in conveying the object code work.[m
[32m+[m
[32m+[m[32m  A "User Product" is either (1) a "consumer product", which means any[m
[32m+[m[32mtangible personal property which is normally used for personal, family,[m
[32m+[m[32mor household purposes, or (2) anything designed or sold for incorporation[m
[32m+[m[32minto a dwelling.  In determining whether a product is a consumer product,[m
[32m+[m[32mdoubtful cases shall be resolved in favor of coverage.  For a particular[m
[32m+[m[32mproduct received by a particular user, "normally used" refers to a[m
[32m+[m[32mtypical or common use of that class of product, regardless of the status[m
[32m+[m[32mof the particular user or of the way in which the particular user[m
[32m+[m[32mactually uses, or expects or is expected to use, the product.  A product[m
[32m+[m[32mis a consumer product regardless of whether the product has substantial[m
[32m+[m[32mcommercial, industrial or non-consumer uses, unless such uses represent[m
[32m+[m[32mthe only significant mode of use of the product.[m
[32m+[m
[32m+[m[32m  "Installation Information" for a User Product means any methods,[m
[32m+[m[32mprocedures, authorization keys, or other information required to install[m
[32m+[m[32mand execute modified versions of a covered work in that User Product from[m
[32m+[m[32ma modified version of its Corresponding Source.  The information must[m
[32m+[m[32msuffice to ensure that the continued functioning of the modified object[m
[32m+[m[32mcode is in no case prevented or interfered with solely because[m
[32m+[m[32mmodification has been made.[m
[32m+[m
[32m+[m[32m  If you convey an object code work under this section in, or with, or[m
[32m+[m[32mspecifically for use in, a User Product, and the conveying occurs as[m
[32m+[m[32mpart of a transaction in which the right of possession and use of the[m
[32m+[m[32mUser Product is transferred to the recipient in perpetuity or for a[m
[32m+[m[32mfixed term (regardless of how the transaction is characterized), the[m
[32m+[m[32mCorresponding Source conveyed under this section must be accompanied[m
[32m+[m[32mby the Installation Information.  But this requirement does not apply[m
[32m+[m[32mif neither you nor any third party retains the ability to install[m
[32m+[m[32mmodified object code on the User Product (for example, the work has[m
[32m+[m[32mbeen installed in ROM).[m
[32m+[m
[32m+[m[32m  The requirement to provide Installation Information does not include a[m
[32m+[m[32mrequirement to continue to provide support service, warranty, or updates[m
[32m+[m[32mfor a work that has been modified or installed by the recipient, or for[m
[32m+[m[32mthe User Product in which it has been modified or installed.  Access to a[m
[32m+[m[32mnetwork may be denied when the modification itself materially and[m
[32m+[m[32madversely affects the operation of the network or violates the rules and[m
[32m+[m[32mprotocols for communication across the network.[m
[32m+[m
[32m+[m[32m  Corresponding Source conveyed, and Installation Information provided,[m
[32m+[m[32min accord with this section must be in a format that is publicly[m
[32m+[m[32mdocumented (and with an implementation available to the public in[m
[32m+[m[32msource code form), and must require no special password or key for[m
[32m+[m[32munpacking, reading or copying.[m
[32m+[m
[32m+[m[32m  7. Additional Terms.[m
[32m+[m
[32m+[m[32m  "Additional permissions" are terms that supplement the terms of this[m
[32m+[m[32mLicense by making exceptions from one or more of its conditions.[m
[32m+[m[32mAdditional permissions that are applicable to the entire Program shall[m
[32m+[m[32mbe treated as though they were included in this License, to the extent[m
[32m+[m[32mthat they are valid under applicable law.  If additional permissions[m
[32m+[m[32mapply only to part of the Program, that part may be used separately[m
[32m+[m[32munder those permissions, but the entire Program remains governed by[m
[32m+[m[32mthis License without regard to the additional permissions.[m
[32m+[m
[32m+[m[32m  When you convey a copy of a covered work, you may at your option[m
[32m+[m[32mremove any additional permissions from that copy, or from any part of[m
[32m+[m[32mit.  (Additional permissions may be written to require their own[m
[32m+[m[32mremoval in certain cases when you modify the work.)  You may place[m
[32m+[m[32madditional permissions on material, added by you to a covered work,[m
[32m+[m[32mfor which you have or can give appropriate copyright permission.[m
[32m+[m
[32m+[m[32m  Notwithstanding any other provision of this License, for material you[m
[32m+[m[32madd to a covered work, you may (if authorized by the copyright holders of[m
[32m+[m[32mthat material) supplement the terms of this License with terms:[m
[32m+[m
[32m+[m[32m    a) Disclaiming warranty or limiting liability differently from the[m
[32m+[m[32m    terms of sections 15 and 16 of this License; or[m
[32m+[m
[32m+[m[32m    b) Requiring preservation of specified reasonable legal notices or[m
[32m+[m[32m    author attributions in that material or in the Appropriate Legal[m
[32m+[m[32m    Notices displayed by works containing it; or[m
[32m+[m
[32m+[m[32m    c) Prohibiting misrepresentation of the origin of that material, or[m
[32m+[m[32m    requiring that modified versions of such material be marked in[m
[32m+[m[32m    reasonable ways as different from the original version; or[m
[32m+[m
[32m+[m[32m    d) Limiting the use for publicity purposes of names of licensors or[m
[32m+[m[32m    authors of the material; or[m
[32m+[m
[32m+[m[32m    e) Declining to grant rights under trademark law for use of some[m
[32m+[m[32m    trade names, trademarks, or service marks; or[m
[32m+[m
[32m+[m[32m    f) Requiring indemnification of licensors and authors of that[m
[32m+[m[32m    material by anyone who conveys the material (or modified versions of[m
[32m+[m[32m    it) with contractual assumptions of liability to the recipient, for[m
[32m+[m[32m    any liability that these contractual assumptions directly impose on[m
[32m+[m[32m    those licensors and authors.[m
[32m+[m
[32m+[m[32m  All other non-permissive additional terms are considered "further[m
[32m+[m[32mrestrictions" within the meaning of section 10.  If the Program as you[m
[32m+[m[32mreceived it, or any part of it, contains a notice stating that it is[m
[32m+[m[32mgoverned by this License along with a term that is a further[m
[32m+[m[32mrestriction, you may remove that term.  If a license document contains[m
[32m+[m[32ma further restriction but permits relicensing or conveying under this[m
[32m+[m[32mLicense, you may add to a covered work material governed by the terms[m
[32m+[m[32mof that license document, provided that the further restriction does[m
[32m+[m[32mnot survive such relicensing or conveying.[m
[32m+[m
[32m+[m[32m  If you add terms to a covered work in accord with this section, you[m
[32m+[m[32mmust place, in the relevant source files, a statement of the[m
[32m+[m[32madditional terms that apply to those files, or a notice indicating[m
[32m+[m[32mwhere to find the applicable terms.[m
[32m+[m
[32m+[m[32m  Additional terms, permissive or non-permissive, may be stated in the[m
[32m+[m[32mform of a separately written license, or stated as exceptions;[m
[32m+[m[32mthe above requirements apply either way.[m
[32m+[m
[32m+[m[32m  8. Termination.[m
[32m+[m
[32m+[m[32m  You may not propagate or modify a covered work except as expressly[m
[32m+[m[32mprovided under this License.  Any attempt otherwise to propagate or[m
[32m+[m[32mmodify it is void, and will automatically terminate your rights under[m
[32m+[m[32mthis License (including any patent licenses granted under the third[m
[32m+[m[32mparagraph of section 11).[m
[32m+[m
[32m+[m[32m  However, if you cease all violation of this License, then your[m
[32m+[m[32mlicense from a particular copyright holder is reinstated (a)[m
[32m+[m[32mprovisionally, unless and until the copyright holder explicitly and[m
[32m+[m[32mfinally terminates your license, and (b) permanently, if the copyright[m
[32m+[m[32mholder fails to notify you of the violation by some reasonable means[m
[32m+[m[32mprior to 60 days after the cessation.[m
[32m+[m
[32m+[m[32m  Moreover, your license from a particular copyright holder is[m
[32m+[m[32mreinstated permanently if the copyright holder notifies you of the[m
[32m+[m[32mviolation by some reasonable means, this is the first time you have[m
[32m+[m[32mreceived notice of violation of this License (for any work) from that[m
[32m+[m[32mcopyright holder, and you cure the violation prior to 30 days after[m
[32m+[m[32myour receipt of the notice.[m
[32m+[m
[32m+[m[32m  Termination of your rights under this section does not terminate the[m
[32m+[m[32mlicenses of parties who have received copies or rights from you under[m
[32m+[m[32mthis License.  If your rights have been terminated and not permanently[m
[32m+[m[32mreinstated, you do not qualify to receive new licenses for the same[m
[32m+[m[32mmaterial under section 10.[m
[32m+[m
[32m+[m[32m  9. Acceptance Not Required for Having Copies.[m
[32m+[m
[32m+[m[32m  You are not required to accept this License in order to receive or[m
[32m+[m[32mrun a copy of the Program.  Ancillary propagation of a covered work[m
[32m+[m[32moccurring solely as a consequence of using peer-to-peer transmission[m
[32m+[m[32mto receive a copy likewise does not require acceptance.  However,[m
[32m+[m[32mnothing other than this License grants you permission to propagate or[m
[32m+[m[32mmodify any covered work.  These actions infringe copyright if you do[m
[32m+[m[32mnot accept this License.  Therefore, by modifying or propagating a[m
[32m+[m[32mcovered work, you indicate your acceptance of this License to do so.[m
[32m+[m
[32m+[m[32m  10. Automatic Licensing of Downstream Recipients.[m
[32m+[m
[32m+[m[32m  Each time you convey a covered work, the recipient automatically[m
[32m+[m[32mreceives a license from the original licensors, to run, modify and[m
[32m+[m[32mpropagate that work, subject to this License.  You are not responsible[m
[32m+[m[32mfor enforcing compliance by third parties with this License.[m
[32m+[m
[32m+[m[32m  An "entity transaction" is a transaction transferring control of an[m
[32m+[m[32morganization, or substantially all assets of one, or subdividing an[m
[32m+[m[32morganization, or merging organizations.  If propagation of a covered[m
[32m+[m[32mwork results from an entity transaction, each party to that[m
[32m+[m[32mtransaction who receives a copy of the work also receives whatever[m
[32m+[m[32mlicenses to the work the party's predecessor in interest had or could[m
[32m+[m[32mgive under the previous paragraph, plus a right to possession of the[m
[32m+[m[32mCorresponding Source of the work from the predecessor in interest, if[m
[32m+[m[32mthe predecessor has it or can get it with reasonable efforts.[m
[32m+[m
[32m+[m[32m  You may not impose any further restrictions on the exercise of the[m
[32m+[m[32mrights granted or affirmed under this License.  For example, you may[m
[32m+[m[32mnot impose a license fee, royalty, or other charge for exercise of[m
[32m+[m[32mrights granted under this License, and you may not initiate litigation[m
[32m+[m[32m(including a cross-claim or counterclaim in a lawsuit) alleging that[m
[32m+[m[32many patent claim is infringed by making, using, selling, offering for[m
[32m+[m[32msale, or importing the Program or any portion of it.[m
[32m+[m
[32m+[m[32m  11. Patents.[m
[32m+[m
[32m+[m[32m  A "contributor" is a copyright holder who authorizes use under this[m
[32m+[m[32mLicense of the Program or a work on which the Program is based.  The[m
[32m+[m[32mwork thus licensed is called the contributor's "contributor version".[m
[32m+[m
[32m+[m[32m  A contributor's "essential patent claims" are all patent claims[m
[32m+[m[32mowned or controlled by the contributor, whether already acquired or[m
[32m+[m[32mhereafter acquired, that would be infringed by some manner, permitted[m
[32m+[m[32mby this License, of making, using, or selling its contributor version,[m
[32m+[m[32mbut do not include claims that would be infringed only as a[m
[32m+[m[32mconsequence of further modification of the contributor version.  For[m
[32m+[m[32mpurposes of this definition, "control" includes the right to grant[m
[32m+[m[32mpatent sublicenses in a manner consistent with the requirements of[m
[32m+[m[32mthis License.[m
[32m+[m
[32m+[m[32m  Each contributor grants you a non-exclusive, worldwide, royalty-free[m
[32m+[m[32mpatent license under the contributor's essential patent claims, to[m
[32m+[m[32mmake, use, sell, offer for sale, import and otherwise run, modify and[m
[32m+[m[32mpropagate the contents of its contributor version.[m
[32m+[m
[32m+[m[32m  In the following three paragraphs, a "patent license" is any express[m
[32m+[m[32magreement or commitment, however denominated, not to enforce a patent[m
[32m+[m[32m(such as an express permission to practice a patent or covenant not to[m
[32m+[m[32msue for patent infringement).  To "grant" such a patent license to a[m
[32m+[m[32mparty means to make such an agreement or commitment not to enforce a[m
[32m+[m[32mpatent against the party.[m
[32m+[m
[32m+[m[32m  If you convey a covered work, knowingly relying on a patent license,[m
[32m+[m[32mand the Corresponding Source of the work is not available for anyone[m
[32m+[m[32mto copy, free of charge and under the terms of this License, through a[m
[32m+[m[32mpublicly available network server or other readily accessible means,[m
[32m+[m[32mthen you must either (1) cause the Corresponding Source to be so[m
[32m+[m[32mavailable, or (2) arrange to deprive yourself of the benefit of the[m
[32m+[m[32mpatent license for this particular work, or (3) arrange, in a manner[m
[32m+[m[32mconsistent with the requirements of this License, to extend the patent[m
[32m+[m[32mlicense to downstream recipients.  "Knowingly relying" means you have[m
[32m+[m[32mactual knowledge that, but for the patent license, your conveying the[m
[32m+[m[32mcovered work in a country, or your recipient's use of the covered work[m
[32m+[m[32min a country, would infringe one or more identifiable patents in that[m
[32m+[m[32mcountry that you have reason to believe are valid.[m
[32m+[m
[32m+[m[32m  If, pursuant to or in connection with a single transaction or[m
[32m+[m[32marrangement, you convey, or propagate by procuring conveyance of, a[m
[32m+[m[32mcovered work, and grant a patent license to some of the parties[m
[32m+[m[32mreceiving the covered work authorizing them to use, propagate, modify[m
[32m+[m[32mor convey a specific copy of the covered work, then the patent license[m
[32m+[m[32myou grant is automatically extended to all recipients of the covered[m
[32m+[m[32mwork and works based on it.[m
[32m+[m
[32m+[m[32m  A patent license is "discriminatory" if it does not include within[m
[32m+[m[32mthe scope of its coverage, prohibits the exercise of, or is[m
[32m+[m[32mconditioned on the non-exercise of one or more of the rights that are[m
[32m+[m[32mspecifically granted under this License.  You may not convey a covered[m
[32m+[m[32mwork if you are a party to an arrangement with a third party that is[m
[32m+[m[32min the business of distributing software, under which you make payment[m
[32m+[m[32mto the third party based on the extent of your activity of conveying[m
[32m+[m[32mthe work, and under which the third party grants, to any of the[m
[32m+[m[32mparties who would receive the covered work from you, a discriminatory[m
[32m+[m[32mpatent license (a) in connection with copies of the covered work[m
[32m+[m[32mconveyed by you (or copies made from those copies), or (b) primarily[m
[32m+[m[32mfor and in connection with specific products or compilations that[m
[32m+[m[32mcontain the covered work, unless you entered into that arrangement,[m
[32m+[m[32mor that patent license was granted, prior to 28 March 2007.[m
[32m+[m
[32m+[m[32m  Nothing in this License shall be construed as excluding or limiting[m
[32m+[m[32many implied license or other defenses to infringement that may[m
[32m+[m[32motherwise be available to you under applicable patent law.[m
[32m+[m
[32m+[m[32m  12. No Surrender of Others' Freedom.[m
[32m+[m
[32m+[m[32m  If conditions are imposed on you (whether by court order, agreement or[m
[32m+[m[32motherwise) that contradict the conditions of this License, they do not[m
[32m+[m[32mexcuse you from the conditions of this License.  If you cannot convey a[m
[32m+[m[32mcovered work so as to satisfy simultaneously your obligations under this[m
[32m+[m[32mLicense and any other pertinent obligations, then as a consequence you may[m
[32m+[m[32mnot convey it at all.  For example, if you agree to terms that obligate you[m
[32m+[m[32mto collect a royalty for further conveying from those to whom you convey[m
[32m+[m[32mthe Program, the only way you could satisfy both those terms and this[m
[32m+[m[32mLicense would be to refrain entirely from conveying the Program.[m
[32m+[m
[32m+[m[32m  13. Use with the GNU Affero General Public License.[m
[32m+[m
[32m+[m[32m  Notwithstanding any other provision of this License, you have[m
[32m+[m[32mpermission to link or combine any covered work with a work licensed[m
[32m+[m[32munder version 3 of the GNU Affero General Public License into a single[m
[32m+[m[32mcombined work, and to convey the resulting work.  The terms of this[m
[32m+[m[32mLicense will continue to apply to the part which is the covered work,[m
[32m+[m[32mbut the special requirements of the GNU Affero General Public License,[m
[32m+[m[32msection 13, concerning interaction through a network will apply to the[m
[32m+[m[32mcombination as such.[m
[32m+[m
[32m+[m[32m  14. Revised Versions of this License.[m
[32m+[m
[32m+[m[32m  The Free Software Foundation may publish revised and/or new versions of[m
[32m+[m[32mthe GNU General Public License from time to time.  Such new versions will[m
[32m+[m[32mbe similar in spirit to the present version, but may differ in detail to[m
[32m+[m[32maddress new problems or concerns.[m
[32m+[m
[32m+[m[32m  Each version is given a distinguishing version number.  If the[m
[32m+[m[32mProgram specifies that a certain numbered version of the GNU General[m
[32m+[m[32mPublic License "or any later version" applies to it, you have the[m
[32m+[m[32moption of following the terms and conditions either of that numbered[m
[32m+[m[32mversion or of any later version published by the Free Software[m
[32m+[m[32mFoundation.  If the Program does not specify a version number of the[m
[32m+[m[32mGNU General Public License, you may choose any version ever published[m
[32m+[m[32mby the Free Software Foundation.[m
[32m+[m
[32m+[m[32m  If the Program specifies that a proxy can decide which future[m
[32m+[m[32mversions of the GNU General Public License can be used, that proxy's[m
[32m+[m[32mpublic statement of acceptance of a version permanently authorizes you[m
[32m+[m[32mto choose that version for the Program.[m
[32m+[m
[32m+[m[32m  Later license versions may give you additional or different[m
[32m+[m[32mpermissions.  However, no additional obligations are imposed on any[m
[32m+[m[32mauthor or copyright holder as a result of your choosing to follow a[m
[32m+[m[32mlater version.[m
[32m+[m
[32m+[m[32m  15. Disclaimer of Warranty.[m
[32m+[m
[32m+[m[32m  THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY[m
[32m+[m[32mAPPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT[m
[32m+[m[32mHOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY[m
[32m+[m[32mOF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,[m
[32m+[m[32mTHE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR[m
[32m+[m[32mPURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM[m
[32m+[m[32mIS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF[m
[32m+[m[32mALL NECESSARY SERVICING, REPAIR OR CORRECTION.[m
[32m+[m
[32m+[m[32m  16. Limitation of Liability.[m
[32m+[m
[32m+[m[32m  IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING[m
[32m+[m[32mWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS[m
[32m+[m[32mTHE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY[m
[32m+[m[32mGENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE[m
[32m+[m[32mUSE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF[m
[32m+[m[32mDATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD[m
[32m+[m[32mPARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),[m
[32m+[m[32mEVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF[m
[32m+[m[32mSUCH DAMAGES.[m
[32m+[m
[32m+[m[32m  17. Interpretation of Sections 15 and 16.[m
[32m+[m
[32m+[m[32m  If the disclaimer of warranty and limitation of liability provided[m
[32m+[m[32mabove cannot be given local legal effect according to their terms,[m
[32m+[m[32mreviewing courts shall apply local law that most closely approximates[m
[32m+[m[32man absolute waiver of all civil liability in connection with the[m
[32m+[m[32mProgram, unless a warranty or assumption of liability accompanies a[m
[32m+[m[32mcopy of the Program in return for a fee.[m
[32m+[m
[32m+[m[32m                     END OF TERMS AND CONDITIONS[m
[32m+[m
[32m+[m[32m            How to Apply These Terms to Your New Programs[m
[32m+[m
[32m+[m[32m  If you develop a new program, and you want it to be of the greatest[m
[32m+[m[32mpossible use to the public, the best way to achieve this is to make it[m
[32m+[m[32mfree software which everyone can redistribute and change under these terms.[m
[32m+[m
[32m+[m[32m  To do so, attach the following notices to the program.  It is safest[m
[32m+[m[32mto attach them to the start of each source file to most effectively[m
[32m+[m[32mstate the exclusion of warranty; and each file should have at least[m
[32m+[m[32mthe "copyright" line and a pointer to where the full notice is found.[m
[32m+[m
[32m+[m[32m    <one line to give the program's name and a brief idea of what it does.>[m
[32m+[m[32m    Copyright (C) <year>  <name of author>[m
[32m+[m
[32m+[m[32m    This program is free software: you can redistribute it and/or modify[m
[32m+[m[32m    it under the terms of the GNU General Public License as published by[m
[32m+[m[32m    the Free Software Foundation, either version 3 of the License, or[m
[32m+[m[32m    (at your option) any later version.[m
[32m+[m
[32m+[m[32m    This program is distributed in the hope that it will be useful,[m
[32m+[m[32m    but WITHOUT ANY WARRANTY; without even the implied warranty of[m
[32m+[m[32m    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the[m
[32m+[m[32m    GNU General Public License for more details.[m
[32m+[m
[32m+[m[32m    You should have received a copy of the GNU General Public License[m
[32m+[m[32m    along with this program.  If not, see <https://www.gnu.org/licenses/>.[m
[32m+[m
[32m+[m[32mAlso add information on how to contact you by electronic and paper mail.[m
[32m+[m
[32m+[m[32m  If the program does terminal interaction, make it output a short[m
[32m+[m[32mnotice like this when it starts in an interactive mode:[m
[32m+[m
[32m+[m[32m    <program>  Copyright (C) <year>  <name of author>[m
[32m+[m[32m    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.[m
[32m+[m[32m    This is free software, and you are welcome to redistribute it[m
[32m+[m[32m    under certain conditions; type `show c' for details.[m
[32m+[m
[32m+[m[32mThe hypothetical commands `show w' and `show c' should show the appropriate[m
[32m+[m[32mparts of the General Public License.  Of course, your program's commands[m
[32m+[m[32mmight be different; for a GUI interface, you would use an "about box".[m
[32m+[m
[32m+[m[32m  You should also get your employer (if you work as a programmer) or school,[m
[32m+[m[32mif any, to sign a "copyright disclaimer" for the program, if necessary.[m
[32m+[m[32mFor more information on this, and how to apply and follow the GNU GPL, see[m
[32m+[m[32m<https://www.gnu.org/licenses/>.[m
[32m+[m
[32m+[m[32m  The GNU General Public License does not permit incorporating your program[m
[32m+[m[32minto proprietary programs.  If your program is a subroutine library, you[m
[32m+[m[32mmay consider it more useful to permit linking proprietary applications with[m
[32m+[m[32mthe library.  If this is what you want to do, use the GNU Lesser General[m
[32m+[m[32mPublic License instead of this License.  But first, please read[m
[32m+[m[32m<https://www.gnu.org/licenses/why-not-lgpl.html>.[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..5de8cdd[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,31 @@[m
[32m+[m[32m# Limine C++ Template[m
[32m+[m
[32m+[m[32mThis repository will demonstrate how to set up a basic kernel in C++ using Limine.[m
[32m+[m
[32m+[m[32m## How to use this?[m
[32m+[m
[32m+[m[32m### Dependencies[m
[32m+[m
[32m+[m[32mAny `make` command depends on GNU make (`gmake`) and is expected to be run using it. This usually means using `make` on most GNU/Linux distros, or `gmake` on other non-GNU systems.[m
[32m+[m
[32m+[m[32mIt is recommended to build this project using a standard UNIX-like system, using a Clang/LLVM toolchain capable of cross compilation.[m
[32m+[m
[32m+[m[32mAdditionally, building an ISO with `make all` requires `xorriso`, and building a HDD/USB image with `make all-hdd` requires `sgdisk` (usually from `gdisk` or `gptfdisk` packages) and `mtools`.[m
[32m+[m
[32m+[m[32m### Architectural targets[m
[32m+[m
[32m+[m[32mThe `ARCH` make variable determines the target architecture to build the kernel and image for.[m
[32m+[m
[32m+[m[32mThe default `ARCH` is `x86_64`. Other options include: `aarch64`, `loongarch64`, and `riscv64`.[m
[32m+[m
[32m+[m[32m### Makefile targets[m
[32m+[m
[32m+[m[32mRunning `make all` will compile the kernel (from the `kernel/` directory) and then generate a bootable ISO image.[m
[32m+[m
[32m+[m[32mRunning `make all-hdd` will compile the kernel and then generate a raw image suitable to be flashed onto a USB stick or hard drive/SSD.[m
[32m+[m
[32m+[m[32mRunning `make run` will build the kernel and a bootable ISO (equivalent to make all) and then run it using `qemu` (if installed).[m
[32m+[m
[32m+[m[32mRunning `make run-hdd` will build the kernel and a raw HDD image (equivalent to make all-hdd) and then run it using `qemu` (if installed).[m
[32m+[m
[32m+[m[32mFor x86_64, the `run-bios` and `run-hdd-bios` targets are equivalent to their non `-bios` counterparts except that they boot `qemu` using the default SeaBIOS firmware instead of OVMF.[m
[1mdiff --git a/filetoc b/filetoc[m
[1mnew file mode 100755[m
[1mindex 0000000..6360569[m
Binary files /dev/null and b/filetoc differ
[1mdiff --git a/kernel/.gitignore b/kernel/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..4165cf5[m
[1m--- /dev/null[m
[1m+++ b/kernel/.gitignore[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m/freestnd-c-hdrs[m
[32m+[m[32m/freestnd-cxx-hdrs[m
[32m+[m[32m/cc-runtime*[m
[32m+[m[32m/src/limine.h[m
[32m+[m[32m/bin-*[m
[32m+[m[32m/obj-*[m
[1mdiff --git a/kernel/GNUmakefile b/kernel/GNUmakefile[m
[1mnew file mode 100644[m
[1mindex 0000000..313951f[m
[1m--- /dev/null[m
[1m+++ b/kernel/GNUmakefile[m
[36m@@ -0,0 +1,283 @@[m
[32m+[m[32m# Nuke built-in rules and variables.[m
[32m+[m[32mMAKEFLAGS += -rR[m
[32m+[m[32m.SUFFIXES:[m
[32m+[m
[32m+[m[32m# This is the name that our final executable will have.[m
[32m+[m[32m# Change as needed.[m
[32m+[m[32moverride OUTPUT := kernel[m
[32m+[m
[32m+[m[32m# Target architecture to build for. Default to x86_64.[m
[32m+[m[32mARCH := x86_64[m
[32m+[m
[32m+[m[32m# Install prefix; /usr/local is a good, standard default pick.[m
[32m+[m[32mPREFIX := /usr/local[m
[32m+[m
[32m+[m[32m# Check if the architecture is supported.[m
[32m+[m[32mifeq ($(filter $(ARCH),aarch64 loongarch64 riscv64 x86_64),)[m
[32m+[m[32m    $(error Architecture $(ARCH) not supported)[m
[32m+[m[32mendif[m
[32m+[m
[32m+[m[32m# User controllable C compiler command.[m
[32m+[m[32mCC := cc[m
[32m+[m
[32m+[m[32m# User controllable C++ compiler command.[m
[32m+[m[32mCXX := c++[m
[32m+[m
[32m+[m[32m# User controllable archiver command.[m
[32m+[m[32mAR := ar[m
[32m+[m
[32m+[m[32m# User controllable C flags.[m
[32m+[m[32mCFLAGS := -g -O2 -pipe[m
[32m+[m
[32m+[m[32m# User controllable C++ flags. We default to same as C flags.[m
[32m+[m[32mCXXFLAGS := $(CFLAGS)[m
[32m+[m
[32m+[m[32m# User controllable C/C++ preprocessor flags. We set none by default.[m
[32m+[m[32mCPPFLAGS :=[m
[32m+[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m[32m    # User controllable nasm flags.[m
[32m+[m[32m    NASMFLAGS := -F dwarf -g[m
[32m+[m[32mendif[m
[32m+[m
[32m+[m[32m# User controllable linker flags. We set none by default.[m
[32m+[m[32mLDFLAGS :=[m
[32m+[m
[32m+[m[32m# Ensure the dependencies have been obtained.[m
[32m+[m[32mifneq ($(shell ( test '$(MAKECMDGOALS)' = clean || test '$(MAKECMDGOALS)' = distclean ); echo $$?),0)[m
[32m+[m[32m    ifeq ($(shell ( ! test -d freestnd-c-hdrs || ! test -d freestnd-cxx-hdrs || ! test -d cc-runtime || ! test -f src/limine.h ); echo $$?),0)[m
[32m+[m[32m        $(error Please run the ./get-deps script first)[m
[32m+[m[32m    endif[m
[32m+[m[32mendif[m
[32m+[m
[32m+[m[32m# Check if CC is Clang.[m
[32m+[m[32moverride CC_IS_CLANG := $(shell ! $(CC) --version 2>/dev/null | grep 'clang' >/dev/null 2>&1; echo $$?)[m
[32m+[m
[32m+[m[32m# Check if CXX is Clang.[m
[32m+[m[32moverride CXX_IS_CLANG := $(shell ! $(CXX) --version 2>/dev/null | grep 'clang' >/dev/null 2>&1; echo $$?)[m
[32m+[m
[32m+[m[32m# Internal flags shared by both C and C++ compilers.[m
[32m+[m[32mSHARED_FLAGS := \[m
[32m+[m[32m    -Wall \[m
[32m+[m[32m    -Wextra \[m
[32m+[m[32m    -nostdinc \[m
[32m+[m[32m    -ffreestanding \[m
[32m+[m[32m    -fno-stack-protector \[m
[32m+[m[32m    -fno-stack-check \[m
[32m+[m[32m    -fno-PIC \[m
[32m+[m[32m    -ffunction-sections \[m
[32m+[m[32m    -fdata-sections \[m
[32m+[m[32m    -g0 \[m
[32m+[m[32m    -fno-debug-cpp \[m
[32m+[m[32m    -fmessage-length=0 \[m
[32m+[m[32m    -mno-red-zone \[m
[32m+[m[32m    -mgeneral-regs-only[m
[32m+[m
[32m+[m[32m# Internal C/C++ preprocessor flags that should not be changed by the user.[m
[32m+[m[32moverride CPPFLAGS_C := \[m
[32m+[m[32m    -I src \[m
[32m+[m[32m    -isystem freestnd-c-hdrs/$(ARCH)/include \[m
[32m+[m[32m    $(CPPFLAGS) \[m
[32m+[m[32m    -DLIMINE_API_REVISION=2 \[m
[32m+[m[32m    -MMD \[m
[32m+[m[32m    -MP[m
[32m+[m
[32m+[m[32m# Internal C++ only preprocessor flags.[m
[32m+[m[32moverride CPPFLAGS_CXX := \[m
[32m+[m[32m    -I src \[m
[32m+[m[32m    -isystem freestnd-c-hdrs/$(ARCH)/include \[m
[32m+[m[32m    -isystem freestnd-cxx-hdrs/$(ARCH)/include \[m
[32m+[m[32m    $(CPPFLAGS) \[m
[32m+[m[32m    -DLIMINE_API_REVISION=2 \[m
[32m+[m[32m    -MMD \[m
[32m+[m[32m    -MP[m
[32m+[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m[32m    # Internal nasm flags that should not be changed by the user.[m
[32m+[m[32m    override NASMFLAGS += \[m
[32m+[m[32m        -Wall[m
[32m+[m[32mendif[m
[32m+[m
[32m+[m[32m# Architecture specific internal flags.[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m[32m    ifeq ($(CC_IS_CLANG),1)[m
[32m+[m[32m        override CC += \[m
[32m+[m[32m            -target x86_64-unknown-none[m
[32m+[m[32m    endif[m
[32m+[m[32m    ifeq ($(CXX_IS_CLANG),1)[m
[32m+[m[32m        override CXX += \[m
[32m+[m[32m            -target x86_64-unknown-none[m
[32m+[m[32m    endif[m
[32m+[m[32m    override SHARED_FLAGS += \[m
[32m+[m[32m        -m64 \[m
[32m+[m[32m        -march=x86-64 \[m
[32m+[m[32m        -mno-80387 \[m
[32m+[m[32m        -mno-mmx \[m
[32m+[m[32m        -mno-sse \[m
[32m+[m[32m        -mno-sse2 \[m
[32m+[m[32m        -mno-red-zone \[m
[32m+[m[32m        -mcmodel=kernel[m
[32m+[m[32m    override LDFLAGS += \[m
[32m+[m[32m        -Wl,-m,elf_x86_64[m
[32m+[m[32m    override NASMFLAGS += \[m
[32m+[m[32m        -f elf64[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),aarch64)[m
[32m+[m[32m    ifeq ($(CC_IS_CLANG),1)[m
[32m+[m[32m        override CC += \[m
[32m+[m[32m            -target aarch64-unknown-none[m
[32m+[m[32m    endif[m
[32m+[m[32m    ifeq ($(CXX_IS_CLANG),1)[m
[32m+[m[32m        override CXX += \[m
[32m+[m[32m            -target aarch64-unknown-none[m
[32m+[m[32m    endif[m
[32m+[m[32m    override SHARED_FLAGS += \[m
[32m+[m[32m        -mgeneral-regs-only[m
[32m+[m[32m    override LDFLAGS += \[m
[32m+[m[32m        -Wl,-m,aarch64elf[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),riscv64)[m
[32m+[m[32m    ifeq ($(CC_IS_CLANG),1)[m
[32m+[m[32m        override CC += \[m
[32m+[m[32m            -target riscv64-unknown-none[m
[32m+[m[32m        override CFLAGS += \[m
[32m+[m[32m            -march=rv64imac[m
[32m+[m[32m    else[m
[32m+[m[32m        override CFLAGS += \[m
[32m+[m[32m            -march=rv64imac_zicsr_zifencei[m
[32m+[m[32m    endif[m
[32m+[m[32m    ifeq ($(CXX_IS_CLANG),1)[m
[32m+[m[32m        override CXX += \[m
[32m+[m[32m            -target riscv64-unknown-none[m
[32m+[m[32m        override CXXFLAGS += \[m
[32m+[m[32m            -march=rv64imac[m
[32m+[m[32m    else[m
[32m+[m[32m        override CXXFLAGS += \[m
[32m+[m[32m            -march=rv64imac_zicsr_zifencei[m
[32m+[m[32m    endif[m
[32m+[m[32m    override SHARED_FLAGS += \[m
[32m+[m[32m        -mabi=lp64 \[m
[32m+[m[32m        -mno-relax[m
[32m+[m[32m    override LDFLAGS += \[m
[32m+[m[32m        -Wl,-m,elf64lriscv \[m
[32m+[m[32m        -Wl,--no-relax[m
[32m+[m[32mendif[m
[32m+[m[32mifeq ($(ARCH),loongarch64)[m
[32m+[m[32m    ifeq ($(CC_IS_CLANG),1)[m
[32m+[m[32m        override CC += \[m
[32m+[m[32m            -target loongarch64-unknown-none[m
[32m+[m[32m    endif[m
[32m+[m[32m    ifeq ($(CXX_IS_CLANG),1)[m
[32m+[m[32m        override CXX += \[m
[32m+[m[32m            -target loongarch64-unknown-none[m
[32m+[m[32m    endif[m
[32m+[m[32m    override SHARED_FLAGS += \[m
[32m+[m[32m        -march=loongarch64 \[m
[32m+[m[32m        -mabi=lp64s[m
[32m+[m[32m    override LDFLAGS += \[m
[32m+[m[32m        -Wl,-m,elf64loongarch \[m
[32m+[m[32m        -Wl,--no-relax[m
[32m+[m[32mendif[m
[32m+[m
[32m+[m[32m# Internal C flags that should not be changed by the user.[m
[32m+[m[32moverride CFLAGS += \[m
[32m+[m[32m    -std=gnu11 \[m
[32m+[m[32m    $(SHARED_FLAGS)[m
[32m+[m
[32m+[m[32m# Internal C++ flags that should not be changed by the user.[m
[32m+[m[32moverride CXXFLAGS += \[m
[32m+[m[32m    -std=gnu++20 \[m
[32m+[m[32m    -fno-rtti \[m
[32m+[m[32m    -fno-exceptions \[m
[32m+[m[32m    $(SHARED_FLAGS)[m
[32m+[m
[32m+[m[32m# Internal linker flags that should not be changed by the user.[m
[32m+[m[32moverride LDFLAGS += \[m
[32m+[m[32m    -Wl,--build-id=none \[m
[32m+[m[32m    -nostdlib \[m
[32m+[m[32m    -static \[m
[32m+[m[32m    -z max-page-size=0x1000 \[m
[32m+[m[32m    -Wl,--gc-sections \[m
[32m+[m[32m    -T linker-$(ARCH).ld[m
[32m+[m
[32m+[m[32m# Use "find" to glob all *.c, *.cpp, *.S, and *.asm files in the tree and obtain the[m
[32m+[m[32m# object and header dependency file names.[m
[32m+[m[32moverride SRCFILES := $(shell cd src && find -L * -type f | LC_ALL=C sort)[m
[32m+[m[32moverride CFILES := $(filter %.c,$(SRCFILES))[m
[32m+[m[32moverride CXXFILES := $(filter %.cpp,$(SRCFILES))[m
[32m+[m[32moverride ASFILES := $(filter %.S,$(SRCFILES))[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m[32moverride NASMFILES := $(filter %.asm,$(SRCFILES))[m
[32m+[m[32mendif[m
[32m+[m[32moverride OBJ := $(addprefix obj-$(ARCH)/,$(CFILES:.c=.c.o) $(CXXFILES:.cpp=.cpp.o) $(ASFILES:.S=.S.o))[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m[32moverride OBJ += $(addprefix obj-$(ARCH)/,$(NASMFILES:.asm=.asm.o))[m
[32m+[m[32mendif[m
[32m+[m[32moverride HEADER_DEPS := $(addprefix obj-$(ARCH)/,$(CFILES:.c=.c.d) $(CXXFILES:.cpp:.cpp.d) $(ASFILES:.S:.S.d))[m
[32m+[m[32moverride CXXFILES += kernel/src/Interrupts/Interrupts.cpp kernel/src/Interrupts/IDT.cpp[m
[32m+[m
[32m+[m[32m# Default target. This must come first, before header dependencies.[m
[32m+[m[32m.PHONY: all[m
[32m+[m[32mall: bin-$(ARCH)/$(OUTPUT)[m
[32m+[m
[32m+[m[32m# Include header dependencies.[m
[32m+[m[32m-include $(HEADER_DEPS)[m
[32m+[m
[32m+[m[32m# Link rules for building the C compiler runtime.[m
[32m+[m[32mcc-runtime-$(ARCH)/cc-runtime.a: GNUmakefile cc-runtime/*[m
[32m+[m	[32mrm -rf cc-runtime-$(ARCH)[m
[32m+[m	[32mcp -r cc-runtime cc-runtime-$(ARCH)[m
[32m+[m	[32m$(MAKE) -C cc-runtime-$(ARCH) -f cc-runtime.mk \[m
[32m+[m		[32mCC="$(CC)" \[m
[32m+[m		[32mAR="$(AR)" \[m
[32m+[m		[32mCFLAGS="$(CFLAGS)" \[m
[32m+[m		[32mCPPFLAGS='-isystem ../freestnd-c-hdrs/$(ARCH)/include -DCC_RUNTIME_NO_FLOAT'[m
[32m+[m
[32m+[m[32m# Link rules for the final executable.[m
[32m+[m[32mbin-$(ARCH)/$(OUTPUT): GNUmakefile linker-$(ARCH).ld $(OBJ) cc-runtime-$(ARCH)/cc-runtime.a[m
[32m+[m	[32mmkdir -p "$$(dirname $@)"[m
[32m+[m	[32m$(CXX) $(CXXFLAGS) $(LDFLAGS) $(OBJ) cc-runtime-$(ARCH)/cc-runtime.a -o $@[m
[32m+[m
[32m+[m[32m# Compilation rules for *.c files.[m
[32m+[m[32mobj-$(ARCH)/%.c.o: src/%.c GNUmakefile[m
[32m+[m	[32mmkdir -p "$$(dirname $@)"[m
[32m+[m	[32m$(CC) $(CFLAGS) $(CPPFLAGS_C) -c $< -o $@[m
[32m+[m
[32m+[m[32m# Compilation rules for *.cpp files.[m
[32m+[m[32mobj-$(ARCH)/%.cpp.o: src/%.cpp GNUmakefile[m
[32m+[m	[32mmkdir -p "$$(dirname $@)"[m
[32m+[m	[32m$(CXX) $(CXXFLAGS) $(CPPFLAGS_CXX) -c $< -o $@[m
[32m+[m
[32m+[m[32m# Compilation rules for *.S files.[m
[32m+[m[32mobj-$(ARCH)/%.S.o: src/%.S GNUmakefile[m
[32m+[m	[32mmkdir -p "$$(dirname $@)"[m
[32m+[m	[32m$(CC) $(CFLAGS) $(CPPFLAGS_C) -c $< -o $@[m
[32m+[m
[32m+[m[32mifeq ($(ARCH),x86_64)[m
[32m+[m[32m# Compilation rules for *.asm (nasm) files.[m
[32m+[m[32mobj-$(ARCH)/%.asm.o: src/%.asm GNUmakefile[m
[32m+[m	[32mmkdir -p "$$(dirname $@)"[m
[32m+[m	[32mnasm $(NASMFLAGS) $< -o $@[m
[32m+[m[32mendif[m
[32m+[m
[32m+[m[32m# Remove object files and the final executable.[m
[32m+[m[32m.PHONY: clean[m
[32m+[m[32mclean:[m
[32m+[m	[32mrm -rf bin-$(ARCH) obj-$(ARCH) cc-runtime-$(ARCH)[m
[32m+[m
[32m+[m[32m# Remove everything built and generated including downloaded dependencies.[m
[32m+[m[32m.PHONY: distclean[m
[32m+[m[32mdistclean:[m
[32m+[m	[32mrm -rf bin-* obj-* freestnd-c-hdrs freestnd-cxx-hdrs cc-runtime* src/limine.h[m
[32m+[m
[32m+[m[32m# Install the final built executable to its final on-root location.[m
[32m+[m[32m.PHONY: install[m
[32m+[m[32minstall: all[m
[32m+[m	[32minstall -d "$(DESTDIR)$(PREFIX)/share/$(OUTPUT)"[m
[32m+[m	[32minstall -m 644 bin-$(ARCH)/$(OUTPUT) "$(DESTDIR)$(PREFIX)/share/$(OUTPUT)/$(OUTPUT)-$(ARCH)"[m
[32m+[m
[32m+[m[32m# Try to undo whatever the "install" target did.[m
[32m+[m[32m.PHONY: uninstall[m
[32m+[m[32muninstall:[m
[32m+[m	[32mrm -f "$(DESTDIR)$(PREFIX)/share/$(OUTPUT)/$(OUTPUT)-$(ARCH)"[m
[32m+[m	[32m-rmdir "$(DESTDIR)$(PREFIX)/share/$(OUTPUT)"[m
[1mdiff --git a/kernel/get-deps b/kernel/get-deps[m
[1mnew file mode 100755[m
[1mindex 0000000..ebd540c[m
[1m--- /dev/null[m
[1m+++ b/kernel/get-deps[m
[36m@@ -0,0 +1,85 @@[m
[32m+[m[32m#! /bin/sh[m
[32m+[m
[32m+[m[32mset -ex[m
[32m+[m
[32m+[m[32msrcdir="$(dirname "$0")"[m
[32m+[m[32mtest -z "$srcdir" && srcdir=.[m
[32m+[m
[32m+[m[32mcd "$srcdir"[m
[32m+[m
[32m+[m[32mclone_repo_commit() {[m
[32m+[m[32m    if test -d "$2/.git"; then[m
[32m+[m[32m        git -C "$2" reset --hard[m
[32m+[m[32m        git -C "$2" clean -fd[m
[32m+[m[32m        if ! git -C "$2" checkout $3; then[m
[32m+[m[32m            rm -rf "$2"[m
[32m+[m[32m        fi[m
[32m+[m[32m    else[m
[32m+[m[32m        if test -d "$2"; then[m
[32m+[m[32m            set +x[m
[32m+[m[32m            echo "error: '$2' is not a Git repository"[m
[32m+[m[32m            exit 1[m
[32m+[m[32m        fi[m
[32m+[m[32m    fi[m
[32m+[m[32m    if ! test -d "$2"; then[m
[32m+[m[32m        git clone $1 "$2"[m
[32m+[m[32m        if ! git -C "$2" checkout $3; then[m
[32m+[m[32m            rm -rf "$2"[m
[32m+[m[32m            exit 1[m
[32m+[m[32m        fi[m
[32m+[m[32m    fi[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdownload_by_hash() {[m
[32m+[m[32m    DOWNLOAD_COMMAND="curl -Lo"[m
[32m+[m[32m    if ! command -v $DOWNLOAD_COMMAND >/dev/null 2>&1; then[m
[32m+[m[32m        DOWNLOAD_COMMAND="wget -O"[m
[32m+[m[32m        if ! command -v $DOWNLOAD_COMMAND >/dev/null 2>&1; then[m
[32m+[m[32m            set +x[m
[32m+[m[32m            echo "error: Neither curl nor wget found"[m
[32m+[m[32m            exit 1[m
[32m+[m[32m        fi[m
[32m+[m[32m    fi[m
[32m+[m[32m    SHA256_COMMAND="sha256sum"[m
[32m+[m[32m    if ! command -v $SHA256_COMMAND >/dev/null 2>&1; then[m
[32m+[m[32m        SHA256_COMMAND="sha256"[m
[32m+[m[32m        if ! command -v $SHA256_COMMAND >/dev/null 2>&1; then[m
[32m+[m[32m            set +x[m
[32m+[m[32m            echo "error: Cannot find sha256(sum) command"[m
[32m+[m[32m            exit 1[m
[32m+[m[32m        fi[m
[32m+[m[32m    fi[m
[32m+[m[32m    if ! test -f "$2" || ! $SHA256_COMMAND "$2" | grep $3 >/dev/null 2>&1; then[m
[32m+[m[32m        rm -f "$2"[m
[32m+[m[32m        mkdir -p "$2" && rm -rf "$2"[m
[32m+[m[32m        $DOWNLOAD_COMMAND "$2" $1[m
[32m+[m[32m        if ! $SHA256_COMMAND "$2" | grep $3 >/dev/null 2>&1; then[m
[32m+[m[32m            set +x[m
[32m+[m[32m            echo "error: Cannot download file '$2' by hash"[m
[32m+[m[32m            echo "incorrect hash:"[m
[32m+[m[32m            $SHA256_COMMAND "$2"[m
[32m+[m[32m            rm -f "$2"[m
[32m+[m[32m            exit 1[m
[32m+[m[32m        fi[m
[32m+[m[32m    fi[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mclone_repo_commit \[m
[32m+[m[32m    https://github.com/osdev0/freestnd-c-hdrs.git \[m
[32m+[m[32m    freestnd-c-hdrs \[m
[32m+[m[32m    2a75fc37ab374e52bd5862adb785169cc26cdb50[m
[32m+[m
[32m+[m[32mclone_repo_commit \[m
[32m+[m[32m    https://github.com/osdev0/freestnd-cxx-hdrs.git \[m
[32m+[m[32m    freestnd-cxx-hdrs \[m
[32m+[m[32m    674dcb02b37d55c77f7171c5c46efd5cd3dc0f5f[m
[32m+[m
[32m+[m[32mclone_repo_commit \[m
[32m+[m[32m    https://github.com/osdev0/cc-runtime.git \[m
[32m+[m[32m    cc-runtime \[m
[32m+[m[32m    9c281448fe40498a6341d74f55c9af4f642c0b1d[m
[32m+[m
[32m+[m[32mdownload_by_hash \[m
[32m+[m[32m    https://github.com/limine-bootloader/limine/raw/7cddb61183685d9bddd2eb13d42223d929c2abe6/limine.h \[m
[32m+[m[32m    src/limine.h \[m
[32m+[m[32m    c00e7d4cd6e2674eca481f978b64a7fb8c8479cc32c466ec35aad2207761bf01[m
[1mdiff --git a/kernel/linker-aarch64.ld b/kernel/linker-aarch64.ld[m
[1mnew file mode 100644[m
[1mindex 0000000..00ad9ec[m
[1m--- /dev/null[m
[1m+++ b/kernel/linker-aarch64.ld[m
[36m@@ -0,0 +1,77 @@[m
[32m+[m[32m/* Tell the linker that we want an aarch64 ELF64 output file */[m
[32m+[m[32mOUTPUT_FORMAT(elf64-littleaarch64)[m
[32m+[m
[32m+[m[32m/* We want the symbol kmain to be our entry point */[m
[32m+[m[32mENTRY(kmain)[m
[32m+[m
[32m+[m[32m/* Define the program headers we want so the bootloader gives us the right */[m
[32m+[m[32m/* MMU permissions; this also allows us to exert more control over the linking */[m
[32m+[m[32m/* process. */[m
[32m+[m[32mPHDRS[m
[32m+[m[32m{[m
[32m+[m[32m    limine_requests PT_LOAD;[m
[32m+[m[32m    text PT_LOAD;[m
[32m+[m[32m    rodata PT_LOAD;[m
[32m+[m[32m    data PT_LOAD;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mSECTIONS[m
[32m+[m[32m{[m
[32m+[m[32m    /* We want to be placed in the topmost 2GiB of the address space, for optimisations */[m
[32m+[m[32m    /* and because that is what the Limine spec mandates. */[m
[32m+[m[32m    /* Any address in this region will do, but often 0xffffffff80000000 is chosen as */[m
[32m+[m[32m    /* that is the beginning of the region. */[m
[32m+[m[32m    . = 0xffffffff80000000;[m
[32m+[m
[32m+[m[32m    /* Define a section to contain the Limine requests and assign it to its own PHDR */[m
[32m+[m[32m    .limine_requests : {[m
[32m+[m[32m        KEEP(*(.limine_requests_start))[m
[32m+[m[32m        KEEP(*(.limine_requests))[m
[32m+[m[32m        KEEP(*(.limine_requests_end))[m
[32m+[m[32m    } :limine_requests[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .text */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .text : {[m
[32m+[m[32m        *(.text .text.*)[m
[32m+[m[32m    } :text[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .rodata */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .rodata : {[m
[32m+[m[32m        *(.rodata .rodata.*)[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* C++ is a language that allows for global constructors. In order to obtain the */[m
[32m+[m[32m    /* address of the ".init_array" section we need to define a symbol for it. */[m
[32m+[m[32m    .init_array : {[m
[32m+[m[32m        __init_array = .;[m
[32m+[m[32m        KEEP(*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))[m
[32m+[m[32m        KEEP(*(.init_array .ctors))[m
[32m+[m[32m        __init_array_end = .;[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .data */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .data : {[m
[32m+[m[32m        *(.data .data.*)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* NOTE: .bss needs to be the last thing mapped to :data, otherwise lots of */[m
[32m+[m[32m    /* unnecessary zeros will be written to the binary. */[m
[32m+[m[32m    /* If you need, for example, .init_array and .fini_array, those should be placed */[m
[32m+[m[32m    /* above this. */[m
[32m+[m[32m    .bss : {[m
[32m+[m[32m        *(.bss .bss.*)[m
[32m+[m[32m        *(COMMON)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* Discard .note.* and .eh_frame* since they may cause issues on some hosts. */[m
[32m+[m[32m    /DISCARD/ : {[m
[32m+[m[32m        *(.eh_frame*)[m
[32m+[m[32m        *(.note .note.*)[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/kernel/linker-loongarch64.ld b/kernel/linker-loongarch64.ld[m
[1mnew file mode 100644[m
[1mindex 0000000..a437cb7[m
[1m--- /dev/null[m
[1m+++ b/kernel/linker-loongarch64.ld[m
[36m@@ -0,0 +1,77 @@[m
[32m+[m[32m/* Tell the linker that we want a loongarch64 ELF64 output file */[m
[32m+[m[32mOUTPUT_FORMAT(elf64-loongarch)[m
[32m+[m
[32m+[m[32m/* We want the symbol kmain to be our entry point */[m
[32m+[m[32mENTRY(kmain)[m
[32m+[m
[32m+[m[32m/* Define the program headers we want so the bootloader gives us the right */[m
[32m+[m[32m/* MMU permissions; this also allows us to exert more control over the linking */[m
[32m+[m[32m/* process. */[m
[32m+[m[32mPHDRS[m
[32m+[m[32m{[m
[32m+[m[32m    limine_requests PT_LOAD;[m
[32m+[m[32m    text PT_LOAD;[m
[32m+[m[32m    rodata PT_LOAD;[m
[32m+[m[32m    data PT_LOAD;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mSECTIONS[m
[32m+[m[32m{[m
[32m+[m[32m    /* We want to be placed in the topmost 2GiB of the address space, for optimisations */[m
[32m+[m[32m    /* and because that is what the Limine spec mandates. */[m
[32m+[m[32m    /* Any address in this region will do, but often 0xffffffff80000000 is chosen as */[m
[32m+[m[32m    /* that is the beginning of the region. */[m
[32m+[m[32m    . = 0xffffffff80000000;[m
[32m+[m
[32m+[m[32m    /* Define a section to contain the Limine requests and assign it to its own PHDR */[m
[32m+[m[32m    .limine_requests : {[m
[32m+[m[32m        KEEP(*(.limine_requests_start))[m
[32m+[m[32m        KEEP(*(.limine_requests))[m
[32m+[m[32m        KEEP(*(.limine_requests_end))[m
[32m+[m[32m    } :limine_requests[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .text */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .text : {[m
[32m+[m[32m        *(.text .text.*)[m
[32m+[m[32m    } :text[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .rodata */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .rodata : {[m
[32m+[m[32m        *(.rodata .rodata.*)[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* C++ is a language that allows for global constructors. In order to obtain the */[m
[32m+[m[32m    /* address of the ".init_array" section we need to define a symbol for it. */[m
[32m+[m[32m    .init_array : {[m
[32m+[m[32m        __init_array = .;[m
[32m+[m[32m        KEEP(*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))[m
[32m+[m[32m        KEEP(*(.init_array .ctors))[m
[32m+[m[32m        __init_array_end = .;[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .data */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .data : {[m
[32m+[m[32m        *(.data .data.*)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* NOTE: .bss needs to be the last thing mapped to :data, otherwise lots of */[m
[32m+[m[32m    /* unnecessary zeros will be written to the binary. */[m
[32m+[m[32m    /* If you need, for example, .init_array and .fini_array, those should be placed */[m
[32m+[m[32m    /* above this. */[m
[32m+[m[32m    .bss : {[m
[32m+[m[32m        *(.bss .bss.*)[m
[32m+[m[32m        *(COMMON)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* Discard .note.* and .eh_frame* since they may cause issues on some hosts. */[m
[32m+[m[32m    /DISCARD/ : {[m
[32m+[m[32m        *(.eh_frame*)[m
[32m+[m[32m        *(.note .note.*)[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/kernel/linker-riscv64.ld b/kernel/linker-riscv64.ld[m
[1mnew file mode 100644[m
[1mindex 0000000..489ef29[m
[1m--- /dev/null[m
[1m+++ b/kernel/linker-riscv64.ld[m
[36m@@ -0,0 +1,79 @@[m
[32m+[m[32m/* Tell the linker that we want a riscv64 ELF64 output file */[m
[32m+[m[32mOUTPUT_FORMAT(elf64-littleriscv)[m
[32m+[m
[32m+[m[32m/* We want the symbol kmain to be our entry point */[m
[32m+[m[32mENTRY(kmain)[m
[32m+[m
[32m+[m[32m/* Define the program headers we want so the bootloader gives us the right */[m
[32m+[m[32m/* MMU permissions; this also allows us to exert more control over the linking */[m
[32m+[m[32m/* process. */[m
[32m+[m[32mPHDRS[m
[32m+[m[32m{[m
[32m+[m[32m    limine_requests PT_LOAD;[m
[32m+[m[32m    text PT_LOAD;[m
[32m+[m[32m    rodata PT_LOAD;[m
[32m+[m[32m    data PT_LOAD;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mSECTIONS[m
[32m+[m[32m{[m
[32m+[m[32m    /* We want to be placed in the topmost 2GiB of the address space, for optimisations */[m
[32m+[m[32m    /* and because that is what the Limine spec mandates. */[m
[32m+[m[32m    /* Any address in this region will do, but often 0xffffffff80000000 is chosen as */[m
[32m+[m[32m    /* that is the beginning of the region. */[m
[32m+[m[32m    . = 0xffffffff80000000;[m
[32m+[m
[32m+[m[32m    /* Define a section to contain the Limine requests and assign it to its own PHDR */[m
[32m+[m[32m    .limine_requests : {[m
[32m+[m[32m        KEEP(*(.limine_requests_start))[m
[32m+[m[32m        KEEP(*(.limine_requests))[m
[32m+[m[32m        KEEP(*(.limine_requests_end))[m
[32m+[m[32m    } :limine_requests[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .text */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .text : {[m
[32m+[m[32m        *(.text .text.*)[m
[32m+[m[32m    } :text[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .rodata */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .rodata : {[m
[32m+[m[32m        *(.rodata .rodata.*)[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* C++ is a language that allows for global constructors. In order to obtain the */[m
[32m+[m[32m    /* address of the ".init_array" section we need to define a symbol for it. */[m
[32m+[m[32m    .init_array : {[m
[32m+[m[32m        __init_array = .;[m
[32m+[m[32m        KEEP(*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))[m
[32m+[m[32m        KEEP(*(.init_array .ctors))[m
[32m+[m[32m        __init_array_end = .;[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .data */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .data : {[m
[32m+[m[32m        *(.data .data.*)[m
[32m+[m[32m        *(.sdata .sdata.*)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* NOTE: .bss needs to be the last thing mapped to :data, otherwise lots of */[m
[32m+[m[32m    /* unnecessary zeros will be written to the binary. */[m
[32m+[m[32m    /* If you need, for example, .init_array and .fini_array, those should be placed */[m
[32m+[m[32m    /* above this. */[m
[32m+[m[32m    .bss : {[m
[32m+[m[32m        *(.sbss .sbss.*)[m
[32m+[m[32m        *(.bss .bss.*)[m
[32m+[m[32m        *(COMMON)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* Discard .note.* and .eh_frame* since they may cause issues on some hosts. */[m
[32m+[m[32m    /DISCARD/ : {[m
[32m+[m[32m        *(.eh_frame*)[m
[32m+[m[32m        *(.note .note.*)[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/kernel/linker-x86_64.ld b/kernel/linker-x86_64.ld[m
[1mnew file mode 100644[m
[1mindex 0000000..1dbdd08[m
[1m--- /dev/null[m
[1m+++ b/kernel/linker-x86_64.ld[m
[36m@@ -0,0 +1,82 @@[m
[32m+[m[32m/* Tell the linker that we want an x86_64 ELF64 output file */[m
[32m+[m[32mOUTPUT_FORMAT(elf64-x86-64)[m
[32m+[m
[32m+[m[32m/* We want the symbol kmain to be our entry point */[m
[32m+[m[32mENTRY(kmain)[m
[32m+[m
[32m+[m[32m/* Define the program headers we want so the bootloader gives us the right */[m
[32m+[m[32m/* MMU permissions; this also allows us to exert more control over the linking */[m
[32m+[m[32m/* process. */[m
[32m+[m[32mPHDRS[m
[32m+[m[32m{[m
[32m+[m[32m    limine_requests PT_LOAD;[m
[32m+[m[32m    text PT_LOAD;[m
[32m+[m[32m    rodata PT_LOAD;[m
[32m+[m[32m    data PT_LOAD;[m
[32m+[m[32m    _HtKernel PT_LOAD;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mSECTIONS[m
[32m+[m[32m{[m
[32m+[m[32m    /* We want to be placed in the topmost 2GiB of the address space, for optimizations */[m
[32m+[m[32m    /* and because that is what the Limine spec mandates. */[m
[32m+[m[32m    . = 0xffffffff80000000;[m
[32m+[m
[32m+[m[32m    /* Define a section to contain the Limine requests and assign it to its own PHDR */[m
[32m+[m[32m    .limine_requests : {[m
[32m+[m[32m        KEEP(*(.limine_requests_start))[m
[32m+[m[32m        KEEP(*(.limine_requests))[m
[32m+[m[32m        KEEP(*(.limine_requests_end))[m
[32m+[m[32m    } :limine_requests[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .text */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .text ALIGN(0x1000) : {[m
[32m+[m[32m        *(.text .text.*)[m
[32m+[m[32m    } :text[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .rodata */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .rodata ALIGN(0x1000) : {[m
[32m+[m[32m        *(.rodata .rodata.*)[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* C++ is a language that allows for global constructors. In order to obtain the */[m
[32m+[m[32m    /* address of the ".init_array" section we need to define a symbol for it. */[m
[32m+[m[32m    .init_array ALIGN(0x1000) : {[m
[32m+[m[32m        __init_array = .;[m
[32m+[m[32m        KEEP(*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))[m
[32m+[m[32m        KEEP(*(.init_array .ctors))[m
[32m+[m[32m        __init_array_end = .;[m
[32m+[m[32m    } :rodata[m
[32m+[m
[32m+[m[32m    /* Move to the next memory page for .data */[m
[32m+[m[32m    . = ALIGN(CONSTANT(MAXPAGESIZE));[m
[32m+[m
[32m+[m[32m    .data ALIGN(0x1000) : {[m
[32m+[m[32m        *(.data .data.*)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* NOTE: .bss needs to be the last thing mapped to :data, otherwise lots of */[m
[32m+[m[32m    /* unnecessary zeros will be written to the binary. */[m
[32m+[m[32m    /* If you need, for example, .init_array and .fini_array, those should be placed */[m
[32m+[m[32m    /* above this. */[m
[32m+[m[32m    .bss ALIGN(0x1000) : {[m
[32m+[m[32m        *(.bss .bss.*)[m
[32m+[m[32m        *(COMMON)[m
[32m+[m[32m    } :data[m
[32m+[m
[32m+[m[32m    /* Add custom sections */[m
[32m+[m[32m    ._HtKernel ALIGN(0x1000) : {[m
[32m+[m[32m        *(_HtKernel)[m
[32m+[m[32m    } :_HtKernel[m
[32m+[m
[32m+[m[32m    /* Discard .note.* and .eh_frame* since they may cause issues on some hosts. */[m
[32m+[m[32m    /DISCARD/ : {[m
[32m+[m[32m        *(.eh_frame*)[m
[32m+[m[32m        *(.note .note.*)[m
[32m+[m[32m        *(.debug)[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/kernel/src/AtlasSoftwareRequestService/ASRS.c b/kernel/src/AtlasSoftwareRequestService/ASRS.c[m
[1mnew file mode 100644[m
[1mindex 0000000..086eeb3[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/AtlasSoftwareRequestService/ASRS.c[m
[36m@@ -0,0 +1,52 @@[m
[32m+[m[32m#include "AtlasSoftwareRequestService.h"[m[41m[m
[32m+[m[32m#include <stddef.h>[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32mint last_id = 0;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern char* _strncpy(char* dest, const char* src, size_t n);[m[41m[m
[32m+[m[32mextern int _strcmp(const char* str1, const char* str2);[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid CreateServiceRoutine(char* label, char* description, char* service_id, void (*service)(uint32_t, uint32_t, uint32_t*)) {[m[41m[m
[32m+[m[32m    static ServiceRequestEntry srvreq_instances[4096];[m[41m[m
[32m+[m[32m    static ServiceRequestStackEntry stack_instances[4096];[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    ServiceRequestEntry* srvreq = &srvreq_instances[last_id];[m[41m[m
[32m+[m[32m    _strncpy(srvreq->label, label, 17);[m[41m[m
[32m+[m[32m    _strncpy(srvreq->description, description, 64);[m[41m[m
[32m+[m[32m    _strncpy(srvreq->service_id, service_id, 16);[m[41m[m
[32m+[m[32m    srvreq->service = service;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    ServiceRequestStackEntry* stack = &stack_instances[last_id];[m[41m[m
[32m+[m[32m    stack->srvreq = srvreq;[m[41m[m
[32m+[m[32m    stack->reg1 = 0;[m[41m[m
[32m+[m[32m    stack->reg2 = 0;[m[41m[m
[32m+[m[32m    stack->reg3 = 0;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    ServiceRequestStack[last_id] = *stack;[m[41m[m
[32m+[m[32m    _strncpy(ServiceRequestIDs[last_id++], service_id, 16);[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid ServicePush(char* service_id, uint32_t reg1, uint32_t reg2, uint32_t* reg3, ServiceRequestStackEntry* stack) {[m[41m[m
[32m+[m[32m    static ServiceRequestEntry srvreq_instances[4096];[m[41m[m
[32m+[m[32m    static int srvreq_index = 0;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    ServiceRequestEntry* srvreq = &srvreq_instances[srvreq_index++];[m[41m[m
[32m+[m[32m    _strncpy(srvreq->service_id, service_id, 16);[m[41m[m
[32m+[m[32m    srvreq->service = 0;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    stack->srvreq = srvreq;[m[41m[m
[32m+[m[32m    stack->reg1 = reg1;[m[41m[m
[32m+[m[32m    stack->reg2 = reg2;[m[41m[m
[32m+[m[32m    stack->reg3 = reg3;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid SrunStackRoutines(ServiceRequestStackEntry* stack) {[m[41m[m
[32m+[m[32m    int len = sizeof(ServiceRequestStack) / sizeof(ServiceRequestStack[0]);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    for (int i = len - 1; i >= 0; i--) {[m[41m[m
[32m+[m[32m        if (_strcmp(stack[i].srvreq->service_id, ServiceRequestIDs[i]) == 0) {[m[41m[m
[32m+[m[32m            stack[i].srvreq->service(stack[i].reg1, stack[i].reg2, stack[i].reg3);[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/AtlasSoftwareRequestService/AtlasSoftwareRequestService.h b/kernel/src/AtlasSoftwareRequestService/AtlasSoftwareRequestService.h[m
[1mnew file mode 100644[m
[1mindex 0000000..25cb1ed[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/AtlasSoftwareRequestService/AtlasSoftwareRequestService.h[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m#pragma once[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[32m#include <stddef.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32mtypedef struct _service_request_entry_t {[m[41m[m
[32m+[m[32m    char label[17];[m[41m[m
[32m+[m[32m    char description[64];[m[41m[m
[32m+[m[32m    char service_id[16];[m[41m[m
[32m+[m[32m    void (*service)(uint32_t, uint32_t, uint32_t*);[m[41m[m
[32m+[m[32m} ServiceRequestEntry;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mtypedef struct _service_request_stack_entry_t {[m[41m[m
[32m+[m[32m    ServiceRequestEntry* srvreq;[m[41m[m
[32m+[m[32m    uint32_t reg1;[m[41m[m
[32m+[m[32m    uint32_t reg2;[m[41m[m
[32m+[m[32m    uint32_t* reg3;[m[41m[m
[32m+[m[32m} ServiceRequestStackEntry;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern ServiceRequestStackEntry ServiceRequestStack[4096];[m[41m[m
[32m+[m[32mextern char ServiceRequestIDs[4096][16];[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid CreateServiceRoutine(char* label, char* description, char* service_id, void (*service)(uint32_t, uint32_t, uint32_t*));[m[41m[m
[32m+[m[32mvoid ServicePush(char* service_id, uint32_t reg1, uint32_t reg2, uint32_t* reg3, ServiceRequestStackEntry* stack);[m[41m[m
[32m+[m[32mvoid SrunStackRoutines(ServiceRequestStackEntry* stack);[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/Bitmaps/Bitmap.c b/kernel/src/Bitmaps/Bitmap.c[m
[1mnew file mode 100644[m
[1mindex 0000000..3563d6a[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/Bitmaps/Bitmap.c[m
[36m@@ -0,0 +1,54 @@[m
[32m+[m[32m#include "BitmapDraw.h"[m[41m[m
[32m+[m[41m[m
[32m+[m[32mstruct limine_framebuffer fb_instance;[m[41m[m
[32m+[m[32mstruct limine_framebuffer* fb;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid PutPx(uint32_t x, uint32_t y, uint32_t clr) {[m[41m[m
[32m+[m[32m    volatile uint32_t* fb_address = (volatile uint32_t*)fb->address;[m[41m[m
[32m+[m[32m    fb_address[y * (fb->pitch / sizeof(uint32_t)) + x] = clr;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Function to parse and draw BMP data[m[41m[m
[32m+[m[32mvoid DrawBmp(uint8_t* bmp, uint32_t startx, uint32_t starty, uint32_t width_multiplier, uint32_t height_multiplier) {[m[41m[m
[32m+[m[32m    // BMP header parsing[m[41m[m
[32m+[m[32m    uint32_t width = *(uint32_t*)(bmp + 18);   // Offset for width in BMP header[m[41m[m
[32m+[m[32m    uint32_t height = *(uint32_t*)(bmp + 22);  // Offset for height in BMP header[m[41m[m
[32m+[m[32m    uint16_t bpp = *(uint16_t*)(bmp + 28);     // Offset for bits per pixel[m[41m[m
[32m+[m[32m    uint32_t dataOffset = *(uint32_t*)(bmp + 10); // Offset for pixel data[m[41m[m
[32m+[m[41m    [m
[32m+[m[32m    if (bpp != 24 && bpp != 32) {[m[41m[m
[32m+[m[32m        // Unsupported format (only supports 24-bit or 32-bit BMP)[m[41m[m
[32m+[m[32m        return;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Each row is padded to a 4-byte boundary[m[41m[m
[32m+[m[32m    uint32_t rowSize = ((bpp * width + 31) / 32) * 4;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Pixel data starts at the dataOffset[m[41m[m
[32m+[m[32m    uint8_t* pixelData = bmp + dataOffset;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // BMP rows are stored bottom-to-top[m[41m[m
[32m+[m[32m    for (uint32_t row = 0; row < height; ++row) {[m[41m[m
[32m+[m[32m        for (uint32_t col = 0; col < width; ++col) {[m[41m[m
[32m+[m[32m            // Calculate the pixel's position in the array[m[41m[m
[32m+[m[32m            uint8_t* pixel = pixelData + (height - 1 - row) * rowSize + col * (bpp / 8);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m            // Extract color components[m[41m[m
[32m+[m[32m            uint32_t color = 0;[m[41m[m
[32m+[m[32m            color |= pixel[0];        // Blue[m[41m[m
[32m+[m[32m            color |= pixel[1] << 8;   // Green[m[41m[m
[32m+[m[32m            color |= pixel[2] << 16;  // Red[m[41m[m
[32m+[m[41m[m
[32m+[m[32m            if (bpp == 32) {[m[41m[m
[32m+[m[32m                color |= pixel[3] << 24; // Alpha (if present)[m[41m[m
[32m+[m[32m            }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m            // Draw the pixel on the screen with width and height multipliers[m[41m[m
[32m+[m[32m            for (uint32_t dy = 0; dy < height_multiplier; ++dy) {[m[41m[m
[32m+[m[32m                for (uint32_t dx = 0; dx < width_multiplier; ++dx) {[m[41m[m
[32m+[m[32m                    PutPx(startx + col * width_multiplier + dx, starty + row * height_multiplier + dy, color);[m[41m[m
[32m+[m[32m                }[m[41m[m
[32m+[m[32m            }[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/Bitmaps/BitmapDraw.h b/kernel/src/Bitmaps/BitmapDraw.h[m
[1mnew file mode 100644[m
[1mindex 0000000..6d389dc[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/Bitmaps/BitmapDraw.h[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m#pragma once[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[32m#include <limine.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern struct limine_framebuffer fb_instance;[m[41m[m
[32m+[m[32mextern struct limine_framebuffer* fb;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid DrawBmp(uint8_t* bmp, uint32_t startx, uint32_t starty, uint32_t width_multiplier, uint32_t height_multiplier);[m[41m[m
[32m+[m[32mvoid PutPx(uint32_t x, uint32_t y, uint32_t clr);[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/CPU/IO/IO.c b/kernel/src/CPU/IO/IO.c[m
[1mnew file mode 100644[m
[1mindex 0000000..ea3b06e[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/CPU/IO/IO.c[m
[36m@@ -0,0 +1,55 @@[m
[32m+[m[32m#include "IO.h"[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Write a byte to the specified port[m[41m[m
[32m+[m[32mvoid outb(uint16_t port, uint8_t value) {[m[41m[m
[32m+[m[32m    __asm__ volatile ("outb %0, %1" : : "a"(value), "Nd"(port));[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Write a word to the specified port[m[41m[m
[32m+[m[32mvoid outw(uint16_t port, uint16_t value) {[m[41m[m
[32m+[m[32m    __asm__ volatile ("outw %0, %1" : : "a"(value), "Nd"(port));[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Write a double word to the specified port[m[41m[m
[32m+[m[32mvoid outl(uint16_t port, uint32_t value) {[m[41m[m
[32m+[m[32m    __asm__ volatile ("outl %0, %1" : : "a"(value), "Nd"(port));[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Read a byte from the specified port[m[41m[m
[32m+[m[32muint8_t inb(uint16_t port) {[m[41m[m
[32m+[m[32m    uint8_t ret;[m[41m[m
[32m+[m[32m    __asm__ volatile ("inb %1, %0" : "=a"(ret) : "Nd"(port));[m[41m[m
[32m+[m[32m    return ret;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Read a word from the specified port[m[41m[m
[32m+[m[32muint16_t inw(uint16_t port) {[m[41m[m
[32m+[m[32m    uint16_t ret;[m[41m[m
[32m+[m[32m    __asm__ volatile ("inw %1, %0" : "=a"(ret) : "Nd"(port));[m[41m[m
[32m+[m[32m    return ret;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Read a double word from the specified port[m[41m[m
[32m+[m[32muint32_t inl(uint16_t port) {[m[41m[m
[32m+[m[32m    uint32_t ret;[m[41m[m
[32m+[m[32m    __asm__ volatile ("inl %1, %0" : "=a"(ret) : "Nd"(port));[m[41m[m
[32m+[m[32m    return ret;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32muint64_t inq(uint16_t port) {[m[41m[m
[32m+[m[32m    uint32_t low = ral(port);[m[41m[m
[32m+[m[32m    uint32_t high = rah(port);[m[41m[m
[32m+[m[32m    return ((uint64_t)high << 32) | low;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid outq(uint16_t port, uint64_t value) {[m[41m[m
[32m+[m[32m    uint32_t low = (uint32_t)(value & 0xFFFFFFFF);[m[41m[m
[32m+[m[32m    uint32_t high = (uint32_t)((value >> 32) & 0xFFFFFFFF);[m[41m[m
[32m+[m[32m    __asm__ volatile ("outl %0, %1" : : "a"(low), "Nd"(port));[m[41m[m
[32m+[m[32m    __asm__ volatile ("outl %0, %1" : : "a"(high), "Nd"(port + 4));[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid IOWait() {[m[41m[m
[32m+[m[32m    // Write to an unused port (0x80 is often used for this purpose)[m[41m[m
[32m+[m[32m    __asm__ volatile ("outb %%al, $0x80" : : "a"(0));[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/CPU/IO/IO.h b/kernel/src/CPU/IO/IO.h[m
[1mnew file mode 100644[m
[1mindex 0000000..7973c81[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/CPU/IO/IO.h[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m#pragma once[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Write a byte to the specified port[m[41m[m
[32m+[m[32mvoid outb(uint16_t port, uint8_t value);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Write a word to the specified port[m[41m[m
[32m+[m[32mvoid outw(uint16_t port, uint16_t value);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Write a double word to the specified port[m[41m[m
[32m+[m[32mvoid outl(uint16_t port, uint32_t value);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Read a byte from the specified port[m[41m[m
[32m+[m[32muint8_t inb(uint16_t port);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Read a word from the specified port[m[41m[m
[32m+[m[32muint16_t inw(uint16_t port);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m// Read a double word from the specified port[m[41m[m
[32m+[m[32muint32_t inl(uint16_t port);[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid IOWait();[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/DataLoader/DataLoader.c b/kernel/src/DataLoader/DataLoader.c[m
[1mnew file mode 100644[m
[1mindex 0000000..50caeed[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/DataLoader/DataLoader.c[m
[36m@@ -0,0 +1,49 @@[m
[32m+[m[32m#include "DataLoader.h"[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid* LoadDataToMemory(const void* source, size_t size) {[m[41m[m
[32m+[m[32m    if (source == NULL || size == 0) {[m[41m[m
[32m+[m[32m        return NULL; // Invalid input[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Page size and calculation[m[41m[m
[32m+[m[32m    const size_t PAGE_SIZE = 4096; // Assuming 4KB pages[m[41m[m
[32m+[m[32m    size_t pages_needed = (size + PAGE_SIZE - 1) / PAGE_SIZE; // Total pages required[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Allocate memory for the data[m[41m[m
[32m+[m[32m    uint8_t* first_page = (uint8_t*)RequestPage();[m[41m[m
[32m+[m[32m    if (!first_page) {[m[41m[m
[32m+[m[32m        return NULL; // Allocation failed for the first page[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Keep track of current destination page and offset[m[41m[m
[32m+[m[32m    uint8_t* current_page = first_page;[m[41m[m
[32m+[m[32m    size_t remaining_size = size;[m[41m[m
[32m+[m[32m    size_t bytes_copied = 0;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Copy data across pages[m[41m[m
[32m+[m[32m    const uint8_t* src = (const uint8_t*)source;[m[41m[m
[32m+[m[32m    while (remaining_size > 0) {[m[41m[m
[32m+[m[32m        size_t bytes_to_copy = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        // Copy data to the current page[m[41m[m
[32m+[m[32m        for (size_t i = 0; i < bytes_to_copy; ++i) {[m[41m[m
[32m+[m[32m            current_page[i] = src[bytes_copied + i];[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        // Update counters[m[41m[m
[32m+[m[32m        bytes_copied += bytes_to_copy;[m[41m[m
[32m+[m[32m        remaining_size -= bytes_to_copy;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m        // If more data remains, allocate the next page[m[41m[m
[32m+[m[32m        if (remaining_size > 0) {[m[41m[m
[32m+[m[32m            uint8_t* next_page = (uint8_t*)RequestPage();[m[41m[m
[32m+[m[32m            if (!next_page) {[m[41m[m
[32m+[m[32m                return NULL; // Allocation failed for subsequent pages[m[41m[m
[32m+[m[32m            }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m            current_page = next_page;[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    return first_page; // Return pointer to the first allocated page[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/DataLoader/DataLoader.h b/kernel/src/DataLoader/DataLoader.h[m
[1mnew file mode 100644[m
[1mindex 0000000..318ef60[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/DataLoader/DataLoader.h[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m#pragma once[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#include <stddef.h>[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid* LoadDataToMemory(const void* source, size_t size);[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/FontRenderer/FontRenderer.c b/kernel/src/FontRenderer/FontRenderer.c[m
[1mnew file mode 100644[m
[1mindex 0000000..f25b330[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/FontRenderer/FontRenderer.c[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m#include <Icons.h>[m[41m[m
[32m+[m[32m#include <Bitmaps/BitmapDraw.h>[m[41m[m
[32m+[m[32m#include "FontRenderer.h"[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid font_char(char c, size_t x, size_t y, uint32_t color) {[m[41m[m
[32m+[m[32m    const uint8_t *glyph = FONT[(size_t) c];[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    for (size_t yy = 0; yy < 8; yy++) {[m[41m[m
[32m+[m[32m        for (size_t xx = 0; xx < 8; xx++) {[m[41m[m
[32m+[m[32m            if (glyph[yy] & (1 << xx)) {[m[41m[m
[32m+[m[32m                PutPx(x+xx, y+yy, color);[m[41m[m
[32m+[m[32m            }[m[41m[m
[32m+[m[32m        }[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid font_str(const char *s, size_t x, size_t y, uint32_t color) {[m[41m[m
[32m+[m[32m    char c;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    while ((c = *s++) != 0) {[m[41m[m
[32m+[m[32m        font_char(c, x, y, color);[m[41m[m
[32m+[m[32m        x += 8;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/FontRenderer/FontRenderer.h b/kernel/src/FontRenderer/FontRenderer.h[m
[1mnew file mode 100644[m
[1mindex 0000000..fa1ecad[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/FontRenderer/FontRenderer.h[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32m#pragma once[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[32m#include <stddef.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#include <Icons.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid font_char(char c, size_t x, size_t y, uint32_t color);[m[41m[m
[32m+[m[32mvoid font_str(const char *s, size_t x, size_t y, uint32_t color);[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/GDT/GDT.asm b/kernel/src/GDT/GDT.asm[m
[1mnew file mode 100644[m
[1mindex 0000000..44c7908[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/GDT/GDT.asm[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m[bits 64][m[41m[m
[32m+[m[32mLoadGDT:[m[41m   [m
[32m+[m[32m    lgdt [rdi][m[41m[m
[32m+[m[32m    mov ax, 0x10[m[41m [m
[32m+[m[32m    mov ds, ax[m[41m[m
[32m+[m[32m    mov es, ax[m[41m[m
[32m+[m[32m    mov fs, ax[m[41m[m
[32m+[m[32m    mov gs, ax[m[41m[m
[32m+[m[32m    mov ss, ax[m[41m[m
[32m+[m[32m    pop rdi[m[41m[m
[32m+[m[32m    mov rax, 0x08[m[41m[m
[32m+[m[32m    push rax[m[41m[m
[32m+[m[32m    push rdi[m[41m[m
[32m+[m[32m    retfq[m[41m[m
[32m+[m[32mGLOBAL LoadGDT[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/GDT/GDT.c b/kernel/src/GDT/GDT.c[m
[1mnew file mode 100644[m
[1mindex 0000000..390169b[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/GDT/GDT.c[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m#include "GDT.h"[m[41m[m
[32m+[m[41m[m
[32m+[m[32mGDT DefaultGDT = {[m[41m[m
[32m+[m[32m    {0, 0, 0, 0x00, 0x00, 0}, // null[m[41m[m
[32m+[m[32m    {0xFFFF, 0, 0, 0x9A, 0xA0, 0}, // kernel code segment[m[41m[m
[32m+[m[32m    {0xFFFF, 0, 0, 0x92, 0xA0, 0}, // kernel data segment[m[41m[m
[32m+[m[32m    {0, 0, 0, 0x00, 0x00, 0}, // user null[m[41m[m
[32m+[m[32m    {0xFFFF, 0, 0, 0xFA, 0xA0, 0}, // user code segment[m[41m[m
[32m+[m[32m    {0xFFFF, 0, 0, 0xF2, 0xA0, 0}  // user data segment[m[41m[m
[32m+[m[32m};[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/GDT/GDT.h b/kernel/src/GDT/GDT.h[m
[1mnew file mode 100644[m
[1mindex 0000000..c77cca6[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/GDT/GDT.h[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32m#pragma once[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32mtypedef struct GDTDescriptor {[m[41m[m
[32m+[m[32m    uint16_t Size;[m[41m[m
[32m+[m[32m    uint64_t Offset;[m[41m[m
[32m+[m[32m} __attribute__((packed)) GDTDescriptor;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mtypedef struct GDTEntry {[m[41m[m
[32m+[m[32m    uint16_t Limit0;[m[41m[m
[32m+[m[32m    uint16_t Base0;[m[41m[m
[32m+[m[32m    uint8_t Base1;[m[41m[m
[32m+[m[32m    uint8_t AccessByte;[m[41m[m
[32m+[m[32m    uint8_t Limit1_Flags;[m[41m[m
[32m+[m[32m    uint8_t Base2;[m[41m[m
[32m+[m[32m} __attribute__((packed)) GDTEntry;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mtypedef struct GDT {[m[41m[m
[32m+[m[32m    GDTEntry Null; //0x00[m[41m[m
[32m+[m[32m    GDTEntry KernelCode; //0x08[m[41m[m
[32m+[m[32m    GDTEntry KernelData; //0x10[m[41m[m
[32m+[m[32m    GDTEntry UserNull;[m[41m[m
[32m+[m[32m    GDTEntry UserCode;[m[41m[m
[32m+[m[32m    GDTEntry UserData;[m[41m[m
[32m+[m[32m} __attribute__((packed, aligned(0x1000))) GDT;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern GDT DefaultGDT;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern void LoadGDT(GDTDescriptor* gdtDescriptor);[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/HtKernelStartup.c b/kernel/src/HtKernelStartup.c[m
[1mnew file mode 100644[m
[1mindex 0000000..df610a5[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/HtKernelStartup.c[m
[36m@@ -0,0 +1,148 @@[m
[32m+[m[32m#include <limine.h>[m[41m[m
[32m+[m[32m#include <GDT/GDT.h>[m[41m[m
[32m+[m[32m#include <Paging/PageFrameAlloc/PageFrameAllocator.h>[m[41m[m
[32m+[m[32m#include <Paging/PageFrameAlloc/Memory.h>[m[41m[m
[32m+[m[32m#include <CPU/IO/IO.h>[m[41m[m
[32m+[m[32m#include <AtlasSoftwareRequestService/AtlasSoftwareRequestService.h>[m[41m[m
[32m+[m[32m#include <Bitmaps/BitmapDraw.h>[m[41m[m
[32m+[m[32m#include <Icons.h>[m[41m[m
[32m+[m[32m#include <WindowMgr/WindowMgr.h>[m[41m[m
[32m+[m[32m#include <DataLoader/DataLoader.h>[m[41m[m
[32m+[m[32m#include <FontRenderer/FontRenderer.h>[m[41m[m
[32m+[m[32m#include <IDT/IDT.h>[m[41m[m
[32m+[m[32m#include <Interrupts/InterruptDescriptors.h>[m[41m[m
[32m+[m[32m#include <Interrupts/UserInput/Write.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m__attribute__((section("._HtKernel"))) _Noreturn static void _HtKernelStartup(struct limine_framebuffer* framebuffer);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m__attribute__((section("._HtKernel"))) void _HtKernelLoad(struct limine_framebuffer* fb) {[m[41m[m
[32m+[m[32m    _HtKernelStartup(fb);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    while (1) {}[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[32m#include <stddef.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#define PIC1_COMMAND 0x20[m[41m[m
[32m+[m[32m#define PIC1_DATA    0x21[m[41m[m
[32m+[m[32m#define PIC2_COMMAND 0xA0[m[41m[m
[32m+[m[32m#define PIC2_DATA    0xA1[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid IRQ_set_mask(uint8_t IRQline) {[m[41m[m
[32m+[m[32m    uint16_t port;[m[41m[m
[32m+[m[32m    uint8_t value;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    if (IRQline < 8) {[m[41m[m
[32m+[m[32m        port = PIC1_DATA;[m[41m[m
[32m+[m[32m    } else {[m[41m[m
[32m+[m[32m        port = PIC2_DATA;[m[41m[m
[32m+[m[32m        IRQline -= 8;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m    value = inb(port) | (1 << IRQline);[m[41m[m
[32m+[m[32m    outb(port, value);[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid IRQ_clear_mask(uint8_t IRQline) {[m[41m[m
[32m+[m[32m    uint16_t port;[m[41m[m
[32m+[m[32m    uint8_t value;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    if (IRQline < 8) {[m[41m[m
[32m+[m[32m        port = PIC1_DATA;[m[41m[m
[32m+[m[32m    } else {[m[41m[m
[32m+[m[32m        port = PIC2_DATA;[m[41m[m
[32m+[m[32m        IRQline -= 8;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[32m    value = inb(port) & ~(1 << IRQline);[m[41m[m
[32m+[m[32m    outb(port, value);[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid PIC_remap(int offset1, int offset2) {[m[41m[m
[32m+[m[32m    uint8_t a1, a2;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    a1 = inb(PIC1_DATA); // Save masks[m[41m[m
[32m+[m[32m    a2 = inb(PIC2_DATA);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    outb(PIC1_COMMAND, 0x11); // Start the initialization sequence (in cascade mode)[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    outb(PIC2_COMMAND, 0x11);[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    outb(PIC1_DATA, offset1); // ICW2: Master PIC vector offset[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    outb(PIC2_DATA, offset2); // ICW2: Slave PIC vector offset[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    outb(PIC1_DATA, 4); // ICW3: Tell Master PIC that there is a slave PIC at IRQ2 (0000 0100)[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    outb(PIC2_DATA, 2); // ICW3: Tell Slave PIC its cascade identity (0000 0010)[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    outb(PIC1_DATA, 0x01); // ICW4: 8086/88 (MCS-80/85) mode[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    outb(PIC2_DATA, 0x01);[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    outb(PIC1_DATA, a1); // Restore saved masks[m[41m[m
[32m+[m[32m    outb(PIC2_DATA, a2);[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid SetKeyboardRateAndDelay(uint8_t delay, uint8_t rate) {[m[41m[m
[32m+[m[32m    outb(0x60, 0xF3);         // Set Rate and Delay command[m[41m[m
[32m+[m[32m    while (inb(0x60) != 0xFA); // Wait for ACK[m[41m[m
[32m+[m[41m    [m
[32m+[m[32m    outb(0x60, delay);         // Send Delay (0-3)[m[41m[m
[32m+[m[32m    while (inb(0x60) != 0xFA); // Wait for ACK[m[41m[m
[32m+[m[41m    [m
[32m+[m[32m    outb(0x60, rate);          // Send Rate (0-3)[m[41m[m
[32m+[m[32m    while (inb(0x60) != 0xFA); // Wait for ACK[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32m__attribute__((section("._HtKernel"))) _Noreturn static void _HtKernelStartup(struct limine_framebuffer* framebuffer) {[m[41m[m
[32m+[m[32m    GDTDescriptor gdtDesc;[m[41m[m
[32m+[m[32m    gdtDesc.Size = sizeof(GDT) - 1;[m[41m[m
[32m+[m[32m    gdtDesc.Offset = (uint64_t)&DefaultGDT;[m[41m[m
[32m+[m[32m    LoadGDT(&gdtDesc); // Load the GDT[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    (void)framebuffer;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Initialize the page frame allocator[m[41m[m
[32m+[m[32m    extern uint64_t memorySize; // Define this variable with the total memory size[m[41m[m
[32m+[m[32m    extern uint8_t pageBitmap[]; // Define this array as the bitmap storage[m[41m[m
[32m+[m[32m    InitializePageFrameAllocator(memorySize, pageBitmap);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    outb(0x60, 0xED);[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    outb(0x60, 0b11100000);[m[41m[m
[32m+[m[32m    IOWait();[m[41m[m
[32m+[m[32m    if (inb(0x60) != 0xFA) {[m[41m[m
[32m+[m[32m        int i = 0 / 0;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    fb = framebuffer;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Show the logo as loading[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    DrawBmp(AtlasOSLogo, framebuffer->width/2-128, framebuffer->height/2-128, 1, 1);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    // Load the kernel font[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    size_t String_Length_Px = 17*8; /* = 136 */[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    font_str("Loading Kernel...", framebuffer->width/2-(String_Length_Px/2), framebuffer->height/2-(8/2)+135, 0xFFFFFFFF);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    PIC_remap(0x20, 0x28);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    idt_set_descriptor(0x21, &kb, 0x8E);[m[41m[m
[32m+[m[32m    idt_set_descriptor(0x2C, &mouse, 0x8E);[m[41m[m
[32m+[m[32m    idt_set_descriptor(0x80, &syscall, 0x8F);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    SetKeyboardRateAndDelay(0, 0);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    idt_init();[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    IRQ_clear_mask(1);[m[41m[m
[32m+[m[32m    IRQ_clear_mask(12);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    InitializeScreenGrid(&framebuffer);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    while (1) {}[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/IDT/IDT.asm b/kernel/src/IDT/IDT.asm[m
[1mnew file mode 100644[m
[1mindex 0000000..2ef1f17[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/IDT/IDT.asm[m
[36m@@ -0,0 +1,53 @@[m
[32m+[m[32m%macro isr_err_stub 1[m[41m[m
[32m+[m[32misr_stub_%+%1:[m[41m[m
[32m+[m[32m    call exception_handler[m[41m[m
[32m+[m[32m    iret[m[41m [m
[32m+[m[32m%endmacro[m[41m[m
[32m+[m[32m; if writing for 64-bit, use iretq instead[m[41m[m
[32m+[m[32m%macro isr_no_err_stub 1[m[41m[m
[32m+[m[32misr_stub_%+%1:[m[41m[m
[32m+[m[32m    call exception_handler[m[41m[m
[32m+[m[32m    iret[m[41m[m
[32m+[m[32m%endmacro[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern exception_handler[m[41m[m
[32m+[m[32misr_no_err_stub 0[m[41m[m
[32m+[m[32misr_no_err_stub 1[m[41m[m
[32m+[m[32misr_no_err_stub 2[m[41m[m
[32m+[m[32misr_no_err_stub 3[m[41m[m
[32m+[m[32misr_no_err_stub 4[m[41m[m
[32m+[m[32misr_no_err_stub 5[m[41m[m
[32m+[m[32misr_no_err_stub 6[m[41m[m
[32m+[m[32misr_no_err_stub 7[m[41m[m
[32m+[m[32misr_err_stub    8[m[41m[m
[32m+[m[32misr_no_err_stub 9[m[41m[m
[32m+[m[32misr_err_stub    10[m[41m[m
[32m+[m[32misr_err_stub    11[m[41m[m
[32m+[m[32misr_err_stub    12[m[41m[m
[32m+[m[32misr_err_stub    13[m[41m[m
[32m+[m[32misr_err_stub    14[m[41m[m
[32m+[m[32misr_no_err_stub 15[m[41m[m
[32m+[m[32misr_no_err_stub 16[m[41m[m
[32m+[m[32misr_err_stub    17[m[41m[m
[32m+[m[32misr_no_err_stub 18[m[41m[m
[32m+[m[32misr_no_err_stub 19[m[41m[m
[32m+[m[32misr_no_err_stub 20[m[41m[m
[32m+[m[32misr_no_err_stub 21[m[41m[m
[32m+[m[32misr_no_err_stub 22[m[41m[m
[32m+[m[32misr_no_err_stub 23[m[41m[m
[32m+[m[32misr_no_err_stub 24[m[41m[m
[32m+[m[32misr_no_err_stub 25[m[41m[m
[32m+[m[32misr_no_err_stub 26[m[41m[m
[32m+[m[32misr_no_err_stub 27[m[41m[m
[32m+[m[32misr_no_err_stub 28[m[41m[m
[32m+[m[32misr_no_err_stub 29[m[41m[m
[32m+[m[32misr_err_stub    30[m[41m[m
[32m+[m[32misr_no_err_stub 31[m[41m[m
[32m+[m[41m[m
[32m+[m[32mglobal isr_stub_table[m[41m[m
[32m+[m[32misr_stub_table:[m[41m[m
[32m+[m[32m%assign i 0[m[41m [m
[32m+[m[32m%rep    32[m[41m [m
[32m+[m[32m    dq isr_stub_%+i[m[41m[m
[32m+[m[32m%assign i i+1[m[41m [m
[32m+[m[32m%endrep[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/IDT/IDT.c b/kernel/src/IDT/IDT.c[m
[1mnew file mode 100644[m
[1mindex 0000000..8c67cd5[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/IDT/IDT.c[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m#include "IDT.h"[m[41m[m
[32m+[m[41m[m
[32m+[m[32m#define IDT_MAX_DESCRIPTORS 256[m[41m[m
[32m+[m[41m[m
[32m+[m[32mtypedef struct {[m[41m[m
[32m+[m[32m    uint16_t isr_low;[m[41m[m
[32m+[m[32m    uint16_t kernel_cs;[m[41m[m
[32m+[m[32m    uint8_t  ist;[m[41m[m
[32m+[m[32m    uint8_t  attributes;[m[41m[m
[32m+[m[32m    uint16_t isr_mid;[m[41m[m
[32m+[m[32m    uint32_t isr_high;[m[41m[m
[32m+[m[32m    uint32_t reserved;[m[41m[m
[32m+[m[32m} __attribute__((packed)) IDTEntry;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m__attribute((aligned(0x10)))[m[41m[m
[32m+[m[32mstatic IDTEntry idt[256];[m[41m[m
[32m+[m[41m[m
[32m+[m[32mtypedef struct {[m[41m[m
[32m+[m[32m    uint16_t limit;[m[41m[m
[32m+[m[32m    uint64_t base;[m[41m[m
[32m+[m[32m} __attribute__((packed)) IDTR;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mstatic IDTR idtr;[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern void _memset(void*, void*, size_t);[m[41m[m
[32m+[m[32mextern void _memset32(void*, void*, size_t);[m[41m[m
[32m+[m[41m[m
[32m+[m[32m__attribute__((noreturn))[m[41m[m
[32m+[m[32mvoid excepetion_handler(void);[m[41m[m
[32m+[m[32mvoid exception_handler() {[m[41m[m
[32m+[m[32m    _memset32(fb->address, 0x0000FF, fb->width * fb->height);[m[41m[m
[32m+[m[32m    font_str("Oops! AtlasOS has ran into an error :(", 12, 12, 0xEEEEEEFF);[m[41m[m
[32m+[m[32m    font_str("AtlasSuper-POWER: You may now change the power state of the machine...", 12, 20, 0xEEEEEEFF);[m[41m[m
[32m+[m[32m    font_str("Halting the machine...", 12, 28, 0xEEEEEEFF);[m[41m[m
[32m+[m[32m    __asm__ volatile ("cli\n"[m[41m[m
[32m+[m[32m                      "hlt");[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid idt_set_descriptor(uint8_t vector, void* isr, uint8_t flags);[m[41m[m
[32m+[m[32mvoid idt_set_descriptor(uint8_t vector, void* isr, uint8_t flags) {[m[41m[m
[32m+[m[32m    IDTEntry* descriptor = &idt[vector];[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    descriptor->isr_low        = (uint64_t)isr & 0xFFFF;[m[41m[m
[32m+[m[32m    descriptor->kernel_cs      = 0x08;[m[41m[m
[32m+[m[32m    descriptor->ist            = 0;[m[41m[m
[32m+[m[32m    descriptor->attributes     = flags;[m[41m[m
[32m+[m[32m    descriptor->isr_mid        = ((uint64_t)isr >> 16) & 0xFFFF;[m[41m[m
[32m+[m[32m    descriptor->isr_high       = ((uint64_t)isr >> 32) & 0xFFFFFFFF;[m[41m[m
[32m+[m[32m    descriptor->reserved       = 0;[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mstatic bool vectors[IDT_MAX_DESCRIPTORS];[m[41m[m
[32m+[m[41m[m
[32m+[m[32mextern void* isr_stub_table[];[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid idt_init(void);[m[41m[m
[32m+[m[32mvoid idt_init() {[m[41m[m
[32m+[m[32m    idtr.base = (uintptr_t)&idt[0];[m[41m[m
[32m+[m[32m    idtr.limit = (uint16_t)sizeof(IDTEntry) * IDT_MAX_DESCRIPTORS - 1;[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    for (uint8_t vector = 0; vector < 32; vector++) {[m[41m[m
[32m+[m[32m        idt_set_descriptor(vector, isr_stub_table[vector], 0x8E);[m[41m[m
[32m+[m[32m        vectors[vector] = true;[m[41m[m
[32m+[m[32m    }[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    __asm__ volatile ("lidt %0" : : "m"(idtr)); // load the new IDT[m[41m[m
[32m+[m[32m    __asm__ volatile ("sti"); // set the interrupt flag[m[41m[m
[32m+[m[32m}[m[41m[m
[32m+[m[41m[m
[32m+[m[32mvoid idt_reinit(void);[m[41m[m
[32m+[m[32mvoid idt_reinit() {[m[41m[m
[32m+[m[32m    idt_init();[m[41m[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/kernel/src/IDT/IDT.h b/kernel/src/IDT/IDT.h[m
[1mnew file mode 100644[m
[1mindex 0000000..fc6e9c9[m
[1m--- /dev/null[m
[1m+++ b/kernel/src/IDT/IDT.h[m
[36m@@ -0,0 +1,10 @@[m
[32m+[m[32m#include <stdbool.h>[m[41m[m
[32m+[m[32m#include <stdint.h>[m[41m[m
[32m+[m[32m#include <stddef.h>[m[41m[m
[32m+[m[32m#include <FontRenderer/FontRenderer.h>[m[41m[m
[32m+[m[32m#include <Bitmaps/BitmapDraw.h>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m__attribute__((noreturn)) void exception_handler(void);[m[41m[m
[32m+[m[32mvoid idt_set_descriptor(uint8_
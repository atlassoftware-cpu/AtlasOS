# Makefile for OS MenuConfig

CONFIG_FILE = .config
SUPPORTED_PROCESSORS = SUPPORTED_PROCESSORS.LIST
MENU_WIDTH = 58
MENU_HEIGHT = 23

menuconfig:
	@echo "Launching MenuConfig..."
	@dialog --menu "AtlasOS Configuration" $(MENU_HEIGHT) $(MENU_WIDTH) 8 \
		1 "System Configuration" \
		2 "Kernel Options" \
		3 "Apply and Exit" \
		4 "About Menu" \
		5 "Back" 2> menu_choice
	@choice=$$(cat menu_choice); rm -f menu_choice; \
	case $$choice in \
		1) $(MAKE) system_config ;; \
		2) $(MAKE) kernel_options ;; \
		3) $(MAKE) apply_and_exit ;; \
		4) $(MAKE) about_menu ;; \
		5) echo "Returning to previous menu..." ;; \
		*) echo "Invalid option" ;; \
	esac

system_config:
	@dialog --inputbox "Enter Processor Type:" 10 40 2> processor_type
	@processor=$$(cat processor_type); rm -f processor_type; \
	if grep -q "^$$processor$" $(SUPPORTED_PROCESSORS); then \
		echo "Processor Type: $$processor" >> $(CONFIG_FILE); \
	else \
		echo "Error: Unsupported processor type: $$processor"; \
		sleep 2; \
	fi
	@$(MAKE) menuconfig

kernel_options:
	@dialog --menu "Kernel Options" $(MENU_HEIGHT) $(MENU_WIDTH) 3 \
		1 "Scheduler Type" \
		2 "Enable Debugging" \
		3 "Back" 2> kernel_choice
	@choice=$$(cat kernel_choice); rm -f kernel_choice; \
	case $$choice in \
		1) echo "Scheduler Type: Round Robin" >> $(CONFIG_FILE) ;; \
		2) echo "Kernel Debugging: Enabled" >> $(CONFIG_FILE) ;; \
		3) $(MAKE) menuconfig ;; \
		*) echo "Invalid option" ;; \
	esac

apply_and_exit:
	@echo "Applying Configuration..."
	@sleep 1
	@clear
	@echo "Configuration Applied. Exiting MenuConfig."

about_menu:
	@dialog --msgbox "AtlasOS\nVersion: 1.0" 10 40
	@$(MAKE) menuconfig

clean:
	@rm -f $(CONFIG_FILE)

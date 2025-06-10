
# Program Settings
NAME = blink2

# Build Configuration
DEBUG ?= 0

# Toolchain
AS = arm-none-eabi-as
LD = arm-none-eabi-ld
OBJCOPY = arm-none-eabi-objcopy
OBJDUMP = arm-none-eabi-objdump
PICOTOOL = picotool

# Base flags
AS_FLAGS = -mcpu=cortex-m33 -mthumb --warn --fatal-warnings
LD_FLAGS = -nostdlib

# Add debug flags if DEBUG=1
ifeq ($(DEBUG),1)
AS_FLAGS += -g
LD_FLAGS += -g
endif

OBJDUMP_FLAGS = -D -s -f -r -x -WL --architecture=cortex-m33

LD_SCRIPT = $(NAME).ld

# Set output directory based on build type
ifeq ($(DEBUG),1)
OUTPUT_DIR = debug
else
OUTPUT_DIR = release
endif

S_FILES = $(wildcard *.s)
O_FILES = $(patsubst %.s,$(OUTPUT_DIR)/%.o,$(S_FILES))

# Include dependency files if they exist
-include $(D_FILES)

all: refresh $(OUTPUT_DIR) $(OUTPUT_DIR)/$(NAME).uf2

debug:
	$(MAKE) DEBUG=1 all

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

$(OUTPUT_DIR)/%.o: %.s
	$(AS) $(AS_FLAGS) $< -o $@

$(OUTPUT_DIR)/$(NAME).bin: $(LD_SCRIPT) $(O_FILES)
	$(LD) $(LD_FLAGS) -T $(LD_SCRIPT) $(O_FILES) -o $(OUTPUT_DIR)/$(NAME).elf
	$(OBJDUMP) $(OBJDUMP_FLAGS) $(OUTPUT_DIR)/$(NAME).elf > $(OUTPUT_DIR)/$(NAME).elf.dump
	$(foreach obj,$(O_FILES),$(OBJDUMP) $(OBJDUMP_FLAGS) $(obj) > $(obj).dump;)
	$(OBJCOPY) -O binary $(OUTPUT_DIR)/$(NAME).elf $(OUTPUT_DIR)/$(NAME).bin

$(OUTPUT_DIR)/$(NAME).uf2: $(OUTPUT_DIR)/$(NAME).bin
	$(PICOTOOL) uf2 convert $(OUTPUT_DIR)/$(NAME).bin $(OUTPUT_DIR)/$(NAME).uf2

refresh:
	rm -Rf $(OUTPUT_DIR)

clean:
	rm -Rf release debug

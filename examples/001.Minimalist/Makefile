
# Program Settings
NAME = minimalist

# Toolchain
AS = arm-none-eabi-as
LD = arm-none-eabi-ld
OBJCOPY = arm-none-eabi-objcopy
OBJDUMP = arm-none-eabi-objdump
PICOTOOL = picotool

AS_FLAGS = -mcpu=cortex-m33 -mthumb --warn --fatal-warnings
LD_FLAGS = -nostdlib
OBJDUMP_FLAGS = -D -s -f -r -x -WL --architecture=cortex-m33

LD_SCRIPT = $(NAME).ld

OUTPUT_DIR = bin
DUMP_DIR = dump

S_FILES = $(wildcard *.s)
O_FILES = $(patsubst %.s,$(OUTPUT_DIR)/%.o,$(S_FILES))

all: clean $(OUTPUT_DIR) $(DUMP_DIR) $(NAME).uf2

$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

$(DUMP_DIR):
	mkdir -p $(DUMP_DIR)

$(OUTPUT_DIR)/%.o: %.s
	$(AS) $(AS_FLAGS) $< -o $@

$(NAME).bin: $(LD_SCRIPT) $(O_FILES)
	$(LD) $(LD_FLAGS) -T $(LD_SCRIPT) $(O_FILES) -o $(OUTPUT_DIR)/$(NAME).elf
	$(OBJDUMP) $(OBJDUMP_FLAGS) $(OUTPUT_DIR)/$(NAME).elf > $(OUTPUT_DIR)/$(NAME).elf.dump
	$(foreach obj,$(O_FILES),$(OBJDUMP) $(OBJDUMP_FLAGS) $(obj) > $(obj).dump;)
	$(OBJCOPY) -O binary $(OUTPUT_DIR)/$(NAME).elf $(OUTPUT_DIR)/$(NAME).bin
	mv $(OUTPUT_DIR)/*.dump $(DUMP_DIR)

$(NAME).uf2: $(NAME).bin
	$(PICOTOOL) uf2 convert $(OUTPUT_DIR)/$(NAME).bin $(OUTPUT_DIR)/$(NAME).uf2

clean:
	rm -Rf $(OUTPUT_DIR)
	rm -Rf $(DUMP_DIR)

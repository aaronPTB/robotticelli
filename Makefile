# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

Debug ?= @
GCC_BIN := 
PROJECT := frdm-magi
Source-sender := $(wildcard sender/*.cpp)
Source-receiver := $(wildcard receiver/*.cpp)
Objects-sender := $(Source-sender:.cpp=.o)
Objects-receiver :=  $(Source-receiver:.cpp=.o)
OBJECTS := ./XBeeLib/FrameBuffer/FrameBuffer.o ./XBeeLib/FrameHandlers/FH_AtCmdResp.o ./XBeeLib/FrameHandlers/FH_IoDataSample802.o ./XBeeLib/FrameHandlers/FH_IoDataSampleZB.o ./XBeeLib/FrameHandlers/FH_ModemStatus.o ./XBeeLib/FrameHandlers/FH_RxPacket802.o ./XBeeLib/FrameHandlers/FH_RxPacketZB.o ./XBeeLib/FrameHandlers/FrameHandler.o ./XBeeLib/Frames/802_Frames.o ./XBeeLib/Frames/ApiFrame.o ./XBeeLib/Frames/AtCmdFrame.o ./XBeeLib/Frames/ZigbeeFrames.o ./XBeeLib/IO/IOSample802.o ./XBeeLib/IO/IOSampleZB.o ./XBeeLib/RemoteXBee/RemoteXBee.o ./XBeeLib/Utils/Utils.o ./XBeeLib/XBee/AtCommands.o ./XBeeLib/XBee/RadioConfig.o ./XBeeLib/XBee/XBee.o ./XBeeLib/XBee802/XBee802.o ./XBeeLib/XBeeZB/XBeeZB.o ./XBeeLib/DigiLogger/DigiLogger.o ./XBeeLib/DigiLogger/DigiLoggerMbedSerial.o 
SYS_OBJECTS = ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/board.o ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/cmsis_nvic.o ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/mbed_overrides.o ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/retarget.o ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/startup_MK64F12.o ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/system_MK64F12.o 
INCLUDE_PATHS = -I. -I./XBeeLib -I./XBeeLib/FrameBuffer -I./XBeeLib/FrameHandlers -I./XBeeLib/Frames -I./XBeeLib/IO -I./XBeeLib/RemoteXBee -I./XBeeLib/Utils -I./XBeeLib/XBee -I./XBeeLib/XBee802 -I./XBeeLib/XBeeZB -I./XBeeLib/DigiLogger -I./mbed -I./mbed/TARGET_K64F -I./mbed/TARGET_K64F/TARGET_Freescale -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/common -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/common/phyksz8081 -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/clock -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/enet -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/interrupt -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/pit -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/drivers/pit/common -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/adc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/can -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/dac -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/dmamux -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/dspi -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/edma -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/enet -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/flextimer -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/gpio -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/i2c -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/llwu -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/lptmr -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/lpuart -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/mcg -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/mpu -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/osc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/pdb -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/pit -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/pmc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/port -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/rcm -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/rtc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/sai -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/sdhc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/sim -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/smc -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/uart -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/hal/wdog -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_KPSDK_CODE/utilities -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/MK64F12 -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/TARGET_FRDM -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device/MK64F12 -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device/device -I./mbed/TARGET_K64F/TARGET_Freescale/TARGET_KPSDK_MCUS/TARGET_MCU_K64F/device/device/MK64F12 -I./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM 
LIBRARY_PATHS = -L./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM 
LIBRARIES = -lmbed 
LINKER_SCRIPT = ./mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/K64FN1M0xxx12.ld

############################################################################### 
AS      = $(GCC_BIN)arm-none-eabi-as
CC      = $(GCC_BIN)arm-none-eabi-gcc
CPP     = $(GCC_BIN)arm-none-eabi-g++
LD      = $(GCC_BIN)arm-none-eabi-gcc
OBJCOPY = $(GCC_BIN)arm-none-eabi-objcopy
OBJDUMP = $(GCC_BIN)arm-none-eabi-objdump
SIZE    = $(GCC_BIN)arm-none-eabi-size 

ifeq ($(HARDFP),1)
	FLOAT_ABI = hard
else
	FLOAT_ABI = softfp
endif


CPU = -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=$(FLOAT_ABI) 
CC_FLAGS = $(CPU) -c -g -fno-common -fmessage-length=0 -Wall -Wextra -fno-exceptions -ffunction-sections -fdata-sections -fomit-frame-pointer -MMD -MP
CC_SYMBOLS = -DTARGET_RTOS_M4_M7 -DTARGET_FF_ARDUINO -DTOOLCHAIN_GCC_ARM -DTOOLCHAIN_GCC -DTARGET_KPSDK_MCUS -DTARGET_KPSDK_CODE -DTARGET_FRDM -DTARGET_CORTEX_M -DCPU_MK64FN1M0VMD12 -D__FPU_PRESENT=1 -DMBED_BUILD_TIMESTAMP=1456084230.65 -DTARGET_Freescale -DTARGET_M4 -D__MBED__=1 -DTARGET_K64F -DTARGET_LIKE_CORTEX_M4 -D__CORTEX_M4 -DFSL_RTOS_MBED -DTARGET_MCU_K64F -DARM_MATH_CM4 -DTARGET_LIKE_MBED 

LD_FLAGS = $(CPU) -Wl,--gc-sections --specs=nano.specs -u _printf_float -u _scanf_float -Wl,--wrap,main -Wl,-Map=$(PROJECT).map,--cref
LD_SYS_LIBS = -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys


ifeq ($(DEBUG), 1)
  CC_FLAGS += -DDEBUG -O0
else
  CC_FLAGS += -DNDEBUG -Os
endif

.PHONY: all clean lst size

all:  sender receiver size
sender: $(PROJECT)-sender.bin
receiver: $(PROJECT)-receiver.bin

clean:
	rm -f $(PROJECT)-*.bin $(PROJECT)-*.elf $(PROJECT)-*.hex $(PROJECT)-*.map $(PROJECT)-*.lst $(OBJECTS) $(DEPS)


.asm.o:
	$(Debug)echo AS $<
	$(Debug)$(CC) $(CPU) -c -x assembler-with-cpp -o $@ $<
.s.o:
	$(Debug)echo AS $<
	$(Debug)$(CC) $(CPU) -c -x assembler-with-cpp -o $@ $<
.S.o:
	$(Debug)echo AS $<
	$(Debug)$(CC) $(CPU) -c -x assembler-with-cpp -o $@ $<

.c.o:
	$(Debug)echo CC $<
	$(Debug)$(CC)  $(CC_FLAGS) $(CC_SYMBOLS) -std=gnu99   $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	$(Debug)echo C++ $<
	$(Debug)$(CPP) $(CC_FLAGS) $(CC_SYMBOLS) -std=gnu++98 -fno-rtti $(INCLUDE_PATHS) -o $@ $<



$(PROJECT)-%.elf: $(OBJECTS) $(SYS_OBJECTS)
	$(Debug)echo LD $@
	$(Debug)$(LD) $(LD_FLAGS) -T$(LINKER_SCRIPT) $(LIBRARY_PATHS) -o $@ $^ $(LIBRARIES) $(LD_SYS_LIBS) $(LIBRARIES) $(LD_SYS_LIBS)
$(PROJECT)-sender.elf: $(Objects-sender)
$(PROJECT)-receiver.elf: $(Objects-receiver)


%.bin: %.elf
	$(Debug)echo $< "->" $@
	$(Debug)$(OBJCOPY) -O binary $< $@

%.hex: %.elf
	$(Debug)echo $< "->" $@
	$(Debug)$(OBJCOPY) -O ihex $< $@

%.lst: %.elf
	$(Debug)echo $< "->" $@
	$(Debug)$(OBJDUMP) -Sdh $< > $@

lst: $(PROJECT)-receiver.lst $(PROJECT)-sender.lst

size: $(PROJECT)-receiver.elf $(PROJECT)-sender.elf
	$(SIZE) $^

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)



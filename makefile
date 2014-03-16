################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
#-include sources.mk
O_SRCS := 
CPP_SRCS := 
C_UPPER_SRCS := 
C_SRCS := 
S_UPPER_SRCS := 
S_SRCS := 
OBJ_SRCS := 
ASM_SRCS := 
CXX_SRCS := 
C++_SRCS := 
CC_SRCS := 
OBJS := 
C_DEPS := 
EEPROM_IMAGE := 
ELFS := 
FLASH_IMAGE := 
LSS := 
S_DEPS := 
CXX_DEPS := 
S_UPPER_DEPS := 
C++_DEPS := 
ASM_DEPS := 
CC_DEPS := 
CPP_DEPS := 
C_UPPER_DEPS := 
SIZEDUMMY := 
SUBDIRS := 

#-include Code/Servotor32_Default/subdir.mk
CPP_SRCS += Code/Servotor32_Default/ServotorTest.cpp
OBJS += Code/Servotor32_Default/ServotorTest.o
CPP_DEPS += Code/Servotor32_Default/ServotorTest.d

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\Tools\arduino-1.0.5\hardware\arduino\cores\arduino" \
-I"C:\Tools\arduino-1.0.5\hardware\arduino\variants\leonardo" \
-I"C:\Users\bond\Projects\avr\Servotor32" \
-D__IN_ECLIPSE__=1 -DUSB_VID=0x2341 -DUSB_PID=0x8036 -DARDUINO=105 \
-Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega32u4 \
-DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

#-include Bootloader/caterina/subdir.mk
#-include subdir.mk
#-include objects.mk
LIBS := -l"Arduino_Leonardo"

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

#-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += 
FLASH_IMAGE += 
EEPROM_IMAGE += 
SIZEDUMMY += sizedummy

# All Target
all: Test secondary-outputs

Test: ServotorTest.elf

# Tool invocations
ServotorTest.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C++ Linker'
	avr-gcc -Os -Wl,--gc-sections \
-L"C:\Users\bond\Projects\avr\Arduino_Leonardo/Release" \
-mmcu=atmega32u4  -o"ServotorTest.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lm
	@echo 'Finished building target: $@'
	@echo ' '

sizedummy: ServotorTest.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32u4 ServotorTest.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EEPROM_IMAGE)$(ELFS)$(FLASH_IMAGE)$(LSS)$(S_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C++_DEPS)$(ASM_DEPS)$(CC_DEPS)$(CPP_DEPS)$(C_UPPER_DEPS)$(SIZEDUMMY) ServotorTest.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

#-include ../makefile.targets

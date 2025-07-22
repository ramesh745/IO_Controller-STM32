################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../HW_Init/HW_Init1.cpp 

OBJS += \
./HW_Init/HW_Init1.o 

CPP_DEPS += \
./HW_Init/HW_Init1.d 


# Each subdirectory must supply rules for building sources it contributes
HW_Init/%.o HW_Init/%.su HW_Init/%.cyclo: ../HW_Init/%.cpp HW_Init/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F407VETx -c -I../Inc -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/Drivers" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/HW_Init" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/HW_Init" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-HW_Init

clean-HW_Init:
	-$(RM) ./HW_Init/HW_Init1.cyclo ./HW_Init/HW_Init1.d ./HW_Init/HW_Init1.o ./HW_Init/HW_Init1.su

.PHONY: clean-HW_Init


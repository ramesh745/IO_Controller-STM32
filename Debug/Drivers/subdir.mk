################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Drivers/Igpio.cpp 

OBJS += \
./Drivers/Igpio.o 

CPP_DEPS += \
./Drivers/Igpio.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/%.o Drivers/%.su Drivers/%.cyclo: ../Drivers/%.cpp Drivers/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F407VETx -c -I../Inc -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/Drivers" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/Drivers" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers

clean-Drivers:
	-$(RM) ./Drivers/Igpio.cyclo ./Drivers/Igpio.d ./Drivers/Igpio.o ./Drivers/Igpio.su

.PHONY: clean-Drivers


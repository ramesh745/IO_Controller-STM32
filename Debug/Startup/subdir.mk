################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32f407vetx.s 

S_DEPS += \
./Startup/startup_stm32f407vetx.d 

OBJS += \
./Startup/startup_stm32f407vetx.o 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -DSTM32F407xx -c -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/HW_Init" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/HW_Init" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/CMSIS/Include" -I"C:/Users/HP/STM32CubeIDE/workspace_1.16.1/IO_Controller/CMSIS" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Startup

clean-Startup:
	-$(RM) ./Startup/startup_stm32f407vetx.d ./Startup/startup_stm32f407vetx.o

.PHONY: clean-Startup


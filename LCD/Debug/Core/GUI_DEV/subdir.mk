################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/GUI_DEV/GUI_Paint.c 

OBJS += \
./Core/GUI_DEV/GUI_Paint.o 

C_DEPS += \
./Core/GUI_DEV/GUI_Paint.d 


# Each subdirectory must supply rules for building sources it contributes
Core/GUI_DEV/%.o Core/GUI_DEV/%.su Core/GUI_DEV/%.cyclo: ../Core/GUI_DEV/%.c Core/GUI_DEV/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/image" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/GUI_DEV" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/Fonts" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/example" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/LCD" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/Config" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-GUI_DEV

clean-Core-2f-GUI_DEV:
	-$(RM) ./Core/GUI_DEV/GUI_Paint.cyclo ./Core/GUI_DEV/GUI_Paint.d ./Core/GUI_DEV/GUI_Paint.o ./Core/GUI_DEV/GUI_Paint.su

.PHONY: clean-Core-2f-GUI_DEV


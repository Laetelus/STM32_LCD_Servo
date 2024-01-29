################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/LCD/LCD_0in96.c \
../Core/LCD/LCD_1in14.c \
../Core/LCD/LCD_1in3.c \
../Core/LCD/LCD_1in54.c \
../Core/LCD/LCD_1in8.c \
../Core/LCD/LCD_1inch28.c \
../Core/LCD/LCD_2inch.c \
../Core/LCD/LCD_2inch4.c 

OBJS += \
./Core/LCD/LCD_0in96.o \
./Core/LCD/LCD_1in14.o \
./Core/LCD/LCD_1in3.o \
./Core/LCD/LCD_1in54.o \
./Core/LCD/LCD_1in8.o \
./Core/LCD/LCD_1inch28.o \
./Core/LCD/LCD_2inch.o \
./Core/LCD/LCD_2inch4.o 

C_DEPS += \
./Core/LCD/LCD_0in96.d \
./Core/LCD/LCD_1in14.d \
./Core/LCD/LCD_1in3.d \
./Core/LCD/LCD_1in54.d \
./Core/LCD/LCD_1in8.d \
./Core/LCD/LCD_1inch28.d \
./Core/LCD/LCD_2inch.d \
./Core/LCD/LCD_2inch4.d 


# Each subdirectory must supply rules for building sources it contributes
Core/LCD/%.o Core/LCD/%.su Core/LCD/%.cyclo: ../Core/LCD/%.c Core/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/image" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/GUI_DEV" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/Fonts" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/example" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/LCD" -I"C:/Users/angel/Documents/STM32CUBE/Projects/Desk Robot/LCD/Core/Config" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-LCD

clean-Core-2f-LCD:
	-$(RM) ./Core/LCD/LCD_0in96.cyclo ./Core/LCD/LCD_0in96.d ./Core/LCD/LCD_0in96.o ./Core/LCD/LCD_0in96.su ./Core/LCD/LCD_1in14.cyclo ./Core/LCD/LCD_1in14.d ./Core/LCD/LCD_1in14.o ./Core/LCD/LCD_1in14.su ./Core/LCD/LCD_1in3.cyclo ./Core/LCD/LCD_1in3.d ./Core/LCD/LCD_1in3.o ./Core/LCD/LCD_1in3.su ./Core/LCD/LCD_1in54.cyclo ./Core/LCD/LCD_1in54.d ./Core/LCD/LCD_1in54.o ./Core/LCD/LCD_1in54.su ./Core/LCD/LCD_1in8.cyclo ./Core/LCD/LCD_1in8.d ./Core/LCD/LCD_1in8.o ./Core/LCD/LCD_1in8.su ./Core/LCD/LCD_1inch28.cyclo ./Core/LCD/LCD_1inch28.d ./Core/LCD/LCD_1inch28.o ./Core/LCD/LCD_1inch28.su ./Core/LCD/LCD_2inch.cyclo ./Core/LCD/LCD_2inch.d ./Core/LCD/LCD_2inch.o ./Core/LCD/LCD_2inch.su ./Core/LCD/LCD_2inch4.cyclo ./Core/LCD/LCD_2inch4.d ./Core/LCD/LCD_2inch4.o ./Core/LCD/LCD_2inch4.su

.PHONY: clean-Core-2f-LCD


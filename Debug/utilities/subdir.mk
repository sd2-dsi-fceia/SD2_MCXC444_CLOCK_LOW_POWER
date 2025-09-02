################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../utilities/fsl_assert.c \
../utilities/fsl_debug_console.c \
../utilities/fsl_str.c 

C_DEPS += \
./utilities/fsl_assert.d \
./utilities/fsl_debug_console.d \
./utilities/fsl_str.d 

OBJS += \
./utilities/fsl_assert.o \
./utilities/fsl_debug_console.o \
./utilities/fsl_str.o 


# Each subdirectory must supply rules for building sources it contributes
utilities/%.o: ../utilities/%.c utilities/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_MCXC444VLH -DCPU_MCXC444VLH_cm0plus -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DSDK_DEBUGCONSOLE_UART -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__NEWLIB__ -DSLCD_PANEL_LCD_S401M16KR_H -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\board" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\drivers" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\CMSIS" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\utilities" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\device" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\component\serial_manager" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\component\lists" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\component\uart" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\slcd" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\source" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-utilities

clean-utilities:
	-$(RM) ./utilities/fsl_assert.d ./utilities/fsl_assert.o ./utilities/fsl_debug_console.d ./utilities/fsl_debug_console.o ./utilities/fsl_str.d ./utilities/fsl_str.o

.PHONY: clean-utilities


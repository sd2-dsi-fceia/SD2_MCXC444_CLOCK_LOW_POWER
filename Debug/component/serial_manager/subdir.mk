################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/serial_manager/fsl_component_serial_manager.c \
../component/serial_manager/fsl_component_serial_port_uart.c 

C_DEPS += \
./component/serial_manager/fsl_component_serial_manager.d \
./component/serial_manager/fsl_component_serial_port_uart.d 

OBJS += \
./component/serial_manager/fsl_component_serial_manager.o \
./component/serial_manager/fsl_component_serial_port_uart.o 


# Each subdirectory must supply rules for building sources it contributes
component/serial_manager/%.o: ../component/serial_manager/%.c component/serial_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_MCXC444VLH -DCPU_MCXC444VLH_cm0plus -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DSDK_DEBUGCONSOLE_UART -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__NEWLIB__ -DSLCD_PANEL_LCD_S401M16KR_H -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\board" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\drivers" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\CMSIS" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\utilities" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\device" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\component\serial_manager" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\component\lists" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\component\uart" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\slcd" -I"C:\Users\Daniel\Downloads\workspace_mcxc444\SD2_MCXC444_CLOCK_LOW_POWER\source" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-serial_manager

clean-component-2f-serial_manager:
	-$(RM) ./component/serial_manager/fsl_component_serial_manager.d ./component/serial_manager/fsl_component_serial_manager.o ./component/serial_manager/fsl_component_serial_port_uart.d ./component/serial_manager/fsl_component_serial_port_uart.o

.PHONY: clean-component-2f-serial_manager


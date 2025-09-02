## Ejemplo SD2_MCXC444_CLOCK_LOW_POWER - Para la placa MCXC444
## Asignatura Sistemas Digitales II - FCEIA - UNR
## Basado en el ejemplo "MCXC444 Power Mode Switch Application" de la nota de aplicación AN14332 de NXP
Este es un proyecto complementario para [AN14332](https://docs.nxp.com/bundle/AN14332/page/topics/introduction.html), el cual demuestra varios modos de bajo consumo y cambios de reloj de la placa MCXC444 utilizando el display LCD. En el display LCD se muestra el estado actual del modo de consumo. Se utiliza como interfaz para modificar los modos de consumo el puerto UART del MCU y un terminal serie en la PC.


La placa MCXC444 soporta los siguientes modos de conusmo de potencia:

|Mode|CPU|SRAM|Peripherals|Wake-up Source|
|--|--|--|--|--|
|RUN|Active|Active|Active|*N/A*|
|WAIT|Sleep|Active|Active|NVIC|
|STOP|Deep Sleep|Retained|Clock Gated|AWIC|
|VLPR|Active (*)|Active (*)|Active (*)|*N/A*|
|VLPW|Sleep|Active|Active|NVIC|
|VLPS|Deep Sleep|Retained|Partial|AWIC|
|LLS|Deep Sleep|Retained|Partial|LLWU|
|VLLS3|Deep Sleep (Powered Down)|Retained|Partial|LLWU|
|VLLS1|Deep Sleep (Powered Down)|OFF|Partial|LLWU|
|VLLS0|Deep Sleep (Powered Down)|OFF|Partial|LLWU|

> (*): Frecuencia máxima limitada.

> Referirse a la tabla 7-2 de RM para el estado de los periféricos en modos de bajo consumo.

![MCX C series power mode transition](images/mode_transition.png)

La placa MCXC444 cuenta con un controlador LCD de 7 segmentos de bajo consumo que puede funcionar en la mayoría de los modos de bajo consumo y proporciona efectos de visualización enriquecidos sin la intervención de la CPU y otros periféricos.

El periférico SLCD puede operar en los siguientes modo de consumo:

|__Mode__|RUN|WAIT|STOP|VLPR|VLPW|VLPS|LLS|VLLS3|VLLS1|VLLS0|
|--|--|--|--|--|--|--|--|--|--|--|
|SLCD Availability|✔|✔|✔ (*)|✔|✔|✔ (*)|✔ (*)|✔ (*)|✔ (*)|✗|

> (*): Modo asincrónico con oscilador de 32kHz.

#### Placa: FRDM-MCXC444
#### Categoría: Low Power, HMI, bajo consumo
#### Periférico: DISPLAY LCD 7 segmentos de la placa
#### Toolchains: MCUXpresso IDE

## Software (IDE)
- Download and install [MCUXpresso IDE V11.10.0 or superior](https://www.nxp.com/design/design-center/software/development-software/mcuxpresso-software-and-tools-/mcuxpresso-integrated-development-environment-ide:MCUXpresso-IDE).












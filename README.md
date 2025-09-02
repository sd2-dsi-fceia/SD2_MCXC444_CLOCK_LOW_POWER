# NXP Application Code Hub
[<img src="https://mcuxpresso.nxp.com/static/icon/nxp-logo-color.svg" width="100"/>](https://www.nxp.com)

## MCXC444 Power Mode Switch Application
This is the complementary project for [AN14332](https://docs.nxp.com/bundle/AN14332/page/topics/introduction.html), which demonstrates various Low-Power modes of MCX C series with segment LCD display support.

The MCX C seires has the following power modes:

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

> (*): Maximum frequency limited.

> Refer to RM Table 7-2 for peripheral status under Low-Power modes.

![MCX C series power mode transition](images/mode_transition.png)

The MCX C444 series features a low-power segment LCD controller which can operates at most low-power modes, provides rich display effects without the intervention of the CPU and other peripherals.

The SLCD peripheral can operates at the following power modes:

|__Mode__|RUN|WAIT|STOP|VLPR|VLPW|VLPS|LLS|VLLS3|VLLS1|VLLS0|
|--|--|--|--|--|--|--|--|--|--|--|
|SLCD Availability|✔|✔|✔ (*)|✔|✔|✔ (*)|✔ (*)|✔ (*)|✔ (*)|✗|

> (*): Asynchronous mode with 32kHz oscillator

#### Boards: FRDM-MCXC444
#### Categories: Low Power, HMI
#### Peripherals: DISPLAY
#### Toolchains: MCUXpresso IDE

## Table of Contents
1. [Software](#step1)
2. [Hardware](#step2)
3. [Setup](#step3)
4. [Results](#step4)
5. [FAQs](#step5) 
6. [Support](#step6)
7. [Release Notes](#step7)

## 1. Software<a name="step1"></a>
- Download and install [MCUXpresso IDE V11.10.0 or later](https://www.nxp.com/design/design-center/software/development-software/mcuxpresso-software-and-tools-/mcuxpresso-integrated-development-environment-ide:MCUXpresso-IDE).
- MCUXpresso for Visual Studio Code: This example supports MCUXpresso for Visual Studio Code, for more information about how to use Visual Studio Code please refer [here](https://www.nxp.com/design/training/getting-started-with-mcuxpresso-for-visual-studio-code:TIP-GETTING-STARTED-WITH-MCUXPRESSO-FOR-VS-CODE).

## 2. Hardware<a name="step2"></a>
This project uses FRDM-MCXC444 development kit available from NXP.

The following equipment/accessories are also required to run this demo:
* Personal computer
* USB Type-C cable

Optional equipment:
* Current meter / SMU (To measure power consumption during low power modes)

## 3. Setup<a name="step3"></a>
### 3.1 Hardware Setup
1. Connect the FRDM-MCXC444 board to PC through USB Type-C connector J13.

### 3.2 Software Setup - MCUXpresso IDE Project
1. Open MCUXpresso IDE, in the Quick Start Panel, choose **Import from Application Code Hub**    

![](images/import_project_1.png)

2. Enter the demo name in the search bar.   

![](images/import_project_2.png) 

3. Click **Copy GitHub link**, MCUXpresso IDE will automatically retrieve project attributes, then click **Next>**.   

![](images/import_project_3.png)

4. Select **main** branch and then click **Next>**, Select the MCUXpresso project, click **Finish** button to complete import.   

![](images/import_project_4.png)

5. Click **Build** to start compiling the project.

## 4. Results<a name="step4"></a>
Please follow the Application Note ([AN14332](https://docs.nxp.com/bundle/AN14332/page/topics/introduction.html)) to perform the power mode switch and current measurement. The LCD will show the current power modes.

## 5. FAQs<a name="step5"></a>
No FAQs have been identified for this project.

## 6. Support<a name="step6"></a>
Please open a issue for support.

#### Project Metadata
<!----- Boards ----->
[![Board badge](https://img.shields.io/badge/Board-FRDM&ndash;MCXC444-blue)](https://github.com/search?q=org%3Anxp-appcodehub+FRDM-MCXC444+in%3Areadme&type=Repositories)

<!----- Categories ----->
[![Category badge](https://img.shields.io/badge/Category-LOW%20POWER-yellowgreen)](https://github.com/search?q=org%3Anxp-appcodehub+low_power+in%3Areadme&type=Repositories) [![Category badge](https://img.shields.io/badge/Category-HMI-yellowgreen)](https://github.com/search?q=org%3Anxp-appcodehub+hmi+in%3Areadme&type=Repositories)

<!----- Peripherals ----->
[![Peripheral badge](https://img.shields.io/badge/Peripheral-DISPLAY-yellow)](https://github.com/search?q=org%3Anxp-appcodehub+display+in%3Areadme&type=Repositories)

<!----- Toolchains ----->
[![Toolchain badge](https://img.shields.io/badge/Toolchain-MCUXPRESSO%20IDE-orange)](https://github.com/search?q=org%3Anxp-appcodehub+mcux+in%3Areadme&type=Repositories)

Questions regarding the content/correctness of this example can be entered as Issues within this GitHub repository.

>**Warning**: For more general technical questions regarding NXP Microcontrollers and the difference in expected funcionality, enter your questions on the [NXP Community Forum](https://community.nxp.com/)

[![Follow us on Youtube](https://img.shields.io/badge/Youtube-Follow%20us%20on%20Youtube-red.svg)](https://www.youtube.com/@NXP_Semiconductors)
[![Follow us on LinkedIn](https://img.shields.io/badge/LinkedIn-Follow%20us%20on%20LinkedIn-blue.svg)](https://www.linkedin.com/company/nxp-semiconductors)
[![Follow us on Facebook](https://img.shields.io/badge/Facebook-Follow%20us%20on%20Facebook-blue.svg)](https://www.facebook.com/nxpsemi/)
[![Follow us on Twitter](https://img.shields.io/badge/Twitter-Follow%20us%20on%20Twitter-white.svg)](https://twitter.com/NXP)

## 7. Release Notes<a name="step7"></a>
| Version | Description / Update                           | Date                        |
|:-------:|------------------------------------------------|----------------------------:|
| 1.0     | Initial release on Application Code Hub        | May 16<sup>th</sup> 2024 |


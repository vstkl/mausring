## what and why

Main idea is to create a mouse-like device in form factor of a ring, utilising accelerometer for movements with rotary outer ring allowing for scrolling through endless documentation and specification that we all eventually will face.
The motivation behind this project is me being lazy to put my hand back on touchpad/mouse everytime I need to go to next page of the document while my hands are busy drinking coffee or whatever.
So for sake of laziness and learning I've decided to try to make my ideal device reality and surely, I will come across some obstacles so I will try my best to document lessons learned in the circuit development, in programming of the software and many more.

## dev toolchain

current toolchain for 3d design is jupyter notebook, utilizing [jupyterscad](https://github.com/jreiberkyle/jupyterscad) and [solid2](https://github.com/jeff-dh/SolidPython), with some helpful tweaks to original [OpenSCAD](https://openscad.org/)
for schematic and PCB design I'm using [EasyEDA Pro](https://pro.easyeda.com/editor) and parts included, eventually maybe with some extensions or community-defined parts. We will see.

## hardware design

Design is rather simple - two rings: inner and outer ring.

The inner ring shall contain chipsets and battery, providing

1. Brain of the device - ESP8684-H2/ESP32-C3FH4 - usage mostly defined by size of the chipset to fit in critically small space, allowing for maximal possible user comfort and eventually battery???

2. IMU(Accelerometer, gyroscope, magnetometer) - #ICM20948, which is available in small enough package and provides excellent [documentation](https://github.com/vstkl/mousring/blob/master/datasheets/icm20948.pdf)

3. Battery - TBD

    - I still have no idea how to power the device, probably it would be cool to include partial charging by thermoelectric effect
    - Also the rotation could be eventually utilised to charge the device, allowing the magnetic pulses providing rotation data to the Hall sensor to allow for secondary function of providing inductive pulses allowing to charge the device(feasibility of such feature is TBD)
    - Still, some small battery has to be included, best option so far is a small LiFePo cell, based on research of [OuraRing](https://ouraring.com/), which uses 22mAh battery, similar battery should be sufficient #TBD

## Work in progress Notes

Initial idea to use BMA423 changed to use single chip providing magnetometer and accelerometer, as well as gyro, so after considering LSM303, lack of available dev boards made me look further, and I'm glad it did, because I came across #ICM20948, which is perfect for my use case, as well I managed to acquire dev board to have means to test firmware for it.

Brain of the device shall remain the same so far, however I'm considering using other generic ESP32-C3, however I'd like to utilize RISC-V MCU, and since computational power is not an issue for my case, I'd like to adhere to that and embrace RISC-V, since I've dedicated significant amount of time to understand it.

I've come accross m5stack gateway, and m5stack coreS3, which provide
[schematic 1](https://github.com/vstkl/mousring/blob/master/datasheets/esp32h2_m5stack_gateway_reference.pdf)
[schematic 2](https://github.com/vstkl/mousring/blob/master/datasheets/esp32s3_m5stack_gateway_imu_reference.pdf)
for reference and inspiration on how to design #esp32 boards.

### SW

so far the working solution is arduinoIDE, using [ICM20948_WE](https://github.com/wollewald/ICM20948_WE), which provide SPI interface and comfortable abstraction. The base is implemented using FreeRTOS, and so far I yywas able to implement system with tasks defined for comms, for IMU and other task doing blinky, for sake of some control, next step shall be changing blink parameters based on current status. 

another step was to implement solution in arduino that was capable of projeting the IMU data to gamepad x/y.
next step shall be projecting this data into mouse movements
this will include 
 - translating 3D to 2D for the acquired data
 - passing this data through compatibility layer/HAL to mouse HID

## TODO:
- [ ] implement setup as separate task and create initialization task
- [ ] move sending BLE events into events triggered by IMU above treshold(TBD)
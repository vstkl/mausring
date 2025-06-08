# mousring

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

1. Brain of the device - ESP8648-H2/ESP32-C3FH4 - usage mostly defined by size of the chipset to fit in critically small space, allowing for maximal possible user comfort and eventually battery???

2. Hall sensor - HAL3144E

3. Brain of the device - ESP8648-H2/ESP32-C3FH4 - usage mostly defined by size of the chipset to fit in critically small space, allowing for maximal possible user comfort and eventually battery???

4. Battery - TBD 

    - I still have no idea how to power the device, probably it would be cool to include partial charging by thermoelectric effect
    - Also the rotation could be eventually utilised to charge the device, allowing the magnetic pulses providing rotation data to the Hall sensor to allow for secondary function of providing inductive pulses allowing to charge the device(feasibility of such feature is TBD)
    - Still, some small battery has to be included, best bet so far is a small LiFePo cell, based on research of [OuraRing](https://ouraring.com/), which uses 22mAh battery, similar battery should be sufficient #TBD 

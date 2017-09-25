# EnOceanSpy

Use your Raspberry Pi to log all incoming EnOcean telegrams with an USB300 stick.

## Hardware Requirements

* USB-Host: Raspberry Pi or x86 Linux
* EnOcean USB300 (Alternative: EnOcean Pi SoC-Gateway TRX 8051)

## Building

Compile EnOceanSpy with the following command

```
gcc -o enoceanspy enoceanspy.c
```

or

```
gcc -m32 -o enoceanspy enoceanspy.c
```

or use makefile with the following command

```
make
```

To use the EnOcean Pi SoC-Gateway TRX 8051 you need to disable Linux using the serial port for debugging. As default the serial port of the GPIO interface is used for console debug outputs. To use this port for your EnOcean Pi, this feature has to be disabled. There is a script available at GitHub to adapt boot up settings:
https://github.com/lurch/rpi-serial-console 

## Usage

As soon as compiling was succeesfull, you can start spying with

```
./enoceanspy /dev/ttyUSB0    (using EnOcean USB300)
```

or     

```
./enoceanspy /dev/ttyAMA0    (using EnOcean Pi)
```

to log all imcoming telegrams at console or start it with

```
./enoceanspy <portname> > log.txt
```

to log all incoming telegrams in file 'log.txt'.

## Disclaimer

Have fun to seek your environment after EnOcean devices.

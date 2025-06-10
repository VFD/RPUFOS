# PHC-25

## Introduction

The PHC-25 was choose to be the cold case of the GAME JAM 2025.

YOU TUBE: [PHC-25, Olipix](https://youtu.be/B97-ilAeYUk?feature=shared)



## Ressources

### Documentations

[All here](./Documents)
And my compilation for the BASIC in RTF and PDF. Work in progress.



### A starting point

With the "Start.bas".\
This is a work in progress.

### Internet

Take a look here:

http://phc-25.org

https://github.com/gilles504/PHC25_K7Tool

https://www.emu-france.com/emulateurs/10-ordinateurs/251-sanyo-phc-20-phc-25/

http://takeda-toshiya.my.coocan.jp/

https://daimonsoft.info/phc25/


## Other technicals

### Issues with variables

The PHC-25 has a severe limitation in the size of its variables. In fact, they cannot exceed 2 characters.\
Exception:\
Text variables, which have the $ (making it 3 characters). 

### Screen mode

This MC-6847 chip offers different text and graphic modes, each with a subset of colors available:
- Mode 1: 16x32 (text) in 2 colors
- Mode 2: 16x32 (text) in 4 colors and 64x48 (semi graphic) in 2x8 colors
- Mode 3: 16x16 (text) in 8 colors and 128x192 (graphic) in 2x4 colors
- Mode 4: 16x32 (text) in 2 colors and 256x192 (high resolution graphics) in 2 colors

This is a very complete BASIC which is in fact compatible with the NEC PC-6001 one.
Thus, the PHC-25 if virtually "BASIC" compatible with the 6001, but some instructions and features need to be modified before running the program.

### Memory

	0000-4FFF BASIC Interpreter
	5000-5FFF Police
	6000-77FF VRAM (6KB)
	7800-7FFF Vide
	8000-BFFF Vide
	C000-FFFF RAM (16KB)



EOF
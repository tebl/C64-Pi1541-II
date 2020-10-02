# C64 PI1541-II
Well... if you're here, then that new and shiny SD2IEC wasn't cycle-exact enough for you? Sure, there are great FPGA-based solutions available at a premium, but for those of us on a tight budget or simply want to build it ourselves there is the excellent Pi1541-software with a Raspberry Pi 3 at its core!

![Pi1541-II](https://github.com/tebl/C64-Pi1541-II/raw/main/gallery/2020-09-27%2022.23.51.jpg)

A Pi1541 can be constructed in many ways, but even though you can easily build one without the help of a PCB such as the ones provided by this project - I've found it a lot easier to make them work when you have a PCB available. I've released the design files for a more traditional Raspberry Pi-hat if you would rather build one of those, these can be found in my old repository at [C64-Pi1541-Module](https://github.com/tebl/C64-Pi1541-Module). With this version I've attempted to make one that is a little easier on the eyes, as well as attempting to hide most of the bare electronics so that it does not need to be handled directly.

![Pi1541-II in use](https://github.com/tebl/C64-Pi1541-II/raw/main/gallery/2020-09-29%2000.34.07.jpg)
![Pi1541-II side view](https://github.com/tebl/C64-Pi1541-II/raw/main/gallery/2020-09-29%2000.45.49.jpg)

Read on for instructions on how to construct a Pi1541-II module yourself - as can be seen from the images, the solution is composed of three separate PCBs with most of the electronics mounted in the center. This creates a rudimentary case so that those without a functioning 3d-printer also have an acceptable alternative (the board is a little bit smaller than an actual floppy disk, but should be somewhat to scale). See https://cbm-pi1541.firebaseapp.com for any software-related information, this even includes instructions on how to construct a Pi1541 without a PCB available.

# 1> BOM
This is the list of parts that you'd need in order to construct a Pi1541-II, most if not all should be readily available from your friendly neighbourhood electronics store if you should happen to have one available. For me, that means ebay since those disappeared in the 80s around here, but your mileage may wary (so may the friendliness).

Values in parenthesis are components can be be considered optional, but if you want to build it for yourself I higly recommend them as they only should only slightly increase the overall cost of doing this project. When ordering the PCBs you can order them via your favourite PCB fabrication company, but please consider using the provided URLs as doing so will help me cover some of the costs associated with PCB designs (at no extra cost to you).

## 1.1> Pi1541-II Module
| Reference                 | Item                                  | Count |
| ------------------------- | ------------------------------------- | ----- |
| Pi1541-II Module (PCB)    | Fabricate using Gerber files          |     1 |
| A1                        | 2x20 female pin header                |     1 |
|                           | Raspberry Pi 3B                       |     1 |
| BZ1                       | Buzzer (7mm pin spacing, 5mm OK)      |   (1) |
| C1                        | 100nF ceramic capacitor               |     1 |
| D2                        | 5mm LED, green colour                 |     1 |
| D3                        | 5mm LED, red colour                   |    (1)|
| IC1 *                     | SSD1306 OLED-display 128x64 (0.96")   |    (1)|
| IC2 **                    | 7406 (DIP-14)                         |     1 |
| IC3                       | 4ch I2C level converter module        |     1 |
| R1, R2                    | 1k Ohm resistor                       |     2 |
| R6,R7                     | 330 Ohm resistor                      |  1 (1)|
| J1                        | 2.1mm x 5.5mm barrel plug             |     1 |
| J2, J3                    | Female S-terminal 6pin DIN PCB        |  1 (1)|
| J4                        | 1x4 female pin header                 |     1 |
| SW1-SW5                   | 6x6x5mm right-angle momentary button  |     5 |

*) Provisions for installing an OLED display here only when a faceplate is not used, but this is only recommended as a budget-edition so it's there if you need it. 
**) There are unfortunately counterfeit 7406 chips floating around, the ones I've had the most success with has been marked 7406PC though a few SN7406 have also worked. See Pi1541 software homepage for instructions on how to verify that the IC installed is working properly (it'll usually work, but with some issues on loading software).

## 1.2> Pi1541-II Faceplate
Note that for the faceplate there may be several variants available to you, this is due to the differences in the displays available for purchase - the one to look for is sometimes described as the old 4 pin 128x64 SSD1306 OLED-display (0.96").

| Reference                 | Item                                  | Count |
| ------------------------- | ------------------------------------- | ----- |
| Pi1541-II Faceplate (PCB) | Fabricate using Gerber files          |     1 |
| IC1                       | SSD1306 OLED-display 128x64 (0.96")   |     1 |
| J4                        | 1x4 extra long pin header             |     1 |

## 1.3> Pi1541-II Backplate
| Reference                 | Item                                  | Count |
| ------------------------- | ------------------------------------- | ----- |
| Pi1541-II Backplate (PCB) | Fabricate using Gerber files          |     1 |

## 1.4> Miscellaneous components
This is a suggested list of components used to screw together each of the PCBs, most of these you can find as part of a set on ebay (just search for "*M3 nylon assorted standoff kit*").

| Reference                 | Item                                  | Count |
| ------------------------- | ------------------------------------- | ----- |
|                           | M3x6mm nylon screw                    |     6 |
|                           | M3 nylon Hex nut                      |     6 |
|                           | M3x6mm Nylon Hex standoff             |     4 |
|                           | M3x10mm Nylon Hex standoff            |     2 |
|                           | M3x15mm Nylon Hex standoff            |     4 |

# 2> Building the Pi1541-II
Still with me so far and all components arrived from wherever you ordered them? Excellent. The final and last step is soldering it all together into something that'll work for you, but first a few obligatory notes about equipment requirements: you'll need a proper soldering iron, something that comes with an adjustable temperature and not the one you found out in the shed from the previous owner of your house (probably). If you can get hold on some 64/40 soldering tinm the one that has lead in it is highly preferable if you have the option to do so (can't buy them around here, so send me a roll if you can). Other than that, take it slowly and do some light dry-fitting to ensure that you know where everything is supposed to go before soldering things onto the PCBs (removing components is a lot harder that soldering them in, trust me on that one).

## 2.1> Pi1541-II Module
Starting with the module, solder into place the smaller components like the resistors, the one capacitor and the socket for the 7406 IC. Finally, add the larger components such as the connectors and momentary switches - usually it is easiest to tack it into place in one corner, heat up the component again and then adjust the fitting so that everything is on straight and lining up with the silkscreen illustrations. A piece of the IEC connector will conflict with the buzzer specified for use, just snip it off (we'll hide it under the faceplate anyway)!

![Pi1541-II in progress](https://github.com/tebl/C64-Pi1541-II/raw/main/gallery/2020-09-24%2022.49.03.jpg)

Before long, you should have something that looks like the above. In order to add some strain-relief for the Raspberry Pi 3, I've screwed it into place using a couple M3x10mm nylon hex standoffs, two M3x6mm scres and two M3 hex nuts on the bottom. At each of the corners, use some M3x15mm standoffs and have them thread through the board and into four M3x6mm hex standoffs.

## 2.2> Pi1541-II Faceplate
The faceplate does not have that many components, but note that there may be several versions of the faceplates available - pick the one that corresponds to the display you've ordered. The connector on the top left corner (J4) is supposed to slot into the module PCB below it, so adjust the height of this **before** soldering it into place - ensuring a good connection between the PCBs.

![Adapting OLED](https://github.com/tebl/C64-Pi1541-II/raw/main/gallery/2020-09-24%2021.25.37.jpg)

The next step is taking care of the OLED display side of things, the first part you need to do is to note down the pin ordering shown on the front of the module. The reason you're doing thisis that some of the vendors will have displays where the VCC and GND are swapped around, something that'll instantly kill the display if you connect things the wrong way around. If the pin order is VCC/GND/SCL/SDA as shown above, then you need to short pads 2-3 on JP1 and JP2 (the square pad is pin 1, in case you were wondering).

The second step to all this is that most of the displays will already have some pin headers soldered in place, unfortunately on the wrong side - at least when you want to use it in a build like this. This can be solved by carefully heating one pin at a time, then push it gently against something metal like a pair of pliers in order to push it through. Mount the OLED module on the underside of the faceplate, try using some heat if you're having trouble pushing it into place - be patient though, the display is a piece of glass and it'll break if you use too much force. Install M2 screws and nuts to add some strain relief to it, this'll keep the display from being pushed into the unit.

![Mounting OLED](https://github.com/tebl/C64-Pi1541-II/raw/main/gallery/2020-09-24%2022.58.00.jpg)

## 2.3> Pi1541-II Backplate
The backplate is mostly only there for decoration as well as make sure that the user don't have to handle the electronics too much during use. There should already be some M3x6mm hex standoffs mounted on the bottom of the module, so the only remaining step is putting on the backplate and fixing it into place using the remaining four M3 hex nuts. Trim off any parts of the screws that poke through the nuts, that way you won't scratch up your designated play-area more than necessary.

![Backplate install](https://github.com/tebl/C64-Pi1541-II/raw/main/gallery/2020-09-29%2000.45.59.jpg)

## 2.4> Configuring the Pi1541-II
The Pi1541 is easily configured by downloading the latest binaries for the software from https://cbm-pi1541.firebaseapp.com, extract the archive to the root of the SD-card you want to use. Since the Pi1541-II is an option B build of the specified software you'll need to update some of the settings, this is done by editing the file called *options.txt* - the lines you'll need to use with the Pi1541-II specifically is as follows:
```
splitIECLines = 1
GraphIEC = 0

SoundOnGPIO = 1
soundOnGPIODuration = 200
soundOnGPIOFreq = 200

LCDName = sh1106_128x64
LcdLogoName = 1541ii

i2cBusMaster = 1
i2cLcdAddress = 60
```

Most of these are just suggestions, but they are what I'm using and for the most part the should be considered a place to start (the first name is a must though, as are the I2C stuff).

## 2.5> Troubleshooting
Still here? Damn... something must have gone wrong then! As stated on the website belonging to the software itself, most problems are solved by ensuring that you are using a power supply that is powerful enough for the Raspberry Pi 3B - the one I'm using is a cheap 5A one, somehow they seem to be much more reliable than the USB-powered ones (which you can't use because that is one of the design choices made along the way). If it sort of works or appears to hang suddenly, you might have a power issue.

If it is not a power issue, does the display work? If it is completely dark, take the Pi out of the Pi1541-II and allow it to start up - tune into it via HDMI to ensure that the Pi1541 software boots correctly. If it doesn't, check your SD-card.

Put it back in again, still now display and you've also checked that the configuration is correct? Double-check your previous notes so that you've soldered JP1/JP2 on the faceplate according to the actual pin order - if you've forgotten to do so, then do it now and try again. Did you do it the wrong way around and have already attempted to power up the thing, you know you probably did if you're here right now... In which case, you should order a new display since the one you own is probably completely dead by now.

You've gotten this far, then that's super-awesome! Hopefully you can select a d64 file from your SD-card, move up/down to the file and click select to start emulating a drive with that disk inserted. Try to load up the directory listing from your Commodore 64:
```
LOAD "$",8
```
If it fails instantly with a message saying "*DEVICE NOT PRESENT*", your 7406 might not be working as it should or possibly not at all (ensure your C64 actually works with the same cable and with a real disk drive first, if possible). Try a different chip and hope that it works.

If you get a different error or quite possibly the Commodore 64 just hangs there without doing anything, a good bet is that the I2C level converter is crappy - I've had around 20% DOA on those things, so it is not unlikely. My best recommendation is to use a multimeter and measure the resistance across various points, more than likely you can spot the one where nothing is connected by comparing between them (they usually come in packs of 5 or 10 so you should have spares).

Finally, if the computer just says *READY* then that is not an error - you just need to brush up on your BASIC commands. That's all I have, please feel free to join the C64 Facebook group if more assistance is needed (there's usually helpful people hanging around there).
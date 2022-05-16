---
title: "myCPU: The Components"
subtitle: All about the components needed to build your myCPU
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---
> The content is under development, the final version will be as soon as possible.

The myCPU design is based on through hole components instead SMD because of its ease of assembly and soldering, they are easier to buy and manipulate, especially for beginners, and makes replacement easy in case of an assembly error or malfunction.
{: style="text-align: justify"}


No components will be provided with the kit because the difficult to handle a component catalog and storage for a particular who don’t have a dedicated store for the project. You can buy all the components at Chinese stores, assuming the risk for the lack of quality, or at the official components stores which are more expensive stores.
{: style="text-align: justify"}

>The risk of lack of quality of Chinese components is real and could cause some issues difficult to debug and check, keep it in mind when you take your decision where to buy.
{: style="text-align: justify"}

All my prototypes were built using Chinese components and the final version works fine. Really, I had several problems with some of the IC provided, but in general it has enough quality for a DIY project, and it has a lower price to buy replacements. Keep in mind, if you are beginner or even you don’t, is easy make a mistake with the orientation of the IC and burn some of them, is preferably having to buy cheap replacements on Chinese stores.
{: style="text-align: justify"}

In case you are experienced hobbyist or engineer you can buy all the components in official stores if you want but think that some TTL families could be hard to find at those stores because of the obsolete nature of the TTL technology.
{: style="text-align: justify"}

>TTL ICs are mostly obsolete now days and some of them are difficult to find on official stores, so, Chinese stores are the only place to buy them.
{: style="text-align: justify"}

The next list includes the common types of components you can find in the myCPU design:
{: style="text-align: justify"} 

1.	**Resistors 1/4w**
2.	**Resistor arrays**
3.	**TTL ICs**
4.	**CMOS EEProm memories**
5.	**CMOS and TTL SRAM ICs**
1.	**Ceramic or Tantalum capacitors**
2.	**Electrolytic capacitors**
3.	**Switches, Buttons and Potentiometers**
4.	**LED bar displays**
5.	**4 digit 7 segments display**
6.	**Power Jack**
7.	**Variable resistors**
8.	**Trimmer resistors**
9.	**IC and memory Sockets**
10.	**Board pins headers**
11.	**Board female sockets**
12.	**IDC female connectors and flat wire**

### TTL Tips and Tricks
1)	TTL inputs pins of some logic ICs are connected to pull-down resistor 330ohm to GND, and some other inputs need pull-up resistor of 1k to VCC to keep high value by default.
{: style="text-align: justify"} 

### Resistors
Most common values of 1/4W resistors are used in the myCPU design: 220Ω, 330Ω, or 1K are the most used values. Chosen the 1/4W not for its dissipation but for its most manageable size.
{: style="text-align: justify"} 

### Resistor Arrays
For limited or pull-down resistors, a resistor array is used to save space and avoid to soldering a lot of resistors.
{: style="text-align: justify"} 

### TTL ICs
The myCPU design is based mostly on TTL logic ICs, is an old technology and probably does not have the best electrical behavior but is more friendly and electrical tolerant for beginners. Were the most common digital components on its time and probably are the best choice to build an experimental device for learning. Although could be more difficult to find and buy. CMOS technology could be a better choice but it break the learning path compatibility with the Ben’s Eater video lectures.
{: style="text-align: justify"}

### CMOS components
Are used basically for memories of special components like the 4094 shift register on the EEProm programmer.
{: style="text-align: justify"}

In the myCPU design you can find CMOS **AT28C64** EEProm memories mainly for decoders, replacing the combinational decoding. To avoid the need to use and but a bunch of different sizes of EEProm memories, I decided to use the same size model for all purposes which need an EEProm and chose the 64K version.
{: style="text-align: justify"}

As an alternative to the SRAM module based on TTL **74LS219 SRAM** IC, I’ve planned to design a SRAM module based on CMOS **HM-6116 2K x 8 bit SRAM** memory or in the future a bigger SRAM module based on the CMOS **HM-62256A 32K x 8 bit** or the CMOS **W24129A 16K x 8 bit**.
{: style="text-align: justify"}

### Ceramic or Tantalum capacitors
Preferably try to use tantalum capacitors for its better electrically features. The most common use is as decoupling capacitors for the TTL ICs, which is mandatory when use TTL and recommended by the manufacturer. 10nF and 100nF are the most common values, especially the last one for decoupling. Other values are used mainly on the Clock module.
{: style="text-align: justify"} 

### Electrolytic capacitors
Used mainly for power supply filtering purposes. You can find one 10µF capacitor on each module and a 220µF in each voltage regulator on the BUS module. Feel free to change those values if you consider other values better.
{: style="text-align: justify"}

Other electrolytic capacitors are used to setup 555 timers in the Clock and Display modules.
{: style="text-align: justify"}

### Switches, Buttons and Potentiometers
Mainly I used DIP switches to provide testing capabilities. 4, 8 or 12 positions are used. The 12 positions are used only in the CSM (Controller) module.
{: style="text-align: justify"}

For on/off functions, a common 3 pins mini switch are used.
{: style="text-align: justify"}

Basic PCB mount push buttons are used of 6 mm and 12 mm sizes.
{: style="text-align: justify"}

### LED bar displays
### 4 digits 7 segment displays
### Power Jack
A common horizontal 3 pin 2.1 mm PCB power jack are used for plugging the power source.
{: style="text-align: justify"}

### Variable and Trimmer Resistors
### IC and Memory sockets
### A DIF socket is used for the EEProm programmer.
### Board pin headers
### Straight and right-angled dual row pin headers are used. 
### Right-angled pin headers are used to connect BUS modules and create the chained BUS module structure.
### Board female sockets
### IDC female sockets and flat wire







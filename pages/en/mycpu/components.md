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
Common values of resistors are used in the myCPU design: 220Ω, 330Ω, or 1K are the most used values. The 1/4W size resistor was chosen not for its dissipation capability but for its most manageable size.
{: style="text-align: justify"}

{:.center}
![Resistor size samples](/img/mycpu/components/resistors_min.png){:width="400px"}

### Resistor Arrays
A resistor array is used for limited or pull-down resistors, to save space and avoid the need to solder a lot of identical resistors.
{: style="text-align: justify"}

{:.center}
![Resistor arrays samples](/img/mycpu/components/resistor_arrays_min.png){:width="400px"}

### TTL ICs
The myCPU design is based mostly on TTL logic ICs, is an obsolete technology and probably does not have the best electrical behaviour but is more friendly and electrical tolerant for beginners, students, and hobbyists.
{: style="text-align: justify"}

TTL family were the most common digital components on its time and probably are the best choice to build an experimental device for learning. Although could be more difficult to find and buy. CMOS technology could be a better choice, but it breaks the compatibility with the learning path of the Ben’s Eater video lectures. In the other hand those TTL ICs are easy to find in Chinese components stores at a cheap price. 
{: style="text-align: justify"}

Up to 15 types of TTL ICs are used in the myCPU design, you can find all references in the [BOM list](/pages/en/mycpu/downloads/bom/) and their corresponding datasheets at the [downloads](/pages/en/mycpu/downloads/datasheets/) page.
{: style="text-align: justify"}

{:.center}
![TTL ICs samples](/img/mycpu/components/TTL_ICs_min.png){:width="800px"}

### CMOS components
Are used basically for memories or special components like the **CD4094** shift register on the EEProm programmer.
{: style="text-align: justify"}

In the myCPU design you can find the **AT28C64** EEProm memories mainly for decoders, replacing the combinational decoding logic. To avoid the need to use a bunch of different capacity sizes of EEProm memories, I decided to use the same type of EEProm memory for all purposes which need an EEProm and chose the 64K version.
{: style="text-align: justify"}

As an alternative to the SRAM module based on TTL **74LS219** SRAM IC, I’ve planned to design a SRAM module based on **HM-6116** (2K x 8) SRAM memory or in the future a bigger SRAM module based on the **HM-62256A** (32K x 8) or the **W24129A** (16K x 8).
{: style="text-align: justify"}

You can find all related datasheets at the [downloads](/pages/en/mycpu/downloads/datasheets/) page.

{:.center}
![CMOS ICs samples](/img/mycpu/components/cmos_min.png){:width="400px"}

### Capacitors
Ceramic capacitors are used mostly for decoupling. Preferably try to use tantalum capacitors for its better electrically behaviour. The most common use is as decoupling capacitors for the TTL ICs, which is mandatory when use TTL and recommended by the manufacturer. 10nF and 100nF are the most common values, especially the last one for decoupling. Other values are used mainly on the Clock module to avoid noise and signal ripple.
{: style="text-align: justify"}

Electrolytic capacitors are used mainly for power supply filtering purposes. You can find one 10µF capacitor on each module and a 0.47 µF or 220 µF, depending of your preferences, in each voltage regulator on the BUS module. Feel free to change these values if you consider other values better.
{: style="text-align: justify"}

Other electrolytic capacitors are used to setup 555 timers in the Clock and Display modules.
{: style="text-align: justify"}

### Switches, Buttons and Potentiometers
DIP switches are used, mainly to provide setup or testing capabilities. DIP switches of 4, 8 and 12 positions are used. The 12 positions switch are used only in the CSM (Control Signal Manager) module.
{: style="text-align: justify"}

For on/off behavior, a common 3 pins mini slide switches are used.
{: style="text-align: justify"}

Push buttons are used with 6 mm and 12 mm sizes.
{: style="text-align: justify"}

{:.center}
![Switches samples](/img/mycpu/components/switches_min.png){:width="400px"}

### LEDs and LED bar displays
Mostly 3 mm LED are used on display modules, by its small size, to show status information and data. Some 5 mm LED are used for other purposes. 
{: style="text-align: justify"}

I used different LED colours to build different colour displays following a colour pattern to keep a functional correspondence with the LED displays, I recommended you follow the same pattern for an easy debugging view.
{: style="text-align: justify"}

+	**RED**: BUS, Instruction Register, MAR, Output Register, Flags
+	**GREEN**: General purpose registers
+	**YELLOW**: SRAM, Program Counter, Sequencer counter
+	**BLUE**: ALU, CSM, Sequencer states


8 segments LED bar displays are used in the myCPU design to show the current data on the BUS. Later in the next release will be used the 8 segments LED bar displays instead LED 3mm on LED displays to save space and because with two of them you can show either 8 or 16 bits.
{: style="text-align: justify"}

There are some places where LED are assembled directly to the board, mainly because it shows status or functional information not data. The purpose of LED displays is to show the data movements during the execution process.
{: style="text-align: justify"}

{:.center}
![LED samples](/img/mycpu/components/led_displays_min.png){:width="500px"}

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







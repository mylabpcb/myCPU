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
4.	**CMOS ICs**
1.	**Ceramic or Tantalum capacitors**
2.	**Electrolytic capacitors**
3.	**Switches and Buttons**
4.	**LED bar displays**
5.	**4 digit 7 segments display**
6.	**Power Jack**
7.	**Variable, Trimmer resistors, and Potentiometers**
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

### CMOS ICs
Are used basically for memories or special components like the **CD4094** shift register on the EEProm programmer.
{: style="text-align: justify"}

In the myCPU design you can find the **AT28C64** EEProm memories mainly for decoders, replacing the combinational decoding logic. To avoid the need to use a bunch of different capacity sizes of EEProm memories, I decided to use the same type of EEProm memory for all purposes which need an EEProm and chose the 64K version.
{: style="text-align: justify"}

As an alternative to the SRAM module based on TTL **74LS219** SRAM IC, I’ve planned to design a SRAM module based on **HM-6116** (2K x 8) SRAM memory or in the future a bigger SRAM module based on the **HM-62256A** (32K x 8) or the **W24129A** (16K x 8).
{: style="text-align: justify"}

You can find all related datasheets at the [downloads](/pages/en/mycpu/downloads/datasheets/) page.

{:.center}
![CMOS ICs samples](/img/mycpu/components/cmos_min.png){:width="400px"}

### Voltage Regulators
A 7805 voltage regulator is used in the myCPU design to provide supply power to modules, is located on the BUS main board.
{: style="text-align: justify"}

With the 7805 is mandatory the use of a heatsink because of the heat generated when it is working. The 7805 generate a lot of heat. A good dissipation is needed. The maximum height of the heatsink is up to 10mm because of the separation between the BUS main board and the module board. For heatsinks, I recommended a size of 19x10x10 which is very common for TO-220 package.
{: style="text-align: justify"}

A TO-220 or plastic encapsulated TO-220F could be used. I recommended use the isolated TO-220F to avoid the need to use a silicon heat transfer pad.
{: style="text-align: justify"}

{:.center}
![7805 and heatsinks samples](/img/mycpu/components/voltage_regulators_min.png){:width="500px"}

### Capacitors
Ceramic capacitors are used mostly for decoupling. Preferably try to use tantalum capacitors for its better electrically behaviour. The most common use is as decoupling capacitors for the TTL ICs, which is mandatory when use TTL and recommended by the manufacturer. 10nF and 100nF are the most common values, especially the last one for decoupling. Other values are used mainly on the Clock module to avoid noise and signal ripple.
{: style="text-align: justify"}

Electrolytic capacitors are used mainly for power supply filtering purposes. You can find one 10µF capacitor on each module and a 0.47 µF or 220 µF, depending of your preferences, in each voltage regulator on the BUS module. Feel free to change these values if you consider other values better.
{: style="text-align: justify"}

Other electrolytic capacitors are used to setup 555 timers in the Clock and Display modules.
{: style="text-align: justify"}

### Switches and Buttons
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
An alternative to LED displays is the Decimal Display module, this module is based on a 4 digits 7 segments display and a decoder to transform a binary to decimal conversion to 7 segments display codes.
{: style="text-align: justify"}

The display component used in the myCPU design is a common cathode 4 digits 7 segments display of 0.36 inch.
{: style="text-align: justify"}

{:.center}
![4 Digits 7 Segments sample](/img/mycpu/components/4digits_7segments_min.png){:width="500px"}

### Power Jack
A common horizontal 3 pin 2.1 mm PCB mount power jack is used to connect the power source.
{: style="text-align: justify"}

{:.center}
![Power jack connector sample](/img/mycpu/components/power_jack_min.png){:width="500px"}

### Variable, Trimmer Resistors and Potentiometers
This kind of components are used in the clock module and decimal display module.
{: style="text-align: justify"}

**Variable resistors** are used in the decimal display module, are horizontal mount with 3 pin.
{: style="text-align: justify"}

**Potentiometer** is used on the clock module to control the timer speed, is a 3 pin vertical mount type.
{: style="text-align: justify"}

**Trimmer resistor** is used to adjust the duty cycle of 555 timer in Astable mode, is a vertical mount 3 pin type.
{: style="text-align: justify"}

{:.center}
![Potentiometers and Variable resistors sample](/img/mycpu/components/pots_resistors_min.png){:width="400px"}

### IC and Memory sockets
The myCPU design uses a lot of IC sockets. I recommend you use a socket wherever you must place an IC.
{: style="text-align: justify"}

>Never assembly ICs directly on the board because is very easy make a mistake with the orientation of the IC on the board. Using a socket lets you an easy replacement in case of wrong orientation or an IC failure.
{: style="text-align: justify"}

Sizes uses in the myCPU design are:

+	**8** pins for 555 timers
+	**14, 16, 20** for common login ICs
+	**28** pins wider for EEProms of families AT28C64 or AT28C256
+	**24** pins wider for 6116 SRAM modules

A ZIF (lock seat) socket is used for the EEProm programmer.
{: style="text-align: justify"}

{:.center}
![Socket samples](/img/mycpu/components/sockets_min.png){:width="500px"}

### Board pin headers
Straight and right-angled dual row pin headers are used to connect BUS modules in chain and to plug-in modules to the BUS module board.
{: style="text-align: justify"}

>I recommended buy a 2x40 strips and cut later to the right length.
{: style="text-align: justify"}

**Right-angled pin headers** are used to connect BUS modules and create the chained BUS module structure.
{: style="text-align: justify"}

**Vertical pin headers** are used on the individual modules to plug-in to the BUS module board and for direct connectivity between modules.
{: style="text-align: justify"}

The most common sizes are: 2x4, 2x8, 2x12, 2x16 and few other sizes.
{: style="text-align: justify"}

{:.center}
![Pin Header samples](/img/mycpu/components/pin_headers_min.png){:width="500px"}

### Board female sockets
Used to let connect main BUS modules and build the main BUS module chain structure and let the BUS main board to be plugged by the modules.
{: style="text-align: justify"}

3 common sizes are used: 2x8, 2x16 for the module plug connectors and 2x12 for the Output connector.
{: style="text-align: justify"}

>The 2x16 size could be difficult to find in Chinese stores, so I recommended to buy the 2x20 size and remove the last 8 pins from the right side as you can see on the picture.
{: style="text-align: justify"}

{:.center}
![Socket Header samples](/img/mycpu/components/socket_headers_min.png){:width="500px"}

### IDC female sockets and flat wire
Used to direct connection between modules and when you build a horizontal layout to connect left and right bus modules chains.
{: style="text-align: justify"}

{:.center}
![IDC connector samples](/img/mycpu/components/IDC_connectors_min.png){:width="400px"}

You must build custom length IDC connector wires, to get a clean module interconnection. So, you must buy IDC connector and flat wire separately. Also a IDC connector crimp tool would be needed for easily fixed the wire to the connector. See [The Tools](/pages/en/mycpu/tools) page for a better reference.
{: style="text-align: justify"}

#### Custom IDC connectors
For the myCPU design you`ll need to build 6 custom IDC wire connectors of different sizes:
{: style="text-align: justify"}

1.	**MAR to SRAM module:**  2x4 and 14 mm
2.	**Instruction Register to Instruction Decoder:** 2x4 and 12 mm
3.	**Sequencer to Instruction decoder:** 2x4 and 6.6 mm
4.	**Instruction decoder to CSM:** 2x12 and 4.6 mm
5.	**Accumulator to ALU:** 2x4 and 5 mm 
6.	**Register B to ALU:** 2x4 and 5 mm


{:.center}
![IDC custom samples](/img/mycpu/components/IDC_connectors_built_min.png){:width="600px"}






---
title: "myCPU: Introduction"
subtitle: A detailed introduction to the myCPU design
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---
Welcome to the introductory page of the myCPU project.

The myCPU is an 8-bit TTL CPU design that is fully modular and built using only discrete logic with common integrated circuits, mostly TTL. It features microinstruction level debugging support and is designed on printed circuit boards (PCBs).
{: style="text-align: justify"}

The feature of microinstruction level debugging allows you to observe the execution of individual microinstructions and step through each one while viewing the state of all logic devices. This provides insight into the execution of the instruction in real-time
{: style="text-align: justify"}

### A development and learning Platform
The myCPU is designed as a learning platform to provide an educational experience in the workings of a CPU, including the logic elements involved in its basic architecture and how various digital logic devices interact in a synchronized way.
{: style="text-align: justify"}

The myCPU, with its modular design and hardware-level accessibility, also serves as a development platform. With the ability to directly access the relationship between hardware and software, users have the opportunity to design their own modules and create their own instruction sets for program writing. This is made possible through the Instruction Decoder, a programmable EEProm-based decoder that can be configured with custom microinstructions to define a unique instruction set.
{: style="text-align: justify"}

The myCPU architecture, including its modular design and the choice of components and their distribution, was created with the goal of providing a clear understanding of a CPU system and its workings to people of all levels, including beginners. The components can also be easily purchased from a variety of sources, including non-official online retailers and official stores.
{: style="text-align: justify"}


>You can see a more extensive explanation about the components in the dedicated page [The Components](/pages/en/mycpu/components).

As a learning platform, the myCPU design may not be the most technically advanced approach for experienced engineers or advanced electronic hobbyists. While the design could potentially be improved for better performance or to address electronic issues, this was not a primary objective in its creation.
{: style="text-align: justify"}

The next list shows some of the topics you can learn with this project:

+	**Understanding the electronic relationship between software and hardware**
+	**Understanding a basic CPU architecture, blocks, and logic devices involved**
+	**Learn how a CPU execute an instruction and a whole program**
+	**Learn how to implement a CPU instruction set and design new instructions**
+	**Learn what a microinstruction is and how microinstructions are decoded**
+	**Understanding the timings of a CPU, and the cycle of an instruction**
+	And much more.

In this introduction, I will discuss some aspects of the myCPU that may seem obvious to more experienced individuals. However, as a learning platform, it is valuable to review these elements to gain a deeper understanding of the design from a perspective similar to that of real CPUs, rather than simply viewing it as an exercise in electronic assembly.
{: style="text-align: justify"}

The extensive documentation provided may appear redundant or over-detailed to experienced individuals, but it is valuable for beginners or those with limited knowledge of digital electronics.
{: style="text-align: justify"}

### Open Architecture and modular design

The myCPU was designed with an open architecture concept in mind, focusing on modularity and ease of customization. This allows for scalability in size and complexity through the addition of additional modules or replacement of the provided ones with more advanced ones.
{: style="text-align: justify"}

This design is made possible by the use of chained BUS module boards. The boards in the chain connect the data and control buses and share them with the two modules plugged into the left and right. Each BUS module supplies power to the connected modules through its own voltage regulator. As a result, you can increase the capabilities of your myCPU by adding more BUS module boards. However, due to the limitations of the first release of myCPU, a chain of 8 BUS module boards or two chains of 4 BUS module boards (in the case of a horizontal layout) may be sufficient.
{: style="text-align: justify"}

The modular and open architecture of the myCPU allows you to customize its functionality and behavior by designing your own modules and module boards. When designing custom modules, the only consideration to keep in mind is to properly place the control and data bus connectors within the mechanical dimension specifications of the BUS module board design. 
You can check the mechanical dimensions in the technical documentation of the myCPU avalaible at the [Downloads](/pages/en/mycpu/downloads) page.
{: style="text-align: justify"}

There are avalaible two templates for Circuitmaker in Altium 365 [Altium 365](https://365.altium.com/){: target="_blank"} for custom Left and Right modules and publish them shared. You can find the links in the [Modules introductory page](/pages/en/mycpu/modules) page.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/templates/cmaker_module_left_template.png" alt="Left template" title="View of left template" width="500px">
    <figcaption>View of left template</figcaption>
</figure>
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/templates/cmaker_module_right_template.png" alt="Right template" title="View of right template" width="500px">
    <figcaption>View of right template</figcaption>
</figure>

Custom  modules, also can be designed using the protoboards provided in the kit, which was designed to be fully compatible with the BUS module board and will be provided in both side versions. See the section about [Protoboards](/pages/en/mycpu/extra_modules/protoboard).
{: style="text-align: justify"}

Moreover, the modular design allows you to customize the layout of your myCPU by selecting your desired module distribution. You can create two different types of layouts using either one chain of BUS module boards for a vertical layout or two chains connected by the myCPU layout connector for a more landscape layout. However, not all module distributions may be possible due to the physical connections between certain modules that form a block. The position of a module will also depend on whether it has versions for both the left and right sides. Regardless, you will find that the system is highly flexible.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/myCPU_both_layout.png" alt="myCPU Layout Samples" title="View of myCPU layouts" width="1024px">
    <figcaption>View of modular layout</figcaption>
</figure>


### Hardware architecture

The myCPU physical architecture consists of 3 hardware layers, with an additional optional layer when using module expansion boards:

1.	**BUS layer** (main board layer providing power supply)
2.	**Module layer** (modules)
3.  **Module Expansion layer** (optional expansion layer)
4.	**Auxiliary layer** (output display or tool modules)

The concept behind this hardware architecture is to separate the main BUS lines and power supply from the modules using a **BUS layer**. This allows the buses to be shared among the module boards through a base chain of BUS module boards. The logic devices forming the CPU are implemented as separate modules on a **module layer** and connected to the buses through the BUS layer. The output display functionality is also isolated from the modules through an **auxiliary layer**.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/mycpu_hard_layers_crop_min.png" alt="myCPU hardware layers" title="myCPU hardware layers" width="80%">
    <figcaption>myCPU 3D view sample of hardware layers</figcaption>
</figure>

>This enables you to upgrade the features of the myCPU by replacing existing modules with new ones without altering the existing BUS module base structure.
{: style="text-align: justify"}

The **Module layer** provides the ability to independently design logic devices and connect them to the buses through the BUS layer. It also allows for the creation of complex logic devices by breaking them down into smaller modular components, and establishing connections between these modules through direct flat wires and IDC connectors.
{: style="text-align: justify"}

The **Auxiliary layer** gives you the ability to design your own display or output modules. The myCPU kit includes three display modules: a 4-digit decimal number display, an 8-bit LED binary display using 3mm LEDs, and an 8/16-bit binary display using LED bars for a clearer representation of a digital value.
{: style="text-align: justify"}

The optional **Module Expansion layer** is used to design modules that due to their complexity and components density cannot fit into a single module board. You can see more information about expansion boards in the section: \fullref{sec:Expansion_boards}.
{: style="text-align: justify"}

#### Chained BUS module board design
The BUS module board was designed to connect multiple BUS module boards together to form a base **chained structure**. This is achieved by using two female connectors at the top and two male connectors at the bottom of the board, which support the myCPU layout composed by the modules.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/bus/bus_power_module_assembled_min.png" alt="myCPU BUS module board" title="myCPU BUS module board" width="80%">
    <figcaption>myCPU BUS module board view</figcaption>
</figure>

The data and control buses, as well as the 9V power source, are connected from one BUS module board to the next board in the chain through the use of the top and bottom connectors. The buses are shared with the modules through two connectors located on both sides of the BUS module board. For a more detailed explanation of the buses, see the section: [The Buses](#the-buses).
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/myCPU_vertical_chain_partial_min.png" alt="myCPU BUS module partial chain" title="myCPU BUS module partial chain" width="300px">
    <figcaption>myCPU Partial BUS module chain structure with mounting separators</figcaption>
</figure>

Each Bus module board has its own +5V power supply using a 7805 voltage regulator, providing power to the two modules connected to the board. The power source is supplied to the Bus module boards through the chain connectors, and the power is supplied to the modules through the control bus connector.
This approach allows for the use of a common 9V power source to provide a stable +5V power supply to the pair of modules connected to the Bus module board, without any voltage drop or electrical issues. The top Bus module board in the system must have the power source connector and power switch, while the rest of the boards in the chain can be left without them. You can find a full description of the BUS module in the chapter: [The Buses](/pages/en/mycpu/modules/bus).
{: style="text-align: justify"}

This design, which is based on providing an independent power supply for each pair of modules, makes it possible to increase the capabilities of the myCPU by adding more Bus module boards to the chain. This helps to avoid electrical issues related to the power supply needs of the TTL ICs that could arise from the size of the myCPU layout. The design supports the addition of additional modules and more complex modules at double board size.
{: style="text-align: justify"}

### Functional architecture
The functional architecture describes the myCPU logic modules by their functionality, their response to specific control signal and the size of the data exchange between each module with the data bus. As well as the connections between modules belonging to a functional block. 
{: style="text-align: justify"}

>The myCPU design is based on 16 functional modules distributed over 15 physical modules.
{: style="text-align: justify"}

You can download all myCPU diagrams from the [Diagrams](/pages/en/mycpu/downloads/diagrams) download page.
{: style="text-align: justify"}

Figure below shows a diagram with a precise detail of the functional architecture.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_modules_draw.png" alt="myCPU modules diagram" title="myCPU modules diagram" width="80%">
    <figcaption>myCPU functional modules diagram</figcaption>
</figure>

A printable PDF version of the diagram: [**myCPU Modules Diagram**](/downloads/diagrams/myCPU_modules_draw.pdf){: target="_blank"}

One of the most interesting features of the myCPU design, from a learning perspective, is that almost every logic element of the functional architecture corresponds to a physical module, and each module can be swapped out for new modules or custom modules with different characteristics, different digital functionality or simply other type of ICs.
{: style="text-align: justify"}

#### Functional blocks
The myCPU design is based on 7 functional blocks, plus one Auxiliary block including modules to provide support or connectivity. Each block could be composed by one or more functional modules and could be implemented using one or more physical modules.
{: style="text-align: justify"}

1. **Auxiliary block**
    + BUS manager
    + Displays
2.	**Core block**
    + BUS module
    + Power Supply
3.	**Memory block**
    + MAR (Memory Address Register)
    + SRAM
4.	**ALU block** 
    + Accumulator Register A
    + ALU
    + Operand Resigter B
5.	**Instruction Processor block** 
    + Sequencer
    + Flags Register
    + Instruction Register 
    + Instruction Decoder
    + CSM
6.	**I/O block**
    + Output Register
    + Input Register (not in this release)
7.	**Execution Control block**
    + Program Counter
    + Clock
8.	**Storage block**
    + Registers ABC
    + Stack Pointer (next release)


Printable PDF version of the diagram: [**myCPU functional blocks Diagram**](/downloads/diagrams/myCPU_functional_blocks_draw.pdf){: target="_blank"}
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_functional_blocks_draw.png" alt="myCPU functional blocks diagram" title="myCPU functional blocks diagram" width="90%">
    <figcaption>myCPU functional blocks diagram</figcaption>
</figure>

### Modular architecture
The myCPU was designed with modularity in mind, allowing for the physical decoupling of functional logic into individual design modules based on specific logical functionality. This enables builders to create custom modules, whether they are simple or complex, and to even customize functional blocks of modules by combining their own custom modules with those provided in the myCPU kit.
{: style="text-align: justify"}

This feature is very interesting, because you can redesign some of the provided modules with your more advanced or improved version of a module while leave the others without any changes, and your myCPU should works properly. A redesign could be entirely, or just change one IC by another type of IC, for example changing the 74LS173 IC of the Register 8 bit module by the 74LS273 IC.
{: style="text-align: justify"}

Modules have left-side or right-side compatibility, which limits their available positions on the module board. Right-side modules cannot be plugged into the left side and vice versa. As of now, not all modules have been designed for both-side compatibility, with only the general-purpose register ABC board having versions for both sides.
{: style="text-align: justify"}

Thanks to the modular architecture, you can build a highly customized myCPU layout with modules distributed according to your preferences.
{: style="text-align: justify"}

>The myCPU design support customizable distributions of modules over the myCPU layout

#### Module Layouts
According to the BUS module design, and thanks to its modular architecture, you can reorganize the positions of the myCPU modules to configure the myCPU layout. You will have the ability to choose from different physical layouts when plugging in the modules. This feature enables you to customize the layout of your myCPU to suit your preferences. In my case, I prefer to place the clock module at the bottom of the layout, the BUS manager module at the top, and the memory block composed of the MAR and SRAM modules at the bottom as well, to make it easier to access the test switches.
{: style="text-align: justify"}

The myCPU design has certain layout limitations related to modules that are part of a functional block and are interconnected, or the compatible side version of the module. Modules that are part of a functional block may need to be placed together due to the wiring between them.
{: style="text-align: justify"}

In addition to customizing the distribution of the modules over the myCPU layout, you can choose the orientation of the layout: vertical or horizontal. You can use one BUS module chain for the vertical layout or two BUS module chains for the horizontal layout, the latter should have the chains connected by the Layout Connector. You can See more info about it in the section: \fullref{sec:Layout_connector}.
{: style="text-align: justify"}

>At the beginning of the [Open Architecture](#open-architecture-and-modular-design) section you could see two images of real layouts. 

And below you will find some examples of layouts according to the block modules and module side version restrictions:
{: style="text-align: justify"}

![myCPU Layout]({{ site.baseurl }}/img/mycpu/diagrams/mycpu_module_v1.png){:width="200px"}&nbsp;&nbsp;&nbsp;&nbsp;
![myCPU Layout]({{ site.baseurl }}/img/mycpu/diagrams/mycpu_module_v2.png){:width="200px"}&nbsp;&nbsp;&nbsp;&nbsp;
![myCPU Layout]({{ site.baseurl }}/img/mycpu/diagrams/mycpu_module_h1.png){:width="400px"}

#### Functional and physical Modules
The myCPU architecture design include 16 functional modules in the first release, implemented on 15 physical module boards because the sequencer and the Flags register were designed on the same physical module board. Below you can find a list with all module boards provided with the kit. 
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_physical_modules.png" alt="myCPU Physical modules" title="myCPU Physical modules" width="800">
</figure>

>Navigate to [Introduction page of modules](/pages/en/mycpu/modules) for more information related to the myCPU modules and the module design in the open architecture.
{: style="text-align: justify"}

#### Display Modules
The myCPU design include, in the first release, 3 display modules: two of them are binary displays and the other is a binary to decimal display/decoder as you can see in the next table: 
{: style="text-align: justify"}

1. **Binary to decimal display module (4 digits)**
2. **Binary LED display module 8 bits**
3. **Binary LEDBar display module 16 bits**

>You can see a better description of each module on its specific pages: 
[Binary to Decimal display 4 Digits](/pages/en/mycpu/modules/decimal_display), 
[8-bit LED binary display](/pages/en/mycpu/modules/display_led) and
[16-bit LED binary display](/pages/en/mycpu/modules/display_led16)

#### Additional tools and extra boards
The myCPU kit include one additional module and two extra boards: 

1. **EEProm programmer tool for the AT28C64 EEProm memory**
2. **Protoboard for your custom module prototypes**
3. **Layout Connector board**

The Layout Connector board allows to connect the chains of the landscape layout. 
{: style="text-align: justify"}

The protoboard will be provided with version for both sides, left anb right, in the myCPU Kit.
{: style="text-align: justify"}

>You can see a better description of each module on its specific pages: 
>[EEProm programmer module](/pages/en/mycpu/extra_modules/eeprom_programmer), 
>[Protoboard](/pages/en/mycpu/extra_modules/protoboard) and
>[Layout Connector](/pages/en/mycpu/extra_modules/bus_layout_connector)


### Features of myCPU
Below is a brief list of myCPU digital features. Some of these features are improvements over the Ben's Eater breadboard computer. It is highly recommended to understand the meaning of these features in relation to the design of myCPU. In the following sections, I will briefly explain what each of these features means.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_features.png" alt="myCPU Features" title="myCPU Features" width="800">
</figure>

<!--
+	**16-bit data BUS**
+	**32-lines control BUS, including power supply connections, status flags, clock and reset signals**
+	**Microinstruction length up to 22 direct control signals**
+	**Instruction cycle from 5 up to 8 cycles**
+	**CISC instruction set type approach**
+	**Von Neumann BUS architecture approach**
+	**Two state flags**
+	**Single clock cycle debugging support, including HIGH and LOW edges**
+	**BUS test switches**
+	**Control Signal test switches**
+	**Microprogrammed instruction decodes**
+	**Clock speed from 5-10 Hz to 3 kHz**
+	**+- 127 programmable integer display mode by a control signal**
-->
#### The Buses
The myCPU uses only two buses to facilitate data sharing and connectivity between modules and functional blocks: the **Control Bus** and the **Data Bus,** following the **Von Neumann Bus Architecture**, where data and memory addresses are shared on the same bus, the Data Bus. Despite its basic design, it is important for students and learners to take note of this aspect of the myCPU design. Something like a dedicated **Address Bus **is only present in the connection between the MAR and SRAM modules.
{: style="text-align: justify"}

The Data Bus supports data lengths up to 16 bits, which is sufficient for future releases of the myCPU. With 16 bits, we can address up to 64Kb, which satisfies the requirements of a common CPU like myCPU, and more. Due to the 8-bit nature of the myCPU, will be enough to use only 8 bits for data exchange. However, this may result in a performance reduction due to the need of multiple fetch cycles to manage 16 bits data. Managing 16 bits data using 8 bits data transfer requires two clock cycles to each movement between registers and memory.
{: style="text-align: justify"}

All of the myCPU control signals are transmitted through the Control Bus. The Control Bus has a capacity of 32 lines, via a 32-pin connector, although not all of these lines are used for control signals. The voltage regulators located in each bus module utilize the GND and +5v pins of the Control Bus to provide power to the modules. The clock and reset signals, as well as the status flags signals, also travel through the Control Bus.
{: style="text-align: justify"}

The lines included on the control BUS are distributed as indicated in the list below:
{: style="text-align: justify"}

The lines included on the control BUS are distributed as indicated below:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_control_bus_lines.png" alt="myCPU Control Bus Lines" title="myCPU Control Bus Lines" width="700">
</figure>

<!--
+	**Up to 22 control signals**
+	**2 clock signals:** CLK, /CLK
+	**4 flag signals:** FV, FZ, FN, FC, only the first two of them are used in this release
+	**1 HLT signal:** HLT
+   **2 reset signals** RST, /RST
+	**Power Supply lines:** +5v and GND
-->

#### The Control Signals of myCPU
The myCPU support up to 23 control signals driving the logic devices of myCPU. The 23 control signals are managed directly by the Control Signals Manager (**CSM**), which sets the appropriate digital state to be sent to each logical device in the myCPU.
{: style="text-align: justify"}

Control signals are described deeper at the **[CSM module page](/pages/en/mycpu/modules/csm)**.
{: style="text-align: justify"}

Knowing the default values of each control signal is essential for understanding the behavior of the modules. Control signals are the truly key in the interaction between **the hardware (logic devices)** and the **software (instructions)**. Instructions are composed by microinstructions, and those microinstructions are binary words composed by control signals that act directly on the electronics of the modules.
{: style="text-align: justify"}

Designing your own custom modules also requires a deep understanding of the control signals, their default values and the actions they produce on logic devices.
{: style="text-align: justify"}

The below table 2.6 shows the full list of the myCPU control signals.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_control_signals.png" alt="myCPU Control Signals" title="myCPU Control Signals" width="800">
</figure>

<!--
1.	**CLK, /CLK**: clock signals
2.	**RST, /RST**: reset signals, myCPU need both signals High and Low. 
3.	**HLT**: Pause signal, used by the clock module to block the clock signal.
4.	**UN**: Signed/Unsigned control of the view mode of 4 digits decimal display.
5.	**AI, AO**: Accumulator register load and output.
6.	**BI, BO**: Operand register load and output.
7.	**CI, CO**: General purpose register C load and output.
8.	**II, IO**: Instruction register load and output.
9.	**FI**: Flags register load.
10.	**MI**: MAR (Memory address register) register load.
11.	**RI, RO**: SRAM load and output.
12.	**PE**: Program counter increment signal.
13.	**PI, PO**: Program counter load and output.
14.	**SI, SO**: Stack pointer control signals or to other purposes.
15.	**OI**: Output register load.
16.	**EO**: ALU Output.
17.	**SU**: ALU Subtract mode enable.
18.	**FC, FV, FN, FZ**: Flags. Carry, Overflow, Negative and Zero flags.
-->

#### The Instruction Cycle
The myCPU instruction execution is based on unique Instruction cycle, composed by a Fetch cycle and an Execution cycle. The instruction cycle could have a length from 5 up to 8 states. Each state or step involve one clock cycle and executes only one microinstruction.
{: style="text-align: justify"}

Next image shows an example of the instruction cycle for the ADD instruction:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_instruction_cycle_flow.png" alt="Instruction cycle example" title="Example of ADD Instruction cycle" width="850">
    <figcaption>ADD Instruction cycle sample diagram</figcaption>
</figure>

>The myCPU support a microinstruction length up to 24 bits, involving 22 control signals.
{: style="text-align: justify"}

More advanced and modern CPUs, support more than one instruction cycle per instruction and variable instruction cycle length with dozens of states or steps. The myCPU is based, in its first release, on a fixed length instruction cycle, so an instruction could have an execution cycle with empty states, and it means wasted timings. I’ve planned to implement a variable length instruction cycle, in the next release of the project, by providing an improved set of modules for the instruction processor block.
{: style="text-align: justify"}

Because the instruction decoder uses the current state number to decode the corresponding microinstruction for an instruction, the increment of the possible number of states affects to the complexity of the instruction decode process. So, incrementing the number of the states and implementing a variable instruction cycle length is not an simple upgrade but I think it’s mandatory to approach to a more real CPU and is planned for the next version.
{: style="text-align: justify"}

Due to the microinstruction based nature of the myCPU, the instruction architecture of myCPU could be described as **CISC (Complex Instruction Set Computer)** instead of a **RISC (Reduced Instruction Set Computer)**. Each instruction could consumes from 1 to 8 execution state cycles, and probably, it will be upgraded up to 16 state cycles in next release.
{: style="text-align: justify"}

##### The Flags
The myCPU design include up to **4 status flags**, but only two of them are used. Mainly for the limitations on the ALU, which is based on simple adders. The first release includes only: a flag for “**Overflow**”, which correspond with the last carry bit of the adders, and a flag for “**Zero**” which is calculated by a set of logic gates.
{: style="text-align: justify"}

The corresponding control signals are listed below:

1.	**FZ: Zero flag**
2.	**FV: Overflow flag**


##### Signed Integer display support
The myCPU support a signed mode of execution, its affects basically only to the mode on how the decimal number display shows numbers. Not affects to the execution itself. There’s a control signal “UN” which tell displays in which mode must display numbers.
{: style="text-align: justify"}

>This mode has not effect on how ALU perform calculations, only the mode on how numbers are displayed. 
{: style="text-align: justify"}

When **UN** control signal is low, decimal displays show numbers unsigned from **0** to **255**, and when **UN** control signal is high, decimal displays show numbers in two’s complement form in a range from **-128** to **+127** including sign symbol. This behavior was added in this way to keep the same functionality from the Ben Eater’s project and take advantage of his awesome video lectures explaining the **two’s complement arithmetic** and the build of a decimal 4 digits 7 segment display.
{: style="text-align: justify"}

>You should watch: [Two's complement arithmetic](https://www.youtube.com/watch?v=4qH4unVtJkE){:target="_blank"}

##### Testing using the built-in test switches
The myCPU design provide **BUS test switches** located at the BUS Manager module, to setup the BUS current values. And the **Control Signals test switches** located at the CSM module, to setup the microinstruction control signals. Using the CSM switches, you can build a real microinstruction and debug the behavior of your myCPU.
{: style="text-align: justify"}

These test switches will be essentials during the building process of your myCPU, testing modules and logic elements individually, without the need to have assembled the rest of the modules, or to test an entire functional block. Almost all modules or functional blocks could be tested using the test switches except, probably, the instruction decoder and the sequencer which are independents of BUS content and control signals.         
{: style="text-align: justify"}

##### Debugging over each single clock cycle including high and low states
The myCPU Clock module provide a mechanism to run the myCPU at one clock cycle at a time using a push button. Letting you to debug what is happen during each clock cycle.
{: style="text-align: justify"}

The Clock module is based in the 555 timer and is the original design of Ben Eater from his 8-bit breadboard computer, which is an awesome approach to a square wave generator with support to see a clock cycle at a time. In addition, the clock module lets you see what happens during the high and low states of the clock signal. This is very interesting because the myCPU is a synchronized system, where the microinstructions are executed during the low state of the clock signal and the changes of the myCPU status occur during the next high state or the next high edge of the signal.
{: style="text-align: justify"}

>You can see more detailed description about the clock module on its page: [Clock Module](/pages/en/mycpu/modules/clock)

#### Limitations
The limitations of the myCPU design are due two reasons: the first one is to keep a direct reference to the Ben Eater’s breadboard computer project and take advantage of his fantastic video lectures, and the second one is to provide a smooth learning path to beginners, unexperienced electronics hobbyists or students.
{: style="text-align: justify"}

>The myCPU design try to maintain a direct correspondence with the Ben Eater's breadboard compute project and take advantage of his great video lectures. [Ben Eater's site](https://eater.net/){:target="_blank"}

The myCPU is a very limited CPU. As a learning and experimental platform, performance and advanced functionality was not a main objective, so it has very strong limitations which could be improved in the next release myCPU+. The fact to build the myCPU using discrete logic and basic TTL integrated circuits cause several drawbacks in the design, and electrical issues due to the TTL implementation.
{: style="text-align: justify"}

The ALU was designed using just 4-bit adders with the consequent limitation to adding operations and **subtracting using the 2´s complement** approach.
{: style="text-align: justify"}

The SRAM module is based on the 74SL219 which is a very limited SRAM chip of 16 x 4 bits. The limited available memory, to 16 bytes, restrict other features like the length of the instruction set or the posibility to write more complex or large programs because of the limit to 16 instructions. I understand that the SRAM limit is a hard inconvenient but remember that myCPU is a learning platform and you can learn the basics using just 12 to 14 instructions.
{: style="text-align: justify"}

Due to the limitation of SRAM, the memory address register (MAR) has a limit to 4-bit address. Does not make sense make it bigger.
{: style="text-align: justify"}

There’s no input ports built-in module and no dedicated control signals for inputs in this release. Although you can design your own 8-bit input register and dedicate, the control signals from other module like the Register C, to the input register. Later you can add to your instruction set a specific instruction to load from the input register into ALU registers. An input register is planned to be included with the next release myCPU+.
{: style="text-align: justify"}

>Challenge to all builders of myCPU, design you own 8-bit input register using a DIP switch for input data, handle the logic device with the control signals CI,CO, add a new instruction LFI (Load From Input into Accumulator) to your instruction set and finally, program your instruction decoder accordingly.
{: style="text-align: justify"}

Some of the limitations, in this release, are listed below:

+	**Basic ALU supporting only add and subtract operations**
+	**SRAM 16 bytes**
+	**Memory Address length 4-bit**
+	**4-bit instruction Opcode, supporting up to 16 instructions**
+	**Fixed instruction cycle length**
+	**No negative flag**
+	**No RST control signal**
+	**No input ports**
+	**Only one output port with 8-bit support**
+	**Manual introduction of programs using switches**

>You must keep in mind that the myCPU is not just a device executing a machine code program, is more like that, myCPU is a platform that let you to show what happens on a digital system, like a CPU, during the execution of a program.
{: style="text-align: justify"}

#### Electronic features of myCPU
The myCPU, because of its PCB based design, include several electronic improvements respect the original breadboard project.
{: style="text-align: justify"}

You can review some of these improvements below:

+	**Power Supply of modules through individual voltage regulators**
+	**Separated displays from the main module through an output connector**
+	**Limited resistors for LEDs**
+	**Pull-down resistors on TTL IC inputs when needed**
+	**Pull-up resistors when needed, or on unused TTL inputs**
+	**Decoupling capacitors on TTL ICs**
+	**4-Layer PCBs**
+	**Independent PWR, GND layers and separated from signal layers**
+	**A filter capacitor in each module**


### The Instruction Processor

The myCPU design in based on a microprogramming instruction decode, it means that the decoding process to convert an instruction into its equivalent set of microinstructions is done by the code programmed in a EEProm memory instead using combinational logic.
{: style="text-align: justify"}

The instruction processor is a logic block responsible of process and execute an instruction and involves several logic elements:
{: style="text-align: justify"}

1.	**Instruction Register**
2.	**Sequencer**
3.	**Flags Register**
4.	**Instruction Decoder**
5.	**CSM (Control Signals Manager)**

#### Microinstruction decoding
In the myCPU design, a CPU native instruction (machine code) is decoded to a set of microinstructions which are a single sequence of bits representing a set of control signals which can change the status of the myCPU logic elements in a synchronized way. 
{: style="text-align: justify"}

Each instruction is composed by **two or more microinstructions**, and each microinstruction is executed during an individual **sequencer clock cycle** or **step**, which is another clock signal but dependent of the main clock signal. In the myCPU design the sequencer clock signal is inverted regard to the main clock signal to avoid issues with the response time of the TTL ICs. 
{: style="text-align: justify"}

The Sequencer determine the microinstruction execution and the main Clock signal determine de myCPU logic status change.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_InstructionProcessor_block.png" alt="Instruction Processor block picture" title="Instruction Processor block" width="400">
    <figcaption>Instruction Processor block</figcaption>
</figure>

The **Instruction Register** holds the current **Opcode** of the instruction, and the address or value of an optional argument if it was defined in the program.
{: style="text-align: justify"}

Another piece in the instruction decode process is the **Flags Register**, which provide the cpu state flags activated on the myCPU to the decoding process. The myCPU has only two flags in this release: **Overflow (FV)** and **Zero (FZ)**
{: style="text-align: justify"}

So, the decoded microinstruction to execute will be determined by:

1.	**Opcode (4 bits)**
2.	**Sequencer step (3 bits)**
3.	**Flags (2 bits)**
4.	**Memory Selection (2 bits)**

The memory selection bits are used to set from which memory unit will be write (during programming) or read (during decoding) each microinstruction byte. In the myCPU design each microinstruction is composed by 3 bytes handled by 3 memory units. Review the Instruction decoder schematic and the programmer code to understand the memory selection when programming the memory.
{: style="text-align: justify"}

These binary values compose an **address of 11 bits**, the address determine the location of the memory where is the microinstruction to execute correponding to a sequencer state. The decoded microinstuction word is passed to the CSM (control signals manager) which send the right control signals to the logic devices of the CPU.
{: style="text-align: justify"}

### myCPU Roadmap
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_roadmap.png" alt="myCPU Roadmap picture" title="myCPU Roadmap" width="1000">
    <figcaption>myCPU Project Roadmap</figcaption>
</figure>

#### Next Modules
The next release of myCPU project, which could be the myCPU+ involved a new set of modules to provide 16 bits data support, 16 bits addressing capabilities which give a more bigger SRAM support , up to 64 Kb, support of an instruction set with a length up to 64 instructions, support of CISC instruction type mode with a sequencer length up to 16 steps, support of variable instruction cycle  length, more state flags, SRAM program loader, more output ports, input ports support, and many more…
{: style="text-align: justify"}

You will find below, a list of planned modules:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_256_feature_changes.png" alt="myCPU 256 Changes" title="myCPU 256 Changes" width="800">
</figure>

1.	**MAR 16 bits**
2.	**Register 8 and 16 bits**
3.	**Program Counter 16 bits**
4.	**SRAM 64K x 8 bits**
5.	**Stack Pointer 8 bits**
6.	**Instruction Cycle up to 16 states and variable length**
7.	**Improved ALU based on 74LS181**
8.	**Up to 8 bits flags register**
9.	**Instruction Register 8 bits**
10.	**CSM with more control signals support**
11.	**Input Register 16 bits with two ports**
12.	**Output Register 16 bits with two ports**
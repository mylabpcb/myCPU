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

<a class="button is-primary is-light" href="{{ site.baseurl }}/downloads/book/mycpu_book_chapter2.pdf" target="_blank">Free myCPU Introduction chapter from the myCPU Book</a>

The myCPU is a fully modular **8-bit TTL/CMOS CPU** designed using only discrete logic elements implemented by the most common integrated circuits from the 74xx family over CMOS or TTL technologies. The myCPU instruction encode/decode is based on the Microprograming technique and the instruction execution flow is based on Microinstructions. The myCPU support debugging at level of an individual microinstruction. It was designed on printed circuit boards (PCBs) and it can built using TTL or CMOS technologies because the design is TTL compatible. 
{: style="text-align: justify"}

The feature of debugging at microinstruction level allows to observe the execution of individual microinstructions and step through each one, viewing the state of all logic components statically. Providing a detailed view of the instruction execution flow in real-time.
{: style="text-align: justify"}

### A development and learning Platform
The myCPU is designed as a learning platform to provide an educational experience in the workings of a CPU, including the logic elements involved in its basic architecture and how various digital logic elements interact in a synchronized way.
{: style="text-align: justify"}

The myCPU, with its modular design and hardware-level accessibility, also serves as a development platform. With the ability to directly access the relationship between hardware and software, users have the opportunity to design their own modules and create their own instruction sets for program writing. This is made possible through the Instruction Decoder, a programmable EEProm-based decoder that can be configured with custom microinstructions to define a unique instruction set.
{: style="text-align: justify"}

The myCPU architecture, including its modular design and the choice of components and their distribution, was created with the goal of providing a clear understanding of a CPU system and its workings to people of all levels, including beginners. The components can also be easily purchased from a variety of sources, including non-official online retailers and official stores.
{: style="text-align: justify"}


>You can see a more extensive explanation about the components in the dedicated page [The Components](/pages/en/mycpu/components).

As a learning platform, the myCPU design may not be the most technically advanced approach for experienced engineers or advanced electronic hobbyists. While the design could potentially be improved for better performance, this was not a primary objective in its develop but the modularity, the open hardware and the accesibility of the design to beginners, students and less experienced people.
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

This design is made possible by the use of a base hardware layer composed by **chained BUS module boards**. The boards in the chain connect the data and control buses each other, and share them with the two modules plugged on both sides of the board. Each BUS module supplies power to the connected modules through its own voltage regulator and the 9V power source are passing along the chain. As a result, the power supply of a big composed circuit like that can be possible successfully without any issues, and you can increase the capabilities of your myCPU by adding more BUS module boards and additional modules. Due to the basic nature of the first release of myCPU, only 8 BUS module boards are needed to built a basic myCPU layout, although up to 10 BUS module boards will be provided in the myCPU kit. Is possible to build a chain of 8 BUS module boards in a vertical layout or 2 chains of 4 BUS module boards in a landscape layout to run the myCPU.
{: style="text-align: justify"}

The modular and open architecture of the myCPU allows you to customize its functionality and behavior by designing your own modules and module boards. When designing custom modules, the only consideration to keep in mind, maintaining the compatibility with the myCPU design, is to properly place the control and data bus connectors according the mechanical dimensions specification of the BUS module board design.

>You can check the mechanical dimensions in the technical documentation of the myCPU available at the [Downloads](/pages/en/mycpu/downloads) page.
{: style="text-align: justify"}

{% comment %}
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
{% endcomment %}

Custom  modules, also can be designed using the protoboards provided in the kit, which was designed to be fully compatible with the BUS module board and will be provided in both side versions. See the section about [Protoboards](/pages/en/mycpu/extra_modules/protoboard).
{: style="text-align: justify"}

Moreover, the modular design allows you to customize the layout of your myCPU by selecting your desired module distribution. You can create two different types of layouts using either one chain of BUS module boards for a vertical layout or two chains connected by the myCPU layout connector for a more landscape layout. However, not all module distributions may be possible due to the physical connections between certain modules that form a block. The position of a module will also depend on whether it has versions for both the left and right sides. Regardless, you will find that the system is highly flexible.
{: style="text-align: justify"}

{% comment %}
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/myCPU_both_layout.png" alt="myCPU Layout Samples" title="View of myCPU layouts" width="1024px">
    <figcaption>View of modular layout</figcaption>
</figure>
{% endcomment %}

### Hardware architecture

The myCPU physical architecture consists of 3 hardware layers, plus an additional optional layer if a module expansion board is used.

1.	**BUS layer** (Main board layer providing power supply)
2.	**Module layer** (Modules)
3.  **Module Expansion layer** (Optional layer)
4.	**Auxiliary layer** (Output display or auxiliary modules)

The concept behind this hardware architecture is to separate the main BUS lines and power supply from the modules using a base **BUS layer**. This allow the buses to be shared among the module boards, through a base chain of BUS module boards. The logic elements forming the CPU are implemented as separate modules on a **Module layer** and connected to the buses through the BUS layer. The output display functionality is also isolated from the modules through an **Auxiliary layer**.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/mycpu_hard_layers_crop_min.png" alt="myCPU hardware layers" title="myCPU hardware layers" width="80%">
    <figcaption>myCPU 3D view sample of hardware layers</figcaption>
</figure>

>This feature enable the upgrade of the features of the myCPU by replacing existing modules with new ones without altering the existing BUS module base structure.
{: style="text-align: justify"}

The **Module layer** enable the possibility to design logic devices in a independent way and connect them to the buses through the BUS layer. Additionally allow the development of complex logic devices and segmenting them into smaller modular components such modules, and establishing connections between these modules using direct flat wires and IDC connectors.
{: style="text-align: justify"}

The **Auxiliary layer** enable the possibility to design your own display or output modules because of the isolation of the device, handling the output, from the module itself. The myCPU kit includes three display modules: a 4-digit Hex or Decimal number display, an 8-bit LED binary display using 3mm LEDs, and an 8/16-bit binary display using LED bars for a clearer representation of a digital value.
{: style="text-align: justify"}

The optional **Module Expansion layer** is used to design modules that due to their complexity and components density cannot fit into a single module board and you prefer have a compact module instead a wider one.
{: style="text-align: justify"}

#### Chained BUS module board design
The BUS module board was designed to connect multiple BUS module boards together to form a **chained structure**, which support the myCPU layout formed by the modules. This is achieved by using two female connectors at the top and two male connectors at the bottom of the board connecting BUS module boards between them.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/bus/bus_module_assembled_min.png" alt="myCPU BUS module board" title="myCPU BUS module board" width="80%">
    <figcaption>myCPU BUS module board view</figcaption>
</figure>

The myCPU supports different types of architectural layouts thanks to its modular nature. The most common are: **Vertical** and **Landscape** layouts but other layouts would be possible; In a landscape layout, 2 chains of BUS module boards are connected using the **Layout Connector** at the top to share the buses between both chains and the **Layout Terminator** at the bottom. In a vertical layout only a **Single Layout Connector** at the top is needed to provide the power source to the layout and IDC empty connectors such as terminators at the bottom to a clean isolation.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/mycpu_vertical_layout_sample_min.png" alt="myCPU Vertical layout diagram" title="myCPU Vertical layout diagram" width="40%">
    <figcaption>myCPU Vertical layout diagram</figcaption>
</figure>

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/mycpu_landscape_layout_sample_min.png" alt="myCPU Landscape layout diagram" title="myCPU Landscape layout diagram" width="80%">
    <figcaption>myCPU Landscape layout diagram</figcaption>
</figure>

The data and control buses, as well as the 9V power source, are propagated from one BUS module board to the next BUS module board in the chain using the top and bottom connectors of the board. And the buses are shared with the modules through a connectors pair located on both sides (left and right) of the BUS module board as you can see in the picture. For a more detailed explanation of the buses, see the section: [The Buses](#the-buses).
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/myCPU_vertical_chain_partial_min.png" alt="myCPU BUS module partial chain" title="myCPU BUS module partial chain" width="300px">
    <figcaption>myCPU Partial BUS module chain structure with mounting separators</figcaption>
</figure>

Each Bus module board has its own +5V power supply using a 7805 voltage regulator, supplying power to the two modules plugged in to the board. The power source is supplied to the Bus module regulators through the chain connectors, and the power is supplied to the modules through the control bus connector.

This approach enable the use of a common 9V power source to provide a stable +5V power supply to the pair of modules plugged in to each Bus module board, without any voltage drop or electrical issues. The Layout Connector module board has the power source connector, a power switch and filter capacitors providing a clean +9v power supply to the BUS modules. You can find a full description of the BUS module in the related page: [The BUS Module](/pages/en/mycpu/modules/bus).
{: style="text-align: justify"}

This design, which is based on providing an independent power supply for each pair of modules, makes it possible to increase the capabilities of the myCPU by adding more Bus module boards to the chain. This helps to avoid electrical issues related to the power supply needs of the ICs in a TTL compatibility power supply requirement that could arise from the size of the myCPU layout. This design supports the escalation with additional modules, even more complex modules at double board size.
{: style="text-align: justify"}

### Functional architecture
The functional architecture describes the myCPU logic modules by their functionality, their response to specific control signals and the size of the data exchange between each module with the data bus. In addition describes the connections between modules belonging to a functional block. Figure bellow shows a diagram with a detailed view of the functional architecture.
{: style="text-align: justify"}

>The myCPU design is based on 16 functional modules distributed over 15 physical modules.
{: style="text-align: justify"}

You can download all myCPU diagrams from the [Diagrams](/pages/en/mycpu/downloads/diagrams) download page.
{: style="text-align: justify"}

Figure below shows a diagram with a precise detail of the functional architecture.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/mycpu_modules_min.png" alt="myCPU modules diagram" title="myCPU modules diagram" width="80%">
    <figcaption>myCPU functional modules diagram</figcaption>
</figure>

A printable PDF version of the diagram: [**myCPU Modules Diagram**](/downloads/diagrams/myCPU_modules.pdf){: target="_blank"}

One of the most interesting features of the myCPU design, from a learning perspective, is that almost every logic element of the functional architecture corresponds to a physical module in the kit. Each module can be exchange separately with new modules from an upgrade, or custom modules with different characteristics, different digital functionality or simply exchanging the type or model of some of the ICs.
{: style="text-align: justify"}

#### Functional blocks
In the myCPU design, logic modules sometimes are grouped as "**Functional Blocks"** because they working together to perform a specific task and could be connected by a dedicated connection, as in the case of the **ALU** module with the accumulator A and operand B, the **SRAM** module with the **MAR** module or the **Instruction Decoder** module with Sequencer, Flags Register, Instruction Register and CSM modules. The myCPU is based on **7 functional blocks**, plus one \textbf{Auxiliary block} that includes other modules to provide specific functionality or connectivity. Each block is composed by one or more functional modules and could be implemented using one or more physical modules.

Bellow you can see a list and a diagram of the functional blocks architecture:
{: style="text-align: justify"}

1. **Auxiliary block**
    + BUS manager
    + Displays
2.	**Core block**
    + BUS module
    + Reset IO module
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


Printable PDF version of the diagram: [**myCPU functional blocks Diagram**](/downloads/diagrams/mycpu_functional_blocks.pdf){: target="_blank"}
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/mycpu_functional_blocks.png" alt="myCPU functional blocks diagram" title="myCPU functional blocks diagram" width="90%">
    <figcaption>myCPU functional blocks diagram</figcaption>
</figure>

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/mycpu_alu_block_min.png" alt="myCPU ALU block view" title="myCPU ALU block view" width="20%">
    <figcaption>myCPU ALU block view</figcaption>
</figure>
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/mycpu_instruction_processor_block_min.png" alt="myCPU Instruction Processor block view" title="myCPU Instruction Processor block view" width="40%">
    <figcaption>myCPU Instruction Processor block view</figcaption>
</figure>
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/mycpu_memory_block_min.png" alt="myCPU Memory block view" title="myCPU Memory block view" width="20%">
    <figcaption>myCPU Memory block view</figcaption>
</figure>

### Modular architecture
The myCPU was designed with modularity in mind, allowing decoupling between functional logic. This allows for the design of modules that focus on specific logical functions and can be implemented as standalone physical modules. Modularity lets builders to create their own custom modules, control their complexity, and even personalize functional blocks by blending their own custom modules with those included in the myCPU kit.
{: style="text-align: justify"}

This feature is very interesting, because you can redesign some of the modules included in the kit with your own new or modified version, while leave the others without any changes. An existing module could be redesign entirely, or just change one IC by another model of IC, for example changing the pair of 4-bit D-Type register 74xx173 IC of the Accumulator module by only one 8-bit D-Type register 74xx377 IC.
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

##### Signed display mode support
The myCPU support a signed mode of execution, its affects basically only to the mode on how the decimal number display shows numbers, not to the execution itself. There’s a control signal \textbf{UN} which enable the signed display mode.
{: style="text-align: justify"}

The binary to decimal display shows numbers as unsigned, with a range from **0 to 255**, when the **UN** control signal is LOW. When the **UN** control signal is HIGH, the display shows numbers as signed numbers using 2's complement representation, with a range from **-128 to 127**. This feature is in line with the corresponding feature of the Ben Eater's project.
{: style="text-align: justify"}

>You should watch the Ben Eater's video about: [Two's complement arithmetic](https://www.youtube.com/watch?v=4qH4unVtJkE){:target="_blank"}

#### The Instruction Cycle
The myCPU instruction execution is performed through a single Instruction cycle that consists of a fetch cycle followed by an execution cycle. Due to the simplicity of the instruction set and program limitations, the myCPU execution cycle does not require any additional specialized phases. The length of the Instruction cycle reach to 8 states or steps. Each step of the instruction cycle requires one clock cycle to complete and executes a single microinstruction.
{: style="text-align: justify"}

Next image shows an example of the instruction cycle for the ADD instruction:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_instruction_cycle_flow.png" alt="Instruction cycle example" title="Example of ADD Instruction cycle" width="850">
    <figcaption>ADD Instruction cycle sample diagram</figcaption>
</figure>

>The myCPU support a microinstruction length up to 24 bits, involving 23 control signals and 22 of them shared through the Control BUS.
{: style="text-align: justify"}

MyCPU is a basic design of an early CPU with limited capabilities compared to modern CPUs. Unlike modern CPUs that can perform multiple instruction cycles simultaneously through pipelining, myCPU can only execute one instruction cycle per instruction. The original design of myCPU had a variable instruction cycle length unlike the Ben Eater's breadboard computer, but later versions introduced the ability to reset the sequencer at specific steps and initiate a new instruction cycle. This gave myCPU the capability of the variable length instruction cycle feature.
{: style="text-align: justify"}

Due to the microinstruction based nature of the myCPU, the instruction architecture of myCPU could be described as **RISC** (Reduced Instruction Set Computer) instead of a **CISC** (Complex Instruction Set Computer). Each instruction can consume from 2 (the minimal intruction cycle length) to 8 clock or state cycles, and probably, it could be upgraded up to 16 state cycles in next releases. Remember that in the myCPU design each state cycle is equivalent to a single clock cycle.
{: style="text-align: justify"}

#### The Flags
The myCPU design include up to 4 status flags, but only two of them are used in the first relaese. Mainly for the limitations of the ALU, which is based on simple adders. The first release uses only: The **Carry Out flag FC**, which correspond with the last carry bit of the adders cascade, the **Zero flag FZ** which is calculated using logic gates and the **Negative flag FN** which correspond to the most significant bit of the ALU value or sign bit in 2's complement value representation. The **Overflow flag FV** is not used, in the first release, but is supported by the flags register. 
{: style="text-align: justify"}

>Only ALU related flags are supported in the first release.

The corresponding control signals are listed below:

1.	**FC: Carry Out flag**
2.  **FZ: Zero flag**
3.  **FN: Negative flag**
4.	**FV: Overflow flag** (not used in this release)

Flags are a essencial part of the decoding process for the **Conditional Jump Instructions**. The flags combination define the state of the myCPU after each executed instruction and this state can enable the execution of a conditional jump instruction based on that state. In the myCPU first release, only conditional jump instructions for the state of 3 individual flags: FC, FC and FN, are encoded. 
{: style="text-align: justify"}

####  The Instruction processor
The design of myCPU is based on microprogramming for instruction decoding, meaning that the values resulting from the conversion of an instruction into its equivalent set of microinstructions are stored in an EEProm memory instead of being generated through combinational logic.
{: style="text-align: justify"}

The instruction processor is a logic block responsible of process and execute an instruction and involves several logic elements:
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_instruction_processor.png" alt="myCPU Instrucion Processor table" title="myCPU Instruction processor table" width="800">
</figure>

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_InstructionProcessor_block.png" alt="Instruction Processor block picture" title="Instruction Processor block" width="400">
    <figcaption>Instruction Processor block</figcaption>
</figure>

#### Microprogramming
In the myCPU design a CPU native instruction is decoded into a set of microinstructions, which are a sequence of bits representing the control signals values that can modify the state of the logic devices of the myCPU. Microprogramming is the process to encode the microinstruction equivalent to each step in a instruction cyle to create the corresponding set of microinstructions for every instruction in the instructon set. These microinstructions are then written to an EEPROM memory for later decoding when and instruction is executes.
{: style="text-align: justify"}

Each instruction in the CPU can consist of multiple microinstructions, with each microinstruction executing during a single sequencer clock cycle. The sequencer counter is enabled during the fall state of the clock signal, allowing microinstructions to be executed during this clock state. Some control signals cause immediate changes in the CPU state, while others produce changes during the next rise state of the clock signal. To maintain good synchronization, certain logical actions in the CPU must occur before others, such as outputting data to the data bus before a register can read and store it. This is accomplished by performing these actions in alternate clock signal states, which allows enough time for the integrated circuits to perform their electronic functions.
{: style="text-align: justify"}

The **Sequencer** determine the current instruction step or state of the instruction cycle.
{: style="text-align: justify"}

The **Instruction Register** holds the current **Opcode** of the instruction, which is shared with the Intruction Decoder, and the optional argument for the instruction. The argument can be a literal value or and address point to the memory cell where the values is stored.
{: style="text-align: justify"}

The **Flags Register**, provides the state flags activated on the myCPU to the decoding process. The myCPU could manage up to  four  flags and each correspond to 1 bit in the order: FV,FZ,FN,FC.
{: style="text-align: justify"}

So, the decoded microinstruction to execute will be determined by:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_micro_encoding_parts.png" alt="myCPU Microinstruction encoding parts" title="myCPU Microinstruction encoding parts" width="800">
</figure>

The **Memory Selection** bits determine which memory unit will be used to write (during programming) or read (during decoding) each byte of a microinstruction. In the myCPU design, microinstruction consists of 3 bytes or 24 bits, which are handled by three memory units. To understand the memory selection and the order of the encoding value parts during memory programming, it is necessary to review both the Instruction decoder schematic and the programmer code.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/schematics/myCPU_Decoder_AddrBitOrder.png" alt="Instruction decoder address bit order" title="Instruction decoder address bit order" width="400">
    <figcaption>Instruction Decoder address bit order</figcaption>
</figure>

The binary encoding value is a **13 bits address** that specifies the location of the microinstruction to be executed during a sequence step. This microinstruction word is then passed to the control signals manager, which sends the appropriate signal states to the logic devices of the myCPU. The instruction encoding is covered by 8Kx8 EEProm memories with an address support up to 13 bits (A0-A12).
{: style="text-align: justify"}

#### Testing and Debugging the myCPU
The are two sets of switches to test the electronic behavior of the myCPU:
{: style="text-align: justify"}

The **BUS Manager** module in the myCPU design includes test switches that can be used to set the current values of the data BUS.
{: style="text-align: justify"}

The **Control Signals Manager (CSM)** module also have test switches that enable the activation of individual control signals. By using the CSM switches, it is possible to test individual module actions or configure a real microinstruction by combining multiple switches at a time, to test, statically, the myCPU modules behavior when they are all acting together.       
{: style="text-align: justify"}

>Combining the BUS Manager and CSM switches you can reproduce a true runtime execution condition statically.

##### Microinstruction debugging and testing
The myCPU Clock module enables running the myCPU one clock cycle at a time using a push button, which facilitates debugging and allows examination of each clock cycle during runtime. This module is based on the 555 timer, and is an original design by Ben Eater, who used it in his 8-bit breadboard computer. Furthermore, the clock module enables examination of the high and low states of the clock signal independently. This feature is especially interesting because the myCPU is a synchronized system, in which microinstructions are executed during the low state of the clock signal producing some changes in the myCPU status, while other changes in the myCPU status will occur during the next high state or high edge of the clock signal.
{: style="text-align: justify"}

>You can see more detailed explanation about the clock module in: [Clock Module](/pages/en/mycpu/modules/clock)

#### Limitations of the myCPU
The myCPU design has limitations for two reasons. The first reason is the need to keep aligned to the Ben Eater's breadboard computer project, taking advantage of his fantastic video lectures. The second reason is to create a smooth learning path for beginners, inexperienced electronics hobbyists, and students.
{: style="text-align: justify"}

>The myCPU design try to maintain a direct correspondence with the Ben Eater's breadboard computer project and take advantage of his great video lectures.[Ben Eater's site](https://eater.net/){:target="_blank"}

Although the myCPU is a valuable learning and development platform, it is a very limited CPU with some limitations due to the fact of the myCPU was not designed prioritizing performance or advanced functionality. Some of these limitations will be reduced or removed in the next releases, myCPU256 and myCPU+. Building the myCPU using discrete logic and basic TTL integrated circuits could also cause several drawbacks in the design and electrical issues due to the TTL known issues.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_limitations.png" alt="myCPU Limitations" title="myCPU Limitations" width="800">
</figure>

The **ALU** was designed using just 4-bit adders with the consequent limitation to adding operations and subtracting using the 2´s complement approach. But only the B operand in converted to 2's complement so the sustracting is limited to A + (-B).
{: style="text-align: justify"}

The **SRAM** module is based on the 74219 or the 74189 which is a very limited SRAM chip of 16 x 4 bits. The limited available memory, to 16 bytes, limiting the possibility to write complex or large programs because of the limit to 16 instructions. I understand that the SRAM limit is a hard inconvenient but remember that myCPU is a learning platform and you can explore the basics of a CPU and a programmable computer using just 12 to 14 instructions.
{: style="text-align: justify"}

Due to the limitation of SRAM, **memory address register (MAR)** has a limit to 4-bit address. Does not make sense make it bigger.
{: style="text-align: justify"}

The **Instruction Register** has a limitation to 4 bits for the instruction opcode and this limit the possible max length of the instruction set to 16 instructions.
{: style="text-align: justify"}

In this release, there is **no input register module** and no dedicated control signals for inputs. However, it is possible to design your own 8-bit input register and dedicate one of the control signals from other purposes to the input register. Afterwards, you can add a specific instruction to your instruction set to load data from the input register into the A register. An input register is planned to be included in the next releases, myCPU256 and myCPU+.
{: style="text-align: justify"}

>keep in mind that the myCPU is not just a device executing a machine code program, its more than that, myCPU is a platform letting you to show what happens on a digital system, like a CPU, during the execution of a program.
{: style="text-align: justify"}

#### Electronic improvements of myCPU
The myCPU, because of its PCB based design, include several electronic improvements respect the original breadboard project.
{: style="text-align: justify"}

You can review some of these improvements in the table below:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_electronics.png" alt="myCPU Improvements" title="myCPU Improvements" width="800">
</figure>

#### myCPU Roadmap
The main and final goal of the myCPU is desing a totally capable and functional CPU emulating a 6502 or a Z80 including a reduced basic interpreter and support to 64K of SRAM using the same open and modular platform with only discrete logic. To reach this goal the project will pass through a set of steps to evolve the myCPU since an early stage with the first release of myCPU, following with the myCPU256 and myCPU2K, until the most advanced releases near a small computer the myCPU+ 32/64K.
{: style="text-align: justify"}

Below picture shows, graphically, the roadmap of the myCPU project:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_roadmap.png" alt="myCPU Roadmap picture" title="myCPU Roadmap" width="1000">
    <figcaption>myCPU Project Roadmap</figcaption>
</figure>

##### myCPU 16
The first release of myCPU planned to the summer of 2023. With the limitation to  only 16 bytes of memory that enable to execute very small programs up to 16 bytes length and capable only to support an instruction set up to 16 instructions.
{: style="text-align: justify"}

##### myCPU 256
This improved version of myCPU 16 includes several notable changes. Firstly, an 8 bits Memory Address Register (MAR) capable of addressing up to 256 bytes of SRAM. Secondly, the number of supported instructions has been increased to a total of 32. Additionally, this version will  includes a new CMOS SRAM module up to 2Kx8, although for this release only 256 bytes can be  used due to the MAR limitation. Lastly, an updated Instruction Decoder module, which can support the expanded instruction set size and will be based on the AT28C256 EEprom memory.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_256_features.png" alt="myCPU 256 Features" title="myCPU 256 Features" width="800">
</figure>

##### myCPU 2K
This is a small evolution from de myCPU 256. The only changes regarding the myCPU 256 are: a new 16 bits MAR module capable to addressing up to 2K bytes and more, a program counter up to 16 bits capable to count up to 2K and more, and an improvement EEProm Boot module to support the loading up to 2K bytes program length.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_2K_features.png" alt="myCPU 2K Features" title="myCPU 2K Features" width="800">
</figure>

##### myCPU+ 64K
This a very strong evolution regarding the myCPU releases: 16, 256 or 2K. One of the most radical advance is the change of the microprogramming paradigm, coming from a horizontal and static control signal model to a vertical paradigm with a dynamic control signals model. This model of microprogramming enable handle a large number and more complex logic devices with a reduced set of control signals.
{: style="text-align: justify"}

Other advantages of the myCPU+ is an advanced ALU module based on the 74181 ALU IC, a stack pointer 8-bit module, the support of more deep instruction decoding up to 17 bits which will get a capability to design and manage a 256 instructions set, an instruction cycle length up to 16 steps or a full SRAM module up to 32/64K based on the 62256 family CMOS SRAM ICs.
{: style="text-align: justify"}

A full list of the feature changes of the myCPU+ is shown below:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU+_64K_features.png" alt="myCPU+ 64K Features" title="myCPU+ 64K Features" width="800">
</figure>

#### Future Modules
The next releases of myCPU project, involved a new set of modules to provide 16 bits data support, increasing memory addressing capabilities and add more features and improvements to reach the most capable myCPU+.
{: style="text-align: justify"}

In the table below you can see a list of planned modules:

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/tables/myCPU_future_modules.png" alt="myCPU Planned Modules" title="myCPU Planned Modules" width="800">
</figure>
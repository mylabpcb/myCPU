Welcome to the presentation page of myCPU, a modular 8 bit computer/CPU working at microinstruction level, built over most common logic integrated circuits, mostly TTL, and designed on PCBs.
{: style="text-align: justify"}

### Open Architecture Design

The myCPU was designed as an open architecture, it means that you can recorganized the myCPU layout as you wish and even built your own modules using the way as you want simply following the mechanical rules of the BUS module board.
{: style="text-align: justify"}

You can design your own module boards, the only thing to keep in mind is place the control and data bus connectors according to the mechanical dimension rules of the main BUS module structure. Also you can built your modules using the prototype board provided in the kit, which was designed to be compatible with the BUS module board.
{: style="text-align: justify"}

Navigate to [Modules Introduction page](http://www.mycpuone.com/pages/en/mycpu/modules.html) for more information related to the module design in the open architecture.

### The myCPU architecture

An 8-bit and 22 control signals length. A 24-bit microinstruction length. Content under development.
{: style="text-align: justify"}


![myCPU modules diagram](https://github.com/mylabpcb/myCPU/blob/master/Images/Diagrams/myCPU_modules_draw.png)

![myCPU functional blocks diagram](https://github.com/mylabpcb/myCPU/blob/master/Images/Diagrams/myCPU_functional_blocks_draw.png)

### Features
Digital features of my CPU

+ **16 bit data BUS** (used 8-bit in current version)
+ **32 bit control BUS**
+ Microinstruction length up to 22 control signals
+ Instruction cycle from 5 up to 8 cycles
+ RISC architecture
+ Von Neumann architecture
+ Two state flags
+ Debug at single clock cycle including High and Low edges
+ BUS test switches
+ Control Signal test switches
+ Microprogrammed instruction decode
+ Clock speed from 5-10 Hz to 3 kHz


### Built-In Modules
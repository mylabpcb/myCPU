---
title: "myCPU: Introduction"
subtitle: A detailed introduction to myCPU design
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---
The content is under development.

Welcome to the presentation page of myCPU, a modular 8 bit computer/CPU working at microinstruction level, built over most common logic integrated circuits, mostly TTL, and designed on PCBs.
{: style="text-align: justify"}

### Open Architecture Design

The myCPU was designed as an open architecture, it means that you can recorganized the myCPU layout as you wish and even built your own modules using the way as you want simply following the mechanical rules of the BUS module board.
{: style="text-align: justify"}

You can design your own module boards, the only thing to keep in mind is place the control and data bus connectors according to the mechanical dimension rules of the main BUS module structure. Also you can built your modules using the prototype board provided in the kit, which was designed to be compatible with the BUS module board.
{: style="text-align: justify"}

Navigate to [Modules Introduction page](/pages/en/mycpu/modules) for more information related to the module design in the open architecture.

### The myCPU architecture



An 8-bit and 22 control signals length. A 24-bit microinstruction length. Content under development.
{: style="text-align: justify"}

Printable PDF version of the diagram: [**myCPU Modules Diagram**](/downloads/diagrams/myCPU_modules_draw.pdf){: target="_blank"}
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_modules_draw.png" alt="myCPU modules diagram" title="myCPU modules diagram" width="80%">
    <figcaption>myCPU block modules diagram</figcaption>
</figure>

Printable PDF version of the diagram: [**myCPU functional blocks Diagram**](/downloads/diagrams/myCPU_functional_blocks_draw.pdf){: target="_blank"}
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/diagrams/myCPU_functional_blocks_draw.png" alt="myCPU functional blocks diagram" title="myCPU functional blocks diagram" width="80%">
    <figcaption>myCPU functional blocks diagram</figcaption>
</figure>

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
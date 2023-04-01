---
title: "myCPU: The BUS and Power Supply main board"
subtitle: A chain capable board which provide BUS support and power supply to modules
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---
> The content is under development, the final version will be as soon as possible.

> Only the top board of the chained structure must have the power source connector and on/off switch. Should be the first at the top of the chain. The rest of the boards don't need them, and you can leave their places empty with no electrical issues.
{: style="text-align: justify"}
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/bus/bus_module_assembled_min.png" alt="BUS module assembled view" title="Assembled view of the BUS module" width="500px">
    <figcaption>Assembled view of the BUS module</figcaption>
</figure>

[BUS main module documentation](/downloads/technical/myCPU_BUS_module_full.pdf){:target="_blank"}

Also you can find all documentation files in the downloads page: [myCPU documentation](/pages/en/mycpu/downloads/technical_docs)

### Description
The BUS module is the main part of the myCPU structure. It has three main purposes:
{: style="text-align: justify"}

1. Allows to build a chained physical structure using a unique board design as a main layout board. This main layout structure could be scaled by adding more boards to the chain.


2. Supports the myCPU **Data BUS and the Control BUS**, sharing them with the connected modules.


3. Provide fixed and stabilized **TTL (+5v)** power supply to the connected modules.

The BUS module includes a voltage regulator which provide the power supply to the 2 modules that can be plugged on it. The power source needed to provide to the voltage regulators should be 9V to give enough voltage to regulators to provide the needs of current power to the modules. Some modules, depending on the type could reach up to 60 mA. Decimal 4 digits Displays are the most current consumers up to 115-130 mA because of the 4 digits 7 segment display, so all modules which have a decimal display plugged could reach up to 140-180 mA. Because the most common value of power sources is 9v, I think it is the best choice. It must provide 2 A at least, because the total consumption of the myCPU is around 1 to 1.5A when running at the 5V given by the regulators with all displays plugged in.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/bus/bus_module_clear_front_min.png" alt="PCB front view" title="Front view of the printed board" width="500px">
    <figcaption>Front view of the printed board</figcaption>
</figure>
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/bus/bus_module_clear_back_min.png" alt="PCB back view" title="Back view of the printed board" width="500px">
    <figcaption>Back view of the printed board</figcaption>
</figure>

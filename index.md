---
title: The myCPU Project
subtitle: A TTL 8 bit Computer/CPU working at microinstruction level
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---

# Welcome to the myCPU Project

This project is an entire modular PCB design of a basic TTL 8-bit computer/CPU which can work at a microinstruction level using only the most common logic TTL ICs and following the original [Ben Eater's breadboard 8 bit computer design](https://eater.net/8bit/){:target="_blank"}.
{: style="text-align: justify"}

### The origin of the myCPU project, the Ben Eater's project

I decided to tackle this project because, after discover the Ben Eater's breadboard computer 2 years ago,  I built my own 8-bit breadboard computer. And as beginner, sometimes I felt very frustrate with the difficult of building this highly complex circuit on breadboards.
{: style="text-align: justify"}

Working with this kind of complex project on breadboards was a very hard work, a hell of wirings, a hard fight with leds, TTL IC behaviors, databus issues and with its unstable electrical behavior and performance. But also, it was an unbelievable and grateful learning experience.
{: style="text-align: justify"}

I used cheap breadboards, so the debugging process often became a very frustrating job, checking wirings again and again. It’s a little easier if you use expensive breadboards, but this does not remove the electrical issues which are not related to wiring.
{: style="text-align: justify"}

Although finally it works, it had a poor performance, produce a lot of execution errors due its unstable behavior. Breadboards have no enough space to implement most common electronics practices like pull-down resistors, limiting resistors for  leds, decoupling capacitors or avoid TTL floating inputs, for example.
{: style="text-align: justify"}

So, I decided to redesign the entire project on PCBs to remove all the problems that appeared in the breadboard version, improve some modules, add additional features, implement modularity and Open Architecture, and try to use the most basic design patterns like using two dedicated and isolated layers to PWR and GND tracks.
{: style="text-align: justify"}

I spent a whole year with the planning, designing, buying components, assembling the prototypes, prototypes testing, coding, create the documentation,  the myCPU build,  etc.… Until reach this point of development with a final release "<strong>One</strong>".
{: style="text-align: justify"}

You will find all of the related documentation in the <strong>downloads section</strong> with a lot of additional resources.
{: style="text-align: justify"}

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

This project is an entire modular PCB design of a basic TTL 8-bit computer/CPU which can work at a microinstruction level using only the most common logic TTL ICs. Using as starting point the original project from Ben's Eater: [**Ben Eater's breadboard 8 bit computer design**](https://eater.net/8bit/){:target="_blank"}.
{: style="text-align: justify"}

> You can see the planned roadmap of the myCPU project in the Introduction page: [**myCPU Roadmap**](/pages/en/mycpu/introduction#mycpu-roadmap)

{:.center}
![myCPU Layout]({{ site.baseurl }}/img/mycpu/mycpu_horizontal_layout_2_1024_min.png#center){:width="800px"}

### The origin of the myCPU project, the Ben Eater's project

I decided to tackle this project because, after discover the Ben Eater's breadboard computer 2 years ago,  I built my own 8-bit breadboard computer. And as beginner, sometimes I felt very frustrate with the difficult of building this highly complex circuit on breadboards.
{: style="text-align: justify"}

{:.center}
![8-bit breadboard cpu]({{ site.baseurl }}/img/8_bit_breadboard_computer_min.png){:width="600px"}

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

> You can begin getting a view of the myCPU project on the [Introduction]({{ site.baseurl }}pages/en/mycpu/introduction) page of the project and you will find all of the related documentation in the [Downloads]({{ site.baseurl }}pages/en/mycpu/downloads) section with a lot of additional resources.
> {: style="text-align: justify"}

### The Ben Eater’s project as starting point

Because, the myCPU project is based on the Ben Eater’s project, you should watch the all the videos about his 8-bit breadboard computer project. You will learn a lot of useful foundation knowledge of digital electronics and how early CPUs and microcomputers worked, also you will learn a lot of practice knowledge about working with breadboards, the most common digital devices and how work the most common TTL ICs.
{: style="text-align: justify"}

If you decide to build your on myCPU, I’m strongly recommended to watch his videos related to his 8-bit computer and build, using breadboards, some of the logic devices at the same time you are building your own myCPU. You can learn a lot of practice foundations when working with breadboards. In case you could be interested in build the whole computer on breadboards, I must tell you that it will be a very complex build and it would be very difficult to finish and get it to work if you are beginner.
{: style="text-align: justify"}

You can see the awesome work of Ben Eater at his website and youtube channel:

* [**Ben Eater’s website related his 8 bit Breadboad computer**](https://eater.net/8bit/){:target="_blank"}

* [**Ben Eater’s youtube channel playlist of videos about his 8 bit breadboard computer**EE](https://www.youtube.com/playlist?list=PLowKtXNTBypGqImE405J2565dvjafglHU){:target="_blank"}

> I’m strongly recommended to watch his videos, even if you decide not to build you own myCPU when the kit could be available, because is an amazing learning resource for digital electronics.
> {: style="text-align: justify"}

Ben Eater is a great communicator and teacher, I’ve learned a lot with his videos, which were an unbelievable starting point for me. I have no knowledge about Digital Electronics before. Watching his videos I got a smooth learning experience on practice electronics.
{: style="text-align: justify"}

### Final recommendations

I recommended to visit the download pages and download all the documentation of the project, so you can check the quality of the project and if the project could be interesting and affordable for you. I’ve tried to share everything has been possible.
{: style="text-align: justify"}

I’ve created a youtube channel to share the videos related to the project, I recommended you to subscribe to the channel to get notifications when a new video arrive. I’m not very active in social networks so you can’t be notify from another way.
{: style="text-align: justify"}

* [**The myLabPCB channel**](https://www.youtube.com/channel/UCFzraodZpEGF2GoZWbuyQiw/featured){:target="_blank"}

Also I recommended you to subscribe to the myCPU newsletter and the myLabPCB twitter account to get updates about the status of the project and how to get the full set of printed board to build your own myCPU. The only way to get it is through a crowdfunding campaign and its launch date will be announce through the newsletter and twitter.
{: style="text-align: justify"}

Enjoy!
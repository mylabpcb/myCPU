---
title: The myCPU Project
subtitle: A TTL 8 bit CPU with debug at microinstruction level
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---

# Welcome to the myCPU Project
The myCPU project is a fully modular PCB design of a basic TTL 8-bit CPU with support to debugging at microinstruction level and using only the most common logic TTL ICs.
{: style="text-align: justify"}

The myCPU project is based on the original 8-bit Breadboard Computer project from Ben Eater:

[**Ben Eater's breadboard 8 bit computer project site**](https://eater.net/8bit/){:target="_blank"}.
{: style="text-align: justify"}

And the Malvino's SAP-1 and 2 designs from his book: **Digital Computer Electronics 1993 3rd edition**

{:.center}
![myCPU Layout]({{ site.baseurl }}/img/mycpu/mycpu_horizontal_layout_2_1024_min.png#center){:width="800px"}

### The origin of the myCPU project, the Ben Eater's project

I decided to tackle this project because, after discovering the Ben Eater's breadboard computer 4 years ago.  I built my own 8-bit breadboard computer without any previous knowledge about digital electronics and digital electronics components. As beginner, sometimes I felt very frustrated with the difficult of building a highly complex circuit like that on breadboards.
{: style="text-align: justify"}

Working with this kind of complex project on breadboards was a very hard work, a hell of wirings, a hard fight with TTL IC behaviors (mostly because of the chinese components), with databus issues, and with its unstable electrical behavior and performance. But also, it was an unbelievable and grateful learning experience.
{: style="text-align: justify"}

{:.center}
![8-bit breadboard cpu]({{ site.baseurl }}/img/8_bit_breadboard_computer_min.png){:width="600px"}

In my build of the breadboard computer, I've used cheapest breadboards, and due to that, the debugging process often became in a very frustrating task, checking connections again and again. Could be a little easier if you use more expensive breadboards, but its use doesn't eliminate some electrical issues not related to wiring.
{: style="text-align: justify"}

Although finally, my breadboard computer works, it had a poor performance and produce a lot of execution errors due to its unstable operation. Breadboards have not enough space to implement the most common electronics practices with TTL: like pull-down/up resistors, limiting resistors for leds, decoupling capacitors or avoid TTL floating inputs. Those shortcomings difficult the troubleshooting and make, sometimes, very difficult to see the cause of a malfunction.
{: style="text-align: justify"}

So, I decided to redesign the entire breadboard project on PCBs, to remove all the problems that appeared in the breadboard version: improving some modules, adding additional features, implementing a modular and  open Architecture, and trying to use the most basic PCB design rules like: to use two dedicated and isolated layers to **VCC** and **GND** with wider tracks or enough big pads for an easy soldering.
{: style="text-align: justify"}


I spent 2 years planning, designing, buying components, ordering prototypes, assembling and testing the modules prototypes, building and testing the myCPU layout prototype, coding the instruction set, programming the helper tools, creating the documentation, creating the project site, writing the contents for the website and the myCPU book,  etc... Until I've could reach a point of development with a first final release. The design was not an easy task for me because of the modular nature of the myCPU but it will be very helpful during troubleshooting and testing.
{: style="text-align: justify"}

> I've planned more releases to the future. You can see the planned roadmap [**here**](/pages/en/mycpu/introduction#mycpu-roadmap) in the introduction page of the myCPU
> {: style="text-align: justify"}

I've created a full landing site for the project as well as the project book, both have more or less the same contents. I thought could be helpful have available an online and a printable version of the documentation.
{: style="text-align: justify"}

You will find, online, all of the related documentation to the myCPU project in the [**Downloads Page**](https://mycpu.mylabpcb.com/pages/en/mycpu/downloads/) of the myCPU project site with a lot of additional resources.
{: style="text-align: justify"}

> You can begin getting a started view of the myCPU project in the [Introduction](/pages/en/mycpu/introduction) page of the project.
> {: style="text-align: justify"}

Because, the myCPU project is based on the Ben Eater’s project, you should watch all the videos about his 8-bit breadboard computer project. You will learn useful fundamental knowledge of digital electronics and how early CPUs and microcomputers worked. By watching his videos and building some of the digital devices he shows in his videos, you will get a lot of practical knowledge about working with breadboards, logic gates and the most common logic devices, and how work the most common TTL ICs.
{: style="text-align: justify"}

> I’m strongly recommended to watch his videos, even if you decide not to build you own myCPU when the kit could be available, because is an unvaluable learning resource for digital electronics.
> {: style="text-align: justify"}

In case you could be interested in build the whole computer on breadboards, I must tell you that it will be a very complex build and it would be very difficult to finish and get it works if you are a  beginner.
{: style="text-align: justify"}

You can see the awesome work of Ben Eater at his website and youtube channel:

* [**Ben Eater’s website related his 8 bit Breadboad computer**](https://eater.net/8bit/){:target="_blank"}

* [**Ben Eater’s youtube channel playlist of videos about his 8 bit breadboard computer**](https://www.youtube.com/playlist?list=PLowKtXNTBypGqImE405J2565dvjafglHU){:target="_blank"}

Ben Eater is a great communicator. I’ve learned a lot with his videos, which were an invaluable starting point for me. I didn't have any knowledge about digital electronics before. Watching his videos, I got a smooth learning experience on practical digital electronics and logic devices.
{: style="text-align: justify"}


### Recommendations

To all people which could be interested in build his own myCPU, I recommended to visit the download pages and download all the documentation related to the project, so you can check the quality of the project and if the project could be interesting and affordable for you. I’ve tried to share everything has been possible.
{: style="text-align: justify"}

Print the schematics pages from the technical documentation download. Will be very useful have by hand a printed version of schematics when you are going to assemble your myCPU and your modules.
{: style="text-align: justify"}

I’ve created a youtube channel to share the videos related to the project and the future projects. I recommend to subscribe to the channel when first videos could be available to get notifications when a new video arrive.
{: style="text-align: justify"}

Also, I recommended you to visit [**The Kit feedback form page**](/pages/en/mycpu/feedback_kit) of the myCPU site to get information about how to get the full set of printed boards to build your own myCPU. The only way at first to get The myCPU Kit will be through a crowdfunding campaign and its launch date will be announce through the myLabPCB twitter account.
{: style="text-align: justify"}

[**Youtube**](https://www.youtube.com/@mylabpcb){:target="_blank"}

[**Twitter**](https://twitter.com/mylabpcb){:target="_blank"}

[**The Kit feedback form**}](https://mycpu.mylabpcb.com/pages/en/feedback_kit/)

I wish to enjoy to all people who decide to build his own myCPU!

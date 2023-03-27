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
The myCPU project is a basic fully modular TTL 8-bit CPU designing on PCBs with support to debugging at microinstruction level and using only the most common logic TTL ICs.
{: style="text-align: justify"}

The myCPU project is based on the original 8-bit Breadboard Computer project from Ben Eater:

[**Ben Eater's breadboard 8 bit computer project site**](https://eater.net/8bit/){:target="_blank"}.
{: style="text-align: justify"}

And the Malvino's SAP-1 and 2 designs from his book: **Digital Computer Electronics 1993 3rd edition**

{:.center}
![myCPU Layout]({{ site.baseurl }}/img/mycpu/mycpu_horizontal_layout_2_1024_min.png#center){:width="800px"}

### The origin of the myCPU project, the Ben Eater's project

I decided to tackle this project because, after discovering the Ben Eater's breadboard computer project 4 years ago.  I built my own 8-bit breadboard computer despite having no previous knowledge about digital electronics and components, I was determined to learn and overcome the challenges of constructing such a complex circuit on breadboards. As a beginner, I often felt frustrated by the difficulty of the task.
{: style="text-align: justify"}

Working with this kind of complex project on breadboards was a very hard work, involving a multitude of wirings, a hard fight troubleshooting the TTL IC behaviors (especially with Chinese components), addressing databus issues, and managing its unstable electrical behavior and performance. However, it was also an incredible and grateful learning experience.
{: style="text-align: justify"}

{:.center}
![8-bit breadboard cpu]({{ site.baseurl }}/img/8_bit_breadboard_computer_min.png){:width="600px"}

In my build of the breadboard computer, I used the cheapest breadboards, and due to that, the debugging process often became in a very frustrating task as I had to repeatedly check wire connections. Although using more expensive breadboards could have made things a bit easier, it wouldn't necessarily eliminate electrical issues that aren't related to wiring.
{: style="text-align: justify"}

Finally, I got my breadboard computer works but it had a poor performance and generate numerous execution errors due to its unstable operation. Breadboards simply does not provide enough space to implement the most common electronics practices with TTL: such as pull-down/up resistors, limiting resistors for leds, decoupling and filter capacitors or avoid TTL floating inputs. Those shortcomings difficult the troubleshooting and make, sometimes, very difficult to see the root cause of a malfunction.
{: style="text-align: justify"}

So, I decided to redesign the entire breadboard project on PCBs, to resolve all the issues that appeared in the previous breadboard version. Introducing a modular and  open architecture, enhancing some modules, adding additional features, and trying to use the most basic PCB design rules such as using two dedicated and isolated layers for the power (**VCC**) and ground lines (**GND**) using wider tracks or enough big pads for soldering components with ease.
{: style="text-align: justify"}


It took me 2 whole years to complete many project tasks such as the project planning, the PCB design, purchasing and checking components, ordering prototypes, assembling and testing module prototypes, building and testing the myCPU layout, coding the instruction set, programming helper tools, creating technical documentation, developing the project site, capturing myCPU videos, and writing content for the website and myCPU book. However, after all this effort, I finally reached a stage of development where I was able to release the first final version. Designing myCPU was particularly challenging due to its modular nature, but this approach will prove to be very helpful during the troubleshooting and testing processes.
{: style="text-align: justify"}

> I've planned more releases to the future. You can see the planned roadmap [**here**](/pages/en/mycpu/introduction#mycpu-roadmap) in the introduction page of the myCPU
> {: style="text-align: justify"}

I've created a full landing site for the project as well as a project book, both having more or less the same contents. I thought that could be helpful have available an online and a printable version of the documentation.
{: style="text-align: justify"}

You will find, online, all of the related documentation to the myCPU project in the [**Downloads section**](https://mycpu.mylabpcb.com/pages/en/mycpu/downloads/) of the myCPU project site with a lot of additional resources.
{: style="text-align: justify"}

> You can begin getting a started view of the myCPU project in the [Introduction](/pages/en/mycpu/introduction) page of the project.
> {: style="text-align: justify"}

Because, the myCPU project is based on the Ben Eater’s project, I highly recommended watching all of the videos related to his 8-bit breadboard computer project. You will learn valuable fundamental knowledge about digital electronics and logic devices as well as how early CPUs and microcomputers worked. Watching these videos and building some of the digital devices demonstrated in them, will provide you useful practical knowledge about working with breadboards, logic gates and the most common logic devices. Additionally, you will develop a better understanding of how the most common TTL ICs operate.
{: style="text-align: justify"}

> I’m highly recommended watching his videos, even if you decide not to build you own myCPU when the kit could be available, because is an invaluable learning resource for digital electronics.
> {: style="text-align: justify"}

Regardless, if you are still interested in building the entire computer on breadboards, it's important to note that this would be an exceedingly complex project and would likely will imply significant challenges, particularly for beginners. Achieving a fully functional build may be difficult to accomplish without prior experience in digital electronics and working with breadboards.
{: style="text-align: justify"}

You can find all videos related to the Ben Eater's project on his youtube channel:

* [**Ben Eater’s website related his 8 bit Breadboad computer**](https://eater.net/8bit/){:target="_blank"}

* [**Ben Eater’s youtube channel playlist of videos about his 8 bit breadboard computer**](https://www.youtube.com/playlist?list=PLowKtXNTBypGqImE405J2565dvjafglHU){:target="_blank"}

Ben Eater is a excellent communicator. His videos give me an invaluable starting point on CPU architecture. I didn't have any knowledge about digital electronics and logic devices before. Watching his videos, I got a smooth learning experience on practical digital electronics and logic devices.
{: style="text-align: justify"}


### Recommendations

Anyone interested in building their own myCPU should visit the downloads section on the project site and download all the project documentation. So you can check the quality of the project and if it could be interesting and affordable for you. I’ve tried to share everything has been possible.
{: style="text-align: justify"}

Having a printed version of the schematics can be incredibly helpful when assembling your myCPU and modules. It allows you to have a hard copy of the schematics readily available at your fingertips.
{: style="text-align: justify"}

>You can find all schematics on the [Downloads section](https://mycpu.mylabpcb.com/pages/en/mycpu/downloads/){:target="_blank"} of the project's site or in the Appendix A of the myCPU book
>{: style="text-align: justify"}

I’ve created a youtube channel to share the videos related to the myCPU project and future projects or releases. I recommend to subscribe to the channel when the first videos could be available to get notifications when a new video arrive.
{: style="text-align: justify"}

I recommended to visit [**The Kit feedback form page**](/pages/en/mycpu/feedback_kit) on the myCPU site to get information about how to get the full set of printed boards to build your own myCPU. The only way at first to get The myCPU Kit would be through a crowdfunding campaign and its launch date will be announce through the myLabPCB twitter account or sending a newsletter to subscribers on that form.
{: style="text-align: justify"}

[**Youtube**](https://www.youtube.com/@mylabpcb){:target="_blank"}

[**Twitter**](https://twitter.com/mylabpcb){:target="_blank"}

I wish the best of success to all people who decide to build his own myCPU!

---
title: The myCPU Project
subtitle: A TTL/CMOS 8 bit CPU with debug at microinstruction level
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---

# Welcome to the myCPU Project
The myCPU project is a basic fully modular TTL or CMOS 8-bit CPU/Computer designing on PCBs with support to debugging at microinstruction level and using only the most common logic TTL/CMOS ICs of the 74xxx family.
{: style="text-align: justify"}

The myCPU project is based on the original 8-bit Breadboard Computer project from Ben Eater:

[**Ben Eater's breadboard 8 bit computer project site**](https://eater.net/8bit/){:target="_blank"}.
{: style="text-align: justify"}

And the Malvino's SAP-1 and 2 designs from his book: **Digital Computer Electronics 1993 3rd edition**

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/mycpu_landscape_on_min.png" alt="myCPU Landscape layout view" title="myCPU Landscape layout view" width="600px">
    <figcaption>myCPU landscape layout view</figcaption>
</figure>

### The origin of the myCPU project, the Ben Eater's project

I embarked on this project four years ago, inspired by Ben Eater's breadboard computer project. Despite my lack of prior knowledge in digital electronics and related logic components, I successfully constructed my own 8-bit breadboard computer. My determination to learn and conquer the challenges associated with building such a complex circuit on breadboards fueled my journey. As a novice, I frequently encountered frustration due to the difficulty of the task.
{: style="text-align: justify"}

Work on this kind of complex project on breadboards was a very hard work, involving a very high number of wirings, persistent troubleshooting the TTL IC behaviors on breadboards (was the technology type I used at first), addressing bus issues, and managing the circuit's unpredictable electrical behavior and performance. However, it was, despite the challenges,  an incredible and grateful learning experience.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/8_bit_breadboard_computer_min.png" alt="my 8-bit breadboard computer" title="my 8-bit breadboard computer" width="600px">
    <figcaption>A view of my 8-bit breadboard computer</figcaption>
</figure>

For the built of my breadboard computer, I opted for the cheapest breadboards available. This choice, while cost-effective, made the debugging process particularly frustrating, requiring repeated checks of wire connections. Although, using more expensive breadboards could solve the wiring issues, it wouldn't eliminate electrical issues unrelated to wiring but due to the nature of the use of breadboards for a large circuit like this.
{: style="text-align: justify"}

Finally, I got my breadboard computer works but it had a poor performance and generate numerous execution errors due to its unstable operation. Breadboards simply does not provide enough space to implement the most common electronics practices with **TTL/CMOS** technologies: such as pull-down/up resistors, limiting resistors for leds, decoupling and filter capacitors or avoid TTL/CMOS floating inputs. Those shortcomings difficult the troubleshooting and make, sometimes, very difficult to see the root cause of a malfunction.
{: style="text-align: justify"}

So, I decided to redesign the entire breadboard project on PCBs, to resolve all the issues that appeared in the previous breadboard version. Introducing a modular and open architecture design, enhancing some modules from the original breadboard project, adding additional features, and trying to use the most basic PCB design rules such as using two dedicated and isolated layers for the power **VCC** and ground lines **GND**, using wider tracks or enough big pads for soldering components with ease.
{: style="text-align: justify"}


It took me 3 whole years to complete the project, implying many tasks: the project planning, schematics and PCBs design of the basic architecture and all basic modules with their previous prototypes on breadboards, purchasing and checking components, ordering PCB prototypes, assembling and testing module prototypes, building and testing the full myCPU layout, coding the instruction set, checking microprograming for Instruction Set, programming helper tools, creating technical documentation, developing the project site, capturing myCPU videos, and writing content for the website and myCPU book. However, after all this effort, I finally reached a stage of development where I can to release a final and successful working version. Designing the myCPU was particularly challenging due to its modular and open architecture nature, but this approach will be very helpful during the troubleshooting and testing processes.
{: style="text-align: justify"}

> I've planned more releases to the future. You can see the planned roadmap [**here**](/pages/en/mycpu/introduction#mycpu-roadmap) in the introduction page of the myCPU
> {: style="text-align: justify"}

I've created a comprehensive landing page for the project along with a project book, both containing essentially the same content. I believe having both an online version and a printable version of the project-related content and documentation could be beneficial for everyone but specially for beginners or less experienced people.
{: style="text-align: justify"}

You will find, online, all the documentation and resources related to the myCPU project in the [**Downloads section**](https://mycpu.mylabpcb.com/pages/en/mycpu/downloads/).
{: style="text-align: justify"}

Also you can get the all the project documentation and resources or download the entire project in a zip file at Github: [**Github Project of myCPU**](https://github.com/mylabpcb/myCPU){:target="_blank"}.
{: style="text-align: justify"}

> You can begin getting a started view of the myCPU project in the [Introduction](/pages/en/mycpu/introduction) page of the project.
> {: style="text-align: justify"}

Because, the myCPU project is based on the Ben Eater’s project, I highly recommended watching all of the videos related to his 8-bit breadboard computer project. You will learn a valuable fundamental knowledge about digital electronics and logic devices as well as how early CPUs and microcomputers worked. Watching these videos and building some of the digital devices demonstrated in them, will provide you useful practical knowledge about working with logic gates and the most common logic devices and get a better understanding of how the most common Logic ICs operate. Additionally you will get practical knowledge about working with breadboards.
{: style="text-align: justify"}

> I’m highly recommended watching his videos, even if you decide not to build you own myCPU when the kit could be available, because is an invaluable learning resource for digital electronics.
> {: style="text-align: justify"}

Regardless, if you are still interested in building the entire computer on breadboards, it's important to note that this would be a highly complex project and would likely will imply significant challenges, particularly for beginners. Achieving a fully functional build may be difficult to accomplish without prior experience in digital electronics and working with breadboards.
{: style="text-align: justify"}

You can find all videos related to the Ben Eater's project on his youtube channel:

* [**Ben Eater’s website related his 8 bit Breadboad computer**](https://eater.net/8bit/){:target="_blank"}

* [**Ben Eater’s youtube channel playlist of videos about his 8 bit breadboard computer**](https://www.youtube.com/playlist?list=PLowKtXNTBypGqImE405J2565dvjafglHU){:target="_blank"}

Ben Eater is a excellent communicator. His videos give me an invaluable starting point on CPU architecture. I didn't have any knowledge about digital electronics and logic devices before. Watching his videos, I got a smooth learning experience on practical digital electronics and logic devices at the beginning.
{: style="text-align: justify"}


### Recommendations

Anyone interested in building their own myCPU should visit the downloads section on the project site and download all the project documentation. So you can check the quality of the project and if it could be interesting and affordable for you. I’ve tried to share everything has been possible.
{: style="text-align: justify"}

Having a printed version of the schematics can be incredibly helpful when assembling your myCPU modules. It allows you to have a hard copy of the schematics readily available at your fingertips.
{: style="text-align: justify"}

>You can find all schematics on the [Downloads section](https://mycpu.mylabpcb.com/pages/en/mycpu/downloads/){:target="_blank"} of the project's site or in the Appendix A of the myCPU book
>{: style="text-align: justify"}

I’ve created a youtube channel to share the videos related to the myCPU project and future projects or releases. I recommend to subscribe to the channel when the first video could be available to get notifications when a new video arrive.
{: style="text-align: justify"}

I recommended to visit [**The Kit feedback form page**](/pages/en/mycpu/feedback_kit){:target="_blank"} on the myCPU site to get information about how to get the full set of printed boards to build your own myCPU. The only way at first to get The myCPU Kit would be through a crowdfunding campaign and its launch date will be announce through the myLabPCB twitter account or sending a newsletter to the people registered through that form.
{: style="text-align: justify"}

[**Youtube**](https://www.youtube.com/@mylabpcb){:target="_blank"}

[**Twitter**](https://twitter.com/mylabpcb){:target="_blank"}

I wish the best of success to all people who decide to build his own myCPU!

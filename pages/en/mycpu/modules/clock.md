---
title: "myCPU: The Clock module"
subtitle: A 555 timer based clock signal generator
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/clock/clock_assembled.png" alt="Clock module assembled view" title="Assembled view of the Clock module" width="500px">
    <figcaption>Assembled view of the Clock module</figcaption>
</figure>

[Clock module documentation](/downloads/technical/myCPU_Clock_module_full.pdf){:target="_blank"}

Also you can find all documentation files in the downloads page: [myCPU documentation](/pages/en/mycpu/downloads/technical_docs)

### Description
The clock module is a very accurate square wave generator following the **Ben Eater’s design**. Ben’s design is a very useful and interesting design to help in the debugging process. It provides a precise and clean clock signal at slow speed controlled with a potentiometer. The myCPU recommended component values combines with a 1M potentiometer give us control for a speed between a few Hz to 3 KHz.
{: style="text-align: justify"}

>I strongly recommended to see the video lectures about the design of the clock module and the 555 operation.
{: style="text-align: justify"}

**Video Lectures:**

[Astable 555 timer - 8-bit computer clock - part 1](https://www.youtube.com/watch?v=kRlSFm519Bo&list=PLowKtXNTBypGqImE405J2565dvjafglHU){: target="_blank"}

[Monostable 555 timer - 8-bit computer clock - part 2](https://www.youtube.com/watch?v=81BgFhm2vz8&list=PLowKtXNTBypGqImE405J2565dvjafglHU){: target="_blank"}

[Bistable 555 - 8-bit computer clock - part 3](https://www.youtube.com/watch?v=WCwJNnx36Rk&list=PLowKtXNTBypGqImE405J2565dvjafglHU){: target="_blank"}

[Clock logic - 8-bit computer clock - part 4](https://www.youtube.com/watch?v=SmQ5K7UQPMM&list=PLowKtXNTBypGqImE405J2565dvjafglHU){: target="_blank"}

The clock module design is based on the 555 timers for all its working states. There are 3 blocks which handle these states: 
{: style="text-align: justify"}

+	**Timer**
+	**On/Off state**
+	**Step by Step Cycle debugging**

The **Timer** functionality is based on a 555 timer configure as an **astable oscillator**, timer speed is controlled by PDT1 in combination with R1 and C4. Using a 500K or 1M for PDT1, less value provides more fast initial speed.
{: style="text-align: justify"}

>I recommended 1M to get a slowest initial speed and see better what happens without use the cycle by cycle debugging mode.
{: style="text-align: justify"}

R1 is a trimmer letting to configure the duty cycle of the timer. You will need an oscilloscope to adjust the balance of the lengths of the high and low part of the timer signal using the trimmer R1. The recommended value if you cannot use an oscilloscope is 270 Ω.
{: style="text-align: justify"}

The cycle stepping for debugging is controlled by a 555 timer too, configured as bistable oscillator, and a push button that trigger the bistable to change. The speed is handled by R3 and C7, this combination controls the delay of the change, the delay should be enough to cancel the debounced effect when release the push button. Increasing R3 step up the delay which reduced the debounced effect but also reduced the response time of the push button, decreasing R3 step up the response speed but also decrements the cancellation of the debounce effect. 
{: style="text-align: justify"}

>The recommended value for C4 is 470nF and for R3 is 470K to balance response time and debounced reduction.
{: style="text-align: justify"}

### Components
The main component are three 555 timers with its mandatory decoupling capacitors. A slide switch to switch on/off the monostable configuration and a push button to trigger the bistable state high of the 555 bistable block.
{: style="text-align: justify"}

### The Assembly
Mount the module headers in first place.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/clock/clock_clear_front.png" alt="PCB front view" title="Front view of the printed board" width="500px">
    <figcaption>Front view of the printed board</figcaption>
</figure>
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/clock/clock_clear_back.png" alt="PCB back view" title="Back view of the printed board" width="500px">
    <figcaption>Back view of the printed board</figcaption>
</figure>

### Testing
The clock module requires the CSM module plugged because it provide the HLT signal to low by default needed by the clock module to enable the output of monostable block and the BUS manager plugged because it generates the RST signal to low by default needed by the clock module.
{: style="text-align: justify"}


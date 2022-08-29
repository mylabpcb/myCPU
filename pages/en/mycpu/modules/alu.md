---
title: "myCPU: ALU module"
subtitle: A 8 bit Arithmetic Logic Unit
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---
> The content is under development, the final version will be as soon as possible.

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/alu/alu_assembled_min.png" alt="ALU module assembled view" title="Assembled view of the ALU module" width="500px">
    <figcaption>Assembled view of the ALU module</figcaption>
</figure>
[ALU module documentation](/downloads/technical/myCPU_ALU_module_full.pdf){:target="_blank"}

Also you can find all documentation files in the downloads page: [myCPU documentation](/pages/en/mycpu/downloads/technical_docs)

#### Description
The myCPU ALU is an 8 bit full adder implementation based on the **74LS283 (4-bit full adder)**, supporting the subtract operation by using the technique of addition of the **2’s complement**.
{: style="text-align: justify"}

The ALU module set the 4 status flags related to arithmetic operations:
+	**FZ**: Zero flag. 
Is calculated using logic gates set to 1 if all output bit are zero.
+	**FC**: Carry flag. 
Correspond to the carry out bit of the last adder.
+	**FN**: Negative flag.
Is set using the value of the **MSB or b8** from the outputs of the adders that correspond to the sign on 2's complement representation, only have meaning for subtract operations.
+	**FV**: Overflow flag, indicate an overflow after an operation with signed numbers.

The **FV** flag Is calculated using a XOR operation between the internal carry between b7 to b8 and the carry out bit and only have meaning after a subtract operation.
{: style="text-align: justify"}

The myCPU ALU is based on simple full adders, so addition is the only operation supported with positive or unsigned numbers. An ALU only understand bytes and a byte is not a number, is a value which we can have an equivalence in other number systems. And the byte equivalence for a decimal system is a positive value. For this reason, the ALU does not understand negative numbers directly, only using a number technique like the 2’complement allows to ALU to performs subtract operations or adding negative numbers. The subtract operation is performed by the addition of the 2’complement of the second operand to the accumulator, and the addition with negative numbers, should be done through the code working with the positive 2’complement of the negative numbers. In any case the result of the operation is ever a positive number which you can display its two’s complement representation using the UN control signal. Based on that the negative flag (FN) and the overflow flag (FV) only have meaning after a subtract operation or and adding with negative numbers. Remember that the only supported operation with automatic 2’complement, in the myCPU ALU, is the subtract operation through the second operand stored in B register.
{: style="text-align: justify"}

>Remember, the UN signal only enabled the signed display for numbers. It does not means the ALU are working with signed numbers because it operates only with positive numbers.
{: style="text-align: justify"}

The ALU module perform the two`s complement conversion of the B register operand through a network of XOR gates that gets the one’s complement and adding one by connection the carry IN of the first adder to the SU control signal.
{: style="text-align: justify"}

The SU control signal has two purposes, the first one enable the one’s complement of the B register input through the XOR network and by enable the carry IN, add one to the one’s complement to get the two’s complement.
{: style="text-align: justify"}

>The two’s complement is done by get the one’s complement of a binary number and adding one.
{: style="text-align: justify"}

<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/alu/alu_clear_front_min.png" alt="PCB front view" title="Front view of the printed board" width="500px">
    <figcaption>Front view of the printed board</figcaption>
</figure>
<figure class="center">
    <img src="{{ site.baseurl }}/img/mycpu/modules/alu/alu_clear_back_min.png" alt="PCB back view" title="Back view of the printed board" width="500px">
    <figcaption>Back view of the printed board</figcaption>
</figure>

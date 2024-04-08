---
title: The myCPU Kit Feedback form
subtitle: Feedback form about getting the myCPU boards kit
layout: page
show_sidebar: false
hide_footer: true
hide_hero: false
hero_height: hero-minHeigth
hero_darken: false
---
I'm an individual not a company, so I cannot face the manufacture procedure of the full myCPU boards kit without support and I need to get financial support to continue with the development of the next versions of the myCPU Project: myCPU256, myCPU2K and myCPU+ a 64K version of the myCPU.
{: style="text-align: justify"} 

The myCPU kit is a big kit with over 40+ pcbs, you can see de detailed description at [The myCPU Kit](/pages/en/mycpu/kit){:target="_blank"} page, and for this reason, there's only one possible ways to make available the myCPU Kit to all people and get the financial support I need:
{: style="text-align: justify"}

1. **Get the myCPU full boords Kit as a reward of a crowfunding campaign.**

Getting the myCPU full Kit through a crowfunding campaign is the better choice for begginers without experience dealing with manufacture process and is the cheapest way because I`ll order a big number of each pcb with the reduction of the price for a big kit like this. Also you get the full myCPU kit conveniently bundled in a single package over a unique shipping parcel. 
{: style="text-align: justify"}

At this moment, this is the only way, affordable for me, to provide the full myCPU boards Kit. Your support would let me to continue with the development of the next projects I mention at the beginning of the page.
{: style="text-align: justify"}

Please send me the feedback form below and let me know your interest in getting the myCPU Kit and if you would be comfortable getting the myCPU Kit through a crowdfunding campaign or you prefer another way. All people registered could receive a notification when the myCPU Kit will be available or any changes related on how you can get the myCPU Kit.
{: style="text-align: justify"}

<form accept-charset="UTF-8" action="https://mycpu-wcontact.azurewebsites.net/api/AddFeedbackContact" method="post" target="_blank" enctype="application/x-www-form-urlencoded">
  
  <div class="box">
  <div class="block">
  <label>FullName:</label>
  <input class="input" type="text" name="name" placeholder="Your Fullname" required>
  <label>Email:</label>
  <input class="input" type="email" name="email" placeholder="Your Email" required></div></div>
  {% comment %}
  <div class="box">
  <label><strong>Would you agree to get the whole kit of pcbs from a crowfunding project?</strong></label><br/>
  <label>Yes:</label> 
  <input type="radio" name="Q_kitAgreeCrowfunding" placeHolder="Yes" checked value="Yes">
  <label>No:</label>
  <input type="radio" name="Q_kitAgreeCrowfunding" placeHolder="No" value="No"><br/>
  </div>
  <div class="box">
  <label><strong>Would you prefer purchase the gerber files and order the pcbs by your own?</strong></label><br/>
  <label>Yes:</label> 
  <input type="radio" name="Q_kitPurchaseGerber" placeHolder="Yes" checked value="Yes">
  <label>No:</label>
  <input type="radio" name="Q_kitPurchaseGerber" placeHolder="No" value="No"><br/>
  </div>
  {% endcomment %}
  <div class="box">
  <label for="Q_GetKitOption">Choose your prefered way to get the myCPU Kit:</label>
  <div class="select">
  <select name="Q_GetKitOption" id="Q_GetKitOption">
  <option value="Crowfunding">I prefer get the full myCPU kit as a reward of a crowfunding campaign.</option>
  <option value="Gerber">I prefer purchase the gerber files and order the pcbs by my own.</option>
  </select></div>
  </div>
  <button class="button is-light" type="submit">Submit</button>

</form>



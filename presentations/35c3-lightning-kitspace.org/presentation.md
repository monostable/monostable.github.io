class: center, middle

<img class=fullscreen src=images/kitspace_logo_full.svg />

???

- Here to talk about my work to help make it easier to replicate electronics projects

---

<img style="height:300px;float:right" src=images/pcb.jpeg />
<img style="height:300px;float:left" src=images/soldering.gif />

???

- Let me give you a quick overview of how you can make electrinics.
- You have a printed circuit board, typically made of fiber glass and copper tracks
- You could try and etch these yourself but they have become very affordable to order in the past decade.
- So you have this board, often shortened to PCB And you have components, with legs or pins, that you solder on by careful application of heat and solder wire

---

#Through-hole
<div style=float:left>
<video style="height:300px" controls=false autoplay=true loop=true src=images/solder.mp4 />
</div>

???

- You can have through hole components where the legs stick through a hole in the boord

---
#Surface mount technology (SMT) or Surface mount device (SMD)

<img src=images/soldering_smd.gif />


???

- And you can have surface mount components, which are often shortened to SMT or SMD

---
#Reflow soldering

<img style="height:300px;float:left" src=images/reflow.gif />
<img style="height:300px;float:right" src=images/oven.jpg />


???

- If you are making more than one board, or you have very tiny surface mount components you typically want to use a reflow process.
- You apply solder paste, site the component on top and heat it up.
- Often people hack toaster ovens to have more control over the temperature curve
---

<img class=fullscreen src=images/hackspaces.svg />

???
- If you are interested in doing this, you should check out your local hackspace and learn how.
- Here in bristol we have a modified toaster oven and plenty of friendly people that are willing to show you how to use it.
- We also have a lot of other cool tools like a laser cutter and 3d printer, go check us out on the web!

---
<img style="height:300px;float:left" src=images/kicad_eeschema.png />
<img style="height:300px;float:right" src=images/kicad_pcbnew.png />

???

- The way to design these boards is to use a schematic entry and a PCB layout software.
- You draw out a schematic, which is a sort of map where you want all your connections to go.
- And then place them onto a model of a board and route the connections your previously defined
- Once you make a design you can share this with people, and in theory someone should be able to replicate it.
- So that's what we call open hardware.

---
# Open Hardware is growing!

<table>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Feb 2017</th>
<th align="left">Feb 2018</th>
<th align="left">Oct 2018</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">KiCad projects on GitHub</td>
<td align="left">3000</td>
<td align="left">5500</td>
<td align="left">4700</td>
</tr>
<tr class="even">
<td align="left">Eagle projects on GitHub</td>
<td align="left">7000</td>
<td align="left">12000</td>
<td align="left">10300</td>
</tr>
<tr class="odd">
<td align="left">Shared projects on OshPark</td>
<td align="left">9000</td>
<td align="left">13000</td>
<td align="left">16500</td>
</tr>
</tbody>
</table>
<br>
Hackaday.io, blogs, etc...

???

- And it's growing!
- I gave a presentation at the last FOSDEM and took a rough survey and did the same again last week
- And there are other places to put up projects as well




???

- And it's growing!
- I gave a presentation at FOSDEM in febuary and took a rough survey and did the same again last week
- And there are other places to put up projects as well
- __So what's the problem?__

---
<img style="float:right" src=images/cloud.png />
<img src=images/pease.jpg />

???
- The problem
- The problem is that it's hard to document electronics in a way that allows others to replicate them
- Often it takes considerable effort to understand someone else's work
- Projects can be simultaneously brilliant but not reproducable
- There is no clear standard way to present the information that reduces the friction

---
<div style=width:100%;display:flex;justify-content:center;>
<img class=fullheight src=images/meat1.jpg />
</div>

???
- So what we would like, is something that incorporates all these different ways of doing things

---
class: center, middle
<div style=width:100%;display:flex;justify-content:center;>
<img class=fullheight src=images/meat2.jpg />
</div>

???
- Allows you to make the PCB

---
class: center, middle

<div style=width:100%;display:flex;justify-content:center;>
<img class=fullheight src=images/meat3.jpg />
</div>

???
- And allows you to purchase the parts

---

<img class=fullscreen src=images/meat_apart.jpg>

???

- And this is my approach to try and solve this
- The Kitspace.org web service
- and the 1-click BOM browser extension

---

# 1-click BOM extension
<img style="float:right" src=images/1_click_logo.png />

Automates purchasing by replicating the web requests that are sent when you use retailer sites:
- Digikey
- Mouser
- RS
- Newark / Farnell / Element14

???

- The browser extension tries to completely reduce the friction between a BOM and the retailer shopping cart
- It does this by replicating the web requests that your browser sends when using the site
- Currently works for these retailers

---

<video class=fullheight controls=false autoplay=true loop=true src=images/1clickbom_demo_short.mp4 />

---

# 1-click BOM extension

- Available for Chrome and Firefox
- Goes from spreadsheet to shopping cart
- Can load a online BOM

---
<div style=width:100%;display:flex;justify-content:center;>
<img class=fullheight src=images/meat3.jpg />
</div>

???

- So this kind of solves one aspect of our goal.
- We can replicate  purcheses across the globe
- But it doesn't include the PCB and there is no standard way to package a complete project to be replicated

---
<img class=fullscreen src=../images/kitspace_projects_full.svg />
---
<img class=fullscreen src=images/kitspace_page.svg />
---
#Kitspace.org
- Git repository
- Tab separated values
  - 1-click-bom.tsv / csv / Excel / LibreOffice
  - At minumum: References, Quantity and Part Number or a description
- RS274-X Gerbers and Excellon drills

```
.
├── 1-click-bom.tsv
└── gerbers
    ├── board.cmp
    ├── board.drd
    ├── board.dri
    ├── board.gko
    ├── board.gpi
    ├── board.gto
    ├── board.stc
    └── board.sts
```

???

- So this is where kitspace.org comes in.
- We combine the BOM with gerber files and put the in a Git repository
- And kitspace.org makes a page out of this for people to access

---


<img class=fullscreen src=images/virtual_kit.svg />

???

The idea really is that, creators can put together a virtual kit, that others can buy themselves, and we can share open hardware designs that way. With the least amount of friction.

So I want to encourage you, to check out your local hackspace. If you are from around here that's the bristol hackspace, there

---


<img class=fullscreen src=images/bom_builder.svg />

---

<img class=fullscreen src=images/electro_grammar.svg />
---
# ~~Questions?~~
- [kitspace.org](https://kitspace.org)
- 35c3: Open Science Hardware Assembly
- `freenode#kitspace` / [`#kitspace:matrix.org`](https://riot.im/app/#/room/#kitspace:matrix.org)
- <i class="fa fa-twitter" aria-hidden=true ></i>[@kitspaceorg](https://twitter.com/kitspaceorg)
- <i class="fa fa-github" aria-hidden=true ></i> [github.com/kitspace](https://github.com/kitspace)

<font size=3>
<br />
<br />

Image credits

-  ALL ABOARD - James Turner, https://spectrum.ieee.org/geek-life/hands-on/build-a-customprinted-circuit-board/1
- http://ch00ftech.com/2013/06/11/getting-itty-bitty-with-the-ice-breaker-2-0/
- Cover of Troubleshooting Analog Circuits by Robert A. Pease - © 1991 by Butterworth-Heinemann
- Meat grinder & Disassembled hand-powered grinder - CC-BY-SA [Kku](https://commons.wikimedia.org/wiki/de:User:Kku) and [Rainer Zenz](https://commons.wikimedia.org/wiki/de:user:Rainer Zenz)
- Bleep Drum Kit with MIDI - CC-BY-SA SparkFun Electronics

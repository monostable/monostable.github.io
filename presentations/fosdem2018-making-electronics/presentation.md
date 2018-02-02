#
## How to assemble open source hardware electronics projects
<video style="width:200%;left:0px;top:0px;position:absolute;" controls=false autoplay=true loop=true src=../images/generative_circuit.mp4 />
<h1 class=box_textshadow style="left:200px;top:100px;position:absolute;color:white" >Making Electronics</h1>
<h2 class=box_textshadow style="left:470px;top:200px;position:absolute;color:white" >by Kaspar Emanuel</h2>
<h6 class=box_textshadow style="left:800px;top:600px;position:absolute;color:white" >animation: <a style=color:inherit; href=https://twitter.com/ExUtumno>@ExUtumno</a></h6>

???

 - Hello, my name is kaspar and I am here to talk to you about how to make electronics projects

---
<img src=images/cad.svg class=fullscreen />

???


- The way circuits are generally designed is using using electronic design automation tools such as KiCad and gEDA
- You draw out a schematic, which is a sort of map where you want all your connections to go.
- And then place them onto a model of a board and route the connections your previously defined
- Once you make a design you can share this with people, and in theory someone should be able to replicate it.
- So that's what we call open hardware.

---


Open hardware is growing!

Feb 2017:

  - ~3000 KiCad projects on GitHub
  - ~7000 Eagle projects on GitHub
  - ~9000 shared projects on OshPark

Feb 2018:

  - ~5500 KiCad projects on GitHub
  - ~12000 Eagle projects on GitHub
  - ~13000 shared projects on OshPark

Hackaday.io, blogs, etc...

???

- And it's growing!
- I gave a presentation at the last FOSDEM and took a rough survey and did the same again last week
- And there are other places to put up projects as well


---

<img style=width:100% src=images/PCB_design_and_realisation_smt_and_through_hole.png>

???

- What I will focus on in this talk, is how to go from a design, the output of an electronic design automation tool, to a real, assembled working circuit


---

## Solderless Breadboard

<img class=fullscreen src=images/breadboard.svg />

???

- Electronics is completely and utterly about making connections
- And the only way to get better at knowing what connections to make is to try it out
- This is called a breadboard and it's the best way to get started learning about electronics
- You can plug different components in, and see what happens
- The one thing that trips people up is that from the outside you can't see where the connections are being made for you when to plug things in so this picture of the inside is really valuable to take a look at before you start
- But otherwise, just go for it. We generally work with low voltage, low current, so the worst thing that can happen is that some components burn up

- I am not your electronic engineer, don't sue me

---

## Proto / Vero / Strip Board
<img width=49% src=images/proto2.jpg />
<img width=49% src=images/proto1.jpg />

???

- If you want things to be more permananent
- You can move to a what's called protoboard, veroboard or strip board
- Here you can solder on your components and define the connections through solder or by removing bits of copper track

---

## Printed Circuit Board Etching

<img class=fullscreen src=images/etching.svg />

???

- But of course, this get tedious so etching connections into copper-clad fiberglass can be much less tedious
- You can do this at home, you print onto a copper-clad board which will resist an acidic bath and leave you with just the connections that you want

---

## Gerber Files

<img src=images/tracespace.png width=100% />

???

- What you are looking for in an OSHW project are the gerber files
- These describe the printed circuit board design
- And what you'll find if you look at the gerber files of a typical OSHW electronics project
- You will see multiple layers
- Tiny drills
- A solder resit and a silkscreen layer

---

<img class=fullscreen src=images/manufacture.svg />

???

- So, for these you really need an industrial process
- On the whole they use a similar etching process to what you can do at home but they have a lot more accurary and they have further steps which are harder to do at home
- You get a nice silkscreen or ident layer which help you see where components are supposed to go, you get solder resist which helps you keep the solder where it needs to be
- You have much more accurate drillng and the drills themselves are internally plated through electro-plating, so they can make connections between layers
- And you can have many more layers laminated together


---
# PCB Batching Services

<div style=display:flex>
<div style=width:50%>
<li> Accutrace PCB4U
<li> Advanced Circuits (4PCB)</li>
<li> Aisler.net
<li> ALLPCB
<li> AP Circuits
<li> BasicPCB
<li> Bay Area Circuits
<li> Bittele (7pcb)
<li> Breadboard Killer
<li> Dirty PCBs
<li> EasyEDA
<li> Elecrow
<li> Eurocircuits
</div>
<div>
<li> ExpressPCB
<li> ITEAD Studio
<li> OSH Park
<li> PCB Zone
<li> PCB-POOL
<li> PCBCART
<li> PCBJOINT
<li> PCBWay
<li> Ragworm
<li> Seeed Studio
<li> ShenZhen2U
<li> Smart Prototyping
<li> U&I (quickturnpcb)
</div>
</div>

???

- And it's cheap
- There are so many places where you can order your PCBs these days and get them within a few weeks for under 20 euros, it's pretty insane compared to 10 years ago

---

<div style=display:flex;justify-content:center;width:100%>
<img src=../images/kit.jpg style=height:600px>
</div>


???

- But the PCB is only part of the puzzle
- We also need to know what components to buy


---

<img src=images/bom.png class=fullscreen>

???

- So when looking at an open source electronics project
- We look for the bill-of-materials
- A spreadsheet that defines exactly what components we want to buy

---

###1clickBOM.com

<div style=width:100%display:flex;justify-content:center>
<video style=width:100% controls=false autoplay=true loop=true src=../images/demo.mp4#t=20 />
</div>

???

- Buying the components is actually where one of my projects comes in
- The one click bill of materials extension allows you to quickly go from a spreadsheet to a retailer shopping cart


---

<img class=fullscreen src=../images/kitspace_full.svg>

???

- I went even further with this idea and made a platform where people upload complete sets of gerber files plus bills of materials, and it's really clear how to get all the parts

---

<img src=images/resistors.svg class=fullscreen />

???

- Let's quickly go over the most typical parts and what they look like
- These are resistors
- On the left is a through-hole and on the right is a surface mount one

---

<img src=images/capacitors.svg class=fullscreen />

???

- Capacitors come in more varied shapes and sizes
- You also get really tiny surface mount ones
- Generally, these bigger ones are electrolytic and you have to watch out to put them in the right way round or they go pop

---

<img src=images/inductors.svg class=fullscreen />

???

- Inductors are really just coils of wires
- Often with a ferrite core
- But they have some very interesting electro-magnetic properties

---

<img src=images/diodes.svg class=fullscreen />

???

- Diodes come in a lot of different shapes too, but most people will be familiar with our light emitting diodes or also known as LEDs

---

<img src=images/transistors.svg class=fullscreen />

???

- Transistors, generally come in little black packages and have three legs, maybe another leg if they need to dissipate a lot of heat

---

<img src=images/ics.svg class=fullscreen />

???
- Integrated circuits can be a wide variety of things
- they come in a really wide variety of sizes, but generally they will also have black packages, a lot legs and some white writing on them.
- They also come in through hole and surface mount.


---

<img src=images/populate.svg class=fullscreen />

???

- So now that our PCB has arrived, and we have the components and know which ones are which
- We want to go from a bare PCB to populated working circuit

---

<img width=35% src=images/blutack.jpg />
<img width=60% src=images/third-hand.jpg />

???

- The first step is to make sure you PCB stays in place
- You can use blutack or similar for most jobs
- The only anoying thing about it is that it kind of melts when the board gets hot
- So you might opt for something more advanced like this third hand kraken thing
- Of course there are even more professional tools than this


---

#Through-hole Soldering

<div style=display:flex;justify-content:space-between;>
<img style=height:300px src=images/soldering.gif />
<video style=height:300px controls=false autoplay=true loop=true src=images/solder.mp4 />
</div>


???

- Then we want to solder the components on
- With through hole components we stick the legs through the PCB
- And with any kind of soldering the trick is to apply heat to the pad on the PCB and the leg of your component and then add solder to it

---

<img src=images/soldering_basics.svg class=fullscreen>

???

- What you want to use is a soldering iron or station, not a gun, those are for plumbing and other metal work
- You want something with enough power, 20-60W will do, if it has temperature control then all the better
- Stay away from these cheapo solder holders where you just lean the iron onto them, you'll get burnt

- I would advise you use a chisel tip, pointed tips and others have their places but a chisel tip has the most wide application

- Soldering is all about getting heat into the thing you want to solder so a chisel tip actually helps to that faster and better

- So again, you heat the pad and the part, you add solder, keep the heat there for a while and let it cool down

- And after a bit of practice it's easy to spot typical soldering problems


---

<img width=30% src=images/solder1.jpg />
<img width=30% src=images/solder_rosin.jpg />
<img width=30% src=images/flux_pen.jpg />
<img width=30% src=images/solder_paste.jpg />


???

- So the actually solder, it comes in these wires
- It comes leaded and unleaded and as a beginner you do want to start out with a leaded solder, because it's easier to work with
- You want to use a thinner wire for most things, unless you are soldering on bigger pins in which case you want a thicker one
- Solder wire is normally flux core, so flux helps dissipate oxidation layers so really helps your solder flow
- And you can get separate flux as well and you might want to selectively apply that in places before you solder

---

<img src=images/soldering_gnu.svg class=fullscreen />

???

- One tip that really helped me out when I was starting out
- Get as comfortable as possible
- Really lean over and slouch and get relaxed, take all the weight of your body and it makes it much easier to keep your hand steady
- And of course, good lighting is crucial and use magnification when you feel you need to see better



---

Surface mount technology (SMT) or Surface mount device (SMD)

<div style=display:flex;justify-content:space-between;>
<img style=width:100% src=images/smd_easy.jpg />
<img width=100% src=images/soldering_smd.gif />
</div>


???

- And don't be afraid of surface mount components
- Surface mount just means that there are no holes for the legs in the boards
- Surface mount components can be quite large and easily hand-soldered

---

<img src=images/smd_sizes.svg class=fullscreen />


???

- The crucial thing really is the size of the components
- And once it gets to below 0603 metric then I struggle to hand solder without magnification and it's generally a pain
- If your integrated circuits don't have legs then I would recommend you upgrade your process a bit

---

Reflow soldering

<div>
<img style="height:300px" src=images/reflow.gif />
<img style="height:300px" src=images/oven.jpg />
</div>

<div width=100% style=font-size:15px;>
</div>

<div style=font-size:15px>animation: ch00ftech.com<div>

???

- So if you are dealing with a lot of smalle components, or if are making more than one board, you typically want to use a reflow process.
- You apply solder paste, site the component on top and heat it up.
- Often people hack toaster ovens to have more control over the temperature curve
- They probably have one of these at your local hackspace, and if not you should make one

---

# FPGA E-Ink Controller


<img src=images/ice40_eink.jpg width=70%>


---

# AAduino
## An AA sized ISM radio Arduino clone
<img src=images/aaduino.jpg>

---

# 8Bitmixtape
## lo-fi 8Bit synthesizer based on the ATTINY85
<img src=images/8bitmixtape.gif>



---

## Learn more at your local hackspace!

<img style="height:100px" src=images/hackspace.png />
<img style="height:100px" src=images/london_hackspace.png />

<img style=height:350px src=images/hsbxl.png>

???

- If you are interested in doing this, you should check out your local hackspace and learn how.
- They will have a lot of other cool tools like a laser cutter and 3d printer so go check them out

---

# If you like electronics:

- kitspace.org
- awesome-electronics list: git.io/vNdO9

#### CAD and Open Hardware devroom in K.4.201

- 14:30 - KiCad Version 5 New Feature Demo
- 15:00 - Designing PCBs with code
- 15:30 - Brand new EDA tools: Horizon and LibrePCB

<font size=3>

Image credits

- http://ch00ftech.com/2013/06/11/getting-itty-bitty-with-the-ice-breaker-2-0/
- Bleep Drum Kit with MIDI - CC-BY-SA SparkFun Electronics
- PCB_design_and_realisation_smt_and_through_hole - Public Domain - Wikipedia User:Mike1024
- Levitating, Meditating, Flute-playing Gnu GNU - GNU Free Documentation License - FSF
- Testing Level Converter - CC-BY-SA - https://www.flickr.com/photos/rocketnumbernine/3428648965

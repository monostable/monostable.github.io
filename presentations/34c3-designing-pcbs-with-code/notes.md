The attraction of using code to design circuits breaks down into these categories:

- editing efficiency
- modularity & re-usability
- diffs!?
- faster iteration cycles

# Editing Efficiency

- easy to search and replace because it's text
- easier to repeat constructs

```python
class Divider(Part):
    def __init__(self)
        r1 = resistor('1k')
        r2 = resitor('2k')
        self[1] >> r1[1:2] >> self[2] >> r2[1:2] >> self[3]

div1, div2 = Divider() * 2

vin   = Net('VIN')
vout1 = Net('VOUT1')
vout2 = Net('VOUT2')
gnd   = Net('GND')

vin >> div1[1:2] >> vout1; div1[3] >> gnd
vin >> div2[1:2] >> vout2; div2[3] >> gnd
```

# HDLs

- VHDL & Verilog
- [PHDL (PCB Hardware Description Language)](https://sourceforge.net/projects/phdl)
- [SKiDL](https://github.com/xesscorp/skidl])
- [PyCircuit](https://github.com/dvc94ch/pycircuit)
- [EDA Solver](http://edasolver.com)
- Scripting
    - Eagle ULPs
    - Allegro Design Entry SKILL and Tcl
    - KiCad 
        - Embedded Python
        - [kicad-footprint-generator](https://github.com/pointhi/kicad-footprint-generator) and [footprint-to-script](https://github.com/ppelleti/footprint-to-script)
- [QEDA](http://qeda.org)

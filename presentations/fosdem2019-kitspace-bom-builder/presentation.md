class: center, middle

<img class=fullscreen src=images/kitspace_logo_full.svg />

???


---
<img class=fullscreen src=../images/kitspace_projects_full.svg />
---
<img class=fullscreen src=images/kitspace_page.svg />

---

<img class=fullscreen src=images/kitspace_bom.png />

---
<a style=font-size:70px href=https://bom-builder.kitspace.org target=_blank>bom-builder.kitspace.org</a>
---
<h2>BOM Builder</h2>
<div style=display:flex;justify-content:space-around;font-size:21pt>
<div style=width:100%>

<h3>Current</h3>
<li>Import BOM (Excel, Libreoffice, CSV)
<li>or import KiCad PCB
<li>Quickly select parts
<li>Export CSV

</div>
<div style=width:100%>

<h3>Future</h3>

<li> More CAD imports (KiCad schematic, Eagle, Altium, OrCad ...)
<li> Better price information
<li> Reduce BOM by retailer preference and price
<li> 1-click BOM: quickly buy parts
<li> Integrated into Kitspace: save to your Kitspace project

</div>
</div>

---
# Architecture
<img style=height:480px  src=flow.svg />

---

# BOM Builder (Client Side)

<font size=10>
- Javascript (ES2015 compiled to ES5)
- React
- Semantic UI
- react-scripts (Create React App)

---


<div style=display:flex;justify-content:space-around>
<div>
<font size=10>
<h1>Partinfo (Server Side)</h1>
<li>Javascript (Node.js)
<li> Express HTTP Server
<li>GraphQL
<li>Electro Grammar
<li>Octopart and Farnell APIs (more to come)
</div>

<div>
<img style=float:right src=backend.svg />
</div>
</div>

---

<a href=https://dev-partinfo.kitspace.org/graphql target=_blank style=font-size:40pt>dev-partinfo.kitspace.org/graphql</a>

---

<img class=fullscreen src=images/electro_grammar.svg />

---
<img class=fullscreen src=images/collective.svg />
---
# ~~Questions?~~
- [bom-builder.kitspace.org](https://kitspace.org)
- [kitspace.org](https://kitspace.org)
- [opencollective.com/kitspace](https://opencollective.com/kitspace)
- `freenode#kitspace` / [`#kitspace:matrix.org`](https://riot.im/app/#/room/#kitspace:matrix.org)
- <i class="fa fa-twitter" aria-hidden=true ></i>[@kitspaceorg](https://twitter.com/kitspaceorg)
- <i class="fa fa-github" aria-hidden=true ></i> [github.com/kitspace](https://github.com/kitspace)

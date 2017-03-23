# Creating New Circuits and Modules

This section is for developers to create new modules and new circuit kits. 

### Contents

- KiCad Library
- KiCad Template

### Guidelines

- It's best to take an existing module and edit it.
- The Lego holes are 4.98mm diameter after plating.
- Minimum total Lego hole total annular ring diameter is 6mm.
- Use white silk for ground or 'pin 2' polarity markings where needed.
- Circuit kits use 2x2 snappable support tabs with 20mil drills and 6 mil traces. 
- Grid size should be 8mm. Holes should be centered on grid lines.
- A footprint origin point (0,0) should be on the lower leftmost Lego hole.
- Remove mask openings on the top of the board.
- In particular, leave 30 mils of solder dam between a pad and a plated hole.
- When necessary, leave the Lego holes unplated and place a via.

### KiCad 

KiCad is a free, open source schematic capture and board layout tool that can be downloaded for Linux, Mac, and Windows. <a href="#">Get KiCad here</a>.

The Crazy Circuit library contains schematic symbols in the crazy.lib and crazy.dcm component library, and board layout footprints in the Crazy_Circuits.pretty folder.  

The template makes it easy to create a new Crazy Circuit kit in KiCad. Just add symbols, connect the symbols with wires, arrange the footprints on the printed circuit board, and add an outline showing the edge of the board or boards.

This can be automated with the KiFisher script.

<img src="battery-module.png" style="width:100%;">


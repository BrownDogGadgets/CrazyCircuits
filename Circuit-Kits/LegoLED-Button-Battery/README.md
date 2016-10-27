# LegoLED-Button-Battery Board

Lego brick LEDs from Lunchbox Electronics are in-place compatible with other 2.54mm-pitch, 5mm-diameter LEDs. 

This board can be snapped apart into the three different parts:

1. 3x3 CR2032 Battery
1. 2x2 LED
1. 1x2 Pushbutton

Sent some questions.

Trying out protosnap holes. 

OSH Park mills the outline with a 2.54mm (100mil) milling bit. The fab is willing but somewhat unreliable about milling it with a 1mm (40mil) bit, so I added in 1mm (40mil) holes to make sure we don't just go from nothing to 2.54mm. This will help with snapping. 

The snappable holes are 0.5mm (20mil) which are what worked well with the Sparkfun protosnap products. The hole pitch is 1mm from center to center of the unplated holes. 

Traces that are 7.87 mils (0.2mm) are placed between the holes. They're made very narrow so they'll break cleanly.

OSH Park milling/outline tolerance is up to 15 mils on paper but almost certainly only 5 mils in practice.

To be lego-compatible, Robin found the max length of the 2-hole side of a part should be 625 mils (15.875mm) and the max length of the 3-hole side of a part should be 938 mils (23.82mm). 

To be compatible with OSH Park's tolerance, and taking into account that I wanted to work with a 0.1mm grid:

|Width|mm|mils|
|-----|--|----|
|1 hole|7.6mm|299.213 mils|
|2 hole|15.6mm|614.173 mils|
|3 hole|23.6mm|929.134 mils|

<img src="piece-width-template.png">

To satisfy both of the above, one standalone 1 hole width would then be 7.8mm. A 2-hole width would be 

The grid spacing for the Lego parts is 4mm, because hole-to-hole pitch distance is 8mm.  



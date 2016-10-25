# Lego Circuits Demo Panel v1.0

This is a KiCad template file with trace and clearance defaults that meet OSH Park's design rules. 

The User Grid is defined as 8mm (0.314 inch) to match the pitch of standard medium Lego spacing.

![](lego-spacing-medium.jpg)

#### Quick Conversions

3.9 mm = 153 mil
4 mm = 158 mil
4.8 mm = 189 mil
4.88 mm = 192 mil (ideal drill)
5.23 mm = 206 mil (minimum total via)
8 mm = 315 mil
15.8 mm = 622 mil

#### Template and Library Information 

The template can be copied into a new folder and the files all renamed with the new filename. The template automatically calls up only the local library.

- Drill diameter of 189 mils plus an OSH Park tolerance +/- 2.5 mils results in a minimum specified drill hole of 192 mils. 
- Minimum annular ring of 7mils means a total via diameter of 7 + 192 + 7 = 206 mils.

The library contains every module footprint modified to work automatically with the 8mm grid.

#### Marking Convention

On polarized devices, white silk indicates the positive polarity and the PCB color indicates negative polarity. If there is no white side, the device is reversible and has no polarity.

#### Through Hole vs Surface Mount

Through-hole parts cost more, are more complicated and take more time to assemble, and don't allow the legos to have a clean fit on top of the boards.

#### Types of Modules

**Platform Module** 

The entire module can sit flush on top of a Lego piece. This will probably work for surface mount parts, but I'm concerned about through hole parts.

**Bridge Module**

This module can be connected at either end but the middle portion doesn't have the holes for Lego compatibility. It has to span two pieces of Lego, or just be attached on one end.

**Edge Module**

This module has Lego-compatible holes on one side only. 

#### Surface Mount vs Through Hole Parts

Through-hole parts are more stable and robust, probably especially with kids, but they're generally more expensive, take more time and labor to assemble, and may be hard to assemble so that the bottom sits flush against the Lego pieces below.

#### List of Modules

|Name|Method|Type|Dimensions|Done|
|----|------|----|----------|----|
|7805 LDO|TH|Bridge|2x3|Yes|
|3V CR2032 Coin Cell|SMT|Platform|3x3|Done|
|3V CR2032 Coin Cell|SMT|Platform|1x4|Done|
|Press Switch B3F-1XXX|TH|Platform|1x3|Done|
|Press Switch B3F-1XXX|TH|Platform|3x3|Done|
|Press Switch RS-032G05A3|SMT|Platform|1x2|Done|
|Slide Switch SPDT 0S102011MA1QN1|TH|Bridge|2x3|Done|
|1206 Generic Polarized|SMT|Platform|1x2|Done|
|1206 Generic Non-Polarized|SMT|Platform|2x2|Done|
|5mm Generic Polarized|TH|Bridge|2x2|Done|
|5mm Generic Non-Polarized|TH|Bridge|2x2|Done|
|2.54mm Generic Polarized|TH|Platform|1x2|Done|
|2.54mm Generic Non-Polarized|TH|Platform|2x2|Done|
|Touch Capsense Module|PAD|Bridge|1x2|Done|
|Touch Capsense Module|PAD|Edge|2x4|Done|
|555 Timer 8DIP Breakout|TH|Bridge|2x6|Done|
|ATTiny85 8DIP Breakout|TH|Edge|4x4|Done|
|9V Header|SMT|Bridge|2x4|Done|

*Notes*

- Didn't include a vibe motor in the initial set.
- One of the generics should be a screw terminal.


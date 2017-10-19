# Adjustable Lamp

This project uses the Touch Board to turn on, and keep on, up to six LEDs using seven touch points.  The idea was to create an adjustable lighting system to emulate a dimmer or fader switch.  Each touch point activates all the lights below it, meaning the third touch point turns on the first three LEDs in the row.  Pin 23 Turns Off all the LEDs, acting as a Master OFF.

![lamp diagram](https://raw.githubusercontent.com/BrownDogGadgets/CrazyCircuits/master/Projects/Adjustable%20Lamp/lamppreviewdiagram.png)

To make things even more fun we've designed some simple templates to use for making switches.  Use conductive tape to go from the Touch Board pins to the stencil spots and use a conductive material (such as Bare Conductive Paint) to fill in the touch point.

Note: When using the "Dial" you'll need to use the "Dial Template" version of the code. All this does is change the order of the pins being used, which was done to make the tape "wiring" easier.  

If you want to make a much more simple On/Off lighting system just use two of the touch point.  The Master "Off" and then any of the other touch points.  Connect one or more LEDs in parallel with the appropriate output pin.

You'll also find a simple test diagram that uses a single 8x16 Brick platform and six LEDs.  One suggestion is to use the test design with alligator clips and conductive dough (or balls of foils).  This makes for a fun and interactive demo.

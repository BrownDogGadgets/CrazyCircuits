# Sound FX Board

This project allows you to use the Crazy Circuits Invention Board (or Teensy LC) to create a capacitive touch sound wall. We use a cheap YX5300 mp3 module to play mp3 or wave files.

You can find a full write up of this project on our website as well as Instructables.com. We also havea youtube video you can watch that shows how to build the thing.

![diagram preview](https://github.com/BrownDogGadgets/CrazyCircuits/edit/master/Projects/Sound%20FX%20Board/diagrampreview.png)

The code is set up so that certain pins play certain files. We have them set up with a 1 second delay after each sound effect is triggered. You can change that length if you really want to. You can also change the sensitivity of the cap touch feature. This is handy if you want to trigger a touch point BEHIND something, like a sheet of paper or a vinyl sticker.

Download the Test Sound Effects folder and copy it to your micro SD card. Format the card as FAT. To change the sound effect just delete the test .wav file in each folder and replace it with your own mp3 or wav file.

For Mac OS users you'll need to download the DotClean file. For some weird reason Mac OS create invisable files that the mp3 module keeps trying to read, screwing things up. Put the DotClean file on your Micro SD card. Every time you've replaced some sound files on the card drag ALL the folders into the DotClean icon. This script will remove those invisable files and you'll be good to go.

We use Bare Conductive paint as our touch points, however most anything conductive will work. You could just make a simple shape with conductive tape and the place paper over the top of it or even a vinyl sticker.

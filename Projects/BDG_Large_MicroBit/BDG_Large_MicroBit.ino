/*
 * BDG_Large_MicroBit.ino
 * 
 * https://learn.browndoggadgets.com/Guide/3D+Printed+(Large)+Micro:Bit/934 
 *
 * Pete Prodoehl <pete@browndoggadgets.com>
 *
 */


#include <Adafruit_NeoPixel.h>
#include "patterns.h"

#define PIN 2

int NumOfPixels   = 25;
long interval     = 2000;
long fastinterval = 75;
int brightFull    = 64;
bool flipped      = false; // change to true if display is upside down

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NumOfPixels, PIN, NEO_GRB + NEO_KHZ800);


/* ------------------------------------------------------------------------------ */

void setup () {

  strip.begin();
  strip.show(); // Initialize all pixels to 'off'

} // end setup


/* ------------------------------------------------------------------------------ */


void loop() {

  // loop forever showing the icons and other stuff...

  displayIcon(heart, interval);

  burst();

  displayIcon(ghost, interval);

  larsonColumns();

  displayIcon(skull, interval);

  checkerboard();

  displayIcon(duck, interval);

  corners();

  displayIcon(checkmark, interval);

  larsonRows();

  displayIcon(umbrella, interval);

  propeller();

  displayIcon(house, interval);

  corners();

  displayIcon(scissors, interval);

  tricorners();

  displayIcon(target, interval);

  meter();

  displayIcon(tortoise, interval);

  burst();

  displayIcon(triangle, interval);

  larsonColumns();

  displayIcon(asleep, interval);

  checkerboard();

  displayIcon(eigthnote, interval);

  corners();

  displayIcon(sad, interval);

  // back around again

} // end loop


/* ------------------------------------------------------------------------------ */

void checkerboard() {
  for (int r=0; r<5; r++) {
    displayIcon(checkerboard1, fastinterval);
    displayIcon(checkerboard2, fastinterval);
  }
}

void corners() {
  for (int r=0; r<9; r++) {
    displayIcon(corners1, fastinterval);
    displayIcon(corners2, fastinterval);
    displayIcon(corners3, fastinterval);
    displayIcon(corners4, fastinterval);
  }
}

void tricorners() {
  for (int r=0; r<9; r++) {
    displayIcon(tricorners1, fastinterval);
    displayIcon(tricorners2, fastinterval);
    displayIcon(tricorners3, fastinterval);
    displayIcon(tricorners4, fastinterval);
  }
}

void propeller() {
  for (int r=0; r<5; r++) {
    displayIcon(propeller1, fastinterval);
    displayIcon(propeller2, fastinterval);
  }
}

void bdg() {
  for (int r=0; r<1; r++) {
    displayIcon(bdg1, interval/3);
    displayIcon(blank, fastinterval);
    displayIcon(bdg2, interval/3);
    displayIcon(blank, fastinterval);
    displayIcon(bdg3, interval/3);
    displayIcon(blank, fastinterval);
  }
}

void meter() {
  for (int r=0; r<6; r++) {
    displayIcon(meter1, fastinterval);
    displayIcon(meter2, fastinterval);
    displayIcon(meter3, fastinterval);
    displayIcon(meter4, fastinterval);
    displayIcon(meter5, fastinterval);
  }
}

void burst() {
  for (int r=0; r<9; r++) {
    displayIcon(burst1, fastinterval);
    displayIcon(burst2, fastinterval);
    displayIcon(burst3, fastinterval);
    displayIcon(burst2, fastinterval);
  }
}

void larsonColumns() {
  for (int r=0; r<4; r++) {
    displayIcon(larsonColumns1, fastinterval);
    displayIcon(larsonColumns2, fastinterval);
    displayIcon(larsonColumns3, fastinterval);
    displayIcon(larsonColumns4, fastinterval);
    displayIcon(larsonColumns5, fastinterval);
    displayIcon(larsonColumns4, fastinterval);
    displayIcon(larsonColumns3, fastinterval);
    displayIcon(larsonColumns2, fastinterval);
  }
}

void larsonRows() {
  for (int r=0; r<4; r++) {
    displayIcon(larsonRows1, fastinterval);
    displayIcon(larsonRows2, fastinterval);
    displayIcon(larsonRows3, fastinterval);
    displayIcon(larsonRows4, fastinterval);
    displayIcon(larsonRows5, fastinterval);
    displayIcon(larsonRows4, fastinterval);
    displayIcon(larsonRows3, fastinterval);
    displayIcon(larsonRows2, fastinterval);
  }
}


/* ------------------------------------------------------------------------------ */

void displayIcon(int* qin, int theDelay) {

  // regular version
  int q[25]={
    qin[4],  qin[3],  qin[2],  qin[1],  qin[0], 
    qin[5],  qin[6],  qin[7],  qin[8],  qin[9], 
    qin[14], qin[13], qin[12], qin[11], qin[10], 
    qin[15], qin[16], qin[17], qin[18], qin[19], 
    qin[24], qin[23], qin[22], qin[21], qin[20]
  };

  // flipped version
  int qF[25]={
    qin[20], qin[21], qin[22], qin[23], qin[24], 
    qin[19], qin[18], qin[17], qin[16], qin[15], 
    qin[10], qin[11], qin[12], qin[13], qin[14], 
    qin[9],  qin[8],  qin[7],  qin[6],  qin[5], 
    qin[0],  qin[1],  qin[2],  qin[3],  qin[4] 
  };

  strip.clear();

  // check if we need to use the flipped version or regular version
  for(int ii=0;ii<strip.numPixels();ii++) {
    if (flipped == true) {
      if(qF[ii]==1) { strip.setPixelColor(ii, strip.Color(brightFull, 0, 0)); }
    }
    else {
      if(q[ii]==1) { strip.setPixelColor(ii, strip.Color(brightFull, 0, 0)); }
    }
  }

  strip.show();
  delay(theDelay);

}




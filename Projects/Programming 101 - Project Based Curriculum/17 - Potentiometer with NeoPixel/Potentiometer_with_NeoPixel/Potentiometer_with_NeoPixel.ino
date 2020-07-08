/*
 * Potentiometer_with_NeoPixel.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 * Note: You will need to install the NeoPixel library by Adafruit
 * 
 */



// use the NeoPixel library in the sketch
#include <Adafruit_NeoPixel.h>

// set pin to send the signal to the NeoPixel
#define PIN 9

// set variable name for an analog input pin
int PotentiometerPin = A4;

// set variable name to hold the input value
int PotentiometerValue;

// set variable name to hold the adjusted value
int PotentiometerValueMapped;

// set how many NeoPixel modules we will use
#define NUM_LEDS 1

// set variable to hold number of NeoPixel modules
int numberOfPixels = NUM_LEDS;

// create the NeoPixel object
Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_LEDS, PIN, NEO_GRB + NEO_KHZ800);


// the setup runs once at the beginning of the sketch
void setup() {

  // by default the analog pins are set as input 
  // so we don't need to specify that in setup
  
  // prepare the NeoPixel(s) to receive data
  strip.begin();
  
  // set the NeoPixels to show
  strip.show();

}


// the loop runs forever after the setup is complete
void loop() {

  // assign the value of input using analogRead on the pin
  PotentiometerValue = analogRead(PotentiometerPin);

  // use the map function to set scale of 0-1023 to scale of 0-255
  PotentiometerValueMapped = map(PotentiometerValue, 0, 341, 0, 255);

  if ((PotentiometerValue > 0) and (PotentiometerValue <= 341)) {

    for (int i = 0; i < numberOfPixels; i++) {
  
      strip.setPixelColor(i, PotentiometerValueMapped, 0, 0);
      strip.show();
      strip.clear();

    }
    
  }

  if ((PotentiometerValue > 341) and (PotentiometerValue <= 682)) {

    for (int i = 0; i < numberOfPixels; i++) {
  
      strip.setPixelColor(i, 0, PotentiometerValueMapped, 0);
      strip.show();
      strip.clear();

    }
    
  }

  if ((PotentiometerValue > 682) and (PotentiometerValue <= 1023)) {

    for (int i = 0; i < numberOfPixels; i++) {
  
      strip.setPixelColor(i, 0, 0, PotentiometerValueMapped);
      strip.show();
      strip.clear();

    }
    
  }

}

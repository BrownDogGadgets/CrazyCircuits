/*
 * Pushbutton_with_NeoPixel.ino
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

// set variable name for a digital input pin
int ButtonPin = 1;

// set how many NeoPixel modules we will use
#define NUM_LEDS 1

// set variable to hold number of NeoPixel modules
int numberOfPixels = NUM_LEDS;

// set delay time in milliseconds between cycle
int timeBetween = 200;

// create the NeoPixel object
Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_LEDS, PIN, NEO_GRB + NEO_KHZ800);


// the setup runs once at the beginning of the sketch
void setup() {
  
  // the ButtonPin is set to function as an input with a special built-in pull-up resistor
  pinMode(ButtonPin, INPUT_PULLUP);
  
  // prepare the NeoPixel(s) to receive data
  strip.begin();
  
  // set the NeoPixels to show
  strip.show();
  
}


// the loop runs forever after the setup is complete
void loop() {
  
  // check if the button is pressed
  if (digitalRead(ButtonPin) == LOW) {
    
    // we loop through each of the connected NeoPixel modules
    for (int i = 0; i < numberOfPixels; i++) {
  
      strip.setPixelColor(i, 255, 0, 0);
      strip.show();
      delay(timeBetween);
      strip.clear();
      strip.setPixelColor(i, 0, 255, 50);
      strip.show();
      delay(timeBetween);
      strip.clear();
      strip.setPixelColor(i, 0, 0, 255);
      strip.show();
      delay(timeBetween);
      strip.clear();

    }

    
  }
  // this happens if the button is not pressed
  else {
    
    // we loop through each of the connected NeoPixel modules
    for (int i = 0; i < numberOfPixels; i++) {
    
      strip.setPixelColor(0, 1, 1, 1);
      strip.show();
      strip.clear();
    
    }
  
  }
  
}

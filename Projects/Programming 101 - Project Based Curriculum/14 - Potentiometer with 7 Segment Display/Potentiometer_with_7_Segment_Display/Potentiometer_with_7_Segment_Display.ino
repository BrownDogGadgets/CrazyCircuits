/*
 * Potentiometer_with_7_Segment_Display.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 * Note: You will need to install the TM1637 library by Avishay Orpaz
 * 
 */



#include <Arduino.h>
#include <TM1637Display.h>

// set variable name for an analog input pin
int PotentiometerPin = A0;

// set variable name to hold the input value
int PotentiometerValue;

// set variable name to hold the adjusted value
int PotentiometerValueMapped;

// set two variables for the 7 segment display
#define CLK 5   // connect CLK to pin 5 on the Robotics Board
#define DIO 6   // connect DIO to pin 6 on the Robotics Board

// set a variable to hold the count
int count = 0;

// set a variable to check if the button is up and not pressed
boolean buttonUp = false;

// set up a display object
TM1637Display display(CLK, DIO);


// the setup runs once at the beginning of the sketch
void setup() {
  
  // set the display brightness
  display.setBrightness(0x0f);

}


// the loop runs forever after the setup is complete
void loop() {

  // by default the analog pins are set as input 
  // so we don't need to specify that in setup

  // assign the value of input using analogRead on the pin
  PotentiometerValue = analogRead(PotentiometerPin);

  // use the map function to set scale of 0-1023 to scale of 0-200
  PotentiometerValueMapped = map(PotentiometerValue, 0, 1023, 0, 200);

  // show number on display
  display.showNumberDec(PotentiometerValueMapped, true);

  // stabilize display by reducing flicker
  delay(100);
  
}

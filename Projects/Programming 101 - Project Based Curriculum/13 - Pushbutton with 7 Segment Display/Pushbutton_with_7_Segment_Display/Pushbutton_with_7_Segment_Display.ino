/*
 * Pushbutton_with_7_Segment_Display.ino
 * 
 * https://www.browndoggadgets.com/
 *
 * Note: You will need to install the TM1637 library by Avishay Orpaz
 * 
 */



#include <Arduino.h>
#include <TM1637Display.h>

// set variable name for a digital input pin
int ButtonPin = 8;

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
  
  // the ButtonPin is set to function as an input with a special built-in pull-up resistor
  pinMode(ButtonPin, INPUT_PULLUP);

}


// the loop runs forever after the setup is complete
void loop() {

  // check if the button is pressed
  if (digitalRead(ButtonPin) == LOW) {

      // use ++ to add 1 to the count
      count++;

      // if pressed more than 9999 times go back to zero
      if (count > 9999) {
        count = 0;
      }

    // set button released to false since it was pressed
    buttonUp = false;

    // slight delay to prevent double presses
    delay(100);

  }

  // get stuck in a loop until the button is released
  while (buttonUp == false) {

    // check if the button is up/released
    if (digitalRead(ButtonPin) == HIGH) {
      buttonUp = true;
    }
    else {
      buttonUp = false;
    }

  }

  // show number on display
  display.showNumberDec(count, true);

}

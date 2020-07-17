/*
 * Pushbutton_with_Servo.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// use the Servo library in the sketch
#include <Servo.h>

// create a Servo object to control the servo
Servo theServo;

// set variable name for a digital output pin with Pulse Width Modulation
// pins 3, 5, 6, 9, 10, 11 support PWM
int ServoPin = 3;

// set variable name for an analog input pin
int ButtonPin = 8;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // set theServo to use the specified pin
  theServo.attach(ServoPin, 860, 2100);
  
  // the ButtonPin is set to function as an input with a special built-in pull-up resistor
  pinMode(ButtonPin, INPUT_PULLUP);

  // move the servo to 40 degrees
  theServo.write(0);
  
}


// the loop runs forever after the setup is complete
void loop() {
  
  // check if the button is pressed
  if (digitalRead(ButtonPin) == LOW) {
    // move the servo to 120 degrees
    theServo.write(180);
  }
  // this happens if the button is not pressed
  else {
    // move the servo to 40 degrees
    theServo.write(0);
  }
  
}

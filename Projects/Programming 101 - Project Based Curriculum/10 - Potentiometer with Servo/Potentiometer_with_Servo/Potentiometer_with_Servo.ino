/*
 * Potentiometer_with_Servo.ino
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
int PotentiometerPin = A4;

// set variable name to hold the input value
int PotentiometerValue;

// set variable name to hold the adjusted value
int PotentiometerValueMapped;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // by default the analog pins are set as input 
  // so we don't need to specify that in setup  
  
  // set theServo to use the specified pin and 
  // set a min and max pulse width in microseconds
  theServo.attach(ServoPin, 860, 2100);

}


// the loop runs forever after the setup is complete
void loop() {

  // assign the value of input using analogRead on the pin
  PotentiometerValue = analogRead(PotentiometerPin);

  // use the map function to set scale of 0-1023 to scale of 180-0
  PotentiometerValueMapped = map(PotentiometerValue, 0, 1023, 180, 0);

  // move the servo to the appropriate positiom
  theServo.write(PotentiometerValueMapped);

}

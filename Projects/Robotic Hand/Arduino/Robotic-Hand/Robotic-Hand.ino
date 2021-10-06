/*
 * Robotic-Hand.ino
 * 
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 * Full Buide Guide: https://browndoggadgets.dozuki.com/Guide/Robotic+Hand+(Robotics+Board)/384
 *   
 * We used the following components for this project:
 *   1 x Crazy Circuits Robotics Board <https://www.browndoggadgets.com/collections/tbm/products/crazy-circuits-robotics-board>
 *   3 x LEGO Compatible 270 Degree Servo <https://www.browndoggadgets.com/collections/tbm/products/lego-compatible-270-degree-servo>
 *   3 x Crazy Circuits Potentiometer Chip <https://www.browndoggadgets.com/products/potentiometer-chip>
 *   
 */



#include <Servo.h>

// set up three servo objects
Servo fingerServo1;
Servo fingerServo2;
Servo fingerServo3;

// set up pins to read potentiometers
int fingerPotentiometer1 = A0;
int fingerPotentiometer2 = A1;
int fingerPotentiometer3 = A2;

// set up variables for the potentiometers
int Potentiometer1Value;
int Potentiometer2Value;
int Potentiometer3Value;

// set up variables for the servos
int servoAngle1;
int servoAngle2;
int servoAngle3;


void setup() {

  // attach servos to the pins
  fingerServo1.attach(3);
  fingerServo2.attach(5);
  fingerServo3.attach(6);
  
}


void loop() {

  // read the potentiometers
  Potentiometer1Value = analogRead(fingerPotentiometer1);
  Potentiometer2Value = analogRead(fingerPotentiometer2);
  Potentiometer3Value = analogRead(fingerPotentiometer3);

  // change value scale from 0-1023 to 0-180
  servoAngle1 = map(Potentiometer1Value, 0, 1023, 0, 180);
  servoAngle2 = map(Potentiometer2Value, 0, 1023, 0, 180);
  servoAngle3 = map(Potentiometer3Value, 0, 1023, 0, 180);

  // move the servos to the angle specified
  fingerServo1.write(servoAngle1);
  fingerServo2.write(servoAngle2);
  fingerServo3.write(servoAngle3);

}

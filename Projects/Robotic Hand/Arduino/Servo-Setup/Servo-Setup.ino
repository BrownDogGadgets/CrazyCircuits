/*
 * Servo-Setup.ino
 * 
 */



#include <Servo.h>

// set up three servo objects
Servo fingerServo1;
Servo fingerServo2;
Servo fingerServo3;

// set the angle
int servoAngle = 90;


void setup() {

  // attach servos to the pins
  fingerServo1.attach(3);
  fingerServo2.attach(5);
  fingerServo3.attach(6);
  
}


void loop() {

  // move the servos to the angle specified
  fingerServo1.write(servoAngle);
  fingerServo2.write(servoAngle);
  fingerServo3.write(servoAngle);

}

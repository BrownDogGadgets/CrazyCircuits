/*
 * AvoidanceRobot.ino
 * 
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 * We used the following items for this robot:
 *   1 x Crazy Circuits Robotics Board <https://www.browndoggadgets.com/collections/tbm/products/crazy-circuits-robotics-board>
 *   2 x LEGO Compatible Continuous Rotation 360 Degree Servo <https://www.browndoggadgets.com/collections/tbm/products/lego-compatible-360-degree-servo>
 *   1 x HC-SR04 Ultrasonic Distance Sensor
 *   1 x USB Power Bank
 *
 */



// you will need the following libraries
#include <NewPing.h>
#include <Servo.h>

// set up the ultrasonic sensor, connect the echo and trigger wires to the specified pins
#define ECHO_PIN     3  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define TRIGGER_PIN  5  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define MAX_DISTANCE 800 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.
NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

int theDistance = 0;
int theDistanceTotal = 0;
int triggerDistance = 13; // set the distance in centimeters to trigger the action
int sampleVal = 5;

// make two servo objects
Servo servoLeft;
Servo servoRight;

// connect the signal wires (orange) to the specified pins
int servoPinLeft = 6;
int servoPinRight = 9;

// this is the midpoint of the servo, or where it is "stopped"
int midPoint = 1600;

// set the number for forward and backward movement
int forward = 1300;
int backward = 1800;


// set how many milliseconds your robot will move backwards for
int goBackwardTime = 1000;

// set how many milliseconds your robot will turn for
int turnRightTime = 1000;

// setup runs one time when things start
void setup() {

  Serial.begin(9600);
  Serial.println("Starting...");
  servoLeft.attach(servoPinLeft);
  servoRight.attach(servoPinRight);
  delay(500);
  
}

// loop runs forever
void loop() {

  delay(50); // delay between pings
  theDistance = sonar.ping_cm();

  // check if the distance sensor sees something
  if ((theDistance > 0) and (theDistance < triggerDistance)) {
    
    // distance sensor
    Serial.print("distance: ");
    Serial.print(theDistance);
    Serial.println("cm");
    
    goBackward(goBackwardTime);
    turnRight(turnRightTime);

  }

  
  else {
    
    // if the distance sensor does not see anything, keep moving forward
    goForward(100);

  }

}


// Below are the functions to move forward & backward, and turn left & right

void goForward(int theDelay) {

  servoLeft.writeMicroseconds(backward);
  servoRight.writeMicroseconds(forward);
  delay(theDelay);
  
}


void goBackward(int theDelay) {

  servoLeft.writeMicroseconds(forward);
  servoRight.writeMicroseconds(backward);
  delay(theDelay);
  
}


void turnLeft(int theDelay) {

  servoLeft.writeMicroseconds(forward);
  servoRight.writeMicroseconds(forward);
  delay(theDelay);
  
}

void turnRight(int theDelay) {

  servoLeft.writeMicroseconds(backward);
  servoRight.writeMicroseconds(backward);
  delay(theDelay);
  
}

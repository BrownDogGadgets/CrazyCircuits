/*
 * LEGO-Avoidance-Tank.ino
 * 
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 * Full Buide Guide: https://browndoggadgets.dozuki.com/Guide/LEGO+Avoidance+Tank/383
 *   
 * We used the following components for this project:
 *   1 x Crazy Circuits Robotics Board <https://www.browndoggadgets.com/collections/tbm/products/crazy-circuits-robotics-board>
 *   2 x LEGO Compatible Continuous Rotation 360 Degree Servo <https://www.browndoggadgets.com/collections/tbm/products/lego-compatible-360-degree-servo>
 *   1 x HC-SR04 Ultrasonic Distance Sensor <https://www.browndoggadgets.com/products/distance-sensor>
 *   Crazy Circuits Screw Terminal Chip <https://www.browndoggadgets.com/products/screw-terminal-chip>
 *   3AA Battery Holder <https://www.browndoggadgets.com/products/aa-battery-holder-tripple>
 *   
 */



// you will need the following libraries
#include <NewPing.h>
#include <Servo.h>

// set up the ultrasonic sensor, connect the echo and trigger wires to the specified pins
#define ECHO_PIN     3  // Arduino pin connected to echo pin on the ultrasonic sensor
#define TRIGGER_PIN  5  // Arduino pin connected to trigger pin on the ultrasonic sensor
#define MAX_DISTANCE 400 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm
NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance

int theDistance = 0;
int theDistanceTotal = 0;
int triggerDistance = 20; // set the distance in centimeters to trigger the action

// create two servo objects
Servo servoLeft;
Servo servoRight;

// connect the signal wires (orange) to the specified pins
int servoPinLeft  = 6;
int servoPinRight = 9;

// this is the midpoint of the servo, or where it is "stopped"
int midPoint = 1500;

// set the number for forward and backward movement
int forward  = 1900;
int backward = 1100;


// setup runs one time when things start
void setup() {

  Serial.begin(115200);
  Serial.println("Starting...");
  servoLeft.attach(servoPinLeft);
  servoRight.attach(servoPinRight);

  // blink the LED 5 times before starting
  pinMode(13, OUTPUT);
  for (int i = 0; i < 5; i++) {
    digitalWrite(13, HIGH);
    delay(500);
    digitalWrite(13, LOW);
    delay(500);
  }
  
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
    
    goBackward(1000);
    stopMoving(200);
    turnLeft(1500);
    stopMoving(200);

  }
  else {
    
    // if the distance sensor does not see anything, keep moving forward
    goForward(50);

  }

}


// Below are the functions to move forward & backward, turn left & right, and stop

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


void stopMoving(int theDelay) {

  servoLeft.writeMicroseconds(midPoint);
  servoRight.writeMicroseconds(midPoint);
  delay(theDelay);
  
}

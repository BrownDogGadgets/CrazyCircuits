/*
 * Confetti-Drop.ino
 * 
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 * 
 * We used the following items for this project:
 *   1 x Crazy Circuits Robotics Board <https://www.browndoggadgets.com/collections/tbm/products/crazy-circuits-robotics-board>
 *   1 x LEGO Compatible 270 Degree Servo <https://www.browndoggadgets.com/products/lego-compatible-270-degree-servo>
 *   1 x HC-SR04 Ultrasonic Distance Sensor <https://www.browndoggadgets.com/products/distance-sensor>
 */


// you will need the following libraries
#include <NewPing.h>
#include <Servo.h>

// set up the ultrasonic sensor, connect the echo and trigger wires to the specified pins
#define ECHO_PIN     3   // Arduino pin tied to echo pin on the ultrasonic sensor
#define TRIGGER_PIN  5   // Arduino pin tied to trigger pin on the ultrasonic sensor
#define MAX_DISTANCE 800 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm
NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

int theDistance = 0;
int triggerDistance = 60; // set the distance in centimeters to trigger the action

// make the servo objects
Servo myServo;

// connect the signal wires (orange) to the specified pins
int servoPin = 6;

// set the number for forward and backward movement
int cupHome = 0;
int cupDump = 100;


// setup runs one time when things start
void setup() {

  Serial.begin(9600);
  Serial.println("Starting...");
  myServo.attach(servoPin);
  myServo.write(cupHome);
  delay(1000 * 10);  // 10 second delay
  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);
  
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

    // dump the cup
    myServo.write(cupDump);
    delay(500);

    // shake the cup
    for (int i=0; i < 5; i++) {
      myServo.write(cupDump);
      delay(250);
      myServo.write(cupDump-20);
      delay(250);
    }

    // put the cup back up
    myServo.write(cupHome);
    delay(1000);

    // reset the distance
    theDistance = 0;

  }

}

/*
 * KeepYourDistance.ino
 * 
 * Full project write up and parts can be found at:
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 */


#include <NewPing.h>
#include <NewTone.h>

#define ECHO_PIN     5  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define TRIGGER_PIN  6  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define MAX_DISTANCE 500 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.
NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.


int theDistance = 0;
int theDistanceTotal = 0;
int triggerDistance = 200; // set the distance in centimeters to trigger the action
int sampleVal = 5;

int speakerPin = 8;
int ledPin = 9;
int myTone = 500;


void setup() {
  
  Serial.begin(9600);
  Serial.println("Starting...");
  pinMode(speakerPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
  NewTone(speakerPin, myTone);
  delay(500);
  noNewTone(speakerPin);
  
}


void loop() {

  theDistance = sonar.ping_cm();
  
  // distance sensor
  Serial.print("distance: ");
  Serial.print(theDistance);
  Serial.println("cm");

  myTone = map(theDistance, triggerDistance, 0, 50, 600);

  if ((theDistance > 0) and (theDistance < triggerDistance)) {
    
    // LED
    digitalWrite(ledPin, HIGH);

    // Piezo
    NewTone(speakerPin, myTone);
    
    // reset
    theDistance = 0;
    theDistanceTotal = 0;
    
  }
  else {

    digitalWrite(ledPin, LOW);
    noNewTone(speakerPin);

  }

  delay(50); // delay between pings
  
}

// end

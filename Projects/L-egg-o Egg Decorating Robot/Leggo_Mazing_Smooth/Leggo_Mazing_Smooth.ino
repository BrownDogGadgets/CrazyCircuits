// Code for DIY L"egg"o Amazing Egg Decorator with Lego
// By Natasha Dzurny for Brown Dog Gadgets

// Circuit: Connect Potentiometers to A0, A3 and A5, Connect the grey servos to D3 and D5, and the orange servo to D6



#include <Servo.h> //Include the library that lets you command the servo

Servo servoAngle;                 // Servos
Servo servoTilt;
Servo servoDrive;

const int servoAnglePin = 3;          // Servo Pins
const int servoTiltPin = 5;
const int servoDrivePin = 6;

const int numReadings = 10;          // how many readings does the code average to smooth the servo motion?

int readingsRight[numReadings];      // the reading from each potentiometer
int readingsMid[numReadings];     
int readingsLeft[numReadings];      
int readIndexRight = 0;              // the index of the current reading
int readIndexMid = 0;            
int readIndexLeft = 0;            
int totalRight = 0;                  // the total of all current readings
int totalMid = 0;               
int totalLeft = 0;                
int averageRight = 0;                // the average
int averageMid = 0;           
int averageLeft = 0;             


int readLeft = A0;                  // where to read the analog pins
int readMid = A3;
int readRight = A5;

int leftPosition;                   // the mapped position of the servos
int midPosition;
int rightPosition;



void setup() {
  servoAngle.attach(servoAnglePin);  // Attach Servos
  servoTilt.attach(servoTiltPin);
  servoDrive.attach(servoDrivePin);
  Serial.begin(9600);

  for (int thisReading = 0; thisReading < numReadings; thisReading++) { // Set all readings to 0
    readingsRight[thisReading] = 0;
    readingsMid[thisReading] = 0;
    readingsLeft[thisReading] = 0;
  }

}

void loop() {

  totalLeft = totalLeft - readingsLeft[readIndexLeft];      // Remove the current reading
  totalMid = totalMid - readingsMid[readIndexMid];
  totalRight = totalRight - readingsRight[readIndexRight];

  readingsLeft[readIndexLeft] = analogRead(readLeft);       // Read the potentiometers
  readingsMid[readIndexMid] = analogRead(readMid);
  readingsRight[readIndexRight] = analogRead(readRight);

  totalLeft = totalLeft + readingsLeft[readIndexLeft];      // Add the new reading
  totalMid = totalMid + readingsMid[readIndexMid];
  totalRight = totalRight + readingsRight[readIndexRight];

  readIndexLeft = readIndexLeft + 1;                         // Move the index forward one
  readIndexMid = readIndexMid + 1;
  readIndexRight = readIndexRight + 1;

  if (readIndexLeft >= numReadings) {                        // Return index to 0 if it is greater than or equal to the number of Readings setting
    readIndexLeft = 0;
  }
  if (readIndexMid >= numReadings) {
    readIndexMid = 0;
  }
  if (readIndexRight >= numReadings) {
    readIndexRight = 0;
  }


  averageLeft = totalLeft / numReadings;                  // Divide to get average
  averageMid = totalMid / numReadings;
  averageRight = totalRight / numReadings;


  // Map averages to positions of servos:
  leftPosition = map(averageLeft, 0, 1023, 0, 50); // = degrees the motor can spin the arm left to right = 50 (change if necessary)
  midPosition = map(averageMid, 0, 1023, 0, 45); // = degrees that the motor can tilt the pen up and down = 45 (change if necessary)
  rightPosition = map(averageRight, 0, 1023, 0, 179); // total degrees for a continuous rotation servo (DON'T change)

  Serial.print("leftPosition: ");         // print the values for testing
  Serial.print(leftPosition);
  Serial.print("  midPosition: ");
  Serial.print(midPosition);

  servoAngle.write(leftPosition);         // Move the servos to the position
  servoTilt.write(midPosition);

  if (rightPosition >= 80) {              // The continuous servo stands still at 90 degrees, and moves in one direction or the other at 0 or 180 degrees
    servoDrive.write(rightPosition);      // The larger or lower the number, the faster the servo moves in that direction (fll speed at 0 and 180, slower toward 90)
  } else if (rightPosition <= 179) {
    servoDrive.write(rightPosition);
  } else if (rightPosition >= 81 && rightPosition <= 99) { // If the position is close to 90, also stand still so that you don't have to be exact
    servoDrive.write(90);
  }

  Serial.print("  rightPosition: ");      // print the values for testing
  Serial.println(rightPosition);

  delay(15);                              // Give the code a little rest

}

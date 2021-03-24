/*
 * Omni_Wheel_Robot.ino
 * 
 * Full Guide: https://browndoggadgets.dozuki.com/Guide/Omni+Wheel+Robot/310
 * 
 * Pete Prodoehl <pete@browndoggadgets.com>
 * 
 */

#include <Servo.h>

// create the 4 servos
Servo servoA;
Servo servoB;
Servo servoC;
Servo servoD;

// set the values for stopped, forward, and backward
int halt = 1500;
int rotA = 700;
int rotB = 2300;

int fullRotation = 1180; // this may need adjustment

void setup() {

  // attach the four servos
  servoA.attach(3);
  servoB.attach(5);
  servoC.attach(6);
  servoD.attach(9);

  // wait 2 seconds before starting
  delay(2000);

}

void loop() {

  spinLeft(fullRotation * 4);
  
  forwardLeftRoll(1000);
  
  forwardRightRoll(1000);
  
  backwardRightRoll(1000);
  
  backwardLeftRoll(1000);

  spinRight(fullRotation * 4);
  
  forwardRoll(500);
  leftRoll(500);
  backwardRoll(500);
  rightRoll(500);

  spinRight(fullRotation * 4);
  
  forwardRoll(1000);
  leftRoll(1000);
  backwardRoll(1000);
  rightRoll(1000);


  spinLeft(fullRotation / 2);
  
  forwardRoll(500);
  leftRoll(500);
  backwardRoll(500);
  rightRoll(500);

  spinRight(fullRotation / 2);
  
  forwardRoll(1000);
  leftRoll(1000);
  backwardRoll(1000);
  rightRoll(1000);


}



/* -------- functions are below -------- */

// each function take a parameter which is
// the number of milliseconds it should run
// 1000 milliseconds = 1 second


/* -------- move straight -------- */

void forwardRoll(int howLong) {
  allStop();
  servoA.write(rotA);
  servoB.write(rotB);
  servoC.write(halt);
  servoD.write(halt);
  delay(howLong);
}

void backwardRoll(int howLong) {
  allStop();
  servoA.write(rotB);
  servoB.write(rotA);
  servoC.write(halt);
  servoD.write(halt);
  delay(howLong);
}

void leftRoll(int howLong) {
  allStop();
  servoA.write(halt);
  servoB.write(halt);
  servoC.write(rotA);
  servoD.write(rotB);
  delay(howLong);
}

void rightRoll(int howLong) {
  allStop();
  servoA.write(halt);
  servoB.write(halt);
  servoC.write(rotB);
  servoD.write(rotA);
  delay(howLong);
}


/* -------- move on an angle -------- */

void forwardLeftRoll(int howLong) {
  allStop();
  servoA.write(rotB);
  servoB.write(rotA);
  servoC.write(rotA);
  servoD.write(rotB);
  delay(howLong);
}

void forwardRightRoll(int howLong) {
  allStop();
  servoA.write(rotB);
  servoB.write(rotA);
  servoC.write(rotB);
  servoD.write(rotA);
  delay(howLong);
}

void backwardRightRoll(int howLong) {
  allStop();
  servoA.write(rotA);
  servoB.write(rotB);
  servoC.write(rotB);
  servoD.write(rotA);
  delay(howLong);
}

void backwardLeftRoll(int howLong) {
  allStop();
  servoA.write(rotA);
  servoB.write(rotB);
  servoC.write(rotA);
  servoD.write(rotB);
  delay(howLong);
}


/* -------- spin around -------- */

void spinRight(int howLong) {
  allStop();
  servoA.write(rotA);
  servoB.write(rotA);
  servoC.write(rotA);
  servoD.write(rotA);
  delay(howLong);
}

void spinLeft(int howLong) {
  allStop();
  servoA.write(rotB);
  servoB.write(rotB);
  servoC.write(rotB);
  servoD.write(rotB);
  delay(howLong);
}


/* -------- stop moving -------- */

void allStop() {
  servoA.write(halt);
  servoB.write(halt);
  servoC.write(halt);
  servoD.write(halt);
  delay(500);
}

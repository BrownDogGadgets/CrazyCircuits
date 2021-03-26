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
int rotX = 700;
int rotY = 2300;

int quarterRotation = 1290; // this may need adjustment

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

  forwardLeftRoll(500);
  backwardRightRoll(500);
  forwardRightRoll(500);
  backwardLeftRoll(500);

  forwardRoll(500);
  leftRoll(500);
  backwardRoll(500);
  rightRoll(500);

  spinLeft(quarterRotation * 4);
  spinRight(quarterRotation * 4);

  forwardLeftRoll(1000);
  backwardRightRoll(1000);
  forwardRightRoll(1000);
  backwardLeftRoll(1000);

  forwardRoll(1000);
  leftRoll(1000);
  backwardRoll(1000);
  rightRoll(1000);

}



/* ------------ functions are below ------------ */

// each function take a parameter which is
// the number of milliseconds it should run
// 1000 milliseconds = 1 second


/* -------- move straight -------- */

void forwardRoll(int howLong) {
  allStop();
  servoA.write(rotX);
  servoB.write(rotY);
  servoC.write(halt);
  servoD.write(halt);
  delay(howLong);
}

void backwardRoll(int howLong) {
  allStop();
  servoA.write(rotY);
  servoB.write(rotX);
  servoC.write(halt);
  servoD.write(halt);
  delay(howLong);
}

void leftRoll(int howLong) {
  allStop();
  servoA.write(halt);
  servoB.write(halt);
  servoC.write(rotX);
  servoD.write(rotY);
  delay(howLong);
}

void rightRoll(int howLong) {
  allStop();
  servoA.write(halt);
  servoB.write(halt);
  servoC.write(rotY);
  servoD.write(rotX);
  delay(howLong);
}


/* -------- move on an angle -------- */

void forwardLeftRoll(int howLong) {
  allStop();
  servoA.write(rotY);
  servoB.write(rotX);
  servoC.write(rotX);
  servoD.write(rotY);
  delay(howLong);
}

void forwardRightRoll(int howLong) {
  allStop();
  servoA.write(rotY);
  servoB.write(rotX);
  servoC.write(rotY);
  servoD.write(rotX);
  delay(howLong);
}

void backwardRightRoll(int howLong) {
  allStop();
  servoA.write(rotX);
  servoB.write(rotY);
  servoC.write(rotY);
  servoD.write(rotX);
  delay(howLong);
}

void backwardLeftRoll(int howLong) {
  allStop();
  servoA.write(rotX);
  servoB.write(rotY);
  servoC.write(rotX);
  servoD.write(rotY);
  delay(howLong);
}


/* -------- spin around -------- */

void spinRight(int howLong) {
  allStop();
  servoA.write(rotX);
  servoB.write(rotX);
  servoC.write(rotX);
  servoD.write(rotX);
  delay(howLong);
}

void spinLeft(int howLong) {
  allStop();
  servoA.write(rotY);
  servoB.write(rotY);
  servoC.write(rotY);
  servoD.write(rotY);
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

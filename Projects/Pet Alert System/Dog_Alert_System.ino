/*
 * Dog_Alert_System.ino
 * 
 * Light some things up!
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * 2017-04-30
 * 
 */

#include <Servo.h> 

int touchPinA = 22;
int touchPinB = 23;

int servoPin = 3;
int ledPin = 4;
int speakerPin = 9;

Servo servoFlag;

int servoStart = 30;
int servoEnd = 120;

int restA;
int restB;

int pinLevel = 200; // may need adjusting

int ledPinCal = 13;

int value1;

long time = 0;

int timePeriod = 2000;
int displace1 = 200;

int theStatus = 0;

int played = 0;

void setup() {
  Serial.begin(9600); // for debug
  delay(1500);
  pinMode(ledPinCal, OUTPUT);
  servoFlag.attach(servoPin);
  servoFlag.write(servoStart);
  calibrate();
}


void loop() {

  // check for touch
  int valA = (touchRead(touchPinA));

  if (valA > (restA + pinLevel)) {
    Serial.print("valA: ");
    Serial.println(valA);
    theStatus = 1;
  }

  // check for touch
  int valB = (touchRead(touchPinB));

  if (valB > (restB + pinLevel)) {
    Serial.print("valB: ");
    Serial.println(valB);
    theStatus = 0;
    played = 0;
  }


  if (theStatus == 0) {
    offLEDs();
  }

  if (theStatus == 1) {
    fadeLEDs();
    playSound();
  }




}




// run calibration at startup

int calibratePin (int thePin) {

  int calRun = 50;
  int calVal = 0;
  int calValFull = 0;
  int calResult = 0;

  for (int i = 0; i < calRun; i++) {
    calVal = (touchRead(thePin));
    calValFull = calValFull + calVal;
    delay(10);
  }

  calResult = calValFull / calRun;

  return calResult;

}


void calibrate () {

  digitalWrite(ledPinCal, HIGH);
  Serial.println("Starting calibration...");

  restA = calibratePin(touchPinA);
  Serial.print("restA: ");
  Serial.println(restA);

  restB = calibratePin(touchPinB);
  Serial.print("restB: ");
  Serial.println(restB);

  delay(1000);
  digitalWrite(ledPinCal, LOW);

}


void fadeLEDs() {

  servoFlag.write(servoEnd);
  time = millis();
  value1 = 128 + 127 * cos(2 * PI / timePeriod * (displace1 - time));
  analogWrite(ledPin, value1);

}


void offLEDs() {

  servoFlag.write(servoStart);
  analogWrite(ledPin, 0);

}


void playSound() {

  if (played <= 1) {
    tone(speakerPin, 523);
    delay(500);
    tone(speakerPin, 784);
    delay(1200);
    noTone(speakerPin);
    played++;
  }

}


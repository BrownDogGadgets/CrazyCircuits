/*
 * Scorekeeper.ino
 * 
 * Let's keep score!
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * 2017-04-30
 * 
 */

int touchPinA = 15;

int ledPinA =  3;
int ledPinB =  4;
int ledPinC =  9;
int ledPinD = 10;

int touchPinB = 19;

int ledPinE = 14;
int ledPinF = 16;
int ledPinG = 17;
int ledPinH = 18;

int ledPinCal = 13;

int speakerPin = 23;

int restA;
int restB;

int pinLevel = 200; // may need adjusting

int touchPushCounterA = 0;
int touchStateA = 0;
int lastTouchStateA = 0;

int touchPushCounterB = 0;
int touchStateB = 0;
int lastTouchStateB = 0;


void setup() {
  Serial.begin(9600); // for debug
  delay(1500);
  pinMode(ledPinCal, OUTPUT);
  pinMode(ledPinA, OUTPUT);
  pinMode(ledPinB, OUTPUT);
  pinMode(ledPinC, OUTPUT);
  pinMode(ledPinD, OUTPUT);
  pinMode(ledPinE, OUTPUT);
  pinMode(ledPinF, OUTPUT);
  pinMode(ledPinG, OUTPUT);
  pinMode(ledPinH, OUTPUT);
  calibrate();
}


void loop() {

  // check for A score
  int valA = (touchRead(touchPinA));

  if (valA > (restA + pinLevel)) {
    Serial.print("valA: ");
    Serial.println(valA);
    touchStateA = 1;
  }
  else {
    touchStateA = 0;
  }

  if (touchStateA != lastTouchStateA) {
    if (touchStateA == 1) {
      touchPushCounterA++;
    }
    delay(50);
    lastTouchStateA = touchStateA;
  }

  if (touchPushCounterA == 1) {
    digitalWrite(ledPinA, HIGH);
  }
  else if (touchPushCounterA == 2) {
    digitalWrite(ledPinA, HIGH);
    digitalWrite(ledPinB, HIGH);
  }
  else if (touchPushCounterA == 3) {
    digitalWrite(ledPinA, HIGH);
    digitalWrite(ledPinB, HIGH);
    digitalWrite(ledPinC, HIGH);
  }
  else if (touchPushCounterA == 4) {
    digitalWrite(ledPinA, HIGH);
    digitalWrite(ledPinB, HIGH);
    digitalWrite(ledPinC, HIGH);
    digitalWrite(ledPinD, HIGH);
    playSound();
  }
  else {
    digitalWrite(ledPinA, LOW);
    digitalWrite(ledPinB, LOW);
    digitalWrite(ledPinC, LOW);
    digitalWrite(ledPinD, LOW);
    touchPushCounterA = 0;
  }


  // check for B score
  int valB = (touchRead(touchPinB));

  if (valB > (restB + pinLevel)) {
    Serial.print("valB: ");
    Serial.println(valB);
    touchStateB = 1;
  }
  else {
    touchStateB = 0;
  }

  if (touchStateB != lastTouchStateB) {
    if (touchStateB == 1) {
      touchPushCounterB++;
    }
    delay(50);
    lastTouchStateB = touchStateB;
  }

  if (touchPushCounterB == 1) {
    digitalWrite(ledPinE, HIGH);
  }
  else if (touchPushCounterB == 2) {
    digitalWrite(ledPinE, HIGH);
    digitalWrite(ledPinF, HIGH);
  }
  else if (touchPushCounterB == 3) {
    digitalWrite(ledPinE, HIGH);
    digitalWrite(ledPinF, HIGH);
    digitalWrite(ledPinG, HIGH);
  }
  else if (touchPushCounterB == 4) {
    digitalWrite(ledPinE, HIGH);
    digitalWrite(ledPinF, HIGH);
    digitalWrite(ledPinG, HIGH);
    digitalWrite(ledPinH, HIGH);
    playSound();
  }
  else {
    digitalWrite(ledPinE, LOW);
    digitalWrite(ledPinF, LOW);
    digitalWrite(ledPinG, LOW);
    digitalWrite(ledPinH, LOW);
    touchPushCounterB = 0;
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


void playSound() {
  
  tone(speakerPin, 523);
  delay(100);
  tone(speakerPin, 659);
  delay(100);
  tone(speakerPin, 784);
  delay(100);
  noTone(speakerPin);

}


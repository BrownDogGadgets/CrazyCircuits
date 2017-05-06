/*
 * Nasa_Shirt.ino
 * 
 * Let's fade some LEDs in space!
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * 2017-04-30
 * 
 */

int touchPinA = 15;

int restA;

int pinLevel = 200; // may need adjusting

int ledPinCal = 13;

int touchPushCounter = 0;   // counter for the number of touches
int touchState = 0;         // current state of the pin
int lastTouchState = 0;     // previous state of the pin

int value1, value2, value3, value4, value5;

long time = 0;

int timePeriod = 2000;
int displace1 = 200;
int displace2 = 400;
int displace3 = 600;
int displace4 = 800;
int displace5 = 900;

int ledPinA =  3;
int ledPinB =  4;
int ledPinC =  9;
int ledPinD = 10;
int ledPinE = 23;

void setup() {
  Serial.begin(9600); // for debug
  delay(1500);
  pinMode(ledPinCal, OUTPUT);
  calibrate();
}


void loop() {

  int valA = (touchRead(touchPinA));

  if (valA > (restA + pinLevel)) {
    Serial.print("valA: ");
    Serial.println(valA);
    touchState = 1;
  }
  else {
    touchState = 0;
  }

  if (touchState != lastTouchState) {
    if (touchState == 1) {
      touchPushCounter++;
      Serial.println("Touched!");
    }
    else {
      Serial.println("Not touched...");
    }
    delay(50);
    lastTouchState = touchState;
  }
  if (touchPushCounter % 2 == 1) {
    fadeLEDs();
  }
  else {
    offLEDs();
  }


  time = millis();
  value5 = 128 + 127 * cos(2 * PI / timePeriod * (displace5 - time));
  analogWrite(ledPinE, value5);

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

  delay(1000);
  digitalWrite(ledPinCal, LOW);

}


void fadeLEDs() {

  time = millis();
  value1 = 128 + 127 * cos(2 * PI / timePeriod * (displace1 - time));
  value2 = 128 + 127 * cos(2 * PI / timePeriod * (displace2 - time));
  value3 = 128 + 127 * cos(2 * PI / timePeriod * (displace3 - time));
  value4 = 128 + 127 * cos(2 * PI / timePeriod * (displace4 - time));
  analogWrite(ledPinA, value1);
  analogWrite(ledPinB, value2);
  analogWrite(ledPinC, value3);
  analogWrite(ledPinD, value4);

}


void offLEDs() {

  analogWrite(ledPinA, 0);
  analogWrite(ledPinB, 0);
  analogWrite(ledPinC, 0);
  analogWrite(ledPinD, 0);

}


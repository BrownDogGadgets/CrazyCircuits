/*
 * Status_Light.ino
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

int touchPinA = 3;
int touchPinB = 15;

int ledPinA = 4;
int ledPinB = 16;

int restA;
int restB;

int pinLevel = 200; // may need adjusting

int ledPinCal = 13;

int value1;

long time = 0;

int timePeriod = 2000;
int displace1 = 200;

int lightStatus = 0;

void setup() {
  Serial.begin(9600); // for debug
  delay(1500);
  pinMode(ledPinCal, OUTPUT);
  pinMode(ledPinB, OUTPUT);
  calibrate();
}


void loop() {

  // check for touch
  int valA = (touchRead(touchPinA));

  if (valA > (restA + pinLevel)) {
    Serial.print("valA: ");
    Serial.println(valA);
    lightStatus = 1;
  }

  // check for touch
  int valB = (touchRead(touchPinB));

  if (valB > (restB + pinLevel)) {
    Serial.print("valB: ");
    Serial.println(valB);
    lightStatus = 0;
  }


  if (lightStatus == 0) {
    digitalWrite(ledPinB, HIGH);
    offLEDs();
  }

  if (lightStatus == 1) {
    digitalWrite(ledPinB, LOW);
    fadeLEDs();
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

  time = millis();
  value1 = 128 + 127 * cos(2 * PI / timePeriod * (displace1 - time));
  analogWrite(ledPinA, value1);

}


void offLEDs() {

  analogWrite(ledPinA, 0);

}


/*
 * CrazyTouch.ino
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * 2017-01-27
 * 
 */


int touchPinA = 15;
int touchPinB = 16;
int touchPinC = 17;
int touchPinD = 18;

int restA;
int restB;
int restC;
int restD;

int pinLevel = 200; // may need adjusting

int ledPinCal = 13;

int ledPinA = 12;
int ledPinB = 9;
int ledPinC = 4;
int ledPinD = 1;

void setup() {
  Serial.begin(9600);
  delay(1500);
  pinMode(ledPinCal, OUTPUT);
  pinMode(ledPinA, OUTPUT);
  pinMode(ledPinB, OUTPUT);
  pinMode(ledPinC, OUTPUT);
  pinMode(ledPinD, OUTPUT);
  calibrate();
}


void loop() {

  int valA = (touchRead(touchPinA));
  int valB = (touchRead(touchPinB));
  int valC = (touchRead(touchPinC));
  int valD = (touchRead(touchPinD));

  if (valA > (restA + pinLevel)) {
    Serial.println(valA);
    digitalWrite(ledPinA, HIGH);
  }
  else {
    digitalWrite(ledPinA, LOW);
  }

  if (valB > (restB + pinLevel)) {
    Serial.println(valB);
    digitalWrite(ledPinB, HIGH);
  }
  else {
    digitalWrite(ledPinB, LOW);
  }

  if (valC > (restC + pinLevel)) {
    Serial.println(valC);
    digitalWrite(ledPinC, HIGH);
  }
  else {
    digitalWrite(ledPinC, LOW);
  }

  if (valD > (restD + pinLevel)) {
    Serial.println(valD);
    digitalWrite(ledPinD, HIGH);
  }
  else {
    digitalWrite(ledPinD, LOW);
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
  
  restC = calibratePin(touchPinC);
  Serial.print("restC: ");
  Serial.println(restC);

  restD = calibratePin(touchPinD);
  Serial.print("restD: ");
  Serial.println(restD);
  
  digitalWrite(ledPinCal, LOW);
  delay(2000);
  
}


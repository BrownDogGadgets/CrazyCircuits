/*
 * CrazyLamp.ino
 * 
 * Touch sensors with LEDsd
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * 2017-10-08
 * 
 */


// touch pins to control LEDs
int touchPinA = 23;
int touchPinB = 22;
int touchPinC = 19;
int touchPinD = 18;
int touchPinE = 17;
int touchPinF = 16;
int touchPinG = 15;

// how many LEDs should be on
int lightVal = 0;

// rest variables
int restA;
int restB;
int restC;
int restD;
int restE;
int restF;
int restG;

int pinLevel = 200; // may need adjusting

// turn on built-in LED when calibrating...
// you should wait until LED is off before touching anything
int ledPinCal = 13;

int ledPinA = 2;
int ledPinB = 3;
int ledPinC = 4;
int ledPinD = 5;
int ledPinE = 8;
int ledPinF = 9;

void setup() {
  
  Serial.begin(9600);
  
  pinMode(ledPinCal, OUTPUT);
  pinMode(ledPinA, OUTPUT);
  pinMode(ledPinB, OUTPUT);
  pinMode(ledPinC, OUTPUT);
  pinMode(ledPinD, OUTPUT);
  pinMode(ledPinE, OUTPUT);
  pinMode(ledPinF, OUTPUT);
  calibrate();

}


void loop() {

  // create variables for each touch point
  int valA = (touchRead(touchPinA));
  int valB = (touchRead(touchPinB));
  int valC = (touchRead(touchPinC));
  int valD = (touchRead(touchPinD));
  int valE = (touchRead(touchPinE));
  int valF = (touchRead(touchPinF));
  int valG = (touchRead(touchPinG));

  // check if anything is being touched
  if (valA > (restA + pinLevel)) {
    lightVal = 0;
  }
  
  if (valB > (restB + pinLevel)) {
    lightVal = 1;
  }

  if (valC > (restC + pinLevel)) {
     lightVal = 2;
  }
  
  if (valD > (restD + pinLevel)) {
     lightVal = 3;
  }

  if (valE > (restE + pinLevel)) {
     lightVal = 4;
  }

  if (valF > (restF + pinLevel)) {
     lightVal = 5;
  }

  if (valG > (restG + pinLevel)) {
     lightVal = 6;
  }


  // turn on LEDs based on what is being touched
  switch(lightVal) {
    case 0:
      digitalWrite(ledPinA, LOW);
      digitalWrite(ledPinB, LOW);
      digitalWrite(ledPinC, LOW);
      digitalWrite(ledPinD, LOW);
      digitalWrite(ledPinE, LOW);
      digitalWrite(ledPinF, LOW);
      break;
    case 1:
      digitalWrite(ledPinA, HIGH);
      digitalWrite(ledPinB, LOW);
      digitalWrite(ledPinC, LOW);
      digitalWrite(ledPinD, LOW);
      digitalWrite(ledPinE, LOW);
      digitalWrite(ledPinF, LOW);
      break;
    case 2:
      digitalWrite(ledPinA, HIGH);
      digitalWrite(ledPinB, HIGH);
      digitalWrite(ledPinC, LOW);
      digitalWrite(ledPinD, LOW);
      digitalWrite(ledPinE, LOW);
      digitalWrite(ledPinF, LOW);
      break;
    case 3:
      digitalWrite(ledPinA, HIGH);
      digitalWrite(ledPinB, HIGH);
      digitalWrite(ledPinC, HIGH);
      digitalWrite(ledPinD, LOW);
      digitalWrite(ledPinE, LOW);
      digitalWrite(ledPinF, LOW);
      break;
    case 4:
      digitalWrite(ledPinA, HIGH);
      digitalWrite(ledPinB, HIGH);
      digitalWrite(ledPinC, HIGH);
      digitalWrite(ledPinD, HIGH);
      digitalWrite(ledPinE, LOW);
      digitalWrite(ledPinF, LOW);
      break;
    case 5:
      digitalWrite(ledPinA, HIGH);
      digitalWrite(ledPinB, HIGH);
      digitalWrite(ledPinC, HIGH);
      digitalWrite(ledPinD, HIGH);
      digitalWrite(ledPinE, HIGH);
      digitalWrite(ledPinF, LOW);
      break;
    case 6:
      digitalWrite(ledPinA, HIGH);
      digitalWrite(ledPinB, HIGH);
      digitalWrite(ledPinC, HIGH);
      digitalWrite(ledPinD, HIGH);
      digitalWrite(ledPinE, HIGH);
      digitalWrite(ledPinF, HIGH);
      break;
    default:
      digitalWrite(ledPinA, LOW);
      digitalWrite(ledPinB, LOW);
      digitalWrite(ledPinC, LOW);
      digitalWrite(ledPinD, LOW);
      digitalWrite(ledPinE, LOW);
      digitalWrite(ledPinF, LOW);
      break;
  }


}



// run calibration at startup

int calibratePin (int thePin) {

  int calRun = 20;
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

  restE = calibratePin(touchPinE);
  Serial.print("restE: ");
  Serial.println(restE);

  restF = calibratePin(touchPinF);
  Serial.print("restF: ");
  Serial.println(restF);

  restG = calibratePin(touchPinG);
  Serial.print("restG: ");
  Serial.println(restG);
  
  digitalWrite(ledPinCal, LOW);
  delay(10);
  
}


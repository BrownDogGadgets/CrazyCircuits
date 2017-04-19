/*
 * TeensyPiano.ino
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * 2017-03-11
 * 
 * https://www.arduino.cc/en/Tutorial/ToneMelody
 * 
 */


int touchPinA = 15;
int touchPinB = 16;
int touchPinC = 17;
int touchPinD = 18;
int touchPinE = 19;
int touchPinF = 22;
int touchPinG = 23;
int touchPinH = 0;
int touchPinI = 1;
int touchPinJ = 3;
int touchPinK = 4;

int restA;
int restB;
int restC;
int restD;
int restE;
int restF;
int restG;
int restH;
int restI;
int restJ;
int restK;

int speakerPin = 10; // output pin

int ledPinCal = 13;

int pinLevel = 200; // may need adjusting

void setup() {
  // Serial.begin(9600);
  delay(1500);
  pinMode(ledPinCal, OUTPUT);
  calibrate();
}


void loop() {

  int valA = (touchRead(touchPinA));
  int valB = (touchRead(touchPinB));
  int valC = (touchRead(touchPinC));
  int valD = (touchRead(touchPinD));
  int valE = (touchRead(touchPinE));
  int valF = (touchRead(touchPinF));
  int valG = (touchRead(touchPinG));
  int valH = (touchRead(touchPinH));
  int valI = (touchRead(touchPinI));
  int valJ = (touchRead(touchPinJ));
  int valK = (touchRead(touchPinK));

  if (valA > (restA + pinLevel)) {
    // Serial.println(valA);
    tone(speakerPin, 523);
  }

  if (valB > (restB + pinLevel)) {
    // Serial.println(valB);
    tone(speakerPin, 587);
  }

  if (valC > (restC + pinLevel)) {
    // Serial.println(valC);
    tone(speakerPin, 659);
  }

  if (valD > (restD + pinLevel)) {
    // Serial.println(valD);
    tone(speakerPin, 698);
  }

  if (valE > (restE + pinLevel)) {
    // Serial.println(valE);
    tone(speakerPin, 784);
  }

  if (valF > (restF + pinLevel)) {
    // Serial.println(valF);
    tone(speakerPin, 880);
  }
 
  if (valG > (restG + pinLevel)) {
    // Serial.println(valG);
    tone(speakerPin, 988);
  }
 
  if (valH > (restH + pinLevel)) {
    // Serial.println(valH);
    tone(speakerPin, 1047);
  }
 
  if (valI > (restI + pinLevel)) {
    // Serial.println(valI);
    tone(speakerPin, 1175);
  }
 
  if (valJ > (restJ + pinLevel)) {
    // Serial.println(valJ);
    tone(speakerPin, 1319);
  }

  if (valK > (restK + pinLevel)) {
    // Serial.println(valK);
    tone(speakerPin, 1397);
  }

  

  if (  (valA <= (restA + pinLevel)) && 
        (valB <= (restB + pinLevel)) && 
        (valC <= (restC + pinLevel)) && 
        (valD <= (restD + pinLevel)) && 
        (valE <= (restE + pinLevel)) && 
        (valF <= (restF + pinLevel)) && 
        (valG <= (restG + pinLevel)) && 
        (valH <= (restH + pinLevel)) && 
        (valI <= (restI + pinLevel)) && 
        (valJ <= (restJ + pinLevel)) && 
        (valK <= (restK + pinLevel)) ) {
          // Serial.println("No Tone!");
          noTone(speakerPin);
        }


  delay(10);
  
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
  // Serial.println("Starting calibration...");  
  
  restA = calibratePin(touchPinA);
  // Serial.print("restA: ");
  // Serial.println(restA);

  restB = calibratePin(touchPinB);
  // Serial.print("restB: ");
  // Serial.println(restB);
  
  restC = calibratePin(touchPinC);
  // Serial.print("restC: ");
  // Serial.println(restC);

  restD = calibratePin(touchPinD);
  // Serial.print("restD: ");
  // Serial.println(restD);

  restE = calibratePin(touchPinE);
  // Serial.print("restE: ");
  // Serial.println(restE);

  restF = calibratePin(touchPinF);
  // Serial.print("restF: ");
  // Serial.println(restF);

  restG = calibratePin(touchPinG);
  // Serial.print("restG: ");
  // Serial.println(restG);

  restH = calibratePin(touchPinH);
  // Serial.print("restH: ");
  // Serial.println(restH);

  restI = calibratePin(touchPinI);
  // Serial.print("restI: ");
  // Serial.println(restI);

  restJ = calibratePin(touchPinJ);
  // Serial.print("restJ: ");
  // Serial.println(restJ);

  restK = calibratePin(touchPinK);
  // Serial.print("restK: ");
  // Serial.println(restK);
  
  digitalWrite(ledPinCal, LOW);
  delay(2000);
  
}


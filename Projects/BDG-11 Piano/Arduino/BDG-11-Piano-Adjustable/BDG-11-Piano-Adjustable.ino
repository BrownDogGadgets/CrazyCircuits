/*
 * BDG-11-Piano-Adjustable.ino
 * 
 */

// set pins and arrays for values
int touchPins[] = {15,16,17,18,19,22,23,0,1,3,4};
int rest[11];
int value[11];
int flag[11];

// set LED pin
int ledPin = 13;

// check sensitivity setting from potentiometer
int levelPin = 0; // Pin 14 is "Analog Pin 0"
int pinLevel;
int levelMultiplier = 4;

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  calibrate();
  digitalWrite(ledPin, HIGH);

  for (int i = 0; i < 11; i++) {
    flag[i] = 0;
  }

  delay(3000);

}


void loop() {

  // check sensitivity setting from potentiometer
  pinLevel = analogRead(levelPin) * levelMultiplier; // scales to 1024 * levelMultiplier max

  if (pinLevel < 10) {
    pinLevel = 10;
  }

  // read all the pins
  for (int i = 0; i < 11; i++) {
    value[i] = (touchRead(touchPins[i]));
  }

  // assign flagww value to each pin
  for (int i = 0; i < 11; i++) {

    if ( (value[i] > (rest[i] + pinLevel)) and (flag[i] == 0) ) {
      flag[i] = 1;
    }
    if ( (value[i] < (rest[i] + (pinLevel/2))) and (flag[i] == 1) ) {
      flag[i] = 0;
    }
    
  }



  // ARROW LEFT // -------------------------------------------- //

  if (flag[0] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key1(KEY_LEFT_ARROW);
      Keyboard.send_now();
  }
  else if (flag[1] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key1(KEY_UP_ARROW);
      Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key1(0);
    Keyboard.send_now();
  }


  if (flag[2] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key2(KEY_RIGHT_ARROW);
      Keyboard.send_now();
  }
  else if (flag[3] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key2(KEY_DOWN_ARROW);
      Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key2(0);
    Keyboard.send_now();
  }

  if (flag[4] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key3(KEY_SPACE);
      Keyboard.send_now();
  }
  else if (flag[5] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key3(KEY_W);
      Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key3(0);
    Keyboard.send_now();
  }


  if (flag[6] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key4(KEY_A);
      Keyboard.send_now();
  }
  else if (flag[7] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key4(KEY_S);
      Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key4(0);
    Keyboard.send_now();
  }


  if (flag[8] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key5(KEY_D);
      Keyboard.send_now();
  }
  else if (flag[9] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key5(KEY_F);
      Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key5(0);
    Keyboard.send_now();
  }

  if (flag[10] == 1) {
      Keyboard.set_modifier(0);
      Keyboard.set_key6(KEY_G);
      Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key6(0);
    Keyboard.send_now();
  }




  // print debug info  
  debug();

  
} // end forever loop



// --------------------------------------------------------------- //

// run calibration at startup

int calibratePin (int thePin) {

  int calRun = 20;
  int calVal = 0;
  int calValFull = 0;
  int calResult = 0;
  
  for (int i = 0; i < calRun; i++) {
    calVal = (touchRead(thePin));
    calValFull = calValFull + calVal;
    digitalWrite(ledPin, LOW);  // blink
    delay(20);
    digitalWrite(ledPin, HIGH);  // link
  }

  calResult = calValFull / calRun;

  return calResult;

}


// calibration routine

void calibrate () {

    Serial.println("Starting calibration...");  

   for (int i = 0; i < 11; i++) {
    rest[i] = calibratePin(touchPins[i]); 
   }
  
  delay(500);
  
}


// print debug info if needed

void debug() {

  Serial.print(pinLevel);
  Serial.print("  ");

  for (int i = 0; i < 11; i++) {
    Serial.print(flag[i]);
    Serial.print(": ");
    Serial.print(value[i]);
    Serial.print("  ");
  }
  
  Serial.println();
  
}



/*
 * KEY ERROR AREA












 * /
 */

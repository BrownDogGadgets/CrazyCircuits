/*
 * CrazyTinyLEDs.ino
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * 2017-01-29
 * 
 */


int ledA = 6;  // 1;
int ledB = 7;  // 2;
int ledC = 8; // 3;
int ledD = 9; // 4;

int ledArray[4] = {18, 19, 22, 23};

int ButtonPin = 1; // 0;

int ButtonPushCounter = 0;   // counter for the number of button presses
int ButtonState = 0;         // current state of the button
int LastButtonState = 0;     // previous state of the button

long previousMillis = 0;        // will store last time LED was updated
long previousMillis2 = 0;        // will store last time LED was updated
long interval = 3000;           // interval at which to change (milliseconds)

boolean LEDPowerOn = true;

void setup() {
  Serial.begin(9600);
  pinMode(ledA, OUTPUT);
  pinMode(ledB, OUTPUT);
  pinMode(ledC, OUTPUT);
  pinMode(ledD, OUTPUT);
  pinMode(ButtonPin, INPUT_PULLUP);
  randomSeed(analogRead(1));
}

void loop() {

  unsigned long currentMillis = millis();

  ButtonState = digitalRead(ButtonPin);

  if (ButtonState != LastButtonState) {

    Serial.println("Button pressed");

    if (ButtonState == LOW) {
      ButtonPushCounter++;
    }

    delay(10);

    LastButtonState = ButtonState;

  }

    if (ButtonPushCounter > 4) {
      ButtonPushCounter = 0;
    }

    if (ButtonPushCounter == 1) {
      chase(currentMillis);
    }
    else if (ButtonPushCounter == 2) {
      alternateLEDs();
    }
    else if (ButtonPushCounter == 3) {
      chaseBackandForth();
    }
    else if (ButtonPushCounter == 4) {
      randomLEDs();
    }


}



void chase(long currentMillis) {
  Serial.print(currentMillis);
  Serial.print(" ");
  Serial.println(previousMillis);
  
  //for (int d = 0; d <= 3; d++) {
  
    if (currentMillis - previousMillis > interval) {
      Serial.println("currentMillis - previousMillis > interval");
      previousMillis = currentMillis;
      boolean LEDPowerOn = 0;
      Serial.println("false!");
      delay(500);
    }
    else {
      Serial.println("else..............................");
      boolean LEDPowerOn = 1;
    }

  
    if (LEDPowerOn == 1) {
      Serial.println("switch LED ON");
      digitalWrite(ledArray[0], HIGH);
      LEDPowerOn == 1;
    }
    else {
      Serial.println("switch LED OFF_______");
      digitalWrite(ledArray[0], LOW);
    }



  //}
  return;
}


void chaseBackandForth() {
  for (int d = 0; d <= 3; d++) {
    digitalWrite(ledArray[d], HIGH);
    delay(100);
    digitalWrite(ledArray[d], LOW);
    delay(100);
  }
  for (int d = 3; d >= 0; d--) {
    digitalWrite(ledArray[d], HIGH);
    delay(100);
    digitalWrite(ledArray[d], LOW);
    delay(100);
  }
  return;
}


void alternateLEDs() {
  digitalWrite(ledArray[0], HIGH);
  digitalWrite(ledArray[2], HIGH);
  delay(100);
  digitalWrite(ledArray[0], LOW);
  digitalWrite(ledArray[2], LOW);
  delay(100);
  digitalWrite(ledArray[1], HIGH);
  digitalWrite(ledArray[3], HIGH);
  delay(100);
  digitalWrite(ledArray[1], LOW);
  digitalWrite(ledArray[3], LOW);
  delay(100);
  return;
}


void randomLEDs() {
  int randomLED = random(0, 4);
  digitalWrite(ledArray[randomLED], HIGH);
  delay(100);
  digitalWrite(ledArray[randomLED], LOW);
  delay(100);
  return;
}


 /*
  if(currentMillis - previousMillis > interval) {
    // save the last time you blinked the LED 
    previousMillis = currentMillis;   
  }
*/

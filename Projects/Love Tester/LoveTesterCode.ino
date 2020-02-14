// Code for Love Tester Project
// By Natasha Dzurny for Brown Dog Gadgets

// Circuit:
// - Connect heart buttons to pin 10 and ground
// - Connect LEDs 1,2,3 and 4 to pins 22, 17, 16, 14, and ground


int LED = 13; // This is the LED on the board
int LED1 = 22; // Bottom LED
int LED2 = 17;
int LED3 = 16;
int LED4 = 14; // Top LED
int theLEDs[] = {LED1, LED2, LED3, LED4};
int numOfLEDs = 4;

int endDelay = 4000; //How long the decision stays on the display before it is ready to go again

int heartButtonPin = 10;
boolean timeToTestLove = false;


void setup() {

  pinMode(heartButtonPin, INPUT_PULLUP);

  pinMode(LED, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);

}

void loop() {

  int buttonValue = digitalRead(heartButtonPin);

  if (!timeToTestLove) {
    if (buttonValue == LOW) {
      timeToTestLove = true;
      digitalWrite(LED, HIGH); // LED on the board to let you know that the button was pressed
      testForLove();
    }
  }
  else {
    timeToTestLove = false;
    digitalWrite(LED, LOW); // LED on the board to let you know that the button was pressed
  }
}

void testForLove() {

  flashSequence();
  makeTheMatch();
}

void makeTheMatch() {

  long howMuchLove = random(4);

  if (howMuchLove == 0) {
    digitalWrite(LED1, HIGH);
    delay(endDelay);
    digitalWrite(LED1, LOW);
  } else if (howMuchLove == 1) {
    digitalWrite(LED2, HIGH);
    delay(endDelay);
    digitalWrite(LED2, LOW);
  } else if (howMuchLove == 2) {
    digitalWrite(LED3, HIGH);
    delay(endDelay);
    digitalWrite(LED3, LOW);
  } else if (howMuchLove == 3) {
    digitalWrite(LED4, HIGH);
    delay(endDelay);
    digitalWrite(LED4, LOW);
  }
}




void flashSequence() {
  for (int l = 0; l < random(5,8); l++) {
    for (int i = 0; i < numOfLEDs; i++) {
      digitalWrite(theLEDs[i], HIGH);
      delay(75 * l);
      digitalWrite(theLEDs[i], LOW);
    }
  }
  for (int i = 0; i < numOfLEDs; i++) {
    digitalWrite(theLEDs[i], HIGH);
    delay(500);
  }
  for (int i = 0; i < numOfLEDs; i++) {
    digitalWrite(theLEDs[i], LOW);
  }
}

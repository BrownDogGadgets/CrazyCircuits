/*
 * Scorekeeper2.ino
 * 
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 * Pete Prodoehl <pete@browndoggadgets.com>
 * 
 */


#include <TM1637Display.h>
#include <Bounce2.h>

// These are the score values, you can change them
int b1Val = 1;
int b2Val = 2;
int b3Val = 5;
int b4Val = 10;
int b5Val = 25;

// This is the score you are aiming for, you can change it
int desiredScore = 300;

// --------------------------------------------------------//

// This is our piezo speaker pin
int speakerPin = 2;

// LED display connection pins
#define CLK 3
#define DIO 5

// These are the pins we connect to for triggering the scoring
int b1Pin = 4;
int b2Pin = 6;
int b3Pin = 7;
int b4Pin = 8;
int b5Pin = 9;

// This is the reset pin
int resetPin = 10;

int beepDelay = 20;

boolean gameOver = false;
boolean gameOverSound = true;

Bounce resetPinObj = Bounce(resetPin, 5);
Bounce b1PinObj = Bounce(b1Pin, 5);
Bounce b2PinObj = Bounce(b2Pin, 5);
Bounce b3PinObj = Bounce(b3Pin, 5);
Bounce b4PinObj = Bounce(b4Pin, 5);
Bounce b5PinObj = Bounce(b5Pin, 5);

TM1637Display display(CLK, DIO);

int score = 0;

// Our setup runs once when the program starts
void setup() {
  display.setBrightness(0x0f);
  pinMode(resetPin, INPUT_PULLUP);
  pinMode(b1Pin, INPUT_PULLUP);
  pinMode(b2Pin, INPUT_PULLUP);
  pinMode(b3Pin, INPUT_PULLUP);
  pinMode(b4Pin, INPUT_PULLUP);
  pinMode(b5Pin, INPUT_PULLUP);
  tone(speakerPin, 400);
  delay(beepDelay * 10);
  tone(speakerPin, 2000);
  delay(beepDelay * 10);
  tone(speakerPin, 600);
  delay(beepDelay * 10);
  tone(speakerPin, 900);
  delay(beepDelay * 20);
  noTone(speakerPin);
}

// Our loop starts after setup and runs forever
void loop() {

  resetPinObj.update();
  b1PinObj.update();
  b2PinObj.update();
  b3PinObj.update();
  b4PinObj.update();
  b5PinObj.update();

  if (resetPinObj.fallingEdge()) {
      score = 0;  // reset to zero
      tone(speakerPin, 400);
      delay(beepDelay * 20);
      noTone(speakerPin);
      display.showNumberDec(score);
      gameOver = false;
      gameOverSound = true;
  }
  else if (b1PinObj.fallingEdge()) {
      score = score + b1Val;  // add to score
      tone(speakerPin, 1600); // play a beep
      delay(beepDelay);
      noTone(speakerPin);
  }
  else if (b2PinObj.fallingEdge()) {
      score = score + b2Val;  // add to score
      tone(speakerPin, 1500); // play a beep
      delay(beepDelay);
      noTone(speakerPin);
  }
  else if (b3PinObj.fallingEdge()) {
      score = score + b3Val;  // add to score
      tone(speakerPin, 1400); // play a beep
      delay(beepDelay);
      noTone(speakerPin);
  }
  else if (b4PinObj.fallingEdge()) {
      score = score + b4Val;  // add to score
      tone(speakerPin, 1300); // play a beep
      delay(beepDelay);
      noTone(speakerPin);
  }
  else if (b5PinObj.fallingEdge()) {
      score = score + b5Val;  // add to score
      tone(speakerPin, 1200); // play a beep
      delay(beepDelay);
      noTone(speakerPin);
  }



  // We send the score to the display
  if (gameOver == false) {
    display.showNumberDec(score);
  }

  // If we've reached the score we set, we have a winner!
  if (score > desiredScore) {
    display.showNumberDec(desiredScore);
    gameOver = true;
    if (gameOverSound == true) {
      tone(speakerPin, 400);
      delay(beepDelay * 10);
      tone(speakerPin, 2000);
      delay(beepDelay * 10);
      tone(speakerPin, 600);
      delay(beepDelay * 10);
      tone(speakerPin, 900);
      delay(beepDelay * 20);
      noTone(speakerPin);
      gameOverSound = false;
    }
  }
  
} // end loop

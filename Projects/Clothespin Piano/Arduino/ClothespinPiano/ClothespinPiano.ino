/*
 * ClothespinPiano.ino
 * 
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 * https://www.arduino.cc/en/Tutorial/ToneMelody
 * 
 */


// set variable names for the input pins
int pianoPinA = 0;
int pianoPinB = 1;
int pianoPinC = 2;
int pianoPinD = 3;
int pianoPinE = 4;
int pianoPinF = 5;
int pianoPinG = 6;
int pianoPinH = 7;
int pianoPinI = 8;
int pianoPinJ = 9;


// set variable name for the speaker output pin
int speakerPin = 10;


// the setup runs once at the beginning of the sketch
void setup() {
  
  pinMode(pianoPinA, INPUT_PULLUP);
  pinMode(pianoPinB, INPUT_PULLUP);
  pinMode(pianoPinC, INPUT_PULLUP);
  pinMode(pianoPinD, INPUT_PULLUP);
  pinMode(pianoPinE, INPUT_PULLUP);
  pinMode(pianoPinF, INPUT_PULLUP);
  pinMode(pianoPinG, INPUT_PULLUP);
  pinMode(pianoPinH, INPUT_PULLUP);
  pinMode(pianoPinI, INPUT_PULLUP);
  pinMode(pianoPinJ, INPUT_PULLUP);
    
}


// the loop runs forever after the setup is complete
void loop() {

  if (digitalRead(pianoPinA) == HIGH) {
    tone(speakerPin, 523);
  }

  if (digitalRead(pianoPinB) == HIGH) {
    tone(speakerPin, 587);
  }

  if (digitalRead(pianoPinC) == HIGH) {
    tone(speakerPin, 659);
  }

  if (digitalRead(pianoPinD) == HIGH) {
    tone(speakerPin, 698);
  }

  if (digitalRead(pianoPinE) == HIGH) {
    tone(speakerPin, 784);
  }

  if (digitalRead(pianoPinF) == HIGH) {
    tone(speakerPin, 880);
  }
 
  if (digitalRead(pianoPinG) == HIGH) {
    tone(speakerPin, 988);
  }

 if (digitalRead(pianoPinH) == HIGH) {
    tone(speakerPin, 1047);
  }

 if (digitalRead(pianoPinI) == HIGH) {
    tone(speakerPin, 1175);
  }

  if (digitalRead(pianoPinJ) == HIGH) {
    tone(speakerPin, 1319);
  }
 

  

  if (  (digitalRead(pianoPinA) == LOW) && 
        (digitalRead(pianoPinB) == LOW) && 
        (digitalRead(pianoPinC) == LOW) && 
        (digitalRead(pianoPinD) == LOW) && 
        (digitalRead(pianoPinE) == LOW) && 
        (digitalRead(pianoPinF) == LOW) && 
        (digitalRead(pianoPinG) == LOW) && 
        (digitalRead(pianoPinH) == LOW) && 
        (digitalRead(pianoPinI) == LOW) && 
        (digitalRead(pianoPinJ) == LOW) ) {
          noTone(speakerPin);
        }

  delay(25);
  
}

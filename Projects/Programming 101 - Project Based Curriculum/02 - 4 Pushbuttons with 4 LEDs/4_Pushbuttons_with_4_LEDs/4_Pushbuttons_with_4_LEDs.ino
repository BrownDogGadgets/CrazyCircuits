/*
 * 4_Pushbuttons_with_4_LEDs.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable names for four different digital input pins
int ButtonPin1 = 1;
int ButtonPin2 = 2;
int ButtonPin3 = 3;
int ButtonPin4 = 4;

// set variable names for four different digital output pins
int LEDpin1 = 6;
int LEDpin2 = 7;
int LEDpin3 = 8;
int LEDpin4 = 9;


// the setup runs once at the beginning of the sketch
void setup() {

  // the ButtonPins are set to function as inputs with special built-in pull-up resistors
  pinMode(ButtonPin1, INPUT_PULLUP);
  pinMode(ButtonPin2, INPUT_PULLUP);
  pinMode(ButtonPin3, INPUT_PULLUP);
  pinMode(ButtonPin4, INPUT_PULLUP);
  
  // the LEDpins are set to function as outputs
  pinMode(LEDpin1, OUTPUT);
  pinMode(LEDpin2, OUTPUT);
  pinMode(LEDpin3, OUTPUT);
  pinMode(LEDpin4, OUTPUT);

}


// the loop runs forever after the setup is complete
void loop() {
  
  // check if the first button is pressed
  if (digitalRead(ButtonPin1) == LOW) {
    // set the first output pin high to turn on the first LED
    digitalWrite(LEDpin1, HIGH);
  }
  // this happens if the first button is not pressed
  else {
    // set the first output pin low to turn off the first LED
    digitalWrite(LEDpin1, LOW);
  }

  // check if the second button is pressed
  if (digitalRead(ButtonPin2) == LOW) {
    // set the second output pin high to turn on the second LED
    digitalWrite(LEDpin2, HIGH);
  }
  // this happens if the second button is not pressed
  else {
    // set the second output pin low to turn off the second LED
    digitalWrite(LEDpin2, LOW);
  }

  // check if the third button is pressed
  if (digitalRead(ButtonPin3) == LOW) {
    // set the third output pin high to turn on the third LED
    digitalWrite(LEDpin3, HIGH);
  }
  // this happens if the third button is not pressed
  else {
    // set the third output pin low to turn off the third LED
    digitalWrite(LEDpin3, LOW);
  }

  // check if the fourth button is pressed
  if (digitalRead(ButtonPin4) == LOW) {
    // set the fourth output pin high to turn on the fourth LED
    digitalWrite(LEDpin4, HIGH);
  }
  // this happens if the fourth button is not pressed
  else {
    // set the fourth output pin low to turn off the fourth LED
    digitalWrite(LEDpin4, LOW);
  }

}

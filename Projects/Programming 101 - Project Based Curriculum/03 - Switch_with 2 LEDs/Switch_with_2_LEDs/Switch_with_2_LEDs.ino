/*
 * Switch_with_2_LEDs.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable name for a digital input pin
int SwitchPin = 1;

// set variable names for two different digital output pins
int LEDpin1 = 6;
int LEDpin2 = 7;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // the LEDpins are set to function as outputs
  pinMode(LEDpin1, OUTPUT);
  pinMode(LEDpin2, OUTPUT);

  // the switch is set to function as an input with a special built-in pull-up resistor
  pinMode(SwitchPin, INPUT_PULLUP);
  
}


// the loop runs forever after the setup is complete
void loop() {
  
  // check if the switch is in the on position
  if (digitalRead(SwitchPin) == LOW) {
    // set the first output pin high to turn on the first LED
    digitalWrite(LEDpin1, HIGH);
    // set the second output pin low to turn off the second LED
    digitalWrite(LEDpin1, LOW);
  }
  // this happens if the switch is in the off position
  else {
    // set the first output pin low to turn off the first LED
    digitalWrite(LEDpin1, LOW);
    // set the second output pin high to turn on the second LED
    digitalWrite(LEDpin2, HIGH);
  }

}

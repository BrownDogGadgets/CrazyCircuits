/*
 * Pushbutton_with_LED.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable name for a digital input pin
int ButtonPin = 1;

// set variable name for a digital output pin
int LEDpin = 3;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // the ButtonPin is set to function as an input with a special built-in pull-up resistor
  pinMode(ButtonPin, INPUT_PULLUP);
  
  // the LEDpin is set to function as an output
  pinMode(LEDpin, OUTPUT);
  
}


// the loop runs forever after the setup is complete
void loop() {
  
  // check if the button is pressed
  if (digitalRead(ButtonPin) == LOW) {
    // set the output pin high to turn on the LED
    digitalWrite(LEDpin, HIGH);
  }
  // this happens if the button is not pressed
  else {
    // set the output pin low to turn off the LED
    digitalWrite(LEDpin, LOW);
  }
  
}

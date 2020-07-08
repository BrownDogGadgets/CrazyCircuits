/*
 * Pushbutton_with_Dimmed_LED.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable name for a digital input pin
int ButtonPin = 1;

// set variable name for a digital output pin with Pulse Width Modulation
// pins 3, 5, 6, 9, 10, 11 support PWM
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
    // set the output pin to a value between 0 and 255
    // 255 should be full brightness
    analogWrite(LEDpin, 255);
  }
  // this happens if the button is not pressed
  else {
    // set the output pin to a value between 0 and 255
    // 128 should be half brightness
    analogWrite(LEDpin, 128);
  }
  
}

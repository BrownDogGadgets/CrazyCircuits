/*
 * Pushbutton_with_Piezo.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable name for a digital input pin
int ButtonPin = 1;

// set variable name for a digital output pin with Pulse Width Modulation
// pins 3, 5, 6, 9, 10, 11 support PWM
int PiezoPin = 3;

// set a variable named myFrequency to assign a specific frequency that will play
// 880 Hz is an A5 note
int myFrequency = 880;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // the PiezoPin is set to function as an output
  pinMode(PiezoPin, OUTPUT);
  
  // the ButtonPin is set to function as an input with a special built-in pull-up resistor
  pinMode(ButtonPin, INPUT_PULLUP);
  
}


// the loop runs forever after the setup is complete
void loop() {
  
  // check if the button is pressed
  if (digitalRead(ButtonPin) == LOW) {
    // play the specified frequency on the PiezoPin
    tone(PiezoPin, myFrequency);
    
  }
  // this happens if the button is not pressed
  else {
    // stop playing a tone on the PiezoPin
    noTone(PiezoPin);

  }
  
}

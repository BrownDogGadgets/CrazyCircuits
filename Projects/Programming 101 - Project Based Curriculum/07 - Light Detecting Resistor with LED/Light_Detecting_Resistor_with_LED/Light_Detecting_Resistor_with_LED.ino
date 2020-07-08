/*
 * Light_Detecting_Resistor_with_LED.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable name for an analog input pin
int LDRpin = A4;

// set variable name for a digital output pin with Pulse Width Modulation
// pins 3, 5, 6, 9, 10, 11 support PWM
int LEDpin = 9;

// set variable name to hold the input value
int LDRvalue;

// set variable name to hold the adjusted value
int LDRvalueMapped;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // analog pins are set to input by default but
  // we still need to set the LEDpin for output
  pinMode(LEDpin, OUTPUT);

}


// the loop runs forever after the setup is complete
void loop() {

  // assign the value of input using analogRead on the pin
  LDRvalue = analogRead(LDRpin);

  // use the map function to set scale of 0-1023 to scale of 255-0
  LDRvalueMapped = map(LDRvalue, 0, 1023, 255, 0);

  // write the value between 255-0 to the PWM pin
  analogWrite(LEDpin, LDRvalueMapped);

}

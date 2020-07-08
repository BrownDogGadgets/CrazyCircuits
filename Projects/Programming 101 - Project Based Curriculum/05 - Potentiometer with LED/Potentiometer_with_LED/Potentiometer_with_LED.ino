/*
 * Potentiometer_with_LED.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable name for an analog input pin
int PotentiometerPin = A4;

// set variable name to hold the input value
int PotentiometerValue;

// set variable name to hold the adjusted value
int PotentiometerValueMapped;

// set variable name for a digital output pin with Pulse Width Modulation
// pins 3, 5, 6, 9, 10, 11 support PWM
int LEDpin = 9;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // analog pins are set to input by default but
  // we still need to set the LED pin for output
  pinMode(LEDpin, OUTPUT);

}


// the loop runs forever after the setup is complete
void loop() {

  // by default the analog pins are set as input 
  // so we don't need to specify that in setup

  // assign the value of input using analogRead on the pin
  PotentiometerValue = analogRead(PotentiometerPin);

  // use the map function to set scale of 0-1023 to scale of 0-255
  PotentiometerValueMapped = map(PotentiometerValue, 0, 1023, 0, 255);

  // write the value between 0-255 to the PWM pin
  analogWrite(LEDpin, PotentiometerValueMapped);

}

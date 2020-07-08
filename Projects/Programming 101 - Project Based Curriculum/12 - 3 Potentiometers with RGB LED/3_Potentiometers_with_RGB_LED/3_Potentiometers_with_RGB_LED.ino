/*
 * 3_Potentiometers_with_RGB_LED.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */



// set variable names for the analog input pins
int PotRedPin = A5;
int PotGreenPin = A4;
int PotBluePin = A3;

// set variable names to hold the analog input values
int PotRedValue;
int PotGreenValue;
int PotBlueValue;

// set variable names to hold the adjusted values
int PotRedValueMapped;
int PotGreenValueMapped;
int PotBlueValueMapped;

// set variable name for a digital output pin with Pulse Width Modulation
// pins 3, 5, 6, 9, 10, 11 support PWM
int LEDRedPin = 9;
int LEDGreenPin = 6;
int LEDBluePin = 5;


// the setup runs once at the beginning of the sketch
void setup() {
  
  // by default the analog pins are set as input 
  // so we don't need to specify that in setup
  
  // analog pins are set to input by default but
  // we still need to set the 3 LED pins for output
  pinMode(LEDRedPin, OUTPUT);
  pinMode(LEDGreenPin, OUTPUT);
  pinMode(LEDBluePin, OUTPUT);

}


// the loop runs forever after the setup is complete
void loop() {

  // assign the values of inputs using analogRead on the pins
  PotRedValue = analogRead(PotRedPin);
  PotGreenValue = analogRead(PotGreenPin);
  PotBlueValue = analogRead(PotBluePin);

  // use the map function to set scale of 0-1023 to scale of 0-255
  PotRedValueMapped = map(PotRedValue, 0, 1023, 0, 255);
  PotGreenValueMapped = map(PotGreenValue, 0, 1023, 0, 255);
  PotBlueValueMapped = map(PotBlueValue, 0, 1023, 0, 255);

  // write the values between 0-255 to the PWM pins
  analogWrite(LEDRedPin, PotRedValueMapped);
  analogWrite(LEDGreenPin, PotGreenValueMapped);
  analogWrite(LEDBluePin, PotBlueValueMapped);

}

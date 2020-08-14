/*
 * BFDimmer.ino
 * 
 * Brown Dog Gadgets <https://www.browndoggadgets.com/>
 * 
 */


// set variable name for the potentiometer input pin
int potPin = A1;

// set variable name for the LED output pin
int ledPin = 1;


// the setup runs once at the beginning of the sketch
void setup() {
  
  pinMode(potPin, INPUT);
  pinMode(ledPin, OUTPUT);

}


// the loop runs forever after the setup is complete
void loop() {

  int potValue = map(analogRead(potPin), 0, 1024, 0, 255);
  analogWrite(ledPin, potValue);

}

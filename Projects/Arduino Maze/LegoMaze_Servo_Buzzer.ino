//  
// Using conductive tape and ball bearing as an input for servo control
// By Ben Nelson September 2019

// Include the servo controls
#include <Servo.h>

//Initialize servo and set to start angle. In this case, I am not setting it all the way to Zero,
//as that's just a little too far for the physical setup.
Servo servo;
int angle = 15;

// Declare the pins for the Button and the LED
// We are using the built-in LED associated with pin 13 as a visual cue
// Button Pin is 9, as that's right next to the ground, but any pin could be used as an input,
//We just need the conductive tape from the pin to be right next to tape to the ground,
//so that the ball bearing can complete the circuit of pin to ground.
int buttonPin = 9;
int LED = 13;

void setup() {
  //Servo is connected to pin 3
  servo.attach(3);
  servo.write(13);
  // Define the pin for the conductive tape as an input and activate the internal pull-up resistor
  pinMode(buttonPin, INPUT_PULLUP);
  // Define pin #13 as output, for the LED
  pinMode(LED, OUTPUT);
  
  // The following lines move the servo and play tones whenever you start or reboot the board.
  // This helps you know that your components are hooked up correctly.
  
  servo.write(80);
  delay(1000);
  servo.write(15);

//While the servo moves, the speaker plays two tones in quick succession.
pinMode(0, OUTPUT);

  tone(0, 261, 500); //Middle C
  delay(1000);

  tone(0, 330, 500); //E
  delay(1000);

 
  
  }
//This is the main body of the program and will open the gate when the ball bearing completes the circuit by touching both pieces of conductive tape.
void loop(){
  // Read the value of the input. It can either be 1 or 0
  int buttonValue = digitalRead(buttonPin);
  
  if (buttonValue == LOW){
    // If conductive tape circuit completed with ball-bearing, turn LED on   
    digitalWrite(LED, HIGH);
    // and rotate servo
     servo.write(15);
     // then hold that position based on delay(s) that follow

    //Each of the following plays a note and pauses one second. For more time to run the maze, copy and paste more tones and delay.
    // For LESS time, delete some of the tones and delay.
    //Using the "tone(x,x,x) command, the first number is the pin number the speaker is on, the second number is frequency (pitch) and the third number is the duration of the tone.
   
   tone(0, 261, 200); //Middle C
   delay(1000);

   tone(0, 261, 200); //Middle C
   delay(1000);

   tone(0, 261, 300); //Middle C
   delay(1000);

   tone(0, 261, 400); //Middle C
   delay(1000);

   tone(0, 261, 500); //Middle C
   delay(1000);

   tone(0, 261, 600); //Middle C
   delay(1000);
   
   tone(0, 261, 750); //Middle C
   delay(1000);

   tone(0, 400, 1000);
   delay(1000);
                
  } else {
    // Otherwise, turn the LED off and put servo back to original rotation.
    digitalWrite(LED, LOW);
    servo.write(80);
  }
}

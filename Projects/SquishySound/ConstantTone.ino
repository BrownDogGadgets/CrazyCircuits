//Squishy Sound - Code written by Sam Johnson and Modified by Matthew Schmidtbauer for the Squishy Circuits Project
//Port Definitions and Variable Declarations: 
//Change the SpeakerOutput Pin as well as the analog pin if you're using a Robotics board or standard Arduino board.
#define SpeakerOutput 16
int analog = 14; // Common resistor connected to  pin 14 outside leads to ground and +5V 
int raw = 0; // Variable to store the raw input value
int frequency = 0; // Variable to store Frequency
void setup() {}
void loop()
{
raw = analogRead(analog); // Read Voltage over Dough
frequency = raw*2; // Calculate Frequency 
tone(SpeakerOutput,frequency); // Output Frequency to Sounding Device 
}

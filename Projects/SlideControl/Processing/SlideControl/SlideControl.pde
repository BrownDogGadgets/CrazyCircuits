
import processing.sound.*;
import themidibus.*;

MidiBus myBus;

SoundFile slideForward;
SoundFile slideBack;

void setup() {
  size(260, 130);
  background(0);
  color(200);
  textSize(48);
  textAlign(CENTER);
  text("Waiting...", 125, 75);

  // Load sound files
  slideForward = new SoundFile(this, "SlideForward.wav");
  slideBack = new SoundFile(this, "SlideBack.wav");

  MidiBus.list(); // List all available MIDI devices on STDOUT. This will show each device's index and name.
  
  myBus = new MidiBus(this, 0, 1); // Create a new MidiBus that matches what we see in the list
  
}

void draw() {
  int channel = 0;
  int pitch = 64;
  int velocity = 127;

  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  delay(100);
  myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff

  int number = 0;
  int value = 90;

  myBus.sendControllerChange(channel, number, value); // Send a controllerChange
  delay(1000);
}

void noteOn(int channel, int pitch, int velocity) {

  if (pitch == 60) {
    background(0);
    text("Back", 130, 75);
    slideBack.play();
    delay(1000);
  }
  
  if (pitch == 61) {
    background(0);
    text("Forward", 130, 75);
    slideForward.play();
    delay(1000);
  }
  
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
  
  background(0);
  text("Waiting...", 130, 75);  
    
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}

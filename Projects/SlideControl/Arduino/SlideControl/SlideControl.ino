
#include <Bounce.h>  // Bounce library makes button change detection easy
const int channel = 1;

Bounce button1 = Bounce(15, 5);  // 5 = 5 ms debounce time
Bounce button2 = Bounce(19, 5);  // which is should be appropriate

void setup() {
  pinMode(15, INPUT_PULLUP);
  pinMode(19, INPUT_PULLUP);
  pinMode(13, OUTPUT);
}

void loop() {
  button1.update();
  button2.update();

  // Note On messages when each button is pressed
  if (button1.fallingEdge()) {
    usbMIDI.sendNoteOn(60, 99, channel);  // 60 = C4
    digitalWrite(13, HIGH);
  }
  if (button2.fallingEdge()) {
    usbMIDI.sendNoteOn(61, 99, channel);  // 61 = C#4
    digitalWrite(13, HIGH);
  }

  // Note Off messages when each button is released
  if (button1.risingEdge()) {
    usbMIDI.sendNoteOff(60, 0, channel);  // 60 = C4
    digitalWrite(13, LOW);
  }
  if (button2.risingEdge()) {
    usbMIDI.sendNoteOff(61, 0, channel);  // 61 = C#4
    digitalWrite(13, LOW);
  }


  // MIDI Controllers should discard incoming MIDI messages.
  while (usbMIDI.read()) {
  }
}

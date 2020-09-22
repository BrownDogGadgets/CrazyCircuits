/*
 * MC_Microsoft_Teams.ino
 * 
 * You must select "Keyboard" from the "Tools > USB Type:" menu
 * 
 * pete@2xlnetworks.com
 *
 */


// NOTE: Toggle of video only works in the desktop client, not the browser
int OS = 0;  // set OS = 0 for macOS or = 1 for Windows

// ------------------------------------------------------ //

#include <Bounce2.h>

Bounce button0 = Bounce(15, 50); // D microphone
Bounce button1 = Bounce(19, 50); // E camera

int LEDPin = 13;

void setup() {
  pinMode(15, INPUT_PULLUP);
  pinMode(19, INPUT_PULLUP);
  pinMode(LEDPin, OUTPUT);
}

void loop() {

  if (button0.update()) {
    if (button0.fallingEdge()) {
      if (OS == 0) {
        Keyboard.set_modifier(MODIFIERKEY_GUI | MODIFIERKEY_SHIFT); // macOS
      }
      else {
        Keyboard.set_modifier(MODIFIERKEY_CTRL | MODIFIERKEY_SHIFT); // Windows
      }
      Keyboard.set_key1(KEY_M);
      Keyboard.send_now();
      digitalWrite(LEDPin, LOW);
      delay(50);
      digitalWrite(LEDPin, HIGH);
      Keyboard.set_modifier(0);
      Keyboard.set_key1(0);
      Keyboard.send_now();
    }
  }

  if (button1.update()) {
    if (button1.fallingEdge()) {
      if (OS == 0) {
        Keyboard.set_modifier(MODIFIERKEY_GUI | MODIFIERKEY_SHIFT); // macOS
      }
      else {
        Keyboard.set_modifier(MODIFIERKEY_CTRL | MODIFIERKEY_SHIFT); // Windows
      }
      Keyboard.set_key1(KEY_O);
      Keyboard.send_now();
      digitalWrite(LEDPin, LOW);
      delay(50);
      digitalWrite(LEDPin, HIGH);
      Keyboard.set_modifier(0);
      Keyboard.set_key1(0);
      Keyboard.send_now();
    }
  }

}

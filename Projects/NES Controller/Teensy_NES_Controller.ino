/*
 * Teensy_NES_Controller.ino
 *
 * Brown Dog Gadgets Controller
 *
 * Pete Prodoehl <pete@2xlnetworks.com>
 *
 * 2017-03-12
 *
 */


// set the pins
int buttonDownPin  = 15;
int buttonLeftPin  = 16;
int buttonUpPin    = 17;
int buttonRightPin = 21;
int buttonBPin     = 20;
int buttonAPin     = 19;
int buttonCPin     = 18;
int buttonDPin     = 23;

// set LED pin
int LEDPin = 13;

// set a slight delay
int keyDelay = 3;

void setup() {
  // set all out our pins for input
  pinMode(buttonDownPin,  INPUT_PULLUP);
  pinMode(buttonUpPin,    INPUT_PULLUP);
  pinMode(buttonLeftPin,  INPUT_PULLUP);
  pinMode(buttonRightPin, INPUT_PULLUP);
  pinMode(buttonBPin,     INPUT_PULLUP);
  pinMode(buttonAPin,     INPUT_PULLUP);
  pinMode(buttonCPin,     INPUT_PULLUP);
  pinMode(buttonDPin,     INPUT_PULLUP);

  // turn on the LED
  pinMode(LEDPin, OUTPUT);
  digitalWrite(LEDPin, HIGH);

  // slight delay when first plugged in
  delay(250);
}

void loop() {

  // check for each of the buttons to be pressed
  // if pressed type the appropriate key, and if
  // not pressed, clear the key sending buffer
/*
  if (digitalRead(buttonDownPin) == LOW) {
    Keyboard.set_modifier(0);
    Keyboard.set_key1(KEY_DOWN);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key1(0);
    Keyboard.send_now();
  }

  if (digitalRead(buttonUpPin) == LOW) {
    Keyboard.set_key2(KEY_UP);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key2(0);
    Keyboard.send_now();
  }


  if (digitalRead(buttonLeftPin) == LOW) {
    Keyboard.set_key3(KEY_LEFT);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key3(0);
    Keyboard.send_now();
  }

  if (digitalRead(buttonRightPin) == LOW) {
    Keyboard.set_key4(KEY_RIGHT);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key4(0);
    Keyboard.send_now();
  }


  // check for B button
  if (digitalRead(buttonBPin) == LOW) {
    Keyboard.set_key5(KEY_B);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key5(0);
    Keyboard.send_now();
  }


  // check for A button
  if (digitalRead(buttonAPin) == LOW) {
    Keyboard.set_key6(KEY_A);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key6(0);
    Keyboard.send_now();
  }

*/
  // check for C button
  if (digitalRead(buttonCPin) == LOW) {
    Keyboard.set_key5(KEY_C);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key5(0);
    Keyboard.send_now();
  }

/*
  // check for D button
  if (digitalRead(buttonDPin) == LOW) {
    Keyboard.set_key6(KEY_D);
    Keyboard.send_now();
  }
  else {
    Keyboard.set_modifier(0);
    Keyboard.set_key6(0);
    Keyboard.send_now();
  }

*/

  delay(keyDelay);

}


/*



*/


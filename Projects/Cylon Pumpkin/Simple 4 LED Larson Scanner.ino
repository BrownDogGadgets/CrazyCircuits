
#define PIN_COUNT 4

#define UPDATE_DURATION 28 // set the speed

int pins[PIN_COUNT] = {2, 3, 4, 5}; // set the pins

int states[PIN_COUNT];
int current_pin = 0;
int dir = 1;
int update_count = 0;

void setup() {
  for ( int i = 0; i < PIN_COUNT; i++ ) {
    pinMode(pins[i], OUTPUT);
    states[i] = 0;
  }
}

void updatePins() {
  for ( int i = 0; i < PIN_COUNT; i++ ) {
    analogWrite(pins[i], states[i]);
  }
  delay(6);
}

void decay() {
  for ( int i = 0; i < PIN_COUNT; i++ ) {
    // states[i] = (3*states[i]/4);
    states[i] = (6*states[i]/8);
  }
}

void loop() {
  decay();
  states[current_pin] = 255 * update_count / UPDATE_DURATION;
  updatePins();
  
  update_count++;
  if ( update_count > UPDATE_DURATION ) {
    update_count = 0;
    current_pin += dir;
    if ( current_pin == 0 ) {
      dir = 1;
    }
    else if ( current_pin == (PIN_COUNT-1) ) {
      dir = -1;
    }
  }
}

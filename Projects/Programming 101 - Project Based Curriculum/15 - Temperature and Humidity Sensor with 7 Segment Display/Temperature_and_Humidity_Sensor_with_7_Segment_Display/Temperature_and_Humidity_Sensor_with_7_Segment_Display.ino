/*
 * Temperature_and_Humidity_Sensor_with_7_Segment_Display.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 * Note: You will need to install the TM1637 library by Avishay Orpaz 
 * as well as the DHT sensor library by Adafruit
 * 
 */



#include <Arduino.h>
#include <TM1637Display.h>
#include "DHT.h"

// set two variables for the 7 segment display
#define CLK 5   // connect CLK to pin 5 on the Robotics Board
#define DIO 6   // connect DIO to pin 6 on the Robotics Board

// set two variables for the temperature/humidity sensor
#define DHTPIN 9        // connect OUT to pin 9 on the Robotics Board
#define DHTTYPE DHT22   // set which version of the sensor we are using

// set up a sensor object
DHT dht(DHTPIN, DHTTYPE);

// create an F letter to display for the temperature
const uint8_t SEG_TEMP[] = {
  0,  // blank
  0,  // blank
  0,  // blank
  SEG_A | SEG_E | SEG_F | SEG_G // F
  };

// create an H letter to display for the humidity
const uint8_t SEG_HUMID[] = {
  0,  // blank
  0,  // blank
  0,  // blank
  SEG_B | SEG_C | SEG_E | SEG_F | SEG_G // H
  };

// set up a display object
TM1637Display display(CLK, DIO);


// the setup runs once at the beginning of the sketch
void setup() {
  
  // start reading from the sensor
  dht.begin();
  
  // set the display brightness
  display.setBrightness(0x0f);
  
}


// the loop runs forever after the setup is complete
void loop() {

  // reading temperature or humidity takes about 250 milliseconds
  // sensor readings may also be up to 2 seconds 'old' (this is a slow sensor)
  int h = dht.readHumidity();
  int t = dht.readTemperature();

  // check if returns are valid, if they are NaN (not a number) then something went wrong!
  if (isnan(t) || isnan(h)) {
    delay(1);
  } else {
    int temperatureF = (t * 9 / 5) + 32.5;

    uint8_t data[] = { 0x0, 0x0, 0x0, 0x0 }; // clear display values
    display.setSegments(data); //clear display

    // show temperature
    display.setSegments(SEG_TEMP);
    display.showNumberDec(temperatureF, false, 3, 0);
    // wait one second
    delay(1000);

    // show humidity
    display.setSegments(SEG_HUMID);
    display.showNumberDec(h, false, 3, 0);
    
    // wait one second
    delay(1000);

  }

}

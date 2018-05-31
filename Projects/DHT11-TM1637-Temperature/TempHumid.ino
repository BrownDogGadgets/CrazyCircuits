/*
 * TempHumid.ino
 * 
 * Brown Dog Gadgets
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 * Original code from TM1637 https://github.com/avishorp/TM1637
 * Original code and library for DHT22 https://github.com/adafruit/DHT-sensor-library
 */
 
// ****** Start of TM1637 Display code 
#include <Arduino.h>
#include <TM1637Display.h>
// Module connection pins (Digital Pins)
#define CLK 5
#define DIO 6
// The amount of time (in milliseconds) between tests
#define TEST_DELAY   1000
TM1637Display display(CLK, DIO);
// ****** end of TM1637 Display code 

#include "DHT.h"
#define DHTPIN 3     // what pin we're connected to
#define DHTTYPE DHT22   // DHT 22  (AM2302)

DHT dht(DHTPIN, DHTTYPE);

const uint8_t SEG_TEMP[] = {
  0,  // blank
  0,  // blank
  0,  // blank
  SEG_A | SEG_E | SEG_F | SEG_G // F
  };

const uint8_t SEG_HUMID[] = {
  0,  // blank
  0,  // blank
  0,  // blank
  SEG_B | SEG_C | SEG_E | SEG_F | SEG_G // H
  };


void setup() {
  Serial.begin(9600);
  Serial.println("DHT22 Robojax Test with Display");
  pinMode(8,OUTPUT);
  digitalWrite(8,HIGH);// gives 5v for DHT22
  dht.begin();  
}

void loop() {
  // Reading temperature or humidity takes about 250 milliseconds!
  // Sensor readings may also be up to 2 seconds 'old' (its a very slow sensor)
  int h = dht.readHumidity();
  int t = dht.readTemperature();

  // check if returns are valid, if they are NaN (not a number) then something went wrong!
  if (isnan(t) || isnan(h)) {
    Serial.println("Failed to read from DHT");
  } else {
    Serial.print("Humidity: "); 
    Serial.print(h);
    Serial.print("\t");
    Serial.print("Temperature: ");
    int temperatureF = (t * 9 / 5) + 32.5;
    Serial.print(temperatureF);
    Serial.println(" F");
    Serial.print("\n");
  
    delay(TEST_DELAY);// wait
    // **** TM1637 code start
    display.setBrightness(0x0f);// set brightness
    uint8_t data[] = { 0x0, 0x0, 0x0, 0x0 };// clear display values
    display.setSegments(data);//clear display
    // **** TM1637 code end

    display.setSegments(SEG_TEMP);
    display.showNumberDec(temperatureF, false, 3,0);
  
    delay(1000);

    display.setSegments(SEG_HUMID);
      display.showNumberDec(h, false, 3,0);
    
    delay(1000);

  }


}
// loop end




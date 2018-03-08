/*
 * Original code from TM1637 https://github.com/avishorp/TM1637
 * Original code and library for DHT22 https://github.com/adafruit/DHT-sensor-library
 * Modified for Robojax video on Jan 07, 2018
 * by Ahmad Nejrabi, in Ajax, Ontario, Canada
 * Watch the video for this code https://youtu.be/z_FvRm6Te78
 * Other Arduino libarary and videos http://robojax.com/learn/arduino/
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

// Example testing sketch for various DHT humidity/temperature sensors
// Written by ladyada, public domain
// updated by Ahmad Nejrabi for Robojax.com videos.
// on Jan 07, 2018 in Ajax, Ontario, Canada

// ****** Start of DHT code 
#include "DHT.h"
#define DHTPIN 3     // what digital pin we're connected to
// Uncomment whatever type you're using!
//#define DHTTYPE DHT11   // DHT 11
#define DHTTYPE DHT22   // DHT 22  (AM2302), AM2321
//#define DHTTYPE DHT21   // DHT 21 (AM2301)
DHT dht(DHTPIN, DHTTYPE);
// ********** end of DHT22 code

void setup()
{
  Serial.begin(9600);
  Serial.println("DHT22 Robojax Test with Display");
  pinMode(8,OUTPUT);
  digitalWrite(8,HIGH);// gives 5v for DHT22
  dht.begin();  
}

void loop()
{
  delay(TEST_DELAY);// wait
  // **** TM1637 code start
  display.setBrightness(0x0f);// set brightness
  uint8_t data[] = { 0x0, 0x0, 0x0, 0x0 };// clear display values
  display.setSegments(data);//clear display
  // **** TM1637 code end
  

  // Robojax.com test video
  Serial.println(getTemp("f"));

  int temp = round(getTemp("f"));
  
  display.showNumberDec(temp, false, 3,1);



}// loop end


/*
 * getTemp(String req)
 * returns the temprature related parameters
 * req is string request
 * This code can display temprature in:
 * getTemp("c") is used to get Celsius
 * getTemp("f") is used to get fahrenheit
 * getTemp("k") is used for Kelvin
 * getTemp("hif") is used to get fahrenheit
 * getTemp("hic") is used to get Celsius
 * getTemp("f") is used to get humidity 
 * written by Ahmad Nejrabi for Robojax.com on Jan 07, 2018
 * in Ajax, Ontario, Canada
 */
float getTemp(String req)
{

  // Reading temperature or humidity takes about 250 milliseconds!
  // Sensor readings may also be up to 2 seconds 'old' (its a very slow sensor)
  float h = dht.readHumidity();
  // Read temperature as Celsius (the default)
  float t = dht.readTemperature();
  // Read temperature as Fahrenheit (isFahrenheit = true)
  float f = dht.readTemperature(true);

  // Compute heat index in Fahrenheit (the default)
  float hif = dht.computeHeatIndex(f, h);
  // Compute heat index in Celsius (isFahreheit = false)
  float hic = dht.computeHeatIndex(t, h, false);

  // Check if any reads failed and exit early (to try again).
  if (isnan(h) || isnan(t) || isnan(f)) {
    Serial.println("Failed to read from DHT sensor!");
    return;
  }
  // Compute heat index in Kelvin 
  float k = t + 273.15;
  if(req =="c"){
    return t;//return Cilsus
  }else if(req =="f"){
    return f;// return Fahrenheit
  }else if(req =="h"){
    return h;// return humidity
  }else if(req =="hif"){
    return hif;// return heat index in Fahrenheit
  }else if(req =="hic"){
    return hic;// return heat index in Cilsus
  }else if(req =="k"){
    return k;// return temprature in Kelvin
  }else{
    return 0.000;// if no reqest found, retun 0.000
  }
 
}

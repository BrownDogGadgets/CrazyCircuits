# Simple Temperature Displayed through a 7 Segment Display

This is a very simple set of code and libraries to use the DHT11 or DHT22 Temperature/ Humidity Sensor along with a TM1637 7 Segment Display.

This code allows the user to show Temperature in various measurement scales as well as humidity. It makes use of several Open Source libraries, including some from Adafruit.com.

This project was originally designed, coded, and presented by youtube author [RobotJax](https://www.youtube.com/watch?v=z_FvRm6Te78). We mostly followed his write up, but found a few errors in the overall design.

### Code

The code we're using is also from RobotJax. He does a nice job of explaining everything within the code. Make sure you know whether or not you're using a DHT11 or DHT22 and change that within the code. You can also easily choose between different temperature scales and humidity by changing a single letter in lines 56 and 58 in the code.

The only changes we made to the original code were to change which pins were being used. Since we're using the [Crazy Circuits Robotics Board](http://www.crazycircuits.com) we used digital pins 5 and 6 for the display and pin 3 as the sensor input. 

### Libraries:

* [TM1637](https://github.com/avishorp/TM1637) - Download from GitHub and Manually Install in your Arduino Library Folder.
* DHT11 - Do a search for the "DHT11" Library through the Arduino IDE. You'll want the Adafruit version 1.23, NOT the newer 1.3.
* DHT22 - Follow the same directions as above and still search for the "DHT11" Library from Adafruit. Install version 1.23 in order to make the code work.

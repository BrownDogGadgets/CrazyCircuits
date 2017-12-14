/*
 * XWing.ino
 * 
 * 
 * 
 */

#include <SoftwareSerial.h>
#include <NewPing.h>
#include <Servo.h> 

#define ARDUINO_RX 5 // should connect to TX of the Serial MP3 Player module
#define ARDUINO_TX 6 // connect to RX of the module
SoftwareSerial mySerial(ARDUINO_RX, ARDUINO_TX);

#define TRIGGER_PIN  A4  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define ECHO_PIN     A3  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define MAX_DISTANCE 200 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.
NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.

int theDistance = 0;
int theDistanceTemp = 0;
int theDistanceTotal = 0;
int triggerDistance = 30; // set the distance in centimeters to trigger the action
int sampleVal = 5;

Servo myServo;

int servoPIN = 3;
int servoTurnTimeForward = 20000; // time servo will run this many milliseconds
int servoTurnTimeReverse = 20000; // time servo will run this many milliseconds
int servoForward = 1200;
int servoStop = 1500;
int servoReverse = 1800;

int LEDpin = 11;

static int8_t Send_buf[8] = {0};

#define CMD_PLAY_W_INDEX 0X03
#define CMD_SET_VOLUME 0X06
#define CMD_SEL_DEV 0X09
#define DEV_TF 0X02
#define CMD_PLAY 0X0D
#define CMD_PAUSE 0X0E
#define CMD_SINGLE_CYCLE 0X19
#define SINGLE_CYCLE_ON 0X00
#define SINGLE_CYCLE_OFF 0X01
#define CMD_PLAY_W_VOL 0X22

void setup() {
  Serial.begin(9600);
  Serial.println("Starting...");
  mySerial.begin(9600);
  pinMode(LEDpin, OUTPUT);
  analogWrite(LEDpin, 10);
  myServo.attach(servoPIN);
  delay(500); // Wait chip initialization is complete
  sendCommand(CMD_SEL_DEV, DEV_TF); //select the TF card  
  delay(200); //wait for 200ms
}

void loop() {

  delay(50); // delay between pings
  theDistance = sonar.ping_cm();
  
  if ((theDistance > 0) and (theDistance < triggerDistance)) {
    // distance sensor
    Serial.print("distance: ");
    Serial.print(theDistance);
    Serial.println("cm");
    
    // servo
    Serial.println("servo forward");
    myServo.writeMicroseconds(servoForward); // start turning
    delay(servoTurnTimeForward); // alow servo to turn for X number of milliseconds
    Serial.println("servo stop");
    myServo.writeMicroseconds(servoStop); // stop turning

    // LED
  Serial.println("LED down");
    for (int fadeDValue = 10; fadeDValue < 255; fadeDValue += 10) {
      analogWrite(LEDpin, fadeDValue);
      delay(50);
    }
    
    // audio
    Serial.println("play audio");
    sendCommand(CMD_PLAY_W_VOL, 0X1E01); // play the first file with volume 15 class
    delay(25000); // delay for audio to finish playing

    // servo
    Serial.println("servo reverse");
    myServo.writeMicroseconds(servoReverse); // start turning
    delay(servoTurnTimeReverse); // alow servo to turn for X number of milliseconds
    Serial.println("servo stop");
    myServo.writeMicroseconds(servoStop); // stop turning

    // LED
  Serial.println("LED up");
    for (int fadeUValue = 255; fadeUValue > 10; fadeUValue -= 10) {
      analogWrite(LEDpin, fadeUValue);
      delay(50);
    }

    // reset
    theDistance = 0;
    theDistanceTotal = 0;
  }
  //else {
  //  Serial.println("Waiting...");
  //}
  
  



}





void sendCommand(int8_t command, int16_t dat) {
  delay(20);
  Send_buf[0] = 0x7e; //starting byte
  Send_buf[1] = 0xff; //version
  Send_buf[2] = 0x06; //the number of bytes of the command without starting byte and ending byte
  Send_buf[3] = command; //
  Send_buf[4] = 0x00; //0x00 = no feedback, 0x01 = feedback
  Send_buf[5] = (int8_t)(dat >> 8); //datah
  Send_buf[6] = (int8_t)(dat); //datal
  Send_buf[7] = 0xef; //ending byte
  for(uint8_t i=0; i<8; i++) {
    mySerial.write(Send_buf[i]);
  }
}


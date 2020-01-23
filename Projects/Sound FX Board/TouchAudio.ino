/*
 * TouchAudio.ino
 * 
 * The Teensy must calibrate the touch pins when it starts up, so when power is applied 
 * (via USB cable or any other method) do not touch the pins until the on-board LED turns on)
 * 
 *Version 1.0, BrownDogGadgets.com
 *
 *You can change the length of time that the program waits before accepting a new sound input.
 *
 *Changing the sensitivity is helpful depending on your Touch Points and who is interacting with them.
 * 
 * This is a work in-progress and will (hopefully) improve later...
 * 
 */


#include <SoftwareSerial.h>

#define ARDUINO_RX 9 // connect to TX of the Serial Audio Player module
#define ARDUINO_TX 10 // connect to RX of the Serial Audio Player module

SoftwareSerial mySerial(ARDUINO_RX, ARDUINO_TX);

// SOUND LENGTHS
// set the length of each sound in seconds (decimals are okay!)
float sound1Length = 1.0;
float sound2Length = 1.0;
float sound3Length = 1.0;
float sound4Length = 1.0;
float sound5Length = 1.0;
float sound6Length = 1.0;
float sound7Length = 1.0;
float sound8Length = 1.0;
float sound9Length = 1.0;

int touchPinA = 15;
int touchPinB = 16;
int touchPinC = 17;
int touchPinD = 18;
int touchPinE = 19;
int touchPinF = 22;
int touchPinG = 23;
int touchPinH = 3;
int touchPinI = 4;

int restA;
int restB;
int restC;
int restD;
int restE;
int restF;
int restG;
int restH;
int restI;

int pinLevel = 2000; // may need adjusting, higher is less sensitive, lower is more sensitive

int LEDpin = 13;

static int8_t Send_buf[8] = {0};

// COMMANDS for AUDIO PLAYER
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
#define CMD_STOP_PLAY 0x16

void setup() {
  delay(1500);
  calibrate();
  mySerial.begin(9600);
  delay(500); // wait for Serial MP3 Player module to initialize
  sendCommand(CMD_SEL_DEV, DEV_TF); // select the TF of the Serial Audio Player module
  delay(200); // wait for Serial MP3 Player module
  pinMode(LEDpin, OUTPUT);
  digitalWrite(LEDpin, HIGH);
}

void loop() {

  // read the touch pins
  int valA = (touchRead(touchPinA));
  int valB = (touchRead(touchPinB));
  int valC = (touchRead(touchPinC));
  int valD = (touchRead(touchPinD));
  int valE = (touchRead(touchPinE));
  int valF = (touchRead(touchPinF));
  int valG = (touchRead(touchPinG));
  int valH = (touchRead(touchPinH));
  int valI = (touchRead(touchPinI));
  

  // check if the touch pins were touched
  
  if (valA > (restA + pinLevel)) {
    playSound(1, sound1Length);
    boolean valAHeld = true;
  }

  if (valB > (restB + pinLevel)) {
    playSound(2, sound2Length);
  }

  if (valC > (restC + pinLevel)) {
    playSound(3, sound3Length);
  }

  if (valD > (restD + pinLevel)) {
    playSound(4, sound4Length);
  }
  
  if (valE > (restE + pinLevel)) {
    playSound(5, sound5Length);
  }
  
  if (valF > (restF + pinLevel)) {
    playSound(6, sound6Length);
  }
  
  if (valG > (restG + pinLevel)) {
    playSound(7, sound7Length);
  }
  
  if (valH > (restH + pinLevel)) {
    playSound(8, sound8Length);
  }
  
  if (valI > (restI + pinLevel)) {
    playSound(9, sound9Length);
  }

}



//-------------- functions below --------------//


// function to check which pin was touched and play the appropriate sound file
void playSound(int theFile, int theDelay) {

  int16_t theFileX;

  switch (theFile) {
    case 1:
      theFileX = 0X0F01;
      break;
    case 2:
      theFileX = 0X0F02;
      break;
    case 3:
      theFileX = 0X0F03;
      break;
    case 4:
      theFileX = 0X0F04;
      break;
    case 5:
      theFileX = 0X0F05;
      break;
    case 6:
      theFileX = 0X0F06;
      break;
    case 7:
      theFileX = 0X0F07;
      break;
    case 8:
      theFileX = 0X0F08;
      break;
    case 9:
      theFileX = 0X0F09;
      break;
    default:
      theFileX = 0X0F01;
      break;
  }

  sendCommand(CMD_PLAY_W_VOL, theFileX); // play the file with volume 15
  sendCommand(CMD_SINGLE_CYCLE, SINGLE_CYCLE_OFF); // set to play once (OFF) or loop (ON)
  delay(theDelay * 1000); // length of time to play file 

  return;

}


// function to send commands to audio player
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


// function to calibrate a pin
int calibratePin (int thePin) {
  int calRun = 50;
  int calVal = 0;
  int calValFull = 0;
  int calResult = 0;
  for (int i = 0; i < calRun; i++) {
    calVal = (touchRead(thePin));
    calValFull = calValFull + calVal;
    delay(8);
  }
  calResult = calValFull / calRun;
  return calResult;
}


// function to calibrate all the pins
void calibrate () {
  restA = calibratePin(touchPinA);
  restB = calibratePin(touchPinB);
  restC = calibratePin(touchPinC);
  restD = calibratePin(touchPinD);
  restE = calibratePin(touchPinE);
  restF = calibratePin(touchPinF);
  restG = calibratePin(touchPinG);
  restH = calibratePin(touchPinH);
  restI = calibratePin(touchPinI);

  delay(1500);
  
}

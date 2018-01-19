/*
 * NoiseMaker_VII.ino
 * 
 * Pete Prodoehl <pete@2xlnetworks.com>
 * 
 */
//Change the PiezoPin and the PotPin if you're using a Robotics Board or standard Arduino Board

int POTpin = 14;
long POTvalue;
long MAPvalue;

int piezoPin = 16;

void setup() {
  pinMode(piezoPin, OUTPUT);
  randomSeed(analogRead(0));
}


void loop() {

  POTvalue = analogRead(POTpin);
  MAPvalue = map(POTvalue, 0, 1024, 200, 1);
  
    tone(piezoPin, (int(random(MAPvalue*2, MAPvalue*8))));
    delay(MAPvalue);
    noTone(piezoPin);
    delay(MAPvalue);

  }  
}

/*
 * StepSequencer.ino
 * 
 * https://www.browndoggadgets.com/
 * 
 */

int speakerPin = 9;

int ledA = 6;
int ledB = 5;
int ledC = 4;
int ledD = 3;

void setup() {
  pinMode(speakerPin, OUTPUT);
  pinMode(ledA, OUTPUT);
  pinMode(ledB, OUTPUT);
  pinMode(ledC, OUTPUT);
  pinMode(ledD, OUTPUT);
}

void loop() {
  
  int valA = map(analogRead(A0), 0, 1024, 50, 600);
  int valB = map(analogRead(A1), 0, 1024, 50, 600);
  int valC = map(analogRead(A2), 0, 1024, 50, 600);
  int valD = map(analogRead(A3), 0, 1024, 50, 600);
  int tempo = map(analogRead(A4), 0, 1024, 400, 15);

  digitalWrite(ledA, HIGH);
  tone(speakerPin, valA);
  delay(tempo);
  digitalWrite(ledA, LOW);
  
  digitalWrite(ledB, HIGH);
  tone(speakerPin, valB);
  delay(tempo);
  digitalWrite(ledB, LOW);
  
  digitalWrite(ledC, HIGH);
  tone(speakerPin, valC);
  delay(tempo);
  digitalWrite(ledC, LOW);
  
  digitalWrite(ledD, HIGH);
  tone(speakerPin, valD);
  delay(tempo);
  digitalWrite(ledD, LOW);

}

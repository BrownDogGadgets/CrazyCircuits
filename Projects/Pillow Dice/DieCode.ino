int pinLeds1 = 3;
int pinLeds2 = 2;
int pinLeds3 = 1;
int pinLed4 = 0;
int buttonPin = 4;
int buttonState;
long ran;
int time = 2000;

void setup ()
{
  pinMode (pinLeds1, OUTPUT);
  pinMode (pinLeds2, OUTPUT);
  pinMode (pinLeds3, OUTPUT);
  pinMode (pinLed4, OUTPUT);
  pinMode (buttonPin, INPUT);
  randomSeed(analogRead(0));
}

void loop()
{
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH){
    ran = random(1, 7);
    if (ran == 1){
      digitalWrite (pinLed4, HIGH);
      delay (time);
    }
    if (ran == 2){
      digitalWrite (pinLeds1, HIGH);
      delay (time);
    }
    if (ran == 3){
      digitalWrite (pinLeds3, HIGH);
      digitalWrite (pinLed4, HIGH);
      delay (time);
    }
    if (ran == 4){
      digitalWrite (pinLeds1, HIGH);
      digitalWrite (pinLeds3, HIGH);
      delay (time);
    }
    if (ran == 5){
      digitalWrite (pinLeds1, HIGH);
      digitalWrite (pinLeds3, HIGH);
      digitalWrite (pinLed4, HIGH);
      delay (time);
   }
   if (ran == 6){
      digitalWrite (pinLeds1, HIGH);
      digitalWrite (pinLeds2, HIGH);
      digitalWrite (pinLeds3, HIGH);
      delay (time);
   }
  }
  digitalWrite (pinLeds1, LOW);
  digitalWrite (pinLeds2, LOW);
  digitalWrite (pinLeds3, LOW);
  digitalWrite (pinLed4, LOW);
}

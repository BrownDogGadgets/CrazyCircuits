//////////////////CREATED BY KJ ELECTRONICS///////////////////////////;
////////////FOLLOW ME ON YOUTUBE BY CLICKING THE LINK BELOW////////////
///////  https://www.youtube.com/channel/UCZE35bOktFxu8dIadxuQPLg /////

int music = 14;
int output, a;
int potval=15;
int number_of_led[8] = { 2, 3, 4, 5, 6, 7, 8, 9}; // Assign the pins for the leds
void setup()
{
for (a = 0; a < 8; a++)  
  pinMode(number_of_led[a], OUTPUT);
}

void loop()
{
potval=analogRead(15);
output = analogRead(music);
potval=map (potval,0,1024,5,40);
output = output/potval;   

  if (output == 0) 
   {
   for(a = 0; a < 8; a++)
     {
     digitalWrite(number_of_led[a], LOW);
     }
  }
  
  else
  {
   for (a = 0; a < output; a++)
    {
     digitalWrite(number_of_led[a], HIGH);
    }
    
    for(a = a; a < 8; a++) 
     {
      digitalWrite(number_of_led[a], LOW);
    
     }
  }
}

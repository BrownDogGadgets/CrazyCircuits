// Fade all IO by Osamu Iwasaki
// November 10, 2010

#include <MsTimer2.h>

#define OUT_MIN 0
#define OUT_MAX 19

byte luminance[20];
byte lumi[20] = {};

void setup()
{
int i;

for(i = OUT_MIN; i <= OUT_MAX; i++){
  pinMode(i, OUTPUT);
  digitalWrite(i,LOW);
}


for(i = OUT_MIN; i <= OUT_MAX; i++){
  digitalWrite(i,HIGH);
  delay(150);
}
for(i = OUT_MIN; i <= OUT_MAX; i++){
  digitalWrite(i,LOW);
  //delay(50);
}
delay(1000);

MsTimer2::set(1, int_pwm);
MsTimer2::start();
}


void int_pwm() {

static int f_wait[20];
static int f_max_time[20];
static int f_speed[20];
static int f_ct[20];
static long f_interval[20];

static int ch;

for(ch = OUT_MIN; ch <= OUT_MAX; ch++){
  if(f_wait[ch] == 0){
    f_wait[ch] = f_speed[ch] + 1;

    if( (f_ct[ch] < 255) )
      if(luminance[ch] != 255)
        luminance[ch] ++;

    if(f_ct[ch] == 255){
      if(f_max_time[ch] == 0)
        f_max_time[ch] = 0; // On Max Time
      else
        f_max_time[ch] --;
    }

    if( (f_ct[ch] > 255) && (f_ct[ch] < 511) && (f_max_time[ch] == 0))
      if(luminance[ch] != 0)
        luminance[ch] --;

    if(f_ct[ch] >= 511){
      if(f_interval[ch] == 0){
        f_interval[ch] = 10 * random(100); // fading seed
        f_speed[ch] = random(10); // fading speed
        f_ct[ch] = 0;
      }
      else
        f_interval[ch] --;
    }
    else
      f_ct[ch] ++;
  }
  f_wait[ch] --;
}
}

void fading(){

static byte counter = 0;
static boolean prev_off[20];
int i;

for(i = OUT_MIN; i <= OUT_MAX; i++){
  if(lumi[i] == 0){
    if(prev_off[i] == HIGH){
      digitalWrite(i,LOW);
      prev_off[i] = LOW;
    }
  }
  else
    lumi[i] --;
}

counter --;

if(counter == 0){
  for(i = OUT_MIN; i <= OUT_MAX; i++){
    if(luminance[i]){
      digitalWrite(i,HIGH);
      prev_off[i] = HIGH;
    }
    lumi[i] = luminance[i];
  }
}
}


void loop(){
fading();
}

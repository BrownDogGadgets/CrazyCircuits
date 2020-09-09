
import time
import board
import digitalio
import pulseio
from adafruit_motor import servo
from adafruit_clue import clue

pwm = pulseio.PWMOut(board.P0, duty_cycle=2 ** 15, frequency=50)

my_servo = servo.Servo(pwm)

button = digitalio.DigitalInOut(board.P1)
button.direction = digitalio.Direction.INPUT
button.pull = digitalio.Pull.UP

relay = digitalio.DigitalInOut(board.P16)
relay.direction = digitalio.Direction.OUTPUT

my_servo.angle = 90

print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")

while True:
    print("Waiting for Bubbles...\n\n\n\n\n\n\n\n")
    if button.value < 1:
        print("Prepare for Bubbles!\n\n\n\n\n\n\n\n")
        time.sleep(0.5)
        my_servo.angle = 145
        time.sleep(2)
        my_servo.angle = 118
        relay.value = True
        time.sleep(1)
        relay.value = False
        my_servo.angle = 90
        print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")

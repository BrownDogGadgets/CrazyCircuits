
import time
import board
import digitalio
import pulseio
from adafruit_motor import servo
from adafruit_clue import clue

pwm = pulseio.PWMOut(board.P13, duty_cycle=2 ** 15, frequency=50)

my_servo = servo.Servo(pwm)

my_servo.angle = 80

button = digitalio.DigitalInOut(board.P8)
button.direction = digitalio.Direction.INPUT
button.pull = digitalio.Pull.UP

print("\n\n\n\n\n\n\n\n\n\n\n")

while True:
    print("I've got a fever...\n\n\n\n\n\n\n\n")
    if button.value < 1:
		print("I've got a fever...\n\n")
		print("And the only prescription is...\n\n")
		print("MORE COWBELL!!!\n\n")
		time.sleep(0.5)
		my_servo.angle = 115
		time.sleep(0.06)
		my_servo.angle = 80
		time.sleep(0.08)

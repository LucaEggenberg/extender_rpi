import RPi.GPIO as GPIO
import time
import subprocess

GPIO.setmode(GPIO.BCM)

GPIO.setup(3, GPIO.IN, pull_up_down=GPIO.PUD_UP)

while True:
        input_state = GPIO.input(3)
        if input_state == False:
                subprocess.call(['sudo', '/usr/bin/extender'])
                time.sleep(10)

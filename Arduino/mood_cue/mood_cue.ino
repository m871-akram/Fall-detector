// include the servo library
#include <Servo.h>

Servo myServo; // create a servo object

int const potPin = A0; // analog pin used to connect the potentiometer
int potVal; // variable to read the value from the analog pin
int angle; // variable to hold the angle for the servo motor

void setup() {
myServo.attach(9); // attaches the servo on pin 9 to the servo object
Serial.begin(9600); // open serial connection
}

void loop() {
potVal = analogRead(potPin); // read the value of the potentiometer
// print the value to the serial monitor
Serial.print("potVal: ");
Serial.print(potVal);

// scale the numbers from the potentiometer
angle = map(potVal, 0, 1023, 0, 179);

// print out the angle for the servo motor
Serial.print(", angle: ");
Serial.println(angle);

// set the servo position
myServo.write(angle);

// wait for the servo
delay(15);
}

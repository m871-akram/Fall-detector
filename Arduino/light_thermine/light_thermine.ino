 int sensorValue;
 // variable to calibrate low value
 int sensorLow = 1023;
 // variable to calibrate high value
 int sensorHigh = 0;
 // LED pin
 const int ledPin = 13;
void setup() {
 // Make the LED pin an output and turn it on
 pinMode(ledPin, OUTPUT);
 digitalWrite(ledPin, HIGH);
 // calibrate for the first five seconds after program runs
 while (millis() < 5000) {
 // save the maximum sensor value
 sensorValue = analogRead(A0);
 if (sensorValue > sensorHigh) {
 sensorHigh = sensorValue;
 }
 // save the minimum sensor value
 if (sensorValue < sensorLow) {
 sensorLow = sensorValue;
 }
 }
 //turn the LED off, signaling the end of the calibration
 digitalWrite(ledPin, LOW);
 }
void loop() {
 //read the input from A0 and store it in a variable
 sensorValue=analogRead(A0);
 // map the sensor values to a wide range of pitches
 int pitch=map(sensorValue, sensorLow, sensorHigh, 50, 4000);
 // play the tone for 20 ms on pin 8
 tone(8, pitch, 20);
 // wait for 10ms
 delay(10);
 }

#include <Wire.h>
#include <MPU6050.h>

MPU6050 accelgyro;

int buzzerPin = 8;
int ledPin = 9;

void setup() {
  Serial.begin(9600);
  Wire.begin();
  accelgyro.initialize();

  pinMode(buzzerPin, OUTPUT);
  pinMode(ledPin, OUTPUT);

  if (!accelgyro.testConnection()) {
    Serial.println("MPU6050 connection failed!");
    while (1);
  }
  Serial.println("MPU6050 ready!");
}

void loop() {
  int16_t ax, ay, az;
  accelgyro.getAcceleration(&ax, &ay, &az);

  // Convert to g (assuming 16384 LSB/g sensitivity)
  float AccX = ax / 16384.0;
  float AccY = ay / 16384.0;
  float AccZ = az / 16384.0;

  // Calculate total acceleration magnitude
  float totalAcc = sqrt(AccX * AccX + AccY * AccY + AccZ * AccZ);

  Serial.println(totalAcc);

  // Fall detection thresholds
  if (totalAcc < 0.3) {
    // Possible free fall
    delay(200); // wait a bit
    accelgyro.getAcceleration(&ax, &ay, &az);
    AccX = ax / 16384.0;
    AccY = ay / 16384.0;
    AccZ = az / 16384.0;
    totalAcc = sqrt(AccX * AccX + AccY * AccY + AccZ * AccZ);

    if (totalAcc > 2.0) {
      // Impact detected
      Serial.println("FALL DETECTED!");
      digitalWrite(buzzerPin, HIGH);
      digitalWrite(ledPin, HIGH);
      delay(3000); // Alarm duration
      digitalWrite(buzzerPin, LOW);
      digitalWrite(ledPin, LOW);
    }
  }

  delay(100);
}

# 🛡️ Arduino Fall Detector (Personal Project)

A wearable **fall detection system** built using an **Arduino Uno**, an **accelerometer (MPU6050 or ADXL345)**, and simple alert mechanisms (buzzer + LED).  

This project is part of my personal learning journey with Arduino and sensors. The system can detect sudden falls by analyzing acceleration patterns and trigger an alarm.

---

## 📌 Features
- Detects **free fall + impact** using accelerometer data  
- Triggers a **buzzer and LED** alert when a fall is detected  
- Serial Monitor output for debugging and calibration  
- Simple, portable, and extendable design  

---

## 🛠️ Components Required
- Arduino Uno (from Arduino Starter Kit)  
- MPU6050 / ADXL345 accelerometer (from DFRobot Gravity sensor set)  
- 1x Buzzer  
- 1x LED + 220Ω resistor  
- Breadboard + jumper wires  
- Battery pack for wearable use  

---

## ⚡ How It Works
A fall typically consists of:
1. **Free fall** → acceleration magnitude drops close to **0g**  
2. **Impact** → acceleration spikes above **2g**  
3. (Optional) Device stays still → possible unconsciousness  

The algorithm monitors acceleration magnitude:
- If below **0.3g** → possible free fall  
- If followed by spike **> 2g** → fall detected  
- Alarm is triggered (LED + buzzer)  

---

## 🔌 Circuit Diagram
Below is the Fritzing-style circuit wiring:

- **Accelerometer (MPU6050 / ADXL345)**
  - VCC → 3.3V (or 5V depending on module)  
  - GND → GND  
  - SDA → A4  
  - SCL → A5  

- **Buzzer**
  - Positive → Pin 8  
  - Negative → GND  

- **LED**
  - Anode → Pin 9 (through 220Ω resistor)  
  - Cathode → GND  


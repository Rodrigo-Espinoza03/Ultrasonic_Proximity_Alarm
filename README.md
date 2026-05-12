# ECE 520 - Ultrasonic Proximity Alarm

# Introduction

This project uses an ultrasonic distance sensor to detect how close an object is to the sensor and trigger an audible alarm when the object moves within a certain distance range. The system produces sound based on the distance between the object and the ultrasonic sensor.

The purpose of this project is to create a simple embedded system that combines distance sensing and audio feedback. The ultrasonic sensor measures the distance of nearby objects, while the PL processes the sensor data and activates the two piezo buzzers when the measured distance reaches a programmed threshold. The alarm sound varies depending on the distance threshold, allowing the system to indicate how close the object is to the sensor.

This is the final project for ECE 520 at California State University, Northridge (CSUN).

Completed by:

* Rodrigo Espinoza

Professor

* Aaron Nanas

# Project Goals

* To design a system that detects the distance between an object and an ultrasonic sensor.
* To activate an audible alarm when an object is close to the sensor.
* To design a custom UART module specifically for the PMOD Maxsonar sensor.
* To gain experience with sensor interfacing, embedded programming, and hardware-software integration.

# Block Diagram

![Block Diagram](images/block_diagram.png)

# Video Demonstration

Video Demo: https://www.youtube.com/shorts/LvjLVKrKrXA

# Photos

## Ultrasonic Sensor

![Ultrasonic Sensor](images/ultrasonic_sensor.png)

## Buzzer / Speaker Output

![Buzzer Output](images/buzzer_output.png)

# Background and Methodology

The system was developed using an ultrasonic distance sensor, a microcontroller, and a buzzer or speaker. The ultrasonic sensor sends out sound waves and measures the time it takes for the echo to return after bouncing off an object. This time value is then used to calculate the distance between the object and the sensor.

The microcontroller continuously reads distance measurements from the ultrasonic sensor. When the measured distance becomes less than the programmed threshold, the system activates the buzzer. The alarm sound can be adjusted so that it becomes faster, louder, or more frequent as the object gets closer to the sensor.

The project was tested by placing objects at different distances in front of the ultrasonic sensor and observing the buzzer response. The system was adjusted to make sure the alarm activates reliably when an object enters the warning range.

# Results

The ultrasonic proximity alarm was successfully able to detect objects within a selected distance range and produce an audible warning when an object moved close to the sensor. The system responded in real time by continuously checking the distance and activating the buzzer when the object entered the alarm zone.

This project reinforced important embedded systems concepts, including sensor interfacing, signal timing, distance calculation, digital output control, and hardware-software integration. By combining the ultrasonic sensor with a buzzer, the project demonstrated how sensor data can be used to create a practical warning system.

# Components Used

* **Board:** Zybo Z7-10
* **Sensor:** Pmod MAXSONAR
* **Output:** 2 Piezo Buzzers
* **Wiring:** Jumper Cables

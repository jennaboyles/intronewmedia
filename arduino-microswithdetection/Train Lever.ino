#include<Servo.h>
Servo servo;
int const trigPin = 6;
int const echoPin = 5;
void setup()
{
pinMode(trigPin, OUTPUT); 
pinMode(echoPin, INPUT);     
servo.attach(3); // pin 3 connects to micro servo 
}
void loop()
{       
int duration, distance;
digitalWrite(trigPin, HIGH); 
delay(1);
digitalWrite(trigPin, LOW);// Measure the pulse input in echo pin
duration = pulseIn(echoPin, HIGH);// Distance is half the duration devided by 29.1 (from datasheet)
distance = (duration/2) / 29.1;// if distance less than 0.5 meter and more than 0 (0 or less means over range) 
if (distance <= 20 && distance >= 0) //distance range for detection; changed to 20 to prevent anything far triggering the arm movement
{  
servo.write(80);    delay(500); // turns micro servo arm 80 degrees when sensor detects object; and reaction time towards said object
else 
{   servo.write(0); delay(1000);}} 

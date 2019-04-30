/*
HC-SR04 Ultrasonic Sensor with LCD dispaly

HC-SR04 Ultrasonic Sensor
  VCC to Arduino 5V
  GND to Arduino GND
  Echo to Arduino pin 12
  Trig to Arduino pin 13

LCD Display (I used JHD162A) 
  VSS to Arduino GND
  VCC to Arduino 5V
  VEE to Arduino GND
  RS to Arduino pin 11
  R/W to Arduino pin 10
  E to Arduino pin 9
  DB4 to Arduino pin 2
  DB5 to Arduino pin 3
  DB6 to Arduino pin 4
  DB7 to Arduino pin 5
  LED+ to Arduino 5V
  LED- to Arduino GND
  
Modified by Ahmed Djebali (June 1, 2015).
*/
#include <LiquidCrystal.h> //Load Liquid Crystal Library
LiquidCrystal LCD(11,10,9,2,3,4,5);  //Create Liquid Crystal Object called LCD

int trigPin=13;
int echoPin=12;
float pingTime;
float targetDistance;
float speedOfSound = 776.5;

#define trigPin 13 //Sensor Echo pin connected to Arduino pin 13
#define echoPin 12 //Sensor Trip pin connected to Arduino pin 12


//Simple program just for testing the HC-SR04 Ultrasonic Sensor with LCD dispaly 
//URL:

void setup() 
{  
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  
  LCD.begin(16,2); //Tell Arduino to start your 16 column 2 row LCD
  LCD.setCursor(0,0);  //Set LCD cursor to upper left corner, column 0, row 0
  LCD.print("Target Distance:");  //Print Message on First Row
}

void loop() {
  long duration, distance;
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2000);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(15 );
  digitalWrite(trigPin, LOW);
  delayMicroseconds(10);
  duration = pulseIn(echoPin, HIGH);
  distance = (duration/2) /29.1 ;

  pingTime = pulseIn(echoPin, HIGH);
  pingTime = pingTime/1000000.;
  pingTime = pingTime/3600.;
  targetDistance = speedOfSound * pingTime;
  targetDistance = targetDistance/2;
  targetDistance = targetDistance*63360;
  


  LCD.setCursor(0,1);  //Set cursor to first column of second row
  LCD.print("                "); //Print blanks to clear the row
  LCD.setCursor(0,1);   //Set Cursor again to first column of second row
  LCD.print(distance); //Print measured distance
  LCD.print(" cm");  //Print your units.
  delay(250); //pause to let things settle
}

#include <MPU6050.h>
#include "I2Cdev.h"

#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
    #include "Wire.h"
#endif

#include <Adafruit_NeoPixel.h>

#define PIN 5 
#define NUM_LEDS 6

MPU6050 accelgyro;
int flexPin = 0;
int flexPin2 = 1;
int flexPin3 = 2;
int lightPin = A3;
int value;
int value2;
int value3; 
int value4;

uint32_t color = 0x00FF00;

int16_t ax, ay, az;
int16_t gx, gy, gz;

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_LEDS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {

  #if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
      Wire.begin();
  #elif I2CDEV_IMPLEMENTATION == I2CDEV_BUILTIN_FASTWIRE
      Fastwire::setup(400, true);
  #endif
  
  Serial.begin(9600);
  accelgyro.initialize();
  strip.begin();
  strip.setBrightness(60);
  strip.show();

}

void loop() {
  value = analogRead(flexPin);
  value2 = analogRead(flexPin2);
  value3 = analogRead(flexPin3);
  value4 = analogRead(lightPin);
  accelgyro.getMotion6(&ax, &ay, &az, &gx, &gy, &gz);
  
  Serial.println(value3);
  if(value < 260)
  {
    color = 0xFFFF00;
  }
  else if(value2 < 280)
  {
    color = 0xFF0000;
  }
  else if(value3 < 300)
  {
    color = 0x0000FF;
  }
  else
  {
    color = 0x00FF00;
  }

  if(value4 < 300)
  {
    strip.setPixelColor(0, color);
    strip.setPixelColor(1, color);
    strip.setPixelColor(2, color);
    strip.setPixelColor(3, color);
    strip.setPixelColor(4, color);
    strip.setPixelColor(5, color);
    strip.show();
  }
  else if(value < 260 && value2 < 280 && value3 < 300)
  {
    strip.setPixelColor(0, 128, 0, 128);
    strip.setPixelColor(1, 0, 0, 255);
    strip.setPixelColor(2, 255, 0, 0);
    strip.setPixelColor(3, 255, 165, 0);
    strip.setPixelColor(4, 0, 255, 0);
    strip.setPixelColor(5, 255, 255, 0);
    strip.show();
  }
  else
  {
    if(ax < -1000)
    {
      strip.setPixelColor(2, color);
      strip.show();
    }
    else
    {
      strip.setPixelColor(2, 0, 0, 0);
      strip.show();
    }
    if(ax < -3000)
    {
      strip.setPixelColor(1, color);
      strip.show();
    }
    else
    {
      strip.setPixelColor(1, 0, 0, 0);
      strip.show();
    }
    if(ax < -5000)
    {
      strip.setPixelColor(0, color);
      strip.show();
    }
    else
    {
      strip.setPixelColor(0, 0, 0, 0);
      strip.show();
    }
    if(ax > 4000)
    {
      strip.setPixelColor(3, color);
      strip.show();
    }
    else
    {
      strip.setPixelColor(3, 0, 0, 0);
      strip.show();
    }
    if(ax > 6000)
    {
      strip.setPixelColor(4, color);
      strip.show();
    }
    else
    {
      strip.setPixelColor(4, 0, 0, 0);
      strip.show();
    }
    if(ax > 8000)
    {
      strip.setPixelColor(5, color);
      strip.show();
    }
    else
    {
      strip.setPixelColor(5, 0, 0, 0);
      strip.show();
    }
  }
  delay(100);

}

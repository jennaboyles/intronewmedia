#include <Adafruit_NeoPixel.h>

#define NUM_LEDS 1  // This many NeoPixels...
#define LED_PIN  6  // are connected to this DIGITAL pin #
#define SENSOR   A0  // Light sensor to this DIGITAL pin #


//int sensorValue = !digitalRead(SENSOR);

int val = 0;
 
Adafruit_NeoPixel strip(NUM_LEDS, LED_PIN);
 
void setup() {
  Serial.begin(9600);
  
  strip.begin();
  strip.show();                  // Initialize all pixels to 'off'
  pinMode(SENSOR, INPUT_PULLUP); // Enable pull-up resistor on sensor pin
}


 
void loop() {
  
val = analogRead(A0);


  
  // The LDR is being used as a digital (binary) sensor, so it must be
  // COMPLETELY dark to turn it off, your finger is not opaque enough!
  if(!analogRead(SENSOR < 120)) {                 // Sensor exposed to light?
    colorWipe(strip.Color(225, 0, 0), 100); // Animate purple
  } 
  
  else{ 
    colorWipe(strip.Color(0, 0, 225), 100);     // Animate off
  }
  delay(2); // Pause 2 ms before repeating

  Serial.println(val);
  
}
 
// Fill pixels one after the other with a color
void colorWipe(uint32_t c, uint8_t wait) 
{
  for(uint16_t i=0; i<strip.numPixels(); i++) {
    strip.setPixelColor(i, c);
    strip.show();
    delay(wait);
  }
}

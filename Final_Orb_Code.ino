#include <Adafruit_NeoPixel.h>

#define NUM_LEDS 2  // This many NeoPixels...
#define LED_PIN  4  // are connected to this DIGITAL pin #
#define SENSOR   A0  // Light sensor to this analog pin #


int val = 0; //for the sensor read outs
 
Adafruit_NeoPixel strip(NUM_LEDS, LED_PIN);
 
void setup() {
  Serial.begin(9600);
  
  strip.begin();
  strip.show();                  // Initialize all pixels to 'off'
  pinMode(SENSOR, INPUT_PULLUP); // Enable pull-up resistor on sensor pin
}


 
void loop() {
  
val = analogRead(A0); 


  if(!digitalRead(SENSOR < 20)) {                //if sensor is under 20 (sensor covered), will shine purple
    colorWipe(strip.Color(0x29, 0x9B, 0xFF), 10); 
  } 
  
  else { 
    colorWipe(strip.Color(0xFF, 0x00, 0xCC), 10);  // otherwise shine blue (sensor uncovered)
  }

  Serial.println(val);  //for sensor read outs to help fine tune color change
  
}
 

void colorWipe(uint32_t c, uint8_t wait) 
{
  for(uint16_t i=0; i<strip.numPixels(); i++) {
    strip.setPixelColor(i, c);
    strip.show();
    delay(wait);
  }
}

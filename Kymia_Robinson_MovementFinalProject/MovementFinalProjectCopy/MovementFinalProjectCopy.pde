import org.openkinect.processing.*;

Kinect2 kinect2;

float minDistance = 500;
float maxDistance = 1000;
PImage img;

void setup() {
  size(512, 424);
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
  
  img = createImage(kinect2.depthWidth, kinect2.depthHeight, RGB);
}


void draw() {
  background(0);
  
  img.loadPixels();
  
  //minDistance = map(mouseX, 0, width, 0, 4500);
  //maxDistance = map(mouseY, 0, height, 0, 4500);

  // Get the raw depth as array of integers
  int[] depth = kinect2.getRawDepth();
  
  float totalXPixels = 0;
  float totalYPixels = 0;
  float totalPixels = 0; 

  // calculates visibility of object within given range or camera sensor
  int closest = 0;
  for (int x = 0; x < kinect2.depthWidth; x++) {
    for (int y = 0; y < kinect2.depthHeight; y++) {      
      int offset = x + y * kinect2.depthWidth;
      int d = depth[offset];
      //println(d);
      closest = min(d, closest);
      //println(closest);
      
      if (d > minDistance && d < maxDistance && x > 30) {
        img.pixels[offset] = color(0, 120, 200);
        
        totalXPixels += x;
        totalYPixels += y;
        totalPixels++;
        
      } else {
        img.pixels[offset] = color(0);
      }
    }
  }
  
  // updates the image projected in the window
  img.updatePixels();
  image(img, 0, 0);
  
  // finds the center of person/object within camera distance
  float avgXPixels = totalXPixels / totalPixels;
  float avgYPixels = totalYPixels / totalPixels;
  
  // test if statement: if distance is greater than 200 draw star here
  //if (closest >= 200) {
  //  noStroke();
  //  fill(250, 250, 210);
  //  translate(-150, -100);
  //  scale(0.5);
  //  star(avgXPixels, avgYPixels, 20, 100, 16);
  //}
  
   // draws star in center of tracked person/object
   //noStroke();
   //fill(250, 250, 210);
   //star(avgXPixels, avgYPixels, 20, 100, 16);
  
  //fill(255);
  //textSize(32);
  //text(minDistance + " " + maxDistance, 10, 64);
}

// creates the star shape
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

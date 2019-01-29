int value = 0;
color a, b;
boolean use = true;

void setup() {
  size(displayWidth, displayHeight);
  background(100000);
  resetColors();
}

void draw() { 
  //This fucntion will change the colors of a certain framerate when dragging the mouse.
  ellipse(mouseX, mouseY, pmouseX, pmouseY);
  fill(200, 800, 0);
  if(frameCount % 5 == 0) use = !use;
  
}

void resetColors() {
  //Changes to two different colors
  a = color(20, 255, 300);
  b = color(random(200, 250), random(30, 60), random(200, 250));
  
}

void mouseDragged() {
  if(use)      fill(a);
  else         fill(b);
}

void keyPressed(){
  //Changes the color while holding down mouse one until you let go and then it will go back to its original color.
  resetColors();
  
}

void ellipse(int x, int y, int px, int py) {
  //This is what makes the ellipses have the certain shape it has.
  //The faster you drag your mouse the bigger the shape will get and vice-versa.
  float speed = abs(y-py) + abs(x-px);
  stroke(speed);
  ellipse(x, y, speed, speed);
}

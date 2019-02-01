PImage bg;
int y;
float red;
float green;

//sets bg image to pixelbot

void setup() {
  size(600, 600);
  bg = loadImage("pixelbot.jpg");
  
}

//drawing tool for face

void draw() {  
   
  
if (mousePressed) {
rect( mouseX, mouseY, 20, 20 );
fill(0, 300, 255);
stroke(0, 300, 255);

}
else {
rect( mouseX, mouseY, 20, 20 );
fill(0, 300, 255);
stroke(0, 300, 255);

  background(bg);
  
}
}

PImage patrick;
float xPos;
float yPos;
float xSpeed;
float ySpeed;


void setup () {
  size(displayWidth,displayHeight);
  patrick = loadImage("patrick.png");
  
  background (255,255,0);
  imageMode(CENTER); 
  
  xPos =random(width); // small patrick in background x coordinate 
  yPos =random(height); // small patrick in background y coordinate
  
  xSpeed = 5;
  ySpeed = 5;
  
  for(int i = 0; i < 100; i++) {
    image (patrick, random(width), random(height), 30, 30); // small patrick in background 
  }
}

void draw () {
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  image(patrick, width/2, height/2, mouseX, patrick.height/2);
  
  image(patrick, xPos, yPos); 
  
  if(xPos <= patrick.width/2 || xPos >= width - patrick.width/2){
    xSpeed = -xSpeed;
  }
  
  if(yPos <= patrick.height/2 || yPos >= height - patrick.height/2){
    ySpeed = -ySpeed;
  }
}
void keypressed(){
  println("pressed");
  if(key == 's' ||key == 'S'){
    saveFrame("patrickAnimation.png");
  }
}

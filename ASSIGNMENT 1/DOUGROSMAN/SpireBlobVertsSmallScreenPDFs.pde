import processing.pdf.*;

float r;
float y;
float sizeMouse;
float rotation = 0.5;
int num = 0;
boolean record = true;
int windowX = 0;
float red = 0;
float green = 0;
float blue = 0;

PrintWriter output;


void setup()
{
  size(200, 1040);
  pixelDensity(1);
  background(255);
  frameRate(60);
}
void draw()
{
  
  if(record)
  {  
    beginRecord(PDF, "LNC/Batch14/b14-"+num+".pdf");
    output = createWriter("LNC/Batch14/b14-"+num+".txt");
    noStroke();
    //fill(random(255), random(255), random(255));
    //rect(0, 0, width, height);
    record = false;
  }
  
  pushMatrix();
  pushStyle();
  fill(0);
  noFill();
  rectMode(CENTER);
    
  translate(width/2, y);
  rotate(radians(r));
  //stroke(red, green, blue);
  stroke(0);
  strokeWeight(0.5);
  float yRateMouse = map(mouseY, 0, 1040, .5, .25);
  sizeMouse = map(mouseX, 0, 200, 0.0, 125.0);
  //rotation = map(mouseX/(mouseY +.01), 0, 0.3529, 0, .4);
  
  if(sizeMouse > 0)
  {
    rect(0, 0, sizeMouse, sizeMouse);
  }
  
  output.println(sizeMouse + ", " + y + ", " + r);
  
  popStyle();
  popMatrix();
    
    //x+=xRate;
    r+=rotation;
    y+=yRateMouse;
    
    if(y > height - sizeMouse)
    {
      
    //saveFrame("images/GenSquares-####.png");
      
      endRecord();
      reset();
      
      record = true;
      
    }
}

void reset()
{
  output.flush();
  output.close();
  y = sizeMouse;
  //r = 0;
  num++;
  red = random(255);
  green = random(255);
  blue = random(255);
  background(255);
}

void keyPressed()
{
  if (key == 's')
  {
     rotation+=0.2;
  }
    
  else if (key == 'a')
  {
     rotation-=0.2;
  } 
  
  else if (key == 'r')
  {
    //record = !record;
    reset();
  }
}

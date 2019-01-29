float diameter = 5.0;
float random1;
float random2;
float random3;
int fill = 255;
int stroke = 0;
boolean shrink = false;

void setup()
{
  size(displayWidth, displayHeight);
  background(0);
}

void draw()
{
  if(mousePressed == true)
  {
    for(int i = 0; i < 20; i++)
    {
      if(mouseButton == RIGHT)
      {
        fill(random1, random2 , random3);
      }
      else
      {
        fill(fill,fill,fill);
      }
      ellipse(mouseX, mouseY, diameter, diameter);
      stroke(stroke,stroke,stroke);
    }
    if(shrink == true)
    {
      diameter /= 1.05;
      if(diameter < 10.0)
      {
        shrink = false;
      }
    }
    else if(diameter <= 500.0)
    {
      diameter *= 1.05;
    }
    else
    {
      shrink = true;
    }
  }
}
  
void mouseReleased()
{
  diameter = 5.0;
  random1 = random(255);
  random2 = random(255);
  random3 = random(255);
}

void keyPressed()
{
  if(keyCode == UP)
  {
    background(255);
    fill = 0;
    stroke = 255;
  }
  if(keyCode == DOWN)
  {
    background(0);
    fill = 255;
    stroke = 0;
  }
}

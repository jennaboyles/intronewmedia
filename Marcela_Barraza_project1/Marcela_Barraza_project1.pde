void setup()
{
  size(600, 600); //size of screen
  background(0); //make background black
}

void draw() 
{
 for (int i = 0; i < 10; i++) {
   //rect1
  rect(100, 100, 50, i);
  //rect2
  rect(150, 150, 50, i);
  //rect3
  rect(200, 200, 50, i);
  //rect4
  rect(250, 250, 50, i);
  fill(255);
}

  if (mousePressed) { //looks to see if mouse is pressed
    fill(59, 186, 165); //fills in mint green color
    ellipse(mouseX, mouseY, 20, 20); //draws a circle
  } else { //looks to see if mouse is not pressed
    fill(161, 118, 224); //fills in pastel purple color
    rect(mouseX, mouseY, 20, 20); //draws a square
  }
}

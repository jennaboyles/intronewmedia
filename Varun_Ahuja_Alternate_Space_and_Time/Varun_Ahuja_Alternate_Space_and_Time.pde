void setup() {//sets size of display
  size(1200,400);
  background(255);
}

void draw() {//draws ellipses
  stroke(0,0,0,20);
  noFill();
  ellipse(400, 300, mouseX, mouseY);
  ellipse(400, 100, mouseX, mouseY);
  ellipse(800, 100, mouseX, mouseY);
  ellipse(800, 300, mouseX, mouseY);
  ellipse(600, 200, mouseX, mouseY);
  if(mousePressed){ //resets to mouse location and changes color of central ellipse
    background(255);
    for (int i = 0; i < 5; i++) {
      ellipse(400, 300, mouseX, mouseY);
      ellipse(400, 100, mouseX, mouseY);
      ellipse(800, 100, mouseX, mouseY);
      ellipse(800, 300, mouseX, mouseY);
      ellipse(600, 200, mouseX, mouseY);
      fill(random(255),random(255),random(255));//cycles through colors till mouse is pressed
    }
  }
}

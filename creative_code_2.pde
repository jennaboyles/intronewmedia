float red;
float green;

void setup() {
  size(400, 400);
}
void draw() {
  
    red= map(mouseX, 0, height, 255, 0);
   green= map(mouseY, 0, width, 255, 0);
  if(mousePressed) {
    background (green, red, 255);
  }
  if(keyPressed) {
      if(mouseX > 20) {
    fill(red,green, 255);
    noStroke();
  ellipse(mouseX, mouseY, mouseX- mouseY, mouseY- mouseX);
    }
  if(mouseX < 200) {
    fill(red, green, 255);
    noStroke();
 ellipse(mouseX, mouseY, mouseX- mouseY, mouseY- mouseX);
  }
  if(mouseY < 200) {
    fill(red, green, 255);
    noStroke();
  ellipse(mouseX, mouseY, mouseX- mouseY , mouseY- mouseX);
    }
  if(mouseY > 200) {
    fill(red, green, 255 );
    noStroke();
  ellipse(mouseX, mouseY, mouseX- mouseY , mouseY- mouseX );
  }
  }
  else {
  if(mouseX > 200) {
    fill(green);
    stroke(red);
  rect(mouseX, mouseY, mouseY - mouseX, mouseY - mouseX);
    }
  if(mouseX < 200) {
    fill (green);
    stroke(red);
  rect(mouseX, mouseY, mouseY - mouseX, mouseY - mouseX);
  }
  if(mouseY < 200) {
    fill(red);
    stroke(green);
  rect(mouseX, mouseY, mouseY - mouseX, mouseY - mouseX);
    }
  if(mouseX > 200) {
    fill(red);
    stroke(green);
  rect(mouseX, mouseY, mouseY - mouseX, mouseY - mouseX);
  }
  }
}                                                                                                                                                                                                               

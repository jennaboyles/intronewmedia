int x = 0;
int speed = 2;

void setup() {
  size(400, 400);
  background(0,120,39);
  
}

void draw() {
  if (mousePressed);
    stroke(20);
    fill(217,22,22);
    ellipse(mouseY, mouseY, 50,50);
    fill(700,40,20);
    rect(mouseX, mouseY, 50,50);
    x = x + speed;
    
    if ((x > width) || (x < 0)) {
      
          speed = speed * -1;
    }          
  stroke(0);
  fill(275);
  ellipse(x,350,32,32);
  

     
   
}

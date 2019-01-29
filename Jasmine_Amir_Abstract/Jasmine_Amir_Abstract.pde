

void setup(){          //canvas size
  size(700, 600);

}



void draw(){
  background(255, 20, 0);     //default red bg
  
  if (mousePressed) {
  background(50, 205, 50);    //color change to green
  }

  for (int i = 10; i < 700; i = i+50) {
  stroke(255);
  strokeWeight(5);               //outlines
  fill(255, 215, 0);
  rect(i, i, 2, 2); 
  rect(i+3, i+3, 4, 4); 
  rect(30, mouseY-150, 30, 40);
  
  fill(0, 60, 150);
  ellipse(220, 220, 220, 220);
  ellipse(100, mouseY, 100, 80);
  fill(255, 215, 0);
  rect(370, 260, 190, 150);
  rect(mouseX+200, 80, 100, 140);     
  rect(10, 340, 100, 50);
  rect(390, 10, 100, 20);
  ellipse(500, mouseY, 100, 100);
  
  fill(0, 60, 150);
  rect(10, mouseY+70, 400, 50);
  rect(mouseX-60, 300, 200, 30);
  ellipse(615, 513, 150, 150);
  fill(255, 215, 0);
  ellipse(mouseX, 500, 200, 200);
   
}
}

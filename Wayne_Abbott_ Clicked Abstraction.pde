

void setup(){
  size(displayWidth, displayHeight);
  background(0);
}



void draw(){

  fill(random(60));
  rect(mouseX,mouseY, 12,12);
  
    
    fill(random(100));
  ellipse(mouseX, height-mouseY, 50, 50 );
  
     fill(random(255));
  ellipse(width-mouseX, mouseY, 50, 50 );
  
  stroke(random(255), random(255), random(255));
  line(pmouseX,pmouseY,mouseX, mouseY);

  
}

void mousePressed(){
  
for(int i=1; i <= (width-20); i = i + 20){
  rect (i, 20, 1000, 1000);
  fill(random(20), 0, 190);

  
  ellipse(random(300), 100, random(0),600);
  
  fill(random(1), 130, random(255));
  ellipse(random(3000), random(3000), random(3000), random(3000));
 
  fill(random(100));
  rect(random(750), random(750), random(750), random(750));
  
  bezier(100, random(1000), random(1000), random(1000),1000, random(1000), random(1000), random(1000));
  
}
}

void keyPressed(){
  background(random(180),random(200),random(60));
}

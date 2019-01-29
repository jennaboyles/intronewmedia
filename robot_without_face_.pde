void setup(){
  size(1200,1000);
  background(135,225,250);
  noStroke();
}

void draw(){
  
  background(135,225,250);//light blue
  
      for (int i = 50; i < 2000; i = i+200) {
  fill(255);
  ellipse(i,i,i,30); //white stairs
  rect(i,mouseY,10,10);//moving squares
}
 
  //robot body 1
  fill(100,60,240);//body color 1
  rect(mouseX-100,300,200,250,15,15,15,15);//body 
  fill(100,160,240);//screen color 1
  rect(mouseX-75,350,150,150,15,15,15,15);//screen 
  
  //eyes 
    fill(0); 
    ellipse(mouseX+25,450,20,20);// right eye
    ellipse(mouseX-50,450,20,20);// left eye
  
  //changing when pressing mouse 
  if (mousePressed)
  {
    
    background(252,239,226);//light orange
    
     for (int i = 50; i < 1000; i = i+20) {
  fill(255);
  ellipse(i,i-100,i,i); //spotlight
}
    fill(236,176,161);
  ellipse(mouseX/2,mouseY/4,50,50);
  ellipse(mouseX+100,mouseY+100,200,200);
  ellipse(mouseX*2,mouseY*2,100,100);
    
  //robot body 2
    fill(243,112,64);//body color 2
    rect(mouseX-100,100,200,250,15,15,15,15);//body 
    fill(244,199,85);//screen color 2
    rect(mouseX-75,125,150,150,15,15,15,15);//screen 
    
  //eyes 
    fill(0); 
    ellipse(mouseX+50,150,20,20);// right eye
    ellipse(mouseX-25,150,20,20);// left eye
    
}}

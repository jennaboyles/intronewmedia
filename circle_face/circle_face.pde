
int value = #FAEE00;

void setup(){
  size(500, 500);
  background(#88AAE0);
  smooth(2);
  
  
  for(int i = 0; i < 500;){
    for(int k = 0; k < 500;){
      fill(#08FF7D);
      noStroke();
      ellipse(18 + i, 18 + k, 25, 25);
      k += 31.25;
    }
    i += 31.25;
  }
  
}

void draw(){
  
  /*
  fill(#23EA21);  
  quad(50,50, 357, 235, 142, 231, 200, 45);
  
  fill(#F7F707, 5);
  ellipse(mouseX, mouseY, 100, 100);
  */
  
  fill(value);
  stroke(#030303);
  ellipse(250, 250, 200, 200);
  
  line(214, 210, 214, 266);
  line(284, 210, 284, 266);
  line (186, 295, 316, 295);
  
  stroke(#08FF7D);
  ellipse(mouseX, mouseY, 20, 20);
  
  print(mouseX + " ");
  println(mouseY);

  
}

void mousePressed(){
  if (value == #FAEE00){
    value = #0051FA;
  }
  else{
    value = #FAEE00;
  }
}

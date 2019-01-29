float angle;
PShape s;

void setup(){
  size(300,300);
  s=loadShape("a.svg");
  noStroke();
}
 
void draw(){
  background(255);
  
// rotation angle
  angle += 0.002;
  
// move coordinate origin to center of sketch window
  translate(width/2,height/2);
  
// number of scaled shapes
  for (int i=0; i<80; i++){
    rotate(angle);
    scale(0.95);
    shapeMode(CENTER);
    shape(s, 40, 40); }

//to save frame to folder    
  if (keyPressed){
  if (key =='s'){
saveFrame("a-####.jpg");
  }
  }

//interaction to set color, opacity
if(mousePressed == true){
  s.disableStyle(); //ignore SVG color
fill( random(255), random(255), random(255), random(255));
  if (mousePressed==false){
    fill(255);
  }
}
}

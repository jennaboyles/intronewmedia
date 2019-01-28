void setup() {
  size(800, 600); // Creating the size of the picture
}

void draw() {
  int diameter = 40; // Intializing the diameter of the circle
  if(mousePressed){ // Creating conditional statement to see if mousePressed or not
    noStroke();
    fill( random(255), random(255), random(255) ); // Color of the circle will change to a random color
    if(mouseButton == RIGHT){
      background(180);
    }
  } else {
    stroke(0);
    fill(255);
    for (int i =0; i < 5; i++) { // Creating a for loop to paste on to the console
      print("Why are there too many circles? ");
    }
  }
  ellipse(mouseX, mouseY, diameter, diameter); // Creating the circle
}

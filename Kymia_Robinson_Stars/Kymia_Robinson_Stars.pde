int num = 0;                               //sets starting num to 0
color bgcolor = color(103, 152, 204);      //sets background color
PShape star;                               //creates a new shape
float x = map(450, 0, height, 0, width);   //creates area the size of window
float y = map(450, 0, height, 0, width);   //creates area the size of window

//setup initial screen size, set star variable to imported svg, set svg strokeWeight
void setup () {
  size(500, 500);
  background(bgcolor);
  star = loadShape("star.svg");
  strokeWeight(5);
  
  //disables svg default styling
  star.disableStyle();
  stroke(255, 255, 255, 255);
  strokeWeight(8);
}

//draw variable to screen
void draw() {
  //set fill textSize and alignment and position of num variable
  fill(#FFFFFF);
  textSize(20);
  textAlign(CENTER);
  text(num, 480, 490);
}

//function changes background color and renders stars in random postion in window
//equal to the current number in the num variable
void changeBackgroundStar () {
  background(bgcolor);
  
  for (int i = 0; i <= num - 1; i++) {
    bgcolor = color(random(255), random(255), random(255));
    
    //creates stars of different opacity
     stroke(255, 255, 255, random(255));
     shape(star, random(x), random(y), 80, 80);
  }
}

//function that increases num variable and number of stars rendered to the screen 
//when up button is pressed and decreases num variable and number of stars rendered 
//to the screen when the down button is pressed and runs changeBackgroundStar function
void keyPressed() {
    if (keyCode == UP) {
        num += 1;
        changeBackgroundStar();
     } else if (keyCode == DOWN && num >= 1) {
        num -= 1;
        changeBackgroundStar(); 
     }
}

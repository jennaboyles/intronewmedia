/*This sketch will use variables, for loops, and if/else statements/
Class Example 1.24.19*/

//Global variables
int diameter = 10; //this is an integer
float red;      //this is a decimal 
float green;    //we'll use these to map color values in the draw function below
  
void setup(){ //make my canvas the size of my screen and set background to black
  size(displayWidth, displayHeight); 
  background(0);  
}


void draw(){
  
   //draw a yellow circle with a red outline at x = 20, y = 20, 30 pixels by 30 pixels 
    ellipse(20, 20, diameter, diameter);
    fill(255, 204, 0);
    stroke(255,0,0);

 //a for loop is a way to iterate quickly, it's structure has 3 parts, int, test, update
 //int (the initial value aka starting point)
 //test (is it true or false? the loop continues until the test is false)
 //update (increment)
 
 //draw blue circles on x axis, every 20 pixels
 for (int i = 20; i <= (width-20); i = i + 20) {
   //draw blue circles on y axis, every 20 pixels 
   for (int j = 20; j <= (height-20); j = j + 20) {
      ellipse(i, j, diameter, diameter);
      fill(0,0,255); 
    }
  }
  
  //map (value, start1, stop1, start2, stop2)
  red = map(mouseX, 0, width, 0, 255);
  green = map(mouseY, 0, height, 0, 255);
  
  //fill(mouseX, mouseY, 255);
  fill(red, green, 255);
  noStroke();
  
  //draw a red square at the mouse coordinates
  //fill(255,0,0);
  rect(mouseX, mouseY, diameter, diameter*2);

   
}

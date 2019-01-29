
// A source image is taken in and a destination set.
PImage sourceImage;       
PImage destination;

// "pixelDimension" sets the dimensions of pixels to be mapped on the matrix.
int pixelDimension = 1; 

void setup() {
  
  // This takes in the pixel dimensions of an image and passes through a renderer.
  size(520, 293, P3D);
  
  // An image is loaded.
  sourceImage  = loadImage("LapCat.jpg");        
  
  //The basic image is now created.
  destination = createImage(sourceImage.width, sourceImage.height, RGB);
}

void draw() {
  
  background(0);

  // This loop iterates though columns, setting pixels in place.
  for (int i = 0; i < sourceImage.width/pixelDimension; i++) {
    // This loop will do the same for rows.
    for (int j = 0; j < sourceImage.height/pixelDimension; j++) {
      
      // Conditional statement surprise!
      if( keyPressed) {
        println ("Why did I do this project?");
        exit();
      }
      
      // Pixel positions are captured for (x,y) coordinates.
      int coordX = i * pixelDimension + pixelDimension/2;
      int coordY = j * pixelDimension + pixelDimension/2; 
      
      // Completed pixel positions are set on the matrix.
      int pixPos = coordX + coordY * width;          
      
      // The color of the original image's pixels are captured.
      color original = sourceImage.pixels[pixPos];
      
      // Calculate a z position as a function of mouseX and pixel brightness
      float z = (mouseX/(float)width) * brightness(sourceImage.pixels[pixPos]) - 100.0;
      // Translate to the location, set fill and stroke, and draw the rect
      
      /* We use a "push" technique here.  Pixel values are "pushed" onto a 
       set matrix and stored for manipulation. */
      pushMatrix();
      
      /* As the mouse button slides, the pixels
       * in the image are translated accordingly.
       * The farther the mouse moves to the right,
       * the more "exploded" the image. */
      translate(coordX, coordY,z);
      
      /* Keep the fill as pixels of the original image.
       * Do not add any borders around the pixels themselves.
       * Ensure that the image stays centered. */
      fill(original);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, pixelDimension, pixelDimension);
      
      /* A "pop" action removes any stored values
       * and returns them to their original location.
       * This is achieved when the mouse position is 
       * returned to the left-most spot. */
      popMatrix();
    }
  }
}

// Pressing any key exits the program.
//void keyPressed(){
   // exit();
//}

void setup () {
size(500, 500); 
background(198,233,255);
}
void draw(){
if (mousePressed){
stroke(206,33,10);
fill(136,146,252);
rect(200, 200, 200, 200);


}
else {
fill(148,204,200);
stroke(66,137,244);
ellipse(random(500),random(500),random(50),random(50));
}
}

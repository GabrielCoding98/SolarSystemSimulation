 class Jupiter{
  PShape globe;
float size;
float translateX, constantX, translateZ;
Jupiter(float size, PImage img){
 this.size= size;
   noStroke(); 
   
   constantX=1;
   translateX=0;
   noFill();
  globe= createShape(SPHERE, size);
  globe.setTexture(img);
  
}
void update(){
  constantX+=.00084317;
   translateX=500*cos(constantX);
   translateZ=500*sin(constantX);
}
void show(){
  pushMatrix();
  noStroke();
  translate(translateX+15, 0, translateZ+15);
  shape(globe);
  popMatrix();
}

}

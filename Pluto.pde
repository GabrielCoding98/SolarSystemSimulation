class Pluto{
  PShape globe;
float size;
float translateX, constantX, translateZ;
Pluto(float size, PImage img){
 this.size= size;
   noStroke(); 
   
   constantX=1;
   translateX=0;
   noFill();
  globe= createShape(SPHERE, size);
  globe.setTexture(img);
  
}
void update(){
  constantX+=.00004032;
   translateX=2500*cos(constantX);
   translateZ=2500*sin(constantX);
}
void show(){
  pushMatrix();
  noStroke();
  translate(translateX+15, 0, translateZ+15);
  shape(globe);
  popMatrix();
}

}

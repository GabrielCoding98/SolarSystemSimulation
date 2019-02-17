class Mercury{
  PShape globe;
float size;
float translateX, constantX, translateZ;
Mercury(float size, PImage img){
 this.size= size;
   noStroke(); 
   
   constantX=1;
   translateX=0;
   noFill();
  globe= createShape(SPHERE, size);
  globe.setTexture(img);
  
}
void update(){
  constantX+=.0415;
   translateX=50*cos(constantX);
   translateZ=50*sin(constantX);
}
void show(){
  pushMatrix();
  noStroke();
  translate(translateX, 0, translateZ);
  shape(globe);
  popMatrix();
}

}

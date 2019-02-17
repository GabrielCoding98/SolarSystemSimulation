class Neptune{
  PShape globe;
float size;
float translateX, constantX, translateZ;
Neptune(float size, PImage img){
 this.size= size;
   noStroke(); 
   
   constantX=1;
   translateX=0;
   noFill();
  globe= createShape(SPHERE, size);
  globe.setTexture(img);
  
}
void update(){
  constantX+=.00006068;
   translateX=1600*cos(constantX);
   translateZ=1600*sin(constantX);
}
void show(){
  pushMatrix();
  noStroke();
  translate(translateX+15, 0, translateZ+15);
  shape(globe);
  popMatrix();
}

}

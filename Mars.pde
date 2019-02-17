class Mars{
  PShape globe;
float size;
float translateX, constantX, translateZ;
Mars(float size, PImage img){
 this.size= size;
   noStroke(); 
   
   constantX=1;
   translateX=0;
   noFill();
  globe= createShape(SPHERE, size);
  globe.setTexture(img);
  
}
void update(){
  constantX+=.0053;
   translateX=300*cos(constantX);
   translateZ=300*sin(constantX);
}
void show(){
  pushMatrix();
  noStroke();
  translate(translateX+15, 0, translateZ+15);
  shape(globe);
  popMatrix();
}

}

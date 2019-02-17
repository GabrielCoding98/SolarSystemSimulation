class Earth{
  PShape globe;
float size;
float translateX, constantX, translateZ;
Earth(float size, PImage img){
 this.size= size;
   noStroke(); 
   
   constantX=1;
   translateX=0;
   noFill();
  globe= createShape(SPHERE, size);
  globe.setTexture(img);
  
}
void update(){
  constantX+=.01;
   translateX=200*cos(constantX);
   translateZ=200*sin(constantX);
}
void show(){
  pushMatrix();
  noStroke();
  translate(translateX+15, 0, translateZ+15);
  shape(globe);
  popMatrix();
}

}

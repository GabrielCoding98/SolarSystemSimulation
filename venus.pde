class Venus{
  PShape globe;
float size;
float translateX, constantX, translateZ;
Venus(float size, PImage img){
 this.size= size;
   noStroke(); 
   
   constantX=1;
   translateX=0;
   noFill();
  globe= createShape(SPHERE, size);
  globe.setTexture(img);
  
}
void update(){
  constantX+=.0162;
   translateX=100*cos(constantX);
   translateZ=100*sin(constantX);
}
void show(){
  pushMatrix();
  noStroke();
  translate(translateX, 0, translateZ);
  shape(globe);
  popMatrix();
}

}

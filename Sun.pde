class Sun{
  float size;
   PShape globe;
 
 Sun(float size, PImage img){
    this.size = size;
   noStroke(); 
   noFill();
   globe = createShape(SPHERE, size);
globe.setTexture(img);
  }
  void update(){
    
  }
  void show(){
   pushMatrix();
   
    noStroke();
    shape(globe);
    popMatrix();
   // sphere(50);
  
  }
}

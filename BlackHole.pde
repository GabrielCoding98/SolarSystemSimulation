import peasy.*;
Sun sun;
Earth earth;
Venus venus;
Mercury mercury;
Mars mars;
Jupiter jupiter;
Saturn saturn;
Uranus uranus;
Neptune neptune;
Pluto pluto;
PImage img1,img2,img3,img4,img5,img6,img7, img8, img9,img10;
PeasyCam cam;
float constantX, translateX, translateZ;
void setup(){
   
  fullScreen(P3D);
 // stars= new Stars();
img1 = loadImage("sun.jpg");
img2 = loadImage("mercury.jpg");
img3 = loadImage("venus.jpg");
img4 = loadImage("earth.jpg");
img5 = loadImage("mars.jpg");
img6 = loadImage("jupitermap.jpg");
img7 = loadImage("saturn.jpg");
img8 = loadImage("uranus.jpg");
img9 = loadImage("neptune.jpg");
img10 = loadImage("pluto.jpg");
 

 // planets
     sun = new Sun(25, img1);
     earth = new Earth(2, img4);
     mercury = new Mercury(1.5, img2);
     venus = new Venus(1.8, img3);
 mars = new Mars(1.95, img5);
  jupiter = new Jupiter(12, img6);
  saturn = new Saturn(10, img7);
 uranus = new Uranus(6, img8);
  neptune = new Neptune(6, img9);
  pluto = new Pluto(1.5, img10);
   cam = new PeasyCam(this, 1000);
}
void draw(){
 
constantX+=.01;
   translateX=200*cos(constantX);
   translateZ=200*sin(constantX);

 background(0);
// stars.update();
ambientLight(255,255,255);

  pointLight(255, 255, 255, 0, 0, 0);
 earth.show();
 earth.update();
 sun.show();
 mercury.show();
 mercury.update();
 venus.show();
 venus.update();
mars.show();
mars.update();
jupiter.show();
jupiter.update();
saturn.show();
saturn.update();
uranus.show();
uranus.update();
neptune.show();
neptune.update();
pluto.show();
pluto.update();

}

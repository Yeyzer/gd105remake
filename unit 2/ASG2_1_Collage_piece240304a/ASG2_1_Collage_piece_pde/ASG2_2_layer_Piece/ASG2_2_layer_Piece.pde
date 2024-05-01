void setup(){
  // draw the background only once in setup
  size(700,700);
  background(0,0,0);
  frameRate(100);

}

void draw(){
  
  line (350,700,350,0);
    line (0,350,700,350);
  square( random(width), random(height),2);
  circle( random(width), random(height),2);
   println(frameCount);

  // draw something
  // adjust where it will be drawn the next frame
}

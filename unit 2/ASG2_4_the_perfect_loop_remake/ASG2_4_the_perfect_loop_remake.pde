float sunOffset= -750;
float moonOffset= 750;
color sky = color(55, 240, 238);
float sunOffset1 = mouseX;
color sun = color(248, 240, 240);
float interpValue = map(sunOffset, -750, width, 0, 1);
void setup() {
  size(1000, 1000);
}

void draw() {
  background(sky);

  translate(500, 1000);
  //sun and moon
  noStroke();
  rotate(frameCount*0.01);
  fill(246, 255, 3);
  circle(0, sunOffset, 333);
  fill(248, 240, 240);
  circle(0, moonOffset, 333);
  fill(4, 89, 4);

  resetMatrix();
  //earth
  rect(0, 600, 1000, 383, 1);
}

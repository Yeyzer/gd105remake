int s = second();
int h = hour();
int m = minute();

void setup(){
size(1000,1000);
}
void draw(){ 
background(255);
//sun 
 fill(236,251,4);
 circle(477,446,362);
 //neptune
 fill(18,0,251);
 circle(495,122,187);
 // uranus
 fill(0,240,255);
 circle(840,409,184);
 //saturn
 fill(165,175,10);
 circle(481,799,254);
 //jupiter
 fill(245,232,90);
 circle(107,408,302);
 //moon
 rotate(frameCount*0.01);
 fill(1,3,5);
 circle(50,40,30);
}

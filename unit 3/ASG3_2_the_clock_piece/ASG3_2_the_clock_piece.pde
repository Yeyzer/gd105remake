int s = second();
int h = hour();
int m = minute();
int starsNum = 300;
PVector [] stars = new PVector[300];
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
 translate(width*0.5,height*0.5);
 rotate(frameCount*0.01);
 fill(252,254,255);
 circle(50,334,79);
}

int d = day();
int m = month();
int y = year();
void setup(){
size(1000,1000);
}
void draw(){ 
background(255);
//sun and earth
fill(255,198,0);
circle(504,793,199);//sun
fill(107,111,98);
circle(250,244,69);//murcury 
fill(55,211,209);
circle(504,242,117);//earth
fill(131,49,49);
circle(375,500,147);//saturn
fill(8,229,255);
circle(504,117,48);//pluto
fill(89,104,104);
circle(504,500,50);//moon
//stars = minutes 
}

float speed = 2.5;
int diameter = 20;
float x;
float y;
int color1 = 0;
int color2 = 0;
int color3 = 0;

void setup() {
  size(240,120);
  x = width/2;
  x = height/2;
  
}
void draw() {
  x+= random(-speed,speed);
  y+=random(-speed,speed);
  x = constrain(x,0,width);
  y = constrain(y,0,height);
  color1 += random(0,255);
  color2 += random(0,255);
  color3 += random(0,255);
 fill(color1,color2,color3);
  ellipse(x,y,diameter,diameter);
  color1 = 0;
  color2 = 0;
  color3 = 0;
  
}
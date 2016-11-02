float angle = 0.0;
float angleDirection = 1;
float speed = 0.010;

void setup() {
  size(120,120);
}
void draw() {
  background(204);
  translate(20,25);
  //move to start position
  rotate(angle);
  strokeWeight(12);
  line(0,0,40,0);
  translate(40,0);
  //move to next joint
  rotate(angle*2.0);
  strokeWeight(6);
  line(0,0,30,0);
  translate(30,0);
  //move to next joint
  rotate(angle*2.5);
  strokeWeight(3);
  line(0,0,20,0);
  angle+=speed*angleDirection;
  if((angle>QUARTER_PI) || (angle<0)){
    angleDirection = -angleDirection;
  }
  
}
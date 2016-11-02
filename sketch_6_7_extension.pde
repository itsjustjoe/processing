PFont font1;
PFont font2;
String quote = "Jonas";

void setup() {
  size(480,120);
  font1 = createFont("Achafont.ttf",24);
  font2 = createFont("dc_s.tff",28);
  fill(255,0,0);
  textFont(font1);
  text(quote,26,24,240, 100);
  fill(0,255,0);
  textFont(font2);
  text(quote,80,24,240, 100);
  
}
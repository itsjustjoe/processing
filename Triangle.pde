class Triangle
{
  float xLoc, yLoc;
  float base,hei;
  float speed = 2.5;
  Triangle(float x, float y, float b,float h)
  {
   xLoc =x;
   yLoc = y;
   base = b;
   hei = h;
   
  }
   void move() {
    xLoc+= random(-speed,speed);
    yLoc+= random(-speed,speed);
   }
   void setSize(float b,float h)
   {
     base = b;
     hei = h;
   }
 
  void display()
  {
    triangle(xLoc,yLoc,xLoc+base,yLoc,xLoc,yLoc-hei);
  }
   void setColor(int color1,int color2,int color3)
  {
   fill(color1,color2,color3);
  }
}
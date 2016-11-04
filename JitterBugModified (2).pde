//Jonas Salcedo
//November 4,2016
JitterBug jit;
JitterBug bug;
Triangle beetle;
void setup()
{
  size(480,120);
  jit = new JitterBug(width*0.33,height/2,50);
  bug = new JitterBug(width*0.66,height/2,20);
  beetle = new Triangle(60,60,15,15);
  
}

void draw()
{
  jit.setSize(20);
  jit.setColor(120,4,89);
  jit.move();
  jit.display();
 
  bug.setSize(6);
   bug.setColor(200,40,9);
  bug.move();
  bug.display();
  
  beetle.setSize(30,30);
  beetle.setColor(5,34,79);
  beetle.display();
  beetle.move();
  
  

}
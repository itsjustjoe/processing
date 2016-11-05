PImage gI;
int wide;
int high;
boolean isRed;
boolean isBlue;
boolean isGreen;
boolean isMagenta;
int x;
int y;
float angle;

void setup() 
{
  angle = 0.05;
  size(480,480);
  gI = loadImage("again.jpg");
  wide = gI.width;
  high = gI.height;
  x = 0;
  y = 0;
  println(wide + " " + high);
  
  
}
void displayImage()
{
 
  background(0);
  image(gI,x,y-(high/2),wide,high);
}
void applyRedFilter()
{
  if(isRed == true)
  {
  fill(255,0,0,30);
  rect(x,y,wide,high);
  }
}
void applyGreenFilter()
{
  
  if(isGreen == true)
  {
  fill(0,255,0,30);
  rect(x,y,wide,high);
  }
}
void applyBlueFilter()
{
  if(isBlue == true){
  fill(0,0,255,30);
  rect(x,y,wide,high);
  }
}
void applyMagentaFilter()
{
  if(isMagenta == true)
  {
  fill(255,0,255,30);
  rect(x,y,wide,high);
  }
}
void Rotate()
{
  if(keyPressed) {
   if(key == 'u'||key == 'U')
  {
    angle += 0.1;
 rotate(angle/100);
 translate(x,y);
    
  }
  }
  

}
void draw()
{
  Rotate();
  
   
  println(x + " " + y);
 
  displayImage();
  applyRedFilter();
  applyBlueFilter();
  applyGreenFilter();
  applyMagentaFilter();
   if(keyPressed)
  {
    
      if(key == 's')
      {
        
        high+=5;
        
       
       
      }
      if(key == 'd')
      {
        
        wide+=5;
     
      }
      if(key == 'w')
      {
        
        high-=5;
      
       
       
      }
      if(key == 'a')
      {
        
        wide-=5;
      
      }
      
    
  }
  
  
  if(keyPressed)
  {
    if(keyCode == UP)
    {
      y-=1;
    }
    if(keyCode == DOWN)
    {
      y+=1;
    }
     if(keyCode == LEFT)
    {
      x-=1;
    }
    if(keyCode == RIGHT)
    {
      x+=1;
    }
    
  }

if(keyPressed)
{
  if(key == 'r'|| key == 'R')
  {
    isRed = true;
    isBlue = false;
    isGreen = false;
    isMagenta = false;
  }
   if(key == 'b'|| key == 'B')
  {
    isBlue = true;
    isRed = false;
    isGreen = false;
    isMagenta = false;
  }
   if(key == 'g'|| key == 'G')
  {
    isGreen = true;
    isBlue = false;
    isMagenta = false;
    isRed = false;
  }
   if(key == 'm'|| key == 'M')
  {
    isMagenta = true;
    isRed = false;
    isBlue = false;
    isGreen = false;
  }
 
  
}

}
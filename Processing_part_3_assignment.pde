
int xChange = 0;
int yChange = 0;
int color1=95;
int color2=0;
int color3 = 86;

void setup()
{
  size(1000,1000);
  noStroke();
}


void draw() {
  
  background(204);
   if(keyPressed && (key == CODED)){
   if(keyCode == LEFT) {
   
    xChange++;
   }
   else if(keyCode == RIGHT)
   {
     xChange--;
   }
   }
   
   if(keyPressed&&(key == CODED)){
      if(keyCode == 'g' || keyCode == SHIFT)
   {
     color1 = 0;
     color2 = 0;
     color3 = 255;
     
   }
   else if(keyCode == 'r' || keyCode == CONTROL)
   {
     color1 = 255;
     color2 = 0;
     color3 = 0;
   }
   else if(keyCode == 'v' || keyCode == ALT)
   {
  
     color1 = 95;
     color2 = 0;
     color3 = 86;
   
   }
   }
    
  
  
 //Cape
fill(color1,color2,color3);
arc(500-xChange,500,600,400,radians(0),radians(198));
arc(500-xChange,500,600,400,radians(342),radians(360));
//head
fill(242,207,78);
ellipse(500-xChange,250,400,500);
fill(255,255,255);

//eyes

ellipse(550-xChange,200,30,150);

ellipse(450-xChange,200,30,150);



//pupils
fill(0,0,0);
float mx = map(mouseX,0,width,440,460);
float mx2 = map(mouseX,0,width,540,560);
ellipse(mx2-xChange,200,15,100);
ellipse(mx-xChange,200,15,100);
//mouth
fill(255,0,0);

arc(500-xChange,350,100,100,0.00,3.14);

}
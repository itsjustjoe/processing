int gameTime = 60000;
int score1 = 0;
int score2 = 0;
int speed1 = 5;
int speed2 = 5;
int decision;
int x1 = 0;
int x2 = 705;
int y1 = 190;
int y2 = 190;
int minuteTime = 60;
int ballX = 360;
int ballY = 20;
int ballSize = 10;
int currentTime;

boolean upMotion1;
boolean upMotion2;
boolean downMotion1;
boolean downMotion2;
int ballSpeedx = 5;
int ballSpeedy = 5;
int paddleWidth = 15;
int paddleHeight = 100;
boolean isMoving = true;
boolean paddleMoves = true;
String openingText = "Press 1 to play in one player mode and press 2 to play in two player mode";
void setup()
{
  size(720,480);
  background (255,0,255);
     
 
}

void draw()
{
  
  background(255,0,255);
  
   //ball
   ellipse(ballX,ballY,ballSize,ballSize);
   textSize(20);
   text(openingText,0,360);
   choice();
   if(decision == 1)
   {
 
    openingText = "You have 60 seconds";
   int currentTime = millis();
   if(currentTime > 5000)
   {
     currentTime = 0;
     openingText = "";
     onePlayer();
     
   }
   
         
   }
   if (decision == 2)
   {
   
   openingText = "You have 60 seconds";
   int currentTime = millis();
   if(currentTime > 5000)
   {
     currentTime = 0;
     openingText = "";
     twoPlayer();
     
   }
   
   }
  
      
       textSize(24);
       
     
       text(score1,60,60);
       text(score2,600,60);
       
          
       
         
       
 
  
    
     
   }
  
  void twoPlayer() 
  {
   
      int gameTime = (millis());
           int seconds = gameTime/1000;
           seconds = gameTime/1000;
           text(seconds-5, 120,120);
           println();
      if(seconds>=60)
      {
        upMotion1 = false;
        downMotion1 = false;
        upMotion2 = false;
        downMotion2 = false;
        isMoving = false;
        if(score1> score2)
        openingText = "Player 1 wins";
        if(score2>score1)
        {
          openingText = "Player 2 wins";
          
        }
        
      }
           
      
     if(keyPressed){
     if(key == 'w')
     {
       upMotion1 = true;
       downMotion1 = false;
     }
     
     if(key == 's')
     {
       upMotion1 = false;
       downMotion1 = true;
       
     }
    
     if(key == 'i')
     {
       upMotion2 = true;
       downMotion2 = false;
     }
     if(key == 'k')
     {
      downMotion2 = true;
      upMotion2 = false;
      
     }
    
  }
  
  //checks if the paddles are moving
  
   if(y1 >= 380 )
      {
      downMotion1 = false;
      }
        else if(downMotion1 == true)
          {
          y1+=speed1;
          }
  if(y1 <= 0)
      {
      upMotion1 = false;
      }
         else if(upMotion1 == true)
         {
          y1-=speed1;
         }
     if(y2 >= 380)
      {
      downMotion2 = false;
      }
        if(downMotion2 == true)
        {
         y2+=speed2;
        }
  if(y2 <= 0)
     {
     upMotion2 = false;
     }
        else if(upMotion2 == true)
        {
        y2-=speed2;
        }
          
        if(isMoving == true){
       
      // initial ball motion
       ballX+=ballSpeedx;
       ballY+=ballSpeedy;
      
       //collision detection
       
       if(ballY>height||ballY<0)
         ballSpeedy = -ballSpeedy;
         //sets position back to normal when the ball hits
       if(ballX>width)
       {
         score1++;
         ballX = 360;
         ballY = 240;
       }
       if(ballX<0)
       {
         score2++;
         ballX = 360;
         ballY = 240;
       }
       }
       
       if((ballX>x1) &&(ballX< x1+paddleWidth) && (ballY > y1) && ( ballY < y1+paddleHeight)){
         ballSpeedx = -ballSpeedx;
         ballSpeedy = -ballSpeedy;
       }
       if((ballX>x2) &&(ballX< x2+paddleWidth) && (ballY > y2) && ( ballY < y2+paddleHeight)){
         ballSpeedx = -ballSpeedx;
         ballSpeedy = -ballSpeedy; 
         
       }
    
     
           //paddles
   rect(x1,y1,paddleWidth,paddleHeight);
   rect(x2,y2,paddleWidth,paddleHeight);
     
         
       
       
  }
  
 
  
  
  void onePlayer()
  {
           int gameTime = (millis());
           int seconds = gameTime/1000;
           seconds = gameTime/1000;
           text(seconds-5, 120,120);
           println();
      if(seconds>=60)
      {
        upMotion1 = false;
        downMotion1 = false;
        upMotion2 = false;
        downMotion2 = false;
        isMoving = false;
        paddleMoves = false;
        if(score1> score2)
        openingText = "Player 1 wins";
        if(score2>score1)
        {
          openingText = "Player 2 wins";
          
        }
        
      }
           
      
     if(keyPressed){
     if(key == 'w')
     {
       upMotion1 = true;
       downMotion1 = false;
     }
     
     if(key == 's')
     {
       upMotion1 = false;
       downMotion1 = true;
       
     }
    
   
    
  }
  
  //checks if the paddles are moving
  
   if(y1 >= 380 )
      {
      downMotion1 = false;
      }
        else if(downMotion1 == true)
          {
          y1+=speed1;
          }
  if(y1 <= 0)
      {
      upMotion1 = false;
      }
         else if(upMotion1 == true)
         {
          y1-=speed1;
         }
           if(upMotion2 == true)
   {
   
   }

   
   
        
        
        
      // initial ball motion
       ballX+=ballSpeedx;
       ballY+=ballSpeedy;
       
       //collision detection
       if(ballY>height||ballY<0)
         ballSpeedy = -ballSpeedy;
         //sets position back to normal when the ball hits
       if(ballX>width)
       {
         score1++;
         ballX = 360;
         ballY = 240;
       }
       if(ballX<0)
       {
         score2++;
         ballX = 440;
         ballY = 240;
       }
       
       if((ballX>x1) &&(ballX< x1+paddleWidth) && (ballY > y1) && ( ballY < y1+paddleHeight)){
         ballSpeedx = -ballSpeedx;
         ballSpeedy = -ballSpeedy;
       }
       if((ballX>x2) &&(ballX< x2+paddleWidth) && (ballY > y2) && ( ballY < y2+paddleHeight)){
         ballSpeedx = -ballSpeedx;
         ballSpeedy = -ballSpeedy; 
         
       }
       
       
       if(paddleMoves == true)
       {
         int temp = ballSpeedy;
      
       //paddle motion
       y2+=temp;
    if(y2 >= 330)
       {
        y2-=temp;
       }
     
     
       if(y2 <=0)
       {
         y2+=temp;
       }
       
   
       }
       
       
    
     
           
     //paddles
   rect(x1,y1,paddleWidth,paddleHeight);
   rect(x2,y2,paddleWidth,paddleHeight);

 
         
       
       
  }
void choice()
{
  
    if(key == '1' || key == '!')
    {
      decision = 1;
    }
    if(key == '2' || key == '@')
    {
      decision = 2;
    
     }
}
   
   
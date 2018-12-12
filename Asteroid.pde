class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid()
  {
  rotSpeed=(int)((Math.random()*10)-5);
    corners=6;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=-16;
    yCorners[0]=4;
    xCorners[1]=-12;
    yCorners[1]=12;
    xCorners[2]=0;
    yCorners[2]=8;
    xCorners[3]=12;
    yCorners[3]=8;
    xCorners[4]=8;
    yCorners[4]=-4;
    xCorners[5]=-8;
    yCorners[5]=-8;
    myColor=(200);
    myCenterX=Math.random()*640;
    myCenterY=Math.random()*480;
    myDirectionX=(Math.random()*10)-5;
    myDirectionY=(Math.random()*10)-5;
    myPointDirection=Math.random()*10;
  
  }
  
   public void setX(int x){myCenterX =x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y){myCenterY=y;}
   public int getY(){return (int)myCenterY;} 
   public void setDirectionX(double x){myDirectionX= x;}  
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY= y;}   
   public double getDirectionY(){return myDirectionY; }   
   public void setPointDirection(int degrees){myPointDirection= degrees;}  
   public double getPointDirection(){return myPointDirection;
   }
   
   public void move(){
    turn(rotSpeed);
    super.move();
   }      
}

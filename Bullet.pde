class Bullet extends Floater
{
  public Bullet(Spaceship bob)
  {
    corners=0;
    myColor=color(145,208,0);
    myPointDirection=bob.getPointDirection();
    myCenterX=bob.getX();
    myCenterY=bob.getY();
    double dRadians=myPointDirection*(Math.PI/180);
    myDirectionX=10*Math.cos(dRadians)+bob.getDirectionX();
    myDirectionY=10*Math.sin(dRadians)+bob.getDirectionY();
    
  }
  public void setX(int x){myCenterX=x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY=y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX=x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY=y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection=degrees;}
  public double getPointDirection(){return myPointDirection;}
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((int)myCenterX,(int)myCenterY,3,3);
  }
  public void move ()   //move the floater in the current direction of travel
  {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }
}

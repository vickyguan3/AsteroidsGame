ArrayList <Asteroid> ketchup;
Spaceship bob;
Star[] koko = new Star[200];
boolean release;
ArrayList <Bullet> shoot;
int cat=0;
int dog=150;
public void setup() 
{
	size(500, 500);
	bob = new Spaceship();
	for(int i = 0; i < koko.length; i++){
		koko[i] = new Star();
	}
	for(int i = 0; i < ketchup.size; i++){
		ketchup[i] = new Asteroid();
	}
	ketchup = new ArrayList <Asteroid> ();
	shoot = new ArrayList <Bullet> ();
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < koko.length; i++){
  	koko[i].show();
  }
  for(int i=0; 1< ketchup.size(); i++){
  	ketchup.get(i).show();
  	ketchup.get(i).move();
  }

  if(dog>0)
  {
    if(mousePressed)
    {
      shoot.add(new Bullet(bob));
    }
	for(int j=0;j<koko.length;j++){
    	koko[j].show();
	}
	for(int i=0;i<ketchup.size();i++)
    {
      ketchup.get(i).show();
      ketchup.get(i).turn(2);
      ketchup.get(i).move();
	if(dist(bob.getX(),bob.getY(),ketchup.get(i).getX(),ketchup.get(i).getY())<30)
      {
        ketchup.remove(i);
        ketchup.add(i, new Asteroid());
      }
    } 
    for(int k=0;k<shoot.size();k++)
    {
      shoot.get(k).show();
      shoot.get(k).move();
      shoot.get(k).accelerate(2);
      for(int z=(ketchup.size()-1);z>=0;z--)
      {
        if(dist(ketchup.get(z).getX(),ketchup.get(z).getY(),shoot.get(k).getX(),shoot.get(k).getY())<20)
        { 
          ketchup.remove(z);
          shoot.remove(k);
          ketchup.add(new Asteroid());
          cat++;
        }
      }
    }
    for(int k=0;k<shoot.size();k++)
    { 
      if(shoot.get(k).getX()>640||shoot.get(k).getY()>480||shoot.get(k).getX()<0||shoot.get(k).getY()<0)
      {
        shoot.remove(k);
      }
    }
  
    bob.show();
    if(release==true)
    {
      bob.move();
    }
    fill(255,160,122);
    rect(50,20,cat,20);
    fill(225);
    rect(50,40,dog,20);
  }
  else
  {
    fill(255);
    textAlign(CENTER);
    text("Game Over :(",320,240);
    text("Score: "+cat,320,280);
  }
}


public void keyPressed()
{
	if(key=='w'){
   		release=true;
   		bob.accelerate(0.5);
	}
	if(keyCode == LEFT){
		bob.turn(-20);
	}
	if(keyCode == RIGHT){
		bob.turn(20);
	}
	if(keyCode == 38) { //up key
     		bob.accelerate(0.5);
   	}
    	if(keyCode == DOWN) { // down key
      		bob.accelerate(-0.5);
	}
	if(keyCode == 79){ // o key
		bob.setDirectionX(0);
       		bob.setDirectionY(0);
       		bob.setX((int)(Math.random()*500));
       		bob.setY((int)(Math.random()*500));
       		bob.setPointDirection((int)(Math.random()*360));
	} 
	if(key=='p'){dog=1;}
}




Spaceship bob;
Star[] koko = new Star[200];
public void setup() 
{
	size(500, 500);
	bob = new Spaceship();
	for(int i = 0; i < koko.length; i++){
		koko[i] = new Star();
	}
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < koko.length; i++){
  	koko[i].show();
  }
}

public void keyPressed()
{
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
	
}




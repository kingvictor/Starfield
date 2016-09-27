NormalParticle cow = new NormalParticle (69,69);
//your code here
void setup()
{
  size (300,300);
  background (0.6);
  //your code here
}
void draw()
{
class NormalParticle
{
  int myX,myY;
  NormalParticle (int x, int y)
  {
    myX=x;
    myY=y;
  }
  void move()
  {
    myX+=(int)(Math.random()*20+10);
    myY+=(int)(Math.random()*20+10);
  }
  void show()
  {
    fill (235);
    ellipse (myX,myY, 20,20);
  }
}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


NormalParticle [] cow= new NormalParticle[200];

void setup()
{
  size (500, 500);
  frameRate(10);
  for (int i = 0; i< cow.length; i++)
  {
    cow [i] = new NormalParticle ();
  }
}
void draw ()
{
  background (255);
  for (int i = 0; i <cow.length; i++)
  {
    cow [i].show();
    cow [i].move();
  }

}
interface Particle
{
  public void show();
  public void move();
}
class NormalParticle implements Particle
{
  double myX, myY, speed, angle;
  NormalParticle()
  {
    myX=250;
    myY=250;
    speed= (Math.random()*30);
    angle= (Math.random()*2*PI);
  }
  public void move()
  {
    myX= myX+(Math.cos(angle)*speed);
    myY= myY+(Math.sin(angle)*speed);
  }
  public void show()
  {
    int a = (int)(Math.random()*255);
    int r = (int)(Math.random()*255);
    int t = (int)(Math.random()*255);
    fill (a, r, t);
    ellipse ((float)myX, (float)myY, 10, 10);
  }
}
class OddballParticle implements Particle
{
  OddballParticle()
  {}
  public void move()
  {}
  public void show()
  {
    int a = (int)(Math.random()*255);
    int r = (int)(Math.random()*255);
    int t = (int)(Math.random()*255);
    fill (a, r, t);
  }
}

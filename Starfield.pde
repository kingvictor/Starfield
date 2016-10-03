Particle [] cow;
void setup()
  {
    size (200,200);
    frameRate(10);
    cow= new Particle [100];
    for (int i = 10; i< cow.length; i++)
    {
      cow [i] = new NormalParticle ();
    }
  }
void draw ()
  {
    background (255);
    for (int i = 10; i <cow.length; i++)
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
    myX=100;
    myY=100;
    speed= (int)(Math.random()*3);
    angle= (int)(Math.random()*8);
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
  fill (a,r,t);
  ellipse ((float)myX,(float)myY, 10,10);
}
}

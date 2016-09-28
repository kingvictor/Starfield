Particle [] cow;
void setup()
  {
    size (200,200);
    cow=new Particle [100];
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
      cow [i].move();
      cow [i].show();
    }
  }
interface Particle
{
  public void move();
  public void show();
}
class NormalParticle implements Particle
{
  double myX, myY;
  NormalParticle()
  {
    myX=100;
    myY=100;
  }
public void move()
{
  myX= myX+(Math.sin(25)*2);
  myY= myY+(Math.sin(25)*2);
}
public void show()
{
  fill (0.6);
  ellipse ((float)myX,(float)myY, 10,10);
}
}

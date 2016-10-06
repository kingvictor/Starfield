NormalParticle [] cow= new NormalParticle[200];
void setup()
{
  size (500, 500);
  frameRate(50);
  for (int i = 0; i< cow.length; i++)
  {
  cow [i] = new NormalParticle (250,250);
  }
  particle [0]= new OddballParticle();
  particle [1]= new JumboParticle();
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
  float myX, myY, speed, angle;
  NormalParticle()
  {
    myX=250;
    myY=250;
    speed= (float) (Math.random()*30);
    angle= (float)(Math.random()*2*PI);
  }
  public void move()
  {
    myX+=(Math.cos(angle)*speed);
    myY+=(Math.sin(angle)*speed);
    angle=angle+0.1;
  }
  public void show()
  {
    int a = (int)(Math.random()*255);
    int r = (int)(Math.random()*255);
    int t = (int)(Math.random()*255);
    fill (a, r, t);
    ellipse ((float)myX, (float)myY, 10, 10);
    ellipse((float)myX-15,(float)myY-9,8,8);
    ellipse((float)myX+15,(float)myY-9,8,8);
  }
}
class OddballParticle implements Particle
{
    float myX, myY;
  OddballParticle()
{
  myX=100;
  myY=100;
}
  public void move()
  {
    myX+=0;
    myY+=0;}
  public void show()
  {
       ellipse ((float)myX, (float)myY, 100, 100);
  }
}
class JumboParticle implements Particle
{
  float myX, myY, speed, angle;
  JumboParticle()
  {
    myX=250;
    myY=250;
    speed= (float) (Math.random()*30);
    angle= (float)(Math.random()*2*PI);
  }
  public void move()
  {
    myX+=(Math.cos(angle)*speed);
    myY+=(Math.sin(angle)*speed);
    angle=angle+0.1;
  }
  public void show()
  {
    int a = (int)(Math.random()*255);
    int r = (int)(Math.random()*255);
    int t = (int)(Math.random()*255);
    fill (a, r, t);
    ellipse ((float)myX, (float)myY, 100, 100);
  }
}

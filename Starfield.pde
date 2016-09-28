PImage donald;
Particle [] trump ;
void setup()
{
  size (300,300);
  trump = new Particle [20];
  for (int i = 0; i < trump.length; i++)
  {
    trump [i] = new Particle();
  }
  donald = loadImage("donald.jpg");
}
void draw ()
{
background (0.6);
trump.show();
trump.move();
}
class Particle
{
	double x,y,angle,speed;
	Particle()
  {
    x=300;
    y=300;
    angle=PI;
    speed=20;
  }


NormalParticle [] drcmlf;
Oddball hrptr;

void setup()
{

  size(500,500);
  drcmlf = new NormalParticle[500];
  for (int i = 0; i < drcmlf.length; i++)
  {
    drcmlf[i] = new NormalParticle(250,250);
  }
  hrptr = new Oddball();
}

interface Particle
{
  public void show();
  public void move();
}

void draw()
{
   background(0);
  for(int i = 0; i < drcmlf.length; i++)
  {
    drcmlf[i].show();
    drcmlf[i].move();
  }
hrptr.show();
hrptr.move();
}



class NormalParticle implements Particle
{
  double npX, npY, speed, angle;
  int npColor;
  
  NormalParticle(int x, int y)
  {
    npX = x;
    npY = y;
    speed = Math.random()*11;
    angle = Math.PI * (Math.random()*3);
    npColor = color(255);
  }
 
  
  public void move()
  {
    npX = npX + Math.cos(angle)* speed;
    npY = npY + Math.sin(angle) * speed;
  }
  
  
 public void show()
 {
   fill(255);
   ellipse((float)npX,(float)npY,3,3);
 }
}

class Oddball implements Particle
{
  public void show()
  {
    int oddX = 0;
    int oddY = 0;
    fill(255);
    
    ellipse((float)Math.random()*500, (float)Math.random()*500, 30, 30);
  }
  
  public void move()
  {
  }
}

/*class Jumbo extends NormalParticle
{
 
 void show()
 {
   fill(255);
   ellipse((float)npX,(float)npY,40,40);
 }
}*/

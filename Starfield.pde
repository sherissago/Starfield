NormalParticle [] drcmlf;

void setup()
{

  size(500,500);
  drcmlf = new NormalParticle[500];
  for (int i = 0; i < drcmlf.length; i++)
  {
    drcmlf[i] = new NormalParticle(250,250);
  }
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

/*class Jumbo extends NormalParticle
{
 
 void show()
 {
   fill(255);
   ellipse((float)npX,(float)npY,40,40);
 }
}*/

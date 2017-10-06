Particle [] drcmlf;
Particle hrptr;
Particle [] jumbo;

void setup()
{

  size(500,500);
  drcmlf = new NormalParticle[1000];
  int i;
  for  (i = 0; i < drcmlf.length; i++)
  {
    drcmlf[i] = new NormalParticle(250,250);
  }
  
  hrptr = new Oddball(250,250);
}

interface Particle
{
  public void show();
  public void move();
}

void draw()
{
   background(205,255,209);
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
    npColor = color((int)(Math.random()*200), (int)(Math.random()*70),(int)(Math.random()*30));
  }
 
  
  public void move()
  {
    npX = npX + Math.cos(angle)* speed;
    npY = npY + Math.sin(angle) * speed;
  }
  
  
 public void show()
 {
   fill(npColor);
   ellipse((float)npX,(float)npY,30,30);
 }
}

class Oddball implements Particle
{
  int oddX, oddY;
  Oddball(int x, int y)
  {
     oddX = x;
     oddY = y;
  }
 
  public void show()
  {
    fill(240,120,0);
    ellipse((float)oddX, (float)oddY, 30,30);
   
  }
  
  public void move()
  {
    
    oddX = oddX + (int)(Math.random()*10)-4;
    oddY = oddY + (int)(Math.random()*10)-4;
    
}
}

class Jumbo extends NormalParticle
{
  
  public void show()
  {
    ellipse((float)npX, (float)npY, 50,50);
  }

}

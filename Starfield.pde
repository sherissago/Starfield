Particle [] nParticle;
Particle [] oddPart;
Particle [] jumbo;

void setup()
{

  size(500, 500);
  nParticle = new Particle[1000];
  int i;
  for (i = 0; i < nParticle.length; i++)
  {
    nParticle[i] = new NormalParticle();
    nParticle[1]= new Oddball(250,250);
    nParticle[2] = new Jumbo();
  }
}

interface Particle
{
  public void show();
  public void move();
}

void draw()
{
  background(205, 255, 240);
  for (int i = 0; i < nParticle.length; i++)
  {
    nParticle[i].show();
    nParticle[i].move();
  }
  nParticle[1].show();
  nParticle[1].move();
  nParticle[2].show();
  nParticle[2].move();
}



class NormalParticle implements Particle
{
  double npX, npY, speed, angle;
  int npColor;
  
  NormalParticle()
  {
    npX = 250;
    npY = 250;
    speed = Math.random()*11;
    angle = Math.PI * (Math.random()*3);
    npColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }

  public void move()
  {
    npX = npX + Math.cos(angle)* speed;
    npY = npY + Math.sin(angle) * speed;
  }


  public void show()
  {
    fill(npColor);
    ellipse((float)npX, (float)npY, 40, 40);
    fill(0);
    ellipse((float)npX-5, (float)npY, 5,5);
    ellipse((float)npX+5, (float)npY, 5,5);
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
    fill(240, 120, 0);
    ellipse((float)oddX, (float)oddY, 30, 30);
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
    ellipse((float)npX, (float)npY, 100, 100);
    fill(0);
    ellipse((float)npX-20, (float)npY, 20,20);
    ellipse((float)npX+20, (float)npY, 20,20);
    noFill();
  }
}

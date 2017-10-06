Particle [] nParticle;
Particle [] oddPart;
Particle [] jumbo;

void setup()
{

  size(500, 500);
  nParticle = new NormalParticle[1000];
  int i;
  for (i = 0; i < nParticle.length; i++)
  {
    nParticle[i] = new NormalParticle();
    oddPart[1]= new Oddball();
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
  oddPart[1].show();
  oddPart[1].move();
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
  }
}

class Oddball implements Particle
{
  int oddX, oddY;
  Oddball()
  {
    oddX = 250;
    oddY = 250;
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
    ellipse((float)npX, (float)npY, 70, 70);
  }
}

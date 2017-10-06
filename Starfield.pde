Particle [] nParticle;
Particle oddPart;
Particle [] jumbo;

void setup()
{

  size(500, 500);
  nParticle = new NormalParticle[1000];
  int i;
  for  (i = 0; i < nParticle.length; i++)
  {
    nParticle[i] = new NormalParticle(250, 250);
  }

  oddPart = new Oddball(250, 250);
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
  oddPart.show();
  oddPart.move();
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

/*class Jumbo extends NormalParticle
{

  public void show()
  {
    ellipse((float)npX, (float)npY, 50, 50);
  }
}*/

NormalParticle drcmlf;
void setup()
{
  size(500,500);
}

void draw()
{
  background(0);
  drcmlf = new NormalParticle(250,250);
  drcmlf.show();
  drcmlf.move();
}

class NormalParticle
{
  double npX, npY, speed, angle;
  int npColor;
  
  NormalParticle(int x, int y)
  {
    npX = x;
    npY = y;
    speed = x + 30;
    angle = Math.PI * Math.random()*3;
    npColor = color(255);
  }
 
  
  public void move()
  {
    npX = npX + Math.cos(angle)* speed;
    npY = npY + Math.cos(angle) * speed;
  }
  
  
 public void show()
 {
   fill(255);
   ellipse((float)npX,(float)npY,3,3);
 }
}

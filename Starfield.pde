}

class NormalParticle
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

class Jumbo
{
  double jX, jY, speed, angle;
  int jColor;
  
  Jumbo(int x, int y)
  {
    jX = x;
    jY = y;
    speed = Math.random()*11;
    angle = Math.PI * (Math.random()*3);
    jColor = color(255);
  }
  
   public void move()
  {
    jX = jX + Math.cos(angle)* speed;
    jY = jY + Math.sin(angle) * speed;
  }
  
  
 public void show()
 {
   fill(255);
   textSize(30);
   text("I DON'T CARE",(float)jX,(float)jY);
 }
}

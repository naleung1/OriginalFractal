public void setup()
{
  size(1000, 800);
  rectMode(CENTER);
  ellipseMode(CENTER);
}
public void draw()
{
  myFractal(600, 600, 600);
}
public void myFractal(int x, int y, int siz)
{
  rect(x, y, siz, siz);
  ellipse(x, y, siz - 5, siz - 5);
  ellipse(x, y, siz - 50, siz - 50);
  ellipse(x, y, siz - 200, siz - 200);
  if (siz > 5)
  {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myFractal(x-siz/2, y - siz/2, siz/2);
    myFractal(x+siz/2, y + siz/2, siz/2);
    myFractal(x-siz/2, y + siz/2, siz/2);
    myFractal(x+siz/2, y - siz/2, siz/2);
  }
}

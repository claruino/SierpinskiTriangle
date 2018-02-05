public void setup()
{
  size(800, 800);
  background(244, 89, 66);
}

int myX = 200;
int myY = 800;
int myLen = 400;
int myNum = 0;

public void draw()
{
    sierpinski(myX, myY, myLen);
}
public void mousePressed()//optional
{

}

int num = 50;
public void sierpinski(int x, int y, int len) 
{
  int red = (int)(Math.random()*255);
  int green = (int)(Math.random()*255);
  int blue = (int)(Math.random()*255);
  if(len <=20)
  {
    fill(red, green, blue);
    stroke(green, blue, red);
    triangle(x, y, x+len/2, y-len, x+len, y); 
  }
  else
  {
    fill(red, green, blue);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
    
}

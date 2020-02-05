public void setup(){
  size(500,500);
  rectMode(CENTER);
  fill(40);
  myFractal(250,250,250);
}
public void myFractal(int x, int y, int siz)
{
  rect(x,y,siz,siz);
  if(siz > 20)
  {
    fill((float)Math.random() * siz + 1, (float)Math.random() * siz + 1, (float)Math.random() * siz + 1);
    myFractal(x-siz/2,y,siz/2);
    fill((float)Math.random() * siz + 1, (float)Math.random() * siz + 1, (float)Math.random() * siz + 1);
    myFractal(x+siz/2,y,siz/2);
    fill((float)Math.random() * siz + 1, (float)Math.random() * siz + 1, (float)Math.random() * siz + 1);
    myFractal(x,y-siz/2,siz/2);
    fill((float)Math.random() * siz + 1, (float)Math.random() * siz + 1, (float)Math.random() * siz + 1);
    myFractal(x,y+siz/2,siz/2);
  }
}
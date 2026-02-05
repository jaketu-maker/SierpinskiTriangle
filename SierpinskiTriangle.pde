public void setup()
{
  size(800,800);
}
public void draw()
{
  sierpinski(0,0,800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y,x+len,y,x+len/2,y+len);
  }
  else{
    triangle(x,y,x+len/4,y+len/2,x+len/2,y);
    sierpinski(x,y,len/2);
    triangle(x+len/2,y,x+len/4+len/2,y+len/2,x+len,y);
    sierpinski(x+len/2,y,len/2);
    triangle(x+len/4,y+len/2,x+len/2,y+len,x+len/2+len/4,y+len/2);
    sierpinski(x+len/4,y+len/2,len/2);
  }
}

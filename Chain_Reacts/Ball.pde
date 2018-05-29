// PortendsAwesom - Taaseen Ali, Richard Wong, Eddie Zhu
// APCS2 pd1
// HW53 -- All That Bouncin'
// 2018-05-42

public class Ball {
  int x,y,speed,xdir,ydir,r,g,b,radius;
  boolean growing, resizing;
  
  Ball() {
    x = (int) random(600);
    y = (int) random(600);
    speed = (int) random(5)+1;  
    xdir = speed;
    ydir = speed;
    r = (int)random(255);
    g = (int)random(255);
    b = (int)random(255);
    radius = 5;
    resizing = false;
    growing = false;
  }
  
  Ball(int x, int y){
    this();
    this.x = x;
    this.y = y;
    speed = 0;
    resizing = true;
    growing = true;
  }
  
  void draw() {
    fill(r, g, b);
    if(resizing)
      resize();  
    ellipse(x, y, radius, radius);
  }
    
  void morph(){xdir=0; ydir=0; resizing = true; growing = true;}
    
  void resize() {
    println(radius);
    if (radius == 100) {
      growing = false;
    }
    if (growing) {radius++;}
    else if (radius > 0) {radius--;}
  }

  void move() {
    if (x>=599) xdir = -1;
    else if (x<=1) xdir = 1;

    if (y>=599) ydir = -1;
    else if (y<=1) ydir = 1;

      x += xdir*speed;
      y += ydir*speed;
    }
}

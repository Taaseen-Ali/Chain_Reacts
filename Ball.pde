// PortendsAwesom - Taaseen Ali, Richard Wong, Eddie Zhu
// APCS2 pd1
// HW53 -- All That Bouncin'
// 2018-05-42

public class Ball {
  int x = (int) random(600);
  int y = (int) random(600);
  int speed = (int) random(5)+1;  
  int xdir = speed;
  int ydir = speed;
  int r = (int)random(255);
  int g = (int)random(255);
  int b = (int)random(255);

  void draw() {
    fill(r, g, b);
    ellipse(x, y, 5, 5);
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
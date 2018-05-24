// PortendsAwesom - Taaseen Ali, Richard Wong, Eddie Zhu
// APCS2 pd1
// HW53 -- All That Bouncin'
// 2018-05-42

Ball[] balls = new Ball[30];  
void setup() {
  size(600, 600);
  background(0, 0, 0);
  for (int i=0; i<30; i++)
    balls[i] = new Ball();
}

void draw() {
  background(0, 0, 0);
  for (Ball b : balls) {
    b.move();
    b.draw();
  }
}
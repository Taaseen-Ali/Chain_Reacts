// PortendsAwesom - Taaseen Ali, Richard Wong, Eddie Zhu
// APCS2 pd1
// HW53 -- All That Bouncin'
// 2018-05-42

import java.util.*;
List<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(600, 600);
  background(0, 0, 0);
  for (int i=0; i<30; i++)
   balls.add(new Ball());
}

void mouseClicked(){
  Ball toAdd = new Ball(mouseX,mouseY);
  balls.add(toAdd);
  //toAdd.expanding();
}

void draw() {
  background(0, 0, 0);
  for (Ball b : balls) {
    b.move();
    b.draw();
  } 
}

class mutatedB {


  private int  x;
  private int y;
  private float a;

  mutatedB(int x, int y, int a) {

    this.x=x;
    this.y=y;
    this.a=a;
  }


  void move() {

    a = (int) atan2(mouseY-y, mouseX-x);

    //print(a);
    if (abs(a)<1.5) {
      x+=(int)random(5, 15);
      // print("right, "+a);
    }
    if (abs(a)>1.5) {

      x-=(int)random(5, 15);
      //  print("left, "+a);
    }

    if (a<0) {
      y-=(int)random(5, 15);
      //   print("top, "+a);
    }
    if (a>0) {
      y+=(int)random(5, 15);
      //    print("bottom, "+a);
    }
  }
  void show() {
    fill(0, 50, 250);
    ellipse(x, y, 10, 10);
  }
 void attack() {
    if (    ( x > ( mouseX - 25 ) ) &&    ( x < ( mouseX + 25 ) ) && ( y > ( mouseY - 25 ) ) && ( y < ( mouseY + 25 ) )  ) {

      check = true;
    }
    // youLose();
  }
    
}

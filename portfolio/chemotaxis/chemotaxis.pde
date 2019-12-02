//declare bacteria variables here  
Bacteria [] b;
mutatedB [] m;
int s;
int c;

int num=2;
boolean check=false;
void setup()   
{     
  background(0);
  size(700, 500);
  frameRate(100);


  b=new Bacteria[30];

  for (int i=0; i<b.length; i++) {
    b[i]= new Bacteria((int)random(0, 400), (int)random(0, 400), 0);
  }

  //initialize bacteria variables here
}   



void draw()   
{    
  //instantiate();
  fill(0, 0, 250);
  ellipse(mouseX, mouseY, 20, 20);
//  s = millis();  // Values from 0 - 59

  println(s);


  background(0);
  for (int i=0; i<b.length; i++) {

    b[i].show();
    b[i].move();
    b[i].attack();
  }
  if ((s/1000)==5) {
    for (int i=0; i<num; i++) {
     // instantiate();
        m[i].show();
      m[i].move();
      m[i].attack();
    }
  }
  if (check==true) {
    youLose();
  }





  //move and show the bacteria
}  

class Bacteria    
{     
  private int  x;
  private int y;
  private float a;
  Bacteria(int x, int y, int a) {

    this.x=x;
    this.y=y;
    this.a=a;
  }
  void show() {
    fill(255, 0, 0);
    ellipse(x, y, 10, 10);
  }



  void move() {

    a = (int) atan2(mouseY-y, mouseX-x);

    //print(a);
    if (abs(a)<1.5) {
      x+=(int)random(1, 5);
      // print("right, "+a);
    }
    if (abs(a)>1.5) {

      x-=(int)random(1, 5);
      //  print("left, "+a);
    }

    if (a<0) {
      y-=(int)random(1, 5);
      //   print("top, "+a);
    }
    if (a>0) {
      y+=(int)random(1, 5);
      //    print("bottom, "+a);
    }
    //   println(b[1].x);
  }
  void mutate() {
    if (abs(a)<1.5) {
      x+=(int)random(0, 1);
      // print("right, "+a);
    }
    if (abs(a)>1.5) {

      x-=(int)random(0, 1);
      //  print("left, "+a);
    }

    if (a<0) {
      y-=(int)random(0, 1);
      //   print("top, "+a);
    }
    if (a>0) {
      y+=(int)random(0, 1);
      //    print("bottom, "+a);
    }
    // print(b[1]);

    fill(0, 250, 0);
    ellipse(x, y, 10, 10);
  }
  void attack() {
    if (    ( x > ( mouseX - 25 ) ) &&    ( x < ( mouseX + 25 ) ) && ( y > ( mouseY - 25 ) ) && ( y < ( mouseY + 25 ) )  ) {

      check = true;
    }
    // youLose();
  }
}
void youLose() {
  rect(0, 0, 1000, 1000);
}
//void instantiate() {
//  if ((s/1000)==(c+5)) {


//    m=new mutatedB[num];

//    for (int i=0; i<num; i++) {
//      m[i]= new mutatedB((int)random(0, 400), (int)random(0, 400), 0);
//    }
//    num++;
//    c=s+c;
//  }
//}

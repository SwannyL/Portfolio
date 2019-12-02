//declare bacteria variables here  
var b=[];

var s;
var c;

var num=2;
var check=false;
function setup()   
{     
  background(0);
  createCanvas(700, 500);
  //frameRate(100);


 // bacteria=new [];

  for (let i=0; i<10; i++) {
    b[i]= new Bacteria(random(0, 400), random(0, 400), 0);
  }

  //initialize bacteria variables here
}   



function draw()   
{    
  //instantiate();
  fill(0, 0, 250);
  ellipse(mouseX, mouseY, 20, 20);
//  s = millis();  // Values from 0 - 59

 // println(s);


  background(0);
  for (let i=0; i<10; i++) {

    b[i].show();
    b[i].move();
    b[i].attack();
  }
  if ((s/1000)==5) {
    for (let i=0; i<num; i++) {
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
  
  constructor( x, y,  a) {

    this.x=x;
    this.y=y;
    this.a=a;
  }
  show() {
    fill(255, 0, 0);
    ellipse(this.x, this.y, 10, 10);
  }



   move() {

    this.a = atan2(mouseY-this.y, mouseX-this.x);

    //print(a);
    if (abs(this.a)<1.5) {
      this.x+=random(1, 5);
      // print("right, "+a);
    }
    if (abs(this.a)>1.5) {

      this.x-=random(1, 5);
      //  print("left, "+a);
    }

    if (this.a<0) {
      this.y-=random(1, 5);
      //   print("top, "+a);
    }
    if (this.a>0) {
      this.y+=random(1, 5);
      //    print("bottom, "+a);
    }
    //   println(b[1].x);
  }
   mutate() {
    if (abs(this.a)<1.5) {
      this.x+=random(0, 1);
      // print("right, "+a);
    }
    if (abs(this.a)>1.5) {

      this.x-=random(0, 1);
      //  print("left, "+a);
    }

    if (this.a<0) {
      this.y-=random(0, 1);
      //   print("top, "+a);
    }
    if (this.a>0) {
      this.y+=random(0, 1);
      //    print("bottom, "+a);
    }
    // print(b[1]);

    fill(0, 250, 0);
    ellipse(this.x, this.y, 10, 10);
  }
   attack() {
    if (    ( this.x > ( mouseX - 25 ) ) &&    ( this.x < ( mouseX + 25 ) ) && ( this.y > ( mouseY - 25 ) ) && ( this.y < ( mouseY + 25 ) )  ) {

      check = true;
    }
    // youLose();
  }
}
 function youLose() {
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

int rand;
int count;
int total;
int round=0;
void setup()
{
  size(600, 500);
  background(0);
  noLoop();




  textSize(25);
  fill(0, 100, 153);
  text("Get the highest amount without \n rolling one pip. Press hold to end round\n and keep your round total. ", 20, 200);
}
void draw()
{

  Die a = new Die(width/2-25, height/2-25);
   a.roll();
  a.show();
  //score();
  holdButton();
  rollButton();
  finish();
  //your code here
   
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  private int y;
  private int x;

  Die(int x, int y)
  {


    this.x = x;
    this.y = y;
  }
  void roll()
  {
    if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
      rand = (int)random(1, 7);
      System.out.println("die: " + rand);
 
score();

      if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
        if (rand==1) {
          blank();
          fill(255, 255, 255);
          rect( x, y, 50, 50, 7);
          fill(0);
          ellipse(x+25, y+25, 10, 10);
        }
      }
      if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
        if (rand==2) {
          blank();
          fill(255, 255, 255); 
          rect( x, y, 50, 50, 7);
          fill(0);
          ellipse(x+10, y+10, 10, 10);
          ellipse(x+40, y+40, 10, 10);
        }
      }
      if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
        if (rand==3) {
          blank();
          fill(255, 255, 255);
          rect( x, y, 50, 50, 7);
          fill(0);
          ellipse(x+10, y+10, 10, 10);
          ellipse(x+40, y+40, 10, 10);
          ellipse(x+25, y+25, 10, 10);
        }
      }
      if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
        if (rand==4) {
          blank();
          fill(255, 255, 255);
          rect( x, y, 50, 50, 7);
          fill(0);
          ellipse(x+10, y+10, 10, 10);
          ellipse(x+40, y+40, 10, 10);
          ellipse(x+10, y+40, 10, 10);
          ellipse(x+40, y+10, 10, 10);
        }
      }
      if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
        if (rand==5) {
          blank();
          fill(255, 255, 255);
          rect( x, y, 50, 50, 7);
          fill(0);
          ellipse(x+10, y+10, 10, 10);
          ellipse(x+40, y+40, 10, 10);
          ellipse(x+10, y+40, 10, 10);
          ellipse(x+40, y+10, 10, 10);
          ellipse(x+25, y+25, 10, 10);
        }
      }
      if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
        if (rand==6) {
          blank();
          fill(255, 255, 255);
          rect( x, y, 50, 50, 7);
          fill(0);
          ellipse(x+10, y+10, 10, 10);
          ellipse(x+40, y+40, 10, 10);
          ellipse(x+10, y+40, 10, 10);
          ellipse(x+40, y+10, 10, 10);
          ellipse(x+40, y+25, 10, 10);
          ellipse(x+10, y+25, 10, 10);
        }
      }
    }
  }
  void show()
  {


//    roll();
  }
}
public int score() {
  fill(0);
  rect( 200, 0, 175, 100);
  if (rand == 1) {
    count=0;
    round++;
  } else {
    count+=rand;
  }
  textSize(25);
  fill(0, 102, 153);
  text("Round Total:"+count, 130, 100);
  text("Round :"+round, 350, 25);
  println("count."+count);



  return count ;
}
void blank() {
  fill(0);
  rect(0, 0, 500, 500);
}
void rollButton() {
  fill(255, 255, 255);
  rect(375, 100, 100, 30);
  textSize(25);
  fill(0, 102, 153);
  text("Roll", 405, 125);
  text("Game Total:"+total, 40, 40);
}
void holdButton() {

  fill(255, 255, 255);
  rect(375, 50, 100, 30);
  textSize(25);
  fill(0, 102, 153);
  text("Hold", 405, 75);


  if (mousePressed  &&  (mouseX<475) && (mouseX>375) && (mouseY>50) && (mouseY<80) ) {
    finish();
    hold();
  }
}
void  hold() {
  //blank();
  //finish();
  println("1."+total);
  fill(0);
  rect(0, 0, 200, 50);
  total+=count;
  round++;
  count=0;
  textSize(25);
  fill(0, 102, 153);
  text("Game Total:"+total, 40, 40);
  println("2."+total);
}
public int finish() {
  if (round==5) {
    fill(0);
    rect(-100, -100, 10000, 100000);
    fill(255, 255, 255);
   text("Game Total:"+total, 40, 40);
  }
  return total;
}

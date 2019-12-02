var rand=0;
var count=0;
var total=0;
var round=0;
var a;
function setup()
{
  createCanvas(500, 500);
  background(0);
  
  a = new Die(width/2-25, height/2-25);
round=0;


  textSize(25);
  fill(0, 100, 153);
  text("Get the highest amount without \n rolling one pip. Press hold to end round \nand keep your round total. ", 20, 200);
}
function draw()
{

background(0);

textSize(25);
  fill(0, 102, 153);
  text("Round Total:"+count, 130, 100);
  text("Round :"+floor(round), 350, 25);
    text("Game Total:"+total, 40, 40);
  
  a.show();
  //score();
  if(round!=5){
    holdButton();
  }
  rollButton();
  finish();
  //your code here
  
  
  
}

class Die //models one single dice cube
{


  constructor(x, y)
  {


    this.x = x;
    this.y = y;
  }

  roll() {
    if ((mouseX<475) && (mouseX>375) && (mouseY>100) && (mouseY<130) ) {
      rand = floor(random(1, 7));
      //System.out.println("die: " + rand);

      score();
    }
  }
  show()
  {


    if (rand==1) {
      fill(255, 255, 255);
      rect( this.x, this.y, 50, 50, 7);
      fill(0);
      ellipse(this.x+25, this.y+25, 10, 10);
    }


    if (rand==2) {
       
      fill(255, 255, 255); 
      rect( this.x, this.y, 50, 50, 7);
      fill(0);
      ellipse(this.x+10, this.y+10, 10, 10);
      ellipse(this.x+40, this.y+40, 10, 10);
    }


    if (rand==3) {
       
      fill(255, 255, 255);
      rect( this.x, this.y, 50, 50, 7);
      fill(0);
      ellipse(this.x+10, this.y+10, 10, 10);
      ellipse(this.x+40, this.y+40, 10, 10);
      ellipse(this.x+25, this.y+25, 10, 10);
    }


    if (rand==4) {
       
      fill(255, 255, 255);
      rect( this.x, this.y, 50, 50, 7);
      fill(0);
      ellipse(this.x+10, this.y+10, 10, 10);
      ellipse(this.x+40, this.y+40, 10, 10);
      ellipse(this.x+10, this.y+40, 10, 10);
      ellipse(this.x+40, this.y+10, 10, 10);
    }


    if (rand==5) {
       
      fill(255, 255, 255);
      rect( this.x, this.y, 50, 50, 7);
      fill(0);
      ellipse(this.x+10, this.y+10, 10, 10);
      ellipse(this.x+40, this.y+40, 10, 10);
      ellipse(this.x+10, this.y+40, 10, 10);
      ellipse(this.x+40, this.y+10, 10, 10);
      ellipse(this.x+25, this.y+25, 10, 10);
    } 


    if (rand==6) {
       
      fill(255, 255, 255);
      rect( this.x, this.y, 50, 50, 7);
      fill(0); 
      ellipse(this.x+10, this.y+10, 10, 10);
      ellipse( this.x+40, this.y+40, 10, 10);
      ellipse( this.x+10, this.y+40, 10, 10);
      ellipse( this.x+40, this.y+10, 10, 10);
      ellipse( this.x+40, this.y+25, 10, 10);
      ellipse( this.x+10, this.y+25, 10, 10);
    }
  }
}
function score() {
  fill(0);
  rect( 200, 0, 175, 100);
  if (rand == 1) {
    count=0;
    round++;
  } else {
    count+=rand;
  }
  
 // println("count."+count);



  return count ;
}
function rollButton() {
  fill(255, 255, 255);
  rect(375, 100, 100, 30);
  textSize(25);
  fill(0, 102, 153);
  text("Roll", 405, 125);
  text("Game Total:"+total, 40, 40);
}
function holdButton() {

  fill(255, 255, 255);
  rect(375, 50, 100, 30);
  textSize(25);
  fill(0, 102, 153);
  text("Hold", 405, 75);


  
}

function mouseClicked() {
  a.roll();
 if ((mouseX<475) && (mouseX>375) && (mouseY>50) && (mouseY<80) ) {
    finish();
    hold();
    if(round==6){
      round = 0;
      total = 0;
    }
  } 
  
}

function  hold() {
  //blank();
  //finish();
  //println("1."+total);
  fill(0);
  rect(0, 0, 200, 50);
  total+=count;
  round++;
  count=0;
  

 // println("2."+total);
}
function finish() {
  if (round==5) {
    fill(0);
    rect(-100, -100, 10000, 100000);
    fill(255, 255, 255);
    text("Game Total:"+total, 40, 40);
  }
  
}

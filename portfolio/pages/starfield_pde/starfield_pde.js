int [] a;
//= new Particle[100];

function setup(){


  background(0);
  size(500, 500);
  //NormalParticle a= new NormalParticle(50,50,50,50);
  //a.show();
  //a.move();
  //a[49] = new OddballParticle(random(240, 250), 250, PI, 2, (int)random(0, 360), (int)random(0, 100), (int)random(0, 100));
  // a[0] = new OddballParticle(random(240, 250), 250, PI, 2, (int)random(0, 360), (int)random(0, 100), (int)random(0, 100));
  for (let i = 0; i<100; i++) {
    
    a[i]= new NormalParticle(random(240, 250)+i, 250+i*2, PI*i, 2, random(0, 360), random(0, 100), random(0, 100));
  }
}
function draw(){
  //NormalParticle a= new NormalParticle(50,50,50,50);

  for (let i = 0; i<a.length; i++) {

    a[i].move();
    a[i].show();
  }
}






  constructor(x, y, theta, speed, h, s, b) {

    this.x=x;
    this.y=y;
    this.theta=theta;
    this.speed=speed;
    this.h=h;
    this.s=s;
    this.b=b;
  }
  public void move() {
    theta+=1;
    speed+=.1;
    x = x + cos(theta) * speed;
    y = y + sin(theta) * speed;
  }
  public void show() {
    colorMode(HSB, 100);
    fill(degrees(theta), s, b);
    ellipse(this.x, this.y, 3, 3);
    // background(0);
  }
  void reverse() {
    //  speed+-.005
    //  theta
  }
}

Particle [] a = new Particle[100];



void setup() {
  frameRate(1000);

  background(0);
  size(500, 500);
  //NormalParticle a= new NormalParticle(50,50,50,50);
  //a.show();
  //a.move();
  //a[49] = new OddballParticle(random(240, 250), 250, PI, 2, (int)random(0, 360), (int)random(0, 100), (int)random(0, 100));
  // a[0] = new OddballParticle(random(240, 250), 250, PI, 2, (int)random(0, 360), (int)random(0, 100), (int)random(0, 100));
  for (int i = 0; i<100; i++) {

    a[i]= new NormalParticle(random(240, 250)+i, 250+i*2, PI*i, 2, (int)random(0, 360), (int)random(0, 100), (int)random(0, 100));
  }
}
void draw() {
  //NormalParticle a= new NormalParticle(50,50,50,50);

  for (int i = 0; i<a.length; i++) {

    a[i].move();
    a[i].show();
  }
}

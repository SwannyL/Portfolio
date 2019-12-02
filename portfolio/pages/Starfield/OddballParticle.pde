public class OddballParticle implements Particle { //uses an interface

  private float x=250;
  private float y=250;
  private float theta;
  private float speed;
  private int h=150, s=50, b=255;
  OddballParticle(float x, float y, float theta, float speed, int h, int s, int b) {

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
    speed+=.009;
    x = x + cos(theta) * speed;
    y = y + sin(theta) * speed;
  }
  public void show() {
    colorMode(HSB, 100);
    fill(0);
    ellipse(this.x, this.y, 500, 5);
    // background(0);
  }
}

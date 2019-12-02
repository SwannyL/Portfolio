public class NormalParticle implements Particle {
  //your code here
  private float x=250;
  private float y=250;
  private float theta;
  private float speed;
  private int h, s, b;
  NormalParticle(float x, float y, float theta, float speed, int h, int s, int b) {

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

class CueBall extends Ball {
  //variables
  float x, y, dx, dy, radius;
  color c;

  //constructor(s)
  CueBall(float x, float y, float dx, float dy, float radius, color _c) {
    super(x, y, dx, dy, radius);
    c = _c;
  }

  //behaviour(s)
  void display() {
    ellipse(x, y, radius*1.5, radius*1.5);
    fill(c);
  }

  void ownColor() {
    c = color(255);
  }

  void move() {
    super.move();
    x += dx;
    y += dy;

    bounceTheBall();
  }

  void bounceTheBall() {
    super.bounceTheBall();

    if ( (x+radius > width) || (x - radius < 0) ) {
      dx *= -1;
    }
    if ( (y+radius > height) || (y - radius < 0) ) {
      dy *= -1;
    }
  }

  void collisionCheckWith(CueBall otherBall) {
    super.collisionCheckWith(otherBall);

    float distanceBetweenBalls = dist(x, y, otherBall.x, otherBall.y);
    float sumOfRadii = radius + otherBall.radius;

    if (distanceBetweenBalls <= sumOfRadii) { //collision!
      float tempdx = dx;
      float tempdy = dy;

      dx = otherBall.dx;
      dy = otherBall.dy;

      otherBall.dx = tempdx;
      otherBall.dy = tempdy;
    }
  }
}
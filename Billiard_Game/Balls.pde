//Parent Class
class Ball {
  //Variables
  float x, y, dx, dy, radius;

  //Constructor(s)
  Ball(float x, float y, float dx, float dy, float radius) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.radius = radius;
  }

  //Behaviour(s)
  void display() {
    ellipse(x, y, radius*1.5, radius*1.5);
  }

  void move() {
    x += dx;
    y += dy;

    bounceTheBall();
  }
  void bounceTheBall() {
    if ( (x+radius > width) || (x - radius < 0) ) {
      dx *= -1;
    }
    if ( (y+radius > height) || (y - radius < 0) ) {
      dy *= -1;
    }
  }

  void collisionCheckWith(CueBall balls) {
    float distanceBetweenBalls = dist(x, y, balls.x, balls.y);
    float sumOfRadii = radius + balls.radius;

    if (distanceBetweenBalls <= sumOfRadii) { //collision!
      float tempdx = dx;
      float tempdy = dy;

      dx = balls.dx;
      dy = balls.dy;

      balls.dx = tempdx;
      balls.dy = tempdy;
    }
  }
}
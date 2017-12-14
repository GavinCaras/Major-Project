//Child Class
class yellowBall extends Ball {
  //Variables
  float x, y, dx, dy, radius;
  color c;

  //Constructor(s)
  yellowBall(float x, float y, float dx, float dy, float radius, color _c) {
    super(x, y, dx, dy, radius);
    c = _c;
  }

  //Behaviour(s)
  void display() {
    ellipse(x, y, radius*1.5, radius*1.5);
    fill(c);
  }

  void ownColor() {
    c = color(246, 255, 3);
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

  void collisionCheckWith(yellowBall balls) {
    super.collisionCheckWith(balls);

    float distanceBetweenBalls = dist(x, y, balls.x, balls.y);
    float sumOfRadii = radius + balls.radius;

    if (distanceBetweenBalls <= sumOfRadii) { 
      float tempdx = dx;
      float tempdy = dy;

      dx = balls.dx;
      dy = balls.dy;

      balls.dx = tempdx;
      balls.dy = tempdy;
    }
  }
}
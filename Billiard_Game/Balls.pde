class Ball {
  //variables
  float x, y, dx, dy, radius;

  //constructor(s)
  Ball(float x, float y, float dx, float dy, float radius) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.radius = radius;
  }
  
//behaviour(s)
void display() {
  ellipse(x, y, radius*2, radius*2);
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

void collisionCheckWith(Ball otherBall) {
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

class Ball {
  //Variables
  float x, y, dx, dy, radius;
  int r, g, b;

  //Constructor(s)
  Ball(float x, float y, float dx, float dy, float radius, int r, int g, int b) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.radius = radius;
    this.r = r;
    this.g = g;
    this.b = b;
  }

  //Behaviour(s)
  void display() {
    fill(r, g, b);
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

  void ball1CollisionCheckWith (ball2 ball3) {
    float distanceBetweenBalls = dist(x, y, ball2.x, ball2.y);
    float distanceBetweenBalls = dist(x, y, ball3.x, ball3.y);
    
    float sumOfRadii = radius + ball2.radius;
    float sumOfRadii = radius + ball3.radius;

    if (distanceBetweenBalls <= sumOfRadii) { //collision!
      float tempdx = dx;
      float tempdy = dy;
      
      dx = ball2.dx;
      dy = ball2.dy;

      dx = ball3.dx;
      dy = ball3.dy;

      ball2.dx = tempdx;
      ball2.dy = tempdy;
      
      ball3.dx = tempdx;
      ball3.dx = tempdx;
      
    }
  }

  void ball2CollisionCheckWith (ball3 ball1) {
    float distanceBetweenBalls = dist(x, y, ball3.x, ball3.y);
    float distanceBetweenBalls = dist(x, y, ball1.x, ball1.y);
    
    float sumOfRadii = radius + ball3.radius;
    float sumOfRadii = radius + ball1.radius;

    if (distanceBetweenBalls <= sumOfRadii) { 
      float tempdx = dx;
      float tempdy = dy;

      dx = ball3.dx;
      dy = ball3.dy;
      dx = ball1.dx;
      dx = ball1.dy;

      ball3.dx = tempdx;
      ball3.dy = tempdy;
      ball1.dx = tempdx;
      ball1.dy = tempdy;
    }
  }

  void ball3CollisionCheckWith (ball1 ball2) {
    float distanceBetweenBalls = dist(x, y, ball1.x, ball1.y);
    float distanceBetweenBalls = dist(x, y, ball2.x, ball2.y);
    
    float sumOfRadii = radius + ball1.radius;
    float sumOfRadii = radius + ball2.radius;

    if (distanceBetweenBalls <= sumOfRadii) { 
      float tempdx = dx;
      float tempdy = dy;

      dx = ball1.dx;
      dy = ball1.dy;
      dx = ball2.dx;
      dy = ball2.dy;

      ball1.dx = tempdx;
      ball1.dy = tempdy;
      ball2.dx = tempdx;
      ball2.dy = tempdy;
    }
  }






}
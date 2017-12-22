class Ball {
  //Variables
  float x, y, dx, dy, radius;
  int r, g, b;
  float redHue, greenSaturation, blueBrightness;
  float xLight, yLight, zLight;
  float directionX, directionY, directionZ;
  float angle;
  float concentration;

  //Constructor(s)
  Ball(float _x, float _y, float _dx, float _dy, float _radius, int _r, int _g, int _b, float _redHue, float _greenSaturation, float _blueBrightness, float _xLight, float _yLight, float _zLight, float _directionX, float _directionY, float _directionZ, float _angle, float _concentration) {
    x = _x;
    y = _y;
    dx = _dx;
    dy = _dy;
    radius = _radius;
    r = _r;
    g = _g;
    b = _b;
    redHue = _redHue;
    greenSaturation = _greenSaturation;
    blueBrightness = _blueBrightness;
    xLight = _xLight;
    yLight = _yLight;
    zLight = _zLight;
    directionX = _directionX;
    directionY = _directionY;
    directionZ = _directionZ;
    angle = _angle;
    concentration = _concentration;
  }

  //Behaviour(s)
  void display() {
    spotLight(r, g, b, 80, 20, 40, -1, 0, 0, PI/2, 2);
    sphere(30);
    //fill(r, g, b);
   //ellipse(x, y, radius*1.5, radius*1.5);
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

  void collisionCheckWith (Ball otherBall) {
    float distanceBetweenBalls = dist(x, y, otherBall.x, otherBall.y);
    float sumOfRadii = radius + otherBall.radius;                                                            

    if (distanceBetweenBalls <= sumOfRadii) {
      float tempdx = dx;
      float tempdy = dy;

      dx = otherBall.dx;
      dy = otherBall.dy;

      otherBall.dx = tempdx;
      otherBall.dy = tempdy;
    }
  }
}
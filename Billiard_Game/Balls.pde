class Ball {
  //variables
  float[] ballX, ballY, dxBall, dyBall, ballRadius;
  float ballSize;
  
  //constructor(s)
  Ball(float _ballX, float _ballY, float _dxBall, float _dyBall, float _ ballRadius) {
    ballX = _x;
    ballY = _y;
    dxBall = _dx;
    dyBall = _dy;
    ballRadius = _r;
  }
}  
  //behaviour(s)
  void display() {
    ellipse(x, y, 20, 20);
  }
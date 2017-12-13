class Ball {
  //variables
  float x, y, dy, dx, r;
  
  //constructor(s)
  Ball(float _x, float _y, float _dx, float _dy, float_r) {
    x = _x;
    y = _y;
    dx = _dx;
    dy = _dy;
    r = _r;
  }
  
  //behaviour(s)
  void display() {
    point(x,y);
  }

}
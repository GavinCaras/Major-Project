class Cue extends Ball {
  //Variables
  float x, y, dx, dy, radius;
  int r, g, b;

  //Constructor(s)
  Cue(float _x, float _y, float _dx, float _dy, float _radius, int _r, int _g, int _b) {
    super(_x, _y, _dx, _dy, _radius, _r, _g, _b);
    x = _x;
    y = _y;
    dx = _dx;
    dy = _dy;
    radius = _radius;
    r = _r;
    g = _g;
    b = _b;
  }
  //Behaviour(s)
  void display() {
    fill(r, g, b);
    ellipse(x, y, radius *1.5, radius *1.5);
  }
}
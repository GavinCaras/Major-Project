class Circle {
  //Variables
  float x, y, dx, dy, radius;
  int r, g, b;

  //Constructor(s)
  Circle(float _x, float _y, float _dx, float _dy, float _radius, int _r, int _g, int _b) {
    this.x = _x;
    this.y = _y;
    this.dx = _dx;
    this.dy = _dy;
    this.radius = _radius;
    this.r = _r;
    this.g = _g;
    this.b = _b;
  }

  //Behaviour(s)   
  void display() {
    //The ball's color and 
    fill(r, g, b);
    ellipse(x, y, radius*1.5, radius*1.5);
  }
  
}
class Ball  {
  //Variables
  PVector velocity, acceleration, direction;
  float x, y, radius;
  int r, g, b;

  //Constructor(s)
  Ball(float _x, float _y, float _radius, int _r, int _g, int _b) {
    
    //Applying Vectors  
    velocity = new PVector (0, 0);
    acceleration = new PVector(0, 0);
    direction = new PVector(1,0);
    
    x = _x;
    y = _y;
    radius = _radius;
    r = _r;
    g = _g;
    b = _b;
  }
  //Behaviour(s)
  void display() {
    pushMatrix();
    stroke(.5);
    fill(r, g, b);
    ellipse(x, y, radius *1.5, radius *1.5);
    popMatrix();
  }
  
  void moveBalls() {
    //Adding Vectors.
    velocity.add(acceleration);
    acceleration.set(0, 0);
    

    ballScreenConstraint();

    //Friction of the Balls to slowly stop.
    velocity.div(1.100);
  }
  
    void controlKeyPressed() {    
    //Normal poke.
    if (key == 'q' || key == 'Q') {
      PVector poke = new PVector(0, 0);
      poke = direction.copy();
      poke.normalize();
      poke.mult(100);
      acceleration = poke;
    }
    //Power poke.
    else if (key == 'w' || key == 'W') {
      PVector poke = new PVector(0, 0);
      poke = direction.copy();
      poke.normalize();
      poke.mult(200);
      acceleration = poke;
    }
  }
  
  void ballScreenConstraint() {
    if ((x + radius >= width/1.06) || (x - radius <= 0 )) {
      velocity.x = velocity.x * -1;
    }
    if ((y + radius >= height/1.06) || (y - radius <= 0)) {
      velocity.y = velocity.y * -1;
    }
  }
  
}
class Cue {
  //Variables
  PVector velocity, acceleration, direction, location;
  float radius;
  int r, g, b;

  //Constructor(s)
  Cue(float _radius, int _r, int _g, int _b) { 

  //Applying Vector
   location = new PVector(200/2, 350/2);
   velocity = new PVector(0, 0);
   acceleration = new PVector(0, 0);
   direction = new PVector(1, 0);

    radius = _radius;
    r = _r;
    g = _g;
    b = _b;
  }
  //Behaviour(s)
  void display() {
    pushMatrix();
     translate(location.x, location.y);
     fill(r, g, b);
     ellipse(location.x, location.y, radius *1.5, radius *1.5);
    popMatrix();
  }

  void moveCue() {
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.set(0, 0);
    
    //friction
    velocity.div(1.100);
  }

  void keyPressed() {
    if (key == ' ') {
      PVector poke = new PVector();
      poke = direction.copy();
      poke.normalize();
      poke.mult(1.8);
      acceleration = poke;
    }
  }
}
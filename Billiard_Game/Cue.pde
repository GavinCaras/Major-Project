class Cue {
  //Variables
  PVector velocity, acceleration, direction, location;
  float radius;
  int r, g, b;

  //Constructor(s)
  Cue(float _radius, int _r, int _g, int _b) { 

    //Applying Vectors.
    location = new PVector(130, 350);
    velocity = new PVector (0, 0);
    acceleration = new PVector(0, 0);
    direction = new PVector(1, 0);

    radius = _radius;
    r = _r;
    g = _g;
    b = _b;
  }
  //Behaviour(s)
  void display() {  
    //The Cue ball's coordinates and color.
    pushMatrix();
    translate(location.x, location.y);
    stroke(.5);
    fill(r, g, b);
    ellipse(0, 0, radius *1.5, radius *1.5);
    popMatrix();
  }

  void moveCue() {
    
    //Adding Vectors.
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.set(0, 0);
    
    stayCueinscreen();
     
    //Friction of the Cue to slowly stop.
    velocity.div(1.100);
    

  }

  void controlKeyPressed() {
    //Normal poke.
    if (key == 'q' || key == 'Q') {
      PVector poke = new PVector();
      poke = direction.copy();
      poke.normalize();
      poke.mult(100);
      acceleration = poke;
    }
    //Power poke.
    else if (key == 'w' || key == 'W') {
      PVector poke = new PVector();
      poke = direction.copy();
      poke.normalize();
      poke.mult(200);
      acceleration = poke;
    }
  }

  void stayCueinscreen() {
    if ((location.x + radius >= width/1.06) || (location.x - radius <= 0 )) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y + radius >= height/1.06) || (location.y - radius <= 0)) {
      velocity.y = velocity.y * -1;
    }
  }
}
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
    stroke(0, 0, 0);
    ellipse(0, 0, radius *1.5, radius *1.5);
    
    line(0, 0, mouseX, mouseY);
    popMatrix();
    
    float dx = mouseX-width/2;
    float dy = mouseY-height/2;
    float angle = atan2(dy, dx);
    angle = angle < 0 ? angle + TWO_PI : angle; 
    println(angle);
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
      PVector poke = new PVector(mouseX, mouseY);
      poke = direction.copy();
      poke.normalize();
      poke.mult(100);
      acceleration = poke;
    }
    //Power poke.
    else if (key == 'w' || key == 'W') {
      PVector poke = new PVector(mouseX, mouseY);
      if ( dist(location.x, location.y, 0, 0) > radius/2)
      poke.sub(location);
      poke.add(location);
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

  //void rotate2D(PVector v, float theta) {
  //  float m = v.mag();
  //  float a = v.heading2D();

  //  a += theta;
  //}

  //void drawVector(PVector v, float x, float y, float scale) {
  //  pushMatrix();
  //  float arrowsize = 4;
  //  translate(x,y);
  //  stroke(255);

  //  rotate(v.heading2D());

  //  float len = v.mag()*scale;

  //  line(0, 0, len,0);
  //  line(len,0,len-arrowsize,+arrowsize/2);
  //  line(len,0,len-arrowsize,-arrowsize/2);
  //  popMatrix();
  //}
}
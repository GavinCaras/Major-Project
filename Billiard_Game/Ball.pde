class Ball  {
  //Variables
  PVector velocity, acceleration, direction,location;
  float x, y, radius;
  int r, g, b;

  //Constructor(s)
  Ball(float _x, float _y, float _radius, int _r, int _g, int _b) {
    
    //Applying Vectors 
    location = new PVector(x,y);
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
    translate(location.x, location.y);
    stroke(.5);
    fill(r, g, b);
    ellipse(x, y, radius *1.5, radius *1.5);
    popMatrix();
  }
  
  void moveBalls() {
    //Adding Vectors.
    location.add(velocity);
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
    //Balls staying on screen
    if ((location.x + radius >= width/1.06) || (location.x - radius <= 0 )) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y + radius >= height/1.06) || (location.y - radius <= 0)) {
      velocity.y = velocity.y * -1;
    }
  }
  
  void ballCollisions(Ball anyBall) {
    //Ball collisions
    float distanceBetweenBalls = dist(location.x, location.y, anyBall.x, anyBall.y);
    float sumOfRadii = radius + anyBall.radius;
    
    if (distanceBetweenBalls <= sumOfRadii) { 
      float tempdx = velocity.x;
      float tempdy = velocity.y;
      
      velocity.x = anyBall.velocity.x;
      velocity.y = anyBall.velocity.y;
      
      anyBall.velocity.x = tempdx;
      anyBall.velocity.y = tempdy;
    }
  }  
}
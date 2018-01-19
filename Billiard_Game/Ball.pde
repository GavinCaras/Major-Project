class Ball  {
  //Variables
  
  PVector velocity, location;
  float x, y, radius, magnitude;
  int r, g, b;

  //Constructor(s)
  Ball(float x, float y, float _radius, int _r, int _g, int _b) {
    
    //Applying Vectors 
    location = new PVector(x, y);
    velocity = PVector.random2D();
    //acceleration = new PVector(0, 0);
    //direction = new PVector(1,0);
    
    radius = _radius;
    magnitude = radius*.1;
    r = _r;
    g = _g;
    b = _b;
  }
  //Behaviour(s)
  void display() {
    //pushMatrix();
    //translate(location.x, location.y);
    stroke(.5);
    fill(r, g, b);
    ellipse(location.x, location.y, radius *1.5, radius *1.5);
    //popMatrix();
  }
  
  void move() {
    //Adding Vectors.
    location.add(velocity);
    //velocity.add(acceleration);
    //acceleration.set(0, 0);
    

    //ballScreenConstraint();

    //Friction of the Balls to slowly stop.
    //velocity.div(1.100);
  }
  
    void controlKeyPressed() {    
    //Normal poke.
    if (key == 'q' || key == 'Q') {
      PVector poke = new PVector(0, 0);
      //poke = direction.copy();
      poke.normalize();
      poke.mult(100);
      //acceleration = poke;
    }
    //Power poke.
    else if (key == 'w' || key == 'W') {
      PVector poke = new PVector(0, 0);
      //poke = direction.copy();
      poke.normalize();
      poke.mult(200);
      //acceleration = poke;
    }
  }
  
    void ballscreenConstraint() {
    if (location.x > width-radius) {
      location.x = width-radius;
      velocity.x *= -1;
    } else if (location.x < radius) {
      location.x = radius;
      velocity.x *= -1;
    } else if (location.y > height-radius) {
      location.y = height-radius;
      velocity.y *= -1;
    } else if (location.y < radius) {
      location.y = radius;
      velocity.y *= -1;
    }
  }
  
  void checkCollision(Ball other) {

    // Get distances between the balls components
    PVector distanceVect = PVector.sub(other.location, location);

    // Calculate magnitude of the vector separating the balls
    float distanceVectMag = distanceVect.mag();

    // Minimum distance before they are touching
    float minDistance = radius + other.radius;

    if (distanceVectMag < minDistance) {
      float distanceCorrection = (minDistance-distanceVectMag)/2.0;
      PVector d = distanceVect.copy();
      PVector correctionVector = d.normalize().mult(distanceCorrection);
      other.location.add(correctionVector);
      location.sub(correctionVector);

      // get angle of distanceVect
      float theta  = distanceVect.heading();
      // precalculate trig values
      float sine = sin(theta);
      float cosine = cos(theta);

      /* bTemp will hold rotated ball positions. You 
       just need to worry about bTemp[1] position*/
      PVector[] bTemp = {
        new PVector(), new PVector()
      };

      /* this ball's position is relative to the other
       so you can use the vector between them (bVect) as the 
       reference point in the rotation expressions.
       bTemp[0].position.x and bTemp[0].position.y will initialize
       automatically to 0.0, which is what you want
       since b[1] will rotate around b[0] */
      bTemp[1].x  = cosine * distanceVect.x + sine * distanceVect.y;
      bTemp[1].y  = cosine * distanceVect.y - sine * distanceVect.x;

      // rotate Temporary velocities
      PVector[] vTemp = {
        new PVector(), new PVector()
      };

      vTemp[0].x  = cosine * velocity.x + sine * velocity.y;
      vTemp[0].y  = cosine * velocity.y - sine * velocity.x;
      vTemp[1].x  = cosine * other.velocity.x + sine * other.velocity.y;
      vTemp[1].y  = cosine * other.velocity.y - sine * other.velocity.x;

      /* Now that velocities are rotated, you can use 1D
       conservation of momentum equations to calculate 
       the final velocity along the x-axis. */
      PVector[] vFinal = {  
        new PVector(), new PVector()
      };

      // final rotated velocity for b[0]
      vFinal[0].x = ((magnitude - other.magnitude) * vTemp[0].x + 2 * other.magnitude * vTemp[1].x) / (magnitude + other.magnitude);
      vFinal[0].y = vTemp[0].y;

      // final rotated velocity for b[0]
      vFinal[1].x = ((other.magnitude - magnitude) * vTemp[1].x + 2 * magnitude * vTemp[0].x) / (magnitude + other.magnitude);
      vFinal[1].y = vTemp[1].y;

      // hack to avoid clumping
      bTemp[0].x += vFinal[0].x;
      bTemp[1].x += vFinal[1].x;

      /* Rotate ball positions and velocities back
       Reverse signs in trig expressions to rotate 
       in the opposite direction */
      // rotate balls
      PVector[] bFinal = { 
        new PVector(), new PVector()
      };

      bFinal[0].x = cosine * bTemp[0].x - sine * bTemp[0].y;
      bFinal[0].y = cosine * bTemp[0].y + sine * bTemp[0].x;
      bFinal[1].x = cosine * bTemp[1].x - sine * bTemp[1].y;
      bFinal[1].y = cosine * bTemp[1].y + sine * bTemp[1].x;

      // update balls to screen position
      other.x = location.x + bFinal[1].x;
      other.location.y = location.y + bFinal[1].y;

      location.add(bFinal[0]);

      // update velocities
      velocity.x = cosine * vFinal[0].x - sine * vFinal[0].y;
      velocity.y = cosine * vFinal[0].y + sine * vFinal[0].x;
      other.velocity.x = cosine * vFinal[1].x - sine * vFinal[1].y;
      other.velocity.y = cosine * vFinal[1].y + sine * vFinal[1].x;
    }
  }
}
  //void ballScreenConstraint() {
  //  //Balls staying on screen
  //  if ((location.x + radius >= width/1.06) || (location.x - radius <= 0)) {
  //    velocity.x = velocity.x * -1;
  //  }
  //  if ((location.y + radius >= height/1.06) || (location.y - radius <= 0)) {
  //    velocity.y = velocity.y * -1;
  //  }
  //}
  
  //void ballCollisions(Ball anyBall) {
  //  //Ball collisions
  //  float distanceBetweenBalls = dist(location.x, location.y, anyBall.x, anyBall.y);
  //  float sumOfRadii = radius + anyBall.radius;
    
  //  if (distanceBetweenBalls <= sumOfRadii) { 
  //    float tempdx = velocity.x;
  //    float tempdy = velocity.y;
      
  //    velocity.x = anyBall.velocity.x;
  //    velocity.y = anyBall.velocity.y;
      
  //    anyBall.velocity.x = tempdx;
  //    anyBall.velocity.y = tempdy;
  //  }
  //}  
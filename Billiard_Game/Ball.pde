class Ball {
  //Variables
  PVector velocity, location, acceleration, direction;
  float x, y, radius, magnitude;
  int r, g, b;

  //Constructor(s)
  Ball(float x, float y, float _radius, int _r, int _g, int _b) {

    //Applying Vectors. 
    location = new PVector(x, y);
    velocity = new PVector();
    acceleration = new PVector(0, 0);
    direction = new PVector(1, 0);

    radius = _radius;
    magnitude = radius*.1;
    r = _r;
    g = _g;
    b = _b;
  }
  //Behaviour(s)
  void display() {
    stroke(.5);
    fill(r, g, b);
    ellipse(location.x, location.y, radius *1.5, radius *1.5);
  }

  void move() {
    //Adding Vectors.
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.set(0, 0);

    //Friction of the Balls to slowly stop.
    velocity.div(1.100);
  }
  
  //White ball controls:
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
  
  //Making sure that all balls stays inside the screen.
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

  void collisionChecking(Ball other) {

    //The distances between the billiardBalls components.
    PVector distanceVect = PVector.sub(other.location, location);

    //Calculates the magnitude that separates the billiardBalls.
    float distanceVectMag = distanceVect.mag();

    //Minimum distance before the touching of the billiardBalls.
    float minDistance = radius + other.radius;

    if (distanceVectMag < minDistance) {
      float distanceCorrection = (minDistance-distanceVectMag)/2.0;
      PVector d = distanceVect.copy();
      PVector correctionVector = d.normalize().mult(distanceCorrection);
      other.location.add(correctionVector);
      location.sub(correctionVector);

      //Calculating the angle of PVector distanceVect.
      float theta  = distanceVect.heading();
      
      //Making the sin and cosine.
      float sine = sin(theta);
      float cosine = cos(theta);

      //Holds the rotated billiardBalls' positions.      
      PVector[] bHold = {
        new PVector(), new PVector()
      };

       //
      bHold[1].x  = cosine * distanceVect.x + sine * distanceVect.y;
      bHold[1].y  = cosine * distanceVect.y - sine * distanceVect.x;

      //Making the rotation of temporary velocities of billiardBalls.
      PVector[] ballsTempv = {
        new PVector(), new PVector()
      };

      ballsTempv[0].x  = cosine * velocity.x + sine * velocity.y;
      ballsTempv[0].y  = cosine * velocity.y - sine * velocity.x;
      ballsTempv[1].x  = cosine * other.velocity.x + sine * other.velocity.y;
      ballsTempv[1].y  = cosine * other.velocity.y - sine * other.velocity.x;

      //Calculates the final velocity on the X-axis.
      PVector[] finalVelocity = {  
        new PVector(), new PVector()
      };

      //Final rotated velocity for billiardBalls[0]
      finalVelocity[0].x = ((magnitude - other.magnitude) * ballsTempv[0].x + 2 * other.magnitude * ballsTempv[1].x) / (magnitude + other.magnitude);
      finalVelocity[0].y = ballsTempv[0].y;

      //Final rotated velocity for billiardBalls[1]
      finalVelocity[1].x = ((other.magnitude - magnitude) * ballsTempv[1].x + 2 * magnitude * ballsTempv[0].x) / (magnitude + other.magnitude);
      finalVelocity[1].y = ballsTempv[1].y;

      //Making sure to avoid clusters of billiardBalls.
      bHold[0].x += finalVelocity[0].x;
      bHold[1].x += finalVelocity[1].x;

     //Reversing the trig to rotate the billiardBalls in the opposite direction
     //when they collide.
      PVector[] ballsFinal = { 
        new PVector(), new PVector()
      };

      ballsFinal[0].x = cosine * bHold[0].x - sine * bHold[0].y;
      ballsFinal[0].y = cosine * bHold[0].y + sine * bHold[0].x;
      ballsFinal[1].x = cosine * bHold[1].x - sine * bHold[1].y;
      ballsFinal[1].y = cosine * bHold[1].y + sine * bHold[1].x;

      //PVector location updates billiardBalls.
      other.location.x = location.x + ballsFinal[1].x;
      other.location.y = location.y + ballsFinal[1].y;
      
      //Adding the Location. 
      location.add(ballsFinal[0]);

      //Updating the velocities of the billiardBalls.
      velocity.x = cosine * finalVelocity[0].x - sine * finalVelocity[0].y;
      velocity.y = cosine * finalVelocity[0].y + sine * finalVelocity[0].x;
      other.velocity.x = cosine * finalVelocity[1].x - sine * finalVelocity[1].y;
      other.velocity.y = cosine * finalVelocity[1].y + sine * finalVelocity[1].x;
    }
  }
}
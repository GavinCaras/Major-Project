// Gavin Caras
// Major Project
// Billiard Game

//Globals
//Ball CueBall, ball1;
Ball[] balls;

void setup() {
  fullScreen(P3D);
  frameRate(60);
  smooth();

  balls = new Ball[15];
  for (int i=0; i<balls.length; i++) {
  }  
  //CueBall = new Ball(width/2, height/2, 10, -7, 50);
  //ball1 = new Ball(100, 100, 2, 3, 50);
}

void draw() {
  background(35, 121, 62); 
  fill(0); 
  noStroke(); 
  ellipseMode(CORNER); 
  ellipse(-55, -40, 140, 135);

  //CueBall.move();
  //ball1.move();

  //CueBall.collisionCheckWith(ball1);

  //CueBall.display();
  //ball1.display();

  for (int i=0; i<balls.length; i++) {
    balls[i].display();
    balls[i].move();
    balls[i].bounceTheBall();
    balls[i].collisionCheckWith(CueBall yellowBall);
  }
}
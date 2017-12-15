// Gavin Caras
// Major Project
// Billiard Game

//Globals
Ball ball1, ball2, ball3, ball4, ball5, ball6, ball7, ball8, ball9, ball10, ball11, ball12, ball13, ball14, ball15;

void setup() {
  fullScreen(P3D);
  frameRate(60);
  smooth();
  ball1 = new Ball(90, 100, 2, -7, 50, 255, 242, 0);
  ball2 = new Ball(50, 200, 10, 3, 50, 0, 0, 0);
  ball3 = new Ball(100, 100, 15, 10, 50, 255, 255, 255);
}


void draw() {
  background(35, 121, 62); 
  fill(0); 
  noStroke(); 
  ellipseMode(CORNER); 
  ellipse(-55, -40, 140, 135);

  ball1.move();
  ball2.move();
  ball3.move();

  ball1.collisionCheckWith(ball2, ball3);
  ball2.collisionCheckWith(ball1, ball3);
  ball3.collisionCheckWith(ball1, ball2);

  ball1.display();
  ball2.display();
  ball3.display();
}
// Gavin Caras
// Major Project
// Billiard Game

//globals
Ball ball1, ball2;

void setup() {
  fullScreen(P3D);
  frameRate(60);
  smooth();
  
  ball1 = new Ball(width/2, height/2, 10, -7, 50);
  ball2 = new Ball(100, 100, 2, 3, 50);
 
}


void draw() {
  background(35, 121, 62); 
  fill(0); 
  noStroke(); 
  ellipseMode(CORNER); 
  ellipse(-55, -40, 140, 135);
  
    CueBall.move();
    ball2.move();
    
    CueBall.collisionCheckWith(ball2);
    
    CueBall.display();
    ball2.display();
}
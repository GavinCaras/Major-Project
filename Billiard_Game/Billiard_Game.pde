// Gavin Caras
// Major Project
// Billiard Game

//globals
Ball ball1, ball2;

void setup() {
  fullScreen(P3D);
  smooth();
  
  ball1 = new Ball(width/2, height/2, 10, -7, 50);
  ball2 = new Ball(100, 100, 2, 3, 50);
 
}


void draw() {
  background(35, 121, 62);   
    ball1.move();
    ball2.move();
    
    ball1.collisionCheckWith(ball2);
    
    ball1.display();
    ball2.display();
}
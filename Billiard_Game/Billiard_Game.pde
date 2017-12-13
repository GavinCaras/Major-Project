// Gavin Caras
// Major Project
// Billiard Game

//globals
Ball[] balls;

void setup() {
  fullScreen();
  smooth();
  
  balls = new Ball[15];
  
  for (int i=0; i<balls.length; i++){
    ballX[i] += dxBall[i];
    ballY[i] += dyBall[i];
  }    
}


void draw() {
  background(35, 121, 62);   
    
    ball[i].display();
    
}
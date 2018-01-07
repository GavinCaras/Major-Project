// Gavin Caras
// Major Project
// Billiard Game

//Globals
Ball ball2, ball3, ball4, ball5, ball6, ball7, ball8, ball9, ball10, ball11, ball12, ball13, ball14, ball15, ball16;
Cue c;

void setup() {
  fullScreen();
  frameRate(60);
  smooth();

  //Cue/White ball
  //ball1 = new Ball(200, 350, 2, -7, 50, 255, 255, 255);
  c = new Cue(200, 350, 2, -7, 50, 255, 255, 255);
  
  //Black ball
  ball2 = new Ball(943, 420, 10, 3, 50, 0, 0, 0);
  //Yellow ball
  ball3 = new Ball(800, 350, 15, 10, 50, 255, 242, 0);
  //Maroon ball
  ball4 = new Ball(870, 390, 7, 6, 50, 128, 0, 0);
  //Peach ball
  ball5 = new Ball(870, 310, 7, 6, 50, 255, 218, 185); 
  //Green ball
  ball6 = new Ball(943, 342, 7, 6, 50, 50, 205, 50);
  //Purple ball
  ball7 = new Ball(935, 265, 7, 6, 50, 128, 0, 128);
  //Red ball
  ball8 = new Ball(1002, 220, 7, 6, 50, 255, 0, 0);
  //Blue ball
  ball9 = new Ball(1010, 300, 7, 6, 50, 0, 0, 225);
  //Orange
  ball10 = new Ball(1010, 380, 7, 6, 50, 255, 165, 0);
  //Light Brown
  ball11 = new Ball(1010, 460, 7, 6, 50, 165, 42, 42);
  //Pink
  ball12 = new Ball(1072, 175, 7, 6, 50, 255, 105, 180);
  //Light Blue
  ball13 = new Ball(1085, 490, 7, 6, 50, 0, 191, 255);
  //Olive Green
  ball14 = new Ball(1085, 410, 7, 6, 50, 128, 128, 0);
  //Brown
  ball15 = new Ball(1085, 330, 7, 6, 50, 139, 69, 19);
  //Indigo
  ball16 = new Ball(1080, 252, 7, 6, 50, 75, 0, 130);
  
  
}

void draw() {
  background(35, 121, 62); 
  // The billiard table's socket
  fill(0); 
  noStroke(); 
  ellipseMode(CORNER); 

  //top left
  ellipse(-55, -50, 140, 135);
  //top middle
  ellipse(650, -75, 140, 135);
  //top right
  ellipse(1280, -50, 140, 135);
  //bottom left
  ellipse(-55, 690, 140, 135);
  //bottom middle
  ellipse(650, 710, 140, 135);
  //bottom right
  ellipse(1280, 690, 140, 135);

  c.display();
  ball2.display();
  ball3.display();
  ball4.display();
  ball5.display();
  ball6.display();
  ball7.display();
  ball8.display();
  ball9.display();
  ball10.display();
  ball11.display();
  ball12.display();
  ball13.display();
  ball14.display();
  ball15.display();
  ball16.display();
}
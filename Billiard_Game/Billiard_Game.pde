// Gavin Caras
// Major Project
// Billiard Game

//Global Variables.
Ball ball1, ball2, ball3, ball4, ball5, ball6, ball7, ball8, ball9, ball10, ball11, ball12, ball13, ball14, ball15, ball16;
//Cue c;

void setup() {
  fullScreen();
  frameRate(60);
  smooth();

  //Cue/White ball
  //c = new Cue(50, 255, 255, 255);  
  ////Black ball
  //ball2 = new Ball(943, 420, 10, 3, 50, 0, 0, 0);
  ////Yellow ball
  //ball3 = new Ball(800, 350, 15, 10, 50, 255, 242, 0);
  ////Maroon ball
  //ball4 = new Ball(870, 390, 7, 6, 50, 128, 0, 0);
  ////Peach ball
  //ball5 = new Ball(870, 310, 7, 6, 50, 255, 218, 185); 
  ////Green ball
  //ball6 = new Ball(943, 342, 7, 6, 50, 50, 205, 50);
  ////Purple ball
  //ball7 = new Ball(935, 265, 7, 6, 50, 128, 0, 128);
  ////Red ball
  //ball8 = new Ball(1002, 220, 7, 6, 50, 255, 0, 0);
  ////Blue ball
  //ball9 = new Ball(1010, 300, 7, 6, 50, 0, 0, 225);
  ////Orange
  //ball10 = new Ball(1010, 380, 7, 6, 50, 255, 165, 0);
  ////Light Brown
  //ball11 = new Ball(1010, 460, 7, 6, 50, 165, 42, 42);
  ////Pink
  //ball12 = new Ball(1072, 175, 7, 6, 50, 255, 105, 180);
  ////Light Blue
  //ball13 = new Ball(1085, 490, 7, 6, 50, 0, 191, 255);
  ////Olive Green
  //ball14 = new Ball(1085, 410, 7, 6, 50, 128, 128, 0);
  ////Brown
  //ball15 = new Ball(1085, 330, 7, 6, 50, 139, 69, 19);
  ////Indigo
  //ball16 = new Ball(1080, 252, 7, 6, 50, 75, 0, 130);
  
  //Cue Ball
  ball1 = new Ball(130, 350, 50, 255, 255, 255);
  //Black Ball
  ball2 = new Ball(943, 420, 50, 0, 0, 0);
  //Yellow ball
  ball3 = new Ball(800, 350, 50, 255, 242, 0);
  //Maroon ball
  ball4 = new Ball(870, 390, 50, 128, 0, 0);
  //Peach ball
  ball5 = new Ball(870, 310, 50, 255, 218, 185); 
  //Green ball
  ball6 = new Ball(943, 342, 50, 50, 205, 50);
  //Purple ball
  ball7 = new Ball(935, 265, 50, 128, 0, 128);
  //Red ball
  ball8 = new Ball(1002, 220, 50, 255, 0, 0);
  //Blue ball
  ball9 = new Ball(1010, 300, 50, 0, 0, 225);
  //Orange
  ball10 = new Ball(1010, 380, 50, 255, 165, 0);
  //Light Brown
  ball11 = new Ball(1010, 460, 50, 165, 42, 42);
  //Pink
  ball12 = new Ball(1072, 175, 50, 255, 105, 180);
  //Light Blue
  ball13 = new Ball(1085, 490, 50, 0, 191, 255);
  //Olive Green
  ball14 = new Ball(1085, 410, 50, 128, 128, 0);
  //Brown
  ball15 = new Ball(1085, 330, 50, 139, 69, 19);
  //Indigo
  ball16 = new Ball(1080, 252, 50, 75, 0, 130);
  
}


void draw() {
  //The billiard board.
  background(35, 121, 62); 
  
  //The billiard table's socket.
  fill(0); 
  noStroke(); 
  ellipseMode(CORNER); 
  

  //top left
  ellipse(-55, -50, 140, 135);
  //top middle
  ellipse(620, -75, 140, 135);
  //top right
  ellipse(1280, -50, 140, 135);
  //bottom left
  ellipse(-60, 690, 140, 135);
  //bottom middle
  ellipse(620, 710, 140, 135);
  //bottom right
  ellipse(1280, 690, 140, 135);
  
  //c.display();
  ball1.display();
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
  
  //c.moveCue();
  ball1.moveBalls();
  ball2.moveBalls();
  ball3.moveBalls();
  ball4.moveBalls();
  ball5.moveBalls();
  ball6.moveBalls();
  ball7.moveBalls();
  ball8.moveBalls();
  ball9.moveBalls();
  ball10.moveBalls();
  ball11.moveBalls();
  ball12.moveBalls();
  ball13.moveBalls();
  ball14.moveBalls();
  ball15.moveBalls();
  ball16.moveBalls();
  
}



void keyPressed() {
  ball1.controlKeyPressed();
}
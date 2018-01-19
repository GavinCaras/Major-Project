/*
Gavin Caras                       Sources: 
Major Project                     https://processing.org/examples/circlecollision.html
Billiard Game                     PVector movement class demo
                                  ballOOPwithCollisionDetection
                                  
Controls:
q or Q for light poke
w or W for strong poke

*Should be in 1366 x 768 screen resolution*

Thing(s) still needs to be done:
-pool stick to target using mouseX & mouseY
-purple ball collision detection
-some balls overlapping
-pool sockets
*/

//Calling the Ball class.
Ball[] balls = {

  //Cue Ball--- #0
  new Ball(130, 350, 50, 255, 255, 255), 

  //Black Ball--- #1
  new Ball(943, 420, 50, 0, 0, 0), 

  //Yellow ball--- #2
  new Ball(800, 350, 50, 255, 242, 0), 

  //Maroon ball--- #3
  new Ball(870, 390, 50, 128, 0, 0), 

  //Peach ball--- #4
  new Ball(870, 310, 50, 255, 218, 185), 

  //Green ball--- #5
  new Ball(943, 342, 50, 50, 205, 50), 

  //Purple ball--- #6
  new Ball(935, 265, 50, 128, 0, 128), 

  //Red ball--- #7
  new Ball(1002, 220, 50, 255, 0, 0), 

  //Blue ball--- #8
  new Ball(1010, 300, 50, 0, 0, 225), 

  //Orange ball--- #9
  new Ball(1010, 380, 50, 255, 165, 0), 

  //Light Brown ball--- #10
  new Ball(1010, 460, 50, 165, 42, 42), 

  //Pink--- #11
  new Ball(1072, 175, 50, 255, 105, 180), 

  //Light Blue--- #12
  new Ball(1085, 490, 50, 0, 191, 255), 

  //Olive Green--- #13
  new Ball(1085, 410, 50, 128, 128, 0), 

  //Brown--- #14
  new Ball(1085, 330, 50, 139, 69, 19), 

  //Indigo--- #15
  new Ball(1080, 252, 50, 75, 0, 130), 
};


void setup() {
  fullScreen();
  frameRate(60);
  noCursor();
  smooth();
}

void draw() {
  //The billiard board.
  background(35, 121, 62); 

  //Calling the Balls class functions.
  for (Ball billiardBalls : balls) {
    billiardBalls.move();
    billiardBalls.display();
    billiardBalls.ballscreenConstraint();
  }


  //Calling the Ball class collisions:
  //Ball -------------------------------------- #0
  balls[0].collisionChecking(balls[1]);
  balls[0].collisionChecking(balls[2]);
  balls[0].collisionChecking(balls[3]);
  balls[0].collisionChecking(balls[4]);
  balls[0].collisionChecking(balls[5]);
  balls[0].collisionChecking(balls[6]);
  balls[0].collisionChecking(balls[7]);
  balls[0].collisionChecking(balls[8]);
  balls[0].collisionChecking(balls[9]);
  balls[0].collisionChecking(balls[10]);
  balls[0].collisionChecking(balls[11]);
  balls[0].collisionChecking(balls[12]);
  balls[0].collisionChecking(balls[13]);
  balls[0].collisionChecking(balls[14]);

  //Ball -------------------------------------- #1
  balls[1].collisionChecking(balls[0]);
  balls[1].collisionChecking(balls[2]);
  balls[1].collisionChecking(balls[3]);
  balls[1].collisionChecking(balls[4]);
  balls[1].collisionChecking(balls[5]);
  balls[1].collisionChecking(balls[6]);
  balls[1].collisionChecking(balls[7]);
  balls[1].collisionChecking(balls[8]);
  balls[1].collisionChecking(balls[9]);
  balls[1].collisionChecking(balls[10]);
  balls[1].collisionChecking(balls[11]);
  balls[1].collisionChecking(balls[12]);
  balls[1].collisionChecking(balls[13]);
  balls[1].collisionChecking(balls[14]);

  //Ball -------------------------------------- #2
  balls[2].collisionChecking(balls[0]);
  balls[2].collisionChecking(balls[1]);
  balls[2].collisionChecking(balls[3]);
  balls[2].collisionChecking(balls[4]);
  balls[2].collisionChecking(balls[5]);
  balls[2].collisionChecking(balls[6]);
  balls[2].collisionChecking(balls[7]);
  balls[2].collisionChecking(balls[8]);
  balls[2].collisionChecking(balls[9]);
  balls[2].collisionChecking(balls[10]);
  balls[2].collisionChecking(balls[11]);
  balls[2].collisionChecking(balls[12]);
  balls[2].collisionChecking(balls[13]);
  balls[2].collisionChecking(balls[14]);

  //Ball -------------------------------------- #3
  balls[3].collisionChecking(balls[0]);
  balls[3].collisionChecking(balls[1]);
  balls[3].collisionChecking(balls[2]);
  balls[3].collisionChecking(balls[4]);
  balls[3].collisionChecking(balls[5]);
  balls[3].collisionChecking(balls[6]);
  balls[3].collisionChecking(balls[7]);
  balls[3].collisionChecking(balls[8]);
  balls[3].collisionChecking(balls[9]);
  balls[3].collisionChecking(balls[10]);
  balls[3].collisionChecking(balls[11]);
  balls[3].collisionChecking(balls[12]);
  balls[3].collisionChecking(balls[13]);
  balls[3].collisionChecking(balls[14]);

  //Ball -------------------------------------- #4
  balls[4].collisionChecking(balls[0]);
  balls[4].collisionChecking(balls[1]);
  balls[4].collisionChecking(balls[2]);
  balls[4].collisionChecking(balls[3]);
  balls[4].collisionChecking(balls[5]);
  balls[4].collisionChecking(balls[6]);
  balls[4].collisionChecking(balls[7]);
  balls[4].collisionChecking(balls[8]);
  balls[4].collisionChecking(balls[9]);
  balls[4].collisionChecking(balls[10]);
  balls[4].collisionChecking(balls[11]);
  balls[4].collisionChecking(balls[12]);
  balls[4].collisionChecking(balls[13]);
  balls[4].collisionChecking(balls[14]);

  //Ball -------------------------------------- #5
  balls[5].collisionChecking(balls[0]);
  balls[5].collisionChecking(balls[1]);
  balls[5].collisionChecking(balls[2]);
  balls[5].collisionChecking(balls[3]);
  balls[5].collisionChecking(balls[4]);
  balls[5].collisionChecking(balls[6]);
  balls[5].collisionChecking(balls[7]);
  balls[5].collisionChecking(balls[8]);
  balls[5].collisionChecking(balls[9]);
  balls[5].collisionChecking(balls[10]);
  balls[5].collisionChecking(balls[11]);
  balls[5].collisionChecking(balls[12]);
  balls[5].collisionChecking(balls[13]);
  balls[5].collisionChecking(balls[14]);

  //Ball -------------------------------------- #6
  balls[6].collisionChecking(balls[0]);
  balls[6].collisionChecking(balls[1]);
  balls[6].collisionChecking(balls[2]);
  balls[6].collisionChecking(balls[3]);
  balls[6].collisionChecking(balls[4]);
  balls[6].collisionChecking(balls[5]);
  balls[6].collisionChecking(balls[7]);
  balls[6].collisionChecking(balls[8]);
  balls[6].collisionChecking(balls[9]);
  balls[6].collisionChecking(balls[10]);
  balls[6].collisionChecking(balls[11]);
  balls[6].collisionChecking(balls[12]);
  balls[6].collisionChecking(balls[13]);
  balls[6].collisionChecking(balls[14]);

  //Ball -------------------------------------- #7
  balls[7].collisionChecking(balls[0]);
  balls[7].collisionChecking(balls[1]);
  balls[7].collisionChecking(balls[2]);
  balls[7].collisionChecking(balls[3]);
  balls[7].collisionChecking(balls[4]);
  balls[7].collisionChecking(balls[5]);
  balls[7].collisionChecking(balls[6]);
  balls[7].collisionChecking(balls[8]);
  balls[7].collisionChecking(balls[9]);
  balls[7].collisionChecking(balls[10]);
  balls[7].collisionChecking(balls[11]);
  balls[7].collisionChecking(balls[12]);
  balls[7].collisionChecking(balls[13]);
  balls[7].collisionChecking(balls[14]);

  //Ball -------------------------------------- #8
  balls[8].collisionChecking(balls[0]);
  balls[8].collisionChecking(balls[1]);
  balls[8].collisionChecking(balls[2]);
  balls[8].collisionChecking(balls[3]);
  balls[8].collisionChecking(balls[4]);
  balls[8].collisionChecking(balls[5]);
  balls[8].collisionChecking(balls[6]);
  balls[8].collisionChecking(balls[7]);
  balls[8].collisionChecking(balls[9]);
  balls[8].collisionChecking(balls[10]);
  balls[8].collisionChecking(balls[11]);
  balls[8].collisionChecking(balls[12]);
  balls[8].collisionChecking(balls[13]);
  balls[8].collisionChecking(balls[14]);

  //Ball -------------------------------------- #9
  balls[9].collisionChecking(balls[0]);
  balls[9].collisionChecking(balls[1]);
  balls[9].collisionChecking(balls[2]);
  balls[9].collisionChecking(balls[3]);
  balls[9].collisionChecking(balls[4]);
  balls[9].collisionChecking(balls[5]);
  balls[9].collisionChecking(balls[6]);
  balls[9].collisionChecking(balls[7]);
  balls[9].collisionChecking(balls[8]);
  balls[9].collisionChecking(balls[10]);
  balls[9].collisionChecking(balls[11]);
  balls[9].collisionChecking(balls[12]);
  balls[9].collisionChecking(balls[13]);
  balls[9].collisionChecking(balls[14]);

  //Ball -------------------------------------- #10
  balls[10].collisionChecking(balls[0]);
  balls[10].collisionChecking(balls[1]);
  balls[10].collisionChecking(balls[2]);
  balls[10].collisionChecking(balls[3]);
  balls[10].collisionChecking(balls[4]);
  balls[10].collisionChecking(balls[5]);
  balls[10].collisionChecking(balls[6]);
  balls[10].collisionChecking(balls[7]);
  balls[10].collisionChecking(balls[8]);
  balls[10].collisionChecking(balls[9]);
  balls[10].collisionChecking(balls[11]);
  balls[10].collisionChecking(balls[12]);
  balls[10].collisionChecking(balls[13]);
  balls[10].collisionChecking(balls[14]);

  //Ball -------------------------------------- #11
  balls[11].collisionChecking(balls[0]);
  balls[11].collisionChecking(balls[1]);
  balls[11].collisionChecking(balls[2]);
  balls[11].collisionChecking(balls[3]);
  balls[11].collisionChecking(balls[4]);
  balls[11].collisionChecking(balls[5]);
  balls[11].collisionChecking(balls[6]);
  balls[11].collisionChecking(balls[7]);
  balls[11].collisionChecking(balls[8]);
  balls[11].collisionChecking(balls[9]);
  balls[11].collisionChecking(balls[10]);
  balls[11].collisionChecking(balls[12]);
  balls[11].collisionChecking(balls[13]);
  balls[11].collisionChecking(balls[14]);

  //Ball -------------------------------------- #12
  balls[12].collisionChecking(balls[0]);
  balls[12].collisionChecking(balls[1]);
  balls[12].collisionChecking(balls[2]);
  balls[12].collisionChecking(balls[3]);
  balls[12].collisionChecking(balls[4]);
  balls[12].collisionChecking(balls[5]);
  balls[12].collisionChecking(balls[6]);
  balls[12].collisionChecking(balls[7]);
  balls[12].collisionChecking(balls[8]);
  balls[12].collisionChecking(balls[9]);
  balls[12].collisionChecking(balls[10]);
  balls[12].collisionChecking(balls[11]);
  balls[12].collisionChecking(balls[13]);
  balls[12].collisionChecking(balls[14]);

 //Ball -------------------------------------- #13
  balls[13].collisionChecking(balls[0]);
  balls[13].collisionChecking(balls[1]);
  balls[13].collisionChecking(balls[2]);
  balls[13].collisionChecking(balls[3]);
  balls[13].collisionChecking(balls[4]);
  balls[13].collisionChecking(balls[5]);
  balls[13].collisionChecking(balls[6]);
  balls[13].collisionChecking(balls[7]);
  balls[13].collisionChecking(balls[8]);
  balls[13].collisionChecking(balls[9]);
  balls[13].collisionChecking(balls[10]);
  balls[13].collisionChecking(balls[11]);
  balls[13].collisionChecking(balls[12]);
  balls[13].collisionChecking(balls[14]);

  //Ball -------------------------------------- #14
  balls[14].collisionChecking(balls[0]);
  balls[14].collisionChecking(balls[1]);
  balls[14].collisionChecking(balls[2]);
  balls[14].collisionChecking(balls[3]);
  balls[14].collisionChecking(balls[4]);
  balls[14].collisionChecking(balls[5]);
  balls[14].collisionChecking(balls[6]);
  balls[14].collisionChecking(balls[7]);
  balls[14].collisionChecking(balls[8]);
  balls[14].collisionChecking(balls[9]);
  balls[14].collisionChecking(balls[10]);
  balls[14].collisionChecking(balls[11]);
  balls[14].collisionChecking(balls[12]);
  balls[14].collisionChecking(balls[13]);

  //The billiard table's socket.
  fill(0); 
  noStroke(); 
  ellipseMode(CORNER); 

  //top left.
  ellipse(-55, -50, 140, 135);
  //top middle.
  ellipse(620, -75, 140, 135);
  //top right.
  ellipse(1280, -50, 140, 135);
  //bottom left.
  ellipse(-60, 690, 140, 135);
  //bottom middle
  ellipse(620, 710, 140, 135);
  //bottom right.
  ellipse(1280, 690, 140, 135);
}

void keyPressed() {
  //White ball key interaction.
  balls[0].controlKeyPressed();
}
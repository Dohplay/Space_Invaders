class Enemy {
  //Global Variables
  float xpos;
  float ypos;
  float xspeed;
  boolean isRight = true;
  boolean timerStart = true;
  boolean hit = false;
  boolean increment = false;
  boolean death = false;
  int milliseconds;
  int time = 0;
  int seconds = 0;


  //Declaring parameters in Object
  Enemy(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
  }

  //Function - Importing the alien image
  void drawAlien() {
    if (hit == false) {
        rect(xpos, ypos, 32, 32);
        PImage invader = loadImage("SpaceInvader.jpg");
        image (invader, xpos, ypos);
    }
  }

  void move() {
    if (death == false) {
      if (timerStart == true) {
        milliseconds = millis();
        time = milliseconds/1000;
        if (time % 1 == 0) {
          increment = true;
        }
        if (increment == true) {
          seconds++;
          increment = false;
        }
        if (seconds == 75) {

          if (isRight == true) {
            xpos += 25;
            seconds = 0;
            if (xpos >= width) {
              ypos += 25;
              isRight = false;
              seconds = 0;
            }
          }
          if (isRight == false) {
            xpos -= 25;
            seconds = 0;
          }
          if (xpos <= 0) {
            ypos += 25;
            isRight = true;
            seconds = 0;
          }
          if (ypos == height) {
            timerStart = false;
            fill(0);
            textSize(32);
            text ("You Lose!", width/2, height/2);
            noLoop();
          }
        }
      }
    }
  }
  void hitDetection() {
    if (laser.tempX >= xpos && laser.tempX <= xpos+32 && laser.ypos >= ypos && laser.ypos <= ypos+32) {
      hit = true;
      death = true;
    }
  }
}


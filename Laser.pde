class Projectile {
  //Global Variables
  float ypos;
  float xpos;
  float yspeed;
  float tempX;
  float laser;
  boolean shot;
  boolean start = false;
  boolean firing = false;

  //Setting Parameters in Object
  Projectile(float tempXpos, float tempYpos, float tempYspeed) { 
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempYspeed;
  }

  //Function - Draws the laser
  void laserDisplay() {
    //If SPACE is pressed, boolean shot = true
    if (key == ' ') {
      //Tracks the original Position of the Projectile
      tempX = spaceShip.xpos;
      shot = true;
      firing = true;
      alien[j].hit = false;
    }
    //If the shot is true, the object will be drawn
    if (start == false) {
      if (shot == true) {
        if (alien[j].hit == false) {
          rect (tempX, ypos, 5, 10);
          if (ypos == 0) {
            start = false;
          }
        }
      }
    }
  }
  //Function - Calculates the movement of the laser
  void move() {
    //Restarts the laser if it reaches boundaries
    if (ypos == 0) {
      shot = false; 
      ypos = 450;
      yspeed = 0;
    } 
    //Sets the movement of the Projectile if fired
    if (shot == true) {
      yspeed = 2.5;
      ypos -= yspeed;
    }
  }
}


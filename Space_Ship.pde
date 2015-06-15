class Ship {
  float xpos;
  float xspeed;

  //Setting Parameters in Object
  Ship(float tempXpos, float tempXspeed) { 
    xpos = tempXpos;
    xspeed = tempXspeed;
  }

  //Drawing of Spaceship
  void display() {
    //Drawing Ship - Will Import Image
    rect(xpos, 450, 10, 10);
  }

  //Movement of SpaceShip
  //Shooting & Moving spaceship
  void functions() {
    //Detects if keys pressed are Non-ASCII
    if ( key == CODED) {
      //Detects if a key has been pressed
      if (keyPressed == true) {
        //Detects if the key is LEFT then move ship LEFT
        if (keyCode == LEFT) {
          xpos -= xspeed;
        }
        //Detects if the key is LEFT and the spaceShip shoots
        //If true, move the ship LEFT & shoot a laser
        if (key == ' ' && keyCode == LEFT) {
          xpos -= 1;
          laser.ypos -= laser.yspeed;
        } 
        //Detects if the key is RIGHT then move ship RIGHT
        if (keyCode == RIGHT) {
          xpos += xspeed;
        }
        //Detects if the key is RIGHT and the spaceShip shoots
        //If true, move the ship RIGHT & shoot a laser
        if (key == ' ' && keyCode == RIGHT) {
          xpos += xspeed;
          laser.ypos -= laser.yspeed;
        }
      }
    }
    //If the Player reaches the borders of the applet
    if (xpos >= width-10){
     xpos = width-10; 
    }
    else if(xpos <= 0){
     xpos = 0; 
    }
  }
}

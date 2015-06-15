//Declaring Object - Spaceship (Player)
Ship spaceShip;
Projectile laser;
Enemy[] alien = new Enemy[31];
int j = 0;
int i = 0;
  boolean drawRight = true;

void setup() {
    //Set Screen Size
    size(400, 500); 
    //Creating New Object - Spaceship
    spaceShip = new Ship (width/2, 1);
    //Creating New Object - Lasers
    laser = new Projectile (spaceShip.xpos, 450, 1);
    //Creating New Object - Aliens
    for (j = 0; j <= 30; j++) {
      alien[j] = new Enemy (width/2, height/2);
    }
    j = 0;
    
    
    
    
    
    
    
    
      for (i = 0; i <= 30; i++) {
    if (drawRight == true) {
      if (alien[j].xpos < width) {
        alien[j].xpos += 35;
      }
      if (alien[j].xpos >= width) {
        alien[j].ypos += 35;
        drawRight = false;
      }
    }
    if (drawRight == false) {
      if (alien[j].xpos > 0) {
        alien[j].xpos -= 35;
      }
      if (alien[j].ypos <= 0) {
        alien[j].ypos += 35;
        drawRight = true;
      }
    }
  }

    
    
    
    
    
    
    
    
    
  }

  void draw() {
    //Sets Background to White
    background(255);
    //Draws the spaceShip
    spaceShip.display();
    //Performs the functions
    spaceShip.functions();
    //Draws the Aliens
    alien[j].drawAlien();
    alien[j].move();
    //Draws the lasers as they are fired
    laser.laserDisplay();
    //Calculates movement of the laser
    laser.move();
    alien[j].hitDetection();
  }


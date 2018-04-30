//Initializing vectors
PVector location;
PVector velocity;

class ball {
  //initializing ball's variables
  float grav = 0.5;
  float fric = 0.01;
  int r = 20;

  ball() {
    location = new PVector(width/2,height/2,0);
    velocity = new PVector(2.50,5.00,0);
  }

  void bounce() { 
    if ((location.x > width-r)||(location.x < r)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y >= height-r)||(location.y < r)) {
      velocity.y = velocity.y * -1;
    } 
    
    //Vertical Friction
    if (location.y > height-r) {
      location.y = height-r;
      if (velocity.y > 0) {
        velocity.y = velocity.y - fric;
      } else if (velocity.y < 0) {
        velocity.y = velocity.y + fric;
      }
    } else if (location.y < r) {
      location.y = 0;
    }
    
    if (location.y == height-r) { 
      if (velocity.x > 0) {
        velocity.x = velocity.x - fric;
      } else if (velocity.x < 0) {
        velocity.x = velocity.x + fric;
      }
    }
    
    velocity.y = velocity.y + grav;
    location.x = location.x + velocity.x;
    location.y = location.y + velocity.y;
  }
  void display() {
    stroke(0);
    ellipse(location.x,location.y,r,r);
  }
}

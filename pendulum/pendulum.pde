PVector origin;
PVector bob;
float len;

void setup() {
  size(640,360);
  
  //pendulum properties
  len = 180;
  origin = new PVector(width/2,0);
  bob = new PVector(width/2,len);
}

void draw() {
  background(255);
  line(origin.x,origin.y,bob.x,bob.y);
}

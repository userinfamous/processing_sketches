PVector location;
PVector velocity;
int r = 16;

void setup() {
  size(640,360,P3D);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
}

void draw() {
  background(255);
  //setting aside a stack for rectangle construction
  pushMatrix();
  translate(width/2,height/2);
  rectMode(CENTER);
  fill(155);
  rect(0,0,width-r,height-r);
  popMatrix();
  
  location.add(velocity);
  if ((location.x > width-r) || (location.x < r)) {
    velocity.x *= -1;
  }
  if ((location.y > height-r) || (location.y < r)) {
    velocity.y *= -1;
  }
  
  //add and subtract has no difference whatsoever in this context
  //meaning the location of the mouse minus the center is the same
  noStroke();
  fill(255);
  ellipse(location.x,location.y,16,16);
}

PVector location;
PVector velocity;
PVector rotation;
PVector rotational_speed;
int r = 16;
float angle = random(0.001,0.01);

void setup() {
  size(640,360,P3D);
  location = new PVector(r,r,0);
  velocity = new PVector(2.5,5,0);
  rotation = new PVector(0,0,0);
  rotational_speed = new PVector(angle,angle,angle);
}

void draw() {
  background(0);
  translate(width/2,height/2,-100);
  rotateX(rotation.x);
  rotateY(rotation.y);
  rotateZ(rotation.z);
  
  lights();
  //spotlights?
  spotLight(255,255,0,width/6,-height/2,-width/6,-1,-1,-1,PI/2,2);
  spotLight(255,0,0,width/6,-height/6,width/6,1,1,-1,PI/2,2);
  
  
  //setting aside a stack for rectangle construction
  pushMatrix();  
  stroke(255);
  noFill();
  //position of the canvas
  translate(0,0,0);
  box(width/2,width/2,width/2);
  popMatrix();
  
  //drawing the sphere

  noStroke();
  fill(255);
  pushMatrix();
  translate(location.x,location.y,location.z);
  noStroke();
  rectMode(CENTER);
  sphere(r);
  popMatrix();
  
  
  //add and subtract has no difference whatsoever in this context
  //meaning the location of the mouse minus the center is the same
  location.add(velocity);
  
  if ((location.x > width/2) || (location.x < width/2)) {
    velocity.x *= -1;
  }
  if ((location.y > height/2) || (location.y < height/2)) {
    velocity.y *= -1;
  }
  if ((location.z > width/2) || (location.z > width/2)) {
    velocity.z *= -1;
  }
  rotation.add(rotational_speed);
}

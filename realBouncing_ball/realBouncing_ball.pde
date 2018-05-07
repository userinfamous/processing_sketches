ball b;

void setup() {
  size(640, 360);
  b = new ball();
}

void draw() {
  background(255);
  
  b.bounce();
  b.display();
  
  //Saving transformation and popping it later
  pushMatrix();
  translate(width/2,height/2);
  rectMode(CENTER);
  noFill();
  rect(0,0,width-20, height-20);
  popMatrix();
  
}

//coding the object
PVector location;


class Star {
  //radius
  float x;
  float y;
  float z;
  float previous_z;
  Star() {
    x = random(-width/2,width/2);
    y = random(-height/2, height/2);
    z = random(width);
    previous_z = z;
    
  }
  void update() {
    z -= speed;
    if (z < 1) {
      z = width;
      x = random(-width/2,width/2);
      y = random(-height/2, height/2);
      previous_z = z;
    }
  }
  void show() {
    fill(255);
    noStroke();
    
    float sx = map(x/z,0,1,0,width);
    float sy = map(y/z,0,1,0,height);
    
    //float r = map(z, 0, width, 16, 0);
    //ellipse(sx,sy,r,r);
    
    float previous_x = map(x/previous_z,0,1,0,width);
    float previous_y = map(y/previous_z,0,1,0,height);
    
    previous_z = z;
    stroke(random(255),random(250),210);
    line(previous_x,previous_y,sx,sy);

  }
}

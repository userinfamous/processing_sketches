class Triangle {
  float x1,x2,x3;
  float y1,y2,y3;
  float z;
  float angle = 0;
  float color1,color2,color3;
  Triangle() {
    x1 = 0;
    y1 = -75;
    x2 = -75;
    y2 = 75;
    x3 = 75;
    y3 = 75;
    z = width;
  }
  
  void show() {
    noFill();
    stroke(random(255),random(250),210);
    
    float sx1 = map(x1/z,0,1,0,width);
    float sx2 = map(x2/z,0,1,0,width);
    float sx3 = map(x3/z,0,1,0,width);
    float sy1 = map(y1/z,0,1,0,height);
    float sy2 = map(y2/z,0,1,0,height);
    float sy3 = map(y3/z,0,1,0,height);
    
    triangle(sx1,sy1,sx2,sy2,sx3,sy3);
  }
  
  void update() {
    rectMode(CENTER);
    rotate(angle);
    z -= speed;
    if (z < 1) {
      z = width;
    }
    angle -= triangle_speed;
  }
}

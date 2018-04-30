//Create object
Walker w;

class Walker {
  int x,y;
  float stepx;
  float stepy;
  Walker() {
    x = width/2;
    y = height/2;
  }
  void display() {
    //int color1 = int(random(255));
    stroke(0);
    //fill(0);
    point(x,y);
  }
  void step() {
    //key = ENTER; //<>//
    stepx = (int)randomGaussian();
    stepy = (int)randomGaussian();

    x += stepx;
    y += stepy;
  }
}
void setup() {
  size(500,400);
  w = new Walker();
  background(255);
}

void draw() {
    w.step();
    w.display();
}

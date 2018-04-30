//Create object
Walker w;

class Walker {
  int x,y;
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
    float prob = random(0,1);
    if (prob < 0.5) {
      if (x > mouseX) {
        x--;
      } else if (x < mouseX) {
        x++;
      }
      if (y > mouseY) {
        y--;
      } else if (y < mouseY) {
        y++;
      }
    } else {
      float stepx = round(random(-1,1));
      float stepy = round(random(-1,1));
      x += stepx;
      y += stepy;
    }
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

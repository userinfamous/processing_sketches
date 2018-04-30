Walker w;


class Walker {
  //declaring a variable inside an class is limited to this class.
  //Is this the right choice? I don't know
  int x,y;
  //This is the connector of the object, it sets the cookie cutter on the table
  Walker() {
    x = 0;
    y = height;
  }
  //This is a fuction that I've declared. It is not built-in
  void display() {
    //White background
    stroke(255,255,255);
    //This lets the point to be control by the x and y variable
    point(x,y);
  }
  //This is another function I made
  void step() {
    //declaring data type as float but what happens if int?
    float stepx = 1;
    float stepy = monteCarlo();
    x += stepx;
    y += stepy;
  }
}

void setup() {
  size(700,700);
  background(0);
  w = new Walker();
}

void draw() {
  w.display();
  w.step();
}

float monteCarlo() {
  while(true) {
    //if the first value is randomly picked between -1 and 0
    float r1 = (float)random(-1,0);
    float r2 = (float)random(-2,-1);
    //if the second value picked is less than the first value, return 1
    if (r2 < r1) {
      return r1;
    }
  }
}

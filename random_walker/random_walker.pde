//Global variable under class name and attribute
Walker w;
//Sets everything up initially
void setup() {
  size(640,360);
  w = new Walker();
  background(255);
}
/*Calls the object's function one by one, step is the movement and display is putting things on
the screen part of it when as the draw function does so every frame. Take a step and draw a dot*/
void draw() {
  w.step();
  w.display();
}
class Walker {
  //initialize variables
  int x;
  int y;
  
  /*This is what you call a constructor, which sets up the object for the first time
 Think of this as the first time you cut the cookies and put time all the same way*/
  Walker() {
    x = width/2;
    y = height/2;
  }
  //This function looks like it gives the line a color and draws it on the window
  void display() {
    stroke(0);
    point(x,y);
  }
  void step() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    x += stepx;
    y += stepy;
  }
}

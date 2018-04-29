/*Initialize variables*/
int i;

void setup() {
  size(500, 400);
}

void draw() {
  if (mousePressed) {
    i+= 10;
  }
  stroke(255);
  fill(i,0,0);
  rect(mouseX, mouseY, 40, 20);
}

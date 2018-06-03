Star[] stars = new Star[400];
Triangle[] triangles = new Triangle[10];

float speed;
float triangle_speed;

void setup() {
  size(displayWidth,displayHeight);
  surface.setResizable(true);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int j = 0; j < triangles.length; j++) {
    triangles[j] = new Triangle();
  }
}

void draw() {
  speed = map(mouseX,0,width,0,20);
  triangle_speed = map(mouseX,0,width,0,0.0001);
  translate(width/2,height/2);
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  for (int j = 0; j < triangles.length; j++) {
    triangles[j].update();
    triangles[j].show();
  }
}

void keyPressed() {
  if (key == 'c'){
    cursor(ARROW);
  } else if (key == 'v'){
    cursor(CROSS);
  } 
}

void setup(){
  size(640,360);

}


void draw(){
  translate(width/2,height/2);
  background(0);
  stroke(255);
  
  PVector mouse = new PVector(mouseX,mouseY);
  //note: Vectors don't take orders from the translate function. It usually reference point to the
  //screen itself. (0,0)
  PVector center = new PVector(width/2,height/2);
  
  //drawing from the center to mouse
  //for some reason I can't replicate the sub() vector like before.
  //The mouse vector from where? well it is from the orgin()
  center.sub(mouse);
  line(0,0,center.x,center.y);

}

void setup(){
  size(640,360);
}


void draw(){
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

  //testing out the map function 
  float magnitude = mouse.mag();
  
  //translate back to orginal position to draw the rectangle
  fill(255); //red
  rect(0,0,magnitude,20); //demonstrating how magnitude and how map works
  
  stroke(150,150,0);
  line(0,0,center.x,center.y); //magenta
  
  stroke(0,150,150);
  line(0,0,mouse.x,mouse.y); //cyan
  
  stroke(150,0,150);
  line(center.x,center.y,mouse.x,mouse.y); //yellow
  
  pushMatrix();
  translate(width/2,height/2);
  stroke(255,0,0); //red
  line(0,0,mouse.x,mouse.y);
  
  stroke(0,255,0);
  line(0,0,center.x,center.y); //blue
  
  stroke(0,0,255);
  line(center.x,center.y,mouse.x,mouse.y); //green
  popMatrix();
}

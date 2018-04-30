import java.util.Random;
Random generator;
void setup() {
  size(500,500);
  generator = new Random();
}

void draw() {
  //normal distribution between -1 and 1. Default mean is 0
  float num = (float)generator.nextGaussian();
  //size or width of distribution
  float sd = 150;
  //mean or the center at which the distribution is at
  float mean = width/2;
  //adjusted normal distribution
  float val = (sd * num) + mean;
  noStroke();
  fill(50,50);
  //Gaussian distribution is tied to the x position of the circle
  ellipse(val,height/2,26,26);
}

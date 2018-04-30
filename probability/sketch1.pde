/*Array to keep track of how often random numbers cropped up*/
int[] randomCounts;

void setup() {
  //size of window
  size(640,300);
 
  /*initialize 20 rectangles, and based the probability based around 1/20 
  which is around 5% */
  randomCounts = new int[20];
}

void draw() {
  //This draws white background every frame
  background(255);
  
  //Generate random numbers between 0 and 20; round off. 
  int index = int(random(randomCounts.length));
  
  //5% chance each box gets selected, if so increase them by one.
  randomCounts[index]++;
  
  //when nothing is stated, this is gray scale. 0 = black
  stroke(0);
  
  //when nothing is stated, this is gray scale 175 = light black
  fill(175);
  
  //quotient of width of screen proportional to the random array's index
  int w = width/randomCounts.length;
  
  //Starting from 0 to the array's index, increment x until that number
  for(int x=0; x<randomCounts.length;x++) {
    /*Draw x at roughly center of the block's location and height at 
    the location of below minus the values height of each rectangle 
    chronologically. The rest is the size, which is according to the number of
    arrays divide by width. This way the width is reponsive. As for the height
    has already been randomly cropped out in the draw.
    */
    rect(x*w,height-randomCounts[x],w-1,randomCounts[x]);
  }
}

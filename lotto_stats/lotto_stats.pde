//src = https://www.lottery.co.uk/lotto/statistics
int[] array = new int[15];
void setup() {
  size(500,400);
}
void draw() {
  background(255);
  array[0] = 234;
  array[1] = 241;
  array[2] = 249;
  array[3] = 248;
  array[4] = 246; 
  array[5] = 256; 
  array[6] = 250;
  array[7] = 239;
  array[8] = 267;
  array[9] = 258;
  array[10] = 269;
  array[11] = 252;
  array[12] = 215;
  array[13] = 245;
  array[14] = 238;
  //properties of rectangles
  stroke(0);
  fill(175);
  array = sort(array);
  //width of each array is predefined
  int w = width/array.length;
  for (int i=0;i<array.length;i++) {
    rect(i*w,height-array[i],w-1,array[i]);
  }
}

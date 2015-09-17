int x; //global variables so they can be used throughout the program
int y;

void setup() {
  size(380, 380);
}

void draw() {
  gradientBckgd(); //generates the gradient background
  bowtie(); //adds the patterned
}

void bowtie() {
  boolean greenColor = true;
  for (x = 0; x < width; x+=40) { //is the horizontal rows of shapes
    for (y = 0; y < height; y+=40) { //is the vertical rows of shape, does all the y first, then loops with x
      if (greenColor) 
      {
        fill(56, 210, 131);
        greenColor = false; //sets boolean to false so the other statement can occur during next loop
      } else
      {
        fill(241, 188, 255);
        greenColor = true;
      }
      strokeWeight(2);
      beginShape(); //vertices of the bowtie
      vertex(x, y + 15);
      vertex(x, y);
      vertex(x + 25, y + 15);
      vertex(x + 25, y);
      endShape(CLOSE);
      fill(255); //makes center white
      ellipse(x + 12.5, y + 7.5, 5, 5);
    }
  }
}
void gradientBckgd()
{
  for (int i = x; i < x + width; i++) {
    float remap = map(i, x, x + width, 0, 1.5); //converts value i, currently in the range of x, and x + width, to target range between 0 and 1.5
    //made target upper bound range 1.5 to have more of the darker blue in the gradient
    color firstColor = color(191, 255, 236); //green color
    color secondColor = color(101, 108, 210); //blue color
    color gradient = lerpColor(firstColor, secondColor, remap); //remap is between 0 and 1.5 so the colors will appear properly during lerpColor
    stroke(gradient);
    line(i, x, i, x + width); //all the individual lines put together form the background gradient
  }
}
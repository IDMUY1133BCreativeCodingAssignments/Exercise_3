//trying to make illusion that the diamonds are moving down or up everytime you click
//global variables that can be applied throughout program
int x;
int y;
color c1;
color c2;
//int opacity = 200; was trying to make the triangles appear more transparent further down the piece
boolean patternOne = true; //used later on to change colors of diamonds
void setup() 
{
  size(230, 230);
  background(255);
}
void draw() 
{
  background(255);
  for ( x = 0; x < width; x+= 20) 
  {
    //for ( y = 0; y < height && opacity > 0; y+= 10, opacity-= 10) 
    for (y = 0; y < height; y+= 10)
    {
      if (patternOne)
      {
        if ((y % 10 == 0) && (y % 20 == 0)) //consecutive rows are alternating colors
        {
          fill(255, 217, 110); //yellow
          //fill(255, 217, 110, opacity); //yellow color
        } else
        {
          fill(232, 125, 214); //purple
          //fill(232, 125, 214, opacity); //purple color
        }
        beginShape(); //is the diamond shape
        vertex(x, y);
        vertex(x + 5, y - 10);
        vertex(x + 10, y);
        vertex(x + 5, y + 10);
        endShape(CLOSE); //the diamond shape has a stroke all around
      } else
      {
        if ((y % 10 == 0) && (y % 20 == 0)) //consecutive rows are alternating colors
        {
          fill(232, 125, 214); //yellow
          //fill(255, 217, 110, opacity); //yellow color
        } else
        {
          fill(255, 217, 110); //purple
          //fill(232, 125, 214, opacity); //purple color
        }
        beginShape();
        vertex(x, y);
        vertex(x + 5, y - 10);
        vertex(x + 10, y);
        vertex(x + 5, y + 10);
        endShape(CLOSE);
      }
    }
  }
}

void mousePressed()
{
  if (patternOne)
  {
    patternOne  = false; //changes to false so the colors in the diamonds will switch during next mouse press
  } else
  {
    patternOne = true;
  }
}
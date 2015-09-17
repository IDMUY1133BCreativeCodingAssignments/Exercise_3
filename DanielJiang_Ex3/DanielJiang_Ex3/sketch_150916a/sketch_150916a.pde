int option=1;
void setup() { 
  size(400, 400);
  smooth();
  noFill();
}

void draw() {
  background(100);
  if (option== 1) {
    for (int x=0; x<=width; x+=40) {
      for (int y=0; y<=height; y+=40) {
        line(x-10, y-10, x+10, y+10);
        line(x+10, y-10, x-10, y+10);
      }
    }
  } 
if (option== 2) {
    for (int x=40; x<=width-40; x+=30) {
      for (int y=40; y<=height-40; y+=30) {
        rect(x, y, 30, 30);
      }
    }
  }
  else if (option==3){
   for (int x = 50; x <= width-50; x += 20) {
      for (int y = 50; y <= height-50; y+=20) {
        ellipse(x,y,40,20);
      }
    }
  }
}

void mousePressed() {
  option++;
  if (option>3) option=1;
}
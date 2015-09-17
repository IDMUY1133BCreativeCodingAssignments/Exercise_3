int x = 0;
int y = 0;
color b1, b2;
int click = 1;
int w = 0;
int h = 400;

void setup(){
  
  size(400, 400);

  
}

void draw(){
  
  bkgnd();
  /*b1 = color(75, 200, 127);
  b2 = color(200, 75, 127);
  
  for(int i = y; i < y + h; i++){
    float remap = map(i, y, y + h, 0, 1);
    color c = lerpColor(b1, b2, remap);
    stroke(c);
    line(i, y, i, y + h);
  }*/
    if(click == 1){
    for (x = 0; x < 500; x += 45){
      for (y = 0; y < 500; y += 45){
        fill(229, 123, 178);
          dots();
      }
    }
    }
}

void dots(){
  
  stroke(255);
  strokeWeight(20);
  noFill();
  ellipse(x, y, 50, 50);
  
}

void bkgnd(){
  
  //color gradient from in class example
  
    b1 = color(75, 200, 127);
  b2 = color(200, 75, 127);
  
  for(int i = w; i < w + h; i++){
    float remap = map(i, w, w + h, 0, 1);
    color c = lerpColor(b1, b2, remap);
    stroke(c);
    line(i, w, i, w + h);
  }
}

void mousePressed(){
  
  click++
  
  if (click > 3){
    click = 1;
  }
  
}
  
  
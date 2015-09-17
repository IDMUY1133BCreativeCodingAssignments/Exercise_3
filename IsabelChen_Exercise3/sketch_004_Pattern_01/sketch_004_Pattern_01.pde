int x = 15;
int y = 15;
int click = 1;

void setup(){
  
  size(400, 400);
  smooth();
  
}

void draw(){
  
  background(255);
 
  if(click == 1){
    for (x = 10; x < 400; x += 45){
      for (y = 10; y < 400; y += 45){
        fill(229, 123, 178);
          dots();
      }
    }

    
  }
  
  if(click == 2){
    for (x = 10; x < 400; x+= 30){
      for (y = 10; y < 400; y += 45){
        fill(129, 223, 278);
        dots();
      }
    }
  }
  
  if(click == 3){
    for (x = 10; x < 400; x += 45){
      for (y = 10; y < 400; y += 30){
        fill(79, 123, 228);
        dots();
      }
    }
  }
  
}

void dots(){
  

  stroke(0);
  strokeWeight(2);
  
  ellipse(x, y, 15, 15);
  
}

void mousePressed(){
  
  
  
  click++;
  
  if (click > 3) {
    click = 1;
  }
  
}
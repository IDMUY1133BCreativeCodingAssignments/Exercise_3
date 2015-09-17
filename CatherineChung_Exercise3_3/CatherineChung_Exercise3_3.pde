


void setup(){
  size(400,400); 
  noFill();
}

void draw(){
  for(int x=40; x<height-50; x+=20){
      for (int y=40; y <width -50; y+=20){
        //rather than creating a shape, using lines to do something weird       
        stroke(23,124,29);
        beginShape(); 
        vertex(x-5,y-5); 
        vertex(x+15,y+15);
        vertex(x-20,x-25);
        vertex(x+10,x-10); 
        vertex(x-15,x-30);
        endShape();
       }
    }
}
int x=15;

void setup(){
  size(400, 400);
  smooth();
  noFill();
  frameRate(30);
  
  
}//for setup 


void draw(){
  for(int i=10; i<= width - 10; i+= 15){
    for(int x=15; x<=height - 10; x+=30);{
      line(mouseX - 10, i+5, mouseY+7, x+2);
      if(mousePressed);
      
      
      
      
    }//for loop x
  }//for loop i
}//for void draw 
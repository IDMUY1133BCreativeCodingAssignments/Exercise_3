//int h = 100; 
//int u = 200; 


void setup(){
  size(500,400); 
  noFill(); 



}

void draw(){  
  for (int x=10; x <= width-20; x+=10){
    for(int y =30; y <= height-20; y+=35){
                line(x+10, y-15,x-15,y+5); //line pattern
                line(x-10, y-15,x+15,y+5);   
    }
  }
  if(mousePressed){ //changes background and line color
        background(23,45,235);
        stroke(212,22,124);
  }
}
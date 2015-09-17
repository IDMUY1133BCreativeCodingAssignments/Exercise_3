//simple zigzag pattern 

void setup(){
  size(400,300); 
  background(0); //black background
  fill(255); //color
}

void draw(){
    for(int x=20; x< width; x+=40){
      for (int y=20; y <=height; y+=40){
        //zigzag shape 
        stroke(234,132,132); //color
        beginShape(); 
        vertex(x-10,y-10); //first point of zigzag
        vertex(x+15,y+10);
        vertex(x-10,y);
        vertex(x+20,y+20); //endpoint of zigzag
        endShape();
      
       }
    }
}

 
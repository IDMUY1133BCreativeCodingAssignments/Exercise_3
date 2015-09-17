int click = 1;

void setup(){
  size(500,400);
  noFill();
  smooth();  
}


void draw(){
background(81,253,255);

 if (click == 1){
//Option 1: overlapping ellipses
 for( int x=60; x<= width-60; x+= 25){
    for( int y=60; y<= height-60; y+= 25){
      ellipse(x,y,width/10,height/10);
    } // end of y
  }//end of x

 }// end of if
 
 else if (click == 2){
//Option 2:bigger circles
for( int x=60; x<= width-60; x+= 25){
   for( int y=60; y<= height-60; y+= 25){
     ellipse(x,y,20,20);
    }// end of y
}// end of x
 }
 
 else if (click == 3){
///Option 3:small circles
  for( int x=60; x<= width-60; x+= 25){
   for( int y=60; y<= height-60; y+= 25){
      ellipse(x,y,5,5);
   }
  }
 }  
}// end of draw function

void keyPressed(){
  click++;
  if (click > 3) click = 1;
}
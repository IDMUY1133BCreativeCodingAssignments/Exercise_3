void setup(){
size (400, 300);
smooth();
noFill();
frameRate(30);

}





 void draw() {
for( int x=  1; x <= width - 50 ; x+= 30) {
  for(int y = 1; y <= height - 50; y+= 30){
  rect(x+10, y+15, x-20, y-20);
  line(x+10, y+15, X-20, Y-20);
  
  
  }// end of loop for y
  }// end loop for x





}
void setup(){
size(600,600);

}

void draw(){
  

  

 
if (mousePressed == true) { //what happens if mouse is pressed
  background(255,0,180);
  for(int x=0; x<610; x=x+10){
  for(int y=0; y<610; y=y+10){
ellipse(x, y, 10,10);
  }
  }
  
  
}

else {

if (keyPressed == true) { //what happens if key is pressed
background(180,0,255);
for(int x=0; x<610; x=x+20){
  for(int y=0; y<610; y=y+20){
ellipse(x, y, 10,10);

  }
}
}

else {
  
 background(0,180,255); //what happens if mouse and key are not pressed
for(int x=0; x<610; x=x+20){
  for(int y=0; y<610; y=y+40){
ellipse(x, y, 10,10);
  }
}
 
}
}
}
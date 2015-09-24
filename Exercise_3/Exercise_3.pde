
int x = 0;
int  y = 0;
float a; 
float b; 
float c;
int x1=5;
int x2=5;

void setup() {
size (800, 800); 
background(255);
}

void draw() {
  stroke(255); 
   for (x =0; x<800; x=x+x1+5)
  for(y=0; y<800; y=y+x2+5)
  {
    fill (a,b,c);
  rect(x,y,x1,x2);
  
 // if mousePressed() //
  

}
if (mousePressed == true){
    a=random(0,255);
    b=random(0,255); 
    c=random(0,255);
    }
}

void keyPressed(){
if (key==CODED){
  if(keyCode ==UP){
   x1=x1+10;
   x2=x2+10;
  }
  if(keyCode ==DOWN){
    x1=x1-10;
    x2=x2-10;
}}
}
 
 
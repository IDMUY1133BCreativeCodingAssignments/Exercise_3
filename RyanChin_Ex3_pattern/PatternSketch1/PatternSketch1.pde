// declaring my variables

int x=0;
int y=700;
color grad1, grad2;


void setup() {
  size(700, 700);
  background(0);
  
  grad1=color(119, 253, 186);
  grad2=color(119, 253, 244);
  
  noFill();
 
}

void draw() {
  // for (initialize, test, update)
  for (int i=x; i<y+x; i++) {
  float remap = map(i, x, x+y, 0, 1); //map(chosen value, ori start, ori stop, new start, new stop)
  color gradient=lerpColor(grad1,grad2,remap); //lerp(first color, second color, amount)
  stroke(gradient); //why do we use stroke?
  line(i,x,i,x+y);
  }
  
  
for (int a=100; a<=width-100; a+=50) {
  for (int b=100; b<=width-100; b+=50){
    fill(255);  
    ellipse(a,b,50,50);
    ellipse(width-a,b,50,50);
    
    }
}

for (int j=40; j<=width-60; j+=20){
    rect(650,j,20,20); }

for (int j=40; j<=width-60; j+=20){
    rect(j,30,20,20);
}

for (int j=40; j<=width-60; j+=20){
    rect(j,650,20,20);
}

for (int j=40; j<=width-60; j+=20){
    rect(30,j,20,20);
}

}
    
   
 
 
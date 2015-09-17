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
  line(i,x,i,x+y); //and why line here? I don't get these parts..
  }
  

for (int a=100; a<=width-100; a+=100) { //a controlling x position of triangle
  for (int b=100; b<=width-100; b+=100){ //b controlling y position of triangle
    fill(mouseX,mouseY,mouseX/2+mouseY/2); //change color based on mouse position
    triangle(a-50,b,a+50,b,a,b-50+mouseY/50); // change peaks based on mouseY
    triangle(a-50,b,a+50,b,a,b+50-mouseY/50); // change peaks based on mouseY
    
    
    }
}

    
   
 
 
 }
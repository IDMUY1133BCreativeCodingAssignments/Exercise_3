// declaring my variables

int x=0;
int y=700;
color grad1, grad2;


void setup() {
  size(700, 700);
  background(0);

  grad1=color(0);
  grad2=color(255);

  noFill();
}

void draw() {
  // for (initialize, test, update)
  for (int i=x; i<y+x; i++) {
    float remap = map(i, x, x+y, 0, 1); //map(chosen value, ori start, ori stop, new start, new stop)
    color gradient=lerpColor(grad1, grad2, remap); //lerp(first color, second color, amount)
    stroke(gradient); //why do we use stroke?
    line(i, x, i, x+y); //and why line here? I don't get these parts..
  }


  for (int a=10; a<=width-10; a+=10) { 
    for (int b=10; b<=width-10; b+=10) {
      noFill();
      rect(a-10, b-10, 20, 20); 
      stroke(255); 
      ellipse(a, b, 5-a/100, 5+b/100);
    }
  }
}
//EXERCISE 3: PATTERN/GRID
/* OK, so here I was having some trouble using the lerp
function to make a grid so I started looking into other methods,
and found the WHILE function to be very intuative.
I played around with some of the mouse function as well.
*/


void setup(){
size(400, 400);
background(200, 59, 89);
}



void draw(){

  int e = mouseX;
  int w = mouseY;
  
  
float x = 40;
while (x < width) {
  float y = 40;
  while(y < height) {
   fill(mouseX, mouseY, 200); 
    ellipse(x, y, e, w);
     y = y + 40;
  }
 
  x = x + 40 ;

}

}
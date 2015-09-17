/*
for (int z = 0; z < 500; z++) {
 fill(56);
 noStroke();
 ellipse( X, z, E1, E2);
 E1/=.2;
 E2/=.2;
 }
 */


int Y = 20; //Declares that the variable Y is 20
int E1 = 150;
int E2 = 150;
int Y2 = 50; 

void setup() {

  size(500, 500);
  background(176, 23, 45);
}

void draw () {


  // First Pattern
  // Creates some weird but awesome thingy
  for ( int A=150; A < 450; A+=5) { // Start from, end to, do this
    stroke(31, 96, 222); // Makes Line blue
    line(100, A+80, A+200, 25);
  }


  //Second Pattern
  // Creates lines using an ellipse shape
  for ( int i = 50; i < 450; i++) { // So i starts from point 0(x), and ends to 500(x), to do that i keeps adding. 
    for ( int b = 50; b < 450; b+=1) {
      fill(255); // Color for the ellipse
      noStroke(); // No stroke 
      ellipse( i, Y, 10, 10); // i is being used as the X component, so it would go from left to right. Y is recalled and used as the Y component which is 20
      fill(0);
      ellipse( Y2, b, 15, 15); 
      Y+=20; // This adds 20 to Y everytime this runs Gives the function width and height between every ellipse
      b+=150;
      Y2+=10; 
    }
  }
}
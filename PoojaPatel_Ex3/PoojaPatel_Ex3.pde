color b1, b2;

int x = 0;  //1st
int l = 500;  //largest square
int s = 300;  //second largest; 5th
int q = 100;  //2nd
int y = 0;   //3rd
int h = 100;  //third largest
int a = 200;  //use with l; 4th
int b = 400;  //6th
int option = 1;  // for "x" pattern

void setup() {

  size(500, 500);
  background(0);
  smooth();


  b1 = color(60, 220, 110);
  b2 = color(220, 90, 160);

  noFill();
}

void draw() {
  int count =10;
  for (int i = x; i < x + l; i++) {

    float remap = map(i, x, x+l, 0, 1); 

    color c = lerpColor(b1, b2, remap);
    stroke(c);
    line(i, x, i, x+l);
  }
  stroke(255, 70, 127);
  if (option ==1) {
    for (int x = 5; x <= 500; x+=10) {
      for (int y = 0; y <= 500; y+=10) {
        float s = map(count, 1, 0, 0, TWO_PI*2);  //map()
        arc(x, y, 15, 15, s, s+PI);
        count--;
      }
    }
  }

  for (int i = q; i < q + l; i++) {

    float remap = map(i, q, q+l, 0, 1); 

    color c = lerpColor(b2, b1, remap);
    stroke(c);
    line(i, q, i, q+l);
  }

  // beginning at y, as long as < y+h, ++i
  for (int i = y; i < y + h; i++) {
    /* take i as it exists btwn y & (y+h)
     translate that relationship to be from 0 & 1 and remaps a number
     from one range to another
     */
    float remap = map(i, y, y+h, 0, 1); 

    color c = lerpColor(b1, b2, remap);
    stroke(c);
    line(i, y, i, y+h);
  }
  stroke(75, 200, 127);
  if (option ==1) {
    for (int x = 105; x <= 500; x+=10) {
      for (int y = 105; y <= 500; y+=10) {
        float s = map(count, 1, 0, 0, TWO_PI*2);  //map()
        arc(x, y, 10, 10, s, s+PI);
        count--;
      }
    }
  }

  for (int i = a; i < a + l; i++) {

    float remap = map(i, a, a+l, 0, 1); 

    color c = lerpColor(b1, b2, remap);
    stroke(c);
    line(i, a, i, a+l);
  }
  stroke(255, 70, 127);

  if (option ==1) {
    for (int x = 205; x <= 500; x+=10) {
      for (int y = 200; y <= 500; y+=10) {
        float s = map(count, 1, 0, 0, TWO_PI*2);  //map()
        arc(x, y, 10, 10, s, s+PI);
        count--;
      }
    }
  }



  for (int i = s; i < s + l; i++) {

    float remap = map(i, s, s+l, 0, 1); 

    color c = lerpColor(b2, b1, remap);
    stroke(c);
    line(i, s, i, s+l);
  }
  stroke(255, 70, 127);
  if (option ==1) {
    for (int x = 308; x <= 500; x+=10) {
      for (int y = 300; y <= 500; y+=10) {
        float s = map(count, 1, 0, 0, TWO_PI*2);  //map()
        arc(x, y, 15, 15, s, s+PI);
        count--;
      }
    }
  }

  for (int i = b; i <= b + l; i++) {

    float remap = map(i, b, b+l, 0, 5); 

    color c = lerpColor(b1, b2, remap);
    stroke(c);
    line(i, b, i, b+l);
  }
  stroke(75, 200, 127);
  if (option ==1) {
    for (int x = 403; x <= 500; x+=7) {
      for (int y = 403; y <= 500; y+=7) {
        float s = map(count, 1, 0, 0, TWO_PI*2);  //map()
        arc(x, y, 5, 5, s, s+PI);
        count--;
      }
    }
  }

  if (option ==1) {
    for (int x = 5; x <= 100; x+=7) {
      for (int y = 0; y <= 100; y+=7) {
        float s = map(count, 1, 0, 0, TWO_PI*2);  //map()
        arc(x, y, 5, 5, s, s+PI);
        count--;
      }
    }
  }
}
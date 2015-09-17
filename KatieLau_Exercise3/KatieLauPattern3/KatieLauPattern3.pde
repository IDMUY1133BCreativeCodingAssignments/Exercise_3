boolean pressed = true;
void setup() {
  size(200, 200); //sets size
  background(147, 6, 68); //makes the background reddish color
}

void draw() {
  //couldn't figure out how to get the eye to move using mouseX and mouseY -> that was the GOAL 
  for (int y = 30; y < height + 30; y += 60) {
    for (int x = 30; x < width + 30; x+= 60) {
      fill(0, 232, 135);
      ellipse(x, y, 60, 60); //main eye shape
      strokeWeight(2);
      fill(255);
      ellipse(x + 15, y - 4, 7, 10); //highlight part of "eye"
      if (pressed) { //eye looks away
        fill(107, 171, 255); ///blue
        rect(x, y, 20, 20, 18); //colored part of eye
        fill(0); 
        rect(x+3, y+3, 10, 10, 15); //pupil
      } else { //eye alternates from looking at you to not looking at you
        fill(107, 171, 255); 
        rect(x, y, 20, 20, 18);
        fill(0);
        rect(x + 5, y + 5, 10, 10, 15); 
      }
    }
  }
}

void mousePressed() { //allows for alternating between where the pupil is facing
  if (pressed) {
    pressed = false;
  } else {
    pressed = true;
  }
}
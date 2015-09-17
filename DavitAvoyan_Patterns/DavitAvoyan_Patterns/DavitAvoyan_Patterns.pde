int option = 1;  //initiating the variable that will return different
                  //results based on clicks

color a, b, c;   //colors for backgrounds and the first gradient

int y = 0;        //variable for the heights of the shapes
int h = 600;      //height of the screen

void setup(){  //initiates the program
  size(600, 400);  //size of the screen of the output
  
  a = color(220, 230, 120);  //colors of 1st gradient and backgrounds for 2nd and 3rd 
  b = color(50, 80, 160);      //respectively
 
}


void draw() {  //inititates the looping function
  //beginning at y, as long as it's < y+h, i++
   
  noFill();
  if(option == 1){  //executes if mouse isn't clicked, or upon every third click
    for(int i = y; i < y + h; i++){ //for every i, if i<y+h, we have i=i+1  
      float remap = map(i, y, y+h, 0, 1);  //remaps value of i as it exists
                                            //between y & y+h to a value 
                                            //between 0 and 1
     
      c = lerpColor(a, b, remap);  //lerps the color and gives us the gradient from a & b
      stroke(c);    
      line(i, y, i, y+h);  //lines for the gradient with stroke of c
  } //i
    int diversity = 0;  //value for the different types of rectangles
    for(int x = 50; x <= (width-80); x+= 40) {  //reprinting across width
      for(int y = 50; y <= (height-80); y+= 20) { 
        //reprinting across height
        if(diversity == 0);{  //first print this rectangle
          rect(x, y, 40, 20);
          diversity++;} //if
        if(diversity > 0){  //then this, interchangeably
          rect(x+10, y-5, 20, 40);
          diversity = 0;} //if
          
      } //y
      } //x 
  } //if
  
  else if (option == 2){  //executes if mouse is clicked once, and upon   
                                                //every third click after  
    noFill();  //don't fill the arcs                                         
    background(a);
    int orient = 0;  //initiate a variable that will determine the angle of the arc
    for(int x = 50; x <= width-50; x+= 20){
      for (int y = 50; y <= height-60; y+= 20){
        noFill();  //don't fill this type of arc
        if(orient <= 1){ //orient<=1 so it can print twice
          arc(x, y, 10, 40, 0, PI);
          orient++;
        } //if
        
        if(orient == 2){ //this angle of the arc will print once and reset
          fill(255);  //fill the second type of arch
          arc(x-5, y-5, 10, 20, 0, 2*PI);         
          orient = 0;
        } //if
    } //y
  } //x
  }//elseif
    
  
  else{  //executes if mouth is clicked twice, and upon    
                                        //every third click after   
    background(b);  //set background to b color
    fill(255);  //fill the triangles
    noStroke();
    int reverse = 0;  //initiate a variable that will determine the orientation of triangle 
    for(int x = 50; x <= width-50; x+= 20){  //x coordinate loop, setting spacing and bounds
      for (int y = 50; y <= height-50; y+= 20){  //y coordinate loop, vertical spacing, bounds
        if(reverse == 0){  //first triangle will be straight
          triangle(x, y, x+5, y-10, x+10, y);  //coordinates of triangle's 3 points
          reverse++;} //and we'll increment the variable to rotate the next triangle
          
        if(reverse == 1){  //the second triangle will be upside down with same attributes
           triangle(x, y, x-5, y+10, x-10, y);  //coordinates of inverted triangle
           reverse = 0;  //setting value to 0 to go back to straight triangles
        }
    } //y
  } //x
    
  } //else
} //draw()

void mousePressed(){  //when mouse is pressed, variable changes value
                      //our if statements depend on this value
  option++;
  if(option > 3){  //once option>3 to avoid going out of bounds, reset it to 1st option
    option = 1;
  } //if
  
} //mousePressed()
    
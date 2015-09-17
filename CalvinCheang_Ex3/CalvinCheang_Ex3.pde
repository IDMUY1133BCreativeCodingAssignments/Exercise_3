/*NOTE: This was supposed to be a combination of random grid shapes, but after
much frustration, I ended up with something that looks like a picture. I adapted to
this idea and worked off of that.
*/

void setup(){
  size (600,600);
}

void draw(){
  //This is the first pattern that forms
  //an inward slope. Looks kind of like a cliff.
  fill(255,0,0);
  int i=height;
  //nested for loop to create circles
  for(int x=0;x<width;x+=10){   //row
    for(int y=0;y<i;y+=10){  //column
      ellipse(x,y,10,10);
    }
    //this decreses the amount of circles
    //every row
    i/=1.06;
  }
  
  fill(0,255,0);
  //This is the second pattern that forms
  //a vine hanging from the bottom of the
  //cliff edge that stops midway.
  int x=300;      //starting point
  int y=100;
    for(int h=0;h<30;h+=10){  //the amt of segments of the vine
      for(int j=0;j<100;j+=10){  //the amt of triangles in each column
        triangle(x,y,x+10,y+10,x-10,y+10);
        y+=10;                  //creates a vertical line of 10 triangles
      }
      x+=5;          //moves the next segment of the vine over by 5px
  }
 
  fill(0,0,255);
  //This is the third pattern that forms
  //the water on the bottom to create waves
  for(int j=height;j>500;j-=10){
    for(int q=width;q>=0;q-=10){        //squares start from bottom right corner 
      if(q%20==0){          //on even numbered columns, the sea level is higher
      rect(q,j,9,9);
      }
    else if(q%20!=0){      //on the odd numbered columns, the sea level is lower
      rect(q,j+10,9,9);
    }
  }
  }
}
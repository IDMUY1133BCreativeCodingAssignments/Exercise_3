//Sharon Lee
//Assignment 3
//DM-UY 1133-B

color b1,b2;
int option=1;//starting value, count of each grid pattern

void setup(){
  size(600,500);
  smooth();
  noFill();
  
}


void draw(){
  if (option == 1){  //Grid Pattern #1
    background(255,224,245);
    stroke(mouseY,mouseX/2,mouseX);//stroke color changes upon mouse movement
    strokeWeight(3);
    for(int x=0;x<width;x+=40){  //x position of doodle
      for (int y=0;y<height;y+=50){  //y position of doodle
        drawDoodle(x,y);  //call function written outside in a different block
      }//y
    }//x
  }//first option
  
  else if (option == 2){ //Grid Pattern #2
    background(224,237,255);
    noStroke();
    for(int x=50;x<width-50;x+=50){  //x position of pattern
        for (int y=50;y<height-50;y+=50){  //y position of pattern        
          drawCircle(x,y);
        }//y
     }//x
  }//second option
  
  else if (option == 3) {
    noFill();
    // Option 3;
    background(255);
    float s= map(mouseY,0,height,0,50);//fit ratio of mouse mvmt to shape enlargement
    for (int x = 0; x <= width; x += 50) {//x positions
      for (int y = 0; y <= height; y+=50) {//y positions
        stroke(129,180,136);
        rect(x, y, 50, 50);//grid like pattern
        stroke(255,249,175);
        line(x,y,x+50,y+50);//diamond pattern
        line(x+50,y,x,y+50);
        stroke(255,159,80);
        ellipse(x+25,y+25,s,s);//circle adjusting to mouse mvmt
        stroke(255,0,0);
        ellipse(x,y,s,s);//different located circle adjusting to mouse mvmt
      }
    }
  } 

}//end
    
void drawDoodle(int a,int b){//writing a function that calls doodle drawing
  line(a,b+10,a,b+20);
  line(a+20,b+10,a+20,b+20);
  line(a+40,b+10,a+40,b+20);
  line(a,b+30,a,b+40);
  line(a+20,b+30,a+20,b+40);
  line(a+40,b+30,a+40,b+40);
  line(a,b+20,a+20,b+30);
  line(a+20,b+20,a+40,b+30);
  line(a+20,b,a,b+10);
  line(a+20,b,a+40,b+10);
  line(a+20,b+50,a,b+40);
  line(a+20,b+50,a+40,b+40);
  line(a+40,b+20,a+30,b+25);
  line(a,b+30,a+10,b+25);
}

void drawCircle(int a,int b){  //writing a function that forms a circle
  float degree=map(mouseX,0,width,35,395);//mouse location to width = degree to circle
  arc(a+25,b+25,50,50,radians(35),radians(degree),PIE); //arc(a,b,c,d,start,stop,mode)
  if (mousePressed){//pacman feature
    stroke(0);
    strokeWeight(2);
    fill(252,255,98);//yellow circle
    int m = millis()/10;//timer
    arc(a+25,b+25,50,50,radians((35)-(m%35)),radians((347)+(m%35)),PIE);//times closing, "eating"
    fill(0);
    ellipse(a+35,b+15,3,3);//eyes
  }else{
    fill(255);// otherwise white circles
  }
}
  
void keyPressed(){
  if ((keyCode==ENTER)||(keyCode==RETURN)){  // enter or return button is pressed, next grid pattern
    option++; //grid pattern counter modifies
    if (option>3) option =1; //back to grid pattern 1 after going through all
  }
  
}
  
  
 
size(400, 400);
background(224, 255, 242); 
noFill();



//horizontal lines 
for (int i = 80; i < 320; i=i+2) { 
  line(80, i, 320, i);
}

//circles
for (int a = 20; a < 380; a=a+30) {
 for (int b = 20; b < 380; b=b+30){
   ellipse(a,b,30,30);
 }
}

//diagonal lines
for (int c = 1; c < 400; c=c+8){
  line(c-100, 0, c+100, 400); //I'm not sure how to make this part of the code fill in the whole screen
}
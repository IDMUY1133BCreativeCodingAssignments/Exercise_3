
void setup() {
  size(800,800);
  smooth();
  noFill();
 
}

void draw(){
  background(255);
  stroke(0);
  strokeWeight(1);
  //Bill Cipher Grid Start
  int a = 50; //top x
  int b = 30; //top y
  int c = 20; //left x
  int d = 90; //left y
  int e = 80; //right x
  int f = 90; //right y
  fill(248,237,83);
  for(int z=0; z<5;z++){
    for(int y=0; y<5;y++){
 triangle( a, b, c, d, e, f);//top,left,right
 b+=65;
 d+=65;
 f+=65;
    }//y(vertical)
    b=30;
    d=90;
    f=90;
 a+=70;
 c+=70;
 e+=70;
    }//z (horizontal)
 fill(255);
 int g = 50;
 int m = 60;
 for(int x=0; x<5; x++){
   for(int r=0; r<5; r++){
 ellipse(g,m,23,19);
 m+=65;
   }//vertical m
   m=60;
   g+=70;
 }//eyeball (horizontal x)
 fill(0);
 noStroke();
 int h = 50;
 int n = 62;
 for(int w=0; w<5; w++){
   for(int q=0; q<5; q++){
 ellipse(h,n,10,10);
 n+=65;
 }
 n=62;
 h+=70;
 }//pupil (horizontal w)
 //Bill Cipher Grid end
 
 //Pickle Start
 int i = 400;
 int j = 60;
 fill(100,157,0);
 stroke(0);
 for(int v=0; v<7; v++){
   for(int u=0; u<3; u++){
     ellipse(i,j,20,50);
     j+=60;
   }//j (vertical)
   j=60;
   i+=50;
 }//i (horizontal)
 //Pickle Stop
 
 int k = 250;
 int l = 450;
 stroke(255);
 strokeWeight(2);
 fill(17,33,61);
 for(int t=0; t<10; t++){
   for(int s=0; s<5; s++){
     rect(k,l,30,20);
     l+=20;
   }//l (vertical)
   l=450;
   k+=30;
 }//k (horizontal)
 
}//end of draw
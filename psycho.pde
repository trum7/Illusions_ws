int patternSeperationX = 100;
int patternSeperationY = 100;

int FIG_SIZE = 50;

void psycho(){
 noStroke();
 //background(150);
 int x0= 0, y0=0;
 for(int i=0; i<60;i++){
   for(int j=0; j<60;j++){
     if(i%2==0){
       if(j%2==0)
          fill(35,67,237);
       else if(j%2==1)
          fill(255,150,0);
      rect(x0+(j*FIG_SIZE),y0+i*FIG_SIZE,FIG_SIZE,FIG_SIZE);
     }else if(i%2==1){
        if(j%2==0)
          fill(255,150,0);
       else if(j%2==1)
         fill(35,67,237);
         rect(x0+(j*FIG_SIZE),y0+i*FIG_SIZE,FIG_SIZE,FIG_SIZE);
     }
   }
 }
 for(int i = 0; i < width/patternSeperationX+1; i++){
      for(int j = 0; j < height/patternSeperationY+1; j++){
        pushMatrix();
        translate(i*patternSeperationX, j*patternSeperationY);
        initialPattern();
        popMatrix();
      }
  }
  
 fill(255);
 int a= 0;
 int b= 550;
 
 while(a<1000){
   ellipse(a,b,5,10);
   ellipse(a,b,10,5);
   
   a= a+50;
   b= b-50;
 }
 overlapCross();
println(mouseX, mouseY);
}

void initialPattern(){
    noStroke();
    fill(0);
    ellipse(0,0,4,8);
    ellipse(0,0,8,4);
    ellipse(50,50,4,8);
    ellipse(50,50,8,4);
    ellipse(50,0,4,8);
    ellipse(50,0,8,4);
    ellipse(100,50,8,4);
    ellipse(100,50,4,8);
    ellipse(0,50,8,4);
    ellipse(0,50,4,8);
}
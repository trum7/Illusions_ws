final int RECT_SIZE = 60;
final int SHIFT = 30;

void shiftedGrid(){
   int x0= -SHIFT, y0=0;
  strokeWeight(2);
  stroke(150);
 for(int i=0; i<60;i++){
   for(int j=0; j<60;j++){
     if(i%2==0){
       if(j%2==0)
         fill(255);
       else if(j%2==1)
         fill(0);
      rect(x0+(j*FIG_SIZE),y0+i*FIG_SIZE,FIG_SIZE,FIG_SIZE);
     }else if(i%2==1){
        if(j%2==0)
         fill(0);
       else if(j%2==1)
         fill(255);
         if(!mousePressed)
           rect(x0+(SHIFT+j*FIG_SIZE),y0+i*FIG_SIZE,FIG_SIZE,FIG_SIZE);
         else
            rect(x0+(j*FIG_SIZE),y0+i*FIG_SIZE,FIG_SIZE,FIG_SIZE);
     }
   }
 }
}
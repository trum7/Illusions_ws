float angleMove;
float change = 0;

void movingCircle(){
  if(back ==1){
     background(165,135,133);
     back+=1;
  }else{
  angleMove+=  (PI / 102);
  radius=radius / (1 + .001);
  change+= 1;
  noStroke();
  fill(0, 200, 0);  
  translate(375, 375);
  rotate(-1*angleMove);
    if (change%8 == 0){
    fill(255);
  }else if (change%8 == 4){
    fill(0);
  }else if (change%8 == 1){
    fill(171, 236, 67);
  }else if (change%8 == 5){
    fill(163, 72, 225);
  }else{
    noFill();
  }
  ellipse(radius, 0, radius / 5, radius / 3);
  }
}
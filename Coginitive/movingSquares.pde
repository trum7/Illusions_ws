int a=50;
int b=100;
int s=0;

void movingSquares(){
  background(255);
  if (b>=height) {
    s=1;
  }
  if (b==a/2) {
    s=0;
  }
  if (s==0) {
    b++;
  }
  else {
    b--;
  }
  //Stripes
  rectMode(CORNER);
  noStroke();
  fill(0);
  if(mousePressed == false) {
  for (int y=0; y<900; y+=50) {
    rect(0, y, 900, 20);
  }
  }
  //Squares
  rectMode(CENTER);
  fill(0, 0, 0);
  rect(220, b, a, a);
  rect(460, b, a, a);
  rect(700, b, a, a);
  fill(255, 255, 0);
  rect(100, b, a, a);
  rect(340, b, a, a);
  rect(580, b, a, a);
  
}
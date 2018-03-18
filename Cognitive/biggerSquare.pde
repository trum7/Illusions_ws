float angle;
float jitter;
boolean value = true;

void biggerSquare(){
background(255);
noStroke();
fill(255);
rectMode(CENTER);
// during even-numbered seconds (0, 2, 4, 6...)

angle = angle + 0.05;
float c = angle;
translate(width/2, height/2);
rotate(c);
fill(128,0,128);
rect(0, 0, 200, 200);   

if (value){
  rotate(-c);
  fill(255,255,0);
  rect(100, 100, 150, 150); 
  rect(-100, 100, 150, 150);
  rect(100, -90, 150, 150);
  rect(-100, -90, 150, 150);
}
}

void mousePressed() {
  if (value) {
    value = false;
  } else {
    value = true;
  }
}
int c = 255;
float angleShift = 0;

void tunnel(){
  background(0);
  translate(width / 2, height / 2);
  c = 255;
  float rSub = map(mouseX, 0, width, 5, 20);
  float aAdd = map(mouseY, 0, height, PI / 2.0, PI / 48.0);
  circles(height, rSub, angleShift, aAdd); 
  angleShift += PI / 5.0;
  
}

void circles(float radius, float rSub, float angleShift, float aAdd) {
  pushMatrix();
  do {
      fill(c);
      c = 255 - c;
      ellipse(0, 0, radius * 2, radius * 2);
      radius -= rSub;
      angleShift += aAdd;
      float r = rSub * 0.6;
      float x = cos(angleShift + aAdd) * r;
      float y = sin(angleShift + aAdd) * r;
      translate(x, y);
  } while(radius >= 1);
  popMatrix();
}
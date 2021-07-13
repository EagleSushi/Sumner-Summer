Islands i; 

void setup() {
  size(1000,1000);
  gw = width;
  gh = height;
  
  x = gw>>1;
  y = gw>>1;
  sumner = loadImage("sumner.png");
  
}

void draw() {
  background(45, 57, 115);
  i = new Islands(700,800);
  valueUpdate();
  mainMove();
  i.display();
}

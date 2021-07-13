float speed = 0.07, rotate = 0.007, accel = 0.96;
float x,y,z,v;
boolean north, east, south, west;
int gh, gw;
PImage sumner; 

void keyPressed() {
  mainChoice(keyCode,true);
}

void keyReleased() {
  mainChoice(keyCode, false);
}

void mainChoice(int k, boolean direction) {
  if      (k == UP    | k == 'W')   north = direction;
  else if (k == DOWN  | k == 'S')   south = direction;
  else if (k == LEFT  | k == 'A')   west  = direction;
  else if (k == RIGHT | k == 'D')   east  = direction;
}
  
void valueUpdate() {
  v+=(north? speed : 0) - (south? speed : 0); 
  z+=(east? rotate : 0) - (west? rotate:0);
  
  x = (x+gw+cos(z)*v)%gw; 
  y=(y+gh+sin(z)*v)%gh;
  
  v*=accel;
}

void mainMove() {
  pushMatrix();
  translate(x, y);
  rotate(z);
 
  imageMode(CENTER);
  image(sumner,0,0);
  popMatrix();
}

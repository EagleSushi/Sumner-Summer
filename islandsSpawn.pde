class Islands {
  PImage island;
  float x; 
  float y;
  
  Islands(float xpos, float ypos) {
    x = xpos; 
    y = ypos;
  }
  
  void display() {
    island = loadImage("island.png");
    imageMode(CENTER); 
    image(island, x,y);
  }
}

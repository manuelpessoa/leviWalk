Walker[] w = new Walker[40];

void setup() {
  
  frameRate(60);
  
  size(displayWidth,displayHeight);
  // Create a walker object
  for(int i = 0; i < w.length; i++)
  { 
    w[i] = new Walker(int(random(width)), int(random(height)));
  }
  
  background(0);
}

void draw() {
  // Run the walker object
  for(int i = 0; i < w.length; i++)
  {
    w[i].step();
    w[i].render();
  }
}

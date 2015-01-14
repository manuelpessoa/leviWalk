Walker w, w2, w3, w4, w5, w6, w7;

void setup() {
  
  frameRate(30);
  
  size(displayWidth,displayHeight);
  // Create a walker object
  w = new Walker(width/2, height/2);
  w2 = new Walker(width/2, height/2);
  w3 = new Walker(width/2, height/2);
  w4 = new Walker(width/2, height/2);
  w5 = new Walker(width/2, height/2);
  w6 = new Walker(width/2, height/2);
  w7 = new Walker(width/2, height/2);
  background(0);
}

void draw() {
  // Run the walker object
  w.step();
  w.render();
  w2.step();
  w2.render();
  w3.step();
  w3.render();
  w4.step();
  w4.render();
  w5.step();
  w5.render();
  w6.step();
  w6.render();
  w7.step();
  w7.render();
 
}


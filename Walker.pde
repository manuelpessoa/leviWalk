class Walker {
  float x, y;  
  float prevX, prevY;

  Walker(int posX, int posY) {
    x = posX;
    y = posY;
  }

  void render() {
    
    int millisecond = millis();
    int second = millisecond/1000;
    int minute = second/60;
   
    
    color cor = 0;
    int colorSelector = int(random(10));
    int thick = 0;
    
    if (second > 0)
    {
      if(colorSelector < 3)
      {
        cor = color(255,5,30,random(1,40));
        thick = int(random(5));
      }
      else
      {
        cor = color(255,random(1,30));
        thick = int(random(5));
      }
    }
    
    if (second > 60)
    
      {
        if(colorSelector > 3)
        {
          cor = color(255,0,0, random(20,60));
          thick = int(random(2,6));
        }
        else
        {
          cor = color(100,189,242,random(60));
          thick = int(random(6));
        }
      }
      
      if(second > 120)
      {
          if(colorSelector < 3)
          {
            cor = color(255,0,0, random(30,70));
            thick = int(random(3,15));
          }
          else
          {
            cor = color(242,242,100,random(60));
            thick = int(random(5));
          }
      }  
          
    strokeWeight(thick);
    stroke(cor);
    line(prevX,prevY,x, y);
    
    
  }

  // Randomly move according to floating point values
  void step() {
    prevX = x;
    prevY = y;
    
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    
    float stepsize = montecarlo()*random(20,2000);
    stepx *= stepsize;
    stepy *= stepsize;
    
    x += stepx;
    y += stepy;
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}


float montecarlo() {
  while (true) {  

    float r1 = random(1);  
    float probability = pow(1-r1,50);  

    float r2 = random(1);  
    if (r2 < probability) {  
      return r1;
    }
  }
}

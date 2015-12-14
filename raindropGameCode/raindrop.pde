class Raindrop {
  PVector mouse, loc, vel, gravity; 
  float diam, g;
  int x, y; 
  color c;

  Raindrop(float x, float y){
    diam = 90; 
    gravity = new PVector(0, 1.2);
    loc = new PVector(x, y);
    vel = PVector.random2D();
    c = color(0, 0, random(100, 255));
  }
  
  void display(){
    fill(c);
    noStroke();
    ellipse(loc.x,loc.y, diam, diam);
  }
  
  void fall(){
    loc.add(vel);
    vel.add(gravity);
  }
  
  void reset(){
    loc.y = 0; 
    loc.x = (random(0,width));
    vel = new PVector(0, 1);
  }
  
  boolean isInContactWith(PVector mouse){
    if(loc.dist(mouse) < diam/2){
    return true; 
      } else return false; 
    }
    
  } 
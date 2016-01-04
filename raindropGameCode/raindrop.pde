class Raindrop {
  PVector loc, vel, gravity; 
  int diam; 
  color c;

  Raindrop(PVector pos){
    diam = 90; 
    gravity = new PVector(0, 0.5);
    loc = pos;
    vel = new PVector(0, 1.2);
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
    diam = 90;
    loc.y = 0; 
    loc.x = (random(0,width));
    vel = new PVector(0, 0.5);
    c = color(0, 0, random(100, 255));
    vel.mult(10);
  }
  
  boolean isInContactWith(PVector mouse, float bdiam){
    if(loc.dist(mouse) < diam/2 + bdiam/2){
    return true; 
      } else return false; 
    }
}
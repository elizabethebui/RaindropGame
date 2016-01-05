class Apple {
  PVector loc, vel, gravity; 
  PImage apple;
  
  Apple(PVector pos){
    gravity = new PVector(0, 0.5);
    loc = pos;
    vel = new PVector(0, 1.2);
    apple = loadImage("apple.png");
    apple.resize(80,80);
  }
  
  void display(){
    noStroke();
   image(apple, loc.x, loc.y);
  }
  
  void fall(){
    loc.add(vel);
    vel.add(gravity);
  }
  
  void reset(){
    loc.y = 0; 
    loc.x = (random(0,width));
    vel = new PVector(0, 0.5);
    vel.mult(10);
  }
  
  boolean isInContactWith(PVector isaac){
    if(loc.dist(isaac) < 50){
    return true; 
      } else return false; 
    }
}
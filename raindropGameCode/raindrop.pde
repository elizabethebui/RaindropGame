class Apple { //creates apple class
  PVector loc, vel, gravity; 
  PImage apple;
  
  Apple(PVector pos){ //initialize apple class 
    gravity = new PVector(0, 0.5);
    loc = pos;
    vel = new PVector(0, 1.2);
    apple = loadImage("apple.png"); //load apple image
    apple.resize(80,80); //resize the apple image to fit accordingly
  }
  
  void display(){ //display the class
    noStroke();
   image(apple, loc.x, loc.y); 
  }
  
  void fall(){ //makes apple fall with acceleration, like gravity
    loc.add(vel);
    vel.add(gravity);
  }
  
  void reset(){ //reset function for apple
    loc.y = 0; 
    loc.x = (random(0,width));
    vel = new PVector(0, 0.5);
    vel.mult(10);
  }
  
  boolean isInContactWith(PVector isaac){ //creates a boolean. Apple recognizes contact with the bucket
    if(loc.dist(isaac) < 50){
    return true; 
      } else return false; 
    }
}
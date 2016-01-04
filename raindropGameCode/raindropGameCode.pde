PVector mouse;   //declare a P
int count = 5;
ArrayList<Raindrop> rn = new ArrayList<Raindrop>(); 
Catcher bucket; 
int lives; 

void setup() {
   size(1200, 800);
   mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
   rn.add(new Raindrop(new PVector(width/2,0)));
   bucket = new Catcher(120);
 }

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  bucket.display();
    
    for (int i = 0; i < rn.size(); i++) {
    Raindrop r = rn.get(i);
    r.fall();     
    r.display(); 
    if (r.loc.y > height + r.diam/2) {
      r.reset();
    }
    if (r.isInContactWith(mouse,bucket.diam)) {
      r.reset();
    }
  }
  
  }
  textSize(20); //scoreboard 
  textAlign(CENTER); 
  text("Score", 350,50);
  text(paddlescore, 175, 100);
}
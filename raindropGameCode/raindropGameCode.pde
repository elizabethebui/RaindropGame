PVector mouse;   
int count = 4;
ArrayList<Raindrop> rn = new ArrayList<Raindrop>(); 
Catcher bucket; 
int lives; 
int stage;

void setup() {
  stage = 1;
  background(0,0,0);
   size(1200, 800);
   mouse = new PVector();       
   rn.add(new Raindrop(new PVector(width/2,0)));
   bucket = new Catcher(120);
 }

void draw() {
  if(stage==1){
  textAlign(CENTER);
  textSize(50);
  fill(100,100,100);
  text("Catch the apples!", 600,400);
  text("Press any key to begin.", 600,700);
    if(keyPressed==true){
    stage = 2;
    }
  }
 
 if(stage==2){
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
}
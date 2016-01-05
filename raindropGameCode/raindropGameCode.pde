PVector isaac;   
int count = 6;
ArrayList<Apple> rn = new ArrayList<Apple>(); 
Catcher bucket; 
int lives; 
int score;
int stage;

void setup() {
  stage = 1;
  lives = 5;
  score = 0;
  background(0,0,0);
   size(1200, 800);
   isaac = new PVector();       
   rn.add(new Apple(new PVector(width/2,0)));
   bucket = new Catcher(mouseX, height - 400);
 }

void draw() {
  if(stage==1){

  textAlign(CENTER);
  textSize(30);
  fill(100,100,100);
  text("Help Isaac catch the apples! Aim at his mouth!", 600,400);
  text("Press any key to begin.", 600,700);
    if(keyPressed==true){
    stage = 2;
    }
  }
 
 if(stage==2){
  isaac.set(mouseX, height - 150); 
  background(0, 200, 255);
  bucket.display();
 
  textSize(20);
  textAlign(CENTER);
  text("Lives", width/4,  height - height/4);
  text(lives, width/4 + 50,  height - height/4);
  
  textAlign(CENTER);
  text("Score", 3*width/4,  height - height/4);
  text(score, 3*width/4 + 50, height - height/4);
    
    for (int i = 0; i < rn.size(); i++) {
      Apple r = rn.get(i);
      r.fall();     
      r.display(); 
    
    if (r.loc.y > height) {
      r.reset();
      lives = lives - 1;
    }
   
    if (r.isInContactWith(isaac)) {
      r.reset();
      score = score + 1;
      }  
    }
    
    if(lives == 0){
    stage = 3;
    }
    
    if(score == 10){
    stage = 4;
    }
  }
  
  if(stage == 3){
  background(0,0,0);
  textSize(40);
  textAlign(CENTER);
  text("You lose! Click to try again!", width/2, height/2 - 80);
  }
  
  if(stage==4){
  background(0,0,0);
  textSize(40);
  textAlign(CENTER);
  text("You win! Click to try again!", width/2, height/2 - 80);
  }
}

void mousePressed(){
  if(stage == 3){
  stage = 2;
  lives = 5;
  score = 0;
  }
  
 if(stage == 4){
 stage = 2;
 lives = 5;
 score = 0;
 }
}
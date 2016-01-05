PVector isaac;   //declare a pvector for image of isaac newton
int count = 6; //number of apples in array 
ArrayList<Apple> rn = new ArrayList<Apple>(); //array list
Catcher bucket; //declare bucket from class catcher
int lives; //declare integer for lives
int score;
int stage;

void setup() {
  stage = 1; 
  lives = 5;
  score = 0;
  background(0,0,0); 
   size(1200, 800);
   isaac = new PVector();   //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
 //Initialize r. The parameters used are the initial x and y positions
   rn.add(new Apple(new PVector(width/2,0))); //
   bucket = new Catcher(mouseX, height - 400); //
 }

void draw() {
  if(stage==1){ //what happens in first stage
  textAlign(CENTER); 
  textSize(30);
  fill(100,100,100);
  text("Help Isaac catch the apples! Aim at his mouth!", 600,400); //display directional text
  text("Press any key to begin.", 600,700);
    if(keyPressed==true){ //if any key is pressed...
    stage = 2; //...proceeds to stage 2, the game 
    }
  }
 
 if(stage==2){
  isaac.set(mouseX, height - 150); //sets value of mousex, keep isaac newton on the same vertical location
  background(0, 200, 255);
  bucket.display(); //display bucket
 
  textSize(20); //display text and score of lives 
  textAlign(CENTER);
  text("Lives", width/4,  height - height/4);
  text(lives, width/4 + 50,  height - height/4);
  
  textAlign(CENTER); //display text and score of score
  text("Score", 3*width/4,  height - height/4);
  text(score, 3*width/4 + 50, height - height/4);
    
    for (int i = 0; i < rn.size(); i++) { // 
      Apple r = rn.get(i); 
      r.fall();     //make the apple fall 
      r.display();  //display the apple
    
    if (r.loc.y > height) { //if the y component of the apple is greater than the height...
      r.reset(); //reset the location of the apple to the top
      lives = lives - 1; //score of lives goes down by one 
    }
   
    if (r.isInContactWith(isaac)) { //the the apple is in contact with Isaac Newton... 
      r.reset(); //...apple resets...
      score = score + 1; //...and score goes up by one point
      }  
    }
    
    if(lives == 0){ //if you lose all lives go to lose screen 
    stage = 3;
    }
    
    if(score == 10){ //if get the winning score go to win screen
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

void mousePressed(){ //if press mouse 
  if(stage == 3){ //reset game and score values 
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
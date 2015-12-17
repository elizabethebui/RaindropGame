PVector mouse;   //declare a P
int count = 5;
ArrayList<Raindrop> r = new ArrayList<Raindrop>(); //fix THIS!!
ArrayList<Catcher> bucket = new ArrayList<Catcher>();

void setup() {
   size(1200, 800);
   mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
   r.add(new Raindrop(random(width), 0));
   bucket = new Catcher(120);
 }

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  r.add(new Raindrop(random(width), 0));
  bucket.display();
  
  for (int i = r.size(); i >= 0; i++){
  r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r.display();      //display the raindrop
  if (r.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
    r.reset();                         //if it is, reset the raindrop
    }
  if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
    r.reset();                           //if it does, reset the raindrop
    }
  }
}
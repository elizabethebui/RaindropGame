class Catcher{
  PVector pos; 
  PImage isaac;
  
  Catcher(float x, float y){
  pos = new PVector(mouseX,height-150);
  isaac = loadImage("isaacnewton.png");
}

 void display(){
  imageMode(CENTER);
  image(isaac, mouseX, pos.y);
  }
}
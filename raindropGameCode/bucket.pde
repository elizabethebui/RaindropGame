class Catcher{
  PVector pos; 
  PImage isaac;
  
  Catcher(float x, float y){
  pos = new PVector(mouseX,height-300);
  isaac = loadImage("isaacnewton.png");
}

 void display(){
  image(isaac, mouseX-200, pos.y);
  }
}
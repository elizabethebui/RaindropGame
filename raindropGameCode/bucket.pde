class Catcher{ //create class 
  PVector pos; 
  PImage isaac;
  
  Catcher(float x, float y){ //terms for Catcher 
  pos = new PVector(mouseX,height-150); //position of the PVector
  isaac = loadImage("isaacnewton.png"); //load image of Isaac Newton
}

 void display(){  //creates display function for catcher 
  imageMode(CENTER); //image in center 
  image(isaac, mouseX, pos.y); 
  }
}
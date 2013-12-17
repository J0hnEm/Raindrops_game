class Startscreen{
  PVector loc;
  int w, h;
  
  Startscreen(){
  w = 50;
  h = 50;
  loc = new PVector(width/2, height/2);
  }
  
  void display(){
    rectMode(CENTER);
    background(100);
    textSize(50);
    textAlign(CENTER);
    text("Raindrops Game", width/2, height/2);
    rect(loc.x,loc.y, w,h);
  }
  
  void mousePressed(){
    if(mouseY > loc.y && mouseY < w+loc.y && mouseX <
  

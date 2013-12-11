class Catcher {
  int w,h;
  
  Catcher(){
    w = 40;
    h = 20;
  }
  
  void display (){
    rectMode(CENTER);
    fill(255);
    stroke(0);
    rect(0,0, w,h);
  }
  
  void keyPressed();
  
}

class Catcher {
  int w, h, y, d, b;
  PVector loc;

  Catcher() {
    w = 40;
    h = 20;
    y = 20;
    d = 20;
  }

  void display () {
    loc = new PVector(mouseX, height*3/4);
    rectMode(CENTER);
    pushMatrix();
    translate(loc.x, loc.y);
    fill(255);
    stroke(0);
    rect(0, 0, w, h);
    ellipse(0, y, d, d);
    popMatrix();
  }
  
  void big(Score score){
    if(score.s - b > 15){
      y+=2;
      d+=2;
      b = score.s;
    }
  }
}


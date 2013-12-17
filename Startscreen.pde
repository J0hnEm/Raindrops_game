class Startscreen {
  PVector loc;
  int w, h;

  Startscreen() {
    w = 50;
    h = 50;
    loc = new PVector(width/2-w/2, height/2-h/2);
  }

  void display() {
    background(100);
    textSize(50);
    textAlign(CENTER);
    text("Raindrops Game", width/2, height *1/4);
    rect(loc.x, loc.y, w, h);
  }
}


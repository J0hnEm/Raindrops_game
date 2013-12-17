class Score {
  int s = 0;

  Score() {
  }

  void display() {
    textSize(50);
    textAlign(CENTER);
    text("Score:" + s, width/2, height*1/4);
  }

  void increase(Catcher c, Raindrops r) {
    if (c.loc.dist(r.loc) < c.w) {
      r.loc.set(-width, -height);
      r.vel.set(0, 0);
      r.acc.set(0, 0);
      s++;
    }
  }
}

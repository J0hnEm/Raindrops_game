class Score {
  int s = 0;

  Score() {
  }

  void display() {
    textSize(50);
    textAlign(CENTER);
    text("Score:" + s, width/2, height*1/4);
  }

  void increase(Catcher catcher, Raindrops raindrop) {
    if (catcher.loc.dist(raindrop.loc) < catcher.w + raindrop.d/2) {
      raindrop.loc.set(-width, -height);
      raindrop.vel.set(0, 0);
      raindrop.acc.set(0, 0);
      s++;
    }
  }
}

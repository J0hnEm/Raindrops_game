class GameOver {
  PVector loc;

  GameOver() {
    loc = new PVector(width/2, height*1/4);
  }

  void display(Score score) {
    background(255);
    textSize(50);
    textAlign(CENTER);
    pushMatrix();
    translate(loc.x, loc.y);
    if (0 <= score.s && score.s < 25) {
      text("Mamma Mia", 0, 0);
    }
    if (25 <= score.s && score.s < 50) {
      text("eehh...", 0, 0);
    }
    if (50 <= score.s && score.s < 100) {
      text("Wow. You're So Cool!", 0, 0);
    }
    if (score.s >= 100) {
      text("Oou Kill Em!", 0, 0);
    }
    popMatrix();
    text("Final Score:" + score.s, width/2, height/2);
  }

  void restart(Startscreen sc) {
    textSize(50);
    textAlign(CENTER);
    text("Play Again?", width/2, height*3/4);
    if (mousePressed) {
      sc.display();
    }
  }
}


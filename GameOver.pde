class GameOver {
  PVector loc

    GameOver {
    loc = new PVector(width/2, height*1/4);
  }

  void display(Timer timer, Raindrops raindrop Score score) {
    background(255);
    raindrop.vel.set(0, 0);
    raindrop.acc.set(0, 0);
    textSize(50);
    textAlign(CENTER);
    pushMatrix();
    translate(loc.x, loc.y);
    if (score.s = 0, 25) {
      text("daaannnggg. You suck lol", 0, 0);
    }
    if (score.s = 25, 50) {
      text("eehh...", 0, 0);
    }
    if (score.s = 50, 100) {
      text("Wow. You're Cool!", 0, 0);
    }
    if (score.s =< 100) {
      text("Oou Kill Em!", 0, 0);
    }
    popMatrix();
  }
  
  void Restart(Startscreen startscreen){
    textSize(50);
    textAlign(CENTER);
    text("Play Again?", width/2, height*3/4);
    if(mousePressed){
      startscreen.display();
    }
  }
}


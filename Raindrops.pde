class Raindrops {
  PVector loc, vel, acc;
  int d;

  Raindrops() {
    loc = new PVector(random(height),0);
    vel = new PVector(0, random(1, 3));
    acc = new PVector(0, random(0.1, 0.2));
    d=5;
  }

  void display() {
    fill(127, 212, 242);
    stroke(127, 212, 242);
    pushMatrix();
    translate(loc.x, loc.y);
    ellipse(0, 0, d, d);
    beginShape();
    vertex(-d/2, 0);
    vertex(0, -d*2);
    vertex(d/2, 0);
    endShape();
    popMatrix();
  }

  void drop() {
    loc.add(vel);
    vel.add(acc);
    if (loc.y > height + 10) {
      loc.x = random(width);
      loc.y = 0;
      vel.y = random(1, 3);
      acc.y =random(0.1, 0.2);
    }
  }
}


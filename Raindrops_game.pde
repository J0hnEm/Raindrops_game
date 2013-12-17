Raindrops[] r;
Catcher c;
Score score;
Timer t;
GameOver go;
Startscreen sc;
int index;
boolean a, b,d;
int currentTime, oldTime;

void setup() {
  size(500, 500);
  r = new Raindrops[100000];
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrops();
  }
  c = new Catcher();
  score = new Score();
  t = new Timer();
  go = new GameOver();
  sc = new Startscreen();
  a=true;
  b=false;
  d=false;
}

void draw() {
  if(a=true){
   sc.display();
  }
  if (b=true) {
    background(9, 27, 33);
    c.display();
    score.display();
    t.display(r);
    for (int i = 0; i < t.index; i++) {
      r[i].display();
      r[i].drop();
      score.increase(c, r[i]);
    }
    c.big(score);
  }
  if (d=true) {
    go.display(score);
    go.restart(sc);
  }
  if(t.limit == 0){
    d = true;

}

void mousePressed(Startscreen sc, GameOver go) {
  if (mouseX > sc.loc.x && mouseX < sc.loc.x + sc.w && mouseY > sc.loc.y && mouseY < sc.loc.y + sc.h) {
      a=false;
      b=true;
  }
  if(mouseX > go.rloc.x && mouseX < go.rloc.x + go.w && mouseY > go.rloc.y && mouseY < go.loc.y + go.h) {
    d=false;
    a=true;
}
}


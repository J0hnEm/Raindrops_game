<<<<<<< HEAD
Raindrops[] raindrop;
Catcher catcher;
Score score;
Timer timer;
int index;
=======
Raindrops[] r;
Catcher c;
Score score;
Timer t;
GameOver go;
Startscreen sc;
boolean a, b, d;
>>>>>>> 61f7df74d47a2559f387002d38ad654433055d17
int currentTime, oldTime;

void setup() {
  size(500, 500);
<<<<<<< HEAD
  raindrop = new Raindrops[100000];
  for (int i = 0; i < raindrop.length; i++) {
    raindrop[i] = new Raindrops();
  }
  catcher = new Catcher();
  score = new Score();
  timer = new Timer();
  rectMode(CENTER);
}
void draw() {
  if(startscreen
  currentTime=millis();
  background(9, 27, 33);
  catcher.display();
  score.display();
  timer.display();
  for (int i = 0; i < timer.index; i++) {
    raindrop[i].display();
    raindrop[i].drop();
    score.increase(catcher, raindrop[i]);
  }
  catcher.big(score);
  if(timer.limit = 0){
    
}

=======
  r = new Raindrops[100000];
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrops();
  }
  c = new Catcher();
  score = new Score();
  t = new Timer();
  go = new GameOver();
  sc = new Startscreen();
}

void draw() {
  /*if (b) {
   sc.display();
   }*/
  if (a) {
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
  if (!d) {
    go.display(score);
    go.restart(sc);
  }
  if (t.limit == 0) {
    a=!a;
    d=!d;
    
  }
}

/*void mousePressed(Startscreen sc) {
 if (mouseX > sc.loc.x && mouseX < sc.loc.x + sc.w && mouseY > sc.loc.y && mouseY < sc.loc.y + sc.h) {
 b = !b;
 a = !a;
 }
 }*/
>>>>>>> 61f7df74d47a2559f387002d38ad654433055d17

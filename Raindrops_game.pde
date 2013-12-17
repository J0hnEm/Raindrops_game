Raindrops[] raindrop;
Catcher catcher;
Score score;
Timer timer;
int index;
int currentTime, oldTime;

void setup() {
  size(500, 500);
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


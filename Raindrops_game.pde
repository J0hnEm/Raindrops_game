Raindrops[] raindrop;
Catcher catcher;

void setup(){
  size(500,500);
  catcher = new Catcher();
  raindrop = new Raindrops[13];
  for (int i = 0; i < raindrop.length; i++){
    raindrop[i] = new Raindrops();
  }
}
void draw(){
  background(9,27,33);
  for(int i = 0; i < raindrop.length; i++){
    raindrop[i].display();
    raindrop[i].drop();
  }
  catcher.display();
}

void 

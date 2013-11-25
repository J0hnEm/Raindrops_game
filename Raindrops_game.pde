Raindrops[] raindrop;

void setup(){
  size(500,500);
  raindrop = new Raindrops[1000];
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
}

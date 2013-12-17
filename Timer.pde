class Timer {
  int currentTime, oldTime, limit, index, b;
  int waitTime = 1000;

  Timer() {
  }

  void display() {
    currentTime = millis();
    limit = 500000 - currentTime;
    textSize(20);
    textAlign(RIGHT);
    text("Time Limit:" + limit/100, width, 20);
    if (currentTime - oldTime > waitTime) {
      index++;
      oldTime = currentTime;
    }
    if( 
  }
}


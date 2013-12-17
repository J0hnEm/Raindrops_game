class Timer {
  int currentTime, oldTime, limit, index;
  int ls = 50000;
  int waitTime = 1000;
  int s = 0;

  Timer() {
  }

  void display(Raindrops r[]) {
    currentTime = millis();
    limit = ls - currentTime - s;
    if (ls - currentTime <=0) {
      s = -millis();
      ls = 0;
    }
    textSize(20);
    textAlign(RIGHT);
    text("Time Limit:" + limit/100, width, 20);
    if (currentTime - oldTime > waitTime) {
      if (index <= r.length) {
        index++;
      }
      oldTime = currentTime;
    }
  }
}


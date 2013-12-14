class Timer {
  int currentTime, oldTime, limit, index, ls;
  int waitTime = 1000;

  Timer() {
    ls= 5000;
  }

  void display(Raindrops r[]) {
    currentTime = millis();
    limit = ls - currentTime;
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


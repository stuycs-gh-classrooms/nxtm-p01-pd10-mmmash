class GameScore {
  int points;

  GameScore() {
    points = 0;
  }

  void add(int p) {
    points += p;
  }

  void display() {
    fill(255);
    textSize(20);
    text("Score: " + points, width - 120, 50);
  }
}

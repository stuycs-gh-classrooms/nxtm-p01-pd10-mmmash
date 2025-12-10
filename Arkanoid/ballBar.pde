class ballBar {
  int[][] ballPos;
  int[][] bricks;
  int NUM_ROWS = 4;
  int NUM_COLS = 15;

  ballBar() {
    bricks = new int[NUM_ROWS][NUM_COLS];
    for (int r = 0; r < NUM_ROWS; r++) {
      for (int c = 0; c < NUM_COLS; c++) {
        bricks[r][c] = color(random(255), random(255), random(255));
      }
    }
  }

  void display() {
    grid(bricks);
  }

  void grid(int[][] data) {
    int startY = height/3;
    int wide = 40;
    int tall = 20;
    int gap = 4;
    int startX;

    for (int r = 0; r < data.length; r++) {
      startX = 20;
      for (int c = 0; c < data[r].length; c++) {
        fill(data[r][c]);
        rect(startX, startY + r*(tall+gap), wide, tall);
        startX += wide + gap;
      }
    }
  }

  void bar() {
  }
  void move() {
  }
}
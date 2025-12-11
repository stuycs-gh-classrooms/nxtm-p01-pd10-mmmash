class ballBar {
  //int[][] ballPos;
  int[][] bricks;
  int NUM_ROWS = 4;
  int NUM_COLS = 15;
  PVector ballPos;
  int xSpeed;
  int ySpeed;
  int startX;
  int startY;
 

  ballBar() {
    startX = width/2-55;
    startY = height- 110;
    bricks = new int[NUM_ROWS][NUM_COLS];
    for (int r = 0; r < NUM_ROWS; r++) {
      for (int c = 0; c < NUM_COLS; c++) {
        bricks[r][c] = color(random(5, 255), random(5, 255), random(5, 255));
      }
    }
    ballPos = new PVector(startX, startY);
  }

  void display() {
    grid(bricks);
    bar();
  }

  void grid(int[][] data) {
    int startY = height/3;
    int wide = 50;
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

    fill(255);
    if (movement) {
      rect(mouseX, height-100, 120, 10);
    } else {
      rect(width/2-100, height-100, 120, 10);
    }
    ball();
  }

  void ball() {

    int size = 20;
    fill(255, 0, 0);
    //circle(width/2-55, height-110, size);
    if (movement) {
    }
    //circle(width/2-55, height-110, size);

    println("ballx: " + ballPos.x);
    println("bally: " + ballPos.y);
  }


  boolean move() {
    if (movement) {
      return true;
    } else {
      return false;
    }
  }
}

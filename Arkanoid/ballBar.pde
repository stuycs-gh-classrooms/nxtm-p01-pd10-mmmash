class ballBar {

  int NUM_ROWS = 8;
  int NUM_COLS = 20;
  int brickW= 40;
  int brickH= 20;
  int space= 2 ;
  int margin_left = 20;
  int margin_top = 100;
  float x, y;
  float dx = 4;
  float dy= -4;
  boolean launched;
  int size = 20;
  color[][] brickColor;
  GameScore score;


  ballBar(GameScore s) {
    score = s;
    launched = false;
    x = width/2;
    y = height-60;
    brickColor = new color[NUM_ROWS][NUM_COLS];
    for (int r = 0; r < NUM_ROWS; r++) {
      for (int c = 0; c < NUM_COLS; c++) {
        brickColor[r][c] = color(random(10, 255), random(10, 255), random(10, 255));
      }
    }
  }

  void display() {
    grid();
    bar();
  }

  void grid() {
    for (int r = 0; r<NUM_ROWS; r++) {
      for (int c = 0; c<NUM_COLS; c++) {
        if (brickColor[r][c] != color(0)) {
          int startX = margin_left + c*(brickW + space);
          int startY = margin_top + r*(brickH +space);
          fill(brickColor[r][c]);
          rect(startX, startY, brickW, brickH);
        }
      }
    }
  }

  void bar() {
    fill(255);
    if (movement) {
      rect(mouseX, height - 50, 200, 10);
      if (!launched) {
        x = mouseX + 100;
        y = height-60;
      }
    } else {
      rect(width/2 - 100, height - 50, 200, 10);
      if (!launched) {
        x = width/2;
        y = height-60;
      }
    }
    ball();
  }

  void move() {
    if (launched) {
      x+=dx;
      y+=dy;


    int size = 20;
    fill(255, 0, 0);
    //circle(width/2-55, height-110, size);
    if (movement) {

      if (x < 10 || x > width-10) dx*=-1;
      if (y < 10) dy*=-1;

      collisionWithBar();
      collisionWithBricks();

    }
  }
  }

  void ball() {
    circle(x, y, size);
    if (!movement) circle(width/2, height-60, size);
  }

  void launch() {
    launched = true;
  }

  void collisionWithBar() {
    if (x >= mouseX && x <= mouseX + 200 && y + size/2 >= height - 50 && y - size/2 <= height - 50 + 10) {
      dy*=-1;
      y=height-60;
    }
  }

  void collisionWithBricks() {
    for (int r = 0; r < NUM_ROWS; r++) {
      for (int c = 0; c < NUM_COLS; c++) {
        if (brickColor[r][c] != color(0)) {
          int bx = margin_left + c*(brickW + space);
          int by = margin_top + r*(brickH + space);
          if (x + size/2 > bx && x - size/2 < bx + brickW &&
            y + size/2 > by && y - size/2 < by + brickH) {
            brickColor[r][c] = color(0);
            dy *= -1;

            // increase speed
            if (dx > 0) dx += 0.2;
            else dx -= 0.2;
            if (dy > 0) dy += 0.2;
            else dy -= 0.2;

            score.add(10);
          }
        }
      }
    }
  }


  boolean offScreen() {
    return y > height;
  }
}

int [] brickSize;
int barSize;
int score;
ballBar ball;

void setup() {
  size(880, 880);
  background(0);
  ball = new ballBar();
}

void draw() {
  ball.display();
}

void mousePressed() {
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode==LEFT) {
    }
    if (keyCode==RIGHT) {
    }
    if (keyCode==UP) {
    }
    if (keyCode==DOWN) {
    }
  }
}

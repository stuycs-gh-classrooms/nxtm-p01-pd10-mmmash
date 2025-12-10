int [] brickSize;
int barSize;
int score;
ballBar ball;
boolean movement;

void setup() {
  size(880, 880);
  background(0);
  ball = new ballBar();
}

void draw() {
  background(0);
  ball.display();
}

void mousePressed() {
  if (mousePressed) {
    movement=true;
  }
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

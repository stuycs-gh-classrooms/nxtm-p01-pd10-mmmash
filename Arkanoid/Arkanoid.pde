int [] brickSize;
int barSize = 200;
int scoreVal;
ballBar ball;
boolean movement; //should the bar still move
boolean startPage; //play page
boolean playing;
int lives;
PFont cuteFont;
GameScore score;

void setup() {
  size(880, 880);
  score = new GameScore();
  ball = new ballBar(score);
  movement = false;
  startPage = true;
  cuteFont = createFont("Comic Sans MS", 50);
  lives = 3;
}

void draw() {
  textFont(cuteFont);

  if (startPage) { //if we're still on the start page
    playGame(); //then draw the start screen
    return; //stops the rest of draw from running. "stop this function rn and go back"
  }

  background(0);
  ball.display();
  ball.move();
  textSize(20);
  text("Lives: " + lives, 10, 50);
  score.display();

  if (ball.offScreen() && ball.launched) {
    lives -= 1;
    movement = false;
    ball.launched = false;
    ball.x = width/2;
    ball.y = height-60;
    ball.dy = -4;
  }

  if (endScreen()) {
    background(0);
    textSize(50);
    text("Better luck next time :)", 190, height/2);
    noLoop();
  }
}

void mousePressed() {
  if (startPage) {
    int bx = 330;
    int by = height/2 + 59;
    int bw = 220;
    int bh = 100;

    if (mouseX > bx && mouseX < bx + bw &&
        mouseY > by && mouseY < by + bh) {
      startPage = false;
    }
  } else {
    movement = true;
    ball.launch();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      mouseX -= 20;
      if (mouseX < 0) mouseX = 0;
    }
    if (keyCode == RIGHT) {
      mouseX += 20;
      if (mouseX > width - barSize) mouseX = width - barSize;
    }
  }
}

boolean playGame() {
  background(255);
  fill(0);
  textSize(50);
  text("Let's play ARKANOID!!", 190, height/2);

  fill(255, 182, 193);
  noStroke();
  rect(330, height/2 + 59, 220, 100);
  strokeWeight(1);
  fill(255);
  textSize(100);
  text("Play", 350, height/2 + 140);

  return true;
}

boolean endScreen() {
  if (lives == 0) {
    return true;
  } else return false;
}



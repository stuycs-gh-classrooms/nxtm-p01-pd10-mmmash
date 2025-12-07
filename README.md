[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Mfyqb_T6)
# NeXtCS Project 01
### thinker0: Maisha Alam
### thinker1: Mst. Bonna
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases.  
The first phase will be to work on this document. 
* Use markdown formatting.
* For more markdown help
  - [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or
  - [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Breakout

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

- A user controlled paddle.
- A grid of bricks.
- A ball that bounces off the paddle, bricks, and side walls.
- Bricks that disappear or are damaged when hit by the ball.
- Loss of "life" if the ball gets past the paddle.
- A set number (more than one) of "lives".
- The ability to play/pause the game.
- The ability to reset the game.
- Some continuation of the game if all the bricks have been destroyed.

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

- Timer
- Secret Ending (e.g. something only unlocked with a score of 100, etc)
- different types of bricks

### Array Usage
How will you be using arrays in this project?

1D Array:
- Int[][] ballPos;
//controls balls positions, 2d array allows us to alter both the xpos and the ypos

2D Array:
- int[] brickSize;
//controls the num of bricks that appear on the screen, its size, etc


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- 'LEFT ARROW KEY' = move left
- 'RIGHT ARROW KEY' = move right

Mouse Control:
- Mouse movement: controls the bar movement
- Mouse pressed: ball is released from the bar position


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

Class Atari { 
- Instance variables:
  - int [] brickSize;
  - int barSize;

- METHODS
  - void display() {
//calls move, bar, grid
}
  - void move() {
//circle movement
}
  - void bar() {
//sets up bar movement at bottom
}
  - void grid() {
//creates rectangles }
}

Class Ball {
- Instance variables:
  - Int[][] ballPos; (?)
- METHODS
  - void setup() {
  //creates the array of balls }
  - void move() {
  //ball spawn point (at bar) + movement }
  - void MousePressed() {
  //if mouse pressed then launch ball at bar position

-------------------
Class Atari {
	int ballPosX;
	int ballPosY;
int [] brickSize;
int barSize;
Atari() {
//initialize stuff 
}
void display() {
//calls move, bar, grid
}
void move() {
//circle movement
}
void bar() {
//sets up bar movement at bottom
}
void grid() {
//creates rectangles
}

}

Atari ball;
Atari bar;
boolean hit;
boolean play;
int score;
boolean brick; //all bricks are assigned ‘true’, but when they are filled black/they have already been collided with, this is set to ‘false’ and the ball cannot collide with it anymore
//add timer

void setup() {

}

void draw() {
//calls everything
}

int score() {

}

void endScreen() {

}



class ballBar {
  int[][] ballPos;
  int[][] bricks;
  int NUM_ROWS = 4;
  int NUM_COLS = 15;

  ballBar() {
    //data=bricks;
    bricks=new int[NUM_ROWS][NUM_COLS];
  }
  void display() {
    grid(bricks);
  }
  void grid(int[][] data) {
    int start = (int) height/3;
    int wide = 10;

    for (int r = 0; r<data.length; r++) {
      for (int c = 0; c<data[r].length; c++) {
        data[r][c]= start;
        start+=wide+2;
        fill(255);
        println(c);
      }
      //rect(10, 10, 20, 10);
    }
  }
  void bar() {
  }
  void move() {
  }
}

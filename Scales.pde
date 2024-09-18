void setup() {
  size(500, 500);
  noLoop(); 
}
void draw() {
  boolean shift = true;
  for (int y = 500; y > -50; y -= 50) {
    for (int x = 0; x < 550; x += 50) {
      if (shift) {
        scale(x-30, y);
      } else {
        scale(x, y);
      }
    }
    if (shift){
      shift = false;
    } else {
      shift = true;
    }
  }
}

//mermaid scales
void scale(int x, int y) {
  stroke(105, 188, 191);
  int blueRandomValue = (int)(Math.random()*20 + 200);
  fill(25,227,blueRandomValue);
  //bottom part of mermaid scale
  bezier(x-50, y, x-25, y+50, x+25, y+50, x+50, y);
  //upper part of mermaid scale
  bezier(x-50, y, x-5, y-70, x+5, y-70, x+50, y);
}


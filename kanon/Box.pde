class Box {
  float x;
  float y;
  
  float widthSize;
  float heightSize;

  Box(float x, float y, float widthSize, float heightSize) {
    this.x = x;
    this.y = y;
    
    this.widthSize = widthSize;
    this.heightSize = heightSize;
  }
  
  void display() {
    rectMode(CORNER);
    rect(this.x, this.y, this.widthSize, this.heightSize);
  }
}

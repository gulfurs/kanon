class Maskine {
  float r; //radius 
  PVector position;
  
  Maskine () {
    r = 90;
    
    position = new PVector (400, 700);
    //  pox = width/2; //starter i middel af skærmen 
    // poy = height-90; //strter  over bunden, ellers vil halvdelen være under skærmen
  }

  void display () {
    rectMode(CENTER);
    ellipseMode(CENTER);
    fill(210, 120, 110);
    rect (position.x, position.y-150, r*0.9, (r*2)+120); //kanon
    fill(21, 21, 21);
    rect (position.x, position.y-40, r*2, r*2-50, 17); //krop
    fill(193, 154, 107);
    ellipse(position.x, position.y+60, r*3, r);//ydre hjul
    fill(255);
    ellipse(position.x, position.y+60, r*3-50, r-40); //indre hjul
  }
}

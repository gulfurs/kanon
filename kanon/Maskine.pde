class Maskine {
  float r; //radius 
  PVector position;
  
  float angle;
  
  ArrayList<Kugle> kugler;


  Maskine (ArrayList<Kugle> kugler) {
    r = 90;
    position = new PVector (400, 700);
    
    this.kugler = kugler;
    this.angle = 0;
  }
  
  void display () {
    rectMode(CENTER);
    ellipseMode(CENTER);
    fill(210, 120, 110);
    noStroke();
    pushMatrix();
    translate(position.x, position.y);
    rotate(angle);
    rect (0, -150, r*0.9, (r*2)+120); //kanonrør
    popMatrix();
    fill(21, 21, 21);
    rect (position.x, position.y-40, r*2, r*2-50, 17); //krop
    fill(193, 154, 107);
    stroke(193, 154, 107);
    strokeWeight(20);
    noFill();
    ellipse(position.x, position.y+60, r*3, r);// hjul
    fill(255, 255, 255, 80);
    noStroke();
    stroke(0);
    strokeWeight(0);
  }
  void action() {
    if (key == 'd') angle += 0.1;
    else if (key == 'a') angle +=-0.1;
    else if (key == 'g') shoot();
  }
  
  private void shoot() {
    Kugle kugle = new Kugle(50, 20, angle, this);
    kugler.add(kugle);

  }
}

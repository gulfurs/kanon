class Maskine {
  float r; //radius 
  float pox; //position x 
  float poy; //position y
  
  
  
 Maskine () {
   r = 90;
   
   pox = width/2; //starter i middel af skærmen 
   poy = height-90; //strter  over bunden, ellers vil halvdelen være under skærmen
 }
 
 void display () {
  rectMode(CENTER);
  ellipseMode(CENTER);
  fill(21, 21, 21);
  rect (pox, poy, r*0.9, (r*2)+120);
  fill(193, 154, 107,100);
  ellipse(pox, poy, r*2, r*2);
 }
 
}

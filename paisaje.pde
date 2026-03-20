void setup(){
size(800,600);
background(0,120,255);
}
void draw(){
  stroke(255);
  strokeWeight(4);
  fill(255,255,0);
  circle(width/2,height/4,(width*0.1)+(height*0.1));
  noStroke();
  fill(0,150,255);
  rect(0,height/2,width,height);
  fill(44,176,55);
  rect(0,(height/3)*2,width,height);
}

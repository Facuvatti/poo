int colAmount = 10;
int rowAmount = 10;
boolean wasPressed = false;
boolean[][] states = new boolean[colAmount][rowAmount];
void setup(){
  size(1000,600);
}
void collision(int x,int y, int w, int h, int i, int j){
  if(
    mousePressed && 
    !wasPressed &&
    (mouseX > x && mouseX < (x+w)) && 
    (mouseY > y && mouseY < (y+h))
  ) states[i][j] = !states[i][j];
}
void landscape(int x, int y, int w, int h){
  // Cielo
  fill(0, 100, 230);
  rect(x, y, w, h);
  // Sol
  stroke(255);
  strokeWeight(4);
  fill(255,255,0);
  circle(x+w/2,y+h/4,(w*0.1)+(h*0.1));
  // Agua
  noStroke();
  fill(0,150,255); 
  rect(x+0,y+h/2,w,h/2);
  // Pasto
  fill(44,176,55); 
  rect(x+0,y+(h/3)*2,w,h/3);
}
void draw(){
  for(int i=0;i<colAmount;i++){
    for(int j=0;j<rowAmount;j++){
      int x = (width/colAmount)*i;
      int y = (height/rowAmount)*j;
      int w = width/colAmount;
      int h = height/rowAmount;
      collision(x,y,w,h,i,j);
      if(states[i][j]) landscape(x,y,w,h);
      else {
        fill(255);
        rect(x,y,w,h);
      }
      stroke(0);
      strokeWeight(1);
      noFill();
      rect(x,y,w,h);
    }
  }
  wasPressed = mousePressed;
}

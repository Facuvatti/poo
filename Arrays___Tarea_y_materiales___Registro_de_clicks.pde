int[][] clickPositions = new int[10][2];
int clicks = 0;
boolean pressing = false;
void setup(){
  size(800,500);
  
}
void deleteFirst(){
  for(int i=0;i<clicks-1;i++){
    clickPositions[i][0] = clickPositions[i+1][0];
    clickPositions[i][1] = clickPositions[i+1][1];
  }
  clicks--;
}
void draw(){
  background(100);
  if(mousePressed && !pressing){
    if(clicks >=10) deleteFirst();
    if(clicks < 10){
      clickPositions[clicks][0] = mouseX;  
      clickPositions[clicks][1] = mouseY;  
      clicks = clicks + 1;
    } 
    pressing = true;
    
   } else if(!mousePressed){
      pressing = false;
    }
  for(int i=0;i<clicks;i++){
    circle(clickPositions[i][0],clickPositions[i][1],100);
  }
}

boolean toca;
boolean hayColision(float px,float py,float cx,float cy,float radio){
  float distancia = dist(px, py, cx, cy);
  if(distancia > radio) toca = false;
  else toca = true;
  return toca;
}
void circuloConColision(int x, int y,int radio){
  if(hayColision(mouseX,mouseY,x,y,radio)){
    fill(2,60,60);
  } else {
    fill(255);
  }
  circle(x,y,radio*2);  
}
void setup(){
  size(1000,800);

}
void draw(){
  circuloConColision(100,100,200);
  circuloConColision(700,50,200);
}

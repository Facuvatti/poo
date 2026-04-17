int cantidad_barras = 10;
int[] altura = new int[cantidad_barras];
boolean colision(int x,int w){
  int margen = w/2;
  if(mousePressed && (mouseX > x-margen && mouseX < x+margen)) return true;
  else return false;
}
void setup(){
  size(1000,600);
  
  for(int i=0;i<cantidad_barras;i++){
    altura[i] = height/2; // Por defecto
  }
}
void draw(){
  background(255);
  int sepx = width/cantidad_barras;

  for(int i=0;i<cantidad_barras;i++){
    int x = sepx*i;
    strokeWeight(10/2);
    line(x,height,x,height-altura[i]);
    boolean toca = colision(x,sepx);
    if(mousePressed && toca) altura[i] = height-mouseY;    
  }
}

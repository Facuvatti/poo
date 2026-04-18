int colAmount = 25;
int rowAmount = 25;
int sidesAmount = 6;
boolean[][][] cells = new boolean[colAmount][rowAmount][sidesAmount];
boolean randomBool(){return random(1) > 0.7;}
void setup(){
  size(800,800);
  cambiarLaberinto();
}
void cambiarLaberinto(){
  for(int i=0;i<colAmount;i++){
    for(int j=0;j<rowAmount;j++){
      for(int z=0;z<sidesAmount;z++){
        cells[i][j][z] = randomBool();
      }
    }
  }
}
void cuadrado(int x,int y,int w,int h,boolean[] lados){
  int x2 = x+w;
  int y2 = y+h;
  if(lados[0]) line(x,y,x2,y); // linea horizontal de arriba
  if(lados[1]) line(x,y2,x2,y2); // linea horizontal de abajo
  if(lados[2]) line(x,y,x,y2); // linea vertical izquierda
  if(lados[3]) line(x2,y,x2,y2); // linea vertical derecha
  if(lados[4]) line(x,y2,x2,y); // linea diagonal de (abajo a la izquierda) a (arriba a la derecha)
  if(lados[5]) line(x,y,x2,y2); // linea diagonal de (arriba a la izquierda) a (abajo a la derecha)
}
void draw(){
  background(255);
  for(int i=0;i<colAmount;i++){
    for(int j=0;j<rowAmount;j++){
      int w = width/colAmount;
      int h = height/rowAmount;
      int x = w*i;
      int y = h*j;
      cuadrado(x,y,w,h,cells[i][j]);
    }
  }
}
void keyPressed(){
  cambiarLaberinto();
}

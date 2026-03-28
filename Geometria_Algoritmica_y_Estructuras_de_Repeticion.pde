int cant = 10;
int sepx, sepy;
void setup() {
  size(500, 400);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  for (int i = 0; i<cant; i++) {
    int y = i*sepy;
    int x = i*sepx;
    line(0, y, x, height);
    fill(255,0,0); // ROJO
    circle(0,y,10);
    fill(0,0,255); // AZUL
    circle(x,height,10);
    

  }
}

class Movil {
  PVector pos, vel;
  int r = 50;
  Movil(float x, float y) {
    pos = new PVector (x, y);
    vel = new PVector (random(-2, 2), random(-2, 2));
  }
  void mover() {
    pos.add(vel);
    contener();
  }
  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }
  void contener() {
    if (pos.x < 0 || pos.x>width){
      pos.sub(vel);
      vel.x = vel.x*-1;
    }
    if(pos.y < 0 || pos.y > height){
      pos.sub(vel);
      vel.y = vel.y*-1;
    }
  }
}
int n = 5;  
Movil[] robots;
float separacion = 100;  

void setup() {
  size(800, 200);  
  inicializarFila();
}

void inicializarFila() {
  robots = new Movil[n];  
  
  float anchoTotal = (n - 1) * separacion;
  float inicioX = (width - anchoTotal) / 2;
  
  for (int i = 0; i < n; i++) {
    float x = inicioX + (i * separacion);
    float y = height / 2;
    robots[i] = new Movil(x, y);
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < n; i++) {
    robots[i].mostrar();
  }
}
